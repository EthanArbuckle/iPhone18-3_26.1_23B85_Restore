uint64_t MediaConfigurationRoomButton.init(activityType:placement:)@<X0>(uint64_t result@<X0>, char *a2@<X1>, uint64_t a3@<X8>)
{
  v3 = *a2;
  *a3 = result;
  *(a3 + 8) = v3;
  return result;
}

double MediaConfigurationRoomButton.body.getter@<D0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  LOBYTE(v11[0]) = *(v1 + 8);
  if (static Platform.current.getter())
  {
    MediaConfigurationRoomButtonWatch.init(activityType:placement:)(v3, v11, v8);
    v10 = 0;
    v9 = 0;
  }

  else
  {
    MediaConfigurationRoomButtonPhone.init(activityType:placement:)(v3, v11, v8);
    v10 = 1;
    v9 = 1;
  }

  lazy protocol witness table accessor for type MediaConfigurationRoomButtonWatch and conformance MediaConfigurationRoomButtonWatch();
  lazy protocol witness table accessor for type MediaConfigurationRoomButtonPhone and conformance MediaConfigurationRoomButtonPhone();
  _ConditionalContent<>.init(storage:)();
  v4 = v11[3];
  v5 = v11[4];
  *(a1 + 32) = v11[2];
  *(a1 + 48) = v4;
  *(a1 + 64) = v5;
  *(a1 + 80) = v12;
  result = *v11;
  v7 = v11[1];
  *a1 = v11[0];
  *(a1 + 16) = v7;
  return result;
}

unint64_t lazy protocol witness table accessor for type MediaConfigurationRoomButtonWatch and conformance MediaConfigurationRoomButtonWatch()
{
  result = lazy protocol witness table cache variable for type MediaConfigurationRoomButtonWatch and conformance MediaConfigurationRoomButtonWatch;
  if (!lazy protocol witness table cache variable for type MediaConfigurationRoomButtonWatch and conformance MediaConfigurationRoomButtonWatch)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MediaConfigurationRoomButtonWatch and conformance MediaConfigurationRoomButtonWatch);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type MediaConfigurationRoomButtonPhone and conformance MediaConfigurationRoomButtonPhone()
{
  result = lazy protocol witness table cache variable for type MediaConfigurationRoomButtonPhone and conformance MediaConfigurationRoomButtonPhone;
  if (!lazy protocol witness table cache variable for type MediaConfigurationRoomButtonPhone and conformance MediaConfigurationRoomButtonPhone)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MediaConfigurationRoomButtonPhone and conformance MediaConfigurationRoomButtonPhone);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for MediaConfigurationRoomButton(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 9))
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

uint64_t storeEnumTagSinglePayload for MediaConfigurationRoomButton(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 9) = 1;
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

    *(result + 9) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for MediaConfigurationRoomButton.ButtonPlacement(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFE)
  {
    goto LABEL_20;
  }

  v2 = a2 + 2;
  if (a2 + 2 >= 0xFFFF00)
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

  if (v4 <= 1)
  {
    if (!v4)
    {
      goto LABEL_20;
    }

    v5 = a1[1];
    if (!a1[1])
    {
      goto LABEL_20;
    }

    return (*a1 | (v5 << 8)) - 2;
  }

  if (v4 == 2)
  {
    v5 = *(a1 + 1);
    if (*(a1 + 1))
    {
      return (*a1 | (v5 << 8)) - 2;
    }
  }

  else
  {
    v5 = *(a1 + 1);
    if (v5)
    {
      return (*a1 | (v5 << 8)) - 2;
    }
  }

LABEL_20:
  v7 = *a1;
  v8 = v7 >= 2;
  v9 = (v7 + 2147483646) & 0x7FFFFFFF;
  if (!v8)
  {
    v9 = -1;
  }

  if (v9 + 1 >= 2)
  {
    return v9;
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for MediaConfigurationRoomButton.ButtonPlacement(uint64_t result, unsigned int a2, unsigned int a3)
{
  v3 = a3 + 2;
  if (a3 + 2 >= 0xFFFF00)
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

  if (a3 < 0xFE)
  {
    v5 = 0;
  }

  if (a2 > 0xFD)
  {
    v6 = ((a2 - 254) >> 8) + 1;
    *result = a2 + 2;
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
    *result = a2 + 2;
    return result;
  }

  if (a2)
  {
    goto LABEL_22;
  }

  return result;
}

uint64_t getEnumTag for MediaConfigurationRoomButton.ButtonPlacement(unsigned __int8 *a1)
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

_BYTE *destructiveInjectEnumTag for MediaConfigurationRoomButton.ButtonPlacement(_BYTE *result, int a2)
{
  if (a2)
  {
    *result = a2 + 1;
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type _ConditionalContent<MediaConfigurationRoomButtonWatch, MediaConfigurationRoomButtonPhone> and conformance <> _ConditionalContent<A, B>()
{
  result = lazy protocol witness table cache variable for type _ConditionalContent<MediaConfigurationRoomButtonWatch, MediaConfigurationRoomButtonPhone> and conformance <> _ConditionalContent<A, B>;
  if (!lazy protocol witness table cache variable for type _ConditionalContent<MediaConfigurationRoomButtonWatch, MediaConfigurationRoomButtonPhone> and conformance <> _ConditionalContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI19_ConditionalContentVy07WorkoutB033MediaConfigurationRoomButtonWatchVAD0fghI5PhoneVGMd);
    lazy protocol witness table accessor for type MediaConfigurationRoomButtonWatch and conformance MediaConfigurationRoomButtonWatch();
    lazy protocol witness table accessor for type MediaConfigurationRoomButtonPhone and conformance MediaConfigurationRoomButtonPhone();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type _ConditionalContent<MediaConfigurationRoomButtonWatch, MediaConfigurationRoomButtonPhone> and conformance <> _ConditionalContent<A, B>);
  }

  return result;
}

uint64_t type metadata accessor for IntervalBlockConfigurationView()
{
  result = type metadata singleton initialization cache for IntervalBlockConfigurationView;
  if (!type metadata singleton initialization cache for IntervalBlockConfigurationView)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void type metadata completion function for IntervalBlockConfigurationView()
{
  type metadata accessor for EnvironmentObject<ConfigurationNavigationModel>();
  if (v0 <= 0x3F)
  {
    type metadata accessor for EnvironmentObject<IntervalWorkoutConfiguration>();
    if (v1 <= 0x3F)
    {
      type metadata accessor for ObservedObject<WorkoutBlock>();
      if (v2 <= 0x3F)
      {
        type metadata accessor for FIUIFormattingManager();
        if (v3 <= 0x3F)
        {
          type metadata accessor for HKActivityMoveMode(319);
          if (v4 <= 0x3F)
          {
            type metadata accessor for State<Bool>();
            if (v5 <= 0x3F)
            {
              type metadata accessor for Binding<UUID?>();
              if (v6 <= 0x3F)
              {
                swift_cvw_initStructMetadataWithLayoutString();
              }
            }
          }
        }
      }
    }
  }
}

uint64_t closure #1 in IntervalBlockConfigurationView.body.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v83 = a2;
  v78 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd);
  MEMORY[0x28223BE20](v78);
  v79 = v65 - v3;
  v76 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyAA7ForEachVySay11WorkoutCore0G4StepCG10Foundation4UUIDVACyACyACyACy0gB008IntervalI16ConfigurationRowVAA21_TraitWritingModifierVyAA016IsDeleteDisabledO3KeyVGGAA012_Environmentu9TransformQ0VySbGGAA01_vupQ0VyAM0M15NavigationModelCSgGGA_yAF0lgM0CSgGGGAQyAA02OnsoU0VGGMd);
  MEMORY[0x28223BE20](v76);
  v75 = v65 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI4ViewPAAE8onChange2of7initial_Qrqd___Sbyqd___qd__tctSQRd__lFQOyAA15ModifiedContentVyAA7ForEachVySay11WorkoutCore0L4StepCG10Foundation4UUIDVAHyAHyAHyAHy0lB008IntervalN16ConfigurationRowVAA21_TraitWritingModifierVyAA016IsDeleteDisabledT3KeyVGGAA012_Environmentz9TransformV0VySbGGAA012_EnvironmentzuV0VyAR0R15NavigationModelCSgGGA4_yAK0qlR0CSgGGGAVyAA02OnxtZ0VGG_AQSgQo_Md);
  v81 = *(v5 - 8);
  v82 = v5;
  MEMORY[0x28223BE20](v5);
  v80 = v65 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v77 = v65 - v8;
  v73 = type metadata accessor for IntervalBlockConfigurationView();
  v9 = *(v73 - 8);
  MEMORY[0x28223BE20](v73);
  v86 = v65 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v87 = v10;
  v72 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyACyAA6ButtonVy07WorkoutB013RepeatRowViewVGAA21_TraitWritingModifierVyAA016IsDeleteDisabledJ3KeyVGGAA012_Environmentp9TransformL0VySbGGMd);
  MEMORY[0x28223BE20](v72);
  v70 = v65 - v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI4ViewPAAE5sheet11isPresented9onDismiss7contentQrAA7BindingVySbG_yycSgqd__yctAaBRd__lFQOyAA15ModifiedContentVyAMyAA6ButtonVy07WorkoutB009RepeatRowC0VGAA21_TraitWritingModifierVyAA016IsDeleteDisabledQ3KeyVGGAA012_Environmentw9TransformS0VySbGG_AA010NavigationC0VyAP0O6PickerVGQo_Md);
  v13 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v69 = v65 - v14;
  v15 = type metadata accessor for WorkoutBlockType();
  v16 = *(v15 - 8);
  MEMORY[0x28223BE20](v15);
  v18 = v65 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v19);
  v21 = v65 - v20;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI4ViewPAAE5sheet11isPresented9onDismiss7contentQrAA7BindingVySbG_yycSgqd__yctAaBRd__lFQOyAA15ModifiedContentVyAMyAA6ButtonVy07WorkoutB009RepeatRowC0VGAA21_TraitWritingModifierVyAA016IsDeleteDisabledQ3KeyVGGAA012_Environmentw9TransformS0VySbGG_AA010NavigationC0VyAP0O6PickerVGQo_SgMd);
  MEMORY[0x28223BE20](v22 - 8);
  v74 = v65 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v24);
  v26 = v65 - v25;
  v85 = a1;
  v71 = *(a1 + 40);
  WorkoutBlock.blockType.getter();
  (*(v16 + 104))(v18, *MEMORY[0x277D7DDD0], v15);
  _s9WorkoutUI28ConfigurationNavigationModelCAC7Combine16ObservableObjectAAWlTm_15(&lazy protocol witness table cache variable for type WorkoutBlockType and conformance WorkoutBlockType, MEMORY[0x277D7DDE0]);
  dispatch thunk of RawRepresentable.rawValue.getter();
  dispatch thunk of RawRepresentable.rawValue.getter();
  v27 = *(v16 + 8);
  v27(v18, v15);
  v27(v21, v15);
  v28 = 1;
  v84 = v26;
  if (v88 == v90)
  {
    v29 = v85;
    v30 = v86;
    outlined init with copy of IntervalBlockConfigurationView(v85, v86);
    v67 = v12;
    v31 = (*(v9 + 80) + 16) & ~*(v9 + 80);
    v66 = v13;
    v32 = swift_allocObject();
    v33 = outlined init with take of IntervalBlockConfigurationView(v30, v32 + v31);
    v68 = v9;
    MEMORY[0x28223BE20](v33);
    lazy protocol witness table accessor for type RepeatRowView and conformance RepeatRowView();
    v34 = v70;
    Button.init(action:label:)();
    *(v34 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyAA6ButtonVy07WorkoutB013RepeatRowViewVGAA21_TraitWritingModifierVyAA016IsDeleteDisabledJ3KeyVGGMd) + 36)) = 1;
    v35 = (*(v29 + 96) & 0x20) == 0;
    KeyPath = swift_getKeyPath();
    v37 = swift_allocObject();
    *(v37 + 16) = v35;
    v38 = (v34 + *(v72 + 36));
    *v38 = KeyPath;
    v38[1] = _s7SwiftUI4ViewPAAE8disabledyQrSbFySbzcfU_TA_20;
    v38[2] = v37;
    v39 = *(v29 + 112);
    LOBYTE(v90) = *(v29 + 104);
    v91 = v39;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI5StateVySbGMd);
    State.projectedValue.getter();
    v65[3] = v89;
    v40 = v29;
    v26 = v84;
    outlined init with copy of IntervalBlockConfigurationView(v40, v30);
    v13 = v66;
    v41 = swift_allocObject();
    outlined init with take of IntervalBlockConfigurationView(v30, v41 + v31);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI14NavigationViewVy07WorkoutB012RepeatPickerVGMd);
    lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<Button<RepeatRowView>, _TraitWritingModifier<IsDeleteDisabledTraitKey>>, _EnvironmentKeyTransformModifier<Bool>> and conformance <> ModifiedContent<A, B>();
    lazy protocol witness table accessor for type TupleView<((<<opaque return type of View.sheet<A>(isPresented:onDismiss:content:)>>.0)?, <<opaque return type of View.onChange<A>(of:initial:_:)>>.0)> and conformance TupleView<A>(&lazy protocol witness table cache variable for type NavigationView<RepeatPicker> and conformance NavigationView<A>, &_s7SwiftUI14NavigationViewVy07WorkoutB012RepeatPickerVGMd);
    v9 = v68;
    v12 = v67;
    v42 = v69;
    View.sheet<A>(isPresented:onDismiss:content:)();

    _s10Foundation4UUIDVSgWOhTm_4(v34, &_s7SwiftUI15ModifiedContentVyACyAA6ButtonVy07WorkoutB013RepeatRowViewVGAA21_TraitWritingModifierVyAA016IsDeleteDisabledJ3KeyVGGAA012_Environmentp9TransformL0VySbGGMd);
    (*(v13 + 32))(v26, v42, v12);
    v28 = 0;
  }

  (*(v13 + 56))(v26, v28, 1, v12);
  v88 = WorkoutBlock.steps.getter();
  v43 = v85;
  v44 = v86;
  outlined init with copy of IntervalBlockConfigurationView(v85, v86);
  v45 = (*(v9 + 80) + 16) & ~*(v9 + 80);
  v46 = swift_allocObject();
  outlined init with take of IntervalBlockConfigurationView(v44, v46 + v45);
  v72 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay11WorkoutCore0A4StepCGMd);
  type metadata accessor for UUID();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyACyACyACy07WorkoutB028IntervalStepConfigurationRowVAA21_TraitWritingModifierVyAA016IsDeleteDisabledJ3KeyVGGAA012_Environmentp9TransformL0VySbGGAA01_qpkL0VyAD0H15NavigationModelCSgGGARy0E4Core0feH0CSgGGMd);
  lazy protocol witness table accessor for type TupleView<((<<opaque return type of View.sheet<A>(isPresented:onDismiss:content:)>>.0)?, <<opaque return type of View.onChange<A>(of:initial:_:)>>.0)> and conformance TupleView<A>(&lazy protocol witness table cache variable for type [WorkoutStep] and conformance [A], &_sSay11WorkoutCore0A4StepCGMd);
  lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<IntervalStepConfigurationRow, _TraitWritingModifier<IsDeleteDisabledTraitKey>>, _EnvironmentKeyTransformModifier<Bool>>, _EnvironmentKeyWritingModifier<ConfigurationNavigationModel?>>, _EnvironmentKeyWritingModifier<IntervalWorkoutConfiguration?>> and conformance <> ModifiedContent<A, B>();
  _s9WorkoutUI28ConfigurationNavigationModelCAC7Combine16ObservableObjectAAWlTm_15(&lazy protocol witness table cache variable for type WorkoutStep and conformance WorkoutStep, MEMORY[0x277D7DD30]);
  v47 = v75;
  ForEach<>.init(_:content:)();
  outlined init with copy of IntervalBlockConfigurationView(v43, v44);
  v48 = swift_allocObject();
  outlined init with take of IntervalBlockConfigurationView(v44, v48 + v45);
  v49 = swift_allocObject();
  *(v49 + 16) = partial apply for closure #5 in closure #1 in IntervalBlockConfigurationView.body.getter;
  *(v49 + 24) = v48;
  v50 = (v47 + *(v76 + 36));
  *v50 = _s10Foundation8IndexSetVIegn_ACytIegnr_TRTA_0;
  v50[1] = v49;
  v51 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI7BindingVy10Foundation4UUIDVSgGMd);
  v52 = v79;
  MEMORY[0x20F30B100](v51);
  outlined init with copy of IntervalBlockConfigurationView(v43, v44);
  v53 = swift_allocObject();
  outlined init with take of IntervalBlockConfigurationView(v44, v53 + v45);
  lazy protocol witness table accessor for type ModifiedContent<ForEach<[WorkoutStep], UUID, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<IntervalStepConfigurationRow, _TraitWritingModifier<IsDeleteDisabledTraitKey>>, _EnvironmentKeyTransformModifier<Bool>>, _EnvironmentKeyWritingModifier<ConfigurationNavigationModel?>>, _EnvironmentKeyWritingModifier<IntervalWorkoutConfiguration?>>>, _TraitWritingModifier<OnDeleteTraitKey>> and conformance <> ModifiedContent<A, B>();
  lazy protocol witness table accessor for type UUID? and conformance <A> A?();
  v54 = v77;
  View.onChange<A>(of:initial:_:)();

  _s10Foundation4UUIDVSgWOhTm_4(v52, &_s10Foundation4UUIDVSgMd);
  _s10Foundation4UUIDVSgWOhTm_4(v47, &_s7SwiftUI15ModifiedContentVyAA7ForEachVySay11WorkoutCore0G4StepCG10Foundation4UUIDVACyACyACyACy0gB008IntervalI16ConfigurationRowVAA21_TraitWritingModifierVyAA016IsDeleteDisabledO3KeyVGGAA012_Environmentu9TransformQ0VySbGGAA01_vupQ0VyAM0M15NavigationModelCSgGGA_yAF0lgM0CSgGGGAQyAA02OnsoU0VGGMd);
  v55 = v84;
  v56 = v74;
  sub_20C697FD4(v84, v74);
  v58 = v80;
  v57 = v81;
  v59 = *(v81 + 16);
  v60 = v82;
  v59(v80, v54, v82);
  v61 = v83;
  sub_20C697FD4(v56, v83);
  v62 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI4ViewPAAE5sheet11isPresented9onDismiss7contentQrAA7BindingVySbG_yycSgqd__yctAaBRd__lFQOyAA15ModifiedContentVyAMyAA6ButtonVy07WorkoutB009RepeatRowC0VGAA21_TraitWritingModifierVyAA016IsDeleteDisabledQ3KeyVGGAA012_Environmentw9TransformS0VySbGG_AA010NavigationC0VyAP0O6PickerVGQo_Sg_AcAE0G6Change2of7initial_Qrqd___Sbyqd___qd__tctSQRd__lFQOyAMyAA7ForEachVySay0N4Core0N4StepCG10Foundation4UUIDVAMyAMyAMyAMyAP025IntervalStepConfigurationP0VAXGA0_GAA01_xwrS0VyAP013ConfigurationZ5ModelCSgGGA26_yA14_08IntervalN13ConfigurationCSgGGGAUyAA02OnuqW0VGG_A20_SgQo_tMd);
  v59((v61 + *(v62 + 48)), v58, v60);
  v63 = *(v57 + 8);
  v63(v54, v60);
  sub_20C698044(v55);
  v63(v58, v60);
  return sub_20C698044(v56);
}

uint64_t closure #1 in closure #1 in IntervalBlockConfigurationView.body.getter()
{

  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI5StateVySbGMd);
  State.wrappedValue.getter();
  State.wrappedValue.setter();
}

double closure #2 in closure #1 in IntervalBlockConfigurationView.body.getter@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *(a1 + 32);
  v4 = *(a1 + 40);
  v5 = type metadata accessor for WorkoutBlock();
  v6 = _s9WorkoutUI28ConfigurationNavigationModelCAC7Combine16ObservableObjectAAWlTm_15(&lazy protocol witness table cache variable for type WorkoutBlock and conformance WorkoutBlock, MEMORY[0x277D7DD60]);
  MEMORY[0x20F308920](v3, v4, v5, v6);
  swift_getKeyPath();
  ObservedObject.Wrapper.subscript.getter();

  result = *&v8;
  *a2 = v8;
  *(a2 + 16) = v9;
  *(a2 + 24) = 0;
  *(a2 + 32) = 1;
  return result;
}

uint64_t closure #1 in closure #3 in closure #1 in IntervalBlockConfigurationView.body.getter@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = type metadata accessor for IntervalBlockConfigurationView();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v21 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v10 = &v21 - v9;
  MEMORY[0x28223BE20](v11);
  v13 = &v21 - v12;
  v22 = *(a1 + 48);
  outlined init with copy of IntervalBlockConfigurationView(a1, &v21 - v12);
  v14 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v15 = swift_allocObject();
  outlined init with take of IntervalBlockConfigurationView(v13, v15 + v14);
  outlined init with copy of IntervalBlockConfigurationView(a1, v10);
  v16 = swift_allocObject();
  outlined init with take of IntervalBlockConfigurationView(v10, v16 + v14);
  outlined init with copy of IntervalBlockConfigurationView(a1, v7);
  v17 = swift_allocObject();
  outlined init with take of IntervalBlockConfigurationView(v7, v17 + v14);
  type metadata accessor for WorkoutBlock();
  _s9WorkoutUI28ConfigurationNavigationModelCAC7Combine16ObservableObjectAAWlTm_15(&lazy protocol witness table cache variable for type WorkoutBlock and conformance WorkoutBlock, MEMORY[0x277D7DD60]);

  v18 = v22;
  result = ObservedObject.init(wrappedValue:)();
  *a2 = result;
  a2[1] = v20;
  a2[2] = v18;
  a2[3] = partial apply for closure #1 in closure #1 in closure #3 in closure #1 in IntervalBlockConfigurationView.body.getter;
  a2[4] = v15;
  a2[5] = partial apply for closure #2 in closure #1 in closure #3 in closure #1 in IntervalBlockConfigurationView.body.getter;
  a2[6] = v16;
  a2[7] = partial apply for closure #3 in closure #1 in closure #3 in closure #1 in IntervalBlockConfigurationView.body.getter;
  a2[8] = v17;
  return result;
}

uint64_t closure #1 in closure #1 in closure #3 in closure #1 in IntervalBlockConfigurationView.body.getter()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI5StateVySbGMd);
  State.wrappedValue.setter();
  return WorkoutBlock.repetitions.setter();
}

void closure #3 in closure #1 in closure #3 in closure #1 in IntervalBlockConfigurationView.body.getter(uint64_t a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI5StateVySbGMd);
  State.wrappedValue.setter();
  v2 = *(a1 + 16);
  if (v2)
  {
    v3 = v2;
    v4 = IntervalWorkoutConfiguration.intervalWorkout.getter();

    IntervalWorkout.removeRepeat(from:)();
  }

  else
  {
    type metadata accessor for IntervalWorkoutConfiguration();
    _s9WorkoutUI28ConfigurationNavigationModelCAC7Combine16ObservableObjectAAWlTm_15(&lazy protocol witness table cache variable for type IntervalWorkoutConfiguration and conformance WorkoutConfiguration, MEMORY[0x277D7D9A0]);
    EnvironmentObject.error()();
    __break(1u);
  }
}

uint64_t closure #4 in closure #1 in IntervalBlockConfigurationView.body.getter@<X0>(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  v52 = a2;
  v3 = type metadata accessor for UUID();
  v47 = *(v3 - 8);
  v48 = v3;
  MEMORY[0x28223BE20](v3);
  v5 = &v41 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVy07WorkoutB028IntervalStepConfigurationRowVAA21_TraitWritingModifierVyAA016IsDeleteDisabledJ3KeyVGGMd);
  v7 = v6 - 8;
  MEMORY[0x28223BE20](v6);
  v9 = (&v41 - v8);
  v49 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyACy07WorkoutB028IntervalStepConfigurationRowVAA21_TraitWritingModifierVyAA016IsDeleteDisabledJ3KeyVGGAA012_Environmentp9TransformL0VySbGGMd);
  MEMORY[0x28223BE20](v49);
  v45 = &v41 - v10;
  v50 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyACyACy07WorkoutB028IntervalStepConfigurationRowVAA21_TraitWritingModifierVyAA016IsDeleteDisabledJ3KeyVGGAA012_Environmentp9TransformL0VySbGGAA01_qpkL0VyAD0H15NavigationModelCSgGGMd);
  MEMORY[0x28223BE20](v50);
  v51 = &v41 - v11;
  v12 = *(a1 + 48);
  v42 = *(a1 + 56);
  type metadata accessor for IntervalBlockConfigurationView();
  type metadata accessor for IntervalStepConfigurationRow();

  v41 = v12;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI7BindingVy10Foundation4UUIDVSgGMd);
  Binding.projectedValue.getter();
  type metadata accessor for ConfigurationNavigationModel();
  v43 = _s9WorkoutUI28ConfigurationNavigationModelCAC7Combine16ObservableObjectAAWlTm_15(&lazy protocol witness table cache variable for type ConfigurationNavigationModel and conformance ConfigurationNavigationModel, type metadata accessor for ConfigurationNavigationModel);
  v13 = EnvironmentObject.init()();
  v15 = v14;
  v16 = type metadata accessor for IntervalWorkoutConfiguration();
  v17 = _s9WorkoutUI28ConfigurationNavigationModelCAC7Combine16ObservableObjectAAWlTm_15(&lazy protocol witness table cache variable for type IntervalWorkoutConfiguration and conformance WorkoutConfiguration, MEMORY[0x277D7D9A0]);
  v46 = v16;
  v44 = v17;
  v18 = EnvironmentObject.init()();
  *v9 = v13;
  v9[1] = v15;
  v9[2] = v18;
  v9[3] = v19;
  type metadata accessor for WorkoutBlock();
  _s9WorkoutUI28ConfigurationNavigationModelCAC7Combine16ObservableObjectAAWlTm_15(&lazy protocol witness table cache variable for type WorkoutBlock and conformance WorkoutBlock, MEMORY[0x277D7DD60]);
  v9[4] = ObservedObject.init(wrappedValue:)();
  v9[5] = v20;
  type metadata accessor for WorkoutStep();
  _s9WorkoutUI28ConfigurationNavigationModelCAC7Combine16ObservableObjectAAWlTm_15(&lazy protocol witness table cache variable for type WorkoutStep and conformance WorkoutStep, MEMORY[0x277D7DD30]);
  v9[6] = ObservedObject.init(wrappedValue:)();
  v9[7] = v21;
  v22 = v42;
  v9[8] = v41;
  v9[9] = v22;
  MEMORY[0x20F304900]();
  LOBYTE(v13) = IntervalBlockConfigurationView.shouldDisableDelete(stepId:)(v5);
  (*(v47 + 8))(v5, v48);
  *(v9 + *(v7 + 44)) = v13 & 1;
  if ((*(a1 + 96) & 0x20) != 0)
  {
    goto LABEL_5;
  }

  v23 = *(a1 + 16);
  if (!v23)
  {
LABEL_10:
    EnvironmentObject.error()();
    __break(1u);
    goto LABEL_11;
  }

  v24 = v23;
  v25 = dispatch thunk of WorkoutConfiguration.externalProvider.getter();

  if (v25)
  {

LABEL_5:
    v26 = 0;
    goto LABEL_6;
  }

  v26 = 1;
LABEL_6:
  KeyPath = swift_getKeyPath();
  v28 = swift_allocObject();
  *(v28 + 16) = v26;
  v29 = v45;
  outlined init with take of ModifiedContent<IntervalStepConfigurationRow, _TraitWritingModifier<IsDeleteDisabledTraitKey>>(v9, v45, &_s7SwiftUI15ModifiedContentVy07WorkoutB028IntervalStepConfigurationRowVAA21_TraitWritingModifierVyAA016IsDeleteDisabledJ3KeyVGGMd);
  v30 = (v29 + *(v49 + 36));
  *v30 = KeyPath;
  v30[1] = closure #1 in View.disabled(_:)partial apply;
  v30[2] = v28;
  v31 = *a1;
  if (*a1)
  {

    v32 = static ObservableObject.environmentStore.getter();
    v33 = v51;
    outlined init with take of ModifiedContent<IntervalStepConfigurationRow, _TraitWritingModifier<IsDeleteDisabledTraitKey>>(v29, v51, &_s7SwiftUI15ModifiedContentVyACy07WorkoutB028IntervalStepConfigurationRowVAA21_TraitWritingModifierVyAA016IsDeleteDisabledJ3KeyVGGAA012_Environmentp9TransformL0VySbGGMd);
    v34 = (v33 + *(v50 + 36));
    *v34 = v32;
    v34[1] = v31;
    v35 = *(a1 + 16);
    if (v35)
    {
      v36 = v35;
      v37 = static ObservableObject.environmentStore.getter();
      v38 = v52;
      outlined init with take of ModifiedContent<IntervalStepConfigurationRow, _TraitWritingModifier<IsDeleteDisabledTraitKey>>(v33, v52, &_s7SwiftUI15ModifiedContentVyACyACy07WorkoutB028IntervalStepConfigurationRowVAA21_TraitWritingModifierVyAA016IsDeleteDisabledJ3KeyVGGAA012_Environmentp9TransformL0VySbGGAA01_qpkL0VyAD0H15NavigationModelCSgGGMd);
      result = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyACyACyACy07WorkoutB028IntervalStepConfigurationRowVAA21_TraitWritingModifierVyAA016IsDeleteDisabledJ3KeyVGGAA012_Environmentp9TransformL0VySbGGAA01_qpkL0VyAD0H15NavigationModelCSgGGARy0E4Core0feH0CSgGGMd);
      v40 = (v38 + *(result + 36));
      *v40 = v37;
      v40[1] = v35;
      return result;
    }

    goto LABEL_10;
  }

LABEL_11:
  result = EnvironmentObject.error()();
  __break(1u);
  return result;
}

uint64_t IntervalBlockConfigurationView.shouldDisableDelete(stepId:)(uint64_t a1)
{
  v3 = type metadata accessor for UUID();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v26 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSg_ADtMd);
  MEMORY[0x28223BE20](v7);
  v9 = &v26 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v26 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v15 = &v26 - v14;
  MEMORY[0x28223BE20](v16);
  v18 = &v26 - v17;
  if ((*(v1 + 96) & 0x20) == 0)
  {
    goto LABEL_2;
  }

  v27 = v6;
  type metadata accessor for IntervalBlockConfigurationView();
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI7BindingVy10Foundation4UUIDVSgGMd);
  MEMORY[0x20F30B100](v20);
  (*(v4 + 16))(v15, a1, v3);
  (*(v4 + 56))(v15, 0, 1, v3);
  v21 = *(v7 + 48);
  outlined init with copy of UUID?(v18, v9);
  outlined init with copy of UUID?(v15, &v9[v21]);
  v22 = *(v4 + 48);
  if (v22(v9, 1, v3) != 1)
  {
    outlined init with copy of UUID?(v9, v12);
    if (v22(&v9[v21], 1, v3) != 1)
    {
      v23 = v27;
      (*(v4 + 32))(v27, &v9[v21], v3);
      _s9WorkoutUI28ConfigurationNavigationModelCAC7Combine16ObservableObjectAAWlTm_15(&lazy protocol witness table cache variable for type UUID and conformance UUID, MEMORY[0x277CC95F0]);
      v19 = dispatch thunk of static Equatable.== infix(_:_:)();
      v24 = *(v4 + 8);
      v24(v23, v3);
      _s10Foundation4UUIDVSgWOhTm_4(v15, &_s10Foundation4UUIDVSgMd);
      _s10Foundation4UUIDVSgWOhTm_4(v18, &_s10Foundation4UUIDVSgMd);
      v24(v12, v3);
      _s10Foundation4UUIDVSgWOhTm_4(v9, &_s10Foundation4UUIDVSgMd);
      return v19 & 1;
    }

    _s10Foundation4UUIDVSgWOhTm_4(v15, &_s10Foundation4UUIDVSgMd);
    _s10Foundation4UUIDVSgWOhTm_4(v18, &_s10Foundation4UUIDVSgMd);
    (*(v4 + 8))(v12, v3);
    goto LABEL_8;
  }

  _s10Foundation4UUIDVSgWOhTm_4(v15, &_s10Foundation4UUIDVSgMd);
  _s10Foundation4UUIDVSgWOhTm_4(v18, &_s10Foundation4UUIDVSgMd);
  if (v22(&v9[v21], 1, v3) != 1)
  {
LABEL_8:
    _s10Foundation4UUIDVSgWOhTm_4(v9, &_s10Foundation4UUIDVSg_ADtMd);
    v19 = 0;
    return v19 & 1;
  }

  _s10Foundation4UUIDVSgWOhTm_4(v9, &_s10Foundation4UUIDVSgMd);
LABEL_2:
  v19 = 1;
  return v19 & 1;
}

void closure #5 in closure #1 in IntervalBlockConfigurationView.body.getter(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  if (v2)
  {
    v3 = v2;
    IntervalWorkoutConfiguration.removeSteps(atOffsets:from:)();
  }

  else
  {
    type metadata accessor for IntervalWorkoutConfiguration();
    _s9WorkoutUI28ConfigurationNavigationModelCAC7Combine16ObservableObjectAAWlTm_15(&lazy protocol witness table cache variable for type IntervalWorkoutConfiguration and conformance WorkoutConfiguration, MEMORY[0x277D7D9A0]);
    EnvironmentObject.error()();
    __break(1u);
  }
}

uint64_t closure #6 in closure #1 in IntervalBlockConfigurationView.body.getter(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v14[-v6];
  v8 = type metadata accessor for UUID();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v14[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  outlined init with copy of UUID?(a1, v7);
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    return _s10Foundation4UUIDVSgWOhTm_4(v7, &_s10Foundation4UUIDVSgMd);
  }

  v13 = (*(v9 + 32))(v11, v7, v8);
  MEMORY[0x28223BE20](v13);
  *&v14[-16] = a3;
  *&v14[-8] = v11;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sytSgMd);
  withAnimation<A>(_:_:)();
  return (*(v9 + 8))(v11, v8);
}

uint64_t closure #1 in closure #6 in closure #1 in IntervalBlockConfigurationView.body.getter@<X0>(uint64_t a1@<X1>, BOOL *a2@<X8>)
{
  v4 = WorkoutBlock.steps.getter();
  v9[2] = a1;
  v5 = specialized Sequence.first(where:)(partial apply for closure #1 in closure #1 in closure #6 in closure #1 in IntervalBlockConfigurationView.body.getter, v9, v4);

  if (v5)
  {
    v7 = WorkoutStep.forcePublisherUpdate.modify();
    *v8 = !*v8;
    v7(v10, 0);
  }

  *a2 = v5 == 0;
  return result;
}

uint64_t closure #1 in closure #1 in closure #6 in closure #1 in IntervalBlockConfigurationView.body.getter()
{
  v0 = type metadata accessor for UUID();
  v1 = *(v0 - 8);
  v2 = MEMORY[0x28223BE20](v0);
  v4 = &v7 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x20F304900](v2);
  v5 = static UUID.== infix(_:_:)();
  (*(v1 + 8))(v4, v0);
  return v5 & 1;
}

uint64_t protocol witness for View.body.getter in conformance IntervalBlockConfigurationView()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI9TupleViewVyAA0D0PAAE5sheet11isPresented9onDismiss7contentQrAA7BindingVySbG_yycSgqd__yctAaDRd__lFQOyAA15ModifiedContentVyAOyAA6ButtonVy07WorkoutB009RepeatRowD0VGAA21_TraitWritingModifierVyAA016IsDeleteDisabledR3KeyVGGAA012_Environmentx9TransformT0VySbGG_AA010NavigationD0VyAR0P6PickerVGQo_Sg_AeAE0H6Change2of7initial_Qrqd___Sbyqd___qd__tctSQRd__lFQOyAOyAA7ForEachVySay0O4Core0O4StepCG10Foundation4UUIDVAOyAOyAOyAOyAR025IntervalStepConfigurationQ0VAZGA2_GAA01_yxsT0VyAR28ConfigurationNavigationModelCSgGGA28_yA16_08IntervalO13ConfigurationCSgGGGAWyAA02OnvrX0VGG_A22_SgQo_tGMd);
  lazy protocol witness table accessor for type TupleView<((<<opaque return type of View.sheet<A>(isPresented:onDismiss:content:)>>.0)?, <<opaque return type of View.onChange<A>(of:initial:_:)>>.0)> and conformance TupleView<A>(&lazy protocol witness table cache variable for type TupleView<((<<opaque return type of View.sheet<A>(isPresented:onDismiss:content:)>>.0)?, <<opaque return type of View.onChange<A>(of:initial:_:)>>.0)> and conformance TupleView<A>, &_s7SwiftUI9TupleViewVyAA0D0PAAE5sheet11isPresented9onDismiss7contentQrAA7BindingVySbG_yycSgqd__yctAaDRd__lFQOyAA15ModifiedContentVyAOyAA6ButtonVy07WorkoutB009RepeatRowD0VGAA21_TraitWritingModifierVyAA016IsDeleteDisabledR3KeyVGGAA012_Environmentx9TransformT0VySbGG_AA010NavigationD0VyAR0P6PickerVGQo_Sg_AeAE0H6Change2of7initial_Qrqd___Sbyqd___qd__tctSQRd__lFQOyAOyAA7ForEachVySay0O4Core0O4StepCG10Foundation4UUIDVAOyAOyAOyAOyAR025IntervalStepConfigurationQ0VAZGA2_GAA01_yxsT0VyAR28ConfigurationNavigationModelCSgGGA28_yA16_08IntervalO13ConfigurationCSgGGGAWyAA02OnvrX0VGG_A22_SgQo_tGMd);
  return Section<>.init(content:)();
}

uint64_t outlined init with copy of IntervalBlockConfigurationView(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for IntervalBlockConfigurationView();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t outlined init with take of IntervalBlockConfigurationView(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for IntervalBlockConfigurationView();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t partial apply for closure #4 in closure #1 in IntervalBlockConfigurationView.body.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for IntervalBlockConfigurationView() - 8);
  v4 = v1 + ((*(v3 + 80) + 16) & ~*(v3 + 80));

  return closure #4 in closure #1 in IntervalBlockConfigurationView.body.getter(v4, a1);
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<IntervalStepConfigurationRow, _TraitWritingModifier<IsDeleteDisabledTraitKey>>, _EnvironmentKeyTransformModifier<Bool>>, _EnvironmentKeyWritingModifier<ConfigurationNavigationModel?>>, _EnvironmentKeyWritingModifier<IntervalWorkoutConfiguration?>> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<IntervalStepConfigurationRow, _TraitWritingModifier<IsDeleteDisabledTraitKey>>, _EnvironmentKeyTransformModifier<Bool>>, _EnvironmentKeyWritingModifier<ConfigurationNavigationModel?>>, _EnvironmentKeyWritingModifier<IntervalWorkoutConfiguration?>> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<IntervalStepConfigurationRow, _TraitWritingModifier<IsDeleteDisabledTraitKey>>, _EnvironmentKeyTransformModifier<Bool>>, _EnvironmentKeyWritingModifier<ConfigurationNavigationModel?>>, _EnvironmentKeyWritingModifier<IntervalWorkoutConfiguration?>> and conformance <> ModifiedContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyACyACyACy07WorkoutB028IntervalStepConfigurationRowVAA21_TraitWritingModifierVyAA016IsDeleteDisabledJ3KeyVGGAA012_Environmentp9TransformL0VySbGGAA01_qpkL0VyAD0H15NavigationModelCSgGGARy0E4Core0feH0CSgGGMd);
    lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<ModifiedContent<IntervalStepConfigurationRow, _TraitWritingModifier<IsDeleteDisabledTraitKey>>, _EnvironmentKeyTransformModifier<Bool>>, _EnvironmentKeyWritingModifier<ConfigurationNavigationModel?>> and conformance <> ModifiedContent<A, B>();
    lazy protocol witness table accessor for type TupleView<((<<opaque return type of View.sheet<A>(isPresented:onDismiss:content:)>>.0)?, <<opaque return type of View.onChange<A>(of:initial:_:)>>.0)> and conformance TupleView<A>(&lazy protocol witness table cache variable for type _EnvironmentKeyWritingModifier<IntervalWorkoutConfiguration?> and conformance _EnvironmentKeyWritingModifier<A>, &_s7SwiftUI30_EnvironmentKeyWritingModifierVy11WorkoutCore08IntervalG13ConfigurationCSgGMd);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<IntervalStepConfigurationRow, _TraitWritingModifier<IsDeleteDisabledTraitKey>>, _EnvironmentKeyTransformModifier<Bool>>, _EnvironmentKeyWritingModifier<ConfigurationNavigationModel?>>, _EnvironmentKeyWritingModifier<IntervalWorkoutConfiguration?>> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<ModifiedContent<IntervalStepConfigurationRow, _TraitWritingModifier<IsDeleteDisabledTraitKey>>, _EnvironmentKeyTransformModifier<Bool>>, _EnvironmentKeyWritingModifier<ConfigurationNavigationModel?>> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<IntervalStepConfigurationRow, _TraitWritingModifier<IsDeleteDisabledTraitKey>>, _EnvironmentKeyTransformModifier<Bool>>, _EnvironmentKeyWritingModifier<ConfigurationNavigationModel?>> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<IntervalStepConfigurationRow, _TraitWritingModifier<IsDeleteDisabledTraitKey>>, _EnvironmentKeyTransformModifier<Bool>>, _EnvironmentKeyWritingModifier<ConfigurationNavigationModel?>> and conformance <> ModifiedContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyACyACy07WorkoutB028IntervalStepConfigurationRowVAA21_TraitWritingModifierVyAA016IsDeleteDisabledJ3KeyVGGAA012_Environmentp9TransformL0VySbGGAA01_qpkL0VyAD0H15NavigationModelCSgGGMd);
    lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<IntervalStepConfigurationRow, _TraitWritingModifier<IsDeleteDisabledTraitKey>>, _EnvironmentKeyTransformModifier<Bool>> and conformance <> ModifiedContent<A, B>();
    lazy protocol witness table accessor for type TupleView<((<<opaque return type of View.sheet<A>(isPresented:onDismiss:content:)>>.0)?, <<opaque return type of View.onChange<A>(of:initial:_:)>>.0)> and conformance TupleView<A>(&lazy protocol witness table cache variable for type _EnvironmentKeyWritingModifier<ConfigurationNavigationModel?> and conformance _EnvironmentKeyWritingModifier<A>, &_s7SwiftUI30_EnvironmentKeyWritingModifierVy07WorkoutB028ConfigurationNavigationModelCSgGMd);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<IntervalStepConfigurationRow, _TraitWritingModifier<IsDeleteDisabledTraitKey>>, _EnvironmentKeyTransformModifier<Bool>>, _EnvironmentKeyWritingModifier<ConfigurationNavigationModel?>> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<IntervalStepConfigurationRow, _TraitWritingModifier<IsDeleteDisabledTraitKey>>, _EnvironmentKeyTransformModifier<Bool>> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<IntervalStepConfigurationRow, _TraitWritingModifier<IsDeleteDisabledTraitKey>>, _EnvironmentKeyTransformModifier<Bool>> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<IntervalStepConfigurationRow, _TraitWritingModifier<IsDeleteDisabledTraitKey>>, _EnvironmentKeyTransformModifier<Bool>> and conformance <> ModifiedContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyACy07WorkoutB028IntervalStepConfigurationRowVAA21_TraitWritingModifierVyAA016IsDeleteDisabledJ3KeyVGGAA012_Environmentp9TransformL0VySbGGMd);
    lazy protocol witness table accessor for type ModifiedContent<IntervalStepConfigurationRow, _TraitWritingModifier<IsDeleteDisabledTraitKey>> and conformance <> ModifiedContent<A, B>();
    lazy protocol witness table accessor for type TupleView<((<<opaque return type of View.sheet<A>(isPresented:onDismiss:content:)>>.0)?, <<opaque return type of View.onChange<A>(of:initial:_:)>>.0)> and conformance TupleView<A>(&lazy protocol witness table cache variable for type _EnvironmentKeyTransformModifier<Bool> and conformance _EnvironmentKeyTransformModifier<A>, &_s7SwiftUI32_EnvironmentKeyTransformModifierVySbGMd);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<IntervalStepConfigurationRow, _TraitWritingModifier<IsDeleteDisabledTraitKey>>, _EnvironmentKeyTransformModifier<Bool>> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<IntervalStepConfigurationRow, _TraitWritingModifier<IsDeleteDisabledTraitKey>> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<IntervalStepConfigurationRow, _TraitWritingModifier<IsDeleteDisabledTraitKey>> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<IntervalStepConfigurationRow, _TraitWritingModifier<IsDeleteDisabledTraitKey>> and conformance <> ModifiedContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVy07WorkoutB028IntervalStepConfigurationRowVAA21_TraitWritingModifierVyAA016IsDeleteDisabledJ3KeyVGGMd);
    _s9WorkoutUI28ConfigurationNavigationModelCAC7Combine16ObservableObjectAAWlTm_15(&lazy protocol witness table cache variable for type IntervalStepConfigurationRow and conformance IntervalStepConfigurationRow, type metadata accessor for IntervalStepConfigurationRow);
    lazy protocol witness table accessor for type TupleView<((<<opaque return type of View.sheet<A>(isPresented:onDismiss:content:)>>.0)?, <<opaque return type of View.onChange<A>(of:initial:_:)>>.0)> and conformance TupleView<A>(&lazy protocol witness table cache variable for type _TraitWritingModifier<IsDeleteDisabledTraitKey> and conformance _TraitWritingModifier<A>, &_s7SwiftUI21_TraitWritingModifierVyAA016IsDeleteDisabledC3KeyVGMd);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<IntervalStepConfigurationRow, _TraitWritingModifier<IsDeleteDisabledTraitKey>> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

void partial apply for closure #5 in closure #1 in IntervalBlockConfigurationView.body.getter(uint64_t a1)
{
  v3 = *(type metadata accessor for IntervalBlockConfigurationView() - 8);
  v4 = v1 + ((*(v3 + 80) + 16) & ~*(v3 + 80));

  closure #5 in closure #1 in IntervalBlockConfigurationView.body.getter(a1, v4);
}

uint64_t partial apply for closure #6 in closure #1 in IntervalBlockConfigurationView.body.getter(uint64_t a1, uint64_t a2)
{
  v5 = *(type metadata accessor for IntervalBlockConfigurationView() - 8);
  v6 = v2 + ((*(v5 + 80) + 16) & ~*(v5 + 80));

  return closure #6 in closure #1 in IntervalBlockConfigurationView.body.getter(a1, a2, v6);
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<ForEach<[WorkoutStep], UUID, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<IntervalStepConfigurationRow, _TraitWritingModifier<IsDeleteDisabledTraitKey>>, _EnvironmentKeyTransformModifier<Bool>>, _EnvironmentKeyWritingModifier<ConfigurationNavigationModel?>>, _EnvironmentKeyWritingModifier<IntervalWorkoutConfiguration?>>>, _TraitWritingModifier<OnDeleteTraitKey>> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<ForEach<[WorkoutStep], UUID, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<IntervalStepConfigurationRow, _TraitWritingModifier<IsDeleteDisabledTraitKey>>, _EnvironmentKeyTransformModifier<Bool>>, _EnvironmentKeyWritingModifier<ConfigurationNavigationModel?>>, _EnvironmentKeyWritingModifier<IntervalWorkoutConfiguration?>>>, _TraitWritingModifier<OnDeleteTraitKey>> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<ForEach<[WorkoutStep], UUID, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<IntervalStepConfigurationRow, _TraitWritingModifier<IsDeleteDisabledTraitKey>>, _EnvironmentKeyTransformModifier<Bool>>, _EnvironmentKeyWritingModifier<ConfigurationNavigationModel?>>, _EnvironmentKeyWritingModifier<IntervalWorkoutConfiguration?>>>, _TraitWritingModifier<OnDeleteTraitKey>> and conformance <> ModifiedContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyAA7ForEachVySay11WorkoutCore0G4StepCG10Foundation4UUIDVACyACyACyACy0gB008IntervalI16ConfigurationRowVAA21_TraitWritingModifierVyAA016IsDeleteDisabledO3KeyVGGAA012_Environmentu9TransformQ0VySbGGAA01_vupQ0VyAM0M15NavigationModelCSgGGA_yAF0lgM0CSgGGGAQyAA02OnsoU0VGGMd);
    lazy protocol witness table accessor for type ForEach<[WorkoutStep], UUID, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<IntervalStepConfigurationRow, _TraitWritingModifier<IsDeleteDisabledTraitKey>>, _EnvironmentKeyTransformModifier<Bool>>, _EnvironmentKeyWritingModifier<ConfigurationNavigationModel?>>, _EnvironmentKeyWritingModifier<IntervalWorkoutConfiguration?>>> and conformance <> ForEach<A, B, C>();
    lazy protocol witness table accessor for type TupleView<((<<opaque return type of View.sheet<A>(isPresented:onDismiss:content:)>>.0)?, <<opaque return type of View.onChange<A>(of:initial:_:)>>.0)> and conformance TupleView<A>(&lazy protocol witness table cache variable for type _TraitWritingModifier<OnDeleteTraitKey> and conformance _TraitWritingModifier<A>, &_s7SwiftUI21_TraitWritingModifierVyAA08OnDeleteC3KeyVGMd);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<ForEach<[WorkoutStep], UUID, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<IntervalStepConfigurationRow, _TraitWritingModifier<IsDeleteDisabledTraitKey>>, _EnvironmentKeyTransformModifier<Bool>>, _EnvironmentKeyWritingModifier<ConfigurationNavigationModel?>>, _EnvironmentKeyWritingModifier<IntervalWorkoutConfiguration?>>>, _TraitWritingModifier<OnDeleteTraitKey>> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ForEach<[WorkoutStep], UUID, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<IntervalStepConfigurationRow, _TraitWritingModifier<IsDeleteDisabledTraitKey>>, _EnvironmentKeyTransformModifier<Bool>>, _EnvironmentKeyWritingModifier<ConfigurationNavigationModel?>>, _EnvironmentKeyWritingModifier<IntervalWorkoutConfiguration?>>> and conformance <> ForEach<A, B, C>()
{
  result = lazy protocol witness table cache variable for type ForEach<[WorkoutStep], UUID, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<IntervalStepConfigurationRow, _TraitWritingModifier<IsDeleteDisabledTraitKey>>, _EnvironmentKeyTransformModifier<Bool>>, _EnvironmentKeyWritingModifier<ConfigurationNavigationModel?>>, _EnvironmentKeyWritingModifier<IntervalWorkoutConfiguration?>>> and conformance <> ForEach<A, B, C>;
  if (!lazy protocol witness table cache variable for type ForEach<[WorkoutStep], UUID, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<IntervalStepConfigurationRow, _TraitWritingModifier<IsDeleteDisabledTraitKey>>, _EnvironmentKeyTransformModifier<Bool>>, _EnvironmentKeyWritingModifier<ConfigurationNavigationModel?>>, _EnvironmentKeyWritingModifier<IntervalWorkoutConfiguration?>>> and conformance <> ForEach<A, B, C>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI7ForEachVySay11WorkoutCore0E4StepCG10Foundation4UUIDVAA15ModifiedContentVyALyALyALy0eB008IntervalG16ConfigurationRowVAA21_TraitWritingModifierVyAA016IsDeleteDisabledO3KeyVGGAA012_Environmentu9TransformQ0VySbGGAA01_vupQ0VyAM0M15NavigationModelCSgGGA_yAD0leM0CSgGGGMd);
    lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<IntervalStepConfigurationRow, _TraitWritingModifier<IsDeleteDisabledTraitKey>>, _EnvironmentKeyTransformModifier<Bool>>, _EnvironmentKeyWritingModifier<ConfigurationNavigationModel?>>, _EnvironmentKeyWritingModifier<IntervalWorkoutConfiguration?>> and conformance <> ModifiedContent<A, B>();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ForEach<[WorkoutStep], UUID, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<IntervalStepConfigurationRow, _TraitWritingModifier<IsDeleteDisabledTraitKey>>, _EnvironmentKeyTransformModifier<Bool>>, _EnvironmentKeyWritingModifier<ConfigurationNavigationModel?>>, _EnvironmentKeyWritingModifier<IntervalWorkoutConfiguration?>>> and conformance <> ForEach<A, B, C>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type UUID? and conformance <A> A?()
{
  result = lazy protocol witness table cache variable for type UUID? and conformance <A> A?;
  if (!lazy protocol witness table cache variable for type UUID? and conformance <A> A?)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s10Foundation4UUIDVSgMd);
    _s9WorkoutUI28ConfigurationNavigationModelCAC7Combine16ObservableObjectAAWlTm_15(&lazy protocol witness table cache variable for type UUID and conformance UUID, MEMORY[0x277CC95F0]);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type UUID? and conformance <A> A?);
  }

  return result;
}

uint64_t partial apply for closure #3 in closure #1 in IntervalBlockConfigurationView.body.getter()
{
  type metadata accessor for IntervalBlockConfigurationView();
  lazy protocol witness table accessor for type RepeatPicker and conformance RepeatPicker();
  return NavigationView.init(content:)();
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<Button<RepeatRowView>, _TraitWritingModifier<IsDeleteDisabledTraitKey>>, _EnvironmentKeyTransformModifier<Bool>> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<Button<RepeatRowView>, _TraitWritingModifier<IsDeleteDisabledTraitKey>>, _EnvironmentKeyTransformModifier<Bool>> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<Button<RepeatRowView>, _TraitWritingModifier<IsDeleteDisabledTraitKey>>, _EnvironmentKeyTransformModifier<Bool>> and conformance <> ModifiedContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyACyAA6ButtonVy07WorkoutB013RepeatRowViewVGAA21_TraitWritingModifierVyAA016IsDeleteDisabledJ3KeyVGGAA012_Environmentp9TransformL0VySbGGMd);
    lazy protocol witness table accessor for type ModifiedContent<Button<RepeatRowView>, _TraitWritingModifier<IsDeleteDisabledTraitKey>> and conformance <> ModifiedContent<A, B>();
    lazy protocol witness table accessor for type TupleView<((<<opaque return type of View.sheet<A>(isPresented:onDismiss:content:)>>.0)?, <<opaque return type of View.onChange<A>(of:initial:_:)>>.0)> and conformance TupleView<A>(&lazy protocol witness table cache variable for type _EnvironmentKeyTransformModifier<Bool> and conformance _EnvironmentKeyTransformModifier<A>, &_s7SwiftUI32_EnvironmentKeyTransformModifierVySbGMd);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<Button<RepeatRowView>, _TraitWritingModifier<IsDeleteDisabledTraitKey>>, _EnvironmentKeyTransformModifier<Bool>> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<Button<RepeatRowView>, _TraitWritingModifier<IsDeleteDisabledTraitKey>> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<Button<RepeatRowView>, _TraitWritingModifier<IsDeleteDisabledTraitKey>> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<Button<RepeatRowView>, _TraitWritingModifier<IsDeleteDisabledTraitKey>> and conformance <> ModifiedContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyAA6ButtonVy07WorkoutB013RepeatRowViewVGAA21_TraitWritingModifierVyAA016IsDeleteDisabledJ3KeyVGGMd);
    lazy protocol witness table accessor for type TupleView<((<<opaque return type of View.sheet<A>(isPresented:onDismiss:content:)>>.0)?, <<opaque return type of View.onChange<A>(of:initial:_:)>>.0)> and conformance TupleView<A>(&lazy protocol witness table cache variable for type Button<RepeatRowView> and conformance Button<A>, &_s7SwiftUI6ButtonVy07WorkoutB013RepeatRowViewVGMd);
    lazy protocol witness table accessor for type TupleView<((<<opaque return type of View.sheet<A>(isPresented:onDismiss:content:)>>.0)?, <<opaque return type of View.onChange<A>(of:initial:_:)>>.0)> and conformance TupleView<A>(&lazy protocol witness table cache variable for type _TraitWritingModifier<IsDeleteDisabledTraitKey> and conformance _TraitWritingModifier<A>, &_s7SwiftUI21_TraitWritingModifierVyAA016IsDeleteDisabledC3KeyVGMd);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<Button<RepeatRowView>, _TraitWritingModifier<IsDeleteDisabledTraitKey>> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

uint64_t lazy protocol witness table accessor for type TupleView<((<<opaque return type of View.sheet<A>(isPresented:onDismiss:content:)>>.0)?, <<opaque return type of View.onChange<A>(of:initial:_:)>>.0)> and conformance TupleView<A>(unint64_t *a1, uint64_t *a2)
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

uint64_t partial apply for closure #1 in closure #1 in closure #3 in closure #1 in IntervalBlockConfigurationView.body.getter()
{
  type metadata accessor for IntervalBlockConfigurationView();

  return closure #1 in closure #1 in closure #3 in closure #1 in IntervalBlockConfigurationView.body.getter();
}

uint64_t objectdestroyTm_90()
{
  v1 = (type metadata accessor for IntervalBlockConfigurationView() - 8);
  v2 = v0 + ((*(*v1 + 80) + 16) & ~*(*v1 + 80));

  v3 = v2 + v1[13];

  v4 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI7BindingVy10Foundation4UUIDVSgGMd) + 32);
  v5 = type metadata accessor for UUID();
  v6 = *(v5 - 8);
  if (!(*(v6 + 48))(v3 + v4, 1, v5))
  {
    (*(v6 + 8))(v3 + v4, v5);
  }

  return swift_deallocObject();
}

uint64_t partial apply for closure #1 in closure #1 in IntervalBlockConfigurationView.body.getter(uint64_t (*a1)(uint64_t))
{
  v2 = *(type metadata accessor for IntervalBlockConfigurationView() - 8);
  v3 = v1 + ((*(v2 + 80) + 16) & ~*(v2 + 80));

  return a1(v3);
}

uint64_t _s9WorkoutUI28ConfigurationNavigationModelCAC7Combine16ObservableObjectAAWlTm_15(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t outlined init with take of ModifiedContent<IntervalStepConfigurationRow, _TraitWritingModifier<IsDeleteDisabledTraitKey>>(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(a3);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t _s10Foundation4UUIDVSgWOhTm_4(uint64_t a1, uint64_t *a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(a2);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t lazy protocol witness table accessor for type Section<EmptyView, TupleView<((<<opaque return type of View.sheet<A>(isPresented:onDismiss:content:)>>.0)?, <<opaque return type of View.onChange<A>(of:initial:_:)>>.0)>, EmptyView> and conformance <> Section<A, B, C>()
{
  result = lazy protocol witness table cache variable for type Section<EmptyView, TupleView<((<<opaque return type of View.sheet<A>(isPresented:onDismiss:content:)>>.0)?, <<opaque return type of View.onChange<A>(of:initial:_:)>>.0)>, EmptyView> and conformance <> Section<A, B, C>;
  if (!lazy protocol witness table cache variable for type Section<EmptyView, TupleView<((<<opaque return type of View.sheet<A>(isPresented:onDismiss:content:)>>.0)?, <<opaque return type of View.onChange<A>(of:initial:_:)>>.0)>, EmptyView> and conformance <> Section<A, B, C>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI7SectionVyAA9EmptyViewVAA05TupleE0VyAA0E0PAAE5sheet11isPresented9onDismiss7contentQrAA7BindingVySbG_yycSgqd__yctAaHRd__lFQOyAA15ModifiedContentVyASyAA6ButtonVy07WorkoutB009RepeatRowE0VGAA21_TraitWritingModifierVyAA016IsDeleteDisabledT3KeyVGGAA012_Environmentz9TransformV0VySbGG_AA010NavigationE0VyAV0R6PickerVGQo_Sg_AiAE0J6Change2of7initial_Qrqd___Sbyqd___qd__tctSQRd__lFQOyASyAA7ForEachVySay0Q4Core0Q4StepCG10Foundation4UUIDVASyASyASyASyAV025IntervalStepConfigurationS0VA2_GA6_GAA012_EnvironmentzuV0VyAV28ConfigurationNavigationModelCSgGGA32_yA20_08IntervalQ13ConfigurationCSgGGGA_yAA02OnxtZ0VGG_A26_SgQo_tGAEGMd);
    lazy protocol witness table accessor for type TupleView<((<<opaque return type of View.sheet<A>(isPresented:onDismiss:content:)>>.0)?, <<opaque return type of View.onChange<A>(of:initial:_:)>>.0)> and conformance TupleView<A>(&lazy protocol witness table cache variable for type TupleView<((<<opaque return type of View.sheet<A>(isPresented:onDismiss:content:)>>.0)?, <<opaque return type of View.onChange<A>(of:initial:_:)>>.0)> and conformance TupleView<A>, &_s7SwiftUI9TupleViewVyAA0D0PAAE5sheet11isPresented9onDismiss7contentQrAA7BindingVySbG_yycSgqd__yctAaDRd__lFQOyAA15ModifiedContentVyAOyAA6ButtonVy07WorkoutB009RepeatRowD0VGAA21_TraitWritingModifierVyAA016IsDeleteDisabledR3KeyVGGAA012_Environmentx9TransformT0VySbGG_AA010NavigationD0VyAR0P6PickerVGQo_Sg_AeAE0H6Change2of7initial_Qrqd___Sbyqd___qd__tctSQRd__lFQOyAOyAA7ForEachVySay0O4Core0O4StepCG10Foundation4UUIDVAOyAOyAOyAOyAR025IntervalStepConfigurationQ0VAZGA2_GAA01_yxsT0VyAR28ConfigurationNavigationModelCSgGGA28_yA16_08IntervalO13ConfigurationCSgGGGAWyAA02OnvrX0VGG_A22_SgQo_tGMd);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Section<EmptyView, TupleView<((<<opaque return type of View.sheet<A>(isPresented:onDismiss:content:)>>.0)?, <<opaque return type of View.onChange<A>(of:initial:_:)>>.0)>, EmptyView> and conformance <> Section<A, B, C>);
  }

  return result;
}

uint64_t type metadata accessor for IntervalStepConfigurationRow()
{
  result = type metadata singleton initialization cache for IntervalStepConfigurationRow;
  if (!type metadata singleton initialization cache for IntervalStepConfigurationRow)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void type metadata completion function for IntervalStepConfigurationRow()
{
  type metadata accessor for EnvironmentObject<ConfigurationNavigationModel>();
  if (v0 <= 0x3F)
  {
    type metadata accessor for EnvironmentObject<IntervalWorkoutConfiguration>();
    if (v1 <= 0x3F)
    {
      type metadata accessor for ObservedObject<WorkoutBlock>();
      if (v2 <= 0x3F)
      {
        type metadata accessor for ObservedObject<WorkoutStep>();
        if (v3 <= 0x3F)
        {
          type metadata accessor for FIUIFormattingManager();
          if (v4 <= 0x3F)
          {
            type metadata accessor for HKActivityMoveMode(319);
            if (v5 <= 0x3F)
            {
              type metadata accessor for Binding<UUID?>();
              if (v6 <= 0x3F)
              {
                swift_cvw_initStructMetadataWithLayoutString();
              }
            }
          }
        }
      }
    }
  }
}

void type metadata accessor for ObservedObject<WorkoutStep>()
{
  if (!lazy cache variable for type metadata for ObservedObject<WorkoutStep>)
  {
    type metadata accessor for WorkoutStep();
    _s9WorkoutUI28ConfigurationNavigationModelCAC7Combine16ObservableObjectAAWlTm_16(&lazy protocol witness table cache variable for type WorkoutStep and conformance WorkoutStep, MEMORY[0x277D7DD30]);
    v0 = type metadata accessor for ObservedObject();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for ObservedObject<WorkoutStep>);
    }
  }
}

uint64_t IntervalStepConfigurationRow.body.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v110 = a1;
  v111 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI14NavigationLinkVy07WorkoutB00E7StepRowVAA15ModifiedContentVyAHyAD08IntervalF8EditViewVAA30_EnvironmentKeyWritingModifierVyAD013ConfigurationC5ModelCSgGGALy0E4Core0jeQ0CSgGGGMd);
  v102 = *(v111 - 8);
  MEMORY[0x28223BE20](v111);
  v101 = &v89 - v3;
  v108 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI19_ConditionalContentV7StorageOyACyAA08ModifiedD0VyAGy07WorkoutB020IntervalStepEditViewVAA30_EnvironmentKeyWritingModifierVyAH28ConfigurationNavigationModelCSgGGALy0G4Core0hgP0CSgGGAA0K0PAAE11buttonStyleyQrqd__AA015PrimitiveButtonU0Rd__lFQOyAA0W0VyAGyAH0gI3RowVAA01_d5ShapeO0VyAA9RectangleVGGG_AA05PlainwU0VQo_GAA0Q4LinkVyA3_AWG_GMd);
  MEMORY[0x28223BE20](v108);
  v109 = &v89 - v4;
  v5 = type metadata accessor for PlainButtonStyle();
  v100 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v98 = &v89 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for IntervalStepConfigurationRow();
  v92 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v93 = v8;
  v94 = &v89 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v106 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI6ButtonVyAA15ModifiedContentVy07WorkoutB00F7StepRowVAA01_E13ShapeModifierVyAA9RectangleVGGGMd);
  v96 = *(v106 - 1);
  MEMORY[0x28223BE20](v106);
  v95 = &v89 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI4ViewPAAE11buttonStyleyQrqd__AA015PrimitiveButtonE0Rd__lFQOyAA0G0VyAA15ModifiedContentVy07WorkoutB00J7StepRowVAA01_I13ShapeModifierVyAA9RectangleVGGG_AA05PlaingE0VQo_Md);
  v99 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v97 = &v89 - v11;
  v103 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI19_ConditionalContentV7StorageOyAA08ModifiedD0VyAGy07WorkoutB020IntervalStepEditViewVAA30_EnvironmentKeyWritingModifierVyAH28ConfigurationNavigationModelCSgGGALy0G4Core0hgP0CSgGGAA0K0PAAE11buttonStyleyQrqd__AA015PrimitiveButtonU0Rd__lFQOyAA0W0VyAGyAH0gI3RowVAA01_d5ShapeO0VyAA9RectangleVGGG_AA05PlainwU0VQo__GMd);
  MEMORY[0x28223BE20](v103);
  v105 = (&v89 - v12);
  v13 = type metadata accessor for UUID();
  v14 = *(v13 - 8);
  MEMORY[0x28223BE20](v13);
  v90 = &v89 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSg_ADtMd);
  MEMORY[0x28223BE20](v16);
  v18 = &v89 - v17;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd);
  MEMORY[0x28223BE20](v19 - 8);
  v91 = &v89 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v21);
  v23 = &v89 - v22;
  MEMORY[0x28223BE20](v24);
  v26 = &v89 - v25;
  v107 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI19_ConditionalContentVyAA08ModifiedD0VyAEy07WorkoutB020IntervalStepEditViewVAA30_EnvironmentKeyWritingModifierVyAF28ConfigurationNavigationModelCSgGGAJy0F4Core0gfO0CSgGGAA0J0PAAE11buttonStyleyQrqd__AA015PrimitiveButtonT0Rd__lFQOyAA0V0VyAEyAF0fH3RowVAA01_d5ShapeN0VyAA9RectangleVGGG_AA05PlainvT0VQo_GMd);
  MEMORY[0x28223BE20](v107);
  v104 = &v89 - v27;
  v28 = static Platform.current.getter();
  if (v28)
  {
    v106 = &v89;
    MEMORY[0x28223BE20](v28);
    v105 = (&v89 - 4);
    *(&v89 - 2) = v2;
    IntervalStepConfigurationRow.stepEditViewModel.getter();
    type metadata accessor for ConfigurationNavigationModel();
    _s9WorkoutUI28ConfigurationNavigationModelCAC7Combine16ObservableObjectAAWlTm_16(&lazy protocol witness table cache variable for type ConfigurationNavigationModel and conformance ConfigurationNavigationModel, type metadata accessor for ConfigurationNavigationModel);
    v29 = EnvironmentObject.init()();
    v103 = v30;
    v104 = v29;
    type metadata accessor for IntervalWorkoutConfiguration();
    _s9WorkoutUI28ConfigurationNavigationModelCAC7Combine16ObservableObjectAAWlTm_16(&lazy protocol witness table cache variable for type IntervalWorkoutConfiguration and conformance WorkoutConfiguration, MEMORY[0x277D7D9A0]);
    v31 = EnvironmentObject.init()();
    v33 = v32;
    type metadata accessor for IntervalStepEditViewModel();
    _s9WorkoutUI28ConfigurationNavigationModelCAC7Combine16ObservableObjectAAWlTm_16(&lazy protocol witness table cache variable for type IntervalStepEditViewModel and conformance IntervalStepEditViewModel, type metadata accessor for IntervalStepEditViewModel);
    v34 = ObservedObject.init(wrappedValue:)();
    v36 = *v2;
    if (!*v2)
    {
      goto LABEL_20;
    }

    v37 = v34;
    v38 = v35;

    v39 = static ObservableObject.environmentStore.getter();
    v40 = v2[2];
    if (v40)
    {
      v41 = v39;
      v42 = v40;
      v43 = static ObservableObject.environmentStore.getter();
      v112 = v104;
      v113 = v103;
      v114 = v31;
      v115 = v33;
      v116 = v37;
      v117 = v38;
      v118 = v41;
      v119 = v36;
      v120 = v43;
      v121 = v40;
      __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyACy07WorkoutB020IntervalStepEditViewVAA30_EnvironmentKeyWritingModifierVyAD28ConfigurationNavigationModelCSgGGAHy0E4Core0feN0CSgGGMd);
      lazy protocol witness table accessor for type WorkoutStepRow and conformance WorkoutStepRow();
      lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<IntervalStepEditView, _EnvironmentKeyWritingModifier<ConfigurationNavigationModel?>>, _EnvironmentKeyWritingModifier<IntervalWorkoutConfiguration?>> and conformance <> ModifiedContent<A, B>();
      v44 = v101;
      NavigationLink.init(destination:label:)();
      v45 = v102;
      v46 = v111;
      (*(v102 + 16))(v109, v44, v111);
      swift_storeEnumTagMultiPayload();
      lazy protocol witness table accessor for type _ConditionalContent<ModifiedContent<ModifiedContent<IntervalStepEditView, _EnvironmentKeyWritingModifier<ConfigurationNavigationModel?>>, _EnvironmentKeyWritingModifier<IntervalWorkoutConfiguration?>>, <<opaque return type of View.buttonStyle<A>(_:)>>.0> and conformance <> _ConditionalContent<A, B>();
      _s7SwiftUI30_EnvironmentKeyWritingModifierVy07WorkoutB028ConfigurationNavigationModelCSgGACyxGAA04ViewF0AAWlTm_0(&lazy protocol witness table cache variable for type NavigationLink<WorkoutStepRow, ModifiedContent<ModifiedContent<IntervalStepEditView, _EnvironmentKeyWritingModifier<ConfigurationNavigationModel?>>, _EnvironmentKeyWritingModifier<IntervalWorkoutConfiguration?>>> and conformance NavigationLink<A, B>, &_s7SwiftUI14NavigationLinkVy07WorkoutB00E7StepRowVAA15ModifiedContentVyAHyAD08IntervalF8EditViewVAA30_EnvironmentKeyWritingModifierVyAD013ConfigurationC5ModelCSgGGALy0E4Core0jeQ0CSgGGGMd);
      _ConditionalContent<>.init(storage:)();
      return (*(v45 + 8))(v44, v46);
    }

    EnvironmentObject.error()();
    __break(1u);
    goto LABEL_19;
  }

  v101 = v5;
  v102 = v10;
  MEMORY[0x20F304900]();
  (*(v14 + 56))(v26, 0, 1, v13);
  v48 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI7BindingVy10Foundation4UUIDVSgGMd);
  v89 = v2;
  MEMORY[0x20F30B100](v48);
  v49 = *(v16 + 48);
  _s10Foundation4UUIDVSgWOcTm_4(v26, v18, &_s10Foundation4UUIDVSgMd);
  _s10Foundation4UUIDVSgWOcTm_4(v23, &v18[v49], &_s10Foundation4UUIDVSgMd);
  v50 = *(v14 + 48);
  if (v50(v18, 1, v13) == 1)
  {
    _s10Foundation4UUIDVSgWOhTm_5(v23, &_s10Foundation4UUIDVSgMd);
    _s10Foundation4UUIDVSgWOhTm_5(v26, &_s10Foundation4UUIDVSgMd);
    v51 = v50(&v18[v49], 1, v13);
    v52 = v89;
    v53 = v102;
    if (v51 == 1)
    {
      _s10Foundation4UUIDVSgWOhTm_5(v18, &_s10Foundation4UUIDVSgMd);
      goto LABEL_13;
    }

    goto LABEL_10;
  }

  v54 = v91;
  _s10Foundation4UUIDVSgWOcTm_4(v18, v91, &_s10Foundation4UUIDVSgMd);
  if (v50(&v18[v49], 1, v13) == 1)
  {
    _s10Foundation4UUIDVSgWOhTm_5(v23, &_s10Foundation4UUIDVSgMd);
    _s10Foundation4UUIDVSgWOhTm_5(v26, &_s10Foundation4UUIDVSgMd);
    (*(v14 + 8))(v54, v13);
    v52 = v89;
    v53 = v102;
LABEL_10:
    _s10Foundation4UUIDVSgWOhTm_5(v18, &_s10Foundation4UUIDVSg_ADtMd);
LABEL_11:
    v55 = v94;
    outlined init with copy of IntervalStepConfigurationRow(v52, v94);
    v56 = (*(v92 + 80) + 16) & ~*(v92 + 80);
    v57 = swift_allocObject();
    v58 = outlined init with take of IntervalStepConfigurationRow(v55, v57 + v56);
    MEMORY[0x28223BE20](v58);
    *(&v89 - 2) = v52;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVy07WorkoutB00E7StepRowVAA01_D13ShapeModifierVyAA9RectangleVGGMd);
    lazy protocol witness table accessor for type ModifiedContent<WorkoutStepRow, _ContentShapeModifier<Rectangle>> and conformance <> ModifiedContent<A, B>();
    v59 = v95;
    Button.init(action:label:)();
    v60 = v98;
    PlainButtonStyle.init()();
    v61 = _s7SwiftUI30_EnvironmentKeyWritingModifierVy07WorkoutB028ConfigurationNavigationModelCSgGACyxGAA04ViewF0AAWlTm_0(&lazy protocol witness table cache variable for type Button<ModifiedContent<WorkoutStepRow, _ContentShapeModifier<Rectangle>>> and conformance Button<A>, &_s7SwiftUI6ButtonVyAA15ModifiedContentVy07WorkoutB00F7StepRowVAA01_E13ShapeModifierVyAA9RectangleVGGGMd);
    v62 = _s9WorkoutUI28ConfigurationNavigationModelCAC7Combine16ObservableObjectAAWlTm_16(&lazy protocol witness table cache variable for type PlainButtonStyle and conformance PlainButtonStyle, MEMORY[0x277CDDB18]);
    v63 = v97;
    v64 = v106;
    v65 = v101;
    View.buttonStyle<A>(_:)();
    (*(v100 + 8))(v60, v65);
    (*(v96 + 8))(v59, v64);
    v66 = v99;
    (*(v99 + 16))(v105, v63, v53);
    swift_storeEnumTagMultiPayload();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyACy07WorkoutB020IntervalStepEditViewVAA30_EnvironmentKeyWritingModifierVyAD28ConfigurationNavigationModelCSgGGAHy0E4Core0feN0CSgGGMd);
    lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<IntervalStepEditView, _EnvironmentKeyWritingModifier<ConfigurationNavigationModel?>>, _EnvironmentKeyWritingModifier<IntervalWorkoutConfiguration?>> and conformance <> ModifiedContent<A, B>();
    v112 = v64;
    v113 = v65;
    v114 = v61;
    v115 = v62;
    swift_getOpaqueTypeConformance2();
    v67 = v104;
    _ConditionalContent<>.init(storage:)();
    (*(v66 + 8))(v63, v53);
LABEL_16:
    sub_20C69841C(v67, v109);
    swift_storeEnumTagMultiPayload();
    lazy protocol witness table accessor for type _ConditionalContent<ModifiedContent<ModifiedContent<IntervalStepEditView, _EnvironmentKeyWritingModifier<ConfigurationNavigationModel?>>, _EnvironmentKeyWritingModifier<IntervalWorkoutConfiguration?>>, <<opaque return type of View.buttonStyle<A>(_:)>>.0> and conformance <> _ConditionalContent<A, B>();
    _s7SwiftUI30_EnvironmentKeyWritingModifierVy07WorkoutB028ConfigurationNavigationModelCSgGACyxGAA04ViewF0AAWlTm_0(&lazy protocol witness table cache variable for type NavigationLink<WorkoutStepRow, ModifiedContent<ModifiedContent<IntervalStepEditView, _EnvironmentKeyWritingModifier<ConfigurationNavigationModel?>>, _EnvironmentKeyWritingModifier<IntervalWorkoutConfiguration?>>> and conformance NavigationLink<A, B>, &_s7SwiftUI14NavigationLinkVy07WorkoutB00E7StepRowVAA15ModifiedContentVyAHyAD08IntervalF8EditViewVAA30_EnvironmentKeyWritingModifierVyAD013ConfigurationC5ModelCSgGGALy0E4Core0jeQ0CSgGGGMd);
    _ConditionalContent<>.init(storage:)();
    return sub_20C69848C(v67);
  }

  v68 = v90;
  (*(v14 + 32))(v90, &v18[v49], v13);
  _s9WorkoutUI28ConfigurationNavigationModelCAC7Combine16ObservableObjectAAWlTm_16(&lazy protocol witness table cache variable for type UUID and conformance UUID, MEMORY[0x277CC95F0]);
  v69 = v54;
  v70 = dispatch thunk of static Equatable.== infix(_:_:)();
  v71 = *(v14 + 8);
  v71(v68, v13);
  _s10Foundation4UUIDVSgWOhTm_5(v23, &_s10Foundation4UUIDVSgMd);
  _s10Foundation4UUIDVSgWOhTm_5(v26, &_s10Foundation4UUIDVSgMd);
  v71(v69, v13);
  _s10Foundation4UUIDVSgWOhTm_5(v18, &_s10Foundation4UUIDVSgMd);
  v52 = v89;
  v53 = v102;
  if ((v70 & 1) == 0)
  {
    goto LABEL_11;
  }

LABEL_13:
  IntervalStepConfigurationRow.stepEditViewModel.getter();
  type metadata accessor for ConfigurationNavigationModel();
  _s9WorkoutUI28ConfigurationNavigationModelCAC7Combine16ObservableObjectAAWlTm_16(&lazy protocol witness table cache variable for type ConfigurationNavigationModel and conformance ConfigurationNavigationModel, type metadata accessor for ConfigurationNavigationModel);
  v100 = EnvironmentObject.init()();
  v99 = v72;
  type metadata accessor for IntervalWorkoutConfiguration();
  _s9WorkoutUI28ConfigurationNavigationModelCAC7Combine16ObservableObjectAAWlTm_16(&lazy protocol witness table cache variable for type IntervalWorkoutConfiguration and conformance WorkoutConfiguration, MEMORY[0x277D7D9A0]);
  v98 = EnvironmentObject.init()();
  v74 = v73;
  type metadata accessor for IntervalStepEditViewModel();
  _s9WorkoutUI28ConfigurationNavigationModelCAC7Combine16ObservableObjectAAWlTm_16(&lazy protocol witness table cache variable for type IntervalStepEditViewModel and conformance IntervalStepEditViewModel, type metadata accessor for IntervalStepEditViewModel);
  v75 = ObservedObject.init(wrappedValue:)();
  v77 = *v52;
  if (!*v52)
  {
LABEL_19:
    EnvironmentObject.error()();
    __break(1u);
    goto LABEL_20;
  }

  v78 = v75;
  v79 = v76;

  v80 = static ObservableObject.environmentStore.getter();
  v81 = v52[2];
  if (v81)
  {
    v82 = v80;
    v83 = v81;
    v84 = static ObservableObject.environmentStore.getter();
    v85 = v105;
    v86 = v99;
    *v105 = v100;
    v85[1] = v86;
    v85[2] = v98;
    v85[3] = v74;
    v85[4] = v78;
    v85[5] = v79;
    v85[6] = v82;
    v85[7] = v77;
    v85[8] = v84;
    v85[9] = v81;
    swift_storeEnumTagMultiPayload();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyACy07WorkoutB020IntervalStepEditViewVAA30_EnvironmentKeyWritingModifierVyAD28ConfigurationNavigationModelCSgGGAHy0E4Core0feN0CSgGGMd);
    lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<IntervalStepEditView, _EnvironmentKeyWritingModifier<ConfigurationNavigationModel?>>, _EnvironmentKeyWritingModifier<IntervalWorkoutConfiguration?>> and conformance <> ModifiedContent<A, B>();
    v87 = _s7SwiftUI30_EnvironmentKeyWritingModifierVy07WorkoutB028ConfigurationNavigationModelCSgGACyxGAA04ViewF0AAWlTm_0(&lazy protocol witness table cache variable for type Button<ModifiedContent<WorkoutStepRow, _ContentShapeModifier<Rectangle>>> and conformance Button<A>, &_s7SwiftUI6ButtonVyAA15ModifiedContentVy07WorkoutB00F7StepRowVAA01_E13ShapeModifierVyAA9RectangleVGGGMd);
    v88 = _s9WorkoutUI28ConfigurationNavigationModelCAC7Combine16ObservableObjectAAWlTm_16(&lazy protocol witness table cache variable for type PlainButtonStyle and conformance PlainButtonStyle, MEMORY[0x277CDDB18]);
    v112 = v106;
    v113 = v101;
    v114 = v87;
    v115 = v88;
    swift_getOpaqueTypeConformance2();
    v67 = v104;
    _ConditionalContent<>.init(storage:)();
    goto LABEL_16;
  }

LABEL_20:
  result = EnvironmentObject.error()();
  __break(1u);
  return result;
}

uint64_t closure #1 in IntervalStepConfigurationRow.body.getter()
{
  static Animation.default.getter();
  withAnimation<A>(_:_:)();
}

uint64_t closure #1 in closure #1 in IntervalStepConfigurationRow.body.getter()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd);
  MEMORY[0x28223BE20](v0 - 8);
  v2 = v9 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = MEMORY[0x28223BE20](v3);
  v6 = v9 - v5;
  MEMORY[0x20F304900](v4);
  v7 = type metadata accessor for UUID();
  (*(*(v7 - 8) + 56))(v6, 0, 1, v7);
  type metadata accessor for IntervalStepConfigurationRow();
  _s10Foundation4UUIDVSgWOcTm_4(v6, v2, &_s10Foundation4UUIDVSgMd);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI7BindingVy10Foundation4UUIDVSgGMd);
  Binding.wrappedValue.setter();
  return _s10Foundation4UUIDVSgWOhTm_5(v6, &_s10Foundation4UUIDVSgMd);
}

uint64_t closure #2 in IntervalStepConfigurationRow.body.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *(a1 + 64);
  type metadata accessor for WorkoutStep();
  _s9WorkoutUI28ConfigurationNavigationModelCAC7Combine16ObservableObjectAAWlTm_16(&lazy protocol witness table cache variable for type WorkoutStep and conformance WorkoutStep, MEMORY[0x277D7DD30]);

  v4 = v3;
  result = ObservedObject.init(wrappedValue:)();
  *a2 = result;
  *(a2 + 8) = v6;
  *(a2 + 16) = v4;
  *(a2 + 24) = 0;
  *(a2 + 32) = 0;
  return result;
}

uint64_t closure #4 in IntervalStepConfigurationRow.body.getter@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *(a1 + 64);
  type metadata accessor for WorkoutStep();
  _s9WorkoutUI28ConfigurationNavigationModelCAC7Combine16ObservableObjectAAWlTm_16(&lazy protocol witness table cache variable for type WorkoutStep and conformance WorkoutStep, MEMORY[0x277D7DD30]);

  v4 = v3;
  result = ObservedObject.init(wrappedValue:)();
  *a2 = result;
  a2[1] = v6;
  a2[2] = v4;
  a2[3] = 0;
  return result;
}

void *IntervalStepConfigurationRow.stepEditViewModel.getter()
{
  v1 = type metadata accessor for StepType();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v20 = &v19 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v6 = &v19 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI7BindingVy10Foundation4UUIDVSgGMd);
  MEMORY[0x28223BE20](v7);
  v9 = &v19 - v8;
  v10 = v0[8];
  v22 = v0[9];
  v11 = v0[7];
  type metadata accessor for IntervalStepConfigurationRow();
  v21 = v10;
  Binding.projectedValue.getter();
  type metadata accessor for IntervalStepEditViewModel();
  v12 = swift_allocObject();
  v12[4] = 0;
  *(v12 + OBJC_IVAR____TtC9WorkoutUI25IntervalStepEditViewModel____lazy_storage___goalsForInterval) = 0;
  swift_beginAccess();
  type metadata accessor for WorkoutBlock();
  _s9WorkoutUI28ConfigurationNavigationModelCAC7Combine16ObservableObjectAAWlTm_16(&lazy protocol witness table cache variable for type WorkoutBlock and conformance WorkoutBlock, MEMORY[0x277D7DD60]);

  v12[2] = ObservedObject.init(wrappedValue:)();
  v12[3] = v13;
  swift_endAccess();
  v12[4] = v11;

  v12[5] = WorkoutStep.activityType.getter();
  WorkoutStep.stepType.getter();
  swift_beginAccess();
  (*(v2 + 16))(v20, v6, v1);
  Published.init(initialValue:)();
  (*(v2 + 8))(v6, v1);
  swift_endAccess();
  v14 = WorkoutStep.goal.getter();
  swift_beginAccess();
  v23 = v14;
  Published.init(initialValue:)();
  swift_endAccess();
  v15 = v21;
  v12[6] = v22;
  *(v12 + OBJC_IVAR____TtC9WorkoutUI25IntervalStepEditViewModel_formattingManager) = v15;
  _s10Foundation4UUIDVSgWOcTm_4(v9, v12 + OBJC_IVAR____TtC9WorkoutUI25IntervalStepEditViewModel__currentEditingStepUUID, &_s7SwiftUI7BindingVy10Foundation4UUIDVSgGMd);
  v16 = WorkoutStep.activePowerZonesAlertTargetZone.getter();
  if (v16)
  {
    v17 = v16;
    dispatch thunk of PowerZonesAlertTargetZone.loadPowerZonesAsynchronously()();
  }

  _s10Foundation4UUIDVSgWOhTm_5(v9, &_s7SwiftUI7BindingVy10Foundation4UUIDVSgGMd);
  return v12;
}

unint64_t lazy protocol witness table accessor for type _ConditionalContent<ModifiedContent<ModifiedContent<IntervalStepEditView, _EnvironmentKeyWritingModifier<ConfigurationNavigationModel?>>, _EnvironmentKeyWritingModifier<IntervalWorkoutConfiguration?>>, <<opaque return type of View.buttonStyle<A>(_:)>>.0> and conformance <> _ConditionalContent<A, B>()
{
  result = lazy protocol witness table cache variable for type _ConditionalContent<ModifiedContent<ModifiedContent<IntervalStepEditView, _EnvironmentKeyWritingModifier<ConfigurationNavigationModel?>>, _EnvironmentKeyWritingModifier<IntervalWorkoutConfiguration?>>, <<opaque return type of View.buttonStyle<A>(_:)>>.0> and conformance <> _ConditionalContent<A, B>;
  if (!lazy protocol witness table cache variable for type _ConditionalContent<ModifiedContent<ModifiedContent<IntervalStepEditView, _EnvironmentKeyWritingModifier<ConfigurationNavigationModel?>>, _EnvironmentKeyWritingModifier<IntervalWorkoutConfiguration?>>, <<opaque return type of View.buttonStyle<A>(_:)>>.0> and conformance <> _ConditionalContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI19_ConditionalContentVyAA08ModifiedD0VyAEy07WorkoutB020IntervalStepEditViewVAA30_EnvironmentKeyWritingModifierVyAF28ConfigurationNavigationModelCSgGGAJy0F4Core0gfO0CSgGGAA0J0PAAE11buttonStyleyQrqd__AA015PrimitiveButtonT0Rd__lFQOyAA0V0VyAEyAF0fH3RowVAA01_d5ShapeN0VyAA9RectangleVGGG_AA05PlainvT0VQo_GMd);
    lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<IntervalStepEditView, _EnvironmentKeyWritingModifier<ConfigurationNavigationModel?>>, _EnvironmentKeyWritingModifier<IntervalWorkoutConfiguration?>> and conformance <> ModifiedContent<A, B>();
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI6ButtonVyAA15ModifiedContentVy07WorkoutB00F7StepRowVAA01_E13ShapeModifierVyAA9RectangleVGGGMd);
    type metadata accessor for PlainButtonStyle();
    _s7SwiftUI30_EnvironmentKeyWritingModifierVy07WorkoutB028ConfigurationNavigationModelCSgGACyxGAA04ViewF0AAWlTm_0(&lazy protocol witness table cache variable for type Button<ModifiedContent<WorkoutStepRow, _ContentShapeModifier<Rectangle>>> and conformance Button<A>, &_s7SwiftUI6ButtonVyAA15ModifiedContentVy07WorkoutB00F7StepRowVAA01_E13ShapeModifierVyAA9RectangleVGGGMd);
    _s9WorkoutUI28ConfigurationNavigationModelCAC7Combine16ObservableObjectAAWlTm_16(&lazy protocol witness table cache variable for type PlainButtonStyle and conformance PlainButtonStyle, MEMORY[0x277CDDB18]);
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type _ConditionalContent<ModifiedContent<ModifiedContent<IntervalStepEditView, _EnvironmentKeyWritingModifier<ConfigurationNavigationModel?>>, _EnvironmentKeyWritingModifier<IntervalWorkoutConfiguration?>>, <<opaque return type of View.buttonStyle<A>(_:)>>.0> and conformance <> _ConditionalContent<A, B>);
  }

  return result;
}

uint64_t outlined init with copy of IntervalStepConfigurationRow(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for IntervalStepConfigurationRow();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t outlined init with take of IntervalStepConfigurationRow(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for IntervalStepConfigurationRow();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t partial apply for closure #1 in IntervalStepConfigurationRow.body.getter()
{
  type metadata accessor for IntervalStepConfigurationRow();

  return closure #1 in IntervalStepConfigurationRow.body.getter();
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<WorkoutStepRow, _ContentShapeModifier<Rectangle>> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<WorkoutStepRow, _ContentShapeModifier<Rectangle>> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<WorkoutStepRow, _ContentShapeModifier<Rectangle>> and conformance <> ModifiedContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVy07WorkoutB00E7StepRowVAA01_D13ShapeModifierVyAA9RectangleVGGMd);
    lazy protocol witness table accessor for type WorkoutStepRow and conformance WorkoutStepRow();
    _s7SwiftUI30_EnvironmentKeyWritingModifierVy07WorkoutB028ConfigurationNavigationModelCSgGACyxGAA04ViewF0AAWlTm_0(&lazy protocol witness table cache variable for type _ContentShapeModifier<Rectangle> and conformance _ContentShapeModifier<A>, &_s7SwiftUI21_ContentShapeModifierVyAA9RectangleVGMd);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<WorkoutStepRow, _ContentShapeModifier<Rectangle>> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

uint64_t _s7SwiftUI30_EnvironmentKeyWritingModifierVy07WorkoutB028ConfigurationNavigationModelCSgGACyxGAA04ViewF0AAWlTm_0(unint64_t *a1, uint64_t *a2)
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

uint64_t _s9WorkoutUI28ConfigurationNavigationModelCAC7Combine16ObservableObjectAAWlTm_16(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t _s10Foundation4UUIDVSgWOcTm_4(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(a3);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t _s10Foundation4UUIDVSgWOhTm_5(uint64_t a1, uint64_t *a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(a2);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t lazy protocol witness table accessor for type _ConditionalContent<_ConditionalContent<ModifiedContent<ModifiedContent<IntervalStepEditView, _EnvironmentKeyWritingModifier<ConfigurationNavigationModel?>>, _EnvironmentKeyWritingModifier<IntervalWorkoutConfiguration?>>, <<opaque return type of View.buttonStyle<A>(_:)>>.0>, NavigationLink<WorkoutStepRow, ModifiedContent<ModifiedContent<IntervalStepEditView, _EnvironmentKeyWritingModifier<ConfigurationNavigationModel?>>, _EnvironmentKeyWritingModifier<IntervalWorkoutConfiguration?>>>> and conformance <> _ConditionalContent<A, B>()
{
  result = lazy protocol witness table cache variable for type _ConditionalContent<_ConditionalContent<ModifiedContent<ModifiedContent<IntervalStepEditView, _EnvironmentKeyWritingModifier<ConfigurationNavigationModel?>>, _EnvironmentKeyWritingModifier<IntervalWorkoutConfiguration?>>, <<opaque return type of View.buttonStyle<A>(_:)>>.0>, NavigationLink<WorkoutStepRow, ModifiedContent<ModifiedContent<IntervalStepEditView, _EnvironmentKeyWritingModifier<ConfigurationNavigationModel?>>, _EnvironmentKeyWritingModifier<IntervalWorkoutConfiguration?>>>> and conformance <> _ConditionalContent<A, B>;
  if (!lazy protocol witness table cache variable for type _ConditionalContent<_ConditionalContent<ModifiedContent<ModifiedContent<IntervalStepEditView, _EnvironmentKeyWritingModifier<ConfigurationNavigationModel?>>, _EnvironmentKeyWritingModifier<IntervalWorkoutConfiguration?>>, <<opaque return type of View.buttonStyle<A>(_:)>>.0>, NavigationLink<WorkoutStepRow, ModifiedContent<ModifiedContent<IntervalStepEditView, _EnvironmentKeyWritingModifier<ConfigurationNavigationModel?>>, _EnvironmentKeyWritingModifier<IntervalWorkoutConfiguration?>>>> and conformance <> _ConditionalContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI19_ConditionalContentVyACyAA08ModifiedD0VyAEy07WorkoutB020IntervalStepEditViewVAA30_EnvironmentKeyWritingModifierVyAF28ConfigurationNavigationModelCSgGGAJy0F4Core0gfO0CSgGGAA0J0PAAE11buttonStyleyQrqd__AA015PrimitiveButtonT0Rd__lFQOyAA0V0VyAEyAF0fH3RowVAA01_d5ShapeN0VyAA9RectangleVGGG_AA05PlainvT0VQo_GAA0P4LinkVyA1_AUGGMd);
    lazy protocol witness table accessor for type _ConditionalContent<ModifiedContent<ModifiedContent<IntervalStepEditView, _EnvironmentKeyWritingModifier<ConfigurationNavigationModel?>>, _EnvironmentKeyWritingModifier<IntervalWorkoutConfiguration?>>, <<opaque return type of View.buttonStyle<A>(_:)>>.0> and conformance <> _ConditionalContent<A, B>();
    _s7SwiftUI30_EnvironmentKeyWritingModifierVy07WorkoutB028ConfigurationNavigationModelCSgGACyxGAA04ViewF0AAWlTm_0(&lazy protocol witness table cache variable for type NavigationLink<WorkoutStepRow, ModifiedContent<ModifiedContent<IntervalStepEditView, _EnvironmentKeyWritingModifier<ConfigurationNavigationModel?>>, _EnvironmentKeyWritingModifier<IntervalWorkoutConfiguration?>>> and conformance NavigationLink<A, B>, &_s7SwiftUI14NavigationLinkVy07WorkoutB00E7StepRowVAA15ModifiedContentVyAHyAD08IntervalF8EditViewVAA30_EnvironmentKeyWritingModifierVyAD013ConfigurationC5ModelCSgGGALy0E4Core0jeQ0CSgGGGMd);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type _ConditionalContent<_ConditionalContent<ModifiedContent<ModifiedContent<IntervalStepEditView, _EnvironmentKeyWritingModifier<ConfigurationNavigationModel?>>, _EnvironmentKeyWritingModifier<IntervalWorkoutConfiguration?>>, <<opaque return type of View.buttonStyle<A>(_:)>>.0>, NavigationLink<WorkoutStepRow, ModifiedContent<ModifiedContent<IntervalStepEditView, _EnvironmentKeyWritingModifier<ConfigurationNavigationModel?>>, _EnvironmentKeyWritingModifier<IntervalWorkoutConfiguration?>>>> and conformance <> _ConditionalContent<A, B>);
  }

  return result;
}

uint64_t View.inlineNavigationBarTitle(_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[0] = a1;
  v4[1] = a2;
  return MEMORY[0x20F30ABE0](v4, a3, &type metadata for InlineNavigationBarTitle);
}

uint64_t getEnumTagSinglePayload for InlineNavigationBarTitle(uint64_t a1, int a2)
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

uint64_t storeEnumTagSinglePayload for InlineNavigationBarTitle(uint64_t result, int a2, int a3)
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

uint64_t protocol witness for ViewModifier.body(content:) in conformance InlineNavigationBarTitle()
{
  v1 = type metadata accessor for NavigationBarItem.TitleDisplayMode();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = v13 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = *v0;
  v6 = v0[1];
  v13[2] = v5;
  v13[3] = v6;
  lazy protocol witness table accessor for type String and conformance String();

  v7 = Text.init<A>(_:)();
  v9 = v8;
  v11 = v10;
  (*(v2 + 104))(v4, *MEMORY[0x277CDDDC0], v1);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI21_ViewModifier_ContentVy07WorkoutB024InlineNavigationBarTitle33_B86241820663BC1B3220D14BE7395977LLVGMd);
  lazy protocol witness table accessor for type _ViewModifier_Content<InlineNavigationBarTitle> and conformance _ViewModifier_Content<A>();
  View.navigationBarTitle(_:displayMode:)();
  outlined consume of Text.Storage(v7, v9, v11 & 1);

  return (*(v2 + 8))(v4, v1);
}

unint64_t lazy protocol witness table accessor for type _ViewModifier_Content<InlineNavigationBarTitle> and conformance _ViewModifier_Content<A>()
{
  result = lazy protocol witness table cache variable for type _ViewModifier_Content<InlineNavigationBarTitle> and conformance _ViewModifier_Content<A>;
  if (!lazy protocol witness table cache variable for type _ViewModifier_Content<InlineNavigationBarTitle> and conformance _ViewModifier_Content<A>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI21_ViewModifier_ContentVy07WorkoutB024InlineNavigationBarTitle33_B86241820663BC1B3220D14BE7395977LLVGMd);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type _ViewModifier_Content<InlineNavigationBarTitle> and conformance _ViewModifier_Content<A>);
  }

  return result;
}

uint64_t get_witness_table_7SwiftUI4ViewRzlAA15ModifiedContentVyx07WorkoutB017HeaderHyphenationVGAaBHPxAaBHD1__AgA0C8ModifierHPyHCHCTm(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  type metadata accessor for ModifiedContent();
  a3();
  return swift_getWitnessTable();
}

uint64_t protocol witness for ViewModifier.body(content:) in conformance HeaderHyphenation(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t a5, unint64_t *a6)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(a4);
  lazy protocol witness table accessor for type _ViewModifier_Content<HeaderHyphenation> and conformance _ViewModifier_Content<A>(a6, a4);
  return View.hyphenationFactor(_:)();
}

uint64_t lazy protocol witness table accessor for type _ViewModifier_Content<HeaderHyphenation> and conformance _ViewModifier_Content<A>(unint64_t *a1, uint64_t *a2)
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

uint64_t get_witness_table_qd__7SwiftUI4ViewHD2_AaBPAAE17hyphenationFactoryQr12CoreGraphics7CGFloatVFQOyAA01_C16Modifier_ContentVy07WorkoutB017HeaderHyphenationVG_Qo_HOTm(uint64_t a1, uint64_t *a2, uint64_t a3, unint64_t *a4)
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2);
  lazy protocol witness table accessor for type _ViewModifier_Content<HeaderHyphenation> and conformance _ViewModifier_Content<A>(a4, a2);
  return swift_getOpaqueTypeConformance2();
}

uint64_t getEnumTagSinglePayload for NaturalDistanceMetricText(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 40))
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

uint64_t storeEnumTagSinglePayload for NaturalDistanceMetricText(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0u;
    *(result + 24) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 40) = 1;
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

    *(result + 40) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

id NaturalDistanceMetricText.body.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  v4 = *(v1 + 1);
  v5 = *(v1 + 2);
  result = [v4 localizedCompactNaturalScaleStringWithDistanceInMeters:v5 distanceType:0 unitStyle:0 usedUnit:*v1];
  if (result)
  {
    v7 = result;
    v8 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v10 = v9;

    v11 = [v4 localizedShortUnitStringForDistanceUnit:objc_msgSend(v4 textCase:{sel_naturalScaleUnitForDistanceInMeters_distanceType_, v5, v3), 2}];
    if (v11)
    {
      v12 = v11;
      v13 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v15 = v14;
    }

    else
    {
      v13 = 0;
      v15 = 0;
    }

    v18 = *(v1 + 3);
    v16 = v18;
    *a1 = v8;
    *(a1 + 8) = v10;
    *(a1 + 16) = v13;
    *(a1 + 24) = v15;
    *(a1 + 32) = v16;
    *(a1 + 48) = 0;
    *(a1 + 56) = 0;
    *(a1 + 64) = 0;
    return outlined init with copy of String?(&v18, &v17);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t static CatalogMediaTypeBridge.makeMediaTypeBridge(from:)(unsigned __int8 a1, uint64_t a2, char a3)
{
  if (a3)
  {
    return a1 + 1;
  }

  else
  {
    return 0;
  }
}

unint64_t CatalogMediaType.init(mediaTypeBridge:)(uint64_t a1)
{
  result = a1 - 1;
  if (result >= 4)
  {
    result = _diagnoseUnexpectedEnumCaseValue<A, B>(type:rawValue:)();
    __break(1u);
  }

  return result;
}

uint64_t CatalogMediaTypeBridge.init(rawStringValue:)()
{
  v0 = MEMORY[0x20F3030F0]();
  if (v0 == 4)
  {
    return 0;
  }

  else
  {
    return v0 + 1;
  }
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance CatalogMediaTypeBridge()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  MEMORY[0x20F30CD90](v1);
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance CatalogMediaTypeBridge()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  MEMORY[0x20F30CD90](v1);
  return Hasher._finalize()();
}

uint64_t protocol witness for RawRepresentable.init(rawValue:) in conformance CatalogMediaTypeBridge@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  result = specialized CatalogMediaTypeBridge.init(rawValue:)(*a1);
  *a2 = result;
  *(a2 + 8) = v4 & 1;
  return result;
}

id static CatalogMediaTypeHelper.mediaTypeBridgeRawValue(from:)(uint64_t a1, uint64_t a2)
{

  v4 = MEMORY[0x20F3030F0](a1, a2);
  if (v4 <= 1)
  {
    if (v4)
    {
      v5 = 2;
    }

    else
    {
      v5 = 1;
    }

    return [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithInteger_];
  }

  if (v4 == 2)
  {
    v5 = 3;
    return [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithInteger_];
  }

  if (v4 == 3)
  {
    v5 = 4;
    return [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithInteger_];
  }

  return 0;
}

id CatalogMediaTypeHelper.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id CatalogMediaTypeHelper.init()()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for CatalogMediaTypeHelper();
  return objc_msgSendSuper2(&v2, sel_init);
}

id CatalogMediaTypeHelper.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for CatalogMediaTypeHelper();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t CatalogMediaTypeBridge.activityType.getter(uint64_t a1)
{
  if (a1 > 2)
  {
    if (a1 == 3 || a1 == 4)
    {
      return 0;
    }
  }

  else
  {
    if (a1 == 1)
    {
      return 37;
    }

    if (a1 == 2)
    {
      return 52;
    }
  }

  result = _diagnoseUnexpectedEnumCaseValue<A, B>(type:rawValue:)();
  __break(1u);
  return result;
}

void CatalogMediaTypeBridge.rawStringValue.getter(uint64_t a1)
{
  if ((a1 - 1) >= 4)
  {
    _diagnoseUnexpectedEnumCaseValue<A, B>(type:rawValue:)();
    __break(1u);
  }

  JUMPOUT(0x20F303100);
}

void protocol witness for CustomStringConvertible.description.getter in conformance CatalogMediaTypeBridge()
{
  if ((*v0 - 1) >= 4)
  {
    _diagnoseUnexpectedEnumCaseValue<A, B>(type:rawValue:)();
    __break(1u);
  }

  JUMPOUT(0x20F303100);
}

uint64_t CatalogMediaTypeBridge.logString.getter(uint64_t a1)
{
  if ((a1 - 1) >= 4)
  {
    result = _diagnoseUnexpectedEnumCaseValue<A, B>(type:rawValue:)();
    __break(1u);
  }

  else
  {
    v1 = MEMORY[0x20F303100]();
    MEMORY[0x20F30BC00](v1);

    MEMORY[0x20F30BC00](40, 0xE100000000000000);
    v2 = dispatch thunk of CustomStringConvertible.description.getter();
    MEMORY[0x20F30BC00](v2);

    MEMORY[0x20F30BC00](41, 0xE100000000000000);
    return 0;
  }

  return result;
}

uint64_t specialized CatalogMediaTypeBridge.init(rawValue:)(uint64_t result)
{
  if ((result - 5) < 0xFFFFFFFFFFFFFFFCLL)
  {
    return 0;
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type CatalogMediaTypeBridge and conformance CatalogMediaTypeBridge()
{
  result = lazy protocol witness table cache variable for type CatalogMediaTypeBridge and conformance CatalogMediaTypeBridge;
  if (!lazy protocol witness table cache variable for type CatalogMediaTypeBridge and conformance CatalogMediaTypeBridge)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CatalogMediaTypeBridge and conformance CatalogMediaTypeBridge);
  }

  return result;
}

Swift::String __swiftcall GuidedWorkoutLocalizationProvider.guidedWorkoutOutdoorPushWalkingPace()()
{
  if (one-time initialization token for WorkoutUIBundle != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v0 = WorkoutUIBundle.super.isa;
  v8._object = 0xE000000000000000;
  v1._countAndFlagsBits = 0xD000000000000028;
  v1._object = 0x800000020CBA3D80;
  v2.value._object = 0x800000020CB99A10;
  v2.value._countAndFlagsBits = 0xD000000000000013;
  v3._countAndFlagsBits = 0;
  v3._object = 0xE000000000000000;
  v8._countAndFlagsBits = 0;
  v4 = NSLocalizedString(_:tableName:bundle:value:comment:)(v1, v2, v0, v3, v8);

  countAndFlagsBits = v4._countAndFlagsBits;
  object = v4._object;
  result._object = object;
  result._countAndFlagsBits = countAndFlagsBits;
  return result;
}

Swift::String __swiftcall GuidedWorkoutLocalizationProvider.guidedWorkoutOutdoorPushRunningPace()()
{
  if (one-time initialization token for WorkoutUIBundle != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v0 = WorkoutUIBundle.super.isa;
  v8._object = 0xE000000000000000;
  v1._countAndFlagsBits = 0xD000000000000028;
  v1._object = 0x800000020CBA3DB0;
  v2.value._object = 0x800000020CB99A10;
  v2.value._countAndFlagsBits = 0xD000000000000013;
  v3._countAndFlagsBits = 0;
  v3._object = 0xE000000000000000;
  v8._countAndFlagsBits = 0;
  v4 = NSLocalizedString(_:tableName:bundle:value:comment:)(v1, v2, v0, v3, v8);

  countAndFlagsBits = v4._countAndFlagsBits;
  object = v4._object;
  result._object = object;
  result._countAndFlagsBits = countAndFlagsBits;
  return result;
}

Swift::String __swiftcall GuidedWorkoutLocalizationProvider.guidedWorkoutWalk()()
{
  if (one-time initialization token for WorkoutUIBundle != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v0 = WorkoutUIBundle.super.isa;
  v8._object = 0xE000000000000000;
  v1._object = 0x800000020CBA3DE0;
  v2.value._object = 0x800000020CB99A10;
  v1._countAndFlagsBits = 0xD000000000000013;
  v2.value._countAndFlagsBits = 0xD000000000000013;
  v3._countAndFlagsBits = 0;
  v3._object = 0xE000000000000000;
  v8._countAndFlagsBits = 0;
  v4 = NSLocalizedString(_:tableName:bundle:value:comment:)(v1, v2, v0, v3, v8);

  countAndFlagsBits = v4._countAndFlagsBits;
  object = v4._object;
  result._object = object;
  result._countAndFlagsBits = countAndFlagsBits;
  return result;
}

Swift::String __swiftcall GuidedWorkoutLocalizationProvider.guidedWorkoutRun()()
{
  if (one-time initialization token for WorkoutUIBundle != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v0 = WorkoutUIBundle.super.isa;
  v8._object = 0xE000000000000000;
  v1._object = 0x800000020CBA3E00;
  v2.value._countAndFlagsBits = 0xD000000000000013;
  v2.value._object = 0x800000020CB99A10;
  v1._countAndFlagsBits = 0xD000000000000012;
  v3._countAndFlagsBits = 0;
  v3._object = 0xE000000000000000;
  v8._countAndFlagsBits = 0;
  v4 = NSLocalizedString(_:tableName:bundle:value:comment:)(v1, v2, v0, v3, v8);

  countAndFlagsBits = v4._countAndFlagsBits;
  object = v4._object;
  result._object = object;
  result._countAndFlagsBits = countAndFlagsBits;
  return result;
}

Swift::String __swiftcall GuidedWorkoutLocalizationProvider.guidedWorkoutVulcanDisambiguationTitle()()
{
  if (one-time initialization token for WorkoutUIBundle != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v0 = WorkoutUIBundle.super.isa;
  v8._object = 0xE000000000000000;
  v1._countAndFlagsBits = 0xD00000000000002ALL;
  v1._object = 0x800000020CBA3E20;
  v2.value._object = 0x800000020CB99A10;
  v2.value._countAndFlagsBits = 0xD000000000000013;
  v3._countAndFlagsBits = 0;
  v3._object = 0xE000000000000000;
  v8._countAndFlagsBits = 0;
  v4 = NSLocalizedString(_:tableName:bundle:value:comment:)(v1, v2, v0, v3, v8);

  countAndFlagsBits = v4._countAndFlagsBits;
  object = v4._object;
  result._object = object;
  result._countAndFlagsBits = countAndFlagsBits;
  return result;
}

Swift::String __swiftcall GuidedWorkoutLocalizationProvider.guidedWorkoutClose()()
{
  if (one-time initialization token for WorkoutUIBundle != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v0 = WorkoutUIBundle.super.isa;
  v8._object = 0xE000000000000000;
  v1._countAndFlagsBits = 0xD000000000000014;
  v1._object = 0x800000020CBA3E50;
  v2.value._object = 0x800000020CB99A10;
  v2.value._countAndFlagsBits = 0xD000000000000013;
  v3._countAndFlagsBits = 0;
  v3._object = 0xE000000000000000;
  v8._countAndFlagsBits = 0;
  v4 = NSLocalizedString(_:tableName:bundle:value:comment:)(v1, v2, v0, v3, v8);

  countAndFlagsBits = v4._countAndFlagsBits;
  object = v4._object;
  result._object = object;
  result._countAndFlagsBits = countAndFlagsBits;
  return result;
}

Swift::String __swiftcall GuidedWorkoutLocalizationProvider.guidedWorkoutOK()()
{
  if (one-time initialization token for WorkoutUIBundle != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v0 = WorkoutUIBundle.super.isa;
  v8._object = 0xE000000000000000;
  v1.value._countAndFlagsBits = 0x617A696C61636F4CLL;
  v1.value._object = 0xEB00000000656C62;
  v2._countAndFlagsBits = 19279;
  v2._object = 0xE200000000000000;
  v3._countAndFlagsBits = 0;
  v3._object = 0xE000000000000000;
  v8._countAndFlagsBits = 0;
  v4 = NSLocalizedString(_:tableName:bundle:value:comment:)(v2, v1, v0, v3, v8);

  countAndFlagsBits = v4._countAndFlagsBits;
  object = v4._object;
  result._object = object;
  result._countAndFlagsBits = countAndFlagsBits;
  return result;
}

Swift::String __swiftcall GuidedWorkoutLocalizationProvider.guidedWorkoutNoInternet()()
{
  if (one-time initialization token for WorkoutUIBundle != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v0 = WorkoutUIBundle.super.isa;
  v8._object = 0xE000000000000000;
  v1._countAndFlagsBits = 0xD000000000000029;
  v1._object = 0x800000020CBA3E70;
  v2.value._object = 0x800000020CB99A10;
  v2.value._countAndFlagsBits = 0xD000000000000013;
  v3._countAndFlagsBits = 0;
  v3._object = 0xE000000000000000;
  v8._countAndFlagsBits = 0;
  v4 = NSLocalizedString(_:tableName:bundle:value:comment:)(v1, v2, v0, v3, v8);

  countAndFlagsBits = v4._countAndFlagsBits;
  object = v4._object;
  result._object = object;
  result._countAndFlagsBits = countAndFlagsBits;
  return result;
}

Swift::String __swiftcall GuidedWorkoutLocalizationProvider.guidedWorkoutPlaybackError()()
{
  if (one-time initialization token for WorkoutUIBundle != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v0 = WorkoutUIBundle.super.isa;
  v8._object = 0xE000000000000000;
  v1._countAndFlagsBits = 0xD000000000000023;
  v1._object = 0x800000020CBA3EA0;
  v2.value._object = 0x800000020CB99A10;
  v2.value._countAndFlagsBits = 0xD000000000000013;
  v3._countAndFlagsBits = 0;
  v3._object = 0xE000000000000000;
  v8._countAndFlagsBits = 0;
  v4 = NSLocalizedString(_:tableName:bundle:value:comment:)(v1, v2, v0, v3, v8);

  countAndFlagsBits = v4._countAndFlagsBits;
  object = v4._object;
  result._object = object;
  result._countAndFlagsBits = countAndFlagsBits;
  return result;
}

id GuidedWorkoutLocalizationProvider.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id GuidedWorkoutLocalizationProvider.init()()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for GuidedWorkoutLocalizationProvider();
  return objc_msgSendSuper2(&v2, sel_init);
}

id GuidedWorkoutLocalizationProvider.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for GuidedWorkoutLocalizationProvider();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t Color.init(rgbHex:)()
{
  v0 = type metadata accessor for Color.RGBColorSpace();
  MEMORY[0x28223BE20](v0);
  (*(v2 + 104))(&v4 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0), *MEMORY[0x277CE0EE0]);
  return Color.init(_:red:green:blue:opacity:)();
}

unint64_t lazy protocol witness table accessor for type PreviewSupportedDevices and conformance PreviewSupportedDevices()
{
  result = lazy protocol witness table cache variable for type PreviewSupportedDevices and conformance PreviewSupportedDevices;
  if (!lazy protocol witness table cache variable for type PreviewSupportedDevices and conformance PreviewSupportedDevices)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PreviewSupportedDevices and conformance PreviewSupportedDevices);
  }

  return result;
}

uint64_t PreviewSupportedDevices.body(content:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v74 = a2;
  v76 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyACyAA014_ViewModifier_D0Vy07WorkoutB023PreviewSupportedDevicesVGAA013_TraitWritingF0VyAA0h6DeviceK3KeyVGGAKyAA0h11DisplayNamekN0VGGMd) - 8;
  MEMORY[0x28223BE20](v76);
  v73 = &v64 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v72 = &v64 - v5;
  MEMORY[0x28223BE20](v6);
  v71 = &v64 - v7;
  MEMORY[0x28223BE20](v8);
  v70 = &v64 - v9;
  MEMORY[0x28223BE20](v10);
  v69 = &v64 - v11;
  MEMORY[0x28223BE20](v12);
  v68 = &v64 - v13;
  MEMORY[0x28223BE20](v14);
  v78 = &v64 - v15;
  MEMORY[0x28223BE20](v16);
  v75 = &v64 - v17;
  MEMORY[0x28223BE20](v18);
  v81 = &v64 - v19;
  MEMORY[0x28223BE20](v20);
  v22 = &v64 - v21;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyAA014_ViewModifier_D0Vy07WorkoutB023PreviewSupportedDevicesVGAA013_TraitWritingF0VyAA0h6DeviceK3KeyVGGMd);
  v24 = *(v23 + 36);
  v77 = v22;
  MEMORY[0x20F308780](0xD00000000000001BLL, 0x800000020CBA3F00);
  v25 = type metadata accessor for PreviewDevice();
  v80 = *(*(v25 - 8) + 56);
  v80(&v22[v24], 0, 1, v25);
  v79 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI21_ViewModifier_ContentVy07WorkoutB023PreviewSupportedDevicesVGMd);
  v26 = *(v79 - 8);
  v27 = *(v26 + 16);
  v28 = v26 + 16;
  v64 = a1;
  v27(v22, a1, v79);
  v65 = v23;
  v66 = v28;
  v29 = v76;
  v30 = &v22[*(v76 + 44)];
  *v30 = 0xD00000000000001BLL;
  *(v30 + 1) = 0x800000020CBA3F00;
  v31 = v23;
  v32 = *(v23 + 36);
  v33 = v81;
  MEMORY[0x20F308780](0xD00000000000001BLL, 0x800000020CBA3F20);
  v80((v33 + v32), 0, 1, v25);
  v27(v33, a1, v79);
  v34 = v27;
  v35 = (v33 + *(v29 + 44));
  *v35 = 0xD00000000000001BLL;
  v35[1] = 0x800000020CBA3F20;
  v36 = *(v31 + 36);
  v37 = v75;
  MEMORY[0x20F308780](0xD00000000000001BLL, 0x800000020CBA3F40);
  v38 = (v37 + v36);
  v67 = v25;
  v39 = v80;
  v80(v38, 0, 1, v25);
  v40 = v39;
  v41 = v64;
  v34(v37, v64, v79);
  v42 = (v37 + *(v29 + 44));
  *v42 = 0xD00000000000001BLL;
  v42[1] = 0x800000020CBA3F40;
  v43 = v65;
  v44 = *(v65 + 36);
  v45 = v78;
  MEMORY[0x20F308780](0xD00000000000001BLL, 0x800000020CBA3F60);
  v40(v45 + v44, 0, 1, v25);
  v46 = v41;
  v47 = v41;
  v48 = v79;
  v34(v45, v46, v79);
  v49 = v76;
  v50 = (v45 + *(v76 + 44));
  *v50 = 0xD00000000000001BLL;
  v50[1] = 0x800000020CBA3F60;
  v51 = *(v43 + 36);
  v52 = v68;
  MEMORY[0x20F308780](0xD000000000000018, 0x800000020CBA3F80);
  v80((v52 + v51), 0, 1, v67);
  v34(v52, v47, v48);
  v53 = (v52 + *(v49 + 44));
  *v53 = 0xD000000000000018;
  v53[1] = 0x800000020CBA3F80;
  v54 = v69;
  outlined init with copy of ModifiedContent<ModifiedContent<_ViewModifier_Content<PreviewSupportedDevices>, _TraitWritingModifier<PreviewDeviceTraitKey>>, _TraitWritingModifier<PreviewDisplayNameTraitKey>>(v77, v69);
  v55 = v70;
  outlined init with copy of ModifiedContent<ModifiedContent<_ViewModifier_Content<PreviewSupportedDevices>, _TraitWritingModifier<PreviewDeviceTraitKey>>, _TraitWritingModifier<PreviewDisplayNameTraitKey>>(v81, v70);
  v56 = v75;
  v57 = v71;
  outlined init with copy of ModifiedContent<ModifiedContent<_ViewModifier_Content<PreviewSupportedDevices>, _TraitWritingModifier<PreviewDeviceTraitKey>>, _TraitWritingModifier<PreviewDisplayNameTraitKey>>(v75, v71);
  v58 = v78;
  v59 = v72;
  outlined init with copy of ModifiedContent<ModifiedContent<_ViewModifier_Content<PreviewSupportedDevices>, _TraitWritingModifier<PreviewDeviceTraitKey>>, _TraitWritingModifier<PreviewDisplayNameTraitKey>>(v78, v72);
  v60 = v73;
  outlined init with copy of ModifiedContent<ModifiedContent<_ViewModifier_Content<PreviewSupportedDevices>, _TraitWritingModifier<PreviewDeviceTraitKey>>, _TraitWritingModifier<PreviewDisplayNameTraitKey>>(v52, v73);
  v61 = v74;
  outlined init with copy of ModifiedContent<ModifiedContent<_ViewModifier_Content<PreviewSupportedDevices>, _TraitWritingModifier<PreviewDeviceTraitKey>>, _TraitWritingModifier<PreviewDisplayNameTraitKey>>(v54, v74);
  v62 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyACyAA014_ViewModifier_D0Vy07WorkoutB023PreviewSupportedDevicesVGAA013_TraitWritingF0VyAA0h6DeviceK3KeyVGGAKyAA0h11DisplayNamekN0VGG_A4StMd);
  outlined init with copy of ModifiedContent<ModifiedContent<_ViewModifier_Content<PreviewSupportedDevices>, _TraitWritingModifier<PreviewDeviceTraitKey>>, _TraitWritingModifier<PreviewDisplayNameTraitKey>>(v55, v61 + v62[12]);
  outlined init with copy of ModifiedContent<ModifiedContent<_ViewModifier_Content<PreviewSupportedDevices>, _TraitWritingModifier<PreviewDeviceTraitKey>>, _TraitWritingModifier<PreviewDisplayNameTraitKey>>(v57, v61 + v62[16]);
  outlined init with copy of ModifiedContent<ModifiedContent<_ViewModifier_Content<PreviewSupportedDevices>, _TraitWritingModifier<PreviewDeviceTraitKey>>, _TraitWritingModifier<PreviewDisplayNameTraitKey>>(v59, v61 + v62[20]);
  outlined init with copy of ModifiedContent<ModifiedContent<_ViewModifier_Content<PreviewSupportedDevices>, _TraitWritingModifier<PreviewDeviceTraitKey>>, _TraitWritingModifier<PreviewDisplayNameTraitKey>>(v60, v61 + v62[24]);
  outlined destroy of ModifiedContent<ModifiedContent<_ViewModifier_Content<PreviewSupportedDevices>, _TraitWritingModifier<PreviewDeviceTraitKey>>, _TraitWritingModifier<PreviewDisplayNameTraitKey>>(v52);
  outlined destroy of ModifiedContent<ModifiedContent<_ViewModifier_Content<PreviewSupportedDevices>, _TraitWritingModifier<PreviewDeviceTraitKey>>, _TraitWritingModifier<PreviewDisplayNameTraitKey>>(v58);
  outlined destroy of ModifiedContent<ModifiedContent<_ViewModifier_Content<PreviewSupportedDevices>, _TraitWritingModifier<PreviewDeviceTraitKey>>, _TraitWritingModifier<PreviewDisplayNameTraitKey>>(v56);
  outlined destroy of ModifiedContent<ModifiedContent<_ViewModifier_Content<PreviewSupportedDevices>, _TraitWritingModifier<PreviewDeviceTraitKey>>, _TraitWritingModifier<PreviewDisplayNameTraitKey>>(v81);
  outlined destroy of ModifiedContent<ModifiedContent<_ViewModifier_Content<PreviewSupportedDevices>, _TraitWritingModifier<PreviewDeviceTraitKey>>, _TraitWritingModifier<PreviewDisplayNameTraitKey>>(v77);
  outlined destroy of ModifiedContent<ModifiedContent<_ViewModifier_Content<PreviewSupportedDevices>, _TraitWritingModifier<PreviewDeviceTraitKey>>, _TraitWritingModifier<PreviewDisplayNameTraitKey>>(v60);
  outlined destroy of ModifiedContent<ModifiedContent<_ViewModifier_Content<PreviewSupportedDevices>, _TraitWritingModifier<PreviewDeviceTraitKey>>, _TraitWritingModifier<PreviewDisplayNameTraitKey>>(v59);
  outlined destroy of ModifiedContent<ModifiedContent<_ViewModifier_Content<PreviewSupportedDevices>, _TraitWritingModifier<PreviewDeviceTraitKey>>, _TraitWritingModifier<PreviewDisplayNameTraitKey>>(v57);
  outlined destroy of ModifiedContent<ModifiedContent<_ViewModifier_Content<PreviewSupportedDevices>, _TraitWritingModifier<PreviewDeviceTraitKey>>, _TraitWritingModifier<PreviewDisplayNameTraitKey>>(v55);
  return outlined destroy of ModifiedContent<ModifiedContent<_ViewModifier_Content<PreviewSupportedDevices>, _TraitWritingModifier<PreviewDeviceTraitKey>>, _TraitWritingModifier<PreviewDisplayNameTraitKey>>(v54);
}

uint64_t outlined init with copy of ModifiedContent<ModifiedContent<_ViewModifier_Content<PreviewSupportedDevices>, _TraitWritingModifier<PreviewDeviceTraitKey>>, _TraitWritingModifier<PreviewDisplayNameTraitKey>>(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyACyAA014_ViewModifier_D0Vy07WorkoutB023PreviewSupportedDevicesVGAA013_TraitWritingF0VyAA0h6DeviceK3KeyVGGAKyAA0h11DisplayNamekN0VGGMd);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t outlined destroy of ModifiedContent<ModifiedContent<_ViewModifier_Content<PreviewSupportedDevices>, _TraitWritingModifier<PreviewDeviceTraitKey>>, _TraitWritingModifier<PreviewDisplayNameTraitKey>>(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyACyAA014_ViewModifier_D0Vy07WorkoutB023PreviewSupportedDevicesVGAA013_TraitWritingF0VyAA0h6DeviceK3KeyVGGAKyAA0h11DisplayNamekN0VGGMd);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t lazy protocol witness table accessor for type TupleView<(ModifiedContent<ModifiedContent<_ViewModifier_Content<PreviewSupportedDevices>, _TraitWritingModifier<PreviewDeviceTraitKey>>, _TraitWritingModifier<PreviewDisplayNameTraitKey>>, ModifiedContent<ModifiedContent<_ViewModifier_Content<PreviewSupportedDevices>, _TraitWritingModifier<PreviewDeviceTraitKey>>, _TraitWritingModifier<PreviewDisplayNameTraitKey>>, ModifiedContent<ModifiedContent<_ViewModifier_Content<PreviewSupportedDevices>, _TraitWritingModifier<PreviewDeviceTraitKey>>, _TraitWritingModifier<PreviewDisplayNameTraitKey>>, ModifiedContent<ModifiedContent<_ViewModifier_Content<PreviewSupportedDevices>, _TraitWritingModifier<PreviewDeviceTraitKey>>, _TraitWritingModifier<PreviewDisplayNameTraitKey>>, ModifiedContent<ModifiedContent<_ViewModifier_Content<PreviewSupportedDevices>, _TraitWritingModifier<PreviewDeviceTraitKey>>, _TraitWritingModifier<PreviewDisplayNameTraitKey>>)> and conformance TupleView<A>()
{
  result = lazy protocol witness table cache variable for type TupleView<(ModifiedContent<ModifiedContent<_ViewModifier_Content<PreviewSupportedDevices>, _TraitWritingModifier<PreviewDeviceTraitKey>>, _TraitWritingModifier<PreviewDisplayNameTraitKey>>, ModifiedContent<ModifiedContent<_ViewModifier_Content<PreviewSupportedDevices>, _TraitWritingModifier<PreviewDeviceTraitKey>>, _TraitWritingModifier<PreviewDisplayNameTraitKey>>, ModifiedContent<ModifiedContent<_ViewModifier_Content<PreviewSupportedDevices>, _TraitWritingModifier<PreviewDeviceTraitKey>>, _TraitWritingModifier<PreviewDisplayNameTraitKey>>, ModifiedContent<ModifiedContent<_ViewModifier_Content<PreviewSupportedDevices>, _TraitWritingModifier<PreviewDeviceTraitKey>>, _TraitWritingModifier<PreviewDisplayNameTraitKey>>, ModifiedContent<ModifiedContent<_ViewModifier_Content<PreviewSupportedDevices>, _TraitWritingModifier<PreviewDeviceTraitKey>>, _TraitWritingModifier<PreviewDisplayNameTraitKey>>)> and conformance TupleView<A>;
  if (!lazy protocol witness table cache variable for type TupleView<(ModifiedContent<ModifiedContent<_ViewModifier_Content<PreviewSupportedDevices>, _TraitWritingModifier<PreviewDeviceTraitKey>>, _TraitWritingModifier<PreviewDisplayNameTraitKey>>, ModifiedContent<ModifiedContent<_ViewModifier_Content<PreviewSupportedDevices>, _TraitWritingModifier<PreviewDeviceTraitKey>>, _TraitWritingModifier<PreviewDisplayNameTraitKey>>, ModifiedContent<ModifiedContent<_ViewModifier_Content<PreviewSupportedDevices>, _TraitWritingModifier<PreviewDeviceTraitKey>>, _TraitWritingModifier<PreviewDisplayNameTraitKey>>, ModifiedContent<ModifiedContent<_ViewModifier_Content<PreviewSupportedDevices>, _TraitWritingModifier<PreviewDeviceTraitKey>>, _TraitWritingModifier<PreviewDisplayNameTraitKey>>, ModifiedContent<ModifiedContent<_ViewModifier_Content<PreviewSupportedDevices>, _TraitWritingModifier<PreviewDeviceTraitKey>>, _TraitWritingModifier<PreviewDisplayNameTraitKey>>)> and conformance TupleView<A>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI9TupleViewVyAA15ModifiedContentVyAEyAA01_d9Modifier_F0Vy07WorkoutB023PreviewSupportedDevicesVGAA013_TraitWritingG0VyAA0i6DeviceL3KeyVGGAMyAA0i11DisplayNamelO0VGG_A4UtGMd);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type TupleView<(ModifiedContent<ModifiedContent<_ViewModifier_Content<PreviewSupportedDevices>, _TraitWritingModifier<PreviewDeviceTraitKey>>, _TraitWritingModifier<PreviewDisplayNameTraitKey>>, ModifiedContent<ModifiedContent<_ViewModifier_Content<PreviewSupportedDevices>, _TraitWritingModifier<PreviewDeviceTraitKey>>, _TraitWritingModifier<PreviewDisplayNameTraitKey>>, ModifiedContent<ModifiedContent<_ViewModifier_Content<PreviewSupportedDevices>, _TraitWritingModifier<PreviewDeviceTraitKey>>, _TraitWritingModifier<PreviewDisplayNameTraitKey>>, ModifiedContent<ModifiedContent<_ViewModifier_Content<PreviewSupportedDevices>, _TraitWritingModifier<PreviewDeviceTraitKey>>, _TraitWritingModifier<PreviewDisplayNameTraitKey>>, ModifiedContent<ModifiedContent<_ViewModifier_Content<PreviewSupportedDevices>, _TraitWritingModifier<PreviewDeviceTraitKey>>, _TraitWritingModifier<PreviewDisplayNameTraitKey>>)> and conformance TupleView<A>);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for CountdownView(uint64_t *a1, int a2)
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

uint64_t storeEnumTagSinglePayload for CountdownView(uint64_t result, int a2, int a3)
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

uint64_t CountdownView.body.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  swift_getKeyPath();
  _s9WorkoutUI16SessionViewModelCAC11Observation10ObservableAAWlTm_2(&lazy protocol witness table cache variable for type SessionViewModel and conformance SessionViewModel, type metadata accessor for SessionViewModel);

  ObservationRegistrar.access<A, B>(_:keyPath:)();

  swift_beginAccess();
  v4 = *(a1 + 24);
  v5 = dispatch thunk of WorkoutConfiguration.activityType.getter();

  v6 = swift_allocObject();
  *(v6 + 16) = a1;
  *(swift_allocObject() + 16) = a1;
  v7 = swift_retain_n();
  v8 = specialized WorkoutCountdownAnimatedViewRepresentable.init(sessionViewModel:onCountdownStep:onCountdownSkipped:)(v7, partial apply for closure #1 in CountdownView.body.getter, v6);
  v10 = v9;
  *&v31 = v8;
  *(&v31 + 1) = v11;
  *&v32 = v9;
  *(&v32 + 1) = v12;
  lazy protocol witness table accessor for type WorkoutCountdownAnimatedViewRepresentable and conformance WorkoutCountdownAnimatedViewRepresentable();
  View.accessibilityHidden(_:)();

  outlined consume of (@escaping @callee_guaranteed () -> ())?(v10);
  static Alignment.center.getter();
  _FrameLayout.init(width:height:alignment:)();
  v13 = (a2 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyACy07WorkoutB00E34CountdownAnimatedViewRepresentableVAA31AccessibilityAttachmentModifierVGAA12_FrameLayoutVGMd) + 36));
  *v13 = v31;
  v13[1] = v32;
  v13[2] = v33;
  v14 = static Alignment.top.getter();
  v16 = v15;
  v17 = a2 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyACyACy07WorkoutB00E34CountdownAnimatedViewRepresentableVAA31AccessibilityAttachmentModifierVGAA12_FrameLayoutVGAA08_OverlayL0VyACyAD0f3TopO0VAHGGGMd) + 36);
  swift_getKeyPath();
  v18 = v5;
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v19 = *(a1 + 24);
  lazy protocol witness table accessor for type CountdownTopOverlay and conformance CountdownTopOverlay();
  v20 = v19;
  View.accessibilityHidden(_:)();

  v21 = (v17 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI16_OverlayModifierVyAA15ModifiedContentVy07WorkoutB0012CountdownTopC0VAA023AccessibilityAttachmentD0VGGMd) + 36));
  *v21 = v14;
  v21[1] = v16;
  v22 = static Alignment.bottom.getter();
  v24 = v23;
  v25 = [v18 localizedName];
  v26 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v28 = v27;

  result = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyACyACyACy07WorkoutB00E34CountdownAnimatedViewRepresentableVAA31AccessibilityAttachmentModifierVGAA12_FrameLayoutVGAA08_OverlayL0VyACyAD0f3TopO0VAHGGGANyAD0f6BottomO0VGGMd);
  v30 = (a2 + *(result + 36));
  *v30 = v26;
  v30[1] = v28;
  v30[2] = 0x4038000000000000;
  v30[3] = v22;
  v30[4] = v24;
  return result;
}

void closure #1 in CountdownView.body.getter(_BYTE *a1, uint64_t a2)
{
  if (*a1)
  {
    if (*a1 == 1)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys7CVarArg_pGMd);
      v2 = swift_allocObject();
      *(v2 + 16) = xmmword_20CB5DA70;
      v3 = MEMORY[0x277D83C10];
      *(v2 + 56) = MEMORY[0x277D83B88];
      *(v2 + 64) = v3;
      v4 = 2;
    }

    else
    {
      swift_getKeyPath();
      _s9WorkoutUI16SessionViewModelCAC11Observation10ObservableAAWlTm_2(&lazy protocol witness table cache variable for type SessionViewModel and conformance SessionViewModel, type metadata accessor for SessionViewModel);
      ObservationRegistrar.access<A, B>(_:keyPath:)();

      swift_beginAccess();
      if (*(a2 + 32) != 19)
      {
        AudioServicesPlaySystemSoundWithCompletion(0x5C2u, 0);
      }

      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys7CVarArg_pGMd);
      v2 = swift_allocObject();
      *(v2 + 16) = xmmword_20CB5DA70;
      v7 = MEMORY[0x277D83C10];
      *(v2 + 56) = MEMORY[0x277D83B88];
      *(v2 + 64) = v7;
      v4 = 3;
    }
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys7CVarArg_pGMd);
    v2 = swift_allocObject();
    *(v2 + 16) = xmmword_20CB5DA70;
    v5 = MEMORY[0x277D83C10];
    *(v2 + 56) = MEMORY[0x277D83B88];
    *(v2 + 64) = v5;
    v4 = 1;
  }

  *(v2 + 32) = v4;
  v8 = static String.localizedStringWithFormat(_:_:)();
  v10 = v9;

  v11 = *MEMORY[0x277D76438];
  v12 = MEMORY[0x20F30BAD0](v8, v10);

  UIAccessibilityPostNotification(v11, v12);
}

unint64_t lazy protocol witness table accessor for type CountdownTopOverlay and conformance CountdownTopOverlay()
{
  result = lazy protocol witness table cache variable for type CountdownTopOverlay and conformance CountdownTopOverlay;
  if (!lazy protocol witness table cache variable for type CountdownTopOverlay and conformance CountdownTopOverlay)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CountdownTopOverlay and conformance CountdownTopOverlay);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<WorkoutCountdownAnimatedViewRepresentable, AccessibilityAttachmentModifier>, _FrameLayout>, _OverlayModifier<ModifiedContent<CountdownTopOverlay, AccessibilityAttachmentModifier>>>, _OverlayModifier<CountdownBottomOverlay>> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<WorkoutCountdownAnimatedViewRepresentable, AccessibilityAttachmentModifier>, _FrameLayout>, _OverlayModifier<ModifiedContent<CountdownTopOverlay, AccessibilityAttachmentModifier>>>, _OverlayModifier<CountdownBottomOverlay>> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<WorkoutCountdownAnimatedViewRepresentable, AccessibilityAttachmentModifier>, _FrameLayout>, _OverlayModifier<ModifiedContent<CountdownTopOverlay, AccessibilityAttachmentModifier>>>, _OverlayModifier<CountdownBottomOverlay>> and conformance <> ModifiedContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyACyACyACy07WorkoutB00E34CountdownAnimatedViewRepresentableVAA31AccessibilityAttachmentModifierVGAA12_FrameLayoutVGAA08_OverlayL0VyACyAD0f3TopO0VAHGGGANyAD0f6BottomO0VGGMd);
    lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<ModifiedContent<WorkoutCountdownAnimatedViewRepresentable, AccessibilityAttachmentModifier>, _FrameLayout>, _OverlayModifier<ModifiedContent<CountdownTopOverlay, AccessibilityAttachmentModifier>>> and conformance <> ModifiedContent<A, B>();
    lazy protocol witness table accessor for type _OverlayModifier<ModifiedContent<CountdownTopOverlay, AccessibilityAttachmentModifier>> and conformance _OverlayModifier<A>(&lazy protocol witness table cache variable for type _OverlayModifier<CountdownBottomOverlay> and conformance _OverlayModifier<A>, &_s7SwiftUI16_OverlayModifierVy07WorkoutB0015CountdownBottomC0VGMd);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<WorkoutCountdownAnimatedViewRepresentable, AccessibilityAttachmentModifier>, _FrameLayout>, _OverlayModifier<ModifiedContent<CountdownTopOverlay, AccessibilityAttachmentModifier>>>, _OverlayModifier<CountdownBottomOverlay>> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<ModifiedContent<WorkoutCountdownAnimatedViewRepresentable, AccessibilityAttachmentModifier>, _FrameLayout>, _OverlayModifier<ModifiedContent<CountdownTopOverlay, AccessibilityAttachmentModifier>>> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<WorkoutCountdownAnimatedViewRepresentable, AccessibilityAttachmentModifier>, _FrameLayout>, _OverlayModifier<ModifiedContent<CountdownTopOverlay, AccessibilityAttachmentModifier>>> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<WorkoutCountdownAnimatedViewRepresentable, AccessibilityAttachmentModifier>, _FrameLayout>, _OverlayModifier<ModifiedContent<CountdownTopOverlay, AccessibilityAttachmentModifier>>> and conformance <> ModifiedContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyACyACy07WorkoutB00E34CountdownAnimatedViewRepresentableVAA31AccessibilityAttachmentModifierVGAA12_FrameLayoutVGAA08_OverlayL0VyACyAD0f3TopO0VAHGGGMd);
    lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<WorkoutCountdownAnimatedViewRepresentable, AccessibilityAttachmentModifier>, _FrameLayout> and conformance <> ModifiedContent<A, B>();
    lazy protocol witness table accessor for type _OverlayModifier<ModifiedContent<CountdownTopOverlay, AccessibilityAttachmentModifier>> and conformance _OverlayModifier<A>(&lazy protocol witness table cache variable for type _OverlayModifier<ModifiedContent<CountdownTopOverlay, AccessibilityAttachmentModifier>> and conformance _OverlayModifier<A>, &_s7SwiftUI16_OverlayModifierVyAA15ModifiedContentVy07WorkoutB0012CountdownTopC0VAA023AccessibilityAttachmentD0VGGMd);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<WorkoutCountdownAnimatedViewRepresentable, AccessibilityAttachmentModifier>, _FrameLayout>, _OverlayModifier<ModifiedContent<CountdownTopOverlay, AccessibilityAttachmentModifier>>> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<WorkoutCountdownAnimatedViewRepresentable, AccessibilityAttachmentModifier>, _FrameLayout> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<WorkoutCountdownAnimatedViewRepresentable, AccessibilityAttachmentModifier>, _FrameLayout> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<WorkoutCountdownAnimatedViewRepresentable, AccessibilityAttachmentModifier>, _FrameLayout> and conformance <> ModifiedContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyACy07WorkoutB00E34CountdownAnimatedViewRepresentableVAA31AccessibilityAttachmentModifierVGAA12_FrameLayoutVGMd);
    lazy protocol witness table accessor for type ModifiedContent<WorkoutCountdownAnimatedViewRepresentable, AccessibilityAttachmentModifier> and conformance <> ModifiedContent<A, B>();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<WorkoutCountdownAnimatedViewRepresentable, AccessibilityAttachmentModifier>, _FrameLayout> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<WorkoutCountdownAnimatedViewRepresentable, AccessibilityAttachmentModifier> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<WorkoutCountdownAnimatedViewRepresentable, AccessibilityAttachmentModifier> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<WorkoutCountdownAnimatedViewRepresentable, AccessibilityAttachmentModifier> and conformance <> ModifiedContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVy07WorkoutB00E34CountdownAnimatedViewRepresentableVAA31AccessibilityAttachmentModifierVGMd);
    lazy protocol witness table accessor for type WorkoutCountdownAnimatedViewRepresentable and conformance WorkoutCountdownAnimatedViewRepresentable();
    _s9WorkoutUI16SessionViewModelCAC11Observation10ObservableAAWlTm_2(&lazy protocol witness table cache variable for type AccessibilityAttachmentModifier and conformance AccessibilityAttachmentModifier, MEMORY[0x277CDE470]);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<WorkoutCountdownAnimatedViewRepresentable, AccessibilityAttachmentModifier> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

uint64_t _s9WorkoutUI16SessionViewModelCAC11Observation10ObservableAAWlTm_2(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t lazy protocol witness table accessor for type _OverlayModifier<ModifiedContent<CountdownTopOverlay, AccessibilityAttachmentModifier>> and conformance _OverlayModifier<A>(unint64_t *a1, uint64_t *a2)
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

id specialized static PairedDeviceUtilities.activePairedDeviceName.getter()
{
  result = [objc_opt_self() sharedInstance];
  if (result)
  {
    v1 = result;
    v2 = [result getActivePairedDevice];
    if (v2)
    {
      v3 = v2;
      if ([v2 valueForProperty_])
      {
        _bridgeAnyObjectToAny(_:)();

        swift_unknownObjectRelease();
      }

      else
      {

        v5 = 0u;
        v6 = 0u;
      }

      v7[0] = v5;
      v7[1] = v6;
      if (*(&v6 + 1))
      {
        if (swift_dynamicCast())
        {
          return v4;
        }
      }

      else
      {
        outlined destroy of Any?(v7);
      }
    }

    else
    {
    }

    return 0;
  }

  return result;
}

uint64_t specialized static PairedDeviceUtilities.deviceIsPaired.getter()
{
  result = [objc_opt_self() sharedInstance];
  if (result)
  {
    v1 = result;
    v2 = [result getActivePairedDevice];
    if (!v2)
    {

      return 0;
    }

    v3 = v2;
    if ([v2 valueForProperty_])
    {
      _bridgeAnyObjectToAny(_:)();

      swift_unknownObjectRelease();
    }

    else
    {

      v5 = 0u;
      v6 = 0u;
    }

    v7[0] = v5;
    v7[1] = v6;
    if (*(&v6 + 1))
    {
      if (swift_dynamicCast() && (v4 & 1) != 0)
      {
        return 0;
      }
    }

    else
    {
      outlined destroy of Any?(v7);
    }

    return 1;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for SessionExtraControlsButton(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 72))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 24);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t storeEnumTagSinglePayload for SessionExtraControlsButton(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 56) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 72) = 1;
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
      *(result + 24) = (a2 - 1);
      return result;
    }

    *(result + 72) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t SessionExtraControlsButton.body.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v49 = a1;
  v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss19PartialRangeThroughVy7SwiftUI15DynamicTypeSizeOGMd);
  MEMORY[0x28223BE20](v40);
  v4 = &v40 - v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI6ButtonVyAA6ZStackVyAA9TupleViewVyAA06_ShapeF0VyAA16RoundedRectangleVAA03AnyG5StyleVG_AA19_ConditionalContentVyAA08ModifiedM0VyARyARyAA6HStackVyAGyARyAA5ImageVAA31AccessibilityAttachmentModifierVGSg_AA4TextVtGGAA022_EnvironmentKeyWritingS0VyAA4FontVSgGGAA011_ForegroundkS0VyAA5ColorVGGAA07_HiddenS0VGA15_GAPyARyARyAA0F0PAAE08progressfK0yQrqd__AA08ProgressfK0Rd__lFQOyAA08ProgressF0VyAA05EmptyF0VA27_G_AA016CircularProgressfK0VQo_A4_yAA11ControlSizeOGGA17_GA35_GtGGGMd);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v40 - v7;
  v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI4ViewPAAE15dynamicTypeSizeyQrqd__SXRd__AA07DynamiceF0O5BoundRtd__lFQOyAA6ButtonVyAA6ZStackVyAA05TupleC0VyAA06_ShapeC0VyAA16RoundedRectangleVAA03AnyL5StyleVG_AA19_ConditionalContentVyAA08ModifiedR0VyAYyAYyAA6HStackVyANyAYyAA5ImageVAA31AccessibilityAttachmentModifierVGSg_AA4TextVtGGAA022_EnvironmentKeyWritingX0VyAA4FontVSgGGAA011_ForegroundpX0VyAA5ColorVGGAA07_HiddenX0VGA22_GAWyAYyAYyAcAE08progresscP0yQrqd__AA08ProgresscP0Rd__lFQOyAA08ProgressC0VyAA05EmptyC0VA32_G_AA016CircularProgresscP0VQo_A11_yAA07ControlF0OGGA24_GA40_GtGGG_s19PartialRangeThroughVyAFGQo_Md);
  v43 = *(v44 - 8);
  MEMORY[0x28223BE20](v44);
  v42 = &v40 - v9;
  v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyAA4ViewPAAE15dynamicTypeSizeyQrqd__SXRd__AA07DynamicgH0O5BoundRtd__lFQOyAA6ButtonVyAA6ZStackVyAA05TupleE0VyAA06_ShapeE0VyAA16RoundedRectangleVAA03AnyN5StyleVG_AA012_ConditionalD0VyACyACyACyAA6HStackVyAPyACyAA5ImageVAA31AccessibilityAttachmentModifierVGSg_AA4TextVtGGAA022_EnvironmentKeyWritingX0VyAA4FontVSgGGAA011_ForegroundrX0VyAA5ColorVGGAA07_HiddenX0VGA22_GAYyACyACyAeAE08progresseR0yQrqd__AA08ProgresseR0Rd__lFQOyAA08ProgressE0VyAA05EmptyE0VA32_G_AA016CircularProgresseR0VQo_A11_yAA07ControlH0OGGA24_GA40_GtGGG_s19PartialRangeThroughVyAHGQo_AA12_FrameLayoutVGMd);
  MEMORY[0x28223BE20](v41);
  v11 = &v40 - v10;
  v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyACyAA4ViewPAAE15dynamicTypeSizeyQrqd__SXRd__AA07DynamicgH0O5BoundRtd__lFQOyAA6ButtonVyAA6ZStackVyAA05TupleE0VyAA06_ShapeE0VyAA16RoundedRectangleVAA03AnyN5StyleVG_AA012_ConditionalD0VyACyACyACyAA6HStackVyAPyACyAA5ImageVAA31AccessibilityAttachmentModifierVGSg_AA4TextVtGGAA022_EnvironmentKeyWritingX0VyAA4FontVSgGGAA011_ForegroundrX0VyAA5ColorVGGAA07_HiddenX0VGA22_GAYyACyACyAeAE08progresseR0yQrqd__AA08ProgresseR0Rd__lFQOyAA08ProgressE0VyAA05EmptyE0VA32_G_AA016CircularProgresseR0VQo_A11_yAA07ControlH0OGGA24_GA40_GtGGG_s19PartialRangeThroughVyAHGQo_AA12_FrameLayoutVGA21_GMd);
  MEMORY[0x28223BE20](v45);
  v47 = &v40 - v12;
  v46 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyACyACyAA4ViewPAAE15dynamicTypeSizeyQrqd__SXRd__AA07DynamicgH0O5BoundRtd__lFQOyAA6ButtonVyAA6ZStackVyAA05TupleE0VyAA06_ShapeE0VyAA16RoundedRectangleVAA03AnyN5StyleVG_AA012_ConditionalD0VyACyACyACyAA6HStackVyAPyACyAA5ImageVAA31AccessibilityAttachmentModifierVGSg_AA4TextVtGGAA022_EnvironmentKeyWritingX0VyAA4FontVSgGGAA011_ForegroundrX0VyAA5ColorVGGAA07_HiddenX0VGA22_GAYyACyACyAeAE08progresseR0yQrqd__AA08ProgresseR0Rd__lFQOyAA08ProgressE0VyAA05EmptyE0VA32_G_AA016CircularProgresseR0VQo_A11_yAA07ControlH0OGGA24_GA40_GtGGG_s19PartialRangeThroughVyAHGQo_AA12_FrameLayoutVGA21_GAA01_z12KeyTransformX0VySbGGMd);
  MEMORY[0x28223BE20](v46);
  v48 = &v40 - v13;
  v14 = swift_allocObject();
  v15 = *(v1 + 48);
  *(v14 + 48) = *(v1 + 32);
  *(v14 + 64) = v15;
  *(v14 + 80) = *(v1 + 64);
  v16 = *(v1 + 16);
  *(v14 + 16) = *v1;
  *(v14 + 32) = v16;
  v50 = v1;
  outlined init with copy of SessionExtraControlsButton(v1, v52);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI6ZStackVyAA9TupleViewVyAA06_ShapeE0VyAA16RoundedRectangleVAA03AnyF5StyleVG_AA19_ConditionalContentVyAA08ModifiedL0VyAPyAPyAA6HStackVyAEyAPyAA5ImageVAA31AccessibilityAttachmentModifierVGSg_AA4TextVtGGAA022_EnvironmentKeyWritingR0VyAA4FontVSgGGAA011_ForegroundjR0VyAA5ColorVGGAA07_HiddenR0VGA13_GANyAPyAPyAA0E0PAAE08progresseJ0yQrqd__AA08ProgresseJ0Rd__lFQOyAA08ProgressE0VyAA05EmptyE0VA25_G_AA016CircularProgresseJ0VQo_A2_yAA11ControlSizeOGGA15_GA33_GtGGMd);
  lazy protocol witness table accessor for type ZStack<TupleView<(_ShapeView<RoundedRectangle, AnyShapeStyle>, _ConditionalContent<ModifiedContent<ModifiedContent<ModifiedContent<HStack<TupleView<(ModifiedContent<Image, AccessibilityAttachmentModifier>?, Text)>>, _EnvironmentKeyWritingModifier<Font?>>, _ForegroundStyleModifier<Color>>, _HiddenModifier>, ModifiedContent<ModifiedContent<HStack<TupleView<(ModifiedContent<Image, AccessibilityAttachmentModifier>?, Text)>>, _EnvironmentKeyWritingModifier<Font?>>, _ForegroundStyleModifier<Color>>>, _ConditionalContent<ModifiedContent<ModifiedContent<<<opaque return type of View.progressViewStyle<A>(_:)>>.0, _EnvironmentKeyWritingModifier<ControlSize>>, _HiddenModifier>, ModifiedContent<<<opaque return type of View.progressViewStyle<A>(_:)>>.0, _EnvironmentKeyWritingModifier<ControlSize>>>)>> and conformance ZStack<A>(&lazy protocol witness table cache variable for type ZStack<TupleView<(_ShapeView<RoundedRectangle, AnyShapeStyle>, _ConditionalContent<ModifiedContent<ModifiedContent<ModifiedContent<HStack<TupleView<(ModifiedContent<Image, AccessibilityAttachmentModifier>?, Text)>>, _EnvironmentKeyWritingModifier<Font?>>, _ForegroundStyleModifier<Color>>, _HiddenModifier>, ModifiedContent<ModifiedContent<HStack<TupleView<(ModifiedContent<Image, AccessibilityAttachmentModifier>?, Text)>>, _EnvironmentKeyWritingModifier<Font?>>, _ForegroundStyleModifier<Color>>>, _ConditionalContent<ModifiedContent<ModifiedContent<<<opaque return type of View.progressViewStyle<A>(_:)>>.0, _EnvironmentKeyWritingModifier<ControlSize>>, _HiddenModifier>, ModifiedContent<<<opaque return type of View.progressViewStyle<A>(_:)>>.0, _EnvironmentKeyWritingModifier<ControlSize>>>)>> and conformance ZStack<A>, &_s7SwiftUI6ZStackVyAA9TupleViewVyAA06_ShapeE0VyAA16RoundedRectangleVAA03AnyF5StyleVG_AA19_ConditionalContentVyAA08ModifiedL0VyAPyAPyAA6HStackVyAEyAPyAA5ImageVAA31AccessibilityAttachmentModifierVGSg_AA4TextVtGGAA022_EnvironmentKeyWritingR0VyAA4FontVSgGGAA011_ForegroundjR0VyAA5ColorVGGAA07_HiddenR0VGA13_GANyAPyAPyAA0E0PAAE08progresseJ0yQrqd__AA08ProgresseJ0Rd__lFQOyAA08ProgressE0VyAA05EmptyE0VA25_G_AA016CircularProgresseJ0VQo_A2_yAA11ControlSizeOGGA15_GA33_GtGGMd);
  Button.init(action:label:)();
  v17 = *MEMORY[0x277CDF9D8];
  v18 = type metadata accessor for DynamicTypeSize();
  (*(*(v18 - 8) + 104))(v4, v17, v18);
  _s7SwiftUI15DynamicTypeSizeOACSQAAWlTm_0(&lazy protocol witness table cache variable for type DynamicTypeSize and conformance DynamicTypeSize, MEMORY[0x277CDFA28]);
  result = dispatch thunk of static Equatable.== infix(_:_:)();
  if (result)
  {
    lazy protocol witness table accessor for type ZStack<TupleView<(_ShapeView<RoundedRectangle, AnyShapeStyle>, _ConditionalContent<ModifiedContent<ModifiedContent<ModifiedContent<HStack<TupleView<(ModifiedContent<Image, AccessibilityAttachmentModifier>?, Text)>>, _EnvironmentKeyWritingModifier<Font?>>, _ForegroundStyleModifier<Color>>, _HiddenModifier>, ModifiedContent<ModifiedContent<HStack<TupleView<(ModifiedContent<Image, AccessibilityAttachmentModifier>?, Text)>>, _EnvironmentKeyWritingModifier<Font?>>, _ForegroundStyleModifier<Color>>>, _ConditionalContent<ModifiedContent<ModifiedContent<<<opaque return type of View.progressViewStyle<A>(_:)>>.0, _EnvironmentKeyWritingModifier<ControlSize>>, _HiddenModifier>, ModifiedContent<<<opaque return type of View.progressViewStyle<A>(_:)>>.0, _EnvironmentKeyWritingModifier<ControlSize>>>)>> and conformance ZStack<A>(&lazy protocol witness table cache variable for type Button<ZStack<TupleView<(_ShapeView<RoundedRectangle, AnyShapeStyle>, _ConditionalContent<ModifiedContent<ModifiedContent<ModifiedContent<HStack<TupleView<(ModifiedContent<Image, AccessibilityAttachmentModifier>?, Text)>>, _EnvironmentKeyWritingModifier<Font?>>, _ForegroundStyleModifier<Color>>, _HiddenModifier>, ModifiedContent<ModifiedContent<HStack<TupleView<(ModifiedContent<Image, AccessibilityAttachmentModifier>?, Text)>>, _EnvironmentKeyWritingModifier<Font?>>, _ForegroundStyleModifier<Color>>>, _ConditionalContent<ModifiedContent<ModifiedContent<<<opaque return type of View.progressViewStyle<A>(_:)>>.0, _EnvironmentKeyWritingModifier<ControlSize>>, _HiddenModifier>, ModifiedContent<<<opaque return type of View.progressViewStyle<A>(_:)>>.0, _EnvironmentKeyWritingModifier<ControlSize>>>)>>> and conformance Button<A>, &_s7SwiftUI6ButtonVyAA6ZStackVyAA9TupleViewVyAA06_ShapeF0VyAA16RoundedRectangleVAA03AnyG5StyleVG_AA19_ConditionalContentVyAA08ModifiedM0VyARyARyAA6HStackVyAGyARyAA5ImageVAA31AccessibilityAttachmentModifierVGSg_AA4TextVtGGAA022_EnvironmentKeyWritingS0VyAA4FontVSgGGAA011_ForegroundkS0VyAA5ColorVGGAA07_HiddenS0VGA15_GAPyARyARyAA0F0PAAE08progressfK0yQrqd__AA08ProgressfK0Rd__lFQOyAA08ProgressF0VyAA05EmptyF0VA27_G_AA016CircularProgressfK0VQo_A4_yAA11ControlSizeOGGA17_GA35_GtGGGMd);
    lazy protocol witness table accessor for type ZStack<TupleView<(_ShapeView<RoundedRectangle, AnyShapeStyle>, _ConditionalContent<ModifiedContent<ModifiedContent<ModifiedContent<HStack<TupleView<(ModifiedContent<Image, AccessibilityAttachmentModifier>?, Text)>>, _EnvironmentKeyWritingModifier<Font?>>, _ForegroundStyleModifier<Color>>, _HiddenModifier>, ModifiedContent<ModifiedContent<HStack<TupleView<(ModifiedContent<Image, AccessibilityAttachmentModifier>?, Text)>>, _EnvironmentKeyWritingModifier<Font?>>, _ForegroundStyleModifier<Color>>>, _ConditionalContent<ModifiedContent<ModifiedContent<<<opaque return type of View.progressViewStyle<A>(_:)>>.0, _EnvironmentKeyWritingModifier<ControlSize>>, _HiddenModifier>, ModifiedContent<<<opaque return type of View.progressViewStyle<A>(_:)>>.0, _EnvironmentKeyWritingModifier<ControlSize>>>)>> and conformance ZStack<A>(&lazy protocol witness table cache variable for type PartialRangeThrough<DynamicTypeSize> and conformance PartialRangeThrough<A>, &_ss19PartialRangeThroughVy7SwiftUI15DynamicTypeSizeOGMd);
    v20 = v42;
    View.dynamicTypeSize<A>(_:)();
    _ss19PartialRangeThroughVy7SwiftUI15DynamicTypeSizeOGWOhTm_0(v4, &_ss19PartialRangeThroughVy7SwiftUI15DynamicTypeSizeOGMd);
    (*(v6 + 8))(v8, v5);

    v21 = objc_opt_self();
    v22 = [v21 mainScreen];
    [v22 scale];

    v23 = [v21 mainScreen];
    [v23 nativeScale];

    static Alignment.center.getter();
    _FrameLayout.init(width:height:alignment:)();
    (*(v43 + 32))(v11, v20, v44);
    v24 = &v11[*(v41 + 36)];
    v25 = v52[1];
    *v24 = v52[0];
    *(v24 + 1) = v25;
    *(v24 + 2) = v52[2];
    v26 = *(v2 + 49);
    if (v26 == 1)
    {
      static Color.white.getter();
      v27 = Color.opacity(_:)();
    }

    else
    {
      v51 = *(v2 + 32);
      lazy protocol witness table accessor for type Color and conformance Color();

      v27 = Color.init<A>(_:)();
    }

    v28 = v47;
    outlined init with take of ModifiedContent<<<opaque return type of View.dynamicTypeSize<A>(_:)>>.0, _FrameLayout>(v11, v47, &_s7SwiftUI15ModifiedContentVyAA4ViewPAAE15dynamicTypeSizeyQrqd__SXRd__AA07DynamicgH0O5BoundRtd__lFQOyAA6ButtonVyAA6ZStackVyAA05TupleE0VyAA06_ShapeE0VyAA16RoundedRectangleVAA03AnyN5StyleVG_AA012_ConditionalD0VyACyACyACyAA6HStackVyAPyACyAA5ImageVAA31AccessibilityAttachmentModifierVGSg_AA4TextVtGGAA022_EnvironmentKeyWritingX0VyAA4FontVSgGGAA011_ForegroundrX0VyAA5ColorVGGAA07_HiddenX0VGA22_GAYyACyACyAeAE08progresseR0yQrqd__AA08ProgresseR0Rd__lFQOyAA08ProgressE0VyAA05EmptyE0VA32_G_AA016CircularProgresseR0VQo_A11_yAA07ControlH0OGGA24_GA40_GtGGG_s19PartialRangeThroughVyAHGQo_AA12_FrameLayoutVGMd);
    *(v28 + *(v45 + 36)) = v27;
    KeyPath = swift_getKeyPath();
    v30 = swift_allocObject();
    *(v30 + 16) = v26;
    v31 = v48;
    outlined init with take of ModifiedContent<<<opaque return type of View.dynamicTypeSize<A>(_:)>>.0, _FrameLayout>(v28, v48, &_s7SwiftUI15ModifiedContentVyACyAA4ViewPAAE15dynamicTypeSizeyQrqd__SXRd__AA07DynamicgH0O5BoundRtd__lFQOyAA6ButtonVyAA6ZStackVyAA05TupleE0VyAA06_ShapeE0VyAA16RoundedRectangleVAA03AnyN5StyleVG_AA012_ConditionalD0VyACyACyACyAA6HStackVyAPyACyAA5ImageVAA31AccessibilityAttachmentModifierVGSg_AA4TextVtGGAA022_EnvironmentKeyWritingX0VyAA4FontVSgGGAA011_ForegroundrX0VyAA5ColorVGGAA07_HiddenX0VGA22_GAYyACyACyAeAE08progresseR0yQrqd__AA08ProgresseR0Rd__lFQOyAA08ProgressE0VyAA05EmptyE0VA32_G_AA016CircularProgresseR0VQo_A11_yAA07ControlH0OGGA24_GA40_GtGGG_s19PartialRangeThroughVyAHGQo_AA12_FrameLayoutVGA21_GMd);
    v32 = (v31 + *(v46 + 36));
    *v32 = KeyPath;
    v32[1] = _s7SwiftUI4ViewPAAE8disabledyQrSbFySbzcfU_TA_21;
    v32[2] = v30;
    v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyACyACyACyAA4ViewPAAE15dynamicTypeSizeyQrqd__SXRd__AA07DynamicgH0O5BoundRtd__lFQOyAA6ButtonVyAA6ZStackVyAA05TupleE0VyAA06_ShapeE0VyAA16RoundedRectangleVAA03AnyN5StyleVG_AA012_ConditionalD0VyACyACyACyAA6HStackVyAPyACyAA5ImageVAA31AccessibilityAttachmentModifierVGSg_AA4TextVtGGAA022_EnvironmentKeyWritingX0VyAA4FontVSgGGAA011_ForegroundrX0VyAA5ColorVGGAA07_HiddenX0VGA22_GAYyACyACyAeAE08progresseR0yQrqd__AA08ProgresseR0Rd__lFQOyAA08ProgressE0VyAA05EmptyE0VA32_G_AA016CircularProgresseR0VQo_A11_yAA07ControlH0OGGA24_GA40_GtGGG_s19PartialRangeThroughVyAHGQo_AA12_FrameLayoutVGA21_GAA01_z12KeyTransformX0VySbGGAA01_dn4KindX0VyATGGMd);
    v34 = v49;
    v35 = (v49 + *(v33 + 36));
    v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI25_ContentShapeKindModifierVyAA16RoundedRectangleVGMd);
    static ContentShapeKinds.accessibility.getter();
    v37 = *(type metadata accessor for RoundedRectangle() + 20);
    v38 = *MEMORY[0x277CE0118];
    v39 = type metadata accessor for RoundedCornerStyle();
    (*(*(v39 - 8) + 104))(&v35->i8[v37], v38, v39);
    *v35 = vdupq_n_s64(0x7FF0000000000000uLL);
    v35->i8[*(v36 + 36)] = 0;
    return outlined init with take of ModifiedContent<<<opaque return type of View.dynamicTypeSize<A>(_:)>>.0, _FrameLayout>(v31, v34, &_s7SwiftUI15ModifiedContentVyACyACyAA4ViewPAAE15dynamicTypeSizeyQrqd__SXRd__AA07DynamicgH0O5BoundRtd__lFQOyAA6ButtonVyAA6ZStackVyAA05TupleE0VyAA06_ShapeE0VyAA16RoundedRectangleVAA03AnyN5StyleVG_AA012_ConditionalD0VyACyACyACyAA6HStackVyAPyACyAA5ImageVAA31AccessibilityAttachmentModifierVGSg_AA4TextVtGGAA022_EnvironmentKeyWritingX0VyAA4FontVSgGGAA011_ForegroundrX0VyAA5ColorVGGAA07_HiddenX0VGA22_GAYyACyACyAeAE08progresseR0yQrqd__AA08ProgresseR0Rd__lFQOyAA08ProgressE0VyAA05EmptyE0VA32_G_AA016CircularProgresseR0VQo_A11_yAA07ControlH0OGGA24_GA40_GtGGG_s19PartialRangeThroughVyAHGQo_AA12_FrameLayoutVGA21_GAA01_z12KeyTransformX0VySbGGMd);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t closure #2 in SessionExtraControlsButton.body.getter@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = static HorizontalAlignment.center.getter();
  v5 = static VerticalAlignment.firstTextLineCenter.getter();
  *a2 = v4;
  a2[1] = v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI13_VariadicViewO4TreeVy_AA13_ZStackLayoutVAA05TupleD0VyAA06_ShapeD0VyAA16RoundedRectangleVAA03AnyI5StyleVG_AA19_ConditionalContentVyAA08ModifiedO0VyATyATyAA6HStackVyAIyATyAA5ImageVAA31AccessibilityAttachmentModifierVGSg_AA4TextVtGGAA022_EnvironmentKeyWritingU0VyAA4FontVSgGGAA011_ForegroundmU0VyAA5ColorVGGAA07_HiddenU0VGA17_GARyATyATyAA0D0PAAE08progressdM0yQrqd__AA08ProgressdM0Rd__lFQOyAA08ProgressD0VyAA05EmptyD0VA29_G_AA016CircularProgressdM0VQo_A6_yAA11ControlSizeOGGA19_GA37_GtGGMd);
  return closure #1 in closure #2 in SessionExtraControlsButton.body.getter(a1, a2 + *(v6 + 44));
}

uint64_t closure #1 in closure #2 in SessionExtraControlsButton.body.getter@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v85 = a1;
  v106 = a2;
  v102 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI19_ConditionalContentV7StorageOyAA08ModifiedD0VyAGyAA4ViewPAAE08progressG5StyleyQrqd__AA08ProgressgI0Rd__lFQOyAA0jG0VyAA05EmptyG0VAOG_AA08CircularjgI0VQo_AA30_EnvironmentKeyWritingModifierVyAA11ControlSizeOGGAA07_HiddenP0VGAY_GMd);
  MEMORY[0x28223BE20](v102);
  v105 = &v79 - v2;
  v104 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyACyAA4ViewPAAE08progressE5StyleyQrqd__AA08ProgresseG0Rd__lFQOyAA0hE0VyAA05EmptyE0VAKG_AA08CircularheG0VQo_AA30_EnvironmentKeyWritingModifierVyAA11ControlSizeOGGAA07_HiddenN0VGMd);
  MEMORY[0x28223BE20](v104);
  v80 = &v79 - v3;
  v99 = type metadata accessor for CircularProgressViewStyle();
  v97 = *(v99 - 8);
  MEMORY[0x28223BE20](v99);
  v94 = &v79 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI12ProgressViewVyAA05EmptyD0VAEGMd);
  v92 = *(v5 - 8);
  v93 = v5;
  MEMORY[0x28223BE20](v5);
  v110 = &v79 - v6;
  v98 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI4ViewPAAE08progressC5StyleyQrqd__AA08ProgresscE0Rd__lFQOyAA0fC0VyAA05EmptyC0VAIG_AA08CircularfcE0VQo_Md);
  v96 = *(v98 - 8);
  MEMORY[0x28223BE20](v98);
  v95 = &v79 - v7;
  v100 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyAA4ViewPAAE08progressE5StyleyQrqd__AA08ProgresseG0Rd__lFQOyAA0hE0VyAA05EmptyE0VAKG_AA08CircularheG0VQo_AA30_EnvironmentKeyWritingModifierVyAA11ControlSizeOGGMd);
  MEMORY[0x28223BE20](v100);
  v101 = &v79 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI19_ConditionalContentVyAA08ModifiedD0VyAEyAA4ViewPAAE08progressF5StyleyQrqd__AA08ProgressfH0Rd__lFQOyAA0iF0VyAA05EmptyF0VAMG_AA08CircularifH0VQo_AA30_EnvironmentKeyWritingModifierVyAA11ControlSizeOGGAA07_HiddenO0VGAWGMd);
  MEMORY[0x28223BE20](v9 - 8);
  v103 = &v79 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v108 = &v79 - v12;
  v86 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI19_ConditionalContentV7StorageOyAA08ModifiedD0VyAGyAGyAA6HStackVyAA9TupleViewVyAGyAA5ImageVAA31AccessibilityAttachmentModifierVGSg_AA4TextVtGGAA022_EnvironmentKeyWritingM0VyAA4FontVSgGGAA016_ForegroundStyleM0VyAA5ColorVGGAA07_HiddenM0VGA6__GMd);
  MEMORY[0x28223BE20](v86);
  v88 = &v79 - v13;
  v87 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyACyACyAA6HStackVyAA9TupleViewVyACyAA5ImageVAA31AccessibilityAttachmentModifierVGSg_AA4TextVtGGAA022_EnvironmentKeyWritingK0VyAA4FontVSgGGAA016_ForegroundStyleK0VyAA5ColorVGGAA07_HiddenK0VGMd);
  MEMORY[0x28223BE20](v87);
  v79 = &v79 - v14;
  v83 = type metadata accessor for Font.Leading();
  v82 = *(v83 - 8);
  MEMORY[0x28223BE20](v83);
  v16 = &v79 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI4FontV6DesignOSgMd);
  MEMORY[0x28223BE20](v17 - 8);
  v19 = &v79 - v18;
  v81 = type metadata accessor for Font.TextStyle();
  v20 = *(v81 - 8);
  MEMORY[0x28223BE20](v81);
  v22 = &v79 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyAA6HStackVyAA9TupleViewVyACyAA5ImageVAA31AccessibilityAttachmentModifierVGSg_AA4TextVtGGAA022_EnvironmentKeyWritingK0VyAA4FontVSgGGMd);
  v24 = v23 - 8;
  MEMORY[0x28223BE20](v23);
  v26 = &v79 - v25;
  v84 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyACyAA6HStackVyAA9TupleViewVyACyAA5ImageVAA31AccessibilityAttachmentModifierVGSg_AA4TextVtGGAA022_EnvironmentKeyWritingK0VyAA4FontVSgGGAA016_ForegroundStyleK0VyAA5ColorVGGMd);
  MEMORY[0x28223BE20](v84);
  v107 = &v79 - v27;
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI19_ConditionalContentVyAA08ModifiedD0VyAEyAEyAA6HStackVyAA9TupleViewVyAEyAA5ImageVAA31AccessibilityAttachmentModifierVGSg_AA4TextVtGGAA022_EnvironmentKeyWritingL0VyAA4FontVSgGGAA016_ForegroundStyleL0VyAA5ColorVGGAA07_HiddenL0VGA4_GMd);
  MEMORY[0x28223BE20](v28 - 8);
  v91 = &v79 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v30);
  v109 = &v79 - v31;
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI10_ShapeViewVyAA16RoundedRectangleVAA03AnyC5StyleVGMd);
  v33 = v32 - 8;
  MEMORY[0x28223BE20](v32);
  v90 = &v79 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v35);
  v37 = (&v79 - v36);
  v38 = *(type metadata accessor for RoundedRectangle() + 20);
  v39 = *MEMORY[0x277CE0118];
  v40 = type metadata accessor for RoundedCornerStyle();
  (*(*(v40 - 8) + 104))(&v37->i8[v38], v39, v40);
  *v37 = vdupq_n_s64(0x7FF0000000000000uLL);
  v41 = v85;
  *(v37->i64 + *(v33 + 60)) = v85[5];
  v42 = *(v33 + 64);
  v89 = v37;
  *(v37->i16 + v42) = 256;

  *v26 = static VerticalAlignment.firstTextBaseline.getter();
  *(v26 + 1) = 0;
  v26[16] = 1;
  v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI13_VariadicViewO4TreeVy_AA13_HStackLayoutVAA05TupleD0VyAA15ModifiedContentVyAA5ImageVAA31AccessibilityAttachmentModifierVGSg_AA4TextVtGGMd);
  v44 = v41;
  closure #1 in closure #1 in closure #2 in SessionExtraControlsButton.body.getter(v41, &v26[*(v43 + 44)]);
  v45 = v81;
  (*(v20 + 104))(v22, *MEMORY[0x277CE0A70], v81);
  v46 = type metadata accessor for Font.Design();
  (*(*(v46 - 8) + 56))(v19, 1, 1, v46);
  static Font.Weight.medium.getter();
  static Font.system(_:design:weight:)();
  _ss19PartialRangeThroughVy7SwiftUI15DynamicTypeSizeOGWOhTm_0(v19, &_s7SwiftUI4FontV6DesignOSgMd);
  (*(v20 + 8))(v22, v45);
  v47 = v82;
  v48 = v83;
  (*(v82 + 104))(v16, *MEMORY[0x277CE0A10], v83);
  v49 = Font.leading(_:)();

  (*(v47 + 8))(v16, v48);
  KeyPath = swift_getKeyPath();
  v51 = &v26[*(v24 + 44)];
  *v51 = KeyPath;
  v51[1] = v49;
  v52 = *(v44 + 49);
  if (v52)
  {
    static Color.white.getter();
    v53 = Color.opacity(_:)();
  }

  else
  {
    v111 = v44[4];
    lazy protocol witness table accessor for type Color and conformance Color();

    v53 = Color.init<A>(_:)();
  }

  v54 = v107;
  outlined init with take of ModifiedContent<HStack<TupleView<(ModifiedContent<Image, AccessibilityAttachmentModifier>?, Text)>>, _EnvironmentKeyWritingModifier<Font?>>(v26, v107, &_s7SwiftUI15ModifiedContentVyAA6HStackVyAA9TupleViewVyACyAA5ImageVAA31AccessibilityAttachmentModifierVGSg_AA4TextVtGGAA022_EnvironmentKeyWritingK0VyAA4FontVSgGGMd);
  *(v54 + *(v84 + 36)) = v53;
  v55 = v108;
  v56 = v100;
  v57 = v101;
  LODWORD(v83) = *(v44 + 48);
  if (v83)
  {
    v58 = v79;
    outlined init with copy of ModifiedContent<ModifiedContent<HStack<TupleView<(ModifiedContent<Image, AccessibilityAttachmentModifier>?, Text)>>, _EnvironmentKeyWritingModifier<Font?>>, _ForegroundStyleModifier<Color>>(v54, v79, &_s7SwiftUI15ModifiedContentVyACyAA6HStackVyAA9TupleViewVyACyAA5ImageVAA31AccessibilityAttachmentModifierVGSg_AA4TextVtGGAA022_EnvironmentKeyWritingK0VyAA4FontVSgGGAA016_ForegroundStyleK0VyAA5ColorVGGMd);
    outlined init with copy of ModifiedContent<ModifiedContent<HStack<TupleView<(ModifiedContent<Image, AccessibilityAttachmentModifier>?, Text)>>, _EnvironmentKeyWritingModifier<Font?>>, _ForegroundStyleModifier<Color>>(v58, v88, &_s7SwiftUI15ModifiedContentVyACyACyAA6HStackVyAA9TupleViewVyACyAA5ImageVAA31AccessibilityAttachmentModifierVGSg_AA4TextVtGGAA022_EnvironmentKeyWritingK0VyAA4FontVSgGGAA016_ForegroundStyleK0VyAA5ColorVGGAA07_HiddenK0VGMd);
    swift_storeEnumTagMultiPayload();
    lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<ModifiedContent<HStack<TupleView<(ModifiedContent<Image, AccessibilityAttachmentModifier>?, Text)>>, _EnvironmentKeyWritingModifier<Font?>>, _ForegroundStyleModifier<Color>>, _HiddenModifier> and conformance <> ModifiedContent<A, B>(&lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<HStack<TupleView<(ModifiedContent<Image, AccessibilityAttachmentModifier>?, Text)>>, _EnvironmentKeyWritingModifier<Font?>>, _ForegroundStyleModifier<Color>>, _HiddenModifier> and conformance <> ModifiedContent<A, B>, &_s7SwiftUI15ModifiedContentVyACyACyAA6HStackVyAA9TupleViewVyACyAA5ImageVAA31AccessibilityAttachmentModifierVGSg_AA4TextVtGGAA022_EnvironmentKeyWritingK0VyAA4FontVSgGGAA016_ForegroundStyleK0VyAA5ColorVGGAA07_HiddenK0VGMd, &_s7SwiftUI15ModifiedContentVyACyACyAA6HStackVyAA9TupleViewVyACyAA5ImageVAA31AccessibilityAttachmentModifierVGSg_AA4TextVtGGAA022_EnvironmentKeyWritingK0VyAA4FontVSgGGAA016_ForegroundStyleK0VyAA5ColorVGGAA07_HiddenK0VGMR, lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<HStack<TupleView<(ModifiedContent<Image, AccessibilityAttachmentModifier>?, Text)>>, _EnvironmentKeyWritingModifier<Font?>>, _ForegroundStyleModifier<Color>> and conformance <> ModifiedContent<A, B>);
    lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<HStack<TupleView<(ModifiedContent<Image, AccessibilityAttachmentModifier>?, Text)>>, _EnvironmentKeyWritingModifier<Font?>>, _ForegroundStyleModifier<Color>> and conformance <> ModifiedContent<A, B>();
    v54 = v107;
    _ConditionalContent<>.init(storage:)();
    v59 = v58;
    v55 = v108;
    _ss19PartialRangeThroughVy7SwiftUI15DynamicTypeSizeOGWOhTm_0(v59, &_s7SwiftUI15ModifiedContentVyACyACyAA6HStackVyAA9TupleViewVyACyAA5ImageVAA31AccessibilityAttachmentModifierVGSg_AA4TextVtGGAA022_EnvironmentKeyWritingK0VyAA4FontVSgGGAA016_ForegroundStyleK0VyAA5ColorVGGAA07_HiddenK0VGMd);
  }

  else
  {
    outlined init with copy of ModifiedContent<ModifiedContent<HStack<TupleView<(ModifiedContent<Image, AccessibilityAttachmentModifier>?, Text)>>, _EnvironmentKeyWritingModifier<Font?>>, _ForegroundStyleModifier<Color>>(v54, v88, &_s7SwiftUI15ModifiedContentVyACyAA6HStackVyAA9TupleViewVyACyAA5ImageVAA31AccessibilityAttachmentModifierVGSg_AA4TextVtGGAA022_EnvironmentKeyWritingK0VyAA4FontVSgGGAA016_ForegroundStyleK0VyAA5ColorVGGMd);
    swift_storeEnumTagMultiPayload();
    lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<ModifiedContent<HStack<TupleView<(ModifiedContent<Image, AccessibilityAttachmentModifier>?, Text)>>, _EnvironmentKeyWritingModifier<Font?>>, _ForegroundStyleModifier<Color>>, _HiddenModifier> and conformance <> ModifiedContent<A, B>(&lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<HStack<TupleView<(ModifiedContent<Image, AccessibilityAttachmentModifier>?, Text)>>, _EnvironmentKeyWritingModifier<Font?>>, _ForegroundStyleModifier<Color>>, _HiddenModifier> and conformance <> ModifiedContent<A, B>, &_s7SwiftUI15ModifiedContentVyACyACyAA6HStackVyAA9TupleViewVyACyAA5ImageVAA31AccessibilityAttachmentModifierVGSg_AA4TextVtGGAA022_EnvironmentKeyWritingK0VyAA4FontVSgGGAA016_ForegroundStyleK0VyAA5ColorVGGAA07_HiddenK0VGMd, &_s7SwiftUI15ModifiedContentVyACyACyAA6HStackVyAA9TupleViewVyACyAA5ImageVAA31AccessibilityAttachmentModifierVGSg_AA4TextVtGGAA022_EnvironmentKeyWritingK0VyAA4FontVSgGGAA016_ForegroundStyleK0VyAA5ColorVGGAA07_HiddenK0VGMR, lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<HStack<TupleView<(ModifiedContent<Image, AccessibilityAttachmentModifier>?, Text)>>, _EnvironmentKeyWritingModifier<Font?>>, _ForegroundStyleModifier<Color>> and conformance <> ModifiedContent<A, B>);
    lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<HStack<TupleView<(ModifiedContent<Image, AccessibilityAttachmentModifier>?, Text)>>, _EnvironmentKeyWritingModifier<Font?>>, _ForegroundStyleModifier<Color>> and conformance <> ModifiedContent<A, B>();
    _ConditionalContent<>.init(storage:)();
  }

  _ss19PartialRangeThroughVy7SwiftUI15DynamicTypeSizeOGWOhTm_0(v54, &_s7SwiftUI15ModifiedContentVyACyAA6HStackVyAA9TupleViewVyACyAA5ImageVAA31AccessibilityAttachmentModifierVGSg_AA4TextVtGGAA022_EnvironmentKeyWritingK0VyAA4FontVSgGGAA016_ForegroundStyleK0VyAA5ColorVGGMd);
  ProgressView<>.init<>()();
  if (v52)
  {
    static Color.white.getter();
    Color.opacity(_:)();
  }

  else
  {
    v111 = v44[4];
    lazy protocol witness table accessor for type Color and conformance Color();

    Color.init<A>(_:)();
  }

  v60 = v94;
  CircularProgressViewStyle.init(tint:)();
  lazy protocol witness table accessor for type ZStack<TupleView<(_ShapeView<RoundedRectangle, AnyShapeStyle>, _ConditionalContent<ModifiedContent<ModifiedContent<ModifiedContent<HStack<TupleView<(ModifiedContent<Image, AccessibilityAttachmentModifier>?, Text)>>, _EnvironmentKeyWritingModifier<Font?>>, _ForegroundStyleModifier<Color>>, _HiddenModifier>, ModifiedContent<ModifiedContent<HStack<TupleView<(ModifiedContent<Image, AccessibilityAttachmentModifier>?, Text)>>, _EnvironmentKeyWritingModifier<Font?>>, _ForegroundStyleModifier<Color>>>, _ConditionalContent<ModifiedContent<ModifiedContent<<<opaque return type of View.progressViewStyle<A>(_:)>>.0, _EnvironmentKeyWritingModifier<ControlSize>>, _HiddenModifier>, ModifiedContent<<<opaque return type of View.progressViewStyle<A>(_:)>>.0, _EnvironmentKeyWritingModifier<ControlSize>>>)>> and conformance ZStack<A>(&lazy protocol witness table cache variable for type ProgressView<EmptyView, EmptyView> and conformance ProgressView<A, B>, &_s7SwiftUI12ProgressViewVyAA05EmptyD0VAEGMd);
  _s7SwiftUI15DynamicTypeSizeOACSQAAWlTm_0(&lazy protocol witness table cache variable for type CircularProgressViewStyle and conformance CircularProgressViewStyle, MEMORY[0x277CDE330]);
  v61 = v95;
  v62 = v93;
  v63 = v99;
  v64 = v110;
  View.progressViewStyle<A>(_:)();
  (*(v97 + 8))(v60, v63);
  (*(v92 + 8))(v64, v62);
  v65 = (v57 + *(v56 + 36));
  v66 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI30_EnvironmentKeyWritingModifierVyAA11ControlSizeOGMd) + 28);
  v67 = *MEMORY[0x277CDF420];
  v68 = type metadata accessor for ControlSize();
  (*(*(v68 - 8) + 104))(v65 + v66, v67, v68);
  *v65 = swift_getKeyPath();
  (*(v96 + 32))(v57, v61, v98);
  if (v83)
  {
    outlined init with copy of ModifiedContent<<<opaque return type of View.progressViewStyle<A>(_:)>>.0, _EnvironmentKeyWritingModifier<ControlSize>>(v57, v105, &_s7SwiftUI15ModifiedContentVyAA4ViewPAAE08progressE5StyleyQrqd__AA08ProgresseG0Rd__lFQOyAA0hE0VyAA05EmptyE0VAKG_AA08CircularheG0VQo_AA30_EnvironmentKeyWritingModifierVyAA11ControlSizeOGGMd);
    swift_storeEnumTagMultiPayload();
    lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<ModifiedContent<HStack<TupleView<(ModifiedContent<Image, AccessibilityAttachmentModifier>?, Text)>>, _EnvironmentKeyWritingModifier<Font?>>, _ForegroundStyleModifier<Color>>, _HiddenModifier> and conformance <> ModifiedContent<A, B>(&lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<<<opaque return type of View.progressViewStyle<A>(_:)>>.0, _EnvironmentKeyWritingModifier<ControlSize>>, _HiddenModifier> and conformance <> ModifiedContent<A, B>, &_s7SwiftUI15ModifiedContentVyACyAA4ViewPAAE08progressE5StyleyQrqd__AA08ProgresseG0Rd__lFQOyAA0hE0VyAA05EmptyE0VAKG_AA08CircularheG0VQo_AA30_EnvironmentKeyWritingModifierVyAA11ControlSizeOGGAA07_HiddenN0VGMd, &_s7SwiftUI15ModifiedContentVyACyAA4ViewPAAE08progressE5StyleyQrqd__AA08ProgresseG0Rd__lFQOyAA0hE0VyAA05EmptyE0VAKG_AA08CircularheG0VQo_AA30_EnvironmentKeyWritingModifierVyAA11ControlSizeOGGAA07_HiddenN0VGMR, lazy protocol witness table accessor for type ModifiedContent<<<opaque return type of View.progressViewStyle<A>(_:)>>.0, _EnvironmentKeyWritingModifier<ControlSize>> and conformance <> ModifiedContent<A, B>);
    lazy protocol witness table accessor for type ModifiedContent<<<opaque return type of View.progressViewStyle<A>(_:)>>.0, _EnvironmentKeyWritingModifier<ControlSize>> and conformance <> ModifiedContent<A, B>();
    _ConditionalContent<>.init(storage:)();
  }

  else
  {
    v69 = v80;
    outlined init with copy of ModifiedContent<<<opaque return type of View.progressViewStyle<A>(_:)>>.0, _EnvironmentKeyWritingModifier<ControlSize>>(v57, v80, &_s7SwiftUI15ModifiedContentVyAA4ViewPAAE08progressE5StyleyQrqd__AA08ProgresseG0Rd__lFQOyAA0hE0VyAA05EmptyE0VAKG_AA08CircularheG0VQo_AA30_EnvironmentKeyWritingModifierVyAA11ControlSizeOGGMd);
    outlined init with copy of ModifiedContent<<<opaque return type of View.progressViewStyle<A>(_:)>>.0, _EnvironmentKeyWritingModifier<ControlSize>>(v69, v105, &_s7SwiftUI15ModifiedContentVyACyAA4ViewPAAE08progressE5StyleyQrqd__AA08ProgresseG0Rd__lFQOyAA0hE0VyAA05EmptyE0VAKG_AA08CircularheG0VQo_AA30_EnvironmentKeyWritingModifierVyAA11ControlSizeOGGAA07_HiddenN0VGMd);
    swift_storeEnumTagMultiPayload();
    lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<ModifiedContent<HStack<TupleView<(ModifiedContent<Image, AccessibilityAttachmentModifier>?, Text)>>, _EnvironmentKeyWritingModifier<Font?>>, _ForegroundStyleModifier<Color>>, _HiddenModifier> and conformance <> ModifiedContent<A, B>(&lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<<<opaque return type of View.progressViewStyle<A>(_:)>>.0, _EnvironmentKeyWritingModifier<ControlSize>>, _HiddenModifier> and conformance <> ModifiedContent<A, B>, &_s7SwiftUI15ModifiedContentVyACyAA4ViewPAAE08progressE5StyleyQrqd__AA08ProgresseG0Rd__lFQOyAA0hE0VyAA05EmptyE0VAKG_AA08CircularheG0VQo_AA30_EnvironmentKeyWritingModifierVyAA11ControlSizeOGGAA07_HiddenN0VGMd, &_s7SwiftUI15ModifiedContentVyACyAA4ViewPAAE08progressE5StyleyQrqd__AA08ProgresseG0Rd__lFQOyAA0hE0VyAA05EmptyE0VAKG_AA08CircularheG0VQo_AA30_EnvironmentKeyWritingModifierVyAA11ControlSizeOGGAA07_HiddenN0VGMR, lazy protocol witness table accessor for type ModifiedContent<<<opaque return type of View.progressViewStyle<A>(_:)>>.0, _EnvironmentKeyWritingModifier<ControlSize>> and conformance <> ModifiedContent<A, B>);
    lazy protocol witness table accessor for type ModifiedContent<<<opaque return type of View.progressViewStyle<A>(_:)>>.0, _EnvironmentKeyWritingModifier<ControlSize>> and conformance <> ModifiedContent<A, B>();
    _ConditionalContent<>.init(storage:)();
    outlined destroy of ModifiedContent<ModifiedContent<<<opaque return type of View.progressViewStyle<A>(_:)>>.0, _EnvironmentKeyWritingModifier<ControlSize>>, _HiddenModifier>(v69, &_s7SwiftUI15ModifiedContentVyACyAA4ViewPAAE08progressE5StyleyQrqd__AA08ProgresseG0Rd__lFQOyAA0hE0VyAA05EmptyE0VAKG_AA08CircularheG0VQo_AA30_EnvironmentKeyWritingModifierVyAA11ControlSizeOGGAA07_HiddenN0VGMd);
  }

  v70 = v55;
  outlined destroy of ModifiedContent<ModifiedContent<<<opaque return type of View.progressViewStyle<A>(_:)>>.0, _EnvironmentKeyWritingModifier<ControlSize>>, _HiddenModifier>(v57, &_s7SwiftUI15ModifiedContentVyAA4ViewPAAE08progressE5StyleyQrqd__AA08ProgresseG0Rd__lFQOyAA0hE0VyAA05EmptyE0VAKG_AA08CircularheG0VQo_AA30_EnvironmentKeyWritingModifierVyAA11ControlSizeOGGMd);
  v71 = v89;
  v72 = v90;
  outlined init with copy of ModifiedContent<ModifiedContent<HStack<TupleView<(ModifiedContent<Image, AccessibilityAttachmentModifier>?, Text)>>, _EnvironmentKeyWritingModifier<Font?>>, _ForegroundStyleModifier<Color>>(v89, v90, &_s7SwiftUI10_ShapeViewVyAA16RoundedRectangleVAA03AnyC5StyleVGMd);
  v73 = v109;
  v74 = v91;
  outlined init with copy of ModifiedContent<ModifiedContent<HStack<TupleView<(ModifiedContent<Image, AccessibilityAttachmentModifier>?, Text)>>, _EnvironmentKeyWritingModifier<Font?>>, _ForegroundStyleModifier<Color>>(v109, v91, &_s7SwiftUI19_ConditionalContentVyAA08ModifiedD0VyAEyAEyAA6HStackVyAA9TupleViewVyAEyAA5ImageVAA31AccessibilityAttachmentModifierVGSg_AA4TextVtGGAA022_EnvironmentKeyWritingL0VyAA4FontVSgGGAA016_ForegroundStyleL0VyAA5ColorVGGAA07_HiddenL0VGA4_GMd);
  v75 = v103;
  outlined init with copy of ModifiedContent<<<opaque return type of View.progressViewStyle<A>(_:)>>.0, _EnvironmentKeyWritingModifier<ControlSize>>(v70, v103, &_s7SwiftUI19_ConditionalContentVyAA08ModifiedD0VyAEyAA4ViewPAAE08progressF5StyleyQrqd__AA08ProgressfH0Rd__lFQOyAA0iF0VyAA05EmptyF0VAMG_AA08CircularifH0VQo_AA30_EnvironmentKeyWritingModifierVyAA11ControlSizeOGGAA07_HiddenO0VGAWGMd);
  v76 = v106;
  outlined init with copy of ModifiedContent<ModifiedContent<HStack<TupleView<(ModifiedContent<Image, AccessibilityAttachmentModifier>?, Text)>>, _EnvironmentKeyWritingModifier<Font?>>, _ForegroundStyleModifier<Color>>(v72, v106, &_s7SwiftUI10_ShapeViewVyAA16RoundedRectangleVAA03AnyC5StyleVGMd);
  v77 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI10_ShapeViewVyAA16RoundedRectangleVAA03AnyC5StyleVG_AA19_ConditionalContentVyAA08ModifiedJ0VyALyALyAA6HStackVyAA05TupleD0VyALyAA5ImageVAA31AccessibilityAttachmentModifierVGSg_AA4TextVtGGAA022_EnvironmentKeyWritingQ0VyAA4FontVSgGGAA011_ForegroundhQ0VyAA5ColorVGGAA07_HiddenQ0VGA11_GAJyALyALyAA0D0PAAE08progressdH0yQrqd__AA08ProgressdH0Rd__lFQOyAA08ProgressD0VyAA05EmptyD0VA23_G_AA016CircularProgressdH0VQo_A0_yAA11ControlSizeOGGA13_GA31_GtMd);
  outlined init with copy of ModifiedContent<ModifiedContent<HStack<TupleView<(ModifiedContent<Image, AccessibilityAttachmentModifier>?, Text)>>, _EnvironmentKeyWritingModifier<Font?>>, _ForegroundStyleModifier<Color>>(v74, v76 + *(v77 + 48), &_s7SwiftUI19_ConditionalContentVyAA08ModifiedD0VyAEyAEyAA6HStackVyAA9TupleViewVyAEyAA5ImageVAA31AccessibilityAttachmentModifierVGSg_AA4TextVtGGAA022_EnvironmentKeyWritingL0VyAA4FontVSgGGAA016_ForegroundStyleL0VyAA5ColorVGGAA07_HiddenL0VGA4_GMd);
  outlined init with copy of ModifiedContent<<<opaque return type of View.progressViewStyle<A>(_:)>>.0, _EnvironmentKeyWritingModifier<ControlSize>>(v75, v76 + *(v77 + 64), &_s7SwiftUI19_ConditionalContentVyAA08ModifiedD0VyAEyAA4ViewPAAE08progressF5StyleyQrqd__AA08ProgressfH0Rd__lFQOyAA0iF0VyAA05EmptyF0VAMG_AA08CircularifH0VQo_AA30_EnvironmentKeyWritingModifierVyAA11ControlSizeOGGAA07_HiddenO0VGAWGMd);
  outlined destroy of ModifiedContent<ModifiedContent<<<opaque return type of View.progressViewStyle<A>(_:)>>.0, _EnvironmentKeyWritingModifier<ControlSize>>, _HiddenModifier>(v70, &_s7SwiftUI19_ConditionalContentVyAA08ModifiedD0VyAEyAA4ViewPAAE08progressF5StyleyQrqd__AA08ProgressfH0Rd__lFQOyAA0iF0VyAA05EmptyF0VAMG_AA08CircularifH0VQo_AA30_EnvironmentKeyWritingModifierVyAA11ControlSizeOGGAA07_HiddenO0VGAWGMd);
  _ss19PartialRangeThroughVy7SwiftUI15DynamicTypeSizeOGWOhTm_0(v73, &_s7SwiftUI19_ConditionalContentVyAA08ModifiedD0VyAEyAEyAA6HStackVyAA9TupleViewVyAEyAA5ImageVAA31AccessibilityAttachmentModifierVGSg_AA4TextVtGGAA022_EnvironmentKeyWritingL0VyAA4FontVSgGGAA016_ForegroundStyleL0VyAA5ColorVGGAA07_HiddenL0VGA4_GMd);
  _ss19PartialRangeThroughVy7SwiftUI15DynamicTypeSizeOGWOhTm_0(v71, &_s7SwiftUI10_ShapeViewVyAA16RoundedRectangleVAA03AnyC5StyleVGMd);
  outlined destroy of ModifiedContent<ModifiedContent<<<opaque return type of View.progressViewStyle<A>(_:)>>.0, _EnvironmentKeyWritingModifier<ControlSize>>, _HiddenModifier>(v75, &_s7SwiftUI19_ConditionalContentVyAA08ModifiedD0VyAEyAA4ViewPAAE08progressF5StyleyQrqd__AA08ProgressfH0Rd__lFQOyAA0iF0VyAA05EmptyF0VAMG_AA08CircularifH0VQo_AA30_EnvironmentKeyWritingModifierVyAA11ControlSizeOGGAA07_HiddenO0VGAWGMd);
  _ss19PartialRangeThroughVy7SwiftUI15DynamicTypeSizeOGWOhTm_0(v74, &_s7SwiftUI19_ConditionalContentVyAA08ModifiedD0VyAEyAEyAA6HStackVyAA9TupleViewVyAEyAA5ImageVAA31AccessibilityAttachmentModifierVGSg_AA4TextVtGGAA022_EnvironmentKeyWritingL0VyAA4FontVSgGGAA016_ForegroundStyleL0VyAA5ColorVGGAA07_HiddenL0VGA4_GMd);
  return _ss19PartialRangeThroughVy7SwiftUI15DynamicTypeSizeOGWOhTm_0(v72, &_s7SwiftUI10_ShapeViewVyAA16RoundedRectangleVAA03AnyC5StyleVGMd);
}

uint64_t closure #1 in closure #1 in closure #2 in SessionExtraControlsButton.body.getter@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyAA5ImageVAA31AccessibilityAttachmentModifierVGMd);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = v24 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyAA5ImageVAA31AccessibilityAttachmentModifierVGSgMd);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = v24 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v13 = v24 - v12;
  if (a1[1])
  {

    v24[0] = Image.init(_internalSystemName:)();
    View.accessibilityHidden(_:)();

    outlined init with take of ModifiedContent<HStack<TupleView<(ModifiedContent<Image, AccessibilityAttachmentModifier>?, Text)>>, _EnvironmentKeyWritingModifier<Font?>>(v7, v13, &_s7SwiftUI15ModifiedContentVyAA5ImageVAA31AccessibilityAttachmentModifierVGMd);
    (*(v5 + 56))(v13, 0, 1, v4);
  }

  else
  {
    (*(v5 + 56))(v24 - v12, 1, 1, v4);
  }

  v14 = a1[3];
  v24[0] = a1[2];
  v24[1] = v14;
  lazy protocol witness table accessor for type String and conformance String();

  v15 = Text.init<A>(_:)();
  v17 = v16;
  v19 = v18;
  v21 = v20;
  outlined init with copy of ModifiedContent<ModifiedContent<HStack<TupleView<(ModifiedContent<Image, AccessibilityAttachmentModifier>?, Text)>>, _EnvironmentKeyWritingModifier<Font?>>, _ForegroundStyleModifier<Color>>(v13, v10, &_s7SwiftUI15ModifiedContentVyAA5ImageVAA31AccessibilityAttachmentModifierVGSgMd);
  outlined init with copy of ModifiedContent<ModifiedContent<HStack<TupleView<(ModifiedContent<Image, AccessibilityAttachmentModifier>?, Text)>>, _EnvironmentKeyWritingModifier<Font?>>, _ForegroundStyleModifier<Color>>(v10, a2, &_s7SwiftUI15ModifiedContentVyAA5ImageVAA31AccessibilityAttachmentModifierVGSgMd);
  v22 = a2 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyAA5ImageVAA31AccessibilityAttachmentModifierVGSg_AA4TextVtMd) + 48);
  *v22 = v15;
  *(v22 + 8) = v17;
  *(v22 + 16) = v19 & 1;
  *(v22 + 24) = v21;
  outlined copy of Text.Storage(v15, v17, v19 & 1);

  _ss19PartialRangeThroughVy7SwiftUI15DynamicTypeSizeOGWOhTm_0(v13, &_s7SwiftUI15ModifiedContentVyAA5ImageVAA31AccessibilityAttachmentModifierVGSgMd);
  outlined consume of Text.Storage(v15, v17, v19 & 1);

  return _ss19PartialRangeThroughVy7SwiftUI15DynamicTypeSizeOGWOhTm_0(v10, &_s7SwiftUI15ModifiedContentVyAA5ImageVAA31AccessibilityAttachmentModifierVGSgMd);
}

uint64_t outlined init with take of ModifiedContent<<<opaque return type of View.dynamicTypeSize<A>(_:)>>.0, _FrameLayout>(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(a3);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<HStack<TupleView<(ModifiedContent<Image, AccessibilityAttachmentModifier>?, Text)>>, _EnvironmentKeyWritingModifier<Font?>>, _ForegroundStyleModifier<Color>> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<HStack<TupleView<(ModifiedContent<Image, AccessibilityAttachmentModifier>?, Text)>>, _EnvironmentKeyWritingModifier<Font?>>, _ForegroundStyleModifier<Color>> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<HStack<TupleView<(ModifiedContent<Image, AccessibilityAttachmentModifier>?, Text)>>, _EnvironmentKeyWritingModifier<Font?>>, _ForegroundStyleModifier<Color>> and conformance <> ModifiedContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyACyAA6HStackVyAA9TupleViewVyACyAA5ImageVAA31AccessibilityAttachmentModifierVGSg_AA4TextVtGGAA022_EnvironmentKeyWritingK0VyAA4FontVSgGGAA016_ForegroundStyleK0VyAA5ColorVGGMd);
    lazy protocol witness table accessor for type ModifiedContent<HStack<TupleView<(ModifiedContent<Image, AccessibilityAttachmentModifier>?, Text)>>, _EnvironmentKeyWritingModifier<Font?>> and conformance <> ModifiedContent<A, B>();
    lazy protocol witness table accessor for type ZStack<TupleView<(_ShapeView<RoundedRectangle, AnyShapeStyle>, _ConditionalContent<ModifiedContent<ModifiedContent<ModifiedContent<HStack<TupleView<(ModifiedContent<Image, AccessibilityAttachmentModifier>?, Text)>>, _EnvironmentKeyWritingModifier<Font?>>, _ForegroundStyleModifier<Color>>, _HiddenModifier>, ModifiedContent<ModifiedContent<HStack<TupleView<(ModifiedContent<Image, AccessibilityAttachmentModifier>?, Text)>>, _EnvironmentKeyWritingModifier<Font?>>, _ForegroundStyleModifier<Color>>>, _ConditionalContent<ModifiedContent<ModifiedContent<<<opaque return type of View.progressViewStyle<A>(_:)>>.0, _EnvironmentKeyWritingModifier<ControlSize>>, _HiddenModifier>, ModifiedContent<<<opaque return type of View.progressViewStyle<A>(_:)>>.0, _EnvironmentKeyWritingModifier<ControlSize>>>)>> and conformance ZStack<A>(&lazy protocol witness table cache variable for type _ForegroundStyleModifier<Color> and conformance _ForegroundStyleModifier<A>, &_s7SwiftUI24_ForegroundStyleModifierVyAA5ColorVGMd);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<HStack<TupleView<(ModifiedContent<Image, AccessibilityAttachmentModifier>?, Text)>>, _EnvironmentKeyWritingModifier<Font?>>, _ForegroundStyleModifier<Color>> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<HStack<TupleView<(ModifiedContent<Image, AccessibilityAttachmentModifier>?, Text)>>, _EnvironmentKeyWritingModifier<Font?>> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<HStack<TupleView<(ModifiedContent<Image, AccessibilityAttachmentModifier>?, Text)>>, _EnvironmentKeyWritingModifier<Font?>> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<HStack<TupleView<(ModifiedContent<Image, AccessibilityAttachmentModifier>?, Text)>>, _EnvironmentKeyWritingModifier<Font?>> and conformance <> ModifiedContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyAA6HStackVyAA9TupleViewVyACyAA5ImageVAA31AccessibilityAttachmentModifierVGSg_AA4TextVtGGAA022_EnvironmentKeyWritingK0VyAA4FontVSgGGMd);
    lazy protocol witness table accessor for type ZStack<TupleView<(_ShapeView<RoundedRectangle, AnyShapeStyle>, _ConditionalContent<ModifiedContent<ModifiedContent<ModifiedContent<HStack<TupleView<(ModifiedContent<Image, AccessibilityAttachmentModifier>?, Text)>>, _EnvironmentKeyWritingModifier<Font?>>, _ForegroundStyleModifier<Color>>, _HiddenModifier>, ModifiedContent<ModifiedContent<HStack<TupleView<(ModifiedContent<Image, AccessibilityAttachmentModifier>?, Text)>>, _EnvironmentKeyWritingModifier<Font?>>, _ForegroundStyleModifier<Color>>>, _ConditionalContent<ModifiedContent<ModifiedContent<<<opaque return type of View.progressViewStyle<A>(_:)>>.0, _EnvironmentKeyWritingModifier<ControlSize>>, _HiddenModifier>, ModifiedContent<<<opaque return type of View.progressViewStyle<A>(_:)>>.0, _EnvironmentKeyWritingModifier<ControlSize>>>)>> and conformance ZStack<A>(&lazy protocol witness table cache variable for type HStack<TupleView<(ModifiedContent<Image, AccessibilityAttachmentModifier>?, Text)>> and conformance HStack<A>, &_s7SwiftUI6HStackVyAA9TupleViewVyAA15ModifiedContentVyAA5ImageVAA31AccessibilityAttachmentModifierVGSg_AA4TextVtGGMd);
    lazy protocol witness table accessor for type ZStack<TupleView<(_ShapeView<RoundedRectangle, AnyShapeStyle>, _ConditionalContent<ModifiedContent<ModifiedContent<ModifiedContent<HStack<TupleView<(ModifiedContent<Image, AccessibilityAttachmentModifier>?, Text)>>, _EnvironmentKeyWritingModifier<Font?>>, _ForegroundStyleModifier<Color>>, _HiddenModifier>, ModifiedContent<ModifiedContent<HStack<TupleView<(ModifiedContent<Image, AccessibilityAttachmentModifier>?, Text)>>, _EnvironmentKeyWritingModifier<Font?>>, _ForegroundStyleModifier<Color>>>, _ConditionalContent<ModifiedContent<ModifiedContent<<<opaque return type of View.progressViewStyle<A>(_:)>>.0, _EnvironmentKeyWritingModifier<ControlSize>>, _HiddenModifier>, ModifiedContent<<<opaque return type of View.progressViewStyle<A>(_:)>>.0, _EnvironmentKeyWritingModifier<ControlSize>>>)>> and conformance ZStack<A>(&lazy protocol witness table cache variable for type _EnvironmentKeyWritingModifier<Font?> and conformance _EnvironmentKeyWritingModifier<A>, &_s7SwiftUI30_EnvironmentKeyWritingModifierVyAA4FontVSgGMd);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<HStack<TupleView<(ModifiedContent<Image, AccessibilityAttachmentModifier>?, Text)>>, _EnvironmentKeyWritingModifier<Font?>> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

uint64_t _s7SwiftUI15DynamicTypeSizeOACSQAAWlTm_0(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<ModifiedContent<HStack<TupleView<(ModifiedContent<Image, AccessibilityAttachmentModifier>?, Text)>>, _EnvironmentKeyWritingModifier<Font?>>, _ForegroundStyleModifier<Color>>, _HiddenModifier> and conformance <> ModifiedContent<A, B>(unint64_t *a1, uint64_t *a2, uint64_t a3, void (*a4)(void))
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2);
    a4();
    lazy protocol witness table accessor for type _HiddenModifier and conformance _HiddenModifier();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<<<opaque return type of View.progressViewStyle<A>(_:)>>.0, _EnvironmentKeyWritingModifier<ControlSize>> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<<<opaque return type of View.progressViewStyle<A>(_:)>>.0, _EnvironmentKeyWritingModifier<ControlSize>> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<<<opaque return type of View.progressViewStyle<A>(_:)>>.0, _EnvironmentKeyWritingModifier<ControlSize>> and conformance <> ModifiedContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyAA4ViewPAAE08progressE5StyleyQrqd__AA08ProgresseG0Rd__lFQOyAA0hE0VyAA05EmptyE0VAKG_AA08CircularheG0VQo_AA30_EnvironmentKeyWritingModifierVyAA11ControlSizeOGGMd);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI12ProgressViewVyAA05EmptyD0VAEGMd);
    type metadata accessor for CircularProgressViewStyle();
    lazy protocol witness table accessor for type ZStack<TupleView<(_ShapeView<RoundedRectangle, AnyShapeStyle>, _ConditionalContent<ModifiedContent<ModifiedContent<ModifiedContent<HStack<TupleView<(ModifiedContent<Image, AccessibilityAttachmentModifier>?, Text)>>, _EnvironmentKeyWritingModifier<Font?>>, _ForegroundStyleModifier<Color>>, _HiddenModifier>, ModifiedContent<ModifiedContent<HStack<TupleView<(ModifiedContent<Image, AccessibilityAttachmentModifier>?, Text)>>, _EnvironmentKeyWritingModifier<Font?>>, _ForegroundStyleModifier<Color>>>, _ConditionalContent<ModifiedContent<ModifiedContent<<<opaque return type of View.progressViewStyle<A>(_:)>>.0, _EnvironmentKeyWritingModifier<ControlSize>>, _HiddenModifier>, ModifiedContent<<<opaque return type of View.progressViewStyle<A>(_:)>>.0, _EnvironmentKeyWritingModifier<ControlSize>>>)>> and conformance ZStack<A>(&lazy protocol witness table cache variable for type ProgressView<EmptyView, EmptyView> and conformance ProgressView<A, B>, &_s7SwiftUI12ProgressViewVyAA05EmptyD0VAEGMd);
    _s7SwiftUI15DynamicTypeSizeOACSQAAWlTm_0(&lazy protocol witness table cache variable for type CircularProgressViewStyle and conformance CircularProgressViewStyle, MEMORY[0x277CDE330]);
    swift_getOpaqueTypeConformance2();
    lazy protocol witness table accessor for type ZStack<TupleView<(_ShapeView<RoundedRectangle, AnyShapeStyle>, _ConditionalContent<ModifiedContent<ModifiedContent<ModifiedContent<HStack<TupleView<(ModifiedContent<Image, AccessibilityAttachmentModifier>?, Text)>>, _EnvironmentKeyWritingModifier<Font?>>, _ForegroundStyleModifier<Color>>, _HiddenModifier>, ModifiedContent<ModifiedContent<HStack<TupleView<(ModifiedContent<Image, AccessibilityAttachmentModifier>?, Text)>>, _EnvironmentKeyWritingModifier<Font?>>, _ForegroundStyleModifier<Color>>>, _ConditionalContent<ModifiedContent<ModifiedContent<<<opaque return type of View.progressViewStyle<A>(_:)>>.0, _EnvironmentKeyWritingModifier<ControlSize>>, _HiddenModifier>, ModifiedContent<<<opaque return type of View.progressViewStyle<A>(_:)>>.0, _EnvironmentKeyWritingModifier<ControlSize>>>)>> and conformance ZStack<A>(&lazy protocol witness table cache variable for type _EnvironmentKeyWritingModifier<ControlSize> and conformance _EnvironmentKeyWritingModifier<A>, &_s7SwiftUI30_EnvironmentKeyWritingModifierVyAA11ControlSizeOGMd);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<<<opaque return type of View.progressViewStyle<A>(_:)>>.0, _EnvironmentKeyWritingModifier<ControlSize>> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

uint64_t outlined init with copy of ModifiedContent<<<opaque return type of View.progressViewStyle<A>(_:)>>.0, _EnvironmentKeyWritingModifier<ControlSize>>(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(a3);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t outlined destroy of ModifiedContent<ModifiedContent<<<opaque return type of View.progressViewStyle<A>(_:)>>.0, _EnvironmentKeyWritingModifier<ControlSize>>, _HiddenModifier>(uint64_t a1, uint64_t *a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(a2);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t outlined init with copy of ModifiedContent<ModifiedContent<HStack<TupleView<(ModifiedContent<Image, AccessibilityAttachmentModifier>?, Text)>>, _EnvironmentKeyWritingModifier<Font?>>, _ForegroundStyleModifier<Color>>(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(a3);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t _ss19PartialRangeThroughVy7SwiftUI15DynamicTypeSizeOGWOhTm_0(uint64_t a1, uint64_t *a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(a2);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t outlined init with take of ModifiedContent<HStack<TupleView<(ModifiedContent<Image, AccessibilityAttachmentModifier>?, Text)>>, _EnvironmentKeyWritingModifier<Font?>>(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(a3);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<<<opaque return type of View.dynamicTypeSize<A>(_:)>>.0, _FrameLayout>, _ForegroundStyleModifier<Color>>, _EnvironmentKeyTransformModifier<Bool>>, _ContentShapeKindModifier<RoundedRectangle>> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<<<opaque return type of View.dynamicTypeSize<A>(_:)>>.0, _FrameLayout>, _ForegroundStyleModifier<Color>>, _EnvironmentKeyTransformModifier<Bool>>, _ContentShapeKindModifier<RoundedRectangle>> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<<<opaque return type of View.dynamicTypeSize<A>(_:)>>.0, _FrameLayout>, _ForegroundStyleModifier<Color>>, _EnvironmentKeyTransformModifier<Bool>>, _ContentShapeKindModifier<RoundedRectangle>> and conformance <> ModifiedContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyACyACyACyAA4ViewPAAE15dynamicTypeSizeyQrqd__SXRd__AA07DynamicgH0O5BoundRtd__lFQOyAA6ButtonVyAA6ZStackVyAA05TupleE0VyAA06_ShapeE0VyAA16RoundedRectangleVAA03AnyN5StyleVG_AA012_ConditionalD0VyACyACyACyAA6HStackVyAPyACyAA5ImageVAA31AccessibilityAttachmentModifierVGSg_AA4TextVtGGAA022_EnvironmentKeyWritingX0VyAA4FontVSgGGAA011_ForegroundrX0VyAA5ColorVGGAA07_HiddenX0VGA22_GAYyACyACyAeAE08progresseR0yQrqd__AA08ProgresseR0Rd__lFQOyAA08ProgressE0VyAA05EmptyE0VA32_G_AA016CircularProgresseR0VQo_A11_yAA07ControlH0OGGA24_GA40_GtGGG_s19PartialRangeThroughVyAHGQo_AA12_FrameLayoutVGA21_GAA01_z12KeyTransformX0VySbGGAA01_dn4KindX0VyATGGMd);
    lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<ModifiedContent<<<opaque return type of View.dynamicTypeSize<A>(_:)>>.0, _FrameLayout>, _ForegroundStyleModifier<Color>>, _EnvironmentKeyTransformModifier<Bool>> and conformance <> ModifiedContent<A, B>();
    lazy protocol witness table accessor for type ZStack<TupleView<(_ShapeView<RoundedRectangle, AnyShapeStyle>, _ConditionalContent<ModifiedContent<ModifiedContent<ModifiedContent<HStack<TupleView<(ModifiedContent<Image, AccessibilityAttachmentModifier>?, Text)>>, _EnvironmentKeyWritingModifier<Font?>>, _ForegroundStyleModifier<Color>>, _HiddenModifier>, ModifiedContent<ModifiedContent<HStack<TupleView<(ModifiedContent<Image, AccessibilityAttachmentModifier>?, Text)>>, _EnvironmentKeyWritingModifier<Font?>>, _ForegroundStyleModifier<Color>>>, _ConditionalContent<ModifiedContent<ModifiedContent<<<opaque return type of View.progressViewStyle<A>(_:)>>.0, _EnvironmentKeyWritingModifier<ControlSize>>, _HiddenModifier>, ModifiedContent<<<opaque return type of View.progressViewStyle<A>(_:)>>.0, _EnvironmentKeyWritingModifier<ControlSize>>>)>> and conformance ZStack<A>(&lazy protocol witness table cache variable for type _ContentShapeKindModifier<RoundedRectangle> and conformance _ContentShapeKindModifier<A>, &_s7SwiftUI25_ContentShapeKindModifierVyAA16RoundedRectangleVGMd);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<<<opaque return type of View.dynamicTypeSize<A>(_:)>>.0, _FrameLayout>, _ForegroundStyleModifier<Color>>, _EnvironmentKeyTransformModifier<Bool>>, _ContentShapeKindModifier<RoundedRectangle>> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<ModifiedContent<<<opaque return type of View.dynamicTypeSize<A>(_:)>>.0, _FrameLayout>, _ForegroundStyleModifier<Color>>, _EnvironmentKeyTransformModifier<Bool>> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<<<opaque return type of View.dynamicTypeSize<A>(_:)>>.0, _FrameLayout>, _ForegroundStyleModifier<Color>>, _EnvironmentKeyTransformModifier<Bool>> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<<<opaque return type of View.dynamicTypeSize<A>(_:)>>.0, _FrameLayout>, _ForegroundStyleModifier<Color>>, _EnvironmentKeyTransformModifier<Bool>> and conformance <> ModifiedContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyACyACyAA4ViewPAAE15dynamicTypeSizeyQrqd__SXRd__AA07DynamicgH0O5BoundRtd__lFQOyAA6ButtonVyAA6ZStackVyAA05TupleE0VyAA06_ShapeE0VyAA16RoundedRectangleVAA03AnyN5StyleVG_AA012_ConditionalD0VyACyACyACyAA6HStackVyAPyACyAA5ImageVAA31AccessibilityAttachmentModifierVGSg_AA4TextVtGGAA022_EnvironmentKeyWritingX0VyAA4FontVSgGGAA011_ForegroundrX0VyAA5ColorVGGAA07_HiddenX0VGA22_GAYyACyACyAeAE08progresseR0yQrqd__AA08ProgresseR0Rd__lFQOyAA08ProgressE0VyAA05EmptyE0VA32_G_AA016CircularProgresseR0VQo_A11_yAA07ControlH0OGGA24_GA40_GtGGG_s19PartialRangeThroughVyAHGQo_AA12_FrameLayoutVGA21_GAA01_z12KeyTransformX0VySbGGMd);
    lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<<<opaque return type of View.dynamicTypeSize<A>(_:)>>.0, _FrameLayout>, _ForegroundStyleModifier<Color>> and conformance <> ModifiedContent<A, B>();
    lazy protocol witness table accessor for type ZStack<TupleView<(_ShapeView<RoundedRectangle, AnyShapeStyle>, _ConditionalContent<ModifiedContent<ModifiedContent<ModifiedContent<HStack<TupleView<(ModifiedContent<Image, AccessibilityAttachmentModifier>?, Text)>>, _EnvironmentKeyWritingModifier<Font?>>, _ForegroundStyleModifier<Color>>, _HiddenModifier>, ModifiedContent<ModifiedContent<HStack<TupleView<(ModifiedContent<Image, AccessibilityAttachmentModifier>?, Text)>>, _EnvironmentKeyWritingModifier<Font?>>, _ForegroundStyleModifier<Color>>>, _ConditionalContent<ModifiedContent<ModifiedContent<<<opaque return type of View.progressViewStyle<A>(_:)>>.0, _EnvironmentKeyWritingModifier<ControlSize>>, _HiddenModifier>, ModifiedContent<<<opaque return type of View.progressViewStyle<A>(_:)>>.0, _EnvironmentKeyWritingModifier<ControlSize>>>)>> and conformance ZStack<A>(&lazy protocol witness table cache variable for type _EnvironmentKeyTransformModifier<Bool> and conformance _EnvironmentKeyTransformModifier<A>, &_s7SwiftUI32_EnvironmentKeyTransformModifierVySbGMd);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<<<opaque return type of View.dynamicTypeSize<A>(_:)>>.0, _FrameLayout>, _ForegroundStyleModifier<Color>>, _EnvironmentKeyTransformModifier<Bool>> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<<<opaque return type of View.dynamicTypeSize<A>(_:)>>.0, _FrameLayout>, _ForegroundStyleModifier<Color>> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<<<opaque return type of View.dynamicTypeSize<A>(_:)>>.0, _FrameLayout>, _ForegroundStyleModifier<Color>> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<<<opaque return type of View.dynamicTypeSize<A>(_:)>>.0, _FrameLayout>, _ForegroundStyleModifier<Color>> and conformance <> ModifiedContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyACyAA4ViewPAAE15dynamicTypeSizeyQrqd__SXRd__AA07DynamicgH0O5BoundRtd__lFQOyAA6ButtonVyAA6ZStackVyAA05TupleE0VyAA06_ShapeE0VyAA16RoundedRectangleVAA03AnyN5StyleVG_AA012_ConditionalD0VyACyACyACyAA6HStackVyAPyACyAA5ImageVAA31AccessibilityAttachmentModifierVGSg_AA4TextVtGGAA022_EnvironmentKeyWritingX0VyAA4FontVSgGGAA011_ForegroundrX0VyAA5ColorVGGAA07_HiddenX0VGA22_GAYyACyACyAeAE08progresseR0yQrqd__AA08ProgresseR0Rd__lFQOyAA08ProgressE0VyAA05EmptyE0VA32_G_AA016CircularProgresseR0VQo_A11_yAA07ControlH0OGGA24_GA40_GtGGG_s19PartialRangeThroughVyAHGQo_AA12_FrameLayoutVGA21_GMd);
    lazy protocol witness table accessor for type ModifiedContent<<<opaque return type of View.dynamicTypeSize<A>(_:)>>.0, _FrameLayout> and conformance <> ModifiedContent<A, B>();
    lazy protocol witness table accessor for type ZStack<TupleView<(_ShapeView<RoundedRectangle, AnyShapeStyle>, _ConditionalContent<ModifiedContent<ModifiedContent<ModifiedContent<HStack<TupleView<(ModifiedContent<Image, AccessibilityAttachmentModifier>?, Text)>>, _EnvironmentKeyWritingModifier<Font?>>, _ForegroundStyleModifier<Color>>, _HiddenModifier>, ModifiedContent<ModifiedContent<HStack<TupleView<(ModifiedContent<Image, AccessibilityAttachmentModifier>?, Text)>>, _EnvironmentKeyWritingModifier<Font?>>, _ForegroundStyleModifier<Color>>>, _ConditionalContent<ModifiedContent<ModifiedContent<<<opaque return type of View.progressViewStyle<A>(_:)>>.0, _EnvironmentKeyWritingModifier<ControlSize>>, _HiddenModifier>, ModifiedContent<<<opaque return type of View.progressViewStyle<A>(_:)>>.0, _EnvironmentKeyWritingModifier<ControlSize>>>)>> and conformance ZStack<A>(&lazy protocol witness table cache variable for type _ForegroundStyleModifier<Color> and conformance _ForegroundStyleModifier<A>, &_s7SwiftUI24_ForegroundStyleModifierVyAA5ColorVGMd);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<<<opaque return type of View.dynamicTypeSize<A>(_:)>>.0, _FrameLayout>, _ForegroundStyleModifier<Color>> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<<<opaque return type of View.dynamicTypeSize<A>(_:)>>.0, _FrameLayout> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<<<opaque return type of View.dynamicTypeSize<A>(_:)>>.0, _FrameLayout> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<<<opaque return type of View.dynamicTypeSize<A>(_:)>>.0, _FrameLayout> and conformance <> ModifiedContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyAA4ViewPAAE15dynamicTypeSizeyQrqd__SXRd__AA07DynamicgH0O5BoundRtd__lFQOyAA6ButtonVyAA6ZStackVyAA05TupleE0VyAA06_ShapeE0VyAA16RoundedRectangleVAA03AnyN5StyleVG_AA012_ConditionalD0VyACyACyACyAA6HStackVyAPyACyAA5ImageVAA31AccessibilityAttachmentModifierVGSg_AA4TextVtGGAA022_EnvironmentKeyWritingX0VyAA4FontVSgGGAA011_ForegroundrX0VyAA5ColorVGGAA07_HiddenX0VGA22_GAYyACyACyAeAE08progresseR0yQrqd__AA08ProgresseR0Rd__lFQOyAA08ProgressE0VyAA05EmptyE0VA32_G_AA016CircularProgresseR0VQo_A11_yAA07ControlH0OGGA24_GA40_GtGGG_s19PartialRangeThroughVyAHGQo_AA12_FrameLayoutVGMd);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI6ButtonVyAA6ZStackVyAA9TupleViewVyAA06_ShapeF0VyAA16RoundedRectangleVAA03AnyG5StyleVG_AA19_ConditionalContentVyAA08ModifiedM0VyARyARyAA6HStackVyAGyARyAA5ImageVAA31AccessibilityAttachmentModifierVGSg_AA4TextVtGGAA022_EnvironmentKeyWritingS0VyAA4FontVSgGGAA011_ForegroundkS0VyAA5ColorVGGAA07_HiddenS0VGA15_GAPyARyARyAA0F0PAAE08progressfK0yQrqd__AA08ProgressfK0Rd__lFQOyAA08ProgressF0VyAA05EmptyF0VA27_G_AA016CircularProgressfK0VQo_A4_yAA11ControlSizeOGGA17_GA35_GtGGGMd);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_ss19PartialRangeThroughVy7SwiftUI15DynamicTypeSizeOGMd);
    lazy protocol witness table accessor for type ZStack<TupleView<(_ShapeView<RoundedRectangle, AnyShapeStyle>, _ConditionalContent<ModifiedContent<ModifiedContent<ModifiedContent<HStack<TupleView<(ModifiedContent<Image, AccessibilityAttachmentModifier>?, Text)>>, _EnvironmentKeyWritingModifier<Font?>>, _ForegroundStyleModifier<Color>>, _HiddenModifier>, ModifiedContent<ModifiedContent<HStack<TupleView<(ModifiedContent<Image, AccessibilityAttachmentModifier>?, Text)>>, _EnvironmentKeyWritingModifier<Font?>>, _ForegroundStyleModifier<Color>>>, _ConditionalContent<ModifiedContent<ModifiedContent<<<opaque return type of View.progressViewStyle<A>(_:)>>.0, _EnvironmentKeyWritingModifier<ControlSize>>, _HiddenModifier>, ModifiedContent<<<opaque return type of View.progressViewStyle<A>(_:)>>.0, _EnvironmentKeyWritingModifier<ControlSize>>>)>> and conformance ZStack<A>(&lazy protocol witness table cache variable for type Button<ZStack<TupleView<(_ShapeView<RoundedRectangle, AnyShapeStyle>, _ConditionalContent<ModifiedContent<ModifiedContent<ModifiedContent<HStack<TupleView<(ModifiedContent<Image, AccessibilityAttachmentModifier>?, Text)>>, _EnvironmentKeyWritingModifier<Font?>>, _ForegroundStyleModifier<Color>>, _HiddenModifier>, ModifiedContent<ModifiedContent<HStack<TupleView<(ModifiedContent<Image, AccessibilityAttachmentModifier>?, Text)>>, _EnvironmentKeyWritingModifier<Font?>>, _ForegroundStyleModifier<Color>>>, _ConditionalContent<ModifiedContent<ModifiedContent<<<opaque return type of View.progressViewStyle<A>(_:)>>.0, _EnvironmentKeyWritingModifier<ControlSize>>, _HiddenModifier>, ModifiedContent<<<opaque return type of View.progressViewStyle<A>(_:)>>.0, _EnvironmentKeyWritingModifier<ControlSize>>>)>>> and conformance Button<A>, &_s7SwiftUI6ButtonVyAA6ZStackVyAA9TupleViewVyAA06_ShapeF0VyAA16RoundedRectangleVAA03AnyG5StyleVG_AA19_ConditionalContentVyAA08ModifiedM0VyARyARyAA6HStackVyAGyARyAA5ImageVAA31AccessibilityAttachmentModifierVGSg_AA4TextVtGGAA022_EnvironmentKeyWritingS0VyAA4FontVSgGGAA011_ForegroundkS0VyAA5ColorVGGAA07_HiddenS0VGA15_GAPyARyARyAA0F0PAAE08progressfK0yQrqd__AA08ProgressfK0Rd__lFQOyAA08ProgressF0VyAA05EmptyF0VA27_G_AA016CircularProgressfK0VQo_A4_yAA11ControlSizeOGGA17_GA35_GtGGGMd);
    lazy protocol witness table accessor for type ZStack<TupleView<(_ShapeView<RoundedRectangle, AnyShapeStyle>, _ConditionalContent<ModifiedContent<ModifiedContent<ModifiedContent<HStack<TupleView<(ModifiedContent<Image, AccessibilityAttachmentModifier>?, Text)>>, _EnvironmentKeyWritingModifier<Font?>>, _ForegroundStyleModifier<Color>>, _HiddenModifier>, ModifiedContent<ModifiedContent<HStack<TupleView<(ModifiedContent<Image, AccessibilityAttachmentModifier>?, Text)>>, _EnvironmentKeyWritingModifier<Font?>>, _ForegroundStyleModifier<Color>>>, _ConditionalContent<ModifiedContent<ModifiedContent<<<opaque return type of View.progressViewStyle<A>(_:)>>.0, _EnvironmentKeyWritingModifier<ControlSize>>, _HiddenModifier>, ModifiedContent<<<opaque return type of View.progressViewStyle<A>(_:)>>.0, _EnvironmentKeyWritingModifier<ControlSize>>>)>> and conformance ZStack<A>(&lazy protocol witness table cache variable for type PartialRangeThrough<DynamicTypeSize> and conformance PartialRangeThrough<A>, &_ss19PartialRangeThroughVy7SwiftUI15DynamicTypeSizeOGMd);
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<<<opaque return type of View.dynamicTypeSize<A>(_:)>>.0, _FrameLayout> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

uint64_t lazy protocol witness table accessor for type ZStack<TupleView<(_ShapeView<RoundedRectangle, AnyShapeStyle>, _ConditionalContent<ModifiedContent<ModifiedContent<ModifiedContent<HStack<TupleView<(ModifiedContent<Image, AccessibilityAttachmentModifier>?, Text)>>, _EnvironmentKeyWritingModifier<Font?>>, _ForegroundStyleModifier<Color>>, _HiddenModifier>, ModifiedContent<ModifiedContent<HStack<TupleView<(ModifiedContent<Image, AccessibilityAttachmentModifier>?, Text)>>, _EnvironmentKeyWritingModifier<Font?>>, _ForegroundStyleModifier<Color>>>, _ConditionalContent<ModifiedContent<ModifiedContent<<<opaque return type of View.progressViewStyle<A>(_:)>>.0, _EnvironmentKeyWritingModifier<ControlSize>>, _HiddenModifier>, ModifiedContent<<<opaque return type of View.progressViewStyle<A>(_:)>>.0, _EnvironmentKeyWritingModifier<ControlSize>>>)>> and conformance ZStack<A>(unint64_t *a1, uint64_t *a2)
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

uint64_t InSessionView.init(lowPowerModeMonitor:metricsPublisher:notificationCenter:formattingManager:sessionControls:sessionViewModel:sheetHeights:)@<X0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X2>, void *a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t *a7@<X6>, uint64_t *a8@<X8>)
{
  v44 = a6;
  v15 = type metadata accessor for PresentationDetent();
  v42 = *(v15 - 8);
  v43 = v15;
  MEMORY[0x28223BE20](v15);
  v17 = &v38 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v41 = &v38 - v19;
  v20 = *a7;
  v21 = a7[1];
  type metadata accessor for SessionControlsState();
  v22 = swift_allocObject();
  *(v22 + 16) = 0;
  ObservationRegistrar.init()();
  v45 = v22;
  State.init(wrappedValue:)();
  v23 = v47;
  a8[14] = v46;
  a8[15] = v23;
  v24 = type metadata accessor for InSessionView();
  v25 = v24[13];
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  *(a8 + v25) = static MetricPlatterAnalytics.shared;
  v26 = a8 + v24[17];
  LOBYTE(v45) = 0;

  State.init(wrappedValue:)();
  v27 = v47;
  *v26 = v46;
  *(v26 + 1) = v27;
  type metadata accessor for LowPowerModeMonitor();
  _s11WorkoutCore19LowPowerModeMonitorCAC7Combine16ObservableObjectAAWlTm_2(&lazy protocol witness table cache variable for type LowPowerModeMonitor and conformance LowPowerModeMonitor, MEMORY[0x277D7E2F8]);

  *a8 = ObservedObject.init(wrappedValue:)();
  a8[1] = v28;
  a8[2] = a2;
  v29 = a2;
  MetricsPublisher.workoutStatePublisher.getter();
  type metadata accessor for WorkoutStatePublisher();
  _s11WorkoutCore19LowPowerModeMonitorCAC7Combine16ObservableObjectAAWlTm_2(&lazy protocol witness table cache variable for type WorkoutStatePublisher and conformance WorkoutStatePublisher, MEMORY[0x277D7DA88]);
  a8[3] = ObservedObject.init(wrappedValue:)();
  a8[4] = v30;
  MetricsPublisher.workoutBuddyStatePublisher.getter();
  type metadata accessor for WorkoutBuddyStatePublisher();
  _s11WorkoutCore19LowPowerModeMonitorCAC7Combine16ObservableObjectAAWlTm_2(&lazy protocol witness table cache variable for type WorkoutBuddyStatePublisher and conformance WorkoutBuddyStatePublisher, MEMORY[0x277D7DBD0]);
  a8[5] = ObservedObject.init(wrappedValue:)();
  a8[6] = v31;
  a8[7] = a3;
  a8[8] = a4;
  outlined init with copy of SessionControls(a5, (a8 + 9));
  v40 = a5;
  type metadata accessor for SessionViewModel();
  _s11WorkoutCore19LowPowerModeMonitorCAC7Combine16ObservableObjectAAWlTm_2(&lazy protocol witness table cache variable for type SessionViewModel and conformance SessionViewModel, type metadata accessor for SessionViewModel);

  v39 = a4;

  Bindable<A>.init(wrappedValue:)();
  type metadata accessor for LowPowerViewModel();
  v32 = swift_allocObject();
  *(v32 + 16) = 0;
  *(v32 + 32) = 0;
  *(v32 + 40) = 0;
  *(v32 + 48) = 1;

  ObservationRegistrar.init()();
  *(v32 + 24) = a1;
  *(a8 + v24[14]) = v32;
  v33 = (a8 + v24[15]);
  *v33 = v20;
  v33[1] = v21;
  v34 = v41;
  static PresentationDetent.height(_:)();
  v36 = v42;
  v35 = v43;
  (*(v42 + 16))(v17, v34, v43);
  State.init(wrappedValue:)();

  __swift_destroy_boxed_opaque_existential_1(v40);
  return (*(v36 + 8))(v34, v35);
}

uint64_t InSessionView.body.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v54 = a1;
  v3 = type metadata accessor for DynamicTypeSize();
  v52 = *(v3 - 8);
  v53 = v3;
  MEMORY[0x28223BE20](v3);
  v50 = &v46 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for InSessionView();
  v48 = *(v5 - 8);
  v6 = *(v48 + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI6ZStackVyAA9TupleViewVyAA0E0PAAE5sheet11isPresented9onDismiss7contentQrAA7BindingVySbG_yycSgqd__yctAaFRd__lFQOyAA15ModifiedContentVyAQyAQyAQyAQy07WorkoutB0014MetricPlattersE0VAA24_BackgroundStyleModifierVyAA5ColorVGGAA16_FlexFrameLayoutVGAA14_OpacityEffectVGAA08_PaddingX0VGAA017_AppearanceActionT0VG_AgAE0I6Change2of7initial_Qrqd___Sbyqd___qd__tctSQRd__lFQOyAgAE5alert_AI7actions7messageQrqd___ANqd_0_yXEqd_1_yXEtSyRd__AaFRd_0_AaFRd_1_r1_lFQOyAgAEA14__AIA15_A16_Qrqd___ANqd_0_yXEqd_1_yXEtSyRd__AaFRd_0_AaFRd_1_r1_lFQOyAgAEA11_A12_A13__Qrqd___Sbyqd___qd__tctSQRd__lFQOyAgAEA11_A12_A13__Qrqd___Sbyqd___qd__tctSQRd__lFQOyAgAEA11_A12_A13__Qrqd___SbyyctSQRd__lFQOyAgAEA11_A12_A13__Qrqd___SbyyctSQRd__lFQOyAgAEA11_A12_A13__Qrqd___SbyyctSQRd__lFQOyAgAE19presentationDetents_9selectionQrShyAA18PresentationDetentVG_AMyA20_GtFQOyAQyAR20SessionControlsSheetVA0_G_Qo__A20_Qo__SbQo__SbQo__0O4Core0O19BuddyStatePublisherC5StateOQo__So21NLWorkoutPausedReasonVQo__SSAQyAA6ButtonVyAA4TextVGAA023AccessibilityAttachmentT0VGA42_Qo__SSAEyA46__A46_tGA42_Qo__SbQo_Qo__AR24LowPowerInSessionOverlayVSgtGGMd);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v46 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyAA6ZStackVyAA9TupleViewVyAA0G0PAAE5sheet11isPresented9onDismiss7contentQrAA7BindingVySbG_yycSgqd__yctAaHRd__lFQOyACyACyACyACyACy07WorkoutB0014MetricPlattersG0VAA24_BackgroundStyleModifierVyAA5ColorVGGAA16_FlexFrameLayoutVGAA14_OpacityEffectVGAA08_PaddingX0VGAA017_AppearanceActionT0VG_AiAE0K6Change2of7initial_Qrqd___Sbyqd___qd__tctSQRd__lFQOyAiAE5alert_AK7actions7messageQrqd___APqd_0_yXEqd_1_yXEtSyRd__AaHRd_0_AaHRd_1_r1_lFQOyAiAEA14__AKA15_A16_Qrqd___APqd_0_yXEqd_1_yXEtSyRd__AaHRd_0_AaHRd_1_r1_lFQOyAiAEA11_A12_A13__Qrqd___Sbyqd___qd__tctSQRd__lFQOyAiAEA11_A12_A13__Qrqd___Sbyqd___qd__tctSQRd__lFQOyAiAEA11_A12_A13__Qrqd___SbyyctSQRd__lFQOyAiAEA11_A12_A13__Qrqd___SbyyctSQRd__lFQOyAiAEA11_A12_A13__Qrqd___SbyyctSQRd__lFQOyAiAE19presentationDetents_9selectionQrShyAA18PresentationDetentVG_AOyA20_GtFQOyACyAR20SessionControlsSheetVA0_G_Qo__A20_Qo__SbQo__SbQo__0O4Core0O19BuddyStatePublisherC5StateOQo__So21NLWorkoutPausedReasonVQo__SSACyAA6ButtonVyAA4TextVGAA023AccessibilityAttachmentT0VGA42_Qo__SSAGyA46__A46_tGA42_Qo__SbQo_Qo__AR24LowPowerInSessionOverlayVSgtGGA0_GMd);
  v11 = v10 - 8;
  MEMORY[0x28223BE20](v10);
  v13 = &v46 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyACyAA6ZStackVyAA9TupleViewVyAA0G0PAAE5sheet11isPresented9onDismiss7contentQrAA7BindingVySbG_yycSgqd__yctAaHRd__lFQOyACyACyACyACyACy07WorkoutB0014MetricPlattersG0VAA24_BackgroundStyleModifierVyAA5ColorVGGAA16_FlexFrameLayoutVGAA14_OpacityEffectVGAA08_PaddingX0VGAA017_AppearanceActionT0VG_AiAE0K6Change2of7initial_Qrqd___Sbyqd___qd__tctSQRd__lFQOyAiAE5alert_AK7actions7messageQrqd___APqd_0_yXEqd_1_yXEtSyRd__AaHRd_0_AaHRd_1_r1_lFQOyAiAEA14__AKA15_A16_Qrqd___APqd_0_yXEqd_1_yXEtSyRd__AaHRd_0_AaHRd_1_r1_lFQOyAiAEA11_A12_A13__Qrqd___Sbyqd___qd__tctSQRd__lFQOyAiAEA11_A12_A13__Qrqd___Sbyqd___qd__tctSQRd__lFQOyAiAEA11_A12_A13__Qrqd___SbyyctSQRd__lFQOyAiAEA11_A12_A13__Qrqd___SbyyctSQRd__lFQOyAiAEA11_A12_A13__Qrqd___SbyyctSQRd__lFQOyAiAE19presentationDetents_9selectionQrShyAA18PresentationDetentVG_AOyA20_GtFQOyACyAR20SessionControlsSheetVA0_G_Qo__A20_Qo__SbQo__SbQo__0O4Core0O19BuddyStatePublisherC5StateOQo__So21NLWorkoutPausedReasonVQo__SSACyAA6ButtonVyAA4TextVGAA023AccessibilityAttachmentT0VGA42_Qo__SSAGyA46__A46_tGA42_Qo__SbQo_Qo__AR24LowPowerInSessionOverlayVSgtGGA0_GAA022_EnvironmentKeyWritingT0VyAR0o9AnimationS0OGGMd);
  v15 = v14 - 8;
  MEMORY[0x28223BE20](v14);
  v17 = &v46 - v16;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyACyACyAA6ZStackVyAA9TupleViewVyAA0G0PAAE5sheet11isPresented9onDismiss7contentQrAA7BindingVySbG_yycSgqd__yctAaHRd__lFQOyACyACyACyACyACy07WorkoutB0014MetricPlattersG0VAA24_BackgroundStyleModifierVyAA5ColorVGGAA16_FlexFrameLayoutVGAA14_OpacityEffectVGAA08_PaddingX0VGAA017_AppearanceActionT0VG_AiAE0K6Change2of7initial_Qrqd___Sbyqd___qd__tctSQRd__lFQOyAiAE5alert_AK7actions7messageQrqd___APqd_0_yXEqd_1_yXEtSyRd__AaHRd_0_AaHRd_1_r1_lFQOyAiAEA14__AKA15_A16_Qrqd___APqd_0_yXEqd_1_yXEtSyRd__AaHRd_0_AaHRd_1_r1_lFQOyAiAEA11_A12_A13__Qrqd___Sbyqd___qd__tctSQRd__lFQOyAiAEA11_A12_A13__Qrqd___Sbyqd___qd__tctSQRd__lFQOyAiAEA11_A12_A13__Qrqd___SbyyctSQRd__lFQOyAiAEA11_A12_A13__Qrqd___SbyyctSQRd__lFQOyAiAEA11_A12_A13__Qrqd___SbyyctSQRd__lFQOyAiAE19presentationDetents_9selectionQrShyAA18PresentationDetentVG_AOyA20_GtFQOyACyAR20SessionControlsSheetVA0_G_Qo__A20_Qo__SbQo__SbQo__0O4Core0O19BuddyStatePublisherC5StateOQo__So21NLWorkoutPausedReasonVQo__SSACyAA6ButtonVyAA4TextVGAA023AccessibilityAttachmentT0VGA42_Qo__SSAGyA46__A46_tGA42_Qo__SbQo_Qo__AR24LowPowerInSessionOverlayVSgtGGA0_GAA022_EnvironmentKeyWritingT0VyAR0o9AnimationS0OGGA9_GMd);
  MEMORY[0x28223BE20](v18);
  v20 = &v46 - v19;
  v51 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI4ViewPAAE15dynamicTypeSizeyQrAA07DynamiceF0OFQOyAA15ModifiedContentVyAHyAHyAA6ZStackVyAA05TupleC0VyAcAE5sheet11isPresented9onDismiss7contentQrAA7BindingVySbG_yycSgqd__yctAaBRd__lFQOyAHyAHyAHyAHyAHy07WorkoutB0014MetricPlattersC0VAA24_BackgroundStyleModifierVyAA5ColorVGGAA16_FlexFrameLayoutVGAA14_OpacityEffectVGAA14_PaddingLayoutVGAA017_AppearanceActionX0VG_AcAE0O6Change2of7initial_Qrqd___Sbyqd___qd__tctSQRd__lFQOyAcAE5alert_AN7actions7messageQrqd___ASqd_0_yXEqd_1_yXEtSyRd__AaBRd_0_AaBRd_1_r1_lFQOyAcAEA17__ANA18_A19_Qrqd___ASqd_0_yXEqd_1_yXEtSyRd__AaBRd_0_AaBRd_1_r1_lFQOyAcAEA14_A15_A16__Qrqd___Sbyqd___qd__tctSQRd__lFQOyAcAEA14_A15_A16__Qrqd___Sbyqd___qd__tctSQRd__lFQOyAcAEA14_A15_A16__Qrqd___SbyyctSQRd__lFQOyAcAEA14_A15_A16__Qrqd___SbyyctSQRd__lFQOyAcAEA14_A15_A16__Qrqd___SbyyctSQRd__lFQOyAcAE19presentationDetents_9selectionQrShyAA18PresentationDetentVG_ARyA23_GtFQOyAHyAU20SessionControlsSheetVA3_G_Qo__A23_Qo__SbQo__SbQo__0S4Core0S19BuddyStatePublisherC5StateOQo__So21NLWorkoutPausedReasonVQo__SSAHyAA6ButtonVyAA4TextVGAA023AccessibilityAttachmentX0VGA45_Qo__SSALyA49__A49_tGA45_Qo__SbQo_Qo__AU24LowPowerInSessionOverlayVSgtGGA3_GAA022_EnvironmentKeyWritingX0VyAU0s9AnimationW0OGGA12_G_Qo_Md);
  v49 = *(v51 - 8);
  MEMORY[0x28223BE20](v51);
  v47 = &v46 - v21;
  *v9 = static Alignment.top.getter();
  *(v9 + 8) = v22;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI13_VariadicViewO4TreeVy_AA13_ZStackLayoutVAA05TupleD0VyAA0D0PAAE5sheet11isPresented9onDismiss7contentQrAA7BindingVySbG_yycSgqd__yctAaJRd__lFQOyAA15ModifiedContentVyAUyAUyAUyAUy07WorkoutB0014MetricPlattersD0VAA24_BackgroundStyleModifierVyAA5ColorVGGAA010_FlexFrameG0VGAA14_OpacityEffectVGAA08_PaddingG0VGAA017_AppearanceActionW0VG_AkAE0L6Change2of7initial_Qrqd___Sbyqd___qd__tctSQRd__lFQOyAkAE5alert_AM7actions7messageQrqd___ARqd_0_yXEqd_1_yXEtSyRd__AaJRd_0_AaJRd_1_r1_lFQOyAkAEA18__AMA19_A20_Qrqd___ARqd_0_yXEqd_1_yXEtSyRd__AaJRd_0_AaJRd_1_r1_lFQOyAkAEA15_A16_A17__Qrqd___Sbyqd___qd__tctSQRd__lFQOyAkAEA15_A16_A17__Qrqd___Sbyqd___qd__tctSQRd__lFQOyAkAEA15_A16_A17__Qrqd___SbyyctSQRd__lFQOyAkAEA15_A16_A17__Qrqd___SbyyctSQRd__lFQOyAkAEA15_A16_A17__Qrqd___SbyyctSQRd__lFQOyAkAE19presentationDetents_9selectionQrShyAA18PresentationDetentVG_AQyA24_GtFQOyAUyAV20SessionControlsSheetVA4_G_Qo__A24_Qo__SbQo__SbQo__0R4Core0R19BuddyStatePublisherC5StateOQo__So21NLWorkoutPausedReasonVQo__SSAUyAA6ButtonVyAA4TextVGAA023AccessibilityAttachmentW0VGA46_Qo__SSAIyA50__A50_tGA46_Qo__SbQo_Qo__AV24LowPowerInSessionOverlayVSgtGGMd);
  closure #1 in InSessionView.body.getter(v2, (v9 + *(v23 + 44)));
  static Alignment.center.getter();
  _FlexFrameLayout.init(minWidth:idealWidth:maxWidth:minHeight:idealHeight:maxHeight:alignment:)();
  outlined init with take of ZStack<TupleView<(<<opaque return type of View.sheet<A>(isPresented:onDismiss:content:)>>.0, LowPowerInSessionOverlay?)>>(v9, v13, &_s7SwiftUI6ZStackVyAA9TupleViewVyAA0E0PAAE5sheet11isPresented9onDismiss7contentQrAA7BindingVySbG_yycSgqd__yctAaFRd__lFQOyAA15ModifiedContentVyAQyAQyAQyAQy07WorkoutB0014MetricPlattersE0VAA24_BackgroundStyleModifierVyAA5ColorVGGAA16_FlexFrameLayoutVGAA14_OpacityEffectVGAA08_PaddingX0VGAA017_AppearanceActionT0VG_AgAE0I6Change2of7initial_Qrqd___Sbyqd___qd__tctSQRd__lFQOyAgAE5alert_AI7actions7messageQrqd___ANqd_0_yXEqd_1_yXEtSyRd__AaFRd_0_AaFRd_1_r1_lFQOyAgAEA14__AIA15_A16_Qrqd___ANqd_0_yXEqd_1_yXEtSyRd__AaFRd_0_AaFRd_1_r1_lFQOyAgAEA11_A12_A13__Qrqd___Sbyqd___qd__tctSQRd__lFQOyAgAEA11_A12_A13__Qrqd___Sbyqd___qd__tctSQRd__lFQOyAgAEA11_A12_A13__Qrqd___SbyyctSQRd__lFQOyAgAEA11_A12_A13__Qrqd___SbyyctSQRd__lFQOyAgAEA11_A12_A13__Qrqd___SbyyctSQRd__lFQOyAgAE19presentationDetents_9selectionQrShyAA18PresentationDetentVG_AMyA20_GtFQOyAQyAR20SessionControlsSheetVA0_G_Qo__A20_Qo__SbQo__SbQo__0O4Core0O19BuddyStatePublisherC5StateOQo__So21NLWorkoutPausedReasonVQo__SSAQyAA6ButtonVyAA4TextVGAA023AccessibilityAttachmentT0VGA42_Qo__SSAEyA46__A46_tGA42_Qo__SbQo_Qo__AR24LowPowerInSessionOverlayVSgtGGMd);
  v24 = &v13[*(v11 + 44)];
  v25 = v60;
  *(v24 + 4) = v59;
  *(v24 + 5) = v25;
  *(v24 + 6) = v61;
  v26 = v56;
  *v24 = v55;
  *(v24 + 1) = v26;
  v27 = v58;
  *(v24 + 2) = v57;
  *(v24 + 3) = v27;
  LOBYTE(v9) = dispatch thunk of LowPowerModeMonitor.lowPowerModeEnabled.getter();
  KeyPath = swift_getKeyPath();
  outlined init with take of ZStack<TupleView<(<<opaque return type of View.sheet<A>(isPresented:onDismiss:content:)>>.0, LowPowerInSessionOverlay?)>>(v13, v17, &_s7SwiftUI15ModifiedContentVyAA6ZStackVyAA9TupleViewVyAA0G0PAAE5sheet11isPresented9onDismiss7contentQrAA7BindingVySbG_yycSgqd__yctAaHRd__lFQOyACyACyACyACyACy07WorkoutB0014MetricPlattersG0VAA24_BackgroundStyleModifierVyAA5ColorVGGAA16_FlexFrameLayoutVGAA14_OpacityEffectVGAA08_PaddingX0VGAA017_AppearanceActionT0VG_AiAE0K6Change2of7initial_Qrqd___Sbyqd___qd__tctSQRd__lFQOyAiAE5alert_AK7actions7messageQrqd___APqd_0_yXEqd_1_yXEtSyRd__AaHRd_0_AaHRd_1_r1_lFQOyAiAEA14__AKA15_A16_Qrqd___APqd_0_yXEqd_1_yXEtSyRd__AaHRd_0_AaHRd_1_r1_lFQOyAiAEA11_A12_A13__Qrqd___Sbyqd___qd__tctSQRd__lFQOyAiAEA11_A12_A13__Qrqd___Sbyqd___qd__tctSQRd__lFQOyAiAEA11_A12_A13__Qrqd___SbyyctSQRd__lFQOyAiAEA11_A12_A13__Qrqd___SbyyctSQRd__lFQOyAiAEA11_A12_A13__Qrqd___SbyyctSQRd__lFQOyAiAE19presentationDetents_9selectionQrShyAA18PresentationDetentVG_AOyA20_GtFQOyACyAR20SessionControlsSheetVA0_G_Qo__A20_Qo__SbQo__SbQo__0O4Core0O19BuddyStatePublisherC5StateOQo__So21NLWorkoutPausedReasonVQo__SSACyAA6ButtonVyAA4TextVGAA023AccessibilityAttachmentT0VGA42_Qo__SSAGyA46__A46_tGA42_Qo__SbQo_Qo__AR24LowPowerInSessionOverlayVSgtGGA0_GMd);
  v29 = &v17[*(v15 + 44)];
  *v29 = KeyPath;
  v29[8] = v9 & 1;
  outlined init with copy of InSessionView(v2, &v46 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v30 = (*(v48 + 80) + 16) & ~*(v48 + 80);
  v31 = swift_allocObject();
  outlined init with take of InSessionView(&v46 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), v31 + v30, type metadata accessor for InSessionView);
  outlined init with take of ZStack<TupleView<(<<opaque return type of View.sheet<A>(isPresented:onDismiss:content:)>>.0, LowPowerInSessionOverlay?)>>(v17, v20, &_s7SwiftUI15ModifiedContentVyACyAA6ZStackVyAA9TupleViewVyAA0G0PAAE5sheet11isPresented9onDismiss7contentQrAA7BindingVySbG_yycSgqd__yctAaHRd__lFQOyACyACyACyACyACy07WorkoutB0014MetricPlattersG0VAA24_BackgroundStyleModifierVyAA5ColorVGGAA16_FlexFrameLayoutVGAA14_OpacityEffectVGAA08_PaddingX0VGAA017_AppearanceActionT0VG_AiAE0K6Change2of7initial_Qrqd___Sbyqd___qd__tctSQRd__lFQOyAiAE5alert_AK7actions7messageQrqd___APqd_0_yXEqd_1_yXEtSyRd__AaHRd_0_AaHRd_1_r1_lFQOyAiAEA14__AKA15_A16_Qrqd___APqd_0_yXEqd_1_yXEtSyRd__AaHRd_0_AaHRd_1_r1_lFQOyAiAEA11_A12_A13__Qrqd___Sbyqd___qd__tctSQRd__lFQOyAiAEA11_A12_A13__Qrqd___Sbyqd___qd__tctSQRd__lFQOyAiAEA11_A12_A13__Qrqd___SbyyctSQRd__lFQOyAiAEA11_A12_A13__Qrqd___SbyyctSQRd__lFQOyAiAEA11_A12_A13__Qrqd___SbyyctSQRd__lFQOyAiAE19presentationDetents_9selectionQrShyAA18PresentationDetentVG_AOyA20_GtFQOyACyAR20SessionControlsSheetVA0_G_Qo__A20_Qo__SbQo__SbQo__0O4Core0O19BuddyStatePublisherC5StateOQo__So21NLWorkoutPausedReasonVQo__SSACyAA6ButtonVyAA4TextVGAA023AccessibilityAttachmentT0VGA42_Qo__SSAGyA46__A46_tGA42_Qo__SbQo_Qo__AR24LowPowerInSessionOverlayVSgtGGA0_GAA022_EnvironmentKeyWritingT0VyAR0o9AnimationS0OGGMd);
  v32 = &v20[*(v18 + 36)];
  *v32 = partial apply for closure #2 in InSessionView.body.getter;
  v32[1] = v31;
  v32[2] = 0;
  v32[3] = 0;
  v34 = v52;
  v33 = v53;
  v35 = v50;
  (*(v52 + 104))(v50, *MEMORY[0x277CDF9D8], v53);
  lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<ModifiedContent<ZStack<TupleView<(<<opaque return type of View.sheet<A>(isPresented:onDismiss:content:)>>.0, LowPowerInSessionOverlay?)>>, _FlexFrameLayout>, _EnvironmentKeyWritingModifier<WorkoutAnimationStyle>>, _AppearanceActionModifier> and conformance <> ModifiedContent<A, B>( &lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<ZStack<TupleView<(<<opaque return type of View.sheet<A>(isPresented:onDismiss:content:)>>.0, LowPowerInSessionOverlay?)>>, _FlexFrameLayout>, _EnvironmentKeyWritingModifier<WorkoutAnimationStyle>>, _AppearanceActionModifier> and conformance <> ModifiedContent<A, B>,  &_s7SwiftUI15ModifiedContentVyACyACyAA6ZStackVyAA9TupleViewVyAA0G0PAAE5sheet11isPresented9onDismiss7contentQrAA7BindingVySbG_yycSgqd__yctAaHRd__lFQOyACyACyACyACyACy07WorkoutB0014MetricPlattersG0VAA24_BackgroundStyleModifierVyAA5ColorVGGAA16_FlexFrameLayoutVGAA14_OpacityEffectVGAA08_PaddingX0VGAA017_AppearanceActionT0VG_AiAE0K6Change2of7initial_Qrqd___Sbyqd___qd__tctSQRd__lFQOyAiAE5alert_AK7actions7messageQrqd___APqd_0_yXEqd_1_yXEtSyRd__AaHRd_0_AaHRd_1_r1_lFQOyAiAEA14__AKA15_A16_Qrqd___APqd_0_yXEqd_1_yXEtSyRd__AaHRd_0_AaHRd_1_r1_lFQOyAiAEA11_A12_A13__Qrqd___Sbyqd___qd__tctSQRd__lFQOyAiAEA11_A12_A13__Qrqd___Sbyqd___qd__tctSQRd__lFQOyAiAEA11_A12_A13__Qrqd___SbyyctSQRd__lFQOyAiAEA11_A12_A13__Qrqd___SbyyctSQRd__lFQOyAiAEA11_A12_A13__Qrqd___SbyyctSQRd__lFQOyAiAE19presentationDetents_9selectionQrShyAA18PresentationDetentVG_AOyA20_GtFQOyACyAR20SessionControlsSheetVA0_G_Qo__A20_Qo__SbQo__SbQo__0O4Core0O19BuddyStatePublisherC5StateOQo__So21NLWorkoutPausedReasonVQo__SSACyAA6ButtonVyAA4TextVGAA023AccessibilityAttachmentT0VGA42_Qo__SSAGyA46__A46_tGA42_Qo__SbQo_Qo__AR24LowPowerInSessionOverlayVSgtGGA0_GAA022_EnvironmentKeyWritingT0VyAR0o9AnimationS0OGGA9_GMd,  &_s7SwiftUI15ModifiedContentVyACyACyAA6ZStackVyAA9TupleViewVyAA0G0PAAE5sheet11isPresented9onDismiss7contentQrAA7BindingVySbG_yycSgqd__yctAaHRd__lFQOyACyACyACyACyACy07WorkoutB0014MetricPlattersG0VAA24_BackgroundStyleModifierVyAA5ColorVGGAA16_FlexFrameLayoutVGAA14_OpacityEffectVGAA08_PaddingX0VGAA017_AppearanceActionT0VG_AiAE0K6Change2of7initial_Qrqd___Sbyqd___qd__tctSQRd__lFQOyAiAE5alert_AK7actions7messageQrqd___APqd_0_yXEqd_1_yXEtSyRd__AaHRd_0_AaHRd_1_r1_lFQOyAiAEA14__AKA15_A16_Qrqd___APqd_0_yXEqd_1_yXEtSyRd__AaHRd_0_AaHRd_1_r1_lFQOyAiAEA11_A12_A13__Qrqd___Sbyqd___qd__tctSQRd__lFQOyAiAEA11_A12_A13__Qrqd___Sbyqd___qd__tctSQRd__lFQOyAiAEA11_A12_A13__Qrqd___SbyyctSQRd__lFQOyAiAEA11_A12_A13__Qrqd___SbyyctSQRd__lFQOyAiAEA11_A12_A13__Qrqd___SbyyctSQRd__lFQOyAiAE19presentationDetents_9selectionQrShyAA18PresentationDetentVG_AOyA20_GtFQOyACyAR20SessionControlsSheetVA0_G_Qo__A20_Qo__SbQo__SbQo__0O4Core0O19BuddyStatePublisherC5StateOQo__So21NLWorkoutPausedReasonVQo__SSACyAA6ButtonVyAA4TextVGAA023AccessibilityAttachmentT0VGA42_Qo__SSAGyA46__A46_tGA42_Qo__SbQo_Qo__AR24LowPowerInSessionOverlayVSgtGGA0_GAA022_EnvironmentKeyWritingT0VyAR0o9AnimationS0OGGA9_GMR,  lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<ZStack<TupleView<(<<opaque return type of View.sheet<A>(isPresented:onDismiss:content:)>>.0, LowPowerInSessionOverlay?)>>, _FlexFrameLayout>, _EnvironmentKeyWritingModifier<WorkoutAnimationStyle>> and conformance <> ModifiedContent<A, B>);
  v36 = v47;
  View.dynamicTypeSize(_:)();
  (*(v34 + 8))(v35, v33);
  sub_20C6987A4(v20);
  v37 = swift_getKeyPath();
  v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyAA4ViewPAAE15dynamicTypeSizeyQrAA07DynamicgH0OFQOyACyACyACyAA6ZStackVyAA05TupleE0VyAeAE5sheet11isPresented9onDismiss7contentQrAA7BindingVySbG_yycSgqd__yctAaDRd__lFQOyACyACyACyACyACy07WorkoutB0014MetricPlattersE0VAA24_BackgroundStyleModifierVyAA5ColorVGGAA16_FlexFrameLayoutVGAA14_OpacityEffectVGAA14_PaddingLayoutVGAA017_AppearanceActionX0VG_AeAE0O6Change2of7initial_Qrqd___Sbyqd___qd__tctSQRd__lFQOyAeAE5alert_AN7actions7messageQrqd___ASqd_0_yXEqd_1_yXEtSyRd__AaDRd_0_AaDRd_1_r1_lFQOyAeAEA17__ANA18_A19_Qrqd___ASqd_0_yXEqd_1_yXEtSyRd__AaDRd_0_AaDRd_1_r1_lFQOyAeAEA14_A15_A16__Qrqd___Sbyqd___qd__tctSQRd__lFQOyAeAEA14_A15_A16__Qrqd___Sbyqd___qd__tctSQRd__lFQOyAeAEA14_A15_A16__Qrqd___SbyyctSQRd__lFQOyAeAEA14_A15_A16__Qrqd___SbyyctSQRd__lFQOyAeAEA14_A15_A16__Qrqd___SbyyctSQRd__lFQOyAeAE19presentationDetents_9selectionQrShyAA18PresentationDetentVG_ARyA23_GtFQOyACyAU20SessionControlsSheetVA3_G_Qo__A23_Qo__SbQo__SbQo__0S4Core0S19BuddyStatePublisherC5StateOQo__So21NLWorkoutPausedReasonVQo__SSACyAA6ButtonVyAA4TextVGAA023AccessibilityAttachmentX0VGA45_Qo__SSALyA49__A49_tGA45_Qo__SbQo_Qo__AU24LowPowerInSessionOverlayVSgtGGA3_GAA022_EnvironmentKeyWritingX0VyAU0s9AnimationW0OGGA12_G_Qo_A62_yAA16LegibilityWeightOSgGGMd);
  v39 = v54;
  v40 = (v54 + *(v38 + 36));
  v41 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI30_EnvironmentKeyWritingModifierVyAA16LegibilityWeightOSgGMd) + 28);
  v42 = *MEMORY[0x277CDFB78];
  v43 = type metadata accessor for LegibilityWeight();
  v44 = *(v43 - 8);
  (*(v44 + 104))(v40 + v41, v42, v43);
  (*(v44 + 56))(v40 + v41, 0, 1, v43);
  *v40 = v37;
  return (*(v49 + 32))(v39, v36, v51);
}

uint64_t closure #1 in InSessionView.body.getter@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v149 = a2;
  v3 = type metadata accessor for InSessionView();
  v140 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v143 = &v126 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v142 = v4;
  MEMORY[0x28223BE20](v5);
  v141 = &v126 - v6;
  v132 = type metadata accessor for MetricPlatter();
  v127 = *(v132 - 8);
  MEMORY[0x28223BE20](v132);
  v130 = &v126 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for MetricPlattersView();
  MEMORY[0x28223BE20](v8);
  v10 = &v126 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v129 = &v126 - v12;
  v131 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVy07WorkoutB018MetricPlattersViewVAA24_BackgroundStyleModifierVyAA5ColorVGGMd);
  MEMORY[0x28223BE20](v131);
  v134 = &v126 - v13;
  v133 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyACy07WorkoutB018MetricPlattersViewVAA24_BackgroundStyleModifierVyAA5ColorVGGAA16_FlexFrameLayoutVGMd);
  MEMORY[0x28223BE20](v133);
  v136 = &v126 - v14;
  v135 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyACyACy07WorkoutB018MetricPlattersViewVAA24_BackgroundStyleModifierVyAA5ColorVGGAA16_FlexFrameLayoutVGAA14_OpacityEffectVGMd);
  MEMORY[0x28223BE20](v135);
  v138 = &v126 - v15;
  v137 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyACyACyACy07WorkoutB018MetricPlattersViewVAA24_BackgroundStyleModifierVyAA5ColorVGGAA16_FlexFrameLayoutVGAA14_OpacityEffectVGAA08_PaddingO0VGMd);
  MEMORY[0x28223BE20](v137);
  v139 = &v126 - v16;
  v150 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyACyACyACyACy07WorkoutB018MetricPlattersViewVAA24_BackgroundStyleModifierVyAA5ColorVGGAA16_FlexFrameLayoutVGAA14_OpacityEffectVGAA08_PaddingO0VGAA017_AppearanceActionK0VGMd);
  MEMORY[0x28223BE20](v150);
  v151 = &v126 - v17;
  v148 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI4ViewPAAE5sheet11isPresented9onDismiss7contentQrAA7BindingVySbG_yycSgqd__yctAaBRd__lFQOyAA15ModifiedContentVyAMyAMyAMyAMy07WorkoutB0014MetricPlattersC0VAA24_BackgroundStyleModifierVyAA5ColorVGGAA16_FlexFrameLayoutVGAA14_OpacityEffectVGAA08_PaddingV0VGAA017_AppearanceActionR0VG_AcAE0G6Change2of7initial_Qrqd___Sbyqd___qd__tctSQRd__lFQOyAcAE5alert_AE7actions7messageQrqd___AJqd_0_yXEqd_1_yXEtSyRd__AaBRd_0_AaBRd_1_r1_lFQOyAcAEA10__AEA11_A12_Qrqd___AJqd_0_yXEqd_1_yXEtSyRd__AaBRd_0_AaBRd_1_r1_lFQOyAcAEA7_A8_A9__Qrqd___Sbyqd___qd__tctSQRd__lFQOyAcAEA7_A8_A9__Qrqd___Sbyqd___qd__tctSQRd__lFQOyAcAEA7_A8_A9__Qrqd___SbyyctSQRd__lFQOyAcAEA7_A8_A9__Qrqd___SbyyctSQRd__lFQOyAcAEA7_A8_A9__Qrqd___SbyyctSQRd__lFQOyAcAE19presentationDetents_9selectionQrShyAA18PresentationDetentVG_AIyA16_GtFQOyAMyAN20SessionControlsSheetVAXG_Qo__A16_Qo__SbQo__SbQo__0M4Core0M19BuddyStatePublisherC5StateOQo__So21NLWorkoutPausedReasonVQo__SSAMyAA6ButtonVyAA4TextVGAA023AccessibilityAttachmentR0VGA38_Qo__SSAA05TupleC0VyA42__A42_tGA38_Qo__SbQo_Qo_Md);
  v147 = *(v148 - 8);
  MEMORY[0x28223BE20](v148);
  v146 = &v126 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v19);
  v145 = &v126 - v20;
  v21 = *(a1 + 16);
  v22 = *(a1 + 64);
  v23 = *(v3 + 52);
  v152 = v3;
  v24 = *(a1 + v23);
  v25 = v22;

  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI8BindableVy07WorkoutB016SessionViewModelCGMd);
  v144 = a1;
  Bindable.wrappedValue.getter();
  v26 = v164;
  swift_getKeyPath();
  *&v164 = v26;
  _s11WorkoutCore19LowPowerModeMonitorCAC7Combine16ObservableObjectAAWlTm_2(&lazy protocol witness table cache variable for type SessionViewModel and conformance SessionViewModel, type metadata accessor for SessionViewModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  swift_beginAccess();
  v27 = *(v26 + 24);

  v28 = dispatch thunk of WorkoutConfiguration.activityType.getter();

  *(v10 + 9) = swift_getKeyPath();
  v10[80] = 0;
  *(v10 + 7) = xmmword_20CB8B9A0;
  v29 = *(v8 + 64);
  *&v10[v29] = AppStorage.init<A>(wrappedValue:_:store:)();
  v128 = v8;
  v30 = &v10[*(v8 + 68)];
  LOBYTE(v153) = 0;
  State.init(wrappedValue:)();
  v31 = *(&v164 + 1);
  *v30 = v164;
  *(v30 + 1) = v31;
  *(v10 + 13) = v25;
  *v10 = v21;
  v21;
  MetricsPublisher.platterPublisher.getter();
  type metadata accessor for PlatterPublisher();
  _s11WorkoutCore19LowPowerModeMonitorCAC7Combine16ObservableObjectAAWlTm_2(&lazy protocol witness table cache variable for type PlatterPublisher and conformance PlatterPublisher, MEMORY[0x277D7E0A0]);
  *(v10 + 1) = ObservedObject.init(wrappedValue:)();
  *(v10 + 2) = v32;
  type metadata accessor for WorkoutNotificationCenter();
  _s11WorkoutCore19LowPowerModeMonitorCAC7Combine16ObservableObjectAAWlTm_2(&lazy protocol witness table cache variable for type WorkoutNotificationCenter and conformance WorkoutNotificationCenter, MEMORY[0x277D7DB78]);

  *(v10 + 5) = ObservedObject.init(wrappedValue:)();
  *(v10 + 6) = v33;
  *(v10 + 11) = v24;
  MetricsPublisher.workoutStatePublisher.getter();
  type metadata accessor for WorkoutStatePublisher();
  _s11WorkoutCore19LowPowerModeMonitorCAC7Combine16ObservableObjectAAWlTm_2(&lazy protocol witness table cache variable for type WorkoutStatePublisher and conformance WorkoutStatePublisher, MEMORY[0x277D7DA88]);
  *(v10 + 3) = ObservedObject.init(wrappedValue:)();
  *(v10 + 4) = v34;
  *(v10 + 12) = v28;
  MetricsPublisher.platterPublisher.getter();
  v35 = PlatterPublisher.metricPlatters.getter();

  if (*(v35 + 16))
  {
    v36 = v127;
    v37 = *(v127 + 16);
    v38 = v130;
    v39 = v132;
    v37(v130, v35 + ((*(v127 + 80) + 32) & ~*(v127 + 80)), v132);

    v40 = &v10[*(v128 + 60)];
    v37(v40, v38, v39);
    *&v40[*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI5StateVy11WorkoutCore13MetricPlatterVGMd) + 28)] = 0;
    MetricsPublisher.workoutBuddyStatePublisher.getter();
    type metadata accessor for WorkoutBuddyStatePublisher();
    _s11WorkoutCore19LowPowerModeMonitorCAC7Combine16ObservableObjectAAWlTm_2(&lazy protocol witness table cache variable for type WorkoutBuddyStatePublisher and conformance WorkoutBuddyStatePublisher, MEMORY[0x277D7DBD0]);
    *(v10 + 7) = ObservedObject.init(wrappedValue:)();
    *(v10 + 8) = v41;
    MetricPlattersView.logMetricPlatters()();
    (*(v36 + 8))(v38, v39);
    v42 = v129;
    outlined init with take of InSessionView(v10, v129, type metadata accessor for MetricPlattersView);
    if (one-time initialization token for defaultBackground != -1)
    {
      swift_once();
    }

    v43 = static SessionViewColors.defaultBackground;
    v44 = static Edge.Set.all.getter();
    v45 = v42;
    v46 = v134;
    outlined init with take of InSessionView(v45, v134, type metadata accessor for MetricPlattersView);
    v47 = v46 + *(v131 + 36);
    *v47 = v43;
    *(v47 + 8) = v44;

    static Alignment.center.getter();
    _FlexFrameLayout.init(minWidth:idealWidth:maxWidth:minHeight:idealHeight:maxHeight:alignment:)();
    v48 = v136;
    outlined init with take of ModifiedContent<MetricPlattersView, _BackgroundStyleModifier<Color>>(v46, v136, &_s7SwiftUI15ModifiedContentVy07WorkoutB018MetricPlattersViewVAA24_BackgroundStyleModifierVyAA5ColorVGGMd);
    v49 = (v48 + *(v133 + 36));
    v50 = v169;
    v49[4] = v168;
    v49[5] = v50;
    v49[6] = v170;
    v51 = v165;
    *v49 = v164;
    v49[1] = v51;
    v52 = v167;
    v49[2] = v166;
    v49[3] = v52;
    v53 = v144;
    v54 = *(v144 + 120);
    v153 = *(v144 + 112);
    v154 = v54;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI5StateVy07WorkoutB0015SessionControlsC0CGMd);
    State.wrappedValue.getter();
    v55 = v163;
    swift_getKeyPath();
    v153 = v55;
    _s11WorkoutCore19LowPowerModeMonitorCAC7Combine16ObservableObjectAAWlTm_2(&lazy protocol witness table cache variable for type SessionControlsState and conformance SessionControlsState, type metadata accessor for SessionControlsState);
    ObservationRegistrar.access<A, B>(_:keyPath:)();

    swift_beginAccess();
    v56 = *(v55 + 16);

    if (v56)
    {
      v57 = 0.5;
    }

    else
    {
      v57 = 1.0;
    }

    v58 = v138;
    outlined init with take of ModifiedContent<MetricPlattersView, _BackgroundStyleModifier<Color>>(v48, v138, &_s7SwiftUI15ModifiedContentVyACy07WorkoutB018MetricPlattersViewVAA24_BackgroundStyleModifierVyAA5ColorVGGAA16_FlexFrameLayoutVGMd);
    *(v58 + *(v135 + 36)) = v57;
    v59 = static Edge.Set.bottom.getter();
    v60 = v152;
    EdgeInsets.init(_all:)();
    v62 = v61;
    v64 = v63;
    v66 = v65;
    v68 = v67;
    v69 = v58;
    v70 = v139;
    outlined init with take of ModifiedContent<MetricPlattersView, _BackgroundStyleModifier<Color>>(v69, v139, &_s7SwiftUI15ModifiedContentVyACyACy07WorkoutB018MetricPlattersViewVAA24_BackgroundStyleModifierVyAA5ColorVGGAA16_FlexFrameLayoutVGAA14_OpacityEffectVGMd);
    v71 = v70 + *(v137 + 36);
    *v71 = v59;
    *(v71 + 8) = v62;
    *(v71 + 16) = v64;
    *(v71 + 24) = v66;
    *(v71 + 32) = v68;
    *(v71 + 40) = 0;
    v72 = v141;
    outlined init with copy of InSessionView(v53, v141);
    v73 = (*(v140 + 80) + 16) & ~*(v140 + 80);
    v74 = swift_allocObject();
    outlined init with take of InSessionView(v72, v74 + v73, type metadata accessor for InSessionView);
    v75 = v70;
    v76 = v151;
    outlined init with take of ModifiedContent<MetricPlattersView, _BackgroundStyleModifier<Color>>(v75, v151, &_s7SwiftUI15ModifiedContentVyACyACyACy07WorkoutB018MetricPlattersViewVAA24_BackgroundStyleModifierVyAA5ColorVGGAA16_FlexFrameLayoutVGAA14_OpacityEffectVGAA08_PaddingO0VGMd);
    v77 = (v76 + *(v150 + 36));
    *v77 = partial apply for closure #1 in closure #1 in InSessionView.body.getter;
    v77[1] = v74;
    v77[2] = 0;
    v77[3] = 0;
    v78 = v53 + *(v60 + 68);
    v79 = *v78;
    v80 = *(v78 + 8);
    v161 = v79;
    v162 = v80;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI5StateVySbGMd);
    State.projectedValue.getter();
    v139 = v153;
    v138 = v154;
    LODWORD(v140) = v155;
    outlined init with copy of InSessionView(v53, v72);
    v137 = swift_allocObject();
    outlined init with take of InSessionView(v72, v137 + v73, type metadata accessor for InSessionView);
    v81 = v143;
    outlined init with copy of InSessionView(v53, v143);
    v142 = swift_allocObject();
    outlined init with take of InSessionView(v81, v142 + v73, type metadata accessor for InSessionView);
    v143 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI4ViewPAAE8onChange2of7initial_Qrqd___Sbyqd___qd__tctSQRd__lFQOyAcAE5alert_11isPresented7actions7messageQrqd___AA7BindingVySbGqd_0_yXEqd_1_yXEtSyRd__AaBRd_0_AaBRd_1_r1_lFQOyAcAEAG_AhiJQrqd___AMqd_0_yXEqd_1_yXEtSyRd__AaBRd_0_AaBRd_1_r1_lFQOyAcAEAdeF_Qrqd___Sbyqd___qd__tctSQRd__lFQOyAcAEAdeF_Qrqd___Sbyqd___qd__tctSQRd__lFQOyAcAEAdeF_Qrqd___SbyyctSQRd__lFQOyAcAEAdeF_Qrqd___SbyyctSQRd__lFQOyAcAEAdeF_Qrqd___SbyyctSQRd__lFQOyAcAE19presentationDetents_9selectionQrShyAA18PresentationDetentVG_ALyAQGtFQOyAA15ModifiedContentVy07WorkoutB020SessionControlsSheetVAA16_FlexFrameLayoutVG_Qo__AQQo__SbQo__SbQo__0U4Core0U19BuddyStatePublisherC5StateOQo__So21NLWorkoutPausedReasonVQo__SSAUyAA6ButtonVyAA4TextVGAA31AccessibilityAttachmentModifierVGA16_Qo__SSAA05TupleC0VyA20__A20_tGA16_Qo__SbQo_Md);
    v141 = lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<ModifiedContent<ZStack<TupleView<(<<opaque return type of View.sheet<A>(isPresented:onDismiss:content:)>>.0, LowPowerInSessionOverlay?)>>, _FlexFrameLayout>, _EnvironmentKeyWritingModifier<WorkoutAnimationStyle>>, _AppearanceActionModifier> and conformance <> ModifiedContent<A, B>(&lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<MetricPlattersView, _BackgroundStyleModifier<Color>>, _FlexFrameLayout>, _OpacityEffect>, _PaddingLayout>, _AppearanceActionModifier> and conformance <> ModifiedContent<A, B>, &_s7SwiftUI15ModifiedContentVyACyACyACyACy07WorkoutB018MetricPlattersViewVAA24_BackgroundStyleModifierVyAA5ColorVGGAA16_FlexFrameLayoutVGAA14_OpacityEffectVGAA08_PaddingO0VGAA017_AppearanceActionK0VGMd, &_s7SwiftUI15ModifiedContentVyACyACyACyACy07WorkoutB018MetricPlattersViewVAA24_BackgroundStyleModifierVyAA5ColorVGGAA16_FlexFrameLayoutVGAA14_OpacityEffectVGAA08_PaddingO0VGAA017_AppearanceActionK0VGMR, lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<MetricPlattersView, _BackgroundStyleModifier<Color>>, _FlexFrameLayout>, _OpacityEffect>, _PaddingLayout> and conformance <> ModifiedContent<A, B>);
    v136 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI4ViewPAAE5alert_11isPresented7actions7messageQrqd___AA7BindingVySbGqd_0_yXEqd_1_yXEtSyRd__AaBRd_0_AaBRd_1_r1_lFQOyAcAEAD_AefGQrqd___AJqd_0_yXEqd_1_yXEtSyRd__AaBRd_0_AaBRd_1_r1_lFQOyAcAE8onChange2of7initial_Qrqd___Sbyqd___qd__tctSQRd__lFQOyAcAEAklM_Qrqd___Sbyqd___qd__tctSQRd__lFQOyAcAEAklM_Qrqd___SbyyctSQRd__lFQOyAcAEAklM_Qrqd___SbyyctSQRd__lFQOyAcAEAklM_Qrqd___SbyyctSQRd__lFQOyAcAE19presentationDetents_9selectionQrShyAA18PresentationDetentVG_AIyAQGtFQOyAA15ModifiedContentVy07WorkoutB020SessionControlsSheetVAA16_FlexFrameLayoutVG_Qo__AQQo__SbQo__SbQo__0U4Core0U19BuddyStatePublisherC5StateOQo__So21NLWorkoutPausedReasonVQo__SSAUyAA6ButtonVyAA4TextVGAA31AccessibilityAttachmentModifierVGA16_Qo__SSAA05TupleC0VyA20__A20_tGA16_Qo_Md);
    v135 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI4ViewPAAE5alert_11isPresented7actions7messageQrqd___AA7BindingVySbGqd_0_yXEqd_1_yXEtSyRd__AaBRd_0_AaBRd_1_r1_lFQOyAcAE8onChange2of7initial_Qrqd___Sbyqd___qd__tctSQRd__lFQOyAcAEAklM_Qrqd___Sbyqd___qd__tctSQRd__lFQOyAcAEAklM_Qrqd___SbyyctSQRd__lFQOyAcAEAklM_Qrqd___SbyyctSQRd__lFQOyAcAEAklM_Qrqd___SbyyctSQRd__lFQOyAcAE19presentationDetents_9selectionQrShyAA18PresentationDetentVG_AIyAQGtFQOyAA15ModifiedContentVy07WorkoutB020SessionControlsSheetVAA16_FlexFrameLayoutVG_Qo__AQQo__SbQo__SbQo__0U4Core0U19BuddyStatePublisherC5StateOQo__So21NLWorkoutPausedReasonVQo__SSAUyAA6ButtonVyAA4TextVGAA31AccessibilityAttachmentModifierVGA16_Qo_Md);
    v134 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI9TupleViewVyAA15ModifiedContentVyAA6ButtonVyAA4TextVGAA31AccessibilityAttachmentModifierVG_AMtGMd);
    v133 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI4ViewPAAE8onChange2of7initial_Qrqd___Sbyqd___qd__tctSQRd__lFQOyAcAEAdeF_Qrqd___Sbyqd___qd__tctSQRd__lFQOyAcAEAdeF_Qrqd___SbyyctSQRd__lFQOyAcAEAdeF_Qrqd___SbyyctSQRd__lFQOyAcAEAdeF_Qrqd___SbyyctSQRd__lFQOyAcAE19presentationDetents_9selectionQrShyAA18PresentationDetentVG_AA7BindingVyAJGtFQOyAA15ModifiedContentVy07WorkoutB020SessionControlsSheetVAA16_FlexFrameLayoutVG_Qo__AJQo__SbQo__SbQo__0P4Core0P19BuddyStatePublisherC0Y0OQo__So21NLWorkoutPausedReasonVQo_Md);
    v132 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyAA6ButtonVyAA4TextVGAA31AccessibilityAttachmentModifierVGMd);
    v131 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI4ViewPAAE8onChange2of7initial_Qrqd___Sbyqd___qd__tctSQRd__lFQOyAcAEAdeF_Qrqd___SbyyctSQRd__lFQOyAcAEAdeF_Qrqd___SbyyctSQRd__lFQOyAcAEAdeF_Qrqd___SbyyctSQRd__lFQOyAcAE19presentationDetents_9selectionQrShyAA18PresentationDetentVG_AA7BindingVyAJGtFQOyAA15ModifiedContentVy07WorkoutB020SessionControlsSheetVAA16_FlexFrameLayoutVG_Qo__AJQo__SbQo__SbQo__0P4Core0P19BuddyStatePublisherC0Y0OQo_Md);
    type metadata accessor for NLWorkoutPausedReason(255);
    v83 = v82;
    v84 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI4ViewPAAE8onChange2of7initial_Qrqd___SbyyctSQRd__lFQOyAcAEAdeF_Qrqd___SbyyctSQRd__lFQOyAcAEAdeF_Qrqd___SbyyctSQRd__lFQOyAcAE19presentationDetents_9selectionQrShyAA18PresentationDetentVG_AA7BindingVyAJGtFQOyAA15ModifiedContentVy07WorkoutB020SessionControlsSheetVAA16_FlexFrameLayoutVG_Qo__AJQo__SbQo__SbQo_Md);
    v85 = type metadata accessor for WorkoutBuddyStatePublisher.State();
    v86 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI4ViewPAAE8onChange2of7initial_Qrqd___SbyyctSQRd__lFQOyAcAEAdeF_Qrqd___SbyyctSQRd__lFQOyAcAE19presentationDetents_9selectionQrShyAA18PresentationDetentVG_AA7BindingVyAJGtFQOyAA15ModifiedContentVy07WorkoutB020SessionControlsSheetVAA16_FlexFrameLayoutVG_Qo__AJQo__SbQo_Md);
    v87 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI4ViewPAAE8onChange2of7initial_Qrqd___SbyyctSQRd__lFQOyAcAE19presentationDetents_9selectionQrShyAA18PresentationDetentVG_AA7BindingVyAJGtFQOyAA15ModifiedContentVy07WorkoutB020SessionControlsSheetVAA16_FlexFrameLayoutVG_Qo__AJQo_Md);
    v88 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI4ViewPAAE19presentationDetents_9selectionQrShyAA18PresentationDetentVG_AA7BindingVyAGGtFQOyAA15ModifiedContentVy07WorkoutB020SessionControlsSheetVAA16_FlexFrameLayoutVG_Qo_Md);
    v89 = type metadata accessor for PresentationDetent();
    v90 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVy07WorkoutB020SessionControlsSheetVAA16_FlexFrameLayoutVGMd);
    v91 = lazy protocol witness table accessor for type ModifiedContent<SessionControlsSheet, _FlexFrameLayout> and conformance <> ModifiedContent<A, B>();
    v153 = v90;
    v154 = v91;
    OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
    v93 = _s11WorkoutCore19LowPowerModeMonitorCAC7Combine16ObservableObjectAAWlTm_2(&lazy protocol witness table cache variable for type PresentationDetent and conformance PresentationDetent, MEMORY[0x277CDDE90]);
    v153 = v88;
    v154 = v89;
    v155 = OpaqueTypeConformance2;
    v156 = v93;
    v94 = swift_getOpaqueTypeConformance2();
    v153 = v87;
    v95 = MEMORY[0x277D839B0];
    v154 = MEMORY[0x277D839B0];
    v96 = MEMORY[0x277D839C8];
    v155 = v94;
    v156 = MEMORY[0x277D839C8];
    v97 = swift_getOpaqueTypeConformance2();
    v153 = v86;
    v154 = v95;
    v155 = v97;
    v156 = v96;
    v98 = swift_getOpaqueTypeConformance2();
    v99 = _s11WorkoutCore19LowPowerModeMonitorCAC7Combine16ObservableObjectAAWlTm_2(&lazy protocol witness table cache variable for type WorkoutBuddyStatePublisher.State and conformance WorkoutBuddyStatePublisher.State, MEMORY[0x277D7DBB0]);
    v153 = v84;
    v154 = v85;
    v155 = v98;
    v156 = v99;
    v100 = swift_getOpaqueTypeConformance2();
    v101 = _s11WorkoutCore19LowPowerModeMonitorCAC7Combine16ObservableObjectAAWlTm_2(&lazy protocol witness table cache variable for type NLWorkoutPausedReason and conformance NLWorkoutPausedReason, type metadata accessor for NLWorkoutPausedReason);
    v153 = v131;
    v154 = v83;
    v155 = v100;
    v156 = v101;
    v102 = swift_getOpaqueTypeConformance2();
    v103 = lazy protocol witness table accessor for type String and conformance String();
    v104 = lazy protocol witness table accessor for type ModifiedContent<Button<Text>, AccessibilityAttachmentModifier> and conformance <> ModifiedContent<A, B>();
    v105 = MEMORY[0x277D837D0];
    v153 = v133;
    v154 = MEMORY[0x277D837D0];
    v106 = MEMORY[0x277CE0BD8];
    v155 = v132;
    v156 = MEMORY[0x277CE0BD8];
    v157 = v102;
    v158 = v103;
    v107 = MEMORY[0x277CE0BC8];
    v159 = v104;
    v160 = MEMORY[0x277CE0BC8];
    v108 = swift_getOpaqueTypeConformance2();
    v109 = lazy protocol witness table accessor for type ZStack<TupleView<(<<opaque return type of View.sheet<A>(isPresented:onDismiss:content:)>>.0, LowPowerInSessionOverlay?)>> and conformance ZStack<A>(&lazy protocol witness table cache variable for type TupleView<(ModifiedContent<Button<Text>, AccessibilityAttachmentModifier>, ModifiedContent<Button<Text>, AccessibilityAttachmentModifier>)> and conformance TupleView<A>, &_s7SwiftUI9TupleViewVyAA15ModifiedContentVyAA6ButtonVyAA4TextVGAA31AccessibilityAttachmentModifierVG_AMtGMd);
    v153 = v135;
    v154 = v105;
    v155 = v134;
    v156 = v106;
    v157 = v108;
    v158 = v103;
    v159 = v109;
    v160 = v107;
    v110 = swift_getOpaqueTypeConformance2();
    v153 = v136;
    v154 = v95;
    v155 = v110;
    v156 = v96;
    swift_getOpaqueTypeConformance2();
    v111 = v145;
    v112 = v151;
    View.sheet<A>(isPresented:onDismiss:content:)();

    outlined destroy of ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<MetricPlattersView, _BackgroundStyleModifier<Color>>, _FlexFrameLayout>, _OpacityEffect>, _PaddingLayout>, _AppearanceActionModifier>(v112, &_s7SwiftUI15ModifiedContentVyACyACyACyACy07WorkoutB018MetricPlattersViewVAA24_BackgroundStyleModifierVyAA5ColorVGGAA16_FlexFrameLayoutVGAA14_OpacityEffectVGAA08_PaddingO0VGAA017_AppearanceActionK0VGMd);
    v113 = *(v53 + *(v152 + 56));
    swift_getKeyPath();
    v153 = v113;
    _s11WorkoutCore19LowPowerModeMonitorCAC7Combine16ObservableObjectAAWlTm_2(&lazy protocol witness table cache variable for type LowPowerViewModel and conformance LowPowerViewModel, type metadata accessor for LowPowerViewModel);
    ObservationRegistrar.access<A, B>(_:keyPath:)();

    v114 = 0;
    v115 = 0;
    v116 = 0;
    if (*(v113 + 16) == 1)
    {
      type metadata accessor for LowPowerModeMonitor();
      _s11WorkoutCore19LowPowerModeMonitorCAC7Combine16ObservableObjectAAWlTm_2(&lazy protocol witness table cache variable for type LowPowerModeMonitor and conformance LowPowerModeMonitor, MEMORY[0x277D7E2F8]);

      v114 = ObservedObject.init(wrappedValue:)();
      v115 = v117;

      v116 = v113;
    }

    v118 = v147;
    v119 = *(v147 + 16);
    v120 = v146;
    v121 = v148;
    v119(v146, v111, v148);
    v122 = v149;
    v119(v149, v120, v121);
    v123 = &v122[*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI4ViewPAAE5sheet11isPresented9onDismiss7contentQrAA7BindingVySbG_yycSgqd__yctAaBRd__lFQOyAA15ModifiedContentVyAMyAMyAMyAMy07WorkoutB0014MetricPlattersC0VAA24_BackgroundStyleModifierVyAA5ColorVGGAA16_FlexFrameLayoutVGAA14_OpacityEffectVGAA08_PaddingV0VGAA017_AppearanceActionR0VG_AcAE0G6Change2of7initial_Qrqd___Sbyqd___qd__tctSQRd__lFQOyAcAE5alert_AE7actions7messageQrqd___AJqd_0_yXEqd_1_yXEtSyRd__AaBRd_0_AaBRd_1_r1_lFQOyAcAEA10__AEA11_A12_Qrqd___AJqd_0_yXEqd_1_yXEtSyRd__AaBRd_0_AaBRd_1_r1_lFQOyAcAEA7_A8_A9__Qrqd___Sbyqd___qd__tctSQRd__lFQOyAcAEA7_A8_A9__Qrqd___Sbyqd___qd__tctSQRd__lFQOyAcAEA7_A8_A9__Qrqd___SbyyctSQRd__lFQOyAcAEA7_A8_A9__Qrqd___SbyyctSQRd__lFQOyAcAEA7_A8_A9__Qrqd___SbyyctSQRd__lFQOyAcAE19presentationDetents_9selectionQrShyAA18PresentationDetentVG_AIyA16_GtFQOyAMyAN20SessionControlsSheetVAXG_Qo__A16_Qo__SbQo__SbQo__0M4Core0M19BuddyStatePublisherC5StateOQo__So21NLWorkoutPausedReasonVQo__SSAMyAA6ButtonVyAA4TextVGAA023AccessibilityAttachmentR0VGA38_Qo__SSAA05TupleC0VyA42__A42_tGA38_Qo__SbQo_Qo__AN24LowPowerInSessionOverlayVSgtMd) + 48)];
    outlined copy of LowPowerInSessionOverlay?(v114, v115);
    outlined consume of LowPowerInSessionOverlay?(v114, v115);
    *v123 = v114;
    v123[1] = v115;
    v123[2] = v116;
    v124 = *(v118 + 8);
    v124(v111, v121);
    outlined consume of LowPowerInSessionOverlay?(v114, v115);
    return (v124)(v120, v121);
  }

  else
  {

    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  return result;
}

uint64_t closure #1 in closure #1 in InSessionView.body.getter()
{
  Transaction.disablesAnimations.setter();
  withTransaction<A>(_:_:)();
}

uint64_t closure #2 in closure #1 in InSessionView.body.getter(uint64_t a1)
{
  v2 = type metadata accessor for DispatchWorkItemFlags();
  v17 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v4 = &v16 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = type metadata accessor for DispatchQoS();
  v5 = *(v16 - 8);
  MEMORY[0x28223BE20](v16);
  v7 = &v16 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for InSessionView();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8 - 8);
  _sSo21FIUIFormattingManagerCMaTm_14(0, &lazy cache variable for type metadata for OS_dispatch_queue);
  v11 = static OS_dispatch_queue.main.getter();
  outlined init with copy of InSessionView(a1, &v16 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  v12 = (*(v9 + 80) + 16) & ~*(v9 + 80);
  v13 = swift_allocObject();
  outlined init with take of InSessionView(&v16 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0), v13 + v12, type metadata accessor for InSessionView);
  aBlock[4] = partial apply for closure #1 in closure #2 in closure #1 in InSessionView.body.getter;
  aBlock[5] = v13;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = thunk for @escaping @callee_guaranteed () -> ();
  aBlock[3] = &block_descriptor_40;
  v14 = _Block_copy(aBlock);

  static DispatchQoS.unspecified.getter();
  aBlock[0] = MEMORY[0x277D84F90];
  _s11WorkoutCore19LowPowerModeMonitorCAC7Combine16ObservableObjectAAWlTm_2(&lazy protocol witness table cache variable for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags, MEMORY[0x277D85198]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay8Dispatch0A13WorkItemFlagsVGMd);
  lazy protocol witness table accessor for type ZStack<TupleView<(<<opaque return type of View.sheet<A>(isPresented:onDismiss:content:)>>.0, LowPowerInSessionOverlay?)>> and conformance ZStack<A>(&lazy protocol witness table cache variable for type [DispatchWorkItemFlags] and conformance [A], &_sSay8Dispatch0A13WorkItemFlagsVGMd);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  MEMORY[0x20F30C1F0](0, v7, v4, v14);
  _Block_release(v14);

  (*(v17 + 8))(v4, v2);
  return (*(v5 + 8))(v7, v16);
}

uint64_t closure #1 in closure #1 in closure #1 in InSessionView.body.getter()
{
  type metadata accessor for InSessionView();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI5StateVySbGMd);
  return State.wrappedValue.setter();
}

uint64_t closure #3 in closure #1 in InSessionView.body.getter@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v157 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI8BindableVy07WorkoutB016SessionViewModelCGMd);
  v156 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v155 = v127 - v4;
  v147 = type metadata accessor for WorkoutBuddyStatePublisher.State();
  v145 = *(v147 - 8);
  MEMORY[0x28223BE20](v147);
  v144 = v127 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for InSessionView();
  v159 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v174 = v7;
  v175 = v127 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v165 = type metadata accessor for PresentationDetent();
  v128 = *(v165 - 1);
  v129 = v165 - 1;
  v171 = v128;
  MEMORY[0x28223BE20](v165 - 1);
  v133 = v127 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI7BindingVyAA18PresentationDetentVGMd);
  MEMORY[0x28223BE20](v9 - 8);
  v130 = v127 - v10;
  v11 = type metadata accessor for SessionControlsSheet();
  v12 = (v11 - 8);
  MEMORY[0x28223BE20](v11);
  v14 = v127 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  OpaqueTypeConformance2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVy07WorkoutB020SessionControlsSheetVAA16_FlexFrameLayoutVGMd);
  MEMORY[0x28223BE20](OpaqueTypeConformance2);
  v173 = (v127 - v15);
  v134 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI4ViewPAAE19presentationDetents_9selectionQrShyAA18PresentationDetentVG_AA7BindingVyAGGtFQOyAA15ModifiedContentVy07WorkoutB020SessionControlsSheetVAA16_FlexFrameLayoutVG_Qo_Md);
  v132 = *(v134 - 8);
  MEMORY[0x28223BE20](v134);
  v131 = v127 - v16;
  v137 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI4ViewPAAE8onChange2of7initial_Qrqd___SbyyctSQRd__lFQOyAcAE19presentationDetents_9selectionQrShyAA18PresentationDetentVG_AA7BindingVyAJGtFQOyAA15ModifiedContentVy07WorkoutB020SessionControlsSheetVAA16_FlexFrameLayoutVG_Qo__AJQo_Md);
  v135 = *(v137 - 8);
  MEMORY[0x28223BE20](v137);
  v164 = v127 - v17;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI4ViewPAAE8onChange2of7initial_Qrqd___SbyyctSQRd__lFQOyAcAEAdeF_Qrqd___SbyyctSQRd__lFQOyAcAE19presentationDetents_9selectionQrShyAA18PresentationDetentVG_AA7BindingVyAJGtFQOyAA15ModifiedContentVy07WorkoutB020SessionControlsSheetVAA16_FlexFrameLayoutVG_Qo__AJQo__SbQo_Md);
  v138 = *(v18 - 8);
  v139 = v18;
  MEMORY[0x28223BE20](v18);
  v136 = v127 - v19;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI4ViewPAAE8onChange2of7initial_Qrqd___SbyyctSQRd__lFQOyAcAEAdeF_Qrqd___SbyyctSQRd__lFQOyAcAEAdeF_Qrqd___SbyyctSQRd__lFQOyAcAE19presentationDetents_9selectionQrShyAA18PresentationDetentVG_AA7BindingVyAJGtFQOyAA15ModifiedContentVy07WorkoutB020SessionControlsSheetVAA16_FlexFrameLayoutVG_Qo__AJQo__SbQo__SbQo_Md);
  v140 = *(v20 - 8);
  v141 = v20;
  MEMORY[0x28223BE20](v20);
  object = v127 - v21;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI4ViewPAAE8onChange2of7initial_Qrqd___Sbyqd___qd__tctSQRd__lFQOyAcAEAdeF_Qrqd___SbyyctSQRd__lFQOyAcAEAdeF_Qrqd___SbyyctSQRd__lFQOyAcAEAdeF_Qrqd___SbyyctSQRd__lFQOyAcAE19presentationDetents_9selectionQrShyAA18PresentationDetentVG_AA7BindingVyAJGtFQOyAA15ModifiedContentVy07WorkoutB020SessionControlsSheetVAA16_FlexFrameLayoutVG_Qo__AJQo__SbQo__SbQo__0P4Core0P19BuddyStatePublisherC0Y0OQo_Md);
  v142 = *(v22 - 8);
  v143 = v22;
  MEMORY[0x28223BE20](v22);
  v167 = v127 - v23;
  v149 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI4ViewPAAE8onChange2of7initial_Qrqd___Sbyqd___qd__tctSQRd__lFQOyAcAEAdeF_Qrqd___Sbyqd___qd__tctSQRd__lFQOyAcAEAdeF_Qrqd___SbyyctSQRd__lFQOyAcAEAdeF_Qrqd___SbyyctSQRd__lFQOyAcAEAdeF_Qrqd___SbyyctSQRd__lFQOyAcAE19presentationDetents_9selectionQrShyAA18PresentationDetentVG_AA7BindingVyAJGtFQOyAA15ModifiedContentVy07WorkoutB020SessionControlsSheetVAA16_FlexFrameLayoutVG_Qo__AJQo__SbQo__SbQo__0P4Core0P19BuddyStatePublisherC0Y0OQo__So21NLWorkoutPausedReasonVQo_Md);
  v146 = *(v149 - 8);
  MEMORY[0x28223BE20](v149);
  v168 = v127 - v24;
  v152 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI4ViewPAAE5alert_11isPresented7actions7messageQrqd___AA7BindingVySbGqd_0_yXEqd_1_yXEtSyRd__AaBRd_0_AaBRd_1_r1_lFQOyAcAE8onChange2of7initial_Qrqd___Sbyqd___qd__tctSQRd__lFQOyAcAEAklM_Qrqd___Sbyqd___qd__tctSQRd__lFQOyAcAEAklM_Qrqd___SbyyctSQRd__lFQOyAcAEAklM_Qrqd___SbyyctSQRd__lFQOyAcAEAklM_Qrqd___SbyyctSQRd__lFQOyAcAE19presentationDetents_9selectionQrShyAA18PresentationDetentVG_AIyAQGtFQOyAA15ModifiedContentVy07WorkoutB020SessionControlsSheetVAA16_FlexFrameLayoutVG_Qo__AQQo__SbQo__SbQo__0U4Core0U19BuddyStatePublisherC5StateOQo__So21NLWorkoutPausedReasonVQo__SSAUyAA6ButtonVyAA4TextVGAA31AccessibilityAttachmentModifierVGA16_Qo_Md);
  v150 = *(v152 - 8);
  MEMORY[0x28223BE20](v152);
  v169 = v127 - v25;
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI4ViewPAAE5alert_11isPresented7actions7messageQrqd___AA7BindingVySbGqd_0_yXEqd_1_yXEtSyRd__AaBRd_0_AaBRd_1_r1_lFQOyAcAEAD_AefGQrqd___AJqd_0_yXEqd_1_yXEtSyRd__AaBRd_0_AaBRd_1_r1_lFQOyAcAE8onChange2of7initial_Qrqd___Sbyqd___qd__tctSQRd__lFQOyAcAEAklM_Qrqd___Sbyqd___qd__tctSQRd__lFQOyAcAEAklM_Qrqd___SbyyctSQRd__lFQOyAcAEAklM_Qrqd___SbyyctSQRd__lFQOyAcAEAklM_Qrqd___SbyyctSQRd__lFQOyAcAE19presentationDetents_9selectionQrShyAA18PresentationDetentVG_AIyAQGtFQOyAA15ModifiedContentVy07WorkoutB020SessionControlsSheetVAA16_FlexFrameLayoutVG_Qo__AQQo__SbQo__SbQo__0U4Core0U19BuddyStatePublisherC5StateOQo__So21NLWorkoutPausedReasonVQo__SSAUyAA6ButtonVyAA4TextVGAA31AccessibilityAttachmentModifierVGA16_Qo__SSAA05TupleC0VyA20__A20_tGA16_Qo_Md);
  v153 = *(v26 - 8);
  v154 = v26;
  MEMORY[0x28223BE20](v26);
  v151 = v127 - v27;
  LOBYTE(v179) = 1;
  static Binding.constant(_:)();
  v28 = v191;
  v29 = v192;
  v158 = v6;
  v30 = a1 + *(v6 + 48);
  v170 = v3;
  v172 = v30;
  Bindable.wrappedValue.getter();
  v31 = a1[14];
  v161 = a1[15];
  v162 = v31;
  v179 = v31;
  v180 = v161;
  v160 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI5StateVy07WorkoutB0015SessionControlsC0CGMd);
  State.wrappedValue.getter();
  v32 = a1[2];
  v33 = v12[10];
  v176 = a1;
  outlined init with copy of SessionControls((a1 + 9), &v14[v33]);
  *v14 = v28;
  v14[16] = v29;
  type metadata accessor for SessionViewModel();
  v34 = _s11WorkoutCore19LowPowerModeMonitorCAC7Combine16ObservableObjectAAWlTm_2(&lazy protocol witness table cache variable for type SessionViewModel and conformance SessionViewModel, type metadata accessor for SessionViewModel);
  v35 = v32;
  v148 = v34;
  Bindable<A>.init(wrappedValue:)();
  type metadata accessor for SessionControlsState();
  v36 = _s11WorkoutCore19LowPowerModeMonitorCAC7Combine16ObservableObjectAAWlTm_2(&lazy protocol witness table cache variable for type SessionControlsState and conformance SessionControlsState, type metadata accessor for SessionControlsState);
  Bindable<A>.init(wrappedValue:)();
  *&v14[v12[9]] = v35;
  v37 = &v14[v12[11]];
  LOBYTE(v190) = 0;
  State.init(wrappedValue:)();
  v38 = v180;
  *v37 = v179;
  *(v37 + 1) = v38;
  v39 = &v14[v12[12]];
  LOBYTE(v190) = 0;
  State.init(wrappedValue:)();
  v40 = v180;
  *v39 = v179;
  *(v39 + 1) = v40;
  v41 = &v14[v12[13]];
  LOBYTE(v190) = 0;
  State.init(wrappedValue:)();
  v42 = v180;
  *v41 = v179;
  *(v41 + 1) = v42;
  static Alignment.top.getter();
  _FlexFrameLayout.init(minWidth:idealWidth:maxWidth:minHeight:idealHeight:maxHeight:alignment:)();
  v43 = v173;
  outlined init with take of InSessionView(v14, v173, type metadata accessor for SessionControlsSheet);
  v44 = (v43 + *(OpaqueTypeConformance2 + 36));
  v45 = v196;
  v44[4] = v195;
  v44[5] = v45;
  v44[6] = v197;
  v46 = v192;
  *v44 = v191;
  v44[1] = v46;
  v47 = v194;
  v44[2] = v193;
  v44[3] = v47;
  v179 = v162;
  v180 = v161;
  State.wrappedValue.getter();
  v48 = v190;
  swift_getKeyPath();
  v179 = v48;
  v127[1] = v36;
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  swift_beginAccess();
  LODWORD(v43) = *(v48 + 17);

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy7SwiftUI18PresentationDetentVGMd);
  v49 = (*(v171 + 80) + 32) & ~*(v171 + 80);
  if (v43 == 1)
  {
    v50 = swift_allocObject();
    *(v50 + 16) = xmmword_20CB5DA70;
    v51 = v176;
    static PresentationDetent.height(_:)();
    _sSh21_nonEmptyArrayLiteralShyxGSayxG_tcfC7SwiftUI18PresentationDetentV_Tt0g5Tf4g_n(v50);
    swift_setDeallocating();
    (*(v171 + 8))(v50 + v49, v165);
  }

  else
  {
    v52 = swift_allocObject();
    *(v52 + 16) = xmmword_20CB5DA80;
    v51 = v176;
    static PresentationDetent.height(_:)();
    static PresentationDetent.height(_:)();
    _sSh21_nonEmptyArrayLiteralShyxGSayxG_tcfC7SwiftUI18PresentationDetentV_Tt0g5Tf4g_n(v52);
    swift_setDeallocating();
    swift_arrayDestroy();
  }

  swift_deallocClassInstance();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI5StateVyAA18PresentationDetentVGMd);
  v53 = v130;
  State.projectedValue.getter();
  v54 = lazy protocol witness table accessor for type ModifiedContent<SessionControlsSheet, _FlexFrameLayout> and conformance <> ModifiedContent<A, B>();
  v55 = v131;
  v56 = OpaqueTypeConformance2;
  v57 = v173;
  View.presentationDetents(_:selection:)();

  outlined destroy of ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<MetricPlattersView, _BackgroundStyleModifier<Color>>, _FlexFrameLayout>, _OpacityEffect>, _PaddingLayout>, _AppearanceActionModifier>(v53, &_s7SwiftUI7BindingVyAA18PresentationDetentVGMd);
  outlined destroy of ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<MetricPlattersView, _BackgroundStyleModifier<Color>>, _FlexFrameLayout>, _OpacityEffect>, _PaddingLayout>, _AppearanceActionModifier>(v57, &_s7SwiftUI15ModifiedContentVy07WorkoutB020SessionControlsSheetVAA16_FlexFrameLayoutVGMd);
  v58 = v133;
  State.wrappedValue.getter();
  v59 = v175;
  outlined init with copy of InSessionView(v51, v175);
  v159 = *(v159 + 80);
  v60 = (v159 + 16) & ~v159;
  v173 = v60;
  v61 = swift_allocObject();
  v158 = type metadata accessor for InSessionView;
  outlined init with take of InSessionView(v59, v61 + v60, type metadata accessor for InSessionView);
  v179 = v56;
  v180 = v54;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v130 = _s11WorkoutCore19LowPowerModeMonitorCAC7Combine16ObservableObjectAAWlTm_2(&lazy protocol witness table cache variable for type PresentationDetent and conformance PresentationDetent, MEMORY[0x277CDDE90]);
  v62 = v165;
  v63 = v134;
  View.onChange<A>(of:initial:_:)();

  (*(v171 + 8))(v58, v62);
  (*(v132 + 8))(v55, v63);
  v179 = v162;
  v180 = v161;
  State.wrappedValue.getter();
  v64 = v189;
  swift_getKeyPath();
  v179 = v64;
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  swift_beginAccess();
  LOBYTE(v59) = *(v64 + 16);

  LOBYTE(v188) = v59;
  v65 = v175;
  outlined init with copy of InSessionView(v51, v175);
  v66 = v173;
  v67 = swift_allocObject();
  v68 = v158;
  outlined init with take of InSessionView(v65, v67 + v66, v158);
  v179 = v63;
  v180 = v62;
  v181 = OpaqueTypeConformance2;
  v182 = v130;
  v171 = MEMORY[0x277CE0E40];
  v69 = swift_getOpaqueTypeConformance2();
  v71 = v136;
  v70 = v137;
  v72 = v164;
  View.onChange<A>(of:initial:_:)();

  (*(v135 + 8))(v72, v70);
  v73 = v176;
  v165 = v176[4];
  LOBYTE(v188) = WorkoutStatePublisher.workoutPaused.getter() & 1;
  v74 = v175;
  outlined init with copy of InSessionView(v73, v175);
  v75 = v173;
  v76 = swift_allocObject() + v75;
  v77 = v74;
  v78 = v68;
  outlined init with take of InSessionView(v77, v76, v68);
  v179 = v70;
  v180 = MEMORY[0x277D839B0];
  v181 = v69;
  v182 = MEMORY[0x277D839C8];
  v79 = swift_getOpaqueTypeConformance2();
  v80 = v139;
  View.onChange<A>(of:initial:_:)();

  (*(v138 + 8))(v71, v80);
  v81 = v73;
  v82 = v144;
  WorkoutBuddyStatePublisher.state.getter();
  v83 = v81;
  v84 = v175;
  outlined init with copy of InSessionView(v83, v175);
  v85 = v173;
  v86 = swift_allocObject();
  v87 = v84;
  outlined init with take of InSessionView(v84, v86 + v85, v78);
  v179 = v80;
  v180 = MEMORY[0x277D839B0];
  v181 = v79;
  v182 = MEMORY[0x277D839C8];
  v88 = swift_getOpaqueTypeConformance2();
  v89 = _s11WorkoutCore19LowPowerModeMonitorCAC7Combine16ObservableObjectAAWlTm_2(&lazy protocol witness table cache variable for type WorkoutBuddyStatePublisher.State and conformance WorkoutBuddyStatePublisher.State, MEMORY[0x277D7DBB0]);
  v90 = object;
  v91 = v141;
  v92 = v147;
  View.onChange<A>(of:initial:_:)();

  (*(v145 + 8))(v82, v92);
  (*(v140 + 8))(v90, v91);
  v188 = WorkoutStatePublisher.pausedReasons.getter();
  outlined init with copy of InSessionView(v176, v87);
  v93 = v173;
  v94 = swift_allocObject();
  outlined init with take of InSessionView(v87, v94 + v93, v158);
  type metadata accessor for NLWorkoutPausedReason(0);
  v96 = v95;
  v179 = v91;
  v180 = v92;
  v181 = v88;
  v182 = v89;
  v97 = swift_getOpaqueTypeConformance2();
  v98 = _s11WorkoutCore19LowPowerModeMonitorCAC7Combine16ObservableObjectAAWlTm_2(&lazy protocol witness table cache variable for type NLWorkoutPausedReason and conformance NLWorkoutPausedReason, type metadata accessor for NLWorkoutPausedReason);
  v99 = v143;
  v174 = v97;
  v175 = v96;
  v171 = v98;
  v100 = v167;
  View.onChange<A>(of:initial:_:)();

  (*(v142 + 8))(v100, v99);
  if (one-time initialization token for WorkoutUIBundle != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v101 = WorkoutUIBundle.super.isa;
  v198._object = 0xE000000000000000;
  v102.value._countAndFlagsBits = 0x617A696C61636F4CLL;
  v102.value._object = 0xEB00000000656C62;
  v103._countAndFlagsBits = 0xD000000000000021;
  v103._object = 0x800000020CBA4020;
  v104._countAndFlagsBits = 0;
  v104._object = 0xE000000000000000;
  v198._countAndFlagsBits = 0;
  v105 = NSLocalizedString(_:tableName:bundle:value:comment:)(v103, v102, v101, v104, v198);
  object = v105._object;

  v187 = v105;
  v106 = v155;
  v107 = v170;
  Bindable.projectedValue.getter();
  swift_getKeyPath();
  Bindable<A>.subscript.getter();

  v173 = *(v156 + 8);
  v108 = v173(v106, v107);
  v165 = v127;
  LODWORD(v164) = v178;
  MEMORY[0x28223BE20](v108);
  v167 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyAA6ButtonVyAA4TextVGAA31AccessibilityAttachmentModifierVGMd);
  v179 = v99;
  v180 = v175;
  v181 = v174;
  v182 = v171;
  v171 = swift_getOpaqueTypeConformance2();
  v175 = lazy protocol witness table accessor for type String and conformance String();
  v174 = lazy protocol witness table accessor for type ModifiedContent<Button<Text>, AccessibilityAttachmentModifier> and conformance <> ModifiedContent<A, B>();
  v109 = v149;
  v110 = v168;
  View.alert<A, B, C>(_:isPresented:actions:message:)();

  (*(v146 + 8))(v110, v109);
  v111 = WorkoutUIBundle.super.isa;
  v199._object = 0xE000000000000000;
  v112._countAndFlagsBits = 0xD000000000000022;
  v112._object = 0x800000020CBA4050;
  v113.value._object = 0x800000020CB936F0;
  v113.value._countAndFlagsBits = 0xD000000000000012;
  v114._countAndFlagsBits = 0;
  v114._object = 0xE000000000000000;
  v199._countAndFlagsBits = 0;
  v115 = NSLocalizedString(_:tableName:bundle:value:comment:)(v112, v113, v111, v114, v199);
  v168 = v115._object;

  v187 = v115;
  Bindable.projectedValue.getter();
  swift_getKeyPath();
  Bindable<A>.subscript.getter();

  v116 = v173(v106, v107);
  v173 = v127;
  v165 = v177;
  LODWORD(object) = v178;
  MEMORY[0x28223BE20](v116);
  v117 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI9TupleViewVyAA15ModifiedContentVyAA6ButtonVyAA4TextVGAA31AccessibilityAttachmentModifierVG_AMtGMd);
  v179 = v109;
  v118 = MEMORY[0x277D837D0];
  v180 = MEMORY[0x277D837D0];
  v181 = v167;
  v182 = MEMORY[0x277CE0BD8];
  v183 = v171;
  v184 = v175;
  v185 = v174;
  v186 = MEMORY[0x277CE0BC8];
  v176 = MEMORY[0x277CDEDF8];
  v174 = swift_getOpaqueTypeConformance2();
  v126 = lazy protocol witness table accessor for type ZStack<TupleView<(<<opaque return type of View.sheet<A>(isPresented:onDismiss:content:)>>.0, LowPowerInSessionOverlay?)>> and conformance ZStack<A>(&lazy protocol witness table cache variable for type TupleView<(ModifiedContent<Button<Text>, AccessibilityAttachmentModifier>, ModifiedContent<Button<Text>, AccessibilityAttachmentModifier>)> and conformance TupleView<A>, &_s7SwiftUI9TupleViewVyAA15ModifiedContentVyAA6ButtonVyAA4TextVGAA31AccessibilityAttachmentModifierVG_AMtGMd);
  v119 = v152;
  v120 = v151;
  v121 = v169;
  View.alert<A, B, C>(_:isPresented:actions:message:)();

  (*(v150 + 8))(v121, v119);
  Bindable.wrappedValue.getter();
  v122 = v179;
  swift_getKeyPath();
  v179 = v122;
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v123 = OBJC_IVAR____TtC9WorkoutUI16SessionViewModel__showHeartRateDeviceDisconnectedAlert;
  swift_beginAccess();
  LOBYTE(v123) = *(v122 + v123);

  LOBYTE(v187._countAndFlagsBits) = v123;
  v179 = v119;
  v180 = v118;
  v181 = v117;
  v182 = MEMORY[0x277CE0BD8];
  v183 = v174;
  v184 = v175;
  v185 = v126;
  v186 = MEMORY[0x277CE0BC8];
  swift_getOpaqueTypeConformance2();
  v124 = v154;
  View.onChange<A>(of:initial:_:)();
  return (*(v153 + 8))(v120, v124);
}

uint64_t closure #1 in closure #3 in closure #1 in InSessionView.body.getter(uint64_t a1)
{
  v2 = type metadata accessor for PresentationDetent();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v16[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v6);
  v8 = &v16[-v7];
  type metadata accessor for InSessionView();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI5StateVyAA18PresentationDetentVGMd);
  State.wrappedValue.getter();
  static PresentationDetent.height(_:)();
  v9 = MEMORY[0x20F309460](v8, v5);
  v10 = *(v3 + 8);
  v10(v5, v2);
  v10(v8, v2);
  v11 = *(a1 + 120);
  v17 = *(a1 + 112);
  v18 = v11;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI5StateVy07WorkoutB0015SessionControlsC0CGMd);
  State.wrappedValue.getter();
  v12 = v19;
  swift_getKeyPath();
  v17 = v12;
  _s11WorkoutCore19LowPowerModeMonitorCAC7Combine16ObservableObjectAAWlTm_2(&lazy protocol witness table cache variable for type SessionControlsState and conformance SessionControlsState, type metadata accessor for SessionControlsState);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  swift_beginAccess();
  v13 = *(v12 + 16);

  if ((v9 & 1) == v13)
  {
    v15 = static Animation.easeInOut.getter();
    MEMORY[0x28223BE20](v15);
    *&v16[-16] = a1;
    v16[-8] = (v9 & 1) == 0;
    withAnimation<A>(_:_:)();
  }

  return result;
}

uint64_t closure #1 in closure #1 in closure #3 in closure #1 in InSessionView.body.getter(uint64_t a1, char a2)
{
  v2 = a2 & 1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI5StateVy07WorkoutB0015SessionControlsC0CGMd);
  State.wrappedValue.getter();
  swift_beginAccess();
  if (*(v5 + 16) == v2)
  {
    *(v5 + 16) = v2;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath);
    _s11WorkoutCore19LowPowerModeMonitorCAC7Combine16ObservableObjectAAWlTm_2(&lazy protocol witness table cache variable for type SessionControlsState and conformance SessionControlsState, type metadata accessor for SessionControlsState);
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
  }
}

uint64_t closure #2 in closure #3 in closure #1 in InSessionView.body.getter(uint64_t a1)
{
  v2 = type metadata accessor for PresentationDetent();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v15[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v6);
  v8 = &v15[-v7];
  v9 = *(a1 + 120);
  v16 = *(a1 + 112);
  v17 = v9;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI5StateVy07WorkoutB0015SessionControlsC0CGMd);
  State.wrappedValue.getter();
  v10 = v18;
  swift_getKeyPath();
  v16 = v10;
  _s11WorkoutCore19LowPowerModeMonitorCAC7Combine16ObservableObjectAAWlTm_2(&lazy protocol witness table cache variable for type SessionControlsState and conformance SessionControlsState, type metadata accessor for SessionControlsState);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  swift_beginAccess();

  type metadata accessor for InSessionView();
  static PresentationDetent.height(_:)();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI5StateVyAA18PresentationDetentVGMd);
  State.wrappedValue.getter();
  _s11WorkoutCore19LowPowerModeMonitorCAC7Combine16ObservableObjectAAWlTm_2(&lazy protocol witness table cache variable for type PresentationDetent and conformance PresentationDetent, MEMORY[0x277CDDE90]);
  v11 = dispatch thunk of static Equatable.== infix(_:_:)();
  v12 = *(v3 + 8);
  v12(v5, v2);
  if ((v11 & 1) == 0)
  {
    v13 = static Animation.easeInOut.getter();
    MEMORY[0x28223BE20](v13);
    *&v15[-16] = a1;
    *&v15[-8] = v8;
    withAnimation<A>(_:_:)();
  }

  return (v12)(v8, v2);
}

uint64_t closure #1 in closure #2 in closure #3 in closure #1 in InSessionView.body.getter(uint64_t a1, uint64_t a2)
{
  v3 = type metadata accessor for PresentationDetent();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = v13 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = MEMORY[0x28223BE20](v7);
  v10 = v13 - v9;
  v11 = *(v4 + 16);
  v11(v13 - v9, a2, v3, v8);
  type metadata accessor for InSessionView();
  (v11)(v6, v10, v3);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI5StateVyAA18PresentationDetentVGMd);
  State.wrappedValue.setter();
  return (*(v4 + 8))(v10, v3);
}

uint64_t closure #3 in closure #3 in closure #1 in InSessionView.body.getter()
{
  v0 = type metadata accessor for PresentationDetent();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v8 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v6 = &v8 - v5;
  MetricsPublisher.workoutStatePublisher.getter();
  WorkoutStatePublisher.workoutPaused.getter();

  type metadata accessor for InSessionView();
  static PresentationDetent.height(_:)();
  type metadata accessor for InSessionView();
  (*(v1 + 16))(v3, v6, v0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI5StateVyAA18PresentationDetentVGMd);
  State.wrappedValue.setter();
  return (*(v1 + 8))(v6, v0);
}

uint64_t closure #4 in closure #3 in closure #1 in InSessionView.body.getter(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v25 = a3;
  v4 = type metadata accessor for WorkoutBuddyStatePublisher.State();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v24 = &v21 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v9 = &v21 - v8;
  v22 = type metadata accessor for Logger();
  v10 = *(v22 - 8);
  MEMORY[0x28223BE20](v22);
  v12 = &v21 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  static WOLog.workoutVoice.getter();
  v23 = *(v5 + 16);
  v23(v9, a2, v4);
  v13 = Logger.logObject.getter();
  v14 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    v21 = a2;
    v16 = v15;
    *v15 = 134217984;
    v17 = WorkoutBuddyStatePublisher.State.rawValue.getter();
    (*(v5 + 8))(v9, v4);
    *(v16 + 1) = v17;
    _os_log_impl(&dword_20C66F000, v13, v14, "Workout Buddy state changed to %ld. Updating SessionViewModel", v16, 0xCu);
    v18 = v16;
    a2 = v21;
    MEMORY[0x20F30E080](v18, -1, -1);
  }

  else
  {
    (*(v5 + 8))(v9, v4);
  }

  (*(v10 + 8))(v12, v22);
  type metadata accessor for InSessionView();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI8BindableVy07WorkoutB016SessionViewModelCGMd);
  Bindable.wrappedValue.getter();
  v19 = v24;
  v23(v24, a2, v4);
  SessionViewModel.workoutBuddyState.setter(v19);
}

uint64_t closure #5 in closure #3 in closure #1 in InSessionView.body.getter(uint64_t a1, uint64_t *a2)
{
  v2 = *a2;
  type metadata accessor for InSessionView();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI8BindableVy07WorkoutB016SessionViewModelCGMd);
  Bindable.wrappedValue.getter();
  v3 = WorkoutStatePublisher.workoutPaused.getter() & ((v2 & 4) != 0);
  v4 = OBJC_IVAR____TtC9WorkoutUI16SessionViewModel__showHeartRateDeviceDisconnectedAlert;
  swift_beginAccess();
  if (v3 == *(v7 + v4))
  {
    *(v7 + v4) = v3;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath);
    _s11WorkoutCore19LowPowerModeMonitorCAC7Combine16ObservableObjectAAWlTm_2(&lazy protocol witness table cache variable for type SessionViewModel and conformance SessionViewModel, type metadata accessor for SessionViewModel);
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
  }
}

uint64_t closure #6 in closure #3 in closure #1 in InSessionView.body.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v22 = a1;
  v23 = a2;
  v2 = type metadata accessor for InSessionView();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI10ButtonRoleVSgMd);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v21 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI6ButtonVyAA4TextVGMd);
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v21 - v10;
  if (one-time initialization token for WorkoutUIBundle != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v12 = WorkoutUIBundle.super.isa;
  v25._object = 0xE000000000000000;
  v13.value._countAndFlagsBits = 0x617A696C61636F4CLL;
  v13.value._object = 0xEB00000000656C62;
  v14._object = 0x800000020CBA40D0;
  v14._countAndFlagsBits = 0xD000000000000028;
  v15._countAndFlagsBits = 0;
  v15._object = 0xE000000000000000;
  v25._countAndFlagsBits = 0;
  v16 = NSLocalizedString(_:tableName:bundle:value:comment:)(v14, v13, v12, v15, v25);

  v24 = v16;
  static ButtonRole.cancel.getter();
  v17 = type metadata accessor for ButtonRole();
  (*(*(v17 - 8) + 56))(v7, 0, 1, v17);
  outlined init with copy of InSessionView(v22, &v21 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v18 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v19 = swift_allocObject();
  outlined init with take of InSessionView(&v21 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), v19 + v18, type metadata accessor for InSessionView);
  lazy protocol witness table accessor for type String and conformance String();
  Button<>.init<A>(_:role:action:)();
  if (one-time initialization token for endWorkout != -1)
  {
    swift_once();
  }

  lazy protocol witness table accessor for type ZStack<TupleView<(<<opaque return type of View.sheet<A>(isPresented:onDismiss:content:)>>.0, LowPowerInSessionOverlay?)>> and conformance ZStack<A>(&lazy protocol witness table cache variable for type Button<Text> and conformance Button<A>, &_s7SwiftUI6ButtonVyAA4TextVGMd);
  View.accessibilityIdentifier(_:)();
  return (*(v9 + 8))(v11, v8);
}

uint64_t closure #1 in closure #6 in closure #3 in closure #1 in InSessionView.body.getter()
{
  type metadata accessor for InSessionView();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI8BindableVy07WorkoutB016SessionViewModelCGMd);
  Bindable.wrappedValue.getter();
  swift_getKeyPath();
  _s11WorkoutCore19LowPowerModeMonitorCAC7Combine16ObservableObjectAAWlTm_2(&lazy protocol witness table cache variable for type SessionViewModel and conformance SessionViewModel, type metadata accessor for SessionViewModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v0 = (v7 + OBJC_IVAR____TtC9WorkoutUI16SessionViewModel__mirroredEndWorkoutTimeoutAlertDismissed);
  swift_beginAccess();
  v1 = *v0;
  outlined copy of (@escaping @callee_guaranteed () -> ())?(*v0);

  if (v1)
  {
    v1(v2);
    outlined consume of (@escaping @callee_guaranteed () -> ())?(v1);
  }

  Bindable.wrappedValue.getter();
  v3 = OBJC_IVAR____TtC9WorkoutUI16SessionViewModel__mirroredEndWorkoutTimeoutAlert;
  swift_beginAccess();
  if (*(v6 + v3))
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath);
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
  }

  else
  {
    *(v6 + v3) = 0;
  }
}

uint64_t closure #7 in closure #3 in closure #1 in InSessionView.body.getter@<X0>(uint64_t a1@<X8>)
{
  if (one-time initialization token for WorkoutUIBundle != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v2 = WorkoutUIBundle.super.isa;
  v10._object = 0xE000000000000000;
  v3.value._countAndFlagsBits = 0x617A696C61636F4CLL;
  v3.value._object = 0xEB00000000656C62;
  v4._object = 0x800000020CBA40A0;
  v4._countAndFlagsBits = 0xD000000000000023;
  v5._countAndFlagsBits = 0;
  v5._object = 0xE000000000000000;
  v10._countAndFlagsBits = 0;
  NSLocalizedString(_:tableName:bundle:value:comment:)(v4, v3, v2, v5, v10);

  lazy protocol witness table accessor for type String and conformance String();
  result = Text.init<A>(_:)();
  *a1 = result;
  *(a1 + 8) = v7;
  *(a1 + 16) = v8 & 1;
  *(a1 + 24) = v9;
  return result;
}

uint64_t closure #8 in closure #3 in closure #1 in InSessionView.body.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v49 = a1;
  v54 = a2;
  v2 = type metadata accessor for InSessionView();
  v47 = *(v2 - 8);
  MEMORY[0x28223BE20](v2 - 8);
  v48 = v3;
  v50 = &v42 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI10ButtonRoleVSgMd);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v42 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI6ButtonVyAA4TextVGMd);
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v42 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyAA6ButtonVyAA4TextVGAA31AccessibilityAttachmentModifierVGMd);
  MEMORY[0x28223BE20](v11 - 8);
  v53 = &v42 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v52 = &v42 - v14;
  MEMORY[0x28223BE20](v15);
  v51 = &v42 - v16;
  MEMORY[0x28223BE20](v17);
  v19 = &v42 - v18;
  if (one-time initialization token for WorkoutUIBundle != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v20 = WorkoutUIBundle.super.isa;
  v56._object = 0xE000000000000000;
  v21._countAndFlagsBits = 0x5F5353494D534944;
  v21._object = 0xEE004E4F54545542;
  v22.value._countAndFlagsBits = 0x617A696C61636F4CLL;
  v22.value._object = 0xEB00000000656C62;
  v23._countAndFlagsBits = 0;
  v23._object = 0xE000000000000000;
  v56._countAndFlagsBits = 0;
  v24 = NSLocalizedString(_:tableName:bundle:value:comment:)(v21, v22, v20, v23, v56);

  v55 = v24;
  static ButtonRole.cancel.getter();
  v25 = type metadata accessor for ButtonRole();
  v43 = *(*(v25 - 8) + 56);
  v43(v6, 0, 1, v25);
  v45 = lazy protocol witness table accessor for type String and conformance String();
  Button<>.init<A>(_:role:action:)();
  if (one-time initialization token for dismiss != -1)
  {
    swift_once();
  }

  v44 = lazy protocol witness table accessor for type ZStack<TupleView<(<<opaque return type of View.sheet<A>(isPresented:onDismiss:content:)>>.0, LowPowerInSessionOverlay?)>> and conformance ZStack<A>(&lazy protocol witness table cache variable for type Button<Text> and conformance Button<A>, &_s7SwiftUI6ButtonVyAA4TextVGMd);
  View.accessibilityIdentifier(_:)();
  v46 = v19;
  v26 = *(v8 + 8);
  v26(v10, v7);
  v27 = WorkoutUIBundle.super.isa;
  v57._object = 0xE000000000000000;
  v28._countAndFlagsBits = 0x4B524F575F444E45;
  v28._object = 0xEB0000000054554FLL;
  v29.value._object = 0x800000020CB936F0;
  v29.value._countAndFlagsBits = 0xD000000000000012;
  v30._countAndFlagsBits = 0;
  v30._object = 0xE000000000000000;
  v57._countAndFlagsBits = 0;
  v31 = NSLocalizedString(_:tableName:bundle:value:comment:)(v28, v29, v27, v30, v57);

  v55 = v31;
  static ButtonRole.destructive.getter();
  v43(v6, 0, 1, v25);
  v32 = v50;
  outlined init with copy of InSessionView(v49, v50);
  v33 = (*(v47 + 80) + 16) & ~*(v47 + 80);
  v34 = swift_allocObject();
  outlined init with take of InSessionView(v32, v34 + v33, type metadata accessor for InSessionView);
  Button<>.init<A>(_:role:action:)();
  if (one-time initialization token for endWorkout != -1)
  {
    swift_once();
  }

  v35 = v51;
  View.accessibilityIdentifier(_:)();
  v26(v10, v7);
  v36 = v46;
  v37 = v52;
  outlined init with copy of ModifiedContent<Button<Text>, AccessibilityAttachmentModifier>(v46, v52);
  v38 = v53;
  outlined init with copy of ModifiedContent<Button<Text>, AccessibilityAttachmentModifier>(v35, v53);
  v39 = v54;
  outlined init with copy of ModifiedContent<Button<Text>, AccessibilityAttachmentModifier>(v37, v54);
  v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyAA6ButtonVyAA4TextVGAA31AccessibilityAttachmentModifierVG_AKtMd);
  outlined init with copy of ModifiedContent<Button<Text>, AccessibilityAttachmentModifier>(v38, v39 + *(v40 + 48));
  outlined destroy of ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<MetricPlattersView, _BackgroundStyleModifier<Color>>, _FlexFrameLayout>, _OpacityEffect>, _PaddingLayout>, _AppearanceActionModifier>(v35, &_s7SwiftUI15ModifiedContentVyAA6ButtonVyAA4TextVGAA31AccessibilityAttachmentModifierVGMd);
  outlined destroy of ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<MetricPlattersView, _BackgroundStyleModifier<Color>>, _FlexFrameLayout>, _OpacityEffect>, _PaddingLayout>, _AppearanceActionModifier>(v36, &_s7SwiftUI15ModifiedContentVyAA6ButtonVyAA4TextVGAA31AccessibilityAttachmentModifierVGMd);
  outlined destroy of ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<MetricPlattersView, _BackgroundStyleModifier<Color>>, _FlexFrameLayout>, _OpacityEffect>, _PaddingLayout>, _AppearanceActionModifier>(v38, &_s7SwiftUI15ModifiedContentVyAA6ButtonVyAA4TextVGAA31AccessibilityAttachmentModifierVGMd);
  return outlined destroy of ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<MetricPlattersView, _BackgroundStyleModifier<Color>>, _FlexFrameLayout>, _OpacityEffect>, _PaddingLayout>, _AppearanceActionModifier>(v37, &_s7SwiftUI15ModifiedContentVyAA6ButtonVyAA4TextVGAA31AccessibilityAttachmentModifierVGMd);
}

uint64_t closure #2 in closure #8 in closure #3 in closure #1 in InSessionView.body.getter(void *a1)
{
  v1 = a1[12];
  v2 = a1[13];
  __swift_project_boxed_opaque_existential_1(a1 + 9, v1);
  v7[1] = 0;
  v7[2] = 0;
  v7[0] = 2;
  v8 = 2;
  (*(v2 + 8))(v7, v1, v2);
  type metadata accessor for InSessionView();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI8BindableVy07WorkoutB016SessionViewModelCGMd);
  Bindable.wrappedValue.getter();
  v3 = v7[0];
  v4 = OBJC_IVAR____TtC9WorkoutUI16SessionViewModel__showHeartRateDeviceDisconnectedAlert;
  swift_beginAccess();
  if (*(v3 + v4))
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath);
    _s11WorkoutCore19LowPowerModeMonitorCAC7Combine16ObservableObjectAAWlTm_2(&lazy protocol witness table cache variable for type SessionViewModel and conformance SessionViewModel, type metadata accessor for SessionViewModel);
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
  }

  else
  {
    *(v3 + v4) = 0;
  }
}

uint64_t closure #9 in closure #3 in closure #1 in InSessionView.body.getter@<X0>(uint64_t a1@<X8>)
{
  if (one-time initialization token for WorkoutUIBundle != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v2 = WorkoutUIBundle.super.isa;
  v10._object = 0xE000000000000000;
  v3._countAndFlagsBits = 0xD00000000000001CLL;
  v3._object = 0x800000020CBA4080;
  v4.value._object = 0x800000020CB936F0;
  v4.value._countAndFlagsBits = 0xD000000000000012;
  v5._countAndFlagsBits = 0;
  v5._object = 0xE000000000000000;
  v10._countAndFlagsBits = 0;
  NSLocalizedString(_:tableName:bundle:value:comment:)(v3, v4, v2, v5, v10);

  lazy protocol witness table accessor for type String and conformance String();
  result = Text.init<A>(_:)();
  *a1 = result;
  *(a1 + 8) = v7;
  *(a1 + 16) = v8 & 1;
  *(a1 + 24) = v9;
  return result;
}

void closure #10 in closure #3 in closure #1 in InSessionView.body.getter(uint64_t a1, _BYTE *a2)
{
  if (*a2 == 1)
  {
    v3 = [objc_allocWithZone(MEMORY[0x277D757B8]) init];
    [v3 notificationOccurred_];
  }
}

void one-time initialization function for contentLeadingTrailingPadding()
{
  v0 = objc_opt_self();
  v1 = [v0 currentDevice];
  v2 = specialized UIDevice.screenType.getter();

  v3 = dbl_20CB8BC78[v2];
  v4 = objc_opt_self();
  v5 = [v4 mainScreen];
  [v5 scale];
  v7 = v6;

  v8 = [v4 mainScreen];
  [v8 nativeScale];
  v10 = v9;

  if (v7 != v10)
  {
    v11 = [v4 mainScreen];
    [v11 scale];
    v13 = v12;

    v14 = [v4 mainScreen];
    [v14 nativeScale];
    v16 = v15;

    v3 = v3 * (v13 / v16 * 0.95);
  }

  static InSessionView.Layout.contentLeadingTrailingPadding = *&v3;
}

uint64_t type metadata accessor for InSessionView()
{
  result = type metadata singleton initialization cache for InSessionView;
  if (!type metadata singleton initialization cache for InSessionView)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t outlined init with copy of InSessionView(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for InSessionView();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t outlined init with take of ZStack<TupleView<(<<opaque return type of View.sheet<A>(isPresented:onDismiss:content:)>>.0, LowPowerInSessionOverlay?)>>(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(a3);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<ZStack<TupleView<(<<opaque return type of View.sheet<A>(isPresented:onDismiss:content:)>>.0, LowPowerInSessionOverlay?)>>, _FlexFrameLayout>, _EnvironmentKeyWritingModifier<WorkoutAnimationStyle>> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ZStack<TupleView<(<<opaque return type of View.sheet<A>(isPresented:onDismiss:content:)>>.0, LowPowerInSessionOverlay?)>>, _FlexFrameLayout>, _EnvironmentKeyWritingModifier<WorkoutAnimationStyle>> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ZStack<TupleView<(<<opaque return type of View.sheet<A>(isPresented:onDismiss:content:)>>.0, LowPowerInSessionOverlay?)>>, _FlexFrameLayout>, _EnvironmentKeyWritingModifier<WorkoutAnimationStyle>> and conformance <> ModifiedContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyACyAA6ZStackVyAA9TupleViewVyAA0G0PAAE5sheet11isPresented9onDismiss7contentQrAA7BindingVySbG_yycSgqd__yctAaHRd__lFQOyACyACyACyACyACy07WorkoutB0014MetricPlattersG0VAA24_BackgroundStyleModifierVyAA5ColorVGGAA16_FlexFrameLayoutVGAA14_OpacityEffectVGAA08_PaddingX0VGAA017_AppearanceActionT0VG_AiAE0K6Change2of7initial_Qrqd___Sbyqd___qd__tctSQRd__lFQOyAiAE5alert_AK7actions7messageQrqd___APqd_0_yXEqd_1_yXEtSyRd__AaHRd_0_AaHRd_1_r1_lFQOyAiAEA14__AKA15_A16_Qrqd___APqd_0_yXEqd_1_yXEtSyRd__AaHRd_0_AaHRd_1_r1_lFQOyAiAEA11_A12_A13__Qrqd___Sbyqd___qd__tctSQRd__lFQOyAiAEA11_A12_A13__Qrqd___Sbyqd___qd__tctSQRd__lFQOyAiAEA11_A12_A13__Qrqd___SbyyctSQRd__lFQOyAiAEA11_A12_A13__Qrqd___SbyyctSQRd__lFQOyAiAEA11_A12_A13__Qrqd___SbyyctSQRd__lFQOyAiAE19presentationDetents_9selectionQrShyAA18PresentationDetentVG_AOyA20_GtFQOyACyAR20SessionControlsSheetVA0_G_Qo__A20_Qo__SbQo__SbQo__0O4Core0O19BuddyStatePublisherC5StateOQo__So21NLWorkoutPausedReasonVQo__SSACyAA6ButtonVyAA4TextVGAA023AccessibilityAttachmentT0VGA42_Qo__SSAGyA46__A46_tGA42_Qo__SbQo_Qo__AR24LowPowerInSessionOverlayVSgtGGA0_GAA022_EnvironmentKeyWritingT0VyAR0o9AnimationS0OGGMd);
    lazy protocol witness table accessor for type ModifiedContent<ZStack<TupleView<(<<opaque return type of View.sheet<A>(isPresented:onDismiss:content:)>>.0, LowPowerInSessionOverlay?)>>, _FlexFrameLayout> and conformance <> ModifiedContent<A, B>();
    lazy protocol witness table accessor for type ZStack<TupleView<(<<opaque return type of View.sheet<A>(isPresented:onDismiss:content:)>>.0, LowPowerInSessionOverlay?)>> and conformance ZStack<A>(&lazy protocol witness table cache variable for type _EnvironmentKeyWritingModifier<WorkoutAnimationStyle> and conformance _EnvironmentKeyWritingModifier<A>, &_s7SwiftUI30_EnvironmentKeyWritingModifierVy07WorkoutB00G14AnimationStyleOGMd);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ZStack<TupleView<(<<opaque return type of View.sheet<A>(isPresented:onDismiss:content:)>>.0, LowPowerInSessionOverlay?)>>, _FlexFrameLayout>, _EnvironmentKeyWritingModifier<WorkoutAnimationStyle>> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<ZStack<TupleView<(<<opaque return type of View.sheet<A>(isPresented:onDismiss:content:)>>.0, LowPowerInSessionOverlay?)>>, _FlexFrameLayout> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<ZStack<TupleView<(<<opaque return type of View.sheet<A>(isPresented:onDismiss:content:)>>.0, LowPowerInSessionOverlay?)>>, _FlexFrameLayout> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<ZStack<TupleView<(<<opaque return type of View.sheet<A>(isPresented:onDismiss:content:)>>.0, LowPowerInSessionOverlay?)>>, _FlexFrameLayout> and conformance <> ModifiedContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyAA6ZStackVyAA9TupleViewVyAA0G0PAAE5sheet11isPresented9onDismiss7contentQrAA7BindingVySbG_yycSgqd__yctAaHRd__lFQOyACyACyACyACyACy07WorkoutB0014MetricPlattersG0VAA24_BackgroundStyleModifierVyAA5ColorVGGAA16_FlexFrameLayoutVGAA14_OpacityEffectVGAA08_PaddingX0VGAA017_AppearanceActionT0VG_AiAE0K6Change2of7initial_Qrqd___Sbyqd___qd__tctSQRd__lFQOyAiAE5alert_AK7actions7messageQrqd___APqd_0_yXEqd_1_yXEtSyRd__AaHRd_0_AaHRd_1_r1_lFQOyAiAEA14__AKA15_A16_Qrqd___APqd_0_yXEqd_1_yXEtSyRd__AaHRd_0_AaHRd_1_r1_lFQOyAiAEA11_A12_A13__Qrqd___Sbyqd___qd__tctSQRd__lFQOyAiAEA11_A12_A13__Qrqd___Sbyqd___qd__tctSQRd__lFQOyAiAEA11_A12_A13__Qrqd___SbyyctSQRd__lFQOyAiAEA11_A12_A13__Qrqd___SbyyctSQRd__lFQOyAiAEA11_A12_A13__Qrqd___SbyyctSQRd__lFQOyAiAE19presentationDetents_9selectionQrShyAA18PresentationDetentVG_AOyA20_GtFQOyACyAR20SessionControlsSheetVA0_G_Qo__A20_Qo__SbQo__SbQo__0O4Core0O19BuddyStatePublisherC5StateOQo__So21NLWorkoutPausedReasonVQo__SSACyAA6ButtonVyAA4TextVGAA023AccessibilityAttachmentT0VGA42_Qo__SSAGyA46__A46_tGA42_Qo__SbQo_Qo__AR24LowPowerInSessionOverlayVSgtGGA0_GMd);
    lazy protocol witness table accessor for type ZStack<TupleView<(<<opaque return type of View.sheet<A>(isPresented:onDismiss:content:)>>.0, LowPowerInSessionOverlay?)>> and conformance ZStack<A>(&lazy protocol witness table cache variable for type ZStack<TupleView<(<<opaque return type of View.sheet<A>(isPresented:onDismiss:content:)>>.0, LowPowerInSessionOverlay?)>> and conformance ZStack<A>, &_s7SwiftUI6ZStackVyAA9TupleViewVyAA0E0PAAE5sheet11isPresented9onDismiss7contentQrAA7BindingVySbG_yycSgqd__yctAaFRd__lFQOyAA15ModifiedContentVyAQyAQyAQyAQy07WorkoutB0014MetricPlattersE0VAA24_BackgroundStyleModifierVyAA5ColorVGGAA16_FlexFrameLayoutVGAA14_OpacityEffectVGAA08_PaddingX0VGAA017_AppearanceActionT0VG_AgAE0I6Change2of7initial_Qrqd___Sbyqd___qd__tctSQRd__lFQOyAgAE5alert_AI7actions7messageQrqd___ANqd_0_yXEqd_1_yXEtSyRd__AaFRd_0_AaFRd_1_r1_lFQOyAgAEA14__AIA15_A16_Qrqd___ANqd_0_yXEqd_1_yXEtSyRd__AaFRd_0_AaFRd_1_r1_lFQOyAgAEA11_A12_A13__Qrqd___Sbyqd___qd__tctSQRd__lFQOyAgAEA11_A12_A13__Qrqd___Sbyqd___qd__tctSQRd__lFQOyAgAEA11_A12_A13__Qrqd___SbyyctSQRd__lFQOyAgAEA11_A12_A13__Qrqd___SbyyctSQRd__lFQOyAgAEA11_A12_A13__Qrqd___SbyyctSQRd__lFQOyAgAE19presentationDetents_9selectionQrShyAA18PresentationDetentVG_AMyA20_GtFQOyAQyAR20SessionControlsSheetVA0_G_Qo__A20_Qo__SbQo__SbQo__0O4Core0O19BuddyStatePublisherC5StateOQo__So21NLWorkoutPausedReasonVQo__SSAQyAA6ButtonVyAA4TextVGAA023AccessibilityAttachmentT0VGA42_Qo__SSAEyA46__A46_tGA42_Qo__SbQo_Qo__AR24LowPowerInSessionOverlayVSgtGGMd);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<ZStack<TupleView<(<<opaque return type of View.sheet<A>(isPresented:onDismiss:content:)>>.0, LowPowerInSessionOverlay?)>>, _FlexFrameLayout> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

void type metadata completion function for InSessionView()
{
  type metadata accessor for ObservedObject<LowPowerModeMonitor>();
  if (v0 <= 0x3F)
  {
    type metadata accessor for MetricsPublisher();
    if (v1 <= 0x3F)
    {
      type metadata accessor for ObservedObject<WorkoutStatePublisher>();
      if (v2 <= 0x3F)
      {
        type metadata accessor for ObservedObject<WorkoutBuddyStatePublisher>();
        if (v3 <= 0x3F)
        {
          type metadata accessor for WorkoutNotificationCenter();
          if (v4 <= 0x3F)
          {
            _sSo21FIUIFormattingManagerCMaTm_14(319, &lazy cache variable for type metadata for FIUIFormattingManager);
            if (v5 <= 0x3F)
            {
              type metadata accessor for SessionControls();
              if (v6 <= 0x3F)
              {
                type metadata accessor for State<SessionControlsState>(319, &lazy cache variable for type metadata for State<SessionControlsState>, type metadata accessor for SessionControlsState, MEMORY[0x277CE10B8]);
                if (v7 <= 0x3F)
                {
                  type metadata accessor for State<SessionControlsState>(319, &lazy cache variable for type metadata for Bindable<SessionViewModel>, type metadata accessor for SessionViewModel, MEMORY[0x277CE12F8]);
                  if (v8 <= 0x3F)
                  {
                    type metadata accessor for MetricPlatterAnalytics();
                    if (v9 <= 0x3F)
                    {
                      type metadata accessor for LowPowerViewModel();
                      if (v10 <= 0x3F)
                      {
                        type metadata accessor for State<SessionControlsState>(319, &lazy cache variable for type metadata for State<PresentationDetent>, MEMORY[0x277CDDE90], MEMORY[0x277CE10B8]);
                        if (v11 <= 0x3F)
                        {
                          type metadata accessor for State<Bool>();
                          if (v12 <= 0x3F)
                          {
                            swift_cvw_initStructMetadataWithLayoutString();
                          }
                        }
                      }
                    }
                  }
                }
              }
            }
          }
        }
      }
    }
  }
}

void type metadata accessor for State<SessionControlsState>(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

unint64_t lazy protocol witness table accessor for type ModifiedContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, _EnvironmentKeyWritingModifier<LegibilityWeight?>> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, _EnvironmentKeyWritingModifier<LegibilityWeight?>> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, _EnvironmentKeyWritingModifier<LegibilityWeight?>> and conformance <> ModifiedContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyAA4ViewPAAE15dynamicTypeSizeyQrAA07DynamicgH0OFQOyACyACyACyAA6ZStackVyAA05TupleE0VyAeAE5sheet11isPresented9onDismiss7contentQrAA7BindingVySbG_yycSgqd__yctAaDRd__lFQOyACyACyACyACyACy07WorkoutB0014MetricPlattersE0VAA24_BackgroundStyleModifierVyAA5ColorVGGAA16_FlexFrameLayoutVGAA14_OpacityEffectVGAA14_PaddingLayoutVGAA017_AppearanceActionX0VG_AeAE0O6Change2of7initial_Qrqd___Sbyqd___qd__tctSQRd__lFQOyAeAE5alert_AN7actions7messageQrqd___ASqd_0_yXEqd_1_yXEtSyRd__AaDRd_0_AaDRd_1_r1_lFQOyAeAEA17__ANA18_A19_Qrqd___ASqd_0_yXEqd_1_yXEtSyRd__AaDRd_0_AaDRd_1_r1_lFQOyAeAEA14_A15_A16__Qrqd___Sbyqd___qd__tctSQRd__lFQOyAeAEA14_A15_A16__Qrqd___Sbyqd___qd__tctSQRd__lFQOyAeAEA14_A15_A16__Qrqd___SbyyctSQRd__lFQOyAeAEA14_A15_A16__Qrqd___SbyyctSQRd__lFQOyAeAEA14_A15_A16__Qrqd___SbyyctSQRd__lFQOyAeAE19presentationDetents_9selectionQrShyAA18PresentationDetentVG_ARyA23_GtFQOyACyAU20SessionControlsSheetVA3_G_Qo__A23_Qo__SbQo__SbQo__0S4Core0S19BuddyStatePublisherC5StateOQo__So21NLWorkoutPausedReasonVQo__SSACyAA6ButtonVyAA4TextVGAA023AccessibilityAttachmentX0VGA45_Qo__SSALyA49__A49_tGA45_Qo__SbQo_Qo__AU24LowPowerInSessionOverlayVSgtGGA3_GAA022_EnvironmentKeyWritingX0VyAU0s9AnimationW0OGGA12_G_Qo_A62_yAA16LegibilityWeightOSgGGMd);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyACyACyAA6ZStackVyAA9TupleViewVyAA0G0PAAE5sheet11isPresented9onDismiss7contentQrAA7BindingVySbG_yycSgqd__yctAaHRd__lFQOyACyACyACyACyACy07WorkoutB0014MetricPlattersG0VAA24_BackgroundStyleModifierVyAA5ColorVGGAA16_FlexFrameLayoutVGAA14_OpacityEffectVGAA08_PaddingX0VGAA017_AppearanceActionT0VG_AiAE0K6Change2of7initial_Qrqd___Sbyqd___qd__tctSQRd__lFQOyAiAE5alert_AK7actions7messageQrqd___APqd_0_yXEqd_1_yXEtSyRd__AaHRd_0_AaHRd_1_r1_lFQOyAiAEA14__AKA15_A16_Qrqd___APqd_0_yXEqd_1_yXEtSyRd__AaHRd_0_AaHRd_1_r1_lFQOyAiAEA11_A12_A13__Qrqd___Sbyqd___qd__tctSQRd__lFQOyAiAEA11_A12_A13__Qrqd___Sbyqd___qd__tctSQRd__lFQOyAiAEA11_A12_A13__Qrqd___SbyyctSQRd__lFQOyAiAEA11_A12_A13__Qrqd___SbyyctSQRd__lFQOyAiAEA11_A12_A13__Qrqd___SbyyctSQRd__lFQOyAiAE19presentationDetents_9selectionQrShyAA18PresentationDetentVG_AOyA20_GtFQOyACyAR20SessionControlsSheetVA0_G_Qo__A20_Qo__SbQo__SbQo__0O4Core0O19BuddyStatePublisherC5StateOQo__So21NLWorkoutPausedReasonVQo__SSACyAA6ButtonVyAA4TextVGAA023AccessibilityAttachmentT0VGA42_Qo__SSAGyA46__A46_tGA42_Qo__SbQo_Qo__AR24LowPowerInSessionOverlayVSgtGGA0_GAA022_EnvironmentKeyWritingT0VyAR0o9AnimationS0OGGA9_GMd);
    lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<ModifiedContent<ZStack<TupleView<(<<opaque return type of View.sheet<A>(isPresented:onDismiss:content:)>>.0, LowPowerInSessionOverlay?)>>, _FlexFrameLayout>, _EnvironmentKeyWritingModifier<WorkoutAnimationStyle>>, _AppearanceActionModifier> and conformance <> ModifiedContent<A, B>( &lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<ZStack<TupleView<(<<opaque return type of View.sheet<A>(isPresented:onDismiss:content:)>>.0, LowPowerInSessionOverlay?)>>, _FlexFrameLayout>, _EnvironmentKeyWritingModifier<WorkoutAnimationStyle>>, _AppearanceActionModifier> and conformance <> ModifiedContent<A, B>,  &_s7SwiftUI15ModifiedContentVyACyACyAA6ZStackVyAA9TupleViewVyAA0G0PAAE5sheet11isPresented9onDismiss7contentQrAA7BindingVySbG_yycSgqd__yctAaHRd__lFQOyACyACyACyACyACy07WorkoutB0014MetricPlattersG0VAA24_BackgroundStyleModifierVyAA5ColorVGGAA16_FlexFrameLayoutVGAA14_OpacityEffectVGAA08_PaddingX0VGAA017_AppearanceActionT0VG_AiAE0K6Change2of7initial_Qrqd___Sbyqd___qd__tctSQRd__lFQOyAiAE5alert_AK7actions7messageQrqd___APqd_0_yXEqd_1_yXEtSyRd__AaHRd_0_AaHRd_1_r1_lFQOyAiAEA14__AKA15_A16_Qrqd___APqd_0_yXEqd_1_yXEtSyRd__AaHRd_0_AaHRd_1_r1_lFQOyAiAEA11_A12_A13__Qrqd___Sbyqd___qd__tctSQRd__lFQOyAiAEA11_A12_A13__Qrqd___Sbyqd___qd__tctSQRd__lFQOyAiAEA11_A12_A13__Qrqd___SbyyctSQRd__lFQOyAiAEA11_A12_A13__Qrqd___SbyyctSQRd__lFQOyAiAEA11_A12_A13__Qrqd___SbyyctSQRd__lFQOyAiAE19presentationDetents_9selectionQrShyAA18PresentationDetentVG_AOyA20_GtFQOyACyAR20SessionControlsSheetVA0_G_Qo__A20_Qo__SbQo__SbQo__0O4Core0O19BuddyStatePublisherC5StateOQo__So21NLWorkoutPausedReasonVQo__SSACyAA6ButtonVyAA4TextVGAA023AccessibilityAttachmentT0VGA42_Qo__SSAGyA46__A46_tGA42_Qo__SbQo_Qo__AR24LowPowerInSessionOverlayVSgtGGA0_GAA022_EnvironmentKeyWritingT0VyAR0o9AnimationS0OGGA9_GMd,  &_s7SwiftUI15ModifiedContentVyACyACyAA6ZStackVyAA9TupleViewVyAA0G0PAAE5sheet11isPresented9onDismiss7contentQrAA7BindingVySbG_yycSgqd__yctAaHRd__lFQOyACyACyACyACyACy07WorkoutB0014MetricPlattersG0VAA24_BackgroundStyleModifierVyAA5ColorVGGAA16_FlexFrameLayoutVGAA14_OpacityEffectVGAA08_PaddingX0VGAA017_AppearanceActionT0VG_AiAE0K6Change2of7initial_Qrqd___Sbyqd___qd__tctSQRd__lFQOyAiAE5alert_AK7actions7messageQrqd___APqd_0_yXEqd_1_yXEtSyRd__AaHRd_0_AaHRd_1_r1_lFQOyAiAEA14__AKA15_A16_Qrqd___APqd_0_yXEqd_1_yXEtSyRd__AaHRd_0_AaHRd_1_r1_lFQOyAiAEA11_A12_A13__Qrqd___Sbyqd___qd__tctSQRd__lFQOyAiAEA11_A12_A13__Qrqd___Sbyqd___qd__tctSQRd__lFQOyAiAEA11_A12_A13__Qrqd___SbyyctSQRd__lFQOyAiAEA11_A12_A13__Qrqd___SbyyctSQRd__lFQOyAiAEA11_A12_A13__Qrqd___SbyyctSQRd__lFQOyAiAE19presentationDetents_9selectionQrShyAA18PresentationDetentVG_AOyA20_GtFQOyACyAR20SessionControlsSheetVA0_G_Qo__A20_Qo__SbQo__SbQo__0O4Core0O19BuddyStatePublisherC5StateOQo__So21NLWorkoutPausedReasonVQo__SSACyAA6ButtonVyAA4TextVGAA023AccessibilityAttachmentT0VGA42_Qo__SSAGyA46__A46_tGA42_Qo__SbQo_Qo__AR24LowPowerInSessionOverlayVSgtGGA0_GAA022_EnvironmentKeyWritingT0VyAR0o9AnimationS0OGGA9_GMR,  lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<ZStack<TupleView<(<<opaque return type of View.sheet<A>(isPresented:onDismiss:content:)>>.0, LowPowerInSessionOverlay?)>>, _FlexFrameLayout>, _EnvironmentKeyWritingModifier<WorkoutAnimationStyle>> and conformance <> ModifiedContent<A, B>);
    swift_getOpaqueTypeConformance2();
    lazy protocol witness table accessor for type ZStack<TupleView<(<<opaque return type of View.sheet<A>(isPresented:onDismiss:content:)>>.0, LowPowerInSessionOverlay?)>> and conformance ZStack<A>(&lazy protocol witness table cache variable for type _EnvironmentKeyWritingModifier<LegibilityWeight?> and conformance _EnvironmentKeyWritingModifier<A>, &_s7SwiftUI30_EnvironmentKeyWritingModifierVyAA16LegibilityWeightOSgGMd);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, _EnvironmentKeyWritingModifier<LegibilityWeight?>> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

uint64_t outlined init with take of ModifiedContent<MetricPlattersView, _BackgroundStyleModifier<Color>>(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(a3);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t partial apply for closure #1 in closure #1 in InSessionView.body.getter(uint64_t (*a1)(uint64_t))
{
  v2 = *(type metadata accessor for InSessionView() - 8);
  v3 = v1 + ((*(v2 + 80) + 16) & ~*(v2 + 80));

  return a1(v3);
}

uint64_t partial apply for closure #3 in closure #1 in InSessionView.body.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for InSessionView() - 8);
  v4 = (v1 + ((*(v3 + 80) + 16) & ~*(v3 + 80)));

  return closure #3 in closure #1 in InSessionView.body.getter(v4, a1);
}

uint64_t lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<ModifiedContent<ZStack<TupleView<(<<opaque return type of View.sheet<A>(isPresented:onDismiss:content:)>>.0, LowPowerInSessionOverlay?)>>, _FlexFrameLayout>, _EnvironmentKeyWritingModifier<WorkoutAnimationStyle>>, _AppearanceActionModifier> and conformance <> ModifiedContent<A, B>(unint64_t *a1, uint64_t *a2, uint64_t a3, void (*a4)(void))
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

unint64_t lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<MetricPlattersView, _BackgroundStyleModifier<Color>>, _FlexFrameLayout>, _OpacityEffect>, _PaddingLayout> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<MetricPlattersView, _BackgroundStyleModifier<Color>>, _FlexFrameLayout>, _OpacityEffect>, _PaddingLayout> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<MetricPlattersView, _BackgroundStyleModifier<Color>>, _FlexFrameLayout>, _OpacityEffect>, _PaddingLayout> and conformance <> ModifiedContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyACyACyACy07WorkoutB018MetricPlattersViewVAA24_BackgroundStyleModifierVyAA5ColorVGGAA16_FlexFrameLayoutVGAA14_OpacityEffectVGAA08_PaddingO0VGMd);
    lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<ModifiedContent<MetricPlattersView, _BackgroundStyleModifier<Color>>, _FlexFrameLayout>, _OpacityEffect> and conformance <> ModifiedContent<A, B>();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<MetricPlattersView, _BackgroundStyleModifier<Color>>, _FlexFrameLayout>, _OpacityEffect>, _PaddingLayout> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<ModifiedContent<MetricPlattersView, _BackgroundStyleModifier<Color>>, _FlexFrameLayout>, _OpacityEffect> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<MetricPlattersView, _BackgroundStyleModifier<Color>>, _FlexFrameLayout>, _OpacityEffect> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<MetricPlattersView, _BackgroundStyleModifier<Color>>, _FlexFrameLayout>, _OpacityEffect> and conformance <> ModifiedContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyACyACy07WorkoutB018MetricPlattersViewVAA24_BackgroundStyleModifierVyAA5ColorVGGAA16_FlexFrameLayoutVGAA14_OpacityEffectVGMd);
    lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<MetricPlattersView, _BackgroundStyleModifier<Color>>, _FlexFrameLayout> and conformance <> ModifiedContent<A, B>();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<MetricPlattersView, _BackgroundStyleModifier<Color>>, _FlexFrameLayout>, _OpacityEffect> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<MetricPlattersView, _BackgroundStyleModifier<Color>>, _FlexFrameLayout> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<MetricPlattersView, _BackgroundStyleModifier<Color>>, _FlexFrameLayout> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<MetricPlattersView, _BackgroundStyleModifier<Color>>, _FlexFrameLayout> and conformance <> ModifiedContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyACy07WorkoutB018MetricPlattersViewVAA24_BackgroundStyleModifierVyAA5ColorVGGAA16_FlexFrameLayoutVGMd);
    lazy protocol witness table accessor for type ModifiedContent<MetricPlattersView, _BackgroundStyleModifier<Color>> and conformance <> ModifiedContent<A, B>();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<MetricPlattersView, _BackgroundStyleModifier<Color>>, _FlexFrameLayout> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<MetricPlattersView, _BackgroundStyleModifier<Color>> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<MetricPlattersView, _BackgroundStyleModifier<Color>> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<MetricPlattersView, _BackgroundStyleModifier<Color>> and conformance <> ModifiedContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVy07WorkoutB018MetricPlattersViewVAA24_BackgroundStyleModifierVyAA5ColorVGGMd);
    _s11WorkoutCore19LowPowerModeMonitorCAC7Combine16ObservableObjectAAWlTm_2(&lazy protocol witness table cache variable for type MetricPlattersView and conformance MetricPlattersView, type metadata accessor for MetricPlattersView);
    lazy protocol witness table accessor for type ZStack<TupleView<(<<opaque return type of View.sheet<A>(isPresented:onDismiss:content:)>>.0, LowPowerInSessionOverlay?)>> and conformance ZStack<A>(&lazy protocol witness table cache variable for type _BackgroundStyleModifier<Color> and conformance _BackgroundStyleModifier<A>, &_s7SwiftUI24_BackgroundStyleModifierVyAA5ColorVGMd);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<MetricPlattersView, _BackgroundStyleModifier<Color>> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<SessionControlsSheet, _FlexFrameLayout> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<SessionControlsSheet, _FlexFrameLayout> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<SessionControlsSheet, _FlexFrameLayout> and conformance <> ModifiedContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVy07WorkoutB020SessionControlsSheetVAA16_FlexFrameLayoutVGMd);
    _s11WorkoutCore19LowPowerModeMonitorCAC7Combine16ObservableObjectAAWlTm_2(&lazy protocol witness table cache variable for type SessionControlsSheet and conformance SessionControlsSheet, type metadata accessor for SessionControlsSheet);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<SessionControlsSheet, _FlexFrameLayout> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

uint64_t outlined copy of LowPowerInSessionOverlay?(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
  }

  return result;
}

uint64_t outlined consume of LowPowerInSessionOverlay?(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
  }

  return result;
}

uint64_t outlined init with take of InSessionView(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t partial apply for closure #4 in closure #3 in closure #1 in InSessionView.body.getter(uint64_t a1, uint64_t a2)
{
  v5 = *(type metadata accessor for InSessionView() - 8);
  v6 = v2 + ((*(v5 + 80) + 16) & ~*(v5 + 80));

  return closure #4 in closure #3 in closure #1 in InSessionView.body.getter(a1, a2, v6);
}

uint64_t partial apply for closure #5 in closure #3 in closure #1 in InSessionView.body.getter(uint64_t a1, uint64_t *a2)
{
  type metadata accessor for InSessionView();

  return closure #5 in closure #3 in closure #1 in InSessionView.body.getter(a1, a2);
}

uint64_t outlined init with copy of ModifiedContent<Button<Text>, AccessibilityAttachmentModifier>(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyAA6ButtonVyAA4TextVGAA31AccessibilityAttachmentModifierVGMd);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t outlined destroy of ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<MetricPlattersView, _BackgroundStyleModifier<Color>>, _FlexFrameLayout>, _OpacityEffect>, _PaddingLayout>, _AppearanceActionModifier>(uint64_t a1, uint64_t *a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(a2);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t _sSo21FIUIFormattingManagerCMaTm_14(uint64_t a1, unint64_t *a2)
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

uint64_t objectdestroyTm_91()
{
  v1 = (type metadata accessor for InSessionView() - 8);
  v2 = v0 + ((*(*v1 + 80) + 16) & ~*(*v1 + 80));

  __swift_destroy_boxed_opaque_existential_1(v2 + 72);

  v3 = v1[14];
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI8BindableVy07WorkoutB016SessionViewModelCGMd);
  (*(*(v4 - 8) + 8))(v2 + v3, v4);

  v5 = v2 + v1[18];
  v6 = type metadata accessor for PresentationDetent();
  (*(*(v6 - 8) + 8))(v5, v6);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI5StateVyAA18PresentationDetentVGMd);

  return swift_deallocObject();
}

uint64_t block_copy_helper_40(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t _s11WorkoutCore19LowPowerModeMonitorCAC7Combine16ObservableObjectAAWlTm_2(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t lazy protocol witness table accessor for type ZStack<TupleView<(<<opaque return type of View.sheet<A>(isPresented:onDismiss:content:)>>.0, LowPowerInSessionOverlay?)>> and conformance ZStack<A>(unint64_t *a1, uint64_t *a2)
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

uint64_t getEnumTagSinglePayload for IntervalBlocksReorderingView(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 24))
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

uint64_t storeEnumTagSinglePayload for IntervalBlocksReorderingView(uint64_t result, int a2, int a3)
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

id closure #1 in IntervalBlocksReorderingView.body.getter@<X0>(uint64_t a1@<X0>, void *a2@<X1>, void *a3@<X2>, uint64_t a4@<X8>)
{
  IntervalWorkout.stepBlocks.getter();
  v7 = swift_allocObject();
  v7[2] = a1;
  v7[3] = a2;
  v7[4] = a3;
  v8 = a2;
  v15 = a3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay11WorkoutCore0A5BlockCGMd);
  type metadata accessor for UUID();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI4ViewPAAE20accessibilityActionsyQrqd__yXEAaBRd__lFQOyAA5GroupVyAA19_ConditionalContentVyAHyAA08ModifiedH0VyAcAE0D7Element8childrenQrAA26AccessibilityChildBehaviorV_tFQOyAA6VStackVyAA05TupleC0Vy07WorkoutB009RepeatRowC0V_AA7DividerVAA6HStackVyARyAPyAA7ForEachVySay0Q4Core0Q4StepCG10Foundation4UUIDVAS0qyS0VGG_AA6SpacerVAJyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGtGGtGG_Qo_AA0L18AttachmentModifierVGAcAEAkLQrAN_tFQOyAPyAA7SectionVyAA05EmptyC0VARyAU_A23_tGA33_GG_Qo_GAJyAcAEAkLQrAN_tFQOyAYyARyA8__A12_A21_tGG_Qo_A28_GSgGG_ARyAA6ButtonVyAA4TextVGSg_A51_tGSgQo_Md);
  lazy protocol witness table accessor for type VStack<TupleView<(RepeatRowView, Divider, HStack<TupleView<(VStack<ForEach<[WorkoutStep], UUID, WorkoutStepRow>>, Spacer, ModifiedContent<Image, _EnvironmentKeyWritingModifier<Color?>>)>>)>> and conformance VStack<A>(&lazy protocol witness table cache variable for type [WorkoutBlock] and conformance [A], &_sSay11WorkoutCore0A5BlockCGMd);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI5GroupVyAA19_ConditionalContentVyAEyAA08ModifiedE0VyAA4ViewPAAE20accessibilityElement8childrenQrAA26AccessibilityChildBehaviorV_tFQOyAA6VStackVyAA05TupleG0Vy07WorkoutB009RepeatRowG0V_AA7DividerVAA6HStackVyAQyAOyAA7ForEachVySay0P4Core0P4StepCG10Foundation4UUIDVAR0pxR0VGG_AA6SpacerVAGyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGtGGtGG_Qo_AA0K18AttachmentModifierVGAiAEAjKQrAM_tFQOyAOyAA7SectionVyAA05EmptyG0VAQyAT_A22_tGA32_GG_Qo_GAGyAiAEAjKQrAM_tFQOyAXyAQyA7__A11_A20_tGG_Qo_A27_GSgGGMd);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI9TupleViewVyAA6ButtonVyAA4TextVGSg_AItGSgMd);
  lazy protocol witness table accessor for type Group<_ConditionalContent<_ConditionalContent<ModifiedContent<<<opaque return type of View.accessibilityElement(children:)>>.0, AccessibilityAttachmentModifier>, <<opaque return type of View.accessibilityElement(children:)>>.0>, ModifiedContent<<<opaque return type of View.accessibilityElement(children:)>>.0, AccessibilityAttachmentModifier>?>> and conformance <A> Group<A>();
  lazy protocol witness table accessor for type TupleView<(Button<Text>?, Button<Text>?)>? and conformance <A> A?();
  swift_getOpaqueTypeConformance2();
  _s7SwiftUI31AccessibilityAttachmentModifierVAcA04ViewE0AAWlTm_10(&lazy protocol witness table cache variable for type WorkoutBlock and conformance WorkoutBlock, MEMORY[0x277D7DD60]);
  ForEach<>.init(_:content:)();
  v9 = swift_allocObject();
  v9[2] = a1;
  v9[3] = v8;
  v9[4] = v15;
  v10 = swift_allocObject();
  *(v10 + 16) = partial apply for closure #2 in closure #1 in IntervalBlocksReorderingView.body.getter;
  *(v10 + 24) = v9;
  v11 = (a4 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyAA7ForEachVySay11WorkoutCore0G5BlockCG10Foundation4UUIDVAA4ViewPAAE20accessibilityActionsyQrqd__yXEAaMRd__lFQOyAA5GroupVyAA012_ConditionalD0VyASyACyAnAE0M7Element8childrenQrAA26AccessibilityChildBehaviorV_tFQOyAA6VStackVyAA05TupleL0Vy0gB009RepeatRowL0V_AA7DividerVAA6HStackVyA_yAYyAEySayAF0G4StepCGALA0_0g4StepY0VGG_AA6SpacerVACyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGtGGtGG_Qo_AA0S18AttachmentModifierVGAnAEAtUQrAW_tFQOyAYyAA7SectionVyAA05EmptyL0VA_yA2__A26_tGA36_GG_Qo_GACyAnAEAtUQrAW_tFQOyA6_yA_yA11__A15_A24_tGG_Qo_A31_GSgGG_A_yAA6ButtonVyAA4TextVGSg_A54_tGSgQo_GAA21_TraitWritingModifierVyAA14OnMoveTraitKeyVGGMd) + 36));
  *v11 = _s10Foundation8IndexSetVSiIegny_ACSiytIegnnr_TRTA_0;
  v11[1] = v10;
  v12 = v8;

  return v15;
}

uint64_t closure #1 in closure #1 in IntervalBlocksReorderingView.body.getter(uint64_t *a1, uint64_t a2, void *a3, void *a4)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI5GroupVyAA19_ConditionalContentVyAEyAA08ModifiedE0VyAA4ViewPAAE20accessibilityElement8childrenQrAA26AccessibilityChildBehaviorV_tFQOyAA6VStackVyAA05TupleG0Vy07WorkoutB009RepeatRowG0V_AA7DividerVAA6HStackVyAQyAOyAA7ForEachVySay0P4Core0P4StepCG10Foundation4UUIDVAR0pxR0VGG_AA6SpacerVAGyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGtGGtGG_Qo_AA0K18AttachmentModifierVGAiAEAjKQrAM_tFQOyAOyAA7SectionVyAA05EmptyG0VAQyAT_A22_tGA32_GG_Qo_GAGyAiAEAjKQrAM_tFQOyAXyAQyA7__A11_A20_tGG_Qo_A27_GSgGGMd);
  MEMORY[0x28223BE20](v8);
  v10 = &v13[-v9];
  v11 = *a1;
  closure #1 in closure #1 in closure #1 in IntervalBlocksReorderingView.body.getter(v11, a2, a3, a4, &v13[-v9]);
  v14 = a2;
  v15 = a3;
  v16 = a4;
  v17 = v11;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI9TupleViewVyAA6ButtonVyAA4TextVGSg_AItGSgMd);
  lazy protocol witness table accessor for type Group<_ConditionalContent<_ConditionalContent<ModifiedContent<<<opaque return type of View.accessibilityElement(children:)>>.0, AccessibilityAttachmentModifier>, <<opaque return type of View.accessibilityElement(children:)>>.0>, ModifiedContent<<<opaque return type of View.accessibilityElement(children:)>>.0, AccessibilityAttachmentModifier>?>> and conformance <A> Group<A>();
  lazy protocol witness table accessor for type TupleView<(Button<Text>?, Button<Text>?)>? and conformance <A> A?();
  View.accessibilityActions<A>(_:)();
  return outlined destroy of Group<_ConditionalContent<_ConditionalContent<ModifiedContent<<<opaque return type of View.accessibilityElement(children:)>>.0, AccessibilityAttachmentModifier>, <<opaque return type of View.accessibilityElement(children:)>>.0>, ModifiedContent<<<opaque return type of View.accessibilityElement(children:)>>.0, AccessibilityAttachmentModifier>?>>(v10, &_s7SwiftUI5GroupVyAA19_ConditionalContentVyAEyAA08ModifiedE0VyAA4ViewPAAE20accessibilityElement8childrenQrAA26AccessibilityChildBehaviorV_tFQOyAA6VStackVyAA05TupleG0Vy07WorkoutB009RepeatRowG0V_AA7DividerVAA6HStackVyAQyAOyAA7ForEachVySay0P4Core0P4StepCG10Foundation4UUIDVAR0pxR0VGG_AA6SpacerVAGyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGtGGtGG_Qo_AA0K18AttachmentModifierVGAiAEAjKQrAM_tFQOyAOyAA7SectionVyAA05EmptyG0VAQyAT_A22_tGA32_GG_Qo_GAGyAiAEAjKQrAM_tFQOyAXyAQyA7__A11_A20_tGG_Qo_A27_GSgGGMd);
}

uint64_t closure #1 in closure #1 in closure #1 in IntervalBlocksReorderingView.body.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X2>, void *a4@<X3>, uint64_t a5@<X8>)
{
  v40 = a3;
  v41 = a4;
  v39 = a2;
  v42 = a5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyAA4ViewPAAE20accessibilityElement8childrenQrAA26AccessibilityChildBehaviorV_tFQOyAA6HStackVyAA05TupleE0Vy07WorkoutB00N7StepRowV_AA6SpacerVACyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGtGG_Qo_AA0i10AttachmentV0VGMd);
  v35 = *(v6 - 8);
  v36 = v6;
  MEMORY[0x28223BE20](v6);
  v33 = v32 - v7;
  v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyAA4ViewPAAE20accessibilityElement8childrenQrAA26AccessibilityChildBehaviorV_tFQOyAA6HStackVyAA05TupleE0Vy07WorkoutB00N7StepRowV_AA6SpacerVACyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGtGG_Qo_AA0i10AttachmentV0VGSgMd);
  MEMORY[0x28223BE20](v38);
  v34 = v32 - v8;
  v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI19_ConditionalContentV7StorageOyACyAA08ModifiedD0VyAA4ViewPAAE20accessibilityElement8childrenQrAA26AccessibilityChildBehaviorV_tFQOyAA6VStackVyAA05TupleG0Vy07WorkoutB009RepeatRowG0V_AA7DividerVAA6HStackVyAQyAOyAA7ForEachVySay0P4Core0P4StepCG10Foundation4UUIDVAR0pxR0VGG_AA6SpacerVAGyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGtGGtGG_Qo_AA0K18AttachmentModifierVGAiAEAjKQrAM_tFQOyAOyAA7SectionVyAA05EmptyG0VAQyAT_A22_tGA32_GG_Qo_GAGyAiAEAjKQrAM_tFQOyAXyAQyA7__A11_A20_tGG_Qo_A27_GSg_GMd);
  MEMORY[0x28223BE20](v37);
  v10 = v32 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI19_ConditionalContentVyAA08ModifiedD0VyAA4ViewPAAE20accessibilityElement8childrenQrAA26AccessibilityChildBehaviorV_tFQOyAA6VStackVyAA05TupleF0Vy07WorkoutB009RepeatRowF0V_AA7DividerVAA6HStackVyAOyAMyAA7ForEachVySay0O4Core0O4StepCG10Foundation4UUIDVAP0owQ0VGG_AA6SpacerVAEyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGtGGtGG_Qo_AA0J18AttachmentModifierVGAgAEAhIQrAK_tFQOyAMyAA7SectionVyAA05EmptyF0VAOyAR_A20_tGA30_GG_Qo_GMd);
  MEMORY[0x28223BE20](v11);
  v13 = v32 - v12;
  v14 = type metadata accessor for WorkoutBlockType();
  v15 = *(v14 - 8);
  MEMORY[0x28223BE20](v14);
  v17 = v32 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v20 = v32 - v19;
  WorkoutBlock.blockType.getter();
  (*(v15 + 104))(v17, *MEMORY[0x277D7DDD0], v14);
  _s7SwiftUI31AccessibilityAttachmentModifierVAcA04ViewE0AAWlTm_10(&lazy protocol witness table cache variable for type WorkoutBlockType and conformance WorkoutBlockType, MEMORY[0x277D7DDE0]);
  dispatch thunk of RawRepresentable.rawValue.getter();
  dispatch thunk of RawRepresentable.rawValue.getter();
  v21 = *(v15 + 8);
  v21(v17, v14);
  v21(v20, v14);
  if (v44 != v43)
  {
    v24 = v41;
    v32[1] = a1;
    v25 = WorkoutBlock.steps.getter();
    if (v25 >> 62)
    {
      v30 = __CocoaSet.count.getter();

      if (v30)
      {
        goto LABEL_5;
      }
    }

    else
    {
      v26 = *((v25 & 0xFFFFFFFFFFFFFF8) + 0x10);

      if (v26)
      {
LABEL_5:
        v27 = v33;
        IntervalBlocksReorderingView.singleStepView(for:)(v24, v33);
        v28 = v34;
        sub_20C698BBC(v27, v34);
        v29 = 0;
LABEL_8:
        (*(v35 + 56))(v28, v29, 1, v36);
        v22 = &_s7SwiftUI15ModifiedContentVyAA4ViewPAAE20accessibilityElement8childrenQrAA26AccessibilityChildBehaviorV_tFQOyAA6HStackVyAA05TupleE0Vy07WorkoutB00N7StepRowV_AA6SpacerVACyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGtGG_Qo_AA0i10AttachmentV0VGSgMd;
        outlined init with copy of ModifiedContent<<<opaque return type of View.accessibilityElement(children:)>>.0, AccessibilityAttachmentModifier>?(v28, v10, &_s7SwiftUI15ModifiedContentVyAA4ViewPAAE20accessibilityElement8childrenQrAA26AccessibilityChildBehaviorV_tFQOyAA6HStackVyAA05TupleE0Vy07WorkoutB00N7StepRowV_AA6SpacerVACyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGtGG_Qo_AA0i10AttachmentV0VGSgMd);
        swift_storeEnumTagMultiPayload();
        lazy protocol witness table accessor for type _ConditionalContent<ModifiedContent<<<opaque return type of View.accessibilityElement(children:)>>.0, AccessibilityAttachmentModifier>, <<opaque return type of View.accessibilityElement(children:)>>.0> and conformance <> _ConditionalContent<A, B>();
        lazy protocol witness table accessor for type ModifiedContent<<<opaque return type of View.accessibilityElement(children:)>>.0, AccessibilityAttachmentModifier>? and conformance <A> A?();
        _ConditionalContent<>.init(storage:)();
        v23 = v28;
        return outlined destroy of Group<_ConditionalContent<_ConditionalContent<ModifiedContent<<<opaque return type of View.accessibilityElement(children:)>>.0, AccessibilityAttachmentModifier>, <<opaque return type of View.accessibilityElement(children:)>>.0>, ModifiedContent<<<opaque return type of View.accessibilityElement(children:)>>.0, AccessibilityAttachmentModifier>?>>(v23, v22);
      }
    }

    v29 = 1;
    v28 = v34;
    goto LABEL_8;
  }

  IntervalBlocksReorderingView.repeatableStepsView(for:)(a1, v39, v40, v41, v13);
  v22 = &_s7SwiftUI19_ConditionalContentVyAA08ModifiedD0VyAA4ViewPAAE20accessibilityElement8childrenQrAA26AccessibilityChildBehaviorV_tFQOyAA6VStackVyAA05TupleF0Vy07WorkoutB009RepeatRowF0V_AA7DividerVAA6HStackVyAOyAMyAA7ForEachVySay0O4Core0O4StepCG10Foundation4UUIDVAP0owQ0VGG_AA6SpacerVAEyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGtGGtGG_Qo_AA0J18AttachmentModifierVGAgAEAhIQrAK_tFQOyAMyAA7SectionVyAA05EmptyF0VAOyAR_A20_tGA30_GG_Qo_GMd;
  outlined init with copy of ModifiedContent<<<opaque return type of View.accessibilityElement(children:)>>.0, AccessibilityAttachmentModifier>?(v13, v10, &_s7SwiftUI19_ConditionalContentVyAA08ModifiedD0VyAA4ViewPAAE20accessibilityElement8childrenQrAA26AccessibilityChildBehaviorV_tFQOyAA6VStackVyAA05TupleF0Vy07WorkoutB009RepeatRowF0V_AA7DividerVAA6HStackVyAOyAMyAA7ForEachVySay0O4Core0O4StepCG10Foundation4UUIDVAP0owQ0VGG_AA6SpacerVAEyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGtGGtGG_Qo_AA0J18AttachmentModifierVGAgAEAhIQrAK_tFQOyAMyAA7SectionVyAA05EmptyF0VAOyAR_A20_tGA30_GG_Qo_GMd);
  swift_storeEnumTagMultiPayload();
  lazy protocol witness table accessor for type _ConditionalContent<ModifiedContent<<<opaque return type of View.accessibilityElement(children:)>>.0, AccessibilityAttachmentModifier>, <<opaque return type of View.accessibilityElement(children:)>>.0> and conformance <> _ConditionalContent<A, B>();
  lazy protocol witness table accessor for type ModifiedContent<<<opaque return type of View.accessibilityElement(children:)>>.0, AccessibilityAttachmentModifier>? and conformance <A> A?();
  _ConditionalContent<>.init(storage:)();
  v23 = v13;
  return outlined destroy of Group<_ConditionalContent<_ConditionalContent<ModifiedContent<<<opaque return type of View.accessibilityElement(children:)>>.0, AccessibilityAttachmentModifier>, <<opaque return type of View.accessibilityElement(children:)>>.0>, ModifiedContent<<<opaque return type of View.accessibilityElement(children:)>>.0, AccessibilityAttachmentModifier>?>>(v23, v22);
}

uint64_t IntervalBlocksReorderingView.repeatableStepsView(for:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X2>, void *a4@<X3>, uint64_t a5@<X8>)
{
  v39 = a3;
  v40 = a4;
  v37 = a1;
  v38 = a2;
  v48 = a5;
  v46 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI6VStackVyAA7SectionVyAA9EmptyViewVAA05TupleF0Vy07WorkoutB009RepeatRowF0V_AA6HStackVyAIyACyAA7ForEachVySay0H4Core0H4StepCG10Foundation4UUIDVAJ0hoJ0VGG_AA6SpacerVAA15ModifiedContentVyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGtGGtGAGGGMd);
  MEMORY[0x28223BE20](v46);
  v6 = &v35 - v5;
  v47 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI4ViewPAAE20accessibilityElement8childrenQrAA26AccessibilityChildBehaviorV_tFQOyAA6VStackVyAA7SectionVyAA05EmptyC0VAA05TupleC0Vy07WorkoutB009RepeatRowC0V_AA6HStackVyAOyAIyAA7ForEachVySay0N4Core0N4StepCG10Foundation4UUIDVAP0nuP0VGG_AA6SpacerVAA15ModifiedContentVyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGtGGtGAMGG_Qo_Md);
  v36 = *(v47 - 8);
  MEMORY[0x28223BE20](v47);
  v8 = &v35 - v7;
  v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI19_ConditionalContentV7StorageOyAA08ModifiedD0VyAA4ViewPAAE20accessibilityElement8childrenQrAA26AccessibilityChildBehaviorV_tFQOyAA6VStackVyAA05TupleG0Vy07WorkoutB009RepeatRowG0V_AA7DividerVAA6HStackVyAQyAOyAA7ForEachVySay0P4Core0P4StepCG10Foundation4UUIDVAR0pxR0VGG_AA6SpacerVAGyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGtGGtGG_Qo_AA0K18AttachmentModifierVGAiAEAjKQrAM_tFQOyAOyAA7SectionVyAA05EmptyG0VAQyAT_A22_tGA32_GG_Qo__GMd);
  MEMORY[0x28223BE20](v44);
  v45 = &v35 - v9;
  v10 = type metadata accessor for AccessibilityChildBehavior();
  v41 = *(v10 - 8);
  v42 = v10;
  MEMORY[0x28223BE20](v10);
  v12 = &v35 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI6VStackVyAA9TupleViewVy07WorkoutB009RepeatRowE0V_AA7DividerVAA6HStackVyAEyACyAA7ForEachVySay0F4Core0F4StepCG10Foundation4UUIDVAF0fnH0VGG_AA6SpacerVAA15ModifiedContentVyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGtGGtGGMd);
  MEMORY[0x28223BE20](v13);
  v15 = &v35 - v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI4ViewPAAE20accessibilityElement8childrenQrAA26AccessibilityChildBehaviorV_tFQOyAA6VStackVyAA05TupleC0Vy07WorkoutB009RepeatRowC0V_AA7DividerVAA6HStackVyAKyAIyAA7ForEachVySay0L4Core0L4StepCG10Foundation4UUIDVAL0ltN0VGG_AA6SpacerVAA15ModifiedContentVyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGtGGtGG_Qo_Md);
  v17 = *(v16 - 8);
  MEMORY[0x28223BE20](v16);
  v19 = &v35 - v18;
  v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyAA4ViewPAAE20accessibilityElement8childrenQrAA26AccessibilityChildBehaviorV_tFQOyAA6VStackVyAA05TupleE0Vy07WorkoutB009RepeatRowE0V_AA7DividerVAA6HStackVyAMyAKyAA7ForEachVySay0N4Core0N4StepCG10Foundation4UUIDVAN0nvP0VGG_AA6SpacerVACyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGtGGtGG_Qo_AA0I18AttachmentModifierVGMd);
  MEMORY[0x28223BE20](v43);
  v21 = &v35 - v20;
  v22 = static Platform.current.getter();
  v23 = static HorizontalAlignment.center.getter();
  if (v22)
  {
    *v6 = v23;
    *(v6 + 1) = 0;
    v6[16] = 1;
    v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI13_VariadicViewO4TreeVy_AA13_VStackLayoutVAA7SectionVyAA05EmptyD0VAA05TupleD0Vy07WorkoutB009RepeatRowD0V_AA6HStackVyAMyAA0F0VyAA7ForEachVySay0K4Core0K4StepCG10Foundation4UUIDVAN0krM0VGG_AA6SpacerVAA15ModifiedContentVyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGtGGtGAKGGMd);
    MEMORY[0x28223BE20](v24);
    v25 = v38;
    *(&v35 - 4) = v37;
    *(&v35 - 3) = v25;
    v26 = v40;
    *(&v35 - 2) = v39;
    *(&v35 - 1) = v26;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI9TupleViewVy07WorkoutB009RepeatRowD0V_AA6HStackVyACyAA6VStackVyAA7ForEachVySay0E4Core0E4StepCG10Foundation4UUIDVAD0emG0VGG_AA6SpacerVAA15ModifiedContentVyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGtGGtGMd);
    lazy protocol witness table accessor for type VStack<TupleView<(RepeatRowView, Divider, HStack<TupleView<(VStack<ForEach<[WorkoutStep], UUID, WorkoutStepRow>>, Spacer, ModifiedContent<Image, _EnvironmentKeyWritingModifier<Color?>>)>>)>> and conformance VStack<A>(&lazy protocol witness table cache variable for type TupleView<(RepeatRowView, HStack<TupleView<(VStack<ForEach<[WorkoutStep], UUID, WorkoutStepRow>>, Spacer, ModifiedContent<Image, _EnvironmentKeyWritingModifier<Color?>>)>>)> and conformance TupleView<A>, &_s7SwiftUI9TupleViewVy07WorkoutB009RepeatRowD0V_AA6HStackVyACyAA6VStackVyAA7ForEachVySay0E4Core0E4StepCG10Foundation4UUIDVAD0emG0VGG_AA6SpacerVAA15ModifiedContentVyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGtGGtGMd);
    Section<>.init(content:)();
    static AccessibilityChildBehavior.combine.getter();
    v27 = lazy protocol witness table accessor for type VStack<TupleView<(RepeatRowView, Divider, HStack<TupleView<(VStack<ForEach<[WorkoutStep], UUID, WorkoutStepRow>>, Spacer, ModifiedContent<Image, _EnvironmentKeyWritingModifier<Color?>>)>>)>> and conformance VStack<A>(&lazy protocol witness table cache variable for type VStack<Section<EmptyView, TupleView<(RepeatRowView, HStack<TupleView<(VStack<ForEach<[WorkoutStep], UUID, WorkoutStepRow>>, Spacer, ModifiedContent<Image, _EnvironmentKeyWritingModifier<Color?>>)>>)>, EmptyView>> and conformance VStack<A>, &_s7SwiftUI6VStackVyAA7SectionVyAA9EmptyViewVAA05TupleF0Vy07WorkoutB009RepeatRowF0V_AA6HStackVyAIyACyAA7ForEachVySay0H4Core0H4StepCG10Foundation4UUIDVAJ0hoJ0VGG_AA6SpacerVAA15ModifiedContentVyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGtGGtGAGGGMd);
    v28 = v46;
    View.accessibilityElement(children:)();
    (*(v41 + 8))(v12, v42);
    outlined destroy of Button<Text>?(v6, &_s7SwiftUI6VStackVyAA7SectionVyAA9EmptyViewVAA05TupleF0Vy07WorkoutB009RepeatRowF0V_AA6HStackVyAIyACyAA7ForEachVySay0H4Core0H4StepCG10Foundation4UUIDVAJ0hoJ0VGG_AA6SpacerVAA15ModifiedContentVyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGtGGtGAGGGMd);
    v29 = v36;
    v30 = v47;
    (*(v36 + 16))(v45, v8, v47);
    swift_storeEnumTagMultiPayload();
    lazy protocol witness table accessor for type ModifiedContent<<<opaque return type of View.accessibilityElement(children:)>>.0, AccessibilityAttachmentModifier> and conformance <> ModifiedContent<A, B>();
    v49 = v28;
    v50 = v27;
    swift_getOpaqueTypeConformance2();
    _ConditionalContent<>.init(storage:)();
    return (*(v29 + 8))(v8, v30);
  }

  else
  {
    *v15 = v23;
    *(v15 + 1) = 0x4020000000000000;
    v15[16] = 0;
    v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI13_VariadicViewO4TreeVy_AA13_VStackLayoutVAA05TupleD0Vy07WorkoutB009RepeatRowD0V_AA7DividerVAA6HStackVyAIyAA0F0VyAA7ForEachVySay0I4Core0I4StepCG10Foundation4UUIDVAJ0iqK0VGG_AA6SpacerVAA15ModifiedContentVyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGtGGtGGMd);
    closure #1 in IntervalBlocksReorderingView.repeatableStepsPhoneView(for:)(v38, v39, v40, &v15[*(v32 + 44)]);
    static AccessibilityChildBehavior.combine.getter();
    v40 = MEMORY[0x277CE1198];
    v33 = lazy protocol witness table accessor for type VStack<TupleView<(RepeatRowView, Divider, HStack<TupleView<(VStack<ForEach<[WorkoutStep], UUID, WorkoutStepRow>>, Spacer, ModifiedContent<Image, _EnvironmentKeyWritingModifier<Color?>>)>>)>> and conformance VStack<A>(&lazy protocol witness table cache variable for type VStack<TupleView<(RepeatRowView, Divider, HStack<TupleView<(VStack<ForEach<[WorkoutStep], UUID, WorkoutStepRow>>, Spacer, ModifiedContent<Image, _EnvironmentKeyWritingModifier<Color?>>)>>)>> and conformance VStack<A>, &_s7SwiftUI6VStackVyAA9TupleViewVy07WorkoutB009RepeatRowE0V_AA7DividerVAA6HStackVyAEyACyAA7ForEachVySay0F4Core0F4StepCG10Foundation4UUIDVAF0fnH0VGG_AA6SpacerVAA15ModifiedContentVyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGtGGtGGMd);
    View.accessibilityElement(children:)();
    (*(v41 + 8))(v12, v42);
    outlined destroy of Button<Text>?(v15, &_s7SwiftUI6VStackVyAA9TupleViewVy07WorkoutB009RepeatRowE0V_AA7DividerVAA6HStackVyAEyACyAA7ForEachVySay0F4Core0F4StepCG10Foundation4UUIDVAF0fnH0VGG_AA6SpacerVAA15ModifiedContentVyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGtGGtGGMd);
    v49 = v13;
    v50 = v33;
    swift_getOpaqueTypeConformance2();
    View.accessibilityAddTraits(uiTraits:)();
    (*(v17 + 8))(v19, v16);
    outlined init with copy of ModifiedContent<<<opaque return type of View.accessibilityElement(children:)>>.0, AccessibilityAttachmentModifier>?(v21, v45, &_s7SwiftUI15ModifiedContentVyAA4ViewPAAE20accessibilityElement8childrenQrAA26AccessibilityChildBehaviorV_tFQOyAA6VStackVyAA05TupleE0Vy07WorkoutB009RepeatRowE0V_AA7DividerVAA6HStackVyAMyAKyAA7ForEachVySay0N4Core0N4StepCG10Foundation4UUIDVAN0nvP0VGG_AA6SpacerVACyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGtGGtGG_Qo_AA0I18AttachmentModifierVGMd);
    swift_storeEnumTagMultiPayload();
    lazy protocol witness table accessor for type ModifiedContent<<<opaque return type of View.accessibilityElement(children:)>>.0, AccessibilityAttachmentModifier> and conformance <> ModifiedContent<A, B>();
    v34 = lazy protocol witness table accessor for type VStack<TupleView<(RepeatRowView, Divider, HStack<TupleView<(VStack<ForEach<[WorkoutStep], UUID, WorkoutStepRow>>, Spacer, ModifiedContent<Image, _EnvironmentKeyWritingModifier<Color?>>)>>)>> and conformance VStack<A>(&lazy protocol witness table cache variable for type VStack<Section<EmptyView, TupleView<(RepeatRowView, HStack<TupleView<(VStack<ForEach<[WorkoutStep], UUID, WorkoutStepRow>>, Spacer, ModifiedContent<Image, _EnvironmentKeyWritingModifier<Color?>>)>>)>, EmptyView>> and conformance VStack<A>, &_s7SwiftUI6VStackVyAA7SectionVyAA9EmptyViewVAA05TupleF0Vy07WorkoutB009RepeatRowF0V_AA6HStackVyAIyACyAA7ForEachVySay0H4Core0H4StepCG10Foundation4UUIDVAJ0hoJ0VGG_AA6SpacerVAA15ModifiedContentVyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGtGGtGAGGGMd);
    v49 = v46;
    v50 = v34;
    swift_getOpaqueTypeConformance2();
    _ConditionalContent<>.init(storage:)();
    return outlined destroy of Group<_ConditionalContent<_ConditionalContent<ModifiedContent<<<opaque return type of View.accessibilityElement(children:)>>.0, AccessibilityAttachmentModifier>, <<opaque return type of View.accessibilityElement(children:)>>.0>, ModifiedContent<<<opaque return type of View.accessibilityElement(children:)>>.0, AccessibilityAttachmentModifier>?>>(v21, &_s7SwiftUI15ModifiedContentVyAA4ViewPAAE20accessibilityElement8childrenQrAA26AccessibilityChildBehaviorV_tFQOyAA6VStackVyAA05TupleE0Vy07WorkoutB009RepeatRowE0V_AA7DividerVAA6HStackVyAMyAKyAA7ForEachVySay0N4Core0N4StepCG10Foundation4UUIDVAN0nvP0VGG_AA6SpacerVACyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGtGGtGG_Qo_AA0I18AttachmentModifierVGMd);
  }
}

uint64_t IntervalBlocksReorderingView.singleStepView(for:)@<X0>(void *a1@<X3>, uint64_t a2@<X8>)
{
  v18 = a2;
  v15 = type metadata accessor for AccessibilityChildBehavior();
  v3 = *(v15 - 8);
  MEMORY[0x28223BE20](v15);
  v5 = &v14 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI4ViewPAAE20accessibilityElement8childrenQrAA26AccessibilityChildBehaviorV_tFQOyAA6HStackVyAA05TupleC0Vy07WorkoutB00L7StepRowV_AA6SpacerVAA15ModifiedContentVyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGtGG_Qo_Md);
  v7 = *(v6 - 8);
  v16 = v6;
  v17 = v7;
  MEMORY[0x28223BE20](v6);
  v9 = &v14 - v8;
  v14 = static VerticalAlignment.center.getter();
  v22 = 1;
  closure #1 in IntervalBlocksReorderingView.singleStepView(for:)(a1, &v30);
  v24 = v31;
  v25 = v32;
  v26 = v33;
  v27 = v34;
  v23 = v30;
  v28[1] = v31;
  v28[2] = v32;
  v28[3] = v33;
  v29 = v34;
  v28[0] = v30;
  outlined init with copy of Button<Text>?(&v23, &v19, &_s7SwiftUI9TupleViewVy07WorkoutB00E7StepRowV_AA6SpacerVAA15ModifiedContentVyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGtGMd);
  outlined destroy of Button<Text>?(v28, &_s7SwiftUI9TupleViewVy07WorkoutB00E7StepRowV_AA6SpacerVAA15ModifiedContentVyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGtGMd);
  *(v21 + 7) = v23;
  *(&v21[4] + 7) = v27;
  *(&v21[3] + 7) = v26;
  *(&v21[2] + 7) = v25;
  *(&v21[1] + 7) = v24;
  *(&v20[1] + 1) = v21[1];
  *(&v20[2] + 1) = v21[2];
  *(&v20[3] + 1) = v21[3];
  v20[4] = *(&v21[3] + 15);
  v19 = v14;
  LOBYTE(v20[0]) = v22;
  *(v20 + 1) = v21[0];
  static AccessibilityChildBehavior.combine.getter();
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI6HStackVyAA9TupleViewVy07WorkoutB00F7StepRowV_AA6SpacerVAA15ModifiedContentVyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGtGGMd);
  v11 = lazy protocol witness table accessor for type VStack<TupleView<(RepeatRowView, Divider, HStack<TupleView<(VStack<ForEach<[WorkoutStep], UUID, WorkoutStepRow>>, Spacer, ModifiedContent<Image, _EnvironmentKeyWritingModifier<Color?>>)>>)>> and conformance VStack<A>(&lazy protocol witness table cache variable for type HStack<TupleView<(WorkoutStepRow, Spacer, ModifiedContent<Image, _EnvironmentKeyWritingModifier<Color?>>)>> and conformance HStack<A>, &_s7SwiftUI6HStackVyAA9TupleViewVy07WorkoutB00F7StepRowV_AA6SpacerVAA15ModifiedContentVyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGtGGMd);
  View.accessibilityElement(children:)();
  (*(v3 + 8))(v5, v15);
  v32 = v20[1];
  v33 = v20[2];
  v34 = v20[3];
  v35 = v20[4];
  v30 = v19;
  v31 = v20[0];
  outlined destroy of Button<Text>?(&v30, &_s7SwiftUI6HStackVyAA9TupleViewVy07WorkoutB00F7StepRowV_AA6SpacerVAA15ModifiedContentVyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGtGGMd);
  *&v19 = v10;
  *(&v19 + 1) = v11;
  swift_getOpaqueTypeConformance2();
  v12 = v16;
  View.accessibilityAddTraits(uiTraits:)();
  return (*(v17 + 8))(v9, v12);
}

uint64_t closure #2 in closure #1 in closure #1 in IntervalBlocksReorderingView.body.getter@<X0>(uint64_t a1@<X0>, void *a2@<X1>, void *a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v64 = a1;
  v65 = a3;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI9TupleViewVyAA6ButtonVyAA4TextVGSg_AItGMd);
  v67 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v63 = &v58 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI6ButtonVyAA4TextVGMd);
  v66 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v12 = &v58 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI6ButtonVyAA4TextVGSgMd);
  MEMORY[0x28223BE20](v13 - 8);
  v62 = &v58 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v61 = &v58 - v16;
  MEMORY[0x28223BE20](v17);
  v19 = &v58 - v18;
  MEMORY[0x28223BE20](v20);
  v22 = &v58 - v21;
  v23 = IntervalWorkout.stepBlocks.getter();
  v24 = specialized Collection<>.firstIndex(of:)(a4, v23);
  v26 = v25;

  if (v26)
  {
    v27 = *(v67 + 56);

    return v27(a5, 1, 1, v8);
  }

  v60 = v8;
  if (__OFADD__(v24, 2))
  {
    __break(1u);
    goto LABEL_20;
  }

  v29 = IntervalWorkout.stepBlocks.getter();
  if (v29 >> 62)
  {
LABEL_20:
    v30 = __CocoaSet.count.getter();
    goto LABEL_8;
  }

  v30 = *((v29 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_8:

  v59 = a5;
  if (v30 >= v24 + 2)
  {
    if (one-time initialization token for WorkoutUIBundle != -1)
    {
      swift_once();
    }

    swift_beginAccess();
    v32 = WorkoutUIBundle.super.isa;
    v71._object = 0xE000000000000000;
    v33._object = 0xEC0000004E574F44;
    v33._countAndFlagsBits = 0x5F45564F4D5F5841;
    v34.value._countAndFlagsBits = 0x617A696C61636F4CLL;
    v34.value._object = 0xEB00000000656C62;
    v35._countAndFlagsBits = 0;
    v35._object = 0xE000000000000000;
    v71._countAndFlagsBits = 0;
    v36 = NSLocalizedString(_:tableName:bundle:value:comment:)(v33, v34, v32, v35, v71);

    v69 = v36;
    v37 = swift_allocObject();
    v38 = v65;
    v37[2] = v64;
    v37[3] = a2;
    v37[4] = v38;
    v37[5] = v24;
    lazy protocol witness table accessor for type String and conformance String();
    v39 = a2;
    v40 = v38;
    Button<>.init<A>(_:action:)();
    v41 = v66;
    (*(v66 + 32))(v22, v12, v10);
    v31 = *(v41 + 56);
    v31(v22, 0, 1, v10);
  }

  else
  {
    v31 = *(v66 + 56);
    v31(v22, 1, 1, v10);
  }

  v42 = v60;
  if (v24 < 1)
  {
    v52 = 1;
  }

  else
  {
    if (one-time initialization token for WorkoutUIBundle != -1)
    {
      swift_once();
    }

    swift_beginAccess();
    v43 = WorkoutUIBundle.super.isa;
    v72._object = 0xE000000000000000;
    v44._countAndFlagsBits = 0x5F45564F4D5F5841;
    v44._object = 0xEA00000000005055;
    v45.value._countAndFlagsBits = 0x617A696C61636F4CLL;
    v45.value._object = 0xEB00000000656C62;
    v46._countAndFlagsBits = 0;
    v46._object = 0xE000000000000000;
    v72._countAndFlagsBits = 0;
    v47 = NSLocalizedString(_:tableName:bundle:value:comment:)(v44, v45, v43, v46, v72);

    v68 = v47;
    v48 = swift_allocObject();
    v49 = v65;
    v48[2] = v64;
    v48[3] = a2;
    v48[4] = v49;
    v48[5] = v24;
    lazy protocol witness table accessor for type String and conformance String();
    v50 = a2;
    v51 = v49;
    Button<>.init<A>(_:action:)();
    (*(v66 + 32))(v19, v12, v10);
    v52 = 0;
    v42 = v60;
  }

  v31(v19, v52, 1, v10);
  v53 = v61;
  outlined init with copy of Button<Text>?(v22, v61, &_s7SwiftUI6ButtonVyAA4TextVGSgMd);
  v54 = v62;
  outlined init with copy of Button<Text>?(v19, v62, &_s7SwiftUI6ButtonVyAA4TextVGSgMd);
  v55 = v63;
  outlined init with copy of Button<Text>?(v53, v63, &_s7SwiftUI6ButtonVyAA4TextVGSgMd);
  v56 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI6ButtonVyAA4TextVGSg_AGtMd);
  outlined init with copy of Button<Text>?(v54, v55 + *(v56 + 48), &_s7SwiftUI6ButtonVyAA4TextVGSgMd);
  outlined destroy of Button<Text>?(v19, &_s7SwiftUI6ButtonVyAA4TextVGSgMd);
  outlined destroy of Button<Text>?(v22, &_s7SwiftUI6ButtonVyAA4TextVGSgMd);
  outlined destroy of Button<Text>?(v54, &_s7SwiftUI6ButtonVyAA4TextVGSgMd);
  outlined destroy of Button<Text>?(v53, &_s7SwiftUI6ButtonVyAA4TextVGSgMd);
  v57 = v59;
  outlined init with take of TupleView<(Button<Text>?, Button<Text>?)>(v55, v59);
  return (*(v67 + 56))(v57, 0, 1, v42);
}

void closure #1 in closure #2 in closure #1 in closure #1 in IntervalBlocksReorderingView.body.getter(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v6 = type metadata accessor for IndexSet();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = v27 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  IndexSet.init(integer:)();
  if (__OFADD__(a4, 2))
  {
    __break(1u);
  }

  else
  {
    v27[1] = a2;
    v10 = IntervalWorkout.stepBlocks.modify();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay11WorkoutCore0A5BlockCGMd);
    lazy protocol witness table accessor for type VStack<TupleView<(RepeatRowView, Divider, HStack<TupleView<(VStack<ForEach<[WorkoutStep], UUID, WorkoutStepRow>>, Spacer, ModifiedContent<Image, _EnvironmentKeyWritingModifier<Color?>>)>>)>> and conformance VStack<A>(&lazy protocol witness table cache variable for type [WorkoutBlock] and conformance [A], &_sSay11WorkoutCore0A5BlockCGMd);
    MutableCollection.move(fromOffsets:toOffset:)();
    (*(v7 + 8))(v9, v6);
    v10(v28, 0);
    if (one-time initialization token for WorkoutUIBundle == -1)
    {
      goto LABEL_3;
    }
  }

  swift_once();
LABEL_3:
  swift_beginAccess();
  v11 = WorkoutUIBundle.super.isa;
  v29._object = 0xE000000000000000;
  v12._countAndFlagsBits = 0x4445564F4D5F5841;
  v12._object = 0xEE00574F4C45425FLL;
  v13.value._countAndFlagsBits = 0x617A696C61636F4CLL;
  v13.value._object = 0xEB00000000656C62;
  v14._countAndFlagsBits = 0;
  v14._object = 0xE000000000000000;
  v29._countAndFlagsBits = 0;
  NSLocalizedString(_:tableName:bundle:value:comment:)(v12, v13, v11, v14, v29);

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys7CVarArg_pGMd);
  v15 = swift_allocObject();
  *(v15 + 16) = xmmword_20CB5DA70;
  v16 = IntervalWorkout.stepBlocks.getter();
  if ((v16 & 0xC000000000000001) != 0)
  {
    MEMORY[0x20F30C990](a4, v16);
  }

  else
  {
    if ((a4 & 0x8000000000000000) != 0)
    {
      __break(1u);
      goto LABEL_16;
    }

    if (*((v16 & 0xFFFFFFFFFFFFFF8) + 0x10) <= a4)
    {
      __break(1u);
      goto LABEL_18;
    }
  }

  a4 = WorkoutBlock.steps.getter();

  if ((a4 & 0xC000000000000001) == 0)
  {
    if (*((a4 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {

      goto LABEL_10;
    }

LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

LABEL_16:
  MEMORY[0x20F30C990](0, a4);
LABEL_10:

  v17 = WorkoutStep.displayString.getter();
  v19 = v18;

  *(v15 + 56) = MEMORY[0x277D837D0];
  *(v15 + 64) = lazy protocol witness table accessor for type String and conformance String();
  *(v15 + 32) = v17;
  *(v15 + 40) = v19;
  v20 = static String.localizedStringWithFormat(_:_:)();
  v22 = v21;

  v23 = *MEMORY[0x277D76438];
  v24 = MEMORY[0x20F30BAD0](v20, v22);
  UIAccessibilityPostNotification(v23, v24);

  v25 = *MEMORY[0x277CE6CD0];
  if (*MEMORY[0x277CE6CD0])
  {

    v26 = v25;
    UIAccessibilityPostNotification(v23, v26);

    return;
  }

LABEL_19:
  __break(1u);
}

void closure #2 in closure #2 in closure #1 in closure #1 in IntervalBlocksReorderingView.body.getter(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v6 = type metadata accessor for IndexSet();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = v27 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  IndexSet.init(integer:)();
  if (__OFSUB__(a4, 1))
  {
    __break(1u);
  }

  else
  {
    v27[1] = a2;
    v10 = IntervalWorkout.stepBlocks.modify();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay11WorkoutCore0A5BlockCGMd);
    lazy protocol witness table accessor for type VStack<TupleView<(RepeatRowView, Divider, HStack<TupleView<(VStack<ForEach<[WorkoutStep], UUID, WorkoutStepRow>>, Spacer, ModifiedContent<Image, _EnvironmentKeyWritingModifier<Color?>>)>>)>> and conformance VStack<A>(&lazy protocol witness table cache variable for type [WorkoutBlock] and conformance [A], &_sSay11WorkoutCore0A5BlockCGMd);
    MutableCollection.move(fromOffsets:toOffset:)();
    (*(v7 + 8))(v9, v6);
    v10(v28, 0);
    if (one-time initialization token for WorkoutUIBundle == -1)
    {
      goto LABEL_3;
    }
  }

  swift_once();
LABEL_3:
  swift_beginAccess();
  v11 = WorkoutUIBundle.super.isa;
  v29._object = 0xE000000000000000;
  v12._countAndFlagsBits = 0x4445564F4D5F5841;
  v12._object = 0xEE0045564F42415FLL;
  v13.value._countAndFlagsBits = 0x617A696C61636F4CLL;
  v13.value._object = 0xEB00000000656C62;
  v14._countAndFlagsBits = 0;
  v14._object = 0xE000000000000000;
  v29._countAndFlagsBits = 0;
  NSLocalizedString(_:tableName:bundle:value:comment:)(v12, v13, v11, v14, v29);

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys7CVarArg_pGMd);
  v15 = swift_allocObject();
  *(v15 + 16) = xmmword_20CB5DA70;
  v16 = IntervalWorkout.stepBlocks.getter();
  if ((v16 & 0xC000000000000001) != 0)
  {
    MEMORY[0x20F30C990](a4, v16);
  }

  else
  {
    if ((a4 & 0x8000000000000000) != 0)
    {
      __break(1u);
      goto LABEL_16;
    }

    if (*((v16 & 0xFFFFFFFFFFFFFF8) + 0x10) <= a4)
    {
      __break(1u);
      goto LABEL_18;
    }
  }

  a4 = WorkoutBlock.steps.getter();

  if ((a4 & 0xC000000000000001) == 0)
  {
    if (*((a4 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {

      goto LABEL_10;
    }

LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

LABEL_16:
  MEMORY[0x20F30C990](0, a4);
LABEL_10:

  v17 = WorkoutStep.displayString.getter();
  v19 = v18;

  *(v15 + 56) = MEMORY[0x277D837D0];
  *(v15 + 64) = lazy protocol witness table accessor for type String and conformance String();
  *(v15 + 32) = v17;
  *(v15 + 40) = v19;
  v20 = static String.localizedStringWithFormat(_:_:)();
  v22 = v21;

  v23 = *MEMORY[0x277D76438];
  v24 = MEMORY[0x20F30BAD0](v20, v22);
  UIAccessibilityPostNotification(v23, v24);

  v25 = *MEMORY[0x277CE6CD0];
  if (*MEMORY[0x277CE6CD0])
  {

    v26 = v25;
    UIAccessibilityPostNotification(v23, v26);

    return;
  }

LABEL_19:
  __break(1u);
}

uint64_t closure #2 in closure #1 in IntervalBlocksReorderingView.body.getter()
{
  v0 = IntervalWorkout.stepBlocks.modify();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay11WorkoutCore0A5BlockCGMd);
  lazy protocol witness table accessor for type VStack<TupleView<(RepeatRowView, Divider, HStack<TupleView<(VStack<ForEach<[WorkoutStep], UUID, WorkoutStepRow>>, Spacer, ModifiedContent<Image, _EnvironmentKeyWritingModifier<Color?>>)>>)>> and conformance VStack<A>(&lazy protocol witness table cache variable for type [WorkoutBlock] and conformance [A], &_sSay11WorkoutCore0A5BlockCGMd);
  MutableCollection.move(fromOffsets:toOffset:)();
  return v0(&v2, 0);
}

uint64_t closure #1 in closure #1 in IntervalBlocksReorderingView.repeatableStepsWatchView(for:)@<X0>(uint64_t a1@<X1>, void *a2@<X2>, void *a3@<X3>, uint64_t a4@<X8>)
{
  v18 = a2;
  v19 = a3;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI6HStackVyAA9TupleViewVyAA6VStackVyAA7ForEachVySay11WorkoutCore0I4StepCG10Foundation4UUIDV0iB00iK3RowVGG_AA6SpacerVAA15ModifiedContentVyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGtGGMd);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v18 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v11 = &v18 - v10;
  v20 = WorkoutBlock.repetitions.getter();
  static Binding.constant(_:)();
  v12 = v21;
  v13 = v22;
  v14 = v23;
  *v11 = static VerticalAlignment.center.getter();
  *(v11 + 1) = 0;
  v11[16] = 1;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI13_VariadicViewO4TreeVy_AA13_HStackLayoutVAA05TupleD0VyAA6VStackVyAA7ForEachVySay11WorkoutCore0L4StepCG10Foundation4UUIDV0lB00lN3RowVGG_AA6SpacerVAA15ModifiedContentVyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGtGGMd);
  closure #1 in closure #1 in closure #1 in IntervalBlocksReorderingView.repeatableStepsWatchView(for:)(a1, v18, v19, 0, 1, partial apply for closure #1 in closure #1 in closure #1 in closure #1 in closure #1 in IntervalBlocksReorderingView.repeatableStepsWatchView(for:), &v11[*(v15 + 44)]);
  outlined init with copy of Button<Text>?(v11, v8, &_s7SwiftUI6HStackVyAA9TupleViewVyAA6VStackVyAA7ForEachVySay11WorkoutCore0I4StepCG10Foundation4UUIDV0iB00iK3RowVGG_AA6SpacerVAA15ModifiedContentVyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGtGGMd);
  *a4 = v12;
  *(a4 + 8) = v13;
  *(a4 + 16) = v14;
  *(a4 + 24) = 0;
  *(a4 + 32) = 1;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9WorkoutUI13RepeatRowViewV_05SwiftB06HStackVyAD05TupleE0VyAD6VStackVyAD7ForEachVySay0A4Core0A4StepCG10Foundation4UUIDVAA0amD0VGG_AD6SpacerVAD15ModifiedContentVyAD5ImageVAD30_EnvironmentKeyWritingModifierVyAD5ColorVSgGGtGGtMd);
  outlined init with copy of Button<Text>?(v8, a4 + *(v16 + 48), &_s7SwiftUI6HStackVyAA9TupleViewVyAA6VStackVyAA7ForEachVySay11WorkoutCore0I4StepCG10Foundation4UUIDV0iB00iK3RowVGG_AA6SpacerVAA15ModifiedContentVyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGtGGMd);

  outlined destroy of Button<Text>?(v11, &_s7SwiftUI6HStackVyAA9TupleViewVyAA6VStackVyAA7ForEachVySay11WorkoutCore0I4StepCG10Foundation4UUIDV0iB00iK3RowVGG_AA6SpacerVAA15ModifiedContentVyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGtGGMd);
  outlined destroy of Button<Text>?(v8, &_s7SwiftUI6HStackVyAA9TupleViewVyAA6VStackVyAA7ForEachVySay11WorkoutCore0I4StepCG10Foundation4UUIDV0iB00iK3RowVGG_AA6SpacerVAA15ModifiedContentVyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGtGGMd);
}

uint64_t closure #1 in IntervalBlocksReorderingView.repeatableStepsPhoneView(for:)@<X0>(uint64_t a1@<X1>, void *a2@<X2>, void *a3@<X3>, uint64_t a4@<X8>)
{
  v30 = a3;
  v32 = a1;
  v33 = a2;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI6HStackVyAA9TupleViewVyAA6VStackVyAA7ForEachVySay11WorkoutCore0I4StepCG10Foundation4UUIDV0iB00iK3RowVGG_AA6SpacerVAA15ModifiedContentVyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGtGGMd);
  MEMORY[0x28223BE20](v5 - 8);
  v31 = &v26 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v9 = &v26 - v8;
  v10 = type metadata accessor for Divider();
  v28 = *(v10 - 8);
  v11 = v28;
  MEMORY[0x28223BE20](v10);
  v13 = &v26 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v16 = &v26 - v15;
  v34 = WorkoutBlock.repetitions.getter();
  static Binding.constant(_:)();
  v18 = v35;
  v17 = v36;
  v29 = v37;
  v27 = v16;
  Divider.init()();
  *v9 = static VerticalAlignment.center.getter();
  *(v9 + 1) = 0;
  v9[16] = 1;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI13_VariadicViewO4TreeVy_AA13_HStackLayoutVAA05TupleD0VyAA6VStackVyAA7ForEachVySay11WorkoutCore0L4StepCG10Foundation4UUIDV0lB00lN3RowVGG_AA6SpacerVAA15ModifiedContentVyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGtGGMd);
  closure #1 in closure #1 in closure #1 in IntervalBlocksReorderingView.repeatableStepsWatchView(for:)(v32, v33, v30, 0x4020000000000000, 0, partial apply for closure #1 in closure #1 in closure #1 in closure #1 in IntervalBlocksReorderingView.repeatableStepsPhoneView(for:), &v9[*(v19 + 44)]);
  LOBYTE(v35) = 1;
  v20 = *(v11 + 16);
  v26 = v13;
  v20(v13, v16, v10);
  v21 = v31;
  outlined init with copy of Button<Text>?(v9, v31, &_s7SwiftUI6HStackVyAA9TupleViewVyAA6VStackVyAA7ForEachVySay11WorkoutCore0I4StepCG10Foundation4UUIDV0iB00iK3RowVGG_AA6SpacerVAA15ModifiedContentVyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGtGGMd);
  v22 = v35;
  *a4 = v18;
  *(a4 + 8) = v17;
  *(a4 + 16) = v29;
  *(a4 + 24) = 0;
  *(a4 + 32) = v22;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9WorkoutUI13RepeatRowViewV_05SwiftB07DividerVAD6HStackVyAD05TupleE0VyAD6VStackVyAD7ForEachVySay0A4Core0A4StepCG10Foundation4UUIDVAA0anD0VGG_AD6SpacerVAD15ModifiedContentVyAD5ImageVAD30_EnvironmentKeyWritingModifierVyAD5ColorVSgGGtGGtMd);
  v20((a4 + *(v23 + 48)), v13, v10);
  outlined init with copy of Button<Text>?(v21, a4 + *(v23 + 64), &_s7SwiftUI6HStackVyAA9TupleViewVyAA6VStackVyAA7ForEachVySay11WorkoutCore0I4StepCG10Foundation4UUIDV0iB00iK3RowVGG_AA6SpacerVAA15ModifiedContentVyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGtGGMd);

  outlined destroy of Button<Text>?(v9, &_s7SwiftUI6HStackVyAA9TupleViewVyAA6VStackVyAA7ForEachVySay11WorkoutCore0I4StepCG10Foundation4UUIDV0iB00iK3RowVGG_AA6SpacerVAA15ModifiedContentVyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGtGGMd);
  v24 = *(v28 + 8);
  v24(v27, v10);
  outlined destroy of Button<Text>?(v21, &_s7SwiftUI6HStackVyAA9TupleViewVyAA6VStackVyAA7ForEachVySay11WorkoutCore0I4StepCG10Foundation4UUIDV0iB00iK3RowVGG_AA6SpacerVAA15ModifiedContentVyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGtGGMd);
  v24(v26, v10);
}

uint64_t closure #1 in closure #1 in closure #1 in IntervalBlocksReorderingView.repeatableStepsWatchView(for:)@<X0>(uint64_t a1@<X1>, void *a2@<X2>, void *a3@<X3>, uint64_t a4@<X4>, char a5@<W5>, uint64_t a6@<X7>, uint64_t a7@<X8>)
{
  v29[2] = a6;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI6VStackVyAA7ForEachVySay11WorkoutCore0F4StepCG10Foundation4UUIDV0fB00fH3RowVGGMd);
  MEMORY[0x28223BE20](v13 - 8);
  v15 = v29 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v18 = v29 - v17;
  *v18 = static HorizontalAlignment.center.getter();
  *(v18 + 1) = a4;
  v18[16] = a5;
  v29[1] = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI13_VariadicViewO4TreeVy_AA13_VStackLayoutVAA7ForEachVySay11WorkoutCore0J4StepCG10Foundation4UUIDV0jB00jL3RowVGGMd) + 44);
  v29[3] = WorkoutBlock.steps.getter();
  v19 = swift_allocObject();
  v19[2] = a1;
  v19[3] = a2;
  v19[4] = a3;
  v20 = a2;
  v21 = a3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay11WorkoutCore0A4StepCGMd);
  type metadata accessor for UUID();
  lazy protocol witness table accessor for type VStack<TupleView<(RepeatRowView, Divider, HStack<TupleView<(VStack<ForEach<[WorkoutStep], UUID, WorkoutStepRow>>, Spacer, ModifiedContent<Image, _EnvironmentKeyWritingModifier<Color?>>)>>)>> and conformance VStack<A>(&lazy protocol witness table cache variable for type [WorkoutStep] and conformance [A], &_sSay11WorkoutCore0A4StepCGMd);
  lazy protocol witness table accessor for type WorkoutStepRow and conformance WorkoutStepRow();
  _s7SwiftUI31AccessibilityAttachmentModifierVAcA04ViewE0AAWlTm_10(&lazy protocol witness table cache variable for type WorkoutStep and conformance WorkoutStep, MEMORY[0x277D7DD30]);
  ForEach<>.init(_:content:)();
  v22 = Image.init(systemName:)();
  v23 = static Color.secondary.getter();
  KeyPath = swift_getKeyPath();
  outlined init with copy of Button<Text>?(v18, v15, &_s7SwiftUI6VStackVyAA7ForEachVySay11WorkoutCore0F4StepCG10Foundation4UUIDV0fB00fH3RowVGGMd);
  outlined init with copy of Button<Text>?(v15, a7, &_s7SwiftUI6VStackVyAA7ForEachVySay11WorkoutCore0F4StepCG10Foundation4UUIDV0fB00fH3RowVGGMd);
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI6VStackVyAA7ForEachVySay11WorkoutCore0F4StepCG10Foundation4UUIDV0fB00fH3RowVGG_AA6SpacerVAA15ModifiedContentVyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGtMd);
  v26 = a7 + *(v25 + 48);
  *v26 = 0;
  *(v26 + 8) = 1;
  v27 = (a7 + *(v25 + 64));
  *v27 = v22;
  v27[1] = KeyPath;
  v27[2] = v23;

  outlined destroy of Button<Text>?(v18, &_s7SwiftUI6VStackVyAA7ForEachVySay11WorkoutCore0F4StepCG10Foundation4UUIDV0fB00fH3RowVGGMd);

  return outlined destroy of Button<Text>?(v15, &_s7SwiftUI6VStackVyAA7ForEachVySay11WorkoutCore0F4StepCG10Foundation4UUIDV0fB00fH3RowVGGMd);
}

uint64_t closure #1 in closure #1 in closure #1 in closure #1 in closure #1 in IntervalBlocksReorderingView.repeatableStepsWatchView(for:)@<X0>(void *a1@<X3>, uint64_t *a2@<X8>)
{
  type metadata accessor for WorkoutStep();
  _s7SwiftUI31AccessibilityAttachmentModifierVAcA04ViewE0AAWlTm_10(&lazy protocol witness table cache variable for type WorkoutStep and conformance WorkoutStep, MEMORY[0x277D7DD30]);

  v4 = a1;
  result = ObservedObject.init(wrappedValue:)();
  *a2 = result;
  a2[1] = v6;
  a2[2] = v4;
  a2[3] = 0;
  return result;
}

uint64_t closure #1 in IntervalBlocksReorderingView.singleStepView(for:)@<X0>(void *a1@<X3>, uint64_t a2@<X8>)
{
  result = WorkoutBlock.steps.getter();
  if ((result & 0xC000000000000001) != 0)
  {
    MEMORY[0x20F30C990](0, result);
  }

  else
  {
    if (!*((result & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
      return result;
    }
  }

  type metadata accessor for WorkoutStep();
  _s7SwiftUI31AccessibilityAttachmentModifierVAcA04ViewE0AAWlTm_10(&lazy protocol witness table cache variable for type WorkoutStep and conformance WorkoutStep, MEMORY[0x277D7DD30]);
  v5 = a1;
  v6 = ObservedObject.init(wrappedValue:)();
  v8 = v7;
  v9 = Image.init(systemName:)();
  v10 = static Color.secondary.getter();
  KeyPath = swift_getKeyPath();
  *a2 = v6;
  *(a2 + 8) = v8;
  *(a2 + 24) = 0;
  *(a2 + 32) = 0;
  *(a2 + 16) = v5;
  *(a2 + 40) = 1;
  *(a2 + 48) = v9;
  *(a2 + 56) = KeyPath;
  *(a2 + 64) = v10;
}

uint64_t protocol witness for View.body.getter in conformance IntervalBlocksReorderingView@<X0>(uint64_t a1@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyAA7ForEachVySay11WorkoutCore0G5BlockCG10Foundation4UUIDVAA4ViewPAAE20accessibilityActionsyQrqd__yXEAaMRd__lFQOyAA5GroupVyAA012_ConditionalD0VyASyACyAnAE0M7Element8childrenQrAA26AccessibilityChildBehaviorV_tFQOyAA6VStackVyAA05TupleL0Vy0gB009RepeatRowL0V_AA7DividerVAA6HStackVyA_yAYyAEySayAF0G4StepCGALA0_0g4StepY0VGG_AA6SpacerVACyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGtGGtGG_Qo_AA0S18AttachmentModifierVGAnAEAtUQrAW_tFQOyAYyAA7SectionVyAA05EmptyL0VA_yA2__A26_tGA36_GG_Qo_GACyAnAEAtUQrAW_tFQOyA6_yA_yA11__A15_A24_tGG_Qo_A31_GSgGG_A_yAA6ButtonVyAA4TextVGSg_A54_tGSgQo_GAA21_TraitWritingModifierVyAA14OnMoveTraitKeyVGGMd);
  lazy protocol witness table accessor for type ModifiedContent<ForEach<[WorkoutBlock], UUID, <<opaque return type of View.accessibilityActions<A>(_:)>>.0>, _TraitWritingModifier<OnMoveTraitKey>> and conformance <> ModifiedContent<A, B>();
  List<>.init(content:)();
  KeyPath = swift_getKeyPath();
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyAA4ListVys5NeverOACyAA7ForEachVySay11WorkoutCore0I5BlockCG10Foundation4UUIDVAA4ViewPAAE20accessibilityActionsyQrqd__yXEAaQRd__lFQOyAA5GroupVyAA012_ConditionalD0VyAWyACyArAE0O7Element8childrenQrAA26AccessibilityChildBehaviorV_tFQOyAA6VStackVyAA05TupleN0Vy0iB009RepeatRowN0V_AA7DividerVAA6HStackVyA3_yA1_yAIySayAJ0I4StepCGAPA4_0I7StepRowVGG_AA6SpacerVACyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGtGGtGG_Qo_AA0U18AttachmentModifierVGArAEAxYQrA__tFQOyA1_yAA7SectionVyAA05EmptyN0VA3_yA6__A30_tGA40_GG_Qo_GACyArAEAxYQrA__tFQOyA10_yA3_yA15__A19_A28_tGG_Qo_A35_GSgGG_A3_yAA6ButtonVyAA4TextVGSg_A58_tGSgQo_GAA21_TraitWritingModifierVyAA14OnMoveTraitKeyVGGGA23_y0J8Graphics7CGFloatVSgGGMd);
  v4 = a1 + *(result + 36);
  *v4 = KeyPath;
  *(v4 + 8) = 0x4020000000000000;
  *(v4 + 16) = 0;
  return result;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<ForEach<[WorkoutBlock], UUID, <<opaque return type of View.accessibilityActions<A>(_:)>>.0>, _TraitWritingModifier<OnMoveTraitKey>> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<ForEach<[WorkoutBlock], UUID, <<opaque return type of View.accessibilityActions<A>(_:)>>.0>, _TraitWritingModifier<OnMoveTraitKey>> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<ForEach<[WorkoutBlock], UUID, <<opaque return type of View.accessibilityActions<A>(_:)>>.0>, _TraitWritingModifier<OnMoveTraitKey>> and conformance <> ModifiedContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyAA7ForEachVySay11WorkoutCore0G5BlockCG10Foundation4UUIDVAA4ViewPAAE20accessibilityActionsyQrqd__yXEAaMRd__lFQOyAA5GroupVyAA012_ConditionalD0VyASyACyAnAE0M7Element8childrenQrAA26AccessibilityChildBehaviorV_tFQOyAA6VStackVyAA05TupleL0Vy0gB009RepeatRowL0V_AA7DividerVAA6HStackVyA_yAYyAEySayAF0G4StepCGALA0_0g4StepY0VGG_AA6SpacerVACyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGtGGtGG_Qo_AA0S18AttachmentModifierVGAnAEAtUQrAW_tFQOyAYyAA7SectionVyAA05EmptyL0VA_yA2__A26_tGA36_GG_Qo_GACyAnAEAtUQrAW_tFQOyA6_yA_yA11__A15_A24_tGG_Qo_A31_GSgGG_A_yAA6ButtonVyAA4TextVGSg_A54_tGSgQo_GAA21_TraitWritingModifierVyAA14OnMoveTraitKeyVGGMd);
    lazy protocol witness table accessor for type ForEach<[WorkoutBlock], UUID, <<opaque return type of View.accessibilityActions<A>(_:)>>.0> and conformance <> ForEach<A, B, C>();
    lazy protocol witness table accessor for type VStack<TupleView<(RepeatRowView, Divider, HStack<TupleView<(VStack<ForEach<[WorkoutStep], UUID, WorkoutStepRow>>, Spacer, ModifiedContent<Image, _EnvironmentKeyWritingModifier<Color?>>)>>)>> and conformance VStack<A>(&lazy protocol witness table cache variable for type _TraitWritingModifier<OnMoveTraitKey> and conformance _TraitWritingModifier<A>, &_s7SwiftUI21_TraitWritingModifierVyAA06OnMoveC3KeyVGMd);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<ForEach<[WorkoutBlock], UUID, <<opaque return type of View.accessibilityActions<A>(_:)>>.0>, _TraitWritingModifier<OnMoveTraitKey>> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ForEach<[WorkoutBlock], UUID, <<opaque return type of View.accessibilityActions<A>(_:)>>.0> and conformance <> ForEach<A, B, C>()
{
  result = lazy protocol witness table cache variable for type ForEach<[WorkoutBlock], UUID, <<opaque return type of View.accessibilityActions<A>(_:)>>.0> and conformance <> ForEach<A, B, C>;
  if (!lazy protocol witness table cache variable for type ForEach<[WorkoutBlock], UUID, <<opaque return type of View.accessibilityActions<A>(_:)>>.0> and conformance <> ForEach<A, B, C>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI7ForEachVySay11WorkoutCore0E5BlockCG10Foundation4UUIDVAA4ViewPAAE20accessibilityActionsyQrqd__yXEAaKRd__lFQOyAA5GroupVyAA19_ConditionalContentVyAQyAA08ModifiedO0VyAlAE0K7Element8childrenQrAA26AccessibilityChildBehaviorV_tFQOyAA6VStackVyAA05TupleJ0Vy0eB009RepeatRowJ0V_AA7DividerVAA6HStackVyA_yAYyACySayAD0E4StepCGAJA0_0e4StepY0VGG_AA6SpacerVASyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGtGGtGG_Qo_AA0S18AttachmentModifierVGAlAEAtUQrAW_tFQOyAYyAA7SectionVyAA05EmptyJ0VA_yA2__A26_tGA36_GG_Qo_GASyAlAEAtUQrAW_tFQOyA6_yA_yA11__A15_A24_tGG_Qo_A31_GSgGG_A_yAA6ButtonVyAA4TextVGSg_A54_tGSgQo_GMd);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI5GroupVyAA19_ConditionalContentVyAEyAA08ModifiedE0VyAA4ViewPAAE20accessibilityElement8childrenQrAA26AccessibilityChildBehaviorV_tFQOyAA6VStackVyAA05TupleG0Vy07WorkoutB009RepeatRowG0V_AA7DividerVAA6HStackVyAQyAOyAA7ForEachVySay0P4Core0P4StepCG10Foundation4UUIDVAR0pxR0VGG_AA6SpacerVAGyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGtGGtGG_Qo_AA0K18AttachmentModifierVGAiAEAjKQrAM_tFQOyAOyAA7SectionVyAA05EmptyG0VAQyAT_A22_tGA32_GG_Qo_GAGyAiAEAjKQrAM_tFQOyAXyAQyA7__A11_A20_tGG_Qo_A27_GSgGGMd);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI9TupleViewVyAA6ButtonVyAA4TextVGSg_AItGSgMd);
    lazy protocol witness table accessor for type Group<_ConditionalContent<_ConditionalContent<ModifiedContent<<<opaque return type of View.accessibilityElement(children:)>>.0, AccessibilityAttachmentModifier>, <<opaque return type of View.accessibilityElement(children:)>>.0>, ModifiedContent<<<opaque return type of View.accessibilityElement(children:)>>.0, AccessibilityAttachmentModifier>?>> and conformance <A> Group<A>();
    lazy protocol witness table accessor for type TupleView<(Button<Text>?, Button<Text>?)>? and conformance <A> A?();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ForEach<[WorkoutBlock], UUID, <<opaque return type of View.accessibilityActions<A>(_:)>>.0> and conformance <> ForEach<A, B, C>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type Group<_ConditionalContent<_ConditionalContent<ModifiedContent<<<opaque return type of View.accessibilityElement(children:)>>.0, AccessibilityAttachmentModifier>, <<opaque return type of View.accessibilityElement(children:)>>.0>, ModifiedContent<<<opaque return type of View.accessibilityElement(children:)>>.0, AccessibilityAttachmentModifier>?>> and conformance <A> Group<A>()
{
  result = lazy protocol witness table cache variable for type Group<_ConditionalContent<_ConditionalContent<ModifiedContent<<<opaque return type of View.accessibilityElement(children:)>>.0, AccessibilityAttachmentModifier>, <<opaque return type of View.accessibilityElement(children:)>>.0>, ModifiedContent<<<opaque return type of View.accessibilityElement(children:)>>.0, AccessibilityAttachmentModifier>?>> and conformance <A> Group<A>;
  if (!lazy protocol witness table cache variable for type Group<_ConditionalContent<_ConditionalContent<ModifiedContent<<<opaque return type of View.accessibilityElement(children:)>>.0, AccessibilityAttachmentModifier>, <<opaque return type of View.accessibilityElement(children:)>>.0>, ModifiedContent<<<opaque return type of View.accessibilityElement(children:)>>.0, AccessibilityAttachmentModifier>?>> and conformance <A> Group<A>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI5GroupVyAA19_ConditionalContentVyAEyAA08ModifiedE0VyAA4ViewPAAE20accessibilityElement8childrenQrAA26AccessibilityChildBehaviorV_tFQOyAA6VStackVyAA05TupleG0Vy07WorkoutB009RepeatRowG0V_AA7DividerVAA6HStackVyAQyAOyAA7ForEachVySay0P4Core0P4StepCG10Foundation4UUIDVAR0pxR0VGG_AA6SpacerVAGyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGtGGtGG_Qo_AA0K18AttachmentModifierVGAiAEAjKQrAM_tFQOyAOyAA7SectionVyAA05EmptyG0VAQyAT_A22_tGA32_GG_Qo_GAGyAiAEAjKQrAM_tFQOyAXyAQyA7__A11_A20_tGG_Qo_A27_GSgGGMd);
    lazy protocol witness table accessor for type _ConditionalContent<_ConditionalContent<ModifiedContent<<<opaque return type of View.accessibilityElement(children:)>>.0, AccessibilityAttachmentModifier>, <<opaque return type of View.accessibilityElement(children:)>>.0>, ModifiedContent<<<opaque return type of View.accessibilityElement(children:)>>.0, AccessibilityAttachmentModifier>?> and conformance <> _ConditionalContent<A, B>();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Group<_ConditionalContent<_ConditionalContent<ModifiedContent<<<opaque return type of View.accessibilityElement(children:)>>.0, AccessibilityAttachmentModifier>, <<opaque return type of View.accessibilityElement(children:)>>.0>, ModifiedContent<<<opaque return type of View.accessibilityElement(children:)>>.0, AccessibilityAttachmentModifier>?>> and conformance <A> Group<A>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type _ConditionalContent<_ConditionalContent<ModifiedContent<<<opaque return type of View.accessibilityElement(children:)>>.0, AccessibilityAttachmentModifier>, <<opaque return type of View.accessibilityElement(children:)>>.0>, ModifiedContent<<<opaque return type of View.accessibilityElement(children:)>>.0, AccessibilityAttachmentModifier>?> and conformance <> _ConditionalContent<A, B>()
{
  result = lazy protocol witness table cache variable for type _ConditionalContent<_ConditionalContent<ModifiedContent<<<opaque return type of View.accessibilityElement(children:)>>.0, AccessibilityAttachmentModifier>, <<opaque return type of View.accessibilityElement(children:)>>.0>, ModifiedContent<<<opaque return type of View.accessibilityElement(children:)>>.0, AccessibilityAttachmentModifier>?> and conformance <> _ConditionalContent<A, B>;
  if (!lazy protocol witness table cache variable for type _ConditionalContent<_ConditionalContent<ModifiedContent<<<opaque return type of View.accessibilityElement(children:)>>.0, AccessibilityAttachmentModifier>, <<opaque return type of View.accessibilityElement(children:)>>.0>, ModifiedContent<<<opaque return type of View.accessibilityElement(children:)>>.0, AccessibilityAttachmentModifier>?> and conformance <> _ConditionalContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI19_ConditionalContentVyACyAA08ModifiedD0VyAA4ViewPAAE20accessibilityElement8childrenQrAA26AccessibilityChildBehaviorV_tFQOyAA6VStackVyAA05TupleF0Vy07WorkoutB009RepeatRowF0V_AA7DividerVAA6HStackVyAOyAMyAA7ForEachVySay0O4Core0O4StepCG10Foundation4UUIDVAP0owQ0VGG_AA6SpacerVAEyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGtGGtGG_Qo_AA0J18AttachmentModifierVGAgAEAhIQrAK_tFQOyAMyAA7SectionVyAA05EmptyF0VAOyAR_A20_tGA30_GG_Qo_GAEyAgAEAhIQrAK_tFQOyAVyAOyA5__A9_A18_tGG_Qo_A25_GSgGMd);
    lazy protocol witness table accessor for type _ConditionalContent<ModifiedContent<<<opaque return type of View.accessibilityElement(children:)>>.0, AccessibilityAttachmentModifier>, <<opaque return type of View.accessibilityElement(children:)>>.0> and conformance <> _ConditionalContent<A, B>();
    lazy protocol witness table accessor for type ModifiedContent<<<opaque return type of View.accessibilityElement(children:)>>.0, AccessibilityAttachmentModifier>? and conformance <A> A?();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type _ConditionalContent<_ConditionalContent<ModifiedContent<<<opaque return type of View.accessibilityElement(children:)>>.0, AccessibilityAttachmentModifier>, <<opaque return type of View.accessibilityElement(children:)>>.0>, ModifiedContent<<<opaque return type of View.accessibilityElement(children:)>>.0, AccessibilityAttachmentModifier>?> and conformance <> _ConditionalContent<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type _ConditionalContent<ModifiedContent<<<opaque return type of View.accessibilityElement(children:)>>.0, AccessibilityAttachmentModifier>, <<opaque return type of View.accessibilityElement(children:)>>.0> and conformance <> _ConditionalContent<A, B>()
{
  result = lazy protocol witness table cache variable for type _ConditionalContent<ModifiedContent<<<opaque return type of View.accessibilityElement(children:)>>.0, AccessibilityAttachmentModifier>, <<opaque return type of View.accessibilityElement(children:)>>.0> and conformance <> _ConditionalContent<A, B>;
  if (!lazy protocol witness table cache variable for type _ConditionalContent<ModifiedContent<<<opaque return type of View.accessibilityElement(children:)>>.0, AccessibilityAttachmentModifier>, <<opaque return type of View.accessibilityElement(children:)>>.0> and conformance <> _ConditionalContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI19_ConditionalContentVyAA08ModifiedD0VyAA4ViewPAAE20accessibilityElement8childrenQrAA26AccessibilityChildBehaviorV_tFQOyAA6VStackVyAA05TupleF0Vy07WorkoutB009RepeatRowF0V_AA7DividerVAA6HStackVyAOyAMyAA7ForEachVySay0O4Core0O4StepCG10Foundation4UUIDVAP0owQ0VGG_AA6SpacerVAEyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGtGGtGG_Qo_AA0J18AttachmentModifierVGAgAEAhIQrAK_tFQOyAMyAA7SectionVyAA05EmptyF0VAOyAR_A20_tGA30_GG_Qo_GMd);
    lazy protocol witness table accessor for type ModifiedContent<<<opaque return type of View.accessibilityElement(children:)>>.0, AccessibilityAttachmentModifier> and conformance <> ModifiedContent<A, B>();
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI6VStackVyAA7SectionVyAA9EmptyViewVAA05TupleF0Vy07WorkoutB009RepeatRowF0V_AA6HStackVyAIyACyAA7ForEachVySay0H4Core0H4StepCG10Foundation4UUIDVAJ0hoJ0VGG_AA6SpacerVAA15ModifiedContentVyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGtGGtGAGGGMd);
    lazy protocol witness table accessor for type VStack<TupleView<(RepeatRowView, Divider, HStack<TupleView<(VStack<ForEach<[WorkoutStep], UUID, WorkoutStepRow>>, Spacer, ModifiedContent<Image, _EnvironmentKeyWritingModifier<Color?>>)>>)>> and conformance VStack<A>(&lazy protocol witness table cache variable for type VStack<Section<EmptyView, TupleView<(RepeatRowView, HStack<TupleView<(VStack<ForEach<[WorkoutStep], UUID, WorkoutStepRow>>, Spacer, ModifiedContent<Image, _EnvironmentKeyWritingModifier<Color?>>)>>)>, EmptyView>> and conformance VStack<A>, &_s7SwiftUI6VStackVyAA7SectionVyAA9EmptyViewVAA05TupleF0Vy07WorkoutB009RepeatRowF0V_AA6HStackVyAIyACyAA7ForEachVySay0H4Core0H4StepCG10Foundation4UUIDVAJ0hoJ0VGG_AA6SpacerVAA15ModifiedContentVyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGtGGtGAGGGMd);
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type _ConditionalContent<ModifiedContent<<<opaque return type of View.accessibilityElement(children:)>>.0, AccessibilityAttachmentModifier>, <<opaque return type of View.accessibilityElement(children:)>>.0> and conformance <> _ConditionalContent<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<<<opaque return type of View.accessibilityElement(children:)>>.0, AccessibilityAttachmentModifier>? and conformance <A> A?()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<<<opaque return type of View.accessibilityElement(children:)>>.0, AccessibilityAttachmentModifier>? and conformance <A> A?;
  if (!lazy protocol witness table cache variable for type ModifiedContent<<<opaque return type of View.accessibilityElement(children:)>>.0, AccessibilityAttachmentModifier>? and conformance <A> A?)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyAA4ViewPAAE20accessibilityElement8childrenQrAA26AccessibilityChildBehaviorV_tFQOyAA6HStackVyAA05TupleE0Vy07WorkoutB00N7StepRowV_AA6SpacerVACyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGtGG_Qo_AA0i10AttachmentV0VGSgMd);
    lazy protocol witness table accessor for type ModifiedContent<<<opaque return type of View.accessibilityElement(children:)>>.0, AccessibilityAttachmentModifier> and conformance <> ModifiedContent<A, B>();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<<<opaque return type of View.accessibilityElement(children:)>>.0, AccessibilityAttachmentModifier>? and conformance <A> A?);
  }

  return result;
}

uint64_t outlined init with copy of ModifiedContent<<<opaque return type of View.accessibilityElement(children:)>>.0, AccessibilityAttachmentModifier>?(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(a3);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t outlined destroy of Group<_ConditionalContent<_ConditionalContent<ModifiedContent<<<opaque return type of View.accessibilityElement(children:)>>.0, AccessibilityAttachmentModifier>, <<opaque return type of View.accessibilityElement(children:)>>.0>, ModifiedContent<<<opaque return type of View.accessibilityElement(children:)>>.0, AccessibilityAttachmentModifier>?>>(uint64_t a1, uint64_t *a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(a2);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t _s7SwiftUI31AccessibilityAttachmentModifierVAcA04ViewE0AAWlTm_10(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t outlined init with copy of Button<Text>?(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(a3);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t outlined destroy of Button<Text>?(uint64_t a1, uint64_t *a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(a2);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<List<Never, ModifiedContent<ForEach<[WorkoutBlock], UUID, <<opaque return type of View.accessibilityActions<A>(_:)>>.0>, _TraitWritingModifier<OnMoveTraitKey>>>, _EnvironmentKeyWritingModifier<CGFloat?>>, HideListRowSeparator> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<List<Never, ModifiedContent<ForEach<[WorkoutBlock], UUID, <<opaque return type of View.accessibilityActions<A>(_:)>>.0>, _TraitWritingModifier<OnMoveTraitKey>>>, _EnvironmentKeyWritingModifier<CGFloat?>>, HideListRowSeparator> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<List<Never, ModifiedContent<ForEach<[WorkoutBlock], UUID, <<opaque return type of View.accessibilityActions<A>(_:)>>.0>, _TraitWritingModifier<OnMoveTraitKey>>>, _EnvironmentKeyWritingModifier<CGFloat?>>, HideListRowSeparator> and conformance <> ModifiedContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyACyAA4ListVys5NeverOACyAA7ForEachVySay11WorkoutCore0I5BlockCG10Foundation4UUIDVAA4ViewPAAE20accessibilityActionsyQrqd__yXEAaQRd__lFQOyAA5GroupVyAA012_ConditionalD0VyAWyACyArAE0O7Element8childrenQrAA26AccessibilityChildBehaviorV_tFQOyAA6VStackVyAA05TupleN0Vy0iB009RepeatRowN0V_AA7DividerVAA6HStackVyA3_yA1_yAIySayAJ0I4StepCGAPA4_0I7StepRowVGG_AA6SpacerVACyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGtGGtGG_Qo_AA0U18AttachmentModifierVGArAEAxYQrA__tFQOyA1_yAA7SectionVyAA05EmptyN0VA3_yA6__A30_tGA40_GG_Qo_GACyArAEAxYQrA__tFQOyA10_yA3_yA15__A19_A28_tGG_Qo_A35_GSgGG_A3_yAA6ButtonVyAA4TextVGSg_A58_tGSgQo_GAA21_TraitWritingModifierVyAA14OnMoveTraitKeyVGGGA23_y0J8Graphics7CGFloatVSgGGA4_04HideE12RowSeparator33_A607961C6E65DD4DD1C2818C5FE69B58LLVGMd);
    lazy protocol witness table accessor for type ModifiedContent<List<Never, ModifiedContent<ForEach<[WorkoutBlock], UUID, <<opaque return type of View.accessibilityActions<A>(_:)>>.0>, _TraitWritingModifier<OnMoveTraitKey>>>, _EnvironmentKeyWritingModifier<CGFloat?>> and conformance <> ModifiedContent<A, B>();
    lazy protocol witness table accessor for type HideListRowSeparator and conformance HideListRowSeparator();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<List<Never, ModifiedContent<ForEach<[WorkoutBlock], UUID, <<opaque return type of View.accessibilityActions<A>(_:)>>.0>, _TraitWritingModifier<OnMoveTraitKey>>>, _EnvironmentKeyWritingModifier<CGFloat?>>, HideListRowSeparator> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<List<Never, ModifiedContent<ForEach<[WorkoutBlock], UUID, <<opaque return type of View.accessibilityActions<A>(_:)>>.0>, _TraitWritingModifier<OnMoveTraitKey>>>, _EnvironmentKeyWritingModifier<CGFloat?>> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<List<Never, ModifiedContent<ForEach<[WorkoutBlock], UUID, <<opaque return type of View.accessibilityActions<A>(_:)>>.0>, _TraitWritingModifier<OnMoveTraitKey>>>, _EnvironmentKeyWritingModifier<CGFloat?>> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<List<Never, ModifiedContent<ForEach<[WorkoutBlock], UUID, <<opaque return type of View.accessibilityActions<A>(_:)>>.0>, _TraitWritingModifier<OnMoveTraitKey>>>, _EnvironmentKeyWritingModifier<CGFloat?>> and conformance <> ModifiedContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyAA4ListVys5NeverOACyAA7ForEachVySay11WorkoutCore0I5BlockCG10Foundation4UUIDVAA4ViewPAAE20accessibilityActionsyQrqd__yXEAaQRd__lFQOyAA5GroupVyAA012_ConditionalD0VyAWyACyArAE0O7Element8childrenQrAA26AccessibilityChildBehaviorV_tFQOyAA6VStackVyAA05TupleN0Vy0iB009RepeatRowN0V_AA7DividerVAA6HStackVyA3_yA1_yAIySayAJ0I4StepCGAPA4_0I7StepRowVGG_AA6SpacerVACyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGtGGtGG_Qo_AA0U18AttachmentModifierVGArAEAxYQrA__tFQOyA1_yAA7SectionVyAA05EmptyN0VA3_yA6__A30_tGA40_GG_Qo_GACyArAEAxYQrA__tFQOyA10_yA3_yA15__A19_A28_tGG_Qo_A35_GSgGG_A3_yAA6ButtonVyAA4TextVGSg_A58_tGSgQo_GAA21_TraitWritingModifierVyAA14OnMoveTraitKeyVGGGA23_y0J8Graphics7CGFloatVSgGGMd);
    lazy protocol witness table accessor for type VStack<TupleView<(RepeatRowView, Divider, HStack<TupleView<(VStack<ForEach<[WorkoutStep], UUID, WorkoutStepRow>>, Spacer, ModifiedContent<Image, _EnvironmentKeyWritingModifier<Color?>>)>>)>> and conformance VStack<A>(&lazy protocol witness table cache variable for type List<Never, ModifiedContent<ForEach<[WorkoutBlock], UUID, <<opaque return type of View.accessibilityActions<A>(_:)>>.0>, _TraitWritingModifier<OnMoveTraitKey>>> and conformance List<A, B>, &_s7SwiftUI4ListVys5NeverOAA15ModifiedContentVyAA7ForEachVySay11WorkoutCore0I5BlockCG10Foundation4UUIDVAA4ViewPAAE20accessibilityActionsyQrqd__yXEAaQRd__lFQOyAA5GroupVyAA012_ConditionalF0VyAWyAGyArAE0O7Element8childrenQrAA26AccessibilityChildBehaviorV_tFQOyAA6VStackVyAA05TupleN0Vy0iB009RepeatRowN0V_AA7DividerVAA6HStackVyA3_yA1_yAIySayAJ0I4StepCGAPA4_0I7StepRowVGG_AA6SpacerVAGyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGtGGtGG_Qo_AA0U18AttachmentModifierVGArAEAxYQrA__tFQOyA1_yAA7SectionVyAA05EmptyN0VA3_yA6__A30_tGA40_GG_Qo_GAGyArAEAxYQrA__tFQOyA10_yA3_yA15__A19_A28_tGG_Qo_A35_GSgGG_A3_yAA6ButtonVyAA4TextVGSg_A58_tGSgQo_GAA21_TraitWritingModifierVyAA14OnMoveTraitKeyVGGGMd);
    lazy protocol witness table accessor for type VStack<TupleView<(RepeatRowView, Divider, HStack<TupleView<(VStack<ForEach<[WorkoutStep], UUID, WorkoutStepRow>>, Spacer, ModifiedContent<Image, _EnvironmentKeyWritingModifier<Color?>>)>>)>> and conformance VStack<A>(&lazy protocol witness table cache variable for type _EnvironmentKeyWritingModifier<CGFloat?> and conformance _EnvironmentKeyWritingModifier<A>, &_s7SwiftUI30_EnvironmentKeyWritingModifierVy12CoreGraphics7CGFloatVSgGMd);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<List<Never, ModifiedContent<ForEach<[WorkoutBlock], UUID, <<opaque return type of View.accessibilityActions<A>(_:)>>.0>, _TraitWritingModifier<OnMoveTraitKey>>>, _EnvironmentKeyWritingModifier<CGFloat?>> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

uint64_t lazy protocol witness table accessor for type VStack<TupleView<(RepeatRowView, Divider, HStack<TupleView<(VStack<ForEach<[WorkoutStep], UUID, WorkoutStepRow>>, Spacer, ModifiedContent<Image, _EnvironmentKeyWritingModifier<Color?>>)>>)>> and conformance VStack<A>(unint64_t *a1, uint64_t *a2)
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

uint64_t NillableNavigationTitle.body(content:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI19_ConditionalContentV7StorageOyAA4ViewPAAE15navigationTitleyQrqd__SyRd__lFQOyAA01_f9Modifier_D0Vy07WorkoutB0018NillableNavigationH0VG_SSQo_AN_GMd);
  MEMORY[0x28223BE20](v5);
  v7 = v22 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI4ViewPAAE15navigationTitleyQrqd__SyRd__lFQOyAA01_C16Modifier_ContentVy07WorkoutB0018NillableNavigationE0VG_SSQo_Md);
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = v22 - v10;
  v12 = v2[1];
  if (v12)
  {
    v23 = *v2;
    v24 = v12;
    v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI21_ViewModifier_ContentVy07WorkoutB023NillableNavigationTitleVGMd);
    v22[1] = a2;
    v14 = v13;
    v15 = lazy protocol witness table accessor for type _ViewModifier_Content<NillableNavigationTitle> and conformance _ViewModifier_Content<A>();
    v16 = lazy protocol witness table accessor for type String and conformance String();
    v17 = MEMORY[0x277D837D0];
    View.navigationTitle<A>(_:)();
    (*(v9 + 16))(v7, v11, v8);
    swift_storeEnumTagMultiPayload();
    v23 = v14;
    v24 = v17;
    v25 = v15;
    v26 = v16;
    swift_getOpaqueTypeConformance2();
    _ConditionalContent<>.init(storage:)();
    return (*(v9 + 8))(v11, v8);
  }

  else
  {
    v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI21_ViewModifier_ContentVy07WorkoutB023NillableNavigationTitleVGMd);
    (*(*(v19 - 8) + 16))(v7, a1, v19);
    swift_storeEnumTagMultiPayload();
    v20 = lazy protocol witness table accessor for type _ViewModifier_Content<NillableNavigationTitle> and conformance _ViewModifier_Content<A>();
    v21 = lazy protocol witness table accessor for type String and conformance String();
    v23 = v19;
    v24 = MEMORY[0x277D837D0];
    v25 = v20;
    v26 = v21;
    swift_getOpaqueTypeConformance2();
    return _ConditionalContent<>.init(storage:)();
  }
}

unint64_t lazy protocol witness table accessor for type _ViewModifier_Content<NillableNavigationTitle> and conformance _ViewModifier_Content<A>()
{
  result = lazy protocol witness table cache variable for type _ViewModifier_Content<NillableNavigationTitle> and conformance _ViewModifier_Content<A>;
  if (!lazy protocol witness table cache variable for type _ViewModifier_Content<NillableNavigationTitle> and conformance _ViewModifier_Content<A>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI21_ViewModifier_ContentVy07WorkoutB023NillableNavigationTitleVGMd);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type _ViewModifier_Content<NillableNavigationTitle> and conformance _ViewModifier_Content<A>);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for NillableNavigationTitle(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 16))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 8);
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

uint64_t storeEnumTagSinglePayload for NillableNavigationTitle(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *result = a2 - 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 16) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 16) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2;
    }
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type _ConditionalContent<<<opaque return type of View.navigationTitle<A>(_:)>>.0, _ViewModifier_Content<NillableNavigationTitle>> and conformance <> _ConditionalContent<A, B>()
{
  result = lazy protocol witness table cache variable for type _ConditionalContent<<<opaque return type of View.navigationTitle<A>(_:)>>.0, _ViewModifier_Content<NillableNavigationTitle>> and conformance <> _ConditionalContent<A, B>;
  if (!lazy protocol witness table cache variable for type _ConditionalContent<<<opaque return type of View.navigationTitle<A>(_:)>>.0, _ViewModifier_Content<NillableNavigationTitle>> and conformance <> _ConditionalContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI19_ConditionalContentVyAA4ViewPAAE15navigationTitleyQrqd__SyRd__lFQOyAA01_e9Modifier_D0Vy07WorkoutB0018NillableNavigationG0VG_SSQo_ALGMd);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI21_ViewModifier_ContentVy07WorkoutB023NillableNavigationTitleVGMd);
    lazy protocol witness table accessor for type _ViewModifier_Content<NillableNavigationTitle> and conformance _ViewModifier_Content<A>();
    lazy protocol witness table accessor for type String and conformance String();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type _ConditionalContent<<<opaque return type of View.navigationTitle<A>(_:)>>.0, _ViewModifier_Content<NillableNavigationTitle>> and conformance <> _ConditionalContent<A, B>);
  }

  return result;
}

uint64_t type metadata accessor for IntervalBlocksSection()
{
  result = type metadata singleton initialization cache for IntervalBlocksSection;
  if (!type metadata singleton initialization cache for IntervalBlocksSection)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void type metadata completion function for IntervalBlocksSection()
{
  type metadata accessor for EnvironmentObject<ConfigurationNavigationModel>();
  if (v0 <= 0x3F)
  {
    type metadata accessor for EnvironmentObject<IntervalWorkoutConfiguration>();
    if (v1 <= 0x3F)
    {
      type metadata accessor for ObservedObject<IntervalWorkout>();
      if (v2 <= 0x3F)
      {
        _sSo21FIUIFormattingManagerCMaTm_15(319, &lazy cache variable for type metadata for FIUIFormattingManager);
        if (v3 <= 0x3F)
        {
          type metadata accessor for HKActivityMoveMode(319);
          if (v4 <= 0x3F)
          {
            type metadata accessor for State<Bool>();
            if (v5 <= 0x3F)
            {
              type metadata accessor for Binding<UUID?>();
              if (v6 <= 0x3F)
              {
                swift_cvw_initStructMetadataWithLayoutString();
              }
            }
          }
        }
      }
    }
  }
}

void type metadata accessor for ObservedObject<IntervalWorkout>()
{
  if (!lazy cache variable for type metadata for ObservedObject<IntervalWorkout>)
  {
    type metadata accessor for IntervalWorkout();
    _s9WorkoutUI28ConfigurationNavigationModelCAC7Combine16ObservableObjectAAWlTm_17(&lazy protocol witness table cache variable for type IntervalWorkout and conformance IntervalWorkout, MEMORY[0x277D7D990]);
    v0 = type metadata accessor for ObservedObject();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for ObservedObject<IntervalWorkout>);
    }
  }
}

BOOL IntervalBlocksSection.disableAddBlock.getter()
{
  v0 = type metadata accessor for WorkoutBlockType();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v17 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v6 = &v17 - v5;
  v7 = IntervalWorkout.blocks.getter();
  if (!(v7 >> 62))
  {
    v8 = *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v8)
    {
      goto LABEL_3;
    }

LABEL_14:

    return 0;
  }

  v16 = v7;
  v8 = __CocoaSet.count.getter();
  v7 = v16;
  if (!v8)
  {
    goto LABEL_14;
  }

LABEL_3:
  v9 = __OFSUB__(v8, 1);
  v10 = v8 - 1;
  if (v9)
  {
    __break(1u);
  }

  else if ((v7 & 0xC000000000000001) == 0)
  {
    if ((v10 & 0x8000000000000000) != 0)
    {
      __break(1u);
    }

    else if (v10 < *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {

      goto LABEL_8;
    }

    __break(1u);
    goto LABEL_21;
  }

  MEMORY[0x20F30C990](v10);
LABEL_8:

  WorkoutBlock.blockType.getter();
  (*(v1 + 104))(v3, *MEMORY[0x277D7DDD8], v0);
  _s9WorkoutUI28ConfigurationNavigationModelCAC7Combine16ObservableObjectAAWlTm_17(&lazy protocol witness table cache variable for type WorkoutBlockType and conformance WorkoutBlockType, MEMORY[0x277D7DDE0]);
  v11 = dispatch thunk of static Equatable.== infix(_:_:)();
  v12 = *(v1 + 8);
  v12(v3, v0);
  v12(v6, v0);
  if ((v11 & 1) == 0)
  {
    v13 = WorkoutBlock.steps.getter();
    if (!(v13 >> 62))
    {
      v14 = *((v13 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_12:

      return v14 == 0;
    }

LABEL_21:
    v14 = __CocoaSet.count.getter();
    goto LABEL_12;
  }

  return 0;
}

uint64_t IntervalBlocksSection.body.getter@<X0>(char *a1@<X8>)
{
  v62 = a1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI7SectionVyAA9EmptyViewVAA05TupleE0Vy07WorkoutB020IntervalStyledButtonVSg_AkA0E0PAAE5sheet11isPresented9onDismiss7contentQrAA7BindingVySbG_yycSgqd__yctAaLRd__lFQOyAJ_AA010NavigationE0VyAmAE7toolbarAQQrqd__yXE_tAA14ToolbarContentRd__lFQOyAH0h16BlocksReorderingE0V_AA0tU7BuilderV10buildBlockyQrxAaYRzlFZQOy_AA0T4ItemVyytAA08ModifiedU0VyAA0J0VyAA07DefaultJ5LabelVGAA30_EnvironmentKeyWritingModifierVyAA13AnyShapeStyleVSgGGGQo_Qo_GQo_SgtGAEGMd);
  v57 = *(v2 - 8);
  v58 = v2;
  MEMORY[0x28223BE20](v2);
  v56[0] = v56 - v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI7SectionVyAA9EmptyViewVAA05TupleE0Vy07WorkoutB020IntervalStyledButtonVSg_AkA0E0PAAE5sheet11isPresented9onDismiss7contentQrAA7BindingVySbG_yycSgqd__yctAaLRd__lFQOyAJ_AA010NavigationE0VyAmAE7toolbarAQQrqd__yXE_tAA14ToolbarContentRd__lFQOyAH0h16BlocksReorderingE0V_AA0tU7BuilderV10buildBlockyQrxAaYRzlFZQOy_AA0T4ItemVyytAA08ModifiedU0VyAA0J0VyAA07DefaultJ5LabelVGAA30_EnvironmentKeyWritingModifierVyAA13AnyShapeStyleVSgGGGQo_Qo_GQo_SgtGAEGSgMd);
  MEMORY[0x28223BE20](v4 - 8);
  v69 = v56 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v70 = v56 - v7;
  v8 = type metadata accessor for IntervalBlocksSection();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v68 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI7ForEachVySay11WorkoutCore0E5BlockCG10Foundation4UUIDVAA15ModifiedContentVyALy0eB008IntervalG17ConfigurationViewVAA30_EnvironmentKeyWritingModifierVyAM0M15NavigationModelCSgGGAQyAD0leM0CSgGGGMd);
  v61 = *(v68 - 8);
  MEMORY[0x28223BE20](v68);
  v67 = v56 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v71 = v56 - v13;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI7SectionVyAA9EmptyViewVAA15ModifiedContentVyAGy07WorkoutB0031IntervalSingleStepConfigurationE0VAA30_EnvironmentKeyWritingModifierVyAH0L15NavigationModelCSgGGALy0H4Core0ihL0CSgGGAEGMd);
  v59 = *(v14 - 8);
  v60 = v14;
  MEMORY[0x28223BE20](v14);
  v65 = v56 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v66 = v56 - v17;
  MEMORY[0x28223BE20](v18);
  v63 = v56 - v19;
  MEMORY[0x28223BE20](v20);
  v22 = v56 - v21;
  v72 = v1;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyACy07WorkoutB035IntervalSingleStepConfigurationViewVAA30_EnvironmentKeyWritingModifierVyAD0I15NavigationModelCSgGGAHy0E4Core0feI0CSgGGMd);
  v24 = lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<IntervalSingleStepConfigurationView, _EnvironmentKeyWritingModifier<ConfigurationNavigationModel?>>, _EnvironmentKeyWritingModifier<IntervalWorkoutConfiguration?>> and conformance <> ModifiedContent<A, B>(&lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<IntervalSingleStepConfigurationView, _EnvironmentKeyWritingModifier<ConfigurationNavigationModel?>>, _EnvironmentKeyWritingModifier<IntervalWorkoutConfiguration?>> and conformance <> ModifiedContent<A, B>, &_s7SwiftUI15ModifiedContentVyACy07WorkoutB035IntervalSingleStepConfigurationViewVAA30_EnvironmentKeyWritingModifierVyAD0I15NavigationModelCSgGGAHy0E4Core0feI0CSgGGMd, &_s7SwiftUI15ModifiedContentVyACy07WorkoutB035IntervalSingleStepConfigurationViewVAA30_EnvironmentKeyWritingModifierVyAD0I15NavigationModelCSgGGAHy0E4Core0feI0CSgGGMR, lazy protocol witness table accessor for type ModifiedContent<IntervalSingleStepConfigurationView, _EnvironmentKeyWritingModifier<ConfigurationNavigationModel?>> and conformance <> ModifiedContent<A, B>);
  v64 = v22;
  v56[2] = v23;
  v56[1] = v24;
  Section<>.init(content:)();
  v73 = IntervalWorkout.stepBlocks.getter();
  outlined init with copy of IntervalBlocksSection(v1, v56 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  v25 = (*(v9 + 80) + 16) & ~*(v9 + 80);
  v26 = swift_allocObject();
  outlined init with take of IntervalBlocksSection(v56 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0), v26 + v25, type metadata accessor for IntervalBlocksSection);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay11WorkoutCore0A5BlockCGMd);
  type metadata accessor for UUID();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyACy07WorkoutB030IntervalBlockConfigurationViewVAA30_EnvironmentKeyWritingModifierVyAD0H15NavigationModelCSgGGAHy0E4Core0feH0CSgGGMd);
  _s7SwiftUI30_EnvironmentKeyWritingModifierVy07WorkoutB028ConfigurationNavigationModelCSgGACyxGAA04ViewF0AAWlTm_1(&lazy protocol witness table cache variable for type [WorkoutBlock] and conformance [A], &_sSay11WorkoutCore0A5BlockCGMd);
  lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<IntervalSingleStepConfigurationView, _EnvironmentKeyWritingModifier<ConfigurationNavigationModel?>>, _EnvironmentKeyWritingModifier<IntervalWorkoutConfiguration?>> and conformance <> ModifiedContent<A, B>(&lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<IntervalBlockConfigurationView, _EnvironmentKeyWritingModifier<ConfigurationNavigationModel?>>, _EnvironmentKeyWritingModifier<IntervalWorkoutConfiguration?>> and conformance <> ModifiedContent<A, B>, &_s7SwiftUI15ModifiedContentVyACy07WorkoutB030IntervalBlockConfigurationViewVAA30_EnvironmentKeyWritingModifierVyAD0H15NavigationModelCSgGGAHy0E4Core0feH0CSgGGMd, &_s7SwiftUI15ModifiedContentVyACy07WorkoutB030IntervalBlockConfigurationViewVAA30_EnvironmentKeyWritingModifierVyAD0H15NavigationModelCSgGGAHy0E4Core0feH0CSgGGMR, lazy protocol witness table accessor for type ModifiedContent<IntervalBlockConfigurationView, _EnvironmentKeyWritingModifier<ConfigurationNavigationModel?>> and conformance <> ModifiedContent<A, B>);
  _s9WorkoutUI28ConfigurationNavigationModelCAC7Combine16ObservableObjectAAWlTm_17(&lazy protocol witness table cache variable for type WorkoutBlock and conformance WorkoutBlock, MEMORY[0x277D7DD60]);
  v27 = ForEach<>.init(_:content:)();
  if ((*(v1 + 96) & 0x20) != 0)
  {
    MEMORY[0x28223BE20](v27);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI9TupleViewVy07WorkoutB020IntervalStyledButtonVSg_AgA0D0PAAE5sheet11isPresented9onDismiss7contentQrAA7BindingVySbG_yycSgqd__yctAaHRd__lFQOyAF_AA010NavigationD0VyAiAE7toolbarAMQrqd__yXE_tAA14ToolbarContentRd__lFQOyAD0f16BlocksReorderingD0V_AA0rS7BuilderV10buildBlockyQrxAaURzlFZQOy_AA0R4ItemVyytAA08ModifiedS0VyAA0H0VyAA07DefaultH5LabelVGAA30_EnvironmentKeyWritingModifierVyAA13AnyShapeStyleVSgGGGQo_Qo_GQo_SgtGMd);
    _s7SwiftUI30_EnvironmentKeyWritingModifierVy07WorkoutB028ConfigurationNavigationModelCSgGACyxGAA04ViewF0AAWlTm_1(&lazy protocol witness table cache variable for type TupleView<(IntervalStyledButton?, IntervalStyledButton?, (<<opaque return type of View.sheet<A>(isPresented:onDismiss:content:)>>.0)?)> and conformance TupleView<A>, &_s7SwiftUI9TupleViewVy07WorkoutB020IntervalStyledButtonVSg_AgA0D0PAAE5sheet11isPresented9onDismiss7contentQrAA7BindingVySbG_yycSgqd__yctAaHRd__lFQOyAF_AA010NavigationD0VyAiAE7toolbarAMQrqd__yXE_tAA14ToolbarContentRd__lFQOyAD0f16BlocksReorderingD0V_AA0rS7BuilderV10buildBlockyQrxAaURzlFZQOy_AA0R4ItemVyytAA08ModifiedS0VyAA0H0VyAA07DefaultH5LabelVGAA30_EnvironmentKeyWritingModifierVyAA13AnyShapeStyleVSgGGGQo_Qo_GQo_SgtGMd);
    v34 = v56[0];
    Section<>.init(content:)();
    v29 = v57;
    v35 = v58;
    v36 = v70;
    (*(v57 + 32))(v70, v34, v58);
    v31 = 0;
    v32 = v36;
    v33 = v35;
  }

  else
  {
    v29 = v57;
    v28 = v58;
    v30 = v70;
    if (IntervalWorkout.stepBlocks.getter() >> 62)
    {
      __CocoaSet.count.getter();
    }

    v31 = 1;
    v32 = v30;
    v33 = v28;
  }

  v37 = (*(v29 + 56))(v32, v31, 1, v33);
  MEMORY[0x28223BE20](v37);
  v38 = v63;
  Section<>.init(content:)();
  v40 = v59;
  v39 = v60;
  v41 = *(v59 + 16);
  v42 = v66;
  v41(v66, v64, v60);
  v43 = v61;
  v44 = *(v61 + 16);
  v45 = v67;
  v44(v67, v71, v68);
  outlined init with copy of Section<EmptyView, TupleView<(IntervalStyledButton?, IntervalStyledButton?, (<<opaque return type of View.sheet<A>(isPresented:onDismiss:content:)>>.0)?)>, EmptyView>?(v70, v69, &_s7SwiftUI7SectionVyAA9EmptyViewVAA05TupleE0Vy07WorkoutB020IntervalStyledButtonVSg_AkA0E0PAAE5sheet11isPresented9onDismiss7contentQrAA7BindingVySbG_yycSgqd__yctAaLRd__lFQOyAJ_AA010NavigationE0VyAmAE7toolbarAQQrqd__yXE_tAA14ToolbarContentRd__lFQOyAH0h16BlocksReorderingE0V_AA0tU7BuilderV10buildBlockyQrxAaYRzlFZQOy_AA0T4ItemVyytAA08ModifiedU0VyAA0J0VyAA07DefaultJ5LabelVGAA30_EnvironmentKeyWritingModifierVyAA13AnyShapeStyleVSgGGGQo_Qo_GQo_SgtGAEGSgMd);
  v41(v65, v38, v39);
  v46 = v62;
  v41(v62, v42, v39);
  v47 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI7SectionVyAA9EmptyViewVAA15ModifiedContentVyAGy07WorkoutB0031IntervalSingleStepConfigurationE0VAA30_EnvironmentKeyWritingModifierVyAH0L15NavigationModelCSgGGALy0H4Core0ihL0CSgGGAEG_AA7ForEachVySayAR0H5BlockCG10Foundation4UUIDVAGyAGyAH0ivlE0VAPGAVGGACyAeA05TupleE0VyAH0I12StyledButtonVSg_A14_AA0E0PAAE5sheet11isPresented9onDismiss7contentQrAA7BindingVySbG_yycSgqd__yctAAA15_Rd__lFQOyA13__AA0qE0VyA16_AAE7toolbarA20_Qrqd__yXE_tAA07ToolbarG0Rd__lFQOyAH0i16BlocksReorderingE0V_AA07ToolbarG7BuilderV05buildV0yQrxAAA28_RzlFZQOy_AA11ToolbarItemVyytAGyAA6ButtonVyAA18DefaultButtonLabelVGALyAA13AnyShapeStyleVSgGGGQo_Qo_GQo_SgtGAEGSgAXtMd);
  v48 = v45;
  v49 = v68;
  v44(&v46[v47[12]], v48, v68);
  v50 = v69;
  outlined init with copy of Section<EmptyView, TupleView<(IntervalStyledButton?, IntervalStyledButton?, (<<opaque return type of View.sheet<A>(isPresented:onDismiss:content:)>>.0)?)>, EmptyView>?(v69, &v46[v47[16]], &_s7SwiftUI7SectionVyAA9EmptyViewVAA05TupleE0Vy07WorkoutB020IntervalStyledButtonVSg_AkA0E0PAAE5sheet11isPresented9onDismiss7contentQrAA7BindingVySbG_yycSgqd__yctAaLRd__lFQOyAJ_AA010NavigationE0VyAmAE7toolbarAQQrqd__yXE_tAA14ToolbarContentRd__lFQOyAH0h16BlocksReorderingE0V_AA0tU7BuilderV10buildBlockyQrxAaYRzlFZQOy_AA0T4ItemVyytAA08ModifiedU0VyAA0J0VyAA07DefaultJ5LabelVGAA30_EnvironmentKeyWritingModifierVyAA13AnyShapeStyleVSgGGGQo_Qo_GQo_SgtGAEGSgMd);
  v51 = &v46[v47[20]];
  v52 = v65;
  v41(v51, v65, v39);
  v53 = *(v40 + 8);
  v53(v63, v39);
  outlined destroy of Section<EmptyView, TupleView<(IntervalStyledButton?, IntervalStyledButton?, (<<opaque return type of View.sheet<A>(isPresented:onDismiss:content:)>>.0)?)>, EmptyView>?(v70, &_s7SwiftUI7SectionVyAA9EmptyViewVAA05TupleE0Vy07WorkoutB020IntervalStyledButtonVSg_AkA0E0PAAE5sheet11isPresented9onDismiss7contentQrAA7BindingVySbG_yycSgqd__yctAaLRd__lFQOyAJ_AA010NavigationE0VyAmAE7toolbarAQQrqd__yXE_tAA14ToolbarContentRd__lFQOyAH0h16BlocksReorderingE0V_AA0tU7BuilderV10buildBlockyQrxAaYRzlFZQOy_AA0T4ItemVyytAA08ModifiedU0VyAA0J0VyAA07DefaultJ5LabelVGAA30_EnvironmentKeyWritingModifierVyAA13AnyShapeStyleVSgGGGQo_Qo_GQo_SgtGAEGSgMd);
  v54 = *(v43 + 8);
  v54(v71, v49);
  v53(v64, v39);
  v53(v52, v39);
  outlined destroy of Section<EmptyView, TupleView<(IntervalStyledButton?, IntervalStyledButton?, (<<opaque return type of View.sheet<A>(isPresented:onDismiss:content:)>>.0)?)>, EmptyView>?(v50, &_s7SwiftUI7SectionVyAA9EmptyViewVAA05TupleE0Vy07WorkoutB020IntervalStyledButtonVSg_AkA0E0PAAE5sheet11isPresented9onDismiss7contentQrAA7BindingVySbG_yycSgqd__yctAaLRd__lFQOyAJ_AA010NavigationE0VyAmAE7toolbarAQQrqd__yXE_tAA14ToolbarContentRd__lFQOyAH0h16BlocksReorderingE0V_AA0tU7BuilderV10buildBlockyQrxAaYRzlFZQOy_AA0T4ItemVyytAA08ModifiedU0VyAA0J0VyAA07DefaultJ5LabelVGAA30_EnvironmentKeyWritingModifierVyAA13AnyShapeStyleVSgGGGQo_Qo_GQo_SgtGAEGSgMd);
  v54(v67, v49);
  return (v53)(v66, v39);
}

uint64_t IntervalBlocksSection.singleStepConfigurationView(for:stepType:)@<X0>(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  v3 = v2;
  v33 = a2;
  v5 = type metadata accessor for IntervalSingleStepConfigurationView();
  v6 = v5 - 8;
  MEMORY[0x28223BE20](v5);
  v8 = (&v30 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVy07WorkoutB035IntervalSingleStepConfigurationViewVAA30_EnvironmentKeyWritingModifierVyAD0I15NavigationModelCSgGGMd);
  MEMORY[0x28223BE20](v32);
  v10 = &v30 - v9;
  v11 = v3[6];
  v31 = v3[7];
  v12 = *(v6 + 44);
  v13 = type metadata accessor for StepType();
  (*(*(v13 - 8) + 16))(v8 + v12, a1, v13);
  type metadata accessor for IntervalBlocksSection();
  v30 = v11;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI7BindingVy10Foundation4UUIDVSgGMd);
  Binding.projectedValue.getter();
  type metadata accessor for ConfigurationNavigationModel();
  _s9WorkoutUI28ConfigurationNavigationModelCAC7Combine16ObservableObjectAAWlTm_17(&lazy protocol witness table cache variable for type ConfigurationNavigationModel and conformance ConfigurationNavigationModel, type metadata accessor for ConfigurationNavigationModel);
  v14 = EnvironmentObject.init()();
  v16 = v15;
  type metadata accessor for IntervalWorkoutConfiguration();
  _s9WorkoutUI28ConfigurationNavigationModelCAC7Combine16ObservableObjectAAWlTm_17(&lazy protocol witness table cache variable for type IntervalWorkoutConfiguration and conformance WorkoutConfiguration, MEMORY[0x277D7D9A0]);
  v17 = EnvironmentObject.init()();
  *v8 = v14;
  v8[1] = v16;
  v8[2] = v17;
  v8[3] = v18;
  type metadata accessor for WorkoutBlock();
  _s9WorkoutUI28ConfigurationNavigationModelCAC7Combine16ObservableObjectAAWlTm_17(&lazy protocol witness table cache variable for type WorkoutBlock and conformance WorkoutBlock, MEMORY[0x277D7DD60]);

  v8[4] = ObservedObject.init(wrappedValue:)();
  v8[5] = v19;
  v20 = v31;
  v8[6] = v30;
  v8[7] = v20;
  v21 = *v3;
  if (*v3)
  {

    v22 = static ObservableObject.environmentStore.getter();
    outlined init with take of IntervalBlocksSection(v8, v10, type metadata accessor for IntervalSingleStepConfigurationView);
    v23 = &v10[*(v32 + 36)];
    *v23 = v22;
    v23[1] = v21;
    v24 = v3[2];
    if (v24)
    {
      v25 = v24;
      v26 = static ObservableObject.environmentStore.getter();
      v27 = v33;
      outlined init with take of ModifiedContent<IntervalSingleStepConfigurationView, _EnvironmentKeyWritingModifier<ConfigurationNavigationModel?>>(v10, v33, &_s7SwiftUI15ModifiedContentVy07WorkoutB035IntervalSingleStepConfigurationViewVAA30_EnvironmentKeyWritingModifierVyAD0I15NavigationModelCSgGGMd);
      result = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyACy07WorkoutB035IntervalSingleStepConfigurationViewVAA30_EnvironmentKeyWritingModifierVyAD0I15NavigationModelCSgGGAHy0E4Core0feI0CSgGGMd);
      v29 = (v27 + *(result + 36));
      *v29 = v26;
      v29[1] = v24;
      return result;
    }
  }

  else
  {
    EnvironmentObject.error()();
    __break(1u);
  }

  result = EnvironmentObject.error()();
  __break(1u);
  return result;
}

uint64_t closure #2 in IntervalBlocksSection.body.getter@<X0>(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  v33 = a2;
  v3 = type metadata accessor for IntervalBlockConfigurationView();
  MEMORY[0x28223BE20](v3);
  v5 = &v27 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVy07WorkoutB030IntervalBlockConfigurationViewVAA30_EnvironmentKeyWritingModifierVyAD0H15NavigationModelCSgGGMd);
  MEMORY[0x28223BE20](v32);
  v7 = &v27 - v6;
  v8 = *(a1 + 48);
  v9 = *(a1 + 96);
  v30 = *(a1 + 88);
  v31 = v9;
  type metadata accessor for IntervalBlocksSection();

  v28 = v8;
  v29 = *(a1 + 56);
  v27 = *(a1 + 72);

  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI7BindingVy10Foundation4UUIDVSgGMd);
  Binding.projectedValue.getter();
  type metadata accessor for ConfigurationNavigationModel();
  _s9WorkoutUI28ConfigurationNavigationModelCAC7Combine16ObservableObjectAAWlTm_17(&lazy protocol witness table cache variable for type ConfigurationNavigationModel and conformance ConfigurationNavigationModel, type metadata accessor for ConfigurationNavigationModel);
  v10 = EnvironmentObject.init()();
  v12 = v11;
  type metadata accessor for IntervalWorkoutConfiguration();
  _s9WorkoutUI28ConfigurationNavigationModelCAC7Combine16ObservableObjectAAWlTm_17(&lazy protocol witness table cache variable for type IntervalWorkoutConfiguration and conformance WorkoutConfiguration, MEMORY[0x277D7D9A0]);
  v13 = EnvironmentObject.init()();
  *v5 = v10;
  *(v5 + 1) = v12;
  *(v5 + 2) = v13;
  *(v5 + 3) = v14;
  type metadata accessor for WorkoutBlock();
  _s9WorkoutUI28ConfigurationNavigationModelCAC7Combine16ObservableObjectAAWlTm_17(&lazy protocol witness table cache variable for type WorkoutBlock and conformance WorkoutBlock, MEMORY[0x277D7DD60]);
  *(v5 + 4) = ObservedObject.init(wrappedValue:)();
  *(v5 + 5) = v15;
  *(v5 + 6) = v28;
  *(v5 + 72) = v27;
  *(v5 + 56) = v29;
  v16 = v31;
  *(v5 + 11) = v30;
  *(v5 + 12) = v16;
  v34 = 0;
  State.init(wrappedValue:)();
  v17 = v36;
  v5[104] = v35;
  *(v5 + 14) = v17;
  v18 = *a1;
  if (*a1)
  {

    v19 = static ObservableObject.environmentStore.getter();
    outlined init with take of IntervalBlocksSection(v5, v7, type metadata accessor for IntervalBlockConfigurationView);
    v20 = &v7[*(v32 + 36)];
    *v20 = v19;
    v20[1] = v18;
    v21 = *(a1 + 16);
    if (v21)
    {
      v22 = v21;
      v23 = static ObservableObject.environmentStore.getter();
      v24 = v33;
      outlined init with take of ModifiedContent<IntervalSingleStepConfigurationView, _EnvironmentKeyWritingModifier<ConfigurationNavigationModel?>>(v7, v33, &_s7SwiftUI15ModifiedContentVy07WorkoutB030IntervalBlockConfigurationViewVAA30_EnvironmentKeyWritingModifierVyAD0H15NavigationModelCSgGGMd);
      result = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyACy07WorkoutB030IntervalBlockConfigurationViewVAA30_EnvironmentKeyWritingModifierVyAD0H15NavigationModelCSgGGAHy0E4Core0feH0CSgGGMd);
      v26 = (v24 + *(result + 36));
      *v26 = v23;
      v26[1] = v21;
      return result;
    }
  }

  else
  {
    EnvironmentObject.error()();
    __break(1u);
  }

  result = EnvironmentObject.error()();
  __break(1u);
  return result;
}

uint64_t closure #3 in IntervalBlocksSection.body.getter@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v75 = a2;
  v80 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI4ViewPAAE5sheet11isPresented9onDismiss7contentQrAA7BindingVySbG_yycSgqd__yctAaBRd__lFQOy07WorkoutB020IntervalStyledButtonV_AA010NavigationC0VyAcAE7toolbarAGQrqd__yXE_tAA14ToolbarContentRd__lFQOyAL0l16BlocksReorderingC0V_AA0qR7BuilderV10buildBlockyQrxAaRRzlFZQOy_AA0Q4ItemVyytAA08ModifiedR0VyAA0N0VyAA07DefaultN5LabelVGAA30_EnvironmentKeyWritingModifierVyAA13AnyShapeStyleVSgGGGQo_Qo_GQo_Md);
  v79 = *(v80 - 8);
  MEMORY[0x28223BE20](v80);
  v70 = &v66 - v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI4ViewPAAE5sheet11isPresented9onDismiss7contentQrAA7BindingVySbG_yycSgqd__yctAaBRd__lFQOy07WorkoutB020IntervalStyledButtonV_AA010NavigationC0VyAcAE7toolbarAGQrqd__yXE_tAA14ToolbarContentRd__lFQOyAL0l16BlocksReorderingC0V_AA0qR7BuilderV10buildBlockyQrxAaRRzlFZQOy_AA0Q4ItemVyytAA08ModifiedR0VyAA0N0VyAA07DefaultN5LabelVGAA30_EnvironmentKeyWritingModifierVyAA13AnyShapeStyleVSgGGGQo_Qo_GQo_SgMd);
  MEMORY[0x28223BE20](v4 - 8);
  v84 = &v66 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v85 = &v66 - v7;
  v8 = type metadata accessor for IntervalBlocksSection();
  v77 = *(v8 - 8);
  MEMORY[0x28223BE20](v8 - 8);
  v78 = v9;
  v10 = &v66 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = 0;
  v81 = 0;
  v12 = 0;
  v92 = 0;
  v13 = 0;
  v87 = 0;
  v14 = 0;
  v15 = *(a1 + 96);
  if ((v15 & 0x20) != 0)
  {
    v11 = IntervalBlocksSection.addButtonTitle.getter();
    v17 = v16;
    v18 = IntervalBlocksSection.disableAddBlock.getter();
    v19 = Image.init(systemName:)();
    outlined init with copy of IntervalBlocksSection(a1, v10);
    v20 = (*(v77 + 80) + 16) & ~*(v77 + 80);
    v21 = swift_allocObject();
    outlined init with take of IntervalBlocksSection(v10, v21 + v20, type metadata accessor for IntervalBlocksSection);
    [objc_allocWithZone(MEMORY[0x277D75348]) initWithDisplayP3Red:0.122 green:0.086 blue:0.196 alpha:1.0];
    v14 = Color.init(uiColor:)();
    v12 = v18;
    v81 = v17;

    v92 = v19;

    v87 = v21;

    v13 = partial apply for closure #1 in closure #3 in IntervalBlocksSection.body.getter;
  }

  v74 = v13;
  v71 = v10;
  v76 = v12;
  static Platform.current.getter();
  v22 = Platform.rawValue.getter();
  v23 = Platform.rawValue.getter();
  v82 = v14;
  if (v22 == v23 || (IntervalWorkout.canAddRepeat.getter() & 1) == 0)
  {
    countAndFlagsBits = 0;
    object = 0;
    v86 = 0;
    v90 = 0;
    v89 = 0;
    v83 = 0;
    v72 = 0;
  }

  else
  {
    v69 = v15;
    if (one-time initialization token for WorkoutUIBundle != -1)
    {
      swift_once();
    }

    swift_beginAccess();
    v24.super.isa = WorkoutUIBundle.super.isa;
    v103._object = 0xE000000000000000;
    v25.value._countAndFlagsBits = 0x617A696C61636F4CLL;
    v25.value._object = 0xEB00000000656C62;
    v26._countAndFlagsBits = 0xD000000000000020;
    v26._object = 0x800000020CBA4120;
    v27._countAndFlagsBits = 0;
    v27._object = 0xE000000000000000;
    v103._countAndFlagsBits = 0;
    v28 = NSLocalizedString(_:tableName:bundle:value:comment:)(v26, v25, v24, v27, v103);
    countAndFlagsBits = v28._countAndFlagsBits;

    LOBYTE(v24.super.isa) = IntervalBlocksSection.disableAddBlock.getter();
    v29 = Image.init(systemName:)();
    v30 = v71;
    outlined init with copy of IntervalBlocksSection(a1, v71);
    v31 = (*(v77 + 80) + 16) & ~*(v77 + 80);
    v32 = swift_allocObject();
    outlined init with take of IntervalBlocksSection(v30, v32 + v31, type metadata accessor for IntervalBlocksSection);
    [objc_allocWithZone(MEMORY[0x277D75348]) initWithDisplayP3Red:0.122 green:0.086 blue:0.196 alpha:1.0];
    v33 = Color.init(uiColor:)();
    v86 = v24.super.isa & 1;
    object = v28._object;

    v90 = v29;

    v83 = v32;

    v72 = v33;

    v89 = partial apply for closure #2 in closure #3 in IntervalBlocksSection.body.getter;
    v14 = v82;
    LOBYTE(v15) = v69;
  }

  v34 = IntervalWorkout.stepBlocks.getter();
  if (v34 >> 62)
  {
    v35 = __CocoaSet.count.getter();
  }

  else
  {
    v35 = *((v34 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v36 = 1;
  v88 = v11;
  if ((v15 & 0x20) != 0 && v35 >= 2)
  {
    if (one-time initialization token for WorkoutUIBundle != -1)
    {
      swift_once();
    }

    swift_beginAccess();
    v37 = WorkoutUIBundle.super.isa;
    v104._object = 0xE000000000000000;
    v38.value._countAndFlagsBits = 0x617A696C61636F4CLL;
    v38.value._object = 0xEB00000000656C62;
    v39._object = 0x800000020CBA4100;
    v39._countAndFlagsBits = 0xD00000000000001BLL;
    v40._countAndFlagsBits = 0;
    v40._object = 0xE000000000000000;
    v104._countAndFlagsBits = 0;
    v41 = NSLocalizedString(_:tableName:bundle:value:comment:)(v39, v38, v37, v40, v104);

    v42 = IntervalWorkout.stepBlocks.getter();
    v69 = v41._object;
    v67 = v41._countAndFlagsBits;
    if (v42 >> 62)
    {
      v43 = __CocoaSet.count.getter();
    }

    else
    {
      v43 = *((v42 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v44 = Image.init(systemName:)();
    v68 = v44;
    v45 = v71;
    outlined init with copy of IntervalBlocksSection(a1, v71);
    v46 = (*(v77 + 80) + 16) & ~*(v77 + 80);
    v47 = swift_allocObject();
    v77 = v47;
    outlined init with take of IntervalBlocksSection(v45, v47 + v46, type metadata accessor for IntervalBlocksSection);
    [objc_allocWithZone(MEMORY[0x277D75348]) initWithDisplayP3Red:0.122 green:0.086 blue:0.196 alpha:1.0];
    v48 = Color.init(uiColor:)();
    v96 = v67;
    v97 = v69;
    v98 = v43 < 2;
    v99 = v44;
    v100 = partial apply for closure #3 in closure #3 in IntervalBlocksSection.body.getter;
    v101 = v47;
    v102 = v48;
    v49 = *(a1 + 112);
    v94 = *(a1 + 104);
    v95 = v49;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI5StateVySbGMd);
    State.projectedValue.getter();
    LODWORD(v67) = v93;
    outlined init with copy of IntervalBlocksSection(a1, v45);
    v50 = swift_allocObject();
    outlined init with take of IntervalBlocksSection(v45, v50 + v46, type metadata accessor for IntervalBlocksSection);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI14NavigationViewVyAA0D0PAAE7toolbar7contentQrqd__yXE_tAA14ToolbarContentRd__lFQOy07WorkoutB0024IntervalBlocksReorderingD0V_AA0gH7BuilderV10buildBlockyQrxAaHRzlFZQOy_AA0G4ItemVyytAA08ModifiedH0VyAA6ButtonVyAA07DefaultR5LabelVGAA30_EnvironmentKeyWritingModifierVyAA13AnyShapeStyleVSgGGGQo_Qo_GMd);
    lazy protocol witness table accessor for type IntervalStyledButton and conformance IntervalStyledButton();
    _s7SwiftUI30_EnvironmentKeyWritingModifierVy07WorkoutB028ConfigurationNavigationModelCSgGACyxGAA04ViewF0AAWlTm_1(&lazy protocol witness table cache variable for type NavigationView<<<opaque return type of View.toolbar<A>(content:)>>.0> and conformance NavigationView<A>, &_s7SwiftUI14NavigationViewVyAA0D0PAAE7toolbar7contentQrqd__yXE_tAA14ToolbarContentRd__lFQOy07WorkoutB0024IntervalBlocksReorderingD0V_AA0gH7BuilderV10buildBlockyQrxAaHRzlFZQOy_AA0G4ItemVyytAA08ModifiedH0VyAA6ButtonVyAA07DefaultR5LabelVGAA30_EnvironmentKeyWritingModifierVyAA13AnyShapeStyleVSgGGGQo_Qo_GMd);
    v51 = v70;
    View.sheet<A>(isPresented:onDismiss:content:)();

    (*(v79 + 32))(v85, v51, v80);
    v36 = 0;
    v11 = v88;
    v14 = v82;
  }

  v52 = v85;
  (*(v79 + 56))(v85, v36, 1, v80);
  v53 = v84;
  outlined init with copy of Section<EmptyView, TupleView<(IntervalStyledButton?, IntervalStyledButton?, (<<opaque return type of View.sheet<A>(isPresented:onDismiss:content:)>>.0)?)>, EmptyView>?(v52, v84, &_s7SwiftUI4ViewPAAE5sheet11isPresented9onDismiss7contentQrAA7BindingVySbG_yycSgqd__yctAaBRd__lFQOy07WorkoutB020IntervalStyledButtonV_AA010NavigationC0VyAcAE7toolbarAGQrqd__yXE_tAA14ToolbarContentRd__lFQOyAL0l16BlocksReorderingC0V_AA0qR7BuilderV10buildBlockyQrxAaRRzlFZQOy_AA0Q4ItemVyytAA08ModifiedR0VyAA0N0VyAA07DefaultN5LabelVGAA30_EnvironmentKeyWritingModifierVyAA13AnyShapeStyleVSgGGGQo_Qo_GQo_SgMd);
  v54 = v75;
  v55 = v81;
  *v75 = v11;
  v54[1] = v55;
  v56 = v92;
  v54[2] = v76;
  v54[3] = v56;
  v57 = v87;
  v54[4] = v74;
  v54[5] = v57;
  v58 = countAndFlagsBits;
  v54[6] = v14;
  v54[7] = v58;
  v59 = v90;
  v60 = v86;
  v54[8] = object;
  v54[9] = v60;
  v61 = v89;
  v54[10] = v59;
  v54[11] = v61;
  v62 = v72;
  v54[12] = v83;
  v54[13] = v62;
  v63 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9WorkoutUI20IntervalStyledButtonVSg_AD05SwiftB04ViewPAEE5sheet11isPresented9onDismiss7contentQrAE7BindingVySbG_yycSgqd__yctAeFRd__lFQOyAC_AE010NavigationG0VyAgEE7toolbarAKQrqd__yXE_tAE14ToolbarContentRd__lFQOyAA0c16BlocksReorderingG0V_AE0qR7BuilderV10buildBlockyQrxAeSRzlFZQOy_AE0Q4ItemVyytAE08ModifiedR0VyAE0E0VyAE07DefaultE5LabelVGAE30_EnvironmentKeyWritingModifierVyAE13AnyShapeStyleVSgGGGQo_Qo_GQo_SgtMd);
  outlined init with copy of Section<EmptyView, TupleView<(IntervalStyledButton?, IntervalStyledButton?, (<<opaque return type of View.sheet<A>(isPresented:onDismiss:content:)>>.0)?)>, EmptyView>?(v53, v54 + *(v63 + 64), &_s7SwiftUI4ViewPAAE5sheet11isPresented9onDismiss7contentQrAA7BindingVySbG_yycSgqd__yctAaBRd__lFQOy07WorkoutB020IntervalStyledButtonV_AA010NavigationC0VyAcAE7toolbarAGQrqd__yXE_tAA14ToolbarContentRd__lFQOyAL0l16BlocksReorderingC0V_AA0qR7BuilderV10buildBlockyQrxAaRRzlFZQOy_AA0Q4ItemVyytAA08ModifiedR0VyAA0N0VyAA07DefaultN5LabelVGAA30_EnvironmentKeyWritingModifierVyAA13AnyShapeStyleVSgGGGQo_Qo_GQo_SgMd);
  v87 = v57;
  outlined copy of IntervalStyledButton?(v88, v55);
  v64 = object;
  v86 = v60;
  outlined copy of IntervalStyledButton?(v58, object);
  outlined consume of IntervalStyledButton?(v58, v64);
  outlined consume of IntervalStyledButton?(v88, v55);
  outlined destroy of Section<EmptyView, TupleView<(IntervalStyledButton?, IntervalStyledButton?, (<<opaque return type of View.sheet<A>(isPresented:onDismiss:content:)>>.0)?)>, EmptyView>?(v85, &_s7SwiftUI4ViewPAAE5sheet11isPresented9onDismiss7contentQrAA7BindingVySbG_yycSgqd__yctAaBRd__lFQOy07WorkoutB020IntervalStyledButtonV_AA010NavigationC0VyAcAE7toolbarAGQrqd__yXE_tAA14ToolbarContentRd__lFQOyAL0l16BlocksReorderingC0V_AA0qR7BuilderV10buildBlockyQrxAaRRzlFZQOy_AA0Q4ItemVyytAA08ModifiedR0VyAA0N0VyAA07DefaultN5LabelVGAA30_EnvironmentKeyWritingModifierVyAA13AnyShapeStyleVSgGGGQo_Qo_GQo_SgMd);
  outlined destroy of Section<EmptyView, TupleView<(IntervalStyledButton?, IntervalStyledButton?, (<<opaque return type of View.sheet<A>(isPresented:onDismiss:content:)>>.0)?)>, EmptyView>?(v84, &_s7SwiftUI4ViewPAAE5sheet11isPresented9onDismiss7contentQrAA7BindingVySbG_yycSgqd__yctAaBRd__lFQOy07WorkoutB020IntervalStyledButtonV_AA010NavigationC0VyAcAE7toolbarAGQrqd__yXE_tAA14ToolbarContentRd__lFQOyAL0l16BlocksReorderingC0V_AA0qR7BuilderV10buildBlockyQrxAaRRzlFZQOy_AA0Q4ItemVyytAA08ModifiedR0VyAA0N0VyAA07DefaultN5LabelVGAA30_EnvironmentKeyWritingModifierVyAA13AnyShapeStyleVSgGGGQo_Qo_GQo_SgMd);
  outlined consume of IntervalStyledButton?(v58, object);
  return outlined consume of IntervalStyledButton?(v88, v55);
}

uint64_t IntervalBlocksSection.addButtonTitle.getter()
{
  if (static Platform.current.getter())
  {
    if (one-time initialization token for WorkoutUIBundle != -1)
    {
      swift_once();
    }

    swift_beginAccess();
    v0 = WorkoutUIBundle.super.isa;
    v8 = 0xE000000000000000;
    v1 = 0xD000000000000023;
    v2 = 0x800000020CBA4150;
  }

  else
  {
    if (one-time initialization token for WorkoutUIBundle != -1)
    {
      swift_once();
    }

    swift_beginAccess();
    v0 = WorkoutUIBundle.super.isa;
    v8 = 0xE000000000000000;
    v2 = 0x800000020CBA4180;
    v1 = 0xD00000000000001ELL;
  }

  v3.value._countAndFlagsBits = 0x617A696C61636F4CLL;
  v3.value._object = 0xEB00000000656C62;
  v4._countAndFlagsBits = 0;
  v4._object = 0xE000000000000000;
  v5 = 0;
  countAndFlagsBits = NSLocalizedString(_:tableName:bundle:value:comment:)(*&v1, v3, v0, v4, *(&v8 - 1))._countAndFlagsBits;

  return countAndFlagsBits;
}

uint64_t IntervalBlocksSection.addButtonPressed()()
{
  v1 = *v0;
  if (*v0)
  {
    v2 = v0[5];
    v3 = OBJC_IVAR____TtC9WorkoutUI28ConfigurationNavigationModel_intervalWorkout;
    swift_beginAccess();
    v4 = *(v1 + v3);
    *(v1 + v3) = v2;
    v5 = v2;

    swift_getKeyPath();
    swift_getKeyPath();

    static Published.subscript.setter();
    v6 = static Platform.current.getter();
    if (v6)
    {
      swift_getKeyPath();
      swift_getKeyPath();

      return static Published.subscript.setter();
    }

    else
    {
      MEMORY[0x28223BE20](v6);
      static Animation.default.getter();
      withAnimation<A>(_:_:)();
    }
  }

  else
  {
    type metadata accessor for ConfigurationNavigationModel();
    _s9WorkoutUI28ConfigurationNavigationModelCAC7Combine16ObservableObjectAAWlTm_17(&lazy protocol witness table cache variable for type ConfigurationNavigationModel and conformance ConfigurationNavigationModel, type metadata accessor for ConfigurationNavigationModel);
    result = EnvironmentObject.error()();
    __break(1u);
  }

  return result;
}

uint64_t IntervalBlocksSection.repeatButtonPressed()()
{
  v1 = *v0;
  if (*v0)
  {
    v2 = v0[5];
    v3 = OBJC_IVAR____TtC9WorkoutUI28ConfigurationNavigationModel_intervalWorkout;
    swift_beginAccess();
    v4 = *(v1 + v3);
    *(v1 + v3) = v2;

    v5 = v2;

    swift_getKeyPath();
    swift_getKeyPath();

    return static Published.subscript.setter();
  }

  else
  {
    type metadata accessor for ConfigurationNavigationModel();
    _s9WorkoutUI28ConfigurationNavigationModelCAC7Combine16ObservableObjectAAWlTm_17(&lazy protocol witness table cache variable for type ConfigurationNavigationModel and conformance ConfigurationNavigationModel, type metadata accessor for ConfigurationNavigationModel);
    result = EnvironmentObject.error()();
    __break(1u);
  }

  return result;
}

uint64_t closure #4 in closure #3 in IntervalBlocksSection.body.getter()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI4ViewPAAE7toolbar7contentQrqd__yXE_tAA14ToolbarContentRd__lFQOy07WorkoutB0024IntervalBlocksReorderingC0V_AA0fG7BuilderV10buildBlockyQrxAaFRzlFZQOy_AA0F4ItemVyytAA08ModifiedG0VyAA6ButtonVyAA07DefaultQ5LabelVGAA30_EnvironmentKeyWritingModifierVyAA13AnyShapeStyleVSgGGGQo_Qo_Md);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI21ToolbarContentBuilderV10buildBlockyQrxAA0cD0RzlFZQOy_AA0C4ItemVyytAA08ModifiedD0VyAA6ButtonVyAA07DefaultJ5LabelVGAA30_EnvironmentKeyWritingModifierVyAA13AnyShapeStyleVSgGGGQo_Md);
  lazy protocol witness table accessor for type IntervalBlocksReorderingView and conformance IntervalBlocksReorderingView();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI11ToolbarItemVyytAA15ModifiedContentVyAA6ButtonVyAA07DefaultG5LabelVGAA30_EnvironmentKeyWritingModifierVyAA13AnyShapeStyleVSgGGGMd);
  _s7SwiftUI30_EnvironmentKeyWritingModifierVy07WorkoutB028ConfigurationNavigationModelCSgGACyxGAA04ViewF0AAWlTm_1(&lazy protocol witness table cache variable for type ToolbarItem<(), ModifiedContent<Button<DefaultButtonLabel>, _EnvironmentKeyWritingModifier<AnyShapeStyle?>>> and conformance ToolbarItem<A, B>, &_s7SwiftUI11ToolbarItemVyytAA15ModifiedContentVyAA6ButtonVyAA07DefaultG5LabelVGAA30_EnvironmentKeyWritingModifierVyAA13AnyShapeStyleVSgGGGMd);
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeConformance2();
  return NavigationView.init(content:)();
}

void closure #1 in closure #4 in closure #3 in IntervalBlocksSection.body.getter(uint64_t a1)
{
  v1 = *(a1 + 40);
  v2 = *(a1 + 48);
  type metadata accessor for IntervalWorkout();
  _s9WorkoutUI28ConfigurationNavigationModelCAC7Combine16ObservableObjectAAWlTm_17(&lazy protocol witness table cache variable for type IntervalWorkout and conformance IntervalWorkout, MEMORY[0x277D7D990]);
  v3 = v1;
  v4 = v2;
  ObservedObject.init(wrappedValue:)();
  v6 = v5;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI21ToolbarContentBuilderV10buildBlockyQrxAA0cD0RzlFZQOy_AA0C4ItemVyytAA08ModifiedD0VyAA6ButtonVyAA07DefaultJ5LabelVGAA30_EnvironmentKeyWritingModifierVyAA13AnyShapeStyleVSgGGGQo_Md);
  lazy protocol witness table accessor for type IntervalBlocksReorderingView and conformance IntervalBlocksReorderingView();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI11ToolbarItemVyytAA15ModifiedContentVyAA6ButtonVyAA07DefaultG5LabelVGAA30_EnvironmentKeyWritingModifierVyAA13AnyShapeStyleVSgGGGMd);
  _s7SwiftUI30_EnvironmentKeyWritingModifierVy07WorkoutB028ConfigurationNavigationModelCSgGACyxGAA04ViewF0AAWlTm_1(&lazy protocol witness table cache variable for type ToolbarItem<(), ModifiedContent<Button<DefaultButtonLabel>, _EnvironmentKeyWritingModifier<AnyShapeStyle?>>> and conformance ToolbarItem<A, B>, &_s7SwiftUI11ToolbarItemVyytAA15ModifiedContentVyAA6ButtonVyAA07DefaultG5LabelVGAA30_EnvironmentKeyWritingModifierVyAA13AnyShapeStyleVSgGGGMd);
  swift_getOpaqueTypeConformance2();
  View.toolbar<A>(content:)();
}

uint64_t closure #1 in closure #1 in closure #4 in closure #3 in IntervalBlocksSection.body.getter(uint64_t a1)
{
  v2 = type metadata accessor for ToolbarItemPlacement();
  MEMORY[0x28223BE20](v2 - 8);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI11ToolbarItemVyytAA15ModifiedContentVyAA6ButtonVyAA07DefaultG5LabelVGAA30_EnvironmentKeyWritingModifierVyAA13AnyShapeStyleVSgGGGMd);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v9[-v5];
  static ToolbarItemPlacement.cancellationAction.getter();
  v10 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyAA6ButtonVyAA07DefaultE5LabelVGAA30_EnvironmentKeyWritingModifierVyAA13AnyShapeStyleVSgGGMd);
  lazy protocol witness table accessor for type ModifiedContent<Button<DefaultButtonLabel>, _EnvironmentKeyWritingModifier<AnyShapeStyle?>> and conformance <> ModifiedContent<A, B>();
  ToolbarItem<>.init(placement:content:)();
  v7 = _s7SwiftUI30_EnvironmentKeyWritingModifierVy07WorkoutB028ConfigurationNavigationModelCSgGACyxGAA04ViewF0AAWlTm_1(&lazy protocol witness table cache variable for type ToolbarItem<(), ModifiedContent<Button<DefaultButtonLabel>, _EnvironmentKeyWritingModifier<AnyShapeStyle?>>> and conformance ToolbarItem<A, B>, &_s7SwiftUI11ToolbarItemVyytAA15ModifiedContentVyAA6ButtonVyAA07DefaultG5LabelVGAA30_EnvironmentKeyWritingModifierVyAA13AnyShapeStyleVSgGGGMd);
  MEMORY[0x20F3098F0](v6, v3, v7);
  return (*(v4 + 8))(v6, v3);
}

uint64_t closure #1 in closure #1 in closure #1 in closure #4 in closure #3 in IntervalBlocksSection.body.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for IntervalBlocksSection();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = type metadata accessor for ButtonRole();
  MEMORY[0x28223BE20](v7 - 8);
  v9 = v17 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  static ButtonRole.confirm.getter();
  outlined init with copy of IntervalBlocksSection(a1, v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v10 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v11 = swift_allocObject();
  outlined init with take of IntervalBlocksSection(v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), v11 + v10, type metadata accessor for IntervalBlocksSection);
  MEMORY[0x20F30AF90](v9, partial apply for closure #1 in closure #1 in closure #1 in closure #1 in closure #4 in closure #3 in IntervalBlocksSection.body.getter, v11);
  v12 = static Color.clear.getter();
  KeyPath = swift_getKeyPath();
  v17[1] = v12;
  v14 = AnyShapeStyle.init<A>(_:)();
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyAA6ButtonVyAA07DefaultE5LabelVGAA30_EnvironmentKeyWritingModifierVyAA13AnyShapeStyleVSgGGMd);
  v16 = (a2 + *(result + 36));
  *v16 = KeyPath;
  v16[1] = v14;
  return result;
}

uint64_t closure #3 in closure #3 in IntervalBlocksSection.body.getter()
{

  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI5StateVySbGMd);
  State.wrappedValue.getter();
  State.wrappedValue.setter();
}

uint64_t closure #1 in IntervalBlocksSection.body.getter@<X0>(void (*a1)(double)@<X1>, unsigned int *a2@<X2>, uint64_t a3@<X8>)
{
  v6 = type metadata accessor for StepType();
  v7 = *(v6 - 8);
  v8 = MEMORY[0x28223BE20](v6);
  v10 = &v12 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  a1(v8);
  (*(v7 + 104))(v10, *a2, v6);
  IntervalBlocksSection.singleStepConfigurationView(for:stepType:)(v10, a3);

  return (*(v7 + 8))(v10, v6);
}

uint64_t closure #1 in IntervalBlocksSection.addButtonPressed()(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v21 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v7 = &v21 - v6;
  v22 = type metadata accessor for UUID();
  v8 = *(v22 - 8);
  MEMORY[0x28223BE20](v22);
  v9 = type metadata accessor for StepType();
  v10 = MEMORY[0x28223BE20](v9);
  (*(v12 + 104))(&v21 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0), *MEMORY[0x277D7E710], v10);
  _sSo21FIUIFormattingManagerCMaTm_15(0, &lazy cache variable for type metadata for NLSessionActivityGoal);
  static NLSessionActivityGoal.makeOpenGoal()();
  v13 = a1[2];
  if (v13)
  {
    v14 = v13;
    dispatch thunk of WorkoutConfiguration.activityType.getter();

    UUID.init()();
    type metadata accessor for WorkoutStep();
    swift_allocObject();
    v15 = WorkoutStep.init(_:goal:activityType:uuid:displayName:)();
    if (*a1)
    {
      v16 = v15;

      ConfigurationNavigationModel.choseStepForIntervalWorkout(_:modifyingBlock:)(v16, 0);

      MEMORY[0x20F304900](v17);
      (*(v8 + 56))(v7, 0, 1, v22);
      type metadata accessor for IntervalBlocksSection();
      outlined init with copy of UUID?(v7, v4);
      __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI7BindingVy10Foundation4UUIDVSgGMd);
      Binding.wrappedValue.setter();

      return outlined destroy of UUID?(v7);
    }

    type metadata accessor for ConfigurationNavigationModel();
    v19 = &lazy protocol witness table cache variable for type ConfigurationNavigationModel and conformance ConfigurationNavigationModel;
    v20 = type metadata accessor for ConfigurationNavigationModel;
  }

  else
  {
    type metadata accessor for IntervalWorkoutConfiguration();
    v19 = &lazy protocol witness table cache variable for type IntervalWorkoutConfiguration and conformance WorkoutConfiguration;
    v20 = MEMORY[0x277D7D9A0];
  }

  _s9WorkoutUI28ConfigurationNavigationModelCAC7Combine16ObservableObjectAAWlTm_17(v19, v20);
  result = EnvironmentObject.error()();
  __break(1u);
  return result;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<IntervalSingleStepConfigurationView, _EnvironmentKeyWritingModifier<ConfigurationNavigationModel?>> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<IntervalSingleStepConfigurationView, _EnvironmentKeyWritingModifier<ConfigurationNavigationModel?>> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<IntervalSingleStepConfigurationView, _EnvironmentKeyWritingModifier<ConfigurationNavigationModel?>> and conformance <> ModifiedContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVy07WorkoutB035IntervalSingleStepConfigurationViewVAA30_EnvironmentKeyWritingModifierVyAD0I15NavigationModelCSgGGMd);
    _s9WorkoutUI28ConfigurationNavigationModelCAC7Combine16ObservableObjectAAWlTm_17(&lazy protocol witness table cache variable for type IntervalSingleStepConfigurationView and conformance IntervalSingleStepConfigurationView, type metadata accessor for IntervalSingleStepConfigurationView);
    _s7SwiftUI30_EnvironmentKeyWritingModifierVy07WorkoutB028ConfigurationNavigationModelCSgGACyxGAA04ViewF0AAWlTm_1(&lazy protocol witness table cache variable for type _EnvironmentKeyWritingModifier<ConfigurationNavigationModel?> and conformance _EnvironmentKeyWritingModifier<A>, &_s7SwiftUI30_EnvironmentKeyWritingModifierVy07WorkoutB028ConfigurationNavigationModelCSgGMd);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<IntervalSingleStepConfigurationView, _EnvironmentKeyWritingModifier<ConfigurationNavigationModel?>> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

uint64_t outlined init with copy of IntervalBlocksSection(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for IntervalBlocksSection();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t partial apply for closure #2 in IntervalBlocksSection.body.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for IntervalBlocksSection() - 8);
  v4 = v1 + ((*(v3 + 80) + 16) & ~*(v3 + 80));

  return closure #2 in IntervalBlocksSection.body.getter(v4, a1);
}

uint64_t lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<IntervalSingleStepConfigurationView, _EnvironmentKeyWritingModifier<ConfigurationNavigationModel?>>, _EnvironmentKeyWritingModifier<IntervalWorkoutConfiguration?>> and conformance <> ModifiedContent<A, B>(unint64_t *a1, uint64_t *a2, uint64_t a3, void (*a4)(void))
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2);
    a4();
    _s7SwiftUI30_EnvironmentKeyWritingModifierVy07WorkoutB028ConfigurationNavigationModelCSgGACyxGAA04ViewF0AAWlTm_1(&lazy protocol witness table cache variable for type _EnvironmentKeyWritingModifier<IntervalWorkoutConfiguration?> and conformance _EnvironmentKeyWritingModifier<A>, &_s7SwiftUI30_EnvironmentKeyWritingModifierVy11WorkoutCore08IntervalG13ConfigurationCSgGMd);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<IntervalBlockConfigurationView, _EnvironmentKeyWritingModifier<ConfigurationNavigationModel?>> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<IntervalBlockConfigurationView, _EnvironmentKeyWritingModifier<ConfigurationNavigationModel?>> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<IntervalBlockConfigurationView, _EnvironmentKeyWritingModifier<ConfigurationNavigationModel?>> and conformance <> ModifiedContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVy07WorkoutB030IntervalBlockConfigurationViewVAA30_EnvironmentKeyWritingModifierVyAD0H15NavigationModelCSgGGMd);
    _s9WorkoutUI28ConfigurationNavigationModelCAC7Combine16ObservableObjectAAWlTm_17(&lazy protocol witness table cache variable for type IntervalBlockConfigurationView and conformance IntervalBlockConfigurationView, type metadata accessor for IntervalBlockConfigurationView);
    _s7SwiftUI30_EnvironmentKeyWritingModifierVy07WorkoutB028ConfigurationNavigationModelCSgGACyxGAA04ViewF0AAWlTm_1(&lazy protocol witness table cache variable for type _EnvironmentKeyWritingModifier<ConfigurationNavigationModel?> and conformance _EnvironmentKeyWritingModifier<A>, &_s7SwiftUI30_EnvironmentKeyWritingModifierVy07WorkoutB028ConfigurationNavigationModelCSgGMd);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<IntervalBlockConfigurationView, _EnvironmentKeyWritingModifier<ConfigurationNavigationModel?>> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

uint64_t outlined init with copy of Section<EmptyView, TupleView<(IntervalStyledButton?, IntervalStyledButton?, (<<opaque return type of View.sheet<A>(isPresented:onDismiss:content:)>>.0)?)>, EmptyView>?(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(a3);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t outlined copy of IntervalStyledButton?(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
  }

  return result;
}

uint64_t outlined consume of IntervalStyledButton?(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
  }

  return result;
}

uint64_t outlined destroy of Section<EmptyView, TupleView<(IntervalStyledButton?, IntervalStyledButton?, (<<opaque return type of View.sheet<A>(isPresented:onDismiss:content:)>>.0)?)>, EmptyView>?(uint64_t a1, uint64_t *a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(a2);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t partial apply for closure #4 in closure #3 in IntervalBlocksSection.body.getter()
{
  type metadata accessor for IntervalBlocksSection();

  return closure #4 in closure #3 in IntervalBlocksSection.body.getter();
}

unint64_t lazy protocol witness table accessor for type IntervalStyledButton and conformance IntervalStyledButton()
{
  result = lazy protocol witness table cache variable for type IntervalStyledButton and conformance IntervalStyledButton;
  if (!lazy protocol witness table cache variable for type IntervalStyledButton and conformance IntervalStyledButton)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type IntervalStyledButton and conformance IntervalStyledButton);
  }

  return result;
}

uint64_t _sSo21FIUIFormattingManagerCMaTm_15(uint64_t a1, unint64_t *a2)
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

unint64_t lazy protocol witness table accessor for type IntervalBlocksReorderingView and conformance IntervalBlocksReorderingView()
{
  result = lazy protocol witness table cache variable for type IntervalBlocksReorderingView and conformance IntervalBlocksReorderingView;
  if (!lazy protocol witness table cache variable for type IntervalBlocksReorderingView and conformance IntervalBlocksReorderingView)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type IntervalBlocksReorderingView and conformance IntervalBlocksReorderingView);
  }

  return result;
}

uint64_t objectdestroyTm_92()
{
  v1 = (type metadata accessor for IntervalBlocksSection() - 8);
  v2 = (v0 + ((*(*v1 + 80) + 16) & ~*(*v1 + 80)));

  v3 = v2 + v1[13];

  v4 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI7BindingVy10Foundation4UUIDVSgGMd) + 32);
  v5 = type metadata accessor for UUID();
  v6 = *(v5 - 8);
  if (!(*(v6 + 48))(&v3[v4], 1, v5))
  {
    (*(v6 + 8))(&v3[v4], v5);
  }

  return swift_deallocObject();
}

uint64_t _s9WorkoutUI28ConfigurationNavigationModelCAC7Combine16ObservableObjectAAWlTm_17(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t outlined init with take of IntervalBlocksSection(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t outlined init with take of ModifiedContent<IntervalSingleStepConfigurationView, _EnvironmentKeyWritingModifier<ConfigurationNavigationModel?>>(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(a3);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t _s7SwiftUI30_EnvironmentKeyWritingModifierVy07WorkoutB028ConfigurationNavigationModelCSgGACyxGAA04ViewF0AAWlTm_1(unint64_t *a1, uint64_t *a2)
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

uint64_t LazyNavigationDestinationViewBuilder.build()@<X0>(uint64_t *a1@<X8>)
{
  v3 = type metadata accessor for LazyNavigationDestinationViewBuilder();
  (*(v1 + *(v3 + 20)))(v11);
  v4 = v12;
  v5 = v13;
  v6 = __swift_project_boxed_opaque_existential_1(v11, v12);
  v15 = v4;
  v16 = v5;
  __swift_allocate_boxed_opaque_existential_1(v14);
  static ViewBuilder.buildExpression<A>(_:)(v6, v4, v5);
  __swift_destroy_boxed_opaque_existential_1(v11);
  v7 = v15;
  v8 = v16;
  v9 = __swift_project_boxed_opaque_existential_1(v14, v15);
  a1[3] = v7;
  a1[4] = v8;
  __swift_allocate_boxed_opaque_existential_1(a1);
  static ViewBuilder.buildBlock<A>(_:)(v9, v7, v8);
  return __swift_destroy_boxed_opaque_existential_1(v14);
}

uint64_t type metadata accessor for LazyNavigationDestinationViewBuilder()
{
  result = type metadata singleton initialization cache for LazyNavigationDestinationViewBuilder;
  if (!type metadata singleton initialization cache for LazyNavigationDestinationViewBuilder)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t LazyNavigationDestinationViewBuilder.hash(into:)()
{
  type metadata accessor for UUID();
  _s10Foundation4UUIDVACSHAAWlTm_2(&lazy protocol witness table cache variable for type UUID and conformance UUID, MEMORY[0x277CC95F0]);

  return dispatch thunk of Hashable.hash(into:)();
}

Swift::Int LazyNavigationDestinationViewBuilder.hashValue.getter()
{
  Hasher.init(_seed:)();
  type metadata accessor for UUID();
  _s10Foundation4UUIDVACSHAAWlTm_2(&lazy protocol witness table cache variable for type UUID and conformance UUID, MEMORY[0x277CC95F0]);
  dispatch thunk of Hashable.hash(into:)();
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance LazyNavigationDestinationViewBuilder()
{
  Hasher.init(_seed:)();
  type metadata accessor for UUID();
  _s10Foundation4UUIDVACSHAAWlTm_2(&lazy protocol witness table cache variable for type UUID and conformance UUID, MEMORY[0x277CC95F0]);
  dispatch thunk of Hashable.hash(into:)();
  return Hasher._finalize()();
}

uint64_t protocol witness for Hashable.hash(into:) in conformance LazyNavigationDestinationViewBuilder()
{
  type metadata accessor for UUID();
  _s10Foundation4UUIDVACSHAAWlTm_2(&lazy protocol witness table cache variable for type UUID and conformance UUID, MEMORY[0x277CC95F0]);

  return dispatch thunk of Hashable.hash(into:)();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance LazyNavigationDestinationViewBuilder()
{
  Hasher.init(_seed:)();
  type metadata accessor for UUID();
  _s10Foundation4UUIDVACSHAAWlTm_2(&lazy protocol witness table cache variable for type UUID and conformance UUID, MEMORY[0x277CC95F0]);
  dispatch thunk of Hashable.hash(into:)();
  return Hasher._finalize()();
}

uint64_t _s10Foundation4UUIDVACSHAAWlTm_2(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t type metadata completion function for LazyNavigationDestinationViewBuilder()
{
  result = type metadata accessor for UUID();
  if (v1 <= 0x3F)
  {
    result = type metadata accessor for ()();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

WorkoutUI::WorkoutCountdownStep_optional __swiftcall WorkoutCountdownStep.init(rawValue:)(Swift::UInt rawValue)
{
  v2 = 0x2010003u >> (8 * rawValue);
  if (rawValue >= 4)
  {
    LOBYTE(v2) = 3;
  }

  *v1 = v2;
  return rawValue;
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance WorkoutCountdownStep()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  MEMORY[0x20F30CD90](v1 + 1);
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance WorkoutCountdownStep()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  MEMORY[0x20F30CD90](v1 + 1);
  return Hasher._finalize()();
}

uint64_t WorkoutCountdownStep.description.getter()
{
  v1 = 0x6565726854;
  if (*v0 == 1)
  {
    v1 = 7305044;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 6647375;
  }
}

unint64_t lazy protocol witness table accessor for type WorkoutCountdownStep and conformance WorkoutCountdownStep()
{
  result = lazy protocol witness table cache variable for type WorkoutCountdownStep and conformance WorkoutCountdownStep;
  if (!lazy protocol witness table cache variable for type WorkoutCountdownStep and conformance WorkoutCountdownStep)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type WorkoutCountdownStep and conformance WorkoutCountdownStep);
  }

  return result;
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance WorkoutCountdownStep()
{
  v1 = 0x6565726854;
  if (*v0 == 1)
  {
    v1 = 7305044;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 6647375;
  }
}

uint64_t getEnumTagSinglePayload for WorkoutCountdownStep(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFE)
  {
    goto LABEL_17;
  }

  if (a2 + 2 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 2) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 2;
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

      return (*a1 | (v4 << 8)) - 2;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 2;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 3;
  v8 = v6 - 3;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for WorkoutCountdownStep(uint64_t result, unsigned int a2, unsigned int a3)
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

  if (a3 < 0xFE)
  {
    v4 = 0;
  }

  if (a2 > 0xFD)
  {
    v5 = ((a2 - 254) >> 8) + 1;
    *result = a2 + 2;
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
    *result = a2 + 2;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t EnergyPickerWatch.init(viewModel:)@<X0>(uint64_t *a1@<X8>)
{
  type metadata accessor for EnergyPickerViewModel();
  lazy protocol witness table accessor for type EnergyPickerViewModel and conformance EnergyPickerViewModel();
  result = ObservedObject.init(wrappedValue:)();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t EnergyPickerWatch.body.getter@<X0>(double (**a1)@<D0>(uint64_t a1@<X8>)@<X8>)
{
  v4 = *v1;
  v3 = v1[1];
  v5 = swift_allocObject();
  *(v5 + 16) = v4;
  *(v5 + 24) = v3;
  *a1 = partial apply for closure #1 in EnergyPickerWatch.body.getter;
  a1[1] = v5;
}

double closure #1 in EnergyPickerWatch.body.getter@<D0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X8>)
{
  *a3 = static HorizontalAlignment.center.getter();
  *(a3 + 8) = 0;
  *(a3 + 16) = 1;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI13_VariadicViewO4TreeVy_AA13_VStackLayoutVAA05TupleD0VyAA15ModifiedContentVyAKyAKyAA6PickerVyAA05EmptyD0VSiAA7ForEachVySaySiGSiAA0D0PAAE3tag_15includeOptionalQrqd___SbtSHRd__lFQOyAA4TextV_SiQo_GGAA06_FrameG0VGAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGAA016_ForegroundStyleW0VyAA09TintShapeZ0VGG_AA6SpacerVtGGMd);
  closure #1 in closure #1 in EnergyPickerWatch.body.getter(a1, a2, a3 + *(v6 + 44));
  GeometryProxy.size.getter();
  GeometryProxy.size.getter();
  static Alignment.center.getter();
  _FrameLayout.init(width:height:alignment:)();
  v7 = (a3 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyAA6VStackVyAA9TupleViewVyACyACyACyAA6PickerVyAA05EmptyG0VSiAA7ForEachVySaySiGSiAA0G0PAAE3tag_15includeOptionalQrqd___SbtSHRd__lFQOyAA4TextV_SiQo_GGAA12_FrameLayoutVGAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGAA016_ForegroundStyleU0VyAA09TintShapeX0VGG_AA6SpacerVtGGAYGMd) + 36));
  *v7 = v9;
  v7[1] = v10;
  result = *&v11;
  v7[2] = v11;
  return result;
}

uint64_t closure #1 in closure #1 in EnergyPickerWatch.body.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v33 = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI4FontV6DesignOSgMd);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v30 - v6;
  v32 = type metadata accessor for Font.TextStyle();
  v8 = *(v32 - 8);
  MEMORY[0x28223BE20](v32);
  v10 = &v30 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyACyACyAA6PickerVyAA9EmptyViewVSiAA7ForEachVySaySiGSiAA0G0PAAE3tag_15includeOptionalQrqd___SbtSHRd__lFQOyAA4TextV_SiQo_GGAA12_FrameLayoutVGAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGAA016_ForegroundStyleS0VyAA09TintShapeV0VGGMd);
  MEMORY[0x28223BE20](v31);
  v12 = &v30 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v15 = &v30 - v14;
  v16 = type metadata accessor for EnergyPickerViewModel();
  v17 = lazy protocol witness table accessor for type EnergyPickerViewModel and conformance EnergyPickerViewModel();
  MEMORY[0x20F308920](a1, a2, v16, v17);
  swift_getKeyPath();
  ObservedObject.Wrapper.subscript.getter();

  v34 = a1;
  v35 = a2;
  v36 = v38;
  v37 = v39;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI7ForEachVySaySiGSiAA4ViewPAAE3tag_15includeOptionalQrqd___SbtSHRd__lFQOyAA4TextV_SiQo_GMd);
  lazy protocol witness table accessor for type ForEach<[Int], Int, <<opaque return type of View.tag<A>(_:includeOptional:)>>.0> and conformance <> ForEach<A, B, C>();
  Picker.init(selection:label:content:)();
  if (one-time initialization token for singlePickerHeight != -1)
  {
    swift_once();
  }

  static Alignment.center.getter();
  _FrameLayout.init(width:height:alignment:)();
  v18 = &v15[*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyAA6PickerVyAA9EmptyViewVSiAA7ForEachVySaySiGSiAA0G0PAAE3tag_15includeOptionalQrqd___SbtSHRd__lFQOyAA4TextV_SiQo_GGAA12_FrameLayoutVGMd) + 36)];
  v19 = v39;
  *v18 = v38;
  *(v18 + 1) = v19;
  *(v18 + 2) = v40;
  v20 = v32;
  (*(v8 + 104))(v10, *MEMORY[0x277CE0A80], v32);
  v21 = *MEMORY[0x277CE09A0];
  v22 = type metadata accessor for Font.Design();
  v23 = *(v22 - 8);
  (*(v23 + 104))(v7, v21, v22);
  (*(v23 + 56))(v7, 0, 1, v22);
  v24 = static Font.system(_:design:weight:)();
  outlined destroy of Font.Design?(v7);
  (*(v8 + 8))(v10, v20);
  KeyPath = swift_getKeyPath();
  v26 = &v15[*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyACyAA6PickerVyAA9EmptyViewVSiAA7ForEachVySaySiGSiAA0G0PAAE3tag_15includeOptionalQrqd___SbtSHRd__lFQOyAA4TextV_SiQo_GGAA12_FrameLayoutVGAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGMd) + 36)];
  *v26 = KeyPath;
  v26[1] = v24;
  TintShapeStyle.init()();
  sub_20C69902C(v15, v12);
  v27 = v33;
  sub_20C69902C(v12, v33);
  v28 = v27 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyACyACyAA6PickerVyAA9EmptyViewVSiAA7ForEachVySaySiGSiAA0G0PAAE3tag_15includeOptionalQrqd___SbtSHRd__lFQOyAA4TextV_SiQo_GGAA12_FrameLayoutVGAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGAA016_ForegroundStyleS0VyAA09TintShapeV0VGG_AA6SpacerVtMd) + 48);
  sub_20C69909C(v15);
  *v28 = 0;
  *(v28 + 8) = 1;
  return sub_20C69909C(v12);
}

uint64_t closure #1 in closure #1 in closure #1 in EnergyPickerWatch.body.getter()
{
  swift_getKeyPath();

  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySiGMd);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI4ViewPAAE3tag_15includeOptionalQrqd___SbtSHRd__lFQOyAA4TextV_SiQo_Md);
  lazy protocol witness table accessor for type GeometryReader<ModifiedContent<VStack<TupleView<(ModifiedContent<ModifiedContent<ModifiedContent<Picker<EmptyView, Int, ForEach<[Int], Int, <<opaque return type of View.tag<A>(_:includeOptional:)>>.0>>, _FrameLayout>, _EnvironmentKeyWritingModifier<Font?>>, _ForegroundStyleModifier<TintShapeStyle>>, Spacer)>>, _FrameLayout>> and conformance GeometryReader<A>(&lazy protocol witness table cache variable for type [Int] and conformance [A], &_sSaySiGMd);
  swift_getOpaqueTypeConformance2();
  return ForEach<>.init(_:id:content:)();
}

uint64_t closure #1 in closure #1 in closure #1 in closure #1 in EnergyPickerWatch.body.getter@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  if (one-time initialization token for pickerFormatter != -1)
  {
    swift_once();
  }

  v4 = static PickerFormatters.pickerFormatter;
  v5 = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithInteger_];
  v6 = [v4 stringFromNumber_];

  if (v6)
  {
    static String._unconditionallyBridgeFromObjectiveC(_:)();
  }

  lazy protocol witness table accessor for type String and conformance String();
  result = Text.init<A>(_:)();
  *a2 = result;
  *(a2 + 8) = v8;
  *(a2 + 16) = v9 & 1;
  *(a2 + 24) = v10;
  *(a2 + 32) = v3;
  *(a2 + 40) = 1;
  return result;
}

uint64_t protocol witness for View.body.getter in conformance EnergyPickerWatch@<X0>(void *a1@<X8>)
{
  v4 = *v1;
  v3 = v1[1];
  v5 = swift_allocObject();
  *(v5 + 16) = v4;
  *(v5 + 24) = v3;
  *a1 = closure #1 in EnergyPickerWatch.body.getterpartial apply;
  a1[1] = v5;
}

uint64_t getEnumTagSinglePayload for EnergyPickerWatch(uint64_t a1, int a2)
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

uint64_t storeEnumTagSinglePayload for EnergyPickerWatch(uint64_t result, int a2, int a3)
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

uint64_t lazy protocol witness table accessor for type GeometryReader<ModifiedContent<VStack<TupleView<(ModifiedContent<ModifiedContent<ModifiedContent<Picker<EmptyView, Int, ForEach<[Int], Int, <<opaque return type of View.tag<A>(_:includeOptional:)>>.0>>, _FrameLayout>, _EnvironmentKeyWritingModifier<Font?>>, _ForegroundStyleModifier<TintShapeStyle>>, Spacer)>>, _FrameLayout>> and conformance GeometryReader<A>(unint64_t *a1, uint64_t *a2)
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

uint64_t getEnumTagSinglePayload for WorkoutConfigurationViewerState(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for WorkoutConfigurationViewerState(uint64_t result, unsigned int a2, unsigned int a3)
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

unint64_t lazy protocol witness table accessor for type WorkoutConfigurationViewerState and conformance WorkoutConfigurationViewerState()
{
  result = lazy protocol witness table cache variable for type WorkoutConfigurationViewerState and conformance WorkoutConfigurationViewerState;
  if (!lazy protocol witness table cache variable for type WorkoutConfigurationViewerState and conformance WorkoutConfigurationViewerState)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type WorkoutConfigurationViewerState and conformance WorkoutConfigurationViewerState);
  }

  return result;
}

uint64_t WorkoutConfigurationViewerState.currentState(workoutConfiguration:formattingManager:)(uint64_t a1, uint64_t a2, unsigned __int8 a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11WorkoutCore28FitnessUILocalizationFeatureOSgMd);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v30 - v5;
  if (a3 <= 2u)
  {
    if (a3)
    {
      if (a3 == 1)
      {
        if (one-time initialization token for WorkoutUIBundle != -1)
        {
          swift_once();
        }

        swift_beginAccess();
        v8 = WorkoutUIBundle.super.isa;
        v29 = 0xE000000000000000;
        v9 = 0x617A696C61636F4CLL;
        v10 = 0xEB00000000656C62;
        v11 = 0xD00000000000001BLL;
        v12 = 0x800000020CBA4270;
      }

      else
      {
        if (one-time initialization token for WorkoutUIBundle != -1)
        {
          swift_once();
        }

        swift_beginAccess();
        v8 = WorkoutUIBundle.super.isa;
        v29 = 0xE000000000000000;
        v9 = 0x617A696C61636F4CLL;
        v10 = 0xEB00000000656C62;
        v11 = 0xD00000000000001CLL;
        v12 = 0x800000020CBA4250;
      }

      goto LABEL_21;
    }

LABEL_10:
    v13 = WorkoutConfiguration.titleForPreview(_:)();
    if (v14)
    {
      v15 = v13;
      v16 = v14;
    }

    else
    {
      v21 = type metadata accessor for FitnessUILocalizationFeature();
      (*(*(v21 - 8) + 56))(v6, 1, 1, v21);
      v15 = String.fitnessUILocalizedString(feature:)();
      v16 = v22;
      outlined destroy of FitnessUILocalizationFeature?(v6);
    }

    if (one-time initialization token for WorkoutUIBundle != -1)
    {
      swift_once();
    }

    swift_beginAccess();
    v23 = WorkoutUIBundle.super.isa;
    v31._object = 0xE000000000000000;
    v24.value._countAndFlagsBits = 0x617A696C61636F4CLL;
    v24.value._object = 0xEB00000000656C62;
    v25._countAndFlagsBits = 0xD000000000000018;
    v25._object = 0x800000020CBA42B0;
    v26._countAndFlagsBits = 0;
    v26._object = 0xE000000000000000;
    v31._countAndFlagsBits = 0;
    NSLocalizedString(_:tableName:bundle:value:comment:)(v25, v24, v23, v26, v31);

    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys7CVarArg_pGMd);
    v27 = swift_allocObject();
    *(v27 + 16) = xmmword_20CB5DA70;
    *(v27 + 56) = MEMORY[0x277D837D0];
    *(v27 + 64) = lazy protocol witness table accessor for type String and conformance String();
    *(v27 + 32) = v15;
    *(v27 + 40) = v16;
    countAndFlagsBits = String.init(format:_:)();

    return countAndFlagsBits;
  }

  if (a3 <= 4u)
  {
    if (a3 == 3)
    {
      v7 = "WORKOUT_SAVING_FAILED";
LABEL_18:
      v18 = v7 - 32;
      if (one-time initialization token for WorkoutUIBundle != -1)
      {
        swift_once();
      }

      swift_beginAccess();
      v8 = WorkoutUIBundle.super.isa;
      v29 = 0xE000000000000000;
      v9 = 0x617A696C61636F4CLL;
      v10 = 0xEB00000000656C62;
      v12 = v18 | 0x8000000000000000;
      v11 = 0xD000000000000015;
LABEL_21:
      v19._countAndFlagsBits = 0;
      v19._object = 0xE000000000000000;
      v20 = 0;
      countAndFlagsBits = NSLocalizedString(_:tableName:bundle:value:comment:)(*&v11, *&v9, v8, v19, *(&v29 - 1))._countAndFlagsBits;

      return countAndFlagsBits;
    }

    goto LABEL_10;
  }

  if (a3 != 5)
  {
    v7 = "WORKOUT_LAUNCH_FAILED";
    goto LABEL_18;
  }

  return 0;
}

uint64_t WorkoutConfigurationViewerState.footerText.getter(char a1)
{
  if (a1 == 4)
  {
    v11 = [objc_opt_self() currentDevice];
    v12 = [v11 userInterfaceIdiom];

    if (v12)
    {
      if (one-time initialization token for WorkoutUIBundle != -1)
      {
        swift_once();
      }

      swift_beginAccess();
      v13 = WorkoutUIBundle.super.isa;
      v20 = 0xE000000000000000;
      v14 = 0xD000000000000021;
      v15 = 0x800000020CBA41A0;
    }

    else
    {
      if (one-time initialization token for WorkoutUIBundle != -1)
      {
        swift_once();
      }

      swift_beginAccess();
      v13 = WorkoutUIBundle.super.isa;
      v20 = 0xE000000000000000;
      v15 = 0x800000020CBA41D0;
      v14 = 0xD000000000000017;
    }

    v17.value._countAndFlagsBits = 0x617A696C61636F4CLL;
    v17.value._object = 0xEB00000000656C62;
    v18._countAndFlagsBits = 0;
    v18._object = 0xE000000000000000;
    v19 = 0;
    countAndFlagsBits = NSLocalizedString(_:tableName:bundle:value:comment:)(*&v14, v17, v13, v18, *(&v20 - 1))._countAndFlagsBits;
  }

  else
  {
    if (a1 != 1)
    {
      return 0;
    }

    v1 = specialized static PairedDeviceUtilities.activePairedDeviceName.getter();
    if (!v2)
    {
      return 0;
    }

    v3 = v1;
    v4 = v2;
    if (one-time initialization token for WorkoutUIBundle != -1)
    {
      swift_once();
    }

    swift_beginAccess();
    v5 = WorkoutUIBundle.super.isa;
    v21._object = 0xE000000000000000;
    v6.value._countAndFlagsBits = 0x617A696C61636F4CLL;
    v6.value._object = 0xEB00000000656C62;
    v7._countAndFlagsBits = 0xD00000000000001BLL;
    v7._object = 0x800000020CBA41F0;
    v8._countAndFlagsBits = 0;
    v8._object = 0xE000000000000000;
    v21._countAndFlagsBits = 0;
    NSLocalizedString(_:tableName:bundle:value:comment:)(v7, v6, v5, v8, v21);

    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys7CVarArg_pGMd);
    v9 = swift_allocObject();
    *(v9 + 16) = xmmword_20CB5DA70;
    *(v9 + 56) = MEMORY[0x277D837D0];
    *(v9 + 64) = lazy protocol witness table accessor for type String and conformance String();
    *(v9 + 32) = v3;
    *(v9 + 40) = v4;
    countAndFlagsBits = String.init(format:_:)();
  }

  return countAndFlagsBits;
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance WorkoutConfigurationViewerState()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  MEMORY[0x20F30CD90](v1);
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance WorkoutConfigurationViewerState()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  MEMORY[0x20F30CD90](v1);
  return Hasher._finalize()();
}

uint64_t WorkoutConfiguration.configurationPreviewDisplayName.getter()
{
  v0 = [objc_allocWithZone(MEMORY[0x277CCD4D8]) init];
  v1 = [objc_allocWithZone(MEMORY[0x277D0A808]) initWithHealthStore_];
  v2 = [objc_allocWithZone(MEMORY[0x277D0A7E8]) initWithUnitManager_];
  if (v2)
  {
    v3 = v2;
    v4 = WorkoutConfiguration.displayDetail(_:)();
    if (!v5)
    {
      v4 = WorkoutConfiguration.displayName(formattingManager:)();
    }

    v6 = v4;

    return v6;
  }

  else
  {

    return 0;
  }
}

id WorkoutConfigurationImageGenerator.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id WorkoutConfigurationImageGenerator.init()()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for WorkoutConfigurationImageGenerator();
  return objc_msgSendSuper2(&v2, sel_init);
}

id WorkoutConfigurationImageGenerator.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for WorkoutConfigurationImageGenerator();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

id specialized static WorkoutConfigurationImageGenerator.createBlastDoorDataSource(from:)()
{
  v0 = type metadata accessor for ConfigurationType();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v22 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for BlastDoorConfigurationValidator();
  swift_allocObject();
  MEMORY[0x20F306960]();
  type metadata accessor for WorkoutConfiguration();
  type metadata accessor for Occurrence();
  v4 = MEMORY[0x20F304B60](0);
  v5 = static WorkoutConfiguration.importFromData(_:with:validator:)();

  v6 = dispatch thunk of WorkoutConfiguration.activityType.getter();
  v7 = [v6 effectiveTypeIdentifier];

  v8 = dispatch thunk of WorkoutConfiguration.activityType.getter();
  v9 = [v8 isIndoor];

  dispatch thunk of WorkoutConfiguration.type.getter();
  v10 = ConfigurationType.rawValue.getter();
  (*(v1 + 8))(v3, v0);
  type metadata accessor for GoalWorkoutConfiguration();
  if (swift_dynamicCastClass())
  {
    v11 = v5;
    v12 = GoalWorkoutConfiguration.goal.getter();
    v13 = [v12 goalTypeIdentifier];
  }

  else
  {
    v13 = 0;
  }

  v14 = WorkoutConfiguration.configurationPreviewDisplayName.getter();
  if (v15)
  {
    v16 = v14;
  }

  else
  {
    v16 = 0;
  }

  if (v15)
  {
    v17 = v15;
  }

  else
  {
    v17 = 0xE000000000000000;
  }

  v18 = objc_allocWithZone(WKUIBlastDoorDataSource);
  v19 = MEMORY[0x20F30BAD0](v16, v17);

  v20 = [v18 initWithActivityType:v7 isIndoor:v9 configurationType:v10 configurationName:v19 goalTypeIdentifier:v13];

  return v20;
}

uint64_t specialized static WorkoutConfigurationImageGenerator.createImage(from:)()
{
  type metadata accessor for BlastDoorConfigurationValidator();
  swift_allocObject();
  MEMORY[0x20F306960]();
  type metadata accessor for WorkoutConfiguration();
  type metadata accessor for Occurrence();
  v0 = MEMORY[0x20F304B60](0);
  v1 = static WorkoutConfiguration.importFromData(_:with:validator:)();

  v10[0] = dispatch thunk of WorkoutConfiguration.activityType.getter();
  v10[1] = v1;
  v10[2] = WorkoutConfiguration.configurationPreviewDisplayName.getter();
  v10[3] = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI13ImageRendererCy07WorkoutB00E26ConfigurationThumbnailViewVGMd);
  swift_allocObject();

  v3 = v10[0];
  v4 = v1;
  MEMORY[0x20F3086C0](v10);
  v5 = MEMORY[0x20F3086A0]();
  if (v5 && (v6 = v5, v7 = UIImagePNGRepresentation(v5), v6, v7))
  {
    v8 = static Data._unconditionallyBridgeFromObjectiveC(_:)();

    return v8;
  }

  else
  {

    return 0;
  }
}

uint64_t specialized static WorkoutConfigurationImageGenerator.createImage(activityType:isIndoor:configurationType:configurationName:goalTypeIdentifier:scale:)(uint64_t a1, char a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v56 = a4;
  v57 = a5;
  v10 = type metadata accessor for Logger();
  v58 = *(v10 - 8);
  v59 = v10;
  MEMORY[0x28223BE20](v10);
  v12 = &v54 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v54 = &v54 - v14;
  v15 = type metadata accessor for UUID();
  MEMORY[0x28223BE20](v15 - 8);
  v55 = &v54 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11WorkoutCore17ConfigurationTypeOSgMd);
  MEMORY[0x28223BE20](v17 - 8);
  v19 = &v54 - v18;
  v20 = type metadata accessor for ConfigurationType();
  v21 = *(v20 - 8);
  MEMORY[0x28223BE20](v20);
  v23 = &v54 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v24);
  v26 = &v54 - v25;
  v27 = [objc_allocWithZone(MEMORY[0x277D0A810]) initWithActivityTypeIdentifier:a1 isIndoor:a2 & 1];
  v28 = [objc_allocWithZone(MEMORY[0x277D0A838]) initWithGoalTypeIdentifier:a6 value:0];
  ConfigurationType.init(rawValue:)();
  if ((*(v21 + 48))(v19, 1, v20) == 1)
  {
    outlined destroy of ConfigurationType?(v19);
    static WOLog.core.getter();
    v29 = Logger.logObject.getter();
    v30 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v29, v30))
    {
      v31 = swift_slowAlloc();
      *v31 = 134217984;
      *(v31 + 4) = a3;
      _os_log_impl(&dword_20C66F000, v29, v30, "Unable to generate workout configuration from %ld, returning nil", v31, 0xCu);
      MEMORY[0x20F30E080](v31, -1, -1);
      v32 = v27;
    }

    else
    {
      v32 = v29;
      v29 = v27;
    }

    (*(v58 + 8))(v12, v59);
    return 0;
  }

  (*(v21 + 32))(v26, v19, v20);
  (*(v21 + 16))(v23, v26, v20);
  v33 = (*(v21 + 88))(v23, v20);
  if (v33 == *MEMORY[0x277D7E0F8])
  {
    type metadata accessor for GoalWorkoutConfiguration();
    v34 = v27;
    v35 = v28;
    UUID.init()();
    type metadata accessor for Occurrence();
    MEMORY[0x20F304B60](0);
    v36 = GoalWorkoutConfiguration.__allocating_init(_:goal:uuid:occurrence:)();
  }

  else if (v33 == *MEMORY[0x277D7E110])
  {

    UUID.init()();
    v38 = objc_allocWithZone(type metadata accessor for IntervalWorkout());
    IntervalWorkout.init(_:uuid:warmupStep:cooldownStep:)();
    type metadata accessor for IntervalWorkoutConfiguration();
    v39 = v27;
    UUID.init()();
    type metadata accessor for Occurrence();
    MEMORY[0x20F304B60](0);
    v36 = IntervalWorkoutConfiguration.__allocating_init(_:intervalWorkout:uuid:occurrence:)();
  }

  else
  {
    if (v33 == *MEMORY[0x277D7E100])
    {
      v46 = v54;
      static WOLog.core.getter();
      v47 = Logger.logObject.getter();
      v48 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v47, v48))
      {
        v49 = swift_slowAlloc();
        *v49 = 0;
        _os_log_impl(&dword_20C66F000, v47, v48, "Error: RaceWorkoutConfiguration is not shareable", v49, 2u);
        MEMORY[0x20F30E080](v49, -1, -1);
      }

      (*(v58 + 8))(v46, v59);
      (*(v21 + 8))(v26, v20);
      return 0;
    }

    if (v33 == *MEMORY[0x277D7E108])
    {
      v59 = type metadata accessor for PacerWorkoutConfiguration();
      type metadata accessor for NLSessionActivityGoal();
      v50 = v27;
      static NLSessionActivityGoal.makeDistanceGoal(miles:)();
      static NLSessionActivityGoal.makeTimeGoal(minutes:)();
      UUID.init()();
      type metadata accessor for Occurrence();
      MEMORY[0x20F304B60](0);
      v36 = PacerWorkoutConfiguration.__allocating_init(_:distanceGoal:timeGoal:uuid:paceAlertEnabled:occurrence:)();
    }

    else
    {
      if (v33 != *MEMORY[0x277D7E0F0])
      {
        v53 = *(v21 + 8);
        v53(v26, v20);

        v53(v23, v20);
        return 0;
      }

      type metadata accessor for MultiSportWorkoutConfiguration();
      v51 = v55;
      UUID.init()();
      type metadata accessor for Occurrence();
      v52 = MEMORY[0x20F304B60](0);
      v36 = MEMORY[0x20F303440](MEMORY[0x277D84F90], v51, v52);
    }
  }

  v40 = v36;
  v60[0] = v27;
  v60[1] = v36;
  v60[2] = v56;
  v60[3] = v57;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI13ImageRendererCy07WorkoutB00E26ConfigurationThumbnailViewVGMd);
  swift_allocObject();
  swift_bridgeObjectRetain_n();
  v41 = v40;
  v42 = v27;
  v43 = v41;
  MEMORY[0x20F3086C0](v60);
  v44 = ImageRenderer.scale.setter();
  v45 = MEMORY[0x20F3086A0](v44);

  (*(v21 + 8))(v26, v20);
  return v45;
}

uint64_t specialized static WorkoutConfigurationImageGenerator.createImage(from:scale:)(void *a1)
{
  v2 = [a1 activityType];
  v3 = [a1 isIndoor];
  v4 = [a1 configurationType];
  v5 = [a1 configurationName];
  v6 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v8 = v7;

  v9 = specialized static WorkoutConfigurationImageGenerator.createImage(activityType:isIndoor:configurationType:configurationName:goalTypeIdentifier:scale:)(v2, v3, v4, v6, v8, [a1 goalTypeIdentifier]);

  if (!v9)
  {
    return 0;
  }

  v10 = UIImagePNGRepresentation(v9);

  if (!v10)
  {
    return 0;
  }

  v11 = static Data._unconditionallyBridgeFromObjectiveC(_:)();

  return v11;
}

uint64_t outlined destroy of ConfigurationType?(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11WorkoutCore17ConfigurationTypeOSgMd);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void type metadata completion function for MetricHeadingView()
{
  swift_checkMetadataState();
  if (v0 <= 0x3F)
  {
    type metadata accessor for Environment<WorkoutViewStyle>();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t getEnumTagSinglePayload for MetricHeadingView(unsigned __int8 *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 84);
  v6 = *(v4 + 64);
  if (v5 <= 0xFE)
  {
    v7 = 254;
  }

  else
  {
    v7 = *(v4 + 84);
  }

  if (!a2)
  {
    return 0;
  }

  if (v7 >= a2)
  {
    goto LABEL_28;
  }

  v8 = ((((v6 + 7) & 0xFFFFFFFFFFFFFFF8) + 63) & 0xFFFFFFFFFFFFFFF8) + 9;
  v9 = (a2 - v7 + 255) >> 8;
  if (v8 <= 3)
  {
    v10 = v9 + 1;
  }

  else
  {
    v10 = 2;
  }

  if (v10 >= 0x10000)
  {
    v11 = 4;
  }

  else
  {
    v11 = 2;
  }

  if (v10 < 0x100)
  {
    v11 = 1;
  }

  if (v10 >= 2)
  {
    v12 = v11;
  }

  else
  {
    v12 = 0;
  }

  if (v12 > 1)
  {
    if (v12 == 2)
    {
      v13 = *&a1[v8];
      if (*&a1[v8])
      {
        goto LABEL_24;
      }
    }

    else
    {
      v13 = *&a1[v8];
      if (v13)
      {
        goto LABEL_24;
      }
    }

LABEL_28:
    if (v5 >= 0xFE)
    {
      return (*(v4 + 48))();
    }

    v17 = *((((&a1[v6 + 7] & 0xFFFFFFFFFFFFFFF8) + 63) & 0xFFFFFFFFFFFFFFF8) + 8);
    if (v17 > 1)
    {
      return (v17 ^ 0xFF) + 1;
    }

    else
    {
      return 0;
    }
  }

  if (!v12)
  {
    goto LABEL_28;
  }

  v13 = a1[v8];
  if (!a1[v8])
  {
    goto LABEL_28;
  }

LABEL_24:
  v15 = (v13 - 1) << (8 * v8);
  if (v8 <= 3)
  {
    v16 = *a1;
  }

  else
  {
    v15 = 0;
    v16 = *a1;
  }

  return v7 + (v16 | v15) + 1;
}

void storeEnumTagSinglePayload for MetricHeadingView(_BYTE *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v6 = *(*(a4 + 16) - 8);
  v7 = *(v6 + 84);
  if (v7 <= 0xFE)
  {
    v8 = 254;
  }

  else
  {
    v8 = *(v6 + 84);
  }

  v9 = *(*(*(a4 + 16) - 8) + 64);
  v10 = ((((v9 + 7) & 0xFFFFFFFFFFFFFFF8) + 63) & 0xFFFFFFFFFFFFFFF8) + 9;
  if (v8 >= a3)
  {
    v14 = 0;
    if (v8 >= a2)
    {
      goto LABEL_17;
    }
  }

  else
  {
    v11 = (a3 - v8 + 255) >> 8;
    if (v10 <= 3)
    {
      v12 = v11 + 1;
    }

    else
    {
      v12 = 2;
    }

    if (v12 >= 0x10000)
    {
      v13 = 4;
    }

    else
    {
      v13 = 2;
    }

    if (v12 < 0x100)
    {
      v13 = 1;
    }

    if (v12 >= 2)
    {
      v14 = v13;
    }

    else
    {
      v14 = 0;
    }

    if (v8 >= a2)
    {
LABEL_17:
      if (v14 > 1)
      {
        if (v14 != 2)
        {
          *&a1[v10] = 0;
          if (!a2)
          {
            return;
          }

          goto LABEL_32;
        }

        *&a1[v10] = 0;
      }

      else if (v14)
      {
        a1[v10] = 0;
        if (!a2)
        {
          return;
        }

        goto LABEL_32;
      }

      if (!a2)
      {
        return;
      }

LABEL_32:
      if (v7 < 0xFE)
      {
        v18 = ((&a1[v9 + 7] & 0xFFFFFFFFFFFFFFF8) + 63) & 0xFFFFFFFFFFFFFFF8;
        if (a2 > 0xFE)
        {
          *(v18 + 8) = 0;
          *v18 = a2 - 255;
        }

        else
        {
          *(v18 + 8) = -a2;
        }
      }

      else
      {
        v17 = *(v6 + 56);

        v17();
      }

      return;
    }
  }

  v15 = ~v8 + a2;
  bzero(a1, ((((v9 + 7) & 0xFFFFFFFFFFFFFFF8) + 63) & 0xFFFFFFFFFFFFFFF8) + 9);
  if (v10 <= 3)
  {
    v16 = (v15 >> 8) + 1;
  }

  else
  {
    v16 = 1;
  }

  if (v10 <= 3)
  {
    *a1 = v15;
    if (v14 > 1)
    {
LABEL_27:
      if (v14 == 2)
      {
        *&a1[v10] = v16;
      }

      else
      {
        *&a1[v10] = v16;
      }

      return;
    }
  }

  else
  {
    *a1 = v15;
    if (v14 > 1)
    {
      goto LABEL_27;
    }
  }

  if (v14)
  {
    a1[v10] = v16;
  }
}

void MetricHeadingView.workoutViewStyle.getter(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  v5 = type metadata accessor for EnvironmentValues();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v12 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = v2 + *(a1 + 40);
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

uint64_t MetricHeadingView.body.getter(uint64_t a1)
{
  v3 = *(a1 + 16);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI30_EnvironmentKeyWritingModifierVyAA4FontVSgGMd);
  type metadata accessor for ModifiedContent();
  type metadata accessor for ModifiedContent();
  type metadata accessor for ModifiedContent();
  type metadata accessor for ModifiedContent();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI6SpacerVSgMd);
  swift_getTupleTypeMetadata2();
  type metadata accessor for TupleView();
  swift_getWitnessTable();
  v4 = type metadata accessor for HStack();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v15[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v8);
  v10 = &v15[-v9];
  v11 = *(a1 + 24);
  v16 = v3;
  v17 = v11;
  v18 = v1;
  static VerticalAlignment.center.getter();
  HStack.init(alignment:spacing:content:)();
  WitnessTable = swift_getWitnessTable();
  static ViewBuilder.buildExpression<A>(_:)(v7, v4, WitnessTable);
  v13 = *(v5 + 8);
  v13(v7, v4);
  static ViewBuilder.buildBlock<A>(_:)(v10, v4, WitnessTable);
  return (v13)(v10, v4);
}

uint64_t closure #1 in MetricHeadingView.body.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v45 = a3;
  v53 = a4;
  v6 = type metadata accessor for Font.PrivateDesign();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = v40 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI30_EnvironmentKeyWritingModifierVyAA4FontVSgGMd);
  v40[0] = a2;
  v10 = type metadata accessor for ModifiedContent();
  v48 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v12 = v40 - v11;
  v44 = type metadata accessor for ModifiedContent();
  v49 = *(v44 - 8);
  MEMORY[0x28223BE20](v44);
  v41 = v40 - v13;
  v47 = type metadata accessor for ModifiedContent();
  v50 = *(v47 - 8);
  MEMORY[0x28223BE20](v47);
  v42 = v40 - v14;
  v15 = type metadata accessor for ModifiedContent();
  v51 = *(v15 - 8);
  MEMORY[0x28223BE20](v15);
  v52 = v40 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v43 = v40 - v18;
  MEMORY[0x28223BE20](v19);
  v46 = v40 - v20;
  static Font.Weight.medium.getter();
  static Font.PrivateDesign.compact.getter();
  static Font.system(size:weight:design:)();
  (*(v7 + 8))(v9, v6);
  v21 = v45;
  v40[1] = a1;
  View.font(_:)();

  static Edge.Set.top.getter();
  FIUICurrentLanguageRequiresTallScript();
  v22 = lazy protocol witness table accessor for type _EnvironmentKeyWritingModifier<Font?> and conformance _EnvironmentKeyWritingModifier<A>();
  v60[8] = v21;
  v60[9] = v22;
  WitnessTable = swift_getWitnessTable();
  v24 = v41;
  View.padding(_:_:)();
  (*(v48 + 8))(v12, v10);
  static Edge.Set.bottom.getter();
  v25 = type metadata accessor for MetricHeadingView();
  v26 = MEMORY[0x277CDF918];
  v60[6] = WitnessTable;
  v60[7] = MEMORY[0x277CDF918];
  v27 = v44;
  v28 = swift_getWitnessTable();
  v29 = v42;
  View.padding(_:_:)();
  (*(v49 + 8))(v24, v27);
  static Edge.Set.leading.getter();
  v60[4] = v28;
  v60[5] = v26;
  v30 = v47;
  v31 = swift_getWitnessTable();
  v32 = v43;
  View.padding(_:_:)();
  (*(v50 + 8))(v29, v30);
  v60[2] = v31;
  v60[3] = v26;
  v33 = swift_getWitnessTable();
  v34 = v46;
  static ViewBuilder.buildExpression<A>(_:)(v32, v15, v33);
  v35 = v51;
  v36 = *(v51 + 8);
  v36(v32, v15);
  MetricHeadingView.workoutViewStyle.getter(v25, v60);
  LOBYTE(v30) = LOBYTE(v60[0]) == 11;
  LOBYTE(v24) = LOBYTE(v60[0]) != 11;
  v37 = *(v35 + 16);
  v38 = v52;
  v37(v52, v34, v15);
  v57 = 0;
  v58 = v24;
  v59 = v30;
  v60[0] = v38;
  v60[1] = &v57;
  v56[0] = v15;
  v56[1] = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI6SpacerVSgMd);
  v54 = v33;
  v55 = lazy protocol witness table accessor for type Spacer? and conformance <A> A?();
  static ViewBuilder.buildBlock<each A>(_:)(v60, 2uLL, v56);
  v36(v34, v15);
  return (v36)(v38, v15);
}

unint64_t lazy protocol witness table accessor for type Spacer? and conformance <A> A?()
{
  result = lazy protocol witness table cache variable for type Spacer? and conformance <A> A?;
  if (!lazy protocol witness table cache variable for type Spacer? and conformance <A> A?)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI6SpacerVSgMd);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Spacer? and conformance <A> A?);
  }

  return result;
}

uint64_t TransitionThinkingView.startDate.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for TransitionThinkingView() + 20);
  v4 = type metadata accessor for Date();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t type metadata accessor for TransitionThinkingView()
{
  result = type metadata singleton initialization cache for TransitionThinkingView;
  if (!type metadata singleton initialization cache for TransitionThinkingView)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t TransitionThinkingView.startDate.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for TransitionThinkingView() + 20);
  v4 = type metadata accessor for Date();
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t TransitionThinkingView.animating.setter(char a1)
{
  result = type metadata accessor for TransitionThinkingView();
  *(v1 + *(result + 24)) = a1;
  return result;
}

uint64_t TransitionThinkingView.body.getter@<X0>(uint64_t a1@<X8>)
{
  v37 = a1;
  v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI19_ConditionalContentV7StorageOyAA12TimelineViewVyAA08PeriodicF8ScheduleVAA08ModifiedD0Vy07WorkoutB0013TransitionDotG0VAA15_RotationEffectVGGAN_GMd);
  MEMORY[0x28223BE20](v36);
  v3 = &v30 - v2;
  v4 = type metadata accessor for TransitionThinkingView();
  v31 = *(v4 - 1);
  v5 = *(v31 + 64);
  MEMORY[0x28223BE20](v4);
  v6 = &v30 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for Date();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v30 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for PeriodicTimelineSchedule();
  v33 = *(v11 - 8);
  v34 = v11;
  MEMORY[0x28223BE20](v11);
  v32 = &v30 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v15 = &v30 - v14;
  v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI12TimelineViewVyAA08PeriodicC8ScheduleVAA15ModifiedContentVy07WorkoutB0013TransitionDotD0VAA15_RotationEffectVGGMd);
  MEMORY[0x28223BE20](v35);
  v18 = &v30 - v17;
  if (v1[v4[6]] == 1)
  {
    v19 = v7;
    v20 = v16;
    (*(v8 + 16))(v10, &v1[v4[5]], v19);
    PeriodicTimelineSchedule.init(from:by:)();
    outlined init with copy of TransitionThinkingView(v1, &v30 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
    v21 = (*(v31 + 80) + 16) & ~*(v31 + 80);
    v22 = swift_allocObject();
    outlined init with take of TransitionThinkingView(v6, v22 + v21);
    v23 = v33;
    v24 = v34;
    (*(v33 + 16))(v32, v15, v34);
    v25 = swift_allocObject();
    *(v25 + 16) = partial apply for closure #1 in TransitionThinkingView.body.getter;
    *(v25 + 24) = v22;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVy07WorkoutB017TransitionDotViewVAA15_RotationEffectVGMd);
    lazy protocol witness table accessor for type PeriodicTimelineSchedule and conformance PeriodicTimelineSchedule();
    lazy protocol witness table accessor for type ModifiedContent<TransitionDotView, _RotationEffect> and conformance <> ModifiedContent<A, B>();
    TimelineView<>.init(_:content:)();
    (*(v23 + 8))(v15, v24);
    v26 = v35;
    (*(v20 + 16))(v3, v18, v35);
    swift_storeEnumTagMultiPayload();
    lazy protocol witness table accessor for type TimelineView<PeriodicTimelineSchedule, ModifiedContent<TransitionDotView, _RotationEffect>> and conformance <> TimelineView<A, B>();
    lazy protocol witness table accessor for type TransitionDotView and conformance TransitionDotView();
    _ConditionalContent<>.init(storage:)();
    return (*(v20 + 8))(v18, v26);
  }

  else
  {
    v28 = *&v1[v4[7]];
    v29 = *v1;
    *v3 = swift_getKeyPath();
    v3[8] = 0;
    *(v3 + 2) = v28;
    *(v3 + 3) = v29;
    swift_storeEnumTagMultiPayload();
    lazy protocol witness table accessor for type TimelineView<PeriodicTimelineSchedule, ModifiedContent<TransitionDotView, _RotationEffect>> and conformance <> TimelineView<A, B>();
    lazy protocol witness table accessor for type TransitionDotView and conformance TransitionDotView();
    return _ConditionalContent<>.init(storage:)();
  }
}

uint64_t closure #1 in TransitionThinkingView.body.getter@<X0>(uint64_t *a1@<X1>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for Date();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v18 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *(a1 + *(type metadata accessor for TransitionThinkingView() + 28));
  v9 = *a1;
  KeyPath = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI12TimelineViewV7ContextVyAA011EveryMinuteC8ScheduleVs5NeverO_GMd);
  TimelineView.Context.date.getter();
  Date.timeIntervalSinceReferenceDate.getter();
  v12 = v11;
  Date.timeIntervalSinceReferenceDate.getter();
  v14 = floor((v12 - v13 - trunc(v12 - v13)) / (1.0 / v8));
  (*(v5 + 8))(v7, v4);
  result = static UnitPoint.center.getter();
  *a2 = KeyPath;
  *(a2 + 8) = 0;
  *(a2 + 16) = v8;
  *(a2 + 24) = v9;
  *(a2 + 32) = 360.0 / v8 * v14 * 0.0174532925;
  *(a2 + 40) = v16;
  *(a2 + 48) = v17;
  return result;
}

unint64_t lazy protocol witness table accessor for type TimelineView<PeriodicTimelineSchedule, ModifiedContent<TransitionDotView, _RotationEffect>> and conformance <> TimelineView<A, B>()
{
  result = lazy protocol witness table cache variable for type TimelineView<PeriodicTimelineSchedule, ModifiedContent<TransitionDotView, _RotationEffect>> and conformance <> TimelineView<A, B>;
  if (!lazy protocol witness table cache variable for type TimelineView<PeriodicTimelineSchedule, ModifiedContent<TransitionDotView, _RotationEffect>> and conformance <> TimelineView<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI12TimelineViewVyAA08PeriodicC8ScheduleVAA15ModifiedContentVy07WorkoutB0013TransitionDotD0VAA15_RotationEffectVGGMd);
    lazy protocol witness table accessor for type ModifiedContent<TransitionDotView, _RotationEffect> and conformance <> ModifiedContent<A, B>();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type TimelineView<PeriodicTimelineSchedule, ModifiedContent<TransitionDotView, _RotationEffect>> and conformance <> TimelineView<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<TransitionDotView, _RotationEffect> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<TransitionDotView, _RotationEffect> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<TransitionDotView, _RotationEffect> and conformance <> ModifiedContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVy07WorkoutB017TransitionDotViewVAA15_RotationEffectVGMd);
    lazy protocol witness table accessor for type TransitionDotView and conformance TransitionDotView();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<TransitionDotView, _RotationEffect> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type TransitionDotView and conformance TransitionDotView()
{
  result = lazy protocol witness table cache variable for type TransitionDotView and conformance TransitionDotView;
  if (!lazy protocol witness table cache variable for type TransitionDotView and conformance TransitionDotView)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type TransitionDotView and conformance TransitionDotView);
  }

  return result;
}

uint64_t outlined init with copy of TransitionThinkingView(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for TransitionThinkingView();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}