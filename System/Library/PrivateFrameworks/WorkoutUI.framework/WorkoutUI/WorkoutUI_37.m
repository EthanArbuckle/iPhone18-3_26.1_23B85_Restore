uint64_t closure #1 in AlertConfigurationView.body.getter@<X0>(__int128 *a1@<X0>, uint64_t a2@<X8>)
{
  v71 = a2;
  v68 = type metadata accessor for AlertMultipleConfigurationView();
  MEMORY[0x28223BE20](v68);
  v4 = &v56 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v69 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI19_ConditionalContentV7StorageOyACy07WorkoutB028AlertSingleConfigurationViewVAF0g8MultipleiJ0VGs5NeverO_GMd);
  MEMORY[0x28223BE20](v69);
  v70 = &v56 - v5;
  v64 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI19_ConditionalContentV7StorageOy07WorkoutB028AlertSingleConfigurationViewVAF0g8MultipleiJ0V_GMd);
  MEMORY[0x28223BE20](v64);
  v65 = &v56 - v6;
  v66 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI19_ConditionalContentVy07WorkoutB028AlertSingleConfigurationViewVAD0f8MultiplehI0VGMd);
  MEMORY[0x28223BE20](v66);
  v67 = &v56 - v7;
  v8 = type metadata accessor for AlertConfigurationSessionContext();
  v73 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v61 = &v56 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v63 = type metadata accessor for AlertSingleConfigurationView();
  MEMORY[0x28223BE20](v63);
  v58 = &v56 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v59 = &v56 - v12;
  v13 = type metadata accessor for AlertConfigurationContext();
  v14 = *(v13 - 8);
  MEMORY[0x28223BE20](v13);
  v72 = &v56 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v18 = &v56 - v17;
  v79 = *a1;
  v80[0] = v79;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI5StateVy07WorkoutB027AlertConfigurationViewModelCGMd);
  State.wrappedValue.getter();
  v19 = *(v14 + 16);
  v19(v18, *&v74[0] + OBJC_IVAR____TtC9WorkoutUI27AlertConfigurationViewModel_configurationContext, v13);

  v60 = v14;
  v20 = *(v14 + 88);
  v62 = v18;
  v21 = v20(v18, v13);
  if (v21 == *MEMORY[0x277D7E4B8])
  {
    (*(v60 + 96))(v62, v13);
    v77 = &type metadata for AlertConfigurationView;
    v78 = &protocol witness table for AlertConfigurationView;
    v22 = swift_allocObject();
    v76[0] = v22;
    v23 = a1[3];
    v22[3] = a1[2];
    v22[4] = v23;
    v22[5] = a1[4];
    v24 = a1[1];
    v22[1] = *a1;
    v22[2] = v24;
    v74[0] = v79;
    outlined init with copy of AlertConfigurationView(a1, v80);
    State.wrappedValue.getter();
    v25 = *(*&v80[0] + 16);

    v80[0] = v79;
    State.wrappedValue.getter();
    v19(v72, *&v74[0] + OBJC_IVAR____TtC9WorkoutUI27AlertConfigurationViewModel_configurationContext, v13);

    v80[0] = v79;
    State.wrappedValue.getter();
    v26 = *(v73 + 16);
    v27 = v8;
    v28 = v61;
    v26(v61, *&v74[0] + OBJC_IVAR____TtC9WorkoutUI27AlertConfigurationViewModel_sessionContext, v27);

    v29 = v58;
    outlined init with copy of AlertConfigurationStateManaging(v76, v58);
    *(v29 + 40) = v25;
    v30 = v63;
    v31 = v29 + *(v63 + 24);
    v32 = v72;
    v57 = v13;
    v19(v31, v72, v13);
    v26((v29 + v30[7]), v28, v27);
    v33 = __swift_project_boxed_opaque_existential_1(v76, v77);
    v80[0] = *v33;
    v34 = v33[4];
    v36 = v33[1];
    v35 = v33[2];
    v80[3] = v33[3];
    v80[4] = v34;
    v80[1] = v36;
    v80[2] = v35;
    MEMORY[0x28223BE20](v33);
    v55 = v32;
    v75 = specialized _ArrayProtocol.filter(_:)(_s9WorkoutUI22AlertConfigurationViewV016orderedSupportedD5Types4withSayAA0cD4TypeOG0A4Core0cD7ContextO_tFSbAGXEfU_TA_1, (&v56 - 4), &outlined read-only object #0 of static AlertConfigurationType.allCases.getter);
    outlined init with copy of AlertConfigurationView(v80, v74);

    specialized MutableCollection<>.sort(by:)(&v75, v80);
    outlined destroy of AlertConfigurationView(v80);

    v38 = v75;
    MEMORY[0x28223BE20](v37);
    v54 = v76;
    v39 = specialized Sequence.first(where:)(partial apply for closure #1 in AlertSingleConfigurationView.init(stateHandler:activityType:configurationContext:sessionContext:), (&v56 - 4), v38);

    (*(v73 + 8))(v61, v27);
    (*(v60 + 8))(v72, v57);
    v40 = v29 + v30[8];
    *v40 = v39;
    *(v40 + 8) = 0;
    v41 = v29 + v30[9];
    *v41 = v39;
    *(v41 + 8) = 0;
    v42 = v59;
    outlined init with take of AlertConfigurationViewModel.ViewModelContainer(v29, v59, type metadata accessor for AlertSingleConfigurationView);
    __swift_destroy_boxed_opaque_existential_1(v76);
    _s9WorkoutUI27AlertConfigurationViewModelC0eF9ContainerOWOcTm_0(v42, v65, type metadata accessor for AlertSingleConfigurationView);
    swift_storeEnumTagMultiPayload();
    lazy protocol witness table accessor for type TargetZone.PrimaryType and conformance TargetZone.PrimaryType(&lazy protocol witness table cache variable for type AlertSingleConfigurationView and conformance AlertSingleConfigurationView, type metadata accessor for AlertSingleConfigurationView);
    lazy protocol witness table accessor for type TargetZone.PrimaryType and conformance TargetZone.PrimaryType(&lazy protocol witness table cache variable for type AlertMultipleConfigurationView and conformance AlertMultipleConfigurationView, type metadata accessor for AlertMultipleConfigurationView);
    v43 = v67;
    _ConditionalContent<>.init(storage:)();
    outlined init with copy of PowerZonesEntryView?(v43, v70, &_s7SwiftUI19_ConditionalContentVy07WorkoutB028AlertSingleConfigurationViewVAD0f8MultiplehI0VGMd);
    swift_storeEnumTagMultiPayload();
    lazy protocol witness table accessor for type _ConditionalContent<AlertSingleConfigurationView, AlertMultipleConfigurationView> and conformance <> _ConditionalContent<A, B>();
    _ConditionalContent<>.init(storage:)();
    outlined destroy of Group<_ConditionalContent<_ConditionalContent<AlertSingleConfigurationView, AlertMultipleConfigurationView>, Never>>(v43, &_s7SwiftUI19_ConditionalContentVy07WorkoutB028AlertSingleConfigurationViewVAD0f8MultiplehI0VGMd);
    _s9WorkoutUI27AlertConfigurationViewModelC0eF9ContainerOWOhTm_1(v42, type metadata accessor for AlertSingleConfigurationView);
    v44 = type metadata accessor for ConfigurationType();
    return (*(*(v44 - 8) + 8))(v62, v44);
  }

  else
  {
    v46 = v73;
    v72 = v8;
    if (v21 == *MEMORY[0x277D7E4C0])
    {
      v80[0] = v79;
      State.wrappedValue.getter();
      v62 = *(*&v74[0] + 16);

      v80[0] = v79;
      State.wrappedValue.getter();
      v47 = *(*&v74[0] + 24);

      v80[0] = v79;
      State.wrappedValue.getter();
      v48 = *(*&v74[0] + OBJC_IVAR____TtC9WorkoutUI27AlertConfigurationViewModel_activityMoveMode);

      *(v4 + 6) = &type metadata for AlertConfigurationView;
      *(v4 + 7) = &protocol witness table for AlertConfigurationView;
      v49 = swift_allocObject();
      *(v4 + 3) = v49;
      v50 = a1[3];
      v49[3] = a1[2];
      v49[4] = v50;
      v49[5] = a1[4];
      v51 = a1[1];
      v49[1] = *a1;
      v49[2] = v51;
      v74[0] = v79;
      outlined init with copy of AlertConfigurationView(a1, v80);
      State.wrappedValue.getter();
      v52 = v68;
      (*(v46 + 16))(&v4[*(v68 + 32)], *&v80[0] + OBJC_IVAR____TtC9WorkoutUI27AlertConfigurationViewModel_sessionContext, v72);

      v80[0] = v79;
      State.wrappedValue.getter();
      v19(&v4[*(v52 + 36)], *&v74[0] + OBJC_IVAR____TtC9WorkoutUI27AlertConfigurationViewModel_configurationContext, v13);

      *v4 = v62;
      *(v4 + 1) = v47;
      *(v4 + 2) = v48;
      _s9WorkoutUI27AlertConfigurationViewModelC0eF9ContainerOWOcTm_0(v4, v65, type metadata accessor for AlertMultipleConfigurationView);
      swift_storeEnumTagMultiPayload();
      lazy protocol witness table accessor for type TargetZone.PrimaryType and conformance TargetZone.PrimaryType(&lazy protocol witness table cache variable for type AlertSingleConfigurationView and conformance AlertSingleConfigurationView, type metadata accessor for AlertSingleConfigurationView);
      lazy protocol witness table accessor for type TargetZone.PrimaryType and conformance TargetZone.PrimaryType(&lazy protocol witness table cache variable for type AlertMultipleConfigurationView and conformance AlertMultipleConfigurationView, type metadata accessor for AlertMultipleConfigurationView);
      v53 = v67;
      _ConditionalContent<>.init(storage:)();
      outlined init with copy of PowerZonesEntryView?(v53, v70, &_s7SwiftUI19_ConditionalContentVy07WorkoutB028AlertSingleConfigurationViewVAD0f8MultiplehI0VGMd);
      swift_storeEnumTagMultiPayload();
      lazy protocol witness table accessor for type _ConditionalContent<AlertSingleConfigurationView, AlertMultipleConfigurationView> and conformance <> _ConditionalContent<A, B>();
      _ConditionalContent<>.init(storage:)();
      outlined destroy of Group<_ConditionalContent<_ConditionalContent<AlertSingleConfigurationView, AlertMultipleConfigurationView>, Never>>(v53, &_s7SwiftUI19_ConditionalContentVy07WorkoutB028AlertSingleConfigurationViewVAD0f8MultiplehI0VGMd);
      return _s9WorkoutUI27AlertConfigurationViewModelC0eF9ContainerOWOhTm_1(v4, type metadata accessor for AlertMultipleConfigurationView);
    }

    else
    {
      result = _assertionFailure(_:_:file:line:flags:)();
      __break(1u);
    }
  }

  return result;
}

uint64_t closure #2 in AlertConfigurationView.body.getter()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI5StateVy07WorkoutB027AlertConfigurationViewModelCGMd);
  State.wrappedValue.getter();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI5StateVy11WorkoutCore10TargetZoneCGMd);
  State.wrappedValue.getter();
  AlertConfigurationViewModel.updateTargetZone(_:)(v1);
}

uint64_t closure #3 in AlertConfigurationView.body.getter()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI5StateVy07WorkoutB027AlertConfigurationViewModelCGMd);
  State.wrappedValue.getter();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI5StateVy11WorkoutCore10TargetZoneCGMd);
  State.wrappedValue.getter();
  AlertConfigurationViewModel.updateTargetZone(_:)(v1);
}

uint64_t closure #4 in AlertConfigurationView.body.getter()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI5StateVy07WorkoutB027AlertConfigurationViewModelCGMd);
  State.wrappedValue.getter();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI5StateVy11WorkoutCore10TargetZoneCGMd);
  State.wrappedValue.getter();
  AlertConfigurationViewModel.updateTargetZone(_:)(v1);
}

uint64_t closure #1 in AlertConfigurationView.viewForConfigurationType(_:sessionContext:)@<X0>(uint64_t a1@<X2>, void *a2@<X8>)
{
  swift_getKeyPath();
  lazy protocol witness table accessor for type TargetZone.PrimaryType and conformance TargetZone.PrimaryType(&lazy protocol witness table cache variable for type ActivityPersistingViewModel and conformance ActivityPersistingViewModel, type metadata accessor for ActivityPersistingViewModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  swift_beginAccess();
  *a2 = *(a1 + 64);
}

uint64_t closure #3 in AlertConfigurationView.viewForConfigurationType(_:sessionContext:)@<X0>(uint64_t a1@<X2>, void *a2@<X8>)
{
  swift_getKeyPath();
  lazy protocol witness table accessor for type TargetZone.PrimaryType and conformance TargetZone.PrimaryType(&lazy protocol witness table cache variable for type ActivityPersistingViewModel and conformance ActivityPersistingViewModel, type metadata accessor for ActivityPersistingViewModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  swift_beginAccess();
  *a2 = *(a1 + 56);
}

id closure #5 in AlertConfigurationView.viewForConfigurationType(_:sessionContext:)@<X0>(uint64_t a1@<X2>, void *a2@<X8>)
{
  swift_getKeyPath();
  lazy protocol witness table accessor for type TargetZone.PrimaryType and conformance TargetZone.PrimaryType(&lazy protocol witness table cache variable for type ActivityPersistingViewModel and conformance ActivityPersistingViewModel, type metadata accessor for ActivityPersistingViewModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  swift_beginAccess();
  v4 = *(a1 + 40);
  *a2 = v4;

  return v4;
}

id closure #7 in AlertConfigurationView.viewForConfigurationType(_:sessionContext:)@<X0>(uint64_t a1@<X2>, void *a2@<X8>)
{
  swift_getKeyPath();
  lazy protocol witness table accessor for type TargetZone.PrimaryType and conformance TargetZone.PrimaryType(&lazy protocol witness table cache variable for type ActivityPersistingViewModel and conformance ActivityPersistingViewModel, type metadata accessor for ActivityPersistingViewModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  swift_beginAccess();
  v4 = *(a1 + 48);
  *a2 = v4;

  return v4;
}

uint64_t closure #9 in AlertConfigurationView.viewForConfigurationType(_:sessionContext:)@<X0>(uint64_t a1@<X2>, void *a2@<X8>)
{
  swift_getKeyPath();
  lazy protocol witness table accessor for type TargetZone.PrimaryType and conformance TargetZone.PrimaryType(&lazy protocol witness table cache variable for type ActivityPersistingViewModel and conformance ActivityPersistingViewModel, type metadata accessor for ActivityPersistingViewModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  swift_beginAccess();
  *a2 = *(a1 + 72);
}

uint64_t specialized static AlertConfigurationView.defaultTargetZone(primaryType:configurationContext:)(uint64_t a1, uint64_t a2)
{
  v33 = a1;
  v3 = type metadata accessor for TargetZone.ZoneType();
  v34 = *(v3 - 8);
  v35 = v3;
  MEMORY[0x28223BE20](v3);
  v36 = &v31 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32 = type metadata accessor for TargetZone.PrimaryType();
  v5 = *(v32 - 8);
  v6 = MEMORY[0x28223BE20](v32);
  v8 = &v31 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v31 = &v31 - v9;
  v10 = type metadata accessor for AlertConfigurationContext();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = &v31 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for ConfigurationType();
  v15 = *(v14 - 8);
  v16 = MEMORY[0x28223BE20](v14);
  v18 = &v31 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v20 = &v31 - v19;
  (*(v11 + 16))(v13, a2, v10);
  if ((*(v11 + 88))(v13, v10) != *MEMORY[0x277D7E4B8])
  {
    (*(v11 + 8))(v13, v10);
    goto LABEL_8;
  }

  (*(v11 + 96))(v13, v10);
  (*(v15 + 32))(v20, v13, v14);
  (*(v15 + 104))(v18, *MEMORY[0x277D7E110], v14);
  lazy protocol witness table accessor for type TargetZone.PrimaryType and conformance TargetZone.PrimaryType(&lazy protocol witness table cache variable for type ConfigurationType and conformance ConfigurationType, MEMORY[0x277D7E118]);
  dispatch thunk of RawRepresentable.rawValue.getter();
  dispatch thunk of RawRepresentable.rawValue.getter();
  v21 = *(v15 + 8);
  v21(v18, v14);
  if (v38 != v37)
  {
    v21(v20, v14);
LABEL_8:
    v26 = v32;
    (*(v5 + 16))(v8, v33, v32);
    v27 = (*(v5 + 88))(v8, v26);
    if (v27 != *MEMORY[0x277D7DEB8])
    {
      if (v27 == *MEMORY[0x277D7DEC0])
      {
        v28 = MEMORY[0x277D7DE40];
      }

      else if (v27 == *MEMORY[0x277D7DED0])
      {
        v28 = MEMORY[0x277D7DE58];
      }

      else
      {
        if (v27 != *MEMORY[0x277D7DEC8])
        {
          goto LABEL_21;
        }

        v28 = MEMORY[0x277D7DE50];
      }

      (*(v34 + 104))(v36, *v28, v35);
      type metadata accessor for TargetZone();
      swift_allocObject();
      return TargetZone.init(type:min:max:enabled:)();
    }

    while (1)
    {
LABEL_21:
      _assertionFailure(_:_:file:line:flags:)();
      __break(1u);
    }
  }

  v23 = v31;
  v22 = v32;
  (*(v5 + 16))(v31, v33, v32);
  v24 = (*(v5 + 88))(v23, v22);
  if (v24 == *MEMORY[0x277D7DEB8])
  {
    goto LABEL_21;
  }

  if (v24 != *MEMORY[0x277D7DEC0])
  {
    if (v24 == *MEMORY[0x277D7DED0])
    {
      v25 = MEMORY[0x277D7DE70];
      goto LABEL_20;
    }

    if (v24 == *MEMORY[0x277D7DEC8])
    {
      v25 = MEMORY[0x277D7DE68];
      goto LABEL_20;
    }

    goto LABEL_21;
  }

  v25 = MEMORY[0x277D7DE60];
LABEL_20:
  (*(v34 + 104))(v36, *v25, v35);
  type metadata accessor for TargetZone();
  swift_allocObject();
  v30 = TargetZone.init(type:min:max:enabled:)();
  v21(v20, v14);
  return v30;
}

unint64_t lazy protocol witness table accessor for type Group<_ConditionalContent<_ConditionalContent<AlertSingleConfigurationView, AlertMultipleConfigurationView>, Never>> and conformance <A> Group<A>()
{
  result = lazy protocol witness table cache variable for type Group<_ConditionalContent<_ConditionalContent<AlertSingleConfigurationView, AlertMultipleConfigurationView>, Never>> and conformance <A> Group<A>;
  if (!lazy protocol witness table cache variable for type Group<_ConditionalContent<_ConditionalContent<AlertSingleConfigurationView, AlertMultipleConfigurationView>, Never>> and conformance <A> Group<A>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI5GroupVyAA19_ConditionalContentVyAEy07WorkoutB028AlertSingleConfigurationViewVAF0g8MultipleiJ0VGs5NeverOGGMd);
    lazy protocol witness table accessor for type _ConditionalContent<_ConditionalContent<AlertSingleConfigurationView, AlertMultipleConfigurationView>, Never> and conformance <> _ConditionalContent<A, B>();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Group<_ConditionalContent<_ConditionalContent<AlertSingleConfigurationView, AlertMultipleConfigurationView>, Never>> and conformance <A> Group<A>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type _ConditionalContent<_ConditionalContent<AlertSingleConfigurationView, AlertMultipleConfigurationView>, Never> and conformance <> _ConditionalContent<A, B>()
{
  result = lazy protocol witness table cache variable for type _ConditionalContent<_ConditionalContent<AlertSingleConfigurationView, AlertMultipleConfigurationView>, Never> and conformance <> _ConditionalContent<A, B>;
  if (!lazy protocol witness table cache variable for type _ConditionalContent<_ConditionalContent<AlertSingleConfigurationView, AlertMultipleConfigurationView>, Never> and conformance <> _ConditionalContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI19_ConditionalContentVyACy07WorkoutB028AlertSingleConfigurationViewVAD0f8MultiplehI0VGs5NeverOGMd);
    lazy protocol witness table accessor for type _ConditionalContent<AlertSingleConfigurationView, AlertMultipleConfigurationView> and conformance <> _ConditionalContent<A, B>();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type _ConditionalContent<_ConditionalContent<AlertSingleConfigurationView, AlertMultipleConfigurationView>, Never> and conformance <> _ConditionalContent<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type _ConditionalContent<AlertSingleConfigurationView, AlertMultipleConfigurationView> and conformance <> _ConditionalContent<A, B>()
{
  result = lazy protocol witness table cache variable for type _ConditionalContent<AlertSingleConfigurationView, AlertMultipleConfigurationView> and conformance <> _ConditionalContent<A, B>;
  if (!lazy protocol witness table cache variable for type _ConditionalContent<AlertSingleConfigurationView, AlertMultipleConfigurationView> and conformance <> _ConditionalContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI19_ConditionalContentVy07WorkoutB028AlertSingleConfigurationViewVAD0f8MultiplehI0VGMd);
    lazy protocol witness table accessor for type TargetZone.PrimaryType and conformance TargetZone.PrimaryType(&lazy protocol witness table cache variable for type AlertSingleConfigurationView and conformance AlertSingleConfigurationView, type metadata accessor for AlertSingleConfigurationView);
    lazy protocol witness table accessor for type TargetZone.PrimaryType and conformance TargetZone.PrimaryType(&lazy protocol witness table cache variable for type AlertMultipleConfigurationView and conformance AlertMultipleConfigurationView, type metadata accessor for AlertMultipleConfigurationView);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type _ConditionalContent<AlertSingleConfigurationView, AlertMultipleConfigurationView> and conformance <> _ConditionalContent<A, B>);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for AlertConfigurationView(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 80))
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

uint64_t storeEnumTagSinglePayload for AlertConfigurationView(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 72) = 0;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 80) = 1;
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

    *(result + 80) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t lazy protocol witness table accessor for type TrackEntryView? and conformance <A> A?(unint64_t *a1, uint64_t *a2, uint64_t a3, void (*a4)(void))
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2);
    a4();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type TupleView<(AlertsEntryView, TupleView<(PacerAlertsEntryView?, RaceAlertsEntryView?)>?)> and conformance TupleView<A>()
{
  result = lazy protocol witness table cache variable for type TupleView<(AlertsEntryView, TupleView<(PacerAlertsEntryView?, RaceAlertsEntryView?)>?)> and conformance TupleView<A>;
  if (!lazy protocol witness table cache variable for type TupleView<(AlertsEntryView, TupleView<(PacerAlertsEntryView?, RaceAlertsEntryView?)>?)> and conformance TupleView<A>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI9TupleViewVy07WorkoutB0011AlertsEntryD0V_ACyAD05PacerfgD0VSg_AD04RacefgD0VSgtGSgtGMd);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type TupleView<(AlertsEntryView, TupleView<(PacerAlertsEntryView?, RaceAlertsEntryView?)>?)> and conformance TupleView<A>);
  }

  return result;
}

uint64_t partial apply for implicit closure #2 in implicit closure #1 in PowerZonesEntryView.init(powerZonesAlertTargetZone:activityType:dataModel:configurationContext:formattingManager:)()
{
  type metadata accessor for PowerZonesEntryView();

  return implicit closure #2 in implicit closure #1 in PowerZonesEntryView.init(powerZonesAlertTargetZone:activityType:dataModel:configurationContext:formattingManager:)();
}

uint64_t outlined copy of TrackEntryView?(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6)
{
  if (a2)
  {

    v7 = a6;
  }

  return result;
}

uint64_t outlined consume of TrackEntryView?(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6)
{
  if (a2)
  {
  }

  return result;
}

uint64_t objectdestroy_13Tm_1()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t objectdestroyTm_82()
{

  return swift_deallocObject();
}

uint64_t outlined init with copy of PowerZonesEntryView?(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(a3);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t outlined destroy of Group<_ConditionalContent<_ConditionalContent<AlertSingleConfigurationView, AlertMultipleConfigurationView>, Never>>(uint64_t a1, uint64_t *a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(a2);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t outlined init with take of AlertConfigurationViewModel.ViewModelContainer(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t _s9WorkoutUI27AlertConfigurationViewModelC0eF9ContainerOWOcTm_0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t _s9WorkoutUI27AlertConfigurationViewModelC0eF9ContainerOWOhTm_1(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t lazy protocol witness table accessor for type TargetZone.PrimaryType and conformance TargetZone.PrimaryType(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t _sSDsSQR_rlE2eeoiySbSDyxq_G_ABtFZ9HealthKit8DayIndexV_9WorkoutUI21TrainingLoadViewModelV10ChartPointVTt1g5(uint64_t a1, uint64_t a2)
{
  View = type metadata accessor for TrainingLoadViewModel.ChartPoint(0);
  v76 = *(View - 8);
  v4 = MEMORY[0x28223BE20](View);
  v6 = &v61 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = MEMORY[0x28223BE20](v4);
  v9 = &v61 - v8;
  MEMORY[0x28223BE20](v7);
  v71 = &v61 - v10;
  v77 = type metadata accessor for DayIndex();
  v73 = *(v77 - 8);
  v11 = MEMORY[0x28223BE20](v77);
  v72 = &v61 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v70 = &v61 - v13;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9HealthKit8DayIndexV3key_9WorkoutUI21TrainingLoadViewModelV10ChartPointV5valuetSgMd);
  v15 = MEMORY[0x28223BE20](v14 - 8);
  result = MEMORY[0x28223BE20](v15);
  if (a1 == a2)
  {
    return 1;
  }

  if (*(a1 + 16) != *(a2 + 16))
  {
    return 0;
  }

  v68 = &v61 - v17;
  v69 = v18;
  v67 = a2;
  v19 = 0;
  v65 = a1;
  v20 = *(a1 + 64);
  v61 = a1 + 64;
  v21 = 1 << *(a1 + 32);
  v22 = -1;
  if (v21 < 64)
  {
    v22 = ~(-1 << v21);
  }

  v23 = v22 & v20;
  v24 = (v21 + 63) >> 6;
  v63 = v73 + 16;
  v64 = v6;
  v75 = (v73 + 32);
  v66 = (v73 + 8);
  v62 = v24;
  while (v23)
  {
    v74 = (v23 - 1) & v23;
    v25 = __clz(__rbit64(v23)) | (v19 << 6);
LABEL_18:
    v31 = v65;
    v32 = v73;
    (*(v73 + 16))(v70, *(v65 + 48) + *(v73 + 72) * v25, v77);
    v33 = v71;
    outlined init with copy of TrainingLoadViewModel.ChartPoint(*(v31 + 56) + *(v76 + 72) * v25, v71);
    v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9HealthKit8DayIndexV3key_9WorkoutUI21TrainingLoadViewModelV10ChartPointV5valuetMd);
    v35 = *(v34 + 48);
    v28 = v69;
    (*(v32 + 32))();
    outlined init with take of TrainingLoadViewModel.ChartPoint(v33, v28 + v35);
    (*(*(v34 - 8) + 56))(v28, 0, 1, v34);
    v6 = v64;
    v24 = v62;
LABEL_19:
    v36 = v68;
    outlined init with take of (key: DayIndex, value: TrainingLoadSampleDaySummary)?(v28, v68, &_s9HealthKit8DayIndexV3key_9WorkoutUI21TrainingLoadViewModelV10ChartPointV5valuetSgMd);
    v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9HealthKit8DayIndexV3key_9WorkoutUI21TrainingLoadViewModelV10ChartPointV5valuetMd);
    v38 = 1;
    if ((*(*(v37 - 8) + 48))(v36, 1, v37) == 1)
    {
      return v38;
    }

    v39 = *(v37 + 48);
    v40 = v36;
    v41 = v9;
    v42 = v72;
    v43 = v36;
    v44 = v77;
    (*v75)(v72, v43, v77);
    outlined init with take of TrainingLoadViewModel.ChartPoint(v40 + v39, v41);
    v45 = v67;
    v46 = specialized __RawDictionaryStorage.find<A>(_:)(v42);
    v48 = v47;
    v49 = v42;
    v9 = v41;
    (*v66)(v49, v44);
    if ((v48 & 1) == 0)
    {
      goto LABEL_38;
    }

    outlined init with copy of TrainingLoadViewModel.ChartPoint(*(v45 + 56) + *(v76 + 72) * v46, v6);
    if ((static Date.== infix(_:_:)() & 1) == 0)
    {
      goto LABEL_37;
    }

    lazy protocol witness table accessor for type AlertButtonViewModel and conformance AlertButtonViewModel(&lazy protocol witness table cache variable for type DayIndex and conformance DayIndex, MEMORY[0x277CCB6A8]);
    dispatch thunk of Strideable.distance(to:)();
    if (v79)
    {
      goto LABEL_37;
    }

    v50 = *(View + 24);
    v51 = &v6[v50];
    v52 = v6[v50 + 8];
    v53 = (v41 + v50);
    v54 = *(v41 + v50 + 8);
    if (v52)
    {
      if (!v54)
      {
        goto LABEL_37;
      }
    }

    else
    {
      if (*v51 != *v53)
      {
        LOBYTE(v54) = 1;
      }

      if (v54)
      {
LABEL_37:
        outlined destroy of TrainingLoadViewModel.ChartPoint(v6);
LABEL_38:
        outlined destroy of TrainingLoadViewModel.ChartPoint(v41);
        return 0;
      }
    }

    if ((static Color.== infix(_:_:)() & 1) == 0)
    {
      goto LABEL_37;
    }

    v55 = *(View + 32);
    v56 = &v6[v55];
    v57 = v6[v55 + 8];
    v58 = (v41 + v55);
    v59 = *(v41 + v55 + 8);
    if (v57)
    {
      if (!v59)
      {
        goto LABEL_37;
      }
    }

    else
    {
      if (*v56 != *v58)
      {
        LOBYTE(v59) = 1;
      }

      if (v59)
      {
        goto LABEL_37;
      }
    }

    outlined destroy of TrainingLoadViewModel.ChartPoint(v6);
    result = outlined destroy of TrainingLoadViewModel.ChartPoint(v41);
    v23 = v74;
  }

  if (v24 <= v19 + 1)
  {
    v26 = v19 + 1;
  }

  else
  {
    v26 = v24;
  }

  v27 = v26 - 1;
  v28 = v69;
  while (1)
  {
    v29 = v19 + 1;
    if (__OFADD__(v19, 1))
    {
      break;
    }

    if (v29 >= v24)
    {
      v60 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9HealthKit8DayIndexV3key_9WorkoutUI21TrainingLoadViewModelV10ChartPointV5valuetMd);
      (*(*(v60 - 8) + 56))(v28, 1, 1, v60);
      v74 = 0;
      v19 = v27;
      goto LABEL_19;
    }

    v30 = *(v61 + 8 * v29);
    ++v19;
    if (v30)
    {
      v74 = (v30 - 1) & v30;
      v25 = __clz(__rbit64(v30)) | (v29 << 6);
      v19 = v29;
      goto LABEL_18;
    }
  }

  __break(1u);
  return result;
}

uint64_t _sSDsSQR_rlE2eeoiySbSDyxq_G_ABtFZ9HealthKit8DayIndexV_0B7Balance018TrainingLoadSampleD7SummaryVTt1g5(uint64_t a1, uint64_t a2)
{
  SampleDaySummary = type metadata accessor for TrainingLoadSampleDaySummary();
  v79 = *(SampleDaySummary - 8);
  v5 = MEMORY[0x28223BE20](SampleDaySummary);
  v7 = &v59 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v77 = &v59 - v8;
  v78 = type metadata accessor for DayIndex();
  v69 = *(v78 - 8);
  v9 = MEMORY[0x28223BE20](v78);
  v70 = &v59 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v68 = &v59 - v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9HealthKit8DayIndexV3key_0A7Balance018TrainingLoadSampleC7SummaryV5valuetSgMd);
  v13 = MEMORY[0x28223BE20](v12 - 8);
  result = MEMORY[0x28223BE20](v13);
  v72 = &v59 - v16;
  if (a1 == a2)
  {
    return 1;
  }

  if (*(a1 + 16) != *(a2 + 16))
  {
    return 0;
  }

  v71 = v15;
  v66 = v7;
  v67 = a2;
  v17 = 0;
  v63 = a1;
  v20 = *(a1 + 64);
  v19 = a1 + 64;
  v18 = v20;
  v21 = 1 << *(v19 - 32);
  v22 = -1;
  if (v21 < 64)
  {
    v22 = ~(-1 << v21);
  }

  v23 = v22 & v18;
  v60 = (v21 + 63) >> 6;
  v61 = v19;
  v62 = v69 + 16;
  v76 = (v69 + 32);
  v74 = v79 + 16;
  v75 = (v79 + 32);
  v64 = (v69 + 8);
  v65 = (v79 + 8);
  while (v23)
  {
    v73 = (v23 - 1) & v23;
    v24 = __clz(__rbit64(v23)) | (v17 << 6);
LABEL_16:
    v31 = v63;
    v33 = v68;
    v32 = v69;
    v34 = v78;
    (*(v69 + 16))(v68, *(v63 + 48) + *(v69 + 72) * v24, v78);
    v35 = *(v31 + 56);
    v36 = v79;
    v37 = v77;
    (*(v79 + 16))(v77, v35 + *(v79 + 72) * v24, SampleDaySummary);
    v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9HealthKit8DayIndexV3key_0A7Balance018TrainingLoadSampleC7SummaryV5valuetMd);
    v39 = *(v38 + 48);
    v40 = *(v32 + 32);
    v28 = v71;
    v40(v71, v33, v34);
    (*(v36 + 32))(v28 + v39, v37, SampleDaySummary);
    (*(*(v38 - 8) + 56))(v28, 0, 1, v38);
    v27 = v72;
    v23 = v73;
LABEL_17:
    outlined init with take of (key: DayIndex, value: TrainingLoadSampleDaySummary)?(v28, v27, &_s9HealthKit8DayIndexV3key_0A7Balance018TrainingLoadSampleC7SummaryV5valuetSgMd);
    v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9HealthKit8DayIndexV3key_0A7Balance018TrainingLoadSampleC7SummaryV5valuetMd);
    v42 = (*(*(v41 - 8) + 48))(v27, 1, v41);
    v43 = v42 == 1;
    if (v42 == 1)
    {
      return v43;
    }

    v44 = *(v41 + 48);
    v45 = SampleDaySummary;
    v46 = v70;
    v47 = v78;
    (*v76)(v70, v27, v78);
    v48 = v66;
    (*v75)(v66, v27 + v44, v45);
    v49 = v67;
    v50 = specialized __RawDictionaryStorage.find<A>(_:)(v46);
    v52 = v51;
    (*v64)(v46, v47);
    if ((v52 & 1) == 0)
    {
      (*v65)(v48, v45);
      return 0;
    }

    v53 = v79;
    v54 = *(v49 + 56) + *(v79 + 72) * v50;
    v55 = v77;
    (*(v79 + 16))(v77, v54, v45);
    lazy protocol witness table accessor for type AlertButtonViewModel and conformance AlertButtonViewModel(&lazy protocol witness table cache variable for type TrainingLoadSampleDaySummary and conformance TrainingLoadSampleDaySummary, MEMORY[0x277D10028]);
    v56 = dispatch thunk of static Equatable.== infix(_:_:)();
    v57 = *(v53 + 8);
    v57(v55, v45);
    result = (v57)(v48, v45);
    SampleDaySummary = v45;
    if ((v56 & 1) == 0)
    {
      return v43;
    }
  }

  if (v60 <= v17 + 1)
  {
    v25 = v17 + 1;
  }

  else
  {
    v25 = v60;
  }

  v26 = v25 - 1;
  v28 = v71;
  v27 = v72;
  while (1)
  {
    v29 = v17 + 1;
    if (__OFADD__(v17, 1))
    {
      break;
    }

    if (v29 >= v60)
    {
      v58 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9HealthKit8DayIndexV3key_0A7Balance018TrainingLoadSampleC7SummaryV5valuetMd);
      (*(*(v58 - 8) + 56))(v28, 1, 1, v58);
      v23 = 0;
      v17 = v26;
      goto LABEL_17;
    }

    v30 = *(v61 + 8 * v29);
    ++v17;
    if (v30)
    {
      v73 = (v30 - 1) & v30;
      v24 = __clz(__rbit64(v30)) | (v29 << 6);
      v17 = v29;
      goto LABEL_16;
    }
  }

  __break(1u);
  return result;
}

uint64_t _sSDsSQR_rlE2eeoiySbSDyxq_G_ABtFZSS_SbTt1g5(uint64_t result, uint64_t a2)
{
  if (result == a2)
  {
    return 1;
  }

  v3 = result;
  if (*(result + 16) != *(a2 + 16))
  {
    return 0;
  }

  v4 = 0;
  v5 = 1 << *(result + 32);
  v6 = -1;
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  v7 = v6 & *(result + 64);
  v8 = (v5 + 63) >> 6;
  while (v7)
  {
    v9 = __clz(__rbit64(v7));
    v7 &= v7 - 1;
LABEL_13:
    v12 = v9 | (v4 << 6);
    v13 = (*(v3 + 48) + 16 * v12);
    v14 = *v13;
    v15 = v13[1];
    v16 = *(*(v3 + 56) + v12);

    v17 = specialized __RawDictionaryStorage.find<A>(_:)(v14, v15);
    v19 = v18;

    if ((v19 & 1) == 0 || v16 != *(*(a2 + 56) + v17))
    {
      return 0;
    }
  }

  v10 = v4;
  while (1)
  {
    v4 = v10 + 1;
    if (__OFADD__(v10, 1))
    {
      break;
    }

    if (v4 >= v8)
    {
      return 1;
    }

    v11 = *(v3 + 64 + 8 * v4);
    ++v10;
    if (v11)
    {
      v9 = __clz(__rbit64(v11));
      v7 = (v11 - 1) & v11;
      goto LABEL_13;
    }
  }

  __break(1u);
  return result;
}

uint64_t _sSh2eeoiySbShyxG_ABtFZ7Combine14AnyCancellableC_Tt1g5(uint64_t a1, uint64_t a2)
{
  v3 = a2 & 0xC000000000000001;
  if ((a1 & 0xC000000000000001) != 0)
  {
    if (a1 < 0)
    {
      v4 = a1;
    }

    else
    {
      v4 = a1 & 0xFFFFFFFFFFFFFF8;
    }

    if (v3)
    {
      if (a2 < 0)
      {
        v5 = a2;
      }

      else
      {
        v5 = (a2 & 0xFFFFFFFFFFFFFF8);
      }

      return MEMORY[0x2821FCF40](v5, v4);
    }

    v8 = v4;
    v7 = a2;
  }

  else
  {
    if (!v3)
    {
      if (a1 == a2)
      {
        return 1;
      }

      if (*(a1 + 16) == *(a2 + 16))
      {
        v10 = a1 + 56;
        v11 = 1 << *(a1 + 32);
        if (v11 < 64)
        {
          v12 = ~(-1 << v11);
        }

        else
        {
          v12 = -1;
        }

        v13 = v12 & *(a1 + 56);
        type metadata accessor for AnyCancellable();
        v14 = 0;
        v15 = (v11 + 63) >> 6;
        v16 = a2 + 56;
        v5 = &lazy protocol witness table cache variable for type AnyCancellable and conformance AnyCancellable;
        if (!v13)
        {
LABEL_27:
          v17 = v14;
          while (1)
          {
            v14 = v17 + 1;
            if (__OFADD__(v17, 1))
            {
              break;
            }

            if (v14 >= v15)
            {
              return 1;
            }

            v18 = *(v10 + 8 * v14);
            ++v17;
            if (v18)
            {
              v23 = (v18 - 1) & v18;
              goto LABEL_32;
            }
          }

          __break(1u);
          return MEMORY[0x2821FCF40](v5, v4);
        }

        while (1)
        {
          v23 = (v13 - 1) & v13;
LABEL_32:
          lazy protocol witness table accessor for type AlertButtonViewModel and conformance AlertButtonViewModel(&lazy protocol witness table cache variable for type AnyCancellable and conformance AnyCancellable, MEMORY[0x277CBCDA8]);

          v19 = dispatch thunk of Hashable._rawHashValue(seed:)();
          v20 = -1 << *(a2 + 32);
          v21 = v19 & ~v20;
          if (((*(v16 + ((v21 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v21) & 1) == 0)
          {
            break;
          }

          v22 = ~v20;
          lazy protocol witness table accessor for type AlertButtonViewModel and conformance AlertButtonViewModel(&lazy protocol witness table cache variable for type AnyCancellable and conformance AnyCancellable, MEMORY[0x277CBCDA8]);
          while ((dispatch thunk of static Equatable.== infix(_:_:)() & 1) == 0)
          {
            v21 = (v21 + 1) & v22;
            if (((*(v16 + ((v21 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v21) & 1) == 0)
            {
              goto LABEL_40;
            }
          }

          v15 = (v11 + 63) >> 6;
          v13 = v23;
          v5 = &lazy protocol witness table cache variable for type AnyCancellable and conformance AnyCancellable;
          if (!v23)
          {
            goto LABEL_27;
          }
        }

LABEL_40:
      }

      return 0;
    }

    v6 = a2 & 0xFFFFFFFFFFFFFF8;
    if (a2 < 0)
    {
      v6 = a2;
    }

    v7 = a1;
    v8 = v6;
  }

  return specialized _NativeSet.isEqual(to:)(v8, v7);
}

void _sSh2eeoiySbShyxG_ABtFZ11WorkoutCore0B25VoiceAvailabilityProviderC19UnavailabilityErrorO_Tt1g5(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for WorkoutVoiceAvailabilityProvider.UnavailabilityError();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v33 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v44 = &v33 - v9;
  v12.n128_f64[0] = MEMORY[0x28223BE20](v10);
  v13 = &v33 - v11;
  if (a1 != a2 && *(a1 + 16) == *(a2 + 16))
  {
    v14 = 0;
    v15 = *(a1 + 56);
    v33 = a1 + 56;
    v16 = 1 << *(a1 + 32);
    if (v16 < 64)
    {
      v17 = ~(-1 << v16);
    }

    else
    {
      v17 = -1;
    }

    v18 = v17 & v15;
    v19 = (v16 + 63) >> 6;
    v40 = v5 + 32;
    v42 = a2 + 56;
    v43 = v5 + 16;
    v20 = (v5 + 8);
    v34 = v19;
    v35 = &v33 - v11;
    v36 = v5;
    v37 = a1;
    if (v18)
    {
      while (1)
      {
        v21 = __clz(__rbit64(v18));
        v39 = (v18 - 1) & v18;
LABEL_13:
        v24 = *(a1 + 48);
        v41 = *(v5 + 72);
        v25 = *(v5 + 16);
        v25(v13, v24 + v41 * (v21 | (v14 << 6)), v4, v12);
        (*(v5 + 32))(v44, v13, v4);
        lazy protocol witness table accessor for type AlertButtonViewModel and conformance AlertButtonViewModel(&lazy protocol witness table cache variable for type WorkoutVoiceAvailabilityProvider.UnavailabilityError and conformance WorkoutVoiceAvailabilityProvider.UnavailabilityError, MEMORY[0x277D7DCD0]);
        v26 = dispatch thunk of Hashable._rawHashValue(seed:)();
        v27 = -1 << *(a2 + 32);
        v28 = v26 & ~v27;
        if (((*(v42 + ((v28 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v28) & 1) == 0)
        {
          break;
        }

        v38 = v20 & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
        v29 = a2;
        v30 = ~v27;
        while (1)
        {
          (v25)(v7, *(v29 + 48) + v28 * v41, v4);
          lazy protocol witness table accessor for type AlertButtonViewModel and conformance AlertButtonViewModel(&lazy protocol witness table cache variable for type WorkoutVoiceAvailabilityProvider.UnavailabilityError and conformance WorkoutVoiceAvailabilityProvider.UnavailabilityError, MEMORY[0x277D7DCD0]);
          v31 = dispatch thunk of static Equatable.== infix(_:_:)();
          v32 = *v20;
          (*v20)(v7, v4);
          if (v31)
          {
            break;
          }

          v28 = (v28 + 1) & v30;
          if (((*(v42 + ((v28 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v28) & 1) == 0)
          {
            v32(v44, v4);
            return;
          }
        }

        v32(v44, v4);
        a2 = v29;
        v5 = v36;
        a1 = v37;
        v19 = v34;
        v13 = v35;
        v18 = v39;
        if (!v39)
        {
          goto LABEL_8;
        }
      }

      (*v20)(v44, v4);
    }

    else
    {
LABEL_8:
      v22 = v14;
      while (1)
      {
        v14 = v22 + 1;
        if (__OFADD__(v22, 1))
        {
          break;
        }

        if (v14 >= v19)
        {
          return;
        }

        v23 = *(v33 + 8 * v14);
        ++v22;
        if (v23)
        {
          v21 = __clz(__rbit64(v23));
          v39 = (v23 - 1) & v23;
          goto LABEL_13;
        }
      }

      __break(1u);
    }
  }
}

uint64_t AlertButtonViewModel.dataSourceSink.getter()
{
  swift_getKeyPath();
  lazy protocol witness table accessor for type AlertButtonViewModel and conformance AlertButtonViewModel(&lazy protocol witness table cache variable for type AlertButtonViewModel and conformance AlertButtonViewModel, type metadata accessor for AlertButtonViewModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();
}

uint64_t key path getter for AlertButtonViewModel.dataSourceSink : AlertButtonViewModel@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  lazy protocol witness table accessor for type AlertButtonViewModel and conformance AlertButtonViewModel(&lazy protocol witness table cache variable for type AlertButtonViewModel and conformance AlertButtonViewModel, type metadata accessor for AlertButtonViewModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  *a2 = *(v3 + 56);
}

uint64_t AlertButtonViewModel.dataSourceSink.setter(uint64_t a1)
{
  v2 = v1;
  if (*(v1 + 56))
  {
    if (a1)
    {
      type metadata accessor for AnyCancellable();
      lazy protocol witness table accessor for type AlertButtonViewModel and conformance AlertButtonViewModel(&lazy protocol witness table cache variable for type AnyCancellable and conformance AnyCancellable, MEMORY[0x277CBCDA8]);

      v4 = dispatch thunk of static Equatable.== infix(_:_:)();

      if (v4)
      {
        goto LABEL_7;
      }
    }

LABEL_6:
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath);
    lazy protocol witness table accessor for type AlertButtonViewModel and conformance AlertButtonViewModel(&lazy protocol witness table cache variable for type AlertButtonViewModel and conformance AlertButtonViewModel, type metadata accessor for AlertButtonViewModel);
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
  }

  if (a1)
  {
    goto LABEL_6;
  }

LABEL_7:
  *(v2 + 56) = a1;
}

uint64_t AlertButtonViewModel.notificationCenterSink.getter()
{
  swift_getKeyPath();
  lazy protocol witness table accessor for type AlertButtonViewModel and conformance AlertButtonViewModel(&lazy protocol witness table cache variable for type AlertButtonViewModel and conformance AlertButtonViewModel, type metadata accessor for AlertButtonViewModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  swift_beginAccess();
}

uint64_t key path getter for AlertButtonViewModel.notificationCenterSink : AlertButtonViewModel@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  lazy protocol witness table accessor for type AlertButtonViewModel and conformance AlertButtonViewModel(&lazy protocol witness table cache variable for type AlertButtonViewModel and conformance AlertButtonViewModel, type metadata accessor for AlertButtonViewModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  swift_beginAccess();
  *a2 = *(v3 + 64);
}

uint64_t AlertButtonViewModel.notificationCenterSink.setter(uint64_t a1)
{
  swift_beginAccess();

  v4 = _sSh2eeoiySbShyxG_ABtFZ7Combine14AnyCancellableC_Tt1g5(v3, a1);

  if (v4)
  {
    *(v1 + 64) = a1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath);
    lazy protocol witness table accessor for type AlertButtonViewModel and conformance AlertButtonViewModel(&lazy protocol witness table cache variable for type AlertButtonViewModel and conformance AlertButtonViewModel, type metadata accessor for AlertButtonViewModel);
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
  }
}

uint64_t closure #1 in AlertButtonViewModel.notificationCenterSink.setter(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  *(a1 + 64) = a2;
}

uint64_t AlertButtonViewModel.paceAlerts.getter()
{
  swift_getKeyPath();
  lazy protocol witness table accessor for type AlertButtonViewModel and conformance AlertButtonViewModel(&lazy protocol witness table cache variable for type AlertButtonViewModel and conformance AlertButtonViewModel, type metadata accessor for AlertButtonViewModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();
}

uint64_t key path getter for AlertButtonViewModel.paceAlerts : AlertButtonViewModel@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  lazy protocol witness table accessor for type AlertButtonViewModel and conformance AlertButtonViewModel(&lazy protocol witness table cache variable for type AlertButtonViewModel and conformance AlertButtonViewModel, type metadata accessor for AlertButtonViewModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  *a2 = *(v3 + 72);
}

uint64_t AlertButtonViewModel.paceAlerts.setter(uint64_t a1)
{

  v4 = _sSDsSQR_rlE2eeoiySbSDyxq_G_ABtFZSS_SbTt1g5(v3, a1);

  if (v4)
  {
    *(v1 + 72) = a1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath);
    lazy protocol witness table accessor for type AlertButtonViewModel and conformance AlertButtonViewModel(&lazy protocol witness table cache variable for type AlertButtonViewModel and conformance AlertButtonViewModel, type metadata accessor for AlertButtonViewModel);
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
  }
}

uint64_t AlertButtonViewModel.cadenceAlerts.getter()
{
  swift_getKeyPath();
  lazy protocol witness table accessor for type AlertButtonViewModel and conformance AlertButtonViewModel(&lazy protocol witness table cache variable for type AlertButtonViewModel and conformance AlertButtonViewModel, type metadata accessor for AlertButtonViewModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();
}

uint64_t key path getter for AlertButtonViewModel.cadenceAlerts : AlertButtonViewModel@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  lazy protocol witness table accessor for type AlertButtonViewModel and conformance AlertButtonViewModel(&lazy protocol witness table cache variable for type AlertButtonViewModel and conformance AlertButtonViewModel, type metadata accessor for AlertButtonViewModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  *a2 = *(v3 + 80);
}

uint64_t AlertButtonViewModel.cadenceAlerts.setter(uint64_t a1)
{

  v4 = _sSDsSQR_rlE2eeoiySbSDyxq_G_ABtFZSS_SbTt1g5(v3, a1);

  if (v4)
  {
    *(v1 + 80) = a1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath);
    lazy protocol witness table accessor for type AlertButtonViewModel and conformance AlertButtonViewModel(&lazy protocol witness table cache variable for type AlertButtonViewModel and conformance AlertButtonViewModel, type metadata accessor for AlertButtonViewModel);
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
  }
}

uint64_t AlertButtonViewModel.powerAlerts.getter()
{
  swift_getKeyPath();
  lazy protocol witness table accessor for type AlertButtonViewModel and conformance AlertButtonViewModel(&lazy protocol witness table cache variable for type AlertButtonViewModel and conformance AlertButtonViewModel, type metadata accessor for AlertButtonViewModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();
}

uint64_t key path getter for AlertButtonViewModel.powerAlerts : AlertButtonViewModel@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  lazy protocol witness table accessor for type AlertButtonViewModel and conformance AlertButtonViewModel(&lazy protocol witness table cache variable for type AlertButtonViewModel and conformance AlertButtonViewModel, type metadata accessor for AlertButtonViewModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  *a2 = *(v3 + 88);
}

uint64_t AlertButtonViewModel.powerAlerts.setter(uint64_t a1)
{

  v4 = _sSDsSQR_rlE2eeoiySbSDyxq_G_ABtFZSS_SbTt1g5(v3, a1);

  if (v4)
  {
    *(v1 + 88) = a1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath);
    lazy protocol witness table accessor for type AlertButtonViewModel and conformance AlertButtonViewModel(&lazy protocol witness table cache variable for type AlertButtonViewModel and conformance AlertButtonViewModel, type metadata accessor for AlertButtonViewModel);
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
  }
}

uint64_t AlertButtonViewModel.heartRateAlerts.getter()
{
  swift_getKeyPath();
  lazy protocol witness table accessor for type AlertButtonViewModel and conformance AlertButtonViewModel(&lazy protocol witness table cache variable for type AlertButtonViewModel and conformance AlertButtonViewModel, type metadata accessor for AlertButtonViewModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();
}

uint64_t key path getter for AlertButtonViewModel.heartRateAlerts : AlertButtonViewModel@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  lazy protocol witness table accessor for type AlertButtonViewModel and conformance AlertButtonViewModel(&lazy protocol witness table cache variable for type AlertButtonViewModel and conformance AlertButtonViewModel, type metadata accessor for AlertButtonViewModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  *a2 = *(v3 + 96);
}

uint64_t AlertButtonViewModel.heartRateAlerts.setter(uint64_t a1)
{

  v4 = _sSDsSQR_rlE2eeoiySbSDyxq_G_ABtFZSS_SbTt1g5(v3, a1);

  if (v4)
  {
    *(v1 + 96) = a1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath);
    lazy protocol witness table accessor for type AlertButtonViewModel and conformance AlertButtonViewModel(&lazy protocol witness table cache variable for type AlertButtonViewModel and conformance AlertButtonViewModel, type metadata accessor for AlertButtonViewModel);
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
  }
}

uint64_t AlertButtonViewModel.timeSplitAlerts.getter()
{
  swift_getKeyPath();
  lazy protocol witness table accessor for type AlertButtonViewModel and conformance AlertButtonViewModel(&lazy protocol witness table cache variable for type AlertButtonViewModel and conformance AlertButtonViewModel, type metadata accessor for AlertButtonViewModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();
}

uint64_t key path getter for AlertButtonViewModel.timeSplitAlerts : AlertButtonViewModel@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  lazy protocol witness table accessor for type AlertButtonViewModel and conformance AlertButtonViewModel(&lazy protocol witness table cache variable for type AlertButtonViewModel and conformance AlertButtonViewModel, type metadata accessor for AlertButtonViewModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  *a2 = *(v3 + 104);
}

uint64_t AlertButtonViewModel.timeSplitAlerts.setter(uint64_t a1)
{

  v4 = _sSDsSQR_rlE2eeoiySbSDyxq_G_ABtFZSS_SbTt1g5(v3, a1);

  if (v4)
  {
    *(v1 + 104) = a1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath);
    lazy protocol witness table accessor for type AlertButtonViewModel and conformance AlertButtonViewModel(&lazy protocol witness table cache variable for type AlertButtonViewModel and conformance AlertButtonViewModel, type metadata accessor for AlertButtonViewModel);
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
  }
}

uint64_t AlertButtonViewModel.distanceSplitAlerts.getter()
{
  swift_getKeyPath();
  lazy protocol witness table accessor for type AlertButtonViewModel and conformance AlertButtonViewModel(&lazy protocol witness table cache variable for type AlertButtonViewModel and conformance AlertButtonViewModel, type metadata accessor for AlertButtonViewModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();
}

uint64_t key path getter for AlertButtonViewModel.distanceSplitAlerts : AlertButtonViewModel@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  lazy protocol witness table accessor for type AlertButtonViewModel and conformance AlertButtonViewModel(&lazy protocol witness table cache variable for type AlertButtonViewModel and conformance AlertButtonViewModel, type metadata accessor for AlertButtonViewModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  *a2 = *(v3 + 112);
}

uint64_t AlertButtonViewModel.distanceSplitAlerts.setter(uint64_t a1)
{

  v4 = _sSDsSQR_rlE2eeoiySbSDyxq_G_ABtFZSS_SbTt1g5(v3, a1);

  if (v4)
  {
    *(v1 + 112) = a1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath);
    lazy protocol witness table accessor for type AlertButtonViewModel and conformance AlertButtonViewModel(&lazy protocol witness table cache variable for type AlertButtonViewModel and conformance AlertButtonViewModel, type metadata accessor for AlertButtonViewModel);
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
  }
}

uint64_t AlertButtonViewModel.powerZoneAlerts.getter()
{
  swift_getKeyPath();
  lazy protocol witness table accessor for type AlertButtonViewModel and conformance AlertButtonViewModel(&lazy protocol witness table cache variable for type AlertButtonViewModel and conformance AlertButtonViewModel, type metadata accessor for AlertButtonViewModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();
}

uint64_t key path getter for AlertButtonViewModel.powerZoneAlerts : AlertButtonViewModel@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  lazy protocol witness table accessor for type AlertButtonViewModel and conformance AlertButtonViewModel(&lazy protocol witness table cache variable for type AlertButtonViewModel and conformance AlertButtonViewModel, type metadata accessor for AlertButtonViewModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  *a2 = *(v3 + 120);
}

uint64_t AlertButtonViewModel.powerZoneAlerts.setter(uint64_t a1)
{

  v4 = _sSDsSQR_rlE2eeoiySbSDyxq_G_ABtFZSS_SbTt1g5(v3, a1);

  if (v4)
  {
    *(v1 + 120) = a1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath);
    lazy protocol witness table accessor for type AlertButtonViewModel and conformance AlertButtonViewModel(&lazy protocol witness table cache variable for type AlertButtonViewModel and conformance AlertButtonViewModel, type metadata accessor for AlertButtonViewModel);
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
  }
}

uint64_t AlertButtonViewModel.__allocating_init(dataSource:)(void *a1)
{
  v2 = swift_allocObject();
  AlertButtonViewModel.init(dataSource:)(a1);
  return v2;
}

void *AlertButtonViewModel.init(dataSource:)(void *a1)
{
  v2 = v1;
  v1[7] = 0;
  if (MEMORY[0x277D84F90] >> 62 && __CocoaSet.count.getter())
  {
    v4 = _sSh21_nonEmptyArrayLiteralShyxGSayxG_tcfC7Combine14AnyCancellableC_Tt0g5Tf4g_n(MEMORY[0x277D84F90]);
  }

  else
  {
    v4 = MEMORY[0x277D84FA0];
  }

  v1[8] = v4;
  v5 = MEMORY[0x277D84F90];
  v2[9] = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_SbTt0g5Tf4g_n(MEMORY[0x277D84F90]);
  v2[10] = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_SbTt0g5Tf4g_n(v5);
  v2[11] = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_SbTt0g5Tf4g_n(v5);
  v2[12] = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_SbTt0g5Tf4g_n(v5);
  v2[13] = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_SbTt0g5Tf4g_n(v5);
  v2[14] = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_SbTt0g5Tf4g_n(v5);
  v2[15] = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_SbTt0g5Tf4g_n(v5);
  ObservationRegistrar.init()();
  outlined init with copy of ActivityPickerDataSourceObserving(a1, (v2 + 2));
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  dispatch thunk of ActivityPickerDataSourceObserving.compoundItemsPublisher.getter();
  swift_allocObject();
  swift_weakInit();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine12AnyPublisherVySay11WorkoutCore26CompoundActivityPickerItemCGs5NeverOGMd);
  lazy protocol witness table accessor for type AnyPublisher<[CompoundActivityPickerItem], Never> and conformance AnyPublisher<A, B>();
  v6 = Publisher<>.sink(receiveValue:)();

  AlertButtonViewModel.dataSourceSink.setter(v6);
  AlertButtonViewModel.configureNotifications()();
  __swift_destroy_boxed_opaque_existential_1Tm_5(a1);
  return v2;
}

uint64_t closure #1 in AlertButtonViewModel.init(dataSource:)(unint64_t *a1)
{
  v1 = *a1;
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v3 = Array<A>.standardItemActivityTypes.getter(v1);
    AlertButtonViewModel.fetchTargetZones(for:)(v3);
    AlertButtonViewModel.fetchSplitStorage(for:)(v3);
  }

  return result;
}

uint64_t Array<A>.standardItemActivityTypes.getter(unint64_t a1)
{
  v2 = type metadata accessor for CompoundActivityPickerItemValue();
  v3 = *(v2 - 8);
  v4.n128_f64[0] = MEMORY[0x28223BE20](v2);
  v6 = (&v18 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v23 = MEMORY[0x277D84F90];
  if (!(a1 >> 62))
  {
    v22 = a1 & 0xFFFFFFFFFFFFFF8;
    v7 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v7)
    {
      goto LABEL_3;
    }

    return MEMORY[0x277D84F90];
  }

LABEL_19:
  v22 = a1 & 0xFFFFFFFFFFFFFF8;
  v7 = __CocoaSet.count.getter();
  if (!v7)
  {
    return MEMORY[0x277D84F90];
  }

LABEL_3:
  v8 = 0;
  v21 = a1 & 0xC000000000000001;
  v9 = (v3 + 11);
  v20 = *MEMORY[0x277D7E680];
  v10 = (v3 + 1);
  v18 = (v3 + 12);
  v11 = MEMORY[0x277D84F90];
  do
  {
    v19 = v11;
    for (i = v8; ; ++i)
    {
      if (v21)
      {
        v13 = a1;
        v14 = MEMORY[0x20F30C990](i, a1, v4);
      }

      else
      {
        if (i >= *(v22 + 16))
        {
          goto LABEL_18;
        }

        v13 = a1;
        v14 = *(a1 + 8 * i + 32);
      }

      a1 = v14;
      v8 = i + 1;
      if (__OFADD__(i, 1))
      {
        __break(1u);
LABEL_18:
        __break(1u);
        goto LABEL_19;
      }

      v3 = v14;
      CompoundActivityPickerItem.value.getter();
      v15 = (*v9)(v6, v2);
      if (v15 == v20)
      {
        break;
      }

      (*v10)(v6, v2);
      a1 = v13;
      if (v8 == v7)
      {
        return v19;
      }
    }

    (*v18)(v6, v2);
    v16 = *v6;
    StandardActivityPickerItem.activityType.getter();

    v3 = &v23;
    MEMORY[0x20F30BCF0]();
    if (*((v23 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v23 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
    }

    specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
    v11 = v23;
    a1 = v13;
  }

  while (v8 != v7);
  return v11;
}

uint64_t AlertButtonViewModel.anyAlertIsEnabled(for:)(void *a1)
{
  v2 = v1;
  v93 = *v1;
  v4 = type metadata accessor for Logger();
  v94 = *(v4 - 8);
  v95 = v4;
  MEMORY[0x28223BE20](v4);
  v6 = &v93 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = [a1 uniqueIdentifier];
  v8 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v10 = v9;

  swift_getKeyPath();
  v102 = v2;
  lazy protocol witness table accessor for type AlertButtonViewModel and conformance AlertButtonViewModel(&lazy protocol witness table cache variable for type AlertButtonViewModel and conformance AlertButtonViewModel, type metadata accessor for AlertButtonViewModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v11 = v2[9];
  if (*(v11 + 16) && (, v12 = specialized __RawDictionaryStorage.find<A>(_:)(v8, v10), v14 = v13, , (v14 & 1) != 0))
  {
    v101 = *(*(v11 + 56) + v12);
  }

  else
  {

    v101 = 0;
  }

  v15 = [a1 uniqueIdentifier];
  v16 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v18 = v17;

  swift_getKeyPath();
  v102 = v2;
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v19 = v2[10];
  if (*(v19 + 16) && (, v20 = specialized __RawDictionaryStorage.find<A>(_:)(v16, v18), v22 = v21, , (v22 & 1) != 0))
  {
    v100 = *(*(v19 + 56) + v20);
  }

  else
  {

    v100 = 0;
  }

  v23 = [a1 uniqueIdentifier];
  v24 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v26 = v25;

  swift_getKeyPath();
  v102 = v2;
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v27 = v2[11];
  if (*(v27 + 16) && (, v28 = specialized __RawDictionaryStorage.find<A>(_:)(v24, v26), v30 = v29, , (v30 & 1) != 0))
  {
    v99 = *(*(v27 + 56) + v28);
  }

  else
  {

    v99 = 0;
  }

  v31 = [a1 uniqueIdentifier];
  v32 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v34 = v33;

  swift_getKeyPath();
  v102 = v2;
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v35 = v2[15];
  if (*(v35 + 16) && (, v36 = specialized __RawDictionaryStorage.find<A>(_:)(v32, v34), v38 = v37, , (v38 & 1) != 0))
  {
    v98 = *(*(v35 + 56) + v36);
  }

  else
  {

    v98 = 0;
  }

  v39 = [a1 uniqueIdentifier];
  v40 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v42 = v41;

  swift_getKeyPath();
  v102 = v2;
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v43 = v2[12];
  if (*(v43 + 16) && (, v44 = specialized __RawDictionaryStorage.find<A>(_:)(v40, v42), v46 = v45, , (v46 & 1) != 0))
  {
    v97 = *(*(v43 + 56) + v44);
  }

  else
  {

    v97 = 0;
  }

  v47 = [a1 uniqueIdentifier];
  v48 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v50 = v49;

  swift_getKeyPath();
  v102 = v2;
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v51 = v2[13];
  if (*(v51 + 16) && (, v52 = specialized __RawDictionaryStorage.find<A>(_:)(v48, v50), v54 = v53, , (v54 & 1) != 0))
  {
    v96 = *(*(v51 + 56) + v52);
  }

  else
  {

    v96 = 0;
  }

  v55 = [a1 uniqueIdentifier];
  v56 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v58 = v57;

  swift_getKeyPath();
  v102 = v2;
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v59 = v2[14];
  if (*(v59 + 16) && (, v60 = specialized __RawDictionaryStorage.find<A>(_:)(v56, v58), v62 = v61, , (v62 & 1) != 0))
  {
    v63 = *(*(v59 + 56) + v60);
  }

  else
  {

    v63 = 0;
  }

  v102 = 0;
  v103 = 0xE000000000000000;
  _StringGuts.grow(_:)(289);
  MEMORY[0x20F30BC00](0xD00000000000002BLL, 0x800000020CBA2D20);
  v64 = [a1 description];
  v65 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v67 = v66;

  MEMORY[0x20F30BC00](v65, v67);

  MEMORY[0x20F30BC00](0xD00000000000001CLL, 0x800000020CBA2D50);
  if (v101)
  {
    v68 = 1702195828;
  }

  else
  {
    v68 = 0x65736C6166;
  }

  if (v101)
  {
    v69 = 0xE400000000000000;
  }

  else
  {
    v69 = 0xE500000000000000;
  }

  MEMORY[0x20F30BC00](v68, v69);

  MEMORY[0x20F30BC00](0xD000000000000020, 0x800000020CBA2D70);
  if (v100)
  {
    v70 = 1702195828;
  }

  else
  {
    v70 = 0x65736C6166;
  }

  if (v100)
  {
    v71 = 0xE400000000000000;
  }

  else
  {
    v71 = 0xE500000000000000;
  }

  MEMORY[0x20F30BC00](v70, v71);

  MEMORY[0x20F30BC00](0xD00000000000001ELL, 0x800000020CBA2DA0);
  if (v99)
  {
    v72 = 1702195828;
  }

  else
  {
    v72 = 0x65736C6166;
  }

  if (v99)
  {
    v73 = 0xE400000000000000;
  }

  else
  {
    v73 = 0xE500000000000000;
  }

  MEMORY[0x20F30BC00](v72, v73);

  MEMORY[0x20F30BC00](0xD000000000000022, 0x800000020CBA2DC0);
  if (v98)
  {
    v74 = 1702195828;
  }

  else
  {
    v74 = 0x65736C6166;
  }

  if (v98)
  {
    v75 = 0xE400000000000000;
  }

  else
  {
    v75 = 0xE500000000000000;
  }

  MEMORY[0x20F30BC00](v74, v75);

  MEMORY[0x20F30BC00](0xD000000000000022, 0x800000020CBA2DF0);
  if (v97)
  {
    v76 = 1702195828;
  }

  else
  {
    v76 = 0x65736C6166;
  }

  if (v97)
  {
    v77 = 0xE400000000000000;
  }

  else
  {
    v77 = 0xE500000000000000;
  }

  MEMORY[0x20F30BC00](v76, v77);

  MEMORY[0x20F30BC00](0xD000000000000022, 0x800000020CBA2E20);
  if (v96)
  {
    v78 = 1702195828;
  }

  else
  {
    v78 = 0x65736C6166;
  }

  if (v96)
  {
    v79 = 0xE400000000000000;
  }

  else
  {
    v79 = 0xE500000000000000;
  }

  MEMORY[0x20F30BC00](v78, v79);

  MEMORY[0x20F30BC00](0xD000000000000026, 0x800000020CBA2E50);
  if (v63)
  {
    v80 = 1702195828;
  }

  else
  {
    v80 = 0x65736C6166;
  }

  if (v63)
  {
    v81 = 0xE400000000000000;
  }

  else
  {
    v81 = 0xE500000000000000;
  }

  MEMORY[0x20F30BC00](v80, v81);

  v83 = v102;
  v82 = v103;
  static WOLog.workoutVoice.getter();

  v84 = Logger.logObject.getter();
  v85 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v84, v85))
  {
    v86 = swift_slowAlloc();
    v87 = swift_slowAlloc();
    v102 = v87;
    *v86 = 136315394;
    v88 = _typeName(_:qualified:)();
    v90 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v88, v89, &v102);

    *(v86 + 4) = v90;
    *(v86 + 12) = 2080;
    v91 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v83, v82, &v102);

    *(v86 + 14) = v91;
    _os_log_impl(&dword_20C66F000, v84, v85, "%s %s", v86, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x20F30E080](v87, -1, -1);
    MEMORY[0x20F30E080](v86, -1, -1);
  }

  else
  {
  }

  (*(v94 + 8))(v6, v95);
  return (v101 | v100 | v99 | v98 | v97 | v96 | v63) & 1;
}

Swift::Void __swiftcall AlertButtonViewModel.fetchTargetZones(for:)(Swift::OpaquePointer a1)
{
  v1 = type metadata accessor for TargetZone.ZoneTypeKey();
  v2 = *(v1 - 8);
  v3 = MEMORY[0x28223BE20](v1);
  v5 = &v13 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *(v2 + 104);
  v6(v5, *MEMORY[0x277D7DEA0], v1, v3);
  v7 = static TargetZoneStorage.alertEnablementDictionary(for:zoneKey:)();
  v8 = *(v2 + 8);
  v8(v5, v1);
  AlertButtonViewModel.paceAlerts.setter(v7);
  (v6)(v5, *MEMORY[0x277D7DEB0], v1);
  v9 = static TargetZoneStorage.alertEnablementDictionary(for:zoneKey:)();
  v8(v5, v1);
  AlertButtonViewModel.cadenceAlerts.setter(v9);
  (v6)(v5, *MEMORY[0x277D7DEA8], v1);
  v10 = static TargetZoneStorage.alertEnablementDictionary(for:zoneKey:)();
  v8(v5, v1);
  AlertButtonViewModel.powerAlerts.setter(v10);
  v11 = static TargetZoneStorage.heartRateAlertEnablementDictionary(for:)();
  AlertButtonViewModel.heartRateAlerts.setter(v11);
  v12 = static TargetZoneStorage.powerZonesAlertEnablementDictionary(for:)();
  AlertButtonViewModel.powerZoneAlerts.setter(v12);
}

Swift::Void __swiftcall AlertButtonViewModel.fetchSplitStorage(for:)(Swift::OpaquePointer a1)
{
  v1 = objc_opt_self();
  _sSo23FIUIWorkoutActivityTypeCMaTm_11(0, &lazy cache variable for type metadata for FIUIWorkoutActivityType);
  isa = Array._bridgeToObjectiveC()().super.isa;
  v50 = v1;
  v3 = [v1 timeSplitEnablementDictionaryForActivityTypes_];

  _sSo23FIUIWorkoutActivityTypeCMaTm_11(0, &lazy cache variable for type metadata for NSNumber);
  v4 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCySSSbGMd);
  v5 = static _DictionaryStorage.copy(original:)();
  v6 = v5;
  v7 = 0;
  v9 = v4 + 64;
  v8 = *(v4 + 64);
  v53 = v4;
  v10 = 1 << *(v4 + 32);
  v11 = -1;
  if (v10 < 64)
  {
    v11 = ~(-1 << v10);
  }

  v12 = v11 & v8;
  v13 = (v10 + 63) >> 6;
  v51 = v5 + 64;
  if ((v11 & v8) != 0)
  {
    do
    {
      v14 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_10:
      v17 = v14 | (v7 << 6);
      v18 = (*(v53 + 48) + 16 * v17);
      v19 = *v18;
      v20 = v18[1];
      v21 = *(*(v53 + 56) + 8 * v17);

      v22 = [v21 BOOLValue];
      *(v51 + ((v17 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v17;
      v23 = (v6[6] + 16 * v17);
      *v23 = v19;
      v23[1] = v20;
      *(v6[7] + v17) = v22;
      v24 = v6[2];
      v25 = __OFADD__(v24, 1);
      v26 = v24 + 1;
      if (v25)
      {
LABEL_30:
        __break(1u);
        goto LABEL_31;
      }

      v6[2] = v26;
    }

    while (v12);
  }

  v15 = v7;
  while (1)
  {
    v7 = v15 + 1;
    if (__OFADD__(v15, 1))
    {
      __break(1u);
LABEL_29:
      __break(1u);
      goto LABEL_30;
    }

    if (v7 >= v13)
    {
      break;
    }

    v16 = *(v9 + 8 * v7);
    ++v15;
    if (v16)
    {
      v14 = __clz(__rbit64(v16));
      v12 = (v16 - 1) & v16;
      goto LABEL_10;
    }
  }

  AlertButtonViewModel.timeSplitAlerts.setter(v6);
  v27 = Array._bridgeToObjectiveC()().super.isa;
  v28 = [v50 distanceSplitEnablementDictionaryForActivityTypes_];

  v29 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();
  v30 = static _DictionaryStorage.copy(original:)();
  v31 = v30;
  v32 = 0;
  v54 = v29;
  v33 = 1 << *(v29 + 32);
  v34 = -1;
  if (v33 < 64)
  {
    v34 = ~(-1 << v33);
  }

  v35 = v29 + 64;
  v36 = v34 & *(v29 + 64);
  v37 = (v33 + 63) >> 6;
  v52 = v30 + 64;
  if (!v36)
  {
LABEL_17:
    v39 = v32;
    while (1)
    {
      v32 = v39 + 1;
      if (__OFADD__(v39, 1))
      {
        goto LABEL_29;
      }

      if (v32 >= v37)
      {

        AlertButtonViewModel.distanceSplitAlerts.setter(v31);
        return;
      }

      v40 = *(v35 + 8 * v32);
      ++v39;
      if (v40)
      {
        v38 = __clz(__rbit64(v40));
        v36 = (v40 - 1) & v40;
        goto LABEL_22;
      }
    }
  }

  while (1)
  {
    v38 = __clz(__rbit64(v36));
    v36 &= v36 - 1;
LABEL_22:
    v41 = v38 | (v32 << 6);
    v42 = (*(v54 + 48) + 16 * v41);
    v43 = *v42;
    v44 = v42[1];
    v45 = *(*(v54 + 56) + 8 * v41);

    v46 = [v45 BOOLValue];
    *(v52 + ((v41 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v41;
    v47 = (v31[6] + 16 * v41);
    *v47 = v43;
    v47[1] = v44;
    *(v31[7] + v41) = v46;
    v48 = v31[2];
    v25 = __OFADD__(v48, 1);
    v49 = v48 + 1;
    if (v25)
    {
      break;
    }

    v31[2] = v49;
    if (!v36)
    {
      goto LABEL_17;
    }
  }

LABEL_31:
  __break(1u);
}

uint64_t AlertButtonViewModel.configureNotifications()()
{
  v1 = v0;
  v20 = *v0;
  v2 = v20;
  v3 = type metadata accessor for NSNotificationCenter.Publisher();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v16 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = objc_opt_self();
  v7 = [v17 defaultCenter];
  v8 = static TargetZoneStorage.changeNotification.getter();
  NSNotificationCenter.publisher(for:object:)();

  v9 = swift_allocObject();
  swift_weakInit();
  v10 = swift_allocObject();
  *(v10 + 16) = v9;
  *(v10 + 24) = v2;
  v19 = lazy protocol witness table accessor for type AlertButtonViewModel and conformance AlertButtonViewModel(&lazy protocol witness table cache variable for type NSNotificationCenter.Publisher and conformance NSNotificationCenter.Publisher, MEMORY[0x277CC9DB0]);
  Publisher<>.sink(receiveValue:)();

  v18 = *(v4 + 8);
  v18(v6, v3);
  swift_getKeyPath();
  v21 = v1;
  lazy protocol witness table accessor for type AlertButtonViewModel and conformance AlertButtonViewModel(&lazy protocol witness table cache variable for type AlertButtonViewModel and conformance AlertButtonViewModel, type metadata accessor for AlertButtonViewModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v21 = v1;
  swift_getKeyPath();
  ObservationRegistrar.willSet<A, B>(_:keyPath:)();

  swift_beginAccess();
  AnyCancellable.store(in:)();
  swift_endAccess();

  v21 = v1;
  swift_getKeyPath();
  ObservationRegistrar.didSet<A, B>(_:keyPath:)();

  v11 = [v17 defaultCenter];
  NSNotificationCenter.publisher(for:object:)();

  v12 = swift_allocObject();
  swift_weakInit();
  v13 = swift_allocObject();
  v14 = v20;
  *(v13 + 16) = v12;
  *(v13 + 24) = v14;
  Publisher<>.sink(receiveValue:)();

  v18(v6, v3);
  swift_getKeyPath();
  v21 = v1;
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v21 = v1;
  swift_getKeyPath();
  ObservationRegistrar.willSet<A, B>(_:keyPath:)();

  swift_beginAccess();
  AnyCancellable.store(in:)();
  swift_endAccess();

  v21 = v1;
  swift_getKeyPath();
  ObservationRegistrar.didSet<A, B>(_:keyPath:)();
}

uint64_t closure #1 in closure #1 in AlertButtonViewModel.configureNotifications()(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[2] = a4;
  v5[3] = a5;
  v6 = type metadata accessor for Logger();
  v5[4] = v6;
  v5[5] = *(v6 - 8);
  v5[6] = swift_task_alloc();
  type metadata accessor for MainActor();
  v5[7] = static MainActor.shared.getter();
  v8 = dispatch thunk of Actor.unownedExecutor.getter();

  return MEMORY[0x2822009F8](closure #1 in closure #1 in AlertButtonViewModel.configureNotifications(), v8, v7);
}

uint64_t closure #1 in closure #1 in AlertButtonViewModel.configureNotifications()()
{
  v17 = v0;

  static WOLog.workoutVoice.getter();
  v1 = Logger.logObject.getter();
  v2 = static os_log_type_t.default.getter();
  v3 = os_log_type_enabled(v1, v2);
  v5 = v0[5];
  v4 = v0[6];
  v6 = v0[4];
  if (v3)
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v16 = v8;
    *v7 = 136315138;
    v9 = _typeName(_:qualified:)();
    v11 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v9, v10, &v16);

    *(v7 + 4) = v11;
    _os_log_impl(&dword_20C66F000, v1, v2, "%s TargetZones changed, refetching defaults.", v7, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm_5(v8);
    MEMORY[0x20F30E080](v8, -1, -1);
    MEMORY[0x20F30E080](v7, -1, -1);
  }

  (*(v5 + 8))(v4, v6);
  __swift_project_boxed_opaque_existential_1((v0[2] + 16), *(v0[2] + 40));
  v12 = dispatch thunk of ActivityPickerDataSourceObserving.compoundItems.getter();
  v13 = Array<A>.standardItemActivityTypes.getter(v12);

  AlertButtonViewModel.fetchTargetZones(for:)(v13);

  v14 = v0[1];

  return v14();
}

uint64_t closure #1 in AlertButtonViewModel.configureNotifications()(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v16 - v8;
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v11 = result;
    v12 = type metadata accessor for TaskPriority();
    (*(*(v12 - 8) + 56))(v9, 1, 1, v12);
    type metadata accessor for MainActor();

    v13 = static MainActor.shared.getter();
    v14 = swift_allocObject();
    v15 = MEMORY[0x277D85700];
    v14[2] = v13;
    v14[3] = v15;
    v14[4] = v11;
    v14[5] = a3;
    _sScTss5NeverORs_rlE4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntcfCyt_Tt2g5(0, 0, v9, a5, v14);
  }

  return result;
}

uint64_t closure #1 in closure #2 in AlertButtonViewModel.configureNotifications()(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[2] = a4;
  v5[3] = a5;
  v6 = type metadata accessor for Logger();
  v5[4] = v6;
  v5[5] = *(v6 - 8);
  v5[6] = swift_task_alloc();
  type metadata accessor for MainActor();
  v5[7] = static MainActor.shared.getter();
  v8 = dispatch thunk of Actor.unownedExecutor.getter();

  return MEMORY[0x2822009F8](closure #1 in closure #2 in AlertButtonViewModel.configureNotifications(), v8, v7);
}

uint64_t closure #1 in closure #2 in AlertButtonViewModel.configureNotifications()()
{
  v17 = v0;

  static WOLog.workoutVoice.getter();
  v1 = Logger.logObject.getter();
  v2 = static os_log_type_t.default.getter();
  v3 = os_log_type_enabled(v1, v2);
  v5 = v0[5];
  v4 = v0[6];
  v6 = v0[4];
  if (v3)
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v16 = v8;
    *v7 = 136315138;
    v9 = _typeName(_:qualified:)();
    v11 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v9, v10, &v16);

    *(v7 + 4) = v11;
    _os_log_impl(&dword_20C66F000, v1, v2, "%s Splits storage changed, refetching defaults.", v7, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm_5(v8);
    MEMORY[0x20F30E080](v8, -1, -1);
    MEMORY[0x20F30E080](v7, -1, -1);
  }

  (*(v5 + 8))(v4, v6);
  __swift_project_boxed_opaque_existential_1((v0[2] + 16), *(v0[2] + 40));
  v12 = dispatch thunk of ActivityPickerDataSourceObserving.compoundItems.getter();
  v13 = Array<A>.standardItemActivityTypes.getter(v12);

  AlertButtonViewModel.fetchSplitStorage(for:)(v13);

  v14 = v0[1];

  return v14();
}

uint64_t AlertButtonViewModel.deinit()
{
  __swift_destroy_boxed_opaque_existential_1Tm_5(v0 + 16);

  v1 = OBJC_IVAR____TtC9WorkoutUI20AlertButtonViewModel___observationRegistrar;
  v2 = type metadata accessor for ObservationRegistrar();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  return v0;
}

uint64_t AlertButtonViewModel.__deallocating_deinit()
{
  AlertButtonViewModel.deinit();

  return swift_deallocClassInstance();
}

uint64_t specialized _NativeSet.isEqual(to:)(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 16);
  result = __CocoaSet.count.getter();
  if (v3 != result)
  {
    return 0;
  }

  v5 = 0;
  v6 = 1 << *(a2 + 32);
  v7 = -1;
  if (v6 < 64)
  {
    v7 = ~(-1 << v6);
  }

  v8 = v7 & *(a2 + 56);
  v9 = (v6 + 63) >> 6;
  while (v8)
  {
    v8 &= v8 - 1;
LABEL_12:

    v12 = __CocoaSet.contains(_:)();

    if ((v12 & 1) == 0)
    {
      return 0;
    }
  }

  v10 = v5;
  while (1)
  {
    v5 = v10 + 1;
    if (__OFADD__(v10, 1))
    {
      break;
    }

    if (v5 >= v9)
    {
      return 1;
    }

    v11 = *(a2 + 56 + 8 * v5);
    ++v10;
    if (v11)
    {
      v8 = (v11 - 1) & v11;
      goto LABEL_12;
    }
  }

  __break(1u);
  return result;
}

uint64_t outlined init with copy of ActivityPickerDataSourceObserving(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  *(a2 + 32) = *(a1 + 32);
  (**(v3 - 8))(a2, a1);
  return a2;
}

unint64_t lazy protocol witness table accessor for type AnyPublisher<[CompoundActivityPickerItem], Never> and conformance AnyPublisher<A, B>()
{
  result = lazy protocol witness table cache variable for type AnyPublisher<[CompoundActivityPickerItem], Never> and conformance AnyPublisher<A, B>;
  if (!lazy protocol witness table cache variable for type AnyPublisher<[CompoundActivityPickerItem], Never> and conformance AnyPublisher<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7Combine12AnyPublisherVySay11WorkoutCore26CompoundActivityPickerItemCGs5NeverOGMd);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AnyPublisher<[CompoundActivityPickerItem], Never> and conformance AnyPublisher<A, B>);
  }

  return result;
}

uint64_t type metadata accessor for AlertButtonViewModel()
{
  result = type metadata singleton initialization cache for AlertButtonViewModel;
  if (!type metadata singleton initialization cache for AlertButtonViewModel)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t _sSo23FIUIWorkoutActivityTypeCMaTm_11(uint64_t a1, unint64_t *a2)
{
  result = *a2;
  if (!*a2)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, a2);
  }

  return result;
}

uint64_t type metadata completion function for AlertButtonViewModel()
{
  result = type metadata accessor for ObservationRegistrar();
  if (v1 <= 0x3F)
  {
    result = swift_updateClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

uint64_t partial apply for closure #1 in AlertButtonViewModel.distanceSplitAlerts.setter()
{
  *(*(v0 + 16) + 112) = *(v0 + 24);
}

uint64_t partial apply for closure #1 in AlertButtonViewModel.timeSplitAlerts.setter()
{
  *(*(v0 + 16) + 104) = *(v0 + 24);
}

uint64_t partial apply for closure #1 in AlertButtonViewModel.powerZoneAlerts.setter()
{
  *(*(v0 + 16) + 120) = *(v0 + 24);
}

uint64_t partial apply for closure #1 in AlertButtonViewModel.heartRateAlerts.setter()
{
  *(*(v0 + 16) + 96) = *(v0 + 24);
}

uint64_t partial apply for closure #1 in AlertButtonViewModel.powerAlerts.setter()
{
  *(*(v0 + 16) + 88) = *(v0 + 24);
}

uint64_t partial apply for closure #1 in AlertButtonViewModel.cadenceAlerts.setter()
{
  *(*(v0 + 16) + 80) = *(v0 + 24);
}

uint64_t partial apply for closure #1 in AlertButtonViewModel.paceAlerts.setter()
{
  *(*(v0 + 16) + 72) = *(v0 + 24);
}

uint64_t partial apply for closure #1 in closure #2 in AlertButtonViewModel.configureNotifications()(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = partial apply for closure #1 in closure #2 in AlertButtonViewModel.configureNotifications();

  return closure #1 in closure #2 in AlertButtonViewModel.configureNotifications()(a1, v4, v5, v7, v6);
}

uint64_t partial apply for closure #1 in closure #2 in AlertButtonViewModel.configureNotifications()()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t __swift_destroy_boxed_opaque_existential_1Tm_5(uint64_t a1)
{
  v1 = *(*(a1 + 24) - 8);
  if ((*(v1 + 82) & 2) != 0)
  {
  }

  else
  {
    return (*(v1 + 8))();
  }
}

uint64_t objectdestroy_86Tm()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t partial apply for closure #1 in closure #1 in AlertButtonViewModel.configureNotifications()(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = partial apply for closure #1 in closure #1 in AlertButtonViewModel.configureNotifications();

  return closure #1 in closure #1 in AlertButtonViewModel.configureNotifications()(a1, v4, v5, v7, v6);
}

uint64_t partial apply for closure #1 in AlertButtonViewModel.dataSourceSink.setter()
{
  *(*(v0 + 16) + 56) = *(v0 + 24);
}

uint64_t outlined init with take of (key: DayIndex, value: TrainingLoadSampleDaySummary)?(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(a3);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t lazy protocol witness table accessor for type AlertButtonViewModel and conformance AlertButtonViewModel(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t type metadata accessor for DistanceUnitPicker()
{
  result = type metadata singleton initialization cache for DistanceUnitPicker;
  if (!type metadata singleton initialization cache for DistanceUnitPicker)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void type metadata completion function for DistanceUnitPicker()
{
  type metadata accessor for Bindable<DistancePickerViewModel>(319, &lazy cache variable for type metadata for Bindable<DistancePickerViewModel>, type metadata accessor for DistancePickerViewModel, MEMORY[0x277CE12F8]);
  if (v0 <= 0x3F)
  {
    type metadata accessor for Bindable<DistancePickerViewModel>(319, &lazy cache variable for type metadata for Environment<DismissAction>, MEMORY[0x277CDD848], MEMORY[0x277CDF468]);
    if (v1 <= 0x3F)
    {
      _sSo21FIUIFormattingManagerCMaTm_13(319, &lazy cache variable for type metadata for FIUIFormattingManager);
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void type metadata accessor for Bindable<DistancePickerViewModel>(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v7 = a3(255);
    v8 = a4(a1, v7);
    if (!v9)
    {
      atomic_store(v8, a2);
    }
  }
}

uint64_t DistanceUnitPicker.dismiss.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = type metadata accessor for EnvironmentValues();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI11EnvironmentV7ContentOyAA13DismissActionV_GMd);
  MEMORY[0x28223BE20](v7);
  v9 = &v14 - v8;
  v10 = type metadata accessor for DistanceUnitPicker();
  outlined init with copy of Environment<DismissAction>.Content(v1 + *(v10 + 20), v9);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v11 = type metadata accessor for DismissAction();
    return (*(*(v11 - 8) + 32))(a1, v9, v11);
  }

  else
  {
    static os_log_type_t.fault.getter();
    v13 = static Log.runtimeIssuesLog.getter();
    os_log(_:dso:log:_:_:)();

    EnvironmentValues.init()();
    swift_getAtKeyPath();

    return (*(v4 + 8))(v6, v3);
  }
}

uint64_t closure #1 in DistanceUnitPicker.body.getter@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v21 = a1;
  v24 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI7SectionVyAA4TextVAA7ForEachVySaySo12NSUnitLengthCGAiA6ButtonVyAA6HStackVyAA9TupleViewVyAE_APyAA6SpacerV_AA5ImageVtGSgtGGGGAA05EmptyL0VGMd);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v23 = &v21 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v22 = &v21 - v7;
  MEMORY[0x28223BE20](v8);
  v10 = &v21 - v9;
  MEMORY[0x28223BE20](v11);
  v13 = &v21 - v12;
  LocalizedStringKey.init(stringLiteral:)();
  v26 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI7ForEachVySaySo12NSUnitLengthCGAeA6ButtonVyAA6HStackVyAA9TupleViewVyAA4TextV_ALyAA6SpacerV_AA5ImageVtGSgtGGGGMd);
  lazy protocol witness table accessor for type ForEach<[NSUnitLength], NSUnitLength, Button<HStack<TupleView<(Text, TupleView<(Spacer, Image)>?)>>>> and conformance <> ForEach<A, B, C>();
  Section<>.init(_:content:)();
  LocalizedStringKey.init(stringLiteral:)();
  v25 = v21;
  Section<>.init(_:content:)();
  v14 = *(v4 + 16);
  v15 = v22;
  v14(v22, v13, v3);
  v16 = v23;
  v14(v23, v10, v3);
  v17 = v24;
  v14(v24, v15, v3);
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI7SectionVyAA4TextVAA7ForEachVySaySo12NSUnitLengthCGAiA6ButtonVyAA6HStackVyAA9TupleViewVyAE_APyAA6SpacerV_AA5ImageVtGSgtGGGGAA05EmptyL0VG_A1_tMd);
  v14(&v17[*(v18 + 48)], v16, v3);
  v19 = *(v4 + 8);
  v19(v10, v3);
  v19(v13, v3);
  v19(v16, v3);
  return (v19)(v15, v3);
}

uint64_t closure #1 in closure #1 in DistanceUnitPicker.body.getter(uint64_t a1)
{
  v2 = type metadata accessor for DistanceUnitPicker();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2 - 8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI8BindableVy07WorkoutB023DistancePickerViewModelCGMd);
  Bindable.wrappedValue.getter();
  v5 = *(v10 + 80);

  v10 = v5;
  swift_getKeyPath();
  outlined init with copy of DistanceUnitPicker(a1, &v9 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v6 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v7 = swift_allocObject();
  outlined init with take of DistanceUnitPicker(&v9 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), v7 + v6);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySo12NSUnitLengthCGMd);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI6ButtonVyAA6HStackVyAA9TupleViewVyAA4TextV_AGyAA6SpacerV_AA5ImageVtGSgtGGGMd);
  lazy protocol witness table accessor for type TupleView<(Section<Text, ForEach<[NSUnitLength], NSUnitLength, Button<HStack<TupleView<(Text, TupleView<(Spacer, Image)>?)>>>>, EmptyView>, Section<Text, ForEach<[NSUnitLength], NSUnitLength, Button<HStack<TupleView<(Text, TupleView<(Spacer, Image)>?)>>>>, EmptyView>)> and conformance TupleView<A>(&lazy protocol witness table cache variable for type [NSUnitLength] and conformance [A], &_sSaySo12NSUnitLengthCGMd);
  lazy protocol witness table accessor for type NSUnitLength and conformance NSObject();
  lazy protocol witness table accessor for type TupleView<(Section<Text, ForEach<[NSUnitLength], NSUnitLength, Button<HStack<TupleView<(Text, TupleView<(Spacer, Image)>?)>>>>, EmptyView>, Section<Text, ForEach<[NSUnitLength], NSUnitLength, Button<HStack<TupleView<(Text, TupleView<(Spacer, Image)>?)>>>>, EmptyView>)> and conformance TupleView<A>(&lazy protocol witness table cache variable for type Button<HStack<TupleView<(Text, TupleView<(Spacer, Image)>?)>>> and conformance Button<A>, &_s7SwiftUI6ButtonVyAA6HStackVyAA9TupleViewVyAA4TextV_AGyAA6SpacerV_AA5ImageVtGSgtGGGMd);
  return ForEach<>.init(_:id:content:)();
}

uint64_t closure #2 in closure #1 in DistanceUnitPicker.body.getter(uint64_t a1)
{
  v2 = type metadata accessor for DistanceUnitPicker();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2 - 8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI8BindableVy07WorkoutB023DistancePickerViewModelCGMd);
  Bindable.wrappedValue.getter();
  v5 = *(v10 + 88);

  v10 = v5;
  swift_getKeyPath();
  outlined init with copy of DistanceUnitPicker(a1, &v9 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v6 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v7 = swift_allocObject();
  outlined init with take of DistanceUnitPicker(&v9 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), v7 + v6);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySo12NSUnitLengthCGMd);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI6ButtonVyAA6HStackVyAA9TupleViewVyAA4TextV_AGyAA6SpacerV_AA5ImageVtGSgtGGGMd);
  lazy protocol witness table accessor for type TupleView<(Section<Text, ForEach<[NSUnitLength], NSUnitLength, Button<HStack<TupleView<(Text, TupleView<(Spacer, Image)>?)>>>>, EmptyView>, Section<Text, ForEach<[NSUnitLength], NSUnitLength, Button<HStack<TupleView<(Text, TupleView<(Spacer, Image)>?)>>>>, EmptyView>)> and conformance TupleView<A>(&lazy protocol witness table cache variable for type [NSUnitLength] and conformance [A], &_sSaySo12NSUnitLengthCGMd);
  lazy protocol witness table accessor for type NSUnitLength and conformance NSObject();
  lazy protocol witness table accessor for type TupleView<(Section<Text, ForEach<[NSUnitLength], NSUnitLength, Button<HStack<TupleView<(Text, TupleView<(Spacer, Image)>?)>>>>, EmptyView>, Section<Text, ForEach<[NSUnitLength], NSUnitLength, Button<HStack<TupleView<(Text, TupleView<(Spacer, Image)>?)>>>>, EmptyView>)> and conformance TupleView<A>(&lazy protocol witness table cache variable for type Button<HStack<TupleView<(Text, TupleView<(Spacer, Image)>?)>>> and conformance Button<A>, &_s7SwiftUI6ButtonVyAA6HStackVyAA9TupleViewVyAA4TextV_AGyAA6SpacerV_AA5ImageVtGSgtGGGMd);
  return ForEach<>.init(_:id:content:)();
}

uint64_t closure #1 in closure #1 in closure #1 in DistanceUnitPicker.body.getter(void **a1, uint64_t a2)
{
  v4 = type metadata accessor for DistanceUnitPicker();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = *a1;
  outlined init with copy of DistanceUnitPicker(a2, &v12[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)]);
  v8 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v9 = swift_allocObject();
  outlined init with take of DistanceUnitPicker(&v12[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)], v9 + v8);
  *(v9 + ((v6 + v8 + 7) & 0xFFFFFFFFFFFFFFF8)) = v7;
  v13 = v7;
  v14 = a2;
  v10 = v7;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI6HStackVyAA9TupleViewVyAA4TextV_AEyAA6SpacerV_AA5ImageVtGSgtGGMd);
  lazy protocol witness table accessor for type TupleView<(Section<Text, ForEach<[NSUnitLength], NSUnitLength, Button<HStack<TupleView<(Text, TupleView<(Spacer, Image)>?)>>>>, EmptyView>, Section<Text, ForEach<[NSUnitLength], NSUnitLength, Button<HStack<TupleView<(Text, TupleView<(Spacer, Image)>?)>>>>, EmptyView>)> and conformance TupleView<A>(&lazy protocol witness table cache variable for type HStack<TupleView<(Text, TupleView<(Spacer, Image)>?)>> and conformance HStack<A>, &_s7SwiftUI6HStackVyAA9TupleViewVyAA4TextV_AEyAA6SpacerV_AA5ImageVtGSgtGGMd);
  return Button.init(action:label:)();
}

uint64_t closure #1 in closure #1 in closure #1 in closure #1 in DistanceUnitPicker.body.getter(uint64_t a1, void *a2)
{
  v3 = type metadata accessor for DismissAction();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v8 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI8BindableVy07WorkoutB023DistancePickerViewModelCGMd);
  Bindable.wrappedValue.getter();
  DistancePickerViewModel.selectedUnit.setter(a2);

  DistanceUnitPicker.dismiss.getter(v6);
  DismissAction.callAsFunction()();
  return (*(v4 + 8))(v6, v3);
}

__n128 closure #2 in closure #1 in closure #1 in closure #1 in DistanceUnitPicker.body.getter@<Q0>(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  v4 = static VerticalAlignment.center.getter();
  v16 = 1;
  closure #1 in closure #2 in closure #1 in closure #1 in closure #1 in DistanceUnitPicker.body.getter(a1, &v11);
  v5 = v12;
  v6 = v13;
  v7 = v15;
  result = v14;
  v9 = v11;
  v10 = v16;
  *a2 = v4;
  *(a2 + 8) = 0;
  *(a2 + 16) = v10;
  *(a2 + 24) = v9;
  *(a2 + 40) = v5;
  *(a2 + 48) = v6;
  *(a2 + 56) = result;
  *(a2 + 72) = v7;
  return result;
}

uint64_t closure #1 in closure #2 in closure #1 in closure #1 in closure #1 in DistanceUnitPicker.body.getter@<X0>(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for DistanceUnitPicker();
  v18 = NSUnitLength.localizedName(formattingManager:)(*(a1 + *(v4 + 24)));
  lazy protocol witness table accessor for type String and conformance String();
  v5 = Text.init<A>(_:)();
  v7 = v6;
  v9 = v8;
  v11 = v10;
  _sSo21FIUIFormattingManagerCMaTm_13(0, &lazy cache variable for type metadata for NSObject);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI8BindableVy07WorkoutB023DistancePickerViewModelCGMd);
  Bindable.wrappedValue.getter();
  swift_getKeyPath();
  _s7SwiftUI19BorderedButtonStyleVAcA09PrimitivedE0AAWlTm_3(&lazy protocol witness table cache variable for type DistancePickerViewModel and conformance DistancePickerViewModel, type metadata accessor for DistancePickerViewModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  swift_beginAccess();
  v12 = *(v18 + 72);

  v13 = static NSObject.== infix(_:_:)();

  v14 = 0;
  v15 = 0;
  if (v13)
  {
    v15 = Image.init(systemName:)();

    v14 = 1;
  }

  v16 = v9 & 1;
  outlined copy of Text.Storage(v5, v7, v16);
  *a2 = v5;
  *(a2 + 8) = v7;
  *(a2 + 16) = v16;
  *(a2 + 24) = v11;
  *(a2 + 32) = 0;
  *(a2 + 40) = v14;
  *(a2 + 48) = v15;

  outlined consume of Text.Storage(v5, v7, v16);
}

uint64_t closure #2 in DistanceUnitPicker.body.getter(uint64_t a1)
{
  v2 = type metadata accessor for ToolbarItemPlacement();
  MEMORY[0x28223BE20](v2 - 8);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI11ToolbarItemVyytAA15ModifiedContentVyAEyAA4ViewPAAE11buttonStyleyQrqd__AA015PrimitiveButtonI0Rd__lFQOyAA0K0VyAA5ImageVG_AA08BorderedkI0VQo_AA11_ClipEffectVyAA6CircleVGGAA30_EnvironmentKeyWritingModifierVyAA08AnyShapeI0VSgGGGMd);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v9[-v5];
  static ToolbarItemPlacement.cancellationAction.getter();
  v10 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyACyAA4ViewPAAE11buttonStyleyQrqd__AA015PrimitiveButtonG0Rd__lFQOyAA0I0VyAA5ImageVG_AA08BorderediG0VQo_AA11_ClipEffectVyAA6CircleVGGAA30_EnvironmentKeyWritingModifierVyAA08AnyShapeG0VSgGGMd);
  lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<<<opaque return type of View.buttonStyle<A>(_:)>>.0, _ClipEffect<Circle>>, _EnvironmentKeyWritingModifier<AnyShapeStyle?>> and conformance <> ModifiedContent<A, B>();
  ToolbarItem<>.init(placement:content:)();
  v7 = lazy protocol witness table accessor for type TupleView<(Section<Text, ForEach<[NSUnitLength], NSUnitLength, Button<HStack<TupleView<(Text, TupleView<(Spacer, Image)>?)>>>>, EmptyView>, Section<Text, ForEach<[NSUnitLength], NSUnitLength, Button<HStack<TupleView<(Text, TupleView<(Spacer, Image)>?)>>>>, EmptyView>)> and conformance TupleView<A>(&lazy protocol witness table cache variable for type ToolbarItem<(), ModifiedContent<ModifiedContent<<<opaque return type of View.buttonStyle<A>(_:)>>.0, _ClipEffect<Circle>>, _EnvironmentKeyWritingModifier<AnyShapeStyle?>>> and conformance ToolbarItem<A, B>, &_s7SwiftUI11ToolbarItemVyytAA15ModifiedContentVyAEyAA4ViewPAAE11buttonStyleyQrqd__AA015PrimitiveButtonI0Rd__lFQOyAA0K0VyAA5ImageVG_AA08BorderedkI0VQo_AA11_ClipEffectVyAA6CircleVGGAA30_EnvironmentKeyWritingModifierVyAA08AnyShapeI0VSgGGGMd);
  MEMORY[0x20F3098F0](v6, v3, v7);
  return (*(v4 + 8))(v6, v3);
}

uint64_t closure #1 in closure #2 in DistanceUnitPicker.body.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v22[0] = a2;
  v3 = type metadata accessor for BorderedButtonStyle();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = v22 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for DistanceUnitPicker();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI6ButtonVyAA5ImageVGMd);
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = v22 - v12;
  outlined init with copy of DistanceUnitPicker(a1, v22 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  v14 = (*(v8 + 80) + 16) & ~*(v8 + 80);
  v15 = swift_allocObject();
  outlined init with take of DistanceUnitPicker(v22 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0), v15 + v14);
  Button.init(action:label:)();
  BorderedButtonStyle.init()();
  lazy protocol witness table accessor for type TupleView<(Section<Text, ForEach<[NSUnitLength], NSUnitLength, Button<HStack<TupleView<(Text, TupleView<(Spacer, Image)>?)>>>>, EmptyView>, Section<Text, ForEach<[NSUnitLength], NSUnitLength, Button<HStack<TupleView<(Text, TupleView<(Spacer, Image)>?)>>>>, EmptyView>)> and conformance TupleView<A>(&lazy protocol witness table cache variable for type Button<Image> and conformance Button<A>, &_s7SwiftUI6ButtonVyAA5ImageVGMd);
  _s7SwiftUI19BorderedButtonStyleVAcA09PrimitivedE0AAWlTm_3(&lazy protocol witness table cache variable for type BorderedButtonStyle and conformance BorderedButtonStyle, MEMORY[0x277CDDEE0]);
  v16 = v22[0];
  View.buttonStyle<A>(_:)();
  (*(v4 + 8))(v6, v3);
  (*(v11 + 8))(v13, v10);
  *(v16 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyAA4ViewPAAE11buttonStyleyQrqd__AA015PrimitiveButtonG0Rd__lFQOyAA0I0VyAA5ImageVG_AA08BorderediG0VQo_AA11_ClipEffectVyAA6CircleVGGMd) + 36)) = 256;
  v17 = static Color.white.getter();
  KeyPath = swift_getKeyPath();
  v22[1] = v17;
  v19 = AnyShapeStyle.init<A>(_:)();
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyACyAA4ViewPAAE11buttonStyleyQrqd__AA015PrimitiveButtonG0Rd__lFQOyAA0I0VyAA5ImageVG_AA08BorderediG0VQo_AA11_ClipEffectVyAA6CircleVGGAA30_EnvironmentKeyWritingModifierVyAA08AnyShapeG0VSgGGMd);
  v21 = (v16 + *(result + 36));
  *v21 = KeyPath;
  v21[1] = v19;
  return result;
}

uint64_t closure #1 in closure #1 in closure #2 in DistanceUnitPicker.body.getter(uint64_t a1)
{
  v2 = type metadata accessor for EnvironmentValues();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v16 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI11EnvironmentV7ContentOyAA13DismissActionV_GMd);
  MEMORY[0x28223BE20](v6);
  v8 = &v16 - v7;
  v9 = type metadata accessor for DismissAction();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = &v16 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for DistanceUnitPicker();
  outlined init with copy of Environment<DismissAction>.Content(a1 + *(v13 + 20), v8);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    (*(v10 + 32))(v12, v8, v9);
  }

  else
  {
    static os_log_type_t.fault.getter();
    v14 = static Log.runtimeIssuesLog.getter();
    os_log(_:dso:log:_:_:)();

    EnvironmentValues.init()();
    swift_getAtKeyPath();

    (*(v3 + 8))(v5, v2);
  }

  DismissAction.callAsFunction()();
  return (*(v10 + 8))(v12, v9);
}

uint64_t closure #2 in closure #1 in closure #2 in DistanceUnitPicker.body.getter@<X0>(uint64_t *a1@<X8>)
{
  result = Image.init(systemName:)();
  *a1 = result;
  return result;
}

uint64_t protocol witness for View.body.getter in conformance DistanceUnitPicker()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI4ListVys5NeverOAA9TupleViewVyAA7SectionVyAA4TextVAA7ForEachVySaySo12NSUnitLengthCGAoA6ButtonVyAA6HStackVyAGyAK_AGyAA6SpacerV_AA5ImageVtGSgtGGGGAA05EmptyF0VG_A5_tGGMd);
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = &v8[-v3];
  v10 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI9TupleViewVyAA7SectionVyAA4TextVAA7ForEachVySaySo12NSUnitLengthCGAkA6ButtonVyAA6HStackVyACyAG_ACyAA6SpacerV_AA5ImageVtGSgtGGGGAA05EmptyD0VG_A1_tGMd);
  lazy protocol witness table accessor for type TupleView<(Section<Text, ForEach<[NSUnitLength], NSUnitLength, Button<HStack<TupleView<(Text, TupleView<(Spacer, Image)>?)>>>>, EmptyView>, Section<Text, ForEach<[NSUnitLength], NSUnitLength, Button<HStack<TupleView<(Text, TupleView<(Spacer, Image)>?)>>>>, EmptyView>)> and conformance TupleView<A>(&lazy protocol witness table cache variable for type TupleView<(Section<Text, ForEach<[NSUnitLength], NSUnitLength, Button<HStack<TupleView<(Text, TupleView<(Spacer, Image)>?)>>>>, EmptyView>, Section<Text, ForEach<[NSUnitLength], NSUnitLength, Button<HStack<TupleView<(Text, TupleView<(Spacer, Image)>?)>>>>, EmptyView>)> and conformance TupleView<A>, &_s7SwiftUI9TupleViewVyAA7SectionVyAA4TextVAA7ForEachVySaySo12NSUnitLengthCGAkA6ButtonVyAA6HStackVyACyAG_ACyAA6SpacerV_AA5ImageVtGSgtGGGGAA05EmptyD0VG_A1_tGMd);
  List<>.init(content:)();
  v9 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI21ToolbarContentBuilderV10buildBlockyQrxAA0cD0RzlFZQOy_AA0C4ItemVyytAA08ModifiedD0VyAIyAA4ViewPAAE11buttonStyleyQrqd__AA015PrimitiveButtonL0Rd__lFQOyAA0N0VyAA5ImageVG_AA08BorderednL0VQo_AA11_ClipEffectVyAA6CircleVGGAA30_EnvironmentKeyWritingModifierVyAA08AnyShapeL0VSgGGGQo_Md);
  lazy protocol witness table accessor for type TupleView<(Section<Text, ForEach<[NSUnitLength], NSUnitLength, Button<HStack<TupleView<(Text, TupleView<(Spacer, Image)>?)>>>>, EmptyView>, Section<Text, ForEach<[NSUnitLength], NSUnitLength, Button<HStack<TupleView<(Text, TupleView<(Spacer, Image)>?)>>>>, EmptyView>)> and conformance TupleView<A>(&lazy protocol witness table cache variable for type List<Never, TupleView<(Section<Text, ForEach<[NSUnitLength], NSUnitLength, Button<HStack<TupleView<(Text, TupleView<(Spacer, Image)>?)>>>>, EmptyView>, Section<Text, ForEach<[NSUnitLength], NSUnitLength, Button<HStack<TupleView<(Text, TupleView<(Spacer, Image)>?)>>>>, EmptyView>)>> and conformance List<A, B>, &_s7SwiftUI4ListVys5NeverOAA9TupleViewVyAA7SectionVyAA4TextVAA7ForEachVySaySo12NSUnitLengthCGAoA6ButtonVyAA6HStackVyAGyAK_AGyAA6SpacerV_AA5ImageVtGSgtGGGGAA05EmptyF0VG_A5_tGGMd);
  v5 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI11ToolbarItemVyytAA15ModifiedContentVyAEyAA4ViewPAAE11buttonStyleyQrqd__AA015PrimitiveButtonI0Rd__lFQOyAA0K0VyAA5ImageVG_AA08BorderedkI0VQo_AA11_ClipEffectVyAA6CircleVGGAA30_EnvironmentKeyWritingModifierVyAA08AnyShapeI0VSgGGGMd);
  v6 = lazy protocol witness table accessor for type TupleView<(Section<Text, ForEach<[NSUnitLength], NSUnitLength, Button<HStack<TupleView<(Text, TupleView<(Spacer, Image)>?)>>>>, EmptyView>, Section<Text, ForEach<[NSUnitLength], NSUnitLength, Button<HStack<TupleView<(Text, TupleView<(Spacer, Image)>?)>>>>, EmptyView>)> and conformance TupleView<A>(&lazy protocol witness table cache variable for type ToolbarItem<(), ModifiedContent<ModifiedContent<<<opaque return type of View.buttonStyle<A>(_:)>>.0, _ClipEffect<Circle>>, _EnvironmentKeyWritingModifier<AnyShapeStyle?>>> and conformance ToolbarItem<A, B>, &_s7SwiftUI11ToolbarItemVyytAA15ModifiedContentVyAEyAA4ViewPAAE11buttonStyleyQrqd__AA015PrimitiveButtonI0Rd__lFQOyAA0K0VyAA5ImageVG_AA08BorderedkI0VQo_AA11_ClipEffectVyAA6CircleVGGAA30_EnvironmentKeyWritingModifierVyAA08AnyShapeI0VSgGGGMd);
  v11 = v5;
  v12 = v6;
  swift_getOpaqueTypeConformance2();
  View.toolbar<A>(content:)();
  return (*(v2 + 8))(v4, v1);
}

uint64_t outlined init with copy of DistanceUnitPicker(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for DistanceUnitPicker();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t outlined init with take of DistanceUnitPicker(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for DistanceUnitPicker();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t partial apply for closure #1 in closure #1 in closure #2 in DistanceUnitPicker.body.getter()
{
  v1 = *(type metadata accessor for DistanceUnitPicker() - 8);
  v2 = v0 + ((*(v1 + 80) + 16) & ~*(v1 + 80));

  return closure #1 in closure #1 in closure #2 in DistanceUnitPicker.body.getter(v2);
}

uint64_t partial apply for closure #1 in closure #2 in closure #1 in DistanceUnitPicker.body.getter(void **a1)
{
  return partial apply for closure #1 in closure #2 in closure #1 in DistanceUnitPicker.body.getter(a1);
}

{
  v3 = *(type metadata accessor for DistanceUnitPicker() - 8);
  return closure #1 in closure #1 in closure #1 in DistanceUnitPicker.body.getter(a1, v1 + ((*(v3 + 80) + 16) & ~*(v3 + 80)));
}

uint64_t lazy protocol witness table accessor for type TupleView<(Section<Text, ForEach<[NSUnitLength], NSUnitLength, Button<HStack<TupleView<(Text, TupleView<(Spacer, Image)>?)>>>>, EmptyView>, Section<Text, ForEach<[NSUnitLength], NSUnitLength, Button<HStack<TupleView<(Text, TupleView<(Spacer, Image)>?)>>>>, EmptyView>)> and conformance TupleView<A>(unint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t _sSo21FIUIFormattingManagerCMaTm_13(uint64_t a1, unint64_t *a2)
{
  result = *a2;
  if (!*a2)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, a2);
  }

  return result;
}

uint64_t _s7SwiftUI19BorderedButtonStyleVAcA09PrimitivedE0AAWlTm_3(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t objectdestroyTm_83()
{
  v1 = type metadata accessor for DistanceUnitPicker();
  v2 = v0 + ((*(*(v1 - 8) + 80) + 16) & ~*(*(v1 - 8) + 80));
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI8BindableVy07WorkoutB023DistancePickerViewModelCGMd);
  (*(*(v3 - 8) + 8))(v2, v3);
  v4 = *(v1 + 20);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI11EnvironmentV7ContentOyAA13DismissActionV_GMd);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v5 = type metadata accessor for DismissAction();
    (*(*(v5 - 8) + 8))(v2 + v4, v5);
  }

  else
  {
  }

  return swift_deallocObject();
}

uint64_t objectdestroy_10Tm_2()
{
  v1 = type metadata accessor for DistanceUnitPicker();
  v2 = (*(*(v1 - 8) + 80) + 16) & ~*(*(v1 - 8) + 80);
  v3 = *(*(v1 - 8) + 64);
  v4 = v0 + v2;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI8BindableVy07WorkoutB023DistancePickerViewModelCGMd);
  (*(*(v5 - 8) + 8))(v0 + v2, v5);
  v6 = *(v1 + 20);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI11EnvironmentV7ContentOyAA13DismissActionV_GMd);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v7 = type metadata accessor for DismissAction();
    (*(*(v7 - 8) + 8))(v4 + v6, v7);
  }

  else
  {
  }

  return swift_deallocObject();
}

uint64_t partial apply for closure #1 in closure #1 in closure #2 in closure #1 in DistanceUnitPicker.body.getter()
{
  v1 = *(type metadata accessor for DistanceUnitPicker() - 8);
  v2 = (*(v1 + 80) + 16) & ~*(v1 + 80);
  return closure #1 in closure #1 in closure #1 in closure #1 in DistanceUnitPicker.body.getter(v0 + v2, *(v0 + ((*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8)));
}

uint64_t getEnumTagSinglePayload for MirrorPacerMetricPlatterView(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 64))
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

uint64_t storeEnumTagSinglePayload for MirrorPacerMetricPlatterView(uint64_t result, int a2, int a3)
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
      *(result + 8) = (a2 - 1);
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

uint64_t closure #1 in MirrorPacerMetricPlatterView.body.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v49 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyACyAA6VStackVyAA9TupleViewVyAA7ForEachVySaySSGSSAA6HStackVyAGyACyACyACyAA4TextV07WorkoutB00L16NotificationFontVGAA30_EnvironmentKeyWritingModifierVy12CoreGraphics7CGFloatVGGATySiSgGG_AA6SpacerVtGGG_ACyACyAO011ElapsedTimeG0VATyAA5ColorVSgGGATyAO0lG5StyleOGGtGGAA14_PaddingLayoutVGA15_GMd);
  MEMORY[0x28223BE20](v49);
  v5 = &v44 - v4;
  v46 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI19_ConditionalContentV7StorageOyAA08ModifiedD0VyAGyAA6VStackVyAA9TupleViewVyAA7ForEachVySaySSGSSAA6HStackVyAKyAGyAGyAGyAA4TextV07WorkoutB00N16NotificationFontVGAA30_EnvironmentKeyWritingModifierVy12CoreGraphics7CGFloatVGGAXySiSgGG_AA6SpacerVtGGG_AGyAGyAS011ElapsedTimeI0VAXyAA5ColorVSgGGAXyAS0nI5StyleOGGtGGAA14_PaddingLayoutVGA19_GAIyAKyA6__AGyAGyAPyAKyACyACyACyACyACyACyAS012EnergyMetricI0VA28_GACyAS015HeartRateMetricI0VAS024HeartRateAggregateMetricI0VGGACyACyA33_AS010ZoneMetricI0VGACyAS0z12InZoneMetricI0VA37_GGGACyACyACyA40_AS010PaceMetricI0VGACyA45_A45_GGACyA47_ACyAS014DistanceMetricI0VAS010LapsMetricI0VGGGGACyACyACyACyACyACyAS013CadenceMetricI0VAA05EmptyI0VGA58_GA58_GACyAS021ElevationChangeMetricI0VAS022CurrentElevationMetricI0VGGACyACyAS011PowerMetricI0VA71_GACyA71_AS020FlightsClimbedMetricI0VGGGACyACyACyAS021SegmentDurationMetricI0VAS020DistanceDetailMetricI0VGACyA45_A28_GGACyACyA28_A71_GACyA71_AGyAGyAS0nzI0VAS12MetricDetailVGAA016_ForegroundStyleT0VyA13_GGGGGGGACyACyACyACyA81_A45_GACyAS018StrideLengthMetricI0VA102_GGACyACyAS025VerticalOscillationMetricI0VA106_GACyAS013GroundContactz6MetricI0VA109_GGGACyACyA65_AS022DownhillRunCountMetricI0VGACyA60_APyAKyAGyArS011MetricValueP0VG_AGyAGyArS017MetricDescriptionuP0VGAS26ExtendedLineSpacingSupport33_241C09B5AC269BC1C919798A0AC522FDLLVGtGGGGGG_A131_tGGAS9MetricRowVGA19_GA6_A137_tGG_GMd);
  MEMORY[0x28223BE20](v46);
  v45 = &v44 - v6;
  v48 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI6VStackVyAA9TupleViewVyAA6SpacerV_AA15ModifiedContentVyAIyAA6HStackVyAEyAA012_ConditionalH0VyAMyAMyAMyAMyAMy07WorkoutB0012EnergyMetricE0VAPGAMyAN09HeartRatemE0VAN0no9AggregatemE0VGGAMyAMyAuN04ZonemE0VGAMyAN06TimeInqmE0VAYGGGAMyAMyAMyA0_AN04PacemE0VGAMyA5_A5_GGAMyA7_AMyAN08DistancemE0VAN04LapsmE0VGGGGAMyAMyAMyAMyAMyAMyAN07CadencemE0VAA05EmptyE0VGA18_GA18_GAMyAN015ElevationChangemE0VAN07CurrentymE0VGGAMyAMyAN05PowermE0VA31_GAMyA31_AN014FlightsClimbedmE0VGGGAMyAMyAMyAN015SegmentDurationmE0VAN0u6DetailmE0VGAMyA5_APGGAMyAMyAPA31_GAMyA31_AIyAIyAN0krE0VAN0M6DetailVGAA24_ForegroundStyleModifierVyAA5ColorVGGGGGGGAMyAMyAMyAMyA41_A5_GAMyAN012StrideLengthmE0VA64_GGAMyAMyAN019VerticalOscillationmE0VA68_GAMyAN013GroundContactrmE0VA71_GGGAMyAMyA25_AN016DownhillRunCountmE0VGAMyA20_AKyAEyAIyAA4TextVAN0M9ValueFontVG_AIyAIyA79_AN0M19DescriptionCoreFontVGAN26ExtendedLineSpacingSupport33_241C09B5AC269BC1C919798A0AC522FDLLVGtGGGGGG_A95_tGGAN0M3RowVGAA30_EnvironmentKeyWritingModifierVyAN0kE5StyleOGGAGA106_tGGMd);
  MEMORY[0x28223BE20](v48);
  v8 = &v44 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI19_ConditionalContentVyAA08ModifiedD0VyAEyAA6VStackVyAA9TupleViewVyAA7ForEachVySaySSGSSAA6HStackVyAIyAEyAEyAEyAA4TextV07WorkoutB00M16NotificationFontVGAA30_EnvironmentKeyWritingModifierVy12CoreGraphics7CGFloatVGGAVySiSgGG_AA6SpacerVtGGG_AEyAEyAQ011ElapsedTimeH0VAVyAA5ColorVSgGGAVyAQ0mH5StyleOGGtGGAA14_PaddingLayoutVGA17_GAGyAIyA4__AEyAEyANyAIyACyACyACyACyACyACyAQ012EnergyMetricH0VA26_GACyAQ015HeartRateMetricH0VAQ024HeartRateAggregateMetricH0VGGACyACyA31_AQ010ZoneMetricH0VGACyAQ0y12InZoneMetricH0VA35_GGGACyACyACyA38_AQ010PaceMetricH0VGACyA43_A43_GGACyA45_ACyAQ014DistanceMetricH0VAQ010LapsMetricH0VGGGGACyACyACyACyACyACyAQ013CadenceMetricH0VAA05EmptyH0VGA56_GA56_GACyAQ021ElevationChangeMetricH0VAQ022CurrentElevationMetricH0VGGACyACyAQ011PowerMetricH0VA69_GACyA69_AQ020FlightsClimbedMetricH0VGGGACyACyACyAQ021SegmentDurationMetricH0VAQ020DistanceDetailMetricH0VGACyA43_A26_GGACyACyA26_A69_GACyA69_AEyAEyAQ0myH0VAQ12MetricDetailVGAA016_ForegroundStyleS0VyA11_GGGGGGGACyACyACyACyA79_A43_GACyAQ018StrideLengthMetricH0VA100_GGACyACyAQ025VerticalOscillationMetricH0VA104_GACyAQ013GroundContacty6MetricH0VA107_GGGACyACyA63_AQ022DownhillRunCountMetricH0VGACyA58_ANyAIyAEyApQ011MetricValueO0VG_AEyAEyApQ017MetricDescriptiontO0VGAQ26ExtendedLineSpacingSupport33_241C09B5AC269BC1C919798A0AC522FDLLVGtGGGGGG_A129_tGGAQ9MetricRowVGA17_GA4_A135_tGGGMd);
  MEMORY[0x28223BE20](v9 - 8);
  v50 = &v44 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v52 = &v44 - v12;
  v51 = static HorizontalAlignment.center.getter();
  v58 = 0;
  closure #1 in MirrorPacerMetricPlatterView.progressTrackerView()(&v55);
  v67 = *&v56[14];
  v68 = *&v56[16];
  v69[0] = *&v56[18];
  *(v69 + 9) = *(&v56[19] + 1);
  v63 = *&v56[6];
  v64 = *&v56[8];
  v65 = *&v56[10];
  v66 = *&v56[12];
  v59 = v55;
  v60 = *v56;
  v61 = *&v56[2];
  v62 = *&v56[4];
  v70[8] = *&v56[14];
  v70[9] = *&v56[16];
  v71[0] = *&v56[18];
  *(v71 + 9) = *(&v56[19] + 1);
  v70[4] = *&v56[6];
  v70[5] = *&v56[8];
  v70[6] = *&v56[10];
  v70[7] = *&v56[12];
  v70[0] = v55;
  v70[1] = *v56;
  v70[2] = *&v56[2];
  v70[3] = *&v56[4];
  outlined init with copy of TupleView<(ModifiedContent<ModifiedContent<_ConditionalContent<ModifiedContent<MetricText, _EnvironmentKeyWritingModifier<WorkoutViewStyle>>, Text>, _ForegroundStyleModifier<Color>>, _TraitWritingModifier<LayoutPriorityTraitKey>>, Spacer, ModifiedContent<ModifiedContent<PacerRow, MetricRow>, _EnvironmentKeyWritingModifier<WorkoutViewStyle>>)>(&v59, &v53, &_s7SwiftUI9TupleViewVyAA15ModifiedContentVyAEyAA012_ConditionalF0VyAEy07WorkoutB010MetricTextVAA30_EnvironmentKeyWritingModifierVyAH0hD5StyleOGGAA0J0VGAA011_ForegroundoN0VyAA5ColorVGGAA06_TraitmN0VyAA014LayoutPriorityrL0VGG_AA6SpacerVAEyAEyAH8PacerRowVAH0iW0VGAOGtGMd);
  outlined destroy of TupleView<(ModifiedContent<ModifiedContent<_ConditionalContent<ModifiedContent<MetricText, _EnvironmentKeyWritingModifier<WorkoutViewStyle>>, Text>, _ForegroundStyleModifier<Color>>, _TraitWritingModifier<LayoutPriorityTraitKey>>, Spacer, ModifiedContent<ModifiedContent<PacerRow, MetricRow>, _EnvironmentKeyWritingModifier<WorkoutViewStyle>>)>(v70, &_s7SwiftUI9TupleViewVyAA15ModifiedContentVyAEyAA012_ConditionalF0VyAEy07WorkoutB010MetricTextVAA30_EnvironmentKeyWritingModifierVyAH0hD5StyleOGGAA0J0VGAA011_ForegroundoN0VyAA5ColorVGGAA06_TraitmN0VyAA014LayoutPriorityrL0VGG_AA6SpacerVAEyAEyAH8PacerRowVAH0iW0VGAOGtGMd);
  *(&v57[8] + 7) = v67;
  *(&v57[9] + 7) = v68;
  *(&v57[10] + 7) = v69[0];
  v57[11] = *(v69 + 9);
  *(&v57[4] + 7) = v63;
  *(&v57[5] + 7) = v64;
  *(&v57[6] + 7) = v65;
  *(&v57[7] + 7) = v66;
  *(v57 + 7) = v59;
  *(&v57[1] + 7) = v60;
  *(&v57[2] + 7) = v61;
  *(&v57[3] + 7) = v62;
  v47 = v58;
  v13 = MetricsPublisher.distanceGoalFinishTime.getter();
  if (v14)
  {
    *v8 = static HorizontalAlignment.center.getter();
    *(v8 + 1) = 0;
    v8[16] = 1;
    v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI13_VariadicViewO4TreeVy_AA13_VStackLayoutVAA05TupleD0VyAA6SpacerV_AA15ModifiedContentVyAMyAA6HStackVyAIyAA012_ConditionalK0VyAQyAQyAQyAQyAQy07WorkoutB0012EnergyMetricD0VATGAQyAR09HeartRatepD0VAR0qr9AggregatepD0VGGAQyAQyAyR04ZonepD0VGAQyAR06TimeIntpD0VA1_GGGAQyAQyAQyA4_AR04PacepD0VGAQyA9_A9_GGAQyA11_AQyAR08DistancepD0VAR04LapspD0VGGGGAQyAQyAQyAQyAQyAQyAR07CadencepD0VAA05EmptyD0VGA22_GA22_GAQyAR015ElevationChangepD0VAR016CurrentElevationpD0VGGAQyAQyAR05PowerpD0VA35_GAQyA35_AR014FlightsClimbedpD0VGGGAQyAQyAQyAR015SegmentDurationpD0VAR0x6DetailpD0VGAQyA9_ATGGAQyAQyATA35_GAQyA35_AMyAMyAR0nuD0VAR0P6DetailVGAA24_ForegroundStyleModifierVyAA5ColorVGGGGGGGAQyAQyAQyAQyA45_A9_GAQyAR012StrideLengthpD0VA68_GGAQyAQyAR019VerticalOscillationpD0VA72_GAQyAR013GroundContactupD0VA75_GGGAQyAQyA29_AR016DownhillRunCountpD0VGAQyA24_AOyAIyAMyAA4TextVAR0P9ValueFontVG_AMyAMyA83_AR0P19DescriptionCoreFontVGAR26ExtendedLineSpacingSupport33_241C09B5AC269BC1C919798A0AC522FDLLVGtGGGGGG_A99_tGGAR0P3RowVGAA30_EnvironmentKeyWritingModifierVyAR0nD5StyleOGGAKA110_tGGMd);
    closure #1 in MirrorPacerMetricPlatterView.progressView()(a1, &v8[*(v15 + 44)]);
    v16 = &_s7SwiftUI6VStackVyAA9TupleViewVyAA6SpacerV_AA15ModifiedContentVyAIyAA6HStackVyAEyAA012_ConditionalH0VyAMyAMyAMyAMyAMy07WorkoutB0012EnergyMetricE0VAPGAMyAN09HeartRatemE0VAN0no9AggregatemE0VGGAMyAMyAuN04ZonemE0VGAMyAN06TimeInqmE0VAYGGGAMyAMyAMyA0_AN04PacemE0VGAMyA5_A5_GGAMyA7_AMyAN08DistancemE0VAN04LapsmE0VGGGGAMyAMyAMyAMyAMyAMyAN07CadencemE0VAA05EmptyE0VGA18_GA18_GAMyAN015ElevationChangemE0VAN07CurrentymE0VGGAMyAMyAN05PowermE0VA31_GAMyA31_AN014FlightsClimbedmE0VGGGAMyAMyAMyAN015SegmentDurationmE0VAN0u6DetailmE0VGAMyA5_APGGAMyAMyAPA31_GAMyA31_AIyAIyAN0krE0VAN0M6DetailVGAA24_ForegroundStyleModifierVyAA5ColorVGGGGGGGAMyAMyAMyAMyA41_A5_GAMyAN012StrideLengthmE0VA64_GGAMyAMyAN019VerticalOscillationmE0VA68_GAMyAN013GroundContactrmE0VA71_GGGAMyAMyA25_AN016DownhillRunCountmE0VGAMyA20_AKyAEyAIyAA4TextVAN0M9ValueFontVG_AIyAIyA79_AN0M19DescriptionCoreFontVGAN26ExtendedLineSpacingSupport33_241C09B5AC269BC1C919798A0AC522FDLLVGtGGGGGG_A95_tGGAN0M3RowVGAA30_EnvironmentKeyWritingModifierVyAN0kE5StyleOGGAGA106_tGGMd;
    outlined init with copy of TupleView<(ModifiedContent<ModifiedContent<_ConditionalContent<ModifiedContent<MetricText, _EnvironmentKeyWritingModifier<WorkoutViewStyle>>, Text>, _ForegroundStyleModifier<Color>>, _TraitWritingModifier<LayoutPriorityTraitKey>>, Spacer, ModifiedContent<ModifiedContent<PacerRow, MetricRow>, _EnvironmentKeyWritingModifier<WorkoutViewStyle>>)>(v8, v45, &_s7SwiftUI6VStackVyAA9TupleViewVyAA6SpacerV_AA15ModifiedContentVyAIyAA6HStackVyAEyAA012_ConditionalH0VyAMyAMyAMyAMyAMy07WorkoutB0012EnergyMetricE0VAPGAMyAN09HeartRatemE0VAN0no9AggregatemE0VGGAMyAMyAuN04ZonemE0VGAMyAN06TimeInqmE0VAYGGGAMyAMyAMyA0_AN04PacemE0VGAMyA5_A5_GGAMyA7_AMyAN08DistancemE0VAN04LapsmE0VGGGGAMyAMyAMyAMyAMyAMyAN07CadencemE0VAA05EmptyE0VGA18_GA18_GAMyAN015ElevationChangemE0VAN07CurrentymE0VGGAMyAMyAN05PowermE0VA31_GAMyA31_AN014FlightsClimbedmE0VGGGAMyAMyAMyAN015SegmentDurationmE0VAN0u6DetailmE0VGAMyA5_APGGAMyAMyAPA31_GAMyA31_AIyAIyAN0krE0VAN0M6DetailVGAA24_ForegroundStyleModifierVyAA5ColorVGGGGGGGAMyAMyAMyAMyA41_A5_GAMyAN012StrideLengthmE0VA64_GGAMyAMyAN019VerticalOscillationmE0VA68_GAMyAN013GroundContactrmE0VA71_GGGAMyAMyA25_AN016DownhillRunCountmE0VGAMyA20_AKyAEyAIyAA4TextVAN0M9ValueFontVG_AIyAIyA79_AN0M19DescriptionCoreFontVGAN26ExtendedLineSpacingSupport33_241C09B5AC269BC1C919798A0AC522FDLLVGtGGGGGG_A95_tGGAN0M3RowVGAA30_EnvironmentKeyWritingModifierVyAN0kE5StyleOGGAGA106_tGGMd);
    swift_storeEnumTagMultiPayload();
    lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<VStack<TupleView<(ForEach<[String], String, HStack<TupleView<(ModifiedContent<ModifiedContent<ModifiedContent<Text, WorkoutNotificationFont>, _EnvironmentKeyWritingModifier<CGFloat>>, _EnvironmentKeyWritingModifier<Int?>>, Spacer)>>>, ModifiedContent<ModifiedContent<ElapsedTimeView, _EnvironmentKeyWritingModifier<Color?>>, _EnvironmentKeyWritingModifier<WorkoutViewStyle>>)>>, _PaddingLayout>, _EnvironmentKeyWritingModifier<WorkoutViewStyle>> and conformance <> ModifiedContent<A, B>();
    lazy protocol witness table accessor for type VStack<TupleView<(ForEach<[String], String, HStack<TupleView<(ModifiedContent<ModifiedContent<ModifiedContent<Text, WorkoutNotificationFont>, _EnvironmentKeyWritingModifier<CGFloat>>, _EnvironmentKeyWritingModifier<Int?>>, Spacer)>>>, ModifiedContent<ModifiedContent<ElapsedTimeView, _EnvironmentKeyWritingModifier<Color?>>, _EnvironmentKeyWritingModifier<WorkoutViewStyle>>)>> and conformance VStack<A>(&lazy protocol witness table cache variable for type VStack<TupleView<(Spacer, ModifiedContent<ModifiedContent<HStack<TupleView<(_ConditionalContent<_ConditionalContent<_ConditionalContent<_ConditionalContent<_ConditionalContent<_ConditionalContent<EnergyMetricView, EnergyMetricView>, _ConditionalContent<HeartRateMetricView, HeartRateAggregateMetricView>>, _ConditionalContent<_ConditionalContent<HeartRateAggregateMetricView, ZoneMetricView>, _ConditionalContent<TimeInZoneMetricView, ZoneMetricView>>>, _ConditionalContent<_ConditionalContent<_ConditionalContent<TimeInZoneMetricView, PaceMetricView>, _ConditionalContent<PaceMetricView, PaceMetricView>>, _ConditionalContent<_ConditionalContent<PaceMetricView, PaceMetricView>, _ConditionalContent<DistanceMetricView, LapsMetricView>>>>, _ConditionalContent<_ConditionalContent<_ConditionalContent<_ConditionalContent<_ConditionalContent<_ConditionalContent<CadenceMetricView, EmptyView>, CadenceMetricView>, CadenceMetricView>, _ConditionalContent<ElevationChangeMetri, &_s7SwiftUI6VStackVyAA9TupleViewVyAA6SpacerV_AA15ModifiedContentVyAIyAA6HStackVyAEyAA012_ConditionalH0VyAMyAMyAMyAMyAMy07WorkoutB0012EnergyMetricE0VAPGAMyAN09HeartRatemE0VAN0no9AggregatemE0VGGAMyAMyAuN04ZonemE0VGAMyAN06TimeInqmE0VAYGGGAMyAMyAMyA0_AN04PacemE0VGAMyA5_A5_GGAMyA7_AMyAN08DistancemE0VAN04LapsmE0VGGGGAMyAMyAMyAMyAMyAMyAN07CadencemE0VAA05EmptyE0VGA18_GA18_GAMyAN015ElevationChangemE0VAN07CurrentymE0VGGAMyAMyAN05PowermE0VA31_GAMyA31_AN014FlightsClimbedmE0VGGGAMyAMyAMyAN015SegmentDurationmE0VAN0u6DetailmE0VGAMyA5_APGGAMyAMyAPA31_GAMyA31_AIyAIyAN0krE0VAN0M6DetailVGAA24_ForegroundStyleModifierVyAA5ColorVGGGGGGGAMyAMyAMyAMyA41_A5_GAMyAN012StrideLengthmE0VA64_GGAMyAMyAN019VerticalOscillationmE0VA68_GAMyAN013GroundContactrmE0VA71_GGGAMyAMyA25_AN016DownhillRunCountmE0VGAMyA20_AKyAEyAIyAA4TextVAN0M9ValueFontVG_AIyAIyA79_AN0M19DescriptionCoreFontVGAN26ExtendedLineSpacingSupport33_241C09B5AC269BC1C919798A0AC522FDLLVGtGGGGGG_A95_tGGAN0M3RowVGAA30_EnvironmentKeyWritingModifierVyAN0kE5StyleOGGAGA106_tGGMd);
    _ConditionalContent<>.init(storage:)();
    v17 = v8;
  }

  else
  {
    v18 = *&v13;
    *v5 = static HorizontalAlignment.leading.getter();
    *(v5 + 1) = 0;
    v5[16] = 0;
    v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI13_VariadicViewO4TreeVy_AA13_VStackLayoutVAA05TupleD0VyAA7ForEachVySaySSGSSAA6HStackVyAIyAA15ModifiedContentVyAPyAPyAA4TextV07WorkoutB00O16NotificationFontVGAA30_EnvironmentKeyWritingModifierVy12CoreGraphics7CGFloatVGGAXySiSgGG_AA6SpacerVtGGG_APyAPyAS011ElapsedTimeD0VAXyAA5ColorVSgGGAXyAS0oD5StyleOGGtGGMd);
    closure #1 in MirrorPacerMetricPlatterView.goalCompleteView(_:)(&v5[*(v19 + 44)], v18);
    v20 = static Edge.Set.bottom.getter();
    EdgeInsets.init(_all:)();
    v22 = v21;
    v24 = v23;
    v26 = v25;
    v28 = v27;
    v29 = &v5[*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyAA6VStackVyAA9TupleViewVyAA7ForEachVySaySSGSSAA6HStackVyAGyACyACyACyAA4TextV07WorkoutB00L16NotificationFontVGAA30_EnvironmentKeyWritingModifierVy12CoreGraphics7CGFloatVGGATySiSgGG_AA6SpacerVtGGG_ACyACyAO011ElapsedTimeG0VATyAA5ColorVSgGGATyAO0lG5StyleOGGtGGAA14_PaddingLayoutVGMd) + 36)];
    *v29 = v20;
    *(v29 + 1) = v22;
    *(v29 + 2) = v24;
    *(v29 + 3) = v26;
    *(v29 + 4) = v28;
    v29[40] = 0;
    KeyPath = swift_getKeyPath();
    v31 = &v5[*(v49 + 36)];
    *v31 = KeyPath;
    v31[8] = 7;
    v16 = &_s7SwiftUI15ModifiedContentVyACyAA6VStackVyAA9TupleViewVyAA7ForEachVySaySSGSSAA6HStackVyAGyACyACyACyAA4TextV07WorkoutB00L16NotificationFontVGAA30_EnvironmentKeyWritingModifierVy12CoreGraphics7CGFloatVGGATySiSgGG_AA6SpacerVtGGG_ACyACyAO011ElapsedTimeG0VATyAA5ColorVSgGGATyAO0lG5StyleOGGtGGAA14_PaddingLayoutVGA15_GMd;
    outlined init with copy of TupleView<(ModifiedContent<ModifiedContent<_ConditionalContent<ModifiedContent<MetricText, _EnvironmentKeyWritingModifier<WorkoutViewStyle>>, Text>, _ForegroundStyleModifier<Color>>, _TraitWritingModifier<LayoutPriorityTraitKey>>, Spacer, ModifiedContent<ModifiedContent<PacerRow, MetricRow>, _EnvironmentKeyWritingModifier<WorkoutViewStyle>>)>(v5, v45, &_s7SwiftUI15ModifiedContentVyACyAA6VStackVyAA9TupleViewVyAA7ForEachVySaySSGSSAA6HStackVyAGyACyACyACyAA4TextV07WorkoutB00L16NotificationFontVGAA30_EnvironmentKeyWritingModifierVy12CoreGraphics7CGFloatVGGATySiSgGG_AA6SpacerVtGGG_ACyACyAO011ElapsedTimeG0VATyAA5ColorVSgGGATyAO0lG5StyleOGGtGGAA14_PaddingLayoutVGA15_GMd);
    swift_storeEnumTagMultiPayload();
    lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<VStack<TupleView<(ForEach<[String], String, HStack<TupleView<(ModifiedContent<ModifiedContent<ModifiedContent<Text, WorkoutNotificationFont>, _EnvironmentKeyWritingModifier<CGFloat>>, _EnvironmentKeyWritingModifier<Int?>>, Spacer)>>>, ModifiedContent<ModifiedContent<ElapsedTimeView, _EnvironmentKeyWritingModifier<Color?>>, _EnvironmentKeyWritingModifier<WorkoutViewStyle>>)>>, _PaddingLayout>, _EnvironmentKeyWritingModifier<WorkoutViewStyle>> and conformance <> ModifiedContent<A, B>();
    lazy protocol witness table accessor for type VStack<TupleView<(ForEach<[String], String, HStack<TupleView<(ModifiedContent<ModifiedContent<ModifiedContent<Text, WorkoutNotificationFont>, _EnvironmentKeyWritingModifier<CGFloat>>, _EnvironmentKeyWritingModifier<Int?>>, Spacer)>>>, ModifiedContent<ModifiedContent<ElapsedTimeView, _EnvironmentKeyWritingModifier<Color?>>, _EnvironmentKeyWritingModifier<WorkoutViewStyle>>)>> and conformance VStack<A>(&lazy protocol witness table cache variable for type VStack<TupleView<(Spacer, ModifiedContent<ModifiedContent<HStack<TupleView<(_ConditionalContent<_ConditionalContent<_ConditionalContent<_ConditionalContent<_ConditionalContent<_ConditionalContent<EnergyMetricView, EnergyMetricView>, _ConditionalContent<HeartRateMetricView, HeartRateAggregateMetricView>>, _ConditionalContent<_ConditionalContent<HeartRateAggregateMetricView, ZoneMetricView>, _ConditionalContent<TimeInZoneMetricView, ZoneMetricView>>>, _ConditionalContent<_ConditionalContent<_ConditionalContent<TimeInZoneMetricView, PaceMetricView>, _ConditionalContent<PaceMetricView, PaceMetricView>>, _ConditionalContent<_ConditionalContent<PaceMetricView, PaceMetricView>, _ConditionalContent<DistanceMetricView, LapsMetricView>>>>, _ConditionalContent<_ConditionalContent<_ConditionalContent<_ConditionalContent<_ConditionalContent<_ConditionalContent<CadenceMetricView, EmptyView>, CadenceMetricView>, CadenceMetricView>, _ConditionalContent<ElevationChangeMetri, &_s7SwiftUI6VStackVyAA9TupleViewVyAA6SpacerV_AA15ModifiedContentVyAIyAA6HStackVyAEyAA012_ConditionalH0VyAMyAMyAMyAMyAMy07WorkoutB0012EnergyMetricE0VAPGAMyAN09HeartRatemE0VAN0no9AggregatemE0VGGAMyAMyAuN04ZonemE0VGAMyAN06TimeInqmE0VAYGGGAMyAMyAMyA0_AN04PacemE0VGAMyA5_A5_GGAMyA7_AMyAN08DistancemE0VAN04LapsmE0VGGGGAMyAMyAMyAMyAMyAMyAN07CadencemE0VAA05EmptyE0VGA18_GA18_GAMyAN015ElevationChangemE0VAN07CurrentymE0VGGAMyAMyAN05PowermE0VA31_GAMyA31_AN014FlightsClimbedmE0VGGGAMyAMyAMyAN015SegmentDurationmE0VAN0u6DetailmE0VGAMyA5_APGGAMyAMyAPA31_GAMyA31_AIyAIyAN0krE0VAN0M6DetailVGAA24_ForegroundStyleModifierVyAA5ColorVGGGGGGGAMyAMyAMyAMyA41_A5_GAMyAN012StrideLengthmE0VA64_GGAMyAMyAN019VerticalOscillationmE0VA68_GAMyAN013GroundContactrmE0VA71_GGGAMyAMyA25_AN016DownhillRunCountmE0VGAMyA20_AKyAEyAIyAA4TextVAN0M9ValueFontVG_AIyAIyA79_AN0M19DescriptionCoreFontVGAN26ExtendedLineSpacingSupport33_241C09B5AC269BC1C919798A0AC522FDLLVGtGGGGGG_A95_tGGAN0M3RowVGAA30_EnvironmentKeyWritingModifierVyAN0kE5StyleOGGAGA106_tGGMd);
    _ConditionalContent<>.init(storage:)();
    v17 = v5;
  }

  outlined destroy of TupleView<(ModifiedContent<ModifiedContent<_ConditionalContent<ModifiedContent<MetricText, _EnvironmentKeyWritingModifier<WorkoutViewStyle>>, Text>, _ForegroundStyleModifier<Color>>, _TraitWritingModifier<LayoutPriorityTraitKey>>, Spacer, ModifiedContent<ModifiedContent<PacerRow, MetricRow>, _EnvironmentKeyWritingModifier<WorkoutViewStyle>>)>(v17, v16);
  v32 = v52;
  v33 = v50;
  outlined init with copy of TupleView<(ModifiedContent<ModifiedContent<_ConditionalContent<ModifiedContent<MetricText, _EnvironmentKeyWritingModifier<WorkoutViewStyle>>, Text>, _ForegroundStyleModifier<Color>>, _TraitWritingModifier<LayoutPriorityTraitKey>>, Spacer, ModifiedContent<ModifiedContent<PacerRow, MetricRow>, _EnvironmentKeyWritingModifier<WorkoutViewStyle>>)>(v52, v50, &_s7SwiftUI19_ConditionalContentVyAA08ModifiedD0VyAEyAA6VStackVyAA9TupleViewVyAA7ForEachVySaySSGSSAA6HStackVyAIyAEyAEyAEyAA4TextV07WorkoutB00M16NotificationFontVGAA30_EnvironmentKeyWritingModifierVy12CoreGraphics7CGFloatVGGAVySiSgGG_AA6SpacerVtGGG_AEyAEyAQ011ElapsedTimeH0VAVyAA5ColorVSgGGAVyAQ0mH5StyleOGGtGGAA14_PaddingLayoutVGA17_GAGyAIyA4__AEyAEyANyAIyACyACyACyACyACyACyAQ012EnergyMetricH0VA26_GACyAQ015HeartRateMetricH0VAQ024HeartRateAggregateMetricH0VGGACyACyA31_AQ010ZoneMetricH0VGACyAQ0y12InZoneMetricH0VA35_GGGACyACyACyA38_AQ010PaceMetricH0VGACyA43_A43_GGACyA45_ACyAQ014DistanceMetricH0VAQ010LapsMetricH0VGGGGACyACyACyACyACyACyAQ013CadenceMetricH0VAA05EmptyH0VGA56_GA56_GACyAQ021ElevationChangeMetricH0VAQ022CurrentElevationMetricH0VGGACyACyAQ011PowerMetricH0VA69_GACyA69_AQ020FlightsClimbedMetricH0VGGGACyACyACyAQ021SegmentDurationMetricH0VAQ020DistanceDetailMetricH0VGACyA43_A26_GGACyACyA26_A69_GACyA69_AEyAEyAQ0myH0VAQ12MetricDetailVGAA016_ForegroundStyleS0VyA11_GGGGGGGACyACyACyACyA79_A43_GACyAQ018StrideLengthMetricH0VA100_GGACyACyAQ025VerticalOscillationMetricH0VA104_GACyAQ013GroundContacty6MetricH0VA107_GGGACyACyA63_AQ022DownhillRunCountMetricH0VGACyA58_ANyAIyAEyApQ011MetricValueO0VG_AEyAEyApQ017MetricDescriptiontO0VGAQ26ExtendedLineSpacingSupport33_241C09B5AC269BC1C919798A0AC522FDLLVGtGGGGGG_A129_tGGAQ9MetricRowVGA17_GA4_A135_tGGGMd);
  v34 = v51;
  v53 = v51;
  v35 = v47;
  v54[0] = v47;
  *&v54[129] = v57[8];
  *&v54[145] = v57[9];
  *&v54[161] = v57[10];
  *&v54[177] = v57[11];
  *&v54[65] = v57[4];
  *&v54[81] = v57[5];
  *&v54[97] = v57[6];
  *&v54[113] = v57[7];
  *&v54[1] = v57[0];
  *&v54[17] = v57[1];
  *&v54[33] = v57[2];
  *&v54[49] = v57[3];
  v36 = *&v54[160];
  *(a2 + 160) = *&v54[144];
  *(a2 + 176) = v36;
  *(a2 + 192) = *&v54[176];
  *(a2 + 208) = v54[192];
  v37 = *&v54[96];
  *(a2 + 96) = *&v54[80];
  *(a2 + 112) = v37;
  v38 = *&v54[128];
  *(a2 + 128) = *&v54[112];
  *(a2 + 144) = v38;
  v39 = *&v54[32];
  *(a2 + 32) = *&v54[16];
  *(a2 + 48) = v39;
  v40 = *&v54[64];
  *(a2 + 64) = *&v54[48];
  *(a2 + 80) = v40;
  v41 = *v54;
  *a2 = v53;
  *(a2 + 16) = v41;
  v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI6VStackVyAA9TupleViewVyAA15ModifiedContentVyAGyAA012_ConditionalG0VyAGy07WorkoutB010MetricTextVAA30_EnvironmentKeyWritingModifierVyAJ0iE5StyleOGGAA0K0VGAA011_ForegroundpO0VyAA5ColorVGGAA06_TraitnO0VyAA014LayoutPrioritysM0VGG_AA6SpacerVAGyAGyAJ8PacerRowVAJ0jX0VGAQGtGG_AIyAGyAGyACyAEyAA7ForEachVySaySSGSSAA6HStackVyAEyAGyAGyAGyAtJ0I16NotificationFontVGANy12CoreGraphics7CGFloatVGGANySiSgGG_A7_tGGG_AGyAGyAJ011ElapsedTimeE0VANyAYSgGGAQGtGGAA08_PaddingT0VGAQGACyAEyA7__AGyAGyA20_yAEyAIyAIyAIyAIyAIyAIyAJ06EnergyjE0VA48_GAIyAJ09HeartRatejE0VAJ018HeartRateAggregatejE0VGGAIyAIyA53_AJ04ZonejE0VGAIyAJ010TimeInZonejE0VA57_GGGAIyAIyAIyA60_AJ04PacejE0VGAIyA65_A65_GGAIyA67_AIyAJ08DistancejE0VAJ04LapsjE0VGGGGAIyAIyAIyAIyAIyAIyAJ07CadencejE0VAA05EmptyE0VGA78_GA78_GAIyAJ015ElevationChangejE0VAJ016CurrentElevationjE0VGGAIyAIyAJ05PowerjE0VA91_GAIyA91_AJ014FlightsClimbedjE0VGGGAIyAIyAIyAJ015SegmentDurationjE0VAJ014DistanceDetailjE0VGAIyA65_A48_GGAIyAIyA48_A91_GAIyA91_AGyAGyAJ0i4TimeE0VAJ0J6DetailVGAZGGGGGGAIyAIyAIyAIyA101_A65_GAIyAJ012StrideLengthjE0VA119_GGAIyAIyAJ019VerticalOscillationjE0VA123_GAIyAJ017GroundContactTimejE0VA126_GGGAIyAIyA85_AJ016DownhillRunCountjE0VGAIyA80_A20_yAEyAGyAtJ0J9ValueFontVG_AGyAGyAtJ0J19DescriptionCoreFontVGAJ26ExtendedLineSpacingSupport33_241C09B5AC269BC1C919798A0AC522FDLLVGtGGGGGG_A148_tGGA11_GAQGA7_A152_tGGGtMd);
  outlined init with copy of TupleView<(ModifiedContent<ModifiedContent<_ConditionalContent<ModifiedContent<MetricText, _EnvironmentKeyWritingModifier<WorkoutViewStyle>>, Text>, _ForegroundStyleModifier<Color>>, _TraitWritingModifier<LayoutPriorityTraitKey>>, Spacer, ModifiedContent<ModifiedContent<PacerRow, MetricRow>, _EnvironmentKeyWritingModifier<WorkoutViewStyle>>)>(v33, a2 + *(v42 + 48), &_s7SwiftUI19_ConditionalContentVyAA08ModifiedD0VyAEyAA6VStackVyAA9TupleViewVyAA7ForEachVySaySSGSSAA6HStackVyAIyAEyAEyAEyAA4TextV07WorkoutB00M16NotificationFontVGAA30_EnvironmentKeyWritingModifierVy12CoreGraphics7CGFloatVGGAVySiSgGG_AA6SpacerVtGGG_AEyAEyAQ011ElapsedTimeH0VAVyAA5ColorVSgGGAVyAQ0mH5StyleOGGtGGAA14_PaddingLayoutVGA17_GAGyAIyA4__AEyAEyANyAIyACyACyACyACyACyACyAQ012EnergyMetricH0VA26_GACyAQ015HeartRateMetricH0VAQ024HeartRateAggregateMetricH0VGGACyACyA31_AQ010ZoneMetricH0VGACyAQ0y12InZoneMetricH0VA35_GGGACyACyACyA38_AQ010PaceMetricH0VGACyA43_A43_GGACyA45_ACyAQ014DistanceMetricH0VAQ010LapsMetricH0VGGGGACyACyACyACyACyACyAQ013CadenceMetricH0VAA05EmptyH0VGA56_GA56_GACyAQ021ElevationChangeMetricH0VAQ022CurrentElevationMetricH0VGGACyACyAQ011PowerMetricH0VA69_GACyA69_AQ020FlightsClimbedMetricH0VGGGACyACyACyAQ021SegmentDurationMetricH0VAQ020DistanceDetailMetricH0VGACyA43_A26_GGACyACyA26_A69_GACyA69_AEyAEyAQ0myH0VAQ12MetricDetailVGAA016_ForegroundStyleS0VyA11_GGGGGGGACyACyACyACyA79_A43_GACyAQ018StrideLengthMetricH0VA100_GGACyACyAQ025VerticalOscillationMetricH0VA104_GACyAQ013GroundContacty6MetricH0VA107_GGGACyACyA63_AQ022DownhillRunCountMetricH0VGACyA58_ANyAIyAEyApQ011MetricValueO0VG_AEyAEyApQ017MetricDescriptiontO0VGAQ26ExtendedLineSpacingSupport33_241C09B5AC269BC1C919798A0AC522FDLLVGtGGGGGG_A129_tGGAQ9MetricRowVGA17_GA4_A135_tGGGMd);
  outlined init with copy of TupleView<(ModifiedContent<ModifiedContent<_ConditionalContent<ModifiedContent<MetricText, _EnvironmentKeyWritingModifier<WorkoutViewStyle>>, Text>, _ForegroundStyleModifier<Color>>, _TraitWritingModifier<LayoutPriorityTraitKey>>, Spacer, ModifiedContent<ModifiedContent<PacerRow, MetricRow>, _EnvironmentKeyWritingModifier<WorkoutViewStyle>>)>(&v53, &v55, &_s7SwiftUI6VStackVyAA9TupleViewVyAA15ModifiedContentVyAGyAA012_ConditionalG0VyAGy07WorkoutB010MetricTextVAA30_EnvironmentKeyWritingModifierVyAJ0iE5StyleOGGAA0K0VGAA011_ForegroundpO0VyAA5ColorVGGAA06_TraitnO0VyAA014LayoutPrioritysM0VGG_AA6SpacerVAGyAGyAJ8PacerRowVAJ0jX0VGAQGtGGMd);
  outlined destroy of TupleView<(ModifiedContent<ModifiedContent<_ConditionalContent<ModifiedContent<MetricText, _EnvironmentKeyWritingModifier<WorkoutViewStyle>>, Text>, _ForegroundStyleModifier<Color>>, _TraitWritingModifier<LayoutPriorityTraitKey>>, Spacer, ModifiedContent<ModifiedContent<PacerRow, MetricRow>, _EnvironmentKeyWritingModifier<WorkoutViewStyle>>)>(v32, &_s7SwiftUI19_ConditionalContentVyAA08ModifiedD0VyAEyAA6VStackVyAA9TupleViewVyAA7ForEachVySaySSGSSAA6HStackVyAIyAEyAEyAEyAA4TextV07WorkoutB00M16NotificationFontVGAA30_EnvironmentKeyWritingModifierVy12CoreGraphics7CGFloatVGGAVySiSgGG_AA6SpacerVtGGG_AEyAEyAQ011ElapsedTimeH0VAVyAA5ColorVSgGGAVyAQ0mH5StyleOGGtGGAA14_PaddingLayoutVGA17_GAGyAIyA4__AEyAEyANyAIyACyACyACyACyACyACyAQ012EnergyMetricH0VA26_GACyAQ015HeartRateMetricH0VAQ024HeartRateAggregateMetricH0VGGACyACyA31_AQ010ZoneMetricH0VGACyAQ0y12InZoneMetricH0VA35_GGGACyACyACyA38_AQ010PaceMetricH0VGACyA43_A43_GGACyA45_ACyAQ014DistanceMetricH0VAQ010LapsMetricH0VGGGGACyACyACyACyACyACyAQ013CadenceMetricH0VAA05EmptyH0VGA56_GA56_GACyAQ021ElevationChangeMetricH0VAQ022CurrentElevationMetricH0VGGACyACyAQ011PowerMetricH0VA69_GACyA69_AQ020FlightsClimbedMetricH0VGGGACyACyACyAQ021SegmentDurationMetricH0VAQ020DistanceDetailMetricH0VGACyA43_A26_GGACyACyA26_A69_GACyA69_AEyAEyAQ0myH0VAQ12MetricDetailVGAA016_ForegroundStyleS0VyA11_GGGGGGGACyACyACyACyA79_A43_GACyAQ018StrideLengthMetricH0VA100_GGACyACyAQ025VerticalOscillationMetricH0VA104_GACyAQ013GroundContacty6MetricH0VA107_GGGACyACyA63_AQ022DownhillRunCountMetricH0VGACyA58_ANyAIyAEyApQ011MetricValueO0VG_AEyAEyApQ017MetricDescriptiontO0VGAQ26ExtendedLineSpacingSupport33_241C09B5AC269BC1C919798A0AC522FDLLVGtGGGGGG_A129_tGGAQ9MetricRowVGA17_GA4_A135_tGGGMd);
  outlined destroy of TupleView<(ModifiedContent<ModifiedContent<_ConditionalContent<ModifiedContent<MetricText, _EnvironmentKeyWritingModifier<WorkoutViewStyle>>, Text>, _ForegroundStyleModifier<Color>>, _TraitWritingModifier<LayoutPriorityTraitKey>>, Spacer, ModifiedContent<ModifiedContent<PacerRow, MetricRow>, _EnvironmentKeyWritingModifier<WorkoutViewStyle>>)>(v33, &_s7SwiftUI19_ConditionalContentVyAA08ModifiedD0VyAEyAA6VStackVyAA9TupleViewVyAA7ForEachVySaySSGSSAA6HStackVyAIyAEyAEyAEyAA4TextV07WorkoutB00M16NotificationFontVGAA30_EnvironmentKeyWritingModifierVy12CoreGraphics7CGFloatVGGAVySiSgGG_AA6SpacerVtGGG_AEyAEyAQ011ElapsedTimeH0VAVyAA5ColorVSgGGAVyAQ0mH5StyleOGGtGGAA14_PaddingLayoutVGA17_GAGyAIyA4__AEyAEyANyAIyACyACyACyACyACyACyAQ012EnergyMetricH0VA26_GACyAQ015HeartRateMetricH0VAQ024HeartRateAggregateMetricH0VGGACyACyA31_AQ010ZoneMetricH0VGACyAQ0y12InZoneMetricH0VA35_GGGACyACyACyA38_AQ010PaceMetricH0VGACyA43_A43_GGACyA45_ACyAQ014DistanceMetricH0VAQ010LapsMetricH0VGGGGACyACyACyACyACyACyAQ013CadenceMetricH0VAA05EmptyH0VGA56_GA56_GACyAQ021ElevationChangeMetricH0VAQ022CurrentElevationMetricH0VGGACyACyAQ011PowerMetricH0VA69_GACyA69_AQ020FlightsClimbedMetricH0VGGGACyACyACyAQ021SegmentDurationMetricH0VAQ020DistanceDetailMetricH0VGACyA43_A26_GGACyACyA26_A69_GACyA69_AEyAEyAQ0myH0VAQ12MetricDetailVGAA016_ForegroundStyleS0VyA11_GGGGGGGACyACyACyACyA79_A43_GACyAQ018StrideLengthMetricH0VA100_GGACyACyAQ025VerticalOscillationMetricH0VA104_GACyAQ013GroundContacty6MetricH0VA107_GGGACyACyA63_AQ022DownhillRunCountMetricH0VGACyA58_ANyAIyAEyApQ011MetricValueO0VG_AEyAEyApQ017MetricDescriptiontO0VGAQ26ExtendedLineSpacingSupport33_241C09B5AC269BC1C919798A0AC522FDLLVGtGGGGGG_A129_tGGAQ9MetricRowVGA17_GA4_A135_tGGGMd);
  *(&v56[16] + 1) = v57[8];
  *(&v56[18] + 1) = v57[9];
  *(&v56[20] + 1) = v57[10];
  *(&v56[22] + 1) = v57[11];
  *(&v56[8] + 1) = v57[4];
  *(&v56[10] + 1) = v57[5];
  *(&v56[12] + 1) = v57[6];
  *(&v56[14] + 1) = v57[7];
  *(v56 + 1) = v57[0];
  *(&v56[2] + 1) = v57[1];
  *(&v56[4] + 1) = v57[2];
  v55 = v34;
  LOBYTE(v56[0]) = v35;
  *(&v56[6] + 1) = v57[3];
  return outlined destroy of TupleView<(ModifiedContent<ModifiedContent<_ConditionalContent<ModifiedContent<MetricText, _EnvironmentKeyWritingModifier<WorkoutViewStyle>>, Text>, _ForegroundStyleModifier<Color>>, _TraitWritingModifier<LayoutPriorityTraitKey>>, Spacer, ModifiedContent<ModifiedContent<PacerRow, MetricRow>, _EnvironmentKeyWritingModifier<WorkoutViewStyle>>)>(&v55, &_s7SwiftUI6VStackVyAA9TupleViewVyAA15ModifiedContentVyAGyAA012_ConditionalG0VyAGy07WorkoutB010MetricTextVAA30_EnvironmentKeyWritingModifierVyAJ0iE5StyleOGGAA0K0VGAA011_ForegroundpO0VyAA5ColorVGGAA06_TraitnO0VyAA014LayoutPrioritysM0VGG_AA6SpacerVAGyAGyAJ8PacerRowVAJ0jX0VGAQGtGGMd);
}

uint64_t closure #1 in MirrorPacerMetricPlatterView.progressTrackerView()@<X0>(uint64_t a1@<X8>)
{
  MetricsPublisher.secondsAheadOfPacer.getter();
  v36 = v2;
  v37 = round(v2);
  LOBYTE(v38) = 3;
  v39 = 0x4066800000000000;
  PacerViewConfiguration.text.getter(&v45);
  v21 = v47;
  v22 = v48;
  v23 = v49;
  LOWORD(v24) = v50;
  v19 = v45;
  v20 = v46;
  MetricsPublisher.secondsAheadOfPacer.getter();
  *&v31 = v3;
  *(&v31 + 1) = round(v3);
  LOBYTE(v32) = 3;
  *(&v32 + 1) = 0x4066800000000000;
  PacerViewConfiguration.pillConfiguration.getter(v25);
  v4 = v26;

  MetricsPublisher.secondsAheadOfPacer.getter();
  v6 = v5;
  if (one-time initialization token for standard != -1)
  {
    swift_once();
  }

  v7 = static BarConfiguration.standard;
  v8 = *algn_27C80EFC8;
  v9 = qword_27C80EFD0;
  KeyPath = swift_getKeyPath();
  v11 = swift_getKeyPath();
  LOBYTE(v45) = 0;

  v12 = v45;
  v26 = v21;
  v27 = v22;
  v28 = v23;
  v25[0] = v19;
  v25[1] = v20;
  *&v29 = v24;
  *(&v29 + 1) = v4;
  v30 = 0x3FF0000000000000;
  *&v31 = v6;
  *(&v31 + 1) = v7;
  *&v32 = v8;
  *(&v32 + 1) = v9;
  *&v33 = KeyPath;
  BYTE8(v33) = v45;
  *&v34 = 0;
  *(&v34 + 1) = v11;
  v35 = 2;
  v18[71] = 2;
  *&v18[7] = v31;
  *&v18[23] = v32;
  *&v18[39] = v33;
  *&v18[55] = v34;
  *a1 = v19;
  *(a1 + 16) = v20;
  v13 = v26;
  v14 = v27;
  v15 = v29;
  v16 = v30;
  *(a1 + 64) = v28;
  *(a1 + 80) = v15;
  *(a1 + 32) = v13;
  *(a1 + 48) = v14;
  *(a1 + 96) = v16;
  *(a1 + 104) = 0;
  *(a1 + 112) = 1;
  *(a1 + 113) = *v18;
  *(a1 + 177) = *&v18[64];
  *(a1 + 161) = *&v18[48];
  *(a1 + 145) = *&v18[32];
  *(a1 + 129) = *&v18[16];
  v36 = v6;
  v37 = *&v7;
  v38 = v8;
  v39 = v9;
  v40 = KeyPath;
  v41 = v12;
  v42 = 0;
  v43 = v11;
  v44 = 2;
  outlined init with copy of TupleView<(ModifiedContent<ModifiedContent<_ConditionalContent<ModifiedContent<MetricText, _EnvironmentKeyWritingModifier<WorkoutViewStyle>>, Text>, _ForegroundStyleModifier<Color>>, _TraitWritingModifier<LayoutPriorityTraitKey>>, Spacer, ModifiedContent<ModifiedContent<PacerRow, MetricRow>, _EnvironmentKeyWritingModifier<WorkoutViewStyle>>)>(v25, &v45, &_s7SwiftUI15ModifiedContentVyACyAA012_ConditionalD0VyACy07WorkoutB010MetricTextVAA30_EnvironmentKeyWritingModifierVyAF0F9ViewStyleOGGAA0H0VGAA011_ForegroundnL0VyAA5ColorVGGAA06_TraitkL0VyAA014LayoutPriorityqJ0VGGMd);
  outlined init with copy of TupleView<(ModifiedContent<ModifiedContent<_ConditionalContent<ModifiedContent<MetricText, _EnvironmentKeyWritingModifier<WorkoutViewStyle>>, Text>, _ForegroundStyleModifier<Color>>, _TraitWritingModifier<LayoutPriorityTraitKey>>, Spacer, ModifiedContent<ModifiedContent<PacerRow, MetricRow>, _EnvironmentKeyWritingModifier<WorkoutViewStyle>>)>(&v31, &v45, &_s7SwiftUI15ModifiedContentVyACy07WorkoutB08PacerRowVAD06MetricG0VGAA30_EnvironmentKeyWritingModifierVyAD0E9ViewStyleOGGMd);
  outlined destroy of TupleView<(ModifiedContent<ModifiedContent<_ConditionalContent<ModifiedContent<MetricText, _EnvironmentKeyWritingModifier<WorkoutViewStyle>>, Text>, _ForegroundStyleModifier<Color>>, _TraitWritingModifier<LayoutPriorityTraitKey>>, Spacer, ModifiedContent<ModifiedContent<PacerRow, MetricRow>, _EnvironmentKeyWritingModifier<WorkoutViewStyle>>)>(&v36, &_s7SwiftUI15ModifiedContentVyACy07WorkoutB08PacerRowVAD06MetricG0VGAA30_EnvironmentKeyWritingModifierVyAD0E9ViewStyleOGGMd);
  v47 = v21;
  v48 = v22;
  v49 = v23;
  v45 = v19;
  v46 = v20;
  v50 = v24;
  v51 = v4;
  v52 = 0x3FF0000000000000;
  return outlined destroy of TupleView<(ModifiedContent<ModifiedContent<_ConditionalContent<ModifiedContent<MetricText, _EnvironmentKeyWritingModifier<WorkoutViewStyle>>, Text>, _ForegroundStyleModifier<Color>>, _TraitWritingModifier<LayoutPriorityTraitKey>>, Spacer, ModifiedContent<ModifiedContent<PacerRow, MetricRow>, _EnvironmentKeyWritingModifier<WorkoutViewStyle>>)>(&v45, &_s7SwiftUI15ModifiedContentVyACyAA012_ConditionalD0VyACy07WorkoutB010MetricTextVAA30_EnvironmentKeyWritingModifierVyAF0F9ViewStyleOGGAA0H0VGAA011_ForegroundnL0VyAA5ColorVGGAA06_TraitkL0VyAA014LayoutPriorityqJ0VGGMd);
}

uint64_t closure #1 in MirrorPacerMetricPlatterView.goalCompleteView(_:)@<X0>(char *a1@<X8>, double a2@<D0>)
{
  v41 = a1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI7ForEachVySaySSGSSAA6HStackVyAA9TupleViewVyAA15ModifiedContentVyAJyAJyAA4TextV07WorkoutB00K16NotificationFontVGAA30_EnvironmentKeyWritingModifierVy12CoreGraphics7CGFloatVGGARySiSgGG_AA6SpacerVtGGGMd);
  v43 = *(v3 - 8);
  v44 = v3;
  MEMORY[0x28223BE20](v3);
  v42 = &v40 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v40 = &v40 - v6;
  v7 = "DISTANCE_UNIT_SECTION_METRIC";
  if (one-time initialization token for WorkoutUIBundle != -1)
  {
    goto LABEL_12;
  }

  while (1)
  {
    swift_beginAccess();
    v8 = WorkoutUIBundle.super.isa;
    v46._object = 0xE000000000000000;
    v9.value._countAndFlagsBits = 0x617A696C61636F4CLL;
    v9.value._object = 0xEB00000000656C62;
    v10._object = (v7 | 0x8000000000000000);
    v10._countAndFlagsBits = 0xD000000000000019;
    v11._countAndFlagsBits = 0;
    v11._object = 0xE000000000000000;
    v46._countAndFlagsBits = 0;
    v12 = NSLocalizedString(_:tableName:bundle:value:comment:)(v10, v9, v8, v11, v46);

    v45 = v12;
    v13 = lazy protocol witness table accessor for type String and conformance String();
    v14 = MEMORY[0x20F30C750](10, 0xE100000000000000, 0x7FFFFFFFFFFFFFFFLL, 1, MEMORY[0x277D837D0], v13);

    v15 = *(v14 + 16);
    if (!v15)
    {
      break;
    }

    v45._countAndFlagsBits = MEMORY[0x277D84F90];
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v15, 0);
    v7 = 0;
    countAndFlagsBits = v45._countAndFlagsBits;
    v17 = (v14 + 56);
    while (v7 < *(v14 + 16))
    {
      v18 = *(v17 - 3);
      v19 = *(v17 - 2);
      v20 = *(v17 - 1);
      v21 = *v17;

      v22 = MEMORY[0x20F30BBA0](v18, v19, v20, v21);
      v24 = v23;

      v45._countAndFlagsBits = countAndFlagsBits;
      v26 = *(countAndFlagsBits + 16);
      v25 = *(countAndFlagsBits + 24);
      if (v26 >= v25 >> 1)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v25 > 1), v26 + 1, 1);
        countAndFlagsBits = v45._countAndFlagsBits;
      }

      ++v7;
      *(countAndFlagsBits + 16) = v26 + 1;
      v27 = countAndFlagsBits + 16 * v26;
      *(v27 + 32) = v22;
      *(v27 + 40) = v24;
      v17 += 4;
      if (v15 == v7)
      {

        goto LABEL_10;
      }
    }

    __break(1u);
LABEL_12:
    swift_once();
  }

  countAndFlagsBits = MEMORY[0x277D84F90];
LABEL_10:
  v45._countAndFlagsBits = countAndFlagsBits;
  swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySSGMd);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI6HStackVyAA9TupleViewVyAA15ModifiedContentVyAGyAGyAA4TextV07WorkoutB00I16NotificationFontVGAA30_EnvironmentKeyWritingModifierVy12CoreGraphics7CGFloatVGGAOySiSgGG_AA6SpacerVtGGMd);
  lazy protocol witness table accessor for type VStack<TupleView<(ForEach<[String], String, HStack<TupleView<(ModifiedContent<ModifiedContent<ModifiedContent<Text, WorkoutNotificationFont>, _EnvironmentKeyWritingModifier<CGFloat>>, _EnvironmentKeyWritingModifier<Int?>>, Spacer)>>>, ModifiedContent<ModifiedContent<ElapsedTimeView, _EnvironmentKeyWritingModifier<Color?>>, _EnvironmentKeyWritingModifier<WorkoutViewStyle>>)>> and conformance VStack<A>(&lazy protocol witness table cache variable for type [String] and conformance [A], &_sSaySSGMd);
  lazy protocol witness table accessor for type VStack<TupleView<(ForEach<[String], String, HStack<TupleView<(ModifiedContent<ModifiedContent<ModifiedContent<Text, WorkoutNotificationFont>, _EnvironmentKeyWritingModifier<CGFloat>>, _EnvironmentKeyWritingModifier<Int?>>, Spacer)>>>, ModifiedContent<ModifiedContent<ElapsedTimeView, _EnvironmentKeyWritingModifier<Color?>>, _EnvironmentKeyWritingModifier<WorkoutViewStyle>>)>> and conformance VStack<A>(&lazy protocol witness table cache variable for type HStack<TupleView<(ModifiedContent<ModifiedContent<ModifiedContent<Text, WorkoutNotificationFont>, _EnvironmentKeyWritingModifier<CGFloat>>, _EnvironmentKeyWritingModifier<Int?>>, Spacer)>> and conformance HStack<A>, &_s7SwiftUI6HStackVyAA9TupleViewVyAA15ModifiedContentVyAGyAGyAA4TextV07WorkoutB00I16NotificationFontVGAA30_EnvironmentKeyWritingModifierVy12CoreGraphics7CGFloatVGGAOySiSgGG_AA6SpacerVtGGMd);
  v28 = v40;
  ForEach<>.init(_:id:content:)();
  [objc_allocWithZone(MEMORY[0x277D75348]) initWithDisplayP3Red:0.458823529 green:0.898039216 blue:0.898039216 alpha:1.0];
  v29 = Color.init(uiColor:)();
  KeyPath = swift_getKeyPath();
  v31 = swift_getKeyPath();
  v33 = v42;
  v32 = v43;
  v34 = *(v43 + 16);
  v35 = v44;
  v34(v42, v28, v44);
  v36 = v41;
  v34(v41, v33, v35);
  v37 = &v36[*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI7ForEachVySaySSGSSAA6HStackVyAA9TupleViewVyAA15ModifiedContentVyAJyAJyAA4TextV07WorkoutB00K16NotificationFontVGAA30_EnvironmentKeyWritingModifierVy12CoreGraphics7CGFloatVGGARySiSgGG_AA6SpacerVtGGG_AJyAJyAM011ElapsedTimeG0VARyAA5ColorVSgGGARyAM0kG5StyleOGGtMd) + 48)];
  *v37 = a2;
  v37[8] = 0;
  *(v37 + 2) = KeyPath;
  *(v37 + 3) = v29;
  *(v37 + 4) = v31;
  v37[40] = 2;
  v38 = *(v32 + 8);

  v38(v28, v35);

  return (v38)(v33, v35);
}

double closure #1 in closure #1 in MirrorPacerMetricPlatterView.goalCompleteView(_:)@<D0>(uint64_t a1@<X8>)
{
  v2 = static VerticalAlignment.center.getter();
  v9 = 1;
  static WorkoutNotificationFont.multilineTextView(with:lineLimit:)(1, &v10);
  v24[2] = v12;
  v24[3] = v13;
  v24[4] = v14;
  v25 = v15;
  v24[0] = v10;
  v24[1] = v11;
  v16[3] = v13;
  v16[4] = v14;
  v17 = v15;
  v16[1] = v11;
  v16[2] = v12;
  v16[0] = v10;
  v18 = v10;
  v19 = v11;
  LOBYTE(v23) = v15;
  v21 = v13;
  v22 = v14;
  v20 = v12;
  v7[88] = 1;
  outlined init with copy of TupleView<(ModifiedContent<ModifiedContent<_ConditionalContent<ModifiedContent<MetricText, _EnvironmentKeyWritingModifier<WorkoutViewStyle>>, Text>, _ForegroundStyleModifier<Color>>, _TraitWritingModifier<LayoutPriorityTraitKey>>, Spacer, ModifiedContent<ModifiedContent<PacerRow, MetricRow>, _EnvironmentKeyWritingModifier<WorkoutViewStyle>>)>(v16, v7, &_s7SwiftUI15ModifiedContentVyACyACyAA4TextV07WorkoutB00F16NotificationFontVGAA30_EnvironmentKeyWritingModifierVy12CoreGraphics7CGFloatVGGAKySiSgGGMd);
  outlined destroy of TupleView<(ModifiedContent<ModifiedContent<_ConditionalContent<ModifiedContent<MetricText, _EnvironmentKeyWritingModifier<WorkoutViewStyle>>, Text>, _ForegroundStyleModifier<Color>>, _TraitWritingModifier<LayoutPriorityTraitKey>>, Spacer, ModifiedContent<ModifiedContent<PacerRow, MetricRow>, _EnvironmentKeyWritingModifier<WorkoutViewStyle>>)>(v24, &_s7SwiftUI15ModifiedContentVyACyACyAA4TextV07WorkoutB00F16NotificationFontVGAA30_EnvironmentKeyWritingModifierVy12CoreGraphics7CGFloatVGGAKySiSgGGMd);
  *&v8[23] = v19;
  *&v8[39] = v20;
  *&v8[71] = v22;
  *&v8[87] = v23;
  *&v8[55] = v21;
  *&v8[7] = v18;
  v3 = *&v8[48];
  *(a1 + 49) = *&v8[32];
  *(a1 + 65) = v3;
  *(a1 + 81) = *&v8[64];
  *(a1 + 96) = *&v8[79];
  result = *v8;
  v5 = *&v8[16];
  *(a1 + 17) = *v8;
  v6 = v9;
  *a1 = v2;
  *(a1 + 8) = 0;
  *(a1 + 16) = v6;
  *(a1 + 33) = v5;
  *(a1 + 112) = 0;
  *(a1 + 120) = 1;
  return result;
}

uint64_t closure #1 in MirrorPacerMetricPlatterView.progressView()@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyACyAA6HStackVyAA9TupleViewVyAA012_ConditionalD0VyAIyAIyAIyAIyAIy07WorkoutB0012EnergyMetricG0VALGAIyAJ09HeartRatekG0VAJ0lm9AggregatekG0VGGAIyAIyAqJ04ZonekG0VGAIyAJ06TimeInokG0VAUGGGAIyAIyAIyAxJ04PacekG0VGAIyA1_A1_GGAIyA3_AIyAJ08DistancekG0VAJ04LapskG0VGGGGAIyAIyAIyAIyAIyAIyAJ07CadencekG0VAA05EmptyG0VGA14_GA14_GAIyAJ015ElevationChangekG0VAJ07CurrentwkG0VGGAIyAIyAJ05PowerkG0VA27_GAIyA27_AJ014FlightsClimbedkG0VGGGAIyAIyAIyAJ015SegmentDurationkG0VAJ0s6DetailkG0VGAIyA1_ALGGAIyAIyALA27_GAIyA27_ACyACyAJ0ipG0VAJ0K6DetailVGAA24_ForegroundStyleModifierVyAA5ColorVGGGGGGGAIyAIyAIyAIyA37_A1_GAIyAJ012StrideLengthkG0VA60_GGAIyAIyAJ019VerticalOscillationkG0VA64_GAIyAJ013GroundContactpkG0VA67_GGGAIyAIyA21_AJ016DownhillRunCountkG0VGAIyA16_AEyAGyACyAA4TextVAJ0K9ValueFontVG_ACyACyA75_AJ0K19DescriptionCoreFontVGAJ26ExtendedLineSpacingSupport33_241C09B5AC269BC1C919798A0AC522FDLLVGtGGGGGG_A91_tGGAJ0K3RowVGAA30_EnvironmentKeyWritingModifierVyAJ0iG5StyleOGGMd);
  v5 = v4 - 8;
  MEMORY[0x28223BE20](v4);
  v28 = &v27 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v27 = &v27 - v8;
  MEMORY[0x28223BE20](v9);
  v11 = &v27 - v10;
  MEMORY[0x28223BE20](v12);
  v14 = &v27 - v13;
  v15 = *(a1 + 56);
  *v14 = static VerticalAlignment.center.getter();
  *(v14 + 1) = v15;
  v14[16] = 0;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI13_VariadicViewO4TreeVy_AA13_HStackLayoutVAA05TupleD0VyAA19_ConditionalContentVyAKyAKyAKyAKyAKy07WorkoutB0012EnergyMetricD0VANGAKyAL09HeartRatemD0VAL0no9AggregatemD0VGGAKyAKyAsL04ZonemD0VGAKyAL06TimeInqmD0VAWGGGAKyAKyAKyAzL04PacemD0VGAKyA3_A3_GGAKyA5_AKyAL08DistancemD0VAL04LapsmD0VGGGGAKyAKyAKyAKyAKyAKyAL07CadencemD0VAA05EmptyD0VGA16_GA16_GAKyAL015ElevationChangemD0VAL07CurrentymD0VGGAKyAKyAL05PowermD0VA29_GAKyA29_AL014FlightsClimbedmD0VGGGAKyAKyAKyAL015SegmentDurationmD0VAL0u6DetailmD0VGAKyA3_ANGGAKyAKyANA29_GAKyA29_AA08ModifiedJ0VyA45_yAL0krD0VAL0M6DetailVGAA24_ForegroundStyleModifierVyAA5ColorVGGGGGGGAKyAKyAKyAKyA39_A3_GAKyAL012StrideLengthmD0VA64_GGAKyAKyAL019VerticalOscillationmD0VA68_GAKyAL013GroundContactrmD0VA71_GGGAKyAKyA23_AL016DownhillRunCountmD0VGAKyA18_AA0F0VyAIyA45_yAA4TextVAL0M9ValueFontVG_A45_yA45_yA81_AL0M19DescriptionCoreFontVGAL26ExtendedLineSpacingSupport33_241C09B5AC269BC1C919798A0AC522FDLLVGtGGGGGG_A97_tGGMd);
  closure #1 in closure #1 in MirrorPacerMetricPlatterView.progressView()(a1, &v14[*(v16 + 44)]);
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyAA6HStackVyAA9TupleViewVyAA012_ConditionalD0VyAIyAIyAIyAIyAIy07WorkoutB0012EnergyMetricG0VALGAIyAJ09HeartRatekG0VAJ0lm9AggregatekG0VGGAIyAIyAqJ04ZonekG0VGAIyAJ06TimeInokG0VAUGGGAIyAIyAIyAxJ04PacekG0VGAIyA1_A1_GGAIyA3_AIyAJ08DistancekG0VAJ04LapskG0VGGGGAIyAIyAIyAIyAIyAIyAJ07CadencekG0VAA05EmptyG0VGA14_GA14_GAIyAJ015ElevationChangekG0VAJ07CurrentwkG0VGGAIyAIyAJ05PowerkG0VA27_GAIyA27_AJ014FlightsClimbedkG0VGGGAIyAIyAIyAJ015SegmentDurationkG0VAJ0s6DetailkG0VGAIyA1_ALGGAIyAIyALA27_GAIyA27_ACyACyAJ0ipG0VAJ0K6DetailVGAA24_ForegroundStyleModifierVyAA5ColorVGGGGGGGAIyAIyAIyAIyA37_A1_GAIyAJ012StrideLengthkG0VA60_GGAIyAIyAJ019VerticalOscillationkG0VA64_GAIyAJ013GroundContactpkG0VA67_GGGAIyAIyA21_AJ016DownhillRunCountkG0VGAIyA16_AEyAGyACyAA4TextVAJ0K9ValueFontVG_ACyACyA75_AJ0K19DescriptionCoreFontVGAJ26ExtendedLineSpacingSupport33_241C09B5AC269BC1C919798A0AC522FDLLVGtGGGGGG_A91_tGGAJ0K3RowVGMd);
  *&v14[*(v17 + 36)] = 0;
  KeyPath = swift_getKeyPath();
  v19 = &v14[*(v5 + 44)];
  *v19 = KeyPath;
  v19[8] = 5;
  *v11 = static VerticalAlignment.center.getter();
  *(v11 + 1) = v15;
  v11[16] = 0;
  closure #2 in closure #1 in MirrorPacerMetricPlatterView.progressView()(a1, &v11[*(v16 + 44)]);
  *&v11[*(v17 + 36)] = 0;
  v20 = swift_getKeyPath();
  v21 = &v11[*(v5 + 44)];
  *v21 = v20;
  v21[8] = 5;
  v22 = v27;
  outlined init with copy of TupleView<(ModifiedContent<ModifiedContent<_ConditionalContent<ModifiedContent<MetricText, _EnvironmentKeyWritingModifier<WorkoutViewStyle>>, Text>, _ForegroundStyleModifier<Color>>, _TraitWritingModifier<LayoutPriorityTraitKey>>, Spacer, ModifiedContent<ModifiedContent<PacerRow, MetricRow>, _EnvironmentKeyWritingModifier<WorkoutViewStyle>>)>(v14, v27, &_s7SwiftUI15ModifiedContentVyACyAA6HStackVyAA9TupleViewVyAA012_ConditionalD0VyAIyAIyAIyAIyAIy07WorkoutB0012EnergyMetricG0VALGAIyAJ09HeartRatekG0VAJ0lm9AggregatekG0VGGAIyAIyAqJ04ZonekG0VGAIyAJ06TimeInokG0VAUGGGAIyAIyAIyAxJ04PacekG0VGAIyA1_A1_GGAIyA3_AIyAJ08DistancekG0VAJ04LapskG0VGGGGAIyAIyAIyAIyAIyAIyAJ07CadencekG0VAA05EmptyG0VGA14_GA14_GAIyAJ015ElevationChangekG0VAJ07CurrentwkG0VGGAIyAIyAJ05PowerkG0VA27_GAIyA27_AJ014FlightsClimbedkG0VGGGAIyAIyAIyAJ015SegmentDurationkG0VAJ0s6DetailkG0VGAIyA1_ALGGAIyAIyALA27_GAIyA27_ACyACyAJ0ipG0VAJ0K6DetailVGAA24_ForegroundStyleModifierVyAA5ColorVGGGGGGGAIyAIyAIyAIyA37_A1_GAIyAJ012StrideLengthkG0VA60_GGAIyAIyAJ019VerticalOscillationkG0VA64_GAIyAJ013GroundContactpkG0VA67_GGGAIyAIyA21_AJ016DownhillRunCountkG0VGAIyA16_AEyAGyACyAA4TextVAJ0K9ValueFontVG_ACyACyA75_AJ0K19DescriptionCoreFontVGAJ26ExtendedLineSpacingSupport33_241C09B5AC269BC1C919798A0AC522FDLLVGtGGGGGG_A91_tGGAJ0K3RowVGAA30_EnvironmentKeyWritingModifierVyAJ0iG5StyleOGGMd);
  v23 = v28;
  outlined init with copy of TupleView<(ModifiedContent<ModifiedContent<_ConditionalContent<ModifiedContent<MetricText, _EnvironmentKeyWritingModifier<WorkoutViewStyle>>, Text>, _ForegroundStyleModifier<Color>>, _TraitWritingModifier<LayoutPriorityTraitKey>>, Spacer, ModifiedContent<ModifiedContent<PacerRow, MetricRow>, _EnvironmentKeyWritingModifier<WorkoutViewStyle>>)>(v11, v28, &_s7SwiftUI15ModifiedContentVyACyAA6HStackVyAA9TupleViewVyAA012_ConditionalD0VyAIyAIyAIyAIyAIy07WorkoutB0012EnergyMetricG0VALGAIyAJ09HeartRatekG0VAJ0lm9AggregatekG0VGGAIyAIyAqJ04ZonekG0VGAIyAJ06TimeInokG0VAUGGGAIyAIyAIyAxJ04PacekG0VGAIyA1_A1_GGAIyA3_AIyAJ08DistancekG0VAJ04LapskG0VGGGGAIyAIyAIyAIyAIyAIyAJ07CadencekG0VAA05EmptyG0VGA14_GA14_GAIyAJ015ElevationChangekG0VAJ07CurrentwkG0VGGAIyAIyAJ05PowerkG0VA27_GAIyA27_AJ014FlightsClimbedkG0VGGGAIyAIyAIyAJ015SegmentDurationkG0VAJ0s6DetailkG0VGAIyA1_ALGGAIyAIyALA27_GAIyA27_ACyACyAJ0ipG0VAJ0K6DetailVGAA24_ForegroundStyleModifierVyAA5ColorVGGGGGGGAIyAIyAIyAIyA37_A1_GAIyAJ012StrideLengthkG0VA60_GGAIyAIyAJ019VerticalOscillationkG0VA64_GAIyAJ013GroundContactpkG0VA67_GGGAIyAIyA21_AJ016DownhillRunCountkG0VGAIyA16_AEyAGyACyAA4TextVAJ0K9ValueFontVG_ACyACyA75_AJ0K19DescriptionCoreFontVGAJ26ExtendedLineSpacingSupport33_241C09B5AC269BC1C919798A0AC522FDLLVGtGGGGGG_A91_tGGAJ0K3RowVGAA30_EnvironmentKeyWritingModifierVyAJ0iG5StyleOGGMd);
  *a2 = 0x4000000000000000;
  *(a2 + 8) = 0;
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI6SpacerV_AA15ModifiedContentVyAEyAA6HStackVyAA9TupleViewVyAA012_ConditionalE0VyAKyAKyAKyAKyAKy07WorkoutB0012EnergyMetricH0VANGAKyAL09HeartRatelH0VAL0mn9AggregatelH0VGGAKyAKyAsL04ZonelH0VGAKyAL06TimeInplH0VAWGGGAKyAKyAKyAzL04PacelH0VGAKyA3_A3_GGAKyA5_AKyAL08DistancelH0VAL04LapslH0VGGGGAKyAKyAKyAKyAKyAKyAL07CadencelH0VAA05EmptyH0VGA16_GA16_GAKyAL015ElevationChangelH0VAL07CurrentxlH0VGGAKyAKyAL05PowerlH0VA29_GAKyA29_AL014FlightsClimbedlH0VGGGAKyAKyAKyAL015SegmentDurationlH0VAL0t6DetaillH0VGAKyA3_ANGGAKyAKyANA29_GAKyA29_AEyAEyAL0jqH0VAL0L6DetailVGAA24_ForegroundStyleModifierVyAA5ColorVGGGGGGGAKyAKyAKyAKyA39_A3_GAKyAL012StrideLengthlH0VA62_GGAKyAKyAL019VerticalOscillationlH0VA66_GAKyAL013GroundContactqlH0VA69_GGGAKyAKyA23_AL016DownhillRunCountlH0VGAKyA18_AGyAIyAEyAA4TextVAL0L9ValueFontVG_AEyAEyA77_AL0L19DescriptionCoreFontVGAL26ExtendedLineSpacingSupport33_241C09B5AC269BC1C919798A0AC522FDLLVGtGGGGGG_A93_tGGAL0L3RowVGAA30_EnvironmentKeyWritingModifierVyAL0jH5StyleOGGACA104_tMd);
  outlined init with copy of TupleView<(ModifiedContent<ModifiedContent<_ConditionalContent<ModifiedContent<MetricText, _EnvironmentKeyWritingModifier<WorkoutViewStyle>>, Text>, _ForegroundStyleModifier<Color>>, _TraitWritingModifier<LayoutPriorityTraitKey>>, Spacer, ModifiedContent<ModifiedContent<PacerRow, MetricRow>, _EnvironmentKeyWritingModifier<WorkoutViewStyle>>)>(v22, a2 + v24[12], &_s7SwiftUI15ModifiedContentVyACyAA6HStackVyAA9TupleViewVyAA012_ConditionalD0VyAIyAIyAIyAIyAIy07WorkoutB0012EnergyMetricG0VALGAIyAJ09HeartRatekG0VAJ0lm9AggregatekG0VGGAIyAIyAqJ04ZonekG0VGAIyAJ06TimeInokG0VAUGGGAIyAIyAIyAxJ04PacekG0VGAIyA1_A1_GGAIyA3_AIyAJ08DistancekG0VAJ04LapskG0VGGGGAIyAIyAIyAIyAIyAIyAJ07CadencekG0VAA05EmptyG0VGA14_GA14_GAIyAJ015ElevationChangekG0VAJ07CurrentwkG0VGGAIyAIyAJ05PowerkG0VA27_GAIyA27_AJ014FlightsClimbedkG0VGGGAIyAIyAIyAJ015SegmentDurationkG0VAJ0s6DetailkG0VGAIyA1_ALGGAIyAIyALA27_GAIyA27_ACyACyAJ0ipG0VAJ0K6DetailVGAA24_ForegroundStyleModifierVyAA5ColorVGGGGGGGAIyAIyAIyAIyA37_A1_GAIyAJ012StrideLengthkG0VA60_GGAIyAIyAJ019VerticalOscillationkG0VA64_GAIyAJ013GroundContactpkG0VA67_GGGAIyAIyA21_AJ016DownhillRunCountkG0VGAIyA16_AEyAGyACyAA4TextVAJ0K9ValueFontVG_ACyACyA75_AJ0K19DescriptionCoreFontVGAJ26ExtendedLineSpacingSupport33_241C09B5AC269BC1C919798A0AC522FDLLVGtGGGGGG_A91_tGGAJ0K3RowVGAA30_EnvironmentKeyWritingModifierVyAJ0iG5StyleOGGMd);
  v25 = a2 + v24[16];
  *v25 = 0x4000000000000000;
  *(v25 + 8) = 0;
  outlined init with copy of TupleView<(ModifiedContent<ModifiedContent<_ConditionalContent<ModifiedContent<MetricText, _EnvironmentKeyWritingModifier<WorkoutViewStyle>>, Text>, _ForegroundStyleModifier<Color>>, _TraitWritingModifier<LayoutPriorityTraitKey>>, Spacer, ModifiedContent<ModifiedContent<PacerRow, MetricRow>, _EnvironmentKeyWritingModifier<WorkoutViewStyle>>)>(v23, a2 + v24[20], &_s7SwiftUI15ModifiedContentVyACyAA6HStackVyAA9TupleViewVyAA012_ConditionalD0VyAIyAIyAIyAIyAIy07WorkoutB0012EnergyMetricG0VALGAIyAJ09HeartRatekG0VAJ0lm9AggregatekG0VGGAIyAIyAqJ04ZonekG0VGAIyAJ06TimeInokG0VAUGGGAIyAIyAIyAxJ04PacekG0VGAIyA1_A1_GGAIyA3_AIyAJ08DistancekG0VAJ04LapskG0VGGGGAIyAIyAIyAIyAIyAIyAJ07CadencekG0VAA05EmptyG0VGA14_GA14_GAIyAJ015ElevationChangekG0VAJ07CurrentwkG0VGGAIyAIyAJ05PowerkG0VA27_GAIyA27_AJ014FlightsClimbedkG0VGGGAIyAIyAIyAJ015SegmentDurationkG0VAJ0s6DetailkG0VGAIyA1_ALGGAIyAIyALA27_GAIyA27_ACyACyAJ0ipG0VAJ0K6DetailVGAA24_ForegroundStyleModifierVyAA5ColorVGGGGGGGAIyAIyAIyAIyA37_A1_GAIyAJ012StrideLengthkG0VA60_GGAIyAIyAJ019VerticalOscillationkG0VA64_GAIyAJ013GroundContactpkG0VA67_GGGAIyAIyA21_AJ016DownhillRunCountkG0VGAIyA16_AEyAGyACyAA4TextVAJ0K9ValueFontVG_ACyACyA75_AJ0K19DescriptionCoreFontVGAJ26ExtendedLineSpacingSupport33_241C09B5AC269BC1C919798A0AC522FDLLVGtGGGGGG_A91_tGGAJ0K3RowVGAA30_EnvironmentKeyWritingModifierVyAJ0iG5StyleOGGMd);
  outlined destroy of TupleView<(ModifiedContent<ModifiedContent<_ConditionalContent<ModifiedContent<MetricText, _EnvironmentKeyWritingModifier<WorkoutViewStyle>>, Text>, _ForegroundStyleModifier<Color>>, _TraitWritingModifier<LayoutPriorityTraitKey>>, Spacer, ModifiedContent<ModifiedContent<PacerRow, MetricRow>, _EnvironmentKeyWritingModifier<WorkoutViewStyle>>)>(v11, &_s7SwiftUI15ModifiedContentVyACyAA6HStackVyAA9TupleViewVyAA012_ConditionalD0VyAIyAIyAIyAIyAIy07WorkoutB0012EnergyMetricG0VALGAIyAJ09HeartRatekG0VAJ0lm9AggregatekG0VGGAIyAIyAqJ04ZonekG0VGAIyAJ06TimeInokG0VAUGGGAIyAIyAIyAxJ04PacekG0VGAIyA1_A1_GGAIyA3_AIyAJ08DistancekG0VAJ04LapskG0VGGGGAIyAIyAIyAIyAIyAIyAJ07CadencekG0VAA05EmptyG0VGA14_GA14_GAIyAJ015ElevationChangekG0VAJ07CurrentwkG0VGGAIyAIyAJ05PowerkG0VA27_GAIyA27_AJ014FlightsClimbedkG0VGGGAIyAIyAIyAJ015SegmentDurationkG0VAJ0s6DetailkG0VGAIyA1_ALGGAIyAIyALA27_GAIyA27_ACyACyAJ0ipG0VAJ0K6DetailVGAA24_ForegroundStyleModifierVyAA5ColorVGGGGGGGAIyAIyAIyAIyA37_A1_GAIyAJ012StrideLengthkG0VA60_GGAIyAIyAJ019VerticalOscillationkG0VA64_GAIyAJ013GroundContactpkG0VA67_GGGAIyAIyA21_AJ016DownhillRunCountkG0VGAIyA16_AEyAGyACyAA4TextVAJ0K9ValueFontVG_ACyACyA75_AJ0K19DescriptionCoreFontVGAJ26ExtendedLineSpacingSupport33_241C09B5AC269BC1C919798A0AC522FDLLVGtGGGGGG_A91_tGGAJ0K3RowVGAA30_EnvironmentKeyWritingModifierVyAJ0iG5StyleOGGMd);
  outlined destroy of TupleView<(ModifiedContent<ModifiedContent<_ConditionalContent<ModifiedContent<MetricText, _EnvironmentKeyWritingModifier<WorkoutViewStyle>>, Text>, _ForegroundStyleModifier<Color>>, _TraitWritingModifier<LayoutPriorityTraitKey>>, Spacer, ModifiedContent<ModifiedContent<PacerRow, MetricRow>, _EnvironmentKeyWritingModifier<WorkoutViewStyle>>)>(v14, &_s7SwiftUI15ModifiedContentVyACyAA6HStackVyAA9TupleViewVyAA012_ConditionalD0VyAIyAIyAIyAIyAIy07WorkoutB0012EnergyMetricG0VALGAIyAJ09HeartRatekG0VAJ0lm9AggregatekG0VGGAIyAIyAqJ04ZonekG0VGAIyAJ06TimeInokG0VAUGGGAIyAIyAIyAxJ04PacekG0VGAIyA1_A1_GGAIyA3_AIyAJ08DistancekG0VAJ04LapskG0VGGGGAIyAIyAIyAIyAIyAIyAJ07CadencekG0VAA05EmptyG0VGA14_GA14_GAIyAJ015ElevationChangekG0VAJ07CurrentwkG0VGGAIyAIyAJ05PowerkG0VA27_GAIyA27_AJ014FlightsClimbedkG0VGGGAIyAIyAIyAJ015SegmentDurationkG0VAJ0s6DetailkG0VGAIyA1_ALGGAIyAIyALA27_GAIyA27_ACyACyAJ0ipG0VAJ0K6DetailVGAA24_ForegroundStyleModifierVyAA5ColorVGGGGGGGAIyAIyAIyAIyA37_A1_GAIyAJ012StrideLengthkG0VA60_GGAIyAIyAJ019VerticalOscillationkG0VA64_GAIyAJ013GroundContactpkG0VA67_GGGAIyAIyA21_AJ016DownhillRunCountkG0VGAIyA16_AEyAGyACyAA4TextVAJ0K9ValueFontVG_ACyACyA75_AJ0K19DescriptionCoreFontVGAJ26ExtendedLineSpacingSupport33_241C09B5AC269BC1C919798A0AC522FDLLVGtGGGGGG_A91_tGGAJ0K3RowVGAA30_EnvironmentKeyWritingModifierVyAJ0iG5StyleOGGMd);
  outlined destroy of TupleView<(ModifiedContent<ModifiedContent<_ConditionalContent<ModifiedContent<MetricText, _EnvironmentKeyWritingModifier<WorkoutViewStyle>>, Text>, _ForegroundStyleModifier<Color>>, _TraitWritingModifier<LayoutPriorityTraitKey>>, Spacer, ModifiedContent<ModifiedContent<PacerRow, MetricRow>, _EnvironmentKeyWritingModifier<WorkoutViewStyle>>)>(v23, &_s7SwiftUI15ModifiedContentVyACyAA6HStackVyAA9TupleViewVyAA012_ConditionalD0VyAIyAIyAIyAIyAIy07WorkoutB0012EnergyMetricG0VALGAIyAJ09HeartRatekG0VAJ0lm9AggregatekG0VGGAIyAIyAqJ04ZonekG0VGAIyAJ06TimeInokG0VAUGGGAIyAIyAIyAxJ04PacekG0VGAIyA1_A1_GGAIyA3_AIyAJ08DistancekG0VAJ04LapskG0VGGGGAIyAIyAIyAIyAIyAIyAJ07CadencekG0VAA05EmptyG0VGA14_GA14_GAIyAJ015ElevationChangekG0VAJ07CurrentwkG0VGGAIyAIyAJ05PowerkG0VA27_GAIyA27_AJ014FlightsClimbedkG0VGGGAIyAIyAIyAJ015SegmentDurationkG0VAJ0s6DetailkG0VGAIyA1_ALGGAIyAIyALA27_GAIyA27_ACyACyAJ0ipG0VAJ0K6DetailVGAA24_ForegroundStyleModifierVyAA5ColorVGGGGGGGAIyAIyAIyAIyA37_A1_GAIyAJ012StrideLengthkG0VA60_GGAIyAIyAJ019VerticalOscillationkG0VA64_GAIyAJ013GroundContactpkG0VA67_GGGAIyAIyA21_AJ016DownhillRunCountkG0VGAIyA16_AEyAGyACyAA4TextVAJ0K9ValueFontVG_ACyACyA75_AJ0K19DescriptionCoreFontVGAJ26ExtendedLineSpacingSupport33_241C09B5AC269BC1C919798A0AC522FDLLVGtGGGGGG_A91_tGGAJ0K3RowVGAA30_EnvironmentKeyWritingModifierVyAJ0iG5StyleOGGMd);
  return outlined destroy of TupleView<(ModifiedContent<ModifiedContent<_ConditionalContent<ModifiedContent<MetricText, _EnvironmentKeyWritingModifier<WorkoutViewStyle>>, Text>, _ForegroundStyleModifier<Color>>, _TraitWritingModifier<LayoutPriorityTraitKey>>, Spacer, ModifiedContent<ModifiedContent<PacerRow, MetricRow>, _EnvironmentKeyWritingModifier<WorkoutViewStyle>>)>(v22, &_s7SwiftUI15ModifiedContentVyACyAA6HStackVyAA9TupleViewVyAA012_ConditionalD0VyAIyAIyAIyAIyAIy07WorkoutB0012EnergyMetricG0VALGAIyAJ09HeartRatekG0VAJ0lm9AggregatekG0VGGAIyAIyAqJ04ZonekG0VGAIyAJ06TimeInokG0VAUGGGAIyAIyAIyAxJ04PacekG0VGAIyA1_A1_GGAIyA3_AIyAJ08DistancekG0VAJ04LapskG0VGGGGAIyAIyAIyAIyAIyAIyAJ07CadencekG0VAA05EmptyG0VGA14_GA14_GAIyAJ015ElevationChangekG0VAJ07CurrentwkG0VGGAIyAIyAJ05PowerkG0VA27_GAIyA27_AJ014FlightsClimbedkG0VGGGAIyAIyAIyAJ015SegmentDurationkG0VAJ0s6DetailkG0VGAIyA1_ALGGAIyAIyALA27_GAIyA27_ACyACyAJ0ipG0VAJ0K6DetailVGAA24_ForegroundStyleModifierVyAA5ColorVGGGGGGGAIyAIyAIyAIyA37_A1_GAIyAJ012StrideLengthkG0VA60_GGAIyAIyAJ019VerticalOscillationkG0VA64_GAIyAJ013GroundContactpkG0VA67_GGGAIyAIyA21_AJ016DownhillRunCountkG0VGAIyA16_AEyAGyACyAA4TextVAJ0K9ValueFontVG_ACyACyA75_AJ0K19DescriptionCoreFontVGAJ26ExtendedLineSpacingSupport33_241C09B5AC269BC1C919798A0AC522FDLLVGtGGGGGG_A91_tGGAJ0K3RowVGAA30_EnvironmentKeyWritingModifierVyAJ0iG5StyleOGGMd);
}

uint64_t closure #1 in closure #1 in MirrorPacerMetricPlatterView.progressView()@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v51 = a2;
  v59 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI19_ConditionalContentV7StorageOyACyACyACyACyACy07WorkoutB016EnergyMetricViewVAHGACyAF09HeartRatehI0VAF0jk9AggregatehI0VGGACyACyAmF04ZonehI0VGACyAF06TimeInmhI0VAQGGGACyACyACyAtF04PacehI0VGACyA2YGGACyA_ACyAF08DistancehI0VAF04LapshI0VGGGGACyACyACyACyACyACyAF07CadencehI0VAA05EmptyI0VGA10_GA10_GACyAF015ElevationChangehI0VAF07CurrentuhI0VGGACyACyAF05PowerhI0VA23_GACyA23_AF014FlightsClimbedhI0VGGGACyACyACyAF015SegmentDurationhI0VAF0q6DetailhI0VGACyAyHGGACyACyAHA23_GACyA23_AA08ModifiedD0VyA39_yAF0fnI0VAF0H6DetailVGAA24_ForegroundStyleModifierVyAA5ColorVGGGGGGGACyACyACyACyA33_AYGACyAF012StrideLengthhI0VA58_GGACyACyAF019VerticalOscillationhI0VA62_GACyAF013GroundContactnhI0VA65_GGGACyACyA17_AF016DownhillRunCounthI0VGACyA12_AA6HStackVyAA05TupleI0VyA39_yAA4TextVAF0H9ValueFontVG_A39_yA39_yA77_AF0H19DescriptionCoreFontVGAF26ExtendedLineSpacingSupport33_241C09B5AC269BC1C919798A0AC522FDLLVGtGGGGG_GMd);
  MEMORY[0x28223BE20](v59);
  v53 = v46 - v3;
  v58 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI19_ConditionalContentV7StorageOyACyACyACyACy07WorkoutB016EnergyMetricViewVAHGACyAF09HeartRatehI0VAF0jk9AggregatehI0VGGACyACyAmF04ZonehI0VGACyAF06TimeInmhI0VAQGGGACyACyACyAtF04PacehI0VGACyA2YGGACyA_ACyAF08DistancehI0VAF04LapshI0VGGGGACyACyACyACyACyACyAF07CadencehI0VAA05EmptyI0VGA10_GA10_GACyAF015ElevationChangehI0VAF07CurrentuhI0VGGACyACyAF05PowerhI0VA23_GACyA23_AF014FlightsClimbedhI0VGGGACyACyACyAF015SegmentDurationhI0VAF0q6DetailhI0VGACyAyHGGACyACyAHA23_GACyA23_AA08ModifiedD0VyA39_yAF0fnI0VAF0H6DetailVGAA24_ForegroundStyleModifierVyAA5ColorVGGGGGG_GMd);
  MEMORY[0x28223BE20](v58);
  v52 = v46 - v4;
  v55 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI19_ConditionalContentV7StorageOyACyACyACy07WorkoutB016EnergyMetricViewVAHGACyAF09HeartRatehI0VAF0jk9AggregatehI0VGGACyACyAmF04ZonehI0VGACyAF06TimeInmhI0VAQGGGACyACyACyAtF04PacehI0VGACyA2YGGACyA_ACyAF08DistancehI0VAF04LapshI0VGGG_GMd);
  MEMORY[0x28223BE20](v55);
  v6 = (v46 - v5);
  v56 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI19_ConditionalContentVyACyACyACy07WorkoutB016EnergyMetricViewVAFGACyAD09HeartRategH0VAD0ij9AggregategH0VGGACyACyAkD04ZonegH0VGACyAD06TimeInlgH0VAOGGGACyACyACyArD04PacegH0VGACyA2WGGACyAyCyAD08DistancegH0VAD04LapsgH0VGGGGMd);
  MEMORY[0x28223BE20](v56);
  v8 = v46 - v7;
  v57 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI19_ConditionalContentVyACyACyACyACy07WorkoutB016EnergyMetricViewVAFGACyAD09HeartRategH0VAD0ij9AggregategH0VGGACyACyAkD04ZonegH0VGACyAD06TimeInlgH0VAOGGGACyACyACyArD04PacegH0VGACyA2WGGACyAyCyAD08DistancegH0VAD04LapsgH0VGGGGACyACyACyACyACyACyAD07CadencegH0VAA05EmptyH0VGA8_GA8_GACyAD015ElevationChangegH0VAD07CurrenttgH0VGGACyACyAD05PowergH0VA21_GACyA21_AD014FlightsClimbedgH0VGGGACyACyACyAD015SegmentDurationgH0VAD0p6DetailgH0VGACyAwFGGACyACyAFA21_GACyA21_AA08ModifiedD0VyA37_yAD0emH0VAD0G6DetailVGAA24_ForegroundStyleModifierVyAA5ColorVGGGGGGGMd);
  MEMORY[0x28223BE20](v57);
  v10 = v46 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI19_ConditionalContentVyACyACyACyACyACy07WorkoutB016EnergyMetricViewVAFGACyAD09HeartRategH0VAD0ij9AggregategH0VGGACyACyAkD04ZonegH0VGACyAD06TimeInlgH0VAOGGGACyACyACyArD04PacegH0VGACyA2WGGACyAyCyAD08DistancegH0VAD04LapsgH0VGGGGACyACyACyACyACyACyAD07CadencegH0VAA05EmptyH0VGA8_GA8_GACyAD015ElevationChangegH0VAD07CurrenttgH0VGGACyACyAD05PowergH0VA21_GACyA21_AD014FlightsClimbedgH0VGGGACyACyACyAD015SegmentDurationgH0VAD0p6DetailgH0VGACyAwFGGACyACyAFA21_GACyA21_AA08ModifiedD0VyA37_yAD0emH0VAD0G6DetailVGAA24_ForegroundStyleModifierVyAA5ColorVGGGGGGGACyACyACyACyA31_AWGACyAD012StrideLengthgH0VA56_GGACyACyAD019VerticalOscillationgH0VA60_GACyAD013GroundContactmgH0VA63_GGGACyACyA15_AD016DownhillRunCountgH0VGACyA10_AA6HStackVyAA05TupleH0VyA37_yAA4TextVAD0G9ValueFontVG_A37_yA37_yA75_AD0G19DescriptionCoreFontVGAD26ExtendedLineSpacingSupport33_241C09B5AC269BC1C919798A0AC522FDLLVGtGGGGGGMd);
  MEMORY[0x28223BE20](v11 - 8);
  v50 = v46 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v49 = v46 - v14;
  MEMORY[0x28223BE20](v15);
  v48 = v46 - v16;
  MEMORY[0x28223BE20](v17);
  v54 = v46 - v18;
  v19 = *(a1 + 24);
  v20 = *(a1 + 16);
  MetricsPublisher.averagePace.getter();
  v22 = v21;
  MetricsPublisher.workoutStatePublisher.getter();
  v23 = WorkoutStatePublisher.gpsUnavailable.getter();

  KeyPath = swift_getKeyPath();
  *&v73 = v20;
  *(&v73 + 1) = 8;
  *&v74 = v19;
  *(&v74 + 1) = KeyPath;
  LOBYTE(v75) = 0;
  *(&v75 + 1) = v22;
  LOBYTE(v76) = v23 & 1;
  v77 = 0;
  v78 = 0;
  v71 = v75;
  v72[0] = v76;
  *&v72[1] = 0;
  v69 = v73;
  v70 = v74;
  v79 = 0;
  BYTE8(v72[1]) = 0;
  v47 = v20;
  v46[10] = v19;
  outlined init with copy of PaceMetricView(&v73, &v60);
  lazy protocol witness table accessor for type PaceMetricView and conformance PaceMetricView();
  _ConditionalContent<>.init(storage:)();
  v71 = v62;
  v72[0] = *v63;
  *(v72 + 9) = *&v63[9];
  v69 = v60;
  v70 = v61;
  v80 = 1;
  BYTE9(v72[1]) = 1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI19_ConditionalContentVy07WorkoutB020TimeInZoneMetricViewVAD04PaceiJ0VGMd);
  v46[16] = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI19_ConditionalContentVy07WorkoutB014PaceMetricViewVAFGMd);
  lazy protocol witness table accessor for type _ConditionalContent<TimeInZoneMetricView, PaceMetricView> and conformance <> _ConditionalContent<A, B>();
  v46[15] = _s7SwiftUI19_ConditionalContentVy07WorkoutB014PaceMetricViewVAFGACyxq_GAA0H0A2aIRzAaIR_rlWlTm_3(&lazy protocol witness table cache variable for type _ConditionalContent<PaceMetricView, PaceMetricView> and conformance <> _ConditionalContent<A, B>, &_s7SwiftUI19_ConditionalContentVy07WorkoutB014PaceMetricViewVAFGMd, &_s7SwiftUI19_ConditionalContentVy07WorkoutB014PaceMetricViewVAFGMR, lazy protocol witness table accessor for type PaceMetricView and conformance PaceMetricView);
  _ConditionalContent<>.init(storage:)();
  v62 = v67;
  *v63 = v68[0];
  *&v63[10] = *(v68 + 10);
  v60 = v65;
  v61 = v66;
  v81 = 0;
  v64 = 0;
  v46[14] = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI19_ConditionalContentVyACy07WorkoutB020TimeInZoneMetricViewVAD04PaceiJ0VGACyA2HGGMd);
  v46[13] = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI19_ConditionalContentVyACy07WorkoutB014PaceMetricViewVAFGACyAD08DistancegH0VAD04LapsgH0VGGMd);
  v46[12] = lazy protocol witness table accessor for type _ConditionalContent<_ConditionalContent<TimeInZoneMetricView, PaceMetricView>, _ConditionalContent<PaceMetricView, PaceMetricView>> and conformance <> _ConditionalContent<A, B>();
  v46[11] = lazy protocol witness table accessor for type _ConditionalContent<_ConditionalContent<PaceMetricView, PaceMetricView>, _ConditionalContent<DistanceMetricView, LapsMetricView>> and conformance <> _ConditionalContent<A, B>();
  _ConditionalContent<>.init(storage:)();
  v25 = v72[0];
  v6[2] = v71;
  v6[3] = v25;
  *(v6 + 59) = *(v72 + 11);
  v26 = v70;
  *v6 = v69;
  v6[1] = v26;
  swift_storeEnumTagMultiPayload();
  v46[9] = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI19_ConditionalContentVyACyACy07WorkoutB016EnergyMetricViewVAFGACyAD09HeartRategH0VAD0ij9AggregategH0VGGACyACyAkD04ZonegH0VGACyAD06TimeInlgH0VAOGGGMd);
  v46[8] = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI19_ConditionalContentVyACyACy07WorkoutB020TimeInZoneMetricViewVAD04PaceiJ0VGACyA2HGGACyAjCyAD08DistanceiJ0VAD04LapsiJ0VGGGMd);
  v46[7] = lazy protocol witness table accessor for type _ConditionalContent<_ConditionalContent<_ConditionalContent<EnergyMetricView, EnergyMetricView>, _ConditionalContent<HeartRateMetricView, HeartRateAggregateMetricView>>, _ConditionalContent<_ConditionalContent<HeartRateAggregateMetricView, ZoneMetricView>, _ConditionalContent<TimeInZoneMetricView, ZoneMetricView>>> and conformance <> _ConditionalContent<A, B>();
  v46[6] = lazy protocol witness table accessor for type _ConditionalContent<_ConditionalContent<_ConditionalContent<TimeInZoneMetricView, PaceMetricView>, _ConditionalContent<PaceMetricView, PaceMetricView>>, _ConditionalContent<_ConditionalContent<PaceMetricView, PaceMetricView>, _ConditionalContent<DistanceMetricView, LapsMetricView>>> and conformance <> _ConditionalContent<A, B>();
  _ConditionalContent<>.init(storage:)();
  outlined init with copy of TupleView<(ModifiedContent<ModifiedContent<_ConditionalContent<ModifiedContent<MetricText, _EnvironmentKeyWritingModifier<WorkoutViewStyle>>, Text>, _ForegroundStyleModifier<Color>>, _TraitWritingModifier<LayoutPriorityTraitKey>>, Spacer, ModifiedContent<ModifiedContent<PacerRow, MetricRow>, _EnvironmentKeyWritingModifier<WorkoutViewStyle>>)>(v8, v52, &_s7SwiftUI19_ConditionalContentVyACyACyACy07WorkoutB016EnergyMetricViewVAFGACyAD09HeartRategH0VAD0ij9AggregategH0VGGACyACyAkD04ZonegH0VGACyAD06TimeInlgH0VAOGGGACyACyACyArD04PacegH0VGACyA2WGGACyAyCyAD08DistancegH0VAD04LapsgH0VGGGGMd);
  swift_storeEnumTagMultiPayload();
  v46[5] = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI19_ConditionalContentVyACyACyACyACyACy07WorkoutB017CadenceMetricViewVAA05EmptyH0VGAFGAFGACyAD015ElevationChangegH0VAD07CurrentjgH0VGGACyACyAD05PowergH0VASGACyAsD014FlightsClimbedgH0VGGGACyACyACyAD015SegmentDurationgH0VAD014DistanceDetailgH0VGACyAD04PacegH0VAD06EnergygH0VGGACyACyA6_ASGACyAsA08ModifiedD0VyA11_yAD0e4TimeH0VAD0gS0VGAA24_ForegroundStyleModifierVyAA5ColorVGGGGGGMd);
  v46[4] = lazy protocol witness table accessor for type _ConditionalContent<_ConditionalContent<_ConditionalContent<_ConditionalContent<EnergyMetricView, EnergyMetricView>, _ConditionalContent<HeartRateMetricView, HeartRateAggregateMetricView>>, _ConditionalContent<_ConditionalContent<HeartRateAggregateMetricView, ZoneMetricView>, _ConditionalContent<TimeInZoneMetricView, ZoneMetricView>>>, _ConditionalContent<_ConditionalContent<_ConditionalContent<TimeInZoneMetricView, PaceMetricView>, _ConditionalContent<PaceMetricView, PaceMetricView>>, _ConditionalContent<_ConditionalContent<PaceMetricView, PaceMetricView>, _ConditionalContent<DistanceMetricView, LapsMetricView>>>> and conformance <> _ConditionalContent<A, B>();
  v46[3] = lazy protocol witness table accessor for type _ConditionalContent<_ConditionalContent<_ConditionalContent<_ConditionalContent<_ConditionalContent<_ConditionalContent<CadenceMetricView, EmptyView>, CadenceMetricView>, CadenceMetricView>, _ConditionalContent<ElevationChangeMetricView, CurrentElevationMetricView>>, _ConditionalContent<_ConditionalContent<PowerMetricView, PowerMetricView>, _ConditionalContent<PowerMetricView, FlightsClimbedMetricView>>>, _ConditionalContent<_ConditionalContent<_ConditionalContent<SegmentDurationMetricView, DistanceDetailMetricView>, _ConditionalContent<PaceMetricView, EnergyMetricView>>, _ConditionalContent<_ConditionalContent<EnergyMetricView, PowerMetricView>, _ConditionalContent<PowerMetricView, ModifiedContent<ModifiedContent<WorkoutTimeView, MetricDetail>, _ForegroundStyleModifier<Color>>>>>> and conformance <> _ConditionalContent<A, B>();
  _ConditionalContent<>.init(storage:)();
  outlined destroy of TupleView<(ModifiedContent<ModifiedContent<_ConditionalContent<ModifiedContent<MetricText, _EnvironmentKeyWritingModifier<WorkoutViewStyle>>, Text>, _ForegroundStyleModifier<Color>>, _TraitWritingModifier<LayoutPriorityTraitKey>>, Spacer, ModifiedContent<ModifiedContent<PacerRow, MetricRow>, _EnvironmentKeyWritingModifier<WorkoutViewStyle>>)>(v8, &_s7SwiftUI19_ConditionalContentVyACyACyACy07WorkoutB016EnergyMetricViewVAFGACyAD09HeartRategH0VAD0ij9AggregategH0VGGACyACyAkD04ZonegH0VGACyAD06TimeInlgH0VAOGGGACyACyACyArD04PacegH0VGACyA2WGGACyAyCyAD08DistancegH0VAD04LapsgH0VGGGGMd);
  outlined init with copy of TupleView<(ModifiedContent<ModifiedContent<_ConditionalContent<ModifiedContent<MetricText, _EnvironmentKeyWritingModifier<WorkoutViewStyle>>, Text>, _ForegroundStyleModifier<Color>>, _TraitWritingModifier<LayoutPriorityTraitKey>>, Spacer, ModifiedContent<ModifiedContent<PacerRow, MetricRow>, _EnvironmentKeyWritingModifier<WorkoutViewStyle>>)>(v10, v53, &_s7SwiftUI19_ConditionalContentVyACyACyACyACy07WorkoutB016EnergyMetricViewVAFGACyAD09HeartRategH0VAD0ij9AggregategH0VGGACyACyAkD04ZonegH0VGACyAD06TimeInlgH0VAOGGGACyACyACyArD04PacegH0VGACyA2WGGACyAyCyAD08DistancegH0VAD04LapsgH0VGGGGACyACyACyACyACyACyAD07CadencegH0VAA05EmptyH0VGA8_GA8_GACyAD015ElevationChangegH0VAD07CurrenttgH0VGGACyACyAD05PowergH0VA21_GACyA21_AD014FlightsClimbedgH0VGGGACyACyACyAD015SegmentDurationgH0VAD0p6DetailgH0VGACyAwFGGACyACyAFA21_GACyA21_AA08ModifiedD0VyA37_yAD0emH0VAD0G6DetailVGAA24_ForegroundStyleModifierVyAA5ColorVGGGGGGGMd);
  swift_storeEnumTagMultiPayload();
  v46[2] = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI19_ConditionalContentVyACyACyACy07WorkoutB024DistanceDetailMetricViewVAD04PacehI0VGACyAD012StrideLengthhI0VAKGGACyACyAD019VerticalOscillationhI0VAOGACyAD017GroundContactTimehI0VARGGGACyACyAD015ElevationChangehI0VAD016DownhillRunCounthI0VGACyAA05EmptyI0VAA6HStackVyAA05TupleI0VyAA08ModifiedD0VyAA4TextVAD0H9ValueFontVG_A6_yA6_yA8_AD0H19DescriptionCoreFontVGAD26ExtendedLineSpacingSupport33_241C09B5AC269BC1C919798A0AC522FDLLVGtGGGGGMd);
  v46[1] = lazy protocol witness table accessor for type _ConditionalContent<_ConditionalContent<_ConditionalContent<_ConditionalContent<_ConditionalContent<EnergyMetricView, EnergyMetricView>, _ConditionalContent<HeartRateMetricView, HeartRateAggregateMetricView>>, _ConditionalContent<_ConditionalContent<HeartRateAggregateMetricView, ZoneMetricView>, _ConditionalContent<TimeInZoneMetricView, ZoneMetricView>>>, _ConditionalContent<_ConditionalContent<_ConditionalContent<TimeInZoneMetricView, PaceMetricView>, _ConditionalContent<PaceMetricView, PaceMetricView>>, _ConditionalContent<_ConditionalContent<PaceMetricView, PaceMetricView>, _ConditionalContent<DistanceMetricView, LapsMetricView>>>>, _ConditionalContent<_ConditionalContent<_ConditionalContent<_ConditionalContent<_ConditionalContent<_ConditionalContent<CadenceMetricView, EmptyView>, CadenceMetricView>, CadenceMetricView>, _ConditionalContent<ElevationChangeMetricView, CurrentElevationMetricView>>, _ConditionalContent<_ConditionalContent<PowerMetricView, PowerMet();
  v46[0] = lazy protocol witness table accessor for type _ConditionalContent<_ConditionalContent<_ConditionalContent<_ConditionalContent<DistanceDetailMetricView, PaceMetricView>, _ConditionalContent<StrideLengthMetricView, StrideLengthMetricView>>, _ConditionalContent<_ConditionalContent<VerticalOscillationMetricView, VerticalOscillationMetricView>, _ConditionalContent<GroundContactTimeMetricView, GroundContactTimeMetricView>>>, _ConditionalContent<_ConditionalContent<ElevationChangeMetricView, DownhillRunCountMetricView>, _ConditionalContent<EmptyView, HStack<TupleView<(ModifiedContent<Text, MetricValueFont>, ModifiedContent<ModifiedContent<Text, MetricDescriptionCoreFont>, ExtendedLineSpacingSupport>)>>>>> and conformance <> _ConditionalContent<A, B>();
  _ConditionalContent<>.init(storage:)();
  outlined destroy of PaceMetricView(&v73);
  outlined destroy of TupleView<(ModifiedContent<ModifiedContent<_ConditionalContent<ModifiedContent<MetricText, _EnvironmentKeyWritingModifier<WorkoutViewStyle>>, Text>, _ForegroundStyleModifier<Color>>, _TraitWritingModifier<LayoutPriorityTraitKey>>, Spacer, ModifiedContent<ModifiedContent<PacerRow, MetricRow>, _EnvironmentKeyWritingModifier<WorkoutViewStyle>>)>(v10, &_s7SwiftUI19_ConditionalContentVyACyACyACyACy07WorkoutB016EnergyMetricViewVAFGACyAD09HeartRategH0VAD0ij9AggregategH0VGGACyACyAkD04ZonegH0VGACyAD06TimeInlgH0VAOGGGACyACyACyArD04PacegH0VGACyA2WGGACyAyCyAD08DistancegH0VAD04LapsgH0VGGGGACyACyACyACyACyACyAD07CadencegH0VAA05EmptyH0VGA8_GA8_GACyAD015ElevationChangegH0VAD07CurrenttgH0VGGACyACyAD05PowergH0VA21_GACyA21_AD014FlightsClimbedgH0VGGGACyACyACyAD015SegmentDurationgH0VAD0p6DetailgH0VGACyAwFGGACyACyAFA21_GACyA21_AA08ModifiedD0VyA37_yAD0emH0VAD0G6DetailVGAA24_ForegroundStyleModifierVyAA5ColorVGGGGGGGMd);
  MetricsPublisher.distance.getter();
  v28 = v27;
  v29 = FIUIDistanceTypeForActivityType();
  MetricsPublisher.trackRunningMetricsPublisher.getter();
  v30 = TrackRunningMetricsPublisher.trackRunningCoordinator.getter();

  v31 = dispatch thunk of TrackRunningCoordinator.preferredDistanceUnit.getter();
  LOBYTE(v20) = v32;

  v33 = swift_getKeyPath();
  v84 = v20 & 1;
  v82 = 0;
  *&v69 = v28;
  *(&v69 + 1) = v47;
  *&v70 = v29;
  *(&v70 + 1) = v31;
  LOBYTE(v71) = v20 & 1;
  *(&v71 + 1) = *v83;
  DWORD1(v71) = *&v83[3];
  *(&v71 + 1) = v33;
  LOWORD(v72[0]) = 0;
  v34 = v47;
  outlined copy of Environment<WorkoutViewStyle>.Content(v33, 0);
  lazy protocol witness table accessor for type DistanceMetricView and conformance DistanceMetricView();
  lazy protocol witness table accessor for type LapsMetricView and conformance LapsMetricView();
  _ConditionalContent<>.init(storage:)();
  v69 = v60;
  v70 = v61;
  v71 = v62;
  LOWORD(v72[0]) = *v63;
  v85 = 1;
  BYTE9(v72[1]) = 1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI19_ConditionalContentVy07WorkoutB018DistanceMetricViewVAD04LapsgH0VGMd);
  lazy protocol witness table accessor for type _ConditionalContent<DistanceMetricView, LapsMetricView> and conformance <> _ConditionalContent<A, B>();
  _ConditionalContent<>.init(storage:)();
  v62 = v67;
  *v63 = v68[0];
  *&v63[10] = *(v68 + 10);
  v60 = v65;
  v61 = v66;
  v86 = 1;
  v64 = 1;
  _ConditionalContent<>.init(storage:)();
  v35 = v72[0];
  v6[2] = v71;
  v6[3] = v35;
  *(v6 + 59) = *(v72 + 11);
  v36 = v70;
  *v6 = v69;
  v6[1] = v36;
  swift_storeEnumTagMultiPayload();
  _ConditionalContent<>.init(storage:)();
  outlined init with copy of TupleView<(ModifiedContent<ModifiedContent<_ConditionalContent<ModifiedContent<MetricText, _EnvironmentKeyWritingModifier<WorkoutViewStyle>>, Text>, _ForegroundStyleModifier<Color>>, _TraitWritingModifier<LayoutPriorityTraitKey>>, Spacer, ModifiedContent<ModifiedContent<PacerRow, MetricRow>, _EnvironmentKeyWritingModifier<WorkoutViewStyle>>)>(v8, v52, &_s7SwiftUI19_ConditionalContentVyACyACyACy07WorkoutB016EnergyMetricViewVAFGACyAD09HeartRategH0VAD0ij9AggregategH0VGGACyACyAkD04ZonegH0VGACyAD06TimeInlgH0VAOGGGACyACyACyArD04PacegH0VGACyA2WGGACyAyCyAD08DistancegH0VAD04LapsgH0VGGGGMd);
  swift_storeEnumTagMultiPayload();
  _ConditionalContent<>.init(storage:)();
  outlined destroy of TupleView<(ModifiedContent<ModifiedContent<_ConditionalContent<ModifiedContent<MetricText, _EnvironmentKeyWritingModifier<WorkoutViewStyle>>, Text>, _ForegroundStyleModifier<Color>>, _TraitWritingModifier<LayoutPriorityTraitKey>>, Spacer, ModifiedContent<ModifiedContent<PacerRow, MetricRow>, _EnvironmentKeyWritingModifier<WorkoutViewStyle>>)>(v8, &_s7SwiftUI19_ConditionalContentVyACyACyACy07WorkoutB016EnergyMetricViewVAFGACyAD09HeartRategH0VAD0ij9AggregategH0VGGACyACyAkD04ZonegH0VGACyAD06TimeInlgH0VAOGGGACyACyACyArD04PacegH0VGACyA2WGGACyAyCyAD08DistancegH0VAD04LapsgH0VGGGGMd);
  outlined init with copy of TupleView<(ModifiedContent<ModifiedContent<_ConditionalContent<ModifiedContent<MetricText, _EnvironmentKeyWritingModifier<WorkoutViewStyle>>, Text>, _ForegroundStyleModifier<Color>>, _TraitWritingModifier<LayoutPriorityTraitKey>>, Spacer, ModifiedContent<ModifiedContent<PacerRow, MetricRow>, _EnvironmentKeyWritingModifier<WorkoutViewStyle>>)>(v10, v53, &_s7SwiftUI19_ConditionalContentVyACyACyACyACy07WorkoutB016EnergyMetricViewVAFGACyAD09HeartRategH0VAD0ij9AggregategH0VGGACyACyAkD04ZonegH0VGACyAD06TimeInlgH0VAOGGGACyACyACyArD04PacegH0VGACyA2WGGACyAyCyAD08DistancegH0VAD04LapsgH0VGGGGACyACyACyACyACyACyAD07CadencegH0VAA05EmptyH0VGA8_GA8_GACyAD015ElevationChangegH0VAD07CurrenttgH0VGGACyACyAD05PowergH0VA21_GACyA21_AD014FlightsClimbedgH0VGGGACyACyACyAD015SegmentDurationgH0VAD0p6DetailgH0VGACyAwFGGACyACyAFA21_GACyA21_AA08ModifiedD0VyA37_yAD0emH0VAD0G6DetailVGAA24_ForegroundStyleModifierVyAA5ColorVGGGGGGGMd);
  swift_storeEnumTagMultiPayload();
  v37 = v48;
  _ConditionalContent<>.init(storage:)();

  outlined consume of Environment<WorkoutViewStyle>.Content(v33, 0);
  outlined destroy of TupleView<(ModifiedContent<ModifiedContent<_ConditionalContent<ModifiedContent<MetricText, _EnvironmentKeyWritingModifier<WorkoutViewStyle>>, Text>, _ForegroundStyleModifier<Color>>, _TraitWritingModifier<LayoutPriorityTraitKey>>, Spacer, ModifiedContent<ModifiedContent<PacerRow, MetricRow>, _EnvironmentKeyWritingModifier<WorkoutViewStyle>>)>(v10, &_s7SwiftUI19_ConditionalContentVyACyACyACyACy07WorkoutB016EnergyMetricViewVAFGACyAD09HeartRategH0VAD0ij9AggregategH0VGGACyACyAkD04ZonegH0VGACyAD06TimeInlgH0VAOGGGACyACyACyArD04PacegH0VGACyA2WGGACyAyCyAD08DistancegH0VAD04LapsgH0VGGGGACyACyACyACyACyACyAD07CadencegH0VAA05EmptyH0VGA8_GA8_GACyAD015ElevationChangegH0VAD07CurrenttgH0VGGACyACyAD05PowergH0VA21_GACyA21_AD014FlightsClimbedgH0VGGGACyACyACyAD015SegmentDurationgH0VAD0p6DetailgH0VGACyAwFGGACyACyAFA21_GACyA21_AA08ModifiedD0VyA37_yAD0emH0VAD0G6DetailVGAA24_ForegroundStyleModifierVyAA5ColorVGGGGGGGMd);
  v38 = v54;
  v39 = v49;
  outlined init with copy of TupleView<(ModifiedContent<ModifiedContent<_ConditionalContent<ModifiedContent<MetricText, _EnvironmentKeyWritingModifier<WorkoutViewStyle>>, Text>, _ForegroundStyleModifier<Color>>, _TraitWritingModifier<LayoutPriorityTraitKey>>, Spacer, ModifiedContent<ModifiedContent<PacerRow, MetricRow>, _EnvironmentKeyWritingModifier<WorkoutViewStyle>>)>(v54, v49, &_s7SwiftUI19_ConditionalContentVyACyACyACyACyACy07WorkoutB016EnergyMetricViewVAFGACyAD09HeartRategH0VAD0ij9AggregategH0VGGACyACyAkD04ZonegH0VGACyAD06TimeInlgH0VAOGGGACyACyACyArD04PacegH0VGACyA2WGGACyAyCyAD08DistancegH0VAD04LapsgH0VGGGGACyACyACyACyACyACyAD07CadencegH0VAA05EmptyH0VGA8_GA8_GACyAD015ElevationChangegH0VAD07CurrenttgH0VGGACyACyAD05PowergH0VA21_GACyA21_AD014FlightsClimbedgH0VGGGACyACyACyAD015SegmentDurationgH0VAD0p6DetailgH0VGACyAwFGGACyACyAFA21_GACyA21_AA08ModifiedD0VyA37_yAD0emH0VAD0G6DetailVGAA24_ForegroundStyleModifierVyAA5ColorVGGGGGGGACyACyACyACyA31_AWGACyAD012StrideLengthgH0VA56_GGACyACyAD019VerticalOscillationgH0VA60_GACyAD013GroundContactmgH0VA63_GGGACyACyA15_AD016DownhillRunCountgH0VGACyA10_AA6HStackVyAA05TupleH0VyA37_yAA4TextVAD0G9ValueFontVG_A37_yA37_yA75_AD0G19DescriptionCoreFontVGAD26ExtendedLineSpacingSupport33_241C09B5AC269BC1C919798A0AC522FDLLVGtGGGGGGMd);
  v40 = v37;
  v41 = v37;
  v42 = v50;
  outlined init with copy of TupleView<(ModifiedContent<ModifiedContent<_ConditionalContent<ModifiedContent<MetricText, _EnvironmentKeyWritingModifier<WorkoutViewStyle>>, Text>, _ForegroundStyleModifier<Color>>, _TraitWritingModifier<LayoutPriorityTraitKey>>, Spacer, ModifiedContent<ModifiedContent<PacerRow, MetricRow>, _EnvironmentKeyWritingModifier<WorkoutViewStyle>>)>(v40, v50, &_s7SwiftUI19_ConditionalContentVyACyACyACyACyACy07WorkoutB016EnergyMetricViewVAFGACyAD09HeartRategH0VAD0ij9AggregategH0VGGACyACyAkD04ZonegH0VGACyAD06TimeInlgH0VAOGGGACyACyACyArD04PacegH0VGACyA2WGGACyAyCyAD08DistancegH0VAD04LapsgH0VGGGGACyACyACyACyACyACyAD07CadencegH0VAA05EmptyH0VGA8_GA8_GACyAD015ElevationChangegH0VAD07CurrenttgH0VGGACyACyAD05PowergH0VA21_GACyA21_AD014FlightsClimbedgH0VGGGACyACyACyAD015SegmentDurationgH0VAD0p6DetailgH0VGACyAwFGGACyACyAFA21_GACyA21_AA08ModifiedD0VyA37_yAD0emH0VAD0G6DetailVGAA24_ForegroundStyleModifierVyAA5ColorVGGGGGGGACyACyACyACyA31_AWGACyAD012StrideLengthgH0VA56_GGACyACyAD019VerticalOscillationgH0VA60_GACyAD013GroundContactmgH0VA63_GGGACyACyA15_AD016DownhillRunCountgH0VGACyA10_AA6HStackVyAA05TupleH0VyA37_yAA4TextVAD0G9ValueFontVG_A37_yA37_yA75_AD0G19DescriptionCoreFontVGAD26ExtendedLineSpacingSupport33_241C09B5AC269BC1C919798A0AC522FDLLVGtGGGGGGMd);
  v43 = v51;
  outlined init with copy of TupleView<(ModifiedContent<ModifiedContent<_ConditionalContent<ModifiedContent<MetricText, _EnvironmentKeyWritingModifier<WorkoutViewStyle>>, Text>, _ForegroundStyleModifier<Color>>, _TraitWritingModifier<LayoutPriorityTraitKey>>, Spacer, ModifiedContent<ModifiedContent<PacerRow, MetricRow>, _EnvironmentKeyWritingModifier<WorkoutViewStyle>>)>(v39, v51, &_s7SwiftUI19_ConditionalContentVyACyACyACyACyACy07WorkoutB016EnergyMetricViewVAFGACyAD09HeartRategH0VAD0ij9AggregategH0VGGACyACyAkD04ZonegH0VGACyAD06TimeInlgH0VAOGGGACyACyACyArD04PacegH0VGACyA2WGGACyAyCyAD08DistancegH0VAD04LapsgH0VGGGGACyACyACyACyACyACyAD07CadencegH0VAA05EmptyH0VGA8_GA8_GACyAD015ElevationChangegH0VAD07CurrenttgH0VGGACyACyAD05PowergH0VA21_GACyA21_AD014FlightsClimbedgH0VGGGACyACyACyAD015SegmentDurationgH0VAD0p6DetailgH0VGACyAwFGGACyACyAFA21_GACyA21_AA08ModifiedD0VyA37_yAD0emH0VAD0G6DetailVGAA24_ForegroundStyleModifierVyAA5ColorVGGGGGGGACyACyACyACyA31_AWGACyAD012StrideLengthgH0VA56_GGACyACyAD019VerticalOscillationgH0VA60_GACyAD013GroundContactmgH0VA63_GGGACyACyA15_AD016DownhillRunCountgH0VGACyA10_AA6HStackVyAA05TupleH0VyA37_yAA4TextVAD0G9ValueFontVG_A37_yA37_yA75_AD0G19DescriptionCoreFontVGAD26ExtendedLineSpacingSupport33_241C09B5AC269BC1C919798A0AC522FDLLVGtGGGGGGMd);
  v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI19_ConditionalContentVyACyACyACyACyACy07WorkoutB016EnergyMetricViewVAFGACyAD09HeartRategH0VAD0ij9AggregategH0VGGACyACyAkD04ZonegH0VGACyAD06TimeInlgH0VAOGGGACyACyACyArD04PacegH0VGACyA2WGGACyAyCyAD08DistancegH0VAD04LapsgH0VGGGGACyACyACyACyACyACyAD07CadencegH0VAA05EmptyH0VGA8_GA8_GACyAD015ElevationChangegH0VAD07CurrenttgH0VGGACyACyAD05PowergH0VA21_GACyA21_AD014FlightsClimbedgH0VGGGACyACyACyAD015SegmentDurationgH0VAD0p6DetailgH0VGACyAwFGGACyACyAFA21_GACyA21_AA08ModifiedD0VyA37_yAD0emH0VAD0G6DetailVGAA24_ForegroundStyleModifierVyAA5ColorVGGGGGGGACyACyACyACyA31_AWGACyAD012StrideLengthgH0VA56_GGACyACyAD019VerticalOscillationgH0VA60_GACyAD013GroundContactmgH0VA63_GGGACyACyA15_AD016DownhillRunCountgH0VGACyA10_AA6HStackVyAA05TupleH0VyA37_yAA4TextVAD0G9ValueFontVG_A37_yA37_yA75_AD0G19DescriptionCoreFontVGAD26ExtendedLineSpacingSupport33_241C09B5AC269BC1C919798A0AC522FDLLVGtGGGGGG_A91_tMd);
  outlined init with copy of TupleView<(ModifiedContent<ModifiedContent<_ConditionalContent<ModifiedContent<MetricText, _EnvironmentKeyWritingModifier<WorkoutViewStyle>>, Text>, _ForegroundStyleModifier<Color>>, _TraitWritingModifier<LayoutPriorityTraitKey>>, Spacer, ModifiedContent<ModifiedContent<PacerRow, MetricRow>, _EnvironmentKeyWritingModifier<WorkoutViewStyle>>)>(v42, v43 + *(v44 + 48), &_s7SwiftUI19_ConditionalContentVyACyACyACyACyACy07WorkoutB016EnergyMetricViewVAFGACyAD09HeartRategH0VAD0ij9AggregategH0VGGACyACyAkD04ZonegH0VGACyAD06TimeInlgH0VAOGGGACyACyACyArD04PacegH0VGACyA2WGGACyAyCyAD08DistancegH0VAD04LapsgH0VGGGGACyACyACyACyACyACyAD07CadencegH0VAA05EmptyH0VGA8_GA8_GACyAD015ElevationChangegH0VAD07CurrenttgH0VGGACyACyAD05PowergH0VA21_GACyA21_AD014FlightsClimbedgH0VGGGACyACyACyAD015SegmentDurationgH0VAD0p6DetailgH0VGACyAwFGGACyACyAFA21_GACyA21_AA08ModifiedD0VyA37_yAD0emH0VAD0G6DetailVGAA24_ForegroundStyleModifierVyAA5ColorVGGGGGGGACyACyACyACyA31_AWGACyAD012StrideLengthgH0VA56_GGACyACyAD019VerticalOscillationgH0VA60_GACyAD013GroundContactmgH0VA63_GGGACyACyA15_AD016DownhillRunCountgH0VGACyA10_AA6HStackVyAA05TupleH0VyA37_yAA4TextVAD0G9ValueFontVG_A37_yA37_yA75_AD0G19DescriptionCoreFontVGAD26ExtendedLineSpacingSupport33_241C09B5AC269BC1C919798A0AC522FDLLVGtGGGGGGMd);
  outlined destroy of TupleView<(ModifiedContent<ModifiedContent<_ConditionalContent<ModifiedContent<MetricText, _EnvironmentKeyWritingModifier<WorkoutViewStyle>>, Text>, _ForegroundStyleModifier<Color>>, _TraitWritingModifier<LayoutPriorityTraitKey>>, Spacer, ModifiedContent<ModifiedContent<PacerRow, MetricRow>, _EnvironmentKeyWritingModifier<WorkoutViewStyle>>)>(v41, &_s7SwiftUI19_ConditionalContentVyACyACyACyACyACy07WorkoutB016EnergyMetricViewVAFGACyAD09HeartRategH0VAD0ij9AggregategH0VGGACyACyAkD04ZonegH0VGACyAD06TimeInlgH0VAOGGGACyACyACyArD04PacegH0VGACyA2WGGACyAyCyAD08DistancegH0VAD04LapsgH0VGGGGACyACyACyACyACyACyAD07CadencegH0VAA05EmptyH0VGA8_GA8_GACyAD015ElevationChangegH0VAD07CurrenttgH0VGGACyACyAD05PowergH0VA21_GACyA21_AD014FlightsClimbedgH0VGGGACyACyACyAD015SegmentDurationgH0VAD0p6DetailgH0VGACyAwFGGACyACyAFA21_GACyA21_AA08ModifiedD0VyA37_yAD0emH0VAD0G6DetailVGAA24_ForegroundStyleModifierVyAA5ColorVGGGGGGGACyACyACyACyA31_AWGACyAD012StrideLengthgH0VA56_GGACyACyAD019VerticalOscillationgH0VA60_GACyAD013GroundContactmgH0VA63_GGGACyACyA15_AD016DownhillRunCountgH0VGACyA10_AA6HStackVyAA05TupleH0VyA37_yAA4TextVAD0G9ValueFontVG_A37_yA37_yA75_AD0G19DescriptionCoreFontVGAD26ExtendedLineSpacingSupport33_241C09B5AC269BC1C919798A0AC522FDLLVGtGGGGGGMd);
  outlined destroy of TupleView<(ModifiedContent<ModifiedContent<_ConditionalContent<ModifiedContent<MetricText, _EnvironmentKeyWritingModifier<WorkoutViewStyle>>, Text>, _ForegroundStyleModifier<Color>>, _TraitWritingModifier<LayoutPriorityTraitKey>>, Spacer, ModifiedContent<ModifiedContent<PacerRow, MetricRow>, _EnvironmentKeyWritingModifier<WorkoutViewStyle>>)>(v38, &_s7SwiftUI19_ConditionalContentVyACyACyACyACyACy07WorkoutB016EnergyMetricViewVAFGACyAD09HeartRategH0VAD0ij9AggregategH0VGGACyACyAkD04ZonegH0VGACyAD06TimeInlgH0VAOGGGACyACyACyArD04PacegH0VGACyA2WGGACyAyCyAD08DistancegH0VAD04LapsgH0VGGGGACyACyACyACyACyACyAD07CadencegH0VAA05EmptyH0VGA8_GA8_GACyAD015ElevationChangegH0VAD07CurrenttgH0VGGACyACyAD05PowergH0VA21_GACyA21_AD014FlightsClimbedgH0VGGGACyACyACyAD015SegmentDurationgH0VAD0p6DetailgH0VGACyAwFGGACyACyAFA21_GACyA21_AA08ModifiedD0VyA37_yAD0emH0VAD0G6DetailVGAA24_ForegroundStyleModifierVyAA5ColorVGGGGGGGACyACyACyACyA31_AWGACyAD012StrideLengthgH0VA56_GGACyACyAD019VerticalOscillationgH0VA60_GACyAD013GroundContactmgH0VA63_GGGACyACyA15_AD016DownhillRunCountgH0VGACyA10_AA6HStackVyAA05TupleH0VyA37_yAA4TextVAD0G9ValueFontVG_A37_yA37_yA75_AD0G19DescriptionCoreFontVGAD26ExtendedLineSpacingSupport33_241C09B5AC269BC1C919798A0AC522FDLLVGtGGGGGGMd);
  outlined destroy of TupleView<(ModifiedContent<ModifiedContent<_ConditionalContent<ModifiedContent<MetricText, _EnvironmentKeyWritingModifier<WorkoutViewStyle>>, Text>, _ForegroundStyleModifier<Color>>, _TraitWritingModifier<LayoutPriorityTraitKey>>, Spacer, ModifiedContent<ModifiedContent<PacerRow, MetricRow>, _EnvironmentKeyWritingModifier<WorkoutViewStyle>>)>(v42, &_s7SwiftUI19_ConditionalContentVyACyACyACyACyACy07WorkoutB016EnergyMetricViewVAFGACyAD09HeartRategH0VAD0ij9AggregategH0VGGACyACyAkD04ZonegH0VGACyAD06TimeInlgH0VAOGGGACyACyACyArD04PacegH0VGACyA2WGGACyAyCyAD08DistancegH0VAD04LapsgH0VGGGGACyACyACyACyACyACyAD07CadencegH0VAA05EmptyH0VGA8_GA8_GACyAD015ElevationChangegH0VAD07CurrenttgH0VGGACyACyAD05PowergH0VA21_GACyA21_AD014FlightsClimbedgH0VGGGACyACyACyAD015SegmentDurationgH0VAD0p6DetailgH0VGACyAwFGGACyACyAFA21_GACyA21_AA08ModifiedD0VyA37_yAD0emH0VAD0G6DetailVGAA24_ForegroundStyleModifierVyAA5ColorVGGGGGGGACyACyACyACyA31_AWGACyAD012StrideLengthgH0VA56_GGACyACyAD019VerticalOscillationgH0VA60_GACyAD013GroundContactmgH0VA63_GGGACyACyA15_AD016DownhillRunCountgH0VGACyA10_AA6HStackVyAA05TupleH0VyA37_yAA4TextVAD0G9ValueFontVG_A37_yA37_yA75_AD0G19DescriptionCoreFontVGAD26ExtendedLineSpacingSupport33_241C09B5AC269BC1C919798A0AC522FDLLVGtGGGGGGMd);
  return outlined destroy of TupleView<(ModifiedContent<ModifiedContent<_ConditionalContent<ModifiedContent<MetricText, _EnvironmentKeyWritingModifier<WorkoutViewStyle>>, Text>, _ForegroundStyleModifier<Color>>, _TraitWritingModifier<LayoutPriorityTraitKey>>, Spacer, ModifiedContent<ModifiedContent<PacerRow, MetricRow>, _EnvironmentKeyWritingModifier<WorkoutViewStyle>>)>(v39, &_s7SwiftUI19_ConditionalContentVyACyACyACyACyACy07WorkoutB016EnergyMetricViewVAFGACyAD09HeartRategH0VAD0ij9AggregategH0VGGACyACyAkD04ZonegH0VGACyAD06TimeInlgH0VAOGGGACyACyACyArD04PacegH0VGACyA2WGGACyAyCyAD08DistancegH0VAD04LapsgH0VGGGGACyACyACyACyACyACyAD07CadencegH0VAA05EmptyH0VGA8_GA8_GACyAD015ElevationChangegH0VAD07CurrenttgH0VGGACyACyAD05PowergH0VA21_GACyA21_AD014FlightsClimbedgH0VGGGACyACyACyAD015SegmentDurationgH0VAD0p6DetailgH0VGACyAwFGGACyACyAFA21_GACyA21_AA08ModifiedD0VyA37_yAD0emH0VAD0G6DetailVGAA24_ForegroundStyleModifierVyAA5ColorVGGGGGGGACyACyACyACyA31_AWGACyAD012StrideLengthgH0VA56_GGACyACyAD019VerticalOscillationgH0VA60_GACyAD013GroundContactmgH0VA63_GGGACyACyA15_AD016DownhillRunCountgH0VGACyA10_AA6HStackVyAA05TupleH0VyA37_yAA4TextVAD0G9ValueFontVG_A37_yA37_yA75_AD0G19DescriptionCoreFontVGAD26ExtendedLineSpacingSupport33_241C09B5AC269BC1C919798A0AC522FDLLVGtGGGGGGMd);
}

uint64_t closure #2 in closure #1 in MirrorPacerMetricPlatterView.progressView()@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v88 = a2;
  v87 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI19_ConditionalContentV7StorageOyACyACy07WorkoutB016EnergyMetricViewVAHGACyAF09HeartRatehI0VAF0jk9AggregatehI0VGGACyACyAmF04ZonehI0VGACyAF06TimeInmhI0VAQGG_GMd);
  MEMORY[0x28223BE20](v87);
  v86 = &v61 - v3;
  v84 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI19_ConditionalContentV7StorageOyACy07WorkoutB016EnergyMetricViewVAHGACyAF09HeartRatehI0VAF0jk9AggregatehI0VG_GMd);
  MEMORY[0x28223BE20](v84);
  v82 = &v61 - v4;
  v76 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI19_ConditionalContentV7StorageOy07WorkoutB019HeartRateMetricViewVAF0gh9AggregateiJ0V_GMd);
  MEMORY[0x28223BE20](v76);
  v75 = &v61 - v5;
  v83 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI19_ConditionalContentVy07WorkoutB019HeartRateMetricViewVAD0fg9AggregatehI0VGMd);
  MEMORY[0x28223BE20](v83);
  v78 = &v61 - v6;
  v85 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI19_ConditionalContentVyACy07WorkoutB016EnergyMetricViewVAFGACyAD09HeartRategH0VAD0ij9AggregategH0VGGMd);
  MEMORY[0x28223BE20](v85);
  v80 = &v61 - v7;
  v97 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI19_ConditionalContentVyACyACy07WorkoutB016EnergyMetricViewVAFGACyAD09HeartRategH0VAD0ij9AggregategH0VGGACyACyAkD04ZonegH0VGACyAD06TimeInlgH0VAOGGGMd);
  MEMORY[0x28223BE20](v97);
  v81 = &v61 - v8;
  v9 = type metadata accessor for HeartRateMetricView();
  MEMORY[0x28223BE20](v9);
  v70 = &v61 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v98 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI19_ConditionalContentV7StorageOyACyACyACyACyACy07WorkoutB016EnergyMetricViewVAHGACyAF09HeartRatehI0VAF0jk9AggregatehI0VGGACyACyAmF04ZonehI0VGACyAF06TimeInmhI0VAQGGGACyACyACyAtF04PacehI0VGACyA2YGGACyA_ACyAF08DistancehI0VAF04LapshI0VGGGGACyACyACyACyACyACyAF07CadencehI0VAA05EmptyI0VGA10_GA10_GACyAF015ElevationChangehI0VAF07CurrentuhI0VGGACyACyAF05PowerhI0VA23_GACyA23_AF014FlightsClimbedhI0VGGGACyACyACyAF015SegmentDurationhI0VAF0q6DetailhI0VGACyAyHGGACyACyAHA23_GACyA23_AA08ModifiedD0VyA39_yAF0fnI0VAF0H6DetailVGAA24_ForegroundStyleModifierVyAA5ColorVGGGGGGGACyACyACyACyA33_AYGACyAF012StrideLengthhI0VA58_GGACyACyAF019VerticalOscillationhI0VA62_GACyAF013GroundContactnhI0VA65_GGGACyACyA17_AF016DownhillRunCounthI0VGACyA12_AA6HStackVyAA05TupleI0VyA39_yAA4TextVAF0H9ValueFontVG_A39_yA39_yA77_AF0H19DescriptionCoreFontVGAF26ExtendedLineSpacingSupport33_241C09B5AC269BC1C919798A0AC522FDLLVGtGGGGG_GMd);
  MEMORY[0x28223BE20](v98);
  v91 = &v61 - v11;
  v96 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI19_ConditionalContentV7StorageOyACyACyACyACy07WorkoutB016EnergyMetricViewVAHGACyAF09HeartRatehI0VAF0jk9AggregatehI0VGGACyACyAmF04ZonehI0VGACyAF06TimeInmhI0VAQGGGACyACyACyAtF04PacehI0VGACyA2YGGACyA_ACyAF08DistancehI0VAF04LapshI0VGGGGACyACyACyACyACyACyAF07CadencehI0VAA05EmptyI0VGA10_GA10_GACyAF015ElevationChangehI0VAF07CurrentuhI0VGGACyACyAF05PowerhI0VA23_GACyA23_AF014FlightsClimbedhI0VGGGACyACyACyAF015SegmentDurationhI0VAF0q6DetailhI0VGACyAyHGGACyACyAHA23_GACyA23_AA08ModifiedD0VyA39_yAF0fnI0VAF0H6DetailVGAA24_ForegroundStyleModifierVyAA5ColorVGGGGGG_GMd);
  MEMORY[0x28223BE20](v96);
  v90 = &v61 - v12;
  v93 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI19_ConditionalContentV7StorageOyACyACyACy07WorkoutB016EnergyMetricViewVAHGACyAF09HeartRatehI0VAF0jk9AggregatehI0VGGACyACyAmF04ZonehI0VGACyAF06TimeInmhI0VAQGGGACyACyACyAtF04PacehI0VGACyA2YGGACyA_ACyAF08DistancehI0VAF04LapshI0VGGG_GMd);
  MEMORY[0x28223BE20](v93);
  v14 = (&v61 - v13);
  v94 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI19_ConditionalContentVyACyACyACy07WorkoutB016EnergyMetricViewVAFGACyAD09HeartRategH0VAD0ij9AggregategH0VGGACyACyAkD04ZonegH0VGACyAD06TimeInlgH0VAOGGGACyACyACyArD04PacegH0VGACyA2WGGACyAyCyAD08DistancegH0VAD04LapsgH0VGGGGMd);
  MEMORY[0x28223BE20](v94);
  v89 = &v61 - v15;
  v95 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI19_ConditionalContentVyACyACyACyACy07WorkoutB016EnergyMetricViewVAFGACyAD09HeartRategH0VAD0ij9AggregategH0VGGACyACyAkD04ZonegH0VGACyAD06TimeInlgH0VAOGGGACyACyACyArD04PacegH0VGACyA2WGGACyAyCyAD08DistancegH0VAD04LapsgH0VGGGGACyACyACyACyACyACyAD07CadencegH0VAA05EmptyH0VGA8_GA8_GACyAD015ElevationChangegH0VAD07CurrenttgH0VGGACyACyAD05PowergH0VA21_GACyA21_AD014FlightsClimbedgH0VGGGACyACyACyAD015SegmentDurationgH0VAD0p6DetailgH0VGACyAwFGGACyACyAFA21_GACyA21_AA08ModifiedD0VyA37_yAD0emH0VAD0G6DetailVGAA24_ForegroundStyleModifierVyAA5ColorVGGGGGGGMd);
  MEMORY[0x28223BE20](v95);
  v62 = &v61 - v16;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI19_ConditionalContentVyACyACyACyACyACy07WorkoutB016EnergyMetricViewVAFGACyAD09HeartRategH0VAD0ij9AggregategH0VGGACyACyAkD04ZonegH0VGACyAD06TimeInlgH0VAOGGGACyACyACyArD04PacegH0VGACyA2WGGACyAyCyAD08DistancegH0VAD04LapsgH0VGGGGACyACyACyACyACyACyAD07CadencegH0VAA05EmptyH0VGA8_GA8_GACyAD015ElevationChangegH0VAD07CurrenttgH0VGGACyACyAD05PowergH0VA21_GACyA21_AD014FlightsClimbedgH0VGGGACyACyACyAD015SegmentDurationgH0VAD0p6DetailgH0VGACyAwFGGACyACyAFA21_GACyA21_AA08ModifiedD0VyA37_yAD0emH0VAD0G6DetailVGAA24_ForegroundStyleModifierVyAA5ColorVGGGGGGGACyACyACyACyA31_AWGACyAD012StrideLengthgH0VA56_GGACyACyAD019VerticalOscillationgH0VA60_GACyAD013GroundContactmgH0VA63_GGGACyACyA15_AD016DownhillRunCountgH0VGACyA10_AA6HStackVyAA05TupleH0VyA37_yAA4TextVAD0G9ValueFontVG_A37_yA37_yA75_AD0G19DescriptionCoreFontVGAD26ExtendedLineSpacingSupport33_241C09B5AC269BC1C919798A0AC522FDLLVGtGGGGGGMd);
  MEMORY[0x28223BE20](v17 - 8);
  v79 = &v61 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v19);
  v77 = &v61 - v20;
  MEMORY[0x28223BE20](v21);
  v74 = &v61 - v22;
  MEMORY[0x28223BE20](v23);
  v92 = &v61 - v24;
  v26 = *(a1 + 16);
  v25 = *(a1 + 24);
  MetricsPublisher.currentPace.getter();
  v28 = v27;
  MetricsPublisher.workoutStatePublisher.getter();
  v29 = WorkoutStatePublisher.gpsUnavailable.getter();

  KeyPath = swift_getKeyPath();
  *&v112 = v26;
  *(&v112 + 1) = 4;
  *&v113 = v25;
  *(&v113 + 1) = KeyPath;
  LOBYTE(v114) = 0;
  *(&v114 + 1) = v28;
  LOBYTE(v115) = v29 & 1;
  v116 = 0;
  v117 = 0;
  v110 = v114;
  v111[0] = v115;
  *&v111[1] = 0;
  v108 = v112;
  v109 = v113;
  v118 = 1;
  BYTE8(v111[1]) = 1;
  v31 = v26;
  v32 = v25;
  outlined init with copy of PaceMetricView(&v112, &v99);
  lazy protocol witness table accessor for type TimeInZoneMetricView and conformance TimeInZoneMetricView();
  lazy protocol witness table accessor for type PaceMetricView and conformance PaceMetricView();
  _ConditionalContent<>.init(storage:)();
  v110 = v101;
  v111[0] = *v102;
  *(v111 + 9) = *&v102[9];
  v108 = v99;
  v109 = v100;
  v119 = 0;
  BYTE9(v111[1]) = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI19_ConditionalContentVy07WorkoutB020TimeInZoneMetricViewVAD04PaceiJ0VGMd);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI19_ConditionalContentVy07WorkoutB014PaceMetricViewVAFGMd);
  lazy protocol witness table accessor for type _ConditionalContent<TimeInZoneMetricView, PaceMetricView> and conformance <> _ConditionalContent<A, B>();
  _s7SwiftUI19_ConditionalContentVy07WorkoutB014PaceMetricViewVAFGACyxq_GAA0H0A2aIRzAaIR_rlWlTm_3(&lazy protocol witness table cache variable for type _ConditionalContent<PaceMetricView, PaceMetricView> and conformance <> _ConditionalContent<A, B>, &_s7SwiftUI19_ConditionalContentVy07WorkoutB014PaceMetricViewVAFGMd, &_s7SwiftUI19_ConditionalContentVy07WorkoutB014PaceMetricViewVAFGMR, lazy protocol witness table accessor for type PaceMetricView and conformance PaceMetricView);
  _ConditionalContent<>.init(storage:)();
  v101 = v106;
  *v102 = v107[0];
  *&v102[10] = *(v107 + 10);
  v99 = v104;
  v100 = v105;
  v120 = 0;
  v103 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI19_ConditionalContentVyACy07WorkoutB020TimeInZoneMetricViewVAD04PaceiJ0VGACyA2HGGMd);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI19_ConditionalContentVyACy07WorkoutB014PaceMetricViewVAFGACyAD08DistancegH0VAD04LapsgH0VGGMd);
  lazy protocol witness table accessor for type _ConditionalContent<_ConditionalContent<TimeInZoneMetricView, PaceMetricView>, _ConditionalContent<PaceMetricView, PaceMetricView>> and conformance <> _ConditionalContent<A, B>();
  lazy protocol witness table accessor for type _ConditionalContent<_ConditionalContent<PaceMetricView, PaceMetricView>, _ConditionalContent<DistanceMetricView, LapsMetricView>> and conformance <> _ConditionalContent<A, B>();
  _ConditionalContent<>.init(storage:)();
  v33 = v111[0];
  v14[2] = v110;
  v14[3] = v33;
  *(v14 + 59) = *(v111 + 11);
  v34 = v109;
  *v14 = v108;
  v14[1] = v34;
  v66 = v14;
  swift_storeEnumTagMultiPayload();
  v73 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI19_ConditionalContentVyACyACy07WorkoutB020TimeInZoneMetricViewVAD04PaceiJ0VGACyA2HGGACyAjCyAD08DistanceiJ0VAD04LapsiJ0VGGGMd);
  v72 = lazy protocol witness table accessor for type _ConditionalContent<_ConditionalContent<_ConditionalContent<EnergyMetricView, EnergyMetricView>, _ConditionalContent<HeartRateMetricView, HeartRateAggregateMetricView>>, _ConditionalContent<_ConditionalContent<HeartRateAggregateMetricView, ZoneMetricView>, _ConditionalContent<TimeInZoneMetricView, ZoneMetricView>>> and conformance <> _ConditionalContent<A, B>();
  v71 = lazy protocol witness table accessor for type _ConditionalContent<_ConditionalContent<_ConditionalContent<TimeInZoneMetricView, PaceMetricView>, _ConditionalContent<PaceMetricView, PaceMetricView>>, _ConditionalContent<_ConditionalContent<PaceMetricView, PaceMetricView>, _ConditionalContent<DistanceMetricView, LapsMetricView>>> and conformance <> _ConditionalContent<A, B>();
  v35 = v89;
  _ConditionalContent<>.init(storage:)();
  v36 = v35;
  outlined init with copy of TupleView<(ModifiedContent<ModifiedContent<_ConditionalContent<ModifiedContent<MetricText, _EnvironmentKeyWritingModifier<WorkoutViewStyle>>, Text>, _ForegroundStyleModifier<Color>>, _TraitWritingModifier<LayoutPriorityTraitKey>>, Spacer, ModifiedContent<ModifiedContent<PacerRow, MetricRow>, _EnvironmentKeyWritingModifier<WorkoutViewStyle>>)>(v35, v90, &_s7SwiftUI19_ConditionalContentVyACyACyACy07WorkoutB016EnergyMetricViewVAFGACyAD09HeartRategH0VAD0ij9AggregategH0VGGACyACyAkD04ZonegH0VGACyAD06TimeInlgH0VAOGGGACyACyACyArD04PacegH0VGACyA2WGGACyAyCyAD08DistancegH0VAD04LapsgH0VGGGGMd);
  swift_storeEnumTagMultiPayload();
  v69 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI19_ConditionalContentVyACyACyACyACyACy07WorkoutB017CadenceMetricViewVAA05EmptyH0VGAFGAFGACyAD015ElevationChangegH0VAD07CurrentjgH0VGGACyACyAD05PowergH0VASGACyAsD014FlightsClimbedgH0VGGGACyACyACyAD015SegmentDurationgH0VAD014DistanceDetailgH0VGACyAD04PacegH0VAD06EnergygH0VGGACyACyA6_ASGACyAsA08ModifiedD0VyA11_yAD0e4TimeH0VAD0gS0VGAA24_ForegroundStyleModifierVyAA5ColorVGGGGGGMd);
  v68 = lazy protocol witness table accessor for type _ConditionalContent<_ConditionalContent<_ConditionalContent<_ConditionalContent<EnergyMetricView, EnergyMetricView>, _ConditionalContent<HeartRateMetricView, HeartRateAggregateMetricView>>, _ConditionalContent<_ConditionalContent<HeartRateAggregateMetricView, ZoneMetricView>, _ConditionalContent<TimeInZoneMetricView, ZoneMetricView>>>, _ConditionalContent<_ConditionalContent<_ConditionalContent<TimeInZoneMetricView, PaceMetricView>, _ConditionalContent<PaceMetricView, PaceMetricView>>, _ConditionalContent<_ConditionalContent<PaceMetricView, PaceMetricView>, _ConditionalContent<DistanceMetricView, LapsMetricView>>>> and conformance <> _ConditionalContent<A, B>();
  v67 = lazy protocol witness table accessor for type _ConditionalContent<_ConditionalContent<_ConditionalContent<_ConditionalContent<_ConditionalContent<_ConditionalContent<CadenceMetricView, EmptyView>, CadenceMetricView>, CadenceMetricView>, _ConditionalContent<ElevationChangeMetricView, CurrentElevationMetricView>>, _ConditionalContent<_ConditionalContent<PowerMetricView, PowerMetricView>, _ConditionalContent<PowerMetricView, FlightsClimbedMetricView>>>, _ConditionalContent<_ConditionalContent<_ConditionalContent<SegmentDurationMetricView, DistanceDetailMetricView>, _ConditionalContent<PaceMetricView, EnergyMetricView>>, _ConditionalContent<_ConditionalContent<EnergyMetricView, PowerMetricView>, _ConditionalContent<PowerMetricView, ModifiedContent<ModifiedContent<WorkoutTimeView, MetricDetail>, _ForegroundStyleModifier<Color>>>>>> and conformance <> _ConditionalContent<A, B>();
  v37 = v62;
  _ConditionalContent<>.init(storage:)();
  outlined destroy of TupleView<(ModifiedContent<ModifiedContent<_ConditionalContent<ModifiedContent<MetricText, _EnvironmentKeyWritingModifier<WorkoutViewStyle>>, Text>, _ForegroundStyleModifier<Color>>, _TraitWritingModifier<LayoutPriorityTraitKey>>, Spacer, ModifiedContent<ModifiedContent<PacerRow, MetricRow>, _EnvironmentKeyWritingModifier<WorkoutViewStyle>>)>(v36, &_s7SwiftUI19_ConditionalContentVyACyACyACy07WorkoutB016EnergyMetricViewVAFGACyAD09HeartRategH0VAD0ij9AggregategH0VGGACyACyAkD04ZonegH0VGACyAD06TimeInlgH0VAOGGGACyACyACyArD04PacegH0VGACyA2WGGACyAyCyAD08DistancegH0VAD04LapsgH0VGGGGMd);
  v38 = v37;
  outlined init with copy of TupleView<(ModifiedContent<ModifiedContent<_ConditionalContent<ModifiedContent<MetricText, _EnvironmentKeyWritingModifier<WorkoutViewStyle>>, Text>, _ForegroundStyleModifier<Color>>, _TraitWritingModifier<LayoutPriorityTraitKey>>, Spacer, ModifiedContent<ModifiedContent<PacerRow, MetricRow>, _EnvironmentKeyWritingModifier<WorkoutViewStyle>>)>(v37, v91, &_s7SwiftUI19_ConditionalContentVyACyACyACyACy07WorkoutB016EnergyMetricViewVAFGACyAD09HeartRategH0VAD0ij9AggregategH0VGGACyACyAkD04ZonegH0VGACyAD06TimeInlgH0VAOGGGACyACyACyArD04PacegH0VGACyA2WGGACyAyCyAD08DistancegH0VAD04LapsgH0VGGGGACyACyACyACyACyACyAD07CadencegH0VAA05EmptyH0VGA8_GA8_GACyAD015ElevationChangegH0VAD07CurrenttgH0VGGACyACyAD05PowergH0VA21_GACyA21_AD014FlightsClimbedgH0VGGGACyACyACyAD015SegmentDurationgH0VAD0p6DetailgH0VGACyAwFGGACyACyAFA21_GACyA21_AA08ModifiedD0VyA37_yAD0emH0VAD0G6DetailVGAA24_ForegroundStyleModifierVyAA5ColorVGGGGGGGMd);
  swift_storeEnumTagMultiPayload();
  v65 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI19_ConditionalContentVyACyACyACy07WorkoutB024DistanceDetailMetricViewVAD04PacehI0VGACyAD012StrideLengthhI0VAKGGACyACyAD019VerticalOscillationhI0VAOGACyAD017GroundContactTimehI0VARGGGACyACyAD015ElevationChangehI0VAD016DownhillRunCounthI0VGACyAA05EmptyI0VAA6HStackVyAA05TupleI0VyAA08ModifiedD0VyAA4TextVAD0H9ValueFontVG_A6_yA6_yA8_AD0H19DescriptionCoreFontVGAD26ExtendedLineSpacingSupport33_241C09B5AC269BC1C919798A0AC522FDLLVGtGGGGGMd);
  v64 = lazy protocol witness table accessor for type _ConditionalContent<_ConditionalContent<_ConditionalContent<_ConditionalContent<_ConditionalContent<EnergyMetricView, EnergyMetricView>, _ConditionalContent<HeartRateMetricView, HeartRateAggregateMetricView>>, _ConditionalContent<_ConditionalContent<HeartRateAggregateMetricView, ZoneMetricView>, _ConditionalContent<TimeInZoneMetricView, ZoneMetricView>>>, _ConditionalContent<_ConditionalContent<_ConditionalContent<TimeInZoneMetricView, PaceMetricView>, _ConditionalContent<PaceMetricView, PaceMetricView>>, _ConditionalContent<_ConditionalContent<PaceMetricView, PaceMetricView>, _ConditionalContent<DistanceMetricView, LapsMetricView>>>>, _ConditionalContent<_ConditionalContent<_ConditionalContent<_ConditionalContent<_ConditionalContent<_ConditionalContent<CadenceMetricView, EmptyView>, CadenceMetricView>, CadenceMetricView>, _ConditionalContent<ElevationChangeMetricView, CurrentElevationMetricView>>, _ConditionalContent<_ConditionalContent<PowerMetricView, PowerMet();
  v63 = lazy protocol witness table accessor for type _ConditionalContent<_ConditionalContent<_ConditionalContent<_ConditionalContent<DistanceDetailMetricView, PaceMetricView>, _ConditionalContent<StrideLengthMetricView, StrideLengthMetricView>>, _ConditionalContent<_ConditionalContent<VerticalOscillationMetricView, VerticalOscillationMetricView>, _ConditionalContent<GroundContactTimeMetricView, GroundContactTimeMetricView>>>, _ConditionalContent<_ConditionalContent<ElevationChangeMetricView, DownhillRunCountMetricView>, _ConditionalContent<EmptyView, HStack<TupleView<(ModifiedContent<Text, MetricValueFont>, ModifiedContent<ModifiedContent<Text, MetricDescriptionCoreFont>, ExtendedLineSpacingSupport>)>>>>> and conformance <> _ConditionalContent<A, B>();
  _ConditionalContent<>.init(storage:)();
  outlined destroy of PaceMetricView(&v112);
  outlined destroy of TupleView<(ModifiedContent<ModifiedContent<_ConditionalContent<ModifiedContent<MetricText, _EnvironmentKeyWritingModifier<WorkoutViewStyle>>, Text>, _ForegroundStyleModifier<Color>>, _TraitWritingModifier<LayoutPriorityTraitKey>>, Spacer, ModifiedContent<ModifiedContent<PacerRow, MetricRow>, _EnvironmentKeyWritingModifier<WorkoutViewStyle>>)>(v37, &_s7SwiftUI19_ConditionalContentVyACyACyACyACy07WorkoutB016EnergyMetricViewVAFGACyAD09HeartRategH0VAD0ij9AggregategH0VGGACyACyAkD04ZonegH0VGACyAD06TimeInlgH0VAOGGGACyACyACyArD04PacegH0VGACyA2WGGACyAyCyAD08DistancegH0VAD04LapsgH0VGGGGACyACyACyACyACyACyAD07CadencegH0VAA05EmptyH0VGA8_GA8_GACyAD015ElevationChangegH0VAD07CurrenttgH0VGGACyACyAD05PowergH0VA21_GACyA21_AD014FlightsClimbedgH0VGGGACyACyACyAD015SegmentDurationgH0VAD0p6DetailgH0VGACyAwFGGACyACyAFA21_GACyA21_AA08ModifiedD0VyA37_yAD0emH0VAD0G6DetailVGAA24_ForegroundStyleModifierVyAA5ColorVGGGGGGGMd);
  MetricsPublisher.heartRateMetricsPublisher.getter();
  v39 = HeartRateMetricsPublisher.currentHeartRate.getter();
  LOBYTE(v25) = v40;

  MetricsPublisher.heartRateMetricsPublisher.getter();
  v41 = v70;
  HeartRateMetricsPublisher.currentHeartRateValueType.getter();

  MetricsPublisher.heartRateMetricsPublisher.getter();
  LOBYTE(v26) = HeartRateMetricsPublisher.isStaleHeartRate.getter();

  MetricsPublisher.workoutStatePublisher.getter();
  v42 = WorkoutStatePublisher.workoutPaused.getter();

  MetricsPublisher.workoutStatePublisher.getter();
  v43 = WorkoutStatePublisher.lowPowerModeAnimationSuspended.getter();

  v44 = v41 + v9[9];
  *v44 = swift_getKeyPath();
  *(v44 + 8) = 0;
  v45 = v41 + v9[10];
  *v45 = swift_getKeyPath();
  *(v45 + 8) = 0;
  v46 = v41 + v9[11];
  *v46 = swift_getKeyPath();
  *(v46 + 8) = 0;
  *(v41 + v9[12]) = 0x3FD6666666666666;
  v47 = (v41 + v9[13]);
  *v47 = 0;
  v47[1] = 0;
  *v41 = v39;
  *(v41 + 8) = v25 & 1;
  *(v41 + v9[6]) = v26 & 1;
  *(v41 + v9[7]) = v42 & 1;
  *(v41 + v9[8]) = v43 & 1;
  outlined init with copy of HeartRateMetricView(v41, v75);
  swift_storeEnumTagMultiPayload();
  type metadata accessor for HeartRateAggregateMetricView();
  _s9WorkoutUI19HeartRateMetricViewVAC05SwiftB00F0AAWlTm_1(&lazy protocol witness table cache variable for type HeartRateMetricView and conformance HeartRateMetricView, type metadata accessor for HeartRateMetricView);
  _s9WorkoutUI19HeartRateMetricViewVAC05SwiftB00F0AAWlTm_1(&lazy protocol witness table cache variable for type HeartRateAggregateMetricView and conformance HeartRateAggregateMetricView, type metadata accessor for HeartRateAggregateMetricView);
  v48 = v78;
  _ConditionalContent<>.init(storage:)();
  outlined init with copy of TupleView<(ModifiedContent<ModifiedContent<_ConditionalContent<ModifiedContent<MetricText, _EnvironmentKeyWritingModifier<WorkoutViewStyle>>, Text>, _ForegroundStyleModifier<Color>>, _TraitWritingModifier<LayoutPriorityTraitKey>>, Spacer, ModifiedContent<ModifiedContent<PacerRow, MetricRow>, _EnvironmentKeyWritingModifier<WorkoutViewStyle>>)>(v48, v82, &_s7SwiftUI19_ConditionalContentVy07WorkoutB019HeartRateMetricViewVAD0fg9AggregatehI0VGMd);
  swift_storeEnumTagMultiPayload();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI19_ConditionalContentVy07WorkoutB016EnergyMetricViewVAFGMd);
  _s7SwiftUI19_ConditionalContentVy07WorkoutB014PaceMetricViewVAFGACyxq_GAA0H0A2aIRzAaIR_rlWlTm_3(&lazy protocol witness table cache variable for type _ConditionalContent<EnergyMetricView, EnergyMetricView> and conformance <> _ConditionalContent<A, B>, &_s7SwiftUI19_ConditionalContentVy07WorkoutB016EnergyMetricViewVAFGMd, &_s7SwiftUI19_ConditionalContentVy07WorkoutB016EnergyMetricViewVAFGMR, lazy protocol witness table accessor for type EnergyMetricView and conformance EnergyMetricView);
  lazy protocol witness table accessor for type _ConditionalContent<HeartRateMetricView, HeartRateAggregateMetricView> and conformance <> _ConditionalContent<A, B>();
  v49 = v80;
  _ConditionalContent<>.init(storage:)();
  outlined destroy of TupleView<(ModifiedContent<ModifiedContent<_ConditionalContent<ModifiedContent<MetricText, _EnvironmentKeyWritingModifier<WorkoutViewStyle>>, Text>, _ForegroundStyleModifier<Color>>, _TraitWritingModifier<LayoutPriorityTraitKey>>, Spacer, ModifiedContent<ModifiedContent<PacerRow, MetricRow>, _EnvironmentKeyWritingModifier<WorkoutViewStyle>>)>(v48, &_s7SwiftUI19_ConditionalContentVy07WorkoutB019HeartRateMetricViewVAD0fg9AggregatehI0VGMd);
  outlined init with copy of TupleView<(ModifiedContent<ModifiedContent<_ConditionalContent<ModifiedContent<MetricText, _EnvironmentKeyWritingModifier<WorkoutViewStyle>>, Text>, _ForegroundStyleModifier<Color>>, _TraitWritingModifier<LayoutPriorityTraitKey>>, Spacer, ModifiedContent<ModifiedContent<PacerRow, MetricRow>, _EnvironmentKeyWritingModifier<WorkoutViewStyle>>)>(v49, v86, &_s7SwiftUI19_ConditionalContentVyACy07WorkoutB016EnergyMetricViewVAFGACyAD09HeartRategH0VAD0ij9AggregategH0VGGMd);
  swift_storeEnumTagMultiPayload();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI19_ConditionalContentVyACy07WorkoutB028HeartRateAggregateMetricViewVAD04ZoneiJ0VGACyAD06TimeInkiJ0VAHGGMd);
  lazy protocol witness table accessor for type _ConditionalContent<_ConditionalContent<EnergyMetricView, EnergyMetricView>, _ConditionalContent<HeartRateMetricView, HeartRateAggregateMetricView>> and conformance <> _ConditionalContent<A, B>();
  lazy protocol witness table accessor for type _ConditionalContent<_ConditionalContent<HeartRateAggregateMetricView, ZoneMetricView>, _ConditionalContent<TimeInZoneMetricView, ZoneMetricView>> and conformance <> _ConditionalContent<A, B>();
  v50 = v81;
  _ConditionalContent<>.init(storage:)();
  outlined destroy of TupleView<(ModifiedContent<ModifiedContent<_ConditionalContent<ModifiedContent<MetricText, _EnvironmentKeyWritingModifier<WorkoutViewStyle>>, Text>, _ForegroundStyleModifier<Color>>, _TraitWritingModifier<LayoutPriorityTraitKey>>, Spacer, ModifiedContent<ModifiedContent<PacerRow, MetricRow>, _EnvironmentKeyWritingModifier<WorkoutViewStyle>>)>(v49, &_s7SwiftUI19_ConditionalContentVyACy07WorkoutB016EnergyMetricViewVAFGACyAD09HeartRategH0VAD0ij9AggregategH0VGGMd);
  outlined init with copy of TupleView<(ModifiedContent<ModifiedContent<_ConditionalContent<ModifiedContent<MetricText, _EnvironmentKeyWritingModifier<WorkoutViewStyle>>, Text>, _ForegroundStyleModifier<Color>>, _TraitWritingModifier<LayoutPriorityTraitKey>>, Spacer, ModifiedContent<ModifiedContent<PacerRow, MetricRow>, _EnvironmentKeyWritingModifier<WorkoutViewStyle>>)>(v50, v66, &_s7SwiftUI19_ConditionalContentVyACyACy07WorkoutB016EnergyMetricViewVAFGACyAD09HeartRategH0VAD0ij9AggregategH0VGGACyACyAkD04ZonegH0VGACyAD06TimeInlgH0VAOGGGMd);
  swift_storeEnumTagMultiPayload();
  v51 = v89;
  _ConditionalContent<>.init(storage:)();
  outlined destroy of TupleView<(ModifiedContent<ModifiedContent<_ConditionalContent<ModifiedContent<MetricText, _EnvironmentKeyWritingModifier<WorkoutViewStyle>>, Text>, _ForegroundStyleModifier<Color>>, _TraitWritingModifier<LayoutPriorityTraitKey>>, Spacer, ModifiedContent<ModifiedContent<PacerRow, MetricRow>, _EnvironmentKeyWritingModifier<WorkoutViewStyle>>)>(v50, &_s7SwiftUI19_ConditionalContentVyACyACy07WorkoutB016EnergyMetricViewVAFGACyAD09HeartRategH0VAD0ij9AggregategH0VGGACyACyAkD04ZonegH0VGACyAD06TimeInlgH0VAOGGGMd);
  outlined init with copy of TupleView<(ModifiedContent<ModifiedContent<_ConditionalContent<ModifiedContent<MetricText, _EnvironmentKeyWritingModifier<WorkoutViewStyle>>, Text>, _ForegroundStyleModifier<Color>>, _TraitWritingModifier<LayoutPriorityTraitKey>>, Spacer, ModifiedContent<ModifiedContent<PacerRow, MetricRow>, _EnvironmentKeyWritingModifier<WorkoutViewStyle>>)>(v51, v90, &_s7SwiftUI19_ConditionalContentVyACyACyACy07WorkoutB016EnergyMetricViewVAFGACyAD09HeartRategH0VAD0ij9AggregategH0VGGACyACyAkD04ZonegH0VGACyAD06TimeInlgH0VAOGGGACyACyACyArD04PacegH0VGACyA2WGGACyAyCyAD08DistancegH0VAD04LapsgH0VGGGGMd);
  swift_storeEnumTagMultiPayload();
  _ConditionalContent<>.init(storage:)();
  outlined destroy of TupleView<(ModifiedContent<ModifiedContent<_ConditionalContent<ModifiedContent<MetricText, _EnvironmentKeyWritingModifier<WorkoutViewStyle>>, Text>, _ForegroundStyleModifier<Color>>, _TraitWritingModifier<LayoutPriorityTraitKey>>, Spacer, ModifiedContent<ModifiedContent<PacerRow, MetricRow>, _EnvironmentKeyWritingModifier<WorkoutViewStyle>>)>(v51, &_s7SwiftUI19_ConditionalContentVyACyACyACy07WorkoutB016EnergyMetricViewVAFGACyAD09HeartRategH0VAD0ij9AggregategH0VGGACyACyAkD04ZonegH0VGACyAD06TimeInlgH0VAOGGGACyACyACyArD04PacegH0VGACyA2WGGACyAyCyAD08DistancegH0VAD04LapsgH0VGGGGMd);
  outlined init with copy of TupleView<(ModifiedContent<ModifiedContent<_ConditionalContent<ModifiedContent<MetricText, _EnvironmentKeyWritingModifier<WorkoutViewStyle>>, Text>, _ForegroundStyleModifier<Color>>, _TraitWritingModifier<LayoutPriorityTraitKey>>, Spacer, ModifiedContent<ModifiedContent<PacerRow, MetricRow>, _EnvironmentKeyWritingModifier<WorkoutViewStyle>>)>(v38, v91, &_s7SwiftUI19_ConditionalContentVyACyACyACyACy07WorkoutB016EnergyMetricViewVAFGACyAD09HeartRategH0VAD0ij9AggregategH0VGGACyACyAkD04ZonegH0VGACyAD06TimeInlgH0VAOGGGACyACyACyArD04PacegH0VGACyA2WGGACyAyCyAD08DistancegH0VAD04LapsgH0VGGGGACyACyACyACyACyACyAD07CadencegH0VAA05EmptyH0VGA8_GA8_GACyAD015ElevationChangegH0VAD07CurrenttgH0VGGACyACyAD05PowergH0VA21_GACyA21_AD014FlightsClimbedgH0VGGGACyACyACyAD015SegmentDurationgH0VAD0p6DetailgH0VGACyAwFGGACyACyAFA21_GACyA21_AA08ModifiedD0VyA37_yAD0emH0VAD0G6DetailVGAA24_ForegroundStyleModifierVyAA5ColorVGGGGGGGMd);
  swift_storeEnumTagMultiPayload();
  v52 = v74;
  _ConditionalContent<>.init(storage:)();
  outlined destroy of TupleView<(ModifiedContent<ModifiedContent<_ConditionalContent<ModifiedContent<MetricText, _EnvironmentKeyWritingModifier<WorkoutViewStyle>>, Text>, _ForegroundStyleModifier<Color>>, _TraitWritingModifier<LayoutPriorityTraitKey>>, Spacer, ModifiedContent<ModifiedContent<PacerRow, MetricRow>, _EnvironmentKeyWritingModifier<WorkoutViewStyle>>)>(v38, &_s7SwiftUI19_ConditionalContentVyACyACyACyACy07WorkoutB016EnergyMetricViewVAFGACyAD09HeartRategH0VAD0ij9AggregategH0VGGACyACyAkD04ZonegH0VGACyAD06TimeInlgH0VAOGGGACyACyACyArD04PacegH0VGACyA2WGGACyAyCyAD08DistancegH0VAD04LapsgH0VGGGGACyACyACyACyACyACyAD07CadencegH0VAA05EmptyH0VGA8_GA8_GACyAD015ElevationChangegH0VAD07CurrenttgH0VGGACyACyAD05PowergH0VA21_GACyA21_AD014FlightsClimbedgH0VGGGACyACyACyAD015SegmentDurationgH0VAD0p6DetailgH0VGACyAwFGGACyACyAFA21_GACyA21_AA08ModifiedD0VyA37_yAD0emH0VAD0G6DetailVGAA24_ForegroundStyleModifierVyAA5ColorVGGGGGGGMd);
  outlined destroy of HeartRateMetricView(v41);
  v53 = v92;
  v54 = v77;
  outlined init with copy of TupleView<(ModifiedContent<ModifiedContent<_ConditionalContent<ModifiedContent<MetricText, _EnvironmentKeyWritingModifier<WorkoutViewStyle>>, Text>, _ForegroundStyleModifier<Color>>, _TraitWritingModifier<LayoutPriorityTraitKey>>, Spacer, ModifiedContent<ModifiedContent<PacerRow, MetricRow>, _EnvironmentKeyWritingModifier<WorkoutViewStyle>>)>(v92, v77, &_s7SwiftUI19_ConditionalContentVyACyACyACyACyACy07WorkoutB016EnergyMetricViewVAFGACyAD09HeartRategH0VAD0ij9AggregategH0VGGACyACyAkD04ZonegH0VGACyAD06TimeInlgH0VAOGGGACyACyACyArD04PacegH0VGACyA2WGGACyAyCyAD08DistancegH0VAD04LapsgH0VGGGGACyACyACyACyACyACyAD07CadencegH0VAA05EmptyH0VGA8_GA8_GACyAD015ElevationChangegH0VAD07CurrenttgH0VGGACyACyAD05PowergH0VA21_GACyA21_AD014FlightsClimbedgH0VGGGACyACyACyAD015SegmentDurationgH0VAD0p6DetailgH0VGACyAwFGGACyACyAFA21_GACyA21_AA08ModifiedD0VyA37_yAD0emH0VAD0G6DetailVGAA24_ForegroundStyleModifierVyAA5ColorVGGGGGGGACyACyACyACyA31_AWGACyAD012StrideLengthgH0VA56_GGACyACyAD019VerticalOscillationgH0VA60_GACyAD013GroundContactmgH0VA63_GGGACyACyA15_AD016DownhillRunCountgH0VGACyA10_AA6HStackVyAA05TupleH0VyA37_yAA4TextVAD0G9ValueFontVG_A37_yA37_yA75_AD0G19DescriptionCoreFontVGAD26ExtendedLineSpacingSupport33_241C09B5AC269BC1C919798A0AC522FDLLVGtGGGGGGMd);
  v55 = v52;
  v56 = v52;
  v57 = v79;
  outlined init with copy of TupleView<(ModifiedContent<ModifiedContent<_ConditionalContent<ModifiedContent<MetricText, _EnvironmentKeyWritingModifier<WorkoutViewStyle>>, Text>, _ForegroundStyleModifier<Color>>, _TraitWritingModifier<LayoutPriorityTraitKey>>, Spacer, ModifiedContent<ModifiedContent<PacerRow, MetricRow>, _EnvironmentKeyWritingModifier<WorkoutViewStyle>>)>(v55, v79, &_s7SwiftUI19_ConditionalContentVyACyACyACyACyACy07WorkoutB016EnergyMetricViewVAFGACyAD09HeartRategH0VAD0ij9AggregategH0VGGACyACyAkD04ZonegH0VGACyAD06TimeInlgH0VAOGGGACyACyACyArD04PacegH0VGACyA2WGGACyAyCyAD08DistancegH0VAD04LapsgH0VGGGGACyACyACyACyACyACyAD07CadencegH0VAA05EmptyH0VGA8_GA8_GACyAD015ElevationChangegH0VAD07CurrenttgH0VGGACyACyAD05PowergH0VA21_GACyA21_AD014FlightsClimbedgH0VGGGACyACyACyAD015SegmentDurationgH0VAD0p6DetailgH0VGACyAwFGGACyACyAFA21_GACyA21_AA08ModifiedD0VyA37_yAD0emH0VAD0G6DetailVGAA24_ForegroundStyleModifierVyAA5ColorVGGGGGGGACyACyACyACyA31_AWGACyAD012StrideLengthgH0VA56_GGACyACyAD019VerticalOscillationgH0VA60_GACyAD013GroundContactmgH0VA63_GGGACyACyA15_AD016DownhillRunCountgH0VGACyA10_AA6HStackVyAA05TupleH0VyA37_yAA4TextVAD0G9ValueFontVG_A37_yA37_yA75_AD0G19DescriptionCoreFontVGAD26ExtendedLineSpacingSupport33_241C09B5AC269BC1C919798A0AC522FDLLVGtGGGGGGMd);
  v58 = v88;
  outlined init with copy of TupleView<(ModifiedContent<ModifiedContent<_ConditionalContent<ModifiedContent<MetricText, _EnvironmentKeyWritingModifier<WorkoutViewStyle>>, Text>, _ForegroundStyleModifier<Color>>, _TraitWritingModifier<LayoutPriorityTraitKey>>, Spacer, ModifiedContent<ModifiedContent<PacerRow, MetricRow>, _EnvironmentKeyWritingModifier<WorkoutViewStyle>>)>(v54, v88, &_s7SwiftUI19_ConditionalContentVyACyACyACyACyACy07WorkoutB016EnergyMetricViewVAFGACyAD09HeartRategH0VAD0ij9AggregategH0VGGACyACyAkD04ZonegH0VGACyAD06TimeInlgH0VAOGGGACyACyACyArD04PacegH0VGACyA2WGGACyAyCyAD08DistancegH0VAD04LapsgH0VGGGGACyACyACyACyACyACyAD07CadencegH0VAA05EmptyH0VGA8_GA8_GACyAD015ElevationChangegH0VAD07CurrenttgH0VGGACyACyAD05PowergH0VA21_GACyA21_AD014FlightsClimbedgH0VGGGACyACyACyAD015SegmentDurationgH0VAD0p6DetailgH0VGACyAwFGGACyACyAFA21_GACyA21_AA08ModifiedD0VyA37_yAD0emH0VAD0G6DetailVGAA24_ForegroundStyleModifierVyAA5ColorVGGGGGGGACyACyACyACyA31_AWGACyAD012StrideLengthgH0VA56_GGACyACyAD019VerticalOscillationgH0VA60_GACyAD013GroundContactmgH0VA63_GGGACyACyA15_AD016DownhillRunCountgH0VGACyA10_AA6HStackVyAA05TupleH0VyA37_yAA4TextVAD0G9ValueFontVG_A37_yA37_yA75_AD0G19DescriptionCoreFontVGAD26ExtendedLineSpacingSupport33_241C09B5AC269BC1C919798A0AC522FDLLVGtGGGGGGMd);
  v59 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI19_ConditionalContentVyACyACyACyACyACy07WorkoutB016EnergyMetricViewVAFGACyAD09HeartRategH0VAD0ij9AggregategH0VGGACyACyAkD04ZonegH0VGACyAD06TimeInlgH0VAOGGGACyACyACyArD04PacegH0VGACyA2WGGACyAyCyAD08DistancegH0VAD04LapsgH0VGGGGACyACyACyACyACyACyAD07CadencegH0VAA05EmptyH0VGA8_GA8_GACyAD015ElevationChangegH0VAD07CurrenttgH0VGGACyACyAD05PowergH0VA21_GACyA21_AD014FlightsClimbedgH0VGGGACyACyACyAD015SegmentDurationgH0VAD0p6DetailgH0VGACyAwFGGACyACyAFA21_GACyA21_AA08ModifiedD0VyA37_yAD0emH0VAD0G6DetailVGAA24_ForegroundStyleModifierVyAA5ColorVGGGGGGGACyACyACyACyA31_AWGACyAD012StrideLengthgH0VA56_GGACyACyAD019VerticalOscillationgH0VA60_GACyAD013GroundContactmgH0VA63_GGGACyACyA15_AD016DownhillRunCountgH0VGACyA10_AA6HStackVyAA05TupleH0VyA37_yAA4TextVAD0G9ValueFontVG_A37_yA37_yA75_AD0G19DescriptionCoreFontVGAD26ExtendedLineSpacingSupport33_241C09B5AC269BC1C919798A0AC522FDLLVGtGGGGGG_A91_tMd);
  outlined init with copy of TupleView<(ModifiedContent<ModifiedContent<_ConditionalContent<ModifiedContent<MetricText, _EnvironmentKeyWritingModifier<WorkoutViewStyle>>, Text>, _ForegroundStyleModifier<Color>>, _TraitWritingModifier<LayoutPriorityTraitKey>>, Spacer, ModifiedContent<ModifiedContent<PacerRow, MetricRow>, _EnvironmentKeyWritingModifier<WorkoutViewStyle>>)>(v57, v58 + *(v59 + 48), &_s7SwiftUI19_ConditionalContentVyACyACyACyACyACy07WorkoutB016EnergyMetricViewVAFGACyAD09HeartRategH0VAD0ij9AggregategH0VGGACyACyAkD04ZonegH0VGACyAD06TimeInlgH0VAOGGGACyACyACyArD04PacegH0VGACyA2WGGACyAyCyAD08DistancegH0VAD04LapsgH0VGGGGACyACyACyACyACyACyAD07CadencegH0VAA05EmptyH0VGA8_GA8_GACyAD015ElevationChangegH0VAD07CurrenttgH0VGGACyACyAD05PowergH0VA21_GACyA21_AD014FlightsClimbedgH0VGGGACyACyACyAD015SegmentDurationgH0VAD0p6DetailgH0VGACyAwFGGACyACyAFA21_GACyA21_AA08ModifiedD0VyA37_yAD0emH0VAD0G6DetailVGAA24_ForegroundStyleModifierVyAA5ColorVGGGGGGGACyACyACyACyA31_AWGACyAD012StrideLengthgH0VA56_GGACyACyAD019VerticalOscillationgH0VA60_GACyAD013GroundContactmgH0VA63_GGGACyACyA15_AD016DownhillRunCountgH0VGACyA10_AA6HStackVyAA05TupleH0VyA37_yAA4TextVAD0G9ValueFontVG_A37_yA37_yA75_AD0G19DescriptionCoreFontVGAD26ExtendedLineSpacingSupport33_241C09B5AC269BC1C919798A0AC522FDLLVGtGGGGGGMd);
  outlined destroy of TupleView<(ModifiedContent<ModifiedContent<_ConditionalContent<ModifiedContent<MetricText, _EnvironmentKeyWritingModifier<WorkoutViewStyle>>, Text>, _ForegroundStyleModifier<Color>>, _TraitWritingModifier<LayoutPriorityTraitKey>>, Spacer, ModifiedContent<ModifiedContent<PacerRow, MetricRow>, _EnvironmentKeyWritingModifier<WorkoutViewStyle>>)>(v56, &_s7SwiftUI19_ConditionalContentVyACyACyACyACyACy07WorkoutB016EnergyMetricViewVAFGACyAD09HeartRategH0VAD0ij9AggregategH0VGGACyACyAkD04ZonegH0VGACyAD06TimeInlgH0VAOGGGACyACyACyArD04PacegH0VGACyA2WGGACyAyCyAD08DistancegH0VAD04LapsgH0VGGGGACyACyACyACyACyACyAD07CadencegH0VAA05EmptyH0VGA8_GA8_GACyAD015ElevationChangegH0VAD07CurrenttgH0VGGACyACyAD05PowergH0VA21_GACyA21_AD014FlightsClimbedgH0VGGGACyACyACyAD015SegmentDurationgH0VAD0p6DetailgH0VGACyAwFGGACyACyAFA21_GACyA21_AA08ModifiedD0VyA37_yAD0emH0VAD0G6DetailVGAA24_ForegroundStyleModifierVyAA5ColorVGGGGGGGACyACyACyACyA31_AWGACyAD012StrideLengthgH0VA56_GGACyACyAD019VerticalOscillationgH0VA60_GACyAD013GroundContactmgH0VA63_GGGACyACyA15_AD016DownhillRunCountgH0VGACyA10_AA6HStackVyAA05TupleH0VyA37_yAA4TextVAD0G9ValueFontVG_A37_yA37_yA75_AD0G19DescriptionCoreFontVGAD26ExtendedLineSpacingSupport33_241C09B5AC269BC1C919798A0AC522FDLLVGtGGGGGGMd);
  outlined destroy of TupleView<(ModifiedContent<ModifiedContent<_ConditionalContent<ModifiedContent<MetricText, _EnvironmentKeyWritingModifier<WorkoutViewStyle>>, Text>, _ForegroundStyleModifier<Color>>, _TraitWritingModifier<LayoutPriorityTraitKey>>, Spacer, ModifiedContent<ModifiedContent<PacerRow, MetricRow>, _EnvironmentKeyWritingModifier<WorkoutViewStyle>>)>(v53, &_s7SwiftUI19_ConditionalContentVyACyACyACyACyACy07WorkoutB016EnergyMetricViewVAFGACyAD09HeartRategH0VAD0ij9AggregategH0VGGACyACyAkD04ZonegH0VGACyAD06TimeInlgH0VAOGGGACyACyACyArD04PacegH0VGACyA2WGGACyAyCyAD08DistancegH0VAD04LapsgH0VGGGGACyACyACyACyACyACyAD07CadencegH0VAA05EmptyH0VGA8_GA8_GACyAD015ElevationChangegH0VAD07CurrenttgH0VGGACyACyAD05PowergH0VA21_GACyA21_AD014FlightsClimbedgH0VGGGACyACyACyAD015SegmentDurationgH0VAD0p6DetailgH0VGACyAwFGGACyACyAFA21_GACyA21_AA08ModifiedD0VyA37_yAD0emH0VAD0G6DetailVGAA24_ForegroundStyleModifierVyAA5ColorVGGGGGGGACyACyACyACyA31_AWGACyAD012StrideLengthgH0VA56_GGACyACyAD019VerticalOscillationgH0VA60_GACyAD013GroundContactmgH0VA63_GGGACyACyA15_AD016DownhillRunCountgH0VGACyA10_AA6HStackVyAA05TupleH0VyA37_yAA4TextVAD0G9ValueFontVG_A37_yA37_yA75_AD0G19DescriptionCoreFontVGAD26ExtendedLineSpacingSupport33_241C09B5AC269BC1C919798A0AC522FDLLVGtGGGGGGMd);
  outlined destroy of TupleView<(ModifiedContent<ModifiedContent<_ConditionalContent<ModifiedContent<MetricText, _EnvironmentKeyWritingModifier<WorkoutViewStyle>>, Text>, _ForegroundStyleModifier<Color>>, _TraitWritingModifier<LayoutPriorityTraitKey>>, Spacer, ModifiedContent<ModifiedContent<PacerRow, MetricRow>, _EnvironmentKeyWritingModifier<WorkoutViewStyle>>)>(v57, &_s7SwiftUI19_ConditionalContentVyACyACyACyACyACy07WorkoutB016EnergyMetricViewVAFGACyAD09HeartRategH0VAD0ij9AggregategH0VGGACyACyAkD04ZonegH0VGACyAD06TimeInlgH0VAOGGGACyACyACyArD04PacegH0VGACyA2WGGACyAyCyAD08DistancegH0VAD04LapsgH0VGGGGACyACyACyACyACyACyAD07CadencegH0VAA05EmptyH0VGA8_GA8_GACyAD015ElevationChangegH0VAD07CurrenttgH0VGGACyACyAD05PowergH0VA21_GACyA21_AD014FlightsClimbedgH0VGGGACyACyACyAD015SegmentDurationgH0VAD0p6DetailgH0VGACyAwFGGACyACyAFA21_GACyA21_AA08ModifiedD0VyA37_yAD0emH0VAD0G6DetailVGAA24_ForegroundStyleModifierVyAA5ColorVGGGGGGGACyACyACyACyA31_AWGACyAD012StrideLengthgH0VA56_GGACyACyAD019VerticalOscillationgH0VA60_GACyAD013GroundContactmgH0VA63_GGGACyACyA15_AD016DownhillRunCountgH0VGACyA10_AA6HStackVyAA05TupleH0VyA37_yAA4TextVAD0G9ValueFontVG_A37_yA37_yA75_AD0G19DescriptionCoreFontVGAD26ExtendedLineSpacingSupport33_241C09B5AC269BC1C919798A0AC522FDLLVGtGGGGGGMd);
  return outlined destroy of TupleView<(ModifiedContent<ModifiedContent<_ConditionalContent<ModifiedContent<MetricText, _EnvironmentKeyWritingModifier<WorkoutViewStyle>>, Text>, _ForegroundStyleModifier<Color>>, _TraitWritingModifier<LayoutPriorityTraitKey>>, Spacer, ModifiedContent<ModifiedContent<PacerRow, MetricRow>, _EnvironmentKeyWritingModifier<WorkoutViewStyle>>)>(v54, &_s7SwiftUI19_ConditionalContentVyACyACyACyACyACy07WorkoutB016EnergyMetricViewVAFGACyAD09HeartRategH0VAD0ij9AggregategH0VGGACyACyAkD04ZonegH0VGACyAD06TimeInlgH0VAOGGGACyACyACyArD04PacegH0VGACyA2WGGACyAyCyAD08DistancegH0VAD04LapsgH0VGGGGACyACyACyACyACyACyAD07CadencegH0VAA05EmptyH0VGA8_GA8_GACyAD015ElevationChangegH0VAD07CurrenttgH0VGGACyACyAD05PowergH0VA21_GACyA21_AD014FlightsClimbedgH0VGGGACyACyACyAD015SegmentDurationgH0VAD0p6DetailgH0VGACyAwFGGACyACyAFA21_GACyA21_AA08ModifiedD0VyA37_yAD0emH0VAD0G6DetailVGAA24_ForegroundStyleModifierVyAA5ColorVGGGGGGGACyACyACyACyA31_AWGACyAD012StrideLengthgH0VA56_GGACyACyAD019VerticalOscillationgH0VA60_GACyAD013GroundContactmgH0VA63_GGGACyACyA15_AD016DownhillRunCountgH0VGACyA10_AA6HStackVyAA05TupleH0VyA37_yAA4TextVAD0G9ValueFontVG_A37_yA37_yA75_AD0G19DescriptionCoreFontVGAD26ExtendedLineSpacingSupport33_241C09B5AC269BC1C919798A0AC522FDLLVGtGGGGGGMd);
}

uint64_t protocol witness for View.body.getter in conformance MirrorPacerMetricPlatterView@<X0>(uint64_t a1@<X8>)
{
  v3 = v1[1];
  v7[0] = *v1;
  v7[1] = v3;
  v4 = v1[3];
  v7[2] = v1[2];
  v7[3] = v4;
  *a1 = static HorizontalAlignment.center.getter();
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI13_VariadicViewO4TreeVy_AA13_VStackLayoutVAA05TupleD0VyAA0F0VyAIyAA15ModifiedContentVyAMyAA012_ConditionalJ0VyAMy07WorkoutB010MetricTextVAA30_EnvironmentKeyWritingModifierVyAP0lD5StyleOGGAA0N0VGAA011_ForegroundsR0VyAA5ColorVGGAA06_TraitqR0VyAA0g8PriorityvP0VGG_AA6SpacerVAMyAMyAP8PacerRowVAP0mZ0VGAWGtGG_AOyAMyAMyAKyAIyAA7ForEachVySaySSGSSAA6HStackVyAIyAMyAMyAMyAzP0L16NotificationFontVGATy12CoreGraphics7CGFloatVGGATySiSgGG_A13_tGGG_AMyAMyAP011ElapsedTimeD0VATyA3_SgGGAWGtGGAA08_PaddingG0VGAWGAKyAIyA13__AMyAMyA26_yAIyAOyAOyAOyAOyAOyAOyAP06EnergymD0VA54_GAOyAP09HeartRatemD0VAP018HeartRateAggregatemD0VGGAOyAOyA59_AP04ZonemD0VGAOyAP010TimeInZonemD0VA63_GGGAOyAOyAOyA66_AP04PacemD0VGAOyA71_A71_GGAOyA73_AOyAP08DistancemD0VAP04LapsmD0VGGGGAOyAOyAOyAOyAOyAOyAP07CadencemD0VAA05EmptyD0VGA84_GA84_GAOyAP015ElevationChangemD0VAP016CurrentElevationmD0VGGAOyAOyAP05PowermD0VA97_GAOyA97_AP014FlightsClimbedmD0VGGGAOyAOyAOyAP015SegmentDurationmD0VAP014DistanceDetailmD0VGAOyA71_A54_GGAOyAOyA54_A97_GAOyA97_AMyAMyAP0l4TimeD0VAP0M6DetailVGA4_GGGGGGAOyAOyAOyAOyA107_A71_GAOyAP012StrideLengthmD0VA125_GGAOyAOyAP019VerticalOscillationmD0VA129_GAOyAP017GroundContactTimemD0VA132_GGGAOyAOyA91_AP016DownhillRunCountmD0VGAOyA86_A26_yAIyAMyAzP0M9ValueFontVG_AMyAMyAzP0M19DescriptionCoreFontVGAP26ExtendedLineSpacingSupport33_241C09B5AC269BC1C919798A0AC522FDLLVGtGGGGGG_A154_tGGA17_GAWGA13_A158_tGGGtGGMd);
  return closure #1 in MirrorPacerMetricPlatterView.body.getter(v7, a1 + *(v5 + 44));
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<VStack<TupleView<(ForEach<[String], String, HStack<TupleView<(ModifiedContent<ModifiedContent<ModifiedContent<Text, WorkoutNotificationFont>, _EnvironmentKeyWritingModifier<CGFloat>>, _EnvironmentKeyWritingModifier<Int?>>, Spacer)>>>, ModifiedContent<ModifiedContent<ElapsedTimeView, _EnvironmentKeyWritingModifier<Color?>>, _EnvironmentKeyWritingModifier<WorkoutViewStyle>>)>>, _PaddingLayout>, _EnvironmentKeyWritingModifier<WorkoutViewStyle>> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<VStack<TupleView<(ForEach<[String], String, HStack<TupleView<(ModifiedContent<ModifiedContent<ModifiedContent<Text, WorkoutNotificationFont>, _EnvironmentKeyWritingModifier<CGFloat>>, _EnvironmentKeyWritingModifier<Int?>>, Spacer)>>>, ModifiedContent<ModifiedContent<ElapsedTimeView, _EnvironmentKeyWritingModifier<Color?>>, _EnvironmentKeyWritingModifier<WorkoutViewStyle>>)>>, _PaddingLayout>, _EnvironmentKeyWritingModifier<WorkoutViewStyle>> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<VStack<TupleView<(ForEach<[String], String, HStack<TupleView<(ModifiedContent<ModifiedContent<ModifiedContent<Text, WorkoutNotificationFont>, _EnvironmentKeyWritingModifier<CGFloat>>, _EnvironmentKeyWritingModifier<Int?>>, Spacer)>>>, ModifiedContent<ModifiedContent<ElapsedTimeView, _EnvironmentKeyWritingModifier<Color?>>, _EnvironmentKeyWritingModifier<WorkoutViewStyle>>)>>, _PaddingLayout>, _EnvironmentKeyWritingModifier<WorkoutViewStyle>> and conformance <> ModifiedContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyACyAA6VStackVyAA9TupleViewVyAA7ForEachVySaySSGSSAA6HStackVyAGyACyACyACyAA4TextV07WorkoutB00L16NotificationFontVGAA30_EnvironmentKeyWritingModifierVy12CoreGraphics7CGFloatVGGATySiSgGG_AA6SpacerVtGGG_ACyACyAO011ElapsedTimeG0VATyAA5ColorVSgGGATyAO0lG5StyleOGGtGGAA14_PaddingLayoutVGA15_GMd);
    lazy protocol witness table accessor for type ModifiedContent<VStack<TupleView<(ForEach<[String], String, HStack<TupleView<(ModifiedContent<ModifiedContent<ModifiedContent<Text, WorkoutNotificationFont>, _EnvironmentKeyWritingModifier<CGFloat>>, _EnvironmentKeyWritingModifier<Int?>>, Spacer)>>>, ModifiedContent<ModifiedContent<ElapsedTimeView, _EnvironmentKeyWritingModifier<Color?>>, _EnvironmentKeyWritingModifier<WorkoutViewStyle>>)>>, _PaddingLayout> and conformance <> ModifiedContent<A, B>();
    lazy protocol witness table accessor for type VStack<TupleView<(ForEach<[String], String, HStack<TupleView<(ModifiedContent<ModifiedContent<ModifiedContent<Text, WorkoutNotificationFont>, _EnvironmentKeyWritingModifier<CGFloat>>, _EnvironmentKeyWritingModifier<Int?>>, Spacer)>>>, ModifiedContent<ModifiedContent<ElapsedTimeView, _EnvironmentKeyWritingModifier<Color?>>, _EnvironmentKeyWritingModifier<WorkoutViewStyle>>)>> and conformance VStack<A>(&lazy protocol witness table cache variable for type _EnvironmentKeyWritingModifier<WorkoutViewStyle> and conformance _EnvironmentKeyWritingModifier<A>, &_s7SwiftUI30_EnvironmentKeyWritingModifierVy07WorkoutB00G9ViewStyleOGMd);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<VStack<TupleView<(ForEach<[String], String, HStack<TupleView<(ModifiedContent<ModifiedContent<ModifiedContent<Text, WorkoutNotificationFont>, _EnvironmentKeyWritingModifier<CGFloat>>, _EnvironmentKeyWritingModifier<Int?>>, Spacer)>>>, ModifiedContent<ModifiedContent<ElapsedTimeView, _EnvironmentKeyWritingModifier<Color?>>, _EnvironmentKeyWritingModifier<WorkoutViewStyle>>)>>, _PaddingLayout>, _EnvironmentKeyWritingModifier<WorkoutViewStyle>> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<VStack<TupleView<(ForEach<[String], String, HStack<TupleView<(ModifiedContent<ModifiedContent<ModifiedContent<Text, WorkoutNotificationFont>, _EnvironmentKeyWritingModifier<CGFloat>>, _EnvironmentKeyWritingModifier<Int?>>, Spacer)>>>, ModifiedContent<ModifiedContent<ElapsedTimeView, _EnvironmentKeyWritingModifier<Color?>>, _EnvironmentKeyWritingModifier<WorkoutViewStyle>>)>>, _PaddingLayout> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<VStack<TupleView<(ForEach<[String], String, HStack<TupleView<(ModifiedContent<ModifiedContent<ModifiedContent<Text, WorkoutNotificationFont>, _EnvironmentKeyWritingModifier<CGFloat>>, _EnvironmentKeyWritingModifier<Int?>>, Spacer)>>>, ModifiedContent<ModifiedContent<ElapsedTimeView, _EnvironmentKeyWritingModifier<Color?>>, _EnvironmentKeyWritingModifier<WorkoutViewStyle>>)>>, _PaddingLayout> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<VStack<TupleView<(ForEach<[String], String, HStack<TupleView<(ModifiedContent<ModifiedContent<ModifiedContent<Text, WorkoutNotificationFont>, _EnvironmentKeyWritingModifier<CGFloat>>, _EnvironmentKeyWritingModifier<Int?>>, Spacer)>>>, ModifiedContent<ModifiedContent<ElapsedTimeView, _EnvironmentKeyWritingModifier<Color?>>, _EnvironmentKeyWritingModifier<WorkoutViewStyle>>)>>, _PaddingLayout> and conformance <> ModifiedContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyAA6VStackVyAA9TupleViewVyAA7ForEachVySaySSGSSAA6HStackVyAGyACyACyACyAA4TextV07WorkoutB00L16NotificationFontVGAA30_EnvironmentKeyWritingModifierVy12CoreGraphics7CGFloatVGGATySiSgGG_AA6SpacerVtGGG_ACyACyAO011ElapsedTimeG0VATyAA5ColorVSgGGATyAO0lG5StyleOGGtGGAA14_PaddingLayoutVGMd);
    lazy protocol witness table accessor for type VStack<TupleView<(ForEach<[String], String, HStack<TupleView<(ModifiedContent<ModifiedContent<ModifiedContent<Text, WorkoutNotificationFont>, _EnvironmentKeyWritingModifier<CGFloat>>, _EnvironmentKeyWritingModifier<Int?>>, Spacer)>>>, ModifiedContent<ModifiedContent<ElapsedTimeView, _EnvironmentKeyWritingModifier<Color?>>, _EnvironmentKeyWritingModifier<WorkoutViewStyle>>)>> and conformance VStack<A>(&lazy protocol witness table cache variable for type VStack<TupleView<(ForEach<[String], String, HStack<TupleView<(ModifiedContent<ModifiedContent<ModifiedContent<Text, WorkoutNotificationFont>, _EnvironmentKeyWritingModifier<CGFloat>>, _EnvironmentKeyWritingModifier<Int?>>, Spacer)>>>, ModifiedContent<ModifiedContent<ElapsedTimeView, _EnvironmentKeyWritingModifier<Color?>>, _EnvironmentKeyWritingModifier<WorkoutViewStyle>>)>> and conformance VStack<A>, &_s7SwiftUI6VStackVyAA9TupleViewVyAA7ForEachVySaySSGSSAA6HStackVyAEyAA15ModifiedContentVyALyALyAA4TextV07WorkoutB00L16NotificationFontVGAA30_EnvironmentKeyWritingModifierVy12CoreGraphics7CGFloatVGGATySiSgGG_AA6SpacerVtGGG_ALyALyAO011ElapsedTimeE0VATyAA5ColorVSgGGATyAO0lE5StyleOGGtGGMd);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<VStack<TupleView<(ForEach<[String], String, HStack<TupleView<(ModifiedContent<ModifiedContent<ModifiedContent<Text, WorkoutNotificationFont>, _EnvironmentKeyWritingModifier<CGFloat>>, _EnvironmentKeyWritingModifier<Int?>>, Spacer)>>>, ModifiedContent<ModifiedContent<ElapsedTimeView, _EnvironmentKeyWritingModifier<Color?>>, _EnvironmentKeyWritingModifier<WorkoutViewStyle>>)>>, _PaddingLayout> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

uint64_t _s9WorkoutUI19HeartRateMetricViewVAC05SwiftB00F0AAWlTm_1(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t _s7SwiftUI19_ConditionalContentVy07WorkoutB014PaceMetricViewVAFGACyxq_GAA0H0A2aIRzAaIR_rlWlTm_3(unint64_t *a1, uint64_t *a2, uint64_t a3, void (*a4)(void))
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2);
    a4();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t outlined init with copy of TupleView<(ModifiedContent<ModifiedContent<_ConditionalContent<ModifiedContent<MetricText, _EnvironmentKeyWritingModifier<WorkoutViewStyle>>, Text>, _ForegroundStyleModifier<Color>>, _TraitWritingModifier<LayoutPriorityTraitKey>>, Spacer, ModifiedContent<ModifiedContent<PacerRow, MetricRow>, _EnvironmentKeyWritingModifier<WorkoutViewStyle>>)>(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(a3);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t outlined destroy of TupleView<(ModifiedContent<ModifiedContent<_ConditionalContent<ModifiedContent<MetricText, _EnvironmentKeyWritingModifier<WorkoutViewStyle>>, Text>, _ForegroundStyleModifier<Color>>, _TraitWritingModifier<LayoutPriorityTraitKey>>, Spacer, ModifiedContent<ModifiedContent<PacerRow, MetricRow>, _EnvironmentKeyWritingModifier<WorkoutViewStyle>>)>(uint64_t a1, uint64_t *a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(a2);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t lazy protocol witness table accessor for type VStack<TupleView<(ForEach<[String], String, HStack<TupleView<(ModifiedContent<ModifiedContent<ModifiedContent<Text, WorkoutNotificationFont>, _EnvironmentKeyWritingModifier<CGFloat>>, _EnvironmentKeyWritingModifier<Int?>>, Spacer)>>>, ModifiedContent<ModifiedContent<ElapsedTimeView, _EnvironmentKeyWritingModifier<Color?>>, _EnvironmentKeyWritingModifier<WorkoutViewStyle>>)>> and conformance VStack<A>(unint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

double Image.scaledToFit(size:)@<D0>(uint64_t a1@<X8>)
{
  v2 = type metadata accessor for Image.ResizingMode();
  v3 = *(v2 - 8);
  v4 = MEMORY[0x28223BE20](v2);
  v6 = v10 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v3 + 104))(v6, *MEMORY[0x277CE0FE0], v2, v4);
  v7 = Image.resizable(capInsets:resizingMode:)();
  (*(v3 + 8))(v6, v2);
  static Alignment.center.getter();
  _FrameLayout.init(width:height:alignment:)();
  *a1 = v7;
  *(a1 + 8) = 0;
  *(a1 + 16) = 1;
  v8 = v10[1];
  *(a1 + 24) = v10[0];
  *(a1 + 40) = v8;
  result = *&v11;
  *(a1 + 56) = v11;
  return result;
}

double protocol witness for ViewModifier.body(content:) in conformance ZeroListRowInsets@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI21_ViewModifier_ContentVy07WorkoutB017ZeroListRowInsetsVGMd);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  v5 = a2 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyAA014_ViewModifier_D0Vy07WorkoutB017ZeroListRowInsetsVGAA013_TraitWritingF0VyAA0ijkL3KeyVGGMd) + 36);
  *(v5 + 32) = 0;
  result = 0.0;
  *v5 = 0u;
  *(v5 + 16) = 0u;
  return result;
}

uint64_t protocol witness for ViewModifier.body(content:) in conformance LeadingInsetViewModifier@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = static VerticalAlignment.center.getter();
  static Alignment.center.getter();
  _FrameLayout.init(width:height:alignment:)();
  *a2 = 0;
  *(a2 + 8) = 1;
  *(a2 + 16) = v9;
  *(a2 + 24) = v10;
  *(a2 + 32) = v11;
  *(a2 + 40) = v12;
  *(a2 + 48) = v13;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9WorkoutUI34AlignedLeadingAccessoryContentViewVy05SwiftB008ModifiedF0VyAD6SpacerVAD12_FrameLayoutVGAD01_g9Modifier_F0VyAA0d5InsetgM0VGGMd);
  v6 = v5[13];
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI21_ViewModifier_ContentVy07WorkoutB0012LeadingInsetcD0VGMd);
  result = (*(*(v7 - 8) + 16))(a2 + v6, a1, v7);
  *(a2 + v5[14]) = 0x4022000000000000;
  *(a2 + v5[15]) = v4;
  return result;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<_ViewModifier_Content<ZeroListRowInsets>, _TraitWritingModifier<ListRowInsetsTraitKey>> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<_ViewModifier_Content<ZeroListRowInsets>, _TraitWritingModifier<ListRowInsetsTraitKey>> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<_ViewModifier_Content<ZeroListRowInsets>, _TraitWritingModifier<ListRowInsetsTraitKey>> and conformance <> ModifiedContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyAA014_ViewModifier_D0Vy07WorkoutB017ZeroListRowInsetsVGAA013_TraitWritingF0VyAA0ijkL3KeyVGGMd);
    lazy protocol witness table accessor for type _ViewModifier_Content<ZeroListRowInsets> and conformance _ViewModifier_Content<A>(&lazy protocol witness table cache variable for type _ViewModifier_Content<ZeroListRowInsets> and conformance _ViewModifier_Content<A>, &_s7SwiftUI21_ViewModifier_ContentVy07WorkoutB017ZeroListRowInsetsVGMd);
    lazy protocol witness table accessor for type _ViewModifier_Content<ZeroListRowInsets> and conformance _ViewModifier_Content<A>(&lazy protocol witness table cache variable for type _TraitWritingModifier<ListRowInsetsTraitKey> and conformance _TraitWritingModifier<A>, &_s7SwiftUI21_TraitWritingModifierVyAA013ListRowInsetsC3KeyVGMd);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<_ViewModifier_Content<ZeroListRowInsets>, _TraitWritingModifier<ListRowInsetsTraitKey>> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

uint64_t lazy protocol witness table accessor for type _ViewModifier_Content<ZeroListRowInsets> and conformance _ViewModifier_Content<A>(unint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t MediaConfigurationRoom.dismiss.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = type metadata accessor for EnvironmentValues();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI11EnvironmentV7ContentOyAA13DismissActionV_GMd);
  MEMORY[0x28223BE20](v8);
  v10 = &v14 - v9;
  _s7SwiftUI11EnvironmentV7ContentOyAA13DismissActionV_GWOcTm_3(v2, &v14 - v9, &_s7SwiftUI11EnvironmentV7ContentOyAA13DismissActionV_GMd);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v11 = type metadata accessor for DismissAction();
    return (*(*(v11 - 8) + 32))(a1, v10, v11);
  }

  else
  {
    static os_log_type_t.fault.getter();
    v13 = static Log.runtimeIssuesLog.getter();
    os_log(_:dso:log:_:_:)();

    EnvironmentValues.init()();
    swift_getAtKeyPath();

    return (*(v5 + 8))(v7, v4);
  }
}

uint64_t implicit closure #1 in MediaConfigurationRoom.init(activityType:mediaConfiguration:shouldPresentMediaCompatibilityWarning:)(void *a1, void *a2, uint64_t a3, void *a4)
{
  type metadata accessor for MediaConfigurationRoomViewModel();
  swift_allocObject();
  v8 = a4;
  v9 = a1;

  return MediaConfigurationRoomViewModel.init(activityType:mediaConfiguration:)(v9, a2, a3, a4);
}

uint64_t MediaConfigurationRoom.body.getter@<X0>(uint64_t a1@<X8>)
{
  v73 = a1;
  v2 = type metadata accessor for ListSectionSpacing();
  v71 = *(v2 - 8);
  v72 = v2;
  MEMORY[0x28223BE20](v2);
  v70 = v55 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v67 = type metadata accessor for ContentMarginPlacement();
  v66 = *(v67 - 8);
  MEMORY[0x28223BE20](v67);
  v65 = v55 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v59 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI4ListVys5NeverOAA9TupleViewVyAA7SectionVyAA05EmptyF0VAA0F0PAAE8onChange2of7initial_Qrqd___Sbyqd___qd__tctSQRd__lFQOyAA6ToggleVyAA4TextVG_SbQo_ATSgG_AGyAIyAkA15ModifiedContentVyAmAE11pickerStyleyQrqd__AA06PickerR0Rd__lFQOyAA0S0VyAKSbAA7ForEachVySay07WorkoutB030MediaPlaybackConfigurationTypeOGSSAmAE3tag_15includeOptionalQrqd___SbtSHRd__lFQOyAZyAtA30_EnvironmentKeyWritingModifierVySiSgGG_SbQo_GG_AA06InlinesR0VQo_A12_yAA5ColorVSgGGAWG_AIyAtGyA5_0wP3RowVSg_AZyAZyAmAE06buttonR0yQrqd__AA015PrimitiveButtonR0Rd__lFQOyAA14NavigationLinkVyAZyAA6HStackVyAGyAA6SpacerV_ATA38_tGGAA14_PaddingLayoutVGAmAE15navigationTitleyQrqd__SyRd__lFQOyA5_0wS0V_SSQo_G_AA014BorderedButtonR0VQo_AA011_ForegroundR8ModifierVyAA017HierarchicalShapeR0VGGA12_yAA10VisibilityOGGtGATGSgtGSgtGGMd);
  v5 = *(v59 - 8);
  MEMORY[0x28223BE20](v59);
  v7 = v55 - v6;
  v61 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI4ViewPAAE5alert11isPresented7contentQrAA7BindingVySbG_AA5AlertVyXEtFQOyAA4ListVys5NeverOAA05TupleC0VyAA7SectionVyAA05EmptyC0VAcAE8onChange2of7initial_Qrqd___Sbyqd___qd__tctSQRd__lFQOyAA6ToggleVyAA4TextVG_SbQo_A0_SgG_AQyASyAuA15ModifiedContentVyAcAE11pickerStyleyQrqd__AA06PickerX0Rd__lFQOyAA0Y0VyAUSbAA7ForEachVySay07WorkoutB030MediaPlaybackConfigurationTypeOGSSAcAE3tag_15includeOptionalQrqd___SbtSHRd__lFQOyA6_yA0_AA30_EnvironmentKeyWritingModifierVySiSgGG_SbQo_GG_AA06InlineyX0VQo_A20_yAA5ColorVSgGGA3_G_ASyA0_AQyA13_05MediaV3RowVSg_A6_yA6_yAcAE06buttonX0yQrqd__AA015PrimitiveButtonX0Rd__lFQOyAA14NavigationLinkVyA6_yAA6HStackVyAQyAA6SpacerV_A0_A46_tGGAA14_PaddingLayoutVGAcAE15navigationTitleyQrqd__SyRd__lFQOyA13_05MediaY0V_SSQo_G_AA014BorderedButtonX0VQo_AA011_ForegroundX8ModifierVyAA017HierarchicalShapeX0VGGA20_yAA10VisibilityOGGtGA0_GSgtGSgtGG_Qo_Md);
  v63 = *(v61 - 8);
  MEMORY[0x28223BE20](v61);
  v58 = v55 - v8;
  v64 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyAA4ViewPAAE5alert_11isPresented7actions7messageQrAA18LocalizedStringKeyV_AA7BindingVySbGqd__yXEqd_0_yXEtAaDRd__AaDRd_0_r0_lFQOyAeAEAfG7contentQrAN_AA5AlertVyXEtFQOyAA4ListVys5NeverOAA05TupleE0VyAA7SectionVyAA05EmptyE0VAeAE8onChange2of7initial_Qrqd___Sbyqd___qd__tctSQRd__lFQOyAA6ToggleVyAA4TextVG_SbQo_A6_SgG_AWyAYyA_ACyAeAE11pickerStyleyQrqd__AA11PickerStyleRd__lFQOyAA6PickerVyA_SbAA7ForEachVySay07WorkoutB030MediaPlaybackConfigurationTypeOGSSAeAE3tag_15includeOptionalQrqd___SbtSHRd__lFQOyACyA6_AA012_EnvironmentM15WritingModifierVySiSgGG_SbQo_GG_AA17InlinePickerStyleVQo_A24_yAA5ColorVSgGGA9_G_AYyA6_AWyA17_05MediaD3RowVSg_ACyACyAeAE11buttonStyleyQrqd__AA20PrimitiveButtonStyleRd__lFQOyAA14NavigationLinkVyACyAA6HStackVyAWyAA6SpacerV_A6_A50_tGGAA14_PaddingLayoutVGAeAE15navigationTitleyQrqd__SyRd__lFQOyA17_11MediaPickerV_SSQo_G_AA19BorderedButtonStyleVQo_AA24_ForegroundStyleModifierVyAA22HierarchicalShapeStyleVGGA24_yAA10VisibilityOGGtGA6_GSgtGSgtGG_Qo__AA6ButtonVyA6_GAA012_ConditionalD0VyA6_A6_GQo_A17_24InlineNavigationBarTitle33_B86241820663BC1B3220D14BE7395977LLVGMd);
  MEMORY[0x28223BE20](v64);
  v60 = v55 - v9;
  v69 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyACyACyAA4ViewPAAE14contentMargins__3forQrAA4EdgeO3SetV_12CoreGraphics7CGFloatVSgAA0D15MarginPlacementVtFQOyACyAeAE5alert_11isPresented7actions7messageQrAA18LocalizedStringKeyV_AA7BindingVySbGqd__yXEqd_0_yXEtAaDRd__AaDRd_0_r0_lFQOyAeAEArS0F0QrAZ_AA5AlertVyXEtFQOyAA4ListVys5NeverOAA05TupleE0VyAA7SectionVyAA05EmptyE0VAeAE8onChange2of7initial_Qrqd___Sbyqd___qd__tctSQRd__lFQOyAA6ToggleVyAA4TextVG_SbQo_A18_SgG_A7_yA9_yA11_ACyAeAE11pickerStyleyQrqd__AA11PickerStyleRd__lFQOyAA6PickerVyA11_SbAA7ForEachVySay07WorkoutB030MediaPlaybackConfigurationTypeOGSSAeAE3tag_15includeOptionalQrqd___SbtSHRd__lFQOyACyA18_AA012_EnvironmentW15WritingModifierVySiSgGG_SbQo_GG_AA17InlinePickerStyleVQo_A36_yAA5ColorVSgGGA21_G_A9_yA18_A7_yA29_05MediaD3RowVSg_ACyACyAeAE11buttonStyleyQrqd__AA20PrimitiveButtonStyleRd__lFQOyAA14NavigationLinkVyACyAA6HStackVyA7_yAA6SpacerV_A18_A62_tGGAA14_PaddingLayoutVGAeAE15navigationTitleyQrqd__SyRd__lFQOyA29_11MediaPickerV_SSQo_G_AA19BorderedButtonStyleVQo_AA24_ForegroundStyleModifierVyAA22HierarchicalShapeStyleVGGA36_yAA10VisibilityOGGtGA18_GSgtGSgtGG_Qo__AA6ButtonVyA18_GAA012_ConditionalD0VyA18_A18_GQo_A29_24InlineNavigationBarTitle33_B86241820663BC1B3220D14BE7395977LLVG_Qo_A36_yAOGGAA21_TraitWritingModifierVyAA0z19SectionSpacingTraitW0VGGA36_yAA0Z14SectionSpacingVSgGGMd);
  MEMORY[0x28223BE20](v69);
  v68 = v55 - v10;
  v77 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI9TupleViewVyAA7SectionVyAA05EmptyD0VAA0D0PAAE8onChange2of7initial_Qrqd___Sbyqd___qd__tctSQRd__lFQOyAA6ToggleVyAA4TextVG_SbQo_APSgG_ACyAEyAgA15ModifiedContentVyAiAE11pickerStyleyQrqd__AA06PickerP0Rd__lFQOyAA0Q0VyAGSbAA7ForEachVySay07WorkoutB030MediaPlaybackConfigurationTypeOGSSAiAE3tag_15includeOptionalQrqd___SbtSHRd__lFQOyAVyApA30_EnvironmentKeyWritingModifierVySiSgGG_SbQo_GG_AA06InlineqP0VQo_A8_yAA5ColorVSgGGASG_AEyApCyA1_0uN3RowVSg_AVyAVyAiAE06buttonP0yQrqd__AA015PrimitiveButtonP0Rd__lFQOyAA14NavigationLinkVyAVyAA6HStackVyACyAA6SpacerV_APA34_tGGAA14_PaddingLayoutVGAiAE15navigationTitleyQrqd__SyRd__lFQOyA1_0uQ0V_SSQo_G_AA014BorderedButtonP0VQo_AA011_ForegroundP8ModifierVyAA017HierarchicalShapeP0VGGA8_yAA10VisibilityOGGtGAPGSgtGSgtGMd);
  lazy protocol witness table accessor for type [MediaPlaybackConfigurationType] and conformance [A](&lazy protocol witness table cache variable for type TupleView<(Section<EmptyView, <<opaque return type of View.onChange<A>(of:initial:_:)>>.0, Text?>, TupleView<(Section<EmptyView, ModifiedContent<<<opaque return type of View.pickerStyle<A>(_:)>>.0, _EnvironmentKeyWritingModifier<Color?>>, Text?>, Section<Text, TupleView<(MediaContentRow?, ModifiedContent<ModifiedContent<<<opaque return type of View.buttonStyle<A>(_:)>>.0, _ForegroundStyleModifier<HierarchicalShapeStyle>>, _EnvironmentKeyWritingModifier<Visibility>>)>, Text>?)>?)> and conformance TupleView<A>, &_s7SwiftUI9TupleViewVyAA7SectionVyAA05EmptyD0VAA0D0PAAE8onChange2of7initial_Qrqd___Sbyqd___qd__tctSQRd__lFQOyAA6ToggleVyAA4TextVG_SbQo_APSgG_ACyAEyAgA15ModifiedContentVyAiAE11pickerStyleyQrqd__AA06PickerP0Rd__lFQOyAA0Q0VyAGSbAA7ForEachVySay07WorkoutB030MediaPlaybackConfigurationTypeOGSSAiAE3tag_15includeOptionalQrqd___SbtSHRd__lFQOyAVyApA30_EnvironmentKeyWritingModifierVySiSgGG_SbQo_GG_AA06InlineqP0VQo_A8_yAA5ColorVSgGGASG_AEyApCyA1_0uN3RowVSg_AVyAVyAiAE06buttonP0yQrqd__AA015PrimitiveButtonP0Rd__lFQOyAA14NavigationLinkVyAVyAA6HStackVyACyAA6SpacerV_APA34_tGGAA14_PaddingLayoutVGAiAE15navigationTitleyQrqd__SyRd__lFQOyA1_0uQ0V_SSQo_G_AA014BorderedButtonP0VQo_AA011_ForegroundP8ModifierVyAA017HierarchicalShapeP0VGGA8_yAA10VisibilityOGGtGAPGSgtGSgtGMd);
  List<>.init(content:)();
  v11 = type metadata accessor for MediaConfigurationRoom();
  v12 = (v1 + *(v11 + 44));
  v13 = *v12;
  v14 = *(v12 + 1);
  v80 = v13;
  v81 = v14;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI5StateVySbGMd);
  State.projectedValue.getter();
  v76 = v1;
  v15 = lazy protocol witness table accessor for type [MediaPlaybackConfigurationType] and conformance [A](&lazy protocol witness table cache variable for type List<Never, TupleView<(Section<EmptyView, <<opaque return type of View.onChange<A>(of:initial:_:)>>.0, Text?>, TupleView<(Section<EmptyView, ModifiedContent<<<opaque return type of View.pickerStyle<A>(_:)>>.0, _EnvironmentKeyWritingModifier<Color?>>, Text?>, Section<Text, TupleView<(MediaContentRow?, ModifiedContent<ModifiedContent<<<opaque return type of View.buttonStyle<A>(_:)>>.0, _ForegroundStyleModifier<HierarchicalShapeStyle>>, _EnvironmentKeyWritingModifier<Visibility>>)>, Text>?)>?)>> and conformance List<A, B>, &_s7SwiftUI4ListVys5NeverOAA9TupleViewVyAA7SectionVyAA05EmptyF0VAA0F0PAAE8onChange2of7initial_Qrqd___Sbyqd___qd__tctSQRd__lFQOyAA6ToggleVyAA4TextVG_SbQo_ATSgG_AGyAIyAkA15ModifiedContentVyAmAE11pickerStyleyQrqd__AA06PickerR0Rd__lFQOyAA0S0VyAKSbAA7ForEachVySay07WorkoutB030MediaPlaybackConfigurationTypeOGSSAmAE3tag_15includeOptionalQrqd___SbtSHRd__lFQOyAZyAtA30_EnvironmentKeyWritingModifierVySiSgGG_SbQo_GG_AA06InlinesR0VQo_A12_yAA5ColorVSgGGAWG_AIyAtGyA5_0wP3RowVSg_AZyAZyAmAE06buttonR0yQrqd__AA015PrimitiveButtonR0Rd__lFQOyAA14NavigationLinkVyAZyAA6HStackVyAGyAA6SpacerV_ATA38_tGGAA14_PaddingLayoutVGAmAE15navigationTitleyQrqd__SyRd__lFQOyA5_0wS0V_SSQo_G_AA014BorderedButtonR0VQo_AA011_ForegroundR8ModifierVyAA017HierarchicalShapeR0VGGA12_yAA10VisibilityOGGtGATGSgtGSgtGGMd);
  v16 = v59;
  View.alert(isPresented:content:)();

  (*(v5 + 8))(v7, v16);
  v57 = LocalizedStringKey.init(stringLiteral:)();
  v56 = v17;
  v55[1] = v18;
  v62 = v11;
  v19 = (v1 + *(v11 + 48));
  v20 = *v19;
  v21 = *(v19 + 1);
  v80 = v20;
  v81 = v21;
  State.projectedValue.getter();
  v74 = v1;
  v75 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI6ButtonVyAA4TextVGMd);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI19_ConditionalContentVyAA4TextVAEGMd);
  v78 = v16;
  v79 = v15;
  swift_getOpaqueTypeConformance2();
  v22 = v60;
  lazy protocol witness table accessor for type [MediaPlaybackConfigurationType] and conformance [A](&lazy protocol witness table cache variable for type Button<Text> and conformance Button<A>, &_s7SwiftUI6ButtonVyAA4TextVGMd);
  lazy protocol witness table accessor for type _ConditionalContent<Text, Text> and conformance <> _ConditionalContent<A, B>();
  v23 = v61;
  v24 = v58;
  View.alert<A, B>(_:isPresented:actions:message:)();

  (*(v63 + 8))(v24, v23);
  if (one-time initialization token for WorkoutUIBundle != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v25 = WorkoutUIBundle.super.isa;
  v82._object = 0xE000000000000000;
  v26.value._countAndFlagsBits = 0x617A696C61636F4CLL;
  v26.value._object = 0xEB00000000656C62;
  v27._object = 0x800000020CBA2FF0;
  v27._countAndFlagsBits = 0xD000000000000012;
  v28._countAndFlagsBits = 0;
  v28._object = 0xE000000000000000;
  v82._countAndFlagsBits = 0;
  NSLocalizedString(_:tableName:bundle:value:comment:)(v27, v26, v25, v28, v82);

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys7CVarArg_pGMd);
  v29 = swift_allocObject();
  *(v29 + 16) = xmmword_20CB5DA70;
  v30 = [*(v74 + *(v62 + 24)) localizedName];
  v31 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v33 = v32;

  *(v29 + 56) = MEMORY[0x277D837D0];
  *(v29 + 64) = lazy protocol witness table accessor for type String and conformance String();
  *(v29 + 32) = v31;
  *(v29 + 40) = v33;
  v34 = String.init(format:_:)();
  v36 = v35;

  v37 = v64;
  v38 = (v22 + *(v64 + 36));
  *v38 = v34;
  v38[1] = v36;
  v39 = static Edge.Set.top.getter();
  v40 = v65;
  static ContentMarginPlacement.automatic.getter();
  v41 = lazy protocol witness table accessor for type ModifiedContent<<<opaque return type of View.alert<A, B>(_:isPresented:actions:message:)>>.0, InlineNavigationBarTitle> and conformance <> ModifiedContent<A, B>();
  v42 = v68;
  MEMORY[0x20F30A640](v39, 0x4034000000000000, 0, v40, v37, v41);
  (*(v66 + 8))(v40, v67);
  outlined destroy of ModifiedContent<<<opaque return type of View.alert<A, B>(_:isPresented:actions:message:)>>.0, InlineNavigationBarTitle>(v22, &_s7SwiftUI15ModifiedContentVyAA4ViewPAAE5alert_11isPresented7actions7messageQrAA18LocalizedStringKeyV_AA7BindingVySbGqd__yXEqd_0_yXEtAaDRd__AaDRd_0_r0_lFQOyAeAEAfG7contentQrAN_AA5AlertVyXEtFQOyAA4ListVys5NeverOAA05TupleE0VyAA7SectionVyAA05EmptyE0VAeAE8onChange2of7initial_Qrqd___Sbyqd___qd__tctSQRd__lFQOyAA6ToggleVyAA4TextVG_SbQo_A6_SgG_AWyAYyA_ACyAeAE11pickerStyleyQrqd__AA11PickerStyleRd__lFQOyAA6PickerVyA_SbAA7ForEachVySay07WorkoutB030MediaPlaybackConfigurationTypeOGSSAeAE3tag_15includeOptionalQrqd___SbtSHRd__lFQOyACyA6_AA012_EnvironmentM15WritingModifierVySiSgGG_SbQo_GG_AA17InlinePickerStyleVQo_A24_yAA5ColorVSgGGA9_G_AYyA6_AWyA17_05MediaD3RowVSg_ACyACyAeAE11buttonStyleyQrqd__AA20PrimitiveButtonStyleRd__lFQOyAA14NavigationLinkVyACyAA6HStackVyAWyAA6SpacerV_A6_A50_tGGAA14_PaddingLayoutVGAeAE15navigationTitleyQrqd__SyRd__lFQOyA17_11MediaPickerV_SSQo_G_AA19BorderedButtonStyleVQo_AA24_ForegroundStyleModifierVyAA22HierarchicalShapeStyleVGGA24_yAA10VisibilityOGGtGA6_GSgtGSgtGG_Qo__AA6ButtonVyA6_GAA012_ConditionalD0VyA6_A6_GQo_A17_24InlineNavigationBarTitle33_B86241820663BC1B3220D14BE7395977LLVGMd);
  KeyPath = swift_getKeyPath();
  v44 = v42 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyAA4ViewPAAE14contentMargins__3forQrAA4EdgeO3SetV_12CoreGraphics7CGFloatVSgAA0D15MarginPlacementVtFQOyACyAeAE5alert_11isPresented7actions7messageQrAA18LocalizedStringKeyV_AA7BindingVySbGqd__yXEqd_0_yXEtAaDRd__AaDRd_0_r0_lFQOyAeAEArS0F0QrAZ_AA5AlertVyXEtFQOyAA4ListVys5NeverOAA05TupleE0VyAA7SectionVyAA05EmptyE0VAeAE8onChange2of7initial_Qrqd___Sbyqd___qd__tctSQRd__lFQOyAA6ToggleVyAA4TextVG_SbQo_A18_SgG_A7_yA9_yA11_ACyAeAE11pickerStyleyQrqd__AA11PickerStyleRd__lFQOyAA6PickerVyA11_SbAA7ForEachVySay07WorkoutB030MediaPlaybackConfigurationTypeOGSSAeAE3tag_15includeOptionalQrqd___SbtSHRd__lFQOyACyA18_AA012_EnvironmentW15WritingModifierVySiSgGG_SbQo_GG_AA17InlinePickerStyleVQo_A36_yAA5ColorVSgGGA21_G_A9_yA18_A7_yA29_05MediaD3RowVSg_ACyACyAeAE11buttonStyleyQrqd__AA20PrimitiveButtonStyleRd__lFQOyAA14NavigationLinkVyACyAA6HStackVyA7_yAA6SpacerV_A18_A62_tGGAA14_PaddingLayoutVGAeAE15navigationTitleyQrqd__SyRd__lFQOyA29_11MediaPickerV_SSQo_G_AA19BorderedButtonStyleVQo_AA24_ForegroundStyleModifierVyAA22HierarchicalShapeStyleVGGA36_yAA10VisibilityOGGtGA18_GSgtGSgtGG_Qo__AA6ButtonVyA18_GAA012_ConditionalD0VyA18_A18_GQo_A29_24InlineNavigationBarTitle33_B86241820663BC1B3220D14BE7395977LLVG_Qo_A36_yAOGGMd) + 36);
  *v44 = KeyPath;
  *(v44 + 8) = 0;
  *(v44 + 16) = 0;
  v45 = v70;
  static ListSectionSpacing.custom(_:)();
  v46 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyACyAA4ViewPAAE14contentMargins__3forQrAA4EdgeO3SetV_12CoreGraphics7CGFloatVSgAA0D15MarginPlacementVtFQOyACyAeAE5alert_11isPresented7actions7messageQrAA18LocalizedStringKeyV_AA7BindingVySbGqd__yXEqd_0_yXEtAaDRd__AaDRd_0_r0_lFQOyAeAEArS0F0QrAZ_AA5AlertVyXEtFQOyAA4ListVys5NeverOAA05TupleE0VyAA7SectionVyAA05EmptyE0VAeAE8onChange2of7initial_Qrqd___Sbyqd___qd__tctSQRd__lFQOyAA6ToggleVyAA4TextVG_SbQo_A18_SgG_A7_yA9_yA11_ACyAeAE11pickerStyleyQrqd__AA11PickerStyleRd__lFQOyAA6PickerVyA11_SbAA7ForEachVySay07WorkoutB030MediaPlaybackConfigurationTypeOGSSAeAE3tag_15includeOptionalQrqd___SbtSHRd__lFQOyACyA18_AA012_EnvironmentW15WritingModifierVySiSgGG_SbQo_GG_AA17InlinePickerStyleVQo_A36_yAA5ColorVSgGGA21_G_A9_yA18_A7_yA29_05MediaD3RowVSg_ACyACyAeAE11buttonStyleyQrqd__AA20PrimitiveButtonStyleRd__lFQOyAA14NavigationLinkVyACyAA6HStackVyA7_yAA6SpacerV_A18_A62_tGGAA14_PaddingLayoutVGAeAE15navigationTitleyQrqd__SyRd__lFQOyA29_11MediaPickerV_SSQo_G_AA19BorderedButtonStyleVQo_AA24_ForegroundStyleModifierVyAA22HierarchicalShapeStyleVGGA36_yAA10VisibilityOGGtGA18_GSgtGSgtGG_Qo__AA6ButtonVyA18_GAA012_ConditionalD0VyA18_A18_GQo_A29_24InlineNavigationBarTitle33_B86241820663BC1B3220D14BE7395977LLVG_Qo_A36_yAOGGAA21_TraitWritingModifierVyAA0z19SectionSpacingTraitW0VGGMd) + 36);
  v48 = v71;
  v47 = v72;
  (*(v71 + 16))(v42 + v46, v45, v72);
  v49 = *(v48 + 56);
  v49((v42 + v46), 0, 1, v47);
  v50 = swift_getKeyPath();
  v51 = (v42 + *(v69 + 36));
  v52 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI30_EnvironmentKeyWritingModifierVyAA18ListSectionSpacingVSgGMd) + 28);
  (*(v48 + 32))(v51 + v52, v45, v47);
  v53 = v49(v51 + v52, 0, 1, v47);
  *v51 = v50;
  MEMORY[0x28223BE20](v53);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI19TupleToolbarContentVyAA0D4ItemVyytAA6ButtonVyAA07DefaultG5LabelVGG_AKtGMd);
  lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<ModifiedContent<<<opaque return type of View.contentMargins(_:_:for:)>>.0, _EnvironmentKeyWritingModifier<CGFloat?>>, _TraitWritingModifier<ListSectionSpacingTraitKey>>, _EnvironmentKeyWritingModifier<ListSectionSpacing?>> and conformance <> ModifiedContent<A, B>();
  lazy protocol witness table accessor for type [MediaPlaybackConfigurationType] and conformance [A](&lazy protocol witness table cache variable for type TupleToolbarContent<(ToolbarItem<(), Button<DefaultButtonLabel>>, ToolbarItem<(), Button<DefaultButtonLabel>>)> and conformance TupleToolbarContent<A>, &_s7SwiftUI19TupleToolbarContentVyAA0D4ItemVyytAA6ButtonVyAA07DefaultG5LabelVGG_AKtGMd);
  View.toolbar<A>(content:)();
  return outlined destroy of ModifiedContent<<<opaque return type of View.alert<A, B>(_:isPresented:actions:message:)>>.0, InlineNavigationBarTitle>(v42, &_s7SwiftUI15ModifiedContentVyACyACyAA4ViewPAAE14contentMargins__3forQrAA4EdgeO3SetV_12CoreGraphics7CGFloatVSgAA0D15MarginPlacementVtFQOyACyAeAE5alert_11isPresented7actions7messageQrAA18LocalizedStringKeyV_AA7BindingVySbGqd__yXEqd_0_yXEtAaDRd__AaDRd_0_r0_lFQOyAeAEArS0F0QrAZ_AA5AlertVyXEtFQOyAA4ListVys5NeverOAA05TupleE0VyAA7SectionVyAA05EmptyE0VAeAE8onChange2of7initial_Qrqd___Sbyqd___qd__tctSQRd__lFQOyAA6ToggleVyAA4TextVG_SbQo_A18_SgG_A7_yA9_yA11_ACyAeAE11pickerStyleyQrqd__AA11PickerStyleRd__lFQOyAA6PickerVyA11_SbAA7ForEachVySay07WorkoutB030MediaPlaybackConfigurationTypeOGSSAeAE3tag_15includeOptionalQrqd___SbtSHRd__lFQOyACyA18_AA012_EnvironmentW15WritingModifierVySiSgGG_SbQo_GG_AA17InlinePickerStyleVQo_A36_yAA5ColorVSgGGA21_G_A9_yA18_A7_yA29_05MediaD3RowVSg_ACyACyAeAE11buttonStyleyQrqd__AA20PrimitiveButtonStyleRd__lFQOyAA14NavigationLinkVyACyAA6HStackVyA7_yAA6SpacerV_A18_A62_tGGAA14_PaddingLayoutVGAeAE15navigationTitleyQrqd__SyRd__lFQOyA29_11MediaPickerV_SSQo_G_AA19BorderedButtonStyleVQo_AA24_ForegroundStyleModifierVyAA22HierarchicalShapeStyleVGGA36_yAA10VisibilityOGGtGA18_GSgtGSgtGG_Qo__AA6ButtonVyA18_GAA012_ConditionalD0VyA18_A18_GQo_A29_24InlineNavigationBarTitle33_B86241820663BC1B3220D14BE7395977LLVG_Qo_A36_yAOGGAA21_TraitWritingModifierVyAA0z19SectionSpacingTraitW0VGGA36_yAA0Z14SectionSpacingVSgGGMd);
}

uint64_t closure #1 in MediaConfigurationRoom.body.getter@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v83 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI9TupleViewVyAA7SectionVyAA05EmptyD0VAA15ModifiedContentVyAA0D0PAAE11pickerStyleyQrqd__AA06PickerJ0Rd__lFQOyAA0K0VyAGSbAA7ForEachVySay07WorkoutB030MediaPlaybackConfigurationTypeOGSSAkAE3tag_15includeOptionalQrqd___SbtSHRd__lFQOyAIyAA4TextVAA30_EnvironmentKeyWritingModifierVySiSgGG_SbQo_GG_AA06InlinekJ0VQo_A_yAA5ColorVSgGGAYSgG_AEyAyCyAR0oH3RowVSg_AIyAIyAkAE06buttonJ0yQrqd__AA015PrimitiveButtonJ0Rd__lFQOyAA14NavigationLinkVyAIyAA6HStackVyACyAA6SpacerV_AYA26_tGGAA14_PaddingLayoutVGAkAE15navigationTitleyQrqd__SyRd__lFQOyAR0oK0V_SSQo_G_AA014BorderedButtonJ0VQo_AA011_ForegroundjZ0VyAA017HierarchicalShapeJ0VGGA_yAA10VisibilityOGGtGAYGSgtGMd);
  v81 = *(v3 - 8);
  v82 = v3;
  MEMORY[0x28223BE20](v3);
  v75 = &v63 - v4;
  v71 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI7SectionVyAA4TextVAA9TupleViewVy07WorkoutB015MediaContentRowVSg_AA08ModifiedI0VyAMyAA0F0PAAE11buttonStyleyQrqd__AA015PrimitiveButtonM0Rd__lFQOyAA14NavigationLinkVyAMyAA6HStackVyAGyAA6SpacerV_AeWtGGAA14_PaddingLayoutVGAoAE15navigationTitleyQrqd__SyRd__lFQOyAH0H6PickerV_SSQo_G_AA08BorderedoM0VQo_AA011_ForegroundM8ModifierVyAA017HierarchicalShapeM0VGGAA30_EnvironmentKeyWritingModifierVyAA10VisibilityOGGtGAEGMd);
  v69 = *(v71 - 8);
  MEMORY[0x28223BE20](v71);
  v64 = &v63 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI7SectionVyAA4TextVAA9TupleViewVy07WorkoutB015MediaContentRowVSg_AA08ModifiedI0VyAMyAA0F0PAAE11buttonStyleyQrqd__AA015PrimitiveButtonM0Rd__lFQOyAA14NavigationLinkVyAMyAA6HStackVyAGyAA6SpacerV_AeWtGGAA14_PaddingLayoutVGAoAE15navigationTitleyQrqd__SyRd__lFQOyAH0H6PickerV_SSQo_G_AA08BorderedoM0VQo_AA011_ForegroundM8ModifierVyAA017HierarchicalShapeM0VGGAA30_EnvironmentKeyWritingModifierVyAA10VisibilityOGGtGAEGSgMd);
  MEMORY[0x28223BE20](v6 - 8);
  v74 = &v63 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v70 = &v63 - v9;
  v73 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI7SectionVyAA9EmptyViewVAA15ModifiedContentVyAA0E0PAAE11pickerStyleyQrqd__AA06PickerI0Rd__lFQOyAA0J0VyAESbAA7ForEachVySay07WorkoutB030MediaPlaybackConfigurationTypeOGSSAiAE3tag_15includeOptionalQrqd___SbtSHRd__lFQOyAGyAA4TextVAA30_EnvironmentKeyWritingModifierVySiSgGG_SbQo_GG_AA06InlinejI0VQo_AYyAA5ColorVSgGGAWSgGMd);
  v72 = *(v73 - 8);
  MEMORY[0x28223BE20](v73);
  v68 = &v63 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v13 = &v63 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI9TupleViewVyAA7SectionVyAA05EmptyD0VAA15ModifiedContentVyAA0D0PAAE11pickerStyleyQrqd__AA06PickerJ0Rd__lFQOyAA0K0VyAGSbAA7ForEachVySay07WorkoutB030MediaPlaybackConfigurationTypeOGSSAkAE3tag_15includeOptionalQrqd___SbtSHRd__lFQOyAIyAA4TextVAA30_EnvironmentKeyWritingModifierVySiSgGG_SbQo_GG_AA06InlinekJ0VQo_A_yAA5ColorVSgGGAYSgG_AEyAyCyAR0oH3RowVSg_AIyAIyAkAE06buttonJ0yQrqd__AA015PrimitiveButtonJ0Rd__lFQOyAA14NavigationLinkVyAIyAA6HStackVyACyAA6SpacerV_AYA26_tGGAA14_PaddingLayoutVGAkAE15navigationTitleyQrqd__SyRd__lFQOyAR0oK0V_SSQo_G_AA014BorderedButtonJ0VQo_AA011_ForegroundjZ0VyAA017HierarchicalShapeJ0VGGA_yAA10VisibilityOGGtGAYGSgtGSgMd);
  MEMORY[0x28223BE20](v14 - 8);
  v80 = &v63 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v84 = &v63 - v17;
  v79 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI7SectionVyAA9EmptyViewVAA0E0PAAE8onChange2of7initial_Qrqd___Sbyqd___qd__tctSQRd__lFQOyAA6ToggleVyAA4TextVG_SbQo_ANSgGMd);
  v78 = *(v79 - 8);
  MEMORY[0x28223BE20](v79);
  v77 = &v63 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v19);
  v21 = &v63 - v20;
  v85 = a1;
  closure #2 in closure #1 in MediaConfigurationRoom.body.getter(a1, v87);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI4ViewPAAE8onChange2of7initial_Qrqd___Sbyqd___qd__tctSQRd__lFQOyAA6ToggleVyAA4TextVG_SbQo_Md);
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI4TextVSgMd);
  v23 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI6ToggleVyAA4TextVGMd);
  v24 = lazy protocol witness table accessor for type [MediaPlaybackConfigurationType] and conformance [A](&lazy protocol witness table cache variable for type Toggle<Text> and conformance Toggle<A>, &_s7SwiftUI6ToggleVyAA4TextVGMd);
  v86[0] = v23;
  v86[1] = MEMORY[0x277D839B0];
  v86[2] = v24;
  v86[3] = MEMORY[0x277D839C8];
  v25 = 1;
  swift_getOpaqueTypeConformance2();
  v26 = lazy protocol witness table accessor for type Text? and conformance <A> A?();
  v76 = v21;
  v66 = v22;
  v65 = v26;
  Section<>.init(footer:content:)();
  type metadata accessor for MediaConfigurationRoom();
  v67 = a1;
  type metadata accessor for MediaConfigurationRoomViewModel();
  lazy protocol witness table accessor for type MediaConfigurationRoomViewModel and conformance MediaConfigurationRoomViewModel(&lazy protocol witness table cache variable for type MediaConfigurationRoomViewModel and conformance MediaConfigurationRoomViewModel, type metadata accessor for MediaConfigurationRoomViewModel);
  StateObject.wrappedValue.getter();
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  v27 = v87[0];
  LOBYTE(v21) = dispatch thunk of MediaPlaybackConfigurationItem.autoPlayEnabled.getter();

  if (v21)
  {
    MEMORY[0x28223BE20](v28);
    v29 = v67;
    closure #4 in closure #1 in MediaConfigurationRoom.body.getter(v87);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyAA4ViewPAAE11pickerStyleyQrqd__AA06PickerG0Rd__lFQOyAA0H0VyAA05EmptyE0VSbAA7ForEachVySay07WorkoutB030MediaPlaybackConfigurationTypeOGSSAeAE3tag_15includeOptionalQrqd___SbtSHRd__lFQOyACyAA4TextVAA30_EnvironmentKeyWritingModifierVySiSgGG_SbQo_GG_AA06InlinehG0VQo_AWyAA5ColorVSgGGMd);
    lazy protocol witness table accessor for type ModifiedContent<<<opaque return type of View.pickerStyle<A>(_:)>>.0, _EnvironmentKeyWritingModifier<Color?>> and conformance <> ModifiedContent<A, B>();
    Section<>.init(footer:content:)();
    StateObject.wrappedValue.getter();
    swift_getKeyPath();
    swift_getKeyPath();
    static Published.subscript.getter();

    v30 = v87[0];
    v31 = dispatch thunk of MediaPlaybackConfigurationItem.smartStationEnabled.getter();

    if (v31)
    {
      v33 = 1;
      v34 = v71;
      v35 = v70;
      v36 = v69;
    }

    else
    {
      MEMORY[0x28223BE20](v32);
      LocalizedStringKey.init(stringLiteral:)();
      v35 = v70;
      if (one-time initialization token for WorkoutUIBundle != -1)
      {
        swift_once();
      }

      swift_beginAccess();
      v37 = WorkoutUIBundle.super.isa;
      v87[0] = Text.init(_:tableName:bundle:comment:)();
      v87[1] = v38;
      v88 = v39 & 1;
      v89 = v40;
      closure #7 in closure #1 in MediaConfigurationRoom.body.getter(v29, v86);
      __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI9TupleViewVy07WorkoutB015MediaContentRowVSg_AA08ModifiedG0VyAIyAA0D0PAAE11buttonStyleyQrqd__AA015PrimitiveButtonK0Rd__lFQOyAA14NavigationLinkVyAIyAA6HStackVyACyAA6SpacerV_AA4TextVAStGGAA14_PaddingLayoutVGAkAE15navigationTitleyQrqd__SyRd__lFQOyAD0F6PickerV_SSQo_G_AA08BorderedmK0VQo_AA011_ForegroundK8ModifierVyAA017HierarchicalShapeK0VGGAA022_EnvironmentKeyWritingZ0VyAA10VisibilityOGGtGMd);
      lazy protocol witness table accessor for type [MediaPlaybackConfigurationType] and conformance [A](&lazy protocol witness table cache variable for type TupleView<(MediaContentRow?, ModifiedContent<ModifiedContent<<<opaque return type of View.buttonStyle<A>(_:)>>.0, _ForegroundStyleModifier<HierarchicalShapeStyle>>, _EnvironmentKeyWritingModifier<Visibility>>)> and conformance TupleView<A>, &_s7SwiftUI9TupleViewVy07WorkoutB015MediaContentRowVSg_AA08ModifiedG0VyAIyAA0D0PAAE11buttonStyleyQrqd__AA015PrimitiveButtonK0Rd__lFQOyAA14NavigationLinkVyAIyAA6HStackVyACyAA6SpacerV_AA4TextVAStGGAA14_PaddingLayoutVGAkAE15navigationTitleyQrqd__SyRd__lFQOyAD0F6PickerV_SSQo_G_AA08BorderedmK0VQo_AA011_ForegroundK8ModifierVyAA017HierarchicalShapeK0VGGAA022_EnvironmentKeyWritingZ0VyAA10VisibilityOGGtGMd);
      v41 = v64;
      Section<>.init(header:footer:content:)();
      v36 = v69;
      v42 = v41;
      v34 = v71;
      (*(v69 + 32))(v35, v42, v71);
      v33 = 0;
    }

    (*(v36 + 56))(v35, v33, 1, v34);
    v43 = v35;
    v44 = v72;
    v45 = *(v72 + 16);
    v46 = v68;
    v47 = v73;
    v45(v68, v13, v73);
    v48 = v74;
    outlined init with copy of TupleView<(Section<EmptyView, ModifiedContent<<<opaque return type of View.pickerStyle<A>(_:)>>.0, _EnvironmentKeyWritingModifier<Color?>>, Text?>, Section<Text, TupleView<(MediaContentRow?, ModifiedContent<ModifiedContent<<<opaque return type of View.buttonStyle<A>(_:)>>.0, _ForegroundStyleModifier<HierarchicalShapeStyle>>, _EnvironmentKeyWritingModifier<Visibility>>)>, Text>?)>?(v43, v74, &_s7SwiftUI7SectionVyAA4TextVAA9TupleViewVy07WorkoutB015MediaContentRowVSg_AA08ModifiedI0VyAMyAA0F0PAAE11buttonStyleyQrqd__AA015PrimitiveButtonM0Rd__lFQOyAA14NavigationLinkVyAMyAA6HStackVyAGyAA6SpacerV_AeWtGGAA14_PaddingLayoutVGAoAE15navigationTitleyQrqd__SyRd__lFQOyAH0H6PickerV_SSQo_G_AA08BorderedoM0VQo_AA011_ForegroundM8ModifierVyAA017HierarchicalShapeM0VGGAA30_EnvironmentKeyWritingModifierVyAA10VisibilityOGGtGAEGSgMd);
    v49 = v75;
    v45(v75, v46, v47);
    v50 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI7SectionVyAA9EmptyViewVAA15ModifiedContentVyAA0E0PAAE11pickerStyleyQrqd__AA06PickerI0Rd__lFQOyAA0J0VyAESbAA7ForEachVySay07WorkoutB030MediaPlaybackConfigurationTypeOGSSAiAE3tag_15includeOptionalQrqd___SbtSHRd__lFQOyAGyAA4TextVAA30_EnvironmentKeyWritingModifierVySiSgGG_SbQo_GG_AA06InlinejI0VQo_AYyAA5ColorVSgGGAWSgG_ACyAwA05TupleE0VyAP0nG3RowVSg_AGyAGyAiAE06buttonI0yQrqd__AA015PrimitiveButtonI0Rd__lFQOyAA14NavigationLinkVyAGyAA6HStackVyA15_yAA6SpacerV_AWA26_tGGAA14_PaddingLayoutVGAiAE15navigationTitleyQrqd__SyRd__lFQOyAP0nJ0V_SSQo_G_AA014BorderedButtonI0VQo_AA011_ForegroundiY0VyAA017HierarchicalShapeI0VGGAYyAA10VisibilityOGGtGAWGSgtMd);
    outlined init with copy of TupleView<(Section<EmptyView, ModifiedContent<<<opaque return type of View.pickerStyle<A>(_:)>>.0, _EnvironmentKeyWritingModifier<Color?>>, Text?>, Section<Text, TupleView<(MediaContentRow?, ModifiedContent<ModifiedContent<<<opaque return type of View.buttonStyle<A>(_:)>>.0, _ForegroundStyleModifier<HierarchicalShapeStyle>>, _EnvironmentKeyWritingModifier<Visibility>>)>, Text>?)>?(v48, v49 + *(v50 + 48), &_s7SwiftUI7SectionVyAA4TextVAA9TupleViewVy07WorkoutB015MediaContentRowVSg_AA08ModifiedI0VyAMyAA0F0PAAE11buttonStyleyQrqd__AA015PrimitiveButtonM0Rd__lFQOyAA14NavigationLinkVyAMyAA6HStackVyAGyAA6SpacerV_AeWtGGAA14_PaddingLayoutVGAoAE15navigationTitleyQrqd__SyRd__lFQOyAH0H6PickerV_SSQo_G_AA08BorderedoM0VQo_AA011_ForegroundM8ModifierVyAA017HierarchicalShapeM0VGGAA30_EnvironmentKeyWritingModifierVyAA10VisibilityOGGtGAEGSgMd);
    outlined destroy of ModifiedContent<<<opaque return type of View.alert<A, B>(_:isPresented:actions:message:)>>.0, InlineNavigationBarTitle>(v43, &_s7SwiftUI7SectionVyAA4TextVAA9TupleViewVy07WorkoutB015MediaContentRowVSg_AA08ModifiedI0VyAMyAA0F0PAAE11buttonStyleyQrqd__AA015PrimitiveButtonM0Rd__lFQOyAA14NavigationLinkVyAMyAA6HStackVyAGyAA6SpacerV_AeWtGGAA14_PaddingLayoutVGAoAE15navigationTitleyQrqd__SyRd__lFQOyAH0H6PickerV_SSQo_G_AA08BorderedoM0VQo_AA011_ForegroundM8ModifierVyAA017HierarchicalShapeM0VGGAA30_EnvironmentKeyWritingModifierVyAA10VisibilityOGGtGAEGSgMd);
    v51 = *(v44 + 8);
    v51(v13, v47);
    outlined destroy of ModifiedContent<<<opaque return type of View.alert<A, B>(_:isPresented:actions:message:)>>.0, InlineNavigationBarTitle>(v48, &_s7SwiftUI7SectionVyAA4TextVAA9TupleViewVy07WorkoutB015MediaContentRowVSg_AA08ModifiedI0VyAMyAA0F0PAAE11buttonStyleyQrqd__AA015PrimitiveButtonM0Rd__lFQOyAA14NavigationLinkVyAMyAA6HStackVyAGyAA6SpacerV_AeWtGGAA14_PaddingLayoutVGAoAE15navigationTitleyQrqd__SyRd__lFQOyAH0H6PickerV_SSQo_G_AA08BorderedoM0VQo_AA011_ForegroundM8ModifierVyAA017HierarchicalShapeM0VGGAA30_EnvironmentKeyWritingModifierVyAA10VisibilityOGGtGAEGSgMd);
    v51(v46, v47);
    sub_20C6964A4(v49, v84);
    v25 = 0;
  }

  v52 = v84;
  (*(v81 + 56))(v84, v25, 1, v82);
  v53 = v78;
  v54 = *(v78 + 16);
  v55 = v77;
  v56 = v76;
  v57 = v79;
  v54(v77, v76, v79);
  v58 = v80;
  outlined init with copy of TupleView<(Section<EmptyView, ModifiedContent<<<opaque return type of View.pickerStyle<A>(_:)>>.0, _EnvironmentKeyWritingModifier<Color?>>, Text?>, Section<Text, TupleView<(MediaContentRow?, ModifiedContent<ModifiedContent<<<opaque return type of View.buttonStyle<A>(_:)>>.0, _ForegroundStyleModifier<HierarchicalShapeStyle>>, _EnvironmentKeyWritingModifier<Visibility>>)>, Text>?)>?(v52, v80, &_s7SwiftUI9TupleViewVyAA7SectionVyAA05EmptyD0VAA15ModifiedContentVyAA0D0PAAE11pickerStyleyQrqd__AA06PickerJ0Rd__lFQOyAA0K0VyAGSbAA7ForEachVySay07WorkoutB030MediaPlaybackConfigurationTypeOGSSAkAE3tag_15includeOptionalQrqd___SbtSHRd__lFQOyAIyAA4TextVAA30_EnvironmentKeyWritingModifierVySiSgGG_SbQo_GG_AA06InlinekJ0VQo_A_yAA5ColorVSgGGAYSgG_AEyAyCyAR0oH3RowVSg_AIyAIyAkAE06buttonJ0yQrqd__AA015PrimitiveButtonJ0Rd__lFQOyAA14NavigationLinkVyAIyAA6HStackVyACyAA6SpacerV_AYA26_tGGAA14_PaddingLayoutVGAkAE15navigationTitleyQrqd__SyRd__lFQOyAR0oK0V_SSQo_G_AA014BorderedButtonJ0VQo_AA011_ForegroundjZ0VyAA017HierarchicalShapeJ0VGGA_yAA10VisibilityOGGtGAYGSgtGSgMd);
  v59 = v83;
  v54(v83, v55, v57);
  v60 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI7SectionVyAA9EmptyViewVAA0E0PAAE8onChange2of7initial_Qrqd___Sbyqd___qd__tctSQRd__lFQOyAA6ToggleVyAA4TextVG_SbQo_ANSgG_AA05TupleE0VyACyAeA15ModifiedContentVyAgAE11pickerStyleyQrqd__AA06PickerP0Rd__lFQOyAA0Q0VyAESbAA7ForEachVySay07WorkoutB030MediaPlaybackConfigurationTypeOGSSAgAE3tag_15includeOptionalQrqd___SbtSHRd__lFQOyAVyAnA30_EnvironmentKeyWritingModifierVySiSgGG_SbQo_GG_AA06InlineqP0VQo_A8_yAA5ColorVSgGGAQG_ACyAnTyA1_0uN3RowVSg_AVyAVyAgAE06buttonP0yQrqd__AA015PrimitiveButtonP0Rd__lFQOyAA14NavigationLinkVyAVyAA6HStackVyATyAA6SpacerV_ANA34_tGGAA14_PaddingLayoutVGAgAE15navigationTitleyQrqd__SyRd__lFQOyA1_0uQ0V_SSQo_G_AA014BorderedButtonP0VQo_AA011_ForegroundP8ModifierVyAA017HierarchicalShapeP0VGGA8_yAA10VisibilityOGGtGANGSgtGSgtMd);
  outlined init with copy of TupleView<(Section<EmptyView, ModifiedContent<<<opaque return type of View.pickerStyle<A>(_:)>>.0, _EnvironmentKeyWritingModifier<Color?>>, Text?>, Section<Text, TupleView<(MediaContentRow?, ModifiedContent<ModifiedContent<<<opaque return type of View.buttonStyle<A>(_:)>>.0, _ForegroundStyleModifier<HierarchicalShapeStyle>>, _EnvironmentKeyWritingModifier<Visibility>>)>, Text>?)>?(v58, &v59[*(v60 + 48)], &_s7SwiftUI9TupleViewVyAA7SectionVyAA05EmptyD0VAA15ModifiedContentVyAA0D0PAAE11pickerStyleyQrqd__AA06PickerJ0Rd__lFQOyAA0K0VyAGSbAA7ForEachVySay07WorkoutB030MediaPlaybackConfigurationTypeOGSSAkAE3tag_15includeOptionalQrqd___SbtSHRd__lFQOyAIyAA4TextVAA30_EnvironmentKeyWritingModifierVySiSgGG_SbQo_GG_AA06InlinekJ0VQo_A_yAA5ColorVSgGGAYSgG_AEyAyCyAR0oH3RowVSg_AIyAIyAkAE06buttonJ0yQrqd__AA015PrimitiveButtonJ0Rd__lFQOyAA14NavigationLinkVyAIyAA6HStackVyACyAA6SpacerV_AYA26_tGGAA14_PaddingLayoutVGAkAE15navigationTitleyQrqd__SyRd__lFQOyAR0oK0V_SSQo_G_AA014BorderedButtonJ0VQo_AA011_ForegroundjZ0VyAA017HierarchicalShapeJ0VGGA_yAA10VisibilityOGGtGAYGSgtGSgMd);
  outlined destroy of ModifiedContent<<<opaque return type of View.alert<A, B>(_:isPresented:actions:message:)>>.0, InlineNavigationBarTitle>(v52, &_s7SwiftUI9TupleViewVyAA7SectionVyAA05EmptyD0VAA15ModifiedContentVyAA0D0PAAE11pickerStyleyQrqd__AA06PickerJ0Rd__lFQOyAA0K0VyAGSbAA7ForEachVySay07WorkoutB030MediaPlaybackConfigurationTypeOGSSAkAE3tag_15includeOptionalQrqd___SbtSHRd__lFQOyAIyAA4TextVAA30_EnvironmentKeyWritingModifierVySiSgGG_SbQo_GG_AA06InlinekJ0VQo_A_yAA5ColorVSgGGAYSgG_AEyAyCyAR0oH3RowVSg_AIyAIyAkAE06buttonJ0yQrqd__AA015PrimitiveButtonJ0Rd__lFQOyAA14NavigationLinkVyAIyAA6HStackVyACyAA6SpacerV_AYA26_tGGAA14_PaddingLayoutVGAkAE15navigationTitleyQrqd__SyRd__lFQOyAR0oK0V_SSQo_G_AA014BorderedButtonJ0VQo_AA011_ForegroundjZ0VyAA017HierarchicalShapeJ0VGGA_yAA10VisibilityOGGtGAYGSgtGSgMd);
  v61 = *(v53 + 8);
  v61(v56, v57);
  outlined destroy of ModifiedContent<<<opaque return type of View.alert<A, B>(_:isPresented:actions:message:)>>.0, InlineNavigationBarTitle>(v58, &_s7SwiftUI9TupleViewVyAA7SectionVyAA05EmptyD0VAA15ModifiedContentVyAA0D0PAAE11pickerStyleyQrqd__AA06PickerJ0Rd__lFQOyAA0K0VyAGSbAA7ForEachVySay07WorkoutB030MediaPlaybackConfigurationTypeOGSSAkAE3tag_15includeOptionalQrqd___SbtSHRd__lFQOyAIyAA4TextVAA30_EnvironmentKeyWritingModifierVySiSgGG_SbQo_GG_AA06InlinekJ0VQo_A_yAA5ColorVSgGGAYSgG_AEyAyCyAR0oH3RowVSg_AIyAIyAkAE06buttonJ0yQrqd__AA015PrimitiveButtonJ0Rd__lFQOyAA14NavigationLinkVyAIyAA6HStackVyACyAA6SpacerV_AYA26_tGGAA14_PaddingLayoutVGAkAE15navigationTitleyQrqd__SyRd__lFQOyAR0oK0V_SSQo_G_AA014BorderedButtonJ0VQo_AA011_ForegroundjZ0VyAA017HierarchicalShapeJ0VGGA_yAA10VisibilityOGGtGAYGSgtGSgMd);
  return (v61)(v55, v57);
}

uint64_t closure #1 in closure #1 in MediaConfigurationRoom.body.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v21 = a1;
  v27 = a2;
  v3 = type metadata accessor for MediaConfigurationRoom();
  v4 = v3 - 8;
  v24 = *(v3 - 8);
  v23 = *(v24 + 64);
  MEMORY[0x28223BE20](v3);
  v22 = v19 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI6ToggleVyAA4TextVGMd);
  v7 = *(v6 - 8);
  v25 = v6;
  v26 = v7;
  MEMORY[0x28223BE20](v6);
  v20 = v19 - v8;
  v19[1] = *(a1 + *(v4 + 40) + 16);
  type metadata accessor for MediaConfigurationRoomViewModel();
  lazy protocol witness table accessor for type MediaConfigurationRoomViewModel and conformance MediaConfigurationRoomViewModel(&lazy protocol witness table cache variable for type MediaConfigurationRoomViewModel and conformance MediaConfigurationRoomViewModel, type metadata accessor for MediaConfigurationRoomViewModel);
  StateObject.projectedValue.getter();
  swift_getKeyPath();
  ObservedObject.Wrapper.subscript.getter();

  v9 = v31;
  v10 = v32;
  v11 = v33;
  swift_getKeyPath();
  v28 = v9;
  v29 = v10;
  v30 = v11;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI7BindingVy11WorkoutCore30MediaPlaybackConfigurationItemCGMd);
  Binding.subscript.getter();

  v12 = v20;
  Toggle.init(isOn:label:)();
  StateObject.wrappedValue.getter();
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  v13 = v31;
  LOBYTE(v11) = dispatch thunk of MediaPlaybackConfigurationItem.autoPlayEnabled.getter();

  LOBYTE(v31) = v11 & 1;
  v14 = v22;
  outlined init with copy of MediaConfigurationRoom(v21, v22);
  v15 = (*(v24 + 80) + 16) & ~*(v24 + 80);
  v16 = swift_allocObject();
  outlined init with take of MediaConfigurationRoom(v14, v16 + v15, type metadata accessor for MediaConfigurationRoom);
  lazy protocol witness table accessor for type [MediaPlaybackConfigurationType] and conformance [A](&lazy protocol witness table cache variable for type Toggle<Text> and conformance Toggle<A>, &_s7SwiftUI6ToggleVyAA4TextVGMd);
  v17 = v25;
  View.onChange<A>(of:initial:_:)();

  return (*(v26 + 8))(v12, v17);
}

uint64_t closure #1 in closure #1 in closure #1 in MediaConfigurationRoom.body.getter@<X0>(uint64_t a1@<X8>)
{
  LocalizedStringKey.init(stringLiteral:)();
  if (one-time initialization token for WorkoutUIBundle != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v2 = WorkoutUIBundle.super.isa;
  result = Text.init(_:tableName:bundle:comment:)();
  *a1 = result;
  *(a1 + 8) = v4;
  *(a1 + 16) = v5 & 1;
  *(a1 + 24) = v6;
  return result;
}

uint64_t closure #2 in closure #1 in closure #1 in MediaConfigurationRoom.body.getter(uint64_t a1, _BYTE *a2)
{
  if (*a2 == 1)
  {
    type metadata accessor for MediaConfigurationRoom();
    type metadata accessor for MediaConfigurationRoomViewModel();
    lazy protocol witness table accessor for type MediaConfigurationRoomViewModel and conformance MediaConfigurationRoomViewModel(&lazy protocol witness table cache variable for type MediaConfigurationRoomViewModel and conformance MediaConfigurationRoomViewModel, type metadata accessor for MediaConfigurationRoomViewModel);
    StateObject.wrappedValue.getter();
    swift_getKeyPath();
    swift_getKeyPath();
    static Published.subscript.getter();

    dispatch thunk of MusicLibraryPlaylistsModel.loadLibrarySuggestions()();
  }

  return result;
}

uint64_t closure #2 in closure #1 in MediaConfigurationRoom.body.getter@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = type metadata accessor for MediaConfigurationRoom();
  type metadata accessor for MediaConfigurationRoomViewModel();
  lazy protocol witness table accessor for type MediaConfigurationRoomViewModel and conformance MediaConfigurationRoomViewModel(&lazy protocol witness table cache variable for type MediaConfigurationRoomViewModel and conformance MediaConfigurationRoomViewModel, type metadata accessor for MediaConfigurationRoomViewModel);
  StateObject.wrappedValue.getter();
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  v5 = dispatch thunk of MediaPlaybackConfigurationItem.autoPlayEnabled.getter();

  result = 0;
  v7 = 0;
  v8 = 0;
  v9 = 0;
  if ((v5 & 1) == 0)
  {
    v10 = *(a1 + *(v4 + 24));
    v11 = [v10 effectiveTypeIdentifier];
    v12 = [v10 swimmingLocationType];
    v13 = [v10 isIndoor];
    v14 = MEMORY[0x20F30BAD0](0x7361637265776F6CLL, 0xEA00000000005F65);
    v15 = MEMORY[0x20F30D330](v11, v12, v13, 0, v14);

    if (v15)
    {
      v16 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v18 = v17;
    }

    else
    {
      v16 = 0;
      v18 = 0;
    }

    if (one-time initialization token for WorkoutUIBundle != -1)
    {
      swift_once();
    }

    swift_beginAccess();
    v19 = WorkoutUIBundle.super.isa;
    v28._object = 0xE000000000000000;
    v20.value._countAndFlagsBits = 0x617A696C61636F4CLL;
    v20.value._object = 0xEB00000000656C62;
    v21._object = 0x800000020CBA32B0;
    v21._countAndFlagsBits = 0xD000000000000015;
    v22._countAndFlagsBits = 0;
    v22._object = 0xE000000000000000;
    v28._countAndFlagsBits = 0;
    NSLocalizedString(_:tableName:bundle:value:comment:)(v21, v20, v19, v22, v28);

    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys7CVarArg_pGMd);
    v23 = swift_allocObject();
    *(v23 + 16) = xmmword_20CB5DA70;
    *(v23 + 56) = MEMORY[0x277D837D0];
    *(v23 + 64) = lazy protocol witness table accessor for type String and conformance String();
    if (!v18)
    {
      v24 = [v10 localizedName];
      v16 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v18 = v25;
    }

    *(v23 + 32) = v16;
    *(v23 + 40) = v18;
    String.init(format:_:)();

    lazy protocol witness table accessor for type String and conformance String();
    result = Text.init<A>(_:)();
    v8 = v26 & 1;
  }

  *a2 = result;
  a2[1] = v7;
  a2[2] = v8;
  a2[3] = v9;
  return result;
}

uint64_t closure #3 in closure #1 in MediaConfigurationRoom.body.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v22 = a1;
  v25 = a2;
  v2 = type metadata accessor for InlinePickerStyle();
  v3 = *(v2 - 8);
  v23 = v2;
  v24 = v3;
  MEMORY[0x28223BE20](v2);
  v5 = &v22 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI6PickerVyAA9EmptyViewVSbAA7ForEachVySay07WorkoutB030MediaPlaybackConfigurationTypeOGSSAA0E0PAAE3tag_15includeOptionalQrqd___SbtSHRd__lFQOyAA15ModifiedContentVyAA4TextVAA30_EnvironmentKeyWritingModifierVySiSgGG_SbQo_GGMd);
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v22 - v8;
  type metadata accessor for MediaConfigurationRoom();
  type metadata accessor for MediaConfigurationRoomViewModel();
  lazy protocol witness table accessor for type MediaConfigurationRoomViewModel and conformance MediaConfigurationRoomViewModel(&lazy protocol witness table cache variable for type MediaConfigurationRoomViewModel and conformance MediaConfigurationRoomViewModel, type metadata accessor for MediaConfigurationRoomViewModel);
  StateObject.projectedValue.getter();
  swift_getKeyPath();
  ObservedObject.Wrapper.subscript.getter();

  v10 = v36;
  v11 = v37;
  v12 = v38;
  swift_getKeyPath();
  v33 = v10;
  v34 = v11;
  v35 = v12;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI7BindingVy11WorkoutCore30MediaPlaybackConfigurationItemCGMd);
  Binding.subscript.getter();

  v13 = v30;
  v14 = v31;
  v15 = v32;

  v26 = v22;
  v27 = v13;
  v28 = v14;
  v29 = v15;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI7ForEachVySay07WorkoutB030MediaPlaybackConfigurationTypeOGSSAA4ViewPAAE3tag_15includeOptionalQrqd___SbtSHRd__lFQOyAA15ModifiedContentVyAA4TextVAA30_EnvironmentKeyWritingModifierVySiSgGG_SbQo_GMd);
  lazy protocol witness table accessor for type ForEach<[MediaPlaybackConfigurationType], String, <<opaque return type of View.tag<A>(_:includeOptional:)>>.0> and conformance <> ForEach<A, B, C>();
  Picker.init(selection:label:content:)();
  InlinePickerStyle.init()();
  lazy protocol witness table accessor for type [MediaPlaybackConfigurationType] and conformance [A](&lazy protocol witness table cache variable for type Picker<EmptyView, Bool, ForEach<[MediaPlaybackConfigurationType], String, <<opaque return type of View.tag<A>(_:includeOptional:)>>.0>> and conformance Picker<A, B, C>, &_s7SwiftUI6PickerVyAA9EmptyViewVSbAA7ForEachVySay07WorkoutB030MediaPlaybackConfigurationTypeOGSSAA0E0PAAE3tag_15includeOptionalQrqd___SbtSHRd__lFQOyAA15ModifiedContentVyAA4TextVAA30_EnvironmentKeyWritingModifierVySiSgGG_SbQo_GGMd);
  v16 = v25;
  v17 = v23;
  View.pickerStyle<A>(_:)();
  (*(v24 + 8))(v5, v17);
  (*(v7 + 8))(v9, v6);
  v18 = static Color.accentColor.getter();
  KeyPath = swift_getKeyPath();
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyAA4ViewPAAE11pickerStyleyQrqd__AA06PickerG0Rd__lFQOyAA0H0VyAA05EmptyE0VSbAA7ForEachVySay07WorkoutB030MediaPlaybackConfigurationTypeOGSSAeAE3tag_15includeOptionalQrqd___SbtSHRd__lFQOyACyAA4TextVAA30_EnvironmentKeyWritingModifierVySiSgGG_SbQo_GG_AA06InlinehG0VQo_AWyAA5ColorVSgGGMd);
  v21 = (v16 + *(result + 36));
  *v21 = KeyPath;
  v21[1] = v18;
  return result;
}

uint64_t closure #1 in closure #3 in closure #1 in MediaConfigurationRoom.body.getter()
{
  type metadata accessor for MediaConfigurationRoom();
  type metadata accessor for MediaConfigurationRoomViewModel();
  lazy protocol witness table accessor for type MediaConfigurationRoomViewModel and conformance MediaConfigurationRoomViewModel(&lazy protocol witness table cache variable for type MediaConfigurationRoomViewModel and conformance MediaConfigurationRoomViewModel, type metadata accessor for MediaConfigurationRoomViewModel);
  StateObject.wrappedValue.getter();
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay9WorkoutUI30MediaPlaybackConfigurationTypeOGMd);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI4ViewPAAE3tag_15includeOptionalQrqd___SbtSHRd__lFQOyAA15ModifiedContentVyAA4TextVAA30_EnvironmentKeyWritingModifierVySiSgGG_SbQo_Md);
  lazy protocol witness table accessor for type [MediaPlaybackConfigurationType] and conformance [A](&lazy protocol witness table cache variable for type [MediaPlaybackConfigurationType] and conformance [A], &_sSay9WorkoutUI30MediaPlaybackConfigurationTypeOGMd);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyAA4TextVAA30_EnvironmentKeyWritingModifierVySiSgGGMd);
  lazy protocol witness table accessor for type ModifiedContent<Text, _EnvironmentKeyWritingModifier<Int?>> and conformance <> ModifiedContent<A, B>();
  swift_getOpaqueTypeConformance2();
  lazy protocol witness table accessor for type MediaPlaybackConfigurationType and conformance MediaPlaybackConfigurationType();
  return ForEach<>.init(_:content:)();
}

uint64_t closure #1 in closure #1 in closure #3 in closure #1 in MediaConfigurationRoom.body.getter@<X0>(char *a1@<X0>, uint64_t a2@<X8>)
{
  v19 = *a1;
  if ((*a1 & 1) == 0)
  {
    LocalizedStringKey.init(stringLiteral:)();
    if (one-time initialization token for WorkoutUIBundle == -1)
    {
      goto LABEL_5;
    }

    goto LABEL_9;
  }

  LocalizedStringKey.init(stringLiteral:)();
  if (one-time initialization token for WorkoutUIBundle != -1)
  {
LABEL_9:
    swift_once();
  }

LABEL_5:
  swift_beginAccess();
  v3 = WorkoutUIBundle.super.isa;
  v4 = Text.init(_:tableName:bundle:comment:)();
  v6 = v5;
  v8 = v7;
  static Color.primary.getter();
  v9 = Text.foregroundColor(_:)();
  v11 = v10;
  v13 = v12;
  v18 = v14;

  outlined consume of Text.Storage(v4, v6, v8 & 1);

  KeyPath = swift_getKeyPath();
  if (v19)
  {
    v16 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  else
  {
    v16 = 1;
  }

  *a2 = v9;
  *(a2 + 8) = v11;
  *(a2 + 16) = v13 & 1;
  *(a2 + 24) = v18;
  *(a2 + 32) = KeyPath;
  *(a2 + 40) = 2;
  *(a2 + 48) = 0;
  *(a2 + 49) = v16 & 1;
  *(a2 + 50) = 1;
  return result;
}

uint64_t closure #4 in closure #1 in MediaConfigurationRoom.body.getter@<X0>(uint64_t *a1@<X8>)
{
  type metadata accessor for MediaConfigurationRoom();
  type metadata accessor for MediaConfigurationRoomViewModel();
  lazy protocol witness table accessor for type MediaConfigurationRoomViewModel and conformance MediaConfigurationRoomViewModel(&lazy protocol witness table cache variable for type MediaConfigurationRoomViewModel and conformance MediaConfigurationRoomViewModel, type metadata accessor for MediaConfigurationRoomViewModel);
  StateObject.wrappedValue.getter();
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  v2 = dispatch thunk of MediaPlaybackConfigurationItem.autoPlayEnabled.getter();

  if (v2 & 1) != 0 && (StateObject.wrappedValue.getter(), swift_getKeyPath(), swift_getKeyPath(), static Published.subscript.getter(), , , , v3 = dispatch thunk of MediaPlaybackConfigurationItem.smartStationEnabled.getter(), v13, (v3))
  {
    if (one-time initialization token for WorkoutUIBundle != -1)
    {
      swift_once();
    }

    swift_beginAccess();
    v4 = WorkoutUIBundle.super.isa;
    v14._object = 0xE000000000000000;
    v5.value._countAndFlagsBits = 0x617A696C61636F4CLL;
    v5.value._object = 0xEB00000000656C62;
    v6._object = 0x800000020CBA3240;
    v6._countAndFlagsBits = 0xD000000000000015;
    v7._countAndFlagsBits = 0;
    v7._object = 0xE000000000000000;
    v14._countAndFlagsBits = 0;
    NSLocalizedString(_:tableName:bundle:value:comment:)(v6, v5, v4, v7, v14);

    lazy protocol witness table accessor for type String and conformance String();
    result = Text.init<A>(_:)();
    v12 = v11 & 1;
  }

  else
  {
    result = 0;
    v9 = 0;
    v12 = 0;
    v10 = 0;
  }

  *a1 = result;
  a1[1] = v9;
  a1[2] = v12;
  a1[3] = v10;
  return result;
}

uint64_t closure #5 in closure #1 in MediaConfigurationRoom.body.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v77 = a2;
  v76 = type metadata accessor for BorderedButtonStyle();
  v74 = *(v76 - 8);
  MEMORY[0x28223BE20](v76);
  v73 = &v57 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v67 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI4ViewPAAE15navigationTitleyQrqd__SyRd__lFQOy07WorkoutB011MediaPickerV_SSQo_Md);
  MEMORY[0x28223BE20](v67);
  v66 = &v57 - v4;
  v71 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI14NavigationLinkVyAA15ModifiedContentVyAA6HStackVyAA9TupleViewVyAA6SpacerV_AA4TextVAKtGGAA14_PaddingLayoutVGAA0I0PAAE15navigationTitleyQrqd__SyRd__lFQOy07WorkoutB011MediaPickerV_SSQo_GMd);
  v69 = *(v71 - 8);
  MEMORY[0x28223BE20](v71);
  v68 = &v57 - v5;
  v70 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyACyAA4ViewPAAE11buttonStyleyQrqd__AA015PrimitiveButtonG0Rd__lFQOyAA14NavigationLinkVyACyAA6HStackVyAA05TupleE0VyAA6SpacerV_AA4TextVAOtGGAA14_PaddingLayoutVGAeAE15navigationTitleyQrqd__SyRd__lFQOy07WorkoutB011MediaPickerV_SSQo_G_AA08BorderediG0VQo_AA011_ForegroundG8ModifierVyAA017HierarchicalShapeG0VGGAA022_EnvironmentKeyWritingY0VyAA10VisibilityOGGMd);
  MEMORY[0x28223BE20](v70);
  v75 = &v57 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v72 = &v57 - v8;
  v62 = type metadata accessor for Font.TextStyle();
  v61 = *(v62 - 8);
  MEMORY[0x28223BE20](v62);
  v10 = &v57 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v78 = type metadata accessor for MediaContentRow();
  v63 = *(v78 - 8);
  MEMORY[0x28223BE20](v78);
  v60 = &v57 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11WorkoutCore0A15MediaSuggestionVSgMd);
  MEMORY[0x28223BE20](v12 - 8);
  v14 = &v57 - v13;
  v15 = type metadata accessor for WorkoutMediaSuggestion();
  v16 = *(v15 - 8);
  MEMORY[0x28223BE20](v15);
  v18 = &v57 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9WorkoutUI15MediaContentRowVSgMd);
  MEMORY[0x28223BE20](v19 - 8);
  v64 = &v57 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v21);
  v79 = &v57 - v22;
  v23 = type metadata accessor for MediaConfigurationRoom();
  v65 = a1;
  type metadata accessor for MediaConfigurationRoomViewModel();
  lazy protocol witness table accessor for type MediaConfigurationRoomViewModel and conformance MediaConfigurationRoomViewModel(&lazy protocol witness table cache variable for type MediaConfigurationRoomViewModel and conformance MediaConfigurationRoomViewModel, type metadata accessor for MediaConfigurationRoomViewModel);
  StateObject.wrappedValue.getter();
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  v24 = v16;
  v25 = *(v16 + 48);
  v26 = v15;
  if (v25(v14, 1, v15) == 1)
  {
    _s11WorkoutCore0A15MediaSuggestionVSgWOhTm_1(v14, &_s11WorkoutCore0A15MediaSuggestionVSgMd);
    v27 = 1;
    v28 = v79;
  }

  else
  {
    v29 = *(v24 + 32);
    v58 = v18;
    v29(v18, v14, v15);
    v30 = v60;
    (*(v24 + 16))(v60, v18, v26);
    v59 = v23;
    v57 = *(v78 + 20);
    v80 = 0x4044000000000000;
    v31 = *MEMORY[0x277CE0A68];
    v32 = *(v61 + 104);
    v33 = v62;
    v32(v10, v31, v62);
    lazy protocol witness table accessor for type Double and conformance Double();
    ScaledMetric.init(wrappedValue:relativeTo:)();
    v80 = 0x4020000000000000;
    v32(v10, v31, v33);
    v23 = v59;
    ScaledMetric.init(wrappedValue:relativeTo:)();
    (*(v24 + 8))(v58, v26);
    v34 = v79;
    outlined init with take of MediaConfigurationRoom(v30, v79, type metadata accessor for MediaContentRow);
    v27 = 0;
    v28 = v34;
  }

  (*(v63 + 56))(v28, v27, 1, v78);
  v35 = v65;
  v36 = v65 + *(v23 + 36);
  v37 = *v36;
  v38 = *(v36 + 8);
  v84 = v37;
  v85 = v38;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI5StateVySbGMd);
  v39 = State.projectedValue.getter();
  MEMORY[0x28223BE20](v39);
  closure #1 in closure #5 in closure #1 in MediaConfigurationRoom.body.getter(v35, v66);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyAA6HStackVyAA9TupleViewVyAA6SpacerV_AA4TextVAItGGAA14_PaddingLayoutVGMd);
  lazy protocol witness table accessor for type ModifiedContent<HStack<TupleView<(Spacer, Text, Spacer)>>, _PaddingLayout> and conformance <> ModifiedContent<A, B>();
  v40 = type metadata accessor for MediaPicker();
  v41 = lazy protocol witness table accessor for type MediaConfigurationRoomViewModel and conformance MediaConfigurationRoomViewModel(&lazy protocol witness table cache variable for type MediaPicker and conformance MediaPicker, type metadata accessor for MediaPicker);
  v42 = lazy protocol witness table accessor for type String and conformance String();
  v80 = v40;
  v81 = MEMORY[0x277D837D0];
  v82 = v41;
  v83 = v42;
  swift_getOpaqueTypeConformance2();
  v43 = v68;
  NavigationLink.init(destination:isActive:label:)();
  v44 = v73;
  BorderedButtonStyle.init()();
  lazy protocol witness table accessor for type [MediaPlaybackConfigurationType] and conformance [A](&lazy protocol witness table cache variable for type NavigationLink<ModifiedContent<HStack<TupleView<(Spacer, Text, Spacer)>>, _PaddingLayout>, <<opaque return type of View.navigationTitle<A>(_:)>>.0> and conformance NavigationLink<A, B>, &_s7SwiftUI14NavigationLinkVyAA15ModifiedContentVyAA6HStackVyAA9TupleViewVyAA6SpacerV_AA4TextVAKtGGAA14_PaddingLayoutVGAA0I0PAAE15navigationTitleyQrqd__SyRd__lFQOy07WorkoutB011MediaPickerV_SSQo_GMd);
  lazy protocol witness table accessor for type MediaConfigurationRoomViewModel and conformance MediaConfigurationRoomViewModel(&lazy protocol witness table cache variable for type BorderedButtonStyle and conformance BorderedButtonStyle, MEMORY[0x277CDDEE0]);
  v45 = v71;
  v46 = v72;
  v47 = v76;
  View.buttonStyle<A>(_:)();
  (*(v74 + 8))(v44, v47);
  (*(v69 + 8))(v43, v45);
  v48 = static HierarchicalShapeStyle.secondary.getter();
  *(v46 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyAA4ViewPAAE11buttonStyleyQrqd__AA015PrimitiveButtonG0Rd__lFQOyAA14NavigationLinkVyACyAA6HStackVyAA05TupleE0VyAA6SpacerV_AA4TextVAOtGGAA14_PaddingLayoutVGAeAE15navigationTitleyQrqd__SyRd__lFQOy07WorkoutB011MediaPickerV_SSQo_G_AA08BorderediG0VQo_AA011_ForegroundG8ModifierVyAA017HierarchicalShapeG0VGGMd) + 36)) = v48;
  KeyPath = swift_getKeyPath();
  v50 = v46 + *(v70 + 36);
  *v50 = KeyPath;
  *(v50 + 8) = 2;
  v51 = v79;
  v52 = v64;
  _s7SwiftUI11EnvironmentV7ContentOyAA13DismissActionV_GWOcTm_3(v79, v64, &_s9WorkoutUI15MediaContentRowVSgMd);
  v53 = v75;
  outlined init with copy of TupleView<(Section<EmptyView, ModifiedContent<<<opaque return type of View.pickerStyle<A>(_:)>>.0, _EnvironmentKeyWritingModifier<Color?>>, Text?>, Section<Text, TupleView<(MediaContentRow?, ModifiedContent<ModifiedContent<<<opaque return type of View.buttonStyle<A>(_:)>>.0, _ForegroundStyleModifier<HierarchicalShapeStyle>>, _EnvironmentKeyWritingModifier<Visibility>>)>, Text>?)>?(v46, v75, &_s7SwiftUI15ModifiedContentVyACyAA4ViewPAAE11buttonStyleyQrqd__AA015PrimitiveButtonG0Rd__lFQOyAA14NavigationLinkVyACyAA6HStackVyAA05TupleE0VyAA6SpacerV_AA4TextVAOtGGAA14_PaddingLayoutVGAeAE15navigationTitleyQrqd__SyRd__lFQOy07WorkoutB011MediaPickerV_SSQo_G_AA08BorderediG0VQo_AA011_ForegroundG8ModifierVyAA017HierarchicalShapeG0VGGAA022_EnvironmentKeyWritingY0VyAA10VisibilityOGGMd);
  v54 = v77;
  _s7SwiftUI11EnvironmentV7ContentOyAA13DismissActionV_GWOcTm_3(v52, v77, &_s9WorkoutUI15MediaContentRowVSgMd);
  v55 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9WorkoutUI15MediaContentRowVSg_05SwiftB008ModifiedD0VyAGyAE4ViewPAEE11buttonStyleyQrqd__AE015PrimitiveButtonJ0Rd__lFQOyAE14NavigationLinkVyAGyAE6HStackVyAE05TupleH0VyAE6SpacerV_AE4TextVAStGGAE14_PaddingLayoutVGAiEE15navigationTitleyQrqd__SyRd__lFQOyAA0C6PickerV_SSQo_G_AE08BorderedlJ0VQo_AE011_ForegroundJ8ModifierVyAE017HierarchicalShapeJ0VGGAE022_EnvironmentKeyWritingZ0VyAE10VisibilityOGGtMd);
  outlined init with copy of TupleView<(Section<EmptyView, ModifiedContent<<<opaque return type of View.pickerStyle<A>(_:)>>.0, _EnvironmentKeyWritingModifier<Color?>>, Text?>, Section<Text, TupleView<(MediaContentRow?, ModifiedContent<ModifiedContent<<<opaque return type of View.buttonStyle<A>(_:)>>.0, _ForegroundStyleModifier<HierarchicalShapeStyle>>, _EnvironmentKeyWritingModifier<Visibility>>)>, Text>?)>?(v53, v54 + *(v55 + 48), &_s7SwiftUI15ModifiedContentVyACyAA4ViewPAAE11buttonStyleyQrqd__AA015PrimitiveButtonG0Rd__lFQOyAA14NavigationLinkVyACyAA6HStackVyAA05TupleE0VyAA6SpacerV_AA4TextVAOtGGAA14_PaddingLayoutVGAeAE15navigationTitleyQrqd__SyRd__lFQOy07WorkoutB011MediaPickerV_SSQo_G_AA08BorderediG0VQo_AA011_ForegroundG8ModifierVyAA017HierarchicalShapeG0VGGAA022_EnvironmentKeyWritingY0VyAA10VisibilityOGGMd);
  outlined destroy of ModifiedContent<<<opaque return type of View.alert<A, B>(_:isPresented:actions:message:)>>.0, InlineNavigationBarTitle>(v46, &_s7SwiftUI15ModifiedContentVyACyAA4ViewPAAE11buttonStyleyQrqd__AA015PrimitiveButtonG0Rd__lFQOyAA14NavigationLinkVyACyAA6HStackVyAA05TupleE0VyAA6SpacerV_AA4TextVAOtGGAA14_PaddingLayoutVGAeAE15navigationTitleyQrqd__SyRd__lFQOy07WorkoutB011MediaPickerV_SSQo_G_AA08BorderediG0VQo_AA011_ForegroundG8ModifierVyAA017HierarchicalShapeG0VGGAA022_EnvironmentKeyWritingY0VyAA10VisibilityOGGMd);
  _s11WorkoutCore0A15MediaSuggestionVSgWOhTm_1(v51, &_s9WorkoutUI15MediaContentRowVSgMd);
  outlined destroy of ModifiedContent<<<opaque return type of View.alert<A, B>(_:isPresented:actions:message:)>>.0, InlineNavigationBarTitle>(v53, &_s7SwiftUI15ModifiedContentVyACyAA4ViewPAAE11buttonStyleyQrqd__AA015PrimitiveButtonG0Rd__lFQOyAA14NavigationLinkVyACyAA6HStackVyAA05TupleE0VyAA6SpacerV_AA4TextVAOtGGAA14_PaddingLayoutVGAeAE15navigationTitleyQrqd__SyRd__lFQOy07WorkoutB011MediaPickerV_SSQo_G_AA08BorderediG0VQo_AA011_ForegroundG8ModifierVyAA017HierarchicalShapeG0VGGAA022_EnvironmentKeyWritingY0VyAA10VisibilityOGGMd);
  return _s11WorkoutCore0A15MediaSuggestionVSgWOhTm_1(v52, &_s9WorkoutUI15MediaContentRowVSgMd);
}

uint64_t closure #1 in closure #5 in closure #1 in MediaConfigurationRoom.body.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v26 = a2;
  v25 = type metadata accessor for MediaPicker();
  MEMORY[0x28223BE20](v25);
  v4 = &v22 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for MediaConfigurationRoom();
  v6 = *(a1 + *(v5 + 24));
  type metadata accessor for MediaConfigurationRoomViewModel();
  lazy protocol witness table accessor for type MediaConfigurationRoomViewModel and conformance MediaConfigurationRoomViewModel(&lazy protocol witness table cache variable for type MediaConfigurationRoomViewModel and conformance MediaConfigurationRoomViewModel, type metadata accessor for MediaConfigurationRoomViewModel);
  v24 = v6;
  v23 = StateObject.wrappedValue.getter();
  StateObject.projectedValue.getter();
  swift_getKeyPath();
  ObservedObject.Wrapper.subscript.getter();

  v7 = v31;
  v22 = v32;
  StateObject.projectedValue.getter();
  swift_getKeyPath();
  v8 = v25;
  ObservedObject.Wrapper.subscript.getter();

  v9 = (a1 + *(v5 + 36));
  v10 = *v9;
  v11 = *(v9 + 1);
  v29 = v10;
  v30 = v11;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI5StateVySbGMd);
  State.projectedValue.getter();
  countAndFlagsBits = v27._countAndFlagsBits;
  object = v27._object;
  LOBYTE(v6) = v28;
  *v4 = v24;
  *(v4 + 1) = ObservedObject.init(wrappedValue:)();
  *(v4 + 2) = v14;
  *(v4 + 3) = v7;
  *(v4 + 2) = v22;
  v15 = &v4[*(v8 + 32)];
  *v15 = countAndFlagsBits;
  *(v15 + 1) = object;
  v15[16] = v6;
  if (one-time initialization token for WorkoutUIBundle != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v16 = WorkoutUIBundle.super.isa;
  v33._object = 0xE000000000000000;
  v17._countAndFlagsBits = 0x414944454DLL;
  v18.value._countAndFlagsBits = 0x617A696C61636F4CLL;
  v18.value._object = 0xEB00000000656C62;
  v17._object = 0xE500000000000000;
  v19._countAndFlagsBits = 0;
  v19._object = 0xE000000000000000;
  v33._countAndFlagsBits = 0;
  v20 = NSLocalizedString(_:tableName:bundle:value:comment:)(v17, v18, v16, v19, v33);

  v27 = v20;
  lazy protocol witness table accessor for type MediaConfigurationRoomViewModel and conformance MediaConfigurationRoomViewModel(&lazy protocol witness table cache variable for type MediaPicker and conformance MediaPicker, type metadata accessor for MediaPicker);
  lazy protocol witness table accessor for type String and conformance String();
  View.navigationTitle<A>(_:)();

  return outlined destroy of MediaPicker(v4);
}

uint64_t closure #2 in closure #5 in closure #1 in MediaConfigurationRoom.body.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = static VerticalAlignment.center.getter();
  closure #1 in closure #2 in closure #5 in closure #1 in MediaConfigurationRoom.body.getter(v10);
  *&v9[7] = v10[0];
  *&v9[23] = v10[1];
  *&v9[39] = v11[0];
  *&v9[48] = *(v11 + 9);
  v3 = static Edge.Set.vertical.getter();
  result = EdgeInsets.init(_all:)();
  *(a1 + 17) = *v9;
  *(a1 + 33) = *&v9[16];
  *(a1 + 49) = *&v9[32];
  *a1 = v2;
  *(a1 + 8) = 0;
  *(a1 + 16) = 1;
  *(a1 + 65) = *&v9[48];
  *(a1 + 88) = v3;
  *(a1 + 96) = v5;
  *(a1 + 104) = v6;
  *(a1 + 112) = v7;
  *(a1 + 120) = v8;
  *(a1 + 128) = 0;
  return result;
}

uint64_t closure #1 in closure #2 in closure #5 in closure #1 in MediaConfigurationRoom.body.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = type metadata accessor for Font.Leading();
  v38 = *(v2 - 8);
  v39 = v2;
  MEMORY[0x28223BE20](v2);
  v37 = &v37 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11WorkoutCore0A15MediaSuggestionVSgMd);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v37 - v5;
  type metadata accessor for MediaConfigurationRoom();
  type metadata accessor for MediaConfigurationRoomViewModel();
  lazy protocol witness table accessor for type MediaConfigurationRoomViewModel and conformance MediaConfigurationRoomViewModel(&lazy protocol witness table cache variable for type MediaConfigurationRoomViewModel and conformance MediaConfigurationRoomViewModel, type metadata accessor for MediaConfigurationRoomViewModel);
  StateObject.wrappedValue.getter();
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  v7 = type metadata accessor for WorkoutMediaSuggestion();
  v8 = (*(*(v7 - 8) + 48))(v6, 1, v7);
  _s11WorkoutCore0A15MediaSuggestionVSgWOhTm_1(v6, &_s11WorkoutCore0A15MediaSuggestionVSgMd);
  if (v8 == 1)
  {
    if (one-time initialization token for WorkoutUIBundle != -1)
    {
      swift_once();
    }

    swift_beginAccess();
    v9 = WorkoutUIBundle.super.isa;
    v36 = 0xE000000000000000;
    v10 = 0x4944454D5F444441;
    v11 = 0xE900000000000041;
  }

  else
  {
    if (one-time initialization token for WorkoutUIBundle != -1)
    {
      swift_once();
    }

    swift_beginAccess();
    v9 = WorkoutUIBundle.super.isa;
    v36 = 0xE000000000000000;
    v10 = 0x4D5F45474E414843;
    v11 = 0xEC00000041494445;
  }

  v12.value._countAndFlagsBits = 0x617A696C61636F4CLL;
  v12.value._object = 0xEB00000000656C62;
  v13._countAndFlagsBits = 0;
  v13._object = 0xE000000000000000;
  v14 = 0;
  v15 = NSLocalizedString(_:tableName:bundle:value:comment:)(*&v10, v12, v9, v13, *(&v36 - 1));

  v40 = v15;
  lazy protocol witness table accessor for type String and conformance String();
  v16 = Text.init<A>(_:)();
  v18 = v17;
  v20 = v19;
  static Color.accentColor.getter();
  v21 = Text.foregroundColor(_:)();
  v23 = v22;
  v25 = v24;

  outlined consume of Text.Storage(v16, v18, v20 & 1);

  static Font.body.getter();
  static Font.Weight.medium.getter();
  Font.weight(_:)();

  v27 = v37;
  v26 = v38;
  v28 = v39;
  (*(v38 + 104))(v37, *MEMORY[0x277CE0A10], v39);
  Font.leading(_:)();

  (*(v26 + 8))(v27, v28);
  v29 = Text.font(_:)();
  v31 = v30;
  LOBYTE(v26) = v32;
  v34 = v33;

  outlined consume of Text.Storage(v21, v23, v25 & 1);

  LOBYTE(v40._countAndFlagsBits) = 1;
  v42 = v26 & 1;
  v41 = 1;
  *a1 = 0;
  *(a1 + 8) = 1;
  *(a1 + 16) = v29;
  *(a1 + 24) = v31;
  *(a1 + 32) = v26 & 1;
  *(a1 + 40) = v34;
  *(a1 + 48) = 0;
  *(a1 + 56) = 1;
  outlined copy of Text.Storage(v29, v31, v26 & 1);

  outlined consume of Text.Storage(v29, v31, v26 & 1);
}

uint64_t closure #7 in closure #1 in MediaConfigurationRoom.body.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *(a1 + *(type metadata accessor for MediaConfigurationRoom() + 24));
  v4 = [v3 effectiveTypeIdentifier];
  v5 = [v3 swimmingLocationType];
  v6 = [v3 isIndoor];
  v7 = MEMORY[0x20F30BAD0](0x7361637265776F6CLL, 0xEA00000000005F65);
  v8 = MEMORY[0x20F30D330](v4, v5, v6, 0, v7);

  if (v8)
  {
    v9 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v11 = v10;
  }

  else
  {
    v9 = 0;
    v11 = 0;
  }

  if (one-time initialization token for WorkoutUIBundle != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v12 = WorkoutUIBundle.super.isa;
  v23._object = 0xE000000000000000;
  v13.value._countAndFlagsBits = 0x617A696C61636F4CLL;
  v13.value._object = 0xEB00000000656C62;
  v14._object = 0x800000020CBA3220;
  v14._countAndFlagsBits = 0xD000000000000013;
  v15._countAndFlagsBits = 0;
  v15._object = 0xE000000000000000;
  v23._countAndFlagsBits = 0;
  NSLocalizedString(_:tableName:bundle:value:comment:)(v14, v13, v12, v15, v23);

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys7CVarArg_pGMd);
  v16 = swift_allocObject();
  *(v16 + 16) = xmmword_20CB5DA70;
  *(v16 + 56) = MEMORY[0x277D837D0];
  *(v16 + 64) = lazy protocol witness table accessor for type String and conformance String();
  if (!v11)
  {
    v17 = [v3 localizedName];
    v9 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v11 = v18;
  }

  *(v16 + 32) = v9;
  *(v16 + 40) = v11;
  String.init(format:_:)();

  lazy protocol witness table accessor for type String and conformance String();
  result = Text.init<A>(_:)();
  *a2 = result;
  *(a2 + 8) = v20;
  *(a2 + 16) = v21 & 1;
  *(a2 + 24) = v22;
  return result;
}

uint64_t closure #2 in MediaConfigurationRoom.body.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v51 = a2;
  v3 = type metadata accessor for MediaConfigurationRoom();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3 - 8);
  v49 = v5;
  v6 = &v38 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for Alert.Button();
  MEMORY[0x28223BE20](v7 - 8);
  v50 = &v38 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v52 = &v38 - v10;
  LocalizedStringKey.init(stringLiteral:)();
  if (one-time initialization token for WorkoutUIBundle != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v11 = WorkoutUIBundle.super.isa;
  v12 = Text.init(_:tableName:bundle:comment:)();
  v47 = v13;
  v48 = v12;
  v45 = v14;
  v46 = v15;
  LocalizedStringKey.init(stringLiteral:)();
  v16 = WorkoutUIBundle.super.isa;
  v17 = Text.init(_:tableName:bundle:comment:)();
  v43 = v18;
  v44 = v17;
  v41 = v19 & 1;
  v42 = v20;
  LocalizedStringKey.init(stringLiteral:)();
  v21 = WorkoutUIBundle.super.isa;
  v22 = Text.init(_:tableName:bundle:comment:)();
  v24 = v23;
  v26 = v25;
  outlined init with copy of MediaConfigurationRoom(a1, v6);
  v27 = *(v4 + 80);
  v28 = v6;
  v29 = (v27 + 16) & ~v27;
  v30 = swift_allocObject();
  v39 = a1;
  v40 = type metadata accessor for MediaConfigurationRoom;
  outlined init with take of MediaConfigurationRoom(v28, v30 + v29, type metadata accessor for MediaConfigurationRoom);
  static Alert.Button.destructive(_:action:)();
  outlined consume of Text.Storage(v22, v24, v26 & 1);

  LocalizedStringKey.init(stringLiteral:)();
  v31 = WorkoutUIBundle.super.isa;
  v32 = Text.init(_:tableName:bundle:comment:)();
  v34 = v33;
  LOBYTE(v22) = v35;
  outlined init with copy of MediaConfigurationRoom(v39, v28);
  v36 = swift_allocObject();
  outlined init with take of MediaConfigurationRoom(v28, v36 + v29, v40);
  static Alert.Button.default(_:action:)();
  outlined consume of Text.Storage(v32, v34, v22 & 1);

  return Alert.init(title:message:primaryButton:secondaryButton:)();
}

uint64_t closure #1 in closure #2 in MediaConfigurationRoom.body.getter(uint64_t a1)
{
  v2 = type metadata accessor for DismissAction();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v10[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v6 = (a1 + *(type metadata accessor for MediaConfigurationRoom() + 44));
  v7 = *v6;
  v8 = *(v6 + 1);
  v10[16] = v7;
  v11 = v8;
  v10[15] = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI5StateVySbGMd);
  State.wrappedValue.setter();
  type metadata accessor for MediaConfigurationRoomViewModel();
  lazy protocol witness table accessor for type MediaConfigurationRoomViewModel and conformance MediaConfigurationRoomViewModel(&lazy protocol witness table cache variable for type MediaConfigurationRoomViewModel and conformance MediaConfigurationRoomViewModel, type metadata accessor for MediaConfigurationRoomViewModel);
  *(StateObject.wrappedValue.getter() + OBJC_IVAR____TtC9WorkoutUI31MediaConfigurationRoomViewModel_shouldPresentNoMediaSelectionAlert) = 0;

  MediaConfigurationRoom.dismiss.getter(v5);
  DismissAction.callAsFunction()();
  return (*(v3 + 8))(v5, v2);
}

uint64_t closure #2 in closure #2 in MediaConfigurationRoom.body.getter()
{
  type metadata accessor for MediaConfigurationRoom();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI5StateVySbGMd);
  State.wrappedValue.setter();
  type metadata accessor for MediaConfigurationRoomViewModel();
  lazy protocol witness table accessor for type MediaConfigurationRoomViewModel and conformance MediaConfigurationRoomViewModel(&lazy protocol witness table cache variable for type MediaConfigurationRoomViewModel and conformance MediaConfigurationRoomViewModel, type metadata accessor for MediaConfigurationRoomViewModel);
  *(StateObject.wrappedValue.getter() + OBJC_IVAR____TtC9WorkoutUI31MediaConfigurationRoomViewModel_shouldPresentNoMediaSelectionAlert) = 0;
}

uint64_t closure #3 in MediaConfigurationRoom.body.getter(uint64_t a1)
{
  v2 = type metadata accessor for MediaConfigurationRoom();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2 - 8);
  LocalizedStringKey.init(stringLiteral:)();
  outlined init with copy of MediaConfigurationRoom(a1, &v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v5 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v6 = swift_allocObject();
  outlined init with take of MediaConfigurationRoom(&v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), v6 + v5, type metadata accessor for MediaConfigurationRoom);
  return Button<>.init(_:action:)();
}

uint64_t closure #1 in closure #3 in MediaConfigurationRoom.body.getter()
{
  type metadata accessor for MediaConfigurationRoom();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI5StateVySbGMd);
  return State.wrappedValue.setter();
}

double closure #4 in MediaConfigurationRoom.body.getter@<D0>(uint64_t a1@<X8>)
{
  static Platform.current.getter();
  Platform.rawValue.getter();
  Platform.rawValue.getter();
  LocalizedStringKey.init(stringLiteral:)();
  Text.init(_:tableName:bundle:comment:)();
  _ConditionalContent<>.init(storage:)();
  result = *&v3;
  *a1 = v3;
  *(a1 + 16) = v4;
  *(a1 + 32) = v5;
  return result;
}

uint64_t closure #5 in MediaConfigurationRoom.body.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v17[1] = a2;
  v17[0] = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI11ToolbarItemVyytAA6ButtonVyAA07DefaultE5LabelVGG_AItMd);
  MEMORY[0x28223BE20](v17[0]);
  v4 = v17 - v3;
  v5 = type metadata accessor for ToolbarItemPlacement();
  MEMORY[0x28223BE20](v5 - 8);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI11ToolbarItemVyytAA6ButtonVyAA07DefaultE5LabelVGGMd);
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = v17 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v12 = v17 - v11;
  static ToolbarItemPlacement.cancellationAction.getter();
  v17[8] = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI6ButtonVyAA07DefaultC5LabelVGMd);
  lazy protocol witness table accessor for type [MediaPlaybackConfigurationType] and conformance [A](&lazy protocol witness table cache variable for type Button<DefaultButtonLabel> and conformance Button<A>, &_s7SwiftUI6ButtonVyAA07DefaultC5LabelVGMd);
  ToolbarItem<>.init(placement:content:)();
  static ToolbarItemPlacement.confirmationAction.getter();
  v17[4] = a1;
  ToolbarItem<>.init(placement:content:)();
  v13 = *(v17[0] + 48);
  v14 = *(v7 + 16);
  v14(v4, v12, v6);
  v14(&v4[v13], v9, v6);
  TupleToolbarContent.init(_:)();
  v15 = *(v7 + 8);
  v15(v9, v6);
  return (v15)(v12, v6);
}

uint64_t closure #1 in closure #5 in MediaConfigurationRoom.body.getter(uint64_t a1, void (*a2)(double), uint64_t a3, uint64_t a4)
{
  v7 = type metadata accessor for MediaConfigurationRoom();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v10 = type metadata accessor for ButtonRole();
  v11 = MEMORY[0x28223BE20](v10 - 8);
  v13 = &v17 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  a2(v11);
  outlined init with copy of MediaConfigurationRoom(a1, &v17 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  v14 = (*(v8 + 80) + 16) & ~*(v8 + 80);
  v15 = swift_allocObject();
  outlined init with take of MediaConfigurationRoom(&v17 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0), v15 + v14, type metadata accessor for MediaConfigurationRoom);
  return MEMORY[0x20F30AF90](v13, a4, v15);
}

uint64_t closure #1 in closure #2 in closure #5 in MediaConfigurationRoom.body.getter(uint64_t a1)
{
  v2 = type metadata accessor for MediaConfigurationRoom();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = &v15 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v15 - v7;
  v9 = type metadata accessor for TaskPriority();
  (*(*(v9 - 8) + 56))(v8, 1, 1, v9);
  outlined init with copy of MediaConfigurationRoom(a1, v5);
  type metadata accessor for MainActor();
  v10 = static MainActor.shared.getter();
  v11 = (*(v3 + 80) + 32) & ~*(v3 + 80);
  v12 = swift_allocObject();
  v13 = MEMORY[0x277D85700];
  *(v12 + 16) = v10;
  *(v12 + 24) = v13;
  outlined init with take of MediaConfigurationRoom(v5, v12 + v11, type metadata accessor for MediaConfigurationRoom);
  _sScTss5NeverORs_rlE4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntcfCyt_Tt2g5(0, 0, v8, &async function pointer to partial apply for closure #1 in MediaConfigurationRoom.confirmSelection(), v12);
}

uint64_t closure #1 in MediaConfigurationRoom.confirmSelection()(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[13] = a4;
  v5 = type metadata accessor for DispatchWorkItemFlags();
  v4[14] = v5;
  v4[15] = *(v5 - 8);
  v4[16] = swift_task_alloc();
  v6 = type metadata accessor for DispatchQoS();
  v4[17] = v6;
  v4[18] = *(v6 - 8);
  v4[19] = swift_task_alloc();
  v7 = type metadata accessor for MediaConfigurationRoom();
  v4[20] = v7;
  v8 = *(v7 - 8);
  v4[21] = v8;
  v4[22] = *(v8 + 64);
  v4[23] = swift_task_alloc();
  type metadata accessor for MainActor();
  v4[24] = static MainActor.shared.getter();
  v10 = dispatch thunk of Actor.unownedExecutor.getter();
  v4[25] = v10;
  v4[26] = v9;

  return MEMORY[0x2822009F8](closure #1 in MediaConfigurationRoom.confirmSelection(), v10, v9);
}

uint64_t closure #1 in MediaConfigurationRoom.confirmSelection()()
{
  v1 = *(v0 + 104) + *(*(v0 + 160) + 32);
  *(v0 + 216) = *v1;
  *(v0 + 224) = *(v1 + 8);
  *(v0 + 266) = *(v1 + 16);
  *(v0 + 232) = type metadata accessor for MediaConfigurationRoomViewModel();
  *(v0 + 240) = lazy protocol witness table accessor for type MediaConfigurationRoomViewModel and conformance MediaConfigurationRoomViewModel(&lazy protocol witness table cache variable for type MediaConfigurationRoomViewModel and conformance MediaConfigurationRoomViewModel, type metadata accessor for MediaConfigurationRoomViewModel);
  *(v0 + 248) = StateObject.wrappedValue.getter();
  v2 = swift_task_alloc();
  *(v0 + 256) = v2;
  *v2 = v0;
  v2[1] = closure #1 in MediaConfigurationRoom.confirmSelection();

  return MediaConfigurationRoomViewModel.updateMediaConfiguration()();
}

{
  v1 = *v0;

  v2 = *(v1 + 208);
  v3 = *(v1 + 200);

  return MEMORY[0x2822009F8](closure #1 in MediaConfigurationRoom.confirmSelection(), v3, v2);
}

{
  v1 = *(v0 + 160);
  v2 = *(v0 + 104);

  v3 = *(StateObject.wrappedValue.getter() + OBJC_IVAR____TtC9WorkoutUI31MediaConfigurationRoomViewModel_shouldPresentNoMediaSelectionAlert);

  v4 = (v2 + *(v1 + 44));
  v5 = *v4;
  v6 = *(v4 + 1);
  *(v0 + 64) = *v4;
  *(v0 + 72) = v6;
  *(v0 + 264) = v3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI5StateVySbGMd);
  State.wrappedValue.setter();
  *(v0 + 80) = v5;
  *(v0 + 88) = v6;
  State.wrappedValue.getter();
  if ((*(v0 + 265) & 1) == 0)
  {
    v7 = *(v0 + 184);
    v8 = *(v0 + 168);
    v9 = *(v0 + 152);
    v10 = *(v0 + 128);
    v20 = *(v0 + 144);
    v21 = *(v0 + 136);
    v11 = *(v0 + 112);
    v19 = *(v0 + 120);
    v12 = *(v0 + 104);
    _sSo23FIUIWorkoutActivityTypeCMaTm_12(0, &lazy cache variable for type metadata for OS_dispatch_queue);
    v18 = static OS_dispatch_queue.main.getter();
    outlined init with copy of MediaConfigurationRoom(v12, v7);
    v13 = (*(v8 + 80) + 16) & ~*(v8 + 80);
    v14 = swift_allocObject();
    outlined init with take of MediaConfigurationRoom(v7, v14 + v13, type metadata accessor for MediaConfigurationRoom);
    *(v0 + 48) = partial apply for closure #1 in closure #1 in MediaConfigurationRoom.confirmSelection();
    *(v0 + 56) = v14;
    *(v0 + 16) = MEMORY[0x277D85DD0];
    *(v0 + 24) = 1107296256;
    *(v0 + 32) = thunk for @escaping @callee_guaranteed @Sendable () -> ();
    *(v0 + 40) = &block_descriptor_39;
    v15 = _Block_copy((v0 + 16));
    static DispatchQoS.unspecified.getter();
    *(v0 + 96) = MEMORY[0x277D84F90];
    lazy protocol witness table accessor for type MediaConfigurationRoomViewModel and conformance MediaConfigurationRoomViewModel(&lazy protocol witness table cache variable for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags, MEMORY[0x277D85198]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay8Dispatch0A13WorkItemFlagsVGMd);
    lazy protocol witness table accessor for type [MediaPlaybackConfigurationType] and conformance [A](&lazy protocol witness table cache variable for type [DispatchWorkItemFlags] and conformance [A], &_sSay8Dispatch0A13WorkItemFlagsVGMd);
    dispatch thunk of SetAlgebra.init<A>(_:)();
    MEMORY[0x20F30C1F0](0, v9, v10, v15);
    _Block_release(v15);

    (*(v19 + 8))(v10, v11);
    (*(v20 + 8))(v9, v21);
  }

  v16 = *(v0 + 8);

  return v16();
}

uint64_t closure #1 in closure #1 in closure #5 in MediaConfigurationRoom.body.getter(uint64_t a1)
{
  v15 = type metadata accessor for EnvironmentValues();
  v2 = *(v15 - 8);
  MEMORY[0x28223BE20](v15);
  v4 = &v14 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI11EnvironmentV7ContentOyAA13DismissActionV_GMd);
  MEMORY[0x28223BE20](v5);
  v7 = &v14 - v6;
  v8 = type metadata accessor for DismissAction();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  _s7SwiftUI11EnvironmentV7ContentOyAA13DismissActionV_GWOcTm_3(a1, v7, &_s7SwiftUI11EnvironmentV7ContentOyAA13DismissActionV_GMd);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    (*(v9 + 32))(v11, v7, v8);
  }

  else
  {
    static os_log_type_t.fault.getter();
    v12 = static Log.runtimeIssuesLog.getter();
    os_log(_:dso:log:_:_:)();

    EnvironmentValues.init()();
    swift_getAtKeyPath();

    (*(v2 + 8))(v4, v15);
  }

  DismissAction.callAsFunction()();
  return (*(v9 + 8))(v11, v8);
}

uint64_t MediaPlaybackConfigurationType.id.getter()
{
  if (*v0)
  {
    return 0x65536D6F74737563;
  }

  else
  {
    return 0x6174537472616D73;
  }
}

WorkoutUI::MediaPlaybackConfigurationType_optional __swiftcall MediaPlaybackConfigurationType.init(rawValue:)(Swift::String rawValue)
{
  object = rawValue._object;
  v3._countAndFlagsBits = rawValue._countAndFlagsBits;
  v4 = v1;
  v3._object = object;
  v5 = _findStringSwitchCase(cases:string:)(&outlined read-only object #0 of MediaPlaybackConfigurationType.init(rawValue:), v3);

  if (v5 == 1)
  {
    v7 = 1;
  }

  else
  {
    v7 = 2;
  }

  if (!v5)
  {
    v7 = 0;
  }

  *v4 = v7;
  return result;
}

unint64_t lazy protocol witness table accessor for type MediaPlaybackConfigurationType and conformance MediaPlaybackConfigurationType()
{
  result = lazy protocol witness table cache variable for type MediaPlaybackConfigurationType and conformance MediaPlaybackConfigurationType;
  if (!lazy protocol witness table cache variable for type MediaPlaybackConfigurationType and conformance MediaPlaybackConfigurationType)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MediaPlaybackConfigurationType and conformance MediaPlaybackConfigurationType);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type MediaPlaybackConfigurationType and conformance MediaPlaybackConfigurationType;
  if (!lazy protocol witness table cache variable for type MediaPlaybackConfigurationType and conformance MediaPlaybackConfigurationType)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MediaPlaybackConfigurationType and conformance MediaPlaybackConfigurationType);
  }

  return result;
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance MediaPlaybackConfigurationType()
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t protocol witness for Hashable.hash(into:) in conformance MediaPlaybackConfigurationType()
{
  String.hash(into:)();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance MediaPlaybackConfigurationType()
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t protocol witness for RawRepresentable.init(rawValue:) in conformance MediaPlaybackConfigurationType@<X0>(Swift::String *a1@<X0>, char *a2@<X8>)
{
  v3 = _findStringSwitchCase(cases:string:)(&outlined read-only object #0 of MediaPlaybackConfigurationType.init(rawValue:), *a1);

  if (v3 == 1)
  {
    v5 = 1;
  }

  else
  {
    v5 = 2;
  }

  if (!v3)
  {
    v5 = 0;
  }

  *a2 = v5;
  return result;
}

uint64_t protocol witness for static Equatable.== infix(_:_:) in conformance MediaPlaybackConfigurationType(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1 == 0;
  if (*a1)
  {
    v3 = 0x65536D6F74737563;
  }

  else
  {
    v3 = 0x6174537472616D73;
  }

  if (v2)
  {
    v4 = 0xEC0000006E6F6974;
  }

  else
  {
    v4 = 0xEF6E6F697463656CLL;
  }

  if (*a2)
  {
    v5 = 0x65536D6F74737563;
  }

  else
  {
    v5 = 0x6174537472616D73;
  }

  if (*a2)
  {
    v6 = 0xEF6E6F697463656CLL;
  }

  else
  {
    v6 = 0xEC0000006E6F6974;
  }

  if (v3 == v5 && v4 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  return v8 & 1;
}

uint64_t getEnumTagSinglePayload for MediaPlaybackConfigurationType(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for MediaPlaybackConfigurationType(uint64_t result, unsigned int a2, unsigned int a3)
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

uint64_t type metadata accessor for MediaConfigurationRoom()
{
  result = type metadata singleton initialization cache for MediaConfigurationRoom;
  if (!type metadata singleton initialization cache for MediaConfigurationRoom)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void type metadata completion function for MediaConfigurationRoom()
{
  _s7SwiftUI11EnvironmentVyAA13DismissActionVGMaTm_4(319, &lazy cache variable for type metadata for Environment<DismissAction>, MEMORY[0x277CDD848]);
  if (v0 <= 0x3F)
  {
    _s7SwiftUI11EnvironmentVyAA13DismissActionVGMaTm_4(319, &lazy cache variable for type metadata for Environment<LayoutDirection>, MEMORY[0x277CDFAA0]);
    if (v1 <= 0x3F)
    {
      _sSo23FIUIWorkoutActivityTypeCMaTm_12(319, &lazy cache variable for type metadata for FIUIWorkoutActivityType);
      if (v2 <= 0x3F)
      {
        type metadata accessor for MediaPlaybackStore();
        if (v3 <= 0x3F)
        {
          type metadata accessor for StateObject<MediaConfigurationRoomViewModel>();
          if (v4 <= 0x3F)
          {
            type metadata accessor for State<Bool>();
            if (v5 <= 0x3F)
            {
              swift_cvw_initStructMetadataWithLayoutString();
            }
          }
        }
      }
    }
  }
}

void _s7SwiftUI11EnvironmentVyAA13DismissActionVGMaTm_4(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = type metadata accessor for Environment();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void type metadata accessor for StateObject<MediaConfigurationRoomViewModel>()
{
  if (!lazy cache variable for type metadata for StateObject<MediaConfigurationRoomViewModel>)
  {
    type metadata accessor for MediaConfigurationRoomViewModel();
    lazy protocol witness table accessor for type MediaConfigurationRoomViewModel and conformance MediaConfigurationRoomViewModel(&lazy protocol witness table cache variable for type MediaConfigurationRoomViewModel and conformance MediaConfigurationRoomViewModel, type metadata accessor for MediaConfigurationRoomViewModel);
    v0 = type metadata accessor for StateObject();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for StateObject<MediaConfigurationRoomViewModel>);
    }
  }
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<<<opaque return type of View.alert<A, B>(_:isPresented:actions:message:)>>.0, InlineNavigationBarTitle> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<<<opaque return type of View.alert<A, B>(_:isPresented:actions:message:)>>.0, InlineNavigationBarTitle> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<<<opaque return type of View.alert<A, B>(_:isPresented:actions:message:)>>.0, InlineNavigationBarTitle> and conformance <> ModifiedContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyAA4ViewPAAE5alert_11isPresented7actions7messageQrAA18LocalizedStringKeyV_AA7BindingVySbGqd__yXEqd_0_yXEtAaDRd__AaDRd_0_r0_lFQOyAeAEAfG7contentQrAN_AA5AlertVyXEtFQOyAA4ListVys5NeverOAA05TupleE0VyAA7SectionVyAA05EmptyE0VAeAE8onChange2of7initial_Qrqd___Sbyqd___qd__tctSQRd__lFQOyAA6ToggleVyAA4TextVG_SbQo_A6_SgG_AWyAYyA_ACyAeAE11pickerStyleyQrqd__AA11PickerStyleRd__lFQOyAA6PickerVyA_SbAA7ForEachVySay07WorkoutB030MediaPlaybackConfigurationTypeOGSSAeAE3tag_15includeOptionalQrqd___SbtSHRd__lFQOyACyA6_AA012_EnvironmentM15WritingModifierVySiSgGG_SbQo_GG_AA17InlinePickerStyleVQo_A24_yAA5ColorVSgGGA9_G_AYyA6_AWyA17_05MediaD3RowVSg_ACyACyAeAE11buttonStyleyQrqd__AA20PrimitiveButtonStyleRd__lFQOyAA14NavigationLinkVyACyAA6HStackVyAWyAA6SpacerV_A6_A50_tGGAA14_PaddingLayoutVGAeAE15navigationTitleyQrqd__SyRd__lFQOyA17_11MediaPickerV_SSQo_G_AA19BorderedButtonStyleVQo_AA24_ForegroundStyleModifierVyAA22HierarchicalShapeStyleVGGA24_yAA10VisibilityOGGtGA6_GSgtGSgtGG_Qo__AA6ButtonVyA6_GAA012_ConditionalD0VyA6_A6_GQo_A17_24InlineNavigationBarTitle33_B86241820663BC1B3220D14BE7395977LLVGMd);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI4ViewPAAE5alert11isPresented7contentQrAA7BindingVySbG_AA5AlertVyXEtFQOyAA4ListVys5NeverOAA05TupleC0VyAA7SectionVyAA05EmptyC0VAcAE8onChange2of7initial_Qrqd___Sbyqd___qd__tctSQRd__lFQOyAA6ToggleVyAA4TextVG_SbQo_A0_SgG_AQyASyAuA15ModifiedContentVyAcAE11pickerStyleyQrqd__AA06PickerX0Rd__lFQOyAA0Y0VyAUSbAA7ForEachVySay07WorkoutB030MediaPlaybackConfigurationTypeOGSSAcAE3tag_15includeOptionalQrqd___SbtSHRd__lFQOyA6_yA0_AA30_EnvironmentKeyWritingModifierVySiSgGG_SbQo_GG_AA06InlineyX0VQo_A20_yAA5ColorVSgGGA3_G_ASyA0_AQyA13_05MediaV3RowVSg_A6_yA6_yAcAE06buttonX0yQrqd__AA015PrimitiveButtonX0Rd__lFQOyAA14NavigationLinkVyA6_yAA6HStackVyAQyAA6SpacerV_A0_A46_tGGAA14_PaddingLayoutVGAcAE15navigationTitleyQrqd__SyRd__lFQOyA13_05MediaY0V_SSQo_G_AA014BorderedButtonX0VQo_AA011_ForegroundX8ModifierVyAA017HierarchicalShapeX0VGGA20_yAA10VisibilityOGGtGA0_GSgtGSgtGG_Qo_Md);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI6ButtonVyAA4TextVGMd);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI19_ConditionalContentVyAA4TextVAEGMd);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI4ListVys5NeverOAA9TupleViewVyAA7SectionVyAA05EmptyF0VAA0F0PAAE8onChange2of7initial_Qrqd___Sbyqd___qd__tctSQRd__lFQOyAA6ToggleVyAA4TextVG_SbQo_ATSgG_AGyAIyAkA15ModifiedContentVyAmAE11pickerStyleyQrqd__AA06PickerR0Rd__lFQOyAA0S0VyAKSbAA7ForEachVySay07WorkoutB030MediaPlaybackConfigurationTypeOGSSAmAE3tag_15includeOptionalQrqd___SbtSHRd__lFQOyAZyAtA30_EnvironmentKeyWritingModifierVySiSgGG_SbQo_GG_AA06InlinesR0VQo_A12_yAA5ColorVSgGGAWG_AIyAtGyA5_0wP3RowVSg_AZyAZyAmAE06buttonR0yQrqd__AA015PrimitiveButtonR0Rd__lFQOyAA14NavigationLinkVyAZyAA6HStackVyAGyAA6SpacerV_ATA38_tGGAA14_PaddingLayoutVGAmAE15navigationTitleyQrqd__SyRd__lFQOyA5_0wS0V_SSQo_G_AA014BorderedButtonR0VQo_AA011_ForegroundR8ModifierVyAA017HierarchicalShapeR0VGGA12_yAA10VisibilityOGGtGATGSgtGSgtGGMd);
    lazy protocol witness table accessor for type [MediaPlaybackConfigurationType] and conformance [A](&lazy protocol witness table cache variable for type List<Never, TupleView<(Section<EmptyView, <<opaque return type of View.onChange<A>(of:initial:_:)>>.0, Text?>, TupleView<(Section<EmptyView, ModifiedContent<<<opaque return type of View.pickerStyle<A>(_:)>>.0, _EnvironmentKeyWritingModifier<Color?>>, Text?>, Section<Text, TupleView<(MediaContentRow?, ModifiedContent<ModifiedContent<<<opaque return type of View.buttonStyle<A>(_:)>>.0, _ForegroundStyleModifier<HierarchicalShapeStyle>>, _EnvironmentKeyWritingModifier<Visibility>>)>, Text>?)>?)>> and conformance List<A, B>, &_s7SwiftUI4ListVys5NeverOAA9TupleViewVyAA7SectionVyAA05EmptyF0VAA0F0PAAE8onChange2of7initial_Qrqd___Sbyqd___qd__tctSQRd__lFQOyAA6ToggleVyAA4TextVG_SbQo_ATSgG_AGyAIyAkA15ModifiedContentVyAmAE11pickerStyleyQrqd__AA06PickerR0Rd__lFQOyAA0S0VyAKSbAA7ForEachVySay07WorkoutB030MediaPlaybackConfigurationTypeOGSSAmAE3tag_15includeOptionalQrqd___SbtSHRd__lFQOyAZyAtA30_EnvironmentKeyWritingModifierVySiSgGG_SbQo_GG_AA06InlinesR0VQo_A12_yAA5ColorVSgGGAWG_AIyAtGyA5_0wP3RowVSg_AZyAZyAmAE06buttonR0yQrqd__AA015PrimitiveButtonR0Rd__lFQOyAA14NavigationLinkVyAZyAA6HStackVyAGyAA6SpacerV_ATA38_tGGAA14_PaddingLayoutVGAmAE15navigationTitleyQrqd__SyRd__lFQOyA5_0wS0V_SSQo_G_AA014BorderedButtonR0VQo_AA011_ForegroundR8ModifierVyAA017HierarchicalShapeR0VGGA12_yAA10VisibilityOGGtGATGSgtGSgtGGMd);
    swift_getOpaqueTypeConformance2();
    lazy protocol witness table accessor for type [MediaPlaybackConfigurationType] and conformance [A](&lazy protocol witness table cache variable for type Button<Text> and conformance Button<A>, &_s7SwiftUI6ButtonVyAA4TextVGMd);
    lazy protocol witness table accessor for type _ConditionalContent<Text, Text> and conformance <> _ConditionalContent<A, B>();
    swift_getOpaqueTypeConformance2();
    lazy protocol witness table accessor for type InlineNavigationBarTitle and conformance InlineNavigationBarTitle();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<<<opaque return type of View.alert<A, B>(_:isPresented:actions:message:)>>.0, InlineNavigationBarTitle> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<ModifiedContent<<<opaque return type of View.contentMargins(_:_:for:)>>.0, _EnvironmentKeyWritingModifier<CGFloat?>>, _TraitWritingModifier<ListSectionSpacingTraitKey>>, _EnvironmentKeyWritingModifier<ListSectionSpacing?>> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<<<opaque return type of View.contentMargins(_:_:for:)>>.0, _EnvironmentKeyWritingModifier<CGFloat?>>, _TraitWritingModifier<ListSectionSpacingTraitKey>>, _EnvironmentKeyWritingModifier<ListSectionSpacing?>> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<<<opaque return type of View.contentMargins(_:_:for:)>>.0, _EnvironmentKeyWritingModifier<CGFloat?>>, _TraitWritingModifier<ListSectionSpacingTraitKey>>, _EnvironmentKeyWritingModifier<ListSectionSpacing?>> and conformance <> ModifiedContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyACyACyAA4ViewPAAE14contentMargins__3forQrAA4EdgeO3SetV_12CoreGraphics7CGFloatVSgAA0D15MarginPlacementVtFQOyACyAeAE5alert_11isPresented7actions7messageQrAA18LocalizedStringKeyV_AA7BindingVySbGqd__yXEqd_0_yXEtAaDRd__AaDRd_0_r0_lFQOyAeAEArS0F0QrAZ_AA5AlertVyXEtFQOyAA4ListVys5NeverOAA05TupleE0VyAA7SectionVyAA05EmptyE0VAeAE8onChange2of7initial_Qrqd___Sbyqd___qd__tctSQRd__lFQOyAA6ToggleVyAA4TextVG_SbQo_A18_SgG_A7_yA9_yA11_ACyAeAE11pickerStyleyQrqd__AA11PickerStyleRd__lFQOyAA6PickerVyA11_SbAA7ForEachVySay07WorkoutB030MediaPlaybackConfigurationTypeOGSSAeAE3tag_15includeOptionalQrqd___SbtSHRd__lFQOyACyA18_AA012_EnvironmentW15WritingModifierVySiSgGG_SbQo_GG_AA17InlinePickerStyleVQo_A36_yAA5ColorVSgGGA21_G_A9_yA18_A7_yA29_05MediaD3RowVSg_ACyACyAeAE11buttonStyleyQrqd__AA20PrimitiveButtonStyleRd__lFQOyAA14NavigationLinkVyACyAA6HStackVyA7_yAA6SpacerV_A18_A62_tGGAA14_PaddingLayoutVGAeAE15navigationTitleyQrqd__SyRd__lFQOyA29_11MediaPickerV_SSQo_G_AA19BorderedButtonStyleVQo_AA24_ForegroundStyleModifierVyAA22HierarchicalShapeStyleVGGA36_yAA10VisibilityOGGtGA18_GSgtGSgtGG_Qo__AA6ButtonVyA18_GAA012_ConditionalD0VyA18_A18_GQo_A29_24InlineNavigationBarTitle33_B86241820663BC1B3220D14BE7395977LLVG_Qo_A36_yAOGGAA21_TraitWritingModifierVyAA0z19SectionSpacingTraitW0VGGA36_yAA0Z14SectionSpacingVSgGGMd);
    lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<<<opaque return type of View.contentMargins(_:_:for:)>>.0, _EnvironmentKeyWritingModifier<CGFloat?>>, _TraitWritingModifier<ListSectionSpacingTraitKey>> and conformance <> ModifiedContent<A, B>();
    lazy protocol witness table accessor for type [MediaPlaybackConfigurationType] and conformance [A](&lazy protocol witness table cache variable for type _EnvironmentKeyWritingModifier<ListSectionSpacing?> and conformance _EnvironmentKeyWritingModifier<A>, &_s7SwiftUI30_EnvironmentKeyWritingModifierVyAA18ListSectionSpacingVSgGMd);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<<<opaque return type of View.contentMargins(_:_:for:)>>.0, _EnvironmentKeyWritingModifier<CGFloat?>>, _TraitWritingModifier<ListSectionSpacingTraitKey>>, _EnvironmentKeyWritingModifier<ListSectionSpacing?>> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<<<opaque return type of View.contentMargins(_:_:for:)>>.0, _EnvironmentKeyWritingModifier<CGFloat?>>, _TraitWritingModifier<ListSectionSpacingTraitKey>> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<<<opaque return type of View.contentMargins(_:_:for:)>>.0, _EnvironmentKeyWritingModifier<CGFloat?>>, _TraitWritingModifier<ListSectionSpacingTraitKey>> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<<<opaque return type of View.contentMargins(_:_:for:)>>.0, _EnvironmentKeyWritingModifier<CGFloat?>>, _TraitWritingModifier<ListSectionSpacingTraitKey>> and conformance <> ModifiedContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyACyAA4ViewPAAE14contentMargins__3forQrAA4EdgeO3SetV_12CoreGraphics7CGFloatVSgAA0D15MarginPlacementVtFQOyACyAeAE5alert_11isPresented7actions7messageQrAA18LocalizedStringKeyV_AA7BindingVySbGqd__yXEqd_0_yXEtAaDRd__AaDRd_0_r0_lFQOyAeAEArS0F0QrAZ_AA5AlertVyXEtFQOyAA4ListVys5NeverOAA05TupleE0VyAA7SectionVyAA05EmptyE0VAeAE8onChange2of7initial_Qrqd___Sbyqd___qd__tctSQRd__lFQOyAA6ToggleVyAA4TextVG_SbQo_A18_SgG_A7_yA9_yA11_ACyAeAE11pickerStyleyQrqd__AA11PickerStyleRd__lFQOyAA6PickerVyA11_SbAA7ForEachVySay07WorkoutB030MediaPlaybackConfigurationTypeOGSSAeAE3tag_15includeOptionalQrqd___SbtSHRd__lFQOyACyA18_AA012_EnvironmentW15WritingModifierVySiSgGG_SbQo_GG_AA17InlinePickerStyleVQo_A36_yAA5ColorVSgGGA21_G_A9_yA18_A7_yA29_05MediaD3RowVSg_ACyACyAeAE11buttonStyleyQrqd__AA20PrimitiveButtonStyleRd__lFQOyAA14NavigationLinkVyACyAA6HStackVyA7_yAA6SpacerV_A18_A62_tGGAA14_PaddingLayoutVGAeAE15navigationTitleyQrqd__SyRd__lFQOyA29_11MediaPickerV_SSQo_G_AA19BorderedButtonStyleVQo_AA24_ForegroundStyleModifierVyAA22HierarchicalShapeStyleVGGA36_yAA10VisibilityOGGtGA18_GSgtGSgtGG_Qo__AA6ButtonVyA18_GAA012_ConditionalD0VyA18_A18_GQo_A29_24InlineNavigationBarTitle33_B86241820663BC1B3220D14BE7395977LLVG_Qo_A36_yAOGGAA21_TraitWritingModifierVyAA0z19SectionSpacingTraitW0VGGMd);
    lazy protocol witness table accessor for type ModifiedContent<<<opaque return type of View.contentMargins(_:_:for:)>>.0, _EnvironmentKeyWritingModifier<CGFloat?>> and conformance <> ModifiedContent<A, B>();
    lazy protocol witness table accessor for type [MediaPlaybackConfigurationType] and conformance [A](&lazy protocol witness table cache variable for type _TraitWritingModifier<ListSectionSpacingTraitKey> and conformance _TraitWritingModifier<A>, &_s7SwiftUI21_TraitWritingModifierVyAA018ListSectionSpacingC3KeyVGMd);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<<<opaque return type of View.contentMargins(_:_:for:)>>.0, _EnvironmentKeyWritingModifier<CGFloat?>>, _TraitWritingModifier<ListSectionSpacingTraitKey>> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<<<opaque return type of View.contentMargins(_:_:for:)>>.0, _EnvironmentKeyWritingModifier<CGFloat?>> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<<<opaque return type of View.contentMargins(_:_:for:)>>.0, _EnvironmentKeyWritingModifier<CGFloat?>> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<<<opaque return type of View.contentMargins(_:_:for:)>>.0, _EnvironmentKeyWritingModifier<CGFloat?>> and conformance <> ModifiedContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyAA4ViewPAAE14contentMargins__3forQrAA4EdgeO3SetV_12CoreGraphics7CGFloatVSgAA0D15MarginPlacementVtFQOyACyAeAE5alert_11isPresented7actions7messageQrAA18LocalizedStringKeyV_AA7BindingVySbGqd__yXEqd_0_yXEtAaDRd__AaDRd_0_r0_lFQOyAeAEArS0F0QrAZ_AA5AlertVyXEtFQOyAA4ListVys5NeverOAA05TupleE0VyAA7SectionVyAA05EmptyE0VAeAE8onChange2of7initial_Qrqd___Sbyqd___qd__tctSQRd__lFQOyAA6ToggleVyAA4TextVG_SbQo_A18_SgG_A7_yA9_yA11_ACyAeAE11pickerStyleyQrqd__AA11PickerStyleRd__lFQOyAA6PickerVyA11_SbAA7ForEachVySay07WorkoutB030MediaPlaybackConfigurationTypeOGSSAeAE3tag_15includeOptionalQrqd___SbtSHRd__lFQOyACyA18_AA012_EnvironmentW15WritingModifierVySiSgGG_SbQo_GG_AA17InlinePickerStyleVQo_A36_yAA5ColorVSgGGA21_G_A9_yA18_A7_yA29_05MediaD3RowVSg_ACyACyAeAE11buttonStyleyQrqd__AA20PrimitiveButtonStyleRd__lFQOyAA14NavigationLinkVyACyAA6HStackVyA7_yAA6SpacerV_A18_A62_tGGAA14_PaddingLayoutVGAeAE15navigationTitleyQrqd__SyRd__lFQOyA29_11MediaPickerV_SSQo_G_AA19BorderedButtonStyleVQo_AA24_ForegroundStyleModifierVyAA22HierarchicalShapeStyleVGGA36_yAA10VisibilityOGGtGA18_GSgtGSgtGG_Qo__AA6ButtonVyA18_GAA012_ConditionalD0VyA18_A18_GQo_A29_24InlineNavigationBarTitle33_B86241820663BC1B3220D14BE7395977LLVG_Qo_A36_yAOGGMd);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyAA4ViewPAAE5alert_11isPresented7actions7messageQrAA18LocalizedStringKeyV_AA7BindingVySbGqd__yXEqd_0_yXEtAaDRd__AaDRd_0_r0_lFQOyAeAEAfG7contentQrAN_AA5AlertVyXEtFQOyAA4ListVys5NeverOAA05TupleE0VyAA7SectionVyAA05EmptyE0VAeAE8onChange2of7initial_Qrqd___Sbyqd___qd__tctSQRd__lFQOyAA6ToggleVyAA4TextVG_SbQo_A6_SgG_AWyAYyA_ACyAeAE11pickerStyleyQrqd__AA11PickerStyleRd__lFQOyAA6PickerVyA_SbAA7ForEachVySay07WorkoutB030MediaPlaybackConfigurationTypeOGSSAeAE3tag_15includeOptionalQrqd___SbtSHRd__lFQOyACyA6_AA012_EnvironmentM15WritingModifierVySiSgGG_SbQo_GG_AA17InlinePickerStyleVQo_A24_yAA5ColorVSgGGA9_G_AYyA6_AWyA17_05MediaD3RowVSg_ACyACyAeAE11buttonStyleyQrqd__AA20PrimitiveButtonStyleRd__lFQOyAA14NavigationLinkVyACyAA6HStackVyAWyAA6SpacerV_A6_A50_tGGAA14_PaddingLayoutVGAeAE15navigationTitleyQrqd__SyRd__lFQOyA17_11MediaPickerV_SSQo_G_AA19BorderedButtonStyleVQo_AA24_ForegroundStyleModifierVyAA22HierarchicalShapeStyleVGGA24_yAA10VisibilityOGGtGA6_GSgtGSgtGG_Qo__AA6ButtonVyA6_GAA012_ConditionalD0VyA6_A6_GQo_A17_24InlineNavigationBarTitle33_B86241820663BC1B3220D14BE7395977LLVGMd);
    lazy protocol witness table accessor for type ModifiedContent<<<opaque return type of View.alert<A, B>(_:isPresented:actions:message:)>>.0, InlineNavigationBarTitle> and conformance <> ModifiedContent<A, B>();
    swift_getOpaqueTypeConformance2();
    lazy protocol witness table accessor for type [MediaPlaybackConfigurationType] and conformance [A](&lazy protocol witness table cache variable for type _EnvironmentKeyWritingModifier<CGFloat?> and conformance _EnvironmentKeyWritingModifier<A>, &_s7SwiftUI30_EnvironmentKeyWritingModifierVy12CoreGraphics7CGFloatVSgGMd);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<<<opaque return type of View.contentMargins(_:_:for:)>>.0, _EnvironmentKeyWritingModifier<CGFloat?>> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

uint64_t outlined init with copy of MediaConfigurationRoom(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for MediaConfigurationRoom();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t partial apply for closure #1 in MediaConfigurationRoom.confirmSelection()(uint64_t a1)
{
  v4 = *(type metadata accessor for MediaConfigurationRoom() - 8);
  v5 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v6 = *(v1 + 16);
  v7 = *(v1 + 24);
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = partial apply for closure #1 in MediaConfigurationRoom.confirmSelection();

  return closure #1 in MediaConfigurationRoom.confirmSelection()(a1, v6, v7, v1 + v5);
}

uint64_t partial apply for closure #1 in MediaConfigurationRoom.confirmSelection()()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t _sSo23FIUIWorkoutActivityTypeCMaTm_12(uint64_t a1, unint64_t *a2)
{
  result = *a2;
  if (!*a2)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, a2);
  }

  return result;
}

uint64_t block_copy_helper_39(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t partial apply for closure #1 in closure #2 in closure #5 in MediaConfigurationRoom.body.getter(uint64_t (*a1)(uint64_t))
{
  v2 = *(type metadata accessor for MediaConfigurationRoom() - 8);
  v3 = v1 + ((*(v2 + 80) + 16) & ~*(v2 + 80));

  return a1(v3);
}

uint64_t lazy protocol witness table accessor for type MediaConfigurationRoomViewModel and conformance MediaConfigurationRoomViewModel(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t _s7SwiftUI11EnvironmentV7ContentOyAA13DismissActionV_GWOcTm_3(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(a3);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t outlined init with copy of TupleView<(Section<EmptyView, ModifiedContent<<<opaque return type of View.pickerStyle<A>(_:)>>.0, _EnvironmentKeyWritingModifier<Color?>>, Text?>, Section<Text, TupleView<(MediaContentRow?, ModifiedContent<ModifiedContent<<<opaque return type of View.buttonStyle<A>(_:)>>.0, _ForegroundStyleModifier<HierarchicalShapeStyle>>, _EnvironmentKeyWritingModifier<Visibility>>)>, Text>?)>?(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(a3);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t outlined destroy of ModifiedContent<<<opaque return type of View.alert<A, B>(_:isPresented:actions:message:)>>.0, InlineNavigationBarTitle>(uint64_t a1, uint64_t *a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(a2);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t _s11WorkoutCore0A15MediaSuggestionVSgWOhTm_1(uint64_t a1, uint64_t *a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(a2);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t outlined init with take of MediaConfigurationRoom(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t outlined destroy of MediaPicker(uint64_t a1)
{
  v2 = type metadata accessor for MediaPicker();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t lazy protocol witness table accessor for type ForEach<[MediaPlaybackConfigurationType], String, <<opaque return type of View.tag<A>(_:includeOptional:)>>.0> and conformance <> ForEach<A, B, C>()
{
  result = lazy protocol witness table cache variable for type ForEach<[MediaPlaybackConfigurationType], String, <<opaque return type of View.tag<A>(_:includeOptional:)>>.0> and conformance <> ForEach<A, B, C>;
  if (!lazy protocol witness table cache variable for type ForEach<[MediaPlaybackConfigurationType], String, <<opaque return type of View.tag<A>(_:includeOptional:)>>.0> and conformance <> ForEach<A, B, C>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI7ForEachVySay07WorkoutB030MediaPlaybackConfigurationTypeOGSSAA4ViewPAAE3tag_15includeOptionalQrqd___SbtSHRd__lFQOyAA15ModifiedContentVyAA4TextVAA30_EnvironmentKeyWritingModifierVySiSgGG_SbQo_GMd);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyAA4TextVAA30_EnvironmentKeyWritingModifierVySiSgGGMd);
    lazy protocol witness table accessor for type ModifiedContent<Text, _EnvironmentKeyWritingModifier<Int?>> and conformance <> ModifiedContent<A, B>();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ForEach<[MediaPlaybackConfigurationType], String, <<opaque return type of View.tag<A>(_:includeOptional:)>>.0> and conformance <> ForEach<A, B, C>);
  }

  return result;
}

uint64_t lazy protocol witness table accessor for type [MediaPlaybackConfigurationType] and conformance [A](unint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t objectdestroyTm_84()
{
  v1 = type metadata accessor for MediaConfigurationRoom();
  v2 = (*(*(v1 - 8) + 80) + 16) & ~*(*(v1 - 8) + 80);
  v3 = v0 + v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI11EnvironmentV7ContentOyAA13DismissActionV_GMd);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v4 = type metadata accessor for DismissAction();
    (*(*(v4 - 8) + 8))(v0 + v2, v4);
  }

  else
  {
  }

  v5 = *(v1 + 20);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI11EnvironmentV7ContentOyAA15LayoutDirectionO_GMd);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v6 = type metadata accessor for LayoutDirection();
    (*(*(v6 - 8) + 8))(v3 + v5, v6);
  }

  else
  {
  }

  outlined consume of StateObject<MediaConfigurationRoomViewModel>.Storage();

  return swift_deallocObject();
}

uint64_t partial apply for closure #2 in closure #1 in closure #1 in MediaConfigurationRoom.body.getter(uint64_t a1, _BYTE *a2)
{
  type metadata accessor for MediaConfigurationRoom();

  return closure #2 in closure #1 in closure #1 in MediaConfigurationRoom.body.getter(a1, a2);
}

void WorkoutBuddyInSessionTitleView.init(metricsPublisher:)(void *a1@<X0>, uint64_t *a2@<X8>)
{
  MetricsPublisher.workoutBuddyStatePublisher.getter();
  type metadata accessor for WorkoutBuddyStatePublisher();
  lazy protocol witness table accessor for type WorkoutBuddyStatePublisher and conformance WorkoutBuddyStatePublisher(&lazy protocol witness table cache variable for type WorkoutBuddyStatePublisher and conformance WorkoutBuddyStatePublisher, MEMORY[0x277D7DBD0]);
  v4 = ObservedObject.init(wrappedValue:)();
  v6 = v5;

  *a2 = v4;
  a2[1] = v6;
}

uint64_t WorkoutBuddyInSessionTitleView.body.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = type metadata accessor for WorkoutBuddyStatusView();
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v8 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);

  WorkoutBuddyStatePublisher.state.getter();

  *v4 = swift_getKeyPath();
  v4[8] = 0;

  v5 = WorkoutBuddyStatePublisher.supportsWorkoutBuddy.getter();

  if (v5)
  {
    v6 = 1.0;
  }

  else
  {
    v6 = 0.0;
  }

  outlined init with take of WorkoutBuddyStatusView(v4, a1);
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVy07WorkoutB00E15BuddyStatusViewVAA14_OpacityEffectVGMd);
  *(a1 + *(result + 36)) = v6;
  return result;
}

uint64_t protocol witness for View.body.getter in conformance WorkoutBuddyInSessionTitleView@<X0>(uint64_t a1@<X8>)
{
  v2 = type metadata accessor for WorkoutBuddyStatusView();
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v8 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);

  WorkoutBuddyStatePublisher.state.getter();

  *v4 = swift_getKeyPath();
  v4[8] = 0;

  v5 = WorkoutBuddyStatePublisher.supportsWorkoutBuddy.getter();

  if (v5)
  {
    v6 = 1.0;
  }

  else
  {
    v6 = 0.0;
  }

  outlined init with take of WorkoutBuddyStatusView(v4, a1);
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVy07WorkoutB00E15BuddyStatusViewVAA14_OpacityEffectVGMd);
  *(a1 + *(result + 36)) = v6;
  return result;
}

uint64_t outlined init with take of WorkoutBuddyStatusView(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for WorkoutBuddyStatusView();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t getEnumTagSinglePayload for WorkoutBuddyInSessionTitleView(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 16))
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

uint64_t storeEnumTagSinglePayload for WorkoutBuddyInSessionTitleView(uint64_t result, int a2, int a3)
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
      *(result + 8) = (a2 - 1);
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

unint64_t lazy protocol witness table accessor for type ModifiedContent<WorkoutBuddyStatusView, _OpacityEffect> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<WorkoutBuddyStatusView, _OpacityEffect> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<WorkoutBuddyStatusView, _OpacityEffect> and conformance <> ModifiedContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVy07WorkoutB00E15BuddyStatusViewVAA14_OpacityEffectVGMd);
    lazy protocol witness table accessor for type WorkoutBuddyStatePublisher and conformance WorkoutBuddyStatePublisher(&lazy protocol witness table cache variable for type WorkoutBuddyStatusView and conformance WorkoutBuddyStatusView, type metadata accessor for WorkoutBuddyStatusView);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<WorkoutBuddyStatusView, _OpacityEffect> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

uint64_t lazy protocol witness table accessor for type WorkoutBuddyStatePublisher and conformance WorkoutBuddyStatePublisher(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t WorkoutConfigurationDataSourceModifier.init(workoutConfiguration:canUpdateConfiguration:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char a4@<W3>, uint64_t a5@<X8>)
{
  type metadata accessor for WorkoutConfigurationDataSource();
  lazy protocol witness table accessor for type WorkoutConfigurationDataSource and conformance WorkoutConfigurationDataSource();
  result = EnvironmentObject.init()();
  *a5 = result;
  *(a5 + 8) = v11;
  *(a5 + 16) = a1;
  *(a5 + 24) = a2;
  *(a5 + 32) = a3;
  *(a5 + 40) = a4;
  return result;
}

unint64_t lazy protocol witness table accessor for type WorkoutConfigurationDataSource and conformance WorkoutConfigurationDataSource()
{
  result = lazy protocol witness table cache variable for type WorkoutConfigurationDataSource and conformance WorkoutConfigurationDataSource;
  if (!lazy protocol witness table cache variable for type WorkoutConfigurationDataSource and conformance WorkoutConfigurationDataSource)
  {
    type metadata accessor for WorkoutConfigurationDataSource();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type WorkoutConfigurationDataSource and conformance WorkoutConfigurationDataSource);
  }

  return result;
}

uint64_t WorkoutConfigurationDataSourceModifier.body(content:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = v2[1];
  v12 = *v2;
  v13[0] = v5;
  *(v13 + 9) = *(v2 + 25);
  v6 = swift_allocObject();
  v7 = v2[1];
  v6[1] = *v2;
  v6[2] = v7;
  *(v6 + 41) = *(v2 + 25);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI21_ViewModifier_ContentVy07WorkoutB00f23ConfigurationDataSourceD0VGMd);
  (*(*(v8 - 8) + 16))(a2, a1, v8);
  v9 = (a2 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyAA014_ViewModifier_D0Vy07WorkoutB00g23ConfigurationDataSourceF0VGAA017_AppearanceActionF0VGMd) + 36));
  *v9 = 0;
  v9[1] = 0;
  v9[2] = partial apply for closure #1 in WorkoutConfigurationDataSourceModifier.body(content:);
  v9[3] = v6;
  return outlined init with copy of WorkoutConfigurationDataSourceModifier(&v12, &v11);
}

void closure #1 in WorkoutConfigurationDataSourceModifier.body(content:)(uint64_t a1)
{
  v13 = *(a1 + 24);
  v14 = *(a1 + 40);
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI7BindingVySbGMd);
  MEMORY[0x20F30B100](&v12, v2);
  if (v12 == 1)
  {
    v3 = *(a1 + 16);
    valid = dispatch thunk of WorkoutConfiguration.isValidConfiguration.getter();
    v5 = *a1;
    if (valid)
    {
      if (v5)
      {
        v6 = v5;
        v7 = WorkoutConfigurationDataSource.workoutConfigurations.getter();

        *&v13 = v3;
        MEMORY[0x28223BE20](v8);
        v11[2] = &v13;
        v9 = specialized Sequence.contains(where:)(_sSTsSQ7ElementRpzrlE8containsySbABFSbABXEfU_Say11WorkoutCore0C13ConfigurationCG_TG5TA_0, v11, v7);

        if ((v9 & 1) == 0)
        {
          return;
        }

        v10 = v6;
        WorkoutConfigurationDataSource.save(workoutConfiguration:)();
        goto LABEL_8;
      }
    }

    else if (v5)
    {
      v10 = v5;
      WorkoutConfigurationDataSource.invalidate(workoutConfiguration:)();
LABEL_8:

      return;
    }

    type metadata accessor for WorkoutConfigurationDataSource();
    lazy protocol witness table accessor for type WorkoutConfigurationDataSource and conformance WorkoutConfigurationDataSource();
    EnvironmentObject.error()();
    __break(1u);
  }
}

uint64_t protocol witness for ViewModifier.body(content:) in conformance WorkoutConfigurationDataSourceModifier@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = v2[1];
  v12 = *v2;
  v13[0] = v5;
  *(v13 + 9) = *(v2 + 25);
  v6 = swift_allocObject();
  v7 = v2[1];
  v6[1] = *v2;
  v6[2] = v7;
  *(v6 + 41) = *(v2 + 25);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI21_ViewModifier_ContentVy07WorkoutB00f23ConfigurationDataSourceD0VGMd);
  (*(*(v8 - 8) + 16))(a2, a1, v8);
  v9 = (a2 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyAA014_ViewModifier_D0Vy07WorkoutB00g23ConfigurationDataSourceF0VGAA017_AppearanceActionF0VGMd) + 36));
  *v9 = 0;
  v9[1] = 0;
  v9[2] = closure #1 in WorkoutConfigurationDataSourceModifier.body(content:)partial apply;
  v9[3] = v6;
  return outlined init with copy of WorkoutConfigurationDataSourceModifier(&v12, &v11);
}

uint64_t getEnumTagSinglePayload for WorkoutConfigurationDataSourceModifier(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 41))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 16);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t storeEnumTagSinglePayload for WorkoutConfigurationDataSourceModifier(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 40) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 41) = 1;
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
      *(result + 16) = (a2 - 1);
      return result;
    }

    *(result + 41) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<_ViewModifier_Content<WorkoutConfigurationDataSourceModifier>, _AppearanceActionModifier> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<_ViewModifier_Content<WorkoutConfigurationDataSourceModifier>, _AppearanceActionModifier> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<_ViewModifier_Content<WorkoutConfigurationDataSourceModifier>, _AppearanceActionModifier> and conformance <> ModifiedContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyAA014_ViewModifier_D0Vy07WorkoutB00g23ConfigurationDataSourceF0VGAA017_AppearanceActionF0VGMd);
    lazy protocol witness table accessor for type _ViewModifier_Content<WorkoutConfigurationDataSourceModifier> and conformance _ViewModifier_Content<A>();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<_ViewModifier_Content<WorkoutConfigurationDataSourceModifier>, _AppearanceActionModifier> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type _ViewModifier_Content<WorkoutConfigurationDataSourceModifier> and conformance _ViewModifier_Content<A>()
{
  result = lazy protocol witness table cache variable for type _ViewModifier_Content<WorkoutConfigurationDataSourceModifier> and conformance _ViewModifier_Content<A>;
  if (!lazy protocol witness table cache variable for type _ViewModifier_Content<WorkoutConfigurationDataSourceModifier> and conformance _ViewModifier_Content<A>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI21_ViewModifier_ContentVy07WorkoutB00f23ConfigurationDataSourceD0VGMd);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type _ViewModifier_Content<WorkoutConfigurationDataSourceModifier> and conformance _ViewModifier_Content<A>);
  }

  return result;
}

uint64_t objectdestroyTm_85()
{

  return swift_deallocObject();
}

uint64_t static ViewBuilder.buildEither<A, B>(first:)(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for _ConditionalContent.Storage();
  v5 = MEMORY[0x28223BE20](v4);
  (*(*(a2 - 8) + 16))(&v8 - v6, a1, a2, v5);
  swift_storeEnumTagMultiPayload();
  return _ConditionalContent<>.init(storage:)();
}

uint64_t static ViewBuilder.buildEither<A, B>(second:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = type metadata accessor for _ConditionalContent.Storage();
  v6 = MEMORY[0x28223BE20](v5);
  (*(*(a3 - 8) + 16))(&v9 - v7, a1, a3, v6);
  swift_storeEnumTagMultiPayload();
  return _ConditionalContent<>.init(storage:)();
}

void __swiftcall MetricTextDescriptor.init(value:unit:description:stale:includesSlashes:accessibilityLabel:)(WorkoutUI::MetricTextDescriptor *__return_ptr retstr, Swift::String value, Swift::String_optional unit, Swift::String_optional description, Swift::Bool stale, Swift::Bool includesSlashes, Swift::String_optional accessibilityLabel)
{
  retstr->value = value;
  retstr->unit = unit;
  retstr->description = description;
  retstr->stale = stale;
  retstr->includesSlashes = includesSlashes;
  retstr->accessibilityLabel = accessibilityLabel;
}

void __swiftcall MetricText.init(_:)(WorkoutUI::MetricText *__return_ptr retstr, WorkoutUI::MetricTextDescriptor *a2)
{
  v2 = *&a2->stale;
  retstr->descriptor.description = a2->description;
  *&retstr->descriptor.stale = v2;
  retstr->descriptor.accessibilityLabel.value._object = a2->accessibilityLabel.value._object;
  unit = a2->unit;
  retstr->descriptor.value = a2->value;
  retstr->descriptor.unit = unit;
}

uint64_t key path setter for EnvironmentValues.legibilityWeight : EnvironmentValues(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI16LegibilityWeightOSgMd);
  MEMORY[0x28223BE20](v2 - 8);
  outlined init with copy of LegibilityWeight?(a1, &v5 - v3, &_s7SwiftUI16LegibilityWeightOSgMd);
  return EnvironmentValues.legibilityWeight.setter();
}

void __swiftcall MetricText.init(value:unit:description:stale:includesSlashes:)(WorkoutUI::MetricText *__return_ptr retstr, Swift::String value, Swift::String_optional unit, Swift::String_optional description, Swift::Bool stale, Swift::Bool includesSlashes)
{
  retstr->descriptor.value = value;
  retstr->descriptor.unit = unit;
  retstr->descriptor.description = description;
  retstr->descriptor.stale = stale;
  retstr->descriptor.includesSlashes = includesSlashes;
  retstr->descriptor.accessibilityLabel.value._countAndFlagsBits = 0;
  retstr->descriptor.accessibilityLabel.value._object = 0;
}

uint64_t MetricTextWithAccessory.init(_:accessoryAsSuffix:accessoryView:)@<X0>(uint64_t a1@<X0>, char a2@<W1>, uint64_t (*a3)(void)@<X2>, uint64_t a4@<X8>)
{
  v8 = type metadata accessor for MetricTextWithAccessory();
  v9 = v8[11];
  *(a4 + v9) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI11EnvironmentV7ContentOyAA16RedactionReasonsV_GMd);
  swift_storeEnumTagMultiPayload();
  v10 = a4 + v8[12];
  *v10 = swift_getKeyPath();
  *(v10 + 8) = 0;
  *(a4 + v8[13]) = 0x3FD6666666666666;
  *(a4 + 64) = *(a1 + 64);
  v11 = *(a1 + 48);
  *(a4 + 32) = *(a1 + 32);
  *(a4 + 48) = v11;
  v12 = *(a1 + 16);
  *a4 = *a1;
  *(a4 + 16) = v12;
  *(a4 + 72) = a2;
  return a3();
}

uint64_t MetricTextWithAccessory.init(value:unit:description:stale:includesSlashes:accessoryAsSuffix:accessoryView:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, char a7@<W6>, char a8@<W7>, uint64_t a9@<X8>, char a10, uint64_t (*a11)(void))
{
  v12[0] = a1;
  v12[1] = a2;
  v12[2] = a3;
  v12[3] = a4;
  v12[4] = a5;
  v12[5] = a6;
  v13 = a7;
  v14 = a8;
  v15 = 0;
  v16 = 0;
  return MetricTextWithAccessory.init(_:accessoryAsSuffix:accessoryView:)(v12, a10, a11, a9);
}

uint64_t MetricTextWatchOS.init(value:unit:description:accessoryAsSuffix:accessoryView:)@<X0>(void (*a1)(void)@<X0>, uint64_t (*a2)(void)@<X2>, void (*a3)(uint64_t)@<X4>, char a4@<W6>, uint64_t a5@<X7>, uint64_t a6@<X8>, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  a1();
  v13 = type metadata accessor for MetricTextWatchOS();
  v14 = a2();
  a3(v14);
  result = (*(*(a10 - 8) + 32))(a6 + *(v13 + 92), a5, a10);
  *(a6 + *(v13 + 96)) = a4;
  return result;
}

uint64_t MetricTextWatchOS.body.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v28 = a2;
  v26 = *(a1 + 16);
  type metadata accessor for ModifiedContent();
  type metadata accessor for ModifiedContent();
  v25 = *(a1 + 24);
  type metadata accessor for ModifiedContent();
  swift_getTupleTypeMetadata2();
  type metadata accessor for TupleView();
  swift_getWitnessTable();
  type metadata accessor for HStack();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI30_EnvironmentKeyWritingModifierVySiSgGMd);
  type metadata accessor for ModifiedContent();
  v24 = *(a1 + 32);
  type metadata accessor for ModifiedContent();
  type metadata accessor for ModifiedContent();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI21_TraitWritingModifierVyAA014LayoutPriorityC3KeyVGMd);
  type metadata accessor for ModifiedContent();
  type metadata accessor for ModifiedContent();
  type metadata accessor for ModifiedContent();
  v3 = *(a1 + 40);
  swift_getTupleTypeMetadata2();
  type metadata accessor for TupleView();
  swift_getTupleTypeMetadata2();
  type metadata accessor for TupleView();
  type metadata accessor for _ConditionalContent();
  swift_getTupleTypeMetadata2();
  type metadata accessor for TupleView();
  WitnessTable = swift_getWitnessTable();
  v4 = type metadata accessor for HStack();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &WitnessTable - v6;
  v8 = type metadata accessor for ModifiedContent();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &WitnessTable - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v14 = &WitnessTable - v13;
  static VerticalAlignment.lastTextBaseline.getter();
  *&v15 = v26;
  *(&v15 + 1) = v25;
  *&v16 = v24;
  *(&v16 + 1) = v3;
  v29 = v15;
  v30 = v16;
  v17 = *(a1 + 64);
  v31 = *(a1 + 48);
  v32 = v17;
  v33 = v27;
  HStack.init(alignment:spacing:content:)();
  v18 = swift_getWitnessTable();
  View.metricRow(padding:)(v4, v18, 0.0);
  (*(v5 + 8))(v7, v4);
  v19 = lazy protocol witness table accessor for type MetricRow and conformance MetricRow();
  v34 = v18;
  v35 = v19;
  v20 = swift_getWitnessTable();
  static ViewBuilder.buildExpression<A>(_:)(v11, v8, v20);
  v21 = *(v9 + 8);
  v21(v11, v8);
  static ViewBuilder.buildBlock<A>(_:)(v14, v8, v20);
  return (v21)(v14, v8);
}

void closure #1 in MetricTextWatchOS.body.getter(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10)
{
  v77 = a4;
  v78 = a8;
  v105 = a6;
  v106 = a7;
  v114 = a5;
  v104 = a1;
  v102 = a9;
  v113 = a10;
  v83 = type metadata accessor for ModifiedContent();
  v13 = type metadata accessor for ModifiedContent();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI21_TraitWritingModifierVyAA014LayoutPriorityC3KeyVGMd);
  v14 = type metadata accessor for ModifiedContent();
  v15 = type metadata accessor for ModifiedContent();
  v108 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI30_EnvironmentKeyWritingModifierVySiSgGMd);
  v16 = type metadata accessor for ModifiedContent();
  swift_getTupleTypeMetadata2();
  v17 = type metadata accessor for TupleView();
  v73[4] = *(v17 - 8);
  MEMORY[0x28223BE20](v17);
  v73[3] = v73 - v18;
  swift_getTupleTypeMetadata2();
  v19 = type metadata accessor for TupleView();
  v73[2] = *(v19 - 8);
  MEMORY[0x28223BE20](v19);
  v73[1] = v73 - v20;
  v100 = *(a5 - 8);
  MEMORY[0x28223BE20](v21);
  v96 = v73 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v23);
  v112 = v73 - v24;
  v87 = v13;
  v80 = *(v13 - 8);
  MEMORY[0x28223BE20](v25);
  v79 = v73 - v26;
  v91 = v14;
  v82 = *(v14 - 8);
  MEMORY[0x28223BE20](v27);
  v81 = v73 - v28;
  v94 = v15;
  v86 = *(v15 - 8);
  MEMORY[0x28223BE20](v29);
  v85 = v73 - v30;
  v103 = v16;
  v90 = *(v16 - 8);
  MEMORY[0x28223BE20](v31);
  v92 = v73 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v33);
  v109 = v73 - v34;
  v111 = v35;
  v101 = v17;
  v36 = type metadata accessor for _ConditionalContent();
  v98 = *(v36 - 8);
  v99 = v36;
  MEMORY[0x28223BE20](v36);
  v97 = v73 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v38);
  v110 = v73 - v39;
  v40 = a2;
  v74 = a2;
  type metadata accessor for ModifiedContent();
  type metadata accessor for ModifiedContent();
  v41 = a3;
  v75 = a3;
  type metadata accessor for ModifiedContent();
  swift_getTupleTypeMetadata2();
  type metadata accessor for TupleView();
  swift_getWitnessTable();
  v42 = type metadata accessor for HStack();
  v95 = *(v42 - 8);
  MEMORY[0x28223BE20](v42);
  v44 = v73 - v43;
  v45 = type metadata accessor for ModifiedContent();
  v107 = *(v45 - 8);
  MEMORY[0x28223BE20](v45);
  v47 = v73 - ((v46 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v48);
  v50 = v73 - v49;
  static VerticalAlignment.lastTextBaseline.getter();
  v115 = v40;
  v116 = v41;
  v52 = v77;
  v51 = v78;
  v117 = v77;
  v118 = v114;
  v119 = v105;
  v120 = v106;
  v121 = v78;
  v122 = v113;
  v123 = v104;
  HStack.init(alignment:spacing:content:)();
  WitnessTable = swift_getWitnessTable();
  View.lineLimit(_:)();
  (*(v95 + 8))(v44, v42);
  v54 = lazy protocol witness table accessor for type _AnimationModifier<Bool> and conformance _AnimationModifier<A>(&lazy protocol witness table cache variable for type _EnvironmentKeyWritingModifier<Int?> and conformance _EnvironmentKeyWritingModifier<A>, &_s7SwiftUI30_EnvironmentKeyWritingModifierVySiSgGMd);
  v144 = WitnessTable;
  v145 = v54;
  v76 = v54;
  v55 = swift_getWitnessTable();
  v108 = v50;
  v56 = v104;
  v84 = v55;
  static ViewBuilder.buildExpression<A>(_:)(v47, v45, v55);
  v57 = *(v107 + 8);
  v93 = v47;
  v95 = v45;
  v88 = v57;
  v89 = v107 + 8;
  v57(v47, v45);
  v136 = v74;
  v137 = v75;
  v138 = v52;
  v139 = v114;
  v140 = v105;
  v141 = v106;
  v142 = v51;
  v143 = v113;
  v58 = type metadata accessor for MetricTextWatchOS();
  if (*(v56 + *(v58 + 96)) == 1)
  {
    v59 = v79;
    View.metricDescriptionFont(multiline:)(1, v52, v51);
    v60 = lazy protocol witness table accessor for type MetricDescriptionCoreFont and conformance MetricDescriptionCoreFont();
    v128 = v51;
    v129 = v60;
    v61 = swift_getWitnessTable();
    v62 = lazy protocol witness table accessor for type ExtendedLineSpacingSupport and conformance ExtendedLineSpacingSupport();
    v126 = v61;
    v127 = v62;
    v63 = v87;
    v64 = swift_getWitnessTable();
    View.layoutPriority(_:)();
    (*(v80 + 8))(v59, v63);
    v65 = lazy protocol witness table accessor for type _AnimationModifier<Bool> and conformance _AnimationModifier<A>(&lazy protocol witness table cache variable for type _TraitWritingModifier<LayoutPriorityTraitKey> and conformance _TraitWritingModifier<A>, &_s7SwiftUI21_TraitWritingModifierVyAA014LayoutPriorityC3KeyVGMd);
    v124 = v64;
    v125 = v65;
    swift_getWitnessTable();
    View.bodyHyphenation()();
  }

  static ViewBuilder.buildExpression<A>(_:)(v56 + *(v58 + 92), v114, v113);
  v66 = v79;
  View.metricDescriptionFont(multiline:)(1, v52, v51);
  v67 = lazy protocol witness table accessor for type MetricDescriptionCoreFont and conformance MetricDescriptionCoreFont();
  v134 = v51;
  v135 = v67;
  v68 = swift_getWitnessTable();
  v69 = lazy protocol witness table accessor for type ExtendedLineSpacingSupport and conformance ExtendedLineSpacingSupport();
  v132 = v68;
  v133 = v69;
  v70 = v87;
  v71 = swift_getWitnessTable();
  View.layoutPriority(_:)();
  (*(v80 + 8))(v66, v70);
  v72 = lazy protocol witness table accessor for type _AnimationModifier<Bool> and conformance _AnimationModifier<A>(&lazy protocol witness table cache variable for type _TraitWritingModifier<LayoutPriorityTraitKey> and conformance _TraitWritingModifier<A>, &_s7SwiftUI21_TraitWritingModifierVyAA014LayoutPriorityC3KeyVGMd);
  v130 = v71;
  v131 = v72;
  swift_getWitnessTable();
  View.bodyHyphenation()();
}

void sub_20CA7A3F8()
{
  (*(v0[13] + 8))(v4, v1);
  v7 = lazy protocol witness table accessor for type BodyHyphenation and conformance BodyHyphenation();
  *(v6 - 232) = v5;
  *(v6 - 224) = v7;
  v8 = v0[25];
  WitnessTable = swift_getWitnessTable();
  v10 = v0[23];
  View.lineLimit(_:)();
  (*(v0[17] + 8))(v3, v8);
  v11 = v0[7];
  *(v6 - 248) = WitnessTable;
  *(v6 - 240) = v11;
  v12 = v0[34];
  v13 = swift_getWitnessTable();
  v14 = v0[40];
  static ViewBuilder.buildExpression<A>(_:)(v10, v12, v13);
  v15 = v0[21];
  v16 = *(v15 + 8);
  v0[37] = v16;
  v16(v10, v12);
  v17 = v0[31];
  v18 = v0[27];
  (*(v17 + 16))(v18, v0[43], v2);
  *(v6 - 168) = v18;
  (*(v15 + 16))(v10, v14, v12);
  *(v6 - 160) = v10;
  v0[71] = v2;
  v0[72] = v12;
  v0[69] = v0[44];
  v0[70] = v13;
  v19 = v0[3];
  static ViewBuilder.buildBlock<each A>(_:)(v6 - 168, 2uLL, (v0 + 71));
  (v0[37])(v10, v12);
  v20 = *(v17 + 8);
  v20(v18, v2);
  v21 = v0[42];
  swift_getWitnessTable();
  v22 = v0[32];
  swift_getWitnessTable();
  static ViewBuilder.buildEither<A, B>(second:)(v19, v21, v22);
  (*(v0[4] + 8))(v19, v22);
  (v0[37])(v0[40], v12);
  v20(v0[43], v0[45]);
  JUMPOUT(0x20CA7A618);
}

uint64_t closure #1 in closure #1 in MetricTextWatchOS.body.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10)
{
  v60 = a8;
  v59 = a7;
  v57 = a5;
  v56 = a4;
  v54 = a3;
  v50 = a1;
  v62 = a9;
  v55 = a10;
  v52 = type metadata accessor for ModifiedContent();
  v61 = *(v52 - 8);
  MEMORY[0x28223BE20](v52);
  v53 = &v42 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v58 = &v42 - v14;
  v46 = a2;
  v15 = type metadata accessor for ModifiedContent();
  v16 = *(v15 - 8);
  MEMORY[0x28223BE20](v15);
  v18 = &v42 - v17;
  v19 = type metadata accessor for ModifiedContent();
  v45 = *(v19 - 8);
  v20 = v45;
  MEMORY[0x28223BE20](v19);
  v22 = &v42 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v23);
  v47 = &v42 - v24;
  v43 = a6;
  View.metricValueFont(includesSlashes:smallCaps:)(0, 1, a2, a6);
  v25 = lazy protocol witness table accessor for type MetricValueFont and conformance MetricValueFont();
  v76 = a6;
  v77 = v25;
  WitnessTable = swift_getWitnessTable();
  View.fixedSize(horizontal:vertical:)();
  (*(v16 + 8))(v18, v15);
  v74 = WitnessTable;
  v75 = MEMORY[0x277CDFC48];
  v44 = v19;
  v49 = swift_getWitnessTable();
  v42 = v22;
  static ViewBuilder.buildExpression<A>(_:)(v22, v19, v49);
  v27 = *(v20 + 8);
  v48 = v20 + 8;
  v51 = v27;
  v27(v22, v19);
  v28 = v54;
  v66 = v46;
  v67 = v54;
  v68 = v56;
  v69 = v57;
  v29 = v59;
  v70 = v43;
  v71 = v59;
  v72 = v60;
  v73 = v55;
  type metadata accessor for MetricTextWatchOS();
  v30 = v53;
  View.metricUnitFont()(v28, v29);
  v31 = lazy protocol witness table accessor for type MetricUnitFont and conformance MetricUnitFont();
  v65[2] = v29;
  v65[3] = v31;
  v32 = v52;
  v33 = swift_getWitnessTable();
  v34 = v58;
  static ViewBuilder.buildExpression<A>(_:)(v30, v32, v33);
  v35 = v61;
  v36 = *(v61 + 8);
  v36(v30, v32);
  v37 = v42;
  v38 = v47;
  v39 = v44;
  (*(v45 + 16))(v42, v47, v44);
  v66 = v37;
  (*(v35 + 16))(v30, v34, v32);
  v67 = v30;
  v65[0] = v39;
  v65[1] = v32;
  v63 = v49;
  v64 = v33;
  static ViewBuilder.buildBlock<each A>(_:)(&v66, 2uLL, v65);
  v36(v34, v32);
  v40 = v51;
  v51(v38, v39);
  v36(v30, v32);
  return v40(v37, v39);
}

void MetricTextiOSPlatter.workoutViewStyle.getter(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  v5 = type metadata accessor for EnvironmentValues();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v12 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = v2 + *(a1 + 100);
  v10 = *v9;
  if (*(v9 + 8) == 1)
  {
    *a2 = v10;
  }

  else
  {

    static os_log_type_t.fault.getter();
    v11 = static Log.runtimeIssuesLog.getter();
    os_log(_:dso:log:_:_:)();

    EnvironmentValues.init()();
    swift_getAtKeyPath();
    outlined consume of Environment<WorkoutViewStyle>.Content(v10, 0);
    (*(v6 + 8))(v8, v5);
  }
}

uint64_t MetricTextiOSPlatter.init(value:unit:description:accessoryView:includesSlashes:)@<X0>(uint64_t (*a1)(void)@<X0>, uint64_t (*a2)(uint64_t)@<X2>, void (*a3)(uint64_t)@<X4>, uint64_t a4@<X6>, char a5@<W7>, uint64_t a6@<X8>, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  v11 = type metadata accessor for MetricTextiOSPlatter();
  v12 = a6 + v11[25];
  *v12 = swift_getKeyPath();
  *(v12 + 8) = 0;
  v13 = objc_opt_self();
  v14 = [v13 currentDevice];
  v15 = specialized UIDevice.screenType.getter();

  v16 = dbl_20CB893D0[v15];
  v17 = objc_opt_self();
  v18 = [v17 mainScreen];
  [v18 scale];
  v20 = v19;

  v21 = [v17 mainScreen];
  [v21 nativeScale];
  v23 = v22;

  if (v20 != v23)
  {
    v24 = [v17 mainScreen];
    [v24 scale];
    v26 = v25;

    v27 = [v17 mainScreen];
    [v27 nativeScale];
    v29 = v28;

    v16 = v16 * (v26 / v29 * 0.95);
  }

  *(a6 + v11[26]) = v16;
  v30 = [v13 currentDevice];
  v31 = specialized UIDevice.screenType.getter();

  v32 = dbl_20CB89428[v31];
  v33 = [v17 mainScreen];
  [v33 scale];
  v35 = v34;

  v36 = [v17 mainScreen];
  [v36 nativeScale];
  v38 = v37;

  if (v35 != v38)
  {
    v39 = [v17 mainScreen];
    [v39 scale];
    v41 = v40;

    v42 = [v17 mainScreen];
    [v42 nativeScale];
    v44 = v43;

    v32 = v32 * (v41 / v44 * 0.95);
  }

  *(a6 + v11[27]) = v32;
  v45 = [v13 currentDevice];
  v46 = specialized UIDevice.screenType.getter();

  v47 = dbl_20CB89480[v46];
  v48 = [v17 mainScreen];
  [v48 scale];
  v50 = v49;

  v51 = [v17 mainScreen];
  [v51 nativeScale];
  v53 = v52;

  if (v50 != v53)
  {
    v54 = [v17 mainScreen];
    [v54 scale];
    v56 = v55;

    v57 = [v17 mainScreen];
    [v57 nativeScale];
    v59 = v58;

    v47 = v47 * (v56 / v59 * 0.95);
  }

  *(a6 + v11[28]) = v47;
  v60 = a1();
  v61 = a2(v60);
  a3(v61);
  result = (*(*(v63 - 8) + 32))(a6 + v11[23], a4);
  *(a6 + v11[24]) = a5 & 1;
  return result;
}

uint64_t MetricTextiOSPlatter.body.getter@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v380 = a2;
  *&v377 = a1[2];
  v3 = type metadata accessor for ModifiedContent();
  v4 = a1[3];
  v5 = type metadata accessor for ModifiedContent();
  swift_getTupleTypeMetadata2();
  v6 = type metadata accessor for TupleView();
  WitnessTable = swift_getWitnessTable();
  v339 = v6;
  v7 = type metadata accessor for HStack();
  v8 = type metadata accessor for _ConditionalContent();
  v358 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v357 = v328 - v9;
  v399 = v7;
  v366 = *(v7 - 8);
  MEMORY[0x28223BE20](v10);
  v356 = v328 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v355 = v328 - v13;
  v565 = v3;
  *(&v377 + 1) = v4;
  v566 = type metadata accessor for ModifiedContent();
  v14 = a1[5];
  v386 = a1;
  v387 = v14;
  v15 = type metadata accessor for ModifiedContent();
  v567 = v15;
  v16 = a1[4];
  v568 = type metadata accessor for ModifiedContent();
  swift_getTupleTypeMetadata();
  v17 = type metadata accessor for TupleView();
  v336 = swift_getWitnessTable();
  v337 = v17;
  v18 = type metadata accessor for VStack();
  v365 = *(v18 - 8);
  MEMORY[0x28223BE20](v18);
  v354 = v328 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v20);
  v353 = v328 - v21;
  v565 = v3;
  v566 = v5;
  v376 = v16;
  type metadata accessor for ModifiedContent();
  v22 = type metadata accessor for ModifiedContent();
  v567 = v22;
  v568 = MEMORY[0x277CE1180];
  swift_getTupleTypeMetadata();
  v23 = type metadata accessor for TupleView();
  v334 = swift_getWitnessTable();
  v335 = v23;
  v24 = type metadata accessor for HStack();
  v384 = v18;
  v25 = type metadata accessor for _ConditionalContent();
  v352 = *(v25 - 8);
  MEMORY[0x28223BE20](v25);
  v351 = v328 - v26;
  v397 = v27;
  v400 = v8;
  v390 = type metadata accessor for _ConditionalContent();
  v371 = *(v390 - 8);
  MEMORY[0x28223BE20](v390);
  v374 = v328 - v28;
  v396 = v24;
  v364 = *(v24 - 8);
  MEMORY[0x28223BE20](v29);
  v350 = v328 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v31);
  v349 = v328 - v32;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI30_EnvironmentKeyWritingModifierVy12CoreGraphics7CGFloatVGMd);
  v565 = type metadata accessor for ModifiedContent();
  v566 = type metadata accessor for ModifiedContent();
  v567 = v15;
  v391 = v22;
  type metadata accessor for ModifiedContent();
  v568 = type metadata accessor for ModifiedContent();
  swift_getTupleTypeMetadata();
  v33 = type metadata accessor for TupleView();
  v34 = swift_getWitnessTable();
  v331 = v33;
  v332 = v34;
  v35 = type metadata accessor for ZStack();
  v333 = *(v35 - 8);
  MEMORY[0x28223BE20](v35);
  v368 = v328 - v36;
  v395 = v37;
  v38 = type metadata accessor for ModifiedContent();
  v363 = *(v38 - 8);
  MEMORY[0x28223BE20](v38);
  v344 = v328 - ((v39 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v40);
  v347 = v328 - v41;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI21_TraitWritingModifierVyAA014LayoutPriorityC3KeyVGMd);
  type metadata accessor for ModifiedContent();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI30_EnvironmentKeyWritingModifierVySiSgGMd);
  v565 = type metadata accessor for ModifiedContent();
  v566 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyAA6SpacerVAA12_FrameLayoutVGMd);
  v567 = v5;
  v568 = v15;
  swift_getTupleTypeMetadata();
  type metadata accessor for TupleView();
  swift_getWitnessTable();
  type metadata accessor for HStack();
  type metadata accessor for ModifiedContent();
  type metadata accessor for ModifiedContent();
  swift_getTupleTypeMetadata2();
  v42 = type metadata accessor for TupleView();
  v43 = swift_getWitnessTable();
  v328[1] = v42;
  v330 = v43;
  v44 = type metadata accessor for VStack();
  v45 = type metadata accessor for ModifiedContent();
  v398 = v38;
  v46 = type metadata accessor for _ConditionalContent();
  v348 = *(v46 - 8);
  MEMORY[0x28223BE20](v46);
  v359 = v328 - v47;
  v393 = v44;
  v329 = *(v44 - 8);
  MEMORY[0x28223BE20](v48);
  v367 = v328 - v49;
  v383 = v45;
  v362 = *(v45 - 8);
  MEMORY[0x28223BE20](v50);
  v346 = v328 - ((v51 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v52);
  v345 = v328 - v53;
  v54 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI6SpacerVSgMd);
  v570[0] = v54;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI21_TraitWritingModifierVyAA014LayoutPriorityC3KeyVGMd);
  type metadata accessor for ModifiedContent();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI30_EnvironmentKeyWritingModifierVyAA13TextAlignmentOGMd);
  type metadata accessor for ModifiedContent();
  v565 = type metadata accessor for ModifiedContent();
  v566 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyAA6SpacerVAA12_FrameLayoutVGMd);
  v567 = v5;
  v55 = v5;
  v56 = v387;
  v568 = v387;
  v569 = MEMORY[0x277CE1180];
  swift_getTupleTypeMetadata();
  type metadata accessor for TupleView();
  swift_getWitnessTable();
  type metadata accessor for HStack();
  type metadata accessor for ModifiedContent();
  v570[1] = type metadata accessor for ModifiedContent();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI24_ForegroundStyleModifierVyAA5ColorVGMd);
  v570[2] = type metadata accessor for ModifiedContent();
  v570[3] = v54;
  swift_getTupleTypeMetadata();
  v57 = type metadata accessor for TupleView();
  v58 = swift_getWitnessTable();
  v340 = v57;
  v341 = v58;
  v59 = type metadata accessor for VStack();
  v343 = *(v59 - 8);
  MEMORY[0x28223BE20](v59);
  v342 = v328 - v60;
  v392 = v61;
  v62 = type metadata accessor for ModifiedContent();
  v373 = *(v62 - 8);
  MEMORY[0x28223BE20](v62);
  v370 = v328 - ((v63 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v64);
  v369 = v328 - v65;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI21_TraitWritingModifierVyAA014LayoutPriorityC3KeyVGMd);
  v565 = type metadata accessor for ModifiedContent();
  v566 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyAA6SpacerVAA12_FrameLayoutVGMd);
  v567 = v55;
  v568 = v56;
  swift_getTupleTypeMetadata();
  type metadata accessor for TupleView();
  swift_getWitnessTable();
  type metadata accessor for HStack();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI24_ForegroundStyleModifierVyAA5ColorVGMd);
  type metadata accessor for ModifiedContent();
  swift_getTupleTypeMetadata3();
  type metadata accessor for TupleView();
  swift_getWitnessTable();
  v66 = type metadata accessor for HStack();
  v382 = v62;
  v67 = type metadata accessor for _ConditionalContent();
  v361 = *(v67 - 8);
  MEMORY[0x28223BE20](v67);
  v360 = v328 - v68;
  v391 = v69;
  v394 = v46;
  v70 = type metadata accessor for _ConditionalContent();
  v372 = *(v70 - 8);
  MEMORY[0x28223BE20](v70);
  v375 = v328 - v71;
  v385 = v66;
  v72 = *(v66 - 8);
  MEMORY[0x28223BE20](v73);
  v75 = v328 - ((v74 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v76);
  v78 = v328 - v77;
  v79 = type metadata accessor for _ConditionalContent();
  v378 = *(v79 - 8);
  MEMORY[0x28223BE20](v79);
  v381 = v328 - v80;
  MetricTextiOSPlatter.workoutViewStyle.getter(v386, v570);
  v379 = v79;
  v389 = v70;
  if (LOBYTE(v570[0]) <= 4u)
  {
    v328[0] = v78;
    v373 = v72;
    v113 = v367;
    v114 = v368;
    if (LOBYTE(v570[0]) == 2)
    {
      v224 = v75;
      v225 = static VerticalAlignment.lastTextBaseline.getter();
      MEMORY[0x28223BE20](v225);
      *&v226 = v376;
      v227 = v386;
      *(&v226 + 1) = v387;
      *&v328[-10] = v377;
      v323 = v226;
      v228 = *(v227 + 64);
      v324 = *(v227 + 48);
      v325 = v228;
      v326 = v388;
      v229 = v224;
      HStack.init(alignment:spacing:content:)();
      v387 = MEMORY[0x277CE1138];
      v230 = v385;
      v231 = swift_getWitnessTable();
      v232 = v328[0];
      static ViewBuilder.buildExpression<A>(_:)(v229, v230, v231);
      v233 = *(v373 + 8);
      v373 += 8;
      v388 = v233;
      v233(v229, v230);
      static ViewBuilder.buildBlock<A>(_:)(v232, v230, v231);
      v386 = MEMORY[0x277CE1198];
      v234 = swift_getWitnessTable();
      v235 = lazy protocol witness table accessor for type MetricRow and conformance MetricRow();
      v417 = v234;
      v418 = v235;
      v236 = swift_getWitnessTable();
      v237 = v360;
      static ViewBuilder.buildEither<A, B>(first:)(v229, v230);
      v415 = v231;
      v416 = v236;
      v238 = v391;
      v239 = swift_getWitnessTable();
      v413 = swift_getWitnessTable();
      v414 = MEMORY[0x277CDFC60];
      v240 = swift_getWitnessTable();
      v411 = swift_getWitnessTable();
      v412 = MEMORY[0x277CDF918];
      v241 = swift_getWitnessTable();
      v409 = v240;
      v410 = v241;
      v242 = swift_getWitnessTable();
      v243 = v375;
      static ViewBuilder.buildEither<A, B>(first:)(v237, v238);
      (*(v361 + 8))(v237, v238);
      v407 = v239;
      v408 = v242;
      v244 = v389;
      *(&v377 + 1) = swift_getWitnessTable();
      v245 = swift_getWitnessTable();
      v246 = swift_getWitnessTable();
      v405 = v245;
      v406 = v246;
      v247 = swift_getWitnessTable();
      v403 = swift_getWitnessTable();
      v404 = MEMORY[0x277CE0BC8];
      v248 = swift_getWitnessTable();
      v401 = v247;
      v402 = v248;
      v249 = v385;
      swift_getWitnessTable();
      v111 = v381;
      static ViewBuilder.buildEither<A, B>(first:)(v243, v244);
      (*(v372 + 8))(v243, v244);
      v250 = v388;
      v388(v229, v249);
      v250(v328[0], v249);
      goto LABEL_18;
    }

    if (LOBYTE(v570[0]) == 3)
    {
      MEMORY[0x28223BE20](v81);
      *&v251 = v376;
      v252 = v386;
      *(&v251 + 1) = v387;
      *&v328[-10] = v377;
      v323 = v251;
      v324 = *(v252 + 48);
      static HorizontalAlignment.center.getter();
      v253 = v113;
      VStack.init(alignment:spacing:content:)();
      v254 = static Alignment.center.getter();
      v256 = v255;
      v387 = MEMORY[0x277CE1198];
      v257 = v393;
      v258 = swift_getWitnessTable();
      v326 = v257;
      v327 = v258;
      *&v325 = v254;
      *(&v325 + 1) = v256;
      BYTE8(v324) = 1;
      *&v324 = 0;
      BYTE8(v323) = 1;
      *&v323 = 0;
      v259 = v346;
      View.frame(minWidth:idealWidth:maxWidth:minHeight:idealHeight:maxHeight:alignment:)();
      (*(v329 + 8))(v253, v257);
      v453 = v258;
      v454 = MEMORY[0x277CDFC60];
      v260 = v383;
      v261 = swift_getWitnessTable();
      v262 = v345;
      v263 = v259;
      static ViewBuilder.buildExpression<A>(_:)(v259, v260, v261);
      v264 = *(v362 + 8);
      v362 += 8;
      v388 = v264;
      v264(v259, v260);
      static ViewBuilder.buildBlock<A>(_:)(v262, v260, v261);
      v451 = swift_getWitnessTable();
      v452 = MEMORY[0x277CDF918];
      v265 = swift_getWitnessTable();
      v266 = v359;
      static ViewBuilder.buildEither<A, B>(first:)(v263, v260);
      v386 = MEMORY[0x277CE1138];
      v267 = swift_getWitnessTable();
      v268 = swift_getWitnessTable();
      v269 = lazy protocol witness table accessor for type MetricRow and conformance MetricRow();
      v449 = v268;
      v450 = v269;
      v270 = v70;
      v271 = swift_getWitnessTable();
      v447 = v267;
      v448 = v271;
      v272 = v391;
      v273 = swift_getWitnessTable();
      v445 = v261;
      v446 = v265;
      v274 = v394;
      v275 = swift_getWitnessTable();
      static ViewBuilder.buildEither<A, B>(second:)(v266, v272, v274);
      (*(v348 + 8))(v266, v274);
      v443 = v273;
      v444 = v275;
      swift_getWitnessTable();
      v276 = swift_getWitnessTable();
      v277 = swift_getWitnessTable();
      v441 = v276;
      v442 = v277;
      v278 = swift_getWitnessTable();
      v439 = swift_getWitnessTable();
      v440 = MEMORY[0x277CE0BC8];
      v279 = swift_getWitnessTable();
      v437 = v278;
      v438 = v279;
      swift_getWitnessTable();
      v111 = v381;
      v280 = v375;
      static ViewBuilder.buildEither<A, B>(first:)(v375, v270);
      (*(v372 + 8))(v280, v270);
      v281 = v388;
      v388(v346, v260);
      v281(v345, v260);
      goto LABEL_18;
    }

    v115 = v397;
    v116 = v359;
    if (LOBYTE(v570[0]) == 4)
    {
      static HorizontalAlignment.center.getter();
      v117 = static VerticalAlignment.firstTextBaseline.getter();
      MEMORY[0x28223BE20](v117);
      *&v118 = v376;
      v119 = v386;
      *(&v118 + 1) = v387;
      *&v328[-10] = v377;
      v323 = v118;
      v120 = *(v119 + 64);
      v324 = *(v119 + 48);
      v325 = v120;
      v326 = v388;
      ZStack.init(alignment:content:)();
      static Edge.Set.horizontal.getter();
      v121 = v395;
      v122 = swift_getWitnessTable();
      v123 = v344;
      View.padding(_:_:)();
      (*(v333 + 8))(v114, v121);
      v471 = v122;
      v472 = MEMORY[0x277CDF918];
      v124 = v398;
      v125 = swift_getWitnessTable();
      v126 = v347;
      static ViewBuilder.buildExpression<A>(_:)(v123, v124, v125);
      v127 = *(v363 + 8);
      v363 += 8;
      v388 = v127;
      v127(v123, v124);
      static ViewBuilder.buildBlock<A>(_:)(v126, v124, v125);
      v387 = MEMORY[0x277CE1198];
      v469 = swift_getWitnessTable();
      v470 = MEMORY[0x277CDFC60];
      v128 = v383;
      v129 = swift_getWitnessTable();
      static ViewBuilder.buildEither<A, B>(second:)(v123, v128, v124);
      v386 = MEMORY[0x277CE1138];
      v130 = swift_getWitnessTable();
      v131 = swift_getWitnessTable();
      v132 = lazy protocol witness table accessor for type MetricRow and conformance MetricRow();
      v467 = v131;
      v468 = v132;
      v133 = v389;
      v134 = swift_getWitnessTable();
      v465 = v130;
      v466 = v134;
      v135 = v391;
      v136 = swift_getWitnessTable();
      v463 = v129;
      v464 = v125;
      v137 = v394;
      v138 = swift_getWitnessTable();
      static ViewBuilder.buildEither<A, B>(second:)(v116, v135, v137);
      (*(v348 + 8))(v116, v137);
      v461 = v136;
      v462 = v138;
      swift_getWitnessTable();
      v139 = swift_getWitnessTable();
      v140 = swift_getWitnessTable();
      v459 = v139;
      v460 = v140;
      v141 = swift_getWitnessTable();
      v457 = swift_getWitnessTable();
      v458 = MEMORY[0x277CE0BC8];
      v142 = swift_getWitnessTable();
      v455 = v141;
      v456 = v142;
      swift_getWitnessTable();
      v111 = v381;
      v143 = v375;
      static ViewBuilder.buildEither<A, B>(first:)(v375, v133);
      (*(v372 + 8))(v143, v133);
      v144 = v398;
      v145 = v388;
      v388(v344, v398);
      v145(v347, v144);
      goto LABEL_18;
    }

LABEL_17:
    LocalizedStringKey.init(stringLiteral:)();
    LOWORD(v327) = 256;
    v326 = 0;
    v387 = Text.init(_:tableName:bundle:comment:)();
    v388 = v282;
    v565 = v387;
    v566 = v283;
    v386 = v283;
    DWORD2(v377) = v284 & 1;
    LOBYTE(v567) = v284 & 1;
    v568 = v282;
    outlined copy of Text.Storage(v387, v283, v284 & 1);

    v285 = v399;
    v286 = swift_getWitnessTable();
    v287 = v357;
    v288 = MEMORY[0x277CE0BC8];
    static ViewBuilder.buildEither<A, B>(second:)(&v565, v285, MEMORY[0x277CE0BD8]);
    v289 = swift_getWitnessTable();
    v290 = v115;
    v291 = swift_getWitnessTable();
    v563 = v289;
    v564 = v291;
    *&v377 = swift_getWitnessTable();
    v561 = v286;
    v562 = v288;
    v292 = swift_getWitnessTable();
    v293 = v374;
    static ViewBuilder.buildEither<A, B>(second:)(v287, v290, v400);
    (*(v358 + 8))(v287, v400);
    v294 = swift_getWitnessTable();
    v295 = swift_getWitnessTable();
    v296 = lazy protocol witness table accessor for type MetricRow and conformance MetricRow();
    v559 = v295;
    v560 = v296;
    v297 = swift_getWitnessTable();
    v557 = v294;
    v558 = v297;
    v298 = swift_getWitnessTable();
    v555 = swift_getWitnessTable();
    v556 = MEMORY[0x277CDFC60];
    v299 = swift_getWitnessTable();
    v553 = swift_getWitnessTable();
    v554 = MEMORY[0x277CDF918];
    v300 = swift_getWitnessTable();
    v551 = v299;
    v552 = v300;
    v301 = swift_getWitnessTable();
    v549 = v298;
    v550 = v301;
    v302 = v389;
    swift_getWitnessTable();
    v547 = v377;
    v548 = v292;
    v303 = v390;
    swift_getWitnessTable();
    v111 = v381;
    static ViewBuilder.buildEither<A, B>(second:)(v293, v302, v303);
    v305 = v386;
    v304 = v387;
    LOBYTE(v298) = BYTE8(v377);
    outlined consume of Text.Storage(v387, v386, SBYTE8(v377));

    outlined consume of Text.Storage(v304, v305, v298);

    (*(v371 + 8))(v374, v303);
    goto LABEL_18;
  }

  if (LOBYTE(v570[0]) > 9u)
  {
    v146 = v400;
    if (LOBYTE(v570[0]) == 10)
    {
      v198 = static HorizontalAlignment.center.getter();
      MEMORY[0x28223BE20](v198);
      *&v199 = v376;
      v200 = v386;
      *(&v199 + 1) = v387;
      *&v328[-10] = v377;
      v323 = v199;
      v201 = *(v200 + 64);
      v324 = *(v200 + 48);
      v325 = v201;
      v326 = v388;
      v202 = v354;
      VStack.init(alignment:spacing:content:)();
      v203 = v384;
      v204 = swift_getWitnessTable();
      v205 = v353;
      static ViewBuilder.buildExpression<A>(_:)(v202, v203, v204);
      v206 = *(v365 + 8);
      v365 += 8;
      v388 = v206;
      v206(v202, v203);
      static ViewBuilder.buildBlock<A>(_:)(v205, v203, v204);
      v207 = v396;
      v208 = swift_getWitnessTable();
      v209 = v351;
      static ViewBuilder.buildEither<A, B>(second:)(v202, v207, v203);
      v507 = v208;
      v508 = v204;
      v210 = v397;
      v387 = swift_getWitnessTable();
      v505 = swift_getWitnessTable();
      v506 = MEMORY[0x277CE0BC8];
      v386 = swift_getWitnessTable();
      v211 = v374;
      static ViewBuilder.buildEither<A, B>(first:)(v209, v210);
      (*(v352 + 8))(v209, v210);
      v212 = swift_getWitnessTable();
      v213 = swift_getWitnessTable();
      v214 = lazy protocol witness table accessor for type MetricRow and conformance MetricRow();
      v503 = v213;
      v504 = v214;
      v215 = swift_getWitnessTable();
      v501 = v212;
      v502 = v215;
      v216 = swift_getWitnessTable();
      v499 = swift_getWitnessTable();
      v500 = MEMORY[0x277CDFC60];
      v217 = swift_getWitnessTable();
      v497 = swift_getWitnessTable();
      v498 = MEMORY[0x277CDF918];
      v218 = swift_getWitnessTable();
      v495 = v217;
      v496 = v218;
      v219 = swift_getWitnessTable();
      v493 = v216;
      v494 = v219;
      v220 = v389;
      swift_getWitnessTable();
      v491 = v387;
      v492 = v386;
      v221 = v390;
      swift_getWitnessTable();
      v222 = v220;
      v111 = v381;
      static ViewBuilder.buildEither<A, B>(second:)(v211, v222, v221);
      (*(v371 + 8))(v211, v221);
      v223 = v388;
      v388(v354, v203);
      v223(v353, v203);
      goto LABEL_18;
    }

    v115 = v397;
    if (LOBYTE(v570[0]) == 11)
    {
      v147 = static VerticalAlignment.lastTextBaseline.getter();
      MEMORY[0x28223BE20](v147);
      *&v148 = v376;
      v149 = v386;
      *(&v148 + 1) = v387;
      *&v328[-10] = v377;
      v323 = v148;
      v150 = *(v149 + 64);
      v324 = *(v149 + 48);
      v325 = v150;
      v326 = v388;
      v151 = v356;
      HStack.init(alignment:spacing:content:)();
      v152 = v399;
      v153 = swift_getWitnessTable();
      v154 = v355;
      static ViewBuilder.buildExpression<A>(_:)(v151, v152, v153);
      v155 = *(v366 + 8);
      v366 += 8;
      v388 = v155;
      v155(v151, v152);
      static ViewBuilder.buildBlock<A>(_:)(v154, v152, v153);
      v156 = v357;
      v157 = MEMORY[0x277CE0BC8];
      static ViewBuilder.buildEither<A, B>(first:)(v151, v152);
      v158 = swift_getWitnessTable();
      v159 = swift_getWitnessTable();
      v525 = v158;
      v526 = v159;
      v160 = swift_getWitnessTable();
      v523 = v153;
      v524 = v157;
      v387 = swift_getWitnessTable();
      v161 = v374;
      static ViewBuilder.buildEither<A, B>(second:)(v156, v115, v146);
      (*(v358 + 8))(v156, v146);
      v162 = swift_getWitnessTable();
      v163 = swift_getWitnessTable();
      v164 = lazy protocol witness table accessor for type MetricRow and conformance MetricRow();
      v521 = v163;
      v522 = v164;
      v165 = swift_getWitnessTable();
      v519 = v162;
      v520 = v165;
      v166 = swift_getWitnessTable();
      v517 = swift_getWitnessTable();
      v518 = MEMORY[0x277CDFC60];
      v167 = swift_getWitnessTable();
      v515 = swift_getWitnessTable();
      v516 = MEMORY[0x277CDF918];
      v168 = swift_getWitnessTable();
      v513 = v167;
      v514 = v168;
      v169 = swift_getWitnessTable();
      v511 = v166;
      v512 = v169;
      v170 = v389;
      swift_getWitnessTable();
      v509 = v160;
      v510 = v387;
      v171 = v390;
      swift_getWitnessTable();
      v111 = v381;
      static ViewBuilder.buildEither<A, B>(second:)(v161, v170, v171);
      (*(v371 + 8))(v161, v171);
      v172 = v399;
      v173 = v388;
      v388(v356, v399);
      v173(v355, v172);
      goto LABEL_18;
    }

    goto LABEL_17;
  }

  if (LOBYTE(v570[0]) - 5 >= 2)
  {
    v115 = v397;
    if (LOBYTE(v570[0]) == 7)
    {
      v174 = static VerticalAlignment.lastTextBaseline.getter();
      MEMORY[0x28223BE20](v174);
      *&v175 = v376;
      v176 = v386;
      *(&v175 + 1) = v387;
      *&v328[-10] = v377;
      v323 = v175;
      v177 = *(v176 + 64);
      v324 = *(v176 + 48);
      v325 = v177;
      v326 = v388;
      v178 = v350;
      HStack.init(alignment:spacing:content:)();
      v179 = v396;
      v180 = swift_getWitnessTable();
      v181 = v349;
      static ViewBuilder.buildExpression<A>(_:)(v178, v179, v180);
      v182 = *(v364 + 8);
      v364 += 8;
      v388 = v182;
      v182(v178, v179);
      static ViewBuilder.buildBlock<A>(_:)(v181, v179, v180);
      v183 = swift_getWitnessTable();
      v184 = v351;
      static ViewBuilder.buildEither<A, B>(first:)(v178, v179);
      v489 = v180;
      v490 = v183;
      v185 = swift_getWitnessTable();
      v487 = swift_getWitnessTable();
      v488 = MEMORY[0x277CE0BC8];
      v387 = swift_getWitnessTable();
      static ViewBuilder.buildEither<A, B>(first:)(v184, v115);
      (*(v352 + 8))(v184, v115);
      v186 = swift_getWitnessTable();
      v187 = swift_getWitnessTable();
      v188 = lazy protocol witness table accessor for type MetricRow and conformance MetricRow();
      v485 = v187;
      v486 = v188;
      v189 = swift_getWitnessTable();
      v483 = v186;
      v484 = v189;
      v190 = swift_getWitnessTable();
      v481 = swift_getWitnessTable();
      v482 = MEMORY[0x277CDFC60];
      v191 = swift_getWitnessTable();
      v479 = swift_getWitnessTable();
      v480 = MEMORY[0x277CDF918];
      v192 = swift_getWitnessTable();
      v477 = v191;
      v478 = v192;
      v193 = swift_getWitnessTable();
      v475 = v190;
      v476 = v193;
      v194 = v389;
      swift_getWitnessTable();
      v473 = v185;
      v474 = v387;
      v195 = v390;
      swift_getWitnessTable();
      v111 = v381;
      v196 = v374;
      static ViewBuilder.buildEither<A, B>(second:)(v374, v194, v195);
      (*(v371 + 8))(v196, v195);
      v197 = v388;
      v388(v350, v179);
      v197(v349, v179);
      goto LABEL_18;
    }

    goto LABEL_17;
  }

  v82 = v386;
  v83 = v388;
  MetricTextiOSPlatter.workoutViewStyle.getter(v386, &v565);
  v84 = v565 == 6;
  v85 = static HorizontalAlignment.leading.getter();
  MEMORY[0x28223BE20](v85);
  *&v86 = v376;
  *(&v86 + 1) = v387;
  *&v328[-10] = v377;
  v323 = v86;
  v87 = *(v82 + 64);
  v324 = *(v82 + 48);
  v325 = v87;
  LOBYTE(v326) = v84;
  v327 = v83;
  v88 = v342;
  VStack.init(alignment:spacing:content:)();
  v89 = v392;
  v90 = swift_getWitnessTable();
  v91 = v370;
  View.metricRow(padding:)(v89, v90, 0.0);
  (*(v343 + 8))(v88, v89);
  v92 = lazy protocol witness table accessor for type MetricRow and conformance MetricRow();
  v435 = v90;
  v436 = v92;
  v93 = v382;
  v94 = swift_getWitnessTable();
  v95 = v369;
  static ViewBuilder.buildExpression<A>(_:)(v91, v93, v94);
  v96 = *(v373 + 8);
  v373 += 8;
  v388 = v96;
  v96(v91, v93);
  static ViewBuilder.buildBlock<A>(_:)(v95, v93, v94);
  v387 = MEMORY[0x277CE1138];
  v97 = v385;
  v98 = swift_getWitnessTable();
  v99 = v360;
  static ViewBuilder.buildEither<A, B>(second:)(v91, v97, v93);
  v433 = v98;
  v434 = v94;
  v100 = v391;
  v101 = swift_getWitnessTable();
  v431 = swift_getWitnessTable();
  v432 = MEMORY[0x277CDFC60];
  v102 = swift_getWitnessTable();
  v429 = swift_getWitnessTable();
  v430 = MEMORY[0x277CDF918];
  v103 = swift_getWitnessTable();
  v427 = v102;
  v428 = v103;
  v104 = swift_getWitnessTable();
  v105 = v375;
  static ViewBuilder.buildEither<A, B>(first:)(v99, v100);
  (*(v361 + 8))(v99, v100);
  v425 = v101;
  v426 = v104;
  v106 = v389;
  swift_getWitnessTable();
  v107 = swift_getWitnessTable();
  v108 = swift_getWitnessTable();
  v423 = v107;
  v424 = v108;
  v109 = swift_getWitnessTable();
  v421 = swift_getWitnessTable();
  v422 = MEMORY[0x277CE0BC8];
  v110 = swift_getWitnessTable();
  v419 = v109;
  v420 = v110;
  swift_getWitnessTable();
  v111 = v381;
  static ViewBuilder.buildEither<A, B>(first:)(v105, v106);
  (*(v372 + 8))(v105, v106);
  v112 = v388;
  v388(v370, v93);
  v112(v369, v93);
LABEL_18:
  v306 = swift_getWitnessTable();
  v307 = swift_getWitnessTable();
  v308 = lazy protocol witness table accessor for type MetricRow and conformance MetricRow();
  v545 = v307;
  v546 = v308;
  v309 = swift_getWitnessTable();
  v543 = v306;
  v544 = v309;
  v310 = swift_getWitnessTable();
  v541 = swift_getWitnessTable();
  v542 = MEMORY[0x277CDFC60];
  v311 = swift_getWitnessTable();
  v539 = swift_getWitnessTable();
  v540 = MEMORY[0x277CDF918];
  v312 = swift_getWitnessTable();
  v537 = v311;
  v538 = v312;
  v313 = swift_getWitnessTable();
  v535 = v310;
  v536 = v313;
  v314 = swift_getWitnessTable();
  v315 = swift_getWitnessTable();
  v316 = swift_getWitnessTable();
  v533 = v315;
  v534 = v316;
  v317 = swift_getWitnessTable();
  v531 = swift_getWitnessTable();
  v532 = MEMORY[0x277CE0BC8];
  v318 = swift_getWitnessTable();
  v529 = v317;
  v530 = v318;
  v319 = swift_getWitnessTable();
  v527 = v314;
  v528 = v319;
  v320 = v379;
  v321 = swift_getWitnessTable();
  static ViewBuilder.buildBlock<A>(_:)(v111, v320, v321);
  return (*(v378 + 8))(v111, v320);
}

uint64_t closure #1 in MetricTextiOSPlatter.body.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10)
{
  v55 = a7;
  v56 = a8;
  v70 = a1;
  v67 = a9;
  v53 = a10;
  v62 = type metadata accessor for ModifiedContent();
  v60 = type metadata accessor for ModifiedContent();
  v65 = *(v60 - 8);
  MEMORY[0x28223BE20](v60);
  v59 = &v48 - v15;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI24_ForegroundStyleModifierVyAA5ColorVGMd);
  v64 = type metadata accessor for ModifiedContent();
  v66 = *(v64 - 8);
  MEMORY[0x28223BE20](v64);
  v61 = &v48 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v63 = &v48 - v18;
  v49 = a2;
  type metadata accessor for ModifiedContent();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI21_TraitWritingModifierVyAA014LayoutPriorityC3KeyVGMd);
  v93 = type metadata accessor for ModifiedContent();
  v94 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyAA6SpacerVAA12_FrameLayoutVGMd);
  v50 = a3;
  v95 = type metadata accessor for ModifiedContent();
  v96 = a5;
  v51 = a5;
  swift_getTupleTypeMetadata();
  type metadata accessor for TupleView();
  swift_getWitnessTable();
  v68 = type metadata accessor for HStack();
  v71 = *(v68 - 8);
  MEMORY[0x28223BE20](v68);
  v20 = &v48 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v21);
  v69 = &v48 - v22;
  static VerticalAlignment.lastTextBaseline.getter();
  v72 = a2;
  v73 = a3;
  v23 = a4;
  v74 = a4;
  v75 = a5;
  v24 = a6;
  v76 = a6;
  v26 = v55;
  v25 = v56;
  v77 = v55;
  v78 = v56;
  v27 = v53;
  v79 = v53;
  v80 = v70;
  v52 = v20;
  HStack.init(alignment:spacing:content:)();
  v28 = v68;
  WitnessTable = swift_getWitnessTable();
  static ViewBuilder.buildExpression<A>(_:)(v20, v28, WitnessTable);
  v29 = *(v71 + 8);
  v57 = v71 + 8;
  v58 = v29;
  v29(v20, v28);
  v93 = v49;
  v94 = v50;
  v95 = v23;
  v96 = v51;
  v97 = v24;
  v98 = v26;
  v99 = v25;
  v100 = v27;
  type metadata accessor for MetricTextiOSPlatter();
  v30 = v59;
  View.metricDescriptionFont(multiline:)(1, v23, v25);
  v31 = [objc_opt_self() secondaryLabelColor];
  v93 = Color.init(uiColor:)();
  v32 = lazy protocol witness table accessor for type MetricDescriptionCoreFont and conformance MetricDescriptionCoreFont();
  v91 = v25;
  v92 = v32;
  v33 = swift_getWitnessTable();
  v34 = lazy protocol witness table accessor for type ExtendedLineSpacingSupport and conformance ExtendedLineSpacingSupport();
  v89 = v33;
  v90 = v34;
  v35 = v60;
  v36 = swift_getWitnessTable();
  v37 = v61;
  View.foregroundStyle<A>(_:)();

  (*(v65 + 8))(v30, v35);
  v38 = lazy protocol witness table accessor for type _AnimationModifier<Bool> and conformance _AnimationModifier<A>(&lazy protocol witness table cache variable for type _ForegroundStyleModifier<Color> and conformance _ForegroundStyleModifier<A>, &_s7SwiftUI24_ForegroundStyleModifierVyAA5ColorVGMd);
  v87 = v36;
  v88 = v38;
  v39 = v64;
  v40 = swift_getWitnessTable();
  v41 = v63;
  static ViewBuilder.buildExpression<A>(_:)(v37, v39, v40);
  v42 = v66;
  v43 = *(v66 + 8);
  v43(v37, v39);
  v44 = v52;
  v45 = v68;
  (*(v71 + 16))(v52, v69, v68);
  v93 = v44;
  (*(v42 + 16))(v37, v41, v39);
  v85 = 0;
  v86 = 1;
  v94 = v37;
  v95 = &v85;
  v84[0] = v45;
  v84[1] = v39;
  v84[2] = MEMORY[0x277CE1180];
  v81 = WitnessTable;
  v82 = v40;
  v83 = MEMORY[0x277CE1170];
  static ViewBuilder.buildBlock<each A>(_:)(&v93, 3uLL, v84);
  v43(v41, v39);
  v46 = v58;
  v58(v69, v45);
  v43(v37, v39);
  return v46(v44, v45);
}

uint64_t closure #1 in closure #1 in MetricTextiOSPlatter.body.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, void (*a6)(void, void)@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10)
{
  v69 = a7;
  v70 = a8;
  v76 = a6;
  v81 = a5;
  v68 = a4;
  v65 = a3;
  v60 = a1;
  v73 = a9;
  v72 = *(a5 - 8);
  v80 = a10;
  MEMORY[0x28223BE20](a1);
  v82 = &v54 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v71 = &v54 - v13;
  v14 = type metadata accessor for ModifiedContent();
  v15 = *(v14 - 8);
  v66 = v14;
  v67 = v15;
  MEMORY[0x28223BE20](v14);
  v78 = &v54 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v79 = &v54 - v18;
  v59 = a2;
  v19 = type metadata accessor for ModifiedContent();
  v20 = *(v19 - 8);
  MEMORY[0x28223BE20](v19);
  v22 = &v54 - v21;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI21_TraitWritingModifierVyAA014LayoutPriorityC3KeyVGMd);
  v23 = type metadata accessor for ModifiedContent();
  v77 = *(v23 - 8);
  MEMORY[0x28223BE20](v23);
  v25 = &v54 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v26);
  v75 = &v54 - v27;
  v28 = a2;
  v29 = v76;
  View.metricValueFont(includesSlashes:smallCaps:)(0, 1, v28, v76);
  v61 = lazy protocol witness table accessor for type MetricValueFont and conformance MetricValueFont();
  v99 = v29;
  v100 = v61;
  WitnessTable = swift_getWitnessTable();
  View.layoutPriority(_:)();
  (*(v20 + 8))(v22, v19);
  v31 = lazy protocol witness table accessor for type _AnimationModifier<Bool> and conformance _AnimationModifier<A>(&lazy protocol witness table cache variable for type _TraitWritingModifier<LayoutPriorityTraitKey> and conformance _TraitWritingModifier<A>, &_s7SwiftUI21_TraitWritingModifierVyAA014LayoutPriorityC3KeyVGMd);
  v97 = WitnessTable;
  v98 = v31;
  v62 = swift_getWitnessTable();
  v74 = v25;
  static ViewBuilder.buildExpression<A>(_:)(v25, v23, v62);
  v32 = *(v77 + 8);
  v63 = v77 + 8;
  v64 = v32;
  v32(v25, v23);
  static Alignment.center.getter();
  _FrameLayout.init(width:height:alignment:)();
  v55 = v101;
  v56 = v103;
  v57 = v106;
  v58 = v105;
  v112 = 1;
  v110 = v102;
  v108 = v104;
  v33 = v65;
  v89 = v59;
  v90 = v65;
  v34 = v69;
  v35 = v80;
  v91 = v68;
  v92 = v81;
  v93 = v76;
  v94 = v69;
  v95 = v70;
  v96 = v80;
  v36 = type metadata accessor for MetricTextiOSPlatter();
  v37 = v60;
  v38 = v78;
  View.metricValueFont(includesSlashes:smallCaps:)(0, 1, v33, v34);
  v88[4] = v34;
  v88[5] = v61;
  v39 = v66;
  v70 = swift_getWitnessTable();
  v40 = v79;
  static ViewBuilder.buildExpression<A>(_:)(v38, v39, v70);
  v41 = v67;
  v76 = *(v67 + 8);
  v76(v38, v39);
  v42 = v37 + *(v36 + 92);
  v43 = v71;
  v44 = v81;
  static ViewBuilder.buildExpression<A>(_:)(v42, v81, v35);
  v45 = v74;
  (*(v77 + 16))(v74, v75, v23);
  v89 = 0;
  LOBYTE(v90) = v112;
  *(&v90 + 1) = *v111;
  HIDWORD(v90) = *&v111[3];
  v91 = v55;
  LOBYTE(v92) = v110;
  *(&v92 + 1) = *v109;
  HIDWORD(v92) = *&v109[3];
  v93 = v56;
  LOBYTE(v94) = v108;
  *(&v94 + 1) = *v107;
  HIDWORD(v94) = *&v107[3];
  v95 = v58;
  v96 = v57;
  v88[0] = v45;
  v88[1] = &v89;
  (*(v41 + 16))(v38, v40, v39);
  v88[2] = v38;
  v46 = v72;
  v47 = v82;
  (*(v72 + 16))(v82, v43, v44);
  v88[3] = v47;
  v87[0] = v23;
  v48 = v23;
  v87[1] = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyAA6SpacerVAA12_FrameLayoutVGMd);
  v87[2] = v39;
  v87[3] = v44;
  v83 = v62;
  v84 = lazy protocol witness table accessor for type ModifiedContent<Spacer, _FrameLayout> and conformance <> ModifiedContent<A, B>();
  v85 = v70;
  v86 = v80;
  static ViewBuilder.buildBlock<each A>(_:)(v88, 4uLL, v87);
  v49 = *(v46 + 8);
  v49(v43, v44);
  v50 = v76;
  v76(v79, v39);
  v51 = v23;
  v52 = v64;
  v64(v75, v51);
  v49(v82, v44);
  v50(v78, v39);
  return v52(v74, v48);
}

uint64_t closure #3 in MetricTextiOSPlatter.body.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10)
{
  v58 = a1;
  v59 = a8;
  v75 = a7;
  v73 = a6;
  v70 = a9;
  v71 = a4;
  v72 = a10;
  v64 = type metadata accessor for ModifiedContent();
  v13 = type metadata accessor for ModifiedContent();
  v66 = *(v13 - 8);
  MEMORY[0x28223BE20](v13);
  v60 = &v51 - v14;
  v67 = v15;
  v62 = type metadata accessor for ModifiedContent();
  v68 = *(v62 - 8);
  MEMORY[0x28223BE20](v62);
  v69 = &v51 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v63 = &v51 - v18;
  MEMORY[0x28223BE20](v19);
  v65 = &v51 - v20;
  v53 = a2;
  type metadata accessor for ModifiedContent();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI21_TraitWritingModifierVyAA014LayoutPriorityC3KeyVGMd);
  type metadata accessor for ModifiedContent();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI30_EnvironmentKeyWritingModifierVySiSgGMd);
  v89 = type metadata accessor for ModifiedContent();
  v90 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyAA6SpacerVAA12_FrameLayoutVGMd);
  v52 = a3;
  v91 = type metadata accessor for ModifiedContent();
  v54 = a5;
  v92 = type metadata accessor for ModifiedContent();
  swift_getTupleTypeMetadata();
  type metadata accessor for TupleView();
  swift_getWitnessTable();
  v21 = type metadata accessor for HStack();
  v61 = *(v21 - 8);
  MEMORY[0x28223BE20](v21);
  v23 = &v51 - v22;
  v24 = type metadata accessor for ModifiedContent();
  v74 = *(v24 - 8);
  MEMORY[0x28223BE20](v24);
  v26 = &v51 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v27);
  v76 = &v51 - v28;
  static VerticalAlignment.lastTextBaseline.getter();
  v77 = a2;
  v78 = a3;
  v79 = v71;
  v80 = a5;
  v81 = v73;
  v82 = v75;
  v29 = v59;
  v83 = v59;
  v84 = v72;
  v85 = v58;
  HStack.init(alignment:spacing:content:)();
  static Alignment.center.getter();
  WitnessTable = swift_getWitnessTable();
  View.frame(minWidth:idealWidth:maxWidth:minHeight:idealHeight:maxHeight:alignment:)();
  v30 = v21;
  v31 = v60;
  (*(v61 + 8))(v23, v30);
  v97 = WitnessTable;
  v98 = MEMORY[0x277CDFC60];
  v55 = swift_getWitnessTable();
  static ViewBuilder.buildExpression<A>(_:)(v26, v24, v55);
  v32 = *(v74 + 8);
  v33 = v26;
  v61 = v24;
  v56 = v32;
  v57 = v74 + 8;
  v32(v26, v24);
  v89 = v53;
  v90 = v52;
  v34 = v71;
  v91 = v71;
  v92 = v54;
  v93 = v73;
  v94 = v75;
  v95 = v29;
  v96 = v72;
  type metadata accessor for MetricTextiOSPlatter();
  View.metricDescriptionFont(multiline:)(0, v34, v29);
  FIUICurrentLanguageNeedsExtendedLineSpacing();
  v35 = lazy protocol witness table accessor for type MetricDescriptionCoreFont and conformance MetricDescriptionCoreFont();
  v88[6] = v29;
  v88[7] = v35;
  v36 = swift_getWitnessTable();
  v37 = lazy protocol witness table accessor for type ExtendedLineSpacingSupport and conformance ExtendedLineSpacingSupport();
  v88[4] = v36;
  v88[5] = v37;
  v38 = v67;
  v39 = swift_getWitnessTable();
  v40 = v63;
  View.offset(x:y:)();
  (*(v66 + 8))(v31, v38);
  v88[2] = v39;
  v88[3] = MEMORY[0x277CDF748];
  v41 = v62;
  v42 = swift_getWitnessTable();
  v43 = v65;
  static ViewBuilder.buildExpression<A>(_:)(v40, v41, v42);
  v44 = v68;
  v45 = *(v68 + 8);
  v45(v40, v41);
  v46 = v61;
  (*(v74 + 16))(v33, v76, v61);
  v89 = v33;
  v47 = v69;
  (*(v44 + 16))(v69, v43, v41);
  v90 = v47;
  v88[0] = v46;
  v88[1] = v41;
  v86 = v55;
  v87 = v42;
  static ViewBuilder.buildBlock<each A>(_:)(&v89, 2uLL, v88);
  v45(v43, v41);
  v48 = v56;
  v56(v76, v46);
  v45(v47, v41);
  return v48(v33, v46);
}

uint64_t closure #1 in closure #3 in MetricTextiOSPlatter.body.getter@<X0>(void (*a1)(char *, uint64_t)@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, void (*a8)(void, void)@<X7>, uint64_t a9@<X8>, uint64_t a10)
{
  v77 = a7;
  v78 = a8;
  v73 = a3;
  v74 = a5;
  v76 = a4;
  v86 = a1;
  v82 = a9;
  v75 = a10;
  v12 = type metadata accessor for ModifiedContent();
  v13 = *(v12 - 8);
  v80 = v12;
  v81 = v13;
  MEMORY[0x28223BE20](v12);
  v92 = &v62 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v79 = &v62 - v16;
  v85 = type metadata accessor for ModifiedContent();
  v88 = *(v85 - 8);
  MEMORY[0x28223BE20](v85);
  v91 = &v62 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v87 = &v62 - v19;
  v68 = a2;
  v20 = type metadata accessor for ModifiedContent();
  v21 = *(v20 - 8);
  MEMORY[0x28223BE20](v20);
  v23 = &v62 - v22;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI21_TraitWritingModifierVyAA014LayoutPriorityC3KeyVGMd);
  v24 = type metadata accessor for ModifiedContent();
  v25 = *(v24 - 8);
  MEMORY[0x28223BE20](v24);
  v27 = &v62 - v26;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI30_EnvironmentKeyWritingModifierVySiSgGMd);
  v28 = type metadata accessor for ModifiedContent();
  v29 = *(v28 - 8);
  v83 = v28;
  v84 = v29;
  MEMORY[0x28223BE20](v28);
  v89 = &v62 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v31);
  v90 = &v62 - v32;
  v67 = a6;
  View.metricValueFont(includesSlashes:smallCaps:)(0, 1, a2, a6);
  v69 = lazy protocol witness table accessor for type MetricValueFont and conformance MetricValueFont();
  v111 = a6;
  v112 = v69;
  WitnessTable = swift_getWitnessTable();
  View.layoutPriority(_:)();
  (*(v21 + 8))(v23, v20);
  v34 = lazy protocol witness table accessor for type _AnimationModifier<Bool> and conformance _AnimationModifier<A>(&lazy protocol witness table cache variable for type _TraitWritingModifier<LayoutPriorityTraitKey> and conformance _TraitWritingModifier<A>, &_s7SwiftUI21_TraitWritingModifierVyAA014LayoutPriorityC3KeyVGMd);
  v109 = WitnessTable;
  v110 = v34;
  v35 = swift_getWitnessTable();
  v36 = v89;
  View.lineLimit(_:)();
  (*(v25 + 8))(v27, v24);
  v37 = lazy protocol witness table accessor for type _AnimationModifier<Bool> and conformance _AnimationModifier<A>(&lazy protocol witness table cache variable for type _EnvironmentKeyWritingModifier<Int?> and conformance _EnvironmentKeyWritingModifier<A>, &_s7SwiftUI30_EnvironmentKeyWritingModifierVySiSgGMd);
  v107 = v35;
  v108 = v37;
  v38 = v83;
  v70 = swift_getWitnessTable();
  static ViewBuilder.buildExpression<A>(_:)(v36, v38, v70);
  v39 = *(v84 + 8);
  v71 = v84 + 8;
  v72 = v39;
  v39(v36, v38);
  static Alignment.center.getter();
  _FrameLayout.init(width:height:alignment:)();
  v63 = v113;
  v64 = v115;
  v65 = v118;
  v66 = v117;
  v124 = 1;
  v122 = v114;
  v120 = v116;
  v40 = v73;
  v41 = v74;
  v99 = v68;
  v100 = v73;
  v42 = v77;
  v101 = v76;
  v102 = v74;
  v103 = v67;
  v104 = v77;
  v43 = v75;
  v105 = v78;
  v106 = v75;
  type metadata accessor for MetricTextiOSPlatter();
  v44 = v91;
  View.metricValueFont(includesSlashes:smallCaps:)(0, 1, v40, v42);
  v98[6] = v42;
  v98[7] = v69;
  v45 = v85;
  v77 = swift_getWitnessTable();
  static ViewBuilder.buildExpression<A>(_:)(v44, v45, v77);
  v78 = *(v88 + 8);
  v78(v44, v45);
  v46 = v92;
  View.metricUnitFont()(v41, v43);
  v47 = lazy protocol witness table accessor for type MetricUnitFont and conformance MetricUnitFont();
  v98[4] = v43;
  v98[5] = v47;
  v48 = v80;
  v76 = swift_getWitnessTable();
  v49 = v79;
  static ViewBuilder.buildExpression<A>(_:)(v46, v48, v76);
  v50 = v81;
  v86 = *(v81 + 8);
  v86(v46, v48);
  v51 = v83;
  v52 = v89;
  (*(v84 + 16))(v89, v90, v83);
  v99 = 0;
  LOBYTE(v100) = v124;
  *(&v100 + 1) = *v123;
  HIDWORD(v100) = *&v123[3];
  v101 = v63;
  LOBYTE(v102) = v122;
  *(&v102 + 1) = *v121;
  HIDWORD(v102) = *&v121[3];
  v103 = v64;
  LOBYTE(v104) = v120;
  *(&v104 + 1) = *v119;
  HIDWORD(v104) = *&v119[3];
  v105 = v66;
  v106 = v65;
  v98[0] = v52;
  v98[1] = &v99;
  v53 = v87;
  v54 = v91;
  v55 = v85;
  (*(v88 + 16))(v91, v87, v85);
  v98[2] = v54;
  v56 = *(v50 + 16);
  v57 = v92;
  v56(v92, v49, v48);
  v98[3] = v57;
  v97[0] = v51;
  v97[1] = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyAA6SpacerVAA12_FrameLayoutVGMd);
  v97[2] = v55;
  v97[3] = v48;
  v93 = v70;
  v94 = lazy protocol witness table accessor for type ModifiedContent<Spacer, _FrameLayout> and conformance <> ModifiedContent<A, B>();
  v95 = v77;
  v96 = v76;
  static ViewBuilder.buildBlock<each A>(_:)(v98, 4uLL, v97);
  v58 = v86;
  v86(v49, v48);
  v59 = v78;
  v78(v53, v55);
  v60 = v72;
  v72(v90, v51);
  v58(v92, v48);
  v59(v91, v55);
  return v60(v89, v51);
}

uint64_t closure #4 in MetricTextiOSPlatter.body.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, void (*a6)(void, void)@<X5>, void (*a7)(void, void)@<X6>, void (*a8)(void, void)@<X7>, uint64_t a9@<X8>, void (*a10)(void, void))
{
  v106 = a8;
  v103 = a4;
  v104 = a7;
  v87 = a6;
  v101 = a1;
  v102 = a5;
  v97 = a9;
  v98 = a3;
  v108 = a10;
  v92 = type metadata accessor for ModifiedContent();
  v91 = type metadata accessor for ModifiedContent();
  v95 = *(v91 - 8);
  MEMORY[0x28223BE20](v91);
  v88 = &v80 - v11;
  v90 = type metadata accessor for ModifiedContent();
  v96 = *(v90 - 8);
  MEMORY[0x28223BE20](v90);
  v89 = &v80 - v12;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI30_EnvironmentKeyWritingModifierVy12CoreGraphics7CGFloatVGMd);
  v13 = type metadata accessor for ModifiedContent();
  v14 = *(v13 - 8);
  v93 = v13;
  v94 = v14;
  MEMORY[0x28223BE20](v13);
  v118 = &v80 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v109 = &v80 - v17;
  v116 = type metadata accessor for ModifiedContent();
  v111 = *(v116 - 8);
  MEMORY[0x28223BE20](v116);
  v114 = &v80 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v19);
  v110 = &v80 - v20;
  v82 = type metadata accessor for ModifiedContent();
  v84 = *(v82 - 8);
  MEMORY[0x28223BE20](v82);
  v81 = &v80 - v21;
  v113 = type metadata accessor for ModifiedContent();
  v107 = *(v113 - 8);
  MEMORY[0x28223BE20](v113);
  v112 = &v80 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v23);
  v117 = &v80 - v24;
  v25 = type metadata accessor for ModifiedContent();
  v26 = *(v25 - 8);
  MEMORY[0x28223BE20](v25);
  v28 = &v80 - v27;
  v29 = type metadata accessor for ModifiedContent();
  v105 = *(v29 - 8);
  MEMORY[0x28223BE20](v29);
  v31 = &v80 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v32);
  v115 = &v80 - v33;
  v34 = v87;
  View.metricValueFont(includesSlashes:smallCaps:)(0, 1, a2, v87);
  v124 = a2;
  v125 = v98;
  v126 = v103;
  v127 = v102;
  v128 = v34;
  v129 = v104;
  v130 = v106;
  v131 = v108;
  type metadata accessor for MetricTextiOSPlatter();
  v35 = lazy protocol witness table accessor for type MetricValueFont and conformance MetricValueFont();
  v123[20] = v34;
  v123[21] = v35;
  WitnessTable = swift_getWitnessTable();
  View.minimumScaleFactor(_:)();
  (*(v26 + 8))(v28, v25);
  v83 = lazy protocol witness table accessor for type _AnimationModifier<Bool> and conformance _AnimationModifier<A>(&lazy protocol witness table cache variable for type _EnvironmentKeyWritingModifier<CGFloat> and conformance _EnvironmentKeyWritingModifier<A>, &_s7SwiftUI30_EnvironmentKeyWritingModifierVy12CoreGraphics7CGFloatVGMd);
  v123[18] = WitnessTable;
  v123[19] = v83;
  v100 = v29;
  v85 = swift_getWitnessTable();
  v99 = v31;
  static ViewBuilder.buildExpression<A>(_:)(v31, v29, v85);
  v37 = *(v105 + 8);
  v86 = v105 + 8;
  v87 = v37;
  v37(v31, v29);
  v38 = v81;
  v39 = v104;
  View.metricUnitFont()(v98, v104);
  static VerticalAlignment.firstTextBaseline.getter();
  v40 = lazy protocol witness table accessor for type MetricUnitFont and conformance MetricUnitFont();
  v123[16] = v39;
  v123[17] = v40;
  v41 = v82;
  v42 = swift_getWitnessTable();
  v43 = v112;
  View.alignmentGuide(_:computeValue:)();
  (*(v84 + 8))(v38, v41);
  v123[14] = v42;
  v123[15] = MEMORY[0x277CE0760];
  v44 = MEMORY[0x277CE0760];
  v45 = v113;
  v84 = swift_getWitnessTable();
  static ViewBuilder.buildExpression<A>(_:)(v43, v45, v84);
  v46 = *(v107 + 8);
  v98 = v107 + 8;
  v104 = v46;
  v46(v43, v45);
  v47 = v114;
  v48 = v108;
  View.metricUnitFont()(v102, v108);
  v123[12] = v48;
  v123[13] = v40;
  v49 = v116;
  v82 = swift_getWitnessTable();
  static ViewBuilder.buildExpression<A>(_:)(v47, v49, v82);
  v50 = *(v111 + 8);
  v102 = v111 + 8;
  v108 = v50;
  v50(v47, v49);
  v51 = v88;
  v52 = v106;
  View.metricDescriptionFont(multiline:)(0, v103, v106);
  static VerticalAlignment.firstTextBaseline.getter();
  v53 = lazy protocol witness table accessor for type MetricDescriptionCoreFont and conformance MetricDescriptionCoreFont();
  v123[10] = v52;
  v123[11] = v53;
  v54 = swift_getWitnessTable();
  v55 = lazy protocol witness table accessor for type ExtendedLineSpacingSupport and conformance ExtendedLineSpacingSupport();
  v123[8] = v54;
  v123[9] = v55;
  v56 = v91;
  v57 = swift_getWitnessTable();
  v58 = v89;
  View.alignmentGuide(_:computeValue:)();
  (*(v95 + 8))(v51, v56);
  v123[6] = v57;
  v123[7] = v44;
  v59 = v90;
  v60 = swift_getWitnessTable();
  v61 = v118;
  View.minimumScaleFactor(_:)();
  (*(v96 + 8))(v58, v59);
  v123[4] = v60;
  v123[5] = v83;
  v62 = v93;
  v103 = swift_getWitnessTable();
  v63 = v109;
  static ViewBuilder.buildExpression<A>(_:)(v61, v62, v103);
  v64 = v94;
  v106 = *(v94 + 8);
  v106(v61, v62);
  v65 = v99;
  v66 = v100;
  (*(v105 + 16))(v99, v115, v100);
  v124 = v65;
  v67 = v112;
  v68 = v113;
  (*(v107 + 16))(v112, v117, v113);
  v125 = v67;
  v69 = v110;
  v70 = v114;
  v71 = v116;
  (*(v111 + 16))(v114, v110, v116);
  v126 = v70;
  v72 = v118;
  (*(v64 + 16))(v118, v63, v62);
  v127 = v72;
  v123[0] = v66;
  v123[1] = v68;
  v73 = v66;
  v123[2] = v71;
  v123[3] = v62;
  v119 = v85;
  v120 = v84;
  v121 = v82;
  v122 = v103;
  static ViewBuilder.buildBlock<each A>(_:)(&v124, 4uLL, v123);
  v74 = v106;
  v106(v109, v62);
  v75 = v108;
  v108(v69, v71);
  v76 = v104;
  v104(v117, v68);
  v77 = v73;
  v78 = v87;
  v87(v115, v77);
  v74(v118, v62);
  v75(v114, v116);
  v76(v112, v113);
  return v78(v99, v100);
}

double closure #1 in closure #4 in MetricTextiOSPlatter.body.getter()
{
  v0 = static VerticalAlignment.firstTextBaseline.getter();
  v1 = MEMORY[0x20F3089D0](v0);
  ViewDimensions.height.getter();
  return v1 - v2;
}

double closure #2 in closure #4 in MetricTextiOSPlatter.body.getter()
{
  v0 = static VerticalAlignment.firstTextBaseline.getter();
  v1 = MEMORY[0x20F3089D0](v0);
  if (FIUICurrentLanguageNeedsExtendedLineSpacing())
  {
    v2 = 1.8;
  }

  else
  {
    v2 = 1.4;
  }

  ViewDimensions.height.getter();
  return v1 - v2 * v3;
}

uint64_t closure #5 in MetricTextiOSPlatter.body.getter@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t *a4@<X4>, uint64_t a5@<X5>, uint64_t a6@<X6>, uint64_t a7@<X7>, uint64_t a8@<X8>, uint64_t a9)
{
  v58 = a7;
  v57 = a6;
  v56 = a4;
  v53 = a3;
  v48 = a2;
  v66 = a8;
  v54 = a9;
  v63 = type metadata accessor for ModifiedContent();
  v64 = type metadata accessor for ModifiedContent();
  v65 = *(v64 - 8);
  MEMORY[0x28223BE20](v64);
  v59 = &v48 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v62 = &v48 - v13;
  v52 = type metadata accessor for ModifiedContent();
  v70 = *(v52 - 8);
  MEMORY[0x28223BE20](v52);
  v15 = &v48 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v49 = &v48 - v17;
  v18 = type metadata accessor for ModifiedContent();
  v51 = *(v18 - 8);
  v19 = v51;
  MEMORY[0x28223BE20](v18);
  v21 = &v48 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v22);
  v69 = &v48 - v23;
  View.metricValueFont(includesSlashes:smallCaps:)(0, 1, a1, a5);
  v24 = lazy protocol witness table accessor for type MetricValueFont and conformance MetricValueFont();
  v92 = a5;
  v93 = v24;
  v50 = v18;
  WitnessTable = swift_getWitnessTable();
  v68 = v21;
  static ViewBuilder.buildExpression<A>(_:)(v21, v18, WitnessTable);
  v25 = *(v19 + 8);
  v60 = v19 + 8;
  v61 = v25;
  v25(v21, v18);
  v26 = v48;
  v84 = a1;
  v85 = v48;
  v27 = v53;
  v86 = v53;
  v87 = v56;
  v28 = v57;
  v88 = a5;
  v89 = v57;
  v29 = v58;
  v90 = v58;
  v91 = v54;
  type metadata accessor for MetricTextiOSPlatter();
  View.metricValueFont(includesSlashes:smallCaps:)(0, 1, v26, v28);
  v82 = v28;
  v83 = v24;
  v30 = v52;
  v54 = swift_getWitnessTable();
  v31 = v49;
  v67 = v15;
  static ViewBuilder.buildExpression<A>(_:)(v15, v30, v54);
  v56 = *(v70 + 8);
  v57 = v70 + 8;
  (v56)(v15, v30);
  v32 = v59;
  View.metricDescriptionFont(multiline:)(1, v27, v29);
  v33 = lazy protocol witness table accessor for type MetricDescriptionCoreFont and conformance MetricDescriptionCoreFont();
  v80 = v29;
  v81 = v33;
  v34 = swift_getWitnessTable();
  v35 = lazy protocol witness table accessor for type ExtendedLineSpacingSupport and conformance ExtendedLineSpacingSupport();
  v78 = v34;
  v79 = v35;
  v36 = v64;
  v63 = swift_getWitnessTable();
  v37 = v62;
  static ViewBuilder.buildExpression<A>(_:)(v32, v36, v63);
  v38 = v65;
  v39 = *(v65 + 8);
  v39(v32, v36);
  v40 = v68;
  v41 = v50;
  (*(v51 + 16))(v68, v69, v50);
  v84 = v40;
  v42 = v67;
  (*(v70 + 16))(v67, v31, v30);
  v85 = v42;
  (*(v38 + 16))(v32, v37, v36);
  v76 = 0;
  v77 = 1;
  v86 = v32;
  v87 = &v76;
  v75[0] = v41;
  v75[1] = v30;
  v75[2] = v36;
  v75[3] = MEMORY[0x277CE1180];
  v71 = WitnessTable;
  v72 = v54;
  v73 = v63;
  v74 = MEMORY[0x277CE1170];
  static ViewBuilder.buildBlock<each A>(_:)(&v84, 4uLL, v75);
  v39(v37, v36);
  v43 = v56;
  (v56)(v31, v30);
  v44 = v41;
  v45 = v41;
  v46 = v61;
  v61(v69, v44);
  v39(v32, v36);
  (v43)(v67, v30);
  return v46(v68, v45);
}

uint64_t closure #6 in MetricTextiOSPlatter.body.getter@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X4>, uint64_t a5@<X5>, void (*a6)(void, void)@<X6>, void (*a7)(void, void)@<X7>, uint64_t a8@<X8>, void (*a9)(void, void))
{
  v81 = a7;
  v68 = a6;
  v64 = a4;
  v76 = a3;
  v74 = a8;
  v67 = a9;
  v72 = type metadata accessor for ModifiedContent();
  v73 = *(v72 - 8);
  MEMORY[0x28223BE20](v72);
  v86 = v59 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v71 = v59 - v14;
  v78 = type metadata accessor for ModifiedContent();
  v82 = *(v78 - 8);
  MEMORY[0x28223BE20](v78);
  v85 = v59 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v77 = v59 - v17;
  v84 = type metadata accessor for ModifiedContent();
  v80 = *(v84 - 8);
  MEMORY[0x28223BE20](v84);
  v83 = v59 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v19);
  v60 = v59 - v20;
  v21 = type metadata accessor for ModifiedContent();
  v63 = *(v21 - 8);
  v22 = v63;
  MEMORY[0x28223BE20](v21);
  v24 = v59 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v25);
  v79 = v59 - v26;
  View.metricValueFont(includesSlashes:smallCaps:)(0, 1, a1, a5);
  v27 = lazy protocol witness table accessor for type MetricValueFont and conformance MetricValueFont();
  v100 = a5;
  v101 = v27;
  v62 = v21;
  WitnessTable = swift_getWitnessTable();
  v75 = v24;
  static ViewBuilder.buildExpression<A>(_:)(v24, v21, WitnessTable);
  v28 = *(v22 + 8);
  v69 = v22 + 8;
  v70 = v28;
  v28(v24, v21);
  v92 = a1;
  v93 = a2;
  v29 = v64;
  v94 = v76;
  v95 = v64;
  v30 = v68;
  v96 = a5;
  v97 = v68;
  v31 = v67;
  v98 = v81;
  v99 = v67;
  type metadata accessor for MetricTextiOSPlatter();
  v32 = v83;
  View.metricUnitFont()(a2, v30);
  v33 = lazy protocol witness table accessor for type MetricUnitFont and conformance MetricUnitFont();
  v91[8] = v30;
  v91[9] = v33;
  v34 = v84;
  v61 = swift_getWitnessTable();
  static ViewBuilder.buildExpression<A>(_:)(v32, v34, v61);
  v35 = *(v80 + 8);
  v65 = v80 + 8;
  v68 = v35;
  v35(v32, v34);
  v36 = v85;
  View.metricUnitFont()(v29, v31);
  v91[6] = v31;
  v91[7] = v33;
  v37 = v78;
  v64 = swift_getWitnessTable();
  static ViewBuilder.buildExpression<A>(_:)(v36, v37, v64);
  v38 = *(v82 + 8);
  v59[1] = v82 + 8;
  v67 = v38;
  v38(v36, v37);
  v39 = v86;
  v40 = v81;
  View.metricUnitFont()(v76, v81);
  v91[4] = v40;
  v91[5] = v33;
  v41 = v72;
  v76 = swift_getWitnessTable();
  v42 = v71;
  static ViewBuilder.buildExpression<A>(_:)(v39, v41, v76);
  v43 = v73;
  v81 = *(v73 + 8);
  v81(v39, v41);
  v44 = v75;
  v45 = v62;
  (*(v63 + 16))(v75, v79, v62);
  v92 = v44;
  v46 = v83;
  v47 = v60;
  v48 = v84;
  (*(v80 + 16))(v83, v60, v84);
  v93 = v46;
  v49 = v85;
  v50 = v77;
  (*(v82 + 16))(v85, v77, v37);
  v94 = v49;
  v51 = v86;
  (*(v43 + 16))(v86, v42, v41);
  v95 = v51;
  v91[0] = v45;
  v91[1] = v48;
  v52 = v37;
  v91[2] = v37;
  v91[3] = v41;
  v87 = WitnessTable;
  v88 = v61;
  v89 = v64;
  v90 = v76;
  static ViewBuilder.buildBlock<each A>(_:)(&v92, 4uLL, v91);
  v53 = v81;
  v81(v42, v41);
  v54 = v52;
  v55 = v67;
  v67(v50, v54);
  v56 = v68;
  v68(v47, v48);
  v57 = v70;
  v70(v79, v45);
  v53(v86, v41);
  v55(v85, v78);
  v56(v83, v84);
  return v57(v75, v45);
}

uint64_t closure #7 in MetricTextiOSPlatter.body.getter@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X4>, uint64_t a5@<X5>, uint64_t a6@<X6>, uint64_t a7@<X7>, uint64_t a8@<X8>, uint64_t a9)
{
  v43 = a6;
  v44 = a7;
  v41 = a4;
  v40 = a3;
  v38 = a2;
  v46 = a8;
  v39 = a9;
  v34 = type metadata accessor for ModifiedContent();
  v45 = *(v34 - 8);
  MEMORY[0x28223BE20](v34);
  v12 = &v32 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v42 = &v32 - v14;
  v15 = type metadata accessor for ModifiedContent();
  v32 = *(v15 - 8);
  v16 = v32;
  MEMORY[0x28223BE20](v15);
  v18 = &v32 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v19);
  v33 = &v32 - v20;
  View.metricValueFont(includesSlashes:smallCaps:)(0, 1, a1, a5);
  v21 = lazy protocol witness table accessor for type MetricValueFont and conformance MetricValueFont();
  v58 = a5;
  v59 = v21;
  WitnessTable = swift_getWitnessTable();
  static ViewBuilder.buildExpression<A>(_:)(v18, v15, WitnessTable);
  v36 = *(v16 + 8);
  v37 = v16 + 8;
  v36(v18, v15);
  v22 = v38;
  v50 = a1;
  v51 = v38;
  v52 = v40;
  v53 = v41;
  v54 = a5;
  v23 = v43;
  v55 = v43;
  v56 = v44;
  v57 = v39;
  type metadata accessor for MetricTextiOSPlatter();
  View.metricValueFont(includesSlashes:smallCaps:)(0, 1, v22, v23);
  v49[2] = v23;
  v49[3] = v21;
  v24 = v34;
  v25 = swift_getWitnessTable();
  v26 = v42;
  static ViewBuilder.buildExpression<A>(_:)(v12, v24, v25);
  v27 = v45;
  v28 = *(v45 + 8);
  v28(v12, v24);
  v29 = v33;
  (*(v32 + 16))(v18, v33, v15);
  v50 = v18;
  (*(v27 + 16))(v12, v26, v24);
  v51 = v12;
  v49[0] = v15;
  v49[1] = v24;
  v47 = WitnessTable;
  v48 = v25;
  static ViewBuilder.buildBlock<each A>(_:)(&v50, 2uLL, v49);
  v28(v26, v24);
  v30 = v36;
  v36(v29, v15);
  v28(v12, v24);
  return v30(v18, v15);
}

uint64_t closure #2 in MetricTextiOSPlatter.body.getter@<X0>(_BOOL4 a1@<W0>, uint64_t a2@<X1>, uint64_t *a3@<X2>, uint64_t a4@<X3>, void (*a5)(void, void)@<X4>, void *a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10, uint64_t a11)
{
  v81 = a7;
  v82 = a8;
  v80 = a6;
  v83 = a2;
  v84 = a5;
  v78 = a4;
  v62 = a1;
  v74 = a9;
  v79 = a11;
  v77 = a10;
  v66 = type metadata accessor for ModifiedContent();
  v13 = type metadata accessor for ModifiedContent();
  v69 = *(v13 - 8);
  MEMORY[0x28223BE20](v13);
  v67 = &v59 - v14;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI24_ForegroundStyleModifierVyAA5ColorVGMd);
  v68 = v13;
  v73 = type metadata accessor for ModifiedContent();
  v71 = *(v73 - 8);
  MEMORY[0x28223BE20](v73);
  v72 = &v59 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v70 = &v59 - v17;
  type metadata accessor for ModifiedContent();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI21_TraitWritingModifierVyAA014LayoutPriorityC3KeyVGMd);
  type metadata accessor for ModifiedContent();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI30_EnvironmentKeyWritingModifierVyAA13TextAlignmentOGMd);
  type metadata accessor for ModifiedContent();
  v117 = type metadata accessor for ModifiedContent();
  v118 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyAA6SpacerVAA12_FrameLayoutVGMd);
  v119 = type metadata accessor for ModifiedContent();
  v120 = a6;
  v121 = MEMORY[0x277CE1180];
  swift_getTupleTypeMetadata();
  type metadata accessor for TupleView();
  swift_getWitnessTable();
  v18 = type metadata accessor for HStack();
  v60 = *(v18 - 8);
  MEMORY[0x28223BE20](v18);
  v20 = &v59 - v19;
  v21 = type metadata accessor for ModifiedContent();
  v61 = *(v21 - 8);
  MEMORY[0x28223BE20](v21);
  v23 = &v59 - v22;
  v76 = type metadata accessor for ModifiedContent();
  v64 = *(v76 - 8);
  MEMORY[0x28223BE20](v76);
  v65 = &v59 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v25);
  v27 = &v59 - v26;
  MEMORY[0x28223BE20](v28);
  v85 = &v59 - v29;
  static VerticalAlignment.lastTextBaseline.getter();
  v75 = a3;
  v86 = a3;
  v87 = v78;
  v88 = v84;
  v89 = v80;
  v90 = v81;
  v91 = v82;
  v92 = v77;
  v93 = v79;
  v94 = v83;
  v63 = v62;
  v30 = v62;
  v95 = v62;
  HStack.init(alignment:spacing:content:)();
  if ((FIUICurrentLanguageNeedsExtendedLineSpacing() & 1) == 0 && !v30)
  {
    v117 = v75;
    v118 = v78;
    v119 = v84;
    v120 = v80;
    v121 = v81;
    v122 = v82;
    v123 = v77;
    v124 = v79;
    type metadata accessor for MetricTextiOSPlatter();
  }

  v62 = !v30;
  WitnessTable = swift_getWitnessTable();
  View.offset(x:y:)();
  (*(v60 + 8))(v20, v18);
  static Alignment.center.getter();
  v115 = WitnessTable;
  v116 = MEMORY[0x277CDF748];
  v58 = swift_getWitnessTable();
  View.frame(minWidth:idealWidth:maxWidth:minHeight:idealHeight:maxHeight:alignment:)();
  v61[1](v23, v21);
  v113 = v58;
  v114 = MEMORY[0x277CDFC60];
  v32 = v76;
  v59 = swift_getWitnessTable();
  static ViewBuilder.buildExpression<A>(_:)(v27, v32, v59);
  v33 = v64;
  v34 = *(v64 + 8);
  v60 = v64 + 8;
  v61 = v34;
  (v34)(v27, v32);
  v35 = v77;
  v117 = v75;
  v118 = v78;
  v36 = v84;
  v119 = v84;
  v120 = v80;
  v121 = v81;
  v122 = v82;
  v123 = v77;
  v124 = v79;
  type metadata accessor for MetricTextiOSPlatter();
  v37 = v67;
  View.metricDescriptionFont(multiline:)(0, v36, v35);
  v38 = [objc_opt_self() secondaryLabelColor];
  v117 = Color.init(uiColor:)();
  v39 = lazy protocol witness table accessor for type MetricDescriptionCoreFont and conformance MetricDescriptionCoreFont();
  v111 = v35;
  v112 = v39;
  v40 = swift_getWitnessTable();
  v41 = lazy protocol witness table accessor for type ExtendedLineSpacingSupport and conformance ExtendedLineSpacingSupport();
  v109 = v40;
  v110 = v41;
  v42 = v68;
  v43 = swift_getWitnessTable();
  v44 = v72;
  View.foregroundStyle<A>(_:)();

  (*(v69 + 8))(v37, v42);
  v45 = lazy protocol witness table accessor for type _AnimationModifier<Bool> and conformance _AnimationModifier<A>(&lazy protocol witness table cache variable for type _ForegroundStyleModifier<Color> and conformance _ForegroundStyleModifier<A>, &_s7SwiftUI24_ForegroundStyleModifierVyAA5ColorVGMd);
  v107 = v43;
  v108 = v45;
  v46 = v73;
  v83 = swift_getWitnessTable();
  v47 = v70;
  static ViewBuilder.buildExpression<A>(_:)(v44, v46, v83);
  v48 = v71;
  v84 = *(v71 + 8);
  v84(v44, v46);
  v104 = 0;
  LOBYTE(v40) = v62;
  LOBYTE(v43) = v63;
  v105 = v62;
  v106 = v63;
  v117 = &v104;
  v49 = *(v33 + 16);
  v50 = v65;
  v51 = v76;
  v49(v65, v85, v76);
  v118 = v50;
  (*(v48 + 16))(v44, v47, v46);
  v101 = 0;
  v102 = v43;
  v103 = v40;
  v119 = v44;
  v120 = &v101;
  v100[0] = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI6SpacerVSgMd);
  v100[1] = v51;
  v52 = v51;
  v100[2] = v46;
  v100[3] = v100[0];
  v96 = lazy protocol witness table accessor for type Text? and conformance <A> A?(&lazy protocol witness table cache variable for type Spacer? and conformance <A> A?, &_s7SwiftUI6SpacerVSgMd);
  v97 = v59;
  v98 = v83;
  v99 = v96;
  static ViewBuilder.buildBlock<each A>(_:)(&v117, 4uLL, v100);
  v53 = v84;
  v84(v47, v46);
  v54 = v52;
  v55 = v52;
  v56 = v61;
  (v61)(v85, v54);
  v53(v44, v46);
  return (v56)(v50, v55);
}

uint64_t closure #1 in closure #2 in MetricTextiOSPlatter.body.getter@<X0>(uint64_t a1@<X0>, int a2@<W1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, void (*a8)(void, void)@<X7>, uint64_t a9@<X8>, uint64_t a10, uint64_t a11)
{
  v82 = a8;
  v69 = a7;
  v80 = a5;
  LODWORD(v72) = a2;
  v88 = a1;
  v77 = a9;
  v78 = *(a6 - 8);
  v85 = a11;
  v67 = a10;
  MEMORY[0x28223BE20](a1);
  v87 = &v64 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v86 = &v64 - v16;
  v17 = type metadata accessor for ModifiedContent();
  v75 = *(v17 - 8);
  v76 = v17;
  MEMORY[0x28223BE20](v17);
  v84 = &v64 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v19);
  v83 = &v64 - v20;
  v21 = type metadata accessor for ModifiedContent();
  v65 = *(v21 - 8);
  MEMORY[0x28223BE20](v21);
  v23 = &v64 - v22;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI21_TraitWritingModifierVyAA014LayoutPriorityC3KeyVGMd);
  v24 = type metadata accessor for ModifiedContent();
  v66 = *(v24 - 8);
  MEMORY[0x28223BE20](v24);
  v26 = &v64 - v25;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI30_EnvironmentKeyWritingModifierVyAA13TextAlignmentOGMd);
  v27 = type metadata accessor for ModifiedContent();
  v70 = *(v27 - 8);
  MEMORY[0x28223BE20](v27);
  v64 = &v64 - v28;
  v73 = type metadata accessor for ModifiedContent();
  v71 = *(v73 - 8);
  MEMORY[0x28223BE20](v73);
  v81 = &v64 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v30);
  v68 = &v64 - v31;
  MEMORY[0x28223BE20](v32);
  v89 = &v64 - v33;
  v109 = a3;
  v110 = a4;
  v74 = a4;
  v111 = v80;
  v112 = a6;
  v79 = a6;
  v34 = v69;
  v113 = v69;
  v114 = v82;
  v115 = v67;
  v116 = v85;
  v80 = type metadata accessor for MetricTextiOSPlatter();
  View.metricValueFont(includesSlashes:smallCaps:)(*(v88 + *(v80 + 96)), 1, a3, v34);
  v35 = lazy protocol witness table accessor for type MetricValueFont and conformance MetricValueFont();
  v107 = v34;
  v108 = v35;
  v69 = v35;
  WitnessTable = swift_getWitnessTable();
  View.layoutPriority(_:)();
  (*(v65 + 8))(v23, v21);
  v37 = lazy protocol witness table accessor for type _AnimationModifier<Bool> and conformance _AnimationModifier<A>(&lazy protocol witness table cache variable for type _TraitWritingModifier<LayoutPriorityTraitKey> and conformance _TraitWritingModifier<A>, &_s7SwiftUI21_TraitWritingModifierVyAA014LayoutPriorityC3KeyVGMd);
  v105 = WitnessTable;
  v106 = v37;
  v38 = v64;
  v39 = swift_getWitnessTable();
  View.multilineTextAlignment(_:)();
  (*(v66 + 8))(v26, v24);
  static Edge.Set.top.getter();
  if (v72)
  {
    MetricTextiOSPlatter.workoutViewStyle.getter(v80, &v109);
    specialized static MetricValueFont.capHeightToAscender(for:)(&v109);
  }

  v40 = lazy protocol witness table accessor for type _AnimationModifier<Bool> and conformance _AnimationModifier<A>(&lazy protocol witness table cache variable for type _EnvironmentKeyWritingModifier<TextAlignment> and conformance _EnvironmentKeyWritingModifier<A>, &_s7SwiftUI30_EnvironmentKeyWritingModifierVyAA13TextAlignmentOGMd);
  v98[9] = v39;
  v98[10] = v40;
  v41 = swift_getWitnessTable();
  v42 = v68;
  View.padding(_:_:)();
  (*(v70 + 8))(v38, v27);
  v98[7] = v41;
  v98[8] = MEMORY[0x277CDF918];
  v43 = v73;
  v67 = swift_getWitnessTable();
  static ViewBuilder.buildExpression<A>(_:)(v42, v43, v67);
  v44 = v71;
  v45 = *(v71 + 8);
  v70 = v71 + 8;
  v72 = v45;
  v45(v42, v43);
  static Alignment.center.getter();
  _FrameLayout.init(width:height:alignment:)();
  v64 = v117;
  v65 = v119;
  v68 = v121;
  v66 = v122;
  v104 = 1;
  v102 = v118;
  v100 = v120;
  v46 = v80;
  v47 = v88;
  v48 = v84;
  v49 = v82;
  View.metricValueFont(includesSlashes:smallCaps:)(0, 1, v74, v82);
  v98[5] = v49;
  v98[6] = v69;
  v50 = v76;
  v69 = swift_getWitnessTable();
  static ViewBuilder.buildExpression<A>(_:)(v48, v50, v69);
  v51 = v75;
  v52 = *(v75 + 8);
  v74 = v75 + 8;
  v82 = v52;
  v52(v48, v50);
  v53 = v85;
  v54 = v79;
  static ViewBuilder.buildExpression<A>(_:)(v47 + *(v46 + 92), v79, v85);
  v55 = v81;
  (*(v44 + 16))();
  v109 = 0;
  LOBYTE(v110) = v104;
  *(&v110 + 1) = *v103;
  HIDWORD(v110) = *&v103[3];
  v111 = v64;
  LOBYTE(v112) = v102;
  *(&v112 + 1) = *v101;
  HIDWORD(v112) = *&v101[3];
  v113 = v65;
  LOBYTE(v114) = v100;
  *(&v114 + 1) = *v99;
  HIDWORD(v114) = *&v99[3];
  v115 = v68;
  v116 = v66;
  v98[0] = v55;
  v98[1] = &v109;
  v56 = v83;
  (*(v51 + 16))(v48, v83, v50);
  v98[2] = v48;
  v57 = v78;
  v58 = v86;
  v59 = v87;
  (*(v78 + 16))();
  v96 = 0;
  v97 = 0;
  v98[3] = v59;
  v98[4] = &v96;
  v95[0] = v43;
  v95[1] = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyAA6SpacerVAA12_FrameLayoutVGMd);
  v95[2] = v50;
  v95[3] = v54;
  v95[4] = MEMORY[0x277CE1180];
  v90 = v67;
  v91 = lazy protocol witness table accessor for type ModifiedContent<Spacer, _FrameLayout> and conformance <> ModifiedContent<A, B>();
  v92 = v69;
  v93 = v53;
  v94 = MEMORY[0x277CE1170];
  static ViewBuilder.buildBlock<each A>(_:)(v98, 5uLL, v95);
  v60 = *(v57 + 8);
  v60(v58, v54);
  v61 = v82;
  v82(v56, v50);
  v62 = v72;
  v72(v89, v43);
  v60(v87, v54);
  v61(v84, v50);
  return v62(v81, v43);
}