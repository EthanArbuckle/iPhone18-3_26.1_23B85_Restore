uint64_t getEnumTagSinglePayload for LowPowerInSessionOverlay(uint64_t a1, int a2)
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

uint64_t storeEnumTagSinglePayload for LowPowerInSessionOverlay(uint64_t result, int a2, int a3)
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

uint64_t LowPowerInSessionOverlay.body.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v42 = a1;
  v57 = a4;
  v49 = type metadata accessor for LocalCoordinateSpace();
  MEMORY[0x28223BE20](v49);
  v46 = &v40 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v51 = type metadata accessor for DragGesture();
  v53 = *(v51 - 8);
  MEMORY[0x28223BE20](v51);
  v45 = &v40 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15_ChangedGestureVyAA04DragD0VGMd);
  v10 = *(v9 - 8);
  v55 = v9;
  v56 = v10;
  MEMORY[0x28223BE20](v9);
  v48 = &v40 - v11;
  v59 = type metadata accessor for PlainButtonStyle();
  v12 = *(v59 - 8);
  MEMORY[0x28223BE20](v59);
  v14 = &v40 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v58 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI6ButtonVyAA15ModifiedContentVyAEyAEyAA9RectangleVAA16_FlexFrameLayoutVGAA24_ForegroundStyleModifierVyAA5ColorVGGAA01_e5ShapeL0VyAGGGGMd);
  v15 = *(v58 - 8);
  MEMORY[0x28223BE20](v58);
  v17 = &v40 - v16;
  v47 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI4ViewPAAE11buttonStyleyQrqd__AA015PrimitiveButtonE0Rd__lFQOyAA0G0VyAA15ModifiedContentVyAIyAIyAA9RectangleVAA16_FlexFrameLayoutVGAA011_ForegroundE8ModifierVyAA5ColorVGGAA01_i5ShapeO0VyAKGGG_AA05PlaingE0VQo_Md);
  v50 = *(v47 - 8);
  MEMORY[0x28223BE20](v47);
  v43 = &v40 - v18;
  v52 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI4ViewPAAE19simultaneousGesture_9includingQrqd___AA0E4MaskVtAA0E0Rd__lFQOyAcAE11buttonStyleyQrqd__AA015PrimitiveButtonI0Rd__lFQOyAA0K0VyAA15ModifiedContentVyANyANyAA9RectangleVAA16_FlexFrameLayoutVGAA011_ForegroundI8ModifierVyAA5ColorVGGAA01_m5ShapeS0VyAPGGG_AA05PlainkI0VQo__AA08_ChangedE0VyAA04DragE0VGQo_Md);
  v54 = *(v52 - 8);
  MEMORY[0x28223BE20](v52);
  v44 = &v40 - v19;
  v20 = swift_allocObject();
  v20[2] = a1;
  v20[3] = a2;
  v21 = a3;
  v20[4] = a3;

  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyACyACyAA9RectangleVAA16_FlexFrameLayoutVGAA24_ForegroundStyleModifierVyAA5ColorVGGAA01_d5ShapeK0VyAEGGMd);
  lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<ModifiedContent<Rectangle, _FlexFrameLayout>, _ForegroundStyleModifier<Color>>, _ContentShapeModifier<Rectangle>> and conformance <> ModifiedContent<A, B>();
  Button.init(action:label:)();
  PlainButtonStyle.init()();
  v22 = _s7SwiftUI24_ForegroundStyleModifierVyAA5ColorVGACyxGAA04ViewE0AAWlTm_1(&lazy protocol witness table cache variable for type Button<ModifiedContent<ModifiedContent<ModifiedContent<Rectangle, _FlexFrameLayout>, _ForegroundStyleModifier<Color>>, _ContentShapeModifier<Rectangle>>> and conformance Button<A>, &_s7SwiftUI6ButtonVyAA15ModifiedContentVyAEyAEyAA9RectangleVAA16_FlexFrameLayoutVGAA24_ForegroundStyleModifierVyAA5ColorVGGAA01_e5ShapeL0VyAGGGGMd);
  v23 = _s7SwiftUI16PlainButtonStyleVAcA09PrimitivedE0AAWlTm_0(&lazy protocol witness table cache variable for type PlainButtonStyle and conformance PlainButtonStyle, MEMORY[0x277CDDB18]);
  v24 = v58;
  v25 = v59;
  View.buttonStyle<A>(_:)();
  (*(v12 + 8))(v14, v25);
  (*(v15 + 8))(v17, v24);
  static CoordinateSpaceProtocol<>.local.getter();
  v26 = v45;
  DragGesture.init<A>(minimumDistance:coordinateSpace:)();
  v27 = swift_allocObject();
  v28 = v42;
  v27[2] = v42;
  v27[3] = a2;
  v41 = v21;
  v27[4] = v21;
  _s7SwiftUI16PlainButtonStyleVAcA09PrimitivedE0AAWlTm_0(&lazy protocol witness table cache variable for type DragGesture and conformance DragGesture, MEMORY[0x277CDD730]);
  _s7SwiftUI16PlainButtonStyleVAcA09PrimitivedE0AAWlTm_0(&lazy protocol witness table cache variable for type DragGesture.Value and conformance DragGesture.Value, MEMORY[0x277CDD708]);

  v29 = v48;
  v30 = v51;
  Gesture<>.onChanged(_:)();

  (*(v53 + 8))(v26, v30);
  static GestureMask.all.getter();
  v61 = v58;
  v62 = v59;
  v63 = v22;
  v64 = v23;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v32 = _s7SwiftUI24_ForegroundStyleModifierVyAA5ColorVGACyxGAA04ViewE0AAWlTm_1(&lazy protocol witness table cache variable for type _ChangedGesture<DragGesture> and conformance _ChangedGesture<A>, &_s7SwiftUI15_ChangedGestureVyAA04DragD0VGMd);
  v33 = v44;
  v34 = v47;
  v35 = v55;
  v36 = v43;
  View.simultaneousGesture<A>(_:including:)();
  (*(v56 + 8))(v29, v35);
  (*(v50 + 8))(v36, v34);
  v60 = dispatch thunk of LowPowerModeMonitor.lowPowerModeEnabled.getter() & 1;
  v37 = swift_allocObject();
  v37[2] = v28;
  v37[3] = a2;
  v37[4] = v41;

  v61 = v34;
  v62 = v35;
  v63 = OpaqueTypeConformance2;
  v64 = v32;
  swift_getOpaqueTypeConformance2();
  v38 = v52;
  View.onChange<A>(of:initial:_:)();

  return (*(v54 + 8))(v33, v38);
}

__n128 closure #2 in LowPowerInSessionOverlay.body.getter@<Q0>(uint64_t a1@<X8>)
{
  static Alignment.center.getter();
  _FlexFrameLayout.init(minWidth:idealWidth:maxWidth:minHeight:idealHeight:maxHeight:alignment:)();
  v2 = static Color.clear.getter();
  *(a1 + 64) = v8;
  *(a1 + 80) = v9;
  *(a1 + 96) = v10;
  *a1 = v4;
  *(a1 + 16) = v5;
  result = v7;
  *(a1 + 32) = v6;
  *(a1 + 48) = v7;
  *(a1 + 112) = v2;
  *(a1 + 120) = 0;
  return result;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<ModifiedContent<Rectangle, _FlexFrameLayout>, _ForegroundStyleModifier<Color>>, _ContentShapeModifier<Rectangle>> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<Rectangle, _FlexFrameLayout>, _ForegroundStyleModifier<Color>>, _ContentShapeModifier<Rectangle>> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<Rectangle, _FlexFrameLayout>, _ForegroundStyleModifier<Color>>, _ContentShapeModifier<Rectangle>> and conformance <> ModifiedContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyACyACyAA9RectangleVAA16_FlexFrameLayoutVGAA24_ForegroundStyleModifierVyAA5ColorVGGAA01_d5ShapeK0VyAEGGMd);
    lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<Rectangle, _FlexFrameLayout>, _ForegroundStyleModifier<Color>> and conformance <> ModifiedContent<A, B>();
    _s7SwiftUI24_ForegroundStyleModifierVyAA5ColorVGACyxGAA04ViewE0AAWlTm_1(&lazy protocol witness table cache variable for type _ContentShapeModifier<Rectangle> and conformance _ContentShapeModifier<A>, &_s7SwiftUI21_ContentShapeModifierVyAA9RectangleVGMd);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<Rectangle, _FlexFrameLayout>, _ForegroundStyleModifier<Color>>, _ContentShapeModifier<Rectangle>> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<Rectangle, _FlexFrameLayout>, _ForegroundStyleModifier<Color>> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<Rectangle, _FlexFrameLayout>, _ForegroundStyleModifier<Color>> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<Rectangle, _FlexFrameLayout>, _ForegroundStyleModifier<Color>> and conformance <> ModifiedContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyACyAA9RectangleVAA16_FlexFrameLayoutVGAA24_ForegroundStyleModifierVyAA5ColorVGGMd);
    lazy protocol witness table accessor for type ModifiedContent<Rectangle, _FlexFrameLayout> and conformance <> ModifiedContent<A, B>();
    _s7SwiftUI24_ForegroundStyleModifierVyAA5ColorVGACyxGAA04ViewE0AAWlTm_1(&lazy protocol witness table cache variable for type _ForegroundStyleModifier<Color> and conformance _ForegroundStyleModifier<A>, &_s7SwiftUI24_ForegroundStyleModifierVyAA5ColorVGMd);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<Rectangle, _FlexFrameLayout>, _ForegroundStyleModifier<Color>> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<Rectangle, _FlexFrameLayout> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<Rectangle, _FlexFrameLayout> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<Rectangle, _FlexFrameLayout> and conformance <> ModifiedContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyAA9RectangleVAA16_FlexFrameLayoutVGMd);
    lazy protocol witness table accessor for type Rectangle and conformance Rectangle();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<Rectangle, _FlexFrameLayout> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

uint64_t _s7SwiftUI16PlainButtonStyleVAcA09PrimitivedE0AAWlTm_0(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t _s7SwiftUI24_ForegroundStyleModifierVyAA5ColorVGACyxGAA04ViewE0AAWlTm_1(unint64_t *a1, uint64_t *a2)
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

uint64_t objectdestroyTm_34()
{

  return swift_deallocObject();
}

int *LocationDisambiguation.init(workoutConfiguration:intent:onDisambiguationComplete:)@<X0>(uint64_t a1@<X0>, char *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t *a5@<X8>)
{
  v9 = *a2;
  *a5 = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI11EnvironmentV7ContentOyAA13DismissActionV_GMd);
  swift_storeEnumTagMultiPayload();
  result = type metadata accessor for LocationDisambiguation();
  v11 = result[6];
  *(a5 + v11) = 0;
  v12 = (a5 + result[7]);
  *(a5 + result[5]) = a1;
  *(a5 + v11) = v9;
  *v12 = a3;
  v12[1] = a4;
  return result;
}

uint64_t LocationDisambiguation.dismiss.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = type metadata accessor for EnvironmentValues();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI11EnvironmentV7ContentOyAA13DismissActionV_GMd);
  MEMORY[0x28223BE20](v8);
  v10 = &v14 - v9;
  _s7SwiftUI11EnvironmentV7ContentOyAA13DismissActionV_GWOcTm_0(v2, &v14 - v9, &_s7SwiftUI11EnvironmentV7ContentOyAA13DismissActionV_GMd);
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

Swift::Int LocationDisambiguation.Intent.hashValue.getter()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  MEMORY[0x20F30CD90](v1);
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance LocationDisambiguation.Intent()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  MEMORY[0x20F30CD90](v1);
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance LocationDisambiguation.Intent()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  MEMORY[0x20F30CD90](v1);
  return Hasher._finalize()();
}

uint64_t LocationDisambiguation.body.getter()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI4ViewPAAE7toolbar7contentQrqd__yXE_tAA14ToolbarContentRd__lFQOyAcAE20scrollBounceBehavior_4axesQrAA06ScrolliJ0V_AA4AxisO3SetVtFQOyAcAE07defaultL6Anchor_3forQrAA9UnitPointVSg_AA0lP4RoleVtFQOyAA0lC0VyAA08ModifiedG0VyAYyAYyAcAE11buttonStyleyQrqd__AA015PrimitiveButtonW0Rd__lFQOyAA6VStackVyAA05TupleC0VyAA7SectionVyAA012_ConditionalG0VyAA05EmptyC0VAYyAYyAYyAA4TextVAA30_EnvironmentKeyWritingModifierVyAA13TextAlignmentOGGAA16_FlexFrameLayoutVGAA14_PaddingLayoutVGGA3_yAA0Y0VyAYyA23_A13_yAA5ColorVSgGGG_A32_tGA9_GSg_A35_tGG_AA08BorderedyW0VQo_A13_yAA0Y11BorderShapeVGGA30_GA22_GG_Qo__Qo__AA0fG7BuilderV10buildBlockyQrxAaFRzlFZQOy_AA0F4ItemVyytA26_yAA07DefaultY5LabelVGGQo_Qo_Md);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI4ViewPAAE20scrollBounceBehavior_4axesQrAA06ScrolleF0V_AA4AxisO3SetVtFQOyAcAE07defaultH6Anchor_3forQrAA9UnitPointVSg_AA0hL4RoleVtFQOyAA0hC0VyAA15ModifiedContentVyAVyAVyAcAE11buttonStyleyQrqd__AA015PrimitiveButtonT0Rd__lFQOyAA6VStackVyAA05TupleC0VyAA7SectionVyAA012_ConditionalR0VyAA05EmptyC0VAVyAVyAVyAA4TextVAA30_EnvironmentKeyWritingModifierVyAA13TextAlignmentOGGAA16_FlexFrameLayoutVGAA14_PaddingLayoutVGGA0_yAA0V0VyAVyA20_A10_yAA5ColorVSgGGG_A29_tGA6_GSg_A32_tGG_AA08BorderedvT0VQo_A10_yAA0V11BorderShapeVGGA27_GA19_GG_Qo__Qo_Md);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI21ToolbarContentBuilderV10buildBlockyQrxAA0cD0RzlFZQOy_AA0C4ItemVyytAA6ButtonVyAA07DefaultI5LabelVGGQo_Md);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI4ViewPAAE19defaultScrollAnchor_3forQrAA9UnitPointVSg_AA0eF4RoleVtFQOyAA0eC0VyAA15ModifiedContentVyANyANyAcAE11buttonStyleyQrqd__AA015PrimitiveButtonN0Rd__lFQOyAA6VStackVyAA05TupleC0VyAA7SectionVyAA012_ConditionalL0VyAA05EmptyC0VANyANyANyAA4TextVAA30_EnvironmentKeyWritingModifierVyAA0V9AlignmentOGGAA16_FlexFrameLayoutVGAA14_PaddingLayoutVGGATyAA0P0VyANyA12_A2_yAA5ColorVSgGGG_A21_tGAZGSg_A24_tGG_AA08BorderedpN0VQo_A2_yAA0P11BorderShapeVGGA19_GA11_GG_Qo_Md);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI10ScrollViewVyAA15ModifiedContentVyAEyAEyAA0D0PAAE11buttonStyleyQrqd__AA015PrimitiveButtonH0Rd__lFQOyAA6VStackVyAA05TupleD0VyAA7SectionVyAA012_ConditionalF0VyAA05EmptyD0VAEyAEyAEyAA4TextVAA30_EnvironmentKeyWritingModifierVyAA0P9AlignmentOGGAA16_FlexFrameLayoutVGAA08_PaddingX0VGGAMyAA0J0VyAEyA5_AWyAA5ColorVSgGGG_A14_tGASGSg_A17_tGG_AA08BorderedjH0VQo_AWyAA0J11BorderShapeVGGA12_GA4_GGMd);
  lazy protocol witness table accessor for type ScrollView<ModifiedContent<ModifiedContent<ModifiedContent<<<opaque return type of View.buttonStyle<A>(_:)>>.0, _EnvironmentKeyWritingModifier<ButtonBorderShape>>, _EnvironmentKeyWritingModifier<Color?>>, _PaddingLayout>> and conformance ScrollView<A>(&lazy protocol witness table cache variable for type ScrollView<ModifiedContent<ModifiedContent<ModifiedContent<<<opaque return type of View.buttonStyle<A>(_:)>>.0, _EnvironmentKeyWritingModifier<ButtonBorderShape>>, _EnvironmentKeyWritingModifier<Color?>>, _PaddingLayout>> and conformance ScrollView<A>, &_s7SwiftUI10ScrollViewVyAA15ModifiedContentVyAEyAEyAA0D0PAAE11buttonStyleyQrqd__AA015PrimitiveButtonH0Rd__lFQOyAA6VStackVyAA05TupleD0VyAA7SectionVyAA012_ConditionalF0VyAA05EmptyD0VAEyAEyAEyAA4TextVAA30_EnvironmentKeyWritingModifierVyAA0P9AlignmentOGGAA16_FlexFrameLayoutVGAA08_PaddingX0VGGAMyAA0J0VyAEyA5_AWyAA5ColorVSgGGG_A14_tGASGSg_A17_tGG_AA08BorderedjH0VQo_AWyAA0J11BorderShapeVGGA12_GA4_GGMd);
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeConformance2();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI11ToolbarItemVyytAA6ButtonVyAA07DefaultE5LabelVGGMd);
  lazy protocol witness table accessor for type ScrollView<ModifiedContent<ModifiedContent<ModifiedContent<<<opaque return type of View.buttonStyle<A>(_:)>>.0, _EnvironmentKeyWritingModifier<ButtonBorderShape>>, _EnvironmentKeyWritingModifier<Color?>>, _PaddingLayout>> and conformance ScrollView<A>(&lazy protocol witness table cache variable for type ToolbarItem<(), Button<DefaultButtonLabel>> and conformance ToolbarItem<A, B>, &_s7SwiftUI11ToolbarItemVyytAA6ButtonVyAA07DefaultE5LabelVGGMd);
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeConformance2();
  return NavigationStack.init<>(root:)();
}

uint64_t closure #1 in LocationDisambiguation.body.getter@<X0>(char *a1@<X0>, uint64_t a2@<X8>)
{
  v36 = a2;
  v3 = type metadata accessor for ScrollBounceBehavior();
  v33 = *(v3 - 8);
  v34 = v3;
  MEMORY[0x28223BE20](v3);
  v27 = &v27 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = type metadata accessor for ScrollAnchorRole();
  v5 = *(v28 - 8);
  MEMORY[0x28223BE20](v28);
  v7 = &v27 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI10ScrollViewVyAA15ModifiedContentVyAEyAEyAA0D0PAAE11buttonStyleyQrqd__AA015PrimitiveButtonH0Rd__lFQOyAA6VStackVyAA05TupleD0VyAA7SectionVyAA012_ConditionalF0VyAA05EmptyD0VAEyAEyAEyAA4TextVAA30_EnvironmentKeyWritingModifierVyAA0P9AlignmentOGGAA16_FlexFrameLayoutVGAA08_PaddingX0VGGAMyAA0J0VyAEyA5_AWyAA5ColorVSgGGG_A14_tGASGSg_A17_tGG_AA08BorderedjH0VQo_AWyAA0J11BorderShapeVGGA12_GA4_GGMd);
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v27 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI4ViewPAAE19defaultScrollAnchor_3forQrAA9UnitPointVSg_AA0eF4RoleVtFQOyAA0eC0VyAA15ModifiedContentVyANyANyAcAE11buttonStyleyQrqd__AA015PrimitiveButtonN0Rd__lFQOyAA6VStackVyAA05TupleC0VyAA7SectionVyAA012_ConditionalL0VyAA05EmptyC0VANyANyANyAA4TextVAA30_EnvironmentKeyWritingModifierVyAA0V9AlignmentOGGAA16_FlexFrameLayoutVGAA14_PaddingLayoutVGGATyAA0P0VyANyA12_A2_yAA5ColorVSgGGG_A21_tGAZGSg_A24_tGG_AA08BorderedpN0VQo_A2_yAA0P11BorderShapeVGGA19_GA11_GG_Qo_Md);
  v29 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v14 = &v27 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI4ViewPAAE20scrollBounceBehavior_4axesQrAA06ScrolleF0V_AA4AxisO3SetVtFQOyAcAE07defaultH6Anchor_3forQrAA9UnitPointVSg_AA0hL4RoleVtFQOyAA0hC0VyAA15ModifiedContentVyAVyAVyAcAE11buttonStyleyQrqd__AA015PrimitiveButtonT0Rd__lFQOyAA6VStackVyAA05TupleC0VyAA7SectionVyAA012_ConditionalR0VyAA05EmptyC0VAVyAVyAVyAA4TextVAA30_EnvironmentKeyWritingModifierVyAA13TextAlignmentOGGAA16_FlexFrameLayoutVGAA14_PaddingLayoutVGGA0_yAA0V0VyAVyA20_A10_yAA5ColorVSgGGG_A29_tGA6_GSg_A32_tGG_AA08BorderedvT0VQo_A10_yAA0V11BorderShapeVGGA27_GA19_GG_Qo__Qo_Md);
  v31 = *(v15 - 8);
  v32 = v15;
  MEMORY[0x28223BE20](v15);
  v30 = &v27 - v16;
  static Axis.Set.vertical.getter();
  v35 = a1;
  v37 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyACyACyAA4ViewPAAE11buttonStyleyQrqd__AA015PrimitiveButtonG0Rd__lFQOyAA6VStackVyAA05TupleE0VyAA7SectionVyAA012_ConditionalD0VyAA05EmptyE0VACyACyACyAA4TextVAA30_EnvironmentKeyWritingModifierVyAA0O9AlignmentOGGAA16_FlexFrameLayoutVGAA08_PaddingW0VGGAKyAA0I0VyACyA3_AUyAA5ColorVSgGGG_A12_tGAQGSg_A15_tGG_AA08BorderediG0VQo_AUyAA0I11BorderShapeVGGA10_GA2_GMd);
  lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<ModifiedContent<<<opaque return type of View.buttonStyle<A>(_:)>>.0, _EnvironmentKeyWritingModifier<ButtonBorderShape>>, _EnvironmentKeyWritingModifier<Color?>>, _PaddingLayout> and conformance <> ModifiedContent<A, B>();
  ScrollView.init(_:showsIndicators:content:)();
  static UnitPoint.center.getter();
  static ScrollAnchorRole.alignment.getter();
  v17 = lazy protocol witness table accessor for type ScrollView<ModifiedContent<ModifiedContent<ModifiedContent<<<opaque return type of View.buttonStyle<A>(_:)>>.0, _EnvironmentKeyWritingModifier<ButtonBorderShape>>, _EnvironmentKeyWritingModifier<Color?>>, _PaddingLayout>> and conformance ScrollView<A>(&lazy protocol witness table cache variable for type ScrollView<ModifiedContent<ModifiedContent<ModifiedContent<<<opaque return type of View.buttonStyle<A>(_:)>>.0, _EnvironmentKeyWritingModifier<ButtonBorderShape>>, _EnvironmentKeyWritingModifier<Color?>>, _PaddingLayout>> and conformance ScrollView<A>, &_s7SwiftUI10ScrollViewVyAA15ModifiedContentVyAEyAEyAA0D0PAAE11buttonStyleyQrqd__AA015PrimitiveButtonH0Rd__lFQOyAA6VStackVyAA05TupleD0VyAA7SectionVyAA012_ConditionalF0VyAA05EmptyD0VAEyAEyAEyAA4TextVAA30_EnvironmentKeyWritingModifierVyAA0P9AlignmentOGGAA16_FlexFrameLayoutVGAA08_PaddingX0VGGAMyAA0J0VyAEyA5_AWyAA5ColorVSgGGG_A14_tGASGSg_A17_tGG_AA08BorderedjH0VQo_AWyAA0J11BorderShapeVGGA12_GA4_GGMd);
  v18 = v27;
  View.defaultScrollAnchor(_:for:)();
  (*(v5 + 8))(v7, v28);
  v19 = (*(v9 + 8))(v11, v8);
  MEMORY[0x20F3097F0](v19);
  LOBYTE(v11) = static Axis.Set.vertical.getter();
  Axis.Set.init(rawValue:)();
  Axis.Set.init(rawValue:)();
  if (Axis.Set.init(rawValue:)() != v11)
  {
    Axis.Set.init(rawValue:)();
  }

  v38 = v8;
  v39 = v17;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v21 = v30;
  View.scrollBounceBehavior(_:axes:)();
  (*(v33 + 8))(v18, v34);
  v22 = (*(v29 + 8))(v14, v12);
  MEMORY[0x28223BE20](v22);
  *(&v27 - 2) = v35;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI21ToolbarContentBuilderV10buildBlockyQrxAA0cD0RzlFZQOy_AA0C4ItemVyytAA6ButtonVyAA07DefaultI5LabelVGGQo_Md);
  v38 = v12;
  v39 = OpaqueTypeConformance2;
  swift_getOpaqueTypeConformance2();
  v23 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI11ToolbarItemVyytAA6ButtonVyAA07DefaultE5LabelVGGMd);
  v24 = lazy protocol witness table accessor for type ScrollView<ModifiedContent<ModifiedContent<ModifiedContent<<<opaque return type of View.buttonStyle<A>(_:)>>.0, _EnvironmentKeyWritingModifier<ButtonBorderShape>>, _EnvironmentKeyWritingModifier<Color?>>, _PaddingLayout>> and conformance ScrollView<A>(&lazy protocol witness table cache variable for type ToolbarItem<(), Button<DefaultButtonLabel>> and conformance ToolbarItem<A, B>, &_s7SwiftUI11ToolbarItemVyytAA6ButtonVyAA07DefaultE5LabelVGGMd);
  v38 = v23;
  v39 = v24;
  swift_getOpaqueTypeConformance2();
  v25 = v32;
  View.toolbar<A>(content:)();
  return (*(v31 + 8))(v21, v25);
}

uint64_t closure #1 in closure #1 in LocationDisambiguation.body.getter(uint64_t a1)
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
  lazy protocol witness table accessor for type ScrollView<ModifiedContent<ModifiedContent<ModifiedContent<<<opaque return type of View.buttonStyle<A>(_:)>>.0, _EnvironmentKeyWritingModifier<ButtonBorderShape>>, _EnvironmentKeyWritingModifier<Color?>>, _PaddingLayout>> and conformance ScrollView<A>(&lazy protocol witness table cache variable for type Button<DefaultButtonLabel> and conformance Button<A>, &_s7SwiftUI6ButtonVyAA07DefaultC5LabelVGMd);
  ToolbarItem<>.init(placement:content:)();
  v7 = lazy protocol witness table accessor for type ScrollView<ModifiedContent<ModifiedContent<ModifiedContent<<<opaque return type of View.buttonStyle<A>(_:)>>.0, _EnvironmentKeyWritingModifier<ButtonBorderShape>>, _EnvironmentKeyWritingModifier<Color?>>, _PaddingLayout>> and conformance ScrollView<A>(&lazy protocol witness table cache variable for type ToolbarItem<(), Button<DefaultButtonLabel>> and conformance ToolbarItem<A, B>, &_s7SwiftUI11ToolbarItemVyytAA6ButtonVyAA07DefaultE5LabelVGGMd);
  MEMORY[0x20F3098F0](v6, v3, v7);
  return (*(v4 + 8))(v6, v3);
}

uint64_t closure #1 in closure #1 in closure #1 in LocationDisambiguation.body.getter(uint64_t a1)
{
  v2 = type metadata accessor for LocationDisambiguation();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = type metadata accessor for ButtonRole();
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v11 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  static ButtonRole.close.getter();
  outlined init with copy of LocationDisambiguation(a1, &v11 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v8 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v9 = swift_allocObject();
  outlined init with take of LocationDisambiguation(&v11 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), v9 + v8);
  return MEMORY[0x20F30AF90](v7, partial apply for closure #1 in closure #1 in closure #1 in closure #1 in LocationDisambiguation.body.getter, v9);
}

uint64_t closure #1 in closure #1 in closure #1 in closure #1 in LocationDisambiguation.body.getter(uint64_t a1)
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
  _s7SwiftUI11EnvironmentV7ContentOyAA13DismissActionV_GWOcTm_0(a1, v7, &_s7SwiftUI11EnvironmentV7ContentOyAA13DismissActionV_GMd);
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

uint64_t LocationDisambiguation.makeLocationDisambiguationContents()@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v41 = a1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI7SectionVyAA19_ConditionalContentVyAA9EmptyViewVAA08ModifiedE0VyAIyAIyAA4TextVAA30_EnvironmentKeyWritingModifierVyAA0I9AlignmentOGGAA16_FlexFrameLayoutVGAA08_PaddingQ0VGGAA05TupleG0VyAA6ButtonVyAIyAwMyAA5ColorVSgGGG_A6_tGAGGMd);
  v42 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v5 = v34 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI7SectionVyAA19_ConditionalContentVyAA9EmptyViewVAA08ModifiedE0VyAIyAIyAA4TextVAA30_EnvironmentKeyWritingModifierVyAA0I9AlignmentOGGAA16_FlexFrameLayoutVGAA08_PaddingQ0VGGAA05TupleG0VyAA6ButtonVyAIyAwMyAA5ColorVSgGGG_A6_tGAGGSgMd);
  MEMORY[0x28223BE20](v6 - 8);
  v40 = v34 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v39 = v34 - v9;
  MEMORY[0x28223BE20](v10);
  v12 = v34 - v11;
  MEMORY[0x28223BE20](v13);
  v15 = v34 - v14;
  v37 = *(v1 + *(type metadata accessor for LocationDisambiguation() + 20));
  v16 = dispatch thunk of WorkoutConfiguration.activityType.getter();
  v17 = [v16 requiresLocationDisambiguation];

  v38 = v12;
  v36 = v2;
  if (v17)
  {
    LocationDisambiguation.instructions()(&v55);
    v35 = v34;
    v53 = v65;
    v54[0] = v66[0];
    *(v54 + 10) = *(v66 + 10);
    v49 = v61;
    v50 = v62;
    v51 = v63;
    v52 = v64;
    v45 = v57;
    v46 = v58;
    v47 = v59;
    v48 = v60;
    v43 = v55;
    v44 = v56;
    MEMORY[0x28223BE20](v18);
    v34[-2] = v2;
    v34[1] = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI19_ConditionalContentVyAA9EmptyViewVAA08ModifiedD0VyAGyAGyAA4TextVAA30_EnvironmentKeyWritingModifierVyAA0H9AlignmentOGGAA16_FlexFrameLayoutVGAA08_PaddingP0VGGMd);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI9TupleViewVyAA6ButtonVyAA15ModifiedContentVyAGyAGyAGyAA4TextVAA30_EnvironmentKeyWritingModifierVyAA0H9AlignmentOGGAA16_FlexFrameLayoutVGAA08_PaddingP0VGAKyAA5ColorVSgGGG_A_tGMd);
    lazy protocol witness table accessor for type _ConditionalContent<EmptyView, ModifiedContent<ModifiedContent<ModifiedContent<Text, _EnvironmentKeyWritingModifier<TextAlignment>>, _FlexFrameLayout>, _PaddingLayout>> and conformance <> _ConditionalContent<A, B>();
    lazy protocol witness table accessor for type ScrollView<ModifiedContent<ModifiedContent<ModifiedContent<<<opaque return type of View.buttonStyle<A>(_:)>>.0, _EnvironmentKeyWritingModifier<ButtonBorderShape>>, _EnvironmentKeyWritingModifier<Color?>>, _PaddingLayout>> and conformance ScrollView<A>(&lazy protocol witness table cache variable for type TupleView<(Button<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Text, _EnvironmentKeyWritingModifier<TextAlignment>>, _FlexFrameLayout>, _PaddingLayout>, _EnvironmentKeyWritingModifier<Color?>>>, Button<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Text, _EnvironmentKeyWritingModifier<TextAlignment>>, _FlexFrameLayout>, _PaddingLayout>, _EnvironmentKeyWritingModifier<Color?>>>)> and conformance TupleView<A>, &_s7SwiftUI9TupleViewVyAA6ButtonVyAA15ModifiedContentVyAGyAGyAGyAA4TextVAA30_EnvironmentKeyWritingModifierVyAA0H9AlignmentOGGAA16_FlexFrameLayoutVGAA08_PaddingP0VGAKyAA5ColorVSgGGG_A_tGMd);
    v19 = v42;
    Section<>.init(header:content:)();
    (*(v19 + 32))(v15, v5, v3);
    v20 = *(v19 + 56);
    v20(v15, 0, 1, v3);
  }

  else
  {
    v20 = *(v42 + 56);
    v20(v15, 1, 1, v3);
  }

  v21 = dispatch thunk of WorkoutConfiguration.activityType.getter();
  v22 = [v21 requiresSwimmingLocationDisambiguation];

  if (v22)
  {
    v23 = v36;
    LocationDisambiguation.instructions()(&v55);
    v35 = v34;
    v53 = v65;
    v54[0] = v66[0];
    *(v54 + 10) = *(v66 + 10);
    v49 = v61;
    v50 = v62;
    v51 = v63;
    v52 = v64;
    v45 = v57;
    v46 = v58;
    v47 = v59;
    v48 = v60;
    v43 = v55;
    v44 = v56;
    MEMORY[0x28223BE20](v24);
    v37 = v20;
    v34[-2] = v23;
    v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI19_ConditionalContentVyAA9EmptyViewVAA08ModifiedD0VyAGyAGyAA4TextVAA30_EnvironmentKeyWritingModifierVyAA0H9AlignmentOGGAA16_FlexFrameLayoutVGAA08_PaddingP0VGGMd);
    v25 = v5;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI9TupleViewVyAA6ButtonVyAA15ModifiedContentVyAGyAGyAGyAA4TextVAA30_EnvironmentKeyWritingModifierVyAA0H9AlignmentOGGAA16_FlexFrameLayoutVGAA08_PaddingP0VGAKyAA5ColorVSgGGG_A_tGMd);
    lazy protocol witness table accessor for type _ConditionalContent<EmptyView, ModifiedContent<ModifiedContent<ModifiedContent<Text, _EnvironmentKeyWritingModifier<TextAlignment>>, _FlexFrameLayout>, _PaddingLayout>> and conformance <> _ConditionalContent<A, B>();
    v26 = v42;
    lazy protocol witness table accessor for type ScrollView<ModifiedContent<ModifiedContent<ModifiedContent<<<opaque return type of View.buttonStyle<A>(_:)>>.0, _EnvironmentKeyWritingModifier<ButtonBorderShape>>, _EnvironmentKeyWritingModifier<Color?>>, _PaddingLayout>> and conformance ScrollView<A>(&lazy protocol witness table cache variable for type TupleView<(Button<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Text, _EnvironmentKeyWritingModifier<TextAlignment>>, _FlexFrameLayout>, _PaddingLayout>, _EnvironmentKeyWritingModifier<Color?>>>, Button<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Text, _EnvironmentKeyWritingModifier<TextAlignment>>, _FlexFrameLayout>, _PaddingLayout>, _EnvironmentKeyWritingModifier<Color?>>>)> and conformance TupleView<A>, &_s7SwiftUI9TupleViewVyAA6ButtonVyAA15ModifiedContentVyAGyAGyAGyAA4TextVAA30_EnvironmentKeyWritingModifierVyAA0H9AlignmentOGGAA16_FlexFrameLayoutVGAA08_PaddingP0VGAKyAA5ColorVSgGGG_A_tGMd);
    v20 = v37;
    Section<>.init(header:content:)();
    v27 = v38;
    (*(v26 + 32))(v38, v25, v3);
    v28 = 0;
  }

  else
  {
    v28 = 1;
    v27 = v38;
  }

  v20(v27, v28, 1, v3);
  v29 = v39;
  _s7SwiftUI11EnvironmentV7ContentOyAA13DismissActionV_GWOcTm_0(v15, v39, &_s7SwiftUI7SectionVyAA19_ConditionalContentVyAA9EmptyViewVAA08ModifiedE0VyAIyAIyAA4TextVAA30_EnvironmentKeyWritingModifierVyAA0I9AlignmentOGGAA16_FlexFrameLayoutVGAA08_PaddingQ0VGGAA05TupleG0VyAA6ButtonVyAIyAwMyAA5ColorVSgGGG_A6_tGAGGSgMd);
  v30 = v40;
  _s7SwiftUI11EnvironmentV7ContentOyAA13DismissActionV_GWOcTm_0(v27, v40, &_s7SwiftUI7SectionVyAA19_ConditionalContentVyAA9EmptyViewVAA08ModifiedE0VyAIyAIyAA4TextVAA30_EnvironmentKeyWritingModifierVyAA0I9AlignmentOGGAA16_FlexFrameLayoutVGAA08_PaddingQ0VGGAA05TupleG0VyAA6ButtonVyAIyAwMyAA5ColorVSgGGG_A6_tGAGGSgMd);
  v31 = v41;
  _s7SwiftUI11EnvironmentV7ContentOyAA13DismissActionV_GWOcTm_0(v29, v41, &_s7SwiftUI7SectionVyAA19_ConditionalContentVyAA9EmptyViewVAA08ModifiedE0VyAIyAIyAA4TextVAA30_EnvironmentKeyWritingModifierVyAA0I9AlignmentOGGAA16_FlexFrameLayoutVGAA08_PaddingQ0VGGAA05TupleG0VyAA6ButtonVyAIyAwMyAA5ColorVSgGGG_A6_tGAGGSgMd);
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI7SectionVyAA19_ConditionalContentVyAA9EmptyViewVAA08ModifiedE0VyAIyAIyAA4TextVAA30_EnvironmentKeyWritingModifierVyAA0I9AlignmentOGGAA16_FlexFrameLayoutVGAA08_PaddingQ0VGGAA05TupleG0VyAA6ButtonVyAIyAwMyAA5ColorVSgGGG_A6_tGAGGSg_A9_tMd);
  _s7SwiftUI11EnvironmentV7ContentOyAA13DismissActionV_GWOcTm_0(v30, v31 + *(v32 + 48), &_s7SwiftUI7SectionVyAA19_ConditionalContentVyAA9EmptyViewVAA08ModifiedE0VyAIyAIyAA4TextVAA30_EnvironmentKeyWritingModifierVyAA0I9AlignmentOGGAA16_FlexFrameLayoutVGAA08_PaddingQ0VGGAA05TupleG0VyAA6ButtonVyAIyAwMyAA5ColorVSgGGG_A6_tGAGGSgMd);
  outlined destroy of VStack<TupleView<(Section<_ConditionalContent<EmptyView, ModifiedContent<ModifiedContent<ModifiedContent<Text, _EnvironmentKeyWritingModifier<TextAlignment>>, _FlexFrameLayout>, _PaddingLayout>>, TupleView<(Button<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Text, _EnvironmentKeyWritingModifier<TextAlignment>>, _FlexFrameLayout>, _PaddingLayout>, _EnvironmentKeyWritingModifier<Color?>>>, Button<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Text, _EnvironmentKeyWritingModifier<TextAlignment>>, _FlexFrameLayout>, _PaddingLayout>, _EnvironmentKeyWritingModifier<Color?>>>)>, EmptyView>?, Section<_ConditionalContent<EmptyView, ModifiedContent<ModifiedContent<ModifiedContent<Text, _EnvironmentKeyWritingModifier<TextAlignment>>, _FlexFrameLayout>, _PaddingLayout>>, TupleView<(Button<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Text, _EnvironmentKeyWritingModifier<TextAlignment>>, _FlexFrameLayout>, _PaddingLayout>, _EnvironmentKeyWritingMod(v27, &_s7SwiftUI7SectionVyAA19_ConditionalContentVyAA9EmptyViewVAA08ModifiedE0VyAIyAIyAA4TextVAA30_EnvironmentKeyWritingModifierVyAA0I9AlignmentOGGAA16_FlexFrameLayoutVGAA08_PaddingQ0VGGAA05TupleG0VyAA6ButtonVyAIyAwMyAA5ColorVSgGGG_A6_tGAGGSgMd);
  outlined destroy of VStack<TupleView<(Section<_ConditionalContent<EmptyView, ModifiedContent<ModifiedContent<ModifiedContent<Text, _EnvironmentKeyWritingModifier<TextAlignment>>, _FlexFrameLayout>, _PaddingLayout>>, TupleView<(Button<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Text, _EnvironmentKeyWritingModifier<TextAlignment>>, _FlexFrameLayout>, _PaddingLayout>, _EnvironmentKeyWritingModifier<Color?>>>, Button<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Text, _EnvironmentKeyWritingModifier<TextAlignment>>, _FlexFrameLayout>, _PaddingLayout>, _EnvironmentKeyWritingModifier<Color?>>>)>, EmptyView>?, Section<_ConditionalContent<EmptyView, ModifiedContent<ModifiedContent<ModifiedContent<Text, _EnvironmentKeyWritingModifier<TextAlignment>>, _FlexFrameLayout>, _PaddingLayout>>, TupleView<(Button<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Text, _EnvironmentKeyWritingModifier<TextAlignment>>, _FlexFrameLayout>, _PaddingLayout>, _EnvironmentKeyWritingMod(v15, &_s7SwiftUI7SectionVyAA19_ConditionalContentVyAA9EmptyViewVAA08ModifiedE0VyAIyAIyAA4TextVAA30_EnvironmentKeyWritingModifierVyAA0I9AlignmentOGGAA16_FlexFrameLayoutVGAA08_PaddingQ0VGGAA05TupleG0VyAA6ButtonVyAIyAwMyAA5ColorVSgGGG_A6_tGAGGSgMd);
  outlined destroy of VStack<TupleView<(Section<_ConditionalContent<EmptyView, ModifiedContent<ModifiedContent<ModifiedContent<Text, _EnvironmentKeyWritingModifier<TextAlignment>>, _FlexFrameLayout>, _PaddingLayout>>, TupleView<(Button<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Text, _EnvironmentKeyWritingModifier<TextAlignment>>, _FlexFrameLayout>, _PaddingLayout>, _EnvironmentKeyWritingModifier<Color?>>>, Button<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Text, _EnvironmentKeyWritingModifier<TextAlignment>>, _FlexFrameLayout>, _PaddingLayout>, _EnvironmentKeyWritingModifier<Color?>>>)>, EmptyView>?, Section<_ConditionalContent<EmptyView, ModifiedContent<ModifiedContent<ModifiedContent<Text, _EnvironmentKeyWritingModifier<TextAlignment>>, _FlexFrameLayout>, _PaddingLayout>>, TupleView<(Button<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Text, _EnvironmentKeyWritingModifier<TextAlignment>>, _FlexFrameLayout>, _PaddingLayout>, _EnvironmentKeyWritingMod(v30, &_s7SwiftUI7SectionVyAA19_ConditionalContentVyAA9EmptyViewVAA08ModifiedE0VyAIyAIyAA4TextVAA30_EnvironmentKeyWritingModifierVyAA0I9AlignmentOGGAA16_FlexFrameLayoutVGAA08_PaddingQ0VGGAA05TupleG0VyAA6ButtonVyAIyAwMyAA5ColorVSgGGG_A6_tGAGGSgMd);
  return outlined destroy of VStack<TupleView<(Section<_ConditionalContent<EmptyView, ModifiedContent<ModifiedContent<ModifiedContent<Text, _EnvironmentKeyWritingModifier<TextAlignment>>, _FlexFrameLayout>, _PaddingLayout>>, TupleView<(Button<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Text, _EnvironmentKeyWritingModifier<TextAlignment>>, _FlexFrameLayout>, _PaddingLayout>, _EnvironmentKeyWritingModifier<Color?>>>, Button<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Text, _EnvironmentKeyWritingModifier<TextAlignment>>, _FlexFrameLayout>, _PaddingLayout>, _EnvironmentKeyWritingModifier<Color?>>>)>, EmptyView>?, Section<_ConditionalContent<EmptyView, ModifiedContent<ModifiedContent<ModifiedContent<Text, _EnvironmentKeyWritingModifier<TextAlignment>>, _FlexFrameLayout>, _PaddingLayout>>, TupleView<(Button<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Text, _EnvironmentKeyWritingModifier<TextAlignment>>, _FlexFrameLayout>, _PaddingLayout>, _EnvironmentKeyWritingMod(v29, &_s7SwiftUI7SectionVyAA19_ConditionalContentVyAA9EmptyViewVAA08ModifiedE0VyAIyAIyAA4TextVAA30_EnvironmentKeyWritingModifierVyAA0I9AlignmentOGGAA16_FlexFrameLayoutVGAA08_PaddingQ0VGGAA05TupleG0VyAA6ButtonVyAIyAwMyAA5ColorVSgGGG_A6_tGAGGSgMd);
}

double closure #1 in LocationDisambiguation.makeStackView()@<D0>(uint64_t a1@<X8>)
{
  v2 = type metadata accessor for BorderedButtonStyle();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v16 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI6VStackVyAA9TupleViewVyAA7SectionVyAA19_ConditionalContentVyAA05EmptyE0VAA08ModifiedH0VyAMyAMyAA4TextVAA30_EnvironmentKeyWritingModifierVyAA0K9AlignmentOGGAA16_FlexFrameLayoutVGAA08_PaddingS0VGGAEyAA6ButtonVyAMyA_AQyAA5ColorVSgGGG_A8_tGAKGSg_A11_tGGMd);
  MEMORY[0x28223BE20](v6);
  v8 = &v16 - v7;
  *v8 = static HorizontalAlignment.center.getter();
  *(v8 + 1) = 0;
  v8[16] = 1;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI13_VariadicViewO4TreeVy_AA13_VStackLayoutVAA05TupleD0VyAA7SectionVyAA19_ConditionalContentVyAA05EmptyD0VAA08ModifiedK0VyAQyAQyAA4TextVAA30_EnvironmentKeyWritingModifierVyAA0N9AlignmentOGGAA010_FlexFrameG0VGAA08_PaddingG0VGGAIyAA6ButtonVyAQyA3_AUyAA5ColorVSgGGG_A12_tGAOGSg_A15_tGGMd);
  LocationDisambiguation.makeLocationDisambiguationContents()(&v8[*(v9 + 44)]);
  BorderedButtonStyle.init()();
  lazy protocol witness table accessor for type ScrollView<ModifiedContent<ModifiedContent<ModifiedContent<<<opaque return type of View.buttonStyle<A>(_:)>>.0, _EnvironmentKeyWritingModifier<ButtonBorderShape>>, _EnvironmentKeyWritingModifier<Color?>>, _PaddingLayout>> and conformance ScrollView<A>(&lazy protocol witness table cache variable for type VStack<TupleView<(Section<_ConditionalContent<EmptyView, ModifiedContent<ModifiedContent<ModifiedContent<Text, _EnvironmentKeyWritingModifier<TextAlignment>>, _FlexFrameLayout>, _PaddingLayout>>, TupleView<(Button<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Text, _EnvironmentKeyWritingModifier<TextAlignment>>, _FlexFrameLayout>, _PaddingLayout>, _EnvironmentKeyWritingModifier<Color?>>>, Button<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Text, _EnvironmentKeyWritingModifier<TextAlignment>>, _FlexFrameLayout>, _PaddingLayout>, _EnvironmentKeyWritingModifier<Color?>>>)>, EmptyView>?, Section<_ConditionalContent<EmptyView, ModifiedContent<ModifiedContent<ModifiedContent<Text, _EnvironmentKeyWritingModifier<TextAlignment>>, _FlexFrameLayout>, _PaddingLayout>>, TupleView<(Button<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Text, _EnvironmentKeyWritingModifier<TextAlignment>>, _FlexFrameLayout>, _PaddingLa, &_s7SwiftUI6VStackVyAA9TupleViewVyAA7SectionVyAA19_ConditionalContentVyAA05EmptyE0VAA08ModifiedH0VyAMyAMyAA4TextVAA30_EnvironmentKeyWritingModifierVyAA0K9AlignmentOGGAA16_FlexFrameLayoutVGAA08_PaddingS0VGGAEyAA6ButtonVyAMyA_AQyAA5ColorVSgGGG_A8_tGAKGSg_A11_tGGMd);
  lazy protocol witness table accessor for type BorderedButtonStyle and conformance BorderedButtonStyle(&lazy protocol witness table cache variable for type BorderedButtonStyle and conformance BorderedButtonStyle, MEMORY[0x277CDDEE0]);
  View.buttonStyle<A>(_:)();
  (*(v3 + 8))(v5, v2);
  outlined destroy of VStack<TupleView<(Section<_ConditionalContent<EmptyView, ModifiedContent<ModifiedContent<ModifiedContent<Text, _EnvironmentKeyWritingModifier<TextAlignment>>, _FlexFrameLayout>, _PaddingLayout>>, TupleView<(Button<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Text, _EnvironmentKeyWritingModifier<TextAlignment>>, _FlexFrameLayout>, _PaddingLayout>, _EnvironmentKeyWritingModifier<Color?>>>, Button<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Text, _EnvironmentKeyWritingModifier<TextAlignment>>, _FlexFrameLayout>, _PaddingLayout>, _EnvironmentKeyWritingModifier<Color?>>>)>, EmptyView>?, Section<_ConditionalContent<EmptyView, ModifiedContent<ModifiedContent<ModifiedContent<Text, _EnvironmentKeyWritingModifier<TextAlignment>>, _FlexFrameLayout>, _PaddingLayout>>, TupleView<(Button<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Text, _EnvironmentKeyWritingModifier<TextAlignment>>, _FlexFrameLayout>, _PaddingLayout>, _EnvironmentKeyWritingMod(v8, &_s7SwiftUI6VStackVyAA9TupleViewVyAA7SectionVyAA19_ConditionalContentVyAA05EmptyE0VAA08ModifiedH0VyAMyAMyAA4TextVAA30_EnvironmentKeyWritingModifierVyAA0K9AlignmentOGGAA16_FlexFrameLayoutVGAA08_PaddingS0VGGAEyAA6ButtonVyAMyA_AQyAA5ColorVSgGGG_A8_tGAKGSg_A11_tGGMd);
  v10 = (a1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyAA4ViewPAAE11buttonStyleyQrqd__AA015PrimitiveButtonG0Rd__lFQOyAA6VStackVyAA05TupleE0VyAA7SectionVyAA012_ConditionalD0VyAA05EmptyE0VACyACyACyAA4TextVAA30_EnvironmentKeyWritingModifierVyAA0O9AlignmentOGGAA16_FlexFrameLayoutVGAA08_PaddingW0VGGAKyAA0I0VyACyA3_AUyAA5ColorVSgGGG_A12_tGAQGSg_A15_tGG_AA08BorderediG0VQo_AUyAA0I11BorderShapeVGGMd) + 36));
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI30_EnvironmentKeyWritingModifierVyAA17ButtonBorderShapeVGMd);
  static ButtonBorderShape.capsule.getter();
  *v10 = swift_getKeyPath();
  v11 = static Color.secondary.getter();
  KeyPath = swift_getKeyPath();
  v13 = (a1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyACyAA4ViewPAAE11buttonStyleyQrqd__AA015PrimitiveButtonG0Rd__lFQOyAA6VStackVyAA05TupleE0VyAA7SectionVyAA012_ConditionalD0VyAA05EmptyE0VACyACyACyAA4TextVAA30_EnvironmentKeyWritingModifierVyAA0O9AlignmentOGGAA16_FlexFrameLayoutVGAA08_PaddingW0VGGAKyAA0I0VyACyA3_AUyAA5ColorVSgGGG_A12_tGAQGSg_A15_tGG_AA08BorderediG0VQo_AUyAA0I11BorderShapeVGGA10_GMd) + 36));
  *v13 = KeyPath;
  v13[1] = v11;
  LOBYTE(v11) = static Edge.Set.all.getter();
  v14 = a1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyACyACyAA4ViewPAAE11buttonStyleyQrqd__AA015PrimitiveButtonG0Rd__lFQOyAA6VStackVyAA05TupleE0VyAA7SectionVyAA012_ConditionalD0VyAA05EmptyE0VACyACyACyAA4TextVAA30_EnvironmentKeyWritingModifierVyAA0O9AlignmentOGGAA16_FlexFrameLayoutVGAA08_PaddingW0VGGAKyAA0I0VyACyA3_AUyAA5ColorVSgGGG_A12_tGAQGSg_A15_tGG_AA08BorderediG0VQo_AUyAA0I11BorderShapeVGGA10_GA2_GMd) + 36);
  *v14 = v11;
  result = 0.0;
  *(v14 + 8) = 0u;
  *(v14 + 24) = 0u;
  *(v14 + 40) = 1;
  return result;
}

__n128 LocationDisambiguation.instructions()@<Q0>(uint64_t a1@<X8>)
{
  if (*(v1 + *(type metadata accessor for LocationDisambiguation() + 24)))
  {
    if (one-time initialization token for WorkoutUIBundle != -1)
    {
      swift_once();
    }

    swift_beginAccess();
    v3 = WorkoutUIBundle.super.isa;
    v58._object = 0xE000000000000000;
    v4.value._countAndFlagsBits = 0x617A696C61636F4CLL;
    v4.value._object = 0xEB00000000656C62;
    v5._object = 0x800000020CB97220;
    v5._countAndFlagsBits = 0xD000000000000021;
    v6._countAndFlagsBits = 0;
    v6._object = 0xE000000000000000;
    v58._countAndFlagsBits = 0;
    v7 = NSLocalizedString(_:tableName:bundle:value:comment:)(v5, v4, v3, v6, v58);

    v46 = v7;
    lazy protocol witness table accessor for type String and conformance String();
    v8 = Text.init<A>(_:)();
    v10 = v9;
    v12 = v11;
    v14 = v13;
    KeyPath = swift_getKeyPath();
    static Alignment.center.getter();
    _FlexFrameLayout.init(minWidth:idealWidth:maxWidth:minHeight:idealHeight:maxHeight:alignment:)();
    *&v36[55] = v42;
    *&v36[71] = v43;
    *&v36[87] = v44;
    *&v36[103] = v45;
    *&v36[7] = v39;
    *&v36[23] = v40;
    v37 = v12 & 1;
    *&v36[39] = v41;
    v31 = *&v36[64];
    v32 = *&v36[80];
    *v33 = *&v36[96];
    v27 = *v36;
    v28 = *&v36[16];
    v29 = *&v36[32];
    v38 = 1;
    v22[0] = v8;
    v22[1] = v10;
    v23 = v12 & 1;
    v24 = v14;
    v25 = KeyPath;
    v26 = 1;
    *&v33[15] = *(&v45 + 1);
    v30 = *&v36[48];
    v34[0] = static Edge.Set.all.getter();
    memset(&v34[8], 0, 32);
    v35 = 1;
    _s7SwiftUI19_ConditionalContentV7StorageOyAA9EmptyViewVAA08ModifiedD0VyAIyAIyAA4TextVAA30_EnvironmentKeyWritingModifierVyAA0I9AlignmentOGGAA16_FlexFrameLayoutVGAA08_PaddingQ0VG_GWOi0_(v22);
  }

  else
  {
    _s7SwiftUI19_ConditionalContentV7StorageOyAA9EmptyViewVAA08ModifiedD0VyAIyAIyAA4TextVAA30_EnvironmentKeyWritingModifierVyAA0I9AlignmentOGGAA16_FlexFrameLayoutVGAA08_PaddingQ0VG_GWOi_(v22);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyACyACyAA4TextVAA30_EnvironmentKeyWritingModifierVyAA0E9AlignmentOGGAA16_FlexFrameLayoutVGAA08_PaddingM0VGMd);
  lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<ModifiedContent<Text, _EnvironmentKeyWritingModifier<TextAlignment>>, _FlexFrameLayout>, _PaddingLayout> and conformance <> ModifiedContent<A, B>();
  _ConditionalContent<>.init(storage:)();
  v16 = v57[0];
  *(a1 + 160) = v56;
  *(a1 + 176) = v16;
  *(a1 + 186) = *(v57 + 10);
  v17 = v53;
  *(a1 + 96) = v52;
  *(a1 + 112) = v17;
  v18 = v55;
  *(a1 + 128) = v54;
  *(a1 + 144) = v18;
  v19 = v49;
  *(a1 + 32) = v48;
  *(a1 + 48) = v19;
  v20 = v51;
  *(a1 + 64) = v50;
  *(a1 + 80) = v20;
  result = v47;
  *a1 = v46;
  *(a1 + 16) = result;
  return result;
}

uint64_t closure #1 in LocationDisambiguation.makeLocationDisambiguationContents()@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v44 = a2;
  v3 = type metadata accessor for LocationDisambiguation();
  v4 = v3 - 8;
  v5 = *(v3 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = &v35 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI6ButtonVyAA15ModifiedContentVyAEyAEyAEyAA4TextVAA30_EnvironmentKeyWritingModifierVyAA0F9AlignmentOGGAA16_FlexFrameLayoutVGAA08_PaddingN0VGAIyAA5ColorVSgGGGMd);
  v43 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v42 = &v35 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v41 = &v35 - v11;
  MEMORY[0x28223BE20](v12);
  v40 = &v35 - v13;
  MEMORY[0x28223BE20](v14);
  v38 = &v35 - v15;
  v39 = *(a1 + *(v4 + 28));
  v16 = dispatch thunk of WorkoutConfiguration.activityType.getter();
  v17 = a1;
  v36 = a1;
  outlined init with copy of LocationDisambiguation(a1, v7);
  v18 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v19 = (v6 + v18 + 7) & 0xFFFFFFFFFFFFFFF8;
  v20 = swift_allocObject();
  outlined init with take of LocationDisambiguation(v7, v20 + v18);
  *(v20 + v19) = 2;
  v48 = v16;
  v49 = 2;
  v50 = v17;
  v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyACyACyACyAA4TextVAA30_EnvironmentKeyWritingModifierVyAA0E9AlignmentOGGAA16_FlexFrameLayoutVGAA08_PaddingM0VGAGyAA5ColorVSgGGMd);
  lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<<<opaque return type of View.buttonStyle<A>(_:)>>.0, _EnvironmentKeyWritingModifier<ButtonBorderShape>>, _EnvironmentKeyWritingModifier<Color?>> and conformance <> ModifiedContent<A, B>(&lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Text, _EnvironmentKeyWritingModifier<TextAlignment>>, _FlexFrameLayout>, _PaddingLayout>, _EnvironmentKeyWritingModifier<Color?>> and conformance <> ModifiedContent<A, B>, &_s7SwiftUI15ModifiedContentVyACyACyACyAA4TextVAA30_EnvironmentKeyWritingModifierVyAA0E9AlignmentOGGAA16_FlexFrameLayoutVGAA08_PaddingM0VGAGyAA5ColorVSgGGMd, &_s7SwiftUI15ModifiedContentVyACyACyACyAA4TextVAA30_EnvironmentKeyWritingModifierVyAA0E9AlignmentOGGAA16_FlexFrameLayoutVGAA08_PaddingM0VGAGyAA5ColorVSgGGMR, lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<ModifiedContent<Text, _EnvironmentKeyWritingModifier<TextAlignment>>, _FlexFrameLayout>, _PaddingLayout> and conformance <> ModifiedContent<A, B>);
  v21 = v38;
  Button.init(action:label:)();

  v22 = dispatch thunk of WorkoutConfiguration.activityType.getter();
  v23 = v36;
  outlined init with copy of LocationDisambiguation(v36, v7);
  v24 = swift_allocObject();
  outlined init with take of LocationDisambiguation(v7, v24 + v18);
  *(v24 + v19) = 3;
  v45 = v22;
  v46 = 3;
  v47 = v23;
  v25 = v40;
  Button.init(action:label:)();

  v26 = v43;
  v27 = *(v43 + 16);
  v28 = v41;
  v29 = v21;
  v27(v41, v21, v8);
  v30 = v42;
  v27(v42, v25, v8);
  v31 = v44;
  v27(v44, v28, v8);
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI6ButtonVyAA15ModifiedContentVyAEyAEyAEyAA4TextVAA30_EnvironmentKeyWritingModifierVyAA0F9AlignmentOGGAA16_FlexFrameLayoutVGAA08_PaddingN0VGAIyAA5ColorVSgGGG_AYtMd);
  v27(&v31[*(v32 + 48)], v30, v8);
  v33 = *(v26 + 8);
  v33(v25, v8);
  v33(v29, v8);
  v33(v30, v8);
  return (v33)(v28, v8);
}

uint64_t closure #2 in LocationDisambiguation.makeLocationDisambiguationContents()@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v44 = a2;
  v3 = type metadata accessor for LocationDisambiguation();
  v4 = v3 - 8;
  v5 = *(v3 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = &v35 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI6ButtonVyAA15ModifiedContentVyAEyAEyAEyAA4TextVAA30_EnvironmentKeyWritingModifierVyAA0F9AlignmentOGGAA16_FlexFrameLayoutVGAA08_PaddingN0VGAIyAA5ColorVSgGGGMd);
  v43 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v42 = &v35 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v41 = &v35 - v11;
  MEMORY[0x28223BE20](v12);
  v40 = &v35 - v13;
  MEMORY[0x28223BE20](v14);
  v38 = &v35 - v15;
  v39 = *(a1 + *(v4 + 28));
  v16 = dispatch thunk of WorkoutConfiguration.activityType.getter();
  v17 = a1;
  v36 = a1;
  outlined init with copy of LocationDisambiguation(a1, v7);
  v18 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v19 = (v6 + v18 + 7) & 0xFFFFFFFFFFFFFFF8;
  v20 = swift_allocObject();
  outlined init with take of LocationDisambiguation(v7, v20 + v18);
  *(v20 + v19) = 1;
  v48 = v16;
  v49 = 1;
  v50 = v17;
  v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyACyACyACyAA4TextVAA30_EnvironmentKeyWritingModifierVyAA0E9AlignmentOGGAA16_FlexFrameLayoutVGAA08_PaddingM0VGAGyAA5ColorVSgGGMd);
  lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<<<opaque return type of View.buttonStyle<A>(_:)>>.0, _EnvironmentKeyWritingModifier<ButtonBorderShape>>, _EnvironmentKeyWritingModifier<Color?>> and conformance <> ModifiedContent<A, B>(&lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Text, _EnvironmentKeyWritingModifier<TextAlignment>>, _FlexFrameLayout>, _PaddingLayout>, _EnvironmentKeyWritingModifier<Color?>> and conformance <> ModifiedContent<A, B>, &_s7SwiftUI15ModifiedContentVyACyACyACyAA4TextVAA30_EnvironmentKeyWritingModifierVyAA0E9AlignmentOGGAA16_FlexFrameLayoutVGAA08_PaddingM0VGAGyAA5ColorVSgGGMd, &_s7SwiftUI15ModifiedContentVyACyACyACyAA4TextVAA30_EnvironmentKeyWritingModifierVyAA0E9AlignmentOGGAA16_FlexFrameLayoutVGAA08_PaddingM0VGAGyAA5ColorVSgGGMR, lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<ModifiedContent<Text, _EnvironmentKeyWritingModifier<TextAlignment>>, _FlexFrameLayout>, _PaddingLayout> and conformance <> ModifiedContent<A, B>);
  v21 = v38;
  Button.init(action:label:)();

  v22 = dispatch thunk of WorkoutConfiguration.activityType.getter();
  v23 = v36;
  outlined init with copy of LocationDisambiguation(v36, v7);
  v24 = swift_allocObject();
  outlined init with take of LocationDisambiguation(v7, v24 + v18);
  *(v24 + v19) = 2;
  v45 = v22;
  v46 = 2;
  v47 = v23;
  v25 = v40;
  Button.init(action:label:)();

  v26 = v43;
  v27 = *(v43 + 16);
  v28 = v41;
  v29 = v21;
  v27(v41, v21, v8);
  v30 = v42;
  v27(v42, v25, v8);
  v31 = v44;
  v27(v44, v28, v8);
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI6ButtonVyAA15ModifiedContentVyAEyAEyAEyAA4TextVAA30_EnvironmentKeyWritingModifierVyAA0F9AlignmentOGGAA16_FlexFrameLayoutVGAA08_PaddingN0VGAIyAA5ColorVSgGGG_AYtMd);
  v27(&v31[*(v32 + 48)], v30, v8);
  v33 = *(v26 + 8);
  v33(v25, v8);
  v33(v29, v8);
  v33(v30, v8);
  return (v33)(v28, v8);
}

uint64_t LocationDisambiguation.disambiguateWorkoutConfiguration(location:swimmingLocation:)(uint64_t a1, int a2, void (*a3)(char *, uint64_t), int a4)
{
  v5 = v4;
  LODWORD(v54) = a4;
  v55 = a3;
  v52 = a2;
  v53 = a1;
  v43 = type metadata accessor for Logger();
  v42 = *(v43 - 8);
  MEMORY[0x28223BE20](v43);
  v41 = &v41 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for DispatchWorkItemFlags();
  v50 = *(v7 - 8);
  v51 = v7;
  MEMORY[0x28223BE20](v7);
  v48 = &v41 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v49 = type metadata accessor for DispatchQoS();
  v47 = *(v49 - 8);
  MEMORY[0x28223BE20](v49);
  v46 = &v41 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for LocationDisambiguation();
  v44 = *(v10 - 8);
  v11 = *(v44 + 64);
  MEMORY[0x28223BE20](v10);
  v57 = type metadata accessor for DispatchTime();
  v45 = *(v57 - 8);
  MEMORY[0x28223BE20](v57);
  v13 = &v41 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v56 = &v41 - v15;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd);
  MEMORY[0x28223BE20](v16 - 8);
  v18 = &v41 - v17;
  v19 = type metadata accessor for DismissAction();
  v20 = *(v19 - 8);
  MEMORY[0x28223BE20](v19);
  v22 = &v41 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  LocationDisambiguation.dismiss.getter(v22);
  DismissAction.callAsFunction()();
  (*(v20 + 8))(v22, v19);
  if (*(v4 + *(v10 + 24)) == 1)
  {
    UUID.init()();
    v23 = 0;
  }

  else
  {
    v23 = 1;
  }

  v24 = type metadata accessor for UUID();
  (*(*(v24 - 8) + 56))(v18, v23, 1, v24);
  v25 = WorkoutConfiguration.copy(uuid:location:swimmingLocation:isPartOfMultisport:preservingExternalProvider:)();
  if (v25)
  {
    v26 = v25;
    type metadata accessor for OS_dispatch_queue();
    v54 = static OS_dispatch_queue.main.getter();
    static DispatchTime.now()();
    + infix(_:_:)();
    v55 = *(v45 + 8);
    v55(v13, v57);
    outlined init with copy of LocationDisambiguation(v5, &v41 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
    v27 = (*(v44 + 80) + 16) & ~*(v44 + 80);
    v28 = swift_allocObject();
    outlined init with take of LocationDisambiguation(&v41 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0), v28 + v27);
    *(v28 + ((v11 + v27 + 7) & 0xFFFFFFFFFFFFFFF8)) = v26;
    aBlock[4] = partial apply for closure #1 in LocationDisambiguation.disambiguateWorkoutConfiguration(location:swimmingLocation:);
    aBlock[5] = v28;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = thunk for @escaping @callee_guaranteed () -> ();
    aBlock[3] = &block_descriptor_13;
    v29 = _Block_copy(aBlock);
    v30 = v26;

    v31 = v46;
    static DispatchQoS.unspecified.getter();
    aBlock[0] = MEMORY[0x277D84F90];
    lazy protocol witness table accessor for type BorderedButtonStyle and conformance BorderedButtonStyle(&lazy protocol witness table cache variable for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags, MEMORY[0x277D85198]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay8Dispatch0A13WorkItemFlagsVGMd);
    lazy protocol witness table accessor for type ScrollView<ModifiedContent<ModifiedContent<ModifiedContent<<<opaque return type of View.buttonStyle<A>(_:)>>.0, _EnvironmentKeyWritingModifier<ButtonBorderShape>>, _EnvironmentKeyWritingModifier<Color?>>, _PaddingLayout>> and conformance ScrollView<A>(&lazy protocol witness table cache variable for type [DispatchWorkItemFlags] and conformance [A], &_sSay8Dispatch0A13WorkItemFlagsVGMd);
    v32 = v48;
    v33 = v51;
    dispatch thunk of SetAlgebra.init<A>(_:)();
    v34 = v56;
    v35 = v54;
    MEMORY[0x20F30C1A0](v56, v31, v32, v29);
    _Block_release(v29);

    (*(v50 + 8))(v32, v33);
    (*(v47 + 8))(v31, v49);
    v55(v34, v57);
  }

  else
  {
    v36 = v41;
    static WOLog.activityPicker.getter();
    v37 = Logger.logObject.getter();
    v38 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v37, v38))
    {
      v39 = swift_slowAlloc();
      *v39 = 0;
      _os_log_impl(&dword_20C66F000, v37, v38, "Unable to start workout for managed configuration, disambiguated workout configuration was nil", v39, 2u);
      MEMORY[0x20F30E080](v39, -1, -1);
    }

    (*(v42 + 8))(v36, v43);
  }

  return outlined destroy of VStack<TupleView<(Section<_ConditionalContent<EmptyView, ModifiedContent<ModifiedContent<ModifiedContent<Text, _EnvironmentKeyWritingModifier<TextAlignment>>, _FlexFrameLayout>, _PaddingLayout>>, TupleView<(Button<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Text, _EnvironmentKeyWritingModifier<TextAlignment>>, _FlexFrameLayout>, _PaddingLayout>, _EnvironmentKeyWritingModifier<Color?>>>, Button<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Text, _EnvironmentKeyWritingModifier<TextAlignment>>, _FlexFrameLayout>, _PaddingLayout>, _EnvironmentKeyWritingModifier<Color?>>>)>, EmptyView>?, Section<_ConditionalContent<EmptyView, ModifiedContent<ModifiedContent<ModifiedContent<Text, _EnvironmentKeyWritingModifier<TextAlignment>>, _FlexFrameLayout>, _PaddingLayout>>, TupleView<(Button<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Text, _EnvironmentKeyWritingModifier<TextAlignment>>, _FlexFrameLayout>, _PaddingLayout>, _EnvironmentKeyWritingMod(v18, &_s10Foundation4UUIDVSgMd);
}

double closure #2 in LocationDisambiguation.makeButton(for:locationType:)@<D0>(_OWORD *a1@<X8>)
{
  v2 = FIUIWorkoutActivityType.copy(location:swimmingLocation:isPartOfMultisport:)();
  LocationDisambiguation.makeButtonLabel(with:)(v2, v11);

  v22 = v11[12];
  v23 = v11[13];
  v18 = v11[6];
  v19 = v11[7];
  v20 = v11[8];
  v21 = v11[9];
  v14 = v11[2];
  v15 = v11[3];
  v16 = v11[4];
  v17 = v11[5];
  v12 = v11[0];
  v13 = v11[1];
  v3 = v11[11];
  a1[10] = v11[10];
  a1[11] = v3;
  v4 = v23;
  a1[12] = v22;
  a1[13] = v4;
  v5 = v19;
  a1[6] = v18;
  a1[7] = v5;
  v6 = v21;
  a1[8] = v20;
  a1[9] = v6;
  v7 = v15;
  a1[2] = v14;
  a1[3] = v7;
  v8 = v17;
  a1[4] = v16;
  a1[5] = v8;
  result = *&v12;
  v10 = v13;
  *a1 = v12;
  a1[1] = v10;
  return result;
}

__n128 LocationDisambiguation.makeButtonLabel(with:)@<Q0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = [a1 localizedName];
  v4 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v6 = v5;

  *&v29 = v4;
  *(&v29 + 1) = v6;
  lazy protocol witness table accessor for type String and conformance String();
  v7 = Text.init<A>(_:)();
  v9 = v8;
  v11 = v10;
  v13 = v12;
  KeyPath = swift_getKeyPath();
  static Alignment.center.getter();
  _FlexFrameLayout.init(minWidth:idealWidth:maxWidth:minHeight:idealHeight:maxHeight:alignment:)();
  *&v28[55] = v32;
  *&v28[71] = v33;
  *&v28[87] = v34;
  *&v28[103] = v35;
  *&v28[7] = v29;
  *&v28[23] = v30;
  v15 = v11 & 1;
  *&v28[39] = v31;
  v16 = static Edge.Set.vertical.getter();
  EdgeInsets.init(_all:)();
  v18 = v17;
  v20 = v19;
  v22 = v21;
  v24 = v23;
  v25 = static Color.accentColor.getter();
  v26 = swift_getKeyPath();
  *(a2 + 105) = *&v28[64];
  *(a2 + 121) = *&v28[80];
  *(a2 + 137) = *&v28[96];
  *(a2 + 41) = *v28;
  *(a2 + 57) = *&v28[16];
  result = *&v28[32];
  *(a2 + 73) = *&v28[32];
  *a2 = v7;
  *(a2 + 8) = v9;
  *(a2 + 16) = v15;
  *(a2 + 24) = v13;
  *(a2 + 32) = KeyPath;
  *(a2 + 40) = 1;
  *(a2 + 152) = *(&v35 + 1);
  *(a2 + 89) = *&v28[48];
  *(a2 + 160) = v16;
  *(a2 + 168) = v18;
  *(a2 + 176) = v20;
  *(a2 + 184) = v22;
  *(a2 + 192) = v24;
  *(a2 + 200) = 0;
  *(a2 + 208) = v26;
  *(a2 + 216) = v25;
  return result;
}

double closure #2 in LocationDisambiguation.makeButton(for:swimmingLocationType:)@<D0>(_OWORD *a1@<X8>)
{
  v2 = FIUIWorkoutActivityType.copy(location:swimmingLocation:isPartOfMultisport:)();
  LocationDisambiguation.makeButtonLabel(with:)(v2, v11);

  v22 = v11[12];
  v23 = v11[13];
  v18 = v11[6];
  v19 = v11[7];
  v20 = v11[8];
  v21 = v11[9];
  v14 = v11[2];
  v15 = v11[3];
  v16 = v11[4];
  v17 = v11[5];
  v12 = v11[0];
  v13 = v11[1];
  v3 = v11[11];
  a1[10] = v11[10];
  a1[11] = v3;
  v4 = v23;
  a1[12] = v22;
  a1[13] = v4;
  v5 = v19;
  a1[6] = v18;
  a1[7] = v5;
  v6 = v21;
  a1[8] = v20;
  a1[9] = v6;
  v7 = v15;
  a1[2] = v14;
  a1[3] = v7;
  v8 = v17;
  a1[4] = v16;
  a1[5] = v8;
  result = *&v12;
  v10 = v13;
  *a1 = v12;
  a1[1] = v10;
  return result;
}

uint64_t protocol witness for View.body.getter in conformance LocationDisambiguation()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI4ViewPAAE7toolbar7contentQrqd__yXE_tAA14ToolbarContentRd__lFQOyAcAE20scrollBounceBehavior_4axesQrAA06ScrolliJ0V_AA4AxisO3SetVtFQOyAcAE07defaultL6Anchor_3forQrAA9UnitPointVSg_AA0lP4RoleVtFQOyAA0lC0VyAA08ModifiedG0VyAYyAYyAcAE11buttonStyleyQrqd__AA015PrimitiveButtonW0Rd__lFQOyAA6VStackVyAA05TupleC0VyAA7SectionVyAA012_ConditionalG0VyAA05EmptyC0VAYyAYyAYyAA4TextVAA30_EnvironmentKeyWritingModifierVyAA13TextAlignmentOGGAA16_FlexFrameLayoutVGAA14_PaddingLayoutVGGA3_yAA0Y0VyAYyA23_A13_yAA5ColorVSgGGG_A32_tGA9_GSg_A35_tGG_AA08BorderedyW0VQo_A13_yAA0Y11BorderShapeVGGA30_GA22_GG_Qo__Qo__AA0fG7BuilderV10buildBlockyQrxAaFRzlFZQOy_AA0F4ItemVyytA26_yAA07DefaultY5LabelVGGQo_Qo_Md);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI4ViewPAAE20scrollBounceBehavior_4axesQrAA06ScrolleF0V_AA4AxisO3SetVtFQOyAcAE07defaultH6Anchor_3forQrAA9UnitPointVSg_AA0hL4RoleVtFQOyAA0hC0VyAA15ModifiedContentVyAVyAVyAcAE11buttonStyleyQrqd__AA015PrimitiveButtonT0Rd__lFQOyAA6VStackVyAA05TupleC0VyAA7SectionVyAA012_ConditionalR0VyAA05EmptyC0VAVyAVyAVyAA4TextVAA30_EnvironmentKeyWritingModifierVyAA13TextAlignmentOGGAA16_FlexFrameLayoutVGAA14_PaddingLayoutVGGA0_yAA0V0VyAVyA20_A10_yAA5ColorVSgGGG_A29_tGA6_GSg_A32_tGG_AA08BorderedvT0VQo_A10_yAA0V11BorderShapeVGGA27_GA19_GG_Qo__Qo_Md);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI21ToolbarContentBuilderV10buildBlockyQrxAA0cD0RzlFZQOy_AA0C4ItemVyytAA6ButtonVyAA07DefaultI5LabelVGGQo_Md);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI4ViewPAAE19defaultScrollAnchor_3forQrAA9UnitPointVSg_AA0eF4RoleVtFQOyAA0eC0VyAA15ModifiedContentVyANyANyAcAE11buttonStyleyQrqd__AA015PrimitiveButtonN0Rd__lFQOyAA6VStackVyAA05TupleC0VyAA7SectionVyAA012_ConditionalL0VyAA05EmptyC0VANyANyANyAA4TextVAA30_EnvironmentKeyWritingModifierVyAA0V9AlignmentOGGAA16_FlexFrameLayoutVGAA14_PaddingLayoutVGGATyAA0P0VyANyA12_A2_yAA5ColorVSgGGG_A21_tGAZGSg_A24_tGG_AA08BorderedpN0VQo_A2_yAA0P11BorderShapeVGGA19_GA11_GG_Qo_Md);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI10ScrollViewVyAA15ModifiedContentVyAEyAEyAA0D0PAAE11buttonStyleyQrqd__AA015PrimitiveButtonH0Rd__lFQOyAA6VStackVyAA05TupleD0VyAA7SectionVyAA012_ConditionalF0VyAA05EmptyD0VAEyAEyAEyAA4TextVAA30_EnvironmentKeyWritingModifierVyAA0P9AlignmentOGGAA16_FlexFrameLayoutVGAA08_PaddingX0VGGAMyAA0J0VyAEyA5_AWyAA5ColorVSgGGG_A14_tGASGSg_A17_tGG_AA08BorderedjH0VQo_AWyAA0J11BorderShapeVGGA12_GA4_GGMd);
  lazy protocol witness table accessor for type ScrollView<ModifiedContent<ModifiedContent<ModifiedContent<<<opaque return type of View.buttonStyle<A>(_:)>>.0, _EnvironmentKeyWritingModifier<ButtonBorderShape>>, _EnvironmentKeyWritingModifier<Color?>>, _PaddingLayout>> and conformance ScrollView<A>(&lazy protocol witness table cache variable for type ScrollView<ModifiedContent<ModifiedContent<ModifiedContent<<<opaque return type of View.buttonStyle<A>(_:)>>.0, _EnvironmentKeyWritingModifier<ButtonBorderShape>>, _EnvironmentKeyWritingModifier<Color?>>, _PaddingLayout>> and conformance ScrollView<A>, &_s7SwiftUI10ScrollViewVyAA15ModifiedContentVyAEyAEyAA0D0PAAE11buttonStyleyQrqd__AA015PrimitiveButtonH0Rd__lFQOyAA6VStackVyAA05TupleD0VyAA7SectionVyAA012_ConditionalF0VyAA05EmptyD0VAEyAEyAEyAA4TextVAA30_EnvironmentKeyWritingModifierVyAA0P9AlignmentOGGAA16_FlexFrameLayoutVGAA08_PaddingX0VGGAMyAA0J0VyAEyA5_AWyAA5ColorVSgGGG_A14_tGASGSg_A17_tGG_AA08BorderedjH0VQo_AWyAA0J11BorderShapeVGGA12_GA4_GGMd);
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeConformance2();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI11ToolbarItemVyytAA6ButtonVyAA07DefaultE5LabelVGGMd);
  lazy protocol witness table accessor for type ScrollView<ModifiedContent<ModifiedContent<ModifiedContent<<<opaque return type of View.buttonStyle<A>(_:)>>.0, _EnvironmentKeyWritingModifier<ButtonBorderShape>>, _EnvironmentKeyWritingModifier<Color?>>, _PaddingLayout>> and conformance ScrollView<A>(&lazy protocol witness table cache variable for type ToolbarItem<(), Button<DefaultButtonLabel>> and conformance ToolbarItem<A, B>, &_s7SwiftUI11ToolbarItemVyytAA6ButtonVyAA07DefaultE5LabelVGGMd);
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeConformance2();
  return NavigationStack.init<>(root:)();
}

uint64_t type metadata accessor for LocationDisambiguation()
{
  result = type metadata singleton initialization cache for LocationDisambiguation;
  if (!type metadata singleton initialization cache for LocationDisambiguation)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type LocationDisambiguation.Intent and conformance LocationDisambiguation.Intent()
{
  result = lazy protocol witness table cache variable for type LocationDisambiguation.Intent and conformance LocationDisambiguation.Intent;
  if (!lazy protocol witness table cache variable for type LocationDisambiguation.Intent and conformance LocationDisambiguation.Intent)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type LocationDisambiguation.Intent and conformance LocationDisambiguation.Intent);
  }

  return result;
}

void type metadata completion function for LocationDisambiguation()
{
  type metadata accessor for Environment<DismissAction>();
  if (v0 <= 0x3F)
  {
    type metadata accessor for WorkoutConfiguration();
    if (v1 <= 0x3F)
    {
      type metadata accessor for (())?();
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

uint64_t getEnumTagSinglePayload for LocationDisambiguation.Intent(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for LocationDisambiguation.Intent(uint64_t result, unsigned int a2, unsigned int a3)
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

unint64_t lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<ModifiedContent<<<opaque return type of View.buttonStyle<A>(_:)>>.0, _EnvironmentKeyWritingModifier<ButtonBorderShape>>, _EnvironmentKeyWritingModifier<Color?>>, _PaddingLayout> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<<<opaque return type of View.buttonStyle<A>(_:)>>.0, _EnvironmentKeyWritingModifier<ButtonBorderShape>>, _EnvironmentKeyWritingModifier<Color?>>, _PaddingLayout> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<<<opaque return type of View.buttonStyle<A>(_:)>>.0, _EnvironmentKeyWritingModifier<ButtonBorderShape>>, _EnvironmentKeyWritingModifier<Color?>>, _PaddingLayout> and conformance <> ModifiedContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyACyACyAA4ViewPAAE11buttonStyleyQrqd__AA015PrimitiveButtonG0Rd__lFQOyAA6VStackVyAA05TupleE0VyAA7SectionVyAA012_ConditionalD0VyAA05EmptyE0VACyACyACyAA4TextVAA30_EnvironmentKeyWritingModifierVyAA0O9AlignmentOGGAA16_FlexFrameLayoutVGAA08_PaddingW0VGGAKyAA0I0VyACyA3_AUyAA5ColorVSgGGG_A12_tGAQGSg_A15_tGG_AA08BorderediG0VQo_AUyAA0I11BorderShapeVGGA10_GA2_GMd);
    lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<<<opaque return type of View.buttonStyle<A>(_:)>>.0, _EnvironmentKeyWritingModifier<ButtonBorderShape>>, _EnvironmentKeyWritingModifier<Color?>> and conformance <> ModifiedContent<A, B>(&lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<<<opaque return type of View.buttonStyle<A>(_:)>>.0, _EnvironmentKeyWritingModifier<ButtonBorderShape>>, _EnvironmentKeyWritingModifier<Color?>> and conformance <> ModifiedContent<A, B>, &_s7SwiftUI15ModifiedContentVyACyAA4ViewPAAE11buttonStyleyQrqd__AA015PrimitiveButtonG0Rd__lFQOyAA6VStackVyAA05TupleE0VyAA7SectionVyAA012_ConditionalD0VyAA05EmptyE0VACyACyACyAA4TextVAA30_EnvironmentKeyWritingModifierVyAA0O9AlignmentOGGAA16_FlexFrameLayoutVGAA08_PaddingW0VGGAKyAA0I0VyACyA3_AUyAA5ColorVSgGGG_A12_tGAQGSg_A15_tGG_AA08BorderediG0VQo_AUyAA0I11BorderShapeVGGA10_GMd, &_s7SwiftUI15ModifiedContentVyACyAA4ViewPAAE11buttonStyleyQrqd__AA015PrimitiveButtonG0Rd__lFQOyAA6VStackVyAA05TupleE0VyAA7SectionVyAA012_ConditionalD0VyAA05EmptyE0VACyACyACyAA4TextVAA30_EnvironmentKeyWritingModifierVyAA0O9AlignmentOGGAA16_FlexFrameLayoutVGAA08_PaddingW0VGGAKyAA0I0VyACyA3_AUyAA5ColorVSgGGG_A12_tGAQGSg_A15_tGG_AA08BorderediG0VQo_AUyAA0I11BorderShapeVGGA10_GMR, lazy protocol witness table accessor for type ModifiedContent<<<opaque return type of View.buttonStyle<A>(_:)>>.0, _EnvironmentKeyWritingModifier<ButtonBorderShape>> and conformance <> ModifiedContent<A, B>);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<<<opaque return type of View.buttonStyle<A>(_:)>>.0, _EnvironmentKeyWritingModifier<ButtonBorderShape>>, _EnvironmentKeyWritingModifier<Color?>>, _PaddingLayout> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<<<opaque return type of View.buttonStyle<A>(_:)>>.0, _EnvironmentKeyWritingModifier<ButtonBorderShape>> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<<<opaque return type of View.buttonStyle<A>(_:)>>.0, _EnvironmentKeyWritingModifier<ButtonBorderShape>> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<<<opaque return type of View.buttonStyle<A>(_:)>>.0, _EnvironmentKeyWritingModifier<ButtonBorderShape>> and conformance <> ModifiedContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyAA4ViewPAAE11buttonStyleyQrqd__AA015PrimitiveButtonG0Rd__lFQOyAA6VStackVyAA05TupleE0VyAA7SectionVyAA012_ConditionalD0VyAA05EmptyE0VACyACyACyAA4TextVAA30_EnvironmentKeyWritingModifierVyAA0O9AlignmentOGGAA16_FlexFrameLayoutVGAA08_PaddingW0VGGAKyAA0I0VyACyA3_AUyAA5ColorVSgGGG_A12_tGAQGSg_A15_tGG_AA08BorderediG0VQo_AUyAA0I11BorderShapeVGGMd);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI6VStackVyAA9TupleViewVyAA7SectionVyAA19_ConditionalContentVyAA05EmptyE0VAA08ModifiedH0VyAMyAMyAA4TextVAA30_EnvironmentKeyWritingModifierVyAA0K9AlignmentOGGAA16_FlexFrameLayoutVGAA08_PaddingS0VGGAEyAA6ButtonVyAMyA_AQyAA5ColorVSgGGG_A8_tGAKGSg_A11_tGGMd);
    type metadata accessor for BorderedButtonStyle();
    lazy protocol witness table accessor for type ScrollView<ModifiedContent<ModifiedContent<ModifiedContent<<<opaque return type of View.buttonStyle<A>(_:)>>.0, _EnvironmentKeyWritingModifier<ButtonBorderShape>>, _EnvironmentKeyWritingModifier<Color?>>, _PaddingLayout>> and conformance ScrollView<A>(&lazy protocol witness table cache variable for type VStack<TupleView<(Section<_ConditionalContent<EmptyView, ModifiedContent<ModifiedContent<ModifiedContent<Text, _EnvironmentKeyWritingModifier<TextAlignment>>, _FlexFrameLayout>, _PaddingLayout>>, TupleView<(Button<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Text, _EnvironmentKeyWritingModifier<TextAlignment>>, _FlexFrameLayout>, _PaddingLayout>, _EnvironmentKeyWritingModifier<Color?>>>, Button<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Text, _EnvironmentKeyWritingModifier<TextAlignment>>, _FlexFrameLayout>, _PaddingLayout>, _EnvironmentKeyWritingModifier<Color?>>>)>, EmptyView>?, Section<_ConditionalContent<EmptyView, ModifiedContent<ModifiedContent<ModifiedContent<Text, _EnvironmentKeyWritingModifier<TextAlignment>>, _FlexFrameLayout>, _PaddingLayout>>, TupleView<(Button<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Text, _EnvironmentKeyWritingModifier<TextAlignment>>, _FlexFrameLayout>, _PaddingLa, &_s7SwiftUI6VStackVyAA9TupleViewVyAA7SectionVyAA19_ConditionalContentVyAA05EmptyE0VAA08ModifiedH0VyAMyAMyAA4TextVAA30_EnvironmentKeyWritingModifierVyAA0K9AlignmentOGGAA16_FlexFrameLayoutVGAA08_PaddingS0VGGAEyAA6ButtonVyAMyA_AQyAA5ColorVSgGGG_A8_tGAKGSg_A11_tGGMd);
    lazy protocol witness table accessor for type BorderedButtonStyle and conformance BorderedButtonStyle(&lazy protocol witness table cache variable for type BorderedButtonStyle and conformance BorderedButtonStyle, MEMORY[0x277CDDEE0]);
    swift_getOpaqueTypeConformance2();
    lazy protocol witness table accessor for type ScrollView<ModifiedContent<ModifiedContent<ModifiedContent<<<opaque return type of View.buttonStyle<A>(_:)>>.0, _EnvironmentKeyWritingModifier<ButtonBorderShape>>, _EnvironmentKeyWritingModifier<Color?>>, _PaddingLayout>> and conformance ScrollView<A>(&lazy protocol witness table cache variable for type _EnvironmentKeyWritingModifier<ButtonBorderShape> and conformance _EnvironmentKeyWritingModifier<A>, &_s7SwiftUI30_EnvironmentKeyWritingModifierVyAA17ButtonBorderShapeVGMd);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<<<opaque return type of View.buttonStyle<A>(_:)>>.0, _EnvironmentKeyWritingModifier<ButtonBorderShape>> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

uint64_t outlined init with copy of LocationDisambiguation(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for LocationDisambiguation();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t outlined init with take of LocationDisambiguation(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for LocationDisambiguation();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t partial apply for closure #1 in closure #1 in closure #1 in closure #1 in LocationDisambiguation.body.getter()
{
  v1 = *(type metadata accessor for LocationDisambiguation() - 8);
  v2 = v0 + ((*(v1 + 80) + 16) & ~*(v1 + 80));

  return closure #1 in closure #1 in closure #1 in closure #1 in LocationDisambiguation.body.getter(v2);
}

uint64_t _s7SwiftUI11EnvironmentV7ContentOyAA13DismissActionV_GWOcTm_0(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(a3);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

unint64_t lazy protocol witness table accessor for type _ConditionalContent<EmptyView, ModifiedContent<ModifiedContent<ModifiedContent<Text, _EnvironmentKeyWritingModifier<TextAlignment>>, _FlexFrameLayout>, _PaddingLayout>> and conformance <> _ConditionalContent<A, B>()
{
  result = lazy protocol witness table cache variable for type _ConditionalContent<EmptyView, ModifiedContent<ModifiedContent<ModifiedContent<Text, _EnvironmentKeyWritingModifier<TextAlignment>>, _FlexFrameLayout>, _PaddingLayout>> and conformance <> _ConditionalContent<A, B>;
  if (!lazy protocol witness table cache variable for type _ConditionalContent<EmptyView, ModifiedContent<ModifiedContent<ModifiedContent<Text, _EnvironmentKeyWritingModifier<TextAlignment>>, _FlexFrameLayout>, _PaddingLayout>> and conformance <> _ConditionalContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI19_ConditionalContentVyAA9EmptyViewVAA08ModifiedD0VyAGyAGyAA4TextVAA30_EnvironmentKeyWritingModifierVyAA0H9AlignmentOGGAA16_FlexFrameLayoutVGAA08_PaddingP0VGGMd);
    lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<ModifiedContent<Text, _EnvironmentKeyWritingModifier<TextAlignment>>, _FlexFrameLayout>, _PaddingLayout> and conformance <> ModifiedContent<A, B>();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type _ConditionalContent<EmptyView, ModifiedContent<ModifiedContent<ModifiedContent<Text, _EnvironmentKeyWritingModifier<TextAlignment>>, _FlexFrameLayout>, _PaddingLayout>> and conformance <> _ConditionalContent<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<ModifiedContent<Text, _EnvironmentKeyWritingModifier<TextAlignment>>, _FlexFrameLayout>, _PaddingLayout> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<Text, _EnvironmentKeyWritingModifier<TextAlignment>>, _FlexFrameLayout>, _PaddingLayout> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<Text, _EnvironmentKeyWritingModifier<TextAlignment>>, _FlexFrameLayout>, _PaddingLayout> and conformance <> ModifiedContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyACyACyAA4TextVAA30_EnvironmentKeyWritingModifierVyAA0E9AlignmentOGGAA16_FlexFrameLayoutVGAA08_PaddingM0VGMd);
    lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<Text, _EnvironmentKeyWritingModifier<TextAlignment>>, _FlexFrameLayout> and conformance <> ModifiedContent<A, B>();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<Text, _EnvironmentKeyWritingModifier<TextAlignment>>, _FlexFrameLayout>, _PaddingLayout> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

uint64_t lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<<<opaque return type of View.buttonStyle<A>(_:)>>.0, _EnvironmentKeyWritingModifier<ButtonBorderShape>>, _EnvironmentKeyWritingModifier<Color?>> and conformance <> ModifiedContent<A, B>(unint64_t *a1, uint64_t *a2, uint64_t a3, void (*a4)(void))
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2);
    a4();
    lazy protocol witness table accessor for type ScrollView<ModifiedContent<ModifiedContent<ModifiedContent<<<opaque return type of View.buttonStyle<A>(_:)>>.0, _EnvironmentKeyWritingModifier<ButtonBorderShape>>, _EnvironmentKeyWritingModifier<Color?>>, _PaddingLayout>> and conformance ScrollView<A>(&lazy protocol witness table cache variable for type _EnvironmentKeyWritingModifier<Color?> and conformance _EnvironmentKeyWritingModifier<A>, &_s7SwiftUI30_EnvironmentKeyWritingModifierVyAA5ColorVSgGMd);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t partial apply for closure #1 in LocationDisambiguation.disambiguateWorkoutConfiguration(location:swimmingLocation:)()
{
  v1 = type metadata accessor for LocationDisambiguation();
  v4 = *(v1 - 8);
  result = v1 - 8;
  v3 = v4;
  v5 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v6 = (v0 + *(result + 36) + v5);
  if (*v6)
  {
    return (*v6)(*(v0 + ((*(v3 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8)));
  }

  return result;
}

uint64_t block_copy_helper_13(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t lazy protocol witness table accessor for type BorderedButtonStyle and conformance BorderedButtonStyle(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t lazy protocol witness table accessor for type ScrollView<ModifiedContent<ModifiedContent<ModifiedContent<<<opaque return type of View.buttonStyle<A>(_:)>>.0, _EnvironmentKeyWritingModifier<ButtonBorderShape>>, _EnvironmentKeyWritingModifier<Color?>>, _PaddingLayout>> and conformance ScrollView<A>(unint64_t *a1, uint64_t *a2)
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

uint64_t objectdestroy_21Tm()
{
  v1 = type metadata accessor for LocationDisambiguation();
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

  if (*(v3 + *(v1 + 28)))
  {
  }

  return swift_deallocObject();
}

uint64_t WorkoutStepRow.init(step:formattingManager:referenceStep:)@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t *a3@<X8>)
{
  type metadata accessor for WorkoutStep();
  lazy protocol witness table accessor for type WorkoutStep and conformance WorkoutStep();
  result = ObservedObject.init(wrappedValue:)();
  *a3 = result;
  a3[1] = v7;
  a3[2] = a1;
  a3[3] = a2;
  return result;
}

unint64_t lazy protocol witness table accessor for type WorkoutStep and conformance WorkoutStep()
{
  result = lazy protocol witness table cache variable for type WorkoutStep and conformance WorkoutStep;
  if (!lazy protocol witness table cache variable for type WorkoutStep and conformance WorkoutStep)
  {
    type metadata accessor for WorkoutStep();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type WorkoutStep and conformance WorkoutStep);
  }

  return result;
}

uint64_t WorkoutStepRow.body.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = type metadata accessor for StepType();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v43 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v9 = &v43 - v8;
  v10 = *(v1 + 16);
  v47 = *(v1 + 24);

  v11 = WorkoutStep.displayString.getter();
  v50 = v12;
  v51 = v11;
  v13 = WorkoutStep.goal.getter();
  v14 = WorkoutStep.activityType.getter();

  FIUIDistanceTypeForActivityType();

  v15 = NLSessionActivityGoal.intervalDisplayString(formattingManager:distanceType:)();
  v48 = v16;
  v49 = v15;

  v17 = WorkoutStep.goal.getter();
  v18 = WorkoutStep.activityType.getter();

  FIUIDistanceTypeForActivityType();

  v52 = v10;
  v19 = NLSessionActivityGoal.intervalAXSpokenString(formattingManager:distanceType:)();
  v21 = v20;

  WorkoutStep.stepType.getter();

  (*(v4 + 16))(v6, v9, v3);
  v22 = (*(v4 + 88))(v6, v3);
  if (v22 == *MEMORY[0x277D7E710] || v22 == *MEMORY[0x277D7E708] || v22 == *MEMORY[0x277D7E718] || v22 == *MEMORY[0x277D7E720])
  {
    (*(v4 + 8))(v9, v3);
    v46 = Image.init(_internalSystemName:)();

    v23 = WorkoutStep.goal.getter();

    if (NLSessionActivityGoal.isTimeAndDistanceGoal()())
    {
      [objc_allocWithZone(MEMORY[0x277D75348]) initWithDisplayP3Red:0.458823529 green:0.898039216 blue:0.898039216 alpha:1.0];
    }

    else
    {
      _HKWorkoutGoalType.color.getter([v23 goalTypeIdentifier]);
    }

    v24 = Color.init(uiColor:)();
    v25 = WorkoutStep.activeTargetZoneLabel(formattingManager:)();
    v27 = v26;
    if (v26)
    {
      v45 = v25;
      result = Image.init(_internalSystemName:)();
      v29 = v47;
      if (v47)
      {
LABEL_8:
        v43 = result;
        v30 = WorkoutStep.goal.getter();
        v47 = v19;
        v31 = v30;

        v32 = WorkoutStep.activityType.getter();

        FIUIDistanceTypeForActivityType();

        v44 = v27;
        v33 = NLSessionActivityGoal.intervalDisplayString(formattingManager:distanceType:)();
        v35 = v34;

        v36 = WorkoutStep.goal.getter();

        v37 = WorkoutStep.activityType.getter();

        FIUIDistanceTypeForActivityType();

        v27 = v44;
        v38 = NLSessionActivityGoal.intervalAXSpokenString(formattingManager:distanceType:)();
        v29 = v39;

        result = v43;
        v19 = v47;
LABEL_11:
        v40 = v50;
        *a1 = v51;
        *(a1 + 8) = v40;
        v41 = v48;
        *(a1 + 16) = v49;
        *(a1 + 24) = v41;
        *(a1 + 32) = v19;
        *(a1 + 40) = v21;
        v42 = v45;
        *(a1 + 48) = v46;
        *(a1 + 56) = v24;
        *(a1 + 64) = result;
        *(a1 + 72) = v42;
        *(a1 + 80) = v27;
        *(a1 + 88) = 0;
        *(a1 + 96) = v33;
        *(a1 + 104) = v35;
        *(a1 + 112) = v38;
        *(a1 + 120) = v29;
        return result;
      }
    }

    else
    {
      result = 0;
      v45 = 0;
      v29 = v47;
      if (v47)
      {
        goto LABEL_8;
      }
    }

    v38 = 0;
    v33 = 0;
    v35 = 0;
    goto LABEL_11;
  }

  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

uint64_t WorkoutSkippingStepRow.init(stepType:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for StepType();
  v5 = *(*(v4 - 8) + 32);

  return v5(a2, a1, v4);
}

uint64_t WorkoutSkippingStepRow.body.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = type metadata accessor for StepType();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v17 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = StepType.displayString.getter();
  v19 = v7;
  if (one-time initialization token for WorkoutUIBundle != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v8 = WorkoutUIBundle.super.isa;
  v20._object = 0xE000000000000000;
  v9.value._countAndFlagsBits = 0x617A696C61636F4CLL;
  v9.value._object = 0xEB00000000656C62;
  v10._countAndFlagsBits = 0xD000000000000012;
  v10._object = 0x800000020CB975F0;
  v11._countAndFlagsBits = 0;
  v11._object = 0xE000000000000000;
  v20._countAndFlagsBits = 0;
  v12 = NSLocalizedString(_:tableName:bundle:value:comment:)(v10, v9, v8, v11, v20);

  (*(v4 + 16))(v6, v1, v3);
  v13 = (*(v4 + 88))(v6, v3);
  if (v13 == *MEMORY[0x277D7E710] || v13 == *MEMORY[0x277D7E708] || v13 == *MEMORY[0x277D7E718] || v13 == *MEMORY[0x277D7E720])
  {
    v14 = Image.init(_internalSystemName:)();
    result = static Color.gray.getter();
    v16 = v19;
    *a1 = v18;
    *(a1 + 8) = v16;
    *(a1 + 16) = v12;
    *(a1 + 32) = 0;
    *(a1 + 40) = 0;
    *(a1 + 48) = v14;
    *(a1 + 56) = result;
    *(a1 + 72) = 0;
    *(a1 + 80) = 0;
    *(a1 + 64) = 0;
    *(a1 + 88) = 0;
    *(a1 + 96) = 0u;
    *(a1 + 112) = 0u;
  }

  else
  {
    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  return result;
}

uint64_t closure #1 in WorkoutStepBaseRow.titleContent()@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI6HStackVyAA9TupleViewVyAA4TextV_AEyAA6SpacerV_ACyAEyAA15ModifiedContentVyAKyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAM5ScaleOGGAA023AccessibilityAttachmentN0VG_AGtGGtGSgtGGMd);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v40[-v5];
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyAA6HStackVyAA9TupleViewVyAA4TextV_AGyAA6SpacerV_AEyAGyACyACyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAM5ScaleOGGAA023AccessibilityAttachmentN0VG_AItGGtGSgtGGAOyAA4FontVSgGGMd);
  MEMORY[0x28223BE20](v7);
  v9 = &v40[-v8];
  v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyACyAA6HStackVyAA9TupleViewVyAA4TextV_AGyAA6SpacerV_AEyAGyACyACyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAM5ScaleOGGAA023AccessibilityAttachmentN0VG_AItGGtGSgtGGAOyAA4FontVSgGGAOyAA5ColorVSgGGMd);
  MEMORY[0x28223BE20](v42);
  v11 = &v40[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v12);
  v14 = &v40[-v13];
  MEMORY[0x28223BE20](v15);
  v17 = &v40[-v16];
  v18 = a1[1];
  v49 = *a1;
  v50 = v18;
  lazy protocol witness table accessor for type String and conformance String();

  v19 = Text.init<A>(_:)();
  v45 = v20;
  v46 = v19;
  v41 = v21;
  v48 = v22;
  v47 = static Color.white.getter();
  v23 = static Platform.current.getter();
  v44 = Platform.intervalViewingFont.getter(v23 & 1);
  KeyPath = swift_getKeyPath();
  *v6 = static VerticalAlignment.center.getter();
  *(v6 + 1) = 0;
  v6[16] = 1;
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI13_VariadicViewO4TreeVy_AA13_HStackLayoutVAA05TupleD0VyAA4TextV_AIyAA6SpacerV_AA0F0VyAIyAA15ModifiedContentVyAQyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAS5ScaleOGGAA023AccessibilityAttachmentQ0VG_AKtGGtGSgtGGMd);
  closure #1 in closure #1 in WorkoutStepBaseRow.titleContent()(a1, &v6[*(v24 + 44)]);
  LOBYTE(v18) = *(a1 + 88);
  v25 = static Font.body.getter();
  if (v18)
  {
    v26 = Font.lowercaseSmallCaps()();

    v25 = v26;
  }

  v27 = swift_getKeyPath();
  outlined init with take of HStack<TupleView<(Text, TupleView<(Spacer, HStack<TupleView<(ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Image.Scale>>, AccessibilityAttachmentModifier>, Text)>>)>?)>>(v6, v9, &_s7SwiftUI6HStackVyAA9TupleViewVyAA4TextV_AEyAA6SpacerV_ACyAEyAA15ModifiedContentVyAKyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAM5ScaleOGGAA023AccessibilityAttachmentN0VG_AGtGGtGSgtGGMd);
  v28 = &v9[*(v7 + 36)];
  *v28 = v27;
  v28[1] = v25;
  v29 = static Color.secondary.getter();
  v30 = swift_getKeyPath();
  outlined init with take of HStack<TupleView<(Text, TupleView<(Spacer, HStack<TupleView<(ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Image.Scale>>, AccessibilityAttachmentModifier>, Text)>>)>?)>>(v9, v14, &_s7SwiftUI15ModifiedContentVyAA6HStackVyAA9TupleViewVyAA4TextV_AGyAA6SpacerV_AEyAGyACyACyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAM5ScaleOGGAA023AccessibilityAttachmentN0VG_AItGGtGSgtGGAOyAA4FontVSgGGMd);
  v31 = &v14[*(v42 + 9)];
  *v31 = v30;
  v31[1] = v29;
  outlined init with take of HStack<TupleView<(Text, TupleView<(Spacer, HStack<TupleView<(ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Image.Scale>>, AccessibilityAttachmentModifier>, Text)>>)>?)>>(v14, v17, &_s7SwiftUI15ModifiedContentVyACyAA6HStackVyAA9TupleViewVyAA4TextV_AGyAA6SpacerV_AEyAGyACyACyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAM5ScaleOGGAA023AccessibilityAttachmentN0VG_AItGGtGSgtGGAOyAA4FontVSgGGAOyAA5ColorVSgGGMd);
  outlined init with copy of ModifiedContent<ModifiedContent<HStack<TupleView<(Text, TupleView<(Spacer, HStack<TupleView<(ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Image.Scale>>, AccessibilityAttachmentModifier>, Text)>>)>?)>>, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyWritingModifier<Color?>>(v17, v11, &_s7SwiftUI15ModifiedContentVyACyAA6HStackVyAA9TupleViewVyAA4TextV_AGyAA6SpacerV_AEyAGyACyACyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAM5ScaleOGGAA023AccessibilityAttachmentN0VG_AItGGtGSgtGGAOyAA4FontVSgGGAOyAA5ColorVSgGGMd);
  v32 = v46;
  v33 = v47;
  v34 = v11;
  v35 = v45;
  *a2 = v46;
  *(a2 + 8) = v35;
  v36 = v41 & 1;
  *(a2 + 16) = v41 & 1;
  *(a2 + 24) = v48;
  *(a2 + 32) = v33;
  v42 = v17;
  v37 = v44;
  *(a2 + 40) = KeyPath;
  *(a2 + 48) = v37;
  v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyACyACyAA4TextV07WorkoutB017HeaderHyphenationVGAA24_ForegroundStyleModifierVyAA5ColorVGGAA022_EnvironmentKeyWritingK0VyAA4FontVSgGG_ACyACyAA6HStackVyAA9TupleViewVyAE_AZyAA6SpacerV_AXyAZyACyACyAA5ImageVAQyA2_5ScaleOGGAA023AccessibilityAttachmentK0VG_AEtGGtGSgtGGAUGAQyAMSgGGtMd);
  outlined init with copy of ModifiedContent<ModifiedContent<HStack<TupleView<(Text, TupleView<(Spacer, HStack<TupleView<(ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Image.Scale>>, AccessibilityAttachmentModifier>, Text)>>)>?)>>, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyWritingModifier<Color?>>(v34, a2 + *(v38 + 48), &_s7SwiftUI15ModifiedContentVyACyAA6HStackVyAA9TupleViewVyAA4TextV_AGyAA6SpacerV_AEyAGyACyACyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAM5ScaleOGGAA023AccessibilityAttachmentN0VG_AItGGtGSgtGGAOyAA4FontVSgGGAOyAA5ColorVSgGGMd);
  outlined copy of Text.Storage(v32, v35, v36);

  outlined destroy of ModifiedContent<ModifiedContent<HStack<TupleView<(Text, TupleView<(Spacer, HStack<TupleView<(ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Image.Scale>>, AccessibilityAttachmentModifier>, Text)>>)>?)>>, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyWritingModifier<Color?>>(v42, &_s7SwiftUI15ModifiedContentVyACyAA6HStackVyAA9TupleViewVyAA4TextV_AGyAA6SpacerV_AEyAGyACyACyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAM5ScaleOGGAA023AccessibilityAttachmentN0VG_AItGGtGSgtGGAOyAA4FontVSgGGAOyAA5ColorVSgGGMd);
  outlined destroy of ModifiedContent<ModifiedContent<HStack<TupleView<(Text, TupleView<(Spacer, HStack<TupleView<(ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Image.Scale>>, AccessibilityAttachmentModifier>, Text)>>)>?)>>, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyWritingModifier<Color?>>(v34, &_s7SwiftUI15ModifiedContentVyACyAA6HStackVyAA9TupleViewVyAA4TextV_AGyAA6SpacerV_AEyAGyACyACyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAM5ScaleOGGAA023AccessibilityAttachmentN0VG_AItGGtGSgtGGAOyAA4FontVSgGGAOyAA5ColorVSgGGMd);
  outlined consume of Text.Storage(v32, v35, v36);
}

uint64_t closure #1 in closure #1 in WorkoutStepBaseRow.titleContent()@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v44 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI9TupleViewVyAA6SpacerV_AA6HStackVyACyAA15ModifiedContentVyAIyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAK5ScaleOGGAA023AccessibilityAttachmentM0VG_AA4TextVtGGtGMd);
  v43 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v5 = &v37 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI6HStackVyAA9TupleViewVyAA15ModifiedContentVyAGyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAI5ScaleOGGAA023AccessibilityAttachmentL0VG_AA4TextVtGGMd);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v37 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v11 = &v37 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI9TupleViewVyAA6SpacerV_AA6HStackVyACyAA15ModifiedContentVyAIyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAK5ScaleOGGAA023AccessibilityAttachmentM0VG_AA4TextVtGGtGSgMd);
  MEMORY[0x28223BE20](v12 - 8);
  v14 = &v37 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v17 = &v37 - v16;
  v18 = a1[3];
  v45 = a1[2];
  v46 = v18;
  lazy protocol witness table accessor for type String and conformance String();

  v19 = Text.init<A>(_:)();
  v41 = v21;
  v42 = v19;
  v40 = v22;
  v23 = v20;
  v24 = a1[8];
  v25 = 1;
  if (v24)
  {
    v38 = v20;
    v28 = a1 + 9;
    v26 = a1[9];
    v27 = v28[1];

    *v11 = static VerticalAlignment.center.getter();
    *(v11 + 1) = 0x3FF0000000000000;
    v11[16] = 0;
    v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI13_VariadicViewO4TreeVy_AA13_HStackLayoutVAA05TupleD0VyAA15ModifiedContentVyAKyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAM5ScaleOGGAA023AccessibilityAttachmentO0VG_AA4TextVtGGMd);
    closure #1 in closure #1 in closure #1 in WorkoutStepBaseRow.titleContent()(v24, v26, v27, &v11[*(v29 + 44)]);
    v39 = v3;
    outlined init with copy of ModifiedContent<ModifiedContent<HStack<TupleView<(Text, TupleView<(Spacer, HStack<TupleView<(ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Image.Scale>>, AccessibilityAttachmentModifier>, Text)>>)>?)>>, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyWritingModifier<Color?>>(v11, v8, &_s7SwiftUI6HStackVyAA9TupleViewVyAA15ModifiedContentVyAGyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAI5ScaleOGGAA023AccessibilityAttachmentL0VG_AA4TextVtGGMd);
    *v5 = 0;
    v5[8] = 1;
    v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI6SpacerV_AA6HStackVyAA9TupleViewVyAA15ModifiedContentVyAIyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAK5ScaleOGGAA023AccessibilityAttachmentM0VG_AA4TextVtGGtMd);
    outlined init with copy of ModifiedContent<ModifiedContent<HStack<TupleView<(Text, TupleView<(Spacer, HStack<TupleView<(ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Image.Scale>>, AccessibilityAttachmentModifier>, Text)>>)>?)>>, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyWritingModifier<Color?>>(v8, &v5[*(v30 + 48)], &_s7SwiftUI6HStackVyAA9TupleViewVyAA15ModifiedContentVyAGyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAI5ScaleOGGAA023AccessibilityAttachmentL0VG_AA4TextVtGGMd);
    v23 = v38;

    outlined destroy of ModifiedContent<ModifiedContent<HStack<TupleView<(Text, TupleView<(Spacer, HStack<TupleView<(ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Image.Scale>>, AccessibilityAttachmentModifier>, Text)>>)>?)>>, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyWritingModifier<Color?>>(v11, &_s7SwiftUI6HStackVyAA9TupleViewVyAA15ModifiedContentVyAGyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAI5ScaleOGGAA023AccessibilityAttachmentL0VG_AA4TextVtGGMd);
    v3 = v39;
    outlined destroy of ModifiedContent<ModifiedContent<HStack<TupleView<(Text, TupleView<(Spacer, HStack<TupleView<(ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Image.Scale>>, AccessibilityAttachmentModifier>, Text)>>)>?)>>, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyWritingModifier<Color?>>(v8, &_s7SwiftUI6HStackVyAA9TupleViewVyAA15ModifiedContentVyAGyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAI5ScaleOGGAA023AccessibilityAttachmentL0VG_AA4TextVtGGMd);
    outlined init with take of HStack<TupleView<(Text, TupleView<(Spacer, HStack<TupleView<(ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Image.Scale>>, AccessibilityAttachmentModifier>, Text)>>)>?)>>(v5, v17, &_s7SwiftUI9TupleViewVyAA6SpacerV_AA6HStackVyACyAA15ModifiedContentVyAIyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAK5ScaleOGGAA023AccessibilityAttachmentM0VG_AA4TextVtGGtGMd);
    v25 = 0;
  }

  (*(v43 + 56))(v17, v25, 1, v3);
  outlined init with copy of ModifiedContent<ModifiedContent<HStack<TupleView<(Text, TupleView<(Spacer, HStack<TupleView<(ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Image.Scale>>, AccessibilityAttachmentModifier>, Text)>>)>?)>>, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyWritingModifier<Color?>>(v17, v14, &_s7SwiftUI9TupleViewVyAA6SpacerV_AA6HStackVyACyAA15ModifiedContentVyAIyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAK5ScaleOGGAA023AccessibilityAttachmentM0VG_AA4TextVtGGtGSgMd);
  v31 = v44;
  v33 = v41;
  v32 = v42;
  *v44 = v42;
  v31[1] = v33;
  v34 = v40 & 1;
  *(v31 + 16) = v40 & 1;
  v31[3] = v23;
  v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI4TextV_AA9TupleViewVyAA6SpacerV_AA6HStackVyAEyAA15ModifiedContentVyAKyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAM5ScaleOGGAA023AccessibilityAttachmentN0VG_ACtGGtGSgtMd);
  outlined init with copy of ModifiedContent<ModifiedContent<HStack<TupleView<(Text, TupleView<(Spacer, HStack<TupleView<(ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Image.Scale>>, AccessibilityAttachmentModifier>, Text)>>)>?)>>, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyWritingModifier<Color?>>(v14, v31 + *(v35 + 48), &_s7SwiftUI9TupleViewVyAA6SpacerV_AA6HStackVyACyAA15ModifiedContentVyAIyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAK5ScaleOGGAA023AccessibilityAttachmentM0VG_AA4TextVtGGtGSgMd);
  outlined copy of Text.Storage(v32, v33, v34);

  outlined destroy of ModifiedContent<ModifiedContent<HStack<TupleView<(Text, TupleView<(Spacer, HStack<TupleView<(ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Image.Scale>>, AccessibilityAttachmentModifier>, Text)>>)>?)>>, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyWritingModifier<Color?>>(v17, &_s7SwiftUI9TupleViewVyAA6SpacerV_AA6HStackVyACyAA15ModifiedContentVyAIyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAK5ScaleOGGAA023AccessibilityAttachmentM0VG_AA4TextVtGGtGSgMd);
  outlined destroy of ModifiedContent<ModifiedContent<HStack<TupleView<(Text, TupleView<(Spacer, HStack<TupleView<(ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Image.Scale>>, AccessibilityAttachmentModifier>, Text)>>)>?)>>, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyWritingModifier<Color?>>(v14, &_s7SwiftUI9TupleViewVyAA6SpacerV_AA6HStackVyACyAA15ModifiedContentVyAIyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAK5ScaleOGGAA023AccessibilityAttachmentM0VG_AA4TextVtGGtGSgMd);
  outlined consume of Text.Storage(v32, v33, v34);
}

uint64_t closure #1 in closure #1 in closure #1 in WorkoutStepBaseRow.titleContent()@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v29 = a2;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAE5ScaleOGGMd);
  MEMORY[0x28223BE20](v7);
  v9 = (&v28 - v8);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyACyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAE5ScaleOGGAA023AccessibilityAttachmentI0VGMd);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v28 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v15 = &v28 - v14;
  v16 = (v9 + *(v7 + 36));
  v17 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI30_EnvironmentKeyWritingModifierVyAA5ImageV5ScaleOGMd) + 28);
  v18 = *MEMORY[0x277CE1050];
  v19 = type metadata accessor for Image.Scale();
  (*(*(v19 - 8) + 104))(v16 + v17, v18, v19);
  *v16 = swift_getKeyPath();
  *v9 = a1;
  lazy protocol witness table accessor for type ModifiedContent<Image, _EnvironmentKeyWritingModifier<Image.Scale>> and conformance <> ModifiedContent<A, B>();

  View.accessibilityHidden(_:)();
  outlined destroy of ModifiedContent<ModifiedContent<HStack<TupleView<(Text, TupleView<(Spacer, HStack<TupleView<(ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Image.Scale>>, AccessibilityAttachmentModifier>, Text)>>)>?)>>, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyWritingModifier<Color?>>(v9, &_s7SwiftUI15ModifiedContentVyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAE5ScaleOGGMd);
  v30 = v29;
  v31 = a3;
  lazy protocol witness table accessor for type String and conformance String();

  v20 = Text.init<A>(_:)();
  v22 = v21;
  LOBYTE(v18) = v23;
  v25 = v24;
  outlined init with copy of ModifiedContent<ModifiedContent<HStack<TupleView<(Text, TupleView<(Spacer, HStack<TupleView<(ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Image.Scale>>, AccessibilityAttachmentModifier>, Text)>>)>?)>>, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyWritingModifier<Color?>>(v15, v12, &_s7SwiftUI15ModifiedContentVyACyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAE5ScaleOGGAA023AccessibilityAttachmentI0VGMd);
  outlined init with copy of ModifiedContent<ModifiedContent<HStack<TupleView<(Text, TupleView<(Spacer, HStack<TupleView<(ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Image.Scale>>, AccessibilityAttachmentModifier>, Text)>>)>?)>>, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyWritingModifier<Color?>>(v12, a4, &_s7SwiftUI15ModifiedContentVyACyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAE5ScaleOGGAA023AccessibilityAttachmentI0VGMd);
  v26 = a4 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyACyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAE5ScaleOGGAA023AccessibilityAttachmentI0VG_AA4TextVtMd) + 48);
  *v26 = v20;
  *(v26 + 8) = v22;
  *(v26 + 16) = v18 & 1;
  *(v26 + 24) = v25;
  outlined copy of Text.Storage(v20, v22, v18 & 1);

  outlined destroy of ModifiedContent<ModifiedContent<HStack<TupleView<(Text, TupleView<(Spacer, HStack<TupleView<(ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Image.Scale>>, AccessibilityAttachmentModifier>, Text)>>)>?)>>, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyWritingModifier<Color?>>(v15, &_s7SwiftUI15ModifiedContentVyACyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAE5ScaleOGGAA023AccessibilityAttachmentI0VGMd);
  outlined consume of Text.Storage(v20, v22, v18 & 1);

  return outlined destroy of ModifiedContent<ModifiedContent<HStack<TupleView<(Text, TupleView<(Spacer, HStack<TupleView<(ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Image.Scale>>, AccessibilityAttachmentModifier>, Text)>>)>?)>>, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyWritingModifier<Color?>>(v12, &_s7SwiftUI15ModifiedContentVyACyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAE5ScaleOGGAA023AccessibilityAttachmentI0VGMd);
}

uint64_t protocol witness for View.body.getter in conformance WorkoutStepBaseRow@<X0>(void *a1@<X8>)
{
  v3 = v1[5];
  v23 = v1[4];
  v24 = v3;
  v4 = v1[7];
  v25 = v1[6];
  v26 = v4;
  v5 = v1[1];
  v21[0] = *v1;
  v21[1] = v5;
  v6 = v1[3];
  v21[2] = v1[2];
  v22 = v6;
  v7 = static VerticalAlignment.firstTextBaseline.getter();
  v8 = v22;
  v27 = v22;
  v9 = (a1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAE5ScaleOGGMd) + 36));
  v10 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI30_EnvironmentKeyWritingModifierVyAA5ImageV5ScaleOGMd) + 28);
  v11 = *MEMORY[0x277CE1050];
  v12 = type metadata accessor for Image.Scale();
  (*(*(v12 - 8) + 104))(v9 + v10, v11, v12);
  *v9 = swift_getKeyPath();
  *a1 = v8;
  v13 = *(&v22 + 1);
  KeyPath = swift_getKeyPath();
  v15 = (a1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyACyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAE5ScaleOGGAGyAA5ColorVSgGGMd) + 36));
  *v15 = KeyPath;
  v15[1] = v13;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9WorkoutUI34AlignedLeadingAccessoryContentViewVy05SwiftB008ModifiedF0VyAFyAD5ImageVAD30_EnvironmentKeyWritingModifierVyAH5ScaleOGGAJyAD5ColorVSgGGAFyAD6VStackVyAD05TupleG0VyAFyAFyAFyAD4TextVAA17HeaderHyphenationVGAD016_ForegroundStyleN0VyAPGGAJyAD4FontVSgGG_AFyAFyAD6HStackVyAWyAY_AWyAD6SpacerV_A11_yAWyAFyAnD023AccessibilityAttachmentN0VG_AYtGGtGSgtGGA8_GARGtGGA_GGMd);
  v17 = a1 + v16[13];
  outlined init with copy of Image(&v27, v20);

  *v17 = static HorizontalAlignment.leading.getter();
  *(v17 + 1) = 0;
  v17[16] = 1;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI13_VariadicViewO4TreeVy_AA13_VStackLayoutVAA05TupleD0VyAA15ModifiedContentVyAKyAKyAA4TextV07WorkoutB017HeaderHyphenationVGAA24_ForegroundStyleModifierVyAA5ColorVGGAA022_EnvironmentKeyWritingQ0VyAA4FontVSgGG_AKyAKyAA6HStackVyAIyAM_AIyAA6SpacerV_A4_yAIyAKyAKyAA5ImageVAYyA8_5ScaleOGGAA023AccessibilityAttachmentQ0VG_AMtGGtGSgtGGA1_GAYyAUSgGGtGGMd);
  result = closure #1 in WorkoutStepBaseRow.titleContent()(v21, &v17[*(v18 + 44)]);
  *(a1 + v16[14]) = 0x4022000000000000;
  *(a1 + v16[15]) = v7;
  return result;
}

uint64_t getEnumTagSinglePayload for WorkoutStepRow(uint64_t a1, int a2)
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

uint64_t storeEnumTagSinglePayload for WorkoutStepRow(uint64_t result, int a2, int a3)
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

uint64_t type metadata accessor for WorkoutSkippingStepRow()
{
  result = type metadata singleton initialization cache for WorkoutSkippingStepRow;
  if (!type metadata singleton initialization cache for WorkoutSkippingStepRow)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t type metadata completion function for WorkoutSkippingStepRow()
{
  result = type metadata accessor for StepType();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type WorkoutStepBaseRow and conformance WorkoutStepBaseRow()
{
  result = lazy protocol witness table cache variable for type WorkoutStepBaseRow and conformance WorkoutStepBaseRow;
  if (!lazy protocol witness table cache variable for type WorkoutStepBaseRow and conformance WorkoutStepBaseRow)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type WorkoutStepBaseRow and conformance WorkoutStepBaseRow);
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_9WorkoutUI0A14StepAlertLabel33_C618D0A54EB88E7C58F508178A42876BLLVSg(uint64_t *a1)
{
  v1 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t getEnumTagSinglePayload for WorkoutStepBaseRow(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 128))
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

uint64_t storeEnumTagSinglePayload for WorkoutStepBaseRow(uint64_t result, int a2, int a3)
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
      *(result + 8) = (a2 - 1);
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

uint64_t outlined init with take of HStack<TupleView<(Text, TupleView<(Spacer, HStack<TupleView<(ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Image.Scale>>, AccessibilityAttachmentModifier>, Text)>>)>?)>>(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(a3);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t outlined init with copy of ModifiedContent<ModifiedContent<HStack<TupleView<(Text, TupleView<(Spacer, HStack<TupleView<(ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Image.Scale>>, AccessibilityAttachmentModifier>, Text)>>)>?)>>, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyWritingModifier<Color?>>(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(a3);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t outlined destroy of ModifiedContent<ModifiedContent<HStack<TupleView<(Text, TupleView<(Spacer, HStack<TupleView<(ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Image.Scale>>, AccessibilityAttachmentModifier>, Text)>>)>?)>>, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyWritingModifier<Color?>>(uint64_t a1, uint64_t *a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(a2);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t getEnumTagSinglePayload for WorkoutStepAlertLabel(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 24))
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

uint64_t storeEnumTagSinglePayload for WorkoutStepAlertLabel(uint64_t result, int a2, int a3)
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
      *result = (a2 - 1);
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

uint64_t lazy protocol witness table accessor for type _EnvironmentKeyWritingModifier<Image.Scale> and conformance _EnvironmentKeyWritingModifier<A>(unint64_t *a1, uint64_t *a2)
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

id CatalogWorkoutDetailBridge.__allocating_init(workoutDetail:)(uint64_t a1)
{
  v3 = objc_allocWithZone(v1);
  v4 = OBJC_IVAR___SMCatalogWorkoutDetail_workoutDetail;
  v5 = type metadata accessor for CatalogWorkoutDetail();
  v6 = *(v5 - 8);
  (*(v6 + 16))(&v3[v4], a1, v5);
  v9.receiver = v3;
  v9.super_class = v1;
  v7 = objc_msgSendSuper2(&v9, sel_init);
  (*(v6 + 8))(a1, v5);
  return v7;
}

id CatalogWorkoutDetailBridge.init(workoutDetail:)(uint64_t a1)
{
  ObjectType = swift_getObjectType();
  v4 = OBJC_IVAR___SMCatalogWorkoutDetail_workoutDetail;
  v5 = type metadata accessor for CatalogWorkoutDetail();
  v6 = *(v5 - 8);
  (*(v6 + 16))(&v1[v4], a1, v5);
  v9.receiver = v1;
  v9.super_class = ObjectType;
  v7 = objc_msgSendSuper2(&v9, sel_init);
  (*(v6 + 8))(a1, v5);
  return v7;
}

uint64_t CatalogWorkoutDetailBridge.assetLoadStatus.getter()
{
  v0 = CatalogWorkoutDetail.bundleLoadStatus.getter();
  if (v1 == -1)
  {
    return 5;
  }

  if (v1)
  {
    return qword_20CB6E618[v0];
  }

  return 6;
}

id CatalogWorkoutDetailBridge.workout.getter()
{
  v0 = type metadata accessor for CatalogWorkout();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v8 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  CatalogWorkoutDetail.workout.getter();
  v4 = type metadata accessor for CatalogWorkoutBridge();
  v5 = objc_allocWithZone(v4);
  (*(v1 + 16))(&v5[OBJC_IVAR___SMCatalogWorkout_workout], v3, v0);
  v5[OBJC_IVAR___SMCatalogWorkout_isPartOfAStack] = 0;
  v8.receiver = v5;
  v8.super_class = v4;
  v6 = objc_msgSendSuper2(&v8, sel_init);
  (*(v1 + 8))(v3, v0);
  return v6;
}

id CatalogWorkoutDetailBridge.mediaTypeRawValue.getter()
{
  v0 = type metadata accessor for CatalogWorkout();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v10 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  CatalogWorkoutDetail.workout.getter();
  v4 = CatalogWorkout.mediaType.getter();
  v6 = v5;
  v8 = v7;
  (*(v1 + 8))(v3, v0);
  if (v8)
  {
    return [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithInteger_];
  }

  outlined consume of PortableEnum<CatalogMediaType>(v4, v6, 0);
  return 0;
}

id CatalogWorkoutDetailBridge.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id CatalogWorkoutDetailBridge.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

id static CatalogWorkoutDetailBridge.canonical()()
{
  v1 = type metadata accessor for CatalogWorkoutDetail();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = &v8 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  static CatalogWorkoutDetail.canonical()();
  v5 = objc_allocWithZone(v0);
  (*(v2 + 16))(v5 + OBJC_IVAR___SMCatalogWorkoutDetail_workoutDetail, v4, v1);
  v8.receiver = v5;
  v8.super_class = v0;
  v6 = objc_msgSendSuper2(&v8, sel_init);
  (*(v2 + 8))(v4, v1);
  return v6;
}

uint64_t protocol witness for static Canonical.canonical() in conformance CatalogWorkoutDetailBridge@<X0>(void *a1@<X8>)
{
  v3 = type metadata accessor for CatalogWorkoutDetail();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v10 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  static CatalogWorkoutDetail.canonical()();
  v7 = objc_allocWithZone(v1);
  (*(v4 + 16))(v7 + OBJC_IVAR___SMCatalogWorkoutDetail_workoutDetail, v6, v3);
  v10.receiver = v7;
  v10.super_class = v1;
  v8 = objc_msgSendSuper2(&v10, sel_init);
  result = (*(v4 + 8))(v6, v3);
  *a1 = v8;
  return result;
}

uint64_t outlined consume of PortableEnum<CatalogMediaType>(uint64_t a1, uint64_t a2, char a3)
{
  if ((a3 & 1) == 0)
  {
  }

  return result;
}

uint64_t type metadata accessor for CatalogWorkoutDetailBridge()
{
  result = type metadata singleton initialization cache for CatalogWorkoutDetailBridge;
  if (!type metadata singleton initialization cache for CatalogWorkoutDetailBridge)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t type metadata completion function for CatalogWorkoutDetailBridge()
{
  result = type metadata accessor for CatalogWorkoutDetail();
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

uint64_t type metadata accessor for MetricPlattersView()
{
  result = type metadata singleton initialization cache for MetricPlattersView;
  if (!type metadata singleton initialization cache for MetricPlattersView)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void type metadata completion function for MetricPlattersView()
{
  type metadata accessor for MetricsPublisher();
  if (v0 <= 0x3F)
  {
    type metadata accessor for ObservedObject<PlatterPublisher>();
    if (v1 <= 0x3F)
    {
      type metadata accessor for ObservedObject<WorkoutStatePublisher>();
      if (v2 <= 0x3F)
      {
        type metadata accessor for ObservedObject<WorkoutNotificationCenter>();
        if (v3 <= 0x3F)
        {
          type metadata accessor for ObservedObject<WorkoutBuddyStatePublisher>();
          if (v4 <= 0x3F)
          {
            type metadata accessor for Environment<WorkoutAlertPresenter?>();
            if (v5 <= 0x3F)
            {
              type metadata accessor for MetricPlatterAnalytics();
              if (v6 <= 0x3F)
              {
                _sSo23FIUIWorkoutActivityTypeCMaTm_4(319, &lazy cache variable for type metadata for FIUIWorkoutActivityType);
                if (v7 <= 0x3F)
                {
                  _sSo23FIUIWorkoutActivityTypeCMaTm_4(319, &lazy cache variable for type metadata for FIUIFormattingManager);
                  if (v8 <= 0x3F)
                  {
                    type metadata accessor for State<MetricPlatter>();
                    if (v9 <= 0x3F)
                    {
                      type metadata accessor for AppStorage<Bool>(319, &lazy cache variable for type metadata for AppStorage<Bool>, MEMORY[0x277CDD630]);
                      if (v10 <= 0x3F)
                      {
                        type metadata accessor for AppStorage<Bool>(319, &lazy cache variable for type metadata for State<Bool>, MEMORY[0x277CE10B8]);
                        if (v11 <= 0x3F)
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

void type metadata accessor for ObservedObject<PlatterPublisher>()
{
  if (!lazy cache variable for type metadata for ObservedObject<PlatterPublisher>)
  {
    type metadata accessor for PlatterPublisher();
    lazy protocol witness table accessor for type PlatterPublisher and conformance PlatterPublisher(&lazy protocol witness table cache variable for type PlatterPublisher and conformance PlatterPublisher, MEMORY[0x277D7E0A0]);
    v0 = type metadata accessor for ObservedObject();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for ObservedObject<PlatterPublisher>);
    }
  }
}

void type metadata accessor for ObservedObject<WorkoutNotificationCenter>()
{
  if (!lazy cache variable for type metadata for ObservedObject<WorkoutNotificationCenter>)
  {
    type metadata accessor for WorkoutNotificationCenter();
    lazy protocol witness table accessor for type PlatterPublisher and conformance PlatterPublisher(&lazy protocol witness table cache variable for type WorkoutNotificationCenter and conformance WorkoutNotificationCenter, MEMORY[0x277D7DB78]);
    v0 = type metadata accessor for ObservedObject();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for ObservedObject<WorkoutNotificationCenter>);
    }
  }
}

void type metadata accessor for ObservedObject<WorkoutBuddyStatePublisher>()
{
  if (!lazy cache variable for type metadata for ObservedObject<WorkoutBuddyStatePublisher>)
  {
    type metadata accessor for WorkoutBuddyStatePublisher();
    lazy protocol witness table accessor for type PlatterPublisher and conformance PlatterPublisher(&lazy protocol witness table cache variable for type WorkoutBuddyStatePublisher and conformance WorkoutBuddyStatePublisher, MEMORY[0x277D7DBD0]);
    v0 = type metadata accessor for ObservedObject();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for ObservedObject<WorkoutBuddyStatePublisher>);
    }
  }
}

void type metadata accessor for Environment<WorkoutAlertPresenter?>()
{
  if (!lazy cache variable for type metadata for Environment<WorkoutAlertPresenter?>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s9WorkoutUI0A14AlertPresenterCSgMd);
    v0 = type metadata accessor for Environment();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for Environment<WorkoutAlertPresenter?>);
    }
  }
}

void type metadata accessor for State<MetricPlatter>()
{
  if (!lazy cache variable for type metadata for State<MetricPlatter>)
  {
    type metadata accessor for MetricPlatter();
    v0 = type metadata accessor for State();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for State<MetricPlatter>);
    }
  }
}

void type metadata accessor for AppStorage<Bool>(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void, void))
{
  if (!*a2)
  {
    v4 = a3(0, MEMORY[0x277D839B0]);
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t one-time initialization function for unsupportedWorkoutAlertTypes()
{
  result = _sShyShyxGqd__nc7ElementQyd__RszSTRd__lufCSo18NLWorkoutAlertTypeV_SayAEGTt0g5Tf4g_n(&outlined read-only object #0 of one-time initialization function for unsupportedWorkoutAlertTypes);
  static MetricPlattersView.unsupportedWorkoutAlertTypes = result;
  return result;
}

uint64_t MetricPlattersView.logMetricPlatters()()
{
  v0 = type metadata accessor for Logger();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v40 = &v37 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = type metadata accessor for MetricPlatterType();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v37 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for MetricPlatter();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v37 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = 0x800000020CB98540;
  v53 = 0xD000000000000019;
  v54 = 0x800000020CB98540;
  result = PlatterPublisher.metricPlatters.getter();
  v49 = *(result + 16);
  if (v49)
  {
    v38 = v1;
    v39 = v0;
    v13 = 0;
    v47 = result + ((*(v8 + 80) + 32) & ~*(v8 + 80));
    v48 = result;
    v45 = (v4 + 8);
    v46 = v8 + 16;
    v43 = v3;
    v44 = (v8 + 8);
    v14 = v8;
    v41 = v8;
    v42 = v7;
    while (1)
    {
      if (v13 >= *(result + 16))
      {
        __break(1u);
        return result;
      }

      (*(v14 + 16))(v10, v47 + *(v14 + 72) * v13, v7);
      v51 = 0;
      v52 = 0xE000000000000000;
      _StringGuts.grow(_:)(22);
      MEMORY[0x20F30BC00](0x2065707954, 0xE500000000000000);
      MetricPlatter.type.getter();
      _print_unlocked<A, B>(_:_:)();
      (*v45)(v6, v3);
      MEMORY[0x20F30BC00](0x64756C636E69202CLL, 0xEB00000000203A65);
      v19 = MetricPlatter.include.getter();
      v20 = (v19 & 1) == 0;
      if (v19)
      {
        v21 = 1702195828;
      }

      else
      {
        v21 = 0x65736C6166;
      }

      if (v20)
      {
        v22 = 0xE500000000000000;
      }

      else
      {
        v22 = 0xE400000000000000;
      }

      MEMORY[0x20F30BC00](v21, v22);

      MEMORY[0x20F30BC00](8236, 0xE200000000000000);
      MEMORY[0x20F30BC00](v51, v52);

      v51 = 0x3A7363697274656DLL;
      v52 = 0xE900000000000020;
      v23 = MetricPlatter.metrics.getter();
      if (v23)
      {
        v24 = v23;
        v25 = *(v23 + 16);
        if (v25)
        {
          v50 = MEMORY[0x277D84F90];
          specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v25, 0);
          v15 = v50;
          v26 = *(v50 + 16);
          v27 = 32;
          do
          {
            v28 = *(v24 + v27);
            v50 = v15;
            v29 = *(v15 + 24);
            if (v26 >= v29 >> 1)
            {
              specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v29 > 1), v26 + 1, 1);
              v15 = v50;
            }

            *(v15 + 16) = v26 + 1;
            *(v15 + 8 * v26 + 32) = v28;
            v27 += 8;
            ++v26;
            --v25;
          }

          while (v25);

          v7 = v42;
          v3 = v43;
          v14 = v41;
          goto LABEL_5;
        }
      }

      v15 = MEMORY[0x277D84F90];
LABEL_5:
      ++v13;
      v16 = MEMORY[0x20F30BD20](v15, MEMORY[0x277D83E88]);
      v18 = v17;

      MEMORY[0x20F30BC00](v16, v18);

      MEMORY[0x20F30BC00](10, 0xE100000000000000);
      MEMORY[0x20F30BC00](v51, v52);

      (*v44)(v10, v7);
      result = v48;
      if (v13 == v49)
      {

        v30 = v53;
        v11 = v54;
        v1 = v38;
        v0 = v39;
        goto LABEL_22;
      }
    }
  }

  v30 = 0xD000000000000019;
LABEL_22:
  v31 = v40;
  static WOLog.dataLink.getter();

  v32 = Logger.logObject.getter();
  v33 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v32, v33))
  {
    v34 = swift_slowAlloc();
    v35 = swift_slowAlloc();
    v51 = v35;
    *v34 = 136315138;
    v36 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v30, v11, &v51);

    *(v34 + 4) = v36;
    _os_log_impl(&dword_20C66F000, v32, v33, "%s", v34, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v35);
    MEMORY[0x20F30E080](v35, -1, -1);
    MEMORY[0x20F30E080](v34, -1, -1);
  }

  else
  {
  }

  return (*(v1 + 8))(v31, v0);
}

uint64_t MetricPlattersView.shouldDisplayNotification(_:)(uint64_t a1)
{
  v26 = a1;
  v1 = type metadata accessor for WorkoutNotification.NotificationType();
  v29 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v27 = &v26 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v3);
  v28 = &v26 - v4;
  v5 = type metadata accessor for MetricPlatterType();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v26 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v11 = &v26 - v10;
  v12 = type metadata accessor for MetricPlatter();
  v13 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v15 = &v26 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for MetricPlattersView();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI5StateVy11WorkoutCore13MetricPlatterVGMd);
  State.wrappedValue.getter();
  MetricPlatter.type.getter();
  (*(v13 + 8))(v15, v12);
  (*(v6 + 104))(v8, *MEMORY[0x277D7E1E0], v5);
  lazy protocol witness table accessor for type PlatterPublisher and conformance PlatterPublisher(&lazy protocol witness table cache variable for type MetricPlatterType and conformance MetricPlatterType, MEMORY[0x277D7E1F8]);
  dispatch thunk of RawRepresentable.rawValue.getter();
  dispatch thunk of RawRepresentable.rawValue.getter();
  if (v32 == v30 && v33 == v31)
  {
    v16 = *(v6 + 8);
    v16(v8, v5);
    v16(v11, v5);
  }

  else
  {
    v17 = _stringCompareWithSmolCheck(_:_:expecting:)();
    v18 = *(v6 + 8);
    v18(v8, v5);
    v18(v11, v5);

    if ((v17 & 1) == 0)
    {
      return 1;
    }
  }

  v19 = v28;
  dispatch thunk of WorkoutNotification.notificationType.getter();
  v20 = v29;
  v21 = v27;
  (*(v29 + 104))(v27, *MEMORY[0x277D7DA10], v1);
  lazy protocol witness table accessor for type PlatterPublisher and conformance PlatterPublisher(&lazy protocol witness table cache variable for type WorkoutNotification.NotificationType and conformance WorkoutNotification.NotificationType, MEMORY[0x277D7DA30]);
  dispatch thunk of RawRepresentable.rawValue.getter();
  dispatch thunk of RawRepresentable.rawValue.getter();
  if (v32 == v30 && v33 == v31)
  {
    v22 = *(v20 + 8);
    v22(v21, v1);
    v22(v19, v1);

    return 0;
  }

  v24 = _stringCompareWithSmolCheck(_:_:expecting:)();
  v25 = *(v20 + 8);
  v25(v21, v1);
  v25(v19, v1);

  result = 0;
  if ((v24 & 1) == 0)
  {
    return 1;
  }

  return result;
}

uint64_t MetricPlattersView.body.getter()
{
  v1 = type metadata accessor for MetricPlattersView();
  v2 = v1 - 8;
  v3 = *(v1 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v1);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyAA6ZStackVyAA9TupleViewVyAA012_ConditionalD0VyAA0G0PAAE12onTapGesture5count7performQrSi_yyctFQOyACyACyACyACy07WorkoutB00n12NotificationG0VAA30_EnvironmentKeyWritingModifierVyAO0nG5StyleOGGAA01_d5ShapeS0VyAA9RectangleVGGAA14_PaddingLayoutVGAA06_TraitrS0VyAA010TransitionyQ0VGG_Qo_AkAE0i16DelayedLongPressK015minimumDuration15maximumDistanceAN0I15PressingChangedQrSd_12CoreGraphics7CGFloatVyycySbcSgtFQOyACyAkAE0I6Change2of7initial_Qrqd___SbyyctSQRd__lFQOyAkAEA20_A21_A22__Qrqd___SbyyctSQRd__lFQOyAEyACyACyAkAE03tabgT0yQrqd__AA03TabgT0Rd__lFQOyAA03TabG0Vy0N4Core13MetricPlatterVAA7ForEachVySayA29_GSSACyAkAE3tag_15includeOptionalQrqd___SbtSHRd__lFQOyAIyAIyAIyAIyACyAO020MirrorStackedMetricsG0VA3_GA37_GAIyA37_ACyAO021MirrorGraphicsMetricsG0VA3_GGGAIyAIyA41_ACyAO026MirrorActivityRingsPlatterG0VA3_GGAIyACyACyAO024MirrorPacerMetricPlatterG0VA3_GA3_GACyAO34MirrorHeartRateZonesMetricsPlatterVA3_GGGGAIyAIyAIyACyAO024MirrorSpeedometerPlatterG0VA3_GACyAO30MirrorPowerZonesMetricsPlatterVA3_GGAIyACyAO022MirrorIntervalsPlatterG0VA3_GACyAO028MirrorIntervalsSecondPlatterG0VA3_GGGAIyAIyACyAO023MirrorRaceMetricPlatterG0VA3_GACyAO30MirrorMultiSportMetricsPlatterVA3_GGAA4TextVGGG_A29_Qo_A3_GGG_AA07PageTabgT0VQo_A3_GA9_GG_A29_Qo__A29_Qo_AA017_AppearanceActionS0VG_Qo_G_ACyAO0n11BuddyStatusG0VA3_GSgtGGAA010_AnimationS0VyA27_0nO0CSgGGMd);
  MEMORY[0x28223BE20](v5);
  v7 = &v19[-v6];
  *v7 = static Alignment.topTrailing.getter();
  v7[1] = v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI13_VariadicViewO4TreeVy_AA13_ZStackLayoutVAA05TupleD0VyAA19_ConditionalContentVyAA0D0PAAE12onTapGesture5count7performQrSi_yyctFQOyAA08ModifiedJ0VyARyARyARy07WorkoutB00q12NotificationD0VAA30_EnvironmentKeyWritingModifierVyAS0qD5StyleOGGAA01_j5ShapeV0VyAA9RectangleVGGAA08_PaddingG0VGAA06_TraituV0VyAA015TransitionTraitT0VGG_Qo_AmAE0k16DelayedLongPressM015minimumDuration15maximumDistanceAP0K15PressingChangedQrSd_12CoreGraphics7CGFloatVyycySbcSgtFQOyARyAmAE0K6Change2of7initial_Qrqd___SbyyctSQRd__lFQOyAmAEA24_A25_A26__Qrqd___SbyyctSQRd__lFQOyAA0F0VyARyARyAmAE03tabdW0yQrqd__AA03TabdW0Rd__lFQOyAA03TabD0Vy0Q4Core13MetricPlatterVAA7ForEachVySayA35_GSSARyAmAE3tag_15includeOptionalQrqd___SbtSHRd__lFQOyAKyAKyAKyAKyARyAS020MirrorStackedMetricsD0VA7_GA43_GAKyA43_ARyAS021MirrorGraphicsMetricsD0VA7_GGGAKyAKyA47_ARyAS026MirrorActivityRingsPlatterD0VA7_GGAKyARyARyAS024MirrorPacerMetricPlatterD0VA7_GA7_GARyAS34MirrorHeartRateZonesMetricsPlatterVA7_GGGGAKyAKyAKyARyAS024MirrorSpeedometerPlatterD0VA7_GARyAS30MirrorPowerZonesMetricsPlatterVA7_GGAKyARyAS022MirrorIntervalsPlatterD0VA7_GARyAS028MirrorIntervalsSecondPlatterD0VA7_GGGAKyAKyARyAS023MirrorRaceMetricPlatterD0VA7_GARyAS30MirrorMultiSportMetricsPlatterVA7_GGAA4TextVGGG_A35_Qo_A7_GGG_AA07PageTabdW0VQo_A7_GA13_GG_A35_Qo__A35_Qo_AA017_AppearanceActionV0VG_Qo_G_ARyAS0q11BuddyStatusD0VA7_GSgtGGMd);
  closure #1 in MetricPlattersView.body.getter(v0, v7 + *(v9 + 44));
  v10 = static Animation.easeInOut(duration:)();
  v11 = dispatch thunk of WorkoutNotificationCenter.notification.getter();
  v12 = (v7 + *(v5 + 36));
  *v12 = v10;
  v12[1] = v11;
  v13 = v0 + *(v2 + 76);
  v14 = *v13;
  v15 = *(v13 + 1);
  v19[32] = v14;
  v20 = v15;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI5StateVySbGMd);
  State.projectedValue.getter();
  outlined init with copy of MetricPlattersView(v0, &v19[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)]);
  v16 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v17 = swift_allocObject();
  outlined init with take of MetricPlattersView(&v19[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)], v17 + v16);
  type metadata accessor for WorkoutAlertList();
  lazy protocol witness table accessor for type ModifiedContent<ZStack<TupleView<(_ConditionalContent<<<opaque return type of View.onTapGesture(count:perform:)>>.0, <<opaque return type of View.onDelayedLongPressGesture(minimumDuration:maximumDistance:perform:onPressingChanged:)>>.0>, ModifiedContent<WorkoutBuddyStatusView, _PaddingLayout>?)>>, _AnimationModifier<WorkoutNotification?>> and conformance <> ModifiedContent<A, B>();
  lazy protocol witness table accessor for type PlatterPublisher and conformance PlatterPublisher(&lazy protocol witness table cache variable for type WorkoutAlertList and conformance WorkoutAlertList, type metadata accessor for WorkoutAlertList);
  View.sheet<A>(isPresented:onDismiss:content:)();

  return outlined destroy of ModifiedContent<ZStack<TupleView<(_ConditionalContent<<<opaque return type of View.onTapGesture(count:perform:)>>.0, <<opaque return type of View.onDelayedLongPressGesture(minimumDuration:maximumDistance:perform:onPressingChanged:)>>.0>, ModifiedContent<WorkoutBuddyStatusView, _PaddingLayout>?)>>, _AnimationModifier<WorkoutNotification?>>(v7, &_s7SwiftUI15ModifiedContentVyAA6ZStackVyAA9TupleViewVyAA012_ConditionalD0VyAA0G0PAAE12onTapGesture5count7performQrSi_yyctFQOyACyACyACyACy07WorkoutB00n12NotificationG0VAA30_EnvironmentKeyWritingModifierVyAO0nG5StyleOGGAA01_d5ShapeS0VyAA9RectangleVGGAA14_PaddingLayoutVGAA06_TraitrS0VyAA010TransitionyQ0VGG_Qo_AkAE0i16DelayedLongPressK015minimumDuration15maximumDistanceAN0I15PressingChangedQrSd_12CoreGraphics7CGFloatVyycySbcSgtFQOyACyAkAE0I6Change2of7initial_Qrqd___SbyyctSQRd__lFQOyAkAEA20_A21_A22__Qrqd___SbyyctSQRd__lFQOyAEyACyACyAkAE03tabgT0yQrqd__AA03TabgT0Rd__lFQOyAA03TabG0Vy0N4Core13MetricPlatterVAA7ForEachVySayA29_GSSACyAkAE3tag_15includeOptionalQrqd___SbtSHRd__lFQOyAIyAIyAIyAIyACyAO020MirrorStackedMetricsG0VA3_GA37_GAIyA37_ACyAO021MirrorGraphicsMetricsG0VA3_GGGAIyAIyA41_ACyAO026MirrorActivityRingsPlatterG0VA3_GGAIyACyACyAO024MirrorPacerMetricPlatterG0VA3_GA3_GACyAO34MirrorHeartRateZonesMetricsPlatterVA3_GGGGAIyAIyAIyACyAO024MirrorSpeedometerPlatterG0VA3_GACyAO30MirrorPowerZonesMetricsPlatterVA3_GGAIyACyAO022MirrorIntervalsPlatterG0VA3_GACyAO028MirrorIntervalsSecondPlatterG0VA3_GGGAIyAIyACyAO023MirrorRaceMetricPlatterG0VA3_GACyAO30MirrorMultiSportMetricsPlatterVA3_GGAA4TextVGGG_A29_Qo_A3_GGG_AA07PageTabgT0VQo_A3_GA9_GG_A29_Qo__A29_Qo_AA017_AppearanceActionS0VG_Qo_G_ACyAO0n11BuddyStatusG0VA3_GSgtGGAA010_AnimationS0VyA27_0nO0CSgGGMd);
}

uint64_t closure #1 in MetricPlattersView.body.getter@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v111 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVy07WorkoutB00E15BuddyStatusViewVAA14_PaddingLayoutVGMd);
  v108 = *(v3 - 8);
  v109 = v3;
  MEMORY[0x28223BE20](v3);
  v91 = &v86 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVy07WorkoutB00E15BuddyStatusViewVAA14_PaddingLayoutVGSgMd);
  MEMORY[0x28223BE20](v5 - 8);
  v110 = &v86 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v107 = &v86 - v8;
  v9 = type metadata accessor for MetricPlatter();
  v97 = *(v9 - 8);
  v98 = v9;
  MEMORY[0x28223BE20](v9);
  v92 = &v86 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v93 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI6ZStackVyAA15ModifiedContentVyAEyAA4ViewPAAE03tabF5StyleyQrqd__AA03TabfH0Rd__lFQOyAA0iF0Vy11WorkoutCore13MetricPlatterVAA7ForEachVySayANGSSAEyAgAE3tag_15includeOptionalQrqd___SbtSHRd__lFQOyAA012_ConditionalE0VyAUyAUyAUyAEy0jB0020MirrorStackedMetricsF0VAA14_PaddingLayoutVGA_GAUyA_AEyAV0t8GraphicsvF0VAZGGGAUyAUyA3_AEyAV0t13ActivityRingsmF0VAZGGAUyAEyAEyAV0t5PacerlmF0VAZGAZGAEyAV0t14HeartRateZonesvM0VAZGGGGAUyAUyAUyAEyAV0t11SpeedometermF0VAZGAEyAV0t10PowerZonesvM0VAZGGAUyAEyAV0t9IntervalsmF0VAZGAEyAV0t15IntervalsSecondmF0VAZGGGAUyAUyAEyAV0t4RacelmF0VAZGAEyAV0t10MultiSportvM0VAZGGAA4TextVGGG_ANQo_AZGGG_AA04PageifH0VQo_AZGAA21_TraitWritingModifierVyAA18TransitionTraitKeyVGGGMd);
  MEMORY[0x28223BE20](v93);
  v12 = (&v86 - v11);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI4ViewPAAE8onChange2of7initial_Qrqd___SbyyctSQRd__lFQOyAA6ZStackVyAA15ModifiedContentVyAJyAcAE03tabC5StyleyQrqd__AA03TabcL0Rd__lFQOyAA0mC0Vy11WorkoutCore13MetricPlatterVAA7ForEachVySayAQGSSAJyAcAE3tag_15includeOptionalQrqd___SbtSHRd__lFQOyAA012_ConditionalJ0VyAXyAXyAXyAJy0nB0020MirrorStackedMetricsC0VAA14_PaddingLayoutVGA2_GAXyA2_AJyAY0x8GraphicszC0VA1_GGGAXyAXyA6_AJyAY0x13ActivityRingsqC0VA1_GGAXyAJyAJyAY0x5PacerpqC0VA1_GA1_GAJyAY0x14HeartRateZoneszQ0VA1_GGGGAXyAXyAXyAJyAY0x11SpeedometerqC0VA1_GAJyAY0x10PowerZoneszQ0VA1_GGAXyAJyAY0x9IntervalsqC0VA1_GAJyAY0x15IntervalsSecondqC0VA1_GGGAXyAXyAJyAY0x4RacepqC0VA1_GAJyAY0x10MultiSportzQ0VA1_GGAA4TextVGGG_AQQo_A1_GGG_AA04PagemcL0VQo_A1_GAA21_TraitWritingModifierVyAA18TransitionTraitKeyVGGG_AQQo_Md);
  v94 = *(v13 - 8);
  v95 = v13;
  MEMORY[0x28223BE20](v13);
  v113 = &v86 - v14;
  v103 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyAA4ViewPAAE8onChange2of7initial_Qrqd___SbyyctSQRd__lFQOyAeAEAfgH_Qrqd___SbyyctSQRd__lFQOyAA6ZStackVyACyACyAeAE03tabE5StyleyQrqd__AA03TabeL0Rd__lFQOyAA0mE0Vy11WorkoutCore13MetricPlatterVAA7ForEachVySayAQGSSACyAeAE3tag_15includeOptionalQrqd___SbtSHRd__lFQOyAA012_ConditionalD0VyAXyAXyAXyACy0nB0020MirrorStackedMetricsE0VAA14_PaddingLayoutVGA2_GAXyA2_ACyAY0x8GraphicszE0VA1_GGGAXyAXyA6_ACyAY0x13ActivityRingsqE0VA1_GGAXyACyACyAY0x5PacerpqE0VA1_GA1_GACyAY0x14HeartRateZoneszQ0VA1_GGGGAXyAXyAXyACyAY0x11SpeedometerqE0VA1_GACyAY0x10PowerZoneszQ0VA1_GGAXyACyAY0x9IntervalsqE0VA1_GACyAY0x15IntervalsSecondqE0VA1_GGGAXyAXyACyAY0x4RacepqE0VA1_GACyAY0x10MultiSportzQ0VA1_GGAA4TextVGGG_AQQo_A1_GGG_AA04PagemeL0VQo_A1_GAA21_TraitWritingModifierVyAA18TransitionTraitKeyVGGG_AQQo__AQQo_AA25_AppearanceActionModifierVGMd);
  MEMORY[0x28223BE20](v103);
  KeyPath = &v86 - v15;
  v104 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI4ViewPAAE25onDelayedLongPressGesture15minimumDuration15maximumDistance7perform0D15PressingChangedQrSd_12CoreGraphics7CGFloatVyycySbcSgtFQOyAA15ModifiedContentVyAcAE0D6Change2of7initial_Qrqd___SbyyctSQRd__lFQOyAcAEAopQ_Qrqd___SbyyctSQRd__lFQOyAA6ZStackVyANyANyAcAE03tabC5StyleyQrqd__AA03TabcZ0Rd__lFQOyAA03TabC0Vy07WorkoutP013MetricPlatterVAA7ForEachVySayAZGSSANyAcAE3tag_15includeOptionalQrqd___SbtSHRd__lFQOyAA012_ConditionalT0VyA5_yA5_yA5_yANy07WorkoutB0020MirrorStackedMetricsC0VAA14_PaddingLayoutVGA11_GA5_yA11_ANyA6_06Mirrorq7MetricsC0VA10_GGGA5_yA5_yA15_ANyA6_026MirrorActivityRingsPlatterC0VA10_GGA5_yANyANyA6_024MirrorPacerMetricPlatterC0VA10_GA10_GANyA6_34MirrorHeartRateZonesMetricsPlatterVA10_GGGGA5_yA5_yA5_yANyA6_024MirrorSpeedometerPlatterC0VA10_GANyA6_30MirrorPowerZonesMetricsPlatterVA10_GGA5_yANyA6_022MirrorIntervalsPlatterC0VA10_GANyA6_028MirrorIntervalsSecondPlatterC0VA10_GGGA5_yA5_yANyA6_023MirrorRaceMetricPlatterC0VA10_GANyA6_30MirrorMultiSportMetricsPlatterVA10_GGAA4TextVGGG_AZQo_A10_GGG_AA07PageTabcZ0VQo_A10_GAA21_TraitWritingModifierVyAA18TransitionTraitKeyVGGG_AZQo__AZQo_AA25_AppearanceActionModifierVG_Qo_Md);
  v16 = *(v104 - 8);
  MEMORY[0x28223BE20](v104);
  v96 = &v86 - v17;
  v100 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI19_ConditionalContentV7StorageOyAA4ViewPAAE12onTapGesture5count7performQrSi_yyctFQOyAA08ModifiedD0VyALyALyALy07WorkoutB00m12NotificationF0VAA30_EnvironmentKeyWritingModifierVyAM0mF5StyleOGGAA01_d5ShapeR0VyAA9RectangleVGGAA14_PaddingLayoutVGAA06_TraitqR0VyAA010TransitionxP0VGG_Qo_AgAE0g16DelayedLongPressI015minimumDuration15maximumDistanceAJ0G15PressingChangedQrSd_12CoreGraphics7CGFloatVyycySbcSgtFQOyALyAgAE0G6Change2of7initial_Qrqd___SbyyctSQRd__lFQOyAgAEA18_A19_A20__Qrqd___SbyyctSQRd__lFQOyAA6ZStackVyALyALyAgAE03tabfS0yQrqd__AA03TabfS0Rd__lFQOyAA03TabF0Vy0M4Core13MetricPlatterVAA7ForEachVySayA29_GSSALyAgAE3tag_15includeOptionalQrqd___SbtSHRd__lFQOyACyACyACyACyALyAM020MirrorStackedMetricsF0VA1_GA37_GACyA37_ALyAM021MirrorGraphicsMetricsF0VA1_GGGACyACyA41_ALyAM026MirrorActivityRingsPlatterF0VA1_GGACyALyALyAM024MirrorPacerMetricPlatterF0VA1_GA1_GALyAM34MirrorHeartRateZonesMetricsPlatterVA1_GGGGACyACyACyALyAM024MirrorSpeedometerPlatterF0VA1_GALyAM30MirrorPowerZonesMetricsPlatterVA1_GGACyALyAM022MirrorIntervalsPlatterF0VA1_GALyAM028MirrorIntervalsSecondPlatterF0VA1_GGGACyACyALyAM023MirrorRaceMetricPlatterF0VA1_GALyAM30MirrorMultiSportMetricsPlatterVA1_GGAA4TextVGGG_A29_Qo_A1_GGG_AA07PageTabfS0VQo_A1_GA7_GG_A29_Qo__A29_Qo_AA017_AppearanceActionR0VG_Qo__GMd);
  MEMORY[0x28223BE20](v100);
  v102 = &v86 - v18;
  v19 = type metadata accessor for MetricPlattersView();
  v112 = *(v19 - 8);
  v20 = *(v112 + 64);
  MEMORY[0x28223BE20](v19);
  v21 = &v86 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v101 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI4ViewPAAE12onTapGesture5count7performQrSi_yyctFQOyAA15ModifiedContentVyAHyAHyAHy07WorkoutB00k12NotificationC0VAA30_EnvironmentKeyWritingModifierVyAI0kC5StyleOGGAA01_j5ShapeP0VyAA9RectangleVGGAA14_PaddingLayoutVGAA06_TraitoP0VyAA010TransitionvN0VGG_Qo_Md);
  v90 = *(v101 - 8);
  MEMORY[0x28223BE20](v101);
  v89 = &v86 - v22;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI19_ConditionalContentVyAA4ViewPAAE12onTapGesture5count7performQrSi_yyctFQOyAA08ModifiedD0VyAJyAJyAJy07WorkoutB00l12NotificationE0VAA30_EnvironmentKeyWritingModifierVyAK0lE5StyleOGGAA01_d5ShapeQ0VyAA9RectangleVGGAA14_PaddingLayoutVGAA06_TraitpQ0VyAA010TransitionwO0VGG_Qo_AeAE0f16DelayedLongPressH015minimumDuration15maximumDistanceAH0F15PressingChangedQrSd_12CoreGraphics7CGFloatVyycySbcSgtFQOyAJyAeAE0F6Change2of7initial_Qrqd___SbyyctSQRd__lFQOyAeAEA16_A17_A18__Qrqd___SbyyctSQRd__lFQOyAA6ZStackVyAJyAJyAeAE03tabeR0yQrqd__AA03TabeR0Rd__lFQOyAA03TabE0Vy0L4Core13MetricPlatterVAA7ForEachVySayA27_GSSAJyAeAE3tag_15includeOptionalQrqd___SbtSHRd__lFQOyACyACyACyACyAJyAK020MirrorStackedMetricsE0VA_GA35_GACyA35_AJyAK021MirrorGraphicsMetricsE0VA_GGGACyACyA39_AJyAK026MirrorActivityRingsPlatterE0VA_GGACyAJyAJyAK024MirrorPacerMetricPlatterE0VA_GA_GAJyAK34MirrorHeartRateZonesMetricsPlatterVA_GGGGACyACyACyAJyAK024MirrorSpeedometerPlatterE0VA_GAJyAK30MirrorPowerZonesMetricsPlatterVA_GGACyAJyAK022MirrorIntervalsPlatterE0VA_GAJyAK028MirrorIntervalsSecondPlatterE0VA_GGGACyACyAJyAK023MirrorRaceMetricPlatterE0VA_GAJyAK30MirrorMultiSportMetricsPlatterVA_GGAA4TextVGGG_A27_Qo_A_GGG_AA07PageTabeR0VQo_A_GA5_GG_A27_Qo__A27_Qo_AA017_AppearanceActionQ0VG_Qo_GMd);
  MEMORY[0x28223BE20](v23 - 8);
  v106 = &v86 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v25);
  v105 = &v86 - v26;
  v27 = a1[6];
  v28 = dispatch thunk of WorkoutNotificationCenter.notification.getter();
  v114 = v20;
  v115 = a1;
  if (!v28)
  {
    goto LABEL_7;
  }

  v29 = v28;
  if ((MetricPlattersView.shouldDisplayNotification(_:)(v28) & 1) == 0)
  {

LABEL_7:
    *v12 = static Alignment.topTrailing.getter();
    v12[1] = v48;
    v49 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI13_VariadicViewO4TreeVy_AA13_ZStackLayoutVAA15ModifiedContentVyAIyAA0D0PAAE03tabD5StyleyQrqd__AA03TabdK0Rd__lFQOyAA0lD0Vy11WorkoutCore13MetricPlatterVAA7ForEachVySayARGSSAIyAkAE3tag_15includeOptionalQrqd___SbtSHRd__lFQOyAA012_ConditionalI0VyAYyAYyAYyAIy0mB0020MirrorStackedMetricsD0VAA08_PaddingG0VGA3_GAYyA3_AIyAZ0w8GraphicsyD0VA2_GGGAYyAYyA7_AIyAZ0w13ActivityRingspD0VA2_GGAYyAIyAIyAZ0w5PaceropD0VA2_GA2_GAIyAZ0w14HeartRateZonesyP0VA2_GGGGAYyAYyAYyAIyAZ0w11SpeedometerpD0VA2_GAIyAZ0w10PowerZonesyP0VA2_GGAYyAIyAZ0w9IntervalspD0VA2_GAIyAZ0w15IntervalsSecondpD0VA2_GGGAYyAYyAIyAZ0w4RaceopD0VA2_GAIyAZ0w10MultiSportyP0VA2_GGAA4TextVGGG_ARQo_A2_GGG_AA04PageldK0VQo_A2_GAA21_TraitWritingModifierVyAA18TransitionTraitKeyVGGGMd);
    closure #2 in closure #1 in MetricPlattersView.body.getter(a1, v12 + *(v49 + 44));
    v89 = *(v19 + 60);
    v50 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI5StateVy11WorkoutCore13MetricPlatterVGMd);
    v90 = v16;
    v88 = v50;
    v51 = v92;
    State.wrappedValue.getter();
    outlined init with copy of MetricPlattersView(a1, &v86 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0));
    v112 = *(v112 + 80);
    v52 = (v112 + 16) & ~v112;
    v53 = swift_allocObject();
    outlined init with take of MetricPlattersView(v21, v53 + v52);
    v54 = lazy protocol witness table accessor for type ZStack<TupleView<(_ConditionalContent<<<opaque return type of View.onTapGesture(count:perform:)>>.0, <<opaque return type of View.onDelayedLongPressGesture(minimumDuration:maximumDistance:perform:onPressingChanged:)>>.0>, ModifiedContent<WorkoutBuddyStatusView, _PaddingLayout>?)>> and conformance ZStack<A>(&lazy protocol witness table cache variable for type ZStack<ModifiedContent<ModifiedContent<<<opaque return type of View.tabViewStyle<A>(_:)>>.0, _PaddingLayout>, _TraitWritingModifier<TransitionTraitKey>>> and conformance ZStack<A>, &_s7SwiftUI6ZStackVyAA15ModifiedContentVyAEyAA4ViewPAAE03tabF5StyleyQrqd__AA03TabfH0Rd__lFQOyAA0iF0Vy11WorkoutCore13MetricPlatterVAA7ForEachVySayANGSSAEyAgAE3tag_15includeOptionalQrqd___SbtSHRd__lFQOyAA012_ConditionalE0VyAUyAUyAUyAEy0jB0020MirrorStackedMetricsF0VAA14_PaddingLayoutVGA_GAUyA_AEyAV0t8GraphicsvF0VAZGGGAUyAUyA3_AEyAV0t13ActivityRingsmF0VAZGGAUyAEyAEyAV0t5PacerlmF0VAZGAZGAEyAV0t14HeartRateZonesvM0VAZGGGGAUyAUyAUyAEyAV0t11SpeedometermF0VAZGAEyAV0t10PowerZonesvM0VAZGGAUyAEyAV0t9IntervalsmF0VAZGAEyAV0t15IntervalsSecondmF0VAZGGGAUyAUyAEyAV0t4RacelmF0VAZGAEyAV0t10MultiSportvM0VAZGGAA4TextVGGG_ANQo_AZGGG_AA04PageifH0VQo_AZGAA21_TraitWritingModifierVyAA18TransitionTraitKeyVGGGMd);
    v87 = lazy protocol witness table accessor for type PlatterPublisher and conformance PlatterPublisher(&lazy protocol witness table cache variable for type MetricPlatter and conformance MetricPlatter, MEMORY[0x277D7DFD0]);
    v55 = v93;
    v56 = v98;
    View.onChange<A>(of:initial:_:)();

    v97 = *(v97 + 8);
    (v97)(v51, v56);
    outlined destroy of ModifiedContent<ZStack<TupleView<(_ConditionalContent<<<opaque return type of View.onTapGesture(count:perform:)>>.0, <<opaque return type of View.onDelayedLongPressGesture(minimumDuration:maximumDistance:perform:onPressingChanged:)>>.0>, ModifiedContent<WorkoutBuddyStatusView, _PaddingLayout>?)>>, _AnimationModifier<WorkoutNotification?>>(v12, &_s7SwiftUI6ZStackVyAA15ModifiedContentVyAEyAA4ViewPAAE03tabF5StyleyQrqd__AA03TabfH0Rd__lFQOyAA0iF0Vy11WorkoutCore13MetricPlatterVAA7ForEachVySayANGSSAEyAgAE3tag_15includeOptionalQrqd___SbtSHRd__lFQOyAA012_ConditionalE0VyAUyAUyAUyAEy0jB0020MirrorStackedMetricsF0VAA14_PaddingLayoutVGA_GAUyA_AEyAV0t8GraphicsvF0VAZGGGAUyAUyA3_AEyAV0t13ActivityRingsmF0VAZGGAUyAEyAEyAV0t5PacerlmF0VAZGAZGAEyAV0t14HeartRateZonesvM0VAZGGGGAUyAUyAUyAEyAV0t11SpeedometermF0VAZGAEyAV0t10PowerZonesvM0VAZGGAUyAEyAV0t9IntervalsmF0VAZGAEyAV0t15IntervalsSecondmF0VAZGGGAUyAUyAEyAV0t4RacelmF0VAZGAEyAV0t10MultiSportvM0VAZGGAA4TextVGGG_ANQo_AZGGG_AA04PageifH0VQo_AZGAA21_TraitWritingModifierVyAA18TransitionTraitKeyVGGGMd);
    State.wrappedValue.getter();
    outlined init with copy of MetricPlattersView(v115, v21);
    v57 = swift_allocObject();
    outlined init with take of MetricPlattersView(v21, v57 + v52);
    *&v132 = v55;
    *(&v132 + 1) = v56;
    *&v133 = v54;
    *(&v133 + 1) = v87;
    swift_getOpaqueTypeConformance2();
    v58 = KeyPath;
    v59 = v95;
    v60 = v113;
    View.onChange<A>(of:initial:_:)();

    (v97)(v51, v56);
    v61 = v115;
    (*(v94 + 8))(v60, v59);
    outlined init with copy of MetricPlattersView(v61, v21);
    v62 = swift_allocObject();
    outlined init with take of MetricPlattersView(v21, v62 + v52);
    v63 = v103;
    v64 = (v58 + *(v103 + 36));
    *v64 = 0;
    v64[1] = 0;
    v64[2] = partial apply for closure #5 in closure #1 in MetricPlattersView.body.getter;
    v64[3] = v62;
    outlined init with copy of MetricPlattersView(v61, v21);
    v65 = swift_allocObject();
    outlined init with take of MetricPlattersView(v21, v65 + v52);
    v66 = lazy protocol witness table accessor for type ModifiedContent<<<opaque return type of View.onChange<A>(of:initial:_:)>>.0, _AppearanceActionModifier> and conformance <> ModifiedContent<A, B>();
    v67 = v96;
    View.onDelayedLongPressGesture(minimumDuration:maximumDistance:perform:onPressingChanged:)();

    outlined destroy of ModifiedContent<ZStack<TupleView<(_ConditionalContent<<<opaque return type of View.onTapGesture(count:perform:)>>.0, <<opaque return type of View.onDelayedLongPressGesture(minimumDuration:maximumDistance:perform:onPressingChanged:)>>.0>, ModifiedContent<WorkoutBuddyStatusView, _PaddingLayout>?)>>, _AnimationModifier<WorkoutNotification?>>(v58, &_s7SwiftUI15ModifiedContentVyAA4ViewPAAE8onChange2of7initial_Qrqd___SbyyctSQRd__lFQOyAeAEAfgH_Qrqd___SbyyctSQRd__lFQOyAA6ZStackVyACyACyAeAE03tabE5StyleyQrqd__AA03TabeL0Rd__lFQOyAA0mE0Vy11WorkoutCore13MetricPlatterVAA7ForEachVySayAQGSSACyAeAE3tag_15includeOptionalQrqd___SbtSHRd__lFQOyAA012_ConditionalD0VyAXyAXyAXyACy0nB0020MirrorStackedMetricsE0VAA14_PaddingLayoutVGA2_GAXyA2_ACyAY0x8GraphicszE0VA1_GGGAXyAXyA6_ACyAY0x13ActivityRingsqE0VA1_GGAXyACyACyAY0x5PacerpqE0VA1_GA1_GACyAY0x14HeartRateZoneszQ0VA1_GGGGAXyAXyAXyACyAY0x11SpeedometerqE0VA1_GACyAY0x10PowerZoneszQ0VA1_GGAXyACyAY0x9IntervalsqE0VA1_GACyAY0x15IntervalsSecondqE0VA1_GGGAXyAXyACyAY0x4RacepqE0VA1_GACyAY0x10MultiSportzQ0VA1_GGAA4TextVGGG_AQQo_A1_GGG_AA04PagemeL0VQo_A1_GAA21_TraitWritingModifierVyAA18TransitionTraitKeyVGGG_AQQo__AQQo_AA25_AppearanceActionModifierVGMd);
    v68 = v90;
    v69 = v67;
    v70 = v67;
    v71 = v104;
    (*(v90 + 16))(v102, v69, v104);
    swift_storeEnumTagMultiPayload();
    v72 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyACyACyACy07WorkoutB00E16NotificationViewVAA30_EnvironmentKeyWritingModifierVyAD0eG5StyleOGGAA01_d5ShapeK0VyAA9RectangleVGGAA14_PaddingLayoutVGAA06_TraitjK0VyAA010TransitionqI0VGGMd);
    v73 = lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<WorkoutNotificationView, _EnvironmentKeyWritingModifier<WorkoutViewStyle>>, _ContentShapeModifier<Rectangle>>, _PaddingLayout>, _TraitWritingModifier<TransitionTraitKey>> and conformance <> ModifiedContent<A, B>();
    *&v132 = v72;
    *(&v132 + 1) = v73;
    swift_getOpaqueTypeConformance2();
    *&v132 = v63;
    *(&v132 + 1) = v66;
    swift_getOpaqueTypeConformance2();
    v47 = v105;
    _ConditionalContent<>.init(storage:)();
    (*(v68 + 8))(v70, v71);
    goto LABEL_8;
  }

  v30 = a1[13];
  outlined init with copy of MetricPlattersView(a1, &v86 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0));
  v31 = *(v112 + 80);
  v113 = ~v31;
  v32 = swift_allocObject();
  outlined init with take of MetricPlattersView(&v86 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0), v32 + ((v31 + 16) & ~v31));
  v33 = v29;
  v34 = v30;

  MetricPlatterConstants.init()(v128);
  *&v127 = v33;
  *(&v127 + 1) = v34;
  *(&v129 + 1) = partial apply for implicit closure #2 in implicit closure #1 in closure #1 in MetricPlattersView.body.getter;
  *&v130 = v27;
  *(&v130 + 1) = partial apply for implicit closure #4 in implicit closure #3 in closure #1 in MetricPlattersView.body.getter;
  v131 = v32;
  KeyPath = swift_getKeyPath();
  v112 = a1[15];
  if (one-time initialization token for contentLeadingTrailingPadding != -1)
  {
    swift_once();
  }

  v35 = static InSessionView.Layout.contentLeadingTrailingPadding;
  v36 = a1[14];
  v37 = static Edge.Set.all.getter();
  LOBYTE(v132) = 0;
  static AnyTransition.move(edge:)();
  static AnyTransition.move(edge:)();
  v38 = static AnyTransition.asymmetric(insertion:removal:)();

  v120 = v129;
  v121 = v130;
  v116 = v127;
  v117 = v128[0];
  v118 = v128[1];
  v119 = v128[2];
  *&v122 = v131;
  *(&v122 + 1) = KeyPath;
  LOWORD(v123) = 7;
  BYTE8(v123) = v37;
  *&v124 = v112;
  *(&v124 + 1) = v35;
  *&v125 = v36;
  *(&v125 + 1) = v35;
  LOBYTE(v126) = 0;
  *(&v126 + 1) = v38;
  outlined init with copy of MetricPlattersView(v115, v21);
  v39 = (v31 + 24) & v113;
  v40 = swift_allocObject();
  *(v40 + 16) = v33;
  outlined init with take of MetricPlattersView(v21, v40 + v39);
  v114 = v33;
  v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyACyACyACy07WorkoutB00E16NotificationViewVAA30_EnvironmentKeyWritingModifierVyAD0eG5StyleOGGAA01_d5ShapeK0VyAA9RectangleVGGAA14_PaddingLayoutVGAA06_TraitjK0VyAA010TransitionqI0VGGMd);
  v42 = lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<WorkoutNotificationView, _EnvironmentKeyWritingModifier<WorkoutViewStyle>>, _ContentShapeModifier<Rectangle>>, _PaddingLayout>, _TraitWritingModifier<TransitionTraitKey>> and conformance <> ModifiedContent<A, B>();
  v43 = v89;
  View.onTapGesture(count:perform:)();

  v140 = v124;
  v141 = v125;
  v142 = v126;
  v136 = v120;
  v137 = v121;
  v138 = v122;
  v139 = v123;
  v132 = v116;
  v133 = v117;
  v134 = v118;
  v135 = v119;
  outlined destroy of ModifiedContent<WorkoutBuddyStatusView, _PaddingLayout>?(&v132, &_s7SwiftUI15ModifiedContentVyACyACyACy07WorkoutB00E16NotificationViewVAA30_EnvironmentKeyWritingModifierVyAD0eG5StyleOGGAA01_d5ShapeK0VyAA9RectangleVGGAA14_PaddingLayoutVGAA06_TraitjK0VyAA010TransitionqI0VGGMd);
  v44 = v90;
  v45 = v101;
  (*(v90 + 16))(v102, v43, v101);
  swift_storeEnumTagMultiPayload();
  *&v116 = v41;
  *(&v116 + 1) = v42;
  swift_getOpaqueTypeConformance2();
  v46 = lazy protocol witness table accessor for type ModifiedContent<<<opaque return type of View.onChange<A>(of:initial:_:)>>.0, _AppearanceActionModifier> and conformance <> ModifiedContent<A, B>();
  *&v116 = v103;
  *(&v116 + 1) = v46;
  swift_getOpaqueTypeConformance2();
  v47 = v105;
  _ConditionalContent<>.init(storage:)();

  (*(v44 + 8))(v43, v45);
LABEL_8:
  v74 = WorkoutBuddyStatePublisher.supportsWorkoutBuddy.getter();
  v75 = 1;
  v76 = v109;
  v77 = v107;
  if (v74)
  {
    MetricsPublisher.workoutBuddyStatePublisher.getter();
    type metadata accessor for WorkoutBuddyStatusView();
    v78 = v91;
    WorkoutBuddyStatePublisher.state.getter();

    *v78 = swift_getKeyPath();
    *(v78 + 8) = 0;
    v79 = static Edge.Set.horizontal.getter();
    v80 = v78 + *(v76 + 36);
    *v80 = v79;
    *(v80 + 8) = 0u;
    *(v80 + 24) = 0u;
    *(v80 + 40) = 1;
    outlined init with take of ModifiedContent<WorkoutBuddyStatusView, _PaddingLayout>(v78, v77, &_s7SwiftUI15ModifiedContentVy07WorkoutB00E15BuddyStatusViewVAA14_PaddingLayoutVGMd);
    v75 = 0;
  }

  (*(v108 + 56))(v77, v75, 1, v76);
  v81 = v106;
  sub_20C6808BC(v47, v106);
  v82 = v110;
  outlined init with copy of ModifiedContent<WorkoutBuddyStatusView, _PaddingLayout>?(v77, v110);
  v83 = v111;
  sub_20C6808BC(v81, v111);
  v84 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI19_ConditionalContentVyAA4ViewPAAE12onTapGesture5count7performQrSi_yyctFQOyAA08ModifiedD0VyAJyAJyAJy07WorkoutB00l12NotificationE0VAA30_EnvironmentKeyWritingModifierVyAK0lE5StyleOGGAA01_d5ShapeQ0VyAA9RectangleVGGAA14_PaddingLayoutVGAA06_TraitpQ0VyAA010TransitionwO0VGG_Qo_AeAE0f16DelayedLongPressH015minimumDuration15maximumDistanceAH0F15PressingChangedQrSd_12CoreGraphics7CGFloatVyycySbcSgtFQOyAJyAeAE0F6Change2of7initial_Qrqd___SbyyctSQRd__lFQOyAeAEA16_A17_A18__Qrqd___SbyyctSQRd__lFQOyAA6ZStackVyAJyAJyAeAE03tabeR0yQrqd__AA03TabeR0Rd__lFQOyAA03TabE0Vy0L4Core13MetricPlatterVAA7ForEachVySayA27_GSSAJyAeAE3tag_15includeOptionalQrqd___SbtSHRd__lFQOyACyACyACyACyAJyAK020MirrorStackedMetricsE0VA_GA35_GACyA35_AJyAK021MirrorGraphicsMetricsE0VA_GGGACyACyA39_AJyAK026MirrorActivityRingsPlatterE0VA_GGACyAJyAJyAK024MirrorPacerMetricPlatterE0VA_GA_GAJyAK34MirrorHeartRateZonesMetricsPlatterVA_GGGGACyACyACyAJyAK024MirrorSpeedometerPlatterE0VA_GAJyAK30MirrorPowerZonesMetricsPlatterVA_GGACyAJyAK022MirrorIntervalsPlatterE0VA_GAJyAK028MirrorIntervalsSecondPlatterE0VA_GGGACyACyAJyAK023MirrorRaceMetricPlatterE0VA_GAJyAK30MirrorMultiSportMetricsPlatterVA_GGAA4TextVGGG_A27_Qo_A_GGG_AA07PageTabeR0VQo_A_GA5_GG_A27_Qo__A27_Qo_AA017_AppearanceActionQ0VG_Qo_G_AJyAK0l11BuddyStatusE0VA_GSgtMd);
  outlined init with copy of ModifiedContent<WorkoutBuddyStatusView, _PaddingLayout>?(v82, v83 + *(v84 + 48));
  outlined destroy of ModifiedContent<WorkoutBuddyStatusView, _PaddingLayout>?(v77, &_s7SwiftUI15ModifiedContentVy07WorkoutB00E15BuddyStatusViewVAA14_PaddingLayoutVGSgMd);
  outlined destroy of ModifiedContent<ZStack<TupleView<(_ConditionalContent<<<opaque return type of View.onTapGesture(count:perform:)>>.0, <<opaque return type of View.onDelayedLongPressGesture(minimumDuration:maximumDistance:perform:onPressingChanged:)>>.0>, ModifiedContent<WorkoutBuddyStatusView, _PaddingLayout>?)>>, _AnimationModifier<WorkoutNotification?>>(v47, &_s7SwiftUI19_ConditionalContentVyAA4ViewPAAE12onTapGesture5count7performQrSi_yyctFQOyAA08ModifiedD0VyAJyAJyAJy07WorkoutB00l12NotificationE0VAA30_EnvironmentKeyWritingModifierVyAK0lE5StyleOGGAA01_d5ShapeQ0VyAA9RectangleVGGAA14_PaddingLayoutVGAA06_TraitpQ0VyAA010TransitionwO0VGG_Qo_AeAE0f16DelayedLongPressH015minimumDuration15maximumDistanceAH0F15PressingChangedQrSd_12CoreGraphics7CGFloatVyycySbcSgtFQOyAJyAeAE0F6Change2of7initial_Qrqd___SbyyctSQRd__lFQOyAeAEA16_A17_A18__Qrqd___SbyyctSQRd__lFQOyAA6ZStackVyAJyAJyAeAE03tabeR0yQrqd__AA03TabeR0Rd__lFQOyAA03TabE0Vy0L4Core13MetricPlatterVAA7ForEachVySayA27_GSSAJyAeAE3tag_15includeOptionalQrqd___SbtSHRd__lFQOyACyACyACyACyAJyAK020MirrorStackedMetricsE0VA_GA35_GACyA35_AJyAK021MirrorGraphicsMetricsE0VA_GGGACyACyA39_AJyAK026MirrorActivityRingsPlatterE0VA_GGACyAJyAJyAK024MirrorPacerMetricPlatterE0VA_GA_GAJyAK34MirrorHeartRateZonesMetricsPlatterVA_GGGGACyACyACyAJyAK024MirrorSpeedometerPlatterE0VA_GAJyAK30MirrorPowerZonesMetricsPlatterVA_GGACyAJyAK022MirrorIntervalsPlatterE0VA_GAJyAK028MirrorIntervalsSecondPlatterE0VA_GGGACyACyAJyAK023MirrorRaceMetricPlatterE0VA_GAJyAK30MirrorMultiSportMetricsPlatterVA_GGAA4TextVGGG_A27_Qo_A_GGG_AA07PageTabeR0VQo_A_GA5_GG_A27_Qo__A27_Qo_AA017_AppearanceActionQ0VG_Qo_GMd);
  outlined destroy of ModifiedContent<WorkoutBuddyStatusView, _PaddingLayout>?(v82, &_s7SwiftUI15ModifiedContentVy07WorkoutB00E15BuddyStatusViewVAA14_PaddingLayoutVGSgMd);
  return outlined destroy of ModifiedContent<ZStack<TupleView<(_ConditionalContent<<<opaque return type of View.onTapGesture(count:perform:)>>.0, <<opaque return type of View.onDelayedLongPressGesture(minimumDuration:maximumDistance:perform:onPressingChanged:)>>.0>, ModifiedContent<WorkoutBuddyStatusView, _PaddingLayout>?)>>, _AnimationModifier<WorkoutNotification?>>(v81, &_s7SwiftUI19_ConditionalContentVyAA4ViewPAAE12onTapGesture5count7performQrSi_yyctFQOyAA08ModifiedD0VyAJyAJyAJy07WorkoutB00l12NotificationE0VAA30_EnvironmentKeyWritingModifierVyAK0lE5StyleOGGAA01_d5ShapeQ0VyAA9RectangleVGGAA14_PaddingLayoutVGAA06_TraitpQ0VyAA010TransitionwO0VGG_Qo_AeAE0f16DelayedLongPressH015minimumDuration15maximumDistanceAH0F15PressingChangedQrSd_12CoreGraphics7CGFloatVyycySbcSgtFQOyAJyAeAE0F6Change2of7initial_Qrqd___SbyyctSQRd__lFQOyAeAEA16_A17_A18__Qrqd___SbyyctSQRd__lFQOyAA6ZStackVyAJyAJyAeAE03tabeR0yQrqd__AA03TabeR0Rd__lFQOyAA03TabE0Vy0L4Core13MetricPlatterVAA7ForEachVySayA27_GSSAJyAeAE3tag_15includeOptionalQrqd___SbtSHRd__lFQOyACyACyACyACyAJyAK020MirrorStackedMetricsE0VA_GA35_GACyA35_AJyAK021MirrorGraphicsMetricsE0VA_GGGACyACyA39_AJyAK026MirrorActivityRingsPlatterE0VA_GGACyAJyAJyAK024MirrorPacerMetricPlatterE0VA_GA_GAJyAK34MirrorHeartRateZonesMetricsPlatterVA_GGGGACyACyACyAJyAK024MirrorSpeedometerPlatterE0VA_GAJyAK30MirrorPowerZonesMetricsPlatterVA_GGACyAJyAK022MirrorIntervalsPlatterE0VA_GAJyAK028MirrorIntervalsSecondPlatterE0VA_GGGACyACyAJyAK023MirrorRaceMetricPlatterE0VA_GAJyAK30MirrorMultiSportMetricsPlatterVA_GGAA4TextVGGG_A27_Qo_A_GGG_AA07PageTabeR0VQo_A_GA5_GG_A27_Qo__A27_Qo_AA017_AppearanceActionQ0VG_Qo_GMd);
}

void MetricPlattersView.dismissWorkoutAlert()()
{
  v1 = v0;
  v2 = type metadata accessor for EnvironmentValues();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v36 = &v31 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for MetricPlattersView();
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v31 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for Logger();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v31 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  static WOLog.alerts.getter();
  outlined init with copy of MetricPlattersView(v0, v7);
  v12 = Logger.logObject.getter();
  v13 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    v35 = v3;
    v15 = v14;
    v32 = swift_slowAlloc();
    v38 = v32;
    *v15 = 136315138;
    v16 = dispatch thunk of WorkoutNotificationCenter.notification.getter();
    v33 = v8;
    v17 = v16;
    v37 = v16;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s11WorkoutCore0A12NotificationCSgMd);
    v18 = Optional.description.getter();
    v34 = v1;
    v19 = v2;
    v21 = v20;
    outlined destroy of MetricPlattersView(v7);

    v22 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v18, v21, &v38);
    v2 = v19;
    v1 = v34;

    *(v15 + 4) = v22;
    _os_log_impl(&dword_20C66F000, v12, v13, "[MetricPlattersView] Dismiss workout_alert=%s", v15, 0xCu);
    v23 = v32;
    __swift_destroy_boxed_opaque_existential_0(v32);
    MEMORY[0x20F30E080](v23, -1, -1);
    v24 = v15;
    v3 = v35;
    MEMORY[0x20F30E080](v24, -1, -1);

    (*(v9 + 8))(v11, v33);
  }

  else
  {

    outlined destroy of MetricPlattersView(v7);
    (*(v9 + 8))(v11, v8);
  }

  dispatch thunk of WorkoutNotificationCenter.dismissNotification()();
  v25 = *(v1 + 72);
  if (*(v1 + 80) == 1)
  {
    v26 = v25;
    if (!v25)
    {
      return;
    }
  }

  else
  {

    static os_log_type_t.fault.getter();
    v27 = static Log.runtimeIssuesLog.getter();
    os_log(_:dso:log:_:_:)();

    v28 = v36;
    EnvironmentValues.init()();
    swift_getAtKeyPath();
    outlined consume of Environment<WorkoutAlertPresenter?>.Content(v25, 0);
    (*(v3 + 8))(v28, v2);
    v25 = v38;
    if (!v38)
    {
      return;
    }
  }

  v29 = *&v25[OBJC_IVAR___WOWorkoutAlertPresenter_announcer];
  v30 = v29;

  if (v29)
  {
    dispatch thunk of Announcer.stopSpeaking()();
  }
}

uint64_t closure #2 in closure #1 in MetricPlattersView.body.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v64 = a2;
  v3 = type metadata accessor for MoveTransition();
  v62 = *(v3 - 8);
  v63 = v3;
  MEMORY[0x28223BE20](v3);
  v60 = &v53 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v61 = &v53 - v6;
  v7 = type metadata accessor for PageTabViewStyle.IndexDisplayMode();
  MEMORY[0x28223BE20](v7 - 8);
  v8 = type metadata accessor for PageTabViewStyle();
  v9 = *(v8 - 8);
  v54 = v8;
  v55 = v9;
  MEMORY[0x28223BE20](v8);
  v11 = &v53 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI7BindingVy11WorkoutCore13MetricPlatterVGSgMd);
  MEMORY[0x28223BE20](v12 - 8);
  v14 = &v53 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI7TabViewVy11WorkoutCore13MetricPlatterVAA7ForEachVySayAFGSSAA15ModifiedContentVyAA0D0PAAE3tag_15includeOptionalQrqd___SbtSHRd__lFQOyAA012_ConditionalL0VyAQyAQyAQyAKy0eB0020MirrorStackedMetricsD0VAA14_PaddingLayoutVGAWGAQyAwKyAR0q8GraphicssD0VAVGGGAQyAQyA_AKyAR0q13ActivityRingshD0VAVGGAQyAKyAKyAR0q5PacerghD0VAVGAVGAKyAR0q14HeartRateZonessH0VAVGGGGAQyAQyAQyAKyAR0q11SpeedometerhD0VAVGAKyAR0q10PowerZonessH0VAVGGAQyAKyAR0q9IntervalshD0VAVGAKyAR0q15IntervalsSecondhD0VAVGGGAQyAQyAKyAR0q4RaceghD0VAVGAKyAR0q10MultiSportsH0VAVGGAA4TextVGGG_AFQo_AVGGGMd);
  v16 = *(v15 - 8);
  MEMORY[0x28223BE20](v15);
  v18 = &v53 - v17;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI4ViewPAAE03tabC5StyleyQrqd__AA03TabcE0Rd__lFQOyAA0fC0Vy11WorkoutCore13MetricPlatterVAA7ForEachVySayAJGSSAA15ModifiedContentVyAcAE3tag_15includeOptionalQrqd___SbtSHRd__lFQOyAA012_ConditionalN0VyASyASyASyAOy0gB0020MirrorStackedMetricsC0VAA14_PaddingLayoutVGAYGASyAyOyAT0s8GraphicsuC0VAXGGGASyASyA1_AOyAT0s13ActivityRingsjC0VAXGGASyAOyAOyAT0s5PacerijC0VAXGAXGAOyAT0s14HeartRateZonesuJ0VAXGGGGASyASyASyAOyAT0s11SpeedometerjC0VAXGAOyAT0s10PowerZonesuJ0VAXGGASyAOyAT0s9IntervalsjC0VAXGAOyAT0s15IntervalsSecondjC0VAXGGGASyASyAOyAT0s4RaceijC0VAXGAOyAT0s10MultiSportuJ0VAXGGAA4TextVGGG_AJQo_AXGGG_AA04PagefcE0VQo_Md);
  v57 = *(v19 - 8);
  v58 = v19;
  MEMORY[0x28223BE20](v19);
  v21 = &v53 - v20;
  v56 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyAA4ViewPAAE03tabE5StyleyQrqd__AA03TabeG0Rd__lFQOyAA0hE0Vy11WorkoutCore13MetricPlatterVAA7ForEachVySayALGSSACyAeAE3tag_15includeOptionalQrqd___SbtSHRd__lFQOyAA012_ConditionalD0VyASyASyASyACy0iB0020MirrorStackedMetricsE0VAA14_PaddingLayoutVGAYGASyAyCyAT0s8GraphicsuE0VAXGGGASyASyA1_ACyAT0s13ActivityRingslE0VAXGGASyACyACyAT0s5PacerklE0VAXGAXGACyAT0s14HeartRateZonesuL0VAXGGGGASyASyASyACyAT0s11SpeedometerlE0VAXGACyAT0s10PowerZonesuL0VAXGGASyACyAT0s9IntervalslE0VAXGACyAT0s15IntervalsSecondlE0VAXGGGASyASyACyAT0s4RaceklE0VAXGACyAT0s10MultiSportuL0VAXGGAA4TextVGGG_ALQo_AXGGG_AA04PageheG0VQo_AXGMd);
  MEMORY[0x28223BE20](v56);
  v59 = &v53 - v22;
  type metadata accessor for MetricPlattersView();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI5StateVy11WorkoutCore13MetricPlatterVGMd);
  State.projectedValue.getter();
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI7BindingVy11WorkoutCore13MetricPlatterVGMd);
  (*(*(v23 - 8) + 56))(v14, 0, 1, v23);
  v65 = a1;
  type metadata accessor for MetricPlatter();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI7ForEachVySay11WorkoutCore13MetricPlatterVGSSAA15ModifiedContentVyAA4ViewPAAE3tag_15includeOptionalQrqd___SbtSHRd__lFQOyAA012_ConditionalJ0VyAOyAOyAOyAIy0eB0020MirrorStackedMetricsK0VAA14_PaddingLayoutVGAUGAOyAuIyAP0p8GraphicsrK0VATGGGAOyAOyAyIyAP0p13ActivityRingshK0VATGGAOyAIyAIyAP0p5PacerghK0VATGATGAIyAP0p14HeartRateZonesrH0VATGGGGAOyAOyAOyAIyAP0p11SpeedometerhK0VATGAIyAP0p10PowerZonesrH0VATGGAOyAIyAP0p9IntervalshK0VATGAIyAP0p15IntervalsSecondhK0VATGGGAOyAOyAIyAP0p4RaceghK0VATGAIyAP0p10MultiSportrH0VATGGAA4TextVGGG_AFQo_ATGGMd);
  lazy protocol witness table accessor for type PlatterPublisher and conformance PlatterPublisher(&lazy protocol witness table cache variable for type MetricPlatter and conformance MetricPlatter, MEMORY[0x277D7DFD0]);
  lazy protocol witness table accessor for type ForEach<[MetricPlatter], String, ModifiedContent<<<opaque return type of View.tag<A>(_:includeOptional:)>>.0, _PaddingLayout>> and conformance <> ForEach<A, B, C>();
  TabView.init(selection:content:)();
  static PageTabViewStyle.IndexDisplayMode.automatic.getter();
  PageTabViewStyle.init(indexDisplayMode:)();
  lazy protocol witness table accessor for type ZStack<TupleView<(_ConditionalContent<<<opaque return type of View.onTapGesture(count:perform:)>>.0, <<opaque return type of View.onDelayedLongPressGesture(minimumDuration:maximumDistance:perform:onPressingChanged:)>>.0>, ModifiedContent<WorkoutBuddyStatusView, _PaddingLayout>?)>> and conformance ZStack<A>(&lazy protocol witness table cache variable for type TabView<MetricPlatter, ForEach<[MetricPlatter], String, ModifiedContent<<<opaque return type of View.tag<A>(_:includeOptional:)>>.0, _PaddingLayout>>> and conformance TabView<A, B>, &_s7SwiftUI7TabViewVy11WorkoutCore13MetricPlatterVAA7ForEachVySayAFGSSAA15ModifiedContentVyAA0D0PAAE3tag_15includeOptionalQrqd___SbtSHRd__lFQOyAA012_ConditionalL0VyAQyAQyAQyAKy0eB0020MirrorStackedMetricsD0VAA14_PaddingLayoutVGAWGAQyAwKyAR0q8GraphicssD0VAVGGGAQyAQyA_AKyAR0q13ActivityRingshD0VAVGGAQyAKyAKyAR0q5PacerghD0VAVGAVGAKyAR0q14HeartRateZonessH0VAVGGGGAQyAQyAQyAKyAR0q11SpeedometerhD0VAVGAKyAR0q10PowerZonessH0VAVGGAQyAKyAR0q9IntervalshD0VAVGAKyAR0q15IntervalsSecondhD0VAVGGGAQyAQyAKyAR0q4RaceghD0VAVGAKyAR0q10MultiSportsH0VAVGGAA4TextVGGG_AFQo_AVGGGMd);
  v24 = v54;
  View.tabViewStyle<A>(_:)();
  (*(v55 + 8))(v11, v24);
  (*(v16 + 8))(v18, v15);
  v25 = static Edge.Set.bottom.getter();
  v26 = objc_opt_self();
  v27 = [v26 currentDevice];
  specialized UIDevice.screenType.getter();

  v28 = objc_opt_self();
  v29 = [v28 mainScreen];
  [v29 scale];
  v31 = v30;

  v32 = [v28 mainScreen];
  [v32 nativeScale];
  v34 = v33;

  if (v31 != v34)
  {
    v35 = [v28 mainScreen];
    [v35 scale];

    v36 = [v28 mainScreen];
    [v36 nativeScale];
  }

  EdgeInsets.init(_all:)();
  v38 = v37;
  v40 = v39;
  v42 = v41;
  v44 = v43;
  v45 = v59;
  (*(v57 + 32))(v59, v21, v58);
  v46 = v45 + *(v56 + 36);
  *v46 = v25;
  *(v46 + 8) = v38;
  *(v46 + 16) = v40;
  *(v46 + 24) = v42;
  *(v46 + 32) = v44;
  *(v46 + 40) = 0;
  v47 = v61;
  MoveTransition.init(edge:)();
  v49 = v62;
  v48 = v63;
  (*(v62 + 16))(v60, v47, v63);
  lazy protocol witness table accessor for type PlatterPublisher and conformance PlatterPublisher(&lazy protocol witness table cache variable for type MoveTransition and conformance MoveTransition, MEMORY[0x277CDF858]);
  v50 = AnyTransition.init<A>(_:)();
  (*(v49 + 8))(v47, v48);
  v51 = v64;
  sub_20C680AB8(v45, v64);
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyACyAA4ViewPAAE03tabE5StyleyQrqd__AA03TabeG0Rd__lFQOyAA0hE0Vy11WorkoutCore13MetricPlatterVAA7ForEachVySayALGSSACyAeAE3tag_15includeOptionalQrqd___SbtSHRd__lFQOyAA012_ConditionalD0VyASyASyASyACy0iB0020MirrorStackedMetricsE0VAA14_PaddingLayoutVGAYGASyAyCyAT0s8GraphicsuE0VAXGGGASyASyA1_ACyAT0s13ActivityRingslE0VAXGGASyACyACyAT0s5PacerklE0VAXGAXGACyAT0s14HeartRateZonesuL0VAXGGGGASyASyASyACyAT0s11SpeedometerlE0VAXGACyAT0s10PowerZonesuL0VAXGGASyACyAT0s9IntervalslE0VAXGACyAT0s15IntervalsSecondlE0VAXGGGASyASyACyAT0s4RaceklE0VAXGACyAT0s10MultiSportuL0VAXGGAA4TextVGGG_ALQo_AXGGG_AA04PageheG0VQo_AXGAA21_TraitWritingModifierVyAA18TransitionTraitKeyVGGMd);
  *(v51 + *(result + 36)) = v50;
  return result;
}

uint64_t closure #1 in closure #2 in closure #1 in MetricPlattersView.body.getter(uint64_t a1)
{
  v2 = type metadata accessor for MetricPlattersView();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v8[1] = PlatterPublisher.metricPlatters.getter();
  outlined init with copy of MetricPlattersView(a1, v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v5 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v6 = swift_allocObject();
  outlined init with take of MetricPlattersView(v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), v6 + v5);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay11WorkoutCore13MetricPlatterVGMd);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyAA4ViewPAAE3tag_15includeOptionalQrqd___SbtSHRd__lFQOyAA012_ConditionalD0VyAIyAIyAIyACy07WorkoutB0020MirrorStackedMetricsE0VAA14_PaddingLayoutVGAOGAIyAoCyAJ0k8GraphicsmE0VANGGGAIyAIyAsCyAJ0k20ActivityRingsPlatterE0VANGGAIyACyACyAJ0k11PacerMetricsE0VANGANGACyAJ0k14HeartRateZonesmS0VANGGGGAIyAIyAIyACyAJ0k11SpeedometersE0VANGACyAJ0k5PowerxmS0VANGGAIyACyAJ0k9IntervalssE0VANGACyAJ0k15IntervalsSecondsE0VANGGGAIyAIyACyAJ0k4RaceusE0VANGACyAJ0k10MultiSportmS0VANGGAA4TextVGGG_0J4Core0uS0VQo_ANGMd);
  lazy protocol witness table accessor for type ZStack<TupleView<(_ConditionalContent<<<opaque return type of View.onTapGesture(count:perform:)>>.0, <<opaque return type of View.onDelayedLongPressGesture(minimumDuration:maximumDistance:perform:onPressingChanged:)>>.0>, ModifiedContent<WorkoutBuddyStatusView, _PaddingLayout>?)>> and conformance ZStack<A>(&lazy protocol witness table cache variable for type [MetricPlatter] and conformance [A], &_sSay11WorkoutCore13MetricPlatterVGMd);
  lazy protocol witness table accessor for type ModifiedContent<<<opaque return type of View.tag<A>(_:includeOptional:)>>.0, _PaddingLayout> and conformance <> ModifiedContent<A, B>();
  lazy protocol witness table accessor for type PlatterPublisher and conformance PlatterPublisher(&lazy protocol witness table cache variable for type MetricPlatter and conformance MetricPlatter, MEMORY[0x277D7DFD0]);
  return ForEach<>.init(_:content:)();
}

uint64_t closure #1 in closure #1 in closure #2 in closure #1 in MetricPlattersView.body.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI19_ConditionalContentVyACyACyACyAA08ModifiedD0Vy07WorkoutB024MirrorStackedMetricsViewVAA14_PaddingLayoutVGAKGACyAkEyAF0g8GraphicsiJ0VAJGGGACyACyAoEyAF0g20ActivityRingsPlatterJ0VAJGGACyAEyAEyAF0g11PacerMetricpJ0VAJGAJGAEyAF0g14HeartRateZonesiP0VAJGGGGACyACyACyAEyAF0g11SpeedometerpJ0VAJGAEyAF0g5PoweruiP0VAJGGACyAEyAF0g9IntervalspJ0VAJGAEyAF0gx6SecondpJ0VAJGGGACyACyAEyAF0g4RacerpJ0VAJGAEyAF0g10MultiSportiP0VAJGGAA4TextVGGGMd);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v34 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI4ViewPAAE3tag_15includeOptionalQrqd___SbtSHRd__lFQOyAA19_ConditionalContentVyAGyAGyAGyAA08ModifiedH0Vy07WorkoutB0020MirrorStackedMetricsC0VAA14_PaddingLayoutVGAOGAGyAoIyAJ0k8GraphicsmC0VANGGGAGyAGyAsIyAJ0k20ActivityRingsPlatterC0VANGGAGyAIyAIyAJ0k11PacerMetricsC0VANGANGAIyAJ0k14HeartRateZonesmS0VANGGGGAGyAGyAGyAIyAJ0k11SpeedometersC0VANGAIyAJ0k5PowerxmS0VANGGAGyAIyAJ0k9IntervalssC0VANGAIyAJ0k15IntervalsSecondsC0VANGGGAGyAGyAIyAJ0k4RaceusC0VANGAIyAJ0k10MultiSportmS0VANGGAA4TextVGGG_0J4Core0uS0VQo_Md);
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = &v34 - v11;
  v13 = *a2;
  v14 = *(a2 + 104);
  v15 = WorkoutStatePublisher.activityType.getter();
  if (!v15)
  {
    v15 = *(a2 + 96);
  }

  v16 = v15;
  v17 = FIActivityMoveModeUserDefault();
  static MetricPlatterViewBuilder_iOS.view(for:metricsPublisher:formattingManager:activityType:activityMoveMode:)(v13, v14, v16, v17, v8);

  v18 = &v12[*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyAA012_ConditionalD0VyAEyAEyAEyACy07WorkoutB024MirrorStackedMetricsViewVAA14_PaddingLayoutVGAKGAEyAkCyAF0g8GraphicsiJ0VAJGGGAEyAEyAoCyAF0g20ActivityRingsPlatterJ0VAJGGAEyACyACyAF0g11PacerMetricpJ0VAJGAJGACyAF0g14HeartRateZonesiP0VAJGGGGAEyAEyAEyACyAF0g11SpeedometerpJ0VAJGACyAF0g5PoweruiP0VAJGGAEyACyAF0g9IntervalspJ0VAJGACyAF0gx6SecondpJ0VAJGGGAEyAEyACyAF0g4RacerpJ0VAJGACyAF0g10MultiSportiP0VAJGGAA4TextVGGGAA24_TagTraitWritingModifierVy0F4Core0rP0VGGMd) + 36)];
  v19 = type metadata accessor for MetricPlatter();
  (*(*(v19 - 8) + 16))(v18, a1, v19);
  v18[*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI24_TagTraitWritingModifierVy11WorkoutCore13MetricPlatterVGMd) + 36)] = 1;
  outlined init with take of ModifiedContent<WorkoutBuddyStatusView, _PaddingLayout>(v8, v12, &_s7SwiftUI19_ConditionalContentVyACyACyACyAA08ModifiedD0Vy07WorkoutB024MirrorStackedMetricsViewVAA14_PaddingLayoutVGAKGACyAkEyAF0g8GraphicsiJ0VAJGGGACyACyAoEyAF0g20ActivityRingsPlatterJ0VAJGGACyAEyAEyAF0g11PacerMetricpJ0VAJGAJGAEyAF0g14HeartRateZonesiP0VAJGGGGACyACyACyAEyAF0g11SpeedometerpJ0VAJGAEyAF0g5PoweruiP0VAJGGACyAEyAF0g9IntervalspJ0VAJGAEyAF0gx6SecondpJ0VAJGGGACyACyAEyAF0g4RacerpJ0VAJGAEyAF0g10MultiSportiP0VAJGGAA4TextVGGGMd);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy7SwiftUI4EdgeO3SetVGMd);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_20CB5DA80;
  v21 = static Edge.Set.leading.getter();
  *(inited + 32) = v21;
  v22 = static Edge.Set.trailing.getter();
  *(inited + 33) = v22;
  v23 = Edge.Set.init(rawValue:)();
  Edge.Set.init(rawValue:)();
  if (Edge.Set.init(rawValue:)() != v21)
  {
    v23 = Edge.Set.init(rawValue:)();
  }

  Edge.Set.init(rawValue:)();
  if (Edge.Set.init(rawValue:)() != v22)
  {
    v23 = Edge.Set.init(rawValue:)();
  }

  if (one-time initialization token for contentLeadingTrailingPadding != -1)
  {
    swift_once();
  }

  EdgeInsets.init(_all:)();
  v25 = v24;
  v27 = v26;
  v29 = v28;
  v31 = v30;
  (*(v10 + 32))(a3, v12, v9);
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyAA4ViewPAAE3tag_15includeOptionalQrqd___SbtSHRd__lFQOyAA012_ConditionalD0VyAIyAIyAIyACy07WorkoutB0020MirrorStackedMetricsE0VAA14_PaddingLayoutVGAOGAIyAoCyAJ0k8GraphicsmE0VANGGGAIyAIyAsCyAJ0k20ActivityRingsPlatterE0VANGGAIyACyACyAJ0k11PacerMetricsE0VANGANGACyAJ0k14HeartRateZonesmS0VANGGGGAIyAIyAIyACyAJ0k11SpeedometersE0VANGACyAJ0k5PowerxmS0VANGGAIyACyAJ0k9IntervalssE0VANGACyAJ0k15IntervalsSecondsE0VANGGGAIyAIyACyAJ0k4RaceusE0VANGACyAJ0k10MultiSportmS0VANGGAA4TextVGGG_0J4Core0uS0VQo_ANGMd);
  v33 = a3 + *(result + 36);
  *v33 = v23;
  *(v33 + 8) = v25;
  *(v33 + 16) = v27;
  *(v33 + 24) = v29;
  *(v33 + 32) = v31;
  *(v33 + 40) = 0;
  return result;
}

uint64_t closure #3 in closure #1 in MetricPlattersView.body.getter()
{
  v0 = type metadata accessor for MetricPlatterType();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v16 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for MetricPlatter();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v16 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for MetricPlattersView();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI5StateVy11WorkoutCore13MetricPlatterVGMd);
  State.wrappedValue.getter();
  MetricPlatter.type.getter();
  v8 = (*(v5 + 8))(v7, v4);
  v9 = MEMORY[0x20F305910](v8);
  v11 = v10;
  (*(v1 + 8))(v3, v0);
  MetricsPublisher.elapsedTimeMetricsPublisher.getter();
  ElapsedTimeMetricsPublisher.elapsedTime.getter();
  v13 = v12;

  v14.value._countAndFlagsBits = v9;
  v14.value._object = v11;
  MetricPlatterAnalytics.record(metricPlatterType:elapsedTime:)(v14, v13);
}

void closure #4 in closure #1 in MetricPlattersView.body.getter()
{
  v0 = type metadata accessor for MetricPlatter();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v9 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = *MEMORY[0x277D76438];
  type metadata accessor for MetricPlattersView();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI5StateVy11WorkoutCore13MetricPlatterVGMd);
  State.wrappedValue.getter();
  v5 = MetricPlatter.displayName.getter();
  v7 = v6;
  (*(v1 + 8))(v3, v0);
  v8 = MEMORY[0x20F30BAD0](v5, v7);

  UIAccessibilityPostNotification(v4, v8);
}

void closure #5 in closure #1 in MetricPlattersView.body.getter()
{
  MetricsPublisher.elapsedTimeMetricsPublisher.getter();
  ElapsedTimeMetricsPublisher.elapsedTime.getter();
  v1 = v0;

  MetricPlatterAnalytics.record(metricPlatterType:elapsedTime:)(0, v1);
}

void closure #6 in closure #1 in MetricPlattersView.body.getter()
{
  type metadata accessor for MetricPlattersView();
  AppStorage.wrappedValue.getter();
  if (v0 == 1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI5StateVySbGMd);
    State.wrappedValue.setter();
    MetricPlattersView.dismissWorkoutAlert()();
  }
}

uint64_t closure #2 in MetricPlattersView.body.getter@<X0>(uint64_t a1@<X0>, uint64_t (**a2)(void *a1)@<X8>)
{
  v4 = type metadata accessor for MetricPlattersView();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4 - 8);
  outlined init with copy of MetricPlattersView(a1, &v11 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v7 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v8 = swift_allocObject();
  outlined init with take of MetricPlattersView(&v11 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), v8 + v7);
  v9 = *(type metadata accessor for WorkoutAlertList() + 20);
  *(a2 + v9) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI11EnvironmentV7ContentOyAA13DismissActionV_GMd);
  result = swift_storeEnumTagMultiPayload();
  *a2 = partial apply for closure #1 in closure #2 in MetricPlattersView.body.getter;
  a2[1] = v8;
  return result;
}

uint64_t closure #1 in closure #2 in MetricPlattersView.body.getter(void *a1, uint64_t a2)
{
  v26 = a2;
  v29 = a1;
  v30 = type metadata accessor for DispatchWorkItemFlags();
  v33 = *(v30 - 8);
  MEMORY[0x28223BE20](v30);
  v3 = &v26 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for DispatchQoS();
  v31 = *(v4 - 8);
  v32 = v4;
  MEMORY[0x28223BE20](v4);
  v6 = &v26 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for MetricPlattersView();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v10 = type metadata accessor for DispatchTime();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = &v26 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v16 = &v26 - v15;
  _sSo23FIUIWorkoutActivityTypeCMaTm_4(0, &lazy cache variable for type metadata for OS_dispatch_queue);
  v27 = static OS_dispatch_queue.main.getter();
  static DispatchTime.now()();
  + infix(_:_:)();
  v28 = *(v11 + 8);
  v28(v13, v10);
  outlined init with copy of MetricPlattersView(v26, &v26 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  v17 = (*(v8 + 80) + 16) & ~*(v8 + 80);
  v18 = (v9 + v17 + 7) & 0xFFFFFFFFFFFFFFF8;
  v19 = swift_allocObject();
  outlined init with take of MetricPlattersView(&v26 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0), v19 + v17);
  v20 = v29;
  *(v19 + v18) = v29;
  aBlock[4] = partial apply for closure #1 in closure #1 in closure #2 in MetricPlattersView.body.getter;
  aBlock[5] = v19;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = thunk for @escaping @callee_guaranteed () -> ();
  aBlock[3] = &block_descriptor_14;
  v21 = _Block_copy(aBlock);
  v22 = v20;

  static DispatchQoS.unspecified.getter();
  aBlock[0] = MEMORY[0x277D84F90];
  lazy protocol witness table accessor for type PlatterPublisher and conformance PlatterPublisher(&lazy protocol witness table cache variable for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags, MEMORY[0x277D85198]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay8Dispatch0A13WorkItemFlagsVGMd);
  lazy protocol witness table accessor for type ZStack<TupleView<(_ConditionalContent<<<opaque return type of View.onTapGesture(count:perform:)>>.0, <<opaque return type of View.onDelayedLongPressGesture(minimumDuration:maximumDistance:perform:onPressingChanged:)>>.0>, ModifiedContent<WorkoutBuddyStatusView, _PaddingLayout>?)>> and conformance ZStack<A>(&lazy protocol witness table cache variable for type [DispatchWorkItemFlags] and conformance [A], &_sSay8Dispatch0A13WorkItemFlagsVGMd);
  v23 = v30;
  dispatch thunk of SetAlgebra.init<A>(_:)();
  v24 = v27;
  MEMORY[0x20F30C1A0](v16, v6, v3, v21);
  _Block_release(v21);

  (*(v33 + 8))(v3, v23);
  (*(v31 + 8))(v6, v32);
  return (v28)(v16, v10);
}

id closure #1 in closure #1 in closure #2 in MetricPlattersView.body.getter(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for MetricPlattersView();
  MEMORY[0x28223BE20](v4);
  v6 = &v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for EnvironmentValues();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v14 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *(a1 + 72);
  if (*(a1 + 80) != 1)
  {

    static os_log_type_t.fault.getter();
    v13 = static Log.runtimeIssuesLog.getter();
    os_log(_:dso:log:_:_:)();

    EnvironmentValues.init()();
    swift_getAtKeyPath();
    outlined consume of Environment<WorkoutAlertPresenter?>.Content(v11, 0);
    result = (*(v8 + 8))(v10, v7);
    v11 = v15;
    if (!v15)
    {
      return result;
    }

    goto LABEL_5;
  }

  result = v11;
  if (v11)
  {
LABEL_5:
    outlined init with copy of MetricPlattersView(a1, v6);
    [v11 alertSource:_bridgeAnythingNonVerbatimToObjectiveC<A>(_:)() didTriggerAlert:a2];

    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t outlined init with copy of MetricPlattersView(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for MetricPlattersView();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

void outlined consume of Environment<WorkoutAlertPresenter?>.Content(id a1, char a2)
{
  if (a2)
  {
  }

  else
  {
  }
}

uint64_t outlined init with take of MetricPlattersView(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for MetricPlattersView();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t partial apply for closure #2 in MetricPlattersView.body.getter@<X0>(uint64_t (**a1)(void *a1)@<X8>)
{
  v3 = *(type metadata accessor for MetricPlattersView() - 8);
  v4 = v1 + ((*(v3 + 80) + 16) & ~*(v3 + 80));

  return closure #2 in MetricPlattersView.body.getter(v4, a1);
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<ZStack<TupleView<(_ConditionalContent<<<opaque return type of View.onTapGesture(count:perform:)>>.0, <<opaque return type of View.onDelayedLongPressGesture(minimumDuration:maximumDistance:perform:onPressingChanged:)>>.0>, ModifiedContent<WorkoutBuddyStatusView, _PaddingLayout>?)>>, _AnimationModifier<WorkoutNotification?>> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<ZStack<TupleView<(_ConditionalContent<<<opaque return type of View.onTapGesture(count:perform:)>>.0, <<opaque return type of View.onDelayedLongPressGesture(minimumDuration:maximumDistance:perform:onPressingChanged:)>>.0>, ModifiedContent<WorkoutBuddyStatusView, _PaddingLayout>?)>>, _AnimationModifier<WorkoutNotification?>> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<ZStack<TupleView<(_ConditionalContent<<<opaque return type of View.onTapGesture(count:perform:)>>.0, <<opaque return type of View.onDelayedLongPressGesture(minimumDuration:maximumDistance:perform:onPressingChanged:)>>.0>, ModifiedContent<WorkoutBuddyStatusView, _PaddingLayout>?)>>, _AnimationModifier<WorkoutNotification?>> and conformance <> ModifiedContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyAA6ZStackVyAA9TupleViewVyAA012_ConditionalD0VyAA0G0PAAE12onTapGesture5count7performQrSi_yyctFQOyACyACyACyACy07WorkoutB00n12NotificationG0VAA30_EnvironmentKeyWritingModifierVyAO0nG5StyleOGGAA01_d5ShapeS0VyAA9RectangleVGGAA14_PaddingLayoutVGAA06_TraitrS0VyAA010TransitionyQ0VGG_Qo_AkAE0i16DelayedLongPressK015minimumDuration15maximumDistanceAN0I15PressingChangedQrSd_12CoreGraphics7CGFloatVyycySbcSgtFQOyACyAkAE0I6Change2of7initial_Qrqd___SbyyctSQRd__lFQOyAkAEA20_A21_A22__Qrqd___SbyyctSQRd__lFQOyAEyACyACyAkAE03tabgT0yQrqd__AA03TabgT0Rd__lFQOyAA03TabG0Vy0N4Core13MetricPlatterVAA7ForEachVySayA29_GSSACyAkAE3tag_15includeOptionalQrqd___SbtSHRd__lFQOyAIyAIyAIyAIyACyAO020MirrorStackedMetricsG0VA3_GA37_GAIyA37_ACyAO021MirrorGraphicsMetricsG0VA3_GGGAIyAIyA41_ACyAO026MirrorActivityRingsPlatterG0VA3_GGAIyACyACyAO024MirrorPacerMetricPlatterG0VA3_GA3_GACyAO34MirrorHeartRateZonesMetricsPlatterVA3_GGGGAIyAIyAIyACyAO024MirrorSpeedometerPlatterG0VA3_GACyAO30MirrorPowerZonesMetricsPlatterVA3_GGAIyACyAO022MirrorIntervalsPlatterG0VA3_GACyAO028MirrorIntervalsSecondPlatterG0VA3_GGGAIyAIyACyAO023MirrorRaceMetricPlatterG0VA3_GACyAO30MirrorMultiSportMetricsPlatterVA3_GGAA4TextVGGG_A29_Qo_A3_GGG_AA07PageTabgT0VQo_A3_GA9_GG_A29_Qo__A29_Qo_AA017_AppearanceActionS0VG_Qo_G_ACyAO0n11BuddyStatusG0VA3_GSgtGGAA010_AnimationS0VyA27_0nO0CSgGGMd);
    lazy protocol witness table accessor for type ZStack<TupleView<(_ConditionalContent<<<opaque return type of View.onTapGesture(count:perform:)>>.0, <<opaque return type of View.onDelayedLongPressGesture(minimumDuration:maximumDistance:perform:onPressingChanged:)>>.0>, ModifiedContent<WorkoutBuddyStatusView, _PaddingLayout>?)>> and conformance ZStack<A>(&lazy protocol witness table cache variable for type ZStack<TupleView<(_ConditionalContent<<<opaque return type of View.onTapGesture(count:perform:)>>.0, <<opaque return type of View.onDelayedLongPressGesture(minimumDuration:maximumDistance:perform:onPressingChanged:)>>.0>, ModifiedContent<WorkoutBuddyStatusView, _PaddingLayout>?)>> and conformance ZStack<A>, &_s7SwiftUI6ZStackVyAA9TupleViewVyAA19_ConditionalContentVyAA0E0PAAE12onTapGesture5count7performQrSi_yyctFQOyAA08ModifiedG0VyANyANyANy07WorkoutB00n12NotificationE0VAA30_EnvironmentKeyWritingModifierVyAO0nE5StyleOGGAA01_g5ShapeS0VyAA9RectangleVGGAA14_PaddingLayoutVGAA06_TraitrS0VyAA010TransitionyQ0VGG_Qo_AiAE0h16DelayedLongPressJ015minimumDuration15maximumDistanceAL0H15PressingChangedQrSd_12CoreGraphics7CGFloatVyycySbcSgtFQOyANyAiAE0H6Change2of7initial_Qrqd___SbyyctSQRd__lFQOyAiAEA20_A21_A22__Qrqd___SbyyctSQRd__lFQOyACyANyANyAiAE03tabeT0yQrqd__AA03TabeT0Rd__lFQOyAA03TabE0Vy0N4Core13MetricPlatterVAA7ForEachVySayA29_GSSANyAiAE3tag_15includeOptionalQrqd___SbtSHRd__lFQOyAGyAGyAGyAGyANyAO020MirrorStackedMetricsE0VA3_GA37_GAGyA37_ANyAO021MirrorGraphicsMetricsE0VA3_GGGAGyAGyA41_ANyAO026MirrorActivityRingsPlatterE0VA3_GGAGyANyANyAO024MirrorPacerMetricPlatterE0VA3_GA3_GANyAO34MirrorHeartRateZonesMetricsPlatterVA3_GGGGAGyAGyAGyANyAO024MirrorSpeedometerPlatterE0VA3_GANyAO30MirrorPowerZonesMetricsPlatterVA3_GGAGyANyAO022MirrorIntervalsPlatterE0VA3_GANyAO028MirrorIntervalsSecondPlatterE0VA3_GGGAGyAGyANyAO023MirrorRaceMetricPlatterE0VA3_GANyAO30MirrorMultiSportMetricsPlatterVA3_GGAA4TextVGGG_A29_Qo_A3_GGG_AA07PageTabeT0VQo_A3_GA9_GG_A29_Qo__A29_Qo_AA017_AppearanceActionS0VG_Qo_G_ANyAO0n11BuddyStatusE0VA3_GSgtGGMd);
    lazy protocol witness table accessor for type ZStack<TupleView<(_ConditionalContent<<<opaque return type of View.onTapGesture(count:perform:)>>.0, <<opaque return type of View.onDelayedLongPressGesture(minimumDuration:maximumDistance:perform:onPressingChanged:)>>.0>, ModifiedContent<WorkoutBuddyStatusView, _PaddingLayout>?)>> and conformance ZStack<A>(&lazy protocol witness table cache variable for type _AnimationModifier<WorkoutNotification?> and conformance _AnimationModifier<A>, &_s7SwiftUI18_AnimationModifierVy11WorkoutCore0E12NotificationCSgGMd);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<ZStack<TupleView<(_ConditionalContent<<<opaque return type of View.onTapGesture(count:perform:)>>.0, <<opaque return type of View.onDelayedLongPressGesture(minimumDuration:maximumDistance:perform:onPressingChanged:)>>.0>, ModifiedContent<WorkoutBuddyStatusView, _PaddingLayout>?)>>, _AnimationModifier<WorkoutNotification?>> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

uint64_t partial apply for closure #1 in closure #2 in MetricPlattersView.body.getter(void *a1)
{
  v3 = *(type metadata accessor for MetricPlattersView() - 8);
  v4 = v1 + ((*(v3 + 80) + 16) & ~*(v3 + 80));

  return closure #1 in closure #2 in MetricPlattersView.body.getter(a1, v4);
}

uint64_t _sSo23FIUIWorkoutActivityTypeCMaTm_4(uint64_t a1, unint64_t *a2)
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

id partial apply for closure #1 in closure #1 in closure #2 in MetricPlattersView.body.getter()
{
  v1 = *(type metadata accessor for MetricPlattersView() - 8);
  v2 = (*(v1 + 80) + 16) & ~*(v1 + 80);
  v3 = *(v0 + ((*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8));

  return closure #1 in closure #1 in closure #2 in MetricPlattersView.body.getter(v0 + v2, v3);
}

uint64_t block_copy_helper_14(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t partial apply for closure #3 in closure #1 in MetricPlattersView.body.getter(uint64_t (*a1)(uint64_t))
{
  v2 = *(type metadata accessor for MetricPlattersView() - 8);
  v3 = v1 + ((*(v2 + 80) + 16) & ~*(v2 + 80));

  return a1(v3);
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<WorkoutNotificationView, _EnvironmentKeyWritingModifier<WorkoutViewStyle>>, _ContentShapeModifier<Rectangle>>, _PaddingLayout>, _TraitWritingModifier<TransitionTraitKey>> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<WorkoutNotificationView, _EnvironmentKeyWritingModifier<WorkoutViewStyle>>, _ContentShapeModifier<Rectangle>>, _PaddingLayout>, _TraitWritingModifier<TransitionTraitKey>> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<WorkoutNotificationView, _EnvironmentKeyWritingModifier<WorkoutViewStyle>>, _ContentShapeModifier<Rectangle>>, _PaddingLayout>, _TraitWritingModifier<TransitionTraitKey>> and conformance <> ModifiedContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyACyACyACy07WorkoutB00E16NotificationViewVAA30_EnvironmentKeyWritingModifierVyAD0eG5StyleOGGAA01_d5ShapeK0VyAA9RectangleVGGAA14_PaddingLayoutVGAA06_TraitjK0VyAA010TransitionqI0VGGMd);
    lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<ModifiedContent<WorkoutNotificationView, _EnvironmentKeyWritingModifier<WorkoutViewStyle>>, _ContentShapeModifier<Rectangle>>, _PaddingLayout> and conformance <> ModifiedContent<A, B>(&lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<WorkoutNotificationView, _EnvironmentKeyWritingModifier<WorkoutViewStyle>>, _ContentShapeModifier<Rectangle>>, _PaddingLayout> and conformance <> ModifiedContent<A, B>, &_s7SwiftUI15ModifiedContentVyACyACy07WorkoutB00E16NotificationViewVAA30_EnvironmentKeyWritingModifierVyAD0eG5StyleOGGAA01_d5ShapeK0VyAA9RectangleVGGAA14_PaddingLayoutVGMd, &_s7SwiftUI15ModifiedContentVyACyACy07WorkoutB00E16NotificationViewVAA30_EnvironmentKeyWritingModifierVyAD0eG5StyleOGGAA01_d5ShapeK0VyAA9RectangleVGGAA14_PaddingLayoutVGMR, lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<WorkoutNotificationView, _EnvironmentKeyWritingModifier<WorkoutViewStyle>>, _ContentShapeModifier<Rectangle>> and conformance <> ModifiedContent<A, B>);
    lazy protocol witness table accessor for type ZStack<TupleView<(_ConditionalContent<<<opaque return type of View.onTapGesture(count:perform:)>>.0, <<opaque return type of View.onDelayedLongPressGesture(minimumDuration:maximumDistance:perform:onPressingChanged:)>>.0>, ModifiedContent<WorkoutBuddyStatusView, _PaddingLayout>?)>> and conformance ZStack<A>(&lazy protocol witness table cache variable for type _TraitWritingModifier<TransitionTraitKey> and conformance _TraitWritingModifier<A>, &_s7SwiftUI21_TraitWritingModifierVyAA010TransitionC3KeyVGMd);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<WorkoutNotificationView, _EnvironmentKeyWritingModifier<WorkoutViewStyle>>, _ContentShapeModifier<Rectangle>>, _PaddingLayout>, _TraitWritingModifier<TransitionTraitKey>> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<WorkoutNotificationView, _EnvironmentKeyWritingModifier<WorkoutViewStyle>>, _ContentShapeModifier<Rectangle>> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<WorkoutNotificationView, _EnvironmentKeyWritingModifier<WorkoutViewStyle>>, _ContentShapeModifier<Rectangle>> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<WorkoutNotificationView, _EnvironmentKeyWritingModifier<WorkoutViewStyle>>, _ContentShapeModifier<Rectangle>> and conformance <> ModifiedContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyACy07WorkoutB00E16NotificationViewVAA30_EnvironmentKeyWritingModifierVyAD0eG5StyleOGGAA01_d5ShapeK0VyAA9RectangleVGGMd);
    lazy protocol witness table accessor for type ModifiedContent<WorkoutNotificationView, _EnvironmentKeyWritingModifier<WorkoutViewStyle>> and conformance <> ModifiedContent<A, B>();
    lazy protocol witness table accessor for type ZStack<TupleView<(_ConditionalContent<<<opaque return type of View.onTapGesture(count:perform:)>>.0, <<opaque return type of View.onDelayedLongPressGesture(minimumDuration:maximumDistance:perform:onPressingChanged:)>>.0>, ModifiedContent<WorkoutBuddyStatusView, _PaddingLayout>?)>> and conformance ZStack<A>(&lazy protocol witness table cache variable for type _ContentShapeModifier<Rectangle> and conformance _ContentShapeModifier<A>, &_s7SwiftUI21_ContentShapeModifierVyAA9RectangleVGMd);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<WorkoutNotificationView, _EnvironmentKeyWritingModifier<WorkoutViewStyle>>, _ContentShapeModifier<Rectangle>> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<WorkoutNotificationView, _EnvironmentKeyWritingModifier<WorkoutViewStyle>> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<WorkoutNotificationView, _EnvironmentKeyWritingModifier<WorkoutViewStyle>> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<WorkoutNotificationView, _EnvironmentKeyWritingModifier<WorkoutViewStyle>> and conformance <> ModifiedContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVy07WorkoutB00E16NotificationViewVAA30_EnvironmentKeyWritingModifierVyAD0eG5StyleOGGMd);
    lazy protocol witness table accessor for type WorkoutNotificationView and conformance WorkoutNotificationView();
    lazy protocol witness table accessor for type ZStack<TupleView<(_ConditionalContent<<<opaque return type of View.onTapGesture(count:perform:)>>.0, <<opaque return type of View.onDelayedLongPressGesture(minimumDuration:maximumDistance:perform:onPressingChanged:)>>.0>, ModifiedContent<WorkoutBuddyStatusView, _PaddingLayout>?)>> and conformance ZStack<A>(&lazy protocol witness table cache variable for type _EnvironmentKeyWritingModifier<WorkoutViewStyle> and conformance _EnvironmentKeyWritingModifier<A>, &_s7SwiftUI30_EnvironmentKeyWritingModifierVy07WorkoutB00G9ViewStyleOGMd);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<WorkoutNotificationView, _EnvironmentKeyWritingModifier<WorkoutViewStyle>> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type WorkoutNotificationView and conformance WorkoutNotificationView()
{
  result = lazy protocol witness table cache variable for type WorkoutNotificationView and conformance WorkoutNotificationView;
  if (!lazy protocol witness table cache variable for type WorkoutNotificationView and conformance WorkoutNotificationView)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type WorkoutNotificationView and conformance WorkoutNotificationView);
  }

  return result;
}

uint64_t outlined init with copy of ModifiedContent<WorkoutBuddyStatusView, _PaddingLayout>?(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVy07WorkoutB00E15BuddyStatusViewVAA14_PaddingLayoutVGSgMd);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t outlined destroy of ModifiedContent<ZStack<TupleView<(_ConditionalContent<<<opaque return type of View.onTapGesture(count:perform:)>>.0, <<opaque return type of View.onDelayedLongPressGesture(minimumDuration:maximumDistance:perform:onPressingChanged:)>>.0>, ModifiedContent<WorkoutBuddyStatusView, _PaddingLayout>?)>>, _AnimationModifier<WorkoutNotification?>>(uint64_t a1, uint64_t *a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(a2);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

void partial apply for closure #1 in closure #1 in MetricPlattersView.body.getter()
{
  type metadata accessor for MetricPlattersView();
  if ((WorkoutNotification.isUserInteractive.getter() & 1) == 0)
  {
    MetricPlattersView.dismissWorkoutAlert()();
  }
}

uint64_t outlined destroy of ModifiedContent<WorkoutBuddyStatusView, _PaddingLayout>?(uint64_t a1, uint64_t *a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(a2);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t outlined destroy of MetricPlattersView(uint64_t a1)
{
  v2 = type metadata accessor for MetricPlattersView();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t lazy protocol witness table accessor for type ForEach<[MetricPlatter], String, ModifiedContent<<<opaque return type of View.tag<A>(_:includeOptional:)>>.0, _PaddingLayout>> and conformance <> ForEach<A, B, C>()
{
  result = lazy protocol witness table cache variable for type ForEach<[MetricPlatter], String, ModifiedContent<<<opaque return type of View.tag<A>(_:includeOptional:)>>.0, _PaddingLayout>> and conformance <> ForEach<A, B, C>;
  if (!lazy protocol witness table cache variable for type ForEach<[MetricPlatter], String, ModifiedContent<<<opaque return type of View.tag<A>(_:includeOptional:)>>.0, _PaddingLayout>> and conformance <> ForEach<A, B, C>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI7ForEachVySay11WorkoutCore13MetricPlatterVGSSAA15ModifiedContentVyAA4ViewPAAE3tag_15includeOptionalQrqd___SbtSHRd__lFQOyAA012_ConditionalJ0VyAOyAOyAOyAIy0eB0020MirrorStackedMetricsK0VAA14_PaddingLayoutVGAUGAOyAuIyAP0p8GraphicsrK0VATGGGAOyAOyAyIyAP0p13ActivityRingshK0VATGGAOyAIyAIyAP0p5PacerghK0VATGATGAIyAP0p14HeartRateZonesrH0VATGGGGAOyAOyAOyAIyAP0p11SpeedometerhK0VATGAIyAP0p10PowerZonesrH0VATGGAOyAIyAP0p9IntervalshK0VATGAIyAP0p15IntervalsSecondhK0VATGGGAOyAOyAIyAP0p4RaceghK0VATGAIyAP0p10MultiSportrH0VATGGAA4TextVGGG_AFQo_ATGGMd);
    lazy protocol witness table accessor for type ModifiedContent<<<opaque return type of View.tag<A>(_:includeOptional:)>>.0, _PaddingLayout> and conformance <> ModifiedContent<A, B>();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ForEach<[MetricPlatter], String, ModifiedContent<<<opaque return type of View.tag<A>(_:includeOptional:)>>.0, _PaddingLayout>> and conformance <> ForEach<A, B, C>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<<<opaque return type of View.tag<A>(_:includeOptional:)>>.0, _PaddingLayout> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<<<opaque return type of View.tag<A>(_:includeOptional:)>>.0, _PaddingLayout> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<<<opaque return type of View.tag<A>(_:includeOptional:)>>.0, _PaddingLayout> and conformance <> ModifiedContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyAA4ViewPAAE3tag_15includeOptionalQrqd___SbtSHRd__lFQOyAA012_ConditionalD0VyAIyAIyAIyACy07WorkoutB0020MirrorStackedMetricsE0VAA14_PaddingLayoutVGAOGAIyAoCyAJ0k8GraphicsmE0VANGGGAIyAIyAsCyAJ0k20ActivityRingsPlatterE0VANGGAIyACyACyAJ0k11PacerMetricsE0VANGANGACyAJ0k14HeartRateZonesmS0VANGGGGAIyAIyAIyACyAJ0k11SpeedometersE0VANGACyAJ0k5PowerxmS0VANGGAIyACyAJ0k9IntervalssE0VANGACyAJ0k15IntervalsSecondsE0VANGGGAIyAIyACyAJ0k4RaceusE0VANGACyAJ0k10MultiSportmS0VANGGAA4TextVGGG_0J4Core0uS0VQo_ANGMd);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI19_ConditionalContentVyACyACyACyAA08ModifiedD0Vy07WorkoutB024MirrorStackedMetricsViewVAA14_PaddingLayoutVGAKGACyAkEyAF0g8GraphicsiJ0VAJGGGACyACyAoEyAF0g20ActivityRingsPlatterJ0VAJGGACyAEyAEyAF0g11PacerMetricpJ0VAJGAJGAEyAF0g14HeartRateZonesiP0VAJGGGGACyACyACyAEyAF0g11SpeedometerpJ0VAJGAEyAF0g5PoweruiP0VAJGGACyAEyAF0g9IntervalspJ0VAJGAEyAF0gx6SecondpJ0VAJGGGACyACyAEyAF0g4RacerpJ0VAJGAEyAF0g10MultiSportiP0VAJGGAA4TextVGGGMd);
    type metadata accessor for MetricPlatter();
    lazy protocol witness table accessor for type _ConditionalContent<_ConditionalContent<_ConditionalContent<_ConditionalContent<ModifiedContent<MirrorStackedMetricsView, _PaddingLayout>, ModifiedContent<MirrorStackedMetricsView, _PaddingLayout>>, _ConditionalContent<ModifiedContent<MirrorStackedMetricsView, _PaddingLayout>, ModifiedContent<MirrorGraphicsMetricsView, _PaddingLayout>>>, _ConditionalContent<_ConditionalContent<ModifiedContent<MirrorGraphicsMetricsView, _PaddingLayout>, ModifiedContent<MirrorActivityRingsPlatterView, _PaddingLayout>>, _ConditionalContent<ModifiedContent<ModifiedContent<MirrorPacerMetricPlatterView, _PaddingLayout>, _PaddingLayout>, ModifiedContent<MirrorHeartRateZonesMetricsPlatter, _PaddingLayout>>>>, _ConditionalContent<_ConditionalContent<_ConditionalContent<ModifiedContent<MirrorSpeedometerPlatterView, _PaddingLayout>, ModifiedContent<MirrorPowerZonesMetricsPlatter, _PaddingLayout>>, _ConditionalContent<ModifiedContent<MirrorIntervalsPlatterView, _PaddingLayout>, ModifiedConte();
    lazy protocol witness table accessor for type PlatterPublisher and conformance PlatterPublisher(&lazy protocol witness table cache variable for type MetricPlatter and conformance MetricPlatter, MEMORY[0x277D7DFD0]);
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<<<opaque return type of View.tag<A>(_:includeOptional:)>>.0, _PaddingLayout> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type _ConditionalContent<_ConditionalContent<_ConditionalContent<_ConditionalContent<ModifiedContent<MirrorStackedMetricsView, _PaddingLayout>, ModifiedContent<MirrorStackedMetricsView, _PaddingLayout>>, _ConditionalContent<ModifiedContent<MirrorStackedMetricsView, _PaddingLayout>, ModifiedContent<MirrorGraphicsMetricsView, _PaddingLayout>>>, _ConditionalContent<_ConditionalContent<ModifiedContent<MirrorGraphicsMetricsView, _PaddingLayout>, ModifiedContent<MirrorActivityRingsPlatterView, _PaddingLayout>>, _ConditionalContent<ModifiedContent<ModifiedContent<MirrorPacerMetricPlatterView, _PaddingLayout>, _PaddingLayout>, ModifiedContent<MirrorHeartRateZonesMetricsPlatter, _PaddingLayout>>>>, _ConditionalContent<_ConditionalContent<_ConditionalContent<ModifiedContent<MirrorSpeedometerPlatterView, _PaddingLayout>, ModifiedContent<MirrorPowerZonesMetricsPlatter, _PaddingLayout>>, _ConditionalContent<ModifiedContent<MirrorIntervalsPlatterView, _PaddingLayout>, ModifiedConte()
{
  result = lazy protocol witness table cache variable for type _ConditionalContent<_ConditionalContent<_ConditionalContent<_ConditionalContent<ModifiedContent<MirrorStackedMetricsView, _PaddingLayout>, ModifiedContent<MirrorStackedMetricsView, _PaddingLayout>>, _ConditionalContent<ModifiedContent<MirrorStackedMetricsView, _PaddingLayout>, ModifiedContent<MirrorGraphicsMetricsView, _PaddingLayout>>>, _ConditionalContent<_ConditionalContent<ModifiedContent<MirrorGraphicsMetricsView, _PaddingLayout>, ModifiedContent<MirrorActivityRingsPlatterView, _PaddingLayout>>, _ConditionalContent<ModifiedContent<ModifiedContent<MirrorPacerMetricPlatterView, _PaddingLayout>, _PaddingLayout>, ModifiedContent<MirrorHeartRateZonesMetricsPlatter, _PaddingLayout>>>>, _ConditionalContent<_ConditionalContent<_ConditionalContent<ModifiedContent<MirrorSpeedometerPlatterView, _PaddingLayout>, ModifiedContent<MirrorPowerZonesMetricsPlatter, _PaddingLayout>>, _ConditionalContent<ModifiedContent<MirrorIntervalsPlatterView, _PaddingLayout>, Modifie;
  if (!lazy protocol witness table cache variable for type _ConditionalContent<_ConditionalContent<_ConditionalContent<_ConditionalContent<ModifiedContent<MirrorStackedMetricsView, _PaddingLayout>, ModifiedContent<MirrorStackedMetricsView, _PaddingLayout>>, _ConditionalContent<ModifiedContent<MirrorStackedMetricsView, _PaddingLayout>, ModifiedContent<MirrorGraphicsMetricsView, _PaddingLayout>>>, _ConditionalContent<_ConditionalContent<ModifiedContent<MirrorGraphicsMetricsView, _PaddingLayout>, ModifiedContent<MirrorActivityRingsPlatterView, _PaddingLayout>>, _ConditionalContent<ModifiedContent<ModifiedContent<MirrorPacerMetricPlatterView, _PaddingLayout>, _PaddingLayout>, ModifiedContent<MirrorHeartRateZonesMetricsPlatter, _PaddingLayout>>>>, _ConditionalContent<_ConditionalContent<_ConditionalContent<ModifiedContent<MirrorSpeedometerPlatterView, _PaddingLayout>, ModifiedContent<MirrorPowerZonesMetricsPlatter, _PaddingLayout>>, _ConditionalContent<ModifiedContent<MirrorIntervalsPlatterView, _PaddingLayout>, Modifie)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI19_ConditionalContentVyACyACyACyAA08ModifiedD0Vy07WorkoutB024MirrorStackedMetricsViewVAA14_PaddingLayoutVGAKGACyAkEyAF0g8GraphicsiJ0VAJGGGACyACyAoEyAF0g20ActivityRingsPlatterJ0VAJGGACyAEyAEyAF0g11PacerMetricpJ0VAJGAJGAEyAF0g14HeartRateZonesiP0VAJGGGGACyACyACyAEyAF0g11SpeedometerpJ0VAJGAEyAF0g5PoweruiP0VAJGGACyAEyAF0g9IntervalspJ0VAJGAEyAF0gx6SecondpJ0VAJGGGACyACyAEyAF0g4RacerpJ0VAJGAEyAF0g10MultiSportiP0VAJGGAA4TextVGGGMd);
    lazy protocol witness table accessor for type _ConditionalContent<_ConditionalContent<_ConditionalContent<ModifiedContent<MirrorStackedMetricsView, _PaddingLayout>, ModifiedContent<MirrorStackedMetricsView, _PaddingLayout>>, _ConditionalContent<ModifiedContent<MirrorStackedMetricsView, _PaddingLayout>, ModifiedContent<MirrorGraphicsMetricsView, _PaddingLayout>>>, _ConditionalContent<_ConditionalContent<ModifiedContent<MirrorGraphicsMetricsView, _PaddingLayout>, ModifiedContent<MirrorActivityRingsPlatterView, _PaddingLayout>>, _ConditionalContent<ModifiedContent<ModifiedContent<MirrorPacerMetricPlatterView, _PaddingLayout>, _PaddingLayout>, ModifiedContent<MirrorHeartRateZonesMetricsPlatter, _PaddingLayout>>>> and conformance <> _ConditionalContent<A, B>();
    lazy protocol witness table accessor for type _ConditionalContent<_ConditionalContent<_ConditionalContent<ModifiedContent<MirrorSpeedometerPlatterView, _PaddingLayout>, ModifiedContent<MirrorPowerZonesMetricsPlatter, _PaddingLayout>>, _ConditionalContent<ModifiedContent<MirrorIntervalsPlatterView, _PaddingLayout>, ModifiedContent<MirrorIntervalsSecondPlatterView, _PaddingLayout>>>, _ConditionalContent<_ConditionalContent<ModifiedContent<MirrorRaceMetricPlatterView, _PaddingLayout>, ModifiedContent<MirrorMultiSportMetricsPlatter, _PaddingLayout>>, Text>> and conformance <> _ConditionalContent<A, B>();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type _ConditionalContent<_ConditionalContent<_ConditionalContent<_ConditionalContent<ModifiedContent<MirrorStackedMetricsView, _PaddingLayout>, ModifiedContent<MirrorStackedMetricsView, _PaddingLayout>>, _ConditionalContent<ModifiedContent<MirrorStackedMetricsView, _PaddingLayout>, ModifiedContent<MirrorGraphicsMetricsView, _PaddingLayout>>>, _ConditionalContent<_ConditionalContent<ModifiedContent<MirrorGraphicsMetricsView, _PaddingLayout>, ModifiedContent<MirrorActivityRingsPlatterView, _PaddingLayout>>, _ConditionalContent<ModifiedContent<ModifiedContent<MirrorPacerMetricPlatterView, _PaddingLayout>, _PaddingLayout>, ModifiedContent<MirrorHeartRateZonesMetricsPlatter, _PaddingLayout>>>>, _ConditionalContent<_ConditionalContent<_ConditionalContent<ModifiedContent<MirrorSpeedometerPlatterView, _PaddingLayout>, ModifiedContent<MirrorPowerZonesMetricsPlatter, _PaddingLayout>>, _ConditionalContent<ModifiedContent<MirrorIntervalsPlatterView, _PaddingLayout>, Modifie);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type _ConditionalContent<_ConditionalContent<_ConditionalContent<ModifiedContent<MirrorStackedMetricsView, _PaddingLayout>, ModifiedContent<MirrorStackedMetricsView, _PaddingLayout>>, _ConditionalContent<ModifiedContent<MirrorStackedMetricsView, _PaddingLayout>, ModifiedContent<MirrorGraphicsMetricsView, _PaddingLayout>>>, _ConditionalContent<_ConditionalContent<ModifiedContent<MirrorGraphicsMetricsView, _PaddingLayout>, ModifiedContent<MirrorActivityRingsPlatterView, _PaddingLayout>>, _ConditionalContent<ModifiedContent<ModifiedContent<MirrorPacerMetricPlatterView, _PaddingLayout>, _PaddingLayout>, ModifiedContent<MirrorHeartRateZonesMetricsPlatter, _PaddingLayout>>>> and conformance <> _ConditionalContent<A, B>()
{
  result = lazy protocol witness table cache variable for type _ConditionalContent<_ConditionalContent<_ConditionalContent<ModifiedContent<MirrorStackedMetricsView, _PaddingLayout>, ModifiedContent<MirrorStackedMetricsView, _PaddingLayout>>, _ConditionalContent<ModifiedContent<MirrorStackedMetricsView, _PaddingLayout>, ModifiedContent<MirrorGraphicsMetricsView, _PaddingLayout>>>, _ConditionalContent<_ConditionalContent<ModifiedContent<MirrorGraphicsMetricsView, _PaddingLayout>, ModifiedContent<MirrorActivityRingsPlatterView, _PaddingLayout>>, _ConditionalContent<ModifiedContent<ModifiedContent<MirrorPacerMetricPlatterView, _PaddingLayout>, _PaddingLayout>, ModifiedContent<MirrorHeartRateZonesMetricsPlatter, _PaddingLayout>>>> and conformance <> _ConditionalContent<A, B>;
  if (!lazy protocol witness table cache variable for type _ConditionalContent<_ConditionalContent<_ConditionalContent<ModifiedContent<MirrorStackedMetricsView, _PaddingLayout>, ModifiedContent<MirrorStackedMetricsView, _PaddingLayout>>, _ConditionalContent<ModifiedContent<MirrorStackedMetricsView, _PaddingLayout>, ModifiedContent<MirrorGraphicsMetricsView, _PaddingLayout>>>, _ConditionalContent<_ConditionalContent<ModifiedContent<MirrorGraphicsMetricsView, _PaddingLayout>, ModifiedContent<MirrorActivityRingsPlatterView, _PaddingLayout>>, _ConditionalContent<ModifiedContent<ModifiedContent<MirrorPacerMetricPlatterView, _PaddingLayout>, _PaddingLayout>, ModifiedContent<MirrorHeartRateZonesMetricsPlatter, _PaddingLayout>>>> and conformance <> _ConditionalContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI19_ConditionalContentVyACyACyAA08ModifiedD0Vy07WorkoutB024MirrorStackedMetricsViewVAA14_PaddingLayoutVGAKGACyAkEyAF0g8GraphicsiJ0VAJGGGACyACyAoEyAF0g20ActivityRingsPlatterJ0VAJGGACyAEyAEyAF0g11PacerMetricpJ0VAJGAJGAEyAF0g14HeartRateZonesiP0VAJGGGGMd);
    lazy protocol witness table accessor for type _ConditionalContent<_ConditionalContent<ModifiedContent<MirrorStackedMetricsView, _PaddingLayout>, ModifiedContent<MirrorStackedMetricsView, _PaddingLayout>>, _ConditionalContent<ModifiedContent<MirrorStackedMetricsView, _PaddingLayout>, ModifiedContent<MirrorGraphicsMetricsView, _PaddingLayout>>> and conformance <> _ConditionalContent<A, B>();
    lazy protocol witness table accessor for type _ConditionalContent<_ConditionalContent<ModifiedContent<MirrorGraphicsMetricsView, _PaddingLayout>, ModifiedContent<MirrorActivityRingsPlatterView, _PaddingLayout>>, _ConditionalContent<ModifiedContent<ModifiedContent<MirrorPacerMetricPlatterView, _PaddingLayout>, _PaddingLayout>, ModifiedContent<MirrorHeartRateZonesMetricsPlatter, _PaddingLayout>>> and conformance <> _ConditionalContent<A, B>();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type _ConditionalContent<_ConditionalContent<_ConditionalContent<ModifiedContent<MirrorStackedMetricsView, _PaddingLayout>, ModifiedContent<MirrorStackedMetricsView, _PaddingLayout>>, _ConditionalContent<ModifiedContent<MirrorStackedMetricsView, _PaddingLayout>, ModifiedContent<MirrorGraphicsMetricsView, _PaddingLayout>>>, _ConditionalContent<_ConditionalContent<ModifiedContent<MirrorGraphicsMetricsView, _PaddingLayout>, ModifiedContent<MirrorActivityRingsPlatterView, _PaddingLayout>>, _ConditionalContent<ModifiedContent<ModifiedContent<MirrorPacerMetricPlatterView, _PaddingLayout>, _PaddingLayout>, ModifiedContent<MirrorHeartRateZonesMetricsPlatter, _PaddingLayout>>>> and conformance <> _ConditionalContent<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type _ConditionalContent<_ConditionalContent<ModifiedContent<MirrorStackedMetricsView, _PaddingLayout>, ModifiedContent<MirrorStackedMetricsView, _PaddingLayout>>, _ConditionalContent<ModifiedContent<MirrorStackedMetricsView, _PaddingLayout>, ModifiedContent<MirrorGraphicsMetricsView, _PaddingLayout>>> and conformance <> _ConditionalContent<A, B>()
{
  result = lazy protocol witness table cache variable for type _ConditionalContent<_ConditionalContent<ModifiedContent<MirrorStackedMetricsView, _PaddingLayout>, ModifiedContent<MirrorStackedMetricsView, _PaddingLayout>>, _ConditionalContent<ModifiedContent<MirrorStackedMetricsView, _PaddingLayout>, ModifiedContent<MirrorGraphicsMetricsView, _PaddingLayout>>> and conformance <> _ConditionalContent<A, B>;
  if (!lazy protocol witness table cache variable for type _ConditionalContent<_ConditionalContent<ModifiedContent<MirrorStackedMetricsView, _PaddingLayout>, ModifiedContent<MirrorStackedMetricsView, _PaddingLayout>>, _ConditionalContent<ModifiedContent<MirrorStackedMetricsView, _PaddingLayout>, ModifiedContent<MirrorGraphicsMetricsView, _PaddingLayout>>> and conformance <> _ConditionalContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI19_ConditionalContentVyACyAA08ModifiedD0Vy07WorkoutB024MirrorStackedMetricsViewVAA14_PaddingLayoutVGAKGACyAkEyAF0g8GraphicsiJ0VAJGGGMd);
    lazy protocol witness table accessor for type _ConditionalContent<ModifiedContent<MirrorStackedMetricsView, _PaddingLayout>, ModifiedContent<MirrorStackedMetricsView, _PaddingLayout>> and conformance <> _ConditionalContent<A, B>();
    lazy protocol witness table accessor for type _ConditionalContent<ModifiedContent<MirrorStackedMetricsView, _PaddingLayout>, ModifiedContent<MirrorGraphicsMetricsView, _PaddingLayout>> and conformance <> _ConditionalContent<A, B>();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type _ConditionalContent<_ConditionalContent<ModifiedContent<MirrorStackedMetricsView, _PaddingLayout>, ModifiedContent<MirrorStackedMetricsView, _PaddingLayout>>, _ConditionalContent<ModifiedContent<MirrorStackedMetricsView, _PaddingLayout>, ModifiedContent<MirrorGraphicsMetricsView, _PaddingLayout>>> and conformance <> _ConditionalContent<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type _ConditionalContent<ModifiedContent<MirrorStackedMetricsView, _PaddingLayout>, ModifiedContent<MirrorStackedMetricsView, _PaddingLayout>> and conformance <> _ConditionalContent<A, B>()
{
  result = lazy protocol witness table cache variable for type _ConditionalContent<ModifiedContent<MirrorStackedMetricsView, _PaddingLayout>, ModifiedContent<MirrorStackedMetricsView, _PaddingLayout>> and conformance <> _ConditionalContent<A, B>;
  if (!lazy protocol witness table cache variable for type _ConditionalContent<ModifiedContent<MirrorStackedMetricsView, _PaddingLayout>, ModifiedContent<MirrorStackedMetricsView, _PaddingLayout>> and conformance <> _ConditionalContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI19_ConditionalContentVyAA08ModifiedD0Vy07WorkoutB024MirrorStackedMetricsViewVAA14_PaddingLayoutVGAKGMd);
    lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<ModifiedContent<WorkoutNotificationView, _EnvironmentKeyWritingModifier<WorkoutViewStyle>>, _ContentShapeModifier<Rectangle>>, _PaddingLayout> and conformance <> ModifiedContent<A, B>(&lazy protocol witness table cache variable for type ModifiedContent<MirrorStackedMetricsView, _PaddingLayout> and conformance <> ModifiedContent<A, B>, &_s7SwiftUI15ModifiedContentVy07WorkoutB024MirrorStackedMetricsViewVAA14_PaddingLayoutVGMd, &_s7SwiftUI15ModifiedContentVy07WorkoutB024MirrorStackedMetricsViewVAA14_PaddingLayoutVGMR, lazy protocol witness table accessor for type MirrorStackedMetricsView and conformance MirrorStackedMetricsView);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type _ConditionalContent<ModifiedContent<MirrorStackedMetricsView, _PaddingLayout>, ModifiedContent<MirrorStackedMetricsView, _PaddingLayout>> and conformance <> _ConditionalContent<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type MirrorStackedMetricsView and conformance MirrorStackedMetricsView()
{
  result = lazy protocol witness table cache variable for type MirrorStackedMetricsView and conformance MirrorStackedMetricsView;
  if (!lazy protocol witness table cache variable for type MirrorStackedMetricsView and conformance MirrorStackedMetricsView)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MirrorStackedMetricsView and conformance MirrorStackedMetricsView);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type _ConditionalContent<ModifiedContent<MirrorStackedMetricsView, _PaddingLayout>, ModifiedContent<MirrorGraphicsMetricsView, _PaddingLayout>> and conformance <> _ConditionalContent<A, B>()
{
  result = lazy protocol witness table cache variable for type _ConditionalContent<ModifiedContent<MirrorStackedMetricsView, _PaddingLayout>, ModifiedContent<MirrorGraphicsMetricsView, _PaddingLayout>> and conformance <> _ConditionalContent<A, B>;
  if (!lazy protocol witness table cache variable for type _ConditionalContent<ModifiedContent<MirrorStackedMetricsView, _PaddingLayout>, ModifiedContent<MirrorGraphicsMetricsView, _PaddingLayout>> and conformance <> _ConditionalContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI19_ConditionalContentVyAA08ModifiedD0Vy07WorkoutB024MirrorStackedMetricsViewVAA14_PaddingLayoutVGAEyAF0g8GraphicsiJ0VAJGGMd);
    lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<ModifiedContent<WorkoutNotificationView, _EnvironmentKeyWritingModifier<WorkoutViewStyle>>, _ContentShapeModifier<Rectangle>>, _PaddingLayout> and conformance <> ModifiedContent<A, B>(&lazy protocol witness table cache variable for type ModifiedContent<MirrorStackedMetricsView, _PaddingLayout> and conformance <> ModifiedContent<A, B>, &_s7SwiftUI15ModifiedContentVy07WorkoutB024MirrorStackedMetricsViewVAA14_PaddingLayoutVGMd, &_s7SwiftUI15ModifiedContentVy07WorkoutB024MirrorStackedMetricsViewVAA14_PaddingLayoutVGMR, lazy protocol witness table accessor for type MirrorStackedMetricsView and conformance MirrorStackedMetricsView);
    lazy protocol witness table accessor for type ModifiedContent<MirrorGraphicsMetricsView, _PaddingLayout> and conformance <> ModifiedContent<A, B>();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type _ConditionalContent<ModifiedContent<MirrorStackedMetricsView, _PaddingLayout>, ModifiedContent<MirrorGraphicsMetricsView, _PaddingLayout>> and conformance <> _ConditionalContent<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<MirrorGraphicsMetricsView, _PaddingLayout> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<MirrorGraphicsMetricsView, _PaddingLayout> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<MirrorGraphicsMetricsView, _PaddingLayout> and conformance <> ModifiedContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVy07WorkoutB025MirrorGraphicsMetricsViewVAA14_PaddingLayoutVGMd);
    lazy protocol witness table accessor for type PlatterPublisher and conformance PlatterPublisher(&lazy protocol witness table cache variable for type MirrorGraphicsMetricsView and conformance MirrorGraphicsMetricsView, type metadata accessor for MirrorGraphicsMetricsView);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<MirrorGraphicsMetricsView, _PaddingLayout> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type _ConditionalContent<_ConditionalContent<ModifiedContent<MirrorGraphicsMetricsView, _PaddingLayout>, ModifiedContent<MirrorActivityRingsPlatterView, _PaddingLayout>>, _ConditionalContent<ModifiedContent<ModifiedContent<MirrorPacerMetricPlatterView, _PaddingLayout>, _PaddingLayout>, ModifiedContent<MirrorHeartRateZonesMetricsPlatter, _PaddingLayout>>> and conformance <> _ConditionalContent<A, B>()
{
  result = lazy protocol witness table cache variable for type _ConditionalContent<_ConditionalContent<ModifiedContent<MirrorGraphicsMetricsView, _PaddingLayout>, ModifiedContent<MirrorActivityRingsPlatterView, _PaddingLayout>>, _ConditionalContent<ModifiedContent<ModifiedContent<MirrorPacerMetricPlatterView, _PaddingLayout>, _PaddingLayout>, ModifiedContent<MirrorHeartRateZonesMetricsPlatter, _PaddingLayout>>> and conformance <> _ConditionalContent<A, B>;
  if (!lazy protocol witness table cache variable for type _ConditionalContent<_ConditionalContent<ModifiedContent<MirrorGraphicsMetricsView, _PaddingLayout>, ModifiedContent<MirrorActivityRingsPlatterView, _PaddingLayout>>, _ConditionalContent<ModifiedContent<ModifiedContent<MirrorPacerMetricPlatterView, _PaddingLayout>, _PaddingLayout>, ModifiedContent<MirrorHeartRateZonesMetricsPlatter, _PaddingLayout>>> and conformance <> _ConditionalContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI19_ConditionalContentVyACyAA08ModifiedD0Vy07WorkoutB025MirrorGraphicsMetricsViewVAA14_PaddingLayoutVGAEyAF0g20ActivityRingsPlatterJ0VAJGGACyAEyAEyAF0g11PacerMetricoJ0VAJGAJGAEyAF0g14HeartRateZonesiO0VAJGGGMd);
    lazy protocol witness table accessor for type _ConditionalContent<ModifiedContent<MirrorGraphicsMetricsView, _PaddingLayout>, ModifiedContent<MirrorActivityRingsPlatterView, _PaddingLayout>> and conformance <> _ConditionalContent<A, B>();
    lazy protocol witness table accessor for type _ConditionalContent<ModifiedContent<ModifiedContent<MirrorPacerMetricPlatterView, _PaddingLayout>, _PaddingLayout>, ModifiedContent<MirrorHeartRateZonesMetricsPlatter, _PaddingLayout>> and conformance <> _ConditionalContent<A, B>();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type _ConditionalContent<_ConditionalContent<ModifiedContent<MirrorGraphicsMetricsView, _PaddingLayout>, ModifiedContent<MirrorActivityRingsPlatterView, _PaddingLayout>>, _ConditionalContent<ModifiedContent<ModifiedContent<MirrorPacerMetricPlatterView, _PaddingLayout>, _PaddingLayout>, ModifiedContent<MirrorHeartRateZonesMetricsPlatter, _PaddingLayout>>> and conformance <> _ConditionalContent<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type _ConditionalContent<ModifiedContent<MirrorGraphicsMetricsView, _PaddingLayout>, ModifiedContent<MirrorActivityRingsPlatterView, _PaddingLayout>> and conformance <> _ConditionalContent<A, B>()
{
  result = lazy protocol witness table cache variable for type _ConditionalContent<ModifiedContent<MirrorGraphicsMetricsView, _PaddingLayout>, ModifiedContent<MirrorActivityRingsPlatterView, _PaddingLayout>> and conformance <> _ConditionalContent<A, B>;
  if (!lazy protocol witness table cache variable for type _ConditionalContent<ModifiedContent<MirrorGraphicsMetricsView, _PaddingLayout>, ModifiedContent<MirrorActivityRingsPlatterView, _PaddingLayout>> and conformance <> _ConditionalContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI19_ConditionalContentVyAA08ModifiedD0Vy07WorkoutB025MirrorGraphicsMetricsViewVAA14_PaddingLayoutVGAEyAF0g20ActivityRingsPlatterJ0VAJGGMd);
    lazy protocol witness table accessor for type ModifiedContent<MirrorGraphicsMetricsView, _PaddingLayout> and conformance <> ModifiedContent<A, B>();
    lazy protocol witness table accessor for type ModifiedContent<MirrorActivityRingsPlatterView, _PaddingLayout> and conformance <> ModifiedContent<A, B>();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type _ConditionalContent<ModifiedContent<MirrorGraphicsMetricsView, _PaddingLayout>, ModifiedContent<MirrorActivityRingsPlatterView, _PaddingLayout>> and conformance <> _ConditionalContent<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<MirrorActivityRingsPlatterView, _PaddingLayout> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<MirrorActivityRingsPlatterView, _PaddingLayout> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<MirrorActivityRingsPlatterView, _PaddingLayout> and conformance <> ModifiedContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVy07WorkoutB030MirrorActivityRingsPlatterViewVAA14_PaddingLayoutVGMd);
    lazy protocol witness table accessor for type PlatterPublisher and conformance PlatterPublisher(&lazy protocol witness table cache variable for type MirrorActivityRingsPlatterView and conformance MirrorActivityRingsPlatterView, type metadata accessor for MirrorActivityRingsPlatterView);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<MirrorActivityRingsPlatterView, _PaddingLayout> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type _ConditionalContent<ModifiedContent<ModifiedContent<MirrorPacerMetricPlatterView, _PaddingLayout>, _PaddingLayout>, ModifiedContent<MirrorHeartRateZonesMetricsPlatter, _PaddingLayout>> and conformance <> _ConditionalContent<A, B>()
{
  result = lazy protocol witness table cache variable for type _ConditionalContent<ModifiedContent<ModifiedContent<MirrorPacerMetricPlatterView, _PaddingLayout>, _PaddingLayout>, ModifiedContent<MirrorHeartRateZonesMetricsPlatter, _PaddingLayout>> and conformance <> _ConditionalContent<A, B>;
  if (!lazy protocol witness table cache variable for type _ConditionalContent<ModifiedContent<ModifiedContent<MirrorPacerMetricPlatterView, _PaddingLayout>, _PaddingLayout>, ModifiedContent<MirrorHeartRateZonesMetricsPlatter, _PaddingLayout>> and conformance <> _ConditionalContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI19_ConditionalContentVyAA08ModifiedD0VyAEy07WorkoutB028MirrorPacerMetricPlatterViewVAA14_PaddingLayoutVGAJGAEyAF0g21HeartRateZonesMetricsJ0VAJGGMd);
    lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<ModifiedContent<WorkoutNotificationView, _EnvironmentKeyWritingModifier<WorkoutViewStyle>>, _ContentShapeModifier<Rectangle>>, _PaddingLayout> and conformance <> ModifiedContent<A, B>(&lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<MirrorPacerMetricPlatterView, _PaddingLayout>, _PaddingLayout> and conformance <> ModifiedContent<A, B>, &_s7SwiftUI15ModifiedContentVyACy07WorkoutB028MirrorPacerMetricPlatterViewVAA14_PaddingLayoutVGAHGMd, &_s7SwiftUI15ModifiedContentVyACy07WorkoutB028MirrorPacerMetricPlatterViewVAA14_PaddingLayoutVGAHGMR, lazy protocol witness table accessor for type ModifiedContent<MirrorPacerMetricPlatterView, _PaddingLayout> and conformance <> ModifiedContent<A, B>);
    lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<ModifiedContent<WorkoutNotificationView, _EnvironmentKeyWritingModifier<WorkoutViewStyle>>, _ContentShapeModifier<Rectangle>>, _PaddingLayout> and conformance <> ModifiedContent<A, B>(&lazy protocol witness table cache variable for type ModifiedContent<MirrorHeartRateZonesMetricsPlatter, _PaddingLayout> and conformance <> ModifiedContent<A, B>, &_s7SwiftUI15ModifiedContentVy07WorkoutB034MirrorHeartRateZonesMetricsPlatterVAA14_PaddingLayoutVGMd, &_s7SwiftUI15ModifiedContentVy07WorkoutB034MirrorHeartRateZonesMetricsPlatterVAA14_PaddingLayoutVGMR, lazy protocol witness table accessor for type MirrorHeartRateZonesMetricsPlatter and conformance MirrorHeartRateZonesMetricsPlatter);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type _ConditionalContent<ModifiedContent<ModifiedContent<MirrorPacerMetricPlatterView, _PaddingLayout>, _PaddingLayout>, ModifiedContent<MirrorHeartRateZonesMetricsPlatter, _PaddingLayout>> and conformance <> _ConditionalContent<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type MirrorPacerMetricPlatterView and conformance MirrorPacerMetricPlatterView()
{
  result = lazy protocol witness table cache variable for type MirrorPacerMetricPlatterView and conformance MirrorPacerMetricPlatterView;
  if (!lazy protocol witness table cache variable for type MirrorPacerMetricPlatterView and conformance MirrorPacerMetricPlatterView)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MirrorPacerMetricPlatterView and conformance MirrorPacerMetricPlatterView);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type MirrorHeartRateZonesMetricsPlatter and conformance MirrorHeartRateZonesMetricsPlatter()
{
  result = lazy protocol witness table cache variable for type MirrorHeartRateZonesMetricsPlatter and conformance MirrorHeartRateZonesMetricsPlatter;
  if (!lazy protocol witness table cache variable for type MirrorHeartRateZonesMetricsPlatter and conformance MirrorHeartRateZonesMetricsPlatter)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MirrorHeartRateZonesMetricsPlatter and conformance MirrorHeartRateZonesMetricsPlatter);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type _ConditionalContent<_ConditionalContent<_ConditionalContent<ModifiedContent<MirrorSpeedometerPlatterView, _PaddingLayout>, ModifiedContent<MirrorPowerZonesMetricsPlatter, _PaddingLayout>>, _ConditionalContent<ModifiedContent<MirrorIntervalsPlatterView, _PaddingLayout>, ModifiedContent<MirrorIntervalsSecondPlatterView, _PaddingLayout>>>, _ConditionalContent<_ConditionalContent<ModifiedContent<MirrorRaceMetricPlatterView, _PaddingLayout>, ModifiedContent<MirrorMultiSportMetricsPlatter, _PaddingLayout>>, Text>> and conformance <> _ConditionalContent<A, B>()
{
  result = lazy protocol witness table cache variable for type _ConditionalContent<_ConditionalContent<_ConditionalContent<ModifiedContent<MirrorSpeedometerPlatterView, _PaddingLayout>, ModifiedContent<MirrorPowerZonesMetricsPlatter, _PaddingLayout>>, _ConditionalContent<ModifiedContent<MirrorIntervalsPlatterView, _PaddingLayout>, ModifiedContent<MirrorIntervalsSecondPlatterView, _PaddingLayout>>>, _ConditionalContent<_ConditionalContent<ModifiedContent<MirrorRaceMetricPlatterView, _PaddingLayout>, ModifiedContent<MirrorMultiSportMetricsPlatter, _PaddingLayout>>, Text>> and conformance <> _ConditionalContent<A, B>;
  if (!lazy protocol witness table cache variable for type _ConditionalContent<_ConditionalContent<_ConditionalContent<ModifiedContent<MirrorSpeedometerPlatterView, _PaddingLayout>, ModifiedContent<MirrorPowerZonesMetricsPlatter, _PaddingLayout>>, _ConditionalContent<ModifiedContent<MirrorIntervalsPlatterView, _PaddingLayout>, ModifiedContent<MirrorIntervalsSecondPlatterView, _PaddingLayout>>>, _ConditionalContent<_ConditionalContent<ModifiedContent<MirrorRaceMetricPlatterView, _PaddingLayout>, ModifiedContent<MirrorMultiSportMetricsPlatter, _PaddingLayout>>, Text>> and conformance <> _ConditionalContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI19_ConditionalContentVyACyACyAA08ModifiedD0Vy07WorkoutB028MirrorSpeedometerPlatterViewVAA14_PaddingLayoutVGAEyAF0g17PowerZonesMetricsI0VAJGGACyAEyAF0g9IntervalsiJ0VAJGAEyAF0gp6SecondiJ0VAJGGGACyACyAEyAF0g10RaceMetriciJ0VAJGAEyAF0g10MultiSportoI0VAJGGAA4TextVGGMd);
    lazy protocol witness table accessor for type _ConditionalContent<_ConditionalContent<ModifiedContent<MirrorSpeedometerPlatterView, _PaddingLayout>, ModifiedContent<MirrorPowerZonesMetricsPlatter, _PaddingLayout>>, _ConditionalContent<ModifiedContent<MirrorIntervalsPlatterView, _PaddingLayout>, ModifiedContent<MirrorIntervalsSecondPlatterView, _PaddingLayout>>> and conformance <> _ConditionalContent<A, B>();
    lazy protocol witness table accessor for type _ConditionalContent<_ConditionalContent<ModifiedContent<MirrorRaceMetricPlatterView, _PaddingLayout>, ModifiedContent<MirrorMultiSportMetricsPlatter, _PaddingLayout>>, Text> and conformance <> _ConditionalContent<A, B>();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type _ConditionalContent<_ConditionalContent<_ConditionalContent<ModifiedContent<MirrorSpeedometerPlatterView, _PaddingLayout>, ModifiedContent<MirrorPowerZonesMetricsPlatter, _PaddingLayout>>, _ConditionalContent<ModifiedContent<MirrorIntervalsPlatterView, _PaddingLayout>, ModifiedContent<MirrorIntervalsSecondPlatterView, _PaddingLayout>>>, _ConditionalContent<_ConditionalContent<ModifiedContent<MirrorRaceMetricPlatterView, _PaddingLayout>, ModifiedContent<MirrorMultiSportMetricsPlatter, _PaddingLayout>>, Text>> and conformance <> _ConditionalContent<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type _ConditionalContent<_ConditionalContent<ModifiedContent<MirrorSpeedometerPlatterView, _PaddingLayout>, ModifiedContent<MirrorPowerZonesMetricsPlatter, _PaddingLayout>>, _ConditionalContent<ModifiedContent<MirrorIntervalsPlatterView, _PaddingLayout>, ModifiedContent<MirrorIntervalsSecondPlatterView, _PaddingLayout>>> and conformance <> _ConditionalContent<A, B>()
{
  result = lazy protocol witness table cache variable for type _ConditionalContent<_ConditionalContent<ModifiedContent<MirrorSpeedometerPlatterView, _PaddingLayout>, ModifiedContent<MirrorPowerZonesMetricsPlatter, _PaddingLayout>>, _ConditionalContent<ModifiedContent<MirrorIntervalsPlatterView, _PaddingLayout>, ModifiedContent<MirrorIntervalsSecondPlatterView, _PaddingLayout>>> and conformance <> _ConditionalContent<A, B>;
  if (!lazy protocol witness table cache variable for type _ConditionalContent<_ConditionalContent<ModifiedContent<MirrorSpeedometerPlatterView, _PaddingLayout>, ModifiedContent<MirrorPowerZonesMetricsPlatter, _PaddingLayout>>, _ConditionalContent<ModifiedContent<MirrorIntervalsPlatterView, _PaddingLayout>, ModifiedContent<MirrorIntervalsSecondPlatterView, _PaddingLayout>>> and conformance <> _ConditionalContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI19_ConditionalContentVyACyAA08ModifiedD0Vy07WorkoutB028MirrorSpeedometerPlatterViewVAA14_PaddingLayoutVGAEyAF0g17PowerZonesMetricsI0VAJGGACyAEyAF0g9IntervalsiJ0VAJGAEyAF0gp6SecondiJ0VAJGGGMd);
    lazy protocol witness table accessor for type _ConditionalContent<ModifiedContent<MirrorSpeedometerPlatterView, _PaddingLayout>, ModifiedContent<MirrorPowerZonesMetricsPlatter, _PaddingLayout>> and conformance <> _ConditionalContent<A, B>();
    lazy protocol witness table accessor for type _ConditionalContent<ModifiedContent<MirrorIntervalsPlatterView, _PaddingLayout>, ModifiedContent<MirrorIntervalsSecondPlatterView, _PaddingLayout>> and conformance <> _ConditionalContent<A, B>();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type _ConditionalContent<_ConditionalContent<ModifiedContent<MirrorSpeedometerPlatterView, _PaddingLayout>, ModifiedContent<MirrorPowerZonesMetricsPlatter, _PaddingLayout>>, _ConditionalContent<ModifiedContent<MirrorIntervalsPlatterView, _PaddingLayout>, ModifiedContent<MirrorIntervalsSecondPlatterView, _PaddingLayout>>> and conformance <> _ConditionalContent<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type _ConditionalContent<ModifiedContent<MirrorSpeedometerPlatterView, _PaddingLayout>, ModifiedContent<MirrorPowerZonesMetricsPlatter, _PaddingLayout>> and conformance <> _ConditionalContent<A, B>()
{
  result = lazy protocol witness table cache variable for type _ConditionalContent<ModifiedContent<MirrorSpeedometerPlatterView, _PaddingLayout>, ModifiedContent<MirrorPowerZonesMetricsPlatter, _PaddingLayout>> and conformance <> _ConditionalContent<A, B>;
  if (!lazy protocol witness table cache variable for type _ConditionalContent<ModifiedContent<MirrorSpeedometerPlatterView, _PaddingLayout>, ModifiedContent<MirrorPowerZonesMetricsPlatter, _PaddingLayout>> and conformance <> _ConditionalContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI19_ConditionalContentVyAA08ModifiedD0Vy07WorkoutB028MirrorSpeedometerPlatterViewVAA14_PaddingLayoutVGAEyAF0g17PowerZonesMetricsI0VAJGGMd);
    lazy protocol witness table accessor for type ModifiedContent<MirrorSpeedometerPlatterView, _PaddingLayout> and conformance <> ModifiedContent<A, B>();
    lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<ModifiedContent<WorkoutNotificationView, _EnvironmentKeyWritingModifier<WorkoutViewStyle>>, _ContentShapeModifier<Rectangle>>, _PaddingLayout> and conformance <> ModifiedContent<A, B>(&lazy protocol witness table cache variable for type ModifiedContent<MirrorPowerZonesMetricsPlatter, _PaddingLayout> and conformance <> ModifiedContent<A, B>, &_s7SwiftUI15ModifiedContentVy07WorkoutB030MirrorPowerZonesMetricsPlatterVAA14_PaddingLayoutVGMd, &_s7SwiftUI15ModifiedContentVy07WorkoutB030MirrorPowerZonesMetricsPlatterVAA14_PaddingLayoutVGMR, lazy protocol witness table accessor for type MirrorPowerZonesMetricsPlatter and conformance MirrorPowerZonesMetricsPlatter);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type _ConditionalContent<ModifiedContent<MirrorSpeedometerPlatterView, _PaddingLayout>, ModifiedContent<MirrorPowerZonesMetricsPlatter, _PaddingLayout>> and conformance <> _ConditionalContent<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<MirrorSpeedometerPlatterView, _PaddingLayout> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<MirrorSpeedometerPlatterView, _PaddingLayout> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<MirrorSpeedometerPlatterView, _PaddingLayout> and conformance <> ModifiedContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVy07WorkoutB028MirrorSpeedometerPlatterViewVAA14_PaddingLayoutVGMd);
    lazy protocol witness table accessor for type PlatterPublisher and conformance PlatterPublisher(&lazy protocol witness table cache variable for type MirrorSpeedometerPlatterView and conformance MirrorSpeedometerPlatterView, type metadata accessor for MirrorSpeedometerPlatterView);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<MirrorSpeedometerPlatterView, _PaddingLayout> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type MirrorPowerZonesMetricsPlatter and conformance MirrorPowerZonesMetricsPlatter()
{
  result = lazy protocol witness table cache variable for type MirrorPowerZonesMetricsPlatter and conformance MirrorPowerZonesMetricsPlatter;
  if (!lazy protocol witness table cache variable for type MirrorPowerZonesMetricsPlatter and conformance MirrorPowerZonesMetricsPlatter)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MirrorPowerZonesMetricsPlatter and conformance MirrorPowerZonesMetricsPlatter);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type _ConditionalContent<ModifiedContent<MirrorIntervalsPlatterView, _PaddingLayout>, ModifiedContent<MirrorIntervalsSecondPlatterView, _PaddingLayout>> and conformance <> _ConditionalContent<A, B>()
{
  result = lazy protocol witness table cache variable for type _ConditionalContent<ModifiedContent<MirrorIntervalsPlatterView, _PaddingLayout>, ModifiedContent<MirrorIntervalsSecondPlatterView, _PaddingLayout>> and conformance <> _ConditionalContent<A, B>;
  if (!lazy protocol witness table cache variable for type _ConditionalContent<ModifiedContent<MirrorIntervalsPlatterView, _PaddingLayout>, ModifiedContent<MirrorIntervalsSecondPlatterView, _PaddingLayout>> and conformance <> _ConditionalContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI19_ConditionalContentVyAA08ModifiedD0Vy07WorkoutB026MirrorIntervalsPlatterViewVAA14_PaddingLayoutVGAEyAF0gh6SecondiJ0VAJGGMd);
    lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<ModifiedContent<WorkoutNotificationView, _EnvironmentKeyWritingModifier<WorkoutViewStyle>>, _ContentShapeModifier<Rectangle>>, _PaddingLayout> and conformance <> ModifiedContent<A, B>(&lazy protocol witness table cache variable for type ModifiedContent<MirrorIntervalsPlatterView, _PaddingLayout> and conformance <> ModifiedContent<A, B>, &_s7SwiftUI15ModifiedContentVy07WorkoutB026MirrorIntervalsPlatterViewVAA14_PaddingLayoutVGMd, &_s7SwiftUI15ModifiedContentVy07WorkoutB026MirrorIntervalsPlatterViewVAA14_PaddingLayoutVGMR, lazy protocol witness table accessor for type MirrorIntervalsPlatterView and conformance MirrorIntervalsPlatterView);
    lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<ModifiedContent<WorkoutNotificationView, _EnvironmentKeyWritingModifier<WorkoutViewStyle>>, _ContentShapeModifier<Rectangle>>, _PaddingLayout> and conformance <> ModifiedContent<A, B>(&lazy protocol witness table cache variable for type ModifiedContent<MirrorIntervalsSecondPlatterView, _PaddingLayout> and conformance <> ModifiedContent<A, B>, &_s7SwiftUI15ModifiedContentVy07WorkoutB032MirrorIntervalsSecondPlatterViewVAA14_PaddingLayoutVGMd, &_s7SwiftUI15ModifiedContentVy07WorkoutB032MirrorIntervalsSecondPlatterViewVAA14_PaddingLayoutVGMR, lazy protocol witness table accessor for type MirrorIntervalsSecondPlatterView and conformance MirrorIntervalsSecondPlatterView);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type _ConditionalContent<ModifiedContent<MirrorIntervalsPlatterView, _PaddingLayout>, ModifiedContent<MirrorIntervalsSecondPlatterView, _PaddingLayout>> and conformance <> _ConditionalContent<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type MirrorIntervalsPlatterView and conformance MirrorIntervalsPlatterView()
{
  result = lazy protocol witness table cache variable for type MirrorIntervalsPlatterView and conformance MirrorIntervalsPlatterView;
  if (!lazy protocol witness table cache variable for type MirrorIntervalsPlatterView and conformance MirrorIntervalsPlatterView)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MirrorIntervalsPlatterView and conformance MirrorIntervalsPlatterView);
  }

  return result;
}

uint64_t lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<ModifiedContent<WorkoutNotificationView, _EnvironmentKeyWritingModifier<WorkoutViewStyle>>, _ContentShapeModifier<Rectangle>>, _PaddingLayout> and conformance <> ModifiedContent<A, B>(unint64_t *a1, uint64_t *a2, uint64_t a3, void (*a4)(void))
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

unint64_t lazy protocol witness table accessor for type MirrorIntervalsSecondPlatterView and conformance MirrorIntervalsSecondPlatterView()
{
  result = lazy protocol witness table cache variable for type MirrorIntervalsSecondPlatterView and conformance MirrorIntervalsSecondPlatterView;
  if (!lazy protocol witness table cache variable for type MirrorIntervalsSecondPlatterView and conformance MirrorIntervalsSecondPlatterView)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MirrorIntervalsSecondPlatterView and conformance MirrorIntervalsSecondPlatterView);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type _ConditionalContent<_ConditionalContent<ModifiedContent<MirrorRaceMetricPlatterView, _PaddingLayout>, ModifiedContent<MirrorMultiSportMetricsPlatter, _PaddingLayout>>, Text> and conformance <> _ConditionalContent<A, B>()
{
  result = lazy protocol witness table cache variable for type _ConditionalContent<_ConditionalContent<ModifiedContent<MirrorRaceMetricPlatterView, _PaddingLayout>, ModifiedContent<MirrorMultiSportMetricsPlatter, _PaddingLayout>>, Text> and conformance <> _ConditionalContent<A, B>;
  if (!lazy protocol witness table cache variable for type _ConditionalContent<_ConditionalContent<ModifiedContent<MirrorRaceMetricPlatterView, _PaddingLayout>, ModifiedContent<MirrorMultiSportMetricsPlatter, _PaddingLayout>>, Text> and conformance <> _ConditionalContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI19_ConditionalContentVyACyAA08ModifiedD0Vy07WorkoutB027MirrorRaceMetricPlatterViewVAA14_PaddingLayoutVGAEyAF0g17MultiSportMetricsJ0VAJGGAA4TextVGMd);
    lazy protocol witness table accessor for type _ConditionalContent<ModifiedContent<MirrorRaceMetricPlatterView, _PaddingLayout>, ModifiedContent<MirrorMultiSportMetricsPlatter, _PaddingLayout>> and conformance <> _ConditionalContent<A, B>();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type _ConditionalContent<_ConditionalContent<ModifiedContent<MirrorRaceMetricPlatterView, _PaddingLayout>, ModifiedContent<MirrorMultiSportMetricsPlatter, _PaddingLayout>>, Text> and conformance <> _ConditionalContent<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type _ConditionalContent<ModifiedContent<MirrorRaceMetricPlatterView, _PaddingLayout>, ModifiedContent<MirrorMultiSportMetricsPlatter, _PaddingLayout>> and conformance <> _ConditionalContent<A, B>()
{
  result = lazy protocol witness table cache variable for type _ConditionalContent<ModifiedContent<MirrorRaceMetricPlatterView, _PaddingLayout>, ModifiedContent<MirrorMultiSportMetricsPlatter, _PaddingLayout>> and conformance <> _ConditionalContent<A, B>;
  if (!lazy protocol witness table cache variable for type _ConditionalContent<ModifiedContent<MirrorRaceMetricPlatterView, _PaddingLayout>, ModifiedContent<MirrorMultiSportMetricsPlatter, _PaddingLayout>> and conformance <> _ConditionalContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI19_ConditionalContentVyAA08ModifiedD0Vy07WorkoutB027MirrorRaceMetricPlatterViewVAA14_PaddingLayoutVGAEyAF0g17MultiSportMetricsJ0VAJGGMd);
    lazy protocol witness table accessor for type ModifiedContent<MirrorRaceMetricPlatterView, _PaddingLayout> and conformance <> ModifiedContent<A, B>();
    lazy protocol witness table accessor for type ModifiedContent<MirrorMultiSportMetricsPlatter, _PaddingLayout> and conformance <> ModifiedContent<A, B>();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type _ConditionalContent<ModifiedContent<MirrorRaceMetricPlatterView, _PaddingLayout>, ModifiedContent<MirrorMultiSportMetricsPlatter, _PaddingLayout>> and conformance <> _ConditionalContent<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<MirrorRaceMetricPlatterView, _PaddingLayout> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<MirrorRaceMetricPlatterView, _PaddingLayout> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<MirrorRaceMetricPlatterView, _PaddingLayout> and conformance <> ModifiedContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVy07WorkoutB027MirrorRaceMetricPlatterViewVAA14_PaddingLayoutVGMd);
    lazy protocol witness table accessor for type MirrorRaceMetricPlatterView and conformance MirrorRaceMetricPlatterView();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<MirrorRaceMetricPlatterView, _PaddingLayout> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type MirrorRaceMetricPlatterView and conformance MirrorRaceMetricPlatterView()
{
  result = lazy protocol witness table cache variable for type MirrorRaceMetricPlatterView and conformance MirrorRaceMetricPlatterView;
  if (!lazy protocol witness table cache variable for type MirrorRaceMetricPlatterView and conformance MirrorRaceMetricPlatterView)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MirrorRaceMetricPlatterView and conformance MirrorRaceMetricPlatterView);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<MirrorMultiSportMetricsPlatter, _PaddingLayout> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<MirrorMultiSportMetricsPlatter, _PaddingLayout> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<MirrorMultiSportMetricsPlatter, _PaddingLayout> and conformance <> ModifiedContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVy07WorkoutB030MirrorMultiSportMetricsPlatterVAA14_PaddingLayoutVGMd);
    lazy protocol witness table accessor for type MirrorMultiSportMetricsPlatter and conformance MirrorMultiSportMetricsPlatter();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<MirrorMultiSportMetricsPlatter, _PaddingLayout> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type MirrorMultiSportMetricsPlatter and conformance MirrorMultiSportMetricsPlatter()
{
  result = lazy protocol witness table cache variable for type MirrorMultiSportMetricsPlatter and conformance MirrorMultiSportMetricsPlatter;
  if (!lazy protocol witness table cache variable for type MirrorMultiSportMetricsPlatter and conformance MirrorMultiSportMetricsPlatter)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MirrorMultiSportMetricsPlatter and conformance MirrorMultiSportMetricsPlatter);
  }

  return result;
}

uint64_t objectdestroyTm_35()
{
  v1 = (type metadata accessor for MetricPlattersView() - 8);
  v2 = v0 + ((*(*v1 + 80) + 16) & ~*(*v1 + 80));

  outlined consume of Environment<WorkoutAlertPresenter?>.Content(*(v2 + 72), *(v2 + 80));

  v3 = v2 + v1[17];
  v4 = type metadata accessor for MetricPlatter();
  (*(*(v4 - 8) + 8))(v3, v4);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI5StateVy11WorkoutCore13MetricPlatterVGMd);

  return swift_deallocObject();
}

uint64_t partial apply for closure #1 in closure #1 in closure #2 in closure #1 in MetricPlattersView.body.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *(type metadata accessor for MetricPlattersView() - 8);
  v6 = v2 + ((*(v5 + 80) + 16) & ~*(v5 + 80));

  return closure #1 in closure #1 in closure #2 in closure #1 in MetricPlattersView.body.getter(a1, v6, a2);
}

uint64_t lazy protocol witness table accessor for type ZStack<TupleView<(_ConditionalContent<<<opaque return type of View.onTapGesture(count:perform:)>>.0, <<opaque return type of View.onDelayedLongPressGesture(minimumDuration:maximumDistance:perform:onPressingChanged:)>>.0>, ModifiedContent<WorkoutBuddyStatusView, _PaddingLayout>?)>> and conformance ZStack<A>(unint64_t *a1, uint64_t *a2)
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

uint64_t lazy protocol witness table accessor for type PlatterPublisher and conformance PlatterPublisher(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t outlined init with take of ModifiedContent<WorkoutBuddyStatusView, _PaddingLayout>(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(a3);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t NextIntervalOrLegPillView.body.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v22 = a1;
  v24 = a2;
  v30 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyAA6SpacerVAA12_FrameLayoutVGMd);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyAA6CircleVAA12_FrameLayoutVGMd);
  v3 = *(a1 + 16);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI24_ForegroundStyleModifierVyAA5ColorVGMd);
  type metadata accessor for ModifiedContent();
  swift_getTupleTypeMetadata2();
  type metadata accessor for TupleView();
  swift_getWitnessTable();
  type metadata accessor for ZStack();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyACyACyAA5GroupVyAA012_ConditionalD0VyAA4TextVAIGSgGAA14_PaddingLayoutVGAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGAQy12CoreGraphics7CGFloatVGGMd);
  swift_getTupleTypeMetadata2();
  type metadata accessor for TupleView();
  swift_getWitnessTable();
  type metadata accessor for HStack();
  type metadata accessor for ModifiedContent();
  type metadata accessor for ModifiedContent();
  type metadata accessor for ModifiedContent();
  type metadata accessor for ModifiedContent();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI19_BackgroundModifierVyAA16RoundedRectangleVGMd);
  type metadata accessor for ModifiedContent();
  v31 = type metadata accessor for ModifiedContent();
  v32 = v30;
  v33 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyACyACyAA4TextV07WorkoutB025MetricDescriptionCoreFontVGAF26ExtendedLineSpacingSupport33_241C09B5AC269BC1C919798A0AC522FDLLVGAA24_ForegroundStyleModifierVyAA5ColorVGGMd);
  swift_getTupleTypeMetadata();
  type metadata accessor for TupleView();
  swift_getWitnessTable();
  type metadata accessor for VStack();
  swift_getTupleTypeMetadata2();
  type metadata accessor for TupleView();
  swift_getWitnessTable();
  v4 = type metadata accessor for HStack();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v21 - v6;
  v8 = type metadata accessor for ModifiedContent();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v21 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v14 = &v21 - v13;
  v15 = *(v22 + 24);
  v25 = v3;
  v26 = v15;
  v27 = v23;
  static VerticalAlignment.center.getter();
  HStack.init(alignment:spacing:content:)();
  WitnessTable = swift_getWitnessTable();
  View.metricRow(padding:)(v4, WitnessTable, 0.0);
  (*(v5 + 8))(v7, v4);
  v17 = lazy protocol witness table accessor for type MetricRow and conformance MetricRow();
  v28 = WitnessTable;
  v29 = v17;
  v18 = swift_getWitnessTable();
  static ViewBuilder.buildExpression<A>(_:)(v11, v8, v18);
  v19 = *(v9 + 8);
  v19(v11, v8);
  static ViewBuilder.buildBlock<A>(_:)(v14, v8, v18);
  return (v19)(v14, v8);
}

uint64_t closure #1 in NextIntervalOrLegPillView.body.getter(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v25 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyAA6SpacerVAA12_FrameLayoutVGMd);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyAA6CircleVAA12_FrameLayoutVGMd);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI24_ForegroundStyleModifierVyAA5ColorVGMd);
  type metadata accessor for ModifiedContent();
  swift_getTupleTypeMetadata2();
  type metadata accessor for TupleView();
  swift_getWitnessTable();
  type metadata accessor for ZStack();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyACyACyAA5GroupVyAA012_ConditionalD0VyAA4TextVAIGSgGAA14_PaddingLayoutVGAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGAQy12CoreGraphics7CGFloatVGGMd);
  swift_getTupleTypeMetadata2();
  type metadata accessor for TupleView();
  swift_getWitnessTable();
  type metadata accessor for HStack();
  type metadata accessor for ModifiedContent();
  type metadata accessor for ModifiedContent();
  type metadata accessor for ModifiedContent();
  type metadata accessor for ModifiedContent();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI19_BackgroundModifierVyAA16RoundedRectangleVGMd);
  type metadata accessor for ModifiedContent();
  v26 = type metadata accessor for ModifiedContent();
  v27 = v25;
  v28 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyACyACyAA4TextV07WorkoutB025MetricDescriptionCoreFontVGAF26ExtendedLineSpacingSupport33_241C09B5AC269BC1C919798A0AC522FDLLVGAA24_ForegroundStyleModifierVyAA5ColorVGGMd);
  swift_getTupleTypeMetadata();
  type metadata accessor for TupleView();
  swift_getWitnessTable();
  v6 = type metadata accessor for VStack();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v16[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v10);
  v12 = &v16[-v11];
  static HorizontalAlignment.leading.getter();
  v17 = a2;
  v18 = a3;
  v19 = a1;
  VStack.init(alignment:spacing:content:)();
  WitnessTable = swift_getWitnessTable();
  static ViewBuilder.buildExpression<A>(_:)(v9, v6, WitnessTable);
  v14 = *(v7 + 8);
  v14(v9, v6);
  (*(v7 + 16))(v9, v12, v6);
  v23 = 0;
  v24 = 1;
  v25 = v9;
  v26 = &v23;
  v22[0] = v6;
  v22[1] = MEMORY[0x277CE1180];
  v20 = WitnessTable;
  v21 = MEMORY[0x277CE1170];
  static ViewBuilder.buildBlock<each A>(_:)(&v25, 2uLL, v22);
  v14(v12, v6);
  return (v14)(v9, v6);
}

uint64_t closure #1 in closure #1 in NextIntervalOrLegPillView.body.getter@<X0>(double *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v73 = a3;
  v66 = a2;
  v86 = a4;
  v84 = type metadata accessor for RoundedRectangle();
  MEMORY[0x28223BE20](v84);
  v85 = (v61 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyAA6CircleVAA12_FrameLayoutVGMd);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI24_ForegroundStyleModifierVyAA5ColorVGMd);
  type metadata accessor for ModifiedContent();
  swift_getTupleTypeMetadata2();
  type metadata accessor for TupleView();
  swift_getWitnessTable();
  type metadata accessor for ZStack();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyACyACyAA5GroupVyAA012_ConditionalD0VyAA4TextVAIGSgGAA14_PaddingLayoutVGAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGAQy12CoreGraphics7CGFloatVGGMd);
  swift_getTupleTypeMetadata2();
  v61[1] = type metadata accessor for TupleView();
  v61[0] = swift_getWitnessTable();
  v6 = type metadata accessor for HStack();
  v64 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v8 = v61 - v7;
  v9 = type metadata accessor for ModifiedContent();
  v67 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v11 = v61 - v10;
  v12 = type metadata accessor for ModifiedContent();
  v70 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v62 = v61 - v13;
  v14 = type metadata accessor for ModifiedContent();
  v72 = *(v14 - 8);
  MEMORY[0x28223BE20](v14);
  v63 = v61 - v15;
  v71 = type metadata accessor for ModifiedContent();
  v74 = *(v71 - 8);
  MEMORY[0x28223BE20](v71);
  v65 = v61 - v16;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI19_BackgroundModifierVyAA16RoundedRectangleVGMd);
  v75 = type metadata accessor for ModifiedContent();
  v78 = *(v75 - 8);
  MEMORY[0x28223BE20](v75);
  v69 = v61 - v17;
  v77 = type metadata accessor for ModifiedContent();
  v79 = *(v77 - 8);
  MEMORY[0x28223BE20](v77);
  v87 = v61 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v19);
  v76 = v61 - v20;
  v21 = a1;
  static Alignment.center.getter();
  _FrameLayout.init(width:height:alignment:)();
  v80 = v139;
  v81 = v141;
  v82 = v144;
  v83 = v143;
  v156 = 1;
  v154 = v140;
  v152 = v142;
  v88 = v66;
  v89 = v73;
  v90 = a1;
  static VerticalAlignment.center.getter();
  HStack.init(alignment:spacing:content:)();
  *&v169[0] = static Color.black.getter();
  WitnessTable = swift_getWitnessTable();
  View.foregroundStyle<A>(_:)();

  (*(v64 + 8))(v8, v6);
  static Edge.Set.leading.getter();
  v68 = v21;
  v23 = *v21;
  v73 = _s7SwiftUI24_ForegroundStyleModifierVyAA5ColorVGACyxGAA04ViewE0AAWlTm_2(&lazy protocol witness table cache variable for type _ForegroundStyleModifier<Color> and conformance _ForegroundStyleModifier<A>, &_s7SwiftUI24_ForegroundStyleModifierVyAA5ColorVGMd);
  v137 = WitnessTable;
  v138 = v73;
  v24 = swift_getWitnessTable();
  v25 = v62;
  View.padding(_:_:)();
  (*(v67 + 8))(v11, v9);
  static Edge.Set.trailing.getter();
  v26 = MEMORY[0x277CDF918];
  v135 = v24;
  v136 = MEMORY[0x277CDF918];
  v27 = swift_getWitnessTable();
  v28 = v63;
  View.padding(_:_:)();
  (*(v70 + 8))(v25, v12);
  static Alignment.center.getter();
  v133 = v27;
  v134 = v26;
  v29 = swift_getWitnessTable();
  v30 = v65;
  View.frame(width:height:alignment:)();
  (*(v72 + 8))(v28, v14);
  v31 = v23 * 0.5;
  v32 = *(v84 + 20);
  v33 = *MEMORY[0x277CE0118];
  v34 = type metadata accessor for RoundedCornerStyle();
  v35 = v85;
  (*(*(v34 - 8) + 104))(v85 + v32, v33, v34);
  *v35 = v31;
  v35[1] = v31;
  static Alignment.center.getter();
  v131 = v29;
  v132 = MEMORY[0x277CDF678];
  v36 = v71;
  v37 = swift_getWitnessTable();
  lazy protocol witness table accessor for type RoundedRectangle and conformance RoundedRectangle();
  v38 = v69;
  View.background<A>(_:alignment:)();
  outlined destroy of RoundedRectangle(v35);
  (*(v74 + 8))(v30, v36);
  v39 = objc_opt_self();
  v40 = [v39 secondaryLabelColor];
  Color.init(uiColor:)();
  v41 = Color.opacity(_:)();

  *&v169[0] = v41;
  v42 = _s7SwiftUI24_ForegroundStyleModifierVyAA5ColorVGACyxGAA04ViewE0AAWlTm_2(&lazy protocol witness table cache variable for type _BackgroundModifier<RoundedRectangle> and conformance _BackgroundModifier<A>, &_s7SwiftUI19_BackgroundModifierVyAA16RoundedRectangleVGMd);
  v129 = v37;
  v130 = v42;
  v43 = v75;
  v44 = swift_getWitnessTable();
  v45 = v87;
  View.foregroundStyle<A>(_:)();

  (*(v78 + 8))(v38, v43);
  v127 = v44;
  v128 = v73;
  v46 = v77;
  v84 = swift_getWitnessTable();
  v47 = v76;
  static ViewBuilder.buildExpression<A>(_:)(v45, v46, v84);
  v48 = v79;
  v85 = *(v79 + 8);
  (v85)(v45, v46);
  v49 = v68;
  static Alignment.center.getter();
  _FrameLayout.init(width:height:alignment:)();
  v73 = v145;
  v74 = v147;
  v78 = v149;
  v75 = v150;
  v162 = 1;
  v160 = v146;
  v158 = v148;
  v50 = *(v49 + 11);
  *v169 = v49[10];
  *(&v169[0] + 1) = v50;
  lazy protocol witness table accessor for type String and conformance String();

  v51 = Text.init<A>(_:)();
  v53 = v52;
  LOBYTE(v45) = v54;
  specialized View.metricDescriptionFont(multiline:)(0, v51, v52, v54 & 1, v55, v125);
  outlined consume of Text.Storage(v51, v53, v45 & 1);

  v56 = [v39 secondaryLabelColor];
  v57 = Color.init(uiColor:)();
  v165 = v125[2];
  v166 = v125[3];
  v167 = v125[4];
  LOBYTE(v168) = v126;
  v163 = v125[0];
  v164 = v125[1];
  *(&v168 + 1) = v57;
  v113 = 0;
  v114 = v156;
  *v115 = *v155;
  *&v115[3] = *&v155[3];
  v116 = v80;
  v117 = v154;
  *v118 = *v153;
  *&v118[3] = *&v153[3];
  v119 = v81;
  v120 = v152;
  *&v121[3] = *&v151[3];
  *v121 = *v151;
  v122 = v83;
  v123 = v82;
  v124[0] = &v113;
  v58 = v87;
  (*(v48 + 16))(v87, v47, v46);
  v102 = 0;
  v103 = v162;
  *v104 = *v161;
  *&v104[3] = *&v161[3];
  v105 = v73;
  v106 = v160;
  *v107 = *v159;
  *&v107[3] = *&v159[3];
  v108 = v74;
  v109 = v158;
  *v110 = *v157;
  *&v110[3] = *&v157[3];
  v111 = v78;
  v112 = v75;
  v124[1] = v58;
  v124[2] = &v102;
  v98 = v165;
  v99 = v166;
  v100 = v167;
  v101 = v168;
  v96 = v163;
  v97 = v164;
  v124[3] = &v96;
  outlined init with copy of ModifiedContent<ModifiedContent<ModifiedContent<Text, MetricDescriptionCoreFont>, ExtendedLineSpacingSupport>, _ForegroundStyleModifier<Color>>(&v163, v169, &_s7SwiftUI15ModifiedContentVyACyACyAA4TextV07WorkoutB025MetricDescriptionCoreFontVGAF26ExtendedLineSpacingSupport33_241C09B5AC269BC1C919798A0AC522FDLLVGAA24_ForegroundStyleModifierVyAA5ColorVGGMd);
  v95[0] = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyAA6SpacerVAA12_FrameLayoutVGMd);
  v95[1] = v46;
  v95[2] = v95[0];
  v95[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyACyACyAA4TextV07WorkoutB025MetricDescriptionCoreFontVGAF26ExtendedLineSpacingSupport33_241C09B5AC269BC1C919798A0AC522FDLLVGAA24_ForegroundStyleModifierVyAA5ColorVGGMd);
  v91 = lazy protocol witness table accessor for type ModifiedContent<Spacer, _FrameLayout> and conformance <> ModifiedContent<A, B>();
  v92 = v84;
  v93 = v91;
  v94 = lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<ModifiedContent<Text, MetricDescriptionCoreFont>, ExtendedLineSpacingSupport>, _ForegroundStyleModifier<Color>> and conformance <> ModifiedContent<A, B>();
  static ViewBuilder.buildBlock<each A>(_:)(v124, 4uLL, v95);
  outlined destroy of ModifiedContent<ModifiedContent<ModifiedContent<Text, MetricDescriptionCoreFont>, ExtendedLineSpacingSupport>, _ForegroundStyleModifier<Color>>(&v163, &_s7SwiftUI15ModifiedContentVyACyACyAA4TextV07WorkoutB025MetricDescriptionCoreFontVGAF26ExtendedLineSpacingSupport33_241C09B5AC269BC1C919798A0AC522FDLLVGAA24_ForegroundStyleModifierVyAA5ColorVGGMd);
  v59 = v85;
  (v85)(v47, v46);
  v169[2] = v98;
  v169[3] = v99;
  v169[4] = v100;
  v169[5] = v101;
  v169[0] = v96;
  v169[1] = v97;
  outlined destroy of ModifiedContent<ModifiedContent<ModifiedContent<Text, MetricDescriptionCoreFont>, ExtendedLineSpacingSupport>, _ForegroundStyleModifier<Color>>(v169, &_s7SwiftUI15ModifiedContentVyACyACyAA4TextV07WorkoutB025MetricDescriptionCoreFontVGAF26ExtendedLineSpacingSupport33_241C09B5AC269BC1C919798A0AC522FDLLVGAA24_ForegroundStyleModifierVyAA5ColorVGGMd);
  return (v59)(v58, v46);
}

uint64_t closure #1 in closure #1 in closure #1 in NextIntervalOrLegPillView.body.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v41 = a4;
  *&v42 = a3;
  v6 = type metadata accessor for Font.PrivateDesign();
  v38 = *(v6 - 8);
  v39 = v6;
  MEMORY[0x28223BE20](v6);
  v8 = &v34 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyAA6CircleVAA12_FrameLayoutVGMd);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI24_ForegroundStyleModifierVyAA5ColorVGMd);
  type metadata accessor for ModifiedContent();
  swift_getTupleTypeMetadata2();
  type metadata accessor for TupleView();
  swift_getWitnessTable();
  v9 = type metadata accessor for ZStack();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = &v34 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v15 = &v34 - v14;
  static Alignment.center.getter();
  v43 = a2;
  v44 = v42;
  v45 = a1;
  ZStack.init(alignment:content:)();
  WitnessTable = swift_getWitnessTable();
  v40 = v15;
  v35 = WitnessTable;
  static ViewBuilder.buildExpression<A>(_:)(v12, v9, WitnessTable);
  v17 = *(v10 + 8);
  v36 = v10;
  v37 = v17;
  v17(v12, v9);
  closure #2 in closure #1 in closure #1 in closure #1 in NextIntervalOrLegPillView.body.getter(a1, &v66);
  v34 = v67;
  v42 = v66;
  v18 = v68;
  LOBYTE(a2) = static Edge.Set.bottom.getter();
  EdgeInsets.init(_all:)();
  v20 = v19;
  v22 = v21;
  v24 = v23;
  v26 = v25;
  v74 = 0;
  static Font.Weight.semibold.getter();
  static Font.PrivateDesign.compactRounded.getter();
  v27 = static Font.system(size:weight:design:)();
  (*(v38 + 8))(v8, v39);
  KeyPath = swift_getKeyPath();
  v29 = swift_getKeyPath();
  v58 = v42;
  v59 = v34;
  LOBYTE(v60) = v18;
  BYTE8(v60) = a2;
  *&v61 = v20;
  *(&v61 + 1) = v22;
  *&v62 = v24;
  *(&v62 + 1) = v26;
  LOBYTE(v63) = 0;
  *(&v63 + 1) = KeyPath;
  *&v64 = v27;
  *(&v64 + 1) = v29;
  v65 = 0x3FE0000000000000;
  v30 = v40;
  (*(v36 + 16))(v12, v40, v9);
  v53 = v62;
  v54 = v63;
  v55 = v64;
  v56 = v65;
  v57[0] = v12;
  v49 = v58;
  v50 = v59;
  v51 = v60;
  v52 = v61;
  v57[1] = &v49;
  outlined init with copy of ModifiedContent<ModifiedContent<ModifiedContent<Text, MetricDescriptionCoreFont>, ExtendedLineSpacingSupport>, _ForegroundStyleModifier<Color>>(&v58, &v66, &_s7SwiftUI15ModifiedContentVyACyACyAA5GroupVyAA012_ConditionalD0VyAA4TextVAIGSgGAA14_PaddingLayoutVGAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGAQy12CoreGraphics7CGFloatVGGMd);
  v48[0] = v9;
  v48[1] = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyACyACyAA5GroupVyAA012_ConditionalD0VyAA4TextVAIGSgGAA14_PaddingLayoutVGAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGAQy12CoreGraphics7CGFloatVGGMd);
  v46 = v35;
  v47 = lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<ModifiedContent<Group<_ConditionalContent<Text, Text>?>, _PaddingLayout>, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyWritingModifier<CGFloat>> and conformance <> ModifiedContent<A, B>();
  static ViewBuilder.buildBlock<each A>(_:)(v57, 2uLL, v48);
  outlined destroy of ModifiedContent<ModifiedContent<ModifiedContent<Text, MetricDescriptionCoreFont>, ExtendedLineSpacingSupport>, _ForegroundStyleModifier<Color>>(&v58, &_s7SwiftUI15ModifiedContentVyACyACyAA5GroupVyAA012_ConditionalD0VyAA4TextVAIGSgGAA14_PaddingLayoutVGAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGAQy12CoreGraphics7CGFloatVGGMd);
  v31 = v30;
  v32 = v37;
  v37(v31, v9);
  v70 = v53;
  v71 = v54;
  v72 = v55;
  v73 = v56;
  v66 = v49;
  v67 = v50;
  v68 = v51;
  v69 = v52;
  outlined destroy of ModifiedContent<ModifiedContent<ModifiedContent<Text, MetricDescriptionCoreFont>, ExtendedLineSpacingSupport>, _ForegroundStyleModifier<Color>>(&v66, &_s7SwiftUI15ModifiedContentVyACyACyAA5GroupVyAA012_ConditionalD0VyAA4TextVAIGSgGAA14_PaddingLayoutVGAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGAQy12CoreGraphics7CGFloatVGGMd);
  return v32(v12, v9);
}

uint64_t closure #1 in closure #1 in closure #1 in closure #1 in NextIntervalOrLegPillView.body.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v31 = a3;
  v32 = a4;
  v6 = *(a2 - 8);
  MEMORY[0x28223BE20](a1);
  v8 = &v24 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI24_ForegroundStyleModifierVyAA5ColorVGMd);
  v9 = type metadata accessor for ModifiedContent();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = &v24 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v15 = &v24 - v14;
  static Alignment.center.getter();
  v16 = _FrameLayout.init(width:height:alignment:)();
  v30 = v42[4];
  v29 = v43;
  v28 = v44;
  v27 = v45;
  v26 = v46;
  v25 = v47;
  (*(a1 + 40))(v16);
  v17 = [objc_opt_self() secondaryLabelColor];
  Color.init(uiColor:)();
  v18 = Color.opacity(_:)();

  v36 = v18;
  v19 = v31;
  View.foregroundStyle<A>(_:)();

  (*(v6 + 8))(v8, a2);
  v20 = _s7SwiftUI24_ForegroundStyleModifierVyAA5ColorVGACyxGAA04ViewE0AAWlTm_2(&lazy protocol witness table cache variable for type _ForegroundStyleModifier<Color> and conformance _ForegroundStyleModifier<A>, &_s7SwiftUI24_ForegroundStyleModifierVyAA5ColorVGMd);
  v42[2] = v19;
  v42[3] = v20;
  WitnessTable = swift_getWitnessTable();
  static ViewBuilder.buildExpression<A>(_:)(v12, v9, WitnessTable);
  v22 = *(v10 + 8);
  v22(v12, v9);
  v36 = v30;
  v37 = v29;
  v38 = v28;
  v39 = v27;
  v40 = v26;
  v41 = v25;
  v42[0] = &v36;
  (*(v10 + 16))(v12, v15, v9);
  v42[1] = v12;
  v35[0] = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyAA6CircleVAA12_FrameLayoutVGMd);
  v35[1] = v9;
  v33 = lazy protocol witness table accessor for type ModifiedContent<Circle, _FrameLayout> and conformance <> ModifiedContent<A, B>();
  v34 = WitnessTable;
  static ViewBuilder.buildBlock<each A>(_:)(v42, 2uLL, v35);
  v22(v15, v9);
  return (v22)(v12, v9);
}

uint64_t closure #2 in closure #1 in closure #1 in closure #1 in NextIntervalOrLegPillView.body.getter@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  if (*(result + 56))
  {
    LocalizedStringKey.init(stringLiteral:)();
    if (one-time initialization token for WorkoutUIBundle != -1)
    {
      swift_once();
    }

    swift_beginAccess();
    v3 = WorkoutUIBundle.super.isa;
    Text.init(_:tableName:bundle:comment:)();
  }

  else
  {
    if (!*(result + 72))
    {
      v4 = 0uLL;
      v6 = -1;
      v5 = 0uLL;
      goto LABEL_8;
    }

    v7 = *(result + 64);
    lazy protocol witness table accessor for type String and conformance String();

    Text.init<A>(_:)();
  }

  result = _ConditionalContent<>.init(storage:)();
  v4 = v7;
  v5 = v8;
  v6 = v9;
LABEL_8:
  *a2 = v4;
  *(a2 + 16) = v5;
  *(a2 + 32) = v6;
  return result;
}

uint64_t specialized thunk for @escaping @callee_guaranteed () -> (@owned Image)@<X0>(uint64_t *a1@<X8>)
{
  result = Image.init(systemName:)();
  *a1 = result;
  return result;
}

void specialized NextIntervalOrLegPillView<>.init(isLast:metricDescription:)(char a1@<W0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v6 = objc_opt_self();
  v7 = [v6 currentDevice];
  v8 = specialized UIDevice.screenType.getter();

  v9 = dbl_20CB6EB28[v8];
  v10 = objc_opt_self();
  v11 = [v10 mainScreen];
  [v11 scale];
  v13 = v12;

  v14 = [v10 mainScreen];
  [v14 nativeScale];
  v16 = v15;

  if (v13 != v16)
  {
    v17 = [v10 mainScreen];
    [v17 scale];
    v19 = v18;

    v20 = [v10 mainScreen];
    [v20 nativeScale];
    v22 = v21;

    v9 = v9 * (v19 / v22 * 0.95);
  }

  v23 = [v6 currentDevice];
  v24 = specialized UIDevice.screenType.getter();

  v25 = dbl_20CB6EB80[v24];
  v26 = [v10 mainScreen];
  [v26 scale];
  v28 = v27;

  v29 = [v10 mainScreen];
  [v29 nativeScale];
  v31 = v30;

  if (v28 != v31)
  {
    v32 = [v10 mainScreen];
    [v32 scale];
    v34 = v33;

    v35 = [v10 mainScreen];
    [v35 nativeScale];
    v37 = v36;

    v25 = v25 * (v34 / v37 * 0.95);
  }

  v38 = [v6 currentDevice];
  v39 = specialized UIDevice.screenType.getter();

  v40 = dbl_20CB6EBD8[v39];
  v41 = [v10 mainScreen];
  [v41 scale];
  v43 = v42;

  v44 = [v10 mainScreen];
  [v44 nativeScale];
  v46 = v45;

  v185 = v25;
  v186 = v9;
  if (v43 != v46)
  {
    v47 = [v10 mainScreen];
    [v47 scale];
    v49 = v48;

    v50 = [v10 mainScreen];
    [v50 nativeScale];
    v52 = v51;

    v40 = v40 * (v49 / v52 * 0.95);
  }

  v184 = v40;

  v53 = [v10 mainScreen];
  [v53 scale];
  v55 = v54;

  v56 = [v10 mainScreen];
  [v56 nativeScale];
  v58 = v57;

  if (v55 == v58)
  {
    v59 = 8.0;
  }

  else
  {
    v59 = 12.0;
  }

  v189 = v59;

  v60 = [v10 mainScreen];
  [v60 scale];
  v182 = v61;

  v62 = [v10 mainScreen];
  [v62 nativeScale];
  v180 = v63;

  v64 = [v10 mainScreen];
  [v64 scale];
  v66 = v65;

  v67 = [v10 mainScreen];
  [v67 nativeScale];
  v69 = v68;

  if (v66 == v69)
  {
    v70 = 10.0;
  }

  else
  {
    v70 = 12.0;
  }

  v71 = [v10 mainScreen];
  [v71 scale];
  v73 = v72;

  v74 = [v10 mainScreen];
  [v74 nativeScale];
  v76 = v75;

  v77 = [v10 mainScreen];
  [v77 scale];
  v79 = v78;

  v80 = [v10 mainScreen];
  [v80 nativeScale];
  v82 = v81;

  if (v79 == v82)
  {
    v83 = 8.0;
  }

  else
  {
    v83 = 12.0;
  }

  v84 = [v10 mainScreen];
  [v84 scale];
  v86 = v85;

  v87 = [v10 mainScreen];
  [v87 nativeScale];
  v89 = v88;

  v90 = [v10 mainScreen];
  [v90 scale];
  v92 = v91;

  v93 = [v10 mainScreen];
  [v93 nativeScale];
  v95 = v94;

  v96 = [v6 currentDevice];
  v97 = specialized UIDevice.screenType.getter();

  if (v97 <= 4u)
  {
    v98 = v189;
    if (v97 >= 3u)
    {
      v98 = v70;
    }
  }

  else
  {
    if (v97 > 7u)
    {
      if (v97 == 8)
      {
        v99 = v73 == v76;
        v100 = 12.0;
        v101 = 10.0;
        goto LABEL_30;
      }

      if (v97 == 9)
      {
        v99 = v86 == v89;
      }

      else
      {
        v99 = v92 == v95;
      }

      v100 = 12.0;
LABEL_29:
      v101 = 8.0;
LABEL_30:
      if (v99)
      {
        v98 = v101;
      }

      else
      {
        v98 = v100;
      }

      goto LABEL_33;
    }

    v98 = v83;
    if (v97 != 5 && v97 != 6)
    {
      v99 = v182 == v180;
      v100 = 16.0;
      goto LABEL_29;
    }
  }

LABEL_33:

  v102 = [v10 mainScreen];
  [v102 scale];
  v104 = v103;

  v105 = [v10 mainScreen];
  [v105 nativeScale];
  v107 = v106;

  if (v104 != v107)
  {
    v108 = [v10 mainScreen];
    [v108 scale];
    v110 = v109;

    v111 = [v10 mainScreen];
    [v111 nativeScale];
    v113 = v112;

    v98 = v98 * (v110 / v113 * 0.95);
  }

  v190 = v98;

  v114 = [v10 mainScreen];
  [v114 scale];
  v116 = v115;

  v117 = [v10 mainScreen];
  [v117 nativeScale];
  v119 = v118;

  v120 = 12.0;
  if (v116 != v119)
  {
    v120 = 23.0;
  }

  v183 = v120;

  v121 = [v10 mainScreen];
  [v121 scale];
  v181 = v122;

  v123 = [v10 mainScreen];
  [v123 nativeScale];
  v179 = v124;

  v125 = [v10 mainScreen];
  [v125 scale];
  v127 = v126;

  v128 = [v10 mainScreen];
  [v128 nativeScale];
  v130 = v129;

  if (v127 == v130)
  {
    v131 = 10.0;
  }

  else
  {
    v131 = 23.0;
  }

  v132 = [v10 mainScreen];
  [v132 scale];
  v134 = v133;

  v135 = [v10 mainScreen];
  [v135 nativeScale];
  v137 = v136;

  v138 = [v10 mainScreen];
  [v138 scale];
  v140 = v139;

  v141 = [v10 mainScreen];
  [v141 nativeScale];
  v143 = v142;

  if (v140 == v143)
  {
    v144 = 8.0;
  }

  else
  {
    v144 = 23.0;
  }

  v145 = [v10 mainScreen];
  [v145 scale];
  v147 = v146;

  v148 = [v10 mainScreen];
  [v148 nativeScale];
  v150 = v149;

  v151 = [v10 mainScreen];
  [v151 scale];
  v153 = v152;

  v154 = [v10 mainScreen];
  [v154 nativeScale];
  v156 = v155;

  v157 = [v6 currentDevice];
  v158 = specialized UIDevice.screenType.getter();

  if (v158 <= 4u)
  {
    v160 = v185;
    v159 = v186;
    v163 = v183;
    v161 = v184;
    v162 = v190;
    if (v158 >= 3u)
    {
      v163 = v131;
    }
  }

  else if (v158 > 7u)
  {
    if (v158 == 8)
    {
      v164 = v134 == v137;
      v165 = 23.0;
      v166 = 10.0;
    }

    else
    {
      if (v158 == 9)
      {
        v164 = v147 == v150;
      }

      else
      {
        v164 = v153 == v156;
      }

      v165 = 23.0;
      v166 = 8.0;
    }

    if (v164)
    {
      v163 = v166;
    }

    else
    {
      v163 = v165;
    }

    v160 = v185;
    v159 = v186;
    v161 = v184;
    v162 = v190;
  }

  else
  {
    v160 = v185;
    v159 = v186;
    v161 = v184;
    v162 = v190;
    v163 = v144;
    if (v158 != 5 && v158 != 6)
    {
      if (v181 == v179)
      {
        v163 = 8.0;
      }

      else
      {
        v163 = 23.0;
      }
    }
  }

  v167 = [v10 mainScreen];
  [v167 scale];
  v169 = v168;

  v170 = [v10 mainScreen];
  [v170 nativeScale];
  v172 = v171;

  if (v169 != v172)
  {
    v173 = [v10 mainScreen];
    [v173 scale];
    v175 = v174;

    v176 = [v10 mainScreen];
    [v176 nativeScale];
    v178 = v177;

    v163 = v163 * (v175 / v178 * 0.95);
  }

  *a4 = v159;
  *(a4 + 8) = v160;
  *(a4 + 16) = v161;
  *(a4 + 24) = v162;
  *(a4 + 32) = v163;
  *(a4 + 40) = specialized thunk for @escaping @callee_guaranteed () -> (@owned Image);
  *(a4 + 48) = 0;
  *(a4 + 56) = a1 & 1;
  *(a4 + 64) = 0;
  *(a4 + 72) = 0;
  *(a4 + 80) = a2;
  *(a4 + 88) = a3;
  *(a4 + 96) = 0;
}

uint64_t type metadata instantiation function for NextIntervalOrLegPillView()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t getEnumTagSinglePayload for NextIntervalOrLegPillView(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 97))
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

uint64_t storeEnumTagSinglePayload for NextIntervalOrLegPillView(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 88) = 0;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 96) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 97) = 1;
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

    *(result + 97) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type MetricRow and conformance MetricRow()
{
  result = lazy protocol witness table cache variable for type MetricRow and conformance MetricRow;
  if (!lazy protocol witness table cache variable for type MetricRow and conformance MetricRow)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MetricRow and conformance MetricRow);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type RoundedRectangle and conformance RoundedRectangle()
{
  result = lazy protocol witness table cache variable for type RoundedRectangle and conformance RoundedRectangle;
  if (!lazy protocol witness table cache variable for type RoundedRectangle and conformance RoundedRectangle)
  {
    type metadata accessor for RoundedRectangle();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type RoundedRectangle and conformance RoundedRectangle);
  }

  return result;
}

uint64_t outlined destroy of RoundedRectangle(uint64_t a1)
{
  v2 = type metadata accessor for RoundedRectangle();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<Spacer, _FrameLayout> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<Spacer, _FrameLayout> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<Spacer, _FrameLayout> and conformance <> ModifiedContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyAA6SpacerVAA12_FrameLayoutVGMd);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<Spacer, _FrameLayout> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<ModifiedContent<Text, MetricDescriptionCoreFont>, ExtendedLineSpacingSupport>, _ForegroundStyleModifier<Color>> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<Text, MetricDescriptionCoreFont>, ExtendedLineSpacingSupport>, _ForegroundStyleModifier<Color>> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<Text, MetricDescriptionCoreFont>, ExtendedLineSpacingSupport>, _ForegroundStyleModifier<Color>> and conformance <> ModifiedContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyACyACyAA4TextV07WorkoutB025MetricDescriptionCoreFontVGAF26ExtendedLineSpacingSupport33_241C09B5AC269BC1C919798A0AC522FDLLVGAA24_ForegroundStyleModifierVyAA5ColorVGGMd);
    lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<Text, MetricDescriptionCoreFont>, ExtendedLineSpacingSupport> and conformance <> ModifiedContent<A, B>();
    _s7SwiftUI24_ForegroundStyleModifierVyAA5ColorVGACyxGAA04ViewE0AAWlTm_2(&lazy protocol witness table cache variable for type _ForegroundStyleModifier<Color> and conformance _ForegroundStyleModifier<A>, &_s7SwiftUI24_ForegroundStyleModifierVyAA5ColorVGMd);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<Text, MetricDescriptionCoreFont>, ExtendedLineSpacingSupport>, _ForegroundStyleModifier<Color>> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

uint64_t outlined init with copy of ModifiedContent<ModifiedContent<ModifiedContent<Text, MetricDescriptionCoreFont>, ExtendedLineSpacingSupport>, _ForegroundStyleModifier<Color>>(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(a3);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<ModifiedContent<Group<_ConditionalContent<Text, Text>?>, _PaddingLayout>, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyWritingModifier<CGFloat>> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<Group<_ConditionalContent<Text, Text>?>, _PaddingLayout>, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyWritingModifier<CGFloat>> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<Group<_ConditionalContent<Text, Text>?>, _PaddingLayout>, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyWritingModifier<CGFloat>> and conformance <> ModifiedContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyACyACyAA5GroupVyAA012_ConditionalD0VyAA4TextVAIGSgGAA14_PaddingLayoutVGAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGAQy12CoreGraphics7CGFloatVGGMd);
    lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<Group<_ConditionalContent<Text, Text>?>, _PaddingLayout>, _EnvironmentKeyWritingModifier<Font?>> and conformance <> ModifiedContent<A, B>();
    _s7SwiftUI24_ForegroundStyleModifierVyAA5ColorVGACyxGAA04ViewE0AAWlTm_2(&lazy protocol witness table cache variable for type _EnvironmentKeyWritingModifier<CGFloat> and conformance _EnvironmentKeyWritingModifier<A>, &_s7SwiftUI30_EnvironmentKeyWritingModifierVy12CoreGraphics7CGFloatVGMd);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<Group<_ConditionalContent<Text, Text>?>, _PaddingLayout>, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyWritingModifier<CGFloat>> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<Group<_ConditionalContent<Text, Text>?>, _PaddingLayout>, _EnvironmentKeyWritingModifier<Font?>> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<Group<_ConditionalContent<Text, Text>?>, _PaddingLayout>, _EnvironmentKeyWritingModifier<Font?>> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<Group<_ConditionalContent<Text, Text>?>, _PaddingLayout>, _EnvironmentKeyWritingModifier<Font?>> and conformance <> ModifiedContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyACyAA5GroupVyAA012_ConditionalD0VyAA4TextVAIGSgGAA14_PaddingLayoutVGAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGMd);
    lazy protocol witness table accessor for type ModifiedContent<Group<_ConditionalContent<Text, Text>?>, _PaddingLayout> and conformance <> ModifiedContent<A, B>();
    _s7SwiftUI24_ForegroundStyleModifierVyAA5ColorVGACyxGAA04ViewE0AAWlTm_2(&lazy protocol witness table cache variable for type _EnvironmentKeyWritingModifier<Font?> and conformance _EnvironmentKeyWritingModifier<A>, &_s7SwiftUI30_EnvironmentKeyWritingModifierVyAA4FontVSgGMd);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<Group<_ConditionalContent<Text, Text>?>, _PaddingLayout>, _EnvironmentKeyWritingModifier<Font?>> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<Group<_ConditionalContent<Text, Text>?>, _PaddingLayout> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<Group<_ConditionalContent<Text, Text>?>, _PaddingLayout> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<Group<_ConditionalContent<Text, Text>?>, _PaddingLayout> and conformance <> ModifiedContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyAA5GroupVyAA012_ConditionalD0VyAA4TextVAIGSgGAA14_PaddingLayoutVGMd);
    lazy protocol witness table accessor for type Group<_ConditionalContent<Text, Text>?> and conformance <A> Group<A>();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<Group<_ConditionalContent<Text, Text>?>, _PaddingLayout> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type Group<_ConditionalContent<Text, Text>?> and conformance <A> Group<A>()
{
  result = lazy protocol witness table cache variable for type Group<_ConditionalContent<Text, Text>?> and conformance <A> Group<A>;
  if (!lazy protocol witness table cache variable for type Group<_ConditionalContent<Text, Text>?> and conformance <A> Group<A>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI5GroupVyAA19_ConditionalContentVyAA4TextVAGGSgGMd);
    lazy protocol witness table accessor for type _ConditionalContent<Text, Text>? and conformance <A> A?();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Group<_ConditionalContent<Text, Text>?> and conformance <A> Group<A>);
  }

  return result;
}

uint64_t _s7SwiftUI24_ForegroundStyleModifierVyAA5ColorVGACyxGAA04ViewE0AAWlTm_2(unint64_t *a1, uint64_t *a2)
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

uint64_t outlined destroy of ModifiedContent<ModifiedContent<ModifiedContent<Text, MetricDescriptionCoreFont>, ExtendedLineSpacingSupport>, _ForegroundStyleModifier<Color>>(uint64_t a1, uint64_t *a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(a2);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

void static MetricPlatterViewBuilder_iOS.view(for:metricsPublisher:formattingManager:activityType:activityMoveMode:)(uint64_t a1@<X1>, void *a2@<X2>, void *a3@<X3>, uint64_t a4@<X4>, uint64_t a5@<X8>)
{
  v421 = a4;
  v457 = a3;
  *&v458 = a1;
  v459 = a2;
  v464 = a5;
  v5 = type metadata accessor for LocalizedStringKey.StringInterpolation();
  MEMORY[0x28223BE20](v5 - 8);
  v401[1] = v401 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v444 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI19_ConditionalContentV7StorageOyACyACyAA08ModifiedD0Vy07WorkoutB028MirrorSpeedometerPlatterViewVAA14_PaddingLayoutVGAGyAH0h17PowerZonesMetricsJ0VALGGACyAGyAH0h9IntervalsjK0VALGAGyAH0hq6SecondjK0VALGGGACyACyAGyAH0h10RaceMetricjK0VALGAGyAH0h10MultiSportpJ0VALGGAA4TextVG_GMd);
  MEMORY[0x28223BE20](v444);
  v446 = (v401 - v7);
  v440 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI19_ConditionalContentV7StorageOyACyAA08ModifiedD0Vy07WorkoutB028MirrorSpeedometerPlatterViewVAA14_PaddingLayoutVGAGyAH0h17PowerZonesMetricsJ0VALGGACyAGyAH0h9IntervalsjK0VALGAGyAH0hq6SecondjK0VALGG_GMd);
  MEMORY[0x28223BE20](v440);
  v442 = (v401 - v8);
  v414 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI19_ConditionalContentV7StorageOyAA08ModifiedD0Vy07WorkoutB028MirrorSpeedometerPlatterViewVAA14_PaddingLayoutVGAGyAH0h17PowerZonesMetricsJ0VALG_GMd);
  MEMORY[0x28223BE20](v414);
  v415 = (v401 - v9);
  v441 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI19_ConditionalContentVyAA08ModifiedD0Vy07WorkoutB028MirrorSpeedometerPlatterViewVAA14_PaddingLayoutVGAEyAF0g17PowerZonesMetricsI0VAJGGMd);
  MEMORY[0x28223BE20](v441);
  v416 = v401 - v10;
  v445 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI19_ConditionalContentVyACyAA08ModifiedD0Vy07WorkoutB028MirrorSpeedometerPlatterViewVAA14_PaddingLayoutVGAEyAF0g17PowerZonesMetricsI0VAJGGACyAEyAF0g9IntervalsiJ0VAJGAEyAF0gp6SecondiJ0VAJGGGMd);
  MEMORY[0x28223BE20](v445);
  v443 = v401 - v11;
  v463 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI19_ConditionalContentVyACyACyAA08ModifiedD0Vy07WorkoutB028MirrorSpeedometerPlatterViewVAA14_PaddingLayoutVGAEyAF0g17PowerZonesMetricsI0VAJGGACyAEyAF0g9IntervalsiJ0VAJGAEyAF0gp6SecondiJ0VAJGGGACyACyAEyAF0g10RaceMetriciJ0VAJGAEyAF0g10MultiSportoI0VAJGGAA4TextVGGMd);
  MEMORY[0x28223BE20](v463);
  v447 = v401 - v12;
  v411 = type metadata accessor for MirrorSpeedometerPlatterView();
  MEMORY[0x28223BE20](v411);
  v412 = (v401 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  v413 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVy07WorkoutB028MirrorSpeedometerPlatterViewVAA14_PaddingLayoutVGMd);
  MEMORY[0x28223BE20](v413);
  v402 = v401 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v403 = v401 - v16;
  v425 = type metadata accessor for MirrorActivityRingsPlatterView();
  MEMORY[0x28223BE20](v425);
  v427 = (v401 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0));
  v431 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVy07WorkoutB030MirrorActivityRingsPlatterViewVAA14_PaddingLayoutVGMd);
  MEMORY[0x28223BE20](v431);
  v426 = v401 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v19);
  v428 = v401 - v20;
  v436 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI19_ConditionalContentV7StorageOyACyAA08ModifiedD0Vy07WorkoutB025MirrorGraphicsMetricsViewVAA14_PaddingLayoutVGAGyAH0h20ActivityRingsPlatterK0VALGGACyAGyAGyAH0h11PacerMetricpK0VALGALGAGyAH0h14HeartRateZonesjP0VALGG_GMd);
  MEMORY[0x28223BE20](v436);
  v438 = (v401 - v21);
  v429 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI19_ConditionalContentV7StorageOyAA08ModifiedD0Vy07WorkoutB025MirrorGraphicsMetricsViewVAA14_PaddingLayoutVGAGyAH0h20ActivityRingsPlatterK0VALG_GMd);
  MEMORY[0x28223BE20](v429);
  v430 = v401 - v22;
  v437 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI19_ConditionalContentVyAA08ModifiedD0Vy07WorkoutB025MirrorGraphicsMetricsViewVAA14_PaddingLayoutVGAEyAF0g20ActivityRingsPlatterJ0VAJGGMd);
  MEMORY[0x28223BE20](v437);
  v432 = v401 - v23;
  v455 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI19_ConditionalContentVyACyAA08ModifiedD0Vy07WorkoutB025MirrorGraphicsMetricsViewVAA14_PaddingLayoutVGAEyAF0g20ActivityRingsPlatterJ0VAJGGACyAEyAEyAF0g11PacerMetricoJ0VAJGAJGAEyAF0g14HeartRateZonesiO0VAJGGGMd);
  MEMORY[0x28223BE20](v455);
  v439 = v401 - v24;
  v408 = type metadata accessor for WorkoutChartProperties();
  v406 = *(v408 - 8);
  MEMORY[0x28223BE20](v408);
  v405 = v401 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v420 = type metadata accessor for MirrorGraphicsMetricsView();
  MEMORY[0x28223BE20](v420);
  v418 = (v401 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v27);
  v409 = (v401 - v28);
  v435 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVy07WorkoutB025MirrorGraphicsMetricsViewVAA14_PaddingLayoutVGMd);
  MEMORY[0x28223BE20](v435);
  v417 = v401 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v30);
  v419 = v401 - v31;
  MEMORY[0x28223BE20](v32);
  v407 = v401 - v33;
  MEMORY[0x28223BE20](v34);
  v410 = v401 - v35;
  v422 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI19_ConditionalContentV7StorageOyAA08ModifiedD0Vy07WorkoutB024MirrorStackedMetricsViewVAA14_PaddingLayoutVGAGyAH0h8GraphicsjK0VALG_GMd);
  MEMORY[0x28223BE20](v422);
  v423 = v401 - v36;
  *&v450 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI19_ConditionalContentVyAA08ModifiedD0Vy07WorkoutB024MirrorStackedMetricsViewVAA14_PaddingLayoutVGAEyAF0g8GraphicsiJ0VAJGGMd);
  MEMORY[0x28223BE20](v450);
  v424 = v401 - v37;
  v460 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI19_ConditionalContentV7StorageOyACyACyACyAA08ModifiedD0Vy07WorkoutB024MirrorStackedMetricsViewVAA14_PaddingLayoutVGAMGACyAmGyAH0h8GraphicsjK0VALGGGACyACyAqGyAH0h20ActivityRingsPlatterK0VALGGACyAGyAGyAH0h11PacerMetricqK0VALGALGAGyAH0h14HeartRateZonesjQ0VALGGGGACyACyACyAGyAH0h11SpeedometerqK0VALGAGyAH0h5PowervjQ0VALGGACyAGyAH0h9IntervalsqK0VALGAGyAH0hy6SecondqK0VALGGGACyACyAGyAH0h4RacesqK0VALGAGyAH0h10MultiSportjQ0VALGGAA4TextVGG_GMd);
  MEMORY[0x28223BE20](v460);
  v462 = v401 - v38;
  v452 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI19_ConditionalContentV7StorageOyACyACyAA08ModifiedD0Vy07WorkoutB024MirrorStackedMetricsViewVAA14_PaddingLayoutVGAMGACyAmGyAH0h8GraphicsjK0VALGGGACyACyAqGyAH0h20ActivityRingsPlatterK0VALGGACyAGyAGyAH0h11PacerMetricqK0VALGALGAGyAH0h14HeartRateZonesjQ0VALGGG_GMd);
  MEMORY[0x28223BE20](v452);
  v454 = v401 - v39;
  v449 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI19_ConditionalContentV7StorageOyACyAA08ModifiedD0Vy07WorkoutB024MirrorStackedMetricsViewVAA14_PaddingLayoutVGAMGACyAmGyAH0h8GraphicsjK0VALGG_GMd);
  MEMORY[0x28223BE20](v449);
  v448 = v401 - v40;
  v453 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI19_ConditionalContentVyACyAA08ModifiedD0Vy07WorkoutB024MirrorStackedMetricsViewVAA14_PaddingLayoutVGAKGACyAkEyAF0g8GraphicsiJ0VAJGGGMd);
  MEMORY[0x28223BE20](v453);
  v451 = v401 - v41;
  v461 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI19_ConditionalContentVyACyACyAA08ModifiedD0Vy07WorkoutB024MirrorStackedMetricsViewVAA14_PaddingLayoutVGAKGACyAkEyAF0g8GraphicsiJ0VAJGGGACyACyAoEyAF0g20ActivityRingsPlatterJ0VAJGGACyAEyAEyAF0g11PacerMetricpJ0VAJGAJGAEyAF0g14HeartRateZonesiP0VAJGGGGMd);
  MEMORY[0x28223BE20](v461);
  v456 = v401 - v42;
  v43 = type metadata accessor for MetricPlatterType();
  v44 = *(v43 - 8);
  MEMORY[0x28223BE20](v43);
  v46 = v401 - ((v45 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v47);
  v404 = v401 - v48;
  MEMORY[0x28223BE20](v49);
  v51 = v401 - v50;
  MEMORY[0x28223BE20](v52);
  v54 = v401 - v53;
  MEMORY[0x28223BE20](v55);
  v57 = v401 - v56;
  MEMORY[0x28223BE20](v58);
  v60 = v401 - v59;
  MetricPlatter.type.getter();
  v433 = v43;
  v434 = v44;
  v61 = (*(v44 + 88))(v60, v43);
  if (v61 == *MEMORY[0x277D7E1E8] || v61 == *MEMORY[0x277D7E1A8])
  {
    v77 = MetricPlatter.metrics.getter();
    if (v77)
    {
      v78 = v77;
    }

    else
    {
      v78 = MEMORY[0x277D84F90];
    }

    type metadata accessor for MetricsPublisher();
    lazy protocol witness table accessor for type MirrorSpeedometerPlatterView and conformance MirrorSpeedometerPlatterView(&lazy protocol witness table cache variable for type MetricsPublisher and conformance MetricsPublisher, MEMORY[0x277D7E090]);
    v79 = v458;
    v80 = ObservedObject.init(wrappedValue:)();
    v82 = v81;
    v83 = v459;
    v84 = v457;
    v85 = static Edge.Set.top.getter();
    if (one-time initialization token for topPaddingForStackedMetricView != -1)
    {
      swift_once();
    }

    EdgeInsets.init(_all:)();
    LOBYTE(v482) = 0;
    *&v509 = v80;
    *(&v509 + 1) = v82;
    *&v510 = v83;
    *(&v510 + 1) = v78;
    *&v511 = v84;
    BYTE8(v511) = v85;
    HIDWORD(v511) = *(&v500 + 3);
    *(&v511 + 9) = v500;
    *&v512 = v86;
    *(&v512 + 1) = v87;
    *&v513 = v88;
    *(&v513 + 1) = v89;
    LOBYTE(v514[0]) = 0;
    v519 = v511;
    v520 = v512;
    v521 = v513;
    LOWORD(v522[0]) = 0;
    v517 = v509;
    v518 = v510;
    LOBYTE(v491) = 0;
    goto LABEL_13;
  }

  if (v61 == *MEMORY[0x277D7E1E0])
  {
    v62 = v458;
    MetricsPublisher.intervalsMetricsPublisher.getter();
    type metadata accessor for IntervalsMetricsPublisher();
    lazy protocol witness table accessor for type MirrorSpeedometerPlatterView and conformance MirrorSpeedometerPlatterView(&lazy protocol witness table cache variable for type IntervalsMetricsPublisher and conformance IntervalsMetricsPublisher, MEMORY[0x277D7E518]);
    v63 = ObservedObject.init(wrappedValue:)();
    v65 = v64;
    MetricsPublisher.workoutStatePublisher.getter();
    type metadata accessor for WorkoutStatePublisher();
    lazy protocol witness table accessor for type MirrorSpeedometerPlatterView and conformance MirrorSpeedometerPlatterView(&lazy protocol witness table cache variable for type WorkoutStatePublisher and conformance WorkoutStatePublisher, MEMORY[0x277D7DA88]);
    v66 = ObservedObject.init(wrappedValue:)();
    v68 = v67;
    v69 = v459;
    v70 = v457;
    v71 = static Edge.Set.top.getter();
    if (one-time initialization token for topPaddingForRingsView != -1)
    {
      swift_once();
    }

    EdgeInsets.init(_all:)();
    *&v509 = v62;
    *(&v509 + 1) = v63;
    *&v510 = v65;
    *(&v510 + 1) = v66;
    *&v511 = v68;
    *(&v511 + 1) = v69;
    *&v512 = v70;
    BYTE8(v512) = v71;
    *(&v512 + 9) = v525[0];
    HIDWORD(v512) = *(v525 + 3);
    *&v513 = v72;
    *(&v513 + 1) = v73;
    *&v514[0] = v74;
    *(&v514[0] + 1) = v75;
    LOBYTE(v514[1]) = 0;
    v521 = v513;
    v522[0] = v514[0];
    LOBYTE(v522[1]) = 0;
    v517 = v509;
    v518 = v510;
    v519 = v511;
    v520 = v512;
    LOBYTE(v500) = 0;
    BYTE9(v522[1]) = 0;
    v76 = &_s7SwiftUI15ModifiedContentVy07WorkoutB026MirrorIntervalsPlatterViewVAA14_PaddingLayoutVGMd;
    outlined init with copy of _ConditionalContent<_ConditionalContent<_ConditionalContent<ModifiedContent<MirrorSpeedometerPlatterView, _PaddingLayout>, ModifiedContent<MirrorPowerZonesMetricsPlatter, _PaddingLayout>>, _ConditionalContent<ModifiedContent<MirrorIntervalsPlatterView, _PaddingLayout>, ModifiedContent<MirrorIntervalsSecondPlatterView, _PaddingLayout>>>, _ConditionalContent<_ConditionalContent<ModifiedContent<MirrorRaceMetricPlatterView, _PaddingLayout>, ModifiedContent<MirrorMultiSportMetricsPlatter, _PaddingLayout>>, Text>>(&v509, v525, &_s7SwiftUI15ModifiedContentVy07WorkoutB026MirrorIntervalsPlatterViewVAA14_PaddingLayoutVGMd);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVy07WorkoutB026MirrorIntervalsPlatterViewVAA14_PaddingLayoutVGMd);
LABEL_18:
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVy07WorkoutB032MirrorIntervalsSecondPlatterViewVAA14_PaddingLayoutVGMd);
    lazy protocol witness table accessor for type ModifiedContent<MirrorIntervalsPlatterView, _PaddingLayout> and conformance <> ModifiedContent<A, B>();
    lazy protocol witness table accessor for type ModifiedContent<MirrorIntervalsSecondPlatterView, _PaddingLayout> and conformance <> ModifiedContent<A, B>();
    _ConditionalContent<>.init(storage:)();
    v104 = v528[0];
    v105 = v442;
    v442[4] = v527;
    v105[5] = v104;
    *(v105 + 90) = *(v528 + 10);
    v106 = v525[1];
    *v105 = v525[0];
    v105[1] = v106;
    v107 = v526;
    v105[2] = v525[2];
    v105[3] = v107;
    swift_storeEnumTagMultiPayload();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI19_ConditionalContentVyAA08ModifiedD0Vy07WorkoutB026MirrorIntervalsPlatterViewVAA14_PaddingLayoutVGAEyAF0gh6SecondiJ0VAJGGMd);
    lazy protocol witness table accessor for type _ConditionalContent<ModifiedContent<MirrorSpeedometerPlatterView, _PaddingLayout>, ModifiedContent<MirrorPowerZonesMetricsPlatter, _PaddingLayout>> and conformance <> _ConditionalContent<A, B>();
    lazy protocol witness table accessor for type _ConditionalContent<ModifiedContent<MirrorIntervalsPlatterView, _PaddingLayout>, ModifiedContent<MirrorIntervalsSecondPlatterView, _PaddingLayout>> and conformance <> _ConditionalContent<A, B>();
    v108 = v443;
    _ConditionalContent<>.init(storage:)();
    outlined init with copy of _ConditionalContent<_ConditionalContent<_ConditionalContent<ModifiedContent<MirrorSpeedometerPlatterView, _PaddingLayout>, ModifiedContent<MirrorPowerZonesMetricsPlatter, _PaddingLayout>>, _ConditionalContent<ModifiedContent<MirrorIntervalsPlatterView, _PaddingLayout>, ModifiedContent<MirrorIntervalsSecondPlatterView, _PaddingLayout>>>, _ConditionalContent<_ConditionalContent<ModifiedContent<MirrorRaceMetricPlatterView, _PaddingLayout>, ModifiedContent<MirrorMultiSportMetricsPlatter, _PaddingLayout>>, Text>>(v108, v446, &_s7SwiftUI19_ConditionalContentVyACyAA08ModifiedD0Vy07WorkoutB028MirrorSpeedometerPlatterViewVAA14_PaddingLayoutVGAEyAF0g17PowerZonesMetricsI0VAJGGACyAEyAF0g9IntervalsiJ0VAJGAEyAF0gp6SecondiJ0VAJGGGMd);
    swift_storeEnumTagMultiPayload();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI19_ConditionalContentVyACyAA08ModifiedD0Vy07WorkoutB027MirrorRaceMetricPlatterViewVAA14_PaddingLayoutVGAEyAF0g17MultiSportMetricsJ0VAJGGAA4TextVGMd);
    lazy protocol witness table accessor for type _ConditionalContent<_ConditionalContent<ModifiedContent<MirrorSpeedometerPlatterView, _PaddingLayout>, ModifiedContent<MirrorPowerZonesMetricsPlatter, _PaddingLayout>>, _ConditionalContent<ModifiedContent<MirrorIntervalsPlatterView, _PaddingLayout>, ModifiedContent<MirrorIntervalsSecondPlatterView, _PaddingLayout>>> and conformance <> _ConditionalContent<A, B>();
    lazy protocol witness table accessor for type _ConditionalContent<_ConditionalContent<ModifiedContent<MirrorRaceMetricPlatterView, _PaddingLayout>, ModifiedContent<MirrorMultiSportMetricsPlatter, _PaddingLayout>>, Text> and conformance <> _ConditionalContent<A, B>();
    v94 = v447;
    _ConditionalContent<>.init(storage:)();
    outlined destroy of _ConditionalContent<_ConditionalContent<_ConditionalContent<ModifiedContent<MirrorSpeedometerPlatterView, _PaddingLayout>, ModifiedContent<MirrorPowerZonesMetricsPlatter, _PaddingLayout>>, _ConditionalContent<ModifiedContent<MirrorIntervalsPlatterView, _PaddingLayout>, ModifiedContent<MirrorIntervalsSecondPlatterView, _PaddingLayout>>>, _ConditionalContent<_ConditionalContent<ModifiedContent<MirrorRaceMetricPlatterView, _PaddingLayout>, ModifiedContent<MirrorMultiSportMetricsPlatter, _PaddingLayout>>, Text>>(v108, &_s7SwiftUI19_ConditionalContentVyACyAA08ModifiedD0Vy07WorkoutB028MirrorSpeedometerPlatterViewVAA14_PaddingLayoutVGAEyAF0g17PowerZonesMetricsI0VAJGGACyAEyAF0g9IntervalsiJ0VAJGAEyAF0gp6SecondiJ0VAJGGGMd);
    v95 = &_s7SwiftUI19_ConditionalContentVyACyACyAA08ModifiedD0Vy07WorkoutB028MirrorSpeedometerPlatterViewVAA14_PaddingLayoutVGAEyAF0g17PowerZonesMetricsI0VAJGGACyAEyAF0g9IntervalsiJ0VAJGAEyAF0gp6SecondiJ0VAJGGGACyACyAEyAF0g10RaceMetriciJ0VAJGAEyAF0g10MultiSportoI0VAJGGAA4TextVGGMd;
    outlined init with copy of _ConditionalContent<_ConditionalContent<_ConditionalContent<ModifiedContent<MirrorSpeedometerPlatterView, _PaddingLayout>, ModifiedContent<MirrorPowerZonesMetricsPlatter, _PaddingLayout>>, _ConditionalContent<ModifiedContent<MirrorIntervalsPlatterView, _PaddingLayout>, ModifiedContent<MirrorIntervalsSecondPlatterView, _PaddingLayout>>>, _ConditionalContent<_ConditionalContent<ModifiedContent<MirrorRaceMetricPlatterView, _PaddingLayout>, ModifiedContent<MirrorMultiSportMetricsPlatter, _PaddingLayout>>, Text>>(v94, v462, &_s7SwiftUI19_ConditionalContentVyACyACyAA08ModifiedD0Vy07WorkoutB028MirrorSpeedometerPlatterViewVAA14_PaddingLayoutVGAEyAF0g17PowerZonesMetricsI0VAJGGACyAEyAF0g9IntervalsiJ0VAJGAEyAF0gp6SecondiJ0VAJGGGACyACyAEyAF0g10RaceMetriciJ0VAJGAEyAF0g10MultiSportoI0VAJGGAA4TextVGGMd);
    goto LABEL_19;
  }

  if (v61 == *MEMORY[0x277D7E1A0])
  {
    type metadata accessor for FIUIWorkoutActivityType();
    v96 = v458;
    v97 = v459;
    v98 = static FIUIWorkoutActivityType.outdoorCycle.getter();
    specialized MirrorIntervalsSecondPlatterView.init(metricsPublisher:formattingManager:activityType:)(v96, v97, v98, &v531);
    v99 = static Edge.Set.top.getter();
    if (one-time initialization token for topPaddingForRingsView != -1)
    {
      swift_once();
    }

    EdgeInsets.init(_all:)();
    v509 = v531;
    v510 = v532;
    v511 = v533;
    v512 = v534;
    LOBYTE(v513) = v99;
    *(&v513 + 1) = v525[0];
    DWORD1(v513) = *(v525 + 3);
    *(&v513 + 1) = v100;
    *&v514[0] = v101;
    *(&v514[0] + 1) = v102;
    *&v514[1] = v103;
    BYTE8(v514[1]) = 0;
    v521 = v513;
    v522[0] = v514[0];
    *(v522 + 9) = *(v514 + 9);
    v517 = v531;
    v518 = v532;
    v519 = v533;
    v520 = v534;
    LOBYTE(v500) = 1;
    BYTE9(v522[1]) = 1;
    v76 = &_s7SwiftUI15ModifiedContentVy07WorkoutB032MirrorIntervalsSecondPlatterViewVAA14_PaddingLayoutVGMd;
    outlined init with copy of _ConditionalContent<_ConditionalContent<_ConditionalContent<ModifiedContent<MirrorSpeedometerPlatterView, _PaddingLayout>, ModifiedContent<MirrorPowerZonesMetricsPlatter, _PaddingLayout>>, _ConditionalContent<ModifiedContent<MirrorIntervalsPlatterView, _PaddingLayout>, ModifiedContent<MirrorIntervalsSecondPlatterView, _PaddingLayout>>>, _ConditionalContent<_ConditionalContent<ModifiedContent<MirrorRaceMetricPlatterView, _PaddingLayout>, ModifiedContent<MirrorMultiSportMetricsPlatter, _PaddingLayout>>, Text>>(&v509, v525, &_s7SwiftUI15ModifiedContentVy07WorkoutB032MirrorIntervalsSecondPlatterViewVAA14_PaddingLayoutVGMd);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVy07WorkoutB026MirrorIntervalsPlatterViewVAA14_PaddingLayoutVGMd);
    goto LABEL_18;
  }

  if (v61 == *MEMORY[0x277D7E1B8])
  {
    type metadata accessor for MetricsPublisher();
    lazy protocol witness table accessor for type MirrorSpeedometerPlatterView and conformance MirrorSpeedometerPlatterView(&lazy protocol witness table cache variable for type MetricsPublisher and conformance MetricsPublisher, MEMORY[0x277D7E090]);
    v112 = v458;
    v113 = ObservedObject.init(wrappedValue:)();
    v115 = v114;
    v116 = v459;
    v117 = v457;
    v118 = static Edge.Set.top.getter();
    if (one-time initialization token for topPaddingGraphicViews != -1)
    {
      swift_once();
    }

    EdgeInsets.init(_all:)();
    v120 = v119;
    v122 = v121;
    v124 = v123;
    v126 = v125;
    LOBYTE(v525[0]) = 0;
    v127 = static Edge.Set.bottom.getter();
    if (one-time initialization token for bottomPadding != -1)
    {
      swift_once();
    }

    EdgeInsets.init(_all:)();
    LOBYTE(v509) = 0;
    *&v500 = v113;
    *(&v500 + 1) = v115;
    *&v501 = v116;
    *(&v501 + 1) = v117;
    v502 = xmmword_20CB6EC40;
    v503 = xmmword_20CB6EC50;
    LOBYTE(v504) = v118;
    *(&v504 + 1) = v120;
    *&v505 = v122;
    *(&v505 + 1) = v124;
    *&v506 = v126;
    BYTE8(v506) = 0;
    HIDWORD(v506) = *(v525 + 3);
    *(&v506 + 9) = v525[0];
    LOBYTE(v507) = v127;
    DWORD1(v507) = *(&v517 + 3);
    *(&v507 + 1) = v517;
    *(&v507 + 1) = v128;
    *&v508[0] = v129;
    *(&v508[0] + 1) = v130;
    *&v508[1] = v131;
    BYTE8(v508[1]) = 0;
    v525[0] = v500;
    v525[1] = v501;
    v527 = v504;
    v528[0] = v505;
    v525[2] = xmmword_20CB6EC40;
    v526 = xmmword_20CB6EC50;
    *(v530 + 9) = *(v508 + 9);
    v529 = v507;
    v530[0] = v508[0];
    v528[1] = v506;
    sub_20C680EE4(v525);
    v514[1] = v528[1];
    v515 = v529;
    v516[0] = v530[0];
    *(v516 + 10) = *(v530 + 10);
    v511 = v525[2];
    v512 = v526;
    v513 = v527;
    v514[0] = v528[0];
    v509 = v525[0];
    v510 = v525[1];
    v76 = &_s7SwiftUI15ModifiedContentVyACy07WorkoutB028MirrorPacerMetricPlatterViewVAA14_PaddingLayoutVGAHGMd;
    outlined init with copy of _ConditionalContent<_ConditionalContent<_ConditionalContent<ModifiedContent<MirrorSpeedometerPlatterView, _PaddingLayout>, ModifiedContent<MirrorPowerZonesMetricsPlatter, _PaddingLayout>>, _ConditionalContent<ModifiedContent<MirrorIntervalsPlatterView, _PaddingLayout>, ModifiedContent<MirrorIntervalsSecondPlatterView, _PaddingLayout>>>, _ConditionalContent<_ConditionalContent<ModifiedContent<MirrorRaceMetricPlatterView, _PaddingLayout>, ModifiedContent<MirrorMultiSportMetricsPlatter, _PaddingLayout>>, Text>>(&v500, &v517, &_s7SwiftUI15ModifiedContentVyACy07WorkoutB028MirrorPacerMetricPlatterViewVAA14_PaddingLayoutVGAHGMd);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyACy07WorkoutB028MirrorPacerMetricPlatterViewVAA14_PaddingLayoutVGAHGMd);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVy07WorkoutB034MirrorHeartRateZonesMetricsPlatterVAA14_PaddingLayoutVGMd);
    lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<MirrorPacerMetricPlatterView, _PaddingLayout>, _PaddingLayout> and conformance <> ModifiedContent<A, B>();
    lazy protocol witness table accessor for type ModifiedContent<MirrorHeartRateZonesMetricsPlatter, _PaddingLayout> and conformance <> ModifiedContent<A, B>();
    _ConditionalContent<>.init(storage:)();
    v132 = v523;
    v133 = v438;
    v438[6] = v522[1];
    v133[7] = v132;
    v133[8] = v524[0];
    *(v133 + 138) = *(v524 + 10);
    v134 = v520;
    v133[2] = v519;
    v133[3] = v134;
    v135 = v522[0];
    v133[4] = v521;
    v133[5] = v135;
    v136 = v517;
    v137 = v518;
LABEL_28:
    *v133 = v136;
    v133[1] = v137;
    swift_storeEnumTagMultiPayload();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI19_ConditionalContentVyAA08ModifiedD0VyAEy07WorkoutB028MirrorPacerMetricPlatterViewVAA14_PaddingLayoutVGAJGAEyAF0g21HeartRateZonesMetricsJ0VAJGGMd);
    lazy protocol witness table accessor for type _ConditionalContent<ModifiedContent<MirrorGraphicsMetricsView, _PaddingLayout>, ModifiedContent<MirrorActivityRingsPlatterView, _PaddingLayout>> and conformance <> _ConditionalContent<A, B>();
    lazy protocol witness table accessor for type _ConditionalContent<ModifiedContent<ModifiedContent<MirrorPacerMetricPlatterView, _PaddingLayout>, _PaddingLayout>, ModifiedContent<MirrorHeartRateZonesMetricsPlatter, _PaddingLayout>> and conformance <> _ConditionalContent<A, B>();
    v138 = v439;
    _ConditionalContent<>.init(storage:)();
    outlined init with copy of _ConditionalContent<_ConditionalContent<_ConditionalContent<ModifiedContent<MirrorSpeedometerPlatterView, _PaddingLayout>, ModifiedContent<MirrorPowerZonesMetricsPlatter, _PaddingLayout>>, _ConditionalContent<ModifiedContent<MirrorIntervalsPlatterView, _PaddingLayout>, ModifiedContent<MirrorIntervalsSecondPlatterView, _PaddingLayout>>>, _ConditionalContent<_ConditionalContent<ModifiedContent<MirrorRaceMetricPlatterView, _PaddingLayout>, ModifiedContent<MirrorMultiSportMetricsPlatter, _PaddingLayout>>, Text>>(v138, v454, &_s7SwiftUI19_ConditionalContentVyACyAA08ModifiedD0Vy07WorkoutB025MirrorGraphicsMetricsViewVAA14_PaddingLayoutVGAEyAF0g20ActivityRingsPlatterJ0VAJGGACyAEyAEyAF0g11PacerMetricoJ0VAJGAJGAEyAF0g14HeartRateZonesiO0VAJGGGMd);
    swift_storeEnumTagMultiPayload();
    lazy protocol witness table accessor for type _ConditionalContent<_ConditionalContent<ModifiedContent<MirrorStackedMetricsView, _PaddingLayout>, ModifiedContent<MirrorStackedMetricsView, _PaddingLayout>>, _ConditionalContent<ModifiedContent<MirrorStackedMetricsView, _PaddingLayout>, ModifiedContent<MirrorGraphicsMetricsView, _PaddingLayout>>> and conformance <> _ConditionalContent<A, B>();
    lazy protocol witness table accessor for type _ConditionalContent<_ConditionalContent<ModifiedContent<MirrorGraphicsMetricsView, _PaddingLayout>, ModifiedContent<MirrorActivityRingsPlatterView, _PaddingLayout>>, _ConditionalContent<ModifiedContent<ModifiedContent<MirrorPacerMetricPlatterView, _PaddingLayout>, _PaddingLayout>, ModifiedContent<MirrorHeartRateZonesMetricsPlatter, _PaddingLayout>>> and conformance <> _ConditionalContent<A, B>();
    v94 = v456;
    _ConditionalContent<>.init(storage:)();
    outlined destroy of _ConditionalContent<_ConditionalContent<_ConditionalContent<ModifiedContent<MirrorSpeedometerPlatterView, _PaddingLayout>, ModifiedContent<MirrorPowerZonesMetricsPlatter, _PaddingLayout>>, _ConditionalContent<ModifiedContent<MirrorIntervalsPlatterView, _PaddingLayout>, ModifiedContent<MirrorIntervalsSecondPlatterView, _PaddingLayout>>>, _ConditionalContent<_ConditionalContent<ModifiedContent<MirrorRaceMetricPlatterView, _PaddingLayout>, ModifiedContent<MirrorMultiSportMetricsPlatter, _PaddingLayout>>, Text>>(v138, &_s7SwiftUI19_ConditionalContentVyACyAA08ModifiedD0Vy07WorkoutB025MirrorGraphicsMetricsViewVAA14_PaddingLayoutVGAEyAF0g20ActivityRingsPlatterJ0VAJGGACyAEyAEyAF0g11PacerMetricoJ0VAJGAJGAEyAF0g14HeartRateZonesiO0VAJGGGMd);
    v95 = &_s7SwiftUI19_ConditionalContentVyACyACyAA08ModifiedD0Vy07WorkoutB024MirrorStackedMetricsViewVAA14_PaddingLayoutVGAKGACyAkEyAF0g8GraphicsiJ0VAJGGGACyACyAoEyAF0g20ActivityRingsPlatterJ0VAJGGACyAEyAEyAF0g11PacerMetricpJ0VAJGAJGAEyAF0g14HeartRateZonesiP0VAJGGGGMd;
    outlined init with copy of _ConditionalContent<_ConditionalContent<_ConditionalContent<ModifiedContent<MirrorSpeedometerPlatterView, _PaddingLayout>, ModifiedContent<MirrorPowerZonesMetricsPlatter, _PaddingLayout>>, _ConditionalContent<ModifiedContent<MirrorIntervalsPlatterView, _PaddingLayout>, ModifiedContent<MirrorIntervalsSecondPlatterView, _PaddingLayout>>>, _ConditionalContent<_ConditionalContent<ModifiedContent<MirrorRaceMetricPlatterView, _PaddingLayout>, ModifiedContent<MirrorMultiSportMetricsPlatter, _PaddingLayout>>, Text>>(v94, v462, &_s7SwiftUI19_ConditionalContentVyACyACyAA08ModifiedD0Vy07WorkoutB024MirrorStackedMetricsViewVAA14_PaddingLayoutVGAKGACyAkEyAF0g8GraphicsiJ0VAJGGGACyACyAoEyAF0g20ActivityRingsPlatterJ0VAJGGACyAEyAEyAF0g11PacerMetricpJ0VAJGAJGAEyAF0g14HeartRateZonesiP0VAJGGGGMd);
    swift_storeEnumTagMultiPayload();
    lazy protocol witness table accessor for type _ConditionalContent<_ConditionalContent<_ConditionalContent<ModifiedContent<MirrorStackedMetricsView, _PaddingLayout>, ModifiedContent<MirrorStackedMetricsView, _PaddingLayout>>, _ConditionalContent<ModifiedContent<MirrorStackedMetricsView, _PaddingLayout>, ModifiedContent<MirrorGraphicsMetricsView, _PaddingLayout>>>, _ConditionalContent<_ConditionalContent<ModifiedContent<MirrorGraphicsMetricsView, _PaddingLayout>, ModifiedContent<MirrorActivityRingsPlatterView, _PaddingLayout>>, _ConditionalContent<ModifiedContent<ModifiedContent<MirrorPacerMetricPlatterView, _PaddingLayout>, _PaddingLayout>, ModifiedContent<MirrorHeartRateZonesMetricsPlatter, _PaddingLayout>>>> and conformance <> _ConditionalContent<A, B>();
    lazy protocol witness table accessor for type _ConditionalContent<_ConditionalContent<_ConditionalContent<ModifiedContent<MirrorSpeedometerPlatterView, _PaddingLayout>, ModifiedContent<MirrorPowerZonesMetricsPlatter, _PaddingLayout>>, _ConditionalContent<ModifiedContent<MirrorIntervalsPlatterView, _PaddingLayout>, ModifiedContent<MirrorIntervalsSecondPlatterView, _PaddingLayout>>>, _ConditionalContent<_ConditionalContent<ModifiedContent<MirrorRaceMetricPlatterView, _PaddingLayout>, ModifiedContent<MirrorMultiSportMetricsPlatter, _PaddingLayout>>, Text>> and conformance <> _ConditionalContent<A, B>();
    _ConditionalContent<>.init(storage:)();
    v109 = &v500;
    goto LABEL_20;
  }

  if (v61 == *MEMORY[0x277D7E1B0])
  {
    type metadata accessor for MetricsPublisher();
    lazy protocol witness table accessor for type MirrorSpeedometerPlatterView and conformance MirrorSpeedometerPlatterView(&lazy protocol witness table cache variable for type MetricsPublisher and conformance MetricsPublisher, MEMORY[0x277D7E090]);
    v139 = v458;
    *&v476 = ObservedObject.init(wrappedValue:)();
    *(&v476 + 1) = v140;
    *&v477 = v459;
    v141 = v457;
    *(&v477 + 1) = v457;
    v142 = v459;
    v143 = v141;
    MetricPlatterConstants.init()(&v478);
    v144 = static Edge.Set.top.getter();
    if (one-time initialization token for topPaddingGraphicViews != -1)
    {
      swift_once();
    }

    EdgeInsets.init(_all:)();
    LOBYTE(v517) = 0;
    v493 = v478;
    v494 = v479;
    v495 = v480;
    *&v496 = v481;
    v491 = v476;
    v492 = v477;
    BYTE8(v496) = v144;
    HIDWORD(v496) = *(v525 + 3);
    *(&v496 + 9) = v525[0];
    *&v497 = v145;
    *(&v497 + 1) = v146;
    *&v498 = v147;
    *(&v498 + 1) = v148;
    LOBYTE(v499[0]) = 0;
    v502 = v478;
    v503 = v479;
    v500 = v476;
    v501 = v477;
    LOBYTE(v508[0]) = 0;
    v506 = v497;
    v507 = v498;
    v504 = v480;
    v505 = v496;
    sub_20C680EE4(&v500);
    v528[1] = v506;
    v529 = v507;
    v530[0] = v508[0];
    *(v530 + 10) = *(v508 + 10);
    v525[2] = v502;
    v526 = v503;
    v527 = v504;
    v528[0] = v505;
    v525[0] = v500;
    v525[1] = v501;
    v76 = &_s7SwiftUI15ModifiedContentVy07WorkoutB027MirrorRaceMetricPlatterViewVAA14_PaddingLayoutVGMd;
    outlined init with copy of _ConditionalContent<_ConditionalContent<_ConditionalContent<ModifiedContent<MirrorSpeedometerPlatterView, _PaddingLayout>, ModifiedContent<MirrorPowerZonesMetricsPlatter, _PaddingLayout>>, _ConditionalContent<ModifiedContent<MirrorIntervalsPlatterView, _PaddingLayout>, ModifiedContent<MirrorIntervalsSecondPlatterView, _PaddingLayout>>>, _ConditionalContent<_ConditionalContent<ModifiedContent<MirrorRaceMetricPlatterView, _PaddingLayout>, ModifiedContent<MirrorMultiSportMetricsPlatter, _PaddingLayout>>, Text>>(&v491, &v517, &_s7SwiftUI15ModifiedContentVy07WorkoutB027MirrorRaceMetricPlatterViewVAA14_PaddingLayoutVGMd);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVy07WorkoutB027MirrorRaceMetricPlatterViewVAA14_PaddingLayoutVGMd);
LABEL_33:
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVy07WorkoutB030MirrorMultiSportMetricsPlatterVAA14_PaddingLayoutVGMd);
    lazy protocol witness table accessor for type ModifiedContent<MirrorRaceMetricPlatterView, _PaddingLayout> and conformance <> ModifiedContent<A, B>();
    lazy protocol witness table accessor for type ModifiedContent<MirrorMultiSportMetricsPlatter, _PaddingLayout> and conformance <> ModifiedContent<A, B>();
    _ConditionalContent<>.init(storage:)();
    v528[1] = v488;
    v529 = v489;
    v530[0] = v490[0];
    *(v530 + 10) = *(v490 + 10);
    v525[2] = v484;
    v526 = v485;
    v527 = v486;
    v528[0] = v487;
    v525[0] = v482;
    v525[1] = v483;
    _s7SwiftUI19_ConditionalContentV7StorageOyACyAA08ModifiedD0Vy07WorkoutB027MirrorRaceMetricPlatterViewVAA14_PaddingLayoutVGAGyAH0h17MultiSportMetricsK0VALGGAA4TextV_GWOi_(v525);
    v514[1] = v528[1];
    v515 = v529;
    v516[0] = v530[0];
    *(v516 + 11) = *(v530 + 11);
    v511 = v525[2];
    v512 = v526;
    v513 = v527;
    v514[0] = v528[0];
    v509 = v525[0];
    v510 = v525[1];
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI19_ConditionalContentVyAA08ModifiedD0Vy07WorkoutB027MirrorRaceMetricPlatterViewVAA14_PaddingLayoutVGAEyAF0g17MultiSportMetricsJ0VAJGGMd);
    lazy protocol witness table accessor for type _ConditionalContent<ModifiedContent<MirrorRaceMetricPlatterView, _PaddingLayout>, ModifiedContent<MirrorMultiSportMetricsPlatter, _PaddingLayout>> and conformance <> _ConditionalContent<A, B>();
    _ConditionalContent<>.init(storage:)();
    v149 = v523;
    v150 = v446;
    v446[6] = v522[1];
    v150[7] = v149;
    v150[8] = v524[0];
    *(v150 + 139) = *(v524 + 11);
    v151 = v520;
    v150[2] = v519;
    v150[3] = v151;
    v152 = v522[0];
    v150[4] = v521;
    v150[5] = v152;
    v153 = v518;
    *v150 = v517;
    v150[1] = v153;
    swift_storeEnumTagMultiPayload();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI19_ConditionalContentVyACyAA08ModifiedD0Vy07WorkoutB027MirrorRaceMetricPlatterViewVAA14_PaddingLayoutVGAEyAF0g17MultiSportMetricsJ0VAJGGAA4TextVGMd);
    lazy protocol witness table accessor for type _ConditionalContent<_ConditionalContent<ModifiedContent<MirrorSpeedometerPlatterView, _PaddingLayout>, ModifiedContent<MirrorPowerZonesMetricsPlatter, _PaddingLayout>>, _ConditionalContent<ModifiedContent<MirrorIntervalsPlatterView, _PaddingLayout>, ModifiedContent<MirrorIntervalsSecondPlatterView, _PaddingLayout>>> and conformance <> _ConditionalContent<A, B>();
    lazy protocol witness table accessor for type _ConditionalContent<_ConditionalContent<ModifiedContent<MirrorRaceMetricPlatterView, _PaddingLayout>, ModifiedContent<MirrorMultiSportMetricsPlatter, _PaddingLayout>>, Text> and conformance <> _ConditionalContent<A, B>();
    v94 = v447;
    _ConditionalContent<>.init(storage:)();
    v95 = &_s7SwiftUI19_ConditionalContentVyACyACyAA08ModifiedD0Vy07WorkoutB028MirrorSpeedometerPlatterViewVAA14_PaddingLayoutVGAEyAF0g17PowerZonesMetricsI0VAJGGACyAEyAF0g9IntervalsiJ0VAJGAEyAF0gp6SecondiJ0VAJGGGACyACyAEyAF0g10RaceMetriciJ0VAJGAEyAF0g10MultiSportoI0VAJGGAA4TextVGGMd;
    outlined init with copy of _ConditionalContent<_ConditionalContent<_ConditionalContent<ModifiedContent<MirrorSpeedometerPlatterView, _PaddingLayout>, ModifiedContent<MirrorPowerZonesMetricsPlatter, _PaddingLayout>>, _ConditionalContent<ModifiedContent<MirrorIntervalsPlatterView, _PaddingLayout>, ModifiedContent<MirrorIntervalsSecondPlatterView, _PaddingLayout>>>, _ConditionalContent<_ConditionalContent<ModifiedContent<MirrorRaceMetricPlatterView, _PaddingLayout>, ModifiedContent<MirrorMultiSportMetricsPlatter, _PaddingLayout>>, Text>>(v94, v462, &_s7SwiftUI19_ConditionalContentVyACyACyAA08ModifiedD0Vy07WorkoutB028MirrorSpeedometerPlatterViewVAA14_PaddingLayoutVGAEyAF0g17PowerZonesMetricsI0VAJGGACyAEyAF0g9IntervalsiJ0VAJGAEyAF0gp6SecondiJ0VAJGGGACyACyAEyAF0g10RaceMetriciJ0VAJGAEyAF0g10MultiSportoI0VAJGGAA4TextVGGMd);
    swift_storeEnumTagMultiPayload();
    lazy protocol witness table accessor for type _ConditionalContent<_ConditionalContent<_ConditionalContent<ModifiedContent<MirrorStackedMetricsView, _PaddingLayout>, ModifiedContent<MirrorStackedMetricsView, _PaddingLayout>>, _ConditionalContent<ModifiedContent<MirrorStackedMetricsView, _PaddingLayout>, ModifiedContent<MirrorGraphicsMetricsView, _PaddingLayout>>>, _ConditionalContent<_ConditionalContent<ModifiedContent<MirrorGraphicsMetricsView, _PaddingLayout>, ModifiedContent<MirrorActivityRingsPlatterView, _PaddingLayout>>, _ConditionalContent<ModifiedContent<ModifiedContent<MirrorPacerMetricPlatterView, _PaddingLayout>, _PaddingLayout>, ModifiedContent<MirrorHeartRateZonesMetricsPlatter, _PaddingLayout>>>> and conformance <> _ConditionalContent<A, B>();
    lazy protocol witness table accessor for type _ConditionalContent<_ConditionalContent<_ConditionalContent<ModifiedContent<MirrorSpeedometerPlatterView, _PaddingLayout>, ModifiedContent<MirrorPowerZonesMetricsPlatter, _PaddingLayout>>, _ConditionalContent<ModifiedContent<MirrorIntervalsPlatterView, _PaddingLayout>, ModifiedContent<MirrorIntervalsSecondPlatterView, _PaddingLayout>>>, _ConditionalContent<_ConditionalContent<ModifiedContent<MirrorRaceMetricPlatterView, _PaddingLayout>, ModifiedContent<MirrorMultiSportMetricsPlatter, _PaddingLayout>>, Text>> and conformance <> _ConditionalContent<A, B>();
    _ConditionalContent<>.init(storage:)();
    v109 = &v491;
    goto LABEL_20;
  }

  if (v61 == *MEMORY[0x277D7E1D8])
  {
    v154 = MetricPlatter.metrics.getter();
    if (v154)
    {
      v155 = v154;
    }

    else
    {
      v155 = MEMORY[0x277D84F90];
    }

    type metadata accessor for MetricsPublisher();
    lazy protocol witness table accessor for type MirrorSpeedometerPlatterView and conformance MirrorSpeedometerPlatterView(&lazy protocol witness table cache variable for type MetricsPublisher and conformance MetricsPublisher, MEMORY[0x277D7E090]);
    v156 = v458;
    v157 = ObservedObject.init(wrappedValue:)();
    v159 = v158;
    v160 = v459;
    v161 = v457;
    v162 = static Edge.Set.top.getter();
    if (one-time initialization token for topPaddingForStackedMetricView != -1)
    {
      swift_once();
    }

    EdgeInsets.init(_all:)();
    LOBYTE(v482) = 0;
    *&v509 = v157;
    *(&v509 + 1) = v159;
    *&v510 = v160;
    *(&v510 + 1) = v155;
    *&v511 = v161;
    BYTE8(v511) = v162;
    HIDWORD(v511) = *(&v500 + 3);
    *(&v511 + 9) = v500;
    *&v512 = v163;
    *(&v512 + 1) = v164;
    *&v513 = v165;
    *(&v513 + 1) = v166;
    LOBYTE(v514[0]) = 0;
    v519 = v511;
    v520 = v512;
    v521 = v513;
    LOWORD(v522[0]) = 256;
    v517 = v509;
    v518 = v510;
    LOBYTE(v491) = 1;
LABEL_13:
    v76 = &_s7SwiftUI15ModifiedContentVy07WorkoutB024MirrorStackedMetricsViewVAA14_PaddingLayoutVGMd;
    outlined init with copy of _ConditionalContent<_ConditionalContent<_ConditionalContent<ModifiedContent<MirrorSpeedometerPlatterView, _PaddingLayout>, ModifiedContent<MirrorPowerZonesMetricsPlatter, _PaddingLayout>>, _ConditionalContent<ModifiedContent<MirrorIntervalsPlatterView, _PaddingLayout>, ModifiedContent<MirrorIntervalsSecondPlatterView, _PaddingLayout>>>, _ConditionalContent<_ConditionalContent<ModifiedContent<MirrorRaceMetricPlatterView, _PaddingLayout>, ModifiedContent<MirrorMultiSportMetricsPlatter, _PaddingLayout>>, Text>>(&v509, v525, &_s7SwiftUI15ModifiedContentVy07WorkoutB024MirrorStackedMetricsViewVAA14_PaddingLayoutVGMd);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVy07WorkoutB024MirrorStackedMetricsViewVAA14_PaddingLayoutVGMd);
    lazy protocol witness table accessor for type ModifiedContent<MirrorStackedMetricsView, _PaddingLayout> and conformance <> ModifiedContent<A, B>();
    _ConditionalContent<>.init(storage:)();
    v90 = v526;
    v91 = v448;
    *(v448 + 32) = v525[2];
    *(v91 + 48) = v90;
    *(v91 + 64) = v527;
    *(v91 + 80) = v528[0];
    v92 = v525[1];
    *v91 = v525[0];
    *(v91 + 16) = v92;
    swift_storeEnumTagMultiPayload();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI19_ConditionalContentVyAA08ModifiedD0Vy07WorkoutB024MirrorStackedMetricsViewVAA14_PaddingLayoutVGAKGMd);
    lazy protocol witness table accessor for type _ConditionalContent<ModifiedContent<MirrorStackedMetricsView, _PaddingLayout>, ModifiedContent<MirrorStackedMetricsView, _PaddingLayout>> and conformance <> _ConditionalContent<A, B>();
    lazy protocol witness table accessor for type _ConditionalContent<ModifiedContent<MirrorStackedMetricsView, _PaddingLayout>, ModifiedContent<MirrorGraphicsMetricsView, _PaddingLayout>> and conformance <> _ConditionalContent<A, B>();
    v93 = v451;
    _ConditionalContent<>.init(storage:)();
    outlined init with copy of _ConditionalContent<_ConditionalContent<_ConditionalContent<ModifiedContent<MirrorSpeedometerPlatterView, _PaddingLayout>, ModifiedContent<MirrorPowerZonesMetricsPlatter, _PaddingLayout>>, _ConditionalContent<ModifiedContent<MirrorIntervalsPlatterView, _PaddingLayout>, ModifiedContent<MirrorIntervalsSecondPlatterView, _PaddingLayout>>>, _ConditionalContent<_ConditionalContent<ModifiedContent<MirrorRaceMetricPlatterView, _PaddingLayout>, ModifiedContent<MirrorMultiSportMetricsPlatter, _PaddingLayout>>, Text>>(v93, v454, &_s7SwiftUI19_ConditionalContentVyACyAA08ModifiedD0Vy07WorkoutB024MirrorStackedMetricsViewVAA14_PaddingLayoutVGAKGACyAkEyAF0g8GraphicsiJ0VAJGGGMd);
    swift_storeEnumTagMultiPayload();
    lazy protocol witness table accessor for type _ConditionalContent<_ConditionalContent<ModifiedContent<MirrorStackedMetricsView, _PaddingLayout>, ModifiedContent<MirrorStackedMetricsView, _PaddingLayout>>, _ConditionalContent<ModifiedContent<MirrorStackedMetricsView, _PaddingLayout>, ModifiedContent<MirrorGraphicsMetricsView, _PaddingLayout>>> and conformance <> _ConditionalContent<A, B>();
    lazy protocol witness table accessor for type _ConditionalContent<_ConditionalContent<ModifiedContent<MirrorGraphicsMetricsView, _PaddingLayout>, ModifiedContent<MirrorActivityRingsPlatterView, _PaddingLayout>>, _ConditionalContent<ModifiedContent<ModifiedContent<MirrorPacerMetricPlatterView, _PaddingLayout>, _PaddingLayout>, ModifiedContent<MirrorHeartRateZonesMetricsPlatter, _PaddingLayout>>> and conformance <> _ConditionalContent<A, B>();
    v94 = v456;
    _ConditionalContent<>.init(storage:)();
    outlined destroy of _ConditionalContent<_ConditionalContent<_ConditionalContent<ModifiedContent<MirrorSpeedometerPlatterView, _PaddingLayout>, ModifiedContent<MirrorPowerZonesMetricsPlatter, _PaddingLayout>>, _ConditionalContent<ModifiedContent<MirrorIntervalsPlatterView, _PaddingLayout>, ModifiedContent<MirrorIntervalsSecondPlatterView, _PaddingLayout>>>, _ConditionalContent<_ConditionalContent<ModifiedContent<MirrorRaceMetricPlatterView, _PaddingLayout>, ModifiedContent<MirrorMultiSportMetricsPlatter, _PaddingLayout>>, Text>>(v93, &_s7SwiftUI19_ConditionalContentVyACyAA08ModifiedD0Vy07WorkoutB024MirrorStackedMetricsViewVAA14_PaddingLayoutVGAKGACyAkEyAF0g8GraphicsiJ0VAJGGGMd);
    v95 = &_s7SwiftUI19_ConditionalContentVyACyACyAA08ModifiedD0Vy07WorkoutB024MirrorStackedMetricsViewVAA14_PaddingLayoutVGAKGACyAkEyAF0g8GraphicsiJ0VAJGGGACyACyAoEyAF0g20ActivityRingsPlatterJ0VAJGGACyAEyAEyAF0g11PacerMetricpJ0VAJGAJGAEyAF0g14HeartRateZonesiP0VAJGGGGMd;
    outlined init with copy of _ConditionalContent<_ConditionalContent<_ConditionalContent<ModifiedContent<MirrorSpeedometerPlatterView, _PaddingLayout>, ModifiedContent<MirrorPowerZonesMetricsPlatter, _PaddingLayout>>, _ConditionalContent<ModifiedContent<MirrorIntervalsPlatterView, _PaddingLayout>, ModifiedContent<MirrorIntervalsSecondPlatterView, _PaddingLayout>>>, _ConditionalContent<_ConditionalContent<ModifiedContent<MirrorRaceMetricPlatterView, _PaddingLayout>, ModifiedContent<MirrorMultiSportMetricsPlatter, _PaddingLayout>>, Text>>(v94, v462, &_s7SwiftUI19_ConditionalContentVyACyACyAA08ModifiedD0Vy07WorkoutB024MirrorStackedMetricsViewVAA14_PaddingLayoutVGAKGACyAkEyAF0g8GraphicsiJ0VAJGGGACyACyAoEyAF0g20ActivityRingsPlatterJ0VAJGGACyAEyAEyAF0g11PacerMetricpJ0VAJGAJGAEyAF0g14HeartRateZonesiP0VAJGGGGMd);
LABEL_19:
    swift_storeEnumTagMultiPayload();
    lazy protocol witness table accessor for type _ConditionalContent<_ConditionalContent<_ConditionalContent<ModifiedContent<MirrorStackedMetricsView, _PaddingLayout>, ModifiedContent<MirrorStackedMetricsView, _PaddingLayout>>, _ConditionalContent<ModifiedContent<MirrorStackedMetricsView, _PaddingLayout>, ModifiedContent<MirrorGraphicsMetricsView, _PaddingLayout>>>, _ConditionalContent<_ConditionalContent<ModifiedContent<MirrorGraphicsMetricsView, _PaddingLayout>, ModifiedContent<MirrorActivityRingsPlatterView, _PaddingLayout>>, _ConditionalContent<ModifiedContent<ModifiedContent<MirrorPacerMetricPlatterView, _PaddingLayout>, _PaddingLayout>, ModifiedContent<MirrorHeartRateZonesMetricsPlatter, _PaddingLayout>>>> and conformance <> _ConditionalContent<A, B>();
    lazy protocol witness table accessor for type _ConditionalContent<_ConditionalContent<_ConditionalContent<ModifiedContent<MirrorSpeedometerPlatterView, _PaddingLayout>, ModifiedContent<MirrorPowerZonesMetricsPlatter, _PaddingLayout>>, _ConditionalContent<ModifiedContent<MirrorIntervalsPlatterView, _PaddingLayout>, ModifiedContent<MirrorIntervalsSecondPlatterView, _PaddingLayout>>>, _ConditionalContent<_ConditionalContent<ModifiedContent<MirrorRaceMetricPlatterView, _PaddingLayout>, ModifiedContent<MirrorMultiSportMetricsPlatter, _PaddingLayout>>, Text>> and conformance <> _ConditionalContent<A, B>();
    _ConditionalContent<>.init(storage:)();
    v109 = &v509;
LABEL_20:
    outlined destroy of _ConditionalContent<_ConditionalContent<_ConditionalContent<ModifiedContent<MirrorSpeedometerPlatterView, _PaddingLayout>, ModifiedContent<MirrorPowerZonesMetricsPlatter, _PaddingLayout>>, _ConditionalContent<ModifiedContent<MirrorIntervalsPlatterView, _PaddingLayout>, ModifiedContent<MirrorIntervalsSecondPlatterView, _PaddingLayout>>>, _ConditionalContent<_ConditionalContent<ModifiedContent<MirrorRaceMetricPlatterView, _PaddingLayout>, ModifiedContent<MirrorMultiSportMetricsPlatter, _PaddingLayout>>, Text>>(v109, v76);
    v110 = v94;
    v111 = v95;
LABEL_21:
    outlined destroy of _ConditionalContent<_ConditionalContent<_ConditionalContent<ModifiedContent<MirrorSpeedometerPlatterView, _PaddingLayout>, ModifiedContent<MirrorPowerZonesMetricsPlatter, _PaddingLayout>>, _ConditionalContent<ModifiedContent<MirrorIntervalsPlatterView, _PaddingLayout>, ModifiedContent<MirrorIntervalsSecondPlatterView, _PaddingLayout>>>, _ConditionalContent<_ConditionalContent<ModifiedContent<MirrorRaceMetricPlatterView, _PaddingLayout>, ModifiedContent<MirrorMultiSportMetricsPlatter, _PaddingLayout>>, Text>>(v110, v111);
    return;
  }

  if (v61 == *MEMORY[0x277D7E190])
  {
    MetricsPublisher.activitySummaryMetricsPublisher.getter();
    MetricPlatter.type.getter();
    type metadata accessor for ActivitySummaryMetricsPublisher();
    lazy protocol witness table accessor for type MirrorSpeedometerPlatterView and conformance MirrorSpeedometerPlatterView(&lazy protocol witness table cache variable for type ActivitySummaryMetricsPublisher and conformance ActivitySummaryMetricsPublisher, MEMORY[0x277D7E670]);
    v167 = ObservedObject.init(wrappedValue:)();
    v168 = v427;
    *v427 = v167;
    *(v168 + 8) = v169;
    v170 = v459;
    *(v168 + 16) = v459;
    v171 = v425;
    (*(v434 + 32))(v168 + *(v425 + 24), v51, v433);
    v172 = v457;
    *(v168 + *(v171 + 28)) = v457;
    v173 = objc_opt_self();
    v174 = v170;
    v175 = v172;
    v176 = [v173 currentDevice];
    LOBYTE(v170) = specialized UIDevice.screenType.getter();

    v177 = dbl_20CB6ECA8[v170];
    v178 = objc_opt_self();
    v179 = [v178 mainScreen];
    [v179 scale];
    v181 = v180;

    v182 = [v178 mainScreen];
    [v182 nativeScale];
    v184 = v183;

    if (v181 != v184)
    {
      v185 = [v178 mainScreen];
      [v185 scale];
      v187 = v186;

      v188 = [v178 mainScreen];
      [v188 nativeScale];
      v190 = v189;

      v177 = v177 * (v187 / v190 * 0.95);
    }

    *(v168 + *(v171 + 32)) = v177;
    v191 = static Edge.Set.top.getter();
    if (one-time initialization token for topPaddingForRingsView != -1)
    {
      swift_once();
    }

    EdgeInsets.init(_all:)();
    v193 = v192;
    v195 = v194;
    v197 = v196;
    v199 = v198;
    v200 = v426;
    outlined init with take of MirrorSpeedometerPlatterView(v168, v426, type metadata accessor for MirrorActivityRingsPlatterView);
    v201 = v200 + *(v431 + 36);
    *v201 = v191;
    *(v201 + 8) = v193;
    *(v201 + 16) = v195;
    *(v201 + 24) = v197;
    *(v201 + 32) = v199;
    *(v201 + 40) = 0;
    v202 = v428;
    outlined init with take of ModifiedContent<MirrorSpeedometerPlatterView, _PaddingLayout>(v200, v428, &_s7SwiftUI15ModifiedContentVy07WorkoutB030MirrorActivityRingsPlatterViewVAA14_PaddingLayoutVGMd);
    outlined init with copy of _ConditionalContent<_ConditionalContent<_ConditionalContent<ModifiedContent<MirrorSpeedometerPlatterView, _PaddingLayout>, ModifiedContent<MirrorPowerZonesMetricsPlatter, _PaddingLayout>>, _ConditionalContent<ModifiedContent<MirrorIntervalsPlatterView, _PaddingLayout>, ModifiedContent<MirrorIntervalsSecondPlatterView, _PaddingLayout>>>, _ConditionalContent<_ConditionalContent<ModifiedContent<MirrorRaceMetricPlatterView, _PaddingLayout>, ModifiedContent<MirrorMultiSportMetricsPlatter, _PaddingLayout>>, Text>>(v202, v430, &_s7SwiftUI15ModifiedContentVy07WorkoutB030MirrorActivityRingsPlatterViewVAA14_PaddingLayoutVGMd);
    swift_storeEnumTagMultiPayload();
    lazy protocol witness table accessor for type ModifiedContent<MirrorGraphicsMetricsView, _PaddingLayout> and conformance <> ModifiedContent<A, B>();
    lazy protocol witness table accessor for type ModifiedContent<MirrorActivityRingsPlatterView, _PaddingLayout> and conformance <> ModifiedContent<A, B>();
    v203 = v432;
    _ConditionalContent<>.init(storage:)();
    outlined init with copy of _ConditionalContent<_ConditionalContent<_ConditionalContent<ModifiedContent<MirrorSpeedometerPlatterView, _PaddingLayout>, ModifiedContent<MirrorPowerZonesMetricsPlatter, _PaddingLayout>>, _ConditionalContent<ModifiedContent<MirrorIntervalsPlatterView, _PaddingLayout>, ModifiedContent<MirrorIntervalsSecondPlatterView, _PaddingLayout>>>, _ConditionalContent<_ConditionalContent<ModifiedContent<MirrorRaceMetricPlatterView, _PaddingLayout>, ModifiedContent<MirrorMultiSportMetricsPlatter, _PaddingLayout>>, Text>>(v203, v438, &_s7SwiftUI19_ConditionalContentVyAA08ModifiedD0Vy07WorkoutB025MirrorGraphicsMetricsViewVAA14_PaddingLayoutVGAEyAF0g20ActivityRingsPlatterJ0VAJGGMd);
    swift_storeEnumTagMultiPayload();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI19_ConditionalContentVyAA08ModifiedD0VyAEy07WorkoutB028MirrorPacerMetricPlatterViewVAA14_PaddingLayoutVGAJGAEyAF0g21HeartRateZonesMetricsJ0VAJGGMd);
    lazy protocol witness table accessor for type _ConditionalContent<ModifiedContent<MirrorGraphicsMetricsView, _PaddingLayout>, ModifiedContent<MirrorActivityRingsPlatterView, _PaddingLayout>> and conformance <> _ConditionalContent<A, B>();
    lazy protocol witness table accessor for type _ConditionalContent<ModifiedContent<ModifiedContent<MirrorPacerMetricPlatterView, _PaddingLayout>, _PaddingLayout>, ModifiedContent<MirrorHeartRateZonesMetricsPlatter, _PaddingLayout>> and conformance <> _ConditionalContent<A, B>();
    v204 = v439;
    _ConditionalContent<>.init(storage:)();
    outlined destroy of _ConditionalContent<_ConditionalContent<_ConditionalContent<ModifiedContent<MirrorSpeedometerPlatterView, _PaddingLayout>, ModifiedContent<MirrorPowerZonesMetricsPlatter, _PaddingLayout>>, _ConditionalContent<ModifiedContent<MirrorIntervalsPlatterView, _PaddingLayout>, ModifiedContent<MirrorIntervalsSecondPlatterView, _PaddingLayout>>>, _ConditionalContent<_ConditionalContent<ModifiedContent<MirrorRaceMetricPlatterView, _PaddingLayout>, ModifiedContent<MirrorMultiSportMetricsPlatter, _PaddingLayout>>, Text>>(v203, &_s7SwiftUI19_ConditionalContentVyAA08ModifiedD0Vy07WorkoutB025MirrorGraphicsMetricsViewVAA14_PaddingLayoutVGAEyAF0g20ActivityRingsPlatterJ0VAJGGMd);
    outlined init with copy of _ConditionalContent<_ConditionalContent<_ConditionalContent<ModifiedContent<MirrorSpeedometerPlatterView, _PaddingLayout>, ModifiedContent<MirrorPowerZonesMetricsPlatter, _PaddingLayout>>, _ConditionalContent<ModifiedContent<MirrorIntervalsPlatterView, _PaddingLayout>, ModifiedContent<MirrorIntervalsSecondPlatterView, _PaddingLayout>>>, _ConditionalContent<_ConditionalContent<ModifiedContent<MirrorRaceMetricPlatterView, _PaddingLayout>, ModifiedContent<MirrorMultiSportMetricsPlatter, _PaddingLayout>>, Text>>(v204, v454, &_s7SwiftUI19_ConditionalContentVyACyAA08ModifiedD0Vy07WorkoutB025MirrorGraphicsMetricsViewVAA14_PaddingLayoutVGAEyAF0g20ActivityRingsPlatterJ0VAJGGACyAEyAEyAF0g11PacerMetricoJ0VAJGAJGAEyAF0g14HeartRateZonesiO0VAJGGGMd);
    swift_storeEnumTagMultiPayload();
    lazy protocol witness table accessor for type _ConditionalContent<_ConditionalContent<ModifiedContent<MirrorStackedMetricsView, _PaddingLayout>, ModifiedContent<MirrorStackedMetricsView, _PaddingLayout>>, _ConditionalContent<ModifiedContent<MirrorStackedMetricsView, _PaddingLayout>, ModifiedContent<MirrorGraphicsMetricsView, _PaddingLayout>>> and conformance <> _ConditionalContent<A, B>();
    lazy protocol witness table accessor for type _ConditionalContent<_ConditionalContent<ModifiedContent<MirrorGraphicsMetricsView, _PaddingLayout>, ModifiedContent<MirrorActivityRingsPlatterView, _PaddingLayout>>, _ConditionalContent<ModifiedContent<ModifiedContent<MirrorPacerMetricPlatterView, _PaddingLayout>, _PaddingLayout>, ModifiedContent<MirrorHeartRateZonesMetricsPlatter, _PaddingLayout>>> and conformance <> _ConditionalContent<A, B>();
    v205 = v456;
    _ConditionalContent<>.init(storage:)();
    outlined destroy of _ConditionalContent<_ConditionalContent<_ConditionalContent<ModifiedContent<MirrorSpeedometerPlatterView, _PaddingLayout>, ModifiedContent<MirrorPowerZonesMetricsPlatter, _PaddingLayout>>, _ConditionalContent<ModifiedContent<MirrorIntervalsPlatterView, _PaddingLayout>, ModifiedContent<MirrorIntervalsSecondPlatterView, _PaddingLayout>>>, _ConditionalContent<_ConditionalContent<ModifiedContent<MirrorRaceMetricPlatterView, _PaddingLayout>, ModifiedContent<MirrorMultiSportMetricsPlatter, _PaddingLayout>>, Text>>(v204, &_s7SwiftUI19_ConditionalContentVyACyAA08ModifiedD0Vy07WorkoutB025MirrorGraphicsMetricsViewVAA14_PaddingLayoutVGAEyAF0g20ActivityRingsPlatterJ0VAJGGACyAEyAEyAF0g11PacerMetricoJ0VAJGAJGAEyAF0g14HeartRateZonesiO0VAJGGGMd);
    outlined init with copy of _ConditionalContent<_ConditionalContent<_ConditionalContent<ModifiedContent<MirrorSpeedometerPlatterView, _PaddingLayout>, ModifiedContent<MirrorPowerZonesMetricsPlatter, _PaddingLayout>>, _ConditionalContent<ModifiedContent<MirrorIntervalsPlatterView, _PaddingLayout>, ModifiedContent<MirrorIntervalsSecondPlatterView, _PaddingLayout>>>, _ConditionalContent<_ConditionalContent<ModifiedContent<MirrorRaceMetricPlatterView, _PaddingLayout>, ModifiedContent<MirrorMultiSportMetricsPlatter, _PaddingLayout>>, Text>>(v205, v462, &_s7SwiftUI19_ConditionalContentVyACyACyAA08ModifiedD0Vy07WorkoutB024MirrorStackedMetricsViewVAA14_PaddingLayoutVGAKGACyAkEyAF0g8GraphicsiJ0VAJGGGACyACyAoEyAF0g20ActivityRingsPlatterJ0VAJGGACyAEyAEyAF0g11PacerMetricpJ0VAJGAJGAEyAF0g14HeartRateZonesiP0VAJGGGGMd);
    swift_storeEnumTagMultiPayload();
    lazy protocol witness table accessor for type _ConditionalContent<_ConditionalContent<_ConditionalContent<ModifiedContent<MirrorStackedMetricsView, _PaddingLayout>, ModifiedContent<MirrorStackedMetricsView, _PaddingLayout>>, _ConditionalContent<ModifiedContent<MirrorStackedMetricsView, _PaddingLayout>, ModifiedContent<MirrorGraphicsMetricsView, _PaddingLayout>>>, _ConditionalContent<_ConditionalContent<ModifiedContent<MirrorGraphicsMetricsView, _PaddingLayout>, ModifiedContent<MirrorActivityRingsPlatterView, _PaddingLayout>>, _ConditionalContent<ModifiedContent<ModifiedContent<MirrorPacerMetricPlatterView, _PaddingLayout>, _PaddingLayout>, ModifiedContent<MirrorHeartRateZonesMetricsPlatter, _PaddingLayout>>>> and conformance <> _ConditionalContent<A, B>();
    lazy protocol witness table accessor for type _ConditionalContent<_ConditionalContent<_ConditionalContent<ModifiedContent<MirrorSpeedometerPlatterView, _PaddingLayout>, ModifiedContent<MirrorPowerZonesMetricsPlatter, _PaddingLayout>>, _ConditionalContent<ModifiedContent<MirrorIntervalsPlatterView, _PaddingLayout>, ModifiedContent<MirrorIntervalsSecondPlatterView, _PaddingLayout>>>, _ConditionalContent<_ConditionalContent<ModifiedContent<MirrorRaceMetricPlatterView, _PaddingLayout>, ModifiedContent<MirrorMultiSportMetricsPlatter, _PaddingLayout>>, Text>> and conformance <> _ConditionalContent<A, B>();
    _ConditionalContent<>.init(storage:)();
    outlined destroy of _ConditionalContent<_ConditionalContent<_ConditionalContent<ModifiedContent<MirrorSpeedometerPlatterView, _PaddingLayout>, ModifiedContent<MirrorPowerZonesMetricsPlatter, _PaddingLayout>>, _ConditionalContent<ModifiedContent<MirrorIntervalsPlatterView, _PaddingLayout>, ModifiedContent<MirrorIntervalsSecondPlatterView, _PaddingLayout>>>, _ConditionalContent<_ConditionalContent<ModifiedContent<MirrorRaceMetricPlatterView, _PaddingLayout>, ModifiedContent<MirrorMultiSportMetricsPlatter, _PaddingLayout>>, Text>>(v205, &_s7SwiftUI19_ConditionalContentVyACyACyAA08ModifiedD0Vy07WorkoutB024MirrorStackedMetricsViewVAA14_PaddingLayoutVGAKGACyAkEyAF0g8GraphicsiJ0VAJGGGACyACyAoEyAF0g20ActivityRingsPlatterJ0VAJGGACyAEyAEyAF0g11PacerMetricpJ0VAJGAJGAEyAF0g14HeartRateZonesiP0VAJGGGGMd);
    v110 = v202;
    v111 = &_s7SwiftUI15ModifiedContentVy07WorkoutB030MirrorActivityRingsPlatterViewVAA14_PaddingLayoutVGMd;
    goto LABEL_21;
  }

  if (v61 == *MEMORY[0x277D7E1C8])
  {
    v206 = MetricPlatter.metrics.getter();
    if (v206)
    {
      v207 = v206;
    }

    else
    {
      v207 = MEMORY[0x277D84F90];
    }

    type metadata accessor for MetricsPublisher();
    lazy protocol witness table accessor for type MirrorSpeedometerPlatterView and conformance MirrorSpeedometerPlatterView(&lazy protocol witness table cache variable for type MetricsPublisher and conformance MetricsPublisher, MEMORY[0x277D7E090]);
    v208 = v458;
    v209 = ObservedObject.init(wrappedValue:)();
    v211 = v210;
    v212 = v459;
    v213 = v457;
    v214 = static Edge.Set.top.getter();
    if (one-time initialization token for topPaddingForStackedMetricView != -1)
    {
      swift_once();
    }

    EdgeInsets.init(_all:)();
    LOBYTE(v500) = 0;
    *&v525[0] = v209;
    *(&v525[0] + 1) = v211;
    *&v525[1] = v212;
    *(&v525[1] + 1) = v207;
    *&v525[2] = v213;
    BYTE8(v525[2]) = v214;
    HIDWORD(v525[2]) = *(&v509 + 3);
    *(&v525[2] + 9) = v509;
    *&v526 = v215;
    *(&v526 + 1) = v216;
    *&v527 = v217;
    *(&v527 + 1) = v218;
    LOBYTE(v528[0]) = 0;
    v220 = v525[2];
    v219 = v526;
    v221 = v527;
    v222 = v423;
    *(v423 + 80) = 0;
    v222[3] = v219;
    v222[4] = v221;
    v223 = v525[0];
    v222[1] = v525[1];
    v222[2] = v220;
    *v222 = v223;
    swift_storeEnumTagMultiPayload();
    v76 = &_s7SwiftUI15ModifiedContentVy07WorkoutB024MirrorStackedMetricsViewVAA14_PaddingLayoutVGMd;
    outlined init with copy of _ConditionalContent<_ConditionalContent<_ConditionalContent<ModifiedContent<MirrorSpeedometerPlatterView, _PaddingLayout>, ModifiedContent<MirrorPowerZonesMetricsPlatter, _PaddingLayout>>, _ConditionalContent<ModifiedContent<MirrorIntervalsPlatterView, _PaddingLayout>, ModifiedContent<MirrorIntervalsSecondPlatterView, _PaddingLayout>>>, _ConditionalContent<_ConditionalContent<ModifiedContent<MirrorRaceMetricPlatterView, _PaddingLayout>, ModifiedContent<MirrorMultiSportMetricsPlatter, _PaddingLayout>>, Text>>(v525, &v517, &_s7SwiftUI15ModifiedContentVy07WorkoutB024MirrorStackedMetricsViewVAA14_PaddingLayoutVGMd);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVy07WorkoutB024MirrorStackedMetricsViewVAA14_PaddingLayoutVGMd);
    lazy protocol witness table accessor for type ModifiedContent<MirrorStackedMetricsView, _PaddingLayout> and conformance <> ModifiedContent<A, B>();
    lazy protocol witness table accessor for type ModifiedContent<MirrorGraphicsMetricsView, _PaddingLayout> and conformance <> ModifiedContent<A, B>();
    v224 = v424;
    _ConditionalContent<>.init(storage:)();
    outlined init with copy of _ConditionalContent<_ConditionalContent<_ConditionalContent<ModifiedContent<MirrorSpeedometerPlatterView, _PaddingLayout>, ModifiedContent<MirrorPowerZonesMetricsPlatter, _PaddingLayout>>, _ConditionalContent<ModifiedContent<MirrorIntervalsPlatterView, _PaddingLayout>, ModifiedContent<MirrorIntervalsSecondPlatterView, _PaddingLayout>>>, _ConditionalContent<_ConditionalContent<ModifiedContent<MirrorRaceMetricPlatterView, _PaddingLayout>, ModifiedContent<MirrorMultiSportMetricsPlatter, _PaddingLayout>>, Text>>(v224, v448, &_s7SwiftUI19_ConditionalContentVyAA08ModifiedD0Vy07WorkoutB024MirrorStackedMetricsViewVAA14_PaddingLayoutVGAEyAF0g8GraphicsiJ0VAJGGMd);
    swift_storeEnumTagMultiPayload();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI19_ConditionalContentVyAA08ModifiedD0Vy07WorkoutB024MirrorStackedMetricsViewVAA14_PaddingLayoutVGAKGMd);
    lazy protocol witness table accessor for type _ConditionalContent<ModifiedContent<MirrorStackedMetricsView, _PaddingLayout>, ModifiedContent<MirrorStackedMetricsView, _PaddingLayout>> and conformance <> _ConditionalContent<A, B>();
    lazy protocol witness table accessor for type _ConditionalContent<ModifiedContent<MirrorStackedMetricsView, _PaddingLayout>, ModifiedContent<MirrorGraphicsMetricsView, _PaddingLayout>> and conformance <> _ConditionalContent<A, B>();
    v225 = v451;
    _ConditionalContent<>.init(storage:)();
    outlined destroy of _ConditionalContent<_ConditionalContent<_ConditionalContent<ModifiedContent<MirrorSpeedometerPlatterView, _PaddingLayout>, ModifiedContent<MirrorPowerZonesMetricsPlatter, _PaddingLayout>>, _ConditionalContent<ModifiedContent<MirrorIntervalsPlatterView, _PaddingLayout>, ModifiedContent<MirrorIntervalsSecondPlatterView, _PaddingLayout>>>, _ConditionalContent<_ConditionalContent<ModifiedContent<MirrorRaceMetricPlatterView, _PaddingLayout>, ModifiedContent<MirrorMultiSportMetricsPlatter, _PaddingLayout>>, Text>>(v224, &_s7SwiftUI19_ConditionalContentVyAA08ModifiedD0Vy07WorkoutB024MirrorStackedMetricsViewVAA14_PaddingLayoutVGAEyAF0g8GraphicsiJ0VAJGGMd);
    outlined init with copy of _ConditionalContent<_ConditionalContent<_ConditionalContent<ModifiedContent<MirrorSpeedometerPlatterView, _PaddingLayout>, ModifiedContent<MirrorPowerZonesMetricsPlatter, _PaddingLayout>>, _ConditionalContent<ModifiedContent<MirrorIntervalsPlatterView, _PaddingLayout>, ModifiedContent<MirrorIntervalsSecondPlatterView, _PaddingLayout>>>, _ConditionalContent<_ConditionalContent<ModifiedContent<MirrorRaceMetricPlatterView, _PaddingLayout>, ModifiedContent<MirrorMultiSportMetricsPlatter, _PaddingLayout>>, Text>>(v225, v454, &_s7SwiftUI19_ConditionalContentVyACyAA08ModifiedD0Vy07WorkoutB024MirrorStackedMetricsViewVAA14_PaddingLayoutVGAKGACyAkEyAF0g8GraphicsiJ0VAJGGGMd);
    swift_storeEnumTagMultiPayload();
    lazy protocol witness table accessor for type _ConditionalContent<_ConditionalContent<ModifiedContent<MirrorStackedMetricsView, _PaddingLayout>, ModifiedContent<MirrorStackedMetricsView, _PaddingLayout>>, _ConditionalContent<ModifiedContent<MirrorStackedMetricsView, _PaddingLayout>, ModifiedContent<MirrorGraphicsMetricsView, _PaddingLayout>>> and conformance <> _ConditionalContent<A, B>();
    lazy protocol witness table accessor for type _ConditionalContent<_ConditionalContent<ModifiedContent<MirrorGraphicsMetricsView, _PaddingLayout>, ModifiedContent<MirrorActivityRingsPlatterView, _PaddingLayout>>, _ConditionalContent<ModifiedContent<ModifiedContent<MirrorPacerMetricPlatterView, _PaddingLayout>, _PaddingLayout>, ModifiedContent<MirrorHeartRateZonesMetricsPlatter, _PaddingLayout>>> and conformance <> _ConditionalContent<A, B>();
    v94 = v456;
    _ConditionalContent<>.init(storage:)();
    outlined destroy of _ConditionalContent<_ConditionalContent<_ConditionalContent<ModifiedContent<MirrorSpeedometerPlatterView, _PaddingLayout>, ModifiedContent<MirrorPowerZonesMetricsPlatter, _PaddingLayout>>, _ConditionalContent<ModifiedContent<MirrorIntervalsPlatterView, _PaddingLayout>, ModifiedContent<MirrorIntervalsSecondPlatterView, _PaddingLayout>>>, _ConditionalContent<_ConditionalContent<ModifiedContent<MirrorRaceMetricPlatterView, _PaddingLayout>, ModifiedContent<MirrorMultiSportMetricsPlatter, _PaddingLayout>>, Text>>(v225, &_s7SwiftUI19_ConditionalContentVyACyAA08ModifiedD0Vy07WorkoutB024MirrorStackedMetricsViewVAA14_PaddingLayoutVGAKGACyAkEyAF0g8GraphicsiJ0VAJGGGMd);
    v95 = &_s7SwiftUI19_ConditionalContentVyACyACyAA08ModifiedD0Vy07WorkoutB024MirrorStackedMetricsViewVAA14_PaddingLayoutVGAKGACyAkEyAF0g8GraphicsiJ0VAJGGGACyACyAoEyAF0g20ActivityRingsPlatterJ0VAJGGACyAEyAEyAF0g11PacerMetricpJ0VAJGAJGAEyAF0g14HeartRateZonesiP0VAJGGGGMd;
    outlined init with copy of _ConditionalContent<_ConditionalContent<_ConditionalContent<ModifiedContent<MirrorSpeedometerPlatterView, _PaddingLayout>, ModifiedContent<MirrorPowerZonesMetricsPlatter, _PaddingLayout>>, _ConditionalContent<ModifiedContent<MirrorIntervalsPlatterView, _PaddingLayout>, ModifiedContent<MirrorIntervalsSecondPlatterView, _PaddingLayout>>>, _ConditionalContent<_ConditionalContent<ModifiedContent<MirrorRaceMetricPlatterView, _PaddingLayout>, ModifiedContent<MirrorMultiSportMetricsPlatter, _PaddingLayout>>, Text>>(v94, v462, &_s7SwiftUI19_ConditionalContentVyACyACyAA08ModifiedD0Vy07WorkoutB024MirrorStackedMetricsViewVAA14_PaddingLayoutVGAKGACyAkEyAF0g8GraphicsiJ0VAJGGGACyACyAoEyAF0g20ActivityRingsPlatterJ0VAJGGACyAEyAEyAF0g11PacerMetricpJ0VAJGAJGAEyAF0g14HeartRateZonesiP0VAJGGGGMd);
LABEL_54:
    swift_storeEnumTagMultiPayload();
    lazy protocol witness table accessor for type _ConditionalContent<_ConditionalContent<_ConditionalContent<ModifiedContent<MirrorStackedMetricsView, _PaddingLayout>, ModifiedContent<MirrorStackedMetricsView, _PaddingLayout>>, _ConditionalContent<ModifiedContent<MirrorStackedMetricsView, _PaddingLayout>, ModifiedContent<MirrorGraphicsMetricsView, _PaddingLayout>>>, _ConditionalContent<_ConditionalContent<ModifiedContent<MirrorGraphicsMetricsView, _PaddingLayout>, ModifiedContent<MirrorActivityRingsPlatterView, _PaddingLayout>>, _ConditionalContent<ModifiedContent<ModifiedContent<MirrorPacerMetricPlatterView, _PaddingLayout>, _PaddingLayout>, ModifiedContent<MirrorHeartRateZonesMetricsPlatter, _PaddingLayout>>>> and conformance <> _ConditionalContent<A, B>();
    lazy protocol witness table accessor for type _ConditionalContent<_ConditionalContent<_ConditionalContent<ModifiedContent<MirrorSpeedometerPlatterView, _PaddingLayout>, ModifiedContent<MirrorPowerZonesMetricsPlatter, _PaddingLayout>>, _ConditionalContent<ModifiedContent<MirrorIntervalsPlatterView, _PaddingLayout>, ModifiedContent<MirrorIntervalsSecondPlatterView, _PaddingLayout>>>, _ConditionalContent<_ConditionalContent<ModifiedContent<MirrorRaceMetricPlatterView, _PaddingLayout>, ModifiedContent<MirrorMultiSportMetricsPlatter, _PaddingLayout>>, Text>> and conformance <> _ConditionalContent<A, B>();
    _ConditionalContent<>.init(storage:)();
    v109 = v525;
    goto LABEL_20;
  }

  if (v61 == *MEMORY[0x277D7E198])
  {
    v226 = MetricPlatter.metrics.getter();
    if (v226)
    {
      v227 = v226;
    }

    else
    {
      v227 = MEMORY[0x277D84F90];
    }

    MetricPlatterConstants.init()(&v467 + 8);
    *(&v471 + 1) = &outlined read-only object #1 of static MetricPlatterViewBuilder_iOS.view(for:metricsPublisher:formattingManager:activityType:activityMoveMode:);
    *&v465 = v458;
    v228 = v458;
    MetricsPublisher.heartRateMetricsPublisher.getter();
    type metadata accessor for HeartRateMetricsPublisher();
    lazy protocol witness table accessor for type MirrorSpeedometerPlatterView and conformance MirrorSpeedometerPlatterView(&lazy protocol witness table cache variable for type HeartRateMetricsPublisher and conformance HeartRateMetricsPublisher, MEMORY[0x277D7E500]);
    *(&v465 + 1) = ObservedObject.init(wrappedValue:)();
    *&v466 = v229;
    *(&v466 + 1) = v459;
    v230 = v457;
    *&v467 = v457;
    v231 = v459;
    v232 = v230;
    v233 = specialized static MirrorHeartRateZonesMetricsPlatter.reorderSupportedMetrics(_:)(v227);

    *&v471 = v233;
    v234 = static Edge.Set.top.getter();
    if (one-time initialization token for topPaddingGraphicViews != -1)
    {
      swift_once();
    }

    EdgeInsets.init(_all:)();
    LOBYTE(v491) = 0;
    v504 = v469;
    v505 = v470;
    v506 = v471;
    v500 = v465;
    v501 = v466;
    v502 = v467;
    v503 = v468;
    LOBYTE(v507) = v234;
    DWORD1(v507) = *(&v482 + 3);
    *(&v507 + 1) = v482;
    *(&v507 + 1) = v235;
    *&v508[0] = v236;
    *(&v508[0] + 1) = v237;
    *&v508[1] = v238;
    BYTE8(v508[1]) = 0;
    v525[0] = v465;
    v525[1] = v466;
    v527 = v469;
    v528[0] = v470;
    v525[2] = v467;
    v526 = v468;
    *(v530 + 9) = *(v508 + 9);
    v529 = v507;
    v530[0] = v508[0];
    v528[1] = v471;
    sub_20C680ED8(v525);
    v514[1] = v528[1];
    v515 = v529;
    v516[0] = v530[0];
    *(v516 + 10) = *(v530 + 10);
    v511 = v525[2];
    v512 = v526;
    v513 = v527;
    v514[0] = v528[0];
    v509 = v525[0];
    v510 = v525[1];
    v76 = &_s7SwiftUI15ModifiedContentVy07WorkoutB034MirrorHeartRateZonesMetricsPlatterVAA14_PaddingLayoutVGMd;
    outlined init with copy of _ConditionalContent<_ConditionalContent<_ConditionalContent<ModifiedContent<MirrorSpeedometerPlatterView, _PaddingLayout>, ModifiedContent<MirrorPowerZonesMetricsPlatter, _PaddingLayout>>, _ConditionalContent<ModifiedContent<MirrorIntervalsPlatterView, _PaddingLayout>, ModifiedContent<MirrorIntervalsSecondPlatterView, _PaddingLayout>>>, _ConditionalContent<_ConditionalContent<ModifiedContent<MirrorRaceMetricPlatterView, _PaddingLayout>, ModifiedContent<MirrorMultiSportMetricsPlatter, _PaddingLayout>>, Text>>(&v500, &v517, &_s7SwiftUI15ModifiedContentVy07WorkoutB034MirrorHeartRateZonesMetricsPlatterVAA14_PaddingLayoutVGMd);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyACy07WorkoutB028MirrorPacerMetricPlatterViewVAA14_PaddingLayoutVGAHGMd);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVy07WorkoutB034MirrorHeartRateZonesMetricsPlatterVAA14_PaddingLayoutVGMd);
    lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<MirrorPacerMetricPlatterView, _PaddingLayout>, _PaddingLayout> and conformance <> ModifiedContent<A, B>();
    lazy protocol witness table accessor for type ModifiedContent<MirrorHeartRateZonesMetricsPlatter, _PaddingLayout> and conformance <> ModifiedContent<A, B>();
    _ConditionalContent<>.init(storage:)();
    v239 = v523;
    v133 = v438;
    v438[6] = v522[1];
    v133[7] = v239;
    v133[8] = v524[0];
    *(v133 + 138) = *(v524 + 10);
    v240 = v520;
    v133[2] = v519;
    v133[3] = v240;
    v241 = v522[0];
    v133[4] = v521;
    v133[5] = v241;
    v136 = v517;
    v137 = v518;
    goto LABEL_28;
  }

  if (v61 == *MEMORY[0x277D7E178])
  {
    v242 = v458;
    v243 = v459;
    specialized MirrorMultiSportMetricsPlatter.init(metricsPublisher:formattingManager:activityMoveMode:)(v242, v243, v421, &v535);

    v244 = static Edge.Set.top.getter();
    if (one-time initialization token for topPaddingForRingsView != -1)
    {
      swift_once();
    }

    EdgeInsets.init(_all:)();
    LOBYTE(v525[0]) = 0;
    v495 = v539;
    v496 = v540;
    v497 = v541;
    v491 = v535;
    v492 = v536;
    v493 = v537;
    v494 = v538;
    LOBYTE(v498) = v244;
    *(&v498 + 1) = v245;
    *&v499[0] = v246;
    *(&v499[0] + 1) = v247;
    *&v499[1] = v248;
    BYTE8(v499[1]) = 0;
    v500 = v535;
    v501 = v536;
    v504 = v539;
    v505 = v540;
    v502 = v537;
    v503 = v538;
    *(v508 + 9) = *(v499 + 9);
    v507 = v498;
    v508[0] = v499[0];
    v506 = v541;
    sub_20C680ED8(&v500);
    v528[1] = v506;
    v529 = v507;
    v530[0] = v508[0];
    *(v530 + 10) = *(v508 + 10);
    v525[2] = v502;
    v526 = v503;
    v527 = v504;
    v528[0] = v505;
    v525[0] = v500;
    v525[1] = v501;
    v76 = &_s7SwiftUI15ModifiedContentVy07WorkoutB030MirrorMultiSportMetricsPlatterVAA14_PaddingLayoutVGMd;
    outlined init with copy of _ConditionalContent<_ConditionalContent<_ConditionalContent<ModifiedContent<MirrorSpeedometerPlatterView, _PaddingLayout>, ModifiedContent<MirrorPowerZonesMetricsPlatter, _PaddingLayout>>, _ConditionalContent<ModifiedContent<MirrorIntervalsPlatterView, _PaddingLayout>, ModifiedContent<MirrorIntervalsSecondPlatterView, _PaddingLayout>>>, _ConditionalContent<_ConditionalContent<ModifiedContent<MirrorRaceMetricPlatterView, _PaddingLayout>, ModifiedContent<MirrorMultiSportMetricsPlatter, _PaddingLayout>>, Text>>(&v491, &v517, &_s7SwiftUI15ModifiedContentVy07WorkoutB030MirrorMultiSportMetricsPlatterVAA14_PaddingLayoutVGMd);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVy07WorkoutB027MirrorRaceMetricPlatterViewVAA14_PaddingLayoutVGMd);
    goto LABEL_33;
  }

  if (v61 == *MEMORY[0x277D7E1C0])
  {
    MetricPlatter.type.getter();
    v249 = MetricPlatter.metrics.getter();
    v250 = MEMORY[0x277D84F90];
    if (v249)
    {
      v250 = v249;
    }

    v451 = v250;
    v251 = [objc_opt_self() wattUnit];
    v252 = v420;
    v253 = v418;
    static WorkoutChartProperties.power(unit:)();

    static WorkoutChartColors.power()(v525);
    v450 = *(&v525[1] + 8);
    v254 = *&v525[0];
    v255 = *(&v525[2] + 1);
    v256 = v526;
    type metadata accessor for MetricsPublisher();
    lazy protocol witness table accessor for type MirrorSpeedometerPlatterView and conformance MirrorSpeedometerPlatterView(&lazy protocol witness table cache variable for type MetricsPublisher and conformance MetricsPublisher, MEMORY[0x277D7E090]);
    v257 = v458;
    v458 = *(v525 + 8);
    *v253 = ObservedObject.init(wrappedValue:)();
    v253[1] = v258;
    v259 = v459;
    v253[2] = v459;
    (*(v434 + 32))(v253 + v252[6], v54, v433);
    *(v253 + v252[7]) = v451;
    v260 = v253 + v252[9];
    *v260 = v254;
    *(v260 + 8) = v458;
    *(v260 + 24) = v450;
    *(v260 + 5) = v255;
    *(v260 + 6) = v256;
    v261 = v457;
    *(v253 + v252[10]) = v457;
    v262 = v259;
    v263 = v261;
    v264 = static Edge.Set.top.getter();
    if (one-time initialization token for topPaddingGraphicViews != -1)
    {
      swift_once();
    }

    EdgeInsets.init(_all:)();
    v266 = v265;
    v268 = v267;
    v270 = v269;
    v272 = v271;
    v273 = v253;
    v274 = v417;
    outlined init with take of MirrorSpeedometerPlatterView(v273, v417, type metadata accessor for MirrorGraphicsMetricsView);
    v275 = v274 + *(v435 + 36);
    *v275 = v264;
    *(v275 + 8) = v266;
    *(v275 + 16) = v268;
    *(v275 + 24) = v270;
    *(v275 + 32) = v272;
    *(v275 + 40) = 0;
    v276 = v419;
    outlined init with take of ModifiedContent<MirrorSpeedometerPlatterView, _PaddingLayout>(v274, v419, &_s7SwiftUI15ModifiedContentVy07WorkoutB025MirrorGraphicsMetricsViewVAA14_PaddingLayoutVGMd);
    outlined init with copy of _ConditionalContent<_ConditionalContent<_ConditionalContent<ModifiedContent<MirrorSpeedometerPlatterView, _PaddingLayout>, ModifiedContent<MirrorPowerZonesMetricsPlatter, _PaddingLayout>>, _ConditionalContent<ModifiedContent<MirrorIntervalsPlatterView, _PaddingLayout>, ModifiedContent<MirrorIntervalsSecondPlatterView, _PaddingLayout>>>, _ConditionalContent<_ConditionalContent<ModifiedContent<MirrorRaceMetricPlatterView, _PaddingLayout>, ModifiedContent<MirrorMultiSportMetricsPlatter, _PaddingLayout>>, Text>>(v276, v430, &_s7SwiftUI15ModifiedContentVy07WorkoutB025MirrorGraphicsMetricsViewVAA14_PaddingLayoutVGMd);
    swift_storeEnumTagMultiPayload();
    lazy protocol witness table accessor for type ModifiedContent<MirrorGraphicsMetricsView, _PaddingLayout> and conformance <> ModifiedContent<A, B>();
    lazy protocol witness table accessor for type ModifiedContent<MirrorActivityRingsPlatterView, _PaddingLayout> and conformance <> ModifiedContent<A, B>();
    v277 = v432;
    _ConditionalContent<>.init(storage:)();
    outlined init with copy of _ConditionalContent<_ConditionalContent<_ConditionalContent<ModifiedContent<MirrorSpeedometerPlatterView, _PaddingLayout>, ModifiedContent<MirrorPowerZonesMetricsPlatter, _PaddingLayout>>, _ConditionalContent<ModifiedContent<MirrorIntervalsPlatterView, _PaddingLayout>, ModifiedContent<MirrorIntervalsSecondPlatterView, _PaddingLayout>>>, _ConditionalContent<_ConditionalContent<ModifiedContent<MirrorRaceMetricPlatterView, _PaddingLayout>, ModifiedContent<MirrorMultiSportMetricsPlatter, _PaddingLayout>>, Text>>(v277, v438, &_s7SwiftUI19_ConditionalContentVyAA08ModifiedD0Vy07WorkoutB025MirrorGraphicsMetricsViewVAA14_PaddingLayoutVGAEyAF0g20ActivityRingsPlatterJ0VAJGGMd);
    swift_storeEnumTagMultiPayload();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI19_ConditionalContentVyAA08ModifiedD0VyAEy07WorkoutB028MirrorPacerMetricPlatterViewVAA14_PaddingLayoutVGAJGAEyAF0g21HeartRateZonesMetricsJ0VAJGGMd);
    lazy protocol witness table accessor for type _ConditionalContent<ModifiedContent<MirrorGraphicsMetricsView, _PaddingLayout>, ModifiedContent<MirrorActivityRingsPlatterView, _PaddingLayout>> and conformance <> _ConditionalContent<A, B>();
    lazy protocol witness table accessor for type _ConditionalContent<ModifiedContent<ModifiedContent<MirrorPacerMetricPlatterView, _PaddingLayout>, _PaddingLayout>, ModifiedContent<MirrorHeartRateZonesMetricsPlatter, _PaddingLayout>> and conformance <> _ConditionalContent<A, B>();
    v278 = v439;
    _ConditionalContent<>.init(storage:)();
    outlined destroy of _ConditionalContent<_ConditionalContent<_ConditionalContent<ModifiedContent<MirrorSpeedometerPlatterView, _PaddingLayout>, ModifiedContent<MirrorPowerZonesMetricsPlatter, _PaddingLayout>>, _ConditionalContent<ModifiedContent<MirrorIntervalsPlatterView, _PaddingLayout>, ModifiedContent<MirrorIntervalsSecondPlatterView, _PaddingLayout>>>, _ConditionalContent<_ConditionalContent<ModifiedContent<MirrorRaceMetricPlatterView, _PaddingLayout>, ModifiedContent<MirrorMultiSportMetricsPlatter, _PaddingLayout>>, Text>>(v277, &_s7SwiftUI19_ConditionalContentVyAA08ModifiedD0Vy07WorkoutB025MirrorGraphicsMetricsViewVAA14_PaddingLayoutVGAEyAF0g20ActivityRingsPlatterJ0VAJGGMd);
    outlined init with copy of _ConditionalContent<_ConditionalContent<_ConditionalContent<ModifiedContent<MirrorSpeedometerPlatterView, _PaddingLayout>, ModifiedContent<MirrorPowerZonesMetricsPlatter, _PaddingLayout>>, _ConditionalContent<ModifiedContent<MirrorIntervalsPlatterView, _PaddingLayout>, ModifiedContent<MirrorIntervalsSecondPlatterView, _PaddingLayout>>>, _ConditionalContent<_ConditionalContent<ModifiedContent<MirrorRaceMetricPlatterView, _PaddingLayout>, ModifiedContent<MirrorMultiSportMetricsPlatter, _PaddingLayout>>, Text>>(v278, v454, &_s7SwiftUI19_ConditionalContentVyACyAA08ModifiedD0Vy07WorkoutB025MirrorGraphicsMetricsViewVAA14_PaddingLayoutVGAEyAF0g20ActivityRingsPlatterJ0VAJGGACyAEyAEyAF0g11PacerMetricoJ0VAJGAJGAEyAF0g14HeartRateZonesiO0VAJGGGMd);
    swift_storeEnumTagMultiPayload();
    lazy protocol witness table accessor for type _ConditionalContent<_ConditionalContent<ModifiedContent<MirrorStackedMetricsView, _PaddingLayout>, ModifiedContent<MirrorStackedMetricsView, _PaddingLayout>>, _ConditionalContent<ModifiedContent<MirrorStackedMetricsView, _PaddingLayout>, ModifiedContent<MirrorGraphicsMetricsView, _PaddingLayout>>> and conformance <> _ConditionalContent<A, B>();
    lazy protocol witness table accessor for type _ConditionalContent<_ConditionalContent<ModifiedContent<MirrorGraphicsMetricsView, _PaddingLayout>, ModifiedContent<MirrorActivityRingsPlatterView, _PaddingLayout>>, _ConditionalContent<ModifiedContent<ModifiedContent<MirrorPacerMetricPlatterView, _PaddingLayout>, _PaddingLayout>, ModifiedContent<MirrorHeartRateZonesMetricsPlatter, _PaddingLayout>>> and conformance <> _ConditionalContent<A, B>();
    v279 = v456;
    _ConditionalContent<>.init(storage:)();
    outlined destroy of _ConditionalContent<_ConditionalContent<_ConditionalContent<ModifiedContent<MirrorSpeedometerPlatterView, _PaddingLayout>, ModifiedContent<MirrorPowerZonesMetricsPlatter, _PaddingLayout>>, _ConditionalContent<ModifiedContent<MirrorIntervalsPlatterView, _PaddingLayout>, ModifiedContent<MirrorIntervalsSecondPlatterView, _PaddingLayout>>>, _ConditionalContent<_ConditionalContent<ModifiedContent<MirrorRaceMetricPlatterView, _PaddingLayout>, ModifiedContent<MirrorMultiSportMetricsPlatter, _PaddingLayout>>, Text>>(v278, &_s7SwiftUI19_ConditionalContentVyACyAA08ModifiedD0Vy07WorkoutB025MirrorGraphicsMetricsViewVAA14_PaddingLayoutVGAEyAF0g20ActivityRingsPlatterJ0VAJGGACyAEyAEyAF0g11PacerMetricoJ0VAJGAJGAEyAF0g14HeartRateZonesiO0VAJGGGMd);
    outlined init with copy of _ConditionalContent<_ConditionalContent<_ConditionalContent<ModifiedContent<MirrorSpeedometerPlatterView, _PaddingLayout>, ModifiedContent<MirrorPowerZonesMetricsPlatter, _PaddingLayout>>, _ConditionalContent<ModifiedContent<MirrorIntervalsPlatterView, _PaddingLayout>, ModifiedContent<MirrorIntervalsSecondPlatterView, _PaddingLayout>>>, _ConditionalContent<_ConditionalContent<ModifiedContent<MirrorRaceMetricPlatterView, _PaddingLayout>, ModifiedContent<MirrorMultiSportMetricsPlatter, _PaddingLayout>>, Text>>(v279, v462, &_s7SwiftUI19_ConditionalContentVyACyACyAA08ModifiedD0Vy07WorkoutB024MirrorStackedMetricsViewVAA14_PaddingLayoutVGAKGACyAkEyAF0g8GraphicsiJ0VAJGGGACyACyAoEyAF0g20ActivityRingsPlatterJ0VAJGGACyAEyAEyAF0g11PacerMetricpJ0VAJGAJGAEyAF0g14HeartRateZonesiP0VAJGGGGMd);
    swift_storeEnumTagMultiPayload();
    lazy protocol witness table accessor for type _ConditionalContent<_ConditionalContent<_ConditionalContent<ModifiedContent<MirrorStackedMetricsView, _PaddingLayout>, ModifiedContent<MirrorStackedMetricsView, _PaddingLayout>>, _ConditionalContent<ModifiedContent<MirrorStackedMetricsView, _PaddingLayout>, ModifiedContent<MirrorGraphicsMetricsView, _PaddingLayout>>>, _ConditionalContent<_ConditionalContent<ModifiedContent<MirrorGraphicsMetricsView, _PaddingLayout>, ModifiedContent<MirrorActivityRingsPlatterView, _PaddingLayout>>, _ConditionalContent<ModifiedContent<ModifiedContent<MirrorPacerMetricPlatterView, _PaddingLayout>, _PaddingLayout>, ModifiedContent<MirrorHeartRateZonesMetricsPlatter, _PaddingLayout>>>> and conformance <> _ConditionalContent<A, B>();
    lazy protocol witness table accessor for type _ConditionalContent<_ConditionalContent<_ConditionalContent<ModifiedContent<MirrorSpeedometerPlatterView, _PaddingLayout>, ModifiedContent<MirrorPowerZonesMetricsPlatter, _PaddingLayout>>, _ConditionalContent<ModifiedContent<MirrorIntervalsPlatterView, _PaddingLayout>, ModifiedContent<MirrorIntervalsSecondPlatterView, _PaddingLayout>>>, _ConditionalContent<_ConditionalContent<ModifiedContent<MirrorRaceMetricPlatterView, _PaddingLayout>, ModifiedContent<MirrorMultiSportMetricsPlatter, _PaddingLayout>>, Text>> and conformance <> _ConditionalContent<A, B>();
    _ConditionalContent<>.init(storage:)();
    outlined destroy of _ConditionalContent<_ConditionalContent<_ConditionalContent<ModifiedContent<MirrorSpeedometerPlatterView, _PaddingLayout>, ModifiedContent<MirrorPowerZonesMetricsPlatter, _PaddingLayout>>, _ConditionalContent<ModifiedContent<MirrorIntervalsPlatterView, _PaddingLayout>, ModifiedContent<MirrorIntervalsSecondPlatterView, _PaddingLayout>>>, _ConditionalContent<_ConditionalContent<ModifiedContent<MirrorRaceMetricPlatterView, _PaddingLayout>, ModifiedContent<MirrorMultiSportMetricsPlatter, _PaddingLayout>>, Text>>(v279, &_s7SwiftUI19_ConditionalContentVyACyACyAA08ModifiedD0Vy07WorkoutB024MirrorStackedMetricsViewVAA14_PaddingLayoutVGAKGACyAkEyAF0g8GraphicsiJ0VAJGGGACyACyAoEyAF0g20ActivityRingsPlatterJ0VAJGGACyAEyAEyAF0g11PacerMetricpJ0VAJGAJGAEyAF0g14HeartRateZonesiP0VAJGGGGMd);
    v110 = v276;
    v111 = &_s7SwiftUI15ModifiedContentVy07WorkoutB025MirrorGraphicsMetricsViewVAA14_PaddingLayoutVGMd;
    goto LABEL_21;
  }

  if (v61 == *MEMORY[0x277D7E180])
  {
    v280 = MetricPlatter.metrics.getter();
    if (v280)
    {
      v281 = v280;
    }

    else
    {
      v281 = MEMORY[0x277D84F90];
    }

    MetricPlatterConstants.init()(v474 + 8);
    *(&v475 + 1) = &outlined read-only object #2 of static MetricPlatterViewBuilder_iOS.view(for:metricsPublisher:formattingManager:activityType:activityMoveMode:);
    *&v472 = v458;
    v282 = v458;
    MetricsPublisher.powerMetricsPublisher.getter();
    type metadata accessor for PowerMetricsPublisher();
    lazy protocol witness table accessor for type MirrorSpeedometerPlatterView and conformance MirrorSpeedometerPlatterView(&lazy protocol witness table cache variable for type PowerMetricsPublisher and conformance PowerMetricsPublisher, MEMORY[0x277D7E3B0]);
    *(&v472 + 1) = ObservedObject.init(wrappedValue:)();
    *&v473 = v283;
    *(&v473 + 1) = v459;
    v284 = v457;
    *&v474[0] = v457;
    v285 = v459;
    v286 = v284;
    v287 = specialized static MirrorPowerZonesMetricsPlatter.reorderSupportedMetrics(_:)(v281);

    *&v475 = v287;
    v288 = static Edge.Set.top.getter();
    if (one-time initialization token for topPaddingGraphicViews != -1)
    {
      swift_once();
    }

    EdgeInsets.init(_all:)();
    LOBYTE(v500) = 0;
    v527 = v474[2];
    v528[0] = v474[3];
    v528[1] = v475;
    v525[0] = v472;
    v525[1] = v473;
    v525[2] = v474[0];
    v526 = v474[1];
    LOBYTE(v529) = v288;
    DWORD1(v529) = *(&v509 + 3);
    *(&v529 + 1) = v509;
    *(&v529 + 1) = v289;
    *&v530[0] = v290;
    *(&v530[0] + 1) = v291;
    *&v530[1] = v292;
    BYTE8(v530[1]) = 0;
    v293 = v473;
    v294 = v415;
    *v415 = v472;
    v294[1] = v293;
    v295 = v525[2];
    v296 = v526;
    v297 = v528[0];
    v294[4] = v527;
    v294[5] = v297;
    v294[2] = v295;
    v294[3] = v296;
    v298 = v528[1];
    v299 = v529;
    v300 = v530[0];
    *(v294 + 137) = *(v530 + 9);
    v294[7] = v299;
    v294[8] = v300;
    v294[6] = v298;
    swift_storeEnumTagMultiPayload();
    v76 = &_s7SwiftUI15ModifiedContentVy07WorkoutB030MirrorPowerZonesMetricsPlatterVAA14_PaddingLayoutVGMd;
    outlined init with copy of _ConditionalContent<_ConditionalContent<_ConditionalContent<ModifiedContent<MirrorSpeedometerPlatterView, _PaddingLayout>, ModifiedContent<MirrorPowerZonesMetricsPlatter, _PaddingLayout>>, _ConditionalContent<ModifiedContent<MirrorIntervalsPlatterView, _PaddingLayout>, ModifiedContent<MirrorIntervalsSecondPlatterView, _PaddingLayout>>>, _ConditionalContent<_ConditionalContent<ModifiedContent<MirrorRaceMetricPlatterView, _PaddingLayout>, ModifiedContent<MirrorMultiSportMetricsPlatter, _PaddingLayout>>, Text>>(v525, &v517, &_s7SwiftUI15ModifiedContentVy07WorkoutB030MirrorPowerZonesMetricsPlatterVAA14_PaddingLayoutVGMd);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVy07WorkoutB030MirrorPowerZonesMetricsPlatterVAA14_PaddingLayoutVGMd);
    lazy protocol witness table accessor for type ModifiedContent<MirrorSpeedometerPlatterView, _PaddingLayout> and conformance <> ModifiedContent<A, B>();
    lazy protocol witness table accessor for type ModifiedContent<MirrorPowerZonesMetricsPlatter, _PaddingLayout> and conformance <> ModifiedContent<A, B>();
    v301 = v416;
    _ConditionalContent<>.init(storage:)();
    outlined init with copy of _ConditionalContent<_ConditionalContent<_ConditionalContent<ModifiedContent<MirrorSpeedometerPlatterView, _PaddingLayout>, ModifiedContent<MirrorPowerZonesMetricsPlatter, _PaddingLayout>>, _ConditionalContent<ModifiedContent<MirrorIntervalsPlatterView, _PaddingLayout>, ModifiedContent<MirrorIntervalsSecondPlatterView, _PaddingLayout>>>, _ConditionalContent<_ConditionalContent<ModifiedContent<MirrorRaceMetricPlatterView, _PaddingLayout>, ModifiedContent<MirrorMultiSportMetricsPlatter, _PaddingLayout>>, Text>>(v301, v442, &_s7SwiftUI19_ConditionalContentVyAA08ModifiedD0Vy07WorkoutB028MirrorSpeedometerPlatterViewVAA14_PaddingLayoutVGAEyAF0g17PowerZonesMetricsI0VAJGGMd);
    swift_storeEnumTagMultiPayload();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI19_ConditionalContentVyAA08ModifiedD0Vy07WorkoutB026MirrorIntervalsPlatterViewVAA14_PaddingLayoutVGAEyAF0gh6SecondiJ0VAJGGMd);
    lazy protocol witness table accessor for type _ConditionalContent<ModifiedContent<MirrorSpeedometerPlatterView, _PaddingLayout>, ModifiedContent<MirrorPowerZonesMetricsPlatter, _PaddingLayout>> and conformance <> _ConditionalContent<A, B>();
    lazy protocol witness table accessor for type _ConditionalContent<ModifiedContent<MirrorIntervalsPlatterView, _PaddingLayout>, ModifiedContent<MirrorIntervalsSecondPlatterView, _PaddingLayout>> and conformance <> _ConditionalContent<A, B>();
    v302 = v443;
    _ConditionalContent<>.init(storage:)();
    outlined destroy of _ConditionalContent<_ConditionalContent<_ConditionalContent<ModifiedContent<MirrorSpeedometerPlatterView, _PaddingLayout>, ModifiedContent<MirrorPowerZonesMetricsPlatter, _PaddingLayout>>, _ConditionalContent<ModifiedContent<MirrorIntervalsPlatterView, _PaddingLayout>, ModifiedContent<MirrorIntervalsSecondPlatterView, _PaddingLayout>>>, _ConditionalContent<_ConditionalContent<ModifiedContent<MirrorRaceMetricPlatterView, _PaddingLayout>, ModifiedContent<MirrorMultiSportMetricsPlatter, _PaddingLayout>>, Text>>(v301, &_s7SwiftUI19_ConditionalContentVyAA08ModifiedD0Vy07WorkoutB028MirrorSpeedometerPlatterViewVAA14_PaddingLayoutVGAEyAF0g17PowerZonesMetricsI0VAJGGMd);
    outlined init with copy of _ConditionalContent<_ConditionalContent<_ConditionalContent<ModifiedContent<MirrorSpeedometerPlatterView, _PaddingLayout>, ModifiedContent<MirrorPowerZonesMetricsPlatter, _PaddingLayout>>, _ConditionalContent<ModifiedContent<MirrorIntervalsPlatterView, _PaddingLayout>, ModifiedContent<MirrorIntervalsSecondPlatterView, _PaddingLayout>>>, _ConditionalContent<_ConditionalContent<ModifiedContent<MirrorRaceMetricPlatterView, _PaddingLayout>, ModifiedContent<MirrorMultiSportMetricsPlatter, _PaddingLayout>>, Text>>(v302, v446, &_s7SwiftUI19_ConditionalContentVyACyAA08ModifiedD0Vy07WorkoutB028MirrorSpeedometerPlatterViewVAA14_PaddingLayoutVGAEyAF0g17PowerZonesMetricsI0VAJGGACyAEyAF0g9IntervalsiJ0VAJGAEyAF0gp6SecondiJ0VAJGGGMd);
    swift_storeEnumTagMultiPayload();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI19_ConditionalContentVyACyAA08ModifiedD0Vy07WorkoutB027MirrorRaceMetricPlatterViewVAA14_PaddingLayoutVGAEyAF0g17MultiSportMetricsJ0VAJGGAA4TextVGMd);
    lazy protocol witness table accessor for type _ConditionalContent<_ConditionalContent<ModifiedContent<MirrorSpeedometerPlatterView, _PaddingLayout>, ModifiedContent<MirrorPowerZonesMetricsPlatter, _PaddingLayout>>, _ConditionalContent<ModifiedContent<MirrorIntervalsPlatterView, _PaddingLayout>, ModifiedContent<MirrorIntervalsSecondPlatterView, _PaddingLayout>>> and conformance <> _ConditionalContent<A, B>();
    lazy protocol witness table accessor for type _ConditionalContent<_ConditionalContent<ModifiedContent<MirrorRaceMetricPlatterView, _PaddingLayout>, ModifiedContent<MirrorMultiSportMetricsPlatter, _PaddingLayout>>, Text> and conformance <> _ConditionalContent<A, B>();
    v94 = v447;
    _ConditionalContent<>.init(storage:)();
    outlined destroy of _ConditionalContent<_ConditionalContent<_ConditionalContent<ModifiedContent<MirrorSpeedometerPlatterView, _PaddingLayout>, ModifiedContent<MirrorPowerZonesMetricsPlatter, _PaddingLayout>>, _ConditionalContent<ModifiedContent<MirrorIntervalsPlatterView, _PaddingLayout>, ModifiedContent<MirrorIntervalsSecondPlatterView, _PaddingLayout>>>, _ConditionalContent<_ConditionalContent<ModifiedContent<MirrorRaceMetricPlatterView, _PaddingLayout>, ModifiedContent<MirrorMultiSportMetricsPlatter, _PaddingLayout>>, Text>>(v302, &_s7SwiftUI19_ConditionalContentVyACyAA08ModifiedD0Vy07WorkoutB028MirrorSpeedometerPlatterViewVAA14_PaddingLayoutVGAEyAF0g17PowerZonesMetricsI0VAJGGACyAEyAF0g9IntervalsiJ0VAJGAEyAF0gp6SecondiJ0VAJGGGMd);
    v95 = &_s7SwiftUI19_ConditionalContentVyACyACyAA08ModifiedD0Vy07WorkoutB028MirrorSpeedometerPlatterViewVAA14_PaddingLayoutVGAEyAF0g17PowerZonesMetricsI0VAJGGACyAEyAF0g9IntervalsiJ0VAJGAEyAF0gp6SecondiJ0VAJGGGACyACyAEyAF0g10RaceMetriciJ0VAJGAEyAF0g10MultiSportoI0VAJGGAA4TextVGGMd;
    outlined init with copy of _ConditionalContent<_ConditionalContent<_ConditionalContent<ModifiedContent<MirrorSpeedometerPlatterView, _PaddingLayout>, ModifiedContent<MirrorPowerZonesMetricsPlatter, _PaddingLayout>>, _ConditionalContent<ModifiedContent<MirrorIntervalsPlatterView, _PaddingLayout>, ModifiedContent<MirrorIntervalsSecondPlatterView, _PaddingLayout>>>, _ConditionalContent<_ConditionalContent<ModifiedContent<MirrorRaceMetricPlatterView, _PaddingLayout>, ModifiedContent<MirrorMultiSportMetricsPlatter, _PaddingLayout>>, Text>>(v94, v462, &_s7SwiftUI19_ConditionalContentVyACyACyAA08ModifiedD0Vy07WorkoutB028MirrorSpeedometerPlatterViewVAA14_PaddingLayoutVGAEyAF0g17PowerZonesMetricsI0VAJGGACyAEyAF0g9IntervalsiJ0VAJGAEyAF0gp6SecondiJ0VAJGGGACyACyAEyAF0g10RaceMetriciJ0VAJGAEyAF0g10MultiSportoI0VAJGGAA4TextVGGMd);
    goto LABEL_54;
  }

  if (v61 == *MEMORY[0x277D7E1F0])
  {
    MetricPlatter.type.getter();
    v303 = v458;
    v304 = MetricsPublisher.elevationChartUnit.getter();
    v305 = v405;
    static WorkoutChartProperties.elevation(unit:)();

    v306 = objc_opt_self();
    v307 = [v306 elevationColors];
    v308 = [v307 valueDisplayColor];

    v309 = [v306 elevationColors];
    v310 = [v309 nonGradientTextColor];

    if (v310)
    {
      v311 = [objc_allocWithZone(MEMORY[0x277D75348]) initWithRed:0.250980392 green:0.250980392 blue:0.250980392 alpha:1.0];
      v312 = [objc_allocWithZone(MEMORY[0x277D75348]) initWithRed:0.682352941 green:0.705882353 blue:0.749019608 alpha:1.0];
      type metadata accessor for MetricsPublisher();
      lazy protocol witness table accessor for type MirrorSpeedometerPlatterView and conformance MirrorSpeedometerPlatterView(&lazy protocol witness table cache variable for type MetricsPublisher and conformance MetricsPublisher, MEMORY[0x277D7E090]);
      v313 = v303;
      v314 = ObservedObject.init(wrappedValue:)();
      v315 = v409;
      *v409 = v314;
      *(v315 + 8) = v316;
      v317 = v459;
      *(v315 + 16) = v459;
      v318 = v420;
      (*(v434 + 32))(v315 + *(v420 + 24), v57, v433);
      *(v315 + v318[7]) = &outlined read-only object #0 of static MetricPlatterViewBuilder_iOS.view(for:metricsPublisher:formattingManager:activityType:activityMoveMode:);
      (*(v406 + 32))(v315 + v318[8], v305, v408);
      v319 = (v315 + v318[9]);
      *v319 = v308;
      v319[1] = v310;
      v319[2] = v311;
      v319[3] = v312;
      v319[5] = 0;
      v319[6] = 0;
      v319[4] = 0;
      v320 = v318[10];
      v321 = v457;
      *(v315 + v320) = v457;
      v322 = v317;
      v323 = v321;
      v324 = static Edge.Set.top.getter();
      if (one-time initialization token for topPaddingGraphicViews != -1)
      {
        swift_once();
      }

      EdgeInsets.init(_all:)();
      v326 = v325;
      v328 = v327;
      v330 = v329;
      v332 = v331;
      v333 = v407;
      outlined init with take of MirrorSpeedometerPlatterView(v315, v407, type metadata accessor for MirrorGraphicsMetricsView);
      v334 = v333 + *(v435 + 36);
      *v334 = v324;
      *(v334 + 8) = v326;
      *(v334 + 16) = v328;
      *(v334 + 24) = v330;
      *(v334 + 32) = v332;
      *(v334 + 40) = 0;
      v335 = v410;
      outlined init with take of ModifiedContent<MirrorSpeedometerPlatterView, _PaddingLayout>(v333, v410, &_s7SwiftUI15ModifiedContentVy07WorkoutB025MirrorGraphicsMetricsViewVAA14_PaddingLayoutVGMd);
      outlined init with copy of _ConditionalContent<_ConditionalContent<_ConditionalContent<ModifiedContent<MirrorSpeedometerPlatterView, _PaddingLayout>, ModifiedContent<MirrorPowerZonesMetricsPlatter, _PaddingLayout>>, _ConditionalContent<ModifiedContent<MirrorIntervalsPlatterView, _PaddingLayout>, ModifiedContent<MirrorIntervalsSecondPlatterView, _PaddingLayout>>>, _ConditionalContent<_ConditionalContent<ModifiedContent<MirrorRaceMetricPlatterView, _PaddingLayout>, ModifiedContent<MirrorMultiSportMetricsPlatter, _PaddingLayout>>, Text>>(v335, v423, &_s7SwiftUI15ModifiedContentVy07WorkoutB025MirrorGraphicsMetricsViewVAA14_PaddingLayoutVGMd);
      swift_storeEnumTagMultiPayload();
      __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVy07WorkoutB024MirrorStackedMetricsViewVAA14_PaddingLayoutVGMd);
      lazy protocol witness table accessor for type ModifiedContent<MirrorStackedMetricsView, _PaddingLayout> and conformance <> ModifiedContent<A, B>();
      lazy protocol witness table accessor for type ModifiedContent<MirrorGraphicsMetricsView, _PaddingLayout> and conformance <> ModifiedContent<A, B>();
      v336 = v424;
      _ConditionalContent<>.init(storage:)();
      outlined init with copy of _ConditionalContent<_ConditionalContent<_ConditionalContent<ModifiedContent<MirrorSpeedometerPlatterView, _PaddingLayout>, ModifiedContent<MirrorPowerZonesMetricsPlatter, _PaddingLayout>>, _ConditionalContent<ModifiedContent<MirrorIntervalsPlatterView, _PaddingLayout>, ModifiedContent<MirrorIntervalsSecondPlatterView, _PaddingLayout>>>, _ConditionalContent<_ConditionalContent<ModifiedContent<MirrorRaceMetricPlatterView, _PaddingLayout>, ModifiedContent<MirrorMultiSportMetricsPlatter, _PaddingLayout>>, Text>>(v336, v448, &_s7SwiftUI19_ConditionalContentVyAA08ModifiedD0Vy07WorkoutB024MirrorStackedMetricsViewVAA14_PaddingLayoutVGAEyAF0g8GraphicsiJ0VAJGGMd);
      swift_storeEnumTagMultiPayload();
      __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI19_ConditionalContentVyAA08ModifiedD0Vy07WorkoutB024MirrorStackedMetricsViewVAA14_PaddingLayoutVGAKGMd);
      lazy protocol witness table accessor for type _ConditionalContent<ModifiedContent<MirrorStackedMetricsView, _PaddingLayout>, ModifiedContent<MirrorStackedMetricsView, _PaddingLayout>> and conformance <> _ConditionalContent<A, B>();
      lazy protocol witness table accessor for type _ConditionalContent<ModifiedContent<MirrorStackedMetricsView, _PaddingLayout>, ModifiedContent<MirrorGraphicsMetricsView, _PaddingLayout>> and conformance <> _ConditionalContent<A, B>();
      v337 = v451;
      _ConditionalContent<>.init(storage:)();
      outlined destroy of _ConditionalContent<_ConditionalContent<_ConditionalContent<ModifiedContent<MirrorSpeedometerPlatterView, _PaddingLayout>, ModifiedContent<MirrorPowerZonesMetricsPlatter, _PaddingLayout>>, _ConditionalContent<ModifiedContent<MirrorIntervalsPlatterView, _PaddingLayout>, ModifiedContent<MirrorIntervalsSecondPlatterView, _PaddingLayout>>>, _ConditionalContent<_ConditionalContent<ModifiedContent<MirrorRaceMetricPlatterView, _PaddingLayout>, ModifiedContent<MirrorMultiSportMetricsPlatter, _PaddingLayout>>, Text>>(v336, &_s7SwiftUI19_ConditionalContentVyAA08ModifiedD0Vy07WorkoutB024MirrorStackedMetricsViewVAA14_PaddingLayoutVGAEyAF0g8GraphicsiJ0VAJGGMd);
      outlined init with copy of _ConditionalContent<_ConditionalContent<_ConditionalContent<ModifiedContent<MirrorSpeedometerPlatterView, _PaddingLayout>, ModifiedContent<MirrorPowerZonesMetricsPlatter, _PaddingLayout>>, _ConditionalContent<ModifiedContent<MirrorIntervalsPlatterView, _PaddingLayout>, ModifiedContent<MirrorIntervalsSecondPlatterView, _PaddingLayout>>>, _ConditionalContent<_ConditionalContent<ModifiedContent<MirrorRaceMetricPlatterView, _PaddingLayout>, ModifiedContent<MirrorMultiSportMetricsPlatter, _PaddingLayout>>, Text>>(v337, v454, &_s7SwiftUI19_ConditionalContentVyACyAA08ModifiedD0Vy07WorkoutB024MirrorStackedMetricsViewVAA14_PaddingLayoutVGAKGACyAkEyAF0g8GraphicsiJ0VAJGGGMd);
      swift_storeEnumTagMultiPayload();
      lazy protocol witness table accessor for type _ConditionalContent<_ConditionalContent<ModifiedContent<MirrorStackedMetricsView, _PaddingLayout>, ModifiedContent<MirrorStackedMetricsView, _PaddingLayout>>, _ConditionalContent<ModifiedContent<MirrorStackedMetricsView, _PaddingLayout>, ModifiedContent<MirrorGraphicsMetricsView, _PaddingLayout>>> and conformance <> _ConditionalContent<A, B>();
      lazy protocol witness table accessor for type _ConditionalContent<_ConditionalContent<ModifiedContent<MirrorGraphicsMetricsView, _PaddingLayout>, ModifiedContent<MirrorActivityRingsPlatterView, _PaddingLayout>>, _ConditionalContent<ModifiedContent<ModifiedContent<MirrorPacerMetricPlatterView, _PaddingLayout>, _PaddingLayout>, ModifiedContent<MirrorHeartRateZonesMetricsPlatter, _PaddingLayout>>> and conformance <> _ConditionalContent<A, B>();
      v338 = v456;
      _ConditionalContent<>.init(storage:)();
      outlined destroy of _ConditionalContent<_ConditionalContent<_ConditionalContent<ModifiedContent<MirrorSpeedometerPlatterView, _PaddingLayout>, ModifiedContent<MirrorPowerZonesMetricsPlatter, _PaddingLayout>>, _ConditionalContent<ModifiedContent<MirrorIntervalsPlatterView, _PaddingLayout>, ModifiedContent<MirrorIntervalsSecondPlatterView, _PaddingLayout>>>, _ConditionalContent<_ConditionalContent<ModifiedContent<MirrorRaceMetricPlatterView, _PaddingLayout>, ModifiedContent<MirrorMultiSportMetricsPlatter, _PaddingLayout>>, Text>>(v337, &_s7SwiftUI19_ConditionalContentVyACyAA08ModifiedD0Vy07WorkoutB024MirrorStackedMetricsViewVAA14_PaddingLayoutVGAKGACyAkEyAF0g8GraphicsiJ0VAJGGGMd);
      outlined init with copy of _ConditionalContent<_ConditionalContent<_ConditionalContent<ModifiedContent<MirrorSpeedometerPlatterView, _PaddingLayout>, ModifiedContent<MirrorPowerZonesMetricsPlatter, _PaddingLayout>>, _ConditionalContent<ModifiedContent<MirrorIntervalsPlatterView, _PaddingLayout>, ModifiedContent<MirrorIntervalsSecondPlatterView, _PaddingLayout>>>, _ConditionalContent<_ConditionalContent<ModifiedContent<MirrorRaceMetricPlatterView, _PaddingLayout>, ModifiedContent<MirrorMultiSportMetricsPlatter, _PaddingLayout>>, Text>>(v338, v462, &_s7SwiftUI19_ConditionalContentVyACyACyAA08ModifiedD0Vy07WorkoutB024MirrorStackedMetricsViewVAA14_PaddingLayoutVGAKGACyAkEyAF0g8GraphicsiJ0VAJGGGACyACyAoEyAF0g20ActivityRingsPlatterJ0VAJGGACyAEyAEyAF0g11PacerMetricpJ0VAJGAJGAEyAF0g14HeartRateZonesiP0VAJGGGGMd);
      swift_storeEnumTagMultiPayload();
      lazy protocol witness table accessor for type _ConditionalContent<_ConditionalContent<_ConditionalContent<ModifiedContent<MirrorStackedMetricsView, _PaddingLayout>, ModifiedContent<MirrorStackedMetricsView, _PaddingLayout>>, _ConditionalContent<ModifiedContent<MirrorStackedMetricsView, _PaddingLayout>, ModifiedContent<MirrorGraphicsMetricsView, _PaddingLayout>>>, _ConditionalContent<_ConditionalContent<ModifiedContent<MirrorGraphicsMetricsView, _PaddingLayout>, ModifiedContent<MirrorActivityRingsPlatterView, _PaddingLayout>>, _ConditionalContent<ModifiedContent<ModifiedContent<MirrorPacerMetricPlatterView, _PaddingLayout>, _PaddingLayout>, ModifiedContent<MirrorHeartRateZonesMetricsPlatter, _PaddingLayout>>>> and conformance <> _ConditionalContent<A, B>();
      lazy protocol witness table accessor for type _ConditionalContent<_ConditionalContent<_ConditionalContent<ModifiedContent<MirrorSpeedometerPlatterView, _PaddingLayout>, ModifiedContent<MirrorPowerZonesMetricsPlatter, _PaddingLayout>>, _ConditionalContent<ModifiedContent<MirrorIntervalsPlatterView, _PaddingLayout>, ModifiedContent<MirrorIntervalsSecondPlatterView, _PaddingLayout>>>, _ConditionalContent<_ConditionalContent<ModifiedContent<MirrorRaceMetricPlatterView, _PaddingLayout>, ModifiedContent<MirrorMultiSportMetricsPlatter, _PaddingLayout>>, Text>> and conformance <> _ConditionalContent<A, B>();
      _ConditionalContent<>.init(storage:)();
      outlined destroy of _ConditionalContent<_ConditionalContent<_ConditionalContent<ModifiedContent<MirrorSpeedometerPlatterView, _PaddingLayout>, ModifiedContent<MirrorPowerZonesMetricsPlatter, _PaddingLayout>>, _ConditionalContent<ModifiedContent<MirrorIntervalsPlatterView, _PaddingLayout>, ModifiedContent<MirrorIntervalsSecondPlatterView, _PaddingLayout>>>, _ConditionalContent<_ConditionalContent<ModifiedContent<MirrorRaceMetricPlatterView, _PaddingLayout>, ModifiedContent<MirrorMultiSportMetricsPlatter, _PaddingLayout>>, Text>>(v338, &_s7SwiftUI19_ConditionalContentVyACyACyAA08ModifiedD0Vy07WorkoutB024MirrorStackedMetricsViewVAA14_PaddingLayoutVGAKGACyAkEyAF0g8GraphicsiJ0VAJGGGACyACyAoEyAF0g20ActivityRingsPlatterJ0VAJGGACyAEyAEyAF0g11PacerMetricpJ0VAJGAJGAEyAF0g14HeartRateZonesiP0VAJGGGGMd);
      v110 = v335;
      v111 = &_s7SwiftUI15ModifiedContentVy07WorkoutB025MirrorGraphicsMetricsViewVAA14_PaddingLayoutVGMd;
      goto LABEL_21;
    }

    __break(1u);
  }

  else
  {
    if (v61 == *MEMORY[0x277D7E188])
    {
      MetricPlatter.type.getter();
      v340 = v411;
      v339 = v412;
      *(v412 + *(v411 + 36)) = 0x402BC71C72268E09;
      *(v339 + *(v340 + 40)) = 0x402AD288CE703AFBLL;
      v341 = objc_opt_self();
      v342 = [v341 currentDevice];
      v343 = specialized UIDevice.screenType.getter();

      v344 = dbl_20CB6ECA8[v343];
      v345 = objc_opt_self();
      v346 = [v345 mainScreen];
      [v346 scale];
      v348 = v347;

      v349 = [v345 mainScreen];
      [v349 nativeScale];
      v351 = v350;

      if (v348 != v351)
      {
        v352 = [v345 mainScreen];
        [v352 scale];
        v354 = v353;

        v355 = [v345 mainScreen];
        [v355 nativeScale];
        v357 = v356;

        v344 = v344 * (v354 / v357 * 0.95);
      }

      v359 = v411;
      v358 = v412;
      *(v412 + *(v411 + 44)) = v344;
      type metadata accessor for MetricsPublisher();
      lazy protocol witness table accessor for type MirrorSpeedometerPlatterView and conformance MirrorSpeedometerPlatterView(&lazy protocol witness table cache variable for type MetricsPublisher and conformance MetricsPublisher, MEMORY[0x277D7E090]);
      v458;
      *v358 = ObservedObject.init(wrappedValue:)();
      v358[1] = v360;
      MetricsPublisher.workoutStatePublisher.getter();
      type metadata accessor for WorkoutStatePublisher();
      lazy protocol witness table accessor for type MirrorSpeedometerPlatterView and conformance MirrorSpeedometerPlatterView(&lazy protocol witness table cache variable for type WorkoutStatePublisher and conformance WorkoutStatePublisher, MEMORY[0x277D7DA88]);
      v358[2] = ObservedObject.init(wrappedValue:)();
      v358[3] = v361;
      v362 = v459;
      v358[4] = v459;
      (*(v434 + 32))(v358 + *(v359 + 28), v404, v433);
      v363 = v457;
      *(v358 + *(v359 + 32)) = v457;
      v364 = v362;
      v365 = v363;
      v366 = static Edge.Set.top.getter();
      if (one-time initialization token for topPaddingForRingsView != -1)
      {
        swift_once();
      }

      EdgeInsets.init(_all:)();
      v368 = v367;
      v370 = v369;
      v372 = v371;
      v374 = v373;
      v375 = v402;
      outlined init with take of MirrorSpeedometerPlatterView(v412, v402, type metadata accessor for MirrorSpeedometerPlatterView);
      v376 = v375 + *(v413 + 36);
      *v376 = v366;
      *(v376 + 8) = v368;
      *(v376 + 16) = v370;
      *(v376 + 24) = v372;
      *(v376 + 32) = v374;
      *(v376 + 40) = 0;
      v377 = v403;
      outlined init with take of ModifiedContent<MirrorSpeedometerPlatterView, _PaddingLayout>(v375, v403, &_s7SwiftUI15ModifiedContentVy07WorkoutB028MirrorSpeedometerPlatterViewVAA14_PaddingLayoutVGMd);
      outlined init with copy of _ConditionalContent<_ConditionalContent<_ConditionalContent<ModifiedContent<MirrorSpeedometerPlatterView, _PaddingLayout>, ModifiedContent<MirrorPowerZonesMetricsPlatter, _PaddingLayout>>, _ConditionalContent<ModifiedContent<MirrorIntervalsPlatterView, _PaddingLayout>, ModifiedContent<MirrorIntervalsSecondPlatterView, _PaddingLayout>>>, _ConditionalContent<_ConditionalContent<ModifiedContent<MirrorRaceMetricPlatterView, _PaddingLayout>, ModifiedContent<MirrorMultiSportMetricsPlatter, _PaddingLayout>>, Text>>(v377, v415, &_s7SwiftUI15ModifiedContentVy07WorkoutB028MirrorSpeedometerPlatterViewVAA14_PaddingLayoutVGMd);
      swift_storeEnumTagMultiPayload();
      __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVy07WorkoutB030MirrorPowerZonesMetricsPlatterVAA14_PaddingLayoutVGMd);
      lazy protocol witness table accessor for type ModifiedContent<MirrorSpeedometerPlatterView, _PaddingLayout> and conformance <> ModifiedContent<A, B>();
      lazy protocol witness table accessor for type ModifiedContent<MirrorPowerZonesMetricsPlatter, _PaddingLayout> and conformance <> ModifiedContent<A, B>();
      v378 = v416;
      _ConditionalContent<>.init(storage:)();
      outlined init with copy of _ConditionalContent<_ConditionalContent<_ConditionalContent<ModifiedContent<MirrorSpeedometerPlatterView, _PaddingLayout>, ModifiedContent<MirrorPowerZonesMetricsPlatter, _PaddingLayout>>, _ConditionalContent<ModifiedContent<MirrorIntervalsPlatterView, _PaddingLayout>, ModifiedContent<MirrorIntervalsSecondPlatterView, _PaddingLayout>>>, _ConditionalContent<_ConditionalContent<ModifiedContent<MirrorRaceMetricPlatterView, _PaddingLayout>, ModifiedContent<MirrorMultiSportMetricsPlatter, _PaddingLayout>>, Text>>(v378, v442, &_s7SwiftUI19_ConditionalContentVyAA08ModifiedD0Vy07WorkoutB028MirrorSpeedometerPlatterViewVAA14_PaddingLayoutVGAEyAF0g17PowerZonesMetricsI0VAJGGMd);
      swift_storeEnumTagMultiPayload();
      __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI19_ConditionalContentVyAA08ModifiedD0Vy07WorkoutB026MirrorIntervalsPlatterViewVAA14_PaddingLayoutVGAEyAF0gh6SecondiJ0VAJGGMd);
      lazy protocol witness table accessor for type _ConditionalContent<ModifiedContent<MirrorSpeedometerPlatterView, _PaddingLayout>, ModifiedContent<MirrorPowerZonesMetricsPlatter, _PaddingLayout>> and conformance <> _ConditionalContent<A, B>();
      lazy protocol witness table accessor for type _ConditionalContent<ModifiedContent<MirrorIntervalsPlatterView, _PaddingLayout>, ModifiedContent<MirrorIntervalsSecondPlatterView, _PaddingLayout>> and conformance <> _ConditionalContent<A, B>();
      v379 = v443;
      _ConditionalContent<>.init(storage:)();
      outlined destroy of _ConditionalContent<_ConditionalContent<_ConditionalContent<ModifiedContent<MirrorSpeedometerPlatterView, _PaddingLayout>, ModifiedContent<MirrorPowerZonesMetricsPlatter, _PaddingLayout>>, _ConditionalContent<ModifiedContent<MirrorIntervalsPlatterView, _PaddingLayout>, ModifiedContent<MirrorIntervalsSecondPlatterView, _PaddingLayout>>>, _ConditionalContent<_ConditionalContent<ModifiedContent<MirrorRaceMetricPlatterView, _PaddingLayout>, ModifiedContent<MirrorMultiSportMetricsPlatter, _PaddingLayout>>, Text>>(v378, &_s7SwiftUI19_ConditionalContentVyAA08ModifiedD0Vy07WorkoutB028MirrorSpeedometerPlatterViewVAA14_PaddingLayoutVGAEyAF0g17PowerZonesMetricsI0VAJGGMd);
      outlined init with copy of _ConditionalContent<_ConditionalContent<_ConditionalContent<ModifiedContent<MirrorSpeedometerPlatterView, _PaddingLayout>, ModifiedContent<MirrorPowerZonesMetricsPlatter, _PaddingLayout>>, _ConditionalContent<ModifiedContent<MirrorIntervalsPlatterView, _PaddingLayout>, ModifiedContent<MirrorIntervalsSecondPlatterView, _PaddingLayout>>>, _ConditionalContent<_ConditionalContent<ModifiedContent<MirrorRaceMetricPlatterView, _PaddingLayout>, ModifiedContent<MirrorMultiSportMetricsPlatter, _PaddingLayout>>, Text>>(v379, v446, &_s7SwiftUI19_ConditionalContentVyACyAA08ModifiedD0Vy07WorkoutB028MirrorSpeedometerPlatterViewVAA14_PaddingLayoutVGAEyAF0g17PowerZonesMetricsI0VAJGGACyAEyAF0g9IntervalsiJ0VAJGAEyAF0gp6SecondiJ0VAJGGGMd);
      swift_storeEnumTagMultiPayload();
      __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI19_ConditionalContentVyACyAA08ModifiedD0Vy07WorkoutB027MirrorRaceMetricPlatterViewVAA14_PaddingLayoutVGAEyAF0g17MultiSportMetricsJ0VAJGGAA4TextVGMd);
      lazy protocol witness table accessor for type _ConditionalContent<_ConditionalContent<ModifiedContent<MirrorSpeedometerPlatterView, _PaddingLayout>, ModifiedContent<MirrorPowerZonesMetricsPlatter, _PaddingLayout>>, _ConditionalContent<ModifiedContent<MirrorIntervalsPlatterView, _PaddingLayout>, ModifiedContent<MirrorIntervalsSecondPlatterView, _PaddingLayout>>> and conformance <> _ConditionalContent<A, B>();
      lazy protocol witness table accessor for type _ConditionalContent<_ConditionalContent<ModifiedContent<MirrorRaceMetricPlatterView, _PaddingLayout>, ModifiedContent<MirrorMultiSportMetricsPlatter, _PaddingLayout>>, Text> and conformance <> _ConditionalContent<A, B>();
      v380 = v447;
      _ConditionalContent<>.init(storage:)();
      outlined destroy of _ConditionalContent<_ConditionalContent<_ConditionalContent<ModifiedContent<MirrorSpeedometerPlatterView, _PaddingLayout>, ModifiedContent<MirrorPowerZonesMetricsPlatter, _PaddingLayout>>, _ConditionalContent<ModifiedContent<MirrorIntervalsPlatterView, _PaddingLayout>, ModifiedContent<MirrorIntervalsSecondPlatterView, _PaddingLayout>>>, _ConditionalContent<_ConditionalContent<ModifiedContent<MirrorRaceMetricPlatterView, _PaddingLayout>, ModifiedContent<MirrorMultiSportMetricsPlatter, _PaddingLayout>>, Text>>(v379, &_s7SwiftUI19_ConditionalContentVyACyAA08ModifiedD0Vy07WorkoutB028MirrorSpeedometerPlatterViewVAA14_PaddingLayoutVGAEyAF0g17PowerZonesMetricsI0VAJGGACyAEyAF0g9IntervalsiJ0VAJGAEyAF0gp6SecondiJ0VAJGGGMd);
      outlined init with copy of _ConditionalContent<_ConditionalContent<_ConditionalContent<ModifiedContent<MirrorSpeedometerPlatterView, _PaddingLayout>, ModifiedContent<MirrorPowerZonesMetricsPlatter, _PaddingLayout>>, _ConditionalContent<ModifiedContent<MirrorIntervalsPlatterView, _PaddingLayout>, ModifiedContent<MirrorIntervalsSecondPlatterView, _PaddingLayout>>>, _ConditionalContent<_ConditionalContent<ModifiedContent<MirrorRaceMetricPlatterView, _PaddingLayout>, ModifiedContent<MirrorMultiSportMetricsPlatter, _PaddingLayout>>, Text>>(v380, v462, &_s7SwiftUI19_ConditionalContentVyACyACyAA08ModifiedD0Vy07WorkoutB028MirrorSpeedometerPlatterViewVAA14_PaddingLayoutVGAEyAF0g17PowerZonesMetricsI0VAJGGACyAEyAF0g9IntervalsiJ0VAJGAEyAF0gp6SecondiJ0VAJGGGACyACyAEyAF0g10RaceMetriciJ0VAJGAEyAF0g10MultiSportoI0VAJGGAA4TextVGGMd);
      swift_storeEnumTagMultiPayload();
      lazy protocol witness table accessor for type _ConditionalContent<_ConditionalContent<_ConditionalContent<ModifiedContent<MirrorStackedMetricsView, _PaddingLayout>, ModifiedContent<MirrorStackedMetricsView, _PaddingLayout>>, _ConditionalContent<ModifiedContent<MirrorStackedMetricsView, _PaddingLayout>, ModifiedContent<MirrorGraphicsMetricsView, _PaddingLayout>>>, _ConditionalContent<_ConditionalContent<ModifiedContent<MirrorGraphicsMetricsView, _PaddingLayout>, ModifiedContent<MirrorActivityRingsPlatterView, _PaddingLayout>>, _ConditionalContent<ModifiedContent<ModifiedContent<MirrorPacerMetricPlatterView, _PaddingLayout>, _PaddingLayout>, ModifiedContent<MirrorHeartRateZonesMetricsPlatter, _PaddingLayout>>>> and conformance <> _ConditionalContent<A, B>();
      lazy protocol witness table accessor for type _ConditionalContent<_ConditionalContent<_ConditionalContent<ModifiedContent<MirrorSpeedometerPlatterView, _PaddingLayout>, ModifiedContent<MirrorPowerZonesMetricsPlatter, _PaddingLayout>>, _ConditionalContent<ModifiedContent<MirrorIntervalsPlatterView, _PaddingLayout>, ModifiedContent<MirrorIntervalsSecondPlatterView, _PaddingLayout>>>, _ConditionalContent<_ConditionalContent<ModifiedContent<MirrorRaceMetricPlatterView, _PaddingLayout>, ModifiedContent<MirrorMultiSportMetricsPlatter, _PaddingLayout>>, Text>> and conformance <> _ConditionalContent<A, B>();
      _ConditionalContent<>.init(storage:)();
      outlined destroy of _ConditionalContent<_ConditionalContent<_ConditionalContent<ModifiedContent<MirrorSpeedometerPlatterView, _PaddingLayout>, ModifiedContent<MirrorPowerZonesMetricsPlatter, _PaddingLayout>>, _ConditionalContent<ModifiedContent<MirrorIntervalsPlatterView, _PaddingLayout>, ModifiedContent<MirrorIntervalsSecondPlatterView, _PaddingLayout>>>, _ConditionalContent<_ConditionalContent<ModifiedContent<MirrorRaceMetricPlatterView, _PaddingLayout>, ModifiedContent<MirrorMultiSportMetricsPlatter, _PaddingLayout>>, Text>>(v380, &_s7SwiftUI19_ConditionalContentVyACyACyAA08ModifiedD0Vy07WorkoutB028MirrorSpeedometerPlatterViewVAA14_PaddingLayoutVGAEyAF0g17PowerZonesMetricsI0VAJGGACyAEyAF0g9IntervalsiJ0VAJGAEyAF0gp6SecondiJ0VAJGGGACyACyAEyAF0g10RaceMetriciJ0VAJGAEyAF0g10MultiSportoI0VAJGGAA4TextVGGMd);
      v110 = v377;
      v111 = &_s7SwiftUI15ModifiedContentVy07WorkoutB028MirrorSpeedometerPlatterViewVAA14_PaddingLayoutVGMd;
      goto LABEL_21;
    }

    LocalizedStringKey.StringInterpolation.init(literalCapacity:interpolationCount:)();
    v381._countAndFlagsBits = 0x2072657474616C50;
    v381._object = 0xE800000000000000;
    LocalizedStringKey.StringInterpolation.appendLiteral(_:)(v381);
    v382 = MetricPlatter.type.getter();
    v383 = MEMORY[0x20F305920](v382);
    v385 = v384;
    v386 = *(v434 + 8);
    v434 += 8;
    v459 = v386;
    (v386)(v46, v433);
    v387._countAndFlagsBits = v383;
    v387._object = v385;
    LocalizedStringKey.StringInterpolation.appendInterpolation(_:)(v387);

    v388._object = 0x800000020CB985D0;
    v388._countAndFlagsBits = 0xD000000000000010;
    LocalizedStringKey.StringInterpolation.appendLiteral(_:)(v388);
    LocalizedStringKey.init(stringInterpolation:)();
    v389 = Text.init(_:tableName:bundle:comment:)();
    v391 = v390;
    *&v525[0] = v389;
    *(&v525[0] + 1) = v390;
    v393 = v392 & 1;
    LOBYTE(v525[1]) = v392 & 1;
    *(&v525[1] + 1) = v394;
    *&v458 = v394;
    _s7SwiftUI19_ConditionalContentV7StorageOyACyAA08ModifiedD0Vy07WorkoutB027MirrorRaceMetricPlatterViewVAA14_PaddingLayoutVGAGyAH0h17MultiSportMetricsK0VALGGAA4TextV_GWOi0_(v525);
    v514[1] = v528[1];
    v515 = v529;
    v516[0] = v530[0];
    *(v516 + 11) = *(v530 + 11);
    v511 = v525[2];
    v512 = v526;
    v513 = v527;
    v514[0] = v528[0];
    v509 = v525[0];
    v510 = v525[1];
    outlined copy of Text.Storage(v389, v391, v393);

    __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI19_ConditionalContentVyAA08ModifiedD0Vy07WorkoutB027MirrorRaceMetricPlatterViewVAA14_PaddingLayoutVGAEyAF0g17MultiSportMetricsJ0VAJGGMd);
    lazy protocol witness table accessor for type _ConditionalContent<ModifiedContent<MirrorRaceMetricPlatterView, _PaddingLayout>, ModifiedContent<MirrorMultiSportMetricsPlatter, _PaddingLayout>> and conformance <> _ConditionalContent<A, B>();
    _ConditionalContent<>.init(storage:)();
    v395 = v523;
    v396 = v446;
    v446[6] = v522[1];
    v396[7] = v395;
    v396[8] = v524[0];
    *(v396 + 139) = *(v524 + 11);
    v397 = v520;
    v396[2] = v519;
    v396[3] = v397;
    v398 = v522[0];
    v396[4] = v521;
    v396[5] = v398;
    v399 = v518;
    *v396 = v517;
    v396[1] = v399;
    swift_storeEnumTagMultiPayload();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI19_ConditionalContentVyACyAA08ModifiedD0Vy07WorkoutB027MirrorRaceMetricPlatterViewVAA14_PaddingLayoutVGAEyAF0g17MultiSportMetricsJ0VAJGGAA4TextVGMd);
    lazy protocol witness table accessor for type _ConditionalContent<_ConditionalContent<ModifiedContent<MirrorSpeedometerPlatterView, _PaddingLayout>, ModifiedContent<MirrorPowerZonesMetricsPlatter, _PaddingLayout>>, _ConditionalContent<ModifiedContent<MirrorIntervalsPlatterView, _PaddingLayout>, ModifiedContent<MirrorIntervalsSecondPlatterView, _PaddingLayout>>> and conformance <> _ConditionalContent<A, B>();
    lazy protocol witness table accessor for type _ConditionalContent<_ConditionalContent<ModifiedContent<MirrorRaceMetricPlatterView, _PaddingLayout>, ModifiedContent<MirrorMultiSportMetricsPlatter, _PaddingLayout>>, Text> and conformance <> _ConditionalContent<A, B>();
    v400 = v447;
    _ConditionalContent<>.init(storage:)();
    outlined init with copy of _ConditionalContent<_ConditionalContent<_ConditionalContent<ModifiedContent<MirrorSpeedometerPlatterView, _PaddingLayout>, ModifiedContent<MirrorPowerZonesMetricsPlatter, _PaddingLayout>>, _ConditionalContent<ModifiedContent<MirrorIntervalsPlatterView, _PaddingLayout>, ModifiedContent<MirrorIntervalsSecondPlatterView, _PaddingLayout>>>, _ConditionalContent<_ConditionalContent<ModifiedContent<MirrorRaceMetricPlatterView, _PaddingLayout>, ModifiedContent<MirrorMultiSportMetricsPlatter, _PaddingLayout>>, Text>>(v400, v462, &_s7SwiftUI19_ConditionalContentVyACyACyAA08ModifiedD0Vy07WorkoutB028MirrorSpeedometerPlatterViewVAA14_PaddingLayoutVGAEyAF0g17PowerZonesMetricsI0VAJGGACyAEyAF0g9IntervalsiJ0VAJGAEyAF0gp6SecondiJ0VAJGGGACyACyAEyAF0g10RaceMetriciJ0VAJGAEyAF0g10MultiSportoI0VAJGGAA4TextVGGMd);
    swift_storeEnumTagMultiPayload();
    lazy protocol witness table accessor for type _ConditionalContent<_ConditionalContent<_ConditionalContent<ModifiedContent<MirrorStackedMetricsView, _PaddingLayout>, ModifiedContent<MirrorStackedMetricsView, _PaddingLayout>>, _ConditionalContent<ModifiedContent<MirrorStackedMetricsView, _PaddingLayout>, ModifiedContent<MirrorGraphicsMetricsView, _PaddingLayout>>>, _ConditionalContent<_ConditionalContent<ModifiedContent<MirrorGraphicsMetricsView, _PaddingLayout>, ModifiedContent<MirrorActivityRingsPlatterView, _PaddingLayout>>, _ConditionalContent<ModifiedContent<ModifiedContent<MirrorPacerMetricPlatterView, _PaddingLayout>, _PaddingLayout>, ModifiedContent<MirrorHeartRateZonesMetricsPlatter, _PaddingLayout>>>> and conformance <> _ConditionalContent<A, B>();
    lazy protocol witness table accessor for type _ConditionalContent<_ConditionalContent<_ConditionalContent<ModifiedContent<MirrorSpeedometerPlatterView, _PaddingLayout>, ModifiedContent<MirrorPowerZonesMetricsPlatter, _PaddingLayout>>, _ConditionalContent<ModifiedContent<MirrorIntervalsPlatterView, _PaddingLayout>, ModifiedContent<MirrorIntervalsSecondPlatterView, _PaddingLayout>>>, _ConditionalContent<_ConditionalContent<ModifiedContent<MirrorRaceMetricPlatterView, _PaddingLayout>, ModifiedContent<MirrorMultiSportMetricsPlatter, _PaddingLayout>>, Text>> and conformance <> _ConditionalContent<A, B>();
    _ConditionalContent<>.init(storage:)();
    outlined consume of Text.Storage(v389, v391, v393);

    outlined destroy of _ConditionalContent<_ConditionalContent<_ConditionalContent<ModifiedContent<MirrorSpeedometerPlatterView, _PaddingLayout>, ModifiedContent<MirrorPowerZonesMetricsPlatter, _PaddingLayout>>, _ConditionalContent<ModifiedContent<MirrorIntervalsPlatterView, _PaddingLayout>, ModifiedContent<MirrorIntervalsSecondPlatterView, _PaddingLayout>>>, _ConditionalContent<_ConditionalContent<ModifiedContent<MirrorRaceMetricPlatterView, _PaddingLayout>, ModifiedContent<MirrorMultiSportMetricsPlatter, _PaddingLayout>>, Text>>(v400, &_s7SwiftUI19_ConditionalContentVyACyACyAA08ModifiedD0Vy07WorkoutB028MirrorSpeedometerPlatterViewVAA14_PaddingLayoutVGAEyAF0g17PowerZonesMetricsI0VAJGGACyAEyAF0g9IntervalsiJ0VAJGAEyAF0gp6SecondiJ0VAJGGGACyACyAEyAF0g10RaceMetriciJ0VAJGAEyAF0g10MultiSportoI0VAJGGAA4TextVGGMd);
    (v459)(v60, v433);
  }
}

void one-time initialization function for topPaddingForStackedMetricView()
{
  v0 = objc_opt_self();
  v1 = [v0 currentDevice];
  v2 = specialized UIDevice.screenType.getter();

  v3 = dbl_20CB6ED00[v2];
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

  static MetricPlatterViewBuilder_iOS.topPaddingForStackedMetricView = *&v3;
}

void one-time initialization function for topPaddingForRingsView()
{
  v0 = objc_opt_self();
  v1 = [v0 currentDevice];
  v2 = specialized UIDevice.screenType.getter();

  v3 = dbl_20CB6ED58[v2];
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

  static MetricPlatterViewBuilder_iOS.topPaddingForRingsView = *&v3;
}

void one-time initialization function for topPaddingGraphicViews()
{
  v0 = objc_opt_self();
  v1 = [v0 currentDevice];
  v2 = specialized UIDevice.screenType.getter();

  v3 = dbl_20CB6EDB0[v2];
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

  static MetricPlatterViewBuilder_iOS.topPaddingGraphicViews = *&v3;
}

void one-time initialization function for bottomPadding()
{
  v0 = objc_opt_self();

  v1 = objc_opt_self();
  v2 = [v1 mainScreen];
  [v2 scale];
  v58 = v3;

  v4 = [v1 mainScreen];
  [v4 nativeScale];
  v56 = v5;

  v6 = [v1 mainScreen];
  [v6 scale];
  v8 = v7;

  v9 = [v1 mainScreen];
  [v9 nativeScale];
  v11 = v10;

  v40 = v8 == v11;
  v12 = 65.0;
  if (v40)
  {
    v13 = 65.0;
  }

  else
  {
    v13 = 84.0;
  }

  v14 = [v1 mainScreen];
  [v14 scale];
  v16 = v15;

  v17 = [v1 mainScreen];
  [v17 nativeScale];
  v19 = v18;

  v20 = [v1 mainScreen];
  [v20 scale];
  v22 = v21;

  v23 = [v1 mainScreen];
  [v23 nativeScale];
  v25 = v24;

  if (v22 != v25)
  {
    v12 = 79.0;
  }

  v26 = [v1 mainScreen];
  [v26 scale];
  v28 = v27;

  v29 = [v1 mainScreen];
  [v29 nativeScale];
  v31 = v30;

  v32 = [v1 mainScreen];
  [v32 scale];
  v34 = v33;

  v35 = [v1 mainScreen];
  [v35 nativeScale];
  v37 = v36;

  v38 = [v0 currentDevice];
  v39 = specialized UIDevice.screenType.getter();

  if (v39 <= 4u)
  {
    if (v39 >= 3u)
    {
      v12 = v13;
    }

    else
    {
      v12 = 60.0;
    }
  }

  else
  {
    if (v39 > 7u)
    {
      if (v39 == 8)
      {
        v40 = v16 == v19;
        v41 = 78.0;
        v43 = 0x400000000000;
      }

      else
      {
        if (v39 == 9)
        {
          v40 = v28 == v31;
        }

        else
        {
          v40 = v34 == v37;
        }

        v41 = 84.0;
        v43 = 0xC00000000000;
      }

      *&v42 = v43 & 0xFFFFFFFFFFFFLL | 0x4052000000000000;
      goto LABEL_21;
    }

    if (v39 != 5 && v39 != 6)
    {
      v40 = v58 == v57;
      v41 = 79.0;
      v42 = 68.0;
LABEL_21:
      if (v40)
      {
        v12 = v42;
      }

      else
      {
        v12 = v41;
      }
    }
  }

  v44 = [v1 mainScreen];
  [v44 scale];
  v46 = v45;

  v47 = [v1 mainScreen];
  [v47 nativeScale];
  v49 = v48;

  if (v46 != v49)
  {
    v50 = [v1 mainScreen];
    [v50 scale];
    v52 = v51;

    v53 = [v1 mainScreen];
    [v53 nativeScale];
    v55 = v54;

    v12 = v12 * (v52 / v55 * 0.95);
  }

  static MetricPlatterViewBuilder_iOS.bottomPadding = *&v12;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<MirrorPowerZonesMetricsPlatter, _PaddingLayout> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<MirrorPowerZonesMetricsPlatter, _PaddingLayout> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<MirrorPowerZonesMetricsPlatter, _PaddingLayout> and conformance <> ModifiedContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVy07WorkoutB030MirrorPowerZonesMetricsPlatterVAA14_PaddingLayoutVGMd);
    lazy protocol witness table accessor for type MirrorPowerZonesMetricsPlatter and conformance MirrorPowerZonesMetricsPlatter();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<MirrorPowerZonesMetricsPlatter, _PaddingLayout> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<MirrorIntervalsPlatterView, _PaddingLayout> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<MirrorIntervalsPlatterView, _PaddingLayout> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<MirrorIntervalsPlatterView, _PaddingLayout> and conformance <> ModifiedContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVy07WorkoutB026MirrorIntervalsPlatterViewVAA14_PaddingLayoutVGMd);
    lazy protocol witness table accessor for type MirrorIntervalsPlatterView and conformance MirrorIntervalsPlatterView();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<MirrorIntervalsPlatterView, _PaddingLayout> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<MirrorIntervalsSecondPlatterView, _PaddingLayout> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<MirrorIntervalsSecondPlatterView, _PaddingLayout> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<MirrorIntervalsSecondPlatterView, _PaddingLayout> and conformance <> ModifiedContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVy07WorkoutB032MirrorIntervalsSecondPlatterViewVAA14_PaddingLayoutVGMd);
    lazy protocol witness table accessor for type MirrorIntervalsSecondPlatterView and conformance MirrorIntervalsSecondPlatterView();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<MirrorIntervalsSecondPlatterView, _PaddingLayout> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<MirrorStackedMetricsView, _PaddingLayout> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<MirrorStackedMetricsView, _PaddingLayout> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<MirrorStackedMetricsView, _PaddingLayout> and conformance <> ModifiedContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVy07WorkoutB024MirrorStackedMetricsViewVAA14_PaddingLayoutVGMd);
    lazy protocol witness table accessor for type MirrorStackedMetricsView and conformance MirrorStackedMetricsView();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<MirrorStackedMetricsView, _PaddingLayout> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<MirrorPacerMetricPlatterView, _PaddingLayout>, _PaddingLayout> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<MirrorPacerMetricPlatterView, _PaddingLayout>, _PaddingLayout> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<MirrorPacerMetricPlatterView, _PaddingLayout>, _PaddingLayout> and conformance <> ModifiedContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyACy07WorkoutB028MirrorPacerMetricPlatterViewVAA14_PaddingLayoutVGAHGMd);
    lazy protocol witness table accessor for type ModifiedContent<MirrorPacerMetricPlatterView, _PaddingLayout> and conformance <> ModifiedContent<A, B>();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<MirrorPacerMetricPlatterView, _PaddingLayout>, _PaddingLayout> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<MirrorHeartRateZonesMetricsPlatter, _PaddingLayout> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<MirrorHeartRateZonesMetricsPlatter, _PaddingLayout> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<MirrorHeartRateZonesMetricsPlatter, _PaddingLayout> and conformance <> ModifiedContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVy07WorkoutB034MirrorHeartRateZonesMetricsPlatterVAA14_PaddingLayoutVGMd);
    lazy protocol witness table accessor for type MirrorHeartRateZonesMetricsPlatter and conformance MirrorHeartRateZonesMetricsPlatter();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<MirrorHeartRateZonesMetricsPlatter, _PaddingLayout> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

uint64_t lazy protocol witness table accessor for type MirrorSpeedometerPlatterView and conformance MirrorSpeedometerPlatterView(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t outlined init with take of MirrorSpeedometerPlatterView(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t outlined init with take of ModifiedContent<MirrorSpeedometerPlatterView, _PaddingLayout>(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(a3);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t outlined init with copy of _ConditionalContent<_ConditionalContent<_ConditionalContent<ModifiedContent<MirrorSpeedometerPlatterView, _PaddingLayout>, ModifiedContent<MirrorPowerZonesMetricsPlatter, _PaddingLayout>>, _ConditionalContent<ModifiedContent<MirrorIntervalsPlatterView, _PaddingLayout>, ModifiedContent<MirrorIntervalsSecondPlatterView, _PaddingLayout>>>, _ConditionalContent<_ConditionalContent<ModifiedContent<MirrorRaceMetricPlatterView, _PaddingLayout>, ModifiedContent<MirrorMultiSportMetricsPlatter, _PaddingLayout>>, Text>>(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(a3);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t outlined destroy of _ConditionalContent<_ConditionalContent<_ConditionalContent<ModifiedContent<MirrorSpeedometerPlatterView, _PaddingLayout>, ModifiedContent<MirrorPowerZonesMetricsPlatter, _PaddingLayout>>, _ConditionalContent<ModifiedContent<MirrorIntervalsPlatterView, _PaddingLayout>, ModifiedContent<MirrorIntervalsSecondPlatterView, _PaddingLayout>>>, _ConditionalContent<_ConditionalContent<ModifiedContent<MirrorRaceMetricPlatterView, _PaddingLayout>, ModifiedContent<MirrorMultiSportMetricsPlatter, _PaddingLayout>>, Text>>(uint64_t a1, uint64_t *a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(a2);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t WorkoutTimeView.init(startDate:showSubseconds:workoutStatePublisher:)@<X0>(uint64_t a1@<X0>, char a2@<W1>, uint64_t a3@<X8>)
{
  *a3 = swift_getKeyPath();
  *(a3 + 8) = 0;
  *(a3 + 16) = swift_getKeyPath();
  *(a3 + 24) = 0;
  v6 = type metadata accessor for WorkoutTimeView();
  v7 = v6[6];
  v8 = type metadata accessor for Date();
  (*(*(v8 - 8) + 56))(a3 + v7, 1, 1, v8);
  v9 = v6[7];
  outlined assign with copy of Date?(a1, a3 + v7);
  *(a3 + v9) = a2;
  v10 = (a3 + v6[8]);
  type metadata accessor for WorkoutStatePublisher();
  _s11WorkoutCore0A14StatePublisherCAC7Combine16ObservableObjectAAWlTm_0(&lazy protocol witness table cache variable for type WorkoutStatePublisher and conformance WorkoutStatePublisher, MEMORY[0x277D7DA88]);
  v11 = ObservedObject.init(wrappedValue:)();
  v13 = v12;
  result = outlined destroy of Date?(a1, &_s10Foundation4DateVSgMd);
  *v10 = v11;
  v10[1] = v13;
  return result;
}

uint64_t WorkoutTimeView.isLuminanceReduced.getter()
{
  v1 = type metadata accessor for EnvironmentValues();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = &v8[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v5 = *v0;
  if (*(v0 + 8) != 1)
  {

    static os_log_type_t.fault.getter();
    v6 = static Log.runtimeIssuesLog.getter();
    os_log(_:dso:log:_:_:)();

    EnvironmentValues.init()();
    swift_getAtKeyPath();
    sub_20C6810AC(v5, 0);
    (*(v2 + 8))(v4, v1);
    LOBYTE(v5) = v8[15];
  }

  return v5 & 1;
}

uint64_t WorkoutTimeView.startDate.setter(uint64_t a1)
{
  v3 = v1 + *(type metadata accessor for WorkoutTimeView() + 24);

  return outlined assign with take of Date?(a1, v3);
}

uint64_t WorkoutTimeView.offsetStartDate(until:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v17 = a1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateVSgMd);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v16 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v9 = &v16 - v8;
  v10 = type metadata accessor for Date();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = &v16 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for WorkoutTimeView();
  outlined init with copy of Date?(v2 + *(v14 + 24), v9, &_s10Foundation4DateVSgMd);
  if ((*(v11 + 48))(v9, 1, v10) == 1)
  {
    outlined destroy of Date?(v9, &_s10Foundation4DateVSgMd);
    return (*(v11 + 16))(a2, v17, v10);
  }

  else
  {
    (*(v11 + 32))(v13, v9, v10);
    WorkoutStatePublisher.pauseTimes.getter();
    WorkoutStatePublisher.lastUnbalancedPauseStart.getter();
    Date.offset(until:pauseTimes:lastUnbalancedPauseStart:)();

    outlined destroy of Date?(v6, &_s10Foundation4DateVSgMd);
    return (*(v11 + 8))(v13, v10);
  }
}

uint64_t WorkoutTimeView.showSubseconds.setter(char a1)
{
  result = type metadata accessor for WorkoutTimeView();
  *(v1 + *(result + 28)) = a1;
  return result;
}

uint64_t WorkoutTimeView.body.getter@<X0>(uint64_t a1@<X8>)
{
  v55 = a1;
  v2 = type metadata accessor for WorkoutTimeView();
  v52 = *(v2 - 8);
  v51 = *(v52 + 64);
  MEMORY[0x28223BE20](v2);
  v49 = &v47 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v56 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9WorkoutUI24PausableTimelineScheduleVy05SwiftB008PeriodicdE0VGMd);
  MEMORY[0x28223BE20](v56);
  v53 = &v47 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v48 = &v47 - v6;
  v7 = type metadata accessor for Date();
  v47 = v7;
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  v10 = &v47 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v13 = &v47 - v12;
  MEMORY[0x28223BE20](v14);
  v16 = &v47 - v15;
  v54 = &v47 - v15;
  Date.init()();
  WorkoutTimeView.offsetStartDate(until:)(v16, v13);
  v17 = *(v8 + 16);
  v50 = v13;
  v17(v10, v13, v7);
  v18 = v48;
  PeriodicTimelineSchedule.init(from:by:)();
  *(v18 + *(v56 + 36)) = (WorkoutStatePublisher.workoutActive.getter() & 1) == 0;
  v19 = v49;
  _s9WorkoutUI0A8TimeViewVWOcTm_1(v1, v49, type metadata accessor for WorkoutTimeView);
  v20 = v13;
  v21 = v47;
  v17(v10, v20, v47);
  v22 = (*(v52 + 80) + 16) & ~*(v52 + 80);
  v23 = (v51 + *(v8 + 80) + v22) & ~*(v8 + 80);
  v24 = swift_allocObject();
  outlined init with take of WorkoutTimeView(v19, v24 + v22);
  (*(v8 + 32))(v24 + v23, v10, v21);
  outlined init with copy of Date?(v18, v53, &_s9WorkoutUI24PausableTimelineScheduleVy05SwiftB008PeriodicdE0VGMd);
  v25 = swift_allocObject();
  *(v25 + 16) = partial apply for closure #1 in WorkoutTimeView.body.getter;
  *(v25 + 24) = v24;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI6HStackVyAA9TupleViewVyAA15ModifiedContentVyAA4TextVAA31AccessibilityAttachmentModifierVG_AEyAA08TimelineE0Vy07WorkoutB008PausableL8ScheduleVyAA08PeriodiclO0VGACyAEyAL_AO09FastDigitE0VtGGG_ANyAtVGtGSgtGGMd);
  lazy protocol witness table accessor for type PausableTimelineSchedule<PeriodicTimelineSchedule> and conformance PausableTimelineSchedule<A>(&lazy protocol witness table cache variable for type PausableTimelineSchedule<PeriodicTimelineSchedule> and conformance PausableTimelineSchedule<A>, &_s9WorkoutUI24PausableTimelineScheduleVy05SwiftB008PeriodicdE0VGMd);
  lazy protocol witness table accessor for type PausableTimelineSchedule<PeriodicTimelineSchedule> and conformance PausableTimelineSchedule<A>(&lazy protocol witness table cache variable for type HStack<TupleView<(ModifiedContent<Text, AccessibilityAttachmentModifier>, TupleView<(TimelineView<PausableTimelineSchedule<PeriodicTimelineSchedule>, HStack<TupleView<(ModifiedContent<Text, AccessibilityAttachmentModifier>, FastDigitView)>>>, TimelineView<PausableTimelineSchedule<PeriodicTimelineSchedule>, FastDigitView>)>?)>> and conformance HStack<A>, &_s7SwiftUI6HStackVyAA9TupleViewVyAA15ModifiedContentVyAA4TextVAA31AccessibilityAttachmentModifierVG_AEyAA08TimelineE0Vy07WorkoutB008PausableL8ScheduleVyAA08PeriodiclO0VGACyAEyAL_AO09FastDigitE0VtGGG_ANyAtVGtGSgtGGMd);
  v26 = v55;
  TimelineView<>.init(_:content:)();
  outlined destroy of Date?(v18, &_s9WorkoutUI24PausableTimelineScheduleVy05SwiftB008PeriodicdE0VGMd);
  v27 = *(v8 + 8);
  v27(v50, v21);
  v27(v54, v21);
  KeyPath = swift_getKeyPath();
  v29 = v26;
  v30 = v26 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyAA12TimelineViewVy07WorkoutB008PausableE8ScheduleVyAA08PeriodiceI0VGAA6HStackVyAA05TupleF0VyACyAA4TextVAA31AccessibilityAttachmentModifierVG_AOyAEyAkMyAOyAT_AF09FastDigitF0VtGGG_AEyAkVGtGSgtGGGAF15MetricValueFontVGMd) + 36);
  *v30 = 256;
  *(v30 + 8) = KeyPath;
  *(v30 + 16) = 0;
  v31 = swift_getKeyPath();
  v32 = (v26 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyACyAA12TimelineViewVy07WorkoutB008PausableE8ScheduleVyAA08PeriodiceI0VGAA6HStackVyAA05TupleF0VyACyAA4TextVAA31AccessibilityAttachmentModifierVG_AOyAEyAkMyAOyAT_AF09FastDigitF0VtGGG_AEyAkVGtGSgtGGGAF15MetricValueFontVGAA022_EnvironmentKeyWritingP0VyAA15LayoutDirectionOGGMd) + 36));
  v33 = v29;
  v34 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI30_EnvironmentKeyWritingModifierVyAA15LayoutDirectionOGMd) + 28);
  v35 = *MEMORY[0x277CDFA88];
  v36 = type metadata accessor for LayoutDirection();
  (*(*(v36 - 8) + 104))(v32 + v34, v35, v36);
  *v32 = v31;
  v37 = (v33 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyACyACyAA12TimelineViewVy07WorkoutB008PausableE8ScheduleVyAA08PeriodiceI0VGAA6HStackVyAA05TupleF0VyACyAA4TextVAA31AccessibilityAttachmentModifierVG_AOyAEyAkMyAOyAT_AF09FastDigitF0VtGGG_AEyAkVGtGSgtGGGAF15MetricValueFontVGAA022_EnvironmentKeyWritingP0VyAA15LayoutDirectionOGGAA01_d5ShapeP0VyAA16RoundedRectangleVGGMd) + 36));
  v38 = *(type metadata accessor for RoundedRectangle() + 20);
  v39 = *MEMORY[0x277CE0118];
  v40 = type metadata accessor for RoundedCornerStyle();
  (*(*(v40 - 8) + 104))(&v37[v38], v39, v40);
  __asm { FMOV            V0.2D, #5.0 }

  *v37 = _Q0;
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI21_ContentShapeModifierVyAA16RoundedRectangleVGMd);
  v37[*(result + 36)] = 0;
  return result;
}

uint64_t closure #1 in WorkoutTimeView.body.getter@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X8>)
{
  *a3 = static VerticalAlignment.center.getter();
  *(a3 + 8) = 0;
  *(a3 + 16) = 0;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI13_VariadicViewO4TreeVy_AA13_HStackLayoutVAA05TupleD0VyAA15ModifiedContentVyAA4TextVAA31AccessibilityAttachmentModifierVG_AIyAA08TimelineD0Vy07WorkoutB008PausableO8ScheduleVyAA08PeriodicoR0VGAA0F0VyAIyAP_AS09FastDigitD0VtGGG_ARyAXA0_GtGSgtGGMd);
  return closure #1 in closure #1 in WorkoutTimeView.body.getter(a1, a2, a3 + *(v6 + 44));
}

uint64_t closure #1 in closure #1 in WorkoutTimeView.body.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X2>, uint64_t a3@<X8>)
{
  v110 = a2;
  v128 = a1;
  v125 = a3;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI9TupleViewVyAA08TimelineD0Vy07WorkoutB008PausableE8ScheduleVyAA08PeriodiceH0VGAA6HStackVyACyAA15ModifiedContentVyAA4TextVAA31AccessibilityAttachmentModifierVG_AF09FastDigitD0VtGGG_AEyAkVGtGMd);
  v123 = *(v3 - 8);
  v124 = v3;
  MEMORY[0x28223BE20](v3);
  v113 = &v97 - v4;
  v104 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI12TimelineViewVy07WorkoutB008PausableC8ScheduleVyAA08PeriodiccG0VGAD09FastDigitD0VGMd);
  v103 = *(v104 - 8);
  MEMORY[0x28223BE20](v104);
  v102 = &v97 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v112 = &v97 - v7;
  v8 = type metadata accessor for WorkoutTimeView();
  v98 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v106 = v9;
  v107 = &v97 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v109 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9WorkoutUI24PausableTimelineScheduleVy05SwiftB008PeriodicdE0VGMd);
  MEMORY[0x28223BE20](v109);
  v108 = &v97 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v99 = &v97 - v12;
  v101 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI12TimelineViewVy07WorkoutB008PausableC8ScheduleVyAA08PeriodiccG0VGAA6HStackVyAA05TupleD0VyAA15ModifiedContentVyAA4TextVAA31AccessibilityAttachmentModifierVG_AD09FastDigitD0VtGGGMd);
  v100 = *(v101 - 8);
  MEMORY[0x28223BE20](v101);
  v111 = &v97 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v114 = &v97 - v15;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI9TupleViewVyAA08TimelineD0Vy07WorkoutB008PausableE8ScheduleVyAA08PeriodiceH0VGAA6HStackVyACyAA15ModifiedContentVyAA4TextVAA31AccessibilityAttachmentModifierVG_AF09FastDigitD0VtGGG_AEyAkVGtGSgMd);
  MEMORY[0x28223BE20](v16 - 8);
  v122 = &v97 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v127 = &v97 - v19;
  v20 = type metadata accessor for AccessibilityTraits();
  v118 = *(v20 - 8);
  v119 = v20;
  MEMORY[0x28223BE20](v20);
  v117 = &v97 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = type metadata accessor for EnvironmentValues();
  v115 = *(v22 - 8);
  v116 = v22;
  MEMORY[0x28223BE20](v22);
  v24 = &v97 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyAA4TextVAA31AccessibilityAttachmentModifierVGMd);
  MEMORY[0x28223BE20](v25 - 8);
  v121 = &v97 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v27);
  v126 = &v97 - v28;
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateVSgMd);
  MEMORY[0x28223BE20](v29 - 8);
  v31 = &v97 - v30;
  v32 = type metadata accessor for Date();
  v33 = *(v32 - 8);
  MEMORY[0x28223BE20](v32);
  v35 = &v97 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v36);
  v38 = &v97 - v37;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI12TimelineViewV7ContextVyAA011EveryMinuteC8ScheduleVs5NeverO_GMd);
  TimelineView.Context.date.getter();
  v120 = v8;
  v39 = *(v8 + 24);
  v40 = v128;
  outlined init with copy of Date?(v128 + v39, v31, &_s10Foundation4DateVSgMd);
  if ((*(v33 + 48))(v31, 1, v32) == 1)
  {
    (*(v33 + 8))(v38, v32);
    outlined destroy of Date?(v31, &_s10Foundation4DateVSgMd);
    v41 = 0.0;
  }

  else
  {
    outlined destroy of Date?(v31, &_s10Foundation4DateVSgMd);
    WorkoutTimeView.offsetStartDate(until:)(v38, v35);
    Date.timeIntervalSince(_:)();
    v41 = v42;
    v43 = *(v33 + 8);
    v43(v35, v32);
    v43(v38, v32);
  }

  v44 = *(v40 + 16);
  v45 = *(v40 + 24) == 1;
  v105 = v32;
  v97 = v33;
  if (v45)
  {
    LODWORD(v44) = v44;
  }

  else
  {

    static os_log_type_t.fault.getter();
    v46 = static Log.runtimeIssuesLog.getter();
    os_log(_:dso:log:_:_:)();

    EnvironmentValues.init()();
    swift_getAtKeyPath();
    sub_20C6810AC(v44, 0);
    (*(v115 + 8))(v24, v116);
    LODWORD(v44) = v129;
  }

  type metadata accessor for ElapsedTimeFormatter();
  v129 = MEMORY[0x20F305C20](0, v44 == 2, v41);
  v130 = v47;
  lazy protocol witness table accessor for type String and conformance String();
  v48 = Text.init<A>(_:)();
  v50 = v49;
  v52 = v51;
  v129 = static ElapsedTimeFormatter.accessibilityStringFromElapsedTime(_:)();
  v130 = v53;
  v54 = Text.accessibilityLabel<A>(_:)();
  v56 = v55;
  v58 = v57;
  v60 = v59;
  outlined consume of Text.Storage(v48, v50, v52 & 1);

  v129 = v54;
  v130 = v56;
  v58 &= 1u;
  v131 = v58;
  v132 = v60;
  v61 = v117;
  static AccessibilityTraits.updatesFrequently.getter();
  v62 = v126;
  MEMORY[0x20F30A9C0](v61, MEMORY[0x277CE0BD8], MEMORY[0x277CE0BC8]);
  (*(v118 + 1))(v61, v119);
  outlined consume of Text.Storage(v54, v56, v58);

  v63 = v120;
  v64 = v128;
  if (*(v128 + *(v120 + 28)) == 1 && (Double.showHoursInWorkoutTime.getter() & 1) == 0)
  {
    v72 = WorkoutTimeView.isLuminanceReduced.getter();
    v65 = 1;
    if ((v72 & 1) == 0)
    {
      v119 = *(v97 + 16);
      v119(v35, v110, v105);
      v73 = v99;
      PeriodicTimelineSchedule.init(from:by:)();
      v120 = *(v64 + *(v63 + 32) + 8);
      *(v73 + *(v109 + 36)) = (WorkoutStatePublisher.workoutActive.getter() & 1) == 0;
      v117 = v35;
      v118 = type metadata accessor for WorkoutTimeView;
      v74 = v107;
      _s9WorkoutUI0A8TimeViewVWOcTm_1(v64, v107, type metadata accessor for WorkoutTimeView);
      v75 = (*(v98 + 80) + 16) & ~*(v98 + 80);
      v76 = swift_allocObject();
      outlined init with take of WorkoutTimeView(v74, v76 + v75);
      outlined init with copy of Date?(v73, v108, &_s9WorkoutUI24PausableTimelineScheduleVy05SwiftB008PeriodicdE0VGMd);
      v77 = swift_allocObject();
      *(v77 + 16) = partial apply for closure #1 in closure #1 in closure #1 in WorkoutTimeView.body.getter;
      *(v77 + 24) = v76;
      __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI6HStackVyAA9TupleViewVyAA15ModifiedContentVyAA4TextVAA31AccessibilityAttachmentModifierVG_07WorkoutB009FastDigitE0VtGGMd);
      lazy protocol witness table accessor for type PausableTimelineSchedule<PeriodicTimelineSchedule> and conformance PausableTimelineSchedule<A>(&lazy protocol witness table cache variable for type PausableTimelineSchedule<PeriodicTimelineSchedule> and conformance PausableTimelineSchedule<A>, &_s9WorkoutUI24PausableTimelineScheduleVy05SwiftB008PeriodicdE0VGMd);
      lazy protocol witness table accessor for type PausableTimelineSchedule<PeriodicTimelineSchedule> and conformance PausableTimelineSchedule<A>(&lazy protocol witness table cache variable for type HStack<TupleView<(ModifiedContent<Text, AccessibilityAttachmentModifier>, FastDigitView)>> and conformance HStack<A>, &_s7SwiftUI6HStackVyAA9TupleViewVyAA15ModifiedContentVyAA4TextVAA31AccessibilityAttachmentModifierVG_07WorkoutB009FastDigitE0VtGGMd);
      v78 = v109;
      TimelineView<>.init(_:content:)();
      outlined destroy of Date?(v73, &_s9WorkoutUI24PausableTimelineScheduleVy05SwiftB008PeriodicdE0VGMd);
      v119(v117, v110, v105);
      PeriodicTimelineSchedule.init(from:by:)();
      *(v73 + *(v78 + 36)) = (WorkoutStatePublisher.workoutActive.getter() & 1) == 0;
      v79 = v107;
      _s9WorkoutUI0A8TimeViewVWOcTm_1(v128, v107, v118);
      v80 = swift_allocObject();
      outlined init with take of WorkoutTimeView(v79, v80 + v75);
      outlined init with copy of Date?(v73, v108, &_s9WorkoutUI24PausableTimelineScheduleVy05SwiftB008PeriodicdE0VGMd);
      v81 = swift_allocObject();
      *(v81 + 16) = partial apply for closure #2 in closure #1 in closure #1 in WorkoutTimeView.body.getter;
      *(v81 + 24) = v80;
      type metadata accessor for FastDigitView();
      _s11WorkoutCore0A14StatePublisherCAC7Combine16ObservableObjectAAWlTm_0(&lazy protocol witness table cache variable for type FastDigitView and conformance FastDigitView, type metadata accessor for FastDigitView);
      v82 = v112;
      TimelineView<>.init(_:content:)();
      outlined destroy of Date?(v73, &_s9WorkoutUI24PausableTimelineScheduleVy05SwiftB008PeriodicdE0VGMd);
      v83 = v100;
      v84 = *(v100 + 16);
      v85 = v111;
      v86 = v101;
      v84(v111, v114, v101);
      v87 = v103;
      v88 = *(v103 + 16);
      v89 = v102;
      v90 = v82;
      v91 = v104;
      v88(v102, v90, v104);
      v84(v113, v85, v86);
      v92 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI12TimelineViewVy07WorkoutB008PausableC8ScheduleVyAA08PeriodiccG0VGAA6HStackVyAA05TupleD0VyAA15ModifiedContentVyAA4TextVAA31AccessibilityAttachmentModifierVG_AD09FastDigitD0VtGGG_ACyAiVGtMd);
      v93 = v113;
      v88(&v113[*(v92 + 48)], v89, v91);
      v94 = *(v87 + 8);
      v94(v112, v91);
      v95 = *(v83 + 8);
      v95(v114, v86);
      v94(v89, v91);
      v96 = v86;
      v62 = v126;
      v95(v111, v96);
      outlined init with take of TupleView<(TimelineView<PausableTimelineSchedule<PeriodicTimelineSchedule>, HStack<TupleView<(ModifiedContent<Text, AccessibilityAttachmentModifier>, FastDigitView)>>>, TimelineView<PausableTimelineSchedule<PeriodicTimelineSchedule>, FastDigitView>)>(v93, v127);
      v65 = 0;
    }
  }

  else
  {
    v65 = 1;
  }

  v66 = v127;
  (*(v123 + 56))(v127, v65, 1, v124);
  v67 = v121;
  outlined init with copy of Date?(v62, v121, &_s7SwiftUI15ModifiedContentVyAA4TextVAA31AccessibilityAttachmentModifierVGMd);
  v68 = v122;
  outlined init with copy of Date?(v66, v122, &_s7SwiftUI9TupleViewVyAA08TimelineD0Vy07WorkoutB008PausableE8ScheduleVyAA08PeriodiceH0VGAA6HStackVyACyAA15ModifiedContentVyAA4TextVAA31AccessibilityAttachmentModifierVG_AF09FastDigitD0VtGGG_AEyAkVGtGSgMd);
  v69 = v125;
  outlined init with copy of Date?(v67, v125, &_s7SwiftUI15ModifiedContentVyAA4TextVAA31AccessibilityAttachmentModifierVGMd);
  v70 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyAA4TextVAA31AccessibilityAttachmentModifierVG_AA9TupleViewVyAA08TimelineJ0Vy07WorkoutB008PausableK8ScheduleVyAA08PeriodickN0VGAA6HStackVyAJyAH_AM09FastDigitJ0VtGGG_ALyArVGtGSgtMd);
  outlined init with copy of Date?(v68, v69 + *(v70 + 48), &_s7SwiftUI9TupleViewVyAA08TimelineD0Vy07WorkoutB008PausableE8ScheduleVyAA08PeriodiceH0VGAA6HStackVyACyAA15ModifiedContentVyAA4TextVAA31AccessibilityAttachmentModifierVG_AF09FastDigitD0VtGGG_AEyAkVGtGSgMd);
  outlined destroy of Date?(v66, &_s7SwiftUI9TupleViewVyAA08TimelineD0Vy07WorkoutB008PausableE8ScheduleVyAA08PeriodiceH0VGAA6HStackVyACyAA15ModifiedContentVyAA4TextVAA31AccessibilityAttachmentModifierVG_AF09FastDigitD0VtGGG_AEyAkVGtGSgMd);
  outlined destroy of Date?(v62, &_s7SwiftUI15ModifiedContentVyAA4TextVAA31AccessibilityAttachmentModifierVGMd);
  outlined destroy of Date?(v68, &_s7SwiftUI9TupleViewVyAA08TimelineD0Vy07WorkoutB008PausableE8ScheduleVyAA08PeriodiceH0VGAA6HStackVyACyAA15ModifiedContentVyAA4TextVAA31AccessibilityAttachmentModifierVG_AF09FastDigitD0VtGGG_AEyAkVGtGSgMd);
  return outlined destroy of Date?(v67, &_s7SwiftUI15ModifiedContentVyAA4TextVAA31AccessibilityAttachmentModifierVGMd);
}

uint64_t closure #1 in closure #1 in closure #1 in WorkoutTimeView.body.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  *a3 = static VerticalAlignment.center.getter();
  *(a3 + 8) = 0;
  *(a3 + 16) = 0;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI13_VariadicViewO4TreeVy_AA13_HStackLayoutVAA05TupleD0VyAA15ModifiedContentVyAA4TextVAA31AccessibilityAttachmentModifierVG_07WorkoutB009FastDigitD0VtGGMd);
  return closure #1 in closure #1 in closure #1 in closure #1 in WorkoutTimeView.body.getter(a2, a1, a3 + *(v6 + 44));
}

uint64_t closure #1 in closure #1 in closure #1 in closure #1 in WorkoutTimeView.body.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v52 = a2;
  v53 = a1;
  v57 = a3;
  v55 = type metadata accessor for FastDigitView();
  MEMORY[0x28223BE20](v55);
  v56 = &v50 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v6 = (&v50 - v5);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateVSgMd);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v50 - v8;
  v51 = type metadata accessor for Date();
  v10 = *(v51 - 8);
  MEMORY[0x28223BE20](v51);
  v50 = &v50 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v14 = &v50 - v13;
  v15 = type metadata accessor for Locale();
  v16 = *(v15 - 8);
  MEMORY[0x28223BE20](v15);
  v18 = &v50 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyAA4TextVAA31AccessibilityAttachmentModifierVGMd);
  MEMORY[0x28223BE20](v19 - 8);
  v54 = &v50 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v21);
  v23 = &v50 - v22;
  static Locale.current.getter();
  v24 = Locale.decimalSeparator.getter();
  v26 = v25;
  (*(v16 + 8))(v18, v15);
  v27 = 46;
  if (v26)
  {
    v27 = v24;
  }

  v28 = 0xE100000000000000;
  if (v26)
  {
    v28 = v26;
  }

  v58 = v27;
  v59 = v28;
  lazy protocol witness table accessor for type String and conformance String();
  v29 = Text.init<A>(_:)();
  v31 = v30;
  v58 = v29;
  v59 = v30;
  v33 = v32 & 1;
  v60 = v32 & 1;
  v61 = v34;
  View.accessibilityHidden(_:)();
  v35 = v29;
  v36 = v51;
  outlined consume of Text.Storage(v35, v31, v33);

  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI12TimelineViewV7ContextVyAA011EveryMinuteC8ScheduleVs5NeverO_GMd);
  TimelineView.Context.date.getter();
  v37 = v53;
  v38 = type metadata accessor for WorkoutTimeView();
  outlined init with copy of Date?(v37 + *(v38 + 24), v9, &_s10Foundation4DateVSgMd);
  if ((*(v10 + 48))(v9, 1, v36) == 1)
  {
    (*(v10 + 8))(v14, v36);
    outlined destroy of Date?(v9, &_s10Foundation4DateVSgMd);
  }

  else
  {
    outlined destroy of Date?(v9, &_s10Foundation4DateVSgMd);
    v39 = v50;
    WorkoutTimeView.offsetStartDate(until:)(v14, v50);
    Date.timeIntervalSince(_:)();
    v40 = *(v10 + 8);
    v40(v39, v36);
    v40(v14, v36);
  }

  v41 = Double.tenths.getter();
  *v6 = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI11EnvironmentV7ContentOyAA4FontV7ContextV_GMd);
  swift_storeEnumTagMultiPayload();
  KeyPath = swift_getKeyPath();
  v44 = v54;
  v43 = v55;
  v45 = v6 + *(v55 + 20);
  *v45 = KeyPath;
  v45[8] = 0;
  *(v6 + *(v43 + 24)) = v41;
  outlined init with copy of Date?(v23, v44, &_s7SwiftUI15ModifiedContentVyAA4TextVAA31AccessibilityAttachmentModifierVGMd);
  v46 = v56;
  _s9WorkoutUI0A8TimeViewVWOcTm_1(v6, v56, type metadata accessor for FastDigitView);
  v47 = v57;
  outlined init with copy of Date?(v44, v57, &_s7SwiftUI15ModifiedContentVyAA4TextVAA31AccessibilityAttachmentModifierVGMd);
  v48 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyAA4TextVAA31AccessibilityAttachmentModifierVG_07WorkoutB013FastDigitViewVtMd);
  _s9WorkoutUI0A8TimeViewVWOcTm_1(v46, v47 + *(v48 + 48), type metadata accessor for FastDigitView);
  outlined destroy of FastDigitView(v6);
  outlined destroy of Date?(v23, &_s7SwiftUI15ModifiedContentVyAA4TextVAA31AccessibilityAttachmentModifierVGMd);
  outlined destroy of FastDigitView(v46);
  return outlined destroy of Date?(v44, &_s7SwiftUI15ModifiedContentVyAA4TextVAA31AccessibilityAttachmentModifierVGMd);
}

unint64_t closure #2 in closure #1 in closure #1 in WorkoutTimeView.body.getter@<X0>(uint64_t a1@<X1>, uint64_t *a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateVSgMd);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v21 - v5;
  v7 = type metadata accessor for Date();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v21 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v13 = &v21 - v12;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI12TimelineViewV7ContextVyAA011EveryMinuteC8ScheduleVs5NeverO_GMd);
  TimelineView.Context.date.getter();
  v14 = type metadata accessor for WorkoutTimeView();
  outlined init with copy of Date?(a1 + *(v14 + 24), v6, &_s10Foundation4DateVSgMd);
  if ((*(v8 + 48))(v6, 1, v7) == 1)
  {
    (*(v8 + 8))(v13, v7);
    outlined destroy of Date?(v6, &_s10Foundation4DateVSgMd);
  }

  else
  {
    outlined destroy of Date?(v6, &_s10Foundation4DateVSgMd);
    WorkoutTimeView.offsetStartDate(until:)(v13, v10);
    Date.timeIntervalSince(_:)();
    v15 = *(v8 + 8);
    v15(v10, v7);
    v15(v13, v7);
  }

  v16 = Double.hundredths.getter();
  if (WorkoutStatePublisher.workoutActive.getter())
  {
    result = specialized RandomNumberGenerator.next<A>(upperBound:)(3uLL);
  }

  else
  {
    result = 0;
  }

  v18 = v16 + result;
  if (__OFADD__(v16, result))
  {
    __break(1u);
  }

  else
  {
    *a2 = swift_getKeyPath();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI11EnvironmentV7ContentOyAA4FontV7ContextV_GMd);
    swift_storeEnumTagMultiPayload();
    KeyPath = swift_getKeyPath();
    result = type metadata accessor for FastDigitView();
    v20 = a2 + *(result + 20);
    *v20 = KeyPath;
    v20[8] = 0;
    *(a2 + *(result + 24)) = v18;
  }

  return result;
}

uint64_t type metadata accessor for WorkoutTimeView()
{
  result = type metadata singleton initialization cache for WorkoutTimeView;
  if (!type metadata singleton initialization cache for WorkoutTimeView)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t outlined assign with take of Date?(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateVSgMd);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t outlined init with take of WorkoutTimeView(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for WorkoutTimeView();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t partial apply for closure #1 in WorkoutTimeView.body.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for WorkoutTimeView() - 8);
  v4 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v5 = *(v3 + 64);
  v6 = *(type metadata accessor for Date() - 8);
  v7 = v1 + ((v4 + v5 + *(v6 + 80)) & ~*(v6 + 80));

  return closure #1 in WorkoutTimeView.body.getter(v1 + v4, v7, a1);
}

uint64_t specialized closure #1 in TimelineView<>.init(_:content:)@<X0>(uint64_t a1@<X0>, void (*a2)(__int128 *__return_ptr, _BYTE *)@<X1>, uint64_t a3@<X8>)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI12TimelineViewV7ContextVyAA011EveryMinuteC8ScheduleVs5NeverO_GMd);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = &v19[-v9];
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI12TimelineViewV7ContextVyAA08PeriodicC8ScheduleVAA6ZStackVyAA05TupleD0Vy07WorkoutB032InfinitelyAnimatableProgressRingV_AA15ModifiedContentVyAPyAL10MetricTextVAA12_FrameLayoutVGAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGtGG_GMd);
  v13 = *(v11 - 8);
  result = v11 - 8;
  if (*(v13 + 64) == v8)
  {
    (*(v7 + 16))(v10, a1, v6);
    a2(&v20, v10);
    (*(v7 + 8))(v10, v6);
    v40 = v28;
    v41 = v29;
    v42 = v30;
    v36 = v24;
    v37 = v25;
    v38 = v26;
    v39 = v27;
    v32 = v20;
    v33 = v21;
    v34 = v22;
    v35 = v23;
    v44[8] = v28;
    v44[9] = v29;
    v44[10] = v30;
    v44[4] = v24;
    v44[5] = v25;
    v44[6] = v26;
    v44[7] = v27;
    v44[0] = v20;
    v44[1] = v21;
    v43 = v31;
    v45 = v31;
    v44[2] = v22;
    v44[3] = v23;
    outlined init with copy of Date?(&v32, v19, &_s7SwiftUI6ZStackVyAA9TupleViewVy07WorkoutB032InfinitelyAnimatableProgressRingV_AA15ModifiedContentVyAJyAF10MetricTextVAA12_FrameLayoutVGAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGtGGMd);
    result = outlined destroy of Date?(v44, &_s7SwiftUI6ZStackVyAA9TupleViewVy07WorkoutB032InfinitelyAnimatableProgressRingV_AA15ModifiedContentVyAJyAF10MetricTextVAA12_FrameLayoutVGAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGtGGMd);
    v14 = v41;
    *(a3 + 128) = v40;
    *(a3 + 144) = v14;
    *(a3 + 160) = v42;
    *(a3 + 176) = v43;
    v15 = v37;
    *(a3 + 64) = v36;
    *(a3 + 80) = v15;
    v16 = v39;
    *(a3 + 96) = v38;
    *(a3 + 112) = v16;
    v17 = v33;
    *a3 = v32;
    *(a3 + 16) = v17;
    v18 = v35;
    *(a3 + 32) = v34;
    *(a3 + 48) = v18;
  }

  else
  {
    __break(1u);
  }

  return result;
}

{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI12TimelineViewV7ContextVyAA011EveryMinuteC8ScheduleVs5NeverO_GMd);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = &v16[-v9];
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI12TimelineViewV7ContextVy07WorkoutB008PausableC8ScheduleVyAA08PeriodiccH0VGAF10MetricTextV_GMd);
  v13 = *(v11 - 8);
  result = v11 - 8;
  if (*(v13 + 64) == v8)
  {
    (*(v7 + 16))(v10, a1, v6);
    a2(&v17, v10);
    (*(v7 + 8))(v10, v6);
    v24 = v19;
    v25 = v20;
    v26 = v21;
    v22 = v17;
    v23 = v18;
    v27[2] = v19;
    v27[3] = v20;
    v28 = v21;
    v27[0] = v17;
    v27[1] = v18;
    outlined init with copy of MetricText(&v22, v16);
    result = outlined destroy of MetricText(v27);
    v14 = v25;
    *(a3 + 32) = v24;
    *(a3 + 48) = v14;
    *(a3 + 64) = v26;
    v15 = v23;
    *a3 = v22;
    *(a3 + 16) = v15;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t partial apply for specialized closure #1 in TimelineView<>.init(_:content:)(uint64_t a1)
{
  return specialized closure #1 in TimelineView<>.init(_:content:)(a1, *(v1 + 16), *(v1 + 24), &_s7SwiftUI12TimelineViewV7ContextVy07WorkoutB008PausableC8ScheduleVyAA08PeriodiccH0VGAA6HStackVyAA05TupleD0VyAA15ModifiedContentVyAA4TextVAA31AccessibilityAttachmentModifierVG_AOyACyAkMyAOyAV_AF09FastDigitD0VtGGG_ACyAkXGtGSgtGG_GMd);
}

{
  return specialized closure #1 in TimelineView<>.init(_:content:)(a1, *(v1 + 16), *(v1 + 24), &_s7SwiftUI12TimelineViewV7ContextVy07WorkoutB008PausableC8ScheduleVyAA08PeriodiccH0VGAA6HStackVyAA05TupleD0VyAA15ModifiedContentVyAA4TextVAA31AccessibilityAttachmentModifierVG_AF09FastDigitD0VtGG_GMd);
}

{
  return specialized closure #1 in TimelineView<>.init(_:content:)(a1, *(v1 + 16), *(v1 + 24), &_s7SwiftUI12TimelineViewV7ContextVy07WorkoutB008PausableC8ScheduleVyAA08PeriodiccH0VGAF09FastDigitD0V_GMd);
}

{
  return specialized closure #1 in TimelineView<>.init(_:content:)(a1, *(v1 + 16), *(v1 + 24));
}

{
  return specialized closure #1 in TimelineView<>.init(_:content:)(a1, *(v1 + 16), *(v1 + 24));
}

void type metadata completion function for WorkoutTimeView()
{
  type metadata accessor for Environment<Bool>(319, &lazy cache variable for type metadata for Environment<Bool>);
  if (v0 <= 0x3F)
  {
    type metadata accessor for Environment<Bool>(319, &lazy cache variable for type metadata for Environment<WorkoutViewStyle>);
    if (v1 <= 0x3F)
    {
      type metadata accessor for Date?();
      if (v2 <= 0x3F)
      {
        type metadata accessor for ObservedObject<WorkoutStatePublisher>();
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void type metadata accessor for Environment<Bool>(uint64_t a1, unint64_t *a2)
{
  if (!*a2)
  {
    v3 = type metadata accessor for Environment();
    if (!v4)
    {
      atomic_store(v3, a2);
    }
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

unint64_t lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<ModifiedContent<TimelineView<PausableTimelineSchedule<PeriodicTimelineSchedule>, HStack<TupleView<(ModifiedContent<Text, AccessibilityAttachmentModifier>, TupleView<(TimelineView<PausableTimelineSchedule<PeriodicTimelineSchedule>, HStack<TupleView<(ModifiedContent<Text, AccessibilityAttachmentModifier>, FastDigitView)>>>, TimelineView<PausableTimelineSchedule<PeriodicTimelineSchedule>, FastDigitView>)>?)>>>, MetricValueFont>, _EnvironmentKeyWritingModifier<LayoutDirection>>, _ContentShapeModifier<RoundedRectangle>> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<TimelineView<PausableTimelineSchedule<PeriodicTimelineSchedule>, HStack<TupleView<(ModifiedContent<Text, AccessibilityAttachmentModifier>, TupleView<(TimelineView<PausableTimelineSchedule<PeriodicTimelineSchedule>, HStack<TupleView<(ModifiedContent<Text, AccessibilityAttachmentModifier>, FastDigitView)>>>, TimelineView<PausableTimelineSchedule<PeriodicTimelineSchedule>, FastDigitView>)>?)>>>, MetricValueFont>, _EnvironmentKeyWritingModifier<LayoutDirection>>, _ContentShapeModifier<RoundedRectangle>> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<TimelineView<PausableTimelineSchedule<PeriodicTimelineSchedule>, HStack<TupleView<(ModifiedContent<Text, AccessibilityAttachmentModifier>, TupleView<(TimelineView<PausableTimelineSchedule<PeriodicTimelineSchedule>, HStack<TupleView<(ModifiedContent<Text, AccessibilityAttachmentModifier>, FastDigitView)>>>, TimelineView<PausableTimelineSchedule<PeriodicTimelineSchedule>, FastDigitView>)>?)>>>, MetricValueFont>, _EnvironmentKeyWritingModifier<LayoutDirection>>, _ContentShapeModifier<RoundedRectangle>> and conformance <> ModifiedContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyACyACyAA12TimelineViewVy07WorkoutB008PausableE8ScheduleVyAA08PeriodiceI0VGAA6HStackVyAA05TupleF0VyACyAA4TextVAA31AccessibilityAttachmentModifierVG_AOyAEyAkMyAOyAT_AF09FastDigitF0VtGGG_AEyAkVGtGSgtGGGAF15MetricValueFontVGAA022_EnvironmentKeyWritingP0VyAA15LayoutDirectionOGGAA01_d5ShapeP0VyAA16RoundedRectangleVGGMd);
    lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<TimelineView<PausableTimelineSchedule<PeriodicTimelineSchedule>, HStack<TupleView<(ModifiedContent<Text, AccessibilityAttachmentModifier>, TupleView<(TimelineView<PausableTimelineSchedule<PeriodicTimelineSchedule>, HStack<TupleView<(ModifiedContent<Text, AccessibilityAttachmentModifier>, FastDigitView)>>>, TimelineView<PausableTimelineSchedule<PeriodicTimelineSchedule>, FastDigitView>)>?)>>>, MetricValueFont>, _EnvironmentKeyWritingModifier<LayoutDirection>> and conformance <> ModifiedContent<A, B>();
    lazy protocol witness table accessor for type PausableTimelineSchedule<PeriodicTimelineSchedule> and conformance PausableTimelineSchedule<A>(&lazy protocol witness table cache variable for type _ContentShapeModifier<RoundedRectangle> and conformance _ContentShapeModifier<A>, &_s7SwiftUI21_ContentShapeModifierVyAA16RoundedRectangleVGMd);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<TimelineView<PausableTimelineSchedule<PeriodicTimelineSchedule>, HStack<TupleView<(ModifiedContent<Text, AccessibilityAttachmentModifier>, TupleView<(TimelineView<PausableTimelineSchedule<PeriodicTimelineSchedule>, HStack<TupleView<(ModifiedContent<Text, AccessibilityAttachmentModifier>, FastDigitView)>>>, TimelineView<PausableTimelineSchedule<PeriodicTimelineSchedule>, FastDigitView>)>?)>>>, MetricValueFont>, _EnvironmentKeyWritingModifier<LayoutDirection>>, _ContentShapeModifier<RoundedRectangle>> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<TimelineView<PausableTimelineSchedule<PeriodicTimelineSchedule>, HStack<TupleView<(ModifiedContent<Text, AccessibilityAttachmentModifier>, TupleView<(TimelineView<PausableTimelineSchedule<PeriodicTimelineSchedule>, HStack<TupleView<(ModifiedContent<Text, AccessibilityAttachmentModifier>, FastDigitView)>>>, TimelineView<PausableTimelineSchedule<PeriodicTimelineSchedule>, FastDigitView>)>?)>>>, MetricValueFont>, _EnvironmentKeyWritingModifier<LayoutDirection>> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<TimelineView<PausableTimelineSchedule<PeriodicTimelineSchedule>, HStack<TupleView<(ModifiedContent<Text, AccessibilityAttachmentModifier>, TupleView<(TimelineView<PausableTimelineSchedule<PeriodicTimelineSchedule>, HStack<TupleView<(ModifiedContent<Text, AccessibilityAttachmentModifier>, FastDigitView)>>>, TimelineView<PausableTimelineSchedule<PeriodicTimelineSchedule>, FastDigitView>)>?)>>>, MetricValueFont>, _EnvironmentKeyWritingModifier<LayoutDirection>> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<TimelineView<PausableTimelineSchedule<PeriodicTimelineSchedule>, HStack<TupleView<(ModifiedContent<Text, AccessibilityAttachmentModifier>, TupleView<(TimelineView<PausableTimelineSchedule<PeriodicTimelineSchedule>, HStack<TupleView<(ModifiedContent<Text, AccessibilityAttachmentModifier>, FastDigitView)>>>, TimelineView<PausableTimelineSchedule<PeriodicTimelineSchedule>, FastDigitView>)>?)>>>, MetricValueFont>, _EnvironmentKeyWritingModifier<LayoutDirection>> and conformance <> ModifiedContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyACyAA12TimelineViewVy07WorkoutB008PausableE8ScheduleVyAA08PeriodiceI0VGAA6HStackVyAA05TupleF0VyACyAA4TextVAA31AccessibilityAttachmentModifierVG_AOyAEyAkMyAOyAT_AF09FastDigitF0VtGGG_AEyAkVGtGSgtGGGAF15MetricValueFontVGAA022_EnvironmentKeyWritingP0VyAA15LayoutDirectionOGGMd);
    lazy protocol witness table accessor for type ModifiedContent<TimelineView<PausableTimelineSchedule<PeriodicTimelineSchedule>, HStack<TupleView<(ModifiedContent<Text, AccessibilityAttachmentModifier>, TupleView<(TimelineView<PausableTimelineSchedule<PeriodicTimelineSchedule>, HStack<TupleView<(ModifiedContent<Text, AccessibilityAttachmentModifier>, FastDigitView)>>>, TimelineView<PausableTimelineSchedule<PeriodicTimelineSchedule>, FastDigitView>)>?)>>>, MetricValueFont> and conformance <> ModifiedContent<A, B>();
    lazy protocol witness table accessor for type PausableTimelineSchedule<PeriodicTimelineSchedule> and conformance PausableTimelineSchedule<A>(&lazy protocol witness table cache variable for type _EnvironmentKeyWritingModifier<LayoutDirection> and conformance _EnvironmentKeyWritingModifier<A>, &_s7SwiftUI30_EnvironmentKeyWritingModifierVyAA15LayoutDirectionOGMd);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<TimelineView<PausableTimelineSchedule<PeriodicTimelineSchedule>, HStack<TupleView<(ModifiedContent<Text, AccessibilityAttachmentModifier>, TupleView<(TimelineView<PausableTimelineSchedule<PeriodicTimelineSchedule>, HStack<TupleView<(ModifiedContent<Text, AccessibilityAttachmentModifier>, FastDigitView)>>>, TimelineView<PausableTimelineSchedule<PeriodicTimelineSchedule>, FastDigitView>)>?)>>>, MetricValueFont>, _EnvironmentKeyWritingModifier<LayoutDirection>> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<TimelineView<PausableTimelineSchedule<PeriodicTimelineSchedule>, HStack<TupleView<(ModifiedContent<Text, AccessibilityAttachmentModifier>, TupleView<(TimelineView<PausableTimelineSchedule<PeriodicTimelineSchedule>, HStack<TupleView<(ModifiedContent<Text, AccessibilityAttachmentModifier>, FastDigitView)>>>, TimelineView<PausableTimelineSchedule<PeriodicTimelineSchedule>, FastDigitView>)>?)>>>, MetricValueFont> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<TimelineView<PausableTimelineSchedule<PeriodicTimelineSchedule>, HStack<TupleView<(ModifiedContent<Text, AccessibilityAttachmentModifier>, TupleView<(TimelineView<PausableTimelineSchedule<PeriodicTimelineSchedule>, HStack<TupleView<(ModifiedContent<Text, AccessibilityAttachmentModifier>, FastDigitView)>>>, TimelineView<PausableTimelineSchedule<PeriodicTimelineSchedule>, FastDigitView>)>?)>>>, MetricValueFont> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<TimelineView<PausableTimelineSchedule<PeriodicTimelineSchedule>, HStack<TupleView<(ModifiedContent<Text, AccessibilityAttachmentModifier>, TupleView<(TimelineView<PausableTimelineSchedule<PeriodicTimelineSchedule>, HStack<TupleView<(ModifiedContent<Text, AccessibilityAttachmentModifier>, FastDigitView)>>>, TimelineView<PausableTimelineSchedule<PeriodicTimelineSchedule>, FastDigitView>)>?)>>>, MetricValueFont> and conformance <> ModifiedContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyAA12TimelineViewVy07WorkoutB008PausableE8ScheduleVyAA08PeriodiceI0VGAA6HStackVyAA05TupleF0VyACyAA4TextVAA31AccessibilityAttachmentModifierVG_AOyAEyAkMyAOyAT_AF09FastDigitF0VtGGG_AEyAkVGtGSgtGGGAF15MetricValueFontVGMd);
    lazy protocol witness table accessor for type TimelineView<PausableTimelineSchedule<PeriodicTimelineSchedule>, HStack<TupleView<(ModifiedContent<Text, AccessibilityAttachmentModifier>, TupleView<(TimelineView<PausableTimelineSchedule<PeriodicTimelineSchedule>, HStack<TupleView<(ModifiedContent<Text, AccessibilityAttachmentModifier>, FastDigitView)>>>, TimelineView<PausableTimelineSchedule<PeriodicTimelineSchedule>, FastDigitView>)>?)>>> and conformance <> TimelineView<A, B>();
    lazy protocol witness table accessor for type MetricValueFont and conformance MetricValueFont();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<TimelineView<PausableTimelineSchedule<PeriodicTimelineSchedule>, HStack<TupleView<(ModifiedContent<Text, AccessibilityAttachmentModifier>, TupleView<(TimelineView<PausableTimelineSchedule<PeriodicTimelineSchedule>, HStack<TupleView<(ModifiedContent<Text, AccessibilityAttachmentModifier>, FastDigitView)>>>, TimelineView<PausableTimelineSchedule<PeriodicTimelineSchedule>, FastDigitView>)>?)>>>, MetricValueFont> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type TimelineView<PausableTimelineSchedule<PeriodicTimelineSchedule>, HStack<TupleView<(ModifiedContent<Text, AccessibilityAttachmentModifier>, TupleView<(TimelineView<PausableTimelineSchedule<PeriodicTimelineSchedule>, HStack<TupleView<(ModifiedContent<Text, AccessibilityAttachmentModifier>, FastDigitView)>>>, TimelineView<PausableTimelineSchedule<PeriodicTimelineSchedule>, FastDigitView>)>?)>>> and conformance <> TimelineView<A, B>()
{
  result = lazy protocol witness table cache variable for type TimelineView<PausableTimelineSchedule<PeriodicTimelineSchedule>, HStack<TupleView<(ModifiedContent<Text, AccessibilityAttachmentModifier>, TupleView<(TimelineView<PausableTimelineSchedule<PeriodicTimelineSchedule>, HStack<TupleView<(ModifiedContent<Text, AccessibilityAttachmentModifier>, FastDigitView)>>>, TimelineView<PausableTimelineSchedule<PeriodicTimelineSchedule>, FastDigitView>)>?)>>> and conformance <> TimelineView<A, B>;
  if (!lazy protocol witness table cache variable for type TimelineView<PausableTimelineSchedule<PeriodicTimelineSchedule>, HStack<TupleView<(ModifiedContent<Text, AccessibilityAttachmentModifier>, TupleView<(TimelineView<PausableTimelineSchedule<PeriodicTimelineSchedule>, HStack<TupleView<(ModifiedContent<Text, AccessibilityAttachmentModifier>, FastDigitView)>>>, TimelineView<PausableTimelineSchedule<PeriodicTimelineSchedule>, FastDigitView>)>?)>>> and conformance <> TimelineView<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI12TimelineViewVy07WorkoutB008PausableC8ScheduleVyAA08PeriodiccG0VGAA6HStackVyAA05TupleD0VyAA15ModifiedContentVyAA4TextVAA31AccessibilityAttachmentModifierVG_AMyACyAiKyAMyAT_AD09FastDigitD0VtGGG_ACyAiVGtGSgtGGGMd);
    lazy protocol witness table accessor for type PausableTimelineSchedule<PeriodicTimelineSchedule> and conformance PausableTimelineSchedule<A>(&lazy protocol witness table cache variable for type HStack<TupleView<(ModifiedContent<Text, AccessibilityAttachmentModifier>, TupleView<(TimelineView<PausableTimelineSchedule<PeriodicTimelineSchedule>, HStack<TupleView<(ModifiedContent<Text, AccessibilityAttachmentModifier>, FastDigitView)>>>, TimelineView<PausableTimelineSchedule<PeriodicTimelineSchedule>, FastDigitView>)>?)>> and conformance HStack<A>, &_s7SwiftUI6HStackVyAA9TupleViewVyAA15ModifiedContentVyAA4TextVAA31AccessibilityAttachmentModifierVG_AEyAA08TimelineE0Vy07WorkoutB008PausableL8ScheduleVyAA08PeriodiclO0VGACyAEyAL_AO09FastDigitE0VtGGG_ANyAtVGtGSgtGGMd);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type TimelineView<PausableTimelineSchedule<PeriodicTimelineSchedule>, HStack<TupleView<(ModifiedContent<Text, AccessibilityAttachmentModifier>, TupleView<(TimelineView<PausableTimelineSchedule<PeriodicTimelineSchedule>, HStack<TupleView<(ModifiedContent<Text, AccessibilityAttachmentModifier>, FastDigitView)>>>, TimelineView<PausableTimelineSchedule<PeriodicTimelineSchedule>, FastDigitView>)>?)>>> and conformance <> TimelineView<A, B>);
  }

  return result;
}

uint64_t specialized closure #1 in TimelineView<>.init(_:content:)@<X0>(uint64_t a1@<X0>, void (*a2)(__int128 *__return_ptr, _BYTE *)@<X1>, _OWORD *a3@<X8>)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI12TimelineViewV7ContextVyAA011EveryMinuteC8ScheduleVs5NeverO_GMd);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = &v19[-v9];
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI12TimelineViewV7ContextVy07WorkoutB008PausableC8ScheduleVyAA08PeriodiccH0VGAA6ZStackVyAA19_ConditionalContentVyAA05TupleD0VyAF08GoalRingD0V_AA08ModifiedL0VyAF10MetricTextVAA12_FrameLayoutVGtGAWGG_GMd);
  v13 = *(v11 - 8);
  result = v11 - 8;
  if (*(v13 + 64) == v8)
  {
    (*(v7 + 16))(v10, a1, v6);
    a2(&v20, v10);
    (*(v7 + 8))(v10, v6);
    v38 = v28;
    v39[0] = v29[0];
    *(v39 + 9) = *(v29 + 9);
    v34 = v24;
    v35 = v25;
    v36 = v26;
    v37 = v27;
    v30 = v20;
    v31 = v21;
    v32 = v22;
    v33 = v23;
    v40[8] = v28;
    v41[0] = v29[0];
    *(v41 + 9) = *(v29 + 9);
    v40[4] = v24;
    v40[5] = v25;
    v40[6] = v26;
    v40[7] = v27;
    v40[0] = v20;
    v40[1] = v21;
    v40[2] = v22;
    v40[3] = v23;
    outlined init with copy of Date?(&v30, v19, &_s7SwiftUI6ZStackVyAA19_ConditionalContentVyAA9TupleViewVy07WorkoutB008GoalRingG0V_AA08ModifiedE0VyAH10MetricTextVAA12_FrameLayoutVGtGANGGMd);
    result = outlined destroy of Date?(v40, &_s7SwiftUI6ZStackVyAA19_ConditionalContentVyAA9TupleViewVy07WorkoutB008GoalRingG0V_AA08ModifiedE0VyAH10MetricTextVAA12_FrameLayoutVGtGANGGMd);
    v14 = v39[0];
    a3[8] = v38;
    a3[9] = v14;
    *(a3 + 153) = *(v39 + 9);
    v15 = v35;
    a3[4] = v34;
    a3[5] = v15;
    v16 = v37;
    a3[6] = v36;
    a3[7] = v16;
    v17 = v31;
    *a3 = v30;
    a3[1] = v17;
    v18 = v33;
    a3[2] = v32;
    a3[3] = v18;
  }

  else
  {
    __break(1u);
  }

  return result;
}

{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI12TimelineViewV7ContextVyAA011EveryMinuteC8ScheduleVs5NeverO_GMd);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = &v16[-v9];
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI12TimelineViewV7ContextVyAA09AnimationC8ScheduleVAA15ModifiedContentVyAIyAIyAIyAA5ImageVAA13_OffsetEffectVGAA20_TransactionModifierVGAA12_FrameLayoutVGAA05_ClipL0VyAA9RectangleVGG_GMd);
  v13 = *(v11 - 8);
  result = v11 - 8;
  if (*(v13 + 64) == v8)
  {
    (*(v7 + 16))(v10, a1, v6);
    a2(&v17, v10);
    (*(v7 + 8))(v10, v6);
    v24 = v19;
    v25 = v20;
    v26[0] = v21[0];
    *(v26 + 10) = *(v21 + 10);
    v22 = v17;
    v23 = v18;
    *&v28[10] = *(v21 + 10);
    v27[2] = v19;
    v27[3] = v20;
    *v28 = v21[0];
    v27[0] = v17;
    v27[1] = v18;
    outlined init with copy of Date?(&v22, v16, &_s7SwiftUI15ModifiedContentVyACyACyACyAA5ImageVAA13_OffsetEffectVGAA20_TransactionModifierVGAA12_FrameLayoutVGAA05_ClipG0VyAA9RectangleVGGMd);
    result = outlined destroy of Date?(v27, &_s7SwiftUI15ModifiedContentVyACyACyACyAA5ImageVAA13_OffsetEffectVGAA20_TransactionModifierVGAA12_FrameLayoutVGAA05_ClipG0VyAA9RectangleVGGMd);
    v14 = v25;
    a3[2] = v24;
    a3[3] = v14;
    a3[4] = v26[0];
    *(a3 + 74) = *(v26 + 10);
    v15 = v23;
    *a3 = v22;
    a3[1] = v15;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t specialized closure #1 in TimelineView<>.init(_:content:)(uint64_t a1, void (*a2)(char *), uint64_t a3)
{
  return specialized closure #1 in TimelineView<>.init(_:content:)(a1, a2, a3, &_s7SwiftUI12TimelineViewV7ContextVyAA08PeriodicC8ScheduleVAA6ZStackVyAA05TupleD0VyAA15ModifiedContentVyAMyAMyAMyAA6CircleVAA12_FrameLayoutVGAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGAA14_OpacityEffectVGAA010_AnimationR0VySbGG_AMyAMyAMyAMyAMy07WorkoutB0018TransitionThinkingD0VAXGAA08_PaddingN0VGAQGA_GA3_GAMyAMyAMyAyA06_ScaleU0VGA_GA3_GAMyAMyAA5ImageVATyAA4FontVSgGGAA016_ForegroundStyleR0VyAVGGtGG_GMd);
}

{
  return specialized closure #1 in TimelineView<>.init(_:content:)(a1, a2, a3, &_s7SwiftUI12TimelineViewV7ContextVyAA08PeriodicC8ScheduleVAA15ModifiedContentVyAIyAA4TextVAA14_PaddingLayoutVGAA31AccessibilityAttachmentModifierVG_GMd);
}

uint64_t specialized closure #1 in TimelineView<>.init(_:content:)(uint64_t a1, void (*a2)(char *), uint64_t a3, uint64_t *a4)
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI12TimelineViewV7ContextVyAA011EveryMinuteC8ScheduleVs5NeverO_GMd);
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  v11 = &v15 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(a4);
  v14 = *(v12 - 8);
  result = v12 - 8;
  if (*(v14 + 64) == v9)
  {
    (*(v8 + 16))(v11, a1, v7);
    a2(v11);
    return (*(v8 + 8))(v11, v7);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t lazy protocol witness table accessor for type PausableTimelineSchedule<PeriodicTimelineSchedule> and conformance PausableTimelineSchedule<A>(unint64_t *a1, uint64_t *a2)
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

uint64_t objectdestroy_15Tm()
{
  v1 = type metadata accessor for WorkoutTimeView();
  v2 = v0 + ((*(*(v1 - 8) + 80) + 16) & ~*(*(v1 - 8) + 80));
  sub_20C6810AC(*v2, *(v2 + 8));
  sub_20C6810AC(*(v2 + 16), *(v2 + 24));
  v3 = *(v1 + 24);
  v4 = type metadata accessor for Date();
  v5 = *(v4 - 8);
  if (!(*(v5 + 48))(v2 + v3, 1, v4))
  {
    (*(v5 + 8))(v2 + v3, v4);
  }

  return swift_deallocObject();
}

uint64_t partial apply for closure #1 in closure #1 in closure #1 in WorkoutTimeView.body.getter(uint64_t a1, uint64_t (*a2)(uint64_t, uint64_t))
{
  v4 = *(type metadata accessor for WorkoutTimeView() - 8);
  v5 = v2 + ((*(v4 + 80) + 16) & ~*(v4 + 80));

  return a2(a1, v5);
}

uint64_t _s11WorkoutCore0A14StatePublisherCAC7Combine16ObservableObjectAAWlTm_0(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t outlined init with take of TupleView<(TimelineView<PausableTimelineSchedule<PeriodicTimelineSchedule>, HStack<TupleView<(ModifiedContent<Text, AccessibilityAttachmentModifier>, FastDigitView)>>>, TimelineView<PausableTimelineSchedule<PeriodicTimelineSchedule>, FastDigitView>)>(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI9TupleViewVyAA08TimelineD0Vy07WorkoutB008PausableE8ScheduleVyAA08PeriodiceH0VGAA6HStackVyACyAA15ModifiedContentVyAA4TextVAA31AccessibilityAttachmentModifierVG_AF09FastDigitD0VtGGG_AEyAkVGtGMd);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t specialized RandomNumberGenerator.next<A>(upperBound:)(unint64_t result)
{
  if (result)
  {
    v1 = result;
    v3 = 0;
    MEMORY[0x20F30E0A0](&v3, 8);
    result = (v3 * v1) >> 64;
    if (v3 * v1 < v1)
    {
      v2 = -v1 % v1;
      if (v2 > v3 * v1)
      {
        do
        {
          v3 = 0;
          MEMORY[0x20F30E0A0](&v3, 8);
        }

        while (v2 > v3 * v1);
        return (v3 * v1) >> 64;
      }
    }
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t _s9WorkoutUI0A8TimeViewVWOcTm_1(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t outlined destroy of FastDigitView(uint64_t a1)
{
  v2 = type metadata accessor for FastDigitView();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t outlined init with copy of Date?(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(a3);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t outlined destroy of Date?(uint64_t a1, uint64_t *a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(a2);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t getEnumTagSinglePayload for RaceFilterPickerView(uint64_t a1, int a2)
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

uint64_t storeEnumTagSinglePayload for RaceFilterPickerView(uint64_t result, int a2, int a3)
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

uint64_t RaceFilterPickerView.body.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v34 = a3;
  v37 = a4;
  v6 = type metadata accessor for InlinePickerStyle();
  v7 = *(v6 - 8);
  v35 = v6;
  v36 = v7;
  MEMORY[0x28223BE20](v6);
  v9 = &v32 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI7BindingVy11WorkoutCore10RaceFilterOGMd);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v32 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v15 = &v32 - v14;
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI6PickerVyAA9EmptyViewV11WorkoutCore10RaceFilterOAA7ForEachVySayAHGSSAA0E0PAAE3tag_15includeOptionalQrqd___SbtSHRd__lFQOyAA6VStackVyAA05TupleE0VyAA15ModifiedContentVyAA4TextVAA30_EnvironmentKeyWritingModifierVySiSgGG_AUyAUyAUyAQyASyAW_AWtGGAYyAA5ColorVSgGG0fB019DynamicTypeDisabledVGA_GtGG_AHQo_GGMd);
  v16 = *(v33 - 8);
  MEMORY[0x28223BE20](v33);
  v18 = &v32 - v17;
  v19 = type metadata accessor for RaceWorkoutConfiguration();
  v20 = _s11WorkoutCore04RaceA13ConfigurationCAA0aD0C7Combine16ObservableObjectAAWlTm_0(&lazy protocol witness table cache variable for type RaceWorkoutConfiguration and conformance WorkoutConfiguration, MEMORY[0x277D7D950]);
  v32 = a2;
  v21 = MEMORY[0x20F308920](a1, a2, v19, v20);
  swift_getKeyPath();
  ObservedObject.Wrapper.subscript.getter();

  v38 = a1;
  v39 = a2;
  v40 = v34;
  outlined init with copy of Binding<RaceFilter>(v15, v12, &_s7SwiftUI7BindingVy11WorkoutCore10RaceFilterOGMd);
  type metadata accessor for RaceFilter();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI7ForEachVySay11WorkoutCore10RaceFilterOGSSAA4ViewPAAE3tag_15includeOptionalQrqd___SbtSHRd__lFQOyAA6VStackVyAA05TupleI0VyAA15ModifiedContentVyAA4TextVAA30_EnvironmentKeyWritingModifierVySiSgGG_AQyAQyAQyAMyAOyAS_AStGGAUyAA5ColorVSgGG0eB019DynamicTypeDisabledVGAWGtGG_AFQo_GMd);
  _s11WorkoutCore04RaceA13ConfigurationCAA0aD0C7Combine16ObservableObjectAAWlTm_0(&lazy protocol witness table cache variable for type RaceFilter and conformance RaceFilter, MEMORY[0x277D7DE28]);
  lazy protocol witness table accessor for type ForEach<[RaceFilter], String, <<opaque return type of View.tag<A>(_:includeOptional:)>>.0> and conformance <> ForEach<A, B, C>();
  Picker.init(selection:label:content:)();
  outlined destroy of Binding<RaceFilter>(v15, &_s7SwiftUI7BindingVy11WorkoutCore10RaceFilterOGMd);
  InlinePickerStyle.init()();
  lazy protocol witness table accessor for type VStack<TupleView<(ModifiedContent<Text, _EnvironmentKeyWritingModifier<Int?>>, ModifiedContent<ModifiedContent<ModifiedContent<VStack<TupleView<(Text, Text)>>, _EnvironmentKeyWritingModifier<Color?>>, DynamicTypeDisabled>, _EnvironmentKeyWritingModifier<Int?>>)>> and conformance VStack<A>(&lazy protocol witness table cache variable for type Picker<EmptyView, RaceFilter, ForEach<[RaceFilter], String, <<opaque return type of View.tag<A>(_:includeOptional:)>>.0>> and conformance Picker<A, B, C>, &_s7SwiftUI6PickerVyAA9EmptyViewV11WorkoutCore10RaceFilterOAA7ForEachVySayAHGSSAA0E0PAAE3tag_15includeOptionalQrqd___SbtSHRd__lFQOyAA6VStackVyAA05TupleE0VyAA15ModifiedContentVyAA4TextVAA30_EnvironmentKeyWritingModifierVySiSgGG_AUyAUyAUyAQyASyAW_AWtGGAYyAA5ColorVSgGG0fB019DynamicTypeDisabledVGA_GtGG_AHQo_GGMd);
  v22 = v37;
  v23 = v33;
  v24 = v35;
  View.pickerStyle<A>(_:)();
  (*(v36 + 8))(v9, v24);
  (*(v16 + 8))(v18, v23);
  WorkoutConfiguration.displayColor.getter();
  v25 = Color.init(uiColor:)();
  KeyPath = swift_getKeyPath();
  v27 = (v22 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyAA4ViewPAAE11pickerStyleyQrqd__AA06PickerG0Rd__lFQOyAA0H0VyAA05EmptyE0V11WorkoutCore10RaceFilterOAA7ForEachVySayANGSSAeAE3tag_15includeOptionalQrqd___SbtSHRd__lFQOyAA6VStackVyAA05TupleE0VyACyAA4TextVAA30_EnvironmentKeyWritingModifierVySiSgGG_ACyACyACyAUyAWyAY_AYtGGA_yAA5ColorVSgGG0jB019DynamicTypeDisabledVGA1_GtGG_ANQo_GG_AA06InlinehG0VQo_A8_GMd) + 36));
  *v27 = KeyPath;
  v27[1] = v25;
  WorkoutConfiguration.displayColor.getter();
  v28 = Color.init(uiColor:)();
  v29 = swift_getKeyPath();
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyACyAA4ViewPAAE11pickerStyleyQrqd__AA06PickerG0Rd__lFQOyAA0H0VyAA05EmptyE0V11WorkoutCore10RaceFilterOAA7ForEachVySayANGSSAeAE3tag_15includeOptionalQrqd___SbtSHRd__lFQOyAA6VStackVyAA05TupleE0VyACyAA4TextVAA30_EnvironmentKeyWritingModifierVySiSgGG_ACyACyACyAUyAWyAY_AYtGGA_yAA5ColorVSgGG0jB019DynamicTypeDisabledVGA1_GtGG_ANQo_GG_AA06InlinehG0VQo_A8_GA8_GMd);
  v31 = (v22 + *(result + 36));
  *v31 = v29;
  v31[1] = v28;
  return result;
}

uint64_t key path setter for RaceWorkoutConfiguration.raceFilter : RaceWorkoutConfiguration(uint64_t a1)
{
  v2 = type metadata accessor for RaceFilter();
  v3 = MEMORY[0x28223BE20](v2);
  (*(v5 + 16))(&v7 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v3);
  return RaceWorkoutConfiguration.raceFilter.setter();
}

uint64_t closure #1 in RaceFilterPickerView.body.getter(uint64_t a1, void *a2, void *a3)
{
  static RaceFilter.allCases.getter();
  v6 = swift_allocObject();
  v6[2] = a1;
  v6[3] = a2;
  v6[4] = a3;
  v7 = a2;
  v8 = a3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay11WorkoutCore10RaceFilterOGMd);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI4ViewPAAE3tag_15includeOptionalQrqd___SbtSHRd__lFQOyAA6VStackVyAA05TupleC0VyAA15ModifiedContentVyAA4TextVAA30_EnvironmentKeyWritingModifierVySiSgGG_AKyAKyAKyAGyAIyAM_AMtGGAOyAA5ColorVSgGG07WorkoutB019DynamicTypeDisabledVGAQGtGG_0Q4Core10RaceFilterOQo_Md);
  lazy protocol witness table accessor for type VStack<TupleView<(ModifiedContent<Text, _EnvironmentKeyWritingModifier<Int?>>, ModifiedContent<ModifiedContent<ModifiedContent<VStack<TupleView<(Text, Text)>>, _EnvironmentKeyWritingModifier<Color?>>, DynamicTypeDisabled>, _EnvironmentKeyWritingModifier<Int?>>)>> and conformance VStack<A>(&lazy protocol witness table cache variable for type [RaceFilter] and conformance [A], &_sSay11WorkoutCore10RaceFilterOGMd);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI6VStackVyAA9TupleViewVyAA15ModifiedContentVyAA4TextVAA30_EnvironmentKeyWritingModifierVySiSgGG_AGyAGyAGyACyAEyAI_AItGGAKyAA5ColorVSgGG07WorkoutB019DynamicTypeDisabledVGAMGtGGMd);
  type metadata accessor for RaceFilter();
  lazy protocol witness table accessor for type VStack<TupleView<(ModifiedContent<Text, _EnvironmentKeyWritingModifier<Int?>>, ModifiedContent<ModifiedContent<ModifiedContent<VStack<TupleView<(Text, Text)>>, _EnvironmentKeyWritingModifier<Color?>>, DynamicTypeDisabled>, _EnvironmentKeyWritingModifier<Int?>>)>> and conformance VStack<A>(&lazy protocol witness table cache variable for type VStack<TupleView<(ModifiedContent<Text, _EnvironmentKeyWritingModifier<Int?>>, ModifiedContent<ModifiedContent<ModifiedContent<VStack<TupleView<(Text, Text)>>, _EnvironmentKeyWritingModifier<Color?>>, DynamicTypeDisabled>, _EnvironmentKeyWritingModifier<Int?>>)>> and conformance VStack<A>, &_s7SwiftUI6VStackVyAA9TupleViewVyAA15ModifiedContentVyAA4TextVAA30_EnvironmentKeyWritingModifierVySiSgGG_AGyAGyAGyACyAEyAI_AItGGAKyAA5ColorVSgGG07WorkoutB019DynamicTypeDisabledVGAMGtGGMd);
  v9 = MEMORY[0x277D7DE28];
  _s11WorkoutCore04RaceA13ConfigurationCAA0aD0C7Combine16ObservableObjectAAWlTm_0(&lazy protocol witness table cache variable for type RaceFilter and conformance RaceFilter, MEMORY[0x277D7DE28]);
  swift_getOpaqueTypeConformance2();
  _s11WorkoutCore04RaceA13ConfigurationCAA0aD0C7Combine16ObservableObjectAAWlTm_0(&lazy protocol witness table cache variable for type RaceFilter and conformance RaceFilter, v9);
  return ForEach<>.init(_:content:)();
}

double closure #1 in closure #1 in RaceFilterPickerView.body.getter@<D0>(uint64_t a1@<X0>, uint64_t a2@<X2>, void *a3@<X3>, uint64_t a4@<X8>)
{
  v8 = static HorizontalAlignment.leading.getter();
  v31 = 0;
  closure #1 in closure #1 in closure #1 in RaceFilterPickerView.body.getter(a1, a2, a3, &v18);
  v40 = v26;
  v41 = v27;
  v42 = v28;
  v36 = v22;
  v37 = v23;
  v38 = v24;
  v39 = v25;
  v32 = v18;
  v33 = v19;
  v34 = v20;
  v35 = v21;
  v44[8] = v26;
  v44[9] = v27;
  v44[10] = v28;
  v44[4] = v22;
  v44[5] = v23;
  v44[6] = v24;
  v44[7] = v25;
  v44[0] = v18;
  v44[1] = v19;
  v43 = v29;
  v45 = v29;
  v44[2] = v20;
  v44[3] = v21;
  outlined init with copy of Binding<RaceFilter>(&v32, &v17, &_s7SwiftUI9TupleViewVyAA15ModifiedContentVyAA4TextVAA30_EnvironmentKeyWritingModifierVySiSgGG_AEyAEyAEyAA6VStackVyACyAG_AGtGGAIyAA5ColorVSgGG07WorkoutB019DynamicTypeDisabledVGAKGtGMd);
  outlined destroy of Binding<RaceFilter>(v44, &_s7SwiftUI9TupleViewVyAA15ModifiedContentVyAA4TextVAA30_EnvironmentKeyWritingModifierVySiSgGG_AEyAEyAEyAA6VStackVyACyAG_AGtGGAIyAA5ColorVSgGG07WorkoutB019DynamicTypeDisabledVGAKGtGMd);
  *&v30[135] = v40;
  *&v30[151] = v41;
  *&v30[167] = v42;
  *&v30[71] = v36;
  *&v30[87] = v37;
  *&v30[103] = v38;
  *&v30[119] = v39;
  *&v30[7] = v32;
  *&v30[23] = v33;
  *&v30[39] = v34;
  v30[183] = v43;
  *&v30[55] = v35;
  LOBYTE(a2) = v31;
  v9 = a4 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyAA6VStackVyAA9TupleViewVyACyAA4TextVAA30_EnvironmentKeyWritingModifierVySiSgGG_ACyACyACyAEyAGyAI_AItGGAKyAA5ColorVSgGG07WorkoutB019DynamicTypeDisabledVGAMGtGGAA09_TagTraitkL0Vy0N4Core10RaceFilterOGGMd) + 36);
  v10 = type metadata accessor for RaceFilter();
  (*(*(v10 - 8) + 16))(v9, a1, v10);
  *(v9 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI24_TagTraitWritingModifierVy11WorkoutCore10RaceFilterOGMd) + 36)) = 1;
  v11 = *&v30[144];
  *(a4 + 145) = *&v30[128];
  *(a4 + 161) = v11;
  *(a4 + 177) = *&v30[160];
  v12 = *&v30[80];
  *(a4 + 81) = *&v30[64];
  *(a4 + 97) = v12;
  v13 = *&v30[112];
  *(a4 + 113) = *&v30[96];
  *(a4 + 129) = v13;
  v14 = *&v30[16];
  *(a4 + 17) = *v30;
  *(a4 + 33) = v14;
  result = *&v30[32];
  v16 = *&v30[48];
  *(a4 + 49) = *&v30[32];
  *a4 = v8;
  *(a4 + 8) = 0;
  *(a4 + 16) = a2;
  *(a4 + 193) = *&v30[176];
  *(a4 + 65) = v16;
  return result;
}

uint64_t closure #1 in closure #1 in closure #1 in RaceFilterPickerView.body.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X2>, void *a3@<X3>, uint64_t a4@<X8>)
{
  v53 = a2;
  v54 = a3;
  v52 = a1;
  v50 = a4;
  v51 = type metadata accessor for Font.Leading();
  v4 = *(v51 - 8);
  MEMORY[0x28223BE20](v51);
  v6 = &v47 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI4FontV6DesignOSgMd);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v47 - v8;
  v10 = type metadata accessor for Font.TextStyle();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = &v47 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v68[0] = RaceFilter.displayName.getter();
  *(&v68[0] + 1) = v14;
  lazy protocol witness table accessor for type String and conformance String();
  v15 = Text.init<A>(_:)();
  v48 = v16;
  v49 = v15;
  v18 = v17;
  v47 = v19;
  (*(v11 + 104))(v13, *MEMORY[0x277CE0A68], v10);
  v20 = type metadata accessor for Font.Design();
  (*(*(v20 - 8) + 56))(v9, 1, 1, v20);
  static Font.Weight.medium.getter();
  static Font.system(_:design:weight:)();
  outlined destroy of Binding<RaceFilter>(v9, &_s7SwiftUI4FontV6DesignOSgMd);
  (*(v11 + 8))(v13, v10);
  v21 = v51;
  (*(v4 + 104))(v6, *MEMORY[0x277CE0A10], v51);
  Font.leading(_:)();

  (*(v4 + 8))(v6, v21);
  v22 = v48;
  v23 = v49;
  v24 = Text.font(_:)();
  v26 = v25;
  LOBYTE(v6) = v27;

  outlined consume of Text.Storage(v23, v22, v18 & 1);

  static Color.primary.getter();
  v28 = Text.foregroundColor(_:)();
  v30 = v29;
  LODWORD(v51) = v31;
  v33 = v32;

  outlined consume of Text.Storage(v24, v26, v6 & 1);

  KeyPath = swift_getKeyPath();
  RaceFilterPickerView.filterDescriptionTextViewFor(_:)(v52, v54, &v59);
  v35 = v63;
  v66[4] = v63;
  v66[5] = v64;
  v67[0] = v65[0];
  *(v67 + 9) = *(v65 + 9);
  v66[0] = v59;
  v66[1] = v60;
  v66[2] = v61;
  v66[3] = v62;
  *(&v56[4] + 7) = v63;
  v36 = v64;
  *(&v56[5] + 7) = v64;
  *(&v56[6] + 7) = v65[0];
  v56[7] = *(v65 + 9);
  *(v56 + 7) = v59;
  v37 = v59;
  v38 = v60;
  *(&v56[1] + 7) = v60;
  *(&v56[2] + 7) = v61;
  v39 = v61;
  v40 = v62;
  *(&v56[3] + 7) = v62;
  v41 = v56[2];
  v42 = v50;
  *(v50 + 97) = v56[3];
  *(v42 + 81) = v41;
  v43 = v56[0];
  *(v42 + 65) = v56[1];
  *(v42 + 49) = v43;
  v44 = v56[6];
  *(v42 + 161) = v56[7];
  *(v42 + 145) = v44;
  v45 = v56[4];
  *(v42 + 129) = v56[5];
  *(v42 + 113) = v45;
  v68[2] = v39;
  v68[3] = v40;
  LOBYTE(v22) = v51 & 1;
  v58 = v51 & 1;
  v57 = 0;
  *v42 = v28;
  *(v42 + 8) = v30;
  *(v42 + 16) = v22;
  *(v42 + 24) = v33;
  *(v42 + 32) = KeyPath;
  *(v42 + 40) = 1;
  *(v42 + 48) = 0;
  v68[0] = v37;
  v68[1] = v38;
  *(v69 + 9) = *(v65 + 9);
  v68[5] = v36;
  v69[0] = v65[0];
  v68[4] = v35;
  outlined copy of Text.Storage(v28, v30, v22);

  outlined init with copy of Binding<RaceFilter>(v66, &v55, &_s7SwiftUI15ModifiedContentVyACyACyAA6VStackVyAA9TupleViewVyAA4TextV_AItGGAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGG07WorkoutB019DynamicTypeDisabledVGAMySiSgGGMd);
  outlined destroy of Binding<RaceFilter>(v68, &_s7SwiftUI15ModifiedContentVyACyACyAA6VStackVyAA9TupleViewVyAA4TextV_AItGGAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGG07WorkoutB019DynamicTypeDisabledVGAMySiSgGGMd);
  outlined consume of Text.Storage(v28, v30, v22);
}

uint64_t RaceFilter.displayName.getter()
{
  v1 = type metadata accessor for RaceFilter();
  v2 = *(v1 - 8);
  v3 = MEMORY[0x28223BE20](v1);
  v5 = &v17 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v2 + 16))(v5, v0, v1, v3);
  v6 = (*(v2 + 88))(v5, v1);
  if (v6 == *MEMORY[0x277D7DE18])
  {
    if (one-time initialization token for WorkoutUIBundle != -1)
    {
      swift_once();
    }

    swift_beginAccess();
    v7 = WorkoutUIBundle.super.isa;
    v16 = 0xE000000000000000;
    v8 = 0x617A696C61636F4CLL;
    v9 = 0xEB00000000656C62;
    v10 = 0x800000020CB98680;
    v11 = 0xD000000000000013;
LABEL_9:
    v12._countAndFlagsBits = 0;
    v12._object = 0xE000000000000000;
    v13 = 0;
    countAndFlagsBits = NSLocalizedString(_:tableName:bundle:value:comment:)(*&v11, *&v8, v7, v12, *(&v16 - 1))._countAndFlagsBits;

    return countAndFlagsBits;
  }

  if (v6 == *MEMORY[0x277D7DE20])
  {
    if (one-time initialization token for WorkoutUIBundle != -1)
    {
      swift_once();
    }

    swift_beginAccess();
    v7 = WorkoutUIBundle.super.isa;
    v16 = 0xE000000000000000;
    v8 = 0x617A696C61636F4CLL;
    v9 = 0xEB00000000656C62;
    v11 = 0xD000000000000017;
    v10 = 0x800000020CB98660;
    goto LABEL_9;
  }

  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

uint64_t RaceFilterPickerView.filterDescriptionTextViewFor(_:)@<X0>(uint64_t a1@<X0>, void *a2@<X3>, uint64_t *a3@<X8>)
{
  v97 = a3;
  v98 = type metadata accessor for Font.Leading();
  v96 = *(v98 - 8);
  MEMORY[0x28223BE20](v98);
  v94 = &v86 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI4FontV6DesignOSgMd);
  MEMORY[0x28223BE20](v6 - 8);
  v92 = &v86 - v7;
  v93 = type metadata accessor for Font.TextStyle();
  v91 = *(v93 - 8);
  MEMORY[0x28223BE20](v93);
  v90 = &v86 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (one-time initialization token for WorkoutUIBundle != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v9 = WorkoutUIBundle.super.isa;
  v107._object = 0xE000000000000000;
  v10.value._countAndFlagsBits = 0x617A696C61636F4CLL;
  v10.value._object = 0xEB00000000656C62;
  v11._object = 0x800000020CB985F0;
  v11._countAndFlagsBits = 0xD00000000000001ALL;
  v12._countAndFlagsBits = 0;
  v12._object = 0xE000000000000000;
  v107._countAndFlagsBits = 0;
  countAndFlagsBits = NSLocalizedString(_:tableName:bundle:value:comment:)(v11, v10, v9, v12, v107)._countAndFlagsBits;

  v13 = RaceWorkoutConfiguration.displayDurationFor(_:formatter:)(a1, a2);
  v15 = v14;
  v16 = RaceWorkoutConfiguration.displayPaceValueFor(_:formatter:)(a1, a2);
  v18 = v17;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys7CVarArg_pGMd);
  v19 = swift_allocObject();
  *(v19 + 16) = xmmword_20CB5DA80;
  v20 = a1;
  v21 = MEMORY[0x277D837D0];
  *(v19 + 56) = MEMORY[0x277D837D0];
  v22 = lazy protocol witness table accessor for type String and conformance String();
  *(v19 + 32) = v13;
  *(v19 + 40) = v15;
  *(v19 + 96) = v21;
  *(v19 + 104) = v22;
  *(v19 + 64) = v22;
  *(v19 + 72) = v16;
  *(v19 + 80) = v18;
  v23 = String.init(format:_:)();
  v25 = v24;

  v26 = RaceWorkoutConfiguration.displayPaceUnitWith(_:)(a2);
  v28 = v27;
  v99 = RaceWorkoutConfiguration.displayDateFor(_:)(v20);
  v100 = v29;
  static Platform.current.getter();
  v30 = Platform.rawValue.getter();
  if (v30 == Platform.rawValue.getter())
  {
    v31 = static Font.footnote.getter();
  }

  else
  {
    v32 = v91;
    v33 = v90;
    v34 = v93;
    (*(v91 + 104))(v90, *MEMORY[0x277CE0A68], v93);
    v35 = type metadata accessor for Font.Design();
    v36 = v92;
    (*(*(v35 - 8) + 56))(v92, 1, 1, v35);
    static Font.Weight.regular.getter();
    static Font.system(_:design:weight:)();
    outlined destroy of Binding<RaceFilter>(v36, &_s7SwiftUI4FontV6DesignOSgMd);
    (*(v32 + 8))(v33, v34);
    v37 = v96;
    v38 = v94;
    v39 = v98;
    (*(v96 + 104))(v94, *MEMORY[0x277CE0A10], v98);
    v31 = Font.leading(_:)();

    (*(v37 + 8))(v38, v39);
  }

  v98 = static HorizontalAlignment.leading.getter();
  v105 = 0;
  v103 = v23;
  v104 = v25;
  v95 = v25;
  v40 = lazy protocol witness table accessor for type String and conformance String();

  v94 = v40;
  v41 = Text.init<A>(_:)();
  v43 = v42;
  v45 = v44;
  v91 = Text.font(_:)();
  v90 = v46;
  v86 = v47;
  v89 = v48;
  outlined consume of Text.Storage(v41, v43, v45 & 1);

  v103 = v26;
  v104 = v28;

  v49 = Text.init<A>(_:)();
  v51 = v50;
  v53 = v52;
  v93 = v31;
  Font.smallCaps()();
  v96 = v28;
  v54 = Text.font(_:)();
  v56 = v55;
  v58 = v57;

  outlined consume of Text.Storage(v49, v51, v53 & 1);

  v59 = v86;
  v60 = v91;
  v61 = v90;
  v88 = static Text.+ infix(_:_:)();
  countAndFlagsBits = v62;
  v87 = v63;
  v92 = v64;
  outlined consume of Text.Storage(v54, v56, v58 & 1);

  outlined consume of Text.Storage(v60, v61, v59 & 1);

  v103 = v99;
  v104 = v100;

  v65 = Text.init<A>(_:)();
  v67 = v66;
  LOBYTE(v61) = v68;
  v69 = Text.font(_:)();
  v71 = v70;
  v73 = v72;
  v75 = v74;
  outlined consume of Text.Storage(v65, v67, v61 & 1);

  LOBYTE(v65) = v87 & 1;
  v102 = v87 & 1;
  v76 = v88;
  v77 = countAndFlagsBits;
  outlined copy of Text.Storage(v88, countAndFlagsBits, v87 & 1);
  v78 = v92;

  LOBYTE(v67) = v73 & 1;
  outlined copy of Text.Storage(v69, v71, v73 & 1);

  outlined consume of Text.Storage(v69, v71, v73 & 1);

  outlined consume of Text.Storage(v76, v77, v102);

  v79 = v78;

  LOBYTE(v103) = v65;
  v106 = v73 & 1;
  v80 = v105;
  v81 = static Color.secondary.getter();

  KeyPath = swift_getKeyPath();
  result = swift_getKeyPath();
  v84 = v97;
  *v97 = v98;
  v84[1] = 0;
  *(v84 + 16) = v80;
  v85 = countAndFlagsBits;
  v84[3] = v76;
  v84[4] = v85;
  *(v84 + 40) = v65;
  v84[6] = v79;
  v84[7] = v69;
  v84[8] = v71;
  *(v84 + 72) = v67;
  v84[10] = v75;
  v84[11] = KeyPath;
  v84[12] = v81;
  v84[13] = result;
  v84[14] = 1;
  *(v84 + 120) = 0;
  return result;
}

unint64_t lazy protocol witness table accessor for type ForEach<[RaceFilter], String, <<opaque return type of View.tag<A>(_:includeOptional:)>>.0> and conformance <> ForEach<A, B, C>()
{
  result = lazy protocol witness table cache variable for type ForEach<[RaceFilter], String, <<opaque return type of View.tag<A>(_:includeOptional:)>>.0> and conformance <> ForEach<A, B, C>;
  if (!lazy protocol witness table cache variable for type ForEach<[RaceFilter], String, <<opaque return type of View.tag<A>(_:includeOptional:)>>.0> and conformance <> ForEach<A, B, C>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI7ForEachVySay11WorkoutCore10RaceFilterOGSSAA4ViewPAAE3tag_15includeOptionalQrqd___SbtSHRd__lFQOyAA6VStackVyAA05TupleI0VyAA15ModifiedContentVyAA4TextVAA30_EnvironmentKeyWritingModifierVySiSgGG_AQyAQyAQyAMyAOyAS_AStGGAUyAA5ColorVSgGG0eB019DynamicTypeDisabledVGAWGtGG_AFQo_GMd);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI6VStackVyAA9TupleViewVyAA15ModifiedContentVyAA4TextVAA30_EnvironmentKeyWritingModifierVySiSgGG_AGyAGyAGyACyAEyAI_AItGGAKyAA5ColorVSgGG07WorkoutB019DynamicTypeDisabledVGAMGtGGMd);
    type metadata accessor for RaceFilter();
    lazy protocol witness table accessor for type VStack<TupleView<(ModifiedContent<Text, _EnvironmentKeyWritingModifier<Int?>>, ModifiedContent<ModifiedContent<ModifiedContent<VStack<TupleView<(Text, Text)>>, _EnvironmentKeyWritingModifier<Color?>>, DynamicTypeDisabled>, _EnvironmentKeyWritingModifier<Int?>>)>> and conformance VStack<A>(&lazy protocol witness table cache variable for type VStack<TupleView<(ModifiedContent<Text, _EnvironmentKeyWritingModifier<Int?>>, ModifiedContent<ModifiedContent<ModifiedContent<VStack<TupleView<(Text, Text)>>, _EnvironmentKeyWritingModifier<Color?>>, DynamicTypeDisabled>, _EnvironmentKeyWritingModifier<Int?>>)>> and conformance VStack<A>, &_s7SwiftUI6VStackVyAA9TupleViewVyAA15ModifiedContentVyAA4TextVAA30_EnvironmentKeyWritingModifierVySiSgGG_AGyAGyAGyACyAEyAI_AItGGAKyAA5ColorVSgGG07WorkoutB019DynamicTypeDisabledVGAMGtGGMd);
    _s11WorkoutCore04RaceA13ConfigurationCAA0aD0C7Combine16ObservableObjectAAWlTm_0(&lazy protocol witness table cache variable for type RaceFilter and conformance RaceFilter, MEMORY[0x277D7DE28]);
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ForEach<[RaceFilter], String, <<opaque return type of View.tag<A>(_:includeOptional:)>>.0> and conformance <> ForEach<A, B, C>);
  }

  return result;
}

uint64_t _s11WorkoutCore04RaceA13ConfigurationCAA0aD0C7Combine16ObservableObjectAAWlTm_0(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t outlined init with copy of Binding<RaceFilter>(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(a3);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t outlined destroy of Binding<RaceFilter>(uint64_t a1, uint64_t *a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(a2);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<<<opaque return type of View.pickerStyle<A>(_:)>>.0, _EnvironmentKeyWritingModifier<Color?>>, _EnvironmentKeyWritingModifier<Color?>> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<<<opaque return type of View.pickerStyle<A>(_:)>>.0, _EnvironmentKeyWritingModifier<Color?>>, _EnvironmentKeyWritingModifier<Color?>> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<<<opaque return type of View.pickerStyle<A>(_:)>>.0, _EnvironmentKeyWritingModifier<Color?>>, _EnvironmentKeyWritingModifier<Color?>> and conformance <> ModifiedContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyACyAA4ViewPAAE11pickerStyleyQrqd__AA06PickerG0Rd__lFQOyAA0H0VyAA05EmptyE0V11WorkoutCore10RaceFilterOAA7ForEachVySayANGSSAeAE3tag_15includeOptionalQrqd___SbtSHRd__lFQOyAA6VStackVyAA05TupleE0VyACyAA4TextVAA30_EnvironmentKeyWritingModifierVySiSgGG_ACyACyACyAUyAWyAY_AYtGGA_yAA5ColorVSgGG0jB019DynamicTypeDisabledVGA1_GtGG_ANQo_GG_AA06InlinehG0VQo_A8_GA8_GMd);
    lazy protocol witness table accessor for type ModifiedContent<<<opaque return type of View.pickerStyle<A>(_:)>>.0, _EnvironmentKeyWritingModifier<Color?>> and conformance <> ModifiedContent<A, B>();
    lazy protocol witness table accessor for type VStack<TupleView<(ModifiedContent<Text, _EnvironmentKeyWritingModifier<Int?>>, ModifiedContent<ModifiedContent<ModifiedContent<VStack<TupleView<(Text, Text)>>, _EnvironmentKeyWritingModifier<Color?>>, DynamicTypeDisabled>, _EnvironmentKeyWritingModifier<Int?>>)>> and conformance VStack<A>(&lazy protocol witness table cache variable for type _EnvironmentKeyWritingModifier<Color?> and conformance _EnvironmentKeyWritingModifier<A>, &_s7SwiftUI30_EnvironmentKeyWritingModifierVyAA5ColorVSgGMd);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<<<opaque return type of View.pickerStyle<A>(_:)>>.0, _EnvironmentKeyWritingModifier<Color?>>, _EnvironmentKeyWritingModifier<Color?>> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<<<opaque return type of View.pickerStyle<A>(_:)>>.0, _EnvironmentKeyWritingModifier<Color?>> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<<<opaque return type of View.pickerStyle<A>(_:)>>.0, _EnvironmentKeyWritingModifier<Color?>> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<<<opaque return type of View.pickerStyle<A>(_:)>>.0, _EnvironmentKeyWritingModifier<Color?>> and conformance <> ModifiedContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyAA4ViewPAAE11pickerStyleyQrqd__AA06PickerG0Rd__lFQOyAA0H0VyAA05EmptyE0V11WorkoutCore10RaceFilterOAA7ForEachVySayANGSSAeAE3tag_15includeOptionalQrqd___SbtSHRd__lFQOyAA6VStackVyAA05TupleE0VyACyAA4TextVAA30_EnvironmentKeyWritingModifierVySiSgGG_ACyACyACyAUyAWyAY_AYtGGA_yAA5ColorVSgGG0jB019DynamicTypeDisabledVGA1_GtGG_ANQo_GG_AA06InlinehG0VQo_A8_GMd);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI6PickerVyAA9EmptyViewV11WorkoutCore10RaceFilterOAA7ForEachVySayAHGSSAA0E0PAAE3tag_15includeOptionalQrqd___SbtSHRd__lFQOyAA6VStackVyAA05TupleE0VyAA15ModifiedContentVyAA4TextVAA30_EnvironmentKeyWritingModifierVySiSgGG_AUyAUyAUyAQyASyAW_AWtGGAYyAA5ColorVSgGG0fB019DynamicTypeDisabledVGA_GtGG_AHQo_GGMd);
    type metadata accessor for InlinePickerStyle();
    lazy protocol witness table accessor for type VStack<TupleView<(ModifiedContent<Text, _EnvironmentKeyWritingModifier<Int?>>, ModifiedContent<ModifiedContent<ModifiedContent<VStack<TupleView<(Text, Text)>>, _EnvironmentKeyWritingModifier<Color?>>, DynamicTypeDisabled>, _EnvironmentKeyWritingModifier<Int?>>)>> and conformance VStack<A>(&lazy protocol witness table cache variable for type Picker<EmptyView, RaceFilter, ForEach<[RaceFilter], String, <<opaque return type of View.tag<A>(_:includeOptional:)>>.0>> and conformance Picker<A, B, C>, &_s7SwiftUI6PickerVyAA9EmptyViewV11WorkoutCore10RaceFilterOAA7ForEachVySayAHGSSAA0E0PAAE3tag_15includeOptionalQrqd___SbtSHRd__lFQOyAA6VStackVyAA05TupleE0VyAA15ModifiedContentVyAA4TextVAA30_EnvironmentKeyWritingModifierVySiSgGG_AUyAUyAUyAQyASyAW_AWtGGAYyAA5ColorVSgGG0fB019DynamicTypeDisabledVGA_GtGG_AHQo_GGMd);
    swift_getOpaqueTypeConformance2();
    lazy protocol witness table accessor for type VStack<TupleView<(ModifiedContent<Text, _EnvironmentKeyWritingModifier<Int?>>, ModifiedContent<ModifiedContent<ModifiedContent<VStack<TupleView<(Text, Text)>>, _EnvironmentKeyWritingModifier<Color?>>, DynamicTypeDisabled>, _EnvironmentKeyWritingModifier<Int?>>)>> and conformance VStack<A>(&lazy protocol witness table cache variable for type _EnvironmentKeyWritingModifier<Color?> and conformance _EnvironmentKeyWritingModifier<A>, &_s7SwiftUI30_EnvironmentKeyWritingModifierVyAA5ColorVSgGMd);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<<<opaque return type of View.pickerStyle<A>(_:)>>.0, _EnvironmentKeyWritingModifier<Color?>> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type ModifiedContent<<<opaque return type of View.pickerStyle<A>(_:)>>.0, _EnvironmentKeyWritingModifier<Color?>> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<<<opaque return type of View.pickerStyle<A>(_:)>>.0, _EnvironmentKeyWritingModifier<Color?>> and conformance <> ModifiedContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyAA4ViewPAAE11pickerStyleyQrqd__AA06PickerG0Rd__lFQOyAA0H0VyAA05EmptyE0VSbAA7ForEachVySay07WorkoutB030MediaPlaybackConfigurationTypeOGSSAeAE3tag_15includeOptionalQrqd___SbtSHRd__lFQOyACyAA4TextVAA30_EnvironmentKeyWritingModifierVySiSgGG_SbQo_GG_AA06InlinehG0VQo_AWyAA5ColorVSgGGMd);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI6PickerVyAA9EmptyViewVSbAA7ForEachVySay07WorkoutB030MediaPlaybackConfigurationTypeOGSSAA0E0PAAE3tag_15includeOptionalQrqd___SbtSHRd__lFQOyAA15ModifiedContentVyAA4TextVAA30_EnvironmentKeyWritingModifierVySiSgGG_SbQo_GGMd);
    type metadata accessor for InlinePickerStyle();
    lazy protocol witness table accessor for type [MediaPlaybackConfigurationType] and conformance [A](&lazy protocol witness table cache variable for type Picker<EmptyView, Bool, ForEach<[MediaPlaybackConfigurationType], String, <<opaque return type of View.tag<A>(_:includeOptional:)>>.0>> and conformance Picker<A, B, C>, &_s7SwiftUI6PickerVyAA9EmptyViewVSbAA7ForEachVySay07WorkoutB030MediaPlaybackConfigurationTypeOGSSAA0E0PAAE3tag_15includeOptionalQrqd___SbtSHRd__lFQOyAA15ModifiedContentVyAA4TextVAA30_EnvironmentKeyWritingModifierVySiSgGG_SbQo_GGMd);
    swift_getOpaqueTypeConformance2();
    lazy protocol witness table accessor for type [MediaPlaybackConfigurationType] and conformance [A](&lazy protocol witness table cache variable for type _EnvironmentKeyWritingModifier<Color?> and conformance _EnvironmentKeyWritingModifier<A>, &_s7SwiftUI30_EnvironmentKeyWritingModifierVyAA5ColorVSgGMd);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<<<opaque return type of View.pickerStyle<A>(_:)>>.0, _EnvironmentKeyWritingModifier<Color?>> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

uint64_t lazy protocol witness table accessor for type VStack<TupleView<(ModifiedContent<Text, _EnvironmentKeyWritingModifier<Int?>>, ModifiedContent<ModifiedContent<ModifiedContent<VStack<TupleView<(Text, Text)>>, _EnvironmentKeyWritingModifier<Color?>>, DynamicTypeDisabled>, _EnvironmentKeyWritingModifier<Int?>>)>> and conformance VStack<A>(unint64_t *a1, uint64_t *a2)
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

uint64_t type metadata accessor for IntervalButton()
{
  result = type metadata singleton initialization cache for IntervalButton;
  if (!type metadata singleton initialization cache for IntervalButton)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void type metadata completion function for IntervalButton()
{
  type metadata accessor for FIUIWorkoutActivityType();
  if (v0 <= 0x3F)
  {
    type metadata accessor for Binding<NavigationPath>();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void type metadata accessor for Binding<NavigationPath>()
{
  if (!lazy cache variable for type metadata for Binding<NavigationPath>)
  {
    type metadata accessor for NavigationPath();
    v0 = type metadata accessor for Binding();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for Binding<NavigationPath>);
    }
  }
}

uint64_t IntervalButton.body.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v51 = a1;
  v3 = type metadata accessor for AccessibilityTraits();
  v49 = *(v3 - 8);
  v50 = v3;
  MEMORY[0x28223BE20](v3);
  v48 = &v42 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for AccessibilityChildBehavior();
  v46 = *(v5 - 8);
  v47 = v5;
  MEMORY[0x28223BE20](v5);
  v43 = &v42 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for IntervalButton();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyACyAA6VStackVyACyAA6ButtonVy07WorkoutB004GoalF5LabelVGAH0hF5StyleVGGAA30_EnvironmentKeyWritingModifierVyAA08AnyShapeJ0VSgGGAA06_TraitmN0VyAA017ListRowBackgroundqL0VGGMd);
  MEMORY[0x28223BE20](v10);
  v12 = &v42 - v11;
  v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI4ViewPAAE20accessibilityElement8childrenQrAA26AccessibilityChildBehaviorV_tFQOyAA15ModifiedContentVyAIyAA6VStackVyAIyAA6ButtonVy07WorkoutB004GoalM5LabelVGAN0oM5StyleVGGAA30_EnvironmentKeyWritingModifierVyAA08AnyShapeQ0VSgGGAA06_TraittU0VyAA017ListRowBackgroundxS0VGG_Qo_Md);
  v44 = *(v42 - 8);
  MEMORY[0x28223BE20](v42);
  v14 = &v42 - v13;
  v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyAA4ViewPAAE20accessibilityElement8childrenQrAA26AccessibilityChildBehaviorV_tFQOyACyACyAA6VStackVyACyAA6ButtonVy07WorkoutB004GoalM5LabelVGAN0oM5StyleVGGAA30_EnvironmentKeyWritingModifierVyAA08AnyShapeQ0VSgGGAA06_TraittU0VyAA017ListRowBackgroundxS0VGG_Qo_AA0i10AttachmentU0VGMd);
  MEMORY[0x28223BE20](v45);
  v16 = &v42 - v15;
  *v12 = static HorizontalAlignment.center.getter();
  *(v12 + 1) = 0x4000000000000000;
  v12[16] = 0;
  v17 = &v12[*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI13_VariadicViewO4TreeVy_AA13_VStackLayoutVAA15ModifiedContentVyAA6ButtonVy07WorkoutB004GoalJ5LabelVGAL0lJ5StyleVGGMd) + 44)];
  outlined init with copy of IntervalButton(v2, &v42 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  v18 = (*(v8 + 80) + 16) & ~*(v8 + 80);
  v19 = swift_allocObject();
  outlined init with take of IntervalButton(&v42 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0), v19 + v18);
  v52 = v2;
  lazy protocol witness table accessor for type GoalButtonLabel and conformance GoalButtonLabel();
  Button.init(action:label:)();
  swift_beginAccess();
  v21 = *static IntervalWorkoutConfiguration.accessibilityIdentifier;
  v20 = unk_27C7E8428;

  FIUIDeviceDependentLayoutMetric(junior40:senior44:aloeSmall41:aloeBig45:agave49:)();
  v23 = v22;
  FIUIDeviceDependentLayoutMetric(junior40:senior44:aloeSmall41:aloeBig45:agave49:)();
  v25 = v24;
  v26 = &v17[*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyAA6ButtonVy07WorkoutB004GoalE5LabelVGAF0gE5StyleVGMd) + 36)];
  *v26 = v21;
  *(v26 + 1) = v20;
  *(v26 + 2) = v23;
  *(v26 + 3) = v25;
  *(v26 + 4) = 0x402E000000000000;
  v27 = [objc_allocWithZone(MEMORY[0x277D75348]) initWithDisplayP3Red:0.607843137 green:0.431372549 blue:0.980392157 alpha:1.0];
  v28 = [v27 colorWithAlphaComponent_];

  v29 = Color.init(uiColor:)();
  KeyPath = swift_getKeyPath();
  v53 = v29;
  v31 = AnyShapeStyle.init<A>(_:)();
  v32 = &v12[*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyAA6VStackVyACyAA6ButtonVy07WorkoutB004GoalF5LabelVGAH0hF5StyleVGGAA30_EnvironmentKeyWritingModifierVyAA08AnyShapeJ0VSgGGMd) + 36)];
  *v32 = KeyPath;
  v32[1] = v31;
  v33 = [objc_allocWithZone(MEMORY[0x277D75348]) initWithDisplayP3Red:0.607843137 green:0.431372549 blue:0.980392157 alpha:1.0];
  v34 = [v33 colorWithAlphaComponent_];

  v53 = Color.init(uiColor:)();
  *&v12[*(v10 + 36)] = AnyView.init<A>(_:)();
  v35 = v43;
  static AccessibilityChildBehavior.ignore.getter();
  v36 = lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<VStack<ModifiedContent<Button<GoalButtonLabel>, GoalButtonStyle>>, _EnvironmentKeyWritingModifier<AnyShapeStyle?>>, _TraitWritingModifier<ListRowBackgroundTraitKey>> and conformance <> ModifiedContent<A, B>();
  View.accessibilityElement(children:)();
  (*(v46 + 8))(v35, v47);
  outlined destroy of ModifiedContent<ModifiedContent<VStack<ModifiedContent<Button<GoalButtonLabel>, GoalButtonStyle>>, _EnvironmentKeyWritingModifier<AnyShapeStyle?>>, _TraitWritingModifier<ListRowBackgroundTraitKey>>(v12);
  v37 = v48;
  static AccessibilityTraits.isButton.getter();
  v53 = v10;
  v54 = v36;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v39 = v42;
  MEMORY[0x20F30A9C0](v37, v42, OpaqueTypeConformance2);
  (*(v49 + 8))(v37, v50);
  (*(v44 + 8))(v14, v39);
  type metadata accessor for IntervalWorkoutConfiguration();
  v53 = MEMORY[0x20F303A00]();
  v54 = v40;
  lazy protocol witness table accessor for type String and conformance String();
  ModifiedContent<>.accessibilityLabel<A>(_:)();

  return sub_20C681680(v16);
}

void closure #1 in closure #1 in IntervalButton.body.getter(id *a1)
{
  v2 = type metadata accessor for NavigationPath();
  MEMORY[0x28223BE20](v2 - 8);
  v3 = type metadata accessor for UUID();
  MEMORY[0x28223BE20](v3 - 8);
  type metadata accessor for IntervalWorkoutConfiguration();
  v4 = *a1;
  UUID.init()();
  v5 = objc_allocWithZone(type metadata accessor for IntervalWorkout());
  IntervalWorkout.init(_:uuid:warmupStep:cooldownStep:)();
  UUID.init()();
  type metadata accessor for Occurrence();
  MEMORY[0x20F304B60](0);
  v7 = IntervalWorkoutConfiguration.__allocating_init(_:intervalWorkout:uuid:occurrence:)();
  type metadata accessor for IntervalButton();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI7BindingVyAA14NavigationPathVGMd);
  MEMORY[0x20F30B100]();
  v6 = MEMORY[0x277D7D9A0];
  lazy protocol witness table accessor for type IntervalWorkoutConfiguration and conformance WorkoutConfiguration(&lazy protocol witness table cache variable for type IntervalWorkoutConfiguration and conformance WorkoutConfiguration, MEMORY[0x277D7D9A0]);
  lazy protocol witness table accessor for type IntervalWorkoutConfiguration and conformance WorkoutConfiguration(&lazy protocol witness table cache variable for type IntervalWorkoutConfiguration and conformance WorkoutConfiguration, v6);
  lazy protocol witness table accessor for type IntervalWorkoutConfiguration and conformance WorkoutConfiguration(&lazy protocol witness table cache variable for type IntervalWorkoutConfiguration and conformance NSObject, v6);
  NavigationPath.append<A>(_:)();
  Binding.wrappedValue.setter();
}

void closure #2 in closure #1 in IntervalButton.body.getter(uint64_t *a1@<X8>)
{
  type metadata accessor for IntervalWorkoutConfiguration();
  static IntervalWorkoutConfiguration.displaySymbolName.getter();
  v2 = Image.init(_internalSystemName:)();
  v3 = [objc_allocWithZone(MEMORY[0x277D75348]) initWithDisplayP3Red:0.607843137 green:0.431372549 blue:0.980392157 alpha:1.0];
  v4 = [objc_allocWithZone(MEMORY[0x277D75348]) initWithDisplayP3Red:0.721568627 green:0.588235294 blue:0.980392157 alpha:1.0];
  v5 = FIUIColorForCurrentContrastMode();

  if (v5)
  {
    v6 = Color.init(uiColor:)();
    v7 = MEMORY[0x20F303A00]();
    *a1 = v2;
    a1[1] = v6;
    a1[2] = v7;
    a1[3] = v8;
  }

  else
  {
    __break(1u);
  }
}

uint64_t outlined init with copy of IntervalButton(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for IntervalButton();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t outlined init with take of IntervalButton(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for IntervalButton();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

void partial apply for closure #1 in closure #1 in IntervalButton.body.getter()
{
  v1 = *(type metadata accessor for IntervalButton() - 8);
  v2 = (v0 + ((*(v1 + 80) + 16) & ~*(v1 + 80)));

  closure #1 in closure #1 in IntervalButton.body.getter(v2);
}

unint64_t lazy protocol witness table accessor for type GoalButtonLabel and conformance GoalButtonLabel()
{
  result = lazy protocol witness table cache variable for type GoalButtonLabel and conformance GoalButtonLabel;
  if (!lazy protocol witness table cache variable for type GoalButtonLabel and conformance GoalButtonLabel)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type GoalButtonLabel and conformance GoalButtonLabel);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<VStack<ModifiedContent<Button<GoalButtonLabel>, GoalButtonStyle>>, _EnvironmentKeyWritingModifier<AnyShapeStyle?>>, _TraitWritingModifier<ListRowBackgroundTraitKey>> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<VStack<ModifiedContent<Button<GoalButtonLabel>, GoalButtonStyle>>, _EnvironmentKeyWritingModifier<AnyShapeStyle?>>, _TraitWritingModifier<ListRowBackgroundTraitKey>> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<VStack<ModifiedContent<Button<GoalButtonLabel>, GoalButtonStyle>>, _EnvironmentKeyWritingModifier<AnyShapeStyle?>>, _TraitWritingModifier<ListRowBackgroundTraitKey>> and conformance <> ModifiedContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyACyAA6VStackVyACyAA6ButtonVy07WorkoutB004GoalF5LabelVGAH0hF5StyleVGGAA30_EnvironmentKeyWritingModifierVyAA08AnyShapeJ0VSgGGAA06_TraitmN0VyAA017ListRowBackgroundqL0VGGMd);
    lazy protocol witness table accessor for type ModifiedContent<VStack<ModifiedContent<Button<GoalButtonLabel>, GoalButtonStyle>>, _EnvironmentKeyWritingModifier<AnyShapeStyle?>> and conformance <> ModifiedContent<A, B>();
    lazy protocol witness table accessor for type VStack<ModifiedContent<Button<GoalButtonLabel>, GoalButtonStyle>> and conformance VStack<A>(&lazy protocol witness table cache variable for type _TraitWritingModifier<ListRowBackgroundTraitKey> and conformance _TraitWritingModifier<A>, &_s7SwiftUI21_TraitWritingModifierVyAA017ListRowBackgroundC3KeyVGMd);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<VStack<ModifiedContent<Button<GoalButtonLabel>, GoalButtonStyle>>, _EnvironmentKeyWritingModifier<AnyShapeStyle?>>, _TraitWritingModifier<ListRowBackgroundTraitKey>> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<VStack<ModifiedContent<Button<GoalButtonLabel>, GoalButtonStyle>>, _EnvironmentKeyWritingModifier<AnyShapeStyle?>> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<VStack<ModifiedContent<Button<GoalButtonLabel>, GoalButtonStyle>>, _EnvironmentKeyWritingModifier<AnyShapeStyle?>> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<VStack<ModifiedContent<Button<GoalButtonLabel>, GoalButtonStyle>>, _EnvironmentKeyWritingModifier<AnyShapeStyle?>> and conformance <> ModifiedContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyAA6VStackVyACyAA6ButtonVy07WorkoutB004GoalF5LabelVGAH0hF5StyleVGGAA30_EnvironmentKeyWritingModifierVyAA08AnyShapeJ0VSgGGMd);
    lazy protocol witness table accessor for type VStack<ModifiedContent<Button<GoalButtonLabel>, GoalButtonStyle>> and conformance VStack<A>(&lazy protocol witness table cache variable for type VStack<ModifiedContent<Button<GoalButtonLabel>, GoalButtonStyle>> and conformance VStack<A>, &_s7SwiftUI6VStackVyAA15ModifiedContentVyAA6ButtonVy07WorkoutB004GoalF5LabelVGAH0hF5StyleVGGMd);
    lazy protocol witness table accessor for type VStack<ModifiedContent<Button<GoalButtonLabel>, GoalButtonStyle>> and conformance VStack<A>(&lazy protocol witness table cache variable for type _EnvironmentKeyWritingModifier<AnyShapeStyle?> and conformance _EnvironmentKeyWritingModifier<A>, &_s7SwiftUI30_EnvironmentKeyWritingModifierVyAA13AnyShapeStyleVSgGMd);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<VStack<ModifiedContent<Button<GoalButtonLabel>, GoalButtonStyle>>, _EnvironmentKeyWritingModifier<AnyShapeStyle?>> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

uint64_t lazy protocol witness table accessor for type VStack<ModifiedContent<Button<GoalButtonLabel>, GoalButtonStyle>> and conformance VStack<A>(unint64_t *a1, uint64_t *a2)
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

uint64_t outlined destroy of ModifiedContent<ModifiedContent<VStack<ModifiedContent<Button<GoalButtonLabel>, GoalButtonStyle>>, _EnvironmentKeyWritingModifier<AnyShapeStyle?>>, _TraitWritingModifier<ListRowBackgroundTraitKey>>(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyACyAA6VStackVyACyAA6ButtonVy07WorkoutB004GoalF5LabelVGAH0hF5StyleVGGAA30_EnvironmentKeyWritingModifierVyAA08AnyShapeJ0VSgGGAA06_TraitmN0VyAA017ListRowBackgroundqL0VGGMd);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t lazy protocol witness table accessor for type IntervalWorkoutConfiguration and conformance WorkoutConfiguration(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t GoalPicker.dismiss.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = type metadata accessor for EnvironmentValues();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI11EnvironmentV7ContentOyAA13DismissActionV_GMd);
  MEMORY[0x28223BE20](v8);
  v10 = &v14 - v9;
  _s7SwiftUI11EnvironmentV7ContentOyAA13DismissActionV_GWOcTm_1(v2, &v14 - v9, &_s7SwiftUI11EnvironmentV7ContentOyAA13DismissActionV_GMd);
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

uint64_t one-time initialization function for columns()
{
  v0 = type metadata accessor for GridItem.Size();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = (&v11 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0));
  v4 = type metadata accessor for GridItem();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v11 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  *v3 = xmmword_20CB62C00;
  (*(v1 + 104))(v3, *MEMORY[0x277CDF108], v0);
  static Alignment.top.getter();
  GridItem.init(_:spacing:alignment:)();
  v8 = static Array._allocateBufferUninitialized(minimumCapacity:)();
  *(v8 + 16) = 2;
  v9 = v8 + ((*(v5 + 80) + 32) & ~*(v5 + 80));
  (*(v5 + 16))(v9, v7, v4);
  result = (*(v5 + 32))(v9 + *(v5 + 72), v7, v4);
  static GoalPicker.columns = v8;
  return result;
}

uint64_t static GoalPicker.columns.getter()
{
  if (one-time initialization token for columns != -1)
  {
    swift_once();
  }
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance GoalPicker.NavigationState()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  MEMORY[0x20F30CD90](v1);
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance GoalPicker.NavigationState()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  MEMORY[0x20F30CD90](v1);
  return Hasher._finalize()();
}

uint64_t GoalPicker.init(activityType:activityMoveMode:formattingManager:healthStore:supportedGoalTypes:filter:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t *a7@<X8>)
{
  v31 = a5;
  v32 = a6;
  v29 = a3;
  v30 = a4;
  v10 = type metadata accessor for NavigationPath();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = &v28 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v16 = &v28 - v15;
  *a7 = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI11EnvironmentV7ContentOyAA13DismissActionV_GMd);
  swift_storeEnumTagMultiPayload();
  v17 = type metadata accessor for GoalPicker();
  v18 = (a7 + v17[5]);
  type metadata accessor for WorkoutConfigurationDataSource();
  _s11WorkoutCore0A23ConfigurationDataSourceCAC7Combine16ObservableObjectAAWlTm_1(&lazy protocol witness table cache variable for type WorkoutConfigurationDataSource and conformance WorkoutConfigurationDataSource, MEMORY[0x277D7DC28]);
  *v18 = EnvironmentObject.init()();
  v18[1] = v19;
  v20 = (a7 + v17[6]);
  type metadata accessor for ConfigurationNavigationModel();
  _s11WorkoutCore0A23ConfigurationDataSourceCAC7Combine16ObservableObjectAAWlTm_1(&lazy protocol witness table cache variable for type ConfigurationNavigationModel and conformance ConfigurationNavigationModel, type metadata accessor for ConfigurationNavigationModel);
  *v20 = EnvironmentObject.init()();
  v20[1] = v21;
  NavigationPath.init()();
  (*(v11 + 16))(v13, v16, v10);
  State.init(wrappedValue:)();
  (*(v11 + 8))(v16, v10);
  v22 = a7 + v17[14];
  v33 = 0;
  State.init(wrappedValue:)();
  v23 = v35;
  *v22 = v34;
  *(v22 + 1) = v23;
  *(a7 + v17[7]) = a1;
  *(a7 + v17[8]) = a2;
  v24 = v30;
  *(a7 + v17[9]) = v29;
  *(a7 + v17[10]) = v24;
  *(a7 + v17[11]) = v31;
  v25 = v17[12];
  v26 = type metadata accessor for WorkoutConfigurationFilterType();
  return (*(*(v26 - 8) + 32))(a7 + v25, v32, v26);
}

uint64_t GoalPicker.body.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v22 = a1;
  v21 = type metadata accessor for NavigationPath();
  v23 = *(v21 - 8);
  MEMORY[0x28223BE20](v21);
  v20 = v19 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for GoalPicker();
  v5 = v4 - 8;
  v6 = *(v4 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI7BindingVyAA14NavigationPathVGMd);
  MEMORY[0x28223BE20](v8 - 8);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyAA15NavigationStackVyAA0E4PathVAA012_ConditionalD0VyAA4ViewPAAE21navigationDestination3for11destinationQrqd__m_qd_0_qd__ctSHRd__AaJRd_0_r0_lFQOyAkAEAlmNQrqd__m_qd_0_qd__ctSHRd__AaJRd_0_r0_lFQOyAkAEAlmNQrqd__m_qd_0_qd__ctSHRd__AaJRd_0_r0_lFQOyAkAE26interactiveDismissDisabledyQrSbFQOyAA06ScrollI0VyAkAE12scenePaddingyQrAA4EdgeO3SetVFQOyAA9LazyVGridVyAA05TupleI0VyAA7ForEachVySaySo18_HKWorkoutGoalTypeVGA2_AIy07WorkoutB010GoalButtonVSgA6_GGSg_A4_11PacerButtonVSgSgA4_14IntervalButtonVSgSgtGG_Qo_G_Qo__11WorkoutCore24GoalWorkoutConfigurationCA4_15GoalValuePickerVQo__A24_25PacerWorkoutConfigurationCA4_24PacerDistanceValuePickerVQo__A24_28IntervalWorkoutConfigurationCA4_028IntervalWorkoutConfigurationI0VQo_AkAEAlmNQrqd__m_qd_0_qd__ctSHRd__AaJRd_0_r0_lFQOyAkAEAlmNQrqd__m_qd_0_qd__ctSHRd__AaJRd_0_r0_lFQOyAkAEAlmNQrqd__m_qd_0_qd__ctSHRd__AaJRd_0_r0_lFQOyAkAE7toolbar7contentQrqd__yXE_tAA07ToolbarD0Rd__lFQOyACyACyACyAA4ListVys5NeverOA19_GA4_14ListRowSpacing33_A607961C6E65DD4DD1C2818C5FE69B58LLVGA4_20HideListRowSeparatorA49_LLVGA4_06InlineE8BarTitle33_B86241820663BC1B3220D14BE7395977LLVG_AA07ToolbarD7BuilderV10buildBlockyQrxAAA42_RzlFZQOy_AA11ToolbarItemVyytAA6ButtonVyAA18DefaultButtonLabelVGGQo_Qo__A26_ACyACyA4_024GoalWorkoutConfigurationI0VAA30_EnvironmentKeyWritingModifierVyA4_013ConfigurationE5ModelCSgGGA75_yA24_30WorkoutConfigurationDataSourceCSgGGQo__A31_ACyACyA4_025PacerWorkoutConfigurationI0VA79_GA84_GQo__A36_ACyACyA38_A79_GA84_GQo_GGAA25_AppearanceActionModifierVGMd);
  v19[1] = v9;
  MEMORY[0x28223BE20](v9);
  v11 = v19 - v10;
  v19[3] = *(v5 + 60);
  v19[2] = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI5StateVyAA14NavigationPathVGMd);
  State.projectedValue.getter();
  v24 = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI19_ConditionalContentVyAA4ViewPAAE21navigationDestination3for11destinationQrqd__m_qd_0_qd__ctSHRd__AaDRd_0_r0_lFQOyAeAEAfgHQrqd__m_qd_0_qd__ctSHRd__AaDRd_0_r0_lFQOyAeAEAfgHQrqd__m_qd_0_qd__ctSHRd__AaDRd_0_r0_lFQOyAeAE26interactiveDismissDisabledyQrSbFQOyAA06ScrollE0VyAeAE12scenePaddingyQrAA4EdgeO3SetVFQOyAA9LazyVGridVyAA05TupleE0VyAA7ForEachVySaySo18_HKWorkoutGoalTypeVGAxCy07WorkoutB00X6ButtonVSgA0_GGSg_AZ11PacerButtonVSgSgAZ14IntervalButtonVSgSgtGG_Qo_G_Qo__0Z4Core0xZ13ConfigurationCAZ0X11ValuePickerVQo__A18_05PacerZ13ConfigurationCAZ24PacerDistanceValuePickerVQo__A18_08IntervalZ13ConfigurationCAZ08Intervalz13ConfigurationE0VQo_AeAEAfgHQrqd__m_qd_0_qd__ctSHRd__AaDRd_0_r0_lFQOyAeAEAfgHQrqd__m_qd_0_qd__ctSHRd__AaDRd_0_r0_lFQOyAeAEAfgHQrqd__m_qd_0_qd__ctSHRd__AaDRd_0_r0_lFQOyAeAE7toolbar7contentQrqd__yXE_tAA07ToolbarD0Rd__lFQOyAA08ModifiedD0VyA38_yA38_yAA4ListVys5NeverOA13_GAZ14ListRowSpacing33_A607961C6E65DD4DD1C2818C5FE69B58LLVGAZ20HideListRowSeparatorA45_LLVGAZ24InlineNavigationBarTitle33_B86241820663BC1B3220D14BE7395977LLVG_AA07ToolbarD7BuilderV10buildBlockyQrxAAA36_RzlFZQOy_AA11ToolbarItemVyytAA6ButtonVyAA18DefaultButtonLabelVGGQo_Qo__A20_A38_yA38_yAZ0xz13ConfigurationE0VAA30_EnvironmentKeyWritingModifierVyAZ28ConfigurationNavigationModelCSgGGA71_yA18_0Z23ConfigurationDataSourceCSgGGQo__A25_A38_yA38_yAZ05Pacerz13ConfigurationE0VA75_GA80_GQo__A30_A38_yA38_yA32_A75_GA80_GQo_GMd);
  lazy protocol witness table accessor for type _ConditionalContent<<<opaque return type of View.navigationDestination<A, B>(for:destination:)>>.0, <<opaque return type of View.navigationDestination<A, B>(for:destination:)>>.0> and conformance <> _ConditionalContent<A, B>();
  NavigationStack.init<>(path:root:)();
  outlined init with copy of GoalPicker(v2, v19 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for GoalPicker);
  v12 = (*(v6 + 80) + 16) & ~*(v6 + 80);
  v13 = swift_allocObject();
  outlined init with take of GoalPicker(v19 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), v13 + v12, type metadata accessor for GoalPicker);
  v14 = &v11[*(v9 + 36)];
  *v14 = partial apply for closure #2 in GoalPicker.body.getter;
  v14[1] = v13;
  v14[2] = 0;
  v14[3] = 0;
  v15 = v20;
  State.wrappedValue.getter();
  outlined init with copy of GoalPicker(v2, v19 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for GoalPicker);
  v16 = swift_allocObject();
  outlined init with take of GoalPicker(v19 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), v16 + v12, type metadata accessor for GoalPicker);
  lazy protocol witness table accessor for type ModifiedContent<NavigationStack<NavigationPath, _ConditionalContent<<<opaque return type of View.navigationDestination<A, B>(for:destination:)>>.0, <<opaque return type of View.navigationDestination<A, B>(for:destination:)>>.0>>, _AppearanceActionModifier> and conformance <> ModifiedContent<A, B>();
  _s11WorkoutCore0A23ConfigurationDataSourceCAC7Combine16ObservableObjectAAWlTm_1(&lazy protocol witness table cache variable for type NavigationPath and conformance NavigationPath, MEMORY[0x277CDD968]);
  v17 = v21;
  View.onChange<A>(of:initial:_:)();

  (*(v23 + 8))(v15, v17);
  return sub_20C6816F4(v11);
}

uint64_t closure #1 in GoalPicker.body.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyACyACyAA4ListVys5NeverOAA9TupleViewVyAA7ForEachVySaySo18_HKWorkoutGoalTypeVGAmA012_ConditionalD0Vy07WorkoutB00L6ButtonVSgASGGSg_AQ05PacerP0VSgSgAQ08IntervalP0VSgSgtGGAQ0E10RowSpacing33_A607961C6E65DD4DD1C2818C5FE69B58LLVGAQ04HideeS9SeparatorA7_LLVGAQ24InlineNavigationBarTitle33_B86241820663BC1B3220D14BE7395977LLVGMd);
  MEMORY[0x28223BE20](v4);
  v6 = &v119 - v5;
  v141 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI4ViewPAAE7toolbar7contentQrqd__yXE_tAA14ToolbarContentRd__lFQOyAA08ModifiedG0VyAHyAHyAA4ListVys5NeverOAA05TupleC0VyAA7ForEachVySaySo18_HKWorkoutGoalTypeVGArA012_ConditionalG0Vy07WorkoutB00O6ButtonVSgAXGGSg_AV05PacerS0VSgSgAV08IntervalS0VSgSgtGGAV0I10RowSpacing33_A607961C6E65DD4DD1C2818C5FE69B58LLVGAV04HideiV9SeparatorA12_LLVGAV24InlineNavigationBarTitle33_B86241820663BC1B3220D14BE7395977LLVG_AA0fG7BuilderV10buildBlockyQrxAaFRzlFZQOy_AA0F4ItemVyytAA0S0VyAA07DefaultS5LabelVGGQo_Qo_Md);
  OpaqueTypeConformance2 = *(v141 - 8);
  MEMORY[0x28223BE20](v141);
  v133 = &v119 - v7;
  v142 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI4ViewPAAE21navigationDestination3for11destinationQrqd__m_qd_0_qd__ctSHRd__AaBRd_0_r0_lFQOyAcAE7toolbar7contentQrqd__yXE_tAA14ToolbarContentRd__lFQOyAA08ModifiedK0VyAKyAKyAA4ListVys5NeverOAA05TupleC0VyAA7ForEachVySaySo18_HKWorkoutGoalTypeVGAuA012_ConditionalK0Vy07WorkoutB00S6ButtonVSgA_GGSg_AY05PacerW0VSgSgAY08IntervalW0VSgSgtGGAY0M10RowSpacing33_A607961C6E65DD4DD1C2818C5FE69B58LLVGAY04HidemZ9SeparatorA15_LLVGAY24InlineNavigationBarTitle33_B86241820663BC1B3220D14BE7395977LLVG_AA0jK7BuilderV10buildBlockyQrxAaIRzlFZQOy_AA0J4ItemVyytAA0W0VyAA07DefaultW5LabelVGGQo_Qo__0V4Core0sV13ConfigurationCAKyAKyAY0sv13ConfigurationC0VAA30_EnvironmentKeyWritingModifierVyAY28ConfigurationNavigationModelCSgGGA44_yA38_0V23ConfigurationDataSourceCSgGGQo_Md);
  v126 = *(v142 - 8);
  MEMORY[0x28223BE20](v142);
  v125 = &v119 - v8;
  v144 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI4ViewPAAE21navigationDestination3for11destinationQrqd__m_qd_0_qd__ctSHRd__AaBRd_0_r0_lFQOyAcAEAdeFQrqd__m_qd_0_qd__ctSHRd__AaBRd_0_r0_lFQOyAcAE7toolbar7contentQrqd__yXE_tAA14ToolbarContentRd__lFQOyAA08ModifiedK0VyAKyAKyAA4ListVys5NeverOAA05TupleC0VyAA7ForEachVySaySo18_HKWorkoutGoalTypeVGAuA012_ConditionalK0Vy07WorkoutB00S6ButtonVSgA_GGSg_AY05PacerW0VSgSgAY08IntervalW0VSgSgtGGAY0M10RowSpacing33_A607961C6E65DD4DD1C2818C5FE69B58LLVGAY04HidemZ9SeparatorA15_LLVGAY24InlineNavigationBarTitle33_B86241820663BC1B3220D14BE7395977LLVG_AA0jK7BuilderV10buildBlockyQrxAaIRzlFZQOy_AA0J4ItemVyytAA0W0VyAA07DefaultW5LabelVGGQo_Qo__0V4Core0sV13ConfigurationCAKyAKyAY0sv13ConfigurationC0VAA30_EnvironmentKeyWritingModifierVyAY28ConfigurationNavigationModelCSgGGA44_yA38_0V23ConfigurationDataSourceCSgGGQo__A38_0xV13ConfigurationCAKyAKyAY0xv13ConfigurationC0VA48_GA53_GQo_Md);
  v127 = *(v144 - 8);
  MEMORY[0x28223BE20](v144);
  v136 = (&v119 - v9);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI4ViewPAAE21navigationDestination3for11destinationQrqd__m_qd_0_qd__ctSHRd__AaBRd_0_r0_lFQOyAcAEAdeFQrqd__m_qd_0_qd__ctSHRd__AaBRd_0_r0_lFQOyAcAEAdeFQrqd__m_qd_0_qd__ctSHRd__AaBRd_0_r0_lFQOyAcAE7toolbar7contentQrqd__yXE_tAA14ToolbarContentRd__lFQOyAA08ModifiedK0VyAKyAKyAA4ListVys5NeverOAA05TupleC0VyAA7ForEachVySaySo18_HKWorkoutGoalTypeVGAuA012_ConditionalK0Vy07WorkoutB00S6ButtonVSgA_GGSg_AY05PacerW0VSgSgAY08IntervalW0VSgSgtGGAY0M10RowSpacing33_A607961C6E65DD4DD1C2818C5FE69B58LLVGAY04HidemZ9SeparatorA15_LLVGAY24InlineNavigationBarTitle33_B86241820663BC1B3220D14BE7395977LLVG_AA0jK7BuilderV10buildBlockyQrxAaIRzlFZQOy_AA0J4ItemVyytAA0W0VyAA07DefaultW5LabelVGGQo_Qo__0V4Core0sV13ConfigurationCAKyAKyAY0sv13ConfigurationC0VAA30_EnvironmentKeyWritingModifierVyAY28ConfigurationNavigationModelCSgGGA44_yA38_0V23ConfigurationDataSourceCSgGGQo__A38_0xV13ConfigurationCAKyAKyAY0xv13ConfigurationC0VA48_GA53_GQo__A38_0yV13ConfigurationCAKyAKyAY0yv13ConfigurationC0VA48_GA53_GQo_Md);
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = &v119 - v12;
  v140 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI19_ConditionalContentV7StorageOyAA4ViewPAAE21navigationDestination3for11destinationQrqd__m_qd_0_qd__ctSHRd__AaFRd_0_r0_lFQOyAgAEAhiJQrqd__m_qd_0_qd__ctSHRd__AaFRd_0_r0_lFQOyAgAEAhiJQrqd__m_qd_0_qd__ctSHRd__AaFRd_0_r0_lFQOyAgAE26interactiveDismissDisabledyQrSbFQOyAA06ScrollF0VyAgAE12scenePaddingyQrAA4EdgeO3SetVFQOyAA9LazyVGridVyAA05TupleF0VyAA7ForEachVySaySo18_HKWorkoutGoalTypeVGAzCy07WorkoutB00Y6ButtonVSgA2_GGSg_A0_11PacerButtonVSgSgA0_14IntervalButtonVSgSgtGG_Qo_G_Qo__11WorkoutCore0Y20WorkoutConfigurationCA0_0Y11ValuePickerVQo__A20_25PacerWorkoutConfigurationCA0_24PacerDistanceValuePickerVQo__A20_28IntervalWorkoutConfigurationCA0_028IntervalWorkoutConfigurationF0VQo_AgAEAhiJQrqd__m_qd_0_qd__ctSHRd__AaFRd_0_r0_lFQOyAgAEAhiJQrqd__m_qd_0_qd__ctSHRd__AaFRd_0_r0_lFQOyAgAEAhiJQrqd__m_qd_0_qd__ctSHRd__AaFRd_0_r0_lFQOyAgAE7toolbar7contentQrqd__yXE_tAA07ToolbarD0Rd__lFQOyAA08ModifiedD0VyA40_yA40_yAA4ListVys5NeverOA15_GA0_14ListRowSpacing33_A607961C6E65DD4DD1C2818C5FE69B58LLVGA0_20HideListRowSeparatorA47_LLVGA0_24InlineNavigationBarTitle33_B86241820663BC1B3220D14BE7395977LLVG_AA07ToolbarD7BuilderV10buildBlockyQrxAAA38_RzlFZQOy_AA11ToolbarItemVyytAA6ButtonVyAA18DefaultButtonLabelVGGQo_Qo__A22_A40_yA40_yA0_0y20WorkoutConfigurationF0VAA30_EnvironmentKeyWritingModifierVyA0_28ConfigurationNavigationModelCSgGGA73_yA20_30WorkoutConfigurationDataSourceCSgGGQo__A27_A40_yA40_yA0_025PacerWorkoutConfigurationF0VA77_GA82_GQo__A32_A40_yA40_yA34_A77_GA82_GQo__GMd);
  MEMORY[0x28223BE20](v140);
  v148 = &v119 - v14;
  v15 = type metadata accessor for GoalPicker();
  v16 = *(v15 - 8);
  MEMORY[0x28223BE20](v15 - 8);
  v150 = v17;
  v147 = &v119 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI10ScrollViewVyAA0D0PAAE12scenePaddingyQrAA4EdgeO3SetVFQOyAA9LazyVGridVyAA05TupleD0VyAA7ForEachVySaySo18_HKWorkoutGoalTypeVGArA19_ConditionalContentVy07WorkoutB00O6ButtonVSgAXGGSg_AV05PacerT0VSgSgAV08IntervalT0VSgSgtGG_Qo_GMd);
  v120 = *(v18 - 8);
  MEMORY[0x28223BE20](v18);
  v20 = &v119 - v19;
  v137 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI4ViewPAAE26interactiveDismissDisabledyQrSbFQOyAA06ScrollC0VyAcAE12scenePaddingyQrAA4EdgeO3SetVFQOyAA9LazyVGridVyAA05TupleC0VyAA7ForEachVySaySo18_HKWorkoutGoalTypeVGAsA19_ConditionalContentVy07WorkoutB00R6ButtonVSgAYGGSg_AW05PacerW0VSgSgAW08IntervalW0VSgSgtGG_Qo_G_Qo_Md);
  v121 = *(v137 - 8);
  MEMORY[0x28223BE20](v137);
  v129 = &v119 - v21;
  v138 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI4ViewPAAE21navigationDestination3for11destinationQrqd__m_qd_0_qd__ctSHRd__AaBRd_0_r0_lFQOyAcAE26interactiveDismissDisabledyQrSbFQOyAA06ScrollC0VyAcAE12scenePaddingyQrAA4EdgeO3SetVFQOyAA9LazyVGridVyAA05TupleC0VyAA7ForEachVySaySo18_HKWorkoutGoalTypeVGAvA19_ConditionalContentVy07WorkoutB00V6ButtonVSgA0_GGSg_AZ11PacerButtonVSgSgAZ14IntervalButtonVSgSgtGG_Qo_G_Qo__0Z4Core0vZ13ConfigurationCAZ0V11ValuePickerVQo_Md);
  v122 = *(v138 - 8);
  MEMORY[0x28223BE20](v138);
  v130 = &v119 - v22;
  v139 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI4ViewPAAE21navigationDestination3for11destinationQrqd__m_qd_0_qd__ctSHRd__AaBRd_0_r0_lFQOyAcAEAdeFQrqd__m_qd_0_qd__ctSHRd__AaBRd_0_r0_lFQOyAcAE26interactiveDismissDisabledyQrSbFQOyAA06ScrollC0VyAcAE12scenePaddingyQrAA4EdgeO3SetVFQOyAA9LazyVGridVyAA05TupleC0VyAA7ForEachVySaySo18_HKWorkoutGoalTypeVGAvA19_ConditionalContentVy07WorkoutB00V6ButtonVSgA0_GGSg_AZ11PacerButtonVSgSgAZ14IntervalButtonVSgSgtGG_Qo_G_Qo__0Z4Core0vZ13ConfigurationCAZ0V11ValuePickerVQo__A18_05PacerZ13ConfigurationCAZ24PacerDistanceValuePickerVQo_Md);
  v123 = *(v139 - 8);
  MEMORY[0x28223BE20](v139);
  v131 = (&v119 - v23);
  v143 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI4ViewPAAE21navigationDestination3for11destinationQrqd__m_qd_0_qd__ctSHRd__AaBRd_0_r0_lFQOyAcAEAdeFQrqd__m_qd_0_qd__ctSHRd__AaBRd_0_r0_lFQOyAcAEAdeFQrqd__m_qd_0_qd__ctSHRd__AaBRd_0_r0_lFQOyAcAE26interactiveDismissDisabledyQrSbFQOyAA06ScrollC0VyAcAE12scenePaddingyQrAA4EdgeO3SetVFQOyAA9LazyVGridVyAA05TupleC0VyAA7ForEachVySaySo18_HKWorkoutGoalTypeVGAvA19_ConditionalContentVy07WorkoutB00V6ButtonVSgA0_GGSg_AZ11PacerButtonVSgSgAZ14IntervalButtonVSgSgtGG_Qo_G_Qo__0Z4Core0vZ13ConfigurationCAZ0V11ValuePickerVQo__A18_05PacerZ13ConfigurationCAZ24PacerDistanceValuePickerVQo__A18_08IntervalZ13ConfigurationCAZ08Intervalz13ConfigurationC0VQo_Md);
  v135 = *(v143 - 8);
  MEMORY[0x28223BE20](v143);
  v134 = (&v119 - v24);
  v25 = static Platform.current.getter();
  v145 = v10;
  v146 = a2;
  v132 = v16;
  v149 = a1;
  if (v25)
  {
    v26 = static Axis.Set.vertical.getter();
    MEMORY[0x28223BE20](v26);
    v27 = a1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI4ViewPAAE12scenePaddingyQrAA4EdgeO3SetVFQOyAA9LazyVGridVyAA05TupleC0VyAA7ForEachVySaySo18_HKWorkoutGoalTypeVGApA19_ConditionalContentVy07WorkoutB00N6ButtonVSgAVGGSg_AT05PacerS0VSgSgAT08IntervalS0VSgSgtGG_Qo_Md);
    v28 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI9LazyVGridVyAA9TupleViewVyAA7ForEachVySaySo18_HKWorkoutGoalTypeVGAiA19_ConditionalContentVy07WorkoutB00J6ButtonVSgAOGGSg_AM05PacerO0VSgSgAM08IntervalO0VSgSgtGGMd);
    v127 = v4;
    v29 = v28;
    v30 = lazy protocol witness table accessor for type ScrollView<<<opaque return type of View.scenePadding(_:)>>.0> and conformance ScrollView<A>(&lazy protocol witness table cache variable for type LazyVGrid<TupleView<(ForEach<[_HKWorkoutGoalType], _HKWorkoutGoalType, _ConditionalContent<GoalButton?, GoalButton>>?, PacerButton??, IntervalButton??)>> and conformance LazyVGrid<A>, &_s7SwiftUI9LazyVGridVyAA9TupleViewVyAA7ForEachVySaySo18_HKWorkoutGoalTypeVGAiA19_ConditionalContentVy07WorkoutB00J6ButtonVSgAOGGSg_AM05PacerO0VSgSgAM08IntervalO0VSgSgtGGMd);
    v151 = v29;
    v152 = v30;
    swift_getOpaqueTypeConformance2();
    ScrollView.init(_:showsIndicators:content:)();
    v31 = lazy protocol witness table accessor for type ScrollView<<<opaque return type of View.scenePadding(_:)>>.0> and conformance ScrollView<A>(&lazy protocol witness table cache variable for type ScrollView<<<opaque return type of View.scenePadding(_:)>>.0> and conformance ScrollView<A>, &_s7SwiftUI10ScrollViewVyAA0D0PAAE12scenePaddingyQrAA4EdgeO3SetVFQOyAA9LazyVGridVyAA05TupleD0VyAA7ForEachVySaySo18_HKWorkoutGoalTypeVGArA19_ConditionalContentVy07WorkoutB00O6ButtonVSgAXGGSg_AV05PacerT0VSgSgAV08IntervalT0VSgSgtGG_Qo_GMd);
    View.interactiveDismissDisabled(_:)();
    (*(v120 + 8))(v20, v18);
    v32 = type metadata accessor for GoalWorkoutConfiguration();
    v136 = type metadata accessor for GoalPicker;
    v33 = v147;
    outlined init with copy of GoalPicker(v27, v147, type metadata accessor for GoalPicker);
    v133 = *(v132 + 80);
    v34 = (v133 + 16) & ~v133;
    v35 = swift_allocObject();
    v132 = type metadata accessor for GoalPicker;
    outlined init with take of GoalPicker(v33, v35 + v34, type metadata accessor for GoalPicker);
    v36 = type metadata accessor for GoalValuePicker();
    v151 = v18;
    v152 = v31;
    OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
    v128 = MEMORY[0x277D85378];
    v37 = _s11WorkoutCore0A23ConfigurationDataSourceCAC7Combine16ObservableObjectAAWlTm_1(&lazy protocol witness table cache variable for type GoalWorkoutConfiguration and conformance NSObject, MEMORY[0x277D7D928]);
    v38 = _s11WorkoutCore0A23ConfigurationDataSourceCAC7Combine16ObservableObjectAAWlTm_1(&lazy protocol witness table cache variable for type GoalValuePicker and conformance GoalValuePicker, type metadata accessor for GoalValuePicker);
    v39 = v137;
    v126 = v32;
    v125 = v37;
    v40 = v129;
    View.navigationDestination<A, B>(for:destination:)();

    (*(v121 + 8))(v40, v39);
    v41 = type metadata accessor for PacerWorkoutConfiguration();
    outlined init with copy of GoalPicker(v149, v33, v136);
    v42 = swift_allocObject();
    outlined init with take of GoalPicker(v33, v42 + v34, v132);
    v121 = type metadata accessor for PacerDistanceValuePicker();
    v151 = v39;
    v152 = v32;
    v153 = v36;
    v154 = OpaqueTypeConformance2;
    v155 = v37;
    v156 = v38;
    OpaqueTypeConformance2 = MEMORY[0x277CDEB90];
    v120 = swift_getOpaqueTypeConformance2();
    v43 = _s11WorkoutCore0A23ConfigurationDataSourceCAC7Combine16ObservableObjectAAWlTm_1(&lazy protocol witness table cache variable for type PacerWorkoutConfiguration and conformance NSObject, MEMORY[0x277D7D968]);
    v44 = _s11WorkoutCore0A23ConfigurationDataSourceCAC7Combine16ObservableObjectAAWlTm_1(&lazy protocol witness table cache variable for type PacerDistanceValuePicker and conformance PacerDistanceValuePicker, type metadata accessor for PacerDistanceValuePicker);
    v45 = v41;
    v46 = v138;
    v129 = v45;
    v137 = v43;
    v47 = v130;
    View.navigationDestination<A, B>(for:destination:)();

    (*(v122 + 8))(v47, v46);
    v48 = type metadata accessor for IntervalWorkoutConfiguration();
    outlined init with copy of GoalPicker(v149, v33, v136);
    v49 = swift_allocObject();
    outlined init with take of GoalPicker(v33, v49 + v34, v132);
    v50 = type metadata accessor for IntervalWorkoutConfigurationView();
    v151 = v46;
    v152 = v45;
    v153 = v121;
    v154 = v120;
    v155 = v43;
    v156 = v44;
    v51 = swift_getOpaqueTypeConformance2();
    v52 = _s11WorkoutCore0A23ConfigurationDataSourceCAC7Combine16ObservableObjectAAWlTm_1(&lazy protocol witness table cache variable for type IntervalWorkoutConfiguration and conformance NSObject, MEMORY[0x277D7D9A0]);
    v118 = _s11WorkoutCore0A23ConfigurationDataSourceCAC7Combine16ObservableObjectAAWlTm_1(&lazy protocol witness table cache variable for type IntervalWorkoutConfigurationView and conformance IntervalWorkoutConfigurationView, type metadata accessor for IntervalWorkoutConfigurationView);
    v53 = v134;
    v54 = v48;
    v55 = v139;
    v130 = v48;
    v56 = v131;
    View.navigationDestination<A, B>(for:destination:)();

    (*(v123 + 8))(v56, v55);
    v57 = v53;
    v58 = v143;
    (*(v135 + 16))(v148, v57, v143);
    swift_storeEnumTagMultiPayload();
    v151 = v55;
    v152 = v54;
    v153 = v50;
    v154 = v51;
    v155 = v52;
    v156 = v118;
    v150 = swift_getOpaqueTypeConformance2();
    v149 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyACy07WorkoutB008IntervalE17ConfigurationViewVAA30_EnvironmentKeyWritingModifierVyAD0G15NavigationModelCSgGGAHy0E4Core0eG10DataSourceCSgGGMd);
    v147 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyACy07WorkoutB005PacerE17ConfigurationViewVAA30_EnvironmentKeyWritingModifierVyAD0G15NavigationModelCSgGGAHy0E4Core0eG10DataSourceCSgGGMd);
    v59 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyACy07WorkoutB004GoalE17ConfigurationViewVAA30_EnvironmentKeyWritingModifierVyAD0G15NavigationModelCSgGGAHy0E4Core0eG10DataSourceCSgGGMd);
    v60 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI21ToolbarContentBuilderV10buildBlockyQrxAA0cD0RzlFZQOy_AA0C4ItemVyytAA6ButtonVyAA07DefaultI5LabelVGGQo_Md);
    v61 = lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<ModifiedContent<List<Never, TupleView<(ForEach<[_HKWorkoutGoalType], _HKWorkoutGoalType, _ConditionalContent<GoalButton?, GoalButton>>?, PacerButton??, IntervalButton??)>>, ListRowSpacing>, HideListRowSeparator>, InlineNavigationBarTitle> and conformance <> ModifiedContent<A, B>();
    v62 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI11ToolbarItemVyytAA6ButtonVyAA07DefaultE5LabelVGGMd);
    v63 = lazy protocol witness table accessor for type ScrollView<<<opaque return type of View.scenePadding(_:)>>.0> and conformance ScrollView<A>(&lazy protocol witness table cache variable for type ToolbarItem<(), Button<DefaultButtonLabel>> and conformance ToolbarItem<A, B>, &_s7SwiftUI11ToolbarItemVyytAA6ButtonVyAA07DefaultE5LabelVGGMd);
    v151 = v62;
    v152 = v63;
    v64 = swift_getOpaqueTypeConformance2();
    v151 = v127;
    v152 = v60;
    v153 = v61;
    v154 = v64;
    v65 = swift_getOpaqueTypeConformance2();
    v66 = lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<IntervalWorkoutConfigurationView, _EnvironmentKeyWritingModifier<ConfigurationNavigationModel?>>, _EnvironmentKeyWritingModifier<WorkoutConfigurationDataSource?>> and conformance <> ModifiedContent<A, B>(&lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<GoalWorkoutConfigurationView, _EnvironmentKeyWritingModifier<ConfigurationNavigationModel?>>, _EnvironmentKeyWritingModifier<WorkoutConfigurationDataSource?>> and conformance <> ModifiedContent<A, B>, &_s7SwiftUI15ModifiedContentVyACy07WorkoutB004GoalE17ConfigurationViewVAA30_EnvironmentKeyWritingModifierVyAD0G15NavigationModelCSgGGAHy0E4Core0eG10DataSourceCSgGGMd, &_s7SwiftUI15ModifiedContentVyACy07WorkoutB004GoalE17ConfigurationViewVAA30_EnvironmentKeyWritingModifierVyAD0G15NavigationModelCSgGGAHy0E4Core0eG10DataSourceCSgGGMR, lazy protocol witness table accessor for type ModifiedContent<GoalWorkoutConfigurationView, _EnvironmentKeyWritingModifier<ConfigurationNavigationModel?>> and conformance <> ModifiedContent<A, B>);
    v151 = v141;
    v152 = v126;
    v153 = v59;
    v154 = v65;
    v155 = v125;
    v156 = v66;
    v67 = swift_getOpaqueTypeConformance2();
    v68 = lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<PacerWorkoutConfigurationView, _EnvironmentKeyWritingModifier<ConfigurationNavigationModel?>>, _EnvironmentKeyWritingModifier<WorkoutConfigurationDataSource?>> and conformance <> ModifiedContent<A, B>();
    v151 = v142;
    v152 = v129;
    v153 = v147;
    v154 = v67;
    v155 = v137;
    v156 = v68;
    v69 = swift_getOpaqueTypeConformance2();
    v70 = lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<IntervalWorkoutConfigurationView, _EnvironmentKeyWritingModifier<ConfigurationNavigationModel?>>, _EnvironmentKeyWritingModifier<WorkoutConfigurationDataSource?>> and conformance <> ModifiedContent<A, B>(&lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<IntervalWorkoutConfigurationView, _EnvironmentKeyWritingModifier<ConfigurationNavigationModel?>>, _EnvironmentKeyWritingModifier<WorkoutConfigurationDataSource?>> and conformance <> ModifiedContent<A, B>, &_s7SwiftUI15ModifiedContentVyACy07WorkoutB008IntervalE17ConfigurationViewVAA30_EnvironmentKeyWritingModifierVyAD0G15NavigationModelCSgGGAHy0E4Core0eG10DataSourceCSgGGMd, &_s7SwiftUI15ModifiedContentVyACy07WorkoutB008IntervalE17ConfigurationViewVAA30_EnvironmentKeyWritingModifierVyAD0G15NavigationModelCSgGGAHy0E4Core0eG10DataSourceCSgGGMR, lazy protocol witness table accessor for type ModifiedContent<IntervalWorkoutConfigurationView, _EnvironmentKeyWritingModifier<ConfigurationNavigationModel?>> and conformance <> ModifiedContent<A, B>);
    v151 = v144;
    v152 = v130;
    v153 = v149;
    v154 = v69;
    v155 = v52;
    v156 = v70;
    swift_getOpaqueTypeConformance2();
    _ConditionalContent<>.init(storage:)();
    return (*(v135 + 8))(v134, v58);
  }

  else
  {
    v123 = v18;
    v128 = v13;
    v129 = v11;
    MEMORY[0x28223BE20](v25);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI9TupleViewVyAA7ForEachVySaySo18_HKWorkoutGoalTypeVGAgA19_ConditionalContentVy07WorkoutB00H6ButtonVSgAMGGSg_AK05PacerM0VSgSgAK08IntervalM0VSgSgtGMd);
    lazy protocol witness table accessor for type ScrollView<<<opaque return type of View.scenePadding(_:)>>.0> and conformance ScrollView<A>(&lazy protocol witness table cache variable for type TupleView<(ForEach<[_HKWorkoutGoalType], _HKWorkoutGoalType, _ConditionalContent<GoalButton?, GoalButton>>?, PacerButton??, IntervalButton??)> and conformance TupleView<A>, &_s7SwiftUI9TupleViewVyAA7ForEachVySaySo18_HKWorkoutGoalTypeVGAgA19_ConditionalContentVy07WorkoutB00H6ButtonVSgAMGGSg_AK05PacerM0VSgSgAK08IntervalM0VSgSgtGMd);
    List<>.init(content:)();
    *&v6[*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyAA4ListVys5NeverOAA9TupleViewVyAA7ForEachVySaySo18_HKWorkoutGoalTypeVGAmA012_ConditionalD0Vy07WorkoutB00L6ButtonVSgASGGSg_AQ05PacerP0VSgSgAQ08IntervalP0VSgSgtGGAQ0E10RowSpacing33_A607961C6E65DD4DD1C2818C5FE69B58LLVGMd) + 36)] = 0x4020000000000000;
    if (one-time initialization token for WorkoutUIBundle != -1)
    {
      swift_once();
    }

    swift_beginAccess();
    v72 = WorkoutUIBundle.super.isa;
    v157._object = 0xE000000000000000;
    v73._countAndFlagsBits = 0x5720657461657243;
    v73._object = 0xEE0074756F6B726FLL;
    v74.value._countAndFlagsBits = 0x617A696C61636F4CLL;
    v74.value._object = 0xEB00000000656C62;
    v75._countAndFlagsBits = 0;
    v75._object = 0xE000000000000000;
    v157._countAndFlagsBits = 0;
    v76 = NSLocalizedString(_:tableName:bundle:value:comment:)(v73, v74, v72, v75, v157);

    *&v6[*(v4 + 36)] = v76;
    MEMORY[0x28223BE20](v77);
    v78 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI21ToolbarContentBuilderV10buildBlockyQrxAA0cD0RzlFZQOy_AA0C4ItemVyytAA6ButtonVyAA07DefaultI5LabelVGGQo_Md);
    v79 = lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<ModifiedContent<List<Never, TupleView<(ForEach<[_HKWorkoutGoalType], _HKWorkoutGoalType, _ConditionalContent<GoalButton?, GoalButton>>?, PacerButton??, IntervalButton??)>>, ListRowSpacing>, HideListRowSeparator>, InlineNavigationBarTitle> and conformance <> ModifiedContent<A, B>();
    v80 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI11ToolbarItemVyytAA6ButtonVyAA07DefaultE5LabelVGGMd);
    v81 = lazy protocol witness table accessor for type ScrollView<<<opaque return type of View.scenePadding(_:)>>.0> and conformance ScrollView<A>(&lazy protocol witness table cache variable for type ToolbarItem<(), Button<DefaultButtonLabel>> and conformance ToolbarItem<A, B>, &_s7SwiftUI11ToolbarItemVyytAA6ButtonVyAA07DefaultE5LabelVGGMd);
    v151 = v80;
    v152 = v81;
    v82 = swift_getOpaqueTypeConformance2();
    View.toolbar<A>(content:)();
    outlined destroy of ModifiedContent<ModifiedContent<ModifiedContent<List<Never, TupleView<(ForEach<[_HKWorkoutGoalType], _HKWorkoutGoalType, _ConditionalContent<GoalButton?, GoalButton>>?, PacerButton??, IntervalButton??)>>, ListRowSpacing>, HideListRowSeparator>, InlineNavigationBarTitle>(v6, &_s7SwiftUI15ModifiedContentVyACyACyAA4ListVys5NeverOAA9TupleViewVyAA7ForEachVySaySo18_HKWorkoutGoalTypeVGAmA012_ConditionalD0Vy07WorkoutB00L6ButtonVSgASGGSg_AQ05PacerP0VSgSgAQ08IntervalP0VSgSgtGGAQ0E10RowSpacing33_A607961C6E65DD4DD1C2818C5FE69B58LLVGAQ04HideeS9SeparatorA7_LLVGAQ24InlineNavigationBarTitle33_B86241820663BC1B3220D14BE7395977LLVGMd);
    v135 = type metadata accessor for GoalWorkoutConfiguration();
    v134 = type metadata accessor for GoalPicker;
    v83 = v147;
    outlined init with copy of GoalPicker(a1, v147, type metadata accessor for GoalPicker);
    v132 = *(v132 + 80);
    v84 = (v132 + 16) & ~v132;
    v85 = swift_allocObject();
    v131 = type metadata accessor for GoalPicker;
    outlined init with take of GoalPicker(v83, v85 + v84, type metadata accessor for GoalPicker);
    v121 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyACy07WorkoutB004GoalE17ConfigurationViewVAA30_EnvironmentKeyWritingModifierVyAD0G15NavigationModelCSgGGAHy0E4Core0eG10DataSourceCSgGGMd);
    v151 = v4;
    v152 = v78;
    v153 = v79;
    v154 = v82;
    v119 = swift_getOpaqueTypeConformance2();
    v130 = MEMORY[0x277D85378];
    v86 = _s11WorkoutCore0A23ConfigurationDataSourceCAC7Combine16ObservableObjectAAWlTm_1(&lazy protocol witness table cache variable for type GoalWorkoutConfiguration and conformance NSObject, MEMORY[0x277D7D928]);
    v87 = lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<IntervalWorkoutConfigurationView, _EnvironmentKeyWritingModifier<ConfigurationNavigationModel?>>, _EnvironmentKeyWritingModifier<WorkoutConfigurationDataSource?>> and conformance <> ModifiedContent<A, B>(&lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<GoalWorkoutConfigurationView, _EnvironmentKeyWritingModifier<ConfigurationNavigationModel?>>, _EnvironmentKeyWritingModifier<WorkoutConfigurationDataSource?>> and conformance <> ModifiedContent<A, B>, &_s7SwiftUI15ModifiedContentVyACy07WorkoutB004GoalE17ConfigurationViewVAA30_EnvironmentKeyWritingModifierVyAD0G15NavigationModelCSgGGAHy0E4Core0eG10DataSourceCSgGGMd, &_s7SwiftUI15ModifiedContentVyACy07WorkoutB004GoalE17ConfigurationViewVAA30_EnvironmentKeyWritingModifierVyAD0G15NavigationModelCSgGGAHy0E4Core0eG10DataSourceCSgGGMR, lazy protocol witness table accessor for type ModifiedContent<GoalWorkoutConfigurationView, _EnvironmentKeyWritingModifier<ConfigurationNavigationModel?>> and conformance <> ModifiedContent<A, B>);
    v88 = v125;
    v89 = v135;
    v90 = v141;
    v91 = v86;
    v122 = v86;
    v92 = v133;
    View.navigationDestination<A, B>(for:destination:)();

    (*(OpaqueTypeConformance2 + 8))(v92, v90);
    v93 = type metadata accessor for PacerWorkoutConfiguration();
    outlined init with copy of GoalPicker(v149, v83, v134);
    v94 = swift_allocObject();
    outlined init with take of GoalPicker(v83, v94 + v84, v131);
    v120 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyACy07WorkoutB005PacerE17ConfigurationViewVAA30_EnvironmentKeyWritingModifierVyAD0G15NavigationModelCSgGGAHy0E4Core0eG10DataSourceCSgGGMd);
    v151 = v90;
    v152 = v89;
    v153 = v121;
    v154 = v119;
    v155 = v91;
    v156 = v87;
    v141 = MEMORY[0x277CDEB90];
    v95 = swift_getOpaqueTypeConformance2();
    v96 = _s11WorkoutCore0A23ConfigurationDataSourceCAC7Combine16ObservableObjectAAWlTm_1(&lazy protocol witness table cache variable for type PacerWorkoutConfiguration and conformance NSObject, MEMORY[0x277D7D968]);
    v97 = lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<PacerWorkoutConfigurationView, _EnvironmentKeyWritingModifier<ConfigurationNavigationModel?>>, _EnvironmentKeyWritingModifier<WorkoutConfigurationDataSource?>> and conformance <> ModifiedContent<A, B>();
    v98 = v142;
    OpaqueTypeConformance2 = v93;
    v121 = v96;
    View.navigationDestination<A, B>(for:destination:)();

    (*(v126 + 8))(v88, v98);
    v133 = type metadata accessor for IntervalWorkoutConfiguration();
    v99 = v147;
    outlined init with copy of GoalPicker(v149, v147, v134);
    v100 = swift_allocObject();
    outlined init with take of GoalPicker(v99, v100 + v84, v131);
    v149 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyACy07WorkoutB008IntervalE17ConfigurationViewVAA30_EnvironmentKeyWritingModifierVyAD0G15NavigationModelCSgGGAHy0E4Core0eG10DataSourceCSgGGMd);
    v151 = v98;
    v152 = v93;
    v153 = v120;
    v154 = v95;
    v155 = v96;
    v156 = v97;
    v147 = swift_getOpaqueTypeConformance2();
    v101 = _s11WorkoutCore0A23ConfigurationDataSourceCAC7Combine16ObservableObjectAAWlTm_1(&lazy protocol witness table cache variable for type IntervalWorkoutConfiguration and conformance NSObject, MEMORY[0x277D7D9A0]);
    v150 = lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<IntervalWorkoutConfigurationView, _EnvironmentKeyWritingModifier<ConfigurationNavigationModel?>>, _EnvironmentKeyWritingModifier<WorkoutConfigurationDataSource?>> and conformance <> ModifiedContent<A, B>(&lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<IntervalWorkoutConfigurationView, _EnvironmentKeyWritingModifier<ConfigurationNavigationModel?>>, _EnvironmentKeyWritingModifier<WorkoutConfigurationDataSource?>> and conformance <> ModifiedContent<A, B>, &_s7SwiftUI15ModifiedContentVyACy07WorkoutB008IntervalE17ConfigurationViewVAA30_EnvironmentKeyWritingModifierVyAD0G15NavigationModelCSgGGAHy0E4Core0eG10DataSourceCSgGGMd, &_s7SwiftUI15ModifiedContentVyACy07WorkoutB008IntervalE17ConfigurationViewVAA30_EnvironmentKeyWritingModifierVyAD0G15NavigationModelCSgGGAHy0E4Core0eG10DataSourceCSgGGMR, lazy protocol witness table accessor for type ModifiedContent<IntervalWorkoutConfigurationView, _EnvironmentKeyWritingModifier<ConfigurationNavigationModel?>> and conformance <> ModifiedContent<A, B>);
    v102 = v128;
    v103 = v144;
    v104 = v136;
    View.navigationDestination<A, B>(for:destination:)();

    (*(v127 + 8))(v104, v103);
    v105 = v129;
    v106 = v145;
    (*(v129 + 2))(v148, v102, v145);
    swift_storeEnumTagMultiPayload();
    v107 = type metadata accessor for IntervalWorkoutConfigurationView();
    v108 = type metadata accessor for PacerDistanceValuePicker();
    v109 = type metadata accessor for GoalValuePicker();
    v110 = lazy protocol witness table accessor for type ScrollView<<<opaque return type of View.scenePadding(_:)>>.0> and conformance ScrollView<A>(&lazy protocol witness table cache variable for type ScrollView<<<opaque return type of View.scenePadding(_:)>>.0> and conformance ScrollView<A>, &_s7SwiftUI10ScrollViewVyAA0D0PAAE12scenePaddingyQrAA4EdgeO3SetVFQOyAA9LazyVGridVyAA05TupleD0VyAA7ForEachVySaySo18_HKWorkoutGoalTypeVGArA19_ConditionalContentVy07WorkoutB00O6ButtonVSgAXGGSg_AV05PacerT0VSgSgAV08IntervalT0VSgSgtGG_Qo_GMd);
    v151 = v123;
    v152 = v110;
    v111 = swift_getOpaqueTypeConformance2();
    v112 = _s11WorkoutCore0A23ConfigurationDataSourceCAC7Combine16ObservableObjectAAWlTm_1(&lazy protocol witness table cache variable for type GoalValuePicker and conformance GoalValuePicker, type metadata accessor for GoalValuePicker);
    v151 = v137;
    v152 = v135;
    v153 = v109;
    v154 = v111;
    v155 = v122;
    v156 = v112;
    v113 = swift_getOpaqueTypeConformance2();
    v114 = _s11WorkoutCore0A23ConfigurationDataSourceCAC7Combine16ObservableObjectAAWlTm_1(&lazy protocol witness table cache variable for type PacerDistanceValuePicker and conformance PacerDistanceValuePicker, type metadata accessor for PacerDistanceValuePicker);
    v151 = v138;
    v152 = OpaqueTypeConformance2;
    v153 = v108;
    v154 = v113;
    v155 = v121;
    v156 = v114;
    v115 = swift_getOpaqueTypeConformance2();
    v116 = _s11WorkoutCore0A23ConfigurationDataSourceCAC7Combine16ObservableObjectAAWlTm_1(&lazy protocol witness table cache variable for type IntervalWorkoutConfigurationView and conformance IntervalWorkoutConfigurationView, type metadata accessor for IntervalWorkoutConfigurationView);
    v117 = v133;
    v151 = v139;
    v152 = v133;
    v153 = v107;
    v154 = v115;
    v155 = v101;
    v156 = v116;
    swift_getOpaqueTypeConformance2();
    v151 = v103;
    v152 = v117;
    v153 = v149;
    v154 = v147;
    v155 = v101;
    v156 = v150;
    swift_getOpaqueTypeConformance2();
    _ConditionalContent<>.init(storage:)();
    return v105[1](v128, v106);
  }
}