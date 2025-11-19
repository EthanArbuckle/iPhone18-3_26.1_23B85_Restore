id ReminderHaptic.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

uint64_t block_copy_helper_31(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t key path setter for TrainingLoadWorkoutsAddUpView.onNext : TrainingLoadWorkoutsAddUpView(uint64_t *a1, uint64_t (**a2)())
{
  v4 = *a1;
  v3 = a1[1];
  v5 = swift_allocObject();
  *(v5 + 16) = v4;
  *(v5 + 24) = v3;

  *a2 = _sytIegr_Ieg_TRTA_1;
  a2[1] = v5;
  return result;
}

uint64_t TrainingLoadWorkoutsAddUpView.onNext.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t TrainingLoadWorkoutsAddUpView.onNext.setter(uint64_t a1, uint64_t a2)
{

  *v2 = a1;
  v2[1] = a2;
  return result;
}

uint64_t TrainingLoadWorkoutsAddUpView.init(onNext:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  *a3 = result;
  a3[1] = a2;
  return result;
}

uint64_t TrainingLoadWorkoutsAddUpView.attributedString.getter@<X0>(uint64_t a1@<X8>)
{
  v103 = a1;
  Band = type metadata accessor for TrainingLoadBand();
  v86 = *(Band - 8);
  MEMORY[0x28223BE20](Band);
  v85 = v79 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v95 = type metadata accessor for Font.Leading();
  v90 = *(v95 - 8);
  MEMORY[0x28223BE20](v95);
  v89 = v79 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI4FontV6DesignOSgMd);
  MEMORY[0x28223BE20](v3 - 8);
  v87 = v79 - v4;
  v94 = type metadata accessor for Font.TextStyle();
  v96 = *(v94 - 8);
  MEMORY[0x28223BE20](v94);
  v84 = v79 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation6LocaleVSgMd);
  MEMORY[0x28223BE20](v6 - 8);
  v106 = v79 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSny10Foundation16AttributedStringV5IndexVGSgMd);
  MEMORY[0x28223BE20](v8 - 8);
  v92 = v79 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v101 = v79 - v11;
  v100 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSny10Foundation16AttributedStringV5IndexVGMd);
  v107 = *(v100 - 8);
  MEMORY[0x28223BE20](v100);
  v93 = v79 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v104 = v79 - v14;
  v15 = type metadata accessor for AttributeContainer();
  MEMORY[0x28223BE20](v15 - 8);
  v99 = v79 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v105 = type metadata accessor for AttributedString();
  v102 = *(v105 - 8);
  MEMORY[0x28223BE20](v105);
  v108 = v79 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (one-time initialization token for WorkoutUIBundle != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v18 = WorkoutUIBundle.super.isa;
  v111._object = 0xE000000000000000;
  v19._object = 0x800000020CBA0DB0;
  v19._countAndFlagsBits = 0xD00000000000003CLL;
  v20.value._countAndFlagsBits = 0x617A696C61636F4CLL;
  v20.value._object = 0xEB00000000656C62;
  v21._countAndFlagsBits = 0;
  v21._object = 0xE000000000000000;
  v111._countAndFlagsBits = 0;
  countAndFlagsBits = NSLocalizedString(_:tableName:bundle:value:comment:)(v19, v20, v18, v21, v111)._countAndFlagsBits;

  v22 = WorkoutUIBundle.super.isa;
  v112._object = 0xE000000000000000;
  v23._countAndFlagsBits = 0xD000000000000047;
  v23._object = 0x800000020CBA0DF0;
  v24.value._countAndFlagsBits = 0x617A696C61636F4CLL;
  v24.value._object = 0xEB00000000656C62;
  v25._countAndFlagsBits = 0;
  v25._object = 0xE000000000000000;
  v112._countAndFlagsBits = 0;
  v26 = NSLocalizedString(_:tableName:bundle:value:comment:)(v23, v24, v22, v25, v112);

  v27 = WorkoutUIBundle.super.isa;
  v113._object = 0xE000000000000000;
  v28._countAndFlagsBits = 0xD000000000000048;
  v28._object = 0x800000020CBA0E40;
  v29.value._countAndFlagsBits = 0x617A696C61636F4CLL;
  v29.value._object = 0xEB00000000656C62;
  v30._countAndFlagsBits = 0;
  v30._object = 0xE000000000000000;
  v113._countAndFlagsBits = 0;
  v31 = NSLocalizedString(_:tableName:bundle:value:comment:)(v28, v29, v27, v30, v113);

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys7CVarArg_pGMd);
  v32 = swift_allocObject();
  *(v32 + 16) = xmmword_20CB5DA80;
  v33 = MEMORY[0x277D837D0];
  *(v32 + 56) = MEMORY[0x277D837D0];
  v34 = lazy protocol witness table accessor for type String and conformance String();
  *(v32 + 32) = v26;
  *(v32 + 96) = v33;
  *(v32 + 104) = v34;
  *(v32 + 64) = v34;
  *(v32 + 72) = v31._countAndFlagsBits;
  v91 = v31._countAndFlagsBits;
  *(v32 + 80) = v31._object;

  object = v31._object;

  static String.localizedStringWithFormat(_:_:)();

  AttributeContainer.init()();
  AttributedString.init(_:attributes:)();
  v110 = v26;
  v35 = type metadata accessor for Locale();
  v36 = *(*(v35 - 8) + 56);
  v37 = v106;
  v36(v106, 1, 1, v35);
  lazy protocol witness table accessor for type TrainingLoadOnboardingCore and conformance TrainingLoadOnboardingCore(&lazy protocol witness table cache variable for type AttributedString and conformance AttributedString, MEMORY[0x277CC8C40]);
  lazy protocol witness table accessor for type String and conformance String();
  v38 = v101;
  v39 = v105;
  AttributedStringProtocol.range<A>(of:options:locale:)();
  outlined destroy of Locale?(v37, &_s10Foundation6LocaleVSgMd);

  v41 = v107 + 48;
  v40 = *(v107 + 48);
  v42 = v100;
  if (v40(v38, 1, v100) == 1)
  {

    v43 = v108;
  }

  else
  {
    outlined init with take of Range<AttributedString.Index>(v38, v104);
    v110._countAndFlagsBits = v91;
    v110._object = object;
    v107 = v41;
    v44 = v106;
    v36(v106, 1, 1, v35);
    v45 = v92;
    v43 = v108;
    AttributedStringProtocol.range<A>(of:options:locale:)();
    outlined destroy of Locale?(v44, &_s10Foundation6LocaleVSgMd);

    if (v40(v45, 1, v42) != 1)
    {
      outlined init with take of Range<AttributedString.Index>(v45, v93);
      LODWORD(v107) = *MEMORY[0x277CE0A68];
      v48 = v96;
      v49 = *(v96 + 104);
      v101 = (v96 + 104);
      v106 = v49;
      v50 = v84;
      v51 = v94;
      (v49)(v84);
      LODWORD(object) = *MEMORY[0x277CE09A0];
      v52 = object;
      v53 = type metadata accessor for Font.Design();
      v82 = v53;
      v54 = *(v53 - 8);
      v55 = *(v54 + 104);
      countAndFlagsBits = v54 + 104;
      v99 = v55;
      v56 = v87;
      (v55)(v87, v52, v53);
      v57 = *(v54 + 56);
      v91 = v54 + 56;
      v92 = v57;
      (v57)(v56, 0, 1, v53);
      static Font.system(_:design:weight:)();
      outlined destroy of Locale?(v56, &_s7SwiftUI4FontV6DesignOSgMd);
      v58 = *(v48 + 8);
      v96 = v48 + 8;
      v83 = v58;
      v58(v50, v51);
      v81 = *MEMORY[0x277CE0A10];
      v59 = v90;
      v60 = *(v90 + 104);
      v79[3] = v90 + 104;
      v80 = v60;
      v61 = v89;
      v62 = v95;
      v60(v89);
      Font.leading(_:)();

      v90 = *(v59 + 8);
      (v90)(v61, v62);
      static Font.Weight.semibold.getter();
      v63 = Font.weight(_:)();

      v79[1] = _s7SwiftUI6VStackVyAA9TupleViewVyAA06ScrollE0Vy07WorkoutB026TrainingLoadOnboardingCoreVG_AA6SpacerVtGGACyxGAA0E0AAWlTm_0(&lazy protocol witness table cache variable for type Range<AttributedString.Index> and conformance Range<A>, &_sSny10Foundation16AttributedStringV5IndexVGMd);
      v64 = AttributedString.subscript.modify();
      v109 = v63;
      v79[2] = lazy protocol witness table accessor for type AttributeScopes.SwiftUIAttributes.FontAttribute and conformance AttributeScopes.SwiftUIAttributes.FontAttribute();
      AttributedSubstring.subscript.setter();
      v64(&v110, 0);
      v65 = v86;
      v66 = v85;
      v67 = Band;
      (*(v86 + 104))(v85, *MEMORY[0x277D0FE78], Band);
      v68 = TrainingLoadBand.color.getter();
      (*(v65 + 8))(v66, v67);
      v69 = AttributedString.subscript.modify();
      v109 = v68;
      lazy protocol witness table accessor for type AttributeScopes.SwiftUIAttributes.ForegroundColorAttribute and conformance AttributeScopes.SwiftUIAttributes.ForegroundColorAttribute();
      AttributedSubstring.subscript.setter();
      v69(&v110, 0);
      v70 = v94;
      (v106)(v50, v107, v94);
      v71 = v82;
      (v99)(v56, object, v82);
      (v92)(v56, 0, 1, v71);
      static Font.system(_:design:weight:)();
      outlined destroy of Locale?(v56, &_s7SwiftUI4FontV6DesignOSgMd);
      v83(v50, v70);
      v72 = v95;
      v80(v61, v81, v95);
      Font.leading(_:)();

      (v90)(v61, v72);
      static Font.Weight.semibold.getter();
      v73 = Font.weight(_:)();

      v74 = v93;
      v75 = AttributedString.subscript.modify();
      v109 = v73;
      AttributedSubstring.subscript.setter();
      v75(&v110, 0);
      v43 = v108;
      v76 = static Color.primary.getter();
      v77 = AttributedString.subscript.modify();
      v109 = v76;
      AttributedSubstring.subscript.setter();
      v77(&v110, 0);
      v39 = v105;
      outlined destroy of Locale?(v74, &_sSny10Foundation16AttributedStringV5IndexVGMd);
      v47 = v104;
      v46 = &_sSny10Foundation16AttributedStringV5IndexVGMd;
      goto LABEL_9;
    }

    outlined destroy of Locale?(v104, &_sSny10Foundation16AttributedStringV5IndexVGMd);
    v38 = v45;
  }

  v46 = &_sSny10Foundation16AttributedStringV5IndexVGSgMd;
  v47 = v38;
LABEL_9:
  outlined destroy of Locale?(v47, v46);
  return (*(v102 + 32))(v103, v43, v39);
}

uint64_t TrainingLoadWorkoutsAddUpView.body.getter@<X0>(uint64_t a1@<X8>)
{
  v4 = *v1;
  v3 = v1[1];
  *a1 = static HorizontalAlignment.center.getter();
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI13_VariadicViewO4TreeVy_AA13_VStackLayoutVAA05TupleD0VyAA06ScrollD0Vy07WorkoutB026TrainingLoadOnboardingCoreVG_AA6SpacerVtGGMd);
  closure #1 in TrainingLoadWorkoutsAddUpView.body.getter(v4, v3, (a1 + *(v5 + 44)));
  v6 = static HorizontalAlignment.center.getter();
  if (one-time initialization token for WorkoutUIBundle != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v7 = WorkoutUIBundle.super.isa;
  v18._object = 0xE000000000000000;
  v8.value._countAndFlagsBits = 0x617A696C61636F4CLL;
  v8.value._object = 0xEB00000000656C62;
  v9._object = 0x800000020CB98270;
  v9._countAndFlagsBits = 0xD00000000000002FLL;
  v10._countAndFlagsBits = 0;
  v10._object = 0xE000000000000000;
  v18._countAndFlagsBits = 0;
  v11 = NSLocalizedString(_:tableName:bundle:value:comment:)(v9, v8, v7, v10, v18);

  v12 = swift_allocObject();
  *(v12 + 16) = v4;
  *(v12 + 24) = v3;

  v13 = VerticalEdge.rawValue.getter();
  v14 = MEMORY[0x20F309EB0]((2 * v13));
  v15 = static SafeAreaRegions.container.getter();
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyAA6VStackVyAA9TupleViewVyAA06ScrollG0Vy07WorkoutB026TrainingLoadOnboardingCoreVG_AA6SpacerVtGGAA06_InsetG8ModifierVyAJ0jkL6ButtonVGGMd);
  v17 = a1 + *(result + 36);
  *v17 = v11;
  *(v17 + 16) = partial apply for closure #1 in closure #2 in TrainingLoadWorkoutsAddUpView.body.getter;
  *(v17 + 24) = v12;
  *(v17 + 32) = v15;
  *(v17 + 40) = 0;
  *(v17 + 48) = 1;
  *(v17 + 49) = v14;
  *(v17 + 56) = v6;
  return result;
}

uint64_t closure #1 in TrainingLoadWorkoutsAddUpView.body.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI10ScrollViewVy07WorkoutB026TrainingLoadOnboardingCoreVGMd);
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v17[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v10);
  v12 = &v17[-v11];
  v18 = a1;
  v19 = a2;
  static Axis.Set.vertical.getter();
  type metadata accessor for TrainingLoadOnboardingCore();
  lazy protocol witness table accessor for type TrainingLoadOnboardingCore and conformance TrainingLoadOnboardingCore(&lazy protocol witness table cache variable for type TrainingLoadOnboardingCore and conformance TrainingLoadOnboardingCore, type metadata accessor for TrainingLoadOnboardingCore);
  ScrollView.init(_:showsIndicators:content:)();
  v13 = *(v7 + 16);
  v13(v9, v12, v6);
  v13(a3, v9, v6);
  v14 = &a3[*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI10ScrollViewVy07WorkoutB026TrainingLoadOnboardingCoreVG_AA6SpacerVtMd) + 48)];
  *v14 = 0;
  v14[8] = 1;
  v15 = *(v7 + 8);
  v15(v12, v6);
  return (v15)(v9, v6);
}

uint64_t closure #1 in closure #1 in TrainingLoadWorkoutsAddUpView.body.getter@<X0>(Swift::String *a1@<X8>)
{
  if (one-time initialization token for WorkoutUIBundle != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v2 = WorkoutUIBundle.super.isa;
  v9._object = 0xE000000000000000;
  v3.value._countAndFlagsBits = 0x617A696C61636F4CLL;
  v3.value._object = 0xEB00000000656C62;
  v4._countAndFlagsBits = 0xD00000000000003ALL;
  v4._object = 0x800000020CBA0D70;
  v5._countAndFlagsBits = 0;
  v5._object = 0xE000000000000000;
  v9._countAndFlagsBits = 0;
  v6 = NSLocalizedString(_:tableName:bundle:value:comment:)(v4, v3, v2, v5, v9);

  OnboardingCore = type metadata accessor for TrainingLoadOnboardingCore();
  result = TrainingLoadWorkoutsAddUpView.attributedString.getter(a1 + *(OnboardingCore + 24));
  a1->_countAndFlagsBits = 0xD00000000000002ALL;
  a1->_object = 0x800000020CBA0D40;
  a1[1] = v6;
  return result;
}

uint64_t protocol witness for View.body.getter in conformance TrainingLoadWorkoutsAddUpView@<X0>(uint64_t a1@<X8>)
{
  v4 = *v1;
  v3 = v1[1];
  *a1 = static HorizontalAlignment.center.getter();
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI13_VariadicViewO4TreeVy_AA13_VStackLayoutVAA05TupleD0VyAA06ScrollD0Vy07WorkoutB026TrainingLoadOnboardingCoreVG_AA6SpacerVtGGMd);
  closure #1 in TrainingLoadWorkoutsAddUpView.body.getter(v4, v3, (a1 + *(v5 + 44)));
  v6 = static HorizontalAlignment.center.getter();
  if (one-time initialization token for WorkoutUIBundle != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v7 = WorkoutUIBundle.super.isa;
  v18._object = 0xE000000000000000;
  v8.value._countAndFlagsBits = 0x617A696C61636F4CLL;
  v8.value._object = 0xEB00000000656C62;
  v9._object = 0x800000020CB98270;
  v9._countAndFlagsBits = 0xD00000000000002FLL;
  v10._countAndFlagsBits = 0;
  v10._object = 0xE000000000000000;
  v18._countAndFlagsBits = 0;
  v11 = NSLocalizedString(_:tableName:bundle:value:comment:)(v9, v8, v7, v10, v18);

  v12 = swift_allocObject();
  *(v12 + 16) = v4;
  *(v12 + 24) = v3;

  v13 = VerticalEdge.rawValue.getter();
  v14 = MEMORY[0x20F309EB0]((2 * v13));
  v15 = static SafeAreaRegions.container.getter();
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyAA6VStackVyAA9TupleViewVyAA06ScrollG0Vy07WorkoutB026TrainingLoadOnboardingCoreVG_AA6SpacerVtGGAA06_InsetG8ModifierVyAJ0jkL6ButtonVGGMd);
  v17 = a1 + *(result + 36);
  *v17 = v11;
  *(v17 + 16) = closure #1 in closure #2 in TrainingLoadWorkoutsAddUpView.body.getterpartial apply;
  *(v17 + 24) = v12;
  *(v17 + 32) = v15;
  *(v17 + 40) = 0;
  *(v17 + 48) = 1;
  *(v17 + 49) = v14;
  *(v17 + 56) = v6;
  return result;
}

uint64_t getEnumTagSinglePayload for TrainingLoadWorkoutsAddUpView(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 16))
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

uint64_t storeEnumTagSinglePayload for TrainingLoadWorkoutsAddUpView(uint64_t result, int a2, int a3)
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
      *result = (a2 - 1);
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

uint64_t lazy protocol witness table accessor for type TrainingLoadOnboardingCore and conformance TrainingLoadOnboardingCore(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t outlined init with take of Range<AttributedString.Index>(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSny10Foundation16AttributedStringV5IndexVGMd);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t outlined destroy of Locale?(uint64_t a1, uint64_t *a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(a2);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t _s7SwiftUI6VStackVyAA9TupleViewVyAA06ScrollE0Vy07WorkoutB026TrainingLoadOnboardingCoreVG_AA6SpacerVtGGACyxGAA0E0AAWlTm_0(unint64_t *a1, uint64_t *a2)
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

unint64_t lazy protocol witness table accessor for type AttributeScopes.SwiftUIAttributes.FontAttribute and conformance AttributeScopes.SwiftUIAttributes.FontAttribute()
{
  result = lazy protocol witness table cache variable for type AttributeScopes.SwiftUIAttributes.FontAttribute and conformance AttributeScopes.SwiftUIAttributes.FontAttribute;
  if (!lazy protocol witness table cache variable for type AttributeScopes.SwiftUIAttributes.FontAttribute and conformance AttributeScopes.SwiftUIAttributes.FontAttribute)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AttributeScopes.SwiftUIAttributes.FontAttribute and conformance AttributeScopes.SwiftUIAttributes.FontAttribute);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type AttributeScopes.SwiftUIAttributes.ForegroundColorAttribute and conformance AttributeScopes.SwiftUIAttributes.ForegroundColorAttribute()
{
  result = lazy protocol witness table cache variable for type AttributeScopes.SwiftUIAttributes.ForegroundColorAttribute and conformance AttributeScopes.SwiftUIAttributes.ForegroundColorAttribute;
  if (!lazy protocol witness table cache variable for type AttributeScopes.SwiftUIAttributes.ForegroundColorAttribute and conformance AttributeScopes.SwiftUIAttributes.ForegroundColorAttribute)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AttributeScopes.SwiftUIAttributes.ForegroundColorAttribute and conformance AttributeScopes.SwiftUIAttributes.ForegroundColorAttribute);
  }

  return result;
}

uint64_t StandardActivityPickerItemRow.configurationImage.getter()
{
  v0 = StandardActivityPickerItem.topSuggested.getter();
  if (v0)
  {
    v1 = v0;
    type metadata accessor for RaceWorkoutConfiguration();
    if (!swift_dynamicCastClass())
    {
      type metadata accessor for MultiSportWorkoutConfiguration();
      if (swift_dynamicCastClass())
      {
        _HKWorkoutGoalType.symbolName.getter();
      }

      else
      {
        WorkoutConfiguration.displaySymbolName.getter();
      }
    }

    v3 = Image.init(_internalSystemName:)();

    return v3;
  }

  else
  {
    _HKWorkoutGoalType.symbolName.getter();

    return Image.init(_internalSystemName:)();
  }
}

uint64_t StandardActivityPickerItemRow.init(item:showActivityTypeRoom:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char a4@<W3>, uint64_t a5@<X8>)
{
  _sSo21FIUIFormattingManagerCMaTm_9(0, &lazy cache variable for type metadata for FIUIFormattingManager);
  _sSo21FIUIFormattingManagerCAB7Combine16ObservableObject9WorkoutUIWlTm_5(&lazy protocol witness table cache variable for type FIUIFormattingManager and conformance FIUIFormattingManager, &lazy cache variable for type metadata for FIUIFormattingManager);
  *(a5 + 32) = EnvironmentObject.init()();
  *(a5 + 40) = v10;
  type metadata accessor for ConfigurationNavigationModel();
  _s7SwiftUI16PlainButtonStyleVAcA09PrimitivedE0AAWlTm_6(&lazy protocol witness table cache variable for type ConfigurationNavigationModel and conformance ConfigurationNavigationModel, type metadata accessor for ConfigurationNavigationModel);
  *(a5 + 48) = EnvironmentObject.init()();
  *(a5 + 56) = v11;
  _sSo21FIUIFormattingManagerCMaTm_9(0, &lazy cache variable for type metadata for HKHealthStore);
  _sSo21FIUIFormattingManagerCAB7Combine16ObservableObject9WorkoutUIWlTm_5(&lazy protocol witness table cache variable for type HKHealthStore and conformance HKHealthStore, &lazy cache variable for type metadata for HKHealthStore);
  *(a5 + 64) = EnvironmentObject.init()();
  *(a5 + 72) = v12;
  type metadata accessor for WorkoutConfigurationOccurrenceStore();
  _s7SwiftUI16PlainButtonStyleVAcA09PrimitivedE0AAWlTm_6(&lazy protocol witness table cache variable for type WorkoutConfigurationOccurrenceStore and conformance WorkoutConfigurationOccurrenceStore, MEMORY[0x277D7DD18]);
  result = EnvironmentObject.init()();
  *(a5 + 80) = result;
  *(a5 + 88) = v14;
  *a5 = a1;
  *(a5 + 8) = a2;
  *(a5 + 16) = a3;
  *(a5 + 24) = a4;
  return result;
}

uint64_t _s7SwiftUI16PlainButtonStyleVAcA09PrimitivedE0AAWlTm_6(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t _sSo21FIUIFormattingManagerCMaTm_9(uint64_t a1, unint64_t *a2)
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

uint64_t _sSo21FIUIFormattingManagerCAB7Combine16ObservableObject9WorkoutUIWlTm_5(unint64_t *a1, unint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    _sSo21FIUIFormattingManagerCMaTm_9(255, a2);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t StandardActivityPickerItemRow.body.getter@<X0>(uint64_t a1@<X8>)
{
  v39 = a1;
  v38 = type metadata accessor for AccessibilityTraits();
  v36 = *(v38 - 8);
  MEMORY[0x28223BE20](v38);
  v3 = &v30 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v35 = type metadata accessor for AccessibilityChildBehavior();
  v34 = *(v35 - 8);
  MEMORY[0x28223BE20](v35);
  v5 = &v30 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI6ButtonVyAA6VStackVyAA9TupleViewVyAA6HStackVyAGyAA15ModifiedContentVyAKyAA5GroupVyAA012_ConditionalI0VyAKyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGAKyAKyAKyAqA18_AspectRatioLayoutVGAA06_FrameT0VGAA08_PaddingT0VGGGASyAA5ColorVSgGGAA17_FlipForRTLEffectVG_AA6SpacerVAKyAA0F0PAAE20accessibilityElement8childrenQrAA26AccessibilityChildBehaviorV_tFQOyA19_AAE11buttonStyleyQrqd__AA09PrimitiveC5StyleRd__lFQOyACyAKyAKyAxA016_ForegroundStyleP0VyA9_GGAA023AccessibilityAttachmentP0VGG_AA05PlainC5StyleVQo__Qo_A31_GtGG_AEyAGyAA4TextV_AKyAKyA42_ASyAQ5ScaleOGGA31_GSgtGGtGGGMd);
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v30 - v8;
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI4ViewPAAE20accessibilityElement8childrenQrAA26AccessibilityChildBehaviorV_tFQOyAA6ButtonVyAA6VStackVyAA05TupleC0VyAA6HStackVyAMyAA15ModifiedContentVyAQyAA5GroupVyAA012_ConditionalO0VyAQyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGAQyAQyAQyAwA18_AspectRatioLayoutVGAA06_FrameZ0VGAA08_PaddingZ0VGGGAYyAA5ColorVSgGGAA17_FlipForRTLEffectVG_AA6SpacerVAQyAcAEAdEQrAG_tFQOyAcAE11buttonStyleyQrqd__AA09PrimitiveJ5StyleRd__lFQOyAIyAQyAQyA2_AA016_ForegroundStyleV0VyA15_GGAA0g10AttachmentV0VGG_AA05PlainJ5StyleVQo__Qo_A31_GtGG_AKyAMyAA4TextV_AQyAQyA42_AYyAW5ScaleOGGA31_GSgtGGtGGG_Qo_Md);
  v33 = *(v32 - 8);
  MEMORY[0x28223BE20](v32);
  v11 = &v30 - v10;
  v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyAA4ViewPAAE20accessibilityElement8childrenQrAA26AccessibilityChildBehaviorV_tFQOyAA6ButtonVyAA6VStackVyAA05TupleE0VyAA6HStackVyAOyACyACyAA5GroupVyAA012_ConditionalD0VyACyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGACyACyACyAwA18_AspectRatioLayoutVGAA06_FrameZ0VGAA08_PaddingZ0VGGGAYyAA5ColorVSgGGAA17_FlipForRTLEffectVG_AA6SpacerVACyAeAEAfGQrAI_tFQOyAeAE11buttonStyleyQrqd__AA09PrimitiveL5StyleRd__lFQOyAKyACyACyA2_AA016_ForegroundStyleV0VyA15_GGAA0i10AttachmentV0VGG_AA05PlainL5StyleVQo__Qo_A31_GtGG_AMyAOyAA4TextV_ACyACyA42_AYyAW5ScaleOGGA31_GSgtGGtGGG_Qo_A31_GMd);
  MEMORY[0x28223BE20](v37);
  v31 = &v30 - v12;
  v13 = v1[3];
  v42[2] = v1[2];
  v42[3] = v13;
  v14 = v1[5];
  v42[4] = v1[4];
  v42[5] = v14;
  v15 = v1[1];
  v42[0] = *v1;
  v42[1] = v15;
  v16 = swift_allocObject();
  v17 = v1[3];
  v16[3] = v1[2];
  v16[4] = v17;
  v18 = v1[5];
  v16[5] = v1[4];
  v16[6] = v18;
  v19 = v1[1];
  v16[1] = *v1;
  v16[2] = v19;
  v40 = v42;
  outlined init with copy of StandardActivityPickerItemRow(v42, v41);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI6VStackVyAA9TupleViewVyAA6HStackVyAEyAA15ModifiedContentVyAIyAA5GroupVyAA012_ConditionalH0VyAIyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGAIyAIyAIyAoA18_AspectRatioLayoutVGAA06_FrameS0VGAA08_PaddingS0VGGGAQyAA5ColorVSgGGAA17_FlipForRTLEffectVG_AA6SpacerVAIyAA0E0PAAE20accessibilityElement8childrenQrAA26AccessibilityChildBehaviorV_tFQOyA17_AAE11buttonStyleyQrqd__AA20PrimitiveButtonStyleRd__lFQOyAA6ButtonVyAIyAIyAvA016_ForegroundStyleO0VyA7_GGAA023AccessibilityAttachmentO0VGG_AA16PlainButtonStyleVQo__Qo_A31_GtGG_ACyAEyAA4TextV_AIyAIyA42_AQyAO5ScaleOGGA31_GSgtGGtGGMd);
  lazy protocol witness table accessor for type VStack<TupleView<(HStack<TupleView<(ModifiedContent<ModifiedContent<Group<_ConditionalContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Font?>>, ModifiedContent<ModifiedContent<ModifiedContent<Image, _AspectRatioLayout>, _FrameLayout>, _PaddingLayout>>>, _EnvironmentKeyWritingModifier<Color?>>, _FlipForRTLEffect>, Spacer, ModifiedContent<<<opaque return type of View.accessibilityElement(children:)>>.0, AccessibilityAttachmentModifier>)>>, VStack<TupleView<(Text, ModifiedContent<ModifiedContent<Text, _EnvironmentKeyWritingModifier<Image.Scale>>, AccessibilityAttachmentModifier>?)>>)>> and conformance VStack<A>(&lazy protocol witness table cache variable for type VStack<TupleView<(HStack<TupleView<(ModifiedContent<ModifiedContent<Group<_ConditionalContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Font?>>, ModifiedContent<ModifiedContent<ModifiedContent<Image, _AspectRatioLayout>, _FrameLayout>, _PaddingLayout>>>, _EnvironmentKeyWritingModifier<Color?>>, _FlipForRTLEffect>, Spacer, ModifiedContent<<<opaque return type of View.accessibilityElement(children:)>>.0, AccessibilityAttachmentModifier>)>>, VStack<TupleView<(Text, ModifiedContent<ModifiedContent<Text, _EnvironmentKeyWritingModifier<Image.Scale>>, AccessibilityAttachmentModifier>?)>>)>> and conformance VStack<A>, &_s7SwiftUI6VStackVyAA9TupleViewVyAA6HStackVyAEyAA15ModifiedContentVyAIyAA5GroupVyAA012_ConditionalH0VyAIyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGAIyAIyAIyAoA18_AspectRatioLayoutVGAA06_FrameS0VGAA08_PaddingS0VGGGAQyAA5ColorVSgGGAA17_FlipForRTLEffectVG_AA6SpacerVAIyAA0E0PAAE20accessibilityElement8childrenQrAA26AccessibilityChildBehaviorV_tFQOyA17_AAE11buttonStyleyQrqd__AA20PrimitiveButtonStyleRd__lFQOyAA6ButtonVyAIyAIyAvA016_ForegroundStyleO0VyA7_GGAA023AccessibilityAttachmentO0VGG_AA16PlainButtonStyleVQo__Qo_A31_GtGG_ACyAEyAA4TextV_AIyAIyA42_AQyAO5ScaleOGGA31_GSgtGGtGGMd);
  Button.init(action:label:)();
  static AccessibilityChildBehavior.combine.getter();
  v20 = lazy protocol witness table accessor for type VStack<TupleView<(HStack<TupleView<(ModifiedContent<ModifiedContent<Group<_ConditionalContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Font?>>, ModifiedContent<ModifiedContent<ModifiedContent<Image, _AspectRatioLayout>, _FrameLayout>, _PaddingLayout>>>, _EnvironmentKeyWritingModifier<Color?>>, _FlipForRTLEffect>, Spacer, ModifiedContent<<<opaque return type of View.accessibilityElement(children:)>>.0, AccessibilityAttachmentModifier>)>>, VStack<TupleView<(Text, ModifiedContent<ModifiedContent<Text, _EnvironmentKeyWritingModifier<Image.Scale>>, AccessibilityAttachmentModifier>?)>>)>> and conformance VStack<A>(&lazy protocol witness table cache variable for type Button<VStack<TupleView<(HStack<TupleView<(ModifiedContent<ModifiedContent<Group<_ConditionalContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Font?>>, ModifiedContent<ModifiedContent<ModifiedContent<Image, _AspectRatioLayout>, _FrameLayout>, _PaddingLayout>>>, _EnvironmentKeyWritingModifier<Color?>>, _FlipForRTLEffect>, Spacer, ModifiedContent<<<opaque return type of View.accessibilityElement(children:)>>.0, AccessibilityAttachmentModifier>)>>, VStack<TupleView<(Text, ModifiedContent<ModifiedContent<Text, _EnvironmentKeyWritingModifier<Image.Scale>>, AccessibilityAttachmentModifier>?)>>)>>> and conformance Button<A>, &_s7SwiftUI6ButtonVyAA6VStackVyAA9TupleViewVyAA6HStackVyAGyAA15ModifiedContentVyAKyAA5GroupVyAA012_ConditionalI0VyAKyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGAKyAKyAKyAqA18_AspectRatioLayoutVGAA06_FrameT0VGAA08_PaddingT0VGGGASyAA5ColorVSgGGAA17_FlipForRTLEffectVG_AA6SpacerVAKyAA0F0PAAE20accessibilityElement8childrenQrAA26AccessibilityChildBehaviorV_tFQOyA19_AAE11buttonStyleyQrqd__AA09PrimitiveC5StyleRd__lFQOyACyAKyAKyAxA016_ForegroundStyleP0VyA9_GGAA023AccessibilityAttachmentP0VGG_AA05PlainC5StyleVQo__Qo_A31_GtGG_AEyAGyAA4TextV_AKyAKyA42_ASyAQ5ScaleOGGA31_GSgtGGtGGGMd);
  View.accessibilityElement(children:)();
  (*(v34 + 8))(v5, v35);
  (*(v7 + 8))(v9, v6);
  static AccessibilityTraits.isSelected.getter();
  v41[0] = v6;
  v41[1] = v20;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v22 = v31;
  v23 = v32;
  MEMORY[0x20F30AA50](v3, v32, OpaqueTypeConformance2);
  (*(v36 + 8))(v3, v38);
  (*(v33 + 8))(v11, v23);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySSGMd);
  v24 = swift_allocObject();
  *(v24 + 16) = xmmword_20CB5DA80;
  *(v24 + 32) = 0xD000000000000016;
  *(v24 + 40) = 0x800000020CB994A0;
  v25 = StandardActivityPickerItem.activityType.getter();
  v26 = FIUIWorkoutActivityType.accessibilityIdentifierString.getter();
  v28 = v27;

  *(v24 + 48) = v26;
  *(v24 + 56) = v28;
  v41[0] = v24;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySSGMd);
  lazy protocol witness table accessor for type VStack<TupleView<(HStack<TupleView<(ModifiedContent<ModifiedContent<Group<_ConditionalContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Font?>>, ModifiedContent<ModifiedContent<ModifiedContent<Image, _AspectRatioLayout>, _FrameLayout>, _PaddingLayout>>>, _EnvironmentKeyWritingModifier<Color?>>, _FlipForRTLEffect>, Spacer, ModifiedContent<<<opaque return type of View.accessibilityElement(children:)>>.0, AccessibilityAttachmentModifier>)>>, VStack<TupleView<(Text, ModifiedContent<ModifiedContent<Text, _EnvironmentKeyWritingModifier<Image.Scale>>, AccessibilityAttachmentModifier>?)>>)>> and conformance VStack<A>(&lazy protocol witness table cache variable for type [String] and conformance [A], &_sSaySSGMd);
  BidirectionalCollection<>.joined(separator:)();

  ModifiedContent<>.accessibilityIdentifier(_:)();

  return outlined destroy of ModifiedContent<<<opaque return type of View.accessibilityElement(children:)>>.0, AccessibilityAttachmentModifier>(v22, &_s7SwiftUI15ModifiedContentVyAA4ViewPAAE20accessibilityElement8childrenQrAA26AccessibilityChildBehaviorV_tFQOyAA6ButtonVyAA6VStackVyAA05TupleE0VyAA6HStackVyAOyACyACyAA5GroupVyAA012_ConditionalD0VyACyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGACyACyACyAwA18_AspectRatioLayoutVGAA06_FrameZ0VGAA08_PaddingZ0VGGGAYyAA5ColorVSgGGAA17_FlipForRTLEffectVG_AA6SpacerVACyAeAEAfGQrAI_tFQOyAeAE11buttonStyleyQrqd__AA09PrimitiveL5StyleRd__lFQOyAKyACyACyA2_AA016_ForegroundStyleV0VyA15_GGAA0i10AttachmentV0VGG_AA05PlainL5StyleVQo__Qo_A31_GtGG_AMyAOyAA4TextV_ACyACyA42_AYyAW5ScaleOGGA31_GSgtGGtGGG_Qo_A31_GMd);
}

void closure #1 in StandardActivityPickerItemRow.body.getter(uint64_t a1)
{
  v2 = type metadata accessor for Logger();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = v22 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = StandardActivityPickerItem.topSuggested.getter();
  if (v6)
  {
    v7 = *(a1 + 48);
    if (!v7)
    {
      type metadata accessor for ConfigurationNavigationModel();
      _s7SwiftUI16PlainButtonStyleVAcA09PrimitivedE0AAWlTm_6(&lazy protocol witness table cache variable for type ConfigurationNavigationModel and conformance ConfigurationNavigationModel, type metadata accessor for ConfigurationNavigationModel);
      EnvironmentObject.error()();
      __break(1u);
      return;
    }

    v8 = v6;
    swift_beginAccess();
    v9 = *(v7 + 16);

    v10 = v9;
    LOBYTE(v9) = dispatch thunk of QuickWorkoutSwitchProvider.quickWorkoutSwitch.getter();

    if (v9)
    {
      v11 = 8;
    }

    else
    {
      v11 = 1;
    }

    v12 = *(v7 + 16);
    dispatch thunk of QuickWorkoutSwitchProvider.quickWorkoutSwitch.setter();

    v13 = *(v7 + OBJC_IVAR____TtC9WorkoutUI28ConfigurationNavigationModel__startWorkout);

    v13(v8, v11);
  }

  else
  {
    v14 = StandardActivityPickerItem.activityType.getter();
    v15 = [v14 supportsTransientOpenGoal];

    if (v15)
    {
      return;
    }

    static WOLog.activityPicker.getter();
    v16 = Logger.logObject.getter();
    v17 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v16, v17))
    {
      v18 = swift_slowAlloc();
      *v18 = 0;
      _os_log_impl(&dword_20C66F000, v16, v17, "No stored workout configurations and transient open goals not supported. Pushing directly into the activity room.", v18, 2u);
      MEMORY[0x20F30E080](v18, -1, -1);
    }

    (*(v3 + 8))(v5, v2);
    v20 = *(a1 + 8);
    v19 = *(a1 + 16);
    v21 = *(a1 + 24);
    v28 = v20;
    v22[0] = v20;
    v22[1] = v19;
    v23 = v21;
    outlined init with copy of Transaction(&v28, v25);

    __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI7BindingVySbGMd);
    MEMORY[0x20F30B100](&v27);
    v25[0] = v20;
    v25[1] = v19;
    v26 = v21;
    v24 = (v27 & 1) == 0;
    Binding.wrappedValue.setter();
    outlined destroy of Transaction(&v28);
  }
}

uint64_t closure #2 in StandardActivityPickerItemRow.body.getter@<X0>(_OWORD *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = static HorizontalAlignment.leading.getter();
  if (one-time initialization token for iconToNameSpacing != -1)
  {
    v8 = v4;
    swift_once();
    v4 = v8;
  }

  v5 = static RowLayoutConstants.iconToNameSpacing;
  *a2 = v4;
  *(a2 + 8) = v5;
  *(a2 + 16) = 0;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI13_VariadicViewO4TreeVy_AA13_VStackLayoutVAA05TupleD0VyAA6HStackVyAIyAA15ModifiedContentVyAMyAA5GroupVyAA012_ConditionalK0VyAMyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGAMyAMyAMyAsA012_AspectRatioG0VGAA06_FrameG0VGAA08_PaddingG0VGGGAUyAA5ColorVSgGGAA17_FlipForRTLEffectVG_AA6SpacerVAMyAA0D0PAAE20accessibilityElement8childrenQrAA26AccessibilityChildBehaviorV_tFQOyA21_AAE11buttonStyleyQrqd__AA20PrimitiveButtonStyleRd__lFQOyAA6ButtonVyAMyAMyAzA016_ForegroundStyleR0VyA11_GGAA023AccessibilityAttachmentR0VGG_AA16PlainButtonStyleVQo__Qo_A35_GtGG_AA0F0VyAIyAA4TextV_AMyAMyA48_AUyAS5ScaleOGGA35_GSgtGGtGGMd);
  return closure #1 in closure #2 in StandardActivityPickerItemRow.body.getter(a1, a2 + *(v6 + 44));
}

uint64_t closure #1 in closure #2 in StandardActivityPickerItemRow.body.getter@<X0>(_OWORD *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI6VStackVyAA9TupleViewVyAA4TextV_AA15ModifiedContentVyAIyAgA30_EnvironmentKeyWritingModifierVyAA5ImageV5ScaleOGGAA023AccessibilityAttachmentL0VGSgtGGMd);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v20 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v9 = &v20 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI6HStackVyAA9TupleViewVyAA15ModifiedContentVyAGyAA5GroupVyAA012_ConditionalG0VyAGyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGAGyAGyAGyAmA18_AspectRatioLayoutVGAA06_FrameR0VGAA08_PaddingR0VGGGAOyAA5ColorVSgGGAA17_FlipForRTLEffectVG_AA6SpacerVAGyAA0E0PAAE20accessibilityElement8childrenQrAA26AccessibilityChildBehaviorV_tFQOyA15_AAE11buttonStyleyQrqd__AA20PrimitiveButtonStyleRd__lFQOyAA6ButtonVyAGyAGyAtA016_ForegroundStyleN0VyA5_GGAA023AccessibilityAttachmentN0VGG_AA16PlainButtonStyleVQo__Qo_A29_GtGGMd);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v20 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v15 = &v20 - v14;
  *v15 = static VerticalAlignment.top.getter();
  *(v15 + 1) = 0;
  v15[16] = 1;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI13_VariadicViewO4TreeVy_AA13_HStackLayoutVAA05TupleD0VyAA15ModifiedContentVyAKyAA5GroupVyAA012_ConditionalJ0VyAKyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGAKyAKyAKyAqA012_AspectRatioG0VGAA06_FrameG0VGAA08_PaddingG0VGGGASyAA5ColorVSgGGAA17_FlipForRTLEffectVG_AA6SpacerVAKyAA0D0PAAE20accessibilityElement8childrenQrAA26AccessibilityChildBehaviorV_tFQOyA19_AAE11buttonStyleyQrqd__AA20PrimitiveButtonStyleRd__lFQOyAA6ButtonVyAKyAKyAxA016_ForegroundStyleQ0VyA9_GGAA023AccessibilityAttachmentQ0VGG_AA16PlainButtonStyleVQo__Qo_A33_GtGGMd);
  closure #1 in closure #1 in closure #2 in StandardActivityPickerItemRow.body.getter(a1, &v15[*(v16 + 44)]);
  *v9 = static HorizontalAlignment.leading.getter();
  *(v9 + 1) = 0;
  v9[16] = 0;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI13_VariadicViewO4TreeVy_AA13_VStackLayoutVAA05TupleD0VyAA4TextV_AA15ModifiedContentVyAMyAkA30_EnvironmentKeyWritingModifierVyAA5ImageV5ScaleOGGAA023AccessibilityAttachmentO0VGSgtGGMd);
  closure #2 in closure #1 in closure #2 in StandardActivityPickerItemRow.body.getter(a1, &v9[*(v17 + 44)]);
  outlined init with copy of HStack<TupleView<(ModifiedContent<ModifiedContent<Group<_ConditionalContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Font?>>, ModifiedContent<ModifiedContent<ModifiedContent<Image, _AspectRatioLayout>, _FrameLayout>, _PaddingLayout>>>, _EnvironmentKeyWritingModifier<Color?>>, _FlipForRTLEffect>, Spacer, ModifiedContent<<<opaque return type of View.accessibilityElement(children:)>>.0, AccessibilityAttachmentModifier>)>>(v15, v12, &_s7SwiftUI6HStackVyAA9TupleViewVyAA15ModifiedContentVyAGyAA5GroupVyAA012_ConditionalG0VyAGyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGAGyAGyAGyAmA18_AspectRatioLayoutVGAA06_FrameR0VGAA08_PaddingR0VGGGAOyAA5ColorVSgGGAA17_FlipForRTLEffectVG_AA6SpacerVAGyAA0E0PAAE20accessibilityElement8childrenQrAA26AccessibilityChildBehaviorV_tFQOyA15_AAE11buttonStyleyQrqd__AA20PrimitiveButtonStyleRd__lFQOyAA6ButtonVyAGyAGyAtA016_ForegroundStyleN0VyA5_GGAA023AccessibilityAttachmentN0VGG_AA16PlainButtonStyleVQo__Qo_A29_GtGGMd);
  outlined init with copy of VStack<TupleView<(Text, ModifiedContent<ModifiedContent<Text, _EnvironmentKeyWritingModifier<Image.Scale>>, AccessibilityAttachmentModifier>?)>>(v9, v6, &_s7SwiftUI6VStackVyAA9TupleViewVyAA4TextV_AA15ModifiedContentVyAIyAgA30_EnvironmentKeyWritingModifierVyAA5ImageV5ScaleOGGAA023AccessibilityAttachmentL0VGSgtGGMd);
  outlined init with copy of HStack<TupleView<(ModifiedContent<ModifiedContent<Group<_ConditionalContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Font?>>, ModifiedContent<ModifiedContent<ModifiedContent<Image, _AspectRatioLayout>, _FrameLayout>, _PaddingLayout>>>, _EnvironmentKeyWritingModifier<Color?>>, _FlipForRTLEffect>, Spacer, ModifiedContent<<<opaque return type of View.accessibilityElement(children:)>>.0, AccessibilityAttachmentModifier>)>>(v12, a2, &_s7SwiftUI6HStackVyAA9TupleViewVyAA15ModifiedContentVyAGyAA5GroupVyAA012_ConditionalG0VyAGyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGAGyAGyAGyAmA18_AspectRatioLayoutVGAA06_FrameR0VGAA08_PaddingR0VGGGAOyAA5ColorVSgGGAA17_FlipForRTLEffectVG_AA6SpacerVAGyAA0E0PAAE20accessibilityElement8childrenQrAA26AccessibilityChildBehaviorV_tFQOyA15_AAE11buttonStyleyQrqd__AA20PrimitiveButtonStyleRd__lFQOyAA6ButtonVyAGyAGyAtA016_ForegroundStyleN0VyA5_GGAA023AccessibilityAttachmentN0VGG_AA16PlainButtonStyleVQo__Qo_A29_GtGGMd);
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI6HStackVyAA9TupleViewVyAA15ModifiedContentVyAGyAA5GroupVyAA012_ConditionalG0VyAGyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGAGyAGyAGyAmA18_AspectRatioLayoutVGAA06_FrameR0VGAA08_PaddingR0VGGGAOyAA5ColorVSgGGAA17_FlipForRTLEffectVG_AA6SpacerVAGyAA0E0PAAE20accessibilityElement8childrenQrAA26AccessibilityChildBehaviorV_tFQOyA15_AAE11buttonStyleyQrqd__AA20PrimitiveButtonStyleRd__lFQOyAA6ButtonVyAGyAGyAtA016_ForegroundStyleN0VyA5_GGAA023AccessibilityAttachmentN0VGG_AA16PlainButtonStyleVQo__Qo_A29_GtGG_AA6VStackVyAEyAA4TextV_AGyAGyA42_AOyAM5ScaleOGGA29_GSgtGGtMd);
  outlined init with copy of VStack<TupleView<(Text, ModifiedContent<ModifiedContent<Text, _EnvironmentKeyWritingModifier<Image.Scale>>, AccessibilityAttachmentModifier>?)>>(v6, a2 + *(v18 + 48), &_s7SwiftUI6VStackVyAA9TupleViewVyAA4TextV_AA15ModifiedContentVyAIyAgA30_EnvironmentKeyWritingModifierVyAA5ImageV5ScaleOGGAA023AccessibilityAttachmentL0VGSgtGGMd);
  outlined destroy of VStack<TupleView<(Text, ModifiedContent<ModifiedContent<Text, _EnvironmentKeyWritingModifier<Image.Scale>>, AccessibilityAttachmentModifier>?)>>(v9, &_s7SwiftUI6VStackVyAA9TupleViewVyAA4TextV_AA15ModifiedContentVyAIyAgA30_EnvironmentKeyWritingModifierVyAA5ImageV5ScaleOGGAA023AccessibilityAttachmentL0VGSgtGGMd);
  outlined destroy of ModifiedContent<<<opaque return type of View.accessibilityElement(children:)>>.0, AccessibilityAttachmentModifier>(v15, &_s7SwiftUI6HStackVyAA9TupleViewVyAA15ModifiedContentVyAGyAA5GroupVyAA012_ConditionalG0VyAGyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGAGyAGyAGyAmA18_AspectRatioLayoutVGAA06_FrameR0VGAA08_PaddingR0VGGGAOyAA5ColorVSgGGAA17_FlipForRTLEffectVG_AA6SpacerVAGyAA0E0PAAE20accessibilityElement8childrenQrAA26AccessibilityChildBehaviorV_tFQOyA15_AAE11buttonStyleyQrqd__AA20PrimitiveButtonStyleRd__lFQOyAA6ButtonVyAGyAGyAtA016_ForegroundStyleN0VyA5_GGAA023AccessibilityAttachmentN0VGG_AA16PlainButtonStyleVQo__Qo_A29_GtGGMd);
  outlined destroy of VStack<TupleView<(Text, ModifiedContent<ModifiedContent<Text, _EnvironmentKeyWritingModifier<Image.Scale>>, AccessibilityAttachmentModifier>?)>>(v6, &_s7SwiftUI6VStackVyAA9TupleViewVyAA4TextV_AA15ModifiedContentVyAIyAgA30_EnvironmentKeyWritingModifierVyAA5ImageV5ScaleOGGAA023AccessibilityAttachmentL0VGSgtGGMd);
  return outlined destroy of ModifiedContent<<<opaque return type of View.accessibilityElement(children:)>>.0, AccessibilityAttachmentModifier>(v12, &_s7SwiftUI6HStackVyAA9TupleViewVyAA15ModifiedContentVyAGyAA5GroupVyAA012_ConditionalG0VyAGyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGAGyAGyAGyAmA18_AspectRatioLayoutVGAA06_FrameR0VGAA08_PaddingR0VGGGAOyAA5ColorVSgGGAA17_FlipForRTLEffectVG_AA6SpacerVAGyAA0E0PAAE20accessibilityElement8childrenQrAA26AccessibilityChildBehaviorV_tFQOyA15_AAE11buttonStyleyQrqd__AA20PrimitiveButtonStyleRd__lFQOyAA6ButtonVyAGyAGyAtA016_ForegroundStyleN0VyA5_GGAA023AccessibilityAttachmentN0VGG_AA16PlainButtonStyleVQo__Qo_A29_GtGGMd);
}

void closure #1 in closure #1 in closure #2 in StandardActivityPickerItemRow.body.getter(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for AccessibilityChildBehavior();
  v81 = *(v4 - 8);
  v82 = v4;
  MEMORY[0x28223BE20](v4);
  v80 = &KeyPath - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v78 = type metadata accessor for PlainButtonStyle();
  v74 = *(v78 - 8);
  MEMORY[0x28223BE20](v78);
  v7 = &KeyPath - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI6ButtonVyAA15ModifiedContentVyAEyAEyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGAA016_ForegroundStyleJ0VyAA5ColorVGGAA023AccessibilityAttachmentJ0VGGMd);
  v69 = *(v8 - 8);
  v70 = v8;
  MEMORY[0x28223BE20](v8);
  v10 = &KeyPath - v9;
  v76 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI4ViewPAAE11buttonStyleyQrqd__AA015PrimitiveButtonE0Rd__lFQOyAA0G0VyAA15ModifiedContentVyAIyAIyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGAA011_ForegroundeN0VyAA5ColorVGGAA023AccessibilityAttachmentN0VGG_AA05PlaingE0VQo_Md);
  v73 = *(v76 - 8);
  MEMORY[0x28223BE20](v76);
  v12 = &KeyPath - v11;
  v77 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI4ViewPAAE20accessibilityElement8childrenQrAA26AccessibilityChildBehaviorV_tFQOyAcAE11buttonStyleyQrqd__AA015PrimitiveButtonK0Rd__lFQOyAA0M0VyAA15ModifiedContentVyAMyAMyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGAA011_ForegroundkT0VyAA5ColorVGGAA0g10AttachmentT0VGG_AA05PlainmK0VQo__Qo_Md);
  v75 = *(v77 - 8);
  MEMORY[0x28223BE20](v77);
  v72 = &KeyPath - v13;
  v83 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyAA4ViewPAAE20accessibilityElement8childrenQrAA26AccessibilityChildBehaviorV_tFQOyAeAE11buttonStyleyQrqd__AA015PrimitiveButtonM0Rd__lFQOyAA0O0VyACyACyACyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGAA011_ForegroundmT0VyAA5ColorVGGAA0i10AttachmentT0VGG_AA05PlainoM0VQo__Qo_A2_GMd);
  MEMORY[0x28223BE20](v83);
  v15 = &KeyPath - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v18 = &KeyPath - v17;
  closure #1 in closure #1 in closure #1 in closure #2 in StandardActivityPickerItemRow.body.getter(v110);
  v79 = *a1;
  v19 = StandardActivityPickerItem.topSuggested.getter();
  v84 = v18;
  v85 = a2;
  v71 = v15;
  if (!v19)
  {
    v21 = [objc_opt_self() keyColors];
    if (v21)
    {
      v22 = v21;
      v23 = [v21 nonGradientTextColor];

      if (v23)
      {
        goto LABEL_5;
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
    return;
  }

  v20 = v19;
  WorkoutConfiguration.displayColor.getter();

LABEL_5:
  v68 = Color.init(uiColor:)();
  KeyPath = swift_getKeyPath();
  v90 = v110[4];
  v91 = v110[5];
  v92 = v110[6];
  LOWORD(v93) = v111;
  v86 = v110[0];
  v87 = v110[1];
  v88 = v110[2];
  v89 = v110[3];
  v24 = swift_allocObject();
  v25 = *(a1 + 48);
  v24[3] = *(a1 + 32);
  v24[4] = v25;
  v26 = *(a1 + 80);
  v24[5] = *(a1 + 64);
  v24[6] = v26;
  v27 = *(a1 + 16);
  v24[1] = *a1;
  v24[2] = v27;
  MEMORY[0x28223BE20](v24);
  v28 = a1;
  outlined init with copy of StandardActivityPickerItemRow(a1, &v99);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyACyACyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGAA016_ForegroundStyleI0VyAA5ColorVGGAA023AccessibilityAttachmentI0VGMd);
  lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Font?>>, _ForegroundStyleModifier<Color>>, AccessibilityAttachmentModifier> and conformance <> ModifiedContent<A, B>();
  Button.init(action:label:)();
  PlainButtonStyle.init()();
  v29 = lazy protocol witness table accessor for type VStack<TupleView<(HStack<TupleView<(ModifiedContent<ModifiedContent<Group<_ConditionalContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Font?>>, ModifiedContent<ModifiedContent<ModifiedContent<Image, _AspectRatioLayout>, _FrameLayout>, _PaddingLayout>>>, _EnvironmentKeyWritingModifier<Color?>>, _FlipForRTLEffect>, Spacer, ModifiedContent<<<opaque return type of View.accessibilityElement(children:)>>.0, AccessibilityAttachmentModifier>)>>, VStack<TupleView<(Text, ModifiedContent<ModifiedContent<Text, _EnvironmentKeyWritingModifier<Image.Scale>>, AccessibilityAttachmentModifier>?)>>)>> and conformance VStack<A>(&lazy protocol witness table cache variable for type Button<ModifiedContent<ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Font?>>, _ForegroundStyleModifier<Color>>, AccessibilityAttachmentModifier>> and conformance Button<A>, &_s7SwiftUI6ButtonVyAA15ModifiedContentVyAEyAEyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGAA016_ForegroundStyleJ0VyAA5ColorVGGAA023AccessibilityAttachmentJ0VGGMd);
  v30 = _s7SwiftUI16PlainButtonStyleVAcA09PrimitivedE0AAWlTm_6(&lazy protocol witness table cache variable for type PlainButtonStyle and conformance PlainButtonStyle, MEMORY[0x277CDDB18]);
  v31 = v70;
  v32 = v78;
  View.buttonStyle<A>(_:)();
  (*(v74 + 8))(v7, v32);
  (*(v69 + 8))(v10, v31);
  v33 = v80;
  static AccessibilityChildBehavior.ignore.getter();
  *&v99 = v31;
  *(&v99 + 1) = v32;
  *&v100 = v29;
  *(&v100 + 1) = v30;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v35 = v72;
  v36 = v76;
  View.accessibilityElement(children:)();
  (*(v81 + 8))(v33, v82);
  (*(v73 + 8))(v12, v36);
  *&v99 = v36;
  *(&v99 + 1) = OpaqueTypeConformance2;
  swift_getOpaqueTypeConformance2();
  v37 = v71;
  v38 = v77;
  View.accessibilitySortPriority(_:)();
  (*(v75 + 8))(v35, v38);
  if (one-time initialization token for WorkoutUIBundle != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v39 = WorkoutUIBundle.super.isa;
  v112._object = 0xE000000000000000;
  v40.value._countAndFlagsBits = 0x617A696C61636F4CLL;
  v40.value._object = 0xEB00000000656C62;
  v41._object = 0x800000020CBA0E90;
  v41._countAndFlagsBits = 0xD00000000000001CLL;
  v42._countAndFlagsBits = 0;
  v42._object = 0xE000000000000000;
  v112._countAndFlagsBits = 0;
  NSLocalizedString(_:tableName:bundle:value:comment:)(v41, v40, v39, v42, v112);

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys7CVarArg_pGMd);
  v43 = swift_allocObject();
  *(v43 + 16) = xmmword_20CB5DA70;
  v44 = StandardActivityPickerItem.activityType.getter();
  v45 = [v44 localizedName];

  v46 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v48 = v47;

  *(v43 + 56) = MEMORY[0x277D837D0];
  *(v43 + 64) = lazy protocol witness table accessor for type String and conformance String();
  *(v43 + 32) = v46;
  *(v43 + 40) = v48;
  v49 = String.init(format:_:)();
  v51 = v50;

  *&v94[0] = v49;
  *(&v94[0] + 1) = v51;
  v52 = swift_allocObject();
  v53 = v28[3];
  v52[3] = v28[2];
  v52[4] = v53;
  v54 = v28[5];
  v52[5] = v28[4];
  v52[6] = v54;
  v55 = v28[1];
  v52[1] = *v28;
  v52[2] = v55;
  outlined init with copy of StandardActivityPickerItemRow(v28, &v99);
  lazy protocol witness table accessor for type String and conformance String();
  v56 = v84;
  ModifiedContent<>.accessibilityAction<A>(named:_:)();

  outlined destroy of ModifiedContent<<<opaque return type of View.accessibilityElement(children:)>>.0, AccessibilityAttachmentModifier>(v37, &_s7SwiftUI15ModifiedContentVyAA4ViewPAAE20accessibilityElement8childrenQrAA26AccessibilityChildBehaviorV_tFQOyAeAE11buttonStyleyQrqd__AA015PrimitiveButtonM0Rd__lFQOyAA0O0VyACyACyACyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGAA011_ForegroundmT0VyAA5ColorVGGAA0i10AttachmentT0VGG_AA05PlainoM0VQo__Qo_A2_GMd);
  outlined init with copy of HStack<TupleView<(ModifiedContent<ModifiedContent<Group<_ConditionalContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Font?>>, ModifiedContent<ModifiedContent<ModifiedContent<Image, _AspectRatioLayout>, _FrameLayout>, _PaddingLayout>>>, _EnvironmentKeyWritingModifier<Color?>>, _FlipForRTLEffect>, Spacer, ModifiedContent<<<opaque return type of View.accessibilityElement(children:)>>.0, AccessibilityAttachmentModifier>)>>(v56, v37, &_s7SwiftUI15ModifiedContentVyAA4ViewPAAE20accessibilityElement8childrenQrAA26AccessibilityChildBehaviorV_tFQOyAeAE11buttonStyleyQrqd__AA015PrimitiveButtonM0Rd__lFQOyAA0O0VyACyACyACyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGAA011_ForegroundmT0VyAA5ColorVGGAA0i10AttachmentT0VGG_AA05PlainoM0VQo__Qo_A2_GMd);
  v95 = v90;
  v96 = v91;
  v97 = v92;
  v94[0] = v86;
  v94[1] = v87;
  v94[2] = v88;
  v94[3] = v89;
  v58 = KeyPath;
  v57 = v68;
  *&v98[0] = v93;
  *(&v98[0] + 1) = KeyPath;
  *&v98[1] = v68;
  BYTE8(v98[1]) = 1;
  v59 = v86;
  v60 = v87;
  v61 = v89;
  v62 = v85;
  *(v85 + 32) = v88;
  *(v62 + 48) = v61;
  *v62 = v59;
  *(v62 + 16) = v60;
  v63 = v95;
  v64 = v96;
  *(v62 + 121) = *(v98 + 9);
  v65 = v98[0];
  *(v62 + 96) = v97;
  *(v62 + 112) = v65;
  *(v62 + 64) = v63;
  *(v62 + 80) = v64;
  *(v62 + 144) = 0;
  *(v62 + 152) = 1;
  v66 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyACyAA5GroupVyAA012_ConditionalD0VyACyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGACyACyACyAiA18_AspectRatioLayoutVGAA06_FrameO0VGAA08_PaddingO0VGGGAKyAA5ColorVSgGGAA17_FlipForRTLEffectVG_AA6SpacerVACyAA4ViewPAAE20accessibilityElement8childrenQrAA26AccessibilityChildBehaviorV_tFQOyA11_AAE11buttonStyleyQrqd__AA20PrimitiveButtonStyleRd__lFQOyAA6ButtonVyACyACyApA016_ForegroundStyleK0VyA1_GGAA023AccessibilityAttachmentK0VGG_AA16PlainButtonStyleVQo__Qo_A25_GtMd);
  outlined init with copy of HStack<TupleView<(ModifiedContent<ModifiedContent<Group<_ConditionalContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Font?>>, ModifiedContent<ModifiedContent<ModifiedContent<Image, _AspectRatioLayout>, _FrameLayout>, _PaddingLayout>>>, _EnvironmentKeyWritingModifier<Color?>>, _FlipForRTLEffect>, Spacer, ModifiedContent<<<opaque return type of View.accessibilityElement(children:)>>.0, AccessibilityAttachmentModifier>)>>(v37, v62 + *(v66 + 64), &_s7SwiftUI15ModifiedContentVyAA4ViewPAAE20accessibilityElement8childrenQrAA26AccessibilityChildBehaviorV_tFQOyAeAE11buttonStyleyQrqd__AA015PrimitiveButtonM0Rd__lFQOyAA0O0VyACyACyACyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGAA011_ForegroundmT0VyAA5ColorVGGAA0i10AttachmentT0VGG_AA05PlainoM0VQo__Qo_A2_GMd);
  outlined init with copy of VStack<TupleView<(Text, ModifiedContent<ModifiedContent<Text, _EnvironmentKeyWritingModifier<Image.Scale>>, AccessibilityAttachmentModifier>?)>>(v94, &v99, &_s7SwiftUI15ModifiedContentVyACyAA5GroupVyAA012_ConditionalD0VyACyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGACyACyACyAiA18_AspectRatioLayoutVGAA06_FrameO0VGAA08_PaddingO0VGGGAKyAA5ColorVSgGGAA17_FlipForRTLEffectVGMd);
  outlined destroy of ModifiedContent<<<opaque return type of View.accessibilityElement(children:)>>.0, AccessibilityAttachmentModifier>(v56, &_s7SwiftUI15ModifiedContentVyAA4ViewPAAE20accessibilityElement8childrenQrAA26AccessibilityChildBehaviorV_tFQOyAeAE11buttonStyleyQrqd__AA015PrimitiveButtonM0Rd__lFQOyAA0O0VyACyACyACyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGAA011_ForegroundmT0VyAA5ColorVGGAA0i10AttachmentT0VGG_AA05PlainoM0VQo__Qo_A2_GMd);
  outlined destroy of ModifiedContent<<<opaque return type of View.accessibilityElement(children:)>>.0, AccessibilityAttachmentModifier>(v37, &_s7SwiftUI15ModifiedContentVyAA4ViewPAAE20accessibilityElement8childrenQrAA26AccessibilityChildBehaviorV_tFQOyAeAE11buttonStyleyQrqd__AA015PrimitiveButtonM0Rd__lFQOyAA0O0VyACyACyACyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGAA011_ForegroundmT0VyAA5ColorVGGAA0i10AttachmentT0VGG_AA05PlainoM0VQo__Qo_A2_GMd);
  v103 = v90;
  v104 = v91;
  v105 = v92;
  v99 = v86;
  v100 = v87;
  v101 = v88;
  v102 = v89;
  v106 = v93;
  v107 = v58;
  v108 = v57;
  v109 = 1;
  outlined destroy of VStack<TupleView<(Text, ModifiedContent<ModifiedContent<Text, _EnvironmentKeyWritingModifier<Image.Scale>>, AccessibilityAttachmentModifier>?)>>(&v99, &_s7SwiftUI15ModifiedContentVyACyAA5GroupVyAA012_ConditionalD0VyACyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGACyACyACyAiA18_AspectRatioLayoutVGAA06_FrameO0VGAA08_PaddingO0VGGGAKyAA5ColorVSgGGAA17_FlipForRTLEffectVGMd);
}

void closure #1 in closure #1 in closure #1 in closure #2 in StandardActivityPickerItemRow.body.getter(uint64_t a1@<X8>)
{
  v2 = type metadata accessor for Image.ResizingMode();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v27 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI4FontV6DesignOSgMd);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v27 - v7;
  v9 = StandardActivityPickerItem.activityType.getter();
  v10 = [v9 symbolName];

  if (v10)
  {
    static String._unconditionallyBridgeFromObjectiveC(_:)();

    v11 = Image.init(_internalSystemName:)();
    if (one-time initialization token for displayImageSize != -1)
    {
      swift_once();
    }

    v12 = type metadata accessor for Font.Design();
    (*(*(v12 - 8) + 56))(v8, 1, 1, v12);
    v13 = static Font.system(size:weight:design:)();
    outlined destroy of VStack<TupleView<(Text, ModifiedContent<ModifiedContent<Text, _EnvironmentKeyWritingModifier<Image.Scale>>, AccessibilityAttachmentModifier>?)>>(v8, &_s7SwiftUI4FontV6DesignOSgMd);
    KeyPath = swift_getKeyPath();
    *&v34[5] = v29;
    v35 = v30;
    *v36 = v31[0];
    *&v36[9] = *(v31 + 9);
    *&v34[1] = v27;
    v41 = 0;
    v32 = v11;
    v33 = KeyPath;
    v34[0] = v13;
    *&v34[3] = v28;
    v37 = 0;
    goto LABEL_7;
  }

  v15 = StandardActivityPickerItem.activityType.getter();
  v16 = FIUIStaticScalableWorkoutIconImageWithPadding();

  if (v16)
  {
    v17 = [v16 imageWithRenderingMode_];

    Image.init(uiImage:)();
    FIUISizeForIconSize();
    (*(v3 + 104))(v5, *MEMORY[0x277CE0FE0], v2);
    v18 = Image.resizable(capInsets:resizingMode:)();
    (*(v3 + 8))(v5, v2);
    static Alignment.center.getter();
    _FrameLayout.init(width:height:alignment:)();

    v40 = 1;
    *&v39[6] = v27;
    *&v39[22] = v28;
    *&v39[38] = v29;
    v19 = static Edge.Set.top.getter();
    EdgeInsets.init(_all:)();
    v41 = 0;
    v38 = 1;
    v32 = v18;
    v33 = 0;
    LOWORD(v34[0]) = 1;
    *(v34 + 2) = *v39;
    *(&v34[2] + 2) = *&v39[16];
    *(&v34[4] + 2) = *&v39[32];
    v34[6] = *&v39[46];
    LOBYTE(v35) = v19;
    *(&v35 + 1) = v20;
    *v36 = v21;
    *&v36[8] = v22;
    *&v36[16] = v23;
    v36[24] = 0;
    v37 = 1;
LABEL_7:
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGMd);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyACyACyAA5ImageVAA18_AspectRatioLayoutVGAA06_FrameH0VGAA08_PaddingH0VGMd);
    lazy protocol witness table accessor for type ModifiedContent<Image, _EnvironmentKeyWritingModifier<Font?>> and conformance <> ModifiedContent<A, B>();
    lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<ModifiedContent<Image, _AspectRatioLayout>, _FrameLayout>, _PaddingLayout> and conformance <> ModifiedContent<A, B>();
    _ConditionalContent<>.init(storage:)();
    v24 = v47;
    *(a1 + 64) = v46;
    *(a1 + 80) = v24;
    *(a1 + 96) = v48;
    *(a1 + 112) = v49;
    v25 = v43;
    *a1 = v42;
    *(a1 + 16) = v25;
    v26 = v45;
    *(a1 + 32) = v44;
    *(a1 + 48) = v26;
    return;
  }

  __break(1u);
}

void closure #3 in closure #1 in closure #1 in closure #2 in StandardActivityPickerItemRow.body.getter()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI4FontV6DesignOSgMd);
  MEMORY[0x28223BE20](v0 - 8);
  v2 = v22 - v1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI19SymbolRenderingModeVSgMd);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = v22 - v4;
  Image.init(systemName:)();
  static SymbolRenderingMode.hierarchical.getter();
  v6 = type metadata accessor for SymbolRenderingMode();
  (*(*(v6 - 8) + 56))(v5, 0, 1, v6);
  v7 = Image.symbolRenderingMode(_:)();

  outlined destroy of VStack<TupleView<(Text, ModifiedContent<ModifiedContent<Text, _EnvironmentKeyWritingModifier<Image.Scale>>, AccessibilityAttachmentModifier>?)>>(v5, &_s7SwiftUI19SymbolRenderingModeVSgMd);
  if (one-time initialization token for ellipsisSize != -1)
  {
    swift_once();
  }

  v8 = type metadata accessor for Font.Design();
  (*(*(v8 - 8) + 56))(v2, 1, 1, v8);
  v9 = static Font.system(size:weight:design:)();
  outlined destroy of VStack<TupleView<(Text, ModifiedContent<ModifiedContent<Text, _EnvironmentKeyWritingModifier<Image.Scale>>, AccessibilityAttachmentModifier>?)>>(v2, &_s7SwiftUI4FontV6DesignOSgMd);
  KeyPath = swift_getKeyPath();
  v11 = StandardActivityPickerItem.topSuggested.getter();
  if (v11)
  {
    v12 = v11;
    WorkoutConfiguration.displayColor.getter();

LABEL_7:
    v16 = Color.init(uiColor:)();
    v22[2] = v7;
    v22[3] = KeyPath;
    v22[4] = v9;
    v22[5] = v16;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySSGMd);
    v17 = swift_allocObject();
    *(v17 + 16) = xmmword_20CB5EA80;
    *(v17 + 32) = 0xD000000000000016;
    *(v17 + 40) = 0x800000020CB994A0;
    v18 = StandardActivityPickerItem.activityType.getter();
    v19 = FIUIWorkoutActivityType.accessibilityIdentifierString.getter();
    v21 = v20;

    *(v17 + 48) = v19;
    *(v17 + 56) = v21;
    strcpy((v17 + 64), "ConfigButton");
    *(v17 + 77) = 0;
    *(v17 + 78) = -5120;
    v22[1] = v17;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySSGMd);
    lazy protocol witness table accessor for type VStack<TupleView<(HStack<TupleView<(ModifiedContent<ModifiedContent<Group<_ConditionalContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Font?>>, ModifiedContent<ModifiedContent<ModifiedContent<Image, _AspectRatioLayout>, _FrameLayout>, _PaddingLayout>>>, _EnvironmentKeyWritingModifier<Color?>>, _FlipForRTLEffect>, Spacer, ModifiedContent<<<opaque return type of View.accessibilityElement(children:)>>.0, AccessibilityAttachmentModifier>)>>, VStack<TupleView<(Text, ModifiedContent<ModifiedContent<Text, _EnvironmentKeyWritingModifier<Image.Scale>>, AccessibilityAttachmentModifier>?)>>)>> and conformance VStack<A>(&lazy protocol witness table cache variable for type [String] and conformance [A], &_sSaySSGMd);
    BidirectionalCollection<>.joined(separator:)();

    __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyACyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGAA016_ForegroundStyleI0VyAA5ColorVGGMd);
    lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Font?>>, _ForegroundStyleModifier<Color>> and conformance <> ModifiedContent<A, B>();
    View.accessibilityIdentifier(_:)();

    return;
  }

  v13 = [objc_opt_self() keyColors];
  if (v13)
  {
    v14 = v13;
    v15 = [v13 nonGradientTextColor];

    if (v15)
    {
      goto LABEL_7;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
}

uint64_t closure #2 in closure #1 in closure #1 in closure #2 in StandardActivityPickerItemRow.body.getter(uint64_t a1)
{
  v2 = *(a1 + 8);
  v1 = *(a1 + 16);
  v3 = *(a1 + 24);
  v11 = v2;
  v7 = v2;
  v8 = v1;
  v9 = v3;
  outlined init with copy of Transaction(&v11, v5);

  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI7BindingVySbGMd);
  MEMORY[0x20F30B100](&v10);
  v5[0] = v2;
  v5[1] = v1;
  v6 = v3;
  Binding.wrappedValue.setter();
  outlined destroy of Transaction(&v11);
}

uint64_t closure #2 in closure #1 in closure #2 in StandardActivityPickerItemRow.body.getter@<X0>(_OWORD *a1@<X0>, uint64_t *a2@<X8>)
{
  v109 = a2;
  v3 = type metadata accessor for LocalizedStringKey.StringInterpolation();
  MEMORY[0x28223BE20](v3 - 8);
  v102 = &v94[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v99 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyAA4TextVAA30_EnvironmentKeyWritingModifierVyAA5ImageV5ScaleOGGMd);
  MEMORY[0x28223BE20](v99);
  v100 = &v94[-v5];
  v106 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyACyAA4TextVAA30_EnvironmentKeyWritingModifierVyAA5ImageV5ScaleOGGAA023AccessibilityAttachmentI0VGMd);
  v105 = *(v106 - 8);
  MEMORY[0x28223BE20](v106);
  v98 = &v94[-v6];
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyACyAA4TextVAA30_EnvironmentKeyWritingModifierVyAA5ImageV5ScaleOGGAA023AccessibilityAttachmentI0VGSgMd);
  MEMORY[0x28223BE20](v7 - 8);
  v108 = &v94[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v9);
  v107 = &v94[-v10];
  v11 = type metadata accessor for Font.Leading();
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v14 = &v94[-((v13 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v101 = a1;
  v15 = StandardActivityPickerItem.activityType.getter();
  v16 = [v15 localizedName];

  v17 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v19 = v18;

  *&v110 = v17;
  *(&v110 + 1) = v19;
  v97 = lazy protocol witness table accessor for type String and conformance String();
  v20 = Text.init<A>(_:)();
  v22 = v21;
  v24 = v23;
  static Font.body.getter();
  (*(v12 + 104))(v14, *MEMORY[0x277CE0A10], v11);
  Font.leading(_:)();

  (*(v12 + 8))(v14, v11);
  v25 = Text.font(_:)();
  v27 = v26;
  v29 = v28;

  outlined consume of Text.Storage(v20, v22, v24 & 1);

  static Font.Weight.bold.getter();
  v30 = Text.fontWeight(_:)();
  v103 = v31;
  LODWORD(v33) = v32;
  v35 = v34;
  outlined consume of Text.Storage(v25, v27, v29 & 1);

  v36 = StandardActivityPickerItem.topSuggested.getter();
  v104 = v30;
  if (!v36)
  {
    v64 = 1;
    v65 = v107;
LABEL_14:
    (*(v105 + 56))(v65, v64, 1, v106);
    v85 = v108;
    outlined init with copy of VStack<TupleView<(Text, ModifiedContent<ModifiedContent<Text, _EnvironmentKeyWritingModifier<Image.Scale>>, AccessibilityAttachmentModifier>?)>>(v65, v108, &_s7SwiftUI15ModifiedContentVyACyAA4TextVAA30_EnvironmentKeyWritingModifierVyAA5ImageV5ScaleOGGAA023AccessibilityAttachmentI0VGSgMd);
    v86 = v109;
    v87 = v104;
    v88 = v103;
    *v109 = v104;
    v86[1] = v88;
    v89 = v33 & 1;
    *(v86 + 16) = v89;
    v86[3] = v35;
    v90 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI4TextV_AA15ModifiedContentVyAEyAcA30_EnvironmentKeyWritingModifierVyAA5ImageV5ScaleOGGAA023AccessibilityAttachmentI0VGSgtMd);
    outlined init with copy of VStack<TupleView<(Text, ModifiedContent<ModifiedContent<Text, _EnvironmentKeyWritingModifier<Image.Scale>>, AccessibilityAttachmentModifier>?)>>(v85, v86 + *(v90 + 48), &_s7SwiftUI15ModifiedContentVyACyAA4TextVAA30_EnvironmentKeyWritingModifierVyAA5ImageV5ScaleOGGAA023AccessibilityAttachmentI0VGSgMd);
    outlined copy of Text.Storage(v87, v88, v89);

    outlined destroy of VStack<TupleView<(Text, ModifiedContent<ModifiedContent<Text, _EnvironmentKeyWritingModifier<Image.Scale>>, AccessibilityAttachmentModifier>?)>>(v65, &_s7SwiftUI15ModifiedContentVyACyAA4TextVAA30_EnvironmentKeyWritingModifierVyAA5ImageV5ScaleOGGAA023AccessibilityAttachmentI0VGSgMd);
    outlined destroy of VStack<TupleView<(Text, ModifiedContent<ModifiedContent<Text, _EnvironmentKeyWritingModifier<Image.Scale>>, AccessibilityAttachmentModifier>?)>>(v85, &_s7SwiftUI15ModifiedContentVyACyAA4TextVAA30_EnvironmentKeyWritingModifierVyAA5ImageV5ScaleOGGAA023AccessibilityAttachmentI0VGSgMd);
    outlined consume of Text.Storage(v87, v88, v89);
  }

  v95 = v33;

  LocalizedStringKey.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v37._countAndFlagsBits = 0;
  v37._object = 0xE000000000000000;
  LocalizedStringKey.StringInterpolation.appendLiteral(_:)(v37);
  v38 = v101;
  v39 = v101[3];
  v112 = v101[2];
  v113 = v39;
  v40 = v101[5];
  v114 = v101[4];
  v115 = v40;
  v41 = v101[1];
  v110 = *v101;
  v111 = v41;
  StandardActivityPickerItemRow.configurationImage.getter();
  LocalizedStringKey.StringInterpolation.appendInterpolation(_:)();

  v42._countAndFlagsBits = 32;
  v42._object = 0xE100000000000000;
  LocalizedStringKey.StringInterpolation.appendLiteral(_:)(v42);
  v43 = *(v38 + 4);
  if (!v43)
  {
    goto LABEL_22;
  }

  v44 = v43;
  v45 = dispatch thunk of StandardActivityPickerItem.detail(formattingManager:)();
  v47 = v46;
  v101 = v44;

  v48._countAndFlagsBits = v45;
  v48._object = v47;
  LocalizedStringKey.StringInterpolation.appendInterpolation(_:)(v48);

  v49._countAndFlagsBits = 0;
  v49._object = 0xE000000000000000;
  LocalizedStringKey.StringInterpolation.appendLiteral(_:)(v49);
  LocalizedStringKey.init(stringInterpolation:)();
  v50 = Text.init(_:tableName:bundle:comment:)();
  v52 = v51;
  v54 = v53;
  v55 = StandardActivityPickerItem.topSuggested.getter();
  v96 = v35;
  if (!v55)
  {
    goto LABEL_7;
  }

  v56 = v55;
  type metadata accessor for IntervalWorkoutConfiguration();
  if (!swift_dynamicCastClass())
  {
    type metadata accessor for MultiSportWorkoutConfiguration();
    if (!swift_dynamicCastClass())
    {
      type metadata accessor for GoalWorkoutConfiguration();
      if (swift_dynamicCastClass())
      {
        v92 = GoalWorkoutConfiguration.goal.getter();
        v93 = [v92 goalTypeIdentifier];

        if (!v93)
        {
          goto LABEL_7;
        }
      }

      else
      {
      }

      static Font.body.getter();
      Font.lowercaseSmallCaps()();

      goto LABEL_8;
    }
  }

LABEL_7:
  static Font.body.getter();
LABEL_8:
  v57 = Text.font(_:)();
  v59 = v58;
  v61 = v60;

  outlined consume of Text.Storage(v50, v52, v54 & 1);

  v62 = StandardActivityPickerItem.topSuggested.getter();
  if (v62)
  {
    v63 = v62;
    WorkoutConfiguration.displayColor.getter();

LABEL_13:
    Color.init(uiColor:)();
    v69 = Text.foregroundColor(_:)();
    v71 = v70;
    v73 = v72;
    v75 = v74;
    outlined consume of Text.Storage(v57, v59, v61 & 1);

    v76 = v100;
    v77 = &v100[*(v99 + 36)];
    v78 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI30_EnvironmentKeyWritingModifierVyAA5ImageV5ScaleOGMd) + 28);
    v79 = *MEMORY[0x277CE1050];
    v80 = type metadata accessor for Image.Scale();
    (*(*(v80 - 8) + 104))(v77 + v78, v79, v80);
    *v77 = swift_getKeyPath();
    *v76 = v69;
    *(v76 + 8) = v71;
    *(v76 + 16) = v73 & 1;
    *(v76 + 24) = v75;
    v81 = v101;
    v82 = dispatch thunk of StandardActivityPickerItem.detail(formattingManager:)();
    v33 = v83;

    *&v110 = v82;
    *(&v110 + 1) = v33;
    lazy protocol witness table accessor for type ModifiedContent<Text, _EnvironmentKeyWritingModifier<Image.Scale>> and conformance <> ModifiedContent<A, B>();
    v84 = v98;
    View.accessibilityLabel<A>(_:)();

    outlined destroy of VStack<TupleView<(Text, ModifiedContent<ModifiedContent<Text, _EnvironmentKeyWritingModifier<Image.Scale>>, AccessibilityAttachmentModifier>?)>>(v76, &_s7SwiftUI15ModifiedContentVyAA4TextVAA30_EnvironmentKeyWritingModifierVyAA5ImageV5ScaleOGGMd);
    v65 = v107;
    outlined init with take of ModifiedContent<ModifiedContent<Text, _EnvironmentKeyWritingModifier<Image.Scale>>, AccessibilityAttachmentModifier>(v84, v107);
    v64 = 0;
    v35 = v96;
    LOBYTE(v33) = v95;
    goto LABEL_14;
  }

  v66 = [objc_opt_self() keyColors];
  if (v66)
  {
    v67 = v66;
    v68 = [v66 nonGradientTextColor];

    if (v68)
    {
      goto LABEL_13;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
LABEL_22:
  _sSo21FIUIFormattingManagerCMaTm_9(0, &lazy cache variable for type metadata for FIUIFormattingManager);
  _sSo21FIUIFormattingManagerCAB7Combine16ObservableObject9WorkoutUIWlTm_5(&lazy protocol witness table cache variable for type FIUIFormattingManager and conformance FIUIFormattingManager, &lazy cache variable for type metadata for FIUIFormattingManager);
  result = EnvironmentObject.error()();
  __break(1u);
  return result;
}

uint64_t getEnumTagSinglePayload for StandardActivityPickerItemRow(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 96))
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

uint64_t storeEnumTagSinglePayload for StandardActivityPickerItemRow(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 88) = 0;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 96) = 1;
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

    *(result + 96) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t outlined init with take of ModifiedContent<ModifiedContent<Text, _EnvironmentKeyWritingModifier<Image.Scale>>, AccessibilityAttachmentModifier>(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyACyAA4TextVAA30_EnvironmentKeyWritingModifierVyAA5ImageV5ScaleOGGAA023AccessibilityAttachmentI0VGMd);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Font?>>, _ForegroundStyleModifier<Color>>, AccessibilityAttachmentModifier> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Font?>>, _ForegroundStyleModifier<Color>>, AccessibilityAttachmentModifier> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Font?>>, _ForegroundStyleModifier<Color>>, AccessibilityAttachmentModifier> and conformance <> ModifiedContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyACyACyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGAA016_ForegroundStyleI0VyAA5ColorVGGAA023AccessibilityAttachmentI0VGMd);
    lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Font?>>, _ForegroundStyleModifier<Color>> and conformance <> ModifiedContent<A, B>();
    _s7SwiftUI16PlainButtonStyleVAcA09PrimitivedE0AAWlTm_6(&lazy protocol witness table cache variable for type AccessibilityAttachmentModifier and conformance AccessibilityAttachmentModifier, MEMORY[0x277CDE470]);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Font?>>, _ForegroundStyleModifier<Color>>, AccessibilityAttachmentModifier> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Font?>>, _ForegroundStyleModifier<Color>> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Font?>>, _ForegroundStyleModifier<Color>> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Font?>>, _ForegroundStyleModifier<Color>> and conformance <> ModifiedContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyACyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGAA016_ForegroundStyleI0VyAA5ColorVGGMd);
    lazy protocol witness table accessor for type ModifiedContent<Image, _EnvironmentKeyWritingModifier<Font?>> and conformance <> ModifiedContent<A, B>();
    lazy protocol witness table accessor for type VStack<TupleView<(HStack<TupleView<(ModifiedContent<ModifiedContent<Group<_ConditionalContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Font?>>, ModifiedContent<ModifiedContent<ModifiedContent<Image, _AspectRatioLayout>, _FrameLayout>, _PaddingLayout>>>, _EnvironmentKeyWritingModifier<Color?>>, _FlipForRTLEffect>, Spacer, ModifiedContent<<<opaque return type of View.accessibilityElement(children:)>>.0, AccessibilityAttachmentModifier>)>>, VStack<TupleView<(Text, ModifiedContent<ModifiedContent<Text, _EnvironmentKeyWritingModifier<Image.Scale>>, AccessibilityAttachmentModifier>?)>>)>> and conformance VStack<A>(&lazy protocol witness table cache variable for type _ForegroundStyleModifier<Color> and conformance _ForegroundStyleModifier<A>, &_s7SwiftUI24_ForegroundStyleModifierVyAA5ColorVGMd);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Font?>>, _ForegroundStyleModifier<Color>> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

uint64_t lazy protocol witness table accessor for type VStack<TupleView<(HStack<TupleView<(ModifiedContent<ModifiedContent<Group<_ConditionalContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Font?>>, ModifiedContent<ModifiedContent<ModifiedContent<Image, _AspectRatioLayout>, _FrameLayout>, _PaddingLayout>>>, _EnvironmentKeyWritingModifier<Color?>>, _FlipForRTLEffect>, Spacer, ModifiedContent<<<opaque return type of View.accessibilityElement(children:)>>.0, AccessibilityAttachmentModifier>)>>, VStack<TupleView<(Text, ModifiedContent<ModifiedContent<Text, _EnvironmentKeyWritingModifier<Image.Scale>>, AccessibilityAttachmentModifier>?)>>)>> and conformance VStack<A>(unint64_t *a1, uint64_t *a2)
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

uint64_t objectdestroyTm_70()
{

  return swift_deallocObject();
}

uint64_t outlined init with copy of HStack<TupleView<(ModifiedContent<ModifiedContent<Group<_ConditionalContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Font?>>, ModifiedContent<ModifiedContent<ModifiedContent<Image, _AspectRatioLayout>, _FrameLayout>, _PaddingLayout>>>, _EnvironmentKeyWritingModifier<Color?>>, _FlipForRTLEffect>, Spacer, ModifiedContent<<<opaque return type of View.accessibilityElement(children:)>>.0, AccessibilityAttachmentModifier>)>>(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(a3);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t outlined init with copy of VStack<TupleView<(Text, ModifiedContent<ModifiedContent<Text, _EnvironmentKeyWritingModifier<Image.Scale>>, AccessibilityAttachmentModifier>?)>>(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(a3);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t outlined destroy of VStack<TupleView<(Text, ModifiedContent<ModifiedContent<Text, _EnvironmentKeyWritingModifier<Image.Scale>>, AccessibilityAttachmentModifier>?)>>(uint64_t a1, uint64_t *a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(a2);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t getEnumTagSinglePayload for EffortGraphLayout(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 24))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for EffortGraphLayout(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
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

  *(result + 24) = v3;
  return result;
}

Swift::Double __swiftcall EffortGraphLayout.xStartForLevel(_:)(Swift::Int a1)
{
  v2 = 3.0;
  if ((a1 - 1) <= 7)
  {
    v2 = dbl_20CB83488[a1 - 1];
  }

  return (a1 + -1.0) * ((*v1 + v1[2] * -3.0) / 10.0) + v1[2] * v2;
}

double EffortGraphLayout.horizontalUnitDistance(level:)(uint64_t a1)
{
  v2 = 3.0;
  if ((a1 - 1) <= 7)
  {
    v2 = dbl_20CB83488[a1 - 1];
  }

  return ((a1 + -1.0) * ((*v1 - v1[2] * 3.0) / 10.0) + v1[2] * v2) / (v1[2] * 3.0 + (*v1 - v1[2] * 3.0) / 10.0 * 9.0);
}

uint64_t static RaceChartMarkProvider.onRoutePositionMark(x:chartProperties:performanceColor:pointOuterColor:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X2>, uint64_t a4@<X8>, double a5@<D0>)
{
  v99 = a3;
  v90 = a2;
  v112 = a4;
  v111 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s6Charts12ChartContentPAAE9lineStyleyQr7SwiftUI06StrokeE0VFQOyAcAE010foregroundE0yQrqd__AE05ShapeE0Rd__lFQOyAA8RuleMarkV_AE5ColorVQo__Qo__AcAE10annotation8position9alignment7spacing7contentQrAA18AnnotationPositionV_AE9AlignmentV12CoreGraphics7CGFloatVSgqd__yXEtAE4ViewRd__lFQOyAcAE6symbolA2_Qrqd__yXE_tAEA1_Rd__lFQOyAA05PointL0V_AE08ModifiedC0VyAE04FilljY0VyAE6CircleVAmE0hjY0VyA10_AmE05EmptyY0VGGAE12_FrameLayoutVGQo__A6_yAE5ImageVAE011_ForegroundE8ModifierVyAMGGQo_tMd);
  MEMORY[0x28223BE20](v111);
  v110 = v84 - v7;
  v108 = type metadata accessor for AnnotationPosition();
  v106 = *(v108 - 1);
  MEMORY[0x28223BE20](v108);
  v104 = v84 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v100 = type metadata accessor for PointMark();
  v98 = *(v100 - 8);
  MEMORY[0x28223BE20](v100);
  v96 = v84 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v103 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s6Charts12ChartContentPAAE6symbolADQrqd__yXE_t7SwiftUI4ViewRd__lFQOyAA9PointMarkV_AE08ModifiedC0VyAE09FillShapeG0VyAE6CircleVAE5ColorVAE06StrokelG0VyAnpE05EmptyG0VGGAE12_FrameLayoutVGQo_Md);
  v102 = *(v103 - 8);
  MEMORY[0x28223BE20](v103);
  v101 = v84 - v10;
  v109 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s6Charts12ChartContentPAAE10annotation8position9alignment7spacing7contentQrAA18AnnotationPositionV_7SwiftUI9AlignmentV12CoreGraphics7CGFloatVSgqd__yXEtAK4ViewRd__lFQOyAcAE6symbolASQrqd__yXE_tAkRRd__lFQOyAA9PointMarkV_AK08ModifiedC0VyAK09FillShapeQ0VyAK6CircleVAK5ColorVAK06StrokewQ0VyA_A1_AK05EmptyQ0VGGAK12_FrameLayoutVGQo__AWyAK5ImageVAK24_ForegroundStyleModifierVyA1_GGQo_Md);
  v107 = *(v109 - 8);
  MEMORY[0x28223BE20](v109);
  v105 = v84 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v115 = v84 - v13;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s6Charts14PlottableValueVySdGMd);
  MEMORY[0x28223BE20](v14 - 8);
  v84[1] = v84 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v18 = v84 - v17;
  MEMORY[0x28223BE20](v19);
  v21 = v84 - v20;
  v85 = type metadata accessor for RuleMark();
  v86 = *(v85 - 8);
  MEMORY[0x28223BE20](v85);
  v23 = v84 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v87 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s6Charts12ChartContentPAAE15foregroundStyleyQrqd__7SwiftUI05ShapeE0Rd__lFQOyAA8RuleMarkV_AE5ColorVQo_Md);
  v93 = *(v87 - 8);
  MEMORY[0x28223BE20](v87);
  v25 = v84 - v24;
  v114 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s6Charts12ChartContentPAAE9lineStyleyQr7SwiftUI06StrokeE0VFQOyAcAE010foregroundE0yQrqd__AE05ShapeE0Rd__lFQOyAA8RuleMarkV_AE5ColorVQo__Qo_Md);
  v97 = *(v114 - 8);
  MEMORY[0x28223BE20](v114);
  v113 = v84 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v27);
  v116 = v84 - v28;
  v95 = type metadata accessor for RaceChartPoint();
  v94 = *(v95 - 8);
  MEMORY[0x28223BE20](v95);
  v30 = v84 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  v84[0] = a1;
  RaceElevationChartProperties.clostestChartPointFor(_:)(v30, a5);
  RaceChartPoint.odometer_m.getter();
  v32 = v31;
  v33 = *(a1 + 48);
  RaceChartPoint.altitude_m.getter();
  v35 = v34;
  v89 = "l.decrease.circle.fill";
  LocalizedStringKey.init(stringLiteral:)();
  v121 = v32;
  static PlottableValue.value(_:_:)();

  LocalizedStringKey.init(stringLiteral:)();
  v121 = v33;
  static PlottableValue.value(_:_:)();

  v88 = "RACE_CHART_MARK_ODOMETER";
  LocalizedStringKey.init(stringLiteral:)();
  v121 = v35;
  static PlottableValue.value(_:_:)();

  v91 = v21;
  v92 = v18;
  RuleMark.init<A, B>(x:yStart:yEnd:)();
  v121 = v90;
  v36 = MEMORY[0x277CE0F78];
  v37 = MEMORY[0x277CBB450];
  v38 = MEMORY[0x277CE0F60];
  v39 = v85;
  ChartContent.foregroundStyle<A>(_:)();
  (*(v86 + 8))(v23, v39);
  StrokeStyle.init(lineWidth:lineCap:lineJoin:miterLimit:dash:dashPhase:)();
  v117 = v39;
  v118 = v36;
  v119 = v37;
  v120 = v38;
  swift_getOpaqueTypeConformance2();
  v40 = v87;
  ChartContent.lineStyle(_:)();
  outlined destroy of StrokeStyle(&v121);
  (*(v93 + 1))(v25, v40);
  v41 = *(v84[0] + 16);
  RaceChartPoint.odometer_m.getter();
  v43 = v42;
  v93 = v30;
  RaceChartPoint.altitude_m.getter();
  v45 = v44;
  type metadata accessor for FIUIWorkoutActivityType();
  v46 = static FIUIWorkoutActivityType.outdoorRun.getter();
  LOBYTE(v37) = static NSObject.== infix(_:_:)();

  if (v37)
  {
    v47 = 0xE300000000000000;
    v48 = 7238994;
LABEL_7:
    v53 = *static RacePlatterConstants.activityMarkerSize;
    v54 = unk_27C7EF280;
    v117 = 0x74756F5265636152;
    v118 = 0xEA00000000005F65;

    MEMORY[0x20F30BC00](v48, v47);

    MEMORY[0x20F30BC00](95, 0xE100000000000000);
    MEMORY[0x20F30BC00](v53, v54);

    v87 = Image.init(_:bundle:)();
    LocalizedStringKey.init(stringLiteral:)();
    v117 = v43;
    static PlottableValue.value(_:_:)();

    LocalizedStringKey.init(stringLiteral:)();
    v117 = v45;
    static PlottableValue.value(_:_:)();

    v55 = v96;
    v56 = PointMark.init<A, B>(x:y:)();
    MEMORY[0x28223BE20](v56);
    v57 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyAA13FillShapeViewVyAA6CircleVAA5ColorVAA06StrokefG0VyAgiA05EmptyG0VGGAA12_FrameLayoutVGMd);
    v58 = lazy protocol witness table accessor for type ModifiedContent<FillShapeView<Circle, Color, StrokeShapeView<Circle, Color, EmptyView>>, _FrameLayout> and conformance <> ModifiedContent<A, B>();
    v59 = v101;
    v60 = v100;
    ChartContent.symbol<A>(symbol:)();
    v61 = (*(v98 + 8))(v55, v60);
    v99 = v84;
    MEMORY[0x28223BE20](v61);
    v62 = v104;
    static AnnotationPosition.automatic.getter();
    static Alignment.center.getter();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyAA5ImageVAA24_ForegroundStyleModifierVyAA5ColorVGGMd);
    v117 = v60;
    v118 = v57;
    v119 = MEMORY[0x277CBB468];
    v120 = v58;
    swift_getOpaqueTypeConformance2();
    lazy protocol witness table accessor for type ModifiedContent<Image, _ForegroundStyleModifier<Color>> and conformance <> ModifiedContent<A, B>();
    v63 = v115;
    v64 = v103;
    ChartContent.annotation<A>(position:alignment:spacing:content:)();

    (*(v106 + 8))(v62, v108);
    (*(v102 + 8))(v59, v64);
    v65 = v97;
    v108 = *(v97 + 16);
    v67 = v113;
    v66 = v114;
    v108(v113, v116, v114);
    v68 = v107;
    v69 = *(v107 + 16);
    v70 = v105;
    v71 = v109;
    v69(v105, v63, v109);
    v72 = v110;
    v108(v110, v67, v66);
    v73 = v111;
    v74 = *(v111 + 48);
    v69(&v72[v74], v70, v71);
    v75 = v112;
    v76 = v114;
    (*(v65 + 32))(v112, v72, v114);
    (*(v68 + 32))(v75 + *(v73 + 48), &v72[v74], v71);
    v77 = *(v68 + 8);
    v77(v115, v71);
    v78 = *(v65 + 8);
    v78(v116, v76);
    (*(v94 + 8))(v93, v95);
    v77(v70, v71);
    return (v78)(v113, v76);
  }

  v49 = static FIUIWorkoutActivityType.outdoorCycle.getter();
  v50 = static NSObject.== infix(_:_:)();

  if (v50)
  {
    v47 = 0xE500000000000000;
    v48 = 0x656C637943;
    goto LABEL_7;
  }

  v51 = static FIUIWorkoutActivityType.outdoorWheelchairRun.getter();
  v52 = static NSObject.== infix(_:_:)();

  if (v52)
  {
    v47 = 0xE600000000000000;
    v48 = 0x6E61636C7556;
    goto LABEL_7;
  }

  v117 = 0;
  v118 = 0xE000000000000000;
  _StringGuts.grow(_:)(45);

  v117 = 0xD00000000000002BLL;
  v118 = 0x800000020CBA0F40;
  v80 = [v41 description];
  v81 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v83 = v82;

  MEMORY[0x20F30BC00](v81, v83);

  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

uint64_t closure #2 in static RaceChartMarkProvider.elevationFor(_:betweenStart:end:)()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s6Charts12BuilderTupleVyAA12ChartContentPAAE15foregroundStyleyQrqd__7SwiftUI05ShapeG0Rd__lFQOyAA8AreaMarkV_AG5ColorVQo__AeAEAFyQrqd__AgHRd__lFQOyAeAE04lineG0yQrAG06StrokeG0VFQOyAA04LineL0V_Qo__ALQo_QPGMd);
  lazy protocol witness table accessor for type BuilderTuple<Pack{<<opaque return type of ChartContent.foregroundStyle<A>(_:)>>.0, <<opaque return type of ChartContent.foregroundStyle<A>(_:)>>.0}> and conformance <each A> BuilderTuple<Pack{repeat A}>();
  return Plot.init(content:)();
}

uint64_t closure #1 in closure #2 in static RaceChartMarkProvider.elevationFor(_:betweenStart:end:)@<X0>(uint64_t a1@<X0>, void (*a2)(void)@<X1>, uint64_t a3@<X8>)
{
  v58 = a2;
  v72 = a3;
  v71 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s6Charts12ChartContentPAAE15foregroundStyleyQrqd__7SwiftUI05ShapeE0Rd__lFQOyAA8AreaMarkV_AE5ColorVQo__AcAEADyQrqd__AeFRd__lFQOyAcAE04lineE0yQrAE06StrokeE0VFQOyAA04LineJ0V_Qo__AJQo_tMd) - 8;
  MEMORY[0x28223BE20](v71);
  v70 = &v51 - v4;
  v64 = type metadata accessor for LineMark();
  v65 = *(v64 - 8);
  MEMORY[0x28223BE20](v64);
  v62 = &v51 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v67 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s6Charts12ChartContentPAAE9lineStyleyQr7SwiftUI06StrokeE0VFQOyAA8LineMarkV_Qo_Md);
  v69 = *(v67 - 8);
  MEMORY[0x28223BE20](v67);
  v63 = &v51 - v6;
  v68 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s6Charts12ChartContentPAAE15foregroundStyleyQrqd__7SwiftUI05ShapeE0Rd__lFQOyAcAE04lineE0yQrAE06StrokeE0VFQOyAA8LineMarkV_Qo__AE5ColorVQo_Md);
  v79 = *(v68 - 8);
  MEMORY[0x28223BE20](v68);
  v66 = &v51 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v78 = &v51 - v9;
  v77 = type metadata accessor for Color.RGBColorSpace();
  v81 = *(v77 - 8);
  MEMORY[0x28223BE20](v77);
  v74 = &v51 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s6Charts14PlottableValueVySSGMd);
  MEMORY[0x28223BE20](v11 - 8);
  v73 = &v51 - v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s6Charts14PlottableValueVySdGMd);
  MEMORY[0x28223BE20](v13 - 8);
  v56 = &v51 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  MEMORY[0x28223BE20](v16);
  v53 = &v51 - v17;
  v59 = type metadata accessor for AreaMark();
  v60 = *(v59 - 8);
  MEMORY[0x28223BE20](v59);
  v52 = &v51 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v61 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s6Charts12ChartContentPAAE15foregroundStyleyQrqd__7SwiftUI05ShapeE0Rd__lFQOyAA8AreaMarkV_AE5ColorVQo_Md);
  v76 = *(v61 - 8);
  MEMORY[0x28223BE20](v61);
  v75 = &v51 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v20);
  v80 = &v51 - v21;
  v57 = "l.decrease.circle.fill";
  LocalizedStringKey.init(stringLiteral:)();
  v54 = a1;
  RaceChartPoint.odometer_m.getter();
  v85 = v22;
  static PlottableValue.value(_:_:)();

  v55 = "RACE_CHART_MARK_ODOMETER";
  LocalizedStringKey.init(stringLiteral:)();
  v85 = *(v58 + 6);
  static PlottableValue.value(_:_:)();

  LocalizedStringKey.init(stringLiteral:)();
  RaceChartPoint.altitude_m.getter();
  v85 = v23;
  static PlottableValue.value(_:_:)();

  LocalizedStringKey.init(stringLiteral:)();
  v85 = 0;
  v86 = 0xE000000000000000;
  MEMORY[0x20F30BC00](0x6F69746176656C45, 0xEA0000000000206ELL);
  Double.write<A>(to:)();
  static PlottableValue.value(_:_:)();

  v24 = v52;
  AreaMark.init<A, B, C>(x:yStart:yEnd:series:)();
  LODWORD(v56) = *MEMORY[0x277CE0EE0];
  v25 = *(v81 + 104);
  v81 += 104;
  v58 = v25;
  v25(v74);
  v85 = Color.init(_:red:green:blue:opacity:)();
  v26 = v59;
  ChartContent.foregroundStyle<A>(_:)();

  (*(v60 + 8))(v24, v26);
  LocalizedStringKey.init(stringLiteral:)();
  RaceChartPoint.odometer_m.getter();
  v85 = v27;
  static PlottableValue.value(_:_:)();

  LocalizedStringKey.init(stringLiteral:)();
  RaceChartPoint.altitude_m.getter();
  v85 = v28;
  static PlottableValue.value(_:_:)();

  LocalizedStringKey.init(stringLiteral:)();
  v85 = 0;
  v86 = 0xE000000000000000;
  MEMORY[0x20F30BC00](0x6F69746176656C45, 0xEA0000000000206ELL);
  Double.write<A>(to:)();
  static PlottableValue.value(_:_:)();

  v29 = v62;
  LineMark.init<A, B, C>(x:y:series:)();
  StrokeStyle.init(lineWidth:lineCap:lineJoin:miterLimit:dash:dashPhase:)();
  v30 = MEMORY[0x277CBB438];
  v31 = v63;
  v32 = v64;
  ChartContent.lineStyle(_:)();
  outlined destroy of StrokeStyle(&v85);
  (*(v65 + 8))(v29, v32);
  (v58)(v74, v56, v77);
  v33 = Color.init(_:red:green:blue:opacity:)();
  v83 = v30;
  v84 = v33;
  v82 = v32;
  swift_getOpaqueTypeConformance2();
  v34 = v78;
  v35 = v67;
  ChartContent.foregroundStyle<A>(_:)();

  (*(v69 + 8))(v31, v35);
  v36 = v75;
  v37 = *(v76 + 16);
  v38 = v61;
  v37(v75, v80, v61);
  v39 = *(v79 + 16);
  v40 = v66;
  v41 = v68;
  v39(v66, v34, v68);
  v42 = v70;
  v37(v70, v36, v38);
  v43 = v71;
  v44 = *(v71 + 56);
  v39(&v42[v44], v40, v41);
  v45 = v76;
  v46 = v72;
  (*(v76 + 32))(v72, v42, v38);
  v47 = v79;
  (*(v79 + 32))(v46 + *(v43 + 56), &v42[v44], v41);
  v48 = *(v47 + 8);
  v48(v78, v41);
  v49 = *(v45 + 8);
  v49(v80, v38);
  v48(v40, v41);
  return (v49)(v75, v38);
}

uint64_t closure #3 in static RaceChartMarkProvider.elevationFor(_:betweenStart:end:)()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s6Charts14PlottableValueVySdGMd);
  MEMORY[0x28223BE20](v0 - 8);
  MEMORY[0x28223BE20](v1);
  MEMORY[0x28223BE20](v2);
  MEMORY[0x28223BE20](v3);
  LocalizedStringKey.init(stringLiteral:)();
  static PlottableValue.value(_:_:)();

  LocalizedStringKey.init(stringLiteral:)();
  static PlottableValue.value(_:_:)();

  LocalizedStringKey.init(stringLiteral:)();
  static PlottableValue.value(_:_:)();

  LocalizedStringKey.init(stringLiteral:)();
  static PlottableValue.value(_:_:)();

  return RectangleMark.init<A, B>(xStart:xEnd:yStart:yEnd:)();
}

BOOL closure #1 in static RaceChartMarkProvider.coloredRouteElevationBetweenMarkers(_:behindPosition:aheadPosition:visibleDomain:gradient:)()
{
  RaceChartPoint.odometer_m.getter();
  v1 = v0;
  RaceChartPoint.odometer_m.getter();
  if (v1 > v2)
  {
    return 0;
  }

  RaceChartPoint.odometer_m.getter();
  v5 = v4;
  RaceChartPoint.odometer_m.getter();
  return v5 <= v6;
}

uint64_t closure #2 in static RaceChartMarkProvider.coloredRouteElevationBetweenMarkers(_:behindPosition:aheadPosition:visibleDomain:gradient:)()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s6Charts12BuilderTupleVyAA8AreaMarkV_AA12ChartContentPAAE9lineStyleyQr7SwiftUI06StrokeI0VFQOyAA04LineE0V_Qo_QPGMd);
  lazy protocol witness table accessor for type BuilderTuple<Pack{AreaMark, <<opaque return type of ChartContent.lineStyle(_:)>>.0}> and conformance <each A> BuilderTuple<Pack{repeat A}>();
  return Plot.init(content:)();
}

uint64_t closure #1 in closure #2 in static RaceChartMarkProvider.coloredRouteElevationBetweenMarkers(_:behindPosition:aheadPosition:visibleDomain:gradient:)@<X0>(unint64_t a1@<X1>, uint64_t a2@<X8>)
{
  v40 = a1;
  v49 = a2;
  v48 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s6Charts8AreaMarkV_AA12ChartContentPAAE9lineStyleyQr7SwiftUI06StrokeG0VFQOyAA04LineC0V_Qo_tMd) - 8;
  MEMORY[0x28223BE20](v48);
  v47 = v39 - v2;
  v44 = type metadata accessor for LineMark();
  v46 = *(v44 - 8);
  MEMORY[0x28223BE20](v44);
  v42 = v39 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s6Charts12ChartContentPAAE9lineStyleyQr7SwiftUI06StrokeE0VFQOyAA8LineMarkV_Qo_Md);
  v54 = *(v45 - 8);
  MEMORY[0x28223BE20](v45);
  v43 = v39 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v53 = v39 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s6Charts14PlottableValueVySSGMd);
  MEMORY[0x28223BE20](v7 - 8);
  v39[3] = v39 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s6Charts14PlottableValueVySdGMd);
  MEMORY[0x28223BE20](v9 - 8);
  v39[1] = v39 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  MEMORY[0x28223BE20](v12);
  v50 = v39 - v13;
  v41 = type metadata accessor for AreaMark();
  v52 = *(v41 - 8);
  MEMORY[0x28223BE20](v41);
  v51 = v39 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v55 = v39 - v16;
  v39[2] = "l.decrease.circle.fill";
  LocalizedStringKey.init(stringLiteral:)();
  RaceChartPoint.odometer_m.getter();
  v56 = v17;
  static PlottableValue.value(_:_:)();

  LocalizedStringKey.init(stringLiteral:)();
  v56 = *(v40 + 48);
  static PlottableValue.value(_:_:)();

  LocalizedStringKey.init(stringLiteral:)();
  RaceChartPoint.altitude_m.getter();
  v56 = v18;
  static PlottableValue.value(_:_:)();

  LocalizedStringKey.init(stringLiteral:)();
  v40 = 0x800000020CBA0F70;
  v39[0] = 0xD000000000000017;
  v56 = 0xD000000000000017;
  v57 = 0x800000020CBA0F70;
  static PlottableValue.value(_:_:)();

  AreaMark.init<A, B, C>(x:yStart:yEnd:series:)();
  LocalizedStringKey.init(stringLiteral:)();
  RaceChartPoint.odometer_m.getter();
  v56 = v19;
  static PlottableValue.value(_:_:)();

  LocalizedStringKey.init(stringLiteral:)();
  RaceChartPoint.altitude_m.getter();
  v56 = v20;
  static PlottableValue.value(_:_:)();

  LocalizedStringKey.init(stringLiteral:)();
  v56 = v39[0];
  v57 = v40;
  static PlottableValue.value(_:_:)();

  v21 = v42;
  LineMark.init<A, B, C>(x:y:series:)();
  StrokeStyle.init(lineWidth:lineCap:lineJoin:miterLimit:dash:dashPhase:)();
  v22 = v53;
  v23 = v44;
  ChartContent.lineStyle(_:)();
  outlined destroy of StrokeStyle(&v56);
  (*(v46 + 8))(v21, v23);
  v24 = v51;
  v25 = *(v52 + 16);
  v26 = v41;
  v25(v51, v55, v41);
  v27 = *(v54 + 16);
  v28 = v43;
  v29 = v45;
  v27(v43, v22, v45);
  v30 = v47;
  v25(v47, v24, v26);
  v31 = v48;
  v32 = *(v48 + 56);
  v27(&v30[v32], v28, v29);
  v33 = v52;
  v34 = v49;
  (*(v52 + 32))(v49, v30, v26);
  v35 = v54;
  (*(v54 + 32))(v34 + *(v31 + 56), &v30[v32], v29);
  v36 = *(v35 + 8);
  v36(v53, v29);
  v37 = *(v33 + 8);
  v37(v55, v26);
  v36(v28, v29);
  return (v37)(v51, v26);
}

uint64_t closure #1 in static RaceChartMarkProvider.tickMarksFor(_:userPosition:ghostPosition:)@<X0>(double *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>, uint64_t a4@<D0>)
{
  v28 = a2;
  v35 = a3;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s6Charts14PlottableValueVySdGMd);
  MEMORY[0x28223BE20](v6 - 8);
  v27[1] = v27 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  MEMORY[0x28223BE20](v9);
  v29 = type metadata accessor for RuleMark();
  v31 = *(v29 - 8);
  MEMORY[0x28223BE20](v29);
  v11 = v27 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s6Charts12ChartContentPAAE15foregroundStyleyQrqd__7SwiftUI05ShapeE0Rd__lFQOyAA8RuleMarkV_AE5ColorVQo_Md);
  v32 = *(v30 - 8);
  MEMORY[0x28223BE20](v30);
  v13 = v27 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s6Charts12ChartContentPAAE9lineStyleyQr7SwiftUI06StrokeE0VFQOyAcAE010foregroundE0yQrqd__AE05ShapeE0Rd__lFQOyAA8RuleMarkV_AE5ColorVQo__Qo_Md);
  v33 = *(v14 - 8);
  v34 = v14;
  MEMORY[0x28223BE20](v14);
  v16 = v27 - v15;
  v17 = *a1;
  LocalizedStringKey.init(stringLiteral:)();
  v18 = v17 + 0.0;
  if (v17 != INFINITY)
  {
    *&v18 += (*&v18 >> 63) | 1;
  }

  *v40 = v18;
  static PlottableValue.value(_:_:)();

  LocalizedStringKey.init(stringLiteral:)();
  v40[0] = *(v28 + 48);
  static PlottableValue.value(_:_:)();

  LocalizedStringKey.init(stringLiteral:)();
  v40[0] = a4;
  static PlottableValue.value(_:_:)();

  RuleMark.init<A, B>(x:yStart:yEnd:)();
  v40[0] = static Color.white.getter();
  v19 = MEMORY[0x277CE0F78];
  v20 = MEMORY[0x277CBB450];
  v21 = MEMORY[0x277CE0F60];
  v22 = v29;
  ChartContent.foregroundStyle<A>(_:)();

  (*(v31 + 8))(v11, v22);
  StrokeStyle.init(lineWidth:lineCap:lineJoin:miterLimit:dash:dashPhase:)();
  v36 = v22;
  v37 = v19;
  v38 = v20;
  v39 = v21;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v24 = v30;
  ChartContent.lineStyle(_:)();
  outlined destroy of StrokeStyle(v40);
  (*(v32 + 8))(v13, v24);
  v36 = v24;
  v37 = OpaqueTypeConformance2;
  swift_getOpaqueTypeConformance2();
  v25 = v34;
  ChartContent.opacity(_:)();
  return (*(v33 + 8))(v16, v25);
}

double closure #1 in static RaceChartMarkProvider.pointMarkFor(x:y:innerColor:outerColor:)@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  StrokeStyle.init(lineWidth:lineCap:lineJoin:miterLimit:dash:dashPhase:)();

  v6 = static Alignment.center.getter();
  v8 = v7;
  v9 = static Alignment.center.getter();
  v11 = v10;

  static Alignment.center.getter();
  _FrameLayout.init(width:height:alignment:)();
  *a3 = a2;
  *(a3 + 8) = 256;
  *(a3 + 16) = v13;
  *(a3 + 24) = v14;
  *(a3 + 32) = v15;
  *(a3 + 40) = v16;
  *(a3 + 48) = v17;
  *(a3 + 56) = a1;
  *(a3 + 64) = 256;
  *(a3 + 72) = v6;
  *(a3 + 80) = v8;
  *(a3 + 88) = v9;
  *(a3 + 96) = v11;
  *(a3 + 104) = v18;
  *(a3 + 120) = v19;
  result = *&v20;
  *(a3 + 136) = v20;
  return result;
}

uint64_t partial apply for closure #1 in static RaceChartMarkProvider.pinForActivityType(_:color:outerColor:x:y:)@<X0>(void *a1@<X8>)
{
  v2 = *(v1 + 24);
  *a1 = *(v1 + 16);
  a1[1] = v2;
}

unint64_t lazy protocol witness table accessor for type BuilderTuple<Pack{AreaMark, <<opaque return type of ChartContent.lineStyle(_:)>>.0}> and conformance <each A> BuilderTuple<Pack{repeat A}>()
{
  result = lazy protocol witness table cache variable for type BuilderTuple<Pack{AreaMark, <<opaque return type of ChartContent.lineStyle(_:)>>.0}> and conformance <each A> BuilderTuple<Pack{repeat A}>;
  if (!lazy protocol witness table cache variable for type BuilderTuple<Pack{AreaMark, <<opaque return type of ChartContent.lineStyle(_:)>>.0}> and conformance <each A> BuilderTuple<Pack{repeat A}>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s6Charts12BuilderTupleVyAA8AreaMarkV_AA12ChartContentPAAE9lineStyleyQr7SwiftUI06StrokeI0VFQOyAA04LineE0V_Qo_QPGMd);
    type metadata accessor for LineMark();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type BuilderTuple<Pack{AreaMark, <<opaque return type of ChartContent.lineStyle(_:)>>.0}> and conformance <each A> BuilderTuple<Pack{repeat A}>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type BuilderTuple<Pack{<<opaque return type of ChartContent.foregroundStyle<A>(_:)>>.0, <<opaque return type of ChartContent.foregroundStyle<A>(_:)>>.0}> and conformance <each A> BuilderTuple<Pack{repeat A}>()
{
  result = lazy protocol witness table cache variable for type BuilderTuple<Pack{<<opaque return type of ChartContent.foregroundStyle<A>(_:)>>.0, <<opaque return type of ChartContent.foregroundStyle<A>(_:)>>.0}> and conformance <each A> BuilderTuple<Pack{repeat A}>;
  if (!lazy protocol witness table cache variable for type BuilderTuple<Pack{<<opaque return type of ChartContent.foregroundStyle<A>(_:)>>.0, <<opaque return type of ChartContent.foregroundStyle<A>(_:)>>.0}> and conformance <each A> BuilderTuple<Pack{repeat A}>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s6Charts12BuilderTupleVyAA12ChartContentPAAE15foregroundStyleyQrqd__7SwiftUI05ShapeG0Rd__lFQOyAA8AreaMarkV_AG5ColorVQo__AeAEAFyQrqd__AgHRd__lFQOyAeAE04lineG0yQrAG06StrokeG0VFQOyAA04LineL0V_Qo__ALQo_QPGMd);
    type metadata accessor for AreaMark();
    swift_getOpaqueTypeConformance2();
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s6Charts12ChartContentPAAE9lineStyleyQr7SwiftUI06StrokeE0VFQOyAA8LineMarkV_Qo_Md);
    type metadata accessor for LineMark();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type BuilderTuple<Pack{<<opaque return type of ChartContent.foregroundStyle<A>(_:)>>.0, <<opaque return type of ChartContent.foregroundStyle<A>(_:)>>.0}> and conformance <each A> BuilderTuple<Pack{repeat A}>);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for PacerWorkoutConfigurationView(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 128))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 40);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t storeEnumTagSinglePayload for PacerWorkoutConfigurationView(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 120) = 0;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 128) = 1;
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
      *(result + 40) = (a2 - 1);
      return result;
    }

    *(result + 128) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t PacerWorkoutConfigurationView.body.getter@<X0>(uint64_t a1@<X8>)
{
  v148 = a1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyACyAA4ListVys5NeverOAA9TupleViewVyAA7SectionVyAA05EmptyH0VACyACyAA6VStackVyAIyAA012_ConditionalD0VyACyACyACyACyACyACyAA4TextVAA30_EnvironmentKeyWritingModifierVyAA0M9AlignmentOGGAUyAS4CaseOSgGGAA16_FlexFrameLayoutVGAUyAA4FontVSgGGAUySiSgGG07WorkoutB015BodyHyphenationVGSgAQyA17_A18_GGSg_A18_tGGAA06_TraitpQ0VyAA0e18RowBackgroundTraitO0VGGA25_yAA0e14RowInsetsTraitO0VGGAMGSg_AKyAmQyACyACyA14_17PacerValuesButtonVAUy0X4Core0X23ConfigurationDataSourceCSgGGAUyA14_28ConfigurationNavigationModelCSgGGACyA14_026EmbeddedPacerConfigurationH0VA14_0e13RowBackgroundhQ0VGGAMGAKyACyACyAsA01_uV0VGA14_09Unstackedi7SpacingQ033_B33B451D6D59C74C7A089BCD2EE64343LLVGAIyA14_05StartX6ButtonV_A14_14SaveCopyButtonVSgA14_05ShareX19ConfigurationButtonVSgA14_12DeleteButtonVSgtGASSgGtGGA14_07Stackede8SectionsQ0A60_LLVGAUyAA13AnyShapeStyleVSgGGMd);
  MEMORY[0x28223BE20](v2);
  v4 = &v129 - v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI4ViewPAAE18navigationBarTitleyQrqd__SyRd__lFQOyAA15ModifiedContentVyAFyAA4ListVys5NeverOAA05TupleC0VyAA7SectionVyAA05EmptyC0VAFyAFyAA6VStackVyALyAA012_ConditionalH0VyAFyAFyAFyAFyAFyAFyAA4TextVAA30_EnvironmentKeyWritingModifierVyAA0P9AlignmentOGGAXyAV4CaseOSgGGAA16_FlexFrameLayoutVGAXyAA4FontVSgGGAXySiSgGG07WorkoutB015BodyHyphenationVGSgATyA20_A21_GGSg_A21_tGGAA06_TraitsT0VyAA0i18RowBackgroundTraitR0VGGA28_yAA0i14RowInsetsTraitR0VGGAPGSg_ANyApTyAFyAFyA17_17PacerValuesButtonVAXy11WorkoutCore30WorkoutConfigurationDataSourceCSgGGAXyA17_28ConfigurationNavigationModelCSgGGAFyA17_026EmbeddedPacerConfigurationC0VA17_0i13RowBackgroundcT0VGGAPGANyAFyAFyAvA01_xY0VGA17_09Unstackedl7SpacingT033_B33B451D6D59C74C7A089BCD2EE64343LLVGALyA17_18StartWorkoutButtonV_A17_14SaveCopyButtonVSgA17_31ShareWorkoutConfigurationButtonVSgA17_12DeleteButtonVSgtGAVSgGtGGA17_07Stackedi8SectionsT0A63_LLVGAXyAA13AnyShapeStyleVSgGG_SSQo_Md);
  v133 = *(v5 - 8);
  v134 = v5;
  MEMORY[0x28223BE20](v5);
  v132 = &v129 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI4ViewPAAE22toolbarForegroundStyle_3forQrqd___AA16ToolbarPlacementVdtAA05ShapeF0Rd__lFQOyAcAE18navigationBarTitleyQrqd__SyRd__lFQOyAA15ModifiedContentVyAKyAA4ListVys5NeverOAA05TupleC0VyAA7SectionVyAA05EmptyC0VAKyAKyAA6VStackVyAQyAA012_ConditionalO0VyAKyAKyAKyAKyAKyAKyAA4TextVAA30_EnvironmentKeyWritingModifierVyAA0W9AlignmentOGGA1_yA_4CaseOSgGGAA16_FlexFrameLayoutVGA1_yAA4FontVSgGGA1_ySiSgGG07WorkoutB015BodyHyphenationVGSgAYyA25_A26_GGSg_A26_tGGAA06_TraitZ8ModifierVyAA0p18RowBackgroundTraitY0VGGA33_yAA0p14RowInsetsTraitY0VGGAUGSg_ASyAuYyAKyAKyA22_17PacerValuesButtonVA1_y11WorkoutCore30WorkoutConfigurationDataSourceCSgGGA1_yA22_28ConfigurationNavigationModelCSgGGAKyA22_026EmbeddedPacerConfigurationC0VA22_0p13RowBackgroundC8ModifierVGGAUGASyAKyAKyA_AA12_FrameLayoutVGA22_09UnstackedS15SpacingModifier33_B33B451D6D59C74C7A089BCD2EE64343LLVGAQyA22_18StartWorkoutButtonV_A22_14SaveCopyButtonVSgA22_31ShareWorkoutConfigurationButtonVSgA22_12DeleteButtonVSgtGA_SgGtGGA22_07StackedP16SectionsModifierA68_LLVGA1_yAA03AnyjF0VSgGG_SSQo__AA5ColorVQo_Md);
  v140 = *(v7 - 8);
  v141 = v7;
  MEMORY[0x28223BE20](v7);
  v139 = &v129 - v8;
  v137 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI16SubscriptionViewVy7Combine25ObservableObjectPublisherCAA0D0PAAE22toolbarForegroundStyle_3forQrqd___AA16ToolbarPlacementVdtAA05ShapeK0Rd__lFQOyAhAE18navigationBarTitleyQrqd__SyRd__lFQOyAA15ModifiedContentVyAPyAA4ListVys5NeverOAA05TupleD0VyAA7SectionVyAA05EmptyD0VAPyAPyAA6VStackVyAVyAA012_ConditionalT0VyAPyAPyAPyAPyAPyAPyAA4TextVAA30_EnvironmentKeyWritingModifierVyAA13TextAlignmentOGGA6_yA4_4CaseOSgGGAA16_FlexFrameLayoutVGA6_yAA4FontVSgGGA6_ySiSgGG07WorkoutB015BodyHyphenationVGSgA2_yA30_A31_GGSg_A31_tGGAA21_TraitWritingModifierVyAA0U21RowBackgroundTraitKeyVGGA38_yAA0U17RowInsetsTraitKeyVGGAZGSg_AXyAZA2_yAPyAPyA27_17PacerValuesButtonVA6_y11WorkoutCore30WorkoutConfigurationDataSourceCSgGGA6_yA27_28ConfigurationNavigationModelCSgGGAPyA27_026EmbeddedPacerConfigurationD0VA27_0u13RowBackgroundD8ModifierVGGAZGAXyAPyAPyA4_AA12_FrameLayoutVGA27_09UnstackedX15SpacingModifier33_B33B451D6D59C74C7A089BCD2EE64343LLVGAVyA27_18StartWorkoutButtonV_A27_14SaveCopyButtonVSgA27_31ShareWorkoutConfigurationButtonVSgA27_12DeleteButtonVSgtGA4_SgGtGGA27_07StackedU16SectionsModifierA73_LLVGA6_yAA03AnyoK0VSgGG_SSQo__AA5ColorVQo_GMd);
  MEMORY[0x28223BE20](v137);
  v145 = &v129 - v9;
  v150 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyAA16SubscriptionViewVy7Combine25ObservableObjectPublisherCAA0F0PAAE22toolbarForegroundStyle_3forQrqd___AA16ToolbarPlacementVdtAA05ShapeM0Rd__lFQOyAjAE18navigationBarTitleyQrqd__SyRd__lFQOyACyACyAA4ListVys5NeverOAA05TupleF0VyAA7SectionVyAA05EmptyF0VACyACyAA6VStackVyAVyAA012_ConditionalD0VyACyACyACyACyACyACyAA4TextVAA30_EnvironmentKeyWritingModifierVyAA13TextAlignmentOGGA6_yA4_4CaseOSgGGAA16_FlexFrameLayoutVGA6_yAA4FontVSgGGA6_ySiSgGG07WorkoutB015BodyHyphenationVGSgA2_yA30_A31_GGSg_A31_tGGAA21_TraitWritingModifierVyAA0U21RowBackgroundTraitKeyVGGA38_yAA0U17RowInsetsTraitKeyVGGAZGSg_AXyAZA2_yACyACyA27_17PacerValuesButtonVA6_y11WorkoutCore30WorkoutConfigurationDataSourceCSgGGA6_yA27_28ConfigurationNavigationModelCSgGGACyA27_026EmbeddedPacerConfigurationF0VA27_0u13RowBackgroundF8ModifierVGGAZGAXyACyACyA4_AA12_FrameLayoutVGA27_09UnstackedX15SpacingModifier33_B33B451D6D59C74C7A089BCD2EE64343LLVGAVyA27_18StartWorkoutButtonV_A27_14SaveCopyButtonVSgA27_31ShareWorkoutConfigurationButtonVSgA27_12DeleteButtonVSgtGA4_SgGtGGA27_07StackedU16SectionsModifierA73_LLVGA6_yAA03AnyqM0VSgGG_SSQo__AA5ColorVQo_GA27_020WorkoutConfigurationO0VGMd);
  MEMORY[0x28223BE20](v150);
  v144 = &v129 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v13 = &v129 - v12;
  v146 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI19_ConditionalContentV7StorageOyAA08ModifiedD0VyAA4ViewPAAE14contentMargins__3forQrAA4EdgeO3SetV_12CoreGraphics7CGFloatVSgAA0D15MarginPlacementVtFQOyAA012SubscriptionG0Vy7Combine25ObservableObjectPublisherCAA4ListVys5NeverOAA05TupleG0VyAGyAA4TextV07WorkoutB005ClearW5Style33_A607961C6E65DD4DD1C2818C5FE69B58LLVG_AGyAGyAGyAA6VStackVyA4_yACyAGyAGyAGyAGyAGyAGyA6_AA30_EnvironmentKeyWritingModifierVyAA0Z9AlignmentOGGA15_yA6_4CaseOSgGGAA16_FlexFrameLayoutVGA15_yAA4FontVSgGGA15_ySiSgGGA7_15BodyHyphenationVGSgACyA38_A39_GGSg_A39_tGGAA21_TraitWritingModifierVyAA0W21RowBackgroundTraitKeyVGGA46_yAA0W17RowInsetsTraitKeyVGGA7_04HideW12RowSeparatorA9_LLVGSgACyAiAE8onChange2of7initial_Qrqd___Sbyqd___qd__tctSQRd__lFQOyAiAEA59_A60_A61__Qrqd___Sbyqd___qd__tctSQRd__lFQOyAA7SectionVyAA05EmptyG0VA4_yA7_24PacerDistanceValuePickerV_A7_24PacerDurationValuePickerVACyA6_AGyA7_023AlignedLeadingAccessorydG0VyAA5ImageVA4_yA6__AA6SpacerVA6_tGGAA24_ForegroundStyleModifierVyAA5ColorVGGGtGA65_G_SbQo__SbQo_AGyAGyAGyAGyA7_026EmbeddedPacerConfigurationG0VAA14_PaddingLayoutVGAA19_BackgroundModifierVyAGyAA017StrokeBorderShapeG0VyAA16RoundedRectangleVAA22HierarchicalShapeStyleVA65_GA26_GGGA49_GA53_GGA7_18StartWorkoutButtonVAGyAGyAGyA7_14SaveCopyButtonVA53_GA56_GA15_yAA11ControlSizeOGGSgAGyAGyAGyAGyAGyAGyAGyAGyAGyA6_A15_yA81_SgGGA18_GA23_GA26_GA31_GA34_GA37_GA53_GA49_GSgtGGG_Qo_A7_27WorkoutConfigurationToolbarVGAGyAWyAziAE22toolbarForegroundStyle_AKQrqd___AA07ToolbarQ0VdtAA10ShapeStyleRd__lFQOyAiAE18navigationBarTitleyQrqd__SyRd__lFQOyAGyAGyA0_yA2_A4_yA63_yA65_A54_A65_GSg_A63_yA65_ACyAGyAGyA7_17PacerValuesButtonVA15_y07WorkoutM030WorkoutConfigurationDataSourceCSgGGA15_yA7_28ConfigurationNavigationModelCSgGGAGyA90_A7_0w13RowBackgroundG8ModifierVGGA65_GA63_yAGyAGyA6_AA12_FrameLayoutVGA7_31UnstackedSectionSpacingModifier33_B33B451D6D59C74C7A089BCD2EE64343LLVGA4_yA110__A112_SgA7_31ShareWorkoutConfigurationButtonVSgA7_12DeleteButtonVSgtGA6_SgGtGGA7_07StackedW16SectionsModifierA168_LLVGA15_yAA13AnyShapeStyleVSgGG_SSQo__A81_Qo_GA137_G_GMd);
  MEMORY[0x28223BE20](v146);
  v147 = &v129 - v14;
  v15 = type metadata accessor for ContentMarginPlacement();
  v130 = *(v15 - 8);
  v131 = v15;
  MEMORY[0x28223BE20](v15);
  v17 = &v129 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI16SubscriptionViewVy7Combine25ObservableObjectPublisherCAA4ListVys5NeverOAA05TupleD0VyAA15ModifiedContentVyAA4TextV07WorkoutB005ClearI5Style33_A607961C6E65DD4DD1C2818C5FE69B58LLVG_ANyANyANyAA6VStackVyALyAA012_ConditionalM0VyANyANyANyANyANyANyApA30_EnvironmentKeyWritingModifierVyAA0N9AlignmentOGGA_yAP4CaseOSgGGAA16_FlexFrameLayoutVGA_yAA4FontVSgGGA_ySiSgGGAQ15BodyHyphenationVGSgAYyA22_A23_GGSg_A23_tGGAA21_TraitWritingModifierVyAA0I21RowBackgroundTraitKeyVGGA30_yAA0I17RowInsetsTraitKeyVGGAQ04HideI12RowSeparatorASLLVGSgAYyAA0D0PAAE8onChange2of7initial_Qrqd___Sbyqd___qd__tctSQRd__lFQOyA44_AAEA45_A46_A47__Qrqd___Sbyqd___qd__tctSQRd__lFQOyAA7SectionVyAA05EmptyD0VALyAQ24PacerDistanceValuePickerV_AQ24PacerDurationValuePickerVAYyApNyAQ023AlignedLeadingAccessorymD0VyAA5ImageVALyAP_AA6SpacerVAPtGGAA011_ForegroundQ8ModifierVyAA5ColorVGGGtGA51_G_SbQo__SbQo_ANyANyANyANyAQ026EmbeddedPacerConfigurationD0VAA14_PaddingLayoutVGAA19_BackgroundModifierVyANyAA017StrokeBorderShapeD0VyAA16RoundedRectangleVAA017HierarchicalShapeQ0VA51_GA10_GGGA33_GA37_GGAQ05StartO6ButtonVANyANyANyAQ14SaveCopyButtonVA37_GA40_GA_yAA11ControlSizeOGGSgANyANyANyANyANyANyANyANyANyAPA_yA67_SgGGA2_GA7_GA10_GA15_GA18_GA21_GA37_GA33_GSgtGGGMd);
  MEMORY[0x28223BE20](v18);
  v20 = &v129 - v19;
  v138 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI4ViewPAAE14contentMargins__3forQrAA4EdgeO3SetV_12CoreGraphics7CGFloatVSgAA22ContentMarginPlacementVtFQOyAA012SubscriptionC0Vy7Combine25ObservableObjectPublisherCAA4ListVys5NeverOAA05TupleC0VyAA08ModifiedL0VyAA4TextV07WorkoutB005ClearT5Style33_A607961C6E65DD4DD1C2818C5FE69B58LLVG_A0_yA0_yA0_yAA6VStackVyAZyAA012_ConditionalL0VyA0_yA0_yA0_yA0_yA0_yA0_yA2_AA30_EnvironmentKeyWritingModifierVyAA0X9AlignmentOGGA13_yA2_4CaseOSgGGAA16_FlexFrameLayoutVGA13_yAA4FontVSgGGA13_ySiSgGGA3_15BodyHyphenationVGSgA11_yA36_A37_GGSg_A37_tGGAA21_TraitWritingModifierVyAA0T21RowBackgroundTraitKeyVGGA44_yAA0T17RowInsetsTraitKeyVGGA3_04HideT12RowSeparatorA5_LLVGSgA11_yAcAE8onChange2of7initial_Qrqd___Sbyqd___qd__tctSQRd__lFQOyAcAEA57_A58_A59__Qrqd___Sbyqd___qd__tctSQRd__lFQOyAA7SectionVyAA05EmptyC0VAZyA3_24PacerDistanceValuePickerV_A3_24PacerDurationValuePickerVA11_yA2_A0_yA3_023AlignedLeadingAccessorylC0VyAA5ImageVAZyA2__AA6SpacerVA2_tGGAA24_ForegroundStyleModifierVyAA5ColorVGGGtGA63_G_SbQo__SbQo_A0_yA0_yA0_yA0_yA3_026EmbeddedPacerConfigurationC0VAA14_PaddingLayoutVGAA19_BackgroundModifierVyA0_yAA017StrokeBorderShapeC0VyAA16RoundedRectangleVAA22HierarchicalShapeStyleVA63_GA24_GGGA47_GA51_GGA3_05StartY6ButtonVA0_yA0_yA0_yA3_14SaveCopyButtonVA51_GA54_GA13_yAA11ControlSizeOGGSgA0_yA0_yA0_yA0_yA0_yA0_yA0_yA0_yA0_yA2_A13_yA79_SgGGA16_GA21_GA24_GA29_GA32_GA35_GA51_GA47_GSgtGGG_Qo_Md);
  v135 = *(v138 - 8);
  MEMORY[0x28223BE20](v138);
  v143 = &v129 - v21;
  v149 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyAA4ViewPAAE14contentMargins__3forQrAA4EdgeO3SetV_12CoreGraphics7CGFloatVSgAA0D15MarginPlacementVtFQOyAA012SubscriptionE0Vy7Combine25ObservableObjectPublisherCAA4ListVys5NeverOAA05TupleE0VyACyAA4TextV07WorkoutB005ClearU5Style33_A607961C6E65DD4DD1C2818C5FE69B58LLVG_ACyACyACyAA6VStackVyA0_yAA012_ConditionalD0VyACyACyACyACyACyACyA2_AA30_EnvironmentKeyWritingModifierVyAA0X9AlignmentOGGA13_yA2_4CaseOSgGGAA16_FlexFrameLayoutVGA13_yAA4FontVSgGGA13_ySiSgGGA3_15BodyHyphenationVGSgA11_yA36_A37_GGSg_A37_tGGAA21_TraitWritingModifierVyAA0U21RowBackgroundTraitKeyVGGA44_yAA0U17RowInsetsTraitKeyVGGA3_04HideU12RowSeparatorA5_LLVGSgA11_yAeAE8onChange2of7initial_Qrqd___Sbyqd___qd__tctSQRd__lFQOyAeAEA57_A58_A59__Qrqd___Sbyqd___qd__tctSQRd__lFQOyAA7SectionVyAA05EmptyE0VA0_yA3_24PacerDistanceValuePickerV_A3_24PacerDurationValuePickerVA11_yA2_ACyA3_023AlignedLeadingAccessorydE0VyAA5ImageVA0_yA2__AA6SpacerVA2_tGGAA24_ForegroundStyleModifierVyAA5ColorVGGGtGA63_G_SbQo__SbQo_ACyACyACyACyA3_026EmbeddedPacerConfigurationE0VAA14_PaddingLayoutVGAA19_BackgroundModifierVyACyAA017StrokeBorderShapeE0VyAA16RoundedRectangleVAA22HierarchicalShapeStyleVA63_GA24_GGGA47_GA51_GGA3_05StartY6ButtonVACyACyACyA3_14SaveCopyButtonVA51_GA54_GA13_yAA11ControlSizeOGGSgACyACyACyACyACyACyACyACyACyA2_A13_yA79_SgGGA16_GA21_GA24_GA29_GA32_GA35_GA51_GA47_GSgtGGG_Qo_A3_0Y20ConfigurationToolbarVGMd);
  MEMORY[0x28223BE20](v149);
  v142 = &v129 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v23);
  v136 = &v129 - v24;
  v25 = v1[5];
  v161 = v1[4];
  v162 = v25;
  v26 = v1[7];
  v163 = v1[6];
  v164 = v26;
  v27 = v1[1];
  v157 = *v1;
  v158 = v27;
  v28 = v1[3];
  v159 = v1[2];
  v160 = v28;
  v29 = static Platform.current.getter();
  v151 = &v157;
  if (v29)
  {
    v143 = v13;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI9TupleViewVyAA7SectionVyAA05EmptyD0VAA15ModifiedContentVyAIyAA6VStackVyACyAA012_ConditionalH0VyAIyAIyAIyAIyAIyAIyAA4TextVAA30_EnvironmentKeyWritingModifierVyAA0K9AlignmentOGGAQyAO4CaseOSgGGAA16_FlexFrameLayoutVGAQyAA4FontVSgGGAQySiSgGG07WorkoutB015BodyHyphenationVGSgAMyA13_A14_GGSg_A14_tGGAA06_TraitnO0VyAA017ListRowBackgroundyM0VGGA21_yAA0z9RowInsetsyM0VGGAGGSg_AEyAgMyAIyAIyA10_17PacerValuesButtonVAQy0V4Core0V23ConfigurationDataSourceCSgGGAQyA10_28ConfigurationNavigationModelCSgGGAIyA10_026EmbeddedPacerConfigurationD0VA10_0z13RowBackgrounddO0VGGAGGAEyAIyAIyAoA01_sT0VGA10_09Unstackede7SpacingO033_B33B451D6D59C74C7A089BCD2EE64343LLVGACyA10_05StartV6ButtonV_A10_14SaveCopyButtonVSgA10_05ShareV19ConfigurationButtonVSgA10_12DeleteButtonVSgtGAOSgGtGMd);
    lazy protocol witness table accessor for type TupleView<(Section<EmptyView, ModifiedContent<ModifiedContent<VStack<TupleView<(_ConditionalContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Text, _EnvironmentKeyWritingModifier<TextAlignment>>, _EnvironmentKeyWritingModifier<Text.Case?>>, _FlexFrameLayout>, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyWritingModifier<Int?>>, BodyHyphenation>?, _ConditionalContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Text, _EnvironmentKeyWritingModifier<TextAlignment>>, _EnvironmentKeyWritingModifier<Text.Case?>>, _FlexFrameLayout>, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyWritingModifier<Int?>>, BodyHyphenation>, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Text, _EnvironmentKeyWritingModifier<TextAlignment>>, _EnvironmentKeyWritingModifier<Text.Case?>>, _FlexFrameLayout>, _EnvironmentKeyWriti(&lazy protocol witness table cache variable for type TupleView<(Section<EmptyView, ModifiedContent<ModifiedContent<VStack<TupleView<(_ConditionalContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Text, _EnvironmentKeyWritingModifier<TextAlignment>>, _EnvironmentKeyWritingModifier<Text.Case?>>, _FlexFrameLayout>, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyWritingModifier<Int?>>, BodyHyphenation>?, _ConditionalContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Text, _EnvironmentKeyWritingModifier<TextAlignment>>, _EnvironmentKeyWritingModifier<Text.Case?>>, _FlexFrameLayout>, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyWritingModifier<Int?>>, BodyHyphenation>, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Text, _EnvironmentKeyWritingModifier<TextAlignment>>, _EnvironmentKeyWritingModifier<Text.Case?>>, _FlexFrameLayout>, _EnvironmentKe, &_s7SwiftUI9TupleViewVyAA7SectionVyAA05EmptyD0VAA15ModifiedContentVyAIyAA6VStackVyACyAA012_ConditionalH0VyAIyAIyAIyAIyAIyAIyAA4TextVAA30_EnvironmentKeyWritingModifierVyAA0K9AlignmentOGGAQyAO4CaseOSgGGAA16_FlexFrameLayoutVGAQyAA4FontVSgGGAQySiSgGG07WorkoutB015BodyHyphenationVGSgAMyA13_A14_GGSg_A14_tGGAA06_TraitnO0VyAA017ListRowBackgroundyM0VGGA21_yAA0z9RowInsetsyM0VGGAGGSg_AEyAgMyAIyAIyA10_17PacerValuesButtonVAQy0V4Core0V23ConfigurationDataSourceCSgGGAQyA10_28ConfigurationNavigationModelCSgGGAIyA10_026EmbeddedPacerConfigurationD0VA10_0z13RowBackgrounddO0VGGAGGAEyAIyAIyAoA01_sT0VGA10_09Unstackede7SpacingO033_B33B451D6D59C74C7A089BCD2EE64343LLVGACyA10_05StartV6ButtonV_A10_14SaveCopyButtonVSgA10_05ShareV19ConfigurationButtonVSgA10_12DeleteButtonVSgtGAOSgGtGMd);
    List<>.init(content:)();
    v165[0] = v159;
    v30 = *(&v159 + 1);
    WorkoutConfiguration.displayColor.getter();
    outlined destroy of ObservedObject<PacerWorkoutConfiguration>(v165, &_s7SwiftUI14ObservedObjectVy11WorkoutCore05PacerE13ConfigurationCGMd);
    v31 = Color.init(uiColor:)();
    KeyPath = swift_getKeyPath();
    v152 = v31;
    v33 = AnyShapeStyle.init<A>(_:)();
    v34 = &v4[*(v2 + 36)];
    *v34 = KeyPath;
    v34[1] = v33;
    v35 = v160;
    v36 = WorkoutConfiguration.displayDetail(_:)();
    v142 = v35;
    if (v37)
    {
      v38 = v37;
    }

    else
    {
      v80 = v30;
      v81 = WorkoutConfiguration.displayName(formattingManager:)();
      v38 = v82;
      outlined destroy of ObservedObject<PacerWorkoutConfiguration>(v165, &_s7SwiftUI14ObservedObjectVy11WorkoutCore05PacerE13ConfigurationCGMd);
      v36 = v81;
    }

    v152 = v36;
    v153 = v38;
    v83 = lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<List<Never, TupleView<(Section<EmptyView, ModifiedContent<ModifiedContent<VStack<TupleView<(_ConditionalContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Text, _EnvironmentKeyWritingModifier<TextAlignment>>, _EnvironmentKeyWritingModifier<Text.Case?>>, _FlexFrameLayout>, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyWritingModifier<Int?>>, BodyHyphenation>?, _ConditionalContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Text, _EnvironmentKeyWritingModifier<TextAlignment>>, _EnvironmentKeyWritingModifier<Text.Case?>>, _FlexFrameLayout>, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyWritingModifier<Int?>>, BodyHyphenation>, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Text, _EnvironmentKeyWritingModifier<TextAlignment>>, _EnvironmentKeyWritingModifier<Text.Case();
    v84 = lazy protocol witness table accessor for type String and conformance String();
    v85 = v132;
    View.navigationTitle<A>(_:)();

    outlined destroy of ObservedObject<PacerWorkoutConfiguration>(v4, &_s7SwiftUI15ModifiedContentVyACyAA4ListVys5NeverOAA9TupleViewVyAA7SectionVyAA05EmptyH0VACyACyAA6VStackVyAIyAA012_ConditionalD0VyACyACyACyACyACyACyAA4TextVAA30_EnvironmentKeyWritingModifierVyAA0M9AlignmentOGGAUyAS4CaseOSgGGAA16_FlexFrameLayoutVGAUyAA4FontVSgGGAUySiSgGG07WorkoutB015BodyHyphenationVGSgAQyA17_A18_GGSg_A18_tGGAA06_TraitpQ0VyAA0e18RowBackgroundTraitO0VGGA25_yAA0e14RowInsetsTraitO0VGGAMGSg_AKyAmQyACyACyA14_17PacerValuesButtonVAUy0X4Core0X23ConfigurationDataSourceCSgGGAUyA14_28ConfigurationNavigationModelCSgGGACyA14_026EmbeddedPacerConfigurationH0VA14_0e13RowBackgroundhQ0VGGAMGAKyACyACyAsA01_uV0VGA14_09Unstackedi7SpacingQ033_B33B451D6D59C74C7A089BCD2EE64343LLVGAIyA14_05StartX6ButtonV_A14_14SaveCopyButtonVSgA14_05ShareX19ConfigurationButtonVSgA14_12DeleteButtonVSgtGASSgGtGGA14_07Stackede8SectionsQ0A60_LLVGAUyAA13AnyShapeStyleVSgGGMd);
    v86 = v30;
    WorkoutConfiguration.displayColor.getter();
    outlined destroy of ObservedObject<PacerWorkoutConfiguration>(v165, &_s7SwiftUI14ObservedObjectVy11WorkoutCore05PacerE13ConfigurationCGMd);
    *&v156 = Color.init(uiColor:)();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy7SwiftUI16ToolbarPlacementVGMd);
    type metadata accessor for ToolbarPlacement();
    v87 = swift_allocObject();
    *(v87 + 16) = xmmword_20CB5DA70;
    static ToolbarPlacement.navigationBar.getter();
    v152 = v2;
    v153 = MEMORY[0x277D837D0];
    v154 = v83;
    v155 = v84;
    OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
    v89 = v139;
    v90 = v134;
    MEMORY[0x20F30A9F0](&v156, v87, v134, MEMORY[0x277CE0F78], OpaqueTypeConformance2, MEMORY[0x277CE0F60]);

    (*(v133 + 8))(v85, v90);
    type metadata accessor for PacerWorkoutConfiguration();
    lazy protocol witness table accessor for type PacerWorkoutConfiguration and conformance WorkoutConfiguration(&lazy protocol witness table cache variable for type PacerWorkoutConfiguration and conformance WorkoutConfiguration, MEMORY[0x277D7D968]);
    v91 = v86;
    v92 = ObservableObject<>.objectWillChange.getter();
    outlined destroy of ObservedObject<PacerWorkoutConfiguration>(v165, &_s7SwiftUI14ObservedObjectVy11WorkoutCore05PacerE13ConfigurationCGMd);
    v93 = swift_allocObject();
    v94 = v162;
    v93[5] = v161;
    v93[6] = v94;
    v95 = v164;
    v93[7] = v163;
    v93[8] = v95;
    v96 = v158;
    v93[1] = v157;
    v93[2] = v96;
    v97 = v160;
    v93[3] = v159;
    v93[4] = v97;
    v98 = v145;
    v140[4](v145, v89, v141);
    v99 = v137;
    *(v98 + *(v137 + 52)) = v92;
    v100 = (v98 + *(v99 + 56));
    *v100 = partial apply for closure #4 in PacerWorkoutConfigurationView.body.getter;
    v100[1] = v93;
    v156 = v162;
    outlined init with copy of PacerWorkoutConfigurationView(&v157, &v152);
    outlined init with copy of ObservedObject<PacerWorkoutConfiguration>(v165, &v152, &_s7SwiftUI14ObservedObjectVy11WorkoutCore05PacerE13ConfigurationCGMd);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI5StateVySbGMd);
    State.projectedValue.getter();
    v101 = v157;
    if (v157)
    {
      v102 = v152;
      v103 = v153;
      LODWORD(v140) = v154;
      LODWORD(v141) = BYTE8(v161);
      outlined init with copy of ObservedObject<PacerWorkoutConfiguration>(v165, &v152, &_s7SwiftUI14ObservedObjectVy11WorkoutCore05PacerE13ConfigurationCGMd);
      v104 = v101;
      WorkoutConfiguration.displayColor.getter();
      outlined destroy of ObservedObject<PacerWorkoutConfiguration>(v165, &_s7SwiftUI14ObservedObjectVy11WorkoutCore05PacerE13ConfigurationCGMd);
      v138 = Color.init(uiColor:)();
      LOBYTE(v156) = 0;
      static Binding.constant(_:)();
      v135 = v153;
      v136 = v152;
      LODWORD(v137) = v154;
      v105 = swift_allocObject();
      *(v105 + 16) = v104;
      v106 = swift_getKeyPath();
      v107 = &v144[*(v150 + 36)];
      *v107 = v106;
      __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI11EnvironmentV7ContentOyAA13DismissActionV_GMd);
      swift_storeEnumTagMultiPayload();
      type metadata accessor for ConfigurationNavigationModel();
      lazy protocol witness table accessor for type PacerWorkoutConfiguration and conformance WorkoutConfiguration(&lazy protocol witness table cache variable for type ConfigurationNavigationModel and conformance ConfigurationNavigationModel, type metadata accessor for ConfigurationNavigationModel);
      v139 = v104;
      v108 = v102;

      v109 = EnvironmentObject.init()();
      v111 = v110;
      v112 = type metadata accessor for WorkoutConfigurationToolbar();
      v113 = (v107 + v112[5]);
      *v113 = v109;
      v113[1] = v111;
      v114 = (v107 + v112[6]);
      type metadata accessor for WorkoutConfiguration();
      lazy protocol witness table accessor for type PacerWorkoutConfiguration and conformance WorkoutConfiguration(&lazy protocol witness table cache variable for type WorkoutConfiguration and conformance WorkoutConfiguration, MEMORY[0x277D7DA50]);
      v115 = v91;
      *v114 = ObservedObject.init(wrappedValue:)();
      v114[1] = v116;
      v117 = v107 + v112[7];
      *v117 = v108;
      *(v117 + 1) = v103;
      v117[16] = v140;
      v118 = v107 + v112[8];
      *v118 = _s7SwiftUI4ViewP07WorkoutB0E27workoutConfigurationToolbar0eF015hasBeenModified10dataSource17formattingManager6intent5color20showEditConfirmationQr0D4Core0dF0C_AA7BindingVySbGSgAM0df4DataL0CSo014FIUIFormattingN0CAD0dF6IntentOAA5ColorVARtFAUycfu0_TA_1;
      *(v118 + 1) = v105;
      v118[16] = 0;
      v119 = v142;
      *(v107 + v112[9]) = v142;
      *(v107 + v112[10]) = v141;
      *(v107 + v112[11]) = v138;
      v120 = v107 + v112[12];
      v121 = v135;
      *v120 = v136;
      *(v120 + 1) = v121;
      v120[16] = v137;
      v122 = v107 + v112[13];
      LOBYTE(v156) = 0;

      v123 = v119;

      State.init(wrappedValue:)();
      v124 = v153;
      *v122 = v152;
      *(v122 + 1) = v124;
      v125 = v107 + v112[14];
      LOBYTE(v156) = 0;
      State.init(wrappedValue:)();

      outlined destroy of ObservedObject<PacerWorkoutConfiguration>(v165, &_s7SwiftUI14ObservedObjectVy11WorkoutCore05PacerE13ConfigurationCGMd);

      v126 = v153;
      *v125 = v152;
      *(v125 + 1) = v126;
      v127 = v144;
      outlined init with take of SubscriptionView<ObservableObjectPublisher, <<opaque return type of View.toolbarForegroundStyle<A>(_:for:)>>.0>(v145, v144, &_s7SwiftUI16SubscriptionViewVy7Combine25ObservableObjectPublisherCAA0D0PAAE22toolbarForegroundStyle_3forQrqd___AA16ToolbarPlacementVdtAA05ShapeK0Rd__lFQOyAhAE18navigationBarTitleyQrqd__SyRd__lFQOyAA15ModifiedContentVyAPyAA4ListVys5NeverOAA05TupleD0VyAA7SectionVyAA05EmptyD0VAPyAPyAA6VStackVyAVyAA012_ConditionalT0VyAPyAPyAPyAPyAPyAPyAA4TextVAA30_EnvironmentKeyWritingModifierVyAA13TextAlignmentOGGA6_yA4_4CaseOSgGGAA16_FlexFrameLayoutVGA6_yAA4FontVSgGGA6_ySiSgGG07WorkoutB015BodyHyphenationVGSgA2_yA30_A31_GGSg_A31_tGGAA21_TraitWritingModifierVyAA0U21RowBackgroundTraitKeyVGGA38_yAA0U17RowInsetsTraitKeyVGGAZGSg_AXyAZA2_yAPyAPyA27_17PacerValuesButtonVA6_y11WorkoutCore30WorkoutConfigurationDataSourceCSgGGA6_yA27_28ConfigurationNavigationModelCSgGGAPyA27_026EmbeddedPacerConfigurationD0VA27_0u13RowBackgroundD8ModifierVGGAZGAXyAPyAPyA4_AA12_FrameLayoutVGA27_09UnstackedX15SpacingModifier33_B33B451D6D59C74C7A089BCD2EE64343LLVGAVyA27_18StartWorkoutButtonV_A27_14SaveCopyButtonVSgA27_31ShareWorkoutConfigurationButtonVSgA27_12DeleteButtonVSgtGA4_SgGtGGA27_07StackedU16SectionsModifierA73_LLVGA6_yAA03AnyoK0VSgGG_SSQo__AA5ColorVQo_GMd);
      v78 = &_s7SwiftUI15ModifiedContentVyAA16SubscriptionViewVy7Combine25ObservableObjectPublisherCAA0F0PAAE22toolbarForegroundStyle_3forQrqd___AA16ToolbarPlacementVdtAA05ShapeM0Rd__lFQOyAjAE18navigationBarTitleyQrqd__SyRd__lFQOyACyACyAA4ListVys5NeverOAA05TupleF0VyAA7SectionVyAA05EmptyF0VACyACyAA6VStackVyAVyAA012_ConditionalD0VyACyACyACyACyACyACyAA4TextVAA30_EnvironmentKeyWritingModifierVyAA13TextAlignmentOGGA6_yA4_4CaseOSgGGAA16_FlexFrameLayoutVGA6_yAA4FontVSgGGA6_ySiSgGG07WorkoutB015BodyHyphenationVGSgA2_yA30_A31_GGSg_A31_tGGAA21_TraitWritingModifierVyAA0U21RowBackgroundTraitKeyVGGA38_yAA0U17RowInsetsTraitKeyVGGAZGSg_AXyAZA2_yACyACyA27_17PacerValuesButtonVA6_y11WorkoutCore30WorkoutConfigurationDataSourceCSgGGA6_yA27_28ConfigurationNavigationModelCSgGGACyA27_026EmbeddedPacerConfigurationF0VA27_0u13RowBackgroundF8ModifierVGGAZGAXyACyACyA4_AA12_FrameLayoutVGA27_09UnstackedX15SpacingModifier33_B33B451D6D59C74C7A089BCD2EE64343LLVGAVyA27_18StartWorkoutButtonV_A27_14SaveCopyButtonVSgA27_31ShareWorkoutConfigurationButtonVSgA27_12DeleteButtonVSgtGA4_SgGtGGA27_07StackedU16SectionsModifierA73_LLVGA6_yAA03AnyqM0VSgGG_SSQo__AA5ColorVQo_GA27_020WorkoutConfigurationO0VGMd;
      v79 = v143;
      outlined init with take of SubscriptionView<ObservableObjectPublisher, <<opaque return type of View.toolbarForegroundStyle<A>(_:for:)>>.0>(v127, v143, &_s7SwiftUI15ModifiedContentVyAA16SubscriptionViewVy7Combine25ObservableObjectPublisherCAA0F0PAAE22toolbarForegroundStyle_3forQrqd___AA16ToolbarPlacementVdtAA05ShapeM0Rd__lFQOyAjAE18navigationBarTitleyQrqd__SyRd__lFQOyACyACyAA4ListVys5NeverOAA05TupleF0VyAA7SectionVyAA05EmptyF0VACyACyAA6VStackVyAVyAA012_ConditionalD0VyACyACyACyACyACyACyAA4TextVAA30_EnvironmentKeyWritingModifierVyAA13TextAlignmentOGGA6_yA4_4CaseOSgGGAA16_FlexFrameLayoutVGA6_yAA4FontVSgGGA6_ySiSgGG07WorkoutB015BodyHyphenationVGSgA2_yA30_A31_GGSg_A31_tGGAA21_TraitWritingModifierVyAA0U21RowBackgroundTraitKeyVGGA38_yAA0U17RowInsetsTraitKeyVGGAZGSg_AXyAZA2_yACyACyA27_17PacerValuesButtonVA6_y11WorkoutCore30WorkoutConfigurationDataSourceCSgGGA6_yA27_28ConfigurationNavigationModelCSgGGACyA27_026EmbeddedPacerConfigurationF0VA27_0u13RowBackgroundF8ModifierVGGAZGAXyACyACyA4_AA12_FrameLayoutVGA27_09UnstackedX15SpacingModifier33_B33B451D6D59C74C7A089BCD2EE64343LLVGAVyA27_18StartWorkoutButtonV_A27_14SaveCopyButtonVSgA27_31ShareWorkoutConfigurationButtonVSgA27_12DeleteButtonVSgtGA4_SgGtGGA27_07StackedU16SectionsModifierA73_LLVGA6_yAA03AnyqM0VSgGG_SSQo__AA5ColorVQo_GA27_020WorkoutConfigurationO0VGMd);
      outlined init with copy of ModifiedContent<SubscriptionView<ObservableObjectPublisher, <<opaque return type of View.toolbarForegroundStyle<A>(_:for:)>>.0>, WorkoutConfigurationToolbar>(v79, v147, &_s7SwiftUI15ModifiedContentVyAA16SubscriptionViewVy7Combine25ObservableObjectPublisherCAA0F0PAAE22toolbarForegroundStyle_3forQrqd___AA16ToolbarPlacementVdtAA05ShapeM0Rd__lFQOyAjAE18navigationBarTitleyQrqd__SyRd__lFQOyACyACyAA4ListVys5NeverOAA05TupleF0VyAA7SectionVyAA05EmptyF0VACyACyAA6VStackVyAVyAA012_ConditionalD0VyACyACyACyACyACyACyAA4TextVAA30_EnvironmentKeyWritingModifierVyAA13TextAlignmentOGGA6_yA4_4CaseOSgGGAA16_FlexFrameLayoutVGA6_yAA4FontVSgGGA6_ySiSgGG07WorkoutB015BodyHyphenationVGSgA2_yA30_A31_GGSg_A31_tGGAA21_TraitWritingModifierVyAA0U21RowBackgroundTraitKeyVGGA38_yAA0U17RowInsetsTraitKeyVGGAZGSg_AXyAZA2_yACyACyA27_17PacerValuesButtonVA6_y11WorkoutCore30WorkoutConfigurationDataSourceCSgGGA6_yA27_28ConfigurationNavigationModelCSgGGACyA27_026EmbeddedPacerConfigurationF0VA27_0u13RowBackgroundF8ModifierVGGAZGAXyACyACyA4_AA12_FrameLayoutVGA27_09UnstackedX15SpacingModifier33_B33B451D6D59C74C7A089BCD2EE64343LLVGAVyA27_18StartWorkoutButtonV_A27_14SaveCopyButtonVSgA27_31ShareWorkoutConfigurationButtonVSgA27_12DeleteButtonVSgtGA4_SgGtGGA27_07StackedU16SectionsModifierA73_LLVGA6_yAA03AnyqM0VSgGG_SSQo__AA5ColorVQo_GA27_020WorkoutConfigurationO0VGMd);
      goto LABEL_9;
    }
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI9TupleViewVyAA15ModifiedContentVyAA4TextV07WorkoutB014ClearListStyle33_A607961C6E65DD4DD1C2818C5FE69B58LLVG_AEyAEyAEyAA6VStackVyACyAA012_ConditionalF0VyAEyAEyAEyAEyAEyAEyAgA30_EnvironmentKeyWritingModifierVyAA0G9AlignmentOGGARyAG4CaseOSgGGAA16_FlexFrameLayoutVGARyAA4FontVSgGGARySiSgGGAH15BodyHyphenationVGSgAPyA13_A14_GGSg_A14_tGGAA06_TraityZ0VyAA0j18RowBackgroundTraitX0VGGA21_yAA0j14RowInsetsTraitX0VGGAH04HideJ12RowSeparatorAJLLVGSgAPyAA0D0PAAE8onChange2of7initial_Qrqd___Sbyqd___qd__tctSQRd__lFQOyA35_AAEA36_A37_A38__Qrqd___Sbyqd___qd__tctSQRd__lFQOyAA7SectionVyAA05EmptyD0VACyAH24PacerDistanceValuePickerV_AH24PacerDurationValuePickerVAPyAgEyAH023AlignedLeadingAccessoryfD0VyAA5ImageVACyAG_AA6SpacerVAGtGGAA011_ForegroundkZ0VyAA5ColorVGGGtGA42_G_SbQo__SbQo_AEyAEyAEyAEyAH026EmbeddedPacerConfigurationD0VAA14_PaddingLayoutVGAA011_BackgroundZ0VyAEyAA017StrokeBorderShapeD0VyAA16RoundedRectangleVAA017HierarchicalShapeK0VA42_GA1_GGGA24_GA28_GGAH05StartH6ButtonVAEyAEyAEyAH14SaveCopyButtonVA28_GA31_GARyAA11ControlSizeOGGSgAEyAEyAEyAEyAEyAEyAEyAEyAEyAgRyA58_SgGGAUGAZGA1_GA6_GA9_GA12_GA28_GA24_GSgtGMd);
    lazy protocol witness table accessor for type TupleView<(Section<EmptyView, ModifiedContent<ModifiedContent<VStack<TupleView<(_ConditionalContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Text, _EnvironmentKeyWritingModifier<TextAlignment>>, _EnvironmentKeyWritingModifier<Text.Case?>>, _FlexFrameLayout>, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyWritingModifier<Int?>>, BodyHyphenation>?, _ConditionalContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Text, _EnvironmentKeyWritingModifier<TextAlignment>>, _EnvironmentKeyWritingModifier<Text.Case?>>, _FlexFrameLayout>, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyWritingModifier<Int?>>, BodyHyphenation>, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Text, _EnvironmentKeyWritingModifier<TextAlignment>>, _EnvironmentKeyWritingModifier<Text.Case?>>, _FlexFrameLayout>, _EnvironmentKeyWriti(&lazy protocol witness table cache variable for type TupleView<(ModifiedContent<Text, ClearListStyle>, ModifiedContent<ModifiedContent<ModifiedContent<VStack<TupleView<(_ConditionalContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Text, _EnvironmentKeyWritingModifier<TextAlignment>>, _EnvironmentKeyWritingModifier<Text.Case?>>, _FlexFrameLayout>, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyWritingModifier<Int?>>, BodyHyphenation>?, _ConditionalContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Text, _EnvironmentKeyWritingModifier<TextAlignment>>, _EnvironmentKeyWritingModifier<Text.Case?>>, _FlexFrameLayout>, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyWritingModifier<Int?>>, BodyHyphenation>, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Text, _EnvironmentKeyWritingModifier<TextAlignment>>, _EnvironmentKeyWritingModifier<Text.Case?>, &_s7SwiftUI9TupleViewVyAA15ModifiedContentVyAA4TextV07WorkoutB014ClearListStyle33_A607961C6E65DD4DD1C2818C5FE69B58LLVG_AEyAEyAEyAA6VStackVyACyAA012_ConditionalF0VyAEyAEyAEyAEyAEyAEyAgA30_EnvironmentKeyWritingModifierVyAA0G9AlignmentOGGARyAG4CaseOSgGGAA16_FlexFrameLayoutVGARyAA4FontVSgGGARySiSgGGAH15BodyHyphenationVGSgAPyA13_A14_GGSg_A14_tGGAA06_TraityZ0VyAA0j18RowBackgroundTraitX0VGGA21_yAA0j14RowInsetsTraitX0VGGAH04HideJ12RowSeparatorAJLLVGSgAPyAA0D0PAAE8onChange2of7initial_Qrqd___Sbyqd___qd__tctSQRd__lFQOyA35_AAEA36_A37_A38__Qrqd___Sbyqd___qd__tctSQRd__lFQOyAA7SectionVyAA05EmptyD0VACyAH24PacerDistanceValuePickerV_AH24PacerDurationValuePickerVAPyAgEyAH023AlignedLeadingAccessoryfD0VyAA5ImageVACyAG_AA6SpacerVAGtGGAA011_ForegroundkZ0VyAA5ColorVGGGtGA42_G_SbQo__SbQo_AEyAEyAEyAEyAH026EmbeddedPacerConfigurationD0VAA14_PaddingLayoutVGAA011_BackgroundZ0VyAEyAA017StrokeBorderShapeD0VyAA16RoundedRectangleVAA017HierarchicalShapeK0VA42_GA1_GGGA24_GA28_GGAH05StartH6ButtonVAEyAEyAEyAH14SaveCopyButtonVA28_GA31_GARyAA11ControlSizeOGGSgAEyAEyAEyAEyAEyAEyAEyAEyAEyAgRyA58_SgGGAUGAZGA1_GA6_GA9_GA12_GA28_GA24_GSgtGMd);
    List<>.init(content:)();
    v165[0] = v159;
    v39 = *(&v159 + 1);
    type metadata accessor for PacerWorkoutConfiguration();
    lazy protocol witness table accessor for type PacerWorkoutConfiguration and conformance WorkoutConfiguration(&lazy protocol witness table cache variable for type PacerWorkoutConfiguration and conformance WorkoutConfiguration, MEMORY[0x277D7D968]);
    v40 = v39;
    v41 = ObservableObject<>.objectWillChange.getter();
    outlined destroy of ObservedObject<PacerWorkoutConfiguration>(v165, &_s7SwiftUI14ObservedObjectVy11WorkoutCore05PacerE13ConfigurationCGMd);
    v42 = swift_allocObject();
    v43 = v162;
    *(v42 + 5) = v161;
    *(v42 + 6) = v43;
    v44 = v164;
    *(v42 + 7) = v163;
    *(v42 + 8) = v44;
    v45 = v158;
    *(v42 + 1) = v157;
    *(v42 + 2) = v45;
    v46 = v160;
    *(v42 + 3) = v159;
    *(v42 + 4) = v46;
    *&v20[*(v18 + 52)] = v41;
    v47 = &v20[*(v18 + 56)];
    *v47 = partial apply for closure #2 in PacerWorkoutConfigurationView.body.getter;
    v47[1] = v42;
    outlined init with copy of PacerWorkoutConfigurationView(&v157, &v152);
    v48 = static Edge.Set.top.getter();
    static ContentMarginPlacement.scrollContent.getter();
    v49 = lazy protocol witness table accessor for type TupleView<(Section<EmptyView, ModifiedContent<ModifiedContent<VStack<TupleView<(_ConditionalContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Text, _EnvironmentKeyWritingModifier<TextAlignment>>, _EnvironmentKeyWritingModifier<Text.Case?>>, _FlexFrameLayout>, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyWritingModifier<Int?>>, BodyHyphenation>?, _ConditionalContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Text, _EnvironmentKeyWritingModifier<TextAlignment>>, _EnvironmentKeyWritingModifier<Text.Case?>>, _FlexFrameLayout>, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyWritingModifier<Int?>>, BodyHyphenation>, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Text, _EnvironmentKeyWritingModifier<TextAlignment>>, _EnvironmentKeyWritingModifier<Text.Case?>>, _FlexFrameLayout>, _EnvironmentKeyWriti( &lazy protocol witness table cache variable for type SubscriptionView<ObservableObjectPublisher, List<Never, TupleView<(ModifiedContent<Text, ClearListStyle>, ModifiedContent<ModifiedContent<ModifiedContent<VStack<TupleView<(_ConditionalContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Text, _EnvironmentKeyWritingModifier<TextAlignment>>, _EnvironmentKeyWritingModifier<Text.Case?>>, _FlexFrameLayout>, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyWritingModifier<Int?>>, BodyHyphenation>?, _ConditionalContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Text, _EnvironmentKeyWritingModifier<TextAlignment>>, _EnvironmentKeyWritingModifier<Text.Case?>>, _FlexFrameLayout>, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyWritingModifier<Int?>>, BodyHyphenation>, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Text, _EnvironmentKeyWritingModifier<Tex,  &_s7SwiftUI16SubscriptionViewVy7Combine25ObservableObjectPublisherCAA4ListVys5NeverOAA05TupleD0VyAA15ModifiedContentVyAA4TextV07WorkoutB005ClearI5Style33_A607961C6E65DD4DD1C2818C5FE69B58LLVG_ANyANyANyAA6VStackVyALyAA012_ConditionalM0VyANyANyANyANyANyANyApA30_EnvironmentKeyWritingModifierVyAA0N9AlignmentOGGA_yAP4CaseOSgGGAA16_FlexFrameLayoutVGA_yAA4FontVSgGGA_ySiSgGGAQ15BodyHyphenationVGSgAYyA22_A23_GGSg_A23_tGGAA21_TraitWritingModifierVyAA0I21RowBackgroundTraitKeyVGGA30_yAA0I17RowInsetsTraitKeyVGGAQ04HideI12RowSeparatorASLLVGSgAYyAA0D0PAAE8onChange2of7initial_Qrqd___Sbyqd___qd__tctSQRd__lFQOyA44_AAEA45_A46_A47__Qrqd___Sbyqd___qd__tctSQRd__lFQOyAA7SectionVyAA05EmptyD0VALyAQ24PacerDistanceValuePickerV_AQ24PacerDurationValuePickerVAYyApNyAQ023AlignedLeadingAccessorymD0VyAA5ImageVALyAP_AA6SpacerVAPtGGAA011_ForegroundQ8ModifierVyAA5ColorVGGGtGA51_G_SbQo__SbQo_ANyANyANyANyAQ026EmbeddedPacerConfigurationD0VAA14_PaddingLayoutVGAA19_BackgroundModifierVyANyAA017StrokeBorderShapeD0VyAA16RoundedRectangleVAA017HierarchicalShapeQ0VA51_GA10_GGGA33_GA37_GGAQ05StartO6ButtonVANyANyANyAQ14SaveCopyButtonVA37_GA40_GA_yAA11ControlSizeOGGSgANyANyANyANyANyANyANyANyANyAPA_yA67_SgGGA2_GA7_GA10_GA15_GA18_GA21_GA37_GA33_GSgtGGGMd);
    MEMORY[0x20F30A640](v48, 0, 0, v17, v18, v49);
    (*(v130 + 8))(v17, v131);
    outlined destroy of ModifiedContent<SubscriptionView<ObservableObjectPublisher, <<opaque return type of View.toolbarForegroundStyle<A>(_:for:)>>.0>, WorkoutConfigurationToolbar>(v20, &_s7SwiftUI16SubscriptionViewVy7Combine25ObservableObjectPublisherCAA4ListVys5NeverOAA05TupleD0VyAA15ModifiedContentVyAA4TextV07WorkoutB005ClearI5Style33_A607961C6E65DD4DD1C2818C5FE69B58LLVG_ANyANyANyAA6VStackVyALyAA012_ConditionalM0VyANyANyANyANyANyANyApA30_EnvironmentKeyWritingModifierVyAA0N9AlignmentOGGA_yAP4CaseOSgGGAA16_FlexFrameLayoutVGA_yAA4FontVSgGGA_ySiSgGGAQ15BodyHyphenationVGSgAYyA22_A23_GGSg_A23_tGGAA21_TraitWritingModifierVyAA0I21RowBackgroundTraitKeyVGGA30_yAA0I17RowInsetsTraitKeyVGGAQ04HideI12RowSeparatorASLLVGSgAYyAA0D0PAAE8onChange2of7initial_Qrqd___Sbyqd___qd__tctSQRd__lFQOyA44_AAEA45_A46_A47__Qrqd___Sbyqd___qd__tctSQRd__lFQOyAA7SectionVyAA05EmptyD0VALyAQ24PacerDistanceValuePickerV_AQ24PacerDurationValuePickerVAYyApNyAQ023AlignedLeadingAccessorymD0VyAA5ImageVALyAP_AA6SpacerVAPtGGAA011_ForegroundQ8ModifierVyAA5ColorVGGGtGA51_G_SbQo__SbQo_ANyANyANyANyAQ026EmbeddedPacerConfigurationD0VAA14_PaddingLayoutVGAA19_BackgroundModifierVyANyAA017StrokeBorderShapeD0VyAA16RoundedRectangleVAA017HierarchicalShapeQ0VA51_GA10_GGGA33_GA37_GGAQ05StartO6ButtonVANyANyANyAQ14SaveCopyButtonVA37_GA40_GA_yAA11ControlSizeOGGSgANyANyANyANyANyANyANyANyANyAPA_yA67_SgGGA2_GA7_GA10_GA15_GA18_GA21_GA37_GA33_GSgtGGGMd);
    v156 = v162;
    v50 = v40;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI5StateVySbGMd);
    State.projectedValue.getter();
    v51 = v157;
    if (v157)
    {
      v52 = v152;
      v53 = v153;
      LODWORD(v141) = v154;
      v144 = v160;
      LODWORD(v145) = BYTE8(v161);
      outlined init with copy of ObservedObject<PacerWorkoutConfiguration>(v165, &v152, &_s7SwiftUI14ObservedObjectVy11WorkoutCore05PacerE13ConfigurationCGMd);
      v54 = v51;
      WorkoutConfiguration.displayColor.getter();
      outlined destroy of ObservedObject<PacerWorkoutConfiguration>(v165, &_s7SwiftUI14ObservedObjectVy11WorkoutCore05PacerE13ConfigurationCGMd);
      v139 = Color.init(uiColor:)();
      LOBYTE(v156) = 0;
      static Binding.constant(_:)();
      v133 = v153;
      v134 = v152;
      LODWORD(v137) = v154;
      v55 = swift_allocObject();
      *(v55 + 16) = v54;
      v56 = swift_getKeyPath();
      v57 = &v142[*(v149 + 36)];
      *v57 = v56;
      __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI11EnvironmentV7ContentOyAA13DismissActionV_GMd);
      swift_storeEnumTagMultiPayload();
      type metadata accessor for ConfigurationNavigationModel();
      lazy protocol witness table accessor for type PacerWorkoutConfiguration and conformance WorkoutConfiguration(&lazy protocol witness table cache variable for type ConfigurationNavigationModel and conformance ConfigurationNavigationModel, type metadata accessor for ConfigurationNavigationModel);
      v58 = v50;
      v140 = v54;

      v59 = EnvironmentObject.init()();
      v61 = v60;
      v62 = type metadata accessor for WorkoutConfigurationToolbar();
      v63 = (v57 + v62[5]);
      *v63 = v59;
      v63[1] = v61;
      v64 = (v57 + v62[6]);
      type metadata accessor for WorkoutConfiguration();
      lazy protocol witness table accessor for type PacerWorkoutConfiguration and conformance WorkoutConfiguration(&lazy protocol witness table cache variable for type WorkoutConfiguration and conformance WorkoutConfiguration, MEMORY[0x277D7DA50]);
      v65 = v58;
      *v64 = ObservedObject.init(wrappedValue:)();
      v64[1] = v66;
      v67 = v57 + v62[7];
      *v67 = v52;
      *(v67 + 1) = v53;
      v67[16] = v141;
      v68 = v57 + v62[8];
      *v68 = implicit closure #2 in View.workoutConfigurationToolbar(workoutConfiguration:hasBeenModified:dataSource:formattingManager:intent:color:showEditConfirmation:)partial apply;
      *(v68 + 1) = v55;
      v68[16] = 0;
      v69 = v144;
      *(v57 + v62[9]) = v144;
      *(v57 + v62[10]) = v145;
      *(v57 + v62[11]) = v139;
      v70 = v57 + v62[12];
      v71 = v133;
      *v70 = v134;
      *(v70 + 1) = v71;
      v70[16] = v137;
      v72 = v57 + v62[13];
      LOBYTE(v156) = 0;

      v73 = v69;

      State.init(wrappedValue:)();
      v74 = v153;
      *v72 = v152;
      *(v72 + 1) = v74;
      v75 = v57 + v62[14];
      LOBYTE(v156) = 0;
      State.init(wrappedValue:)();

      outlined destroy of ObservedObject<PacerWorkoutConfiguration>(v165, &_s7SwiftUI14ObservedObjectVy11WorkoutCore05PacerE13ConfigurationCGMd);

      v76 = v153;
      *v75 = v152;
      *(v75 + 1) = v76;
      v77 = v142;
      (*(v135 + 32))(v142, v143, v138);
      v78 = &_s7SwiftUI15ModifiedContentVyAA4ViewPAAE14contentMargins__3forQrAA4EdgeO3SetV_12CoreGraphics7CGFloatVSgAA0D15MarginPlacementVtFQOyAA012SubscriptionE0Vy7Combine25ObservableObjectPublisherCAA4ListVys5NeverOAA05TupleE0VyACyAA4TextV07WorkoutB005ClearU5Style33_A607961C6E65DD4DD1C2818C5FE69B58LLVG_ACyACyACyAA6VStackVyA0_yAA012_ConditionalD0VyACyACyACyACyACyACyA2_AA30_EnvironmentKeyWritingModifierVyAA0X9AlignmentOGGA13_yA2_4CaseOSgGGAA16_FlexFrameLayoutVGA13_yAA4FontVSgGGA13_ySiSgGGA3_15BodyHyphenationVGSgA11_yA36_A37_GGSg_A37_tGGAA21_TraitWritingModifierVyAA0U21RowBackgroundTraitKeyVGGA44_yAA0U17RowInsetsTraitKeyVGGA3_04HideU12RowSeparatorA5_LLVGSgA11_yAeAE8onChange2of7initial_Qrqd___Sbyqd___qd__tctSQRd__lFQOyAeAEA57_A58_A59__Qrqd___Sbyqd___qd__tctSQRd__lFQOyAA7SectionVyAA05EmptyE0VA0_yA3_24PacerDistanceValuePickerV_A3_24PacerDurationValuePickerVA11_yA2_ACyA3_023AlignedLeadingAccessorydE0VyAA5ImageVA0_yA2__AA6SpacerVA2_tGGAA24_ForegroundStyleModifierVyAA5ColorVGGGtGA63_G_SbQo__SbQo_ACyACyACyACyA3_026EmbeddedPacerConfigurationE0VAA14_PaddingLayoutVGAA19_BackgroundModifierVyACyAA017StrokeBorderShapeE0VyAA16RoundedRectangleVAA22HierarchicalShapeStyleVA63_GA24_GGGA47_GA51_GGA3_05StartY6ButtonVACyACyACyA3_14SaveCopyButtonVA51_GA54_GA13_yAA11ControlSizeOGGSgACyACyACyACyACyACyACyACyACyA2_A13_yA79_SgGGA16_GA21_GA24_GA29_GA32_GA35_GA51_GA47_GSgtGGG_Qo_A3_0Y20ConfigurationToolbarVGMd;
      v79 = v136;
      outlined init with take of SubscriptionView<ObservableObjectPublisher, <<opaque return type of View.toolbarForegroundStyle<A>(_:for:)>>.0>(v77, v136, &_s7SwiftUI15ModifiedContentVyAA4ViewPAAE14contentMargins__3forQrAA4EdgeO3SetV_12CoreGraphics7CGFloatVSgAA0D15MarginPlacementVtFQOyAA012SubscriptionE0Vy7Combine25ObservableObjectPublisherCAA4ListVys5NeverOAA05TupleE0VyACyAA4TextV07WorkoutB005ClearU5Style33_A607961C6E65DD4DD1C2818C5FE69B58LLVG_ACyACyACyAA6VStackVyA0_yAA012_ConditionalD0VyACyACyACyACyACyACyA2_AA30_EnvironmentKeyWritingModifierVyAA0X9AlignmentOGGA13_yA2_4CaseOSgGGAA16_FlexFrameLayoutVGA13_yAA4FontVSgGGA13_ySiSgGGA3_15BodyHyphenationVGSgA11_yA36_A37_GGSg_A37_tGGAA21_TraitWritingModifierVyAA0U21RowBackgroundTraitKeyVGGA44_yAA0U17RowInsetsTraitKeyVGGA3_04HideU12RowSeparatorA5_LLVGSgA11_yAeAE8onChange2of7initial_Qrqd___Sbyqd___qd__tctSQRd__lFQOyAeAEA57_A58_A59__Qrqd___Sbyqd___qd__tctSQRd__lFQOyAA7SectionVyAA05EmptyE0VA0_yA3_24PacerDistanceValuePickerV_A3_24PacerDurationValuePickerVA11_yA2_ACyA3_023AlignedLeadingAccessorydE0VyAA5ImageVA0_yA2__AA6SpacerVA2_tGGAA24_ForegroundStyleModifierVyAA5ColorVGGGtGA63_G_SbQo__SbQo_ACyACyACyACyA3_026EmbeddedPacerConfigurationE0VAA14_PaddingLayoutVGAA19_BackgroundModifierVyACyAA017StrokeBorderShapeE0VyAA16RoundedRectangleVAA22HierarchicalShapeStyleVA63_GA24_GGGA47_GA51_GGA3_05StartY6ButtonVACyACyACyA3_14SaveCopyButtonVA51_GA54_GA13_yAA11ControlSizeOGGSgACyACyACyACyACyACyACyACyACyA2_A13_yA79_SgGGA16_GA21_GA24_GA29_GA32_GA35_GA51_GA47_GSgtGGG_Qo_A3_0Y20ConfigurationToolbarVGMd);
      outlined init with copy of ModifiedContent<SubscriptionView<ObservableObjectPublisher, <<opaque return type of View.toolbarForegroundStyle<A>(_:for:)>>.0>, WorkoutConfigurationToolbar>(v79, v147, &_s7SwiftUI15ModifiedContentVyAA4ViewPAAE14contentMargins__3forQrAA4EdgeO3SetV_12CoreGraphics7CGFloatVSgAA0D15MarginPlacementVtFQOyAA012SubscriptionE0Vy7Combine25ObservableObjectPublisherCAA4ListVys5NeverOAA05TupleE0VyACyAA4TextV07WorkoutB005ClearU5Style33_A607961C6E65DD4DD1C2818C5FE69B58LLVG_ACyACyACyAA6VStackVyA0_yAA012_ConditionalD0VyACyACyACyACyACyACyA2_AA30_EnvironmentKeyWritingModifierVyAA0X9AlignmentOGGA13_yA2_4CaseOSgGGAA16_FlexFrameLayoutVGA13_yAA4FontVSgGGA13_ySiSgGGA3_15BodyHyphenationVGSgA11_yA36_A37_GGSg_A37_tGGAA21_TraitWritingModifierVyAA0U21RowBackgroundTraitKeyVGGA44_yAA0U17RowInsetsTraitKeyVGGA3_04HideU12RowSeparatorA5_LLVGSgA11_yAeAE8onChange2of7initial_Qrqd___Sbyqd___qd__tctSQRd__lFQOyAeAEA57_A58_A59__Qrqd___Sbyqd___qd__tctSQRd__lFQOyAA7SectionVyAA05EmptyE0VA0_yA3_24PacerDistanceValuePickerV_A3_24PacerDurationValuePickerVA11_yA2_ACyA3_023AlignedLeadingAccessorydE0VyAA5ImageVA0_yA2__AA6SpacerVA2_tGGAA24_ForegroundStyleModifierVyAA5ColorVGGGtGA63_G_SbQo__SbQo_ACyACyACyACyA3_026EmbeddedPacerConfigurationE0VAA14_PaddingLayoutVGAA19_BackgroundModifierVyACyAA017StrokeBorderShapeE0VyAA16RoundedRectangleVAA22HierarchicalShapeStyleVA63_GA24_GGGA47_GA51_GGA3_05StartY6ButtonVACyACyACyA3_14SaveCopyButtonVA51_GA54_GA13_yAA11ControlSizeOGGSgACyACyACyACyACyACyACyACyACyA2_A13_yA79_SgGGA16_GA21_GA24_GA29_GA32_GA35_GA51_GA47_GSgtGGG_Qo_A3_0Y20ConfigurationToolbarVGMd);
LABEL_9:
      swift_storeEnumTagMultiPayload();
      lazy protocol witness table accessor for type ModifiedContent<<<opaque return type of View.contentMargins(_:_:for:)>>.0, WorkoutConfigurationToolbar> and conformance <> ModifiedContent<A, B>();
      lazy protocol witness table accessor for type ModifiedContent<SubscriptionView<ObservableObjectPublisher, <<opaque return type of View.toolbarForegroundStyle<A>(_:for:)>>.0>, WorkoutConfigurationToolbar> and conformance <> ModifiedContent<A, B>();
      _ConditionalContent<>.init(storage:)();
      return outlined destroy of ModifiedContent<SubscriptionView<ObservableObjectPublisher, <<opaque return type of View.toolbarForegroundStyle<A>(_:for:)>>.0>, WorkoutConfigurationToolbar>(v79, v78);
    }
  }

  type metadata accessor for WorkoutConfigurationDataSource();
  lazy protocol witness table accessor for type PacerWorkoutConfiguration and conformance WorkoutConfiguration(&lazy protocol witness table cache variable for type WorkoutConfigurationDataSource and conformance WorkoutConfigurationDataSource, MEMORY[0x277D7DC28]);
  result = EnvironmentObject.error()();
  __break(1u);
  return result;
}

uint64_t closure #1 in PacerWorkoutConfigurationView.body.getter@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v258 = a2;
  v259 = a1;
  v223 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyACyACyAA4TextVAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGAGyAA0E9AlignmentOGGAGyAE4CaseOSgGGMd);
  MEMORY[0x28223BE20](v223);
  v229 = &v220 - v2;
  v227 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyACyACyACyAA4TextVAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGAGyAA0E9AlignmentOGGAGyAE4CaseOSgGGAA16_FlexFrameLayoutVGMd);
  MEMORY[0x28223BE20](v227);
  v235 = &v220 - v3;
  v233 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyACyACyACyACyAA4TextVAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGAGyAA0E9AlignmentOGGAGyAE4CaseOSgGGAA16_FlexFrameLayoutVGAGyAA4FontVSgGGMd);
  MEMORY[0x28223BE20](v233);
  v234 = &v220 - v4;
  v232 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyACyACyACyACyACyAA4TextVAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGAGyAA0E9AlignmentOGGAGyAE4CaseOSgGGAA16_FlexFrameLayoutVGAGyAA4FontVSgGGAGySiSgGGMd);
  MEMORY[0x28223BE20](v232);
  v231 = &v220 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyACyACyACyACyACyACyAA4TextVAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGAGyAA0E9AlignmentOGGAGyAE4CaseOSgGGAA16_FlexFrameLayoutVGAGyAA4FontVSgGGAGySiSgGG07WorkoutB015BodyHyphenationVGMd);
  MEMORY[0x28223BE20](v6 - 8);
  v228 = &v220 - v7;
  v224 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyACyACyACyACyACyACyACyAA4TextVAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGAGyAA0E9AlignmentOGGAGyAE4CaseOSgGGAA16_FlexFrameLayoutVGAGyAA4FontVSgGGAGySiSgGG07WorkoutB015BodyHyphenationVGAA06_TraithI0VyAA013ListRowInsetstG0VGGMd);
  MEMORY[0x28223BE20](v224);
  v230 = &v220 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyACyACyACyACyACyACyACyACyAA4TextVAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGAGyAA0E9AlignmentOGGAGyAE4CaseOSgGGAA16_FlexFrameLayoutVGAGyAA4FontVSgGGAGySiSgGG07WorkoutB015BodyHyphenationVGAA06_TraithI0VyAA013ListRowInsetstG0VGGA10_yAA0uv10BackgroundtG0VGGMd);
  v255 = *(v9 - 8);
  v256 = v9;
  MEMORY[0x28223BE20](v9);
  v226 = &v220 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v225 = &v220 - v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyACyACyACyACyACyACyACyACyAA4TextVAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGAGyAA0E9AlignmentOGGAGyAE4CaseOSgGGAA16_FlexFrameLayoutVGAGyAA4FontVSgGGAGySiSgGG07WorkoutB015BodyHyphenationVGAA06_TraithI0VyAA013ListRowInsetstG0VGGA10_yAA0uv10BackgroundtG0VGGSgMd);
  MEMORY[0x28223BE20](v13 - 8);
  v257 = &v220 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v275 = &v220 - v16;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyACyACy07WorkoutB014SaveCopyButtonVAA21_TraitWritingModifierVyAA013ListRowInsetsI3KeyVGGAD04HidelM9Separator33_A607961C6E65DD4DD1C2818C5FE69B58LLVGAA012_EnvironmentojK0VyAA11ControlSizeOGGMd);
  v253 = *(v17 - 8);
  v254 = v17;
  MEMORY[0x28223BE20](v17);
  v222 = &v220 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v19);
  v221 = &v220 - v20;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyACyACy07WorkoutB014SaveCopyButtonVAA21_TraitWritingModifierVyAA013ListRowInsetsI3KeyVGGAD04HidelM9Separator33_A607961C6E65DD4DD1C2818C5FE69B58LLVGAA012_EnvironmentojK0VyAA11ControlSizeOGGSgMd);
  MEMORY[0x28223BE20](v21 - 8);
  v274 = &v220 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v23);
  v280 = &v220 - v24;
  v242 = type metadata accessor for RoundedRectangle();
  MEMORY[0x28223BE20](v242);
  v244 = &v220 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v243 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI21StrokeBorderShapeViewVyAA16RoundedRectangleVAA012HierarchicalE5StyleVAA05EmptyF0VGMd);
  MEMORY[0x28223BE20](v243);
  v247 = &v220 - v26;
  v245 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyAA21StrokeBorderShapeViewVyAA16RoundedRectangleVAA012HierarchicalG5StyleVAA05EmptyH0VGAA16_FlexFrameLayoutVGMd);
  MEMORY[0x28223BE20](v245);
  v248 = &v220 - v27;
  v246 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyACy07WorkoutB030EmbeddedPacerConfigurationViewVAA14_PaddingLayoutVGAA19_BackgroundModifierVyACyAA017StrokeBorderShapeI0VyAA16RoundedRectangleVAA012HierarchicalP5StyleVAA05EmptyI0VGAA010_FlexFrameK0VGGGMd);
  MEMORY[0x28223BE20](v246);
  v260 = &v220 - v28;
  v251 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyACyACy07WorkoutB030EmbeddedPacerConfigurationViewVAA14_PaddingLayoutVGAA19_BackgroundModifierVyACyAA017StrokeBorderShapeI0VyAA16RoundedRectangleVAA012HierarchicalP5StyleVAA05EmptyI0VGAA010_FlexFrameK0VGGGAA013_TraitWritingM0VyAA07ListRowlX3KeyVGGMd);
  MEMORY[0x28223BE20](v251);
  v250 = &v220 - v29;
  v269 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyACyACyACy07WorkoutB030EmbeddedPacerConfigurationViewVAA14_PaddingLayoutVGAA19_BackgroundModifierVyACyAA017StrokeBorderShapeI0VyAA16RoundedRectangleVAA012HierarchicalP5StyleVAA05EmptyI0VGAA010_FlexFrameK0VGGGAA013_TraitWritingM0VyAA07ListRowlX3KeyVGGA_yAA0z9RowInsetsX3KeyVGGMd);
  MEMORY[0x28223BE20](v269);
  v249 = &v220 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v31);
  v261 = &v220 - v32;
  v266 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI19_ConditionalContentV7StorageOyAA4ViewPAAE8onChange2of7initial_Qrqd___Sbyqd___qd__tctSQRd__lFQOyAgAEAhiJ_Qrqd___Sbyqd___qd__tctSQRd__lFQOyAA7SectionVyAA05EmptyF0VAA05TupleF0Vy07WorkoutB024PacerDistanceValuePickerV_AQ0o8DurationqR0VACyAA4TextVAA08ModifiedD0VyAQ023AlignedLeadingAccessorydF0VyAA5ImageVAPyAW_AA6SpacerVAWtGGAA24_ForegroundStyleModifierVyAA5ColorVGGGtGANG_SbQo__SbQo_AYyAYyAYyAYyAQ08Embeddedo13ConfigurationF0VAA14_PaddingLayoutVGAA19_BackgroundModifierVyAYyAA017StrokeBorderShapeF0VyAA16RoundedRectangleVAA22HierarchicalShapeStyleVANGAA16_FlexFrameLayoutVGGGAA21_TraitWritingModifierVyAA25ListRowBackgroundTraitKeyVGGA37_yAA21ListRowInsetsTraitKeyVGG_GMd);
  MEMORY[0x28223BE20](v266);
  v268 = &v220 - v33;
  object = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI7SectionVyAA9EmptyViewVAA05TupleE0Vy07WorkoutB024PacerDistanceValuePickerV_AH0h8DurationjK0VAA19_ConditionalContentVyAA4TextVAA08ModifiedN0VyAH023AlignedLeadingAccessorynE0VyAA5ImageVAGyAP_AA6SpacerVAPtGGAA24_ForegroundStyleModifierVyAA5ColorVGGGtGAEGMd);
  v237 = *(object - 8);
  MEMORY[0x28223BE20](object);
  v236 = &v220 - v34;
  countAndFlagsBits = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI4ViewPAAE8onChange2of7initial_Qrqd___Sbyqd___qd__tctSQRd__lFQOyAA7SectionVyAA05EmptyC0VAA05TupleC0Vy07WorkoutB024PacerDistanceValuePickerV_AM0l8DurationnO0VAA19_ConditionalContentVyAA4TextVAA08ModifiedR0VyAM023AlignedLeadingAccessoryrC0VyAA5ImageVALyAU_AA6SpacerVAUtGGAA24_ForegroundStyleModifierVyAA5ColorVGGGtGAJG_SbQo_Md);
  v239 = *(countAndFlagsBits - 8);
  MEMORY[0x28223BE20](countAndFlagsBits);
  v238 = &v220 - v35;
  v267 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI4ViewPAAE8onChange2of7initial_Qrqd___Sbyqd___qd__tctSQRd__lFQOyAcAEAdeF_Qrqd___Sbyqd___qd__tctSQRd__lFQOyAA7SectionVyAA05EmptyC0VAA05TupleC0Vy07WorkoutB024PacerDistanceValuePickerV_AM0l8DurationnO0VAA19_ConditionalContentVyAA4TextVAA08ModifiedR0VyAM023AlignedLeadingAccessoryrC0VyAA5ImageVALyAU_AA6SpacerVAUtGGAA24_ForegroundStyleModifierVyAA5ColorVGGGtGAJG_SbQo__SbQo_Md);
  v241 = *(v267 - 8);
  MEMORY[0x28223BE20](v267);
  v240 = &v220 - v36;
  v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI19_ConditionalContentVyAA4ViewPAAE8onChange2of7initial_Qrqd___Sbyqd___qd__tctSQRd__lFQOyAeAEAfgH_Qrqd___Sbyqd___qd__tctSQRd__lFQOyAA7SectionVyAA05EmptyE0VAA05TupleE0Vy07WorkoutB024PacerDistanceValuePickerV_AO0n8DurationpQ0VACyAA4TextVAA08ModifiedD0VyAO023AlignedLeadingAccessorydE0VyAA5ImageVANyAU_AA6SpacerVAUtGGAA24_ForegroundStyleModifierVyAA5ColorVGGGtGALG_SbQo__SbQo_AWyAWyAWyAWyAO08Embeddedn13ConfigurationE0VAA14_PaddingLayoutVGAA19_BackgroundModifierVyAWyAA017StrokeBorderShapeE0VyAA16RoundedRectangleVAA22HierarchicalShapeStyleVALGAA16_FlexFrameLayoutVGGGAA21_TraitWritingModifierVyAA25ListRowBackgroundTraitKeyVGGA35_yAA21ListRowInsetsTraitKeyVGGGMd);
  MEMORY[0x28223BE20](v37 - 8);
  v273 = &v220 - ((v38 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v39);
  v279 = &v220 - v40;
  v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyACyACyAA6VStackVyAA9TupleViewVyAA012_ConditionalD0VyACyACyACyACyACyACyAA4TextVAA30_EnvironmentKeyWritingModifierVyAA0I9AlignmentOGGAMyAK4CaseOSgGGAA16_FlexFrameLayoutVGAMyAA4FontVSgGGAMySiSgGG07WorkoutB015BodyHyphenationVGSgAIyA9_A10_GGSg_A10_tGGAA06_TraitlM0VyAA017ListRowBackgroundwK0VGGA17_yAA0xy6InsetswK0VGGA6_04HidexY9Separator33_A607961C6E65DD4DD1C2818C5FE69B58LLVGMd);
  v262 = *(v41 - 8);
  v263 = v41;
  MEMORY[0x28223BE20](v41);
  v43 = &v220 - v42;
  v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyACyACyAA6VStackVyAA9TupleViewVyAA012_ConditionalD0VyACyACyACyACyACyACyAA4TextVAA30_EnvironmentKeyWritingModifierVyAA0I9AlignmentOGGAMyAK4CaseOSgGGAA16_FlexFrameLayoutVGAMyAA4FontVSgGGAMySiSgGG07WorkoutB015BodyHyphenationVGSgAIyA9_A10_GGSg_A10_tGGAA06_TraitlM0VyAA017ListRowBackgroundwK0VGGA17_yAA0xy6InsetswK0VGGA6_04HidexY9Separator33_A607961C6E65DD4DD1C2818C5FE69B58LLVGSgMd);
  MEMORY[0x28223BE20](v44 - 8);
  v272 = &v220 - ((v45 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v46);
  v278 = &v220 - v47;
  if (one-time initialization token for WorkoutUIBundle != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v48 = WorkoutUIBundle.super.isa;
  v331._object = 0xE000000000000000;
  v49._object = 0x800000020CB9AB00;
  v49._countAndFlagsBits = 0xD000000000000012;
  v50.value._countAndFlagsBits = 0x617A696C61636F4CLL;
  v50.value._object = 0xEB00000000656C62;
  v51._countAndFlagsBits = 0;
  v51._object = 0xE000000000000000;
  v331._countAndFlagsBits = 0;
  v52 = NSLocalizedString(_:tableName:bundle:value:comment:)(v49, v50, v48, v51, v331);

  v290 = v52;
  v220 = lazy protocol witness table accessor for type String and conformance String();
  v53 = Text.init<A>(_:)();
  v55 = v54;
  v57 = v56;
  static Font.Weight.bold.getter();
  v58 = Text.fontWeight(_:)();
  v60 = v59;
  v62 = v61;
  outlined consume of Text.Storage(v53, v55, v57 & 1);

  static Font.largeTitle.getter();
  v277 = Text.font(_:)();
  v270 = v63;
  v271 = v64;
  v252 = v65;

  outlined consume of Text.Storage(v58, v60, v62 & 1);

  v66 = v259;
  v330[0] = *(v259 + 32);
  v67 = *(&v330[0] + 1);
  outlined init with copy of ObservedObject<PacerWorkoutConfiguration>(v330, &v290, &_s7SwiftUI14ObservedObjectVy11WorkoutCore05PacerE13ConfigurationCGMd);
  v68 = v67;
  if (dispatch thunk of WorkoutConfiguration.externalProvider.getter())
  {

    *v43 = static HorizontalAlignment.leading.getter();
    *(v43 + 1) = 0;
    v43[16] = 0;
    v69 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI13_VariadicViewO4TreeVy_AA13_VStackLayoutVAA05TupleD0VyAA19_ConditionalContentVyAA08ModifiedJ0VyAMyAMyAMyAMyAMyAA4TextVAA30_EnvironmentKeyWritingModifierVyAA0L9AlignmentOGGAQyAO4CaseOSgGGAA010_FlexFrameG0VGAQyAA4FontVSgGGAQySiSgGG07WorkoutB015BodyHyphenationVGSgAKyA13_A14_GGSg_A14_tGGMd);
    closure #2 in WorkoutConfiguration.externalProviderDescriptionHeaderStack()(v68, &v43[*(v69 + 44)]);
    v290._countAndFlagsBits = static Color.clear.getter();
    v70 = AnyView.init<A>(_:)();
    *&v43[*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyAA6VStackVyAA9TupleViewVyAA012_ConditionalD0VyACyACyACyACyACyACyAA4TextVAA30_EnvironmentKeyWritingModifierVyAA0I9AlignmentOGGAMyAK4CaseOSgGGAA16_FlexFrameLayoutVGAMyAA4FontVSgGGAMySiSgGG07WorkoutB015BodyHyphenationVGSgAIyA9_A10_GGSg_A10_tGGAA06_TraitlM0VyAA017ListRowBackgroundwK0VGGMd) + 36)] = v70;
    v71 = &v43[*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyACyAA6VStackVyAA9TupleViewVyAA012_ConditionalD0VyACyACyACyACyACyACyAA4TextVAA30_EnvironmentKeyWritingModifierVyAA0I9AlignmentOGGAMyAK4CaseOSgGGAA16_FlexFrameLayoutVGAMyAA4FontVSgGGAMySiSgGG07WorkoutB015BodyHyphenationVGSgAIyA9_A10_GGSg_A10_tGGAA06_TraitlM0VyAA017ListRowBackgroundwK0VGGA17_yAA0xy6InsetswK0VGGMd) + 36)];
    *v71 = xmmword_20CB7E4D0;
    *(v71 + 1) = xmmword_20CB7F940;
    v71[32] = 0;
    v72 = v43;
    v73 = v278;
    _s7SwiftUI15ModifiedContentVyACyACyAA4TextVAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGAGyAA0E9AlignmentOGGAGyAE4CaseOSgGGWObTm_0(v72, v278, &_s7SwiftUI15ModifiedContentVyACyACyAA6VStackVyAA9TupleViewVyAA012_ConditionalD0VyACyACyACyACyACyACyAA4TextVAA30_EnvironmentKeyWritingModifierVyAA0I9AlignmentOGGAMyAK4CaseOSgGGAA16_FlexFrameLayoutVGAMyAA4FontVSgGGAMySiSgGG07WorkoutB015BodyHyphenationVGSgAIyA9_A10_GGSg_A10_tGGAA06_TraitlM0VyAA017ListRowBackgroundwK0VGGA17_yAA0xy6InsetswK0VGGA6_04HidexY9Separator33_A607961C6E65DD4DD1C2818C5FE69B58LLVGMd);
    v74 = 0;
  }

  else
  {
    v74 = 1;
    v73 = v278;
  }

  (*(v262 + 56))(v73, v74, 1, v263);
  v75 = dispatch thunk of WorkoutConfiguration.externalProvider.getter();
  v276 = v68;
  if (v75)
  {

    v263 = *(v66 + 48);
    v76 = static Edge.Set.all.getter();
    LOBYTE(v290._countAndFlagsBits) = 1;
    v77 = *(v242 + 20);
    v78 = *MEMORY[0x277CE0118];
    v79 = type metadata accessor for RoundedCornerStyle();
    v80 = v244;
    (*(*(v79 - 8) + 104))(&v244[v77], v78, v79);
    __asm { FMOV            V0.2D, #26.0 }

    *v80 = _Q0;
    v86 = static HierarchicalShapeStyle.tertiary.getter();
    StrokeStyle.init(lineWidth:lineCap:lineJoin:miterLimit:dash:dashPhase:)();
    v87 = MEMORY[0x277CDFC08];
    v88 = v247;
    outlined init with copy of RoundedRectangle(v80, v247, MEMORY[0x277CDFC08]);
    v89 = *&v313 * 0.5;
    v90 = v88 + *(v243 + 68);
    outlined init with copy of RoundedRectangle(v80, v90, v87);
    *(v90 + *(type metadata accessor for RoundedRectangle._Inset() + 20)) = v89;
    v91 = v90 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI13_StrokedShapeVyAA16RoundedRectangleV6_InsetVGMd) + 36);
    v92 = v314;
    *v91 = v313;
    *(v91 + 16) = v92;
    *(v91 + 32) = v315;
    v93 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI10_ShapeViewVyAA08_StrokedC0VyAA16RoundedRectangleV6_InsetVGAA012HierarchicalC5StyleVGMd);
    *(v90 + *(v93 + 52)) = v86;
    *(v90 + *(v93 + 56)) = 256;
    v94 = static Alignment.center.getter();
    v96 = v95;
    outlined destroy of RoundedRectangle(v80, MEMORY[0x277CDFC08]);
    v97 = (v90 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyAA10_ShapeViewVyAA08_StrokedE0VyAA16RoundedRectangleV6_InsetVGAA012HierarchicalE5StyleVGAA19_BackgroundModifierVyAA05EmptyF0VGGMd) + 36));
    *v97 = v94;
    v97[1] = v96;
    static Alignment.center.getter();
    _FlexFrameLayout.init(minWidth:idealWidth:maxWidth:minHeight:idealHeight:maxHeight:alignment:)();
    v98 = v88;
    v99 = v248;
    outlined init with take of SubscriptionView<ObservableObjectPublisher, <<opaque return type of View.toolbarForegroundStyle<A>(_:for:)>>.0>(v98, v248, &_s7SwiftUI21StrokeBorderShapeViewVyAA16RoundedRectangleVAA012HierarchicalE5StyleVAA05EmptyF0VGMd);
    v100 = (v99 + *(v245 + 36));
    v101 = v321;
    v100[4] = v320;
    v100[5] = v101;
    v100[6] = v322;
    v102 = v317;
    *v100 = v316;
    v100[1] = v102;
    v103 = v319;
    v100[2] = v318;
    v100[3] = v103;
    v104 = static Alignment.center.getter();
    v106 = v105;
    v107 = v260;
    v108 = &v260[*(v246 + 36)];
    outlined init with take of SubscriptionView<ObservableObjectPublisher, <<opaque return type of View.toolbarForegroundStyle<A>(_:for:)>>.0>(v99, v108, &_s7SwiftUI15ModifiedContentVyAA21StrokeBorderShapeViewVyAA16RoundedRectangleVAA012HierarchicalG5StyleVAA05EmptyH0VGAA16_FlexFrameLayoutVGMd);
    v109 = (v108 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI19_BackgroundModifierVyAA15ModifiedContentVyAA21StrokeBorderShapeViewVyAA16RoundedRectangleVAA012HierarchicalI5StyleVAA05EmptyJ0VGAA16_FlexFrameLayoutVGGMd) + 36));
    *v109 = v104;
    v109[1] = v106;
    v110 = v276;
    v111 = v263;
    *v107 = v276;
    *(v107 + 8) = v111;
    *(v107 + 16) = v76;
    *(v107 + 20) = *(&v281 + 3);
    *(v107 + 17) = v281;
    *(v107 + 40) = 0u;
    *(v107 + 24) = 0u;
    *(v107 + 56) = 1;
    v290._countAndFlagsBits = static Color.clear.getter();
    v112 = AnyView.init<A>(_:)();
    v113 = v250;
    outlined init with take of SubscriptionView<ObservableObjectPublisher, <<opaque return type of View.toolbarForegroundStyle<A>(_:for:)>>.0>(v107, v250, &_s7SwiftUI15ModifiedContentVyACy07WorkoutB030EmbeddedPacerConfigurationViewVAA14_PaddingLayoutVGAA19_BackgroundModifierVyACyAA017StrokeBorderShapeI0VyAA16RoundedRectangleVAA012HierarchicalP5StyleVAA05EmptyI0VGAA010_FlexFrameK0VGGGMd);
    *(v113 + *(v251 + 36)) = v112;
    v114 = v249;
    outlined init with take of SubscriptionView<ObservableObjectPublisher, <<opaque return type of View.toolbarForegroundStyle<A>(_:for:)>>.0>(v113, v249, &_s7SwiftUI15ModifiedContentVyACyACy07WorkoutB030EmbeddedPacerConfigurationViewVAA14_PaddingLayoutVGAA19_BackgroundModifierVyACyAA017StrokeBorderShapeI0VyAA16RoundedRectangleVAA012HierarchicalP5StyleVAA05EmptyI0VGAA010_FlexFrameK0VGGGAA013_TraitWritingM0VyAA07ListRowlX3KeyVGGMd);
    v115 = v114 + *(v269 + 36);
    *v115 = xmmword_20CB7EC90;
    *(v115 + 16) = xmmword_20CB7E4D0;
    *(v115 + 32) = 0;
    v116 = v261;
    outlined init with take of SubscriptionView<ObservableObjectPublisher, <<opaque return type of View.toolbarForegroundStyle<A>(_:for:)>>.0>(v114, v261, &_s7SwiftUI15ModifiedContentVyACyACyACy07WorkoutB030EmbeddedPacerConfigurationViewVAA14_PaddingLayoutVGAA19_BackgroundModifierVyACyAA017StrokeBorderShapeI0VyAA16RoundedRectangleVAA012HierarchicalP5StyleVAA05EmptyI0VGAA010_FlexFrameK0VGGGAA013_TraitWritingM0VyAA07ListRowlX3KeyVGGA_yAA0z9RowInsetsX3KeyVGGMd);
    outlined init with copy of ModifiedContent<SubscriptionView<ObservableObjectPublisher, <<opaque return type of View.toolbarForegroundStyle<A>(_:for:)>>.0>, WorkoutConfigurationToolbar>(v116, v268, &_s7SwiftUI15ModifiedContentVyACyACyACy07WorkoutB030EmbeddedPacerConfigurationViewVAA14_PaddingLayoutVGAA19_BackgroundModifierVyACyAA017StrokeBorderShapeI0VyAA16RoundedRectangleVAA012HierarchicalP5StyleVAA05EmptyI0VGAA010_FlexFrameK0VGGGAA013_TraitWritingM0VyAA07ListRowlX3KeyVGGA_yAA0z9RowInsetsX3KeyVGGMd);
    swift_storeEnumTagMultiPayload();
    v117 = lazy protocol witness table accessor for type Section<EmptyView, TupleView<(PacerDistanceValuePicker, PacerDurationValuePicker, _ConditionalContent<Text, ModifiedContent<AlignedLeadingAccessoryContentView<Image, TupleView<(Text, Spacer, Text)>>, _ForegroundStyleModifier<Color>>>)>, EmptyView> and conformance <> Section<A, B, C>();
    v118 = MEMORY[0x277D839B0];
    v290._countAndFlagsBits = object;
    v290._object = MEMORY[0x277D839B0];
    v119 = MEMORY[0x277D839C8];
    v291 = v117;
    v292 = MEMORY[0x277D839C8];
    OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
    v290._countAndFlagsBits = countAndFlagsBits;
    v290._object = v118;
    v291 = OpaqueTypeConformance2;
    v292 = v119;
    swift_getOpaqueTypeConformance2();
    lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<EmbeddedPacerConfigurationView, _PaddingLayout>, _BackgroundModifier<ModifiedContent<StrokeBorderShapeView<RoundedRectangle, HierarchicalShapeStyle, EmptyView>, _FlexFrameLayout>>>, _TraitWritingModifier<ListRowBackgroundTraitKey>>, _TraitWritingModifier<ListRowInsetsTraitKey>> and conformance <> ModifiedContent<A, B>();
    _ConditionalContent<>.init(storage:)();
    outlined destroy of ModifiedContent<SubscriptionView<ObservableObjectPublisher, <<opaque return type of View.toolbarForegroundStyle<A>(_:for:)>>.0>, WorkoutConfigurationToolbar>(v116, &_s7SwiftUI15ModifiedContentVyACyACyACy07WorkoutB030EmbeddedPacerConfigurationViewVAA14_PaddingLayoutVGAA19_BackgroundModifierVyACyAA017StrokeBorderShapeI0VyAA16RoundedRectangleVAA012HierarchicalP5StyleVAA05EmptyI0VGAA010_FlexFrameK0VGGGAA013_TraitWritingM0VyAA07ListRowlX3KeyVGGA_yAA0z9RowInsetsX3KeyVGGMd);
  }

  else
  {
    v121 = outlined destroy of ObservedObject<PacerWorkoutConfiguration>(v330, &_s7SwiftUI14ObservedObjectVy11WorkoutCore05PacerE13ConfigurationCGMd);
    MEMORY[0x28223BE20](v121);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI9TupleViewVy07WorkoutB024PacerDistanceValuePickerV_AD0f8DurationhI0VAA19_ConditionalContentVyAA4TextVAA08ModifiedL0VyAD023AlignedLeadingAccessorylD0VyAA5ImageVACyAL_AA6SpacerVALtGGAA24_ForegroundStyleModifierVyAA5ColorVGGGtGMd);
    lazy protocol witness table accessor for type TupleView<(Section<EmptyView, ModifiedContent<ModifiedContent<VStack<TupleView<(_ConditionalContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Text, _EnvironmentKeyWritingModifier<TextAlignment>>, _EnvironmentKeyWritingModifier<Text.Case?>>, _FlexFrameLayout>, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyWritingModifier<Int?>>, BodyHyphenation>?, _ConditionalContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Text, _EnvironmentKeyWritingModifier<TextAlignment>>, _EnvironmentKeyWritingModifier<Text.Case?>>, _FlexFrameLayout>, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyWritingModifier<Int?>>, BodyHyphenation>, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Text, _EnvironmentKeyWritingModifier<TextAlignment>>, _EnvironmentKeyWritingModifier<Text.Case?>>, _FlexFrameLayout>, _EnvironmentKeyWriti(&lazy protocol witness table cache variable for type TupleView<(PacerDistanceValuePicker, PacerDurationValuePicker, _ConditionalContent<Text, ModifiedContent<AlignedLeadingAccessoryContentView<Image, TupleView<(Text, Spacer, Text)>>, _ForegroundStyleModifier<Color>>>)> and conformance TupleView<A>, &_s7SwiftUI9TupleViewVy07WorkoutB024PacerDistanceValuePickerV_AD0f8DurationhI0VAA19_ConditionalContentVyAA4TextVAA08ModifiedL0VyAD023AlignedLeadingAccessorylD0VyAA5ImageVACyAL_AA6SpacerVALtGGAA24_ForegroundStyleModifierVyAA5ColorVGGGtGMd);
    v122 = v236;
    Section<>.init(content:)();
    v290 = *(v66 + 96);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI5StateVySbGMd);
    State.wrappedValue.getter();
    v123 = swift_allocObject();
    v124 = *(v66 + 80);
    v123[5] = *(v66 + 64);
    v123[6] = v124;
    v125 = *(v66 + 112);
    v123[7] = *(v66 + 96);
    v123[8] = v125;
    v126 = *(v66 + 16);
    v123[1] = *v66;
    v123[2] = v126;
    v127 = *(v66 + 48);
    v123[3] = *(v66 + 32);
    v123[4] = v127;
    outlined init with copy of PacerWorkoutConfigurationView(v66, &v290);
    v128 = lazy protocol witness table accessor for type Section<EmptyView, TupleView<(PacerDistanceValuePicker, PacerDurationValuePicker, _ConditionalContent<Text, ModifiedContent<AlignedLeadingAccessoryContentView<Image, TupleView<(Text, Spacer, Text)>>, _ForegroundStyleModifier<Color>>>)>, EmptyView> and conformance <> Section<A, B, C>();
    v129 = v238;
    v130 = object;
    View.onChange<A>(of:initial:_:)();

    (*(v237 + 8))(v122, v130);
    v290 = *(v66 + 112);
    State.wrappedValue.getter();
    v131 = swift_allocObject();
    v132 = *(v66 + 80);
    v131[5] = *(v66 + 64);
    v131[6] = v132;
    v133 = *(v66 + 112);
    v131[7] = *(v66 + 96);
    v131[8] = v133;
    v134 = *(v66 + 16);
    v131[1] = *v66;
    v131[2] = v134;
    v135 = *(v66 + 48);
    v131[3] = *(v66 + 32);
    v131[4] = v135;
    outlined init with copy of PacerWorkoutConfigurationView(v66, &v290);
    v290._countAndFlagsBits = v130;
    v290._object = MEMORY[0x277D839B0];
    v291 = v128;
    v136 = MEMORY[0x277D839C8];
    v292 = MEMORY[0x277D839C8];
    v137 = swift_getOpaqueTypeConformance2();
    v138 = v240;
    v139 = countAndFlagsBits;
    View.onChange<A>(of:initial:_:)();

    (*(v239 + 8))(v129, v139);
    v140 = v241;
    v141 = v267;
    (*(v241 + 16))(v268, v138, v267);
    swift_storeEnumTagMultiPayload();
    v290._countAndFlagsBits = v139;
    v290._object = MEMORY[0x277D839B0];
    v291 = v137;
    v292 = v136;
    swift_getOpaqueTypeConformance2();
    lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<EmbeddedPacerConfigurationView, _PaddingLayout>, _BackgroundModifier<ModifiedContent<StrokeBorderShapeView<RoundedRectangle, HierarchicalShapeStyle, EmptyView>, _FlexFrameLayout>>>, _TraitWritingModifier<ListRowBackgroundTraitKey>>, _TraitWritingModifier<ListRowInsetsTraitKey>> and conformance <> ModifiedContent<A, B>();
    _ConditionalContent<>.init(storage:)();
    (*(v140 + 8))(v138, v141);
    v110 = v276;
  }

  type metadata accessor for ConfigurationNavigationModel();
  lazy protocol witness table accessor for type PacerWorkoutConfiguration and conformance WorkoutConfiguration(&lazy protocol witness table cache variable for type ConfigurationNavigationModel and conformance ConfigurationNavigationModel, type metadata accessor for ConfigurationNavigationModel);
  v142 = EnvironmentObject.init()();
  v268 = v143;
  v269 = v142;
  type metadata accessor for WorkoutConfigurationDataSource();
  lazy protocol witness table accessor for type PacerWorkoutConfiguration and conformance WorkoutConfiguration(&lazy protocol witness table cache variable for type WorkoutConfigurationDataSource and conformance WorkoutConfigurationDataSource, MEMORY[0x277D7DC28]);
  v144 = EnvironmentObject.init()();
  v266 = v145;
  v267 = v144;
  v146 = WorkoutUIBundle.super.isa;
  v332._object = 0xE000000000000000;
  v147._countAndFlagsBits = 0xD00000000000001ALL;
  v147._object = 0x800000020CB93C90;
  v148.value._countAndFlagsBits = 0x617A696C61636F4CLL;
  v148.value._object = 0xEB00000000656C62;
  v149._countAndFlagsBits = 0;
  v149._object = 0xE000000000000000;
  v332._countAndFlagsBits = 0;
  v150 = NSLocalizedString(_:tableName:bundle:value:comment:)(v147, v148, v146, v149, v332);
  object = v150._object;
  countAndFlagsBits = v150._countAndFlagsBits;

  LOBYTE(v281) = 0;
  State.init(wrappedValue:)();
  LODWORD(v262) = LOBYTE(v290._countAndFlagsBits);
  v263 = v290._object;
  specialized MirroredStartProvider.supportsMirroredStart.getter();
  v152 = 15;
  if (v151)
  {
    v152 = 19;
  }

  *&v281 = v152;
  type metadata accessor for NLWorkoutStartSource(0);
  State.init(wrappedValue:)();
  v260 = v290._object;
  v261 = v290._countAndFlagsBits;
  v310 = 0;
  if ((WorkoutConfiguration.isOpenGoal.getter() & 1) != 0 || !dispatch thunk of WorkoutConfiguration.externalProvider.getter())
  {
    outlined destroy of ObservedObject<PacerWorkoutConfiguration>(v330, &_s7SwiftUI14ObservedObjectVy11WorkoutCore05PacerE13ConfigurationCGMd);
    (*(v253 + 56))(v280, 1, 1, v254);
  }

  else
  {

    if (!*v259)
    {
      result = EnvironmentObject.error()();
      __break(1u);
      return result;
    }

    v153 = *v259;
    v154 = WorkoutConfigurationDataSource.isConfigurationStored(_:)();

    v259 = EnvironmentObject.init()();
    v251 = v155;
    LOBYTE(v281) = 0;
    State.init(wrappedValue:)();
    LOBYTE(v153) = v290._countAndFlagsBits;
    v156 = v110;
    v157 = v290._object;
    v158 = v154 & 1;
    LOBYTE(v290._countAndFlagsBits) = 0;
    v159 = v254;
    v160 = v222;
    v161 = &v222[*(v254 + 36)];
    v162 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI30_EnvironmentKeyWritingModifierVyAA11ControlSizeOGMd) + 28);
    v163 = *MEMORY[0x277CDF420];
    v164 = type metadata accessor for ControlSize();
    (*(*(v164 - 8) + 104))(v161 + v162, v163, v164);
    *v161 = swift_getKeyPath();
    v165 = v251;
    *v160 = v259;
    *(v160 + 8) = v165;
    *(v160 + 16) = v156;
    *(v160 + 24) = v158;
    *(v160 + 32) = 0;
    *(v160 + 40) = v153;
    *(v160 + 48) = v157;
    *(v160 + 56) = xmmword_20CB7EC90;
    *(v160 + 72) = xmmword_20CB7E4D0;
    *(v160 + 88) = 0;
    v166 = v221;
    _s7SwiftUI15ModifiedContentVyACyACyAA4TextVAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGAGyAA0E9AlignmentOGGAGyAE4CaseOSgGGWObTm_0(v160, v221, &_s7SwiftUI15ModifiedContentVyACyACy07WorkoutB014SaveCopyButtonVAA21_TraitWritingModifierVyAA013ListRowInsetsI3KeyVGGAD04HidelM9Separator33_A607961C6E65DD4DD1C2818C5FE69B58LLVGAA012_EnvironmentojK0VyAA11ControlSizeOGGMd);
    v167 = v166;
    v168 = v280;
    _s7SwiftUI15ModifiedContentVyACyACyAA4TextVAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGAGyAA0E9AlignmentOGGAGyAE4CaseOSgGGWObTm_0(v167, v280, &_s7SwiftUI15ModifiedContentVyACyACy07WorkoutB014SaveCopyButtonVAA21_TraitWritingModifierVyAA013ListRowInsetsI3KeyVGGAD04HidelM9Separator33_A607961C6E65DD4DD1C2818C5FE69B58LLVGAA012_EnvironmentojK0VyAA11ControlSizeOGGMd);
    (*(v253 + 56))(v168, 0, 1, v159);
  }

  if ((WorkoutConfiguration.isOpenGoal.getter() & 1) != 0 || !dispatch thunk of WorkoutConfiguration.externalProvider.getter())
  {
    v204 = v275;
    (*(v255 + 56))(v275, 1, 1, v256);
  }

  else
  {

    v290._countAndFlagsBits = WorkoutConfiguration.saveConfigurationFooterText.getter();
    v290._object = v169;
    v170 = Text.init<A>(_:)();
    v172 = v171;
    v174 = v173;
    v259 = v175;
    v254 = static Color.secondary.getter();
    KeyPath = swift_getKeyPath();
    v177 = swift_getKeyPath();
    v178 = v174 & 1;
    LOBYTE(v290._countAndFlagsBits) = v174 & 1;
    v179 = v229;
    v180 = &v229[*(v223 + 36)];
    v181 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI30_EnvironmentKeyWritingModifierVyAA4TextV4CaseOSgGMd) + 28);
    v182 = type metadata accessor for Text.Case();
    (*(*(v182 - 8) + 56))(v180 + v181, 1, 1, v182);
    *v180 = swift_getKeyPath();
    *v179 = v170;
    *(v179 + 8) = v172;
    *(v179 + 16) = v178;
    *(v179 + 17) = v281;
    *(v179 + 20) = *(&v281 + 3);
    *(v179 + 24) = v259;
    *(v179 + 32) = KeyPath;
    *(v179 + 40) = v254;
    *(v179 + 48) = v177;
    *(v179 + 56) = 0;
    static Alignment.leading.getter();
    _FlexFrameLayout.init(minWidth:idealWidth:maxWidth:minHeight:idealHeight:maxHeight:alignment:)();
    v183 = v235;
    _s7SwiftUI15ModifiedContentVyACyACyAA4TextVAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGAGyAA0E9AlignmentOGGAGyAE4CaseOSgGGWObTm_0(v179, v235, &_s7SwiftUI15ModifiedContentVyACyACyAA4TextVAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGAGyAA0E9AlignmentOGGAGyAE4CaseOSgGGMd);
    v184 = (v183 + *(v227 + 36));
    v185 = v328;
    v184[4] = v327;
    v184[5] = v185;
    v184[6] = v329;
    v186 = v324;
    *v184 = v323;
    v184[1] = v186;
    v187 = v326;
    v184[2] = v325;
    v184[3] = v187;
    v188 = static Font.subheadline.getter();
    v189 = swift_getKeyPath();
    v190 = v183;
    v191 = v234;
    _s7SwiftUI15ModifiedContentVyACyACyAA4TextVAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGAGyAA0E9AlignmentOGGAGyAE4CaseOSgGGWObTm_0(v190, v234, &_s7SwiftUI15ModifiedContentVyACyACyACyAA4TextVAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGAGyAA0E9AlignmentOGGAGyAE4CaseOSgGGAA16_FlexFrameLayoutVGMd);
    v192 = (v191 + *(v233 + 36));
    *v192 = v189;
    v192[1] = v188;
    v193 = swift_getKeyPath();
    v194 = v231;
    _s7SwiftUI15ModifiedContentVyACyACyAA4TextVAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGAGyAA0E9AlignmentOGGAGyAE4CaseOSgGGWObTm_0(v191, v231, &_s7SwiftUI15ModifiedContentVyACyACyACyACyAA4TextVAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGAGyAA0E9AlignmentOGGAGyAE4CaseOSgGGAA16_FlexFrameLayoutVGAGyAA4FontVSgGGMd);
    v195 = v194 + *(v232 + 36);
    *v195 = v193;
    *(v195 + 8) = 0;
    *(v195 + 16) = 1;
    v196 = v228;
    _s7SwiftUI15ModifiedContentVyACyACyAA4TextVAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGAGyAA0E9AlignmentOGGAGyAE4CaseOSgGGWObTm_0(v194, v228, &_s7SwiftUI15ModifiedContentVyACyACyACyACyACyAA4TextVAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGAGyAA0E9AlignmentOGGAGyAE4CaseOSgGGAA16_FlexFrameLayoutVGAGyAA4FontVSgGGAGySiSgGGMd);
    v197 = v230;
    _s7SwiftUI15ModifiedContentVyACyACyAA4TextVAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGAGyAA0E9AlignmentOGGAGyAE4CaseOSgGGWObTm_0(v196, v230, &_s7SwiftUI15ModifiedContentVyACyACyACyACyACyACyAA4TextVAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGAGyAA0E9AlignmentOGGAGyAE4CaseOSgGGAA16_FlexFrameLayoutVGAGyAA4FontVSgGGAGySiSgGG07WorkoutB015BodyHyphenationVGMd);
    v198 = v197 + *(v224 + 36);
    *v198 = xmmword_20CB7EC90;
    *(v198 + 16) = xmmword_20CB7E4D0;
    *(v198 + 32) = 0;
    v290._countAndFlagsBits = static Color.clear.getter();
    v199 = AnyView.init<A>(_:)();
    v200 = v226;
    _s7SwiftUI15ModifiedContentVyACyACyAA4TextVAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGAGyAA0E9AlignmentOGGAGyAE4CaseOSgGGWObTm_0(v197, v226, &_s7SwiftUI15ModifiedContentVyACyACyACyACyACyACyACyAA4TextVAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGAGyAA0E9AlignmentOGGAGyAE4CaseOSgGGAA16_FlexFrameLayoutVGAGyAA4FontVSgGGAGySiSgGG07WorkoutB015BodyHyphenationVGAA06_TraithI0VyAA013ListRowInsetstG0VGGMd);
    v201 = v256;
    *(v200 + *(v256 + 36)) = v199;
    v202 = v200;
    v203 = v225;
    _s7SwiftUI15ModifiedContentVyACyACyAA4TextVAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGAGyAA0E9AlignmentOGGAGyAE4CaseOSgGGWObTm_0(v202, v225, &_s7SwiftUI15ModifiedContentVyACyACyACyACyACyACyACyACyAA4TextVAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGAGyAA0E9AlignmentOGGAGyAE4CaseOSgGGAA16_FlexFrameLayoutVGAGyAA4FontVSgGGAGySiSgGG07WorkoutB015BodyHyphenationVGAA06_TraithI0VyAA013ListRowInsetstG0VGGA10_yAA0uv10BackgroundtG0VGGMd);
    v204 = v275;
    _s7SwiftUI15ModifiedContentVyACyACyAA4TextVAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGAGyAA0E9AlignmentOGGAGyAE4CaseOSgGGWObTm_0(v203, v275, &_s7SwiftUI15ModifiedContentVyACyACyACyACyACyACyACyACyAA4TextVAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGAGyAA0E9AlignmentOGGAGyAE4CaseOSgGGAA16_FlexFrameLayoutVGAGyAA4FontVSgGGAGySiSgGG07WorkoutB015BodyHyphenationVGAA06_TraithI0VyAA013ListRowInsetstG0VGGA10_yAA0uv10BackgroundtG0VGGMd);
    (*(v255 + 56))(v204, 0, 1, v201);
  }

  v205 = v272;
  outlined init with copy of ObservedObject<PacerWorkoutConfiguration>(v278, v272, &_s7SwiftUI15ModifiedContentVyACyACyAA6VStackVyAA9TupleViewVyAA012_ConditionalD0VyACyACyACyACyACyACyAA4TextVAA30_EnvironmentKeyWritingModifierVyAA0I9AlignmentOGGAMyAK4CaseOSgGGAA16_FlexFrameLayoutVGAMyAA4FontVSgGGAMySiSgGG07WorkoutB015BodyHyphenationVGSgAIyA9_A10_GGSg_A10_tGGAA06_TraitlM0VyAA017ListRowBackgroundwK0VGGA17_yAA0xy6InsetswK0VGGA6_04HidexY9Separator33_A607961C6E65DD4DD1C2818C5FE69B58LLVGSgMd);
  v206 = v273;
  outlined init with copy of ModifiedContent<SubscriptionView<ObservableObjectPublisher, <<opaque return type of View.toolbarForegroundStyle<A>(_:for:)>>.0>, WorkoutConfigurationToolbar>(v279, v273, &_s7SwiftUI19_ConditionalContentVyAA4ViewPAAE8onChange2of7initial_Qrqd___Sbyqd___qd__tctSQRd__lFQOyAeAEAfgH_Qrqd___Sbyqd___qd__tctSQRd__lFQOyAA7SectionVyAA05EmptyE0VAA05TupleE0Vy07WorkoutB024PacerDistanceValuePickerV_AO0n8DurationpQ0VACyAA4TextVAA08ModifiedD0VyAO023AlignedLeadingAccessorydE0VyAA5ImageVANyAU_AA6SpacerVAUtGGAA24_ForegroundStyleModifierVyAA5ColorVGGGtGALG_SbQo__SbQo_AWyAWyAWyAWyAO08Embeddedn13ConfigurationE0VAA14_PaddingLayoutVGAA19_BackgroundModifierVyAWyAA017StrokeBorderShapeE0VyAA16RoundedRectangleVAA22HierarchicalShapeStyleVALGAA16_FlexFrameLayoutVGGGAA21_TraitWritingModifierVyAA25ListRowBackgroundTraitKeyVGGA35_yAA21ListRowInsetsTraitKeyVGGGMd);
  v207 = v274;
  outlined init with copy of ObservedObject<PacerWorkoutConfiguration>(v280, v274, &_s7SwiftUI15ModifiedContentVyACyACy07WorkoutB014SaveCopyButtonVAA21_TraitWritingModifierVyAA013ListRowInsetsI3KeyVGGAD04HidelM9Separator33_A607961C6E65DD4DD1C2818C5FE69B58LLVGAA012_EnvironmentojK0VyAA11ControlSizeOGGSgMd);
  v208 = v257;
  outlined init with copy of ObservedObject<PacerWorkoutConfiguration>(v204, v257, &_s7SwiftUI15ModifiedContentVyACyACyACyACyACyACyACyACyAA4TextVAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGAGyAA0E9AlignmentOGGAGyAE4CaseOSgGGAA16_FlexFrameLayoutVGAGyAA4FontVSgGGAGySiSgGG07WorkoutB015BodyHyphenationVGAA06_TraithI0VyAA013ListRowInsetstG0VGGA10_yAA0uv10BackgroundtG0VGGSgMd);
  v209 = v258;
  v210 = v270;
  *v258 = v277;
  v209[1] = v210;
  LODWORD(v256) = v252 & 1;
  *(v209 + 16) = v252 & 1;
  v209[3] = v271;
  v211 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyAA4TextV07WorkoutB014ClearListStyle33_A607961C6E65DD4DD1C2818C5FE69B58LLVG_ACyACyACyAA6VStackVyAA9TupleViewVyAA012_ConditionalD0VyACyACyACyACyACyACyAeA30_EnvironmentKeyWritingModifierVyAA0E9AlignmentOGGARyAE4CaseOSgGGAA16_FlexFrameLayoutVGARyAA4FontVSgGGARySiSgGGAF15BodyHyphenationVGSgAPyA13_A14_GGSg_A14_tGGAA06_TraityZ0VyAA0h18RowBackgroundTraitX0VGGA21_yAA0h14RowInsetsTraitX0VGGAF04HideH12RowSeparatorAHLLVGSgAPyAA0U0PAAE8onChange2of7initial_Qrqd___Sbyqd___qd__tctSQRd__lFQOyA35_AAEA36_A37_A38__Qrqd___Sbyqd___qd__tctSQRd__lFQOyAA7SectionVyAA05EmptyU0VANyAF24PacerDistanceValuePickerV_AF24PacerDurationValuePickerVAPyAeCyAF023AlignedLeadingAccessorydU0VyAA5ImageVANyAE_AA6SpacerVAEtGGAA011_ForegroundiZ0VyAA5ColorVGGGtGA42_G_SbQo__SbQo_ACyACyACyACyAF026EmbeddedPacerConfigurationU0VAA14_PaddingLayoutVGAA011_BackgroundZ0VyACyAA017StrokeBorderShapeU0VyAA16RoundedRectangleVAA017HierarchicalShapeI0VA42_GA1_GGGA24_GA28_GGAF05StartF6ButtonVACyACyACyAF14SaveCopyButtonVA28_GA31_GARyAA11ControlSizeOGGSgACyACyACyACyACyACyACyACyACyAeRyA58_SgGGAUGAZGA1_GA6_GA9_GA12_GA28_GA24_GSgtMd);
  outlined init with copy of ObservedObject<PacerWorkoutConfiguration>(v205, v209 + v211[12], &_s7SwiftUI15ModifiedContentVyACyACyAA6VStackVyAA9TupleViewVyAA012_ConditionalD0VyACyACyACyACyACyACyAA4TextVAA30_EnvironmentKeyWritingModifierVyAA0I9AlignmentOGGAMyAK4CaseOSgGGAA16_FlexFrameLayoutVGAMyAA4FontVSgGGAMySiSgGG07WorkoutB015BodyHyphenationVGSgAIyA9_A10_GGSg_A10_tGGAA06_TraitlM0VyAA017ListRowBackgroundwK0VGGA17_yAA0xy6InsetswK0VGGA6_04HidexY9Separator33_A607961C6E65DD4DD1C2818C5FE69B58LLVGSgMd);
  outlined init with copy of ModifiedContent<SubscriptionView<ObservableObjectPublisher, <<opaque return type of View.toolbarForegroundStyle<A>(_:for:)>>.0>, WorkoutConfigurationToolbar>(v206, v209 + v211[16], &_s7SwiftUI19_ConditionalContentVyAA4ViewPAAE8onChange2of7initial_Qrqd___Sbyqd___qd__tctSQRd__lFQOyAeAEAfgH_Qrqd___Sbyqd___qd__tctSQRd__lFQOyAA7SectionVyAA05EmptyE0VAA05TupleE0Vy07WorkoutB024PacerDistanceValuePickerV_AO0n8DurationpQ0VACyAA4TextVAA08ModifiedD0VyAO023AlignedLeadingAccessorydE0VyAA5ImageVANyAU_AA6SpacerVAUtGGAA24_ForegroundStyleModifierVyAA5ColorVGGGtGALG_SbQo__SbQo_AWyAWyAWyAWyAO08Embeddedn13ConfigurationE0VAA14_PaddingLayoutVGAA19_BackgroundModifierVyAWyAA017StrokeBorderShapeE0VyAA16RoundedRectangleVAA22HierarchicalShapeStyleVALGAA16_FlexFrameLayoutVGGGAA21_TraitWritingModifierVyAA25ListRowBackgroundTraitKeyVGGA35_yAA21ListRowInsetsTraitKeyVGGGMd);
  v212 = v209 + v211[20];
  *&v281 = v269;
  *(&v281 + 1) = v268;
  *&v282 = v267;
  *(&v282 + 1) = v266;
  LOBYTE(v283) = 0;
  *(&v283 + 1) = v312[0];
  DWORD1(v283) = *(v312 + 3);
  *(&v283 + 1) = countAndFlagsBits;
  *&v284 = object;
  *(&v284 + 1) = v276;
  LOBYTE(v285) = v262;
  *(&v285 + 1) = *v311;
  DWORD1(v285) = *&v311[3];
  *(&v285 + 1) = v263;
  *&v286 = v261;
  *(&v286 + 1) = v260;
  v259 = implicit closure #2 in implicit closure #1 in variable initialization expression of StartWorkoutButton._devicesProvider;
  *&v287 = implicit closure #2 in implicit closure #1 in variable initialization expression of StartWorkoutButton._devicesProvider;
  *(&v287 + 1) = 0;
  LOBYTE(v288) = 0;
  *(&v288 + 1) = *v309;
  DWORD1(v288) = *&v309[3];
  *(&v288 + 1) = 0;
  v289 = 0;
  *(v212 + 16) = 0;
  v213 = v284;
  *(v212 + 2) = v283;
  *(v212 + 3) = v213;
  v214 = v282;
  *v212 = v281;
  *(v212 + 1) = v214;
  v215 = v286;
  *(v212 + 4) = v285;
  *(v212 + 5) = v215;
  v216 = v288;
  *(v212 + 6) = v287;
  *(v212 + 7) = v216;
  outlined init with copy of ObservedObject<PacerWorkoutConfiguration>(v207, v209 + v211[24], &_s7SwiftUI15ModifiedContentVyACyACy07WorkoutB014SaveCopyButtonVAA21_TraitWritingModifierVyAA013ListRowInsetsI3KeyVGGAD04HidelM9Separator33_A607961C6E65DD4DD1C2818C5FE69B58LLVGAA012_EnvironmentojK0VyAA11ControlSizeOGGSgMd);
  outlined init with copy of ObservedObject<PacerWorkoutConfiguration>(v208, v209 + v211[28], &_s7SwiftUI15ModifiedContentVyACyACyACyACyACyACyACyACyAA4TextVAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGAGyAA0E9AlignmentOGGAGyAE4CaseOSgGGAA16_FlexFrameLayoutVGAGyAA4FontVSgGGAGySiSgGG07WorkoutB015BodyHyphenationVGAA06_TraithI0VyAA013ListRowInsetstG0VGGA10_yAA0uv10BackgroundtG0VGGSgMd);
  v217 = v270;
  v218 = v256;
  outlined copy of Text.Storage(v277, v270, v256);

  outlined init with copy of StartWorkoutButton(&v281, &v290);
  outlined destroy of ObservedObject<PacerWorkoutConfiguration>(v275, &_s7SwiftUI15ModifiedContentVyACyACyACyACyACyACyACyACyAA4TextVAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGAGyAA0E9AlignmentOGGAGyAE4CaseOSgGGAA16_FlexFrameLayoutVGAGyAA4FontVSgGGAGySiSgGG07WorkoutB015BodyHyphenationVGAA06_TraithI0VyAA013ListRowInsetstG0VGGA10_yAA0uv10BackgroundtG0VGGSgMd);
  outlined destroy of ObservedObject<PacerWorkoutConfiguration>(v280, &_s7SwiftUI15ModifiedContentVyACyACy07WorkoutB014SaveCopyButtonVAA21_TraitWritingModifierVyAA013ListRowInsetsI3KeyVGGAD04HidelM9Separator33_A607961C6E65DD4DD1C2818C5FE69B58LLVGAA012_EnvironmentojK0VyAA11ControlSizeOGGSgMd);
  outlined destroy of ModifiedContent<SubscriptionView<ObservableObjectPublisher, <<opaque return type of View.toolbarForegroundStyle<A>(_:for:)>>.0>, WorkoutConfigurationToolbar>(v279, &_s7SwiftUI19_ConditionalContentVyAA4ViewPAAE8onChange2of7initial_Qrqd___Sbyqd___qd__tctSQRd__lFQOyAeAEAfgH_Qrqd___Sbyqd___qd__tctSQRd__lFQOyAA7SectionVyAA05EmptyE0VAA05TupleE0Vy07WorkoutB024PacerDistanceValuePickerV_AO0n8DurationpQ0VACyAA4TextVAA08ModifiedD0VyAO023AlignedLeadingAccessorydE0VyAA5ImageVANyAU_AA6SpacerVAUtGGAA24_ForegroundStyleModifierVyAA5ColorVGGGtGALG_SbQo__SbQo_AWyAWyAWyAWyAO08Embeddedn13ConfigurationE0VAA14_PaddingLayoutVGAA19_BackgroundModifierVyAWyAA017StrokeBorderShapeE0VyAA16RoundedRectangleVAA22HierarchicalShapeStyleVALGAA16_FlexFrameLayoutVGGGAA21_TraitWritingModifierVyAA25ListRowBackgroundTraitKeyVGGA35_yAA21ListRowInsetsTraitKeyVGGGMd);
  outlined destroy of ObservedObject<PacerWorkoutConfiguration>(v278, &_s7SwiftUI15ModifiedContentVyACyACyAA6VStackVyAA9TupleViewVyAA012_ConditionalD0VyACyACyACyACyACyACyAA4TextVAA30_EnvironmentKeyWritingModifierVyAA0I9AlignmentOGGAMyAK4CaseOSgGGAA16_FlexFrameLayoutVGAMyAA4FontVSgGGAMySiSgGG07WorkoutB015BodyHyphenationVGSgAIyA9_A10_GGSg_A10_tGGAA06_TraitlM0VyAA017ListRowBackgroundwK0VGGA17_yAA0xy6InsetswK0VGGA6_04HidexY9Separator33_A607961C6E65DD4DD1C2818C5FE69B58LLVGSgMd);
  outlined destroy of ObservedObject<PacerWorkoutConfiguration>(v208, &_s7SwiftUI15ModifiedContentVyACyACyACyACyACyACyACyACyAA4TextVAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGAGyAA0E9AlignmentOGGAGyAE4CaseOSgGGAA16_FlexFrameLayoutVGAGyAA4FontVSgGGAGySiSgGG07WorkoutB015BodyHyphenationVGAA06_TraithI0VyAA013ListRowInsetstG0VGGA10_yAA0uv10BackgroundtG0VGGSgMd);
  outlined destroy of ObservedObject<PacerWorkoutConfiguration>(v274, &_s7SwiftUI15ModifiedContentVyACyACy07WorkoutB014SaveCopyButtonVAA21_TraitWritingModifierVyAA013ListRowInsetsI3KeyVGGAD04HidelM9Separator33_A607961C6E65DD4DD1C2818C5FE69B58LLVGAA012_EnvironmentojK0VyAA11ControlSizeOGGSgMd);
  v290._countAndFlagsBits = v269;
  v290._object = v268;
  v291 = v267;
  v292 = v266;
  v293 = 0;
  *v294 = v312[0];
  *&v294[3] = *(v312 + 3);
  v295 = countAndFlagsBits;
  v296 = object;
  v297 = v276;
  v298 = v262;
  *v299 = *v311;
  *&v299[3] = *&v311[3];
  v300 = v263;
  v301 = v261;
  v302 = v260;
  v303 = v259;
  v304 = 0;
  v305 = 0;
  *v306 = *v309;
  *&v306[3] = *&v309[3];
  v307 = 0;
  v308 = 0;
  outlined destroy of StartWorkoutButton(&v290);
  outlined destroy of ModifiedContent<SubscriptionView<ObservableObjectPublisher, <<opaque return type of View.toolbarForegroundStyle<A>(_:for:)>>.0>, WorkoutConfigurationToolbar>(v273, &_s7SwiftUI19_ConditionalContentVyAA4ViewPAAE8onChange2of7initial_Qrqd___Sbyqd___qd__tctSQRd__lFQOyAeAEAfgH_Qrqd___Sbyqd___qd__tctSQRd__lFQOyAA7SectionVyAA05EmptyE0VAA05TupleE0Vy07WorkoutB024PacerDistanceValuePickerV_AO0n8DurationpQ0VACyAA4TextVAA08ModifiedD0VyAO023AlignedLeadingAccessorydE0VyAA5ImageVANyAU_AA6SpacerVAUtGGAA24_ForegroundStyleModifierVyAA5ColorVGGGtGALG_SbQo__SbQo_AWyAWyAWyAWyAO08Embeddedn13ConfigurationE0VAA14_PaddingLayoutVGAA19_BackgroundModifierVyAWyAA017StrokeBorderShapeE0VyAA16RoundedRectangleVAA22HierarchicalShapeStyleVALGAA16_FlexFrameLayoutVGGGAA21_TraitWritingModifierVyAA25ListRowBackgroundTraitKeyVGGA35_yAA21ListRowInsetsTraitKeyVGGGMd);
  outlined destroy of ObservedObject<PacerWorkoutConfiguration>(v272, &_s7SwiftUI15ModifiedContentVyACyACyAA6VStackVyAA9TupleViewVyAA012_ConditionalD0VyACyACyACyACyACyACyAA4TextVAA30_EnvironmentKeyWritingModifierVyAA0I9AlignmentOGGAMyAK4CaseOSgGGAA16_FlexFrameLayoutVGAMyAA4FontVSgGGAMySiSgGG07WorkoutB015BodyHyphenationVGSgAIyA9_A10_GGSg_A10_tGGAA06_TraitlM0VyAA017ListRowBackgroundwK0VGGA17_yAA0xy6InsetswK0VGGA6_04HidexY9Separator33_A607961C6E65DD4DD1C2818C5FE69B58LLVGSgMd);
  outlined consume of Text.Storage(v277, v217, v218);
}

uint64_t closure #1 in closure #1 in PacerWorkoutConfigurationView.body.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v62 = a2;
  v3 = type metadata accessor for PacerDurationValuePicker();
  v4 = (v3 - 8);
  MEMORY[0x28223BE20](v3);
  v61 = v52 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v8 = (v52 - v7);
  v9 = type metadata accessor for PacerDistanceValuePicker();
  v10 = (v9 - 8);
  MEMORY[0x28223BE20](v9);
  v60 = v52 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v14 = (v52 - v13);
  v59 = a1;
  v71 = *(a1 + 32);
  v52[1] = *(&v71 + 1);
  v15 = *(a1 + 48);
  v58 = *(a1 + 72);
  v74[0] = *(a1 + 96);
  outlined init with copy of ObservedObject<PacerWorkoutConfiguration>(&v71, &v76, &_s7SwiftUI14ObservedObjectVy11WorkoutCore05PacerE13ConfigurationCGMd);
  v16 = v15;
  outlined init with copy of ObservedObject<PacerWorkoutConfiguration>(&v71, &v76, &_s7SwiftUI14ObservedObjectVy11WorkoutCore05PacerE13ConfigurationCGMd);
  v17 = v16;
  v52[0] = v17;
  v57 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI5StateVySbGMd);
  State.projectedValue.getter();
  v54 = *(&v76 + 1);
  v55 = v76;
  v53 = v77;
  *v14 = swift_getKeyPath();
  v56 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI11EnvironmentV7ContentOyAA13DismissActionV_GMd);
  swift_storeEnumTagMultiPayload();
  v18 = (v14 + v10[7]);
  v52[5] = type metadata accessor for WorkoutConfigurationDataSource();
  v52[4] = lazy protocol witness table accessor for type PacerWorkoutConfiguration and conformance WorkoutConfiguration(&lazy protocol witness table cache variable for type WorkoutConfigurationDataSource and conformance WorkoutConfigurationDataSource, MEMORY[0x277D7DC28]);
  *v18 = EnvironmentObject.init()();
  v18[1] = v19;
  v20 = (v14 + v10[8]);
  v52[3] = type metadata accessor for ConfigurationNavigationModel();
  v52[2] = lazy protocol witness table accessor for type PacerWorkoutConfiguration and conformance WorkoutConfiguration(&lazy protocol witness table cache variable for type ConfigurationNavigationModel and conformance ConfigurationNavigationModel, type metadata accessor for ConfigurationNavigationModel);
  *v20 = EnvironmentObject.init()();
  v20[1] = v21;
  v22 = v14 + v10[12];
  *v22 = FocusState.init<>()() & 1;
  *(v22 + 1) = v23;
  v22[16] = v24 & 1;
  v25 = (v14 + v10[9]);
  type metadata accessor for PacerWorkoutConfiguration();
  lazy protocol witness table accessor for type PacerWorkoutConfiguration and conformance WorkoutConfiguration(&lazy protocol witness table cache variable for type PacerWorkoutConfiguration and conformance WorkoutConfiguration, MEMORY[0x277D7D968]);
  *v25 = ObservedObject.init(wrappedValue:)();
  v25[1] = v26;
  *(v14 + v10[10]) = v17;
  v27 = v58;
  *(v14 + v10[11]) = v58;
  v28 = v14 + v10[13];
  v29 = v54;
  *v28 = v55;
  *(v28 + 1) = v29;
  v28[16] = v53;
  v74[0] = *(v59 + 112);
  State.projectedValue.getter();
  v30 = *(&v76 + 1);
  v59 = v76;
  LODWORD(v57) = v77;
  *v8 = swift_getKeyPath();
  swift_storeEnumTagMultiPayload();
  v31 = (v8 + v4[7]);
  *v31 = EnvironmentObject.init()();
  v31[1] = v32;
  v33 = (v8 + v4[8]);
  *v33 = EnvironmentObject.init()();
  v33[1] = v34;
  v35 = (v8 + v4[9]);
  *v35 = ObservedObject.init(wrappedValue:)();
  v35[1] = v36;
  v37 = v52[0];
  *(v8 + v4[10]) = v52[0];
  *(v8 + v4[11]) = v27;
  v38 = v8 + v4[12];
  *v38 = v59;
  *(v38 + 1) = v30;
  v38[16] = v57;
  static PacerDurationValuePicker.paceDescriptionView(workoutConfiguration:formattingManager:)(v37, v72);
  v39 = v60;
  outlined init with copy of RoundedRectangle(v14, v60, type metadata accessor for PacerDistanceValuePicker);
  v40 = v61;
  outlined init with copy of RoundedRectangle(v8, v61, type metadata accessor for PacerDurationValuePicker);
  v67 = v72[4];
  v68 = v72[5];
  v69 = v72[6];
  v70 = v73;
  v63 = v72[0];
  v64 = v72[1];
  v65 = v72[2];
  v66 = v72[3];
  v41 = v62;
  outlined init with copy of RoundedRectangle(v39, v62, type metadata accessor for PacerDistanceValuePicker);
  v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9WorkoutUI24PacerDistanceValuePickerV_AA0c8DurationeF0V05SwiftB019_ConditionalContentVyAF4TextVAF08ModifiedJ0VyAA023AlignedLeadingAccessoryJ4ViewVyAF5ImageVAF05TupleP0VyAJ_AF6SpacerVAJtGGAF24_ForegroundStyleModifierVyAF5ColorVGGGtMd);
  outlined init with copy of RoundedRectangle(v40, v41 + *(v42 + 48), type metadata accessor for PacerDurationValuePicker);
  v43 = v41 + *(v42 + 64);
  v44 = v67;
  v45 = v68;
  v74[4] = v67;
  v74[5] = v68;
  v46 = v69;
  v74[6] = v69;
  v47 = v70;
  v75 = v70;
  v48 = v63;
  v49 = v64;
  v74[0] = v63;
  v74[1] = v64;
  v50 = v66;
  v74[2] = v65;
  v74[3] = v66;
  *(v43 + 32) = v65;
  *(v43 + 48) = v50;
  *v43 = v48;
  *(v43 + 16) = v49;
  *(v43 + 112) = v47;
  *(v43 + 80) = v45;
  *(v43 + 96) = v46;
  *(v43 + 64) = v44;
  outlined init with copy of ObservedObject<PacerWorkoutConfiguration>(v74, &v76, &_s7SwiftUI19_ConditionalContentVyAA4TextVAA08ModifiedD0Vy07WorkoutB0023AlignedLeadingAccessoryD4ViewVyAA5ImageVAA05TupleK0VyAE_AA6SpacerVAEtGGAA24_ForegroundStyleModifierVyAA5ColorVGGGMd);
  outlined destroy of RoundedRectangle(v8, type metadata accessor for PacerDurationValuePicker);
  outlined destroy of RoundedRectangle(v14, type metadata accessor for PacerDistanceValuePicker);
  v80 = v67;
  v81 = v68;
  v82 = v69;
  v83 = v70;
  v76 = v63;
  v77 = v64;
  v78 = v65;
  v79 = v66;
  outlined destroy of ObservedObject<PacerWorkoutConfiguration>(&v76, &_s7SwiftUI19_ConditionalContentVyAA4TextVAA08ModifiedD0Vy07WorkoutB0023AlignedLeadingAccessoryD4ViewVyAA5ImageVAA05TupleK0VyAE_AA6SpacerVAEtGGAA24_ForegroundStyleModifierVyAA5ColorVGGGMd);
  outlined destroy of RoundedRectangle(v40, type metadata accessor for PacerDurationValuePicker);
  return outlined destroy of RoundedRectangle(v39, type metadata accessor for PacerDistanceValuePicker);
}

uint64_t closure #2 in closure #1 in PacerWorkoutConfigurationView.body.getter(uint64_t a1, _BYTE *a2)
{
  if (*a2 == 1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI5StateVySbGMd);
    return State.wrappedValue.setter();
  }

  return result;
}

uint64_t closure #3 in closure #1 in PacerWorkoutConfigurationView.body.getter(uint64_t a1, _BYTE *a2)
{
  if (*a2 == 1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI5StateVySbGMd);
    return State.wrappedValue.setter();
  }

  return result;
}

uint64_t closure #3 in PacerWorkoutConfigurationView.body.getter@<X0>(uint64_t a1@<X8>)
{
  v52 = a1;
  v53 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI7SectionVyAA15ModifiedContentVyAEyAA4TextVAA12_FrameLayoutVG07WorkoutB009UnstackedC15SpacingModifier33_B33B451D6D59C74C7A089BCD2EE64343LLVGAA9TupleViewVyAK05StartI6ButtonV_AK08SaveCopyY0VSgAK05Sharei13ConfigurationY0VSgAK06DeleteY0VSgtGAGSgGMd);
  v51 = *(v53 - 8);
  MEMORY[0x28223BE20](v53);
  v57 = &v46 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v2);
  v56 = &v46 - v3;
  v50 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI7SectionVyAA9EmptyViewVAA19_ConditionalContentVyAA08ModifiedG0VyAIy07WorkoutB017PacerValuesButtonVAA30_EnvironmentKeyWritingModifierVy0I4Core0I23ConfigurationDataSourceCSgGGANyAJ0R15NavigationModelCSgGGAIyAJ08EmbeddedjrE0VAJ017ListRowBackgroundeP0VGGAEGMd);
  v49 = *(v50 - 8);
  MEMORY[0x28223BE20](v50);
  v55 = &v46 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v58 = &v46 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI7SectionVyAA9EmptyViewVAA15ModifiedContentVyAGyAA6VStackVyAA05TupleE0VyAA012_ConditionalG0VyAGyAGyAGyAGyAGyAGyAA4TextVAA30_EnvironmentKeyWritingModifierVyAA0K9AlignmentOGGAQyAO4CaseOSgGGAA16_FlexFrameLayoutVGAQyAA4FontVSgGGAQySiSgGG07WorkoutB015BodyHyphenationVGSgAMyA13_A14_GGSg_A14_tGGAA06_TraitnO0VyAA017ListRowBackgroundyM0VGGA21_yAA0z9RowInsetsyM0VGGAEGMd);
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v46 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI7SectionVyAA9EmptyViewVAA15ModifiedContentVyAGyAA6VStackVyAA05TupleE0VyAA012_ConditionalG0VyAGyAGyAGyAGyAGyAGyAA4TextVAA30_EnvironmentKeyWritingModifierVyAA0K9AlignmentOGGAQyAO4CaseOSgGGAA16_FlexFrameLayoutVGAQyAA4FontVSgGGAQySiSgGG07WorkoutB015BodyHyphenationVGSgAMyA13_A14_GGSg_A14_tGGAA06_TraitnO0VyAA017ListRowBackgroundyM0VGGA21_yAA0z9RowInsetsyM0VGGAEGSgMd);
  MEMORY[0x28223BE20](v11 - 8);
  v54 = &v46 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v15 = &v46 - v14;
  if (dispatch thunk of WorkoutConfiguration.externalProvider.getter())
  {

    MEMORY[0x28223BE20](v16);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyACyAA6VStackVyAA9TupleViewVyAA012_ConditionalD0VyACyACyACyACyACyACyAA4TextVAA30_EnvironmentKeyWritingModifierVyAA0I9AlignmentOGGAMyAK4CaseOSgGGAA16_FlexFrameLayoutVGAMyAA4FontVSgGGAMySiSgGG07WorkoutB015BodyHyphenationVGSgAIyA9_A10_GGSg_A10_tGGAA06_TraitlM0VyAA017ListRowBackgroundwK0VGGA17_yAA0xy6InsetswK0VGGMd);
    lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<VStack<TupleView<(_ConditionalContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Text, _EnvironmentKeyWritingModifier<TextAlignment>>, _EnvironmentKeyWritingModifier<Text.Case?>>, _FlexFrameLayout>, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyWritingModifier<Int?>>, BodyHyphenation>?, _ConditionalContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Text, _EnvironmentKeyWritingModifier<TextAlignment>>, _EnvironmentKeyWritingModifier<Text.Case?>>, _FlexFrameLayout>, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyWritingModifier<Int?>>, BodyHyphenation>, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Text, _EnvironmentKeyWritingModifier<TextAlignment>>, _EnvironmentKeyWritingModifier<Text.Case?>>, _FlexFrameLayout>, _EnvironmentKeyWritingModifier<Font?>>, _Environme();
    Section<>.init(content:)();
    (*(v8 + 32))(v15, v10, v7);
    v17 = (*(v8 + 56))(v15, 0, 1, v7);
  }

  else
  {
    v17 = (*(v8 + 56))(v15, 1, 1, v7);
  }

  MEMORY[0x28223BE20](v17);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI19_ConditionalContentVyAA08ModifiedD0VyAEy07WorkoutB017PacerValuesButtonVAA30_EnvironmentKeyWritingModifierVy0F4Core0F23ConfigurationDataSourceCSgGGAJyAF0O15NavigationModelCSgGGAEyAF08EmbeddedgO4ViewVAF017ListRowBackgrounduM0VGGMd);
  lazy protocol witness table accessor for type _ConditionalContent<ModifiedContent<ModifiedContent<PacerValuesButton, _EnvironmentKeyWritingModifier<WorkoutConfigurationDataSource?>>, _EnvironmentKeyWritingModifier<ConfigurationNavigationModel?>>, ModifiedContent<EmbeddedPacerConfigurationView, ListRowBackgroundViewModifier>> and conformance <> _ConditionalContent<A, B>();
  v18 = Section<>.init(content:)();
  MEMORY[0x28223BE20](v18);
  LocalizedStringKey.init(stringLiteral:)();
  v19 = Text.init(_:tableName:bundle:comment:)();
  v21 = v20;
  v23 = v22;
  v25 = v24;
  static Alignment.center.getter();
  _FrameLayout.init(width:height:alignment:)();
  v63 = v19;
  v64 = v21;
  v65 = v23 & 1;
  v66 = v25;
  if (WorkoutConfiguration.isOpenGoal.getter())
  {
    v26 = 0;
LABEL_8:
    v28 = 0;
    v31 = 0;
    v29 = 0;
    goto LABEL_9;
  }

  v26 = dispatch thunk of WorkoutConfiguration.externalProvider.getter();
  if (!v26)
  {
    goto LABEL_8;
  }

  v59 = WorkoutConfiguration.saveConfigurationFooterText.getter();
  v60 = v27;
  lazy protocol witness table accessor for type String and conformance String();
  v26 = Text.init<A>(_:)();
  v31 = v30 & 1;
LABEL_9:
  v59 = v26;
  v60 = v28;
  v61 = v31;
  v62 = v29;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyACyAA4TextVAA12_FrameLayoutVG07WorkoutB031UnstackedSectionSpacingModifier33_B33B451D6D59C74C7A089BCD2EE64343LLVGMd);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI9TupleViewVy07WorkoutB005StartE6ButtonV_AD08SaveCopyG0VSgAD05Sharee13ConfigurationG0VSgAD06DeleteG0VSgtGMd);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI4TextVSgMd);
  lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<Text, _FrameLayout>, UnstackedSectionSpacingModifier> and conformance <> ModifiedContent<A, B>();
  lazy protocol witness table accessor for type TupleView<(Section<EmptyView, ModifiedContent<ModifiedContent<VStack<TupleView<(_ConditionalContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Text, _EnvironmentKeyWritingModifier<TextAlignment>>, _EnvironmentKeyWritingModifier<Text.Case?>>, _FlexFrameLayout>, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyWritingModifier<Int?>>, BodyHyphenation>?, _ConditionalContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Text, _EnvironmentKeyWritingModifier<TextAlignment>>, _EnvironmentKeyWritingModifier<Text.Case?>>, _FlexFrameLayout>, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyWritingModifier<Int?>>, BodyHyphenation>, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Text, _EnvironmentKeyWritingModifier<TextAlignment>>, _EnvironmentKeyWritingModifier<Text.Case?>>, _FlexFrameLayout>, _EnvironmentKeyWriti(&lazy protocol witness table cache variable for type TupleView<(StartWorkoutButton, SaveCopyButton?, ShareWorkoutConfigurationButton?, DeleteButton?)> and conformance TupleView<A>, &_s7SwiftUI9TupleViewVy07WorkoutB005StartE6ButtonV_AD08SaveCopyG0VSgAD05Sharee13ConfigurationG0VSgAD06DeleteG0VSgtGMd);
  lazy protocol witness table accessor for type Text? and conformance <A> A?();
  v32 = v56;
  Section<>.init(header:footer:content:)();
  v33 = v54;
  outlined init with copy of ObservedObject<PacerWorkoutConfiguration>(v15, v54, &_s7SwiftUI7SectionVyAA9EmptyViewVAA15ModifiedContentVyAGyAA6VStackVyAA05TupleE0VyAA012_ConditionalG0VyAGyAGyAGyAGyAGyAGyAA4TextVAA30_EnvironmentKeyWritingModifierVyAA0K9AlignmentOGGAQyAO4CaseOSgGGAA16_FlexFrameLayoutVGAQyAA4FontVSgGGAQySiSgGG07WorkoutB015BodyHyphenationVGSgAMyA13_A14_GGSg_A14_tGGAA06_TraitnO0VyAA017ListRowBackgroundyM0VGGA21_yAA0z9RowInsetsyM0VGGAEGSgMd);
  v48 = v15;
  v34 = v49;
  v47 = *(v49 + 16);
  v35 = v55;
  v36 = v50;
  v47(v55, v58, v50);
  v37 = v51;
  v38 = *(v51 + 16);
  v39 = v53;
  v38(v57, v32, v53);
  v40 = v52;
  outlined init with copy of ObservedObject<PacerWorkoutConfiguration>(v33, v52, &_s7SwiftUI7SectionVyAA9EmptyViewVAA15ModifiedContentVyAGyAA6VStackVyAA05TupleE0VyAA012_ConditionalG0VyAGyAGyAGyAGyAGyAGyAA4TextVAA30_EnvironmentKeyWritingModifierVyAA0K9AlignmentOGGAQyAO4CaseOSgGGAA16_FlexFrameLayoutVGAQyAA4FontVSgGGAQySiSgGG07WorkoutB015BodyHyphenationVGSgAMyA13_A14_GGSg_A14_tGGAA06_TraitnO0VyAA017ListRowBackgroundyM0VGGA21_yAA0z9RowInsetsyM0VGGAEGSgMd);
  v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI7SectionVyAA9EmptyViewVAA15ModifiedContentVyAGyAA6VStackVyAA05TupleE0VyAA012_ConditionalG0VyAGyAGyAGyAGyAGyAGyAA4TextVAA30_EnvironmentKeyWritingModifierVyAA0K9AlignmentOGGAQyAO4CaseOSgGGAA16_FlexFrameLayoutVGAQyAA4FontVSgGGAQySiSgGG07WorkoutB015BodyHyphenationVGSgAMyA13_A14_GGSg_A14_tGGAA06_TraitnO0VyAA017ListRowBackgroundyM0VGGA21_yAA0z9RowInsetsyM0VGGAEGSg_ACyAeMyAGyAGyA10_17PacerValuesButtonVAQy0V4Core0V23ConfigurationDataSourceCSgGGAQyA10_28ConfigurationNavigationModelCSgGGAGyA10_026EmbeddedPacerConfigurationE0VA10_0z13RowBackgroundeO0VGGAEGACyAGyAGyAoA01_sT0VGA10_09Unstackedc7SpacingO033_B33B451D6D59C74C7A089BCD2EE64343LLVGAKyA10_05StartV6ButtonV_A10_14SaveCopyButtonVSgA10_05ShareV19ConfigurationButtonVSgA10_12DeleteButtonVSgtGAOSgGtMd);
  v47((v40 + *(v41 + 48)), v35, v36);
  v42 = v57;
  v38((v40 + *(v41 + 64)), v57, v39);
  v43 = *(v37 + 8);
  v43(v56, v39);
  v44 = *(v34 + 8);
  v44(v58, v36);
  outlined destroy of ObservedObject<PacerWorkoutConfiguration>(v48, &_s7SwiftUI7SectionVyAA9EmptyViewVAA15ModifiedContentVyAGyAA6VStackVyAA05TupleE0VyAA012_ConditionalG0VyAGyAGyAGyAGyAGyAGyAA4TextVAA30_EnvironmentKeyWritingModifierVyAA0K9AlignmentOGGAQyAO4CaseOSgGGAA16_FlexFrameLayoutVGAQyAA4FontVSgGGAQySiSgGG07WorkoutB015BodyHyphenationVGSgAMyA13_A14_GGSg_A14_tGGAA06_TraitnO0VyAA017ListRowBackgroundyM0VGGA21_yAA0z9RowInsetsyM0VGGAEGSgMd);
  v43(v42, v39);
  v44(v55, v36);
  return outlined destroy of ObservedObject<PacerWorkoutConfiguration>(v54, &_s7SwiftUI7SectionVyAA9EmptyViewVAA15ModifiedContentVyAGyAA6VStackVyAA05TupleE0VyAA012_ConditionalG0VyAGyAGyAGyAGyAGyAGyAA4TextVAA30_EnvironmentKeyWritingModifierVyAA0K9AlignmentOGGAQyAO4CaseOSgGGAA16_FlexFrameLayoutVGAQyAA4FontVSgGGAQySiSgGG07WorkoutB015BodyHyphenationVGSgAMyA13_A14_GGSg_A14_tGGAA06_TraitnO0VyAA017ListRowBackgroundyM0VGGA21_yAA0z9RowInsetsyM0VGGAEGSgMd);
}

uint64_t closure #1 in closure #3 in PacerWorkoutConfigurationView.body.getter@<X0>(uint64_t a1@<X0>, _OWORD *a2@<X8>)
{
  v11[0] = *(a1 + 32);
  *(&v11[0] + 1);
  if (dispatch thunk of WorkoutConfiguration.externalProvider.getter())
  {
    outlined destroy of ObservedObject<PacerWorkoutConfiguration>(v11, &_s7SwiftUI14ObservedObjectVy11WorkoutCore05PacerE13ConfigurationCGMd);

    v4 = *(a1 + 48);
LABEL_6:
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyACy07WorkoutB017PacerValuesButtonVAA30_EnvironmentKeyWritingModifierVy0E4Core0E23ConfigurationDataSourceCSgGGAHyAD0N15NavigationModelCSgGGMd);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVy07WorkoutB030EmbeddedPacerConfigurationViewVAD017ListRowBackgroundI8ModifierVGMd);
    lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<PacerValuesButton, _EnvironmentKeyWritingModifier<WorkoutConfigurationDataSource?>>, _EnvironmentKeyWritingModifier<ConfigurationNavigationModel?>> and conformance <> ModifiedContent<A, B>();
    lazy protocol witness table accessor for type ModifiedContent<EmbeddedPacerConfigurationView, ListRowBackgroundViewModifier> and conformance <> ModifiedContent<A, B>();
    result = _ConditionalContent<>.init(storage:)();
    v8 = v11[4];
    v9 = v12[0];
    v10 = v11[2];
    a2[2] = v11[3];
    a2[3] = v8;
    a2[4] = v9;
    *(a2 + 73) = *(v12 + 9);
    *a2 = v11[1];
    a2[1] = v10;
    return result;
  }

  outlined destroy of ObservedObject<PacerWorkoutConfiguration>(v11, &_s7SwiftUI14ObservedObjectVy11WorkoutCore05PacerE13ConfigurationCGMd);
  v5 = *(a1 + 48);
  type metadata accessor for WorkoutConfigurationDataSource();
  lazy protocol witness table accessor for type PacerWorkoutConfiguration and conformance WorkoutConfiguration(&lazy protocol witness table cache variable for type WorkoutConfigurationDataSource and conformance WorkoutConfigurationDataSource, MEMORY[0x277D7DC28]);
  v5;
  EnvironmentObject.init()();
  type metadata accessor for ConfigurationNavigationModel();
  lazy protocol witness table accessor for type PacerWorkoutConfiguration and conformance WorkoutConfiguration(&lazy protocol witness table cache variable for type ConfigurationNavigationModel and conformance ConfigurationNavigationModel, type metadata accessor for ConfigurationNavigationModel);
  EnvironmentObject.init()();
  type metadata accessor for PacerWorkoutConfiguration();
  lazy protocol witness table accessor for type PacerWorkoutConfiguration and conformance WorkoutConfiguration(&lazy protocol witness table cache variable for type PacerWorkoutConfiguration and conformance WorkoutConfiguration, MEMORY[0x277D7D968]);
  ObservedObject.init(wrappedValue:)();
  if (*a1)
  {
    v6 = *a1;
    static ObservableObject.environmentStore.getter();
    if (*(a1 + 16))
    {

      static ObservableObject.environmentStore.getter();
      goto LABEL_6;
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

uint64_t closure #2 in closure #3 in PacerWorkoutConfigurationView.body.getter@<X0>(id *a1@<X0>, uint64_t a2@<X8>)
{
  v74 = type metadata accessor for DeleteButton();
  v4 = *(v74 - 1);
  MEMORY[0x28223BE20](v74);
  v62 = (&v61 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9WorkoutUI12DeleteButtonVSgMd);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v61 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v11 = &v61 - v10;
  v71 = a1;
  v122[0] = *(a1 + 2);
  v12 = *(&v122[0] + 1);
  outlined init with copy of ObservedObject<PacerWorkoutConfiguration>(v122, &v98, &_s7SwiftUI14ObservedObjectVy11WorkoutCore05PacerE13ConfigurationCGMd);
  outlined init with copy of ObservedObject<PacerWorkoutConfiguration>(v122, &v98, &_s7SwiftUI14ObservedObjectVy11WorkoutCore05PacerE13ConfigurationCGMd);
  type metadata accessor for ConfigurationNavigationModel();
  lazy protocol witness table accessor for type PacerWorkoutConfiguration and conformance WorkoutConfiguration(&lazy protocol witness table cache variable for type ConfigurationNavigationModel and conformance ConfigurationNavigationModel, type metadata accessor for ConfigurationNavigationModel);
  v13 = v12;
  v14 = EnvironmentObject.init()();
  v16 = v15;
  v17 = type metadata accessor for WorkoutConfigurationDataSource();
  v63 = lazy protocol witness table accessor for type PacerWorkoutConfiguration and conformance WorkoutConfiguration(&lazy protocol witness table cache variable for type WorkoutConfigurationDataSource and conformance WorkoutConfigurationDataSource, MEMORY[0x277D7DC28]);
  v64 = v17;
  v18 = EnvironmentObject.init()();
  v83 = v19;
  v84 = v18;
  if (one-time initialization token for WorkoutUIBundle != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v20 = WorkoutUIBundle.super.isa;
  v123._object = 0xE000000000000000;
  v21.value._countAndFlagsBits = 0x617A696C61636F4CLL;
  v21.value._object = 0xEB00000000656C62;
  v22._object = 0x800000020CB93C90;
  v22._countAndFlagsBits = 0xD00000000000001ALL;
  v23._countAndFlagsBits = 0;
  v23._object = 0xE000000000000000;
  v123._countAndFlagsBits = 0;
  v24 = NSLocalizedString(_:tableName:bundle:value:comment:)(v22, v21, v20, v23, v123);
  object = v24._object;
  countAndFlagsBits = v24._countAndFlagsBits;

  LOBYTE(v89) = 0;
  State.init(wrappedValue:)();
  v79 = v98;
  v80 = v99;
  specialized MirroredStartProvider.supportsMirroredStart.getter();
  v26 = 15;
  if (v25)
  {
    v26 = 19;
  }

  *&v89 = v26;
  type metadata accessor for NLWorkoutStartSource(0);
  State.init(wrappedValue:)();
  v77 = v99;
  v78 = v98;
  v119 = 0;
  v27 = WorkoutConfiguration.isOpenGoal.getter();
  v85 = v16;
  if ((v27 & 1) != 0 || !dispatch thunk of WorkoutConfiguration.externalProvider.getter())
  {
    outlined destroy of ObservedObject<PacerWorkoutConfiguration>(v122, &_s7SwiftUI14ObservedObjectVy11WorkoutCore05PacerE13ConfigurationCGMd);
    v87 = 0;
    v88 = 0;
    v75 = 0;
    v76 = 0;
    v72 = 0;
    v73 = 0;
  }

  else
  {

    if (!*v71)
    {
      result = EnvironmentObject.error()();
      __break(1u);
      return result;
    }

    v28 = *v71;
    v29 = WorkoutConfigurationDataSource.isConfigurationStored(_:)();

    v88 = EnvironmentObject.init()();
    v76 = v30;
    LOBYTE(v89) = 0;
    State.init(wrappedValue:)();
    v75 = v98;
    v72 = v13;
    v73 = v99;
    v87 = v29 & 1;
  }

  v86 = v14;
  v31 = v8;
  if (dispatch thunk of WorkoutConfiguration.externalProvider.getter())
  {
    outlined destroy of ObservedObject<PacerWorkoutConfiguration>(v122, &_s7SwiftUI14ObservedObjectVy11WorkoutCore05PacerE13ConfigurationCGMd);

    v69 = 0;
    v70 = 0;
    v71 = 0;
    v68 = 0;
  }

  else
  {
    v32 = v71[6];
    type metadata accessor for WorkoutConfiguration();
    lazy protocol witness table accessor for type PacerWorkoutConfiguration and conformance WorkoutConfiguration(&lazy protocol witness table cache variable for type WorkoutConfiguration and conformance WorkoutConfiguration, MEMORY[0x277D7DA50]);
    v71 = v32;
    v33 = ObservedObject.init(wrappedValue:)();
    v69 = v34;
    v70 = v33;
    v68 = 256;
  }

  v35 = v74;
  if (dispatch thunk of WorkoutConfiguration.externalProvider.getter())
  {
    outlined destroy of ObservedObject<PacerWorkoutConfiguration>(v122, &_s7SwiftUI14ObservedObjectVy11WorkoutCore05PacerE13ConfigurationCGMd);

    v36 = 1;
  }

  else
  {
    v37 = EnvironmentObject.init()();
    v38 = v62;
    *v62 = v37;
    *(v38 + 8) = v39;
    v40 = v35[5];
    *(v38 + v40) = swift_getKeyPath();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI11EnvironmentV7ContentOyAA13DismissActionV_GMd);
    swift_storeEnumTagMultiPayload();
    v41 = v38 + v35[7];
    LOBYTE(v89) = 0;
    State.init(wrappedValue:)();
    v42 = v99;
    *v41 = v98;
    *(v41 + 8) = v42;
    *(v38 + v35[6]) = v13;
    outlined init with take of DeleteButton(v38, v11);
    v36 = 0;
  }

  v66 = v13;
  (*(v4 + 56))(v11, v36, 1, v35);
  v67 = v11;
  v65 = v31;
  outlined init with copy of ObservedObject<PacerWorkoutConfiguration>(v11, v31, &_s9WorkoutUI12DeleteButtonVSgMd);
  *&v89 = v86;
  *(&v89 + 1) = v85;
  *&v90 = v84;
  *(&v90 + 1) = v83;
  LOBYTE(v91) = 0;
  *(&v91 + 1) = *v121;
  DWORD1(v91) = *&v121[3];
  *(&v91 + 1) = countAndFlagsBits;
  *&v92 = object;
  *(&v92 + 1) = v13;
  LOBYTE(v93) = v79;
  *(&v93 + 1) = *v120;
  DWORD1(v93) = *&v120[3];
  *(&v93 + 1) = v80;
  *&v94 = v78;
  v74 = implicit closure #2 in implicit closure #1 in variable initialization expression of StartWorkoutButton._devicesProvider;
  *(&v94 + 1) = v77;
  *&v95 = implicit closure #2 in implicit closure #1 in variable initialization expression of StartWorkoutButton._devicesProvider;
  *(&v95 + 1) = 0;
  LOBYTE(v96) = 0;
  *(&v96 + 1) = *v118;
  DWORD1(v96) = *&v118[3];
  *(&v96 + 1) = 0;
  v97 = 0;
  v43 = v89;
  v44 = v90;
  v45 = v94;
  *(a2 + 64) = v93;
  *(a2 + 80) = v45;
  v46 = v92;
  *(a2 + 32) = v91;
  *(a2 + 48) = v46;
  *a2 = v43;
  *(a2 + 16) = v44;
  v47 = v96;
  *(a2 + 96) = v95;
  *(a2 + 112) = v47;
  v49 = v87;
  v48 = v88;
  *(a2 + 128) = 0;
  *(a2 + 136) = v48;
  v87 = v49;
  v88 = v48;
  v50 = v75;
  v52 = v72;
  v51 = v73;
  *(a2 + 144) = v76;
  *(a2 + 152) = v52;
  *(a2 + 160) = v49;
  *(a2 + 168) = 0;
  *(a2 + 176) = v50;
  *(a2 + 184) = v51;
  v53 = v69;
  v54 = v70;
  *(a2 + 192) = v70;
  *(a2 + 200) = v53;
  v55 = v71;
  *(a2 + 208) = v71;
  *(a2 + 216) = v68;
  v56 = a2 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s9WorkoutUI05StartA6ButtonV_AA08SaveCopyD0VSgAA05Sharea13ConfigurationD0VSgAA06DeleteD0VSgtMd) + 80);
  v57 = v65;
  outlined init with copy of ObservedObject<PacerWorkoutConfiguration>(v65, v56, &_s9WorkoutUI12DeleteButtonVSgMd);
  outlined init with copy of StartWorkoutButton(&v89, &v98);
  v58 = v48;
  v59 = v76;
  outlined copy of SaveCopyButton?(v58, v76, v52);
  outlined copy of ShareWorkoutConfigurationButton?(v54, v53, v55);
  outlined destroy of ObservedObject<PacerWorkoutConfiguration>(v67, &_s9WorkoutUI12DeleteButtonVSgMd);
  outlined destroy of ObservedObject<PacerWorkoutConfiguration>(v57, &_s9WorkoutUI12DeleteButtonVSgMd);
  outlined consume of ShareWorkoutConfigurationButton?(v54, v53, v55);
  outlined consume of SaveCopyButton?(v88, v59, v52);
  v98 = v86;
  v99 = v85;
  v100 = v84;
  v101 = v83;
  v102 = 0;
  *v103 = *v121;
  *&v103[3] = *&v121[3];
  v104 = countAndFlagsBits;
  v105 = object;
  v106 = v66;
  v107 = v79;
  *v108 = *v120;
  *&v108[3] = *&v120[3];
  v109 = v80;
  v110 = v78;
  v111 = v77;
  v112 = v74;
  v113 = 0;
  v114 = 0;
  *v115 = *v118;
  *&v115[3] = *&v118[3];
  v116 = 0;
  v117 = 0;
  return outlined destroy of StartWorkoutButton(&v98);
}

uint64_t closure #2 in PacerWorkoutConfigurationView.body.getter()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI5StateVySbGMd);
  result = State.wrappedValue.getter();
  if ((v1 & 1) == 0)
  {
    return State.wrappedValue.setter();
  }

  return result;
}

uint64_t lazy protocol witness table accessor for type PacerWorkoutConfiguration and conformance WorkoutConfiguration(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t lazy protocol witness table accessor for type Section<EmptyView, TupleView<(PacerDistanceValuePicker, PacerDurationValuePicker, _ConditionalContent<Text, ModifiedContent<AlignedLeadingAccessoryContentView<Image, TupleView<(Text, Spacer, Text)>>, _ForegroundStyleModifier<Color>>>)>, EmptyView> and conformance <> Section<A, B, C>()
{
  result = lazy protocol witness table cache variable for type Section<EmptyView, TupleView<(PacerDistanceValuePicker, PacerDurationValuePicker, _ConditionalContent<Text, ModifiedContent<AlignedLeadingAccessoryContentView<Image, TupleView<(Text, Spacer, Text)>>, _ForegroundStyleModifier<Color>>>)>, EmptyView> and conformance <> Section<A, B, C>;
  if (!lazy protocol witness table cache variable for type Section<EmptyView, TupleView<(PacerDistanceValuePicker, PacerDurationValuePicker, _ConditionalContent<Text, ModifiedContent<AlignedLeadingAccessoryContentView<Image, TupleView<(Text, Spacer, Text)>>, _ForegroundStyleModifier<Color>>>)>, EmptyView> and conformance <> Section<A, B, C>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI7SectionVyAA9EmptyViewVAA05TupleE0Vy07WorkoutB024PacerDistanceValuePickerV_AH0h8DurationjK0VAA19_ConditionalContentVyAA4TextVAA08ModifiedN0VyAH023AlignedLeadingAccessorynE0VyAA5ImageVAGyAP_AA6SpacerVAPtGGAA24_ForegroundStyleModifierVyAA5ColorVGGGtGAEGMd);
    lazy protocol witness table accessor for type TupleView<(Section<EmptyView, ModifiedContent<ModifiedContent<VStack<TupleView<(_ConditionalContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Text, _EnvironmentKeyWritingModifier<TextAlignment>>, _EnvironmentKeyWritingModifier<Text.Case?>>, _FlexFrameLayout>, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyWritingModifier<Int?>>, BodyHyphenation>?, _ConditionalContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Text, _EnvironmentKeyWritingModifier<TextAlignment>>, _EnvironmentKeyWritingModifier<Text.Case?>>, _FlexFrameLayout>, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyWritingModifier<Int?>>, BodyHyphenation>, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Text, _EnvironmentKeyWritingModifier<TextAlignment>>, _EnvironmentKeyWritingModifier<Text.Case?>>, _FlexFrameLayout>, _EnvironmentKeyWriti(&lazy protocol witness table cache variable for type TupleView<(PacerDistanceValuePicker, PacerDurationValuePicker, _ConditionalContent<Text, ModifiedContent<AlignedLeadingAccessoryContentView<Image, TupleView<(Text, Spacer, Text)>>, _ForegroundStyleModifier<Color>>>)> and conformance TupleView<A>, &_s7SwiftUI9TupleViewVy07WorkoutB024PacerDistanceValuePickerV_AD0f8DurationhI0VAA19_ConditionalContentVyAA4TextVAA08ModifiedL0VyAD023AlignedLeadingAccessorylD0VyAA5ImageVACyAL_AA6SpacerVALtGGAA24_ForegroundStyleModifierVyAA5ColorVGGGtGMd);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Section<EmptyView, TupleView<(PacerDistanceValuePicker, PacerDurationValuePicker, _ConditionalContent<Text, ModifiedContent<AlignedLeadingAccessoryContentView<Image, TupleView<(Text, Spacer, Text)>>, _ForegroundStyleModifier<Color>>>)>, EmptyView> and conformance <> Section<A, B, C>);
  }

  return result;
}

uint64_t objectdestroyTm_71()
{

  return swift_deallocObject();
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<EmbeddedPacerConfigurationView, _PaddingLayout>, _BackgroundModifier<ModifiedContent<StrokeBorderShapeView<RoundedRectangle, HierarchicalShapeStyle, EmptyView>, _FlexFrameLayout>>>, _TraitWritingModifier<ListRowBackgroundTraitKey>>, _TraitWritingModifier<ListRowInsetsTraitKey>> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<EmbeddedPacerConfigurationView, _PaddingLayout>, _BackgroundModifier<ModifiedContent<StrokeBorderShapeView<RoundedRectangle, HierarchicalShapeStyle, EmptyView>, _FlexFrameLayout>>>, _TraitWritingModifier<ListRowBackgroundTraitKey>>, _TraitWritingModifier<ListRowInsetsTraitKey>> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<EmbeddedPacerConfigurationView, _PaddingLayout>, _BackgroundModifier<ModifiedContent<StrokeBorderShapeView<RoundedRectangle, HierarchicalShapeStyle, EmptyView>, _FlexFrameLayout>>>, _TraitWritingModifier<ListRowBackgroundTraitKey>>, _TraitWritingModifier<ListRowInsetsTraitKey>> and conformance <> ModifiedContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyACyACyACy07WorkoutB030EmbeddedPacerConfigurationViewVAA14_PaddingLayoutVGAA19_BackgroundModifierVyACyAA017StrokeBorderShapeI0VyAA16RoundedRectangleVAA012HierarchicalP5StyleVAA05EmptyI0VGAA010_FlexFrameK0VGGGAA013_TraitWritingM0VyAA07ListRowlX3KeyVGGA_yAA0z9RowInsetsX3KeyVGGMd);
    lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<ModifiedContent<EmbeddedPacerConfigurationView, _PaddingLayout>, _BackgroundModifier<ModifiedContent<StrokeBorderShapeView<RoundedRectangle, HierarchicalShapeStyle, EmptyView>, _FlexFrameLayout>>>, _TraitWritingModifier<ListRowBackgroundTraitKey>> and conformance <> ModifiedContent<A, B>();
    lazy protocol witness table accessor for type TupleView<(Section<EmptyView, ModifiedContent<ModifiedContent<VStack<TupleView<(_ConditionalContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Text, _EnvironmentKeyWritingModifier<TextAlignment>>, _EnvironmentKeyWritingModifier<Text.Case?>>, _FlexFrameLayout>, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyWritingModifier<Int?>>, BodyHyphenation>?, _ConditionalContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Text, _EnvironmentKeyWritingModifier<TextAlignment>>, _EnvironmentKeyWritingModifier<Text.Case?>>, _FlexFrameLayout>, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyWritingModifier<Int?>>, BodyHyphenation>, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Text, _EnvironmentKeyWritingModifier<TextAlignment>>, _EnvironmentKeyWritingModifier<Text.Case?>>, _FlexFrameLayout>, _EnvironmentKeyWriti(&lazy protocol witness table cache variable for type _TraitWritingModifier<ListRowInsetsTraitKey> and conformance _TraitWritingModifier<A>, &_s7SwiftUI21_TraitWritingModifierVyAA013ListRowInsetsC3KeyVGMd);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<EmbeddedPacerConfigurationView, _PaddingLayout>, _BackgroundModifier<ModifiedContent<StrokeBorderShapeView<RoundedRectangle, HierarchicalShapeStyle, EmptyView>, _FlexFrameLayout>>>, _TraitWritingModifier<ListRowBackgroundTraitKey>>, _TraitWritingModifier<ListRowInsetsTraitKey>> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<ModifiedContent<EmbeddedPacerConfigurationView, _PaddingLayout>, _BackgroundModifier<ModifiedContent<StrokeBorderShapeView<RoundedRectangle, HierarchicalShapeStyle, EmptyView>, _FlexFrameLayout>>>, _TraitWritingModifier<ListRowBackgroundTraitKey>> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<EmbeddedPacerConfigurationView, _PaddingLayout>, _BackgroundModifier<ModifiedContent<StrokeBorderShapeView<RoundedRectangle, HierarchicalShapeStyle, EmptyView>, _FlexFrameLayout>>>, _TraitWritingModifier<ListRowBackgroundTraitKey>> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<EmbeddedPacerConfigurationView, _PaddingLayout>, _BackgroundModifier<ModifiedContent<StrokeBorderShapeView<RoundedRectangle, HierarchicalShapeStyle, EmptyView>, _FlexFrameLayout>>>, _TraitWritingModifier<ListRowBackgroundTraitKey>> and conformance <> ModifiedContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyACyACy07WorkoutB030EmbeddedPacerConfigurationViewVAA14_PaddingLayoutVGAA19_BackgroundModifierVyACyAA017StrokeBorderShapeI0VyAA16RoundedRectangleVAA012HierarchicalP5StyleVAA05EmptyI0VGAA010_FlexFrameK0VGGGAA013_TraitWritingM0VyAA07ListRowlX3KeyVGGMd);
    lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<EmbeddedPacerConfigurationView, _PaddingLayout>, _BackgroundModifier<ModifiedContent<StrokeBorderShapeView<RoundedRectangle, HierarchicalShapeStyle, EmptyView>, _FlexFrameLayout>>> and conformance <> ModifiedContent<A, B>();
    lazy protocol witness table accessor for type TupleView<(Section<EmptyView, ModifiedContent<ModifiedContent<VStack<TupleView<(_ConditionalContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Text, _EnvironmentKeyWritingModifier<TextAlignment>>, _EnvironmentKeyWritingModifier<Text.Case?>>, _FlexFrameLayout>, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyWritingModifier<Int?>>, BodyHyphenation>?, _ConditionalContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Text, _EnvironmentKeyWritingModifier<TextAlignment>>, _EnvironmentKeyWritingModifier<Text.Case?>>, _FlexFrameLayout>, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyWritingModifier<Int?>>, BodyHyphenation>, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Text, _EnvironmentKeyWritingModifier<TextAlignment>>, _EnvironmentKeyWritingModifier<Text.Case?>>, _FlexFrameLayout>, _EnvironmentKeyWriti(&lazy protocol witness table cache variable for type _TraitWritingModifier<ListRowBackgroundTraitKey> and conformance _TraitWritingModifier<A>, &_s7SwiftUI21_TraitWritingModifierVyAA017ListRowBackgroundC3KeyVGMd);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<EmbeddedPacerConfigurationView, _PaddingLayout>, _BackgroundModifier<ModifiedContent<StrokeBorderShapeView<RoundedRectangle, HierarchicalShapeStyle, EmptyView>, _FlexFrameLayout>>>, _TraitWritingModifier<ListRowBackgroundTraitKey>> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<EmbeddedPacerConfigurationView, _PaddingLayout>, _BackgroundModifier<ModifiedContent<StrokeBorderShapeView<RoundedRectangle, HierarchicalShapeStyle, EmptyView>, _FlexFrameLayout>>> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<EmbeddedPacerConfigurationView, _PaddingLayout>, _BackgroundModifier<ModifiedContent<StrokeBorderShapeView<RoundedRectangle, HierarchicalShapeStyle, EmptyView>, _FlexFrameLayout>>> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<EmbeddedPacerConfigurationView, _PaddingLayout>, _BackgroundModifier<ModifiedContent<StrokeBorderShapeView<RoundedRectangle, HierarchicalShapeStyle, EmptyView>, _FlexFrameLayout>>> and conformance <> ModifiedContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyACy07WorkoutB030EmbeddedPacerConfigurationViewVAA14_PaddingLayoutVGAA19_BackgroundModifierVyACyAA017StrokeBorderShapeI0VyAA16RoundedRectangleVAA012HierarchicalP5StyleVAA05EmptyI0VGAA010_FlexFrameK0VGGGMd);
    lazy protocol witness table accessor for type ModifiedContent<EmbeddedPacerConfigurationView, _PaddingLayout> and conformance <> ModifiedContent<A, B>();
    lazy protocol witness table accessor for type TupleView<(Section<EmptyView, ModifiedContent<ModifiedContent<VStack<TupleView<(_ConditionalContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Text, _EnvironmentKeyWritingModifier<TextAlignment>>, _EnvironmentKeyWritingModifier<Text.Case?>>, _FlexFrameLayout>, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyWritingModifier<Int?>>, BodyHyphenation>?, _ConditionalContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Text, _EnvironmentKeyWritingModifier<TextAlignment>>, _EnvironmentKeyWritingModifier<Text.Case?>>, _FlexFrameLayout>, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyWritingModifier<Int?>>, BodyHyphenation>, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Text, _EnvironmentKeyWritingModifier<TextAlignment>>, _EnvironmentKeyWritingModifier<Text.Case?>>, _FlexFrameLayout>, _EnvironmentKeyWriti(&lazy protocol witness table cache variable for type _BackgroundModifier<ModifiedContent<StrokeBorderShapeView<RoundedRectangle, HierarchicalShapeStyle, EmptyView>, _FlexFrameLayout>> and conformance _BackgroundModifier<A>, &_s7SwiftUI19_BackgroundModifierVyAA15ModifiedContentVyAA21StrokeBorderShapeViewVyAA16RoundedRectangleVAA012HierarchicalI5StyleVAA05EmptyJ0VGAA16_FlexFrameLayoutVGGMd);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<EmbeddedPacerConfigurationView, _PaddingLayout>, _BackgroundModifier<ModifiedContent<StrokeBorderShapeView<RoundedRectangle, HierarchicalShapeStyle, EmptyView>, _FlexFrameLayout>>> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<EmbeddedPacerConfigurationView, _PaddingLayout> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<EmbeddedPacerConfigurationView, _PaddingLayout> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<EmbeddedPacerConfigurationView, _PaddingLayout> and conformance <> ModifiedContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVy07WorkoutB030EmbeddedPacerConfigurationViewVAA14_PaddingLayoutVGMd);
    lazy protocol witness table accessor for type EmbeddedPacerConfigurationView and conformance EmbeddedPacerConfigurationView();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<EmbeddedPacerConfigurationView, _PaddingLayout> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type EmbeddedPacerConfigurationView and conformance EmbeddedPacerConfigurationView()
{
  result = lazy protocol witness table cache variable for type EmbeddedPacerConfigurationView and conformance EmbeddedPacerConfigurationView;
  if (!lazy protocol witness table cache variable for type EmbeddedPacerConfigurationView and conformance EmbeddedPacerConfigurationView)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type EmbeddedPacerConfigurationView and conformance EmbeddedPacerConfigurationView);
  }

  return result;
}

uint64_t _s7SwiftUI15ModifiedContentVyACyACyAA4TextVAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGAGyAA0E9AlignmentOGGAGyAE4CaseOSgGGWObTm_0(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(a3);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t outlined init with copy of RoundedRectangle(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t outlined destroy of RoundedRectangle(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t lazy protocol witness table accessor for type _ConditionalContent<ModifiedContent<ModifiedContent<PacerValuesButton, _EnvironmentKeyWritingModifier<WorkoutConfigurationDataSource?>>, _EnvironmentKeyWritingModifier<ConfigurationNavigationModel?>>, ModifiedContent<EmbeddedPacerConfigurationView, ListRowBackgroundViewModifier>> and conformance <> _ConditionalContent<A, B>()
{
  result = lazy protocol witness table cache variable for type _ConditionalContent<ModifiedContent<ModifiedContent<PacerValuesButton, _EnvironmentKeyWritingModifier<WorkoutConfigurationDataSource?>>, _EnvironmentKeyWritingModifier<ConfigurationNavigationModel?>>, ModifiedContent<EmbeddedPacerConfigurationView, ListRowBackgroundViewModifier>> and conformance <> _ConditionalContent<A, B>;
  if (!lazy protocol witness table cache variable for type _ConditionalContent<ModifiedContent<ModifiedContent<PacerValuesButton, _EnvironmentKeyWritingModifier<WorkoutConfigurationDataSource?>>, _EnvironmentKeyWritingModifier<ConfigurationNavigationModel?>>, ModifiedContent<EmbeddedPacerConfigurationView, ListRowBackgroundViewModifier>> and conformance <> _ConditionalContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI19_ConditionalContentVyAA08ModifiedD0VyAEy07WorkoutB017PacerValuesButtonVAA30_EnvironmentKeyWritingModifierVy0F4Core0F23ConfigurationDataSourceCSgGGAJyAF0O15NavigationModelCSgGGAEyAF08EmbeddedgO4ViewVAF017ListRowBackgrounduM0VGGMd);
    lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<PacerValuesButton, _EnvironmentKeyWritingModifier<WorkoutConfigurationDataSource?>>, _EnvironmentKeyWritingModifier<ConfigurationNavigationModel?>> and conformance <> ModifiedContent<A, B>();
    lazy protocol witness table accessor for type ModifiedContent<EmbeddedPacerConfigurationView, ListRowBackgroundViewModifier> and conformance <> ModifiedContent<A, B>();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type _ConditionalContent<ModifiedContent<ModifiedContent<PacerValuesButton, _EnvironmentKeyWritingModifier<WorkoutConfigurationDataSource?>>, _EnvironmentKeyWritingModifier<ConfigurationNavigationModel?>>, ModifiedContent<EmbeddedPacerConfigurationView, ListRowBackgroundViewModifier>> and conformance <> _ConditionalContent<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<PacerValuesButton, _EnvironmentKeyWritingModifier<WorkoutConfigurationDataSource?>>, _EnvironmentKeyWritingModifier<ConfigurationNavigationModel?>> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<PacerValuesButton, _EnvironmentKeyWritingModifier<WorkoutConfigurationDataSource?>>, _EnvironmentKeyWritingModifier<ConfigurationNavigationModel?>> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<PacerValuesButton, _EnvironmentKeyWritingModifier<WorkoutConfigurationDataSource?>>, _EnvironmentKeyWritingModifier<ConfigurationNavigationModel?>> and conformance <> ModifiedContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyACy07WorkoutB017PacerValuesButtonVAA30_EnvironmentKeyWritingModifierVy0E4Core0E23ConfigurationDataSourceCSgGGAHyAD0N15NavigationModelCSgGGMd);
    lazy protocol witness table accessor for type ModifiedContent<PacerValuesButton, _EnvironmentKeyWritingModifier<WorkoutConfigurationDataSource?>> and conformance <> ModifiedContent<A, B>();
    lazy protocol witness table accessor for type TupleView<(Section<EmptyView, ModifiedContent<ModifiedContent<VStack<TupleView<(_ConditionalContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Text, _EnvironmentKeyWritingModifier<TextAlignment>>, _EnvironmentKeyWritingModifier<Text.Case?>>, _FlexFrameLayout>, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyWritingModifier<Int?>>, BodyHyphenation>?, _ConditionalContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Text, _EnvironmentKeyWritingModifier<TextAlignment>>, _EnvironmentKeyWritingModifier<Text.Case?>>, _FlexFrameLayout>, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyWritingModifier<Int?>>, BodyHyphenation>, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Text, _EnvironmentKeyWritingModifier<TextAlignment>>, _EnvironmentKeyWritingModifier<Text.Case?>>, _FlexFrameLayout>, _EnvironmentKeyWriti(&lazy protocol witness table cache variable for type _EnvironmentKeyWritingModifier<ConfigurationNavigationModel?> and conformance _EnvironmentKeyWritingModifier<A>, &_s7SwiftUI30_EnvironmentKeyWritingModifierVy07WorkoutB028ConfigurationNavigationModelCSgGMd);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<PacerValuesButton, _EnvironmentKeyWritingModifier<WorkoutConfigurationDataSource?>>, _EnvironmentKeyWritingModifier<ConfigurationNavigationModel?>> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<PacerValuesButton, _EnvironmentKeyWritingModifier<WorkoutConfigurationDataSource?>> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<PacerValuesButton, _EnvironmentKeyWritingModifier<WorkoutConfigurationDataSource?>> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<PacerValuesButton, _EnvironmentKeyWritingModifier<WorkoutConfigurationDataSource?>> and conformance <> ModifiedContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVy07WorkoutB017PacerValuesButtonVAA30_EnvironmentKeyWritingModifierVy0E4Core0E23ConfigurationDataSourceCSgGGMd);
    lazy protocol witness table accessor for type PacerValuesButton and conformance PacerValuesButton();
    lazy protocol witness table accessor for type TupleView<(Section<EmptyView, ModifiedContent<ModifiedContent<VStack<TupleView<(_ConditionalContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Text, _EnvironmentKeyWritingModifier<TextAlignment>>, _EnvironmentKeyWritingModifier<Text.Case?>>, _FlexFrameLayout>, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyWritingModifier<Int?>>, BodyHyphenation>?, _ConditionalContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Text, _EnvironmentKeyWritingModifier<TextAlignment>>, _EnvironmentKeyWritingModifier<Text.Case?>>, _FlexFrameLayout>, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyWritingModifier<Int?>>, BodyHyphenation>, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Text, _EnvironmentKeyWritingModifier<TextAlignment>>, _EnvironmentKeyWritingModifier<Text.Case?>>, _FlexFrameLayout>, _EnvironmentKeyWriti(&lazy protocol witness table cache variable for type _EnvironmentKeyWritingModifier<WorkoutConfigurationDataSource?> and conformance _EnvironmentKeyWritingModifier<A>, &_s7SwiftUI30_EnvironmentKeyWritingModifierVy11WorkoutCore0G23ConfigurationDataSourceCSgGMd);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<PacerValuesButton, _EnvironmentKeyWritingModifier<WorkoutConfigurationDataSource?>> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type PacerValuesButton and conformance PacerValuesButton()
{
  result = lazy protocol witness table cache variable for type PacerValuesButton and conformance PacerValuesButton;
  if (!lazy protocol witness table cache variable for type PacerValuesButton and conformance PacerValuesButton)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PacerValuesButton and conformance PacerValuesButton);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<EmbeddedPacerConfigurationView, ListRowBackgroundViewModifier> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<EmbeddedPacerConfigurationView, ListRowBackgroundViewModifier> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<EmbeddedPacerConfigurationView, ListRowBackgroundViewModifier> and conformance <> ModifiedContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVy07WorkoutB030EmbeddedPacerConfigurationViewVAD017ListRowBackgroundI8ModifierVGMd);
    lazy protocol witness table accessor for type EmbeddedPacerConfigurationView and conformance EmbeddedPacerConfigurationView();
    lazy protocol witness table accessor for type ListRowBackgroundViewModifier and conformance ListRowBackgroundViewModifier();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<EmbeddedPacerConfigurationView, ListRowBackgroundViewModifier> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

uint64_t outlined init with copy of ObservedObject<PacerWorkoutConfiguration>(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(a3);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t outlined destroy of ObservedObject<PacerWorkoutConfiguration>(uint64_t a1, uint64_t *a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(a2);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

id VignetteView.init(cornerRadius:)(double a1)
{
  v20.receiver = v1;
  v20.super_class = type metadata accessor for VignetteView();
  v3 = objc_msgSendSuper2(&v20, sel_initWithFrame_, 0.0, 0.0, 0.0, 0.0);
  [v3 setAlpha_];
  v4 = objc_opt_self();
  v5 = [v4 clearColor];
  [v3 setBackgroundColor_];

  [v3 setClipsToBounds_];
  v6 = [v3 layer];
  v7 = [objc_allocWithZone(MEMORY[0x277CD9EA0]) initWithType_];
  [v6 setCompositingFilter_];

  v8 = [v3 layer];
  [v8 setCornerRadius_];

  v9 = [v3 layer];
  [v9 setCornerCurve_];

  v10 = [v3 layer];
  [v10 setInvertsShadow_];

  v11 = [v3 layer];
  v12 = [v4 whiteColor];
  v13 = [v12 CGColor];

  [v11 setShadowColor_];
  v14 = [v3 layer];
  [v14 setShadowOffset_];

  v15 = [v3 layer];
  [v15 setShadowRadius_];

  v16 = [v3 layer];
  LODWORD(v17) = 1.0;
  [v16 setShadowOpacity_];

  v18 = [v3 layer];
  [v18 setShadowPathIsBounds_];

  return v3;
}

Swift::Void __swiftcall VignetteView.update(with:)(UIUserInterfaceActiveAppearance with)
{
  if (with)
  {
    v2 = [v1 layer];
    v3 = [objc_opt_self() whiteColor];
  }

  else
  {
    v2 = [v1 layer];
    v3 = [objc_allocWithZone(MEMORY[0x277D75348]) initWithWhite:0.882352941 alpha:1.0];
  }

  v4 = v3;
  v5 = [v3 CGColor];

  [v2 setShadowColor_];
}

id VignetteView.__allocating_init(frame:)(double a1, double a2, double a3, double a4)
{
  v9 = objc_allocWithZone(v4);

  return [v9 initWithFrame_];
}

id VignetteView.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for VignetteView();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

Swift::Void __swiftcall WorkoutCountdownAnimatedView.prepare()()
{
  v1 = *(v0 + OBJC_IVAR____TtC9WorkoutUI28WorkoutCountdownAnimatedView_countdownRingView);
  v2 = OBJC_IVAR____TtC9WorkoutUI24WorkoutCountdownRingView_animator;
  [*&v1[OBJC_IVAR____TtC9WorkoutUI24WorkoutCountdownRingView_animator] setCountdownView_];
  [*&v1[v2] prepareToAnimate];
  [*(v0 + OBJC_IVAR____TtC9WorkoutUI28WorkoutCountdownAnimatedView_readyLabel) setHidden_];
  [*(v0 + OBJC_IVAR____TtC9WorkoutUI28WorkoutCountdownAnimatedView_oneLabel) setHidden_];
  [*(v0 + OBJC_IVAR____TtC9WorkoutUI28WorkoutCountdownAnimatedView_twoLabel) setHidden_];
  [*(v0 + OBJC_IVAR____TtC9WorkoutUI28WorkoutCountdownAnimatedView_threeLabel) setHidden_];

  [v1 setHidden_];
}

uint64_t key path getter for WorkoutCountdownAnimatedView.onCountdownStep : WorkoutCountdownAnimatedView@<X0>(void *a1@<X0>, uint64_t (**a2)(uint64_t a1)@<X8>)
{
  v3 = (*a1 + OBJC_IVAR____TtC9WorkoutUI28WorkoutCountdownAnimatedView_onCountdownStep);
  swift_beginAccess();
  v4 = *v3;
  v5 = v3[1];
  if (v4)
  {
    v6 = swift_allocObject();
    *(v6 + 16) = v4;
    *(v6 + 24) = v5;
    v7 = partial apply for thunk for @escaping @callee_guaranteed (@in_guaranteed WorkoutCountdownStep) -> ();
  }

  else
  {
    v7 = 0;
    v6 = 0;
  }

  *a2 = v7;
  a2[1] = v6;
  return _s9WorkoutUI0A13CountdownStepOIegn_SgWOy_0(v4);
}

uint64_t key path setter for WorkoutCountdownAnimatedView.onCountdownStep : WorkoutCountdownAnimatedView(uint64_t *a1, void *a2)
{
  v3 = *a1;
  v4 = a1[1];
  if (*a1)
  {
    v5 = swift_allocObject();
    *(v5 + 16) = v3;
    *(v5 + 24) = v4;
    v6 = partial apply for thunk for @escaping @callee_guaranteed (@in_guaranteed WorkoutCountdownStep) -> (@out ());
  }

  else
  {
    v6 = 0;
    v5 = 0;
  }

  v7 = (*a2 + OBJC_IVAR____TtC9WorkoutUI28WorkoutCountdownAnimatedView_onCountdownStep);
  swift_beginAccess();
  v8 = *v7;
  *v7 = v6;
  v7[1] = v5;
  _s9WorkoutUI0A13CountdownStepOIegn_SgWOy_0(v3);
  return sub_20C691F38(v8);
}

uint64_t key path getter for WorkoutCountdownAnimatedView.onCountdownWindUp : WorkoutCountdownAnimatedView@<X0>(void *a1@<X0>, uint64_t (**a2)()@<X8>)
{
  v3 = (*a1 + OBJC_IVAR____TtC9WorkoutUI28WorkoutCountdownAnimatedView_onCountdownWindUp);
  swift_beginAccess();
  v4 = *v3;
  v5 = v3[1];
  if (v4)
  {
    v6 = swift_allocObject();
    *(v6 + 16) = v4;
    *(v6 + 24) = v5;
    v7 = thunk for @escaping @callee_guaranteed () -> ()partial apply;
  }

  else
  {
    v7 = 0;
    v6 = 0;
  }

  *a2 = v7;
  a2[1] = v6;
  return _s9WorkoutUI0A13CountdownStepOIegn_SgWOy_0(v4);
}

uint64_t key path setter for WorkoutCountdownAnimatedView.onCountdownWindUp : WorkoutCountdownAnimatedView(uint64_t *a1, void *a2)
{
  v3 = *a1;
  v4 = a1[1];
  if (*a1)
  {
    v5 = swift_allocObject();
    *(v5 + 16) = v3;
    *(v5 + 24) = v4;
    v6 = thunk for @escaping @callee_guaranteed () -> (@out ())partial apply;
  }

  else
  {
    v6 = 0;
    v5 = 0;
  }

  v7 = (*a2 + OBJC_IVAR____TtC9WorkoutUI28WorkoutCountdownAnimatedView_onCountdownWindUp);
  swift_beginAccess();
  v8 = *v7;
  *v7 = v6;
  v7[1] = v5;
  _s9WorkoutUI0A13CountdownStepOIegn_SgWOy_0(v3);
  return sub_20C691F38(v8);
}

uint64_t key path getter for WorkoutCountdownAnimatedView.onCountdownFadeOut : WorkoutCountdownAnimatedView@<X0>(void *a1@<X0>, uint64_t (**a2)()@<X8>)
{
  v3 = (*a1 + OBJC_IVAR____TtC9WorkoutUI28WorkoutCountdownAnimatedView_onCountdownFadeOut);
  swift_beginAccess();
  v4 = *v3;
  v5 = v3[1];
  if (v4)
  {
    v6 = swift_allocObject();
    *(v6 + 16) = v4;
    *(v6 + 24) = v5;
    v7 = thunk for @escaping @callee_guaranteed () -> ()partial apply;
  }

  else
  {
    v7 = 0;
    v6 = 0;
  }

  *a2 = v7;
  a2[1] = v6;
  return _s9WorkoutUI0A13CountdownStepOIegn_SgWOy_0(v4);
}

uint64_t key path setter for WorkoutCountdownAnimatedView.onCountdownFadeOut : WorkoutCountdownAnimatedView(uint64_t *a1, void *a2)
{
  v3 = *a1;
  v4 = a1[1];
  if (*a1)
  {
    v5 = swift_allocObject();
    *(v5 + 16) = v3;
    *(v5 + 24) = v4;
    v6 = thunk for @escaping @callee_guaranteed () -> (@out ())partial apply;
  }

  else
  {
    v6 = 0;
    v5 = 0;
  }

  v7 = (*a2 + OBJC_IVAR____TtC9WorkoutUI28WorkoutCountdownAnimatedView_onCountdownFadeOut);
  swift_beginAccess();
  v8 = *v7;
  *v7 = v6;
  v7[1] = v5;
  _s9WorkoutUI0A13CountdownStepOIegn_SgWOy_0(v3);
  return sub_20C691F38(v8);
}

uint64_t key path getter for WorkoutCountdownAnimatedView.onCountdownCompleted : WorkoutCountdownAnimatedView@<X0>(void *a1@<X0>, uint64_t (**a2)()@<X8>)
{
  v3 = (*a1 + OBJC_IVAR____TtC9WorkoutUI28WorkoutCountdownAnimatedView_onCountdownCompleted);
  swift_beginAccess();
  v4 = *v3;
  v5 = v3[1];
  if (v4)
  {
    v6 = swift_allocObject();
    *(v6 + 16) = v4;
    *(v6 + 24) = v5;
    v7 = _sIeg_ytIegr_TRTA_2;
  }

  else
  {
    v7 = 0;
    v6 = 0;
  }

  *a2 = v7;
  a2[1] = v6;
  return _s9WorkoutUI0A13CountdownStepOIegn_SgWOy_0(v4);
}

uint64_t key path setter for WorkoutCountdownAnimatedView.onCountdownCompleted : WorkoutCountdownAnimatedView(uint64_t *a1, void *a2)
{
  v3 = *a1;
  v4 = a1[1];
  if (*a1)
  {
    v5 = swift_allocObject();
    *(v5 + 16) = v3;
    *(v5 + 24) = v4;
    v6 = _sytIegr_Ieg_TRTA_2;
  }

  else
  {
    v6 = 0;
    v5 = 0;
  }

  v7 = (*a2 + OBJC_IVAR____TtC9WorkoutUI28WorkoutCountdownAnimatedView_onCountdownCompleted);
  swift_beginAccess();
  v8 = *v7;
  *v7 = v6;
  v7[1] = v5;
  _s9WorkoutUI0A13CountdownStepOIegn_SgWOy_0(v3);
  return sub_20C691F38(v8);
}

uint64_t WorkoutCountdownAnimatedView.onCountdownStep.getter(void *a1, void (*a2)(void, void))
{
  v4 = (v2 + *a1);
  swift_beginAccess();
  v5 = *v4;
  a2(*v4, v4[1]);
  return v5;
}

uint64_t WorkoutCountdownAnimatedView.onCountdownStep.setter(uint64_t a1, uint64_t a2, void *a3, uint64_t (*a4)(uint64_t, uint64_t))
{
  v8 = (v4 + *a3);
  swift_beginAccess();
  v9 = *v8;
  v10 = v8[1];
  *v8 = a1;
  v8[1] = a2;
  return a4(v9, v10);
}

void one-time initialization function for readyFont(double a1, uint64_t a2, void *a3)
{
  v5 = *MEMORY[0x277D74418];
  v6 = *MEMORY[0x277D74368];
  v7 = objc_opt_self();
  v8 = v6;
  v9 = [v7 systemFontOfSize:a1 weight:v5];
  v10 = [v9 fontDescriptor];
  v11 = [v10 fontDescriptorWithSymbolicTraits_];
  if (v11)
  {
    v12 = v11;

    v10 = v12;
  }

  v13 = v8;
  v14 = [v10 fontDescriptorWithDesign_];

  if (v14)
  {

    v10 = v14;
  }

  v15 = [v7 fontWithDescriptor:v10 size:0.0];

  *a3 = v15;
}

char *WorkoutCountdownAnimatedView.init(diameter:thickness:isOpaque:topColor:bottomColor:)(char a1, void *a2, void *a3, double a4, double a5)
{
  v6 = v5;
  v9 = &v5[OBJC_IVAR____TtC9WorkoutUI28WorkoutCountdownAnimatedView_onCountdownStep];
  *v9 = 0;
  *(v9 + 1) = 0;
  v10 = &v5[OBJC_IVAR____TtC9WorkoutUI28WorkoutCountdownAnimatedView_onCountdownWindUp];
  *v10 = 0;
  *(v10 + 1) = 0;
  v11 = &v5[OBJC_IVAR____TtC9WorkoutUI28WorkoutCountdownAnimatedView_onCountdownFadeOut];
  *v11 = 0;
  *(v11 + 1) = 0;
  v12 = &v5[OBJC_IVAR____TtC9WorkoutUI28WorkoutCountdownAnimatedView_onCountdownCompleted];
  *v12 = 0;
  *(v12 + 1) = 0;
  v13 = OBJC_IVAR____TtC9WorkoutUI28WorkoutCountdownAnimatedView_readyLabel;
  v14 = [objc_allocWithZone(MEMORY[0x277D756B8]) initWithFrame_];
  if (one-time initialization token for readyFont != -1)
  {
    swift_once();
  }

  [v14 setFont_];
  [v14 setTextAlignment_];
  v15 = objc_opt_self();
  v16 = [v15 labelColor];
  [v14 setTextColor_];

  if (one-time initialization token for WorkoutUIBundle != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v17 = WorkoutUIBundle.super.isa;
  v139._object = 0xE000000000000000;
  v18._countAndFlagsBits = 0x574F44544E554F43;
  v18._object = 0xEF59444145525F4ELL;
  v19.value._countAndFlagsBits = 0x617A696C61636F4CLL;
  v19.value._object = 0xEB00000000656C62;
  v20._countAndFlagsBits = 0;
  v20._object = 0xE000000000000000;
  v139._countAndFlagsBits = 0;
  v21 = NSLocalizedString(_:tableName:bundle:value:comment:)(v18, v19, v17, v20, v139);

  v22 = MEMORY[0x20F30BAD0](v21._countAndFlagsBits, v21._object);
  [v14 setText_];

  [v14 setMinimumScaleFactor_];
  [v14 setAdjustsFontSizeToFitWidth_];
  [v14 setTranslatesAutoresizingMaskIntoConstraints_];
  *&v5[v13] = v14;
  v23 = OBJC_IVAR____TtC9WorkoutUI28WorkoutCountdownAnimatedView_oneLabel;
  v24 = [objc_allocWithZone(MEMORY[0x277D756B8]) initWithFrame_];
  if (one-time initialization token for numberFont != -1)
  {
    swift_once();
  }

  v130 = static WorkoutCountdownAnimatedView.Layout.numberFont;
  [v24 setFont_];
  [v24 setTextAlignment_];
  v25 = [v15 labelColor];
  [v24 setTextColor_];

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys7CVarArg_pGMd);
  v26 = swift_allocObject();
  v27 = MEMORY[0x277D83B88];
  *(v26 + 16) = xmmword_20CB5DA70;
  v28 = MEMORY[0x277D83C10];
  *(v26 + 56) = v27;
  *(v26 + 64) = v28;
  *(v26 + 32) = 1;
  v29 = static String.localizedStringWithFormat(_:_:)();
  v31 = v30;

  v32 = MEMORY[0x20F30BAD0](v29, v31);
  [v24 setText_];

  [v24 setTranslatesAutoresizingMaskIntoConstraints_];
  *&v6[v23] = v24;
  v128 = OBJC_IVAR____TtC9WorkoutUI28WorkoutCountdownAnimatedView_twoLabel;
  v33 = [objc_allocWithZone(MEMORY[0x277D756B8]) initWithFrame_];
  [v33 &selRef:v130 dictionaryForKey:?];
  [v33 setTextAlignment_];
  v34 = [v15 labelColor];
  [v33 setTextColor_];

  v35 = swift_allocObject();
  *(v35 + 16) = xmmword_20CB5DA70;
  *(v35 + 56) = MEMORY[0x277D83B88];
  *(v35 + 64) = MEMORY[0x277D83C10];
  *(v35 + 32) = 2;
  v36 = static String.localizedStringWithFormat(_:_:)();
  v38 = v37;

  v39 = MEMORY[0x20F30BAD0](v36, v38);
  [v33 setText_];

  [v33 setTranslatesAutoresizingMaskIntoConstraints_];
  *&v6[v128] = v33;
  v40 = OBJC_IVAR____TtC9WorkoutUI28WorkoutCountdownAnimatedView_threeLabel;
  v41 = [objc_allocWithZone(MEMORY[0x277D756B8]) initWithFrame_];
  [v41 &selRef:v130 dictionaryForKey:?];
  [v41 setTextAlignment_];
  v42 = [v15 labelColor];
  [v41 setTextColor_];

  v43 = swift_allocObject();
  *(v43 + 16) = xmmword_20CB5DA70;
  *(v43 + 56) = MEMORY[0x277D83B88];
  *(v43 + 64) = MEMORY[0x277D83C10];
  *(v43 + 32) = 3;
  v44 = static String.localizedStringWithFormat(_:_:)();
  v46 = v45;

  v47 = MEMORY[0x20F30BAD0](v44, v46);
  [v41 setText_];

  [v41 setTranslatesAutoresizingMaskIntoConstraints_];
  *&v6[v40] = v41;
  v50 = objc_allocWithZone(type metadata accessor for WorkoutCountdownRingView());
  v136 = a2;
  v137 = a3;
  v48 = a4;
  v49 = a5;
  v51 = WorkoutCountdownRingView.init(diameter:thickness:topColor:bottomColor:isOpaque:)(v136, v137, a1 & 1, v48, v49);
  [v51 setTranslatesAutoresizingMaskIntoConstraints_];
  *&v6[OBJC_IVAR____TtC9WorkoutUI28WorkoutCountdownAnimatedView_countdownRingView] = v51;
  v138.receiver = v6;
  v138.super_class = type metadata accessor for WorkoutCountdownAnimatedView();
  v52 = objc_msgSendSuper2(&v138, sel_initWithFrame_, 0.0, 0.0, 0.0, 0.0);
  v53 = *&v52[OBJC_IVAR____TtC9WorkoutUI28WorkoutCountdownAnimatedView_countdownRingView];
  v54 = OBJC_IVAR____TtC9WorkoutUI28WorkoutCountdownAnimatedView_countdownRingView;
  v55 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v56 = &v53[OBJC_IVAR____TtC9WorkoutUI24WorkoutCountdownRingView_onCountdownCompleted];
  swift_beginAccess();
  v57 = *v56;
  *v56 = partial apply for closure #1 in WorkoutCountdownAnimatedView.init(diameter:thickness:isOpaque:topColor:bottomColor:);
  v56[1] = v55;
  v58 = v52;
  v59 = v53;

  sub_20C691F38(v57);

  v60 = *&v52[v54];
  v61 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v62 = &v60[OBJC_IVAR____TtC9WorkoutUI24WorkoutCountdownRingView_onCountdownStep];
  swift_beginAccess();
  v63 = *v62;
  *v62 = partial apply for closure #2 in WorkoutCountdownAnimatedView.init(diameter:thickness:isOpaque:topColor:bottomColor:);
  v62[1] = v61;
  v64 = v60;

  sub_20C691F38(v63);

  v65 = *&v52[v54];
  v66 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v67 = &v65[OBJC_IVAR____TtC9WorkoutUI24WorkoutCountdownRingView_onCountdownFadeOut];
  swift_beginAccess();
  v68 = *v67;
  *v67 = partial apply for closure #3 in WorkoutCountdownAnimatedView.init(diameter:thickness:isOpaque:topColor:bottomColor:);
  v67[1] = v66;
  v69 = v65;

  sub_20C691F38(v68);

  v70 = *&v52[v54];
  v71 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v72 = v70;

  v73 = &v72[OBJC_IVAR____TtC9WorkoutUI24WorkoutCountdownRingView_onCountdownWindUp];
  swift_beginAccess();
  v74 = *v73;
  *v73 = partial apply for closure #4 in WorkoutCountdownAnimatedView.init(diameter:thickness:isOpaque:topColor:bottomColor:);
  v73[1] = v71;

  sub_20C691F38(v74);

  v75 = v58;
  v76 = *&v52[v54];
  v77 = v75;
  [v77 addSubview_];
  v78 = OBJC_IVAR____TtC9WorkoutUI28WorkoutCountdownAnimatedView_readyLabel;
  [v77 addSubview_];
  v79 = OBJC_IVAR____TtC9WorkoutUI28WorkoutCountdownAnimatedView_oneLabel;
  [v77 addSubview_];
  v129 = OBJC_IVAR____TtC9WorkoutUI28WorkoutCountdownAnimatedView_twoLabel;
  [v77 addSubview_];
  v131 = OBJC_IVAR____TtC9WorkoutUI28WorkoutCountdownAnimatedView_threeLabel;
  [v77 addSubview_];
  v134 = objc_opt_self();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd);
  v80 = swift_allocObject();
  *(v80 + 16) = xmmword_20CB83930;
  v81 = [*&v77[v78] centerXAnchor];
  v82 = [v77 centerXAnchor];
  v83 = [v81 constraintEqualToAnchor_];

  *(v80 + 32) = v83;
  v84 = [*&v77[v78] centerYAnchor];
  v85 = [v77 centerYAnchor];

  v86 = [v84 constraintEqualToAnchor_];
  *(v80 + 40) = v86;
  v87 = [*&v77[v78] widthAnchor];
  v88 = [v87 constraintEqualToConstant_];

  *(v80 + 48) = v88;
  v89 = [*&v77[v79] centerXAnchor];
  v90 = [v77 centerXAnchor];

  v91 = [v89 constraintEqualToAnchor_];
  *(v80 + 56) = v91;
  v92 = [*&v77[v79] centerYAnchor];
  v93 = [v77 centerYAnchor];

  v94 = [v92 constraintEqualToAnchor_];
  *(v80 + 64) = v94;
  v95 = [*&v77[v129] centerXAnchor];
  v96 = [v77 centerXAnchor];

  v97 = [v95 constraintEqualToAnchor_];
  *(v80 + 72) = v97;
  v98 = [*&v77[v129] centerYAnchor];
  v99 = [v77 centerYAnchor];

  v100 = [v98 constraintEqualToAnchor_];
  *(v80 + 80) = v100;
  v101 = [*&v77[v131] centerXAnchor];
  v102 = [v77 centerXAnchor];

  v103 = [v101 constraintEqualToAnchor_];
  *(v80 + 88) = v103;
  v104 = [*&v77[v131] centerYAnchor];
  v105 = [v77 centerYAnchor];

  v106 = [v104 constraintEqualToAnchor_];
  *(v80 + 96) = v106;
  v107 = [*&v52[v54] leadingAnchor];
  v108 = [v77 leadingAnchor];

  v109 = [v107 &selRef:v108 getCoordinates:? range:? + 5];
  *(v80 + 104) = v109;
  v110 = [*&v52[v54] trailingAnchor];
  v111 = [v77 trailingAnchor];

  v112 = [v110 &selRef:v111 getCoordinates:? range:? + 5];
  *(v80 + 112) = v112;
  v113 = [*&v52[v54] topAnchor];
  v114 = [v77 topAnchor];

  v115 = [v113 &selRef:v114 getCoordinates:? range:? + 5];
  *(v80 + 120) = v115;
  v116 = [*&v52[v54] bottomAnchor];
  v117 = [v77 bottomAnchor];

  v118 = [v116 &selRef:v117 getCoordinates:? range:? + 5];
  *(v80 + 128) = v118;
  v119 = [v77 widthAnchor];

  v120 = [v119 constraintEqualToConstant_];
  *(v80 + 136) = v120;
  v121 = [v77 heightAnchor];

  v122 = [v77 widthAnchor];
  v123 = [v121 &selRef:v122 getCoordinates:? range:? + 5];

  *(v80 + 144) = v123;
  type metadata accessor for NSLayoutConstraint();
  isa = Array._bridgeToObjectiveC()().super.isa;

  [v134 activateConstraints_];

  v125 = swift_allocObject();
  *(v125 + 16) = v77;
  v126 = v77;
  specialized static Spring.animate(animations:)(partial apply for closure #1 in WorkoutCountdownAnimatedView.showNone(), v125);

  [*&v52[v54] setAlpha_];

  return v126;
}

void closure #2 in WorkoutCountdownAnimatedView.init(diameter:thickness:isOpaque:topColor:bottomColor:)(unsigned __int8 *a1)
{
  v1 = *a1;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    if (v1)
    {
      if (v1 == 1)
      {
        WorkoutCountdownAnimatedView.showTwo()();
      }

      else
      {
        WorkoutCountdownAnimatedView.showThree()();
      }
    }

    else
    {
      WorkoutCountdownAnimatedView.showOne()();
    }

    [v3 accessibilityUpdateCountdownToStep_];
    v4 = &v3[OBJC_IVAR____TtC9WorkoutUI28WorkoutCountdownAnimatedView_onCountdownStep];
    swift_beginAccess();
    v5 = *v4;
    if (*v4)
    {
      v6 = v1;

      v5(&v6);

      sub_20C691F38(v5);
    }

    else
    {
    }
  }
}

void closure #1 in WorkoutCountdownAnimatedView.init(diameter:thickness:isOpaque:topColor:bottomColor:)(uint64_t a1, void *a2)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v4 = Strong;
    v5 = (Strong + *a2);
    swift_beginAccess();
    v6 = *v5;
    if (*v5)
    {

      v6(v7);

      sub_20C691F38(v6);
    }

    else
    {
    }
  }
}

void closure #4 in WorkoutCountdownAnimatedView.init(diameter:thickness:isOpaque:topColor:bottomColor:)()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    WorkoutCountdownAnimatedView.showReadyWithDuration(_:)(0.7);
    v2 = &v1[OBJC_IVAR____TtC9WorkoutUI28WorkoutCountdownAnimatedView_onCountdownWindUp];
    swift_beginAccess();
    v3 = *v2;
    if (*v2)
    {

      v3(v4);

      sub_20C691F38(v3);
    }

    else
    {
    }
  }
}

Swift::Void __swiftcall WorkoutCountdownAnimatedView.showReadyWithDuration(_:)(Swift::Double a1)
{
  v3 = *&v1[OBJC_IVAR____TtC9WorkoutUI28WorkoutCountdownAnimatedView_countdownRingView];
  [v3 setOpaque_];
  [v3 setAlpha_];
  v4 = *&v1[OBJC_IVAR____TtC9WorkoutUI28WorkoutCountdownAnimatedView_readyLabel];
  [v4 setHidden_];
  [v4 setAlpha_];
  CGAffineTransformMakeScale(&v14, 0.01, 0.01);
  [v4 setTransform_];
  v5 = swift_allocObject();
  *(v5 + 16) = v1;
  v6 = objc_opt_self();
  *&v14.tx = partial apply for closure #1 in WorkoutCountdownAnimatedView.showReadyWithDuration(_:);
  *&v14.ty = v5;
  *&v14.a = MEMORY[0x277D85DD0];
  *&v14.b = 1107296256;
  *&v14.c = thunk for @escaping @callee_guaranteed () -> ();
  *&v14.d = &block_descriptor_96;
  v7 = _Block_copy(&v14);
  v8 = v1;

  v9 = swift_allocObject();
  *(v9 + 16) = 0;
  *(v9 + 24) = 0;
  *&v14.tx = partial apply for closure #1 in static Spring.animate(tension:friction:animations:completion:);
  *&v14.ty = v9;
  *&v14.a = MEMORY[0x277D85DD0];
  *&v14.b = 1107296256;
  *&v14.c = thunk for @escaping @callee_guaranteed @Sendable (@unowned Bool, @unowned Bool) -> ();
  *&v14.d = &block_descriptor_102_0;
  v10 = _Block_copy(&v14);

  [v6 _animateUsingSpringWithTension_friction_interactive_animations_completion_];
  _Block_release(v10);
  _Block_release(v7);

  v11 = swift_allocObject();
  *(v11 + 16) = v8;
  *&v14.tx = partial apply for closure #2 in WorkoutCountdownAnimatedView.showReadyWithDuration(_:);
  *&v14.ty = v11;
  *&v14.a = MEMORY[0x277D85DD0];
  *&v14.b = 1107296256;
  *&v14.c = thunk for @escaping @callee_guaranteed () -> ();
  *&v14.d = &block_descriptor_108;
  v12 = _Block_copy(&v14);
  v13 = v8;

  [v6 animateWithDuration:0x20000 delay:v12 options:0 animations:a1 - a1 * 0.5 completion:a1 * 0.5];
  _Block_release(v12);
}

void closure #1 in WorkoutCountdownAnimatedView.showThree()(void *a1)
{
  v2 = objc_opt_self();
  v3 = swift_allocObject();
  *(v3 + 16) = a1;
  v16 = partial apply for closure #1 in closure #1 in WorkoutCountdownAnimatedView.showThree();
  v17 = v3;
  v12 = MEMORY[0x277D85DD0];
  v13 = 1107296256;
  v14 = thunk for @escaping @callee_guaranteed () -> ();
  v15 = &block_descriptor_78;
  v4 = _Block_copy(&v12);
  v5 = a1;

  [v2 addKeyframeWithRelativeStartTime:v4 relativeDuration:0.0 animations:0.4];
  _Block_release(v4);
  v6 = swift_allocObject();
  *(v6 + 16) = v5;
  v16 = partial apply for closure #2 in closure #1 in WorkoutCountdownAnimatedView.showThree();
  v17 = v6;
  v12 = MEMORY[0x277D85DD0];
  v13 = 1107296256;
  v14 = thunk for @escaping @callee_guaranteed () -> ();
  v15 = &block_descriptor_84;
  v7 = _Block_copy(&v12);
  v8 = v5;

  [v2 addKeyframeWithRelativeStartTime:v7 relativeDuration:0.4 animations:0.3];
  _Block_release(v7);
  v9 = swift_allocObject();
  *(v9 + 16) = v8;
  v16 = partial apply for closure #3 in closure #1 in WorkoutCountdownAnimatedView.showThree();
  v17 = v9;
  v12 = MEMORY[0x277D85DD0];
  v13 = 1107296256;
  v14 = thunk for @escaping @callee_guaranteed () -> ();
  v15 = &block_descriptor_90;
  v10 = _Block_copy(&v12);
  v11 = v8;

  [v2 addKeyframeWithRelativeStartTime:v10 relativeDuration:0.7 animations:0.3];
  _Block_release(v10);
}

void closure #1 in WorkoutCountdownAnimatedView.showTwo()(void *a1)
{
  v2 = objc_opt_self();
  v3 = swift_allocObject();
  *(v3 + 16) = a1;
  v16 = partial apply for closure #1 in closure #1 in WorkoutCountdownAnimatedView.showTwo();
  v17 = v3;
  v12 = MEMORY[0x277D85DD0];
  v13 = 1107296256;
  v14 = thunk for @escaping @callee_guaranteed () -> ();
  v15 = &block_descriptor_54_0;
  v4 = _Block_copy(&v12);
  v5 = a1;

  [v2 addKeyframeWithRelativeStartTime:v4 relativeDuration:0.0 animations:0.4];
  _Block_release(v4);
  v6 = swift_allocObject();
  *(v6 + 16) = v5;
  v16 = partial apply for closure #2 in closure #1 in WorkoutCountdownAnimatedView.showTwo();
  v17 = v6;
  v12 = MEMORY[0x277D85DD0];
  v13 = 1107296256;
  v14 = thunk for @escaping @callee_guaranteed () -> ();
  v15 = &block_descriptor_60_0;
  v7 = _Block_copy(&v12);
  v8 = v5;

  [v2 addKeyframeWithRelativeStartTime:v7 relativeDuration:0.4 animations:0.3];
  _Block_release(v7);
  v9 = swift_allocObject();
  *(v9 + 16) = v8;
  v16 = partial apply for closure #3 in closure #1 in WorkoutCountdownAnimatedView.showTwo();
  v17 = v9;
  v12 = MEMORY[0x277D85DD0];
  v13 = 1107296256;
  v14 = thunk for @escaping @callee_guaranteed () -> ();
  v15 = &block_descriptor_66;
  v10 = _Block_copy(&v12);
  v11 = v8;

  [v2 addKeyframeWithRelativeStartTime:v10 relativeDuration:0.7 animations:0.3];
  _Block_release(v10);
}

void WorkoutCountdownAnimatedView.showThree()(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = *&v4[*a1];
  CGAffineTransformMakeScale(&v12, 0.01, 0.01);
  [v7 setTransform_];
  [v7 setAlpha_];
  [v7 setHidden_];
  v8 = objc_opt_self();
  v9 = swift_allocObject();
  *(v9 + 16) = v4;
  *&v12.tx = a3;
  *&v12.ty = v9;
  *&v12.a = MEMORY[0x277D85DD0];
  *&v12.b = 1107296256;
  *&v12.c = thunk for @escaping @callee_guaranteed () -> ();
  *&v12.d = a4;
  v10 = _Block_copy(&v12);
  v11 = v4;

  [v8 animateKeyframesWithDuration:0 delay:v10 options:0 animations:0.35 completion:0.0];
  _Block_release(v10);
}

void closure #1 in WorkoutCountdownAnimatedView.showOne()(void *a1)
{
  v2 = objc_opt_self();
  v3 = swift_allocObject();
  *(v3 + 16) = a1;
  v16 = partial apply for closure #1 in closure #1 in WorkoutCountdownAnimatedView.showOne();
  v17 = v3;
  v12 = MEMORY[0x277D85DD0];
  v13 = 1107296256;
  v14 = thunk for @escaping @callee_guaranteed () -> ();
  v15 = &block_descriptor_30_1;
  v4 = _Block_copy(&v12);
  v5 = a1;

  [v2 addKeyframeWithRelativeStartTime:v4 relativeDuration:0.0 animations:0.4];
  _Block_release(v4);
  v6 = swift_allocObject();
  *(v6 + 16) = v5;
  v16 = partial apply for closure #2 in closure #1 in WorkoutCountdownAnimatedView.showOne();
  v17 = v6;
  v12 = MEMORY[0x277D85DD0];
  v13 = 1107296256;
  v14 = thunk for @escaping @callee_guaranteed () -> ();
  v15 = &block_descriptor_36;
  v7 = _Block_copy(&v12);
  v8 = v5;

  [v2 addKeyframeWithRelativeStartTime:v7 relativeDuration:0.4 animations:0.3];
  _Block_release(v7);
  v9 = swift_allocObject();
  *(v9 + 16) = v8;
  v16 = partial apply for closure #3 in closure #1 in WorkoutCountdownAnimatedView.showOne();
  v17 = v9;
  v12 = MEMORY[0x277D85DD0];
  v13 = 1107296256;
  v14 = thunk for @escaping @callee_guaranteed () -> ();
  v15 = &block_descriptor_42;
  v10 = _Block_copy(&v12);
  v11 = v8;

  [v2 addKeyframeWithRelativeStartTime:v10 relativeDuration:0.7 animations:0.3];
  _Block_release(v10);
}

id closure #1 in closure #1 in WorkoutCountdownAnimatedView.showThree()(uint64_t a1, void *a2, CGFloat a3, double a4)
{
  v5 = *(a1 + *a2);
  CGAffineTransformMakeScale(&v7, a3, a3);
  [v5 setTransform_];
  return [v5 setAlpha_];
}

id closure #1 in WorkoutCountdownAnimatedView.showNone()(uint64_t a1)
{
  v2 = *(a1 + OBJC_IVAR____TtC9WorkoutUI28WorkoutCountdownAnimatedView_readyLabel);
  CGAffineTransformMakeScale(&v7, 0.01, 0.01);
  [v2 setTransform_];
  [v2 setAlpha_];
  v3 = *(a1 + OBJC_IVAR____TtC9WorkoutUI28WorkoutCountdownAnimatedView_oneLabel);
  CGAffineTransformMakeScale(&v7, 0.01, 0.01);
  [v3 setTransform_];
  [v3 setAlpha_];
  v4 = *(a1 + OBJC_IVAR____TtC9WorkoutUI28WorkoutCountdownAnimatedView_twoLabel);
  CGAffineTransformMakeScale(&v7, 0.01, 0.01);
  [v4 setTransform_];
  [v4 setAlpha_];
  v5 = *(a1 + OBJC_IVAR____TtC9WorkoutUI28WorkoutCountdownAnimatedView_threeLabel);
  CGAffineTransformMakeScale(&v7, 0.01, 0.01);
  [v5 setTransform_];
  return [v5 setAlpha_];
}

id WorkoutCountdownAnimatedView.__allocating_init(frame:)(double a1, double a2, double a3, double a4)
{
  v9 = objc_allocWithZone(v4);

  return [v9 initWithFrame_];
}

id WorkoutCountdownAnimatedView.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for WorkoutCountdownAnimatedView();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t thunk for @escaping @callee_guaranteed @Sendable (@unowned Bool, @unowned Bool) -> ()(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a1 + 32);

  v5(a2, a3);
}

void specialized static Spring.animate(animations:)(uint64_t (*a1)(), uint64_t a2)
{
  v4 = objc_opt_self();
  v12 = a1;
  v13 = a2;
  v8 = MEMORY[0x277D85DD0];
  v9 = 1107296256;
  v10 = thunk for @escaping @callee_guaranteed () -> ();
  v11 = &block_descriptor_139_0;
  v5 = _Block_copy(&v8);

  v6 = swift_allocObject();
  *(v6 + 16) = 0;
  *(v6 + 24) = 0;
  v12 = closure #1 in static Spring.animate(tension:friction:animations:completion:)partial apply;
  v13 = v6;
  v8 = MEMORY[0x277D85DD0];
  v9 = 1107296256;
  v10 = thunk for @escaping @callee_guaranteed @Sendable (@unowned Bool, @unowned Bool) -> ();
  v11 = &block_descriptor_146;
  v7 = _Block_copy(&v8);

  [v4 _animateUsingSpringWithTension_friction_interactive_animations_completion_];
  _Block_release(v7);
  _Block_release(v5);
}

uint64_t block_copy_helper_32(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

id partial apply for closure #3 in closure #1 in WorkoutCountdownAnimatedView.showOne()(void *a1)
{
  v2 = *(*(v1 + 16) + *a1);
  v4[0] = 0x3FF0000000000000;
  v4[1] = 0;
  v4[2] = 0;
  v4[3] = 0x3FF0000000000000;
  v4[4] = 0;
  v4[5] = 0;
  return [v2 setTransform_];
}

void specialized WorkoutCountdownAnimatedView.init(coder:)()
{
  v1 = (v0 + OBJC_IVAR____TtC9WorkoutUI28WorkoutCountdownAnimatedView_onCountdownStep);
  *v1 = 0;
  v1[1] = 0;
  v2 = (v0 + OBJC_IVAR____TtC9WorkoutUI28WorkoutCountdownAnimatedView_onCountdownWindUp);
  *v2 = 0;
  v2[1] = 0;
  v3 = (v0 + OBJC_IVAR____TtC9WorkoutUI28WorkoutCountdownAnimatedView_onCountdownFadeOut);
  *v3 = 0;
  v3[1] = 0;
  v4 = (v0 + OBJC_IVAR____TtC9WorkoutUI28WorkoutCountdownAnimatedView_onCountdownCompleted);
  *v4 = 0;
  v4[1] = 0;
  v5 = OBJC_IVAR____TtC9WorkoutUI28WorkoutCountdownAnimatedView_readyLabel;
  v6 = [objc_allocWithZone(MEMORY[0x277D756B8]) initWithFrame_];
  if (one-time initialization token for readyFont != -1)
  {
    swift_once();
  }

  [v6 setFont_];
  [v6 setTextAlignment_];
  v7 = objc_opt_self();
  v8 = [v7 labelColor];
  [v6 setTextColor_];

  if (one-time initialization token for WorkoutUIBundle != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v9 = WorkoutUIBundle.super.isa;
  v43._object = 0xE000000000000000;
  v10._countAndFlagsBits = 0x574F44544E554F43;
  v10._object = 0xEF59444145525F4ELL;
  v11.value._countAndFlagsBits = 0x617A696C61636F4CLL;
  v11.value._object = 0xEB00000000656C62;
  v12._countAndFlagsBits = 0;
  v12._object = 0xE000000000000000;
  v43._countAndFlagsBits = 0;
  v13 = NSLocalizedString(_:tableName:bundle:value:comment:)(v10, v11, v9, v12, v43);

  v14 = MEMORY[0x20F30BAD0](v13._countAndFlagsBits, v13._object);
  [v6 setText_];

  [v6 setMinimumScaleFactor_];
  [v6 setAdjustsFontSizeToFitWidth_];
  [v6 setTranslatesAutoresizingMaskIntoConstraints_];
  *(v0 + v5) = v6;
  v15 = OBJC_IVAR____TtC9WorkoutUI28WorkoutCountdownAnimatedView_oneLabel;
  v16 = [objc_allocWithZone(MEMORY[0x277D756B8]) initWithFrame_];
  if (one-time initialization token for numberFont != -1)
  {
    swift_once();
  }

  v42 = static WorkoutCountdownAnimatedView.Layout.numberFont;
  [v16 setFont_];
  [v16 setTextAlignment_];
  v17 = v7;
  v18 = [v7 labelColor];
  [v16 setTextColor_];

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys7CVarArg_pGMd);
  v19 = swift_allocObject();
  v20 = MEMORY[0x277D83B88];
  *(v19 + 16) = xmmword_20CB5DA70;
  v21 = MEMORY[0x277D83C10];
  *(v19 + 56) = v20;
  *(v19 + 64) = v21;
  *(v19 + 32) = 1;
  v22 = static String.localizedStringWithFormat(_:_:)();
  v24 = v23;

  v25 = MEMORY[0x20F30BAD0](v22, v24);
  [v16 setText_];

  [v16 setTranslatesAutoresizingMaskIntoConstraints_];
  *(v0 + v15) = v16;
  v26 = OBJC_IVAR____TtC9WorkoutUI28WorkoutCountdownAnimatedView_twoLabel;
  v27 = [objc_allocWithZone(MEMORY[0x277D756B8]) initWithFrame_];
  [v27 &selRef:v42 dictionaryForKey:?];
  [v27 setTextAlignment_];
  v28 = [v17 labelColor];
  [v27 setTextColor_];

  v29 = swift_allocObject();
  *(v29 + 16) = xmmword_20CB5DA70;
  *(v29 + 56) = MEMORY[0x277D83B88];
  *(v29 + 64) = MEMORY[0x277D83C10];
  *(v29 + 32) = 2;
  v30 = static String.localizedStringWithFormat(_:_:)();
  v32 = v31;

  v33 = MEMORY[0x20F30BAD0](v30, v32);
  [v27 setText_];

  [v27 setTranslatesAutoresizingMaskIntoConstraints_];
  *(v0 + v26) = v27;
  v34 = OBJC_IVAR____TtC9WorkoutUI28WorkoutCountdownAnimatedView_threeLabel;
  v35 = [objc_allocWithZone(MEMORY[0x277D756B8]) initWithFrame_];
  [v35 setFont_];
  [v35 setTextAlignment_];
  v36 = [v17 labelColor];
  [v35 setTextColor_];

  v37 = swift_allocObject();
  *(v37 + 16) = xmmword_20CB5DA70;
  *(v37 + 56) = MEMORY[0x277D83B88];
  *(v37 + 64) = MEMORY[0x277D83C10];
  *(v37 + 32) = 3;
  v38 = static String.localizedStringWithFormat(_:_:)();
  v40 = v39;

  v41 = MEMORY[0x20F30BAD0](v38, v40);
  [v35 setText_];

  [v35 setTranslatesAutoresizingMaskIntoConstraints_];
  *(v0 + v34) = v35;
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

uint64_t objectdestroy_98Tm()
{
  if (*(v0 + 16))
  {
  }

  return swift_deallocObject();
}

uint64_t partial apply for closure #1 in static Spring.animate(tension:friction:animations:completion:)()
{
  v1 = *(v0 + 16);
  if (v1)
  {
    return v1();
  }

  return result;
}

id MockWorkoutGenerator.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id MockWorkoutGenerator.init()()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for MockWorkoutGenerator();
  return objc_msgSendSuper2(&v2, sel_init);
}

id MockWorkoutGenerator.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for MockWorkoutGenerator();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t specialized thunk for @escaping @callee_guaranteed (@in_guaranteed A, @in_guaranteed B) -> (@out A, @out B)@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  outlined init with copy of Any((a1 + 2), (a2 + 2));
  *a2 = v4;
  a2[1] = v3;
}

uint64_t specialized LazyMapSequence.Iterator.next()@<X0>(_OWORD *a1@<X8>)
{
  v3 = *v1;
  v4 = v1[1];
  v6 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  if (v7)
  {
    v8 = v1[3];
LABEL_10:
    v12 = (v7 - 1) & v7;
    v13 = __clz(__rbit64(v7)) | (v8 << 6);
    v14 = (*(v3 + 48) + 16 * v13);
    v16 = *v14;
    v15 = v14[1];
    outlined init with copy of Any(*(v3 + 56) + 32 * v13, v21);
    *&v22 = v16;
    *(&v22 + 1) = v15;
    outlined init with take of Any(v21, &v23);

    v18 = *(&v22 + 1);
    v19 = v22;
    v11 = v8;
LABEL_11:
    *v1 = v3;
    v1[1] = v4;
    v1[2] = v6;
    v1[3] = v11;
    v1[4] = v12;
    if (v18)
    {
      v20 = v1[5];
      *&v21[0] = v19;
      *(&v21[0] + 1) = v18;
      v21[1] = v23;
      v21[2] = v24;
      v20(v21);
      return outlined destroy of (key: String, value: Any)(v21);
    }

    else
    {
      a1[1] = 0u;
      a1[2] = 0u;
      *a1 = 0u;
    }
  }

  else
  {
    v9 = (v6 + 64) >> 6;
    if (v9 <= v5 + 1)
    {
      v10 = v5 + 1;
    }

    else
    {
      v10 = (v6 + 64) >> 6;
    }

    v11 = v10 - 1;
    while (1)
    {
      v8 = v5 + 1;
      if (__OFADD__(v5, 1))
      {
        break;
      }

      if (v8 >= v9)
      {
        v18 = 0;
        v19 = 0;
        v12 = 0;
        v23 = 0u;
        v24 = 0u;
        v22 = 0u;
        goto LABEL_11;
      }

      v7 = *(v4 + 8 * v8);
      ++v5;
      if (v7)
      {
        goto LABEL_10;
      }
    }

    __break(1u);
  }

  return result;
}

id specialized static MockWorkoutGenerator.defaultOutdoorRun(goalType:)(uint64_t a1)
{
  v1 = [objc_opt_self() defaultOutdoorRunWithGoalType_];
  v2 = [v1 metadata];
  v3 = MEMORY[0x277D84F98];
  if (v2)
  {
    v4 = v2;
    v5 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();
  }

  else
  {
    v5 = MEMORY[0x277D84F98];
  }

  type metadata accessor for GoalWorkoutConfiguration();
  v6 = MEMORY[0x20F303500]();
  v7 = WorkoutConfiguration.metadata()();
  if (v7)
  {
    v3 = v7;
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v11 = v5;
  specialized _NativeDictionary.merge<A>(_:isUnique:uniquingKeysWith:)(v3, specialized thunk for @escaping @callee_guaranteed (@in_guaranteed A, @in_guaranteed B) -> (@out A, @out B), 0, isUniquelyReferenced_nonNull_native, &v11);

  isa = Dictionary._bridgeToObjectiveC()().super.isa;

  [v1 _setMetadata_];

  return v1;
}

unint64_t specialized _NativeDictionary.merge<A>(_:isUnique:uniquingKeysWith:)(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t *a5)
{
  v7 = -1 << *(a1 + 32);
  v8 = ~v7;
  v9 = *(a1 + 64);
  v10 = -v7;
  v48 = a1;
  v49 = a1 + 64;
  if (v10 < 64)
  {
    v11 = ~(-1 << v10);
  }

  else
  {
    v11 = -1;
  }

  v50 = v8;
  v51 = 0;
  v52 = v11 & v9;
  v53 = a2;
  v54 = a3;

  specialized LazyMapSequence.Iterator.next()(&v46);
  v12 = *(&v46 + 1);
  if (!*(&v46 + 1))
  {
    goto LABEL_25;
  }

  v13 = v46;
  outlined init with take of Any(v47, v45);
  v14 = *a5;
  result = specialized __RawDictionaryStorage.find<A>(_:)(v13, v12);
  v17 = *(v14 + 16);
  v18 = (v16 & 1) == 0;
  v19 = __OFADD__(v17, v18);
  v20 = v17 + v18;
  if (v19)
  {
LABEL_26:
    __break(1u);
    goto LABEL_27;
  }

  v21 = v16;
  if (*(v14 + 24) < v20)
  {
    specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v20, a4 & 1);
    result = specialized __RawDictionaryStorage.find<A>(_:)(v13, v12);
    if ((v21 & 1) == (v22 & 1))
    {
      goto LABEL_10;
    }

LABEL_8:
    result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
  }

  if ((a4 & 1) == 0)
  {
    v26 = result;
    specialized _NativeDictionary.copy()();
    result = v26;
    if (v21)
    {
      goto LABEL_11;
    }

    goto LABEL_13;
  }

LABEL_10:
  if (v21)
  {
LABEL_11:
    v23 = *a5;
    v24 = 32 * result;
    outlined init with copy of Any(*(*a5 + 56) + 32 * result, v44);
    __swift_destroy_boxed_opaque_existential_0(v45);

    v25 = *(v23 + 56);
    __swift_destroy_boxed_opaque_existential_0(v25 + v24);
    outlined init with take of Any(v44, (v25 + v24));
    goto LABEL_15;
  }

LABEL_13:
  v27 = *a5;
  *(*a5 + 8 * (result >> 6) + 64) |= 1 << result;
  v28 = (v27[6] + 16 * result);
  *v28 = v13;
  v28[1] = v12;
  result = outlined init with take of Any(v45, (v27[7] + 32 * result));
  v29 = v27[2];
  v19 = __OFADD__(v29, 1);
  v30 = v29 + 1;
  if (!v19)
  {
    v27[2] = v30;
LABEL_15:
    specialized LazyMapSequence.Iterator.next()(&v46);
    v12 = *(&v46 + 1);
    if (*(&v46 + 1))
    {
      v21 = 1;
      do
      {
        v13 = v46;
        outlined init with take of Any(v47, v45);
        v34 = *a5;
        result = specialized __RawDictionaryStorage.find<A>(_:)(v13, v12);
        v36 = *(v34 + 16);
        v37 = (v35 & 1) == 0;
        v19 = __OFADD__(v36, v37);
        v38 = v36 + v37;
        if (v19)
        {
          goto LABEL_26;
        }

        a4 = v35;
        if (*(v34 + 24) < v38)
        {
          specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v38, 1);
          result = specialized __RawDictionaryStorage.find<A>(_:)(v13, v12);
          if ((a4 & 1) != (v39 & 1))
          {
            goto LABEL_8;
          }
        }

        if (a4)
        {
          v31 = *a5;
          v32 = 32 * result;
          outlined init with copy of Any(*(*a5 + 56) + 32 * result, v44);
          __swift_destroy_boxed_opaque_existential_0(v45);

          v33 = *(v31 + 56);
          __swift_destroy_boxed_opaque_existential_0(v33 + v32);
          outlined init with take of Any(v44, (v33 + v32));
        }

        else
        {
          v40 = *a5;
          *(*a5 + 8 * (result >> 6) + 64) |= 1 << result;
          v41 = (v40[6] + 16 * result);
          *v41 = v13;
          v41[1] = v12;
          result = outlined init with take of Any(v45, (v40[7] + 32 * result));
          v42 = v40[2];
          v19 = __OFADD__(v42, 1);
          v43 = v42 + 1;
          if (v19)
          {
            goto LABEL_27;
          }

          v40[2] = v43;
        }

        specialized LazyMapSequence.Iterator.next()(&v46);
        v12 = *(&v46 + 1);
      }

      while (*(&v46 + 1));
    }

LABEL_25:
    outlined consume of [String : Any].Iterator._Variant();
  }

LABEL_27:
  __break(1u);
  return result;
}

id specialized static MockWorkoutGenerator.defaultIncompleteRaceRoute()()
{
  v0 = [objc_opt_self() defaultOutdoorRunWithGoalType_];
  v1 = [v0 metadata];
  v2 = MEMORY[0x277D84F98];
  if (v1)
  {
    v3 = v1;
    v4 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();
  }

  else
  {
    v4 = MEMORY[0x277D84F98];
  }

  type metadata accessor for RaceWorkoutConfiguration();
  v5 = MEMORY[0x20F303820]();
  v6 = WorkoutConfiguration.metadata()();
  if (v6)
  {
    v2 = v6;
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v10 = v4;
  specialized _NativeDictionary.merge<A>(_:isUnique:uniquingKeysWith:)(v2, specialized thunk for @escaping @callee_guaranteed (@in_guaranteed A, @in_guaranteed B) -> (@out A, @out B), 0, isUniquelyReferenced_nonNull_native, &v10);

  isa = Dictionary._bridgeToObjectiveC()().super.isa;

  [v0 _setMetadata_];

  return v0;
}

uint64_t outlined destroy of (key: String, value: Any)(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSS3key_yp5valuetMd);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

WorkoutUI::TrainingLoadDayWidget __swiftcall TrainingLoadDayWidget.init(healthStore:)(HKHealthStore healthStore)
{
  v1->super.isa = 0xD000000000000015;
  v1[1].super.isa = 0x800000020CB83990;
  v1[2].super.isa = healthStore.super.isa;
  result.kind._countAndFlagsBits = healthStore.super.isa;
  return result;
}

WorkoutUI::TrainingLoadDayWidget __swiftcall TrainingLoadDayWidget.init()()
{
  v1 = v0;
  *v0 = 0xD000000000000015;
  v0[1] = 0x800000020CB83990;
  v2 = [objc_allocWithZone(MEMORY[0x277CCD4D8]) init];
  v1[2] = v2;
  result.healthStore.super.isa = v4;
  result.kind._object = v3;
  result.kind._countAndFlagsBits = v2;
  return result;
}

uint64_t TrainingLoadDayWidget.body.getter@<X0>(uint64_t a1@<X8>)
{
  v63 = a1;
  v53 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9WidgetKit19StaticConfigurationVy9WorkoutUI015TrainingLoadDayA9EntryViewVGMd);
  v50 = *(v53 - 8);
  MEMORY[0x28223BE20](v53);
  v3 = &v50 - v2;
  v56 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI19WidgetConfigurationP0C3KitE24configurationDisplayNameyQrqd__SyRd__lFQOyAD06StaticD0Vy07WorkoutB0015TrainingLoadDayC9EntryViewVG_SSQo_Md);
  v54 = *(v56 - 8);
  MEMORY[0x28223BE20](v56);
  v5 = &v50 - v4;
  v57 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI19WidgetConfigurationP0C3KitE11descriptionyQrqd__SyRd__lFQOyAcDE24configurationDisplayNameyQrqd__SyRd__lFQOyAD06StaticD0Vy07WorkoutB0015TrainingLoadDayC9EntryViewVG_SSQo__SSQo_Md);
  v55 = *(v57 - 8);
  MEMORY[0x28223BE20](v57);
  v52 = &v50 - v6;
  v60 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI19WidgetConfigurationP0C3KitE33enableContentMarginsForFirstPartyyQrSbFQOyAcDE11descriptionyQrqd__SyRd__lFQOyAcDE24configurationDisplayNameyQrqd__SyRd__lFQOyAD06StaticD0Vy07WorkoutB0015TrainingLoadDayC9EntryViewVG_SSQo__SSQo__Qo_Md);
  v58 = *(v60 - 8);
  MEMORY[0x28223BE20](v60);
  v51 = &v50 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI19WidgetConfigurationP0C3KitE17supportedFamiliesyQrSayAD0C6FamilyOGFQOyAcDE33enableContentMarginsForFirstPartyyQrSbFQOyAcDE11descriptionyQrqd__SyRd__lFQOyAcDE24configurationDisplayNameyQrqd__SyRd__lFQOyAD06StaticD0Vy07WorkoutB0015TrainingLoadDayC9EntryViewVG_SSQo__SSQo__Qo__Qo_Md);
  v61 = *(v8 - 8);
  v62 = v8;
  MEMORY[0x28223BE20](v8);
  v59 = &v50 - v9;
  v64._countAndFlagsBits = *(v1 + 16);
  countAndFlagsBits = v64._countAndFlagsBits;
  type metadata accessor for TrainingLoadDayWidgetEntryView();
  lazy protocol witness table accessor for type TrainingLoadDayWidgetEntryView and conformance TrainingLoadDayWidgetEntryView();
  lazy protocol witness table accessor for type TrainingLoadWidgetTimelineProvider and conformance TrainingLoadWidgetTimelineProvider();

  v11 = countAndFlagsBits;
  StaticConfiguration.init<A>(kind:provider:content:)();
  if (one-time initialization token for WorkoutUIBundle != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v12 = WorkoutUIBundle.super.isa;
  v68._object = 0xE000000000000000;
  v13.value._countAndFlagsBits = 0x617A696C61636F4CLL;
  v13.value._object = 0xEB00000000656C62;
  v14._countAndFlagsBits = 0xD00000000000001ALL;
  v14._object = 0x800000020CB9BD90;
  v15._countAndFlagsBits = 0;
  v15._object = 0xE000000000000000;
  v68._countAndFlagsBits = 0;
  v16 = NSLocalizedString(_:tableName:bundle:value:comment:)(v14, v13, v12, v15, v68);

  v64 = v16;
  DayWidgetEntry = lazy protocol witness table accessor for type StaticConfiguration<TrainingLoadDayWidgetEntryView> and conformance StaticConfiguration<A>();
  v18 = lazy protocol witness table accessor for type String and conformance String();
  v19 = MEMORY[0x277D837D0];
  v20 = v53;
  WidgetConfiguration.configurationDisplayName<A>(_:)();

  (*(v50 + 8))(v3, v20);
  v21 = WorkoutUIBundle.super.isa;
  v69._object = 0xE000000000000000;
  v22._countAndFlagsBits = 0xD000000000000020;
  v22._object = 0x800000020CBA1170;
  v23.value._countAndFlagsBits = 0x617A696C61636F4CLL;
  v23.value._object = 0xEB00000000656C62;
  v24._countAndFlagsBits = 0;
  v24._object = 0xE000000000000000;
  v69._countAndFlagsBits = 0;
  v25 = NSLocalizedString(_:tableName:bundle:value:comment:)(v22, v23, v21, v24, v69);

  v67 = v25;
  v64._countAndFlagsBits = v20;
  v64._object = v19;
  v65 = DayWidgetEntry;
  v66 = v18;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v27 = v52;
  v28 = v56;
  WidgetConfiguration.description<A>(_:)();

  (*(v54 + 8))(v5, v28);
  v64._countAndFlagsBits = v28;
  v64._object = v19;
  v65 = OpaqueTypeConformance2;
  v66 = v18;
  v29 = swift_getOpaqueTypeConformance2();
  v30 = v51;
  v31 = v57;
  WidgetConfiguration.enableContentMarginsForFirstParty(_:)();
  (*(v55 + 8))(v27, v31);
  v32 = FIIsTinkerVegaOrFitnessJunior();
  v33 = MEMORY[0x277CE3B68];
  if ((v32 & 1) != 0 || (v34 = MEMORY[0x20F30BAD0](0xD000000000000011, 0x800000020CBA11A0), v35 = MGGetSInt32Answer(), v34, v35 == 3))
  {
    v36 = v33;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy9WidgetKit0D6FamilyOGMd);
    v37 = type metadata accessor for WidgetFamily();
    v38 = *(v37 - 8);
    v39 = (*(v38 + 80) + 32) & ~*(v38 + 80);
    v40 = swift_allocObject();
    *(v40 + 16) = xmmword_20CB5DA70;
    v36 = v33;
    (*(v38 + 104))(v40 + v39, *v33, v37);
  }

  v64._countAndFlagsBits = v31;
  v64._object = v29;
  v41 = swift_getOpaqueTypeConformance2();
  v42 = v59;
  v43 = v60;
  WidgetConfiguration.supportedFamilies(_:)();

  (*(v58 + 8))(v30, v43);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy9WidgetKit0D8LocationVGMd);
  type metadata accessor for WidgetLocation();
  *(swift_allocObject() + 16) = xmmword_20CB5DA80;
  MEMORY[0x20F30B920]();
  static WidgetLocation.carPlay.getter();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy9WidgetKit0D6FamilyOGMd);
  v44 = type metadata accessor for WidgetFamily();
  v45 = *(v44 - 8);
  v46 = (*(v45 + 80) + 32) & ~*(v45 + 80);
  v47 = swift_allocObject();
  *(v47 + 16) = xmmword_20CB5DA70;
  (*(v45 + 104))(v47 + v46, *v36, v44);
  v64._countAndFlagsBits = v43;
  v64._object = v41;
  swift_getOpaqueTypeConformance2();
  v48 = v62;
  WidgetConfiguration.disfavoredLocations(_:for:)();

  return (*(v61 + 8))(v42, v48);
}

uint64_t closure #1 in TrainingLoadDayWidget.body.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  outlined init with copy of TrainingLoadDayEntry(a1, a2);
  KeyPath = swift_getKeyPath();
  *(a2 + *(type metadata accessor for TrainingLoadDayWidgetEntryView() + 20)) = KeyPath;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI11EnvironmentV7ContentOy9WidgetKit0E6FamilyO_GMd);

  return swift_storeEnumTagMultiPayload();
}

unint64_t lazy protocol witness table accessor for type TrainingLoadDayWidgetEntryView and conformance TrainingLoadDayWidgetEntryView()
{
  result = lazy protocol witness table cache variable for type TrainingLoadDayWidgetEntryView and conformance TrainingLoadDayWidgetEntryView;
  if (!lazy protocol witness table cache variable for type TrainingLoadDayWidgetEntryView and conformance TrainingLoadDayWidgetEntryView)
  {
    type metadata accessor for TrainingLoadDayWidgetEntryView();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type TrainingLoadDayWidgetEntryView and conformance TrainingLoadDayWidgetEntryView);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type TrainingLoadWidgetTimelineProvider and conformance TrainingLoadWidgetTimelineProvider()
{
  result = lazy protocol witness table cache variable for type TrainingLoadWidgetTimelineProvider and conformance TrainingLoadWidgetTimelineProvider;
  if (!lazy protocol witness table cache variable for type TrainingLoadWidgetTimelineProvider and conformance TrainingLoadWidgetTimelineProvider)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type TrainingLoadWidgetTimelineProvider and conformance TrainingLoadWidgetTimelineProvider);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type StaticConfiguration<TrainingLoadDayWidgetEntryView> and conformance StaticConfiguration<A>()
{
  result = lazy protocol witness table cache variable for type StaticConfiguration<TrainingLoadDayWidgetEntryView> and conformance StaticConfiguration<A>;
  if (!lazy protocol witness table cache variable for type StaticConfiguration<TrainingLoadDayWidgetEntryView> and conformance StaticConfiguration<A>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s9WidgetKit19StaticConfigurationVy9WorkoutUI015TrainingLoadDayA9EntryViewVGMd);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type StaticConfiguration<TrainingLoadDayWidgetEntryView> and conformance StaticConfiguration<A>);
  }

  return result;
}

id protocol witness for Widget.init() in conformance TrainingLoadDayWidget@<X0>(void *a1@<X8>)
{
  *a1 = 0xD000000000000015;
  a1[1] = 0x800000020CB83990;
  result = [objc_allocWithZone(MEMORY[0x277CCD4D8]) init];
  a1[2] = result;
  return result;
}

uint64_t getEnumTagSinglePayload for TrainingLoadDayWidget(uint64_t a1, int a2)
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

uint64_t storeEnumTagSinglePayload for TrainingLoadDayWidget(uint64_t result, int a2, int a3)
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

uint64_t WorkoutConfigurationView.dismiss.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = type metadata accessor for EnvironmentValues();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI11EnvironmentV7ContentOyAA13DismissActionV_GMd);
  MEMORY[0x28223BE20](v7);
  v9 = &v14 - v8;
  v10 = type metadata accessor for WorkoutConfigurationView();
  outlined init with copy of Environment<DismissAction>.Content(v1 + *(v10 + 36), v9);
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

id WorkoutConfigurationView.init(workoutConfiguration:formattingManager:showAddButton:showStartWorkoutButton:overrideSaveWorkoutAction:startWorkoutAction:overrideDismissAction:referenceIntervalWorkoutConfiguration:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char a3@<W2>, char a4@<W3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10, uint64_t a11, uint64_t a12)
{
  specialized static PairedDeviceUtilities.deviceIsPaired.getter();
  State.init(wrappedValue:)();
  *(a9 + 24) = v29;
  *(a9 + 32) = v30;
  v16 = type metadata accessor for WorkoutConfigurationView();
  v17 = v16[9];
  *(a9 + v17) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI11EnvironmentV7ContentOyAA13DismissActionV_GMd);
  swift_storeEnumTagMultiPayload();
  v18 = (a9 + v16[10]);
  v19 = (a9 + v16[11]);
  v20 = v16[13];
  v21 = (a9 + v16[12]);
  v22 = v16[14];
  result = [objc_allocWithZone(MEMORY[0x277CCD4D8]) init];
  *(a9 + v22) = result;
  *a9 = a1;
  *(a9 + 8) = a2;
  *(a9 + 16) = a3;
  *(a9 + 17) = a4;
  *v18 = a5;
  v18[1] = a6;
  *v19 = a7;
  v19[1] = a8;
  *v21 = a10;
  v21[1] = a11;
  *(a9 + v20) = a12;
  return result;
}

uint64_t WorkoutConfigurationView.body.getter()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI5GroupVy07WorkoutB00D20ConfigurationViewIOSVyAA19_ConditionalContentVyAHyAD012EmbeddedGoaleF0VAD0j8IntervaleF0VGAHyAD0j5PacereF0VAD0j10MultiSporteF0VGGSgGGMd);
  MEMORY[0x28223BE20](v1);
  v3 = &v5[-v2];
  closure #1 in WorkoutConfigurationView.body.getter(v0, &v5[-v2]);
  v6 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI19TupleToolbarContentVyAA0dE7BuilderV10buildBlockyQrxAA0dE0RzlFZQOy_AA0D4ItemVyytAA08ModifiedE0VyAA6ButtonVyAA5ImageVGAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGGQo_Sg_AeFyQrxAaGRzlFZQOy_AIyytAKyAMyAA4TextVGAVGGQo_SgtGMd);
  lazy protocol witness table accessor for type Group<WorkoutConfigurationViewIOS<_ConditionalContent<_ConditionalContent<EmbeddedGoalConfigurationView, EmbeddedIntervalConfigurationView>, _ConditionalContent<EmbeddedPacerConfigurationView, EmbeddedMultiSportConfigurationView>>?>> and conformance <A> Group<A>();
  lazy protocol witness table accessor for type WorkoutConfigurationViewIOS<_ConditionalContent<_ConditionalContent<EmbeddedGoalConfigurationView, EmbeddedIntervalConfigurationView>, _ConditionalContent<EmbeddedPacerConfigurationView, EmbeddedMultiSportConfigurationView>>?> and conformance WorkoutConfigurationViewIOS<A>(&lazy protocol witness table cache variable for type TupleToolbarContent<((<<opaque return type of static ToolbarContentBuilder.buildBlock<A>(_:)>>.0)?, (<<opaque return type of static ToolbarContentBuilder.buildBlock<A>(_:)>>.0)?)> and conformance TupleToolbarContent<A>, &_s7SwiftUI19TupleToolbarContentVyAA0dE7BuilderV10buildBlockyQrxAA0dE0RzlFZQOy_AA0D4ItemVyytAA08ModifiedE0VyAA6ButtonVyAA5ImageVGAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGGQo_Sg_AeFyQrxAaGRzlFZQOy_AIyytAKyAMyAA4TextVGAVGGQo_SgtGMd);
  View.toolbar<A>(content:)();
  return outlined destroy of Group<WorkoutConfigurationViewIOS<_ConditionalContent<_ConditionalContent<EmbeddedGoalConfigurationView, EmbeddedIntervalConfigurationView>, _ConditionalContent<EmbeddedPacerConfigurationView, EmbeddedMultiSportConfigurationView>>?>>(v3);
}

id closure #1 in WorkoutConfigurationView.body.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for WorkoutConfigurationView();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4 - 8);
  WorkoutConfigurationView.embeddedConfigurationView()(&v31);
  v24 = v31;
  v23 = v32;
  v22 = v33;
  v7 = *(a1 + 32);
  v29 = *(a1 + 24);
  v30 = v7;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI5StateVy07WorkoutB00d19ConfigurationViewerC0OGMd);
  State.projectedValue.getter();
  v8 = v26;
  v21 = v27;
  v9 = v28;
  v10 = *a1;
  v25 = *(a1 + 8);
  outlined init with copy of WorkoutConfigurationView(a1, &v20 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v11 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v12 = swift_allocObject();
  outlined init with take of WorkoutConfigurationView(&v20 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), v12 + v11);
  outlined init with copy of WorkoutConfigurationView(a1, &v20 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v13 = swift_allocObject();
  outlined init with take of WorkoutConfigurationView(&v20 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), v13 + v11);
  *a2 = v24;
  *(a2 + 16) = v23;
  *(a2 + 24) = v22;
  v14 = v21;
  *(a2 + 32) = v8;
  *(a2 + 40) = v14;
  *(a2 + 48) = v9;
  v15 = v25;
  *(a2 + 56) = v10;
  *(a2 + 64) = v15;
  *(a2 + 72) = partial apply for implicit closure #2 in implicit closure #1 in closure #1 in WorkoutConfigurationView.body.getter;
  *(a2 + 80) = v12;
  *(a2 + 88) = partial apply for implicit closure #4 in implicit closure #3 in closure #1 in WorkoutConfigurationView.body.getter;
  *(a2 + 96) = v13;
  v16 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s9WorkoutUI0A20ConfigurationViewIOSVy05SwiftB019_ConditionalContentVyAFyAA012EmbeddedGoalcD0VAA0i8IntervalcD0VGAFyAA0i5PacercD0VAA0i10MultiSportcD0VGGSgGMd) + 56);
  *(a2 + v16) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI11EnvironmentV7ContentOyAA13DismissActionV_GMd);
  swift_storeEnumTagMultiPayload();
  v17 = v10;
  v18 = v25;

  return v18;
}

void WorkoutConfigurationView.embeddedConfigurationView()(uint64_t a1@<X8>)
{
  v3 = *v1;
  type metadata accessor for GoalWorkoutConfiguration();
  v4 = swift_dynamicCastClass();
  if (v4)
  {
    v5 = *(v1 + 8);
    v28 = v4;
    v30 = v5;
    v33 = 0;
    v35 = 0;
    v6 = v4;
    lazy protocol witness table accessor for type EmbeddedGoalConfigurationView and conformance EmbeddedGoalConfigurationView();
    lazy protocol witness table accessor for type EmbeddedIntervalConfigurationView and conformance EmbeddedIntervalConfigurationView();
    v7 = v3;
    v8 = v5;
    v9 = v6;
    v10 = v8;
    _ConditionalContent<>.init(storage:)();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI19_ConditionalContentVy07WorkoutB029EmbeddedGoalConfigurationViewVAD0f8IntervalhI0VGMd);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI19_ConditionalContentVy07WorkoutB030EmbeddedPacerConfigurationViewVAD0f10MultiSporthI0VGMd);
    lazy protocol witness table accessor for type _ConditionalContent<EmbeddedGoalConfigurationView, EmbeddedIntervalConfigurationView> and conformance <> _ConditionalContent<A, B>();
    lazy protocol witness table accessor for type _ConditionalContent<EmbeddedPacerConfigurationView, EmbeddedMultiSportConfigurationView> and conformance <> _ConditionalContent<A, B>();
    _ConditionalContent<>.init(storage:)();
    goto LABEL_5;
  }

  type metadata accessor for IntervalWorkoutConfiguration();
  v11 = swift_dynamicCastClass();
  if (v11)
  {
    v28 = v11;
    v30 = *(v1 + 8);
    v33 = *(v1 + *(type metadata accessor for WorkoutConfigurationView() + 52));
    v35 = 1;
    lazy protocol witness table accessor for type EmbeddedGoalConfigurationView and conformance EmbeddedGoalConfigurationView();
    lazy protocol witness table accessor for type EmbeddedIntervalConfigurationView and conformance EmbeddedIntervalConfigurationView();
    v7 = v3;
    v12 = v30;
    v13 = v33;
    v9 = v28;
    v10 = v12;
    v14 = v13;
    _ConditionalContent<>.init(storage:)();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI19_ConditionalContentVy07WorkoutB029EmbeddedGoalConfigurationViewVAD0f8IntervalhI0VGMd);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI19_ConditionalContentVy07WorkoutB030EmbeddedPacerConfigurationViewVAD0f10MultiSporthI0VGMd);
    lazy protocol witness table accessor for type _ConditionalContent<EmbeddedGoalConfigurationView, EmbeddedIntervalConfigurationView> and conformance <> _ConditionalContent<A, B>();
    lazy protocol witness table accessor for type _ConditionalContent<EmbeddedPacerConfigurationView, EmbeddedMultiSportConfigurationView> and conformance <> _ConditionalContent<A, B>();
    _ConditionalContent<>.init(storage:)();

LABEL_5:
    v15 = v28;
    v16 = v30;
    v17 = v33;
    v18 = v35;
    if (v36)
    {
      v19 = 256;
    }

    else
    {
      v19 = 0;
    }

    goto LABEL_8;
  }

  type metadata accessor for PacerWorkoutConfiguration();
  v21 = swift_dynamicCastClass();
  if (v21)
  {
    v22 = *(v1 + 8);
    v29 = v21;
    v31 = v22;
    LOBYTE(v32) = 0;
  }

  else
  {
    type metadata accessor for MultiSportWorkoutConfiguration();
    v21 = swift_dynamicCastClass();
    if (!v21)
    {
      v15 = 0;
      v16 = 0;
      v17 = 0;
      v20 = -256;
      goto LABEL_9;
    }

    v22 = *(v1 + 8);
    v29 = v21;
    v31 = v22;
    LOBYTE(v32) = 1;
  }

  v23 = v21;
  lazy protocol witness table accessor for type EmbeddedPacerConfigurationView and conformance EmbeddedPacerConfigurationView();
  lazy protocol witness table accessor for type EmbeddedMultiSportConfigurationView and conformance EmbeddedMultiSportConfigurationView();
  v24 = v3;
  v25 = v22;
  v26 = v23;
  v27 = v25;
  _ConditionalContent<>.init(storage:)();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI19_ConditionalContentVy07WorkoutB029EmbeddedGoalConfigurationViewVAD0f8IntervalhI0VGMd);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI19_ConditionalContentVy07WorkoutB030EmbeddedPacerConfigurationViewVAD0f10MultiSporthI0VGMd);
  lazy protocol witness table accessor for type _ConditionalContent<EmbeddedGoalConfigurationView, EmbeddedIntervalConfigurationView> and conformance <> _ConditionalContent<A, B>();
  lazy protocol witness table accessor for type _ConditionalContent<EmbeddedPacerConfigurationView, EmbeddedMultiSportConfigurationView> and conformance <> _ConditionalContent<A, B>();
  _ConditionalContent<>.init(storage:)();

  v15 = v29;
  v16 = v31;
  v17 = v32;
  v18 = v34;
  if (v36)
  {
    v19 = 256;
  }

  else
  {
    v19 = 0;
  }

LABEL_8:
  v20 = v19 | v18;
LABEL_9:
  *a1 = v15;
  *(a1 + 8) = v16;
  *(a1 + 16) = v17;
  *(a1 + 24) = v20;
}

uint64_t implicit closure #2 in implicit closure #1 in closure #1 in WorkoutConfigurationView.body.getter(void *a1, uint64_t a2)
{
  v4 = type metadata accessor for DismissAction();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for WorkoutConfigurationView();
  v9 = *(a2 + *(v8 + 40));
  if (!v9)
  {
    return WorkoutConfigurationView.save(configuration:)(a1);
  }

  v10 = v8;

  v9(a1);
  v11 = *(a2 + *(v10 + 48));
  if (v11)
  {

    v11(v12);
    sub_20C6925F8(v9);

    return sub_20C6925F8(v11);
  }

  else
  {
    WorkoutConfigurationView.dismiss.getter(v7);
    DismissAction.callAsFunction()();
    sub_20C6925F8(v9);
    return (*(v5 + 8))(v7, v4);
  }
}

uint64_t WorkoutConfigurationView.performLaunchButtonAction()()
{
  v1 = v0;
  v2 = type metadata accessor for WOAnalyticsEvent.SharingEngagementType();
  MEMORY[0x28223BE20](v2);
  v3 = type metadata accessor for WorkoutConfigurationView();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v6 = WorkoutConfiguration.serializedCompositionData.getter();
  v7 = *(v0 + *(v3 + 56));
  v8 = v6;
  v10 = v9;
  isa = Data._bridgeToObjectiveC()().super.isa;
  outlined init with copy of WorkoutConfigurationView(v1, aBlock - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v12 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v13 = swift_allocObject();
  outlined init with take of WorkoutConfigurationView(aBlock - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), v13 + v12);
  aBlock[4] = partial apply for closure #1 in WorkoutConfigurationView.performLaunchButtonAction();
  aBlock[5] = v13;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = thunk for @escaping @callee_guaranteed @Sendable (@unowned Bool, @guaranteed Error?) -> ();
  aBlock[3] = &block_descriptor_33;
  v14 = _Block_copy(aBlock);

  [v7 _startWatchAppWithWorkoutPlanData_completion_];
  _Block_release(v14);

  return outlined consume of Data._Representation(v8, v10);
}

uint64_t closure #2 in WorkoutConfigurationView.body.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v68 = a2;
  v67 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI21ToolbarContentBuilderV10buildBlockyQrxAA0cD0RzlFZQOy_AA0C4ItemVyytAA08ModifiedD0VyAA6ButtonVyAA5ImageVGAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGGQo_Sg_AcDyQrxAaERzlFZQOy_AGyytAIyAKyAA4TextVGATGGQo_SgtMd);
  MEMORY[0x28223BE20](v67);
  v66 = v52 - v3;
  v65 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI21ToolbarContentBuilderV10buildBlockyQrxAA0cD0RzlFZQOy_AA0C4ItemVyytAA08ModifiedD0VyAA6ButtonVyAA4TextVGAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGGQo_Md);
  v62 = *(v65 - 8);
  MEMORY[0x28223BE20](v65);
  v57 = v52 - v4;
  v63 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI11ToolbarItemVyytAA15ModifiedContentVyAA6ButtonVyAA4TextVGAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGGMd);
  v56 = *(v63 - 8);
  MEMORY[0x28223BE20](v63);
  v55 = v52 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI21ToolbarContentBuilderV10buildBlockyQrxAA0cD0RzlFZQOy_AA0C4ItemVyytAA08ModifiedD0VyAA6ButtonVyAA4TextVGAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGGQo_SgMd);
  MEMORY[0x28223BE20](v6 - 8);
  v61 = v52 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v64 = v52 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI21ToolbarContentBuilderV10buildBlockyQrxAA0cD0RzlFZQOy_AA0C4ItemVyytAA08ModifiedD0VyAA6ButtonVyAA5ImageVGAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGGQo_Md);
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = v52 - v12;
  v14 = type metadata accessor for ToolbarItemPlacement();
  MEMORY[0x28223BE20](v14 - 8);
  v16 = v52 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI11ToolbarItemVyytAA15ModifiedContentVyAA6ButtonVyAA5ImageVGAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGGMd);
  v53 = *(v17 - 8);
  MEMORY[0x28223BE20](v17);
  v19 = v52 - v18;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI21ToolbarContentBuilderV10buildBlockyQrxAA0cD0RzlFZQOy_AA0C4ItemVyytAA08ModifiedD0VyAA6ButtonVyAA5ImageVGAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGGQo_SgMd);
  MEMORY[0x28223BE20](v20 - 8);
  v22 = v52 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v23);
  v25 = v52 - v24;
  v26 = *(a1 + 32);
  v60 = *(a1 + 24);
  LOBYTE(v70) = v60;
  v59 = v26;
  v71 = v26;
  v58 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI5StateVy07WorkoutB00d19ConfigurationViewerC0OGMd);
  State.wrappedValue.getter();
  v54 = v16;
  if ((v69 & 0xFB) != 0)
  {
    (*(v11 + 56))(v22, 1, 1, v10);
    v27 = lazy protocol witness table accessor for type WorkoutConfigurationViewIOS<_ConditionalContent<_ConditionalContent<EmbeddedGoalConfigurationView, EmbeddedIntervalConfigurationView>, _ConditionalContent<EmbeddedPacerConfigurationView, EmbeddedMultiSportConfigurationView>>?> and conformance WorkoutConfigurationViewIOS<A>(&lazy protocol witness table cache variable for type ToolbarItem<(), ModifiedContent<Button<Image>, _EnvironmentKeyWritingModifier<Color?>>> and conformance ToolbarItem<A, B>, &_s7SwiftUI11ToolbarItemVyytAA15ModifiedContentVyAA6ButtonVyAA5ImageVGAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGGMd);
    v70 = v17;
    v71 = v27;
    OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
    v29 = v25;
    MEMORY[0x20F309920](v22, v10, OpaqueTypeConformance2);
    outlined destroy of (<<opaque return type of static ToolbarContentBuilder.buildBlock<A>(_:)>>.0)?(v22, &_s7SwiftUI21ToolbarContentBuilderV10buildBlockyQrxAA0cD0RzlFZQOy_AA0C4ItemVyytAA08ModifiedD0VyAA6ButtonVyAA5ImageVGAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGGQo_SgMd);
  }

  else
  {
    v30 = static ToolbarItemPlacement.cancellationAction.getter();
    v52[1] = v52;
    MEMORY[0x28223BE20](v30);
    v52[-2] = a1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyAA6ButtonVyAA5ImageVGAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGMd);
    v52[0] = v13;
    lazy protocol witness table accessor for type ModifiedContent<Button<Image>, _EnvironmentKeyWritingModifier<Color?>> and conformance <> ModifiedContent<A, B>();
    ToolbarItem<>.init(placement:content:)();
    v31 = lazy protocol witness table accessor for type WorkoutConfigurationViewIOS<_ConditionalContent<_ConditionalContent<EmbeddedGoalConfigurationView, EmbeddedIntervalConfigurationView>, _ConditionalContent<EmbeddedPacerConfigurationView, EmbeddedMultiSportConfigurationView>>?> and conformance WorkoutConfigurationViewIOS<A>(&lazy protocol witness table cache variable for type ToolbarItem<(), ModifiedContent<Button<Image>, _EnvironmentKeyWritingModifier<Color?>>> and conformance ToolbarItem<A, B>, &_s7SwiftUI11ToolbarItemVyytAA15ModifiedContentVyAA6ButtonVyAA5ImageVGAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGGMd);
    v32 = v52[0];
    MEMORY[0x20F3098F0](v19, v17, v31);
    (*(v11 + 16))(v22, v32, v10);
    (*(v11 + 56))(v22, 0, 1, v10);
    v70 = v17;
    v71 = v31;
    v33 = swift_getOpaqueTypeConformance2();
    v29 = v25;
    MEMORY[0x20F309920](v22, v10, v33);
    outlined destroy of (<<opaque return type of static ToolbarContentBuilder.buildBlock<A>(_:)>>.0)?(v22, &_s7SwiftUI21ToolbarContentBuilderV10buildBlockyQrxAA0cD0RzlFZQOy_AA0C4ItemVyytAA08ModifiedD0VyAA6ButtonVyAA5ImageVGAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGGQo_SgMd);
    (*(v11 + 8))(v32, v10);
    (*(v53 + 8))(v19, v17);
  }

  LOBYTE(v70) = v60;
  v71 = v59;
  State.wrappedValue.getter();
  v34 = v64;
  if ((v69 & 0xFB) != 0)
  {
    v35 = static ToolbarItemPlacement.confirmationAction.getter();
    MEMORY[0x28223BE20](v35);
    v52[-2] = v36;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyAA6ButtonVyAA4TextVGAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGMd);
    lazy protocol witness table accessor for type ModifiedContent<Button<Text>, _EnvironmentKeyWritingModifier<Color?>> and conformance <> ModifiedContent<A, B>();
    v37 = v55;
    ToolbarItem<>.init(placement:content:)();
    v38 = lazy protocol witness table accessor for type WorkoutConfigurationViewIOS<_ConditionalContent<_ConditionalContent<EmbeddedGoalConfigurationView, EmbeddedIntervalConfigurationView>, _ConditionalContent<EmbeddedPacerConfigurationView, EmbeddedMultiSportConfigurationView>>?> and conformance WorkoutConfigurationViewIOS<A>(&lazy protocol witness table cache variable for type ToolbarItem<(), ModifiedContent<Button<Text>, _EnvironmentKeyWritingModifier<Color?>>> and conformance ToolbarItem<A, B>, &_s7SwiftUI11ToolbarItemVyytAA15ModifiedContentVyAA6ButtonVyAA4TextVGAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGGMd);
    v39 = v57;
    v40 = v63;
    MEMORY[0x20F3098F0](v37, v63, v38);
    v42 = v61;
    v41 = v62;
    v43 = v65;
    (*(v62 + 16))(v61, v39, v65);
    (*(v41 + 56))(v42, 0, 1, v43);
    v70 = v40;
    v71 = v38;
    v44 = swift_getOpaqueTypeConformance2();
    MEMORY[0x20F309920](v42, v43, v44);
    outlined destroy of (<<opaque return type of static ToolbarContentBuilder.buildBlock<A>(_:)>>.0)?(v42, &_s7SwiftUI21ToolbarContentBuilderV10buildBlockyQrxAA0cD0RzlFZQOy_AA0C4ItemVyytAA08ModifiedD0VyAA6ButtonVyAA4TextVGAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGGQo_SgMd);
    (*(v41 + 8))(v39, v43);
    (*(v56 + 8))(v37, v40);
  }

  else
  {
    v45 = v61;
    v46 = v65;
    (*(v62 + 56))(v61, 1, 1, v65);
    v47 = lazy protocol witness table accessor for type WorkoutConfigurationViewIOS<_ConditionalContent<_ConditionalContent<EmbeddedGoalConfigurationView, EmbeddedIntervalConfigurationView>, _ConditionalContent<EmbeddedPacerConfigurationView, EmbeddedMultiSportConfigurationView>>?> and conformance WorkoutConfigurationViewIOS<A>(&lazy protocol witness table cache variable for type ToolbarItem<(), ModifiedContent<Button<Text>, _EnvironmentKeyWritingModifier<Color?>>> and conformance ToolbarItem<A, B>, &_s7SwiftUI11ToolbarItemVyytAA15ModifiedContentVyAA6ButtonVyAA4TextVGAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGGMd);
    v70 = v63;
    v71 = v47;
    v48 = swift_getOpaqueTypeConformance2();
    MEMORY[0x20F309920](v45, v46, v48);
    outlined destroy of (<<opaque return type of static ToolbarContentBuilder.buildBlock<A>(_:)>>.0)?(v45, &_s7SwiftUI21ToolbarContentBuilderV10buildBlockyQrxAA0cD0RzlFZQOy_AA0C4ItemVyytAA08ModifiedD0VyAA6ButtonVyAA4TextVGAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGGQo_SgMd);
  }

  v49 = v66;
  v50 = *(v67 + 48);
  outlined init with copy of (<<opaque return type of static ToolbarContentBuilder.buildBlock<A>(_:)>>.0)?(v29, v66, &_s7SwiftUI21ToolbarContentBuilderV10buildBlockyQrxAA0cD0RzlFZQOy_AA0C4ItemVyytAA08ModifiedD0VyAA6ButtonVyAA5ImageVGAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGGQo_SgMd);
  outlined init with copy of (<<opaque return type of static ToolbarContentBuilder.buildBlock<A>(_:)>>.0)?(v34, v49 + v50, &_s7SwiftUI21ToolbarContentBuilderV10buildBlockyQrxAA0cD0RzlFZQOy_AA0C4ItemVyytAA08ModifiedD0VyAA6ButtonVyAA4TextVGAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGGQo_SgMd);
  TupleToolbarContent.init(_:)();
  outlined destroy of (<<opaque return type of static ToolbarContentBuilder.buildBlock<A>(_:)>>.0)?(v34, &_s7SwiftUI21ToolbarContentBuilderV10buildBlockyQrxAA0cD0RzlFZQOy_AA0C4ItemVyytAA08ModifiedD0VyAA6ButtonVyAA4TextVGAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGGQo_SgMd);
  return outlined destroy of (<<opaque return type of static ToolbarContentBuilder.buildBlock<A>(_:)>>.0)?(v29, &_s7SwiftUI21ToolbarContentBuilderV10buildBlockyQrxAA0cD0RzlFZQOy_AA0C4ItemVyytAA08ModifiedD0VyAA6ButtonVyAA5ImageVGAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGGQo_SgMd);
}

uint64_t closure #1 in closure #2 in WorkoutConfigurationView.body.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for WorkoutConfigurationView();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4 - 8);
  outlined init with copy of WorkoutConfigurationView(a1, &v13 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v7 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v8 = swift_allocObject();
  outlined init with take of WorkoutConfigurationView(&v13 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), v8 + v7);
  Button.init(action:label:)();
  v9 = static Color.white.getter();
  KeyPath = swift_getKeyPath();
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyAA6ButtonVyAA5ImageVGAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGMd);
  v12 = (a2 + *(result + 36));
  *v12 = KeyPath;
  v12[1] = v9;
  return result;
}

uint64_t closure #1 in closure #1 in closure #2 in WorkoutConfigurationView.body.getter(uint64_t *a1)
{
  v2 = type metadata accessor for DismissAction();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v15 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for WOAnalyticsEvent.SharingEngagementType();
  v7 = *(v6 - 8);
  v8 = MEMORY[0x28223BE20](v6);
  v10 = &v15 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *a1;
  (*(v7 + 104))(v10, *MEMORY[0x277D7E0E8], v6, v8);
  MEMORY[0x20F305830](v11, v10);
  (*(v7 + 8))(v10, v6);
  v12 = *(a1 + *(type metadata accessor for WorkoutConfigurationView() + 48));
  if (v12)
  {

    v12(v13);
    return sub_20C6925F8(v12);
  }

  else
  {
    WorkoutConfigurationView.dismiss.getter(v5);
    DismissAction.callAsFunction()();
    return (*(v3 + 8))(v5, v2);
  }
}

uint64_t closure #2 in closure #1 in closure #2 in WorkoutConfigurationView.body.getter@<X0>(uint64_t *a1@<X8>)
{
  result = Image.init(systemName:)();
  *a1 = result;
  return result;
}

uint64_t closure #2 in closure #2 in WorkoutConfigurationView.body.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for WorkoutConfigurationView();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4 - 8);
  outlined init with copy of WorkoutConfigurationView(a1, &v13 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v7 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v8 = swift_allocObject();
  outlined init with take of WorkoutConfigurationView(&v13 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), v8 + v7);
  Button.init(action:label:)();
  v9 = static Color.white.getter();
  KeyPath = swift_getKeyPath();
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyAA6ButtonVyAA4TextVGAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGMd);
  v12 = (a2 + *(result + 36));
  *v12 = KeyPath;
  v12[1] = v9;
  return result;
}

uint64_t closure #1 in closure #2 in closure #2 in WorkoutConfigurationView.body.getter(uint64_t a1)
{
  v2 = type metadata accessor for DismissAction();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v9 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *(a1 + *(type metadata accessor for WorkoutConfigurationView() + 48));
  if (v6)
  {

    v6(v7);

    return sub_20C6925F8(v6);
  }

  else
  {
    WorkoutConfigurationView.dismiss.getter(v5);
    DismissAction.callAsFunction()();
    return (*(v3 + 8))(v5, v2);
  }
}

uint64_t closure #2 in closure #2 in closure #2 in WorkoutConfigurationView.body.getter@<X0>(uint64_t a1@<X8>)
{
  if (one-time initialization token for WorkoutUIBundle != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v2 = WorkoutUIBundle.super.isa;
  v10._object = 0xE000000000000000;
  v3._countAndFlagsBits = 0x5455425F454E4F44;
  v3._object = 0xEB000000004E4F54;
  v4.value._countAndFlagsBits = 0x617A696C61636F4CLL;
  v4.value._object = 0xEB00000000656C62;
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

uint64_t WorkoutConfigurationView.save(configuration:)(void *a1)
{
  v2 = v1;
  v4 = type metadata accessor for WOAnalyticsEvent.SharingEngagementType();
  MEMORY[0x28223BE20](v4);
  v5 = type metadata accessor for WorkoutConfigurationView();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = WorkoutConfiguration.serializedCompositionData.getter();
  v10 = v9;
  v11 = [objc_opt_self() sharedInstance];
  isa = Data._bridgeToObjectiveC()().super.isa;
  outlined init with copy of WorkoutConfigurationView(v2, aBlock - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v13 = (*(v6 + 80) + 24) & ~*(v6 + 80);
  v14 = swift_allocObject();
  *(v14 + 16) = a1;
  outlined init with take of WorkoutConfigurationView(aBlock - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), v14 + v13);
  aBlock[4] = partial apply for closure #1 in WorkoutConfigurationView.save(configuration:);
  aBlock[5] = v14;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = thunk for @escaping @callee_guaranteed @Sendable (@unowned Bool, @guaranteed Error?) -> ();
  aBlock[3] = &block_descriptor_32;
  v15 = _Block_copy(aBlock);
  v16 = a1;

  [v11 saveWorkoutCompositionData:isa completion:v15];
  _Block_release(v15);

  return outlined consume of Data._Representation(v8, v10);
}

uint64_t closure #1 in WorkoutConfigurationView.performLaunchButtonAction()(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = type metadata accessor for DispatchWorkItemFlags();
  v23 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v7 = &v20 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for DispatchQoS();
  v21 = *(v8 - 8);
  v22 = v8;
  MEMORY[0x28223BE20](v8);
  v10 = &v20 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for WorkoutConfigurationView();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v11 - 8);
  _sSo21FIUIFormattingManagerCMaTm_10(0, &lazy cache variable for type metadata for OS_dispatch_queue);
  v14 = static OS_dispatch_queue.main.getter();
  outlined init with copy of WorkoutConfigurationView(a3, &v20 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  v15 = (*(v12 + 80) + 24) & ~*(v12 + 80);
  v16 = swift_allocObject();
  *(v16 + 16) = a2;
  outlined init with take of WorkoutConfigurationView(&v20 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0), v16 + v15);
  aBlock[4] = partial apply for closure #1 in closure #1 in WorkoutConfigurationView.performLaunchButtonAction();
  aBlock[5] = v16;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = thunk for @escaping @callee_guaranteed () -> ();
  aBlock[3] = &block_descriptor_26;
  v17 = _Block_copy(aBlock);
  v18 = a2;

  static DispatchQoS.unspecified.getter();
  aBlock[0] = MEMORY[0x277D84F90];
  lazy protocol witness table accessor for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay8Dispatch0A13WorkItemFlagsVGMd);
  lazy protocol witness table accessor for type WorkoutConfigurationViewIOS<_ConditionalContent<_ConditionalContent<EmbeddedGoalConfigurationView, EmbeddedIntervalConfigurationView>, _ConditionalContent<EmbeddedPacerConfigurationView, EmbeddedMultiSportConfigurationView>>?> and conformance WorkoutConfigurationViewIOS<A>(&lazy protocol witness table cache variable for type [DispatchWorkItemFlags] and conformance [A], &_sSay8Dispatch0A13WorkItemFlagsVGMd);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  MEMORY[0x20F30C1F0](0, v10, v7, v17);
  _Block_release(v17);

  (*(v23 + 8))(v7, v5);
  return (*(v21 + 8))(v10, v22);
}

uint64_t closure #1 in closure #1 in WorkoutConfigurationView.performLaunchButtonAction()(void *a1, uint64_t *a2)
{
  v4 = type metadata accessor for DismissAction();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v26[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v8 = type metadata accessor for WOAnalyticsEvent.SharingEngagementType();
  v9 = *(v8 - 8);
  v10 = MEMORY[0x28223BE20](v8);
  v12 = &v26[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0)];
  if (a1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys7CVarArg_pGMd);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_20CB5DA70;
    v28 = a1;
    v14 = a1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd);
    v15 = String.init<A>(describing:)();
    v17 = v16;
    *(inited + 56) = MEMORY[0x277D837D0];
    *(inited + 64) = lazy protocol witness table accessor for type String and conformance String();
    *(inited + 32) = v15;
    *(inited + 40) = v17;
    v18 = static os_log_type_t.error.getter();
    specialized static Log.print(_:type:_:)("WorkoutKitXPCServiceHelper failed to open workout app. Error: %@", 64, 2, v18, inited);
    swift_setDeallocating();
    __swift_destroy_boxed_opaque_existential_1(inited + 32);
    v19 = *a2;
    (*(v9 + 104))(v12, *MEMORY[0x277D7E0D0], v8);
    MEMORY[0x20F305830](v19, v12);
    (*(v9 + 8))(v12, v8);
    v20 = a2[4];
    LOBYTE(v28) = *(a2 + 24);
    v29 = v20;
    v27 = 6;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI5StateVy07WorkoutB00d19ConfigurationViewerC0OGMd);
    return State.wrappedValue.setter();
  }

  else
  {
    v22 = *a2;
    (*(v9 + 104))(v12, *MEMORY[0x277D7E0E0], v8, v10);
    MEMORY[0x20F305830](v22, v12);
    (*(v9 + 8))(v12, v8);
    v23 = a2[4];
    LOBYTE(v28) = *(a2 + 24);
    v29 = v23;
    v27 = 5;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI5StateVy07WorkoutB00d19ConfigurationViewerC0OGMd);
    State.wrappedValue.setter();
    v24 = *(a2 + *(type metadata accessor for WorkoutConfigurationView() + 48));
    if (v24)
    {

      v24(v25);
      return sub_20C6925F8(v24);
    }

    else
    {
      WorkoutConfigurationView.dismiss.getter(v7);
      DismissAction.callAsFunction()();
      return (*(v5 + 8))(v7, v4);
    }
  }
}

uint64_t closure #1 in WorkoutConfigurationView.save(configuration:)(char a1, void *a2, uint64_t a3, uint64_t a4)
{
  v8 = type metadata accessor for WOAnalyticsEvent.SharingEngagementType();
  v9 = *(v8 - 8);
  v10.n128_f64[0] = MEMORY[0x28223BE20](v8);
  v12 = &v23 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (!a2 || (a1 & 1) != 0)
  {
    (*(v9 + 104))(v12, *MEMORY[0x277D7E0C8], v8, v10);
    MEMORY[0x20F305830](a3, v12);
    (*(v9 + 8))(v12, v8);
    v22 = *(a4 + 32);
    v25 = *(a4 + 24);
    v26 = v22;
    v24 = 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI5StateVy07WorkoutB00d19ConfigurationViewerC0OGMd);
    return State.wrappedValue.setter();
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys7CVarArg_pGMd);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_20CB5DA70;
    swift_getErrorValue();
    v14 = a2;
    v15 = Error.localizedDescription.getter();
    v17 = v16;
    *(inited + 56) = MEMORY[0x277D837D0];
    *(inited + 64) = lazy protocol witness table accessor for type String and conformance String();
    *(inited + 32) = v15;
    *(inited + 40) = v17;
    v18 = static os_log_type_t.error.getter();
    specialized static Log.print(_:type:_:)("WorkoutKitXPCServiceHelper failed to save workout plan. Error: %@", 65, 2, v18, inited);
    swift_setDeallocating();
    __swift_destroy_boxed_opaque_existential_1(inited + 32);
    (*(v9 + 104))(v12, *MEMORY[0x277D7E0D0], v8);
    MEMORY[0x20F305830](a3, v12);
    (*(v9 + 8))(v12, v8);
    v19 = *(a4 + 24);
    v20 = *(a4 + 32);
    v25 = v19;
    v26 = v20;
    v24 = 3;

    __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI5StateVy07WorkoutB00d19ConfigurationViewerC0OGMd);
    State.wrappedValue.setter();
  }
}

uint64_t protocol witness for View.body.getter in conformance WorkoutConfigurationView()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI5GroupVy07WorkoutB00D20ConfigurationViewIOSVyAA19_ConditionalContentVyAHyAD012EmbeddedGoaleF0VAD0j8IntervaleF0VGAHyAD0j5PacereF0VAD0j10MultiSporteF0VGGSgGGMd);
  MEMORY[0x28223BE20](v1);
  v3 = &v5[-v2];
  closure #1 in WorkoutConfigurationView.body.getter(v0, &v5[-v2]);
  v6 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI19TupleToolbarContentVyAA0dE7BuilderV10buildBlockyQrxAA0dE0RzlFZQOy_AA0D4ItemVyytAA08ModifiedE0VyAA6ButtonVyAA5ImageVGAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGGQo_Sg_AeFyQrxAaGRzlFZQOy_AIyytAKyAMyAA4TextVGAVGGQo_SgtGMd);
  lazy protocol witness table accessor for type Group<WorkoutConfigurationViewIOS<_ConditionalContent<_ConditionalContent<EmbeddedGoalConfigurationView, EmbeddedIntervalConfigurationView>, _ConditionalContent<EmbeddedPacerConfigurationView, EmbeddedMultiSportConfigurationView>>?>> and conformance <A> Group<A>();
  lazy protocol witness table accessor for type WorkoutConfigurationViewIOS<_ConditionalContent<_ConditionalContent<EmbeddedGoalConfigurationView, EmbeddedIntervalConfigurationView>, _ConditionalContent<EmbeddedPacerConfigurationView, EmbeddedMultiSportConfigurationView>>?> and conformance WorkoutConfigurationViewIOS<A>(&lazy protocol witness table cache variable for type TupleToolbarContent<((<<opaque return type of static ToolbarContentBuilder.buildBlock<A>(_:)>>.0)?, (<<opaque return type of static ToolbarContentBuilder.buildBlock<A>(_:)>>.0)?)> and conformance TupleToolbarContent<A>, &_s7SwiftUI19TupleToolbarContentVyAA0dE7BuilderV10buildBlockyQrxAA0dE0RzlFZQOy_AA0D4ItemVyytAA08ModifiedE0VyAA6ButtonVyAA5ImageVGAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGGQo_Sg_AeFyQrxAaGRzlFZQOy_AIyytAKyAMyAA4TextVGAVGGQo_SgtGMd);
  View.toolbar<A>(content:)();
  return outlined destroy of Group<WorkoutConfigurationViewIOS<_ConditionalContent<_ConditionalContent<EmbeddedGoalConfigurationView, EmbeddedIntervalConfigurationView>, _ConditionalContent<EmbeddedPacerConfigurationView, EmbeddedMultiSportConfigurationView>>?>>(v3);
}

uint64_t type metadata accessor for WorkoutConfigurationView()
{
  result = type metadata singleton initialization cache for WorkoutConfigurationView;
  if (!type metadata singleton initialization cache for WorkoutConfigurationView)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type Group<WorkoutConfigurationViewIOS<_ConditionalContent<_ConditionalContent<EmbeddedGoalConfigurationView, EmbeddedIntervalConfigurationView>, _ConditionalContent<EmbeddedPacerConfigurationView, EmbeddedMultiSportConfigurationView>>?>> and conformance <A> Group<A>()
{
  result = lazy protocol witness table cache variable for type Group<WorkoutConfigurationViewIOS<_ConditionalContent<_ConditionalContent<EmbeddedGoalConfigurationView, EmbeddedIntervalConfigurationView>, _ConditionalContent<EmbeddedPacerConfigurationView, EmbeddedMultiSportConfigurationView>>?>> and conformance <A> Group<A>;
  if (!lazy protocol witness table cache variable for type Group<WorkoutConfigurationViewIOS<_ConditionalContent<_ConditionalContent<EmbeddedGoalConfigurationView, EmbeddedIntervalConfigurationView>, _ConditionalContent<EmbeddedPacerConfigurationView, EmbeddedMultiSportConfigurationView>>?>> and conformance <A> Group<A>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI5GroupVy07WorkoutB00D20ConfigurationViewIOSVyAA19_ConditionalContentVyAHyAD012EmbeddedGoaleF0VAD0j8IntervaleF0VGAHyAD0j5PacereF0VAD0j10MultiSporteF0VGGSgGGMd);
    lazy protocol witness table accessor for type WorkoutConfigurationViewIOS<_ConditionalContent<_ConditionalContent<EmbeddedGoalConfigurationView, EmbeddedIntervalConfigurationView>, _ConditionalContent<EmbeddedPacerConfigurationView, EmbeddedMultiSportConfigurationView>>?> and conformance WorkoutConfigurationViewIOS<A>(&lazy protocol witness table cache variable for type WorkoutConfigurationViewIOS<_ConditionalContent<_ConditionalContent<EmbeddedGoalConfigurationView, EmbeddedIntervalConfigurationView>, _ConditionalContent<EmbeddedPacerConfigurationView, EmbeddedMultiSportConfigurationView>>?> and conformance WorkoutConfigurationViewIOS<A>, &_s9WorkoutUI0A20ConfigurationViewIOSVy05SwiftB019_ConditionalContentVyAFyAA012EmbeddedGoalcD0VAA0i8IntervalcD0VGAFyAA0i5PacercD0VAA0i10MultiSportcD0VGGSgGMd);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Group<WorkoutConfigurationViewIOS<_ConditionalContent<_ConditionalContent<EmbeddedGoalConfigurationView, EmbeddedIntervalConfigurationView>, _ConditionalContent<EmbeddedPacerConfigurationView, EmbeddedMultiSportConfigurationView>>?>> and conformance <A> Group<A>);
  }

  return result;
}

uint64_t outlined destroy of Group<WorkoutConfigurationViewIOS<_ConditionalContent<_ConditionalContent<EmbeddedGoalConfigurationView, EmbeddedIntervalConfigurationView>, _ConditionalContent<EmbeddedPacerConfigurationView, EmbeddedMultiSportConfigurationView>>?>>(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI5GroupVy07WorkoutB00D20ConfigurationViewIOSVyAA19_ConditionalContentVyAHyAD012EmbeddedGoaleF0VAD0j8IntervaleF0VGAHyAD0j5PacereF0VAD0j10MultiSporteF0VGGSgGGMd);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void type metadata completion function for WorkoutConfigurationView()
{
  type metadata accessor for WorkoutConfiguration();
  if (v0 <= 0x3F)
  {
    _sSo21FIUIFormattingManagerCMaTm_10(319, &lazy cache variable for type metadata for FIUIFormattingManager);
    if (v1 <= 0x3F)
    {
      type metadata accessor for State<WorkoutConfigurationViewerState>();
      if (v2 <= 0x3F)
      {
        _s7SwiftUI11EnvironmentVyAA13DismissActionVGMaTm_2(319, &lazy cache variable for type metadata for Environment<DismissAction>, MEMORY[0x277CDD848], MEMORY[0x277CDF468]);
        if (v3 <= 0x3F)
        {
          type metadata accessor for (())?();
          if (v4 <= 0x3F)
          {
            _s7SwiftUI11EnvironmentVyAA13DismissActionVGMaTm_2(319, &lazy cache variable for type metadata for IntervalWorkoutConfiguration?, MEMORY[0x277D7D9A0], MEMORY[0x277D83D88]);
            if (v5 <= 0x3F)
            {
              _sSo21FIUIFormattingManagerCMaTm_10(319, &lazy cache variable for type metadata for HKHealthStore);
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

void type metadata accessor for State<WorkoutConfigurationViewerState>()
{
  if (!lazy cache variable for type metadata for State<WorkoutConfigurationViewerState>)
  {
    v0 = type metadata accessor for State();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for State<WorkoutConfigurationViewerState>);
    }
  }
}

void _s7SwiftUI11EnvironmentVyAA13DismissActionVGMaTm_2(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t outlined destroy of (<<opaque return type of static ToolbarContentBuilder.buildBlock<A>(_:)>>.0)?(uint64_t a1, uint64_t *a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(a2);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<Button<Image>, _EnvironmentKeyWritingModifier<Color?>> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<Button<Image>, _EnvironmentKeyWritingModifier<Color?>> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<Button<Image>, _EnvironmentKeyWritingModifier<Color?>> and conformance <> ModifiedContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyAA6ButtonVyAA5ImageVGAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGMd);
    lazy protocol witness table accessor for type WorkoutConfigurationViewIOS<_ConditionalContent<_ConditionalContent<EmbeddedGoalConfigurationView, EmbeddedIntervalConfigurationView>, _ConditionalContent<EmbeddedPacerConfigurationView, EmbeddedMultiSportConfigurationView>>?> and conformance WorkoutConfigurationViewIOS<A>(&lazy protocol witness table cache variable for type Button<Image> and conformance Button<A>, &_s7SwiftUI6ButtonVyAA5ImageVGMd);
    lazy protocol witness table accessor for type WorkoutConfigurationViewIOS<_ConditionalContent<_ConditionalContent<EmbeddedGoalConfigurationView, EmbeddedIntervalConfigurationView>, _ConditionalContent<EmbeddedPacerConfigurationView, EmbeddedMultiSportConfigurationView>>?> and conformance WorkoutConfigurationViewIOS<A>(&lazy protocol witness table cache variable for type _EnvironmentKeyWritingModifier<Color?> and conformance _EnvironmentKeyWritingModifier<A>, &_s7SwiftUI30_EnvironmentKeyWritingModifierVyAA5ColorVSgGMd);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<Button<Image>, _EnvironmentKeyWritingModifier<Color?>> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

uint64_t outlined init with copy of WorkoutConfigurationView(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for WorkoutConfigurationView();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t outlined init with take of WorkoutConfigurationView(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for WorkoutConfigurationView();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t partial apply for closure #1 in closure #1 in closure #2 in WorkoutConfigurationView.body.getter(uint64_t (*a1)(uint64_t))
{
  v2 = *(type metadata accessor for WorkoutConfigurationView() - 8);
  v3 = v1 + ((*(v2 + 80) + 16) & ~*(v2 + 80));

  return a1(v3);
}

uint64_t partial apply for implicit closure #2 in implicit closure #1 in closure #1 in WorkoutConfigurationView.body.getter(void *a1)
{
  v3 = *(type metadata accessor for WorkoutConfigurationView() - 8);
  v4 = v1 + ((*(v3 + 80) + 16) & ~*(v3 + 80));

  return implicit closure #2 in implicit closure #1 in closure #1 in WorkoutConfigurationView.body.getter(a1, v4);
}

uint64_t objectdestroyTm_72()
{
  v1 = type metadata accessor for WorkoutConfigurationView();
  v2 = (v0 + ((*(*(v1 - 1) + 80) + 16) & ~*(*(v1 - 1) + 80)));

  v3 = v1[9];
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI11EnvironmentV7ContentOyAA13DismissActionV_GMd);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v4 = type metadata accessor for DismissAction();
    (*(*(v4 - 8) + 8))(v2 + v3, v4);
  }

  else
  {
  }

  if (*(v2 + v1[10]))
  {
  }

  if (*(v2 + v1[11]))
  {
  }

  if (*(v2 + v1[12]))
  {
  }

  return swift_deallocObject();
}

uint64_t partial apply for closure #1 in WorkoutConfigurationView.performLaunchButtonAction()(uint64_t a1, void *a2)
{
  v5 = *(type metadata accessor for WorkoutConfigurationView() - 8);
  v6 = v2 + ((*(v5 + 80) + 16) & ~*(v5 + 80));

  return closure #1 in WorkoutConfigurationView.performLaunchButtonAction()(a1, a2, v6);
}

uint64_t block_copy_helper_33(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t _sSo21FIUIFormattingManagerCMaTm_10(uint64_t a1, unint64_t *a2)
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

uint64_t partial apply for closure #1 in closure #1 in WorkoutConfigurationView.performLaunchButtonAction()()
{
  v1 = *(type metadata accessor for WorkoutConfigurationView() - 8);
  v2 = *(v0 + 16);
  v3 = (v0 + ((*(v1 + 80) + 24) & ~*(v1 + 80)));

  return closure #1 in closure #1 in WorkoutConfigurationView.performLaunchButtonAction()(v2, v3);
}

uint64_t lazy protocol witness table accessor for type WorkoutConfigurationViewIOS<_ConditionalContent<_ConditionalContent<EmbeddedGoalConfigurationView, EmbeddedIntervalConfigurationView>, _ConditionalContent<EmbeddedPacerConfigurationView, EmbeddedMultiSportConfigurationView>>?> and conformance WorkoutConfigurationViewIOS<A>(unint64_t *a1, uint64_t *a2)
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

uint64_t partial apply for closure #1 in WorkoutConfigurationView.save(configuration:)(char a1, void *a2)
{
  v5 = *(type metadata accessor for WorkoutConfigurationView() - 8);
  v6 = *(v2 + 16);
  v7 = v2 + ((*(v5 + 80) + 24) & ~*(v5 + 80));

  return closure #1 in WorkoutConfigurationView.save(configuration:)(a1, a2, v6, v7);
}

unint64_t lazy protocol witness table accessor for type EmbeddedMultiSportConfigurationView and conformance EmbeddedMultiSportConfigurationView()
{
  result = lazy protocol witness table cache variable for type EmbeddedMultiSportConfigurationView and conformance EmbeddedMultiSportConfigurationView;
  if (!lazy protocol witness table cache variable for type EmbeddedMultiSportConfigurationView and conformance EmbeddedMultiSportConfigurationView)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type EmbeddedMultiSportConfigurationView and conformance EmbeddedMultiSportConfigurationView);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type _ConditionalContent<EmbeddedGoalConfigurationView, EmbeddedIntervalConfigurationView> and conformance <> _ConditionalContent<A, B>()
{
  result = lazy protocol witness table cache variable for type _ConditionalContent<EmbeddedGoalConfigurationView, EmbeddedIntervalConfigurationView> and conformance <> _ConditionalContent<A, B>;
  if (!lazy protocol witness table cache variable for type _ConditionalContent<EmbeddedGoalConfigurationView, EmbeddedIntervalConfigurationView> and conformance <> _ConditionalContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI19_ConditionalContentVy07WorkoutB029EmbeddedGoalConfigurationViewVAD0f8IntervalhI0VGMd);
    lazy protocol witness table accessor for type EmbeddedGoalConfigurationView and conformance EmbeddedGoalConfigurationView();
    lazy protocol witness table accessor for type EmbeddedIntervalConfigurationView and conformance EmbeddedIntervalConfigurationView();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type _ConditionalContent<EmbeddedGoalConfigurationView, EmbeddedIntervalConfigurationView> and conformance <> _ConditionalContent<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type EmbeddedIntervalConfigurationView and conformance EmbeddedIntervalConfigurationView()
{
  result = lazy protocol witness table cache variable for type EmbeddedIntervalConfigurationView and conformance EmbeddedIntervalConfigurationView;
  if (!lazy protocol witness table cache variable for type EmbeddedIntervalConfigurationView and conformance EmbeddedIntervalConfigurationView)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type EmbeddedIntervalConfigurationView and conformance EmbeddedIntervalConfigurationView);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type _ConditionalContent<EmbeddedPacerConfigurationView, EmbeddedMultiSportConfigurationView> and conformance <> _ConditionalContent<A, B>()
{
  result = lazy protocol witness table cache variable for type _ConditionalContent<EmbeddedPacerConfigurationView, EmbeddedMultiSportConfigurationView> and conformance <> _ConditionalContent<A, B>;
  if (!lazy protocol witness table cache variable for type _ConditionalContent<EmbeddedPacerConfigurationView, EmbeddedMultiSportConfigurationView> and conformance <> _ConditionalContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI19_ConditionalContentVy07WorkoutB030EmbeddedPacerConfigurationViewVAD0f10MultiSporthI0VGMd);
    lazy protocol witness table accessor for type EmbeddedPacerConfigurationView and conformance EmbeddedPacerConfigurationView();
    lazy protocol witness table accessor for type EmbeddedMultiSportConfigurationView and conformance EmbeddedMultiSportConfigurationView();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type _ConditionalContent<EmbeddedPacerConfigurationView, EmbeddedMultiSportConfigurationView> and conformance <> _ConditionalContent<A, B>);
  }

  return result;
}

uint64_t BreadcrumbMapView.init(locationPositionPublisher:)@<X0>(uint64_t *a1@<X8>)
{
  type metadata accessor for LocationPositionPublisher();
  lazy protocol witness table accessor for type LocationPositionPublisher and conformance LocationPositionPublisher(&lazy protocol witness table cache variable for type LocationPositionPublisher and conformance LocationPositionPublisher, MEMORY[0x277D7E528]);
  result = ObservedObject.init(wrappedValue:)();
  *a1 = result;
  a1[1] = v3;
  return result;
}

id BreadcrumbMapView.makeUIView(context:)()
{
  v0 = objc_allocWithZone(type metadata accessor for WKUIBreadcrumbMapView());

  WKUIBreadcrumbMapView.init(locationPositionPublisher:)();
  v2 = v1;
  v3 = [v2 layer];
  [v3 setCornerRadius_];

  v4 = [v2 layer];
  [v4 setCornerCurve_];

  [v2 setZoomEnabled_];
  return v2;
}

uint64_t BreadcrumbMapView.updateUIView(_:context:)(void *a1)
{
  v2 = type metadata accessor for DispatchWorkItemFlags();
  v15 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v4 = &v14 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for DispatchQoS();
  v5 = *(v14 - 8);
  MEMORY[0x28223BE20](v14);
  v7 = &v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for OS_dispatch_queue();
  v8 = static OS_dispatch_queue.main.getter();
  v9 = swift_allocObject();
  *(v9 + 16) = a1;
  aBlock[4] = partial apply for closure #1 in BreadcrumbMapView.updateUIView(_:context:);
  aBlock[5] = v9;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = thunk for @escaping @callee_guaranteed () -> ();
  aBlock[3] = &block_descriptor_34;
  v10 = _Block_copy(aBlock);
  a1;

  static DispatchQoS.unspecified.getter();
  aBlock[0] = MEMORY[0x277D84F90];
  lazy protocol witness table accessor for type LocationPositionPublisher and conformance LocationPositionPublisher(&lazy protocol witness table cache variable for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags, MEMORY[0x277D85198]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay8Dispatch0A13WorkItemFlagsVGMd);
  lazy protocol witness table accessor for type [DispatchWorkItemFlags] and conformance [A]();
  dispatch thunk of SetAlgebra.init<A>(_:)();
  MEMORY[0x20F30C1F0](0, v7, v4, v10);
  _Block_release(v10);

  (*(v15 + 8))(v4, v2);
  (*(v5 + 8))(v7, v14);

  v11 = LocationPositionPublisher.locations.getter();

  WKUIBreadcrumbMapView.update(locations:)(v11);

  v12 = LocationPositionPublisher.routePoints.getter();

  WKUIBreadcrumbMapView.set(routePoints:)(v12);
}

uint64_t protocol witness for static View._makeView(view:inputs:) in conformance BreadcrumbMapView(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = lazy protocol witness table accessor for type BreadcrumbMapView and conformance BreadcrumbMapView();

  return MEMORY[0x28212E3C8](a1, a2, a3, v6);
}

uint64_t protocol witness for static View._makeViewList(view:inputs:) in conformance BreadcrumbMapView(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = lazy protocol witness table accessor for type BreadcrumbMapView and conformance BreadcrumbMapView();

  return MEMORY[0x28212E358](a1, a2, a3, v6);
}

void protocol witness for View.body.getter in conformance BreadcrumbMapView()
{
  lazy protocol witness table accessor for type BreadcrumbMapView and conformance BreadcrumbMapView();
  UIViewRepresentable.body.getter();
  __break(1u);
}

uint64_t block_copy_helper_34(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t lazy protocol witness table accessor for type LocationPositionPublisher and conformance LocationPositionPublisher(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t instantiation function for generic protocol witness table for BreadcrumbMapView(uint64_t a1)
{
  result = lazy protocol witness table accessor for type BreadcrumbMapView and conformance BreadcrumbMapView();
  *(a1 + 8) = result;
  return result;
}

uint64_t getEnumTagSinglePayload for BreadcrumbMapView(uint64_t a1, int a2)
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

uint64_t storeEnumTagSinglePayload for BreadcrumbMapView(uint64_t result, int a2, int a3)
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

uint64_t PowerZonesEntryViewModel.target.getter()
{
  return PowerZonesEntryViewModel.target.getter();
}

{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();
}

uint64_t PowerZonesEntryViewModel.init(configurationContext:)(uint64_t a1)
{
  v84 = a1;
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySay11WorkoutCore16CyclingPowerZoneCGSgGMd);
  v82 = *(v1 - 8);
  v83 = v1;
  MEMORY[0x28223BE20](v1);
  v81 = &v64 - v2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySiGMd);
  v79 = *(v3 - 8);
  v80 = v3;
  MEMORY[0x28223BE20](v3);
  v78 = &v64 - v4;
  v77 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySdGMd);
  v76 = *(v77 - 8);
  MEMORY[0x28223BE20](v77);
  v75 = &v64 - v5;
  v74 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVy11WorkoutCore10TargetZoneC0F4TypeOGMd);
  v73 = *(v74 - 8);
  MEMORY[0x28223BE20](v74);
  v72 = &v64 - v6;
  v86 = type metadata accessor for TargetZone.ZoneType();
  v67 = *(v86 - 8);
  v7 = v67;
  v8 = MEMORY[0x28223BE20](v86);
  v71 = &v64 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v69 = &v64 - v10;
  v92 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVy11WorkoutCore23PowerZonesAlertZoneTypeOGMd);
  v97 = *(v92 - 8);
  MEMORY[0x28223BE20](v92);
  v12 = &v64 - v11;
  v13 = type metadata accessor for PowerZonesAlertZoneType();
  v14 = *(v13 - 8);
  v15 = MEMORY[0x28223BE20](v13);
  v17 = &v64 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v19 = &v64 - v18;
  v70 = OBJC_IVAR____TtC9WorkoutUI24PowerZonesEntryViewModel__target;
  v20 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_sSd5value_11WorkoutCore10TargetZoneC0E4TypeO4modetMd) + 48);
  *v19 = 0x405E000000000000;
  v66 = *MEMORY[0x277D7DE50];
  v21 = *(v7 + 104);
  v87 = v7 + 104;
  v88 = v21;
  v21(&v19[v20]);
  v22 = *MEMORY[0x277D7E428];
  v93 = v14[13];
  v93(v19, v22, v13);
  v94 = v14 + 13;
  v90 = v14[2];
  v91 = v14 + 2;
  v90(v17, v19, v13);
  Published.init(initialValue:)();
  v96 = v14[1];
  v96(v19, v13);
  v95 = v14 + 1;
  v85 = *(v97 + 32);
  v97 += 32;
  v23 = v68;
  v24 = v92;
  v85(v68 + v70, v12, v92);
  v65 = OBJC_IVAR____TtC9WorkoutUI24PowerZonesEntryViewModel__automatic;
  *v19 = 0;
  *(v19 + 1) = 0;
  LODWORD(v70) = *MEMORY[0x277D7E430];
  v25 = v93;
  (v93)(v19);
  v89 = v17;
  v26 = v90;
  v90(v17, v19, v13);
  v27 = v12;
  Published.init(initialValue:)();
  v28 = v96;
  v96(v19, v13);
  v29 = v85;
  v85(v23 + v65, v27, v24);
  v65 = OBJC_IVAR____TtC9WorkoutUI24PowerZonesEntryViewModel__custom;
  v30 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_sSnySdG5range_11WorkoutCore10TargetZoneC0E4TypeO4modetMd) + 48);
  *v19 = xmmword_20CB80540;
  v88(&v19[v30], *MEMORY[0x277D7DE68], v86);
  v25(v19, *MEMORY[0x277D7E420], v13);
  v26(v89, v19, v13);
  Published.init(initialValue:)();
  v28(v19, v13);
  v31 = v27;
  v32 = v27;
  v33 = v92;
  v29(v23 + v65, v31, v92);
  v64 = OBJC_IVAR____TtC9WorkoutUI24PowerZonesEntryViewModel__off;
  LODWORD(v65) = *MEMORY[0x277D7E418];
  v34 = v93;
  (v93)(v19);
  v90(v89, v19, v13);
  Published.init(initialValue:)();
  v35 = v96;
  v96(v19, v13);
  v36 = v33;
  v37 = v85;
  v85(v23 + v64, v32, v36);
  v38 = OBJC_IVAR____TtC9WorkoutUI24PowerZonesEntryViewModel_activityMoveMode;
  *(v23 + v38) = FIActivityMoveModeUserDefault();
  v39 = OBJC_IVAR____TtC9WorkoutUI24PowerZonesEntryViewModel__selectedType;
  v34(v19, v65, v13);
  v90(v89, v19, v13);
  Published.init(initialValue:)();
  v35(v19, v13);
  v37(v23 + v39, v32, v92);
  v40 = OBJC_IVAR____TtC9WorkoutUI24PowerZonesEntryViewModel__selectedTargetMode;
  v41 = v69;
  v42 = v86;
  v88(v69, v66, v86);
  v43 = v67;
  (*(v67 + 16))(v71, v41, v42);
  v44 = v72;
  Published.init(initialValue:)();
  (*(v43 + 8))(v41, v42);
  (*(v73 + 32))(v23 + v40, v44, v74);
  v45 = OBJC_IVAR____TtC9WorkoutUI24PowerZonesEntryViewModel__targetValue;
  v98 = 0x405E000000000000;
  v46 = v75;
  Published.init(initialValue:)();
  v47 = *(v76 + 32);
  v48 = v77;
  v47(v23 + v45, v46, v77);
  v49 = OBJC_IVAR____TtC9WorkoutUI24PowerZonesEntryViewModel__selectedIndex;
  v98 = 0;
  v50 = v78;
  Published.init(initialValue:)();
  (*(v79 + 32))(v23 + v49, v50, v80);
  v51 = OBJC_IVAR____TtC9WorkoutUI24PowerZonesEntryViewModel__zones;
  v98 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay11WorkoutCore16CyclingPowerZoneCGSgMd);
  v52 = v81;
  Published.init(initialValue:)();
  (*(v82 + 32))(v23 + v51, v52, v83);
  v53 = OBJC_IVAR____TtC9WorkoutUI24PowerZonesEntryViewModel__selectedLowerBound;
  v98 = 0x4059000000000000;
  Published.init(initialValue:)();
  v47(v23 + v53, v46, v48);
  v54 = OBJC_IVAR____TtC9WorkoutUI24PowerZonesEntryViewModel__selectedUpperBound;
  v98 = 0x405E000000000000;
  Published.init(initialValue:)();
  v47(v23 + v54, v46, v48);
  *v19 = 0;
  *(v19 + 1) = 0;
  v93(v19, v70, v13);
  v55 = objc_allocWithZone(type metadata accessor for PowerZonesAlertTargetZone());
  v56 = PowerZonesAlertTargetZone.init(type:)();
  dispatch thunk of PowerZonesAlertTargetZone.type.getter();
  v57 = v84;
  v58 = PowerZonesAlertZoneType.supportedZoneTypes(for:)(v84);
  v96(v19, v13);
  *(v23 + OBJC_IVAR____TtC9WorkoutUI24PowerZonesEntryViewModel_selectableTargetModes) = v58;
  v59 = OBJC_IVAR____TtC9WorkoutUI24PowerZonesEntryViewModel_configurationContext;
  v60 = type metadata accessor for AlertConfigurationContext();
  v61 = *(v60 - 8);
  (*(v61 + 16))(v23 + v59, v57, v60);
  *(v23 + OBJC_IVAR____TtC9WorkoutUI24PowerZonesEntryViewModel_powerTargetZone) = v56;
  v62 = v56;

  dispatch thunk of PowerZonesAlertTargetZone.defaultZonesDidLoad.setter();

  (*(v61 + 8))(v57, v60);
  return v23;
}

uint64_t PowerZonesEntryViewModel.selectedType.setter(char *a1)
{
  v2 = type metadata accessor for PowerZonesAlertZoneType();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v12 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v8 = &v12 - v7;
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  swift_getKeyPath();
  swift_getKeyPath();
  (*(v3 + 16))(v5, a1, v2);

  static Published.subscript.setter();
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  lazy protocol witness table accessor for type PowerZonesAlertZoneType and conformance PowerZonesAlertZoneType(&lazy protocol witness table cache variable for type PowerZonesAlertZoneType and conformance PowerZonesAlertZoneType, MEMORY[0x277D7E438]);
  v9 = dispatch thunk of static Equatable.== infix(_:_:)();
  v10 = *(v3 + 8);
  v10(v5, v2);
  if ((v9 & 1) == 0)
  {
    PowerZonesEntryViewModel.updateDefaultValues()();
  }

  v10(a1, v2);
  return (v10)(v8, v2);
}

uint64_t PowerZonesEntryViewModel.selectedTargetMode.didset(uint64_t a1)
{
  v2 = v1;
  v65 = a1;
  v3 = type metadata accessor for TargetZone.ZoneType();
  v64 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v5 = &v57 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for PowerZonesAlertZoneType();
  v7 = *(v6 - 8);
  v8 = MEMORY[0x28223BE20](v6);
  v58 = &v57 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x28223BE20](v8);
  v62 = (&v57 - v11);
  v12 = MEMORY[0x28223BE20](v10);
  v14 = (&v57 - v13);
  v15 = MEMORY[0x28223BE20](v12);
  v63 = &v57 - v16;
  v17 = MEMORY[0x28223BE20](v15);
  v60 = &v57 - v18;
  v19 = MEMORY[0x28223BE20](v17);
  v59 = &v57 - v20;
  MEMORY[0x28223BE20](v19);
  v22 = (&v57 - v21);
  swift_getKeyPath();
  swift_getKeyPath();
  v67 = v2;
  static Published.subscript.getter();

  v23 = *(v7 + 88);
  v68 = v6;
  v24 = v23(v22, v6);
  v25 = *MEMORY[0x277D7E428];
  v66 = v7;
  v61 = v5;
  if (v24 == v25)
  {
    v26 = v24;
    (*(v7 + 96))(v22, v68);
    v27 = *v22;
    v57 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSd5value_11WorkoutCore10TargetZoneC0E4TypeO4modetMd);
    v28 = *(v64 + 8);
    v28(v22 + *(v57 + 48), v3);
    swift_getKeyPath();
    swift_getKeyPath();
    static Published.subscript.getter();

    lazy protocol witness table accessor for type PowerZonesAlertZoneType and conformance PowerZonesAlertZoneType(&lazy protocol witness table cache variable for type TargetZone.ZoneType and conformance TargetZone.ZoneType, MEMORY[0x277D7DE80]);
    v29 = dispatch thunk of static Equatable.== infix(_:_:)();
    v28(v5, v3);
    if ((v29 & 1) == 0)
    {
      v30 = v59;
      *v59 = v27;
      swift_getKeyPath();
      swift_getKeyPath();
      static Published.subscript.getter();

      v31 = v66;
      v32 = v68;
      (*(v66 + 104))(v30, v26, v68);
      swift_getKeyPath();
      swift_getKeyPath();
      v33 = v60;
      static Published.subscript.getter();

      swift_getKeyPath();
      swift_getKeyPath();
      v34 = v63;
      (*(v31 + 16))(v63, v30, v32);

      static Published.subscript.setter();
      swift_getKeyPath();
      swift_getKeyPath();
      static Published.subscript.getter();

      lazy protocol witness table accessor for type PowerZonesAlertZoneType and conformance PowerZonesAlertZoneType(&lazy protocol witness table cache variable for type PowerZonesAlertZoneType and conformance PowerZonesAlertZoneType, MEMORY[0x277D7E438]);
      v35 = dispatch thunk of static Equatable.== infix(_:_:)();
      v36 = *(v31 + 8);
      v37 = v36(v34, v32);
      if ((v35 & 1) == 0)
      {
        PowerZonesEntryViewModel.updateDefaultValues()(v37);
      }

      v38 = v68;
      v36(v33, v68);
      return v36(v30, v38);
    }
  }

  else
  {
    (*(v7 + 8))(v22, v68);
  }

  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  v40 = v23(v14, v68);
  if (v40 != *MEMORY[0x277D7E420])
  {
    return (*(v66 + 8))(v14, v68);
  }

  v41 = v40;
  v42 = v66;
  (*(v66 + 96))(v14, v68);
  v43 = *v14;
  v44 = v14[1];
  v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSnySdG5range_11WorkoutCore10TargetZoneC0E4TypeO4modetMd);
  v46 = *(v64 + 8);
  v46(v14 + *(v45 + 48), v3);
  swift_getKeyPath();
  swift_getKeyPath();
  v47 = v61;
  static Published.subscript.getter();

  lazy protocol witness table accessor for type PowerZonesAlertZoneType and conformance PowerZonesAlertZoneType(&lazy protocol witness table cache variable for type TargetZone.ZoneType and conformance TargetZone.ZoneType, MEMORY[0x277D7DE80]);
  v48 = dispatch thunk of static Equatable.== infix(_:_:)();
  result = (v46)(v47, v3);
  if ((v48 & 1) == 0)
  {
    v49 = v62;
    *v62 = v43;
    v49[1] = v44;
    swift_getKeyPath();
    swift_getKeyPath();
    static Published.subscript.getter();

    v50 = v68;
    (*(v42 + 104))(v49, v41, v68);
    swift_getKeyPath();
    swift_getKeyPath();
    v51 = v58;
    static Published.subscript.getter();

    swift_getKeyPath();
    swift_getKeyPath();
    v52 = v63;
    (*(v42 + 16))(v63, v49, v50);

    static Published.subscript.setter();
    swift_getKeyPath();
    swift_getKeyPath();
    static Published.subscript.getter();

    lazy protocol witness table accessor for type PowerZonesAlertZoneType and conformance PowerZonesAlertZoneType(&lazy protocol witness table cache variable for type PowerZonesAlertZoneType and conformance PowerZonesAlertZoneType, MEMORY[0x277D7E438]);
    v53 = dispatch thunk of static Equatable.== infix(_:_:)();
    v54 = *(v42 + 8);
    v55 = v54(v52, v50);
    if ((v53 & 1) == 0)
    {
      PowerZonesEntryViewModel.updateDefaultValues()(v55);
    }

    v56 = v68;
    v54(v51, v68);
    return v54(v62, v56);
  }

  return result;
}

uint64_t PowerZonesEntryViewModel.targetValue.didset(double a1)
{
  v2 = type metadata accessor for PowerZonesAlertZoneType();
  v3 = *(v2 - 8);
  v4 = MEMORY[0x28223BE20](v2);
  v6 = &v25 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = MEMORY[0x28223BE20](v4);
  v29 = &v25 - v8;
  v9 = MEMORY[0x28223BE20](v7);
  v28 = (&v25 - v10);
  MEMORY[0x28223BE20](v9);
  v12 = &v25 - v11;
  v13 = type metadata accessor for TargetZone.ZoneType();
  v14 = *(v13 - 8);
  MEMORY[0x28223BE20](v13);
  v16 = &v25 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  v17 = (*(v3 + 88))(v12, v2);
  if (v17 != *MEMORY[0x277D7E428])
  {
    return (*(v3 + 8))(v12, v2);
  }

  v27 = v17;
  (*(v3 + 96))(v12, v2);
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSd5value_11WorkoutCore10TargetZoneC0E4TypeO4modetMd);
  (*(v14 + 32))(v16, &v12[*(v18 + 48)], v13);
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  v19.n128_f64[0] = v30;
  if (v30 != a1)
  {
    v26 = *(v18 + 48);
    swift_getKeyPath();
    swift_getKeyPath();
    static Published.subscript.getter();

    v20 = v28;
    *v28 = v30;
    (*(v14 + 16))(v20 + v26, v16, v13);
    (*(v3 + 104))(v20, v27, v2);
    swift_getKeyPath();
    swift_getKeyPath();
    static Published.subscript.getter();

    swift_getKeyPath();
    swift_getKeyPath();
    (*(v3 + 16))(v6, v20, v2);

    static Published.subscript.setter();
    swift_getKeyPath();
    swift_getKeyPath();
    static Published.subscript.getter();

    lazy protocol witness table accessor for type PowerZonesAlertZoneType and conformance PowerZonesAlertZoneType(&lazy protocol witness table cache variable for type PowerZonesAlertZoneType and conformance PowerZonesAlertZoneType, MEMORY[0x277D7E438]);
    v21 = dispatch thunk of static Equatable.== infix(_:_:)();
    v22 = *(v3 + 8);
    v23 = v22(v6, v2);
    if ((v21 & 1) == 0)
    {
      PowerZonesEntryViewModel.updateDefaultValues()(v23);
    }

    v22(v29, v2);
    v22(v28, v2);
  }

  return (*(v14 + 8))(v16, v13, v19);
}

double PowerZonesEntryViewModel.targetValue.getter()
{
  return PowerZonesEntryViewModel.targetValue.getter();
}

{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  return v1;
}

uint64_t PowerZonesEntryViewModel.selectedIndex.didset(uint64_t a1)
{
  v2 = type metadata accessor for PowerZonesAlertZoneType();
  v3 = *(v2 - 8);
  v4 = MEMORY[0x28223BE20](v2);
  v6 = &v23 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = MEMORY[0x28223BE20](v4);
  v9 = &v23 - v8;
  v10 = MEMORY[0x28223BE20](v7);
  v12 = &v23 - v11;
  MEMORY[0x28223BE20](v10);
  v14 = &v23 - v13;
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  v15 = (*(v3 + 88))(v14, v2);
  if (v15 != *MEMORY[0x277D7E430])
  {
    return (*(v3 + 8))(v14, v2);
  }

  v16 = v15;
  v23 = v9;
  (*(v3 + 96))(v14, v2);
  v17 = *(v14 + 1);
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  if (v24 == a1)
  {
  }

  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  *v12 = v24;
  *(v12 + 1) = v17;
  (*(v3 + 104))(v12, v16, v2);
  swift_getKeyPath();
  swift_getKeyPath();
  v19 = v23;
  static Published.subscript.getter();

  swift_getKeyPath();
  swift_getKeyPath();
  (*(v3 + 16))(v6, v12, v2);

  static Published.subscript.setter();
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  lazy protocol witness table accessor for type PowerZonesAlertZoneType and conformance PowerZonesAlertZoneType(&lazy protocol witness table cache variable for type PowerZonesAlertZoneType and conformance PowerZonesAlertZoneType, MEMORY[0x277D7E438]);
  v20 = dispatch thunk of static Equatable.== infix(_:_:)();
  v21 = *(v3 + 8);
  v22 = v21(v6, v2);
  if ((v20 & 1) == 0)
  {
    PowerZonesEntryViewModel.updateDefaultValues()(v22);
  }

  v21(v19, v2);
  return v21(v12, v2);
}

uint64_t PowerZonesEntryViewModel.selectedIndex.getter()
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  return v1;
}

uint64_t PowerZonesEntryViewModel.zones.didset(uint64_t a1)
{
  v2 = type metadata accessor for PowerZonesAlertZoneType();
  v3 = *(v2 - 8);
  v4 = MEMORY[0x28223BE20](v2);
  v6 = &v23 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = MEMORY[0x28223BE20](v4);
  v9 = &v23 - v8;
  v10 = MEMORY[0x28223BE20](v7);
  v12 = &v23 - v11;
  MEMORY[0x28223BE20](v10);
  v14 = (&v23 - v13);
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  v15 = (*(v3 + 88))(v14, v2);
  if (v15 != *MEMORY[0x277D7E430])
  {
    return (*(v3 + 8))(v14, v2);
  }

  v16 = v15;
  (*(v3 + 96))(v14, v2);
  v23 = *v14;

  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  if (a1)
  {
    if (v24)
    {
      v18 = _sSasSQRzlE2eeoiySbSayxG_ABtFZ11WorkoutCore16CyclingPowerZoneC_Tt1g5(a1, v24);

      if (v18)
      {
        return result;
      }
    }
  }

  else
  {
    if (!v24)
    {
      return result;
    }
  }

  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  v19 = v24;
  *v12 = v23;
  *(v12 + 1) = v19;
  (*(v3 + 104))(v12, v16, v2);
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  swift_getKeyPath();
  swift_getKeyPath();
  (*(v3 + 16))(v6, v12, v2);

  static Published.subscript.setter();
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  lazy protocol witness table accessor for type PowerZonesAlertZoneType and conformance PowerZonesAlertZoneType(&lazy protocol witness table cache variable for type PowerZonesAlertZoneType and conformance PowerZonesAlertZoneType, MEMORY[0x277D7E438]);
  v20 = dispatch thunk of static Equatable.== infix(_:_:)();
  v21 = *(v3 + 8);
  v22 = v21(v6, v2);
  if ((v20 & 1) == 0)
  {
    PowerZonesEntryViewModel.updateDefaultValues()(v22);
  }

  v21(v9, v2);
  return v21(v12, v2);
}

uint64_t PowerZonesEntryViewModel.zones.getter()
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  return v1;
}

uint64_t PowerZonesEntryViewModel.selectedLowerBound.didset(double a1)
{
  v2 = type metadata accessor for PowerZonesAlertZoneType();
  v3 = *(v2 - 8);
  v4 = MEMORY[0x28223BE20](v2);
  v28 = &v26[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v6 = MEMORY[0x28223BE20](v4);
  v29 = &v26[-v7];
  v8 = MEMORY[0x28223BE20](v6);
  v10 = &v26[-v9];
  MEMORY[0x28223BE20](v8);
  v12 = &v26[-v11];
  v13 = type metadata accessor for TargetZone.ZoneType();
  v14 = *(v13 - 8);
  MEMORY[0x28223BE20](v13);
  v16 = &v26[-((v15 + 15) & 0xFFFFFFFFFFFFFFF0)];
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  v17 = (*(v3 + 88))(v12, v2);
  if (v17 != *MEMORY[0x277D7E420])
  {
    return (*(v3 + 8))(v12, v2);
  }

  v27 = v17;
  (*(v3 + 96))(v12, v2);
  v18 = v12[1];
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSnySdG5range_11WorkoutCore10TargetZoneC0E4TypeO4modetMd);
  (*(v14 + 32))(v16, v12 + *(v19 + 48), v13);
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  v20.n128_f64[0] = v30;
  if (v30 == a1)
  {
    return (*(v14 + 8))(v16, v13, v20);
  }

  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  if (v18 <= v30)
  {
    swift_getKeyPath();
    swift_getKeyPath();
    static Published.subscript.getter();

    v18 = v30 + 5.0;
  }

  v21 = *(v19 + 48);
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  if (v30 <= v18)
  {
    *v10 = v30;
    v10[1] = v18;
    (*(v14 + 16))(v10 + v21, v16, v13);
    (*(v3 + 104))(v10, v27, v2);
    swift_getKeyPath();
    swift_getKeyPath();
    static Published.subscript.getter();

    swift_getKeyPath();
    swift_getKeyPath();
    v23 = v28;
    (*(v3 + 16))(v28, v10, v2);

    static Published.subscript.setter();
    swift_getKeyPath();
    swift_getKeyPath();
    static Published.subscript.getter();

    lazy protocol witness table accessor for type PowerZonesAlertZoneType and conformance PowerZonesAlertZoneType(&lazy protocol witness table cache variable for type PowerZonesAlertZoneType and conformance PowerZonesAlertZoneType, MEMORY[0x277D7E438]);
    v24 = dispatch thunk of static Equatable.== infix(_:_:)();
    v25 = *(v3 + 8);
    v25(v23, v2);
    if ((v24 & 1) == 0)
    {
      PowerZonesEntryViewModel.updateDefaultValues()();
    }

    v25(v29, v2);
    v25(v10, v2);
    return (*(v14 + 8))(v16, v13, v20);
  }

  __break(1u);
  return result;
}

uint64_t PowerZonesEntryViewModel.selectedUpperBound.didset(double a1)
{
  v2 = type metadata accessor for PowerZonesAlertZoneType();
  v3 = *(v2 - 8);
  v4 = MEMORY[0x28223BE20](v2);
  v30 = &v28[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v6 = MEMORY[0x28223BE20](v4);
  v31 = &v28[-v7];
  v8 = MEMORY[0x28223BE20](v6);
  v10 = &v28[-v9];
  MEMORY[0x28223BE20](v8);
  v12 = &v28[-v11];
  v13 = type metadata accessor for TargetZone.ZoneType();
  v14 = *(v13 - 8);
  MEMORY[0x28223BE20](v13);
  v16 = &v28[-((v15 + 15) & 0xFFFFFFFFFFFFFFF0)];
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  v17 = (*(v3 + 88))(v12, v2);
  if (v17 != *MEMORY[0x277D7E420])
  {
    return (*(v3 + 8))(v12, v2);
  }

  v29 = v17;
  (*(v3 + 96))(v12, v2);
  v18 = *v12;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSnySdG5range_11WorkoutCore10TargetZoneC0E4TypeO4modetMd);
  (*(v14 + 32))(v16, v12 + *(v19 + 48), v13);
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  v20.n128_f64[0] = v32;
  if (v32 == a1)
  {
    return (*(v14 + 8))(v16, v13, v20);
  }

  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  if (v32 <= v18)
  {
    swift_getKeyPath();
    swift_getKeyPath();
    static Published.subscript.getter();

    v18 = v32 + -5.0;
  }

  v21 = *(v19 + 48);
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  v23 = v32;
  if (v18 <= v32)
  {
    *v10 = v18;
    v10[1] = v23;
    (*(v14 + 16))(v10 + v21, v16, v13);
    (*(v3 + 104))(v10, v29, v2);
    swift_getKeyPath();
    swift_getKeyPath();
    static Published.subscript.getter();

    swift_getKeyPath();
    swift_getKeyPath();
    v24 = v30;
    (*(v3 + 16))(v30, v10, v2);

    static Published.subscript.setter();
    swift_getKeyPath();
    swift_getKeyPath();
    static Published.subscript.getter();

    lazy protocol witness table accessor for type PowerZonesAlertZoneType and conformance PowerZonesAlertZoneType(&lazy protocol witness table cache variable for type PowerZonesAlertZoneType and conformance PowerZonesAlertZoneType, MEMORY[0x277D7E438]);
    v25 = dispatch thunk of static Equatable.== infix(_:_:)();
    v26 = *(v3 + 8);
    v27 = v26(v24, v2);
    if ((v25 & 1) == 0)
    {
      PowerZonesEntryViewModel.updateDefaultValues()(v27);
    }

    v26(v31, v2);
    v26(v10, v2);
    return (*(v14 + 8))(v16, v13, v20);
  }

  __break(1u);
  return result;
}

size_t PowerZonesEntryViewModel.selectableTypes(canDisable:)(int a1)
{
  v16 = a1;
  v15 = type metadata accessor for PowerZonesAlertZoneType();
  v2 = *(v15 - 8);
  MEMORY[0x28223BE20](v15);
  v4 = &v14 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(v1 + OBJC_IVAR____TtC9WorkoutUI24PowerZonesEntryViewModel_activityMoveMode) == 2)
  {
    goto LABEL_6;
  }

  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  v5 = v17;
  if (!v17)
  {
    goto LABEL_7;
  }

  if (v17 >> 62)
  {
    type metadata accessor for Zone();

    v6 = _bridgeCocoaArray<A>(_:)();
  }

  else
  {

    dispatch thunk of __ContiguousArrayStorageBase.staticElementType.getter();
    type metadata accessor for Zone();
    v6 = v5;
  }

  type metadata accessor for CyclingPowerZonesConfigurationEditor();
  v7 = MEMORY[0x20F306B50](v6);

  if (v7)
  {
LABEL_6:
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy11WorkoutCore23PowerZonesAlertZoneTypeOGMd);
    v8 = *(v2 + 72);
    v9 = *(v2 + 80);
    v10 = swift_allocObject();
    *(v10 + 16) = xmmword_20CB5DA80;
    swift_getKeyPath();
    swift_getKeyPath();
    static Published.subscript.getter();
  }

  else
  {
LABEL_7:
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy11WorkoutCore23PowerZonesAlertZoneTypeOGMd);
    v8 = *(v2 + 72);
    v9 = *(v2 + 80);
    v10 = swift_allocObject();
    *(v10 + 16) = xmmword_20CB5EA80;
    swift_getKeyPath();
    swift_getKeyPath();
    static Published.subscript.getter();

    swift_getKeyPath();
    swift_getKeyPath();
    static Published.subscript.getter();
  }

  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  if (v16)
  {
    swift_getKeyPath();
    swift_getKeyPath();
    static Published.subscript.getter();

    v12 = *(v10 + 16);
    v11 = *(v10 + 24);
    if (v12 >= v11 >> 1)
    {
      v10 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(v11 > 1, v12 + 1, 1, v10);
    }

    *(v10 + 16) = v12 + 1;
    (*(v2 + 32))(v10 + ((v9 + 32) & ~v9) + v8 * v12, v4, v15);
  }

  return v10;
}

uint64_t PowerZonesEntryViewModel.updateDefaultValues()()
{
  v1 = v0;
  v77 = type metadata accessor for TargetZone.ZoneType();
  v2 = *(v77 - 8);
  v3 = MEMORY[0x28223BE20](v77);
  v68 = &v67 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = MEMORY[0x28223BE20](v3);
  v72 = &v67 - v6;
  v7 = MEMORY[0x28223BE20](v5);
  v73 = &v67 - v8;
  MEMORY[0x28223BE20](v7);
  v10 = &v67 - v9;
  v11 = type metadata accessor for PowerZonesAlertZoneType();
  v12 = *(v11 - 8);
  v13 = MEMORY[0x28223BE20](v11);
  v15 = &v67 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = MEMORY[0x28223BE20](v13);
  v18 = &v67 - v17;
  MEMORY[0x28223BE20](v16);
  v20 = (&v67 - v19);
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();
  v21 = v11;

  v22 = (*(v12 + 88))(v20, v11);
  v23 = *MEMORY[0x277D7E428];
  v75 = v10;
  v76 = v2;
  v74 = v18;
  if (v22 == v23)
  {
    (*(v12 + 96))(v20, v11);
    v24 = *v20;
    v25 = v20 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&_sSd5value_11WorkoutCore10TargetZoneC0E4TypeO4modetMd) + 48);
    v26 = v77;
    (*(v2 + 32))(v10, v25, v77);
    swift_getKeyPath();
    v69 = v11;
    swift_getKeyPath();
    static Published.subscript.getter();

    swift_getKeyPath();
    swift_getKeyPath();
    (*(v12 + 16))(v15, v18, v11);

    static Published.subscript.setter();
    v70 = *(v12 + 8);
    v71 = (v12 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    v70(v18, v11);
    v27 = v76;
    v28 = *(v76 + 16);
    v29 = v73;
    v28(v73, v10, v26);
    swift_getKeyPath();
    swift_getKeyPath();
    v30 = v72;
    static Published.subscript.getter();

    swift_getKeyPath();
    swift_getKeyPath();
    v31 = v77;
    v28(v68, v29, v77);

    static Published.subscript.setter();
    PowerZonesEntryViewModel.selectedTargetMode.didset(v30);
    v32 = *(v27 + 8);
    v32(v30, v31);
    v32(v29, v31);
    swift_getKeyPath();
    swift_getKeyPath();
    static Published.subscript.getter();

    v33 = *&v78;
    swift_getKeyPath();
    swift_getKeyPath();
    v78 = v24;

    v21 = v69;
    static Published.subscript.setter();
    PowerZonesEntryViewModel.targetValue.didset(v33);
    v34 = v70;
    v32(v75, v31);
    v35 = v74;
LABEL_5:
    swift_getKeyPath();
    swift_getKeyPath();
    static Published.subscript.getter();

    v49 = PowerZonesAlertZoneType.supportedZoneTypes(for:)(v1 + OBJC_IVAR____TtC9WorkoutUI24PowerZonesEntryViewModel_configurationContext);
    v34(v35, v21);
    *(v1 + OBJC_IVAR____TtC9WorkoutUI24PowerZonesEntryViewModel_selectableTargetModes) = v49;
  }

  if (v22 == *MEMORY[0x277D7E430])
  {
    (*(v12 + 96))(v20, v11);
    v36 = v20[1];
    v67 = *v20;
    v68 = v36;
    swift_getKeyPath();
    swift_getKeyPath();
    v69 = v11;
    v35 = v74;
    static Published.subscript.getter();

    swift_getKeyPath();
    swift_getKeyPath();
    (*(v12 + 16))(v15, v35, v11);

    static Published.subscript.setter();
    v70 = *(v12 + 8);
    v71 = (v12 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    v70(v35, v11);
    swift_getKeyPath();
    swift_getKeyPath();
    static Published.subscript.getter();

    v37 = v78;
    swift_getKeyPath();
    swift_getKeyPath();
    v78 = v67;

    static Published.subscript.setter();
    PowerZonesEntryViewModel.selectedIndex.didset(v37);
    swift_getKeyPath();
    swift_getKeyPath();
    static Published.subscript.getter();

    v38 = v78;
    swift_getKeyPath();
    swift_getKeyPath();
    v78 = v68;

    static Published.subscript.setter();
    PowerZonesEntryViewModel.zones.didset(v38);

    swift_getKeyPath();
    swift_getKeyPath();
    static Published.subscript.getter();

    v39 = objc_allocWithZone(type metadata accessor for PowerZonesAlertTargetZone());
    v40 = PowerZonesAlertTargetZone.init(type:)();
    v41 = *(v1 + OBJC_IVAR____TtC9WorkoutUI24PowerZonesEntryViewModel_powerTargetZone);
    *(v1 + OBJC_IVAR____TtC9WorkoutUI24PowerZonesEntryViewModel_powerTargetZone) = v40;
    v42 = v40;

    dispatch thunk of PowerZonesAlertTargetZone.defaultZonesDidLoad.setter();

    v44 = v75;
    v43 = v76;
    v45 = v77;
    (*(v76 + 104))(v75, *MEMORY[0x277D7DE68], v77);
    swift_getKeyPath();
    swift_getKeyPath();
    v46 = v73;
    static Published.subscript.getter();

    swift_getKeyPath();
    swift_getKeyPath();
    (*(v43 + 16))(v72, v44, v45);

    v21 = v69;
    static Published.subscript.setter();
    PowerZonesEntryViewModel.selectedTargetMode.didset(v46);
    v47 = *(v43 + 8);
    v47(v46, v45);
    v48 = v45;
    v34 = v70;
    v47(v44, v48);
    goto LABEL_5;
  }

  if (v22 == *MEMORY[0x277D7E420])
  {
    (*(v12 + 96))(v20, v11);
    v52 = *v20;
    v51 = v20[1];
    v53 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSnySdG5range_11WorkoutCore10TargetZoneC0E4TypeO4modetMd);
    v54 = v75;
    v55 = v20 + *(v53 + 48);
    v56 = v77;
    (*(v76 + 32))(v75, v55);
    swift_getKeyPath();
    v57 = v11;
    v69 = v11;
    swift_getKeyPath();
    v58 = v74;
    static Published.subscript.getter();

    swift_getKeyPath();
    swift_getKeyPath();
    (*(v12 + 16))(v15, v58, v57);

    static Published.subscript.setter();
    v70 = *(v12 + 8);
    v71 = (v12 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    v70(v58, v57);
    v67 = *(v76 + 16);
    v59 = v73;
    v60 = v54;
    v61 = v56;
    (v67)(v73, v60, v56);
    swift_getKeyPath();
    swift_getKeyPath();
    v62 = v72;
    static Published.subscript.getter();

    v35 = v58;

    swift_getKeyPath();
    swift_getKeyPath();
    (v67)(v68, v59, v61);

    static Published.subscript.setter();
    PowerZonesEntryViewModel.selectedTargetMode.didset(v62);
    v63 = *(v76 + 8);
    v63(v62, v61);
    v63(v59, v61);
    swift_getKeyPath();
    swift_getKeyPath();
    static Published.subscript.getter();

    v64 = *&v78;
    swift_getKeyPath();
    swift_getKeyPath();
    v78 = v52;

    v65 = static Published.subscript.setter();
    PowerZonesEntryViewModel.selectedLowerBound.didset(v65, v64);
    swift_getKeyPath();
    swift_getKeyPath();
    static Published.subscript.getter();

    v66 = *&v78;
    swift_getKeyPath();
    swift_getKeyPath();
    v78 = v51;

    v21 = v69;
    static Published.subscript.setter();
    PowerZonesEntryViewModel.selectedUpperBound.didset(v66);
    v63(v75, v61);
    v34 = v70;
    goto LABEL_5;
  }

  if (v22 == *MEMORY[0x277D7E418])
  {
    swift_getKeyPath();
    swift_getKeyPath();
    v35 = v74;
    static Published.subscript.getter();

    swift_getKeyPath();
    swift_getKeyPath();
    (*(v12 + 16))(v15, v35, v11);

    static Published.subscript.setter();
    v34 = *(v12 + 8);
    v34(v35, v21);
    goto LABEL_5;
  }

  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

uint64_t PowerZonesEntryViewModel.powerZonesDidLoad()()
{
  v1 = v0;
  v2 = type metadata accessor for PowerZonesAlertZoneType();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v18 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v8 = &v18 - v7;
  MEMORY[0x28223BE20](v9);
  v11 = &v18 - v10;
  v12 = OBJC_IVAR____TtC9WorkoutUI24PowerZonesEntryViewModel_powerTargetZone;
  v13 = *(v0 + OBJC_IVAR____TtC9WorkoutUI24PowerZonesEntryViewModel_powerTargetZone);
  dispatch thunk of PowerZonesAlertTargetZone.type.getter();

  if ((*(v3 + 88))(v11, v2) != *MEMORY[0x277D7E430])
  {
    return (*(v3 + 8))(v11, v2);
  }

  (*(v3 + 96))(v11, v2);
  v14 = *(v11 + 1);
  v15 = *(v1 + v12);
  dispatch thunk of PowerZonesAlertTargetZone.type.getter();

  swift_getKeyPath();
  swift_getKeyPath();
  (*(v3 + 16))(v5, v8, v2);

  static Published.subscript.setter();
  (*(v3 + 8))(v8, v2);
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  v16 = v19;
  swift_getKeyPath();
  swift_getKeyPath();
  v19 = v14;

  static Published.subscript.setter();
  PowerZonesEntryViewModel.zones.didset(v16);
}

uint64_t PowerZonesEntryViewModel.deinit()
{
  v1 = OBJC_IVAR____TtC9WorkoutUI24PowerZonesEntryViewModel__target;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVy11WorkoutCore23PowerZonesAlertZoneTypeOGMd);
  v3 = *(*(v2 - 8) + 8);
  v3(v0 + v1, v2);
  v3(v0 + OBJC_IVAR____TtC9WorkoutUI24PowerZonesEntryViewModel__automatic, v2);
  v3(v0 + OBJC_IVAR____TtC9WorkoutUI24PowerZonesEntryViewModel__custom, v2);
  v3(v0 + OBJC_IVAR____TtC9WorkoutUI24PowerZonesEntryViewModel__off, v2);

  v4 = OBJC_IVAR____TtC9WorkoutUI24PowerZonesEntryViewModel_configurationContext;
  v5 = type metadata accessor for AlertConfigurationContext();
  (*(*(v5 - 8) + 8))(v0 + v4, v5);
  v3(v0 + OBJC_IVAR____TtC9WorkoutUI24PowerZonesEntryViewModel__selectedType, v2);
  v6 = OBJC_IVAR____TtC9WorkoutUI24PowerZonesEntryViewModel__selectedTargetMode;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVy11WorkoutCore10TargetZoneC0F4TypeOGMd);
  (*(*(v7 - 8) + 8))(v0 + v6, v7);
  v8 = OBJC_IVAR____TtC9WorkoutUI24PowerZonesEntryViewModel__targetValue;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySdGMd);
  v10 = *(*(v9 - 8) + 8);
  v10(v0 + v8, v9);
  v11 = OBJC_IVAR____TtC9WorkoutUI24PowerZonesEntryViewModel__selectedIndex;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySiGMd);
  (*(*(v12 - 8) + 8))(v0 + v11, v12);
  v13 = OBJC_IVAR____TtC9WorkoutUI24PowerZonesEntryViewModel__zones;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySay11WorkoutCore16CyclingPowerZoneCGSgGMd);
  (*(*(v14 - 8) + 8))(v0 + v13, v14);
  v10(v0 + OBJC_IVAR____TtC9WorkoutUI24PowerZonesEntryViewModel__selectedLowerBound, v9);
  v10(v0 + OBJC_IVAR____TtC9WorkoutUI24PowerZonesEntryViewModel__selectedUpperBound, v9);
  return v0;
}

uint64_t PowerZonesEntryViewModel.__deallocating_deinit()
{
  PowerZonesEntryViewModel.deinit();

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for PowerZonesEntryViewModel()
{
  result = type metadata singleton initialization cache for PowerZonesEntryViewModel;
  if (!type metadata singleton initialization cache for PowerZonesEntryViewModel)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void type metadata completion function for PowerZonesEntryViewModel()
{
  type metadata accessor for Published<PowerZonesAlertZoneType>(319, &lazy cache variable for type metadata for Published<PowerZonesAlertZoneType>, MEMORY[0x277D7E438]);
  if (v0 <= 0x3F)
  {
    type metadata accessor for AlertConfigurationContext();
    if (v1 <= 0x3F)
    {
      type metadata accessor for Published<PowerZonesAlertZoneType>(319, &lazy cache variable for type metadata for Published<TargetZone.ZoneType>, MEMORY[0x277D7DE80]);
      if (v2 <= 0x3F)
      {
        type metadata accessor for Published<Double>(319, &lazy cache variable for type metadata for Published<Double>);
        if (v3 <= 0x3F)
        {
          type metadata accessor for Published<Double>(319, &lazy cache variable for type metadata for Published<Int>);
          if (v4 <= 0x3F)
          {
            type metadata accessor for Published<[CyclingPowerZone]?>();
            if (v5 <= 0x3F)
            {
              swift_updateClassMetadata2();
            }
          }
        }
      }
    }
  }
}

void type metadata accessor for Published<PowerZonesAlertZoneType>(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = type metadata accessor for Published();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void type metadata accessor for Published<Double>(uint64_t a1, unint64_t *a2)
{
  if (!*a2)
  {
    v3 = type metadata accessor for Published();
    if (!v4)
    {
      atomic_store(v3, a2);
    }
  }
}

void type metadata accessor for Published<[CyclingPowerZone]?>()
{
  if (!lazy cache variable for type metadata for Published<[CyclingPowerZone]?>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_sSay11WorkoutCore16CyclingPowerZoneCGSgMd);
    v0 = type metadata accessor for Published();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for Published<[CyclingPowerZone]?>);
    }
  }
}

uint64_t protocol witness for ObservableObject.objectWillChange.getter in conformance PowerZonesEntryViewModel@<X0>(uint64_t *a1@<X8>)
{
  type metadata accessor for PowerZonesEntryViewModel();
  result = ObservableObject<>.objectWillChange.getter();
  *a1 = result;
  return result;
}

uint64_t key path getter for PowerZonesEntryViewModel.selectedTargetMode : PowerZonesEntryViewModel()
{
  return key path getter for PowerZonesEntryViewModel.selectedTargetMode : PowerZonesEntryViewModel();
}

{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();
}

uint64_t key path setter for PowerZonesEntryViewModel.selectedTargetMode : PowerZonesEntryViewModel(uint64_t a1)
{
  v2 = type metadata accessor for TargetZone.ZoneType();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v15 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v8 = &v15 - v7;
  v10 = MEMORY[0x28223BE20](v9);
  v12 = &v15 - v11;
  v16 = *(v3 + 16);
  (v16)(&v15 - v11, a1, v2, v10);
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  swift_getKeyPath();
  swift_getKeyPath();
  v16(v5, v12, v2);

  static Published.subscript.setter();
  PowerZonesEntryViewModel.selectedTargetMode.didset(v8);
  v13 = *(v3 + 8);
  v13(v8, v2);
  return (v13)(v12, v2);
}

double key path getter for PowerZonesEntryViewModel.targetValue : PowerZonesEntryViewModel@<D0>(double *a1@<X8>)
{
  return key path getter for PowerZonesEntryViewModel.targetValue : PowerZonesEntryViewModel(a1);
}

{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  result = v3;
  *a1 = v3;
  return result;
}

uint64_t key path getter for PowerZonesEntryViewModel.selectedIndex : PowerZonesEntryViewModel@<X0>(void *a1@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  *a1 = v3;
  return result;
}

uint64_t key path setter for PowerZonesEntryViewModel.selectedIndex : PowerZonesEntryViewModel()
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  swift_getKeyPath();
  swift_getKeyPath();

  static Published.subscript.setter();
  return PowerZonesEntryViewModel.selectedIndex.didset(v1);
}

uint64_t key path setter for PowerZonesEntryViewModel.targetValue : PowerZonesEntryViewModel(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t (*a7)(uint64_t))
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  swift_getKeyPath();
  swift_getKeyPath();

  v8 = static Published.subscript.setter();
  return a7(v8);
}

uint64_t key path setter for PowerZonesEntryViewModel.target : PowerZonesEntryViewModel(uint64_t a1)
{
  v2 = type metadata accessor for PowerZonesAlertZoneType();
  v3 = *(v2 - 8);
  v4 = MEMORY[0x28223BE20](v2);
  v6 = &v11 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v8 = &v11 - v7;
  v9 = *(v3 + 16);
  v9(&v11 - v7, a1, v2);
  swift_getKeyPath();
  swift_getKeyPath();
  v9(v6, v8, v2);

  static Published.subscript.setter();
  return (*(v3 + 8))(v8, v2);
}

uint64_t lazy protocol witness table accessor for type PowerZonesAlertZoneType and conformance PowerZonesAlertZoneType(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t getEnumTagSinglePayload for TrackEntryView(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 48))
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

uint64_t storeEnumTagSinglePayload for TrackEntryView(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 48) = 1;
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

    *(result + 48) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t closure #1 in TrackEntryView.body.getter@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v44 = a2;
  v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI6ToggleVyAA4TextVGMd);
  v43 = *(v45 - 8);
  MEMORY[0x28223BE20](v45);
  v42 = &v37 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v6 = &v37 - v5;
  if (one-time initialization token for WorkoutUIBundle != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v7 = WorkoutUIBundle.super.isa;
  v49._object = 0xE000000000000000;
  v8._countAndFlagsBits = 0xD000000000000014;
  v8._object = 0x800000020CBA1430;
  v9.value._countAndFlagsBits = 0x617A696C61636F4CLL;
  v9.value._object = 0xEB00000000656C62;
  v10._countAndFlagsBits = 0;
  v10._object = 0xE000000000000000;
  v49._countAndFlagsBits = 0;
  v11 = NSLocalizedString(_:tableName:bundle:value:comment:)(v8, v9, v7, v10, v49);

  v48 = v11;
  v47 = *(a1 + 24);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI5StateVySbGMd);
  State.projectedValue.getter();
  lazy protocol witness table accessor for type String and conformance String();
  Toggle<>.init<A>(_:isOn:)();
  v12 = WorkoutUIBundle.super.isa;
  v50._object = 0xE000000000000000;
  v13._object = 0x800000020CBA1450;
  v13._countAndFlagsBits = 0xD000000000000013;
  v14.value._countAndFlagsBits = 0x617A696C61636F4CLL;
  v14.value._object = 0xEB00000000656C62;
  v15._countAndFlagsBits = 0;
  v15._object = 0xE000000000000000;
  v50._countAndFlagsBits = 0;
  v16 = NSLocalizedString(_:tableName:bundle:value:comment:)(v13, v14, v12, v15, v50);

  v46 = v16;
  v38 = Text.init<A>(_:)();
  v18 = v17;
  v40 = v19;
  v41 = v20;
  v46._countAndFlagsBits = static Color.black.getter();
  v21 = AnyView.init<A>(_:)();
  v22 = static Color.gray.getter();
  KeyPath = swift_getKeyPath();
  v25 = v42;
  v24 = v43;
  v26 = v6;
  v39 = v6;
  v27 = *(v43 + 16);
  v28 = v45;
  v27(v42, v26, v45);
  v29 = v44;
  v27(v44, v25, v28);
  v30 = &v29[*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI6ToggleVyAA4TextVG_AA15ModifiedContentVyAHyAeA21_TraitWritingModifierVyAA017ListRowBackgroundG3KeyVGGAA012_EnvironmentmhI0VyAA5ColorVSgGGtMd) + 48)];
  v31 = v38;
  *v30 = v38;
  *(v30 + 1) = v18;
  v32 = v18;
  v37 = v18;
  v33 = v40;
  LOBYTE(v29) = v40 & 1;
  v30[16] = v40 & 1;
  *(v30 + 3) = v41;
  *(v30 + 4) = v21;
  *(v30 + 5) = KeyPath;
  *(v30 + 6) = v22;
  v34 = v31;
  outlined copy of Text.Storage(v31, v32, v33 & 1);
  v35 = *(v24 + 8);

  v35(v39, v28);
  outlined consume of Text.Storage(v34, v37, v29);

  return (v35)(v25, v28);
}

uint64_t closure #2 in TrackEntryView.body.getter()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI5StateVySbGMd);
  State.wrappedValue.getter();
  type metadata accessor for TrackAlerts();
  swift_allocObject();
  TrackAlerts.init(lapChangeEnabled:)();
  static TrackAlertsStore.save(trackAlerts:activityType:)();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI7BindingVy11WorkoutCore11TrackAlertsCGMd);
  return Binding.wrappedValue.setter();
}

uint64_t protocol witness for View.body.getter in conformance TrackEntryView()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI5GroupVyAA9TupleViewVyAA6ToggleVyAA4TextVG_AA15ModifiedContentVyALyAiA21_TraitWritingModifierVyAA017ListRowBackgroundJ3KeyVGGAA012_EnvironmentpkL0VyAA5ColorVSgGGtGGMd);
  MEMORY[0x28223BE20](v1);
  v3 = &v10[-v2];
  v4 = v0[1];
  v12 = *v0;
  *v13 = v4;
  *&v13[16] = v0[2];
  closure #1 in TrackEntryView.body.getter(&v12, &v10[-v2]);
  v14 = *&v13[8];
  v11 = *&v13[8];
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI5StateVySbGMd);
  State.wrappedValue.getter();
  v10[15] = v15;
  v15 = v12;
  v5 = *&v13[24];
  v6 = swift_allocObject();
  v7 = *v13;
  v6[1] = v12;
  v6[2] = v7;
  v6[3] = *&v13[16];
  outlined init with copy of Transaction(&v15, &v11);

  outlined init with copy of State<Bool>(&v14, &v11);
  lazy protocol witness table accessor for type Group<TupleView<(Toggle<Text>, ModifiedContent<ModifiedContent<Text, _TraitWritingModifier<ListRowBackgroundTraitKey>>, _EnvironmentKeyWritingModifier<Color?>>)>> and conformance <A> Group<A>();
  v8 = v5;
  View.onChange<A>(of:initial:_:)();

  return outlined destroy of Group<TupleView<(Toggle<Text>, ModifiedContent<ModifiedContent<Text, _TraitWritingModifier<ListRowBackgroundTraitKey>>, _EnvironmentKeyWritingModifier<Color?>>)>>(v3);
}

uint64_t outlined init with copy of State<Bool>(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI5StateVySbGMd);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t lazy protocol witness table accessor for type Group<TupleView<(Toggle<Text>, ModifiedContent<ModifiedContent<Text, _TraitWritingModifier<ListRowBackgroundTraitKey>>, _EnvironmentKeyWritingModifier<Color?>>)>> and conformance <A> Group<A>()
{
  result = lazy protocol witness table cache variable for type Group<TupleView<(Toggle<Text>, ModifiedContent<ModifiedContent<Text, _TraitWritingModifier<ListRowBackgroundTraitKey>>, _EnvironmentKeyWritingModifier<Color?>>)>> and conformance <A> Group<A>;
  if (!lazy protocol witness table cache variable for type Group<TupleView<(Toggle<Text>, ModifiedContent<ModifiedContent<Text, _TraitWritingModifier<ListRowBackgroundTraitKey>>, _EnvironmentKeyWritingModifier<Color?>>)>> and conformance <A> Group<A>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI5GroupVyAA9TupleViewVyAA6ToggleVyAA4TextVG_AA15ModifiedContentVyALyAiA21_TraitWritingModifierVyAA017ListRowBackgroundJ3KeyVGGAA012_EnvironmentpkL0VyAA5ColorVSgGGtGGMd);
    lazy protocol witness table accessor for type TupleView<(Toggle<Text>, ModifiedContent<ModifiedContent<Text, _TraitWritingModifier<ListRowBackgroundTraitKey>>, _EnvironmentKeyWritingModifier<Color?>>)> and conformance TupleView<A>();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Group<TupleView<(Toggle<Text>, ModifiedContent<ModifiedContent<Text, _TraitWritingModifier<ListRowBackgroundTraitKey>>, _EnvironmentKeyWritingModifier<Color?>>)>> and conformance <A> Group<A>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type TupleView<(Toggle<Text>, ModifiedContent<ModifiedContent<Text, _TraitWritingModifier<ListRowBackgroundTraitKey>>, _EnvironmentKeyWritingModifier<Color?>>)> and conformance TupleView<A>()
{
  result = lazy protocol witness table cache variable for type TupleView<(Toggle<Text>, ModifiedContent<ModifiedContent<Text, _TraitWritingModifier<ListRowBackgroundTraitKey>>, _EnvironmentKeyWritingModifier<Color?>>)> and conformance TupleView<A>;
  if (!lazy protocol witness table cache variable for type TupleView<(Toggle<Text>, ModifiedContent<ModifiedContent<Text, _TraitWritingModifier<ListRowBackgroundTraitKey>>, _EnvironmentKeyWritingModifier<Color?>>)> and conformance TupleView<A>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI9TupleViewVyAA6ToggleVyAA4TextVG_AA15ModifiedContentVyAJyAgA21_TraitWritingModifierVyAA017ListRowBackgroundI3KeyVGGAA012_EnvironmentojK0VyAA5ColorVSgGGtGMd);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type TupleView<(Toggle<Text>, ModifiedContent<ModifiedContent<Text, _TraitWritingModifier<ListRowBackgroundTraitKey>>, _EnvironmentKeyWritingModifier<Color?>>)> and conformance TupleView<A>);
  }

  return result;
}

uint64_t outlined destroy of Group<TupleView<(Toggle<Text>, ModifiedContent<ModifiedContent<Text, _TraitWritingModifier<ListRowBackgroundTraitKey>>, _EnvironmentKeyWritingModifier<Color?>>)>>(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI5GroupVyAA9TupleViewVyAA6ToggleVyAA4TextVG_AA15ModifiedContentVyALyAiA21_TraitWritingModifierVyAA017ListRowBackgroundJ3KeyVGGAA012_EnvironmentpkL0VyAA5ColorVSgGGtGGMd);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t MirroredStartCurrentView.description.getter(uint64_t a1)
{
  switch(a1)
  {
    case 0:
      return 0xD000000000000022;
    case 1:
      return 0xD000000000000019;
    case 2:
      return 0xD00000000000001DLL;
  }

  _StringGuts.grow(_:)(27);
  MEMORY[0x20F30BC00](0xD000000000000018, 0x800000020CBA1550);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd);
  _print_unlocked<A, B>(_:_:)();
  MEMORY[0x20F30BC00](41, 0xE100000000000000);
  return 0;
}

void *MirroredStartViewModel.currentView.getter()
{
  swift_getKeyPath();
  lazy protocol witness table accessor for type MirroredStartViewModel and conformance MirroredStartViewModel();
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v1 = *(v0 + 24);
  outlined copy of MirroredStartCurrentView(v1);
  return v1;
}

void closure #1 in MirroredStartViewModel.currentView.setter(uint64_t a1, void *a2)
{
  v2 = *(a1 + 24);
  *(a1 + 24) = a2;
  outlined copy of MirroredStartCurrentView(a2);
  outlined consume of MirroredStartCurrentView(v2);
}

uint64_t MirroredStartViewModel.displayingSafetyCheckIn.getter()
{
  swift_getKeyPath();
  lazy protocol witness table accessor for type MirroredStartViewModel and conformance MirroredStartViewModel();
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  return *(v0 + 96);
}

uint64_t key path getter for MirroredStartViewModel.displayingSafetyCheckIn : MirroredStartViewModel@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  lazy protocol witness table accessor for type MirroredStartViewModel and conformance MirroredStartViewModel();
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  *a2 = *(v3 + 96);
  return result;
}

uint64_t MirroredStartViewModel.displayingSafetyCheckIn.setter(uint64_t result)
{
  if (*(v1 + 96) == (result & 1))
  {
    *(v1 + 96) = result & 1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath);
    lazy protocol witness table accessor for type MirroredStartViewModel and conformance MirroredStartViewModel();
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
  }

  return result;
}

id *MirroredStartViewModel.deinit()
{
  outlined consume of MirroredStartCurrentView(v0[3]);

  v1 = OBJC_IVAR____TtC9WorkoutUI22MirroredStartViewModel___observationRegistrar;
  v2 = type metadata accessor for ObservationRegistrar();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  return v0;
}

uint64_t MirroredStartViewModel.__deallocating_deinit()
{
  MirroredStartViewModel.deinit();

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for MirroredStartViewModel()
{
  result = type metadata singleton initialization cache for MirroredStartViewModel;
  if (!type metadata singleton initialization cache for MirroredStartViewModel)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t type metadata completion function for MirroredStartViewModel()
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

uint64_t get_enum_tag_for_layout_string_9WorkoutUI24MirroredStartCurrentViewO(uint64_t *a1)
{
  v1 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t getEnumTagSinglePayload for MirroredStartCurrentView(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFD && *(a1 + 8))
  {
    return (*a1 + 2147483645);
  }

  v3 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 + 1;
  v5 = v3 - 2;
  if (v4 >= 4)
  {
    return v5;
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for MirroredStartCurrentView(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 >= 0x7FFFFFFD)
  {
    *result = 0;
    *result = a2 - 2147483645;
    if (a3 >= 0x7FFFFFFD)
    {
      *(result + 8) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFD)
    {
      *(result + 8) = 0;
    }

    if (a2)
    {
      *result = a2 + 2;
    }
  }

  return result;
}

void *destructiveInjectEnumTag for MirroredStartCurrentView(void *result, int a2)
{
  if (a2 < 0)
  {
    v2 = a2 & 0x7FFFFFFF;
  }

  else
  {
    if (!a2)
    {
      return result;
    }

    v2 = a2 - 1;
  }

  *result = v2;
  return result;
}

unint64_t lazy protocol witness table accessor for type MirroredStartViewModel and conformance MirroredStartViewModel()
{
  result = lazy protocol witness table cache variable for type MirroredStartViewModel and conformance MirroredStartViewModel;
  if (!lazy protocol witness table cache variable for type MirroredStartViewModel and conformance MirroredStartViewModel)
  {
    type metadata accessor for MirroredStartViewModel();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MirroredStartViewModel and conformance MirroredStartViewModel);
  }

  return result;
}

uint64_t static PowerZonesAlertZoneType.defaultTarget(for:)@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v25 = a2;
  v3 = type metadata accessor for TargetZone.ZoneType();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v22 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v24 = &v22 - v8;
  v9 = type metadata accessor for PowerZonesAlertZoneType();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = &v22 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSd5value_11WorkoutCore10TargetZoneC0E4TypeO4modetMd);
  v13 = *(v23 + 48);
  *v12 = 0x405E000000000000;
  (*(v4 + 104))(&v12[v13], *MEMORY[0x277D7DE68], v3);
  v14 = *MEMORY[0x277D7E428];
  v15 = *(v10 + 104);
  v15(v12, v14, v9);
  v16 = PowerZonesAlertZoneType.supportedZoneTypes(for:)(a1);
  if (*(v16 + 16))
  {
    (*(v4 + 16))(v6, v16 + ((*(v4 + 80) + 32) & ~*(v4 + 80)), v3);

    (*(v10 + 8))(v12, v9);
    v17 = *(v4 + 32);
    v18 = v24;
    v17(v24, v6, v3);
    v19 = *(v23 + 48);
    v20 = v25;
    *v25 = 0x405E000000000000;
    v17(&v20[v19], v18, v3);
    return (v15)(v20, v14, v9);
  }

  else
  {

    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  return result;
}

uint64_t PowerZonesAlertZoneType.supportedZoneTypes(for:)(uint64_t a1)
{
  v2 = v1;
  v38 = a1;
  v3 = type metadata accessor for AlertConfigurationContext();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v37 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for ConfigurationType();
  v37 = *(v7 - 8);
  v8 = MEMORY[0x28223BE20](v7);
  v10 = &v37 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v12 = &v37 - v11;
  v13 = type metadata accessor for PowerZonesAlertZoneType();
  v14 = *(v13 - 8);
  MEMORY[0x28223BE20](v13);
  v16 = &v37 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v14 + 16))(v16, v2, v13);
  v17 = (*(v14 + 88))(v16, v13);
  if (v17 == *MEMORY[0x277D7E428])
  {
    (*(v14 + 96))(v16, v13);
    v18 = &_sSd5value_11WorkoutCore10TargetZoneC0E4TypeO4modetMd;
    goto LABEL_3;
  }

  if (v17 == *MEMORY[0x277D7E430])
  {
    (*(v14 + 8))(v16, v13);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy11WorkoutCore10TargetZoneC0G4TypeOGMd);
    v29 = type metadata accessor for TargetZone.ZoneType();
    v30 = *(v29 - 8);
    v31 = (*(v30 + 80) + 32) & ~*(v30 + 80);
    v26 = swift_allocObject();
    *(v26 + 16) = xmmword_20CB5DA70;
    (*(v30 + 104))(v26 + v31, *MEMORY[0x277D7DE68], v29);
    return v26;
  }

  if (v17 == *MEMORY[0x277D7E420])
  {
    (*(v14 + 96))(v16, v13);
    v18 = &_sSnySdG5range_11WorkoutCore10TargetZoneC0E4TypeO4modetMd;
LABEL_3:
    v19 = *(__swift_instantiateConcreteTypeFromMangledNameV2(v18) + 48);
    v20 = type metadata accessor for TargetZone.ZoneType();
    v21 = *(v20 - 8);
    (*(v21 + 8))(&v16[v19], v20);
    (*(v4 + 16))(v6, v38, v3);
    if ((*(v4 + 88))(v6, v3) == *MEMORY[0x277D7E4B8])
    {
      (*(v4 + 96))(v6, v3);
      v22 = v37;
      (*(v37 + 32))(v12, v6, v7);
      (*(v22 + 104))(v10, *MEMORY[0x277D7E110], v7);
      lazy protocol witness table accessor for type ConfigurationType and conformance ConfigurationType(&lazy protocol witness table cache variable for type ConfigurationType and conformance ConfigurationType, MEMORY[0x277D7E118]);
      dispatch thunk of RawRepresentable.rawValue.getter();
      dispatch thunk of RawRepresentable.rawValue.getter();
      v23 = *(v22 + 8);
      v23(v10, v7);
      if (v40 == v39)
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy11WorkoutCore10TargetZoneC0G4TypeOGMd);
        v24 = *(v21 + 72);
        v25 = (*(v21 + 80) + 32) & ~*(v21 + 80);
        v26 = swift_allocObject();
        *(v26 + 16) = xmmword_20CB5DA80;
        v27 = v26 + v25;
        v28 = *(v21 + 104);
        v28(v27, *MEMORY[0x277D7DE50], v20);
        v28(v27 + v24, *MEMORY[0x277D7DE68], v20);
        v23(v12, v7);
        return v26;
      }

      v23(v12, v7);
    }

    else
    {
      (*(v4 + 8))(v6, v3);
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy11WorkoutCore10TargetZoneC0G4TypeOGMd);
    v32 = *(v21 + 72);
    v33 = (*(v21 + 80) + 32) & ~*(v21 + 80);
    v26 = swift_allocObject();
    *(v26 + 16) = xmmword_20CB5DA80;
    v34 = v26 + v33;
    v35 = *(v21 + 104);
    v35(v34, *MEMORY[0x277D7DE50], v20);
    v35(v34 + v32, *MEMORY[0x277D7DE68], v20);
    return v26;
  }

  if (v17 == *MEMORY[0x277D7E418])
  {
    return MEMORY[0x277D84F90];
  }

  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

void one-time initialization function for powerZonesShortDescription()
{
  if (one-time initialization token for WorkoutUIBundle != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v0 = WorkoutUIBundle.super.isa;
  v5._object = 0xE000000000000000;
  v1.value._countAndFlagsBits = 0x617A696C61636F4CLL;
  v1.value._object = 0xEB00000000656C62;
  v2._object = 0x800000020CBA17C0;
  v2._countAndFlagsBits = 0xD00000000000001CLL;
  v3._countAndFlagsBits = 0;
  v3._object = 0xE000000000000000;
  v5._countAndFlagsBits = 0;
  v4 = NSLocalizedString(_:tableName:bundle:value:comment:)(v2, v1, v0, v3, v5);

  static PowerZonesEntryView.powerZonesShortDescription = v4;
}

uint64_t implicit closure #2 in implicit closure #1 in PowerZonesEntryView.init(powerZonesAlertTargetZone:activityType:dataModel:configurationContext:formattingManager:)()
{
  v0 = type metadata accessor for PowerZonesAlertZoneType();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v7 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for PowerZonesEntryView();
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  if ((*(v1 + 88))(v3, v0) != *MEMORY[0x277D7E430])
  {
    return (*(v1 + 8))(v3, v0);
  }

  (*(v1 + 96))(v3, v0);
  v4 = *(v3 + 1);
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  v5 = v8;
  swift_getKeyPath();
  swift_getKeyPath();
  v8 = v4;

  static Published.subscript.setter();
  PowerZonesEntryViewModel.zones.didset(v5);
}

uint64_t type metadata accessor for PowerZonesEntryView()
{
  result = type metadata singleton initialization cache for PowerZonesEntryView;
  if (!type metadata singleton initialization cache for PowerZonesEntryView)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t PowerZonesEntryView.body.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = type metadata accessor for PowerZonesEntryView();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v19[1] = v5;
  v6 = v19 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for PowerZonesAlertZoneType();
  v8 = *(v7 - 8);
  v22 = v7;
  v23 = v8;
  MEMORY[0x28223BE20](v7);
  v10 = v19 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI5GroupVyAA9TupleViewVyAA0E0PAAE11pickerStyleyQrqd__AA06PickerG0Rd__lFQOyAA0H0VyAA4TextV11WorkoutCore23PowerZonesAlertZoneTypeOAA0H7BuilderV7ContentVyAP_AA7ForEachVySayAPGApA09_DisabledhR0VyAA0H6OptionVyApMGGGGG_AA06InlinehG0VQo__AgAEAHyQrqd__AaIRd__lFQOyAKyAmN06TargetO0C0oP0OAVySayA11_GA11_AMGG_A6_Qo_SgAA7SectionVyAM0jB00L16NavigationButtonVAA05EmptyE0VGSgA18_yAmgAEAHyQrqd__AaIRd__lFQOyAKyA23_SiAVySnySiGSiAA6HStackVyAEyAA08ModifiedR0VyAgAE20accessibilityElement8childrenQrAA26AccessibilityChildBehaviorV_tFQOyA30_yAA5ImageVAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGG_Qo_AA31AccessibilityAttachmentModifierVG_A30_yAA6SpacerVAA12_FrameLayoutVGA2MtGGGG_A6_Qo_A23_GSgA18_yAmEyA21__A21_tGA23_GSgtGGMd);
  MEMORY[0x28223BE20](v21);
  v12 = v19 - v11;
  closure #1 in PowerZonesEntryView.body.getter(v1, v19 - v11);
  v20 = v1;
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  outlined init with copy of PowerZonesEntryView(v1, v6);
  v13 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v14 = swift_allocObject();
  outlined init with take of PowerZonesEntryView(v6, v14 + v13);
  lazy protocol witness table accessor for type Group<TupleView<(<<opaque return type of View.pickerStyle<A>(_:)>>.0, (<<opaque return type of View.pickerStyle<A>(_:)>>.0)?, Section<Text, PowerNavigationButton, EmptyView>?, Section<Text, <<opaque return type of View.pickerStyle<A>(_:)>>.0, EmptyView>?, Section<Text, TupleView<(PowerNavigationButton, PowerNavigationButton)>, EmptyView>?)>> and conformance <A> Group<A>();
  lazy protocol witness table accessor for type ConfigurationType and conformance ConfigurationType(&lazy protocol witness table cache variable for type PowerZonesAlertZoneType and conformance PowerZonesAlertZoneType, MEMORY[0x277D7E438]);
  v15 = v22;
  View.onChange<A>(of:initial:_:)();

  (*(v23 + 8))(v10, v15);
  outlined destroy of Group<TupleView<(<<opaque return type of View.pickerStyle<A>(_:)>>.0, (<<opaque return type of View.pickerStyle<A>(_:)>>.0)?, Section<Text, PowerNavigationButton, EmptyView>?, Section<Text, <<opaque return type of View.pickerStyle<A>(_:)>>.0, EmptyView>?, Section<Text, TupleView<(PowerNavigationButton, PowerNavigationButton)>, EmptyView>?)>>(v12, &_s7SwiftUI5GroupVyAA9TupleViewVyAA0E0PAAE11pickerStyleyQrqd__AA06PickerG0Rd__lFQOyAA0H0VyAA4TextV11WorkoutCore23PowerZonesAlertZoneTypeOAA0H7BuilderV7ContentVyAP_AA7ForEachVySayAPGApA09_DisabledhR0VyAA0H6OptionVyApMGGGGG_AA06InlinehG0VQo__AgAEAHyQrqd__AaIRd__lFQOyAKyAmN06TargetO0C0oP0OAVySayA11_GA11_AMGG_A6_Qo_SgAA7SectionVyAM0jB00L16NavigationButtonVAA05EmptyE0VGSgA18_yAmgAEAHyQrqd__AaIRd__lFQOyAKyA23_SiAVySnySiGSiAA6HStackVyAEyAA08ModifiedR0VyAgAE20accessibilityElement8childrenQrAA26AccessibilityChildBehaviorV_tFQOyA30_yAA5ImageVAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGG_Qo_AA31AccessibilityAttachmentModifierVG_A30_yAA6SpacerVAA12_FrameLayoutVGA2MtGGGG_A6_Qo_A23_GSgA18_yAmEyA21__A21_tGA23_GSgtGGMd);
  outlined init with copy of PowerZonesEntryView(v20, v6);
  v16 = swift_allocObject();
  outlined init with take of PowerZonesEntryView(v6, v16 + v13);
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyAA4ViewPAAE8onChange2of7initial_Qrqd___SbyyctSQRd__lFQOyAA5GroupVyAA05TupleE0VyAeAE11pickerStyleyQrqd__AA06PickerM0Rd__lFQOyAA0N0VyAA4TextV11WorkoutCore23PowerZonesAlertZoneTypeOAA0N7BuilderV0D0VyAU_AA7ForEachVySayAUGAuA09_DisablednD0VyAA0N6OptionVyAuRGGGGG_AA06InlinenM0VQo__AeAEAMyQrqd__AaNRd__lFQOyAPyArS06TargetU0C0uV0OA_ySayA16_GA16_ARGG_A11_Qo_SgAA7SectionVyAR0pB00R16NavigationButtonVAA05EmptyE0VGSgA23_yAreAEAMyQrqd__AaNRd__lFQOyAPyA28_SiA_ySnySiGSiAA6HStackVyALyACyAeAE20accessibilityElement8childrenQrAA26AccessibilityChildBehaviorV_tFQOyACyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGG_Qo_AA31AccessibilityAttachmentModifierVG_ACyAA6SpacerVAA12_FrameLayoutVGA2RtGGGG_A11_Qo_A28_GSgA23_yArLyA26__A26_tGA28_GSgtGG_AUQo_AA25_AppearanceActionModifierVGMd);
  v18 = (a1 + *(result + 36));
  *v18 = 0;
  v18[1] = 0;
  v18[2] = partial apply for closure #3 in PowerZonesEntryView.body.getter;
  v18[3] = v16;
  return result;
}

uint64_t closure #1 in PowerZonesEntryView.body.getter@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v168 = a2;
  v165 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI7SectionVyAA4TextVAA9TupleViewVy07WorkoutB021PowerNavigationButtonV_AJtGAA05EmptyF0VGMd);
  v164 = *(v165 - 8);
  MEMORY[0x28223BE20](v165);
  v150 = &v140 - v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI7SectionVyAA4TextVAA9TupleViewVy07WorkoutB021PowerNavigationButtonV_AJtGAA05EmptyF0VGSgMd);
  MEMORY[0x28223BE20](v4 - 8);
  v167 = &v140 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v180 = &v140 - v7;
  v172 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI7SectionVyAA4TextVAA4ViewPAAE11pickerStyleyQrqd__AA06PickerG0Rd__lFQOyAA0H0VyAA05EmptyE0VSiAA7ForEachVySnySiGSiAA6HStackVyAA05TupleE0VyAA15ModifiedContentVyAgAE20accessibilityElement8childrenQrAA26AccessibilityChildBehaviorV_tFQOyAVyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGG_Qo_AA0s10AttachmentZ0VG_AVyAA6SpacerVAA12_FrameLayoutVGA2EtGGGG_AA06InlinehG0VQo_AMGMd);
  v171 = *(v172 - 8);
  MEMORY[0x28223BE20](v172);
  v140 = &v140 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI7SectionVyAA4TextVAA4ViewPAAE11pickerStyleyQrqd__AA06PickerG0Rd__lFQOyAA0H0VyAA05EmptyE0VSiAA7ForEachVySnySiGSiAA6HStackVyAA05TupleE0VyAA15ModifiedContentVyAgAE20accessibilityElement8childrenQrAA26AccessibilityChildBehaviorV_tFQOyAVyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGG_Qo_AA0s10AttachmentZ0VG_AVyAA6SpacerVAA12_FrameLayoutVGA2EtGGGG_AA06InlinehG0VQo_AMGSgMd);
  MEMORY[0x28223BE20](v9 - 8);
  v166 = &v140 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v181 = &v140 - v12;
  v162 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI7SectionVyAA4TextV07WorkoutB021PowerNavigationButtonVAA9EmptyViewVGMd);
  v161 = *(v162 - 8);
  MEMORY[0x28223BE20](v162);
  v149 = &v140 - v13;
  v175 = type metadata accessor for PowerZonesAlertZoneType();
  v173 = *(v175 - 8);
  MEMORY[0x28223BE20](v175);
  v170 = &v140 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v160 = &v140 - v16;
  MEMORY[0x28223BE20](v17);
  v148 = &v140 - v18;
  MEMORY[0x28223BE20](v19);
  v159 = &v140 - v20;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI7SectionVyAA4TextV07WorkoutB021PowerNavigationButtonVAA9EmptyViewVGSgMd);
  MEMORY[0x28223BE20](v21 - 8);
  v179 = &v140 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v23);
  v185 = &v140 - v24;
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI7BindingVy11WorkoutCore10TargetZoneC0G4TypeOGMd);
  MEMORY[0x28223BE20](v25 - 8);
  v144 = &v140 - v26;
  v147 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI6PickerVyAA4TextV11WorkoutCore10TargetZoneC0H4TypeOAA7ForEachVySayAJGAjEGGMd);
  v146 = *(v147 - 8);
  MEMORY[0x28223BE20](v147);
  v145 = &v140 - v27;
  v158 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI4ViewPAAE11pickerStyleyQrqd__AA06PickerE0Rd__lFQOyAA0F0VyAA4TextV11WorkoutCore10TargetZoneC0K4TypeOAA7ForEachVySayANGAnIGG_AA06InlinefE0VQo_Md);
  v157 = *(v158 - 8);
  MEMORY[0x28223BE20](v158);
  v143 = &v140 - v28;
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI4ViewPAAE11pickerStyleyQrqd__AA06PickerE0Rd__lFQOyAA0F0VyAA4TextV11WorkoutCore10TargetZoneC0K4TypeOAA7ForEachVySayANGAnIGG_AA06InlinefE0VQo_SgMd);
  MEMORY[0x28223BE20](v29 - 8);
  v184 = &v140 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v31);
  v183 = &v140 - v32;
  v169 = type metadata accessor for InlinePickerStyle();
  v182 = *(v169 - 8);
  MEMORY[0x28223BE20](v169);
  v34 = &v140 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI7BindingVy11WorkoutCore23PowerZonesAlertZoneTypeOGMd);
  MEMORY[0x28223BE20](v35 - 8);
  v176 = &v140 - v36;
  v155 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI6PickerVyAA4TextV11WorkoutCore23PowerZonesAlertZoneTypeOAA0C7BuilderV7ContentVyAH_AA7ForEachVySayAHGAhA09_DisabledcM0VyAA0C6OptionVyAhEGGGGGMd);
  v156 = *(v155 - 8);
  MEMORY[0x28223BE20](v155);
  v38 = &v140 - v37;
  v178 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI4ViewPAAE11pickerStyleyQrqd__AA06PickerE0Rd__lFQOyAA0F0VyAA4TextV11WorkoutCore23PowerZonesAlertZoneTypeOAA0F7BuilderV7ContentVyAL_AA7ForEachVySayALGAlA09_DisabledfP0VyAA0F6OptionVyAlIGGGGG_AA06InlinefE0VQo_Md);
  v163 = *(v178 - 8);
  MEMORY[0x28223BE20](v178);
  v177 = &v140 - ((v39 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v40);
  v42 = &v140 - v41;
  v43 = type metadata accessor for AlertConfigurationContext();
  v44 = *(v43 - 8);
  MEMORY[0x28223BE20](v43);
  v46 = &v140 - ((v45 + 15) & 0xFFFFFFFFFFFFFFF0);
  v47 = (a1 + *(type metadata accessor for PowerZonesEntryView() + 32));
  v48 = v47[1];
  (*(v44 + 104))(v46, *MEMORY[0x277D7E4C0], v43);
  v49 = static AlertConfigurationContext.== infix(_:_:)();
  (*(v44 + 8))(v46, v43);
  v50 = PowerZonesEntryViewModel.selectableTypes(canDisable:)(v49 & 1);
  v154 = LocalizedStringKey.init(stringLiteral:)();
  v153 = v51;
  v151 = v52;
  v152 = v53;
  v54 = *v47;
  v55 = type metadata accessor for PowerZonesEntryViewModel();
  v56 = lazy protocol witness table accessor for type ConfigurationType and conformance ConfigurationType(&lazy protocol witness table cache variable for type PowerZonesEntryViewModel and conformance PowerZonesEntryViewModel, type metadata accessor for PowerZonesEntryViewModel);
  v142 = v54;
  v141 = v55;
  MEMORY[0x20F308920](v54, v48, v55, v56);
  swift_getKeyPath();
  ObservedObject.Wrapper.subscript.getter();

  v186 = v50;
  v187 = a1;
  v174 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI7ForEachVySay11WorkoutCore23PowerZonesAlertZoneTypeOGAfA22_DisabledPickerContentVyAA0M6OptionVyAfA4TextVGGGMd);
  lazy protocol witness table accessor for type ConfigurationType and conformance ConfigurationType(&lazy protocol witness table cache variable for type PowerZonesAlertZoneType and conformance PowerZonesAlertZoneType, MEMORY[0x277D7E438]);
  lazy protocol witness table accessor for type ForEach<[PowerZonesAlertZoneType], PowerZonesAlertZoneType, _DisabledPickerContent<PickerOption<PowerZonesAlertZoneType, Text>>> and conformance <> ForEach<A, B, C>();
  v57 = v175;
  Picker<>.init<A>(_:selection:content:)();

  InlinePickerStyle.init()();
  lazy protocol witness table accessor for type TupleView<(<<opaque return type of View.pickerStyle<A>(_:)>>.0, (<<opaque return type of View.pickerStyle<A>(_:)>>.0)?, Section<Text, PowerNavigationButton, EmptyView>?, Section<Text, <<opaque return type of View.pickerStyle<A>(_:)>>.0, EmptyView>?, Section<Text, TupleView<(PowerNavigationButton, PowerNavigationButton)>, EmptyView>?)> and conformance TupleView<A>(&lazy protocol witness table cache variable for type Picker<Text, PowerZonesAlertZoneType, PickerBuilder<PowerZonesAlertZoneType>.Content<ForEach<[PowerZonesAlertZoneType], PowerZonesAlertZoneType, _DisabledPickerContent<PickerOption<PowerZonesAlertZoneType, Text>>>>> and conformance Picker<A, B, C>, &_s7SwiftUI6PickerVyAA4TextV11WorkoutCore23PowerZonesAlertZoneTypeOAA0C7BuilderV7ContentVyAH_AA7ForEachVySayAHGAhA09_DisabledcM0VyAA0C6OptionVyAhEGGGGGMd);
  v176 = v42;
  v58 = v169;
  v59 = v155;
  View.pickerStyle<A>(_:)();
  v60 = *(v182 + 8);
  v154 = v34;
  v182 += 8;
  v60(v34, v58);
  (*(v156 + 8))(v38, v59);
  if (*(*(v48 + OBJC_IVAR____TtC9WorkoutUI24PowerZonesEntryViewModel_selectableTargetModes) + 16) < 2uLL)
  {
    v71 = 1;
    v72 = v183;
    v73 = v158;
    v74 = v157;
  }

  else
  {
    v156 = LocalizedStringKey.init(stringLiteral:)();
    v155 = v61;
    v153 = v62;
    MEMORY[0x20F308920](v142, v48, v141, v56);
    swift_getKeyPath();
    ObservedObject.Wrapper.subscript.getter();

    MEMORY[0x28223BE20](v63);
    type metadata accessor for TargetZone.ZoneType();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI7ForEachVySay11WorkoutCore10TargetZoneC0H4TypeOGAhA4TextVGMd);
    lazy protocol witness table accessor for type ConfigurationType and conformance ConfigurationType(&lazy protocol witness table cache variable for type TargetZone.ZoneType and conformance TargetZone.ZoneType, MEMORY[0x277D7DE80]);
    lazy protocol witness table accessor for type ForEach<[TargetZone.ZoneType], TargetZone.ZoneType, Text> and conformance <> ForEach<A, B, C>();
    v64 = v145;
    v57 = v175;
    Picker<>.init(_:selection:content:)();
    v65 = v154;
    InlinePickerStyle.init()();
    lazy protocol witness table accessor for type TupleView<(<<opaque return type of View.pickerStyle<A>(_:)>>.0, (<<opaque return type of View.pickerStyle<A>(_:)>>.0)?, Section<Text, PowerNavigationButton, EmptyView>?, Section<Text, <<opaque return type of View.pickerStyle<A>(_:)>>.0, EmptyView>?, Section<Text, TupleView<(PowerNavigationButton, PowerNavigationButton)>, EmptyView>?)> and conformance TupleView<A>(&lazy protocol witness table cache variable for type Picker<Text, TargetZone.ZoneType, ForEach<[TargetZone.ZoneType], TargetZone.ZoneType, Text>> and conformance Picker<A, B, C>, &_s7SwiftUI6PickerVyAA4TextV11WorkoutCore10TargetZoneC0H4TypeOAA7ForEachVySayAJGAjEGGMd);
    v66 = v143;
    v67 = v147;
    View.pickerStyle<A>(_:)();
    v60(v65, v58);
    (*(v146 + 8))(v64, v67);
    v68 = v157;
    v69 = v183;
    v70 = v158;
    (*(v157 + 32))(v183, v66, v158);
    v71 = 0;
    v72 = v69;
    v73 = v70;
    v74 = v68;
  }

  (*(v74 + 56))(v72, v71, 1, v73);
  swift_getKeyPath();
  swift_getKeyPath();
  v75 = v159;
  static Published.subscript.getter();

  v76 = v173;
  v182 = *(v173 + 88);
  v77 = (v182)(v75, v57);
  v78 = v170;
  v79 = v162;
  if (v77 == *MEMORY[0x277D7E428])
  {
    (*(v76 + 96))(v75, v57);
    v80 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_sSd5value_11WorkoutCore10TargetZoneC0E4TypeO4modetMd) + 48);
    v81 = type metadata accessor for TargetZone.ZoneType();
    (*(*(v81 - 8) + 8))(&v75[v80], v81);
    swift_getKeyPath();
    swift_getKeyPath();
    v82 = v148;
    static Published.subscript.getter();

    v83 = PowerZonesAlertZoneType.displayString.getter();
    v85 = v84;
    v86 = *(v76 + 8);
    (v86)(v82, v57);
    v192._countAndFlagsBits = v83;
    v192._object = v85;
    lazy protocol witness table accessor for type String and conformance String();
    v192._countAndFlagsBits = Text.init<A>(_:)();
    v192._object = v87;
    v193 = v88 & 1;
    v194 = v89;
    MEMORY[0x28223BE20](v192._countAndFlagsBits);
    lazy protocol witness table accessor for type PowerNavigationButton and conformance PowerNavigationButton();
    v90 = v149;
    Section<>.init(header:content:)();
    v91 = v161;
    v92 = v185;
    v161[4](v185, v90, v79);
    v93 = 0;
  }

  else
  {
    v86 = *(v76 + 8);
    (v86)(v75, v57);
    v93 = 1;
    v92 = v185;
    v91 = v161;
  }

  v94 = v91[7];
  v95 = 1;
  (v94)(v92, v93, 1, v79);
  swift_getKeyPath();
  swift_getKeyPath();
  v96 = v160;
  static Published.subscript.getter();

  v97 = (v182)(v96, v57);
  v98 = *MEMORY[0x277D7E430];
  (v86)(v96, v57);
  v99 = v86;
  if (v97 == v98)
  {
    swift_getKeyPath();
    swift_getKeyPath();
    static Published.subscript.getter();

    if (v192._countAndFlagsBits)
    {
      swift_getKeyPath();
      swift_getKeyPath();
      v162 = v48;
      static Published.subscript.getter();

      countAndFlagsBits = v192._countAndFlagsBits;
      if (!v192._countAndFlagsBits)
      {
        goto LABEL_14;
      }

      if (v192._countAndFlagsBits >> 62)
      {
        type metadata accessor for Zone();

        v101 = _bridgeCocoaArray<A>(_:)();
      }

      else
      {

        dispatch thunk of __ContiguousArrayStorageBase.staticElementType.getter();
        type metadata accessor for Zone();
        v101 = countAndFlagsBits;
      }

      type metadata accessor for CyclingPowerZonesConfigurationEditor();
      v102 = MEMORY[0x20F306B50](v101);

      if (v102)
      {

        v95 = 1;
        v57 = v175;
      }

      else
      {
LABEL_14:
        v161 = v86;
        LocalizedStringKey.init(stringLiteral:)();
        if (one-time initialization token for WorkoutUIBundle != -1)
        {
          swift_once();
        }

        swift_beginAccess();
        v103 = WorkoutUIBundle.super.isa;
        v192._countAndFlagsBits = Text.init(_:tableName:bundle:comment:)();
        v192._object = v104;
        v193 = v105 & 1;
        v194 = v106;
        MEMORY[0x28223BE20](v192._countAndFlagsBits);
        __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI4ViewPAAE11pickerStyleyQrqd__AA06PickerE0Rd__lFQOyAA0F0VyAA05EmptyC0VSiAA7ForEachVySnySiGSiAA6HStackVyAA05TupleC0VyAA15ModifiedContentVyAcAE20accessibilityElement8childrenQrAA26AccessibilityChildBehaviorV_tFQOyARyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGG_Qo_AA0q10AttachmentX0VG_ARyAA6SpacerVAA12_FrameLayoutVGAA4TextVA14_tGGGG_AA06InlinefE0VQo_Md);
        v107 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI6PickerVyAA9EmptyViewVSiAA7ForEachVySnySiGSiAA6HStackVyAA05TupleE0VyAA15ModifiedContentVyAA0E0PAAE20accessibilityElement8childrenQrAA26AccessibilityChildBehaviorV_tFQOyANyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGG_Qo_AA0o10AttachmentV0VG_ANyAA6SpacerVAA12_FrameLayoutVGAA4TextVA12_tGGGGMd);
        v108 = lazy protocol witness table accessor for type TupleView<(<<opaque return type of View.pickerStyle<A>(_:)>>.0, (<<opaque return type of View.pickerStyle<A>(_:)>>.0)?, Section<Text, PowerNavigationButton, EmptyView>?, Section<Text, <<opaque return type of View.pickerStyle<A>(_:)>>.0, EmptyView>?, Section<Text, TupleView<(PowerNavigationButton, PowerNavigationButton)>, EmptyView>?)> and conformance TupleView<A>(&lazy protocol witness table cache variable for type Picker<EmptyView, Int, ForEach<Range<Int>, Int, HStack<TupleView<(ModifiedContent<<<opaque return type of View.accessibilityElement(children:)>>.0, AccessibilityAttachmentModifier>, ModifiedContent<Spacer, _FrameLayout>, Text, Text)>>>> and conformance Picker<A, B, C>, &_s7SwiftUI6PickerVyAA9EmptyViewVSiAA7ForEachVySnySiGSiAA6HStackVyAA05TupleE0VyAA15ModifiedContentVyAA0E0PAAE20accessibilityElement8childrenQrAA26AccessibilityChildBehaviorV_tFQOyANyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGG_Qo_AA0o10AttachmentV0VG_ANyAA6SpacerVAA12_FrameLayoutVGAA4TextVA12_tGGGGMd);
        v188 = v107;
        v189 = v169;
        v190 = v108;
        v191 = MEMORY[0x277CDDDA0];
        swift_getOpaqueTypeConformance2();
        v109 = v140;
        Section<>.init(header:content:)();

        (*(v171 + 32))(v181, v109, v172);
        v95 = 0;
        v78 = v170;
        v57 = v175;
        v99 = v161;
      }
    }

    else
    {
      v95 = 1;
    }
  }

  (*(v171 + 56))(v181, v95, 1, v172);
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  if ((v182)(v78, v57) == *MEMORY[0x277D7E420])
  {
    (*(v173 + 96))(v78, v57);
    v110 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_sSnySdG5range_11WorkoutCore10TargetZoneC0E4TypeO4modetMd) + 48);
    v111 = type metadata accessor for TargetZone.ZoneType();
    v112 = (*(*(v111 - 8) + 8))(&v78[v110], v111);
    MEMORY[0x28223BE20](v112);
    v113 = v164;
    if (one-time initialization token for WorkoutUIBundle != -1)
    {
      swift_once();
    }

    swift_beginAccess();
    v114 = WorkoutUIBundle.super.isa;
    v195._object = 0xE000000000000000;
    v115.value._countAndFlagsBits = 0x617A696C61636F4CLL;
    v115.value._object = 0xEB00000000656C62;
    v116._object = 0x800000020CB94530;
    v116._countAndFlagsBits = 0xD00000000000002ALL;
    v117._countAndFlagsBits = 0;
    v117._object = 0xE000000000000000;
    v195._countAndFlagsBits = 0;
    v118 = NSLocalizedString(_:tableName:bundle:value:comment:)(v116, v115, v114, v117, v195);

    v192 = v118;
    lazy protocol witness table accessor for type String and conformance String();
    v192._countAndFlagsBits = Text.init<A>(_:)();
    v192._object = v119;
    v193 = v120 & 1;
    v194 = v121;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI9TupleViewVy07WorkoutB021PowerNavigationButtonV_AFtGMd);
    lazy protocol witness table accessor for type TupleView<(<<opaque return type of View.pickerStyle<A>(_:)>>.0, (<<opaque return type of View.pickerStyle<A>(_:)>>.0)?, Section<Text, PowerNavigationButton, EmptyView>?, Section<Text, <<opaque return type of View.pickerStyle<A>(_:)>>.0, EmptyView>?, Section<Text, TupleView<(PowerNavigationButton, PowerNavigationButton)>, EmptyView>?)> and conformance TupleView<A>(&lazy protocol witness table cache variable for type TupleView<(PowerNavigationButton, PowerNavigationButton)> and conformance TupleView<A>, &_s7SwiftUI9TupleViewVy07WorkoutB021PowerNavigationButtonV_AFtGMd);
    v122 = v150;
    Section<>.init(header:content:)();
    v123 = v180;
    v124 = v122;
    v125 = v165;
    (*(v113 + 32))(v180, v124, v165);
    v126 = 0;
  }

  else
  {
    (v99)(v78, v57);
    v126 = 1;
    v123 = v180;
    v125 = v165;
    v113 = v164;
  }

  (*(v113 + 56))(v123, v126, 1, v125);
  v127 = v163;
  v128 = *(v163 + 16);
  v129 = v177;
  v130 = v178;
  v128(v177, v176, v178);
  outlined init with copy of (<<opaque return type of View.pickerStyle<A>(_:)>>.0)?(v183, v184, &_s7SwiftUI4ViewPAAE11pickerStyleyQrqd__AA06PickerE0Rd__lFQOyAA0F0VyAA4TextV11WorkoutCore10TargetZoneC0K4TypeOAA7ForEachVySayANGAnIGG_AA06InlinefE0VQo_SgMd);
  v131 = v179;
  outlined init with copy of Section<Text, PowerNavigationButton, EmptyView>?(v185, v179, &_s7SwiftUI7SectionVyAA4TextV07WorkoutB021PowerNavigationButtonVAA9EmptyViewVGSgMd);
  v132 = v181;
  v133 = v166;
  outlined init with copy of (<<opaque return type of View.pickerStyle<A>(_:)>>.0)?(v181, v166, &_s7SwiftUI7SectionVyAA4TextVAA4ViewPAAE11pickerStyleyQrqd__AA06PickerG0Rd__lFQOyAA0H0VyAA05EmptyE0VSiAA7ForEachVySnySiGSiAA6HStackVyAA05TupleE0VyAA15ModifiedContentVyAgAE20accessibilityElement8childrenQrAA26AccessibilityChildBehaviorV_tFQOyAVyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGG_Qo_AA0s10AttachmentZ0VG_AVyAA6SpacerVAA12_FrameLayoutVGA2EtGGGG_AA06InlinehG0VQo_AMGSgMd);
  v134 = v167;
  outlined init with copy of Section<Text, PowerNavigationButton, EmptyView>?(v123, v167, &_s7SwiftUI7SectionVyAA4TextVAA9TupleViewVy07WorkoutB021PowerNavigationButtonV_AJtGAA05EmptyF0VGSgMd);
  v135 = v168;
  v128(v168, v129, v130);
  v136 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI4ViewPAAE11pickerStyleyQrqd__AA06PickerE0Rd__lFQOyAA0F0VyAA4TextV11WorkoutCore23PowerZonesAlertZoneTypeOAA0F7BuilderV7ContentVyAL_AA7ForEachVySayALGAlA09_DisabledfP0VyAA0F6OptionVyAlIGGGGG_AA06InlinefE0VQo__AcAEADyQrqd__AaERd__lFQOyAGyAiJ06TargetM0C0mN0OARySayA7_GA7_AIGG_A2_Qo_SgAA7SectionVyAI0hB00J16NavigationButtonVAA05EmptyC0VGSgA14_yAicAEADyQrqd__AaERd__lFQOyAGyA19_SiARySnySiGSiAA6HStackVyAA05TupleC0VyAA08ModifiedP0VyAcAE20accessibilityElement8childrenQrAA26AccessibilityChildBehaviorV_tFQOyA28_yAA5ImageVAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGG_Qo_AA31AccessibilityAttachmentModifierVG_A28_yAA6SpacerVAA12_FrameLayoutVGA2ItGGGG_A2_Qo_A19_GSgA14_yAIA26_yA17__A17_tGA19_GSgtMd);
  outlined init with copy of (<<opaque return type of View.pickerStyle<A>(_:)>>.0)?(v184, &v135[v136[12]], &_s7SwiftUI4ViewPAAE11pickerStyleyQrqd__AA06PickerE0Rd__lFQOyAA0F0VyAA4TextV11WorkoutCore10TargetZoneC0K4TypeOAA7ForEachVySayANGAnIGG_AA06InlinefE0VQo_SgMd);
  outlined init with copy of Section<Text, PowerNavigationButton, EmptyView>?(v131, &v135[v136[16]], &_s7SwiftUI7SectionVyAA4TextV07WorkoutB021PowerNavigationButtonVAA9EmptyViewVGSgMd);
  outlined init with copy of (<<opaque return type of View.pickerStyle<A>(_:)>>.0)?(v133, &v135[v136[20]], &_s7SwiftUI7SectionVyAA4TextVAA4ViewPAAE11pickerStyleyQrqd__AA06PickerG0Rd__lFQOyAA0H0VyAA05EmptyE0VSiAA7ForEachVySnySiGSiAA6HStackVyAA05TupleE0VyAA15ModifiedContentVyAgAE20accessibilityElement8childrenQrAA26AccessibilityChildBehaviorV_tFQOyAVyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGG_Qo_AA0s10AttachmentZ0VG_AVyAA6SpacerVAA12_FrameLayoutVGA2EtGGGG_AA06InlinehG0VQo_AMGSgMd);
  outlined init with copy of Section<Text, PowerNavigationButton, EmptyView>?(v134, &v135[v136[24]], &_s7SwiftUI7SectionVyAA4TextVAA9TupleViewVy07WorkoutB021PowerNavigationButtonV_AJtGAA05EmptyF0VGSgMd);
  outlined destroy of Section<Text, TupleView<(PowerNavigationButton, PowerNavigationButton)>, EmptyView>?(v180, &_s7SwiftUI7SectionVyAA4TextVAA9TupleViewVy07WorkoutB021PowerNavigationButtonV_AJtGAA05EmptyF0VGSgMd);
  outlined destroy of Group<TupleView<(<<opaque return type of View.pickerStyle<A>(_:)>>.0, (<<opaque return type of View.pickerStyle<A>(_:)>>.0)?, Section<Text, PowerNavigationButton, EmptyView>?, Section<Text, <<opaque return type of View.pickerStyle<A>(_:)>>.0, EmptyView>?, Section<Text, TupleView<(PowerNavigationButton, PowerNavigationButton)>, EmptyView>?)>>(v132, &_s7SwiftUI7SectionVyAA4TextVAA4ViewPAAE11pickerStyleyQrqd__AA06PickerG0Rd__lFQOyAA0H0VyAA05EmptyE0VSiAA7ForEachVySnySiGSiAA6HStackVyAA05TupleE0VyAA15ModifiedContentVyAgAE20accessibilityElement8childrenQrAA26AccessibilityChildBehaviorV_tFQOyAVyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGG_Qo_AA0s10AttachmentZ0VG_AVyAA6SpacerVAA12_FrameLayoutVGA2EtGGGG_AA06InlinehG0VQo_AMGSgMd);
  outlined destroy of Section<Text, TupleView<(PowerNavigationButton, PowerNavigationButton)>, EmptyView>?(v185, &_s7SwiftUI7SectionVyAA4TextV07WorkoutB021PowerNavigationButtonVAA9EmptyViewVGSgMd);
  outlined destroy of Group<TupleView<(<<opaque return type of View.pickerStyle<A>(_:)>>.0, (<<opaque return type of View.pickerStyle<A>(_:)>>.0)?, Section<Text, PowerNavigationButton, EmptyView>?, Section<Text, <<opaque return type of View.pickerStyle<A>(_:)>>.0, EmptyView>?, Section<Text, TupleView<(PowerNavigationButton, PowerNavigationButton)>, EmptyView>?)>>(v183, &_s7SwiftUI4ViewPAAE11pickerStyleyQrqd__AA06PickerE0Rd__lFQOyAA0F0VyAA4TextV11WorkoutCore10TargetZoneC0K4TypeOAA7ForEachVySayANGAnIGG_AA06InlinefE0VQo_SgMd);
  v137 = *(v127 + 8);
  v138 = v178;
  v137(v176, v178);
  outlined destroy of Section<Text, TupleView<(PowerNavigationButton, PowerNavigationButton)>, EmptyView>?(v134, &_s7SwiftUI7SectionVyAA4TextVAA9TupleViewVy07WorkoutB021PowerNavigationButtonV_AJtGAA05EmptyF0VGSgMd);
  outlined destroy of Group<TupleView<(<<opaque return type of View.pickerStyle<A>(_:)>>.0, (<<opaque return type of View.pickerStyle<A>(_:)>>.0)?, Section<Text, PowerNavigationButton, EmptyView>?, Section<Text, <<opaque return type of View.pickerStyle<A>(_:)>>.0, EmptyView>?, Section<Text, TupleView<(PowerNavigationButton, PowerNavigationButton)>, EmptyView>?)>>(v133, &_s7SwiftUI7SectionVyAA4TextVAA4ViewPAAE11pickerStyleyQrqd__AA06PickerG0Rd__lFQOyAA0H0VyAA05EmptyE0VSiAA7ForEachVySnySiGSiAA6HStackVyAA05TupleE0VyAA15ModifiedContentVyAgAE20accessibilityElement8childrenQrAA26AccessibilityChildBehaviorV_tFQOyAVyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGG_Qo_AA0s10AttachmentZ0VG_AVyAA6SpacerVAA12_FrameLayoutVGA2EtGGGG_AA06InlinehG0VQo_AMGSgMd);
  outlined destroy of Section<Text, TupleView<(PowerNavigationButton, PowerNavigationButton)>, EmptyView>?(v179, &_s7SwiftUI7SectionVyAA4TextV07WorkoutB021PowerNavigationButtonVAA9EmptyViewVGSgMd);
  outlined destroy of Group<TupleView<(<<opaque return type of View.pickerStyle<A>(_:)>>.0, (<<opaque return type of View.pickerStyle<A>(_:)>>.0)?, Section<Text, PowerNavigationButton, EmptyView>?, Section<Text, <<opaque return type of View.pickerStyle<A>(_:)>>.0, EmptyView>?, Section<Text, TupleView<(PowerNavigationButton, PowerNavigationButton)>, EmptyView>?)>>(v184, &_s7SwiftUI4ViewPAAE11pickerStyleyQrqd__AA06PickerE0Rd__lFQOyAA0F0VyAA4TextV11WorkoutCore10TargetZoneC0K4TypeOAA7ForEachVySayANGAnIGG_AA06InlinefE0VQo_SgMd);
  return (v137)(v177, v138);
}