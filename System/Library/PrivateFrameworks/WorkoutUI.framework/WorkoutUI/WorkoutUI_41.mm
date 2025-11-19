void AddWorkoutList.disclaimerMessage.getter()
{
  v1 = [*(v0 + *(type metadata accessor for AddWorkoutList() + 44)) isWheelchairUser];
  type metadata accessor for WorkoutCoreInjector();
  v2 = static WorkoutCoreInjector.shared.getter();
  v3 = dispatch thunk of WorkoutCoreInjector.inject()();

  if (v1)
  {
    v4 = MEMORY[0x20F30BAD0](0xD000000000000020, 0x800000020CBA4700);
    v5 = [v3 localizationKeyForEnergyBaseKey_];

    if (v5)
    {
      goto LABEL_5;
    }

    __break(1u);
  }

  v6 = MEMORY[0x20F30BAD0](0xD000000000000019, 0x800000020CBA46E0);
  v5 = [v3 localizationKeyForEnergyBaseKey_];

  if (!v5)
  {
    __break(1u);
    return;
  }

LABEL_5:
  v7 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v9 = v8;

  if (one-time initialization token for WorkoutUIBundle != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v10 = WorkoutUIBundle.super.isa;
  v14._object = 0xE000000000000000;
  v11.value._countAndFlagsBits = 0x617A696C61636F4CLL;
  v11.value._object = 0xEB00000000656C62;
  v12._countAndFlagsBits = v7;
  v12._object = v9;
  v13._countAndFlagsBits = 0;
  v13._object = 0xE000000000000000;
  v14._countAndFlagsBits = 0;
  NSLocalizedString(_:tableName:bundle:value:comment:)(v12, v11, v10, v13, v14);
}

uint64_t AddWorkoutList.activityMoveMode.getter()
{
  v9[1] = *MEMORY[0x277D85DE8];
  type metadata accessor for WorkoutCoreInjector();
  v0 = static WorkoutCoreInjector.shared.getter();
  v1 = dispatch thunk of WorkoutCoreInjector.inject()();

  v9[0] = 0;
  v2 = [v1 activityMoveModeWithError_];
  if (v2)
  {
    v3 = v2;
    v4 = v9[0];
    v5 = [v3 activityMoveMode];
  }

  else
  {
    v6 = v9[0];
    v7 = _convertNSErrorToError(_:)();

    swift_willThrow();
    return 1;
  }

  return v5;
}

uint64_t AddWorkoutList.body.getter()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyAA4ViewPAAE17toolbarBackground_3forQrAA10VisibilityO_AA16ToolbarPlacementVdtFQOyAeAE0F07contentQrqd__yXE_tAA0jD0Rd__lFQOyAeAE29navigationBarTitleDisplayModeyQrAA010NavigationN4ItemV0opQ0OFQOyAeAE0mO0yQrqd__SyRd__lFQOyACyACyAA4ListVys5NeverOAA05TupleE0VyAA7SectionVyAA05EmptyE0VAA6ButtonVy07WorkoutB003Addz3RowE0VGACyAA6VStackVyAA7DividerVGAA21_TraitWritingModifierVyAA0T17RowInsetsTraitKeyVGGGSg_A0_yACyACyAA4TextVAA30_EnvironmentKeyWritingModifierVyAA13TextAlignmentOGGAA16_FlexFrameLayoutVGA2_A2_GSgACyACyA0_yA23_AA7ForEachVySay0Z4Core08Standardz3AddZ3RowCGSSA8_GA2_GAA32_EnvironmentKeyTransformModifierVySbGGA15_yAA0W13IndexLabelKeyVGGSgA36_ySaySSGSSACyACyA0_yA23_A41_SgA2_GA45_GA49_GGtGGA15_yAA0tW15SpacingTraitKeyVGGA25_yAA0tW7SpacingVSgGG_SSQo__Qo__AA0jD7BuilderV10buildBlockyQrxAaNRzlFZQOy_AA0jS0VyytA4_yAA07DefaultY5LabelVGGQo_Qo__Qo_A5_0Z15DisclaimerSheetVGMd);
  lazy protocol witness table accessor for type ModifiedContent<<<opaque return type of View.toolbarBackground(_:for:)>>.0, WorkoutDisclaimerSheet> and conformance <> ModifiedContent<A, B>();
  return NavigationView.init(content:)();
}

uint64_t closure #1 in AddWorkoutList.body.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v78 = a2;
  v71 = type metadata accessor for NavigationBarItem.TitleDisplayMode();
  v70 = *(v71 - 8);
  MEMORY[0x28223BE20](v71);
  v68 = &v64 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for ListSectionSpacing();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v64 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyACyAA4ListVys5NeverOAA9TupleViewVyAA7SectionVyAA05EmptyH0VAA6ButtonVy07WorkoutB003Addl3RowH0VGACyAA6VStackVyAA7DividerVGAA21_TraitWritingModifierVyAA0en6InsetsQ3KeyVGGGSg_AKyACyACyAA4TextVAA012_EnvironmenturS0VyAA0V9AlignmentOGGAA16_FlexFrameLayoutVGA2MGSgACyACyAKyA6_AA7ForEachVySay0L4Core08StandardlmlN0CGSSASGAMGAA01_wu9TransformS0VySbGGAZyAA0i10IndexLabelU0VGGSgA19_ySaySSGSSACyACyAKyA6_A24_SgAMGA28_GA32_GGtGGAZyAA0ei7SpacingqU0VGGA8_yAA0eI7SpacingVSgGGMd);
  MEMORY[0x28223BE20](v8);
  v10 = &v64 - v9;
  v66 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI4ViewPAAE15navigationTitleyQrqd__SyRd__lFQOyAA15ModifiedContentVyAFyAA4ListVys5NeverOAA05TupleC0VyAA7SectionVyAA05EmptyC0VAA6ButtonVy07WorkoutB003Addn3RowC0VGAFyAA6VStackVyAA7DividerVGAA21_TraitWritingModifierVyAA0hp6InsetsS3KeyVGGGSg_ANyAFyAFyAA4TextVAA012_EnvironmentwtU0VyAA0X9AlignmentOGGAA16_FlexFrameLayoutVGA2PGSgAFyAFyANyA9_AA7ForEachVySay0N4Core08StandardnonP0CGSSAVGAPGAA01_yw9TransformU0VySbGGA1_yAA0k10IndexLabelW0VGGSgA22_ySaySSGSSAFyAFyANyA9_A27_SgAPGA31_GA35_GGtGGA1_yAA0hk7SpacingsW0VGGA11_yAA0hK7SpacingVSgGG_SSQo_Md);
  v65 = *(v66 - 8);
  MEMORY[0x28223BE20](v66);
  v12 = &v64 - v11;
  v75 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI4ViewPAAE29navigationBarTitleDisplayModeyQrAA010NavigationE4ItemV0fgH0OFQOyAcAE0dF0yQrqd__SyRd__lFQOyAA15ModifiedContentVyAKyAA4ListVys5NeverOAA05TupleC0VyAA7SectionVyAA05EmptyC0VAA6ButtonVy07WorkoutB003Adds3RowC0VGAKyAA6VStackVyAA7DividerVGAA21_TraitWritingModifierVyAA0mu6InsetsX3KeyVGGGSg_ASyAKyAKyAA4TextVAA015_EnvironmentKeyyZ0VyAA13TextAlignmentOGGAA16_FlexFrameLayoutVGA2UGSgAKyAKyASyA14_AA7ForEachVySay0S4Core08StandardstsU0CGSSA_GAUGAA024_EnvironmentKeyTransformZ0VySbGGA6_yAA0P13IndexLabelKeyVGGSgA27_ySaySSGSSAKyAKyASyA14_A32_SgAUGA36_GA40_GGtGGA6_yAA0mp7SpacingX3KeyVGGA16_yAA0mP7SpacingVSgGG_SSQo__Qo_Md);
  v69 = *(v75 - 8);
  MEMORY[0x28223BE20](v75);
  v67 = &v64 - v13;
  v76._countAndFlagsBits = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI4ViewPAAE7toolbar7contentQrqd__yXE_tAA14ToolbarContentRd__lFQOyAcAE29navigationBarTitleDisplayModeyQrAA010NavigationI4ItemV0jkL0OFQOyAcAE0hJ0yQrqd__SyRd__lFQOyAA08ModifiedG0VyANyAA4ListVys5NeverOAA05TupleC0VyAA7SectionVyAA05EmptyC0VAA6ButtonVy07WorkoutB003Addv3RowC0VGANyAA6VStackVyAA7DividerVGAA21_TraitWritingModifierVyAA0pX14InsetsTraitKeyVGGGSg_AVyANyANyAA4TextVAA30_EnvironmentKeyWritingModifierVyAA13TextAlignmentOGGAA16_FlexFrameLayoutVGA2XGSgANyANyAVyA17_AA7ForEachVySay0V4Core08StandardvwvX0CGSSA2_GAXGAA32_EnvironmentKeyTransformModifierVySbGGA9_yAA0S13IndexLabelKeyVGGSgA30_ySaySSGSSANyANyAVyA17_A35_SgAXGA39_GA43_GGtGGA9_yAA0pS15SpacingTraitKeyVGGA19_yAA0pS7SpacingVSgGG_SSQo__Qo__AA0fG7BuilderV10buildBlockyQrxAaFRzlFZQOy_AA0fN0VyytAZyAA07DefaultU5LabelVGGQo_Qo_Md);
  v74 = *(v76._countAndFlagsBits - 8);
  MEMORY[0x28223BE20](v76._countAndFlagsBits);
  v73 = &v64 - v14;
  v79 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI9TupleViewVyAA7SectionVyAA05EmptyD0VAA6ButtonVy07WorkoutB003Addh3RowD0VGAA15ModifiedContentVyAA6VStackVyAA7DividerVGAA21_TraitWritingModifierVyAA04Listj6InsetsO3KeyVGGGSg_AEyAOyAOyAA4TextVAA012_EnvironmenttpQ0VyAA0U9AlignmentOGGAA16_FlexFrameLayoutVGA2GGSgAOyAOyAEyA2_AA7ForEachVySay0H4Core08StandardhihJ0CGSSAMGAGGAA01_vt9TransformQ0VySbGGAVyAA0e10IndexLabelT0VGGSgA15_ySaySSGSSAOyAOyAEyA2_A20_SgAGGA24_GA28_GGtGMd);
  lazy protocol witness table accessor for type List<Never, TupleView<(Section<EmptyView, Button<AddWorkoutRowView>, ModifiedContent<VStack<Divider>, _TraitWritingModifier<ListRowInsetsTraitKey>>>?, Section<ModifiedContent<ModifiedContent<Text, _EnvironmentKeyWritingModifier<TextAlignment>>, _FlexFrameLayout>, EmptyView, EmptyView>?, ModifiedContent<ModifiedContent<Section<Text, ForEach<[StandardWorkoutAddWorkoutRow], String, Button<AddWorkoutRowView>>, EmptyView>, _EnvironmentKeyTransformModifier<Bool>>, _TraitWritingModifier<SectionIndexLabelKey>>?, ForEach<[String], String, ModifiedContent<ModifiedContent<Section<Text, ForEach<[StandardWorkoutAddWorkoutRow], String, Button<AddWorkoutRowView>>?, EmptyView>, _EnvironmentKeyTransformModifier<Bool>>, _TraitWritingModifier<SectionIndexLabelKey>>>)>> and conformance List<A, B>(&lazy protocol witness table cache variable for type TupleView<(Section<EmptyView, Button<AddWorkoutRowView>, ModifiedContent<VStack<Divider>, _TraitWritingModifier<ListRowInsetsTraitKey>>>?, Section<ModifiedContent<ModifiedContent<Text, _EnvironmentKeyWritingModifier<TextAlignment>>, _FlexFrameLayout>, EmptyView, EmptyView>?, ModifiedContent<ModifiedContent<Section<Text, ForEach<[StandardWorkoutAddWorkoutRow], String, Button<AddWorkoutRowView>>, EmptyView>, _EnvironmentKeyTransformModifier<Bool>>, _TraitWritingModifier<SectionIndexLabelKey>>?, ForEach<[String], String, ModifiedContent<ModifiedContent<Section<Text, ForEach<[StandardWorkoutAddWorkoutRow], String, Button<AddWorkoutRowView>>?, EmptyView>, _EnvironmentKeyTransformModifier<Bool>>, _TraitWritingModifier<SectionIndexLabelKey>>>)> and conformance TupleView<A>, &_s7SwiftUI9TupleViewVyAA7SectionVyAA05EmptyD0VAA6ButtonVy07WorkoutB003Addh3RowD0VGAA15ModifiedContentVyAA6VStackVyAA7DividerVGAA21_TraitWritingModifierVyAA04Listj6InsetsO3KeyVGGGSg_AEyAOyAOyAA4TextVAA012_EnvironmenttpQ0VyAA0U9AlignmentOGGAA16_FlexFrameLayoutVGA2GGSgAOyAOyAEyA2_AA7ForEachVySay0H4Core08StandardhihJ0CGSSAMGAGGAA01_vt9TransformQ0VySbGGAVyAA0e10IndexLabelT0VGGSgA15_ySaySSGSSAOyAOyAEyA2_A20_SgAGGA24_GA28_GGtGMd);
  List<>.init(content:)();
  v72 = type metadata accessor for AddWorkoutList();
  v77 = a1;
  static ListSectionSpacing.custom(_:)();
  v15 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyAA4ListVys5NeverOAA9TupleViewVyAA7SectionVyAA05EmptyH0VAA6ButtonVy07WorkoutB003Addl3RowH0VGACyAA6VStackVyAA7DividerVGAA21_TraitWritingModifierVyAA0en6InsetsQ3KeyVGGGSg_AKyACyACyAA4TextVAA012_EnvironmenturS0VyAA0V9AlignmentOGGAA16_FlexFrameLayoutVGA2MGSgACyACyAKyA6_AA7ForEachVySay0L4Core08StandardlmlN0CGSSASGAMGAA01_wu9TransformS0VySbGGAZyAA0i10IndexLabelU0VGGSgA19_ySaySSGSSACyACyAKyA6_A24_SgAMGA28_GA32_GGtGGAZyAA0ei7SpacingqU0VGGMd) + 36);
  (*(v5 + 16))(&v10[v15], v7, v4);
  v16 = *(v5 + 56);
  v16(&v10[v15], 0, 1, v4);
  KeyPath = swift_getKeyPath();
  v64 = v8;
  v18 = &v10[*(v8 + 36)];
  v19 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI30_EnvironmentKeyWritingModifierVyAA18ListSectionSpacingVSgGMd) + 28);
  (*(v5 + 32))(v18 + v19, v7, v4);
  v16(v18 + v19, 0, 1, v4);
  *v18 = KeyPath;
  if (one-time initialization token for WorkoutUIBundle != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v20 = WorkoutUIBundle.super.isa;
  v84._object = 0xE000000000000000;
  v21.value._countAndFlagsBits = 0x617A696C61636F4CLL;
  v21.value._object = 0xEB00000000656C62;
  v22._object = 0x800000020CB95260;
  v22._countAndFlagsBits = 0xD000000000000012;
  v23._countAndFlagsBits = 0;
  v23._object = 0xE000000000000000;
  v84._countAndFlagsBits = 0;
  v24 = NSLocalizedString(_:tableName:bundle:value:comment:)(v22, v21, v20, v23, v84);

  v81 = v24;
  v25 = lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<List<Never, TupleView<(Section<EmptyView, Button<AddWorkoutRowView>, ModifiedContent<VStack<Divider>, _TraitWritingModifier<ListRowInsetsTraitKey>>>?, Section<ModifiedContent<ModifiedContent<Text, _EnvironmentKeyWritingModifier<TextAlignment>>, _FlexFrameLayout>, EmptyView, EmptyView>?, ModifiedContent<ModifiedContent<Section<Text, ForEach<[StandardWorkoutAddWorkoutRow], String, Button<AddWorkoutRowView>>, EmptyView>, _EnvironmentKeyTransformModifier<Bool>>, _TraitWritingModifier<SectionIndexLabelKey>>?, ForEach<[String], String, ModifiedContent<ModifiedContent<Section<Text, ForEach<[StandardWorkoutAddWorkoutRow], String, Button<AddWorkoutRowView>>?, EmptyView>, _EnvironmentKeyTransformModifier<Bool>>, _TraitWritingModifier<SectionIndexLabelKey>>>)>>, _TraitWritingModifier<ListSectionSpacingTraitKey>>, _EnvironmentKeyWritingModifier<ListSectionSpacing?>> and conformance <> ModifiedContent<A, B>();
  v26 = lazy protocol witness table accessor for type String and conformance String();
  v27 = MEMORY[0x277D837D0];
  v28 = v64;
  View.navigationTitle<A>(_:)();

  outlined destroy of ModifiedContent<ModifiedContent<List<Never, TupleView<(Section<EmptyView, Button<AddWorkoutRowView>, ModifiedContent<VStack<Divider>, _TraitWritingModifier<ListRowInsetsTraitKey>>>?, Section<ModifiedContent<ModifiedContent<Text, _EnvironmentKeyWritingModifier<TextAlignment>>, _FlexFrameLayout>, EmptyView, EmptyView>?, ModifiedContent<ModifiedContent<Section<Text, ForEach<[StandardWorkoutAddWorkoutRow], String, Button<AddWorkoutRowView>>, EmptyView>, _EnvironmentKeyTransformModifier<Bool>>, _TraitWritingModifier<SectionIndexLabelKey>>?, ForEach<[String], String, ModifiedContent<ModifiedContent<Section<Text, ForEach<[StandardWorkoutAddWorkoutRow], String, Button<AddWorkoutRowView>>?, EmptyView>, _EnvironmentKeyTransformModifier<Bool>>, _TraitWritingModifier<SectionIndexLabelKey>>>)>>, _TraitWritingModifier<ListSectionSpacingTraitKey>>, _EnvironmentKeyWritingModifier<ListSectionSpacing?>>(v10, &_s7SwiftUI15ModifiedContentVyACyAA4ListVys5NeverOAA9TupleViewVyAA7SectionVyAA05EmptyH0VAA6ButtonVy07WorkoutB003Addl3RowH0VGACyAA6VStackVyAA7DividerVGAA21_TraitWritingModifierVyAA0en6InsetsQ3KeyVGGGSg_AKyACyACyAA4TextVAA012_EnvironmenturS0VyAA0V9AlignmentOGGAA16_FlexFrameLayoutVGA2MGSgACyACyAKyA6_AA7ForEachVySay0L4Core08StandardlmlN0CGSSASGAMGAA01_wu9TransformS0VySbGGAZyAA0i10IndexLabelU0VGGSgA19_ySaySSGSSACyACyAKyA6_A24_SgAMGA28_GA32_GGtGGAZyAA0ei7SpacingqU0VGGA8_yAA0eI7SpacingVSgGGMd);
  v29 = v70;
  v30 = v68;
  v31 = v71;
  (*(v70 + 104))(v68, *MEMORY[0x277CDDDC0], v71);
  v81._countAndFlagsBits = v28;
  v81._object = v27;
  v82 = v25;
  v83 = v26;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v33 = v67;
  v34 = v66;
  View.navigationBarTitleDisplayMode(_:)();
  (*(v29 + 8))(v30, v31);
  v35 = (*(v65 + 8))(v12, v34);
  MEMORY[0x28223BE20](v35);
  v36 = v77;
  v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI21ToolbarContentBuilderV10buildBlockyQrxAA0cD0RzlFZQOy_AA0C4ItemVyytAA6ButtonVyAA07DefaultI5LabelVGGQo_Md);
  v81._countAndFlagsBits = v34;
  v81._object = OpaqueTypeConformance2;
  v38 = swift_getOpaqueTypeConformance2();
  v39 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI11ToolbarItemVyytAA6ButtonVyAA07DefaultE5LabelVGGMd);
  v40 = lazy protocol witness table accessor for type List<Never, TupleView<(Section<EmptyView, Button<AddWorkoutRowView>, ModifiedContent<VStack<Divider>, _TraitWritingModifier<ListRowInsetsTraitKey>>>?, Section<ModifiedContent<ModifiedContent<Text, _EnvironmentKeyWritingModifier<TextAlignment>>, _FlexFrameLayout>, EmptyView, EmptyView>?, ModifiedContent<ModifiedContent<Section<Text, ForEach<[StandardWorkoutAddWorkoutRow], String, Button<AddWorkoutRowView>>, EmptyView>, _EnvironmentKeyTransformModifier<Bool>>, _TraitWritingModifier<SectionIndexLabelKey>>?, ForEach<[String], String, ModifiedContent<ModifiedContent<Section<Text, ForEach<[StandardWorkoutAddWorkoutRow], String, Button<AddWorkoutRowView>>?, EmptyView>, _EnvironmentKeyTransformModifier<Bool>>, _TraitWritingModifier<SectionIndexLabelKey>>>)>> and conformance List<A, B>(&lazy protocol witness table cache variable for type ToolbarItem<(), Button<DefaultButtonLabel>> and conformance ToolbarItem<A, B>, &_s7SwiftUI11ToolbarItemVyytAA6ButtonVyAA07DefaultE5LabelVGGMd);
  v81._countAndFlagsBits = v39;
  v81._object = v40;
  v41 = swift_getOpaqueTypeConformance2();
  v42 = v73;
  v43 = v75;
  View.toolbar<A>(content:)();
  (*(v69 + 8))(v33, v43);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy7SwiftUI16ToolbarPlacementVGMd);
  type metadata accessor for ToolbarPlacement();
  v44 = swift_allocObject();
  *(v44 + 16) = xmmword_20CB5DA70;
  static ToolbarPlacement.navigationBar.getter();
  v81._countAndFlagsBits = v43;
  v81._object = v37;
  v82 = v38;
  v83 = v41;
  v45 = swift_getOpaqueTypeConformance2();
  v46 = v78;
  countAndFlagsBits = v76._countAndFlagsBits;
  MEMORY[0x20F30A770](2, v44, v76._countAndFlagsBits, v45);

  (*(v74 + 8))(v42, countAndFlagsBits);
  v48 = v72;
  v80 = *(v36 + *(v72 + 28));
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI5StateVySo23FIUIWorkoutActivityTypeCSgGMd);
  State.projectedValue.getter();
  v76 = v81;
  v49 = v82;
  v50 = AddWorkoutList.disclaimerTitle.getter();
  v52 = v51;
  AddWorkoutList.disclaimerMessage.getter();
  v54 = v53;
  v56 = v55;
  v57 = *(v36 + *(v48 + 36));
  v58 = (v36 + *(v48 + 48));
  v59 = *v58;
  v60 = v58[1];
  v61 = (v46 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyAA4ViewPAAE17toolbarBackground_3forQrAA10VisibilityO_AA16ToolbarPlacementVdtFQOyAeAE0F07contentQrqd__yXE_tAA0jD0Rd__lFQOyAeAE29navigationBarTitleDisplayModeyQrAA010NavigationN4ItemV0opQ0OFQOyAeAE0mO0yQrqd__SyRd__lFQOyACyACyAA4ListVys5NeverOAA05TupleE0VyAA7SectionVyAA05EmptyE0VAA6ButtonVy07WorkoutB003Addz3RowE0VGACyAA6VStackVyAA7DividerVGAA21_TraitWritingModifierVyAA0T17RowInsetsTraitKeyVGGGSg_A0_yACyACyAA4TextVAA30_EnvironmentKeyWritingModifierVyAA13TextAlignmentOGGAA16_FlexFrameLayoutVGA2_A2_GSgACyACyA0_yA23_AA7ForEachVySay0Z4Core08Standardz3AddZ3RowCGSSA8_GA2_GAA32_EnvironmentKeyTransformModifierVySbGGA15_yAA0W13IndexLabelKeyVGGSgA36_ySaySSGSSACyACyA0_yA23_A41_SgA2_GA45_GA49_GGtGGA15_yAA0tW15SpacingTraitKeyVGGA25_yAA0tW7SpacingVSgGG_SSQo__Qo__AA0jD7BuilderV10buildBlockyQrxAaNRzlFZQOy_AA0jS0VyytA4_yAA07DefaultY5LabelVGGQo_Qo__Qo_A5_0Z15DisclaimerSheetVGMd) + 36));
  *v61 = v76;
  v61[1]._countAndFlagsBits = v49;
  v61[1]._object = v50;
  v61[2]._countAndFlagsBits = v52;
  v61[2]._object = v54;
  v61[3]._countAndFlagsBits = v56;
  v61[3]._object = v57;
  v61[4]._countAndFlagsBits = v59;
  v61[4]._object = v60;
  v62 = *(type metadata accessor for WorkoutDisclaimerSheet() + 36);
  *(&v61->_countAndFlagsBits + v62) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI11EnvironmentV7ContentOyAA13DismissActionV_GMd);
  swift_storeEnumTagMultiPayload();
  swift_unknownObjectRetain();
  return outlined copy of (@escaping @callee_guaranteed () -> ())?(v59);
}

uint64_t closure #1 in closure #1 in AddWorkoutList.body.getter(uint64_t a1)
{
  v2 = type metadata accessor for ToolbarItemPlacement();
  MEMORY[0x28223BE20](v2 - 8);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI11ToolbarItemVyytAA6ButtonVyAA07DefaultE5LabelVGGMd);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v9[-v5];
  static ToolbarItemPlacement.cancellationAction.getter();
  v10 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI6ButtonVyAA07DefaultC5LabelVGMd);
  lazy protocol witness table accessor for type List<Never, TupleView<(Section<EmptyView, Button<AddWorkoutRowView>, ModifiedContent<VStack<Divider>, _TraitWritingModifier<ListRowInsetsTraitKey>>>?, Section<ModifiedContent<ModifiedContent<Text, _EnvironmentKeyWritingModifier<TextAlignment>>, _FlexFrameLayout>, EmptyView, EmptyView>?, ModifiedContent<ModifiedContent<Section<Text, ForEach<[StandardWorkoutAddWorkoutRow], String, Button<AddWorkoutRowView>>, EmptyView>, _EnvironmentKeyTransformModifier<Bool>>, _TraitWritingModifier<SectionIndexLabelKey>>?, ForEach<[String], String, ModifiedContent<ModifiedContent<Section<Text, ForEach<[StandardWorkoutAddWorkoutRow], String, Button<AddWorkoutRowView>>?, EmptyView>, _EnvironmentKeyTransformModifier<Bool>>, _TraitWritingModifier<SectionIndexLabelKey>>>)>> and conformance List<A, B>(&lazy protocol witness table cache variable for type Button<DefaultButtonLabel> and conformance Button<A>, &_s7SwiftUI6ButtonVyAA07DefaultC5LabelVGMd);
  ToolbarItem<>.init(placement:content:)();
  v7 = lazy protocol witness table accessor for type List<Never, TupleView<(Section<EmptyView, Button<AddWorkoutRowView>, ModifiedContent<VStack<Divider>, _TraitWritingModifier<ListRowInsetsTraitKey>>>?, Section<ModifiedContent<ModifiedContent<Text, _EnvironmentKeyWritingModifier<TextAlignment>>, _FlexFrameLayout>, EmptyView, EmptyView>?, ModifiedContent<ModifiedContent<Section<Text, ForEach<[StandardWorkoutAddWorkoutRow], String, Button<AddWorkoutRowView>>, EmptyView>, _EnvironmentKeyTransformModifier<Bool>>, _TraitWritingModifier<SectionIndexLabelKey>>?, ForEach<[String], String, ModifiedContent<ModifiedContent<Section<Text, ForEach<[StandardWorkoutAddWorkoutRow], String, Button<AddWorkoutRowView>>?, EmptyView>, _EnvironmentKeyTransformModifier<Bool>>, _TraitWritingModifier<SectionIndexLabelKey>>>)>> and conformance List<A, B>(&lazy protocol witness table cache variable for type ToolbarItem<(), Button<DefaultButtonLabel>> and conformance ToolbarItem<A, B>, &_s7SwiftUI11ToolbarItemVyytAA6ButtonVyAA07DefaultE5LabelVGGMd);
  MEMORY[0x20F3098F0](v6, v3, v7);
  return (*(v4 + 8))(v6, v3);
}

uint64_t closure #1 in closure #1 in closure #1 in AddWorkoutList.body.getter(uint64_t a1)
{
  v2 = type metadata accessor for AddWorkoutList();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = type metadata accessor for ButtonRole();
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v11 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  static ButtonRole.cancel.getter();
  outlined init with copy of AddWorkoutList(a1, &v11 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v8 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v9 = swift_allocObject();
  outlined init with take of AddWorkoutList(&v11 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), v9 + v8);
  return MEMORY[0x20F30AF90](v7, partial apply for closure #1 in closure #1 in closure #1 in closure #1 in AddWorkoutList.body.getter, v9);
}

uint64_t closure #1 in closure #1 in closure #1 in closure #1 in AddWorkoutList.body.getter(uint64_t a1)
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
  _s7SwiftUI11EnvironmentV7ContentOyAA13DismissActionV_GWOcTm_4(a1, v7, &_s7SwiftUI11EnvironmentV7ContentOyAA13DismissActionV_GMd);
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

uint64_t closure #1 in AddWorkoutList.addWorkoutListView()@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v89 = a2;
  v3 = type metadata accessor for AddWorkoutList();
  v82 = *(v3 - 1);
  MEMORY[0x28223BE20](v3);
  v83 = v4;
  v84 = v78 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v88 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI7ForEachVySaySSGSSAA15ModifiedContentVyAFyAA7SectionVyAA4TextVACySay11WorkoutCore08Standardi3AddI3RowCGSSAA6ButtonVy0iB00liM4ViewVGGSgAA05EmptyO0VGAA32_EnvironmentKeyTransformModifierVySbGGAA013_TraitWritingT0VyAA0g10IndexLabelR0VGGGMd);
  v87 = *(v88 - 8);
  MEMORY[0x28223BE20](v88);
  v86 = v78 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v95 = v78 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11WorkoutCore28FitnessUILocalizationFeatureOSgMd);
  MEMORY[0x28223BE20](v8 - 8);
  v80 = v78 - v9;
  v91 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyACyAA7SectionVyAA4TextVAA7ForEachVySay11WorkoutCore08Standardi3AddI3RowCGSSAA6ButtonVy0iB00liM4ViewVGGAA05EmptyO0VGAA32_EnvironmentKeyTransformModifierVySbGGAA013_TraitWritingT0VyAA0e10IndexLabelR0VGGMd);
  v90 = *(v91 - 8);
  MEMORY[0x28223BE20](v91);
  v81 = v78 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyACyAA7SectionVyAA4TextVAA7ForEachVySay11WorkoutCore08Standardi3AddI3RowCGSSAA6ButtonVy0iB00liM4ViewVGGAA05EmptyO0VGAA32_EnvironmentKeyTransformModifierVySbGGAA013_TraitWritingT0VyAA0e10IndexLabelR0VGGSgMd);
  MEMORY[0x28223BE20](v11 - 8);
  v85 = v78 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v96 = v78 - v14;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI7SectionVyAA15ModifiedContentVyAEyAA4TextVAA30_EnvironmentKeyWritingModifierVyAA0F9AlignmentOGGAA16_FlexFrameLayoutVGAA9EmptyViewVARGSgMd);
  MEMORY[0x28223BE20](v15 - 8);
  v94 = v78 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v98 = v78 - v18;
  v79 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyAA6VStackVyAA7DividerVGAA21_TraitWritingModifierVyAA013ListRowInsetsG3KeyVGGMd);
  MEMORY[0x28223BE20](v79);
  v20 = v78 - v19;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI7SectionVyAA9EmptyViewVAA6ButtonVy07WorkoutB003Addg3RowE0VGAA15ModifiedContentVyAA6VStackVyAA7DividerVGAA21_TraitWritingModifierVyAA04Listi6InsetsN3KeyVGGGSgMd);
  MEMORY[0x28223BE20](v21 - 8);
  v93 = v78 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v23);
  v97 = v78 - v24;
  v92 = a1;
  type metadata accessor for SeymourDataSource();
  _s9WorkoutUI28ConfigurationNavigationModelCAC7Combine16ObservableObjectAAWlTm_18(&lazy protocol witness table cache variable for type SeymourDataSource and conformance SeymourDataSource, type metadata accessor for SeymourDataSource);
  StateObject.wrappedValue.getter();
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  if (v99 == 1 && (StateObject.wrappedValue.getter(), swift_getKeyPath(), swift_getKeyPath(), static Published.subscript.getter(), , , , v99 == 1))
  {
    StateObject.wrappedValue.getter();
    swift_getKeyPath();
    swift_getKeyPath();
    static Published.subscript.getter();

    v26 = 1;
    v27 = v96;
    v28 = v92;
    v29 = v91;
    if (v99 == 1)
    {
      v78[1] = v78;
      MEMORY[0x28223BE20](v25);
      *v20 = static HorizontalAlignment.center.getter();
      *(v20 + 1) = 0;
      v20[16] = 1;
      __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI13_VariadicViewO4TreeVy_AA13_VStackLayoutVAA7DividerVGMd);
      Divider.init()();
      v30 = &v20[*(v79 + 36)];
      *v30 = *(v28 + v3[15]);
      *(v30 + 1) = 0;
      *(v30 + 2) = 0;
      *(v30 + 3) = 0;
      v30[32] = 0;
      __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI6ButtonVy07WorkoutB003AddD7RowViewVGMd);
      lazy protocol witness table accessor for type List<Never, TupleView<(Section<EmptyView, Button<AddWorkoutRowView>, ModifiedContent<VStack<Divider>, _TraitWritingModifier<ListRowInsetsTraitKey>>>?, Section<ModifiedContent<ModifiedContent<Text, _EnvironmentKeyWritingModifier<TextAlignment>>, _FlexFrameLayout>, EmptyView, EmptyView>?, ModifiedContent<ModifiedContent<Section<Text, ForEach<[StandardWorkoutAddWorkoutRow], String, Button<AddWorkoutRowView>>, EmptyView>, _EnvironmentKeyTransformModifier<Bool>>, _TraitWritingModifier<SectionIndexLabelKey>>?, ForEach<[String], String, ModifiedContent<ModifiedContent<Section<Text, ForEach<[StandardWorkoutAddWorkoutRow], String, Button<AddWorkoutRowView>>?, EmptyView>, _EnvironmentKeyTransformModifier<Bool>>, _TraitWritingModifier<SectionIndexLabelKey>>>)>> and conformance List<A, B>(&lazy protocol witness table cache variable for type Button<AddWorkoutRowView> and conformance Button<A>, &_s7SwiftUI6ButtonVy07WorkoutB003AddD7RowViewVGMd);
      lazy protocol witness table accessor for type ModifiedContent<VStack<Divider>, _TraitWritingModifier<ListRowInsetsTraitKey>> and conformance <> ModifiedContent<A, B>();
      Section<>.init(footer:content:)();
      v26 = 0;
    }
  }

  else
  {
    v26 = 1;
    v27 = v96;
    v28 = v92;
    v29 = v91;
  }

  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI7SectionVyAA9EmptyViewVAA6ButtonVy07WorkoutB003Addg3RowE0VGAA15ModifiedContentVyAA6VStackVyAA7DividerVGAA21_TraitWritingModifierVyAA04Listi6InsetsN3KeyVGGGMd);
  v32 = 1;
  (*(*(v31 - 8) + 56))(v97, v26, 1, v31);
  v33 = *(v28 + v3[13]);
  if (v33 == 1)
  {
    closure #4 in closure #1 in AddWorkoutList.addWorkoutListView()(&v99);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyACyAA4TextVAA30_EnvironmentKeyWritingModifierVyAA0E9AlignmentOGGAA16_FlexFrameLayoutVGMd);
    lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<Text, _EnvironmentKeyWritingModifier<TextAlignment>>, _FlexFrameLayout> and conformance <> ModifiedContent<A, B>();
    Section<>.init(header:content:)();
    v32 = 0;
  }

  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI7SectionVyAA15ModifiedContentVyAEyAA4TextVAA30_EnvironmentKeyWritingModifierVyAA0F9AlignmentOGGAA16_FlexFrameLayoutVGAA9EmptyViewVARGMd);
  v35 = 1;
  v36 = (*(*(v34 - 8) + 56))(v98, v32, 1, v34);
  if ((*(v28 + v3[14]) & 1) == 0)
  {
    MEMORY[0x28223BE20](v36);
    v37 = type metadata accessor for FitnessUILocalizationFeature();
    v38 = v80;
    (*(*(v37 - 8) + 56))(v80, 1, 1, v37);
    v39 = String.fitnessUILocalizedString(feature:)();
    v41 = v40;
    outlined destroy of ModifiedContent<ModifiedContent<List<Never, TupleView<(Section<EmptyView, Button<AddWorkoutRowView>, ModifiedContent<VStack<Divider>, _TraitWritingModifier<ListRowInsetsTraitKey>>>?, Section<ModifiedContent<ModifiedContent<Text, _EnvironmentKeyWritingModifier<TextAlignment>>, _FlexFrameLayout>, EmptyView, EmptyView>?, ModifiedContent<ModifiedContent<Section<Text, ForEach<[StandardWorkoutAddWorkoutRow], String, Button<AddWorkoutRowView>>, EmptyView>, _EnvironmentKeyTransformModifier<Bool>>, _TraitWritingModifier<SectionIndexLabelKey>>?, ForEach<[String], String, ModifiedContent<ModifiedContent<Section<Text, ForEach<[StandardWorkoutAddWorkoutRow], String, Button<AddWorkoutRowView>>?, EmptyView>, _EnvironmentKeyTransformModifier<Bool>>, _TraitWritingModifier<SectionIndexLabelKey>>>)>>, _TraitWritingModifier<ListSectionSpacingTraitKey>>, _EnvironmentKeyWritingModifier<ListSectionSpacing?>>(v38, &_s11WorkoutCore28FitnessUILocalizationFeatureOSgMd);
    v99 = v39;
    v100 = v41;
    lazy protocol witness table accessor for type String and conformance String();
    v99 = Text.init<A>(_:)();
    v100 = v42;
    LOBYTE(v101) = v43 & 1;
    v102 = v44;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI7ForEachVySay11WorkoutCore08Standarde3AddE3RowCGSSAA6ButtonVy0eB00heI4ViewVGGMd);
    lazy protocol witness table accessor for type ForEach<[StandardWorkoutAddWorkoutRow], String, Button<AddWorkoutRowView>> and conformance <> ForEach<A, B, C>();
    v45 = v81;
    Section<>.init(header:content:)();
    KeyPath = swift_getKeyPath();
    v47 = swift_allocObject();
    *(v47 + 16) = v33;
    v48 = (v45 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyAA7SectionVyAA4TextVAA7ForEachVySay11WorkoutCore08Standardi3AddI3RowCGSSAA6ButtonVy0iB00liM4ViewVGGAA05EmptyO0VGAA32_EnvironmentKeyTransformModifierVySbGGMd) + 36));
    *v48 = KeyPath;
    v48[1] = _s7SwiftUI4ViewPAAE8disabledyQrSbFySbzcfU_TA_22;
    v48[2] = v47;
    LocalizedStringKey.init(stringLiteral:)();
    v49 = v45 + *(v29 + 36);
    *v49 = Text.init(_:tableName:bundle:comment:)();
    *(v49 + 8) = v50;
    *(v49 + 16) = v51 & 1;
    *(v49 + 24) = v52;
    v53 = *MEMORY[0x277CDDDD0];
    v54 = type metadata accessor for SectionIndexLabel();
    v55 = *(v54 - 8);
    (*(v55 + 104))(v49, v53, v54);
    (*(v55 + 56))(v49, 0, 1, v54);
    outlined init with take of ModifiedContent<ModifiedContent<Section<Text, ForEach<[StandardWorkoutAddWorkoutRow], String, Button<AddWorkoutRowView>>, EmptyView>, _EnvironmentKeyTransformModifier<Bool>>, _TraitWritingModifier<SectionIndexLabelKey>>(v45, v27);
    v35 = 0;
  }

  (*(v90 + 56))(v27, v35, 1, v29);
  v56 = v28 + v3[6];
  v58 = *v56;
  v57 = *(v56 + 8);
  v99 = v58;
  v100 = v57;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI5StateVy11WorkoutCore03AddD10DataSourceCGMd);
  State.wrappedValue.getter();
  v59 = dispatch thunk of AddWorkoutDataSource.alphabeticGroups.getter();

  v60 = *(v59 + 16);
  if (!v60)
  {
    v61 = MEMORY[0x277D84F90];
    goto LABEL_14;
  }

  v61 = _ss22_ContiguousArrayBufferV19_uninitializedCount15minimumCapacityAByxGSi_SitcfCSS_Tt1g5(*(v59 + 16), 0);
  v62 = specialized Sequence._copySequenceContents(initializing:)(&v99, v61 + 4, v60, v59);

  outlined consume of [String : [StandardWorkoutAddWorkoutRow]].Iterator._Variant();
  if (v62 == v60)
  {
    v28 = v92;
LABEL_14:
    v99 = v61;
    specialized MutableCollection<>.sort(by:)(&v99);

    swift_getKeyPath();
    v63 = v84;
    outlined init with copy of AddWorkoutList(v28, v84);
    v64 = (*(v82 + 80) + 16) & ~*(v82 + 80);
    v65 = swift_allocObject();
    outlined init with take of AddWorkoutList(v63, v65 + v64);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySSGMd);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyACyAA7SectionVyAA4TextVAA7ForEachVySay11WorkoutCore08Standardi3AddI3RowCGSSAA6ButtonVy0iB00liM4ViewVGGSgAA05EmptyO0VGAA32_EnvironmentKeyTransformModifierVySbGGAA013_TraitWritingT0VyAA0e10IndexLabelR0VGGMd);
    lazy protocol witness table accessor for type List<Never, TupleView<(Section<EmptyView, Button<AddWorkoutRowView>, ModifiedContent<VStack<Divider>, _TraitWritingModifier<ListRowInsetsTraitKey>>>?, Section<ModifiedContent<ModifiedContent<Text, _EnvironmentKeyWritingModifier<TextAlignment>>, _FlexFrameLayout>, EmptyView, EmptyView>?, ModifiedContent<ModifiedContent<Section<Text, ForEach<[StandardWorkoutAddWorkoutRow], String, Button<AddWorkoutRowView>>, EmptyView>, _EnvironmentKeyTransformModifier<Bool>>, _TraitWritingModifier<SectionIndexLabelKey>>?, ForEach<[String], String, ModifiedContent<ModifiedContent<Section<Text, ForEach<[StandardWorkoutAddWorkoutRow], String, Button<AddWorkoutRowView>>?, EmptyView>, _EnvironmentKeyTransformModifier<Bool>>, _TraitWritingModifier<SectionIndexLabelKey>>>)>> and conformance List<A, B>(&lazy protocol witness table cache variable for type [String] and conformance [A], &_sSaySSGMd);
    lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<Section<Text, ForEach<[StandardWorkoutAddWorkoutRow], String, Button<AddWorkoutRowView>>?, EmptyView>, _EnvironmentKeyTransformModifier<Bool>>, _TraitWritingModifier<SectionIndexLabelKey>> and conformance <> ModifiedContent<A, B>();
    v66 = v95;
    ForEach<>.init(_:id:content:)();
    v67 = v93;
    _s7SwiftUI11EnvironmentV7ContentOyAA13DismissActionV_GWOcTm_4(v97, v93, &_s7SwiftUI7SectionVyAA9EmptyViewVAA6ButtonVy07WorkoutB003Addg3RowE0VGAA15ModifiedContentVyAA6VStackVyAA7DividerVGAA21_TraitWritingModifierVyAA04Listi6InsetsN3KeyVGGGSgMd);
    v68 = v94;
    _s7SwiftUI11EnvironmentV7ContentOyAA13DismissActionV_GWOcTm_4(v98, v94, &_s7SwiftUI7SectionVyAA15ModifiedContentVyAEyAA4TextVAA30_EnvironmentKeyWritingModifierVyAA0F9AlignmentOGGAA16_FlexFrameLayoutVGAA9EmptyViewVARGSgMd);
    v69 = v85;
    _s7SwiftUI11EnvironmentV7ContentOyAA13DismissActionV_GWOcTm_4(v27, v85, &_s7SwiftUI15ModifiedContentVyACyAA7SectionVyAA4TextVAA7ForEachVySay11WorkoutCore08Standardi3AddI3RowCGSSAA6ButtonVy0iB00liM4ViewVGGAA05EmptyO0VGAA32_EnvironmentKeyTransformModifierVySbGGAA013_TraitWritingT0VyAA0e10IndexLabelR0VGGSgMd);
    v70 = v87;
    v71 = *(v87 + 16);
    v72 = v86;
    v73 = v88;
    v71(v86, v66, v88);
    v74 = v89;
    _s7SwiftUI11EnvironmentV7ContentOyAA13DismissActionV_GWOcTm_4(v67, v89, &_s7SwiftUI7SectionVyAA9EmptyViewVAA6ButtonVy07WorkoutB003Addg3RowE0VGAA15ModifiedContentVyAA6VStackVyAA7DividerVGAA21_TraitWritingModifierVyAA04Listi6InsetsN3KeyVGGGSgMd);
    v75 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI7SectionVyAA9EmptyViewVAA6ButtonVy07WorkoutB003Addg3RowE0VGAA15ModifiedContentVyAA6VStackVyAA7DividerVGAA21_TraitWritingModifierVyAA04Listi6InsetsN3KeyVGGGSg_ACyAMyAMyAA4TextVAA012_EnvironmentsoP0VyAA0T9AlignmentOGGAA16_FlexFrameLayoutVGA2EGSgAMyAMyACyA0_AA7ForEachVySay0G4Core08StandardghgI0CGSSAKGAEGAA01_us9TransformP0VySbGGATyAA0c10IndexLabelS0VGGSgA13_ySaySSGSSAMyAMyACyA0_A18_SgAEGA22_GA26_GGtMd);
    _s7SwiftUI11EnvironmentV7ContentOyAA13DismissActionV_GWOcTm_4(v68, v74 + v75[12], &_s7SwiftUI7SectionVyAA15ModifiedContentVyAEyAA4TextVAA30_EnvironmentKeyWritingModifierVyAA0F9AlignmentOGGAA16_FlexFrameLayoutVGAA9EmptyViewVARGSgMd);
    _s7SwiftUI11EnvironmentV7ContentOyAA13DismissActionV_GWOcTm_4(v69, v74 + v75[16], &_s7SwiftUI15ModifiedContentVyACyAA7SectionVyAA4TextVAA7ForEachVySay11WorkoutCore08Standardi3AddI3RowCGSSAA6ButtonVy0iB00liM4ViewVGGAA05EmptyO0VGAA32_EnvironmentKeyTransformModifierVySbGGAA013_TraitWritingT0VyAA0e10IndexLabelR0VGGSgMd);
    v71((v74 + v75[20]), v72, v73);
    v76 = *(v70 + 8);
    v76(v95, v73);
    outlined destroy of ModifiedContent<ModifiedContent<List<Never, TupleView<(Section<EmptyView, Button<AddWorkoutRowView>, ModifiedContent<VStack<Divider>, _TraitWritingModifier<ListRowInsetsTraitKey>>>?, Section<ModifiedContent<ModifiedContent<Text, _EnvironmentKeyWritingModifier<TextAlignment>>, _FlexFrameLayout>, EmptyView, EmptyView>?, ModifiedContent<ModifiedContent<Section<Text, ForEach<[StandardWorkoutAddWorkoutRow], String, Button<AddWorkoutRowView>>, EmptyView>, _EnvironmentKeyTransformModifier<Bool>>, _TraitWritingModifier<SectionIndexLabelKey>>?, ForEach<[String], String, ModifiedContent<ModifiedContent<Section<Text, ForEach<[StandardWorkoutAddWorkoutRow], String, Button<AddWorkoutRowView>>?, EmptyView>, _EnvironmentKeyTransformModifier<Bool>>, _TraitWritingModifier<SectionIndexLabelKey>>>)>>, _TraitWritingModifier<ListSectionSpacingTraitKey>>, _EnvironmentKeyWritingModifier<ListSectionSpacing?>>(v96, &_s7SwiftUI15ModifiedContentVyACyAA7SectionVyAA4TextVAA7ForEachVySay11WorkoutCore08Standardi3AddI3RowCGSSAA6ButtonVy0iB00liM4ViewVGGAA05EmptyO0VGAA32_EnvironmentKeyTransformModifierVySbGGAA013_TraitWritingT0VyAA0e10IndexLabelR0VGGSgMd);
    outlined destroy of ModifiedContent<ModifiedContent<List<Never, TupleView<(Section<EmptyView, Button<AddWorkoutRowView>, ModifiedContent<VStack<Divider>, _TraitWritingModifier<ListRowInsetsTraitKey>>>?, Section<ModifiedContent<ModifiedContent<Text, _EnvironmentKeyWritingModifier<TextAlignment>>, _FlexFrameLayout>, EmptyView, EmptyView>?, ModifiedContent<ModifiedContent<Section<Text, ForEach<[StandardWorkoutAddWorkoutRow], String, Button<AddWorkoutRowView>>, EmptyView>, _EnvironmentKeyTransformModifier<Bool>>, _TraitWritingModifier<SectionIndexLabelKey>>?, ForEach<[String], String, ModifiedContent<ModifiedContent<Section<Text, ForEach<[StandardWorkoutAddWorkoutRow], String, Button<AddWorkoutRowView>>?, EmptyView>, _EnvironmentKeyTransformModifier<Bool>>, _TraitWritingModifier<SectionIndexLabelKey>>>)>>, _TraitWritingModifier<ListSectionSpacingTraitKey>>, _EnvironmentKeyWritingModifier<ListSectionSpacing?>>(v98, &_s7SwiftUI7SectionVyAA15ModifiedContentVyAEyAA4TextVAA30_EnvironmentKeyWritingModifierVyAA0F9AlignmentOGGAA16_FlexFrameLayoutVGAA9EmptyViewVARGSgMd);
    outlined destroy of ModifiedContent<ModifiedContent<List<Never, TupleView<(Section<EmptyView, Button<AddWorkoutRowView>, ModifiedContent<VStack<Divider>, _TraitWritingModifier<ListRowInsetsTraitKey>>>?, Section<ModifiedContent<ModifiedContent<Text, _EnvironmentKeyWritingModifier<TextAlignment>>, _FlexFrameLayout>, EmptyView, EmptyView>?, ModifiedContent<ModifiedContent<Section<Text, ForEach<[StandardWorkoutAddWorkoutRow], String, Button<AddWorkoutRowView>>, EmptyView>, _EnvironmentKeyTransformModifier<Bool>>, _TraitWritingModifier<SectionIndexLabelKey>>?, ForEach<[String], String, ModifiedContent<ModifiedContent<Section<Text, ForEach<[StandardWorkoutAddWorkoutRow], String, Button<AddWorkoutRowView>>?, EmptyView>, _EnvironmentKeyTransformModifier<Bool>>, _TraitWritingModifier<SectionIndexLabelKey>>>)>>, _TraitWritingModifier<ListSectionSpacingTraitKey>>, _EnvironmentKeyWritingModifier<ListSectionSpacing?>>(v97, &_s7SwiftUI7SectionVyAA9EmptyViewVAA6ButtonVy07WorkoutB003Addg3RowE0VGAA15ModifiedContentVyAA6VStackVyAA7DividerVGAA21_TraitWritingModifierVyAA04Listi6InsetsN3KeyVGGGSgMd);
    v76(v72, v73);
    outlined destroy of ModifiedContent<ModifiedContent<List<Never, TupleView<(Section<EmptyView, Button<AddWorkoutRowView>, ModifiedContent<VStack<Divider>, _TraitWritingModifier<ListRowInsetsTraitKey>>>?, Section<ModifiedContent<ModifiedContent<Text, _EnvironmentKeyWritingModifier<TextAlignment>>, _FlexFrameLayout>, EmptyView, EmptyView>?, ModifiedContent<ModifiedContent<Section<Text, ForEach<[StandardWorkoutAddWorkoutRow], String, Button<AddWorkoutRowView>>, EmptyView>, _EnvironmentKeyTransformModifier<Bool>>, _TraitWritingModifier<SectionIndexLabelKey>>?, ForEach<[String], String, ModifiedContent<ModifiedContent<Section<Text, ForEach<[StandardWorkoutAddWorkoutRow], String, Button<AddWorkoutRowView>>?, EmptyView>, _EnvironmentKeyTransformModifier<Bool>>, _TraitWritingModifier<SectionIndexLabelKey>>>)>>, _TraitWritingModifier<ListSectionSpacingTraitKey>>, _EnvironmentKeyWritingModifier<ListSectionSpacing?>>(v69, &_s7SwiftUI15ModifiedContentVyACyAA7SectionVyAA4TextVAA7ForEachVySay11WorkoutCore08Standardi3AddI3RowCGSSAA6ButtonVy0iB00liM4ViewVGGAA05EmptyO0VGAA32_EnvironmentKeyTransformModifierVySbGGAA013_TraitWritingT0VyAA0e10IndexLabelR0VGGSgMd);
    outlined destroy of ModifiedContent<ModifiedContent<List<Never, TupleView<(Section<EmptyView, Button<AddWorkoutRowView>, ModifiedContent<VStack<Divider>, _TraitWritingModifier<ListRowInsetsTraitKey>>>?, Section<ModifiedContent<ModifiedContent<Text, _EnvironmentKeyWritingModifier<TextAlignment>>, _FlexFrameLayout>, EmptyView, EmptyView>?, ModifiedContent<ModifiedContent<Section<Text, ForEach<[StandardWorkoutAddWorkoutRow], String, Button<AddWorkoutRowView>>, EmptyView>, _EnvironmentKeyTransformModifier<Bool>>, _TraitWritingModifier<SectionIndexLabelKey>>?, ForEach<[String], String, ModifiedContent<ModifiedContent<Section<Text, ForEach<[StandardWorkoutAddWorkoutRow], String, Button<AddWorkoutRowView>>?, EmptyView>, _EnvironmentKeyTransformModifier<Bool>>, _TraitWritingModifier<SectionIndexLabelKey>>>)>>, _TraitWritingModifier<ListSectionSpacingTraitKey>>, _EnvironmentKeyWritingModifier<ListSectionSpacing?>>(v94, &_s7SwiftUI7SectionVyAA15ModifiedContentVyAEyAA4TextVAA30_EnvironmentKeyWritingModifierVyAA0F9AlignmentOGGAA16_FlexFrameLayoutVGAA9EmptyViewVARGSgMd);
    return outlined destroy of ModifiedContent<ModifiedContent<List<Never, TupleView<(Section<EmptyView, Button<AddWorkoutRowView>, ModifiedContent<VStack<Divider>, _TraitWritingModifier<ListRowInsetsTraitKey>>>?, Section<ModifiedContent<ModifiedContent<Text, _EnvironmentKeyWritingModifier<TextAlignment>>, _FlexFrameLayout>, EmptyView, EmptyView>?, ModifiedContent<ModifiedContent<Section<Text, ForEach<[StandardWorkoutAddWorkoutRow], String, Button<AddWorkoutRowView>>, EmptyView>, _EnvironmentKeyTransformModifier<Bool>>, _TraitWritingModifier<SectionIndexLabelKey>>?, ForEach<[String], String, ModifiedContent<ModifiedContent<Section<Text, ForEach<[StandardWorkoutAddWorkoutRow], String, Button<AddWorkoutRowView>>?, EmptyView>, _EnvironmentKeyTransformModifier<Bool>>, _TraitWritingModifier<SectionIndexLabelKey>>>)>>, _TraitWritingModifier<ListSectionSpacingTraitKey>>, _EnvironmentKeyWritingModifier<ListSectionSpacing?>>(v93, &_s7SwiftUI7SectionVyAA9EmptyViewVAA6ButtonVy07WorkoutB003Addg3RowE0VGAA15ModifiedContentVyAA6VStackVyAA7DividerVGAA21_TraitWritingModifierVyAA04Listi6InsetsN3KeyVGGGSgMd);
  }

  __break(1u);

  __break(1u);
  return result;
}

uint64_t closure #1 in closure #1 in AddWorkoutList.addWorkoutListView()(uint64_t a1)
{
  v2 = type metadata accessor for AddWorkoutList();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2 - 8);
  outlined init with copy of AddWorkoutList(a1, &v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v5 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v6 = swift_allocObject();
  outlined init with take of AddWorkoutList(&v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), v6 + v5);
  type metadata accessor for AddWorkoutRowView();
  _s9WorkoutUI28ConfigurationNavigationModelCAC7Combine16ObservableObjectAAWlTm_18(&lazy protocol witness table cache variable for type AddWorkoutRowView and conformance AddWorkoutRowView, type metadata accessor for AddWorkoutRowView);
  return Button.init(action:label:)();
}

uint64_t closure #1 in closure #1 in closure #1 in AddWorkoutList.addWorkoutListView()()
{
  v0 = type metadata accessor for DismissAction();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v8 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for AddWorkoutList();
  type metadata accessor for SeymourDataSource();
  _s9WorkoutUI28ConfigurationNavigationModelCAC7Combine16ObservableObjectAAWlTm_18(&lazy protocol witness table cache variable for type SeymourDataSource and conformance SeymourDataSource, type metadata accessor for SeymourDataSource);
  v4 = (StateObject.wrappedValue.getter() + OBJC_IVAR____TtC9WorkoutUI17SeymourDataSource_seymourSampleContentProvider);
  v5 = v4[3];
  v6 = v4[5];
  __swift_project_boxed_opaque_existential_2(v4, v5);
  (*(v6 + 24))(v5, v6);

  AddWorkoutList.dismiss.getter(v3);
  DismissAction.callAsFunction()();
  return (*(v1 + 8))(v3, v0);
}

void closure #2 in closure #1 in closure #1 in AddWorkoutList.addWorkoutListView()(uint64_t a1@<X8>)
{
  *(a1 + 56) = swift_getKeyPath();
  *(a1 + 64) = 0;
  FIUISizeForIconSize();
  *(a1 + 72) = v2;
  *(a1 + 80) = v3;
  v4 = type metadata accessor for AddWorkoutRowView();
  FIUISizeForIconSize();
  lazy protocol witness table accessor for type CGFloat and conformance CGFloat();
  ScaledMetric.init(wrappedValue:)();
  v5 = [objc_opt_self() keyColors];
  if (!v5)
  {
    __break(1u);
    goto LABEL_7;
  }

  v6 = v5;
  v7 = [v5 nonGradientTextColor];

  if (!v7)
  {
LABEL_7:
    __break(1u);
    return;
  }

  v8 = *(v4 + 36);
  *(a1 + v8) = Color.init(uiColor:)();
  v9 = *(v4 + 40);
  *(a1 + v9) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI11EnvironmentV7ContentOyAA15DynamicTypeSizeO_GMd);
  swift_storeEnumTagMultiPayload();
  if (one-time initialization token for WorkoutUIBundle != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v10 = WorkoutUIBundle.super.isa;
  v17._object = 0xE000000000000000;
  v11._countAndFlagsBits = 0xD000000000000020;
  v11._object = 0x800000020CBA4770;
  v12.value._countAndFlagsBits = 0xD000000000000013;
  v12.value._object = 0x800000020CB99A10;
  v13._countAndFlagsBits = 0;
  v13._object = 0xE000000000000000;
  v17._countAndFlagsBits = 0;
  NSLocalizedString(_:tableName:bundle:value:comment:)(v11, v12, v10, v13, v17);

  lazy protocol witness table accessor for type String and conformance String();
  *a1 = Text.init<A>(_:)();
  *(a1 + 8) = v14;
  *(a1 + 16) = v15 & 1;
  *(a1 + 24) = v16;
  *(a1 + 32) = 0xD000000000000010;
  *(a1 + 40) = 0x800000020CB9A1A0;
  *(a1 + 48) = 0;
}

double closure #4 in closure #1 in AddWorkoutList.addWorkoutListView()@<D0>(uint64_t a1@<X8>)
{
  if (one-time initialization token for WorkoutUIBundle != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v2 = WorkoutUIBundle.super.isa;
  v28._object = 0xE000000000000000;
  v3._countAndFlagsBits = 0xD000000000000030;
  v3._object = 0x800000020CBA47A0;
  v4.value._object = 0x800000020CB936F0;
  v4.value._countAndFlagsBits = 0xD000000000000012;
  v5._countAndFlagsBits = 0;
  v5._object = 0xE000000000000000;
  v28._countAndFlagsBits = 0;
  v6 = NSLocalizedString(_:tableName:bundle:value:comment:)(v3, v4, v2, v5, v28);

  lazy protocol witness table accessor for type String and conformance String();
  v7 = Text.init<A>(_:)();
  v9 = v8;
  v11 = v10;
  static Font.body.getter();
  v12 = Text.font(_:)();
  v14 = v13;
  v16 = v15;
  v18 = v17;

  outlined consume of Text.Storage(v7, v9, v11 & 1);

  KeyPath = swift_getKeyPath();
  static Alignment.center.getter();
  _FlexFrameLayout.init(minWidth:idealWidth:maxWidth:minHeight:idealHeight:maxHeight:alignment:)();
  *&v21[23] = v22;
  *&v21[7] = v6;
  *&v21[55] = v24;
  *&v21[71] = v25;
  *&v21[87] = v26;
  *&v21[103] = v27;
  *&v21[39] = v23;
  *(a1 + 105) = *&v21[64];
  *(a1 + 121) = *&v21[80];
  *(a1 + 137) = *&v21[96];
  *(a1 + 41) = *v21;
  *(a1 + 57) = *&v21[16];
  result = *&v21[32];
  *(a1 + 73) = *&v21[32];
  *a1 = v12;
  *(a1 + 8) = v14;
  *(a1 + 16) = v16 & 1;
  *(a1 + 24) = v18;
  *(a1 + 32) = KeyPath;
  *(a1 + 40) = 1;
  *(a1 + 152) = *(&v27 + 1);
  *(a1 + 89) = *&v21[48];
  return result;
}

uint64_t closure #5 in closure #1 in AddWorkoutList.addWorkoutListView()(uint64_t a1)
{
  v2 = type metadata accessor for AddWorkoutList();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v10[3] = *(a1 + *(v5 + 32) + 8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI5StateVy11WorkoutCore03AddD10DataSourceCGMd);
  State.wrappedValue.getter();
  v6 = dispatch thunk of AddWorkoutDataSource.popular.getter();

  v10[2] = v6;
  outlined init with copy of AddWorkoutList(a1, v10 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v7 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v8 = swift_allocObject();
  outlined init with take of AddWorkoutList(v10 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), v8 + v7);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay11WorkoutCore08Standarda3AddA3RowCGMd);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI6ButtonVy07WorkoutB003AddD7RowViewVGMd);
  lazy protocol witness table accessor for type List<Never, TupleView<(Section<EmptyView, Button<AddWorkoutRowView>, ModifiedContent<VStack<Divider>, _TraitWritingModifier<ListRowInsetsTraitKey>>>?, Section<ModifiedContent<ModifiedContent<Text, _EnvironmentKeyWritingModifier<TextAlignment>>, _FlexFrameLayout>, EmptyView, EmptyView>?, ModifiedContent<ModifiedContent<Section<Text, ForEach<[StandardWorkoutAddWorkoutRow], String, Button<AddWorkoutRowView>>, EmptyView>, _EnvironmentKeyTransformModifier<Bool>>, _TraitWritingModifier<SectionIndexLabelKey>>?, ForEach<[String], String, ModifiedContent<ModifiedContent<Section<Text, ForEach<[StandardWorkoutAddWorkoutRow], String, Button<AddWorkoutRowView>>?, EmptyView>, _EnvironmentKeyTransformModifier<Bool>>, _TraitWritingModifier<SectionIndexLabelKey>>>)>> and conformance List<A, B>(&lazy protocol witness table cache variable for type [StandardWorkoutAddWorkoutRow] and conformance [A], &_sSay11WorkoutCore08Standarda3AddA3RowCGMd);
  lazy protocol witness table accessor for type List<Never, TupleView<(Section<EmptyView, Button<AddWorkoutRowView>, ModifiedContent<VStack<Divider>, _TraitWritingModifier<ListRowInsetsTraitKey>>>?, Section<ModifiedContent<ModifiedContent<Text, _EnvironmentKeyWritingModifier<TextAlignment>>, _FlexFrameLayout>, EmptyView, EmptyView>?, ModifiedContent<ModifiedContent<Section<Text, ForEach<[StandardWorkoutAddWorkoutRow], String, Button<AddWorkoutRowView>>, EmptyView>, _EnvironmentKeyTransformModifier<Bool>>, _TraitWritingModifier<SectionIndexLabelKey>>?, ForEach<[String], String, ModifiedContent<ModifiedContent<Section<Text, ForEach<[StandardWorkoutAddWorkoutRow], String, Button<AddWorkoutRowView>>?, EmptyView>, _EnvironmentKeyTransformModifier<Bool>>, _TraitWritingModifier<SectionIndexLabelKey>>>)>> and conformance List<A, B>(&lazy protocol witness table cache variable for type Button<AddWorkoutRowView> and conformance Button<A>, &_s7SwiftUI6ButtonVy07WorkoutB003AddD7RowViewVGMd);
  _s9WorkoutUI28ConfigurationNavigationModelCAC7Combine16ObservableObjectAAWlTm_18(&lazy protocol witness table cache variable for type StandardWorkoutAddWorkoutRow and conformance StandardWorkoutAddWorkoutRow, MEMORY[0x277D7D9A8]);
  return ForEach<>.init(_:content:)();
}

uint64_t closure #8 in closure #1 in AddWorkoutList.addWorkoutListView()@<X0>(uint64_t a1@<X1>, uint64_t a2@<X8>)
{

  String.init<A>(_:)();
  lazy protocol witness table accessor for type String and conformance String();
  Text.init<A>(_:)();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI7ForEachVySay11WorkoutCore08Standarde3AddE3RowCGSSAA6ButtonVy0eB00heI4ViewVGGSgMd);
  lazy protocol witness table accessor for type ForEach<[StandardWorkoutAddWorkoutRow], String, Button<AddWorkoutRowView>>? and conformance <A> A?();
  Section<>.init(header:content:)();
  v4 = *(a1 + *(type metadata accessor for AddWorkoutList() + 52));
  KeyPath = swift_getKeyPath();
  v6 = swift_allocObject();
  *(v6 + 16) = v4;
  v7 = (a2 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyAA7SectionVyAA4TextVAA7ForEachVySay11WorkoutCore08Standardi3AddI3RowCGSSAA6ButtonVy0iB00liM4ViewVGGSgAA05EmptyO0VGAA32_EnvironmentKeyTransformModifierVySbGGMd) + 36));
  *v7 = KeyPath;
  v7[1] = closure #1 in View.disabled(_:)partial apply;
  v7[2] = v6;
  v8 = a2 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyACyAA7SectionVyAA4TextVAA7ForEachVySay11WorkoutCore08Standardi3AddI3RowCGSSAA6ButtonVy0iB00liM4ViewVGGSgAA05EmptyO0VGAA32_EnvironmentKeyTransformModifierVySbGGAA013_TraitWritingT0VyAA0e10IndexLabelR0VGGMd) + 36);

  *v8 = Text.init<A>(_:)();
  *(v8 + 8) = v9;
  *(v8 + 16) = v10 & 1;
  *(v8 + 24) = v11;
  v12 = *MEMORY[0x277CDDDD0];
  v13 = type metadata accessor for SectionIndexLabel();
  v14 = *(v13 - 8);
  (*(v14 + 104))(v8, v12, v13);
  return (*(v14 + 56))(v8, 0, 1, v13);
}

uint64_t closure #1 in closure #8 in closure #1 in AddWorkoutList.addWorkoutListView()@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X2>, uint64_t a4@<X8>)
{
  v35 = a4;
  v7 = type metadata accessor for AddWorkoutList();
  v8 = v7 - 8;
  v31 = *(v7 - 8);
  v9 = *(v31 + 64);
  MEMORY[0x28223BE20](v7);
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI7ForEachVySay11WorkoutCore08Standarde3AddE3RowCGSSAA6ButtonVy0eB00heI4ViewVGGMd);
  v10 = *(v34 - 8);
  MEMORY[0x28223BE20](v34);
  v32 = a1;
  v33 = &v30 - v11;
  v12 = (a1 + *(v8 + 32));
  v13 = *v12;
  v14 = v12[1];
  v36 = *v12;
  v37 = v14;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI5StateVy11WorkoutCore03AddD10DataSourceCGMd);
  State.wrappedValue.getter();
  v15 = dispatch thunk of AddWorkoutDataSource.alphabeticGroups.getter();

  if (!*(v15 + 16))
  {

    goto LABEL_7;
  }

  specialized __RawDictionaryStorage.find<A>(_:)(a2, a3);
  v17 = v16;

  if ((v17 & 1) == 0)
  {
LABEL_7:
    v28 = 1;
    v26 = v34;
    v27 = v35;
    return (*(v10 + 56))(v27, v28, 1, v26);
  }

  v36 = v13;
  v37 = v14;
  State.wrappedValue.getter();
  v18 = dispatch thunk of AddWorkoutDataSource.alphabeticGroups.getter();

  if (*(v18 + 16))
  {
    specialized __RawDictionaryStorage.find<A>(_:)(a2, a3);
    if (v19)
    {

      v36 = specialized Array._copyToContiguousArray()(v20);
      specialized MutableCollection<>.sort(by:)(&v36);

      outlined init with copy of AddWorkoutList(v32, &v30 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
      v21 = (*(v31 + 80) + 16) & ~*(v31 + 80);
      v22 = swift_allocObject();
      outlined init with take of AddWorkoutList(&v30 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0), v22 + v21);
      __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay11WorkoutCore08Standarda3AddA3RowCGMd);
      __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI6ButtonVy07WorkoutB003AddD7RowViewVGMd);
      lazy protocol witness table accessor for type List<Never, TupleView<(Section<EmptyView, Button<AddWorkoutRowView>, ModifiedContent<VStack<Divider>, _TraitWritingModifier<ListRowInsetsTraitKey>>>?, Section<ModifiedContent<ModifiedContent<Text, _EnvironmentKeyWritingModifier<TextAlignment>>, _FlexFrameLayout>, EmptyView, EmptyView>?, ModifiedContent<ModifiedContent<Section<Text, ForEach<[StandardWorkoutAddWorkoutRow], String, Button<AddWorkoutRowView>>, EmptyView>, _EnvironmentKeyTransformModifier<Bool>>, _TraitWritingModifier<SectionIndexLabelKey>>?, ForEach<[String], String, ModifiedContent<ModifiedContent<Section<Text, ForEach<[StandardWorkoutAddWorkoutRow], String, Button<AddWorkoutRowView>>?, EmptyView>, _EnvironmentKeyTransformModifier<Bool>>, _TraitWritingModifier<SectionIndexLabelKey>>>)>> and conformance List<A, B>(&lazy protocol witness table cache variable for type [StandardWorkoutAddWorkoutRow] and conformance [A], &_sSay11WorkoutCore08Standarda3AddA3RowCGMd);
      lazy protocol witness table accessor for type List<Never, TupleView<(Section<EmptyView, Button<AddWorkoutRowView>, ModifiedContent<VStack<Divider>, _TraitWritingModifier<ListRowInsetsTraitKey>>>?, Section<ModifiedContent<ModifiedContent<Text, _EnvironmentKeyWritingModifier<TextAlignment>>, _FlexFrameLayout>, EmptyView, EmptyView>?, ModifiedContent<ModifiedContent<Section<Text, ForEach<[StandardWorkoutAddWorkoutRow], String, Button<AddWorkoutRowView>>, EmptyView>, _EnvironmentKeyTransformModifier<Bool>>, _TraitWritingModifier<SectionIndexLabelKey>>?, ForEach<[String], String, ModifiedContent<ModifiedContent<Section<Text, ForEach<[StandardWorkoutAddWorkoutRow], String, Button<AddWorkoutRowView>>?, EmptyView>, _EnvironmentKeyTransformModifier<Bool>>, _TraitWritingModifier<SectionIndexLabelKey>>>)>> and conformance List<A, B>(&lazy protocol witness table cache variable for type Button<AddWorkoutRowView> and conformance Button<A>, &_s7SwiftUI6ButtonVy07WorkoutB003AddD7RowViewVGMd);
      _s9WorkoutUI28ConfigurationNavigationModelCAC7Combine16ObservableObjectAAWlTm_18(&lazy protocol witness table cache variable for type StandardWorkoutAddWorkoutRow and conformance StandardWorkoutAddWorkoutRow, MEMORY[0x277D7D9A8]);
      v23 = v33;
      ForEach<>.init(_:content:)();
      v25 = v34;
      v24 = v35;
      (*(v10 + 32))(v35, v23, v34);
      v26 = v25;
      v27 = v24;
      v28 = 0;
      return (*(v10 + 56))(v27, v28, 1, v26);
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);

  __break(1u);
  return result;
}

uint64_t closure #1 in closure #5 in closure #1 in AddWorkoutList.addWorkoutListView()(void **a1, uint64_t a2)
{
  v4 = type metadata accessor for AddWorkoutList();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = *a1;
  outlined init with copy of AddWorkoutList(a2, &v12[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)]);
  v8 = (*(v5 + 80) + 24) & ~*(v5 + 80);
  v9 = swift_allocObject();
  *(v9 + 16) = v7;
  outlined init with take of AddWorkoutList(&v12[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)], v9 + v8);
  v13 = v7;
  type metadata accessor for AddWorkoutRowView();
  _s9WorkoutUI28ConfigurationNavigationModelCAC7Combine16ObservableObjectAAWlTm_18(&lazy protocol witness table cache variable for type AddWorkoutRowView and conformance AddWorkoutRowView, type metadata accessor for AddWorkoutRowView);
  v10 = v7;
  return Button.init(action:label:)();
}

uint64_t closure #1 in closure #1 in closure #5 in closure #1 in AddWorkoutList.addWorkoutListView()(uint64_t a1, uint64_t a2)
{
  v3 = type metadata accessor for DismissAction();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = v15 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = dispatch thunk of StandardWorkoutAddWorkoutRow.activityType.getter();
  AddWorkoutList.activityMoveMode.getter();
  v8 = FIUIWorkoutActivityType.shouldShowOtherWorkoutCalorieDisclaimer(activityMoveMode:)();

  if (v8)
  {
    v9 = dispatch thunk of StandardWorkoutAddWorkoutRow.activityType.getter();
    v16 = *(a2 + *(type metadata accessor for AddWorkoutList() + 28));
    v15[1] = v9;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI5StateVySo23FIUIWorkoutActivityTypeCSgGMd);
    return State.wrappedValue.setter();
  }

  else
  {
    v11 = type metadata accessor for AddWorkoutList();
    v12 = *(a2 + *(v11 + 36));
    v13 = dispatch thunk of StandardWorkoutAddWorkoutRow.activityType.getter();
    [v12 showActivityType_];

    v14 = (a2 + *(v11 + 48));
    if (*v14)
    {
      (*v14)();
    }

    AddWorkoutList.dismiss.getter(v6);
    DismissAction.callAsFunction()();
    return (*(v4 + 8))(v6, v3);
  }
}

uint64_t protocol witness for View.body.getter in conformance AddWorkoutList()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyAA4ViewPAAE17toolbarBackground_3forQrAA10VisibilityO_AA16ToolbarPlacementVdtFQOyAeAE0F07contentQrqd__yXE_tAA0jD0Rd__lFQOyAeAE29navigationBarTitleDisplayModeyQrAA010NavigationN4ItemV0opQ0OFQOyAeAE0mO0yQrqd__SyRd__lFQOyACyACyAA4ListVys5NeverOAA05TupleE0VyAA7SectionVyAA05EmptyE0VAA6ButtonVy07WorkoutB003Addz3RowE0VGACyAA6VStackVyAA7DividerVGAA21_TraitWritingModifierVyAA0T17RowInsetsTraitKeyVGGGSg_A0_yACyACyAA4TextVAA30_EnvironmentKeyWritingModifierVyAA13TextAlignmentOGGAA16_FlexFrameLayoutVGA2_A2_GSgACyACyA0_yA23_AA7ForEachVySay0Z4Core08Standardz3AddZ3RowCGSSA8_GA2_GAA32_EnvironmentKeyTransformModifierVySbGGA15_yAA0W13IndexLabelKeyVGGSgA36_ySaySSGSSACyACyA0_yA23_A41_SgA2_GA45_GA49_GGtGGA15_yAA0tW15SpacingTraitKeyVGGA25_yAA0tW7SpacingVSgGG_SSQo__Qo__AA0jD7BuilderV10buildBlockyQrxAaNRzlFZQOy_AA0jS0VyytA4_yAA07DefaultY5LabelVGGQo_Qo__Qo_A5_0Z15DisclaimerSheetVGMd);
  lazy protocol witness table accessor for type ModifiedContent<<<opaque return type of View.toolbarBackground(_:for:)>>.0, WorkoutDisclaimerSheet> and conformance <> ModifiedContent<A, B>();
  return NavigationView.init(content:)();
}

uint64_t one-time initialization function for ShowGuidedWalkFitnessPlusAudioWorkouts()
{
  result = MEMORY[0x20F30BAD0](0xD000000000000026, 0x800000020CBA46B0);
  static NSNotificationName.ShowGuidedWalkFitnessPlusAudioWorkouts = result;
  return result;
}

uint64_t one-time initialization function for ShowGuidedRunFitnessPlusAudioWorkouts()
{
  result = MEMORY[0x20F30BAD0](0xD000000000000025, 0x800000020CBA4680);
  static NSNotificationName.ShowGuidedRunFitnessPlusAudioWorkouts = result;
  return result;
}

id static NSNotificationName.ShowGuidedWalkFitnessPlusAudioWorkouts.getter(void *a1, void **a2)
{
  if (*a1 == -1)
  {
    v3 = *a2;
  }

  else
  {
    swift_once();
    v3 = *a2;
  }

  return v3;
}

uint64_t type metadata accessor for AddWorkoutList()
{
  result = type metadata singleton initialization cache for AddWorkoutList;
  if (!type metadata singleton initialization cache for AddWorkoutList)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<<<opaque return type of View.toolbarBackground(_:for:)>>.0, WorkoutDisclaimerSheet> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<<<opaque return type of View.toolbarBackground(_:for:)>>.0, WorkoutDisclaimerSheet> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<<<opaque return type of View.toolbarBackground(_:for:)>>.0, WorkoutDisclaimerSheet> and conformance <> ModifiedContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyAA4ViewPAAE17toolbarBackground_3forQrAA10VisibilityO_AA16ToolbarPlacementVdtFQOyAeAE0F07contentQrqd__yXE_tAA0jD0Rd__lFQOyAeAE29navigationBarTitleDisplayModeyQrAA010NavigationN4ItemV0opQ0OFQOyAeAE0mO0yQrqd__SyRd__lFQOyACyACyAA4ListVys5NeverOAA05TupleE0VyAA7SectionVyAA05EmptyE0VAA6ButtonVy07WorkoutB003Addz3RowE0VGACyAA6VStackVyAA7DividerVGAA21_TraitWritingModifierVyAA0T17RowInsetsTraitKeyVGGGSg_A0_yACyACyAA4TextVAA30_EnvironmentKeyWritingModifierVyAA13TextAlignmentOGGAA16_FlexFrameLayoutVGA2_A2_GSgACyACyA0_yA23_AA7ForEachVySay0Z4Core08Standardz3AddZ3RowCGSSA8_GA2_GAA32_EnvironmentKeyTransformModifierVySbGGA15_yAA0W13IndexLabelKeyVGGSgA36_ySaySSGSSACyACyA0_yA23_A41_SgA2_GA45_GA49_GGtGGA15_yAA0tW15SpacingTraitKeyVGGA25_yAA0tW7SpacingVSgGG_SSQo__Qo__AA0jD7BuilderV10buildBlockyQrxAaNRzlFZQOy_AA0jS0VyytA4_yAA07DefaultY5LabelVGGQo_Qo__Qo_A5_0Z15DisclaimerSheetVGMd);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI4ViewPAAE7toolbar7contentQrqd__yXE_tAA14ToolbarContentRd__lFQOyAcAE29navigationBarTitleDisplayModeyQrAA010NavigationI4ItemV0jkL0OFQOyAcAE0hJ0yQrqd__SyRd__lFQOyAA08ModifiedG0VyANyAA4ListVys5NeverOAA05TupleC0VyAA7SectionVyAA05EmptyC0VAA6ButtonVy07WorkoutB003Addv3RowC0VGANyAA6VStackVyAA7DividerVGAA21_TraitWritingModifierVyAA0pX14InsetsTraitKeyVGGGSg_AVyANyANyAA4TextVAA30_EnvironmentKeyWritingModifierVyAA13TextAlignmentOGGAA16_FlexFrameLayoutVGA2XGSgANyANyAVyA17_AA7ForEachVySay0V4Core08StandardvwvX0CGSSA2_GAXGAA32_EnvironmentKeyTransformModifierVySbGGA9_yAA0S13IndexLabelKeyVGGSgA30_ySaySSGSSANyANyAVyA17_A35_SgAXGA39_GA43_GGtGGA9_yAA0pS15SpacingTraitKeyVGGA19_yAA0pS7SpacingVSgGG_SSQo__Qo__AA0fG7BuilderV10buildBlockyQrxAaFRzlFZQOy_AA0fN0VyytAZyAA07DefaultU5LabelVGGQo_Qo_Md);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI4ViewPAAE29navigationBarTitleDisplayModeyQrAA010NavigationE4ItemV0fgH0OFQOyAcAE0dF0yQrqd__SyRd__lFQOyAA15ModifiedContentVyAKyAA4ListVys5NeverOAA05TupleC0VyAA7SectionVyAA05EmptyC0VAA6ButtonVy07WorkoutB003Adds3RowC0VGAKyAA6VStackVyAA7DividerVGAA21_TraitWritingModifierVyAA0mu6InsetsX3KeyVGGGSg_ASyAKyAKyAA4TextVAA015_EnvironmentKeyyZ0VyAA13TextAlignmentOGGAA16_FlexFrameLayoutVGA2UGSgAKyAKyASyA14_AA7ForEachVySay0S4Core08StandardstsU0CGSSA_GAUGAA024_EnvironmentKeyTransformZ0VySbGGA6_yAA0P13IndexLabelKeyVGGSgA27_ySaySSGSSAKyAKyASyA14_A32_SgAUGA36_GA40_GGtGGA6_yAA0mp7SpacingX3KeyVGGA16_yAA0mP7SpacingVSgGG_SSQo__Qo_Md);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI21ToolbarContentBuilderV10buildBlockyQrxAA0cD0RzlFZQOy_AA0C4ItemVyytAA6ButtonVyAA07DefaultI5LabelVGGQo_Md);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI4ViewPAAE15navigationTitleyQrqd__SyRd__lFQOyAA15ModifiedContentVyAFyAA4ListVys5NeverOAA05TupleC0VyAA7SectionVyAA05EmptyC0VAA6ButtonVy07WorkoutB003Addn3RowC0VGAFyAA6VStackVyAA7DividerVGAA21_TraitWritingModifierVyAA0hp6InsetsS3KeyVGGGSg_ANyAFyAFyAA4TextVAA012_EnvironmentwtU0VyAA0X9AlignmentOGGAA16_FlexFrameLayoutVGA2PGSgAFyAFyANyA9_AA7ForEachVySay0N4Core08StandardnonP0CGSSAVGAPGAA01_yw9TransformU0VySbGGA1_yAA0k10IndexLabelW0VGGSgA22_ySaySSGSSAFyAFyANyA9_A27_SgAPGA31_GA35_GGtGGA1_yAA0hk7SpacingsW0VGGA11_yAA0hK7SpacingVSgGG_SSQo_Md);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyACyAA4ListVys5NeverOAA9TupleViewVyAA7SectionVyAA05EmptyH0VAA6ButtonVy07WorkoutB003Addl3RowH0VGACyAA6VStackVyAA7DividerVGAA21_TraitWritingModifierVyAA0en6InsetsQ3KeyVGGGSg_AKyACyACyAA4TextVAA012_EnvironmenturS0VyAA0V9AlignmentOGGAA16_FlexFrameLayoutVGA2MGSgACyACyAKyA6_AA7ForEachVySay0L4Core08StandardlmlN0CGSSASGAMGAA01_wu9TransformS0VySbGGAZyAA0i10IndexLabelU0VGGSgA19_ySaySSGSSACyACyAKyA6_A24_SgAMGA28_GA32_GGtGGAZyAA0ei7SpacingqU0VGGA8_yAA0eI7SpacingVSgGGMd);
    lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<List<Never, TupleView<(Section<EmptyView, Button<AddWorkoutRowView>, ModifiedContent<VStack<Divider>, _TraitWritingModifier<ListRowInsetsTraitKey>>>?, Section<ModifiedContent<ModifiedContent<Text, _EnvironmentKeyWritingModifier<TextAlignment>>, _FlexFrameLayout>, EmptyView, EmptyView>?, ModifiedContent<ModifiedContent<Section<Text, ForEach<[StandardWorkoutAddWorkoutRow], String, Button<AddWorkoutRowView>>, EmptyView>, _EnvironmentKeyTransformModifier<Bool>>, _TraitWritingModifier<SectionIndexLabelKey>>?, ForEach<[String], String, ModifiedContent<ModifiedContent<Section<Text, ForEach<[StandardWorkoutAddWorkoutRow], String, Button<AddWorkoutRowView>>?, EmptyView>, _EnvironmentKeyTransformModifier<Bool>>, _TraitWritingModifier<SectionIndexLabelKey>>>)>>, _TraitWritingModifier<ListSectionSpacingTraitKey>>, _EnvironmentKeyWritingModifier<ListSectionSpacing?>> and conformance <> ModifiedContent<A, B>();
    lazy protocol witness table accessor for type String and conformance String();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI11ToolbarItemVyytAA6ButtonVyAA07DefaultE5LabelVGGMd);
    lazy protocol witness table accessor for type List<Never, TupleView<(Section<EmptyView, Button<AddWorkoutRowView>, ModifiedContent<VStack<Divider>, _TraitWritingModifier<ListRowInsetsTraitKey>>>?, Section<ModifiedContent<ModifiedContent<Text, _EnvironmentKeyWritingModifier<TextAlignment>>, _FlexFrameLayout>, EmptyView, EmptyView>?, ModifiedContent<ModifiedContent<Section<Text, ForEach<[StandardWorkoutAddWorkoutRow], String, Button<AddWorkoutRowView>>, EmptyView>, _EnvironmentKeyTransformModifier<Bool>>, _TraitWritingModifier<SectionIndexLabelKey>>?, ForEach<[String], String, ModifiedContent<ModifiedContent<Section<Text, ForEach<[StandardWorkoutAddWorkoutRow], String, Button<AddWorkoutRowView>>?, EmptyView>, _EnvironmentKeyTransformModifier<Bool>>, _TraitWritingModifier<SectionIndexLabelKey>>>)>> and conformance List<A, B>(&lazy protocol witness table cache variable for type ToolbarItem<(), Button<DefaultButtonLabel>> and conformance ToolbarItem<A, B>, &_s7SwiftUI11ToolbarItemVyytAA6ButtonVyAA07DefaultE5LabelVGGMd);
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    _s9WorkoutUI28ConfigurationNavigationModelCAC7Combine16ObservableObjectAAWlTm_18(&lazy protocol witness table cache variable for type WorkoutDisclaimerSheet and conformance WorkoutDisclaimerSheet, type metadata accessor for WorkoutDisclaimerSheet);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<<<opaque return type of View.toolbarBackground(_:for:)>>.0, WorkoutDisclaimerSheet> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<List<Never, TupleView<(Section<EmptyView, Button<AddWorkoutRowView>, ModifiedContent<VStack<Divider>, _TraitWritingModifier<ListRowInsetsTraitKey>>>?, Section<ModifiedContent<ModifiedContent<Text, _EnvironmentKeyWritingModifier<TextAlignment>>, _FlexFrameLayout>, EmptyView, EmptyView>?, ModifiedContent<ModifiedContent<Section<Text, ForEach<[StandardWorkoutAddWorkoutRow], String, Button<AddWorkoutRowView>>, EmptyView>, _EnvironmentKeyTransformModifier<Bool>>, _TraitWritingModifier<SectionIndexLabelKey>>?, ForEach<[String], String, ModifiedContent<ModifiedContent<Section<Text, ForEach<[StandardWorkoutAddWorkoutRow], String, Button<AddWorkoutRowView>>?, EmptyView>, _EnvironmentKeyTransformModifier<Bool>>, _TraitWritingModifier<SectionIndexLabelKey>>>)>>, _TraitWritingModifier<ListSectionSpacingTraitKey>>, _EnvironmentKeyWritingModifier<ListSectionSpacing?>> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<List<Never, TupleView<(Section<EmptyView, Button<AddWorkoutRowView>, ModifiedContent<VStack<Divider>, _TraitWritingModifier<ListRowInsetsTraitKey>>>?, Section<ModifiedContent<ModifiedContent<Text, _EnvironmentKeyWritingModifier<TextAlignment>>, _FlexFrameLayout>, EmptyView, EmptyView>?, ModifiedContent<ModifiedContent<Section<Text, ForEach<[StandardWorkoutAddWorkoutRow], String, Button<AddWorkoutRowView>>, EmptyView>, _EnvironmentKeyTransformModifier<Bool>>, _TraitWritingModifier<SectionIndexLabelKey>>?, ForEach<[String], String, ModifiedContent<ModifiedContent<Section<Text, ForEach<[StandardWorkoutAddWorkoutRow], String, Button<AddWorkoutRowView>>?, EmptyView>, _EnvironmentKeyTransformModifier<Bool>>, _TraitWritingModifier<SectionIndexLabelKey>>>)>>, _TraitWritingModifier<ListSectionSpacingTraitKey>>, _EnvironmentKeyWritingModifier<ListSectionSpacing?>> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<List<Never, TupleView<(Section<EmptyView, Button<AddWorkoutRowView>, ModifiedContent<VStack<Divider>, _TraitWritingModifier<ListRowInsetsTraitKey>>>?, Section<ModifiedContent<ModifiedContent<Text, _EnvironmentKeyWritingModifier<TextAlignment>>, _FlexFrameLayout>, EmptyView, EmptyView>?, ModifiedContent<ModifiedContent<Section<Text, ForEach<[StandardWorkoutAddWorkoutRow], String, Button<AddWorkoutRowView>>, EmptyView>, _EnvironmentKeyTransformModifier<Bool>>, _TraitWritingModifier<SectionIndexLabelKey>>?, ForEach<[String], String, ModifiedContent<ModifiedContent<Section<Text, ForEach<[StandardWorkoutAddWorkoutRow], String, Button<AddWorkoutRowView>>?, EmptyView>, _EnvironmentKeyTransformModifier<Bool>>, _TraitWritingModifier<SectionIndexLabelKey>>>)>>, _TraitWritingModifier<ListSectionSpacingTraitKey>>, _EnvironmentKeyWritingModifier<ListSectionSpacing?>> and conformance <> ModifiedContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyACyAA4ListVys5NeverOAA9TupleViewVyAA7SectionVyAA05EmptyH0VAA6ButtonVy07WorkoutB003Addl3RowH0VGACyAA6VStackVyAA7DividerVGAA21_TraitWritingModifierVyAA0en6InsetsQ3KeyVGGGSg_AKyACyACyAA4TextVAA012_EnvironmenturS0VyAA0V9AlignmentOGGAA16_FlexFrameLayoutVGA2MGSgACyACyAKyA6_AA7ForEachVySay0L4Core08StandardlmlN0CGSSASGAMGAA01_wu9TransformS0VySbGGAZyAA0i10IndexLabelU0VGGSgA19_ySaySSGSSACyACyAKyA6_A24_SgAMGA28_GA32_GGtGGAZyAA0ei7SpacingqU0VGGA8_yAA0eI7SpacingVSgGGMd);
    lazy protocol witness table accessor for type ModifiedContent<List<Never, TupleView<(Section<EmptyView, Button<AddWorkoutRowView>, ModifiedContent<VStack<Divider>, _TraitWritingModifier<ListRowInsetsTraitKey>>>?, Section<ModifiedContent<ModifiedContent<Text, _EnvironmentKeyWritingModifier<TextAlignment>>, _FlexFrameLayout>, EmptyView, EmptyView>?, ModifiedContent<ModifiedContent<Section<Text, ForEach<[StandardWorkoutAddWorkoutRow], String, Button<AddWorkoutRowView>>, EmptyView>, _EnvironmentKeyTransformModifier<Bool>>, _TraitWritingModifier<SectionIndexLabelKey>>?, ForEach<[String], String, ModifiedContent<ModifiedContent<Section<Text, ForEach<[StandardWorkoutAddWorkoutRow], String, Button<AddWorkoutRowView>>?, EmptyView>, _EnvironmentKeyTransformModifier<Bool>>, _TraitWritingModifier<SectionIndexLabelKey>>>)>>, _TraitWritingModifier<ListSectionSpacingTraitKey>> and conformance <> ModifiedContent<A, B>();
    lazy protocol witness table accessor for type List<Never, TupleView<(Section<EmptyView, Button<AddWorkoutRowView>, ModifiedContent<VStack<Divider>, _TraitWritingModifier<ListRowInsetsTraitKey>>>?, Section<ModifiedContent<ModifiedContent<Text, _EnvironmentKeyWritingModifier<TextAlignment>>, _FlexFrameLayout>, EmptyView, EmptyView>?, ModifiedContent<ModifiedContent<Section<Text, ForEach<[StandardWorkoutAddWorkoutRow], String, Button<AddWorkoutRowView>>, EmptyView>, _EnvironmentKeyTransformModifier<Bool>>, _TraitWritingModifier<SectionIndexLabelKey>>?, ForEach<[String], String, ModifiedContent<ModifiedContent<Section<Text, ForEach<[StandardWorkoutAddWorkoutRow], String, Button<AddWorkoutRowView>>?, EmptyView>, _EnvironmentKeyTransformModifier<Bool>>, _TraitWritingModifier<SectionIndexLabelKey>>>)>> and conformance List<A, B>(&lazy protocol witness table cache variable for type _EnvironmentKeyWritingModifier<ListSectionSpacing?> and conformance _EnvironmentKeyWritingModifier<A>, &_s7SwiftUI30_EnvironmentKeyWritingModifierVyAA18ListSectionSpacingVSgGMd);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<List<Never, TupleView<(Section<EmptyView, Button<AddWorkoutRowView>, ModifiedContent<VStack<Divider>, _TraitWritingModifier<ListRowInsetsTraitKey>>>?, Section<ModifiedContent<ModifiedContent<Text, _EnvironmentKeyWritingModifier<TextAlignment>>, _FlexFrameLayout>, EmptyView, EmptyView>?, ModifiedContent<ModifiedContent<Section<Text, ForEach<[StandardWorkoutAddWorkoutRow], String, Button<AddWorkoutRowView>>, EmptyView>, _EnvironmentKeyTransformModifier<Bool>>, _TraitWritingModifier<SectionIndexLabelKey>>?, ForEach<[String], String, ModifiedContent<ModifiedContent<Section<Text, ForEach<[StandardWorkoutAddWorkoutRow], String, Button<AddWorkoutRowView>>?, EmptyView>, _EnvironmentKeyTransformModifier<Bool>>, _TraitWritingModifier<SectionIndexLabelKey>>>)>>, _TraitWritingModifier<ListSectionSpacingTraitKey>>, _EnvironmentKeyWritingModifier<ListSectionSpacing?>> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<List<Never, TupleView<(Section<EmptyView, Button<AddWorkoutRowView>, ModifiedContent<VStack<Divider>, _TraitWritingModifier<ListRowInsetsTraitKey>>>?, Section<ModifiedContent<ModifiedContent<Text, _EnvironmentKeyWritingModifier<TextAlignment>>, _FlexFrameLayout>, EmptyView, EmptyView>?, ModifiedContent<ModifiedContent<Section<Text, ForEach<[StandardWorkoutAddWorkoutRow], String, Button<AddWorkoutRowView>>, EmptyView>, _EnvironmentKeyTransformModifier<Bool>>, _TraitWritingModifier<SectionIndexLabelKey>>?, ForEach<[String], String, ModifiedContent<ModifiedContent<Section<Text, ForEach<[StandardWorkoutAddWorkoutRow], String, Button<AddWorkoutRowView>>?, EmptyView>, _EnvironmentKeyTransformModifier<Bool>>, _TraitWritingModifier<SectionIndexLabelKey>>>)>>, _TraitWritingModifier<ListSectionSpacingTraitKey>> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<List<Never, TupleView<(Section<EmptyView, Button<AddWorkoutRowView>, ModifiedContent<VStack<Divider>, _TraitWritingModifier<ListRowInsetsTraitKey>>>?, Section<ModifiedContent<ModifiedContent<Text, _EnvironmentKeyWritingModifier<TextAlignment>>, _FlexFrameLayout>, EmptyView, EmptyView>?, ModifiedContent<ModifiedContent<Section<Text, ForEach<[StandardWorkoutAddWorkoutRow], String, Button<AddWorkoutRowView>>, EmptyView>, _EnvironmentKeyTransformModifier<Bool>>, _TraitWritingModifier<SectionIndexLabelKey>>?, ForEach<[String], String, ModifiedContent<ModifiedContent<Section<Text, ForEach<[StandardWorkoutAddWorkoutRow], String, Button<AddWorkoutRowView>>?, EmptyView>, _EnvironmentKeyTransformModifier<Bool>>, _TraitWritingModifier<SectionIndexLabelKey>>>)>>, _TraitWritingModifier<ListSectionSpacingTraitKey>> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<List<Never, TupleView<(Section<EmptyView, Button<AddWorkoutRowView>, ModifiedContent<VStack<Divider>, _TraitWritingModifier<ListRowInsetsTraitKey>>>?, Section<ModifiedContent<ModifiedContent<Text, _EnvironmentKeyWritingModifier<TextAlignment>>, _FlexFrameLayout>, EmptyView, EmptyView>?, ModifiedContent<ModifiedContent<Section<Text, ForEach<[StandardWorkoutAddWorkoutRow], String, Button<AddWorkoutRowView>>, EmptyView>, _EnvironmentKeyTransformModifier<Bool>>, _TraitWritingModifier<SectionIndexLabelKey>>?, ForEach<[String], String, ModifiedContent<ModifiedContent<Section<Text, ForEach<[StandardWorkoutAddWorkoutRow], String, Button<AddWorkoutRowView>>?, EmptyView>, _EnvironmentKeyTransformModifier<Bool>>, _TraitWritingModifier<SectionIndexLabelKey>>>)>>, _TraitWritingModifier<ListSectionSpacingTraitKey>> and conformance <> ModifiedContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyAA4ListVys5NeverOAA9TupleViewVyAA7SectionVyAA05EmptyH0VAA6ButtonVy07WorkoutB003Addl3RowH0VGACyAA6VStackVyAA7DividerVGAA21_TraitWritingModifierVyAA0en6InsetsQ3KeyVGGGSg_AKyACyACyAA4TextVAA012_EnvironmenturS0VyAA0V9AlignmentOGGAA16_FlexFrameLayoutVGA2MGSgACyACyAKyA6_AA7ForEachVySay0L4Core08StandardlmlN0CGSSASGAMGAA01_wu9TransformS0VySbGGAZyAA0i10IndexLabelU0VGGSgA19_ySaySSGSSACyACyAKyA6_A24_SgAMGA28_GA32_GGtGGAZyAA0ei7SpacingqU0VGGMd);
    lazy protocol witness table accessor for type List<Never, TupleView<(Section<EmptyView, Button<AddWorkoutRowView>, ModifiedContent<VStack<Divider>, _TraitWritingModifier<ListRowInsetsTraitKey>>>?, Section<ModifiedContent<ModifiedContent<Text, _EnvironmentKeyWritingModifier<TextAlignment>>, _FlexFrameLayout>, EmptyView, EmptyView>?, ModifiedContent<ModifiedContent<Section<Text, ForEach<[StandardWorkoutAddWorkoutRow], String, Button<AddWorkoutRowView>>, EmptyView>, _EnvironmentKeyTransformModifier<Bool>>, _TraitWritingModifier<SectionIndexLabelKey>>?, ForEach<[String], String, ModifiedContent<ModifiedContent<Section<Text, ForEach<[StandardWorkoutAddWorkoutRow], String, Button<AddWorkoutRowView>>?, EmptyView>, _EnvironmentKeyTransformModifier<Bool>>, _TraitWritingModifier<SectionIndexLabelKey>>>)>> and conformance List<A, B>(&lazy protocol witness table cache variable for type List<Never, TupleView<(Section<EmptyView, Button<AddWorkoutRowView>, ModifiedContent<VStack<Divider>, _TraitWritingModifier<ListRowInsetsTraitKey>>>?, Section<ModifiedContent<ModifiedContent<Text, _EnvironmentKeyWritingModifier<TextAlignment>>, _FlexFrameLayout>, EmptyView, EmptyView>?, ModifiedContent<ModifiedContent<Section<Text, ForEach<[StandardWorkoutAddWorkoutRow], String, Button<AddWorkoutRowView>>, EmptyView>, _EnvironmentKeyTransformModifier<Bool>>, _TraitWritingModifier<SectionIndexLabelKey>>?, ForEach<[String], String, ModifiedContent<ModifiedContent<Section<Text, ForEach<[StandardWorkoutAddWorkoutRow], String, Button<AddWorkoutRowView>>?, EmptyView>, _EnvironmentKeyTransformModifier<Bool>>, _TraitWritingModifier<SectionIndexLabelKey>>>)>> and conformance List<A, B>, &_s7SwiftUI4ListVys5NeverOAA9TupleViewVyAA7SectionVyAA05EmptyF0VAA6ButtonVy07WorkoutB003Addj3RowF0VGAA15ModifiedContentVyAA6VStackVyAA7DividerVGAA21_TraitWritingModifierVyAA0cl6InsetsQ3KeyVGGGSg_AIyASyASyAA4TextVAA012_EnvironmenturS0VyAA0V9AlignmentOGGAA16_FlexFrameLayoutVGA2KGSgASyASyAIyA6_AA7ForEachVySay0J4Core08StandardjkjL0CGSSAQGAKGAA01_wu9TransformS0VySbGGAZyAA0g10IndexLabelU0VGGSgA19_ySaySSGSSASyASyAIyA6_A24_SgAKGA28_GA32_GGtGGMd);
    lazy protocol witness table accessor for type List<Never, TupleView<(Section<EmptyView, Button<AddWorkoutRowView>, ModifiedContent<VStack<Divider>, _TraitWritingModifier<ListRowInsetsTraitKey>>>?, Section<ModifiedContent<ModifiedContent<Text, _EnvironmentKeyWritingModifier<TextAlignment>>, _FlexFrameLayout>, EmptyView, EmptyView>?, ModifiedContent<ModifiedContent<Section<Text, ForEach<[StandardWorkoutAddWorkoutRow], String, Button<AddWorkoutRowView>>, EmptyView>, _EnvironmentKeyTransformModifier<Bool>>, _TraitWritingModifier<SectionIndexLabelKey>>?, ForEach<[String], String, ModifiedContent<ModifiedContent<Section<Text, ForEach<[StandardWorkoutAddWorkoutRow], String, Button<AddWorkoutRowView>>?, EmptyView>, _EnvironmentKeyTransformModifier<Bool>>, _TraitWritingModifier<SectionIndexLabelKey>>>)>> and conformance List<A, B>(&lazy protocol witness table cache variable for type _TraitWritingModifier<ListSectionSpacingTraitKey> and conformance _TraitWritingModifier<A>, &_s7SwiftUI21_TraitWritingModifierVyAA018ListSectionSpacingC3KeyVGMd);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<List<Never, TupleView<(Section<EmptyView, Button<AddWorkoutRowView>, ModifiedContent<VStack<Divider>, _TraitWritingModifier<ListRowInsetsTraitKey>>>?, Section<ModifiedContent<ModifiedContent<Text, _EnvironmentKeyWritingModifier<TextAlignment>>, _FlexFrameLayout>, EmptyView, EmptyView>?, ModifiedContent<ModifiedContent<Section<Text, ForEach<[StandardWorkoutAddWorkoutRow], String, Button<AddWorkoutRowView>>, EmptyView>, _EnvironmentKeyTransformModifier<Bool>>, _TraitWritingModifier<SectionIndexLabelKey>>?, ForEach<[String], String, ModifiedContent<ModifiedContent<Section<Text, ForEach<[StandardWorkoutAddWorkoutRow], String, Button<AddWorkoutRowView>>?, EmptyView>, _EnvironmentKeyTransformModifier<Bool>>, _TraitWritingModifier<SectionIndexLabelKey>>>)>>, _TraitWritingModifier<ListSectionSpacingTraitKey>> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

void type metadata completion function for AddWorkoutList()
{
  _s7SwiftUI11EnvironmentVyAA13DismissActionVGMaTm_5(319, &lazy cache variable for type metadata for Environment<DismissAction>, MEMORY[0x277CDD848], MEMORY[0x277CDF468]);
  if (v0 <= 0x3F)
  {
    type metadata accessor for EnvironmentObject<ConfigurationNavigationModel>();
    if (v1 <= 0x3F)
    {
      _s7SwiftUI11EnvironmentVyAA13DismissActionVGMaTm_5(319, &lazy cache variable for type metadata for State<AddWorkoutDataSource>, MEMORY[0x277D7D918], MEMORY[0x277CE10B8]);
      if (v2 <= 0x3F)
      {
        _s7SwiftUI5StateVySo23FIUIWorkoutActivityTypeCSgGMaTm_0(319, &lazy cache variable for type metadata for State<FIUIWorkoutActivityType?>, &_sSo23FIUIWorkoutActivityTypeCSgMd, &_sSo23FIUIWorkoutActivityTypeCSgMR, MEMORY[0x277CE10B8]);
        if (v3 <= 0x3F)
        {
          type metadata accessor for StateObject<SeymourDataSource>();
          if (v4 <= 0x3F)
          {
            type metadata accessor for WOCompoundActivityTypesProviding(319, &lazy cache variable for type metadata for WOCompoundActivityTypesProviding);
            if (v5 <= 0x3F)
            {
              type metadata accessor for GuidedWorkoutLocalizationProvider();
              if (v6 <= 0x3F)
              {
                type metadata accessor for WOCompoundActivityTypesProviding(319, &lazy cache variable for type metadata for WOWheelchairUseProviding);
                if (v7 <= 0x3F)
                {
                  _s7SwiftUI5StateVySo23FIUIWorkoutActivityTypeCSgGMaTm_0(319, &lazy cache variable for type metadata for (())?, &_syycMd, &_syycMR, MEMORY[0x277D83D88]);
                  if (v8 <= 0x3F)
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

void _s7SwiftUI11EnvironmentVyAA13DismissActionVGMaTm_5(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void type metadata accessor for StateObject<SeymourDataSource>()
{
  if (!lazy cache variable for type metadata for StateObject<SeymourDataSource>)
  {
    type metadata accessor for SeymourDataSource();
    _s9WorkoutUI28ConfigurationNavigationModelCAC7Combine16ObservableObjectAAWlTm_18(&lazy protocol witness table cache variable for type SeymourDataSource and conformance SeymourDataSource, type metadata accessor for SeymourDataSource);
    v0 = type metadata accessor for StateObject();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for StateObject<SeymourDataSource>);
    }
  }
}

uint64_t type metadata accessor for WOCompoundActivityTypesProviding(uint64_t a1, unint64_t *a2)
{
  result = *a2;
  if (!*a2)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, a2);
  }

  return result;
}

void _s7SwiftUI5StateVySo23FIUIWorkoutActivityTypeCSgGMaTm_0(uint64_t a1, unint64_t *a2, uint64_t *a3, uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a3);
    v9 = a5(a1, v8);
    if (!v10)
    {
      atomic_store(v9, a2);
    }
  }
}

uint64_t outlined init with copy of AddWorkoutList(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AddWorkoutList();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t outlined init with take of AddWorkoutList(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AddWorkoutList();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t lazy protocol witness table accessor for type ForEach<[StandardWorkoutAddWorkoutRow], String, Button<AddWorkoutRowView>> and conformance <> ForEach<A, B, C>()
{
  result = lazy protocol witness table cache variable for type ForEach<[StandardWorkoutAddWorkoutRow], String, Button<AddWorkoutRowView>> and conformance <> ForEach<A, B, C>;
  if (!lazy protocol witness table cache variable for type ForEach<[StandardWorkoutAddWorkoutRow], String, Button<AddWorkoutRowView>> and conformance <> ForEach<A, B, C>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI7ForEachVySay11WorkoutCore08Standarde3AddE3RowCGSSAA6ButtonVy0eB00heI4ViewVGGMd);
    lazy protocol witness table accessor for type List<Never, TupleView<(Section<EmptyView, Button<AddWorkoutRowView>, ModifiedContent<VStack<Divider>, _TraitWritingModifier<ListRowInsetsTraitKey>>>?, Section<ModifiedContent<ModifiedContent<Text, _EnvironmentKeyWritingModifier<TextAlignment>>, _FlexFrameLayout>, EmptyView, EmptyView>?, ModifiedContent<ModifiedContent<Section<Text, ForEach<[StandardWorkoutAddWorkoutRow], String, Button<AddWorkoutRowView>>, EmptyView>, _EnvironmentKeyTransformModifier<Bool>>, _TraitWritingModifier<SectionIndexLabelKey>>?, ForEach<[String], String, ModifiedContent<ModifiedContent<Section<Text, ForEach<[StandardWorkoutAddWorkoutRow], String, Button<AddWorkoutRowView>>?, EmptyView>, _EnvironmentKeyTransformModifier<Bool>>, _TraitWritingModifier<SectionIndexLabelKey>>>)>> and conformance List<A, B>(&lazy protocol witness table cache variable for type Button<AddWorkoutRowView> and conformance Button<A>, &_s7SwiftUI6ButtonVy07WorkoutB003AddD7RowViewVGMd);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ForEach<[StandardWorkoutAddWorkoutRow], String, Button<AddWorkoutRowView>> and conformance <> ForEach<A, B, C>);
  }

  return result;
}

uint64_t outlined init with take of ModifiedContent<ModifiedContent<Section<Text, ForEach<[StandardWorkoutAddWorkoutRow], String, Button<AddWorkoutRowView>>, EmptyView>, _EnvironmentKeyTransformModifier<Bool>>, _TraitWritingModifier<SectionIndexLabelKey>>(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyACyAA7SectionVyAA4TextVAA7ForEachVySay11WorkoutCore08Standardi3AddI3RowCGSSAA6ButtonVy0iB00liM4ViewVGGAA05EmptyO0VGAA32_EnvironmentKeyTransformModifierVySbGGAA013_TraitWritingT0VyAA0e10IndexLabelR0VGGMd);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t specialized _merge<A>(low:mid:high:buffer:by:)(char *__dst, char *__src, char *a3, char *a4)
{
  v4 = a4;
  v5 = a3;
  v6 = __src;
  v7 = __dst;
  v8 = __src - __dst;
  v9 = __src - __dst + 7;
  if (__src - __dst >= 0)
  {
    v9 = __src - __dst;
  }

  v10 = v9 >> 3;
  v11 = a3 - __src;
  v12 = a3 - __src + 7;
  if (a3 - __src >= 0)
  {
    v12 = a3 - __src;
  }

  v13 = v12 >> 3;
  if (v10 >= v12 >> 3)
  {
    if (a4 != __src || &__src[8 * v13] <= a4)
    {
      memmove(a4, __src, 8 * v13);
    }

    v14 = &v4[8 * v13];
    if (v11 >= 8 && v6 > v7)
    {
      type metadata accessor for StandardWorkoutAddWorkoutRow();
      _s9WorkoutUI28ConfigurationNavigationModelCAC7Combine16ObservableObjectAAWlTm_18(&lazy protocol witness table cache variable for type StandardWorkoutAddWorkoutRow and conformance StandardWorkoutAddWorkoutRow, MEMORY[0x277D7D9A8]);
LABEL_27:
      v17 = v6 - 8;
      v5 -= 8;
      v18 = v14;
      do
      {
        v19 = v5 + 8;
        v18 -= 8;
        if (dispatch thunk of static Comparable.< infix(_:_:)())
        {
          if (v19 != v6)
          {
            *v5 = *v17;
          }

          if (v14 <= v4 || (v6 -= 8, v17 <= v7))
          {
            v6 = v17;
            goto LABEL_38;
          }

          goto LABEL_27;
        }

        if (v19 != v14)
        {
          *v5 = *v18;
        }

        v5 -= 8;
        v14 = v18;
      }

      while (v18 > v4);
      v14 = v18;
    }
  }

  else
  {
    if (a4 != __dst || &__dst[8 * v10] <= a4)
    {
      memmove(a4, __dst, 8 * v10);
    }

    v14 = &v4[8 * v10];
    if (v8 >= 8 && v6 < v5)
    {
      type metadata accessor for StandardWorkoutAddWorkoutRow();
      _s9WorkoutUI28ConfigurationNavigationModelCAC7Combine16ObservableObjectAAWlTm_18(&lazy protocol witness table cache variable for type StandardWorkoutAddWorkoutRow and conformance StandardWorkoutAddWorkoutRow, MEMORY[0x277D7D9A8]);
      while ((dispatch thunk of static Comparable.< infix(_:_:)() & 1) != 0)
      {
        v15 = v6;
        v16 = v7 == v6;
        v6 += 8;
        if (!v16)
        {
          goto LABEL_17;
        }

LABEL_18:
        v7 += 8;
        if (v4 >= v14 || v6 >= v5)
        {
          goto LABEL_20;
        }
      }

      v15 = v4;
      v16 = v7 == v4;
      v4 += 8;
      if (v16)
      {
        goto LABEL_18;
      }

LABEL_17:
      *v7 = *v15;
      goto LABEL_18;
    }

LABEL_20:
    v6 = v7;
  }

LABEL_38:
  if (v6 != v4 || v6 >= &v4[(v14 - v4 + (v14 - v4 < 0 ? 7uLL : 0)) & 0xFFFFFFFFFFFFFFF8])
  {
    memmove(v6, v4, 8 * ((v14 - v4) / 8));
  }

  return 1;
}

uint64_t partial apply for closure #8 in closure #1 in AddWorkoutList.addWorkoutListView()@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for AddWorkoutList() - 8);
  v4 = v1 + ((*(v3 + 80) + 16) & ~*(v3 + 80));

  return closure #8 in closure #1 in AddWorkoutList.addWorkoutListView()(v4, a1);
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<Section<Text, ForEach<[StandardWorkoutAddWorkoutRow], String, Button<AddWorkoutRowView>>?, EmptyView>, _EnvironmentKeyTransformModifier<Bool>>, _TraitWritingModifier<SectionIndexLabelKey>> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<Section<Text, ForEach<[StandardWorkoutAddWorkoutRow], String, Button<AddWorkoutRowView>>?, EmptyView>, _EnvironmentKeyTransformModifier<Bool>>, _TraitWritingModifier<SectionIndexLabelKey>> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<Section<Text, ForEach<[StandardWorkoutAddWorkoutRow], String, Button<AddWorkoutRowView>>?, EmptyView>, _EnvironmentKeyTransformModifier<Bool>>, _TraitWritingModifier<SectionIndexLabelKey>> and conformance <> ModifiedContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyACyAA7SectionVyAA4TextVAA7ForEachVySay11WorkoutCore08Standardi3AddI3RowCGSSAA6ButtonVy0iB00liM4ViewVGGSgAA05EmptyO0VGAA32_EnvironmentKeyTransformModifierVySbGGAA013_TraitWritingT0VyAA0e10IndexLabelR0VGGMd);
    lazy protocol witness table accessor for type ModifiedContent<Section<Text, ForEach<[StandardWorkoutAddWorkoutRow], String, Button<AddWorkoutRowView>>?, EmptyView>, _EnvironmentKeyTransformModifier<Bool>> and conformance <> ModifiedContent<A, B>();
    lazy protocol witness table accessor for type List<Never, TupleView<(Section<EmptyView, Button<AddWorkoutRowView>, ModifiedContent<VStack<Divider>, _TraitWritingModifier<ListRowInsetsTraitKey>>>?, Section<ModifiedContent<ModifiedContent<Text, _EnvironmentKeyWritingModifier<TextAlignment>>, _FlexFrameLayout>, EmptyView, EmptyView>?, ModifiedContent<ModifiedContent<Section<Text, ForEach<[StandardWorkoutAddWorkoutRow], String, Button<AddWorkoutRowView>>, EmptyView>, _EnvironmentKeyTransformModifier<Bool>>, _TraitWritingModifier<SectionIndexLabelKey>>?, ForEach<[String], String, ModifiedContent<ModifiedContent<Section<Text, ForEach<[StandardWorkoutAddWorkoutRow], String, Button<AddWorkoutRowView>>?, EmptyView>, _EnvironmentKeyTransformModifier<Bool>>, _TraitWritingModifier<SectionIndexLabelKey>>>)>> and conformance List<A, B>(&lazy protocol witness table cache variable for type _TraitWritingModifier<SectionIndexLabelKey> and conformance _TraitWritingModifier<A>, &_s7SwiftUI21_TraitWritingModifierVyAA20SectionIndexLabelKeyVGMd);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<Section<Text, ForEach<[StandardWorkoutAddWorkoutRow], String, Button<AddWorkoutRowView>>?, EmptyView>, _EnvironmentKeyTransformModifier<Bool>>, _TraitWritingModifier<SectionIndexLabelKey>> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<Section<Text, ForEach<[StandardWorkoutAddWorkoutRow], String, Button<AddWorkoutRowView>>?, EmptyView>, _EnvironmentKeyTransformModifier<Bool>> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<Section<Text, ForEach<[StandardWorkoutAddWorkoutRow], String, Button<AddWorkoutRowView>>?, EmptyView>, _EnvironmentKeyTransformModifier<Bool>> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<Section<Text, ForEach<[StandardWorkoutAddWorkoutRow], String, Button<AddWorkoutRowView>>?, EmptyView>, _EnvironmentKeyTransformModifier<Bool>> and conformance <> ModifiedContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyAA7SectionVyAA4TextVAA7ForEachVySay11WorkoutCore08Standardi3AddI3RowCGSSAA6ButtonVy0iB00liM4ViewVGGSgAA05EmptyO0VGAA32_EnvironmentKeyTransformModifierVySbGGMd);
    lazy protocol witness table accessor for type Section<Text, ForEach<[StandardWorkoutAddWorkoutRow], String, Button<AddWorkoutRowView>>?, EmptyView> and conformance <> Section<A, B, C>();
    lazy protocol witness table accessor for type List<Never, TupleView<(Section<EmptyView, Button<AddWorkoutRowView>, ModifiedContent<VStack<Divider>, _TraitWritingModifier<ListRowInsetsTraitKey>>>?, Section<ModifiedContent<ModifiedContent<Text, _EnvironmentKeyWritingModifier<TextAlignment>>, _FlexFrameLayout>, EmptyView, EmptyView>?, ModifiedContent<ModifiedContent<Section<Text, ForEach<[StandardWorkoutAddWorkoutRow], String, Button<AddWorkoutRowView>>, EmptyView>, _EnvironmentKeyTransformModifier<Bool>>, _TraitWritingModifier<SectionIndexLabelKey>>?, ForEach<[String], String, ModifiedContent<ModifiedContent<Section<Text, ForEach<[StandardWorkoutAddWorkoutRow], String, Button<AddWorkoutRowView>>?, EmptyView>, _EnvironmentKeyTransformModifier<Bool>>, _TraitWritingModifier<SectionIndexLabelKey>>>)>> and conformance List<A, B>(&lazy protocol witness table cache variable for type _EnvironmentKeyTransformModifier<Bool> and conformance _EnvironmentKeyTransformModifier<A>, &_s7SwiftUI32_EnvironmentKeyTransformModifierVySbGMd);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<Section<Text, ForEach<[StandardWorkoutAddWorkoutRow], String, Button<AddWorkoutRowView>>?, EmptyView>, _EnvironmentKeyTransformModifier<Bool>> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type Section<Text, ForEach<[StandardWorkoutAddWorkoutRow], String, Button<AddWorkoutRowView>>?, EmptyView> and conformance <> Section<A, B, C>()
{
  result = lazy protocol witness table cache variable for type Section<Text, ForEach<[StandardWorkoutAddWorkoutRow], String, Button<AddWorkoutRowView>>?, EmptyView> and conformance <> Section<A, B, C>;
  if (!lazy protocol witness table cache variable for type Section<Text, ForEach<[StandardWorkoutAddWorkoutRow], String, Button<AddWorkoutRowView>>?, EmptyView> and conformance <> Section<A, B, C>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI7SectionVyAA4TextVAA7ForEachVySay11WorkoutCore08Standardg3AddG3RowCGSSAA6ButtonVy0gB00jgK4ViewVGGSgAA05EmptyM0VGMd);
    lazy protocol witness table accessor for type ForEach<[StandardWorkoutAddWorkoutRow], String, Button<AddWorkoutRowView>>? and conformance <A> A?();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Section<Text, ForEach<[StandardWorkoutAddWorkoutRow], String, Button<AddWorkoutRowView>>?, EmptyView> and conformance <> Section<A, B, C>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ForEach<[StandardWorkoutAddWorkoutRow], String, Button<AddWorkoutRowView>>? and conformance <A> A?()
{
  result = lazy protocol witness table cache variable for type ForEach<[StandardWorkoutAddWorkoutRow], String, Button<AddWorkoutRowView>>? and conformance <A> A?;
  if (!lazy protocol witness table cache variable for type ForEach<[StandardWorkoutAddWorkoutRow], String, Button<AddWorkoutRowView>>? and conformance <A> A?)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI7ForEachVySay11WorkoutCore08Standarde3AddE3RowCGSSAA6ButtonVy0eB00heI4ViewVGGSgMd);
    lazy protocol witness table accessor for type ForEach<[StandardWorkoutAddWorkoutRow], String, Button<AddWorkoutRowView>> and conformance <> ForEach<A, B, C>();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ForEach<[StandardWorkoutAddWorkoutRow], String, Button<AddWorkoutRowView>>? and conformance <A> A?);
  }

  return result;
}

uint64_t _s7SwiftUI11EnvironmentV7ContentOyAA13DismissActionV_GWOcTm_4(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(a3);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t outlined destroy of ModifiedContent<ModifiedContent<List<Never, TupleView<(Section<EmptyView, Button<AddWorkoutRowView>, ModifiedContent<VStack<Divider>, _TraitWritingModifier<ListRowInsetsTraitKey>>>?, Section<ModifiedContent<ModifiedContent<Text, _EnvironmentKeyWritingModifier<TextAlignment>>, _FlexFrameLayout>, EmptyView, EmptyView>?, ModifiedContent<ModifiedContent<Section<Text, ForEach<[StandardWorkoutAddWorkoutRow], String, Button<AddWorkoutRowView>>, EmptyView>, _EnvironmentKeyTransformModifier<Bool>>, _TraitWritingModifier<SectionIndexLabelKey>>?, ForEach<[String], String, ModifiedContent<ModifiedContent<Section<Text, ForEach<[StandardWorkoutAddWorkoutRow], String, Button<AddWorkoutRowView>>?, EmptyView>, _EnvironmentKeyTransformModifier<Bool>>, _TraitWritingModifier<SectionIndexLabelKey>>>)>>, _TraitWritingModifier<ListSectionSpacingTraitKey>>, _EnvironmentKeyWritingModifier<ListSectionSpacing?>>(uint64_t a1, uint64_t *a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(a2);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<VStack<Divider>, _TraitWritingModifier<ListRowInsetsTraitKey>> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<VStack<Divider>, _TraitWritingModifier<ListRowInsetsTraitKey>> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<VStack<Divider>, _TraitWritingModifier<ListRowInsetsTraitKey>> and conformance <> ModifiedContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyAA6VStackVyAA7DividerVGAA21_TraitWritingModifierVyAA013ListRowInsetsG3KeyVGGMd);
    lazy protocol witness table accessor for type List<Never, TupleView<(Section<EmptyView, Button<AddWorkoutRowView>, ModifiedContent<VStack<Divider>, _TraitWritingModifier<ListRowInsetsTraitKey>>>?, Section<ModifiedContent<ModifiedContent<Text, _EnvironmentKeyWritingModifier<TextAlignment>>, _FlexFrameLayout>, EmptyView, EmptyView>?, ModifiedContent<ModifiedContent<Section<Text, ForEach<[StandardWorkoutAddWorkoutRow], String, Button<AddWorkoutRowView>>, EmptyView>, _EnvironmentKeyTransformModifier<Bool>>, _TraitWritingModifier<SectionIndexLabelKey>>?, ForEach<[String], String, ModifiedContent<ModifiedContent<Section<Text, ForEach<[StandardWorkoutAddWorkoutRow], String, Button<AddWorkoutRowView>>?, EmptyView>, _EnvironmentKeyTransformModifier<Bool>>, _TraitWritingModifier<SectionIndexLabelKey>>>)>> and conformance List<A, B>(&lazy protocol witness table cache variable for type VStack<Divider> and conformance VStack<A>, &_s7SwiftUI6VStackVyAA7DividerVGMd);
    lazy protocol witness table accessor for type List<Never, TupleView<(Section<EmptyView, Button<AddWorkoutRowView>, ModifiedContent<VStack<Divider>, _TraitWritingModifier<ListRowInsetsTraitKey>>>?, Section<ModifiedContent<ModifiedContent<Text, _EnvironmentKeyWritingModifier<TextAlignment>>, _FlexFrameLayout>, EmptyView, EmptyView>?, ModifiedContent<ModifiedContent<Section<Text, ForEach<[StandardWorkoutAddWorkoutRow], String, Button<AddWorkoutRowView>>, EmptyView>, _EnvironmentKeyTransformModifier<Bool>>, _TraitWritingModifier<SectionIndexLabelKey>>?, ForEach<[String], String, ModifiedContent<ModifiedContent<Section<Text, ForEach<[StandardWorkoutAddWorkoutRow], String, Button<AddWorkoutRowView>>?, EmptyView>, _EnvironmentKeyTransformModifier<Bool>>, _TraitWritingModifier<SectionIndexLabelKey>>>)>> and conformance List<A, B>(&lazy protocol witness table cache variable for type _TraitWritingModifier<ListRowInsetsTraitKey> and conformance _TraitWritingModifier<A>, &_s7SwiftUI21_TraitWritingModifierVyAA013ListRowInsetsC3KeyVGMd);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<VStack<Divider>, _TraitWritingModifier<ListRowInsetsTraitKey>> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

uint64_t partial apply for closure #1 in closure #1 in closure #1 in closure #1 in AddWorkoutList.body.getter(uint64_t (*a1)(uint64_t))
{
  v2 = *(type metadata accessor for AddWorkoutList() - 8);
  v3 = v1 + ((*(v2 + 80) + 16) & ~*(v2 + 80));

  return a1(v3);
}

uint64_t specialized Array._copyToContiguousArray()(unint64_t a1)
{
  if (!(a1 >> 62))
  {
    return a1 & 0xFFFFFFFFFFFFFF8;
  }

  v3 = __CocoaSet.count.getter();
  if (!v3)
  {
LABEL_7:

    return MEMORY[0x277D84F90];
  }

  v4 = v3;
  v5 = _ss22_ContiguousArrayBufferV19_uninitializedCount15minimumCapacityAByxGSi_SitcfC11WorkoutCore08Standardh3AddH3RowC_Tt1g5(v3, 0);
  specialized Array._copyContents(initializing:)(v5 + 32, v4, a1);
  v7 = v6;

  result = v5;
  if (v7 != v4)
  {
    __break(1u);
    goto LABEL_7;
  }

  return result;
}

uint64_t partial apply for closure #1 in closure #1 in closure #8 in closure #1 in AddWorkoutList.addWorkoutListView()(void **a1)
{
  return partial apply for closure #1 in closure #1 in closure #8 in closure #1 in AddWorkoutList.addWorkoutListView()(a1);
}

{
  v3 = *(type metadata accessor for AddWorkoutList() - 8);
  return closure #1 in closure #5 in closure #1 in AddWorkoutList.addWorkoutListView()(a1, v1 + ((*(v3 + 80) + 16) & ~*(v3 + 80)));
}

uint64_t lazy protocol witness table accessor for type List<Never, TupleView<(Section<EmptyView, Button<AddWorkoutRowView>, ModifiedContent<VStack<Divider>, _TraitWritingModifier<ListRowInsetsTraitKey>>>?, Section<ModifiedContent<ModifiedContent<Text, _EnvironmentKeyWritingModifier<TextAlignment>>, _FlexFrameLayout>, EmptyView, EmptyView>?, ModifiedContent<ModifiedContent<Section<Text, ForEach<[StandardWorkoutAddWorkoutRow], String, Button<AddWorkoutRowView>>, EmptyView>, _EnvironmentKeyTransformModifier<Bool>>, _TraitWritingModifier<SectionIndexLabelKey>>?, ForEach<[String], String, ModifiedContent<ModifiedContent<Section<Text, ForEach<[StandardWorkoutAddWorkoutRow], String, Button<AddWorkoutRowView>>?, EmptyView>, _EnvironmentKeyTransformModifier<Bool>>, _TraitWritingModifier<SectionIndexLabelKey>>>)>> and conformance List<A, B>(unint64_t *a1, uint64_t *a2)
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

uint64_t _s9WorkoutUI28ConfigurationNavigationModelCAC7Combine16ObservableObjectAAWlTm_18(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t objectdestroyTm_93()
{
  v1 = type metadata accessor for AddWorkoutList();
  v2 = (*(*(v1 - 1) + 80) + 16) & ~*(*(v1 - 1) + 80);
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

  outlined consume of StateObject<SeymourDataSource>.Storage();
  swift_unknownObjectRelease();

  swift_unknownObjectRelease();
  if (*(v3 + v1[12]))
  {
  }

  return swift_deallocObject();
}

uint64_t objectdestroy_65Tm_0()
{
  v1 = type metadata accessor for AddWorkoutList();
  v2 = (*(*(v1 - 1) + 80) + 24) & ~*(*(v1 - 1) + 80);

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

  outlined consume of StateObject<SeymourDataSource>.Storage();
  swift_unknownObjectRelease();

  swift_unknownObjectRelease();
  if (*(v3 + v1[12]))
  {
  }

  return swift_deallocObject();
}

void partial apply for closure #2 in closure #1 in closure #5 in closure #1 in AddWorkoutList.addWorkoutListView()(uint64_t a1@<X8>)
{
  v2 = dispatch thunk of StandardWorkoutAddWorkoutRow.activityType.getter();

  AddWorkoutRowView.init(activityType:)(v2, a1);
}

uint64_t getEnumTagSinglePayload for CadenceTargetValue(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 32))
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

uint64_t storeEnumTagSinglePayload for CadenceTargetValue(uint64_t result, int a2, int a3)
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
      *(result + 16) = (a2 - 1);
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

void CadenceTargetValue.body.getter(uint64_t a1@<X0>, char a2@<W1>, void *a3@<X2>, uint64_t a4@<X8>)
{
  v6 = specialized CadenceTargetValue.valueString.getter(a1, a2 & 1);
  v8 = v7;
  v9 = [objc_opt_self() localizedShortCadenceUnitStringForActivityType_];
  if (v9)
  {
    v10 = v9;
    v11 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v13 = v12;
  }

  else
  {
    v11 = 0;
    v13 = 0;
  }

  *a4 = v6;
  *(a4 + 8) = v8;
  *(a4 + 16) = v11;
  *(a4 + 24) = v13;
  *(a4 + 32) = 0;
  *(a4 + 40) = 0;
  *(a4 + 48) = 0;
  *(a4 + 56) = 0;
  *(a4 + 64) = 0;
}

uint64_t specialized CadenceTargetValue.valueString.getter(uint64_t a1, int a2)
{
  v30 = a2;
  v27 = a1;
  v2 = type metadata accessor for NumberFormatStyleConfiguration.Precision();
  v28 = *(v2 - 8);
  v29 = v2;
  MEMORY[0x28223BE20](v2);
  v4 = &v27 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for FloatingPointRoundingRule();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v27 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for Locale();
  MEMORY[0x28223BE20](v9 - 8);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation24FloatingPointFormatStyleVySdGMd);
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = &v27 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v16 = &v27 - v15;
  MEMORY[0x28223BE20](v17);
  v19 = &v27 - v18;
  if (v30)
  {
    if (one-time initialization token for WorkoutUIBundle != -1)
    {
      swift_once();
    }

    swift_beginAccess();
    v20 = WorkoutUIBundle.super.isa;
    v33._object = 0xE000000000000000;
    v21._countAndFlagsBits = 0x4E5F43495254454DLL;
    v21._object = 0xEE0045554C41564FLL;
    v22.value._countAndFlagsBits = 0x617A696C61636F4CLL;
    v22.value._object = 0xEB00000000656C62;
    v23._countAndFlagsBits = 0;
    v23._object = 0xE000000000000000;
    v33._countAndFlagsBits = 0;
    countAndFlagsBits = NSLocalizedString(_:tableName:bundle:value:comment:)(v21, v22, v20, v23, v33)._countAndFlagsBits;

    return countAndFlagsBits;
  }

  else
  {
    v31 = v27;
    static Locale.autoupdatingCurrent.getter();
    lazy protocol witness table accessor for type Double and conformance Double();
    FloatingPointFormatStyle.init(locale:)();
    (*(v6 + 104))(v8, *MEMORY[0x277D84688], v5);
    MEMORY[0x20F3024B0](v8, 0, 1, v10);
    (*(v6 + 8))(v8, v5);
    v26 = *(v11 + 8);
    v26(v13, v10);
    static NumberFormatStyleConfiguration.Precision.fractionLength(_:)();
    MEMORY[0x20F3024C0](v4, v10);
    (*(v28 + 8))(v4, v29);
    v26(v16, v10);
    lazy protocol witness table accessor for type FloatingPointFormatStyle<Double> and conformance FloatingPointFormatStyle<A>();
    BinaryFloatingPoint.formatted<A>(_:)();
    v26(v19, v10);
    return v32;
  }
}

uint64_t getEnumTagSinglePayload for IntervalsTargetValue(uint64_t a1, int a2)
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

uint64_t storeEnumTagSinglePayload for IntervalsTargetValue(uint64_t result, int a2, int a3)
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

void IntervalsTargetValue.body.getter(uint64_t a1@<X8>)
{
  v3 = type metadata accessor for TargetZone.ZoneType();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v72 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  TargetZone.type.getter();
  v7 = (*(v4 + 88))(v6, v3);
  if (v7 == *MEMORY[0x277D7DE48])
  {
    MetricsPublisher.rollingPace.getter();
    v9 = v8;
    v10 = *(v1 + 32);
    v11 = *(v1 + 24);
    v12 = v10;
    MetricsPublisher.workoutStatePublisher.getter();
    v13 = WorkoutStatePublisher.gpsUnavailable.getter();

    *&v74 = v9;
    *(&v74 + 1) = v11;
    *&v75 = v12;
    *(&v75 + 1) = 14;
    LOWORD(v76) = v13 & 1;
LABEL_5:
    lazy protocol witness table accessor for type PaceTargetValue and conformance PaceTargetValue();
    v18 = v11;
    v19 = v12;
    _ConditionalContent<>.init(storage:)();
    if (BYTE1(v80))
    {
      v20 = 256;
    }

    else
    {
      v20 = 0;
    }

    v74 = v78;
    v75 = v79;
    LOWORD(v76) = v20 | v80;
    BYTE2(v76) = 0;
    goto LABEL_9;
  }

  if (v7 == *MEMORY[0x277D7DE40])
  {
    MetricsPublisher.averagePace.getter();
    v15 = v14;
    v16 = *(v1 + 32);
    v11 = *(v1 + 24);
    v12 = v16;
    MetricsPublisher.workoutStatePublisher.getter();
    v17 = WorkoutStatePublisher.gpsUnavailable.getter();

    *&v74 = v15;
    *(&v74 + 1) = v11;
    *&v75 = v12;
    *(&v75 + 1) = 8;
    LOBYTE(v76) = v17 & 1;
    BYTE1(v76) = 1;
    goto LABEL_5;
  }

  if (v7 == *MEMORY[0x277D7DE60])
  {
    MetricsPublisher.currentPace.getter();
    v27 = v26;
    v28 = *(v1 + 32);
    v29 = *(v1 + 24);
    v30 = v28;
    MetricsPublisher.workoutStatePublisher.getter();
    v31 = WorkoutStatePublisher.gpsUnavailable.getter();

    *&v74 = v27;
    *(&v74 + 1) = v29;
    *&v75 = v30;
    *(&v75 + 1) = 4;
    LOWORD(v76) = v31 & 1;
    lazy protocol witness table accessor for type PaceTargetValue and conformance PaceTargetValue();
    lazy protocol witness table accessor for type CadenceTargetValue and conformance CadenceTargetValue();
    v18 = v29;
    v19 = v30;
    _ConditionalContent<>.init(storage:)();
    v32 = v80;
    if (BYTE1(v80))
    {
      v33 = 256;
    }

    else
    {
      v33 = 0;
    }

LABEL_21:
    v74 = v78;
    v75 = v79;
    LOWORD(v76) = v33 | v32;
    BYTE2(v76) = 1;
LABEL_9:
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI19_ConditionalContentVy07WorkoutB015PaceTargetValueVAFGMd);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI19_ConditionalContentVy07WorkoutB015PaceTargetValueVAD07CadencegH0VGMd);
    lazy protocol witness table accessor for type _ConditionalContent<PaceTargetValue, PaceTargetValue> and conformance <> _ConditionalContent<A, B>();
    lazy protocol witness table accessor for type _ConditionalContent<PaceTargetValue, CadenceTargetValue> and conformance <> _ConditionalContent<A, B>();
    _ConditionalContent<>.init(storage:)();
    v74 = v78;
    v75 = v79;
    HIWORD(v76) = BYTE2(v80) != 0;
    LOWORD(v76) = v80;
LABEL_10:
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI19_ConditionalContentVyACy07WorkoutB015PaceTargetValueVAFGACyAfD07CadencegH0VGGMd);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI19_ConditionalContentVyACy07WorkoutB018CadenceTargetValueVAD05PowergH0VGACyAhA4TextVGGMd);
    lazy protocol witness table accessor for type _ConditionalContent<_ConditionalContent<PaceTargetValue, PaceTargetValue>, _ConditionalContent<PaceTargetValue, CadenceTargetValue>> and conformance <> _ConditionalContent<A, B>();
    lazy protocol witness table accessor for type _ConditionalContent<_ConditionalContent<CadenceTargetValue, PowerTargetValue>, _ConditionalContent<PowerTargetValue, Text>> and conformance <> _ConditionalContent<A, B>();
    _ConditionalContent<>.init(storage:)();
    if (HIBYTE(v80))
    {
      v21 = 0x1000000;
    }

    else
    {
      v21 = 0;
    }

    v74 = v78;
    v75 = v79;
    v76 = v21 | v80 | (BYTE2(v80) << 16);
    v77 = 0;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI19_ConditionalContentVyACyACy07WorkoutB015PaceTargetValueVAFGACyAfD07CadencegH0VGGACyACyAiD05PowergH0VGACyAmA4TextVGGGMd);
    lazy protocol witness table accessor for type _ConditionalContent<_ConditionalContent<_ConditionalContent<PaceTargetValue, PaceTargetValue>, _ConditionalContent<PaceTargetValue, CadenceTargetValue>>, _ConditionalContent<_ConditionalContent<CadenceTargetValue, PowerTargetValue>, _ConditionalContent<PowerTargetValue, Text>>> and conformance <> _ConditionalContent<A, B>();
    _ConditionalContent<>.init(storage:)();

    goto LABEL_14;
  }

  if (v7 == *MEMORY[0x277D7DE70])
  {
    v34 = MetricsPublisher.currentCadence.getter();
    v36 = *(v1 + 24);
    v35 = *(v1 + 32);
    *&v74 = v34;
    *(&v74 + 1) = v37 & 1;
    *&v75 = v35;
    *(&v75 + 1) = v36;
    LOBYTE(v76) = 0;
    lazy protocol witness table accessor for type CadenceTargetValue and conformance CadenceTargetValue();
    lazy protocol witness table accessor for type PowerTargetValue and conformance PowerTargetValue();
    v38 = v35;
    v39 = v36;
    v18 = v38;
    v19 = v39;
    _ConditionalContent<>.init(storage:)();
    v74 = v78;
    v75 = v79;
    LOWORD(v76) = v80;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI19_ConditionalContentVy07WorkoutB018CadenceTargetValueVAD05PowergH0VGMd);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI19_ConditionalContentVy07WorkoutB016PowerTargetValueVAA4TextVGMd);
    lazy protocol witness table accessor for type _ConditionalContent<CadenceTargetValue, PowerTargetValue> and conformance <> _ConditionalContent<A, B>();
    lazy protocol witness table accessor for type _ConditionalContent<PowerTargetValue, Text> and conformance <> _ConditionalContent<A, B>(&lazy protocol witness table cache variable for type _ConditionalContent<PowerTargetValue, Text> and conformance <> _ConditionalContent<A, B>, &_s7SwiftUI19_ConditionalContentVy07WorkoutB016PowerTargetValueVAA4TextVGMd, &_s7SwiftUI19_ConditionalContentVy07WorkoutB016PowerTargetValueVAA4TextVGMR, lazy protocol witness table accessor for type PowerTargetValue and conformance PowerTargetValue);
    _ConditionalContent<>.init(storage:)();
    if (BYTE1(v80))
    {
      v40 = 256;
    }

    else
    {
      v40 = 0;
    }

    v74 = v78;
    v75 = v79;
    LOWORD(v76) = v40 | v80;
    HIWORD(v76) = 256;
    goto LABEL_10;
  }

  if (v7 == *MEMORY[0x277D7DE58])
  {
    v41 = MetricsPublisher.averageCadence.getter();
    v43 = *(v1 + 24);
    v42 = *(v1 + 32);
    *&v74 = v41;
    *(&v74 + 1) = v44 & 1;
    *&v75 = v42;
    *(&v75 + 1) = v43;
    LOWORD(v76) = 256;
    lazy protocol witness table accessor for type PaceTargetValue and conformance PaceTargetValue();
    lazy protocol witness table accessor for type CadenceTargetValue and conformance CadenceTargetValue();
    v45 = v42;
    v46 = v43;
    v18 = v45;
    v19 = v46;
    _ConditionalContent<>.init(storage:)();
    v32 = v80;
    if (BYTE1(v80))
    {
      v33 = 256;
    }

    else
    {
      v33 = 0;
    }

    goto LABEL_21;
  }

  if (v7 == *MEMORY[0x277D7DE68])
  {
    MetricsPublisher.powerMetricsPublisher.getter();
    v47 = PowerMetricsPublisher.currentPower.getter();
    v49 = v48;

    v50 = *(v1 + 24);
    *&v74 = v47;
    *(&v74 + 1) = v49 & 1;
    v75 = v50;
    LOBYTE(v76) = 1;
    lazy protocol witness table accessor for type CadenceTargetValue and conformance CadenceTargetValue();
    lazy protocol witness table accessor for type PowerTargetValue and conformance PowerTargetValue();
    v18 = v50;
    _ConditionalContent<>.init(storage:)();
    v74 = v78;
    v75 = v79;
    LOWORD(v76) = v80;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI19_ConditionalContentVy07WorkoutB018CadenceTargetValueVAD05PowergH0VGMd);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI19_ConditionalContentVy07WorkoutB016PowerTargetValueVAA4TextVGMd);
    lazy protocol witness table accessor for type _ConditionalContent<CadenceTargetValue, PowerTargetValue> and conformance <> _ConditionalContent<A, B>();
    lazy protocol witness table accessor for type _ConditionalContent<PowerTargetValue, Text> and conformance <> _ConditionalContent<A, B>(&lazy protocol witness table cache variable for type _ConditionalContent<PowerTargetValue, Text> and conformance <> _ConditionalContent<A, B>, &_s7SwiftUI19_ConditionalContentVy07WorkoutB016PowerTargetValueVAA4TextVGMd, &_s7SwiftUI19_ConditionalContentVy07WorkoutB016PowerTargetValueVAA4TextVGMR, lazy protocol witness table accessor for type PowerTargetValue and conformance PowerTargetValue);
    _ConditionalContent<>.init(storage:)();
    if (BYTE1(v80))
    {
      v51 = 256;
    }

    else
    {
      v51 = 0;
    }

    v74 = v78;
    v75 = v79;
    LOWORD(v76) = v51 | v80;
    HIWORD(v76) = 256;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI19_ConditionalContentVyACy07WorkoutB015PaceTargetValueVAFGACyAfD07CadencegH0VGGMd);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI19_ConditionalContentVyACy07WorkoutB018CadenceTargetValueVAD05PowergH0VGACyAhA4TextVGGMd);
    lazy protocol witness table accessor for type _ConditionalContent<_ConditionalContent<PaceTargetValue, PaceTargetValue>, _ConditionalContent<PaceTargetValue, CadenceTargetValue>> and conformance <> _ConditionalContent<A, B>();
    lazy protocol witness table accessor for type _ConditionalContent<_ConditionalContent<CadenceTargetValue, PowerTargetValue>, _ConditionalContent<PowerTargetValue, Text>> and conformance <> _ConditionalContent<A, B>();
    _ConditionalContent<>.init(storage:)();
    v52 = v80 | (BYTE2(v80) << 16);
    if (HIBYTE(v80))
    {
      v53 = 0x1000000;
    }

    else
    {
      v53 = 0;
    }

LABEL_45:
    v74 = v78;
    v75 = v79;
    v76 = v53 | v52;
    v77 = 0;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI19_ConditionalContentVyACyACy07WorkoutB015PaceTargetValueVAFGACyAfD07CadencegH0VGGACyACyAiD05PowergH0VGACyAmA4TextVGGGMd);
    lazy protocol witness table accessor for type _ConditionalContent<_ConditionalContent<_ConditionalContent<PaceTargetValue, PaceTargetValue>, _ConditionalContent<PaceTargetValue, CadenceTargetValue>>, _ConditionalContent<_ConditionalContent<CadenceTargetValue, PowerTargetValue>, _ConditionalContent<PowerTargetValue, Text>>> and conformance <> _ConditionalContent<A, B>();
    _ConditionalContent<>.init(storage:)();
LABEL_14:

    goto LABEL_15;
  }

  if (v7 == *MEMORY[0x277D7DE50])
  {
    MetricsPublisher.powerMetricsPublisher.getter();
    v54 = PowerMetricsPublisher.averagePower.getter();
    v56 = v55;

    v57 = *(v1 + 24);
    *&v74 = v54;
    *(&v74 + 1) = v56 & 1;
    v75 = v57;
    LOBYTE(v76) = 0;
    lazy protocol witness table accessor for type PowerTargetValue and conformance PowerTargetValue();
    v18 = v57;
    _ConditionalContent<>.init(storage:)();
    v74 = v78;
    v75 = v79;
    LOBYTE(v76) = v80;
    BYTE1(v76) = 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI19_ConditionalContentVy07WorkoutB018CadenceTargetValueVAD05PowergH0VGMd);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI19_ConditionalContentVy07WorkoutB016PowerTargetValueVAA4TextVGMd);
    lazy protocol witness table accessor for type _ConditionalContent<CadenceTargetValue, PowerTargetValue> and conformance <> _ConditionalContent<A, B>();
    lazy protocol witness table accessor for type _ConditionalContent<PowerTargetValue, Text> and conformance <> _ConditionalContent<A, B>(&lazy protocol witness table cache variable for type _ConditionalContent<PowerTargetValue, Text> and conformance <> _ConditionalContent<A, B>, &_s7SwiftUI19_ConditionalContentVy07WorkoutB016PowerTargetValueVAA4TextVGMd, &_s7SwiftUI19_ConditionalContentVy07WorkoutB016PowerTargetValueVAA4TextVGMR, lazy protocol witness table accessor for type PowerTargetValue and conformance PowerTargetValue);
    _ConditionalContent<>.init(storage:)();
    if (BYTE1(v80))
    {
      v58 = 256;
    }

    else
    {
      v58 = 0;
    }

    v74 = v78;
    v75 = v79;
    LOWORD(v76) = v58 | v80;
    HIWORD(v76) = 256;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI19_ConditionalContentVyACy07WorkoutB015PaceTargetValueVAFGACyAfD07CadencegH0VGGMd);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI19_ConditionalContentVyACy07WorkoutB018CadenceTargetValueVAD05PowergH0VGACyAhA4TextVGGMd);
    lazy protocol witness table accessor for type _ConditionalContent<_ConditionalContent<PaceTargetValue, PaceTargetValue>, _ConditionalContent<PaceTargetValue, CadenceTargetValue>> and conformance <> _ConditionalContent<A, B>();
    lazy protocol witness table accessor for type _ConditionalContent<_ConditionalContent<CadenceTargetValue, PowerTargetValue>, _ConditionalContent<PowerTargetValue, Text>> and conformance <> _ConditionalContent<A, B>();
    _ConditionalContent<>.init(storage:)();
    v52 = v80 | (BYTE2(v80) << 16);
    if (HIBYTE(v80))
    {
      v53 = 0x1000000;
    }

    else
    {
      v53 = 0;
    }

    goto LABEL_45;
  }

  v59 = *MEMORY[0x277D7DE78];
  v60 = v7;
  LocalizedStringKey.init(stringLiteral:)();
  if (v60 != v59)
  {
    *&v74 = Text.init(_:tableName:bundle:comment:)();
    *(&v74 + 1) = v69;
    *&v75 = v70 & 1;
    *(&v75 + 1) = v71;
    v76 = 0;
    v77 = 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI19_ConditionalContentVyACyACy07WorkoutB015PaceTargetValueVAFGACyAfD07CadencegH0VGGACyACyAiD05PowergH0VGACyAmA4TextVGGGMd);
    lazy protocol witness table accessor for type _ConditionalContent<_ConditionalContent<_ConditionalContent<PaceTargetValue, PaceTargetValue>, _ConditionalContent<PaceTargetValue, CadenceTargetValue>>, _ConditionalContent<_ConditionalContent<CadenceTargetValue, PowerTargetValue>, _ConditionalContent<PowerTargetValue, Text>>> and conformance <> _ConditionalContent<A, B>();
    _ConditionalContent<>.init(storage:)();
    v72 = v79;
    v73 = v78;
    v24 = v80;
    v25 = v81;
    (*(v4 + 8))(v6, v3);
    v23 = v72;
    v22 = v73;
    goto LABEL_16;
  }

  v61 = Text.init(_:tableName:bundle:comment:)();
  v63 = v62;
  v65 = v64 & 1;
  *&v74 = v61;
  *(&v74 + 1) = v62;
  *&v75 = v64 & 1;
  *(&v75 + 1) = v66;
  LOBYTE(v76) = 1;
  outlined copy of Text.Storage(v61, v62, v64 & 1);
  lazy protocol witness table accessor for type PowerTargetValue and conformance PowerTargetValue();

  _ConditionalContent<>.init(storage:)();
  v74 = v78;
  v75 = v79;
  LOBYTE(v76) = v80;
  BYTE1(v76) = 1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI19_ConditionalContentVy07WorkoutB018CadenceTargetValueVAD05PowergH0VGMd);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI19_ConditionalContentVy07WorkoutB016PowerTargetValueVAA4TextVGMd);
  lazy protocol witness table accessor for type _ConditionalContent<CadenceTargetValue, PowerTargetValue> and conformance <> _ConditionalContent<A, B>();
  lazy protocol witness table accessor for type _ConditionalContent<PowerTargetValue, Text> and conformance <> _ConditionalContent<A, B>(&lazy protocol witness table cache variable for type _ConditionalContent<PowerTargetValue, Text> and conformance <> _ConditionalContent<A, B>, &_s7SwiftUI19_ConditionalContentVy07WorkoutB016PowerTargetValueVAA4TextVGMd, &_s7SwiftUI19_ConditionalContentVy07WorkoutB016PowerTargetValueVAA4TextVGMR, lazy protocol witness table accessor for type PowerTargetValue and conformance PowerTargetValue);
  _ConditionalContent<>.init(storage:)();
  if (BYTE1(v80))
  {
    v67 = 256;
  }

  else
  {
    v67 = 0;
  }

  v74 = v78;
  v75 = v79;
  LOWORD(v76) = v67 | v80;
  HIWORD(v76) = 256;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI19_ConditionalContentVyACy07WorkoutB015PaceTargetValueVAFGACyAfD07CadencegH0VGGMd);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI19_ConditionalContentVyACy07WorkoutB018CadenceTargetValueVAD05PowergH0VGACyAhA4TextVGGMd);
  lazy protocol witness table accessor for type _ConditionalContent<_ConditionalContent<PaceTargetValue, PaceTargetValue>, _ConditionalContent<PaceTargetValue, CadenceTargetValue>> and conformance <> _ConditionalContent<A, B>();
  lazy protocol witness table accessor for type _ConditionalContent<_ConditionalContent<CadenceTargetValue, PowerTargetValue>, _ConditionalContent<PowerTargetValue, Text>> and conformance <> _ConditionalContent<A, B>();
  _ConditionalContent<>.init(storage:)();
  if (HIBYTE(v80))
  {
    v68 = 0x1000000;
  }

  else
  {
    v68 = 0;
  }

  v74 = v78;
  v75 = v79;
  v76 = v68 | v80 | (BYTE2(v80) << 16);
  v77 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI19_ConditionalContentVyACyACy07WorkoutB015PaceTargetValueVAFGACyAfD07CadencegH0VGGACyACyAiD05PowergH0VGACyAmA4TextVGGGMd);
  lazy protocol witness table accessor for type _ConditionalContent<_ConditionalContent<_ConditionalContent<PaceTargetValue, PaceTargetValue>, _ConditionalContent<PaceTargetValue, CadenceTargetValue>>, _ConditionalContent<_ConditionalContent<CadenceTargetValue, PowerTargetValue>, _ConditionalContent<PowerTargetValue, Text>>> and conformance <> _ConditionalContent<A, B>();
  _ConditionalContent<>.init(storage:)();
  outlined consume of Text.Storage(v61, v63, v65);

LABEL_15:
  v22 = v78;
  v23 = v79;
  v24 = v80;
  v25 = v81;
LABEL_16:
  *a1 = v22;
  *(a1 + 16) = v23;
  *(a1 + 32) = v24;
  *(a1 + 36) = v25;
}

unint64_t lazy protocol witness table accessor for type _ConditionalContent<_ConditionalContent<_ConditionalContent<PaceTargetValue, PaceTargetValue>, _ConditionalContent<PaceTargetValue, CadenceTargetValue>>, _ConditionalContent<_ConditionalContent<CadenceTargetValue, PowerTargetValue>, _ConditionalContent<PowerTargetValue, Text>>> and conformance <> _ConditionalContent<A, B>()
{
  result = lazy protocol witness table cache variable for type _ConditionalContent<_ConditionalContent<_ConditionalContent<PaceTargetValue, PaceTargetValue>, _ConditionalContent<PaceTargetValue, CadenceTargetValue>>, _ConditionalContent<_ConditionalContent<CadenceTargetValue, PowerTargetValue>, _ConditionalContent<PowerTargetValue, Text>>> and conformance <> _ConditionalContent<A, B>;
  if (!lazy protocol witness table cache variable for type _ConditionalContent<_ConditionalContent<_ConditionalContent<PaceTargetValue, PaceTargetValue>, _ConditionalContent<PaceTargetValue, CadenceTargetValue>>, _ConditionalContent<_ConditionalContent<CadenceTargetValue, PowerTargetValue>, _ConditionalContent<PowerTargetValue, Text>>> and conformance <> _ConditionalContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI19_ConditionalContentVyACyACy07WorkoutB015PaceTargetValueVAFGACyAfD07CadencegH0VGGACyACyAiD05PowergH0VGACyAmA4TextVGGGMd);
    lazy protocol witness table accessor for type _ConditionalContent<_ConditionalContent<PaceTargetValue, PaceTargetValue>, _ConditionalContent<PaceTargetValue, CadenceTargetValue>> and conformance <> _ConditionalContent<A, B>();
    lazy protocol witness table accessor for type _ConditionalContent<_ConditionalContent<CadenceTargetValue, PowerTargetValue>, _ConditionalContent<PowerTargetValue, Text>> and conformance <> _ConditionalContent<A, B>();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type _ConditionalContent<_ConditionalContent<_ConditionalContent<PaceTargetValue, PaceTargetValue>, _ConditionalContent<PaceTargetValue, CadenceTargetValue>>, _ConditionalContent<_ConditionalContent<CadenceTargetValue, PowerTargetValue>, _ConditionalContent<PowerTargetValue, Text>>> and conformance <> _ConditionalContent<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type _ConditionalContent<_ConditionalContent<PaceTargetValue, PaceTargetValue>, _ConditionalContent<PaceTargetValue, CadenceTargetValue>> and conformance <> _ConditionalContent<A, B>()
{
  result = lazy protocol witness table cache variable for type _ConditionalContent<_ConditionalContent<PaceTargetValue, PaceTargetValue>, _ConditionalContent<PaceTargetValue, CadenceTargetValue>> and conformance <> _ConditionalContent<A, B>;
  if (!lazy protocol witness table cache variable for type _ConditionalContent<_ConditionalContent<PaceTargetValue, PaceTargetValue>, _ConditionalContent<PaceTargetValue, CadenceTargetValue>> and conformance <> _ConditionalContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI19_ConditionalContentVyACy07WorkoutB015PaceTargetValueVAFGACyAfD07CadencegH0VGGMd);
    lazy protocol witness table accessor for type _ConditionalContent<PaceTargetValue, PaceTargetValue> and conformance <> _ConditionalContent<A, B>();
    lazy protocol witness table accessor for type _ConditionalContent<PaceTargetValue, CadenceTargetValue> and conformance <> _ConditionalContent<A, B>();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type _ConditionalContent<_ConditionalContent<PaceTargetValue, PaceTargetValue>, _ConditionalContent<PaceTargetValue, CadenceTargetValue>> and conformance <> _ConditionalContent<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type _ConditionalContent<PaceTargetValue, PaceTargetValue> and conformance <> _ConditionalContent<A, B>()
{
  result = lazy protocol witness table cache variable for type _ConditionalContent<PaceTargetValue, PaceTargetValue> and conformance <> _ConditionalContent<A, B>;
  if (!lazy protocol witness table cache variable for type _ConditionalContent<PaceTargetValue, PaceTargetValue> and conformance <> _ConditionalContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI19_ConditionalContentVy07WorkoutB015PaceTargetValueVAFGMd);
    lazy protocol witness table accessor for type PaceTargetValue and conformance PaceTargetValue();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type _ConditionalContent<PaceTargetValue, PaceTargetValue> and conformance <> _ConditionalContent<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type PaceTargetValue and conformance PaceTargetValue()
{
  result = lazy protocol witness table cache variable for type PaceTargetValue and conformance PaceTargetValue;
  if (!lazy protocol witness table cache variable for type PaceTargetValue and conformance PaceTargetValue)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PaceTargetValue and conformance PaceTargetValue);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type _ConditionalContent<PaceTargetValue, CadenceTargetValue> and conformance <> _ConditionalContent<A, B>()
{
  result = lazy protocol witness table cache variable for type _ConditionalContent<PaceTargetValue, CadenceTargetValue> and conformance <> _ConditionalContent<A, B>;
  if (!lazy protocol witness table cache variable for type _ConditionalContent<PaceTargetValue, CadenceTargetValue> and conformance <> _ConditionalContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI19_ConditionalContentVy07WorkoutB015PaceTargetValueVAD07CadencegH0VGMd);
    lazy protocol witness table accessor for type PaceTargetValue and conformance PaceTargetValue();
    lazy protocol witness table accessor for type CadenceTargetValue and conformance CadenceTargetValue();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type _ConditionalContent<PaceTargetValue, CadenceTargetValue> and conformance <> _ConditionalContent<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type CadenceTargetValue and conformance CadenceTargetValue()
{
  result = lazy protocol witness table cache variable for type CadenceTargetValue and conformance CadenceTargetValue;
  if (!lazy protocol witness table cache variable for type CadenceTargetValue and conformance CadenceTargetValue)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CadenceTargetValue and conformance CadenceTargetValue);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type _ConditionalContent<_ConditionalContent<CadenceTargetValue, PowerTargetValue>, _ConditionalContent<PowerTargetValue, Text>> and conformance <> _ConditionalContent<A, B>()
{
  result = lazy protocol witness table cache variable for type _ConditionalContent<_ConditionalContent<CadenceTargetValue, PowerTargetValue>, _ConditionalContent<PowerTargetValue, Text>> and conformance <> _ConditionalContent<A, B>;
  if (!lazy protocol witness table cache variable for type _ConditionalContent<_ConditionalContent<CadenceTargetValue, PowerTargetValue>, _ConditionalContent<PowerTargetValue, Text>> and conformance <> _ConditionalContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI19_ConditionalContentVyACy07WorkoutB018CadenceTargetValueVAD05PowergH0VGACyAhA4TextVGGMd);
    lazy protocol witness table accessor for type _ConditionalContent<CadenceTargetValue, PowerTargetValue> and conformance <> _ConditionalContent<A, B>();
    lazy protocol witness table accessor for type _ConditionalContent<PowerTargetValue, Text> and conformance <> _ConditionalContent<A, B>(&lazy protocol witness table cache variable for type _ConditionalContent<PowerTargetValue, Text> and conformance <> _ConditionalContent<A, B>, &_s7SwiftUI19_ConditionalContentVy07WorkoutB016PowerTargetValueVAA4TextVGMd, &_s7SwiftUI19_ConditionalContentVy07WorkoutB016PowerTargetValueVAA4TextVGMR, lazy protocol witness table accessor for type PowerTargetValue and conformance PowerTargetValue);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type _ConditionalContent<_ConditionalContent<CadenceTargetValue, PowerTargetValue>, _ConditionalContent<PowerTargetValue, Text>> and conformance <> _ConditionalContent<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type _ConditionalContent<CadenceTargetValue, PowerTargetValue> and conformance <> _ConditionalContent<A, B>()
{
  result = lazy protocol witness table cache variable for type _ConditionalContent<CadenceTargetValue, PowerTargetValue> and conformance <> _ConditionalContent<A, B>;
  if (!lazy protocol witness table cache variable for type _ConditionalContent<CadenceTargetValue, PowerTargetValue> and conformance <> _ConditionalContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI19_ConditionalContentVy07WorkoutB018CadenceTargetValueVAD05PowergH0VGMd);
    lazy protocol witness table accessor for type CadenceTargetValue and conformance CadenceTargetValue();
    lazy protocol witness table accessor for type PowerTargetValue and conformance PowerTargetValue();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type _ConditionalContent<CadenceTargetValue, PowerTargetValue> and conformance <> _ConditionalContent<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type PowerTargetValue and conformance PowerTargetValue()
{
  result = lazy protocol witness table cache variable for type PowerTargetValue and conformance PowerTargetValue;
  if (!lazy protocol witness table cache variable for type PowerTargetValue and conformance PowerTargetValue)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PowerTargetValue and conformance PowerTargetValue);
  }

  return result;
}

uint64_t lazy protocol witness table accessor for type _ConditionalContent<PowerTargetValue, Text> and conformance <> _ConditionalContent<A, B>(unint64_t *a1, uint64_t *a2, uint64_t a3, void (*a4)(void))
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

uint64_t NSUnitLength.localizedName(formattingManager:)(void *a1)
{
  v2 = objc_opt_self();
  v3 = [v2 miles];
  type metadata accessor for NSUnitLength();
  v4 = static NSObject.== infix(_:_:)();

  if (v4)
  {
    v5 = [a1 localizedLongUnitStringForDistanceUnit:3 distanceInUnit:3 textCase:2.0];
    if (v5)
    {
      goto LABEL_12;
    }

    __break(1u);
  }

  v6 = [v2 yards];
  v7 = static NSObject.== infix(_:_:)();

  if (v7)
  {
    v5 = [a1 localizedLongUnitStringForDistanceUnit:4 distanceInUnit:3 textCase:2.0];
    if (v5)
    {
      goto LABEL_12;
    }

    __break(1u);
  }

  v8 = [v2 kilometers];
  v9 = static NSObject.== infix(_:_:)();

  if ((v9 & 1) == 0)
  {
    goto LABEL_10;
  }

  v5 = [a1 localizedLongUnitStringForDistanceUnit:2 distanceInUnit:3 textCase:2.0];
  if (v5)
  {
LABEL_12:
    v12 = v5;
    v13 = static String._unconditionallyBridgeFromObjectiveC(_:)();

    return v13;
  }

  __break(1u);
LABEL_10:
  v10 = [v2 meters];
  v11 = static NSObject.== infix(_:_:)();

  if (v11)
  {
    v5 = [a1 localizedLongUnitStringForDistanceUnit:1 distanceInUnit:3 textCase:2.0];
    if (v5)
    {
      goto LABEL_12;
    }

    __break(1u);
  }

  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

__n128 __swift_memcpy105_8(uint64_t a1, __int128 *a2)
{
  v2 = *a2;
  v3 = a2[2];
  *(a1 + 16) = a2[1];
  *(a1 + 32) = v3;
  *a1 = v2;
  result = a2[3];
  v5 = a2[4];
  v6 = a2[5];
  *(a1 + 89) = *(a2 + 89);
  *(a1 + 64) = v5;
  *(a1 + 80) = v6;
  *(a1 + 48) = result;
  return result;
}

uint64_t getEnumTagSinglePayload for ManagedConfigurationViewiOS(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 105))
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

uint64_t storeEnumTagSinglePayload for ManagedConfigurationViewiOS(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 104) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 105) = 1;
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

    *(result + 105) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t ManagedConfigurationViewiOS.body.getter@<X0>(uint64_t a1@<X8>)
{
  v38[0] = a1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI10_ShapeViewVyAA16RoundedRectangleVAA5ColorVGMd);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = v38 - v4;
  v6 = type metadata accessor for RoundedRectangle();
  v7 = v6 - 8;
  MEMORY[0x28223BE20](v6);
  v9 = v38 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI10_ShapeViewVyAA16RoundedRectangleVAA5ColorVGSgMd);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = v38 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v15 = v38 - v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyACyAA6VStackVyAA9TupleViewVyAA6HStackVyAGyACyAA5GroupVyACyACyAA5ImageVAA18_AspectRatioLayoutVGAA06_FrameM0VGSgGAA05_FlexnM0VG_AA6SpacerV07WorkoutB0011StartButtonG0VSgtGG_AEyAGyACyAA4TextVAA30_EnvironmentKeyWritingModifierVy12CoreGraphics7CGFloatVGG_AA012_ConditionalD0VyACyA6_A8_yAM5ScaleOGGA6_GtGGAA0G0PAAE11buttonStyleyQrqd__AA09PrimitiveS5StyleRd__lFQOyAA0S0VyACyACyACyACyACyACyA6_AWGAA08_PaddingM0VGAA016_BackgroundStyleX0VyAA20_BlendModeShapeStyleVyAA5ColorVGGGA8_yA38_SgGGAA11_ClipEffectVyAA16RoundedRectangleVGGA8_yAA4FontVSgGGG_AA05PlainS5StyleVQo_tGGAA06_TraitwX0VyAA018ListRowInsetsTraitV0VGGAA01_d5ShapeX0VyAA9RectangleVGGMd);
  v17 = v16 - 8;
  MEMORY[0x28223BE20](v16);
  v19 = v38 - v18;
  *v19 = static HorizontalAlignment.leading.getter();
  *(v19 + 1) = 0x4030000000000000;
  v19[16] = 0;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI13_VariadicViewO4TreeVy_AA13_VStackLayoutVAA05TupleD0VyAA6HStackVyAIyAA15ModifiedContentVyAA5GroupVyAMyAMyAA5ImageVAA012_AspectRatioG0VGAA06_FrameG0VGSgGAA05_FlexpG0VG_AA6SpacerV07WorkoutB0011StartButtonD0VSgtGG_AA0F0VyAIyAMyAA4TextVAA30_EnvironmentKeyWritingModifierVy12CoreGraphics7CGFloatVGG_AA012_ConditionalK0VyAMyA12_A14_yAQ5ScaleOGGA12_GtGGAA0D0PAAE11buttonStyleyQrqd__AA09PrimitiveU5StyleRd__lFQOyAA0U0VyAMyAMyAMyAMyAMyAMyA12_A_GAA08_PaddingG0VGAA016_BackgroundStyleZ0VyAA20_BlendModeShapeStyleVyAA5ColorVGGGA14_yA44_SgGGAA11_ClipEffectVyAA16RoundedRectangleVGGA14_yAA4FontVSgGGG_AA05PlainU5StyleVQo_tGGMd);
  closure #1 in ManagedConfigurationViewiOS.body.getter(v1, &v19[*(v20 + 44)]);
  v21 = &v19[*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyAA6VStackVyAA9TupleViewVyAA6HStackVyAGyACyAA5GroupVyACyACyAA5ImageVAA18_AspectRatioLayoutVGAA06_FrameM0VGSgGAA05_FlexnM0VG_AA6SpacerV07WorkoutB0011StartButtonG0VSgtGG_AEyAGyACyAA4TextVAA30_EnvironmentKeyWritingModifierVy12CoreGraphics7CGFloatVGG_AA012_ConditionalD0VyACyA6_A8_yAM5ScaleOGGA6_GtGGAA0G0PAAE11buttonStyleyQrqd__AA09PrimitiveS5StyleRd__lFQOyAA0S0VyACyACyACyACyACyACyA6_AWGAA08_PaddingM0VGAA016_BackgroundStyleX0VyAA20_BlendModeShapeStyleVyAA5ColorVGGGA8_yA38_SgGGAA11_ClipEffectVyAA16RoundedRectangleVGGA8_yAA4FontVSgGGG_AA05PlainS5StyleVQo_tGGAA06_TraitwX0VyAA018ListRowInsetsTraitV0VGGMd) + 36)];
  __asm { FMOV            V0.2D, #20.0 }

  *v21 = _Q0;
  *(v21 + 1) = _Q0;
  v21[32] = 0;
  v19[*(v17 + 44)] = 0;
  v27 = *(v7 + 28);
  v28 = *MEMORY[0x277CE0118];
  v29 = type metadata accessor for RoundedCornerStyle();
  (*(*(v29 - 8) + 104))(&v9[v27], v28, v29);
  __asm { FMOV            V0.2D, #28.0 }

  *v9 = _Q0;
  ManagedConfigurationSourcePickerItem.viewModel.getter();
  v31 = dispatch thunk of ManagedConfigurationsViewModel.topSuggested.getter();

  if (v31)
  {
    WorkoutConfiguration.displayPlatterColor.getter();
    v32 = Color.init(uiColor:)();
  }

  else
  {
    v33 = [objc_opt_self() secondarySystemBackgroundColor];
    v32 = Color.init(uiColor:)();
  }

  v38[1] = v32;
  lazy protocol witness table accessor for type Color and conformance Color();
  Color.init<A>(_:)();
  v34 = Color.opacity(_:)();

  outlined init with take of RoundedRectangle(v9, v15, MEMORY[0x277CDFC08]);
  *&v15[*(v2 + 52)] = v34;
  *&v15[*(v2 + 56)] = 256;
  (*(v3 + 56))(v15, 0, 1, v2);
  outlined init with copy of _ShapeView<RoundedRectangle, Color>?(v15, v12, &_s7SwiftUI10_ShapeViewVyAA16RoundedRectangleVAA5ColorVGSgMd);
  if ((*(v3 + 48))(v12, 1, v2) == 1)
  {
    outlined destroy of _ShapeView<RoundedRectangle, Color>?(v15, &_s7SwiftUI10_ShapeViewVyAA16RoundedRectangleVAA5ColorVGSgMd);
    v35 = 0;
  }

  else
  {
    _s7SwiftUI10_ShapeViewVyAA16RoundedRectangleVAA5ColorVGWObTm_0(v12, v5, &_s7SwiftUI10_ShapeViewVyAA16RoundedRectangleVAA5ColorVGMd);
    lazy protocol witness table accessor for type _ShapeView<RoundedRectangle, Color> and conformance _ShapeView<A, B>(&lazy protocol witness table cache variable for type _ShapeView<RoundedRectangle, Color> and conformance _ShapeView<A, B>, &_s7SwiftUI10_ShapeViewVyAA16RoundedRectangleVAA5ColorVGMd);
    v35 = AnyView.init<A>(_:)();
    outlined destroy of _ShapeView<RoundedRectangle, Color>?(v15, &_s7SwiftUI10_ShapeViewVyAA16RoundedRectangleVAA5ColorVGSgMd);
  }

  v36 = v38[0];
  sub_20C699FE8(v19, v38[0]);
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyACyACyAA6VStackVyAA9TupleViewVyAA6HStackVyAGyACyAA5GroupVyACyACyAA5ImageVAA18_AspectRatioLayoutVGAA06_FrameM0VGSgGAA05_FlexnM0VG_AA6SpacerV07WorkoutB0011StartButtonG0VSgtGG_AEyAGyACyAA4TextVAA30_EnvironmentKeyWritingModifierVy12CoreGraphics7CGFloatVGG_AA012_ConditionalD0VyACyA6_A8_yAM5ScaleOGGA6_GtGGAA0G0PAAE11buttonStyleyQrqd__AA09PrimitiveS5StyleRd__lFQOyAA0S0VyACyACyACyACyACyACyA6_AWGAA08_PaddingM0VGAA016_BackgroundStyleX0VyAA20_BlendModeShapeStyleVyAA5ColorVGGGA8_yA38_SgGGAA11_ClipEffectVyAA16RoundedRectangleVGGA8_yAA4FontVSgGGG_AA05PlainS5StyleVQo_tGGAA06_TraitwX0VyAA018ListRowInsetsTraitV0VGGAA01_d5ShapeX0VyAA9RectangleVGGA63_yAA022ListRowBackgroundTraitV0VGGMd);
  *(v36 + *(result + 36)) = v35;
  return result;
}

uint64_t closure #1 in ManagedConfigurationViewiOS.body.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v55 = a2;
  v3 = type metadata accessor for PlainButtonStyle();
  v4 = *(v3 - 8);
  v53 = v3;
  v54 = v4;
  MEMORY[0x28223BE20](v3);
  v6 = &v43 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI6ButtonVyAA15ModifiedContentVyAEyAEyAEyAEyAEyAA4TextVAA16_FlexFrameLayoutVGAA08_PaddingI0VGAA24_BackgroundStyleModifierVyAA015_BlendModeShapeL0VyAA5ColorVGGGAA022_EnvironmentKeyWritingM0VyASSgGGAA11_ClipEffectVyAA16RoundedRectangleVGGAXyAA4FontVSgGGGMd);
  v50 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v9 = &v43 - v8;
  v52 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI4ViewPAAE11buttonStyleyQrqd__AA015PrimitiveButtonE0Rd__lFQOyAA0G0VyAA15ModifiedContentVyAIyAIyAIyAIyAIyAA4TextVAA16_FlexFrameLayoutVGAA08_PaddingM0VGAA011_BackgroundE8ModifierVyAA015_BlendModeShapeE0VyAA5ColorVGGGAA022_EnvironmentKeyWritingP0VyAWSgGGAA11_ClipEffectVyAA16RoundedRectangleVGGA0_yAA4FontVSgGGG_AA05PlaingE0VQo_Md);
  v48 = *(v52 - 8);
  MEMORY[0x28223BE20](v52);
  v51 = &v43 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v13 = &v43 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI6VStackVyAA9TupleViewVyAA15ModifiedContentVyAA4TextVAA30_EnvironmentKeyWritingModifierVy12CoreGraphics7CGFloatVGG_AA012_ConditionalG0VyAGyAiKyAA5ImageV5ScaleOGGAIGtGGMd);
  MEMORY[0x28223BE20](v14 - 8);
  v49 = &v43 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v18 = &v43 - v17;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI6HStackVyAA9TupleViewVyAA15ModifiedContentVyAA5GroupVyAGyAGyAA5ImageVAA18_AspectRatioLayoutVGAA06_FrameL0VGSgGAA05_FlexmL0VG_AA6SpacerV07WorkoutB0011StartButtonE0VSgtGGMd);
  MEMORY[0x28223BE20](v19 - 8);
  v21 = &v43 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v22);
  v24 = &v43 - v23;
  *v24 = static VerticalAlignment.center.getter();
  *(v24 + 1) = 0;
  v24[16] = 1;
  v25 = &v24[*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI13_VariadicViewO4TreeVy_AA13_HStackLayoutVAA05TupleD0VyAA15ModifiedContentVyAA5GroupVyAKyAKyAA5ImageVAA012_AspectRatioG0VGAA06_FrameG0VGSgGAA05_FlexoG0VG_AA6SpacerV07WorkoutB0011StartButtonD0VSgtGGMd) + 44)];
  v47 = v24;
  closure #1 in closure #1 in ManagedConfigurationViewiOS.body.getter(a1, v25);
  *v18 = static HorizontalAlignment.leading.getter();
  *(v18 + 1) = 0;
  v18[16] = 0;
  v26 = &v18[*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI13_VariadicViewO4TreeVy_AA13_VStackLayoutVAA05TupleD0VyAA15ModifiedContentVyAA4TextVAA30_EnvironmentKeyWritingModifierVy12CoreGraphics7CGFloatVGG_AA012_ConditionalJ0VyAKyAmOyAA5ImageV5ScaleOGGAMGtGGMd) + 44)];
  v45 = v18;
  closure #2 in closure #1 in ManagedConfigurationViewiOS.body.getter(a1, v26);
  v27 = swift_allocObject();
  v28 = *(a1 + 80);
  v27[5] = *(a1 + 64);
  v27[6] = v28;
  *(v27 + 105) = *(a1 + 89);
  v29 = *(a1 + 16);
  v27[1] = *a1;
  v27[2] = v29;
  v30 = *(a1 + 48);
  v27[3] = *(a1 + 32);
  v27[4] = v30;
  outlined init with copy of ManagedConfigurationViewiOS(a1, v56);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyACyACyACyACyACyAA4TextVAA16_FlexFrameLayoutVGAA08_PaddingH0VGAA24_BackgroundStyleModifierVyAA015_BlendModeShapeK0VyAA5ColorVGGGAA022_EnvironmentKeyWritingL0VyAQSgGGAA11_ClipEffectVyAA16RoundedRectangleVGGAVyAA4FontVSgGGMd);
  lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Text, _FlexFrameLayout>, _PaddingLayout>, _BackgroundStyleModifier<_BlendModeShapeStyle<Color>>>, _EnvironmentKeyWritingModifier<Color?>>, _ClipEffect<RoundedRectangle>>, _EnvironmentKeyWritingModifier<Font?>> and conformance <> ModifiedContent<A, B>();
  Button.init(action:label:)();
  PlainButtonStyle.init()();
  lazy protocol witness table accessor for type _ShapeView<RoundedRectangle, Color> and conformance _ShapeView<A, B>(&lazy protocol witness table cache variable for type Button<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Text, _FlexFrameLayout>, _PaddingLayout>, _BackgroundStyleModifier<_BlendModeShapeStyle<Color>>>, _EnvironmentKeyWritingModifier<Color?>>, _ClipEffect<RoundedRectangle>>, _EnvironmentKeyWritingModifier<Font?>>> and conformance Button<A>, &_s7SwiftUI6ButtonVyAA15ModifiedContentVyAEyAEyAEyAEyAEyAA4TextVAA16_FlexFrameLayoutVGAA08_PaddingI0VGAA24_BackgroundStyleModifierVyAA015_BlendModeShapeL0VyAA5ColorVGGGAA022_EnvironmentKeyWritingM0VyASSgGGAA11_ClipEffectVyAA16RoundedRectangleVGGAXyAA4FontVSgGGGMd);
  _s7SwiftUI16PlainButtonStyleVAcA09PrimitivedE0AAWlTm_8(&lazy protocol witness table cache variable for type PlainButtonStyle and conformance PlainButtonStyle, MEMORY[0x277CDDB18]);
  v44 = v13;
  v31 = v53;
  View.buttonStyle<A>(_:)();
  (*(v54 + 8))(v6, v31);
  (*(v50 + 8))(v9, v7);
  v32 = v21;
  v46 = v21;
  outlined init with copy of _ShapeView<RoundedRectangle, Color>?(v24, v21, &_s7SwiftUI6HStackVyAA9TupleViewVyAA15ModifiedContentVyAA5GroupVyAGyAGyAA5ImageVAA18_AspectRatioLayoutVGAA06_FrameL0VGSgGAA05_FlexmL0VG_AA6SpacerV07WorkoutB0011StartButtonE0VSgtGGMd);
  v33 = v49;
  outlined init with copy of _ShapeView<RoundedRectangle, Color>?(v18, v49, &_s7SwiftUI6VStackVyAA9TupleViewVyAA15ModifiedContentVyAA4TextVAA30_EnvironmentKeyWritingModifierVy12CoreGraphics7CGFloatVGG_AA012_ConditionalG0VyAGyAiKyAA5ImageV5ScaleOGGAIGtGGMd);
  v34 = v48;
  v35 = *(v48 + 16);
  v36 = v51;
  v37 = v52;
  v35(v51, v13, v52);
  v38 = v32;
  v39 = v55;
  outlined init with copy of _ShapeView<RoundedRectangle, Color>?(v38, v55, &_s7SwiftUI6HStackVyAA9TupleViewVyAA15ModifiedContentVyAA5GroupVyAGyAGyAA5ImageVAA18_AspectRatioLayoutVGAA06_FrameL0VGSgGAA05_FlexmL0VG_AA6SpacerV07WorkoutB0011StartButtonE0VSgtGGMd);
  v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI6HStackVyAA9TupleViewVyAA15ModifiedContentVyAA5GroupVyAGyAGyAA5ImageVAA18_AspectRatioLayoutVGAA06_FrameL0VGSgGAA05_FlexmL0VG_AA6SpacerV07WorkoutB0011StartButtonE0VSgtGG_AA6VStackVyAEyAGyAA4TextVAA30_EnvironmentKeyWritingModifierVy12CoreGraphics7CGFloatVGG_AA012_ConditionalG0VyAGyA6_A8_yAK5ScaleOGGA6_GtGGAA0E0PAAE11buttonStyleyQrqd__AA09PrimitiveR5StyleRd__lFQOyAA0R0VyAGyAGyAGyAGyAGyAGyA6_AUGAA08_PaddingL0VGAA016_BackgroundStyleX0VyAA20_BlendModeShapeStyleVyAA5ColorVGGGA8_yA38_SgGGAA11_ClipEffectVyAA16RoundedRectangleVGGA8_yAA4FontVSgGGG_AA05PlainR5StyleVQo_tMd);
  outlined init with copy of _ShapeView<RoundedRectangle, Color>?(v33, v39 + *(v40 + 48), &_s7SwiftUI6VStackVyAA9TupleViewVyAA15ModifiedContentVyAA4TextVAA30_EnvironmentKeyWritingModifierVy12CoreGraphics7CGFloatVGG_AA012_ConditionalG0VyAGyAiKyAA5ImageV5ScaleOGGAIGtGGMd);
  v35((v39 + *(v40 + 64)), v36, v37);
  v41 = *(v34 + 8);
  v41(v44, v37);
  outlined destroy of _ShapeView<RoundedRectangle, Color>?(v45, &_s7SwiftUI6VStackVyAA9TupleViewVyAA15ModifiedContentVyAA4TextVAA30_EnvironmentKeyWritingModifierVy12CoreGraphics7CGFloatVGG_AA012_ConditionalG0VyAGyAiKyAA5ImageV5ScaleOGGAIGtGGMd);
  outlined destroy of _ShapeView<RoundedRectangle, Color>?(v47, &_s7SwiftUI6HStackVyAA9TupleViewVyAA15ModifiedContentVyAA5GroupVyAGyAGyAA5ImageVAA18_AspectRatioLayoutVGAA06_FrameL0VGSgGAA05_FlexmL0VG_AA6SpacerV07WorkoutB0011StartButtonE0VSgtGGMd);
  v41(v36, v37);
  outlined destroy of _ShapeView<RoundedRectangle, Color>?(v33, &_s7SwiftUI6VStackVyAA9TupleViewVyAA15ModifiedContentVyAA4TextVAA30_EnvironmentKeyWritingModifierVy12CoreGraphics7CGFloatVGG_AA012_ConditionalG0VyAGyAiKyAA5ImageV5ScaleOGGAIGtGGMd);
  return outlined destroy of _ShapeView<RoundedRectangle, Color>?(v46, &_s7SwiftUI6HStackVyAA9TupleViewVyAA15ModifiedContentVyAA5GroupVyAGyAGyAA5ImageVAA18_AspectRatioLayoutVGAA06_FrameL0VGSgGAA05_FlexmL0VG_AA6SpacerV07WorkoutB0011StartButtonE0VSgtGGMd);
}

uint64_t closure #1 in closure #1 in ManagedConfigurationViewiOS.body.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  started = type metadata accessor for StartButtonView();
  v30 = *(started - 8);
  MEMORY[0x28223BE20](started);
  v6 = (v28 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9WorkoutUI15StartButtonViewVSgMd);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = v28 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v12 = v28 - v11;
  closure #1 in closure #1 in closure #1 in ManagedConfigurationViewiOS.body.getter(&v35);
  static Alignment.leading.getter();
  _FlexFrameLayout.init(minWidth:idealWidth:maxWidth:minHeight:idealHeight:maxHeight:alignment:)();
  ManagedConfigurationSourcePickerItem.viewModel.getter();
  v13 = dispatch thunk of ManagedConfigurationsViewModel.topSuggested.getter();

  if (v13)
  {
    v29 = v12;
    v28[3] = *(a1 + 104);
    type metadata accessor for WorkoutDevicesProvider();
    v14 = started;
    _s7SwiftUI16PlainButtonStyleVAcA09PrimitivedE0AAWlTm_8(&lazy protocol witness table cache variable for type WorkoutDevicesProvider and conformance WorkoutDevicesProvider, MEMORY[0x277D7DAA8]);
    v12 = v29;
    v15 = StateObject.wrappedValue.getter();
    WorkoutConfiguration.startButtonState(with:)();

    *v6 = v13;
    v6[1] = 1;
    outlined init with take of RoundedRectangle(v6, v12, type metadata accessor for StartButtonView);
    (*(v30 + 56))(v12, 0, 1, v14);
  }

  else
  {
    (*(v30 + 56))(v12, 1, 1, started);
  }

  outlined init with copy of _ShapeView<RoundedRectangle, Color>?(v12, v9, &_s9WorkoutUI15StartButtonViewVSgMd);
  v16 = v42;
  v31[8] = v43;
  v31[9] = v44;
  v17 = v44;
  v31[10] = v45;
  v18 = v39;
  v19 = v38;
  v31[4] = v39;
  v31[5] = v40;
  v20 = v40;
  v21 = v41;
  v31[6] = v41;
  v31[7] = v42;
  v31[0] = v35;
  v31[1] = v36;
  v23 = v35;
  v22 = v36;
  v24 = v37;
  v31[2] = v37;
  v31[3] = v38;
  *(a2 + 128) = v43;
  *(a2 + 144) = v17;
  *(a2 + 160) = v45;
  *(a2 + 64) = v18;
  *(a2 + 80) = v20;
  *(a2 + 96) = v21;
  *(a2 + 112) = v16;
  *a2 = v23;
  *(a2 + 16) = v22;
  v25 = v46;
  v32 = v46;
  *(a2 + 32) = v24;
  *(a2 + 48) = v19;
  *(a2 + 176) = v25;
  *(a2 + 184) = 0;
  *(a2 + 192) = 1;
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyAA5GroupVyACyACyAA5ImageVAA18_AspectRatioLayoutVGAA06_FrameI0VGSgGAA05_FlexjI0VG_AA6SpacerV07WorkoutB015StartButtonViewVSgtMd);
  outlined init with copy of _ShapeView<RoundedRectangle, Color>?(v9, a2 + *(v26 + 64), &_s9WorkoutUI15StartButtonViewVSgMd);
  outlined init with copy of _ShapeView<RoundedRectangle, Color>?(v31, v33, &_s7SwiftUI15ModifiedContentVyAA5GroupVyACyACyAA5ImageVAA18_AspectRatioLayoutVGAA06_FrameI0VGSgGAA05_FlexjI0VGMd);
  outlined destroy of _ShapeView<RoundedRectangle, Color>?(v12, &_s9WorkoutUI15StartButtonViewVSgMd);
  outlined destroy of _ShapeView<RoundedRectangle, Color>?(v9, &_s9WorkoutUI15StartButtonViewVSgMd);
  v33[8] = v43;
  v33[9] = v44;
  v33[10] = v45;
  v34 = v46;
  v33[4] = v39;
  v33[5] = v40;
  v33[6] = v41;
  v33[7] = v42;
  v33[0] = v35;
  v33[1] = v36;
  v33[2] = v37;
  v33[3] = v38;
  return outlined destroy of _ShapeView<RoundedRectangle, Color>?(v33, &_s7SwiftUI15ModifiedContentVyAA5GroupVyACyACyAA5ImageVAA18_AspectRatioLayoutVGAA06_FrameI0VGSgGAA05_FlexjI0VGMd);
}

void closure #1 in closure #1 in closure #1 in ManagedConfigurationViewiOS.body.getter(uint64_t a1@<X8>)
{
  v2 = type metadata accessor for Image.ResizingMode();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v17[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  ManagedConfigurationSourcePickerItem.provider.getter();
  v6 = dispatch thunk of ExternalProvider.sourceImageData.getter();
  v8 = v7;
  v9 = objc_allocWithZone(MEMORY[0x277D755B8]);
  isa = Data._bridgeToObjectiveC()().super.isa;
  v11 = [v9 initWithData_];

  outlined consume of Data._Representation(v6, v8);

  if (v11)
  {
    v12 = v11;
    Image.init(uiImage:)();
    (*(v3 + 104))(v5, *MEMORY[0x277CE0FE0], v2);
    v11 = Image.resizable(capInsets:resizingMode:)();

    (*(v3 + 8))(v5, v2);
    static Alignment.center.getter();
    _FrameLayout.init(width:height:alignment:)();

    v17[8] = 1;
    v13 = v18;
    v14 = v19;
    v15 = v20;
    v16 = 1;
  }

  else
  {
    v16 = 0;
    v13 = 0uLL;
    v14 = 0uLL;
    v15 = 0uLL;
  }

  *a1 = v11;
  *(a1 + 8) = 0;
  *(a1 + 16) = v16;
  *(a1 + 24) = v13;
  *(a1 + 40) = v14;
  *(a1 + 56) = v15;
}

uint64_t closure #2 in closure #1 in ManagedConfigurationViewiOS.body.getter@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v121 = a2;
  v117 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI19_ConditionalContentV7StorageOyAA08ModifiedD0VyAA4TextVAA30_EnvironmentKeyWritingModifierVyAA5ImageV5ScaleOGGAI_GMd);
  MEMORY[0x28223BE20](v117);
  v118 = (&v105 - v3);
  v4 = type metadata accessor for LocalizedStringKey.StringInterpolation();
  MEMORY[0x28223BE20](v4 - 8);
  v107 = &v105 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v116 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyAA4TextVAA30_EnvironmentKeyWritingModifierVyAA5ImageV5ScaleOGGMd);
  MEMORY[0x28223BE20](v116);
  v108 = &v105 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v109 = &v105 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI19_ConditionalContentVyAA08ModifiedD0VyAA4TextVAA30_EnvironmentKeyWritingModifierVyAA5ImageV5ScaleOGGAGGMd);
  MEMORY[0x28223BE20](v9 - 8);
  v120 = &v105 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v119 = &v105 - v12;
  v106 = a1;
  v13 = *a1;
  ManagedConfigurationSourcePickerItem.provider.getter();
  v14 = dispatch thunk of ExternalProvider.sourceName.getter();
  v16 = v15;

  v122 = v14;
  v123 = v16;
  lazy protocol witness table accessor for type String and conformance String();
  v17 = Text.init<A>(_:)();
  v19 = v18;
  LOBYTE(v16) = v20;
  static Font.title2.getter();
  v21 = Text.font(_:)();
  v23 = v22;
  v25 = v24;

  outlined consume of Text.Storage(v17, v19, v16 & 1);

  static Font.Weight.bold.getter();
  v26 = Text.fontWeight(_:)();
  v28 = v27;
  LOBYTE(v16) = v29;
  outlined consume of Text.Storage(v21, v23, v25 & 1);

  static Color.primary.getter();
  v30 = Text.foregroundColor(_:)();
  v32 = v31;
  v111 = v33;
  v35 = v34;

  outlined consume of Text.Storage(v26, v28, v16 & 1);

  KeyPath = swift_getKeyPath();
  v110 = v13;
  ManagedConfigurationSourcePickerItem.viewModel.getter();
  v37 = dispatch thunk of ManagedConfigurationsViewModel.topSuggested.getter();

  v114 = v30;
  v115 = v35;
  v112 = KeyPath;
  v113 = v32;
  if (!v37)
  {
    LocalizedStringKey.init(stringLiteral:)();
    if (one-time initialization token for WorkoutUIBundle != -1)
    {
      swift_once();
    }

    swift_beginAccess();
    v60 = WorkoutUIBundle.super.isa;
    v61 = Text.init(_:tableName:bundle:comment:)();
    v63 = v62;
    v65 = v64;
    static Font.body.getter();
    v66 = Text.font(_:)();
    v68 = v67;
    v70 = v69;

    outlined consume of Text.Storage(v61, v63, v65 & 1);

    ManagedConfigurationSourcePickerItem.viewModel.getter();
    v71 = dispatch thunk of ManagedConfigurationsViewModel.topSuggested.getter();

    if (v71)
    {
      WorkoutConfiguration.displayColor.getter();
      Color.init(uiColor:)();
    }

    else
    {
      static Color.secondary.getter();
    }

    v86 = Text.foregroundColor(_:)();
    v88 = v87;
    v90 = v89;
    v92 = v91;

    outlined consume of Text.Storage(v66, v68, v70 & 1);

    v93 = v118;
    *v118 = v86;
    v93[1] = v88;
    *(v93 + 16) = v90 & 1;
    v93[3] = v92;
    swift_storeEnumTagMultiPayload();
    lazy protocol witness table accessor for type ModifiedContent<Text, _EnvironmentKeyWritingModifier<Image.Scale>> and conformance <> ModifiedContent<A, B>();
    v85 = v119;
    _ConditionalContent<>.init(storage:)();
    goto LABEL_18;
  }

  v38 = v106[1];
  if (v38)
  {
    v39 = v38;
    v40 = WorkoutConfiguration.displayDetail(_:)();
    if (!v41)
    {
      v40 = WorkoutConfiguration.displayName(formattingManager:)();
    }

    v42 = v40;
    v43 = v41;

    v44 = specialized ManagedConfigurationViewiOS.image(for:)();
    LocalizedStringKey.StringInterpolation.init(literalCapacity:interpolationCount:)();
    v45._countAndFlagsBits = 0;
    v45._object = 0xE000000000000000;
    LocalizedStringKey.StringInterpolation.appendLiteral(_:)(v45);
    v106 = v44;
    LocalizedStringKey.StringInterpolation.appendInterpolation(_:)();
    v46._countAndFlagsBits = 32;
    v46._object = 0xE100000000000000;
    LocalizedStringKey.StringInterpolation.appendLiteral(_:)(v46);
    v47._countAndFlagsBits = v42;
    v47._object = v43;
    LocalizedStringKey.StringInterpolation.appendInterpolation(_:)(v47);

    v48._countAndFlagsBits = 0;
    v48._object = 0xE000000000000000;
    LocalizedStringKey.StringInterpolation.appendLiteral(_:)(v48);
    LocalizedStringKey.init(stringInterpolation:)();
    v49 = Text.init(_:tableName:bundle:comment:)();
    v51 = v50;
    v53 = v52;
    type metadata accessor for IntervalWorkoutConfiguration();
    if (swift_dynamicCastClass() || (type metadata accessor for MultiSportWorkoutConfiguration(), swift_dynamicCastClass()) || (type metadata accessor for GoalWorkoutConfiguration(), swift_dynamicCastClass()) && (v102 = v37, v103 = GoalWorkoutConfiguration.goal.getter(), v104 = [v103 goalTypeIdentifier], v103, v102, !v104))
    {
      static Font.body.getter();
    }

    else
    {
      static Font.body.getter();
      Font.lowercaseSmallCaps()();
    }

    v54 = Text.font(_:)();
    v56 = v55;
    v58 = v57;

    outlined consume of Text.Storage(v49, v51, v53 & 1);

    ManagedConfigurationSourcePickerItem.viewModel.getter();
    v59 = dispatch thunk of ManagedConfigurationsViewModel.topSuggested.getter();

    if (v59)
    {
      WorkoutConfiguration.displayColor.getter();
      Color.init(uiColor:)();
    }

    else
    {
      static Color.secondary.getter();
    }

    v72 = Text.foregroundColor(_:)();
    v74 = v73;
    v76 = v75;
    v78 = v77;

    outlined consume of Text.Storage(v54, v56, v58 & 1);

    v79 = v108;
    v80 = &v108[*(v116 + 36)];
    v81 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI30_EnvironmentKeyWritingModifierVyAA5ImageV5ScaleOGMd) + 28);
    v82 = *MEMORY[0x277CE1050];
    v83 = type metadata accessor for Image.Scale();
    (*(*(v83 - 8) + 104))(v80 + v81, v82, v83);
    *v80 = swift_getKeyPath();
    *v79 = v72;
    *(v79 + 8) = v74;
    *(v79 + 16) = v76 & 1;
    *(v79 + 24) = v78;
    v84 = v109;
    _s7SwiftUI10_ShapeViewVyAA16RoundedRectangleVAA5ColorVGWObTm_0(v79, v109, &_s7SwiftUI15ModifiedContentVyAA4TextVAA30_EnvironmentKeyWritingModifierVyAA5ImageV5ScaleOGGMd);
    outlined init with copy of _ShapeView<RoundedRectangle, Color>?(v84, v118, &_s7SwiftUI15ModifiedContentVyAA4TextVAA30_EnvironmentKeyWritingModifierVyAA5ImageV5ScaleOGGMd);
    swift_storeEnumTagMultiPayload();
    lazy protocol witness table accessor for type ModifiedContent<Text, _EnvironmentKeyWritingModifier<Image.Scale>> and conformance <> ModifiedContent<A, B>();
    v85 = v119;
    _ConditionalContent<>.init(storage:)();

    outlined destroy of _ShapeView<RoundedRectangle, Color>?(v84, &_s7SwiftUI15ModifiedContentVyAA4TextVAA30_EnvironmentKeyWritingModifierVyAA5ImageV5ScaleOGGMd);
LABEL_18:
    v94 = v120;
    outlined init with copy of _ShapeView<RoundedRectangle, Color>?(v85, v120, &_s7SwiftUI19_ConditionalContentVyAA08ModifiedD0VyAA4TextVAA30_EnvironmentKeyWritingModifierVyAA5ImageV5ScaleOGGAGGMd);
    v95 = v121;
    v97 = v113;
    v96 = v114;
    *v121 = v114;
    v95[1] = v97;
    v98 = v111 & 1;
    *(v95 + 16) = v111 & 1;
    v99 = v112;
    v95[3] = v115;
    v95[4] = v99;
    v95[5] = 0xC000000000000000;
    v100 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyAA4TextVAA30_EnvironmentKeyWritingModifierVy12CoreGraphics7CGFloatVGG_AA012_ConditionalD0VyACyAeGyAA5ImageV5ScaleOGGAEGtMd);
    outlined init with copy of _ShapeView<RoundedRectangle, Color>?(v94, v95 + *(v100 + 48), &_s7SwiftUI19_ConditionalContentVyAA08ModifiedD0VyAA4TextVAA30_EnvironmentKeyWritingModifierVyAA5ImageV5ScaleOGGAGGMd);
    outlined copy of Text.Storage(v96, v97, v98);

    outlined destroy of _ShapeView<RoundedRectangle, Color>?(v85, &_s7SwiftUI19_ConditionalContentVyAA08ModifiedD0VyAA4TextVAA30_EnvironmentKeyWritingModifierVyAA5ImageV5ScaleOGGAGGMd);
    outlined destroy of _ShapeView<RoundedRectangle, Color>?(v94, &_s7SwiftUI19_ConditionalContentVyAA08ModifiedD0VyAA4TextVAA30_EnvironmentKeyWritingModifierVyAA5ImageV5ScaleOGGAGGMd);
    outlined consume of Text.Storage(v96, v97, v98);
  }

  type metadata accessor for FIUIFormattingManager();
  _s7SwiftUI16PlainButtonStyleVAcA09PrimitivedE0AAWlTm_8(&lazy protocol witness table cache variable for type FIUIFormattingManager and conformance FIUIFormattingManager, type metadata accessor for FIUIFormattingManager);
  result = EnvironmentObject.error()();
  __break(1u);
  return result;
}

uint64_t closure #3 in closure #1 in ManagedConfigurationViewiOS.body.getter(uint64_t a1)
{
  if (*(a1 + 24))
  {
    v5 = *a1;
    swift_getKeyPath();
    swift_getKeyPath();

    v1 = v5;
    v2 = static Published.subscript.modify();
    type metadata accessor for ManagedConfigurationSourcePickerItem();
    _s7SwiftUI16PlainButtonStyleVAcA09PrimitivedE0AAWlTm_8(&lazy protocol witness table cache variable for type ManagedConfigurationSourcePickerItem and conformance NSObject, MEMORY[0x277D7E6E8]);
    NavigationPath.append<A>(_:)();

    v2(v4, 0);
  }

  else
  {
    type metadata accessor for ConfigurationNavigationModel();
    _s7SwiftUI16PlainButtonStyleVAcA09PrimitivedE0AAWlTm_8(&lazy protocol witness table cache variable for type ConfigurationNavigationModel and conformance ConfigurationNavigationModel, type metadata accessor for ConfigurationNavigationModel);
    result = EnvironmentObject.error()();
    __break(1u);
  }

  return result;
}

uint64_t closure #4 in closure #1 in ManagedConfigurationViewiOS.body.getter@<X0>(uint64_t a1@<X8>)
{
  v62 = a1;
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI4FontV6DesignOSgMd);
  MEMORY[0x28223BE20](v1 - 8);
  v61 = &v52 - v2;
  v60 = type metadata accessor for Font.TextStyle();
  v59 = *(v60 - 8);
  MEMORY[0x28223BE20](v60);
  v58 = &v52 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v54 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyACyACyAA4TextVAA16_FlexFrameLayoutVGAA08_PaddingH0VGAA24_BackgroundStyleModifierVyAA015_BlendModeShapeK0VyAA5ColorVGGGMd);
  MEMORY[0x28223BE20](v54);
  v5 = &v52 - v4;
  v56 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyACyACyACyAA4TextVAA16_FlexFrameLayoutVGAA08_PaddingH0VGAA24_BackgroundStyleModifierVyAA015_BlendModeShapeK0VyAA5ColorVGGGAA022_EnvironmentKeyWritingL0VyAQSgGGMd);
  MEMORY[0x28223BE20](v56);
  v7 = &v52 - v6;
  v55 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyACyACyACyACyAA4TextVAA16_FlexFrameLayoutVGAA08_PaddingH0VGAA24_BackgroundStyleModifierVyAA015_BlendModeShapeK0VyAA5ColorVGGGAA022_EnvironmentKeyWritingL0VyAQSgGGAA11_ClipEffectVyAA16RoundedRectangleVGGMd);
  MEMORY[0x28223BE20](v55);
  v57 = &v52 - v8;
  LocalizedStringKey.init(stringLiteral:)();
  if (one-time initialization token for WorkoutUIBundle != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v9 = WorkoutUIBundle.super.isa;
  v53 = Text.init(_:tableName:bundle:comment:)();
  v52 = v10;
  v12 = v11;
  v14 = v13;
  static Alignment.center.getter();
  _FlexFrameLayout.init(minWidth:idealWidth:maxWidth:minHeight:idealHeight:maxHeight:alignment:)();
  v15 = v12 & 1;
  v70 = v12 & 1;
  v16 = static Edge.Set.all.getter();
  v71 = 1;
  static Color.white.getter();
  v17 = Color.opacity(_:)();

  v18 = &v5[*(v54 + 36)];
  v19 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI20_BlendModeShapeStyleVyAA5ColorVGMd) + 36);
  v20 = *MEMORY[0x277CE13F0];
  v21 = type metadata accessor for BlendMode();
  (*(*(v21 - 8) + 104))(v18 + v19, v20, v21);
  *v18 = v17;
  LOBYTE(v20) = static Edge.Set.all.getter();
  *(v18 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI24_BackgroundStyleModifierVyAA015_BlendModeShapeD0VyAA5ColorVGGMd) + 36)) = v20;
  v22 = v52;
  *v5 = v53;
  *(v5 + 1) = v22;
  v5[16] = v15;
  *(v5 + 3) = v14;
  v23 = v64;
  *(v5 + 2) = v63;
  *(v5 + 3) = v23;
  v24 = v69;
  v25 = v67;
  *(v5 + 7) = v68;
  *(v5 + 8) = v24;
  v26 = v66;
  *(v5 + 4) = v65;
  *(v5 + 5) = v26;
  *(v5 + 6) = v25;
  v5[144] = v16;
  *(v5 + 168) = 0u;
  *(v5 + 152) = 0u;
  v5[184] = 1;
  v27 = static Color.primary.getter();
  KeyPath = swift_getKeyPath();
  _s7SwiftUI10_ShapeViewVyAA16RoundedRectangleVAA5ColorVGWObTm_0(v5, v7, &_s7SwiftUI15ModifiedContentVyACyACyAA4TextVAA16_FlexFrameLayoutVGAA08_PaddingH0VGAA24_BackgroundStyleModifierVyAA015_BlendModeShapeK0VyAA5ColorVGGGMd);
  v29 = &v7[*(v56 + 36)];
  *v29 = KeyPath;
  v29[1] = v27;
  v30 = v57;
  v31 = &v57[*(v55 + 36)];
  v32 = *(type metadata accessor for RoundedRectangle() + 20);
  v33 = *MEMORY[0x277CE0118];
  v34 = type metadata accessor for RoundedCornerStyle();
  (*(*(v34 - 8) + 104))(&v31[v32], v33, v34);
  __asm { FMOV            V0.2D, #28.0 }

  *v31 = _Q0;
  *&v31[*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI11_ClipEffectVyAA16RoundedRectangleVGMd) + 36)] = 256;
  _s7SwiftUI10_ShapeViewVyAA16RoundedRectangleVAA5ColorVGWObTm_0(v7, v30, &_s7SwiftUI15ModifiedContentVyACyACyACyAA4TextVAA16_FlexFrameLayoutVGAA08_PaddingH0VGAA24_BackgroundStyleModifierVyAA015_BlendModeShapeK0VyAA5ColorVGGGAA022_EnvironmentKeyWritingL0VyAQSgGGMd);
  v40 = v59;
  v41 = v58;
  v42 = v60;
  (*(v59 + 104))(v58, *MEMORY[0x277CE0A68], v60);
  v43 = *MEMORY[0x277CE0990];
  v44 = type metadata accessor for Font.Design();
  v45 = *(v44 - 8);
  v46 = v61;
  (*(v45 + 104))(v61, v43, v44);
  (*(v45 + 56))(v46, 0, 1, v44);
  static Font.system(_:design:weight:)();
  outlined destroy of _ShapeView<RoundedRectangle, Color>?(v46, &_s7SwiftUI4FontV6DesignOSgMd);
  (*(v40 + 8))(v41, v42);
  static Font.Weight.semibold.getter();
  v47 = Font.weight(_:)();

  v48 = swift_getKeyPath();
  v49 = v62;
  _s7SwiftUI10_ShapeViewVyAA16RoundedRectangleVAA5ColorVGWObTm_0(v30, v62, &_s7SwiftUI15ModifiedContentVyACyACyACyACyAA4TextVAA16_FlexFrameLayoutVGAA08_PaddingH0VGAA24_BackgroundStyleModifierVyAA015_BlendModeShapeK0VyAA5ColorVGGGAA022_EnvironmentKeyWritingL0VyAQSgGGAA11_ClipEffectVyAA16RoundedRectangleVGGMd);
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyACyACyACyACyACyAA4TextVAA16_FlexFrameLayoutVGAA08_PaddingH0VGAA24_BackgroundStyleModifierVyAA015_BlendModeShapeK0VyAA5ColorVGGGAA022_EnvironmentKeyWritingL0VyAQSgGGAA11_ClipEffectVyAA16RoundedRectangleVGGAVyAA4FontVSgGGMd);
  v51 = (v49 + *(result + 36));
  *v51 = v48;
  v51[1] = v47;
  return result;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Text, _FlexFrameLayout>, _PaddingLayout>, _BackgroundStyleModifier<_BlendModeShapeStyle<Color>>>, _EnvironmentKeyWritingModifier<Color?>>, _ClipEffect<RoundedRectangle>>, _EnvironmentKeyWritingModifier<Font?>> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Text, _FlexFrameLayout>, _PaddingLayout>, _BackgroundStyleModifier<_BlendModeShapeStyle<Color>>>, _EnvironmentKeyWritingModifier<Color?>>, _ClipEffect<RoundedRectangle>>, _EnvironmentKeyWritingModifier<Font?>> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Text, _FlexFrameLayout>, _PaddingLayout>, _BackgroundStyleModifier<_BlendModeShapeStyle<Color>>>, _EnvironmentKeyWritingModifier<Color?>>, _ClipEffect<RoundedRectangle>>, _EnvironmentKeyWritingModifier<Font?>> and conformance <> ModifiedContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyACyACyACyACyACyAA4TextVAA16_FlexFrameLayoutVGAA08_PaddingH0VGAA24_BackgroundStyleModifierVyAA015_BlendModeShapeK0VyAA5ColorVGGGAA022_EnvironmentKeyWritingL0VyAQSgGGAA11_ClipEffectVyAA16RoundedRectangleVGGAVyAA4FontVSgGGMd);
    lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Text, _FlexFrameLayout>, _PaddingLayout>, _BackgroundStyleModifier<_BlendModeShapeStyle<Color>>>, _EnvironmentKeyWritingModifier<Color?>>, _ClipEffect<RoundedRectangle>> and conformance <> ModifiedContent<A, B>();
    lazy protocol witness table accessor for type _ShapeView<RoundedRectangle, Color> and conformance _ShapeView<A, B>(&lazy protocol witness table cache variable for type _EnvironmentKeyWritingModifier<Font?> and conformance _EnvironmentKeyWritingModifier<A>, &_s7SwiftUI30_EnvironmentKeyWritingModifierVyAA4FontVSgGMd);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Text, _FlexFrameLayout>, _PaddingLayout>, _BackgroundStyleModifier<_BlendModeShapeStyle<Color>>>, _EnvironmentKeyWritingModifier<Color?>>, _ClipEffect<RoundedRectangle>>, _EnvironmentKeyWritingModifier<Font?>> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Text, _FlexFrameLayout>, _PaddingLayout>, _BackgroundStyleModifier<_BlendModeShapeStyle<Color>>>, _EnvironmentKeyWritingModifier<Color?>>, _ClipEffect<RoundedRectangle>> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Text, _FlexFrameLayout>, _PaddingLayout>, _BackgroundStyleModifier<_BlendModeShapeStyle<Color>>>, _EnvironmentKeyWritingModifier<Color?>>, _ClipEffect<RoundedRectangle>> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Text, _FlexFrameLayout>, _PaddingLayout>, _BackgroundStyleModifier<_BlendModeShapeStyle<Color>>>, _EnvironmentKeyWritingModifier<Color?>>, _ClipEffect<RoundedRectangle>> and conformance <> ModifiedContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyACyACyACyACyAA4TextVAA16_FlexFrameLayoutVGAA08_PaddingH0VGAA24_BackgroundStyleModifierVyAA015_BlendModeShapeK0VyAA5ColorVGGGAA022_EnvironmentKeyWritingL0VyAQSgGGAA11_ClipEffectVyAA16RoundedRectangleVGGMd);
    lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Text, _FlexFrameLayout>, _PaddingLayout>, _BackgroundStyleModifier<_BlendModeShapeStyle<Color>>>, _EnvironmentKeyWritingModifier<Color?>> and conformance <> ModifiedContent<A, B>();
    lazy protocol witness table accessor for type _ShapeView<RoundedRectangle, Color> and conformance _ShapeView<A, B>(&lazy protocol witness table cache variable for type _ClipEffect<RoundedRectangle> and conformance _ClipEffect<A>, &_s7SwiftUI11_ClipEffectVyAA16RoundedRectangleVGMd);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Text, _FlexFrameLayout>, _PaddingLayout>, _BackgroundStyleModifier<_BlendModeShapeStyle<Color>>>, _EnvironmentKeyWritingModifier<Color?>>, _ClipEffect<RoundedRectangle>> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Text, _FlexFrameLayout>, _PaddingLayout>, _BackgroundStyleModifier<_BlendModeShapeStyle<Color>>>, _EnvironmentKeyWritingModifier<Color?>> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Text, _FlexFrameLayout>, _PaddingLayout>, _BackgroundStyleModifier<_BlendModeShapeStyle<Color>>>, _EnvironmentKeyWritingModifier<Color?>> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Text, _FlexFrameLayout>, _PaddingLayout>, _BackgroundStyleModifier<_BlendModeShapeStyle<Color>>>, _EnvironmentKeyWritingModifier<Color?>> and conformance <> ModifiedContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyACyACyACyAA4TextVAA16_FlexFrameLayoutVGAA08_PaddingH0VGAA24_BackgroundStyleModifierVyAA015_BlendModeShapeK0VyAA5ColorVGGGAA022_EnvironmentKeyWritingL0VyAQSgGGMd);
    lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<ModifiedContent<Text, _FlexFrameLayout>, _PaddingLayout>, _BackgroundStyleModifier<_BlendModeShapeStyle<Color>>> and conformance <> ModifiedContent<A, B>();
    lazy protocol witness table accessor for type _ShapeView<RoundedRectangle, Color> and conformance _ShapeView<A, B>(&lazy protocol witness table cache variable for type _EnvironmentKeyWritingModifier<Color?> and conformance _EnvironmentKeyWritingModifier<A>, &_s7SwiftUI30_EnvironmentKeyWritingModifierVyAA5ColorVSgGMd);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Text, _FlexFrameLayout>, _PaddingLayout>, _BackgroundStyleModifier<_BlendModeShapeStyle<Color>>>, _EnvironmentKeyWritingModifier<Color?>> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<ModifiedContent<Text, _FlexFrameLayout>, _PaddingLayout>, _BackgroundStyleModifier<_BlendModeShapeStyle<Color>>> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<Text, _FlexFrameLayout>, _PaddingLayout>, _BackgroundStyleModifier<_BlendModeShapeStyle<Color>>> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<Text, _FlexFrameLayout>, _PaddingLayout>, _BackgroundStyleModifier<_BlendModeShapeStyle<Color>>> and conformance <> ModifiedContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyACyACyAA4TextVAA16_FlexFrameLayoutVGAA08_PaddingH0VGAA24_BackgroundStyleModifierVyAA015_BlendModeShapeK0VyAA5ColorVGGGMd);
    lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<Text, _FlexFrameLayout>, _PaddingLayout> and conformance <> ModifiedContent<A, B>();
    lazy protocol witness table accessor for type _ShapeView<RoundedRectangle, Color> and conformance _ShapeView<A, B>(&lazy protocol witness table cache variable for type _BackgroundStyleModifier<_BlendModeShapeStyle<Color>> and conformance _BackgroundStyleModifier<A>, &_s7SwiftUI24_BackgroundStyleModifierVyAA015_BlendModeShapeD0VyAA5ColorVGGMd);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<Text, _FlexFrameLayout>, _PaddingLayout>, _BackgroundStyleModifier<_BlendModeShapeStyle<Color>>> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<Text, _FlexFrameLayout>, _PaddingLayout> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<Text, _FlexFrameLayout>, _PaddingLayout> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<Text, _FlexFrameLayout>, _PaddingLayout> and conformance <> ModifiedContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyACyAA4TextVAA16_FlexFrameLayoutVGAA08_PaddingH0VGMd);
    lazy protocol witness table accessor for type ModifiedContent<Text, _FlexFrameLayout> and conformance <> ModifiedContent<A, B>();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<Text, _FlexFrameLayout>, _PaddingLayout> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

uint64_t specialized ManagedConfigurationViewiOS.image(for:)()
{
  v0 = dispatch thunk of WorkoutConfiguration.activityType.getter();
  v1 = [v0 symbolName];

  if (v1)
  {
    static String._unconditionallyBridgeFromObjectiveC(_:)();
  }

  else
  {
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
  }

  return Image.init(_internalSystemName:)();
}

uint64_t _s7SwiftUI10_ShapeViewVyAA16RoundedRectangleVAA5ColorVGWObTm_0(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(a3);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t outlined init with copy of _ShapeView<RoundedRectangle, Color>?(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(a3);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t outlined destroy of _ShapeView<RoundedRectangle, Color>?(uint64_t a1, uint64_t *a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(a2);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t _s7SwiftUI16PlainButtonStyleVAcA09PrimitivedE0AAWlTm_8(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t outlined init with take of RoundedRectangle(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<ModifiedContent<VStack<TupleView<(HStack<TupleView<(ModifiedContent<Group<ModifiedContent<ModifiedContent<Image, _AspectRatioLayout>, _FrameLayout>?>, _FlexFrameLayout>, Spacer, StartButtonView?)>>, VStack<TupleView<(ModifiedContent<Text, _EnvironmentKeyWritingModifier<CGFloat>>, _ConditionalContent<ModifiedContent<Text, _EnvironmentKeyWritingModifier<Image.Scale>>, Text>)>>, <<opaque return type of View.buttonStyle<A>(_:)>>.0)>>, _TraitWritingModifier<ListRowInsetsTraitKey>>, _ContentShapeModifier<Rectangle>>, _TraitWritingModifier<ListRowBackgroundTraitKey>> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<VStack<TupleView<(HStack<TupleView<(ModifiedContent<Group<ModifiedContent<ModifiedContent<Image, _AspectRatioLayout>, _FrameLayout>?>, _FlexFrameLayout>, Spacer, StartButtonView?)>>, VStack<TupleView<(ModifiedContent<Text, _EnvironmentKeyWritingModifier<CGFloat>>, _ConditionalContent<ModifiedContent<Text, _EnvironmentKeyWritingModifier<Image.Scale>>, Text>)>>, <<opaque return type of View.buttonStyle<A>(_:)>>.0)>>, _TraitWritingModifier<ListRowInsetsTraitKey>>, _ContentShapeModifier<Rectangle>>, _TraitWritingModifier<ListRowBackgroundTraitKey>> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<VStack<TupleView<(HStack<TupleView<(ModifiedContent<Group<ModifiedContent<ModifiedContent<Image, _AspectRatioLayout>, _FrameLayout>?>, _FlexFrameLayout>, Spacer, StartButtonView?)>>, VStack<TupleView<(ModifiedContent<Text, _EnvironmentKeyWritingModifier<CGFloat>>, _ConditionalContent<ModifiedContent<Text, _EnvironmentKeyWritingModifier<Image.Scale>>, Text>)>>, <<opaque return type of View.buttonStyle<A>(_:)>>.0)>>, _TraitWritingModifier<ListRowInsetsTraitKey>>, _ContentShapeModifier<Rectangle>>, _TraitWritingModifier<ListRowBackgroundTraitKey>> and conformance <> ModifiedContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyACyACyAA6VStackVyAA9TupleViewVyAA6HStackVyAGyACyAA5GroupVyACyACyAA5ImageVAA18_AspectRatioLayoutVGAA06_FrameM0VGSgGAA05_FlexnM0VG_AA6SpacerV07WorkoutB0011StartButtonG0VSgtGG_AEyAGyACyAA4TextVAA30_EnvironmentKeyWritingModifierVy12CoreGraphics7CGFloatVGG_AA012_ConditionalD0VyACyA6_A8_yAM5ScaleOGGA6_GtGGAA0G0PAAE11buttonStyleyQrqd__AA09PrimitiveS5StyleRd__lFQOyAA0S0VyACyACyACyACyACyACyA6_AWGAA08_PaddingM0VGAA016_BackgroundStyleX0VyAA20_BlendModeShapeStyleVyAA5ColorVGGGA8_yA38_SgGGAA11_ClipEffectVyAA16RoundedRectangleVGGA8_yAA4FontVSgGGG_AA05PlainS5StyleVQo_tGGAA06_TraitwX0VyAA018ListRowInsetsTraitV0VGGAA01_d5ShapeX0VyAA9RectangleVGGA63_yAA022ListRowBackgroundTraitV0VGGMd);
    lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<VStack<TupleView<(HStack<TupleView<(ModifiedContent<Group<ModifiedContent<ModifiedContent<Image, _AspectRatioLayout>, _FrameLayout>?>, _FlexFrameLayout>, Spacer, StartButtonView?)>>, VStack<TupleView<(ModifiedContent<Text, _EnvironmentKeyWritingModifier<CGFloat>>, _ConditionalContent<ModifiedContent<Text, _EnvironmentKeyWritingModifier<Image.Scale>>, Text>)>>, <<opaque return type of View.buttonStyle<A>(_:)>>.0)>>, _TraitWritingModifier<ListRowInsetsTraitKey>>, _ContentShapeModifier<Rectangle>> and conformance <> ModifiedContent<A, B>();
    lazy protocol witness table accessor for type _ShapeView<RoundedRectangle, Color> and conformance _ShapeView<A, B>(&lazy protocol witness table cache variable for type _TraitWritingModifier<ListRowBackgroundTraitKey> and conformance _TraitWritingModifier<A>, &_s7SwiftUI21_TraitWritingModifierVyAA017ListRowBackgroundC3KeyVGMd);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<VStack<TupleView<(HStack<TupleView<(ModifiedContent<Group<ModifiedContent<ModifiedContent<Image, _AspectRatioLayout>, _FrameLayout>?>, _FlexFrameLayout>, Spacer, StartButtonView?)>>, VStack<TupleView<(ModifiedContent<Text, _EnvironmentKeyWritingModifier<CGFloat>>, _ConditionalContent<ModifiedContent<Text, _EnvironmentKeyWritingModifier<Image.Scale>>, Text>)>>, <<opaque return type of View.buttonStyle<A>(_:)>>.0)>>, _TraitWritingModifier<ListRowInsetsTraitKey>>, _ContentShapeModifier<Rectangle>>, _TraitWritingModifier<ListRowBackgroundTraitKey>> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<VStack<TupleView<(HStack<TupleView<(ModifiedContent<Group<ModifiedContent<ModifiedContent<Image, _AspectRatioLayout>, _FrameLayout>?>, _FlexFrameLayout>, Spacer, StartButtonView?)>>, VStack<TupleView<(ModifiedContent<Text, _EnvironmentKeyWritingModifier<CGFloat>>, _ConditionalContent<ModifiedContent<Text, _EnvironmentKeyWritingModifier<Image.Scale>>, Text>)>>, <<opaque return type of View.buttonStyle<A>(_:)>>.0)>>, _TraitWritingModifier<ListRowInsetsTraitKey>>, _ContentShapeModifier<Rectangle>> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<VStack<TupleView<(HStack<TupleView<(ModifiedContent<Group<ModifiedContent<ModifiedContent<Image, _AspectRatioLayout>, _FrameLayout>?>, _FlexFrameLayout>, Spacer, StartButtonView?)>>, VStack<TupleView<(ModifiedContent<Text, _EnvironmentKeyWritingModifier<CGFloat>>, _ConditionalContent<ModifiedContent<Text, _EnvironmentKeyWritingModifier<Image.Scale>>, Text>)>>, <<opaque return type of View.buttonStyle<A>(_:)>>.0)>>, _TraitWritingModifier<ListRowInsetsTraitKey>>, _ContentShapeModifier<Rectangle>> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<VStack<TupleView<(HStack<TupleView<(ModifiedContent<Group<ModifiedContent<ModifiedContent<Image, _AspectRatioLayout>, _FrameLayout>?>, _FlexFrameLayout>, Spacer, StartButtonView?)>>, VStack<TupleView<(ModifiedContent<Text, _EnvironmentKeyWritingModifier<CGFloat>>, _ConditionalContent<ModifiedContent<Text, _EnvironmentKeyWritingModifier<Image.Scale>>, Text>)>>, <<opaque return type of View.buttonStyle<A>(_:)>>.0)>>, _TraitWritingModifier<ListRowInsetsTraitKey>>, _ContentShapeModifier<Rectangle>> and conformance <> ModifiedContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyACyAA6VStackVyAA9TupleViewVyAA6HStackVyAGyACyAA5GroupVyACyACyAA5ImageVAA18_AspectRatioLayoutVGAA06_FrameM0VGSgGAA05_FlexnM0VG_AA6SpacerV07WorkoutB0011StartButtonG0VSgtGG_AEyAGyACyAA4TextVAA30_EnvironmentKeyWritingModifierVy12CoreGraphics7CGFloatVGG_AA012_ConditionalD0VyACyA6_A8_yAM5ScaleOGGA6_GtGGAA0G0PAAE11buttonStyleyQrqd__AA09PrimitiveS5StyleRd__lFQOyAA0S0VyACyACyACyACyACyACyA6_AWGAA08_PaddingM0VGAA016_BackgroundStyleX0VyAA20_BlendModeShapeStyleVyAA5ColorVGGGA8_yA38_SgGGAA11_ClipEffectVyAA16RoundedRectangleVGGA8_yAA4FontVSgGGG_AA05PlainS5StyleVQo_tGGAA06_TraitwX0VyAA018ListRowInsetsTraitV0VGGAA01_d5ShapeX0VyAA9RectangleVGGMd);
    lazy protocol witness table accessor for type ModifiedContent<VStack<TupleView<(HStack<TupleView<(ModifiedContent<Group<ModifiedContent<ModifiedContent<Image, _AspectRatioLayout>, _FrameLayout>?>, _FlexFrameLayout>, Spacer, StartButtonView?)>>, VStack<TupleView<(ModifiedContent<Text, _EnvironmentKeyWritingModifier<CGFloat>>, _ConditionalContent<ModifiedContent<Text, _EnvironmentKeyWritingModifier<Image.Scale>>, Text>)>>, <<opaque return type of View.buttonStyle<A>(_:)>>.0)>>, _TraitWritingModifier<ListRowInsetsTraitKey>> and conformance <> ModifiedContent<A, B>();
    lazy protocol witness table accessor for type _ShapeView<RoundedRectangle, Color> and conformance _ShapeView<A, B>(&lazy protocol witness table cache variable for type _ContentShapeModifier<Rectangle> and conformance _ContentShapeModifier<A>, &_s7SwiftUI21_ContentShapeModifierVyAA9RectangleVGMd);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<VStack<TupleView<(HStack<TupleView<(ModifiedContent<Group<ModifiedContent<ModifiedContent<Image, _AspectRatioLayout>, _FrameLayout>?>, _FlexFrameLayout>, Spacer, StartButtonView?)>>, VStack<TupleView<(ModifiedContent<Text, _EnvironmentKeyWritingModifier<CGFloat>>, _ConditionalContent<ModifiedContent<Text, _EnvironmentKeyWritingModifier<Image.Scale>>, Text>)>>, <<opaque return type of View.buttonStyle<A>(_:)>>.0)>>, _TraitWritingModifier<ListRowInsetsTraitKey>>, _ContentShapeModifier<Rectangle>> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<VStack<TupleView<(HStack<TupleView<(ModifiedContent<Group<ModifiedContent<ModifiedContent<Image, _AspectRatioLayout>, _FrameLayout>?>, _FlexFrameLayout>, Spacer, StartButtonView?)>>, VStack<TupleView<(ModifiedContent<Text, _EnvironmentKeyWritingModifier<CGFloat>>, _ConditionalContent<ModifiedContent<Text, _EnvironmentKeyWritingModifier<Image.Scale>>, Text>)>>, <<opaque return type of View.buttonStyle<A>(_:)>>.0)>>, _TraitWritingModifier<ListRowInsetsTraitKey>> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<VStack<TupleView<(HStack<TupleView<(ModifiedContent<Group<ModifiedContent<ModifiedContent<Image, _AspectRatioLayout>, _FrameLayout>?>, _FlexFrameLayout>, Spacer, StartButtonView?)>>, VStack<TupleView<(ModifiedContent<Text, _EnvironmentKeyWritingModifier<CGFloat>>, _ConditionalContent<ModifiedContent<Text, _EnvironmentKeyWritingModifier<Image.Scale>>, Text>)>>, <<opaque return type of View.buttonStyle<A>(_:)>>.0)>>, _TraitWritingModifier<ListRowInsetsTraitKey>> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<VStack<TupleView<(HStack<TupleView<(ModifiedContent<Group<ModifiedContent<ModifiedContent<Image, _AspectRatioLayout>, _FrameLayout>?>, _FlexFrameLayout>, Spacer, StartButtonView?)>>, VStack<TupleView<(ModifiedContent<Text, _EnvironmentKeyWritingModifier<CGFloat>>, _ConditionalContent<ModifiedContent<Text, _EnvironmentKeyWritingModifier<Image.Scale>>, Text>)>>, <<opaque return type of View.buttonStyle<A>(_:)>>.0)>>, _TraitWritingModifier<ListRowInsetsTraitKey>> and conformance <> ModifiedContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyAA6VStackVyAA9TupleViewVyAA6HStackVyAGyACyAA5GroupVyACyACyAA5ImageVAA18_AspectRatioLayoutVGAA06_FrameM0VGSgGAA05_FlexnM0VG_AA6SpacerV07WorkoutB0011StartButtonG0VSgtGG_AEyAGyACyAA4TextVAA30_EnvironmentKeyWritingModifierVy12CoreGraphics7CGFloatVGG_AA012_ConditionalD0VyACyA6_A8_yAM5ScaleOGGA6_GtGGAA0G0PAAE11buttonStyleyQrqd__AA09PrimitiveS5StyleRd__lFQOyAA0S0VyACyACyACyACyACyACyA6_AWGAA08_PaddingM0VGAA016_BackgroundStyleX0VyAA20_BlendModeShapeStyleVyAA5ColorVGGGA8_yA38_SgGGAA11_ClipEffectVyAA16RoundedRectangleVGGA8_yAA4FontVSgGGG_AA05PlainS5StyleVQo_tGGAA06_TraitwX0VyAA018ListRowInsetsTraitV0VGGMd);
    lazy protocol witness table accessor for type _ShapeView<RoundedRectangle, Color> and conformance _ShapeView<A, B>(&lazy protocol witness table cache variable for type VStack<TupleView<(HStack<TupleView<(ModifiedContent<Group<ModifiedContent<ModifiedContent<Image, _AspectRatioLayout>, _FrameLayout>?>, _FlexFrameLayout>, Spacer, StartButtonView?)>>, VStack<TupleView<(ModifiedContent<Text, _EnvironmentKeyWritingModifier<CGFloat>>, _ConditionalContent<ModifiedContent<Text, _EnvironmentKeyWritingModifier<Image.Scale>>, Text>)>>, <<opaque return type of View.buttonStyle<A>(_:)>>.0)>> and conformance VStack<A>, &_s7SwiftUI6VStackVyAA9TupleViewVyAA6HStackVyAEyAA15ModifiedContentVyAA5GroupVyAIyAIyAA5ImageVAA18_AspectRatioLayoutVGAA06_FrameM0VGSgGAA05_FlexnM0VG_AA6SpacerV07WorkoutB0011StartButtonE0VSgtGG_ACyAEyAIyAA4TextVAA30_EnvironmentKeyWritingModifierVy12CoreGraphics7CGFloatVGG_AA012_ConditionalH0VyAIyA6_A8_yAM5ScaleOGGA6_GtGGAA0E0PAAE11buttonStyleyQrqd__AA09PrimitiveS5StyleRd__lFQOyAA0S0VyAIyAIyAIyAIyAIyAIyA6_AWGAA08_PaddingM0VGAA016_BackgroundStyleX0VyAA20_BlendModeShapeStyleVyAA5ColorVGGGA8_yA38_SgGGAA11_ClipEffectVyAA16RoundedRectangleVGGA8_yAA4FontVSgGGG_AA05PlainS5StyleVQo_tGGMd);
    lazy protocol witness table accessor for type _ShapeView<RoundedRectangle, Color> and conformance _ShapeView<A, B>(&lazy protocol witness table cache variable for type _TraitWritingModifier<ListRowInsetsTraitKey> and conformance _TraitWritingModifier<A>, &_s7SwiftUI21_TraitWritingModifierVyAA013ListRowInsetsC3KeyVGMd);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<VStack<TupleView<(HStack<TupleView<(ModifiedContent<Group<ModifiedContent<ModifiedContent<Image, _AspectRatioLayout>, _FrameLayout>?>, _FlexFrameLayout>, Spacer, StartButtonView?)>>, VStack<TupleView<(ModifiedContent<Text, _EnvironmentKeyWritingModifier<CGFloat>>, _ConditionalContent<ModifiedContent<Text, _EnvironmentKeyWritingModifier<Image.Scale>>, Text>)>>, <<opaque return type of View.buttonStyle<A>(_:)>>.0)>>, _TraitWritingModifier<ListRowInsetsTraitKey>> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

uint64_t lazy protocol witness table accessor for type _ShapeView<RoundedRectangle, Color> and conformance _ShapeView<A, B>(unint64_t *a1, uint64_t *a2)
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

uint64_t HorizontalMetricRow.init(metrics:)@<X0>(uint64_t result@<X0>, void *a2@<X8>)
{
  *a2 = result;
  a2[1] = 0x3FD6666666666666;
  return result;
}

uint64_t HorizontalMetricRow.body.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  v4 = *(v1 + 1);
  *a1 = static VerticalAlignment.top.getter();
  *(a1 + 8) = 0;
  *(a1 + 16) = 1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI13_VariadicViewO4TreeVy_AA13_HStackLayoutVAA05TupleD0VyAA6SpacerVSg_AA7ForEachVySaySi6offset_11WorkoutCore11MetricValueV7elementtGArIyAL_AA0D0PAAE20accessibilityElement8childrenQrAA26AccessibilityChildBehaviorV_tFQOyAA15ModifiedContentVyAA6VStackVyAIyA0_yA0_yAA4TextV0mB00oP4FontVGAA24_ForegroundStyleModifierVyAA5ColorVGG_AA012_ConditionalY0VyA0_yA0_yA4_A5_0O8UnitFontVGA13_GAvAE0R5Label7contentQrqd__AA011PlaceholderyD0VyxGXE_tAaURd__lFQOyA0_yA0_yAA5ImageVAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGA13_G_A16_yA4_A24_yA35_GGQo_GSgtGGA29_yAA0Y10TransitionVGG_Qo_tGGALtGGMd);
  return closure #1 in HorizontalMetricRow.body.getter(v3, a1 + *(v5 + 44), v4);
}

uint64_t closure #1 in HorizontalMetricRow.body.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>, double a3@<D0>)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI7ForEachVySaySi6offset_11WorkoutCore11MetricValueV7elementtGAgA9TupleViewVyAA6SpacerVSg_AA0L0PAAE20accessibilityElement8childrenQrAA26AccessibilityChildBehaviorV_tFQOyAA15ModifiedContentVyAA6VStackVyAKyAVyAVyAA4TextV0fB00hI4FontVGAA24_ForegroundStyleModifierVyAA5ColorVGG_AA012_ConditionalU0VyAVyAVyAZA_0h4UnitX0VGA7_GApAE0N5Label7contentQrqd__AA011PlaceholderuL0VyxGXE_tAaORd__lFQOyAVyAVyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAA0X0VSgGGA7_G_A10_yAZA18_yA29_GGQo_GSgtGGA23_yAA0U10TransitionVGG_Qo_tGGMd);
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v27 = v24 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v11 = v24 - v10;
  v12 = *(a1 + 16);
  v25 = v12 < 4;
  v26 = v12 > 3;
  specialized _copySequenceToContiguousArray<A>(_:)(a1);
  v28 = v13;
  v24[2] = swift_getKeyPath();
  v14 = swift_allocObject();
  *(v14 + 16) = a1;
  *(v14 + 24) = a3;
  v15 = swift_allocObject();
  *(v15 + 16) = partial apply for closure #1 in closure #1 in HorizontalMetricRow.body.getter;
  *(v15 + 24) = v14;

  v24[1] = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySi6offset_11WorkoutCore11MetricValueV7elementtGMd);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI9TupleViewVyAA6SpacerVSg_AA0D0PAAE20accessibilityElement8childrenQrAA26AccessibilityChildBehaviorV_tFQOyAA15ModifiedContentVyAA6VStackVyACyANyANyAA4TextV07WorkoutB015MetricValueFontVGAA24_ForegroundStyleModifierVyAA5ColorVGG_AA012_ConditionalM0VyANyANyArS0q4UnitS0VGA_GAhAE0F5Label7contentQrqd__AA011PlaceholdermD0VyxGXE_tAaGRd__lFQOyANyANyAA5ImageVAA022_EnvironmentKeyWritingV0VyAA0S0VSgGGA_G_A2_yARA10_yA21_GGQo_GSgtGGA15_yAA0M10TransitionVGG_Qo_tGMd);
  lazy protocol witness table accessor for type HStack<TupleView<(Spacer?, ForEach<[(offset: Int, element: MetricValue)], MetricValue, TupleView<(Spacer?, <<opaque return type of View.accessibilityElement(children:)>>.0)>>, Spacer?)>> and conformance HStack<A>(&lazy protocol witness table cache variable for type [(offset: Int, element: MetricValue)] and conformance [A], &_sSaySi6offset_11WorkoutCore11MetricValueV7elementtGMd);
  lazy protocol witness table accessor for type MetricValue and conformance MetricValue();
  lazy protocol witness table accessor for type HStack<TupleView<(Spacer?, ForEach<[(offset: Int, element: MetricValue)], MetricValue, TupleView<(Spacer?, <<opaque return type of View.accessibilityElement(children:)>>.0)>>, Spacer?)>> and conformance HStack<A>(&lazy protocol witness table cache variable for type TupleView<(Spacer?, <<opaque return type of View.accessibilityElement(children:)>>.0)> and conformance TupleView<A>, &_s7SwiftUI9TupleViewVyAA6SpacerVSg_AA0D0PAAE20accessibilityElement8childrenQrAA26AccessibilityChildBehaviorV_tFQOyAA15ModifiedContentVyAA6VStackVyACyANyANyAA4TextV07WorkoutB015MetricValueFontVGAA24_ForegroundStyleModifierVyAA5ColorVGG_AA012_ConditionalM0VyANyANyArS0q4UnitS0VGA_GAhAE0F5Label7contentQrqd__AA011PlaceholdermD0VyxGXE_tAaGRd__lFQOyANyANyAA5ImageVAA022_EnvironmentKeyWritingV0VyAA0S0VSgGGA_G_A2_yARA10_yA21_GGQo_GSgtGGA15_yAA0M10TransitionVGG_Qo_tGMd);
  ForEach<>.init(_:id:content:)();
  v16 = *(v7 + 16);
  v17 = v27;
  v16(v27, v11, v6);
  *a2 = 0;
  v19 = v25;
  v18 = v26;
  *(a2 + 8) = v25;
  *(a2 + 9) = v18;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI6SpacerVSg_AA7ForEachVySaySi6offset_11WorkoutCore11MetricValueV7elementtGAjA9TupleViewVyAD_AA0M0PAAE20accessibilityElement8childrenQrAA26AccessibilityChildBehaviorV_tFQOyAA15ModifiedContentVyAA6VStackVyANyAVyAVyAA4TextV0gB00iJ4FontVGAA24_ForegroundStyleModifierVyAA5ColorVGG_AA012_ConditionalU0VyAVyAVyAZA_0i4UnitX0VGA7_GApAE0N5Label7contentQrqd__AA011PlaceholderuM0VyxGXE_tAaORd__lFQOyAVyAVyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAA0X0VSgGGA7_G_A10_yAZA18_yA29_GGQo_GSgtGGA23_yAA0U10TransitionVGG_Qo_tGGADtMd);
  v16((a2 + *(v20 + 48)), v17, v6);
  v21 = a2 + *(v20 + 64);
  *v21 = 0;
  *(v21 + 8) = v19;
  *(v21 + 9) = v18;
  v22 = *(v7 + 8);
  v22(v11, v6);
  return (v22)(v17, v6);
}

uint64_t closure #1 in closure #1 in HorizontalMetricRow.body.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v28 = a2;
  v29 = a3;
  v30 = type metadata accessor for AccessibilityChildBehavior();
  v6 = *(v30 - 8);
  MEMORY[0x28223BE20](v30);
  v8 = &v26 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyAA6VStackVyAA9TupleViewVyACyACyAA4TextV07WorkoutB015MetricValueFontVGAA24_ForegroundStyleModifierVyAA5ColorVGG_AA012_ConditionalD0VyACyACyAiJ0j4UnitL0VGARGAA0G0PAAE18accessibilityLabel7contentQrqd__AA011PlaceholderdG0VyxGXE_tAaZRd__lFQOyACyACyAA5ImageVAA022_EnvironmentKeyWritingO0VyAA0L0VSgGGARG_AUyAIA3_yA14_GGQo_GSgtGGA8_yAA0D10TransitionVGGMd);
  MEMORY[0x28223BE20](v9);
  v11 = &v26 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI4ViewPAAE20accessibilityElement8childrenQrAA26AccessibilityChildBehaviorV_tFQOyAA15ModifiedContentVyAA6VStackVyAA05TupleC0VyAIyAIyAA4TextV07WorkoutB015MetricValueFontVGAA24_ForegroundStyleModifierVyAA5ColorVGG_AA012_ConditionalK0VyAIyAIyAoP0p4UnitR0VGAXGAcAE0D5Label7contentQrqd__AA011PlaceholderkC0VyxGXE_tAaBRd__lFQOyAIyAIyAA5ImageVAA022_EnvironmentKeyWritingU0VyAA0R0VSgGGAXG_A_yAOA7_yA18_GGQo_GSgtGGA12_yAA0K10TransitionVGG_Qo_Md);
  v13 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v15 = &v26 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v18 = &v26 - v17;
  v26 = a1 > 0;
  v27 = a1 < 1;
  *v11 = static HorizontalAlignment.center.getter();
  *(v11 + 1) = 0;
  v11[16] = 1;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI13_VariadicViewO4TreeVy_AA13_VStackLayoutVAA05TupleD0VyAA15ModifiedContentVyAKyAA4TextV07WorkoutB015MetricValueFontVGAA24_ForegroundStyleModifierVyAA5ColorVGG_AA012_ConditionalJ0VyAKyAKyAmN0m4UnitO0VGAVGAA0D0PAAE18accessibilityLabel7contentQrqd__AA011PlaceholderjD0VyxGXE_tAAA2_Rd__lFQOyAKyAKyAA5ImageVAA022_EnvironmentKeyWritingR0VyAA0O0VSgGGAVG_AYyAMA7_yA18_GGQo_GSgtGGMd);
  closure #1 in closure #1 in closure #1 in HorizontalMetricRow.body.getter(v28, &v11[*(v19 + 44)]);
  v20 = &v11[*(v9 + 36)];
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI30_EnvironmentKeyWritingModifierVyAA17ContentTransitionVGMd);
  static ContentTransition.identity.getter();
  *v20 = swift_getKeyPath();
  static AccessibilityChildBehavior.combine.getter();
  lazy protocol witness table accessor for type ModifiedContent<VStack<TupleView<(ModifiedContent<ModifiedContent<Text, MetricValueFont>, _ForegroundStyleModifier<Color>>, _ConditionalContent<ModifiedContent<ModifiedContent<Text, MetricUnitFont>, _ForegroundStyleModifier<Color>>, <<opaque return type of View.accessibilityLabel<A>(content:)>>.0>?)>>, _EnvironmentKeyWritingModifier<ContentTransition>> and conformance <> ModifiedContent<A, B>();
  View.accessibilityElement(children:)();
  (*(v6 + 8))(v8, v30);
  outlined destroy of ModifiedContent<VStack<TupleView<(ModifiedContent<ModifiedContent<Text, MetricValueFont>, _ForegroundStyleModifier<Color>>, _ConditionalContent<ModifiedContent<ModifiedContent<Text, MetricUnitFont>, _ForegroundStyleModifier<Color>>, <<opaque return type of View.accessibilityLabel<A>(content:)>>.0>?)>>, _EnvironmentKeyWritingModifier<ContentTransition>>(v11, &_s7SwiftUI15ModifiedContentVyAA6VStackVyAA9TupleViewVyACyACyAA4TextV07WorkoutB015MetricValueFontVGAA24_ForegroundStyleModifierVyAA5ColorVGG_AA012_ConditionalD0VyACyACyAiJ0j4UnitL0VGARGAA0G0PAAE18accessibilityLabel7contentQrqd__AA011PlaceholderdG0VyxGXE_tAaZRd__lFQOyACyACyAA5ImageVAA022_EnvironmentKeyWritingO0VyAA0L0VSgGGARG_AUyAIA3_yA14_GGQo_GSgtGGA8_yAA0D10TransitionVGGMd);
  v21 = *(v13 + 16);
  v21(v15, v18, v12);
  *a4 = 0;
  v22 = v27;
  *(a4 + 8) = v26;
  *(a4 + 9) = v22;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI6SpacerVSg_AA4ViewPAAE20accessibilityElement8childrenQrAA26AccessibilityChildBehaviorV_tFQOyAA15ModifiedContentVyAA6VStackVyAA05TupleD0VyALyALyAA4TextV07WorkoutB015MetricValueFontVGAA24_ForegroundStyleModifierVyAA5ColorVGG_AA012_ConditionalL0VyALyALyArS0q4UnitS0VGA_GAfAE0E5Label7contentQrqd__AA011PlaceholderlD0VyxGXE_tAaERd__lFQOyALyALyAA5ImageVAA022_EnvironmentKeyWritingV0VyAA0S0VSgGGA_G_A2_yARA10_yA21_GGQo_GSgtGGA15_yAA0L10TransitionVGG_Qo_tMd);
  v21((a4 + *(v23 + 48)), v15, v12);
  v24 = *(v13 + 8);
  v24(v18, v12);
  return (v24)(v15, v12);
}

uint64_t closure #1 in closure #1 in closure #1 in HorizontalMetricRow.body.getter@<X0>(uint64_t a1@<X0>, _OWORD *a2@<X8>)
{
  v73 = a2;
  v3 = type metadata accessor for Font.PrivateDesign();
  v72 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v5 = &v63 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI4ViewPAAE18accessibilityLabel7contentQrqd__AA018PlaceholderContentC0VyxGXE_tAaBRd__lFQOyAA08ModifiedH0VyAJyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGAA016_ForegroundStyleN0VyAA5ColorVGG_AA012_ConditionalH0VyAA4TextVAGyAYGGQo_Md);
  v71 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v8 = &v63 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI19_ConditionalContentV7StorageOyAA08ModifiedD0VyAGyAA4TextV07WorkoutB014MetricUnitFontVGAA24_ForegroundStyleModifierVyAA5ColorVGGAA4ViewPAAE18accessibilityLabel7contentQrqd__AA011PlaceholderdP0VyxGXE_tAaTRd__lFQOyAGyAGyAA5ImageVAA022_EnvironmentKeyWritingN0VyAA0K0VSgGGARG_ACyAiYyA8_GGQo__GMd);
  MEMORY[0x28223BE20](v9);
  v11 = &v63 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI19_ConditionalContentVyAA08ModifiedD0VyAEyAA4TextV07WorkoutB014MetricUnitFontVGAA24_ForegroundStyleModifierVyAA5ColorVGGAA4ViewPAAE18accessibilityLabel7contentQrqd__AA011PlaceholderdO0VyxGXE_tAaRRd__lFQOyAEyAEyAA5ImageVAA022_EnvironmentKeyWritingM0VyAA0J0VSgGGAPG_ACyAgWyA6_GGQo_GSgMd);
  MEMORY[0x28223BE20](v12 - 8);
  v74 = &v63 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v16 = &v63 - v15;
  v85 = MetricValue.formattedValue.getter();
  v86 = v17;
  lazy protocol witness table accessor for type String and conformance String();
  v78 = Text.init<A>(_:)();
  v77 = v18;
  v20 = v19;
  v80 = v21;
  KeyPath = swift_getKeyPath();
  v76 = v20 & 1;
  v101 = v20 & 1;
  v100 = 0;
  static Color.white.getter();
  MetricValue.stale.getter();
  v75 = Color.opacity(_:)();

  v22 = MetricValue.formattedUnit.getter();
  if (v23)
  {
    v85 = v22;
    v86 = v23;
    v24 = Text.init<A>(_:)();
    v26 = v25;
    v28 = v27;
    v30 = v29;
    v31 = swift_getKeyPath();
    v32 = static Color.white.getter();
    *v11 = v24;
    *(v11 + 1) = v26;
    v11[16] = v28 & 1;
    *(v11 + 3) = v30;
    *(v11 + 4) = v31;
    v11[40] = 0;
    *(v11 + 6) = v32;
    swift_storeEnumTagMultiPayload();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyACyAA4TextV07WorkoutB014MetricUnitFontVGAA24_ForegroundStyleModifierVyAA5ColorVGGMd);
    lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<Text, MetricUnitFont>, _ForegroundStyleModifier<Color>> and conformance <> ModifiedContent<A, B>(&lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<Text, MetricUnitFont>, _ForegroundStyleModifier<Color>> and conformance <> ModifiedContent<A, B>, &_s7SwiftUI15ModifiedContentVyACyAA4TextV07WorkoutB014MetricUnitFontVGAA24_ForegroundStyleModifierVyAA5ColorVGGMd, &_s7SwiftUI15ModifiedContentVyACyAA4TextV07WorkoutB014MetricUnitFontVGAA24_ForegroundStyleModifierVyAA5ColorVGGMR, lazy protocol witness table accessor for type ModifiedContent<Text, MetricUnitFont> and conformance <> ModifiedContent<A, B>);
    v33 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyACyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGAA016_ForegroundStyleI0VyAA5ColorVGGMd);
    v34 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI19_ConditionalContentVyAA4TextVAA011PlaceholderD4ViewVyAA08ModifiedD0VyAIyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGAA016_ForegroundStyleM0VyAA5ColorVGGGGMd);
    v35 = lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<Text, MetricUnitFont>, _ForegroundStyleModifier<Color>> and conformance <> ModifiedContent<A, B>(&lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Font?>>, _ForegroundStyleModifier<Color>> and conformance <> ModifiedContent<A, B>, &_s7SwiftUI15ModifiedContentVyACyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGAA016_ForegroundStyleI0VyAA5ColorVGGMd, &_s7SwiftUI15ModifiedContentVyACyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGAA016_ForegroundStyleI0VyAA5ColorVGGMR, lazy protocol witness table accessor for type ModifiedContent<Image, _EnvironmentKeyWritingModifier<Font?>> and conformance <> ModifiedContent<A, B>);
    v36 = lazy protocol witness table accessor for type _ConditionalContent<Text, PlaceholderContentView<ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Font?>>, _ForegroundStyleModifier<Color>>>> and conformance <> _ConditionalContent<A, B>();
    v85 = v33;
    v86 = v34;
    v87 = v35;
    v88 = v36;
    swift_getOpaqueTypeConformance2();
    _ConditionalContent<>.init(storage:)();
  }

  else
  {
    v37 = v72;
    v69 = v9;
    v38 = v8;
    v70 = v6;
    MetricValue.symbol.getter();
    if (!v39)
    {
      v48 = 1;
      goto LABEL_6;
    }

    v40 = Image.init(systemName:)();
    v68 = v40;
    specialized static LayoutUtilities.layoutMetric(regular42:)(16.0);
    static Font.Weight.semibold.getter();
    static Font.PrivateDesign.compactRounded.getter();
    v41 = static Font.system(size:weight:design:)();
    v66 = v41;
    (*(v37 + 8))(v5, v3);
    v42 = swift_getKeyPath();
    v67 = v42;
    v43 = static Color.red.getter();
    v72 = &v63;
    v85 = v40;
    v86 = v42;
    v87 = v41;
    v88 = v43;
    MEMORY[0x28223BE20](v43);
    *(&v63 - 2) = a1;
    v65 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyACyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGAA016_ForegroundStyleI0VyAA5ColorVGGMd);
    v64 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI19_ConditionalContentVyAA4TextVAA011PlaceholderD4ViewVyAA08ModifiedD0VyAIyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGAA016_ForegroundStyleM0VyAA5ColorVGGGGMd);
    v44 = lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<Text, MetricUnitFont>, _ForegroundStyleModifier<Color>> and conformance <> ModifiedContent<A, B>(&lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Font?>>, _ForegroundStyleModifier<Color>> and conformance <> ModifiedContent<A, B>, &_s7SwiftUI15ModifiedContentVyACyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGAA016_ForegroundStyleI0VyAA5ColorVGGMd, &_s7SwiftUI15ModifiedContentVyACyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGAA016_ForegroundStyleI0VyAA5ColorVGGMR, lazy protocol witness table accessor for type ModifiedContent<Image, _EnvironmentKeyWritingModifier<Font?>> and conformance <> ModifiedContent<A, B>);
    v45 = lazy protocol witness table accessor for type _ConditionalContent<Text, PlaceholderContentView<ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Font?>>, _ForegroundStyleModifier<Color>>>> and conformance <> _ConditionalContent<A, B>();
    View.accessibilityLabel<A>(content:)();

    v46 = v71;
    v47 = v70;
    (*(v71 + 16))(v11, v38, v70);
    swift_storeEnumTagMultiPayload();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyACyAA4TextV07WorkoutB014MetricUnitFontVGAA24_ForegroundStyleModifierVyAA5ColorVGGMd);
    lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<Text, MetricUnitFont>, _ForegroundStyleModifier<Color>> and conformance <> ModifiedContent<A, B>(&lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<Text, MetricUnitFont>, _ForegroundStyleModifier<Color>> and conformance <> ModifiedContent<A, B>, &_s7SwiftUI15ModifiedContentVyACyAA4TextV07WorkoutB014MetricUnitFontVGAA24_ForegroundStyleModifierVyAA5ColorVGGMd, &_s7SwiftUI15ModifiedContentVyACyAA4TextV07WorkoutB014MetricUnitFontVGAA24_ForegroundStyleModifierVyAA5ColorVGGMR, lazy protocol witness table accessor for type ModifiedContent<Text, MetricUnitFont> and conformance <> ModifiedContent<A, B>);
    v85 = v65;
    v86 = v64;
    v87 = v44;
    v88 = v45;
    swift_getOpaqueTypeConformance2();
    _ConditionalContent<>.init(storage:)();
    (*(v46 + 8))(v38, v47);
  }

  v48 = 0;
LABEL_6:
  v49 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI19_ConditionalContentVyAA08ModifiedD0VyAEyAA4TextV07WorkoutB014MetricUnitFontVGAA24_ForegroundStyleModifierVyAA5ColorVGGAA4ViewPAAE18accessibilityLabel7contentQrqd__AA011PlaceholderdO0VyxGXE_tAaRRd__lFQOyAEyAEyAA5ImageVAA022_EnvironmentKeyWritingM0VyAA0J0VSgGGAPG_ACyAgWyA6_GGQo_GMd);
  (*(*(v49 - 8) + 56))(v16, v48, 1, v49);
  v50 = v74;
  sub_20C69A1B4(v16, v74);
  v51 = v78;
  *&v81 = v78;
  v52 = v77;
  *(&v81 + 1) = v77;
  v72 = v16;
  v53 = v76;
  LOBYTE(v82) = v76;
  *(&v82 + 1) = *v99;
  DWORD1(v82) = *&v99[3];
  v54 = v80;
  *(&v82 + 1) = v80;
  LOWORD(v83) = 256;
  *(&v83 + 2) = v97;
  WORD3(v83) = v98;
  v55 = KeyPath;
  *(&v83 + 1) = KeyPath;
  LOBYTE(v84) = 0;
  DWORD1(v84) = *&v96[3];
  *(&v84 + 1) = *v96;
  v56 = v75;
  *(&v84 + 1) = v75;
  v57 = v81;
  v58 = v82;
  v59 = v84;
  v60 = v73;
  v73[2] = v83;
  v60[3] = v59;
  *v60 = v57;
  v60[1] = v58;
  v61 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyACyAA4TextV07WorkoutB015MetricValueFontVGAA24_ForegroundStyleModifierVyAA5ColorVGG_AA012_ConditionalD0VyACyACyAeF0g4UnitI0VGANGAA4ViewPAAE18accessibilityLabel7contentQrqd__AA011PlaceholderdP0VyxGXE_tAaVRd__lFQOyACyACyAA5ImageVAA022_EnvironmentKeyWritingL0VyAA0I0VSgGGANG_AQyAEA_yA10_GGQo_GSgtMd);
  sub_20C69A1B4(v50, v60 + *(v61 + 48));
  outlined init with copy of ModifiedContent<ModifiedContent<Text, MetricValueFont>, _ForegroundStyleModifier<Color>>(&v81, &v85);
  outlined destroy of ModifiedContent<VStack<TupleView<(ModifiedContent<ModifiedContent<Text, MetricValueFont>, _ForegroundStyleModifier<Color>>, _ConditionalContent<ModifiedContent<ModifiedContent<Text, MetricUnitFont>, _ForegroundStyleModifier<Color>>, <<opaque return type of View.accessibilityLabel<A>(content:)>>.0>?)>>, _EnvironmentKeyWritingModifier<ContentTransition>>(v72, &_s7SwiftUI19_ConditionalContentVyAA08ModifiedD0VyAEyAA4TextV07WorkoutB014MetricUnitFontVGAA24_ForegroundStyleModifierVyAA5ColorVGGAA4ViewPAAE18accessibilityLabel7contentQrqd__AA011PlaceholderdO0VyxGXE_tAaRRd__lFQOyAEyAEyAA5ImageVAA022_EnvironmentKeyWritingM0VyAA0J0VSgGGAPG_ACyAgWyA6_GGQo_GSgMd);
  outlined destroy of ModifiedContent<VStack<TupleView<(ModifiedContent<ModifiedContent<Text, MetricValueFont>, _ForegroundStyleModifier<Color>>, _ConditionalContent<ModifiedContent<ModifiedContent<Text, MetricUnitFont>, _ForegroundStyleModifier<Color>>, <<opaque return type of View.accessibilityLabel<A>(content:)>>.0>?)>>, _EnvironmentKeyWritingModifier<ContentTransition>>(v50, &_s7SwiftUI19_ConditionalContentVyAA08ModifiedD0VyAEyAA4TextV07WorkoutB014MetricUnitFontVGAA24_ForegroundStyleModifierVyAA5ColorVGGAA4ViewPAAE18accessibilityLabel7contentQrqd__AA011PlaceholderdO0VyxGXE_tAaRRd__lFQOyAEyAEyAA5ImageVAA022_EnvironmentKeyWritingM0VyAA0J0VSgGGAPG_ACyAgWyA6_GGQo_GSgMd);
  v85 = v51;
  v86 = v52;
  LOBYTE(v87) = v53;
  *(&v87 + 1) = *v99;
  HIDWORD(v87) = *&v99[3];
  v88 = v54;
  v89 = 256;
  v90 = v97;
  v91 = v98;
  v92 = v55;
  v93 = 0;
  *v94 = *v96;
  *&v94[3] = *&v96[3];
  v95 = v56;
  return outlined destroy of ModifiedContent<ModifiedContent<Text, MetricValueFont>, _ForegroundStyleModifier<Color>>(&v85);
}

uint64_t closure #1 in closure #1 in closure #1 in closure #1 in HorizontalMetricRow.body.getter(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI19_ConditionalContentV7StorageOyAA4TextVAA011PlaceholderD4ViewVyAA08ModifiedD0VyAKyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGAA016_ForegroundStyleN0VyAA5ColorVGGG_GMd);
  MEMORY[0x28223BE20](v2);
  v4 = v12 - v3;
  v5 = MetricValue.symbolAXLabel.getter();
  if (v6)
  {
    v12[0] = v5;
    v12[1] = v6;
    lazy protocol witness table accessor for type String and conformance String();
    *v4 = Text.init<A>(_:)();
    *(v4 + 1) = v7;
    v4[16] = v8 & 1;
    *(v4 + 3) = v9;
    swift_storeEnumTagMultiPayload();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI22PlaceholderContentViewVyAA08ModifiedD0VyAEyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGAA016_ForegroundStyleK0VyAA5ColorVGGGMd);
  }

  else
  {
    v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI22PlaceholderContentViewVyAA08ModifiedD0VyAEyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGAA016_ForegroundStyleK0VyAA5ColorVGGGMd);
    (*(*(v10 - 8) + 16))(v4, a1, v10);
    swift_storeEnumTagMultiPayload();
  }

  lazy protocol witness table accessor for type HStack<TupleView<(Spacer?, ForEach<[(offset: Int, element: MetricValue)], MetricValue, TupleView<(Spacer?, <<opaque return type of View.accessibilityElement(children:)>>.0)>>, Spacer?)>> and conformance HStack<A>(&lazy protocol witness table cache variable for type PlaceholderContentView<ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Font?>>, _ForegroundStyleModifier<Color>>> and conformance PlaceholderContentView<A>, &_s7SwiftUI22PlaceholderContentViewVyAA08ModifiedD0VyAEyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGAA016_ForegroundStyleK0VyAA5ColorVGGGMd);
  return _ConditionalContent<>.init(storage:)();
}

uint64_t protocol witness for View.body.getter in conformance HorizontalMetricRow@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  v4 = *(v1 + 1);
  *a1 = static VerticalAlignment.top.getter();
  *(a1 + 8) = 0;
  *(a1 + 16) = 1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI13_VariadicViewO4TreeVy_AA13_HStackLayoutVAA05TupleD0VyAA6SpacerVSg_AA7ForEachVySaySi6offset_11WorkoutCore11MetricValueV7elementtGArIyAL_AA0D0PAAE20accessibilityElement8childrenQrAA26AccessibilityChildBehaviorV_tFQOyAA15ModifiedContentVyAA6VStackVyAIyA0_yA0_yAA4TextV0mB00oP4FontVGAA24_ForegroundStyleModifierVyAA5ColorVGG_AA012_ConditionalY0VyA0_yA0_yA4_A5_0O8UnitFontVGA13_GAvAE0R5Label7contentQrqd__AA011PlaceholderyD0VyxGXE_tAaURd__lFQOyA0_yA0_yAA5ImageVAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGA13_G_A16_yA4_A24_yA35_GGQo_GSgtGGA29_yAA0Y10TransitionVGG_Qo_tGGALtGGMd);
  return closure #1 in HorizontalMetricRow.body.getter(v3, a1 + *(v5 + 44), v4);
}

uint64_t getEnumTagSinglePayload for HorizontalMetricRow(uint64_t *a1, int a2)
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

uint64_t storeEnumTagSinglePayload for HorizontalMetricRow(uint64_t result, int a2, int a3)
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

uint64_t partial apply for thunk for @escaping @callee_guaranteed (@unowned Int, @in_guaranteed MetricValue) -> (@out TupleView<(Spacer?, <<opaque return type of View.accessibilityElement(children:)>>.0)>)(char *a1)
{
  v3 = *(v1 + 16);
  v4 = *a1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSi6offset_11WorkoutCore11MetricValueV7elementtMd);
  return v3(v4, &a1[*(v5 + 48)]);
}

unint64_t lazy protocol witness table accessor for type MetricValue and conformance MetricValue()
{
  result = lazy protocol witness table cache variable for type MetricValue and conformance MetricValue;
  if (!lazy protocol witness table cache variable for type MetricValue and conformance MetricValue)
  {
    type metadata accessor for MetricValue();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MetricValue and conformance MetricValue);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<VStack<TupleView<(ModifiedContent<ModifiedContent<Text, MetricValueFont>, _ForegroundStyleModifier<Color>>, _ConditionalContent<ModifiedContent<ModifiedContent<Text, MetricUnitFont>, _ForegroundStyleModifier<Color>>, <<opaque return type of View.accessibilityLabel<A>(content:)>>.0>?)>>, _EnvironmentKeyWritingModifier<ContentTransition>> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<VStack<TupleView<(ModifiedContent<ModifiedContent<Text, MetricValueFont>, _ForegroundStyleModifier<Color>>, _ConditionalContent<ModifiedContent<ModifiedContent<Text, MetricUnitFont>, _ForegroundStyleModifier<Color>>, <<opaque return type of View.accessibilityLabel<A>(content:)>>.0>?)>>, _EnvironmentKeyWritingModifier<ContentTransition>> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<VStack<TupleView<(ModifiedContent<ModifiedContent<Text, MetricValueFont>, _ForegroundStyleModifier<Color>>, _ConditionalContent<ModifiedContent<ModifiedContent<Text, MetricUnitFont>, _ForegroundStyleModifier<Color>>, <<opaque return type of View.accessibilityLabel<A>(content:)>>.0>?)>>, _EnvironmentKeyWritingModifier<ContentTransition>> and conformance <> ModifiedContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyAA6VStackVyAA9TupleViewVyACyACyAA4TextV07WorkoutB015MetricValueFontVGAA24_ForegroundStyleModifierVyAA5ColorVGG_AA012_ConditionalD0VyACyACyAiJ0j4UnitL0VGARGAA0G0PAAE18accessibilityLabel7contentQrqd__AA011PlaceholderdG0VyxGXE_tAaZRd__lFQOyACyACyAA5ImageVAA022_EnvironmentKeyWritingO0VyAA0L0VSgGGARG_AUyAIA3_yA14_GGQo_GSgtGGA8_yAA0D10TransitionVGGMd);
    lazy protocol witness table accessor for type HStack<TupleView<(Spacer?, ForEach<[(offset: Int, element: MetricValue)], MetricValue, TupleView<(Spacer?, <<opaque return type of View.accessibilityElement(children:)>>.0)>>, Spacer?)>> and conformance HStack<A>(&lazy protocol witness table cache variable for type VStack<TupleView<(ModifiedContent<ModifiedContent<Text, MetricValueFont>, _ForegroundStyleModifier<Color>>, _ConditionalContent<ModifiedContent<ModifiedContent<Text, MetricUnitFont>, _ForegroundStyleModifier<Color>>, <<opaque return type of View.accessibilityLabel<A>(content:)>>.0>?)>> and conformance VStack<A>, &_s7SwiftUI6VStackVyAA9TupleViewVyAA15ModifiedContentVyAGyAA4TextV07WorkoutB015MetricValueFontVGAA24_ForegroundStyleModifierVyAA5ColorVGG_AA012_ConditionalG0VyAGyAGyAiJ0j4UnitL0VGARGAA0E0PAAE18accessibilityLabel7contentQrqd__AA011PlaceholdergE0VyxGXE_tAaZRd__lFQOyAGyAGyAA5ImageVAA022_EnvironmentKeyWritingO0VyAA0L0VSgGGARG_AUyAIA3_yA14_GGQo_GSgtGGMd);
    lazy protocol witness table accessor for type HStack<TupleView<(Spacer?, ForEach<[(offset: Int, element: MetricValue)], MetricValue, TupleView<(Spacer?, <<opaque return type of View.accessibilityElement(children:)>>.0)>>, Spacer?)>> and conformance HStack<A>(&lazy protocol witness table cache variable for type _EnvironmentKeyWritingModifier<ContentTransition> and conformance _EnvironmentKeyWritingModifier<A>, &_s7SwiftUI30_EnvironmentKeyWritingModifierVyAA17ContentTransitionVGMd);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<VStack<TupleView<(ModifiedContent<ModifiedContent<Text, MetricValueFont>, _ForegroundStyleModifier<Color>>, _ConditionalContent<ModifiedContent<ModifiedContent<Text, MetricUnitFont>, _ForegroundStyleModifier<Color>>, <<opaque return type of View.accessibilityLabel<A>(content:)>>.0>?)>>, _EnvironmentKeyWritingModifier<ContentTransition>> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

uint64_t outlined init with copy of ModifiedContent<ModifiedContent<Text, MetricValueFont>, _ForegroundStyleModifier<Color>>(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyACyAA4TextV07WorkoutB015MetricValueFontVGAA24_ForegroundStyleModifierVyAA5ColorVGGMd);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t outlined destroy of ModifiedContent<VStack<TupleView<(ModifiedContent<ModifiedContent<Text, MetricValueFont>, _ForegroundStyleModifier<Color>>, _ConditionalContent<ModifiedContent<ModifiedContent<Text, MetricUnitFont>, _ForegroundStyleModifier<Color>>, <<opaque return type of View.accessibilityLabel<A>(content:)>>.0>?)>>, _EnvironmentKeyWritingModifier<ContentTransition>>(uint64_t a1, uint64_t *a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(a2);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t outlined destroy of ModifiedContent<ModifiedContent<Text, MetricValueFont>, _ForegroundStyleModifier<Color>>(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyACyAA4TextV07WorkoutB015MetricValueFontVGAA24_ForegroundStyleModifierVyAA5ColorVGGMd);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<Text, MetricUnitFont>, _ForegroundStyleModifier<Color>> and conformance <> ModifiedContent<A, B>(unint64_t *a1, uint64_t *a2, uint64_t a3, void (*a4)(void))
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2);
    a4();
    lazy protocol witness table accessor for type HStack<TupleView<(Spacer?, ForEach<[(offset: Int, element: MetricValue)], MetricValue, TupleView<(Spacer?, <<opaque return type of View.accessibilityElement(children:)>>.0)>>, Spacer?)>> and conformance HStack<A>(&lazy protocol witness table cache variable for type _ForegroundStyleModifier<Color> and conformance _ForegroundStyleModifier<A>, &_s7SwiftUI24_ForegroundStyleModifierVyAA5ColorVGMd);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type _ConditionalContent<Text, PlaceholderContentView<ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Font?>>, _ForegroundStyleModifier<Color>>>> and conformance <> _ConditionalContent<A, B>()
{
  result = lazy protocol witness table cache variable for type _ConditionalContent<Text, PlaceholderContentView<ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Font?>>, _ForegroundStyleModifier<Color>>>> and conformance <> _ConditionalContent<A, B>;
  if (!lazy protocol witness table cache variable for type _ConditionalContent<Text, PlaceholderContentView<ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Font?>>, _ForegroundStyleModifier<Color>>>> and conformance <> _ConditionalContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI19_ConditionalContentVyAA4TextVAA011PlaceholderD4ViewVyAA08ModifiedD0VyAIyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGAA016_ForegroundStyleM0VyAA5ColorVGGGGMd);
    lazy protocol witness table accessor for type HStack<TupleView<(Spacer?, ForEach<[(offset: Int, element: MetricValue)], MetricValue, TupleView<(Spacer?, <<opaque return type of View.accessibilityElement(children:)>>.0)>>, Spacer?)>> and conformance HStack<A>(&lazy protocol witness table cache variable for type PlaceholderContentView<ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Font?>>, _ForegroundStyleModifier<Color>>> and conformance PlaceholderContentView<A>, &_s7SwiftUI22PlaceholderContentViewVyAA08ModifiedD0VyAEyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGAA016_ForegroundStyleK0VyAA5ColorVGGGMd);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type _ConditionalContent<Text, PlaceholderContentView<ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Font?>>, _ForegroundStyleModifier<Color>>>> and conformance <> _ConditionalContent<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<Text, MetricUnitFont> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<Text, MetricUnitFont> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<Text, MetricUnitFont> and conformance <> ModifiedContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyAA4TextV07WorkoutB014MetricUnitFontVGMd);
    lazy protocol witness table accessor for type MetricUnitFont and conformance MetricUnitFont();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<Text, MetricUnitFont> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

double RacePlatterBackground.body.getter@<D0>(uint64_t a1@<X8>)
{
  v2 = static Alignment.bottom.getter();
  v4 = v3;
  closure #1 in RacePlatterBackground.body.getter(&v10);
  v22 = v14;
  v23 = v15;
  v24 = v16;
  v25 = v17;
  v18 = v10;
  v19 = v11;
  v20 = v12;
  v21 = v13;
  v26[0] = v10;
  v26[1] = v11;
  v26[2] = v12;
  v26[3] = v13;
  v26[4] = v14;
  v26[5] = v15;
  v26[6] = v16;
  v27 = v17;
  outlined init with copy of TupleView<(RaceCroppedMapPlatterView, Color, LinearGradient)>(&v18, &v9);
  outlined destroy of TupleView<(RaceCroppedMapPlatterView, Color, LinearGradient)>(v26);
  *a1 = v2;
  *(a1 + 8) = v4;
  v5 = v23;
  *(a1 + 80) = v22;
  *(a1 + 96) = v5;
  *(a1 + 112) = v24;
  *(a1 + 128) = v25;
  v6 = v19;
  *(a1 + 16) = v18;
  *(a1 + 32) = v6;
  result = *&v20;
  v8 = v21;
  *(a1 + 48) = v20;
  *(a1 + 64) = v8;
  return result;
}

uint64_t closure #1 in RacePlatterBackground.body.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = type metadata accessor for Color.RGBColorSpace();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v24 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = RaceWorkoutConfiguration.routeSnapshotData.getter();
  v8 = v7;
  v9 = objc_allocWithZone(MEMORY[0x277D755B8]);
  isa = Data._bridgeToObjectiveC()().super.isa;
  v11 = [v9 initWithData_];

  outlined consume of Data._Representation(v6, v8);
  if (v11)
  {
    v12 = Image.init(uiImage:)();
  }

  else
  {
    WorkoutConfiguration.displaySymbolName.getter();
    v12 = Image.init(_internalSystemName:)();
  }

  v13 = v12;
  v14 = specialized RaceRowConstants.init()(&v24);
  (*(v3 + 104))(v5, *MEMORY[0x277CE0EE0], v2, v14);
  Color.init(_:red:green:blue:opacity:)();
  v15 = Color.opacity(_:)();

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy7SwiftUI8GradientV4StopVGMd);
  v16 = swift_allocObject();
  *(v16 + 16) = xmmword_20CB5DA80;
  static Color.black.getter();
  Color.opacity(_:)();

  *(v16 + 32) = Gradient.Stop.init(color:location:)();
  *(v16 + 40) = v17;
  static Color.black.getter();
  Color.opacity(_:)();

  *(v16 + 48) = Gradient.Stop.init(color:location:)();
  *(v16 + 56) = v18;
  Gradient.init(stops:)();
  static UnitPoint.bottom.getter();
  static UnitPoint.top.getter();
  LinearGradient.init(gradient:startPoint:endPoint:)();
  *v28 = v13;
  *&v28[24] = v25;
  *&v28[8] = v24;
  *&v28[40] = v26;
  *&v28[56] = v27;
  v19 = *&v28[48];
  *(a1 + 32) = *&v28[32];
  *(a1 + 48) = v19;
  v20 = *&v28[16];
  *a1 = *v28;
  *(a1 + 16) = v20;
  v21 = v36;
  *(a1 + 88) = v35;
  v22 = v34;
  *(a1 + 64) = *&v28[64];
  *(a1 + 72) = v15;
  *(a1 + 80) = v22;
  *(a1 + 104) = v21;
  outlined init with copy of RaceCroppedMapPlatterView(v28, &v29);
  v29 = v13;
  v30 = v24;
  v31 = v25;
  v32 = v26;
  v33 = v27;
  return outlined destroy of RaceCroppedMapPlatterView(&v29);
}

uint64_t outlined init with copy of TupleView<(RaceCroppedMapPlatterView, Color, LinearGradient)>(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI9TupleViewVy07WorkoutB0021RaceCroppedMapPlatterD0V_AA5ColorVAA14LinearGradientVtGMd);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t outlined destroy of TupleView<(RaceCroppedMapPlatterView, Color, LinearGradient)>(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI9TupleViewVy07WorkoutB0021RaceCroppedMapPlatterD0V_AA5ColorVAA14LinearGradientVtGMd);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

double protocol witness for View.body.getter in conformance RacePlatterBackground@<D0>(uint64_t a1@<X8>)
{
  v2 = static Alignment.bottom.getter();
  v4 = v3;
  closure #1 in RacePlatterBackground.body.getter(&v10);
  v22 = v14;
  v23 = v15;
  v24 = v16;
  v25 = v17;
  v18 = v10;
  v19 = v11;
  v20 = v12;
  v21 = v13;
  v26[0] = v10;
  v26[1] = v11;
  v26[2] = v12;
  v26[3] = v13;
  v26[4] = v14;
  v26[5] = v15;
  v26[6] = v16;
  v27 = v17;
  outlined init with copy of TupleView<(RaceCroppedMapPlatterView, Color, LinearGradient)>(&v18, &v9);
  outlined destroy of TupleView<(RaceCroppedMapPlatterView, Color, LinearGradient)>(v26);
  *a1 = v2;
  *(a1 + 8) = v4;
  v5 = v23;
  *(a1 + 80) = v22;
  *(a1 + 96) = v5;
  *(a1 + 112) = v24;
  *(a1 + 128) = v25;
  v6 = v19;
  *(a1 + 16) = v18;
  *(a1 + 32) = v6;
  result = *&v20;
  v8 = v21;
  *(a1 + 48) = v20;
  *(a1 + 64) = v8;
  return result;
}

uint64_t getEnumTagSinglePayload for RacePlatterBackground(uint64_t *a1, int a2)
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

uint64_t storeEnumTagSinglePayload for RacePlatterBackground(uint64_t result, int a2, int a3)
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

unint64_t lazy protocol witness table accessor for type ZStack<TupleView<(RaceCroppedMapPlatterView, Color, LinearGradient)>> and conformance ZStack<A>()
{
  result = lazy protocol witness table cache variable for type ZStack<TupleView<(RaceCroppedMapPlatterView, Color, LinearGradient)>> and conformance ZStack<A>;
  if (!lazy protocol witness table cache variable for type ZStack<TupleView<(RaceCroppedMapPlatterView, Color, LinearGradient)>> and conformance ZStack<A>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI6ZStackVyAA9TupleViewVy07WorkoutB0021RaceCroppedMapPlatterE0V_AA5ColorVAA14LinearGradientVtGGMd);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ZStack<TupleView<(RaceCroppedMapPlatterView, Color, LinearGradient)>> and conformance ZStack<A>);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for RaceCroppedMapPlatterView(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 72))
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

uint64_t storeEnumTagSinglePayload for RaceCroppedMapPlatterView(uint64_t result, int a2, int a3)
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
      *result = (a2 - 1);
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

__n128 RaceCroppedMapPlatterView.body.getter@<Q0>(_OWORD *a1@<X8>)
{
  v3 = type metadata accessor for Image.ResizingMode();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v20 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (static Platform.current.getter())
  {
    (*(v4 + 104))(v6, *MEMORY[0x277CE0FE0], v3);
    v21 = Image.resizable(capInsets:resizingMode:)();
    (*(v4 + 8))(v6, v3);
    static Platform.current.getter();
    v7 = Platform.rawValue.getter();
    if (v7 == Platform.rawValue.getter())
    {
      v8 = [objc_opt_self() mainScreen];
      [v8 bounds];
    }

    v12 = *(v1 + 24);
    v36 = *(v1 + 8);
    v37 = v12;
    v13 = *(v1 + 56);
    v38 = *(v1 + 40);
    v39 = v13;
    static Platform.current.getter();
    v14 = Platform.rawValue.getter();
    if (v14 == Platform.rawValue.getter())
    {
      v15 = [objc_opt_self() aL];
      [v15 0x277DAAEF8];
    }

    static Alignment.center.getter();
    _FrameLayout.init(width:height:alignment:)();
    v23 = 1;
    *&v22[6] = v35[2];
    *&v22[22] = v35[3];
    *&v22[38] = v35[4];
    RaceRowConstants.verticalClippedHeight.getter();
    static Alignment.bottom.getter();
    _FrameLayout.init(width:height:alignment:)();
    v32 = v21;
    LOWORD(v33[0]) = 1;
    *(v33 + 2) = *v22;
    *(&v33[1] + 2) = *&v22[16];
    *(&v33[2] + 2) = *&v22[32];
    *&v33[3] = *&v22[46];
    _s7SwiftUI19_ConditionalContentV7StorageOyAA08ModifiedD0VyAGyAGyAA5ImageVAA18_AspectRatioLayoutVGAA06_FrameJ0VGANGAO_GWOi_(&v32);
    v10 = v34;
    v28 = v33[3];
    v11 = v35[0];
  }

  else
  {
    if (one-time initialization token for snapshotRouteWidth != -1)
    {
      swift_once();
    }

    if (one-time initialization token for snapshotTotalWidth != -1)
    {
      swift_once();
    }

    if (one-time initialization token for snapshotRouteHeight != -1)
    {
      swift_once();
    }

    if (one-time initialization token for snapshotTotalHeight != -1)
    {
      swift_once();
    }

    (*(v4 + 104))(v6, *MEMORY[0x277CE0FE0], v3);
    v9 = Image.resizable(capInsets:resizingMode:)();
    (*(v4 + 8))(v6, v3);
    static Alignment.center.getter();
    _FrameLayout.init(width:height:alignment:)();
    LOBYTE(v40) = 1;
    *&v31[22] = v37;
    *&v31[38] = v38;
    *&v31[6] = v36;
    v32 = v9;
    LOWORD(v33[0]) = 1;
    *&v33[3] = *(&v38 + 1);
    *(&v33[2] + 2) = *&v31[32];
    *(&v33[1] + 2) = *&v31[16];
    *(v33 + 2) = *v31;
    _s7SwiftUI19_ConditionalContentV7StorageOyAA08ModifiedD0VyAGyAGyAA5ImageVAA18_AspectRatioLayoutVGAA06_FrameJ0VGANGAO_GWOi0_(&v32);
    v10 = v34;
    v28 = v33[3];
    v11 = v35[0];
  }

  v29 = v10;
  *v30 = v11;
  *&v30[9] = *(v35 + 9);
  v24 = v32;
  v25 = v33[0];
  v26 = v33[1];
  v27 = v33[2];
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyACyACyAA5ImageVAA18_AspectRatioLayoutVGAA06_FrameH0VGAJGMd);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyACyAA5ImageVAA18_AspectRatioLayoutVGAA06_FrameH0VGMd);
  lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<ModifiedContent<Image, _AspectRatioLayout>, _FrameLayout>, _FrameLayout> and conformance <> ModifiedContent<A, B>(&lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<Image, _AspectRatioLayout>, _FrameLayout>, _FrameLayout> and conformance <> ModifiedContent<A, B>, &_s7SwiftUI15ModifiedContentVyACyACyAA5ImageVAA18_AspectRatioLayoutVGAA06_FrameH0VGAJGMd, &_s7SwiftUI15ModifiedContentVyACyACyAA5ImageVAA18_AspectRatioLayoutVGAA06_FrameH0VGAJGMR, lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<Image, _AspectRatioLayout>, _FrameLayout> and conformance <> ModifiedContent<A, B>);
  lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<Image, _AspectRatioLayout>, _FrameLayout> and conformance <> ModifiedContent<A, B>();
  _ConditionalContent<>.init(storage:)();
  v16 = v45;
  a1[4] = v44;
  a1[5] = v16;
  a1[6] = v46[0];
  *(a1 + 105) = *(v46 + 9);
  v17 = v41;
  *a1 = v40;
  a1[1] = v17;
  result = v42;
  v19 = v43;
  a1[2] = v42;
  a1[3] = v19;
  return result;
}

uint64_t lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<ModifiedContent<Image, _AspectRatioLayout>, _FrameLayout>, _FrameLayout> and conformance <> ModifiedContent<A, B>(unint64_t *a1, uint64_t *a2, uint64_t a3, void (*a4)(void))
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

unint64_t lazy protocol witness table accessor for type _ConditionalContent<ModifiedContent<ModifiedContent<ModifiedContent<Image, _AspectRatioLayout>, _FrameLayout>, _FrameLayout>, ModifiedContent<ModifiedContent<Image, _AspectRatioLayout>, _FrameLayout>> and conformance <> _ConditionalContent<A, B>()
{
  result = lazy protocol witness table cache variable for type _ConditionalContent<ModifiedContent<ModifiedContent<ModifiedContent<Image, _AspectRatioLayout>, _FrameLayout>, _FrameLayout>, ModifiedContent<ModifiedContent<Image, _AspectRatioLayout>, _FrameLayout>> and conformance <> _ConditionalContent<A, B>;
  if (!lazy protocol witness table cache variable for type _ConditionalContent<ModifiedContent<ModifiedContent<ModifiedContent<Image, _AspectRatioLayout>, _FrameLayout>, _FrameLayout>, ModifiedContent<ModifiedContent<Image, _AspectRatioLayout>, _FrameLayout>> and conformance <> _ConditionalContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI19_ConditionalContentVyAA08ModifiedD0VyAEyAEyAA5ImageVAA18_AspectRatioLayoutVGAA06_FrameI0VGALGAMGMd);
    lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<ModifiedContent<Image, _AspectRatioLayout>, _FrameLayout>, _FrameLayout> and conformance <> ModifiedContent<A, B>(&lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<Image, _AspectRatioLayout>, _FrameLayout>, _FrameLayout> and conformance <> ModifiedContent<A, B>, &_s7SwiftUI15ModifiedContentVyACyACyAA5ImageVAA18_AspectRatioLayoutVGAA06_FrameH0VGAJGMd, &_s7SwiftUI15ModifiedContentVyACyACyAA5ImageVAA18_AspectRatioLayoutVGAA06_FrameH0VGAJGMR, lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<Image, _AspectRatioLayout>, _FrameLayout> and conformance <> ModifiedContent<A, B>);
    lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<Image, _AspectRatioLayout>, _FrameLayout> and conformance <> ModifiedContent<A, B>();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type _ConditionalContent<ModifiedContent<ModifiedContent<ModifiedContent<Image, _AspectRatioLayout>, _FrameLayout>, _FrameLayout>, ModifiedContent<ModifiedContent<Image, _AspectRatioLayout>, _FrameLayout>> and conformance <> _ConditionalContent<A, B>);
  }

  return result;
}

uint64_t one-time initialization function for snapshotTotalHeight(uint64_t a1, double *a2)
{
  static Platform.current.getter();
  v3 = Platform.rawValue.getter();
  result = Platform.rawValue.getter();
  v5 = 470.0;
  if (v3 == result)
  {
    v5 = 235.0;
  }

  *a2 = v5;
  return result;
}

uint64_t one-time initialization function for snapshotRouteHeight(uint64_t a1, double *a2)
{
  static Platform.current.getter();
  v3 = Platform.rawValue.getter();
  result = Platform.rawValue.getter();
  v5 = 230.0;
  if (v3 == result)
  {
    v5 = 115.0;
  }

  *a2 = v5;
  return result;
}

uint64_t one-time initialization function for snapshotRouteTopPadding(uint64_t a1, double *a2)
{
  static Platform.current.getter();
  v3 = Platform.rawValue.getter();
  result = Platform.rawValue.getter();
  v5 = 120.0;
  if (v3 == result)
  {
    v5 = 60.0;
  }

  *a2 = v5;
  return result;
}

uint64_t RaceWorkoutSelectionView.init(workoutConfiguration:formattingManager:)@<X0>(uint64_t a1@<X1>, uint64_t *a2@<X8>)
{
  type metadata accessor for WorkoutConfigurationDataSource();
  _s11WorkoutCore0A23ConfigurationDataSourceCAC7Combine16ObservableObjectAAWlTm_8(&lazy protocol witness table cache variable for type WorkoutConfigurationDataSource and conformance WorkoutConfigurationDataSource, MEMORY[0x277D7DC28]);
  *a2 = EnvironmentObject.init()();
  a2[1] = v4;
  type metadata accessor for ConfigurationNavigationModel();
  _s11WorkoutCore0A23ConfigurationDataSourceCAC7Combine16ObservableObjectAAWlTm_8(&lazy protocol witness table cache variable for type ConfigurationNavigationModel and conformance ConfigurationNavigationModel, type metadata accessor for ConfigurationNavigationModel);
  a2[2] = EnvironmentObject.init()();
  a2[3] = v5;
  type metadata accessor for RaceWorkoutConfiguration();
  _s11WorkoutCore0A23ConfigurationDataSourceCAC7Combine16ObservableObjectAAWlTm_8(&lazy protocol witness table cache variable for type RaceWorkoutConfiguration and conformance WorkoutConfiguration, MEMORY[0x277D7D950]);
  result = ObservedObject.init(wrappedValue:)();
  a2[4] = result;
  a2[5] = v7;
  a2[6] = a1;
  return result;
}

uint64_t _s11WorkoutCore0A23ConfigurationDataSourceCAC7Combine16ObservableObjectAAWlTm_8(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t RaceWorkoutSelectionView.body.getter@<X0>(uint64_t a1@<X8>)
{
  v41 = a1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyAA4ListVys5NeverOAA9TupleViewVy07WorkoutB0016RaceFilterPickerH0V_ACyAJ0j5StartI6ButtonVAA21_TraitWritingModifierVyAA0e8ItemTintO3KeyVGGtGGAA012_EnvironmenttpQ0VyAA13AnyShapeStyleVSgGGMd);
  MEMORY[0x28223BE20](v2);
  v4 = &v36 - v3;
  v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI4ViewPAAE18navigationBarTitleyQrqd__SyRd__lFQOyAA15ModifiedContentVyAA4ListVys5NeverOAA05TupleC0Vy07WorkoutB0016RaceFilterPickerC0V_AFyAM0m5StartL6ButtonVAA21_TraitWritingModifierVyAA0i8ItemTintR3KeyVGGtGGAA012_EnvironmentwsT0VyAA13AnyShapeStyleVSgGG_SSQo_Md);
  v37 = *(v38 - 8);
  MEMORY[0x28223BE20](v38);
  v6 = &v36 - v5;
  v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI4ViewPAAE22toolbarForegroundStyle_3forQrqd___AA16ToolbarPlacementVdtAA05ShapeF0Rd__lFQOyAcAE18navigationBarTitleyQrqd__SyRd__lFQOyAA15ModifiedContentVyAA4ListVys5NeverOAA05TupleC0Vy07WorkoutB0016RaceFilterPickerC0V_AKyAR0t5StartS6ButtonVAA21_TraitWritingModifierVyAA0p8ItemTintY3KeyVGGtGGAA015_EnvironmentKeyZ8ModifierVyAA03AnyjF0VSgGG_SSQo__AA5ColorVQo_Md);
  v39 = *(v40 - 8);
  MEMORY[0x28223BE20](v40);
  v36 = &v36 - v7;
  v8 = *(v1 + 16);
  v47[0] = *v1;
  v47[1] = v8;
  v48 = *(v1 + 32);
  v49 = *(v1 + 48);
  v42 = v47;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI9TupleViewVy07WorkoutB0016RaceFilterPickerD0V_AA15ModifiedContentVyAD0f5StartE6ButtonVAA21_TraitWritingModifierVyAA012ListItemTintM3KeyVGGtGMd);
  lazy protocol witness table accessor for type TupleView<(RaceFilterPickerView, ModifiedContent<RaceStartWorkoutButton, _TraitWritingModifier<ListItemTintTraitKey>>)> and conformance TupleView<A>(&lazy protocol witness table cache variable for type TupleView<(RaceFilterPickerView, ModifiedContent<RaceStartWorkoutButton, _TraitWritingModifier<ListItemTintTraitKey>>)> and conformance TupleView<A>, &_s7SwiftUI9TupleViewVy07WorkoutB0016RaceFilterPickerD0V_AA15ModifiedContentVyAD0f5StartE6ButtonVAA21_TraitWritingModifierVyAA012ListItemTintM3KeyVGGtGMd);
  List<>.init(content:)();
  [objc_allocWithZone(MEMORY[0x277D75348]) initWithRed:0.0 green:1.0 blue:0.62745098 alpha:1.0];
  v9 = Color.init(uiColor:)();
  KeyPath = swift_getKeyPath();
  v43._countAndFlagsBits = v9;
  v11 = AnyShapeStyle.init<A>(_:)();
  v12 = &v4[*(v2 + 36)];
  *v12 = KeyPath;
  v12[1] = v11;
  if (one-time initialization token for WorkoutUIBundle != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v13 = WorkoutUIBundle.super.isa;
  v51._object = 0xE000000000000000;
  v14.value._countAndFlagsBits = 0x617A696C61636F4CLL;
  v14.value._object = 0xEB00000000656C62;
  v15._object = 0x800000020CBA4840;
  v15._countAndFlagsBits = 0xD00000000000001BLL;
  v16._countAndFlagsBits = 0;
  v16._object = 0xE000000000000000;
  v51._countAndFlagsBits = 0;
  v17 = NSLocalizedString(_:tableName:bundle:value:comment:)(v15, v14, v13, v16, v51);

  v43 = v17;
  started = lazy protocol witness table accessor for type ModifiedContent<List<Never, TupleView<(RaceFilterPickerView, ModifiedContent<RaceStartWorkoutButton, _TraitWritingModifier<ListItemTintTraitKey>>)>>, _EnvironmentKeyWritingModifier<AnyShapeStyle?>> and conformance <> ModifiedContent<A, B>();
  v19 = lazy protocol witness table accessor for type String and conformance String();
  View.navigationTitle<A>(_:)();

  outlined destroy of ModifiedContent<List<Never, TupleView<(RaceFilterPickerView, ModifiedContent<RaceStartWorkoutButton, _TraitWritingModifier<ListItemTintTraitKey>>)>>, _EnvironmentKeyWritingModifier<AnyShapeStyle?>>(v4, &_s7SwiftUI15ModifiedContentVyAA4ListVys5NeverOAA9TupleViewVy07WorkoutB0016RaceFilterPickerH0V_ACyAJ0j5StartI6ButtonVAA21_TraitWritingModifierVyAA0e8ItemTintO3KeyVGGtGGAA012_EnvironmenttpQ0VyAA13AnyShapeStyleVSgGGMd);
  v50[0] = v48;
  v20 = *(&v48 + 1);
  WorkoutConfiguration.displayColor.getter();
  outlined destroy of ModifiedContent<List<Never, TupleView<(RaceFilterPickerView, ModifiedContent<RaceStartWorkoutButton, _TraitWritingModifier<ListItemTintTraitKey>>)>>, _EnvironmentKeyWritingModifier<AnyShapeStyle?>>(v50, &_s7SwiftUI14ObservedObjectVy11WorkoutCore04RaceE13ConfigurationCGMd);
  v46 = Color.init(uiColor:)();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy7SwiftUI16ToolbarPlacementVGMd);
  type metadata accessor for ToolbarPlacement();
  v21 = v6;
  v22 = swift_allocObject();
  *(v22 + 16) = xmmword_20CB5DA70;
  static ToolbarPlacement.navigationBar.getter();
  v43._countAndFlagsBits = v2;
  v43._object = MEMORY[0x277D837D0];
  v44 = started;
  v45 = v19;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v24 = v36;
  v25 = v38;
  MEMORY[0x20F30A9F0](&v46, v22, v38, MEMORY[0x277CE0F78], OpaqueTypeConformance2, MEMORY[0x277CE0F60]);

  (*(v37 + 8))(v21, v25);
  _s7SwiftUI14ObservedObjectVy11WorkoutCore04RaceE13ConfigurationCGWOcTm_0(v50, &v43, &_s7SwiftUI14ObservedObjectVy11WorkoutCore04RaceE13ConfigurationCGMd);
  _s7SwiftUI14ObservedObjectVy11WorkoutCore04RaceE13ConfigurationCGWOcTm_0(v50, &v43, &_s7SwiftUI14ObservedObjectVy11WorkoutCore04RaceE13ConfigurationCGMd);
  v26 = dispatch thunk of WorkoutConfiguration.externalProvider.getter();
  outlined destroy of ModifiedContent<List<Never, TupleView<(RaceFilterPickerView, ModifiedContent<RaceStartWorkoutButton, _TraitWritingModifier<ListItemTintTraitKey>>)>>, _EnvironmentKeyWritingModifier<AnyShapeStyle?>>(v50, &_s7SwiftUI14ObservedObjectVy11WorkoutCore04RaceE13ConfigurationCGMd);
  if (v26)
  {
  }

  LOBYTE(v46) = v26 == 0;
  static Binding.constant(_:)();
  countAndFlagsBits = v43._countAndFlagsBits;
  object = v43._object;
  v29 = v44;
  type metadata accessor for WorkoutConfigurationDataSource();
  _s11WorkoutCore0A23ConfigurationDataSourceCAC7Combine16ObservableObjectAAWlTm_8(&lazy protocol witness table cache variable for type WorkoutConfigurationDataSource and conformance WorkoutConfigurationDataSource, MEMORY[0x277D7DC28]);
  v30 = EnvironmentObject.init()();
  v32 = v31;
  v33 = v41;
  (*(v39 + 32))(v41, v24, v40);
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyAA4ViewPAAE22toolbarForegroundStyle_3forQrqd___AA16ToolbarPlacementVdtAA05ShapeH0Rd__lFQOyAeAE18navigationBarTitleyQrqd__SyRd__lFQOyACyAA4ListVys5NeverOAA05TupleE0Vy07WorkoutB0016RaceFilterPickerE0V_ACyAR0t5StartS6ButtonVAA21_TraitWritingModifierVyAA0p8ItemTintY3KeyVGGtGGAA015_EnvironmentKeyZ8ModifierVyAA03AnylH0VSgGG_SSQo__AA5ColorVQo_AR0S31ConfigurationDataSourceModifierVGMd);
  v35 = v33 + *(result + 36);
  *v35 = v30;
  *(v35 + 8) = v32;
  *(v35 + 16) = v20;
  *(v35 + 24) = countAndFlagsBits;
  *(v35 + 32) = object;
  *(v35 + 40) = v29;
  return result;
}

void closure #1 in RaceWorkoutSelectionView.body.getter(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVy07WorkoutB009RaceStartE6ButtonVAA21_TraitWritingModifierVyAA012ListItemTintI3KeyVGGMd);
  MEMORY[0x28223BE20](v35);
  v5 = &v30 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v8 = (&v30 - v7);
  v38 = *(a1 + 32);
  v9 = *(a1 + 48);
  v10 = *(&v38 + 1);
  _s7SwiftUI14ObservedObjectVy11WorkoutCore04RaceE13ConfigurationCGWOcTm_0(&v38, v37, &_s7SwiftUI14ObservedObjectVy11WorkoutCore04RaceE13ConfigurationCGMd);
  type metadata accessor for RaceWorkoutConfiguration();
  _s11WorkoutCore0A23ConfigurationDataSourceCAC7Combine16ObservableObjectAAWlTm_8(&lazy protocol witness table cache variable for type RaceWorkoutConfiguration and conformance WorkoutConfiguration, MEMORY[0x277D7D950]);
  v36 = v9;
  v33 = ObservedObject.init(wrappedValue:)();
  v34 = v11;
  type metadata accessor for ConfigurationNavigationModel();
  _s11WorkoutCore0A23ConfigurationDataSourceCAC7Combine16ObservableObjectAAWlTm_8(&lazy protocol witness table cache variable for type ConfigurationNavigationModel and conformance ConfigurationNavigationModel, type metadata accessor for ConfigurationNavigationModel);
  v12 = EnvironmentObject.init()();
  v31 = v13;
  v32 = v12;
  type metadata accessor for WorkoutConfigurationDataSource();
  _s11WorkoutCore0A23ConfigurationDataSourceCAC7Combine16ObservableObjectAAWlTm_8(&lazy protocol witness table cache variable for type WorkoutConfigurationDataSource and conformance WorkoutConfigurationDataSource, MEMORY[0x277D7DC28]);
  v14 = EnvironmentObject.init()();
  v16 = v15;
  if (one-time initialization token for WorkoutUIBundle != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v17 = WorkoutUIBundle.super.isa;
  v39._object = 0xE000000000000000;
  v18.value._countAndFlagsBits = 0x617A696C61636F4CLL;
  v18.value._object = 0xEB00000000656C62;
  v19._object = 0x800000020CB93C90;
  v19._countAndFlagsBits = 0xD00000000000001ALL;
  v20._countAndFlagsBits = 0;
  v20._object = 0xE000000000000000;
  v39._countAndFlagsBits = 0;
  v21 = NSLocalizedString(_:tableName:bundle:value:comment:)(v19, v18, v17, v20, v39);

  WorkoutConfiguration.displayColor.getter();
  Color.init(uiColor:)();
  v22 = *(v35 + 36);
  static ListItemTint.fixed(_:)();

  v23 = type metadata accessor for ListItemTint();
  (*(*(v23 - 8) + 56))(v8 + v22, 0, 1, v23);
  v24 = v31;
  v8->_countAndFlagsBits = v32;
  v8->_object = v24;
  v8[1]._countAndFlagsBits = v14;
  v8[1]._object = v16;
  v8[2] = v21;
  v8[3]._countAndFlagsBits = v10;
  _s7SwiftUI14ObservedObjectVy11WorkoutCore04RaceE13ConfigurationCGWOcTm_0(v8, v5, &_s7SwiftUI15ModifiedContentVy07WorkoutB009RaceStartE6ButtonVAA21_TraitWritingModifierVyAA012ListItemTintI3KeyVGGMd);
  v25 = v34;
  *a2 = v33;
  a2[1] = v25;
  v26 = v36;
  a2[2] = v36;
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9WorkoutUI20RaceFilterPickerViewV_05SwiftB015ModifiedContentVyAA0c5StartA6ButtonVAD21_TraitWritingModifierVyAD012ListItemTintL3KeyVGGtMd);
  _s7SwiftUI14ObservedObjectVy11WorkoutCore04RaceE13ConfigurationCGWOcTm_0(v5, a2 + *(v27 + 48), &_s7SwiftUI15ModifiedContentVy07WorkoutB009RaceStartE6ButtonVAA21_TraitWritingModifierVyAA012ListItemTintI3KeyVGGMd);
  v28 = v25;
  v29 = v26;
  outlined destroy of ModifiedContent<List<Never, TupleView<(RaceFilterPickerView, ModifiedContent<RaceStartWorkoutButton, _TraitWritingModifier<ListItemTintTraitKey>>)>>, _EnvironmentKeyWritingModifier<AnyShapeStyle?>>(v8, &_s7SwiftUI15ModifiedContentVy07WorkoutB009RaceStartE6ButtonVAA21_TraitWritingModifierVyAA012ListItemTintI3KeyVGGMd);
  outlined destroy of ModifiedContent<List<Never, TupleView<(RaceFilterPickerView, ModifiedContent<RaceStartWorkoutButton, _TraitWritingModifier<ListItemTintTraitKey>>)>>, _EnvironmentKeyWritingModifier<AnyShapeStyle?>>(v5, &_s7SwiftUI15ModifiedContentVy07WorkoutB009RaceStartE6ButtonVAA21_TraitWritingModifierVyAA012ListItemTintI3KeyVGGMd);
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<List<Never, TupleView<(RaceFilterPickerView, ModifiedContent<RaceStartWorkoutButton, _TraitWritingModifier<ListItemTintTraitKey>>)>>, _EnvironmentKeyWritingModifier<AnyShapeStyle?>> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<List<Never, TupleView<(RaceFilterPickerView, ModifiedContent<RaceStartWorkoutButton, _TraitWritingModifier<ListItemTintTraitKey>>)>>, _EnvironmentKeyWritingModifier<AnyShapeStyle?>> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<List<Never, TupleView<(RaceFilterPickerView, ModifiedContent<RaceStartWorkoutButton, _TraitWritingModifier<ListItemTintTraitKey>>)>>, _EnvironmentKeyWritingModifier<AnyShapeStyle?>> and conformance <> ModifiedContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyAA4ListVys5NeverOAA9TupleViewVy07WorkoutB0016RaceFilterPickerH0V_ACyAJ0j5StartI6ButtonVAA21_TraitWritingModifierVyAA0e8ItemTintO3KeyVGGtGGAA012_EnvironmenttpQ0VyAA13AnyShapeStyleVSgGGMd);
    lazy protocol witness table accessor for type TupleView<(RaceFilterPickerView, ModifiedContent<RaceStartWorkoutButton, _TraitWritingModifier<ListItemTintTraitKey>>)> and conformance TupleView<A>(&lazy protocol witness table cache variable for type List<Never, TupleView<(RaceFilterPickerView, ModifiedContent<RaceStartWorkoutButton, _TraitWritingModifier<ListItemTintTraitKey>>)>> and conformance List<A, B>, &_s7SwiftUI4ListVys5NeverOAA9TupleViewVy07WorkoutB0016RaceFilterPickerF0V_AA15ModifiedContentVyAH0h5StartG6ButtonVAA21_TraitWritingModifierVyAA0c8ItemTintO3KeyVGGtGGMd);
    lazy protocol witness table accessor for type TupleView<(RaceFilterPickerView, ModifiedContent<RaceStartWorkoutButton, _TraitWritingModifier<ListItemTintTraitKey>>)> and conformance TupleView<A>(&lazy protocol witness table cache variable for type _EnvironmentKeyWritingModifier<AnyShapeStyle?> and conformance _EnvironmentKeyWritingModifier<A>, &_s7SwiftUI30_EnvironmentKeyWritingModifierVyAA13AnyShapeStyleVSgGMd);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<List<Never, TupleView<(RaceFilterPickerView, ModifiedContent<RaceStartWorkoutButton, _TraitWritingModifier<ListItemTintTraitKey>>)>>, _EnvironmentKeyWritingModifier<AnyShapeStyle?>> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

uint64_t lazy protocol witness table accessor for type TupleView<(RaceFilterPickerView, ModifiedContent<RaceStartWorkoutButton, _TraitWritingModifier<ListItemTintTraitKey>>)> and conformance TupleView<A>(unint64_t *a1, uint64_t *a2)
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

uint64_t getEnumTagSinglePayload for RaceWorkoutSelectionView(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 56))
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

uint64_t storeEnumTagSinglePayload for RaceWorkoutSelectionView(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 56) = 1;
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

    *(result + 56) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<<<opaque return type of View.toolbarForegroundStyle<A>(_:for:)>>.0, WorkoutConfigurationDataSourceModifier> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<<<opaque return type of View.toolbarForegroundStyle<A>(_:for:)>>.0, WorkoutConfigurationDataSourceModifier> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<<<opaque return type of View.toolbarForegroundStyle<A>(_:for:)>>.0, WorkoutConfigurationDataSourceModifier> and conformance <> ModifiedContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyAA4ViewPAAE22toolbarForegroundStyle_3forQrqd___AA16ToolbarPlacementVdtAA05ShapeH0Rd__lFQOyAeAE18navigationBarTitleyQrqd__SyRd__lFQOyACyAA4ListVys5NeverOAA05TupleE0Vy07WorkoutB0016RaceFilterPickerE0V_ACyAR0t5StartS6ButtonVAA21_TraitWritingModifierVyAA0p8ItemTintY3KeyVGGtGGAA015_EnvironmentKeyZ8ModifierVyAA03AnylH0VSgGG_SSQo__AA5ColorVQo_AR0S31ConfigurationDataSourceModifierVGMd);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI4ViewPAAE18navigationBarTitleyQrqd__SyRd__lFQOyAA15ModifiedContentVyAA4ListVys5NeverOAA05TupleC0Vy07WorkoutB0016RaceFilterPickerC0V_AFyAM0m5StartL6ButtonVAA21_TraitWritingModifierVyAA0i8ItemTintR3KeyVGGtGGAA012_EnvironmentwsT0VyAA13AnyShapeStyleVSgGG_SSQo_Md);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyAA4ListVys5NeverOAA9TupleViewVy07WorkoutB0016RaceFilterPickerH0V_ACyAJ0j5StartI6ButtonVAA21_TraitWritingModifierVyAA0e8ItemTintO3KeyVGGtGGAA012_EnvironmenttpQ0VyAA13AnyShapeStyleVSgGGMd);
    lazy protocol witness table accessor for type ModifiedContent<List<Never, TupleView<(RaceFilterPickerView, ModifiedContent<RaceStartWorkoutButton, _TraitWritingModifier<ListItemTintTraitKey>>)>>, _EnvironmentKeyWritingModifier<AnyShapeStyle?>> and conformance <> ModifiedContent<A, B>();
    lazy protocol witness table accessor for type String and conformance String();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    lazy protocol witness table accessor for type WorkoutConfigurationDataSourceModifier and conformance WorkoutConfigurationDataSourceModifier();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<<<opaque return type of View.toolbarForegroundStyle<A>(_:for:)>>.0, WorkoutConfigurationDataSourceModifier> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type WorkoutConfigurationDataSourceModifier and conformance WorkoutConfigurationDataSourceModifier()
{
  result = lazy protocol witness table cache variable for type WorkoutConfigurationDataSourceModifier and conformance WorkoutConfigurationDataSourceModifier;
  if (!lazy protocol witness table cache variable for type WorkoutConfigurationDataSourceModifier and conformance WorkoutConfigurationDataSourceModifier)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type WorkoutConfigurationDataSourceModifier and conformance WorkoutConfigurationDataSourceModifier);
  }

  return result;
}

uint64_t _s7SwiftUI14ObservedObjectVy11WorkoutCore04RaceE13ConfigurationCGWOcTm_0(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(a3);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t outlined destroy of ModifiedContent<List<Never, TupleView<(RaceFilterPickerView, ModifiedContent<RaceStartWorkoutButton, _TraitWritingModifier<ListItemTintTraitKey>>)>>, _EnvironmentKeyWritingModifier<AnyShapeStyle?>>(uint64_t a1, uint64_t *a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(a2);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t MetricPublishing.publishPageDidChangeToPage(_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for MetricPage();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v16 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for MetricPageChangeOccurred();
  v11 = *(v10 - 8);
  v12 = MEMORY[0x28223BE20](v10);
  v14 = &v16 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v7 + 16))(v9, a1, v6, v12);
  MetricPageChangeOccurred.init(_:topicRoutingBehavior:)();
  (*(a3 + 8))(a2, a3);
  swift_getObjectType();
  _s12SeymourMedia24MetricPageChangeOccurredVAC0A6Client5EventAAWlTm_0(&lazy protocol witness table cache variable for type MetricPageChangeOccurred and conformance MetricPageChangeOccurred, MEMORY[0x277D54270]);
  dispatch thunk of EventHubProtocol.publish<A>(_:)();
  swift_unknownObjectRelease();
  return (*(v11 + 8))(v14, v10);
}

Swift::Void __swiftcall MetricPublishing.publishBackNavigation()()
{
  v2 = v1;
  v3 = v0;
  v4 = type metadata accessor for MetricBackNavigationOccurred();
  v5 = *(v4 - 8);
  v6 = MEMORY[0x28223BE20](v4);
  v8 = &v9 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v2 + 8))(v3, v2, v6);
  swift_getObjectType();
  MetricBackNavigationOccurred.init(topicRoutingBehavior:)();
  _s12SeymourMedia24MetricPageChangeOccurredVAC0A6Client5EventAAWlTm_0(&lazy protocol witness table cache variable for type MetricBackNavigationOccurred and conformance MetricBackNavigationOccurred, MEMORY[0x277D54388]);
  dispatch thunk of EventHubProtocol.publish<A>(_:)();
  swift_unknownObjectRelease();
  (*(v5 + 8))(v8, v4);
}

uint64_t MetricPublishing.publishClick(actionType:targetType:targetIdentifier:targetIdentifierType:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v79 = a6;
  v89 = a5;
  v95 = a4;
  v98 = a3;
  v91 = a2;
  v87 = a1;
  v9 = type metadata accessor for MetricClickStreamOccurred();
  v10 = *(v9 - 8);
  v102 = v9;
  v103 = v10;
  MEMORY[0x28223BE20](v9);
  v101 = &v75 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for MetricIdentifier();
  MEMORY[0x28223BE20](v12 - 8);
  v100 = &v75 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SeymourCore12PortableEnumOyAA16MetricDeviceTypeOGSgMd);
  MEMORY[0x28223BE20](v14 - 8);
  v99 = &v75 - v15;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SeymourCore17MetricEnvironmentVSgMd);
  MEMORY[0x28223BE20](v16 - 8);
  v97 = &v75 - v17;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SeymourCore19MetricGroupActivityVSgMd);
  MEMORY[0x28223BE20](v18 - 8);
  v93 = &v75 - v19;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SeymourCore19MetricBadgingCountsVSgMd);
  MEMORY[0x28223BE20](v20 - 8);
  v88 = &v75 - v21;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SeymourCore10MetricPageVSgMd);
  MEMORY[0x28223BE20](v22 - 8);
  v86 = &v75 - v23;
  v85 = type metadata accessor for MetricClickStreamType();
  v84 = *(v85 - 8);
  MEMORY[0x28223BE20](v85);
  v105 = &v75 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v96 = type metadata accessor for MetricClickStream();
  v94 = *(v96 - 8);
  MEMORY[0x28223BE20](v96);
  v92 = &v75 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v26);
  v90 = &v75 - v27;
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SeymourCore26MetricClickMarketingFieldsVSgMd);
  MEMORY[0x28223BE20](v28 - 8);
  v83 = &v75 - v29;
  v82 = type metadata accessor for MetricClickElement();
  v81 = *(v82 - 8);
  MEMORY[0x28223BE20](v82);
  v80 = &v75 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SeymourCore22MetricClickDestinationOSgMd);
  MEMORY[0x28223BE20](v31 - 8);
  v33 = &v75 - v32;
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLVSgMd);
  MEMORY[0x28223BE20](v34 - 8);
  v77 = &v75 - v35;
  v36 = type metadata accessor for MetricClickAction();
  v37 = *(v36 - 8);
  MEMORY[0x28223BE20](v36);
  v76 = &v75 - ((v38 + 15) & 0xFFFFFFFFFFFFFFF0);
  v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SeymourCore24MetricClickActionContextOSgMd);
  MEMORY[0x28223BE20](v39 - 8);
  v41 = &v75 - v40;
  v42 = type metadata accessor for MetricClick();
  v106 = *(v42 - 8);
  v107 = v42;
  MEMORY[0x28223BE20](v42);
  v104 = &v75 - ((v43 + 15) & 0xFFFFFFFFFFFFFFF0);
  v44 = type metadata accessor for Date();
  v45 = *(v44 - 8);
  v46 = MEMORY[0x28223BE20](v44);
  v48 = &v75 - ((v47 + 15) & 0xFFFFFFFFFFFFFFF0);
  v78 = a7;
  (*(a7 + 16))(&v108, a6, a7, v46);
  v49 = v109;
  v50 = v110;
  __swift_project_boxed_opaque_existential_1(&v108, v109);
  Date.init()();
  (*(v50 + 40))(v48, v49, v50);
  (*(v45 + 8))(v48, v44);
  __swift_destroy_boxed_opaque_existential_1(&v108);
  v51 = type metadata accessor for MetricClickActionContext();
  (*(*(v51 - 8) + 56))(v41, 1, 1, v51);
  (*(v37 + 16))(v76, v87, v36);
  v52 = type metadata accessor for URL();
  (*(*(v52 - 8) + 56))(v77, 1, 1, v52);
  v53 = type metadata accessor for MetricClickDestination();
  v54 = *(v53 - 8);
  (*(v54 + 16))(v33, v89, v53);
  (*(v54 + 56))(v33, 0, 1, v53);
  (*(v81 + 16))(v80, v91, v82);
  v55 = type metadata accessor for MetricClickMarketingFields();
  (*(*(v55 - 8) + 56))(v83, 1, 1, v55);

  v56 = v104;
  MetricClick.init(actionContext:actionType:actionURL:impressionsData:locations:offerType:targetIdentifier:targetIdentifierType:targetType:marketingFields:marketingMessageIdentifier:marketingPlacement:)();
  v57 = v105;
  (*(v106 + 16))(v105, v56, v107);
  (*(v84 + 104))(v57, *MEMORY[0x277D52120], v85);
  v58 = v78;
  v59 = v86;
  v60 = v79;
  (*(v78 + 24))(v79, v78);
  v61 = type metadata accessor for MetricPage();
  (*(*(v61 - 8) + 56))(v59, 0, 1, v61);
  v62 = type metadata accessor for MetricBadgingCounts();
  (*(*(v62 - 8) + 56))(v88, 1, 1, v62);
  v63 = type metadata accessor for MetricGroupActivity();
  (*(*(v63 - 8) + 56))(v93, 1, 1, v63);
  v64 = v97;
  static MetricEnvironment.current()();
  v65 = type metadata accessor for MetricEnvironment();
  (*(*(v65 - 8) + 56))(v64, 0, 1, v65);
  v66 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SeymourCore12PortableEnumOyAA16MetricDeviceTypeOGMd);
  (*(*(v66 - 8) + 56))(v99, 1, 1, v66);
  v67 = type metadata accessor for MetricRemoteIdentifier();
  (*(*(v67 - 8) + 56))(v100, 1, 1, v67);
  v68 = v90;
  MetricClickStream.init(type:page:identifier:badgingCounts:groupActivity:environment:remoteParticipantDeviceType:topicRoutingBehavior:metadata:)();
  v69 = v94;
  v70 = v96;
  (*(v94 + 16))(v92, v68, v96);
  v71 = v101;
  MetricClickStreamOccurred.init(_:)();
  (*(v58 + 8))(v60, v58);
  swift_getObjectType();
  _s12SeymourMedia24MetricPageChangeOccurredVAC0A6Client5EventAAWlTm_0(&lazy protocol witness table cache variable for type MetricClickStreamOccurred and conformance MetricClickStreamOccurred, MEMORY[0x277D542C0]);
  v72 = v71;
  v73 = v102;
  dispatch thunk of EventHubProtocol.publish<A>(_:)();
  swift_unknownObjectRelease();
  (*(v103 + 8))(v72, v73);
  (*(v69 + 8))(v68, v70);
  return (*(v106 + 8))(v104, v107);
}

uint64_t _s12SeymourMedia24MetricPageChangeOccurredVAC0A6Client5EventAAWlTm_0(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t MetricPublishing.publishImpressions(on:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v58 = a1;
  v6 = type metadata accessor for MetricClickStreamOccurred();
  v7 = *(v6 - 8);
  v63 = v6;
  v64 = v7;
  MEMORY[0x28223BE20](v6);
  v62 = &v51 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for MetricIdentifier();
  MEMORY[0x28223BE20](v9 - 8);
  v61 = &v51 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SeymourCore12PortableEnumOyAA16MetricDeviceTypeOGSgMd);
  MEMORY[0x28223BE20](v11 - 8);
  v60 = &v51 - v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SeymourCore17MetricEnvironmentVSgMd);
  MEMORY[0x28223BE20](v13 - 8);
  v59 = &v51 - v14;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SeymourCore19MetricGroupActivityVSgMd);
  MEMORY[0x28223BE20](v15 - 8);
  v55 = &v51 - v16;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SeymourCore19MetricBadgingCountsVSgMd);
  MEMORY[0x28223BE20](v17 - 8);
  v52 = &v51 - v18;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SeymourCore10MetricPageVSgMd);
  MEMORY[0x28223BE20](v19 - 8);
  v21 = &v51 - v20;
  v22 = type metadata accessor for MetricClickStreamType();
  v23 = *(v22 - 8);
  MEMORY[0x28223BE20](v22);
  v25 = (&v51 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0));
  v26 = type metadata accessor for MetricClickStream();
  v56 = *(v26 - 8);
  v57 = v26;
  MEMORY[0x28223BE20](v26);
  v54 = &v51 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = MEMORY[0x28223BE20](v28);
  v53 = &v51 - v30;
  v31 = *(a3 + 16);
  v51 = v3;
  v31(v65, a2, a3, v29);
  v32 = v66;
  v33 = v67;
  __swift_project_boxed_opaque_existential_1(v65, v66);
  v34 = (*(v33 + 48))(v58, v32, v33);
  if (v34)
  {
    v35 = v34;
  }

  else
  {
    v35 = MEMORY[0x277D84F90];
  }

  __swift_destroy_boxed_opaque_existential_1(v65);
  *v25 = v35;
  (*(v23 + 104))(v25, *MEMORY[0x277D52100], v22);
  v36 = a2;
  v37 = a3;
  (*(a3 + 24))(a2, a3);
  v38 = type metadata accessor for MetricPage();
  (*(*(v38 - 8) + 56))(v21, 0, 1, v38);
  v39 = type metadata accessor for MetricBadgingCounts();
  (*(*(v39 - 8) + 56))(v52, 1, 1, v39);
  v40 = type metadata accessor for MetricGroupActivity();
  (*(*(v40 - 8) + 56))(v55, 1, 1, v40);
  v41 = v59;
  static MetricEnvironment.current()();
  v42 = type metadata accessor for MetricEnvironment();
  (*(*(v42 - 8) + 56))(v41, 0, 1, v42);
  v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SeymourCore12PortableEnumOyAA16MetricDeviceTypeOGMd);
  (*(*(v43 - 8) + 56))(v60, 1, 1, v43);
  v44 = type metadata accessor for MetricRemoteIdentifier();
  (*(*(v44 - 8) + 56))(v61, 1, 1, v44);
  v45 = v53;
  MetricClickStream.init(type:page:identifier:badgingCounts:groupActivity:environment:remoteParticipantDeviceType:topicRoutingBehavior:metadata:)();
  v47 = v56;
  v46 = v57;
  (*(v56 + 16))(v54, v45, v57);
  v48 = v62;
  MetricClickStreamOccurred.init(_:)();
  (*(v37 + 8))(v36, v37);
  swift_getObjectType();
  _s12SeymourMedia24MetricPageChangeOccurredVAC0A6Client5EventAAWlTm_0(&lazy protocol witness table cache variable for type MetricClickStreamOccurred and conformance MetricClickStreamOccurred, MEMORY[0x277D542C0]);
  v49 = v63;
  dispatch thunk of EventHubProtocol.publish<A>(_:)();
  swift_unknownObjectRelease();
  (*(v64 + 8))(v48, v49);
  return (*(v47 + 8))(v45, v46);
}

uint64_t getEnumTagSinglePayload for WorkoutNotificationUnitView(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 33))
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

uint64_t storeEnumTagSinglePayload for WorkoutNotificationUnitView(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *(result + 32) = 0;
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 33) = 1;
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

    *(result + 33) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t WorkoutNotificationUnitView.fiuiDistanceUnit(from:)(uint64_t result, unint64_t a2)
{
  if (!a2)
  {
    return 0;
  }

  v3 = HIBYTE(a2) & 0xF;
  v4 = result & 0xFFFFFFFFFFFFLL;
  if (!((a2 & 0x2000000000000000) != 0 ? v3 : result & 0xFFFFFFFFFFFFLL))
  {
    return 0;
  }

  if ((a2 & 0x1000000000000000) == 0)
  {
    if ((a2 & 0x2000000000000000) != 0)
    {
      v23[0] = result;
      v23[1] = a2 & 0xFFFFFFFFFFFFFFLL;
      if (result == 43)
      {
        if (v3)
        {
          if (--v3)
          {
            v7 = 0;
            v15 = v23 + 1;
            while (1)
            {
              v16 = *v15 - 48;
              if (v16 > 9)
              {
                break;
              }

              if (!is_mul_ok(v7, 0xAuLL))
              {
                break;
              }

              v10 = __CFADD__(10 * v7, v16);
              v7 = 10 * v7 + v16;
              if (v10)
              {
                break;
              }

              ++v15;
              if (!--v3)
              {
                goto LABEL_66;
              }
            }
          }

          goto LABEL_65;
        }

LABEL_75:
        __break(1u);
        return result;
      }

      if (result != 45)
      {
        if (v3)
        {
          v7 = 0;
          v18 = v23;
          while (1)
          {
            v19 = *v18 - 48;
            if (v19 > 9)
            {
              break;
            }

            if (!is_mul_ok(v7, 0xAuLL))
            {
              break;
            }

            v10 = __CFADD__(10 * v7, v19);
            v7 = 10 * v7 + v19;
            if (v10)
            {
              break;
            }

            ++v18;
            if (!--v3)
            {
              goto LABEL_66;
            }
          }
        }

        goto LABEL_65;
      }

      if (v3)
      {
        if (--v3)
        {
          v7 = 0;
          v11 = v23 + 1;
          while (1)
          {
            v12 = *v11 - 48;
            if (v12 > 9)
            {
              break;
            }

            if (!is_mul_ok(v7, 0xAuLL))
            {
              break;
            }

            v10 = 10 * v7 >= v12;
            v7 = 10 * v7 - v12;
            if (!v10)
            {
              break;
            }

            ++v11;
            if (!--v3)
            {
              goto LABEL_66;
            }
          }
        }

        goto LABEL_65;
      }
    }

    else
    {
      if ((result & 0x1000000000000000) != 0)
      {
        result = (a2 & 0xFFFFFFFFFFFFFFFLL) + 32;
      }

      else
      {
        result = _StringObject.sharedUTF8.getter();
      }

      v6 = *result;
      if (v6 == 43)
      {
        if (v4 >= 1)
        {
          v3 = v4 - 1;
          if (v4 != 1)
          {
            v7 = 0;
            if (result)
            {
              v13 = (result + 1);
              while (1)
              {
                v14 = *v13 - 48;
                if (v14 > 9)
                {
                  goto LABEL_65;
                }

                if (!is_mul_ok(v7, 0xAuLL))
                {
                  goto LABEL_65;
                }

                v10 = __CFADD__(10 * v7, v14);
                v7 = 10 * v7 + v14;
                if (v10)
                {
                  goto LABEL_65;
                }

                ++v13;
                if (!--v3)
                {
                  goto LABEL_66;
                }
              }
            }

            goto LABEL_57;
          }

          goto LABEL_65;
        }

        goto LABEL_74;
      }

      if (v6 != 45)
      {
        if (v4)
        {
          v7 = 0;
          if (result)
          {
            while (1)
            {
              v17 = *result - 48;
              if (v17 > 9)
              {
                goto LABEL_65;
              }

              if (!is_mul_ok(v7, 0xAuLL))
              {
                goto LABEL_65;
              }

              v10 = __CFADD__(10 * v7, v17);
              v7 = 10 * v7 + v17;
              if (v10)
              {
                goto LABEL_65;
              }

              ++result;
              if (!--v4)
              {
                goto LABEL_57;
              }
            }
          }

          goto LABEL_57;
        }

LABEL_65:
        v7 = 0;
        LOBYTE(v3) = 1;
        goto LABEL_66;
      }

      if (v4 >= 1)
      {
        v3 = v4 - 1;
        if (v4 != 1)
        {
          v7 = 0;
          if (result)
          {
            v8 = (result + 1);
            while (1)
            {
              v9 = *v8 - 48;
              if (v9 > 9)
              {
                goto LABEL_65;
              }

              if (!is_mul_ok(v7, 0xAuLL))
              {
                goto LABEL_65;
              }

              v10 = 10 * v7 >= v9;
              v7 = 10 * v7 - v9;
              if (!v10)
              {
                goto LABEL_65;
              }

              ++v8;
              if (!--v3)
              {
                goto LABEL_66;
              }
            }
          }

LABEL_57:
          LOBYTE(v3) = 0;
LABEL_66:
          v24 = v3;
          v20 = v3;
          goto LABEL_67;
        }

        goto LABEL_65;
      }

      __break(1u);
    }

    __break(1u);
LABEL_74:
    __break(1u);
    goto LABEL_75;
  }

  v21 = result;

  v7 = specialized _parseInteger<A, B>(ascii:radix:)(v21, a2, 10);
  v20 = v22;

LABEL_67:
  if (v20)
  {
    return 0;
  }

  else
  {
    return v7;
  }
}

uint64_t WorkoutNotificationUnitView.distanceType.getter()
{
  v0 = type metadata accessor for Logger();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v15 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = dispatch thunk of WorkoutNotificationUnit.activityType.getter();
  if (v4)
  {
    v5 = v4;
    v6 = FIUIDistanceTypeForActivityType();

    return v6;
  }

  else
  {
    v8 = dispatch thunk of WorkoutNotificationUnit.key.getter();
    WorkoutNotificationUnitView.fiuiDistanceUnit(from:)(v8, v9);
    v11 = v10;

    if (v11)
    {
      static WOLog.alerts.getter();
      v12 = Logger.logObject.getter();
      v13 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v12, v13))
      {
        v14 = swift_slowAlloc();
        *v14 = 0;
        _os_log_impl(&dword_20C66F000, v12, v13, "WorkoutNotificationUnitView cannot determine distance unit because unit.key and unit.activityType are nil.", v14, 2u);
        MEMORY[0x20F30E080](v14, -1, -1);
      }

      (*(v1 + 8))(v3, v0);
    }

    return 1;
  }
}

void WorkoutNotificationUnitView.body.getter(uint64_t a1@<X8>)
{
  v2 = v1;
  v318 = a1;
  v3 = type metadata accessor for LocalizedStringKey.StringInterpolation();
  MEMORY[0x28223BE20](v3 - 8);
  v294 = &v290 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for EnvironmentValues();
  v292 = *(v5 - 8);
  v293 = v5;
  MEMORY[0x28223BE20](v5);
  v291 = &v290 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v300 = type metadata accessor for Duration.TimeFormatStyle.Pattern();
  v298 = *(v300 - 8);
  MEMORY[0x28223BE20](v300);
  v296 = &v290 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v299 = type metadata accessor for Duration.TimeFormatStyle();
  v297 = *(v299 - 8);
  MEMORY[0x28223BE20](v299);
  v295 = &v290 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for NumberFormatStyleConfiguration.Precision();
  v306 = *(v9 - 8);
  v307 = v9;
  MEMORY[0x28223BE20](v9);
  v305 = &v290 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for FloatingPointRoundingRule();
  v309 = *(v11 - 8);
  v310 = v11;
  MEMORY[0x28223BE20](v11);
  v308 = &v290 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for Locale();
  MEMORY[0x28223BE20](v13 - 8);
  v15 = &v290 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation24FloatingPointFormatStyleVySdGMd);
  v303 = *(v16 - 8);
  v304 = v16;
  MEMORY[0x28223BE20](v16);
  v18 = &v290 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v19);
  v21 = &v290 - v20;
  MEMORY[0x28223BE20](v22);
  v302 = &v290 - v23;
  v24 = type metadata accessor for Color.RGBColorSpace();
  v313 = *(v24 - 8);
  v314 = v24;
  MEMORY[0x28223BE20](v24);
  v315 = &v290 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = type metadata accessor for WorkoutNotificationUnit.NotificationUnitType();
  v27 = *(v26 - 8);
  MEMORY[0x28223BE20](v26);
  MEMORY[0x28223BE20](v28);
  v30 = &v290 - v29;
  v31 = *v1;
  v32 = v2[1];
  v316 = v2[2];
  v317 = v32;
  v312 = v2[3];
  v311 = *(v2 + 32);
  dispatch thunk of WorkoutNotificationUnit.type.getter();
  v33 = (*(v27 + 88))(v30, v26);
  if (v33 == *MEMORY[0x277D7DAE8])
  {
    v34 = dispatch thunk of WorkoutNotificationUnit.value.getter();
    if ((v35 & 1) != 0 || (v36 = v34, (v37 = dispatch thunk of WorkoutNotificationUnit.activityType.getter()) == 0))
    {
      v327 = 0u;
      v328 = 0u;
      v326 = 0u;
      v324 = 0;
      v325 = 0;
    }

    else
    {
      v38 = v37;
      KeyPath = swift_getKeyPath();
      LOBYTE(v342._countAndFlagsBits) = 0;
      LOBYTE(v346._countAndFlagsBits) = 0;
      v40 = v316;
      if (v316)
      {
        v41 = v317;
        v42 = v317;
        v43 = v40;
      }

      else
      {
        (*(v313 + 104))(v315, *MEMORY[0x277CE0EE0], v314);
        v41 = v317;
        v79 = v317;
        v43 = Color.init(_:red:green:blue:opacity:)();
      }

      v324._countAndFlagsBits = v38;
      v324._object = v36;
      LOBYTE(v325._countAndFlagsBits) = 0;
      v325._object = 16;
      v326 = v41;
      *&v327 = 0;
      *(&v327 + 1) = KeyPath;
      LOBYTE(v328) = 0;
      *(&v328 + 1) = v43;
    }

    v348 = v326;
    v349 = v327;
    v350 = v328;
    v346 = v324;
    v347 = v325;
    v339 = 0;
    v351[0] = 0;
    outlined init with copy of _ConditionalContent<_ConditionalContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Text, WorkoutNotificationFont>, _EnvironmentKeyWritingModifier<CGFloat>>, _EnvironmentKeyWritingModifier<Int?>>, _ForegroundStyleModifier<Color>>, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Text, WorkoutNotificationFont>, _EnvironmentKeyWritingModifier<CGFloat>>, _EnvironmentKeyWritingModifier<Int?>>, _ForegroundStyleModifier<Color>>>, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Text, WorkoutNotificationFont>, _EnvironmentKeyWritingModifier<CGFloat>>, _EnvironmentKeyWritingModifier<Int?>>, _ForegroundStyleModifier<Color>>>?(&v324, &v342, &_s7SwiftUI15ModifiedContentVy07WorkoutB017CadenceMetricViewVAA24_ForegroundStyleModifierVyAA5ColorVGGSgMd);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVy07WorkoutB017CadenceMetricViewVAA24_ForegroundStyleModifierVyAA5ColorVGGSgMd);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVy07WorkoutB014PaceMetricViewVAA24_ForegroundStyleModifierVyAA5ColorVGGSgMd);
    lazy protocol witness table accessor for type ModifiedContent<ElapsedTimeView, _ForegroundStyleModifier<Color>>? and conformance <A> A?(&lazy protocol witness table cache variable for type ModifiedContent<CadenceMetricView, _ForegroundStyleModifier<Color>>? and conformance <A> A?, &_s7SwiftUI15ModifiedContentVy07WorkoutB017CadenceMetricViewVAA24_ForegroundStyleModifierVyAA5ColorVGGSgMd, &_s7SwiftUI15ModifiedContentVy07WorkoutB017CadenceMetricViewVAA24_ForegroundStyleModifierVyAA5ColorVGGSgMR, lazy protocol witness table accessor for type ModifiedContent<CadenceMetricView, _ForegroundStyleModifier<Color>> and conformance <> ModifiedContent<A, B>);
    lazy protocol witness table accessor for type ModifiedContent<ElapsedTimeView, _ForegroundStyleModifier<Color>>? and conformance <A> A?(&lazy protocol witness table cache variable for type ModifiedContent<PaceMetricView, _ForegroundStyleModifier<Color>>? and conformance <A> A?, &_s7SwiftUI15ModifiedContentVy07WorkoutB014PaceMetricViewVAA24_ForegroundStyleModifierVyAA5ColorVGGSgMd, &_s7SwiftUI15ModifiedContentVy07WorkoutB014PaceMetricViewVAA24_ForegroundStyleModifierVyAA5ColorVGGSgMR, lazy protocol witness table accessor for type ModifiedContent<PaceMetricView, _ForegroundStyleModifier<Color>> and conformance <> ModifiedContent<A, B>);
    _ConditionalContent<>.init(storage:)();
    v348 = *v344;
    v349 = *&v344[16];
    v350 = *&v344[32];
    v351[0] = v344[48];
    v346 = v342;
    v347 = v343;
    v340 = 0;
    v351[25] = 0;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI19_ConditionalContentVyAA08ModifiedD0Vy07WorkoutB017CadenceMetricViewVAA24_ForegroundStyleModifierVyAA5ColorVGGSgAEyAF04PacehI0VAMGSgGMd);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI19_ConditionalContentVyAA08ModifiedD0Vy07WorkoutB015PowerMetricViewVAA24_ForegroundStyleModifierVyAA5ColorVGGSgAEyAF07CadencehI0VAMGSgGMd);
    lazy protocol witness table accessor for type _ConditionalContent<ModifiedContent<CadenceMetricView, _ForegroundStyleModifier<Color>>?, ModifiedContent<PaceMetricView, _ForegroundStyleModifier<Color>>?> and conformance <> _ConditionalContent<A, B>();
    lazy protocol witness table accessor for type _ConditionalContent<ModifiedContent<PowerMetricView, _ForegroundStyleModifier<Color>>?, ModifiedContent<CadenceMetricView, _ForegroundStyleModifier<Color>>?> and conformance <> _ConditionalContent<A, B>();
    _ConditionalContent<>.init(storage:)();
    v350 = v336[0];
    *v351 = v336[1];
    *&v351[10] = *(&v336[1] + 10);
    v346 = v332;
    v347 = v333;
    v348 = v334;
    v349 = v335;
    v341 = 0;
    v351[34] = 0;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI19_ConditionalContentVyACyAA08ModifiedD0Vy07WorkoutB017CadenceMetricViewVAA24_ForegroundStyleModifierVyAA5ColorVGGSgAEyAF04PacehI0VAMGSgGACyAEyAF05PowerhI0VAMGSgAOGGMd);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI19_ConditionalContentVyACyAA08ModifiedD0Vy07WorkoutB018DistanceMetricTextVAA24_ForegroundStyleModifierVyAA5ColorVGGSgAEyAF06EnergyH4ViewVAMGSgGACyAEyAF0h7HeadingO0VyAA0I0VGAMGSgAEyAF0hI0VAA022_EnvironmentKeyWritingL0VyALSgGGSgGGMd);
    lazy protocol witness table accessor for type _ConditionalContent<_ConditionalContent<ModifiedContent<CadenceMetricView, _ForegroundStyleModifier<Color>>?, ModifiedContent<PaceMetricView, _ForegroundStyleModifier<Color>>?>, _ConditionalContent<ModifiedContent<PowerMetricView, _ForegroundStyleModifier<Color>>?, ModifiedContent<CadenceMetricView, _ForegroundStyleModifier<Color>>?>> and conformance <> _ConditionalContent<A, B>();
    lazy protocol witness table accessor for type _ConditionalContent<_ConditionalContent<ModifiedContent<DistanceMetricText, _ForegroundStyleModifier<Color>>?, ModifiedContent<EnergyMetricView, _ForegroundStyleModifier<Color>>?>, _ConditionalContent<ModifiedContent<MetricHeadingView<Text>, _ForegroundStyleModifier<Color>>?, ModifiedContent<MetricText, _EnvironmentKeyWritingModifier<Color?>>?>> and conformance <> _ConditionalContent<A, B>();
    _ConditionalContent<>.init(storage:)();
    v350 = *&v344[32];
    *v351 = *&v344[48];
    *&v351[16] = *&v344[64];
    *&v351[31] = *&v344[79];
    v346 = v342;
    v347 = v343;
    v348 = *v344;
    v349 = *&v344[16];
    v352 = 0;
    v351[35] = 0;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI19_ConditionalContentVyACyACyAA08ModifiedD0Vy07WorkoutB017CadenceMetricViewVAA24_ForegroundStyleModifierVyAA5ColorVGGSgAEyAF04PacehI0VAMGSgGACyAEyAF05PowerhI0VAMGSgAOGGACyACyAEyAF08DistanceH4TextVAMGSgAEyAF06EnergyhI0VAMGSgGACyAEyAF0h7HeadingI0VyAA0Q0VGAMGSgAEyAF0hQ0VAA022_EnvironmentKeyWritingL0VyALSgGGSgGGGMd);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI19_ConditionalContentVyACyACyAA08ModifiedD0VyAEyAA5ImageVAA24_ForegroundStyleModifierVyAA5ColorVGG07WorkoutB015MetricValueFontVGSgAEyAN04PaceL4ViewVALGSgGACyAvEyAN05PowerlP0VALGSgGGACyACyACyAEyAN0L4TextVALGA4_GSgAVGACyAEyAN011ElapsedTimeP0VALGSgACyACyAEyAEyAEyAEyAA0R0VAN0k12NotificationN0VGAA022_EnvironmentKeyWritingI0Vy12CoreGraphics7CGFloatVGGA18_ySiSgGGALGA27_GA27_GSgGGGMd);
    lazy protocol witness table accessor for type _ConditionalContent<_ConditionalContent<_ConditionalContent<ModifiedContent<CadenceMetricView, _ForegroundStyleModifier<Color>>?, ModifiedContent<PaceMetricView, _ForegroundStyleModifier<Color>>?>, _ConditionalContent<ModifiedContent<PowerMetricView, _ForegroundStyleModifier<Color>>?, ModifiedContent<CadenceMetricView, _ForegroundStyleModifier<Color>>?>>, _ConditionalContent<_ConditionalContent<ModifiedContent<DistanceMetricText, _ForegroundStyleModifier<Color>>?, ModifiedContent<EnergyMetricView, _ForegroundStyleModifier<Color>>?>, _ConditionalContent<ModifiedContent<MetricHeadingView<Text>, _ForegroundStyleModifier<Color>>?, ModifiedContent<MetricText, _EnvironmentKeyWritingModifier<Color?>>?>>> and conformance <> _ConditionalContent<A, B>();
    lazy protocol witness table accessor for type _ConditionalContent<_ConditionalContent<_ConditionalContent<ModifiedContent<ModifiedContent<Image, _ForegroundStyleModifier<Color>>, MetricValueFont>?, ModifiedContent<PaceMetricView, _ForegroundStyleModifier<Color>>?>, _ConditionalContent<ModifiedContent<PaceMetricView, _ForegroundStyleModifier<Color>>?, ModifiedContent<PowerMetricView, _ForegroundStyleModifier<Color>>?>>, _ConditionalContent<_ConditionalContent<_ConditionalContent<ModifiedContent<MetricText, _ForegroundStyleModifier<Color>>, ModifiedContent<MetricText, _ForegroundStyleModifier<Color>>>?, ModifiedContent<PaceMetricView, _ForegroundStyleModifier<Color>>?>, _ConditionalContent<ModifiedContent<ElapsedTimeView, _ForegroundStyleModifier<Color>>?, _ConditionalContent<_ConditionalContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Text, WorkoutNotificationFont>, _EnvironmentKeyWritingModifier<CGFloat>>, _EnvironmentKeyWritingModifier<Int?>>, _ForegroundStyleModifier<Color>>, Modifie();
    _ConditionalContent<>.init(storage:)();
    *&v344[32] = v336[0];
    *&v344[48] = v336[1];
    *&v344[64] = v336[2];
    *&v344[80] = v337;
    v342 = v332;
    v343 = v333;
    *v344 = v334;
    *&v344[16] = v335;
    v331 = 0;
    v345 = 0;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI19_ConditionalContentVyACyACyACyAA08ModifiedD0Vy07WorkoutB017CadenceMetricViewVAA24_ForegroundStyleModifierVyAA5ColorVGGSgAEyAF04PacehI0VAMGSgGACyAEyAF05PowerhI0VAMGSgAOGGACyACyAEyAF08DistanceH4TextVAMGSgAEyAF06EnergyhI0VAMGSgGACyAEyAF0h7HeadingI0VyAA0Q0VGAMGSgAEyAF0hQ0VAA022_EnvironmentKeyWritingL0VyALSgGGSgGGGACyACyACyAEyAEyAA5ImageVAMGAF0H9ValueFontVGSgASGACyAsXGGACyACyACyAEyA16_AMGA36_GSgASGACyAEyAF011ElapsedTimeI0VAMGSgACyACyAEyAEyAEyAEyA11_AF0f12NotificationY0VGA18_y12CoreGraphics7CGFloatVGGA18_ySiSgGGAMGA55_GA55_GSgGGGGMd);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI19_ConditionalContentVyAA08ModifiedD0Vy07WorkoutB015ElapsedTimeViewVAA24_ForegroundStyleModifierVyAA5ColorVGGSgAA4TextVGMd);
    lazy protocol witness table accessor for type _ConditionalContent<_ConditionalContent<_ConditionalContent<_ConditionalContent<ModifiedContent<CadenceMetricView, _ForegroundStyleModifier<Color>>?, ModifiedContent<PaceMetricView, _ForegroundStyleModifier<Color>>?>, _ConditionalContent<ModifiedContent<PowerMetricView, _ForegroundStyleModifier<Color>>?, ModifiedContent<CadenceMetricView, _ForegroundStyleModifier<Color>>?>>, _ConditionalContent<_ConditionalContent<ModifiedContent<DistanceMetricText, _ForegroundStyleModifier<Color>>?, ModifiedContent<EnergyMetricView, _ForegroundStyleModifier<Color>>?>, _ConditionalContent<ModifiedContent<MetricHeadingView<Text>, _ForegroundStyleModifier<Color>>?, ModifiedContent<MetricText, _EnvironmentKeyWritingModifier<Color?>>?>>>, _ConditionalContent<_ConditionalContent<_ConditionalContent<ModifiedContent<ModifiedContent<Image, _ForegroundStyleModifier<Color>>, MetricValueFont>?, ModifiedContent<PaceMetricView, _ForegroundStyleModifier<Color>>?>, _ConditionalContent<ModifiedC();
    lazy protocol witness table accessor for type _ConditionalContent<ModifiedContent<ElapsedTimeView, _ForegroundStyleModifier<Color>>?, Text> and conformance <> _ConditionalContent<A, B>();
    _ConditionalContent<>.init(storage:)();
    outlined destroy of _ConditionalContent<_ConditionalContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Text, WorkoutNotificationFont>, _EnvironmentKeyWritingModifier<CGFloat>>, _EnvironmentKeyWritingModifier<Int?>>, _ForegroundStyleModifier<Color>>, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Text, WorkoutNotificationFont>, _EnvironmentKeyWritingModifier<CGFloat>>, _EnvironmentKeyWritingModifier<Int?>>, _ForegroundStyleModifier<Color>>>, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Text, WorkoutNotificationFont>, _EnvironmentKeyWritingModifier<CGFloat>>, _EnvironmentKeyWritingModifier<Int?>>, _ForegroundStyleModifier<Color>>>?(&v324, &_s7SwiftUI15ModifiedContentVy07WorkoutB017CadenceMetricViewVAA24_ForegroundStyleModifierVyAA5ColorVGGSgMd);
    v357 = v350;
    v358 = *v351;
    v359[0] = *&v351[16];
    v80 = *&v351[29];
    goto LABEL_65;
  }

  v301 = v31;
  if (v33 == *MEMORY[0x277D7DAD0])
  {
    v44 = dispatch thunk of WorkoutNotificationUnit.value.getter();
    if ((v45 & 1) != 0 || (v46 = v44, (v47 = dispatch thunk of WorkoutNotificationUnit.activityType.getter()) == 0))
    {
      v327 = 0u;
      v328 = 0u;
      v326 = 0u;
      v324 = 0;
      v325 = 0;
LABEL_38:
      v348 = v326;
      v349 = v327;
      v350 = v328;
      v346 = v324;
      v347 = v325;
      v339 = 1;
      v351[0] = 1;
      outlined init with copy of _ConditionalContent<_ConditionalContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Text, WorkoutNotificationFont>, _EnvironmentKeyWritingModifier<CGFloat>>, _EnvironmentKeyWritingModifier<Int?>>, _ForegroundStyleModifier<Color>>, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Text, WorkoutNotificationFont>, _EnvironmentKeyWritingModifier<CGFloat>>, _EnvironmentKeyWritingModifier<Int?>>, _ForegroundStyleModifier<Color>>>, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Text, WorkoutNotificationFont>, _EnvironmentKeyWritingModifier<CGFloat>>, _EnvironmentKeyWritingModifier<Int?>>, _ForegroundStyleModifier<Color>>>?(&v324, &v342, &_s7SwiftUI15ModifiedContentVy07WorkoutB014PaceMetricViewVAA24_ForegroundStyleModifierVyAA5ColorVGGSgMd);
      __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVy07WorkoutB017CadenceMetricViewVAA24_ForegroundStyleModifierVyAA5ColorVGGSgMd);
      __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVy07WorkoutB014PaceMetricViewVAA24_ForegroundStyleModifierVyAA5ColorVGGSgMd);
      lazy protocol witness table accessor for type ModifiedContent<ElapsedTimeView, _ForegroundStyleModifier<Color>>? and conformance <A> A?(&lazy protocol witness table cache variable for type ModifiedContent<CadenceMetricView, _ForegroundStyleModifier<Color>>? and conformance <A> A?, &_s7SwiftUI15ModifiedContentVy07WorkoutB017CadenceMetricViewVAA24_ForegroundStyleModifierVyAA5ColorVGGSgMd, &_s7SwiftUI15ModifiedContentVy07WorkoutB017CadenceMetricViewVAA24_ForegroundStyleModifierVyAA5ColorVGGSgMR, lazy protocol witness table accessor for type ModifiedContent<CadenceMetricView, _ForegroundStyleModifier<Color>> and conformance <> ModifiedContent<A, B>);
      lazy protocol witness table accessor for type ModifiedContent<ElapsedTimeView, _ForegroundStyleModifier<Color>>? and conformance <A> A?(&lazy protocol witness table cache variable for type ModifiedContent<PaceMetricView, _ForegroundStyleModifier<Color>>? and conformance <A> A?, &_s7SwiftUI15ModifiedContentVy07WorkoutB014PaceMetricViewVAA24_ForegroundStyleModifierVyAA5ColorVGGSgMd, &_s7SwiftUI15ModifiedContentVy07WorkoutB014PaceMetricViewVAA24_ForegroundStyleModifierVyAA5ColorVGGSgMR, lazy protocol witness table accessor for type ModifiedContent<PaceMetricView, _ForegroundStyleModifier<Color>> and conformance <> ModifiedContent<A, B>);
      _ConditionalContent<>.init(storage:)();
      v348 = *v344;
      v349 = *&v344[16];
      v350 = *&v344[32];
      v351[0] = v344[48];
      v346 = v342;
      v347 = v343;
      v340 = 0;
      v351[25] = 0;
      __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI19_ConditionalContentVyAA08ModifiedD0Vy07WorkoutB017CadenceMetricViewVAA24_ForegroundStyleModifierVyAA5ColorVGGSgAEyAF04PacehI0VAMGSgGMd);
      __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI19_ConditionalContentVyAA08ModifiedD0Vy07WorkoutB015PowerMetricViewVAA24_ForegroundStyleModifierVyAA5ColorVGGSgAEyAF07CadencehI0VAMGSgGMd);
      lazy protocol witness table accessor for type _ConditionalContent<ModifiedContent<CadenceMetricView, _ForegroundStyleModifier<Color>>?, ModifiedContent<PaceMetricView, _ForegroundStyleModifier<Color>>?> and conformance <> _ConditionalContent<A, B>();
      lazy protocol witness table accessor for type _ConditionalContent<ModifiedContent<PowerMetricView, _ForegroundStyleModifier<Color>>?, ModifiedContent<CadenceMetricView, _ForegroundStyleModifier<Color>>?> and conformance <> _ConditionalContent<A, B>();
      _ConditionalContent<>.init(storage:)();
      v350 = v336[0];
      *v351 = v336[1];
      *&v351[10] = *(&v336[1] + 10);
      v346 = v332;
      v347 = v333;
      v348 = v334;
      v349 = v335;
      v341 = 0;
      v351[34] = 0;
      __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI19_ConditionalContentVyACyAA08ModifiedD0Vy07WorkoutB017CadenceMetricViewVAA24_ForegroundStyleModifierVyAA5ColorVGGSgAEyAF04PacehI0VAMGSgGACyAEyAF05PowerhI0VAMGSgAOGGMd);
      __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI19_ConditionalContentVyACyAA08ModifiedD0Vy07WorkoutB018DistanceMetricTextVAA24_ForegroundStyleModifierVyAA5ColorVGGSgAEyAF06EnergyH4ViewVAMGSgGACyAEyAF0h7HeadingO0VyAA0I0VGAMGSgAEyAF0hI0VAA022_EnvironmentKeyWritingL0VyALSgGGSgGGMd);
      lazy protocol witness table accessor for type _ConditionalContent<_ConditionalContent<ModifiedContent<CadenceMetricView, _ForegroundStyleModifier<Color>>?, ModifiedContent<PaceMetricView, _ForegroundStyleModifier<Color>>?>, _ConditionalContent<ModifiedContent<PowerMetricView, _ForegroundStyleModifier<Color>>?, ModifiedContent<CadenceMetricView, _ForegroundStyleModifier<Color>>?>> and conformance <> _ConditionalContent<A, B>();
      lazy protocol witness table accessor for type _ConditionalContent<_ConditionalContent<ModifiedContent<DistanceMetricText, _ForegroundStyleModifier<Color>>?, ModifiedContent<EnergyMetricView, _ForegroundStyleModifier<Color>>?>, _ConditionalContent<ModifiedContent<MetricHeadingView<Text>, _ForegroundStyleModifier<Color>>?, ModifiedContent<MetricText, _EnvironmentKeyWritingModifier<Color?>>?>> and conformance <> _ConditionalContent<A, B>();
      _ConditionalContent<>.init(storage:)();
      v350 = *&v344[32];
      *v351 = *&v344[48];
      *&v351[16] = *&v344[64];
      *&v351[31] = *&v344[79];
      v346 = v342;
      v347 = v343;
      v348 = *v344;
      v349 = *&v344[16];
      v352 = 0;
      v351[35] = 0;
LABEL_39:
      __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI19_ConditionalContentVyACyACyAA08ModifiedD0Vy07WorkoutB017CadenceMetricViewVAA24_ForegroundStyleModifierVyAA5ColorVGGSgAEyAF04PacehI0VAMGSgGACyAEyAF05PowerhI0VAMGSgAOGGACyACyAEyAF08DistanceH4TextVAMGSgAEyAF06EnergyhI0VAMGSgGACyAEyAF0h7HeadingI0VyAA0Q0VGAMGSgAEyAF0hQ0VAA022_EnvironmentKeyWritingL0VyALSgGGSgGGGMd);
      __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI19_ConditionalContentVyACyACyAA08ModifiedD0VyAEyAA5ImageVAA24_ForegroundStyleModifierVyAA5ColorVGG07WorkoutB015MetricValueFontVGSgAEyAN04PaceL4ViewVALGSgGACyAvEyAN05PowerlP0VALGSgGGACyACyACyAEyAN0L4TextVALGA4_GSgAVGACyAEyAN011ElapsedTimeP0VALGSgACyACyAEyAEyAEyAEyAA0R0VAN0k12NotificationN0VGAA022_EnvironmentKeyWritingI0Vy12CoreGraphics7CGFloatVGGA18_ySiSgGGALGA27_GA27_GSgGGGMd);
      lazy protocol witness table accessor for type _ConditionalContent<_ConditionalContent<_ConditionalContent<ModifiedContent<CadenceMetricView, _ForegroundStyleModifier<Color>>?, ModifiedContent<PaceMetricView, _ForegroundStyleModifier<Color>>?>, _ConditionalContent<ModifiedContent<PowerMetricView, _ForegroundStyleModifier<Color>>?, ModifiedContent<CadenceMetricView, _ForegroundStyleModifier<Color>>?>>, _ConditionalContent<_ConditionalContent<ModifiedContent<DistanceMetricText, _ForegroundStyleModifier<Color>>?, ModifiedContent<EnergyMetricView, _ForegroundStyleModifier<Color>>?>, _ConditionalContent<ModifiedContent<MetricHeadingView<Text>, _ForegroundStyleModifier<Color>>?, ModifiedContent<MetricText, _EnvironmentKeyWritingModifier<Color?>>?>>> and conformance <> _ConditionalContent<A, B>();
      lazy protocol witness table accessor for type _ConditionalContent<_ConditionalContent<_ConditionalContent<ModifiedContent<ModifiedContent<Image, _ForegroundStyleModifier<Color>>, MetricValueFont>?, ModifiedContent<PaceMetricView, _ForegroundStyleModifier<Color>>?>, _ConditionalContent<ModifiedContent<PaceMetricView, _ForegroundStyleModifier<Color>>?, ModifiedContent<PowerMetricView, _ForegroundStyleModifier<Color>>?>>, _ConditionalContent<_ConditionalContent<_ConditionalContent<ModifiedContent<MetricText, _ForegroundStyleModifier<Color>>, ModifiedContent<MetricText, _ForegroundStyleModifier<Color>>>?, ModifiedContent<PaceMetricView, _ForegroundStyleModifier<Color>>?>, _ConditionalContent<ModifiedContent<ElapsedTimeView, _ForegroundStyleModifier<Color>>?, _ConditionalContent<_ConditionalContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Text, WorkoutNotificationFont>, _EnvironmentKeyWritingModifier<CGFloat>>, _EnvironmentKeyWritingModifier<Int?>>, _ForegroundStyleModifier<Color>>, Modifie();
      _ConditionalContent<>.init(storage:)();
      *&v344[32] = v336[0];
      *&v344[48] = v336[1];
      *&v344[64] = v336[2];
      *&v344[80] = v337;
      v342 = v332;
      v343 = v333;
      *v344 = v334;
      *&v344[16] = v335;
      v331 = 0;
      v345 = 0;
      __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI19_ConditionalContentVyACyACyACyAA08ModifiedD0Vy07WorkoutB017CadenceMetricViewVAA24_ForegroundStyleModifierVyAA5ColorVGGSgAEyAF04PacehI0VAMGSgGACyAEyAF05PowerhI0VAMGSgAOGGACyACyAEyAF08DistanceH4TextVAMGSgAEyAF06EnergyhI0VAMGSgGACyAEyAF0h7HeadingI0VyAA0Q0VGAMGSgAEyAF0hQ0VAA022_EnvironmentKeyWritingL0VyALSgGGSgGGGACyACyACyAEyAEyAA5ImageVAMGAF0H9ValueFontVGSgASGACyAsXGGACyACyACyAEyA16_AMGA36_GSgASGACyAEyAF011ElapsedTimeI0VAMGSgACyACyAEyAEyAEyAEyA11_AF0f12NotificationY0VGA18_y12CoreGraphics7CGFloatVGGA18_ySiSgGGAMGA55_GA55_GSgGGGGMd);
      __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI19_ConditionalContentVyAA08ModifiedD0Vy07WorkoutB015ElapsedTimeViewVAA24_ForegroundStyleModifierVyAA5ColorVGGSgAA4TextVGMd);
      lazy protocol witness table accessor for type _ConditionalContent<_ConditionalContent<_ConditionalContent<_ConditionalContent<ModifiedContent<CadenceMetricView, _ForegroundStyleModifier<Color>>?, ModifiedContent<PaceMetricView, _ForegroundStyleModifier<Color>>?>, _ConditionalContent<ModifiedContent<PowerMetricView, _ForegroundStyleModifier<Color>>?, ModifiedContent<CadenceMetricView, _ForegroundStyleModifier<Color>>?>>, _ConditionalContent<_ConditionalContent<ModifiedContent<DistanceMetricText, _ForegroundStyleModifier<Color>>?, ModifiedContent<EnergyMetricView, _ForegroundStyleModifier<Color>>?>, _ConditionalContent<ModifiedContent<MetricHeadingView<Text>, _ForegroundStyleModifier<Color>>?, ModifiedContent<MetricText, _EnvironmentKeyWritingModifier<Color?>>?>>>, _ConditionalContent<_ConditionalContent<_ConditionalContent<ModifiedContent<ModifiedContent<Image, _ForegroundStyleModifier<Color>>, MetricValueFont>?, ModifiedContent<PaceMetricView, _ForegroundStyleModifier<Color>>?>, _ConditionalContent<ModifiedC();
      lazy protocol witness table accessor for type _ConditionalContent<ModifiedContent<ElapsedTimeView, _ForegroundStyleModifier<Color>>?, Text> and conformance <> _ConditionalContent<A, B>();
      _ConditionalContent<>.init(storage:)();
      outlined destroy of _ConditionalContent<_ConditionalContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Text, WorkoutNotificationFont>, _EnvironmentKeyWritingModifier<CGFloat>>, _EnvironmentKeyWritingModifier<Int?>>, _ForegroundStyleModifier<Color>>, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Text, WorkoutNotificationFont>, _EnvironmentKeyWritingModifier<CGFloat>>, _EnvironmentKeyWritingModifier<Int?>>, _ForegroundStyleModifier<Color>>>, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Text, WorkoutNotificationFont>, _EnvironmentKeyWritingModifier<CGFloat>>, _EnvironmentKeyWritingModifier<Int?>>, _ForegroundStyleModifier<Color>>>?(&v324, &_s7SwiftUI15ModifiedContentVy07WorkoutB014PaceMetricViewVAA24_ForegroundStyleModifierVyAA5ColorVGGSgMd);
LABEL_40:
      v357 = v350;
      v358 = *v351;
      v359[0] = *&v351[16];
      *(v359 + 13) = *&v351[29];
      v353 = v346;
      v354 = v347;
      v91 = v348;
      v92 = v349;
LABEL_66:
      v355 = v91;
      v356 = v92;
LABEL_67:
      v125 = v358;
      v126 = v318;
      *(v318 + 64) = v357;
      *(v126 + 80) = v125;
      *(v126 + 96) = v359[0];
      *(v126 + 109) = *(v359 + 13);
      v127 = v354;
      *v126 = v353;
      *(v126 + 16) = v127;
      v128 = v356;
      *(v126 + 32) = v355;
      *(v126 + 48) = v128;
      return;
    }

    v48 = v47;
    v49 = swift_getKeyPath();
    LOBYTE(v346._countAndFlagsBits) = 0;
    v50 = v316;
    if (v316)
    {
      v51 = v317;
      v52 = v317;
      v53 = v50;
LABEL_37:
      v324._countAndFlagsBits = v51;
      v324._object = 8;
      v325._countAndFlagsBits = v48;
      v325._object = v49;
      LOBYTE(v326) = 0;
      *(&v326 + 1) = v46;
      LOBYTE(v327) = 0;
      *(&v327 + 1) = 0;
      *&v328 = 0;
      *(&v328 + 1) = v53;

      goto LABEL_38;
    }

    object = objc_opt_self();
    v51 = v317;
    v88 = v317;
    v89 = v48;
    v90 = [object paceColors];
    if (v90)
    {
      object = v90;
      v30 = [v90 nonGradientTextColor];

      if (v30)
      {
        v53 = Color.init(uiColor:)();

        goto LABEL_37;
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
    goto LABEL_219;
  }

  if (v33 == *MEMORY[0x277D7DAE0])
  {
    v54 = dispatch thunk of WorkoutNotificationUnit.value.getter();
    if ((v55 & 1) != 0 || (v56 = v54, (v57 = dispatch thunk of WorkoutNotificationUnit.activityType.getter()) == 0))
    {
      *&v330 = 0;
      v328 = 0u;
      v329 = 0u;
      v326 = 0u;
      v327 = 0u;
      v324 = 0;
      v325 = 0;
LABEL_52:
      v350 = v328;
      *v351 = v329;
      *&v351[16] = v330;
      v346 = v324;
      v347 = v325;
      v348 = v326;
      v349 = v327;
      v339 = 0;
      v351[24] = 0;
      v120 = &_s7SwiftUI15ModifiedContentVy07WorkoutB015PowerMetricViewVAA24_ForegroundStyleModifierVyAA5ColorVGGSgMd;
      outlined init with copy of _ConditionalContent<_ConditionalContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Text, WorkoutNotificationFont>, _EnvironmentKeyWritingModifier<CGFloat>>, _EnvironmentKeyWritingModifier<Int?>>, _ForegroundStyleModifier<Color>>, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Text, WorkoutNotificationFont>, _EnvironmentKeyWritingModifier<CGFloat>>, _EnvironmentKeyWritingModifier<Int?>>, _ForegroundStyleModifier<Color>>>, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Text, WorkoutNotificationFont>, _EnvironmentKeyWritingModifier<CGFloat>>, _EnvironmentKeyWritingModifier<Int?>>, _ForegroundStyleModifier<Color>>>?(&v324, &v342, &_s7SwiftUI15ModifiedContentVy07WorkoutB015PowerMetricViewVAA24_ForegroundStyleModifierVyAA5ColorVGGSgMd);
      __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVy07WorkoutB015PowerMetricViewVAA24_ForegroundStyleModifierVyAA5ColorVGGSgMd);
      __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVy07WorkoutB017CadenceMetricViewVAA24_ForegroundStyleModifierVyAA5ColorVGGSgMd);
      lazy protocol witness table accessor for type ModifiedContent<ElapsedTimeView, _ForegroundStyleModifier<Color>>? and conformance <A> A?(&lazy protocol witness table cache variable for type ModifiedContent<PowerMetricView, _ForegroundStyleModifier<Color>>? and conformance <A> A?, &_s7SwiftUI15ModifiedContentVy07WorkoutB015PowerMetricViewVAA24_ForegroundStyleModifierVyAA5ColorVGGSgMd, &_s7SwiftUI15ModifiedContentVy07WorkoutB015PowerMetricViewVAA24_ForegroundStyleModifierVyAA5ColorVGGSgMR, lazy protocol witness table accessor for type ModifiedContent<PowerMetricView, _ForegroundStyleModifier<Color>> and conformance <> ModifiedContent<A, B>);
      lazy protocol witness table accessor for type ModifiedContent<ElapsedTimeView, _ForegroundStyleModifier<Color>>? and conformance <A> A?(&lazy protocol witness table cache variable for type ModifiedContent<CadenceMetricView, _ForegroundStyleModifier<Color>>? and conformance <A> A?, &_s7SwiftUI15ModifiedContentVy07WorkoutB017CadenceMetricViewVAA24_ForegroundStyleModifierVyAA5ColorVGGSgMd, &_s7SwiftUI15ModifiedContentVy07WorkoutB017CadenceMetricViewVAA24_ForegroundStyleModifierVyAA5ColorVGGSgMR, lazy protocol witness table accessor for type ModifiedContent<CadenceMetricView, _ForegroundStyleModifier<Color>> and conformance <> ModifiedContent<A, B>);
      _ConditionalContent<>.init(storage:)();
      v350 = *&v344[32];
      *v351 = *&v344[48];
      *&v351[9] = *&v344[57];
      v346 = v342;
      v347 = v343;
      v348 = *v344;
      v349 = *&v344[16];
      v340 = 1;
      v351[25] = 1;
LABEL_61:
      __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI19_ConditionalContentVyAA08ModifiedD0Vy07WorkoutB017CadenceMetricViewVAA24_ForegroundStyleModifierVyAA5ColorVGGSgAEyAF04PacehI0VAMGSgGMd);
      __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI19_ConditionalContentVyAA08ModifiedD0Vy07WorkoutB015PowerMetricViewVAA24_ForegroundStyleModifierVyAA5ColorVGGSgAEyAF07CadencehI0VAMGSgGMd);
      lazy protocol witness table accessor for type _ConditionalContent<ModifiedContent<CadenceMetricView, _ForegroundStyleModifier<Color>>?, ModifiedContent<PaceMetricView, _ForegroundStyleModifier<Color>>?> and conformance <> _ConditionalContent<A, B>();
      lazy protocol witness table accessor for type _ConditionalContent<ModifiedContent<PowerMetricView, _ForegroundStyleModifier<Color>>?, ModifiedContent<CadenceMetricView, _ForegroundStyleModifier<Color>>?> and conformance <> _ConditionalContent<A, B>();
      _ConditionalContent<>.init(storage:)();
      v350 = v336[0];
      *v351 = v336[1];
      *&v351[10] = *(&v336[1] + 10);
      v346 = v332;
      v347 = v333;
      v348 = v334;
      v349 = v335;
      v341 = 0;
      v351[34] = 0;
LABEL_62:
      __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI19_ConditionalContentVyACyAA08ModifiedD0Vy07WorkoutB017CadenceMetricViewVAA24_ForegroundStyleModifierVyAA5ColorVGGSgAEyAF04PacehI0VAMGSgGACyAEyAF05PowerhI0VAMGSgAOGGMd);
      __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI19_ConditionalContentVyACyAA08ModifiedD0Vy07WorkoutB018DistanceMetricTextVAA24_ForegroundStyleModifierVyAA5ColorVGGSgAEyAF06EnergyH4ViewVAMGSgGACyAEyAF0h7HeadingO0VyAA0I0VGAMGSgAEyAF0hI0VAA022_EnvironmentKeyWritingL0VyALSgGGSgGGMd);
      lazy protocol witness table accessor for type _ConditionalContent<_ConditionalContent<ModifiedContent<CadenceMetricView, _ForegroundStyleModifier<Color>>?, ModifiedContent<PaceMetricView, _ForegroundStyleModifier<Color>>?>, _ConditionalContent<ModifiedContent<PowerMetricView, _ForegroundStyleModifier<Color>>?, ModifiedContent<CadenceMetricView, _ForegroundStyleModifier<Color>>?>> and conformance <> _ConditionalContent<A, B>();
      lazy protocol witness table accessor for type _ConditionalContent<_ConditionalContent<ModifiedContent<DistanceMetricText, _ForegroundStyleModifier<Color>>?, ModifiedContent<EnergyMetricView, _ForegroundStyleModifier<Color>>?>, _ConditionalContent<ModifiedContent<MetricHeadingView<Text>, _ForegroundStyleModifier<Color>>?, ModifiedContent<MetricText, _EnvironmentKeyWritingModifier<Color?>>?>> and conformance <> _ConditionalContent<A, B>();
      _ConditionalContent<>.init(storage:)();
      v350 = *&v344[32];
      *v351 = *&v344[48];
      *&v351[16] = *&v344[64];
      *&v351[31] = *&v344[79];
      v346 = v342;
      v347 = v343;
      v348 = *v344;
      v349 = *&v344[16];
      v352 = 0;
      v351[35] = 0;
LABEL_63:
      __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI19_ConditionalContentVyACyACyAA08ModifiedD0Vy07WorkoutB017CadenceMetricViewVAA24_ForegroundStyleModifierVyAA5ColorVGGSgAEyAF04PacehI0VAMGSgGACyAEyAF05PowerhI0VAMGSgAOGGACyACyAEyAF08DistanceH4TextVAMGSgAEyAF06EnergyhI0VAMGSgGACyAEyAF0h7HeadingI0VyAA0Q0VGAMGSgAEyAF0hQ0VAA022_EnvironmentKeyWritingL0VyALSgGGSgGGGMd);
      __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI19_ConditionalContentVyACyACyAA08ModifiedD0VyAEyAA5ImageVAA24_ForegroundStyleModifierVyAA5ColorVGG07WorkoutB015MetricValueFontVGSgAEyAN04PaceL4ViewVALGSgGACyAvEyAN05PowerlP0VALGSgGGACyACyACyAEyAN0L4TextVALGA4_GSgAVGACyAEyAN011ElapsedTimeP0VALGSgACyACyAEyAEyAEyAEyAA0R0VAN0k12NotificationN0VGAA022_EnvironmentKeyWritingI0Vy12CoreGraphics7CGFloatVGGA18_ySiSgGGALGA27_GA27_GSgGGGMd);
      lazy protocol witness table accessor for type _ConditionalContent<_ConditionalContent<_ConditionalContent<ModifiedContent<CadenceMetricView, _ForegroundStyleModifier<Color>>?, ModifiedContent<PaceMetricView, _ForegroundStyleModifier<Color>>?>, _ConditionalContent<ModifiedContent<PowerMetricView, _ForegroundStyleModifier<Color>>?, ModifiedContent<CadenceMetricView, _ForegroundStyleModifier<Color>>?>>, _ConditionalContent<_ConditionalContent<ModifiedContent<DistanceMetricText, _ForegroundStyleModifier<Color>>?, ModifiedContent<EnergyMetricView, _ForegroundStyleModifier<Color>>?>, _ConditionalContent<ModifiedContent<MetricHeadingView<Text>, _ForegroundStyleModifier<Color>>?, ModifiedContent<MetricText, _EnvironmentKeyWritingModifier<Color?>>?>>> and conformance <> _ConditionalContent<A, B>();
      lazy protocol witness table accessor for type _ConditionalContent<_ConditionalContent<_ConditionalContent<ModifiedContent<ModifiedContent<Image, _ForegroundStyleModifier<Color>>, MetricValueFont>?, ModifiedContent<PaceMetricView, _ForegroundStyleModifier<Color>>?>, _ConditionalContent<ModifiedContent<PaceMetricView, _ForegroundStyleModifier<Color>>?, ModifiedContent<PowerMetricView, _ForegroundStyleModifier<Color>>?>>, _ConditionalContent<_ConditionalContent<_ConditionalContent<ModifiedContent<MetricText, _ForegroundStyleModifier<Color>>, ModifiedContent<MetricText, _ForegroundStyleModifier<Color>>>?, ModifiedContent<PaceMetricView, _ForegroundStyleModifier<Color>>?>, _ConditionalContent<ModifiedContent<ElapsedTimeView, _ForegroundStyleModifier<Color>>?, _ConditionalContent<_ConditionalContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Text, WorkoutNotificationFont>, _EnvironmentKeyWritingModifier<CGFloat>>, _EnvironmentKeyWritingModifier<Int?>>, _ForegroundStyleModifier<Color>>, Modifie();
      _ConditionalContent<>.init(storage:)();
      *&v344[32] = v336[0];
      *&v344[48] = v336[1];
      *&v344[64] = v336[2];
      *&v344[80] = v337;
      v342 = v332;
      v343 = v333;
      *v344 = v334;
      *&v344[16] = v335;
      v331 = 0;
LABEL_64:
      v345 = 0;
      __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI19_ConditionalContentVyACyACyACyAA08ModifiedD0Vy07WorkoutB017CadenceMetricViewVAA24_ForegroundStyleModifierVyAA5ColorVGGSgAEyAF04PacehI0VAMGSgGACyAEyAF05PowerhI0VAMGSgAOGGACyACyAEyAF08DistanceH4TextVAMGSgAEyAF06EnergyhI0VAMGSgGACyAEyAF0h7HeadingI0VyAA0Q0VGAMGSgAEyAF0hQ0VAA022_EnvironmentKeyWritingL0VyALSgGGSgGGGACyACyACyAEyAEyAA5ImageVAMGAF0H9ValueFontVGSgASGACyAsXGGACyACyACyAEyA16_AMGA36_GSgASGACyAEyAF011ElapsedTimeI0VAMGSgACyACyAEyAEyAEyAEyA11_AF0f12NotificationY0VGA18_y12CoreGraphics7CGFloatVGGA18_ySiSgGGAMGA55_GA55_GSgGGGGMd);
      __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI19_ConditionalContentVyAA08ModifiedD0Vy07WorkoutB015ElapsedTimeViewVAA24_ForegroundStyleModifierVyAA5ColorVGGSgAA4TextVGMd);
      lazy protocol witness table accessor for type _ConditionalContent<_ConditionalContent<_ConditionalContent<_ConditionalContent<ModifiedContent<CadenceMetricView, _ForegroundStyleModifier<Color>>?, ModifiedContent<PaceMetricView, _ForegroundStyleModifier<Color>>?>, _ConditionalContent<ModifiedContent<PowerMetricView, _ForegroundStyleModifier<Color>>?, ModifiedContent<CadenceMetricView, _ForegroundStyleModifier<Color>>?>>, _ConditionalContent<_ConditionalContent<ModifiedContent<DistanceMetricText, _ForegroundStyleModifier<Color>>?, ModifiedContent<EnergyMetricView, _ForegroundStyleModifier<Color>>?>, _ConditionalContent<ModifiedContent<MetricHeadingView<Text>, _ForegroundStyleModifier<Color>>?, ModifiedContent<MetricText, _EnvironmentKeyWritingModifier<Color?>>?>>>, _ConditionalContent<_ConditionalContent<_ConditionalContent<ModifiedContent<ModifiedContent<Image, _ForegroundStyleModifier<Color>>, MetricValueFont>?, ModifiedContent<PaceMetricView, _ForegroundStyleModifier<Color>>?>, _ConditionalContent<ModifiedC();
      lazy protocol witness table accessor for type _ConditionalContent<ModifiedContent<ElapsedTimeView, _ForegroundStyleModifier<Color>>?, Text> and conformance <> _ConditionalContent<A, B>();
      _ConditionalContent<>.init(storage:)();
      outlined destroy of _ConditionalContent<_ConditionalContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Text, WorkoutNotificationFont>, _EnvironmentKeyWritingModifier<CGFloat>>, _EnvironmentKeyWritingModifier<Int?>>, _ForegroundStyleModifier<Color>>, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Text, WorkoutNotificationFont>, _EnvironmentKeyWritingModifier<CGFloat>>, _EnvironmentKeyWritingModifier<Int?>>, _ForegroundStyleModifier<Color>>>, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Text, WorkoutNotificationFont>, _EnvironmentKeyWritingModifier<CGFloat>>, _EnvironmentKeyWritingModifier<Int?>>, _ForegroundStyleModifier<Color>>>?(&v324, v120);
      v357 = v350;
      v358 = *v351;
      v359[0] = *&v351[16];
      v80 = *&v351[29];
LABEL_65:
      *(v359 + 13) = v80;
      v353 = v346;
      v354 = v347;
      v91 = v348;
      v92 = v349;
      goto LABEL_66;
    }

    v58 = v57;
    v59 = swift_getKeyPath();
    LOBYTE(v342._countAndFlagsBits) = 0;
    v15 = swift_getKeyPath();
    LOBYTE(v332._countAndFlagsBits) = 0;
    v60 = swift_getKeyPath();
    v331 = 0;
    LOBYTE(v346._countAndFlagsBits) = 0;
    countAndFlagsBits = v342._countAndFlagsBits;
    v62 = v332._countAndFlagsBits;
    v63 = v316;
    if (v316)
    {
      v64 = v317;
      v65 = v317;
LABEL_51:
      v324._countAndFlagsBits = v58;
      v324._object = v56;
      LOBYTE(v325._countAndFlagsBits) = 0;
      v325._object = 12;
      *&v326 = v64;
      WORD4(v326) = 0;
      *&v327 = v59;
      BYTE8(v327) = countAndFlagsBits;
      *&v328 = v15;
      BYTE8(v328) = v62;
      *&v329 = v60;
      BYTE8(v329) = 0;
      *&v330 = v63;

      goto LABEL_52;
    }

    v116 = objc_opt_self();
    v117 = v317;
    v316 = v58;
    v118 = [v116 powerColors];
    v119 = [v118 nonGradientTextColor];

    if (v119)
    {
      v63 = Color.init(uiColor:)();

      v64 = v317;
      goto LABEL_51;
    }

    __break(1u);
    goto LABEL_221;
  }

  if (v33 == *MEMORY[0x277D7DB30])
  {
    v66 = dispatch thunk of WorkoutNotificationUnit.value.getter();
    v67 = v317;
    if ((v68 & 1) != 0 || (v69 = v66, (v70 = dispatch thunk of WorkoutNotificationUnit.activityType.getter()) == 0))
    {
      v327 = 0u;
      v328 = 0u;
      v326 = 0u;
      v324 = 0;
      v325 = 0;
    }

    else
    {
      v71 = v70;
      v72 = swift_getKeyPath();
      LOBYTE(v342._countAndFlagsBits) = 0;
      LOBYTE(v346._countAndFlagsBits) = 0;
      v73 = v316;
      if (v316)
      {
        v74 = v67;
        v75 = v73;
      }

      else
      {
        (*(v313 + 104))(v315, *MEMORY[0x277CE0EE0], v314);
        v124 = v67;
        v75 = Color.init(_:red:green:blue:opacity:)();
      }

      v324._countAndFlagsBits = v71;
      v324._object = v69;
      LOBYTE(v325._countAndFlagsBits) = 0;
      v325._object = 15;
      v326 = v67;
      *&v327 = 0;
      *(&v327 + 1) = v72;
      LOBYTE(v328) = 0;
      *(&v328 + 1) = v75;
    }

    v348 = v326;
    v349 = v327;
    v350 = v328;
    v346 = v324;
    v347 = v325;
    v339 = 1;
    v351[24] = 1;
    v120 = &_s7SwiftUI15ModifiedContentVy07WorkoutB017CadenceMetricViewVAA24_ForegroundStyleModifierVyAA5ColorVGGSgMd;
    outlined init with copy of _ConditionalContent<_ConditionalContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Text, WorkoutNotificationFont>, _EnvironmentKeyWritingModifier<CGFloat>>, _EnvironmentKeyWritingModifier<Int?>>, _ForegroundStyleModifier<Color>>, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Text, WorkoutNotificationFont>, _EnvironmentKeyWritingModifier<CGFloat>>, _EnvironmentKeyWritingModifier<Int?>>, _ForegroundStyleModifier<Color>>>, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Text, WorkoutNotificationFont>, _EnvironmentKeyWritingModifier<CGFloat>>, _EnvironmentKeyWritingModifier<Int?>>, _ForegroundStyleModifier<Color>>>?(&v324, &v342, &_s7SwiftUI15ModifiedContentVy07WorkoutB017CadenceMetricViewVAA24_ForegroundStyleModifierVyAA5ColorVGGSgMd);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVy07WorkoutB015PowerMetricViewVAA24_ForegroundStyleModifierVyAA5ColorVGGSgMd);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVy07WorkoutB017CadenceMetricViewVAA24_ForegroundStyleModifierVyAA5ColorVGGSgMd);
    lazy protocol witness table accessor for type ModifiedContent<ElapsedTimeView, _ForegroundStyleModifier<Color>>? and conformance <A> A?(&lazy protocol witness table cache variable for type ModifiedContent<PowerMetricView, _ForegroundStyleModifier<Color>>? and conformance <A> A?, &_s7SwiftUI15ModifiedContentVy07WorkoutB015PowerMetricViewVAA24_ForegroundStyleModifierVyAA5ColorVGGSgMd, &_s7SwiftUI15ModifiedContentVy07WorkoutB015PowerMetricViewVAA24_ForegroundStyleModifierVyAA5ColorVGGSgMR, lazy protocol witness table accessor for type ModifiedContent<PowerMetricView, _ForegroundStyleModifier<Color>> and conformance <> ModifiedContent<A, B>);
    lazy protocol witness table accessor for type ModifiedContent<ElapsedTimeView, _ForegroundStyleModifier<Color>>? and conformance <A> A?(&lazy protocol witness table cache variable for type ModifiedContent<CadenceMetricView, _ForegroundStyleModifier<Color>>? and conformance <A> A?, &_s7SwiftUI15ModifiedContentVy07WorkoutB017CadenceMetricViewVAA24_ForegroundStyleModifierVyAA5ColorVGGSgMd, &_s7SwiftUI15ModifiedContentVy07WorkoutB017CadenceMetricViewVAA24_ForegroundStyleModifierVyAA5ColorVGGSgMR, lazy protocol witness table accessor for type ModifiedContent<CadenceMetricView, _ForegroundStyleModifier<Color>> and conformance <> ModifiedContent<A, B>);
    _ConditionalContent<>.init(storage:)();
    v350 = *&v344[32];
    *v351 = *&v344[48];
    *&v351[9] = *&v344[57];
    v346 = v342;
    v347 = v343;
    v348 = *v344;
    v349 = *&v344[16];
    v340 = 1;
    v351[25] = 1;
    goto LABEL_61;
  }

  if (v33 == *MEMORY[0x277D7DB40])
  {
    v76 = v301;
    v77 = dispatch thunk of WorkoutNotificationUnit.value.getter();
    if (v78)
    {
      v326 = 0u;
      v327 = 0u;
      v324 = 0;
      v325 = 0;
    }

    else
    {
      v56 = v77;
      v346._countAndFlagsBits = v76;
      v93 = v316;
      v346._object = v317;
      v347._countAndFlagsBits = v316;
      v347._object = v312;
      LOBYTE(v348) = v311;
      v59 = v317;
      v15 = WorkoutNotificationUnitView.distanceType.getter();
      v94 = dispatch thunk of WorkoutNotificationUnit.key.getter();
      v58 = WorkoutNotificationUnitView.fiuiDistanceUnit(from:)(v94, v95);
      v97 = v96;

      if (v93)
      {
        v98 = v93;
      }

      else
      {
        v129 = [objc_opt_self() distanceColors];
        if (!v129)
        {
LABEL_221:
          __break(1u);
          goto LABEL_222;
        }

        v130 = v129;
        v131 = [v129 nonGradientTextColor];

        if (!v131)
        {
LABEL_222:
          __break(1u);
          goto LABEL_223;
        }

        v98 = Color.init(uiColor:)();
      }

      LOBYTE(v346._countAndFlagsBits) = v97 & 1;
      v324._countAndFlagsBits = v56;
      v324._object = v59;
      v325._countAndFlagsBits = v15;
      v325._object = v58;
      LOBYTE(v326) = v97 & 1;
      *(&v326 + 1) = 0;
      *&v327 = 0;
      *(&v327 + 1) = v98;
    }

    v346 = v324;
    v347 = v325;
    v348 = v326;
    v349 = v327;
    v339 = 0;
    LOBYTE(v350) = 0;
    v120 = &_s7SwiftUI15ModifiedContentVy07WorkoutB018DistanceMetricTextVAA24_ForegroundStyleModifierVyAA5ColorVGGSgMd;
    outlined init with copy of _ConditionalContent<_ConditionalContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Text, WorkoutNotificationFont>, _EnvironmentKeyWritingModifier<CGFloat>>, _EnvironmentKeyWritingModifier<Int?>>, _ForegroundStyleModifier<Color>>, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Text, WorkoutNotificationFont>, _EnvironmentKeyWritingModifier<CGFloat>>, _EnvironmentKeyWritingModifier<Int?>>, _ForegroundStyleModifier<Color>>>, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Text, WorkoutNotificationFont>, _EnvironmentKeyWritingModifier<CGFloat>>, _EnvironmentKeyWritingModifier<Int?>>, _ForegroundStyleModifier<Color>>>?(&v324, &v342, &_s7SwiftUI15ModifiedContentVy07WorkoutB018DistanceMetricTextVAA24_ForegroundStyleModifierVyAA5ColorVGGSgMd);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVy07WorkoutB018DistanceMetricTextVAA24_ForegroundStyleModifierVyAA5ColorVGGSgMd);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVy07WorkoutB016EnergyMetricViewVAA24_ForegroundStyleModifierVyAA5ColorVGGSgMd);
    lazy protocol witness table accessor for type ModifiedContent<ElapsedTimeView, _ForegroundStyleModifier<Color>>? and conformance <A> A?(&lazy protocol witness table cache variable for type ModifiedContent<DistanceMetricText, _ForegroundStyleModifier<Color>>? and conformance <A> A?, &_s7SwiftUI15ModifiedContentVy07WorkoutB018DistanceMetricTextVAA24_ForegroundStyleModifierVyAA5ColorVGGSgMd, &_s7SwiftUI15ModifiedContentVy07WorkoutB018DistanceMetricTextVAA24_ForegroundStyleModifierVyAA5ColorVGGSgMR, lazy protocol witness table accessor for type ModifiedContent<DistanceMetricText, _ForegroundStyleModifier<Color>> and conformance <> ModifiedContent<A, B>);
    lazy protocol witness table accessor for type ModifiedContent<ElapsedTimeView, _ForegroundStyleModifier<Color>>? and conformance <A> A?(&lazy protocol witness table cache variable for type ModifiedContent<EnergyMetricView, _ForegroundStyleModifier<Color>>? and conformance <A> A?, &_s7SwiftUI15ModifiedContentVy07WorkoutB016EnergyMetricViewVAA24_ForegroundStyleModifierVyAA5ColorVGGSgMd, &_s7SwiftUI15ModifiedContentVy07WorkoutB016EnergyMetricViewVAA24_ForegroundStyleModifierVyAA5ColorVGGSgMR, lazy protocol witness table accessor for type ModifiedContent<EnergyMetricView, _ForegroundStyleModifier<Color>> and conformance <> ModifiedContent<A, B>);
    _ConditionalContent<>.init(storage:)();
    v348 = *v344;
    v349 = *&v344[16];
    LOBYTE(v350) = v344[32];
    v346 = v342;
    v347 = v343;
    v340 = 0;
    v351[33] = 0;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI19_ConditionalContentVyAA08ModifiedD0Vy07WorkoutB018DistanceMetricTextVAA24_ForegroundStyleModifierVyAA5ColorVGGSgAEyAF06EnergyH4ViewVAMGSgGMd);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI19_ConditionalContentVyAA08ModifiedD0Vy07WorkoutB017MetricHeadingViewVyAA4TextVGAA24_ForegroundStyleModifierVyAA5ColorVGGSgAEyAF0gJ0VAA022_EnvironmentKeyWritingM0VyAOSgGGSgGMd);
    lazy protocol witness table accessor for type _ConditionalContent<ModifiedContent<DistanceMetricText, _ForegroundStyleModifier<Color>>?, ModifiedContent<EnergyMetricView, _ForegroundStyleModifier<Color>>?> and conformance <> _ConditionalContent<A, B>();
    lazy protocol witness table accessor for type _ConditionalContent<ModifiedContent<MetricHeadingView<Text>, _ForegroundStyleModifier<Color>>?, ModifiedContent<MetricText, _EnvironmentKeyWritingModifier<Color?>>?> and conformance <> _ConditionalContent<A, B>();
    _ConditionalContent<>.init(storage:)();
    v350 = v336[0];
    *v351 = v336[1];
    *&v351[16] = v336[2];
    *&v351[32] = v337;
    v346 = v332;
    v347 = v333;
    v348 = v334;
    v349 = v335;
    v341 = 1;
    v351[34] = 1;
    goto LABEL_62;
  }

  if (v33 == *MEMORY[0x277D7DB20])
  {
    v81 = dispatch thunk of WorkoutNotificationUnit.value.getter();
    v82 = v317;
    if (v83)
    {
      v59 = 0;
      v84 = 0;
      v82 = 0;
      v85 = 0;
      v86 = 0;
    }

    else
    {
      v59 = v81;
      v85 = swift_getKeyPath();
      v58 = v316;
      if (v316)
      {
        v121 = v82;
        v86 = v58;
      }

      else
      {
        v56 = objc_opt_self();
        v138 = v82;
        v139 = [v56 energyColors];
        if (!v139)
        {
LABEL_223:
          __break(1u);
          goto LABEL_224;
        }

        v56 = v139;
        v15 = [v139 nonGradientTextColor];

        if (!v15)
        {
LABEL_224:
          __break(1u);
          goto LABEL_225;
        }

        v86 = Color.init(uiColor:)();
      }

      v84 = 1;
    }

    v316 = v86;
    v317 = v82;
    v315 = v85;
    v340 = 1;
    v346._countAndFlagsBits = v59;
    v346._object = v84;
    v347._countAndFlagsBits = v84;
    v347._object = v82;
    v348 = v85;
    *&v349 = v86;
    LOBYTE(v350) = 1;
    outlined copy of ModifiedContent<EnergyMetricView, _ForegroundStyleModifier<Color>>?(v59, v84, v84, v82, v85, 0);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVy07WorkoutB018DistanceMetricTextVAA24_ForegroundStyleModifierVyAA5ColorVGGSgMd);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVy07WorkoutB016EnergyMetricViewVAA24_ForegroundStyleModifierVyAA5ColorVGGSgMd);
    lazy protocol witness table accessor for type ModifiedContent<ElapsedTimeView, _ForegroundStyleModifier<Color>>? and conformance <A> A?(&lazy protocol witness table cache variable for type ModifiedContent<DistanceMetricText, _ForegroundStyleModifier<Color>>? and conformance <A> A?, &_s7SwiftUI15ModifiedContentVy07WorkoutB018DistanceMetricTextVAA24_ForegroundStyleModifierVyAA5ColorVGGSgMd, &_s7SwiftUI15ModifiedContentVy07WorkoutB018DistanceMetricTextVAA24_ForegroundStyleModifierVyAA5ColorVGGSgMR, lazy protocol witness table accessor for type ModifiedContent<DistanceMetricText, _ForegroundStyleModifier<Color>> and conformance <> ModifiedContent<A, B>);
    lazy protocol witness table accessor for type ModifiedContent<ElapsedTimeView, _ForegroundStyleModifier<Color>>? and conformance <A> A?(&lazy protocol witness table cache variable for type ModifiedContent<EnergyMetricView, _ForegroundStyleModifier<Color>>? and conformance <A> A?, &_s7SwiftUI15ModifiedContentVy07WorkoutB016EnergyMetricViewVAA24_ForegroundStyleModifierVyAA5ColorVGGSgMd, &_s7SwiftUI15ModifiedContentVy07WorkoutB016EnergyMetricViewVAA24_ForegroundStyleModifierVyAA5ColorVGGSgMR, lazy protocol witness table accessor for type ModifiedContent<EnergyMetricView, _ForegroundStyleModifier<Color>> and conformance <> ModifiedContent<A, B>);
    _ConditionalContent<>.init(storage:)();
    v348 = *v344;
    v349 = *&v344[16];
    LOBYTE(v350) = v344[32];
    v346 = v342;
    v347 = v343;
    v341 = 0;
    v351[33] = 0;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI19_ConditionalContentVyAA08ModifiedD0Vy07WorkoutB018DistanceMetricTextVAA24_ForegroundStyleModifierVyAA5ColorVGGSgAEyAF06EnergyH4ViewVAMGSgGMd);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI19_ConditionalContentVyAA08ModifiedD0Vy07WorkoutB017MetricHeadingViewVyAA4TextVGAA24_ForegroundStyleModifierVyAA5ColorVGGSgAEyAF0gJ0VAA022_EnvironmentKeyWritingM0VyAOSgGGSgGMd);
    lazy protocol witness table accessor for type _ConditionalContent<ModifiedContent<DistanceMetricText, _ForegroundStyleModifier<Color>>?, ModifiedContent<EnergyMetricView, _ForegroundStyleModifier<Color>>?> and conformance <> _ConditionalContent<A, B>();
    lazy protocol witness table accessor for type _ConditionalContent<ModifiedContent<MetricHeadingView<Text>, _ForegroundStyleModifier<Color>>?, ModifiedContent<MetricText, _EnvironmentKeyWritingModifier<Color?>>?> and conformance <> _ConditionalContent<A, B>();
    _ConditionalContent<>.init(storage:)();
    v350 = v336[0];
    *v351 = v336[1];
    *&v351[16] = v336[2];
    *&v351[32] = v337;
    v346 = v332;
    v347 = v333;
    v348 = v334;
    v349 = v335;
    v352 = 1;
    v351[34] = 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI19_ConditionalContentVyACyAA08ModifiedD0Vy07WorkoutB017CadenceMetricViewVAA24_ForegroundStyleModifierVyAA5ColorVGGSgAEyAF04PacehI0VAMGSgGACyAEyAF05PowerhI0VAMGSgAOGGMd);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI19_ConditionalContentVyACyAA08ModifiedD0Vy07WorkoutB018DistanceMetricTextVAA24_ForegroundStyleModifierVyAA5ColorVGGSgAEyAF06EnergyH4ViewVAMGSgGACyAEyAF0h7HeadingO0VyAA0I0VGAMGSgAEyAF0hI0VAA022_EnvironmentKeyWritingL0VyALSgGGSgGGMd);
    lazy protocol witness table accessor for type _ConditionalContent<_ConditionalContent<ModifiedContent<CadenceMetricView, _ForegroundStyleModifier<Color>>?, ModifiedContent<PaceMetricView, _ForegroundStyleModifier<Color>>?>, _ConditionalContent<ModifiedContent<PowerMetricView, _ForegroundStyleModifier<Color>>?, ModifiedContent<CadenceMetricView, _ForegroundStyleModifier<Color>>?>> and conformance <> _ConditionalContent<A, B>();
    lazy protocol witness table accessor for type _ConditionalContent<_ConditionalContent<ModifiedContent<DistanceMetricText, _ForegroundStyleModifier<Color>>?, ModifiedContent<EnergyMetricView, _ForegroundStyleModifier<Color>>?>, _ConditionalContent<ModifiedContent<MetricHeadingView<Text>, _ForegroundStyleModifier<Color>>?, ModifiedContent<MetricText, _EnvironmentKeyWritingModifier<Color?>>?>> and conformance <> _ConditionalContent<A, B>();
    _ConditionalContent<>.init(storage:)();
    v350 = *&v344[32];
    *v351 = *&v344[48];
    *&v351[16] = *&v344[64];
    *&v351[31] = *&v344[79];
    v346 = v342;
    v347 = v343;
    v348 = *v344;
    v349 = *&v344[16];
    v331 = 0;
    v351[35] = 0;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI19_ConditionalContentVyACyACyAA08ModifiedD0Vy07WorkoutB017CadenceMetricViewVAA24_ForegroundStyleModifierVyAA5ColorVGGSgAEyAF04PacehI0VAMGSgGACyAEyAF05PowerhI0VAMGSgAOGGACyACyAEyAF08DistanceH4TextVAMGSgAEyAF06EnergyhI0VAMGSgGACyAEyAF0h7HeadingI0VyAA0Q0VGAMGSgAEyAF0hQ0VAA022_EnvironmentKeyWritingL0VyALSgGGSgGGGMd);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI19_ConditionalContentVyACyACyAA08ModifiedD0VyAEyAA5ImageVAA24_ForegroundStyleModifierVyAA5ColorVGG07WorkoutB015MetricValueFontVGSgAEyAN04PaceL4ViewVALGSgGACyAvEyAN05PowerlP0VALGSgGGACyACyACyAEyAN0L4TextVALGA4_GSgAVGACyAEyAN011ElapsedTimeP0VALGSgACyACyAEyAEyAEyAEyAA0R0VAN0k12NotificationN0VGAA022_EnvironmentKeyWritingI0Vy12CoreGraphics7CGFloatVGGA18_ySiSgGGALGA27_GA27_GSgGGGMd);
    lazy protocol witness table accessor for type _ConditionalContent<_ConditionalContent<_ConditionalContent<ModifiedContent<CadenceMetricView, _ForegroundStyleModifier<Color>>?, ModifiedContent<PaceMetricView, _ForegroundStyleModifier<Color>>?>, _ConditionalContent<ModifiedContent<PowerMetricView, _ForegroundStyleModifier<Color>>?, ModifiedContent<CadenceMetricView, _ForegroundStyleModifier<Color>>?>>, _ConditionalContent<_ConditionalContent<ModifiedContent<DistanceMetricText, _ForegroundStyleModifier<Color>>?, ModifiedContent<EnergyMetricView, _ForegroundStyleModifier<Color>>?>, _ConditionalContent<ModifiedContent<MetricHeadingView<Text>, _ForegroundStyleModifier<Color>>?, ModifiedContent<MetricText, _EnvironmentKeyWritingModifier<Color?>>?>>> and conformance <> _ConditionalContent<A, B>();
    lazy protocol witness table accessor for type _ConditionalContent<_ConditionalContent<_ConditionalContent<ModifiedContent<ModifiedContent<Image, _ForegroundStyleModifier<Color>>, MetricValueFont>?, ModifiedContent<PaceMetricView, _ForegroundStyleModifier<Color>>?>, _ConditionalContent<ModifiedContent<PaceMetricView, _ForegroundStyleModifier<Color>>?, ModifiedContent<PowerMetricView, _ForegroundStyleModifier<Color>>?>>, _ConditionalContent<_ConditionalContent<_ConditionalContent<ModifiedContent<MetricText, _ForegroundStyleModifier<Color>>, ModifiedContent<MetricText, _ForegroundStyleModifier<Color>>>?, ModifiedContent<PaceMetricView, _ForegroundStyleModifier<Color>>?>, _ConditionalContent<ModifiedContent<ElapsedTimeView, _ForegroundStyleModifier<Color>>?, _ConditionalContent<_ConditionalContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Text, WorkoutNotificationFont>, _EnvironmentKeyWritingModifier<CGFloat>>, _EnvironmentKeyWritingModifier<Int?>>, _ForegroundStyleModifier<Color>>, Modifie();
    _ConditionalContent<>.init(storage:)();
    *&v344[32] = v336[0];
    *&v344[48] = v336[1];
    *&v344[64] = v336[2];
    *&v344[80] = v337;
    v342 = v332;
    v343 = v333;
    *v344 = v334;
    *&v344[16] = v335;
    LOBYTE(v324._countAndFlagsBits) = 0;
    v345 = 0;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI19_ConditionalContentVyACyACyACyAA08ModifiedD0Vy07WorkoutB017CadenceMetricViewVAA24_ForegroundStyleModifierVyAA5ColorVGGSgAEyAF04PacehI0VAMGSgGACyAEyAF05PowerhI0VAMGSgAOGGACyACyAEyAF08DistanceH4TextVAMGSgAEyAF06EnergyhI0VAMGSgGACyAEyAF0h7HeadingI0VyAA0Q0VGAMGSgAEyAF0hQ0VAA022_EnvironmentKeyWritingL0VyALSgGGSgGGGACyACyACyAEyAEyAA5ImageVAMGAF0H9ValueFontVGSgASGACyAsXGGACyACyACyAEyA16_AMGA36_GSgASGACyAEyAF011ElapsedTimeI0VAMGSgACyACyAEyAEyAEyAEyA11_AF0f12NotificationY0VGA18_y12CoreGraphics7CGFloatVGGA18_ySiSgGGAMGA55_GA55_GSgGGGGMd);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI19_ConditionalContentVyAA08ModifiedD0Vy07WorkoutB015ElapsedTimeViewVAA24_ForegroundStyleModifierVyAA5ColorVGGSgAA4TextVGMd);
    lazy protocol witness table accessor for type _ConditionalContent<_ConditionalContent<_ConditionalContent<_ConditionalContent<ModifiedContent<CadenceMetricView, _ForegroundStyleModifier<Color>>?, ModifiedContent<PaceMetricView, _ForegroundStyleModifier<Color>>?>, _ConditionalContent<ModifiedContent<PowerMetricView, _ForegroundStyleModifier<Color>>?, ModifiedContent<CadenceMetricView, _ForegroundStyleModifier<Color>>?>>, _ConditionalContent<_ConditionalContent<ModifiedContent<DistanceMetricText, _ForegroundStyleModifier<Color>>?, ModifiedContent<EnergyMetricView, _ForegroundStyleModifier<Color>>?>, _ConditionalContent<ModifiedContent<MetricHeadingView<Text>, _ForegroundStyleModifier<Color>>?, ModifiedContent<MetricText, _EnvironmentKeyWritingModifier<Color?>>?>>>, _ConditionalContent<_ConditionalContent<_ConditionalContent<ModifiedContent<ModifiedContent<Image, _ForegroundStyleModifier<Color>>, MetricValueFont>?, ModifiedContent<PaceMetricView, _ForegroundStyleModifier<Color>>?>, _ConditionalContent<ModifiedC();
    lazy protocol witness table accessor for type _ConditionalContent<ModifiedContent<ElapsedTimeView, _ForegroundStyleModifier<Color>>?, Text> and conformance <> _ConditionalContent<A, B>();
    _ConditionalContent<>.init(storage:)();
    outlined consume of ModifiedContent<EnergyMetricView, _ForegroundStyleModifier<Color>>?(v59, v84, v84, v317, v315, 0);
    goto LABEL_40;
  }

  if (v33 == *MEMORY[0x277D7DB38])
  {
    v99 = dispatch thunk of WorkoutNotificationUnit.key.getter();
    v101 = v316;
    if (v100)
    {
      v102 = v99;
      v103 = v100;
      if (one-time initialization token for WorkoutUIBundle != -1)
      {
        swift_once();
      }

      swift_beginAccess();
      v104 = WorkoutUIBundle.super.isa;
      v360._object = 0xE000000000000000;
      v105.value._countAndFlagsBits = 0x617A696C61636F4CLL;
      v105.value._object = 0xEB00000000656C62;
      v106._countAndFlagsBits = v102;
      v106._object = v103;
      v107._countAndFlagsBits = 0;
      v107._object = 0xE000000000000000;
      v360._countAndFlagsBits = 0;
      v108 = NSLocalizedString(_:tableName:bundle:value:comment:)(v106, v105, v104, v107, v360);

      v346 = v108;
      lazy protocol witness table accessor for type String and conformance String();
      v109 = StringProtocol.localizedUppercase.getter();
      v111 = v110;

      MetricPlatterConstants.init()(v321);
      *(&v322 + 1) = swift_getKeyPath();
      v323 = 0;
      v346._countAndFlagsBits = v109;
      v346._object = v111;
      v319._countAndFlagsBits = Text.init<A>(_:)();
      v319._object = v112;
      LOBYTE(v320._countAndFlagsBits) = v113 & 1;
      v320._object = v114;
      if (v101)
      {
        v115 = v101;
      }

      else
      {
        v115 = static Color.white.getter();
      }

      v328 = v321[2];
      v329 = v322;
      LOBYTE(v330) = v323;
      v324 = v319;
      v325 = v320;
      v326 = v321[0];
      v327 = v321[1];
      *(&v330 + 1) = v115;
    }

    else
    {
      v329 = 0u;
      v330 = 0u;
      v327 = 0u;
      v328 = 0u;
      v326 = 0u;
      v324 = 0;
      v325 = 0;
    }

    v350 = v328;
    *v351 = v329;
    *&v351[16] = v330;
    v346 = v324;
    v347 = v325;
    v348 = v326;
    v349 = v327;
    v338 = 0;
    v351[32] = 0;
    v120 = &_s7SwiftUI15ModifiedContentVy07WorkoutB017MetricHeadingViewVyAA4TextVGAA24_ForegroundStyleModifierVyAA5ColorVGGSgMd;
    outlined init with copy of _ConditionalContent<_ConditionalContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Text, WorkoutNotificationFont>, _EnvironmentKeyWritingModifier<CGFloat>>, _EnvironmentKeyWritingModifier<Int?>>, _ForegroundStyleModifier<Color>>, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Text, WorkoutNotificationFont>, _EnvironmentKeyWritingModifier<CGFloat>>, _EnvironmentKeyWritingModifier<Int?>>, _ForegroundStyleModifier<Color>>>, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Text, WorkoutNotificationFont>, _EnvironmentKeyWritingModifier<CGFloat>>, _EnvironmentKeyWritingModifier<Int?>>, _ForegroundStyleModifier<Color>>>?(&v324, &v342, &_s7SwiftUI15ModifiedContentVy07WorkoutB017MetricHeadingViewVyAA4TextVGAA24_ForegroundStyleModifierVyAA5ColorVGGSgMd);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVy07WorkoutB017MetricHeadingViewVyAA4TextVGAA24_ForegroundStyleModifierVyAA5ColorVGGSgMd);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVy07WorkoutB010MetricTextVAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGSgMd);
    lazy protocol witness table accessor for type ModifiedContent<ElapsedTimeView, _ForegroundStyleModifier<Color>>? and conformance <A> A?(&lazy protocol witness table cache variable for type ModifiedContent<MetricHeadingView<Text>, _ForegroundStyleModifier<Color>>? and conformance <A> A?, &_s7SwiftUI15ModifiedContentVy07WorkoutB017MetricHeadingViewVyAA4TextVGAA24_ForegroundStyleModifierVyAA5ColorVGGSgMd, &_s7SwiftUI15ModifiedContentVy07WorkoutB017MetricHeadingViewVyAA4TextVGAA24_ForegroundStyleModifierVyAA5ColorVGGSgMR, lazy protocol witness table accessor for type ModifiedContent<MetricHeadingView<Text>, _ForegroundStyleModifier<Color>> and conformance <> ModifiedContent<A, B>);
    lazy protocol witness table accessor for type ModifiedContent<ElapsedTimeView, _ForegroundStyleModifier<Color>>? and conformance <A> A?(&lazy protocol witness table cache variable for type ModifiedContent<MetricText, _EnvironmentKeyWritingModifier<Color?>>? and conformance <A> A?, &_s7SwiftUI15ModifiedContentVy07WorkoutB010MetricTextVAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGSgMd, &_s7SwiftUI15ModifiedContentVy07WorkoutB010MetricTextVAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGSgMR, lazy protocol witness table accessor for type ModifiedContent<MetricText, _EnvironmentKeyWritingModifier<Color?>> and conformance <> ModifiedContent<A, B>);
    _ConditionalContent<>.init(storage:)();
    v350 = *&v344[32];
    *v351 = *&v344[48];
    *&v351[16] = *&v344[64];
    v351[32] = v344[80];
    v346 = v342;
    v347 = v343;
    v348 = *v344;
    v349 = *&v344[16];
    v339 = 1;
    v351[33] = 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI19_ConditionalContentVyAA08ModifiedD0Vy07WorkoutB018DistanceMetricTextVAA24_ForegroundStyleModifierVyAA5ColorVGGSgAEyAF06EnergyH4ViewVAMGSgGMd);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI19_ConditionalContentVyAA08ModifiedD0Vy07WorkoutB017MetricHeadingViewVyAA4TextVGAA24_ForegroundStyleModifierVyAA5ColorVGGSgAEyAF0gJ0VAA022_EnvironmentKeyWritingM0VyAOSgGGSgGMd);
    lazy protocol witness table accessor for type _ConditionalContent<ModifiedContent<DistanceMetricText, _ForegroundStyleModifier<Color>>?, ModifiedContent<EnergyMetricView, _ForegroundStyleModifier<Color>>?> and conformance <> _ConditionalContent<A, B>();
    lazy protocol witness table accessor for type _ConditionalContent<ModifiedContent<MetricHeadingView<Text>, _ForegroundStyleModifier<Color>>?, ModifiedContent<MetricText, _EnvironmentKeyWritingModifier<Color?>>?> and conformance <> _ConditionalContent<A, B>();
    _ConditionalContent<>.init(storage:)();
    v350 = v336[0];
    *v351 = v336[1];
    *&v351[16] = v336[2];
    *&v351[32] = v337;
    v346 = v332;
    v347 = v333;
    v348 = v334;
    v349 = v335;
    v340 = 1;
    v351[34] = 1;
    goto LABEL_100;
  }

  if (v33 == *MEMORY[0x277D7DB50])
  {
    v122 = dispatch thunk of WorkoutNotificationUnit.value.getter();
    if (v123)
    {
      *&v329 = 0;
      v327 = 0u;
      v328 = 0u;
      v326 = 0u;
      v324 = 0;
      v325 = 0;
    }

    else
    {
      v342._countAndFlagsBits = v122;
      static Locale.autoupdatingCurrent.getter();
      lazy protocol witness table accessor for type Double and conformance Double();
      FloatingPointFormatStyle.init(locale:)();
      v141 = v308;
      v140 = v309;
      v142 = v310;
      (*(v309 + 104))(v308, *MEMORY[0x277D84688], v310);
      v143 = v304;
      MEMORY[0x20F3024B0](v141, 0, 1, v304);
      (*(v140 + 8))(v141, v142);
      v144 = *(v303 + 8);
      v144(v18, v143);
      v145 = v305;
      static NumberFormatStyleConfiguration.Precision.fractionLength(_:)();
      v146 = v302;
      MEMORY[0x20F3024C0](v145, v143);
      (*(v306 + 8))(v145, v307);
      v144(v21, v143);
      _s7SwiftUI24_ForegroundStyleModifierVyAA5ColorVGACyxGAA04ViewE0AAWlTm_7(&lazy protocol witness table cache variable for type FloatingPointFormatStyle<Double> and conformance FloatingPointFormatStyle<A>, &_s10Foundation24FloatingPointFormatStyleVySdGMd);
      BinaryFloatingPoint.formatted<A>(_:)();
      v144(v146, v143);
      v147 = v346;
      if (one-time initialization token for WorkoutUIBundle != -1)
      {
        swift_once();
      }

      swift_beginAccess();
      v148 = WorkoutUIBundle.super.isa;
      v361._object = 0xE000000000000000;
      v149._countAndFlagsBits = 0x524F48535F4D5042;
      v150.value._countAndFlagsBits = 0x617A696C61636F4CLL;
      v150.value._object = 0xEB00000000656C62;
      v149._object = 0xE900000000000054;
      v151._countAndFlagsBits = 0;
      v151._object = 0xE000000000000000;
      v361._countAndFlagsBits = 0;
      v152 = NSLocalizedString(_:tableName:bundle:value:comment:)(v149, v150, v148, v151, v361);

      v153 = v316;
      if (!v316)
      {
        v154 = [objc_opt_self() heartRateColors];
        if (!v154)
        {
LABEL_232:
          __break(1u);
          goto LABEL_233;
        }

        v155 = v154;
        v156 = [v154 nonGradientTextColor];

        if (!v156)
        {
LABEL_233:
          __break(1u);
          goto LABEL_234;
        }

        v153 = Color.init(uiColor:)();
      }

      v157 = swift_getKeyPath();
      v324 = v147;
      v325 = v152;
      v326 = 0uLL;
      LOWORD(v327) = 0;
      *(&v327 + 1) = 0;
      *&v328 = 0;
      *(&v328 + 1) = v157;
      *&v329 = v153;
    }

    v348 = v326;
    v349 = v327;
    v350 = v328;
    *v351 = v329;
    v346 = v324;
    v347 = v325;
    v338 = 1;
    v351[32] = 1;
    v120 = &_s7SwiftUI15ModifiedContentVy07WorkoutB010MetricTextVAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGSgMd;
    outlined init with copy of _ConditionalContent<_ConditionalContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Text, WorkoutNotificationFont>, _EnvironmentKeyWritingModifier<CGFloat>>, _EnvironmentKeyWritingModifier<Int?>>, _ForegroundStyleModifier<Color>>, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Text, WorkoutNotificationFont>, _EnvironmentKeyWritingModifier<CGFloat>>, _EnvironmentKeyWritingModifier<Int?>>, _ForegroundStyleModifier<Color>>>, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Text, WorkoutNotificationFont>, _EnvironmentKeyWritingModifier<CGFloat>>, _EnvironmentKeyWritingModifier<Int?>>, _ForegroundStyleModifier<Color>>>?(&v324, &v342, &_s7SwiftUI15ModifiedContentVy07WorkoutB010MetricTextVAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGSgMd);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVy07WorkoutB017MetricHeadingViewVyAA4TextVGAA24_ForegroundStyleModifierVyAA5ColorVGGSgMd);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVy07WorkoutB010MetricTextVAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGSgMd);
    lazy protocol witness table accessor for type ModifiedContent<ElapsedTimeView, _ForegroundStyleModifier<Color>>? and conformance <A> A?(&lazy protocol witness table cache variable for type ModifiedContent<MetricHeadingView<Text>, _ForegroundStyleModifier<Color>>? and conformance <A> A?, &_s7SwiftUI15ModifiedContentVy07WorkoutB017MetricHeadingViewVyAA4TextVGAA24_ForegroundStyleModifierVyAA5ColorVGGSgMd, &_s7SwiftUI15ModifiedContentVy07WorkoutB017MetricHeadingViewVyAA4TextVGAA24_ForegroundStyleModifierVyAA5ColorVGGSgMR, lazy protocol witness table accessor for type ModifiedContent<MetricHeadingView<Text>, _ForegroundStyleModifier<Color>> and conformance <> ModifiedContent<A, B>);
    lazy protocol witness table accessor for type ModifiedContent<ElapsedTimeView, _ForegroundStyleModifier<Color>>? and conformance <A> A?(&lazy protocol witness table cache variable for type ModifiedContent<MetricText, _EnvironmentKeyWritingModifier<Color?>>? and conformance <A> A?, &_s7SwiftUI15ModifiedContentVy07WorkoutB010MetricTextVAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGSgMd, &_s7SwiftUI15ModifiedContentVy07WorkoutB010MetricTextVAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGSgMR, lazy protocol witness table accessor for type ModifiedContent<MetricText, _EnvironmentKeyWritingModifier<Color?>> and conformance <> ModifiedContent<A, B>);
    _ConditionalContent<>.init(storage:)();
    v350 = *&v344[32];
    *v351 = *&v344[48];
    *&v351[16] = *&v344[64];
    v351[32] = v344[80];
    v346 = v342;
    v347 = v343;
    v348 = *v344;
    v349 = *&v344[16];
    v339 = 1;
    v351[33] = 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI19_ConditionalContentVyAA08ModifiedD0Vy07WorkoutB018DistanceMetricTextVAA24_ForegroundStyleModifierVyAA5ColorVGGSgAEyAF06EnergyH4ViewVAMGSgGMd);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI19_ConditionalContentVyAA08ModifiedD0Vy07WorkoutB017MetricHeadingViewVyAA4TextVGAA24_ForegroundStyleModifierVyAA5ColorVGGSgAEyAF0gJ0VAA022_EnvironmentKeyWritingM0VyAOSgGGSgGMd);
    lazy protocol witness table accessor for type _ConditionalContent<ModifiedContent<DistanceMetricText, _ForegroundStyleModifier<Color>>?, ModifiedContent<EnergyMetricView, _ForegroundStyleModifier<Color>>?> and conformance <> _ConditionalContent<A, B>();
    lazy protocol witness table accessor for type _ConditionalContent<ModifiedContent<MetricHeadingView<Text>, _ForegroundStyleModifier<Color>>?, ModifiedContent<MetricText, _EnvironmentKeyWritingModifier<Color?>>?> and conformance <> _ConditionalContent<A, B>();
    _ConditionalContent<>.init(storage:)();
    v350 = v336[0];
    *v351 = v336[1];
    *&v351[16] = v336[2];
    *&v351[32] = v337;
    v346 = v332;
    v347 = v333;
    v348 = v334;
    v349 = v335;
    v340 = 1;
    v351[34] = 1;
LABEL_100:
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI19_ConditionalContentVyACyAA08ModifiedD0Vy07WorkoutB017CadenceMetricViewVAA24_ForegroundStyleModifierVyAA5ColorVGGSgAEyAF04PacehI0VAMGSgGACyAEyAF05PowerhI0VAMGSgAOGGMd);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI19_ConditionalContentVyACyAA08ModifiedD0Vy07WorkoutB018DistanceMetricTextVAA24_ForegroundStyleModifierVyAA5ColorVGGSgAEyAF06EnergyH4ViewVAMGSgGACyAEyAF0h7HeadingO0VyAA0I0VGAMGSgAEyAF0hI0VAA022_EnvironmentKeyWritingL0VyALSgGGSgGGMd);
    lazy protocol witness table accessor for type _ConditionalContent<_ConditionalContent<ModifiedContent<CadenceMetricView, _ForegroundStyleModifier<Color>>?, ModifiedContent<PaceMetricView, _ForegroundStyleModifier<Color>>?>, _ConditionalContent<ModifiedContent<PowerMetricView, _ForegroundStyleModifier<Color>>?, ModifiedContent<CadenceMetricView, _ForegroundStyleModifier<Color>>?>> and conformance <> _ConditionalContent<A, B>();
    lazy protocol witness table accessor for type _ConditionalContent<_ConditionalContent<ModifiedContent<DistanceMetricText, _ForegroundStyleModifier<Color>>?, ModifiedContent<EnergyMetricView, _ForegroundStyleModifier<Color>>?>, _ConditionalContent<ModifiedContent<MetricHeadingView<Text>, _ForegroundStyleModifier<Color>>?, ModifiedContent<MetricText, _EnvironmentKeyWritingModifier<Color?>>?>> and conformance <> _ConditionalContent<A, B>();
    _ConditionalContent<>.init(storage:)();
    v350 = *&v344[32];
    *v351 = *&v344[48];
    *&v351[16] = *&v344[64];
    *&v351[31] = *&v344[79];
    v346 = v342;
    v347 = v343;
    v348 = *v344;
    v349 = *&v344[16];
    v341 = 0;
    v351[35] = 0;
LABEL_101:
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI19_ConditionalContentVyACyACyAA08ModifiedD0Vy07WorkoutB017CadenceMetricViewVAA24_ForegroundStyleModifierVyAA5ColorVGGSgAEyAF04PacehI0VAMGSgGACyAEyAF05PowerhI0VAMGSgAOGGACyACyAEyAF08DistanceH4TextVAMGSgAEyAF06EnergyhI0VAMGSgGACyAEyAF0h7HeadingI0VyAA0Q0VGAMGSgAEyAF0hQ0VAA022_EnvironmentKeyWritingL0VyALSgGGSgGGGMd);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI19_ConditionalContentVyACyACyAA08ModifiedD0VyAEyAA5ImageVAA24_ForegroundStyleModifierVyAA5ColorVGG07WorkoutB015MetricValueFontVGSgAEyAN04PaceL4ViewVALGSgGACyAvEyAN05PowerlP0VALGSgGGACyACyACyAEyAN0L4TextVALGA4_GSgAVGACyAEyAN011ElapsedTimeP0VALGSgACyACyAEyAEyAEyAEyAA0R0VAN0k12NotificationN0VGAA022_EnvironmentKeyWritingI0Vy12CoreGraphics7CGFloatVGGA18_ySiSgGGALGA27_GA27_GSgGGGMd);
    lazy protocol witness table accessor for type _ConditionalContent<_ConditionalContent<_ConditionalContent<ModifiedContent<CadenceMetricView, _ForegroundStyleModifier<Color>>?, ModifiedContent<PaceMetricView, _ForegroundStyleModifier<Color>>?>, _ConditionalContent<ModifiedContent<PowerMetricView, _ForegroundStyleModifier<Color>>?, ModifiedContent<CadenceMetricView, _ForegroundStyleModifier<Color>>?>>, _ConditionalContent<_ConditionalContent<ModifiedContent<DistanceMetricText, _ForegroundStyleModifier<Color>>?, ModifiedContent<EnergyMetricView, _ForegroundStyleModifier<Color>>?>, _ConditionalContent<ModifiedContent<MetricHeadingView<Text>, _ForegroundStyleModifier<Color>>?, ModifiedContent<MetricText, _EnvironmentKeyWritingModifier<Color?>>?>>> and conformance <> _ConditionalContent<A, B>();
    lazy protocol witness table accessor for type _ConditionalContent<_ConditionalContent<_ConditionalContent<ModifiedContent<ModifiedContent<Image, _ForegroundStyleModifier<Color>>, MetricValueFont>?, ModifiedContent<PaceMetricView, _ForegroundStyleModifier<Color>>?>, _ConditionalContent<ModifiedContent<PaceMetricView, _ForegroundStyleModifier<Color>>?, ModifiedContent<PowerMetricView, _ForegroundStyleModifier<Color>>?>>, _ConditionalContent<_ConditionalContent<_ConditionalContent<ModifiedContent<MetricText, _ForegroundStyleModifier<Color>>, ModifiedContent<MetricText, _ForegroundStyleModifier<Color>>>?, ModifiedContent<PaceMetricView, _ForegroundStyleModifier<Color>>?>, _ConditionalContent<ModifiedContent<ElapsedTimeView, _ForegroundStyleModifier<Color>>?, _ConditionalContent<_ConditionalContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Text, WorkoutNotificationFont>, _EnvironmentKeyWritingModifier<CGFloat>>, _EnvironmentKeyWritingModifier<Int?>>, _ForegroundStyleModifier<Color>>, Modifie();
    _ConditionalContent<>.init(storage:)();
    *&v344[32] = v336[0];
    *&v344[48] = v336[1];
    *&v344[64] = v336[2];
    *&v344[80] = v337;
    v342 = v332;
    v343 = v333;
    *v344 = v334;
    *&v344[16] = v335;
    v352 = 0;
    goto LABEL_64;
  }

  if (v33 == *MEMORY[0x277D7DB08])
  {
    dispatch thunk of WorkoutNotificationUnit.key.getter();
    v132 = v316;
    if (v133)
    {
      v134 = Image.init(systemName:)();
      v135 = v132;
      if (!v132)
      {
        v135 = static Color.white.getter();
      }

      v136 = swift_getKeyPath();

      v137 = 256;
    }

    else
    {
      v134 = 0;
      v135 = 0;
      v137 = 0;
      v136 = 0;
    }

    v317 = v134;
    v340 = 0;
    v346._countAndFlagsBits = v134;
    v346._object = v135;
    v347._countAndFlagsBits = v137;
    v347._object = v136;
    LOBYTE(v348) = 0;
    v351[0] = 0;
    outlined copy of ModifiedContent<ModifiedContent<Image, _ForegroundStyleModifier<Color>>, MetricValueFont>?(v134, v135, v137, v136, 0);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyACyAA5ImageVAA24_ForegroundStyleModifierVyAA5ColorVGG07WorkoutB015MetricValueFontVGSgMd);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVy07WorkoutB014PaceMetricViewVAA24_ForegroundStyleModifierVyAA5ColorVGGSgMd);
    lazy protocol witness table accessor for type ModifiedContent<ElapsedTimeView, _ForegroundStyleModifier<Color>>? and conformance <A> A?(&lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<Image, _ForegroundStyleModifier<Color>>, MetricValueFont>? and conformance <A> A?, &_s7SwiftUI15ModifiedContentVyACyAA5ImageVAA24_ForegroundStyleModifierVyAA5ColorVGG07WorkoutB015MetricValueFontVGSgMd, &_s7SwiftUI15ModifiedContentVyACyAA5ImageVAA24_ForegroundStyleModifierVyAA5ColorVGG07WorkoutB015MetricValueFontVGSgMR, lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<Image, _ForegroundStyleModifier<Color>>, MetricValueFont> and conformance <> ModifiedContent<A, B>);
    lazy protocol witness table accessor for type ModifiedContent<ElapsedTimeView, _ForegroundStyleModifier<Color>>? and conformance <A> A?(&lazy protocol witness table cache variable for type ModifiedContent<PaceMetricView, _ForegroundStyleModifier<Color>>? and conformance <A> A?, &_s7SwiftUI15ModifiedContentVy07WorkoutB014PaceMetricViewVAA24_ForegroundStyleModifierVyAA5ColorVGGSgMd, &_s7SwiftUI15ModifiedContentVy07WorkoutB014PaceMetricViewVAA24_ForegroundStyleModifierVyAA5ColorVGGSgMR, lazy protocol witness table accessor for type ModifiedContent<PaceMetricView, _ForegroundStyleModifier<Color>> and conformance <> ModifiedContent<A, B>);
    _ConditionalContent<>.init(storage:)();
    v348 = *v344;
    v349 = *&v344[16];
    v350 = *&v344[32];
    v351[0] = v344[48];
    v346 = v342;
    v347 = v343;
    v341 = 0;
    v351[25] = 0;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI19_ConditionalContentVyAA08ModifiedD0VyAEyAA5ImageVAA24_ForegroundStyleModifierVyAA5ColorVGG07WorkoutB015MetricValueFontVGSgAEyAN04PaceL4ViewVALGSgGMd);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI19_ConditionalContentVyAA08ModifiedD0Vy07WorkoutB014PaceMetricViewVAA24_ForegroundStyleModifierVyAA5ColorVGGSgAEyAF05PowerhI0VAMGSgGMd);
    lazy protocol witness table accessor for type _ConditionalContent<ModifiedContent<ModifiedContent<Image, _ForegroundStyleModifier<Color>>, MetricValueFont>?, ModifiedContent<PaceMetricView, _ForegroundStyleModifier<Color>>?> and conformance <> _ConditionalContent<A, B>();
    lazy protocol witness table accessor for type _ConditionalContent<ModifiedContent<PaceMetricView, _ForegroundStyleModifier<Color>>?, ModifiedContent<PowerMetricView, _ForegroundStyleModifier<Color>>?> and conformance <> _ConditionalContent<A, B>();
    _ConditionalContent<>.init(storage:)();
    v350 = v336[0];
    *v351 = v336[1];
    *&v351[10] = *(&v336[1] + 10);
    v346 = v332;
    v347 = v333;
    v348 = v334;
    v349 = v335;
    v352 = 0;
    v351[26] = 0;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI19_ConditionalContentVyACyAA08ModifiedD0VyAEyAA5ImageVAA24_ForegroundStyleModifierVyAA5ColorVGG07WorkoutB015MetricValueFontVGSgAEyAN04PaceL4ViewVALGSgGACyAvEyAN05PowerlP0VALGSgGGMd);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI19_ConditionalContentVyACyACyAA08ModifiedD0Vy07WorkoutB010MetricTextVAA24_ForegroundStyleModifierVyAA5ColorVGGANGSgAEyAF04PaceG4ViewVAMGSgGACyAEyAF011ElapsedTimeN0VAMGSgACyACyAEyAEyAEyAEyAA0H0VAF0F16NotificationFontVGAA022_EnvironmentKeyWritingK0Vy12CoreGraphics7CGFloatVGGA4_ySiSgGGAMGA13_GA13_GSgGGMd);
    lazy protocol witness table accessor for type _ConditionalContent<_ConditionalContent<ModifiedContent<ModifiedContent<Image, _ForegroundStyleModifier<Color>>, MetricValueFont>?, ModifiedContent<PaceMetricView, _ForegroundStyleModifier<Color>>?>, _ConditionalContent<ModifiedContent<PaceMetricView, _ForegroundStyleModifier<Color>>?, ModifiedContent<PowerMetricView, _ForegroundStyleModifier<Color>>?>> and conformance <> _ConditionalContent<A, B>();
    lazy protocol witness table accessor for type _ConditionalContent<_ConditionalContent<_ConditionalContent<ModifiedContent<MetricText, _ForegroundStyleModifier<Color>>, ModifiedContent<MetricText, _ForegroundStyleModifier<Color>>>?, ModifiedContent<PaceMetricView, _ForegroundStyleModifier<Color>>?>, _ConditionalContent<ModifiedContent<ElapsedTimeView, _ForegroundStyleModifier<Color>>?, _ConditionalContent<_ConditionalContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Text, WorkoutNotificationFont>, _EnvironmentKeyWritingModifier<CGFloat>>, _EnvironmentKeyWritingModifier<Int?>>, _ForegroundStyleModifier<Color>>, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Text, WorkoutNotificationFont>, _EnvironmentKeyWritingModifier<CGFloat>>, _EnvironmentKeyWritingModifier<Int?>>, _ForegroundStyleModifier<Color>>>, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Text, WorkoutNotificationFont>, _EnvironmentKeyWritingModifier<CGFloat>>, _EnvironmentKeyWritingModifier<Int();
    _ConditionalContent<>.init(storage:)();
    v350 = *&v344[32];
    *v351 = *&v344[48];
    *&v351[11] = *&v344[59];
    v346 = v342;
    v347 = v343;
    v348 = *v344;
    v349 = *&v344[16];
    v331 = 1;
    v351[35] = 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI19_ConditionalContentVyACyACyAA08ModifiedD0Vy07WorkoutB017CadenceMetricViewVAA24_ForegroundStyleModifierVyAA5ColorVGGSgAEyAF04PacehI0VAMGSgGACyAEyAF05PowerhI0VAMGSgAOGGACyACyAEyAF08DistanceH4TextVAMGSgAEyAF06EnergyhI0VAMGSgGACyAEyAF0h7HeadingI0VyAA0Q0VGAMGSgAEyAF0hQ0VAA022_EnvironmentKeyWritingL0VyALSgGGSgGGGMd);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI19_ConditionalContentVyACyACyAA08ModifiedD0VyAEyAA5ImageVAA24_ForegroundStyleModifierVyAA5ColorVGG07WorkoutB015MetricValueFontVGSgAEyAN04PaceL4ViewVALGSgGACyAvEyAN05PowerlP0VALGSgGGACyACyACyAEyAN0L4TextVALGA4_GSgAVGACyAEyAN011ElapsedTimeP0VALGSgACyACyAEyAEyAEyAEyAA0R0VAN0k12NotificationN0VGAA022_EnvironmentKeyWritingI0Vy12CoreGraphics7CGFloatVGGA18_ySiSgGGALGA27_GA27_GSgGGGMd);
    lazy protocol witness table accessor for type _ConditionalContent<_ConditionalContent<_ConditionalContent<ModifiedContent<CadenceMetricView, _ForegroundStyleModifier<Color>>?, ModifiedContent<PaceMetricView, _ForegroundStyleModifier<Color>>?>, _ConditionalContent<ModifiedContent<PowerMetricView, _ForegroundStyleModifier<Color>>?, ModifiedContent<CadenceMetricView, _ForegroundStyleModifier<Color>>?>>, _ConditionalContent<_ConditionalContent<ModifiedContent<DistanceMetricText, _ForegroundStyleModifier<Color>>?, ModifiedContent<EnergyMetricView, _ForegroundStyleModifier<Color>>?>, _ConditionalContent<ModifiedContent<MetricHeadingView<Text>, _ForegroundStyleModifier<Color>>?, ModifiedContent<MetricText, _EnvironmentKeyWritingModifier<Color?>>?>>> and conformance <> _ConditionalContent<A, B>();
    lazy protocol witness table accessor for type _ConditionalContent<_ConditionalContent<_ConditionalContent<ModifiedContent<ModifiedContent<Image, _ForegroundStyleModifier<Color>>, MetricValueFont>?, ModifiedContent<PaceMetricView, _ForegroundStyleModifier<Color>>?>, _ConditionalContent<ModifiedContent<PaceMetricView, _ForegroundStyleModifier<Color>>?, ModifiedContent<PowerMetricView, _ForegroundStyleModifier<Color>>?>>, _ConditionalContent<_ConditionalContent<_ConditionalContent<ModifiedContent<MetricText, _ForegroundStyleModifier<Color>>, ModifiedContent<MetricText, _ForegroundStyleModifier<Color>>>?, ModifiedContent<PaceMetricView, _ForegroundStyleModifier<Color>>?>, _ConditionalContent<ModifiedContent<ElapsedTimeView, _ForegroundStyleModifier<Color>>?, _ConditionalContent<_ConditionalContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Text, WorkoutNotificationFont>, _EnvironmentKeyWritingModifier<CGFloat>>, _EnvironmentKeyWritingModifier<Int?>>, _ForegroundStyleModifier<Color>>, Modifie();
    _ConditionalContent<>.init(storage:)();
    *&v344[32] = v336[0];
    *&v344[48] = v336[1];
    *&v344[64] = v336[2];
    *&v344[80] = v337;
    v342 = v332;
    v343 = v333;
    *v344 = v334;
    *&v344[16] = v335;
    LOBYTE(v324._countAndFlagsBits) = 0;
    v345 = 0;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI19_ConditionalContentVyACyACyACyAA08ModifiedD0Vy07WorkoutB017CadenceMetricViewVAA24_ForegroundStyleModifierVyAA5ColorVGGSgAEyAF04PacehI0VAMGSgGACyAEyAF05PowerhI0VAMGSgAOGGACyACyAEyAF08DistanceH4TextVAMGSgAEyAF06EnergyhI0VAMGSgGACyAEyAF0h7HeadingI0VyAA0Q0VGAMGSgAEyAF0hQ0VAA022_EnvironmentKeyWritingL0VyALSgGGSgGGGACyACyACyAEyAEyAA5ImageVAMGAF0H9ValueFontVGSgASGACyAsXGGACyACyACyAEyA16_AMGA36_GSgASGACyAEyAF011ElapsedTimeI0VAMGSgACyACyAEyAEyAEyAEyA11_AF0f12NotificationY0VGA18_y12CoreGraphics7CGFloatVGGA18_ySiSgGGAMGA55_GA55_GSgGGGGMd);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI19_ConditionalContentVyAA08ModifiedD0Vy07WorkoutB015ElapsedTimeViewVAA24_ForegroundStyleModifierVyAA5ColorVGGSgAA4TextVGMd);
    lazy protocol witness table accessor for type _ConditionalContent<_ConditionalContent<_ConditionalContent<_ConditionalContent<ModifiedContent<CadenceMetricView, _ForegroundStyleModifier<Color>>?, ModifiedContent<PaceMetricView, _ForegroundStyleModifier<Color>>?>, _ConditionalContent<ModifiedContent<PowerMetricView, _ForegroundStyleModifier<Color>>?, ModifiedContent<CadenceMetricView, _ForegroundStyleModifier<Color>>?>>, _ConditionalContent<_ConditionalContent<ModifiedContent<DistanceMetricText, _ForegroundStyleModifier<Color>>?, ModifiedContent<EnergyMetricView, _ForegroundStyleModifier<Color>>?>, _ConditionalContent<ModifiedContent<MetricHeadingView<Text>, _ForegroundStyleModifier<Color>>?, ModifiedContent<MetricText, _EnvironmentKeyWritingModifier<Color?>>?>>>, _ConditionalContent<_ConditionalContent<_ConditionalContent<ModifiedContent<ModifiedContent<Image, _ForegroundStyleModifier<Color>>, MetricValueFont>?, ModifiedContent<PaceMetricView, _ForegroundStyleModifier<Color>>?>, _ConditionalContent<ModifiedC();
    lazy protocol witness table accessor for type _ConditionalContent<ModifiedContent<ElapsedTimeView, _ForegroundStyleModifier<Color>>?, Text> and conformance <> _ConditionalContent<A, B>();
    _ConditionalContent<>.init(storage:)();
    outlined consume of ModifiedContent<ModifiedContent<Image, _ForegroundStyleModifier<Color>>, MetricValueFont>?(v317, v135, v137, v136, 0);
    goto LABEL_40;
  }

  v158 = v316;
  if (v33 == *MEMORY[0x277D7DAF8])
  {
    v159 = dispatch thunk of WorkoutNotificationUnit.value.getter();
    if ((v160 & 1) != 0 || (v161 = v159, (v162 = dispatch thunk of WorkoutNotificationUnit.activityType.getter()) == 0))
    {
      v327 = 0u;
      v328 = 0u;
      v326 = 0u;
      v324 = 0;
      v325 = 0;
    }

    else
    {
      v163 = v162;
      v164 = swift_getKeyPath();
      LOBYTE(v346._countAndFlagsBits) = 0;
      if (v158)
      {
        v165 = v317;
        v166 = v317;
        v167 = v158;
      }

      else
      {
        v198 = objc_opt_self();
        v199 = v317;
        v200 = v163;
        v201 = [v198 paceColors];
        if (!v201)
        {
LABEL_237:
          __break(1u);
          goto LABEL_238;
        }

        v202 = v201;
        v203 = [v201 nonGradientTextColor];

        if (!v203)
        {
LABEL_238:
          __break(1u);
          goto LABEL_239;
        }

        v167 = Color.init(uiColor:)();

        v165 = v317;
      }

      v324._countAndFlagsBits = v165;
      v324._object = 4;
      v325._countAndFlagsBits = v163;
      v325._object = v164;
      LOBYTE(v326) = 0;
      *(&v326 + 1) = v161;
      LOBYTE(v327) = 0;
      *(&v327 + 1) = 0;
      *&v328 = 0;
      *(&v328 + 1) = v167;
    }

    v348 = v326;
    v349 = v327;
    v350 = v328;
    v346 = v324;
    v347 = v325;
    v339 = 1;
    v351[0] = 1;
    v120 = &_s7SwiftUI15ModifiedContentVy07WorkoutB014PaceMetricViewVAA24_ForegroundStyleModifierVyAA5ColorVGGSgMd;
    outlined init with copy of _ConditionalContent<_ConditionalContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Text, WorkoutNotificationFont>, _EnvironmentKeyWritingModifier<CGFloat>>, _EnvironmentKeyWritingModifier<Int?>>, _ForegroundStyleModifier<Color>>, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Text, WorkoutNotificationFont>, _EnvironmentKeyWritingModifier<CGFloat>>, _EnvironmentKeyWritingModifier<Int?>>, _ForegroundStyleModifier<Color>>>, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Text, WorkoutNotificationFont>, _EnvironmentKeyWritingModifier<CGFloat>>, _EnvironmentKeyWritingModifier<Int?>>, _ForegroundStyleModifier<Color>>>?(&v324, &v342, &_s7SwiftUI15ModifiedContentVy07WorkoutB014PaceMetricViewVAA24_ForegroundStyleModifierVyAA5ColorVGGSgMd);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyACyAA5ImageVAA24_ForegroundStyleModifierVyAA5ColorVGG07WorkoutB015MetricValueFontVGSgMd);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVy07WorkoutB014PaceMetricViewVAA24_ForegroundStyleModifierVyAA5ColorVGGSgMd);
    lazy protocol witness table accessor for type ModifiedContent<ElapsedTimeView, _ForegroundStyleModifier<Color>>? and conformance <A> A?(&lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<Image, _ForegroundStyleModifier<Color>>, MetricValueFont>? and conformance <A> A?, &_s7SwiftUI15ModifiedContentVyACyAA5ImageVAA24_ForegroundStyleModifierVyAA5ColorVGG07WorkoutB015MetricValueFontVGSgMd, &_s7SwiftUI15ModifiedContentVyACyAA5ImageVAA24_ForegroundStyleModifierVyAA5ColorVGG07WorkoutB015MetricValueFontVGSgMR, lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<Image, _ForegroundStyleModifier<Color>>, MetricValueFont> and conformance <> ModifiedContent<A, B>);
    lazy protocol witness table accessor for type ModifiedContent<ElapsedTimeView, _ForegroundStyleModifier<Color>>? and conformance <A> A?(&lazy protocol witness table cache variable for type ModifiedContent<PaceMetricView, _ForegroundStyleModifier<Color>>? and conformance <A> A?, &_s7SwiftUI15ModifiedContentVy07WorkoutB014PaceMetricViewVAA24_ForegroundStyleModifierVyAA5ColorVGGSgMd, &_s7SwiftUI15ModifiedContentVy07WorkoutB014PaceMetricViewVAA24_ForegroundStyleModifierVyAA5ColorVGGSgMR, lazy protocol witness table accessor for type ModifiedContent<PaceMetricView, _ForegroundStyleModifier<Color>> and conformance <> ModifiedContent<A, B>);
    _ConditionalContent<>.init(storage:)();
    v348 = *v344;
    v349 = *&v344[16];
    v350 = *&v344[32];
    v351[0] = v344[48];
    v346 = v342;
    v347 = v343;
    v340 = 0;
    v351[25] = 0;
LABEL_151:
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI19_ConditionalContentVyAA08ModifiedD0VyAEyAA5ImageVAA24_ForegroundStyleModifierVyAA5ColorVGG07WorkoutB015MetricValueFontVGSgAEyAN04PaceL4ViewVALGSgGMd);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI19_ConditionalContentVyAA08ModifiedD0Vy07WorkoutB014PaceMetricViewVAA24_ForegroundStyleModifierVyAA5ColorVGGSgAEyAF05PowerhI0VAMGSgGMd);
    lazy protocol witness table accessor for type _ConditionalContent<ModifiedContent<ModifiedContent<Image, _ForegroundStyleModifier<Color>>, MetricValueFont>?, ModifiedContent<PaceMetricView, _ForegroundStyleModifier<Color>>?> and conformance <> _ConditionalContent<A, B>();
    lazy protocol witness table accessor for type _ConditionalContent<ModifiedContent<PaceMetricView, _ForegroundStyleModifier<Color>>?, ModifiedContent<PowerMetricView, _ForegroundStyleModifier<Color>>?> and conformance <> _ConditionalContent<A, B>();
    _ConditionalContent<>.init(storage:)();
    v350 = v336[0];
    *v351 = v336[1];
    *&v351[10] = *(&v336[1] + 10);
    v346 = v332;
    v347 = v333;
    v348 = v334;
    v349 = v335;
    v341 = 0;
    v351[26] = 0;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI19_ConditionalContentVyACyAA08ModifiedD0VyAEyAA5ImageVAA24_ForegroundStyleModifierVyAA5ColorVGG07WorkoutB015MetricValueFontVGSgAEyAN04PaceL4ViewVALGSgGACyAvEyAN05PowerlP0VALGSgGGMd);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI19_ConditionalContentVyACyACyAA08ModifiedD0Vy07WorkoutB010MetricTextVAA24_ForegroundStyleModifierVyAA5ColorVGGANGSgAEyAF04PaceG4ViewVAMGSgGACyAEyAF011ElapsedTimeN0VAMGSgACyACyAEyAEyAEyAEyAA0H0VAF0F16NotificationFontVGAA022_EnvironmentKeyWritingK0Vy12CoreGraphics7CGFloatVGGA4_ySiSgGGAMGA13_GA13_GSgGGMd);
    lazy protocol witness table accessor for type _ConditionalContent<_ConditionalContent<ModifiedContent<ModifiedContent<Image, _ForegroundStyleModifier<Color>>, MetricValueFont>?, ModifiedContent<PaceMetricView, _ForegroundStyleModifier<Color>>?>, _ConditionalContent<ModifiedContent<PaceMetricView, _ForegroundStyleModifier<Color>>?, ModifiedContent<PowerMetricView, _ForegroundStyleModifier<Color>>?>> and conformance <> _ConditionalContent<A, B>();
    lazy protocol witness table accessor for type _ConditionalContent<_ConditionalContent<_ConditionalContent<ModifiedContent<MetricText, _ForegroundStyleModifier<Color>>, ModifiedContent<MetricText, _ForegroundStyleModifier<Color>>>?, ModifiedContent<PaceMetricView, _ForegroundStyleModifier<Color>>?>, _ConditionalContent<ModifiedContent<ElapsedTimeView, _ForegroundStyleModifier<Color>>?, _ConditionalContent<_ConditionalContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Text, WorkoutNotificationFont>, _EnvironmentKeyWritingModifier<CGFloat>>, _EnvironmentKeyWritingModifier<Int?>>, _ForegroundStyleModifier<Color>>, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Text, WorkoutNotificationFont>, _EnvironmentKeyWritingModifier<CGFloat>>, _EnvironmentKeyWritingModifier<Int?>>, _ForegroundStyleModifier<Color>>>, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Text, WorkoutNotificationFont>, _EnvironmentKeyWritingModifier<CGFloat>>, _EnvironmentKeyWritingModifier<Int();
    _ConditionalContent<>.init(storage:)();
    v350 = *&v344[32];
    *v351 = *&v344[48];
    *&v351[11] = *&v344[59];
    v346 = v342;
    v347 = v343;
    v348 = *v344;
    v349 = *&v344[16];
    v352 = 1;
    v351[35] = 1;
    goto LABEL_63;
  }

  if (v33 == *MEMORY[0x277D7DAF0])
  {
    v168 = dispatch thunk of WorkoutNotificationUnit.value.getter();
    if ((v169 & 1) != 0 || (v170 = v168, (v171 = dispatch thunk of WorkoutNotificationUnit.activityType.getter()) == 0))
    {
      v327 = 0u;
      v328 = 0u;
      v326 = 0u;
      v324 = 0;
      v325 = 0;
    }

    else
    {
      v172 = v171;
      v173 = swift_getKeyPath();
      LOBYTE(v346._countAndFlagsBits) = 0;
      if (v158)
      {
        v174 = v317;
        v175 = v317;
        v176 = v158;
      }

      else
      {
        v223 = objc_opt_self();
        v224 = v317;
        v225 = v172;
        v226 = [v223 paceColors];
        if (!v226)
        {
LABEL_239:
          __break(1u);
          goto LABEL_240;
        }

        v227 = v226;
        v228 = [v226 nonGradientTextColor];

        if (!v228)
        {
LABEL_240:
          __break(1u);
          goto LABEL_241;
        }

        v176 = Color.init(uiColor:)();

        v174 = v317;
      }

      v324._countAndFlagsBits = v174;
      v324._object = 4;
      v325._countAndFlagsBits = v172;
      v325._object = v173;
      LOBYTE(v326) = 0;
      *(&v326 + 1) = v170;
      LOBYTE(v327) = 1;
      *(&v327 + 1) = 0;
      *&v328 = 0;
      *(&v328 + 1) = v176;
    }

    v348 = v326;
    v349 = v327;
    v350 = v328;
    v346 = v324;
    v347 = v325;
    v339 = 0;
    v351[24] = 0;
    v120 = &_s7SwiftUI15ModifiedContentVy07WorkoutB014PaceMetricViewVAA24_ForegroundStyleModifierVyAA5ColorVGGSgMd;
    outlined init with copy of _ConditionalContent<_ConditionalContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Text, WorkoutNotificationFont>, _EnvironmentKeyWritingModifier<CGFloat>>, _EnvironmentKeyWritingModifier<Int?>>, _ForegroundStyleModifier<Color>>, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Text, WorkoutNotificationFont>, _EnvironmentKeyWritingModifier<CGFloat>>, _EnvironmentKeyWritingModifier<Int?>>, _ForegroundStyleModifier<Color>>>, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Text, WorkoutNotificationFont>, _EnvironmentKeyWritingModifier<CGFloat>>, _EnvironmentKeyWritingModifier<Int?>>, _ForegroundStyleModifier<Color>>>?(&v324, &v342, &_s7SwiftUI15ModifiedContentVy07WorkoutB014PaceMetricViewVAA24_ForegroundStyleModifierVyAA5ColorVGGSgMd);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVy07WorkoutB014PaceMetricViewVAA24_ForegroundStyleModifierVyAA5ColorVGGSgMd);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVy07WorkoutB015PowerMetricViewVAA24_ForegroundStyleModifierVyAA5ColorVGGSgMd);
    lazy protocol witness table accessor for type ModifiedContent<ElapsedTimeView, _ForegroundStyleModifier<Color>>? and conformance <A> A?(&lazy protocol witness table cache variable for type ModifiedContent<PaceMetricView, _ForegroundStyleModifier<Color>>? and conformance <A> A?, &_s7SwiftUI15ModifiedContentVy07WorkoutB014PaceMetricViewVAA24_ForegroundStyleModifierVyAA5ColorVGGSgMd, &_s7SwiftUI15ModifiedContentVy07WorkoutB014PaceMetricViewVAA24_ForegroundStyleModifierVyAA5ColorVGGSgMR, lazy protocol witness table accessor for type ModifiedContent<PaceMetricView, _ForegroundStyleModifier<Color>> and conformance <> ModifiedContent<A, B>);
    lazy protocol witness table accessor for type ModifiedContent<ElapsedTimeView, _ForegroundStyleModifier<Color>>? and conformance <A> A?(&lazy protocol witness table cache variable for type ModifiedContent<PowerMetricView, _ForegroundStyleModifier<Color>>? and conformance <A> A?, &_s7SwiftUI15ModifiedContentVy07WorkoutB015PowerMetricViewVAA24_ForegroundStyleModifierVyAA5ColorVGGSgMd, &_s7SwiftUI15ModifiedContentVy07WorkoutB015PowerMetricViewVAA24_ForegroundStyleModifierVyAA5ColorVGGSgMR, lazy protocol witness table accessor for type ModifiedContent<PowerMetricView, _ForegroundStyleModifier<Color>> and conformance <> ModifiedContent<A, B>);
    _ConditionalContent<>.init(storage:)();
    v350 = *&v344[32];
    *v351 = *&v344[48];
    *&v351[9] = *&v344[57];
    v346 = v342;
    v347 = v343;
    v348 = *v344;
    v349 = *&v344[16];
    v340 = 1;
    v351[25] = 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI19_ConditionalContentVyAA08ModifiedD0VyAEyAA5ImageVAA24_ForegroundStyleModifierVyAA5ColorVGG07WorkoutB015MetricValueFontVGSgAEyAN04PaceL4ViewVALGSgGMd);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI19_ConditionalContentVyAA08ModifiedD0Vy07WorkoutB014PaceMetricViewVAA24_ForegroundStyleModifierVyAA5ColorVGGSgAEyAF05PowerhI0VAMGSgGMd);
    lazy protocol witness table accessor for type _ConditionalContent<ModifiedContent<ModifiedContent<Image, _ForegroundStyleModifier<Color>>, MetricValueFont>?, ModifiedContent<PaceMetricView, _ForegroundStyleModifier<Color>>?> and conformance <> _ConditionalContent<A, B>();
    lazy protocol witness table accessor for type _ConditionalContent<ModifiedContent<PaceMetricView, _ForegroundStyleModifier<Color>>?, ModifiedContent<PowerMetricView, _ForegroundStyleModifier<Color>>?> and conformance <> _ConditionalContent<A, B>();
    _ConditionalContent<>.init(storage:)();
    v350 = v336[0];
    *v351 = v336[1];
    *&v351[10] = *(&v336[1] + 10);
    v346 = v332;
    v347 = v333;
    v348 = v334;
    v349 = v335;
    v341 = 0;
    v351[26] = 0;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI19_ConditionalContentVyACyAA08ModifiedD0VyAEyAA5ImageVAA24_ForegroundStyleModifierVyAA5ColorVGG07WorkoutB015MetricValueFontVGSgAEyAN04PaceL4ViewVALGSgGACyAvEyAN05PowerlP0VALGSgGGMd);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI19_ConditionalContentVyACyACyAA08ModifiedD0Vy07WorkoutB010MetricTextVAA24_ForegroundStyleModifierVyAA5ColorVGGANGSgAEyAF04PaceG4ViewVAMGSgGACyAEyAF011ElapsedTimeN0VAMGSgACyACyAEyAEyAEyAEyAA0H0VAF0F16NotificationFontVGAA022_EnvironmentKeyWritingK0Vy12CoreGraphics7CGFloatVGGA4_ySiSgGGAMGA13_GA13_GSgGGMd);
    lazy protocol witness table accessor for type _ConditionalContent<_ConditionalContent<ModifiedContent<ModifiedContent<Image, _ForegroundStyleModifier<Color>>, MetricValueFont>?, ModifiedContent<PaceMetricView, _ForegroundStyleModifier<Color>>?>, _ConditionalContent<ModifiedContent<PaceMetricView, _ForegroundStyleModifier<Color>>?, ModifiedContent<PowerMetricView, _ForegroundStyleModifier<Color>>?>> and conformance <> _ConditionalContent<A, B>();
    lazy protocol witness table accessor for type _ConditionalContent<_ConditionalContent<_ConditionalContent<ModifiedContent<MetricText, _ForegroundStyleModifier<Color>>, ModifiedContent<MetricText, _ForegroundStyleModifier<Color>>>?, ModifiedContent<PaceMetricView, _ForegroundStyleModifier<Color>>?>, _ConditionalContent<ModifiedContent<ElapsedTimeView, _ForegroundStyleModifier<Color>>?, _ConditionalContent<_ConditionalContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Text, WorkoutNotificationFont>, _EnvironmentKeyWritingModifier<CGFloat>>, _EnvironmentKeyWritingModifier<Int?>>, _ForegroundStyleModifier<Color>>, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Text, WorkoutNotificationFont>, _EnvironmentKeyWritingModifier<CGFloat>>, _EnvironmentKeyWritingModifier<Int?>>, _ForegroundStyleModifier<Color>>>, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Text, WorkoutNotificationFont>, _EnvironmentKeyWritingModifier<CGFloat>>, _EnvironmentKeyWritingModifier<Int();
    _ConditionalContent<>.init(storage:)();
    v350 = *&v344[32];
    *v351 = *&v344[48];
    *&v351[11] = *&v344[59];
    v346 = v342;
    v347 = v343;
    v348 = *v344;
    v349 = *&v344[16];
    v352 = 1;
    v351[35] = 1;
    goto LABEL_63;
  }

  if (v33 == *MEMORY[0x277D7DB10])
  {
    v177 = dispatch thunk of WorkoutNotificationUnit.value.getter();
    if ((v178 & 1) != 0 || (v179 = v177, (v180 = dispatch thunk of WorkoutNotificationUnit.activityType.getter()) == 0))
    {
      *&v330 = 0;
      v328 = 0u;
      v329 = 0u;
      v326 = 0u;
      v327 = 0u;
      v324 = 0;
      v325 = 0;
    }

    else
    {
      v181 = v180;
      v182 = swift_getKeyPath();
      LOBYTE(v342._countAndFlagsBits) = 0;
      v183 = swift_getKeyPath();
      LOBYTE(v332._countAndFlagsBits) = 0;
      v184 = swift_getKeyPath();
      v331 = 0;
      LOBYTE(v346._countAndFlagsBits) = 0;
      v185 = v342._countAndFlagsBits;
      v186 = v332._countAndFlagsBits;
      if (v158)
      {
        v187 = v317;
      }

      else
      {
        v232 = objc_opt_self();
        v233 = v317;
        v316 = v181;
        v234 = [v232 powerColors];
        v235 = [v234 nonGradientTextColor];

        if (!v235)
        {
LABEL_241:
          __break(1u);
          goto LABEL_242;
        }

        v158 = Color.init(uiColor:)();
      }

      v324._countAndFlagsBits = v181;
      v324._object = v179;
      LOBYTE(v325._countAndFlagsBits) = 0;
      v325._object = 11;
      *&v326 = v317;
      WORD4(v326) = 0;
      *&v327 = v182;
      BYTE8(v327) = v185;
      *&v328 = v183;
      BYTE8(v328) = v186;
      *&v329 = v184;
      BYTE8(v329) = 0;
      *&v330 = v158;
    }

    v350 = v328;
    *v351 = v329;
    *&v351[16] = v330;
    v346 = v324;
    v347 = v325;
    v348 = v326;
    v349 = v327;
    v339 = 1;
    v351[24] = 1;
    v120 = &_s7SwiftUI15ModifiedContentVy07WorkoutB015PowerMetricViewVAA24_ForegroundStyleModifierVyAA5ColorVGGSgMd;
    outlined init with copy of _ConditionalContent<_ConditionalContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Text, WorkoutNotificationFont>, _EnvironmentKeyWritingModifier<CGFloat>>, _EnvironmentKeyWritingModifier<Int?>>, _ForegroundStyleModifier<Color>>, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Text, WorkoutNotificationFont>, _EnvironmentKeyWritingModifier<CGFloat>>, _EnvironmentKeyWritingModifier<Int?>>, _ForegroundStyleModifier<Color>>>, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Text, WorkoutNotificationFont>, _EnvironmentKeyWritingModifier<CGFloat>>, _EnvironmentKeyWritingModifier<Int?>>, _ForegroundStyleModifier<Color>>>?(&v324, &v342, &_s7SwiftUI15ModifiedContentVy07WorkoutB015PowerMetricViewVAA24_ForegroundStyleModifierVyAA5ColorVGGSgMd);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVy07WorkoutB014PaceMetricViewVAA24_ForegroundStyleModifierVyAA5ColorVGGSgMd);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVy07WorkoutB015PowerMetricViewVAA24_ForegroundStyleModifierVyAA5ColorVGGSgMd);
    lazy protocol witness table accessor for type ModifiedContent<ElapsedTimeView, _ForegroundStyleModifier<Color>>? and conformance <A> A?(&lazy protocol witness table cache variable for type ModifiedContent<PaceMetricView, _ForegroundStyleModifier<Color>>? and conformance <A> A?, &_s7SwiftUI15ModifiedContentVy07WorkoutB014PaceMetricViewVAA24_ForegroundStyleModifierVyAA5ColorVGGSgMd, &_s7SwiftUI15ModifiedContentVy07WorkoutB014PaceMetricViewVAA24_ForegroundStyleModifierVyAA5ColorVGGSgMR, lazy protocol witness table accessor for type ModifiedContent<PaceMetricView, _ForegroundStyleModifier<Color>> and conformance <> ModifiedContent<A, B>);
    lazy protocol witness table accessor for type ModifiedContent<ElapsedTimeView, _ForegroundStyleModifier<Color>>? and conformance <A> A?(&lazy protocol witness table cache variable for type ModifiedContent<PowerMetricView, _ForegroundStyleModifier<Color>>? and conformance <A> A?, &_s7SwiftUI15ModifiedContentVy07WorkoutB015PowerMetricViewVAA24_ForegroundStyleModifierVyAA5ColorVGGSgMd, &_s7SwiftUI15ModifiedContentVy07WorkoutB015PowerMetricViewVAA24_ForegroundStyleModifierVyAA5ColorVGGSgMR, lazy protocol witness table accessor for type ModifiedContent<PowerMetricView, _ForegroundStyleModifier<Color>> and conformance <> ModifiedContent<A, B>);
    _ConditionalContent<>.init(storage:)();
    v350 = *&v344[32];
    *v351 = *&v344[48];
    *&v351[9] = *&v344[57];
    v346 = v342;
    v347 = v343;
    v348 = *v344;
    v349 = *&v344[16];
    v340 = 1;
    v351[25] = 1;
    goto LABEL_151;
  }

  if (v33 == *MEMORY[0x277D7DB48])
  {
    *&v188 = COERCE_DOUBLE(dispatch thunk of WorkoutNotificationUnit.value.getter());
    if (v189)
    {
      v327 = 0u;
      v328 = 0u;
      v326 = 0u;
      v324 = 0;
      v325 = 0;
      LOBYTE(v329) = -1;
LABEL_167:
      v348 = v326;
      v349 = v327;
      v350 = v328;
      v351[0] = v329;
      v346 = v324;
      v347 = v325;
      v338 = 0;
      v351[1] = 0;
      v120 = &_s7SwiftUI19_ConditionalContentVyAA08ModifiedD0Vy07WorkoutB010MetricTextVAA24_ForegroundStyleModifierVyAA5ColorVGGANGSgMd;
      outlined init with copy of _ConditionalContent<_ConditionalContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Text, WorkoutNotificationFont>, _EnvironmentKeyWritingModifier<CGFloat>>, _EnvironmentKeyWritingModifier<Int?>>, _ForegroundStyleModifier<Color>>, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Text, WorkoutNotificationFont>, _EnvironmentKeyWritingModifier<CGFloat>>, _EnvironmentKeyWritingModifier<Int?>>, _ForegroundStyleModifier<Color>>>, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Text, WorkoutNotificationFont>, _EnvironmentKeyWritingModifier<CGFloat>>, _EnvironmentKeyWritingModifier<Int?>>, _ForegroundStyleModifier<Color>>>?(&v324, &v342, &_s7SwiftUI19_ConditionalContentVyAA08ModifiedD0Vy07WorkoutB010MetricTextVAA24_ForegroundStyleModifierVyAA5ColorVGGANGSgMd);
      __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI19_ConditionalContentVyAA08ModifiedD0Vy07WorkoutB010MetricTextVAA24_ForegroundStyleModifierVyAA5ColorVGGANGSgMd);
      __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVy07WorkoutB014PaceMetricViewVAA24_ForegroundStyleModifierVyAA5ColorVGGSgMd);
      lazy protocol witness table accessor for type _ConditionalContent<ModifiedContent<MetricText, _ForegroundStyleModifier<Color>>, ModifiedContent<MetricText, _ForegroundStyleModifier<Color>>>? and conformance <A> A?();
      lazy protocol witness table accessor for type ModifiedContent<ElapsedTimeView, _ForegroundStyleModifier<Color>>? and conformance <A> A?(&lazy protocol witness table cache variable for type ModifiedContent<PaceMetricView, _ForegroundStyleModifier<Color>>? and conformance <A> A?, &_s7SwiftUI15ModifiedContentVy07WorkoutB014PaceMetricViewVAA24_ForegroundStyleModifierVyAA5ColorVGGSgMd, &_s7SwiftUI15ModifiedContentVy07WorkoutB014PaceMetricViewVAA24_ForegroundStyleModifierVyAA5ColorVGGSgMR, lazy protocol witness table accessor for type ModifiedContent<PaceMetricView, _ForegroundStyleModifier<Color>> and conformance <> ModifiedContent<A, B>);
      _ConditionalContent<>.init(storage:)();
      v348 = *v344;
      v349 = *&v344[16];
      v350 = *&v344[32];
      *v351 = *&v344[48];
      v346 = v342;
      v347 = v343;
      v339 = 0;
      v351[19] = 0;
      __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI19_ConditionalContentVyACyAA08ModifiedD0Vy07WorkoutB010MetricTextVAA24_ForegroundStyleModifierVyAA5ColorVGGANGSgAEyAF04PaceG4ViewVAMGSgGMd);
      __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI19_ConditionalContentVyAA08ModifiedD0Vy07WorkoutB015ElapsedTimeViewVAA24_ForegroundStyleModifierVyAA5ColorVGGSgACyACyAEyAEyAEyAEyAA4TextVAF0F16NotificationFontVGAA022_EnvironmentKeyWritingL0Vy12CoreGraphics7CGFloatVGGAVySiSgGGAMGA3_GA3_GSgGMd);
      lazy protocol witness table accessor for type _ConditionalContent<_ConditionalContent<ModifiedContent<MetricText, _ForegroundStyleModifier<Color>>, ModifiedContent<MetricText, _ForegroundStyleModifier<Color>>>?, ModifiedContent<PaceMetricView, _ForegroundStyleModifier<Color>>?> and conformance <> _ConditionalContent<A, B>();
      lazy protocol witness table accessor for type _ConditionalContent<ModifiedContent<ElapsedTimeView, _ForegroundStyleModifier<Color>>?, _ConditionalContent<_ConditionalContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Text, WorkoutNotificationFont>, _EnvironmentKeyWritingModifier<CGFloat>>, _EnvironmentKeyWritingModifier<Int?>>, _ForegroundStyleModifier<Color>>, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Text, WorkoutNotificationFont>, _EnvironmentKeyWritingModifier<CGFloat>>, _EnvironmentKeyWritingModifier<Int?>>, _ForegroundStyleModifier<Color>>>, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Text, WorkoutNotificationFont>, _EnvironmentKeyWritingModifier<CGFloat>>, _EnvironmentKeyWritingModifier<Int?>>, _ForegroundStyleModifier<Color>>>?> and conformance <> _ConditionalContent<A, B>();
      _ConditionalContent<>.init(storage:)();
      v350 = v336[0];
      *v351 = v336[1];
      *&v351[16] = v336[2];
      v346 = v332;
      v347 = v333;
      v348 = v334;
      v349 = v335;
      v340 = 1;
      v351[26] = 1;
      __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI19_ConditionalContentVyACyAA08ModifiedD0VyAEyAA5ImageVAA24_ForegroundStyleModifierVyAA5ColorVGG07WorkoutB015MetricValueFontVGSgAEyAN04PaceL4ViewVALGSgGACyAvEyAN05PowerlP0VALGSgGGMd);
      __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI19_ConditionalContentVyACyACyAA08ModifiedD0Vy07WorkoutB010MetricTextVAA24_ForegroundStyleModifierVyAA5ColorVGGANGSgAEyAF04PaceG4ViewVAMGSgGACyAEyAF011ElapsedTimeN0VAMGSgACyACyAEyAEyAEyAEyAA0H0VAF0F16NotificationFontVGAA022_EnvironmentKeyWritingK0Vy12CoreGraphics7CGFloatVGGA4_ySiSgGGAMGA13_GA13_GSgGGMd);
      lazy protocol witness table accessor for type _ConditionalContent<_ConditionalContent<ModifiedContent<ModifiedContent<Image, _ForegroundStyleModifier<Color>>, MetricValueFont>?, ModifiedContent<PaceMetricView, _ForegroundStyleModifier<Color>>?>, _ConditionalContent<ModifiedContent<PaceMetricView, _ForegroundStyleModifier<Color>>?, ModifiedContent<PowerMetricView, _ForegroundStyleModifier<Color>>?>> and conformance <> _ConditionalContent<A, B>();
      lazy protocol witness table accessor for type _ConditionalContent<_ConditionalContent<_ConditionalContent<ModifiedContent<MetricText, _ForegroundStyleModifier<Color>>, ModifiedContent<MetricText, _ForegroundStyleModifier<Color>>>?, ModifiedContent<PaceMetricView, _ForegroundStyleModifier<Color>>?>, _ConditionalContent<ModifiedContent<ElapsedTimeView, _ForegroundStyleModifier<Color>>?, _ConditionalContent<_ConditionalContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Text, WorkoutNotificationFont>, _EnvironmentKeyWritingModifier<CGFloat>>, _EnvironmentKeyWritingModifier<Int?>>, _ForegroundStyleModifier<Color>>, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Text, WorkoutNotificationFont>, _EnvironmentKeyWritingModifier<CGFloat>>, _EnvironmentKeyWritingModifier<Int?>>, _ForegroundStyleModifier<Color>>>, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Text, WorkoutNotificationFont>, _EnvironmentKeyWritingModifier<CGFloat>>, _EnvironmentKeyWritingModifier<Int();
      _ConditionalContent<>.init(storage:)();
      v350 = *&v344[32];
      *v351 = *&v344[48];
      *&v351[11] = *&v344[59];
      v346 = v342;
      v347 = v343;
      v348 = *v344;
      v349 = *&v344[16];
      v341 = 1;
      v351[35] = 1;
      goto LABEL_101;
    }

    v204 = *&v188;
    static Duration.seconds(_:)();
    v206 = v308;
    v205 = v309;
    v207 = v310;
    (*(v309 + 104))(v308, *MEMORY[0x277D84670], v310);
    v208 = v296;
    static Duration.TimeFormatStyle.Pattern.hourMinuteSecond(padHourToLength:fractionalSecondsLength:roundFractionalSeconds:)();
    (*(v205 + 8))(v206, v207);
    v209 = v295;
    static FormatStyle<>.time(pattern:)();
    (*(v298 + 8))(v208, v300);
    lazy protocol witness table accessor for type Duration.TimeFormatStyle and conformance Duration.TimeFormatStyle();
    v210 = v299;
    Duration.formatted<A>(_:)();
    (*(v297 + 8))(v209, v210);
    object = v346._object;
    v30 = v346._countAndFlagsBits;
    v48 = dispatch thunk of WorkoutNotificationUnit.key.getter();
    if (!v211)
    {
      v236 = objc_allocWithZone(MEMORY[0x277D75348]);
      if (v204 >= 0.0)
      {
        v238 = 0.62745098;
        v239 = 0.0;
        v237 = 1.0;
      }

      else
      {
        v237 = 0.407843137;
        v238 = 0.321568627;
        v239 = 1.0;
      }

      [v236 initWithRed:v239 green:v237 blue:v238 alpha:1.0];
      v246 = Color.init(uiColor:)();
      LOBYTE(v332._countAndFlagsBits) = 1;
      v342._countAndFlagsBits = v30;
      v342._object = object;
      v343 = v48;
      *v344 = v48;
      *&v344[8] = 0;
      *&v344[16] = 0;
      *&v344[24] = v48;
      *&v344[32] = 0;
      *&v344[40] = v246;
      v344[48] = 1;
      goto LABEL_166;
    }

    v49 = v211;
    if (one-time initialization token for WorkoutUIBundle == -1)
    {
LABEL_132:
      swift_beginAccess();
      v212 = WorkoutUIBundle.super.isa;
      v362._object = 0xE000000000000000;
      v213.value._countAndFlagsBits = 0x617A696C61636F4CLL;
      v213.value._object = 0xEB00000000656C62;
      v214._countAndFlagsBits = v48;
      v214._object = v49;
      v215._countAndFlagsBits = 0;
      v215._object = 0xE000000000000000;
      v362._countAndFlagsBits = 0;
      v216 = NSLocalizedString(_:tableName:bundle:value:comment:)(v214, v213, v212, v215, v362);

      if (v316)
      {
        v217 = v316;
      }

      else
      {
        [objc_allocWithZone(MEMORY[0x277D75348]) initWithRed:0.6 green:0.6 blue:0.6 alpha:1.0];
        v217 = Color.init(uiColor:)();
        v316 = 0;
      }

      LOBYTE(v332._countAndFlagsBits) = 0;
      v342._countAndFlagsBits = v30;
      v342._object = object;
      v343 = 0;
      *v344 = v216;
      *&v344[16] = 0;
      *&v344[32] = 0;
      *&v344[24] = 0;
      *&v344[40] = v217;
      v344[48] = 0;

LABEL_166:
      __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVy07WorkoutB010MetricTextVAA24_ForegroundStyleModifierVyAA5ColorVGGMd);
      lazy protocol witness table accessor for type ModifiedContent<MetricText, _ForegroundStyleModifier<Color>> and conformance <> ModifiedContent<A, B>();
      _ConditionalContent<>.init(storage:)();
      v326 = v348;
      v327 = v349;
      v328 = v350;
      LOBYTE(v329) = v351[0];
      v324 = v346;
      v325 = v347;
      goto LABEL_167;
    }

LABEL_219:
    swift_once();
    goto LABEL_132;
  }

  if (v33 == *MEMORY[0x277D7DAD8])
  {
    v190 = dispatch thunk of WorkoutNotificationUnit.value.getter();
    if ((v191 & 1) != 0 || (v192 = v190, (v193 = dispatch thunk of WorkoutNotificationUnit.activityType.getter()) == 0))
    {
      v327 = 0u;
      v328 = 0u;
      v326 = 0u;
      v324 = 0;
      v325 = 0;
    }

    else
    {
      v194 = v193;
      v195 = swift_getKeyPath();
      LOBYTE(v346._countAndFlagsBits) = 0;
      if (v316)
      {
        v196 = v317;
        v197 = v316;
      }

      else
      {
        v256 = objc_opt_self();
        v257 = v317;
        v258 = v194;
        v259 = [v256 paceColors];
        if (!v259)
        {
LABEL_242:
          __break(1u);
          goto LABEL_243;
        }

        v260 = v259;
        v261 = [v259 nonGradientTextColor];

        if (!v261)
        {
LABEL_243:
          __break(1u);
          goto LABEL_244;
        }

        v197 = Color.init(uiColor:)();

        v316 = 0;
      }

      v324._countAndFlagsBits = v317;
      v324._object = 14;
      v325._countAndFlagsBits = v194;
      v325._object = v195;
      LOBYTE(v326) = 0;
      *(&v326 + 1) = v192;
      LOBYTE(v327) = 0;
      *(&v327 + 1) = 0;
      *&v328 = 0;
      *(&v328 + 1) = v197;
    }

    v348 = v326;
    v349 = v327;
    v350 = v328;
    v346 = v324;
    v347 = v325;
    v339 = 1;
    v351[1] = 1;
    outlined init with copy of _ConditionalContent<_ConditionalContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Text, WorkoutNotificationFont>, _EnvironmentKeyWritingModifier<CGFloat>>, _EnvironmentKeyWritingModifier<Int?>>, _ForegroundStyleModifier<Color>>, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Text, WorkoutNotificationFont>, _EnvironmentKeyWritingModifier<CGFloat>>, _EnvironmentKeyWritingModifier<Int?>>, _ForegroundStyleModifier<Color>>>, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Text, WorkoutNotificationFont>, _EnvironmentKeyWritingModifier<CGFloat>>, _EnvironmentKeyWritingModifier<Int?>>, _ForegroundStyleModifier<Color>>>?(&v324, &v342, &_s7SwiftUI15ModifiedContentVy07WorkoutB014PaceMetricViewVAA24_ForegroundStyleModifierVyAA5ColorVGGSgMd);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI19_ConditionalContentVyAA08ModifiedD0Vy07WorkoutB010MetricTextVAA24_ForegroundStyleModifierVyAA5ColorVGGANGSgMd);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVy07WorkoutB014PaceMetricViewVAA24_ForegroundStyleModifierVyAA5ColorVGGSgMd);
    lazy protocol witness table accessor for type _ConditionalContent<ModifiedContent<MetricText, _ForegroundStyleModifier<Color>>, ModifiedContent<MetricText, _ForegroundStyleModifier<Color>>>? and conformance <A> A?();
    lazy protocol witness table accessor for type ModifiedContent<ElapsedTimeView, _ForegroundStyleModifier<Color>>? and conformance <A> A?(&lazy protocol witness table cache variable for type ModifiedContent<PaceMetricView, _ForegroundStyleModifier<Color>>? and conformance <A> A?, &_s7SwiftUI15ModifiedContentVy07WorkoutB014PaceMetricViewVAA24_ForegroundStyleModifierVyAA5ColorVGGSgMd, &_s7SwiftUI15ModifiedContentVy07WorkoutB014PaceMetricViewVAA24_ForegroundStyleModifierVyAA5ColorVGGSgMR, lazy protocol witness table accessor for type ModifiedContent<PaceMetricView, _ForegroundStyleModifier<Color>> and conformance <> ModifiedContent<A, B>);
    _ConditionalContent<>.init(storage:)();
    v348 = *v344;
    v349 = *&v344[16];
    v350 = *&v344[32];
    *v351 = *&v344[48];
    v346 = v342;
    v347 = v343;
    v340 = 0;
    v351[19] = 0;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI19_ConditionalContentVyACyAA08ModifiedD0Vy07WorkoutB010MetricTextVAA24_ForegroundStyleModifierVyAA5ColorVGGANGSgAEyAF04PaceG4ViewVAMGSgGMd);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI19_ConditionalContentVyAA08ModifiedD0Vy07WorkoutB015ElapsedTimeViewVAA24_ForegroundStyleModifierVyAA5ColorVGGSgACyACyAEyAEyAEyAEyAA4TextVAF0F16NotificationFontVGAA022_EnvironmentKeyWritingL0Vy12CoreGraphics7CGFloatVGGAVySiSgGGAMGA3_GA3_GSgGMd);
    lazy protocol witness table accessor for type _ConditionalContent<_ConditionalContent<ModifiedContent<MetricText, _ForegroundStyleModifier<Color>>, ModifiedContent<MetricText, _ForegroundStyleModifier<Color>>>?, ModifiedContent<PaceMetricView, _ForegroundStyleModifier<Color>>?> and conformance <> _ConditionalContent<A, B>();
    lazy protocol witness table accessor for type _ConditionalContent<ModifiedContent<ElapsedTimeView, _ForegroundStyleModifier<Color>>?, _ConditionalContent<_ConditionalContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Text, WorkoutNotificationFont>, _EnvironmentKeyWritingModifier<CGFloat>>, _EnvironmentKeyWritingModifier<Int?>>, _ForegroundStyleModifier<Color>>, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Text, WorkoutNotificationFont>, _EnvironmentKeyWritingModifier<CGFloat>>, _EnvironmentKeyWritingModifier<Int?>>, _ForegroundStyleModifier<Color>>>, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Text, WorkoutNotificationFont>, _EnvironmentKeyWritingModifier<CGFloat>>, _EnvironmentKeyWritingModifier<Int?>>, _ForegroundStyleModifier<Color>>>?> and conformance <> _ConditionalContent<A, B>();
    _ConditionalContent<>.init(storage:)();
    v350 = v336[0];
    *v351 = v336[1];
    *&v351[16] = v336[2];
    v346 = v332;
    v347 = v333;
    v348 = v334;
    v349 = v335;
    v341 = 1;
    v351[26] = 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI19_ConditionalContentVyACyAA08ModifiedD0VyAEyAA5ImageVAA24_ForegroundStyleModifierVyAA5ColorVGG07WorkoutB015MetricValueFontVGSgAEyAN04PaceL4ViewVALGSgGACyAvEyAN05PowerlP0VALGSgGGMd);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI19_ConditionalContentVyACyACyAA08ModifiedD0Vy07WorkoutB010MetricTextVAA24_ForegroundStyleModifierVyAA5ColorVGGANGSgAEyAF04PaceG4ViewVAMGSgGACyAEyAF011ElapsedTimeN0VAMGSgACyACyAEyAEyAEyAEyAA0H0VAF0F16NotificationFontVGAA022_EnvironmentKeyWritingK0Vy12CoreGraphics7CGFloatVGGA4_ySiSgGGAMGA13_GA13_GSgGGMd);
    lazy protocol witness table accessor for type _ConditionalContent<_ConditionalContent<ModifiedContent<ModifiedContent<Image, _ForegroundStyleModifier<Color>>, MetricValueFont>?, ModifiedContent<PaceMetricView, _ForegroundStyleModifier<Color>>?>, _ConditionalContent<ModifiedContent<PaceMetricView, _ForegroundStyleModifier<Color>>?, ModifiedContent<PowerMetricView, _ForegroundStyleModifier<Color>>?>> and conformance <> _ConditionalContent<A, B>();
    lazy protocol witness table accessor for type _ConditionalContent<_ConditionalContent<_ConditionalContent<ModifiedContent<MetricText, _ForegroundStyleModifier<Color>>, ModifiedContent<MetricText, _ForegroundStyleModifier<Color>>>?, ModifiedContent<PaceMetricView, _ForegroundStyleModifier<Color>>?>, _ConditionalContent<ModifiedContent<ElapsedTimeView, _ForegroundStyleModifier<Color>>?, _ConditionalContent<_ConditionalContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Text, WorkoutNotificationFont>, _EnvironmentKeyWritingModifier<CGFloat>>, _EnvironmentKeyWritingModifier<Int?>>, _ForegroundStyleModifier<Color>>, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Text, WorkoutNotificationFont>, _EnvironmentKeyWritingModifier<CGFloat>>, _EnvironmentKeyWritingModifier<Int?>>, _ForegroundStyleModifier<Color>>>, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Text, WorkoutNotificationFont>, _EnvironmentKeyWritingModifier<CGFloat>>, _EnvironmentKeyWritingModifier<Int();
    _ConditionalContent<>.init(storage:)();
    v350 = *&v344[32];
    *v351 = *&v344[48];
    *&v351[11] = *&v344[59];
    v346 = v342;
    v347 = v343;
    v348 = *v344;
    v349 = *&v344[16];
    v352 = 1;
    v351[35] = 1;
    goto LABEL_39;
  }

  if (v33 == *MEMORY[0x277D7DB18])
  {
    v218 = dispatch thunk of WorkoutNotificationUnit.value.getter();
    if (v219)
    {
      v220 = 0;
      v221 = 0;
      v222 = 0;
    }

    else
    {
      v220 = v218;
      v222 = v316;
      if (!v316)
      {
        v240 = [objc_opt_self() splitsColors];
        v241 = [v240 nonGradientTextColor];

        if (!v241)
        {
LABEL_244:
          __break(1u);
          goto LABEL_245;
        }

        v222 = Color.init(uiColor:)();
      }

      v221 = 1;
    }

    v340 = 0;
    v346._countAndFlagsBits = v220;
    v346._object = v221;
    v347._countAndFlagsBits = v222;
    v351[18] = 0;

    __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVy07WorkoutB015ElapsedTimeViewVAA24_ForegroundStyleModifierVyAA5ColorVGGSgMd);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI19_ConditionalContentVyACyAA08ModifiedD0VyAEyAEyAEyAA4TextV07WorkoutB00G16NotificationFontVGAA30_EnvironmentKeyWritingModifierVy12CoreGraphics7CGFloatVGGAMySiSgGGAA016_ForegroundStyleM0VyAA5ColorVGGA_GA_GSgMd);
    lazy protocol witness table accessor for type ModifiedContent<ElapsedTimeView, _ForegroundStyleModifier<Color>>? and conformance <A> A?(&lazy protocol witness table cache variable for type ModifiedContent<ElapsedTimeView, _ForegroundStyleModifier<Color>>? and conformance <A> A?, &_s7SwiftUI15ModifiedContentVy07WorkoutB015ElapsedTimeViewVAA24_ForegroundStyleModifierVyAA5ColorVGGSgMd, &_s7SwiftUI15ModifiedContentVy07WorkoutB015ElapsedTimeViewVAA24_ForegroundStyleModifierVyAA5ColorVGGSgMR, lazy protocol witness table accessor for type ModifiedContent<ElapsedTimeView, _ForegroundStyleModifier<Color>> and conformance <> ModifiedContent<A, B>);
    lazy protocol witness table accessor for type ModifiedContent<ElapsedTimeView, _ForegroundStyleModifier<Color>>? and conformance <A> A?(&lazy protocol witness table cache variable for type _ConditionalContent<_ConditionalContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Text, WorkoutNotificationFont>, _EnvironmentKeyWritingModifier<CGFloat>>, _EnvironmentKeyWritingModifier<Int?>>, _ForegroundStyleModifier<Color>>, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Text, WorkoutNotificationFont>, _EnvironmentKeyWritingModifier<CGFloat>>, _EnvironmentKeyWritingModifier<Int?>>, _ForegroundStyleModifier<Color>>>, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Text, WorkoutNotificationFont>, _EnvironmentKeyWritingModifier<CGFloat>>, _EnvironmentKeyWritingModifier<Int?>>, _ForegroundStyleModifier<Color>>>? and conformance <A> A?, &_s7SwiftUI19_ConditionalContentVyACyAA08ModifiedD0VyAEyAEyAEyAA4TextV07WorkoutB00G16NotificationFontVGAA30_EnvironmentKeyWritingModifierVy12CoreGraphics7CGFloatVGGAMySiSgGGAA016_ForegroundStyleM0VyAA5ColorVGGA_GA_GSgMd, &_s7SwiftUI19_ConditionalContentVyACyAA08ModifiedD0VyAEyAEyAEyAA4TextV07WorkoutB00G16NotificationFontVGAA30_EnvironmentKeyWritingModifierVy12CoreGraphics7CGFloatVGGAMySiSgGGAA016_ForegroundStyleM0VyAA5ColorVGGA_GA_GSgMR, lazy protocol witness table accessor for type _ConditionalContent<_ConditionalContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Text, WorkoutNotificationFont>, _EnvironmentKeyWritingModifier<CGFloat>>, _EnvironmentKeyWritingModifier<Int?>>, _ForegroundStyleModifier<Color>>, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Text, WorkoutNotificationFont>, _EnvironmentKeyWritingModifier<CGFloat>>, _EnvironmentKeyWritingModifier<Int?>>, _ForegroundStyleModifier<Color>>>, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Text, WorkoutNotificationFont>, _EnvironmentKeyWritingModifier<CGFloat>>, _EnvironmentKeyWritingModifier<Int?>>, _ForegroundStyleModifier<Color>>> and conformance <> _ConditionalContent<A, B>);
    _ConditionalContent<>.init(storage:)();
    v350 = *&v344[32];
    *v351 = *&v344[48];
    *&v351[15] = *&v344[63];
    v346 = v342;
    v347 = v343;
    v348 = *v344;
    v349 = *&v344[16];
    v341 = 1;
    v351[19] = 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI19_ConditionalContentVyACyAA08ModifiedD0Vy07WorkoutB010MetricTextVAA24_ForegroundStyleModifierVyAA5ColorVGGANGSgAEyAF04PaceG4ViewVAMGSgGMd);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI19_ConditionalContentVyAA08ModifiedD0Vy07WorkoutB015ElapsedTimeViewVAA24_ForegroundStyleModifierVyAA5ColorVGGSgACyACyAEyAEyAEyAEyAA4TextVAF0F16NotificationFontVGAA022_EnvironmentKeyWritingL0Vy12CoreGraphics7CGFloatVGGAVySiSgGGAMGA3_GA3_GSgGMd);
    lazy protocol witness table accessor for type _ConditionalContent<_ConditionalContent<ModifiedContent<MetricText, _ForegroundStyleModifier<Color>>, ModifiedContent<MetricText, _ForegroundStyleModifier<Color>>>?, ModifiedContent<PaceMetricView, _ForegroundStyleModifier<Color>>?> and conformance <> _ConditionalContent<A, B>();
    lazy protocol witness table accessor for type _ConditionalContent<ModifiedContent<ElapsedTimeView, _ForegroundStyleModifier<Color>>?, _ConditionalContent<_ConditionalContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Text, WorkoutNotificationFont>, _EnvironmentKeyWritingModifier<CGFloat>>, _EnvironmentKeyWritingModifier<Int?>>, _ForegroundStyleModifier<Color>>, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Text, WorkoutNotificationFont>, _EnvironmentKeyWritingModifier<CGFloat>>, _EnvironmentKeyWritingModifier<Int?>>, _ForegroundStyleModifier<Color>>>, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Text, WorkoutNotificationFont>, _EnvironmentKeyWritingModifier<CGFloat>>, _EnvironmentKeyWritingModifier<Int?>>, _ForegroundStyleModifier<Color>>>?> and conformance <> _ConditionalContent<A, B>();
    _ConditionalContent<>.init(storage:)();
    v350 = v336[0];
    *v351 = v336[1];
    *&v351[16] = v336[2];
    v346 = v332;
    v347 = v333;
    v348 = v334;
    v349 = v335;
    v352 = 1;
    v351[26] = 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI19_ConditionalContentVyACyAA08ModifiedD0VyAEyAA5ImageVAA24_ForegroundStyleModifierVyAA5ColorVGG07WorkoutB015MetricValueFontVGSgAEyAN04PaceL4ViewVALGSgGACyAvEyAN05PowerlP0VALGSgGGMd);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI19_ConditionalContentVyACyACyAA08ModifiedD0Vy07WorkoutB010MetricTextVAA24_ForegroundStyleModifierVyAA5ColorVGGANGSgAEyAF04PaceG4ViewVAMGSgGACyAEyAF011ElapsedTimeN0VAMGSgACyACyAEyAEyAEyAEyAA0H0VAF0F16NotificationFontVGAA022_EnvironmentKeyWritingK0Vy12CoreGraphics7CGFloatVGGA4_ySiSgGGAMGA13_GA13_GSgGGMd);
    lazy protocol witness table accessor for type _ConditionalContent<_ConditionalContent<ModifiedContent<ModifiedContent<Image, _ForegroundStyleModifier<Color>>, MetricValueFont>?, ModifiedContent<PaceMetricView, _ForegroundStyleModifier<Color>>?>, _ConditionalContent<ModifiedContent<PaceMetricView, _ForegroundStyleModifier<Color>>?, ModifiedContent<PowerMetricView, _ForegroundStyleModifier<Color>>?>> and conformance <> _ConditionalContent<A, B>();
    lazy protocol witness table accessor for type _ConditionalContent<_ConditionalContent<_ConditionalContent<ModifiedContent<MetricText, _ForegroundStyleModifier<Color>>, ModifiedContent<MetricText, _ForegroundStyleModifier<Color>>>?, ModifiedContent<PaceMetricView, _ForegroundStyleModifier<Color>>?>, _ConditionalContent<ModifiedContent<ElapsedTimeView, _ForegroundStyleModifier<Color>>?, _ConditionalContent<_ConditionalContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Text, WorkoutNotificationFont>, _EnvironmentKeyWritingModifier<CGFloat>>, _EnvironmentKeyWritingModifier<Int?>>, _ForegroundStyleModifier<Color>>, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Text, WorkoutNotificationFont>, _EnvironmentKeyWritingModifier<CGFloat>>, _EnvironmentKeyWritingModifier<Int?>>, _ForegroundStyleModifier<Color>>>, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Text, WorkoutNotificationFont>, _EnvironmentKeyWritingModifier<CGFloat>>, _EnvironmentKeyWritingModifier<Int();
    _ConditionalContent<>.init(storage:)();
    v350 = *&v344[32];
    *v351 = *&v344[48];
    *&v351[11] = *&v344[59];
    v346 = v342;
    v347 = v343;
    v348 = *v344;
    v349 = *&v344[16];
    v331 = 1;
    v351[35] = 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI19_ConditionalContentVyACyACyAA08ModifiedD0Vy07WorkoutB017CadenceMetricViewVAA24_ForegroundStyleModifierVyAA5ColorVGGSgAEyAF04PacehI0VAMGSgGACyAEyAF05PowerhI0VAMGSgAOGGACyACyAEyAF08DistanceH4TextVAMGSgAEyAF06EnergyhI0VAMGSgGACyAEyAF0h7HeadingI0VyAA0Q0VGAMGSgAEyAF0hQ0VAA022_EnvironmentKeyWritingL0VyALSgGGSgGGGMd);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI19_ConditionalContentVyACyACyAA08ModifiedD0VyAEyAA5ImageVAA24_ForegroundStyleModifierVyAA5ColorVGG07WorkoutB015MetricValueFontVGSgAEyAN04PaceL4ViewVALGSgGACyAvEyAN05PowerlP0VALGSgGGACyACyACyAEyAN0L4TextVALGA4_GSgAVGACyAEyAN011ElapsedTimeP0VALGSgACyACyAEyAEyAEyAEyAA0R0VAN0k12NotificationN0VGAA022_EnvironmentKeyWritingI0Vy12CoreGraphics7CGFloatVGGA18_ySiSgGGALGA27_GA27_GSgGGGMd);
    lazy protocol witness table accessor for type _ConditionalContent<_ConditionalContent<_ConditionalContent<ModifiedContent<CadenceMetricView, _ForegroundStyleModifier<Color>>?, ModifiedContent<PaceMetricView, _ForegroundStyleModifier<Color>>?>, _ConditionalContent<ModifiedContent<PowerMetricView, _ForegroundStyleModifier<Color>>?, ModifiedContent<CadenceMetricView, _ForegroundStyleModifier<Color>>?>>, _ConditionalContent<_ConditionalContent<ModifiedContent<DistanceMetricText, _ForegroundStyleModifier<Color>>?, ModifiedContent<EnergyMetricView, _ForegroundStyleModifier<Color>>?>, _ConditionalContent<ModifiedContent<MetricHeadingView<Text>, _ForegroundStyleModifier<Color>>?, ModifiedContent<MetricText, _EnvironmentKeyWritingModifier<Color?>>?>>> and conformance <> _ConditionalContent<A, B>();
    lazy protocol witness table accessor for type _ConditionalContent<_ConditionalContent<_ConditionalContent<ModifiedContent<ModifiedContent<Image, _ForegroundStyleModifier<Color>>, MetricValueFont>?, ModifiedContent<PaceMetricView, _ForegroundStyleModifier<Color>>?>, _ConditionalContent<ModifiedContent<PaceMetricView, _ForegroundStyleModifier<Color>>?, ModifiedContent<PowerMetricView, _ForegroundStyleModifier<Color>>?>>, _ConditionalContent<_ConditionalContent<_ConditionalContent<ModifiedContent<MetricText, _ForegroundStyleModifier<Color>>, ModifiedContent<MetricText, _ForegroundStyleModifier<Color>>>?, ModifiedContent<PaceMetricView, _ForegroundStyleModifier<Color>>?>, _ConditionalContent<ModifiedContent<ElapsedTimeView, _ForegroundStyleModifier<Color>>?, _ConditionalContent<_ConditionalContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Text, WorkoutNotificationFont>, _EnvironmentKeyWritingModifier<CGFloat>>, _EnvironmentKeyWritingModifier<Int?>>, _ForegroundStyleModifier<Color>>, Modifie();
    _ConditionalContent<>.init(storage:)();
    *&v344[32] = v336[0];
    *&v344[48] = v336[1];
    *&v344[64] = v336[2];
    *&v344[80] = v337;
    v342 = v332;
    v343 = v333;
    *v344 = v334;
    *&v344[16] = v335;
    LOBYTE(v324._countAndFlagsBits) = 0;
    v345 = 0;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI19_ConditionalContentVyACyACyACyAA08ModifiedD0Vy07WorkoutB017CadenceMetricViewVAA24_ForegroundStyleModifierVyAA5ColorVGGSgAEyAF04PacehI0VAMGSgGACyAEyAF05PowerhI0VAMGSgAOGGACyACyAEyAF08DistanceH4TextVAMGSgAEyAF06EnergyhI0VAMGSgGACyAEyAF0h7HeadingI0VyAA0Q0VGAMGSgAEyAF0hQ0VAA022_EnvironmentKeyWritingL0VyALSgGGSgGGGACyACyACyAEyAEyAA5ImageVAMGAF0H9ValueFontVGSgASGACyAsXGGACyACyACyAEyA16_AMGA36_GSgASGACyAEyAF011ElapsedTimeI0VAMGSgACyACyAEyAEyAEyAEyA11_AF0f12NotificationY0VGA18_y12CoreGraphics7CGFloatVGGA18_ySiSgGGAMGA55_GA55_GSgGGGGMd);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI19_ConditionalContentVyAA08ModifiedD0Vy07WorkoutB015ElapsedTimeViewVAA24_ForegroundStyleModifierVyAA5ColorVGGSgAA4TextVGMd);
    lazy protocol witness table accessor for type _ConditionalContent<_ConditionalContent<_ConditionalContent<_ConditionalContent<ModifiedContent<CadenceMetricView, _ForegroundStyleModifier<Color>>?, ModifiedContent<PaceMetricView, _ForegroundStyleModifier<Color>>?>, _ConditionalContent<ModifiedContent<PowerMetricView, _ForegroundStyleModifier<Color>>?, ModifiedContent<CadenceMetricView, _ForegroundStyleModifier<Color>>?>>, _ConditionalContent<_ConditionalContent<ModifiedContent<DistanceMetricText, _ForegroundStyleModifier<Color>>?, ModifiedContent<EnergyMetricView, _ForegroundStyleModifier<Color>>?>, _ConditionalContent<ModifiedContent<MetricHeadingView<Text>, _ForegroundStyleModifier<Color>>?, ModifiedContent<MetricText, _EnvironmentKeyWritingModifier<Color?>>?>>>, _ConditionalContent<_ConditionalContent<_ConditionalContent<ModifiedContent<ModifiedContent<Image, _ForegroundStyleModifier<Color>>, MetricValueFont>?, ModifiedContent<PaceMetricView, _ForegroundStyleModifier<Color>>?>, _ConditionalContent<ModifiedC();
    lazy protocol witness table accessor for type _ConditionalContent<ModifiedContent<ElapsedTimeView, _ForegroundStyleModifier<Color>>?, Text> and conformance <> _ConditionalContent<A, B>();
    _ConditionalContent<>.init(storage:)();

    v357 = v350;
    v358 = *v351;
    v359[0] = *&v351[16];
    *(v359 + 13) = *&v351[29];
    v353 = v346;
    v354 = v347;
    v91 = v348;
    v92 = v349;
    goto LABEL_66;
  }

  if (v33 == *MEMORY[0x277D7DB28])
  {
    v229 = dispatch thunk of WorkoutNotificationUnit.key.getter();
    if (!v230)
    {
      dispatch thunk of WorkoutNotificationUnit.stringLiteral.getter();
      if (!v262)
      {
        v328 = 0u;
        v329 = 0u;
        v326 = 0u;
        v327 = 0u;
        v324 = 0;
        v325 = 0;
        LOWORD(v330) = -256;
LABEL_216:
        v350 = v328;
        *v351 = v329;
        *&v351[16] = v330;
        v346 = v324;
        v347 = v325;
        v348 = v326;
        v349 = v327;
        v338 = 1;
        v351[18] = 1;
        v120 = &_s7SwiftUI19_ConditionalContentVyACyAA08ModifiedD0VyAEyAEyAEyAA4TextV07WorkoutB00G16NotificationFontVGAA30_EnvironmentKeyWritingModifierVy12CoreGraphics7CGFloatVGGAMySiSgGGAA016_ForegroundStyleM0VyAA5ColorVGGA_GA_GSgMd;
        outlined init with copy of _ConditionalContent<_ConditionalContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Text, WorkoutNotificationFont>, _EnvironmentKeyWritingModifier<CGFloat>>, _EnvironmentKeyWritingModifier<Int?>>, _ForegroundStyleModifier<Color>>, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Text, WorkoutNotificationFont>, _EnvironmentKeyWritingModifier<CGFloat>>, _EnvironmentKeyWritingModifier<Int?>>, _ForegroundStyleModifier<Color>>>, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Text, WorkoutNotificationFont>, _EnvironmentKeyWritingModifier<CGFloat>>, _EnvironmentKeyWritingModifier<Int?>>, _ForegroundStyleModifier<Color>>>?(&v324, &v342, &_s7SwiftUI19_ConditionalContentVyACyAA08ModifiedD0VyAEyAEyAEyAA4TextV07WorkoutB00G16NotificationFontVGAA30_EnvironmentKeyWritingModifierVy12CoreGraphics7CGFloatVGGAMySiSgGGAA016_ForegroundStyleM0VyAA5ColorVGGA_GA_GSgMd);
        __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVy07WorkoutB015ElapsedTimeViewVAA24_ForegroundStyleModifierVyAA5ColorVGGSgMd);
        __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI19_ConditionalContentVyACyAA08ModifiedD0VyAEyAEyAEyAA4TextV07WorkoutB00G16NotificationFontVGAA30_EnvironmentKeyWritingModifierVy12CoreGraphics7CGFloatVGGAMySiSgGGAA016_ForegroundStyleM0VyAA5ColorVGGA_GA_GSgMd);
        lazy protocol witness table accessor for type ModifiedContent<ElapsedTimeView, _ForegroundStyleModifier<Color>>? and conformance <A> A?(&lazy protocol witness table cache variable for type ModifiedContent<ElapsedTimeView, _ForegroundStyleModifier<Color>>? and conformance <A> A?, &_s7SwiftUI15ModifiedContentVy07WorkoutB015ElapsedTimeViewVAA24_ForegroundStyleModifierVyAA5ColorVGGSgMd, &_s7SwiftUI15ModifiedContentVy07WorkoutB015ElapsedTimeViewVAA24_ForegroundStyleModifierVyAA5ColorVGGSgMR, lazy protocol witness table accessor for type ModifiedContent<ElapsedTimeView, _ForegroundStyleModifier<Color>> and conformance <> ModifiedContent<A, B>);
        lazy protocol witness table accessor for type ModifiedContent<ElapsedTimeView, _ForegroundStyleModifier<Color>>? and conformance <A> A?(&lazy protocol witness table cache variable for type _ConditionalContent<_ConditionalContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Text, WorkoutNotificationFont>, _EnvironmentKeyWritingModifier<CGFloat>>, _EnvironmentKeyWritingModifier<Int?>>, _ForegroundStyleModifier<Color>>, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Text, WorkoutNotificationFont>, _EnvironmentKeyWritingModifier<CGFloat>>, _EnvironmentKeyWritingModifier<Int?>>, _ForegroundStyleModifier<Color>>>, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Text, WorkoutNotificationFont>, _EnvironmentKeyWritingModifier<CGFloat>>, _EnvironmentKeyWritingModifier<Int?>>, _ForegroundStyleModifier<Color>>>? and conformance <A> A?, &_s7SwiftUI19_ConditionalContentVyACyAA08ModifiedD0VyAEyAEyAEyAA4TextV07WorkoutB00G16NotificationFontVGAA30_EnvironmentKeyWritingModifierVy12CoreGraphics7CGFloatVGGAMySiSgGGAA016_ForegroundStyleM0VyAA5ColorVGGA_GA_GSgMd, &_s7SwiftUI19_ConditionalContentVyACyAA08ModifiedD0VyAEyAEyAEyAA4TextV07WorkoutB00G16NotificationFontVGAA30_EnvironmentKeyWritingModifierVy12CoreGraphics7CGFloatVGGAMySiSgGGAA016_ForegroundStyleM0VyAA5ColorVGGA_GA_GSgMR, lazy protocol witness table accessor for type _ConditionalContent<_ConditionalContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Text, WorkoutNotificationFont>, _EnvironmentKeyWritingModifier<CGFloat>>, _EnvironmentKeyWritingModifier<Int?>>, _ForegroundStyleModifier<Color>>, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Text, WorkoutNotificationFont>, _EnvironmentKeyWritingModifier<CGFloat>>, _EnvironmentKeyWritingModifier<Int?>>, _ForegroundStyleModifier<Color>>>, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Text, WorkoutNotificationFont>, _EnvironmentKeyWritingModifier<CGFloat>>, _EnvironmentKeyWritingModifier<Int?>>, _ForegroundStyleModifier<Color>>> and conformance <> _ConditionalContent<A, B>);
        _ConditionalContent<>.init(storage:)();
        v350 = *&v344[32];
        *v351 = *&v344[48];
        *&v351[15] = *&v344[63];
        v346 = v342;
        v347 = v343;
        v348 = *v344;
        v349 = *&v344[16];
        v339 = 1;
        v351[19] = 1;
        __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI19_ConditionalContentVyACyAA08ModifiedD0Vy07WorkoutB010MetricTextVAA24_ForegroundStyleModifierVyAA5ColorVGGANGSgAEyAF04PaceG4ViewVAMGSgGMd);
        __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI19_ConditionalContentVyAA08ModifiedD0Vy07WorkoutB015ElapsedTimeViewVAA24_ForegroundStyleModifierVyAA5ColorVGGSgACyACyAEyAEyAEyAEyAA4TextVAF0F16NotificationFontVGAA022_EnvironmentKeyWritingL0Vy12CoreGraphics7CGFloatVGGAVySiSgGGAMGA3_GA3_GSgGMd);
        lazy protocol witness table accessor for type _ConditionalContent<_ConditionalContent<ModifiedContent<MetricText, _ForegroundStyleModifier<Color>>, ModifiedContent<MetricText, _ForegroundStyleModifier<Color>>>?, ModifiedContent<PaceMetricView, _ForegroundStyleModifier<Color>>?> and conformance <> _ConditionalContent<A, B>();
        lazy protocol witness table accessor for type _ConditionalContent<ModifiedContent<ElapsedTimeView, _ForegroundStyleModifier<Color>>?, _ConditionalContent<_ConditionalContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Text, WorkoutNotificationFont>, _EnvironmentKeyWritingModifier<CGFloat>>, _EnvironmentKeyWritingModifier<Int?>>, _ForegroundStyleModifier<Color>>, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Text, WorkoutNotificationFont>, _EnvironmentKeyWritingModifier<CGFloat>>, _EnvironmentKeyWritingModifier<Int?>>, _ForegroundStyleModifier<Color>>>, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Text, WorkoutNotificationFont>, _EnvironmentKeyWritingModifier<CGFloat>>, _EnvironmentKeyWritingModifier<Int?>>, _ForegroundStyleModifier<Color>>>?> and conformance <> _ConditionalContent<A, B>();
        _ConditionalContent<>.init(storage:)();
        v350 = v336[0];
        *v351 = v336[1];
        *&v351[16] = v336[2];
        v346 = v332;
        v347 = v333;
        v348 = v334;
        v349 = v335;
        v340 = 1;
        v351[26] = 1;
        __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI19_ConditionalContentVyACyAA08ModifiedD0VyAEyAA5ImageVAA24_ForegroundStyleModifierVyAA5ColorVGG07WorkoutB015MetricValueFontVGSgAEyAN04PaceL4ViewVALGSgGACyAvEyAN05PowerlP0VALGSgGGMd);
        __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI19_ConditionalContentVyACyACyAA08ModifiedD0Vy07WorkoutB010MetricTextVAA24_ForegroundStyleModifierVyAA5ColorVGGANGSgAEyAF04PaceG4ViewVAMGSgGACyAEyAF011ElapsedTimeN0VAMGSgACyACyAEyAEyAEyAEyAA0H0VAF0F16NotificationFontVGAA022_EnvironmentKeyWritingK0Vy12CoreGraphics7CGFloatVGGA4_ySiSgGGAMGA13_GA13_GSgGGMd);
        lazy protocol witness table accessor for type _ConditionalContent<_ConditionalContent<ModifiedContent<ModifiedContent<Image, _ForegroundStyleModifier<Color>>, MetricValueFont>?, ModifiedContent<PaceMetricView, _ForegroundStyleModifier<Color>>?>, _ConditionalContent<ModifiedContent<PaceMetricView, _ForegroundStyleModifier<Color>>?, ModifiedContent<PowerMetricView, _ForegroundStyleModifier<Color>>?>> and conformance <> _ConditionalContent<A, B>();
        lazy protocol witness table accessor for type _ConditionalContent<_ConditionalContent<_ConditionalContent<ModifiedContent<MetricText, _ForegroundStyleModifier<Color>>, ModifiedContent<MetricText, _ForegroundStyleModifier<Color>>>?, ModifiedContent<PaceMetricView, _ForegroundStyleModifier<Color>>?>, _ConditionalContent<ModifiedContent<ElapsedTimeView, _ForegroundStyleModifier<Color>>?, _ConditionalContent<_ConditionalContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Text, WorkoutNotificationFont>, _EnvironmentKeyWritingModifier<CGFloat>>, _EnvironmentKeyWritingModifier<Int?>>, _ForegroundStyleModifier<Color>>, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Text, WorkoutNotificationFont>, _EnvironmentKeyWritingModifier<CGFloat>>, _EnvironmentKeyWritingModifier<Int?>>, _ForegroundStyleModifier<Color>>>, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Text, WorkoutNotificationFont>, _EnvironmentKeyWritingModifier<CGFloat>>, _EnvironmentKeyWritingModifier<Int();
        _ConditionalContent<>.init(storage:)();
        v350 = *&v344[32];
        *v351 = *&v344[48];
        *&v351[11] = *&v344[59];
        v346 = v342;
        v347 = v343;
        v348 = *v344;
        v349 = *&v344[16];
        v341 = 1;
        v351[35] = 1;
        goto LABEL_101;
      }

      static WorkoutNotificationFont.multilineTextView(with:lineLimit:)(2, &v332);

      *v344 = v334;
      *&v344[16] = v335;
      *&v344[32] = v336[0];
      v344[48] = v336[1];
      v342 = v332;
      v343 = v333;
      if (v316)
      {
        v263 = v316;
      }

      else
      {
        *&v287 = COERCE_DOUBLE(dispatch thunk of WorkoutNotificationUnit.value.getter());
        v288 = *&v287;
        if (v289)
        {
          v288 = 16777215.0;
        }

        else if ((v287 & 0x7FFFFFFFFFFFFFFFuLL) >= 0x7FF0000000000000)
        {
LABEL_234:
          __break(1u);
          goto LABEL_235;
        }

        if (v288 <= -1.0)
        {
LABEL_235:
          __break(1u);
          goto LABEL_236;
        }

        if (v288 >= 4294967300.0)
        {
LABEL_236:
          __break(1u);
          goto LABEL_237;
        }

        (*(v313 + 104))(v315, *MEMORY[0x277CE0EE0], v314);
        v263 = Color.init(_:red:green:blue:opacity:)();
        v316 = 0;
      }

      v348 = *v344;
      v349 = *&v344[16];
      v350 = *&v344[32];
      v351[0] = v344[48];
      v346 = v342;
      v347 = v343;
      v331 = 1;
      *&v351[8] = v263;
      v351[17] = 1;

      goto LABEL_215;
    }

    v56 = v229;
    v58 = v230;
    if (v311)
    {
      v231 = v312;
      v352 = v312;
    }

    else
    {
      v264 = v312;
      outlined copy of Environment<WorkoutViewStyle>.Content(v312, 0);
      static os_log_type_t.fault.getter();
      v265 = static Log.runtimeIssuesLog.getter();
      os_log(_:dso:log:_:_:)();

      v266 = v291;
      EnvironmentValues.init()();
      swift_getAtKeyPath();
      outlined consume of Environment<WorkoutViewStyle>.Content(v264, 0);
      (*(v292 + 8))(v266, v293);
      v231 = v352;
    }

    v59 = 0xEB00000000656C62;
    v15 = 0x617A696C61636F4CLL;
    if (v231 != 11)
    {
      if (one-time initialization token for WorkoutUIBundle != -1)
      {
        swift_once();
      }

      swift_beginAccess();
      v273 = WorkoutUIBundle.super.isa;
      v364._object = 0xE000000000000000;
      v274._countAndFlagsBits = v56;
      v274._object = v58;
      v275.value._countAndFlagsBits = 0x617A696C61636F4CLL;
      v275.value._object = 0xEB00000000656C62;
      v276._countAndFlagsBits = 0;
      v276._object = 0xE000000000000000;
      v364._countAndFlagsBits = 0;
      NSLocalizedString(_:tableName:bundle:value:comment:)(v274, v275, v273, v276, v364);

      static WorkoutNotificationFont.multilineTextView(with:lineLimit:)(3, &v324);

      v334 = v326;
      v335 = v327;
      v336[0] = v328;
      LOBYTE(v336[1]) = v329;
      v332 = v324;
      v333 = v325;
      if (v316)
      {
        v277 = v316;
      }

      else
      {
        *&v284 = COERCE_DOUBLE(dispatch thunk of WorkoutNotificationUnit.value.getter());
        v285 = *&v284;
        if (v286)
        {
          v285 = 16777215.0;
        }

        else if ((v284 & 0x7FFFFFFFFFFFFFFFuLL) >= 0x7FF0000000000000)
        {
          goto LABEL_227;
        }

        if (v285 <= -1.0)
        {
LABEL_229:
          __break(1u);
LABEL_230:
          __break(1u);
          goto LABEL_231;
        }

        if (v285 >= 4294967300.0)
        {
LABEL_231:
          __break(1u);
          goto LABEL_232;
        }

        (*(v313 + 104))(v315, *MEMORY[0x277CE0EE0], v314);
        v277 = Color.init(_:red:green:blue:opacity:)();
        v316 = 0;
      }

      v348 = v334;
      v349 = v335;
      v350 = v336[0];
      v351[0] = v336[1];
      v346 = v332;
      v347 = v333;
      v341 = 1;
      *&v351[8] = v277;
      v351[16] = 1;
      goto LABEL_207;
    }

    if (one-time initialization token for WorkoutUIBundle == -1)
    {
LABEL_180:
      swift_beginAccess();
      v267 = WorkoutUIBundle.super.isa;
      v363._object = 0xE000000000000000;
      v268._countAndFlagsBits = v56;
      v268._object = v58;
      v269.value._countAndFlagsBits = v15;
      v269.value._object = v59;
      v270._countAndFlagsBits = 0;
      v270._object = 0xE000000000000000;
      v363._countAndFlagsBits = 0;
      v271 = NSLocalizedString(_:tableName:bundle:value:comment:)(v268, v269, v267, v270, v363);

      v346 = v271;
      v342._countAndFlagsBits = 10;
      v342._object = 0xE100000000000000;
      v332._countAndFlagsBits = 32;
      v332._object = 0xE100000000000000;
      lazy protocol witness table accessor for type String and conformance String();
      StringProtocol.replacingOccurrences<A, B>(of:with:options:range:)();

      static WorkoutNotificationFont.multilineTextView(with:lineLimit:)(1, &v324);

      v334 = v326;
      v335 = v327;
      v336[0] = v328;
      LOBYTE(v336[1]) = v329;
      v332 = v324;
      v333 = v325;
      if (v316)
      {
        v272 = v316;
LABEL_199:
        v348 = v334;
        v349 = v335;
        v350 = v336[0];
        v351[0] = v336[1];
        v346 = v332;
        v347 = v333;
        v341 = 0;
        *&v351[8] = v272;
        v351[16] = 0;
LABEL_207:

        __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyACyACyACyAA4TextV07WorkoutB00F16NotificationFontVGAA30_EnvironmentKeyWritingModifierVy12CoreGraphics7CGFloatVGGAKySiSgGGAA016_ForegroundStyleL0VyAA5ColorVGGMd);
        lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Text, WorkoutNotificationFont>, _EnvironmentKeyWritingModifier<CGFloat>>, _EnvironmentKeyWritingModifier<Int?>>, _ForegroundStyleModifier<Color>> and conformance <> ModifiedContent<A, B>();
        _ConditionalContent<>.init(storage:)();
        v350 = *&v344[32];
        *v351 = *&v344[48];
        v351[16] = v344[64];
        v346 = v342;
        v347 = v343;
        v348 = *v344;
        v349 = *&v344[16];
        LOBYTE(v332._countAndFlagsBits) = 0;
        v351[17] = 0;
LABEL_215:
        __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI19_ConditionalContentVyAA08ModifiedD0VyAEyAEyAEyAA4TextV07WorkoutB00G16NotificationFontVGAA30_EnvironmentKeyWritingModifierVy12CoreGraphics7CGFloatVGGAMySiSgGGAA016_ForegroundStyleM0VyAA5ColorVGGA_GMd);
        __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyACyACyACyAA4TextV07WorkoutB00F16NotificationFontVGAA30_EnvironmentKeyWritingModifierVy12CoreGraphics7CGFloatVGGAKySiSgGGAA016_ForegroundStyleL0VyAA5ColorVGGMd);
        lazy protocol witness table accessor for type _ConditionalContent<ModifiedContent<MetricText, _ForegroundStyleModifier<Color>>, ModifiedContent<MetricText, _ForegroundStyleModifier<Color>>> and conformance <> _ConditionalContent<A, B>(&lazy protocol witness table cache variable for type _ConditionalContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Text, WorkoutNotificationFont>, _EnvironmentKeyWritingModifier<CGFloat>>, _EnvironmentKeyWritingModifier<Int?>>, _ForegroundStyleModifier<Color>>, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Text, WorkoutNotificationFont>, _EnvironmentKeyWritingModifier<CGFloat>>, _EnvironmentKeyWritingModifier<Int?>>, _ForegroundStyleModifier<Color>>> and conformance <> _ConditionalContent<A, B>, &_s7SwiftUI19_ConditionalContentVyAA08ModifiedD0VyAEyAEyAEyAA4TextV07WorkoutB00G16NotificationFontVGAA30_EnvironmentKeyWritingModifierVy12CoreGraphics7CGFloatVGGAMySiSgGGAA016_ForegroundStyleM0VyAA5ColorVGGA_GMd, &_s7SwiftUI19_ConditionalContentVyAA08ModifiedD0VyAEyAEyAEyAA4TextV07WorkoutB00G16NotificationFontVGAA30_EnvironmentKeyWritingModifierVy12CoreGraphics7CGFloatVGGAMySiSgGGAA016_ForegroundStyleM0VyAA5ColorVGGA_GMR, lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Text, WorkoutNotificationFont>, _EnvironmentKeyWritingModifier<CGFloat>>, _EnvironmentKeyWritingModifier<Int?>>, _ForegroundStyleModifier<Color>> and conformance <> ModifiedContent<A, B>);
        lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Text, WorkoutNotificationFont>, _EnvironmentKeyWritingModifier<CGFloat>>, _EnvironmentKeyWritingModifier<Int?>>, _ForegroundStyleModifier<Color>> and conformance <> ModifiedContent<A, B>();
        _ConditionalContent<>.init(storage:)();
        goto LABEL_216;
      }

      *&v281 = COERCE_DOUBLE(dispatch thunk of WorkoutNotificationUnit.value.getter());
      v282 = *&v281;
      if (v283)
      {
        v282 = 16777215.0;
        goto LABEL_196;
      }

      if ((v281 & 0x7FFFFFFFFFFFFFFFuLL) < 0x7FF0000000000000)
      {
LABEL_196:
        if (v282 > -1.0)
        {
          if (v282 < 4294967300.0)
          {
            (*(v313 + 104))(v315, *MEMORY[0x277CE0EE0], v314);
            v272 = Color.init(_:red:green:blue:opacity:)();
            v316 = 0;
            goto LABEL_199;
          }

          goto LABEL_230;
        }

        goto LABEL_228;
      }

      __break(1u);
LABEL_227:
      __break(1u);
LABEL_228:
      __break(1u);
      goto LABEL_229;
    }

LABEL_225:
    swift_once();
    goto LABEL_180;
  }

  if (v33 != *MEMORY[0x277D7DB00])
  {
    LocalizedStringKey.StringInterpolation.init(literalCapacity:interpolationCount:)();
    v247._object = 0x800000020CBA4860;
    v247._countAndFlagsBits = 0xD000000000000021;
    LocalizedStringKey.StringInterpolation.appendLiteral(_:)(v247);
    dispatch thunk of WorkoutNotificationUnit.type.getter();
    v248._countAndFlagsBits = String.init<A>(describing:)();
    LocalizedStringKey.StringInterpolation.appendInterpolation(_:)(v248);

    v249._countAndFlagsBits = 0;
    v249._object = 0xE000000000000000;
    LocalizedStringKey.StringInterpolation.appendLiteral(_:)(v249);
    LocalizedStringKey.init(stringInterpolation:)();
    v250 = Text.init(_:tableName:bundle:comment:)();
    v252 = v251;
    v316 = v250;
    v317 = v253;
    v346._countAndFlagsBits = v250;
    v346._object = v251;
    v255 = v254 & 1;
    v347._countAndFlagsBits = v254 & 1;
    v347._object = v253;
    LOBYTE(v348) = 1;
    outlined copy of Text.Storage(v250, v251, v254 & 1);

    __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVy07WorkoutB015ElapsedTimeViewVAA24_ForegroundStyleModifierVyAA5ColorVGGSgMd);
    lazy protocol witness table accessor for type ModifiedContent<ElapsedTimeView, _ForegroundStyleModifier<Color>>? and conformance <A> A?(&lazy protocol witness table cache variable for type ModifiedContent<ElapsedTimeView, _ForegroundStyleModifier<Color>>? and conformance <A> A?, &_s7SwiftUI15ModifiedContentVy07WorkoutB015ElapsedTimeViewVAA24_ForegroundStyleModifierVyAA5ColorVGGSgMd, &_s7SwiftUI15ModifiedContentVy07WorkoutB015ElapsedTimeViewVAA24_ForegroundStyleModifierVyAA5ColorVGGSgMR, lazy protocol witness table accessor for type ModifiedContent<ElapsedTimeView, _ForegroundStyleModifier<Color>> and conformance <> ModifiedContent<A, B>);
    _ConditionalContent<>.init(storage:)();
    v342 = v324;
    v343 = v325;
    *&v344[33] = v334;
    *&v344[49] = v335;
    *&v344[65] = v336[0];
    *&v344[1] = v332;
    v331 = v326;
    v352 = 1;
    v344[0] = v326;
    *&v344[80] = *(v336 + 15);
    *&v344[17] = v333;
    v345 = 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI19_ConditionalContentVyACyACyACyAA08ModifiedD0Vy07WorkoutB017CadenceMetricViewVAA24_ForegroundStyleModifierVyAA5ColorVGGSgAEyAF04PacehI0VAMGSgGACyAEyAF05PowerhI0VAMGSgAOGGACyACyAEyAF08DistanceH4TextVAMGSgAEyAF06EnergyhI0VAMGSgGACyAEyAF0h7HeadingI0VyAA0Q0VGAMGSgAEyAF0hQ0VAA022_EnvironmentKeyWritingL0VyALSgGGSgGGGACyACyACyAEyAEyAA5ImageVAMGAF0H9ValueFontVGSgASGACyAsXGGACyACyACyAEyA16_AMGA36_GSgASGACyAEyAF011ElapsedTimeI0VAMGSgACyACyAEyAEyAEyAEyA11_AF0f12NotificationY0VGA18_y12CoreGraphics7CGFloatVGGA18_ySiSgGGAMGA55_GA55_GSgGGGGMd);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI19_ConditionalContentVyAA08ModifiedD0Vy07WorkoutB015ElapsedTimeViewVAA24_ForegroundStyleModifierVyAA5ColorVGGSgAA4TextVGMd);
    lazy protocol witness table accessor for type _ConditionalContent<_ConditionalContent<_ConditionalContent<_ConditionalContent<ModifiedContent<CadenceMetricView, _ForegroundStyleModifier<Color>>?, ModifiedContent<PaceMetricView, _ForegroundStyleModifier<Color>>?>, _ConditionalContent<ModifiedContent<PowerMetricView, _ForegroundStyleModifier<Color>>?, ModifiedContent<CadenceMetricView, _ForegroundStyleModifier<Color>>?>>, _ConditionalContent<_ConditionalContent<ModifiedContent<DistanceMetricText, _ForegroundStyleModifier<Color>>?, ModifiedContent<EnergyMetricView, _ForegroundStyleModifier<Color>>?>, _ConditionalContent<ModifiedContent<MetricHeadingView<Text>, _ForegroundStyleModifier<Color>>?, ModifiedContent<MetricText, _EnvironmentKeyWritingModifier<Color?>>?>>>, _ConditionalContent<_ConditionalContent<_ConditionalContent<ModifiedContent<ModifiedContent<Image, _ForegroundStyleModifier<Color>>, MetricValueFont>?, ModifiedContent<PaceMetricView, _ForegroundStyleModifier<Color>>?>, _ConditionalContent<ModifiedC();
    lazy protocol witness table accessor for type _ConditionalContent<ModifiedContent<ElapsedTimeView, _ForegroundStyleModifier<Color>>?, Text> and conformance <> _ConditionalContent<A, B>();
    _ConditionalContent<>.init(storage:)();
    outlined consume of Text.Storage(v316, v252, v255);

    v357 = v350;
    v358 = *v351;
    v359[0] = *&v351[16];
    *(v359 + 13) = *&v351[29];
    v353 = v346;
    v354 = v347;
    v355 = v348;
    v356 = v349;
    (*(v27 + 8))(v30, v26);
    goto LABEL_67;
  }

  v242 = dispatch thunk of WorkoutNotificationUnit.value.getter();
  if (v243)
  {
    v244 = 0;
    v245 = 0;
LABEL_191:
    v346 = v244;
    v347 = v245;
    LOBYTE(v348) = 0;

    __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVy07WorkoutB015ElapsedTimeViewVAA24_ForegroundStyleModifierVyAA5ColorVGGSgMd);
    lazy protocol witness table accessor for type ModifiedContent<ElapsedTimeView, _ForegroundStyleModifier<Color>>? and conformance <A> A?(&lazy protocol witness table cache variable for type ModifiedContent<ElapsedTimeView, _ForegroundStyleModifier<Color>>? and conformance <A> A?, &_s7SwiftUI15ModifiedContentVy07WorkoutB015ElapsedTimeViewVAA24_ForegroundStyleModifierVyAA5ColorVGGSgMd, &_s7SwiftUI15ModifiedContentVy07WorkoutB015ElapsedTimeViewVAA24_ForegroundStyleModifierVyAA5ColorVGGSgMR, lazy protocol witness table accessor for type ModifiedContent<ElapsedTimeView, _ForegroundStyleModifier<Color>> and conformance <> ModifiedContent<A, B>);
    _ConditionalContent<>.init(storage:)();
    LOBYTE(v324._countAndFlagsBits) = v334;
    v331 = 1;
    v342 = v332;
    v343 = v333;
    v344[0] = v334;
    v345 = 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI19_ConditionalContentVyACyACyACyAA08ModifiedD0Vy07WorkoutB017CadenceMetricViewVAA24_ForegroundStyleModifierVyAA5ColorVGGSgAEyAF04PacehI0VAMGSgGACyAEyAF05PowerhI0VAMGSgAOGGACyACyAEyAF08DistanceH4TextVAMGSgAEyAF06EnergyhI0VAMGSgGACyAEyAF0h7HeadingI0VyAA0Q0VGAMGSgAEyAF0hQ0VAA022_EnvironmentKeyWritingL0VyALSgGGSgGGGACyACyACyAEyAEyAA5ImageVAMGAF0H9ValueFontVGSgASGACyAsXGGACyACyACyAEyA16_AMGA36_GSgASGACyAEyAF011ElapsedTimeI0VAMGSgACyACyAEyAEyAEyAEyA11_AF0f12NotificationY0VGA18_y12CoreGraphics7CGFloatVGGA18_ySiSgGGAMGA55_GA55_GSgGGGGMd);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI19_ConditionalContentVyAA08ModifiedD0Vy07WorkoutB015ElapsedTimeViewVAA24_ForegroundStyleModifierVyAA5ColorVGGSgAA4TextVGMd);
    lazy protocol witness table accessor for type _ConditionalContent<_ConditionalContent<_ConditionalContent<_ConditionalContent<ModifiedContent<CadenceMetricView, _ForegroundStyleModifier<Color>>?, ModifiedContent<PaceMetricView, _ForegroundStyleModifier<Color>>?>, _ConditionalContent<ModifiedContent<PowerMetricView, _ForegroundStyleModifier<Color>>?, ModifiedContent<CadenceMetricView, _ForegroundStyleModifier<Color>>?>>, _ConditionalContent<_ConditionalContent<ModifiedContent<DistanceMetricText, _ForegroundStyleModifier<Color>>?, ModifiedContent<EnergyMetricView, _ForegroundStyleModifier<Color>>?>, _ConditionalContent<ModifiedContent<MetricHeadingView<Text>, _ForegroundStyleModifier<Color>>?, ModifiedContent<MetricText, _EnvironmentKeyWritingModifier<Color?>>?>>>, _ConditionalContent<_ConditionalContent<_ConditionalContent<ModifiedContent<ModifiedContent<Image, _ForegroundStyleModifier<Color>>, MetricValueFont>?, ModifiedContent<PaceMetricView, _ForegroundStyleModifier<Color>>?>, _ConditionalContent<ModifiedC();
    lazy protocol witness table accessor for type _ConditionalContent<ModifiedContent<ElapsedTimeView, _ForegroundStyleModifier<Color>>?, Text> and conformance <> _ConditionalContent<A, B>();
    _ConditionalContent<>.init(storage:)();

    v357 = v350;
    v358 = *v351;
    v359[0] = *&v351[16];
    *(v359 + 13) = *&v351[29];
    v353 = v346;
    v354 = v347;
    v91 = v348;
    v92 = v349;
    goto LABEL_66;
  }

  v244 = v242;
  v245 = v316;
  if (v316)
  {
LABEL_190:

    goto LABEL_191;
  }

  v278 = [objc_opt_self() elapsedTimeColors];
  if (!v278)
  {
LABEL_245:
    __break(1u);
    goto LABEL_246;
  }

  v279 = v278;
  v280 = [v278 nonGradientTextColor];

  if (v280)
  {
    v245 = Color.init(uiColor:)();
    goto LABEL_190;
  }

LABEL_246:
  __break(1u);
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<ElapsedTimeView, _ForegroundStyleModifier<Color>> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<ElapsedTimeView, _ForegroundStyleModifier<Color>> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<ElapsedTimeView, _ForegroundStyleModifier<Color>> and conformance <> ModifiedContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVy07WorkoutB015ElapsedTimeViewVAA24_ForegroundStyleModifierVyAA5ColorVGGMd);
    lazy protocol witness table accessor for type ElapsedTimeView and conformance ElapsedTimeView();
    _s7SwiftUI24_ForegroundStyleModifierVyAA5ColorVGACyxGAA04ViewE0AAWlTm_7(&lazy protocol witness table cache variable for type _ForegroundStyleModifier<Color> and conformance _ForegroundStyleModifier<A>, &_s7SwiftUI24_ForegroundStyleModifierVyAA5ColorVGMd);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<ElapsedTimeView, _ForegroundStyleModifier<Color>> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type _ConditionalContent<_ConditionalContent<_ConditionalContent<_ConditionalContent<ModifiedContent<CadenceMetricView, _ForegroundStyleModifier<Color>>?, ModifiedContent<PaceMetricView, _ForegroundStyleModifier<Color>>?>, _ConditionalContent<ModifiedContent<PowerMetricView, _ForegroundStyleModifier<Color>>?, ModifiedContent<CadenceMetricView, _ForegroundStyleModifier<Color>>?>>, _ConditionalContent<_ConditionalContent<ModifiedContent<DistanceMetricText, _ForegroundStyleModifier<Color>>?, ModifiedContent<EnergyMetricView, _ForegroundStyleModifier<Color>>?>, _ConditionalContent<ModifiedContent<MetricHeadingView<Text>, _ForegroundStyleModifier<Color>>?, ModifiedContent<MetricText, _EnvironmentKeyWritingModifier<Color?>>?>>>, _ConditionalContent<_ConditionalContent<_ConditionalContent<ModifiedContent<ModifiedContent<Image, _ForegroundStyleModifier<Color>>, MetricValueFont>?, ModifiedContent<PaceMetricView, _ForegroundStyleModifier<Color>>?>, _ConditionalContent<ModifiedC()
{
  result = lazy protocol witness table cache variable for type _ConditionalContent<_ConditionalContent<_ConditionalContent<_ConditionalContent<ModifiedContent<CadenceMetricView, _ForegroundStyleModifier<Color>>?, ModifiedContent<PaceMetricView, _ForegroundStyleModifier<Color>>?>, _ConditionalContent<ModifiedContent<PowerMetricView, _ForegroundStyleModifier<Color>>?, ModifiedContent<CadenceMetricView, _ForegroundStyleModifier<Color>>?>>, _ConditionalContent<_ConditionalContent<ModifiedContent<DistanceMetricText, _ForegroundStyleModifier<Color>>?, ModifiedContent<EnergyMetricView, _ForegroundStyleModifier<Color>>?>, _ConditionalContent<ModifiedContent<MetricHeadingView<Text>, _ForegroundStyleModifier<Color>>?, ModifiedContent<MetricText, _EnvironmentKeyWritingModifier<Color?>>?>>>, _ConditionalContent<_ConditionalContent<_ConditionalContent<ModifiedContent<ModifiedContent<Image, _ForegroundStyleModifier<Color>>, MetricValueFont>?, ModifiedContent<PaceMetricView, _ForegroundStyleModifier<Color>>?>, _ConditionalContent<Mod;
  if (!lazy protocol witness table cache variable for type _ConditionalContent<_ConditionalContent<_ConditionalContent<_ConditionalContent<ModifiedContent<CadenceMetricView, _ForegroundStyleModifier<Color>>?, ModifiedContent<PaceMetricView, _ForegroundStyleModifier<Color>>?>, _ConditionalContent<ModifiedContent<PowerMetricView, _ForegroundStyleModifier<Color>>?, ModifiedContent<CadenceMetricView, _ForegroundStyleModifier<Color>>?>>, _ConditionalContent<_ConditionalContent<ModifiedContent<DistanceMetricText, _ForegroundStyleModifier<Color>>?, ModifiedContent<EnergyMetricView, _ForegroundStyleModifier<Color>>?>, _ConditionalContent<ModifiedContent<MetricHeadingView<Text>, _ForegroundStyleModifier<Color>>?, ModifiedContent<MetricText, _EnvironmentKeyWritingModifier<Color?>>?>>>, _ConditionalContent<_ConditionalContent<_ConditionalContent<ModifiedContent<ModifiedContent<Image, _ForegroundStyleModifier<Color>>, MetricValueFont>?, ModifiedContent<PaceMetricView, _ForegroundStyleModifier<Color>>?>, _ConditionalContent<Mod)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI19_ConditionalContentVyACyACyACyAA08ModifiedD0Vy07WorkoutB017CadenceMetricViewVAA24_ForegroundStyleModifierVyAA5ColorVGGSgAEyAF04PacehI0VAMGSgGACyAEyAF05PowerhI0VAMGSgAOGGACyACyAEyAF08DistanceH4TextVAMGSgAEyAF06EnergyhI0VAMGSgGACyAEyAF0h7HeadingI0VyAA0Q0VGAMGSgAEyAF0hQ0VAA022_EnvironmentKeyWritingL0VyALSgGGSgGGGACyACyACyAEyAEyAA5ImageVAMGAF0H9ValueFontVGSgASGACyAsXGGACyACyACyAEyA16_AMGA36_GSgASGACyAEyAF011ElapsedTimeI0VAMGSgACyACyAEyAEyAEyAEyA11_AF0f12NotificationY0VGA18_y12CoreGraphics7CGFloatVGGA18_ySiSgGGAMGA55_GA55_GSgGGGGMd);
    lazy protocol witness table accessor for type _ConditionalContent<_ConditionalContent<_ConditionalContent<ModifiedContent<CadenceMetricView, _ForegroundStyleModifier<Color>>?, ModifiedContent<PaceMetricView, _ForegroundStyleModifier<Color>>?>, _ConditionalContent<ModifiedContent<PowerMetricView, _ForegroundStyleModifier<Color>>?, ModifiedContent<CadenceMetricView, _ForegroundStyleModifier<Color>>?>>, _ConditionalContent<_ConditionalContent<ModifiedContent<DistanceMetricText, _ForegroundStyleModifier<Color>>?, ModifiedContent<EnergyMetricView, _ForegroundStyleModifier<Color>>?>, _ConditionalContent<ModifiedContent<MetricHeadingView<Text>, _ForegroundStyleModifier<Color>>?, ModifiedContent<MetricText, _EnvironmentKeyWritingModifier<Color?>>?>>> and conformance <> _ConditionalContent<A, B>();
    lazy protocol witness table accessor for type _ConditionalContent<_ConditionalContent<_ConditionalContent<ModifiedContent<ModifiedContent<Image, _ForegroundStyleModifier<Color>>, MetricValueFont>?, ModifiedContent<PaceMetricView, _ForegroundStyleModifier<Color>>?>, _ConditionalContent<ModifiedContent<PaceMetricView, _ForegroundStyleModifier<Color>>?, ModifiedContent<PowerMetricView, _ForegroundStyleModifier<Color>>?>>, _ConditionalContent<_ConditionalContent<_ConditionalContent<ModifiedContent<MetricText, _ForegroundStyleModifier<Color>>, ModifiedContent<MetricText, _ForegroundStyleModifier<Color>>>?, ModifiedContent<PaceMetricView, _ForegroundStyleModifier<Color>>?>, _ConditionalContent<ModifiedContent<ElapsedTimeView, _ForegroundStyleModifier<Color>>?, _ConditionalContent<_ConditionalContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Text, WorkoutNotificationFont>, _EnvironmentKeyWritingModifier<CGFloat>>, _EnvironmentKeyWritingModifier<Int?>>, _ForegroundStyleModifier<Color>>, Modifie();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type _ConditionalContent<_ConditionalContent<_ConditionalContent<_ConditionalContent<ModifiedContent<CadenceMetricView, _ForegroundStyleModifier<Color>>?, ModifiedContent<PaceMetricView, _ForegroundStyleModifier<Color>>?>, _ConditionalContent<ModifiedContent<PowerMetricView, _ForegroundStyleModifier<Color>>?, ModifiedContent<CadenceMetricView, _ForegroundStyleModifier<Color>>?>>, _ConditionalContent<_ConditionalContent<ModifiedContent<DistanceMetricText, _ForegroundStyleModifier<Color>>?, ModifiedContent<EnergyMetricView, _ForegroundStyleModifier<Color>>?>, _ConditionalContent<ModifiedContent<MetricHeadingView<Text>, _ForegroundStyleModifier<Color>>?, ModifiedContent<MetricText, _EnvironmentKeyWritingModifier<Color?>>?>>>, _ConditionalContent<_ConditionalContent<_ConditionalContent<ModifiedContent<ModifiedContent<Image, _ForegroundStyleModifier<Color>>, MetricValueFont>?, ModifiedContent<PaceMetricView, _ForegroundStyleModifier<Color>>?>, _ConditionalContent<Mod);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type _ConditionalContent<_ConditionalContent<_ConditionalContent<ModifiedContent<CadenceMetricView, _ForegroundStyleModifier<Color>>?, ModifiedContent<PaceMetricView, _ForegroundStyleModifier<Color>>?>, _ConditionalContent<ModifiedContent<PowerMetricView, _ForegroundStyleModifier<Color>>?, ModifiedContent<CadenceMetricView, _ForegroundStyleModifier<Color>>?>>, _ConditionalContent<_ConditionalContent<ModifiedContent<DistanceMetricText, _ForegroundStyleModifier<Color>>?, ModifiedContent<EnergyMetricView, _ForegroundStyleModifier<Color>>?>, _ConditionalContent<ModifiedContent<MetricHeadingView<Text>, _ForegroundStyleModifier<Color>>?, ModifiedContent<MetricText, _EnvironmentKeyWritingModifier<Color?>>?>>> and conformance <> _ConditionalContent<A, B>()
{
  result = lazy protocol witness table cache variable for type _ConditionalContent<_ConditionalContent<_ConditionalContent<ModifiedContent<CadenceMetricView, _ForegroundStyleModifier<Color>>?, ModifiedContent<PaceMetricView, _ForegroundStyleModifier<Color>>?>, _ConditionalContent<ModifiedContent<PowerMetricView, _ForegroundStyleModifier<Color>>?, ModifiedContent<CadenceMetricView, _ForegroundStyleModifier<Color>>?>>, _ConditionalContent<_ConditionalContent<ModifiedContent<DistanceMetricText, _ForegroundStyleModifier<Color>>?, ModifiedContent<EnergyMetricView, _ForegroundStyleModifier<Color>>?>, _ConditionalContent<ModifiedContent<MetricHeadingView<Text>, _ForegroundStyleModifier<Color>>?, ModifiedContent<MetricText, _EnvironmentKeyWritingModifier<Color?>>?>>> and conformance <> _ConditionalContent<A, B>;
  if (!lazy protocol witness table cache variable for type _ConditionalContent<_ConditionalContent<_ConditionalContent<ModifiedContent<CadenceMetricView, _ForegroundStyleModifier<Color>>?, ModifiedContent<PaceMetricView, _ForegroundStyleModifier<Color>>?>, _ConditionalContent<ModifiedContent<PowerMetricView, _ForegroundStyleModifier<Color>>?, ModifiedContent<CadenceMetricView, _ForegroundStyleModifier<Color>>?>>, _ConditionalContent<_ConditionalContent<ModifiedContent<DistanceMetricText, _ForegroundStyleModifier<Color>>?, ModifiedContent<EnergyMetricView, _ForegroundStyleModifier<Color>>?>, _ConditionalContent<ModifiedContent<MetricHeadingView<Text>, _ForegroundStyleModifier<Color>>?, ModifiedContent<MetricText, _EnvironmentKeyWritingModifier<Color?>>?>>> and conformance <> _ConditionalContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI19_ConditionalContentVyACyACyAA08ModifiedD0Vy07WorkoutB017CadenceMetricViewVAA24_ForegroundStyleModifierVyAA5ColorVGGSgAEyAF04PacehI0VAMGSgGACyAEyAF05PowerhI0VAMGSgAOGGACyACyAEyAF08DistanceH4TextVAMGSgAEyAF06EnergyhI0VAMGSgGACyAEyAF0h7HeadingI0VyAA0Q0VGAMGSgAEyAF0hQ0VAA022_EnvironmentKeyWritingL0VyALSgGGSgGGGMd);
    lazy protocol witness table accessor for type _ConditionalContent<_ConditionalContent<ModifiedContent<CadenceMetricView, _ForegroundStyleModifier<Color>>?, ModifiedContent<PaceMetricView, _ForegroundStyleModifier<Color>>?>, _ConditionalContent<ModifiedContent<PowerMetricView, _ForegroundStyleModifier<Color>>?, ModifiedContent<CadenceMetricView, _ForegroundStyleModifier<Color>>?>> and conformance <> _ConditionalContent<A, B>();
    lazy protocol witness table accessor for type _ConditionalContent<_ConditionalContent<ModifiedContent<DistanceMetricText, _ForegroundStyleModifier<Color>>?, ModifiedContent<EnergyMetricView, _ForegroundStyleModifier<Color>>?>, _ConditionalContent<ModifiedContent<MetricHeadingView<Text>, _ForegroundStyleModifier<Color>>?, ModifiedContent<MetricText, _EnvironmentKeyWritingModifier<Color?>>?>> and conformance <> _ConditionalContent<A, B>();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type _ConditionalContent<_ConditionalContent<_ConditionalContent<ModifiedContent<CadenceMetricView, _ForegroundStyleModifier<Color>>?, ModifiedContent<PaceMetricView, _ForegroundStyleModifier<Color>>?>, _ConditionalContent<ModifiedContent<PowerMetricView, _ForegroundStyleModifier<Color>>?, ModifiedContent<CadenceMetricView, _ForegroundStyleModifier<Color>>?>>, _ConditionalContent<_ConditionalContent<ModifiedContent<DistanceMetricText, _ForegroundStyleModifier<Color>>?, ModifiedContent<EnergyMetricView, _ForegroundStyleModifier<Color>>?>, _ConditionalContent<ModifiedContent<MetricHeadingView<Text>, _ForegroundStyleModifier<Color>>?, ModifiedContent<MetricText, _EnvironmentKeyWritingModifier<Color?>>?>>> and conformance <> _ConditionalContent<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type _ConditionalContent<_ConditionalContent<ModifiedContent<CadenceMetricView, _ForegroundStyleModifier<Color>>?, ModifiedContent<PaceMetricView, _ForegroundStyleModifier<Color>>?>, _ConditionalContent<ModifiedContent<PowerMetricView, _ForegroundStyleModifier<Color>>?, ModifiedContent<CadenceMetricView, _ForegroundStyleModifier<Color>>?>> and conformance <> _ConditionalContent<A, B>()
{
  result = lazy protocol witness table cache variable for type _ConditionalContent<_ConditionalContent<ModifiedContent<CadenceMetricView, _ForegroundStyleModifier<Color>>?, ModifiedContent<PaceMetricView, _ForegroundStyleModifier<Color>>?>, _ConditionalContent<ModifiedContent<PowerMetricView, _ForegroundStyleModifier<Color>>?, ModifiedContent<CadenceMetricView, _ForegroundStyleModifier<Color>>?>> and conformance <> _ConditionalContent<A, B>;
  if (!lazy protocol witness table cache variable for type _ConditionalContent<_ConditionalContent<ModifiedContent<CadenceMetricView, _ForegroundStyleModifier<Color>>?, ModifiedContent<PaceMetricView, _ForegroundStyleModifier<Color>>?>, _ConditionalContent<ModifiedContent<PowerMetricView, _ForegroundStyleModifier<Color>>?, ModifiedContent<CadenceMetricView, _ForegroundStyleModifier<Color>>?>> and conformance <> _ConditionalContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI19_ConditionalContentVyACyAA08ModifiedD0Vy07WorkoutB017CadenceMetricViewVAA24_ForegroundStyleModifierVyAA5ColorVGGSgAEyAF04PacehI0VAMGSgGACyAEyAF05PowerhI0VAMGSgAOGGMd);
    lazy protocol witness table accessor for type _ConditionalContent<ModifiedContent<CadenceMetricView, _ForegroundStyleModifier<Color>>?, ModifiedContent<PaceMetricView, _ForegroundStyleModifier<Color>>?> and conformance <> _ConditionalContent<A, B>();
    lazy protocol witness table accessor for type _ConditionalContent<ModifiedContent<PowerMetricView, _ForegroundStyleModifier<Color>>?, ModifiedContent<CadenceMetricView, _ForegroundStyleModifier<Color>>?> and conformance <> _ConditionalContent<A, B>();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type _ConditionalContent<_ConditionalContent<ModifiedContent<CadenceMetricView, _ForegroundStyleModifier<Color>>?, ModifiedContent<PaceMetricView, _ForegroundStyleModifier<Color>>?>, _ConditionalContent<ModifiedContent<PowerMetricView, _ForegroundStyleModifier<Color>>?, ModifiedContent<CadenceMetricView, _ForegroundStyleModifier<Color>>?>> and conformance <> _ConditionalContent<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type _ConditionalContent<ModifiedContent<CadenceMetricView, _ForegroundStyleModifier<Color>>?, ModifiedContent<PaceMetricView, _ForegroundStyleModifier<Color>>?> and conformance <> _ConditionalContent<A, B>()
{
  result = lazy protocol witness table cache variable for type _ConditionalContent<ModifiedContent<CadenceMetricView, _ForegroundStyleModifier<Color>>?, ModifiedContent<PaceMetricView, _ForegroundStyleModifier<Color>>?> and conformance <> _ConditionalContent<A, B>;
  if (!lazy protocol witness table cache variable for type _ConditionalContent<ModifiedContent<CadenceMetricView, _ForegroundStyleModifier<Color>>?, ModifiedContent<PaceMetricView, _ForegroundStyleModifier<Color>>?> and conformance <> _ConditionalContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI19_ConditionalContentVyAA08ModifiedD0Vy07WorkoutB017CadenceMetricViewVAA24_ForegroundStyleModifierVyAA5ColorVGGSgAEyAF04PacehI0VAMGSgGMd);
    lazy protocol witness table accessor for type ModifiedContent<ElapsedTimeView, _ForegroundStyleModifier<Color>>? and conformance <A> A?(&lazy protocol witness table cache variable for type ModifiedContent<CadenceMetricView, _ForegroundStyleModifier<Color>>? and conformance <A> A?, &_s7SwiftUI15ModifiedContentVy07WorkoutB017CadenceMetricViewVAA24_ForegroundStyleModifierVyAA5ColorVGGSgMd, &_s7SwiftUI15ModifiedContentVy07WorkoutB017CadenceMetricViewVAA24_ForegroundStyleModifierVyAA5ColorVGGSgMR, lazy protocol witness table accessor for type ModifiedContent<CadenceMetricView, _ForegroundStyleModifier<Color>> and conformance <> ModifiedContent<A, B>);
    lazy protocol witness table accessor for type ModifiedContent<ElapsedTimeView, _ForegroundStyleModifier<Color>>? and conformance <A> A?(&lazy protocol witness table cache variable for type ModifiedContent<PaceMetricView, _ForegroundStyleModifier<Color>>? and conformance <A> A?, &_s7SwiftUI15ModifiedContentVy07WorkoutB014PaceMetricViewVAA24_ForegroundStyleModifierVyAA5ColorVGGSgMd, &_s7SwiftUI15ModifiedContentVy07WorkoutB014PaceMetricViewVAA24_ForegroundStyleModifierVyAA5ColorVGGSgMR, lazy protocol witness table accessor for type ModifiedContent<PaceMetricView, _ForegroundStyleModifier<Color>> and conformance <> ModifiedContent<A, B>);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type _ConditionalContent<ModifiedContent<CadenceMetricView, _ForegroundStyleModifier<Color>>?, ModifiedContent<PaceMetricView, _ForegroundStyleModifier<Color>>?> and conformance <> _ConditionalContent<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<CadenceMetricView, _ForegroundStyleModifier<Color>> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<CadenceMetricView, _ForegroundStyleModifier<Color>> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<CadenceMetricView, _ForegroundStyleModifier<Color>> and conformance <> ModifiedContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVy07WorkoutB017CadenceMetricViewVAA24_ForegroundStyleModifierVyAA5ColorVGGMd);
    lazy protocol witness table accessor for type CadenceMetricView and conformance CadenceMetricView();
    _s7SwiftUI24_ForegroundStyleModifierVyAA5ColorVGACyxGAA04ViewE0AAWlTm_7(&lazy protocol witness table cache variable for type _ForegroundStyleModifier<Color> and conformance _ForegroundStyleModifier<A>, &_s7SwiftUI24_ForegroundStyleModifierVyAA5ColorVGMd);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<CadenceMetricView, _ForegroundStyleModifier<Color>> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<PaceMetricView, _ForegroundStyleModifier<Color>> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<PaceMetricView, _ForegroundStyleModifier<Color>> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<PaceMetricView, _ForegroundStyleModifier<Color>> and conformance <> ModifiedContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVy07WorkoutB014PaceMetricViewVAA24_ForegroundStyleModifierVyAA5ColorVGGMd);
    lazy protocol witness table accessor for type PaceMetricView and conformance PaceMetricView();
    _s7SwiftUI24_ForegroundStyleModifierVyAA5ColorVGACyxGAA04ViewE0AAWlTm_7(&lazy protocol witness table cache variable for type _ForegroundStyleModifier<Color> and conformance _ForegroundStyleModifier<A>, &_s7SwiftUI24_ForegroundStyleModifierVyAA5ColorVGMd);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<PaceMetricView, _ForegroundStyleModifier<Color>> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type _ConditionalContent<ModifiedContent<PowerMetricView, _ForegroundStyleModifier<Color>>?, ModifiedContent<CadenceMetricView, _ForegroundStyleModifier<Color>>?> and conformance <> _ConditionalContent<A, B>()
{
  result = lazy protocol witness table cache variable for type _ConditionalContent<ModifiedContent<PowerMetricView, _ForegroundStyleModifier<Color>>?, ModifiedContent<CadenceMetricView, _ForegroundStyleModifier<Color>>?> and conformance <> _ConditionalContent<A, B>;
  if (!lazy protocol witness table cache variable for type _ConditionalContent<ModifiedContent<PowerMetricView, _ForegroundStyleModifier<Color>>?, ModifiedContent<CadenceMetricView, _ForegroundStyleModifier<Color>>?> and conformance <> _ConditionalContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI19_ConditionalContentVyAA08ModifiedD0Vy07WorkoutB015PowerMetricViewVAA24_ForegroundStyleModifierVyAA5ColorVGGSgAEyAF07CadencehI0VAMGSgGMd);
    lazy protocol witness table accessor for type ModifiedContent<ElapsedTimeView, _ForegroundStyleModifier<Color>>? and conformance <A> A?(&lazy protocol witness table cache variable for type ModifiedContent<PowerMetricView, _ForegroundStyleModifier<Color>>? and conformance <A> A?, &_s7SwiftUI15ModifiedContentVy07WorkoutB015PowerMetricViewVAA24_ForegroundStyleModifierVyAA5ColorVGGSgMd, &_s7SwiftUI15ModifiedContentVy07WorkoutB015PowerMetricViewVAA24_ForegroundStyleModifierVyAA5ColorVGGSgMR, lazy protocol witness table accessor for type ModifiedContent<PowerMetricView, _ForegroundStyleModifier<Color>> and conformance <> ModifiedContent<A, B>);
    lazy protocol witness table accessor for type ModifiedContent<ElapsedTimeView, _ForegroundStyleModifier<Color>>? and conformance <A> A?(&lazy protocol witness table cache variable for type ModifiedContent<CadenceMetricView, _ForegroundStyleModifier<Color>>? and conformance <A> A?, &_s7SwiftUI15ModifiedContentVy07WorkoutB017CadenceMetricViewVAA24_ForegroundStyleModifierVyAA5ColorVGGSgMd, &_s7SwiftUI15ModifiedContentVy07WorkoutB017CadenceMetricViewVAA24_ForegroundStyleModifierVyAA5ColorVGGSgMR, lazy protocol witness table accessor for type ModifiedContent<CadenceMetricView, _ForegroundStyleModifier<Color>> and conformance <> ModifiedContent<A, B>);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type _ConditionalContent<ModifiedContent<PowerMetricView, _ForegroundStyleModifier<Color>>?, ModifiedContent<CadenceMetricView, _ForegroundStyleModifier<Color>>?> and conformance <> _ConditionalContent<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<PowerMetricView, _ForegroundStyleModifier<Color>> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<PowerMetricView, _ForegroundStyleModifier<Color>> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<PowerMetricView, _ForegroundStyleModifier<Color>> and conformance <> ModifiedContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVy07WorkoutB015PowerMetricViewVAA24_ForegroundStyleModifierVyAA5ColorVGGMd);
    lazy protocol witness table accessor for type PowerMetricView and conformance PowerMetricView();
    _s7SwiftUI24_ForegroundStyleModifierVyAA5ColorVGACyxGAA04ViewE0AAWlTm_7(&lazy protocol witness table cache variable for type _ForegroundStyleModifier<Color> and conformance _ForegroundStyleModifier<A>, &_s7SwiftUI24_ForegroundStyleModifierVyAA5ColorVGMd);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<PowerMetricView, _ForegroundStyleModifier<Color>> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type _ConditionalContent<_ConditionalContent<ModifiedContent<DistanceMetricText, _ForegroundStyleModifier<Color>>?, ModifiedContent<EnergyMetricView, _ForegroundStyleModifier<Color>>?>, _ConditionalContent<ModifiedContent<MetricHeadingView<Text>, _ForegroundStyleModifier<Color>>?, ModifiedContent<MetricText, _EnvironmentKeyWritingModifier<Color?>>?>> and conformance <> _ConditionalContent<A, B>()
{
  result = lazy protocol witness table cache variable for type _ConditionalContent<_ConditionalContent<ModifiedContent<DistanceMetricText, _ForegroundStyleModifier<Color>>?, ModifiedContent<EnergyMetricView, _ForegroundStyleModifier<Color>>?>, _ConditionalContent<ModifiedContent<MetricHeadingView<Text>, _ForegroundStyleModifier<Color>>?, ModifiedContent<MetricText, _EnvironmentKeyWritingModifier<Color?>>?>> and conformance <> _ConditionalContent<A, B>;
  if (!lazy protocol witness table cache variable for type _ConditionalContent<_ConditionalContent<ModifiedContent<DistanceMetricText, _ForegroundStyleModifier<Color>>?, ModifiedContent<EnergyMetricView, _ForegroundStyleModifier<Color>>?>, _ConditionalContent<ModifiedContent<MetricHeadingView<Text>, _ForegroundStyleModifier<Color>>?, ModifiedContent<MetricText, _EnvironmentKeyWritingModifier<Color?>>?>> and conformance <> _ConditionalContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI19_ConditionalContentVyACyAA08ModifiedD0Vy07WorkoutB018DistanceMetricTextVAA24_ForegroundStyleModifierVyAA5ColorVGGSgAEyAF06EnergyH4ViewVAMGSgGACyAEyAF0h7HeadingO0VyAA0I0VGAMGSgAEyAF0hI0VAA022_EnvironmentKeyWritingL0VyALSgGGSgGGMd);
    lazy protocol witness table accessor for type _ConditionalContent<ModifiedContent<DistanceMetricText, _ForegroundStyleModifier<Color>>?, ModifiedContent<EnergyMetricView, _ForegroundStyleModifier<Color>>?> and conformance <> _ConditionalContent<A, B>();
    lazy protocol witness table accessor for type _ConditionalContent<ModifiedContent<MetricHeadingView<Text>, _ForegroundStyleModifier<Color>>?, ModifiedContent<MetricText, _EnvironmentKeyWritingModifier<Color?>>?> and conformance <> _ConditionalContent<A, B>();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type _ConditionalContent<_ConditionalContent<ModifiedContent<DistanceMetricText, _ForegroundStyleModifier<Color>>?, ModifiedContent<EnergyMetricView, _ForegroundStyleModifier<Color>>?>, _ConditionalContent<ModifiedContent<MetricHeadingView<Text>, _ForegroundStyleModifier<Color>>?, ModifiedContent<MetricText, _EnvironmentKeyWritingModifier<Color?>>?>> and conformance <> _ConditionalContent<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type _ConditionalContent<ModifiedContent<DistanceMetricText, _ForegroundStyleModifier<Color>>?, ModifiedContent<EnergyMetricView, _ForegroundStyleModifier<Color>>?> and conformance <> _ConditionalContent<A, B>()
{
  result = lazy protocol witness table cache variable for type _ConditionalContent<ModifiedContent<DistanceMetricText, _ForegroundStyleModifier<Color>>?, ModifiedContent<EnergyMetricView, _ForegroundStyleModifier<Color>>?> and conformance <> _ConditionalContent<A, B>;
  if (!lazy protocol witness table cache variable for type _ConditionalContent<ModifiedContent<DistanceMetricText, _ForegroundStyleModifier<Color>>?, ModifiedContent<EnergyMetricView, _ForegroundStyleModifier<Color>>?> and conformance <> _ConditionalContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI19_ConditionalContentVyAA08ModifiedD0Vy07WorkoutB018DistanceMetricTextVAA24_ForegroundStyleModifierVyAA5ColorVGGSgAEyAF06EnergyH4ViewVAMGSgGMd);
    lazy protocol witness table accessor for type ModifiedContent<ElapsedTimeView, _ForegroundStyleModifier<Color>>? and conformance <A> A?(&lazy protocol witness table cache variable for type ModifiedContent<DistanceMetricText, _ForegroundStyleModifier<Color>>? and conformance <A> A?, &_s7SwiftUI15ModifiedContentVy07WorkoutB018DistanceMetricTextVAA24_ForegroundStyleModifierVyAA5ColorVGGSgMd, &_s7SwiftUI15ModifiedContentVy07WorkoutB018DistanceMetricTextVAA24_ForegroundStyleModifierVyAA5ColorVGGSgMR, lazy protocol witness table accessor for type ModifiedContent<DistanceMetricText, _ForegroundStyleModifier<Color>> and conformance <> ModifiedContent<A, B>);
    lazy protocol witness table accessor for type ModifiedContent<ElapsedTimeView, _ForegroundStyleModifier<Color>>? and conformance <A> A?(&lazy protocol witness table cache variable for type ModifiedContent<EnergyMetricView, _ForegroundStyleModifier<Color>>? and conformance <A> A?, &_s7SwiftUI15ModifiedContentVy07WorkoutB016EnergyMetricViewVAA24_ForegroundStyleModifierVyAA5ColorVGGSgMd, &_s7SwiftUI15ModifiedContentVy07WorkoutB016EnergyMetricViewVAA24_ForegroundStyleModifierVyAA5ColorVGGSgMR, lazy protocol witness table accessor for type ModifiedContent<EnergyMetricView, _ForegroundStyleModifier<Color>> and conformance <> ModifiedContent<A, B>);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type _ConditionalContent<ModifiedContent<DistanceMetricText, _ForegroundStyleModifier<Color>>?, ModifiedContent<EnergyMetricView, _ForegroundStyleModifier<Color>>?> and conformance <> _ConditionalContent<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<DistanceMetricText, _ForegroundStyleModifier<Color>> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<DistanceMetricText, _ForegroundStyleModifier<Color>> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<DistanceMetricText, _ForegroundStyleModifier<Color>> and conformance <> ModifiedContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVy07WorkoutB018DistanceMetricTextVAA24_ForegroundStyleModifierVyAA5ColorVGGMd);
    lazy protocol witness table accessor for type DistanceMetricText and conformance DistanceMetricText();
    _s7SwiftUI24_ForegroundStyleModifierVyAA5ColorVGACyxGAA04ViewE0AAWlTm_7(&lazy protocol witness table cache variable for type _ForegroundStyleModifier<Color> and conformance _ForegroundStyleModifier<A>, &_s7SwiftUI24_ForegroundStyleModifierVyAA5ColorVGMd);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<DistanceMetricText, _ForegroundStyleModifier<Color>> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<EnergyMetricView, _ForegroundStyleModifier<Color>> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<EnergyMetricView, _ForegroundStyleModifier<Color>> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<EnergyMetricView, _ForegroundStyleModifier<Color>> and conformance <> ModifiedContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVy07WorkoutB016EnergyMetricViewVAA24_ForegroundStyleModifierVyAA5ColorVGGMd);
    lazy protocol witness table accessor for type EnergyMetricView and conformance EnergyMetricView();
    _s7SwiftUI24_ForegroundStyleModifierVyAA5ColorVGACyxGAA04ViewE0AAWlTm_7(&lazy protocol witness table cache variable for type _ForegroundStyleModifier<Color> and conformance _ForegroundStyleModifier<A>, &_s7SwiftUI24_ForegroundStyleModifierVyAA5ColorVGMd);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<EnergyMetricView, _ForegroundStyleModifier<Color>> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type _ConditionalContent<ModifiedContent<MetricHeadingView<Text>, _ForegroundStyleModifier<Color>>?, ModifiedContent<MetricText, _EnvironmentKeyWritingModifier<Color?>>?> and conformance <> _ConditionalContent<A, B>()
{
  result = lazy protocol witness table cache variable for type _ConditionalContent<ModifiedContent<MetricHeadingView<Text>, _ForegroundStyleModifier<Color>>?, ModifiedContent<MetricText, _EnvironmentKeyWritingModifier<Color?>>?> and conformance <> _ConditionalContent<A, B>;
  if (!lazy protocol witness table cache variable for type _ConditionalContent<ModifiedContent<MetricHeadingView<Text>, _ForegroundStyleModifier<Color>>?, ModifiedContent<MetricText, _EnvironmentKeyWritingModifier<Color?>>?> and conformance <> _ConditionalContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI19_ConditionalContentVyAA08ModifiedD0Vy07WorkoutB017MetricHeadingViewVyAA4TextVGAA24_ForegroundStyleModifierVyAA5ColorVGGSgAEyAF0gJ0VAA022_EnvironmentKeyWritingM0VyAOSgGGSgGMd);
    lazy protocol witness table accessor for type ModifiedContent<ElapsedTimeView, _ForegroundStyleModifier<Color>>? and conformance <A> A?(&lazy protocol witness table cache variable for type ModifiedContent<MetricHeadingView<Text>, _ForegroundStyleModifier<Color>>? and conformance <A> A?, &_s7SwiftUI15ModifiedContentVy07WorkoutB017MetricHeadingViewVyAA4TextVGAA24_ForegroundStyleModifierVyAA5ColorVGGSgMd, &_s7SwiftUI15ModifiedContentVy07WorkoutB017MetricHeadingViewVyAA4TextVGAA24_ForegroundStyleModifierVyAA5ColorVGGSgMR, lazy protocol witness table accessor for type ModifiedContent<MetricHeadingView<Text>, _ForegroundStyleModifier<Color>> and conformance <> ModifiedContent<A, B>);
    lazy protocol witness table accessor for type ModifiedContent<ElapsedTimeView, _ForegroundStyleModifier<Color>>? and conformance <A> A?(&lazy protocol witness table cache variable for type ModifiedContent<MetricText, _EnvironmentKeyWritingModifier<Color?>>? and conformance <A> A?, &_s7SwiftUI15ModifiedContentVy07WorkoutB010MetricTextVAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGSgMd, &_s7SwiftUI15ModifiedContentVy07WorkoutB010MetricTextVAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGSgMR, lazy protocol witness table accessor for type ModifiedContent<MetricText, _EnvironmentKeyWritingModifier<Color?>> and conformance <> ModifiedContent<A, B>);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type _ConditionalContent<ModifiedContent<MetricHeadingView<Text>, _ForegroundStyleModifier<Color>>?, ModifiedContent<MetricText, _EnvironmentKeyWritingModifier<Color?>>?> and conformance <> _ConditionalContent<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<MetricHeadingView<Text>, _ForegroundStyleModifier<Color>> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<MetricHeadingView<Text>, _ForegroundStyleModifier<Color>> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<MetricHeadingView<Text>, _ForegroundStyleModifier<Color>> and conformance <> ModifiedContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVy07WorkoutB017MetricHeadingViewVyAA4TextVGAA24_ForegroundStyleModifierVyAA5ColorVGGMd);
    _s7SwiftUI24_ForegroundStyleModifierVyAA5ColorVGACyxGAA04ViewE0AAWlTm_7(&lazy protocol witness table cache variable for type MetricHeadingView<Text> and conformance MetricHeadingView<A>, &_s9WorkoutUI17MetricHeadingViewVy05SwiftB04TextVGMd);
    _s7SwiftUI24_ForegroundStyleModifierVyAA5ColorVGACyxGAA04ViewE0AAWlTm_7(&lazy protocol witness table cache variable for type _ForegroundStyleModifier<Color> and conformance _ForegroundStyleModifier<A>, &_s7SwiftUI24_ForegroundStyleModifierVyAA5ColorVGMd);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<MetricHeadingView<Text>, _ForegroundStyleModifier<Color>> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<MetricText, _EnvironmentKeyWritingModifier<Color?>> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<MetricText, _EnvironmentKeyWritingModifier<Color?>> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<MetricText, _EnvironmentKeyWritingModifier<Color?>> and conformance <> ModifiedContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVy07WorkoutB010MetricTextVAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGMd);
    lazy protocol witness table accessor for type MetricText and conformance MetricText();
    _s7SwiftUI24_ForegroundStyleModifierVyAA5ColorVGACyxGAA04ViewE0AAWlTm_7(&lazy protocol witness table cache variable for type _EnvironmentKeyWritingModifier<Color?> and conformance _EnvironmentKeyWritingModifier<A>, &_s7SwiftUI30_EnvironmentKeyWritingModifierVyAA5ColorVSgGMd);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<MetricText, _EnvironmentKeyWritingModifier<Color?>> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type _ConditionalContent<_ConditionalContent<_ConditionalContent<ModifiedContent<ModifiedContent<Image, _ForegroundStyleModifier<Color>>, MetricValueFont>?, ModifiedContent<PaceMetricView, _ForegroundStyleModifier<Color>>?>, _ConditionalContent<ModifiedContent<PaceMetricView, _ForegroundStyleModifier<Color>>?, ModifiedContent<PowerMetricView, _ForegroundStyleModifier<Color>>?>>, _ConditionalContent<_ConditionalContent<_ConditionalContent<ModifiedContent<MetricText, _ForegroundStyleModifier<Color>>, ModifiedContent<MetricText, _ForegroundStyleModifier<Color>>>?, ModifiedContent<PaceMetricView, _ForegroundStyleModifier<Color>>?>, _ConditionalContent<ModifiedContent<ElapsedTimeView, _ForegroundStyleModifier<Color>>?, _ConditionalContent<_ConditionalContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Text, WorkoutNotificationFont>, _EnvironmentKeyWritingModifier<CGFloat>>, _EnvironmentKeyWritingModifier<Int?>>, _ForegroundStyleModifier<Color>>, Modifie()
{
  result = lazy protocol witness table cache variable for type _ConditionalContent<_ConditionalContent<_ConditionalContent<ModifiedContent<ModifiedContent<Image, _ForegroundStyleModifier<Color>>, MetricValueFont>?, ModifiedContent<PaceMetricView, _ForegroundStyleModifier<Color>>?>, _ConditionalContent<ModifiedContent<PaceMetricView, _ForegroundStyleModifier<Color>>?, ModifiedContent<PowerMetricView, _ForegroundStyleModifier<Color>>?>>, _ConditionalContent<_ConditionalContent<_ConditionalContent<ModifiedContent<MetricText, _ForegroundStyleModifier<Color>>, ModifiedContent<MetricText, _ForegroundStyleModifier<Color>>>?, ModifiedContent<PaceMetricView, _ForegroundStyleModifier<Color>>?>, _ConditionalContent<ModifiedContent<ElapsedTimeView, _ForegroundStyleModifier<Color>>?, _ConditionalContent<_ConditionalContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Text, WorkoutNotificationFont>, _EnvironmentKeyWritingModifier<CGFloat>>, _EnvironmentKeyWritingModifier<Int?>>, _ForegroundStyleModifier<Color>>, M;
  if (!lazy protocol witness table cache variable for type _ConditionalContent<_ConditionalContent<_ConditionalContent<ModifiedContent<ModifiedContent<Image, _ForegroundStyleModifier<Color>>, MetricValueFont>?, ModifiedContent<PaceMetricView, _ForegroundStyleModifier<Color>>?>, _ConditionalContent<ModifiedContent<PaceMetricView, _ForegroundStyleModifier<Color>>?, ModifiedContent<PowerMetricView, _ForegroundStyleModifier<Color>>?>>, _ConditionalContent<_ConditionalContent<_ConditionalContent<ModifiedContent<MetricText, _ForegroundStyleModifier<Color>>, ModifiedContent<MetricText, _ForegroundStyleModifier<Color>>>?, ModifiedContent<PaceMetricView, _ForegroundStyleModifier<Color>>?>, _ConditionalContent<ModifiedContent<ElapsedTimeView, _ForegroundStyleModifier<Color>>?, _ConditionalContent<_ConditionalContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Text, WorkoutNotificationFont>, _EnvironmentKeyWritingModifier<CGFloat>>, _EnvironmentKeyWritingModifier<Int?>>, _ForegroundStyleModifier<Color>>, M)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI19_ConditionalContentVyACyACyAA08ModifiedD0VyAEyAA5ImageVAA24_ForegroundStyleModifierVyAA5ColorVGG07WorkoutB015MetricValueFontVGSgAEyAN04PaceL4ViewVALGSgGACyAvEyAN05PowerlP0VALGSgGGACyACyACyAEyAN0L4TextVALGA4_GSgAVGACyAEyAN011ElapsedTimeP0VALGSgACyACyAEyAEyAEyAEyAA0R0VAN0k12NotificationN0VGAA022_EnvironmentKeyWritingI0Vy12CoreGraphics7CGFloatVGGA18_ySiSgGGALGA27_GA27_GSgGGGMd);
    lazy protocol witness table accessor for type _ConditionalContent<_ConditionalContent<ModifiedContent<ModifiedContent<Image, _ForegroundStyleModifier<Color>>, MetricValueFont>?, ModifiedContent<PaceMetricView, _ForegroundStyleModifier<Color>>?>, _ConditionalContent<ModifiedContent<PaceMetricView, _ForegroundStyleModifier<Color>>?, ModifiedContent<PowerMetricView, _ForegroundStyleModifier<Color>>?>> and conformance <> _ConditionalContent<A, B>();
    lazy protocol witness table accessor for type _ConditionalContent<_ConditionalContent<_ConditionalContent<ModifiedContent<MetricText, _ForegroundStyleModifier<Color>>, ModifiedContent<MetricText, _ForegroundStyleModifier<Color>>>?, ModifiedContent<PaceMetricView, _ForegroundStyleModifier<Color>>?>, _ConditionalContent<ModifiedContent<ElapsedTimeView, _ForegroundStyleModifier<Color>>?, _ConditionalContent<_ConditionalContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Text, WorkoutNotificationFont>, _EnvironmentKeyWritingModifier<CGFloat>>, _EnvironmentKeyWritingModifier<Int?>>, _ForegroundStyleModifier<Color>>, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Text, WorkoutNotificationFont>, _EnvironmentKeyWritingModifier<CGFloat>>, _EnvironmentKeyWritingModifier<Int?>>, _ForegroundStyleModifier<Color>>>, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Text, WorkoutNotificationFont>, _EnvironmentKeyWritingModifier<CGFloat>>, _EnvironmentKeyWritingModifier<Int();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type _ConditionalContent<_ConditionalContent<_ConditionalContent<ModifiedContent<ModifiedContent<Image, _ForegroundStyleModifier<Color>>, MetricValueFont>?, ModifiedContent<PaceMetricView, _ForegroundStyleModifier<Color>>?>, _ConditionalContent<ModifiedContent<PaceMetricView, _ForegroundStyleModifier<Color>>?, ModifiedContent<PowerMetricView, _ForegroundStyleModifier<Color>>?>>, _ConditionalContent<_ConditionalContent<_ConditionalContent<ModifiedContent<MetricText, _ForegroundStyleModifier<Color>>, ModifiedContent<MetricText, _ForegroundStyleModifier<Color>>>?, ModifiedContent<PaceMetricView, _ForegroundStyleModifier<Color>>?>, _ConditionalContent<ModifiedContent<ElapsedTimeView, _ForegroundStyleModifier<Color>>?, _ConditionalContent<_ConditionalContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Text, WorkoutNotificationFont>, _EnvironmentKeyWritingModifier<CGFloat>>, _EnvironmentKeyWritingModifier<Int?>>, _ForegroundStyleModifier<Color>>, M);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type _ConditionalContent<_ConditionalContent<ModifiedContent<ModifiedContent<Image, _ForegroundStyleModifier<Color>>, MetricValueFont>?, ModifiedContent<PaceMetricView, _ForegroundStyleModifier<Color>>?>, _ConditionalContent<ModifiedContent<PaceMetricView, _ForegroundStyleModifier<Color>>?, ModifiedContent<PowerMetricView, _ForegroundStyleModifier<Color>>?>> and conformance <> _ConditionalContent<A, B>()
{
  result = lazy protocol witness table cache variable for type _ConditionalContent<_ConditionalContent<ModifiedContent<ModifiedContent<Image, _ForegroundStyleModifier<Color>>, MetricValueFont>?, ModifiedContent<PaceMetricView, _ForegroundStyleModifier<Color>>?>, _ConditionalContent<ModifiedContent<PaceMetricView, _ForegroundStyleModifier<Color>>?, ModifiedContent<PowerMetricView, _ForegroundStyleModifier<Color>>?>> and conformance <> _ConditionalContent<A, B>;
  if (!lazy protocol witness table cache variable for type _ConditionalContent<_ConditionalContent<ModifiedContent<ModifiedContent<Image, _ForegroundStyleModifier<Color>>, MetricValueFont>?, ModifiedContent<PaceMetricView, _ForegroundStyleModifier<Color>>?>, _ConditionalContent<ModifiedContent<PaceMetricView, _ForegroundStyleModifier<Color>>?, ModifiedContent<PowerMetricView, _ForegroundStyleModifier<Color>>?>> and conformance <> _ConditionalContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI19_ConditionalContentVyACyAA08ModifiedD0VyAEyAA5ImageVAA24_ForegroundStyleModifierVyAA5ColorVGG07WorkoutB015MetricValueFontVGSgAEyAN04PaceL4ViewVALGSgGACyAvEyAN05PowerlP0VALGSgGGMd);
    lazy protocol witness table accessor for type _ConditionalContent<ModifiedContent<ModifiedContent<Image, _ForegroundStyleModifier<Color>>, MetricValueFont>?, ModifiedContent<PaceMetricView, _ForegroundStyleModifier<Color>>?> and conformance <> _ConditionalContent<A, B>();
    lazy protocol witness table accessor for type _ConditionalContent<ModifiedContent<PaceMetricView, _ForegroundStyleModifier<Color>>?, ModifiedContent<PowerMetricView, _ForegroundStyleModifier<Color>>?> and conformance <> _ConditionalContent<A, B>();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type _ConditionalContent<_ConditionalContent<ModifiedContent<ModifiedContent<Image, _ForegroundStyleModifier<Color>>, MetricValueFont>?, ModifiedContent<PaceMetricView, _ForegroundStyleModifier<Color>>?>, _ConditionalContent<ModifiedContent<PaceMetricView, _ForegroundStyleModifier<Color>>?, ModifiedContent<PowerMetricView, _ForegroundStyleModifier<Color>>?>> and conformance <> _ConditionalContent<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type _ConditionalContent<ModifiedContent<ModifiedContent<Image, _ForegroundStyleModifier<Color>>, MetricValueFont>?, ModifiedContent<PaceMetricView, _ForegroundStyleModifier<Color>>?> and conformance <> _ConditionalContent<A, B>()
{
  result = lazy protocol witness table cache variable for type _ConditionalContent<ModifiedContent<ModifiedContent<Image, _ForegroundStyleModifier<Color>>, MetricValueFont>?, ModifiedContent<PaceMetricView, _ForegroundStyleModifier<Color>>?> and conformance <> _ConditionalContent<A, B>;
  if (!lazy protocol witness table cache variable for type _ConditionalContent<ModifiedContent<ModifiedContent<Image, _ForegroundStyleModifier<Color>>, MetricValueFont>?, ModifiedContent<PaceMetricView, _ForegroundStyleModifier<Color>>?> and conformance <> _ConditionalContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI19_ConditionalContentVyAA08ModifiedD0VyAEyAA5ImageVAA24_ForegroundStyleModifierVyAA5ColorVGG07WorkoutB015MetricValueFontVGSgAEyAN04PaceL4ViewVALGSgGMd);
    lazy protocol witness table accessor for type ModifiedContent<ElapsedTimeView, _ForegroundStyleModifier<Color>>? and conformance <A> A?(&lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<Image, _ForegroundStyleModifier<Color>>, MetricValueFont>? and conformance <A> A?, &_s7SwiftUI15ModifiedContentVyACyAA5ImageVAA24_ForegroundStyleModifierVyAA5ColorVGG07WorkoutB015MetricValueFontVGSgMd, &_s7SwiftUI15ModifiedContentVyACyAA5ImageVAA24_ForegroundStyleModifierVyAA5ColorVGG07WorkoutB015MetricValueFontVGSgMR, lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<Image, _ForegroundStyleModifier<Color>>, MetricValueFont> and conformance <> ModifiedContent<A, B>);
    lazy protocol witness table accessor for type ModifiedContent<ElapsedTimeView, _ForegroundStyleModifier<Color>>? and conformance <A> A?(&lazy protocol witness table cache variable for type ModifiedContent<PaceMetricView, _ForegroundStyleModifier<Color>>? and conformance <A> A?, &_s7SwiftUI15ModifiedContentVy07WorkoutB014PaceMetricViewVAA24_ForegroundStyleModifierVyAA5ColorVGGSgMd, &_s7SwiftUI15ModifiedContentVy07WorkoutB014PaceMetricViewVAA24_ForegroundStyleModifierVyAA5ColorVGGSgMR, lazy protocol witness table accessor for type ModifiedContent<PaceMetricView, _ForegroundStyleModifier<Color>> and conformance <> ModifiedContent<A, B>);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type _ConditionalContent<ModifiedContent<ModifiedContent<Image, _ForegroundStyleModifier<Color>>, MetricValueFont>?, ModifiedContent<PaceMetricView, _ForegroundStyleModifier<Color>>?> and conformance <> _ConditionalContent<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<Image, _ForegroundStyleModifier<Color>>, MetricValueFont> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<Image, _ForegroundStyleModifier<Color>>, MetricValueFont> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<Image, _ForegroundStyleModifier<Color>>, MetricValueFont> and conformance <> ModifiedContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyACyAA5ImageVAA24_ForegroundStyleModifierVyAA5ColorVGG07WorkoutB015MetricValueFontVGMd);
    lazy protocol witness table accessor for type ModifiedContent<Image, _ForegroundStyleModifier<Color>> and conformance <> ModifiedContent<A, B>();
    lazy protocol witness table accessor for type MetricValueFont and conformance MetricValueFont();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<Image, _ForegroundStyleModifier<Color>>, MetricValueFont> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type _ConditionalContent<ModifiedContent<PaceMetricView, _ForegroundStyleModifier<Color>>?, ModifiedContent<PowerMetricView, _ForegroundStyleModifier<Color>>?> and conformance <> _ConditionalContent<A, B>()
{
  result = lazy protocol witness table cache variable for type _ConditionalContent<ModifiedContent<PaceMetricView, _ForegroundStyleModifier<Color>>?, ModifiedContent<PowerMetricView, _ForegroundStyleModifier<Color>>?> and conformance <> _ConditionalContent<A, B>;
  if (!lazy protocol witness table cache variable for type _ConditionalContent<ModifiedContent<PaceMetricView, _ForegroundStyleModifier<Color>>?, ModifiedContent<PowerMetricView, _ForegroundStyleModifier<Color>>?> and conformance <> _ConditionalContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI19_ConditionalContentVyAA08ModifiedD0Vy07WorkoutB014PaceMetricViewVAA24_ForegroundStyleModifierVyAA5ColorVGGSgAEyAF05PowerhI0VAMGSgGMd);
    lazy protocol witness table accessor for type ModifiedContent<ElapsedTimeView, _ForegroundStyleModifier<Color>>? and conformance <A> A?(&lazy protocol witness table cache variable for type ModifiedContent<PaceMetricView, _ForegroundStyleModifier<Color>>? and conformance <A> A?, &_s7SwiftUI15ModifiedContentVy07WorkoutB014PaceMetricViewVAA24_ForegroundStyleModifierVyAA5ColorVGGSgMd, &_s7SwiftUI15ModifiedContentVy07WorkoutB014PaceMetricViewVAA24_ForegroundStyleModifierVyAA5ColorVGGSgMR, lazy protocol witness table accessor for type ModifiedContent<PaceMetricView, _ForegroundStyleModifier<Color>> and conformance <> ModifiedContent<A, B>);
    lazy protocol witness table accessor for type ModifiedContent<ElapsedTimeView, _ForegroundStyleModifier<Color>>? and conformance <A> A?(&lazy protocol witness table cache variable for type ModifiedContent<PowerMetricView, _ForegroundStyleModifier<Color>>? and conformance <A> A?, &_s7SwiftUI15ModifiedContentVy07WorkoutB015PowerMetricViewVAA24_ForegroundStyleModifierVyAA5ColorVGGSgMd, &_s7SwiftUI15ModifiedContentVy07WorkoutB015PowerMetricViewVAA24_ForegroundStyleModifierVyAA5ColorVGGSgMR, lazy protocol witness table accessor for type ModifiedContent<PowerMetricView, _ForegroundStyleModifier<Color>> and conformance <> ModifiedContent<A, B>);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type _ConditionalContent<ModifiedContent<PaceMetricView, _ForegroundStyleModifier<Color>>?, ModifiedContent<PowerMetricView, _ForegroundStyleModifier<Color>>?> and conformance <> _ConditionalContent<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type _ConditionalContent<_ConditionalContent<_ConditionalContent<ModifiedContent<MetricText, _ForegroundStyleModifier<Color>>, ModifiedContent<MetricText, _ForegroundStyleModifier<Color>>>?, ModifiedContent<PaceMetricView, _ForegroundStyleModifier<Color>>?>, _ConditionalContent<ModifiedContent<ElapsedTimeView, _ForegroundStyleModifier<Color>>?, _ConditionalContent<_ConditionalContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Text, WorkoutNotificationFont>, _EnvironmentKeyWritingModifier<CGFloat>>, _EnvironmentKeyWritingModifier<Int?>>, _ForegroundStyleModifier<Color>>, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Text, WorkoutNotificationFont>, _EnvironmentKeyWritingModifier<CGFloat>>, _EnvironmentKeyWritingModifier<Int?>>, _ForegroundStyleModifier<Color>>>, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Text, WorkoutNotificationFont>, _EnvironmentKeyWritingModifier<CGFloat>>, _EnvironmentKeyWritingModifier<Int()
{
  result = lazy protocol witness table cache variable for type _ConditionalContent<_ConditionalContent<_ConditionalContent<ModifiedContent<MetricText, _ForegroundStyleModifier<Color>>, ModifiedContent<MetricText, _ForegroundStyleModifier<Color>>>?, ModifiedContent<PaceMetricView, _ForegroundStyleModifier<Color>>?>, _ConditionalContent<ModifiedContent<ElapsedTimeView, _ForegroundStyleModifier<Color>>?, _ConditionalContent<_ConditionalContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Text, WorkoutNotificationFont>, _EnvironmentKeyWritingModifier<CGFloat>>, _EnvironmentKeyWritingModifier<Int?>>, _ForegroundStyleModifier<Color>>, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Text, WorkoutNotificationFont>, _EnvironmentKeyWritingModifier<CGFloat>>, _EnvironmentKeyWritingModifier<Int?>>, _ForegroundStyleModifier<Color>>>, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Text, WorkoutNotificationFont>, _EnvironmentKeyWritingModifier<CGFloat>>, _EnvironmentKeyWritingModifi;
  if (!lazy protocol witness table cache variable for type _ConditionalContent<_ConditionalContent<_ConditionalContent<ModifiedContent<MetricText, _ForegroundStyleModifier<Color>>, ModifiedContent<MetricText, _ForegroundStyleModifier<Color>>>?, ModifiedContent<PaceMetricView, _ForegroundStyleModifier<Color>>?>, _ConditionalContent<ModifiedContent<ElapsedTimeView, _ForegroundStyleModifier<Color>>?, _ConditionalContent<_ConditionalContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Text, WorkoutNotificationFont>, _EnvironmentKeyWritingModifier<CGFloat>>, _EnvironmentKeyWritingModifier<Int?>>, _ForegroundStyleModifier<Color>>, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Text, WorkoutNotificationFont>, _EnvironmentKeyWritingModifier<CGFloat>>, _EnvironmentKeyWritingModifier<Int?>>, _ForegroundStyleModifier<Color>>>, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Text, WorkoutNotificationFont>, _EnvironmentKeyWritingModifier<CGFloat>>, _EnvironmentKeyWritingModifi)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI19_ConditionalContentVyACyACyAA08ModifiedD0Vy07WorkoutB010MetricTextVAA24_ForegroundStyleModifierVyAA5ColorVGGANGSgAEyAF04PaceG4ViewVAMGSgGACyAEyAF011ElapsedTimeN0VAMGSgACyACyAEyAEyAEyAEyAA0H0VAF0F16NotificationFontVGAA022_EnvironmentKeyWritingK0Vy12CoreGraphics7CGFloatVGGA4_ySiSgGGAMGA13_GA13_GSgGGMd);
    lazy protocol witness table accessor for type _ConditionalContent<_ConditionalContent<ModifiedContent<MetricText, _ForegroundStyleModifier<Color>>, ModifiedContent<MetricText, _ForegroundStyleModifier<Color>>>?, ModifiedContent<PaceMetricView, _ForegroundStyleModifier<Color>>?> and conformance <> _ConditionalContent<A, B>();
    lazy protocol witness table accessor for type _ConditionalContent<ModifiedContent<ElapsedTimeView, _ForegroundStyleModifier<Color>>?, _ConditionalContent<_ConditionalContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Text, WorkoutNotificationFont>, _EnvironmentKeyWritingModifier<CGFloat>>, _EnvironmentKeyWritingModifier<Int?>>, _ForegroundStyleModifier<Color>>, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Text, WorkoutNotificationFont>, _EnvironmentKeyWritingModifier<CGFloat>>, _EnvironmentKeyWritingModifier<Int?>>, _ForegroundStyleModifier<Color>>>, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Text, WorkoutNotificationFont>, _EnvironmentKeyWritingModifier<CGFloat>>, _EnvironmentKeyWritingModifier<Int?>>, _ForegroundStyleModifier<Color>>>?> and conformance <> _ConditionalContent<A, B>();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type _ConditionalContent<_ConditionalContent<_ConditionalContent<ModifiedContent<MetricText, _ForegroundStyleModifier<Color>>, ModifiedContent<MetricText, _ForegroundStyleModifier<Color>>>?, ModifiedContent<PaceMetricView, _ForegroundStyleModifier<Color>>?>, _ConditionalContent<ModifiedContent<ElapsedTimeView, _ForegroundStyleModifier<Color>>?, _ConditionalContent<_ConditionalContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Text, WorkoutNotificationFont>, _EnvironmentKeyWritingModifier<CGFloat>>, _EnvironmentKeyWritingModifier<Int?>>, _ForegroundStyleModifier<Color>>, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Text, WorkoutNotificationFont>, _EnvironmentKeyWritingModifier<CGFloat>>, _EnvironmentKeyWritingModifier<Int?>>, _ForegroundStyleModifier<Color>>>, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Text, WorkoutNotificationFont>, _EnvironmentKeyWritingModifier<CGFloat>>, _EnvironmentKeyWritingModifi);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type _ConditionalContent<_ConditionalContent<ModifiedContent<MetricText, _ForegroundStyleModifier<Color>>, ModifiedContent<MetricText, _ForegroundStyleModifier<Color>>>?, ModifiedContent<PaceMetricView, _ForegroundStyleModifier<Color>>?> and conformance <> _ConditionalContent<A, B>()
{
  result = lazy protocol witness table cache variable for type _ConditionalContent<_ConditionalContent<ModifiedContent<MetricText, _ForegroundStyleModifier<Color>>, ModifiedContent<MetricText, _ForegroundStyleModifier<Color>>>?, ModifiedContent<PaceMetricView, _ForegroundStyleModifier<Color>>?> and conformance <> _ConditionalContent<A, B>;
  if (!lazy protocol witness table cache variable for type _ConditionalContent<_ConditionalContent<ModifiedContent<MetricText, _ForegroundStyleModifier<Color>>, ModifiedContent<MetricText, _ForegroundStyleModifier<Color>>>?, ModifiedContent<PaceMetricView, _ForegroundStyleModifier<Color>>?> and conformance <> _ConditionalContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI19_ConditionalContentVyACyAA08ModifiedD0Vy07WorkoutB010MetricTextVAA24_ForegroundStyleModifierVyAA5ColorVGGANGSgAEyAF04PaceG4ViewVAMGSgGMd);
    lazy protocol witness table accessor for type _ConditionalContent<ModifiedContent<MetricText, _ForegroundStyleModifier<Color>>, ModifiedContent<MetricText, _ForegroundStyleModifier<Color>>>? and conformance <A> A?();
    lazy protocol witness table accessor for type ModifiedContent<ElapsedTimeView, _ForegroundStyleModifier<Color>>? and conformance <A> A?(&lazy protocol witness table cache variable for type ModifiedContent<PaceMetricView, _ForegroundStyleModifier<Color>>? and conformance <A> A?, &_s7SwiftUI15ModifiedContentVy07WorkoutB014PaceMetricViewVAA24_ForegroundStyleModifierVyAA5ColorVGGSgMd, &_s7SwiftUI15ModifiedContentVy07WorkoutB014PaceMetricViewVAA24_ForegroundStyleModifierVyAA5ColorVGGSgMR, lazy protocol witness table accessor for type ModifiedContent<PaceMetricView, _ForegroundStyleModifier<Color>> and conformance <> ModifiedContent<A, B>);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type _ConditionalContent<_ConditionalContent<ModifiedContent<MetricText, _ForegroundStyleModifier<Color>>, ModifiedContent<MetricText, _ForegroundStyleModifier<Color>>>?, ModifiedContent<PaceMetricView, _ForegroundStyleModifier<Color>>?> and conformance <> _ConditionalContent<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type _ConditionalContent<ModifiedContent<MetricText, _ForegroundStyleModifier<Color>>, ModifiedContent<MetricText, _ForegroundStyleModifier<Color>>>? and conformance <A> A?()
{
  result = lazy protocol witness table cache variable for type _ConditionalContent<ModifiedContent<MetricText, _ForegroundStyleModifier<Color>>, ModifiedContent<MetricText, _ForegroundStyleModifier<Color>>>? and conformance <A> A?;
  if (!lazy protocol witness table cache variable for type _ConditionalContent<ModifiedContent<MetricText, _ForegroundStyleModifier<Color>>, ModifiedContent<MetricText, _ForegroundStyleModifier<Color>>>? and conformance <A> A?)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI19_ConditionalContentVyAA08ModifiedD0Vy07WorkoutB010MetricTextVAA24_ForegroundStyleModifierVyAA5ColorVGGANGSgMd);
    lazy protocol witness table accessor for type _ConditionalContent<ModifiedContent<MetricText, _ForegroundStyleModifier<Color>>, ModifiedContent<MetricText, _ForegroundStyleModifier<Color>>> and conformance <> _ConditionalContent<A, B>(&lazy protocol witness table cache variable for type _ConditionalContent<ModifiedContent<MetricText, _ForegroundStyleModifier<Color>>, ModifiedContent<MetricText, _ForegroundStyleModifier<Color>>> and conformance <> _ConditionalContent<A, B>, &_s7SwiftUI19_ConditionalContentVyAA08ModifiedD0Vy07WorkoutB010MetricTextVAA24_ForegroundStyleModifierVyAA5ColorVGGANGMd, &_s7SwiftUI19_ConditionalContentVyAA08ModifiedD0Vy07WorkoutB010MetricTextVAA24_ForegroundStyleModifierVyAA5ColorVGGANGMR, lazy protocol witness table accessor for type ModifiedContent<MetricText, _ForegroundStyleModifier<Color>> and conformance <> ModifiedContent<A, B>);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type _ConditionalContent<ModifiedContent<MetricText, _ForegroundStyleModifier<Color>>, ModifiedContent<MetricText, _ForegroundStyleModifier<Color>>>? and conformance <A> A?);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type _ConditionalContent<ModifiedContent<ElapsedTimeView, _ForegroundStyleModifier<Color>>?, _ConditionalContent<_ConditionalContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Text, WorkoutNotificationFont>, _EnvironmentKeyWritingModifier<CGFloat>>, _EnvironmentKeyWritingModifier<Int?>>, _ForegroundStyleModifier<Color>>, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Text, WorkoutNotificationFont>, _EnvironmentKeyWritingModifier<CGFloat>>, _EnvironmentKeyWritingModifier<Int?>>, _ForegroundStyleModifier<Color>>>, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Text, WorkoutNotificationFont>, _EnvironmentKeyWritingModifier<CGFloat>>, _EnvironmentKeyWritingModifier<Int?>>, _ForegroundStyleModifier<Color>>>?> and conformance <> _ConditionalContent<A, B>()
{
  result = lazy protocol witness table cache variable for type _ConditionalContent<ModifiedContent<ElapsedTimeView, _ForegroundStyleModifier<Color>>?, _ConditionalContent<_ConditionalContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Text, WorkoutNotificationFont>, _EnvironmentKeyWritingModifier<CGFloat>>, _EnvironmentKeyWritingModifier<Int?>>, _ForegroundStyleModifier<Color>>, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Text, WorkoutNotificationFont>, _EnvironmentKeyWritingModifier<CGFloat>>, _EnvironmentKeyWritingModifier<Int?>>, _ForegroundStyleModifier<Color>>>, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Text, WorkoutNotificationFont>, _EnvironmentKeyWritingModifier<CGFloat>>, _EnvironmentKeyWritingModifier<Int?>>, _ForegroundStyleModifier<Color>>>?> and conformance <> _ConditionalContent<A, B>;
  if (!lazy protocol witness table cache variable for type _ConditionalContent<ModifiedContent<ElapsedTimeView, _ForegroundStyleModifier<Color>>?, _ConditionalContent<_ConditionalContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Text, WorkoutNotificationFont>, _EnvironmentKeyWritingModifier<CGFloat>>, _EnvironmentKeyWritingModifier<Int?>>, _ForegroundStyleModifier<Color>>, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Text, WorkoutNotificationFont>, _EnvironmentKeyWritingModifier<CGFloat>>, _EnvironmentKeyWritingModifier<Int?>>, _ForegroundStyleModifier<Color>>>, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Text, WorkoutNotificationFont>, _EnvironmentKeyWritingModifier<CGFloat>>, _EnvironmentKeyWritingModifier<Int?>>, _ForegroundStyleModifier<Color>>>?> and conformance <> _ConditionalContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI19_ConditionalContentVyAA08ModifiedD0Vy07WorkoutB015ElapsedTimeViewVAA24_ForegroundStyleModifierVyAA5ColorVGGSgACyACyAEyAEyAEyAEyAA4TextVAF0F16NotificationFontVGAA022_EnvironmentKeyWritingL0Vy12CoreGraphics7CGFloatVGGAVySiSgGGAMGA3_GA3_GSgGMd);
    lazy protocol witness table accessor for type ModifiedContent<ElapsedTimeView, _ForegroundStyleModifier<Color>>? and conformance <A> A?(&lazy protocol witness table cache variable for type ModifiedContent<ElapsedTimeView, _ForegroundStyleModifier<Color>>? and conformance <A> A?, &_s7SwiftUI15ModifiedContentVy07WorkoutB015ElapsedTimeViewVAA24_ForegroundStyleModifierVyAA5ColorVGGSgMd, &_s7SwiftUI15ModifiedContentVy07WorkoutB015ElapsedTimeViewVAA24_ForegroundStyleModifierVyAA5ColorVGGSgMR, lazy protocol witness table accessor for type ModifiedContent<ElapsedTimeView, _ForegroundStyleModifier<Color>> and conformance <> ModifiedContent<A, B>);
    lazy protocol witness table accessor for type ModifiedContent<ElapsedTimeView, _ForegroundStyleModifier<Color>>? and conformance <A> A?(&lazy protocol witness table cache variable for type _ConditionalContent<_ConditionalContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Text, WorkoutNotificationFont>, _EnvironmentKeyWritingModifier<CGFloat>>, _EnvironmentKeyWritingModifier<Int?>>, _ForegroundStyleModifier<Color>>, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Text, WorkoutNotificationFont>, _EnvironmentKeyWritingModifier<CGFloat>>, _EnvironmentKeyWritingModifier<Int?>>, _ForegroundStyleModifier<Color>>>, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Text, WorkoutNotificationFont>, _EnvironmentKeyWritingModifier<CGFloat>>, _EnvironmentKeyWritingModifier<Int?>>, _ForegroundStyleModifier<Color>>>? and conformance <A> A?, &_s7SwiftUI19_ConditionalContentVyACyAA08ModifiedD0VyAEyAEyAEyAA4TextV07WorkoutB00G16NotificationFontVGAA30_EnvironmentKeyWritingModifierVy12CoreGraphics7CGFloatVGGAMySiSgGGAA016_ForegroundStyleM0VyAA5ColorVGGA_GA_GSgMd, &_s7SwiftUI19_ConditionalContentVyACyAA08ModifiedD0VyAEyAEyAEyAA4TextV07WorkoutB00G16NotificationFontVGAA30_EnvironmentKeyWritingModifierVy12CoreGraphics7CGFloatVGGAMySiSgGGAA016_ForegroundStyleM0VyAA5ColorVGGA_GA_GSgMR, lazy protocol witness table accessor for type _ConditionalContent<_ConditionalContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Text, WorkoutNotificationFont>, _EnvironmentKeyWritingModifier<CGFloat>>, _EnvironmentKeyWritingModifier<Int?>>, _ForegroundStyleModifier<Color>>, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Text, WorkoutNotificationFont>, _EnvironmentKeyWritingModifier<CGFloat>>, _EnvironmentKeyWritingModifier<Int?>>, _ForegroundStyleModifier<Color>>>, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Text, WorkoutNotificationFont>, _EnvironmentKeyWritingModifier<CGFloat>>, _EnvironmentKeyWritingModifier<Int?>>, _ForegroundStyleModifier<Color>>> and conformance <> _ConditionalContent<A, B>);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type _ConditionalContent<ModifiedContent<ElapsedTimeView, _ForegroundStyleModifier<Color>>?, _ConditionalContent<_ConditionalContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Text, WorkoutNotificationFont>, _EnvironmentKeyWritingModifier<CGFloat>>, _EnvironmentKeyWritingModifier<Int?>>, _ForegroundStyleModifier<Color>>, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Text, WorkoutNotificationFont>, _EnvironmentKeyWritingModifier<CGFloat>>, _EnvironmentKeyWritingModifier<Int?>>, _ForegroundStyleModifier<Color>>>, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Text, WorkoutNotificationFont>, _EnvironmentKeyWritingModifier<CGFloat>>, _EnvironmentKeyWritingModifier<Int?>>, _ForegroundStyleModifier<Color>>>?> and conformance <> _ConditionalContent<A, B>);
  }

  return result;
}

uint64_t lazy protocol witness table accessor for type ModifiedContent<ElapsedTimeView, _ForegroundStyleModifier<Color>>? and conformance <A> A?(unint64_t *a1, uint64_t *a2, uint64_t a3, void (*a4)(void))
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

unint64_t lazy protocol witness table accessor for type _ConditionalContent<_ConditionalContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Text, WorkoutNotificationFont>, _EnvironmentKeyWritingModifier<CGFloat>>, _EnvironmentKeyWritingModifier<Int?>>, _ForegroundStyleModifier<Color>>, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Text, WorkoutNotificationFont>, _EnvironmentKeyWritingModifier<CGFloat>>, _EnvironmentKeyWritingModifier<Int?>>, _ForegroundStyleModifier<Color>>>, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Text, WorkoutNotificationFont>, _EnvironmentKeyWritingModifier<CGFloat>>, _EnvironmentKeyWritingModifier<Int?>>, _ForegroundStyleModifier<Color>>> and conformance <> _ConditionalContent<A, B>()
{
  result = lazy protocol witness table cache variable for type _ConditionalContent<_ConditionalContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Text, WorkoutNotificationFont>, _EnvironmentKeyWritingModifier<CGFloat>>, _EnvironmentKeyWritingModifier<Int?>>, _ForegroundStyleModifier<Color>>, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Text, WorkoutNotificationFont>, _EnvironmentKeyWritingModifier<CGFloat>>, _EnvironmentKeyWritingModifier<Int?>>, _ForegroundStyleModifier<Color>>>, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Text, WorkoutNotificationFont>, _EnvironmentKeyWritingModifier<CGFloat>>, _EnvironmentKeyWritingModifier<Int?>>, _ForegroundStyleModifier<Color>>> and conformance <> _ConditionalContent<A, B>;
  if (!lazy protocol witness table cache variable for type _ConditionalContent<_ConditionalContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Text, WorkoutNotificationFont>, _EnvironmentKeyWritingModifier<CGFloat>>, _EnvironmentKeyWritingModifier<Int?>>, _ForegroundStyleModifier<Color>>, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Text, WorkoutNotificationFont>, _EnvironmentKeyWritingModifier<CGFloat>>, _EnvironmentKeyWritingModifier<Int?>>, _ForegroundStyleModifier<Color>>>, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Text, WorkoutNotificationFont>, _EnvironmentKeyWritingModifier<CGFloat>>, _EnvironmentKeyWritingModifier<Int?>>, _ForegroundStyleModifier<Color>>> and conformance <> _ConditionalContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI19_ConditionalContentVyACyAA08ModifiedD0VyAEyAEyAEyAA4TextV07WorkoutB00G16NotificationFontVGAA30_EnvironmentKeyWritingModifierVy12CoreGraphics7CGFloatVGGAMySiSgGGAA016_ForegroundStyleM0VyAA5ColorVGGA_GA_GMd);
    lazy protocol witness table accessor for type _ConditionalContent<ModifiedContent<MetricText, _ForegroundStyleModifier<Color>>, ModifiedContent<MetricText, _ForegroundStyleModifier<Color>>> and conformance <> _ConditionalContent<A, B>(&lazy protocol witness table cache variable for type _ConditionalContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Text, WorkoutNotificationFont>, _EnvironmentKeyWritingModifier<CGFloat>>, _EnvironmentKeyWritingModifier<Int?>>, _ForegroundStyleModifier<Color>>, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Text, WorkoutNotificationFont>, _EnvironmentKeyWritingModifier<CGFloat>>, _EnvironmentKeyWritingModifier<Int?>>, _ForegroundStyleModifier<Color>>> and conformance <> _ConditionalContent<A, B>, &_s7SwiftUI19_ConditionalContentVyAA08ModifiedD0VyAEyAEyAEyAA4TextV07WorkoutB00G16NotificationFontVGAA30_EnvironmentKeyWritingModifierVy12CoreGraphics7CGFloatVGGAMySiSgGGAA016_ForegroundStyleM0VyAA5ColorVGGA_GMd, &_s7SwiftUI19_ConditionalContentVyAA08ModifiedD0VyAEyAEyAEyAA4TextV07WorkoutB00G16NotificationFontVGAA30_EnvironmentKeyWritingModifierVy12CoreGraphics7CGFloatVGGAMySiSgGGAA016_ForegroundStyleM0VyAA5ColorVGGA_GMR, lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Text, WorkoutNotificationFont>, _EnvironmentKeyWritingModifier<CGFloat>>, _EnvironmentKeyWritingModifier<Int?>>, _ForegroundStyleModifier<Color>> and conformance <> ModifiedContent<A, B>);
    lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Text, WorkoutNotificationFont>, _EnvironmentKeyWritingModifier<CGFloat>>, _EnvironmentKeyWritingModifier<Int?>>, _ForegroundStyleModifier<Color>> and conformance <> ModifiedContent<A, B>();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type _ConditionalContent<_ConditionalContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Text, WorkoutNotificationFont>, _EnvironmentKeyWritingModifier<CGFloat>>, _EnvironmentKeyWritingModifier<Int?>>, _ForegroundStyleModifier<Color>>, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Text, WorkoutNotificationFont>, _EnvironmentKeyWritingModifier<CGFloat>>, _EnvironmentKeyWritingModifier<Int?>>, _ForegroundStyleModifier<Color>>>, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Text, WorkoutNotificationFont>, _EnvironmentKeyWritingModifier<CGFloat>>, _EnvironmentKeyWritingModifier<Int?>>, _ForegroundStyleModifier<Color>>> and conformance <> _ConditionalContent<A, B>);
  }

  return result;
}

uint64_t lazy protocol witness table accessor for type _ConditionalContent<ModifiedContent<MetricText, _ForegroundStyleModifier<Color>>, ModifiedContent<MetricText, _ForegroundStyleModifier<Color>>> and conformance <> _ConditionalContent<A, B>(unint64_t *a1, uint64_t *a2, uint64_t a3, void (*a4)(void))
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

unint64_t lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Text, WorkoutNotificationFont>, _EnvironmentKeyWritingModifier<CGFloat>>, _EnvironmentKeyWritingModifier<Int?>>, _ForegroundStyleModifier<Color>> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Text, WorkoutNotificationFont>, _EnvironmentKeyWritingModifier<CGFloat>>, _EnvironmentKeyWritingModifier<Int?>>, _ForegroundStyleModifier<Color>> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Text, WorkoutNotificationFont>, _EnvironmentKeyWritingModifier<CGFloat>>, _EnvironmentKeyWritingModifier<Int?>>, _ForegroundStyleModifier<Color>> and conformance <> ModifiedContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyACyACyACyAA4TextV07WorkoutB00F16NotificationFontVGAA30_EnvironmentKeyWritingModifierVy12CoreGraphics7CGFloatVGGAKySiSgGGAA016_ForegroundStyleL0VyAA5ColorVGGMd);
    lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<ModifiedContent<Text, WorkoutNotificationFont>, _EnvironmentKeyWritingModifier<CGFloat>>, _EnvironmentKeyWritingModifier<Int?>> and conformance <> ModifiedContent<A, B>();
    _s7SwiftUI24_ForegroundStyleModifierVyAA5ColorVGACyxGAA04ViewE0AAWlTm_7(&lazy protocol witness table cache variable for type _ForegroundStyleModifier<Color> and conformance _ForegroundStyleModifier<A>, &_s7SwiftUI24_ForegroundStyleModifierVyAA5ColorVGMd);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Text, WorkoutNotificationFont>, _EnvironmentKeyWritingModifier<CGFloat>>, _EnvironmentKeyWritingModifier<Int?>>, _ForegroundStyleModifier<Color>> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type _ConditionalContent<ModifiedContent<ElapsedTimeView, _ForegroundStyleModifier<Color>>?, Text> and conformance <> _ConditionalContent<A, B>()
{
  result = lazy protocol witness table cache variable for type _ConditionalContent<ModifiedContent<ElapsedTimeView, _ForegroundStyleModifier<Color>>?, Text> and conformance <> _ConditionalContent<A, B>;
  if (!lazy protocol witness table cache variable for type _ConditionalContent<ModifiedContent<ElapsedTimeView, _ForegroundStyleModifier<Color>>?, Text> and conformance <> _ConditionalContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI19_ConditionalContentVyAA08ModifiedD0Vy07WorkoutB015ElapsedTimeViewVAA24_ForegroundStyleModifierVyAA5ColorVGGSgAA4TextVGMd);
    lazy protocol witness table accessor for type ModifiedContent<ElapsedTimeView, _ForegroundStyleModifier<Color>>? and conformance <A> A?(&lazy protocol witness table cache variable for type ModifiedContent<ElapsedTimeView, _ForegroundStyleModifier<Color>>? and conformance <A> A?, &_s7SwiftUI15ModifiedContentVy07WorkoutB015ElapsedTimeViewVAA24_ForegroundStyleModifierVyAA5ColorVGGSgMd, &_s7SwiftUI15ModifiedContentVy07WorkoutB015ElapsedTimeViewVAA24_ForegroundStyleModifierVyAA5ColorVGGSgMR, lazy protocol witness table accessor for type ModifiedContent<ElapsedTimeView, _ForegroundStyleModifier<Color>> and conformance <> ModifiedContent<A, B>);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type _ConditionalContent<ModifiedContent<ElapsedTimeView, _ForegroundStyleModifier<Color>>?, Text> and conformance <> _ConditionalContent<A, B>);
  }

  return result;
}

uint64_t outlined copy of ModifiedContent<ModifiedContent<Image, _ForegroundStyleModifier<Color>>, MetricValueFont>?(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  if (result)
  {

    return outlined copy of Environment<WorkoutViewStyle>.Content(a4, a5 & 1);
  }

  return result;
}

uint64_t outlined consume of ModifiedContent<ModifiedContent<Image, _ForegroundStyleModifier<Color>>, MetricValueFont>?(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  if (result)
  {

    return outlined consume of Environment<WorkoutViewStyle>.Content(a4, a5 & 1);
  }

  return result;
}

uint64_t _s7SwiftUI24_ForegroundStyleModifierVyAA5ColorVGACyxGAA04ViewE0AAWlTm_7(unint64_t *a1, uint64_t *a2)
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
    return MEMORY[0x277D84F90];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys5UInt8VGMd);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size_6(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

uint64_t outlined copy of ModifiedContent<EnergyMetricView, _ForegroundStyleModifier<Color>>?(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5, char a6)
{
  if (a4)
  {
    v8 = a4;
    outlined copy of Environment<WorkoutViewStyle>.Content(a5, a6 & 1);
  }

  return result;
}

uint64_t outlined consume of ModifiedContent<EnergyMetricView, _ForegroundStyleModifier<Color>>?(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5, char a6)
{
  if (a4)
  {

    outlined consume of Environment<WorkoutViewStyle>.Content(a5, a6 & 1);
  }

  return result;
}

uint64_t outlined init with copy of _ConditionalContent<_ConditionalContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Text, WorkoutNotificationFont>, _EnvironmentKeyWritingModifier<CGFloat>>, _EnvironmentKeyWritingModifier<Int?>>, _ForegroundStyleModifier<Color>>, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Text, WorkoutNotificationFont>, _EnvironmentKeyWritingModifier<CGFloat>>, _EnvironmentKeyWritingModifier<Int?>>, _ForegroundStyleModifier<Color>>>, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Text, WorkoutNotificationFont>, _EnvironmentKeyWritingModifier<CGFloat>>, _EnvironmentKeyWritingModifier<Int?>>, _ForegroundStyleModifier<Color>>>?(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(a3);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t outlined destroy of _ConditionalContent<_ConditionalContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Text, WorkoutNotificationFont>, _EnvironmentKeyWritingModifier<CGFloat>>, _EnvironmentKeyWritingModifier<Int?>>, _ForegroundStyleModifier<Color>>, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Text, WorkoutNotificationFont>, _EnvironmentKeyWritingModifier<CGFloat>>, _EnvironmentKeyWritingModifier<Int?>>, _ForegroundStyleModifier<Color>>>, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Text, WorkoutNotificationFont>, _EnvironmentKeyWritingModifier<CGFloat>>, _EnvironmentKeyWritingModifier<Int?>>, _ForegroundStyleModifier<Color>>>?(uint64_t a1, uint64_t *a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(a2);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unsigned __int8 *specialized _parseInteger<A, B>(ascii:radix:)(uint64_t a1, uint64_t a2, int64_t a3)
{
  v68 = a1;
  v69 = a2;

  result = String.init<A>(_:)();
  v6 = result;
  if ((v5 & 0x1000000000000000) != 0)
  {
    v6 = static String._copying(_:)();
    v38 = v37;

    v5 = v38;
    if ((v38 & 0x2000000000000000) == 0)
    {
      goto LABEL_3;
    }
  }

  else if ((v5 & 0x2000000000000000) == 0)
  {
LABEL_3:
    if ((v6 & 0x1000000000000000) != 0)
    {
      result = ((v5 & 0xFFFFFFFFFFFFFFFLL) + 32);
      v7 = v6 & 0xFFFFFFFFFFFFLL;
    }

    else
    {
      result = _StringObject.sharedUTF8.getter();
      v7 = v67;
    }

    v8 = *result;
    if (v8 == 43)
    {
      if (v7 >= 1)
      {
        v21 = v7 - 1;
        if (v21)
        {
          v22 = a3 + 48;
          v23 = a3 + 55;
          v24 = a3 + 87;
          if (a3 > 10)
          {
            v22 = 58;
          }

          else
          {
            v24 = 97;
            v23 = 65;
          }

          if (result)
          {
            v13 = 0;
            v25 = result + 1;
            do
            {
              v26 = *v25;
              if (v26 < 0x30 || v26 >= v22)
              {
                if (v26 < 0x41 || v26 >= v23)
                {
                  v17 = 0;
                  if (v26 < 0x61 || v26 >= v24)
                  {
                    goto LABEL_129;
                  }

                  v27 = -87;
                }

                else
                {
                  v27 = -55;
                }
              }

              else
              {
                v27 = -48;
              }

              if (!is_mul_ok(v13, a3))
              {
                goto LABEL_128;
              }

              v28 = v13 * a3;
              v29 = v26 + v27;
              v20 = __CFADD__(v28, v29);
              v13 = v28 + v29;
              if (v20)
              {
                goto LABEL_128;
              }

              ++v25;
              --v21;
            }

            while (v21);
LABEL_66:
            v17 = v13;
            goto LABEL_129;
          }

          goto LABEL_67;
        }

        goto LABEL_128;
      }

      goto LABEL_133;
    }

    if (v8 != 45)
    {
      if (v7)
      {
        v30 = a3 + 48;
        v31 = a3 + 55;
        v32 = a3 + 87;
        if (a3 > 10)
        {
          v30 = 58;
        }

        else
        {
          v32 = 97;
          v31 = 65;
        }

        if (result)
        {
          v13 = 0;
          while (1)
          {
            v33 = *result;
            if (v33 < 0x30 || v33 >= v30)
            {
              if (v33 < 0x41 || v33 >= v31)
              {
                v17 = 0;
                if (v33 < 0x61 || v33 >= v32)
                {
                  goto LABEL_129;
                }

                v34 = -87;
              }

              else
              {
                v34 = -55;
              }
            }

            else
            {
              v34 = -48;
            }

            if (!is_mul_ok(v13, a3))
            {
              goto LABEL_128;
            }

            v35 = v13 * a3;
            v36 = v33 + v34;
            v20 = __CFADD__(v35, v36);
            v13 = v35 + v36;
            if (v20)
            {
              goto LABEL_128;
            }

            ++result;
            if (!--v7)
            {
              goto LABEL_66;
            }
          }
        }

        goto LABEL_67;
      }

LABEL_128:
      v17 = 0;
      goto LABEL_129;
    }

    if (v7 >= 1)
    {
      v9 = v7 - 1;
      if (v9)
      {
        v10 = a3 + 48;
        v11 = a3 + 55;
        v12 = a3 + 87;
        if (a3 > 10)
        {
          v10 = 58;
        }

        else
        {
          v12 = 97;
          v11 = 65;
        }

        if (result)
        {
          v13 = 0;
          v14 = result + 1;
          while (1)
          {
            v15 = *v14;
            if (v15 < 0x30 || v15 >= v10)
            {
              if (v15 < 0x41 || v15 >= v11)
              {
                v17 = 0;
                if (v15 < 0x61 || v15 >= v12)
                {
                  goto LABEL_129;
                }

                v16 = -87;
              }

              else
              {
                v16 = -55;
              }
            }

            else
            {
              v16 = -48;
            }

            if (!is_mul_ok(v13, a3))
            {
              goto LABEL_128;
            }

            v18 = v13 * a3;
            v19 = v15 + v16;
            v20 = v18 >= v19;
            v13 = v18 - v19;
            if (!v20)
            {
              goto LABEL_128;
            }

            ++v14;
            if (!--v9)
            {
              goto LABEL_66;
            }
          }
        }

LABEL_67:
        v17 = 0;
LABEL_129:

        return v17;
      }

      goto LABEL_128;
    }

    __break(1u);
LABEL_132:
    __break(1u);
LABEL_133:
    __break(1u);
    goto LABEL_134;
  }

  v39 = HIBYTE(v5) & 0xF;
  v68 = v6;
  v69 = v5 & 0xFFFFFFFFFFFFFFLL;
  if (v6 != 43)
  {
    if (v6 != 45)
    {
      if (v39)
      {
        v41 = 0;
        v59 = a3 + 48;
        v60 = a3 + 55;
        v61 = a3 + 87;
        if (a3 > 10)
        {
          v59 = 58;
        }

        else
        {
          v61 = 97;
          v60 = 65;
        }

        v62 = &v68;
        while (1)
        {
          v63 = *v62;
          if (v63 < 0x30 || v63 >= v59)
          {
            if (v63 < 0x41 || v63 >= v60)
            {
              v17 = 0;
              if (v63 < 0x61 || v63 >= v61)
              {
                goto LABEL_129;
              }

              v64 = -87;
            }

            else
            {
              v64 = -55;
            }
          }

          else
          {
            v64 = -48;
          }

          if (!is_mul_ok(v41, a3))
          {
            goto LABEL_128;
          }

          v65 = v41 * a3;
          v66 = v63 + v64;
          v20 = __CFADD__(v65, v66);
          v41 = v65 + v66;
          if (v20)
          {
            goto LABEL_128;
          }

          v62 = (v62 + 1);
          if (!--v39)
          {
            goto LABEL_127;
          }
        }
      }

      goto LABEL_128;
    }

    if (v39)
    {
      v40 = v39 - 1;
      if (v40)
      {
        v41 = 0;
        v42 = a3 + 48;
        v43 = a3 + 55;
        v44 = a3 + 87;
        if (a3 > 10)
        {
          v42 = 58;
        }

        else
        {
          v44 = 97;
          v43 = 65;
        }

        v45 = &v68 + 1;
        while (1)
        {
          v46 = *v45;
          if (v46 < 0x30 || v46 >= v42)
          {
            if (v46 < 0x41 || v46 >= v43)
            {
              v17 = 0;
              if (v46 < 0x61 || v46 >= v44)
              {
                goto LABEL_129;
              }

              v47 = -87;
            }

            else
            {
              v47 = -55;
            }
          }

          else
          {
            v47 = -48;
          }

          if (!is_mul_ok(v41, a3))
          {
            goto LABEL_128;
          }

          v48 = v41 * a3;
          v49 = v46 + v47;
          v20 = v48 >= v49;
          v41 = v48 - v49;
          if (!v20)
          {
            goto LABEL_128;
          }

          ++v45;
          if (!--v40)
          {
            goto LABEL_127;
          }
        }
      }

      goto LABEL_128;
    }

    goto LABEL_132;
  }

  if (v39)
  {
    v50 = v39 - 1;
    if (v50)
    {
      v41 = 0;
      v51 = a3 + 48;
      v52 = a3 + 55;
      v53 = a3 + 87;
      if (a3 > 10)
      {
        v51 = 58;
      }

      else
      {
        v53 = 97;
        v52 = 65;
      }

      v54 = &v68 + 1;
      do
      {
        v55 = *v54;
        if (v55 < 0x30 || v55 >= v51)
        {
          if (v55 < 0x41 || v55 >= v52)
          {
            v17 = 0;
            if (v55 < 0x61 || v55 >= v53)
            {
              goto LABEL_129;
            }

            v56 = -87;
          }

          else
          {
            v56 = -55;
          }
        }

        else
        {
          v56 = -48;
        }

        if (!is_mul_ok(v41, a3))
        {
          goto LABEL_128;
        }

        v57 = v41 * a3;
        v58 = v55 + v56;
        v20 = __CFADD__(v57, v58);
        v41 = v57 + v58;
        if (v20)
        {
          goto LABEL_128;
        }

        ++v54;
        --v50;
      }

      while (v50);
LABEL_127:
      v17 = v41;
      goto LABEL_129;
    }

    goto LABEL_128;
  }

LABEL_134:
  __break(1u);
  return result;
}

uint64_t static String._copying(_:)()
{
  v0 = String.subscript.getter();
  v4 = static String._copying(_:)(v0, v1, v2, v3);

  return v4;
}

uint64_t static String._copying(_:)(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4)
{
  if ((a4 & 0x1000000000000000) != 0)
  {
    v9 = Substring.UTF8View.distance(from:to:)();
    if (!v9 || (v10 = v9, v11 = _ss22_ContiguousArrayBufferV19_uninitializedCount15minimumCapacityAByxGSi_SitcfCs5UInt8V_Tt1gq5(v9, 0), v12 = specialized Sequence._copySequenceContents(initializing:)(v14, (v11 + 4), v10, a1, a2, a3, a4), , , v12 == v10))
    {
      v13 = static String._uncheckedFromUTF8(_:)();

      return v13;
    }

    __break(1u);
  }

  else
  {
    if ((a4 & 0x2000000000000000) != 0)
    {
      v14[0] = a3;
      v14[1] = a4 & 0xFFFFFFFFFFFFFFLL;
      return static String._uncheckedFromUTF8(_:)();
    }

    if ((a3 & 0x1000000000000000) != 0)
    {
      goto LABEL_4;
    }
  }

  _StringObject.sharedUTF8.getter();
LABEL_4:

  return static String._uncheckedFromUTF8(_:)();
}

unint64_t specialized Sequence._copySequenceContents(initializing:)(unint64_t result, uint64_t a2, uint64_t a3, unint64_t a4, unint64_t a5, unint64_t a6, unint64_t a7)
{
  v9 = result;
  if (!a2)
  {
    goto LABEL_5;
  }

  if (!a3)
  {
    v12 = a4;
    v11 = 0;
    goto LABEL_34;
  }

  if (a3 < 0)
  {
    goto LABEL_38;
  }

  v10 = a5 >> 14;
  v27 = a4 >> 14;
  if (a4 >> 14 == a5 >> 14)
  {
LABEL_5:
    v11 = 0;
    v12 = a4;
LABEL_34:
    *v9 = a4;
    v9[1] = a5;
    v9[2] = a6;
    v9[3] = a7;
    v9[4] = v12;
    return v11;
  }

  v11 = 0;
  v14 = (a6 >> 59) & 1;
  if ((a7 & 0x1000000000000000) == 0)
  {
    LOBYTE(v14) = 1;
  }

  v15 = 4 << v14;
  v21 = (a7 & 0xFFFFFFFFFFFFFFFLL) + 32;
  v22 = a7 & 0xFFFFFFFFFFFFFFLL;
  v16 = HIBYTE(a7) & 0xF;
  if ((a7 & 0x2000000000000000) == 0)
  {
    v16 = a6 & 0xFFFFFFFFFFFFLL;
  }

  v23 = v16;
  v26 = a3 - 1;
  v12 = a4;
  while (1)
  {
    v17 = v12 & 0xC;
    result = v12;
    if (v17 == v15)
    {
      result = _StringGuts._slowEnsureMatchingEncoding(_:)(v12, a6, a7);
    }

    if (result >> 14 < v27 || result >> 14 >= v10)
    {
      break;
    }

    if ((a7 & 0x1000000000000000) != 0)
    {
      result = String.UTF8View._foreignSubscript(position:)();
      v19 = result;
      if (v17 != v15)
      {
        goto LABEL_23;
      }
    }

    else
    {
      v18 = result >> 16;
      if ((a7 & 0x2000000000000000) != 0)
      {
        v28[0] = a6;
        v28[1] = v22;
        v19 = *(v28 + v18);
        if (v17 != v15)
        {
          goto LABEL_23;
        }
      }

      else
      {
        result = v21;
        if ((a6 & 0x1000000000000000) == 0)
        {
          result = _StringObject.sharedUTF8.getter();
        }

        v19 = *(result + v18);
        if (v17 != v15)
        {
LABEL_23:
          if ((a7 & 0x1000000000000000) == 0)
          {
            goto LABEL_24;
          }

          goto LABEL_27;
        }
      }
    }

    result = _StringGuts._slowEnsureMatchingEncoding(_:)(v12, a6, a7);
    v12 = result;
    if ((a7 & 0x1000000000000000) == 0)
    {
LABEL_24:
      v12 = (v12 & 0xFFFFFFFFFFFF0000) + 65540;
      goto LABEL_29;
    }

LABEL_27:
    if (v23 <= v12 >> 16)
    {
      goto LABEL_37;
    }

    result = String.UTF8View._foreignIndex(after:)();
    v12 = result;
LABEL_29:
    *(a2 + v11) = v19;
    if (v26 == v11)
    {
      v11 = a3;
      goto LABEL_34;
    }

    if (__OFADD__(v11 + 1, 1))
    {
      goto LABEL_36;
    }

    ++v11;
    if (v10 == v12 >> 14)
    {
      goto LABEL_34;
    }
  }

  __break(1u);
LABEL_36:
  __break(1u);
LABEL_37:
  __break(1u);
LABEL_38:
  __break(1u);
  return result;
}

uint64_t _StringGuts._slowEnsureMatchingEncoding(_:)(unint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = a1;
  v4 = a1 >> 14;
  if ((a3 & 0x1000000000000000) == 0 || (a2 & 0x800000000000000) != 0)
  {
    v10 = String.UTF16View.index(_:offsetBy:)();
    v11 = v10 + (v4 << 16);
    v12 = v10 & 0xFFFFFFFFFFFFFFFCLL | v3 & 3;
    v13 = v11 & 0xFFFFFFFFFFFF0000;
    if (!v4)
    {
      v13 = v12;
    }

    return v13 | 4;
  }

  else
  {
    v5 = MEMORY[0x20F30BC30](15, a1 >> 16);
    v6 = v5 + (v4 << 16);
    v7 = v5 & 0xFFFFFFFFFFFFFFFCLL | v3 & 3;
    v8 = v6 & 0xFFFFFFFFFFFF0000;
    if (!v4)
    {
      v8 = v7;
    }

    return v8 | 8;
  }
}

unint64_t lazy protocol witness table accessor for type _ConditionalContent<_ConditionalContent<_ConditionalContent<_ConditionalContent<_ConditionalContent<ModifiedContent<CadenceMetricView, _ForegroundStyleModifier<Color>>?, ModifiedContent<PaceMetricView, _ForegroundStyleModifier<Color>>?>, _ConditionalContent<ModifiedContent<PowerMetricView, _ForegroundStyleModifier<Color>>?, ModifiedContent<CadenceMetricView, _ForegroundStyleModifier<Color>>?>>, _ConditionalContent<_ConditionalContent<ModifiedContent<DistanceMetricText, _ForegroundStyleModifier<Color>>?, ModifiedContent<EnergyMetricView, _ForegroundStyleModifier<Color>>?>, _ConditionalContent<ModifiedContent<MetricHeadingView<Text>, _ForegroundStyleModifier<Color>>?, ModifiedContent<MetricText, _EnvironmentKeyWritingModifier<Color?>>?>>>, _ConditionalContent<_ConditionalContent<_ConditionalContent<ModifiedContent<ModifiedContent<Image, _ForegroundStyleModifier<Color>>, MetricValueFont>?, ModifiedContent<PaceMetricView, _ForegroundStyleModifier<Color>>?>, _Conditio()
{
  result = lazy protocol witness table cache variable for type _ConditionalContent<_ConditionalContent<_ConditionalContent<_ConditionalContent<_ConditionalContent<ModifiedContent<CadenceMetricView, _ForegroundStyleModifier<Color>>?, ModifiedContent<PaceMetricView, _ForegroundStyleModifier<Color>>?>, _ConditionalContent<ModifiedContent<PowerMetricView, _ForegroundStyleModifier<Color>>?, ModifiedContent<CadenceMetricView, _ForegroundStyleModifier<Color>>?>>, _ConditionalContent<_ConditionalContent<ModifiedContent<DistanceMetricText, _ForegroundStyleModifier<Color>>?, ModifiedContent<EnergyMetricView, _ForegroundStyleModifier<Color>>?>, _ConditionalContent<ModifiedContent<MetricHeadingView<Text>, _ForegroundStyleModifier<Color>>?, ModifiedContent<MetricText, _EnvironmentKeyWritingModifier<Color?>>?>>>, _ConditionalContent<_ConditionalContent<_ConditionalContent<ModifiedContent<ModifiedContent<Image, _ForegroundStyleModifier<Color>>, MetricValueFont>?, ModifiedContent<PaceMetricView, _ForegroundStyleModifier<Color>>?>, _Co;
  if (!lazy protocol witness table cache variable for type _ConditionalContent<_ConditionalContent<_ConditionalContent<_ConditionalContent<_ConditionalContent<ModifiedContent<CadenceMetricView, _ForegroundStyleModifier<Color>>?, ModifiedContent<PaceMetricView, _ForegroundStyleModifier<Color>>?>, _ConditionalContent<ModifiedContent<PowerMetricView, _ForegroundStyleModifier<Color>>?, ModifiedContent<CadenceMetricView, _ForegroundStyleModifier<Color>>?>>, _ConditionalContent<_ConditionalContent<ModifiedContent<DistanceMetricText, _ForegroundStyleModifier<Color>>?, ModifiedContent<EnergyMetricView, _ForegroundStyleModifier<Color>>?>, _ConditionalContent<ModifiedContent<MetricHeadingView<Text>, _ForegroundStyleModifier<Color>>?, ModifiedContent<MetricText, _EnvironmentKeyWritingModifier<Color?>>?>>>, _ConditionalContent<_ConditionalContent<_ConditionalContent<ModifiedContent<ModifiedContent<Image, _ForegroundStyleModifier<Color>>, MetricValueFont>?, ModifiedContent<PaceMetricView, _ForegroundStyleModifier<Color>>?>, _Co)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI19_ConditionalContentVyACyACyACyACyAA08ModifiedD0Vy07WorkoutB017CadenceMetricViewVAA24_ForegroundStyleModifierVyAA5ColorVGGSgAEyAF04PacehI0VAMGSgGACyAEyAF05PowerhI0VAMGSgAOGGACyACyAEyAF08DistanceH4TextVAMGSgAEyAF06EnergyhI0VAMGSgGACyAEyAF0h7HeadingI0VyAA0Q0VGAMGSgAEyAF0hQ0VAA022_EnvironmentKeyWritingL0VyALSgGGSgGGGACyACyACyAEyAEyAA5ImageVAMGAF0H9ValueFontVGSgASGACyAsXGGACyACyACyAEyA16_AMGA36_GSgASGACyAEyAF011ElapsedTimeI0VAMGSgACyACyAEyAEyAEyAEyA11_AF0f12NotificationY0VGA18_y12CoreGraphics7CGFloatVGGA18_ySiSgGGAMGA55_GA55_GSgGGGGACyA43_A11_GGMd);
    lazy protocol witness table accessor for type _ConditionalContent<_ConditionalContent<_ConditionalContent<_ConditionalContent<ModifiedContent<CadenceMetricView, _ForegroundStyleModifier<Color>>?, ModifiedContent<PaceMetricView, _ForegroundStyleModifier<Color>>?>, _ConditionalContent<ModifiedContent<PowerMetricView, _ForegroundStyleModifier<Color>>?, ModifiedContent<CadenceMetricView, _ForegroundStyleModifier<Color>>?>>, _ConditionalContent<_ConditionalContent<ModifiedContent<DistanceMetricText, _ForegroundStyleModifier<Color>>?, ModifiedContent<EnergyMetricView, _ForegroundStyleModifier<Color>>?>, _ConditionalContent<ModifiedContent<MetricHeadingView<Text>, _ForegroundStyleModifier<Color>>?, ModifiedContent<MetricText, _EnvironmentKeyWritingModifier<Color?>>?>>>, _ConditionalContent<_ConditionalContent<_ConditionalContent<ModifiedContent<ModifiedContent<Image, _ForegroundStyleModifier<Color>>, MetricValueFont>?, ModifiedContent<PaceMetricView, _ForegroundStyleModifier<Color>>?>, _ConditionalContent<ModifiedC();
    lazy protocol witness table accessor for type _ConditionalContent<ModifiedContent<ElapsedTimeView, _ForegroundStyleModifier<Color>>?, Text> and conformance <> _ConditionalContent<A, B>();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type _ConditionalContent<_ConditionalContent<_ConditionalContent<_ConditionalContent<_ConditionalContent<ModifiedContent<CadenceMetricView, _ForegroundStyleModifier<Color>>?, ModifiedContent<PaceMetricView, _ForegroundStyleModifier<Color>>?>, _ConditionalContent<ModifiedContent<PowerMetricView, _ForegroundStyleModifier<Color>>?, ModifiedContent<CadenceMetricView, _ForegroundStyleModifier<Color>>?>>, _ConditionalContent<_ConditionalContent<ModifiedContent<DistanceMetricText, _ForegroundStyleModifier<Color>>?, ModifiedContent<EnergyMetricView, _ForegroundStyleModifier<Color>>?>, _ConditionalContent<ModifiedContent<MetricHeadingView<Text>, _ForegroundStyleModifier<Color>>?, ModifiedContent<MetricText, _EnvironmentKeyWritingModifier<Color?>>?>>>, _ConditionalContent<_ConditionalContent<_ConditionalContent<ModifiedContent<ModifiedContent<Image, _ForegroundStyleModifier<Color>>, MetricValueFont>?, ModifiedContent<PaceMetricView, _ForegroundStyleModifier<Color>>?>, _Co);
  }

  return result;
}

void closure #1 in ARUIRingsViewWrapper.setCompletionPercentage(animated:)()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = *(Strong + OBJC_IVAR____TtC9WorkoutUI20ARUIRingsViewWrapper_storedRingsView);
    v2 = Strong;
    v3 = v1;

    if (v1)
    {
      v4 = [v3 ringGroup];

      swift_beginAccess();
      v5 = swift_unknownObjectWeakLoadStrong();
      if (v5)
      {
        v6 = *&v5[OBJC_IVAR____TtC9WorkoutUI20ARUIRingsViewWrapper_completionPercentage];

        *&v7 = v6;
      }

      else
      {
        v7 = 0.0;
      }

      [v4 setPercentage:0 ofRingAtIndex:0 animated:v7];
    }
  }
}

void ARUIRingsViewWrapper.resetRingsView()()
{
  v1 = v0;
  v2 = OBJC_IVAR____TtC9WorkoutUI20ARUIRingsViewWrapper_storedRingsView;
  v3 = *&v0[OBJC_IVAR____TtC9WorkoutUI20ARUIRingsViewWrapper_storedRingsView];
  if (v3)
  {
    [v3 removeFromSuperview];
  }

  v4 = [objc_allocWithZone(MEMORY[0x277CE8E90]) initWithNumberOfRings_];
  [v4 setPercentage:0 ofRingAtIndex:0 animated:0.0];
  v5 = [objc_allocWithZone(MEMORY[0x277CE8EA8]) initWithRingGroup_];
  v6 = objc_opt_self();
  v7 = v5;
  v8 = [v6 clearColor];
  [v7 setBackgroundColor_];

  v9 = *&v1[OBJC_IVAR____TtC9WorkoutUI20ARUIRingsViewWrapper_diameter] + -1.0;
  *&v9 = v9;
  [v4 setGroupDiameter_];
  v10 = *&v1[OBJC_IVAR____TtC9WorkoutUI20ARUIRingsViewWrapper_thickness];
  *&v10 = v10;
  [v4 setThickness_];
  v11 = OBJC_IVAR____TtC9WorkoutUI20ARUIRingsViewWrapper_goal;
  v12 = [*&v1[OBJC_IVAR____TtC9WorkoutUI20ARUIRingsViewWrapper_goal] goalTypeIdentifier];
  v13 = objc_opt_self();
  v14 = [v13 metricColorsForGoalTypeIdentifier_];
  v15 = [v14 gradientDarkColor];

  if (!v15)
  {
    __break(1u);
    goto LABEL_9;
  }

  v16 = [v13 metricColorsForGoalTypeIdentifier_];
  v17 = [v16 gradientLightColor];

  if (!v17)
  {
LABEL_9:
    __break(1u);
    return;
  }

  [v4 setTopColor:v15 bottomColor:v17 ofRingAtIndex:0];

  v18 = [v7 ringGroup];
  LODWORD(v19) = 1045220557;
  [v18 setEmptyOpacity_];

  v20 = [v7 ringGroup];
  v21 = *&v1[OBJC_IVAR____TtC9WorkoutUI20ARUIRingsViewWrapper_completionPercentage];
  *&v21 = v21;
  [v20 setPercentage:0 ofRingAtIndex:0 animated:v21];

  [v1 addSubview_];
  v22 = [v7 leadingAnchor];
  v23 = [v1 leadingAnchor];
  v24 = [v22 constraintEqualToAnchor_];

  [v24 setActive_];
  v25 = [v7 trailingAnchor];
  v26 = [v1 trailingAnchor];
  v27 = [v25 constraintEqualToAnchor_];

  [v27 setActive_];
  v28 = [v7 topAnchor];
  v29 = [v1 topAnchor];
  v30 = [v28 constraintEqualToAnchor_];

  [v30 setActive_];
  v31 = [v7 bottomAnchor];

  v32 = [v1 bottomAnchor];
  v33 = [v31 constraintEqualToAnchor_];

  [v33 setActive_];
  v34 = *&v1[v2];
  *&v1[v2] = v7;
}

id ARUIRingsViewWrapper.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for ARUIRingsViewWrapper();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

Swift::Void __swiftcall WorkoutCountdownRingView.prepare()()
{
  v1 = *(v0 + OBJC_IVAR____TtC9WorkoutUI24WorkoutCountdownRingView_animator);
  [v1 setCountdownView_];

  [v1 prepareToAnimate];
}

uint64_t key path getter for WorkoutCountdownRingView.onCountdownStep : WorkoutCountdownRingView@<X0>(void *a1@<X0>, uint64_t (**a2)()@<X8>)
{
  v3 = (*a1 + OBJC_IVAR____TtC9WorkoutUI24WorkoutCountdownRingView_onCountdownStep);
  swift_beginAccess();
  v4 = *v3;
  v5 = v3[1];
  if (v4)
  {
    v6 = swift_allocObject();
    *(v6 + 16) = v4;
    *(v6 + 24) = v5;
    v7 = _s9WorkoutUI0A13CountdownStepOIegn_ACytIegnr_TRTA_0;
  }

  else
  {
    v7 = 0;
    v6 = 0;
  }

  *a2 = v7;
  a2[1] = v6;
  return sub_20C69A264(v4);
}

uint64_t key path setter for WorkoutCountdownRingView.onCountdownStep : WorkoutCountdownRingView(uint64_t *a1, void *a2)
{
  v3 = *a1;
  v4 = a1[1];
  if (*a1)
  {
    v5 = swift_allocObject();
    *(v5 + 16) = v3;
    *(v5 + 24) = v4;
    v6 = _s9WorkoutUI0A13CountdownStepOytIegnr_ACIegn_TRTA_0;
  }

  else
  {
    v6 = 0;
    v5 = 0;
  }

  v7 = (*a2 + OBJC_IVAR____TtC9WorkoutUI24WorkoutCountdownRingView_onCountdownStep);
  swift_beginAccess();
  v8 = *v7;
  *v7 = v6;
  v7[1] = v5;
  sub_20C69A264(v3);
  return sub_20C69A274(v8);
}

uint64_t key path getter for WorkoutCountdownRingView.onCountdownWindUp : WorkoutCountdownRingView@<X0>(void *a1@<X0>, uint64_t (**a2)()@<X8>)
{
  v3 = (*a1 + OBJC_IVAR____TtC9WorkoutUI24WorkoutCountdownRingView_onCountdownWindUp);
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
  return sub_20C69A264(v4);
}

uint64_t key path setter for WorkoutCountdownRingView.onCountdownWindUp : WorkoutCountdownRingView(uint64_t *a1, void *a2)
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

  v7 = (*a2 + OBJC_IVAR____TtC9WorkoutUI24WorkoutCountdownRingView_onCountdownWindUp);
  swift_beginAccess();
  v8 = *v7;
  *v7 = v6;
  v7[1] = v5;
  sub_20C69A264(v3);
  return sub_20C69A274(v8);
}

uint64_t key path getter for WorkoutCountdownRingView.onCountdownFadeOut : WorkoutCountdownRingView@<X0>(void *a1@<X0>, uint64_t (**a2)()@<X8>)
{
  v3 = (*a1 + OBJC_IVAR____TtC9WorkoutUI24WorkoutCountdownRingView_onCountdownFadeOut);
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
  return sub_20C69A264(v4);
}

uint64_t key path setter for WorkoutCountdownRingView.onCountdownFadeOut : WorkoutCountdownRingView(uint64_t *a1, void *a2)
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

  v7 = (*a2 + OBJC_IVAR____TtC9WorkoutUI24WorkoutCountdownRingView_onCountdownFadeOut);
  swift_beginAccess();
  v8 = *v7;
  *v7 = v6;
  v7[1] = v5;
  sub_20C69A264(v3);
  return sub_20C69A274(v8);
}

uint64_t key path getter for WorkoutCountdownRingView.onCountdownCompleted : WorkoutCountdownRingView@<X0>(void *a1@<X0>, uint64_t (**a2)()@<X8>)
{
  v3 = (*a1 + OBJC_IVAR____TtC9WorkoutUI24WorkoutCountdownRingView_onCountdownCompleted);
  swift_beginAccess();
  v4 = *v3;
  v5 = v3[1];
  if (v4)
  {
    v6 = swift_allocObject();
    *(v6 + 16) = v4;
    *(v6 + 24) = v5;
    v7 = _sIeg_ytIegr_TRTA_4;
  }

  else
  {
    v7 = 0;
    v6 = 0;
  }

  *a2 = v7;
  a2[1] = v6;
  return sub_20C69A264(v4);
}

uint64_t key path setter for WorkoutCountdownRingView.onCountdownCompleted : WorkoutCountdownRingView(uint64_t *a1, void *a2)
{
  v3 = *a1;
  v4 = a1[1];
  if (*a1)
  {
    v5 = swift_allocObject();
    *(v5 + 16) = v3;
    *(v5 + 24) = v4;
    v6 = _sytIegr_Ieg_TRTA_4;
  }

  else
  {
    v6 = 0;
    v5 = 0;
  }

  v7 = (*a2 + OBJC_IVAR____TtC9WorkoutUI24WorkoutCountdownRingView_onCountdownCompleted);
  swift_beginAccess();
  v8 = *v7;
  *v7 = v6;
  v7[1] = v5;
  sub_20C69A264(v3);
  return sub_20C69A274(v8);
}

uint64_t WorkoutCountdownRingView.onCountdownStep.getter(void *a1, void (*a2)(void, void))
{
  v4 = (v2 + *a1);
  swift_beginAccess();
  v5 = *v4;
  a2(*v4, v4[1]);
  return v5;
}

uint64_t WorkoutCountdownRingView.onCountdownStep.setter(uint64_t a1, uint64_t a2, void *a3, uint64_t (*a4)(uint64_t, uint64_t))
{
  v8 = (v4 + *a3);
  swift_beginAccess();
  v9 = *v8;
  v10 = v8[1];
  *v8 = a1;
  v8[1] = a2;
  return a4(v9, v10);
}

char *WorkoutCountdownRingView.init(diameter:thickness:topColor:bottomColor:isOpaque:)(void *a1, void *a2, char a3, float a4, float a5)
{
  v11 = &v5[OBJC_IVAR____TtC9WorkoutUI24WorkoutCountdownRingView_onCountdownStep];
  *v11 = 0;
  *(v11 + 1) = 0;
  v12 = &v5[OBJC_IVAR____TtC9WorkoutUI24WorkoutCountdownRingView_onCountdownWindUp];
  *v12 = 0;
  *(v12 + 1) = 0;
  v13 = &v5[OBJC_IVAR____TtC9WorkoutUI24WorkoutCountdownRingView_onCountdownFadeOut];
  *v13 = 0;
  *(v13 + 1) = 0;
  v14 = &v5[OBJC_IVAR____TtC9WorkoutUI24WorkoutCountdownRingView_onCountdownCompleted];
  *v14 = 0;
  *(v14 + 1) = 0;
  v15 = OBJC_IVAR____TtC9WorkoutUI24WorkoutCountdownRingView_animator;
  v16 = [objc_allocWithZone(MEMORY[0x277CE8E68]) init];
  v17 = [objc_allocWithZone(MEMORY[0x277CE8E60]) initWithTimeline_];

  *&v5[v15] = v17;
  v18 = [objc_opt_self() countdownRingGroup];
  *&v19 = a4;
  [v18 setGroupDiameter_];
  *&v20 = a5;
  [v18 setThickness_];
  [v18 setPercentage:0 ofRingAtIndex:0 animated:0.0];
  [v18 setTopColor:a1 bottomColor:a2 ofRingAtIndex:0];
  v21 = [objc_allocWithZone(MEMORY[0x277CE8E88]) initWithRenderStyle_];
  v22 = [objc_allocWithZone(MEMORY[0x277CE8E70]) initWithRingGroup:v18 renderer:v21];
  v23 = OBJC_IVAR____TtC9WorkoutUI24WorkoutCountdownRingView_countdownView;
  *&v5[OBJC_IVAR____TtC9WorkoutUI24WorkoutCountdownRingView_countdownView] = v22;
  [v22 setOpaque_];
  [*&v5[v23] setTranslatesAutoresizingMaskIntoConstraints_];
  v56.receiver = v5;
  v56.super_class = type metadata accessor for WorkoutCountdownRingView();
  v24 = objc_msgSendSuper2(&v56, sel_initWithFrame_, 0.0, 0.0, 0.0, 0.0);
  v25 = *&v24[OBJC_IVAR____TtC9WorkoutUI24WorkoutCountdownRingView_animator];
  v26 = v24;
  [v25 setDelegate_];
  v27 = OBJC_IVAR____TtC9WorkoutUI24WorkoutCountdownRingView_countdownView;
  v28 = *&v26[OBJC_IVAR____TtC9WorkoutUI24WorkoutCountdownRingView_countdownView];
  v29 = v26;
  [v29 addSubview_];
  v53 = objc_opt_self();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd);
  v30 = swift_allocObject();
  *(v30 + 16) = xmmword_20CB8EC00;
  v31 = [*&v26[v27] leadingAnchor];
  v32 = [v29 leadingAnchor];
  v33 = [v31 constraintEqualToAnchor_];

  *(v30 + 32) = v33;
  v34 = [*&v26[v27] trailingAnchor];
  v35 = [v29 trailingAnchor];

  v36 = [v34 constraintEqualToAnchor_];
  *(v30 + 40) = v36;
  v37 = [*&v26[v27] topAnchor];
  v38 = [v29 topAnchor];

  v39 = [v37 constraintEqualToAnchor_];
  *(v30 + 48) = v39;
  v40 = [*&v26[v27] bottomAnchor];
  v41 = [v29 bottomAnchor];

  v42 = [v40 constraintEqualToAnchor_];
  *(v30 + 56) = v42;
  v43 = [v29 widthAnchor];

  v44 = [*&v26[v27] ringGroup];
  [v44 groupDiameter];
  v46 = v45;

  v47 = [v43 constraintEqualToConstant_];
  *(v30 + 64) = v47;
  v48 = [v29 heightAnchor];

  v49 = [v29 widthAnchor];
  v50 = [v48 constraintEqualToAnchor_];

  *(v30 + 72) = v50;
  type metadata accessor for NSLayoutConstraint();
  isa = Array._bridgeToObjectiveC()().super.isa;

  [v53 activateConstraints_];

  return v29;
}

id WorkoutCountdownRingView.__allocating_init(frame:)(double a1, double a2, double a3, double a4)
{
  v9 = objc_allocWithZone(v4);

  return [v9 initWithFrame_];
}

id WorkoutCountdownRingView.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for WorkoutCountdownRingView();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t WorkoutCountdownRingView.countdownAnimatorDidFinishAnimating(_:)()
{
  v1 = (v0 + OBJC_IVAR____TtC9WorkoutUI24WorkoutCountdownRingView_onCountdownCompleted);
  result = swift_beginAccess();
  v3 = *v1;
  if (*v1)
  {

    v3(v4);
    return sub_20C69A274(v3);
  }

  return result;
}

void specialized WorkoutCountdownRingView.init(coder:)()
{
  v1 = (v0 + OBJC_IVAR____TtC9WorkoutUI24WorkoutCountdownRingView_onCountdownStep);
  *v1 = 0;
  v1[1] = 0;
  v2 = (v0 + OBJC_IVAR____TtC9WorkoutUI24WorkoutCountdownRingView_onCountdownWindUp);
  *v2 = 0;
  v2[1] = 0;
  v3 = (v0 + OBJC_IVAR____TtC9WorkoutUI24WorkoutCountdownRingView_onCountdownFadeOut);
  *v3 = 0;
  v3[1] = 0;
  v4 = (v0 + OBJC_IVAR____TtC9WorkoutUI24WorkoutCountdownRingView_onCountdownCompleted);
  *v4 = 0;
  v4[1] = 0;
  v5 = OBJC_IVAR____TtC9WorkoutUI24WorkoutCountdownRingView_animator;
  v6 = [objc_allocWithZone(MEMORY[0x277CE8E68]) init];
  v7 = [objc_allocWithZone(MEMORY[0x277CE8E60]) initWithTimeline_];

  *(v0 + v5) = v7;
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

uint64_t specialized WorkoutCountdownRingView.countdownAnimator(_:performing:withDuration:)(void *a1)
{
  v2 = v1;
  v4 = type metadata accessor for Logger();
  v52 = *(v4 - 8);
  v5 = MEMORY[0x28223BE20](v4);
  v7 = v53 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0) + 40;
  v8 = [a1 identifier];
  v9 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v11 = v10;

  v12 = objc_opt_self();
  v13 = [v12 windUpIdentifier];
  v14 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v16 = v15;

  if (v9 == v14 && v11 == v16)
  {
  }

  else
  {
    v18 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if ((v18 & 1) == 0)
    {
      goto LABEL_10;
    }
  }

  v19 = &v2[OBJC_IVAR____TtC9WorkoutUI24WorkoutCountdownRingView_onCountdownWindUp];
  swift_beginAccess();
  v20 = *v19;
  if (*v19)
  {

    v20(v21);
    sub_20C69A274(v20);
  }

LABEL_10:
  v22 = [a1 identifier];
  v23 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v25 = v24;

  v26 = [v12 countdownIdentifier];
  v27 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v29 = v28;

  if (v23 == v27 && v25 == v29)
  {
  }

  else
  {
    v30 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if ((v30 & 1) == 0)
    {
      goto LABEL_19;
    }
  }

  if ([a1 respondsToSelector_])
  {
    v31 = [a1 countdownStep];
    v32 = v31 - 1;
    if ((v31 - 1) > 2)
    {
      static WOLog.default.getter();
      v49 = Logger.logObject.getter();
      v50 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v49, v50))
      {
        v51 = swift_slowAlloc();
        *v51 = 0;
        _os_log_impl(&dword_20C66F000, v49, v50, "Invalid Workout Countdown Step", v51, 2u);
        MEMORY[0x20F30E080](v51, -1, -1);
      }

      return (*(v52 + 8))(v7, v4);
    }

    v33 = v31;
    v34 = &v2[OBJC_IVAR____TtC9WorkoutUI24WorkoutCountdownRingView_onCountdownStep];
    swift_beginAccess();
    v35 = *v34;
    if (*v34)
    {
      v53[0] = v32;

      v35(v53);
      sub_20C69A274(v35);
    }

    [v2 accessibilityUpdateCountdownToStep_];
  }

LABEL_19:
  v36 = [a1 identifier];
  v37 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v39 = v38;

  v40 = [v12 fadeOutIdentifier];
  v41 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v43 = v42;

  if (v37 == v41 && v39 == v43)
  {
  }

  else
  {
    v44 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if ((v44 & 1) == 0)
    {
      return result;
    }
  }

  v46 = &v2[OBJC_IVAR____TtC9WorkoutUI24WorkoutCountdownRingView_onCountdownFadeOut];
  result = swift_beginAccess();
  v47 = *v46;
  if (*v46)
  {

    v47(v48);
    return sub_20C69A274(v47);
  }

  return result;
}

uint64_t type metadata accessor for DistanceRemainingMetricView()
{
  result = type metadata singleton initialization cache for DistanceRemainingMetricView;
  if (!type metadata singleton initialization cache for DistanceRemainingMetricView)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void type metadata completion function for DistanceRemainingMetricView()
{
  _sSo6HKUnitCMaTm_0(319, &lazy cache variable for type metadata for HKUnit);
  if (v0 <= 0x3F)
  {
    type metadata accessor for StepType();
    if (v1 <= 0x3F)
    {
      _sSo6HKUnitCMaTm_0(319, &lazy cache variable for type metadata for FIUIFormattingManager);
      if (v2 <= 0x3F)
      {
        type metadata accessor for FIUIDistanceType(319);
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

uint64_t _sSo6HKUnitCMaTm_0(uint64_t a1, unint64_t *a2)
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

id DistanceRemainingMetricView.distanceString.getter()
{
  v1 = type metadata accessor for DistanceRemainingMetricView();
  v2 = *(v0 + *(v1 + 32));
  v3 = *(v0 + *(v1 + 28));
  v4 = *v0;
  v5 = *(v0 + 1);
  v6 = MEMORY[0x20F30D2C0](v5);
  if (v2 == 3)
  {
    result = [v3 localizedStringWithDistanceInMeters:3 distanceType:v6 distanceUnit:0 unitStyle:6 roundingMode:v4];
    if (result)
    {
LABEL_5:
      v9 = result;
      v10 = static String._unconditionallyBridgeFromObjectiveC(_:)();

      return v10;
    }

    __break(1u);
  }

  v8 = objc_opt_self();
  result = [v3 localizedStringWithDistanceInMeters:v6 distanceUnit:0 unitStyle:objc_msgSend(v8 decimalPrecision:sel_defaultPrecisionForDistanceUnit_ roundingMode:MEMORY[0x20F30D2C0](v5)) decimalTrimmingMode:{6, 1, v4}];
  if (result)
  {
    goto LABEL_5;
  }

  __break(1u);
  return result;
}

id DistanceRemainingMetricView.stepDescription.getter()
{
  v1 = *(v0 + *(type metadata accessor for DistanceRemainingMetricView() + 28));
  v2 = [objc_opt_self() meterUnit];
  v3 = [objc_opt_self() quantityWithUnit:v2 doubleValue:*v0];

  v4 = *(v0 + 8);
  [v3 doubleValueForUnit_];
  v6 = v5;

  v7 = MEMORY[0x20F30D2C0](v4);
  v8 = static Platform.current.getter();
  if (one-time initialization token for useLongUnitString != -1)
  {
    swift_once();
  }

  if (static DistanceRemainingMetricAppearance.useLongUnitString == 1)
  {
    result = [v1 localizedLongUnitStringForDistanceUnit:v7 distanceInUnit:v6];
    if (result)
    {
      goto LABEL_7;
    }

    __break(1u);
  }

  result = [v1 localizedShortUnitStringForDistanceUnit_];
  if (!result)
  {
    __break(1u);
    return result;
  }

LABEL_7:
  v10 = result;
  v11 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v13 = v12;

  v14 = specialized static Localization.remainingDistanceLocalizationKey(unit:platform:)(v7, v8 & 1);
  v16 = v15;
  if (one-time initialization token for WorkoutUIBundle != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v17 = WorkoutUIBundle.super.isa;
  v25._object = 0xE000000000000000;
  v18.value._countAndFlagsBits = 0x617A696C61636F4CLL;
  v18.value._object = 0xEB00000000656C62;
  v19._countAndFlagsBits = v14;
  v19._object = v16;
  v20._countAndFlagsBits = 0;
  v20._object = 0xE000000000000000;
  v25._countAndFlagsBits = 0;
  NSLocalizedString(_:tableName:bundle:value:comment:)(v19, v18, v17, v20, v25);

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys7CVarArg_pGMd);
  v21 = swift_allocObject();
  *(v21 + 16) = xmmword_20CB5DA80;
  *(v21 + 56) = MEMORY[0x277D837D0];
  *(v21 + 64) = lazy protocol witness table accessor for type String and conformance String();
  v22 = MEMORY[0x277D839F8];
  *(v21 + 32) = v11;
  *(v21 + 40) = v13;
  v23 = MEMORY[0x277D83A80];
  *(v21 + 96) = v22;
  *(v21 + 104) = v23;
  *(v21 + 72) = v6;
  v24 = static String.localizedStringWithFormat(_:_:)();

  return v24;
}

__n128 DistanceRemainingMetricView.body.getter@<Q0>(uint64_t a1@<X8>)
{
  v12 = [objc_opt_self() distanceColors];
  if (!v12)
  {
    __break(1u);
    goto LABEL_8;
  }

  v2 = v12;
  v3 = [v12 nonGradientTextColor];

  if (!v3)
  {
LABEL_8:
    __break(1u);
    static os_log_type_t.fault.getter();
    v21 = static Log.runtimeIssuesLog.getter();
    os_log(_:dso:log:_:_:)();

    goto LABEL_6;
  }

  v2 = Color.init(uiColor:)();
  v3 = DistanceRemainingMetricView.distanceString.getter();
  v4 = v13;
  v1 = DistanceRemainingMetricView.stepDescription.getter();
  v5 = v14;
  v6 = static Edge.Set.leading.getter();
  MetricPlatterConstants.init()(v23);
  EdgeInsets.init(_all:)();
  v7 = v15;
  v8 = v16;
  v9 = v17;
  v10 = v18;
  if (one-time initialization token for stepViewMaxHeight != -1)
  {
    swift_once();
  }

  static Alignment.leading.getter();
LABEL_6:
  _FlexFrameLayout.init(minWidth:idealWidth:maxWidth:minHeight:idealHeight:maxHeight:alignment:)();
  *&v22[55] = v23[3];
  *&v22[71] = v23[4];
  *&v22[87] = v23[5];
  *&v22[103] = v23[6];
  *&v22[7] = v23[0];
  *&v22[23] = v23[1];
  *&v22[39] = v23[2];
  KeyPath = swift_getKeyPath();
  *a1 = v3;
  *(a1 + 8) = v4;
  *(a1 + 16) = 0;
  *(a1 + 24) = 0;
  *(a1 + 32) = v1;
  *(a1 + 40) = v5;
  *(a1 + 48) = 0;
  *(a1 + 56) = 0;
  *(a1 + 64) = 0;
  *(a1 + 72) = v6;
  *(a1 + 80) = v7;
  *(a1 + 88) = v8;
  *(a1 + 96) = v9;
  *(a1 + 104) = v10;
  *(a1 + 112) = 0;
  *(a1 + 161) = *&v22[48];
  *(a1 + 145) = *&v22[32];
  *(a1 + 129) = *&v22[16];
  *(a1 + 113) = *v22;
  result = *&v22[64];
  *(a1 + 224) = *&v22[111];
  *(a1 + 232) = KeyPath;
  *(a1 + 209) = *&v22[96];
  *(a1 + 193) = *&v22[80];
  *(a1 + 177) = *&v22[64];
  *(a1 + 240) = v2;
  return result;
}