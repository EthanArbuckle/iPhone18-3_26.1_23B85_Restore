uint64_t closure #3 in TNUIOBFlowLDMEnabled.makeAnalyticsScreen()(uint64_t a1, uint64_t a2, uint64_t a3)
{
  type metadata accessor for MainActor();
  static MainActor.shared.getter();
  dispatch thunk of Actor.unownedExecutor.getter();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v5 = Strong;
    TNUIOBFlowLDMEnabled.presentPrivacyVC()();
  }

  type metadata accessor for TNUIAnalytics();
  swift_initStaticObject();
  v7 = a3;
  TNUIAnalytics.send(event:container:)(6, &v7);
}

void closure #1 in TNUIOBFlowLDMEnabled.makeLDMScreen()()
{
  type metadata accessor for MainActor();
  static MainActor.shared.getter();
  dispatch thunk of Actor.unownedExecutor.getter();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    _s20ThreatNotificationUI23TNUIDependencyContainerV10tryResolve4typexxm_tKs8SendableRzlF0aB4Core13TNCMCManaging_p_Tt0B5(*(Strong + OBJC_IVAR____TtC20ThreatNotificationUI20TNUIOBFlowLDMEnabled_container), v3);
    __swift_project_boxed_opaque_existential_0(v3, v3[3]);
    v2 = dispatch thunk of TNCMCManaging.isDiagnosticsSharingEnabled.getter();
    __swift_destroy_boxed_opaque_existential_0Tm(v3);
    if (v2)
    {
      TNUIOBFlowLDMEnabled.finishFlow()();
    }

    else
    {
      TNUIOBFlowLDMEnabled.showPage(page:animated:)(0, 1);
    }
  }

  else
  {
  }
}

uint64_t outlined destroy of NSObject?(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t objectdestroy_12Tm(void (*a1)(void))
{
  v3 = *(v1 + 16);

  a1(*(v1 + 24));

  return MEMORY[0x2821FE8E8](v1, 32, 7);
}

void partial apply for closure #1 in closure #1 in TNUIOBFlowLDMEnabled.makeAnalyticsScreen()()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  closure #1 in closure #1 in TNUIOBFlowLDMEnabled.makeAnalyticsScreen()();
}

uint64_t block_copy_helper_1(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

unint64_t lazy protocol witness table accessor for type [DispatchWorkItemFlags] and conformance [A]()
{
  result = lazy protocol witness table cache variable for type [DispatchWorkItemFlags] and conformance [A];
  if (!lazy protocol witness table cache variable for type [DispatchWorkItemFlags] and conformance [A])
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type [DispatchWorkItemFlags] and conformance [A]);
  }

  return result;
}

Swift::Int TNUIUserNotificationType.hashValue.getter()
{
  Hasher.init(_seed:)();
  MEMORY[0x223D619F0](0);
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance TNUIUserNotificationType()
{
  Hasher.init(_seed:)();
  MEMORY[0x223D619F0](0);
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance TNUIUserNotificationType()
{
  Hasher.init(_seed:)();
  MEMORY[0x223D619F0](0);
  return Hasher._finalize()();
}

unint64_t lazy protocol witness table accessor for type TNUIUserNotificationType and conformance TNUIUserNotificationType()
{
  result = lazy protocol witness table cache variable for type TNUIUserNotificationType and conformance TNUIUserNotificationType;
  if (!lazy protocol witness table cache variable for type TNUIUserNotificationType and conformance TNUIUserNotificationType)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type TNUIUserNotificationType and conformance TNUIUserNotificationType);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for TNUIUserNotificationType(unsigned int *a1, int a2)
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

_WORD *storeEnumTagSinglePayload for TNUIUserNotificationType(_WORD *result, int a2, int a3)
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

uint64_t TNUIActionItemConfiguration.init(id:action:title:markdownFooter:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X8>)
{
  v49 = a7;
  v50 = a6;
  v46 = a4;
  v47 = a5;
  v43 = a3;
  v44 = a2;
  v42 = a1;
  v9 = type metadata accessor for AttributeContainer();
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v40 = &v40 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v48 = type metadata accessor for AttributedString.MarkdownParsingOptions.FailurePolicy();
  v45 = *(v48 - 8);
  v12 = *(v45 + 64);
  MEMORY[0x28223BE20](v48);
  v14 = &v40 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v41 = type metadata accessor for AttributedString.MarkdownParsingOptions.InterpretedSyntax();
  v15 = *(v41 - 8);
  v16 = *(v15 + 64);
  MEMORY[0x28223BE20](v41);
  v18 = &v40 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = type metadata accessor for AttributedString.MarkdownParsingOptions();
  v20 = *(*(v19 - 8) + 64);
  MEMORY[0x28223BE20](v19 - 8);
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLVSgMd, "t-");
  v22 = *(*(v21 - 8) + 64);
  MEMORY[0x28223BE20](v21 - 8);
  v24 = &v40 - v23;
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation16AttributedStringVSgMd, &_s10Foundation16AttributedStringVSgMR);
  v26 = *(*(v25 - 8) + 64);
  MEMORY[0x28223BE20](v25 - 8);
  v28 = &v40 - v27;
  v29 = type metadata accessor for AttributedString();
  v30 = *(v29 - 8);
  v31 = *(v30 + 64);
  MEMORY[0x28223BE20](v29);
  v33 = &v40 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  LOBYTE(v32) = *v43;
  v34 = v44;
  *a8 = v42;
  *(a8 + 8) = v34;
  *(a8 + 16) = v32;
  v35 = v47;
  *(a8 + 24) = v46;
  *(a8 + 32) = v35;
  v36 = type metadata accessor for URL();
  (*(*(v36 - 8) + 56))(v24, 1, 1, v36);
  (*(v15 + 104))(v18, *MEMORY[0x277CC8BB0], v41);
  (*(v45 + 104))(v14, *MEMORY[0x277CC8B98], v48);

  AttributedString.MarkdownParsingOptions.init(allowsExtendedAttributes:interpretedSyntax:failurePolicy:languageCode:)();
  AttributedString.init(markdown:options:baseURL:)();

  (*(v30 + 56))(v28, 0, 1, v29);
  v37 = *(v30 + 32);
  v37(v33, v28, v29);
  v38 = type metadata accessor for TNUIActionItemConfiguration();
  return (v37)(a8 + *(v38 + 28), v33, v29);
}

uint64_t outlined destroy of AttributedString?(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation16AttributedStringVSgMd, &_s10Foundation16AttributedStringVSgMR);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t type metadata accessor for TNUIActionItemConfiguration()
{
  result = type metadata singleton initialization cache for TNUIActionItemConfiguration;
  if (!type metadata singleton initialization cache for TNUIActionItemConfiguration)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t TNUIActionItemConfiguration.id.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return v1;
}

uint64_t TNUIActionItemConfiguration.title.getter()
{
  v1 = *(v0 + 24);
  v2 = *(v0 + 32);

  return v1;
}

uint64_t TNUIActionItemConfiguration.footer.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for TNUIActionItemConfiguration() + 28);
  v4 = type metadata accessor for AttributedString();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t specialized static TNUIActionItemConfiguration.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v4 = *a1 == *a2 && *(a1 + 8) == *(a2 + 8);
  if (!v4 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
  {
    return 0;
  }

  v8 = *(a1 + 16);
  v7 = *(a2 + 16);
  if ((specialized static TNUIActionIdentifier.== infix(_:_:)(&v8, &v7) & 1) == 0 || (*(a1 + 24) != *(a2 + 24) || *(a1 + 32) != *(a2 + 32)) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
  {
    return 0;
  }

  v5 = *(type metadata accessor for TNUIActionItemConfiguration() + 28);

  return static AttributedString.== infix(_:_:)();
}

uint64_t type metadata completion function for TNUIActionItemConfiguration()
{
  result = type metadata accessor for AttributedString();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

BOOL TNUIPrivacyViewController.init(rawValue:)(Swift::String string)
{
  object = string._object;
  v2._countAndFlagsBits = string._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&outlined read-only object #0 of TNUIPrivacyViewController.init(rawValue:), v2);

  return v3 != 0;
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance TNUIPrivacyViewController()
{
  Hasher.init(_seed:)();
  String.hash(into:)();
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance TNUIPrivacyViewController()
{
  Hasher.init(_seed:)();
  String.hash(into:)();
  return Hasher._finalize()();
}

uint64_t protocol witness for RawRepresentable.init(rawValue:) in conformance TNUIPrivacyViewController@<X0>(Swift::String *a1@<X0>, BOOL *a2@<X8>)
{
  v3 = _findStringSwitchCase(cases:string:)(&outlined read-only object #0 of protocol witness for RawRepresentable.init(rawValue:) in conformance TNUIPrivacyViewController, *a1);

  *a2 = v3 != 0;
  return result;
}

id protocol witness for TNUIPrivacyViewControllerPresenting.presentingViewController.getter in conformance OBPrivacyPresenter()
{
  v1 = [v0 presentingViewController];

  return v1;
}

void protocol witness for TNUIPrivacyViewControllerPresenting.presentingViewController.setter in conformance OBPrivacyPresenter(void *a1)
{
  [v1 setPresentingViewController_];
}

void (*protocol witness for TNUIPrivacyViewControllerPresenting.presentingViewController.modify in conformance OBPrivacyPresenter(void *a1))(id *a1)
{
  a1[1] = v1;
  *a1 = [v1 presentingViewController];
  return protocol witness for TNUIPrivacyViewControllerPresenting.presentingViewController.modify in conformance OBPrivacyPresenter;
}

void protocol witness for TNUIPrivacyViewControllerPresenting.presentingViewController.modify in conformance OBPrivacyPresenter(id *a1)
{
  v1 = *a1;
  [a1[1] setPresentingViewController_];
}

char *specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(char *a1, int64_t a2, char a3)
{
  result = specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, *v3);
  *v3 = result;
  return result;
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

void specialized static TNUIPrivacyViewController.privacyViewController(for:)(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = MEMORY[0x277D84F90];
  if (v1)
  {
    if (v1 == 1)
    {
      v1 = MEMORY[0x223D615B0](0xD000000000000024, 0x800000021E675CF0);
      v2 = [objc_opt_self() presenterForPrivacySplashWithIdentifier_];

      if (v2)
      {
        return;
      }

      __break(1u);
    }

    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v1, 0);
    v3 = v2[2];
    v4 = 2 * v3;
    do
    {
      v5 = v2[3];
      v6 = v3 + 1;
      if (v3 >= v5 >> 1)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v5 > 1), v3 + 1, 1);
      }

      v2[2] = v6;
      v7 = &v2[v4];
      *(v7 + 4) = 0xD000000000000024;
      *(v7 + 5) = 0x800000021E675CF0;
      v4 += 2;
      v3 = v6;
      --v1;
    }

    while (v1);
  }

  isa = Array._bridgeToObjectiveC()().super.isa;

  v9 = [objc_opt_self() presenterForPrivacyUnifiedAboutWithIdentifiers_];

  if (!v9)
  {
    __break(1u);
  }
}

unint64_t lazy protocol witness table accessor for type TNUIPrivacyViewController and conformance TNUIPrivacyViewController()
{
  result = lazy protocol witness table cache variable for type TNUIPrivacyViewController and conformance TNUIPrivacyViewController;
  if (!lazy protocol witness table cache variable for type TNUIPrivacyViewController and conformance TNUIPrivacyViewController)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type TNUIPrivacyViewController and conformance TNUIPrivacyViewController);
  }

  return result;
}

uint64_t TNUICoordinator.delegate.getter()
{
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  v2 = *(v0 + 24);
  return result;
}

uint64_t TNUICoordinator.delegate.setter(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  *(v2 + 24) = a2;
  swift_unknownObjectWeakAssign();
  return swift_unknownObjectRelease();
}

void (*TNUICoordinator.delegate.modify(uint64_t *a1))(uint64_t a1, char a2)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 40) = v1;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v6 = *(v1 + 24);
  *(v4 + 24) = Strong;
  *(v4 + 32) = v6;
  return TNUICoordinator.delegate.modify;
}

void TNUICoordinator.delegate.modify(uint64_t a1, char a2)
{
  v3 = *a1;
  v4 = *(*a1 + 24);
  *(*(*a1 + 40) + 24) = *(*a1 + 32);
  swift_unknownObjectWeakAssign();
  if (a2)
  {
    v5 = v3[3];
    swift_unknownObjectRelease();
    swift_endAccess();
  }

  else
  {
    swift_endAccess();
    swift_unknownObjectRelease();
  }

  free(v3);
}

id TNUICoordinator.rootViewController.getter()
{
  v1 = *(v0 + 32);
  if (v1)
  {
    v2 = *(v0 + 32);
  }

  else
  {
    v3 = [objc_allocWithZone(MEMORY[0x277D757A0]) init];
    v4 = *(v0 + 32);
    *(v0 + 32) = v3;
    v2 = v3;

    v1 = 0;
  }

  v5 = v1;
  return v2;
}

uint64_t TNUICoordinator.rootViewController.setter(uint64_t a1)
{
  v2 = *(v1 + 32);
  *(v1 + 32) = a1;
  return MEMORY[0x2821F96F8]();
}

void (*TNUICoordinator.rootViewController.modify(id *a1))(uint64_t *a1)
{
  a1[1] = v1;
  *a1 = TNUICoordinator.rootViewController.getter();
  return TNUICoordinator.rootViewController.modify;
}

void TNUICoordinator.rootViewController.modify(uint64_t *a1)
{
  v2 = *a1;
  v1 = a1[1];
  v3 = *(v1 + 32);
  *(v1 + 32) = v2;
}

uint64_t TNUICoordinator.userInfo.getter()
{
  swift_beginAccess();
  v1 = *(v0 + 40);
}

uint64_t TNUICoordinator.userInfo.setter(uint64_t a1)
{
  swift_beginAccess();
  v3 = *(v1 + 40);
  *(v1 + 40) = a1;
}

uint64_t TNUICoordinator.flow.getter@<X0>(_BYTE *a1@<X8>)
{
  result = swift_beginAccess();
  *a1 = *(v1 + 48);
  return result;
}

uint64_t TNUICoordinator.__allocating_init(userInfo:)(uint64_t a1)
{
  v2 = swift_allocObject();
  TNUICoordinator.init(userInfo:)(a1);
  return v2;
}

uint64_t TNUICoordinator.init(userInfo:)(uint64_t a1)
{
  v2 = v1;
  *(v1 + 24) = 0;
  swift_unknownObjectWeakInit();
  *(v1 + 40) = 0;
  v4 = v1 + 40;
  *(v4 - 8) = 0;
  *(v4 + 8) = 0;
  swift_beginAccess();
  *v4 = a1;
  type metadata accessor for TNCDeviceInfoProvider();

  static TNCDeviceInfoProvider.shared.getter();
  v5 = dispatch thunk of TNCDeviceInfoProvider.isInternalBuild.getter();

  if ((v5 & 1) == 0)
  {

    goto LABEL_14;
  }

  if (!a1)
  {
    goto LABEL_12;
  }

  v22[0] = static TNCFollowUpItem.UserInfoKey.testEnvironmentKey.getter();
  v22[1] = v6;
  AnyHashable.init<A>(_:)();
  if (!*(a1 + 16) || (v7 = specialized __RawDictionaryStorage.find<A>(_:)(v25), (v8 & 1) == 0))
  {

    outlined destroy of AnyHashable(v25);
LABEL_12:
    v23 = 0u;
    v24 = 0u;
    goto LABEL_13;
  }

  outlined init with copy of Any(*(a1 + 56) + 32 * v7, &v23);
  outlined destroy of AnyHashable(v25);

  if (!*(&v24 + 1))
  {
LABEL_13:
    outlined destroy of CheckedContinuation<(), Error>?(&v23, &_sypSgMd, &_sypSgMR);
    goto LABEL_14;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSDys11AnyHashableVypGMd, &_sSDys11AnyHashableVypGMR);
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_14:
    LOBYTE(v22[0]) = 0;
    v17 = type metadata accessor for TNCLDMManager();
    v18 = *(v17 + 48);
    v19 = *(v17 + 52);
    swift_allocObject();
    v20 = TNCLDMManager.init()();
    v26 = v17;
    v27 = MEMORY[0x277D71448];
    v25[0] = v20;
    goto LABEL_15;
  }

  v9 = v25[0];
  v10 = type metadata accessor for TNCLDMManagerMock();
  v11 = *(v10 + 48);
  v12 = *(v10 + 52);
  swift_allocObject();
  v13 = TNCLDMManagerMock.init()();
  *&v23 = static TNCFollowUpItem.TestEnvironmentKey.ldmEnabledKey.getter();
  *(&v23 + 1) = v14;
  AnyHashable.init<A>(_:)();
  if (*(v9 + 16) && (v15 = specialized __RawDictionaryStorage.find<A>(_:)(v25), (v16 & 1) != 0))
  {
    outlined init with copy of Any(*(v9 + 56) + 32 * v15, &v23);
    outlined destroy of AnyHashable(v25);

    swift_dynamicCast();
  }

  else
  {

    outlined destroy of AnyHashable(v25);
  }

  dispatch thunk of TNCLDMManagerMock.isEnabled.setter();
  LOBYTE(v22[0]) = 1;
  v26 = v10;
  v27 = MEMORY[0x277D71470];
  v25[0] = v13;
LABEL_15:
  static TNUIDependencyContainer.makeDefault(environment:ldmManager:)(v22, v25, &v23);
  __swift_destroy_boxed_opaque_existential_0Tm(v25);
  *(v2 + 56) = v23;
  return v2;
}

uint64_t TNUICoordinator.__allocating_init(dependencyContainer:userInfo:)(uint64_t a1, uint64_t a2)
{
  v4 = swift_allocObject();
  TNUICoordinator.init(dependencyContainer:userInfo:)(a1, a2);
  return v4;
}

uint64_t TNUICoordinator.init(dependencyContainer:userInfo:)(uint64_t a1, uint64_t a2)
{
  *(v2 + 24) = 0;
  swift_unknownObjectWeakInit();
  *(v2 + 32) = 0;
  *(v2 + 40) = 0;
  *(v2 + 48) = 0;
  outlined init with copy of (ObjectIdentifier, Sendable)(a1, v16, &_sypSgMd, &_sypSgMR);
  if (v17)
  {
    outlined destroy of CheckedContinuation<(), Error>?(a1, &_sypSgMd, &_sypSgMR);
    outlined init with take of Sendable(v16, v13);
    outlined init with take of Sendable(v13, v16);
    swift_dynamicCast();
    v5 = v12;
  }

  else
  {
    outlined destroy of CheckedContinuation<(), Error>?(v16, &_sypSgMd, &_sypSgMR);
    LOBYTE(v12) = 0;
    v6 = type metadata accessor for TNCLDMManager();
    v7 = *(v6 + 48);
    v8 = *(v6 + 52);
    swift_allocObject();
    v9 = TNCLDMManager.init()();
    v14 = v6;
    v15 = MEMORY[0x277D71448];
    v13[0] = v9;
    static TNUIDependencyContainer.makeDefault(environment:ldmManager:)(&v12, v13, v16);
    outlined destroy of CheckedContinuation<(), Error>?(a1, &_sypSgMd, &_sypSgMR);
    __swift_destroy_boxed_opaque_existential_0Tm(v13);
    v5 = v16[0];
  }

  *(v2 + 56) = v5;
  swift_beginAccess();
  v10 = *(v2 + 40);
  *(v2 + 40) = a2;

  return v2;
}

Swift::Void __swiftcall TNUICoordinator.start()()
{
  v1 = v0;
  v2 = type metadata accessor for Logger();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v25[-1] - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  static TNCLogger.default.getter();

  v7 = Logger.logObject.getter();
  v8 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v26[0] = v10;
    *v9 = 136315138;
    v25[0] = v1;
    type metadata accessor for TNUICoordinator();

    v11 = String.init<A>(describing:)();
    v13 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v11, v12, v26);

    *(v9 + 4) = v13;
    _os_log_impl(&dword_21E646000, v7, v8, "%s start", v9, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v10);
    MEMORY[0x223D62010](v10, -1, -1);
    MEMORY[0x223D62010](v9, -1, -1);
  }

  (*(v3 + 8))(v6, v2);
  _s20ThreatNotificationUI23TNUIDependencyContainerV10tryResolve4typexxm_tKs8SendableRzlF0aB4Core14TNCLDMManaging_p_Tt0B5(v1[7], v26);
  __swift_project_boxed_opaque_existential_0(v26, v26[3]);
  v14 = dispatch thunk of TNCLDMManaging.isEnabled.getter();
  __swift_destroy_boxed_opaque_existential_0Tm(v26);
  v15 = swift_beginAccess();
  *(v1 + 48) = (v14 & 1) != 0;
  (*(*v1 + 192))(v25, v15);
  if (v25[0])
  {
    v16 = TNUICoordinator.makeLDMEnabledVC()();
  }

  else
  {
    v16 = TNUICoordinator.makeAttackDetectedLDMOffVC()();
  }

  v17 = *(*v1 + 144);
  v18 = v16;
  v19 = v17();
  objc_opt_self();
  v20 = swift_dynamicCastObjCClass();
  if (v20)
  {
    v21 = v20;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd, &_ss23_ContiguousArrayStorageCyyXlGMR);
    v22 = swift_allocObject();
    *(v22 + 16) = xmmword_21E6748D0;
    *(v22 + 32) = v18;
    type metadata accessor for UIViewController();
    isa = Array._bridgeToObjectiveC()().super.isa;

    [v21 setViewControllers:isa animated:0];

    TNUICoordinator.acknowledgeCFUPresentation()();
    type metadata accessor for TNUIAnalytics();
    swift_initStaticObject();
    v25[0] = v1[7];

    TNUIAnalytics.send(event:container:)(2, v25);
  }

  else
  {

    _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }
}

id TNUICoordinator.makeAttackDetectedLDMOffVC()()
{
  v1 = type metadata accessor for TNUIViewConfiguration();
  v2 = *(*(v1 - 8) + 64);
  v3 = MEMORY[0x28223BE20](v1);
  v5 = &v26 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = MEMORY[0x28223BE20](v3);
  v8 = &v26 - v7;
  MEMORY[0x28223BE20](v6);
  v10 = &v26 - v9;
  v11 = TNUICoordinator.accountName.getter();
  static TNUIViewConfiguration.attackDetectedLDMOff(for:)(v11, v12, v10);

  v13 = type metadata accessor for TNUIViewModel();
  v14 = *(v13 + 48);
  v15 = *(v13 + 52);
  v16 = swift_allocObject();
  v17 = v16 + OBJC_IVAR____TtC20ThreatNotificationUI13TNUIViewModel_handler;
  *(v16 + OBJC_IVAR____TtC20ThreatNotificationUI13TNUIViewModel_handler + 8) = 0;
  swift_unknownObjectWeakInit();
  outlined init with copy of TNUIViewConfiguration(v10, v8);
  swift_beginAccess();
  outlined init with copy of TNUIViewConfiguration(v8, v5);
  Published.init(initialValue:)();
  outlined destroy of TNUIViewConfiguration(v8);
  swift_endAccess();
  outlined destroy of TNUIViewConfiguration(v10);
  *(v17 + 8) = &protocol witness table for TNUICoordinator;
  swift_unknownObjectWeakAssign();
  v18 = type metadata accessor for TNUIOBKViewController();
  v19 = objc_allocWithZone(v18);
  *&v19[OBJC_IVAR____TtC20ThreatNotificationUI21TNUIOBKViewController_linkButton] = 0;
  *&v19[OBJC_IVAR____TtC20ThreatNotificationUI21TNUIOBKViewController_viewModel] = v16;
  v27.receiver = v19;
  v27.super_class = v18;

  v20 = objc_msgSendSuper2(&v27, sel_initWithNibName_bundle_, 0, 0);
  v21 = [v20 navigationItem];
  v22 = [objc_allocWithZone(MEMORY[0x277D751E0]) initWithBarButtonSystemItem:1 target:v0 action:sel_dismissButtonTapped_];
  v23 = static ThreatNotification.Screens.dismissButtonIdentifier.getter();
  v24 = MEMORY[0x223D615B0](v23);

  [v22 setAccessibilityIdentifier_];

  [v21 setRightBarButtonItem_];

  return v20;
}

id TNUICoordinator.makeLDMEnabledVC()()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = &v19 - v4;
  v6 = type metadata accessor for Date();
  (*(*(v6 - 8) + 56))(v5, 1, 1, v6);
  _s20ThreatNotificationUI23TNUIDependencyContainerV10tryResolve4typexxm_tKs8SendableRzlF0aB4Core13TNCMCManaging_p_Tt0B5(*(v1 + 56), v20);
  v7 = type metadata accessor for TNUILDMEnabledViewModel();
  v8 = *(v7 + 48);
  v9 = *(v7 + 52);
  swift_allocObject();

  v10 = specialized TNUILDMEnabledViewModel.init(notificationDate:mcManager:handler:)(v5, v20, v1, &protocol witness table for TNUICoordinator);

  v11 = type metadata accessor for TNUIOBKViewController();
  v12 = objc_allocWithZone(v11);
  *&v12[OBJC_IVAR____TtC20ThreatNotificationUI21TNUIOBKViewController_linkButton] = 0;
  *&v12[OBJC_IVAR____TtC20ThreatNotificationUI21TNUIOBKViewController_viewModel] = v10;
  v19.receiver = v12;
  v19.super_class = v11;

  v13 = objc_msgSendSuper2(&v19, sel_initWithNibName_bundle_, 0, 0);
  v14 = [v13 navigationItem];
  v15 = [objc_allocWithZone(MEMORY[0x277D751E0]) initWithBarButtonSystemItem:1 target:v1 action:sel_dismissButtonTapped_];
  v16 = static ThreatNotification.Screens.dismissButtonIdentifier.getter();
  v17 = MEMORY[0x223D615B0](v16);

  [v15 setAccessibilityIdentifier_];

  [v14 setRightBarButtonItem_];

  return v13;
}

uint64_t TNUICoordinator.acknowledgeCFUPresentation()()
{
  v1 = v0;
  v2 = type metadata accessor for Logger();
  v25[0] = *(v2 - 8);
  v25[1] = v2;
  v3 = *(v25[0] + 64);
  MEMORY[0x28223BE20](v2);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd, &_sScPSgMR);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = v25 - v6;
  v8 = type metadata accessor for TNCStorageKey();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  v12 = v25 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for TNCLogger.Category();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  MEMORY[0x28223BE20](v13);
  v17 = v25 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v14 + 104))(v17, *MEMORY[0x277D714A0], v13);
  static TNCLogger.logFunctionCall(category:functionName:)();
  (*(v14 + 8))(v17, v13);
  _s20ThreatNotificationUI23TNUIDependencyContainerV10tryResolve4typexxm_tKs8SendableRzlF0aB4Core12TNCKVStoring_p_Tt0B5(v1[7], v28);
  __swift_project_boxed_opaque_existential_0(v28, v29);
  v27 = MEMORY[0x277D839B0];
  v26[0] = 1;
  (*(v9 + 104))(v12, *MEMORY[0x277D71460], v8);
  dispatch thunk of TNCKVStoring.set(value:for:)();
  (*(v9 + 8))(v12, v8);
  outlined destroy of CheckedContinuation<(), Error>?(v26, &_sypSgMd, &_sypSgMR);
  __swift_destroy_boxed_opaque_existential_0Tm(v28);
  _s20ThreatNotificationUI23TNUIDependencyContainerV10tryResolve4typexxm_tKs8SendableRzlF0aB4Core22TNCFollowUpControlling_p_Tt0B5(v1[7], v28);
  __swift_project_boxed_opaque_existential_0(v28, v29);
  dispatch thunk of TNCFollowUpControlling.repostFollowUpItemIfNeeded()();
  __swift_destroy_boxed_opaque_existential_0Tm(v28);
  v18 = type metadata accessor for TaskPriority();
  v19 = (*(*(v18 - 8) + 56))(v7, 1, 1, v18);
  v20 = (*(*v1 + 144))(v19);
  type metadata accessor for MainActor();

  v21 = static MainActor.shared.getter();
  v22 = swift_allocObject();
  v23 = MEMORY[0x277D85700];
  v22[2] = v21;
  v22[3] = v23;
  v22[4] = v1;
  v22[5] = v20;
  _sScTss5NeverORs_rlE4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntcfCyt_Tt2g5(0, 0, v7, &async function pointer to partial apply for closure #1 in TNUICoordinator.acknowledgeCFUPresentation(), v22);
}

uint64_t TNUICoordinator.deinit()
{
  outlined destroy of weak TNUIAccountRemoteUIDelegate?(v0 + 16);

  v1 = *(v0 + 40);

  v2 = *(v0 + 56);

  return v0;
}

uint64_t TNUICoordinator.__deallocating_deinit()
{
  outlined destroy of weak TNUIAccountRemoteUIDelegate?(v0 + 16);

  v1 = *(v0 + 40);

  v2 = *(v0 + 56);

  return MEMORY[0x2821FE8D8](v0, 64, 7);
}

uint64_t TNUICoordinator.accountName.getter()
{
  v1 = v0;
  v2 = type metadata accessor for Logger();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  v5 = MEMORY[0x28223BE20](v2);
  v7 = v35 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = MEMORY[0x28223BE20](v5);
  v10 = v35 - v9;
  v11 = (*(*v0 + 168))(v8);
  if (!v11)
  {
    goto LABEL_9;
  }

  v12 = v11;
  v35[1] = static TNCFollowUpItem.UserInfoKey.primaryAccountAltDSID.getter();
  v35[2] = v13;
  AnyHashable.init<A>(_:)();
  if (!*(v12 + 16) || (v14 = specialized __RawDictionaryStorage.find<A>(_:)(v36), (v15 & 1) == 0))
  {

    outlined destroy of AnyHashable(v36);
LABEL_9:
    v39 = 0u;
    v40 = 0u;
    goto LABEL_10;
  }

  outlined init with copy of Any(*(v12 + 56) + 32 * v14, &v39);
  outlined destroy of AnyHashable(v36);

  if (!*(&v40 + 1))
  {
LABEL_10:
    outlined destroy of CheckedContinuation<(), Error>?(&v39, &_sypSgMd, &_sypSgMR);
    goto LABEL_11;
  }

  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_11:
    static TNCLogger.default.getter();
    v24 = Logger.logObject.getter();
    v25 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v24, v25))
    {
      v26 = swift_slowAlloc();
      *v26 = 0;
      _os_log_impl(&dword_21E646000, v24, v25, "Missing altDSID of primary account", v26, 2u);
      MEMORY[0x223D62010](v26, -1, -1);
    }

    (*(v3 + 8))(v7, v2);
    return 0;
  }

  v17 = v36[0];
  v16 = v36[1];
  _s20ThreatNotificationUI23TNUIDependencyContainerV10tryResolve4typexxm_tKs8SendableRzlFAA20TNUIAccountProviding_p_Tt0B5(*(v1 + 56), v36);
  v18 = v37;
  v19 = v38;
  __swift_project_boxed_opaque_existential_0(v36, v37);
  v20 = (*(v19 + 8))(v17, v16, v18, v19);
  v22 = v21;
  __swift_destroy_boxed_opaque_existential_0Tm(v36);
  if (v22)
  {

    return v20;
  }

  static TNCLogger.default.getter();

  v27 = Logger.logObject.getter();
  v28 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v27, v28))
  {
    v29 = swift_slowAlloc();
    v30 = swift_slowAlloc();
    v36[0] = v30;
    *v29 = 136315138;
    v31 = String.debugDescription.getter();
    v33 = v32;

    v34 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v31, v33, v36);

    *(v29 + 4) = v34;
    _os_log_impl(&dword_21E646000, v27, v28, "No account for id: %s", v29, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v30);
    MEMORY[0x223D62010](v30, -1, -1);
    MEMORY[0x223D62010](v29, -1, -1);
  }

  else
  {
  }

  (*(v3 + 8))(v10, v2);
  return 0;
}

id TNUICoordinator.makeTurnOnLDMVC()()
{
  v1 = type metadata accessor for TNUIViewConfiguration();
  v2 = *(*(v1 - 8) + 64);
  v3 = MEMORY[0x28223BE20](v1);
  v5 = &v24 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = MEMORY[0x28223BE20](v3);
  v8 = &v24 - v7;
  MEMORY[0x28223BE20](v6);
  v10 = &v24 - v9;
  static TNUIViewConfiguration.turnOnLockDownMode.getter(&v24 - v9);
  v11 = type metadata accessor for TNUIViewModel();
  v12 = *(v11 + 48);
  v13 = *(v11 + 52);
  v14 = swift_allocObject();
  v15 = v14 + OBJC_IVAR____TtC20ThreatNotificationUI13TNUIViewModel_handler;
  *(v14 + OBJC_IVAR____TtC20ThreatNotificationUI13TNUIViewModel_handler + 8) = 0;
  swift_unknownObjectWeakInit();
  outlined init with copy of TNUIViewConfiguration(v10, v8);
  swift_beginAccess();
  outlined init with copy of TNUIViewConfiguration(v8, v5);
  Published.init(initialValue:)();
  outlined destroy of TNUIViewConfiguration(v8);
  swift_endAccess();
  outlined destroy of TNUIViewConfiguration(v10);
  *(v15 + 8) = &protocol witness table for TNUICoordinator;
  swift_unknownObjectWeakAssign();
  v16 = type metadata accessor for TNUIOBKViewController();
  v17 = objc_allocWithZone(v16);
  *&v17[OBJC_IVAR____TtC20ThreatNotificationUI21TNUIOBKViewController_linkButton] = 0;
  *&v17[OBJC_IVAR____TtC20ThreatNotificationUI21TNUIOBKViewController_viewModel] = v14;
  v25.receiver = v17;
  v25.super_class = v16;

  v18 = objc_msgSendSuper2(&v25, sel_initWithNibName_bundle_, 0, 0);
  v19 = [v18 navigationItem];
  v20 = [objc_allocWithZone(MEMORY[0x277D751E0]) initWithBarButtonSystemItem:1 target:v0 action:sel_dismissButtonTapped_];
  v21 = static ThreatNotification.Screens.dismissButtonIdentifier.getter();
  v22 = MEMORY[0x223D615B0](v21);

  [v20 setAccessibilityIdentifier_];

  [v19 setRightBarButtonItem_];

  return v18;
}

uint64_t closure #1 in TNUICoordinator.acknowledgeCFUPresentation()(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[7] = a4;
  v5[8] = a5;
  v6 = type metadata accessor for Logger();
  v5[9] = v6;
  v7 = *(v6 - 8);
  v5[10] = v7;
  v8 = *(v7 + 64) + 15;
  v5[11] = swift_task_alloc();
  v5[12] = swift_task_alloc();
  type metadata accessor for MainActor();
  v5[13] = static MainActor.shared.getter();
  v10 = dispatch thunk of Actor.unownedExecutor.getter();
  v5[14] = v10;
  v5[15] = v9;

  return MEMORY[0x2822009F8](closure #1 in TNUICoordinator.acknowledgeCFUPresentation(), v10, v9);
}

uint64_t closure #1 in TNUICoordinator.acknowledgeCFUPresentation()()
{
  _s20ThreatNotificationUI23TNUIDependencyContainerV10tryResolve4typexxm_tKs8SendableRzlFAA28TNUIAccountRemoteUIProviding_p_Tt0B5(*(*(v0 + 56) + 56), v0 + 16);
  type metadata accessor for TNUIAAServerViewController();
  v1 = swift_allocObject();
  *(v0 + 128) = v1;
  *(v1 + 112) = 0;
  *(v1 + 64) = 0u;
  *(v1 + 80) = 0u;
  *(v1 + 96) = 0;
  swift_unknownObjectWeakInit();
  *(v1 + 16) = 0;
  _s20ThreatNotificationUI28TNUIAccountRemoteUIProviding_pWOb_0((v0 + 16), v1 + 24);
  v2 = swift_task_alloc();
  *(v0 + 136) = v2;
  *v2 = v0;
  v2[1] = closure #1 in TNUICoordinator.acknowledgeCFUPresentation();
  v3 = *(v0 + 64);

  return TNUIAAServerViewController.present(from:)(v3);
}

{
  v2 = *v1;
  v3 = *(*v1 + 136);
  v4 = *v1;
  *(*v1 + 144) = v0;

  v5 = *(v2 + 120);
  v6 = *(v2 + 112);
  if (v0)
  {
    v7 = closure #1 in TNUICoordinator.acknowledgeCFUPresentation();
  }

  else
  {
    v7 = closure #1 in TNUICoordinator.acknowledgeCFUPresentation();
  }

  return MEMORY[0x2822009F8](v7, v6, v5);
}

{
  v2 = v0[12];
  v1 = v0[13];

  static TNCLogger.default.getter();
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.error.getter();
  v5 = os_log_type_enabled(v3, v4);
  v6 = v0[16];
  if (v5)
  {
    v7 = swift_slowAlloc();
    *v7 = 0;
    _os_log_impl(&dword_21E646000, v3, v4, "Did acknowledge CFU presentation", v7, 2u);
    MEMORY[0x223D62010](v7, -1, -1);
  }

  v8 = v0[11];
  (*(v0[10] + 8))(v0[12], v0[9]);

  v9 = v0[1];

  return v9();
}

{
  v1 = v0[18];
  v2 = v0[13];
  v3 = v0[11];

  static TNCLogger.default.getter();
  v4 = v1;
  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.error.getter();

  v7 = os_log_type_enabled(v5, v6);
  v8 = v0[18];
  v9 = v0[16];
  if (v7)
  {
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    *v10 = 138412290;
    v12 = v8;
    v13 = _swift_stdlib_bridgeErrorToNSError();
    *(v10 + 4) = v13;
    *v11 = v13;
    _os_log_impl(&dword_21E646000, v5, v6, "Error acknowledging CFU presentation error: %@", v10, 0xCu);
    outlined destroy of CheckedContinuation<(), Error>?(v11, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
    MEMORY[0x223D62010](v11, -1, -1);
    MEMORY[0x223D62010](v10, -1, -1);
  }

  else
  {
    v14 = v0[16];
  }

  v15 = v0[12];
  (*(v0[10] + 8))(v0[11], v0[9]);

  v16 = v0[1];

  return v16();
}

uint64_t _sScTss5NeverORs_rlE4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntcfCyt_Tt2g5(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd, &_sScPSgMR);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = v27 - v11;
  outlined init with copy of (ObjectIdentifier, Sendable)(a3, v27 - v11, &_sScPSgMd, &_sScPSgMR);
  v13 = type metadata accessor for TaskPriority();
  v14 = *(v13 - 8);
  v15 = (*(v14 + 48))(v12, 1, v13);

  if (v15 == 1)
  {
    outlined destroy of CheckedContinuation<(), Error>?(v12, &_sScPSgMd, &_sScPSgMR);
  }

  else
  {
    TaskPriority.rawValue.getter();
    (*(v14 + 8))(v12, v13);
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

void TNUICoordinator.handle(action:from:)(unsigned __int8 *a1, uint64_t a2)
{
  v3 = v2;
  v6 = type metadata accessor for Logger();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = &v36 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *a1;
  static TNCLogger.default.getter();

  swift_unknownObjectRetain();
  v12 = Logger.logObject.getter();
  v13 = static os_log_type_t.default.getter();
  swift_unknownObjectRelease();

  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    v37 = v6;
    v15 = v14;
    v36 = swift_slowAlloc();
    v38 = v3;
    v39 = v36;
    *v15 = 136315650;
    type metadata accessor for TNUICoordinator();

    v16 = String.init<A>(describing:)();
    v18 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v16, v17, &v39);

    *(v15 + 4) = v18;
    *(v15 + 12) = 2082;
    LOBYTE(v38) = v11;
    v19 = String.init<A>(describing:)();
    v21 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v19, v20, &v39);

    *(v15 + 14) = v21;
    *(v15 + 22) = 2080;
    swift_getObjectType();
    v38 = a2;
    swift_unknownObjectRetain();
    v22 = String.init<A>(describing:)();
    v24 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v22, v23, &v39);

    *(v15 + 24) = v24;
    _os_log_impl(&dword_21E646000, v12, v13, "%s handle action: %{public}s from: %s", v15, 0x20u);
    v25 = v36;
    swift_arrayDestroy();
    MEMORY[0x223D62010](v25, -1, -1);
    MEMORY[0x223D62010](v15, -1, -1);

    v26 = (*(v7 + 8))(v10, v37);
  }

  else
  {

    v26 = (*(v7 + 8))(v10, v6);
  }

  if (v11 <= 5)
  {
    switch(v11)
    {
      case 3:
        v30 = (*(*v3 + 144))(v26);
        objc_opt_self();
        v34 = swift_dynamicCastObjCClass();
        if (v34)
        {
          v32 = v34;
          v33 = TNUICoordinator.makeLDMEnabledVC()();
          goto LABEL_19;
        }

LABEL_25:

        _assertionFailure(_:_:file:line:flags:)();
        __break(1u);
        return;
      case 4:
        TNUICoordinator.dismissModal()();
        return;
      case 5:
        return;
    }

LABEL_20:
    LOBYTE(v39) = v11;
    TNUICoordinator.handle(link:)(&v39);
    return;
  }

  if (v11 > 7)
  {
    if (v11 == 8)
    {
      TNUICoordinator.enableLDM()();
      return;
    }

    if (v11 == 9)
    {
      v30 = (*(*v3 + 144))(v26);
      objc_opt_self();
      v31 = swift_dynamicCastObjCClass();
      if (v31)
      {
        v32 = v31;
        v33 = TNUICoordinator.makeTurnOnLDMVC()();
LABEL_19:
        v35 = v33;
        [v32 pushViewController:v33 animated:1];

        return;
      }

      goto LABEL_25;
    }

    goto LABEL_20;
  }

  if (v11 == 6)
  {
    TNUICoordinator.enableAnalytics()();
  }

  else if ((*(*v3 + 120))(v26))
  {
    v28 = v27;
    ObjectType = swift_getObjectType();
    (*(v28 + 8))(v3, ObjectType, v28);
    swift_unknownObjectRelease();
  }
}

void TNUICoordinator.dismissModal()()
{
  v1 = type metadata accessor for TNCLogger.Category();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v1);
  v5 = &v22 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v2 + 104))(v5, *MEMORY[0x277D714A0], v1);
  static TNCLogger.logFunctionCall(category:functionName:)();
  v6 = (*(v2 + 8))(v5, v1);
  v7 = *(*v0 + 144);
  v8 = (v7)(v6);
  v9 = [v8 presentedViewController];

  if (v9)
  {

    v10 = v7();
    v11 = [v10 presentedViewController];

    if (v11)
    {
      [v11 dismissViewControllerAnimated:1 completion:0];
    }
  }

  else
  {
    v12 = (*(*v0 + 192))(&v23);
    if (v23)
    {
      if ((*(*v0 + 120))(v12))
      {
        v14 = v13;
        ObjectType = swift_getObjectType();
        (*(v14 + 8))(v0, ObjectType, v14);
        swift_unknownObjectRelease();
      }
    }

    else
    {
      v16 = (v7)(v12);
      v17 = _s20ThreatNotificationUI19TNUIAlertControllerC18stopReviewingAlert7handlerAcA17TNUIActionHandler_p_tFZTf4en_nAA15TNUICoordinatorC_Tt0g5(v0);
      v18 = [v17 view];
      if (v18)
      {
        v19 = v18;
        v20 = static ThreatNotification.Screens.StopReviewingAlert.identifier.getter();
        v21 = MEMORY[0x223D615B0](v20);

        [v19 setAccessibilityIdentifier_];

        [v16 presentViewController:v17 animated:1 completion:0];
      }

      else
      {
        __break(1u);
      }
    }
  }
}

uint64_t TNUICoordinator.enableAnalytics()()
{
  v1 = v0;
  v2 = type metadata accessor for TNCLogger.Category();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  v5 = MEMORY[0x28223BE20](v2);
  v7 = &v22[-1] - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *(*v0 + 144);
  v9 = (v8)(v5);
  v10 = [v9 view];

  if (!v10)
  {
    __break(1u);
    goto LABEL_6;
  }

  [v10 setUserInteractionEnabled_];

  (*(v3 + 104))(v7, *MEMORY[0x277D714A0], v2);
  static TNCLogger.logFunctionCall(category:functionName:)();
  (*(v3 + 8))(v7, v2);
  _s20ThreatNotificationUI23TNUIDependencyContainerV10tryResolve4typexxm_tKs8SendableRzlF0aB4Core13TNCMCManaging_p_Tt0B5(*(v1 + 56), v22);
  __swift_project_boxed_opaque_existential_0(v22, v22[3]);
  dispatch thunk of TNCMCManaging.enableDiagnosticsSharing()();
  v11 = __swift_destroy_boxed_opaque_existential_0Tm(v22);
  v12 = (v8)(v11);
  v13 = _s20ThreatNotificationUI19TNUIAlertControllerC21analyticsEnabledAlert7handlerAcA17TNUIActionHandler_p_tFZTf4en_nAA15TNUICoordinatorC_Tt0g5(v1);
  v14 = [v13 view];
  if (!v14)
  {
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  v15 = v14;
  v16 = static ThreatNotification.Screens.AnalyticsEnabledAlert.identifier.getter();
  v17 = MEMORY[0x223D615B0](v16);

  [v15 setAccessibilityIdentifier_];

  [v12 presentViewController:v13 animated:1 completion:0];
  v18 = v8();
  v19 = [v18 view];

  if (v19)
  {
    [v19 setUserInteractionEnabled_];

    type metadata accessor for TNUIAnalytics();
    swift_initStaticObject();
    v22[0] = *(v1 + 56);

    TNUIAnalytics.send(event:container:)(0, v22);
  }

LABEL_7:
  __break(1u);
  result = swift_unexpectedError();
  __break(1u);
  return result;
}

void TNUICoordinator.enableLDM()()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd, &_sScPSgMR);
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x28223BE20](v1 - 8);
  v4 = &v19 - v3;
  v5 = type metadata accessor for TNCLogger.Category();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  v8 = MEMORY[0x28223BE20](v5);
  v10 = &v19 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = (*(*v0 + 144))(v8);
  v12 = [v11 view];

  if (v12)
  {
    [v12 setUserInteractionEnabled_];

    (*(v6 + 104))(v10, *MEMORY[0x277D714A0], v5);
    static TNCLogger.logFunctionCall(category:functionName:)();
    (*(v6 + 8))(v10, v5);
    v13 = type metadata accessor for TaskPriority();
    (*(*(v13 - 8) + 56))(v4, 1, 1, v13);
    v14 = v0[7];
    v15 = swift_allocObject();
    swift_weakInit();
    type metadata accessor for MainActor();

    v16 = static MainActor.shared.getter();
    v17 = swift_allocObject();
    v18 = MEMORY[0x277D85700];
    v17[2] = v16;
    v17[3] = v18;
    v17[4] = v14;
    v17[5] = v15;

    _sScTss5NeverORs_rlE4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntcfCyt_Tt2g5(0, 0, v4, &async function pointer to partial apply for closure #1 in TNUICoordinator.enableLDM(), v17);
  }

  else
  {
    __break(1u);
  }
}

uint64_t closure #1 in TNUICoordinator.enableLDM()(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[15] = a4;
  v5[16] = a5;
  v6 = type metadata accessor for Logger();
  v5[17] = v6;
  v7 = *(v6 - 8);
  v5[18] = v7;
  v8 = *(v7 + 64) + 15;
  v5[19] = swift_task_alloc();
  type metadata accessor for MainActor();
  v5[20] = static MainActor.shared.getter();
  v10 = dispatch thunk of Actor.unownedExecutor.getter();
  v5[21] = v10;
  v5[22] = v9;

  return MEMORY[0x2822009F8](closure #1 in TNUICoordinator.enableLDM(), v10, v9);
}

uint64_t closure #1 in TNUICoordinator.enableLDM()()
{
  _s20ThreatNotificationUI23TNUIDependencyContainerV10tryResolve4typexxm_tKs8SendableRzlF0aB4Core14TNCLDMManaging_p_Tt0B5(v0[15], (v0 + 2));
  v1 = v0[5];
  v2 = v0[6];
  __swift_project_boxed_opaque_existential_0(v0 + 2, v1);
  v3 = *(MEMORY[0x277D71468] + 4);
  v4 = swift_task_alloc();
  v0[23] = v4;
  *v4 = v0;
  v4[1] = closure #1 in TNUICoordinator.enableLDM();

  return MEMORY[0x2821D8DE8](v1, v2);
}

{
  v2 = *v1;
  v3 = *(*v1 + 184);
  v4 = *v1;
  *(*v1 + 192) = v0;

  v5 = *(v2 + 176);
  v6 = *(v2 + 168);
  if (v0)
  {
    v7 = closure #1 in TNUICoordinator.enableLDM();
  }

  else
  {
    v7 = closure #1 in TNUICoordinator.enableLDM();
  }

  return MEMORY[0x2822009F8](v7, v6, v5);
}

void closure #1 in TNUICoordinator.enableLDM()()
{
  v19 = v0;
  v1 = v0[24];
  v2 = v0[15];
  __swift_destroy_boxed_opaque_existential_0Tm(v0 + 2);
  type metadata accessor for TNUIAnalytics();
  swift_initStaticObject();
  v18 = v2;
  TNUIAnalytics.send(event:container:)(5, &v18);
  _s20ThreatNotificationUI23TNUIDependencyContainerV10tryResolve4typexxm_tKs8SendableRzlF0aB4Core24TNCOnBoardingControlling_p_Tt0B5(v2);
  if (v1)
  {

    swift_unexpectedError();
  }

  else
  {
    v3 = v0[15];
    swift_getObjectType();
    dispatch thunk of TNCOnBoardingControlling.isOnboardingFlowRequired.setter();
    swift_unknownObjectRelease();
    _s20ThreatNotificationUI23TNUIDependencyContainerV10tryResolve4typexxm_tKs8SendableRzlF0aB4Core22TNCFollowUpControlling_p_Tt0B5(v3, (v0 + 7));
    v4 = v0[11];
    __swift_project_boxed_opaque_existential_0(v0 + 7, v0[10]);
    dispatch thunk of TNCFollowUpControlling.repostFollowUpItemIfNeeded()();
    __swift_destroy_boxed_opaque_existential_0Tm(v0 + 7);
    v5 = v0[16];
    swift_beginAccess();
    Strong = swift_weakLoadStrong();
    if (Strong)
    {
      v7 = Strong;
      v8 = (*(*Strong + 120))();
      if (v8)
      {
        v10 = v9;
        ObjectType = swift_getObjectType();
        (*(v10 + 8))(v7, ObjectType, v10);
        v8 = swift_unknownObjectRelease();
      }

      v12 = (*(*v7 + 144))(v8);
      v13 = [v12 view];

      if (!v13)
      {
        __break(1u);
        return;
      }

      v14 = v0[20];

      [v13 setUserInteractionEnabled_];
    }

    else
    {
      v15 = v0[20];
    }

    v16 = v0[19];

    v17 = v0[1];

    v17();
  }
}

{
  __swift_destroy_boxed_opaque_existential_0Tm(v0 + 2);
  v1 = v0[24];
  v2 = v0[19];
  static TNCLogger.default.getter();
  v3 = v1;
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    *v6 = 138412290;
    v8 = v1;
    v9 = _swift_stdlib_bridgeErrorToNSError();
    *(v6 + 4) = v9;
    *v7 = v9;
    _os_log_impl(&dword_21E646000, v4, v5, "Error enabling LockDownMode: %@", v6, 0xCu);
    outlined destroy of CheckedContinuation<(), Error>?(v7, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
    MEMORY[0x223D62010](v7, -1, -1);
    MEMORY[0x223D62010](v6, -1, -1);
  }

  else
  {
  }

  (*(v0[18] + 8))(v0[19], v0[17]);
  v10 = v0[16];
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v12 = Strong;
    v13 = (*(*Strong + 120))();
    if (v13)
    {
      v15 = v14;
      ObjectType = swift_getObjectType();
      (*(v15 + 8))(v12, ObjectType, v15);
      v13 = swift_unknownObjectRelease();
    }

    v17 = (*(*v12 + 144))(v13);
    v18 = [v17 view];

    if (!v18)
    {
      __break(1u);
      return;
    }

    v19 = v0[20];

    [v18 setUserInteractionEnabled_];
  }

  else
  {
    v20 = v0[20];
  }

  v21 = v0[19];

  v22 = v0[1];

  v22();
}

uint64_t TNUICoordinator.handle(link:)(unsigned __int8 *a1)
{
  v3 = type metadata accessor for URL();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = &v16 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for TNCLogger.Category();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  v12 = &v16 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *a1;
  (*(v9 + 104))(v12, *MEMORY[0x277D714A0], v8);
  static TNCLogger.logFunctionCall(category:functionName:)();
  (*(v9 + 8))(v12, v8);
  if (v13)
  {
    if (v13 == 1)
    {
      TNUICoordinator.openAppleAccountUI()();
      type metadata accessor for TNUIAnalytics();
      swift_initStaticObject();
      v17 = *(v1 + 56);

      v14 = 7;
    }

    else
    {
      TNUICoordinator.openAnalyticsPrivacyController()();
      type metadata accessor for TNUIAnalytics();
      swift_initStaticObject();
      v17 = *(v1 + 56);

      v14 = 6;
    }
  }

  else
  {
    static ThreatNotification.Links.emergencyAssistance.getter();
    TNUICoordinator.openURL(_:)();
    (*(v4 + 8))(v7, v3);
    type metadata accessor for TNUIAnalytics();
    swift_initStaticObject();
    v17 = *(v1 + 56);

    v14 = 4;
  }

  TNUIAnalytics.send(event:container:)(v14, &v17);
}

void TNUICoordinator.openURL(_:)()
{
  v1 = v0;
  v2 = type metadata accessor for TNCLogger.Category();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v17 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v3 + 104))(v6, *MEMORY[0x277D714A0], v2);
  static TNCLogger.logFunctionCall(category:functionName:)();
  (*(v3 + 8))(v6, v2);
  v7 = objc_allocWithZone(MEMORY[0x277CDB700]);
  URL._bridgeToObjectiveC()(v8);
  v10 = v9;
  v11 = [v7 initWithURL_];

  [v11 setModalPresentationStyle_];
  v12 = [v11 view];
  if (v12)
  {
    v13 = v12;
    v14 = static ThreatNotification.Screens.WebViewScreen.identifier.getter();
    v15 = MEMORY[0x223D615B0](v14);

    [v13 setAccessibilityIdentifier_];

    v16 = (*(*v1 + 144))();
    [v16 presentViewController:v11 animated:1 completion:0];
  }

  else
  {
    __break(1u);
  }
}

uint64_t TNUICoordinator.openAppleAccountUI()()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd, &_sScPSgMR);
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x28223BE20](v1 - 8);
  v4 = &v43 - v3;
  v5 = type metadata accessor for TNCLogger.Category();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v43 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v6 + 104))(v9, *MEMORY[0x277D714A0], v5);
  static TNCLogger.logFunctionCall(category:functionName:)();
  v10 = (*(v6 + 8))(v9, v5);
  v11 = *(*v0 + 144);
  v12 = *v0 + 144;
  v13 = v11(v10);
  objc_opt_self();
  v14 = swift_dynamicCastObjCClass();
  if (!v14)
  {

    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
    return result;
  }

  v15 = [v14 viewControllers];

  type metadata accessor for UIViewController();
  v16 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  if (!(v16 >> 62))
  {
    v17 = *((v16 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v17)
    {
      goto LABEL_4;
    }

LABEL_18:

    goto LABEL_19;
  }

  if (v16 < 0)
  {
    v25 = v16;
  }

  else
  {
    v25 = v16 & 0xFFFFFFFFFFFFFF8;
  }

  v17 = MEMORY[0x223D618F0](v25);
  if (!v17)
  {
    goto LABEL_18;
  }

LABEL_4:
  v18 = __OFSUB__(v17, 1);
  v19 = v17 - 1;
  if (v18)
  {
    __break(1u);
  }

  else if ((v16 & 0xC000000000000001) == 0)
  {
    if ((v19 & 0x8000000000000000) != 0)
    {
      __break(1u);
    }

    else if (v19 < *((v16 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      v20 = *(v16 + 8 * v19 + 32);
      goto LABEL_9;
    }

    __break(1u);
    goto LABEL_41;
  }

  v20 = MEMORY[0x223D618C0](v19, v16);
LABEL_9:
  v21 = v20;

  v52[0] = v21;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s20ThreatNotificationUI28TNUIActivityIndicatorShowing_pMd, &_s20ThreatNotificationUI28TNUIActivityIndicatorShowing_pMR);
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_19:
    v51 = 0;
    v49 = 0u;
    v50 = 0u;
    goto LABEL_20;
  }

  if (!*(&v50 + 1))
  {
LABEL_20:
    v24 = outlined destroy of CheckedContinuation<(), Error>?(&v49, &_s20ThreatNotificationUI28TNUIActivityIndicatorShowing_pSgMd, &_s20ThreatNotificationUI28TNUIActivityIndicatorShowing_pSgMR);
    v15 = MEMORY[0x277D84F90];
    goto LABEL_21;
  }

  _s20ThreatNotificationUI28TNUIAccountRemoteUIProviding_pWOb_0(&v49, v52);
  outlined init with copy of TNUIActivityIndicatorShowing(v52, &v49);
  v15 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, 1, 1, MEMORY[0x277D84F90]);
  v23 = v15[2];
  v22 = v15[3];
  if (v23 >= v22 >> 1)
  {
    v15 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v22 > 1), v23 + 1, 1, v15);
  }

  __swift_destroy_boxed_opaque_existential_0Tm(v52);
  v15[2] = v23 + 1;
  v24 = _s20ThreatNotificationUI28TNUIAccountRemoteUIProviding_pWOb_0(&v49, &v15[5 * v23 + 4]);
LABEL_21:
  v26 = v11(v24);
  v27 = [v26 presentedViewController];

  if (v27 && (v52[0] = v27, __swift_instantiateConcreteTypeFromMangledNameV2(&_s20ThreatNotificationUI28TNUIActivityIndicatorShowing_pMd, &_s20ThreatNotificationUI28TNUIActivityIndicatorShowing_pMR), (swift_dynamicCast() & 1) != 0))
  {
    if (*(&v50 + 1))
    {
      _s20ThreatNotificationUI28TNUIAccountRemoteUIProviding_pWOb_0(&v49, v52);
      outlined init with copy of TNUIActivityIndicatorShowing(v52, &v49);
      if (swift_isUniquelyReferenced_nonNull_native())
      {
LABEL_25:
        v29 = v15[2];
        v28 = v15[3];
        if (v29 >= v28 >> 1)
        {
          v15 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v28 > 1), v29 + 1, 1, v15);
        }

        __swift_destroy_boxed_opaque_existential_0Tm(v52);
        v15[2] = v29 + 1;
        _s20ThreatNotificationUI28TNUIAccountRemoteUIProviding_pWOb_0(&v49, &v15[5 * v29 + 4]);
        goto LABEL_30;
      }

LABEL_41:
      v15 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v15[2] + 1, 1, v15);
      goto LABEL_25;
    }
  }

  else
  {
    v51 = 0;
    v49 = 0u;
    v50 = 0u;
  }

  outlined destroy of CheckedContinuation<(), Error>?(&v49, &_s20ThreatNotificationUI28TNUIActivityIndicatorShowing_pSgMd, &_s20ThreatNotificationUI28TNUIActivityIndicatorShowing_pSgMR);
LABEL_30:
  v30 = v15[2];
  v31 = MEMORY[0x277D85700];
  if (v30)
  {
    v45 = v12;
    v46 = v11;
    v47 = v0;
    v48 = v4;
    type metadata accessor for MainActor();
    v32 = (v15 + 4);
    v44 = v15;

    do
    {
      outlined init with copy of TNUIActivityIndicatorShowing(v32, v52);
      static MainActor.shared.getter();
      dispatch thunk of Actor.unownedExecutor.getter();
      if ((swift_task_isCurrentExecutor() & 1) == 0)
      {
        swift_task_reportUnexpectedExecutor();
      }

      v34 = v53;
      v33 = v54;
      __swift_project_boxed_opaque_existential_0(v52, v53);
      LOBYTE(v49) = 1;
      (*(v33 + 8))(&v49, 1, v34, v33);

      __swift_destroy_boxed_opaque_existential_0Tm(v52);
      v32 += 40;
      --v30;
    }

    while (v30);
    v15 = v44;

    v0 = v47;
    v4 = v48;
    v11 = v46;
    v31 = MEMORY[0x277D85700];
  }

  v35 = type metadata accessor for TaskPriority();
  (*(*(v35 - 8) + 56))(v4, 1, 1, v35);
  v36 = v0[7];

  v38 = v11(v37);
  v39 = swift_allocObject();
  swift_weakInit();
  type metadata accessor for MainActor();

  v40 = static MainActor.shared.getter();
  v41 = swift_allocObject();
  v41[2] = v40;
  v41[3] = v31;
  v41[4] = v36;
  v41[5] = v39;
  v41[6] = v38;
  v41[7] = v15;

  _sScTss5NeverORs_rlE4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntcfCyt_Tt2g5(0, 0, v4, &async function pointer to partial apply for closure #2 in TNUICoordinator.openAppleAccountUI(), v41);
}

uint64_t TNUICoordinator.openAnalyticsPrivacyController()()
{
  v1 = type metadata accessor for TNCLogger.Category();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v1);
  v5 = &v11 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v2 + 104))(v5, *MEMORY[0x277D714A0], v1);
  static TNCLogger.logFunctionCall(category:functionName:)();
  (*(v2 + 8))(v5, v1);
  specialized static TNUIPrivacyViewController.privacyViewController(for:)(&outlined read-only object #0 of TNUICoordinator.openAnalyticsPrivacyController());
  v7 = v6;
  ObjectType = swift_getObjectType();
  v9 = (*(*v0 + 144))();
  (*(v7 + 16))(v9, ObjectType, v7);
  (*(v7 + 32))(ObjectType, v7);
  return swift_unknownObjectRelease();
}

uint64_t closure #2 in TNUICoordinator.openAppleAccountUI()(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[20] = a6;
  v7[21] = a7;
  v7[18] = a4;
  v7[19] = a5;
  v8 = type metadata accessor for Logger();
  v7[22] = v8;
  v9 = *(v8 - 8);
  v7[23] = v9;
  v10 = *(v9 + 64) + 15;
  v7[24] = swift_task_alloc();
  v7[25] = swift_task_alloc();
  v7[26] = type metadata accessor for MainActor();
  v7[27] = static MainActor.shared.getter();
  v12 = dispatch thunk of Actor.unownedExecutor.getter();
  v7[28] = v12;
  v7[29] = v11;

  return MEMORY[0x2822009F8](closure #2 in TNUICoordinator.openAppleAccountUI(), v12, v11);
}

uint64_t closure #2 in TNUICoordinator.openAppleAccountUI()()
{
  _s20ThreatNotificationUI23TNUIDependencyContainerV10tryResolve4typexxm_tKs8SendableRzlFAA28TNUIAccountRemoteUIProviding_p_Tt0B5(*(v0 + 144), v0 + 16);
  v1 = *(v0 + 152);
  type metadata accessor for TNUIAAServerViewController();
  v2 = swift_allocObject();
  *(v0 + 240) = v2;
  *(v2 + 112) = 0;
  *(v2 + 64) = 0u;
  *(v2 + 80) = 0u;
  *(v2 + 96) = 0;
  swift_unknownObjectWeakInit();
  *(v2 + 16) = 1;
  _s20ThreatNotificationUI28TNUIAccountRemoteUIProviding_pWOb_0((v0 + 16), v2 + 24);
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  swift_beginAccess();
  v4 = &protocol witness table for TNUICoordinator;
  if (!Strong)
  {
    v4 = 0;
  }

  *(v2 + 112) = v4;
  swift_unknownObjectWeakAssign();

  v5 = swift_task_alloc();
  *(v0 + 248) = v5;
  *v5 = v0;
  v5[1] = closure #2 in TNUICoordinator.openAppleAccountUI();
  v6 = *(v0 + 160);

  return TNUIAAServerViewController.present(from:)(v6);
}

{
  v2 = *v1;
  v3 = *(*v1 + 248);
  v4 = *v1;
  *(*v1 + 256) = v0;

  v5 = *(v2 + 232);
  v6 = *(v2 + 224);
  if (v0)
  {
    v7 = closure #2 in TNUICoordinator.openAppleAccountUI();
  }

  else
  {
    v7 = closure #2 in TNUICoordinator.openAppleAccountUI();
  }

  return MEMORY[0x2822009F8](v7, v6, v5);
}

{
  v18 = v0;
  v1 = v0[27];
  v2 = v0[25];

  static TNCLogger.default.getter();
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&dword_21E646000, v3, v4, "Did finish presenting AA server UI", v5, 2u);
    MEMORY[0x223D62010](v5, -1, -1);
  }

  v6 = v0[21];
  (*(v0[23] + 8))(v0[25], v0[22]);
  v7 = *(v6 + 16);
  if (v7)
  {
    v8 = v0[21] + 32;
    do
    {
      v11 = v0[26];
      outlined init with copy of TNUIActivityIndicatorShowing(v8, (v0 + 7));
      static MainActor.shared.getter();
      dispatch thunk of Actor.unownedExecutor.getter();
      if ((swift_task_isCurrentExecutor() & 1) == 0)
      {
        swift_task_reportUnexpectedExecutor();
      }

      v9 = v0[10];
      v10 = v0[11];
      __swift_project_boxed_opaque_existential_0(v0 + 7, v9);
      v17 = 1;
      (*(v10 + 8))(&v17, 0, v9, v10);

      __swift_destroy_boxed_opaque_existential_0Tm(v0 + 7);
      v8 += 40;
      --v7;
    }

    while (v7);
  }

  v12 = v0[30];

  v14 = v0[24];
  v13 = v0[25];

  v15 = v0[1];

  return v15();
}

{
  v25 = v0;
  v1 = v0[32];
  v2 = v0[27];
  v3 = v0[24];

  static TNCLogger.default.getter();
  v4 = v1;
  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.error.getter();

  v7 = os_log_type_enabled(v5, v6);
  v8 = v0[32];
  if (v7)
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    *v9 = 138412290;
    v11 = v8;
    v12 = _swift_stdlib_bridgeErrorToNSError();
    *(v9 + 4) = v12;
    *v10 = v12;
    _os_log_impl(&dword_21E646000, v5, v6, "Error presenting AA server UI error: %@", v9, 0xCu);
    outlined destroy of CheckedContinuation<(), Error>?(v10, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
    MEMORY[0x223D62010](v10, -1, -1);
    MEMORY[0x223D62010](v9, -1, -1);
  }

  else
  {
  }

  v13 = v0[21];
  (*(v0[23] + 8))(v0[24], v0[22]);
  v14 = *(v13 + 16);
  if (v14)
  {
    v15 = v0[21] + 32;
    do
    {
      v18 = v0[26];
      outlined init with copy of TNUIActivityIndicatorShowing(v15, (v0 + 7));
      static MainActor.shared.getter();
      dispatch thunk of Actor.unownedExecutor.getter();
      if ((swift_task_isCurrentExecutor() & 1) == 0)
      {
        swift_task_reportUnexpectedExecutor();
      }

      v16 = v0[10];
      v17 = v0[11];
      __swift_project_boxed_opaque_existential_0(v0 + 7, v16);
      v24 = 1;
      (*(v17 + 8))(&v24, 0, v16, v17);

      __swift_destroy_boxed_opaque_existential_0Tm(v0 + 7);
      v15 += 40;
      --v14;
    }

    while (v14);
  }

  v19 = v0[30];

  v21 = v0[24];
  v20 = v0[25];

  v22 = v0[1];

  return v22();
}

void TNUICoordinator.willPresent(remoteUI:modally:)(uint64_t a1, char a2)
{
  if (a2)
  {
    v3 = *(*v2 + 144);
    v4 = v3();
    v5 = [v4 presentedViewController];

    if (v5)
    {

      v6 = v3();
      [v6 dismissViewControllerAnimated:1 completion:0];
    }
  }
}

void protocol witness for TNUIAccountRemoteUIDelegate.willPresent(remoteUI:modally:) in conformance TNUICoordinator(uint64_t a1, char a2)
{
  if (a2)
  {
    v3 = *(*v2 + 144);
    v4 = v3();
    v5 = [v4 presentedViewController];

    if (v5)
    {

      v6 = v3();
      [v6 dismissViewControllerAnimated:1 completion:0];
    }
  }
}

uint64_t _sxIeAgHr_xs5Error_pIegHrzo_s8SendableRzs5NeverORs_r0_lTRyt_Tg5(uint64_t a1, int *a2)
{
  v7 = (a2 + *a2);
  v4 = a2[1];
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = _sxIeAgHr_xs5Error_pIegHrzo_s8SendableRzs5NeverORs_r0_lTRyt_Tg5TQ0_;

  return v7(a1);
}

uint64_t _sxIeAgHr_xs5Error_pIegHrzo_s8SendableRzs5NeverORs_r0_lTRyt_Tg5TQ0_()
{
  v1 = *(*v0 + 16);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

unint64_t specialized __RawDictionaryStorage.find<A>(_:)(uint64_t a1)
{
  v3 = *(v1 + 40);
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  Hasher.init(_seed:)();
  String.hash(into:)();
  v4 = Hasher._finalize()();

  return specialized __RawDictionaryStorage.find<A>(_:hashValue:)(a1, v4);
}

{
  v3 = MEMORY[0x223D619D0](*(v1 + 40), a1);
  return specialized __RawDictionaryStorage.find<A>(_:hashValue:)(a1, v3);
}

{
  v2 = v1;
  v4 = AnyHashable._rawHashValue(seed:)(*(v2 + 40));

  return specialized __RawDictionaryStorage.find<A>(_:hashValue:)(a1, v4);
}

unint64_t specialized __RawDictionaryStorage.find<A>(_:)(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 40);
  Hasher.init(_seed:)();
  String.hash(into:)();
  v6 = Hasher._finalize()();

  return specialized __RawDictionaryStorage.find<A>(_:hashValue:)(a1, a2, v6);
}

unint64_t type metadata accessor for UIViewController()
{
  result = lazy cache variable for type metadata for UIViewController;
  if (!lazy cache variable for type metadata for UIViewController)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &lazy cache variable for type metadata for UIViewController);
  }

  return result;
}

unint64_t specialized __RawDictionaryStorage.find<A>(_:hashValue:)(uint64_t a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v5 = ~v3;
    while (1)
    {
      v6 = *(*(v2 + 48) + 8 * v4);
      v7 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v9 = v8;
      if (v7 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v9 == v10)
      {
        break;
      }

      v12 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if ((v12 & 1) == 0)
      {
        v4 = (v4 + 1) & v5;
        if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
        {
          continue;
        }
      }

      return v4;
    }
  }

  return v4;
}

{
  v4 = -1 << *(v2 + 32);
  result = a2 & ~v4;
  if ((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result))
  {
    v6 = ~v4;
    do
    {
      if (*(*(v2 + 48) + 8 * result) == a1)
      {
        break;
      }

      result = (result + 1) & v6;
    }

    while (((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result) & 1) != 0);
  }

  return result;
}

{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v6 = ~v3;
    do
    {
      outlined init with copy of AnyHashable(*(v2 + 48) + 40 * v4, v9);
      v7 = MEMORY[0x223D61890](v9, a1);
      outlined destroy of AnyHashable(v9);
      if (v7)
      {
        break;
      }

      v4 = (v4 + 1) & v6;
    }

    while (((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4) & 1) != 0);
  }

  return v4;
}

unint64_t specialized __RawDictionaryStorage.find<A>(_:hashValue:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = -1 << *(v3 + 32);
  v5 = a3 & ~v4;
  if ((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5))
  {
    v8 = ~v4;
    do
    {
      v9 = (*(v3 + 48) + 16 * v5);
      if (*v9 == a1 && v9[1] == a2)
      {
        break;
      }

      if (_stringCompareWithSmolCheck(_:_:expecting:)())
      {
        break;
      }

      v5 = (v5 + 1) & v8;
    }

    while (((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5) & 1) != 0);
  }

  return v5;
}

void *_s20ThreatNotificationUI19TNUIAlertControllerC18stopReviewingAlert7handlerAcA17TNUIActionHandler_p_tFZTf4en_nAA15TNUICoordinatorC_Tt0g5(uint64_t a1)
{
  type metadata accessor for TNUIAlertController();
  v2 = specialized static TNUILocalization.localizedString(key:value:tableSuffix:)(0xD000000000000014, 0x800000021E6763F0, 0, 0xE000000000000000);
  v4 = v3;
  v5 = specialized static TNUILocalization.localizedString(key:value:tableSuffix:)(0xD000000000000016, 0x800000021E6763D0, 0, 0xE000000000000000);
  v7 = v6;
  v8 = MEMORY[0x223D615B0](v2, v4);

  v9 = MEMORY[0x223D615B0](v5, v7);

  v10 = [swift_getObjCClassFromMetadata() alertControllerWithTitle:v8 message:v9 preferredStyle:1];

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy20ThreatNotificationUI23TNUIButtonConfigurationVGMd, &_ss23_ContiguousArrayStorageCy20ThreatNotificationUI23TNUIButtonConfigurationVGMR);
  v11 = swift_allocObject();
  *(v11 + 16) = xmmword_21E674F10;
  static TNUIButtonConfiguration.turnOnLDM.getter(v11 + 32);
  v13 = 1;
  static TNUIButtonConfiguration.learnMore(link:)(&v13, v11 + 104);
  static TNUIButtonConfiguration.notNow.getter(v11 + 176);
  (*((*MEMORY[0x277D85000] & *v10) + 0x70))(v11, a1, &protocol witness table for TNUICoordinator);

  return v10;
}

void *_s20ThreatNotificationUI19TNUIAlertControllerC21analyticsEnabledAlert7handlerAcA17TNUIActionHandler_p_tFZTf4en_nAA15TNUICoordinatorC_Tt0g5(uint64_t a1)
{
  type metadata accessor for TNUIAlertController();
  v2 = specialized static TNUILocalization.localizedString(key:value:tableSuffix:)(0xD000000000000019, 0x800000021E6761D0, 0, 0xE000000000000000);
  v4 = v3;
  v5 = specialized static TNUILocalization.localizedString(key:value:tableSuffix:)(0xD00000000000001BLL, 0x800000021E6761B0, 0, 0xE000000000000000);
  v7 = v6;
  v8 = MEMORY[0x223D615B0](v2, v4);

  v9 = MEMORY[0x223D615B0](v5, v7);

  v10 = [swift_getObjCClassFromMetadata() alertControllerWithTitle:v8 message:v9 preferredStyle:1];

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy20ThreatNotificationUI23TNUIButtonConfigurationVGMd, &_ss23_ContiguousArrayStorageCy20ThreatNotificationUI23TNUIButtonConfigurationVGMR);
  v11 = swift_allocObject();
  *(v11 + 16) = xmmword_21E6748E0;
  static TNUIButtonConfiguration.done.getter(v11 + 32);
  (*((*MEMORY[0x277D85000] & *v10) + 0x70))(v11, a1, &protocol witness table for TNUICoordinator);

  return v10;
}

uint64_t outlined init with copy of TNUIActivityIndicatorShowing(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  *(a2 + 32) = *(a1 + 32);
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t partial apply for closure #2 in TNUICoordinator.openAppleAccountUI()(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v9 = v1[6];
  v8 = v1[7];
  v10 = swift_task_alloc();
  *(v2 + 16) = v10;
  *v10 = v2;
  v10[1] = protocol witness for TNUIAccountRemoteUIProviding.makeRemoteUI(for:presentingViewController:) in conformance TNUIAccountRemoteUIProvider;

  return closure #2 in TNUICoordinator.openAppleAccountUI()(a1, v4, v5, v6, v7, v9, v8);
}

uint64_t _sxIeAgHr_xs5Error_pIegHrzo_s8SendableRzs5NeverORs_r0_lTRyt_Tg5TA(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = partial apply for closure #1 in TNUICoordinator.enableLDM();

  return _sxIeAgHr_xs5Error_pIegHrzo_s8SendableRzs5NeverORs_r0_lTRyt_Tg5(a1, v5);
}

uint64_t _sxIeAgHr_xs5Error_pIegHrzo_s8SendableRzs5NeverORs_r0_lTRyt_Tg5TA_22(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = protocol witness for TNUIAccountRemoteUIProviding.makeRemoteUI(for:presentingViewController:) in conformance TNUIAccountRemoteUIProvider;

  return _sxIeAgHr_xs5Error_pIegHrzo_s8SendableRzs5NeverORs_r0_lTRyt_Tg5(a1, v5);
}

uint64_t partial apply for closure #1 in TNUICoordinator.enableLDM()(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = partial apply for closure #1 in TNUICoordinator.enableLDM();

  return closure #1 in TNUICoordinator.enableLDM()(a1, v4, v5, v7, v6);
}

uint64_t outlined init with copy of TNUIViewConfiguration(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for TNUIViewConfiguration();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t partial apply for closure #1 in TNUICoordinator.acknowledgeCFUPresentation()(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = partial apply for closure #1 in TNUICoordinator.enableLDM();

  return closure #1 in TNUICoordinator.acknowledgeCFUPresentation()(a1, v4, v5, v7, v6);
}

Swift::Int TNUIFlow.hashValue.getter()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  MEMORY[0x223D619F0](v1);
  return Hasher._finalize()();
}

unint64_t lazy protocol witness table accessor for type TNUIFlow and conformance TNUIFlow()
{
  result = lazy protocol witness table cache variable for type TNUIFlow and conformance TNUIFlow;
  if (!lazy protocol witness table cache variable for type TNUIFlow and conformance TNUIFlow)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type TNUIFlow and conformance TNUIFlow);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for TNUIFlow(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for TNUIFlow(uint64_t result, unsigned int a2, unsigned int a3)
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

uint64_t dispatch thunk of TNUIAccountRemoteUIProviding.makeRemoteUI(for:presentingViewController:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v11 = *(a5 + 8);
  v15 = (v11 + *v11);
  v12 = v11[1];
  v13 = swift_task_alloc();
  *(v5 + 16) = v13;
  *v13 = v5;
  v13[1] = protocol witness for TNUIAccountRemoteUIProviding.makeRemoteUI(for:presentingViewController:) in conformance TNUIAccountRemoteUIProvider;

  return v15(a1, a2, a3, a4, a5);
}

uint64_t EmbedInScrollViewIfNeededModifier.body(content:)@<X0>(uint64_t a1@<X0>, char a2@<W1>, void *a3@<X8>)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI21_ViewModifier_ContentVy018ThreatNotificationB0013EmbedInScrollc8IfNeededD0VGMd, &_s7SwiftUI21_ViewModifier_ContentVy018ThreatNotificationB0013EmbedInScrollc8IfNeededD0VGMR);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = &v14 - v9;
  (*(v7 + 16))(&v14 - v9, a1, v6);
  v11 = (*(v7 + 80) + 17) & ~*(v7 + 80);
  v12 = swift_allocObject();
  *(v12 + 16) = a2;
  result = (*(v7 + 32))(v12 + v11, v10, v6);
  *a3 = partial apply for closure #1 in EmbedInScrollViewIfNeededModifier.body(content:);
  a3[1] = v12;
  return result;
}

uint64_t closure #1 in EmbedInScrollViewIfNeededModifier.body(content:)@<X0>(uint64_t a1@<X0>, char a2@<W1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v19 = a1;
  v20 = a3;
  v21 = a4;
  v22 = type metadata accessor for ScrollBounceBehavior();
  v5 = *(v22 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v22);
  v8 = &v19 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI10ScrollViewVyAA19_ConditionalContentVyAA08ModifiedF0VyAA01_d9Modifier_F0Vy018ThreatNotificationB007EmbedIncd8IfNeededH0VGAA16_FlexFrameLayoutVGAMGGMd, &_s7SwiftUI10ScrollViewVyAA19_ConditionalContentVyAA08ModifiedF0VyAA01_d9Modifier_F0Vy018ThreatNotificationB007EmbedIncd8IfNeededH0VGAA16_FlexFrameLayoutVGAMGGMR);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v13 = &v19 - v12;
  type metadata accessor for MainActor();
  static MainActor.shared.getter();
  dispatch thunk of Actor.unownedExecutor.getter();
  isCurrentExecutor = swift_task_isCurrentExecutor();
  if ((isCurrentExecutor & 1) == 0)
  {
    isCurrentExecutor = swift_task_reportUnexpectedExecutor();
  }

  MEMORY[0x28223BE20](isCurrentExecutor);
  *(&v19 - 32) = a2 & 1;
  v15 = v19;
  *(&v19 - 3) = v20;
  *(&v19 - 2) = v15;
  static Axis.Set.vertical.getter();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI19_ConditionalContentVyAA08ModifiedD0VyAA014_ViewModifier_D0Vy018ThreatNotificationB0013EmbedInScrollf8IfNeededG0VGAA16_FlexFrameLayoutVGAKGMd, &_s7SwiftUI19_ConditionalContentVyAA08ModifiedD0VyAA014_ViewModifier_D0Vy018ThreatNotificationB0013EmbedInScrollf8IfNeededG0VGAA16_FlexFrameLayoutVGAKGMR);
  lazy protocol witness table accessor for type _ConditionalContent<ModifiedContent<_ViewModifier_Content<EmbedInScrollViewIfNeededModifier>, _FlexFrameLayout>, _ViewModifier_Content<EmbedInScrollViewIfNeededModifier>> and conformance <> _ConditionalContent<A, B>();
  v16 = ScrollView.init(_:showsIndicators:content:)();
  MEMORY[0x223D61320](v16);
  v17 = static Axis.Set.vertical.getter();
  Axis.Set.init(rawValue:)();
  Axis.Set.init(rawValue:)();
  if (Axis.Set.init(rawValue:)() != v17)
  {
    Axis.Set.init(rawValue:)();
  }

  lazy protocol witness table accessor for type VStack<TupleView<(ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Button<ModifiedContent<Text, _FlexFrameLayout>>, _PaddingLayout>, _FlexFrameLayout>, _InsettableBackgroundShapeModifier<Color, RoundedRectangle>>, AccessibilityAttachmentModifier>, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Text, _EnvironmentKeyWritingModifier<TextAlignment>>, _EnvironmentKeyWritingModifier<Font?>>, _ForegroundStyleModifier<HierarchicalShapeStyle>>, _FlexFrameLayout>, _PaddingLayout>, AccessibilityAttachmentModifier>)>> and conformance VStack<A>(&lazy protocol witness table cache variable for type ScrollView<_ConditionalContent<ModifiedContent<_ViewModifier_Content<EmbedInScrollViewIfNeededModifier>, _FlexFrameLayout>, _ViewModifier_Content<EmbedInScrollViewIfNeededModifier>>> and conformance ScrollView<A>, &_s7SwiftUI10ScrollViewVyAA19_ConditionalContentVyAA08ModifiedF0VyAA01_d9Modifier_F0Vy018ThreatNotificationB007EmbedIncd8IfNeededH0VGAA16_FlexFrameLayoutVGAMGGMd, &_s7SwiftUI10ScrollViewVyAA19_ConditionalContentVyAA08ModifiedF0VyAA01_d9Modifier_F0Vy018ThreatNotificationB007EmbedIncd8IfNeededH0VGAA16_FlexFrameLayoutVGAMGGMR);
  View.scrollBounceBehavior(_:axes:)();
  (*(v5 + 8))(v8, v22);
  (*(v10 + 8))(v13, v9);
}

uint64_t closure #1 in closure #1 in EmbedInScrollViewIfNeededModifier.body(content:)@<X0>(char a1@<W0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v27 = a3;
  v28 = a2;
  v29 = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI19_ConditionalContentV7StorageOyAA08ModifiedD0VyAA014_ViewModifier_D0Vy018ThreatNotificationB0013EmbedInScrollg8IfNeededH0VGAA16_FlexFrameLayoutVGAM_GMd, &_s7SwiftUI19_ConditionalContentV7StorageOyAA08ModifiedD0VyAA014_ViewModifier_D0Vy018ThreatNotificationB0013EmbedInScrollg8IfNeededH0VGAA16_FlexFrameLayoutVGAM_GMR);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5);
  v8 = &v27 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyAA014_ViewModifier_D0Vy018ThreatNotificationB0013EmbedInScrolle8IfNeededF0VGAA16_FlexFrameLayoutVGMd, &_s7SwiftUI15ModifiedContentVyAA014_ViewModifier_D0Vy018ThreatNotificationB0013EmbedInScrolle8IfNeededF0VGAA16_FlexFrameLayoutVGMR);
  v10 = *(*(v9 - 8) + 64);
  v11 = MEMORY[0x28223BE20](v9);
  v13 = &v27 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v15 = &v27 - v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI19_ConditionalContentVyAA08ModifiedD0VyAA014_ViewModifier_D0Vy018ThreatNotificationB0013EmbedInScrollf8IfNeededG0VGAA16_FlexFrameLayoutVGAKGMd, &_s7SwiftUI19_ConditionalContentVyAA08ModifiedD0VyAA014_ViewModifier_D0Vy018ThreatNotificationB0013EmbedInScrollf8IfNeededG0VGAA16_FlexFrameLayoutVGAKGMR);
  v17 = *(*(v16 - 8) + 64);
  MEMORY[0x28223BE20](v16 - 8);
  v19 = &v27 - v18;
  type metadata accessor for MainActor();
  static MainActor.shared.getter();
  dispatch thunk of Actor.unownedExecutor.getter();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  if (a1)
  {
    GeometryProxy.size.getter();
    static Alignment.center.getter();
    _FlexFrameLayout.init(minWidth:idealWidth:maxWidth:minHeight:idealHeight:maxHeight:alignment:)();
    v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI21_ViewModifier_ContentVy018ThreatNotificationB0013EmbedInScrollc8IfNeededD0VGMd, &_s7SwiftUI21_ViewModifier_ContentVy018ThreatNotificationB0013EmbedInScrollc8IfNeededD0VGMR);
    (*(*(v20 - 8) + 16))(v13, v28, v20);
    v21 = &v13[*(v9 + 36)];
    v22 = v35;
    *(v21 + 4) = v34;
    *(v21 + 5) = v22;
    *(v21 + 6) = v36;
    v23 = v31;
    *v21 = v30;
    *(v21 + 1) = v23;
    v24 = v33;
    *(v21 + 2) = v32;
    *(v21 + 3) = v24;
    outlined init with take of ModifiedContent<Button<ModifiedContent<Text, _FlexFrameLayout>>, _PaddingLayout>(v13, v15, &_s7SwiftUI15ModifiedContentVyAA014_ViewModifier_D0Vy018ThreatNotificationB0013EmbedInScrolle8IfNeededF0VGAA16_FlexFrameLayoutVGMd, &_s7SwiftUI15ModifiedContentVyAA014_ViewModifier_D0Vy018ThreatNotificationB0013EmbedInScrolle8IfNeededF0VGAA16_FlexFrameLayoutVGMR);
    outlined init with copy of ModifiedContent<_ViewModifier_Content<EmbedInScrollViewIfNeededModifier>, _FlexFrameLayout>(v15, v8);
    swift_storeEnumTagMultiPayload();
    lazy protocol witness table accessor for type ModifiedContent<_ViewModifier_Content<EmbedInScrollViewIfNeededModifier>, _FlexFrameLayout> and conformance <> ModifiedContent<A, B>();
    lazy protocol witness table accessor for type VStack<TupleView<(ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Button<ModifiedContent<Text, _FlexFrameLayout>>, _PaddingLayout>, _FlexFrameLayout>, _InsettableBackgroundShapeModifier<Color, RoundedRectangle>>, AccessibilityAttachmentModifier>, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Text, _EnvironmentKeyWritingModifier<TextAlignment>>, _EnvironmentKeyWritingModifier<Font?>>, _ForegroundStyleModifier<HierarchicalShapeStyle>>, _FlexFrameLayout>, _PaddingLayout>, AccessibilityAttachmentModifier>)>> and conformance VStack<A>(&lazy protocol witness table cache variable for type _ViewModifier_Content<EmbedInScrollViewIfNeededModifier> and conformance _ViewModifier_Content<A>, &_s7SwiftUI21_ViewModifier_ContentVy018ThreatNotificationB0013EmbedInScrollc8IfNeededD0VGMd, &_s7SwiftUI21_ViewModifier_ContentVy018ThreatNotificationB0013EmbedInScrollc8IfNeededD0VGMR);
    _ConditionalContent<>.init(storage:)();
    outlined destroy of ModifiedContent<_ViewModifier_Content<EmbedInScrollViewIfNeededModifier>, _FlexFrameLayout>(v15);
  }

  else
  {
    v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI21_ViewModifier_ContentVy018ThreatNotificationB0013EmbedInScrollc8IfNeededD0VGMd, &_s7SwiftUI21_ViewModifier_ContentVy018ThreatNotificationB0013EmbedInScrollc8IfNeededD0VGMR);
    (*(*(v25 - 8) + 16))(v8, v28, v25);
    swift_storeEnumTagMultiPayload();
    lazy protocol witness table accessor for type ModifiedContent<_ViewModifier_Content<EmbedInScrollViewIfNeededModifier>, _FlexFrameLayout> and conformance <> ModifiedContent<A, B>();
    lazy protocol witness table accessor for type VStack<TupleView<(ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Button<ModifiedContent<Text, _FlexFrameLayout>>, _PaddingLayout>, _FlexFrameLayout>, _InsettableBackgroundShapeModifier<Color, RoundedRectangle>>, AccessibilityAttachmentModifier>, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Text, _EnvironmentKeyWritingModifier<TextAlignment>>, _EnvironmentKeyWritingModifier<Font?>>, _ForegroundStyleModifier<HierarchicalShapeStyle>>, _FlexFrameLayout>, _PaddingLayout>, AccessibilityAttachmentModifier>)>> and conformance VStack<A>(&lazy protocol witness table cache variable for type _ViewModifier_Content<EmbedInScrollViewIfNeededModifier> and conformance _ViewModifier_Content<A>, &_s7SwiftUI21_ViewModifier_ContentVy018ThreatNotificationB0013EmbedInScrollc8IfNeededD0VGMd, &_s7SwiftUI21_ViewModifier_ContentVy018ThreatNotificationB0013EmbedInScrollc8IfNeededD0VGMR);
    _ConditionalContent<>.init(storage:)();
  }

  outlined init with take of ModifiedContent<Button<ModifiedContent<Text, _FlexFrameLayout>>, _PaddingLayout>(v19, v29, &_s7SwiftUI19_ConditionalContentVyAA08ModifiedD0VyAA014_ViewModifier_D0Vy018ThreatNotificationB0013EmbedInScrollf8IfNeededG0VGAA16_FlexFrameLayoutVGAKGMd, &_s7SwiftUI19_ConditionalContentVyAA08ModifiedD0VyAA014_ViewModifier_D0Vy018ThreatNotificationB0013EmbedInScrollf8IfNeededG0VGAA16_FlexFrameLayoutVGAKGMR);
}

uint64_t protocol witness for ViewModifier.body(content:) in conformance EmbedInScrollViewIfNeededModifier@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI21_ViewModifier_ContentVy018ThreatNotificationB0013EmbedInScrollc8IfNeededD0VGMd, &_s7SwiftUI21_ViewModifier_ContentVy018ThreatNotificationB0013EmbedInScrollc8IfNeededD0VGMR);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v14 - v8;
  v10 = *v2;
  (*(v6 + 16))(&v14 - v8, a1, v5);
  v11 = (*(v6 + 80) + 17) & ~*(v6 + 80);
  v12 = swift_allocObject();
  *(v12 + 16) = v10;
  result = (*(v6 + 32))(v12 + v11, v9, v5);
  *a2 = closure #1 in EmbedInScrollViewIfNeededModifier.body(content:)partial apply;
  a2[1] = v12;
  return result;
}

uint64_t getEnumTagSinglePayload for EmbedInScrollViewIfNeededModifier(unsigned __int8 *a1, unsigned int a2)
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
  v8 = (v6 + 2147483646) & 0x7FFFFFFF;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

unint64_t lazy protocol witness table accessor for type EmbedInScrollViewIfNeededModifier and conformance EmbedInScrollViewIfNeededModifier()
{
  result = lazy protocol witness table cache variable for type EmbedInScrollViewIfNeededModifier and conformance EmbedInScrollViewIfNeededModifier;
  if (!lazy protocol witness table cache variable for type EmbedInScrollViewIfNeededModifier and conformance EmbedInScrollViewIfNeededModifier)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type EmbedInScrollViewIfNeededModifier and conformance EmbedInScrollViewIfNeededModifier);
  }

  return result;
}

uint64_t objectdestroyTm()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI21_ViewModifier_ContentVy018ThreatNotificationB0013EmbedInScrollc8IfNeededD0VGMd, &_s7SwiftUI21_ViewModifier_ContentVy018ThreatNotificationB0013EmbedInScrollc8IfNeededD0VGMR);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 17) & ~v3;
  v5 = *(v2 + 64);
  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v4 + v5, v3 | 7);
}

uint64_t partial apply for closure #1 in EmbedInScrollViewIfNeededModifier.body(content:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI21_ViewModifier_ContentVy018ThreatNotificationB0013EmbedInScrollc8IfNeededD0VGMd, &_s7SwiftUI21_ViewModifier_ContentVy018ThreatNotificationB0013EmbedInScrollc8IfNeededD0VGMR) - 8);
  v6 = *(v2 + 16);
  v7 = v2 + ((*(v5 + 80) + 17) & ~*(v5 + 80));

  return closure #1 in EmbedInScrollViewIfNeededModifier.body(content:)(a1, v6, v7, a2);
}

unint64_t lazy protocol witness table accessor for type _ConditionalContent<ModifiedContent<_ViewModifier_Content<EmbedInScrollViewIfNeededModifier>, _FlexFrameLayout>, _ViewModifier_Content<EmbedInScrollViewIfNeededModifier>> and conformance <> _ConditionalContent<A, B>()
{
  result = lazy protocol witness table cache variable for type _ConditionalContent<ModifiedContent<_ViewModifier_Content<EmbedInScrollViewIfNeededModifier>, _FlexFrameLayout>, _ViewModifier_Content<EmbedInScrollViewIfNeededModifier>> and conformance <> _ConditionalContent<A, B>;
  if (!lazy protocol witness table cache variable for type _ConditionalContent<ModifiedContent<_ViewModifier_Content<EmbedInScrollViewIfNeededModifier>, _FlexFrameLayout>, _ViewModifier_Content<EmbedInScrollViewIfNeededModifier>> and conformance <> _ConditionalContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI19_ConditionalContentVyAA08ModifiedD0VyAA014_ViewModifier_D0Vy018ThreatNotificationB0013EmbedInScrollf8IfNeededG0VGAA16_FlexFrameLayoutVGAKGMd, &_s7SwiftUI19_ConditionalContentVyAA08ModifiedD0VyAA014_ViewModifier_D0Vy018ThreatNotificationB0013EmbedInScrollf8IfNeededG0VGAA16_FlexFrameLayoutVGAKGMR);
    lazy protocol witness table accessor for type ModifiedContent<_ViewModifier_Content<EmbedInScrollViewIfNeededModifier>, _FlexFrameLayout> and conformance <> ModifiedContent<A, B>();
    lazy protocol witness table accessor for type VStack<TupleView<(ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Button<ModifiedContent<Text, _FlexFrameLayout>>, _PaddingLayout>, _FlexFrameLayout>, _InsettableBackgroundShapeModifier<Color, RoundedRectangle>>, AccessibilityAttachmentModifier>, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Text, _EnvironmentKeyWritingModifier<TextAlignment>>, _EnvironmentKeyWritingModifier<Font?>>, _ForegroundStyleModifier<HierarchicalShapeStyle>>, _FlexFrameLayout>, _PaddingLayout>, AccessibilityAttachmentModifier>)>> and conformance VStack<A>(&lazy protocol witness table cache variable for type _ViewModifier_Content<EmbedInScrollViewIfNeededModifier> and conformance _ViewModifier_Content<A>, &_s7SwiftUI21_ViewModifier_ContentVy018ThreatNotificationB0013EmbedInScrollc8IfNeededD0VGMd, &_s7SwiftUI21_ViewModifier_ContentVy018ThreatNotificationB0013EmbedInScrollc8IfNeededD0VGMR);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type _ConditionalContent<ModifiedContent<_ViewModifier_Content<EmbedInScrollViewIfNeededModifier>, _FlexFrameLayout>, _ViewModifier_Content<EmbedInScrollViewIfNeededModifier>> and conformance <> _ConditionalContent<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<_ViewModifier_Content<EmbedInScrollViewIfNeededModifier>, _FlexFrameLayout> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<_ViewModifier_Content<EmbedInScrollViewIfNeededModifier>, _FlexFrameLayout> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<_ViewModifier_Content<EmbedInScrollViewIfNeededModifier>, _FlexFrameLayout> and conformance <> ModifiedContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyAA014_ViewModifier_D0Vy018ThreatNotificationB0013EmbedInScrolle8IfNeededF0VGAA16_FlexFrameLayoutVGMd, &_s7SwiftUI15ModifiedContentVyAA014_ViewModifier_D0Vy018ThreatNotificationB0013EmbedInScrolle8IfNeededF0VGAA16_FlexFrameLayoutVGMR);
    lazy protocol witness table accessor for type VStack<TupleView<(ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Button<ModifiedContent<Text, _FlexFrameLayout>>, _PaddingLayout>, _FlexFrameLayout>, _InsettableBackgroundShapeModifier<Color, RoundedRectangle>>, AccessibilityAttachmentModifier>, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Text, _EnvironmentKeyWritingModifier<TextAlignment>>, _EnvironmentKeyWritingModifier<Font?>>, _ForegroundStyleModifier<HierarchicalShapeStyle>>, _FlexFrameLayout>, _PaddingLayout>, AccessibilityAttachmentModifier>)>> and conformance VStack<A>(&lazy protocol witness table cache variable for type _ViewModifier_Content<EmbedInScrollViewIfNeededModifier> and conformance _ViewModifier_Content<A>, &_s7SwiftUI21_ViewModifier_ContentVy018ThreatNotificationB0013EmbedInScrollc8IfNeededD0VGMd, &_s7SwiftUI21_ViewModifier_ContentVy018ThreatNotificationB0013EmbedInScrollc8IfNeededD0VGMR);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<_ViewModifier_Content<EmbedInScrollViewIfNeededModifier>, _FlexFrameLayout> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

uint64_t outlined init with copy of ModifiedContent<_ViewModifier_Content<EmbedInScrollViewIfNeededModifier>, _FlexFrameLayout>(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyAA014_ViewModifier_D0Vy018ThreatNotificationB0013EmbedInScrolle8IfNeededF0VGAA16_FlexFrameLayoutVGMd, &_s7SwiftUI15ModifiedContentVyAA014_ViewModifier_D0Vy018ThreatNotificationB0013EmbedInScrolle8IfNeededF0VGAA16_FlexFrameLayoutVGMR);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t outlined destroy of ModifiedContent<_ViewModifier_Content<EmbedInScrollViewIfNeededModifier>, _FlexFrameLayout>(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyAA014_ViewModifier_D0Vy018ThreatNotificationB0013EmbedInScrolle8IfNeededF0VGAA16_FlexFrameLayoutVGMd, &_s7SwiftUI15ModifiedContentVyAA014_ViewModifier_D0Vy018ThreatNotificationB0013EmbedInScrolle8IfNeededF0VGAA16_FlexFrameLayoutVGMR);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t TNUIUserNotificationManager.__allocating_init()()
{
  v0 = swift_allocObject();
  *(v0 + 16) = [objc_allocWithZone(MEMORY[0x277CE2028]) initWithBundleIdentifier_];
  return v0;
}

uint64_t TNUIUserNotificationManager.__deallocating_deinit()
{

  return MEMORY[0x2821FE8D8](v0, 24, 7);
}

void TNUIUserNotificationManager.post(notification:after:)(double a1)
{
  v2 = v1;
  v4 = type metadata accessor for Logger();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = aBlock - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  static TNCLogger.default.getter();
  v9 = Logger.logObject.getter();
  v10 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    aBlock[0] = v12;
    *v11 = 136315394;
    *(v11 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD00000000000004ALL, 0x800000021E676790, aBlock);
    *(v11 + 12) = 2048;
    *(v11 + 14) = a1;
    _os_log_impl(&dword_21E646000, v9, v10, "Will post notification: %s after: %f", v11, 0x16u);
    __swift_destroy_boxed_opaque_existential_0Tm(v12);
    MEMORY[0x223D62010](v12, -1, -1);
    MEMORY[0x223D62010](v11, -1, -1);
  }

  (*(v5 + 8))(v8, v4);
  if (a1 <= 0.0)
  {
    v13 = 0;
  }

  else
  {
    v13 = [objc_opt_self() triggerWithTimeInterval:0 repeats:a1];
  }

  v14 = specialized TNUIUserNotificationManager.notificationContent(for:)();
  v15 = v13;
  v16 = MEMORY[0x223D615B0](0xD00000000000004ALL, 0x800000021E676790);
  v17 = [objc_opt_self() requestWithIdentifier:v16 content:v14 trigger:v15];

  v18 = *(v2 + 16);
  aBlock[4] = partial apply for closure #1 in TNUIUserNotificationManager.post(notification:after:);
  aBlock[5] = 0;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = thunk for @escaping @callee_guaranteed @Sendable (@guaranteed Error?) -> ();
  aBlock[3] = &block_descriptor_2;
  v19 = _Block_copy(aBlock);

  [v18 addNotificationRequest:v17 withCompletionHandler:v19];

  _Block_release(v19);
}

uint64_t closure #1 in TNUIUserNotificationManager.post(notification:after:)(uint64_t a1)
{
  v2 = type metadata accessor for Logger();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v18[-1] - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  static TNCLogger.default.getter();
  if (a1)
  {
    v7 = static os_log_type_t.error.getter();
  }

  else
  {
    v7 = static os_log_type_t.debug.getter();
  }

  v8 = v7;
  v9 = Logger.logObject.getter();
  if (os_log_type_enabled(v9, v8))
  {
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v19 = v11;
    *v10 = 136315394;
    *(v10 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD00000000000004ALL, 0x800000021E676790, &v19);
    *(v10 + 12) = 2080;
    if (a1)
    {
      strcpy(v18, " with error: ");
      HIWORD(v18[1]) = -4864;
      v17 = a1;
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pSgMd, &_ss5Error_pSgMR);
      v12 = Optional.debugDescription.getter();
      MEMORY[0x223D61640](v12);

      v13 = v18[0];
      v14 = v18[1];
    }

    else
    {
      v13 = 0;
      v14 = 0xE000000000000000;
    }

    v15 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v13, v14, &v19);

    *(v10 + 14) = v15;
    _os_log_impl(&dword_21E646000, v9, v8, "Did register user notification: %s%s", v10, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x223D62010](v11, -1, -1);
    MEMORY[0x223D62010](v10, -1, -1);
  }

  return (*(v3 + 8))(v6, v2);
}

void thunk for @escaping @callee_guaranteed @Sendable (@guaranteed Error?) -> ()(uint64_t a1, void *a2)
{
  v4 = *(a1 + 32);
  v3 = *(a1 + 40);

  v5 = a2;
  v4(a2);
}

uint64_t specialized TNUIUserNotificationManager.notificationContent(for:)()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLVSgMd, "t-");
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x28223BE20](v0 - 8);
  v3 = v19 - v2;
  v4 = [objc_allocWithZone(MEMORY[0x277CE1F60]) init];
  v5 = specialized static TNUILocalization.localizedString(key:value:tableSuffix:)(0xD00000000000001FLL, 0x800000021E6761F0, 0, 0xE000000000000000);
  v6 = MEMORY[0x223D615B0](v5);

  [v4 setTitle_];

  v7 = specialized static TNUILocalization.localizedString(key:value:tableSuffix:)(0xD000000000000020, 0x800000021E676230, 0, 0xE000000000000000);
  v8 = MEMORY[0x223D615B0](v7);

  [v4 setBody_];

  [v4 setHasDefaultAction_];
  v9 = *MEMORY[0x277CFE408];
  v19[0] = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v19[1] = v10;
  v11 = static ThreatNotification.FollowUpItemGeneral.identifier.getter();
  MEMORY[0x223D61640](v11);

  MEMORY[0x223D61640](0x3D64496D65746926, 0xE800000000000000);
  v12 = static ThreatNotification.FollowUpItemGeneral.identifier.getter();
  MEMORY[0x223D61640](v12);

  URL.init(string:)();

  v13 = type metadata accessor for URL();
  v14 = *(v13 - 8);
  result = (*(v14 + 48))(v3, 1, v13);
  if (result == 1)
  {
    __break(1u);
  }

  else
  {
    URL._bridgeToObjectiveC()(v16);
    v18 = v17;
    (*(v14 + 8))(v3, v13);
    [v4 setDefaultActionURL_];

    return v4;
  }

  return result;
}

uint64_t block_copy_helper_2(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

Swift::Int TNUIAccountRemoteUIContentType.hashValue.getter()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  MEMORY[0x223D619F0](v1);
  return Hasher._finalize()();
}

unint64_t lazy protocol witness table accessor for type TNUIAccountRemoteUIContentType and conformance TNUIAccountRemoteUIContentType()
{
  result = lazy protocol witness table cache variable for type TNUIAccountRemoteUIContentType and conformance TNUIAccountRemoteUIContentType;
  if (!lazy protocol witness table cache variable for type TNUIAccountRemoteUIContentType and conformance TNUIAccountRemoteUIContentType)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type TNUIAccountRemoteUIContentType and conformance TNUIAccountRemoteUIContentType);
  }

  return result;
}

uint64_t TNUIActionItemContainerView.init(viewModel:action:)()
{
  type metadata accessor for TNUIViewModel();
  _s20ThreatNotificationUI13TNUIViewModelCAC7Combine16ObservableObjectAAWlTm_0(&lazy protocol witness table cache variable for type TNUIViewModel and conformance TNUIViewModel, type metadata accessor for TNUIViewModel);
  return ObservedObject.init(wrappedValue:)();
}

uint64_t TNUIActionItemContainerView.viewModel.setter(uint64_t a1)
{
  v3 = *(v1 + 8);

  *(v1 + 8) = a1;
  return result;
}

void TNUIActionItemContainerView.$viewModel.getter()
{
  type metadata accessor for TNUIViewModel();
  _s20ThreatNotificationUI13TNUIViewModelCAC7Combine16ObservableObjectAAWlTm_0(&lazy protocol witness table cache variable for type TNUIViewModel and conformance TNUIViewModel, type metadata accessor for TNUIViewModel);

  JUMPOUT(0x223D611B0);
}

uint64_t TNUIActionItemContainerView.body.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  *a5 = static HorizontalAlignment.leading.getter();
  *(a5 + 8) = 0x4040000000000000;
  *(a5 + 16) = 0;
  v10 = a5 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI13_VariadicViewO4TreeVy_AA13_VStackLayoutVAA7ForEachVySay018ThreatNotificationB027TNUIActionItemConfigurationVGSSAJ0lmD0VGGMd, &_s7SwiftUI13_VariadicViewO4TreeVy_AA13_VStackLayoutVAA7ForEachVySay018ThreatNotificationB027TNUIActionItemConfigurationVGSSAJ0lmD0VGGMR) + 44);
  closure #1 in TNUIActionItemContainerView.body.getter(a1, a2, a3, a4);
  v11 = static Edge.Set.top.getter();
  EdgeInsets.init(_all:)();
  v13 = v12;
  v15 = v14;
  v17 = v16;
  v19 = v18;
  v20 = a5 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyAA6VStackVyAA7ForEachVySay018ThreatNotificationB027TNUIActionItemConfigurationVGSSAH0jK4ViewVGGAA14_PaddingLayoutVGMd, &_s7SwiftUI15ModifiedContentVyAA6VStackVyAA7ForEachVySay018ThreatNotificationB027TNUIActionItemConfigurationVGSSAH0jK4ViewVGGAA14_PaddingLayoutVGMR) + 36);
  *v20 = v11;
  *(v20 + 8) = v13;
  *(v20 + 16) = v15;
  *(v20 + 24) = v17;
  *(v20 + 32) = v19;
  *(v20 + 40) = 0;
  *(a5 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyACyAA6VStackVyAA7ForEachVySay018ThreatNotificationB027TNUIActionItemConfigurationVGSSAH0jK4ViewVGGAA14_PaddingLayoutVGAA21_TraitWritingModifierVyAA0o8PriorityP3KeyVGGMd, &_s7SwiftUI15ModifiedContentVyACyAA6VStackVyAA7ForEachVySay018ThreatNotificationB027TNUIActionItemConfigurationVGSSAH0jK4ViewVGGAA14_PaddingLayoutVGAA21_TraitWritingModifierVyAA0o8PriorityP3KeyVGGMR) + 36)) = 0x3FF0000000000000;
  *(a5 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyACyACyAA6VStackVyAA7ForEachVySay018ThreatNotificationB027TNUIActionItemConfigurationVGSSAH0jK4ViewVGGAA14_PaddingLayoutVGAA21_TraitWritingModifierVyAA0o8PriorityP3KeyVGGAA010_FixedSizeO0VGMd, &_s7SwiftUI15ModifiedContentVyACyACyAA6VStackVyAA7ForEachVySay018ThreatNotificationB027TNUIActionItemConfigurationVGSSAH0jK4ViewVGGAA14_PaddingLayoutVGAA21_TraitWritingModifierVyAA0o8PriorityP3KeyVGGAA010_FixedSizeO0VGMR) + 36)) = 256;
  KeyPath = swift_getKeyPath();
  v22 = swift_allocObject();
  v22[2] = a1;
  v22[3] = a2;
  v22[4] = a3;
  v22[5] = a4;
  v23 = swift_allocObject();
  *(v23 + 16) = partial apply for implicit closure #2 in implicit closure #1 in TNUIActionItemContainerView.body.getter;
  *(v23 + 24) = v22;
  v24 = (a5 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyACyACyACyAA6VStackVyAA7ForEachVySay018ThreatNotificationB027TNUIActionItemConfigurationVGSSAH0jK4ViewVGGAA14_PaddingLayoutVGAA21_TraitWritingModifierVyAA0o8PriorityP3KeyVGGAA010_FixedSizeO0VGAA012_EnvironmenttqR0VyAA13OpenURLActionVGGMd, &_s7SwiftUI15ModifiedContentVyACyACyACyAA6VStackVyAA7ForEachVySay018ThreatNotificationB027TNUIActionItemConfigurationVGSSAH0jK4ViewVGGAA14_PaddingLayoutVGAA21_TraitWritingModifierVyAA0o8PriorityP3KeyVGGAA010_FixedSizeO0VGAA012_EnvironmenttqR0VyAA13OpenURLActionVGGMR) + 36));
  LODWORD(a1) = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI30_EnvironmentKeyWritingModifierVyAA13OpenURLActionVGMd, &_s7SwiftUI30_EnvironmentKeyWritingModifierVyAA13OpenURLActionVGMR) + 28);

  result = OpenURLAction.init(handler:)();
  *v24 = KeyPath;
  return result;
}

uint64_t closure #1 in TNUIActionItemContainerView.body.getter(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = type metadata accessor for TNUIViewConfiguration();
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8);
  v11 = v17 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for MainActor();
  static MainActor.shared.getter();
  dispatch thunk of Actor.unownedExecutor.getter();
  isCurrentExecutor = swift_task_isCurrentExecutor();
  if ((isCurrentExecutor & 1) == 0)
  {
    isCurrentExecutor = swift_task_reportUnexpectedExecutor();
  }

  (*(*a2 + 96))(isCurrentExecutor);
  v13 = *&v11[*(v8 + 36)];

  outlined destroy of TNUIViewConfiguration(v11);
  v14 = MEMORY[0x277D84F90];
  if (v13)
  {
    v14 = v13;
  }

  v17[1] = v14;
  v15 = swift_allocObject();
  v15[2] = a1;
  v15[3] = a2;
  v15[4] = a3;
  v15[5] = a4;

  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay20ThreatNotificationUI27TNUIActionItemConfigurationVGMd, &_sSay20ThreatNotificationUI27TNUIActionItemConfigurationVGMR);
  type metadata accessor for TNUIActionItemView();
  lazy protocol witness table accessor for type VStack<TupleView<(ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Button<ModifiedContent<Text, _FlexFrameLayout>>, _PaddingLayout>, _FlexFrameLayout>, _InsettableBackgroundShapeModifier<Color, RoundedRectangle>>, AccessibilityAttachmentModifier>, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Text, _EnvironmentKeyWritingModifier<TextAlignment>>, _EnvironmentKeyWritingModifier<Font?>>, _ForegroundStyleModifier<HierarchicalShapeStyle>>, _FlexFrameLayout>, _PaddingLayout>, AccessibilityAttachmentModifier>)>> and conformance VStack<A>(&lazy protocol witness table cache variable for type [TNUIActionItemConfiguration] and conformance [A], &_sSay20ThreatNotificationUI27TNUIActionItemConfigurationVGMd, &_sSay20ThreatNotificationUI27TNUIActionItemConfigurationVGMR);
  _s20ThreatNotificationUI13TNUIViewModelCAC7Combine16ObservableObjectAAWlTm_0(&lazy protocol witness table cache variable for type TNUIActionItemView and conformance TNUIActionItemView, type metadata accessor for TNUIActionItemView);
  _s20ThreatNotificationUI13TNUIViewModelCAC7Combine16ObservableObjectAAWlTm_0(&lazy protocol witness table cache variable for type TNUIActionItemConfiguration and conformance TNUIActionItemConfiguration, type metadata accessor for TNUIActionItemConfiguration);
  ForEach<>.init(_:content:)();
}

uint64_t closure #1 in closure #1 in TNUIActionItemContainerView.body.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v18 = a2;
  v19 = a4;
  v10 = type metadata accessor for TNUIActionItemConfiguration();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10 - 8);
  type metadata accessor for MainActor();
  static MainActor.shared.getter();
  dispatch thunk of Actor.unownedExecutor.getter();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  outlined init with copy of TNUIActionItemConfiguration(a1, a6);
  outlined init with copy of TNUIActionItemConfiguration(a1, &v18 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  v13 = (*(v11 + 80) + 48) & ~*(v11 + 80);
  v14 = swift_allocObject();
  v15 = v19;
  *(v14 + 2) = v18;
  *(v14 + 3) = a3;
  *(v14 + 4) = v15;
  *(v14 + 5) = a5;
  outlined init with take of TNUIActionItemConfiguration(&v18 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0), v14 + v13);

  result = type metadata accessor for TNUIActionItemView();
  v17 = (a6 + *(result + 20));
  *v17 = partial apply for closure #1 in closure #1 in closure #1 in TNUIActionItemContainerView.body.getter;
  v17[1] = v14;
  return result;
}

uint64_t key path setter for EnvironmentValues.openURL : EnvironmentValues(uint64_t a1)
{
  v2 = type metadata accessor for OpenURLAction();
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2);
  (*(v5 + 16))(&v7 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), a1);
  return EnvironmentValues.openURL.setter();
}

uint64_t implicit closure #2 in implicit closure #1 in TNUIActionItemContainerView.body.getter(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = URL.absoluteString.getter();
  v6 = v5;
  v7._countAndFlagsBits = v4;
  v7._object = v6;
  v8 = _findStringSwitchCase(cases:string:)(&outlined read-only object #0 of TNCUILink.init(rawValue:), v7);

  if (v8 > 2)
  {

    return MEMORY[0x282130C38](v9);
  }

  else
  {
    v12 = v8;
    v10 = (*(*a3 + 184))(&v12);

    return MEMORY[0x282130C30](v10);
  }
}

uint64_t partial apply for implicit closure #2 in implicit closure #1 in TNUIActionItemContainerView.body.getter(uint64_t a1)
{
  v2 = v1[4];
  v3 = v1[5];
  return implicit closure #2 in implicit closure #1 in TNUIActionItemContainerView.body.getter(a1, v1[2], v1[3]);
}

uint64_t thunk for @escaping @callee_guaranteed (@in_guaranteed URL) -> (@out OpenURLAction.Result) with global actor constraint MainActor(uint64_t a1, void (*a2)(uint64_t))
{
  type metadata accessor for MainActor();
  static MainActor.shared.getter();
  dispatch thunk of Actor.unownedExecutor.getter();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  a2(a1);
}

uint64_t protocol witness for View.body.getter in conformance TNUIActionItemContainerView@<X0>(uint64_t *a1@<X8>)
{
  v2 = a1;
  v3 = *v1;
  v4 = v1[1];
  v6 = v1[2];
  v5 = v1[3];
  *a1 = static HorizontalAlignment.leading.getter();
  v2[1] = 0x4040000000000000;
  *(v2 + 16) = 0;
  v7 = v2 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI13_VariadicViewO4TreeVy_AA13_VStackLayoutVAA7ForEachVySay018ThreatNotificationB027TNUIActionItemConfigurationVGSSAJ0lmD0VGGMd, &_s7SwiftUI13_VariadicViewO4TreeVy_AA13_VStackLayoutVAA7ForEachVySay018ThreatNotificationB027TNUIActionItemConfigurationVGSSAJ0lmD0VGGMR) + 44);
  closure #1 in TNUIActionItemContainerView.body.getter(v3, v4, v6, v5);
  v8 = static Edge.Set.top.getter();
  EdgeInsets.init(_all:)();
  v10 = v9;
  v12 = v11;
  v14 = v13;
  v16 = v15;
  v17 = v2 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyAA6VStackVyAA7ForEachVySay018ThreatNotificationB027TNUIActionItemConfigurationVGSSAH0jK4ViewVGGAA14_PaddingLayoutVGMd, &_s7SwiftUI15ModifiedContentVyAA6VStackVyAA7ForEachVySay018ThreatNotificationB027TNUIActionItemConfigurationVGSSAH0jK4ViewVGGAA14_PaddingLayoutVGMR) + 36);
  *v17 = v8;
  *(v17 + 1) = v10;
  *(v17 + 2) = v12;
  *(v17 + 3) = v14;
  *(v17 + 4) = v16;
  v17[40] = 0;
  *(v2 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyACyAA6VStackVyAA7ForEachVySay018ThreatNotificationB027TNUIActionItemConfigurationVGSSAH0jK4ViewVGGAA14_PaddingLayoutVGAA21_TraitWritingModifierVyAA0o8PriorityP3KeyVGGMd, &_s7SwiftUI15ModifiedContentVyACyAA6VStackVyAA7ForEachVySay018ThreatNotificationB027TNUIActionItemConfigurationVGSSAH0jK4ViewVGGAA14_PaddingLayoutVGAA21_TraitWritingModifierVyAA0o8PriorityP3KeyVGGMR) + 36)) = 0x3FF0000000000000;
  *(v2 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyACyACyAA6VStackVyAA7ForEachVySay018ThreatNotificationB027TNUIActionItemConfigurationVGSSAH0jK4ViewVGGAA14_PaddingLayoutVGAA21_TraitWritingModifierVyAA0o8PriorityP3KeyVGGAA010_FixedSizeO0VGMd, &_s7SwiftUI15ModifiedContentVyACyACyAA6VStackVyAA7ForEachVySay018ThreatNotificationB027TNUIActionItemConfigurationVGSSAH0jK4ViewVGGAA14_PaddingLayoutVGAA21_TraitWritingModifierVyAA0o8PriorityP3KeyVGGAA010_FixedSizeO0VGMR) + 36)) = 256;
  KeyPath = swift_getKeyPath();
  v19 = swift_allocObject();
  v19[2] = v3;
  v19[3] = v4;
  v19[4] = v6;
  v19[5] = v5;
  v20 = swift_allocObject();
  *(v20 + 16) = implicit closure #2 in implicit closure #1 in TNUIActionItemContainerView.body.getterpartial apply;
  *(v20 + 24) = v19;
  v21 = (v2 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyACyACyACyAA6VStackVyAA7ForEachVySay018ThreatNotificationB027TNUIActionItemConfigurationVGSSAH0jK4ViewVGGAA14_PaddingLayoutVGAA21_TraitWritingModifierVyAA0o8PriorityP3KeyVGGAA010_FixedSizeO0VGAA012_EnvironmenttqR0VyAA13OpenURLActionVGGMd, &_s7SwiftUI15ModifiedContentVyACyACyACyAA6VStackVyAA7ForEachVySay018ThreatNotificationB027TNUIActionItemConfigurationVGSSAH0jK4ViewVGGAA14_PaddingLayoutVGAA21_TraitWritingModifierVyAA0o8PriorityP3KeyVGGAA010_FixedSizeO0VGAA012_EnvironmenttqR0VyAA13OpenURLActionVGGMR) + 36));
  LODWORD(v2) = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI30_EnvironmentKeyWritingModifierVyAA13OpenURLActionVGMd, &_s7SwiftUI30_EnvironmentKeyWritingModifierVyAA13OpenURLActionVGMR) + 28);

  result = OpenURLAction.init(handler:)();
  *v21 = KeyPath;
  return result;
}

__n128 __swift_memcpy32_8(_OWORD *a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *a1 = *a2;
  a1[1] = v3;
  return result;
}

uint64_t getEnumTagSinglePayload for TNUIActionItemContainerView(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 32))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 8);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t storeEnumTagSinglePayload for TNUIActionItemContainerView(uint64_t result, int a2, int a3)
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

unint64_t lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<VStack<ForEach<[TNUIActionItemConfiguration], String, TNUIActionItemView>>, _PaddingLayout>, _TraitWritingModifier<LayoutPriorityTraitKey>>, _FixedSizeLayout>, _EnvironmentKeyWritingModifier<OpenURLAction>> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<VStack<ForEach<[TNUIActionItemConfiguration], String, TNUIActionItemView>>, _PaddingLayout>, _TraitWritingModifier<LayoutPriorityTraitKey>>, _FixedSizeLayout>, _EnvironmentKeyWritingModifier<OpenURLAction>> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<VStack<ForEach<[TNUIActionItemConfiguration], String, TNUIActionItemView>>, _PaddingLayout>, _TraitWritingModifier<LayoutPriorityTraitKey>>, _FixedSizeLayout>, _EnvironmentKeyWritingModifier<OpenURLAction>> and conformance <> ModifiedContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyACyACyACyAA6VStackVyAA7ForEachVySay018ThreatNotificationB027TNUIActionItemConfigurationVGSSAH0jK4ViewVGGAA14_PaddingLayoutVGAA21_TraitWritingModifierVyAA0o8PriorityP3KeyVGGAA010_FixedSizeO0VGAA012_EnvironmenttqR0VyAA13OpenURLActionVGGMd, &_s7SwiftUI15ModifiedContentVyACyACyACyAA6VStackVyAA7ForEachVySay018ThreatNotificationB027TNUIActionItemConfigurationVGSSAH0jK4ViewVGGAA14_PaddingLayoutVGAA21_TraitWritingModifierVyAA0o8PriorityP3KeyVGGAA010_FixedSizeO0VGAA012_EnvironmenttqR0VyAA13OpenURLActionVGGMR);
    lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<ModifiedContent<VStack<ForEach<[TNUIActionItemConfiguration], String, TNUIActionItemView>>, _PaddingLayout>, _TraitWritingModifier<LayoutPriorityTraitKey>>, _FixedSizeLayout> and conformance <> ModifiedContent<A, B>();
    lazy protocol witness table accessor for type VStack<TupleView<(ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Button<ModifiedContent<Text, _FlexFrameLayout>>, _PaddingLayout>, _FlexFrameLayout>, _InsettableBackgroundShapeModifier<Color, RoundedRectangle>>, AccessibilityAttachmentModifier>, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Text, _EnvironmentKeyWritingModifier<TextAlignment>>, _EnvironmentKeyWritingModifier<Font?>>, _ForegroundStyleModifier<HierarchicalShapeStyle>>, _FlexFrameLayout>, _PaddingLayout>, AccessibilityAttachmentModifier>)>> and conformance VStack<A>(&lazy protocol witness table cache variable for type _EnvironmentKeyWritingModifier<OpenURLAction> and conformance _EnvironmentKeyWritingModifier<A>, &_s7SwiftUI30_EnvironmentKeyWritingModifierVyAA13OpenURLActionVGMd, &_s7SwiftUI30_EnvironmentKeyWritingModifierVyAA13OpenURLActionVGMR);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<VStack<ForEach<[TNUIActionItemConfiguration], String, TNUIActionItemView>>, _PaddingLayout>, _TraitWritingModifier<LayoutPriorityTraitKey>>, _FixedSizeLayout>, _EnvironmentKeyWritingModifier<OpenURLAction>> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<ModifiedContent<VStack<ForEach<[TNUIActionItemConfiguration], String, TNUIActionItemView>>, _PaddingLayout>, _TraitWritingModifier<LayoutPriorityTraitKey>>, _FixedSizeLayout> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<VStack<ForEach<[TNUIActionItemConfiguration], String, TNUIActionItemView>>, _PaddingLayout>, _TraitWritingModifier<LayoutPriorityTraitKey>>, _FixedSizeLayout> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<VStack<ForEach<[TNUIActionItemConfiguration], String, TNUIActionItemView>>, _PaddingLayout>, _TraitWritingModifier<LayoutPriorityTraitKey>>, _FixedSizeLayout> and conformance <> ModifiedContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyACyACyAA6VStackVyAA7ForEachVySay018ThreatNotificationB027TNUIActionItemConfigurationVGSSAH0jK4ViewVGGAA14_PaddingLayoutVGAA21_TraitWritingModifierVyAA0o8PriorityP3KeyVGGAA010_FixedSizeO0VGMd, &_s7SwiftUI15ModifiedContentVyACyACyAA6VStackVyAA7ForEachVySay018ThreatNotificationB027TNUIActionItemConfigurationVGSSAH0jK4ViewVGGAA14_PaddingLayoutVGAA21_TraitWritingModifierVyAA0o8PriorityP3KeyVGGAA010_FixedSizeO0VGMR);
    lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<VStack<ForEach<[TNUIActionItemConfiguration], String, TNUIActionItemView>>, _PaddingLayout>, _TraitWritingModifier<LayoutPriorityTraitKey>> and conformance <> ModifiedContent<A, B>();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<VStack<ForEach<[TNUIActionItemConfiguration], String, TNUIActionItemView>>, _PaddingLayout>, _TraitWritingModifier<LayoutPriorityTraitKey>>, _FixedSizeLayout> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<VStack<ForEach<[TNUIActionItemConfiguration], String, TNUIActionItemView>>, _PaddingLayout>, _TraitWritingModifier<LayoutPriorityTraitKey>> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<VStack<ForEach<[TNUIActionItemConfiguration], String, TNUIActionItemView>>, _PaddingLayout>, _TraitWritingModifier<LayoutPriorityTraitKey>> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<VStack<ForEach<[TNUIActionItemConfiguration], String, TNUIActionItemView>>, _PaddingLayout>, _TraitWritingModifier<LayoutPriorityTraitKey>> and conformance <> ModifiedContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyACyAA6VStackVyAA7ForEachVySay018ThreatNotificationB027TNUIActionItemConfigurationVGSSAH0jK4ViewVGGAA14_PaddingLayoutVGAA21_TraitWritingModifierVyAA0o8PriorityP3KeyVGGMd, &_s7SwiftUI15ModifiedContentVyACyAA6VStackVyAA7ForEachVySay018ThreatNotificationB027TNUIActionItemConfigurationVGSSAH0jK4ViewVGGAA14_PaddingLayoutVGAA21_TraitWritingModifierVyAA0o8PriorityP3KeyVGGMR);
    lazy protocol witness table accessor for type ModifiedContent<VStack<ForEach<[TNUIActionItemConfiguration], String, TNUIActionItemView>>, _PaddingLayout> and conformance <> ModifiedContent<A, B>();
    lazy protocol witness table accessor for type VStack<TupleView<(ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Button<ModifiedContent<Text, _FlexFrameLayout>>, _PaddingLayout>, _FlexFrameLayout>, _InsettableBackgroundShapeModifier<Color, RoundedRectangle>>, AccessibilityAttachmentModifier>, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Text, _EnvironmentKeyWritingModifier<TextAlignment>>, _EnvironmentKeyWritingModifier<Font?>>, _ForegroundStyleModifier<HierarchicalShapeStyle>>, _FlexFrameLayout>, _PaddingLayout>, AccessibilityAttachmentModifier>)>> and conformance VStack<A>(&lazy protocol witness table cache variable for type _TraitWritingModifier<LayoutPriorityTraitKey> and conformance _TraitWritingModifier<A>, &_s7SwiftUI21_TraitWritingModifierVyAA014LayoutPriorityC3KeyVGMd, &_s7SwiftUI21_TraitWritingModifierVyAA014LayoutPriorityC3KeyVGMR);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<VStack<ForEach<[TNUIActionItemConfiguration], String, TNUIActionItemView>>, _PaddingLayout>, _TraitWritingModifier<LayoutPriorityTraitKey>> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<VStack<ForEach<[TNUIActionItemConfiguration], String, TNUIActionItemView>>, _PaddingLayout> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<VStack<ForEach<[TNUIActionItemConfiguration], String, TNUIActionItemView>>, _PaddingLayout> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<VStack<ForEach<[TNUIActionItemConfiguration], String, TNUIActionItemView>>, _PaddingLayout> and conformance <> ModifiedContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyAA6VStackVyAA7ForEachVySay018ThreatNotificationB027TNUIActionItemConfigurationVGSSAH0jK4ViewVGGAA14_PaddingLayoutVGMd, &_s7SwiftUI15ModifiedContentVyAA6VStackVyAA7ForEachVySay018ThreatNotificationB027TNUIActionItemConfigurationVGSSAH0jK4ViewVGGAA14_PaddingLayoutVGMR);
    lazy protocol witness table accessor for type VStack<TupleView<(ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Button<ModifiedContent<Text, _FlexFrameLayout>>, _PaddingLayout>, _FlexFrameLayout>, _InsettableBackgroundShapeModifier<Color, RoundedRectangle>>, AccessibilityAttachmentModifier>, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Text, _EnvironmentKeyWritingModifier<TextAlignment>>, _EnvironmentKeyWritingModifier<Font?>>, _ForegroundStyleModifier<HierarchicalShapeStyle>>, _FlexFrameLayout>, _PaddingLayout>, AccessibilityAttachmentModifier>)>> and conformance VStack<A>(&lazy protocol witness table cache variable for type VStack<ForEach<[TNUIActionItemConfiguration], String, TNUIActionItemView>> and conformance VStack<A>, &_s7SwiftUI6VStackVyAA7ForEachVySay018ThreatNotificationB027TNUIActionItemConfigurationVGSSAF0hI4ViewVGGMd, "$5");
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<VStack<ForEach<[TNUIActionItemConfiguration], String, TNUIActionItemView>>, _PaddingLayout> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

uint64_t objectdestroyTm_0()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 40);

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t _s20ThreatNotificationUI13TNUIViewModelCAC7Combine16ObservableObjectAAWlTm_0(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t partial apply for closure #1 in closure #1 in closure #1 in TNUIActionItemContainerView.body.getter()
{
  v1 = *(type metadata accessor for TNUIActionItemConfiguration() - 8);
  v2 = *(v0 + 40);
  return (*(v0 + 32))(v0 + ((*(v1 + 80) + 48) & ~*(v1 + 80)));
}

uint64_t TNUIViewModel.__allocating_init(configuration:handler:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v7 = type metadata accessor for TNUIViewConfiguration();
  v8 = *(*(v7 - 8) + 64);
  v9 = MEMORY[0x28223BE20](v7);
  v11 = &v19 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v13 = &v19 - v12;
  v14 = *(v4 + 48);
  v15 = *(v4 + 52);
  v16 = swift_allocObject();
  v17 = v16 + OBJC_IVAR____TtC20ThreatNotificationUI13TNUIViewModel_handler;
  *(v16 + OBJC_IVAR____TtC20ThreatNotificationUI13TNUIViewModel_handler + 8) = 0;
  swift_unknownObjectWeakInit();
  outlined init with copy of TNUIViewConfiguration(a1, v13);
  swift_beginAccess();
  outlined init with copy of TNUIViewConfiguration(v13, v11);
  Published.init(initialValue:)();
  outlined destroy of TNUIViewConfiguration(v13);
  swift_endAccess();
  outlined destroy of TNUIViewConfiguration(a1);
  *(v17 + 8) = a3;
  swift_unknownObjectWeakAssign();
  swift_unknownObjectRelease();
  return v16;
}

uint64_t key path setter for TNUIViewModel.configuration : TNUIViewModel(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for TNUIViewConfiguration();
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v9 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  outlined init with copy of TNUIViewConfiguration(a1, v7);
  return (*(**a2 + 104))(v7);
}

uint64_t TNUIViewModel.configuration.getter()
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();
}

uint64_t TNUIViewModel.configuration.setter(uint64_t a1)
{
  v2 = type metadata accessor for TNUIViewConfiguration();
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = &v7 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_getKeyPath();
  swift_getKeyPath();
  outlined init with copy of TNUIViewConfiguration(a1, v5);

  static Published.subscript.setter();
  return outlined destroy of TNUIViewConfiguration(a1);
}

void (*TNUIViewModel.configuration.modify(uint64_t *a1))(void *a1)
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
  return TNUIViewModel.configuration.modify;
}

void TNUIViewModel.configuration.modify(void *a1)
{
  v1 = *a1;
  v2 = *(*a1 + 40);
  v3 = *(*a1 + 32);
  (*(*a1 + 48))(*a1, 0);

  free(v1);
}

uint64_t key path setter for TNUIViewModel.$configuration : TNUIViewModel(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVy20ThreatNotificationUI21TNUIViewConfigurationV_GMd, &_s7Combine9PublishedV9PublisherVy20ThreatNotificationUI21TNUIViewConfigurationV_GMR);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4);
  v7 = &v10 - v6;
  (*(v8 + 16))(&v10 - v6, a1);
  return (*(**a2 + 128))(v7);
}

uint64_t TNUIViewModel.$configuration.getter()
{
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVy20ThreatNotificationUI21TNUIViewConfigurationVGMd, &_s7Combine9PublishedVy20ThreatNotificationUI21TNUIViewConfigurationVGMR);
  Published.projectedValue.getter();
  return swift_endAccess();
}

uint64_t TNUIViewModel.$configuration.setter(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVy20ThreatNotificationUI21TNUIViewConfigurationV_GMd, &_s7Combine9PublishedV9PublisherVy20ThreatNotificationUI21TNUIViewConfigurationV_GMR);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  (*(v3 + 16))(&v7 - v5, a1, v2);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVy20ThreatNotificationUI21TNUIViewConfigurationVGMd, &_s7Combine9PublishedVy20ThreatNotificationUI21TNUIViewConfigurationVGMR);
  Published.projectedValue.setter();
  swift_endAccess();
  return (*(v3 + 8))(a1, v2);
}

void (*TNUIViewModel.$configuration.modify(uint64_t *a1))(uint64_t a1, char a2)
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
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVy20ThreatNotificationUI21TNUIViewConfigurationV_GMd, &_s7Combine9PublishedV9PublisherVy20ThreatNotificationUI21TNUIViewConfigurationV_GMR);
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

  v10 = OBJC_IVAR____TtC20ThreatNotificationUI13TNUIViewModel__configuration;
  v5[14] = v9;
  v5[15] = v10;
  swift_beginAccess();
  v5[16] = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVy20ThreatNotificationUI21TNUIViewConfigurationVGMd, &_s7Combine9PublishedVy20ThreatNotificationUI21TNUIViewConfigurationVGMR);
  Published.projectedValue.getter();
  swift_endAccess();
  return TNUIViewModel.$configuration.modify;
}

void TNUIViewModel.$configuration.modify(uint64_t a1, char a2)
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

uint64_t TNUIViewModel.identifier.getter()
{
  v1 = type metadata accessor for TNUIViewConfiguration();
  v2 = *(*(v1 - 8) + 64);
  v3 = MEMORY[0x28223BE20](v1 - 8);
  v5 = &v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(*v0 + 96))(v3);
  v6 = *v5;
  outlined destroy of TNUIViewConfiguration(v5);
  return v6;
}

uint64_t TNUIViewModel.init(configuration:handler:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for TNUIViewConfiguration();
  v7 = *(*(v6 - 8) + 64);
  v8 = MEMORY[0x28223BE20](v6);
  v10 = &v15 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v12 = &v15 - v11;
  v13 = v3 + OBJC_IVAR____TtC20ThreatNotificationUI13TNUIViewModel_handler;
  *(v3 + OBJC_IVAR____TtC20ThreatNotificationUI13TNUIViewModel_handler + 8) = 0;
  swift_unknownObjectWeakInit();
  outlined init with copy of TNUIViewConfiguration(a1, v12);
  swift_beginAccess();
  outlined init with copy of TNUIViewConfiguration(v12, v10);
  Published.init(initialValue:)();
  outlined destroy of TNUIViewConfiguration(v12);
  swift_endAccess();
  outlined destroy of TNUIViewConfiguration(a1);
  *(v13 + 8) = a3;
  swift_unknownObjectWeakAssign();
  swift_unknownObjectRelease();
  return v3;
}

uint64_t TNUIViewModel.handleAction(with:)(char *a1)
{
  v2 = *a1;
  v3 = v1 + OBJC_IVAR____TtC20ThreatNotificationUI13TNUIViewModel_handler;
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v5 = *(v3 + 8);
    ObjectType = swift_getObjectType();
    v7 = v2;
    (*(v5 + 8))(&v7, v1, ObjectType, v5);
    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t TNUIViewModel.deinit()
{
  v1 = OBJC_IVAR____TtC20ThreatNotificationUI13TNUIViewModel__configuration;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVy20ThreatNotificationUI21TNUIViewConfigurationVGMd, &_s7Combine9PublishedVy20ThreatNotificationUI21TNUIViewConfigurationVGMR);
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  outlined destroy of weak TNUIAccountRemoteUIDelegate?(v0 + OBJC_IVAR____TtC20ThreatNotificationUI13TNUIViewModel_handler);
  return v0;
}

uint64_t TNUIViewModel.__deallocating_deinit()
{
  v1 = OBJC_IVAR____TtC20ThreatNotificationUI13TNUIViewModel__configuration;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVy20ThreatNotificationUI21TNUIViewConfigurationVGMd, &_s7Combine9PublishedVy20ThreatNotificationUI21TNUIViewConfigurationVGMR);
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  outlined destroy of weak TNUIAccountRemoteUIDelegate?(v0 + OBJC_IVAR____TtC20ThreatNotificationUI13TNUIViewModel_handler);
  v3 = *(*v0 + 48);
  v4 = *(*v0 + 52);

  return MEMORY[0x2821FE8D8](v0, v3, v4);
}

uint64_t protocol witness for ObservableObject.objectWillChange.getter in conformance TNUIViewModel@<X0>(uint64_t *a1@<X8>)
{
  type metadata accessor for TNUIViewModel();
  result = ObservableObject<>.objectWillChange.getter();
  *a1 = result;
  return result;
}

uint64_t type metadata accessor for TNUIViewModel()
{
  result = type metadata singleton initialization cache for TNUIViewModel;
  if (!type metadata singleton initialization cache for TNUIViewModel)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void type metadata completion function for TNUIViewModel()
{
  type metadata accessor for Published<TNUIViewConfiguration>();
  if (v1 <= 0x3F)
  {
    v2 = *(v0 - 8) + 64;
    swift_updateClassMetadata2();
  }
}

void type metadata accessor for Published<TNUIViewConfiguration>()
{
  if (!lazy cache variable for type metadata for Published<TNUIViewConfiguration>)
  {
    type metadata accessor for TNUIViewConfiguration();
    v0 = type metadata accessor for Published();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for Published<TNUIViewConfiguration>);
    }
  }
}

_OWORD *static TNUIDependencyContainer.makeDefault(environment:ldmManager:)@<X0>(char *a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v5 = *a1;
  *a3 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSO_s8Sendable_pTt0g5Tf4g_n(MEMORY[0x277D84F90]);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s20ThreatNotificationUI20TNUIAccountProviding_pMd, &_s20ThreatNotificationUI20TNUIAccountProviding_pMR);
  v40 = type metadata accessor for TNUIAccountProvider();
  v41 = &protocol witness table for TNUIAccountProvider;
  v39[0] = swift_allocObject();
  v38 = v6;
  v37[0] = swift_allocObject();
  outlined init with copy of TNUIActivityIndicatorShowing(v39, v37[0] + 16);
  specialized Dictionary.subscript.setter(v37, v6);
  __swift_destroy_boxed_opaque_existential_0Tm(v39);
  v40 = &type metadata for TNUIDependencyContainer.Environment;
  LOBYTE(v39[0]) = v5;
  specialized Dictionary.subscript.setter(v39, &type metadata for TNUIDependencyContainer.Environment);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s22ThreatNotificationCore14TNCLDMManaging_pMd, &_s22ThreatNotificationCore14TNCLDMManaging_pMR);
  v40 = v7;
  v39[0] = swift_allocObject();
  outlined init with copy of TNUIActivityIndicatorShowing(a2, v39[0] + 16);
  specialized Dictionary.subscript.setter(v39, v7);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s22ThreatNotificationCore13TNCMCManaging_pMd, &_s22ThreatNotificationCore13TNCMCManaging_pMR);
  v9 = type metadata accessor for TNCMCManager();
  v10 = *(v9 + 48);
  v11 = *(v9 + 52);
  swift_allocObject();
  v12 = TNCMCManager.init()();
  v40 = v9;
  v41 = MEMORY[0x277D71440];
  v39[0] = v12;
  v38 = v8;
  v37[0] = swift_allocObject();
  outlined init with copy of TNUIActivityIndicatorShowing(v39, v37[0] + 16);
  specialized Dictionary.subscript.setter(v37, v8);
  __swift_destroy_boxed_opaque_existential_0Tm(v39);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s20ThreatNotificationUI08TNUIUserB8Managing_pMd, &_s20ThreatNotificationUI08TNUIUserB8Managing_pMR);
  v14 = type metadata accessor for TNUIUserNotificationManager();
  v15 = swift_allocObject();
  *(v15 + 16) = [objc_allocWithZone(MEMORY[0x277CE2028]) initWithBundleIdentifier_];
  v40 = v14;
  v41 = &protocol witness table for TNUIUserNotificationManager;
  v39[0] = v15;
  v38 = v13;
  v37[0] = swift_allocObject();
  outlined init with copy of TNUIActivityIndicatorShowing(v39, v37[0] + 16);
  specialized Dictionary.subscript.setter(v37, v13);
  __swift_destroy_boxed_opaque_existential_0Tm(v39);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s20ThreatNotificationUI28TNUIAccountRemoteUIProviding_pMd, &_s20ThreatNotificationUI28TNUIAccountRemoteUIProviding_pMR);
  v17 = type metadata accessor for TNUIAccountRemoteUIProvider();
  v18 = swift_allocObject();
  v40 = v17;
  v41 = &protocol witness table for TNUIAccountRemoteUIProvider;
  v39[0] = v18;
  v38 = v16;
  v37[0] = swift_allocObject();
  outlined init with copy of TNUIActivityIndicatorShowing(v39, v37[0] + 16);
  specialized Dictionary.subscript.setter(v37, v16);
  __swift_destroy_boxed_opaque_existential_0Tm(v39);
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s22ThreatNotificationCore12TNCKVStoring_pMd, &_s22ThreatNotificationCore12TNCKVStoring_pMR);
  v20 = type metadata accessor for TNCKVStorage();
  v21 = *(v20 + 48);
  v22 = *(v20 + 52);
  swift_allocObject();
  v23 = TNCKVStorage.init()();
  v40 = v20;
  v41 = MEMORY[0x277D71438];
  v39[0] = v23;
  v38 = v19;
  v37[0] = swift_allocObject();
  outlined init with copy of TNUIActivityIndicatorShowing(v39, v37[0] + 16);
  specialized Dictionary.subscript.setter(v37, v19);
  __swift_destroy_boxed_opaque_existential_0Tm(v39);
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s22ThreatNotificationCore22TNCFollowUpControlling_pMd, &_s22ThreatNotificationCore22TNCFollowUpControlling_pMR);
  v25 = *a3;
  _s20ThreatNotificationUI23TNUIDependencyContainerV10tryResolve4typexxm_tKs8SendableRzlF0aB4Core14TNCLDMManaging_p_Tt0B5(*a3, v39);
  _s20ThreatNotificationUI23TNUIDependencyContainerV10tryResolve4typexxm_tKs8SendableRzlF0aB4Core12TNCKVStoring_p_Tt0B5(v25, v37);
  v26 = type metadata accessor for TNCFollowUpController();
  v27 = *(v26 + 48);
  v28 = *(v26 + 52);
  swift_allocObject();
  v29 = TNCFollowUpController.init(ldmManager:storage:)();
  v40 = v26;
  v41 = MEMORY[0x277D71478];
  v39[0] = v29;
  v38 = v24;
  v37[0] = swift_allocObject();
  outlined init with copy of TNUIActivityIndicatorShowing(v39, v37[0] + 16);
  specialized Dictionary.subscript.setter(v37, v24);
  __swift_destroy_boxed_opaque_existential_0Tm(v39);
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s22ThreatNotificationCore24TNCOnBoardingControlling_pMd, &_s22ThreatNotificationCore24TNCOnBoardingControlling_pMR);
  v31 = *a3;
  _s20ThreatNotificationUI23TNUIDependencyContainerV10tryResolve4typexxm_tKs8SendableRzlF0aB4Core22TNCFollowUpControlling_p_Tt0B5(*a3, v39);
  _s20ThreatNotificationUI23TNUIDependencyContainerV10tryResolve4typexxm_tKs8SendableRzlF0aB4Core12TNCKVStoring_p_Tt0B5(v31, v37);
  v32 = type metadata accessor for TNCOnBoardingController();
  v33 = *(v32 + 48);
  v34 = *(v32 + 52);
  swift_allocObject();
  v35 = TNCOnBoardingController.init(followUpController:storage:)();
  v40 = v30;
  v39[0] = v35;
  v39[1] = MEMORY[0x277D71480];
  return specialized Dictionary.subscript.setter(v39, v30);
}

Swift::Int TNUIDependencyContainer.Environment.hashValue.getter()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  MEMORY[0x223D619F0](v1);
  return Hasher._finalize()();
}

ThreatNotificationUI::TNUIDependencyContainer __swiftcall TNUIDependencyContainer.init()()
{
  v1 = v0;
  result.dependencies._rawValue = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSO_s8Sendable_pTt0g5Tf4g_n(MEMORY[0x277D84F90]);
  v1->dependencies._rawValue = result.dependencies._rawValue;
  return result;
}

uint64_t static TNUIDependencyContainer.makeDefaultContainerForTesting()@<X0>(uint64_t *a1@<X8>)
{
  v8 = 0;
  v2 = type metadata accessor for TNCLDMManager();
  v3 = *(v2 + 48);
  v4 = *(v2 + 52);
  swift_allocObject();
  v5 = TNCLDMManager.init()();
  v7[3] = v2;
  v7[4] = MEMORY[0x277D71448];
  v7[0] = v5;
  static TNUIDependencyContainer.makeDefault(environment:ldmManager:)(&v8, v7, a1);
  return __swift_destroy_boxed_opaque_existential_0Tm(v7);
}

uint64_t TNUIDependencyContainer.register<A>(type:factory:)(uint64_t a1, void (*a2)(uint64_t *), uint64_t a3, uint64_t a4)
{
  v8 = *(a4 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](a1);
  v11 = v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14[0] = *v4;

  a2(v14);

  v14[3] = a4;
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v14);
  (*(v8 + 16))(boxed_opaque_existential_0, v11, a4);
  specialized Dictionary.subscript.setter(v14, a1);
  return (*(v8 + 8))(v11, a4);
}

uint64_t _s20ThreatNotificationUI23TNUIDependencyContainerV10tryResolve4typexxm_tKs8SendableRzlF0aB4Core14TNCLDMManaging_p_Tt0B5@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s22ThreatNotificationCore14TNCLDMManaging_pMd, &_s22ThreatNotificationCore14TNCLDMManaging_pMR);
  if (*(a1 + 16) && (v5 = specialized __RawDictionaryStorage.find<A>(_:)(v4), (v6 & 1) != 0))
  {
    outlined init with copy of Any(*(a1 + 56) + 32 * v5, v12);
  }

  else
  {
    memset(v12, 0, sizeof(v12));
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss8Sendable_pSgMd, &_ss8Sendable_pSgMR);
  if (swift_dynamicCast())
  {
    return _s20ThreatNotificationUI28TNUIAccountRemoteUIProviding_pWOb_0(v10, a2);
  }

  v11 = 0;
  memset(v10, 0, sizeof(v10));
  outlined destroy of CheckedContinuation<(), Error>?(v10, &_s22ThreatNotificationCore14TNCLDMManaging_pSgMd, &_s22ThreatNotificationCore14TNCLDMManaging_pSgMR);
  v8 = type metadata accessor for TNCError();
  lazy protocol witness table accessor for type TNCError and conformance TNCError();
  swift_allocError();
  *v9 = 0xD00000000000001CLL;
  v9[1] = 0x800000021E676AD0;
  (*(*(v8 - 8) + 104))(v9, *MEMORY[0x277D71488], v8);
  return swift_willThrow();
}

uint64_t _s20ThreatNotificationUI23TNUIDependencyContainerV10tryResolve4typexxm_tKs8SendableRzlF0aB4Core12TNCKVStoring_p_Tt0B5@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s22ThreatNotificationCore12TNCKVStoring_pMd, &_s22ThreatNotificationCore12TNCKVStoring_pMR);
  if (*(a1 + 16) && (v5 = specialized __RawDictionaryStorage.find<A>(_:)(v4), (v6 & 1) != 0))
  {
    outlined init with copy of Any(*(a1 + 56) + 32 * v5, v12);
  }

  else
  {
    memset(v12, 0, sizeof(v12));
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss8Sendable_pSgMd, &_ss8Sendable_pSgMR);
  if (swift_dynamicCast())
  {
    return _s20ThreatNotificationUI28TNUIAccountRemoteUIProviding_pWOb_0(v10, a2);
  }

  v11 = 0;
  memset(v10, 0, sizeof(v10));
  outlined destroy of CheckedContinuation<(), Error>?(v10, &_s22ThreatNotificationCore12TNCKVStoring_pSgMd, &_s22ThreatNotificationCore12TNCKVStoring_pSgMR);
  v8 = type metadata accessor for TNCError();
  lazy protocol witness table accessor for type TNCError and conformance TNCError();
  swift_allocError();
  *v9 = 0xD00000000000001CLL;
  v9[1] = 0x800000021E676AD0;
  (*(*(v8 - 8) + 104))(v9, *MEMORY[0x277D71488], v8);
  return swift_willThrow();
}

uint64_t _s20ThreatNotificationUI23TNUIDependencyContainerV10tryResolve4typexxm_tKs8SendableRzlF0aB4Core22TNCFollowUpControlling_p_Tt0B5@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s22ThreatNotificationCore22TNCFollowUpControlling_pMd, &_s22ThreatNotificationCore22TNCFollowUpControlling_pMR);
  if (*(a1 + 16) && (v5 = specialized __RawDictionaryStorage.find<A>(_:)(v4), (v6 & 1) != 0))
  {
    outlined init with copy of Any(*(a1 + 56) + 32 * v5, v12);
  }

  else
  {
    memset(v12, 0, sizeof(v12));
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss8Sendable_pSgMd, &_ss8Sendable_pSgMR);
  if (swift_dynamicCast())
  {
    return _s20ThreatNotificationUI28TNUIAccountRemoteUIProviding_pWOb_0(v10, a2);
  }

  v11 = 0;
  memset(v10, 0, sizeof(v10));
  outlined destroy of CheckedContinuation<(), Error>?(v10, &_s22ThreatNotificationCore22TNCFollowUpControlling_pSgMd, &_s22ThreatNotificationCore22TNCFollowUpControlling_pSgMR);
  v8 = type metadata accessor for TNCError();
  lazy protocol witness table accessor for type TNCError and conformance TNCError();
  swift_allocError();
  *v9 = 0xD00000000000001CLL;
  v9[1] = 0x800000021E676AD0;
  (*(*(v8 - 8) + 104))(v9, *MEMORY[0x277D71488], v8);
  return swift_willThrow();
}

uint64_t _s20ThreatNotificationUI23TNUIDependencyContainerV10tryResolve4typexxm_tKs8SendableRzlF0aB4Core24TNCOnBoardingControlling_p_Tt0B5(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s22ThreatNotificationCore24TNCOnBoardingControlling_pMd, &_s22ThreatNotificationCore24TNCOnBoardingControlling_pMR);
  if (*(a1 + 16) && (v3 = specialized __RawDictionaryStorage.find<A>(_:)(v2), (v4 & 1) != 0))
  {
    outlined init with copy of Any(*(a1 + 56) + 32 * v3, v9);
  }

  else
  {
    memset(v9, 0, sizeof(v9));
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss8Sendable_pSgMd, &_ss8Sendable_pSgMR);
  if (swift_dynamicCast())
  {
    return v8;
  }

  v6 = type metadata accessor for TNCError();
  lazy protocol witness table accessor for type TNCError and conformance TNCError();
  swift_allocError();
  *v7 = 0xD00000000000001CLL;
  v7[1] = 0x800000021E676AD0;
  (*(*(v6 - 8) + 104))(v7, *MEMORY[0x277D71488], v6);
  return swift_willThrow();
}

uint64_t _s20ThreatNotificationUI23TNUIDependencyContainerV10tryResolve4typexxm_tKs8SendableRzlF0aB4Core13TNCMCManaging_p_Tt0B5@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s22ThreatNotificationCore13TNCMCManaging_pMd, &_s22ThreatNotificationCore13TNCMCManaging_pMR);
  if (*(a1 + 16) && (v5 = specialized __RawDictionaryStorage.find<A>(_:)(v4), (v6 & 1) != 0))
  {
    outlined init with copy of Any(*(a1 + 56) + 32 * v5, v12);
  }

  else
  {
    memset(v12, 0, sizeof(v12));
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss8Sendable_pSgMd, &_ss8Sendable_pSgMR);
  if (swift_dynamicCast())
  {
    return _s20ThreatNotificationUI28TNUIAccountRemoteUIProviding_pWOb_0(v10, a2);
  }

  v11 = 0;
  memset(v10, 0, sizeof(v10));
  outlined destroy of CheckedContinuation<(), Error>?(v10, &_s22ThreatNotificationCore13TNCMCManaging_pSgMd, &_s22ThreatNotificationCore13TNCMCManaging_pSgMR);
  v8 = type metadata accessor for TNCError();
  lazy protocol witness table accessor for type TNCError and conformance TNCError();
  swift_allocError();
  *v9 = 0xD00000000000001CLL;
  v9[1] = 0x800000021E676AD0;
  (*(*(v8 - 8) + 104))(v9, *MEMORY[0x277D71488], v8);
  return swift_willThrow();
}

uint64_t _s20ThreatNotificationUI23TNUIDependencyContainerV10tryResolve4typexxm_tKs8SendableRzlFAC11EnvironmentO_Tt0B5@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  if (*(a1 + 16) && (v4 = specialized __RawDictionaryStorage.find<A>(_:)(&type metadata for TNUIDependencyContainer.Environment), (v5 & 1) != 0))
  {
    outlined init with copy of Any(*(a1 + 56) + 32 * v4, v9);
  }

  else
  {
    memset(v9, 0, sizeof(v9));
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss8Sendable_pSgMd, &_ss8Sendable_pSgMR);
  result = swift_dynamicCast();
  if (result)
  {
    *a2 = v10 & 1;
  }

  else
  {
    v7 = type metadata accessor for TNCError();
    lazy protocol witness table accessor for type TNCError and conformance TNCError();
    swift_allocError();
    *v8 = 0xD00000000000001CLL;
    v8[1] = 0x800000021E676AD0;
    (*(*(v7 - 8) + 104))(v8, *MEMORY[0x277D71488], v7);
    return swift_willThrow();
  }

  return result;
}

uint64_t _s20ThreatNotificationUI23TNUIDependencyContainerV10tryResolve4typexxm_tKs8SendableRzlFAA08TNUIUserB8Managing_p_Tt0B5@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s20ThreatNotificationUI08TNUIUserB8Managing_pMd, &_s20ThreatNotificationUI08TNUIUserB8Managing_pMR);
  if (*(a1 + 16) && (v5 = specialized __RawDictionaryStorage.find<A>(_:)(v4), (v6 & 1) != 0))
  {
    outlined init with copy of Any(*(a1 + 56) + 32 * v5, v12);
  }

  else
  {
    memset(v12, 0, sizeof(v12));
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss8Sendable_pSgMd, &_ss8Sendable_pSgMR);
  if (swift_dynamicCast())
  {
    return _s20ThreatNotificationUI28TNUIAccountRemoteUIProviding_pWOb_0(v10, a2);
  }

  v11 = 0;
  memset(v10, 0, sizeof(v10));
  outlined destroy of CheckedContinuation<(), Error>?(v10, &_s20ThreatNotificationUI08TNUIUserB8Managing_pSgMd, &_s20ThreatNotificationUI08TNUIUserB8Managing_pSgMR);
  v8 = type metadata accessor for TNCError();
  lazy protocol witness table accessor for type TNCError and conformance TNCError();
  swift_allocError();
  *v9 = 0xD00000000000001CLL;
  v9[1] = 0x800000021E676AD0;
  (*(*(v8 - 8) + 104))(v9, *MEMORY[0x277D71488], v8);
  return swift_willThrow();
}

uint64_t _s20ThreatNotificationUI23TNUIDependencyContainerV10tryResolve4typexxm_tKs8SendableRzlFAA20TNUIAccountProviding_p_Tt0B5@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s20ThreatNotificationUI20TNUIAccountProviding_pMd, &_s20ThreatNotificationUI20TNUIAccountProviding_pMR);
  if (*(a1 + 16) && (v5 = specialized __RawDictionaryStorage.find<A>(_:)(v4), (v6 & 1) != 0))
  {
    outlined init with copy of Any(*(a1 + 56) + 32 * v5, v12);
  }

  else
  {
    memset(v12, 0, sizeof(v12));
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss8Sendable_pSgMd, &_ss8Sendable_pSgMR);
  if (swift_dynamicCast())
  {
    return _s20ThreatNotificationUI28TNUIAccountRemoteUIProviding_pWOb_0(v10, a2);
  }

  v11 = 0;
  memset(v10, 0, sizeof(v10));
  outlined destroy of CheckedContinuation<(), Error>?(v10, &_s20ThreatNotificationUI20TNUIAccountProviding_pSgMd, &_s20ThreatNotificationUI20TNUIAccountProviding_pSgMR);
  v8 = type metadata accessor for TNCError();
  lazy protocol witness table accessor for type TNCError and conformance TNCError();
  swift_allocError();
  *v9 = 0xD00000000000001CLL;
  v9[1] = 0x800000021E676AD0;
  (*(*(v8 - 8) + 104))(v9, *MEMORY[0x277D71488], v8);
  return swift_willThrow();
}

uint64_t _s20ThreatNotificationUI23TNUIDependencyContainerV10tryResolve4typexxm_tKs8SendableRzlFAA28TNUIAccountRemoteUIProviding_p_Tt0B5@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s20ThreatNotificationUI28TNUIAccountRemoteUIProviding_pMd, &_s20ThreatNotificationUI28TNUIAccountRemoteUIProviding_pMR);
  if (*(a1 + 16) && (v5 = specialized __RawDictionaryStorage.find<A>(_:)(v4), (v6 & 1) != 0))
  {
    outlined init with copy of Any(*(a1 + 56) + 32 * v5, v12);
  }

  else
  {
    memset(v12, 0, sizeof(v12));
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss8Sendable_pSgMd, &_ss8Sendable_pSgMR);
  if (swift_dynamicCast())
  {
    return _s20ThreatNotificationUI28TNUIAccountRemoteUIProviding_pWOb_0(v10, a2);
  }

  v11 = 0;
  memset(v10, 0, sizeof(v10));
  outlined destroy of CheckedContinuation<(), Error>?(v10, &_s20ThreatNotificationUI28TNUIAccountRemoteUIProviding_pSgMd, &_s20ThreatNotificationUI28TNUIAccountRemoteUIProviding_pSgMR);
  v8 = type metadata accessor for TNCError();
  lazy protocol witness table accessor for type TNCError and conformance TNCError();
  swift_allocError();
  *v9 = 0xD00000000000001CLL;
  v9[1] = 0x800000021E676AD0;
  (*(*(v8 - 8) + 104))(v9, *MEMORY[0x277D71488], v8);
  return swift_willThrow();
}

uint64_t TNUIDependencyContainer.tryResolve<A>(type:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v7 = type metadata accessor for Optional();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  v11 = v21 - v10;
  v12 = *v3;
  if (*(v12 + 16) && (v13 = specialized __RawDictionaryStorage.find<A>(_:)(a1), (v14 & 1) != 0))
  {
    outlined init with copy of Any(*(v12 + 56) + 32 * v13, v21);
  }

  else
  {
    memset(v21, 0, sizeof(v21));
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss8Sendable_pSgMd, &_ss8Sendable_pSgMR);
  v15 = swift_dynamicCast();
  v16 = *(*(a2 - 8) + 56);
  if (v15)
  {
    v17 = *(a2 - 8);
    v16(v11, 0, 1, a2);
    return (*(v17 + 32))(a3, v11, a2);
  }

  else
  {
    v16(v11, 1, 1, a2);
    (*(v8 + 8))(v11, v7);
    v19 = type metadata accessor for TNCError();
    lazy protocol witness table accessor for type TNCError and conformance TNCError();
    swift_allocError();
    *v20 = 0xD00000000000001CLL;
    v20[1] = 0x800000021E676AD0;
    (*(*(v19 - 8) + 104))(v20, *MEMORY[0x277D71488], v19);
    return swift_willThrow();
  }
}

unint64_t lazy protocol witness table accessor for type TNCError and conformance TNCError()
{
  result = lazy protocol witness table cache variable for type TNCError and conformance TNCError;
  if (!lazy protocol witness table cache variable for type TNCError and conformance TNCError)
  {
    type metadata accessor for TNCError();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type TNCError and conformance TNCError);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type TNUIDependencyContainer.Environment and conformance TNUIDependencyContainer.Environment()
{
  result = lazy protocol witness table cache variable for type TNUIDependencyContainer.Environment and conformance TNUIDependencyContainer.Environment;
  if (!lazy protocol witness table cache variable for type TNUIDependencyContainer.Environment and conformance TNUIDependencyContainer.Environment)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type TNUIDependencyContainer.Environment and conformance TNUIDependencyContainer.Environment);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for TNUIDependencyContainer(uint64_t *a1, int a2)
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

uint64_t storeEnumTagSinglePayload for TNUIDependencyContainer(uint64_t result, int a2, int a3)
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

uint64_t static Color.sheetBackground(for:)(uint64_t a1)
{
  v2 = type metadata accessor for ColorScheme();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v16 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v3 + 16))(v6, a1, v2);
  v7 = (*(v3 + 88))(v6, v2);
  if (v7 == *MEMORY[0x277CDF3D0])
  {
    v8 = [objc_opt_self() systemBackgroundColor];
LABEL_5:
    v12 = v8;
    return Color.init(uiColor:)();
  }

  v9 = v7;
  v10 = *MEMORY[0x277CDF3C0];
  v11 = objc_opt_self();
  if (v9 == v10)
  {
    v8 = [v11 secondarySystemBackgroundColor];
    goto LABEL_5;
  }

  v14 = [v11 systemBackgroundColor];
  v15 = Color.init(uiColor:)();
  (*(v3 + 8))(v6, v2);
  return v15;
}

uint64_t static Color.secondarySystemBackground.getter(SEL *a1)
{
  v1 = [objc_opt_self() *a1];

  return Color.init(uiColor:)();
}

uint64_t TNUILDMEnabledViewModel.__allocating_init(notificationDate:mcManager:handler:)(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4)
{
  v9 = *(v4 + 48);
  v10 = *(v4 + 52);
  swift_allocObject();
  v11 = specialized TNUILDMEnabledViewModel.init(notificationDate:mcManager:handler:)(a1, a2, a3, a4);
  swift_unknownObjectRelease();
  return v11;
}

uint64_t TNUILDMEnabledViewModel.init(notificationDate:mcManager:handler:)(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4)
{
  v4 = specialized TNUILDMEnabledViewModel.init(notificationDate:mcManager:handler:)(a1, a2, a3, a4);
  swift_unknownObjectRelease();
  return v4;
}

uint64_t TNUILDMEnabledViewModel.__ivar_destroyer()
{
  outlined destroy of Date?(v0 + OBJC_IVAR____TtC20ThreatNotificationUI23TNUILDMEnabledViewModel_notificationDate);
  v1 = (v0 + OBJC_IVAR____TtC20ThreatNotificationUI23TNUILDMEnabledViewModel_mcManager);

  return __swift_destroy_boxed_opaque_existential_0Tm(v1);
}

uint64_t TNUILDMEnabledViewModel.deinit()
{
  v1 = OBJC_IVAR____TtC20ThreatNotificationUI13TNUIViewModel__configuration;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVy20ThreatNotificationUI21TNUIViewConfigurationVGMd, &_s7Combine9PublishedVy20ThreatNotificationUI21TNUIViewConfigurationVGMR);
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  outlined destroy of weak TNUIAccountRemoteUIDelegate?(v0 + OBJC_IVAR____TtC20ThreatNotificationUI13TNUIViewModel_handler);
  outlined destroy of Date?(v0 + OBJC_IVAR____TtC20ThreatNotificationUI23TNUILDMEnabledViewModel_notificationDate);
  __swift_destroy_boxed_opaque_existential_0Tm((v0 + OBJC_IVAR____TtC20ThreatNotificationUI23TNUILDMEnabledViewModel_mcManager));
  return v0;
}

uint64_t TNUILDMEnabledViewModel.__deallocating_deinit()
{
  v1 = OBJC_IVAR____TtC20ThreatNotificationUI13TNUIViewModel__configuration;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVy20ThreatNotificationUI21TNUIViewConfigurationVGMd, &_s7Combine9PublishedVy20ThreatNotificationUI21TNUIViewConfigurationVGMR);
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  outlined destroy of weak TNUIAccountRemoteUIDelegate?(v0 + OBJC_IVAR____TtC20ThreatNotificationUI13TNUIViewModel_handler);
  v3 = OBJC_IVAR____TtC20ThreatNotificationUI23TNUILDMEnabledViewModel_notificationDate;

  outlined destroy of Date?(v0 + v3);
  __swift_destroy_boxed_opaque_existential_0Tm((v0 + OBJC_IVAR____TtC20ThreatNotificationUI23TNUILDMEnabledViewModel_mcManager));

  v4 = *(*v0 + 48);
  v5 = *(*v0 + 52);

  return MEMORY[0x2821FE8D8](v0, v4, v5);
}

Swift::Void __swiftcall TNUILDMEnabledViewModel.diagnosticsSharingEnabledDidChange(_:)(Swift::Bool a1)
{
  v2 = type metadata accessor for TNUIViewConfiguration();
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = &v10 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = OBJC_IVAR____TtC20ThreatNotificationUI23TNUILDMEnabledViewModel_notificationDate;
  v7 = *(v1 + OBJC_IVAR____TtC20ThreatNotificationUI23TNUILDMEnabledViewModel_mcManager + 32);
  __swift_project_boxed_opaque_existential_0((v1 + OBJC_IVAR____TtC20ThreatNotificationUI23TNUILDMEnabledViewModel_mcManager), *(v1 + OBJC_IVAR____TtC20ThreatNotificationUI23TNUILDMEnabledViewModel_mcManager + 24));
  v8 = dispatch thunk of TNCMCManaging.isDiagnosticsSharingEnabled.getter();
  v9 = static TNUIViewConfiguration.lockDownModeTurnedOn(notificationDate:shareAnalytics:)(v1 + v6, (v8 & 1) == 0, v5);
  (*(*v1 + 104))(v5, v9);
}

uint64_t protocol witness for TNCMCManagerObserver.diagnosticsSharingEnabledDidChange(_:) in conformance TNUILDMEnabledViewModel()
{
  v1 = type metadata accessor for TNUIViewConfiguration();
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x28223BE20](v1 - 8);
  v4 = &v10 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = OBJC_IVAR____TtC20ThreatNotificationUI23TNUILDMEnabledViewModel_notificationDate;
  v6 = *(v0 + OBJC_IVAR____TtC20ThreatNotificationUI23TNUILDMEnabledViewModel_mcManager + 32);
  __swift_project_boxed_opaque_existential_0((v0 + OBJC_IVAR____TtC20ThreatNotificationUI23TNUILDMEnabledViewModel_mcManager), *(v0 + OBJC_IVAR____TtC20ThreatNotificationUI23TNUILDMEnabledViewModel_mcManager + 24));
  v7 = dispatch thunk of TNCMCManaging.isDiagnosticsSharingEnabled.getter();
  v8 = static TNUIViewConfiguration.lockDownModeTurnedOn(notificationDate:shareAnalytics:)(v0 + v5, (v7 & 1) == 0, v4);
  return (*(*v0 + 104))(v4, v8);
}

uint64_t specialized TNUILDMEnabledViewModel.init(notificationDate:mcManager:handler:)(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v23 = a4;
  v22 = type metadata accessor for TNUIViewConfiguration();
  v8 = *(*(v22 - 8) + 64);
  v9 = MEMORY[0x28223BE20](v22);
  v11 = &v21 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x28223BE20](v9);
  v14 = &v21 - v13;
  MEMORY[0x28223BE20](v12);
  v16 = &v21 - v15;
  outlined init with copy of TNUIActivityIndicatorShowing(a2, v4 + OBJC_IVAR____TtC20ThreatNotificationUI23TNUILDMEnabledViewModel_mcManager);
  outlined init with copy of Date?(a1, v4 + OBJC_IVAR____TtC20ThreatNotificationUI23TNUILDMEnabledViewModel_notificationDate);
  v17 = a2[4];
  __swift_project_boxed_opaque_existential_0(a2, a2[3]);
  v18 = dispatch thunk of TNCMCManaging.isDiagnosticsSharingEnabled.getter();
  static TNUIViewConfiguration.lockDownModeTurnedOn(notificationDate:shareAnalytics:)(a1, (v18 & 1) == 0, v16);
  v19 = v4 + OBJC_IVAR____TtC20ThreatNotificationUI13TNUIViewModel_handler;
  *(v19 + 8) = 0;
  swift_unknownObjectWeakInit();
  outlined init with copy of TNUIViewConfiguration(v16, v14);
  swift_beginAccess();
  outlined init with copy of TNUIViewConfiguration(v14, v11);
  swift_unknownObjectRetain();
  Published.init(initialValue:)();
  outlined destroy of TNUIViewConfiguration(v14);
  swift_endAccess();
  outlined destroy of TNUIViewConfiguration(v16);
  *(v19 + 8) = v23;
  swift_unknownObjectWeakAssign();
  swift_unknownObjectRelease();
  outlined init with copy of TNUIActivityIndicatorShowing(v5 + OBJC_IVAR____TtC20ThreatNotificationUI23TNUILDMEnabledViewModel_mcManager, v24);
  __swift_project_boxed_opaque_existential_0(v24, v24[3]);
  lazy protocol witness table accessor for type TNUILDMEnabledViewModel and conformance TNUILDMEnabledViewModel();

  dispatch thunk of TNCMCManaging.addObserver(_:)();

  outlined destroy of Date?(a1);
  __swift_destroy_boxed_opaque_existential_0Tm(v24);
  __swift_destroy_boxed_opaque_existential_0Tm(a2);
  return v5;
}

uint64_t outlined destroy of Date?(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t type metadata accessor for TNUILDMEnabledViewModel()
{
  result = type metadata singleton initialization cache for TNUILDMEnabledViewModel;
  if (!type metadata singleton initialization cache for TNUILDMEnabledViewModel)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void type metadata completion function for TNUILDMEnabledViewModel()
{
  type metadata accessor for Date?();
  if (v1 <= 0x3F)
  {
    v2 = *(v0 - 8) + 64;
    swift_updateClassMetadata2();
  }
}

void type metadata accessor for Date?()
{
  if (!lazy cache variable for type metadata for Date?)
  {
    type metadata accessor for Date();
    v0 = type metadata accessor for Optional();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for Date?);
    }
  }
}

uint64_t outlined init with copy of Date?(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t lazy protocol witness table accessor for type TNUILDMEnabledViewModel and conformance TNUILDMEnabledViewModel()
{
  result = lazy protocol witness table cache variable for type TNUILDMEnabledViewModel and conformance TNUILDMEnabledViewModel;
  if (!lazy protocol witness table cache variable for type TNUILDMEnabledViewModel and conformance TNUILDMEnabledViewModel)
  {
    type metadata accessor for TNUILDMEnabledViewModel();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type TNUILDMEnabledViewModel and conformance TNUILDMEnabledViewModel);
  }

  return result;
}

ThreatNotificationUI::TNUIAnalyticsEvent::Payload __swiftcall TNUIAnalyticsEvent.payload(with:)(ThreatNotificationUI::TNUIDependencyContainer with)
{
  v2 = specialized TNUIAnalyticsEvent.payload(with:)(with.dependencies._rawValue, v1);
  result.elapsedTime = v4;
  result.type = v2;
  result.ldmEnabled = v5;
  result.analyticsEnabled = v3;
  return result;
}

unint64_t TNUIAnalyticsEvent.Payload.caPayload.getter(uint64_t a1, char a2, uint64_t a3, char a4)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_So8NSObjectCtGMd, &_ss23_ContiguousArrayStorageCySS_So8NSObjectCtGMR);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_21E675720;
  *(inited + 32) = 1701869940;
  *(inited + 40) = 0xE400000000000000;
  *(inited + 48) = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithInteger_];
  *(inited + 56) = 0xD000000000000010;
  *(inited + 64) = 0x800000021E676BA0;
  *(inited + 72) = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithBool_];
  *(inited + 80) = 0x5464657370616C65;
  *(inited + 88) = 0xEB00000000656D69;
  *(inited + 96) = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithInteger_];
  *(inited + 104) = 0x6C62616E456D646CLL;
  *(inited + 112) = 0xEA00000000006465;
  *(inited + 120) = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithBool_];
  v9 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_So8NSObjectCTt0g5Tf4g_n(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSS_So8NSObjectCtMd, &_sSS_So8NSObjectCtMR);
  swift_arrayDestroy();
  return v9;
}

uint64_t TNUIAnalyticsEvent.EventType.identifier.getter(char a1)
{
  if ((a1 - 2) < 6u)
  {
    return qword_21E6759B8[(a1 - 2)];
  }

  if (a1)
  {
    return 2;
  }

  return 3;
}

uint64_t TNUIAnalyticsEvent.EventType.description.getter(unsigned __int8 a1)
{
  if (a1 > 4u)
  {
    if (a1 == 5)
    {
      return 0x62616E45204D444CLL;
    }

    if (a1 != 6)
    {
      if (a1 == 7)
      {
        return 0xD00000000000002BLL;
      }

      return 0xD000000000000011;
    }

    return 0xD00000000000001ALL;
  }

  else
  {
    if (a1 == 2)
    {
      return 0x6E65704F20554643;
    }

    if (a1 != 3)
    {
      if (a1 == 4)
      {
        return 0xD00000000000001BLL;
      }

      return 0xD000000000000011;
    }

    return 0x6563655220554643;
  }
}

uint64_t static TNUIAnalyticsEvent.Payload.== infix(_:_:)(uint64_t a1, int a2, uint64_t a3, int a4, uint64_t a5, int a6, uint64_t a7, int a8)
{
  v8 = (a1 == a5) & ~(a2 ^ a6);
  if (a3 != a7)
  {
    v8 = 0;
  }

  return v8 & (a4 ^ a8 ^ 1u);
}

unint64_t protocol witness for CodingKey.stringValue.getter in conformance TNUIAnalyticsEvent.Payload.CodingKeys()
{
  v1 = 1701869940;
  v2 = 0x5464657370616C65;
  if (*v0 != 2)
  {
    v2 = 0x6C62616E456D646CLL;
  }

  if (*v0)
  {
    v1 = 0xD000000000000010;
  }

  if (*v0 <= 1u)
  {
    return v1;
  }

  else
  {
    return v2;
  }
}

uint64_t protocol witness for CodingKey.init(stringValue:) in conformance TNUIAnalyticsEvent.Payload.CodingKeys@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = specialized TNUIAnalyticsEvent.Payload.CodingKeys.init(stringValue:)(a1, a2);
  *a3 = result;
  return result;
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance TNUIAnalyticsEvent.Payload.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type TNUIAnalyticsEvent.Payload.CodingKeys and conformance TNUIAnalyticsEvent.Payload.CodingKeys();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance TNUIAnalyticsEvent.Payload.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type TNUIAnalyticsEvent.Payload.CodingKeys and conformance TNUIAnalyticsEvent.Payload.CodingKeys();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t TNUIAnalyticsEvent.Payload.encode(to:)(void *a1, uint64_t a2, int a3, uint64_t a4, int a5)
{
  v14[3] = a5;
  v14[6] = a3;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy20ThreatNotificationUI18TNUIAnalyticsEventV7PayloadV10CodingKeys33_F13E2C5F9947DB4153C696A21A07186CLLOGMd, &_ss22KeyedEncodingContainerVy20ThreatNotificationUI18TNUIAnalyticsEventV7PayloadV10CodingKeys33_F13E2C5F9947DB4153C696A21A07186CLLOGMR);
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  v11 = v14 - v10;
  v12 = a1[4];
  __swift_project_boxed_opaque_existential_0(a1, a1[3]);
  lazy protocol witness table accessor for type TNUIAnalyticsEvent.Payload.CodingKeys and conformance TNUIAnalyticsEvent.Payload.CodingKeys();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v18 = 0;
  KeyedEncodingContainer.encode(_:forKey:)();
  if (v5)
  {
    return (*(v8 + 8))(v11, v7);
  }

  v17 = 1;
  KeyedEncodingContainer.encode(_:forKey:)();
  v16 = 2;
  KeyedEncodingContainer.encode(_:forKey:)();
  v15 = 3;
  KeyedEncodingContainer.encode(_:forKey:)();
  return (*(v8 + 8))(v11, v7);
}

uint64_t TNUIAnalyticsEvent.Payload.init(from:)(uint64_t *a1)
{
  result = specialized TNUIAnalyticsEvent.Payload.init(from:)(a1);
  if (v1)
  {
    return v3;
  }

  return result;
}

ThreatNotificationUI::TNUIAnalyticsEvent::Payload __swiftcall TNUIAnalyticsEvent.Payload.init(type:analyticsEnabled:elapsedTime:ldmEnabled:)(Swift::Int type, Swift::Bool analyticsEnabled, Swift::Int elapsedTime, Swift::Bool ldmEnabled)
{
  v4 = analyticsEnabled;
  v5 = ldmEnabled;
  result.elapsedTime = elapsedTime;
  result.type = type;
  result.ldmEnabled = v5;
  result.analyticsEnabled = v4;
  return result;
}

uint64_t protocol witness for Decodable.init(from:) in conformance TNUIAnalyticsEvent.Payload@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  result = specialized TNUIAnalyticsEvent.Payload.init(from:)(a1);
  if (!v2)
  {
    *a2 = result;
    *(a2 + 8) = v5 & 1;
    *(a2 + 16) = v6;
    *(a2 + 24) = v7 & 1;
  }

  return result;
}

uint64_t protocol witness for static Equatable.== infix(_:_:) in conformance TNUIAnalyticsEvent.Payload(uint64_t a1, uint64_t a2)
{
  v2 = 0;
  if (*a1 == *a2 && ((*(a1 + 8) ^ *(a2 + 8)) & 1) == 0 && *(a1 + 16) == *(a2 + 16))
  {
    v2 = *(a2 + 24) ^ *(a1 + 24) ^ 1;
  }

  return v2 & 1;
}

uint64_t specialized TNUIAnalyticsEvent.description.getter(unsigned __int8 a1)
{
  if (a1 > 4u)
  {
    if (a1 == 5)
    {
      return 0x62616E45204D444CLL;
    }

    if (a1 != 6)
    {
      if (a1 == 7)
      {
        return 0xD00000000000002BLL;
      }

      return 0xD000000000000011;
    }

    return 0xD00000000000001ALL;
  }

  else
  {
    if (a1 == 2)
    {
      return 0x6E65704F20554643;
    }

    if (a1 != 3)
    {
      if (a1 == 4)
      {
        return 0xD00000000000001BLL;
      }

      return 0xD000000000000011;
    }

    return 0x6563655220554643;
  }
}

uint64_t specialized TNUIAnalyticsEvent.payload(with:)(uint64_t *a1, char a2)
{
  v4 = type metadata accessor for Date();
  v22 = *(v4 - 8);
  v23 = v4;
  v5 = *(v22 + 64);
  MEMORY[0x28223BE20](v4);
  v7 = &v22 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for TNCStorageKey();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  v12 = &v22 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *a1;
  if ((a2 - 2) >= 6u)
  {
    if (a2)
    {
      v14 = 2;
    }

    else
    {
      v14 = 3;
    }
  }

  else
  {
    v14 = qword_21E6759B8[(a2 - 2)];
  }

  _s20ThreatNotificationUI23TNUIDependencyContainerV10tryResolve4typexxm_tKs8SendableRzlF0aB4Core13TNCMCManaging_p_Tt0B5(*a1, v27);
  v24 = v14;
  __swift_project_boxed_opaque_existential_0(v27, v27[3]);
  dispatch thunk of TNCMCManaging.isDiagnosticsSharingEnabled.getter();
  _s20ThreatNotificationUI23TNUIDependencyContainerV10tryResolve4typexxm_tKs8SendableRzlF0aB4Core12TNCKVStoring_p_Tt0B5(v13, v25);
  __swift_project_boxed_opaque_existential_0(v25, v26);
  (*(v9 + 104))(v12, *MEMORY[0x277D71450], v8);
  v15 = COERCE_DOUBLE(dispatch thunk of TNCKVStoring.timeInterval(for:)());
  v17 = v16;
  (*(v9 + 8))(v12, v8);
  v18 = -1.0;
  if ((v17 & 1) == 0)
  {
    static Date.now.getter();
    Date.timeIntervalSince1970.getter();
    v20 = v19;
    (*(v22 + 8))(v7, v23);
    v18 = floor((v20 - v15) / 86400.0) * 86400.0;
  }

  __swift_destroy_boxed_opaque_existential_0Tm(v25);
  if ((*&v18 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_13;
  }

  if (v18 <= -9.22337204e18)
  {
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  if (v18 < 9.22337204e18)
  {
    _s20ThreatNotificationUI23TNUIDependencyContainerV10tryResolve4typexxm_tKs8SendableRzlF0aB4Core14TNCLDMManaging_p_Tt0B5(v13, v25);
    __swift_project_boxed_opaque_existential_0(v25, v26);
    dispatch thunk of TNCLDMManaging.isEnabled.getter();
    __swift_destroy_boxed_opaque_existential_0Tm(v25);
    __swift_destroy_boxed_opaque_existential_0Tm(v27);
    return v24;
  }

LABEL_14:
  __break(1u);
  swift_unexpectedError();
  __break(1u);
  swift_unexpectedError();
  __break(1u);
  result = swift_unexpectedError();
  __break(1u);
  return result;
}

unint64_t lazy protocol witness table accessor for type TNUIAnalyticsEvent.Payload.CodingKeys and conformance TNUIAnalyticsEvent.Payload.CodingKeys()
{
  result = lazy protocol witness table cache variable for type TNUIAnalyticsEvent.Payload.CodingKeys and conformance TNUIAnalyticsEvent.Payload.CodingKeys;
  if (!lazy protocol witness table cache variable for type TNUIAnalyticsEvent.Payload.CodingKeys and conformance TNUIAnalyticsEvent.Payload.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type TNUIAnalyticsEvent.Payload.CodingKeys and conformance TNUIAnalyticsEvent.Payload.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type TNUIAnalyticsEvent.Payload.CodingKeys and conformance TNUIAnalyticsEvent.Payload.CodingKeys;
  if (!lazy protocol witness table cache variable for type TNUIAnalyticsEvent.Payload.CodingKeys and conformance TNUIAnalyticsEvent.Payload.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type TNUIAnalyticsEvent.Payload.CodingKeys and conformance TNUIAnalyticsEvent.Payload.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type TNUIAnalyticsEvent.Payload.CodingKeys and conformance TNUIAnalyticsEvent.Payload.CodingKeys;
  if (!lazy protocol witness table cache variable for type TNUIAnalyticsEvent.Payload.CodingKeys and conformance TNUIAnalyticsEvent.Payload.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type TNUIAnalyticsEvent.Payload.CodingKeys and conformance TNUIAnalyticsEvent.Payload.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type TNUIAnalyticsEvent.Payload.CodingKeys and conformance TNUIAnalyticsEvent.Payload.CodingKeys;
  if (!lazy protocol witness table cache variable for type TNUIAnalyticsEvent.Payload.CodingKeys and conformance TNUIAnalyticsEvent.Payload.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type TNUIAnalyticsEvent.Payload.CodingKeys and conformance TNUIAnalyticsEvent.Payload.CodingKeys);
  }

  return result;
}

uint64_t specialized TNUIAnalyticsEvent.Payload.CodingKeys.init(stringValue:)(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 1701869940 && a2 == 0xE400000000000000;
  if (v3 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD000000000000010 && 0x800000021E676BA0 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x5464657370616C65 && a2 == 0xEB00000000656D69 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x6C62616E456D646CLL && a2 == 0xEA00000000006465)
  {

    return 3;
  }

  else
  {
    v6 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v6)
    {
      return 3;
    }

    else
    {
      return 4;
    }
  }
}

uint64_t specialized TNUIAnalyticsEvent.Payload.init(from:)(uint64_t *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy20ThreatNotificationUI18TNUIAnalyticsEventV7PayloadV10CodingKeys33_F13E2C5F9947DB4153C696A21A07186CLLOGMd, &_ss22KeyedDecodingContainerVy20ThreatNotificationUI18TNUIAnalyticsEventV7PayloadV10CodingKeys33_F13E2C5F9947DB4153C696A21A07186CLLOGMR);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v10 - v5;
  v7 = a1[4];
  __swift_project_boxed_opaque_existential_0(a1, a1[3]);
  lazy protocol witness table accessor for type TNUIAnalyticsEvent.Payload.CodingKeys and conformance TNUIAnalyticsEvent.Payload.CodingKeys();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  v14 = 0;
  v8 = KeyedDecodingContainer.decode(_:forKey:)();
  v13 = 1;
  KeyedDecodingContainer.decode(_:forKey:)();
  v12 = 2;
  KeyedDecodingContainer.decode(_:forKey:)();
  v11 = 3;
  KeyedDecodingContainer.decode(_:forKey:)();
  (*(v3 + 8))(v6, v2);
  __swift_destroy_boxed_opaque_existential_0Tm(a1);
  return v8;
}

__n128 __swift_memcpy17_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u8[0] = a2[1].n128_u8[0];
  *a1 = result;
  return result;
}

uint64_t getEnumTagSinglePayload for TNUIAnalyticsEvent(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 17))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 8);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t storeEnumTagSinglePayload for TNUIAnalyticsEvent(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 16) = 0;
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 17) = 1;
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

    *(result + 17) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for TNUIAnalyticsEvent.EventType(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF9)
  {
    goto LABEL_19;
  }

  v2 = a2 + 7;
  if (a2 + 7 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if (v2 >> 8 < 0xFF)
  {
    v3 = 1;
  }

  if (v2 >= 0x100)
  {
    v4 = v3;
  }

  else
  {
    v4 = 0;
  }

  if (v4 > 1)
  {
    if (v4 == 2)
    {
      v5 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_19;
      }
    }

    else
    {
      v5 = *(a1 + 1);
      if (!v5)
      {
        goto LABEL_19;
      }
    }

    return (*a1 | (v5 << 8)) - 7;
  }

  if (v4)
  {
    v5 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v5 << 8)) - 7;
    }
  }

LABEL_19:
  v7 = *a1;
  if (*a1 < 2u)
  {
    return 0;
  }

  v8 = (v7 & 0xFE) + 2147483646;
  if ((v8 & 0x7FFFFFFEu) <= 5)
  {
    return 0;
  }

  return (v8 & 0x7FFFFFFE | v7 & 1u) - 5;
}

uint64_t storeEnumTagSinglePayload for TNUIAnalyticsEvent.EventType(uint64_t result, unsigned int a2, unsigned int a3)
{
  v3 = a3 + 7;
  if (a3 + 7 >= 0xFFFF00)
  {
    v4 = 4;
  }

  else
  {
    v4 = 2;
  }

  if (v3 >> 8 < 0xFF)
  {
    v4 = 1;
  }

  if (v3 >= 0x100)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a3 < 0xF9)
  {
    v5 = 0;
  }

  if (a2 > 0xF8)
  {
    v6 = ((a2 - 249) >> 8) + 1;
    *result = a2 + 7;
    if (v5 > 1)
    {
      if (v5 == 2)
      {
        *(result + 1) = v6;
      }

      else
      {
        *(result + 1) = v6;
      }
    }

    else if (v5)
    {
      *(result + 1) = v6;
    }

    return result;
  }

  if (v5 > 1)
  {
    if (v5 != 2)
    {
      *(result + 1) = 0;
      if (a2)
      {
        goto LABEL_22;
      }

      return result;
    }

    *(result + 1) = 0;
  }

  else if (v5)
  {
    *(result + 1) = 0;
    if (!a2)
    {
      return result;
    }

LABEL_22:
    *result = a2 + 7;
    return result;
  }

  if (a2)
  {
    goto LABEL_22;
  }

  return result;
}

uint64_t getEnumTag for TNUIAnalyticsEvent.EventType(unsigned __int8 *a1)
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

_BYTE *destructiveInjectEnumTag for TNUIAnalyticsEvent.EventType(_BYTE *result, int a2)
{
  if (a2)
  {
    *result = a2 + 1;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for TNUIAnalyticsEvent.Payload(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 25))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 8);
  v4 = v3 >= 2;
  v5 = (v3 + 2147483646) & 0x7FFFFFFF;
  if (!v4)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t storeEnumTagSinglePayload for TNUIAnalyticsEvent.Payload(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 25) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 25) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2 + 1;
    }
  }

  return result;
}

void *static TNUIAlertController.analyticsEnabledAlert(handler:)(uint64_t a1, uint64_t a2)
{
  ObjectType = swift_getObjectType();

  return specialized static TNUIAlertController.analyticsEnabledAlert(handler:)(a1, v2, ObjectType, a2);
}

void *static TNUIAlertController.stopReviewingAlert(handler:)(uint64_t a1, uint64_t a2)
{
  ObjectType = swift_getObjectType();

  return specialized static TNUIAlertController.stopReviewingAlert(handler:)(a1, v2, ObjectType, a2);
}

uint64_t key path setter for TNUIAlertController.buttons : TNUIAlertController(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = OBJC_IVAR____TtC20ThreatNotificationUI19TNUIAlertController_buttons;
  swift_beginAccess();
  v5 = *(v3 + v4);
  *(v3 + v4) = v2;
}

uint64_t TNUIAlertController.buttons.getter()
{
  v1 = OBJC_IVAR____TtC20ThreatNotificationUI19TNUIAlertController_buttons;
  swift_beginAccess();
  v2 = *(v0 + v1);
}

void TNUIAlertController.setButtons(_:handler:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = OBJC_IVAR____TtC20ThreatNotificationUI19TNUIAlertController_buttons;
  swift_beginAccess();
  v6 = *&v3[v5];
  *&v3[v5] = a1;

  v7 = *(a1 + 16);
  if (v7)
  {
    v30 = objc_opt_self();
    v8 = (a1 + 32);
    do
    {
      v12 = v8[3];
      v41 = v8[2];
      v42 = v12;
      v43 = *(v8 + 64);
      v13 = v8[1];
      v39 = *v8;
      v40 = v13;
      v14 = BYTE8(v41) > 1u;
      v15 = *(&v13 + 1);
      v16 = v41;
      outlined init with copy of TNUIButtonConfiguration(&v39, v38);
      v17 = MEMORY[0x223D615B0](v15, v16);
      v18 = 2 * v14;
      v19 = swift_allocObject();
      swift_unknownObjectWeakInit();
      v20 = swift_allocObject();
      *(v20 + 24) = a3;
      swift_unknownObjectWeakInit();
      v21 = swift_allocObject();
      *(v21 + 16) = v19;
      *(v21 + 24) = v20;
      v22 = v42;
      *(v21 + 64) = v41;
      *(v21 + 80) = v22;
      *(v21 + 96) = v43;
      v23 = v40;
      *(v21 + 32) = v39;
      *(v21 + 48) = v23;
      v36 = partial apply for closure #1 in TNUIAlertController.setButtons(_:handler:);
      v37 = v21;
      aBlock = MEMORY[0x277D85DD0];
      v33 = 1107296256;
      v34 = thunk for @escaping @callee_guaranteed (@guaranteed UIAlertAction?) -> ();
      v35 = &block_descriptor_3;
      v24 = _Block_copy(&aBlock);
      outlined init with copy of TNUIButtonConfiguration(&v39, v38);

      v25 = swift_allocObject();
      v26 = v42;
      *(v25 + 48) = v41;
      *(v25 + 64) = v26;
      *(v25 + 80) = v43;
      v27 = v40;
      *(v25 + 16) = v39;
      *(v25 + 32) = v27;
      v36 = partial apply for closure #2 in TNUIAlertController.setButtons(_:handler:);
      v37 = v25;
      aBlock = MEMORY[0x277D85DD0];
      v33 = 1107296256;
      v34 = thunk for @escaping @callee_guaranteed () -> (@unowned Bool);
      v35 = &block_descriptor_12;
      v28 = _Block_copy(&aBlock);
      outlined init with copy of TNUIButtonConfiguration(&v39, v38);

      v29 = [v30 _actionWithTitle_image_style_handler_shouldDismissHandler_];
      _Block_release(v28);
      _Block_release(v24);

      if (v29)
      {
        v9 = v42;
        v10 = v29;
        v11 = MEMORY[0x223D615B0](v9, *(&v9 + 1));
        outlined destroy of TNUIButtonConfiguration(&v39);
        [v10 setAccessibilityIdentifier_];

        [v3 addAction_];
      }

      else
      {
        outlined destroy of TNUIButtonConfiguration(&v39);
      }

      v8 = (v8 + 72);
      --v7;
    }

    while (v7);
  }
}

void closure #1 in TNUIAlertController.setButtons(_:handler:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for MainActor();
  static MainActor.shared.getter();
  dispatch thunk of Actor.unownedExecutor.getter();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v7 = Strong;
    swift_beginAccess();
    if (swift_unknownObjectWeakLoadStrong())
    {
      v8 = *(a3 + 24);
      ObjectType = swift_getObjectType();
      v12 = *(a4 + 16);
      v10 = *(v8 + 8);
      v11 = v7;
      v10(&v12, v11, ObjectType, v8);

      swift_unknownObjectRelease();
    }

    else
    {
    }
  }

  else
  {
  }
}

void thunk for @escaping @callee_guaranteed (@guaranteed UIAlertAction?) -> ()(uint64_t a1, void *a2)
{
  v4 = *(a1 + 32);
  v3 = *(a1 + 40);

  v5 = a2;
  v4(a2);
}

uint64_t closure #2 in TNUIAlertController.setButtons(_:handler:)(uint64_t a1)
{
  type metadata accessor for MainActor();
  static MainActor.shared.getter();
  dispatch thunk of Actor.unownedExecutor.getter();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  return *(a1 + 64);
}

uint64_t thunk for @escaping @callee_guaranteed () -> (@unowned Bool)(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(a1 + 40);

  LOBYTE(v1) = v1(v3);

  return v1 & 1;
}

id TNUIAlertController.__allocating_init(nibName:bundle:)(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = v3;
  if (a2)
  {
    v6 = MEMORY[0x223D615B0]();
  }

  else
  {
    v6 = 0;
  }

  v7 = [objc_allocWithZone(v4) initWithNibName:v6 bundle:a3];

  return v7;
}

id TNUIAlertController.init(nibName:bundle:)(uint64_t a1, uint64_t a2, void *a3)
{
  *&v3[OBJC_IVAR____TtC20ThreatNotificationUI19TNUIAlertController_buttons] = MEMORY[0x277D84F90];
  if (a2)
  {
    v5 = MEMORY[0x223D615B0]();
  }

  else
  {
    v5 = 0;
  }

  v8.receiver = v3;
  v8.super_class = type metadata accessor for TNUIAlertController();
  v6 = objc_msgSendSuper2(&v8, sel_initWithNibName_bundle_, v5, a3);

  return v6;
}

id TNUIAlertController.__allocating_init(coder:)(void *a1)
{
  v3 = [objc_allocWithZone(v1) initWithCoder_];

  return v3;
}

id TNUIAlertController.init(coder:)(void *a1)
{
  *&v1[OBJC_IVAR____TtC20ThreatNotificationUI19TNUIAlertController_buttons] = MEMORY[0x277D84F90];
  v5.receiver = v1;
  v5.super_class = type metadata accessor for TNUIAlertController();
  v3 = objc_msgSendSuper2(&v5, sel_initWithCoder_, a1);

  if (v3)
  {
  }

  return v3;
}

id TNUIAlertController.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for TNUIAlertController();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

void TNUIAlertController.showActivityIndicator(for:show:)(unsigned __int8 *a1, char a2)
{
  v4 = *a1;
  v5 = (*((*MEMORY[0x277D85000] & *v2) + 0x58))();
  v6 = v5;
  v7 = *(v5 + 16);
  if (!v7)
  {

    return;
  }

  v8 = 0;
  v9 = v5 + 32;
  v36 = v4 - 3;
  v37 = a2 ^ 1;
  v35 = "TNUIWebViewController";
  v38 = v5 + 32;
  v39 = *(v5 + 16);
  v41 = v4;
  v40 = v5;
  while (1)
  {
    v10 = v9 + 72 * v8;
    v12 = *(v10 + 32);
    v11 = *(v10 + 48);
    v13 = *(v10 + 64);
    v46 = *(v10 + 16);
    v14 = *v10;
    v49 = v13;
    v47 = v12;
    v48 = v11;
    v45 = v14;
    if (v46 > 5u)
    {
      break;
    }

    switch(v46)
    {
      case 3u:
        if (v4 == 3)
        {
          goto LABEL_39;
        }

        break;
      case 4u:
        if (v4 == 4)
        {
LABEL_39:
          outlined init with copy of TNUIButtonConfiguration(&v45, v44);
          goto LABEL_40;
        }

        break;
      case 5u:
        if (v4 == 5)
        {
          goto LABEL_39;
        }

        break;
      default:
        goto LABEL_20;
    }

LABEL_71:
    if (++v8 == v7)
    {
      goto LABEL_74;
    }

    if (v8 >= *(v6 + 16))
    {
      __break(1u);
LABEL_74:

      return;
    }
  }

  if (v46 <= 7u)
  {
    if (v46 == 6)
    {
      if (v4 == 6)
      {
        goto LABEL_39;
      }
    }

    else
    {
      if (v46 != 7)
      {
        goto LABEL_20;
      }

      if (v4 == 7)
      {
        goto LABEL_39;
      }
    }

    goto LABEL_71;
  }

  if (v46 == 8)
  {
    if (v4 == 8)
    {
      goto LABEL_39;
    }

    goto LABEL_71;
  }

  if (v46 == 9)
  {
    if (v4 == 9)
    {
      goto LABEL_39;
    }

    goto LABEL_71;
  }

LABEL_20:
  if (v36 < 7)
  {
    goto LABEL_71;
  }

  if (!v46)
  {
    v15 = 0xD000000000000013;
    v16 = v35;
    if (v4)
    {
      goto LABEL_28;
    }

    goto LABEL_59;
  }

  if (v46 == 1)
  {
    v15 = 0xD000000000000021;
  }

  else
  {
    v15 = 0xD000000000000017;
  }

  v16 = "emergencyAssistance";
  if (v46 != 1)
  {
    v16 = "reatNotifications";
  }

  if (!v4)
  {
LABEL_59:
    v17 = 0xD000000000000013;
    v18 = v35;
    goto LABEL_60;
  }

LABEL_28:
  if (v4 == 1)
  {
    v17 = 0xD000000000000021;
  }

  else
  {
    v17 = 0xD000000000000017;
  }

  v18 = "emergencyAssistance";
  if (v4 != 1)
  {
    v18 = "reatNotifications";
  }

LABEL_60:
  if (v15 != v17 || (v16 | 0x8000000000000000) != (v18 | 0x8000000000000000))
  {
    v33 = _stringCompareWithSmolCheck(_:_:expecting:)();
    outlined init with copy of TNUIButtonConfiguration(&v45, v44);

    if (v33)
    {
      goto LABEL_40;
    }

    outlined destroy of TNUIButtonConfiguration(&v45);
    goto LABEL_71;
  }

  outlined init with copy of TNUIButtonConfiguration(&v45, v44);

LABEL_40:
  v43 = v8;
  v19 = [v42 actions];
  type metadata accessor for UIAlertAction();
  v20 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  if (!(v20 >> 62))
  {
    v21 = *((v20 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v21)
    {
      goto LABEL_42;
    }

    goto LABEL_69;
  }

  if (v20 < 0)
  {
    v34 = v20;
  }

  else
  {
    v34 = v20 & 0xFFFFFFFFFFFFFF8;
  }

  v21 = MEMORY[0x223D618F0](v34);
  if (!v21)
  {
LABEL_69:
    outlined destroy of TNUIButtonConfiguration(&v45);

LABEL_70:
    v4 = v41;
    v7 = v39;
    v6 = v40;
    v8 = v43;
    v9 = v38;
    goto LABEL_71;
  }

LABEL_42:
  v22 = 0;
  v23 = v48;
  while (1)
  {
    if ((v20 & 0xC000000000000001) != 0)
    {
      v24 = MEMORY[0x223D618C0](v22, v20);
    }

    else
    {
      if (v22 >= *((v20 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_79;
      }

      v24 = *(v20 + 8 * v22 + 32);
    }

    v25 = v24;
    v26 = v22 + 1;
    if (__OFADD__(v22, 1))
    {
      break;
    }

    type metadata accessor for MainActor();
    static MainActor.shared.getter();
    dispatch thunk of Actor.unownedExecutor.getter();
    if ((swift_task_isCurrentExecutor() & 1) == 0)
    {
      swift_task_reportUnexpectedExecutor();
    }

    v27 = [v25 accessibilityIdentifier];
    if (v27)
    {
      v28 = v27;
      v29 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v31 = v30;

      if (__PAIR128__(v31, v29) == v23)
      {

LABEL_57:

        outlined destroy of TNUIButtonConfiguration(&v45);
        [v25 setEnabled_];

        goto LABEL_70;
      }

      v32 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if (v32)
      {
        goto LABEL_57;
      }
    }

    else
    {
    }

    ++v22;
    if (v26 == v21)
    {
      goto LABEL_69;
    }
  }

  __break(1u);
LABEL_79:
  __break(1u);
}

void *specialized static TNUIAlertController.stopReviewingAlert(handler:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for TNUIAlertController();
  v6 = specialized static TNUILocalization.localizedString(key:value:tableSuffix:)(0xD000000000000014, 0x800000021E6763F0, 0, 0xE000000000000000);
  v8 = v7;
  v9 = specialized static TNUILocalization.localizedString(key:value:tableSuffix:)(0xD000000000000016, 0x800000021E6763D0, 0, 0xE000000000000000);
  v11 = v10;
  v12 = MEMORY[0x223D615B0](v6, v8);

  v13 = MEMORY[0x223D615B0](v9, v11);

  v14 = [swift_getObjCClassFromMetadata() alertControllerWithTitle:v12 message:v13 preferredStyle:1];

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy20ThreatNotificationUI23TNUIButtonConfigurationVGMd, &_ss23_ContiguousArrayStorageCy20ThreatNotificationUI23TNUIButtonConfigurationVGMR);
  v15 = swift_allocObject();
  *(v15 + 16) = xmmword_21E674F10;
  static TNUIButtonConfiguration.turnOnLDM.getter(v15 + 32);
  v17 = 1;
  static TNUIButtonConfiguration.learnMore(link:)(&v17, v15 + 104);
  static TNUIButtonConfiguration.notNow.getter(v15 + 176);
  (*((*MEMORY[0x277D85000] & *v14) + 0x70))(v15, a1, a4);

  return v14;
}

void *specialized static TNUIAlertController.analyticsEnabledAlert(handler:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for TNUIAlertController();
  v6 = specialized static TNUILocalization.localizedString(key:value:tableSuffix:)(0xD000000000000019, 0x800000021E6761D0, 0, 0xE000000000000000);
  v8 = v7;
  v9 = specialized static TNUILocalization.localizedString(key:value:tableSuffix:)(0xD00000000000001BLL, 0x800000021E6761B0, 0, 0xE000000000000000);
  v11 = v10;
  v12 = MEMORY[0x223D615B0](v6, v8);

  v13 = MEMORY[0x223D615B0](v9, v11);

  v14 = [swift_getObjCClassFromMetadata() alertControllerWithTitle:v12 message:v13 preferredStyle:1];

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy20ThreatNotificationUI23TNUIButtonConfigurationVGMd, &_ss23_ContiguousArrayStorageCy20ThreatNotificationUI23TNUIButtonConfigurationVGMR);
  v15 = swift_allocObject();
  *(v15 + 16) = xmmword_21E6748E0;
  static TNUIButtonConfiguration.done.getter(v15 + 32);
  (*((*MEMORY[0x277D85000] & *v14) + 0x70))(v15, a1, a4);

  return v14;
}

uint64_t block_copy_helper_3(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

unint64_t type metadata accessor for UIAlertAction()
{
  result = lazy cache variable for type metadata for UIAlertAction;
  if (!lazy cache variable for type metadata for UIAlertAction)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &lazy cache variable for type metadata for UIAlertAction);
  }

  return result;
}

double Double.daysFromNow.getter(double a1)
{
  v2 = type metadata accessor for Date();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v10 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  static Date.now.getter();
  Date.timeIntervalSince1970.getter();
  v8 = v7;
  (*(v3 + 8))(v6, v2);
  return floor((v8 - a1) / 86400.0) * 86400.0;
}

Swift::String_optional __swiftcall TNUIAccountProvider.usernameForAccount(altDSID:)(Swift::String altDSID)
{
  object = altDSID._object;
  countAndFlagsBits = altDSID._countAndFlagsBits;
  v3 = type metadata accessor for Logger();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = &v23 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = [objc_opt_self() defaultStore];
  if (!v8)
  {
    __break(1u);
    goto LABEL_12;
  }

  v10 = v8;
  v11 = MEMORY[0x223D615B0](countAndFlagsBits, object);
  v12 = [v10 aa:v11 appleAccountWithAltDSID:?];

  if (!v12)
  {
    static TNCLogger.default.getter();

    v18 = Logger.logObject.getter();
    v19 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v18, v19))
    {
      v20 = swift_slowAlloc();
      v21 = swift_slowAlloc();
      v24 = v21;
      *v20 = 136315138;
      *(v20 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(countAndFlagsBits, object, &v24);
      _os_log_impl(&dword_21E646000, v18, v19, "No account for identifier: %s", v20, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v21);
      MEMORY[0x223D62010](v21, -1, -1);
      MEMORY[0x223D62010](v20, -1, -1);
    }

    (*(v4 + 8))(v7, v3);
    goto LABEL_9;
  }

  v13 = [v12 username];
  if (!v13)
  {

LABEL_9:
    v8 = 0;
    v9 = 0;
    goto LABEL_12;
  }

  v14 = v13;
  v15 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v17 = v16;

  v9 = v17;
  v8 = v15;
LABEL_12:
  result.value._object = v9;
  result.value._countAndFlagsBits = v8;
  return result;
}

uint64_t TNUIAAServerViewController.__allocating_init(type:remoteUIProvider:)(_BYTE *a1, __int128 *a2)
{
  v4 = swift_allocObject();
  LOBYTE(a1) = *a1;
  *(v4 + 112) = 0;
  *(v4 + 64) = 0u;
  *(v4 + 80) = 0u;
  *(v4 + 96) = 0;
  swift_unknownObjectWeakInit();
  *(v4 + 16) = a1;
  outlined init with take of TNUIAccountRemoteUIProviding(a2, v4 + 24);
  return v4;
}

uint64_t TNUIAAServerViewController.delegate.getter()
{
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  v2 = *(v0 + 112);
  return result;
}

uint64_t TNUIAAServerViewController.delegate.setter(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  *(v2 + 112) = a2;
  swift_unknownObjectWeakAssign();
  return swift_unknownObjectRelease();
}

void (*TNUIAAServerViewController.delegate.modify(uint64_t *a1))(uint64_t a1, char a2)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 40) = v1;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v6 = *(v1 + 112);
  *(v4 + 24) = Strong;
  *(v4 + 32) = v6;
  return TNUIAAServerViewController.delegate.modify;
}

void TNUIAAServerViewController.delegate.modify(uint64_t a1, char a2)
{
  v3 = *a1;
  v4 = *(*a1 + 24);
  *(*(*a1 + 40) + 112) = *(*a1 + 32);
  swift_unknownObjectWeakAssign();
  if (a2)
  {
    v5 = v3[3];
    swift_unknownObjectRelease();
    swift_endAccess();
  }

  else
  {
    swift_endAccess();
    swift_unknownObjectRelease();
  }

  free(v3);
}

uint64_t TNUIAAServerViewController.init(type:remoteUIProvider:)(char *a1, __int128 *a2)
{
  v4 = *a1;
  *(v2 + 112) = 0;
  *(v2 + 64) = 0u;
  *(v2 + 80) = 0u;
  *(v2 + 96) = 0;
  swift_unknownObjectWeakInit();
  *(v2 + 16) = v4;
  outlined init with take of TNUIAccountRemoteUIProviding(a2, v2 + 24);
  return v2;
}

uint64_t TNUIAAServerViewController.present(from:)(uint64_t a1)
{
  *(v2 + 320) = a1;
  *(v2 + 328) = v1;
  return MEMORY[0x2822009F8](TNUIAAServerViewController.present(from:), 0, 0);
}

uint64_t TNUIAAServerViewController.present(from:)()
{
  v1 = *(v0 + 328);
  swift_beginAccess();
  outlined init with copy of TNUIAccountRemoteUIType?(v1 + 64, v0 + 16);
  v2 = *(v0 + 40);
  outlined destroy of TNUIAccountRemoteUIType?(v0 + 16);
  if (v2)
  {
    v3 = type metadata accessor for TNCError();
    lazy protocol witness table accessor for type TNCError and conformance TNCError();
    swift_allocError();
    *v4 = 0xD000000000000020;
    v4[1] = 0x800000021E676D20;
    (*(*(v3 - 8) + 104))(v4, *MEMORY[0x277D71488], v3);
    swift_willThrow();
    v5 = *(v0 + 8);

    return v5();
  }

  else
  {
    v7 = *(v0 + 328);
    v8 = *(v7 + 48);
    v9 = *(v7 + 56);
    __swift_project_boxed_opaque_existential_0((v7 + 24), v8);
    *(v0 + 368) = *(v7 + 16);
    v10 = *(v9 + 8);
    v14 = (v10 + *v10);
    v11 = v10[1];
    v12 = swift_task_alloc();
    *(v0 + 336) = v12;
    *v12 = v0;
    v12[1] = TNUIAAServerViewController.present(from:);
    v13 = *(v0 + 320);

    return v14(v0 + 56, v0 + 368, v13, v8, v9);
  }
}

{
  v2 = *(*v1 + 336);
  v5 = *v1;
  *(*v1 + 344) = v0;

  if (v0)
  {
    v3 = TNUIAAServerViewController.present(from:);
  }

  else
  {
    v3 = TNUIAAServerViewController.present(from:);
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

{
  v1 = *(v0 + 328);
  swift_beginAccess();
  outlined assign with take of TNUIAccountRemoteUIType?(v0 + 56, v1 + 64);
  swift_endAccess();
  v3 = TNUIAAServerViewController.remoteUI.modify();
  if (*(v2 + 24))
  {
    v4 = v2;
    v5 = (*(**(v0 + 328) + 136))();
    v7 = v6;
    v8 = *(v4 + 24);
    v9 = *(v4 + 32);
    __swift_mutable_project_boxed_opaque_existential_1(v4, v8);
    (*(v9 + 24))(v5, v7, v8, v9);
  }

  (v3)(v0 + 216, 0);
  outlined init with copy of TNUIAccountRemoteUIType?(*(v0 + 328) + 64, v0 + 96);
  if (*(v0 + 120))
  {
    outlined init with copy of TNUIActivityIndicatorShowing(v0 + 96, v0 + 176);
    outlined destroy of TNUIAccountRemoteUIType?(v0 + 96);
    v10 = *(v0 + 200);
    v11 = *(v0 + 208);
    __swift_project_boxed_opaque_existential_0((v0 + 176), v10);
    v12 = *(v11 + 40);
    v18 = (v12 + *v12);
    v13 = v12[1];
    v14 = swift_task_alloc();
    *(v0 + 352) = v14;
    *v14 = v0;
    v14[1] = TNUIAAServerViewController.present(from:);

    return v18(v10, v11);
  }

  else
  {
    outlined destroy of TNUIAccountRemoteUIType?(v0 + 96);
    v16 = *(v0 + 328);
    *(v0 + 152) = 0u;
    *(v0 + 168) = 0;
    *(v0 + 136) = 0u;
    swift_beginAccess();
    outlined assign with take of TNUIAccountRemoteUIType?(v0 + 136, v16 + 64);
    swift_endAccess();
    v17 = *(v0 + 8);

    return v17();
  }
}

{
  v2 = *(*v1 + 352);
  v5 = *v1;
  *(*v1 + 360) = v0;

  if (v0)
  {
    v3 = TNUIAAServerViewController.present(from:);
  }

  else
  {
    v3 = TNUIAAServerViewController.present(from:);
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

{
  __swift_destroy_boxed_opaque_existential_0Tm((v0 + 176));
  v1 = *(v0 + 328);
  *(v0 + 152) = 0u;
  *(v0 + 168) = 0;
  *(v0 + 136) = 0u;
  swift_beginAccess();
  outlined assign with take of TNUIAccountRemoteUIType?(v0 + 136, v1 + 64);
  swift_endAccess();
  v2 = *(v0 + 8);

  return v2();
}

{
  v1 = *(v0 + 344);
  return (*(v0 + 8))();
}

{
  __swift_destroy_boxed_opaque_existential_0Tm(v0 + 22);
  v1 = v0[45];
  v2 = v0[1];

  return v2();
}

uint64_t outlined init with copy of TNUIAccountRemoteUIType?(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s20ThreatNotificationUI23TNUIAccountRemoteUIType_pSgMd, &_s20ThreatNotificationUI23TNUIAccountRemoteUIType_pSgMR);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t outlined destroy of TNUIAccountRemoteUIType?(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s20ThreatNotificationUI23TNUIAccountRemoteUIType_pSgMd, &_s20ThreatNotificationUI23TNUIAccountRemoteUIType_pSgMR);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t outlined assign with take of TNUIAccountRemoteUIType?(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s20ThreatNotificationUI23TNUIAccountRemoteUIType_pSgMd, &_s20ThreatNotificationUI23TNUIAccountRemoteUIType_pSgMR);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
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

uint64_t TNUIAAServerViewController.deinit()
{
  __swift_destroy_boxed_opaque_existential_0Tm((v0 + 24));
  outlined destroy of TNUIAccountRemoteUIType?(v0 + 64);
  outlined destroy of weak TNUIAccountRemoteUIDelegate?(v0 + 104);
  return v0;
}

uint64_t TNUIAAServerViewController.__deallocating_deinit()
{
  __swift_destroy_boxed_opaque_existential_0Tm((v0 + 24));
  outlined destroy of TNUIAccountRemoteUIType?(v0 + 64);
  outlined destroy of weak TNUIAccountRemoteUIDelegate?(v0 + 104);

  return MEMORY[0x2821FE8D8](v0, 120, 7);
}

uint64_t dispatch thunk of TNUIAAServerViewController.present(from:)(uint64_t a1)
{
  v4 = *(*v1 + 168);
  v8 = (v4 + *v4);
  v5 = v4[1];
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = protocol witness for TNUIAccountRemoteUIProviding.makeRemoteUI(for:presentingViewController:) in conformance TNUIAccountRemoteUIProvider;

  return v8(a1);
}

uint64_t static ViewBuilder.buildEither<A, B>(first:)(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for _ConditionalContent.Storage();
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4);
  (*(*(a2 - 8) + 16))(&v8 - v6, a1, a2);
  swift_storeEnumTagMultiPayload();
  return _ConditionalContent<>.init(storage:)();
}

uint64_t static ViewBuilder.buildEither<A, B>(second:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = type metadata accessor for _ConditionalContent.Storage();
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5);
  (*(*(a3 - 8) + 16))(&v9 - v7, a1, a3);
  swift_storeEnumTagMultiPayload();
  return _ConditionalContent<>.init(storage:)();
}

uint64_t ImageColorScheme.body(content:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, int a3@<W2>, uint64_t a4@<X8>)
{
  v46 = a1;
  v54 = a4;
  v53 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI19_ConditionalContentV7StorageOyACyAA08ModifiedD0VyAGyAA014_ViewModifier_D0Vy018ThreatNotificationB016ImageColorSchemeVGAA022_EnvironmentKeyWritingH0VyAA19SymbolRenderingModeVSgGGAA016_ForegroundStyleH0VyAA0L0VGGATGA__GMd, &_s7SwiftUI19_ConditionalContentV7StorageOyACyAA08ModifiedD0VyAGyAA014_ViewModifier_D0Vy018ThreatNotificationB016ImageColorSchemeVGAA022_EnvironmentKeyWritingH0VyAA19SymbolRenderingModeVSgGGAA016_ForegroundStyleH0VyAA0L0VGGATGA__GMR);
  v6 = *(*(v53 - 8) + 64);
  MEMORY[0x28223BE20](v53);
  v52 = &v44 - v7;
  v47 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI19_ConditionalContentV7StorageOyAA08ModifiedD0VyAGyAA014_ViewModifier_D0Vy018ThreatNotificationB016ImageColorSchemeVGAA022_EnvironmentKeyWritingH0VyAA19SymbolRenderingModeVSgGGAA016_ForegroundStyleH0VyAA0L0VGGAT_GMd, &_s7SwiftUI19_ConditionalContentV7StorageOyAA08ModifiedD0VyAGyAA014_ViewModifier_D0Vy018ThreatNotificationB016ImageColorSchemeVGAA022_EnvironmentKeyWritingH0VyAA19SymbolRenderingModeVSgGGAA016_ForegroundStyleH0VyAA0L0VGGAT_GMR);
  v8 = *(*(v47 - 8) + 64);
  MEMORY[0x28223BE20](v47);
  v50 = &v44 - v9;
  v49 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyACyAA014_ViewModifier_D0Vy018ThreatNotificationB016ImageColorSchemeVGAA022_EnvironmentKeyWritingF0VyAA19SymbolRenderingModeVSgGGAA016_ForegroundStyleF0VyAA0J0VGGMd, &_s7SwiftUI15ModifiedContentVyACyAA014_ViewModifier_D0Vy018ThreatNotificationB016ImageColorSchemeVGAA022_EnvironmentKeyWritingF0VyAA19SymbolRenderingModeVSgGGAA016_ForegroundStyleF0VyAA0J0VGGMR);
  v10 = *(*(v49 - 8) + 64);
  MEMORY[0x28223BE20](v49);
  v45 = &v44 - v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyAA014_ViewModifier_D0Vy018ThreatNotificationB016ImageColorSchemeVGAA022_EnvironmentKeyWritingF0VyAA19SymbolRenderingModeVSgGGMd, &_s7SwiftUI15ModifiedContentVyAA014_ViewModifier_D0Vy018ThreatNotificationB016ImageColorSchemeVGAA022_EnvironmentKeyWritingF0VyAA19SymbolRenderingModeVSgGGMR);
  v13 = *(*(v12 - 8) + 64);
  v14 = MEMORY[0x28223BE20](v12);
  v16 = &v44 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v18 = &v44 - v17;
  v51 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI19_ConditionalContentVyAA08ModifiedD0VyAEyAA014_ViewModifier_D0Vy018ThreatNotificationB016ImageColorSchemeVGAA022_EnvironmentKeyWritingG0VyAA19SymbolRenderingModeVSgGGAA016_ForegroundStyleG0VyAA0K0VGGARGMd, &_s7SwiftUI19_ConditionalContentVyAA08ModifiedD0VyAEyAA014_ViewModifier_D0Vy018ThreatNotificationB016ImageColorSchemeVGAA022_EnvironmentKeyWritingG0VyAA19SymbolRenderingModeVSgGGAA016_ForegroundStyleG0VyAA0K0VGGARGMR);
  v19 = *(*(v51 - 8) + 64);
  v20 = MEMORY[0x28223BE20](v51);
  v44 = &v44 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = MEMORY[0x28223BE20](v20);
  v24 = &v44 - v23;
  v25 = MEMORY[0x28223BE20](v22);
  v27 = &v44 - v26;
  MEMORY[0x28223BE20](v25);
  v29 = &v44 - v28;
  v48 = v12;
  v30 = *(v12 + 36);
  v31 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI30_EnvironmentKeyWritingModifierVyAA19SymbolRenderingModeVSgGMd, &_s7SwiftUI30_EnvironmentKeyWritingModifierVyAA19SymbolRenderingModeVSgGMR) + 28);
  v32 = a2;

  v55 = a3;
  if (a3)
  {
    static SymbolRenderingMode.hierarchical.getter();
    v33 = type metadata accessor for SymbolRenderingMode();
    (*(*(v33 - 8) + 56))(&v18[v30 + v31], 0, 1, v33);
    *&v18[v30] = swift_getKeyPath();
    v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI21_ViewModifier_ContentVy018ThreatNotificationB016ImageColorSchemeVGMd, &_s7SwiftUI21_ViewModifier_ContentVy018ThreatNotificationB016ImageColorSchemeVGMR);
    (*(*(v34 - 8) + 16))(v18, v46, v34);
    v35 = a2;
    if (a2)
    {
      v36 = v45;
      outlined init with copy of (ObjectIdentifier, Sendable)(v18, v45, &_s7SwiftUI15ModifiedContentVyAA014_ViewModifier_D0Vy018ThreatNotificationB016ImageColorSchemeVGAA022_EnvironmentKeyWritingF0VyAA19SymbolRenderingModeVSgGGMd, &_s7SwiftUI15ModifiedContentVyAA014_ViewModifier_D0Vy018ThreatNotificationB016ImageColorSchemeVGAA022_EnvironmentKeyWritingF0VyAA19SymbolRenderingModeVSgGGMR);
      v37 = v50;
      *(v36 + *(v49 + 36)) = v32;
      outlined init with copy of (ObjectIdentifier, Sendable)(v36, v37, &_s7SwiftUI15ModifiedContentVyACyAA014_ViewModifier_D0Vy018ThreatNotificationB016ImageColorSchemeVGAA022_EnvironmentKeyWritingF0VyAA19SymbolRenderingModeVSgGGAA016_ForegroundStyleF0VyAA0J0VGGMd, &_s7SwiftUI15ModifiedContentVyACyAA014_ViewModifier_D0Vy018ThreatNotificationB016ImageColorSchemeVGAA022_EnvironmentKeyWritingF0VyAA19SymbolRenderingModeVSgGGAA016_ForegroundStyleF0VyAA0J0VGGMR);
      swift_storeEnumTagMultiPayload();
      lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<_ViewModifier_Content<ImageColorScheme>, _EnvironmentKeyWritingModifier<SymbolRenderingMode?>>, _ForegroundStyleModifier<Color>> and conformance <> ModifiedContent<A, B>();
      lazy protocol witness table accessor for type ModifiedContent<_ViewModifier_Content<ImageColorScheme>, _EnvironmentKeyWritingModifier<SymbolRenderingMode?>> and conformance <> ModifiedContent<A, B>();

      _ConditionalContent<>.init(storage:)();
      outlined destroy of CheckedContinuation<(), Error>?(v36, &_s7SwiftUI15ModifiedContentVyACyAA014_ViewModifier_D0Vy018ThreatNotificationB016ImageColorSchemeVGAA022_EnvironmentKeyWritingF0VyAA19SymbolRenderingModeVSgGGAA016_ForegroundStyleF0VyAA0J0VGGMd, &_s7SwiftUI15ModifiedContentVyACyAA014_ViewModifier_D0Vy018ThreatNotificationB016ImageColorSchemeVGAA022_EnvironmentKeyWritingF0VyAA19SymbolRenderingModeVSgGGAA016_ForegroundStyleF0VyAA0J0VGGMR);
    }

    else
    {
      outlined init with copy of (ObjectIdentifier, Sendable)(v18, v50, &_s7SwiftUI15ModifiedContentVyAA014_ViewModifier_D0Vy018ThreatNotificationB016ImageColorSchemeVGAA022_EnvironmentKeyWritingF0VyAA19SymbolRenderingModeVSgGGMd, &_s7SwiftUI15ModifiedContentVyAA014_ViewModifier_D0Vy018ThreatNotificationB016ImageColorSchemeVGAA022_EnvironmentKeyWritingF0VyAA19SymbolRenderingModeVSgGGMR);
      swift_storeEnumTagMultiPayload();
      lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<_ViewModifier_Content<ImageColorScheme>, _EnvironmentKeyWritingModifier<SymbolRenderingMode?>>, _ForegroundStyleModifier<Color>> and conformance <> ModifiedContent<A, B>();
      lazy protocol witness table accessor for type ModifiedContent<_ViewModifier_Content<ImageColorScheme>, _EnvironmentKeyWritingModifier<SymbolRenderingMode?>> and conformance <> ModifiedContent<A, B>();
      _ConditionalContent<>.init(storage:)();
    }

    outlined destroy of CheckedContinuation<(), Error>?(v18, &_s7SwiftUI15ModifiedContentVyAA014_ViewModifier_D0Vy018ThreatNotificationB016ImageColorSchemeVGAA022_EnvironmentKeyWritingF0VyAA19SymbolRenderingModeVSgGGMd, &_s7SwiftUI15ModifiedContentVyAA014_ViewModifier_D0Vy018ThreatNotificationB016ImageColorSchemeVGAA022_EnvironmentKeyWritingF0VyAA19SymbolRenderingModeVSgGGMR);
    outlined init with take of _ConditionalContent<ModifiedContent<ModifiedContent<_ViewModifier_Content<ImageColorScheme>, _EnvironmentKeyWritingModifier<SymbolRenderingMode?>>, _ForegroundStyleModifier<Color>>, ModifiedContent<_ViewModifier_Content<ImageColorScheme>, _EnvironmentKeyWritingModifier<SymbolRenderingMode?>>>(v27, v29);
  }

  else
  {
    static SymbolRenderingMode.monochrome.getter();
    v38 = type metadata accessor for SymbolRenderingMode();
    (*(*(v38 - 8) + 56))(&v16[v30 + v31], 0, 1, v38);
    *&v16[v30] = swift_getKeyPath();
    v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI21_ViewModifier_ContentVy018ThreatNotificationB016ImageColorSchemeVGMd, &_s7SwiftUI21_ViewModifier_ContentVy018ThreatNotificationB016ImageColorSchemeVGMR);
    (*(*(v39 - 8) + 16))(v16, v46, v39);
    v35 = a2;
    if (a2)
    {
      v40 = v45;
      outlined init with copy of (ObjectIdentifier, Sendable)(v16, v45, &_s7SwiftUI15ModifiedContentVyAA014_ViewModifier_D0Vy018ThreatNotificationB016ImageColorSchemeVGAA022_EnvironmentKeyWritingF0VyAA19SymbolRenderingModeVSgGGMd, &_s7SwiftUI15ModifiedContentVyAA014_ViewModifier_D0Vy018ThreatNotificationB016ImageColorSchemeVGAA022_EnvironmentKeyWritingF0VyAA19SymbolRenderingModeVSgGGMR);
      v41 = v50;
      *(v40 + *(v49 + 36)) = v32;
      outlined init with copy of (ObjectIdentifier, Sendable)(v40, v41, &_s7SwiftUI15ModifiedContentVyACyAA014_ViewModifier_D0Vy018ThreatNotificationB016ImageColorSchemeVGAA022_EnvironmentKeyWritingF0VyAA19SymbolRenderingModeVSgGGAA016_ForegroundStyleF0VyAA0J0VGGMd, &_s7SwiftUI15ModifiedContentVyACyAA014_ViewModifier_D0Vy018ThreatNotificationB016ImageColorSchemeVGAA022_EnvironmentKeyWritingF0VyAA19SymbolRenderingModeVSgGGAA016_ForegroundStyleF0VyAA0J0VGGMR);
      swift_storeEnumTagMultiPayload();
      lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<_ViewModifier_Content<ImageColorScheme>, _EnvironmentKeyWritingModifier<SymbolRenderingMode?>>, _ForegroundStyleModifier<Color>> and conformance <> ModifiedContent<A, B>();
      lazy protocol witness table accessor for type ModifiedContent<_ViewModifier_Content<ImageColorScheme>, _EnvironmentKeyWritingModifier<SymbolRenderingMode?>> and conformance <> ModifiedContent<A, B>();

      v42 = v44;
      _ConditionalContent<>.init(storage:)();
      outlined destroy of CheckedContinuation<(), Error>?(v40, &_s7SwiftUI15ModifiedContentVyACyAA014_ViewModifier_D0Vy018ThreatNotificationB016ImageColorSchemeVGAA022_EnvironmentKeyWritingF0VyAA19SymbolRenderingModeVSgGGAA016_ForegroundStyleF0VyAA0J0VGGMd, &_s7SwiftUI15ModifiedContentVyACyAA014_ViewModifier_D0Vy018ThreatNotificationB016ImageColorSchemeVGAA022_EnvironmentKeyWritingF0VyAA19SymbolRenderingModeVSgGGAA016_ForegroundStyleF0VyAA0J0VGGMR);
    }

    else
    {
      outlined init with copy of (ObjectIdentifier, Sendable)(v16, v50, &_s7SwiftUI15ModifiedContentVyAA014_ViewModifier_D0Vy018ThreatNotificationB016ImageColorSchemeVGAA022_EnvironmentKeyWritingF0VyAA19SymbolRenderingModeVSgGGMd, &_s7SwiftUI15ModifiedContentVyAA014_ViewModifier_D0Vy018ThreatNotificationB016ImageColorSchemeVGAA022_EnvironmentKeyWritingF0VyAA19SymbolRenderingModeVSgGGMR);
      swift_storeEnumTagMultiPayload();
      lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<_ViewModifier_Content<ImageColorScheme>, _EnvironmentKeyWritingModifier<SymbolRenderingMode?>>, _ForegroundStyleModifier<Color>> and conformance <> ModifiedContent<A, B>();
      lazy protocol witness table accessor for type ModifiedContent<_ViewModifier_Content<ImageColorScheme>, _EnvironmentKeyWritingModifier<SymbolRenderingMode?>> and conformance <> ModifiedContent<A, B>();
      v42 = v44;
      _ConditionalContent<>.init(storage:)();
    }

    outlined destroy of CheckedContinuation<(), Error>?(v16, &_s7SwiftUI15ModifiedContentVyAA014_ViewModifier_D0Vy018ThreatNotificationB016ImageColorSchemeVGAA022_EnvironmentKeyWritingF0VyAA19SymbolRenderingModeVSgGGMd, &_s7SwiftUI15ModifiedContentVyAA014_ViewModifier_D0Vy018ThreatNotificationB016ImageColorSchemeVGAA022_EnvironmentKeyWritingF0VyAA19SymbolRenderingModeVSgGGMR);
    outlined init with take of _ConditionalContent<ModifiedContent<ModifiedContent<_ViewModifier_Content<ImageColorScheme>, _EnvironmentKeyWritingModifier<SymbolRenderingMode?>>, _ForegroundStyleModifier<Color>>, ModifiedContent<_ViewModifier_Content<ImageColorScheme>, _EnvironmentKeyWritingModifier<SymbolRenderingMode?>>>(v42, v24);
    v29 = v24;
  }

  outlined init with copy of (ObjectIdentifier, Sendable)(v29, v52, &_s7SwiftUI19_ConditionalContentVyAA08ModifiedD0VyAEyAA014_ViewModifier_D0Vy018ThreatNotificationB016ImageColorSchemeVGAA022_EnvironmentKeyWritingG0VyAA19SymbolRenderingModeVSgGGAA016_ForegroundStyleG0VyAA0K0VGGARGMd, &_s7SwiftUI19_ConditionalContentVyAA08ModifiedD0VyAEyAA014_ViewModifier_D0Vy018ThreatNotificationB016ImageColorSchemeVGAA022_EnvironmentKeyWritingG0VyAA19SymbolRenderingModeVSgGGAA016_ForegroundStyleG0VyAA0K0VGGARGMR);
  swift_storeEnumTagMultiPayload();
  lazy protocol witness table accessor for type _ConditionalContent<ModifiedContent<ModifiedContent<_ViewModifier_Content<ImageColorScheme>, _EnvironmentKeyWritingModifier<SymbolRenderingMode?>>, _ForegroundStyleModifier<Color>>, ModifiedContent<_ViewModifier_Content<ImageColorScheme>, _EnvironmentKeyWritingModifier<SymbolRenderingMode?>>> and conformance <> _ConditionalContent<A, B>();
  _ConditionalContent<>.init(storage:)();
  outlined consume of TNUIImageColorScheme(v35, v55 & 1);
  return outlined destroy of CheckedContinuation<(), Error>?(v29, &_s7SwiftUI19_ConditionalContentVyAA08ModifiedD0VyAEyAA014_ViewModifier_D0Vy018ThreatNotificationB016ImageColorSchemeVGAA022_EnvironmentKeyWritingG0VyAA19SymbolRenderingModeVSgGGAA016_ForegroundStyleG0VyAA0K0VGGARGMd, &_s7SwiftUI19_ConditionalContentVyAA08ModifiedD0VyAEyAA014_ViewModifier_D0Vy018ThreatNotificationB016ImageColorSchemeVGAA022_EnvironmentKeyWritingG0VyAA19SymbolRenderingModeVSgGGAA016_ForegroundStyleG0VyAA0K0VGGARGMR);
}

uint64_t View.ifNotNil<A, B>(_:transform:)@<X0>(uint64_t a1@<X0>, void (*a2)(uint64_t, char *)@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>)
{
  v61 = a1;
  v67 = a9;
  v68 = a8;
  v66 = a7;
  v56 = a3;
  v57 = a2;
  v60 = *(a4 - 8);
  v12 = *(v60 + 64);
  v13 = MEMORY[0x28223BE20](a1);
  v58 = &v53 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = MEMORY[0x28223BE20](v13);
  v55 = &v53 - v16;
  v59 = *(v17 - 8);
  v18 = *(v59 + 64);
  v19 = MEMORY[0x28223BE20](v15);
  v21 = &v53 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v19);
  v54 = &v53 - v22;
  v23 = type metadata accessor for Optional();
  v24 = *(v23 - 8);
  v25 = *(v24 + 64);
  v26 = MEMORY[0x28223BE20](v23);
  v28 = &v53 - v27;
  v29 = *(a6 - 8);
  v30 = *(v29 + 64);
  MEMORY[0x28223BE20](v26);
  v32 = &v53 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  v64 = a5;
  v65 = a4;
  v63 = type metadata accessor for _ConditionalContent();
  v33 = *(v63 - 8);
  v34 = *(v33 + 64);
  MEMORY[0x28223BE20](v63);
  v36 = &v53 - v35;
  (*(v24 + 16))(v28, v61, v23);
  if ((*(v29 + 48))(v28, 1, a6) == 1)
  {
    (*(v24 + 8))(v28, v23);
    v37 = v60;
    v38 = *(v60 + 16);
    v39 = v55;
    v40 = v65;
    v38(v55, v62, v65);
    v41 = v58;
    v38(v58, v39, v40);
    v42 = v66;
    static ViewBuilder.buildEither<A, B>(second:)(v41, v64, v40);
    v43 = *(v37 + 8);
    v43(v41, v40);
    v43(v39, v40);
  }

  else
  {
    v44 = *(v29 + 32);
    v53 = a6;
    v44(v32, v28, a6);
    v57(v62, v32);
    v45 = v59;
    v46 = *(v59 + 16);
    v62 = v33;
    v47 = v54;
    v48 = v64;
    v46(v54, v21, v64);
    v49 = *(v45 + 8);
    v49(v21, v48);
    v46(v21, v47, v48);
    v42 = v66;
    static ViewBuilder.buildEither<A, B>(first:)(v21, v48);
    v49(v21, v48);
    v50 = v47;
    v33 = v62;
    v49(v50, v48);
    (*(v29 + 8))(v32, v53);
  }

  v69 = v68;
  v70 = v42;
  v51 = v63;
  swift_getWitnessTable();
  (*(v33 + 16))(v67, v36, v51);
  return (*(v33 + 8))(v36, v51);
}

uint64_t View.imageColorScheme(_:)(uint64_t a1, char a2, uint64_t a3)
{
  v4 = a1;
  v5 = a2 & 1;
  return MEMORY[0x223D614B0](&v4, a3, &type metadata for ImageColorScheme);
}

uint64_t key path setter for EnvironmentValues.symbolRenderingMode : EnvironmentValues, serialized(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI19SymbolRenderingModeVSgMd, &_s7SwiftUI19SymbolRenderingModeVSgMR);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  outlined init with copy of (ObjectIdentifier, Sendable)(a1, &v6 - v4, &_s7SwiftUI19SymbolRenderingModeVSgMd, &_s7SwiftUI19SymbolRenderingModeVSgMR);
  return EnvironmentValues.symbolRenderingMode.setter();
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<_ViewModifier_Content<ImageColorScheme>, _EnvironmentKeyWritingModifier<SymbolRenderingMode?>>, _ForegroundStyleModifier<Color>> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<_ViewModifier_Content<ImageColorScheme>, _EnvironmentKeyWritingModifier<SymbolRenderingMode?>>, _ForegroundStyleModifier<Color>> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<_ViewModifier_Content<ImageColorScheme>, _EnvironmentKeyWritingModifier<SymbolRenderingMode?>>, _ForegroundStyleModifier<Color>> and conformance <> ModifiedContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyACyAA014_ViewModifier_D0Vy018ThreatNotificationB016ImageColorSchemeVGAA022_EnvironmentKeyWritingF0VyAA19SymbolRenderingModeVSgGGAA016_ForegroundStyleF0VyAA0J0VGGMd, &_s7SwiftUI15ModifiedContentVyACyAA014_ViewModifier_D0Vy018ThreatNotificationB016ImageColorSchemeVGAA022_EnvironmentKeyWritingF0VyAA19SymbolRenderingModeVSgGGAA016_ForegroundStyleF0VyAA0J0VGGMR);
    lazy protocol witness table accessor for type ModifiedContent<_ViewModifier_Content<ImageColorScheme>, _EnvironmentKeyWritingModifier<SymbolRenderingMode?>> and conformance <> ModifiedContent<A, B>();
    lazy protocol witness table accessor for type VStack<TupleView<(ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Button<ModifiedContent<Text, _FlexFrameLayout>>, _PaddingLayout>, _FlexFrameLayout>, _InsettableBackgroundShapeModifier<Color, RoundedRectangle>>, AccessibilityAttachmentModifier>, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Text, _EnvironmentKeyWritingModifier<TextAlignment>>, _EnvironmentKeyWritingModifier<Font?>>, _ForegroundStyleModifier<HierarchicalShapeStyle>>, _FlexFrameLayout>, _PaddingLayout>, AccessibilityAttachmentModifier>)>> and conformance VStack<A>(&lazy protocol witness table cache variable for type _ForegroundStyleModifier<Color> and conformance _ForegroundStyleModifier<A>, &_s7SwiftUI24_ForegroundStyleModifierVyAA5ColorVGMd, &_s7SwiftUI24_ForegroundStyleModifierVyAA5ColorVGMR);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<_ViewModifier_Content<ImageColorScheme>, _EnvironmentKeyWritingModifier<SymbolRenderingMode?>>, _ForegroundStyleModifier<Color>> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<_ViewModifier_Content<ImageColorScheme>, _EnvironmentKeyWritingModifier<SymbolRenderingMode?>> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<_ViewModifier_Content<ImageColorScheme>, _EnvironmentKeyWritingModifier<SymbolRenderingMode?>> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<_ViewModifier_Content<ImageColorScheme>, _EnvironmentKeyWritingModifier<SymbolRenderingMode?>> and conformance <> ModifiedContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyAA014_ViewModifier_D0Vy018ThreatNotificationB016ImageColorSchemeVGAA022_EnvironmentKeyWritingF0VyAA19SymbolRenderingModeVSgGGMd, &_s7SwiftUI15ModifiedContentVyAA014_ViewModifier_D0Vy018ThreatNotificationB016ImageColorSchemeVGAA022_EnvironmentKeyWritingF0VyAA19SymbolRenderingModeVSgGGMR);
    lazy protocol witness table accessor for type VStack<TupleView<(ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Button<ModifiedContent<Text, _FlexFrameLayout>>, _PaddingLayout>, _FlexFrameLayout>, _InsettableBackgroundShapeModifier<Color, RoundedRectangle>>, AccessibilityAttachmentModifier>, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Text, _EnvironmentKeyWritingModifier<TextAlignment>>, _EnvironmentKeyWritingModifier<Font?>>, _ForegroundStyleModifier<HierarchicalShapeStyle>>, _FlexFrameLayout>, _PaddingLayout>, AccessibilityAttachmentModifier>)>> and conformance VStack<A>(&lazy protocol witness table cache variable for type _ViewModifier_Content<ImageColorScheme> and conformance _ViewModifier_Content<A>, &_s7SwiftUI21_ViewModifier_ContentVy018ThreatNotificationB016ImageColorSchemeVGMd, &_s7SwiftUI21_ViewModifier_ContentVy018ThreatNotificationB016ImageColorSchemeVGMR);
    lazy protocol witness table accessor for type VStack<TupleView<(ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Button<ModifiedContent<Text, _FlexFrameLayout>>, _PaddingLayout>, _FlexFrameLayout>, _InsettableBackgroundShapeModifier<Color, RoundedRectangle>>, AccessibilityAttachmentModifier>, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Text, _EnvironmentKeyWritingModifier<TextAlignment>>, _EnvironmentKeyWritingModifier<Font?>>, _ForegroundStyleModifier<HierarchicalShapeStyle>>, _FlexFrameLayout>, _PaddingLayout>, AccessibilityAttachmentModifier>)>> and conformance VStack<A>(&lazy protocol witness table cache variable for type _EnvironmentKeyWritingModifier<SymbolRenderingMode?> and conformance _EnvironmentKeyWritingModifier<A>, &_s7SwiftUI30_EnvironmentKeyWritingModifierVyAA19SymbolRenderingModeVSgGMd, &_s7SwiftUI30_EnvironmentKeyWritingModifierVyAA19SymbolRenderingModeVSgGMR);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<_ViewModifier_Content<ImageColorScheme>, _EnvironmentKeyWritingModifier<SymbolRenderingMode?>> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

uint64_t outlined init with take of _ConditionalContent<ModifiedContent<ModifiedContent<_ViewModifier_Content<ImageColorScheme>, _EnvironmentKeyWritingModifier<SymbolRenderingMode?>>, _ForegroundStyleModifier<Color>>, ModifiedContent<_ViewModifier_Content<ImageColorScheme>, _EnvironmentKeyWritingModifier<SymbolRenderingMode?>>>(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI19_ConditionalContentVyAA08ModifiedD0VyAEyAA014_ViewModifier_D0Vy018ThreatNotificationB016ImageColorSchemeVGAA022_EnvironmentKeyWritingG0VyAA19SymbolRenderingModeVSgGGAA016_ForegroundStyleG0VyAA0K0VGGARGMd, &_s7SwiftUI19_ConditionalContentVyAA08ModifiedD0VyAEyAA014_ViewModifier_D0Vy018ThreatNotificationB016ImageColorSchemeVGAA022_EnvironmentKeyWritingG0VyAA19SymbolRenderingModeVSgGGAA016_ForegroundStyleG0VyAA0K0VGGARGMR);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t lazy protocol witness table accessor for type _ConditionalContent<ModifiedContent<ModifiedContent<_ViewModifier_Content<ImageColorScheme>, _EnvironmentKeyWritingModifier<SymbolRenderingMode?>>, _ForegroundStyleModifier<Color>>, ModifiedContent<_ViewModifier_Content<ImageColorScheme>, _EnvironmentKeyWritingModifier<SymbolRenderingMode?>>> and conformance <> _ConditionalContent<A, B>()
{
  result = lazy protocol witness table cache variable for type _ConditionalContent<ModifiedContent<ModifiedContent<_ViewModifier_Content<ImageColorScheme>, _EnvironmentKeyWritingModifier<SymbolRenderingMode?>>, _ForegroundStyleModifier<Color>>, ModifiedContent<_ViewModifier_Content<ImageColorScheme>, _EnvironmentKeyWritingModifier<SymbolRenderingMode?>>> and conformance <> _ConditionalContent<A, B>;
  if (!lazy protocol witness table cache variable for type _ConditionalContent<ModifiedContent<ModifiedContent<_ViewModifier_Content<ImageColorScheme>, _EnvironmentKeyWritingModifier<SymbolRenderingMode?>>, _ForegroundStyleModifier<Color>>, ModifiedContent<_ViewModifier_Content<ImageColorScheme>, _EnvironmentKeyWritingModifier<SymbolRenderingMode?>>> and conformance <> _ConditionalContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI19_ConditionalContentVyAA08ModifiedD0VyAEyAA014_ViewModifier_D0Vy018ThreatNotificationB016ImageColorSchemeVGAA022_EnvironmentKeyWritingG0VyAA19SymbolRenderingModeVSgGGAA016_ForegroundStyleG0VyAA0K0VGGARGMd, &_s7SwiftUI19_ConditionalContentVyAA08ModifiedD0VyAEyAA014_ViewModifier_D0Vy018ThreatNotificationB016ImageColorSchemeVGAA022_EnvironmentKeyWritingG0VyAA19SymbolRenderingModeVSgGGAA016_ForegroundStyleG0VyAA0K0VGGARGMR);
    lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<_ViewModifier_Content<ImageColorScheme>, _EnvironmentKeyWritingModifier<SymbolRenderingMode?>>, _ForegroundStyleModifier<Color>> and conformance <> ModifiedContent<A, B>();
    lazy protocol witness table accessor for type ModifiedContent<_ViewModifier_Content<ImageColorScheme>, _EnvironmentKeyWritingModifier<SymbolRenderingMode?>> and conformance <> ModifiedContent<A, B>();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type _ConditionalContent<ModifiedContent<ModifiedContent<_ViewModifier_Content<ImageColorScheme>, _EnvironmentKeyWritingModifier<SymbolRenderingMode?>>, _ForegroundStyleModifier<Color>>, ModifiedContent<_ViewModifier_Content<ImageColorScheme>, _EnvironmentKeyWritingModifier<SymbolRenderingMode?>>> and conformance <> _ConditionalContent<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type _ConditionalContent<_ConditionalContent<ModifiedContent<ModifiedContent<_ViewModifier_Content<ImageColorScheme>, _EnvironmentKeyWritingModifier<SymbolRenderingMode?>>, _ForegroundStyleModifier<Color>>, ModifiedContent<_ViewModifier_Content<ImageColorScheme>, _EnvironmentKeyWritingModifier<SymbolRenderingMode?>>>, _ConditionalContent<ModifiedContent<ModifiedContent<_ViewModifier_Content<ImageColorScheme>, _EnvironmentKeyWritingModifier<SymbolRenderingMode?>>, _ForegroundStyleModifier<Color>>, ModifiedContent<_ViewModifier_Content<ImageColorScheme>, _EnvironmentKeyWritingModifier<SymbolRenderingMode?>>>> and conformance <> _ConditionalContent<A, B>()
{
  result = lazy protocol witness table cache variable for type _ConditionalContent<_ConditionalContent<ModifiedContent<ModifiedContent<_ViewModifier_Content<ImageColorScheme>, _EnvironmentKeyWritingModifier<SymbolRenderingMode?>>, _ForegroundStyleModifier<Color>>, ModifiedContent<_ViewModifier_Content<ImageColorScheme>, _EnvironmentKeyWritingModifier<SymbolRenderingMode?>>>, _ConditionalContent<ModifiedContent<ModifiedContent<_ViewModifier_Content<ImageColorScheme>, _EnvironmentKeyWritingModifier<SymbolRenderingMode?>>, _ForegroundStyleModifier<Color>>, ModifiedContent<_ViewModifier_Content<ImageColorScheme>, _EnvironmentKeyWritingModifier<SymbolRenderingMode?>>>> and conformance <> _ConditionalContent<A, B>;
  if (!lazy protocol witness table cache variable for type _ConditionalContent<_ConditionalContent<ModifiedContent<ModifiedContent<_ViewModifier_Content<ImageColorScheme>, _EnvironmentKeyWritingModifier<SymbolRenderingMode?>>, _ForegroundStyleModifier<Color>>, ModifiedContent<_ViewModifier_Content<ImageColorScheme>, _EnvironmentKeyWritingModifier<SymbolRenderingMode?>>>, _ConditionalContent<ModifiedContent<ModifiedContent<_ViewModifier_Content<ImageColorScheme>, _EnvironmentKeyWritingModifier<SymbolRenderingMode?>>, _ForegroundStyleModifier<Color>>, ModifiedContent<_ViewModifier_Content<ImageColorScheme>, _EnvironmentKeyWritingModifier<SymbolRenderingMode?>>>> and conformance <> _ConditionalContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI19_ConditionalContentVyACyAA08ModifiedD0VyAEyAA014_ViewModifier_D0Vy018ThreatNotificationB016ImageColorSchemeVGAA022_EnvironmentKeyWritingG0VyAA19SymbolRenderingModeVSgGGAA016_ForegroundStyleG0VyAA0K0VGGARGAYGMd, &_s7SwiftUI19_ConditionalContentVyACyAA08ModifiedD0VyAEyAA014_ViewModifier_D0Vy018ThreatNotificationB016ImageColorSchemeVGAA022_EnvironmentKeyWritingG0VyAA19SymbolRenderingModeVSgGGAA016_ForegroundStyleG0VyAA0K0VGGARGAYGMR);
    lazy protocol witness table accessor for type _ConditionalContent<ModifiedContent<ModifiedContent<_ViewModifier_Content<ImageColorScheme>, _EnvironmentKeyWritingModifier<SymbolRenderingMode?>>, _ForegroundStyleModifier<Color>>, ModifiedContent<_ViewModifier_Content<ImageColorScheme>, _EnvironmentKeyWritingModifier<SymbolRenderingMode?>>> and conformance <> _ConditionalContent<A, B>();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type _ConditionalContent<_ConditionalContent<ModifiedContent<ModifiedContent<_ViewModifier_Content<ImageColorScheme>, _EnvironmentKeyWritingModifier<SymbolRenderingMode?>>, _ForegroundStyleModifier<Color>>, ModifiedContent<_ViewModifier_Content<ImageColorScheme>, _EnvironmentKeyWritingModifier<SymbolRenderingMode?>>>, _ConditionalContent<ModifiedContent<ModifiedContent<_ViewModifier_Content<ImageColorScheme>, _EnvironmentKeyWritingModifier<SymbolRenderingMode?>>, _ForegroundStyleModifier<Color>>, ModifiedContent<_ViewModifier_Content<ImageColorScheme>, _EnvironmentKeyWritingModifier<SymbolRenderingMode?>>>> and conformance <> _ConditionalContent<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ImageColorScheme and conformance ImageColorScheme()
{
  result = lazy protocol witness table cache variable for type ImageColorScheme and conformance ImageColorScheme;
  if (!lazy protocol witness table cache variable for type ImageColorScheme and conformance ImageColorScheme)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ImageColorScheme and conformance ImageColorScheme);
  }

  return result;
}

id static TNUIWebViewController.makeWebViewController(url:)()
{
  v0 = objc_allocWithZone(MEMORY[0x277CDB700]);
  URL._bridgeToObjectiveC()(v1);
  v3 = v2;
  v4 = [v0 initWithURL_];

  return v4;
}

NSURLRequest __swiftcall URLRequest._bridgeToObjectiveC()()
{
  v0 = MEMORY[0x28211B400]();
  result._internal = v1;
  result.super.isa = v0;
  return result;
}

Swift::String __swiftcall NSLocalizedString(_:tableName:bundle:value:comment:)(Swift::String _, Swift::String_optional tableName, NSBundle bundle, Swift::String value, Swift::String comment)
{
  v5 = MEMORY[0x28211C320](_._countAndFlagsBits, _._object, tableName.value._countAndFlagsBits, tableName.value._object, bundle.super.isa, value._countAndFlagsBits, value._object, comment._countAndFlagsBits);
  result._object = v6;
  result._countAndFlagsBits = v5;
  return result;
}

uint64_t KeyedDecodingContainer.decode(_:forKey:)()
{
  return MEMORY[0x2821FDA00]();
}

{
  return MEMORY[0x2821FDA18]();
}

uint64_t KeyedEncodingContainer.encode(_:forKey:)()
{
  return MEMORY[0x2821FDB40]();
}

{
  return MEMORY[0x2821FDB58]();
}