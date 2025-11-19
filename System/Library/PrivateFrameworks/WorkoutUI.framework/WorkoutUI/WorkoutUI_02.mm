uint64_t type metadata completion function for ArtworkBridge()
{
  result = type metadata accessor for Artwork();
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

__n128 __swift_memcpy24_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u64[0] = a2[1].n128_u64[0];
  *a1 = result;
  return result;
}

uint64_t getEnumTagSinglePayload for BlockSectionView(uint64_t *a1, int a2)
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

uint64_t storeEnumTagSinglePayload for BlockSectionView(uint64_t result, int a2, int a3)
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

uint64_t closure #1 in BlockSectionView.body.getter@<X0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v28 = a3;
  v29 = a2;
  v32 = a4;
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI7ForEachVySay11WorkoutCore0E4StepCG10Foundation4UUIDVAA4ViewPAAE20listRowSeparatorTint_5edgesQrAA5ColorVSg_AA12VerticalEdgeO3SetVtFQOy0eB00egL0V_Qo_GMd);
  v27 = *(v33 - 8);
  MEMORY[0x28223BE20](v33);
  v6 = &v27 - v5;
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI19_ConditionalContentV7StorageOyAA6VStackVyAA9TupleViewVyAA0H0PAAE20listRowSeparatorTint_5edgesQrAA5ColorVSg_AA12VerticalEdgeO3SetVtFQOy07WorkoutB006RepeatjH0V_Qo__AA08ModifiedD0VyAZyAZyAA9RectangleVAA24_ForegroundStyleModifierVyAA0k5ShapeW0VGGAA12_FrameLayoutVGAA14_PaddingLayoutVGAA7ForEachVySay0R4Core0R4StepCG10Foundation4UUIDVAIyAZyAkAEAL_AMQrAP_ATtFQOyAU0r4StepJ0V_Qo_A11_G_AA6HStackVyAIyAZyAA6SpacerVA8_G_A12_tGGSgtGGtGGA14_yA18_A21_A24_G_GMd);
  MEMORY[0x28223BE20](v30);
  v8 = &v27 - v7;
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI6VStackVyAA9TupleViewVyAA0E0PAAE20listRowSeparatorTint_5edgesQrAA5ColorVSg_AA12VerticalEdgeO3SetVtFQOy07WorkoutB006RepeatgE0V_Qo__AA15ModifiedContentVyAVyAVyAA9RectangleVAA24_ForegroundStyleModifierVyAA0h5ShapeU0VGGAA12_FrameLayoutVGAA08_PaddingY0VGAA7ForEachVySay0O4Core0O4StepCG10Foundation4UUIDVAEyAVyAgAEAH_AIQrAL_APtFQOyAQ0o4StepG0V_Qo_A7_G_AA6HStackVyAEyAVyAA6SpacerVA4_G_A8_tGGSgtGGtGGMd);
  MEMORY[0x28223BE20](v31);
  v10 = &v27 - v9;
  v11 = type metadata accessor for WorkoutBlockType();
  v12 = *(v11 - 8);
  v13 = MEMORY[0x28223BE20](v11);
  v15 = &v27 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v17 = &v27 - v16;
  WorkoutBlock.blockType.getter();
  (*(v12 + 104))(v15, *MEMORY[0x277D7DDD0], v11);
  lazy protocol witness table accessor for type WorkoutBlockType and conformance WorkoutBlockType(&lazy protocol witness table cache variable for type WorkoutBlockType and conformance WorkoutBlockType, MEMORY[0x277D7DDE0]);
  dispatch thunk of RawRepresentable.rawValue.getter();
  dispatch thunk of RawRepresentable.rawValue.getter();
  v18 = *(v12 + 8);
  v18(v15, v11);
  v18(v17, v11);
  if (v34 == v36)
  {
    *v10 = static HorizontalAlignment.center.getter();
    *(v10 + 1) = 0;
    v10[16] = 1;
    v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI13_VariadicViewO4TreeVy_AA13_VStackLayoutVAA05TupleD0VyAA0D0PAAE20listRowSeparatorTint_5edgesQrAA5ColorVSg_AA12VerticalEdgeO3SetVtFQOy07WorkoutB006RepeatjD0V_Qo__AA15ModifiedContentVyAZyAZyAA9RectangleVAA24_ForegroundStyleModifierVyAA0k5ShapeX0VGGAA06_FrameG0VGAA08_PaddingG0VGAA7ForEachVySay0R4Core0R4StepCG10Foundation4UUIDVAIyAZyAkAEAL_AMQrAP_ATtFQOyAU0r4StepJ0V_Qo_A11_G_AA6HStackVyAIyAZyAA6SpacerVA8_G_A12_tGGSgtGGtGGMd);
    closure #1 in closure #1 in BlockSectionView.body.getter(a1, v29, v28, &v10[*(v19 + 44)]);
    outlined init with copy of VStack<TupleView<(<<opaque return type of View.listRowSeparatorTint(_:edges:)>>.0, ModifiedContent<ModifiedContent<ModifiedContent<Rectangle, _ForegroundStyleModifier<SeparatorShapeStyle>>, _FrameLayout>, _PaddingLayout>, ForEach<[WorkoutStep], UUID, TupleView<(ModifiedContent<<<opaque return type of View.listRowSeparatorTint(_:edges:)>>.0, _PaddingLayout>, HStack<TupleView<(ModifiedContent<Spacer, _FrameLayout>, ModifiedContent<ModifiedContent<ModifiedContent<Rectangle, _ForegroundStyleModifier<SeparatorShapeStyle>>, _FrameLayout>, _PaddingLayout>)>>?)>>)>>(v10, v8, &_s7SwiftUI6VStackVyAA9TupleViewVyAA0E0PAAE20listRowSeparatorTint_5edgesQrAA5ColorVSg_AA12VerticalEdgeO3SetVtFQOy07WorkoutB006RepeatgE0V_Qo__AA15ModifiedContentVyAVyAVyAA9RectangleVAA24_ForegroundStyleModifierVyAA0h5ShapeU0VGGAA12_FrameLayoutVGAA08_PaddingY0VGAA7ForEachVySay0O4Core0O4StepCG10Foundation4UUIDVAEyAVyAgAEAH_AIQrAL_APtFQOyAQ0o4StepG0V_Qo_A7_G_AA6HStackVyAEyAVyAA6SpacerVA4_G_A8_tGGSgtGGtGGMd);
    swift_storeEnumTagMultiPayload();
    lazy protocol witness table accessor for type VStack<TupleView<(<<opaque return type of View.listRowSeparatorTint(_:edges:)>>.0, ModifiedContent<ModifiedContent<ModifiedContent<Rectangle, _ForegroundStyleModifier<SeparatorShapeStyle>>, _FrameLayout>, _PaddingLayout>, ForEach<[WorkoutStep], UUID, TupleView<(ModifiedContent<<<opaque return type of View.listRowSeparatorTint(_:edges:)>>.0, _PaddingLayout>, HStack<TupleView<(ModifiedContent<Spacer, _FrameLayout>, ModifiedContent<ModifiedContent<ModifiedContent<Rectangle, _ForegroundStyleModifier<SeparatorShapeStyle>>, _FrameLayout>, _PaddingLayout>)>>?)>>)>> and conformance VStack<A>(&lazy protocol witness table cache variable for type VStack<TupleView<(<<opaque return type of View.listRowSeparatorTint(_:edges:)>>.0, ModifiedContent<ModifiedContent<ModifiedContent<Rectangle, _ForegroundStyleModifier<SeparatorShapeStyle>>, _FrameLayout>, _PaddingLayout>, ForEach<[WorkoutStep], UUID, TupleView<(ModifiedContent<<<opaque return type of View.listRowSeparatorTint(_:edges:)>>.0, _PaddingLayout>, HStack<TupleView<(ModifiedContent<Spacer, _FrameLayout>, ModifiedContent<ModifiedContent<ModifiedContent<Rectangle, _ForegroundStyleModifier<SeparatorShapeStyle>>, _FrameLayout>, _PaddingLayout>)>>?)>>)>> and conformance VStack<A>, &_s7SwiftUI6VStackVyAA9TupleViewVyAA0E0PAAE20listRowSeparatorTint_5edgesQrAA5ColorVSg_AA12VerticalEdgeO3SetVtFQOy07WorkoutB006RepeatgE0V_Qo__AA15ModifiedContentVyAVyAVyAA9RectangleVAA24_ForegroundStyleModifierVyAA0h5ShapeU0VGGAA12_FrameLayoutVGAA08_PaddingY0VGAA7ForEachVySay0O4Core0O4StepCG10Foundation4UUIDVAEyAVyAgAEAH_AIQrAL_APtFQOyAQ0o4StepG0V_Qo_A7_G_AA6HStackVyAEyAVyAA6SpacerVA4_G_A8_tGGSgtGGtGGMd);
    lazy protocol witness table accessor for type ForEach<[WorkoutStep], UUID, <<opaque return type of View.listRowSeparatorTint(_:edges:)>>.0> and conformance <> ForEach<A, B, C>();
    _ConditionalContent<>.init(storage:)();
    return outlined destroy of VStack<TupleView<(<<opaque return type of View.listRowSeparatorTint(_:edges:)>>.0, ModifiedContent<ModifiedContent<ModifiedContent<Rectangle, _ForegroundStyleModifier<SeparatorShapeStyle>>, _FrameLayout>, _PaddingLayout>, ForEach<[WorkoutStep], UUID, TupleView<(ModifiedContent<<<opaque return type of View.listRowSeparatorTint(_:edges:)>>.0, _PaddingLayout>, HStack<TupleView<(ModifiedContent<Spacer, _FrameLayout>, ModifiedContent<ModifiedContent<ModifiedContent<Rectangle, _ForegroundStyleModifier<SeparatorShapeStyle>>, _FrameLayout>, _PaddingLayout>)>>?)>>)>>(v10, &_s7SwiftUI6VStackVyAA9TupleViewVyAA0E0PAAE20listRowSeparatorTint_5edgesQrAA5ColorVSg_AA12VerticalEdgeO3SetVtFQOy07WorkoutB006RepeatgE0V_Qo__AA15ModifiedContentVyAVyAVyAA9RectangleVAA24_ForegroundStyleModifierVyAA0h5ShapeU0VGGAA12_FrameLayoutVGAA08_PaddingY0VGAA7ForEachVySay0O4Core0O4StepCG10Foundation4UUIDVAEyAVyAgAEAH_AIQrAL_APtFQOyAQ0o4StepG0V_Qo_A7_G_AA6HStackVyAEyAVyAA6SpacerVA4_G_A8_tGGSgtGGtGGMd);
  }

  else
  {
    v36 = WorkoutBlock.steps.getter();
    v21 = swift_allocObject();
    v22 = v29;
    v21[2] = a1;
    v21[3] = v22;
    v21[4] = v28;

    v23 = v22;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay11WorkoutCore0A4StepCGMd);
    type metadata accessor for UUID();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI4ViewPAAE20listRowSeparatorTint_5edgesQrAA5ColorVSg_AA12VerticalEdgeO3SetVtFQOy07WorkoutB00m4StepE0V_Qo_Md);
    lazy protocol witness table accessor for type VStack<TupleView<(<<opaque return type of View.listRowSeparatorTint(_:edges:)>>.0, ModifiedContent<ModifiedContent<ModifiedContent<Rectangle, _ForegroundStyleModifier<SeparatorShapeStyle>>, _FrameLayout>, _PaddingLayout>, ForEach<[WorkoutStep], UUID, TupleView<(ModifiedContent<<<opaque return type of View.listRowSeparatorTint(_:edges:)>>.0, _PaddingLayout>, HStack<TupleView<(ModifiedContent<Spacer, _FrameLayout>, ModifiedContent<ModifiedContent<ModifiedContent<Rectangle, _ForegroundStyleModifier<SeparatorShapeStyle>>, _FrameLayout>, _PaddingLayout>)>>?)>>)>> and conformance VStack<A>(&lazy protocol witness table cache variable for type [WorkoutStep] and conformance [A], &_sSay11WorkoutCore0A4StepCGMd);
    v24 = lazy protocol witness table accessor for type WorkoutStepRow and conformance WorkoutStepRow();
    v34 = &type metadata for WorkoutStepRow;
    v35 = v24;
    swift_getOpaqueTypeConformance2();
    lazy protocol witness table accessor for type WorkoutBlockType and conformance WorkoutBlockType(&lazy protocol witness table cache variable for type WorkoutStep and conformance WorkoutStep, MEMORY[0x277D7DD30]);
    ForEach<>.init(_:content:)();
    v25 = v27;
    v26 = v33;
    (*(v27 + 16))(v8, v6, v33);
    swift_storeEnumTagMultiPayload();
    lazy protocol witness table accessor for type VStack<TupleView<(<<opaque return type of View.listRowSeparatorTint(_:edges:)>>.0, ModifiedContent<ModifiedContent<ModifiedContent<Rectangle, _ForegroundStyleModifier<SeparatorShapeStyle>>, _FrameLayout>, _PaddingLayout>, ForEach<[WorkoutStep], UUID, TupleView<(ModifiedContent<<<opaque return type of View.listRowSeparatorTint(_:edges:)>>.0, _PaddingLayout>, HStack<TupleView<(ModifiedContent<Spacer, _FrameLayout>, ModifiedContent<ModifiedContent<ModifiedContent<Rectangle, _ForegroundStyleModifier<SeparatorShapeStyle>>, _FrameLayout>, _PaddingLayout>)>>?)>>)>> and conformance VStack<A>(&lazy protocol witness table cache variable for type VStack<TupleView<(<<opaque return type of View.listRowSeparatorTint(_:edges:)>>.0, ModifiedContent<ModifiedContent<ModifiedContent<Rectangle, _ForegroundStyleModifier<SeparatorShapeStyle>>, _FrameLayout>, _PaddingLayout>, ForEach<[WorkoutStep], UUID, TupleView<(ModifiedContent<<<opaque return type of View.listRowSeparatorTint(_:edges:)>>.0, _PaddingLayout>, HStack<TupleView<(ModifiedContent<Spacer, _FrameLayout>, ModifiedContent<ModifiedContent<ModifiedContent<Rectangle, _ForegroundStyleModifier<SeparatorShapeStyle>>, _FrameLayout>, _PaddingLayout>)>>?)>>)>> and conformance VStack<A>, &_s7SwiftUI6VStackVyAA9TupleViewVyAA0E0PAAE20listRowSeparatorTint_5edgesQrAA5ColorVSg_AA12VerticalEdgeO3SetVtFQOy07WorkoutB006RepeatgE0V_Qo__AA15ModifiedContentVyAVyAVyAA9RectangleVAA24_ForegroundStyleModifierVyAA0h5ShapeU0VGGAA12_FrameLayoutVGAA08_PaddingY0VGAA7ForEachVySay0O4Core0O4StepCG10Foundation4UUIDVAEyAVyAgAEAH_AIQrAL_APtFQOyAQ0o4StepG0V_Qo_A7_G_AA6HStackVyAEyAVyAA6SpacerVA4_G_A8_tGGSgtGGtGGMd);
    lazy protocol witness table accessor for type ForEach<[WorkoutStep], UUID, <<opaque return type of View.listRowSeparatorTint(_:edges:)>>.0> and conformance <> ForEach<A, B, C>();
    _ConditionalContent<>.init(storage:)();
    return (*(v25 + 8))(v6, v26);
  }
}

uint64_t closure #1 in closure #1 in BlockSectionView.body.getter@<X0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X2>, char *a4@<X8>)
{
  v48 = a3;
  v52 = a4;
  v51 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI7ForEachVySay11WorkoutCore0E4StepCG10Foundation4UUIDVAA9TupleViewVyAA15ModifiedContentVyAA0K0PAAE20listRowSeparatorTint_5edgesQrAA5ColorVSg_AA12VerticalEdgeO3SetVtFQOy0eB00egO0V_Qo_AA14_PaddingLayoutVG_AA6HStackVyALyANyAA6SpacerVAA06_FrameX0VG_ANyANyANyAA9RectangleVAA24_ForegroundStyleModifierVyAA0P10ShapeStyleVGGA10_GA3_GtGGSgtGGMd);
  v57 = *(v51 - 8);
  v6 = MEMORY[0x28223BE20](v51);
  v50 = &v46 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v56 = &v46 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyACyACyAA9RectangleVAA24_ForegroundStyleModifierVyAA014SeparatorShapeG0VGGAA12_FrameLayoutVGAA08_PaddingL0VGMd);
  v10 = v9 - 8;
  v11 = MEMORY[0x28223BE20](v9);
  v49 = &v46 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v14 = &v46 - v13;
  v55 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI4ViewPAAE20listRowSeparatorTint_5edgesQrAA5ColorVSg_AA12VerticalEdgeO3SetVtFQOy07WorkoutB006RepeateC0V_Qo_Md);
  v47 = *(v55 - 8);
  v15 = v47;
  v16 = MEMORY[0x28223BE20](v55);
  v54 = &v46 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v19 = &v46 - v18;
  v58 = WorkoutBlock.repetitions.getter();
  static Binding.constant(_:)();
  *(&v60 + 1) = 0;
  LOBYTE(v61) = 1;
  static Color.black.getter();
  static VerticalEdge.Set.all.getter();
  lazy protocol witness table accessor for type RepeatRowView and conformance RepeatRowView();
  v46 = v19;
  View.listRowSeparatorTint(_:edges:)();

  SeparatorShapeStyle.init()();
  static Alignment.center.getter();
  _FrameLayout.init(width:height:alignment:)();
  v20 = &v14[*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyACyAA9RectangleVAA24_ForegroundStyleModifierVyAA014SeparatorShapeG0VGGAA12_FrameLayoutVGMd) + 36)];
  v53 = v14;
  v21 = v60;
  *v20 = v59;
  *(v20 + 1) = v21;
  *(v20 + 2) = v61;
  v22 = static Edge.Set.trailing.getter();
  EdgeInsets.init(_all:)();
  v23 = &v14[*(v10 + 44)];
  *v23 = v22;
  *(v23 + 1) = v24;
  *(v23 + 2) = v25;
  *(v23 + 3) = v26;
  *(v23 + 4) = v27;
  v23[40] = 0;
  v58 = WorkoutBlock.steps.getter();
  v28 = swift_allocObject();
  v28[2] = a1;
  v28[3] = a2;
  v28[4] = v48;

  v29 = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay11WorkoutCore0A4StepCGMd);
  type metadata accessor for UUID();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI9TupleViewVyAA15ModifiedContentVyAA0D0PAAE20listRowSeparatorTint_5edgesQrAA5ColorVSg_AA12VerticalEdgeO3SetVtFQOy07WorkoutB00p4StepH0V_Qo_AA14_PaddingLayoutVG_AA6HStackVyACyAEyAA6SpacerVAA06_FrameS0VG_AEyAEyAEyAA9RectangleVAA24_ForegroundStyleModifierVyAA0i5ShapeY0VGGA1_GAVGtGGSgtGMd);
  lazy protocol witness table accessor for type VStack<TupleView<(<<opaque return type of View.listRowSeparatorTint(_:edges:)>>.0, ModifiedContent<ModifiedContent<ModifiedContent<Rectangle, _ForegroundStyleModifier<SeparatorShapeStyle>>, _FrameLayout>, _PaddingLayout>, ForEach<[WorkoutStep], UUID, TupleView<(ModifiedContent<<<opaque return type of View.listRowSeparatorTint(_:edges:)>>.0, _PaddingLayout>, HStack<TupleView<(ModifiedContent<Spacer, _FrameLayout>, ModifiedContent<ModifiedContent<ModifiedContent<Rectangle, _ForegroundStyleModifier<SeparatorShapeStyle>>, _FrameLayout>, _PaddingLayout>)>>?)>>)>> and conformance VStack<A>(&lazy protocol witness table cache variable for type [WorkoutStep] and conformance [A], &_sSay11WorkoutCore0A4StepCGMd);
  lazy protocol witness table accessor for type VStack<TupleView<(<<opaque return type of View.listRowSeparatorTint(_:edges:)>>.0, ModifiedContent<ModifiedContent<ModifiedContent<Rectangle, _ForegroundStyleModifier<SeparatorShapeStyle>>, _FrameLayout>, _PaddingLayout>, ForEach<[WorkoutStep], UUID, TupleView<(ModifiedContent<<<opaque return type of View.listRowSeparatorTint(_:edges:)>>.0, _PaddingLayout>, HStack<TupleView<(ModifiedContent<Spacer, _FrameLayout>, ModifiedContent<ModifiedContent<ModifiedContent<Rectangle, _ForegroundStyleModifier<SeparatorShapeStyle>>, _FrameLayout>, _PaddingLayout>)>>?)>>)>> and conformance VStack<A>(&lazy protocol witness table cache variable for type TupleView<(ModifiedContent<<<opaque return type of View.listRowSeparatorTint(_:edges:)>>.0, _PaddingLayout>, HStack<TupleView<(ModifiedContent<Spacer, _FrameLayout>, ModifiedContent<ModifiedContent<ModifiedContent<Rectangle, _ForegroundStyleModifier<SeparatorShapeStyle>>, _FrameLayout>, _PaddingLayout>)>>?)> and conformance TupleView<A>, &_s7SwiftUI9TupleViewVyAA15ModifiedContentVyAA0D0PAAE20listRowSeparatorTint_5edgesQrAA5ColorVSg_AA12VerticalEdgeO3SetVtFQOy07WorkoutB00p4StepH0V_Qo_AA14_PaddingLayoutVG_AA6HStackVyACyAEyAA6SpacerVAA06_FrameS0VG_AEyAEyAEyAA9RectangleVAA24_ForegroundStyleModifierVyAA0i5ShapeY0VGGA1_GAVGtGGSgtGMd);
  lazy protocol witness table accessor for type WorkoutBlockType and conformance WorkoutBlockType(&lazy protocol witness table cache variable for type WorkoutStep and conformance WorkoutStep, MEMORY[0x277D7DD30]);
  v30 = v56;
  ForEach<>.init(_:content:)();
  v31 = *(v15 + 16);
  v32 = v54;
  v33 = v19;
  v34 = v55;
  v31(v54, v33, v55);
  v35 = v49;
  outlined init with copy of ModifiedContent<ModifiedContent<ModifiedContent<Rectangle, _ForegroundStyleModifier<SeparatorShapeStyle>>, _FrameLayout>, _PaddingLayout>(v53, v49, &_s7SwiftUI15ModifiedContentVyACyACyAA9RectangleVAA24_ForegroundStyleModifierVyAA014SeparatorShapeG0VGGAA12_FrameLayoutVGAA08_PaddingL0VGMd);
  v36 = *(v57 + 16);
  v37 = v50;
  v38 = v30;
  v39 = v51;
  v36(v50, v38, v51);
  v40 = v52;
  v31(v52, v32, v34);
  v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI4ViewPAAE20listRowSeparatorTint_5edgesQrAA5ColorVSg_AA12VerticalEdgeO3SetVtFQOy07WorkoutB006RepeateC0V_Qo__AA15ModifiedContentVyARyARyAA9RectangleVAA24_ForegroundStyleModifierVyAA0f5ShapeS0VGGAA12_FrameLayoutVGAA08_PaddingW0VGAA7ForEachVySay0M4Core0M4StepCG10Foundation4UUIDVAA05TupleC0VyARyAcAEAD_AEQrAH_ALtFQOyAM0m4StepE0V_Qo_A3_G_AA6HStackVyA15_yARyAA6SpacerVA0_G_A4_tGGSgtGGtMd);
  outlined init with copy of ModifiedContent<ModifiedContent<ModifiedContent<Rectangle, _ForegroundStyleModifier<SeparatorShapeStyle>>, _FrameLayout>, _PaddingLayout>(v35, &v40[*(v41 + 48)], &_s7SwiftUI15ModifiedContentVyACyACyAA9RectangleVAA24_ForegroundStyleModifierVyAA014SeparatorShapeG0VGGAA12_FrameLayoutVGAA08_PaddingL0VGMd);
  v36(&v40[*(v41 + 64)], v37, v39);
  v42 = *(v57 + 8);
  v42(v56, v39);
  outlined destroy of ModifiedContent<ModifiedContent<ModifiedContent<Rectangle, _ForegroundStyleModifier<SeparatorShapeStyle>>, _FrameLayout>, _PaddingLayout>(v53, &_s7SwiftUI15ModifiedContentVyACyACyAA9RectangleVAA24_ForegroundStyleModifierVyAA014SeparatorShapeG0VGGAA12_FrameLayoutVGAA08_PaddingL0VGMd);
  v43 = *(v47 + 8);
  v44 = v55;
  v43(v46, v55);
  v42(v37, v39);
  outlined destroy of ModifiedContent<ModifiedContent<ModifiedContent<Rectangle, _ForegroundStyleModifier<SeparatorShapeStyle>>, _FrameLayout>, _PaddingLayout>(v35, &_s7SwiftUI15ModifiedContentVyACyACyAA9RectangleVAA24_ForegroundStyleModifierVyAA014SeparatorShapeG0VGGAA12_FrameLayoutVGAA08_PaddingL0VGMd);
  return (v43)(v54, v44);
}

unint64_t closure #1 in closure #1 in closure #1 in BlockSectionView.body.getter@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, void *a3@<X2>, uint64_t a4@<X8>)
{
  v48 = a4;
  v49 = a2;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI6HStackVyAA9TupleViewVyAA15ModifiedContentVyAA6SpacerVAA12_FrameLayoutVG_AGyAGyAGyAA9RectangleVAA24_ForegroundStyleModifierVyAA014SeparatorShapeM0VGGAKGAA08_PaddingJ0VGtGGMd);
  v46 = *(v6 - 8);
  v47 = v6;
  MEMORY[0x28223BE20](v6);
  v8 = &v45 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI6HStackVyAA9TupleViewVyAA15ModifiedContentVyAA6SpacerVAA12_FrameLayoutVG_AGyAGyAGyAA9RectangleVAA24_ForegroundStyleModifierVyAA014SeparatorShapeM0VGGAKGAA08_PaddingJ0VGtGGSgMd);
  v10 = MEMORY[0x28223BE20](v9 - 8);
  v12 = &v45 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v14 = &v45 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyAA4ViewPAAE20listRowSeparatorTint_5edgesQrAA5ColorVSg_AA12VerticalEdgeO3SetVtFQOy07WorkoutB00o4StepG0V_Qo_AA14_PaddingLayoutVGMd);
  v16 = v15 - 8;
  v17 = MEMORY[0x28223BE20](v15);
  v19 = &v45 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v21 = &v45 - v20;
  v22 = *a1;
  v23 = type metadata accessor for WorkoutStep();
  lazy protocol witness table accessor for type WorkoutBlockType and conformance WorkoutBlockType(&lazy protocol witness table cache variable for type WorkoutStep and conformance WorkoutStep, MEMORY[0x277D7DD30]);

  v24 = a3;
  v45 = v23;
  v51 = ObservedObject.init(wrappedValue:)();
  v52 = v25;
  v53 = v24;
  v54 = 0;
  static Color.black.getter();
  static VerticalEdge.Set.all.getter();
  lazy protocol witness table accessor for type WorkoutStepRow and conformance WorkoutStepRow();
  View.listRowSeparatorTint(_:edges:)();

  v26 = static Edge.Set.vertical.getter();
  EdgeInsets.init(_all:)();
  v27 = &v21[*(v16 + 44)];
  *v27 = v26;
  *(v27 + 1) = v28;
  *(v27 + 2) = v29;
  *(v27 + 3) = v30;
  *(v27 + 4) = v31;
  v27[40] = 0;

  result = WorkoutBlock.steps.getter();
  if (!(result >> 62))
  {
    v33 = *((result & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v33)
    {
      goto LABEL_3;
    }

LABEL_12:

    goto LABEL_13;
  }

  v42 = result;
  v33 = __CocoaSet.count.getter();
  result = v42;
  if (!v33)
  {
    goto LABEL_12;
  }

LABEL_3:
  v34 = __OFSUB__(v33, 1);
  v35 = v33 - 1;
  if (v34)
  {
    __break(1u);
    goto LABEL_17;
  }

  if ((result & 0xC000000000000001) != 0)
  {
LABEL_17:
    v36 = MEMORY[0x20F30C990](v35);
LABEL_8:

    v51 = v22;
    if (v36)
    {
      v50 = v36;
      lazy protocol witness table accessor for type WorkoutBlockType and conformance WorkoutBlockType(&lazy protocol witness table cache variable for type WorkoutStep and conformance WorkoutStep, MEMORY[0x277D7DD30]);
      v37 = dispatch thunk of static Equatable.== infix(_:_:)();

      v38 = v47;
      v39 = v48;
      v40 = v46;
      if (v37)
      {
        v41 = 1;
LABEL_15:
        (*(v40 + 56))(v14, v41, 1, v38);
        outlined init with copy of VStack<TupleView<(<<opaque return type of View.listRowSeparatorTint(_:edges:)>>.0, ModifiedContent<ModifiedContent<ModifiedContent<Rectangle, _ForegroundStyleModifier<SeparatorShapeStyle>>, _FrameLayout>, _PaddingLayout>, ForEach<[WorkoutStep], UUID, TupleView<(ModifiedContent<<<opaque return type of View.listRowSeparatorTint(_:edges:)>>.0, _PaddingLayout>, HStack<TupleView<(ModifiedContent<Spacer, _FrameLayout>, ModifiedContent<ModifiedContent<ModifiedContent<Rectangle, _ForegroundStyleModifier<SeparatorShapeStyle>>, _FrameLayout>, _PaddingLayout>)>>?)>>)>>(v21, v19, &_s7SwiftUI15ModifiedContentVyAA4ViewPAAE20listRowSeparatorTint_5edgesQrAA5ColorVSg_AA12VerticalEdgeO3SetVtFQOy07WorkoutB00o4StepG0V_Qo_AA14_PaddingLayoutVGMd);
        outlined init with copy of ModifiedContent<ModifiedContent<ModifiedContent<Rectangle, _ForegroundStyleModifier<SeparatorShapeStyle>>, _FrameLayout>, _PaddingLayout>(v14, v12, &_s7SwiftUI6HStackVyAA9TupleViewVyAA15ModifiedContentVyAA6SpacerVAA12_FrameLayoutVG_AGyAGyAGyAA9RectangleVAA24_ForegroundStyleModifierVyAA014SeparatorShapeM0VGGAKGAA08_PaddingJ0VGtGGSgMd);
        outlined init with copy of VStack<TupleView<(<<opaque return type of View.listRowSeparatorTint(_:edges:)>>.0, ModifiedContent<ModifiedContent<ModifiedContent<Rectangle, _ForegroundStyleModifier<SeparatorShapeStyle>>, _FrameLayout>, _PaddingLayout>, ForEach<[WorkoutStep], UUID, TupleView<(ModifiedContent<<<opaque return type of View.listRowSeparatorTint(_:edges:)>>.0, _PaddingLayout>, HStack<TupleView<(ModifiedContent<Spacer, _FrameLayout>, ModifiedContent<ModifiedContent<ModifiedContent<Rectangle, _ForegroundStyleModifier<SeparatorShapeStyle>>, _FrameLayout>, _PaddingLayout>)>>?)>>)>>(v19, v39, &_s7SwiftUI15ModifiedContentVyAA4ViewPAAE20listRowSeparatorTint_5edgesQrAA5ColorVSg_AA12VerticalEdgeO3SetVtFQOy07WorkoutB00o4StepG0V_Qo_AA14_PaddingLayoutVGMd);
        v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyAA4ViewPAAE20listRowSeparatorTint_5edgesQrAA5ColorVSg_AA12VerticalEdgeO3SetVtFQOy07WorkoutB00o4StepG0V_Qo_AA14_PaddingLayoutVG_AA6HStackVyAA05TupleE0VyACyAA6SpacerVAA06_FrameR0VG_ACyACyACyAA9RectangleVAA24_ForegroundStyleModifierVyAA0h5ShapeY0VGGA1_GATGtGGSgtMd);
        outlined init with copy of ModifiedContent<ModifiedContent<ModifiedContent<Rectangle, _ForegroundStyleModifier<SeparatorShapeStyle>>, _FrameLayout>, _PaddingLayout>(v12, v39 + *(v44 + 48), &_s7SwiftUI6HStackVyAA9TupleViewVyAA15ModifiedContentVyAA6SpacerVAA12_FrameLayoutVG_AGyAGyAGyAA9RectangleVAA24_ForegroundStyleModifierVyAA014SeparatorShapeM0VGGAKGAA08_PaddingJ0VGtGGSgMd);
        outlined destroy of ModifiedContent<ModifiedContent<ModifiedContent<Rectangle, _ForegroundStyleModifier<SeparatorShapeStyle>>, _FrameLayout>, _PaddingLayout>(v14, &_s7SwiftUI6HStackVyAA9TupleViewVyAA15ModifiedContentVyAA6SpacerVAA12_FrameLayoutVG_AGyAGyAGyAA9RectangleVAA24_ForegroundStyleModifierVyAA014SeparatorShapeM0VGGAKGAA08_PaddingJ0VGtGGSgMd);
        outlined destroy of VStack<TupleView<(<<opaque return type of View.listRowSeparatorTint(_:edges:)>>.0, ModifiedContent<ModifiedContent<ModifiedContent<Rectangle, _ForegroundStyleModifier<SeparatorShapeStyle>>, _FrameLayout>, _PaddingLayout>, ForEach<[WorkoutStep], UUID, TupleView<(ModifiedContent<<<opaque return type of View.listRowSeparatorTint(_:edges:)>>.0, _PaddingLayout>, HStack<TupleView<(ModifiedContent<Spacer, _FrameLayout>, ModifiedContent<ModifiedContent<ModifiedContent<Rectangle, _ForegroundStyleModifier<SeparatorShapeStyle>>, _FrameLayout>, _PaddingLayout>)>>?)>>)>>(v21, &_s7SwiftUI15ModifiedContentVyAA4ViewPAAE20listRowSeparatorTint_5edgesQrAA5ColorVSg_AA12VerticalEdgeO3SetVtFQOy07WorkoutB00o4StepG0V_Qo_AA14_PaddingLayoutVGMd);
        outlined destroy of ModifiedContent<ModifiedContent<ModifiedContent<Rectangle, _ForegroundStyleModifier<SeparatorShapeStyle>>, _FrameLayout>, _PaddingLayout>(v12, &_s7SwiftUI6HStackVyAA9TupleViewVyAA15ModifiedContentVyAA6SpacerVAA12_FrameLayoutVG_AGyAGyAGyAA9RectangleVAA24_ForegroundStyleModifierVyAA014SeparatorShapeM0VGGAKGAA08_PaddingJ0VGtGGSgMd);
        return outlined destroy of VStack<TupleView<(<<opaque return type of View.listRowSeparatorTint(_:edges:)>>.0, ModifiedContent<ModifiedContent<ModifiedContent<Rectangle, _ForegroundStyleModifier<SeparatorShapeStyle>>, _FrameLayout>, _PaddingLayout>, ForEach<[WorkoutStep], UUID, TupleView<(ModifiedContent<<<opaque return type of View.listRowSeparatorTint(_:edges:)>>.0, _PaddingLayout>, HStack<TupleView<(ModifiedContent<Spacer, _FrameLayout>, ModifiedContent<ModifiedContent<ModifiedContent<Rectangle, _ForegroundStyleModifier<SeparatorShapeStyle>>, _FrameLayout>, _PaddingLayout>)>>?)>>)>>(v19, &_s7SwiftUI15ModifiedContentVyAA4ViewPAAE20listRowSeparatorTint_5edgesQrAA5ColorVSg_AA12VerticalEdgeO3SetVtFQOy07WorkoutB00o4StepG0V_Qo_AA14_PaddingLayoutVGMd);
      }

LABEL_14:
      *v8 = static VerticalAlignment.center.getter();
      *(v8 + 1) = 0;
      v8[16] = 1;
      v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI13_VariadicViewO4TreeVy_AA13_HStackLayoutVAA05TupleD0VyAA15ModifiedContentVyAA6SpacerVAA06_FrameG0VG_AKyAKyAKyAA9RectangleVAA24_ForegroundStyleModifierVyAA014SeparatorShapeO0VGGAOGAA08_PaddingG0VGtGGMd);
      closure #1 in closure #1 in closure #1 in closure #1 in BlockSectionView.body.getter(&v8[*(v43 + 44)]);
      outlined init with take of HStack<TupleView<(ModifiedContent<Spacer, _FrameLayout>, ModifiedContent<ModifiedContent<ModifiedContent<Rectangle, _ForegroundStyleModifier<SeparatorShapeStyle>>, _FrameLayout>, _PaddingLayout>)>>(v8, v14);
      v41 = 0;
      goto LABEL_15;
    }

LABEL_13:

    v38 = v47;
    v39 = v48;
    v40 = v46;
    goto LABEL_14;
  }

  if ((v35 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (v35 < *((result & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v36 = *(result + 8 * v35 + 32);

    goto LABEL_8;
  }

  __break(1u);
  return result;
}

uint64_t closure #1 in closure #1 in closure #1 in closure #1 in BlockSectionView.body.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyACyACyAA9RectangleVAA24_ForegroundStyleModifierVyAA014SeparatorShapeG0VGGAA12_FrameLayoutVGAA08_PaddingL0VGMd);
  v3 = v2 - 8;
  v4 = MEMORY[0x28223BE20](v2);
  v6 = &v24 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v8 = &v24 - v7;
  static Alignment.center.getter();
  _FrameLayout.init(width:height:alignment:)();
  v9 = v29;
  v10 = v31;
  v25 = v32;
  v26 = v27;
  v38 = 1;
  v37 = v28;
  v36 = v30;
  SeparatorShapeStyle.init()();
  static Alignment.center.getter();
  _FrameLayout.init(width:height:alignment:)();
  v11 = &v8[*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyACyAA9RectangleVAA24_ForegroundStyleModifierVyAA014SeparatorShapeG0VGGAA12_FrameLayoutVGMd) + 36)];
  v12 = v34;
  *v11 = v33;
  *(v11 + 1) = v12;
  *(v11 + 2) = v35;
  v13 = static Edge.Set.trailing.getter();
  EdgeInsets.init(_all:)();
  v14 = &v8[*(v3 + 44)];
  *v14 = v13;
  *(v14 + 1) = v15;
  *(v14 + 2) = v16;
  *(v14 + 3) = v17;
  *(v14 + 4) = v18;
  v14[40] = 0;
  LOBYTE(v3) = v38;
  v19 = v37;
  v20 = v36;
  outlined init with copy of ModifiedContent<ModifiedContent<ModifiedContent<Rectangle, _ForegroundStyleModifier<SeparatorShapeStyle>>, _FrameLayout>, _PaddingLayout>(v8, v6, &_s7SwiftUI15ModifiedContentVyACyACyAA9RectangleVAA24_ForegroundStyleModifierVyAA014SeparatorShapeG0VGGAA12_FrameLayoutVGAA08_PaddingL0VGMd);
  *a1 = 0;
  *(a1 + 8) = v3;
  v21 = v25;
  *(a1 + 16) = v26;
  *(a1 + 24) = v19;
  *(a1 + 32) = v9;
  *(a1 + 40) = v20;
  *(a1 + 48) = v10;
  *(a1 + 56) = v21;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyAA6SpacerVAA12_FrameLayoutVG_ACyACyACyAA9RectangleVAA24_ForegroundStyleModifierVyAA014SeparatorShapeJ0VGGAGGAA08_PaddingG0VGtMd);
  outlined init with copy of ModifiedContent<ModifiedContent<ModifiedContent<Rectangle, _ForegroundStyleModifier<SeparatorShapeStyle>>, _FrameLayout>, _PaddingLayout>(v6, a1 + *(v22 + 48), &_s7SwiftUI15ModifiedContentVyACyACyAA9RectangleVAA24_ForegroundStyleModifierVyAA014SeparatorShapeG0VGGAA12_FrameLayoutVGAA08_PaddingL0VGMd);
  outlined destroy of ModifiedContent<ModifiedContent<ModifiedContent<Rectangle, _ForegroundStyleModifier<SeparatorShapeStyle>>, _FrameLayout>, _PaddingLayout>(v8, &_s7SwiftUI15ModifiedContentVyACyACyAA9RectangleVAA24_ForegroundStyleModifierVyAA014SeparatorShapeG0VGGAA12_FrameLayoutVGAA08_PaddingL0VGMd);
  return outlined destroy of ModifiedContent<ModifiedContent<ModifiedContent<Rectangle, _ForegroundStyleModifier<SeparatorShapeStyle>>, _FrameLayout>, _PaddingLayout>(v6, &_s7SwiftUI15ModifiedContentVyACyACyAA9RectangleVAA24_ForegroundStyleModifierVyAA014SeparatorShapeG0VGGAA12_FrameLayoutVGAA08_PaddingL0VGMd);
}

uint64_t closure #2 in closure #1 in BlockSectionView.body.getter(uint64_t a1, uint64_t a2, void *a3)
{
  type metadata accessor for WorkoutStep();
  lazy protocol witness table accessor for type WorkoutBlockType and conformance WorkoutBlockType(&lazy protocol witness table cache variable for type WorkoutStep and conformance WorkoutStep, MEMORY[0x277D7DD30]);

  v4 = a3;
  ObservedObject.init(wrappedValue:)();
  static Color.black.getter();
  static VerticalEdge.Set.all.getter();
  lazy protocol witness table accessor for type WorkoutStepRow and conformance WorkoutStepRow();
  View.listRowSeparatorTint(_:edges:)();
}

uint64_t protocol witness for View.body.getter in conformance BlockSectionView()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI19_ConditionalContentVyAA6VStackVyAA9TupleViewVyAA0G0PAAE20listRowSeparatorTint_5edgesQrAA5ColorVSg_AA12VerticalEdgeO3SetVtFQOy07WorkoutB006RepeatiG0V_Qo__AA08ModifiedD0VyAXyAXyAA9RectangleVAA24_ForegroundStyleModifierVyAA0j5ShapeV0VGGAA12_FrameLayoutVGAA08_PaddingZ0VGAA7ForEachVySay0Q4Core0Q4StepCG10Foundation4UUIDVAGyAXyAiAEAJ_AKQrAN_ARtFQOyAS0q4StepI0V_Qo_A9_G_AA6HStackVyAGyAXyAA6SpacerVA6_G_A10_tGGSgtGGtGGA12_yA16_A19_A22_GGMd);
  lazy protocol witness table accessor for type _ConditionalContent<VStack<TupleView<(<<opaque return type of View.listRowSeparatorTint(_:edges:)>>.0, ModifiedContent<ModifiedContent<ModifiedContent<Rectangle, _ForegroundStyleModifier<SeparatorShapeStyle>>, _FrameLayout>, _PaddingLayout>, ForEach<[WorkoutStep], UUID, TupleView<(ModifiedContent<<<opaque return type of View.listRowSeparatorTint(_:edges:)>>.0, _PaddingLayout>, HStack<TupleView<(ModifiedContent<Spacer, _FrameLayout>, ModifiedContent<ModifiedContent<ModifiedContent<Rectangle, _ForegroundStyleModifier<SeparatorShapeStyle>>, _FrameLayout>, _PaddingLayout>)>>?)>>)>>, ForEach<[WorkoutStep], UUID, <<opaque return type of View.listRowSeparatorTint(_:edges:)>>.0>> and conformance <> _ConditionalContent<A, B>();
  return Section<>.init(content:)();
}

unint64_t lazy protocol witness table accessor for type _ConditionalContent<VStack<TupleView<(<<opaque return type of View.listRowSeparatorTint(_:edges:)>>.0, ModifiedContent<ModifiedContent<ModifiedContent<Rectangle, _ForegroundStyleModifier<SeparatorShapeStyle>>, _FrameLayout>, _PaddingLayout>, ForEach<[WorkoutStep], UUID, TupleView<(ModifiedContent<<<opaque return type of View.listRowSeparatorTint(_:edges:)>>.0, _PaddingLayout>, HStack<TupleView<(ModifiedContent<Spacer, _FrameLayout>, ModifiedContent<ModifiedContent<ModifiedContent<Rectangle, _ForegroundStyleModifier<SeparatorShapeStyle>>, _FrameLayout>, _PaddingLayout>)>>?)>>)>>, ForEach<[WorkoutStep], UUID, <<opaque return type of View.listRowSeparatorTint(_:edges:)>>.0>> and conformance <> _ConditionalContent<A, B>()
{
  result = lazy protocol witness table cache variable for type _ConditionalContent<VStack<TupleView<(<<opaque return type of View.listRowSeparatorTint(_:edges:)>>.0, ModifiedContent<ModifiedContent<ModifiedContent<Rectangle, _ForegroundStyleModifier<SeparatorShapeStyle>>, _FrameLayout>, _PaddingLayout>, ForEach<[WorkoutStep], UUID, TupleView<(ModifiedContent<<<opaque return type of View.listRowSeparatorTint(_:edges:)>>.0, _PaddingLayout>, HStack<TupleView<(ModifiedContent<Spacer, _FrameLayout>, ModifiedContent<ModifiedContent<ModifiedContent<Rectangle, _ForegroundStyleModifier<SeparatorShapeStyle>>, _FrameLayout>, _PaddingLayout>)>>?)>>)>>, ForEach<[WorkoutStep], UUID, <<opaque return type of View.listRowSeparatorTint(_:edges:)>>.0>> and conformance <> _ConditionalContent<A, B>;
  if (!lazy protocol witness table cache variable for type _ConditionalContent<VStack<TupleView<(<<opaque return type of View.listRowSeparatorTint(_:edges:)>>.0, ModifiedContent<ModifiedContent<ModifiedContent<Rectangle, _ForegroundStyleModifier<SeparatorShapeStyle>>, _FrameLayout>, _PaddingLayout>, ForEach<[WorkoutStep], UUID, TupleView<(ModifiedContent<<<opaque return type of View.listRowSeparatorTint(_:edges:)>>.0, _PaddingLayout>, HStack<TupleView<(ModifiedContent<Spacer, _FrameLayout>, ModifiedContent<ModifiedContent<ModifiedContent<Rectangle, _ForegroundStyleModifier<SeparatorShapeStyle>>, _FrameLayout>, _PaddingLayout>)>>?)>>)>>, ForEach<[WorkoutStep], UUID, <<opaque return type of View.listRowSeparatorTint(_:edges:)>>.0>> and conformance <> _ConditionalContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI19_ConditionalContentVyAA6VStackVyAA9TupleViewVyAA0G0PAAE20listRowSeparatorTint_5edgesQrAA5ColorVSg_AA12VerticalEdgeO3SetVtFQOy07WorkoutB006RepeatiG0V_Qo__AA08ModifiedD0VyAXyAXyAA9RectangleVAA24_ForegroundStyleModifierVyAA0j5ShapeV0VGGAA12_FrameLayoutVGAA08_PaddingZ0VGAA7ForEachVySay0Q4Core0Q4StepCG10Foundation4UUIDVAGyAXyAiAEAJ_AKQrAN_ARtFQOyAS0q4StepI0V_Qo_A9_G_AA6HStackVyAGyAXyAA6SpacerVA6_G_A10_tGGSgtGGtGGA12_yA16_A19_A22_GGMd);
    lazy protocol witness table accessor for type VStack<TupleView<(<<opaque return type of View.listRowSeparatorTint(_:edges:)>>.0, ModifiedContent<ModifiedContent<ModifiedContent<Rectangle, _ForegroundStyleModifier<SeparatorShapeStyle>>, _FrameLayout>, _PaddingLayout>, ForEach<[WorkoutStep], UUID, TupleView<(ModifiedContent<<<opaque return type of View.listRowSeparatorTint(_:edges:)>>.0, _PaddingLayout>, HStack<TupleView<(ModifiedContent<Spacer, _FrameLayout>, ModifiedContent<ModifiedContent<ModifiedContent<Rectangle, _ForegroundStyleModifier<SeparatorShapeStyle>>, _FrameLayout>, _PaddingLayout>)>>?)>>)>> and conformance VStack<A>(&lazy protocol witness table cache variable for type VStack<TupleView<(<<opaque return type of View.listRowSeparatorTint(_:edges:)>>.0, ModifiedContent<ModifiedContent<ModifiedContent<Rectangle, _ForegroundStyleModifier<SeparatorShapeStyle>>, _FrameLayout>, _PaddingLayout>, ForEach<[WorkoutStep], UUID, TupleView<(ModifiedContent<<<opaque return type of View.listRowSeparatorTint(_:edges:)>>.0, _PaddingLayout>, HStack<TupleView<(ModifiedContent<Spacer, _FrameLayout>, ModifiedContent<ModifiedContent<ModifiedContent<Rectangle, _ForegroundStyleModifier<SeparatorShapeStyle>>, _FrameLayout>, _PaddingLayout>)>>?)>>)>> and conformance VStack<A>, &_s7SwiftUI6VStackVyAA9TupleViewVyAA0E0PAAE20listRowSeparatorTint_5edgesQrAA5ColorVSg_AA12VerticalEdgeO3SetVtFQOy07WorkoutB006RepeatgE0V_Qo__AA15ModifiedContentVyAVyAVyAA9RectangleVAA24_ForegroundStyleModifierVyAA0h5ShapeU0VGGAA12_FrameLayoutVGAA08_PaddingY0VGAA7ForEachVySay0O4Core0O4StepCG10Foundation4UUIDVAEyAVyAgAEAH_AIQrAL_APtFQOyAQ0o4StepG0V_Qo_A7_G_AA6HStackVyAEyAVyAA6SpacerVA4_G_A8_tGGSgtGGtGGMd);
    lazy protocol witness table accessor for type ForEach<[WorkoutStep], UUID, <<opaque return type of View.listRowSeparatorTint(_:edges:)>>.0> and conformance <> ForEach<A, B, C>();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type _ConditionalContent<VStack<TupleView<(<<opaque return type of View.listRowSeparatorTint(_:edges:)>>.0, ModifiedContent<ModifiedContent<ModifiedContent<Rectangle, _ForegroundStyleModifier<SeparatorShapeStyle>>, _FrameLayout>, _PaddingLayout>, ForEach<[WorkoutStep], UUID, TupleView<(ModifiedContent<<<opaque return type of View.listRowSeparatorTint(_:edges:)>>.0, _PaddingLayout>, HStack<TupleView<(ModifiedContent<Spacer, _FrameLayout>, ModifiedContent<ModifiedContent<ModifiedContent<Rectangle, _ForegroundStyleModifier<SeparatorShapeStyle>>, _FrameLayout>, _PaddingLayout>)>>?)>>)>>, ForEach<[WorkoutStep], UUID, <<opaque return type of View.listRowSeparatorTint(_:edges:)>>.0>> and conformance <> _ConditionalContent<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ForEach<[WorkoutStep], UUID, <<opaque return type of View.listRowSeparatorTint(_:edges:)>>.0> and conformance <> ForEach<A, B, C>()
{
  result = lazy protocol witness table cache variable for type ForEach<[WorkoutStep], UUID, <<opaque return type of View.listRowSeparatorTint(_:edges:)>>.0> and conformance <> ForEach<A, B, C>;
  if (!lazy protocol witness table cache variable for type ForEach<[WorkoutStep], UUID, <<opaque return type of View.listRowSeparatorTint(_:edges:)>>.0> and conformance <> ForEach<A, B, C>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI7ForEachVySay11WorkoutCore0E4StepCG10Foundation4UUIDVAA4ViewPAAE20listRowSeparatorTint_5edgesQrAA5ColorVSg_AA12VerticalEdgeO3SetVtFQOy0eB00egL0V_Qo_GMd);
    lazy protocol witness table accessor for type WorkoutStepRow and conformance WorkoutStepRow();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ForEach<[WorkoutStep], UUID, <<opaque return type of View.listRowSeparatorTint(_:edges:)>>.0> and conformance <> ForEach<A, B, C>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type WorkoutStepRow and conformance WorkoutStepRow()
{
  result = lazy protocol witness table cache variable for type WorkoutStepRow and conformance WorkoutStepRow;
  if (!lazy protocol witness table cache variable for type WorkoutStepRow and conformance WorkoutStepRow)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type WorkoutStepRow and conformance WorkoutStepRow);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type RepeatRowView and conformance RepeatRowView()
{
  result = lazy protocol witness table cache variable for type RepeatRowView and conformance RepeatRowView;
  if (!lazy protocol witness table cache variable for type RepeatRowView and conformance RepeatRowView)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type RepeatRowView and conformance RepeatRowView);
  }

  return result;
}

uint64_t objectdestroyTm_1()
{

  return swift_deallocObject();
}

uint64_t lazy protocol witness table accessor for type VStack<TupleView<(<<opaque return type of View.listRowSeparatorTint(_:edges:)>>.0, ModifiedContent<ModifiedContent<ModifiedContent<Rectangle, _ForegroundStyleModifier<SeparatorShapeStyle>>, _FrameLayout>, _PaddingLayout>, ForEach<[WorkoutStep], UUID, TupleView<(ModifiedContent<<<opaque return type of View.listRowSeparatorTint(_:edges:)>>.0, _PaddingLayout>, HStack<TupleView<(ModifiedContent<Spacer, _FrameLayout>, ModifiedContent<ModifiedContent<ModifiedContent<Rectangle, _ForegroundStyleModifier<SeparatorShapeStyle>>, _FrameLayout>, _PaddingLayout>)>>?)>>)>> and conformance VStack<A>(unint64_t *a1, uint64_t *a2)
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

uint64_t outlined init with take of HStack<TupleView<(ModifiedContent<Spacer, _FrameLayout>, ModifiedContent<ModifiedContent<ModifiedContent<Rectangle, _ForegroundStyleModifier<SeparatorShapeStyle>>, _FrameLayout>, _PaddingLayout>)>>(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI6HStackVyAA9TupleViewVyAA15ModifiedContentVyAA6SpacerVAA12_FrameLayoutVG_AGyAGyAGyAA9RectangleVAA24_ForegroundStyleModifierVyAA014SeparatorShapeM0VGGAKGAA08_PaddingJ0VGtGGMd);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t outlined init with copy of VStack<TupleView<(<<opaque return type of View.listRowSeparatorTint(_:edges:)>>.0, ModifiedContent<ModifiedContent<ModifiedContent<Rectangle, _ForegroundStyleModifier<SeparatorShapeStyle>>, _FrameLayout>, _PaddingLayout>, ForEach<[WorkoutStep], UUID, TupleView<(ModifiedContent<<<opaque return type of View.listRowSeparatorTint(_:edges:)>>.0, _PaddingLayout>, HStack<TupleView<(ModifiedContent<Spacer, _FrameLayout>, ModifiedContent<ModifiedContent<ModifiedContent<Rectangle, _ForegroundStyleModifier<SeparatorShapeStyle>>, _FrameLayout>, _PaddingLayout>)>>?)>>)>>(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(a3);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t outlined init with copy of ModifiedContent<ModifiedContent<ModifiedContent<Rectangle, _ForegroundStyleModifier<SeparatorShapeStyle>>, _FrameLayout>, _PaddingLayout>(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(a3);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t outlined destroy of ModifiedContent<ModifiedContent<ModifiedContent<Rectangle, _ForegroundStyleModifier<SeparatorShapeStyle>>, _FrameLayout>, _PaddingLayout>(uint64_t a1, uint64_t *a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(a2);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t outlined destroy of VStack<TupleView<(<<opaque return type of View.listRowSeparatorTint(_:edges:)>>.0, ModifiedContent<ModifiedContent<ModifiedContent<Rectangle, _ForegroundStyleModifier<SeparatorShapeStyle>>, _FrameLayout>, _PaddingLayout>, ForEach<[WorkoutStep], UUID, TupleView<(ModifiedContent<<<opaque return type of View.listRowSeparatorTint(_:edges:)>>.0, _PaddingLayout>, HStack<TupleView<(ModifiedContent<Spacer, _FrameLayout>, ModifiedContent<ModifiedContent<ModifiedContent<Rectangle, _ForegroundStyleModifier<SeparatorShapeStyle>>, _FrameLayout>, _PaddingLayout>)>>?)>>)>>(uint64_t a1, uint64_t *a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(a2);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t lazy protocol witness table accessor for type WorkoutBlockType and conformance WorkoutBlockType(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t lazy protocol witness table accessor for type Section<EmptyView, _ConditionalContent<VStack<TupleView<(<<opaque return type of View.listRowSeparatorTint(_:edges:)>>.0, ModifiedContent<ModifiedContent<ModifiedContent<Rectangle, _ForegroundStyleModifier<SeparatorShapeStyle>>, _FrameLayout>, _PaddingLayout>, ForEach<[WorkoutStep], UUID, TupleView<(ModifiedContent<<<opaque return type of View.listRowSeparatorTint(_:edges:)>>.0, _PaddingLayout>, HStack<TupleView<(ModifiedContent<Spacer, _FrameLayout>, ModifiedContent<ModifiedContent<ModifiedContent<Rectangle, _ForegroundStyleModifier<SeparatorShapeStyle>>, _FrameLayout>, _PaddingLayout>)>>?)>>)>>, ForEach<[WorkoutStep], UUID, <<opaque return type of View.listRowSeparatorTint(_:edges:)>>.0>>, EmptyView> and conformance <> Section<A, B, C>()
{
  result = lazy protocol witness table cache variable for type Section<EmptyView, _ConditionalContent<VStack<TupleView<(<<opaque return type of View.listRowSeparatorTint(_:edges:)>>.0, ModifiedContent<ModifiedContent<ModifiedContent<Rectangle, _ForegroundStyleModifier<SeparatorShapeStyle>>, _FrameLayout>, _PaddingLayout>, ForEach<[WorkoutStep], UUID, TupleView<(ModifiedContent<<<opaque return type of View.listRowSeparatorTint(_:edges:)>>.0, _PaddingLayout>, HStack<TupleView<(ModifiedContent<Spacer, _FrameLayout>, ModifiedContent<ModifiedContent<ModifiedContent<Rectangle, _ForegroundStyleModifier<SeparatorShapeStyle>>, _FrameLayout>, _PaddingLayout>)>>?)>>)>>, ForEach<[WorkoutStep], UUID, <<opaque return type of View.listRowSeparatorTint(_:edges:)>>.0>>, EmptyView> and conformance <> Section<A, B, C>;
  if (!lazy protocol witness table cache variable for type Section<EmptyView, _ConditionalContent<VStack<TupleView<(<<opaque return type of View.listRowSeparatorTint(_:edges:)>>.0, ModifiedContent<ModifiedContent<ModifiedContent<Rectangle, _ForegroundStyleModifier<SeparatorShapeStyle>>, _FrameLayout>, _PaddingLayout>, ForEach<[WorkoutStep], UUID, TupleView<(ModifiedContent<<<opaque return type of View.listRowSeparatorTint(_:edges:)>>.0, _PaddingLayout>, HStack<TupleView<(ModifiedContent<Spacer, _FrameLayout>, ModifiedContent<ModifiedContent<ModifiedContent<Rectangle, _ForegroundStyleModifier<SeparatorShapeStyle>>, _FrameLayout>, _PaddingLayout>)>>?)>>)>>, ForEach<[WorkoutStep], UUID, <<opaque return type of View.listRowSeparatorTint(_:edges:)>>.0>>, EmptyView> and conformance <> Section<A, B, C>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI7SectionVyAA9EmptyViewVAA19_ConditionalContentVyAA6VStackVyAA05TupleE0VyAA0E0PAAE20listRowSeparatorTint_5edgesQrAA5ColorVSg_AA12VerticalEdgeO3SetVtFQOy07WorkoutB006RepeatkE0V_Qo__AA08ModifiedG0VyA0_yA0_yAA9RectangleVAA24_ForegroundStyleModifierVyAA0l5ShapeX0VGGAA12_FrameLayoutVGAA14_PaddingLayoutVGAA7ForEachVySay0S4Core0S4StepCG10Foundation4UUIDVAKyA0_yAmAEAN_AOQrAR_AVtFQOyAW0s4StepK0V_Qo_A13_G_AA6HStackVyAKyA0_yAA6SpacerVA10_G_A14_tGGSgtGGtGGA16_yA20_A23_A26_GGAEGMd);
    lazy protocol witness table accessor for type _ConditionalContent<VStack<TupleView<(<<opaque return type of View.listRowSeparatorTint(_:edges:)>>.0, ModifiedContent<ModifiedContent<ModifiedContent<Rectangle, _ForegroundStyleModifier<SeparatorShapeStyle>>, _FrameLayout>, _PaddingLayout>, ForEach<[WorkoutStep], UUID, TupleView<(ModifiedContent<<<opaque return type of View.listRowSeparatorTint(_:edges:)>>.0, _PaddingLayout>, HStack<TupleView<(ModifiedContent<Spacer, _FrameLayout>, ModifiedContent<ModifiedContent<ModifiedContent<Rectangle, _ForegroundStyleModifier<SeparatorShapeStyle>>, _FrameLayout>, _PaddingLayout>)>>?)>>)>>, ForEach<[WorkoutStep], UUID, <<opaque return type of View.listRowSeparatorTint(_:edges:)>>.0>> and conformance <> _ConditionalContent<A, B>();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Section<EmptyView, _ConditionalContent<VStack<TupleView<(<<opaque return type of View.listRowSeparatorTint(_:edges:)>>.0, ModifiedContent<ModifiedContent<ModifiedContent<Rectangle, _ForegroundStyleModifier<SeparatorShapeStyle>>, _FrameLayout>, _PaddingLayout>, ForEach<[WorkoutStep], UUID, TupleView<(ModifiedContent<<<opaque return type of View.listRowSeparatorTint(_:edges:)>>.0, _PaddingLayout>, HStack<TupleView<(ModifiedContent<Spacer, _FrameLayout>, ModifiedContent<ModifiedContent<ModifiedContent<Rectangle, _ForegroundStyleModifier<SeparatorShapeStyle>>, _FrameLayout>, _PaddingLayout>)>>?)>>)>>, ForEach<[WorkoutStep], UUID, <<opaque return type of View.listRowSeparatorTint(_:edges:)>>.0>>, EmptyView> and conformance <> Section<A, B, C>);
  }

  return result;
}

uint64_t one-time initialization function for backgroundAssertionType()
{
  v0 = type metadata accessor for BackgroundAssertionType();
  __swift_allocate_value_buffer(v0, static RemoteStartWorkoutBackgroundAssertion.backgroundAssertionType);
  v1 = __swift_project_value_buffer(v0, static RemoteStartWorkoutBackgroundAssertion.backgroundAssertionType);
  v2 = *MEMORY[0x277D7E3D0];
  v3 = *(*(v0 - 8) + 104);

  return v3(v1, v2, v0);
}

uint64_t one-time initialization function for backgroundAssertionUUID()
{
  v0 = type metadata accessor for UUID();
  __swift_allocate_value_buffer(v0, static RemoteStartWorkoutBackgroundAssertion.backgroundAssertionUUID);
  __swift_project_value_buffer(v0, static RemoteStartWorkoutBackgroundAssertion.backgroundAssertionUUID);
  return UUID.init()();
}

id RemoteStartWorkoutBackgroundAssertion.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id RemoteStartWorkoutBackgroundAssertion.init()()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for RemoteStartWorkoutBackgroundAssertion();
  return objc_msgSendSuper2(&v2, sel_init);
}

id RemoteStartWorkoutBackgroundAssertion.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for RemoteStartWorkoutBackgroundAssertion();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t specialized RemoteStartWorkoutBackgroundAssertion.acquireBackgroundAssertion()()
{
  v0 = type metadata accessor for Logger();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v25 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for WorkoutCoreInjector();
  v4 = static WorkoutCoreInjector.shared.getter();
  v5 = dispatch thunk of WorkoutCoreInjector.inject()();

  if (one-time initialization token for backgroundAssertionType != -1)
  {
    swift_once();
  }

  v6 = type metadata accessor for BackgroundAssertionType();
  __swift_project_value_buffer(v6, static RemoteStartWorkoutBackgroundAssertion.backgroundAssertionType);
  if (one-time initialization token for backgroundAssertionUUID != -1)
  {
    swift_once();
  }

  v7 = type metadata accessor for UUID();
  __swift_project_value_buffer(v7, static RemoteStartWorkoutBackgroundAssertion.backgroundAssertionUUID);
  v29 = BackgroundAssertionManager.acquire(type:uuid:explanation:timeout:)();
  static WOLog.default.getter();
  v8 = v5;
  v9 = Logger.logObject.getter();
  v10 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    v28 = v0;
    v12 = v11;
    v13 = swift_slowAlloc();
    v27 = v1;
    v14 = v13;
    v30 = v13;
    *v12 = 136315650;
    lazy protocol witness table accessor for type BackgroundAssertionType and conformance BackgroundAssertionType(&lazy protocol witness table cache variable for type BackgroundAssertionType and conformance BackgroundAssertionType, MEMORY[0x277D7E3D8]);
    v26 = v8;
    v15 = dispatch thunk of CustomStringConvertible.description.getter();
    v17 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v15, v16, &v30);

    *(v12 + 4) = v17;
    *(v12 + 12) = 2080;
    lazy protocol witness table accessor for type BackgroundAssertionType and conformance BackgroundAssertionType(&lazy protocol witness table cache variable for type UUID and conformance UUID, MEMORY[0x277CC95F0]);
    v18 = dispatch thunk of CustomStringConvertible.description.getter();
    v20 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v18, v19, &v30);

    *(v12 + 14) = v20;
    *(v12 + 22) = 2080;
    v21 = BackgroundAssertionAcquireResult.description.getter();
    v23 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v21, v22, &v30);

    *(v12 + 24) = v23;
    _os_log_impl(&dword_20C66F000, v9, v10, "[RemoteStartWorkoutBackgroundAssertion] acquire remoteStartWorkout background assertion (%s, %s) acquired: %s", v12, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x20F30E080](v14, -1, -1);
    MEMORY[0x20F30E080](v12, -1, -1);

    return (*(v27 + 8))(v3, v28);
  }

  else
  {

    return (*(v1 + 8))(v3, v0);
  }
}

uint64_t specialized RemoteStartWorkoutBackgroundAssertion.releaseBackgroundAssertionIfAny()()
{
  v0 = type metadata accessor for Logger();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v25 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for WorkoutCoreInjector();
  v4 = static WorkoutCoreInjector.shared.getter();
  v5 = dispatch thunk of WorkoutCoreInjector.inject()();

  if (one-time initialization token for backgroundAssertionType != -1)
  {
    swift_once();
  }

  v6 = type metadata accessor for BackgroundAssertionType();
  __swift_project_value_buffer(v6, static RemoteStartWorkoutBackgroundAssertion.backgroundAssertionType);
  if (one-time initialization token for backgroundAssertionUUID != -1)
  {
    swift_once();
  }

  v7 = type metadata accessor for UUID();
  __swift_project_value_buffer(v7, static RemoteStartWorkoutBackgroundAssertion.backgroundAssertionUUID);
  v29 = BackgroundAssertionManager.release(type:uuid:)();
  static WOLog.default.getter();
  v8 = v5;
  v9 = Logger.logObject.getter();
  v10 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    v28 = v0;
    v12 = v11;
    v13 = swift_slowAlloc();
    v27 = v1;
    v14 = v13;
    v30 = v13;
    *v12 = 136315650;
    lazy protocol witness table accessor for type BackgroundAssertionType and conformance BackgroundAssertionType(&lazy protocol witness table cache variable for type BackgroundAssertionType and conformance BackgroundAssertionType, MEMORY[0x277D7E3D8]);
    v26 = v8;
    v15 = dispatch thunk of CustomStringConvertible.description.getter();
    v17 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v15, v16, &v30);

    *(v12 + 4) = v17;
    *(v12 + 12) = 2080;
    lazy protocol witness table accessor for type BackgroundAssertionType and conformance BackgroundAssertionType(&lazy protocol witness table cache variable for type UUID and conformance UUID, MEMORY[0x277CC95F0]);
    v18 = dispatch thunk of CustomStringConvertible.description.getter();
    v20 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v18, v19, &v30);

    *(v12 + 14) = v20;
    *(v12 + 22) = 2080;
    if (v29)
    {
      v21 = 0x64657361656C6572;
    }

    else
    {
      v21 = 0xD000000000000010;
    }

    if (v29)
    {
      v22 = 0xE800000000000000;
    }

    else
    {
      v22 = 0x800000020CB93C20;
    }

    v23 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v21, v22, &v30);

    *(v12 + 24) = v23;
    _os_log_impl(&dword_20C66F000, v9, v10, "[RemoteStartWorkoutBackgroundAssertion] release remoteStartWorkout background assertion (%s, %s) %s", v12, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x20F30E080](v14, -1, -1);
    MEMORY[0x20F30E080](v12, -1, -1);

    return (*(v27 + 8))(v3, v28);
  }

  else
  {

    return (*(v1 + 8))(v3, v0);
  }
}

uint64_t __swift_project_value_buffer(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

uint64_t lazy protocol witness table accessor for type BackgroundAssertionType and conformance BackgroundAssertionType(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t *__swift_allocate_value_buffer(uint64_t a1, uint64_t *a2)
{
  if ((*(*(a1 - 8) + 80) & 0x20000) != 0)
  {
    v3 = swift_slowAlloc();
    *a2 = v3;
    return v3;
  }

  return a2;
}

uint64_t one-time initialization function for expanded(uint64_t a1, uint64_t *a2)
{
  v3 = type metadata accessor for PresentationDetent();
  __swift_allocate_value_buffer(v3, a2);
  __swift_project_value_buffer(v3, a2);
  return static PresentationDetent.fraction(_:)();
}

uint64_t MapHostingMirrorView.init(lowPowerModeMonitor:monitor:notificationCenter:sessionViewModel:dismissClosure:)@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X4>, uint64_t a5@<X5>, uint64_t *a6@<X8>)
{
  v25 = a4;
  v26 = a5;
  v23 = a2;
  v24 = a3;
  v8 = type metadata accessor for PresentationDetent();
  v9 = *(v8 - 8);
  v10 = MEMORY[0x28223BE20](v8);
  v12 = &v23 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v14 = &v23 - v13;
  type metadata accessor for MapHostingMirrorView();
  if (one-time initialization token for expanded != -1)
  {
    swift_once();
  }

  v15 = __swift_project_value_buffer(v8, static PresentationDetent.expanded);
  v16 = *(v9 + 16);
  v16(v14, v15, v8);
  v16(v12, v14, v8);
  State.init(wrappedValue:)();
  (*(v9 + 8))(v14, v8);
  type metadata accessor for LowPowerModeMonitor();
  lazy protocol witness table accessor for type LowPowerModeMonitor and conformance LowPowerModeMonitor(&lazy protocol witness table cache variable for type LowPowerModeMonitor and conformance LowPowerModeMonitor, MEMORY[0x277D7E2F8]);
  result = ObservedObject.init(wrappedValue:)();
  *a6 = result;
  a6[1] = v18;
  v19 = v23;
  v20 = v24;
  a6[2] = a1;
  a6[3] = v19;
  v22 = v25;
  v21 = v26;
  a6[4] = v20;
  a6[5] = v22;
  a6[6] = v21;
  return result;
}

uint64_t type metadata accessor for MapHostingMirrorView()
{
  result = type metadata singleton initialization cache for MapHostingMirrorView;
  if (!type metadata singleton initialization cache for MapHostingMirrorView)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t MapHostingMirrorView.body.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v22 = a1;
  v3 = type metadata accessor for MapHostingMirrorView();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v6 = *(*(v1 + 16) + OBJC_IVAR____TtC9WorkoutUI15DataLinkMonitor_publisher);
  MetricsPublisher.locationPositionPublisher.getter();

  type metadata accessor for LocationPositionPublisher();
  lazy protocol witness table accessor for type LowPowerModeMonitor and conformance LowPowerModeMonitor(&lazy protocol witness table cache variable for type LocationPositionPublisher and conformance LocationPositionPublisher, MEMORY[0x277D7E528]);
  v25 = ObservedObject.init(wrappedValue:)();
  v26 = v7;
  LOBYTE(v23) = 1;
  static Binding.constant(_:)();
  outlined init with copy of MapHostingMirrorView(v2, &v22 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for MapHostingMirrorView);
  v8 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v9 = swift_allocObject();
  outlined init with take of MapHostingMirrorView(&v22 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), v9 + v8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI4ViewPAAE26interactiveDismissDisabledyQrSbFQOyAcAE30presentationContentInteractionyQrAA012PresentationhI0VFQOyAcAE0g10BackgroundI0yQrAA0jkI0VFQOyAcAE0G7Detents_9selectionQrShyAA0J6DetentVG_AA7BindingVyANGtFQOyAA010NavigationC0VyAA012_ConditionalH0Vy07WorkoutB007SessionC0VAA08ModifiedH0VyAW0s6StatusC0VAA14_PaddingLayoutVGGSgG_Qo__Qo__Qo__Qo_Md);
  lazy protocol witness table accessor for type BreadcrumbMapView and conformance BreadcrumbMapView();
  v10 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI4ViewPAAE30presentationContentInteractionyQrAA012PresentationeF0VFQOyAcAE0d10BackgroundF0yQrAA0ghF0VFQOyAcAE0D7Detents_9selectionQrShyAA0G6DetentVG_AA7BindingVyAMGtFQOyAA010NavigationC0VyAA012_ConditionalE0Vy07WorkoutB007SessionC0VAA08ModifiedE0VyAV0p6StatusC0VAA14_PaddingLayoutVGGSgG_Qo__Qo__Qo_Md);
  v11 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI4ViewPAAE33presentationBackgroundInteractionyQrAA012PresentationeF0VFQOyAcAE0D7Detents_9selectionQrShyAA0G6DetentVG_AA7BindingVyAJGtFQOyAA010NavigationC0VyAA19_ConditionalContentVy07WorkoutB007SessionC0VAA08ModifiedN0VyAS0p6StatusC0VAA14_PaddingLayoutVGGSgG_Qo__Qo_Md);
  v12 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI4ViewPAAE19presentationDetents_9selectionQrShyAA18PresentationDetentVG_AA7BindingVyAGGtFQOyAA010NavigationC0VyAA19_ConditionalContentVy07WorkoutB007SessionC0VAA08ModifiedL0VyAP0n6StatusC0VAA14_PaddingLayoutVGGSgG_Qo_Md);
  v13 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI14NavigationViewVyAA19_ConditionalContentVy07WorkoutB007SessionD0VAA08ModifiedF0VyAF0h6StatusD0VAA14_PaddingLayoutVGGSgGMd);
  v14 = lazy protocol witness table accessor for type NavigationView<_ConditionalContent<SessionView, ModifiedContent<SessionStatusView, _PaddingLayout>>?> and conformance NavigationView<A>();
  v23 = v13;
  v24 = v14;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v23 = v12;
  v24 = OpaqueTypeConformance2;
  v16 = swift_getOpaqueTypeConformance2();
  v23 = v11;
  v24 = v16;
  v17 = swift_getOpaqueTypeConformance2();
  v23 = v10;
  v24 = v17;
  swift_getOpaqueTypeConformance2();
  v18 = v22;
  View.sheet<A>(isPresented:onDismiss:content:)();

  v19 = static SafeAreaRegions.all.getter();
  LOBYTE(v6) = static Edge.Set.all.getter();
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyAA4ViewPAAE5sheet11isPresented9onDismiss7contentQrAA7BindingVySbG_yycSgqd__yctAaDRd__lFQOy07WorkoutB0013BreadcrumbMapE0V_AeAE011interactiveJ8DisabledyQrSbFQOyAeAE012presentationD11InteractionyQrAA012PresentationdS0VFQOyAeAE0r10BackgroundS0yQrAA0tuS0VFQOyAeAE0R7Detents_9selectionQrShyAA0T6DetentVG_AKyA_GtFQOyAA010NavigationE0VyAA012_ConditionalD0VyAN07SessionE0VACyAN013SessionStatusE0VAA14_PaddingLayoutVGGSgG_Qo__Qo__Qo__Qo_Qo_AA30_SafeAreaRegionsIgnoringLayoutVGMd);
  v21 = v18 + *(result + 36);
  *v21 = v19;
  *(v21 + 8) = v6;
  return result;
}

uint64_t closure #1 in MapHostingMirrorView.body.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v64 = a2;
  v3 = type metadata accessor for PresentationContentInteraction();
  v62 = *(v3 - 8);
  v63 = v3;
  MEMORY[0x28223BE20](v3);
  v61 = &v42 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for PresentationDetent();
  v6 = *(v5 - 8);
  v7 = v6;
  MEMORY[0x28223BE20](v5);
  v56 = &v42 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v60 = type metadata accessor for PresentationBackgroundInteraction();
  v58 = *(v60 - 8);
  MEMORY[0x28223BE20](v60);
  v57 = &v42 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI7BindingVyAA18PresentationDetentVGMd);
  MEMORY[0x28223BE20](v10 - 8);
  v46 = &v42 - v11;
  v65 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI14NavigationViewVyAA19_ConditionalContentVy07WorkoutB007SessionD0VAA08ModifiedF0VyAF0h6StatusD0VAA14_PaddingLayoutVGGSgGMd);
  v45 = *(v65 - 8);
  MEMORY[0x28223BE20](v65);
  v13 = &v42 - v12;
  v51 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI4ViewPAAE19presentationDetents_9selectionQrShyAA18PresentationDetentVG_AA7BindingVyAGGtFQOyAA010NavigationC0VyAA19_ConditionalContentVy07WorkoutB007SessionC0VAA08ModifiedL0VyAP0n6StatusC0VAA14_PaddingLayoutVGGSgG_Qo_Md);
  v48 = *(v51 - 8);
  MEMORY[0x28223BE20](v51);
  v15 = &v42 - v14;
  v55 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI4ViewPAAE33presentationBackgroundInteractionyQrAA012PresentationeF0VFQOyAcAE0D7Detents_9selectionQrShyAA0G6DetentVG_AA7BindingVyAJGtFQOyAA010NavigationC0VyAA19_ConditionalContentVy07WorkoutB007SessionC0VAA08ModifiedN0VyAS0p6StatusC0VAA14_PaddingLayoutVGGSgG_Qo__Qo_Md);
  v52 = *(v55 - 8);
  MEMORY[0x28223BE20](v55);
  v49 = &v42 - v16;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI4ViewPAAE30presentationContentInteractionyQrAA012PresentationeF0VFQOyAcAE0d10BackgroundF0yQrAA0ghF0VFQOyAcAE0D7Detents_9selectionQrShyAA0G6DetentVG_AA7BindingVyAMGtFQOyAA010NavigationC0VyAA012_ConditionalE0Vy07WorkoutB007SessionC0VAA08ModifiedE0VyAV0p6StatusC0VAA14_PaddingLayoutVGGSgG_Qo__Qo__Qo_Md);
  v53 = *(v17 - 8);
  v54 = v17;
  MEMORY[0x28223BE20](v17);
  v50 = &v42 - v18;
  v59 = a1;
  v66 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI19_ConditionalContentVy07WorkoutB011SessionViewVAA08ModifiedD0VyAD0f6StatusG0VAA14_PaddingLayoutVGGSgMd);
  lazy protocol witness table accessor for type _ConditionalContent<SessionView, ModifiedContent<SessionStatusView, _PaddingLayout>>? and conformance <A> A?();
  v44 = v13;
  NavigationView.init(content:)();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy7SwiftUI18PresentationDetentVGMd);
  v19 = *(v6 + 72);
  v20 = (*(v7 + 80) + 32) & ~*(v7 + 80);
  v21 = swift_allocObject();
  *(v21 + 16) = xmmword_20CB5DA80;
  v22 = v21 + v20;
  if (one-time initialization token for expanded != -1)
  {
    swift_once();
  }

  v23 = __swift_project_value_buffer(v5, static PresentationDetent.expanded);
  v24 = *(v7 + 16);
  v24(v22, v23, v5);
  if (one-time initialization token for minimized != -1)
  {
    swift_once();
  }

  v43 = __swift_project_value_buffer(v5, static PresentationDetent.minimized);
  v24(v22 + v19, v43, v5);
  _sSh21_nonEmptyArrayLiteralShyxGSayxG_tcfC7SwiftUI18PresentationDetentV_Tt0g5Tf4g_n(v21);
  swift_setDeallocating();
  swift_arrayDestroy();
  swift_deallocClassInstance();
  type metadata accessor for MapHostingMirrorView();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI5StateVyAA18PresentationDetentVGMd);
  v25 = v46;
  State.projectedValue.getter();
  v26 = lazy protocol witness table accessor for type NavigationView<_ConditionalContent<SessionView, ModifiedContent<SessionStatusView, _PaddingLayout>>?> and conformance NavigationView<A>();
  v47 = v15;
  v27 = v65;
  v28 = v44;
  View.presentationDetents(_:selection:)();

  outlined destroy of Binding<PresentationDetent>(v25);
  (*(v45 + 8))(v28, v27);
  v29 = v56;
  State.wrappedValue.getter();
  LOBYTE(v28) = MEMORY[0x20F309460](v29, v43);
  (*(v7 + 8))(v29, v5);
  v30 = v57;
  if (v28)
  {
    static PresentationBackgroundInteraction.enabled.getter();
  }

  else
  {
    static PresentationBackgroundInteraction.disabled.getter();
  }

  v67 = v65;
  v68 = v26;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v32 = v49;
  v33 = v51;
  v34 = v47;
  View.presentationBackgroundInteraction(_:)();
  (*(v58 + 8))(v30, v60);
  v35 = (*(v48 + 8))(v34, v33);
  v36 = v61;
  MEMORY[0x20F309CF0](v35);
  v67 = v33;
  v68 = OpaqueTypeConformance2;
  v37 = swift_getOpaqueTypeConformance2();
  v38 = v50;
  v39 = v55;
  View.presentationContentInteraction(_:)();
  (*(v62 + 8))(v36, v63);
  (*(v52 + 8))(v32, v39);
  v67 = v39;
  v68 = v37;
  swift_getOpaqueTypeConformance2();
  v40 = v54;
  View.interactiveDismissDisabled(_:)();
  return (*(v53 + 8))(v38, v40);
}

uint64_t outlined init with take of MapHostingMirrorView(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for MapHostingMirrorView();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t partial apply for closure #1 in MapHostingMirrorView.body.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for MapHostingMirrorView() - 8);
  v4 = v1 + ((*(v3 + 80) + 16) & ~*(v3 + 80));

  return closure #1 in MapHostingMirrorView.body.getter(v4, a1);
}

unint64_t lazy protocol witness table accessor for type BreadcrumbMapView and conformance BreadcrumbMapView()
{
  result = lazy protocol witness table cache variable for type BreadcrumbMapView and conformance BreadcrumbMapView;
  if (!lazy protocol witness table cache variable for type BreadcrumbMapView and conformance BreadcrumbMapView)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type BreadcrumbMapView and conformance BreadcrumbMapView);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type BreadcrumbMapView and conformance BreadcrumbMapView;
  if (!lazy protocol witness table cache variable for type BreadcrumbMapView and conformance BreadcrumbMapView)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type BreadcrumbMapView and conformance BreadcrumbMapView);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type NavigationView<_ConditionalContent<SessionView, ModifiedContent<SessionStatusView, _PaddingLayout>>?> and conformance NavigationView<A>()
{
  result = lazy protocol witness table cache variable for type NavigationView<_ConditionalContent<SessionView, ModifiedContent<SessionStatusView, _PaddingLayout>>?> and conformance NavigationView<A>;
  if (!lazy protocol witness table cache variable for type NavigationView<_ConditionalContent<SessionView, ModifiedContent<SessionStatusView, _PaddingLayout>>?> and conformance NavigationView<A>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI14NavigationViewVyAA19_ConditionalContentVy07WorkoutB007SessionD0VAA08ModifiedF0VyAF0h6StatusD0VAA14_PaddingLayoutVGGSgGMd);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type NavigationView<_ConditionalContent<SessionView, ModifiedContent<SessionStatusView, _PaddingLayout>>?> and conformance NavigationView<A>);
  }

  return result;
}

uint64_t closure #1 in closure #1 in MapHostingMirrorView.body.getter@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v112 = a2;
  v108 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI19_ConditionalContentV7StorageOy07WorkoutB011SessionViewVAA08ModifiedD0VyAF0g6StatusH0VAA14_PaddingLayoutVG_GMd);
  MEMORY[0x28223BE20](v108);
  v109 = &v93 - v3;
  v110 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVy07WorkoutB020SessionControlsSheetVAA16_FixedSizeLayoutVGMd);
  MEMORY[0x28223BE20](v110);
  v105 = &v93 - v4;
  v102 = type metadata accessor for SessionControlsSheet();
  v5 = MEMORY[0x28223BE20](v102);
  v107 = &v93 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v106 = &v93 - v7;
  v113 = type metadata accessor for SessionView();
  MEMORY[0x28223BE20](v113);
  v111 = (&v93 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  v9 = type metadata accessor for PresentationDetent();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = &v93 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for MapHostingMirrorView();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI5StateVyAA18PresentationDetentVGMd);
  State.wrappedValue.getter();
  if (one-time initialization token for expanded != -1)
  {
    swift_once();
  }

  v13 = __swift_project_value_buffer(v9, static PresentationDetent.expanded);
  v14 = MEMORY[0x20F309460](v12, v13);
  v15 = *(v10 + 8);
  v15(v12, v9);
  if (v14)
  {
    v16 = a1[2];
    v104 = a1[1];
    v17 = *&v16[OBJC_IVAR____TtC9WorkoutUI15DataLinkMonitor_publisher];
    v18 = a1[3];
    v19 = a1[4];
    swift_getKeyPath();
    v122[0] = v19;
    v103 = lazy protocol witness table accessor for type LowPowerModeMonitor and conformance LowPowerModeMonitor(&lazy protocol witness table cache variable for type SessionViewModel and conformance SessionViewModel, type metadata accessor for SessionViewModel);
    v100 = v17;

    v20 = v16;
    ObservationRegistrar.access<A, B>(_:keyPath:)();

    v21 = OBJC_IVAR____TtC9WorkoutUI16SessionViewModel__safetyCheckIn;
    swift_beginAccess();
    v22 = *(v19 + v21);
    v23 = type metadata accessor for MirrorSessionControls();
    v24 = swift_allocObject();
    *(v24 + 16) = v20;
    *(v24 + 24) = v22;
    v122[3] = v23;
    v122[4] = &protocol witness table for MirrorSessionControls;
    v122[0] = v24;
    v25 = a1[5];
    v99 = a1[6];
    v26 = v111;
    v27 = (v111 + v113[9]);
    v28 = v113;
    v29 = v111 + v113[11];
    LOBYTE(v117) = 0;
    v30 = v22;
    outlined copy of (@escaping @callee_guaranteed () -> ())?(v25);
    State.init(wrappedValue:)();
    v31 = v121;
    *v29 = v120[0];
    *(v29 + 1) = v31;
    v32 = v26 + v28[12];
    LOBYTE(v117) = 0;
    State.init(wrappedValue:)();
    v33 = v121;
    *v32 = v120[0];
    *(v32 + 1) = v33;
    v101 = (v26 + v28[13]);
    type metadata accessor for LowPowerModeMonitor();
    lazy protocol witness table accessor for type LowPowerModeMonitor and conformance LowPowerModeMonitor(&lazy protocol witness table cache variable for type LowPowerModeMonitor and conformance LowPowerModeMonitor, MEMORY[0x277D7E2F8]);

    *v26 = ObservedObject.init(wrappedValue:)();
    v26[1] = v34;
    v35 = v100;
    v26[2] = v100;
    v26[3] = v18;
    v104 = type metadata accessor for SessionViewModel();
    v98 = v35;

    Bindable<A>.init(wrappedValue:)();
    outlined init with copy of SessionControls(v122, v26 + v28[8]);
    v36 = v99;
    *v27 = v25;
    v27[1] = v36;
    v100 = type metadata accessor for SessionControlsState();
    v37 = swift_allocObject();
    *(v37 + 16) = 0;
    v38 = v102;
    ObservationRegistrar.init()();
    outlined init with copy of SessionControls(v122, v120);
    v115 = 0;
    static Binding.constant(_:)();
    v39 = v117;
    v40 = v118;
    LOBYTE(v28) = v119;
    v41 = v106;
    outlined init with copy of SessionControls(v120, &v106[v38[8]]);
    *v41 = v39;
    *(v41 + 8) = v40;
    *(v41 + 16) = v28;
    v42 = v98;
    v98 = v42;

    v96 = v37;

    Bindable<A>.init(wrappedValue:)();
    v99 = lazy protocol witness table accessor for type LowPowerModeMonitor and conformance LowPowerModeMonitor(&lazy protocol witness table cache variable for type SessionControlsState and conformance SessionControlsState, type metadata accessor for SessionControlsState);
    Bindable<A>.init(wrappedValue:)();
    *(v41 + v38[7]) = v42;
    v43 = v41 + v38[9];
    v114 = 0;
    State.init(wrappedValue:)();
    v44 = v116;
    *v43 = v115;
    *(v43 + 8) = v44;
    v45 = v41 + v38[10];
    v114 = 0;
    State.init(wrappedValue:)();
    v46 = v116;
    *v45 = v115;
    *(v45 + 8) = v46;
    v47 = v41 + v38[11];
    v114 = 0;
    State.init(wrappedValue:)();
    v48 = v116;
    *v47 = v115;
    *(v47 + 8) = v48;
    v97 = objc_opt_self();
    v49 = [v97 mainScreen];
    [v49 bounds];

    v95 = type metadata accessor for SessionControlsSheet;
    v50 = v105;
    outlined init with copy of MapHostingMirrorView(v41, v105, type metadata accessor for SessionControlsSheet);
    *(v50 + *(v110 + 36)) = 256;
    v94 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI19UIHostingControllerCyAA15ModifiedContentVy07WorkoutB020SessionControlsSheetVAA16_FixedSizeLayoutVGGMd);
    v51 = objc_allocWithZone(v94);
    v52 = UIHostingController.init(rootView:)();
    dispatch thunk of UIHostingController.sizeThatFits(in:)();
    v54 = v53;

    v115 = 1;
    static Binding.constant(_:)();
    v55 = v117;
    v56 = v118;
    LOBYTE(v42) = v119;
    v57 = v107;
    outlined init with copy of SessionControls(v120, &v107[v38[8]]);
    *v57 = v55;
    *(v57 + 8) = v56;
    *(v57 + 16) = v42;

    Bindable<A>.init(wrappedValue:)();
    Bindable<A>.init(wrappedValue:)();
    *(v57 + v38[7]) = v98;
    v58 = v57 + v38[9];
    v114 = 0;
    State.init(wrappedValue:)();
    v59 = v116;
    *v58 = v115;
    *(v58 + 8) = v59;
    v60 = v57 + v38[10];
    v114 = 0;
    State.init(wrappedValue:)();
    v61 = v116;
    *v60 = v115;
    *(v60 + 8) = v61;
    v62 = v57 + v38[11];
    v114 = 0;
    State.init(wrappedValue:)();
    v63 = v116;
    *v62 = v115;
    *(v62 + 8) = v63;
    v64 = [v97 mainScreen];
    [v64 bounds];

    outlined init with copy of MapHostingMirrorView(v57, v50, v95);
    *(v50 + *(v110 + 36)) = 256;
    v65 = objc_allocWithZone(v94);
    v66 = UIHostingController.init(rootView:)();
    dispatch thunk of UIHostingController.sizeThatFits(in:)();
    v68 = v67;

    outlined destroy of SessionControlsSheet(v57, type metadata accessor for SessionControlsSheet);
    outlined destroy of SessionControlsSheet(v41, type metadata accessor for SessionControlsSheet);
    __swift_destroy_boxed_opaque_existential_1(v120);
    __swift_destroy_boxed_opaque_existential_1(v122);
    v69 = v111;
    v70 = v111 + v113[10];
    *v70 = v54;
    *(v70 + 1) = v68;
    v71 = v101;
    *v101 = 0;
    v71[1] = 0;
    outlined init with copy of MapHostingMirrorView(v69, v109, type metadata accessor for SessionView);
    swift_storeEnumTagMultiPayload();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVy07WorkoutB017SessionStatusViewVAA14_PaddingLayoutVGMd);
    lazy protocol witness table accessor for type LowPowerModeMonitor and conformance LowPowerModeMonitor(&lazy protocol witness table cache variable for type SessionView and conformance SessionView, type metadata accessor for SessionView);
    lazy protocol witness table accessor for type ModifiedContent<SessionStatusView, _PaddingLayout> and conformance <> ModifiedContent<A, B>();
    v72 = v112;
    _ConditionalContent<>.init(storage:)();
    outlined destroy of SessionControlsSheet(v69, type metadata accessor for SessionView);
LABEL_15:
    v90 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI19_ConditionalContentVy07WorkoutB011SessionViewVAA08ModifiedD0VyAD0f6StatusG0VAA14_PaddingLayoutVGGMd);
    return (*(*(v90 - 8) + 56))(v72, 0, 1, v90);
  }

  State.wrappedValue.getter();
  if (one-time initialization token for minimized != -1)
  {
    swift_once();
  }

  v73 = __swift_project_value_buffer(v9, static PresentationDetent.minimized);
  v74 = MEMORY[0x20F309460](v12, v73);
  v15(v12, v9);
  if (v74)
  {
    v75 = a1[4];
    v76 = *(a1[2] + OBJC_IVAR____TtC9WorkoutUI15DataLinkMonitor_publisher);

    SessionStatusView.init(sessionViewModel:metricsPublisher:)(v75, v76, v123);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy7SwiftUI4EdgeO3SetVGMd);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_20CB5DA80;
    v78 = static Edge.Set.leading.getter();
    *(inited + 32) = v78;
    v79 = static Edge.Set.trailing.getter();
    *(inited + 33) = v79;
    v80 = Edge.Set.init(rawValue:)();
    Edge.Set.init(rawValue:)();
    if (Edge.Set.init(rawValue:)() != v78)
    {
      v80 = Edge.Set.init(rawValue:)();
    }

    Edge.Set.init(rawValue:)();
    if (Edge.Set.init(rawValue:)() != v79)
    {
      v80 = Edge.Set.init(rawValue:)();
    }

    if (one-time initialization token for contentLeadingTrailingPadding != -1)
    {
      swift_once();
    }

    EdgeInsets.init(_all:)();
    LOBYTE(v122[0]) = 0;
    v81 = v123[7];
    v82 = v109;
    *(v109 + 96) = v123[6];
    *(v82 + 112) = v81;
    *(v82 + 128) = v123[8];
    v83 = v123[3];
    *(v82 + 32) = v123[2];
    *(v82 + 48) = v83;
    v84 = v123[5];
    *(v82 + 64) = v123[4];
    *(v82 + 80) = v84;
    v85 = v123[1];
    *v82 = v123[0];
    *(v82 + 16) = v85;
    *(v82 + 144) = v80;
    *(v82 + 152) = v86;
    *(v82 + 160) = v87;
    *(v82 + 168) = v88;
    *(v82 + 176) = v89;
    *(v82 + 184) = 0;
    swift_storeEnumTagMultiPayload();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVy07WorkoutB017SessionStatusViewVAA14_PaddingLayoutVGMd);
    lazy protocol witness table accessor for type LowPowerModeMonitor and conformance LowPowerModeMonitor(&lazy protocol witness table cache variable for type SessionView and conformance SessionView, type metadata accessor for SessionView);
    lazy protocol witness table accessor for type ModifiedContent<SessionStatusView, _PaddingLayout> and conformance <> ModifiedContent<A, B>();
    v72 = v112;
    _ConditionalContent<>.init(storage:)();
    goto LABEL_15;
  }

  v92 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI19_ConditionalContentVy07WorkoutB011SessionViewVAA08ModifiedD0VyAD0f6StatusG0VAA14_PaddingLayoutVGGMd);
  return (*(*(v92 - 8) + 56))(v112, 1, 1, v92);
}

void type metadata completion function for MapHostingMirrorView()
{
  type metadata accessor for ObservedObject<LowPowerModeMonitor>();
  if (v0 <= 0x3F)
  {
    type metadata accessor for DataLinkMonitor();
    if (v1 <= 0x3F)
    {
      type metadata accessor for WorkoutNotificationCenter();
      if (v2 <= 0x3F)
      {
        type metadata accessor for SessionViewModel();
        if (v3 <= 0x3F)
        {
          type metadata accessor for (())?();
          if (v4 <= 0x3F)
          {
            type metadata accessor for State<PresentationDetent>();
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

void type metadata accessor for ObservedObject<LowPowerModeMonitor>()
{
  if (!lazy cache variable for type metadata for ObservedObject<LowPowerModeMonitor>)
  {
    type metadata accessor for LowPowerModeMonitor();
    lazy protocol witness table accessor for type LowPowerModeMonitor and conformance LowPowerModeMonitor(&lazy protocol witness table cache variable for type LowPowerModeMonitor and conformance LowPowerModeMonitor, MEMORY[0x277D7E2F8]);
    v0 = type metadata accessor for ObservedObject();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for ObservedObject<LowPowerModeMonitor>);
    }
  }
}

void type metadata accessor for (())?()
{
  if (!lazy cache variable for type metadata for (())?)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_syycMd);
    v0 = type metadata accessor for Optional();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for (())?);
    }
  }
}

void type metadata accessor for State<PresentationDetent>()
{
  if (!lazy cache variable for type metadata for State<PresentationDetent>)
  {
    type metadata accessor for PresentationDetent();
    v0 = type metadata accessor for State();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for State<PresentationDetent>);
    }
  }
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<<<opaque return type of View.sheet<A>(isPresented:onDismiss:content:)>>.0, _SafeAreaRegionsIgnoringLayout> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<<<opaque return type of View.sheet<A>(isPresented:onDismiss:content:)>>.0, _SafeAreaRegionsIgnoringLayout> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<<<opaque return type of View.sheet<A>(isPresented:onDismiss:content:)>>.0, _SafeAreaRegionsIgnoringLayout> and conformance <> ModifiedContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyAA4ViewPAAE5sheet11isPresented9onDismiss7contentQrAA7BindingVySbG_yycSgqd__yctAaDRd__lFQOy07WorkoutB0013BreadcrumbMapE0V_AeAE011interactiveJ8DisabledyQrSbFQOyAeAE012presentationD11InteractionyQrAA012PresentationdS0VFQOyAeAE0r10BackgroundS0yQrAA0tuS0VFQOyAeAE0R7Detents_9selectionQrShyAA0T6DetentVG_AKyA_GtFQOyAA010NavigationE0VyAA012_ConditionalD0VyAN07SessionE0VACyAN013SessionStatusE0VAA14_PaddingLayoutVGGSgG_Qo__Qo__Qo__Qo_Qo_AA30_SafeAreaRegionsIgnoringLayoutVGMd);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI4ViewPAAE26interactiveDismissDisabledyQrSbFQOyAcAE30presentationContentInteractionyQrAA012PresentationhI0VFQOyAcAE0g10BackgroundI0yQrAA0jkI0VFQOyAcAE0G7Detents_9selectionQrShyAA0J6DetentVG_AA7BindingVyANGtFQOyAA010NavigationC0VyAA012_ConditionalH0Vy07WorkoutB007SessionC0VAA08ModifiedH0VyAW0s6StatusC0VAA14_PaddingLayoutVGGSgG_Qo__Qo__Qo__Qo_Md);
    lazy protocol witness table accessor for type BreadcrumbMapView and conformance BreadcrumbMapView();
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI4ViewPAAE30presentationContentInteractionyQrAA012PresentationeF0VFQOyAcAE0d10BackgroundF0yQrAA0ghF0VFQOyAcAE0D7Detents_9selectionQrShyAA0G6DetentVG_AA7BindingVyAMGtFQOyAA010NavigationC0VyAA012_ConditionalE0Vy07WorkoutB007SessionC0VAA08ModifiedE0VyAV0p6StatusC0VAA14_PaddingLayoutVGGSgG_Qo__Qo__Qo_Md);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI4ViewPAAE33presentationBackgroundInteractionyQrAA012PresentationeF0VFQOyAcAE0D7Detents_9selectionQrShyAA0G6DetentVG_AA7BindingVyAJGtFQOyAA010NavigationC0VyAA19_ConditionalContentVy07WorkoutB007SessionC0VAA08ModifiedN0VyAS0p6StatusC0VAA14_PaddingLayoutVGGSgG_Qo__Qo_Md);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI4ViewPAAE19presentationDetents_9selectionQrShyAA18PresentationDetentVG_AA7BindingVyAGGtFQOyAA010NavigationC0VyAA19_ConditionalContentVy07WorkoutB007SessionC0VAA08ModifiedL0VyAP0n6StatusC0VAA14_PaddingLayoutVGGSgG_Qo_Md);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI14NavigationViewVyAA19_ConditionalContentVy07WorkoutB007SessionD0VAA08ModifiedF0VyAF0h6StatusD0VAA14_PaddingLayoutVGGSgGMd);
    lazy protocol witness table accessor for type NavigationView<_ConditionalContent<SessionView, ModifiedContent<SessionStatusView, _PaddingLayout>>?> and conformance NavigationView<A>();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<<<opaque return type of View.sheet<A>(isPresented:onDismiss:content:)>>.0, _SafeAreaRegionsIgnoringLayout> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type _ConditionalContent<SessionView, ModifiedContent<SessionStatusView, _PaddingLayout>>? and conformance <A> A?()
{
  result = lazy protocol witness table cache variable for type _ConditionalContent<SessionView, ModifiedContent<SessionStatusView, _PaddingLayout>>? and conformance <A> A?;
  if (!lazy protocol witness table cache variable for type _ConditionalContent<SessionView, ModifiedContent<SessionStatusView, _PaddingLayout>>? and conformance <A> A?)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI19_ConditionalContentVy07WorkoutB011SessionViewVAA08ModifiedD0VyAD0f6StatusG0VAA14_PaddingLayoutVGGSgMd);
    lazy protocol witness table accessor for type _ConditionalContent<SessionView, ModifiedContent<SessionStatusView, _PaddingLayout>> and conformance <> _ConditionalContent<A, B>();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type _ConditionalContent<SessionView, ModifiedContent<SessionStatusView, _PaddingLayout>>? and conformance <A> A?);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type _ConditionalContent<SessionView, ModifiedContent<SessionStatusView, _PaddingLayout>> and conformance <> _ConditionalContent<A, B>()
{
  result = lazy protocol witness table cache variable for type _ConditionalContent<SessionView, ModifiedContent<SessionStatusView, _PaddingLayout>> and conformance <> _ConditionalContent<A, B>;
  if (!lazy protocol witness table cache variable for type _ConditionalContent<SessionView, ModifiedContent<SessionStatusView, _PaddingLayout>> and conformance <> _ConditionalContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI19_ConditionalContentVy07WorkoutB011SessionViewVAA08ModifiedD0VyAD0f6StatusG0VAA14_PaddingLayoutVGGMd);
    lazy protocol witness table accessor for type LowPowerModeMonitor and conformance LowPowerModeMonitor(&lazy protocol witness table cache variable for type SessionView and conformance SessionView, type metadata accessor for SessionView);
    lazy protocol witness table accessor for type ModifiedContent<SessionStatusView, _PaddingLayout> and conformance <> ModifiedContent<A, B>();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type _ConditionalContent<SessionView, ModifiedContent<SessionStatusView, _PaddingLayout>> and conformance <> _ConditionalContent<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<SessionStatusView, _PaddingLayout> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<SessionStatusView, _PaddingLayout> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<SessionStatusView, _PaddingLayout> and conformance <> ModifiedContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVy07WorkoutB017SessionStatusViewVAA14_PaddingLayoutVGMd);
    lazy protocol witness table accessor for type SessionStatusView and conformance SessionStatusView();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<SessionStatusView, _PaddingLayout> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type SessionStatusView and conformance SessionStatusView()
{
  result = lazy protocol witness table cache variable for type SessionStatusView and conformance SessionStatusView;
  if (!lazy protocol witness table cache variable for type SessionStatusView and conformance SessionStatusView)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SessionStatusView and conformance SessionStatusView);
  }

  return result;
}

uint64_t outlined destroy of Binding<PresentationDetent>(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI7BindingVyAA18PresentationDetentVGMd);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t outlined copy of (@escaping @callee_guaranteed () -> ())?(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

uint64_t outlined init with copy of SessionControls(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  *(a2 + 32) = *(a1 + 32);
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t lazy protocol witness table accessor for type LowPowerModeMonitor and conformance LowPowerModeMonitor(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t outlined init with copy of MapHostingMirrorView(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t outlined destroy of SessionControlsSheet(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

__n128 __swift_memcpy152_8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v2;
  v3 = *(a2 + 32);
  v4 = *(a2 + 48);
  v5 = *(a2 + 80);
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 80) = v5;
  *(a1 + 32) = v3;
  *(a1 + 48) = v4;
  result = *(a2 + 96);
  v7 = *(a2 + 112);
  v8 = *(a2 + 128);
  *(a1 + 144) = *(a2 + 144);
  *(a1 + 112) = v7;
  *(a1 + 128) = v8;
  *(a1 + 96) = result;
  return result;
}

uint64_t getEnumTagSinglePayload for RaceWorkoutConfigurationView(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 152))
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

uint64_t storeEnumTagSinglePayload for RaceWorkoutConfigurationView(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 136) = 0u;
    *(result + 120) = 0u;
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
      *(result + 152) = 1;
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

    *(result + 152) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t one-time initialization function for elevationChartHeight()
{
  static Platform.current.getter();
  v0 = Platform.rawValue.getter();
  result = Platform.rawValue.getter();
  v2 = 57.0;
  if (v0 == result)
  {
    v2 = 82.0;
  }

  static RaceWorkoutConfigurationView.Layout.elevationChartHeight = *&v2;
  return result;
}

uint64_t one-time initialization function for elevationChartPadding()
{
  static Platform.current.getter();
  v0 = Platform.rawValue.getter();
  result = Platform.rawValue.getter();
  v2 = 3.0;
  if (v0 == result)
  {
    v2 = 8.0;
  }

  static RaceWorkoutConfigurationView.Layout.elevationChartPadding = *&v2;
  return result;
}

uint64_t one-time initialization function for routeViewHeight()
{
  static Platform.current.getter();
  v0 = Platform.rawValue.getter();
  result = Platform.rawValue.getter();
  v2 = 230.0;
  if (v0 == result)
  {
    v2 = 250.0;
  }

  static RaceWorkoutConfigurationView.Layout.routeViewHeight = *&v2;
  return result;
}

uint64_t RaceWorkoutConfigurationView.body.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v136 = a1;
  v123 = type metadata accessor for ContentMarginPlacement();
  v122 = *(v123 - 8);
  MEMORY[0x28223BE20](v123);
  v4 = &v120 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI4ListVys5NeverOAA9TupleViewVyAA15ModifiedContentVyAA7SectionVyAIyAIyAA6VStackVyAGyAA4TextV_AOtGGAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGAA14_PaddingLayoutVGAA6ZStackVyAGyAIy07WorkoutB009RaceRouteF0VAA06_FrameR0VG_AIyAIyA2_0u17ElevationBarChartF0VA6_GAZGtGGAA05EmptyF0VGA2_05ClearC5Style33_A607961C6E65DD4DD1C2818C5FE69B58LLVG_A2_0u12FilterPickerF0VA2_05StartT6ButtonVtGGMd);
  v120 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v7 = &v120 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI16SubscriptionViewVy7Combine25ObservableObjectPublisherCAA0D0PAAE14contentMargins__3forQrAA4EdgeO3SetV_12CoreGraphics7CGFloatVSgAA22ContentMarginPlacementVtFQOyAA4ListVys5NeverOAA05TupleD0VyAA08ModifiedQ0VyAA7SectionVyA0_yA0_yAA6VStackVyAZyAA4TextV_A6_tGGAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGAA14_PaddingLayoutVGAA6ZStackVyAZyA0_y07WorkoutB009RaceRouteD0VAA12_FrameLayoutVG_A0_yA0_yA21_021RaceElevationBarChartD0VA25_GA17_GtGGAA05EmptyD0VGA21_05ClearT5Style33_A607961C6E65DD4DD1C2818C5FE69B58LLVG_A21_016RaceFilterPickerD0VA21_18StartWorkoutButtonVtGG_Qo_GMd);
  MEMORY[0x28223BE20](v8);
  v130 = &v120 - v9;
  v137 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyAA16SubscriptionViewVy7Combine25ObservableObjectPublisherCAA0F0PAAE14contentMargins__3forQrAA4EdgeO3SetV_12CoreGraphics7CGFloatVSgAA0D15MarginPlacementVtFQOyAA4ListVys5NeverOAA05TupleF0VyACyAA7SectionVyACyACyAA6VStackVyA0_yAA4TextV_A6_tGGAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGAA14_PaddingLayoutVGAA6ZStackVyA0_yACy07WorkoutB009RaceRouteF0VAA12_FrameLayoutVG_ACyACyA21_021RaceElevationBarChartF0VA25_GA17_GtGGAA05EmptyF0VGA21_05ClearU5Style33_A607961C6E65DD4DD1C2818C5FE69B58LLVG_A21_016RaceFilterPickerF0VA21_18StartWorkoutButtonVtGG_Qo_GA21_27WorkoutConfigurationToolbarVGMd);
  v10 = MEMORY[0x28223BE20](v137);
  v129 = &v120 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v126 = &v120 - v12;
  v134 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI19_ConditionalContentV7StorageOyAA08ModifiedD0VyAGyAA16SubscriptionViewVy7Combine25ObservableObjectPublisherCAA0H0PAAE22toolbarForegroundStyle_3forQrqd___AA16ToolbarPlacementVdtAA05ShapeO0Rd__lFQOyAnAE18navigationBarTitleyQrqd__SyRd__lFQOyAGyAGyAA4ListVys5NeverOAA05TupleH0VyAA7SectionVyAA05EmptyH0VAGyAnAE06buttonO0yQrqd__AA015PrimitiveButtonO0Rd__lFQOyAA14NavigationLinkVyAA6ZStackVyAZyAGyAGy07WorkoutB0014RaceCroppedMapH0VAA12_FrameLayoutVGAA11_ClipEffectVyAA16RoundedRectangleVGG_AGyAGyA9_013RaceElevationu5ChartH0VA13_GAA14_PaddingLayoutVGtGGA9_09RaceRouteH0VG_AA011PlainButtonO0VQo_AA21_TraitWritingModifierVyAA0W17RowInsetsTraitKeyVGGA2_G_A0_yAGyAGyAA4TextVA13_GA9_09UnstackedZ15SpacingModifier33_B33B451D6D59C74C7A089BCD2EE64343LLVGAGyAGyA6_yAGyAGyAnAEA3_yQrqd__AAA4_Rd__lFQOyAA6ButtonVyA43_G_AA023BorderedProminentButtonO0VQo_AA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGA56_yAA4FontVSgGGAGyAGyA9_020RaceWorkoutSelectionH0VA56_y11WorkoutCore30WorkoutConfigurationDataSourceCSgGGA56_yA9_28ConfigurationNavigationModelCSgGGGA36_yAA0W21RowBackgroundTraitKeyVGGA36_yAA0W16ItemTintTraitKeyVGGA2_GtGGA9_07StackedW16SectionsModifierA46_LLVGA56_yAA03AnysO0VSgGG_SSQo__A58_Qo_GA9_020WorkoutConfigurationQ0VGAA25_AppearanceActionModifierVGAGyAIyAlnAE14contentMargins__APQrAA4EdgeO3SetV_12CoreGraphics7CGFloatVSgAA0d6MarginR0VtFQOyAVyAxZyAGyA0_yAGyAGyAA6VStackVyAZyA43__A43_tGGA65_GA25_GA8_yAZyAGyA30_A13_G_A26_tGGA2_GA9_05ClearwO033_A607961C6E65DD4DD1C2818C5FE69B58LLVG_A9_016RaceFilterPickerH0VA9_18StartWorkoutButtonVtGG_Qo_GA104_G_GMd);
  MEMORY[0x28223BE20](v134);
  v135 = &v120 - v13;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyACyAA4ListVys5NeverOAA9TupleViewVyAA7SectionVyAA05EmptyH0VACyAA0H0PAAE11buttonStyleyQrqd__AA015PrimitiveButtonL0Rd__lFQOyAA14NavigationLinkVyAA6ZStackVyAIyACyACy07WorkoutB0014RaceCroppedMapH0VAA12_FrameLayoutVGAA11_ClipEffectVyAA16RoundedRectangleVGG_ACyACyAV0s17ElevationBarChartH0VAZGAA08_PaddingW0VGtGGAV0s5RouteH0VG_AA05PlainnL0VQo_AA21_TraitWritingModifierVyAA0E17RowInsetsTraitKeyVGGAMG_AKyACyACyAA4TextVAZGAV09UnstackedI15SpacingModifier33_B33B451D6D59C74C7A089BCD2EE64343LLVGACyACyASyACyACyAoAEAPyQrqd__AaQRd__lFQOyAA0N0VyA28_G_AA017BorderedProminentnL0VQo_AA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGA41_yAA4FontVSgGGACyACyAV0sr9SelectionH0VA41_y0R4Core0R23ConfigurationDataSourceCSgGGA41_yAV013ConfigurationO5ModelCSgGGGA21_yAA0E21RowBackgroundTraitKeyVGGA21_yAA0E16ItemTintTraitKeyVGGAMGtGGAV07StackedE16SectionsModifierA31_LLVGA41_yAA08AnyShapeL0VSgGGMd);
  MEMORY[0x28223BE20](v14);
  v16 = &v120 - v15;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI4ViewPAAE18navigationBarTitleyQrqd__SyRd__lFQOyAA15ModifiedContentVyAFyAA4ListVys5NeverOAA05TupleC0VyAA7SectionVyAA05EmptyC0VAFyAcAE11buttonStyleyQrqd__AA015PrimitiveButtonO0Rd__lFQOyAA14NavigationLinkVyAA6ZStackVyALyAFyAFy07WorkoutB0014RaceCroppedMapC0VAA12_FrameLayoutVGAA11_ClipEffectVyAA16RoundedRectangleVGG_AFyAFyAW0v9Elevatione5ChartC0VA_GAA08_PaddingZ0VGtGGAW0v5RouteC0VG_AA05PlainqO0VQo_AA21_TraitWritingModifierVyAA0I17RowInsetsTraitKeyVGGAPG_ANyAFyAFyAA4TextVA_GAW09UnstackedL15SpacingModifier33_B33B451D6D59C74C7A089BCD2EE64343LLVGAFyAFyATyAFyAFyAcAEAQyQrqd__AaRRd__lFQOyAA0Q0VyA29_G_AA017BorderedProminentqO0VQo_AA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGA42_yAA4FontVSgGGAFyAFyAW0vu9SelectionC0VA42_y0U4Core0U23ConfigurationDataSourceCSgGGA42_yAW013ConfigurationR5ModelCSgGGGA22_yAA0I21RowBackgroundTraitKeyVGGA22_yAA0I16ItemTintTraitKeyVGGAPGtGGAW07StackedI16SectionsModifierA32_LLVGA42_yAA08AnyShapeO0VSgGG_SSQo_Md);
  v121 = *(v17 - 8);
  MEMORY[0x28223BE20](v17);
  v19 = &v120 - v18;
  v124 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI16SubscriptionViewVy7Combine25ObservableObjectPublisherCAA0D0PAAE22toolbarForegroundStyle_3forQrqd___AA16ToolbarPlacementVdtAA05ShapeK0Rd__lFQOyAhAE18navigationBarTitleyQrqd__SyRd__lFQOyAA15ModifiedContentVyAPyAA4ListVys5NeverOAA05TupleD0VyAA7SectionVyAA05EmptyD0VAPyAhAE06buttonK0yQrqd__AA015PrimitiveButtonK0Rd__lFQOyAA14NavigationLinkVyAA6ZStackVyAVyAPyAPy07WorkoutB0014RaceCroppedMapD0VAA12_FrameLayoutVGAA11_ClipEffectVyAA16RoundedRectangleVGG_APyAPyA5_013RaceElevationq5ChartD0VA9_GAA14_PaddingLayoutVGtGGA5_09RaceRouteD0VG_AA011PlainButtonK0VQo_AA21_TraitWritingModifierVyAA0U17RowInsetsTraitKeyVGGAZG_AXyAPyAPyAA4TextVA9_GA5_09UnstackedX15SpacingModifier33_B33B451D6D59C74C7A089BCD2EE64343LLVGAPyAPyA2_yAPyAPyAhAEA_yQrqd__AAA0_Rd__lFQOyAA6ButtonVyA39_G_AA023BorderedProminentButtonK0VQo_AA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGA52_yAA4FontVSgGGAPyAPyA5_020RaceWorkoutSelectionD0VA52_y11WorkoutCore30WorkoutConfigurationDataSourceCSgGGA52_yA5_28ConfigurationNavigationModelCSgGGGA32_yAA0U21RowBackgroundTraitKeyVGGA32_yAA0U16ItemTintTraitKeyVGGAZGtGGA5_07StackedU16SectionsModifierA42_LLVGA52_yAA03AnyoK0VSgGG_SSQo__A54_Qo_GMd);
  MEMORY[0x28223BE20](v124);
  v131 = &v120 - v20;
  v125 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyAA16SubscriptionViewVy7Combine25ObservableObjectPublisherCAA0F0PAAE22toolbarForegroundStyle_3forQrqd___AA16ToolbarPlacementVdtAA05ShapeM0Rd__lFQOyAjAE18navigationBarTitleyQrqd__SyRd__lFQOyACyACyAA4ListVys5NeverOAA05TupleF0VyAA7SectionVyAA05EmptyF0VACyAjAE06buttonM0yQrqd__AA015PrimitiveButtonM0Rd__lFQOyAA14NavigationLinkVyAA6ZStackVyAVyACyACy07WorkoutB0014RaceCroppedMapF0VAA12_FrameLayoutVGAA11_ClipEffectVyAA16RoundedRectangleVGG_ACyACyA5_013RaceElevations5ChartF0VA9_GAA14_PaddingLayoutVGtGGA5_09RaceRouteF0VG_AA011PlainButtonM0VQo_AA21_TraitWritingModifierVyAA0U17RowInsetsTraitKeyVGGAZG_AXyACyACyAA4TextVA9_GA5_09UnstackedX15SpacingModifier33_B33B451D6D59C74C7A089BCD2EE64343LLVGACyACyA2_yACyACyAjAEA_yQrqd__AAA0_Rd__lFQOyAA6ButtonVyA39_G_AA023BorderedProminentButtonM0VQo_AA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGA52_yAA4FontVSgGGACyACyA5_020RaceWorkoutSelectionF0VA52_y11WorkoutCore30WorkoutConfigurationDataSourceCSgGGA52_yA5_28ConfigurationNavigationModelCSgGGGA32_yAA0U21RowBackgroundTraitKeyVGGA32_yAA0U16ItemTintTraitKeyVGGAZGtGGA5_07StackedU16SectionsModifierA42_LLVGA52_yAA03AnyqM0VSgGG_SSQo__A54_Qo_GA5_020WorkoutConfigurationO0VGMd);
  MEMORY[0x28223BE20](v125);
  v132 = &v120 - v21;
  v133 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyACyAA16SubscriptionViewVy7Combine25ObservableObjectPublisherCAA0F0PAAE22toolbarForegroundStyle_3forQrqd___AA16ToolbarPlacementVdtAA05ShapeM0Rd__lFQOyAjAE18navigationBarTitleyQrqd__SyRd__lFQOyACyACyAA4ListVys5NeverOAA05TupleF0VyAA7SectionVyAA05EmptyF0VACyAjAE06buttonM0yQrqd__AA015PrimitiveButtonM0Rd__lFQOyAA14NavigationLinkVyAA6ZStackVyAVyACyACy07WorkoutB0014RaceCroppedMapF0VAA12_FrameLayoutVGAA11_ClipEffectVyAA16RoundedRectangleVGG_ACyACyA5_013RaceElevations5ChartF0VA9_GAA14_PaddingLayoutVGtGGA5_09RaceRouteF0VG_AA011PlainButtonM0VQo_AA21_TraitWritingModifierVyAA0U17RowInsetsTraitKeyVGGAZG_AXyACyACyAA4TextVA9_GA5_09UnstackedX15SpacingModifier33_B33B451D6D59C74C7A089BCD2EE64343LLVGACyACyA2_yACyACyAjAEA_yQrqd__AAA0_Rd__lFQOyAA6ButtonVyA39_G_AA023BorderedProminentButtonM0VQo_AA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGA52_yAA4FontVSgGGACyACyA5_020RaceWorkoutSelectionF0VA52_y11WorkoutCore30WorkoutConfigurationDataSourceCSgGGA52_yA5_28ConfigurationNavigationModelCSgGGGA32_yAA0U21RowBackgroundTraitKeyVGGA32_yAA0U16ItemTintTraitKeyVGGAZGtGGA5_07StackedU16SectionsModifierA42_LLVGA52_yAA03AnyqM0VSgGG_SSQo__A54_Qo_GA5_020WorkoutConfigurationO0VGAA25_AppearanceActionModifierVGMd);
  v22 = MEMORY[0x28223BE20](v133);
  v127 = &v120 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v22);
  v128 = &v120 - v24;
  v25 = static Platform.current.getter();
  v138 = v2;
  if (v25)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI9TupleViewVyAA7SectionVyAA05EmptyD0VAA15ModifiedContentVyAA0D0PAAE11buttonStyleyQrqd__AA015PrimitiveButtonJ0Rd__lFQOyAA14NavigationLinkVyAA6ZStackVyACyAIyAIy07WorkoutB0014RaceCroppedMapD0VAA12_FrameLayoutVGAA11_ClipEffectVyAA16RoundedRectangleVGG_AIyAIyAR0q17ElevationBarChartD0VAVGAA08_PaddingU0VGtGGAR0q5RouteD0VG_AA05PlainlJ0VQo_AA21_TraitWritingModifierVyAA21ListRowInsetsTraitKeyVGGAGG_AEyAIyAIyAA4TextVAVGAR09UnstackedE15SpacingModifier33_B33B451D6D59C74C7A089BCD2EE64343LLVGAIyAIyAOyAIyAIyAkAEALyQrqd__AaMRd__lFQOyAA0L0VyA24_G_AA017BorderedProminentlJ0VQo_AA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGA37_yAA4FontVSgGGAIyAIyAR0qp9SelectionD0VA37_y0P4Core0P23ConfigurationDataSourceCSgGGA37_yAR013ConfigurationM5ModelCSgGGGA17_yAA25ListRowBackgroundTraitKeyVGGA17_yAA20ListItemTintTraitKeyVGGAGGtGMd);
    lazy protocol witness table accessor for type TupleView<(ModifiedContent<Section<ModifiedContent<ModifiedContent<VStack<TupleView<(Text, Text)>>, _EnvironmentKeyWritingModifier<Font?>>, _PaddingLayout>, ZStack<TupleView<(ModifiedContent<RaceRouteView, _FrameLayout>, ModifiedContent<ModifiedContent<RaceElevationBarChartView, _FrameLayout>, _PaddingLayout>)>>, EmptyView>, ClearListStyle>, RaceFilterPickerView, StartWorkoutButton)> and conformance TupleView<A>(&lazy protocol witness table cache variable for type TupleView<(Section<EmptyView, ModifiedContent<<<opaque return type of View.buttonStyle<A>(_:)>>.0, _TraitWritingModifier<ListRowInsetsTraitKey>>, EmptyView>, Section<ModifiedContent<ModifiedContent<Text, _FrameLayout>, UnstackedSectionSpacingModifier>, ModifiedContent<ModifiedContent<NavigationLink<ModifiedContent<ModifiedContent<<<opaque return type of View.buttonStyle<A>(_:)>>.0, _EnvironmentKeyWritingModifier<Color?>>, _EnvironmentKeyWritingModifier<Font?>>, ModifiedContent<ModifiedContent<RaceWorkoutSelectionView, _EnvironmentKeyWritingModifier<WorkoutConfigurationDataSource?>>, _EnvironmentKeyWritingModifier<ConfigurationNavigationModel?>>>, _TraitWritingModifier<ListRowBackgroundTraitKey>>, _TraitWritingModifier<ListItemTintTraitKey>>, EmptyView>)> and conformance TupleView<A>, &_s7SwiftUI9TupleViewVyAA7SectionVyAA05EmptyD0VAA15ModifiedContentVyAA0D0PAAE11buttonStyleyQrqd__AA015PrimitiveButtonJ0Rd__lFQOyAA14NavigationLinkVyAA6ZStackVyACyAIyAIy07WorkoutB0014RaceCroppedMapD0VAA12_FrameLayoutVGAA11_ClipEffectVyAA16RoundedRectangleVGG_AIyAIyAR0q17ElevationBarChartD0VAVGAA08_PaddingU0VGtGGAR0q5RouteD0VG_AA05PlainlJ0VQo_AA21_TraitWritingModifierVyAA21ListRowInsetsTraitKeyVGGAGG_AEyAIyAIyAA4TextVAVGAR09UnstackedE15SpacingModifier33_B33B451D6D59C74C7A089BCD2EE64343LLVGAIyAIyAOyAIyAIyAkAEALyQrqd__AaMRd__lFQOyAA0L0VyA24_G_AA017BorderedProminentlJ0VQo_AA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGA37_yAA4FontVSgGGAIyAIyAR0qp9SelectionD0VA37_y0P4Core0P23ConfigurationDataSourceCSgGGA37_yAR013ConfigurationM5ModelCSgGGGA17_yAA25ListRowBackgroundTraitKeyVGGA17_yAA20ListItemTintTraitKeyVGGAGGtGMd);
    List<>.init(content:)();
    v26 = *(v2 + 40);
    WorkoutConfiguration.displayColor.getter();
    v27 = Color.init(uiColor:)();
    KeyPath = swift_getKeyPath();
    v139 = v27;
    v29 = AnyShapeStyle.init<A>(_:)();
    v30 = &v16[*(v14 + 36)];
    *v30 = KeyPath;
    v30[1] = v29;
    v130 = *(v2 + 96);
    v139 = RaceWorkoutConfiguration.configurationViewTitle(_:)();
    v140 = v31;
    v32 = lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<List<Never, TupleView<(Section<EmptyView, ModifiedContent<<<opaque return type of View.buttonStyle<A>(_:)>>.0, _TraitWritingModifier<ListRowInsetsTraitKey>>, EmptyView>, Section<ModifiedContent<ModifiedContent<Text, _FrameLayout>, UnstackedSectionSpacingModifier>, ModifiedContent<ModifiedContent<NavigationLink<ModifiedContent<ModifiedContent<<<opaque return type of View.buttonStyle<A>(_:)>>.0, _EnvironmentKeyWritingModifier<Color?>>, _EnvironmentKeyWritingModifier<Font?>>, ModifiedContent<ModifiedContent<RaceWorkoutSelectionView, _EnvironmentKeyWritingModifier<WorkoutConfigurationDataSource?>>, _EnvironmentKeyWritingModifier<ConfigurationNavigationModel?>>>, _TraitWritingModifier<ListRowBackgroundTraitKey>>, _TraitWritingModifier<ListItemTintTraitKey>>, EmptyView>)>>, StackedListSectionsModifier>, _EnvironmentKeyWritingModifier<AnyShapeStyle?>> and conformance <> ModifiedContent<A, B>();
    v33 = lazy protocol witness table accessor for type String and conformance String();
    View.navigationTitle<A>(_:)();

    outlined destroy of ModifiedContent<SubscriptionView<ObservableObjectPublisher, <<opaque return type of View.contentMargins(_:_:for:)>>.0>, WorkoutConfigurationToolbar>(v16, &_s7SwiftUI15ModifiedContentVyACyAA4ListVys5NeverOAA9TupleViewVyAA7SectionVyAA05EmptyH0VACyAA0H0PAAE11buttonStyleyQrqd__AA015PrimitiveButtonL0Rd__lFQOyAA14NavigationLinkVyAA6ZStackVyAIyACyACy07WorkoutB0014RaceCroppedMapH0VAA12_FrameLayoutVGAA11_ClipEffectVyAA16RoundedRectangleVGG_ACyACyAV0s17ElevationBarChartH0VAZGAA08_PaddingW0VGtGGAV0s5RouteH0VG_AA05PlainnL0VQo_AA21_TraitWritingModifierVyAA0E17RowInsetsTraitKeyVGGAMG_AKyACyACyAA4TextVAZGAV09UnstackedI15SpacingModifier33_B33B451D6D59C74C7A089BCD2EE64343LLVGACyACyASyACyACyAoAEAPyQrqd__AaQRd__lFQOyAA0N0VyA28_G_AA017BorderedProminentnL0VQo_AA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGA41_yAA4FontVSgGGACyACyAV0sr9SelectionH0VA41_y0R4Core0R23ConfigurationDataSourceCSgGGA41_yAV013ConfigurationO5ModelCSgGGGA21_yAA0E21RowBackgroundTraitKeyVGGA21_yAA0E16ItemTintTraitKeyVGGAMGtGGAV07StackedE16SectionsModifierA31_LLVGA41_yAA08AnyShapeL0VSgGGMd);
    WorkoutConfiguration.displayColor.getter();
    *&v143 = Color.init(uiColor:)();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy7SwiftUI16ToolbarPlacementVGMd);
    type metadata accessor for ToolbarPlacement();
    v34 = swift_allocObject();
    *(v34 + 16) = xmmword_20CB5DA70;
    static ToolbarPlacement.navigationBar.getter();
    v139 = v14;
    v140 = MEMORY[0x277D837D0];
    v141 = v32;
    v142 = v33;
    OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
    v36 = v131;
    MEMORY[0x20F30A9F0](&v143, v34, v17, MEMORY[0x277CE0F78], OpaqueTypeConformance2, MEMORY[0x277CE0F60]);

    (*(v121 + 8))(v19, v17);
    type metadata accessor for RaceWorkoutConfiguration();
    lazy protocol witness table accessor for type RaceWorkoutConfiguration and conformance WorkoutConfiguration(&lazy protocol witness table cache variable for type RaceWorkoutConfiguration and conformance WorkoutConfiguration, MEMORY[0x277D7D950]);
    v37 = ObservableObject<>.objectWillChange.getter();
    v38 = swift_allocObject();
    v39 = *(v2 + 112);
    *(v38 + 112) = *(v2 + 96);
    *(v38 + 128) = v39;
    *(v38 + 144) = *(v2 + 128);
    *(v38 + 160) = *(v2 + 144);
    v40 = *(v2 + 48);
    *(v38 + 48) = *(v2 + 32);
    *(v38 + 64) = v40;
    v41 = *(v2 + 80);
    *(v38 + 80) = *(v2 + 64);
    *(v38 + 96) = v41;
    v42 = *(v2 + 16);
    *(v38 + 16) = *v2;
    *(v38 + 32) = v42;
    v43 = v124;
    *(v36 + v124[13]) = v37;
    v44 = (v36 + v43[14]);
    *v44 = partial apply for closure #2 in RaceWorkoutConfigurationView.body.getter;
    v44[1] = v38;
    v143 = *(v2 + 48);
    outlined init with copy of RaceWorkoutConfigurationView(v2, &v139);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI5StateVySbGMd);
    State.projectedValue.getter();
    v45 = *v2;
    if (*v2)
    {
      v46 = v139;
      v47 = v140;
      LODWORD(v129) = v141;
      v48 = v45;
      WorkoutConfiguration.displayColor.getter();
      v126 = Color.init(uiColor:)();
      LOBYTE(v143) = 0;
      static Binding.constant(_:)();
      v123 = v139;
      v122 = v26;
      v49 = v140;
      LODWORD(v124) = v141;
      v50 = swift_allocObject();
      *(v50 + 16) = v48;
      v51 = swift_getKeyPath();
      v52 = &v132[v125[9]];
      *v52 = v51;
      __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI11EnvironmentV7ContentOyAA13DismissActionV_GMd);
      swift_storeEnumTagMultiPayload();
      type metadata accessor for ConfigurationNavigationModel();
      lazy protocol witness table accessor for type RaceWorkoutConfiguration and conformance WorkoutConfiguration(&lazy protocol witness table cache variable for type ConfigurationNavigationModel and conformance ConfigurationNavigationModel, type metadata accessor for ConfigurationNavigationModel);
      v125 = v48;
      v53 = v46;

      v54 = EnvironmentObject.init()();
      v56 = v55;
      v57 = type metadata accessor for WorkoutConfigurationToolbar();
      v58 = (v52 + v57[5]);
      *v58 = v54;
      v58[1] = v56;
      v59 = (v52 + v57[6]);
      type metadata accessor for WorkoutConfiguration();
      lazy protocol witness table accessor for type RaceWorkoutConfiguration and conformance WorkoutConfiguration(&lazy protocol witness table cache variable for type WorkoutConfiguration and conformance WorkoutConfiguration, MEMORY[0x277D7DA50]);
      v60 = v122;
      *v59 = ObservedObject.init(wrappedValue:)();
      v59[1] = v61;
      v62 = v52 + v57[7];
      *v62 = v53;
      *(v62 + 1) = v47;
      v62[16] = v129;
      v63 = v52 + v57[8];
      *v63 = implicit closure #2 in View.workoutConfigurationToolbar(workoutConfiguration:hasBeenModified:dataSource:formattingManager:intent:color:showEditConfirmation:)partial apply;
      *(v63 + 1) = v50;
      v63[16] = 0;
      *(v52 + v57[9]) = v130;
      *(v52 + v57[10]) = 0;
      *(v52 + v57[11]) = v126;
      v64 = v52 + v57[12];
      *v64 = v123;
      *(v64 + 1) = v49;
      v64[16] = v124;
      v65 = v52 + v57[13];
      LOBYTE(v143) = 0;

      State.init(wrappedValue:)();
      v66 = v140;
      *v65 = v139;
      *(v65 + 1) = v66;
      v67 = v52 + v57[14];
      LOBYTE(v143) = 0;
      State.init(wrappedValue:)();

      v68 = v140;
      *v67 = v139;
      *(v67 + 1) = v68;
      v69 = v132;
      outlined init with take of SubscriptionView<ObservableObjectPublisher, <<opaque return type of View.contentMargins(_:_:for:)>>.0>(v131, v132, &_s7SwiftUI16SubscriptionViewVy7Combine25ObservableObjectPublisherCAA0D0PAAE22toolbarForegroundStyle_3forQrqd___AA16ToolbarPlacementVdtAA05ShapeK0Rd__lFQOyAhAE18navigationBarTitleyQrqd__SyRd__lFQOyAA15ModifiedContentVyAPyAA4ListVys5NeverOAA05TupleD0VyAA7SectionVyAA05EmptyD0VAPyAhAE06buttonK0yQrqd__AA015PrimitiveButtonK0Rd__lFQOyAA14NavigationLinkVyAA6ZStackVyAVyAPyAPy07WorkoutB0014RaceCroppedMapD0VAA12_FrameLayoutVGAA11_ClipEffectVyAA16RoundedRectangleVGG_APyAPyA5_013RaceElevationq5ChartD0VA9_GAA14_PaddingLayoutVGtGGA5_09RaceRouteD0VG_AA011PlainButtonK0VQo_AA21_TraitWritingModifierVyAA0U17RowInsetsTraitKeyVGGAZG_AXyAPyAPyAA4TextVA9_GA5_09UnstackedX15SpacingModifier33_B33B451D6D59C74C7A089BCD2EE64343LLVGAPyAPyA2_yAPyAPyAhAEA_yQrqd__AAA0_Rd__lFQOyAA6ButtonVyA39_G_AA023BorderedProminentButtonK0VQo_AA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGA52_yAA4FontVSgGGAPyAPyA5_020RaceWorkoutSelectionD0VA52_y11WorkoutCore30WorkoutConfigurationDataSourceCSgGGA52_yA5_28ConfigurationNavigationModelCSgGGGA32_yAA0U21RowBackgroundTraitKeyVGGA32_yAA0U16ItemTintTraitKeyVGGAZGtGGA5_07StackedU16SectionsModifierA42_LLVGA52_yAA03AnyoK0VSgGG_SSQo__A54_Qo_GMd);
      v70 = swift_allocObject();
      v71 = *(v2 + 112);
      *(v70 + 112) = *(v2 + 96);
      *(v70 + 128) = v71;
      *(v70 + 144) = *(v2 + 128);
      *(v70 + 160) = *(v2 + 144);
      v72 = *(v2 + 48);
      *(v70 + 48) = *(v2 + 32);
      *(v70 + 64) = v72;
      v73 = *(v2 + 80);
      *(v70 + 80) = *(v2 + 64);
      *(v70 + 96) = v73;
      v74 = *(v2 + 16);
      *(v70 + 16) = *v2;
      *(v70 + 32) = v74;
      v75 = v127;
      outlined init with take of SubscriptionView<ObservableObjectPublisher, <<opaque return type of View.contentMargins(_:_:for:)>>.0>(v69, v127, &_s7SwiftUI15ModifiedContentVyAA16SubscriptionViewVy7Combine25ObservableObjectPublisherCAA0F0PAAE22toolbarForegroundStyle_3forQrqd___AA16ToolbarPlacementVdtAA05ShapeM0Rd__lFQOyAjAE18navigationBarTitleyQrqd__SyRd__lFQOyACyACyAA4ListVys5NeverOAA05TupleF0VyAA7SectionVyAA05EmptyF0VACyAjAE06buttonM0yQrqd__AA015PrimitiveButtonM0Rd__lFQOyAA14NavigationLinkVyAA6ZStackVyAVyACyACy07WorkoutB0014RaceCroppedMapF0VAA12_FrameLayoutVGAA11_ClipEffectVyAA16RoundedRectangleVGG_ACyACyA5_013RaceElevations5ChartF0VA9_GAA14_PaddingLayoutVGtGGA5_09RaceRouteF0VG_AA011PlainButtonM0VQo_AA21_TraitWritingModifierVyAA0U17RowInsetsTraitKeyVGGAZG_AXyACyACyAA4TextVA9_GA5_09UnstackedX15SpacingModifier33_B33B451D6D59C74C7A089BCD2EE64343LLVGACyACyA2_yACyACyAjAEA_yQrqd__AAA0_Rd__lFQOyAA6ButtonVyA39_G_AA023BorderedProminentButtonM0VQo_AA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGA52_yAA4FontVSgGGACyACyA5_020RaceWorkoutSelectionF0VA52_y11WorkoutCore30WorkoutConfigurationDataSourceCSgGGA52_yA5_28ConfigurationNavigationModelCSgGGGA32_yAA0U21RowBackgroundTraitKeyVGGA32_yAA0U16ItemTintTraitKeyVGGAZGtGGA5_07StackedU16SectionsModifierA42_LLVGA52_yAA03AnyqM0VSgGG_SSQo__A54_Qo_GA5_020WorkoutConfigurationO0VGMd);
      v76 = (v75 + *(v133 + 36));
      *v76 = partial apply for closure #3 in RaceWorkoutConfigurationView.body.getter;
      v76[1] = v70;
      v76[2] = 0;
      v76[3] = 0;
      v77 = &_s7SwiftUI15ModifiedContentVyACyAA16SubscriptionViewVy7Combine25ObservableObjectPublisherCAA0F0PAAE22toolbarForegroundStyle_3forQrqd___AA16ToolbarPlacementVdtAA05ShapeM0Rd__lFQOyAjAE18navigationBarTitleyQrqd__SyRd__lFQOyACyACyAA4ListVys5NeverOAA05TupleF0VyAA7SectionVyAA05EmptyF0VACyAjAE06buttonM0yQrqd__AA015PrimitiveButtonM0Rd__lFQOyAA14NavigationLinkVyAA6ZStackVyAVyACyACy07WorkoutB0014RaceCroppedMapF0VAA12_FrameLayoutVGAA11_ClipEffectVyAA16RoundedRectangleVGG_ACyACyA5_013RaceElevations5ChartF0VA9_GAA14_PaddingLayoutVGtGGA5_09RaceRouteF0VG_AA011PlainButtonM0VQo_AA21_TraitWritingModifierVyAA0U17RowInsetsTraitKeyVGGAZG_AXyACyACyAA4TextVA9_GA5_09UnstackedX15SpacingModifier33_B33B451D6D59C74C7A089BCD2EE64343LLVGACyACyA2_yACyACyAjAEA_yQrqd__AAA0_Rd__lFQOyAA6ButtonVyA39_G_AA023BorderedProminentButtonM0VQo_AA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGA52_yAA4FontVSgGGACyACyA5_020RaceWorkoutSelectionF0VA52_y11WorkoutCore30WorkoutConfigurationDataSourceCSgGGA52_yA5_28ConfigurationNavigationModelCSgGGGA32_yAA0U21RowBackgroundTraitKeyVGGA32_yAA0U16ItemTintTraitKeyVGGAZGtGGA5_07StackedU16SectionsModifierA42_LLVGA52_yAA03AnyqM0VSgGG_SSQo__A54_Qo_GA5_020WorkoutConfigurationO0VGAA25_AppearanceActionModifierVGMd;
      v78 = v128;
      outlined init with take of SubscriptionView<ObservableObjectPublisher, <<opaque return type of View.contentMargins(_:_:for:)>>.0>(v75, v128, &_s7SwiftUI15ModifiedContentVyACyAA16SubscriptionViewVy7Combine25ObservableObjectPublisherCAA0F0PAAE22toolbarForegroundStyle_3forQrqd___AA16ToolbarPlacementVdtAA05ShapeM0Rd__lFQOyAjAE18navigationBarTitleyQrqd__SyRd__lFQOyACyACyAA4ListVys5NeverOAA05TupleF0VyAA7SectionVyAA05EmptyF0VACyAjAE06buttonM0yQrqd__AA015PrimitiveButtonM0Rd__lFQOyAA14NavigationLinkVyAA6ZStackVyAVyACyACy07WorkoutB0014RaceCroppedMapF0VAA12_FrameLayoutVGAA11_ClipEffectVyAA16RoundedRectangleVGG_ACyACyA5_013RaceElevations5ChartF0VA9_GAA14_PaddingLayoutVGtGGA5_09RaceRouteF0VG_AA011PlainButtonM0VQo_AA21_TraitWritingModifierVyAA0U17RowInsetsTraitKeyVGGAZG_AXyACyACyAA4TextVA9_GA5_09UnstackedX15SpacingModifier33_B33B451D6D59C74C7A089BCD2EE64343LLVGACyACyA2_yACyACyAjAEA_yQrqd__AAA0_Rd__lFQOyAA6ButtonVyA39_G_AA023BorderedProminentButtonM0VQo_AA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGA52_yAA4FontVSgGGACyACyA5_020RaceWorkoutSelectionF0VA52_y11WorkoutCore30WorkoutConfigurationDataSourceCSgGGA52_yA5_28ConfigurationNavigationModelCSgGGGA32_yAA0U21RowBackgroundTraitKeyVGGA32_yAA0U16ItemTintTraitKeyVGGAZGtGGA5_07StackedU16SectionsModifierA42_LLVGA52_yAA03AnyqM0VSgGG_SSQo__A54_Qo_GA5_020WorkoutConfigurationO0VGAA25_AppearanceActionModifierVGMd);
      outlined init with copy of ModifiedContent<SubscriptionView<ObservableObjectPublisher, <<opaque return type of View.contentMargins(_:_:for:)>>.0>, WorkoutConfigurationToolbar>(v78, v135, &_s7SwiftUI15ModifiedContentVyACyAA16SubscriptionViewVy7Combine25ObservableObjectPublisherCAA0F0PAAE22toolbarForegroundStyle_3forQrqd___AA16ToolbarPlacementVdtAA05ShapeM0Rd__lFQOyAjAE18navigationBarTitleyQrqd__SyRd__lFQOyACyACyAA4ListVys5NeverOAA05TupleF0VyAA7SectionVyAA05EmptyF0VACyAjAE06buttonM0yQrqd__AA015PrimitiveButtonM0Rd__lFQOyAA14NavigationLinkVyAA6ZStackVyAVyACyACy07WorkoutB0014RaceCroppedMapF0VAA12_FrameLayoutVGAA11_ClipEffectVyAA16RoundedRectangleVGG_ACyACyA5_013RaceElevations5ChartF0VA9_GAA14_PaddingLayoutVGtGGA5_09RaceRouteF0VG_AA011PlainButtonM0VQo_AA21_TraitWritingModifierVyAA0U17RowInsetsTraitKeyVGGAZG_AXyACyACyAA4TextVA9_GA5_09UnstackedX15SpacingModifier33_B33B451D6D59C74C7A089BCD2EE64343LLVGACyACyA2_yACyACyAjAEA_yQrqd__AAA0_Rd__lFQOyAA6ButtonVyA39_G_AA023BorderedProminentButtonM0VQo_AA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGA52_yAA4FontVSgGGACyACyA5_020RaceWorkoutSelectionF0VA52_y11WorkoutCore30WorkoutConfigurationDataSourceCSgGGA52_yA5_28ConfigurationNavigationModelCSgGGGA32_yAA0U21RowBackgroundTraitKeyVGGA32_yAA0U16ItemTintTraitKeyVGGAZGtGGA5_07StackedU16SectionsModifierA42_LLVGA52_yAA03AnyqM0VSgGG_SSQo__A54_Qo_GA5_020WorkoutConfigurationO0VGAA25_AppearanceActionModifierVGMd);
      swift_storeEnumTagMultiPayload();
      outlined init with copy of RaceWorkoutConfigurationView(v2, &v139);
      lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<SubscriptionView<ObservableObjectPublisher, <<opaque return type of View.toolbarForegroundStyle<A>(_:for:)>>.0>, WorkoutConfigurationToolbar>, _AppearanceActionModifier> and conformance <> ModifiedContent<A, B>();
      lazy protocol witness table accessor for type ModifiedContent<SubscriptionView<ObservableObjectPublisher, <<opaque return type of View.contentMargins(_:_:for:)>>.0>, WorkoutConfigurationToolbar> and conformance <> ModifiedContent<A, B>();
      _ConditionalContent<>.init(storage:)();
      v79 = v78;
      return outlined destroy of ModifiedContent<SubscriptionView<ObservableObjectPublisher, <<opaque return type of View.contentMargins(_:_:for:)>>.0>, WorkoutConfigurationToolbar>(v79, v77);
    }
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI9TupleViewVyAA15ModifiedContentVyAA7SectionVyAEyAEyAA6VStackVyACyAA4TextV_AKtGGAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGAA14_PaddingLayoutVGAA6ZStackVyACyAEy07WorkoutB009RaceRouteD0VAA06_FrameP0VG_AEyAEyAZ0s17ElevationBarChartD0VA2_GAVGtGGAA05EmptyD0VGAZ14ClearListStyle33_A607961C6E65DD4DD1C2818C5FE69B58LLVG_AZ0s12FilterPickerD0VAZ05StartR6ButtonVtGMd);
    lazy protocol witness table accessor for type TupleView<(ModifiedContent<Section<ModifiedContent<ModifiedContent<VStack<TupleView<(Text, Text)>>, _EnvironmentKeyWritingModifier<Font?>>, _PaddingLayout>, ZStack<TupleView<(ModifiedContent<RaceRouteView, _FrameLayout>, ModifiedContent<ModifiedContent<RaceElevationBarChartView, _FrameLayout>, _PaddingLayout>)>>, EmptyView>, ClearListStyle>, RaceFilterPickerView, StartWorkoutButton)> and conformance TupleView<A>(&lazy protocol witness table cache variable for type TupleView<(ModifiedContent<Section<ModifiedContent<ModifiedContent<VStack<TupleView<(Text, Text)>>, _EnvironmentKeyWritingModifier<Font?>>, _PaddingLayout>, ZStack<TupleView<(ModifiedContent<RaceRouteView, _FrameLayout>, ModifiedContent<ModifiedContent<RaceElevationBarChartView, _FrameLayout>, _PaddingLayout>)>>, EmptyView>, ClearListStyle>, RaceFilterPickerView, StartWorkoutButton)> and conformance TupleView<A>, &_s7SwiftUI9TupleViewVyAA15ModifiedContentVyAA7SectionVyAEyAEyAA6VStackVyACyAA4TextV_AKtGGAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGAA14_PaddingLayoutVGAA6ZStackVyACyAEy07WorkoutB009RaceRouteD0VAA06_FrameP0VG_AEyAEyAZ0s17ElevationBarChartD0VA2_GAVGtGGAA05EmptyD0VGAZ14ClearListStyle33_A607961C6E65DD4DD1C2818C5FE69B58LLVG_AZ0s12FilterPickerD0VAZ05StartR6ButtonVtGMd);
    List<>.init(content:)();
    v80 = static Edge.Set.top.getter();
    static ContentMarginPlacement.scrollContent.getter();
    started = lazy protocol witness table accessor for type TupleView<(ModifiedContent<Section<ModifiedContent<ModifiedContent<VStack<TupleView<(Text, Text)>>, _EnvironmentKeyWritingModifier<Font?>>, _PaddingLayout>, ZStack<TupleView<(ModifiedContent<RaceRouteView, _FrameLayout>, ModifiedContent<ModifiedContent<RaceElevationBarChartView, _FrameLayout>, _PaddingLayout>)>>, EmptyView>, ClearListStyle>, RaceFilterPickerView, StartWorkoutButton)> and conformance TupleView<A>(&lazy protocol witness table cache variable for type List<Never, TupleView<(ModifiedContent<Section<ModifiedContent<ModifiedContent<VStack<TupleView<(Text, Text)>>, _EnvironmentKeyWritingModifier<Font?>>, _PaddingLayout>, ZStack<TupleView<(ModifiedContent<RaceRouteView, _FrameLayout>, ModifiedContent<ModifiedContent<RaceElevationBarChartView, _FrameLayout>, _PaddingLayout>)>>, EmptyView>, ClearListStyle>, RaceFilterPickerView, StartWorkoutButton)>> and conformance List<A, B>, &_s7SwiftUI4ListVys5NeverOAA9TupleViewVyAA15ModifiedContentVyAA7SectionVyAIyAIyAA6VStackVyAGyAA4TextV_AOtGGAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGAA14_PaddingLayoutVGAA6ZStackVyAGyAIy07WorkoutB009RaceRouteF0VAA06_FrameR0VG_AIyAIyA2_0u17ElevationBarChartF0VA6_GAZGtGGAA05EmptyF0VGA2_05ClearC5Style33_A607961C6E65DD4DD1C2818C5FE69B58LLVG_A2_0u12FilterPickerF0VA2_05StartT6ButtonVtGGMd);
    v82 = v130;
    MEMORY[0x20F30A640](v80, 0, 0, v4, v5, started);
    (*(v122 + 1))(v4, v123);
    (*(v120 + 8))(v7, v5);
    v83 = *(v2 + 40);
    type metadata accessor for RaceWorkoutConfiguration();
    lazy protocol witness table accessor for type RaceWorkoutConfiguration and conformance WorkoutConfiguration(&lazy protocol witness table cache variable for type RaceWorkoutConfiguration and conformance WorkoutConfiguration, MEMORY[0x277D7D950]);
    v84 = ObservableObject<>.objectWillChange.getter();
    v85 = swift_allocObject();
    v86 = *(v2 + 112);
    *(v85 + 112) = *(v2 + 96);
    *(v85 + 128) = v86;
    *(v85 + 144) = *(v2 + 128);
    *(v85 + 160) = *(v2 + 144);
    v87 = *(v2 + 48);
    *(v85 + 48) = *(v2 + 32);
    *(v85 + 64) = v87;
    v88 = *(v2 + 80);
    *(v85 + 80) = *(v2 + 64);
    *(v85 + 96) = v88;
    v89 = *(v2 + 16);
    *(v85 + 16) = *v2;
    *(v85 + 32) = v89;
    *&v82[*(v8 + 52)] = v84;
    v90 = &v82[*(v8 + 56)];
    *v90 = partial apply for closure #5 in RaceWorkoutConfigurationView.body.getter;
    *(v90 + 1) = v85;
    v143 = *(v2 + 48);
    outlined init with copy of RaceWorkoutConfigurationView(v2, &v139);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI5StateVySbGMd);
    State.projectedValue.getter();
    v91 = *v2;
    if (*v2)
    {
      v92 = v139;
      v93 = v140;
      LODWORD(v131) = v141;
      v132 = *(v2 + 96);
      v94 = v91;
      v95 = v83;
      WorkoutConfiguration.displayColor.getter();
      v128 = Color.init(uiColor:)();
      LOBYTE(v143) = 0;
      static Binding.constant(_:)();
      v125 = v139;
      v96 = v140;
      LODWORD(v127) = v141;
      v97 = swift_allocObject();
      *(v97 + 16) = v94;
      v98 = swift_getKeyPath();
      v99 = (v129 + *(v137 + 36));
      *v99 = v98;
      __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI11EnvironmentV7ContentOyAA13DismissActionV_GMd);
      swift_storeEnumTagMultiPayload();
      type metadata accessor for ConfigurationNavigationModel();
      lazy protocol witness table accessor for type RaceWorkoutConfiguration and conformance WorkoutConfiguration(&lazy protocol witness table cache variable for type ConfigurationNavigationModel and conformance ConfigurationNavigationModel, type metadata accessor for ConfigurationNavigationModel);
      v124 = v94;

      v100 = EnvironmentObject.init()();
      v102 = v101;
      v103 = type metadata accessor for WorkoutConfigurationToolbar();
      v104 = (v99 + v103[5]);
      *v104 = v100;
      v104[1] = v102;
      v105 = (v99 + v103[6]);
      type metadata accessor for WorkoutConfiguration();
      lazy protocol witness table accessor for type RaceWorkoutConfiguration and conformance WorkoutConfiguration(&lazy protocol witness table cache variable for type WorkoutConfiguration and conformance WorkoutConfiguration, MEMORY[0x277D7DA50]);
      v106 = v95;
      *v105 = ObservedObject.init(wrappedValue:)();
      v105[1] = v107;
      v108 = v99 + v103[7];
      *v108 = v92;
      *(v108 + 1) = v93;
      v108[16] = v131;
      v109 = v99 + v103[8];
      *v109 = partial apply for implicit closure #2 in View.workoutConfigurationToolbar(workoutConfiguration:hasBeenModified:dataSource:formattingManager:intent:color:showEditConfirmation:);
      *(v109 + 1) = v97;
      v109[16] = 0;
      v110 = v132;
      *(v99 + v103[9]) = v132;
      *(v99 + v103[10]) = 0;
      *(v99 + v103[11]) = v128;
      v111 = v99 + v103[12];
      *v111 = v125;
      *(v111 + 1) = v96;
      v111[16] = v127;
      v112 = v99 + v103[13];
      LOBYTE(v143) = 0;

      v113 = v110;

      State.init(wrappedValue:)();
      v114 = v140;
      *v112 = v139;
      *(v112 + 1) = v114;
      v115 = v99 + v103[14];
      LOBYTE(v143) = 0;
      State.init(wrappedValue:)();

      v116 = v140;
      *v115 = v139;
      *(v115 + 1) = v116;
      v117 = v129;
      outlined init with take of SubscriptionView<ObservableObjectPublisher, <<opaque return type of View.contentMargins(_:_:for:)>>.0>(v130, v129, &_s7SwiftUI16SubscriptionViewVy7Combine25ObservableObjectPublisherCAA0D0PAAE14contentMargins__3forQrAA4EdgeO3SetV_12CoreGraphics7CGFloatVSgAA22ContentMarginPlacementVtFQOyAA4ListVys5NeverOAA05TupleD0VyAA08ModifiedQ0VyAA7SectionVyA0_yA0_yAA6VStackVyAZyAA4TextV_A6_tGGAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGAA14_PaddingLayoutVGAA6ZStackVyAZyA0_y07WorkoutB009RaceRouteD0VAA12_FrameLayoutVG_A0_yA0_yA21_021RaceElevationBarChartD0VA25_GA17_GtGGAA05EmptyD0VGA21_05ClearT5Style33_A607961C6E65DD4DD1C2818C5FE69B58LLVG_A21_016RaceFilterPickerD0VA21_18StartWorkoutButtonVtGG_Qo_GMd);
      v77 = &_s7SwiftUI15ModifiedContentVyAA16SubscriptionViewVy7Combine25ObservableObjectPublisherCAA0F0PAAE14contentMargins__3forQrAA4EdgeO3SetV_12CoreGraphics7CGFloatVSgAA0D15MarginPlacementVtFQOyAA4ListVys5NeverOAA05TupleF0VyACyAA7SectionVyACyACyAA6VStackVyA0_yAA4TextV_A6_tGGAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGAA14_PaddingLayoutVGAA6ZStackVyA0_yACy07WorkoutB009RaceRouteF0VAA12_FrameLayoutVG_ACyACyA21_021RaceElevationBarChartF0VA25_GA17_GtGGAA05EmptyF0VGA21_05ClearU5Style33_A607961C6E65DD4DD1C2818C5FE69B58LLVG_A21_016RaceFilterPickerF0VA21_18StartWorkoutButtonVtGG_Qo_GA21_27WorkoutConfigurationToolbarVGMd;
      v118 = v126;
      outlined init with take of SubscriptionView<ObservableObjectPublisher, <<opaque return type of View.contentMargins(_:_:for:)>>.0>(v117, v126, &_s7SwiftUI15ModifiedContentVyAA16SubscriptionViewVy7Combine25ObservableObjectPublisherCAA0F0PAAE14contentMargins__3forQrAA4EdgeO3SetV_12CoreGraphics7CGFloatVSgAA0D15MarginPlacementVtFQOyAA4ListVys5NeverOAA05TupleF0VyACyAA7SectionVyACyACyAA6VStackVyA0_yAA4TextV_A6_tGGAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGAA14_PaddingLayoutVGAA6ZStackVyA0_yACy07WorkoutB009RaceRouteF0VAA12_FrameLayoutVG_ACyACyA21_021RaceElevationBarChartF0VA25_GA17_GtGGAA05EmptyF0VGA21_05ClearU5Style33_A607961C6E65DD4DD1C2818C5FE69B58LLVG_A21_016RaceFilterPickerF0VA21_18StartWorkoutButtonVtGG_Qo_GA21_27WorkoutConfigurationToolbarVGMd);
      outlined init with copy of ModifiedContent<SubscriptionView<ObservableObjectPublisher, <<opaque return type of View.contentMargins(_:_:for:)>>.0>, WorkoutConfigurationToolbar>(v118, v135, &_s7SwiftUI15ModifiedContentVyAA16SubscriptionViewVy7Combine25ObservableObjectPublisherCAA0F0PAAE14contentMargins__3forQrAA4EdgeO3SetV_12CoreGraphics7CGFloatVSgAA0D15MarginPlacementVtFQOyAA4ListVys5NeverOAA05TupleF0VyACyAA7SectionVyACyACyAA6VStackVyA0_yAA4TextV_A6_tGGAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGAA14_PaddingLayoutVGAA6ZStackVyA0_yACy07WorkoutB009RaceRouteF0VAA12_FrameLayoutVG_ACyACyA21_021RaceElevationBarChartF0VA25_GA17_GtGGAA05EmptyF0VGA21_05ClearU5Style33_A607961C6E65DD4DD1C2818C5FE69B58LLVG_A21_016RaceFilterPickerF0VA21_18StartWorkoutButtonVtGG_Qo_GA21_27WorkoutConfigurationToolbarVGMd);
      swift_storeEnumTagMultiPayload();
      lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<SubscriptionView<ObservableObjectPublisher, <<opaque return type of View.toolbarForegroundStyle<A>(_:for:)>>.0>, WorkoutConfigurationToolbar>, _AppearanceActionModifier> and conformance <> ModifiedContent<A, B>();
      lazy protocol witness table accessor for type ModifiedContent<SubscriptionView<ObservableObjectPublisher, <<opaque return type of View.contentMargins(_:_:for:)>>.0>, WorkoutConfigurationToolbar> and conformance <> ModifiedContent<A, B>();
      _ConditionalContent<>.init(storage:)();
      v79 = v118;
      return outlined destroy of ModifiedContent<SubscriptionView<ObservableObjectPublisher, <<opaque return type of View.contentMargins(_:_:for:)>>.0>, WorkoutConfigurationToolbar>(v79, v77);
    }
  }

  type metadata accessor for WorkoutConfigurationDataSource();
  lazy protocol witness table accessor for type RaceWorkoutConfiguration and conformance WorkoutConfiguration(&lazy protocol witness table cache variable for type WorkoutConfigurationDataSource and conformance WorkoutConfigurationDataSource, MEMORY[0x277D7DC28]);
  result = EnvironmentObject.error()();
  __break(1u);
  return result;
}

uint64_t closure #1 in RaceWorkoutConfigurationView.body.getter@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v39 = a2;
  v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI7SectionVyAA15ModifiedContentVyAEyAA4TextVAA12_FrameLayoutVG07WorkoutB009UnstackedC15SpacingModifier33_B33B451D6D59C74C7A089BCD2EE64343LLVGAEyAEyAA14NavigationLinkVyAEyAEyAA4ViewPAAE11buttonStyleyQrqd__AA015PrimitiveButtonZ0Rd__lFQOyAA6ButtonVyAGG_AA023BorderedProminentButtonZ0VQo_AA022_EnvironmentKeyWritingL0VyAA5ColorVSgGGA1_yAA4FontVSgGGAEyAEyAK04Racei9SelectionX0VA1_y0I4Core0I23ConfigurationDataSourceCSgGGA1_yAK013ConfigurationV5ModelCSgGGGAA013_TraitWritingL0VyAA25ListRowBackgroundTraitKeyVGGA27_yAA20ListItemTintTraitKeyVGGAA05EmptyX0VGMd);
  v3 = *(v38 - 8);
  v4 = MEMORY[0x28223BE20](v38);
  v37 = &v32 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v7 = &v32 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI7SectionVyAA9EmptyViewVAA15ModifiedContentVyAA0E0PAAE11buttonStyleyQrqd__AA015PrimitiveButtonI0Rd__lFQOyAA14NavigationLinkVyAA6ZStackVyAA05TupleE0VyAGyAGy07WorkoutB0014RaceCroppedMapE0VAA12_FrameLayoutVGAA11_ClipEffectVyAA16RoundedRectangleVGG_AGyAGyAR0q17ElevationBarChartE0VAVGAA08_PaddingU0VGtGGAR0q5RouteE0VG_AA05PlainkI0VQo_AA21_TraitWritingModifierVyAA21ListRowInsetsTraitKeyVGGAEGMd);
  v36 = *(v8 - 8);
  v9 = v36;
  v10 = MEMORY[0x28223BE20](v8);
  v12 = &v32 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v14 = &v32 - v13;
  v41 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyAA4ViewPAAE11buttonStyleyQrqd__AA015PrimitiveButtonG0Rd__lFQOyAA14NavigationLinkVyAA6ZStackVyAA05TupleE0VyACyACy07WorkoutB0014RaceCroppedMapE0VAA12_FrameLayoutVGAA11_ClipEffectVyAA16RoundedRectangleVGG_ACyACyAN0o17ElevationBarChartE0VARGAA08_PaddingS0VGtGGAN0o5RouteE0VG_AA05PlainiG0VQo_AA21_TraitWritingModifierVyAA21ListRowInsetsTraitKeyVGGMd);
  lazy protocol witness table accessor for type ModifiedContent<<<opaque return type of View.buttonStyle<A>(_:)>>.0, _TraitWritingModifier<ListRowInsetsTraitKey>> and conformance <> ModifiedContent<A, B>();
  v35 = v14;
  Section<>.init(content:)();
  v40 = a1;
  LocalizedStringKey.init(stringLiteral:)();
  v15 = Text.init(_:tableName:bundle:comment:)();
  v17 = v16;
  v19 = v18;
  v21 = v20;
  static Alignment.center.getter();
  _FrameLayout.init(width:height:alignment:)();
  v42 = v15;
  v43 = v17;
  v44 = v19 & 1;
  v45 = v21;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyACyAA4TextVAA12_FrameLayoutVG07WorkoutB031UnstackedSectionSpacingModifier33_B33B451D6D59C74C7A089BCD2EE64343LLVGMd);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyACyAA14NavigationLinkVyACyACyAA4ViewPAAE11buttonStyleyQrqd__AA015PrimitiveButtonI0Rd__lFQOyAA0K0VyAA4TextVG_AA017BorderedProminentkI0VQo_AA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGASyAA4FontVSgGGACyACy07WorkoutB004Raceu9SelectionG0VASy0U4Core0U23ConfigurationDataSourceCSgGGASyA2_0yE5ModelCSgGGGAA06_TraitqR0VyAA022ListRowBackgroundTraitP0VGGA18_yAA017ListItemTintTraitP0VGGMd);
  lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<Text, _FrameLayout>, UnstackedSectionSpacingModifier> and conformance <> ModifiedContent<A, B>();
  lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<NavigationLink<ModifiedContent<ModifiedContent<<<opaque return type of View.buttonStyle<A>(_:)>>.0, _EnvironmentKeyWritingModifier<Color?>>, _EnvironmentKeyWritingModifier<Font?>>, ModifiedContent<ModifiedContent<RaceWorkoutSelectionView, _EnvironmentKeyWritingModifier<WorkoutConfigurationDataSource?>>, _EnvironmentKeyWritingModifier<ConfigurationNavigationModel?>>>, _TraitWritingModifier<ListRowBackgroundTraitKey>>, _TraitWritingModifier<ListItemTintTraitKey>> and conformance <> ModifiedContent<A, B>();
  v33 = v7;
  Section<>.init(header:content:)();
  v22 = *(v9 + 16);
  v34 = v12;
  v22(v12, v14, v8);
  v23 = *(v3 + 16);
  v24 = v37;
  v25 = v7;
  v26 = v38;
  v23(v37, v25, v38);
  v27 = v39;
  v22(v39, v12, v8);
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI7SectionVyAA9EmptyViewVAA15ModifiedContentVyAA0E0PAAE11buttonStyleyQrqd__AA015PrimitiveButtonI0Rd__lFQOyAA14NavigationLinkVyAA6ZStackVyAA05TupleE0VyAGyAGy07WorkoutB0014RaceCroppedMapE0VAA12_FrameLayoutVGAA11_ClipEffectVyAA16RoundedRectangleVGG_AGyAGyAR0q17ElevationBarChartE0VAVGAA08_PaddingU0VGtGGAR0q5RouteE0VG_AA05PlainkI0VQo_AA21_TraitWritingModifierVyAA21ListRowInsetsTraitKeyVGGAEG_ACyAGyAGyAA4TextVAVGAR09UnstackedC15SpacingModifier33_B33B451D6D59C74C7A089BCD2EE64343LLVGAGyAGyAMyAGyAGyAiAEAJyQrqd__AaKRd__lFQOyAA0K0VyA24_G_AA017BorderedProminentkI0VQo_AA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGA37_yAA4FontVSgGGAGyAGyAR0qp9SelectionE0VA37_y0P4Core0P23ConfigurationDataSourceCSgGGA37_yAR013ConfigurationL5ModelCSgGGGA17_yAA25ListRowBackgroundTraitKeyVGGA17_yAA20ListItemTintTraitKeyVGGAEGtMd);
  v23(&v27[*(v28 + 48)], v24, v26);
  v29 = *(v3 + 8);
  v29(v33, v26);
  v30 = *(v36 + 8);
  v30(v35, v8);
  v29(v24, v26);
  return (v30)(v34, v8);
}

double closure #1 in closure #1 in RaceWorkoutConfigurationView.body.getter@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v25 = a2;
  v3 = type metadata accessor for PlainButtonStyle();
  v4 = *(v3 - 8);
  v23 = v3;
  v24 = v4;
  MEMORY[0x28223BE20](v3);
  v6 = &v22 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI14NavigationLinkVyAA6ZStackVyAA9TupleViewVyAA15ModifiedContentVyAIy07WorkoutB0014RaceCroppedMapG0VAA12_FrameLayoutVGAA11_ClipEffectVyAA16RoundedRectangleVGG_AIyAIyAJ0k17ElevationBarChartG0VANGAA08_PaddingO0VGtGGAJ0k5RouteG0VGMd);
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v22 - v9;
  v11 = *(a1 + 40);
  v12 = RaceWorkoutConfiguration.configurationViewTitle(_:)();
  v14 = v13;
  v15 = *(a1 + 104);
  type metadata accessor for RaceRouteLocationsModel();
  swift_allocObject();
  v16 = v15;
  v17 = specialized RaceRouteLocationsModel.init(healthStore:workoutConfiguration:)(v16, v11);

  specialized RaceRouteView.init(navigationTitle:viewModel:)(v12, v14, v17, v27);
  v26 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI6ZStackVyAA9TupleViewVyAA15ModifiedContentVyAGy07WorkoutB0014RaceCroppedMapE0VAA12_FrameLayoutVGAA11_ClipEffectVyAA16RoundedRectangleVGG_AGyAGyAH0i17ElevationBarChartE0VALGAA08_PaddingM0VGtGGMd);
  lazy protocol witness table accessor for type TupleView<(ModifiedContent<Section<ModifiedContent<ModifiedContent<VStack<TupleView<(Text, Text)>>, _EnvironmentKeyWritingModifier<Font?>>, _PaddingLayout>, ZStack<TupleView<(ModifiedContent<RaceRouteView, _FrameLayout>, ModifiedContent<ModifiedContent<RaceElevationBarChartView, _FrameLayout>, _PaddingLayout>)>>, EmptyView>, ClearListStyle>, RaceFilterPickerView, StartWorkoutButton)> and conformance TupleView<A>(&lazy protocol witness table cache variable for type ZStack<TupleView<(ModifiedContent<ModifiedContent<RaceCroppedMapView, _FrameLayout>, _ClipEffect<RoundedRectangle>>, ModifiedContent<ModifiedContent<RaceElevationBarChartView, _FrameLayout>, _PaddingLayout>)>> and conformance ZStack<A>, &_s7SwiftUI6ZStackVyAA9TupleViewVyAA15ModifiedContentVyAGy07WorkoutB0014RaceCroppedMapE0VAA12_FrameLayoutVGAA11_ClipEffectVyAA16RoundedRectangleVGG_AGyAGyAH0i17ElevationBarChartE0VALGAA08_PaddingM0VGtGGMd);
  lazy protocol witness table accessor for type RaceRouteView and conformance RaceRouteView();
  NavigationLink.init(destination:label:)();
  PlainButtonStyle.init()();
  lazy protocol witness table accessor for type TupleView<(ModifiedContent<Section<ModifiedContent<ModifiedContent<VStack<TupleView<(Text, Text)>>, _EnvironmentKeyWritingModifier<Font?>>, _PaddingLayout>, ZStack<TupleView<(ModifiedContent<RaceRouteView, _FrameLayout>, ModifiedContent<ModifiedContent<RaceElevationBarChartView, _FrameLayout>, _PaddingLayout>)>>, EmptyView>, ClearListStyle>, RaceFilterPickerView, StartWorkoutButton)> and conformance TupleView<A>(&lazy protocol witness table cache variable for type NavigationLink<ZStack<TupleView<(ModifiedContent<ModifiedContent<RaceCroppedMapView, _FrameLayout>, _ClipEffect<RoundedRectangle>>, ModifiedContent<ModifiedContent<RaceElevationBarChartView, _FrameLayout>, _PaddingLayout>)>>, RaceRouteView> and conformance NavigationLink<A, B>, &_s7SwiftUI14NavigationLinkVyAA6ZStackVyAA9TupleViewVyAA15ModifiedContentVyAIy07WorkoutB0014RaceCroppedMapG0VAA12_FrameLayoutVGAA11_ClipEffectVyAA16RoundedRectangleVGG_AIyAIyAJ0k17ElevationBarChartG0VANGAA08_PaddingO0VGtGGAJ0k5RouteG0VGMd);
  lazy protocol witness table accessor for type RaceWorkoutConfiguration and conformance WorkoutConfiguration(&lazy protocol witness table cache variable for type PlainButtonStyle and conformance PlainButtonStyle, MEMORY[0x277CDDB18]);
  v18 = v25;
  v19 = v23;
  View.buttonStyle<A>(_:)();
  (*(v24 + 8))(v6, v19);
  (*(v8 + 8))(v10, v7);
  v20 = v18 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyAA4ViewPAAE11buttonStyleyQrqd__AA015PrimitiveButtonG0Rd__lFQOyAA14NavigationLinkVyAA6ZStackVyAA05TupleE0VyACyACy07WorkoutB0014RaceCroppedMapE0VAA12_FrameLayoutVGAA11_ClipEffectVyAA16RoundedRectangleVGG_ACyACyAN0o17ElevationBarChartE0VARGAA08_PaddingS0VGtGGAN0o5RouteE0VG_AA05PlainiG0VQo_AA21_TraitWritingModifierVyAA21ListRowInsetsTraitKeyVGGMd) + 36);
  *(v20 + 32) = 0;
  result = 0.0;
  *v20 = 0u;
  *(v20 + 16) = 0u;
  return result;
}

uint64_t closure #1 in closure #1 in closure #1 in RaceWorkoutConfigurationView.body.getter@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  *a2 = static Alignment.bottom.getter();
  a2[1] = v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI13_VariadicViewO4TreeVy_AA13_ZStackLayoutVAA05TupleD0VyAA15ModifiedContentVyAKy07WorkoutB0014RaceCroppedMapD0VAA06_FrameG0VGAA11_ClipEffectVyAA16RoundedRectangleVGG_AKyAKyAL0l17ElevationBarChartD0VAPGAA08_PaddingG0VGtGGMd);
  return closure #1 in closure #1 in closure #1 in closure #1 in RaceWorkoutConfigurationView.body.getter(a1, a2 + *(v5 + 44));
}

uint64_t closure #1 in closure #1 in closure #1 in closure #1 in RaceWorkoutConfigurationView.body.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v65 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyACy07WorkoutB018RaceCroppedMapViewVAA12_FrameLayoutVGAA11_ClipEffectVyAA16RoundedRectangleVGGMd);
  v4 = MEMORY[0x28223BE20](v3);
  v66 = &v63 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = MEMORY[0x28223BE20](v4);
  v8 = &v63 - v7;
  MEMORY[0x28223BE20](v6);
  v67 = &v63 - v9;
  v10 = RaceWorkoutConfiguration.routeSnapshotData.getter();
  v12 = v11;
  v13 = objc_allocWithZone(MEMORY[0x277D755B8]);
  isa = Data._bridgeToObjectiveC()().super.isa;
  v15 = [v13 initWithData_];

  outlined consume of Data._Representation(v10, v12);
  if (v15)
  {
    v16 = Image.init(uiImage:)();
  }

  else
  {
    WorkoutConfiguration.displaySymbolName.getter();
    v16 = Image.init(_internalSystemName:)();
  }

  v17 = v16;
  if (one-time initialization token for snapshotTotalHeight != -1)
  {
    swift_once();
  }

  v18 = static RaceRouteSnapshotConstants.snapshotTotalHeight;
  if (one-time initialization token for snapshotTotalWidth != -1)
  {
    swift_once();
  }

  v19 = static RaceRouteSnapshotConstants.snapshotTotalWidth;
  if (one-time initialization token for snapshotRouteHeight != -1)
  {
    swift_once();
  }

  v20 = static RaceRouteSnapshotConstants.snapshotRouteHeight;
  if (one-time initialization token for snapshotRouteWidth != -1)
  {
    swift_once();
  }

  v21 = static RaceRouteSnapshotConstants.snapshotRouteWidth;
  if (one-time initialization token for snapshotRouteTopPadding != -1)
  {
    swift_once();
  }

  v22 = static RaceRouteSnapshotConstants.snapshotRouteTopPadding;
  if (one-time initialization token for snapshotRouteBottomPadding != -1)
  {
    swift_once();
  }

  v23 = static RaceRouteSnapshotConstants.snapshotRouteBottomPadding;
  if (one-time initialization token for routeViewHeight != -1)
  {
    swift_once();
  }

  static Alignment.center.getter();
  _FrameLayout.init(width:height:alignment:)();
  if (one-time initialization token for cornerRadius != -1)
  {
    swift_once();
  }

  v24 = static RaceConfigConstants.cornerRadius;
  v25 = &v8[*(v3 + 36)];
  v26 = *(type metadata accessor for RoundedRectangle() + 20);
  v27 = *MEMORY[0x277CE0118];
  v28 = type metadata accessor for RoundedCornerStyle();
  (*(*(v28 - 8) + 104))(v25 + v26, v27, v28);
  *v25 = v24;
  v25[1] = v24;
  *(v25 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI11_ClipEffectVyAA16RoundedRectangleVGMd) + 36)) = 256;
  *v8 = v17;
  *(v8 + 1) = v18;
  *(v8 + 2) = v19;
  *(v8 + 3) = v20;
  *(v8 + 4) = v21;
  *(v8 + 5) = v22;
  *(v8 + 6) = v23;
  *(v8 + 56) = xmmword_20CB5EA70;
  __asm { FMOV            V0.2D, #10.0 }

  *(v8 + 72) = _Q0;
  *(v8 + 88) = v88;
  *(v8 + 104) = v89;
  *(v8 + 120) = v90;
  outlined init with take of ModifiedContent<ModifiedContent<RaceCroppedMapView, _FrameLayout>, _ClipEffect<RoundedRectangle>>(v8, v67);
  v94 = *(a1 + 120);
  v34 = *(a1 + 96);
  outlined init with copy of AnyLocation<Bool>?(&v94, v75, &_s7SwiftUI14ObservedObjectVy07WorkoutB022RaceElevationViewModelCGMd);
  v64 = v34;
  v63 = dispatch thunk of WorkoutConfiguration.activityType.getter();
  type metadata accessor for RaceElevationViewModel();
  lazy protocol witness table accessor for type RaceWorkoutConfiguration and conformance WorkoutConfiguration(&lazy protocol witness table cache variable for type RaceElevationViewModel and conformance RaceElevationViewModel, type metadata accessor for RaceElevationViewModel);
  v35 = ObservedObject.init(wrappedValue:)();
  v37 = v36;
  if (one-time initialization token for elevationChartHeight != -1)
  {
    swift_once();
  }

  static Alignment.center.getter();
  _FrameLayout.init(width:height:alignment:)();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy7SwiftUI4EdgeO3SetVGMd);
  v38 = swift_allocObject();
  *(v38 + 16) = xmmword_20CB5EA80;
  v39 = static Edge.Set.leading.getter();
  *(v38 + 32) = v39;
  v40 = static Edge.Set.trailing.getter();
  *(v38 + 33) = v40;
  v41 = static Edge.Set.bottom.getter();
  *(v38 + 34) = v41;
  v42 = Edge.Set.init(rawValue:)();
  Edge.Set.init(rawValue:)();
  if (Edge.Set.init(rawValue:)() != v39)
  {
    v42 = Edge.Set.init(rawValue:)();
  }

  Edge.Set.init(rawValue:)();
  if (Edge.Set.init(rawValue:)() != v40)
  {
    v42 = Edge.Set.init(rawValue:)();
  }

  Edge.Set.init(rawValue:)();
  if (Edge.Set.init(rawValue:)() != v41)
  {
    v42 = Edge.Set.init(rawValue:)();
  }

  if (one-time initialization token for elevationChartPadding != -1)
  {
    swift_once();
  }

  EdgeInsets.init(_all:)();
  v44 = v43;
  v46 = v45;
  v48 = v47;
  v50 = v49;
  v86 = 0;
  v51 = v66;
  v52 = v67;
  outlined init with copy of AnyLocation<Bool>?(v67, v66, &_s7SwiftUI15ModifiedContentVyACy07WorkoutB018RaceCroppedMapViewVAA12_FrameLayoutVGAA11_ClipEffectVyAA16RoundedRectangleVGGMd);
  v53 = v65;
  outlined init with copy of AnyLocation<Bool>?(v51, v65, &_s7SwiftUI15ModifiedContentVyACy07WorkoutB018RaceCroppedMapViewVAA12_FrameLayoutVGAA11_ClipEffectVyAA16RoundedRectangleVGGMd);
  v54 = (v53 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyACy07WorkoutB018RaceCroppedMapViewVAA12_FrameLayoutVGAA11_ClipEffectVyAA16RoundedRectangleVGG_ACyACyAD0f17ElevationBarChartI0VAHGAA08_PaddingK0VGtMd) + 48));
  *&v68 = v35;
  *(&v68 + 1) = v37;
  v55 = v35;
  v56 = v64;
  v57 = v37;
  v58 = v63;
  *&v69 = v64;
  *(&v69 + 1) = v63;
  v72 = v93;
  v71 = v92;
  v70 = v91;
  LOBYTE(v73) = v42;
  *(&v73 + 1) = *v87;
  DWORD1(v73) = *&v87[3];
  *(&v73 + 1) = v44;
  *&v74[0] = v46;
  *(&v74[0] + 1) = v48;
  *&v74[1] = v50;
  BYTE8(v74[1]) = 0;
  v59 = v73;
  v54[4] = v93;
  v54[5] = v59;
  v54[6] = v74[0];
  v60 = v69;
  *v54 = v68;
  v54[1] = v60;
  v61 = v71;
  v54[2] = v70;
  v54[3] = v61;
  *(v54 + 105) = *(v74 + 9);
  outlined init with copy of AnyLocation<Bool>?(&v68, v75, &_s7SwiftUI15ModifiedContentVyACy07WorkoutB025RaceElevationBarChartViewVAA12_FrameLayoutVGAA08_PaddingL0VGMd);
  outlined destroy of State<Bool>(v52, &_s7SwiftUI15ModifiedContentVyACy07WorkoutB018RaceCroppedMapViewVAA12_FrameLayoutVGAA11_ClipEffectVyAA16RoundedRectangleVGGMd);
  v75[0] = v55;
  v75[1] = v57;
  v75[2] = v56;
  v75[3] = v58;
  v76 = v91;
  v77 = v92;
  v78 = v93;
  v79 = v42;
  *v80 = *v87;
  *&v80[3] = *&v87[3];
  v81 = v44;
  v82 = v46;
  v83 = v48;
  v84 = v50;
  v85 = 0;
  outlined destroy of State<Bool>(v75, &_s7SwiftUI15ModifiedContentVyACy07WorkoutB025RaceElevationBarChartViewVAA12_FrameLayoutVGAA08_PaddingL0VGMd);
  return outlined destroy of State<Bool>(v51, &_s7SwiftUI15ModifiedContentVyACy07WorkoutB018RaceCroppedMapViewVAA12_FrameLayoutVGAA11_ClipEffectVyAA16RoundedRectangleVGGMd);
}

uint64_t closure #2 in closure #1 in RaceWorkoutConfigurationView.body.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v38 = a2;
  v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI14NavigationLinkVyAA15ModifiedContentVyAEyAA4ViewPAAE11buttonStyleyQrqd__AA015PrimitiveButtonI0Rd__lFQOyAA0K0VyAA4TextVG_AA017BorderedProminentkI0VQo_AA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGASyAA4FontVSgGGAEyAEy07WorkoutB004Raceu9SelectionG0VASy0U4Core0U23ConfigurationDataSourceCSgGGASyA2_0yC5ModelCSgGGGMd);
  v35 = *(v36 - 8);
  MEMORY[0x28223BE20](v36);
  v34 = &v28 - v3;
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyAA14NavigationLinkVyACyACyAA4ViewPAAE11buttonStyleyQrqd__AA015PrimitiveButtonI0Rd__lFQOyAA0K0VyAA4TextVG_AA017BorderedProminentkI0VQo_AA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGASyAA4FontVSgGGACyACy07WorkoutB004Raceu9SelectionG0VASy0U4Core0U23ConfigurationDataSourceCSgGGASyA2_0yE5ModelCSgGGGAA06_TraitqR0VyAA022ListRowBackgroundTraitP0VGGMd);
  MEMORY[0x28223BE20](v33);
  v37 = &v28 - v4;
  v41 = *(a1 + 32);
  v5 = *(&v41 + 1);
  v6 = *(a1 + 96);
  outlined init with copy of AnyLocation<Bool>?(&v41, v40, &_s7SwiftUI14ObservedObjectVy11WorkoutCore04RaceE13ConfigurationCGMd);
  type metadata accessor for WorkoutConfigurationDataSource();
  lazy protocol witness table accessor for type RaceWorkoutConfiguration and conformance WorkoutConfiguration(&lazy protocol witness table cache variable for type WorkoutConfigurationDataSource and conformance WorkoutConfigurationDataSource, MEMORY[0x277D7DC28]);
  v31 = v6;
  v30 = EnvironmentObject.init()();
  v29 = v7;
  type metadata accessor for ConfigurationNavigationModel();
  lazy protocol witness table accessor for type RaceWorkoutConfiguration and conformance WorkoutConfiguration(&lazy protocol witness table cache variable for type ConfigurationNavigationModel and conformance ConfigurationNavigationModel, type metadata accessor for ConfigurationNavigationModel);
  v28 = EnvironmentObject.init()();
  v9 = v8;
  type metadata accessor for RaceWorkoutConfiguration();
  lazy protocol witness table accessor for type RaceWorkoutConfiguration and conformance WorkoutConfiguration(&lazy protocol witness table cache variable for type RaceWorkoutConfiguration and conformance WorkoutConfiguration, MEMORY[0x277D7D950]);
  v32 = v5;
  v10 = ObservedObject.init(wrappedValue:)();
  v12 = *a1;
  if (*a1)
  {
    v13 = v10;
    v14 = v11;
    v15 = v12;
    v16 = static ObservableObject.environmentStore.getter();
    v17 = *(a1 + 16);
    if (v17)
    {
      v18 = v16;

      v19 = static ObservableObject.environmentStore.getter();
      v40[0] = v30;
      v40[1] = v29;
      v40[2] = v28;
      v40[3] = v9;
      v40[4] = v13;
      v40[5] = v14;
      v40[6] = v31;
      v40[7] = v18;
      v40[8] = v12;
      v40[9] = v19;
      v40[10] = v17;
      v39 = *(a1 + 136);
      __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI5StateVySbGMd);
      v20 = State.projectedValue.getter();
      MEMORY[0x28223BE20](v20);
      __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyACyAA4ViewPAAE11buttonStyleyQrqd__AA015PrimitiveButtonG0Rd__lFQOyAA0I0VyAA4TextVG_AA017BorderedProminentiG0VQo_AA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGAQyAA4FontVSgGGMd);
      __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyACy07WorkoutB004RaceE13SelectionViewVAA30_EnvironmentKeyWritingModifierVy0E4Core0E23ConfigurationDataSourceCSgGGAHyAD0N15NavigationModelCSgGGMd);
      lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<<<opaque return type of View.buttonStyle<A>(_:)>>.0, _EnvironmentKeyWritingModifier<Color?>>, _EnvironmentKeyWritingModifier<Font?>> and conformance <> ModifiedContent<A, B>();
      lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<RaceWorkoutSelectionView, _EnvironmentKeyWritingModifier<WorkoutConfigurationDataSource?>>, _EnvironmentKeyWritingModifier<ConfigurationNavigationModel?>> and conformance <> ModifiedContent<A, B>();
      v21 = v34;
      NavigationLink.init(destination:isActive:label:)();
      v40[0] = static Color.clear.getter();
      v22 = AnyView.init<A>(_:)();
      v23 = v37;
      (*(v35 + 32))(v37, v21, v36);
      *(v23 + *(v33 + 36)) = v22;
      WorkoutConfiguration.displayColor.getter();
      Color.init(uiColor:)();
      v24 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyACyAA14NavigationLinkVyACyACyAA4ViewPAAE11buttonStyleyQrqd__AA015PrimitiveButtonI0Rd__lFQOyAA0K0VyAA4TextVG_AA017BorderedProminentkI0VQo_AA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGASyAA4FontVSgGGACyACy07WorkoutB004Raceu9SelectionG0VASy0U4Core0U23ConfigurationDataSourceCSgGGASyA2_0yE5ModelCSgGGGAA06_TraitqR0VyAA022ListRowBackgroundTraitP0VGGA18_yAA017ListItemTintTraitP0VGGMd) + 36);
      v25 = v38;
      static ListItemTint.fixed(_:)();

      v26 = type metadata accessor for ListItemTint();
      (*(*(v26 - 8) + 56))(v25 + v24, 0, 1, v26);
      return outlined init with take of SubscriptionView<ObservableObjectPublisher, <<opaque return type of View.contentMargins(_:_:for:)>>.0>(v23, v25, &_s7SwiftUI15ModifiedContentVyAA14NavigationLinkVyACyACyAA4ViewPAAE11buttonStyleyQrqd__AA015PrimitiveButtonI0Rd__lFQOyAA0K0VyAA4TextVG_AA017BorderedProminentkI0VQo_AA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGASyAA4FontVSgGGACyACy07WorkoutB004Raceu9SelectionG0VASy0U4Core0U23ConfigurationDataSourceCSgGGASyA2_0yE5ModelCSgGGGAA06_TraitqR0VyAA022ListRowBackgroundTraitP0VGGMd);
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

uint64_t closure #1 in closure #2 in closure #1 in RaceWorkoutConfigurationView.body.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v29 = a2;
  v3 = type metadata accessor for BorderedProminentButtonStyle();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v30[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0) - 8];
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI6ButtonVyAA4TextVGMd);
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v30[-v9 - 8];
  if (one-time initialization token for WorkoutUIBundle != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v11 = WorkoutUIBundle.super.isa;
  v32._object = 0xE000000000000000;
  v12.value._countAndFlagsBits = 0x617A696C61636F4CLL;
  v12.value._object = 0xEB00000000656C62;
  v13._object = 0x800000020CB93C70;
  v13._countAndFlagsBits = 0xD00000000000001BLL;
  v14._countAndFlagsBits = 0;
  v14._object = 0xE000000000000000;
  v32._countAndFlagsBits = 0;
  v15 = NSLocalizedString(_:tableName:bundle:value:comment:)(v13, v12, v11, v14, v32);

  v31 = v15;
  v16 = swift_allocObject();
  v17 = *(a1 + 112);
  *(v16 + 112) = *(a1 + 96);
  *(v16 + 128) = v17;
  *(v16 + 144) = *(a1 + 128);
  *(v16 + 160) = *(a1 + 144);
  v18 = *(a1 + 48);
  *(v16 + 48) = *(a1 + 32);
  *(v16 + 64) = v18;
  v19 = *(a1 + 80);
  *(v16 + 80) = *(a1 + 64);
  *(v16 + 96) = v19;
  v20 = *(a1 + 16);
  *(v16 + 16) = *a1;
  *(v16 + 32) = v20;
  outlined init with copy of RaceWorkoutConfigurationView(a1, v30);
  lazy protocol witness table accessor for type String and conformance String();
  Button<>.init<A>(_:action:)();
  BorderedProminentButtonStyle.init()();
  lazy protocol witness table accessor for type TupleView<(ModifiedContent<Section<ModifiedContent<ModifiedContent<VStack<TupleView<(Text, Text)>>, _EnvironmentKeyWritingModifier<Font?>>, _PaddingLayout>, ZStack<TupleView<(ModifiedContent<RaceRouteView, _FrameLayout>, ModifiedContent<ModifiedContent<RaceElevationBarChartView, _FrameLayout>, _PaddingLayout>)>>, EmptyView>, ClearListStyle>, RaceFilterPickerView, StartWorkoutButton)> and conformance TupleView<A>(&lazy protocol witness table cache variable for type Button<Text> and conformance Button<A>, &_s7SwiftUI6ButtonVyAA4TextVGMd);
  lazy protocol witness table accessor for type RaceWorkoutConfiguration and conformance WorkoutConfiguration(&lazy protocol witness table cache variable for type BorderedProminentButtonStyle and conformance BorderedProminentButtonStyle, MEMORY[0x277CDE400]);
  v21 = v29;
  View.buttonStyle<A>(_:)();
  (*(v4 + 8))(v6, v3);
  (*(v8 + 8))(v10, v7);
  v22 = static Color.black.getter();
  KeyPath = swift_getKeyPath();
  v24 = (v21 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyAA4ViewPAAE11buttonStyleyQrqd__AA015PrimitiveButtonG0Rd__lFQOyAA0I0VyAA4TextVG_AA017BorderedProminentiG0VQo_AA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGMd) + 36));
  *v24 = KeyPath;
  v24[1] = v22;
  v25 = static Font.headline.getter();
  v26 = swift_getKeyPath();
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyACyAA4ViewPAAE11buttonStyleyQrqd__AA015PrimitiveButtonG0Rd__lFQOyAA0I0VyAA4TextVG_AA017BorderedProminentiG0VQo_AA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGAQyAA4FontVSgGGMd);
  v28 = (v21 + *(result + 36));
  *v28 = v26;
  v28[1] = v25;
  return result;
}

uint64_t closure #3 in RaceWorkoutConfigurationView.body.getter()
{
  v0 = dispatch thunk of WorkoutConfiguration.activityType.getter();
  MEMORY[0x20F3059A0]();

  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI5StateVySay11WorkoutCore10TargetZoneCGGMd);
  State.wrappedValue.setter();
  v1 = dispatch thunk of WorkoutConfiguration.activityType.getter();
  static TargetZoneStorage.heartRateTargetZone(activityType:)();

  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI5StateVy11WorkoutCore19HeartRateTargetZoneCGMd);
  return State.wrappedValue.setter();
}

uint64_t closure #4 in RaceWorkoutConfigurationView.body.getter@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v59 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyAA7SectionVyACyACyAA6VStackVyAA9TupleViewVyAA4TextV_AKtGGAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGAA14_PaddingLayoutVGAA6ZStackVyAIyACy07WorkoutB009RaceRouteH0VAA06_FrameP0VG_ACyACyAZ0s17ElevationBarChartH0VA2_GAVGtGGAA05EmptyH0VGAZ14ClearListStyle33_A607961C6E65DD4DD1C2818C5FE69B58LLVGMd);
  v4 = MEMORY[0x28223BE20](v3 - 8);
  v60 = &v48 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v7 = &v48 - v6;
  v64 = a1;
  closure #2 in closure #4 in RaceWorkoutConfigurationView.body.getter(&v78);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyACyAA6VStackVyAA9TupleViewVyAA4TextV_AItGGAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGAA14_PaddingLayoutVGMd);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI6ZStackVyAA9TupleViewVyAA15ModifiedContentVy07WorkoutB009RaceRouteE0VAA12_FrameLayoutVG_AGyAGyAH0i17ElevationBarChartE0VALGAA08_PaddingL0VGtGGMd);
  lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<VStack<TupleView<(Text, Text)>>, _EnvironmentKeyWritingModifier<Font?>>, _PaddingLayout> and conformance <> ModifiedContent<A, B>();
  lazy protocol witness table accessor for type TupleView<(ModifiedContent<Section<ModifiedContent<ModifiedContent<VStack<TupleView<(Text, Text)>>, _EnvironmentKeyWritingModifier<Font?>>, _PaddingLayout>, ZStack<TupleView<(ModifiedContent<RaceRouteView, _FrameLayout>, ModifiedContent<ModifiedContent<RaceElevationBarChartView, _FrameLayout>, _PaddingLayout>)>>, EmptyView>, ClearListStyle>, RaceFilterPickerView, StartWorkoutButton)> and conformance TupleView<A>(&lazy protocol witness table cache variable for type ZStack<TupleView<(ModifiedContent<RaceRouteView, _FrameLayout>, ModifiedContent<ModifiedContent<RaceElevationBarChartView, _FrameLayout>, _PaddingLayout>)>> and conformance ZStack<A>, &_s7SwiftUI6ZStackVyAA9TupleViewVyAA15ModifiedContentVy07WorkoutB009RaceRouteE0VAA12_FrameLayoutVG_AGyAGyAH0i17ElevationBarChartE0VALGAA08_PaddingL0VGtGGMd);
  v8 = v7;
  Section<>.init(header:content:)();
  v98 = *(a1 + 32);
  v9 = *(a1 + 96);
  v10 = *(&v98 + 1);
  outlined init with copy of AnyLocation<Bool>?(&v98, &v78, &_s7SwiftUI14ObservedObjectVy11WorkoutCore04RaceE13ConfigurationCGMd);
  type metadata accessor for RaceWorkoutConfiguration();
  lazy protocol witness table accessor for type RaceWorkoutConfiguration and conformance WorkoutConfiguration(&lazy protocol witness table cache variable for type RaceWorkoutConfiguration and conformance WorkoutConfiguration, MEMORY[0x277D7D950]);
  v58 = v9;
  v54 = v10;
  v11 = ObservedObject.init(wrappedValue:)();
  v13 = v12;
  type metadata accessor for ConfigurationNavigationModel();
  lazy protocol witness table accessor for type RaceWorkoutConfiguration and conformance WorkoutConfiguration(&lazy protocol witness table cache variable for type ConfigurationNavigationModel and conformance ConfigurationNavigationModel, type metadata accessor for ConfigurationNavigationModel);
  v14 = EnvironmentObject.init()();
  v56 = v15;
  v57 = v14;
  type metadata accessor for WorkoutConfigurationDataSource();
  lazy protocol witness table accessor for type RaceWorkoutConfiguration and conformance WorkoutConfiguration(&lazy protocol witness table cache variable for type WorkoutConfigurationDataSource and conformance WorkoutConfigurationDataSource, MEMORY[0x277D7DC28]);
  v63 = EnvironmentObject.init()();
  v55 = v16;
  if (one-time initialization token for WorkoutUIBundle != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v17 = WorkoutUIBundle.super.isa;
  v99._object = 0xE000000000000000;
  v18.value._countAndFlagsBits = 0x617A696C61636F4CLL;
  v18.value._object = 0xEB00000000656C62;
  v19._object = 0x800000020CB93C90;
  v19._countAndFlagsBits = 0xD00000000000001ALL;
  v20._countAndFlagsBits = 0;
  v20._object = 0xE000000000000000;
  v99._countAndFlagsBits = 0;
  v21 = NSLocalizedString(_:tableName:bundle:value:comment:)(v19, v18, v17, v20, v99);
  countAndFlagsBits = v21._countAndFlagsBits;
  object = v21._object;

  LOBYTE(v65) = 0;
  State.init(wrappedValue:)();
  v22 = v78;
  v51 = v78;
  v61 = v79;
  specialized MirroredStartProvider.supportsMirroredStart.getter();
  v24 = 15;
  if (v23)
  {
    v24 = 19;
  }

  *&v65 = v24;
  type metadata accessor for NLWorkoutStartSource(0);
  State.init(wrappedValue:)();
  v25 = v78;
  v49 = v79;
  v50 = v78;
  v75 = 0;
  v53 = v8;
  v26 = v60;
  outlined init with copy of AnyLocation<Bool>?(v8, v60, &_s7SwiftUI15ModifiedContentVyAA7SectionVyACyACyAA6VStackVyAA9TupleViewVyAA4TextV_AKtGGAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGAA14_PaddingLayoutVGAA6ZStackVyAIyACy07WorkoutB009RaceRouteH0VAA06_FrameP0VG_ACyACyAZ0s17ElevationBarChartH0VA2_GAVGtGGAA05EmptyH0VGAZ14ClearListStyle33_A607961C6E65DD4DD1C2818C5FE69B58LLVGMd);
  v27 = v26;
  v28 = v59;
  outlined init with copy of AnyLocation<Bool>?(v27, v59, &_s7SwiftUI15ModifiedContentVyAA7SectionVyACyACyAA6VStackVyAA9TupleViewVyAA4TextV_AKtGGAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGAA14_PaddingLayoutVGAA6ZStackVyAIyACy07WorkoutB009RaceRouteH0VAA06_FrameP0VG_ACyACyAZ0s17ElevationBarChartH0VA2_GAVGtGGAA05EmptyH0VGAZ14ClearListStyle33_A607961C6E65DD4DD1C2818C5FE69B58LLVGMd);
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyAA7SectionVyACyACyAA6VStackVyAA9TupleViewVyAA4TextV_AKtGGAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGAA14_PaddingLayoutVGAA6ZStackVyAIyACy07WorkoutB009RaceRouteH0VAA06_FrameP0VG_ACyACyAZ0s17ElevationBarChartH0VA2_GAVGtGGAA05EmptyH0VGAZ14ClearListStyle33_A607961C6E65DD4DD1C2818C5FE69B58LLVG_AZ0s12FilterPickerH0VAZ05StartR6ButtonVtMd);
  v30 = &v28[*(v29 + 48)];
  *v30 = v11;
  v30[1] = v13;
  v31 = v13;
  v32 = v57;
  v33 = v58;
  v30[2] = v58;
  v34 = &v28[*(v29 + 64)];
  v35 = v55;
  v36 = v56;
  *&v65 = v32;
  *(&v65 + 1) = v56;
  *&v66 = v63;
  *(&v66 + 1) = v55;
  LOBYTE(v67) = 0;
  *(&v67 + 1) = *v77;
  DWORD1(v67) = *&v77[3];
  *(&v67 + 1) = countAndFlagsBits;
  *&v68 = v21._object;
  v37 = v54;
  *(&v68 + 1) = v54;
  LOBYTE(v69) = v22;
  *(&v69 + 1) = *v76;
  DWORD1(v69) = *&v76[3];
  *(&v69 + 1) = v61;
  *&v70 = v25;
  v38 = v49;
  *(&v70 + 1) = v49;
  *&v71 = implicit closure #2 in implicit closure #1 in variable initialization expression of StartWorkoutButton._devicesProvider;
  *(&v71 + 1) = 0;
  LOBYTE(v72) = 0;
  DWORD1(v72) = *&v74[3];
  *(&v72 + 1) = *v74;
  *(&v72 + 1) = 0;
  v73 = 0;
  v39 = v65;
  v40 = v66;
  v41 = v68;
  *(v34 + 2) = v67;
  *(v34 + 3) = v41;
  *v34 = v39;
  *(v34 + 1) = v40;
  v42 = v69;
  v43 = v70;
  v44 = v71;
  v45 = v72;
  *(v34 + 16) = 0;
  *(v34 + 6) = v44;
  *(v34 + 7) = v45;
  *(v34 + 4) = v42;
  *(v34 + 5) = v43;
  v59 = v31;
  v46 = v33;
  outlined init with copy of StartWorkoutButton(&v65, &v78);
  outlined destroy of State<Bool>(v53, &_s7SwiftUI15ModifiedContentVyAA7SectionVyACyACyAA6VStackVyAA9TupleViewVyAA4TextV_AKtGGAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGAA14_PaddingLayoutVGAA6ZStackVyAIyACy07WorkoutB009RaceRouteH0VAA06_FrameP0VG_ACyACyAZ0s17ElevationBarChartH0VA2_GAVGtGGAA05EmptyH0VGAZ14ClearListStyle33_A607961C6E65DD4DD1C2818C5FE69B58LLVGMd);
  v78 = v32;
  v79 = v36;
  v80 = v63;
  v81 = v35;
  v82 = 0;
  *v83 = *v77;
  *&v83[3] = *&v77[3];
  v84 = countAndFlagsBits;
  v85 = object;
  v86 = v37;
  v87 = v51;
  *v88 = *v76;
  *&v88[3] = *&v76[3];
  v89 = v61;
  v90 = v50;
  v91 = v38;
  v92 = implicit closure #2 in implicit closure #1 in variable initialization expression of StartWorkoutButton._devicesProvider;
  v93 = 0;
  v94 = 0;
  *v95 = *v74;
  *&v95[3] = *&v74[3];
  v96 = 0;
  v97 = 0;
  outlined destroy of StartWorkoutButton(&v78);

  return outlined destroy of State<Bool>(v60, &_s7SwiftUI15ModifiedContentVyAA7SectionVyACyACyAA6VStackVyAA9TupleViewVyAA4TextV_AKtGGAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGAA14_PaddingLayoutVGAA6ZStackVyAIyACy07WorkoutB009RaceRouteH0VAA06_FrameP0VG_ACyACyAZ0s17ElevationBarChartH0VA2_GAVGtGGAA05EmptyH0VGAZ14ClearListStyle33_A607961C6E65DD4DD1C2818C5FE69B58LLVGMd);
}

double closure #1 in closure #4 in RaceWorkoutConfigurationView.body.getter@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = static Alignment.bottom.getter();
  v6 = v5;
  closure #1 in closure #1 in closure #4 in RaceWorkoutConfigurationView.body.getter(a1, &v16);
  v44 = v28;
  v45 = v29;
  v46 = v30;
  v40 = v24;
  v41 = v25;
  v42 = v26;
  v43 = v27;
  v36 = v20;
  v37 = v21;
  v38 = v22;
  v39 = v23;
  v32 = v16;
  v33 = v17;
  v34 = v18;
  v35 = v19;
  v48[12] = v28;
  v48[13] = v29;
  v48[14] = v30;
  v48[8] = v24;
  v48[9] = v25;
  v48[10] = v26;
  v48[11] = v27;
  v48[4] = v20;
  v48[5] = v21;
  v48[6] = v22;
  v48[7] = v23;
  v48[0] = v16;
  v48[1] = v17;
  v47 = v31;
  v49 = v31;
  v48[2] = v18;
  v48[3] = v19;
  outlined init with copy of AnyLocation<Bool>?(&v32, &v15, &_s7SwiftUI9TupleViewVyAA15ModifiedContentVy07WorkoutB009RaceRouteD0VAA12_FrameLayoutVG_AEyAEyAF0h17ElevationBarChartD0VAJGAA08_PaddingK0VGtGMd);
  outlined destroy of State<Bool>(v48, &_s7SwiftUI9TupleViewVyAA15ModifiedContentVy07WorkoutB009RaceRouteD0VAA12_FrameLayoutVG_AEyAEyAF0h17ElevationBarChartD0VAJGAA08_PaddingK0VGtGMd);
  *a2 = v4;
  *(a2 + 8) = v6;
  v7 = v45;
  *(a2 + 208) = v44;
  *(a2 + 224) = v7;
  *(a2 + 240) = v46;
  *(a2 + 256) = v47;
  v8 = v41;
  *(a2 + 144) = v40;
  *(a2 + 160) = v8;
  v9 = v43;
  *(a2 + 176) = v42;
  *(a2 + 192) = v9;
  v10 = v37;
  *(a2 + 80) = v36;
  *(a2 + 96) = v10;
  v11 = v39;
  *(a2 + 112) = v38;
  *(a2 + 128) = v11;
  v12 = v33;
  *(a2 + 16) = v32;
  *(a2 + 32) = v12;
  result = *&v34;
  v14 = v35;
  *(a2 + 48) = v34;
  *(a2 + 64) = v14;
  return result;
}

uint64_t closure #1 in closure #1 in closure #4 in RaceWorkoutConfigurationView.body.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v80 = *(a1 + 32);
  v4 = *(&v80 + 1);
  v5 = *(a1 + 96);
  outlined init with copy of AnyLocation<Bool>?(&v80, v57, &_s7SwiftUI14ObservedObjectVy11WorkoutCore04RaceE13ConfigurationCGMd);
  v37 = v5;
  v6 = RaceWorkoutConfiguration.configurationViewTitle(_:)();
  v8 = v7;
  v9 = *(a1 + 104);
  type metadata accessor for RaceRouteLocationsModel();
  swift_allocObject();
  v10 = v9;
  v11 = specialized RaceRouteLocationsModel.init(healthStore:workoutConfiguration:)(v10, v4);

  specialized RaceRouteView.init(navigationTitle:viewModel:)(v6, v8, v11, v78);
  if (one-time initialization token for routeViewHeight != -1)
  {
    swift_once();
  }

  static Alignment.center.getter();
  _FrameLayout.init(width:height:alignment:)();
  v72 = v78[2];
  v73 = v78[3];
  *&v74 = v79;
  v70 = v78[0];
  v71 = v78[1];

  v12 = dispatch thunk of WorkoutConfiguration.activityType.getter();
  type metadata accessor for RaceElevationViewModel();
  lazy protocol witness table accessor for type RaceWorkoutConfiguration and conformance WorkoutConfiguration(&lazy protocol witness table cache variable for type RaceElevationViewModel and conformance RaceElevationViewModel, type metadata accessor for RaceElevationViewModel);
  v13 = ObservedObject.init(wrappedValue:)();
  v15 = v14;
  if (one-time initialization token for elevationChartHeight != -1)
  {
    swift_once();
  }

  static Alignment.center.getter();
  _FrameLayout.init(width:height:alignment:)();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy7SwiftUI4EdgeO3SetVGMd);
  v16 = swift_allocObject();
  *(v16 + 16) = xmmword_20CB5EA80;
  v17 = static Edge.Set.leading.getter();
  *(v16 + 32) = v17;
  v18 = static Edge.Set.trailing.getter();
  *(v16 + 33) = v18;
  v19 = static Edge.Set.bottom.getter();
  *(v16 + 34) = v19;
  v20 = Edge.Set.init(rawValue:)();
  Edge.Set.init(rawValue:)();
  if (Edge.Set.init(rawValue:)() != v17)
  {
    v20 = Edge.Set.init(rawValue:)();
  }

  Edge.Set.init(rawValue:)();
  if (Edge.Set.init(rawValue:)() != v18)
  {
    v20 = Edge.Set.init(rawValue:)();
  }

  Edge.Set.init(rawValue:)();
  if (Edge.Set.init(rawValue:)() != v19)
  {
    v20 = Edge.Set.init(rawValue:)();
  }

  if (one-time initialization token for elevationChartPadding != -1)
  {
    swift_once();
  }

  EdgeInsets.init(_all:)();
  v48[4] = v74;
  v48[5] = v75;
  v48[6] = v76;
  v48[0] = v70;
  v48[1] = v71;
  v48[2] = v72;
  v48[3] = v73;
  v42 = v72;
  v43 = v73;
  v49 = v77;
  v68 = 0;
  v40 = v70;
  v41 = v71;
  *v47 = v77;
  v45 = v75;
  v46 = v76;
  v44 = v74;
  *&v50 = v13;
  *(&v50 + 1) = v15;
  *&v51 = v37;
  *(&v51 + 1) = v12;
  v21 = v81;
  v22 = v82;
  v52 = v81;
  v53 = v82;
  LOBYTE(v55) = v20;
  *(&v55 + 1) = *v69;
  DWORD1(v55) = *&v69[3];
  *(&v55 + 1) = v23;
  *v56 = v24;
  *&v56[8] = v25;
  *&v56[16] = v26;
  v56[24] = 0;
  *&v47[56] = v82;
  *&v47[40] = v81;
  *&v47[24] = v51;
  *&v47[8] = v50;
  *&v47[113] = *&v56[9];
  *&v47[104] = *v56;
  v27 = v83;
  v54 = v83;
  *&v47[88] = v55;
  *&v47[72] = v83;
  v28 = v73;
  *(a2 + 32) = v72;
  *(a2 + 48) = v28;
  v29 = v41;
  *a2 = v40;
  *(a2 + 16) = v29;
  v30 = *v47;
  *(a2 + 96) = v46;
  *(a2 + 112) = v30;
  v31 = v45;
  *(a2 + 64) = v44;
  *(a2 + 80) = v31;
  v32 = *&v47[64];
  *(a2 + 160) = *&v47[48];
  *(a2 + 176) = v32;
  v33 = *&v47[32];
  *(a2 + 128) = *&v47[16];
  *(a2 + 144) = v33;
  v34 = *&v47[112];
  *(a2 + 208) = *&v47[96];
  *(a2 + 224) = v34;
  v35 = *&v47[80];
  *(a2 + 240) = v47[128];
  *(a2 + 192) = v35;
  v57[0] = v13;
  v57[1] = v15;
  v57[2] = v37;
  v57[3] = v12;
  v58 = v21;
  v59 = v22;
  v60 = v27;
  v61 = v20;
  *v62 = *v69;
  *&v62[3] = *&v69[3];
  v63 = v23;
  v64 = v24;
  v65 = v25;
  v66 = v26;
  v67 = 0;
  outlined init with copy of AnyLocation<Bool>?(v48, v38, &_s7SwiftUI15ModifiedContentVy07WorkoutB013RaceRouteViewVAA12_FrameLayoutVGMd);
  outlined init with copy of AnyLocation<Bool>?(&v50, v38, &_s7SwiftUI15ModifiedContentVyACy07WorkoutB025RaceElevationBarChartViewVAA12_FrameLayoutVGAA08_PaddingL0VGMd);
  outlined destroy of State<Bool>(v57, &_s7SwiftUI15ModifiedContentVyACy07WorkoutB025RaceElevationBarChartViewVAA12_FrameLayoutVGAA08_PaddingL0VGMd);
  v38[4] = v74;
  v38[5] = v75;
  v38[6] = v76;
  v39 = v77;
  v38[0] = v70;
  v38[1] = v71;
  v38[2] = v72;
  v38[3] = v73;
  return outlined destroy of State<Bool>(v38, &_s7SwiftUI15ModifiedContentVy07WorkoutB013RaceRouteViewVAA12_FrameLayoutVGMd);
}

double closure #2 in closure #4 in RaceWorkoutConfigurationView.body.getter@<D0>(uint64_t a1@<X8>)
{
  v2 = type metadata accessor for Font.Leading();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v15[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v6 = static HorizontalAlignment.leading.getter();
  v16 = 0;
  closure #1 in closure #2 in closure #4 in RaceWorkoutConfigurationView.body.getter(v17);
  *&v15[7] = v17[0];
  *&v15[23] = v17[1];
  *&v15[39] = v17[2];
  *&v15[55] = v17[3];
  v7 = v16;
  static Font.largeTitle.getter();
  (*(v3 + 104))(v5, *MEMORY[0x277CE0A10], v2);
  v8 = Font.leading(_:)();

  (*(v3 + 8))(v5, v2);
  KeyPath = swift_getKeyPath();
  v10 = static Edge.Set.bottom.getter();
  v11 = *v15;
  *(a1 + 33) = *&v15[16];
  v12 = *&v15[48];
  *(a1 + 49) = *&v15[32];
  *(a1 + 65) = v12;
  *a1 = v6;
  *(a1 + 8) = 0;
  *(a1 + 16) = v7;
  v13 = *&v15[63];
  *(a1 + 17) = v11;
  *(a1 + 80) = v13;
  *(a1 + 88) = KeyPath;
  *(a1 + 96) = v8;
  *(a1 + 104) = v10;
  result = 0.0;
  *(a1 + 112) = 0u;
  *(a1 + 128) = 0u;
  *(a1 + 144) = 1;
  return result;
}

uint64_t closure #1 in closure #2 in closure #4 in RaceWorkoutConfigurationView.body.getter@<X0>(uint64_t a1@<X8>)
{
  WorkoutConfiguration.displayName(formattingManager:)();
  lazy protocol witness table accessor for type String and conformance String();
  v1 = Text.init<A>(_:)();
  v3 = v2;
  v5 = v4;
  static Color.primary.getter();
  v6 = Text.foregroundColor(_:)();
  v8 = v7;
  v10 = v9;

  outlined consume of Text.Storage(v1, v3, v5 & 1);

  static Font.Weight.bold.getter();
  v11 = Text.fontWeight(_:)();
  v33 = v12;
  v34 = v11;
  v14 = v13;
  v32 = v15;
  outlined consume of Text.Storage(v6, v8, v10 & 1);

  RaceWorkoutConfiguration.configurationViewTitle(_:)();
  v16 = Text.init<A>(_:)();
  v18 = v17;
  v20 = v19;
  WorkoutConfiguration.displayColor.getter();
  Color.init(uiColor:)();
  v21 = Text.foregroundColor(_:)();
  v23 = v22;
  LOBYTE(v1) = v24;

  outlined consume of Text.Storage(v16, v18, v20 & 1);

  static Font.Weight.regular.getter();
  v25 = Text.fontWeight(_:)();
  v27 = v26;
  LOBYTE(v18) = v28;
  v30 = v29;
  outlined consume of Text.Storage(v21, v23, v1 & 1);

  *a1 = v34;
  *(a1 + 8) = v14;
  *(a1 + 16) = v32 & 1;
  *(a1 + 24) = v33;
  *(a1 + 32) = v25;
  *(a1 + 40) = v27;
  *(a1 + 48) = v18 & 1;
  *(a1 + 56) = v30;
  outlined copy of Text.Storage(v34, v14, v32 & 1);

  outlined copy of Text.Storage(v25, v27, v18 & 1);

  outlined consume of Text.Storage(v25, v27, v18 & 1);

  outlined consume of Text.Storage(v34, v14, v32 & 1);
}

uint64_t closure #2 in RaceWorkoutConfigurationView.body.getter(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 48);
  v5 = v4;
  v6 = *(&v4 + 1);
  outlined init with copy of AnyLocation<Bool>?(&v6, v3, &_s7SwiftUI11AnyLocationCySbGSgMd);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI5StateVySbGMd);
  State.wrappedValue.getter();
  if ((v3[0] & 1) == 0)
  {
    v4 = v5;
    v3[0] = 1;
    State.wrappedValue.setter();
  }

  return outlined destroy of State<Bool>(&v5, &_s7SwiftUI5StateVySbGMd);
}

void one-time initialization function for cornerRadius()
{
  v0 = objc_opt_self();
  v1 = [v0 currentDevice];
  v2 = specialized UIDevice.screenType.getter();

  v3 = dbl_20CB5EE08[v2];
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

  static RaceConfigConstants.cornerRadius = *&v3;
}

{
  static ZoneView.cornerRadius = specialized static LayoutUtilities.layoutMetric(regular42:)(10.0);
}

{
  v0 = objc_opt_self();
  v1 = [v0 currentDevice];
  v2 = specialized UIDevice.screenType.getter();

  v3 = dbl_20CB8E6C0[v2];
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

  static RaceDetailConstants.cornerRadius = *&v3;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<SubscriptionView<ObservableObjectPublisher, <<opaque return type of View.toolbarForegroundStyle<A>(_:for:)>>.0>, WorkoutConfigurationToolbar>, _AppearanceActionModifier> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<SubscriptionView<ObservableObjectPublisher, <<opaque return type of View.toolbarForegroundStyle<A>(_:for:)>>.0>, WorkoutConfigurationToolbar>, _AppearanceActionModifier> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<SubscriptionView<ObservableObjectPublisher, <<opaque return type of View.toolbarForegroundStyle<A>(_:for:)>>.0>, WorkoutConfigurationToolbar>, _AppearanceActionModifier> and conformance <> ModifiedContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyACyAA16SubscriptionViewVy7Combine25ObservableObjectPublisherCAA0F0PAAE22toolbarForegroundStyle_3forQrqd___AA16ToolbarPlacementVdtAA05ShapeM0Rd__lFQOyAjAE18navigationBarTitleyQrqd__SyRd__lFQOyACyACyAA4ListVys5NeverOAA05TupleF0VyAA7SectionVyAA05EmptyF0VACyAjAE06buttonM0yQrqd__AA015PrimitiveButtonM0Rd__lFQOyAA14NavigationLinkVyAA6ZStackVyAVyACyACy07WorkoutB0014RaceCroppedMapF0VAA12_FrameLayoutVGAA11_ClipEffectVyAA16RoundedRectangleVGG_ACyACyA5_013RaceElevations5ChartF0VA9_GAA14_PaddingLayoutVGtGGA5_09RaceRouteF0VG_AA011PlainButtonM0VQo_AA21_TraitWritingModifierVyAA0U17RowInsetsTraitKeyVGGAZG_AXyACyACyAA4TextVA9_GA5_09UnstackedX15SpacingModifier33_B33B451D6D59C74C7A089BCD2EE64343LLVGACyACyA2_yACyACyAjAEA_yQrqd__AAA0_Rd__lFQOyAA6ButtonVyA39_G_AA023BorderedProminentButtonM0VQo_AA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGA52_yAA4FontVSgGGACyACyA5_020RaceWorkoutSelectionF0VA52_y11WorkoutCore30WorkoutConfigurationDataSourceCSgGGA52_yA5_28ConfigurationNavigationModelCSgGGGA32_yAA0U21RowBackgroundTraitKeyVGGA32_yAA0U16ItemTintTraitKeyVGGAZGtGGA5_07StackedU16SectionsModifierA42_LLVGA52_yAA03AnyqM0VSgGG_SSQo__A54_Qo_GA5_020WorkoutConfigurationO0VGAA25_AppearanceActionModifierVGMd);
    lazy protocol witness table accessor for type ModifiedContent<SubscriptionView<ObservableObjectPublisher, <<opaque return type of View.toolbarForegroundStyle<A>(_:for:)>>.0>, WorkoutConfigurationToolbar> and conformance <> ModifiedContent<A, B>();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<SubscriptionView<ObservableObjectPublisher, <<opaque return type of View.toolbarForegroundStyle<A>(_:for:)>>.0>, WorkoutConfigurationToolbar>, _AppearanceActionModifier> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<SubscriptionView<ObservableObjectPublisher, <<opaque return type of View.toolbarForegroundStyle<A>(_:for:)>>.0>, WorkoutConfigurationToolbar> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<SubscriptionView<ObservableObjectPublisher, <<opaque return type of View.toolbarForegroundStyle<A>(_:for:)>>.0>, WorkoutConfigurationToolbar> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<SubscriptionView<ObservableObjectPublisher, <<opaque return type of View.toolbarForegroundStyle<A>(_:for:)>>.0>, WorkoutConfigurationToolbar> and conformance <> ModifiedContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyAA16SubscriptionViewVy7Combine25ObservableObjectPublisherCAA0F0PAAE22toolbarForegroundStyle_3forQrqd___AA16ToolbarPlacementVdtAA05ShapeM0Rd__lFQOyAjAE18navigationBarTitleyQrqd__SyRd__lFQOyACyACyAA4ListVys5NeverOAA05TupleF0VyAA7SectionVyAA05EmptyF0VACyAjAE06buttonM0yQrqd__AA015PrimitiveButtonM0Rd__lFQOyAA14NavigationLinkVyAA6ZStackVyAVyACyACy07WorkoutB0014RaceCroppedMapF0VAA12_FrameLayoutVGAA11_ClipEffectVyAA16RoundedRectangleVGG_ACyACyA5_013RaceElevations5ChartF0VA9_GAA14_PaddingLayoutVGtGGA5_09RaceRouteF0VG_AA011PlainButtonM0VQo_AA21_TraitWritingModifierVyAA0U17RowInsetsTraitKeyVGGAZG_AXyACyACyAA4TextVA9_GA5_09UnstackedX15SpacingModifier33_B33B451D6D59C74C7A089BCD2EE64343LLVGACyACyA2_yACyACyAjAEA_yQrqd__AAA0_Rd__lFQOyAA6ButtonVyA39_G_AA023BorderedProminentButtonM0VQo_AA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGA52_yAA4FontVSgGGACyACyA5_020RaceWorkoutSelectionF0VA52_y11WorkoutCore30WorkoutConfigurationDataSourceCSgGGA52_yA5_28ConfigurationNavigationModelCSgGGGA32_yAA0U21RowBackgroundTraitKeyVGGA32_yAA0U16ItemTintTraitKeyVGGAZGtGGA5_07StackedU16SectionsModifierA42_LLVGA52_yAA03AnyqM0VSgGG_SSQo__A54_Qo_GA5_020WorkoutConfigurationO0VGMd);
    lazy protocol witness table accessor for type TupleView<(ModifiedContent<Section<ModifiedContent<ModifiedContent<VStack<TupleView<(Text, Text)>>, _EnvironmentKeyWritingModifier<Font?>>, _PaddingLayout>, ZStack<TupleView<(ModifiedContent<RaceRouteView, _FrameLayout>, ModifiedContent<ModifiedContent<RaceElevationBarChartView, _FrameLayout>, _PaddingLayout>)>>, EmptyView>, ClearListStyle>, RaceFilterPickerView, StartWorkoutButton)> and conformance TupleView<A>(&lazy protocol witness table cache variable for type SubscriptionView<ObservableObjectPublisher, <<opaque return type of View.toolbarForegroundStyle<A>(_:for:)>>.0> and conformance SubscriptionView<A, B>, &_s7SwiftUI16SubscriptionViewVy7Combine25ObservableObjectPublisherCAA0D0PAAE22toolbarForegroundStyle_3forQrqd___AA16ToolbarPlacementVdtAA05ShapeK0Rd__lFQOyAhAE18navigationBarTitleyQrqd__SyRd__lFQOyAA15ModifiedContentVyAPyAA4ListVys5NeverOAA05TupleD0VyAA7SectionVyAA05EmptyD0VAPyAhAE06buttonK0yQrqd__AA015PrimitiveButtonK0Rd__lFQOyAA14NavigationLinkVyAA6ZStackVyAVyAPyAPy07WorkoutB0014RaceCroppedMapD0VAA12_FrameLayoutVGAA11_ClipEffectVyAA16RoundedRectangleVGG_APyAPyA5_013RaceElevationq5ChartD0VA9_GAA14_PaddingLayoutVGtGGA5_09RaceRouteD0VG_AA011PlainButtonK0VQo_AA21_TraitWritingModifierVyAA0U17RowInsetsTraitKeyVGGAZG_AXyAPyAPyAA4TextVA9_GA5_09UnstackedX15SpacingModifier33_B33B451D6D59C74C7A089BCD2EE64343LLVGAPyAPyA2_yAPyAPyAhAEA_yQrqd__AAA0_Rd__lFQOyAA6ButtonVyA39_G_AA023BorderedProminentButtonK0VQo_AA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGA52_yAA4FontVSgGGAPyAPyA5_020RaceWorkoutSelectionD0VA52_y11WorkoutCore30WorkoutConfigurationDataSourceCSgGGA52_yA5_28ConfigurationNavigationModelCSgGGGA32_yAA0U21RowBackgroundTraitKeyVGGA32_yAA0U16ItemTintTraitKeyVGGAZGtGGA5_07StackedU16SectionsModifierA42_LLVGA52_yAA03AnyoK0VSgGG_SSQo__A54_Qo_GMd);
    lazy protocol witness table accessor for type RaceWorkoutConfiguration and conformance WorkoutConfiguration(&lazy protocol witness table cache variable for type WorkoutConfigurationToolbar and conformance WorkoutConfigurationToolbar, type metadata accessor for WorkoutConfigurationToolbar);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<SubscriptionView<ObservableObjectPublisher, <<opaque return type of View.toolbarForegroundStyle<A>(_:for:)>>.0>, WorkoutConfigurationToolbar> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type ModifiedContent<SubscriptionView<ObservableObjectPublisher, <<opaque return type of View.toolbarForegroundStyle<A>(_:for:)>>.0>, WorkoutConfigurationToolbar> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<SubscriptionView<ObservableObjectPublisher, <<opaque return type of View.toolbarForegroundStyle<A>(_:for:)>>.0>, WorkoutConfigurationToolbar> and conformance <> ModifiedContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyAA16SubscriptionViewVy7Combine25ObservableObjectPublisherCAA0F0PAAE22toolbarForegroundStyle_3forQrqd___AA16ToolbarPlacementVdtAA05ShapeM0Rd__lFQOyAjAE18navigationBarTitleyQrqd__SyRd__lFQOyAA06ScrollF0VyAA05TupleF0VyAjAE12scenePaddingyQrAA4EdgeO3SetVFQOyAA6VStackVyATyAA012_ConditionalD0VyACyACyACyACyACyACyAA4TextVAA30_EnvironmentKeyWritingModifierVyAA13TextAlignmentOGGA5_yA3_4CaseOSgGGAA16_FlexFrameLayoutVGA5_yAA4FontVSgGGA5_ySiSgGG07WorkoutB015BodyHyphenationVGSgA1_yA29_A30_GGSg_A30_tGG_Qo_Sg_ACyA_yATyA1_yACyA26_15GoalValueButtonVA5_y11WorkoutCore30WorkoutConfigurationDataSourceCSgGGACyACyA26_025EmbeddedGoalConfigurationF0VAA01_X6LayoutVGAA19_BackgroundModifierVyACyAA012StrokeBorderqF0VyAA16RoundedRectangleVAA012HierarchicalqM0VAA05EmptyF0VGA16_GGGGSg_AjAEAUyQrAYFQOyA_yATyA26_18StartWorkoutButtonV_A26_14SaveCopyButtonVSgA26_31ShareWorkoutConfigurationButtonVSgA26_12DeleteButtonVSgACyACyACyACyACyACyACyA3_A5_yAA5ColorVSgGGA8_GA13_GA16_GA21_GA24_GA28_GSgtGG_Qo_tGGA5_yAA03AnyqM0VSgGGtGG_SSQo__A79_Qo_GA26_020WorkoutConfigurationO0VGMd);
    lazy protocol witness table accessor for type TupleView<((<<opaque return type of View.scenePadding(_:)>>.0)?, ModifiedContent<VStack<TupleView<(_ConditionalContent<ModifiedContent<GoalValueButton, _EnvironmentKeyWritingModifier<WorkoutConfigurationDataSource?>>, ModifiedContent<ModifiedContent<EmbeddedGoalConfigurationView, _PaddingLayout>, _BackgroundModifier<ModifiedContent<StrokeBorderShapeView<RoundedRectangle, HierarchicalShapeStyle, EmptyView>, _FlexFrameLayout>>>>?, <<opaque return type of View.scenePadding(_:)>>.0)>>, _EnvironmentKeyWritingModifier<AnyShapeStyle?>>)> and conformance TupleView<A>(&lazy protocol witness table cache variable for type SubscriptionView<ObservableObjectPublisher, <<opaque return type of View.toolbarForegroundStyle<A>(_:for:)>>.0> and conformance SubscriptionView<A, B>, &_s7SwiftUI16SubscriptionViewVy7Combine25ObservableObjectPublisherCAA0D0PAAE22toolbarForegroundStyle_3forQrqd___AA16ToolbarPlacementVdtAA05ShapeK0Rd__lFQOyAhAE18navigationBarTitleyQrqd__SyRd__lFQOyAA06ScrollD0VyAA05TupleD0VyAhAE12scenePaddingyQrAA4EdgeO3SetVFQOyAA6VStackVyARyAA19_ConditionalContentVyAA15ModifiedContentVyA1_yA1_yA1_yA1_yA1_yAA4TextVAA30_EnvironmentKeyWritingModifierVyAA13TextAlignmentOGGA5_yA3_4CaseOSgGGAA16_FlexFrameLayoutVGA5_yAA4FontVSgGGA5_ySiSgGG07WorkoutB015BodyHyphenationVGSgA_yA29_A30_GGSg_A30_tGG_Qo_Sg_A1_yAYyARyA_yA1_yA26_15GoalValueButtonVA5_y11WorkoutCore30WorkoutConfigurationDataSourceCSgGGA1_yA1_yA26_025EmbeddedGoalConfigurationD0VAA01_V6LayoutVGAA19_BackgroundModifierVyA1_yAA012StrokeBorderoD0VyAA16RoundedRectangleVAA012HierarchicaloK0VAA05EmptyD0VGA16_GGGGSg_AhAEASyQrAWFQOyAYyARyA26_18StartWorkoutButtonV_A26_14SaveCopyButtonVSgA26_31ShareWorkoutConfigurationButtonVSgA26_12DeleteButtonVSgA1_yA1_yA1_yA1_yA1_yA1_yA1_yA3_A5_yAA5ColorVSgGGA8_GA13_GA16_GA21_GA24_GA28_GSgtGG_Qo_tGGA5_yAA03AnyoK0VSgGGtGG_SSQo__A79_Qo_GMd);
    lazy protocol witness table accessor for type GoalWorkoutConfiguration and conformance WorkoutConfiguration(&lazy protocol witness table cache variable for type WorkoutConfigurationToolbar and conformance WorkoutConfigurationToolbar, type metadata accessor for WorkoutConfigurationToolbar);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<SubscriptionView<ObservableObjectPublisher, <<opaque return type of View.toolbarForegroundStyle<A>(_:for:)>>.0>, WorkoutConfigurationToolbar> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type ModifiedContent<SubscriptionView<ObservableObjectPublisher, <<opaque return type of View.toolbarForegroundStyle<A>(_:for:)>>.0>, WorkoutConfigurationToolbar> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<SubscriptionView<ObservableObjectPublisher, <<opaque return type of View.toolbarForegroundStyle<A>(_:for:)>>.0>, WorkoutConfigurationToolbar> and conformance <> ModifiedContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyAA16SubscriptionViewVy7Combine25ObservableObjectPublisherCAA0F0PAAE22toolbarForegroundStyle_3forQrqd___AA16ToolbarPlacementVdtAA05ShapeM0Rd__lFQOyAjAE18navigationBarTitleyQrqd__SyRd__lFQOyACyACyAA4ListVys5NeverOAA05TupleF0VyAA7SectionVyAA05EmptyF0VACyACyAA6VStackVyAVyAA012_ConditionalD0VyACyACyACyACyACyACyAA4TextVAA30_EnvironmentKeyWritingModifierVyAA13TextAlignmentOGGA6_yA4_4CaseOSgGGAA16_FlexFrameLayoutVGA6_yAA4FontVSgGGA6_ySiSgGG07WorkoutB015BodyHyphenationVGSgA2_yA30_A31_GGSg_A31_tGGAA21_TraitWritingModifierVyAA0U21RowBackgroundTraitKeyVGGA38_yAA0U17RowInsetsTraitKeyVGGAZGSg_AXyAZA2_yACyACyA27_17PacerValuesButtonVA6_y11WorkoutCore30WorkoutConfigurationDataSourceCSgGGA6_yA27_28ConfigurationNavigationModelCSgGGACyA27_026EmbeddedPacerConfigurationF0VA27_0u13RowBackgroundF8ModifierVGGAZGAXyACyACyA4_AA12_FrameLayoutVGA27_09UnstackedX15SpacingModifier33_B33B451D6D59C74C7A089BCD2EE64343LLVGAVyA27_18StartWorkoutButtonV_A27_14SaveCopyButtonVSgA27_31ShareWorkoutConfigurationButtonVSgA27_12DeleteButtonVSgtGA4_SgGtGGA27_07StackedU16SectionsModifierA73_LLVGA6_yAA03AnyqM0VSgGG_SSQo__AA5ColorVQo_GA27_020WorkoutConfigurationO0VGMd);
    lazy protocol witness table accessor for type TupleView<(Section<EmptyView, ModifiedContent<ModifiedContent<VStack<TupleView<(_ConditionalContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Text, _EnvironmentKeyWritingModifier<TextAlignment>>, _EnvironmentKeyWritingModifier<Text.Case?>>, _FlexFrameLayout>, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyWritingModifier<Int?>>, BodyHyphenation>?, _ConditionalContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Text, _EnvironmentKeyWritingModifier<TextAlignment>>, _EnvironmentKeyWritingModifier<Text.Case?>>, _FlexFrameLayout>, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyWritingModifier<Int?>>, BodyHyphenation>, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Text, _EnvironmentKeyWritingModifier<TextAlignment>>, _EnvironmentKeyWritingModifier<Text.Case?>>, _FlexFrameLayout>, _EnvironmentKeyWriti(&lazy protocol witness table cache variable for type SubscriptionView<ObservableObjectPublisher, <<opaque return type of View.toolbarForegroundStyle<A>(_:for:)>>.0> and conformance SubscriptionView<A, B>, &_s7SwiftUI16SubscriptionViewVy7Combine25ObservableObjectPublisherCAA0D0PAAE22toolbarForegroundStyle_3forQrqd___AA16ToolbarPlacementVdtAA05ShapeK0Rd__lFQOyAhAE18navigationBarTitleyQrqd__SyRd__lFQOyAA15ModifiedContentVyAPyAA4ListVys5NeverOAA05TupleD0VyAA7SectionVyAA05EmptyD0VAPyAPyAA6VStackVyAVyAA012_ConditionalT0VyAPyAPyAPyAPyAPyAPyAA4TextVAA30_EnvironmentKeyWritingModifierVyAA13TextAlignmentOGGA6_yA4_4CaseOSgGGAA16_FlexFrameLayoutVGA6_yAA4FontVSgGGA6_ySiSgGG07WorkoutB015BodyHyphenationVGSgA2_yA30_A31_GGSg_A31_tGGAA21_TraitWritingModifierVyAA0U21RowBackgroundTraitKeyVGGA38_yAA0U17RowInsetsTraitKeyVGGAZGSg_AXyAZA2_yAPyAPyA27_17PacerValuesButtonVA6_y11WorkoutCore30WorkoutConfigurationDataSourceCSgGGA6_yA27_28ConfigurationNavigationModelCSgGGAPyA27_026EmbeddedPacerConfigurationD0VA27_0u13RowBackgroundD8ModifierVGGAZGAXyAPyAPyA4_AA12_FrameLayoutVGA27_09UnstackedX15SpacingModifier33_B33B451D6D59C74C7A089BCD2EE64343LLVGAVyA27_18StartWorkoutButtonV_A27_14SaveCopyButtonVSgA27_31ShareWorkoutConfigurationButtonVSgA27_12DeleteButtonVSgtGA4_SgGtGGA27_07StackedU16SectionsModifierA73_LLVGA6_yAA03AnyoK0VSgGG_SSQo__AA5ColorVQo_GMd);
    lazy protocol witness table accessor for type PacerWorkoutConfiguration and conformance WorkoutConfiguration(&lazy protocol witness table cache variable for type WorkoutConfigurationToolbar and conformance WorkoutConfigurationToolbar, type metadata accessor for WorkoutConfigurationToolbar);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<SubscriptionView<ObservableObjectPublisher, <<opaque return type of View.toolbarForegroundStyle<A>(_:for:)>>.0>, WorkoutConfigurationToolbar> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<SubscriptionView<ObservableObjectPublisher, <<opaque return type of View.contentMargins(_:_:for:)>>.0>, WorkoutConfigurationToolbar> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<SubscriptionView<ObservableObjectPublisher, <<opaque return type of View.contentMargins(_:_:for:)>>.0>, WorkoutConfigurationToolbar> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<SubscriptionView<ObservableObjectPublisher, <<opaque return type of View.contentMargins(_:_:for:)>>.0>, WorkoutConfigurationToolbar> and conformance <> ModifiedContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyAA16SubscriptionViewVy7Combine25ObservableObjectPublisherCAA0F0PAAE14contentMargins__3forQrAA4EdgeO3SetV_12CoreGraphics7CGFloatVSgAA0D15MarginPlacementVtFQOyAA4ListVys5NeverOAA05TupleF0VyACyAA7SectionVyACyACyAA6VStackVyA0_yAA4TextV_A6_tGGAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGAA14_PaddingLayoutVGAA6ZStackVyA0_yACy07WorkoutB009RaceRouteF0VAA12_FrameLayoutVG_ACyACyA21_021RaceElevationBarChartF0VA25_GA17_GtGGAA05EmptyF0VGA21_05ClearU5Style33_A607961C6E65DD4DD1C2818C5FE69B58LLVG_A21_016RaceFilterPickerF0VA21_18StartWorkoutButtonVtGG_Qo_GA21_27WorkoutConfigurationToolbarVGMd);
    lazy protocol witness table accessor for type TupleView<(ModifiedContent<Section<ModifiedContent<ModifiedContent<VStack<TupleView<(Text, Text)>>, _EnvironmentKeyWritingModifier<Font?>>, _PaddingLayout>, ZStack<TupleView<(ModifiedContent<RaceRouteView, _FrameLayout>, ModifiedContent<ModifiedContent<RaceElevationBarChartView, _FrameLayout>, _PaddingLayout>)>>, EmptyView>, ClearListStyle>, RaceFilterPickerView, StartWorkoutButton)> and conformance TupleView<A>(&lazy protocol witness table cache variable for type SubscriptionView<ObservableObjectPublisher, <<opaque return type of View.contentMargins(_:_:for:)>>.0> and conformance SubscriptionView<A, B>, &_s7SwiftUI16SubscriptionViewVy7Combine25ObservableObjectPublisherCAA0D0PAAE14contentMargins__3forQrAA4EdgeO3SetV_12CoreGraphics7CGFloatVSgAA22ContentMarginPlacementVtFQOyAA4ListVys5NeverOAA05TupleD0VyAA08ModifiedQ0VyAA7SectionVyA0_yA0_yAA6VStackVyAZyAA4TextV_A6_tGGAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGAA14_PaddingLayoutVGAA6ZStackVyAZyA0_y07WorkoutB009RaceRouteD0VAA12_FrameLayoutVG_A0_yA0_yA21_021RaceElevationBarChartD0VA25_GA17_GtGGAA05EmptyD0VGA21_05ClearT5Style33_A607961C6E65DD4DD1C2818C5FE69B58LLVG_A21_016RaceFilterPickerD0VA21_18StartWorkoutButtonVtGG_Qo_GMd);
    lazy protocol witness table accessor for type RaceWorkoutConfiguration and conformance WorkoutConfiguration(&lazy protocol witness table cache variable for type WorkoutConfigurationToolbar and conformance WorkoutConfigurationToolbar, type metadata accessor for WorkoutConfigurationToolbar);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<SubscriptionView<ObservableObjectPublisher, <<opaque return type of View.contentMargins(_:_:for:)>>.0>, WorkoutConfigurationToolbar> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<List<Never, TupleView<(Section<EmptyView, ModifiedContent<<<opaque return type of View.buttonStyle<A>(_:)>>.0, _TraitWritingModifier<ListRowInsetsTraitKey>>, EmptyView>, Section<ModifiedContent<ModifiedContent<Text, _FrameLayout>, UnstackedSectionSpacingModifier>, ModifiedContent<ModifiedContent<NavigationLink<ModifiedContent<ModifiedContent<<<opaque return type of View.buttonStyle<A>(_:)>>.0, _EnvironmentKeyWritingModifier<Color?>>, _EnvironmentKeyWritingModifier<Font?>>, ModifiedContent<ModifiedContent<RaceWorkoutSelectionView, _EnvironmentKeyWritingModifier<WorkoutConfigurationDataSource?>>, _EnvironmentKeyWritingModifier<ConfigurationNavigationModel?>>>, _TraitWritingModifier<ListRowBackgroundTraitKey>>, _TraitWritingModifier<ListItemTintTraitKey>>, EmptyView>)>>, StackedListSectionsModifier>, _EnvironmentKeyWritingModifier<AnyShapeStyle?>> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<List<Never, TupleView<(Section<EmptyView, ModifiedContent<<<opaque return type of View.buttonStyle<A>(_:)>>.0, _TraitWritingModifier<ListRowInsetsTraitKey>>, EmptyView>, Section<ModifiedContent<ModifiedContent<Text, _FrameLayout>, UnstackedSectionSpacingModifier>, ModifiedContent<ModifiedContent<NavigationLink<ModifiedContent<ModifiedContent<<<opaque return type of View.buttonStyle<A>(_:)>>.0, _EnvironmentKeyWritingModifier<Color?>>, _EnvironmentKeyWritingModifier<Font?>>, ModifiedContent<ModifiedContent<RaceWorkoutSelectionView, _EnvironmentKeyWritingModifier<WorkoutConfigurationDataSource?>>, _EnvironmentKeyWritingModifier<ConfigurationNavigationModel?>>>, _TraitWritingModifier<ListRowBackgroundTraitKey>>, _TraitWritingModifier<ListItemTintTraitKey>>, EmptyView>)>>, StackedListSectionsModifier>, _EnvironmentKeyWritingModifier<AnyShapeStyle?>> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<List<Never, TupleView<(Section<EmptyView, ModifiedContent<<<opaque return type of View.buttonStyle<A>(_:)>>.0, _TraitWritingModifier<ListRowInsetsTraitKey>>, EmptyView>, Section<ModifiedContent<ModifiedContent<Text, _FrameLayout>, UnstackedSectionSpacingModifier>, ModifiedContent<ModifiedContent<NavigationLink<ModifiedContent<ModifiedContent<<<opaque return type of View.buttonStyle<A>(_:)>>.0, _EnvironmentKeyWritingModifier<Color?>>, _EnvironmentKeyWritingModifier<Font?>>, ModifiedContent<ModifiedContent<RaceWorkoutSelectionView, _EnvironmentKeyWritingModifier<WorkoutConfigurationDataSource?>>, _EnvironmentKeyWritingModifier<ConfigurationNavigationModel?>>>, _TraitWritingModifier<ListRowBackgroundTraitKey>>, _TraitWritingModifier<ListItemTintTraitKey>>, EmptyView>)>>, StackedListSectionsModifier>, _EnvironmentKeyWritingModifier<AnyShapeStyle?>> and conformance <> ModifiedContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyACyAA4ListVys5NeverOAA9TupleViewVyAA7SectionVyAA05EmptyH0VACyAA0H0PAAE11buttonStyleyQrqd__AA015PrimitiveButtonL0Rd__lFQOyAA14NavigationLinkVyAA6ZStackVyAIyACyACy07WorkoutB0014RaceCroppedMapH0VAA12_FrameLayoutVGAA11_ClipEffectVyAA16RoundedRectangleVGG_ACyACyAV0s17ElevationBarChartH0VAZGAA08_PaddingW0VGtGGAV0s5RouteH0VG_AA05PlainnL0VQo_AA21_TraitWritingModifierVyAA0E17RowInsetsTraitKeyVGGAMG_AKyACyACyAA4TextVAZGAV09UnstackedI15SpacingModifier33_B33B451D6D59C74C7A089BCD2EE64343LLVGACyACyASyACyACyAoAEAPyQrqd__AaQRd__lFQOyAA0N0VyA28_G_AA017BorderedProminentnL0VQo_AA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGA41_yAA4FontVSgGGACyACyAV0sr9SelectionH0VA41_y0R4Core0R23ConfigurationDataSourceCSgGGA41_yAV013ConfigurationO5ModelCSgGGGA21_yAA0E21RowBackgroundTraitKeyVGGA21_yAA0E16ItemTintTraitKeyVGGAMGtGGAV07StackedE16SectionsModifierA31_LLVGA41_yAA08AnyShapeL0VSgGGMd);
    lazy protocol witness table accessor for type ModifiedContent<List<Never, TupleView<(Section<EmptyView, ModifiedContent<<<opaque return type of View.buttonStyle<A>(_:)>>.0, _TraitWritingModifier<ListRowInsetsTraitKey>>, EmptyView>, Section<ModifiedContent<ModifiedContent<Text, _FrameLayout>, UnstackedSectionSpacingModifier>, ModifiedContent<ModifiedContent<NavigationLink<ModifiedContent<ModifiedContent<<<opaque return type of View.buttonStyle<A>(_:)>>.0, _EnvironmentKeyWritingModifier<Color?>>, _EnvironmentKeyWritingModifier<Font?>>, ModifiedContent<ModifiedContent<RaceWorkoutSelectionView, _EnvironmentKeyWritingModifier<WorkoutConfigurationDataSource?>>, _EnvironmentKeyWritingModifier<ConfigurationNavigationModel?>>>, _TraitWritingModifier<ListRowBackgroundTraitKey>>, _TraitWritingModifier<ListItemTintTraitKey>>, EmptyView>)>>, StackedListSectionsModifier> and conformance <> ModifiedContent<A, B>();
    lazy protocol witness table accessor for type TupleView<(ModifiedContent<Section<ModifiedContent<ModifiedContent<VStack<TupleView<(Text, Text)>>, _EnvironmentKeyWritingModifier<Font?>>, _PaddingLayout>, ZStack<TupleView<(ModifiedContent<RaceRouteView, _FrameLayout>, ModifiedContent<ModifiedContent<RaceElevationBarChartView, _FrameLayout>, _PaddingLayout>)>>, EmptyView>, ClearListStyle>, RaceFilterPickerView, StartWorkoutButton)> and conformance TupleView<A>(&lazy protocol witness table cache variable for type _EnvironmentKeyWritingModifier<AnyShapeStyle?> and conformance _EnvironmentKeyWritingModifier<A>, &_s7SwiftUI30_EnvironmentKeyWritingModifierVyAA13AnyShapeStyleVSgGMd);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<List<Never, TupleView<(Section<EmptyView, ModifiedContent<<<opaque return type of View.buttonStyle<A>(_:)>>.0, _TraitWritingModifier<ListRowInsetsTraitKey>>, EmptyView>, Section<ModifiedContent<ModifiedContent<Text, _FrameLayout>, UnstackedSectionSpacingModifier>, ModifiedContent<ModifiedContent<NavigationLink<ModifiedContent<ModifiedContent<<<opaque return type of View.buttonStyle<A>(_:)>>.0, _EnvironmentKeyWritingModifier<Color?>>, _EnvironmentKeyWritingModifier<Font?>>, ModifiedContent<ModifiedContent<RaceWorkoutSelectionView, _EnvironmentKeyWritingModifier<WorkoutConfigurationDataSource?>>, _EnvironmentKeyWritingModifier<ConfigurationNavigationModel?>>>, _TraitWritingModifier<ListRowBackgroundTraitKey>>, _TraitWritingModifier<ListItemTintTraitKey>>, EmptyView>)>>, StackedListSectionsModifier>, _EnvironmentKeyWritingModifier<AnyShapeStyle?>> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<List<Never, TupleView<(Section<EmptyView, ModifiedContent<<<opaque return type of View.buttonStyle<A>(_:)>>.0, _TraitWritingModifier<ListRowInsetsTraitKey>>, EmptyView>, Section<ModifiedContent<ModifiedContent<Text, _FrameLayout>, UnstackedSectionSpacingModifier>, ModifiedContent<ModifiedContent<NavigationLink<ModifiedContent<ModifiedContent<<<opaque return type of View.buttonStyle<A>(_:)>>.0, _EnvironmentKeyWritingModifier<Color?>>, _EnvironmentKeyWritingModifier<Font?>>, ModifiedContent<ModifiedContent<RaceWorkoutSelectionView, _EnvironmentKeyWritingModifier<WorkoutConfigurationDataSource?>>, _EnvironmentKeyWritingModifier<ConfigurationNavigationModel?>>>, _TraitWritingModifier<ListRowBackgroundTraitKey>>, _TraitWritingModifier<ListItemTintTraitKey>>, EmptyView>)>>, StackedListSectionsModifier> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<List<Never, TupleView<(Section<EmptyView, ModifiedContent<<<opaque return type of View.buttonStyle<A>(_:)>>.0, _TraitWritingModifier<ListRowInsetsTraitKey>>, EmptyView>, Section<ModifiedContent<ModifiedContent<Text, _FrameLayout>, UnstackedSectionSpacingModifier>, ModifiedContent<ModifiedContent<NavigationLink<ModifiedContent<ModifiedContent<<<opaque return type of View.buttonStyle<A>(_:)>>.0, _EnvironmentKeyWritingModifier<Color?>>, _EnvironmentKeyWritingModifier<Font?>>, ModifiedContent<ModifiedContent<RaceWorkoutSelectionView, _EnvironmentKeyWritingModifier<WorkoutConfigurationDataSource?>>, _EnvironmentKeyWritingModifier<ConfigurationNavigationModel?>>>, _TraitWritingModifier<ListRowBackgroundTraitKey>>, _TraitWritingModifier<ListItemTintTraitKey>>, EmptyView>)>>, StackedListSectionsModifier> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<List<Never, TupleView<(Section<EmptyView, ModifiedContent<<<opaque return type of View.buttonStyle<A>(_:)>>.0, _TraitWritingModifier<ListRowInsetsTraitKey>>, EmptyView>, Section<ModifiedContent<ModifiedContent<Text, _FrameLayout>, UnstackedSectionSpacingModifier>, ModifiedContent<ModifiedContent<NavigationLink<ModifiedContent<ModifiedContent<<<opaque return type of View.buttonStyle<A>(_:)>>.0, _EnvironmentKeyWritingModifier<Color?>>, _EnvironmentKeyWritingModifier<Font?>>, ModifiedContent<ModifiedContent<RaceWorkoutSelectionView, _EnvironmentKeyWritingModifier<WorkoutConfigurationDataSource?>>, _EnvironmentKeyWritingModifier<ConfigurationNavigationModel?>>>, _TraitWritingModifier<ListRowBackgroundTraitKey>>, _TraitWritingModifier<ListItemTintTraitKey>>, EmptyView>)>>, StackedListSectionsModifier> and conformance <> ModifiedContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyAA4ListVys5NeverOAA9TupleViewVyAA7SectionVyAA05EmptyH0VACyAA0H0PAAE11buttonStyleyQrqd__AA015PrimitiveButtonL0Rd__lFQOyAA14NavigationLinkVyAA6ZStackVyAIyACyACy07WorkoutB0014RaceCroppedMapH0VAA12_FrameLayoutVGAA11_ClipEffectVyAA16RoundedRectangleVGG_ACyACyAV0s17ElevationBarChartH0VAZGAA08_PaddingW0VGtGGAV0s5RouteH0VG_AA05PlainnL0VQo_AA21_TraitWritingModifierVyAA0E17RowInsetsTraitKeyVGGAMG_AKyACyACyAA4TextVAZGAV09UnstackedI15SpacingModifier33_B33B451D6D59C74C7A089BCD2EE64343LLVGACyACyASyACyACyAoAEAPyQrqd__AaQRd__lFQOyAA0N0VyA28_G_AA017BorderedProminentnL0VQo_AA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGA41_yAA4FontVSgGGACyACyAV0sr9SelectionH0VA41_y0R4Core0R23ConfigurationDataSourceCSgGGA41_yAV013ConfigurationO5ModelCSgGGGA21_yAA0E21RowBackgroundTraitKeyVGGA21_yAA0E16ItemTintTraitKeyVGGAMGtGGAV07StackedE16SectionsModifierA31_LLVGMd);
    lazy protocol witness table accessor for type TupleView<(ModifiedContent<Section<ModifiedContent<ModifiedContent<VStack<TupleView<(Text, Text)>>, _EnvironmentKeyWritingModifier<Font?>>, _PaddingLayout>, ZStack<TupleView<(ModifiedContent<RaceRouteView, _FrameLayout>, ModifiedContent<ModifiedContent<RaceElevationBarChartView, _FrameLayout>, _PaddingLayout>)>>, EmptyView>, ClearListStyle>, RaceFilterPickerView, StartWorkoutButton)> and conformance TupleView<A>(&lazy protocol witness table cache variable for type List<Never, TupleView<(Section<EmptyView, ModifiedContent<<<opaque return type of View.buttonStyle<A>(_:)>>.0, _TraitWritingModifier<ListRowInsetsTraitKey>>, EmptyView>, Section<ModifiedContent<ModifiedContent<Text, _FrameLayout>, UnstackedSectionSpacingModifier>, ModifiedContent<ModifiedContent<NavigationLink<ModifiedContent<ModifiedContent<<<opaque return type of View.buttonStyle<A>(_:)>>.0, _EnvironmentKeyWritingModifier<Color?>>, _EnvironmentKeyWritingModifier<Font?>>, ModifiedContent<ModifiedContent<RaceWorkoutSelectionView, _EnvironmentKeyWritingModifier<WorkoutConfigurationDataSource?>>, _EnvironmentKeyWritingModifier<ConfigurationNavigationModel?>>>, _TraitWritingModifier<ListRowBackgroundTraitKey>>, _TraitWritingModifier<ListItemTintTraitKey>>, EmptyView>)>> and conformance List<A, B>, &_s7SwiftUI4ListVys5NeverOAA9TupleViewVyAA7SectionVyAA05EmptyF0VAA15ModifiedContentVyAA0F0PAAE11buttonStyleyQrqd__AA015PrimitiveButtonL0Rd__lFQOyAA14NavigationLinkVyAA6ZStackVyAGyAMyAMy07WorkoutB0014RaceCroppedMapF0VAA12_FrameLayoutVGAA11_ClipEffectVyAA16RoundedRectangleVGG_AMyAMyAV0s17ElevationBarChartF0VAZGAA08_PaddingW0VGtGGAV0s5RouteF0VG_AA05PlainnL0VQo_AA21_TraitWritingModifierVyAA0C17RowInsetsTraitKeyVGGAKG_AIyAMyAMyAA4TextVAZGAV09UnstackedG15SpacingModifier33_B33B451D6D59C74C7A089BCD2EE64343LLVGAMyAMyASyAMyAMyAoAEAPyQrqd__AaQRd__lFQOyAA0N0VyA28_G_AA017BorderedProminentnL0VQo_AA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGA41_yAA4FontVSgGGAMyAMyAV0sr9SelectionF0VA41_y0R4Core0R23ConfigurationDataSourceCSgGGA41_yAV013ConfigurationO5ModelCSgGGGA21_yAA0C21RowBackgroundTraitKeyVGGA21_yAA0C16ItemTintTraitKeyVGGAKGtGGMd);
    lazy protocol witness table accessor for type StackedListSectionsModifier and conformance StackedListSectionsModifier();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<List<Never, TupleView<(Section<EmptyView, ModifiedContent<<<opaque return type of View.buttonStyle<A>(_:)>>.0, _TraitWritingModifier<ListRowInsetsTraitKey>>, EmptyView>, Section<ModifiedContent<ModifiedContent<Text, _FrameLayout>, UnstackedSectionSpacingModifier>, ModifiedContent<ModifiedContent<NavigationLink<ModifiedContent<ModifiedContent<<<opaque return type of View.buttonStyle<A>(_:)>>.0, _EnvironmentKeyWritingModifier<Color?>>, _EnvironmentKeyWritingModifier<Font?>>, ModifiedContent<ModifiedContent<RaceWorkoutSelectionView, _EnvironmentKeyWritingModifier<WorkoutConfigurationDataSource?>>, _EnvironmentKeyWritingModifier<ConfigurationNavigationModel?>>>, _TraitWritingModifier<ListRowBackgroundTraitKey>>, _TraitWritingModifier<ListItemTintTraitKey>>, EmptyView>)>>, StackedListSectionsModifier> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type StackedListSectionsModifier and conformance StackedListSectionsModifier()
{
  result = lazy protocol witness table cache variable for type StackedListSectionsModifier and conformance StackedListSectionsModifier;
  if (!lazy protocol witness table cache variable for type StackedListSectionsModifier and conformance StackedListSectionsModifier)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type StackedListSectionsModifier and conformance StackedListSectionsModifier);
  }

  return result;
}

uint64_t outlined init with copy of ModifiedContent<SubscriptionView<ObservableObjectPublisher, <<opaque return type of View.contentMargins(_:_:for:)>>.0>, WorkoutConfigurationToolbar>(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(a3);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t outlined destroy of ModifiedContent<SubscriptionView<ObservableObjectPublisher, <<opaque return type of View.contentMargins(_:_:for:)>>.0>, WorkoutConfigurationToolbar>(uint64_t a1, uint64_t *a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(a2);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<<<opaque return type of View.buttonStyle<A>(_:)>>.0, _TraitWritingModifier<ListRowInsetsTraitKey>> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<<<opaque return type of View.buttonStyle<A>(_:)>>.0, _TraitWritingModifier<ListRowInsetsTraitKey>> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<<<opaque return type of View.buttonStyle<A>(_:)>>.0, _TraitWritingModifier<ListRowInsetsTraitKey>> and conformance <> ModifiedContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyAA4ViewPAAE11buttonStyleyQrqd__AA015PrimitiveButtonG0Rd__lFQOyAA14NavigationLinkVyAA6ZStackVyAA05TupleE0VyACyACy07WorkoutB0014RaceCroppedMapE0VAA12_FrameLayoutVGAA11_ClipEffectVyAA16RoundedRectangleVGG_ACyACyAN0o17ElevationBarChartE0VARGAA08_PaddingS0VGtGGAN0o5RouteE0VG_AA05PlainiG0VQo_AA21_TraitWritingModifierVyAA21ListRowInsetsTraitKeyVGGMd);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI14NavigationLinkVyAA6ZStackVyAA9TupleViewVyAA15ModifiedContentVyAIy07WorkoutB0014RaceCroppedMapG0VAA12_FrameLayoutVGAA11_ClipEffectVyAA16RoundedRectangleVGG_AIyAIyAJ0k17ElevationBarChartG0VANGAA08_PaddingO0VGtGGAJ0k5RouteG0VGMd);
    type metadata accessor for PlainButtonStyle();
    lazy protocol witness table accessor for type TupleView<(ModifiedContent<Section<ModifiedContent<ModifiedContent<VStack<TupleView<(Text, Text)>>, _EnvironmentKeyWritingModifier<Font?>>, _PaddingLayout>, ZStack<TupleView<(ModifiedContent<RaceRouteView, _FrameLayout>, ModifiedContent<ModifiedContent<RaceElevationBarChartView, _FrameLayout>, _PaddingLayout>)>>, EmptyView>, ClearListStyle>, RaceFilterPickerView, StartWorkoutButton)> and conformance TupleView<A>(&lazy protocol witness table cache variable for type NavigationLink<ZStack<TupleView<(ModifiedContent<ModifiedContent<RaceCroppedMapView, _FrameLayout>, _ClipEffect<RoundedRectangle>>, ModifiedContent<ModifiedContent<RaceElevationBarChartView, _FrameLayout>, _PaddingLayout>)>>, RaceRouteView> and conformance NavigationLink<A, B>, &_s7SwiftUI14NavigationLinkVyAA6ZStackVyAA9TupleViewVyAA15ModifiedContentVyAIy07WorkoutB0014RaceCroppedMapG0VAA12_FrameLayoutVGAA11_ClipEffectVyAA16RoundedRectangleVGG_AIyAIyAJ0k17ElevationBarChartG0VANGAA08_PaddingO0VGtGGAJ0k5RouteG0VGMd);
    lazy protocol witness table accessor for type RaceWorkoutConfiguration and conformance WorkoutConfiguration(&lazy protocol witness table cache variable for type PlainButtonStyle and conformance PlainButtonStyle, MEMORY[0x277CDDB18]);
    swift_getOpaqueTypeConformance2();
    lazy protocol witness table accessor for type TupleView<(ModifiedContent<Section<ModifiedContent<ModifiedContent<VStack<TupleView<(Text, Text)>>, _EnvironmentKeyWritingModifier<Font?>>, _PaddingLayout>, ZStack<TupleView<(ModifiedContent<RaceRouteView, _FrameLayout>, ModifiedContent<ModifiedContent<RaceElevationBarChartView, _FrameLayout>, _PaddingLayout>)>>, EmptyView>, ClearListStyle>, RaceFilterPickerView, StartWorkoutButton)> and conformance TupleView<A>(&lazy protocol witness table cache variable for type _TraitWritingModifier<ListRowInsetsTraitKey> and conformance _TraitWritingModifier<A>, &_s7SwiftUI21_TraitWritingModifierVyAA013ListRowInsetsC3KeyVGMd);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<<<opaque return type of View.buttonStyle<A>(_:)>>.0, _TraitWritingModifier<ListRowInsetsTraitKey>> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<Text, _FrameLayout>, UnstackedSectionSpacingModifier> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<Text, _FrameLayout>, UnstackedSectionSpacingModifier> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<Text, _FrameLayout>, UnstackedSectionSpacingModifier> and conformance <> ModifiedContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyACyAA4TextVAA12_FrameLayoutVG07WorkoutB031UnstackedSectionSpacingModifier33_B33B451D6D59C74C7A089BCD2EE64343LLVGMd);
    lazy protocol witness table accessor for type ModifiedContent<Text, _FrameLayout> and conformance <> ModifiedContent<A, B>();
    lazy protocol witness table accessor for type UnstackedSectionSpacingModifier and conformance UnstackedSectionSpacingModifier();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<Text, _FrameLayout>, UnstackedSectionSpacingModifier> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<Text, _FrameLayout> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<Text, _FrameLayout> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<Text, _FrameLayout> and conformance <> ModifiedContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyAA4TextVAA12_FrameLayoutVGMd);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<Text, _FrameLayout> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type UnstackedSectionSpacingModifier and conformance UnstackedSectionSpacingModifier()
{
  result = lazy protocol witness table cache variable for type UnstackedSectionSpacingModifier and conformance UnstackedSectionSpacingModifier;
  if (!lazy protocol witness table cache variable for type UnstackedSectionSpacingModifier and conformance UnstackedSectionSpacingModifier)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type UnstackedSectionSpacingModifier and conformance UnstackedSectionSpacingModifier);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<NavigationLink<ModifiedContent<ModifiedContent<<<opaque return type of View.buttonStyle<A>(_:)>>.0, _EnvironmentKeyWritingModifier<Color?>>, _EnvironmentKeyWritingModifier<Font?>>, ModifiedContent<ModifiedContent<RaceWorkoutSelectionView, _EnvironmentKeyWritingModifier<WorkoutConfigurationDataSource?>>, _EnvironmentKeyWritingModifier<ConfigurationNavigationModel?>>>, _TraitWritingModifier<ListRowBackgroundTraitKey>>, _TraitWritingModifier<ListItemTintTraitKey>> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<NavigationLink<ModifiedContent<ModifiedContent<<<opaque return type of View.buttonStyle<A>(_:)>>.0, _EnvironmentKeyWritingModifier<Color?>>, _EnvironmentKeyWritingModifier<Font?>>, ModifiedContent<ModifiedContent<RaceWorkoutSelectionView, _EnvironmentKeyWritingModifier<WorkoutConfigurationDataSource?>>, _EnvironmentKeyWritingModifier<ConfigurationNavigationModel?>>>, _TraitWritingModifier<ListRowBackgroundTraitKey>>, _TraitWritingModifier<ListItemTintTraitKey>> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<NavigationLink<ModifiedContent<ModifiedContent<<<opaque return type of View.buttonStyle<A>(_:)>>.0, _EnvironmentKeyWritingModifier<Color?>>, _EnvironmentKeyWritingModifier<Font?>>, ModifiedContent<ModifiedContent<RaceWorkoutSelectionView, _EnvironmentKeyWritingModifier<WorkoutConfigurationDataSource?>>, _EnvironmentKeyWritingModifier<ConfigurationNavigationModel?>>>, _TraitWritingModifier<ListRowBackgroundTraitKey>>, _TraitWritingModifier<ListItemTintTraitKey>> and conformance <> ModifiedContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyACyAA14NavigationLinkVyACyACyAA4ViewPAAE11buttonStyleyQrqd__AA015PrimitiveButtonI0Rd__lFQOyAA0K0VyAA4TextVG_AA017BorderedProminentkI0VQo_AA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGASyAA4FontVSgGGACyACy07WorkoutB004Raceu9SelectionG0VASy0U4Core0U23ConfigurationDataSourceCSgGGASyA2_0yE5ModelCSgGGGAA06_TraitqR0VyAA022ListRowBackgroundTraitP0VGGA18_yAA017ListItemTintTraitP0VGGMd);
    lazy protocol witness table accessor for type ModifiedContent<NavigationLink<ModifiedContent<ModifiedContent<<<opaque return type of View.buttonStyle<A>(_:)>>.0, _EnvironmentKeyWritingModifier<Color?>>, _EnvironmentKeyWritingModifier<Font?>>, ModifiedContent<ModifiedContent<RaceWorkoutSelectionView, _EnvironmentKeyWritingModifier<WorkoutConfigurationDataSource?>>, _EnvironmentKeyWritingModifier<ConfigurationNavigationModel?>>>, _TraitWritingModifier<ListRowBackgroundTraitKey>> and conformance <> ModifiedContent<A, B>();
    lazy protocol witness table accessor for type TupleView<(ModifiedContent<Section<ModifiedContent<ModifiedContent<VStack<TupleView<(Text, Text)>>, _EnvironmentKeyWritingModifier<Font?>>, _PaddingLayout>, ZStack<TupleView<(ModifiedContent<RaceRouteView, _FrameLayout>, ModifiedContent<ModifiedContent<RaceElevationBarChartView, _FrameLayout>, _PaddingLayout>)>>, EmptyView>, ClearListStyle>, RaceFilterPickerView, StartWorkoutButton)> and conformance TupleView<A>(&lazy protocol witness table cache variable for type _TraitWritingModifier<ListItemTintTraitKey> and conformance _TraitWritingModifier<A>, &_s7SwiftUI21_TraitWritingModifierVyAA012ListItemTintC3KeyVGMd);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<NavigationLink<ModifiedContent<ModifiedContent<<<opaque return type of View.buttonStyle<A>(_:)>>.0, _EnvironmentKeyWritingModifier<Color?>>, _EnvironmentKeyWritingModifier<Font?>>, ModifiedContent<ModifiedContent<RaceWorkoutSelectionView, _EnvironmentKeyWritingModifier<WorkoutConfigurationDataSource?>>, _EnvironmentKeyWritingModifier<ConfigurationNavigationModel?>>>, _TraitWritingModifier<ListRowBackgroundTraitKey>>, _TraitWritingModifier<ListItemTintTraitKey>> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<NavigationLink<ModifiedContent<ModifiedContent<<<opaque return type of View.buttonStyle<A>(_:)>>.0, _EnvironmentKeyWritingModifier<Color?>>, _EnvironmentKeyWritingModifier<Font?>>, ModifiedContent<ModifiedContent<RaceWorkoutSelectionView, _EnvironmentKeyWritingModifier<WorkoutConfigurationDataSource?>>, _EnvironmentKeyWritingModifier<ConfigurationNavigationModel?>>>, _TraitWritingModifier<ListRowBackgroundTraitKey>> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<NavigationLink<ModifiedContent<ModifiedContent<<<opaque return type of View.buttonStyle<A>(_:)>>.0, _EnvironmentKeyWritingModifier<Color?>>, _EnvironmentKeyWritingModifier<Font?>>, ModifiedContent<ModifiedContent<RaceWorkoutSelectionView, _EnvironmentKeyWritingModifier<WorkoutConfigurationDataSource?>>, _EnvironmentKeyWritingModifier<ConfigurationNavigationModel?>>>, _TraitWritingModifier<ListRowBackgroundTraitKey>> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<NavigationLink<ModifiedContent<ModifiedContent<<<opaque return type of View.buttonStyle<A>(_:)>>.0, _EnvironmentKeyWritingModifier<Color?>>, _EnvironmentKeyWritingModifier<Font?>>, ModifiedContent<ModifiedContent<RaceWorkoutSelectionView, _EnvironmentKeyWritingModifier<WorkoutConfigurationDataSource?>>, _EnvironmentKeyWritingModifier<ConfigurationNavigationModel?>>>, _TraitWritingModifier<ListRowBackgroundTraitKey>> and conformance <> ModifiedContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyAA14NavigationLinkVyACyACyAA4ViewPAAE11buttonStyleyQrqd__AA015PrimitiveButtonI0Rd__lFQOyAA0K0VyAA4TextVG_AA017BorderedProminentkI0VQo_AA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGASyAA4FontVSgGGACyACy07WorkoutB004Raceu9SelectionG0VASy0U4Core0U23ConfigurationDataSourceCSgGGASyA2_0yE5ModelCSgGGGAA06_TraitqR0VyAA022ListRowBackgroundTraitP0VGGMd);
    lazy protocol witness table accessor for type TupleView<(ModifiedContent<Section<ModifiedContent<ModifiedContent<VStack<TupleView<(Text, Text)>>, _EnvironmentKeyWritingModifier<Font?>>, _PaddingLayout>, ZStack<TupleView<(ModifiedContent<RaceRouteView, _FrameLayout>, ModifiedContent<ModifiedContent<RaceElevationBarChartView, _FrameLayout>, _PaddingLayout>)>>, EmptyView>, ClearListStyle>, RaceFilterPickerView, StartWorkoutButton)> and conformance TupleView<A>(&lazy protocol witness table cache variable for type NavigationLink<ModifiedContent<ModifiedContent<<<opaque return type of View.buttonStyle<A>(_:)>>.0, _EnvironmentKeyWritingModifier<Color?>>, _EnvironmentKeyWritingModifier<Font?>>, ModifiedContent<ModifiedContent<RaceWorkoutSelectionView, _EnvironmentKeyWritingModifier<WorkoutConfigurationDataSource?>>, _EnvironmentKeyWritingModifier<ConfigurationNavigationModel?>>> and conformance NavigationLink<A, B>, &_s7SwiftUI14NavigationLinkVyAA15ModifiedContentVyAEyAA4ViewPAAE11buttonStyleyQrqd__AA015PrimitiveButtonI0Rd__lFQOyAA0K0VyAA4TextVG_AA017BorderedProminentkI0VQo_AA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGASyAA4FontVSgGGAEyAEy07WorkoutB004Raceu9SelectionG0VASy0U4Core0U23ConfigurationDataSourceCSgGGASyA2_0yC5ModelCSgGGGMd);
    lazy protocol witness table accessor for type TupleView<(ModifiedContent<Section<ModifiedContent<ModifiedContent<VStack<TupleView<(Text, Text)>>, _EnvironmentKeyWritingModifier<Font?>>, _PaddingLayout>, ZStack<TupleView<(ModifiedContent<RaceRouteView, _FrameLayout>, ModifiedContent<ModifiedContent<RaceElevationBarChartView, _FrameLayout>, _PaddingLayout>)>>, EmptyView>, ClearListStyle>, RaceFilterPickerView, StartWorkoutButton)> and conformance TupleView<A>(&lazy protocol witness table cache variable for type _TraitWritingModifier<ListRowBackgroundTraitKey> and conformance _TraitWritingModifier<A>, &_s7SwiftUI21_TraitWritingModifierVyAA017ListRowBackgroundC3KeyVGMd);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<NavigationLink<ModifiedContent<ModifiedContent<<<opaque return type of View.buttonStyle<A>(_:)>>.0, _EnvironmentKeyWritingModifier<Color?>>, _EnvironmentKeyWritingModifier<Font?>>, ModifiedContent<ModifiedContent<RaceWorkoutSelectionView, _EnvironmentKeyWritingModifier<WorkoutConfigurationDataSource?>>, _EnvironmentKeyWritingModifier<ConfigurationNavigationModel?>>>, _TraitWritingModifier<ListRowBackgroundTraitKey>> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<RaceWorkoutSelectionView, _EnvironmentKeyWritingModifier<WorkoutConfigurationDataSource?>>, _EnvironmentKeyWritingModifier<ConfigurationNavigationModel?>> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<RaceWorkoutSelectionView, _EnvironmentKeyWritingModifier<WorkoutConfigurationDataSource?>>, _EnvironmentKeyWritingModifier<ConfigurationNavigationModel?>> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<RaceWorkoutSelectionView, _EnvironmentKeyWritingModifier<WorkoutConfigurationDataSource?>>, _EnvironmentKeyWritingModifier<ConfigurationNavigationModel?>> and conformance <> ModifiedContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyACy07WorkoutB004RaceE13SelectionViewVAA30_EnvironmentKeyWritingModifierVy0E4Core0E23ConfigurationDataSourceCSgGGAHyAD0N15NavigationModelCSgGGMd);
    lazy protocol witness table accessor for type ModifiedContent<RaceWorkoutSelectionView, _EnvironmentKeyWritingModifier<WorkoutConfigurationDataSource?>> and conformance <> ModifiedContent<A, B>();
    lazy protocol witness table accessor for type TupleView<(ModifiedContent<Section<ModifiedContent<ModifiedContent<VStack<TupleView<(Text, Text)>>, _EnvironmentKeyWritingModifier<Font?>>, _PaddingLayout>, ZStack<TupleView<(ModifiedContent<RaceRouteView, _FrameLayout>, ModifiedContent<ModifiedContent<RaceElevationBarChartView, _FrameLayout>, _PaddingLayout>)>>, EmptyView>, ClearListStyle>, RaceFilterPickerView, StartWorkoutButton)> and conformance TupleView<A>(&lazy protocol witness table cache variable for type _EnvironmentKeyWritingModifier<ConfigurationNavigationModel?> and conformance _EnvironmentKeyWritingModifier<A>, &_s7SwiftUI30_EnvironmentKeyWritingModifierVy07WorkoutB028ConfigurationNavigationModelCSgGMd);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<RaceWorkoutSelectionView, _EnvironmentKeyWritingModifier<WorkoutConfigurationDataSource?>>, _EnvironmentKeyWritingModifier<ConfigurationNavigationModel?>> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<RaceWorkoutSelectionView, _EnvironmentKeyWritingModifier<WorkoutConfigurationDataSource?>> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<RaceWorkoutSelectionView, _EnvironmentKeyWritingModifier<WorkoutConfigurationDataSource?>> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<RaceWorkoutSelectionView, _EnvironmentKeyWritingModifier<WorkoutConfigurationDataSource?>> and conformance <> ModifiedContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVy07WorkoutB004RaceE13SelectionViewVAA30_EnvironmentKeyWritingModifierVy0E4Core0E23ConfigurationDataSourceCSgGGMd);
    lazy protocol witness table accessor for type RaceWorkoutSelectionView and conformance RaceWorkoutSelectionView();
    lazy protocol witness table accessor for type TupleView<(ModifiedContent<Section<ModifiedContent<ModifiedContent<VStack<TupleView<(Text, Text)>>, _EnvironmentKeyWritingModifier<Font?>>, _PaddingLayout>, ZStack<TupleView<(ModifiedContent<RaceRouteView, _FrameLayout>, ModifiedContent<ModifiedContent<RaceElevationBarChartView, _FrameLayout>, _PaddingLayout>)>>, EmptyView>, ClearListStyle>, RaceFilterPickerView, StartWorkoutButton)> and conformance TupleView<A>(&lazy protocol witness table cache variable for type _EnvironmentKeyWritingModifier<WorkoutConfigurationDataSource?> and conformance _EnvironmentKeyWritingModifier<A>, &_s7SwiftUI30_EnvironmentKeyWritingModifierVy11WorkoutCore0G23ConfigurationDataSourceCSgGMd);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<RaceWorkoutSelectionView, _EnvironmentKeyWritingModifier<WorkoutConfigurationDataSource?>> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type RaceWorkoutSelectionView and conformance RaceWorkoutSelectionView()
{
  result = lazy protocol witness table cache variable for type RaceWorkoutSelectionView and conformance RaceWorkoutSelectionView;
  if (!lazy protocol witness table cache variable for type RaceWorkoutSelectionView and conformance RaceWorkoutSelectionView)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type RaceWorkoutSelectionView and conformance RaceWorkoutSelectionView);
  }

  return result;
}

uint64_t outlined init with take of SubscriptionView<ObservableObjectPublisher, <<opaque return type of View.contentMargins(_:_:for:)>>.0>(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(a3);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t objectdestroyTm_2()
{

  return swift_deallocObject();
}

unint64_t lazy protocol witness table accessor for type RaceRouteView and conformance RaceRouteView()
{
  result = lazy protocol witness table cache variable for type RaceRouteView and conformance RaceRouteView;
  if (!lazy protocol witness table cache variable for type RaceRouteView and conformance RaceRouteView)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type RaceRouteView and conformance RaceRouteView);
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

uint64_t outlined init with take of ModifiedContent<ModifiedContent<RaceCroppedMapView, _FrameLayout>, _ClipEffect<RoundedRectangle>>(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyACy07WorkoutB018RaceCroppedMapViewVAA12_FrameLayoutVGAA11_ClipEffectVyAA16RoundedRectangleVGGMd);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t lazy protocol witness table accessor for type RaceWorkoutConfiguration and conformance WorkoutConfiguration(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<VStack<TupleView<(Text, Text)>>, _EnvironmentKeyWritingModifier<Font?>>, _PaddingLayout> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<VStack<TupleView<(Text, Text)>>, _EnvironmentKeyWritingModifier<Font?>>, _PaddingLayout> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<VStack<TupleView<(Text, Text)>>, _EnvironmentKeyWritingModifier<Font?>>, _PaddingLayout> and conformance <> ModifiedContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyACyAA6VStackVyAA9TupleViewVyAA4TextV_AItGGAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGAA14_PaddingLayoutVGMd);
    lazy protocol witness table accessor for type ModifiedContent<VStack<TupleView<(Text, Text)>>, _EnvironmentKeyWritingModifier<Font?>> and conformance <> ModifiedContent<A, B>();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<VStack<TupleView<(Text, Text)>>, _EnvironmentKeyWritingModifier<Font?>>, _PaddingLayout> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<VStack<TupleView<(Text, Text)>>, _EnvironmentKeyWritingModifier<Font?>> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<VStack<TupleView<(Text, Text)>>, _EnvironmentKeyWritingModifier<Font?>> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<VStack<TupleView<(Text, Text)>>, _EnvironmentKeyWritingModifier<Font?>> and conformance <> ModifiedContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyAA6VStackVyAA9TupleViewVyAA4TextV_AItGGAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGMd);
    lazy protocol witness table accessor for type TupleView<(ModifiedContent<Section<ModifiedContent<ModifiedContent<VStack<TupleView<(Text, Text)>>, _EnvironmentKeyWritingModifier<Font?>>, _PaddingLayout>, ZStack<TupleView<(ModifiedContent<RaceRouteView, _FrameLayout>, ModifiedContent<ModifiedContent<RaceElevationBarChartView, _FrameLayout>, _PaddingLayout>)>>, EmptyView>, ClearListStyle>, RaceFilterPickerView, StartWorkoutButton)> and conformance TupleView<A>(&lazy protocol witness table cache variable for type VStack<TupleView<(Text, Text)>> and conformance VStack<A>, &_s7SwiftUI6VStackVyAA9TupleViewVyAA4TextV_AGtGGMd);
    lazy protocol witness table accessor for type TupleView<(ModifiedContent<Section<ModifiedContent<ModifiedContent<VStack<TupleView<(Text, Text)>>, _EnvironmentKeyWritingModifier<Font?>>, _PaddingLayout>, ZStack<TupleView<(ModifiedContent<RaceRouteView, _FrameLayout>, ModifiedContent<ModifiedContent<RaceElevationBarChartView, _FrameLayout>, _PaddingLayout>)>>, EmptyView>, ClearListStyle>, RaceFilterPickerView, StartWorkoutButton)> and conformance TupleView<A>(&lazy protocol witness table cache variable for type _EnvironmentKeyWritingModifier<Font?> and conformance _EnvironmentKeyWritingModifier<A>, &_s7SwiftUI30_EnvironmentKeyWritingModifierVyAA4FontVSgGMd);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<VStack<TupleView<(Text, Text)>>, _EnvironmentKeyWritingModifier<Font?>> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

uint64_t lazy protocol witness table accessor for type TupleView<(ModifiedContent<Section<ModifiedContent<ModifiedContent<VStack<TupleView<(Text, Text)>>, _EnvironmentKeyWritingModifier<Font?>>, _PaddingLayout>, ZStack<TupleView<(ModifiedContent<RaceRouteView, _FrameLayout>, ModifiedContent<ModifiedContent<RaceElevationBarChartView, _FrameLayout>, _PaddingLayout>)>>, EmptyView>, ClearListStyle>, RaceFilterPickerView, StartWorkoutButton)> and conformance TupleView<A>(unint64_t *a1, uint64_t *a2)
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

uint64_t outlined init with copy of AnyLocation<Bool>?(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(a3);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t outlined destroy of State<Bool>(uint64_t a1, uint64_t *a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(a2);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t lazy protocol witness table accessor for type _ConditionalContent<ModifiedContent<ModifiedContent<SubscriptionView<ObservableObjectPublisher, <<opaque return type of View.toolbarForegroundStyle<A>(_:for:)>>.0>, WorkoutConfigurationToolbar>, _AppearanceActionModifier>, ModifiedContent<SubscriptionView<ObservableObjectPublisher, <<opaque return type of View.contentMargins(_:_:for:)>>.0>, WorkoutConfigurationToolbar>> and conformance <> _ConditionalContent<A, B>()
{
  result = lazy protocol witness table cache variable for type _ConditionalContent<ModifiedContent<ModifiedContent<SubscriptionView<ObservableObjectPublisher, <<opaque return type of View.toolbarForegroundStyle<A>(_:for:)>>.0>, WorkoutConfigurationToolbar>, _AppearanceActionModifier>, ModifiedContent<SubscriptionView<ObservableObjectPublisher, <<opaque return type of View.contentMargins(_:_:for:)>>.0>, WorkoutConfigurationToolbar>> and conformance <> _ConditionalContent<A, B>;
  if (!lazy protocol witness table cache variable for type _ConditionalContent<ModifiedContent<ModifiedContent<SubscriptionView<ObservableObjectPublisher, <<opaque return type of View.toolbarForegroundStyle<A>(_:for:)>>.0>, WorkoutConfigurationToolbar>, _AppearanceActionModifier>, ModifiedContent<SubscriptionView<ObservableObjectPublisher, <<opaque return type of View.contentMargins(_:_:for:)>>.0>, WorkoutConfigurationToolbar>> and conformance <> _ConditionalContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI19_ConditionalContentVyAA08ModifiedD0VyAEyAA16SubscriptionViewVy7Combine25ObservableObjectPublisherCAA0G0PAAE22toolbarForegroundStyle_3forQrqd___AA16ToolbarPlacementVdtAA05ShapeN0Rd__lFQOyAlAE18navigationBarTitleyQrqd__SyRd__lFQOyAEyAEyAA4ListVys5NeverOAA05TupleG0VyAA7SectionVyAA05EmptyG0VAEyAlAE06buttonN0yQrqd__AA015PrimitiveButtonN0Rd__lFQOyAA14NavigationLinkVyAA6ZStackVyAXyAEyAEy07WorkoutB0014RaceCroppedMapG0VAA12_FrameLayoutVGAA11_ClipEffectVyAA16RoundedRectangleVGG_AEyAEyA7_013RaceElevationt5ChartG0VA11_GAA14_PaddingLayoutVGtGGA7_09RaceRouteG0VG_AA011PlainButtonN0VQo_AA21_TraitWritingModifierVyAA0V17RowInsetsTraitKeyVGGA0_G_AZyAEyAEyAA4TextVA11_GA7_09UnstackedY15SpacingModifier33_B33B451D6D59C74C7A089BCD2EE64343LLVGAEyAEyA4_yAEyAEyAlAEA1_yQrqd__AAA2_Rd__lFQOyAA6ButtonVyA41_G_AA023BorderedProminentButtonN0VQo_AA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGA54_yAA4FontVSgGGAEyAEyA7_020RaceWorkoutSelectionG0VA54_y11WorkoutCore30WorkoutConfigurationDataSourceCSgGGA54_yA7_28ConfigurationNavigationModelCSgGGGA34_yAA0V21RowBackgroundTraitKeyVGGA34_yAA0V16ItemTintTraitKeyVGGA0_GtGGA7_07StackedV16SectionsModifierA44_LLVGA54_yAA03AnyrN0VSgGG_SSQo__A56_Qo_GA7_020WorkoutConfigurationP0VGAA25_AppearanceActionModifierVGAEyAGyAjlAE14contentMargins__ANQrAA4EdgeO3SetV_12CoreGraphics7CGFloatVSgAA0d6MarginQ0VtFQOyATyAvXyAEyAZyAEyAEyAA6VStackVyAXyA41__A41_tGGA63_GA23_GA6_yAXyAEyA28_A11_G_A24_tGGA0_GA7_05ClearvN033_A607961C6E65DD4DD1C2818C5FE69B58LLVG_A7_016RaceFilterPickerG0VA7_18StartWorkoutButtonVtGG_Qo_GA102_GGMd);
    lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<SubscriptionView<ObservableObjectPublisher, <<opaque return type of View.toolbarForegroundStyle<A>(_:for:)>>.0>, WorkoutConfigurationToolbar>, _AppearanceActionModifier> and conformance <> ModifiedContent<A, B>();
    lazy protocol witness table accessor for type ModifiedContent<SubscriptionView<ObservableObjectPublisher, <<opaque return type of View.contentMargins(_:_:for:)>>.0>, WorkoutConfigurationToolbar> and conformance <> ModifiedContent<A, B>();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type _ConditionalContent<ModifiedContent<ModifiedContent<SubscriptionView<ObservableObjectPublisher, <<opaque return type of View.toolbarForegroundStyle<A>(_:for:)>>.0>, WorkoutConfigurationToolbar>, _AppearanceActionModifier>, ModifiedContent<SubscriptionView<ObservableObjectPublisher, <<opaque return type of View.contentMargins(_:_:for:)>>.0>, WorkoutConfigurationToolbar>> and conformance <> _ConditionalContent<A, B>);
  }

  return result;
}

uint64_t type metadata accessor for VoiceCompanionEntryView()
{
  result = type metadata singleton initialization cache for VoiceCompanionEntryView;
  if (!type metadata singleton initialization cache for VoiceCompanionEntryView)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void type metadata completion function for VoiceCompanionEntryView()
{
  type metadata accessor for Environment<VoiceAssetsObserver>(319, &lazy cache variable for type metadata for Environment<VoiceAssetsObserver>, MEMORY[0x277D7E340]);
  if (v0 <= 0x3F)
  {
    type metadata accessor for Environment<VoiceAssetsObserver>(319, &lazy cache variable for type metadata for Environment<WorkoutVoiceAvailabilityProvider>, MEMORY[0x277D7DD08]);
    if (v1 <= 0x3F)
    {
      type metadata accessor for FIUIWorkoutActivityType(319, &lazy cache variable for type metadata for FIUIWorkoutActivityType);
      if (v2 <= 0x3F)
      {
        type metadata accessor for InferenceClient();
        if (v3 <= 0x3F)
        {
          type metadata accessor for State<Bool>();
          if (v4 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

void type metadata accessor for Environment<VoiceAssetsObserver>(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
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

uint64_t getEnumTagSinglePayload for VoiceCompanionEntryView.ButtonPlacement(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for VoiceCompanionEntryView.ButtonPlacement(uint64_t result, unsigned int a2, unsigned int a3)
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

unint64_t lazy protocol witness table accessor for type VoiceCompanionEntryView.ButtonPlacement and conformance VoiceCompanionEntryView.ButtonPlacement()
{
  result = lazy protocol witness table cache variable for type VoiceCompanionEntryView.ButtonPlacement and conformance VoiceCompanionEntryView.ButtonPlacement;
  if (!lazy protocol witness table cache variable for type VoiceCompanionEntryView.ButtonPlacement and conformance VoiceCompanionEntryView.ButtonPlacement)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type VoiceCompanionEntryView.ButtonPlacement and conformance VoiceCompanionEntryView.ButtonPlacement);
  }

  return result;
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance VoiceCompanionEntryView.ButtonPlacement()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  MEMORY[0x20F30CD90](v1);
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance VoiceCompanionEntryView.ButtonPlacement()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  MEMORY[0x20F30CD90](v1);
  return Hasher._finalize()();
}

uint64_t VoiceCompanionEntryView.body.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v18 = a1;
  v3 = type metadata accessor for VoiceCompanionEntryView();
  v4 = v3 - 8;
  v5 = *(v3 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyAA5GroupVyAA012_ConditionalD0VyAA14NavigationLinkVyAA4ViewPAAE20accessibilityElement8childrenQrAA26AccessibilityChildBehaviorV_tFQOyAA6HStackVyAA05TupleI0VyACyACyACyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGAA14_PaddingLayoutVGAA0m10AttachmentV0VG_07WorkoutB00g5LabelI0VAA6SpacerVtGG_Qo_AkAE15navigationTitleyQrqd__SyRd__lFQOyAA4ListVys5NeverOA7_022VoiceCompanionSettingsI0VG_SSQo_GAkAE5sheet11isPresented9onDismiss7contentQrAA7BindingVySbG_yycSgqd__yctAaJRd__lFQOyAEyAGyACyAkAE12onTapGesture5count7performQrSi_yyctFQOyAkAE11buttonStyleyQrqd__AA20PrimitiveButtonStyleRd__lFQOyAA6ButtonVyACyACyACyACyACyACyACyACyACyAuA010_FlexFrameY0VGA2_GAA016_BackgroundStyleV0VyAYGGA_GAA11_ClipEffectVyAA16RoundedRectangleVGGAWyAA4FontVSgGGA_GAA016_ForegroundStyleV0VyAYGGA5_GG_AA16PlainButtonStyleVQo__Qo_AA01_d9ShapeKindV0VyA52_GGACyACyAkAEA36_yQrqd__AAA37_Rd__lFQOyA39_yAkAEAlMQrAO_tFQOyACyACyACyACyAA6VStackVyASyACyAUA5_G_AkAE10fontWeightyQrA56_6WeightVSgFQOyACyAA4TextVAWyAA13TextAlignmentOGG_Qo_ACyACyA87_AWySiSgGGA_GtGGA41_GA2_GA58_GA63_G_Qo_G_A68_Qo_AA011_BackgroundV0VyAA06_ShapeI0VyA52_AYGGGA73_GGG_AA0G5StackVyAA0G4PathVAkAE7toolbarA28_Qrqd__yXE_tAA07ToolbarD0Rd__lFQOyACyACyACyACyA22_AWy12CoreGraphics7CGFloatVSgGGAA06_TraituV0VyAA023ListSectionSpacingTraitT0VGGAWyAA18ListSectionSpacingVSgGGA7_06InlineG8BarTitle33_B86241820663BC1B3220D14BE7395977LLVG_AA07ToolbarD7BuilderV10buildBlockyQrxAAA117_RzlFZQOy_AA11ToolbarItemVyytACyA39_yAA18DefaultButtonLabelVGAWyAA13AnyShapeStyleVSgGGGQo_Qo_GQo_GGAA05_TaskV0VGMd);
  MEMORY[0x28223BE20](v7);
  v9 = &v18 - v8;
  closure #1 in VoiceCompanionEntryView.body.getter(v2, &v18 - v8);
  outlined init with copy of VoiceCompanionEntryView(v2, &v18 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v10 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v11 = swift_allocObject();
  outlined init with take of VoiceCompanionEntryView(&v18 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), v11 + v10);
  v12 = &v9[*(v7 + 36)];
  type metadata accessor for _TaskModifier();
  static TaskPriority.userInitiated.getter();
  *v12 = &async function pointer to partial apply for closure #2 in VoiceCompanionEntryView.body.getter;
  *(v12 + 1) = v11;
  v13 = &v2[*(v4 + 48)];
  v14 = *v13;
  v15 = *(v13 + 1);
  v20 = v14;
  v21 = v15;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI5StateVySbGMd);
  State.wrappedValue.getter();
  v20 = v19;
  outlined init with copy of VoiceCompanionEntryView(v2, &v18 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v16 = swift_allocObject();
  outlined init with take of VoiceCompanionEntryView(&v18 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), v16 + v10);
  lazy protocol witness table accessor for type ModifiedContent<Group<_ConditionalContent<NavigationLink<<<opaque return type of View.accessibilityElement(children:)>>.0, <<opaque return type of View.navigationTitle<A>(_:)>>.0>, <<opaque return type of View.sheet<A>(isPresented:onDismiss:content:)>>.0>>, _TaskModifier> and conformance <> ModifiedContent<A, B>();
  View.onChange<A>(of:initial:_:)();

  return outlined destroy of ModifiedContent<Group<_ConditionalContent<NavigationLink<<<opaque return type of View.accessibilityElement(children:)>>.0, <<opaque return type of View.navigationTitle<A>(_:)>>.0>, <<opaque return type of View.sheet<A>(isPresented:onDismiss:content:)>>.0>>, _TaskModifier>(v9, &_s7SwiftUI15ModifiedContentVyAA5GroupVyAA012_ConditionalD0VyAA14NavigationLinkVyAA4ViewPAAE20accessibilityElement8childrenQrAA26AccessibilityChildBehaviorV_tFQOyAA6HStackVyAA05TupleI0VyACyACyACyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGAA14_PaddingLayoutVGAA0m10AttachmentV0VG_07WorkoutB00g5LabelI0VAA6SpacerVtGG_Qo_AkAE15navigationTitleyQrqd__SyRd__lFQOyAA4ListVys5NeverOA7_022VoiceCompanionSettingsI0VG_SSQo_GAkAE5sheet11isPresented9onDismiss7contentQrAA7BindingVySbG_yycSgqd__yctAaJRd__lFQOyAEyAGyACyAkAE12onTapGesture5count7performQrSi_yyctFQOyAkAE11buttonStyleyQrqd__AA20PrimitiveButtonStyleRd__lFQOyAA6ButtonVyACyACyACyACyACyACyACyACyACyAuA010_FlexFrameY0VGA2_GAA016_BackgroundStyleV0VyAYGGA_GAA11_ClipEffectVyAA16RoundedRectangleVGGAWyAA4FontVSgGGA_GAA016_ForegroundStyleV0VyAYGGA5_GG_AA16PlainButtonStyleVQo__Qo_AA01_d9ShapeKindV0VyA52_GGACyACyAkAEA36_yQrqd__AAA37_Rd__lFQOyA39_yAkAEAlMQrAO_tFQOyACyACyACyACyAA6VStackVyASyACyAUA5_G_AkAE10fontWeightyQrA56_6WeightVSgFQOyACyAA4TextVAWyAA13TextAlignmentOGG_Qo_ACyACyA87_AWySiSgGGA_GtGGA41_GA2_GA58_GA63_G_Qo_G_A68_Qo_AA011_BackgroundV0VyAA06_ShapeI0VyA52_AYGGGA73_GGG_AA0G5StackVyAA0G4PathVAkAE7toolbarA28_Qrqd__yXE_tAA07ToolbarD0Rd__lFQOyACyACyACyACyA22_AWy12CoreGraphics7CGFloatVSgGGAA06_TraituV0VyAA023ListSectionSpacingTraitT0VGGAWyAA18ListSectionSpacingVSgGGA7_06InlineG8BarTitle33_B86241820663BC1B3220D14BE7395977LLVG_AA07ToolbarD7BuilderV10buildBlockyQrxAAA117_RzlFZQOy_AA11ToolbarItemVyytACyA39_yAA18DefaultButtonLabelVGAWyAA13AnyShapeStyleVSgGGGQo_Qo_GQo_GGAA05_TaskV0VGMd);
}

uint64_t closure #1 in VoiceCompanionEntryView.body.getter@<X0>(char *a1@<X0>, uint64_t a2@<X8>)
{
  v57 = a2;
  v3 = type metadata accessor for VoiceCompanionEntryView();
  v47 = *(v3 - 8);
  v4 = v47[8];
  MEMORY[0x28223BE20](v3);
  v55 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI5GroupVyAA19_ConditionalContentVyAA08ModifiedE0VyAA4ViewPAAE12onTapGesture5count7performQrSi_yyctFQOyAiAE11buttonStyleyQrqd__AA015PrimitiveButtonN0Rd__lFQOyAA0P0VyAGyAGyAGyAGyAGyAGyAGyAGyAGyAA5ImageVAA16_FlexFrameLayoutVGAA08_PaddingT0VGAA011_BackgroundN8ModifierVyAA5ColorVGGAA022_EnvironmentKeyWritingW0VyA0_SgGGAA11_ClipEffectVyAA16RoundedRectangleVGGA4_yAA4FontVSgGGA6_GAA011_ForegroundnW0VyA0_GGAA023AccessibilityAttachmentW0VGG_AA05PlainpN0VQo__Qo_AA01_e9ShapeKindW0VyA11_GGAGyAGyAiAEAMyQrqd__AaNRd__lFQOyAPyAiAE20accessibilityElement8childrenQrAA26AccessibilityChildBehaviorV_tFQOyAGyAGyAGyAGyAA6VStackVyAA05TupleG0VyAGyARA25_G_AiAE10fontWeightyQrA15_6WeightVSgFQOyAGyAA4TextVA4_yAA13TextAlignmentOGG_Qo_AGyAGyA54_A4_ySiSgGGA6_GtGGATGAWGA17_GA22_G_Qo_G_A29_Qo_AA01_vW0VyAA06_ShapeG0VyA11_A0_GGGA34_GGGMd);
  MEMORY[0x28223BE20](v55);
  v6 = &v47 - v5;
  v56 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI4ViewPAAE5sheet11isPresented9onDismiss7contentQrAA7BindingVySbG_yycSgqd__yctAaBRd__lFQOyAA5GroupVyAA19_ConditionalContentVyAA08ModifiedM0VyAcAE0G10TapGesture5count7performQrSi_yyctFQOyAcAE11buttonStyleyQrqd__AA015PrimitiveButtonT0Rd__lFQOyAA0V0VyAQyAQyAQyAQyAQyAQyAQyAQyAQyAA5ImageVAA16_FlexFrameLayoutVGAA08_PaddingZ0VGAA011_BackgroundT8ModifierVyAA5ColorVGGAA30_EnvironmentKeyWritingModifierVyA8_SgGGAA11_ClipEffectVyAA16RoundedRectangleVGGA12_yAA4FontVSgGGA14_GAA011_ForegroundT8ModifierVyA8_GGAA31AccessibilityAttachmentModifierVGG_AA05PlainvT0VQo__Qo_AA01_M17ShapeKindModifierVyA19_GGAQyAQyAcAEAUyQrqd__AaVRd__lFQOyAXyAcAE20accessibilityElement8childrenQrAA26AccessibilityChildBehaviorV_tFQOyAQyAQyAQyAQyAA6VStackVyAA05TupleC0VyAQyAZA33_G_AcAE10fontWeightyQrA23_6WeightVSgFQOyAQyAA4TextVA12_yAA13TextAlignmentOGG_Qo_AQyAQyA62_A12_ySiSgGGA14_GtGGA0_GA3_GA25_GA30_G_Qo_G_A37_Qo_AA19_BackgroundModifierVyAA06_ShapeC0VyA19_A8_GGGA42_GGG_AA15NavigationStackVyAA14NavigationPathVAcAE7toolbarAGQrqd__yXE_tAA07ToolbarM0Rd__lFQOyAQyAQyAQyAQyAA4ListVys5NeverO07WorkoutB0022VoiceCompanionSettingsC0VGA12_y12CoreGraphics7CGFloatVSgGGAA21_TraitWritingModifierVyAA26ListSectionSpacingTraitKeyVGGA12_yAA18ListSectionSpacingVSgGGA97_24InlineNavigationBarTitle33_B86241820663BC1B3220D14BE7395977LLVG_AA07ToolbarM7BuilderV10buildBlockyQrxAAA92_RzlFZQOy_AA11ToolbarItemVyytAQyAXyAA07DefaultV5LabelVGA12_yAA08AnyShapeT0VSgGGGQo_Qo_GQo_Md);
  v50 = *(v56 - 8);
  MEMORY[0x28223BE20](v56);
  v48 = (&v47 - v7);
  v53 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI19_ConditionalContentV7StorageOyAA14NavigationLinkVyAA4ViewPAAE20accessibilityElement8childrenQrAA26AccessibilityChildBehaviorV_tFQOyAA6HStackVyAA05TupleH0VyAA08ModifiedD0VyASyASyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGAA14_PaddingLayoutVGAA0l10AttachmentV0VG_07WorkoutB00f5LabelH0VAA6SpacerVtGG_Qo_AiAE15navigationTitleyQrqd__SyRd__lFQOyAA4ListVys5NeverOA7_022VoiceCompanionSettingsH0VG_SSQo_GAiAE5sheet11isPresented9onDismiss7contentQrAA7BindingVySbG_yycSgqd__yctAaHRd__lFQOyAA5GroupVyACyASyAiAE12onTapGesture5count7performQrSi_yyctFQOyAiAE11buttonStyleyQrqd__AA20PrimitiveButtonStyleRd__lFQOyAA6ButtonVyASyASyASyASyASyASyASyASyASyAuA010_FlexFrameY0VGA2_GAA016_BackgroundStyleV0VyAYGGA_GAA11_ClipEffectVyAA16RoundedRectangleVGGAWyAA4FontVSgGGA_GAA016_ForegroundStyleV0VyAYGGA5_GG_AA16PlainButtonStyleVQo__Qo_AA01_d9ShapeKindV0VyA54_GGASyASyAiAEA38_yQrqd__AAA39_Rd__lFQOyA41_yAiAEAjKQrAM_tFQOyASyASyASyASyAA6VStackVyAQyASyAUA5_G_AiAE10fontWeightyQrA58_6WeightVSgFQOyASyAA4TextVAWyAA13TextAlignmentOGG_Qo_ASyASyA89_AWySiSgGGA_GtGGA43_GA2_GA60_GA65_G_Qo_G_A70_Qo_AA011_BackgroundV0VyAA06_ShapeH0VyA54_AYGGGA75_GGG_AA0F5StackVyAA0F4PathVAiAE7toolbarA28_Qrqd__yXE_tAA07ToolbarD0Rd__lFQOyASyASyASyASyA22_AWy12CoreGraphics7CGFloatVSgGGAA06_TraituV0VyAA023ListSectionSpacingTraitT0VGGAWyAA18ListSectionSpacingVSgGGA7_06InlineF8BarTitle33_B86241820663BC1B3220D14BE7395977LLVG_AA07ToolbarD7BuilderV10buildBlockyQrxAAA119_RzlFZQOy_AA11ToolbarItemVyytASyA41_yAA18DefaultButtonLabelVGAWyAA13AnyShapeStyleVSgGGGQo_Qo_GQo__GMd);
  MEMORY[0x28223BE20](v53);
  v9 = &v47 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI4ListVys5NeverO07WorkoutB026VoiceCompanionSettingsViewVGMd);
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = &v47 - v12;
  v49 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI4ViewPAAE15navigationTitleyQrqd__SyRd__lFQOyAA4ListVys5NeverO07WorkoutB0022VoiceCompanionSettingsC0VG_SSQo_Md);
  MEMORY[0x28223BE20](v49);
  v54 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI14NavigationLinkVyAA4ViewPAAE20accessibilityElement8childrenQrAA26AccessibilityChildBehaviorV_tFQOyAA6HStackVyAA05TupleE0VyAA15ModifiedContentVyAOyAOyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGAA14_PaddingLayoutVGAA0i10AttachmentT0VG_07WorkoutB00c5LabelE0VAA6SpacerVtGG_Qo_AeAE15navigationTitleyQrqd__SyRd__lFQOyAA4ListVys5NeverOA3_022VoiceCompanionSettingsE0VG_SSQo_GMd);
  v52 = *(v54 - 8);
  MEMORY[0x28223BE20](v54);
  v51 = &v47 - v14;
  v15 = static Platform.current.getter();
  if (v15)
  {
    v50 = v9;
    v48 = &v47;
    v16 = MEMORY[0x28223BE20](v15);
    v47 = &v45;
    MEMORY[0x28223BE20](v16);
    v63._object = a1;
    type metadata accessor for VoiceCompanionSettingsView();
    lazy protocol witness table accessor for type PlainButtonStyle and conformance PlainButtonStyle(&lazy protocol witness table cache variable for type VoiceCompanionSettingsView and conformance VoiceCompanionSettingsView, type metadata accessor for VoiceCompanionSettingsView);
    List<>.init(content:)();
    if (one-time initialization token for WorkoutUIBundle != -1)
    {
      swift_once();
    }

    swift_beginAccess();
    v17 = WorkoutUIBundle.super.isa;
    v63._object = 0xE000000000000000;
    v18._countAndFlagsBits = 0x5F54554F4B524F57;
    v18._object = 0xED00005944445542;
    v19.value._countAndFlagsBits = 0x617A696C61636F4CLL;
    v19.value._object = 0xEB00000000656C62;
    v20._countAndFlagsBits = 0;
    v20._object = 0xE000000000000000;
    v63._countAndFlagsBits = 0;
    v21 = NSLocalizedString(_:tableName:bundle:value:comment:)(v18, v19, v17, v20, v63);

    v60 = v21;
    v22 = lazy protocol witness table accessor for type NavigationLink<<<opaque return type of View.accessibilityElement(children:)>>.0, <<opaque return type of View.navigationTitle<A>(_:)>>.0> and conformance NavigationLink<A, B>(&lazy protocol witness table cache variable for type List<Never, VoiceCompanionSettingsView> and conformance List<A, B>, &_s7SwiftUI4ListVys5NeverO07WorkoutB026VoiceCompanionSettingsViewVGMd);
    v23 = lazy protocol witness table accessor for type String and conformance String();
    v24 = MEMORY[0x277D837D0];
    View.navigationTitle<A>(_:)();

    (*(v11 + 8))(v13, v10);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI4ViewPAAE20accessibilityElement8childrenQrAA26AccessibilityChildBehaviorV_tFQOyAA6HStackVyAA05TupleC0VyAA15ModifiedContentVyAMyAMyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGAA14_PaddingLayoutVGAA0g10AttachmentR0VG_07WorkoutB0015NavigationLabelC0VAA6SpacerVtGG_Qo_Md);
    v25 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI6HStackVyAA9TupleViewVyAA15ModifiedContentVyAGyAGyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGAA14_PaddingLayoutVGAA023AccessibilityAttachmentL0VG_07WorkoutB0015NavigationLabelE0VAA6SpacerVtGGMd);
    v26 = lazy protocol witness table accessor for type NavigationLink<<<opaque return type of View.accessibilityElement(children:)>>.0, <<opaque return type of View.navigationTitle<A>(_:)>>.0> and conformance NavigationLink<A, B>(&lazy protocol witness table cache variable for type HStack<TupleView<(ModifiedContent<ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Color?>>, _PaddingLayout>, AccessibilityAttachmentModifier>, NavigationLabelView, Spacer)>> and conformance HStack<A>, &_s7SwiftUI6HStackVyAA9TupleViewVyAA15ModifiedContentVyAGyAGyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGAA14_PaddingLayoutVGAA023AccessibilityAttachmentL0VG_07WorkoutB0015NavigationLabelE0VAA6SpacerVtGGMd);
    v60._countAndFlagsBits = v25;
    v60._object = v26;
    swift_getOpaqueTypeConformance2();
    v60._countAndFlagsBits = v10;
    v60._object = v24;
    v61 = v22;
    object = v23;
    swift_getOpaqueTypeConformance2();
    v27 = v51;
    NavigationLink.init(destination:label:)();
    v28 = v52;
    v29 = v54;
    (*(v52 + 16))(v50, v27, v54);
    swift_storeEnumTagMultiPayload();
    lazy protocol witness table accessor for type NavigationLink<<<opaque return type of View.accessibilityElement(children:)>>.0, <<opaque return type of View.navigationTitle<A>(_:)>>.0> and conformance NavigationLink<A, B>(&lazy protocol witness table cache variable for type NavigationLink<<<opaque return type of View.accessibilityElement(children:)>>.0, <<opaque return type of View.navigationTitle<A>(_:)>>.0> and conformance NavigationLink<A, B>, &_s7SwiftUI14NavigationLinkVyAA4ViewPAAE20accessibilityElement8childrenQrAA26AccessibilityChildBehaviorV_tFQOyAA6HStackVyAA05TupleE0VyAA15ModifiedContentVyAOyAOyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGAA14_PaddingLayoutVGAA0i10AttachmentT0VG_07WorkoutB00c5LabelE0VAA6SpacerVtGG_Qo_AeAE15navigationTitleyQrqd__SyRd__lFQOyAA4ListVys5NeverOA3_022VoiceCompanionSettingsE0VG_SSQo_GMd);
    v30 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15NavigationStackVyAA0C4PathVAA4ViewPAAE7toolbar7contentQrqd__yXE_tAA14ToolbarContentRd__lFQOyAA08ModifiedJ0VyALyALyALyAA4ListVys5NeverO07WorkoutB0022VoiceCompanionSettingsF0VGAA30_EnvironmentKeyWritingModifierVy12CoreGraphics7CGFloatVSgGGAA06_TraittU0VyAA0l14SectionSpacingyS0VGGAVyAA0lZ7SpacingVSgGGAQ06InlineC8BarTitle33_B86241820663BC1B3220D14BE7395977LLVG_AA0iJ7BuilderV10buildBlockyQrxAaJRzlFZQOy_AA0I4ItemVyytALyAA6ButtonVyAA18DefaultButtonLabelVGAVyAA13AnyShapeStyleVSgGGGQo_Qo_GMd);
    v31 = lazy protocol witness table accessor for type Group<_ConditionalContent<NavigationLink<<<opaque return type of View.accessibilityElement(children:)>>.0, <<opaque return type of View.navigationTitle<A>(_:)>>.0>, <<opaque return type of View.sheet<A>(isPresented:onDismiss:content:)>>.0>> and conformance <A> Group<A>(&lazy protocol witness table cache variable for type Group<_ConditionalContent<ModifiedContent<<<opaque return type of View.onTapGesture(count:perform:)>>.0, _ContentShapeKindModifier<RoundedRectangle>>, ModifiedContent<ModifiedContent<<<opaque return type of View.buttonStyle<A>(_:)>>.0, _BackgroundModifier<_ShapeView<RoundedRectangle, Color>>>, _ContentShapeKindModifier<RoundedRectangle>>>> and conformance <A> Group<A>, &_s7SwiftUI5GroupVyAA19_ConditionalContentVyAA08ModifiedE0VyAA4ViewPAAE12onTapGesture5count7performQrSi_yyctFQOyAiAE11buttonStyleyQrqd__AA015PrimitiveButtonN0Rd__lFQOyAA0P0VyAGyAGyAGyAGyAGyAGyAGyAGyAGyAA5ImageVAA16_FlexFrameLayoutVGAA08_PaddingT0VGAA011_BackgroundN8ModifierVyAA5ColorVGGAA022_EnvironmentKeyWritingW0VyA0_SgGGAA11_ClipEffectVyAA16RoundedRectangleVGGA4_yAA4FontVSgGGA6_GAA011_ForegroundnW0VyA0_GGAA023AccessibilityAttachmentW0VGG_AA05PlainpN0VQo__Qo_AA01_e9ShapeKindW0VyA11_GGAGyAGyAiAEAMyQrqd__AaNRd__lFQOyAPyAiAE20accessibilityElement8childrenQrAA26AccessibilityChildBehaviorV_tFQOyAGyAGyAGyAGyAA6VStackVyAA05TupleG0VyAGyARA25_G_AiAE10fontWeightyQrA15_6WeightVSgFQOyAGyAA4TextVA4_yAA13TextAlignmentOGG_Qo_AGyAGyA54_A4_ySiSgGGA6_GtGGATGAWGA17_GA22_G_Qo_G_A29_Qo_AA01_vW0VyAA06_ShapeG0VyA11_A0_GGGA34_GGGMd, &_s7SwiftUI5GroupVyAA19_ConditionalContentVyAA08ModifiedE0VyAA4ViewPAAE12onTapGesture5count7performQrSi_yyctFQOyAiAE11buttonStyleyQrqd__AA015PrimitiveButtonN0Rd__lFQOyAA0P0VyAGyAGyAGyAGyAGyAGyAGyAGyAGyAA5ImageVAA16_FlexFrameLayoutVGAA08_PaddingT0VGAA011_BackgroundN8ModifierVyAA5ColorVGGAA022_EnvironmentKeyWritingW0VyA0_SgGGAA11_ClipEffectVyAA16RoundedRectangleVGGA4_yAA4FontVSgGGA6_GAA011_ForegroundnW0VyA0_GGAA023AccessibilityAttachmentW0VGG_AA05PlainpN0VQo__Qo_AA01_e9ShapeKindW0VyA11_GGAGyAGyAiAEAMyQrqd__AaNRd__lFQOyAPyAiAE20accessibilityElement8childrenQrAA26AccessibilityChildBehaviorV_tFQOyAGyAGyAGyAGyAA6VStackVyAA05TupleG0VyAGyARA25_G_AiAE10fontWeightyQrA15_6WeightVSgFQOyAGyAA4TextVA4_yAA13TextAlignmentOGG_Qo_AGyAGyA54_A4_ySiSgGGA6_GtGGATGAWGA17_GA22_G_Qo_G_A29_Qo_AA01_vW0VyAA06_ShapeG0VyA11_A0_GGGA34_GGGMR, lazy protocol witness table accessor for type _ConditionalContent<ModifiedContent<<<opaque return type of View.onTapGesture(count:perform:)>>.0, _ContentShapeKindModifier<RoundedRectangle>>, ModifiedContent<ModifiedContent<<<opaque return type of View.buttonStyle<A>(_:)>>.0, _BackgroundModifier<_ShapeView<RoundedRectangle, Color>>>, _ContentShapeKindModifier<RoundedRectangle>>> and conformance <> _ConditionalContent<A, B>);
    v32 = lazy protocol witness table accessor for type NavigationLink<<<opaque return type of View.accessibilityElement(children:)>>.0, <<opaque return type of View.navigationTitle<A>(_:)>>.0> and conformance NavigationLink<A, B>(&lazy protocol witness table cache variable for type NavigationStack<NavigationPath, <<opaque return type of View.toolbar<A>(content:)>>.0> and conformance NavigationStack<A, B>, &_s7SwiftUI15NavigationStackVyAA0C4PathVAA4ViewPAAE7toolbar7contentQrqd__yXE_tAA14ToolbarContentRd__lFQOyAA08ModifiedJ0VyALyALyALyAA4ListVys5NeverO07WorkoutB0022VoiceCompanionSettingsF0VGAA30_EnvironmentKeyWritingModifierVy12CoreGraphics7CGFloatVSgGGAA06_TraittU0VyAA0l14SectionSpacingyS0VGGAVyAA0lZ7SpacingVSgGGAQ06InlineC8BarTitle33_B86241820663BC1B3220D14BE7395977LLVG_AA0iJ7BuilderV10buildBlockyQrxAaJRzlFZQOy_AA0I4ItemVyytALyAA6ButtonVyAA18DefaultButtonLabelVGAVyAA13AnyShapeStyleVSgGGGQo_Qo_GMd);
    v60._countAndFlagsBits = v55;
    v60._object = v30;
    v61 = v31;
    object = v32;
    swift_getOpaqueTypeConformance2();
    _ConditionalContent<>.init(storage:)();
    return (*(v28 + 8))(v27, v29);
  }

  else
  {
    v34 = v6;
    closure #3 in closure #1 in VoiceCompanionEntryView.body.getter(a1, v6);
    v35 = &a1[*(v3 + 36)];
    v36 = *v35;
    v37 = *(v35 + 1);
    v58 = v36;
    v59 = v37;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI5StateVySbGMd);
    State.projectedValue.getter();
    LODWORD(v52) = v61;
    outlined init with copy of VoiceCompanionEntryView(a1, &v47 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
    v38 = (*(v47 + 80) + 16) & ~*(v47 + 80);
    v39 = swift_allocObject();
    outlined init with take of VoiceCompanionEntryView(&v47 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), v39 + v38);
    v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15NavigationStackVyAA0C4PathVAA4ViewPAAE7toolbar7contentQrqd__yXE_tAA14ToolbarContentRd__lFQOyAA08ModifiedJ0VyALyALyALyAA4ListVys5NeverO07WorkoutB0022VoiceCompanionSettingsF0VGAA30_EnvironmentKeyWritingModifierVy12CoreGraphics7CGFloatVSgGGAA06_TraittU0VyAA0l14SectionSpacingyS0VGGAVyAA0lZ7SpacingVSgGGAQ06InlineC8BarTitle33_B86241820663BC1B3220D14BE7395977LLVG_AA0iJ7BuilderV10buildBlockyQrxAaJRzlFZQOy_AA0I4ItemVyytALyAA6ButtonVyAA18DefaultButtonLabelVGAVyAA13AnyShapeStyleVSgGGGQo_Qo_GMd);
    v51 = v40;
    v46 = lazy protocol witness table accessor for type Group<_ConditionalContent<NavigationLink<<<opaque return type of View.accessibilityElement(children:)>>.0, <<opaque return type of View.navigationTitle<A>(_:)>>.0>, <<opaque return type of View.sheet<A>(isPresented:onDismiss:content:)>>.0>> and conformance <A> Group<A>(&lazy protocol witness table cache variable for type Group<_ConditionalContent<ModifiedContent<<<opaque return type of View.onTapGesture(count:perform:)>>.0, _ContentShapeKindModifier<RoundedRectangle>>, ModifiedContent<ModifiedContent<<<opaque return type of View.buttonStyle<A>(_:)>>.0, _BackgroundModifier<_ShapeView<RoundedRectangle, Color>>>, _ContentShapeKindModifier<RoundedRectangle>>>> and conformance <A> Group<A>, &_s7SwiftUI5GroupVyAA19_ConditionalContentVyAA08ModifiedE0VyAA4ViewPAAE12onTapGesture5count7performQrSi_yyctFQOyAiAE11buttonStyleyQrqd__AA015PrimitiveButtonN0Rd__lFQOyAA0P0VyAGyAGyAGyAGyAGyAGyAGyAGyAGyAA5ImageVAA16_FlexFrameLayoutVGAA08_PaddingT0VGAA011_BackgroundN8ModifierVyAA5ColorVGGAA022_EnvironmentKeyWritingW0VyA0_SgGGAA11_ClipEffectVyAA16RoundedRectangleVGGA4_yAA4FontVSgGGA6_GAA011_ForegroundnW0VyA0_GGAA023AccessibilityAttachmentW0VGG_AA05PlainpN0VQo__Qo_AA01_e9ShapeKindW0VyA11_GGAGyAGyAiAEAMyQrqd__AaNRd__lFQOyAPyAiAE20accessibilityElement8childrenQrAA26AccessibilityChildBehaviorV_tFQOyAGyAGyAGyAGyAA6VStackVyAA05TupleG0VyAGyARA25_G_AiAE10fontWeightyQrA15_6WeightVSgFQOyAGyAA4TextVA4_yAA13TextAlignmentOGG_Qo_AGyAGyA54_A4_ySiSgGGA6_GtGGATGAWGA17_GA22_G_Qo_G_A29_Qo_AA01_vW0VyAA06_ShapeG0VyA11_A0_GGGA34_GGGMd, &_s7SwiftUI5GroupVyAA19_ConditionalContentVyAA08ModifiedE0VyAA4ViewPAAE12onTapGesture5count7performQrSi_yyctFQOyAiAE11buttonStyleyQrqd__AA015PrimitiveButtonN0Rd__lFQOyAA0P0VyAGyAGyAGyAGyAGyAGyAGyAGyAGyAA5ImageVAA16_FlexFrameLayoutVGAA08_PaddingT0VGAA011_BackgroundN8ModifierVyAA5ColorVGGAA022_EnvironmentKeyWritingW0VyA0_SgGGAA11_ClipEffectVyAA16RoundedRectangleVGGA4_yAA4FontVSgGGA6_GAA011_ForegroundnW0VyA0_GGAA023AccessibilityAttachmentW0VGG_AA05PlainpN0VQo__Qo_AA01_e9ShapeKindW0VyA11_GGAGyAGyAiAEAMyQrqd__AaNRd__lFQOyAPyAiAE20accessibilityElement8childrenQrAA26AccessibilityChildBehaviorV_tFQOyAGyAGyAGyAGyAA6VStackVyAA05TupleG0VyAGyARA25_G_AiAE10fontWeightyQrA15_6WeightVSgFQOyAGyAA4TextVA4_yAA13TextAlignmentOGG_Qo_AGyAGyA54_A4_ySiSgGGA6_GtGGATGAWGA17_GA22_G_Qo_G_A29_Qo_AA01_vW0VyAA06_ShapeG0VyA11_A0_GGGA34_GGGMR, lazy protocol witness table accessor for type _ConditionalContent<ModifiedContent<<<opaque return type of View.onTapGesture(count:perform:)>>.0, _ContentShapeKindModifier<RoundedRectangle>>, ModifiedContent<ModifiedContent<<<opaque return type of View.buttonStyle<A>(_:)>>.0, _BackgroundModifier<_ShapeView<RoundedRectangle, Color>>>, _ContentShapeKindModifier<RoundedRectangle>>> and conformance <> _ConditionalContent<A, B>);
    v63._object = lazy protocol witness table accessor for type NavigationLink<<<opaque return type of View.accessibilityElement(children:)>>.0, <<opaque return type of View.navigationTitle<A>(_:)>>.0> and conformance NavigationLink<A, B>(&lazy protocol witness table cache variable for type NavigationStack<NavigationPath, <<opaque return type of View.toolbar<A>(content:)>>.0> and conformance NavigationStack<A, B>, &_s7SwiftUI15NavigationStackVyAA0C4PathVAA4ViewPAAE7toolbar7contentQrqd__yXE_tAA14ToolbarContentRd__lFQOyAA08ModifiedJ0VyALyALyALyAA4ListVys5NeverO07WorkoutB0022VoiceCompanionSettingsF0VGAA30_EnvironmentKeyWritingModifierVy12CoreGraphics7CGFloatVSgGGAA06_TraittU0VyAA0l14SectionSpacingyS0VGGAVyAA0lZ7SpacingVSgGGAQ06InlineC8BarTitle33_B86241820663BC1B3220D14BE7395977LLVG_AA0iJ7BuilderV10buildBlockyQrxAaJRzlFZQOy_AA0I4ItemVyytALyAA6ButtonVyAA18DefaultButtonLabelVGAVyAA13AnyShapeStyleVSgGGGQo_Qo_GMd);
    v45 = v40;
    v41 = v48;
    v42 = v55;
    View.sheet<A>(isPresented:onDismiss:content:)();

    outlined destroy of ModifiedContent<Group<_ConditionalContent<NavigationLink<<<opaque return type of View.accessibilityElement(children:)>>.0, <<opaque return type of View.navigationTitle<A>(_:)>>.0>, <<opaque return type of View.sheet<A>(isPresented:onDismiss:content:)>>.0>>, _TaskModifier>(v34, &_s7SwiftUI5GroupVyAA19_ConditionalContentVyAA08ModifiedE0VyAA4ViewPAAE12onTapGesture5count7performQrSi_yyctFQOyAiAE11buttonStyleyQrqd__AA015PrimitiveButtonN0Rd__lFQOyAA0P0VyAGyAGyAGyAGyAGyAGyAGyAGyAGyAA5ImageVAA16_FlexFrameLayoutVGAA08_PaddingT0VGAA011_BackgroundN8ModifierVyAA5ColorVGGAA022_EnvironmentKeyWritingW0VyA0_SgGGAA11_ClipEffectVyAA16RoundedRectangleVGGA4_yAA4FontVSgGGA6_GAA011_ForegroundnW0VyA0_GGAA023AccessibilityAttachmentW0VGG_AA05PlainpN0VQo__Qo_AA01_e9ShapeKindW0VyA11_GGAGyAGyAiAEAMyQrqd__AaNRd__lFQOyAPyAiAE20accessibilityElement8childrenQrAA26AccessibilityChildBehaviorV_tFQOyAGyAGyAGyAGyAA6VStackVyAA05TupleG0VyAGyARA25_G_AiAE10fontWeightyQrA15_6WeightVSgFQOyAGyAA4TextVA4_yAA13TextAlignmentOGG_Qo_AGyAGyA54_A4_ySiSgGGA6_GtGGATGAWGA17_GA22_G_Qo_G_A29_Qo_AA01_vW0VyAA06_ShapeG0VyA11_A0_GGGA34_GGGMd);
    v43 = v50;
    v44 = v56;
    (*(v50 + 2))(v9, v41, v56);
    swift_storeEnumTagMultiPayload();
    lazy protocol witness table accessor for type NavigationLink<<<opaque return type of View.accessibilityElement(children:)>>.0, <<opaque return type of View.navigationTitle<A>(_:)>>.0> and conformance NavigationLink<A, B>(&lazy protocol witness table cache variable for type NavigationLink<<<opaque return type of View.accessibilityElement(children:)>>.0, <<opaque return type of View.navigationTitle<A>(_:)>>.0> and conformance NavigationLink<A, B>, &_s7SwiftUI14NavigationLinkVyAA4ViewPAAE20accessibilityElement8childrenQrAA26AccessibilityChildBehaviorV_tFQOyAA6HStackVyAA05TupleE0VyAA15ModifiedContentVyAOyAOyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGAA14_PaddingLayoutVGAA0i10AttachmentT0VG_07WorkoutB00c5LabelE0VAA6SpacerVtGG_Qo_AeAE15navigationTitleyQrqd__SyRd__lFQOyAA4ListVys5NeverOA3_022VoiceCompanionSettingsE0VG_SSQo_GMd);
    v60._countAndFlagsBits = v42;
    v60._object = v51;
    v61 = v46;
    object = v63._object;
    swift_getOpaqueTypeConformance2();
    _ConditionalContent<>.init(storage:)();
    return (*(v43 + 1))(v41, v44);
  }
}

uint64_t VoiceCompanionEntryView.settingsRoom()@<X0>(uint64_t *a1@<X8>)
{
  v3 = type metadata accessor for EnvironmentValues();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v40 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for InferenceClient();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v40 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *(v1 + 32);
  v12 = type metadata accessor for VoiceCompanionEntryView();
  v13 = *(v12 + 28);
  v44 = v10;
  v45 = v8;
  v14 = *(v8 + 16);
  v46 = v7;
  v43 = v14;
  v14(v10, (v1 + v13), v7);
  v15 = *v1;
  LOBYTE(v10) = *(v1 + 8);
  v42 = v11;

  if ((v10 & 1) == 0)
  {
    static os_log_type_t.fault.getter();
    v16 = static Log.runtimeIssuesLog.getter();
    os_log(_:dso:log:_:_:)();

    EnvironmentValues.init()();
    swift_getAtKeyPath();

    (*(v4 + 8))(v6, v3);
    v15 = v47;
  }

  v17 = (v1 + *(v12 + 40));
  v18 = *v17;
  v19 = *(v17 + 1);
  LOBYTE(v49) = v18;
  v50 = v19;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI5StateVySbGMd);
  State.projectedValue.getter();
  v20 = *(&v47 + 1);
  v41 = v47;
  v21 = v48;
  *a1 = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI11EnvironmentV7ContentOyAA13DismissActionV_GMd);
  swift_storeEnumTagMultiPayload();
  v22 = type metadata accessor for VoiceCompanionSettingsView();
  v23 = a1 + v22[5];
  type metadata accessor for WorkoutVoiceAvailabilityProvider();
  lazy protocol witness table accessor for type PlainButtonStyle and conformance PlainButtonStyle(&lazy protocol witness table cache variable for type WorkoutVoiceAvailabilityProvider and conformance WorkoutVoiceAvailabilityProvider, MEMORY[0x277D7DD08]);
  *v23 = Environment.init<A>(_:)();
  v23[8] = v24 & 1;
  v25 = v22[6];
  *(a1 + v25) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI11EnvironmentV7ContentOyAA34WithCurrentHostingControllerActionV_GMd);
  swift_storeEnumTagMultiPayload();
  v26 = a1 + v22[11];
  v49 = 0;
  LOBYTE(v50) = 1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSiSgMd);
  State.init(wrappedValue:)();
  v27 = BYTE8(v47);
  v28 = v48;
  *v26 = v47;
  v26[8] = v27;
  *(v26 + 2) = v28;
  v29 = a1 + v22[12];
  v49 = 0;
  v50 = 0xE000000000000000;
  State.init(wrappedValue:)();
  v30 = v48;
  *v29 = v47;
  *(v29 + 2) = v30;
  v31 = a1 + v22[13];
  LOBYTE(v49) = 0;
  State.init(wrappedValue:)();
  v32 = *(&v47 + 1);
  *v31 = v47;
  *(v31 + 1) = v32;
  *(a1 + v22[8]) = v15;
  v33 = v44;
  v34 = v46;
  v43(a1 + v22[7], v44, v46);
  v35 = v41;
  *(a1 + v22[9]) = v42;
  v36 = a1 + v22[10];
  *v36 = v35;
  *(v36 + 1) = v20;
  v36[16] = v21;

  v37 = dispatch thunk of VoiceAssetsObserver.userSelectedAssetIndex.getter();
  LOBYTE(v22) = v38;

  result = (*(v45 + 8))(v33, v34);
  if ((v22 & 1) == 0)
  {

    *v26 = v37;
    v26[8] = 0;
    *(v26 + 2) = 0;
  }

  return result;
}

uint64_t closure #2 in closure #1 in VoiceCompanionEntryView.body.getter()
{
  v0 = type metadata accessor for AccessibilityChildBehavior();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v9 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI6HStackVyAA9TupleViewVyAA15ModifiedContentVyAGyAGyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGAA14_PaddingLayoutVGAA023AccessibilityAttachmentL0VG_07WorkoutB0015NavigationLabelE0VAA6SpacerVtGGMd);
  MEMORY[0x28223BE20](v4);
  v6 = &v9 - v5;
  *v6 = static VerticalAlignment.center.getter();
  *(v6 + 1) = 0;
  v6[16] = 1;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI13_VariadicViewO4TreeVy_AA13_HStackLayoutVAA05TupleD0VyAA15ModifiedContentVyAKyAKyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGAA08_PaddingG0VGAA023AccessibilityAttachmentO0VG_07WorkoutB0015NavigationLabelD0VAA6SpacerVtGGMd);
  closure #1 in closure #2 in closure #1 in VoiceCompanionEntryView.body.getter(&v6[*(v7 + 44)]);
  static AccessibilityChildBehavior.combine.getter();
  lazy protocol witness table accessor for type NavigationLink<<<opaque return type of View.accessibilityElement(children:)>>.0, <<opaque return type of View.navigationTitle<A>(_:)>>.0> and conformance NavigationLink<A, B>(&lazy protocol witness table cache variable for type HStack<TupleView<(ModifiedContent<ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Color?>>, _PaddingLayout>, AccessibilityAttachmentModifier>, NavigationLabelView, Spacer)>> and conformance HStack<A>, &_s7SwiftUI6HStackVyAA9TupleViewVyAA15ModifiedContentVyAGyAGyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGAA14_PaddingLayoutVGAA023AccessibilityAttachmentL0VG_07WorkoutB0015NavigationLabelE0VAA6SpacerVtGGMd);
  View.accessibilityElement(children:)();
  (*(v1 + 8))(v3, v0);
  return outlined destroy of HStack<TupleView<(ModifiedContent<ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Color?>>, _PaddingLayout>, AccessibilityAttachmentModifier>, NavigationLabelView, Spacer)>>(v6, &_s7SwiftUI6HStackVyAA9TupleViewVyAA15ModifiedContentVyAGyAGyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGAA14_PaddingLayoutVGAA023AccessibilityAttachmentL0VG_07WorkoutB0015NavigationLabelE0VAA6SpacerVtGGMd);
}

void closure #1 in closure #2 in closure #1 in VoiceCompanionEntryView.body.getter(uint64_t a1@<X8>)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyACyACyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGAA14_PaddingLayoutVGAA023AccessibilityAttachmentI0VGMd);
  v3 = MEMORY[0x28223BE20](v2 - 8);
  v5 = &v30 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v3);
  v7 = &v30 - v6;
  v8 = VoiceCompanionEntryView.voiceSymbol.getter();
  v9 = [objc_opt_self() keyColors];
  if (!v9)
  {
    __break(1u);
    goto LABEL_7;
  }

  v10 = v9;
  v11 = [v9 nonGradientTextColor];

  if (!v11)
  {
LABEL_7:
    __break(1u);
    return;
  }

  v12 = Color.init(uiColor:)();
  KeyPath = swift_getKeyPath();
  v14 = static Edge.Set.trailing.getter();
  EdgeInsets.init(_all:)();
  v38 = 0;
  *&v31 = v8;
  *(&v31 + 1) = KeyPath;
  *&v32 = v12;
  BYTE8(v32) = v14;
  *&v33 = v15;
  *(&v33 + 1) = v16;
  *&v34 = v17;
  *(&v34 + 1) = v18;
  v35 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyACyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGAA14_PaddingLayoutVGMd);
  lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Color?>>, _PaddingLayout> and conformance <> ModifiedContent<A, B>(&lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Color?>>, _PaddingLayout> and conformance <> ModifiedContent<A, B>, &_s7SwiftUI15ModifiedContentVyACyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGAA14_PaddingLayoutVGMd, &_s7SwiftUI15ModifiedContentVyACyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGAA14_PaddingLayoutVGMR, lazy protocol witness table accessor for type ModifiedContent<Image, _EnvironmentKeyWritingModifier<Color?>> and conformance <> ModifiedContent<A, B>);
  View.accessibilityHidden(_:)();
  v36[2] = v33;
  v36[3] = v34;
  v37 = v35;
  v36[0] = v31;
  v36[1] = v32;
  outlined destroy of HStack<TupleView<(ModifiedContent<ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Color?>>, _PaddingLayout>, AccessibilityAttachmentModifier>, NavigationLabelView, Spacer)>>(v36, &_s7SwiftUI15ModifiedContentVyACyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGAA14_PaddingLayoutVGMd);
  if (one-time initialization token for WorkoutUIBundle != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v19 = WorkoutUIBundle.super.isa;
  v39._object = 0xE000000000000000;
  v20._countAndFlagsBits = 0x5F54554F4B524F57;
  v20._object = 0xED00005944445542;
  v21.value._countAndFlagsBits = 0x617A696C61636F4CLL;
  v21.value._object = 0xEB00000000656C62;
  v22._countAndFlagsBits = 0;
  v22._object = 0xE000000000000000;
  v39._countAndFlagsBits = 0;
  v23 = NSLocalizedString(_:tableName:bundle:value:comment:)(v20, v21, v19, v22, v39);

  v24 = VoiceCompanionEntryView.footnote.getter();
  v26 = v25;
  outlined init with copy of ModifiedContent<ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Color?>>, _PaddingLayout>, AccessibilityAttachmentModifier>(v7, v5, &_s7SwiftUI15ModifiedContentVyACyACyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGAA14_PaddingLayoutVGAA023AccessibilityAttachmentI0VGMd);
  outlined init with copy of ModifiedContent<ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Color?>>, _PaddingLayout>, AccessibilityAttachmentModifier>(v5, a1, &_s7SwiftUI15ModifiedContentVyACyACyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGAA14_PaddingLayoutVGAA023AccessibilityAttachmentI0VGMd);
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyACyACyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGAA14_PaddingLayoutVGAA023AccessibilityAttachmentI0VG_07WorkoutB019NavigationLabelViewVAA6SpacerVtMd);
  v28 = (a1 + *(v27 + 48));
  *v28 = v23;
  v28[1]._countAndFlagsBits = v24;
  v28[1]._object = v26;
  v29 = a1 + *(v27 + 64);
  *v29 = 0;
  *(v29 + 8) = 0;

  outlined destroy of HStack<TupleView<(ModifiedContent<ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Color?>>, _PaddingLayout>, AccessibilityAttachmentModifier>, NavigationLabelView, Spacer)>>(v7, &_s7SwiftUI15ModifiedContentVyACyACyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGAA14_PaddingLayoutVGAA023AccessibilityAttachmentI0VGMd);

  outlined destroy of HStack<TupleView<(ModifiedContent<ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Color?>>, _PaddingLayout>, AccessibilityAttachmentModifier>, NavigationLabelView, Spacer)>>(v5, &_s7SwiftUI15ModifiedContentVyACyACyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGAA14_PaddingLayoutVGAA023AccessibilityAttachmentI0VGMd);
}

uint64_t VoiceCompanionEntryView.voiceSymbol.getter()
{
  v1 = v0;
  v2 = type metadata accessor for EnvironmentValues();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v14[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v6 = (v0 + *(type metadata accessor for VoiceCompanionEntryView() + 40));
  v7 = *v6;
  v8 = *(v6 + 1);
  LOBYTE(v15) = v7;
  v16 = v8;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI5StateVySbGMd);
  State.wrappedValue.getter();
  if (v14[15] == 1)
  {
    v9 = *(v0 + 16);
    if (*(v1 + 24) == 1)
    {
      v10 = v9;
    }

    else
    {

      static os_log_type_t.fault.getter();
      v11 = static Log.runtimeIssuesLog.getter();
      os_log(_:dso:log:_:_:)();

      EnvironmentValues.init()();
      swift_getAtKeyPath();
      outlined consume of Environment<WorkoutVoiceAvailabilityProvider>.Content(v9, 0);
      (*(v3 + 8))(v5, v2);
      v10 = v15;
    }

    v12 = dispatch thunk of WorkoutVoiceAvailabilityProvider.availabilityState.getter();

    WorkoutVoiceAvailabilityProvider.State.isFeatureAvailable.getter();
    outlined consume of WorkoutVoiceAvailabilityProvider.State(v12);
  }

  return Image.init(_internalSystemName:)();
}

uint64_t VoiceCompanionEntryView.footnote.getter()
{
  v1 = v0;
  v2 = type metadata accessor for EnvironmentValues();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = v30 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = (v0 + *(type metadata accessor for VoiceCompanionEntryView() + 40));
  v7 = *v6;
  v8 = *(v6 + 1);
  LOBYTE(v30[0]) = v7;
  v30[1] = v8;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI5StateVySbGMd);
  State.wrappedValue.getter();
  if (v31 != 1)
  {
    goto LABEL_9;
  }

  v9 = *(v0 + 16);
  if (*(v1 + 24) == 1)
  {
    v10 = v9;
  }

  else
  {

    static os_log_type_t.fault.getter();
    v11 = static Log.runtimeIssuesLog.getter();
    os_log(_:dso:log:_:_:)();

    EnvironmentValues.init()();
    swift_getAtKeyPath();
    outlined consume of Environment<WorkoutVoiceAvailabilityProvider>.Content(v9, 0);
    (*(v3 + 8))(v5, v2);
    v10 = v30[0];
  }

  v12 = dispatch thunk of WorkoutVoiceAvailabilityProvider.availabilityState.getter();

  v13 = WorkoutVoiceAvailabilityProvider.State.isFeatureAvailable.getter();
  outlined consume of WorkoutVoiceAvailabilityProvider.State(v12);
  if ((v13 & 1) == 0)
  {
    goto LABEL_9;
  }

  v14 = *(v1 + 8);

  if ((v14 & 1) == 0)
  {
    static os_log_type_t.fault.getter();
    v15 = static Log.runtimeIssuesLog.getter();
    os_log(_:dso:log:_:_:)();

    EnvironmentValues.init()();
    swift_getAtKeyPath();

    (*(v3 + 8))(v5, v2);
  }

  v16 = dispatch thunk of VoiceAssetsObserver.userSelectedAssetIndex.getter();
  v18 = v17;

  if (v18)
  {
LABEL_9:
    if (one-time initialization token for WorkoutUIBundle != -1)
    {
      swift_once();
    }

    swift_beginAccess();
    v19 = WorkoutUIBundle.super.isa;
    v32._object = 0xE000000000000000;
    v20._object = 0x800000020CB93CB0;
    v20._countAndFlagsBits = 0xD000000000000013;
    v21.value._countAndFlagsBits = 0x617A696C61636F4CLL;
    v21.value._object = 0xEB00000000656C62;
    v22._countAndFlagsBits = 0;
    v22._object = 0xE000000000000000;
    v32._countAndFlagsBits = 0;
    countAndFlagsBits = NSLocalizedString(_:tableName:bundle:value:comment:)(v20, v21, v19, v22, v32)._countAndFlagsBits;

    return countAndFlagsBits;
  }

  if (one-time initialization token for WorkoutUIBundle != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v25 = WorkoutUIBundle.super.isa;
  v33._object = 0xE000000000000000;
  v26._countAndFlagsBits = 0xD000000000000014;
  v26._object = 0x800000020CB93CD0;
  v27.value._countAndFlagsBits = 0x617A696C61636F4CLL;
  v27.value._object = 0xEB00000000656C62;
  v28._countAndFlagsBits = 0;
  v28._object = 0xE000000000000000;
  v33._countAndFlagsBits = 0;
  NSLocalizedString(_:tableName:bundle:value:comment:)(v26, v27, v25, v28, v33);

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys7CVarArg_pGMd);
  result = swift_allocObject();
  *(result + 16) = xmmword_20CB5DA70;
  if (!__OFADD__(v16, 1))
  {
    v29 = MEMORY[0x277D83C10];
    *(result + 56) = MEMORY[0x277D83B88];
    *(result + 64) = v29;
    *(result + 32) = v16 + 1;
    countAndFlagsBits = String.init(format:_:)();

    return countAndFlagsBits;
  }

  __break(1u);
  return result;
}

uint64_t closure #3 in closure #1 in VoiceCompanionEntryView.body.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v88 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI6ButtonVyAA4ViewPAAE20accessibilityElement8childrenQrAA26AccessibilityChildBehaviorV_tFQOyAA15ModifiedContentVyAKyAKyAKyAA6VStackVyAA05TupleD0VyAKyAA5ImageVAA0H18AttachmentModifierVG_AeAE10fontWeightyQrAA4FontV0S0VSgFQOyAKyAA4TextVAA022_EnvironmentKeyWritingQ0VyAA0U9AlignmentOGG_Qo_AKyAKyA6_A2_ySiSgGGA2_yAA5ColorVSgGGtGGAA16_FlexFrameLayoutVGAA14_PaddingLayoutVGA2_yAWSgGGAA016_ForegroundStyleQ0VyA12_GG_Qo_GMd);
  v79 = *(v3 - 8);
  v80 = v3;
  MEMORY[0x28223BE20](v3);
  v78 = &v70 - v4;
  v87 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyACyAA4ViewPAAE11buttonStyleyQrqd__AA015PrimitiveButtonG0Rd__lFQOyAA0I0VyAeAE20accessibilityElement8childrenQrAA26AccessibilityChildBehaviorV_tFQOyACyACyACyACyAA6VStackVyAA05TupleE0VyACyAA5ImageVAA0M18AttachmentModifierVG_AeAE10fontWeightyQrAA4FontV0V0VSgFQOyACyAA4TextVAA022_EnvironmentKeyWritingT0VyAA0X9AlignmentOGG_Qo_ACyACyA8_A4_ySiSgGGA4_yAA5ColorVSgGGtGGAA16_FlexFrameLayoutVGAA14_PaddingLayoutVGA4_yAYSgGGAA011_ForegroundgT0VyA14_GG_Qo_G_AA05PlainiG0VQo_AA011_BackgroundT0VyAA06_ShapeE0VyAA16RoundedRectangleVA14_GGGAA01_d9ShapeKindT0VyA43_GGMd);
  MEMORY[0x28223BE20](v87);
  v6 = &v70 - v5;
  v85 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI19_ConditionalContentV7StorageOyAA08ModifiedD0VyAA4ViewPAAE12onTapGesture5count7performQrSi_yyctFQOyAiAE11buttonStyleyQrqd__AA015PrimitiveButtonN0Rd__lFQOyAA0P0VyAGyAGyAGyAGyAGyAGyAGyAGyAGyAA5ImageVAA16_FlexFrameLayoutVGAA08_PaddingT0VGAA011_BackgroundN8ModifierVyAA5ColorVGGAA022_EnvironmentKeyWritingW0VyA0_SgGGAA11_ClipEffectVyAA16RoundedRectangleVGGA4_yAA4FontVSgGGA6_GAA011_ForegroundnW0VyA0_GGAA023AccessibilityAttachmentW0VGG_AA05PlainpN0VQo__Qo_AA01_d9ShapeKindW0VyA11_GGAGyAGyAiAEAMyQrqd__AaNRd__lFQOyAPyAiAE20accessibilityElement8childrenQrAA26AccessibilityChildBehaviorV_tFQOyAGyAGyAGyAGyAA6VStackVyAA05TupleG0VyAGyARA25_G_AiAE10fontWeightyQrA15_6WeightVSgFQOyAGyAA4TextVA4_yAA13TextAlignmentOGG_Qo_AGyAGyA54_A4_ySiSgGGA6_GtGGATGAWGA17_GA22_G_Qo_G_A29_Qo_AA01_vW0VyAA06_ShapeG0VyA11_A0_GGGA34_G_GMd);
  MEMORY[0x28223BE20](v85);
  v86 = &v70 - v7;
  v8 = type metadata accessor for PlainButtonStyle();
  v82 = *(v8 - 8);
  v83 = v8;
  MEMORY[0x28223BE20](v8);
  v81 = &v70 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for VoiceCompanionEntryView();
  v11 = v10 - 8;
  v12 = *(v10 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v10);
  v14 = &v70 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v74 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI6ButtonVyAA15ModifiedContentVyAEyAEyAEyAEyAEyAEyAEyAEyAA5ImageVAA16_FlexFrameLayoutVGAA08_PaddingI0VGAA24_BackgroundStyleModifierVyAA5ColorVGGAA022_EnvironmentKeyWritingM0VyAQSgGGAA11_ClipEffectVyAA16RoundedRectangleVGGAUyAA4FontVSgGGAWGAA011_ForegroundlM0VyAQGGAA023AccessibilityAttachmentM0VGGMd);
  v72 = *(v74 - 8);
  MEMORY[0x28223BE20](v74);
  v16 = &v70 - v15;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI4ViewPAAE11buttonStyleyQrqd__AA015PrimitiveButtonE0Rd__lFQOyAA0G0VyAA15ModifiedContentVyAIyAIyAIyAIyAIyAIyAIyAIyAA5ImageVAA16_FlexFrameLayoutVGAA08_PaddingM0VGAA011_BackgroundE8ModifierVyAA5ColorVGGAA022_EnvironmentKeyWritingP0VyAUSgGGAA11_ClipEffectVyAA16RoundedRectangleVGGAYyAA4FontVSgGGA_GAA011_ForegroundeP0VyAUGGAA023AccessibilityAttachmentP0VGG_AA05PlaingE0VQo_Md);
  v75 = *(v17 - 8);
  v76 = v17;
  MEMORY[0x28223BE20](v17);
  v73 = &v70 - v18;
  v84 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyAA4ViewPAAE12onTapGesture5count7performQrSi_yyctFQOyAeAE11buttonStyleyQrqd__AA015PrimitiveButtonL0Rd__lFQOyAA0N0VyACyACyACyACyACyACyACyACyACyAA5ImageVAA16_FlexFrameLayoutVGAA08_PaddingR0VGAA011_BackgroundL8ModifierVyAA5ColorVGGAA022_EnvironmentKeyWritingU0VyAXSgGGAA11_ClipEffectVyAA16RoundedRectangleVGGA0_yAA4FontVSgGGA2_GAA011_ForegroundlU0VyAXGGAA023AccessibilityAttachmentU0VGG_AA05PlainnL0VQo__Qo_AA01_d9ShapeKindU0VyA7_GGMd);
  MEMORY[0x28223BE20](v84);
  v77 = &v70 - v19;
  v20 = *(a1 + *(v11 + 40));
  outlined init with copy of VoiceCompanionEntryView(a1, v14);
  v21 = (*(v12 + 80) + 16) & ~*(v12 + 80);
  v22 = swift_allocObject();
  if (v20)
  {
    v23 = v6;
    v24 = outlined init with take of VoiceCompanionEntryView(&v70 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0), v22 + v21);
    MEMORY[0x28223BE20](v24);
    *(&v70 - 2) = a1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI4ViewPAAE20accessibilityElement8childrenQrAA26AccessibilityChildBehaviorV_tFQOyAA15ModifiedContentVyAIyAIyAIyAA6VStackVyAA05TupleC0VyAIyAA5ImageVAA0G18AttachmentModifierVG_AcAE10fontWeightyQrAA4FontV0R0VSgFQOyAIyAA4TextVAA022_EnvironmentKeyWritingP0VyAA0T9AlignmentOGG_Qo_AIyAIyA4_A0_ySiSgGGA0_yAA5ColorVSgGGtGGAA16_FlexFrameLayoutVGAA14_PaddingLayoutVGA0_yAUSgGGAA016_ForegroundStyleP0VyA10_GG_Qo_Md);
    v25 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyACyACyACyAA6VStackVyAA9TupleViewVyACyAA5ImageVAA31AccessibilityAttachmentModifierVG_AA0G0PAAE10fontWeightyQrAA4FontV0M0VSgFQOyACyAA4TextVAA022_EnvironmentKeyWritingK0VyAA0O9AlignmentOGG_Qo_ACyACyA0_AXySiSgGGAXyAA5ColorVSgGGtGGAA16_FlexFrameLayoutVGAA08_PaddingW0VGAXyAQSgGGAA016_ForegroundStyleK0VyA6_GGMd);
    v26 = lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<VStack<TupleView<(ModifiedContent<Image, AccessibilityAttachmentModifier>, <<opaque return type of View.fontWeight(_:)>>.0, ModifiedContent<ModifiedContent<ModifiedContent<Text, _EnvironmentKeyWritingModifier<TextAlignment>>, _EnvironmentKeyWritingModifier<Int?>>, _EnvironmentKeyWritingModifier<Color?>>)>>, _FlexFrameLayout>, _PaddingLayout>, _EnvironmentKeyWritingModifier<Font?>>, _ForegroundStyleModifier<Color>> and conformance <> ModifiedContent<A, B>();
    v89 = v25;
    v90 = v26;
    swift_getOpaqueTypeConformance2();
    v27 = v78;
    Button.init(action:label:)();
    v28 = v81;
    PlainButtonStyle.init()();
    lazy protocol witness table accessor for type NavigationLink<<<opaque return type of View.accessibilityElement(children:)>>.0, <<opaque return type of View.navigationTitle<A>(_:)>>.0> and conformance NavigationLink<A, B>(&lazy protocol witness table cache variable for type Button<<<opaque return type of View.accessibilityElement(children:)>>.0> and conformance Button<A>, &_s7SwiftUI6ButtonVyAA4ViewPAAE20accessibilityElement8childrenQrAA26AccessibilityChildBehaviorV_tFQOyAA15ModifiedContentVyAKyAKyAKyAA6VStackVyAA05TupleD0VyAKyAA5ImageVAA0H18AttachmentModifierVG_AeAE10fontWeightyQrAA4FontV0S0VSgFQOyAKyAA4TextVAA022_EnvironmentKeyWritingQ0VyAA0U9AlignmentOGG_Qo_AKyAKyA6_A2_ySiSgGGA2_yAA5ColorVSgGGtGGAA16_FlexFrameLayoutVGAA14_PaddingLayoutVGA2_yAWSgGGAA016_ForegroundStyleQ0VyA12_GG_Qo_GMd);
    lazy protocol witness table accessor for type PlainButtonStyle and conformance PlainButtonStyle(&lazy protocol witness table cache variable for type PlainButtonStyle and conformance PlainButtonStyle, MEMORY[0x277CDDB18]);
    v29 = v80;
    v30 = v83;
    View.buttonStyle<A>(_:)();
    (*(v82 + 8))(v28, v30);
    (*(v79 + 8))(v27, v29);
    v31 = &v6[*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyAA4ViewPAAE11buttonStyleyQrqd__AA015PrimitiveButtonG0Rd__lFQOyAA0I0VyAeAE20accessibilityElement8childrenQrAA26AccessibilityChildBehaviorV_tFQOyACyACyACyACyAA6VStackVyAA05TupleE0VyACyAA5ImageVAA0M18AttachmentModifierVG_AeAE10fontWeightyQrAA4FontV0V0VSgFQOyACyAA4TextVAA022_EnvironmentKeyWritingT0VyAA0X9AlignmentOGG_Qo_ACyACyA8_A4_ySiSgGGA4_yAA5ColorVSgGGtGGAA16_FlexFrameLayoutVGAA14_PaddingLayoutVGA4_yAYSgGGAA011_ForegroundgT0VyA14_GG_Qo_G_AA05PlainiG0VQo_AA011_BackgroundT0VyAA06_ShapeE0VyAA16RoundedRectangleVA14_GGGMd) + 36)];
    v32 = type metadata accessor for RoundedRectangle();
    v33 = *(v32 + 20);
    v34 = *MEMORY[0x277CE0118];
    v35 = type metadata accessor for RoundedCornerStyle();
    v36 = *(*(v35 - 8) + 104);
    v36(&v31[v33], v34, v35);
    __asm { FMOV            V0.2D, #26.0 }

    *v31 = _Q0;
    v42 = [objc_opt_self() secondarySystemBackgroundColor];
    v43 = Color.init(uiColor:)();
    v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI10_ShapeViewVyAA16RoundedRectangleVAA5ColorVGMd);
    *&v31[*(v44 + 52)] = v43;
    *&v31[*(v44 + 56)] = 256;
    v45 = static Alignment.center.getter();
    v47 = v46;
    v48 = &v31[*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI19_BackgroundModifierVyAA10_ShapeViewVyAA16RoundedRectangleVAA5ColorVGGMd) + 36)];
    *v48 = v45;
    v48[1] = v47;
    v49 = (v23 + *(v87 + 36));
    v50 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI25_ContentShapeKindModifierVyAA16RoundedRectangleVGMd);
    static ContentShapeKinds.accessibility.getter();
    v36(&v49[*(v32 + 20)], v34, v35);
    __asm { FMOV            V0.2D, #15.0 }

    *v49 = _Q0;
    v49[*(v50 + 36)] = 0;
    v52 = &_s7SwiftUI15ModifiedContentVyACyAA4ViewPAAE11buttonStyleyQrqd__AA015PrimitiveButtonG0Rd__lFQOyAA0I0VyAeAE20accessibilityElement8childrenQrAA26AccessibilityChildBehaviorV_tFQOyACyACyACyACyAA6VStackVyAA05TupleE0VyACyAA5ImageVAA0M18AttachmentModifierVG_AeAE10fontWeightyQrAA4FontV0V0VSgFQOyACyAA4TextVAA022_EnvironmentKeyWritingT0VyAA0X9AlignmentOGG_Qo_ACyACyA8_A4_ySiSgGGA4_yAA5ColorVSgGGtGGAA16_FlexFrameLayoutVGAA14_PaddingLayoutVGA4_yAYSgGGAA011_ForegroundgT0VyA14_GG_Qo_G_AA05PlainiG0VQo_AA011_BackgroundT0VyAA06_ShapeE0VyAA16RoundedRectangleVA14_GGGAA01_d9ShapeKindT0VyA43_GGMd;
    outlined init with copy of ModifiedContent<ModifiedContent<<<opaque return type of View.buttonStyle<A>(_:)>>.0, _BackgroundModifier<_ShapeView<RoundedRectangle, Color>>>, _ContentShapeKindModifier<RoundedRectangle>>(v23, v86, &_s7SwiftUI15ModifiedContentVyACyAA4ViewPAAE11buttonStyleyQrqd__AA015PrimitiveButtonG0Rd__lFQOyAA0I0VyAeAE20accessibilityElement8childrenQrAA26AccessibilityChildBehaviorV_tFQOyACyACyACyACyAA6VStackVyAA05TupleE0VyACyAA5ImageVAA0M18AttachmentModifierVG_AeAE10fontWeightyQrAA4FontV0V0VSgFQOyACyAA4TextVAA022_EnvironmentKeyWritingT0VyAA0X9AlignmentOGG_Qo_ACyACyA8_A4_ySiSgGGA4_yAA5ColorVSgGGtGGAA16_FlexFrameLayoutVGAA14_PaddingLayoutVGA4_yAYSgGGAA011_ForegroundgT0VyA14_GG_Qo_G_AA05PlainiG0VQo_AA011_BackgroundT0VyAA06_ShapeE0VyAA16RoundedRectangleVA14_GGGAA01_d9ShapeKindT0VyA43_GGMd);
    swift_storeEnumTagMultiPayload();
    lazy protocol witness table accessor for type ModifiedContent<<<opaque return type of View.onTapGesture(count:perform:)>>.0, _ContentShapeKindModifier<RoundedRectangle>> and conformance <> ModifiedContent<A, B>();
    lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<<<opaque return type of View.buttonStyle<A>(_:)>>.0, _BackgroundModifier<_ShapeView<RoundedRectangle, Color>>>, _ContentShapeKindModifier<RoundedRectangle>> and conformance <> ModifiedContent<A, B>();
    _ConditionalContent<>.init(storage:)();
    v53 = v23;
  }

  else
  {
    v54 = outlined init with take of VoiceCompanionEntryView(&v70 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0), v22 + v21);
    MEMORY[0x28223BE20](v54);
    v71 = a1;
    *(&v70 - 2) = a1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyACyACyACyACyACyACyACyACyAA5ImageVAA16_FlexFrameLayoutVGAA08_PaddingH0VGAA24_BackgroundStyleModifierVyAA5ColorVGGAA022_EnvironmentKeyWritingL0VyAOSgGGAA11_ClipEffectVyAA16RoundedRectangleVGGASyAA4FontVSgGGAUGAA011_ForegroundkL0VyAOGGAA023AccessibilityAttachmentL0VGMd);
    lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Image, _FlexFrameLayout>, _PaddingLayout>, _BackgroundStyleModifier<Color>>, _EnvironmentKeyWritingModifier<Color?>>, _ClipEffect<RoundedRectangle>>, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyWritingModifier<Color?>>, _ForegroundStyleModifier<Color>>, AccessibilityAttachmentModifier> and conformance <> ModifiedContent<A, B>();
    Button.init(action:label:)();
    v55 = v81;
    PlainButtonStyle.init()();
    v79 = lazy protocol witness table accessor for type NavigationLink<<<opaque return type of View.accessibilityElement(children:)>>.0, <<opaque return type of View.navigationTitle<A>(_:)>>.0> and conformance NavigationLink<A, B>(&lazy protocol witness table cache variable for type Button<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Image, _FlexFrameLayout>, _PaddingLayout>, _BackgroundStyleModifier<Color>>, _EnvironmentKeyWritingModifier<Color?>>, _ClipEffect<RoundedRectangle>>, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyWritingModifier<Color?>>, _ForegroundStyleModifier<Color>>, AccessibilityAttachmentModifier>> and conformance Button<A>, &_s7SwiftUI6ButtonVyAA15ModifiedContentVyAEyAEyAEyAEyAEyAEyAEyAEyAA5ImageVAA16_FlexFrameLayoutVGAA08_PaddingI0VGAA24_BackgroundStyleModifierVyAA5ColorVGGAA022_EnvironmentKeyWritingM0VyAQSgGGAA11_ClipEffectVyAA16RoundedRectangleVGGAUyAA4FontVSgGGAWGAA011_ForegroundlM0VyAQGGAA023AccessibilityAttachmentM0VGGMd);
    v80 = v13;
    v56 = lazy protocol witness table accessor for type PlainButtonStyle and conformance PlainButtonStyle(&lazy protocol witness table cache variable for type PlainButtonStyle and conformance PlainButtonStyle, MEMORY[0x277CDDB18]);
    v57 = v73;
    v58 = v74;
    v59 = v83;
    View.buttonStyle<A>(_:)();
    (*(v82 + 8))(v55, v59);
    (*(v72 + 8))(v16, v58);
    outlined init with copy of VoiceCompanionEntryView(v71, v14);
    v60 = swift_allocObject();
    outlined init with take of VoiceCompanionEntryView(v14, v60 + v21);
    v89 = v58;
    v90 = v59;
    v91 = v79;
    v92 = v56;
    swift_getOpaqueTypeConformance2();
    v61 = v76;
    v62 = v77;
    View.onTapGesture(count:perform:)();

    (*(v75 + 8))(v57, v61);
    v63 = (v62 + *(v84 + 36));
    v64 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI25_ContentShapeKindModifierVyAA16RoundedRectangleVGMd);
    static ContentShapeKinds.accessibility.getter();
    v65 = *(type metadata accessor for RoundedRectangle() + 20);
    v66 = *MEMORY[0x277CE0118];
    v67 = type metadata accessor for RoundedCornerStyle();
    (*(*(v67 - 8) + 104))(&v63[v65], v66, v67);
    __asm { FMOV            V0.2D, #16.0 }

    *v63 = _Q0;
    v63[*(v64 + 36)] = 0;
    v52 = &_s7SwiftUI15ModifiedContentVyAA4ViewPAAE12onTapGesture5count7performQrSi_yyctFQOyAeAE11buttonStyleyQrqd__AA015PrimitiveButtonL0Rd__lFQOyAA0N0VyACyACyACyACyACyACyACyACyACyAA5ImageVAA16_FlexFrameLayoutVGAA08_PaddingR0VGAA011_BackgroundL8ModifierVyAA5ColorVGGAA022_EnvironmentKeyWritingU0VyAXSgGGAA11_ClipEffectVyAA16RoundedRectangleVGGA0_yAA4FontVSgGGA2_GAA011_ForegroundlU0VyAXGGAA023AccessibilityAttachmentU0VGG_AA05PlainnL0VQo__Qo_AA01_d9ShapeKindU0VyA7_GGMd;
    outlined init with copy of ModifiedContent<ModifiedContent<<<opaque return type of View.buttonStyle<A>(_:)>>.0, _BackgroundModifier<_ShapeView<RoundedRectangle, Color>>>, _ContentShapeKindModifier<RoundedRectangle>>(v62, v86, &_s7SwiftUI15ModifiedContentVyAA4ViewPAAE12onTapGesture5count7performQrSi_yyctFQOyAeAE11buttonStyleyQrqd__AA015PrimitiveButtonL0Rd__lFQOyAA0N0VyACyACyACyACyACyACyACyACyACyAA5ImageVAA16_FlexFrameLayoutVGAA08_PaddingR0VGAA011_BackgroundL8ModifierVyAA5ColorVGGAA022_EnvironmentKeyWritingU0VyAXSgGGAA11_ClipEffectVyAA16RoundedRectangleVGGA0_yAA4FontVSgGGA2_GAA011_ForegroundlU0VyAXGGAA023AccessibilityAttachmentU0VGG_AA05PlainnL0VQo__Qo_AA01_d9ShapeKindU0VyA7_GGMd);
    swift_storeEnumTagMultiPayload();
    lazy protocol witness table accessor for type ModifiedContent<<<opaque return type of View.onTapGesture(count:perform:)>>.0, _ContentShapeKindModifier<RoundedRectangle>> and conformance <> ModifiedContent<A, B>();
    lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<<<opaque return type of View.buttonStyle<A>(_:)>>.0, _BackgroundModifier<_ShapeView<RoundedRectangle, Color>>>, _ContentShapeKindModifier<RoundedRectangle>> and conformance <> ModifiedContent<A, B>();
    _ConditionalContent<>.init(storage:)();
    v53 = v62;
  }

  return outlined destroy of ModifiedContent<Group<_ConditionalContent<NavigationLink<<<opaque return type of View.accessibilityElement(children:)>>.0, <<opaque return type of View.navigationTitle<A>(_:)>>.0>, <<opaque return type of View.sheet<A>(isPresented:onDismiss:content:)>>.0>>, _TaskModifier>(v53, v52);
}

uint64_t closure #4 in closure #1 in VoiceCompanionEntryView.body.getter()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI4ViewPAAE7toolbar7contentQrqd__yXE_tAA14ToolbarContentRd__lFQOyAA08ModifiedG0VyAHyAHyAHyAA4ListVys5NeverO07WorkoutB0022VoiceCompanionSettingsC0VGAA30_EnvironmentKeyWritingModifierVy12CoreGraphics7CGFloatVSgGGAA06_TraitqR0VyAA0i14SectionSpacingvP0VGGARyAA0iwX0VSgGGAM24InlineNavigationBarTitle33_B86241820663BC1B3220D14BE7395977LLVG_AA0fG7BuilderV10buildBlockyQrxAaFRzlFZQOy_AA0F4ItemVyytAHyAA6ButtonVyAA18DefaultButtonLabelVGARyAA13AnyShapeStyleVSgGGGQo_Qo_Md);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyACyACyACyAA4ListVys5NeverO07WorkoutB026VoiceCompanionSettingsViewVGAA30_EnvironmentKeyWritingModifierVy12CoreGraphics7CGFloatVSgGGAA06_TraitnO0VyAA0e14SectionSpacingsM0VGGAMyAA0etU0VSgGGAH24InlineNavigationBarTitle33_B86241820663BC1B3220D14BE7395977LLVGMd);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI21ToolbarContentBuilderV10buildBlockyQrxAA0cD0RzlFZQOy_AA0C4ItemVyytAA08ModifiedD0VyAA6ButtonVyAA07DefaultJ5LabelVGAA30_EnvironmentKeyWritingModifierVyAA13AnyShapeStyleVSgGGGQo_Md);
  lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<List<Never, VoiceCompanionSettingsView>, _EnvironmentKeyWritingModifier<CGFloat?>>, _TraitWritingModifier<ListSectionSpacingTraitKey>>, _EnvironmentKeyWritingModifier<ListSectionSpacing?>>, InlineNavigationBarTitle> and conformance <> ModifiedContent<A, B>();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI11ToolbarItemVyytAA15ModifiedContentVyAA6ButtonVyAA07DefaultG5LabelVGAA30_EnvironmentKeyWritingModifierVyAA13AnyShapeStyleVSgGGGMd);
  lazy protocol witness table accessor for type NavigationLink<<<opaque return type of View.accessibilityElement(children:)>>.0, <<opaque return type of View.navigationTitle<A>(_:)>>.0> and conformance NavigationLink<A, B>(&lazy protocol witness table cache variable for type ToolbarItem<(), ModifiedContent<Button<DefaultButtonLabel>, _EnvironmentKeyWritingModifier<AnyShapeStyle?>>> and conformance ToolbarItem<A, B>, &_s7SwiftUI11ToolbarItemVyytAA15ModifiedContentVyAA6ButtonVyAA07DefaultG5LabelVGAA30_EnvironmentKeyWritingModifierVyAA13AnyShapeStyleVSgGGGMd);
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeConformance2();
  return NavigationStack.init<>(root:)();
}

uint64_t closure #1 in closure #4 in closure #1 in VoiceCompanionEntryView.body.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v26[1] = a2;
  v3 = type metadata accessor for ListSectionSpacing();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = v26 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyACyACyACyAA4ListVys5NeverO07WorkoutB026VoiceCompanionSettingsViewVGAA30_EnvironmentKeyWritingModifierVy12CoreGraphics7CGFloatVSgGGAA06_TraitnO0VyAA0e14SectionSpacingsM0VGGAMyAA0etU0VSgGGAH24InlineNavigationBarTitle33_B86241820663BC1B3220D14BE7395977LLVGMd);
  MEMORY[0x28223BE20](v7);
  v9 = v26 - v8;
  v26[0] = a1;
  v26[4] = a1;
  type metadata accessor for VoiceCompanionSettingsView();
  lazy protocol witness table accessor for type PlainButtonStyle and conformance PlainButtonStyle(&lazy protocol witness table cache variable for type VoiceCompanionSettingsView and conformance VoiceCompanionSettingsView, type metadata accessor for VoiceCompanionSettingsView);
  List<>.init(content:)();
  KeyPath = swift_getKeyPath();
  v11 = &v9[*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyAA4ListVys5NeverO07WorkoutB026VoiceCompanionSettingsViewVGAA30_EnvironmentKeyWritingModifierVy12CoreGraphics7CGFloatVSgGGMd) + 36)];
  *v11 = KeyPath;
  *(v11 + 1) = 0;
  v11[16] = 1;
  static ListSectionSpacing.custom(_:)();
  v12 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyACyAA4ListVys5NeverO07WorkoutB026VoiceCompanionSettingsViewVGAA30_EnvironmentKeyWritingModifierVy12CoreGraphics7CGFloatVSgGGAA06_TraitnO0VyAA0e14SectionSpacingsM0VGGMd) + 36);
  (*(v4 + 16))(&v9[v12], v6, v3);
  v13 = *(v4 + 56);
  v13(&v9[v12], 0, 1, v3);
  v14 = swift_getKeyPath();
  v15 = &v9[*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyACyACyAA4ListVys5NeverO07WorkoutB026VoiceCompanionSettingsViewVGAA30_EnvironmentKeyWritingModifierVy12CoreGraphics7CGFloatVSgGGAA06_TraitnO0VyAA0e14SectionSpacingsM0VGGAMyAA0etU0VSgGGMd) + 36)];
  v16 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI30_EnvironmentKeyWritingModifierVyAA18ListSectionSpacingVSgGMd) + 28);
  (*(v4 + 32))(v15 + v16, v6, v3);
  v13(v15 + v16, 0, 1, v3);
  *v15 = v14;
  if (one-time initialization token for WorkoutUIBundle != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v17 = WorkoutUIBundle.super.isa;
  v27._object = 0xE000000000000000;
  v18._countAndFlagsBits = 0x5F54554F4B524F57;
  v18._object = 0xED00005944445542;
  v19.value._countAndFlagsBits = 0x617A696C61636F4CLL;
  v19.value._object = 0xEB00000000656C62;
  v20._countAndFlagsBits = 0;
  v20._object = 0xE000000000000000;
  v27._countAndFlagsBits = 0;
  v21 = NSLocalizedString(_:tableName:bundle:value:comment:)(v18, v19, v17, v20, v27);

  *&v9[*(v7 + 36)] = v21;
  MEMORY[0x28223BE20](v22);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI21ToolbarContentBuilderV10buildBlockyQrxAA0cD0RzlFZQOy_AA0C4ItemVyytAA08ModifiedD0VyAA6ButtonVyAA07DefaultJ5LabelVGAA30_EnvironmentKeyWritingModifierVyAA13AnyShapeStyleVSgGGGQo_Md);
  lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<List<Never, VoiceCompanionSettingsView>, _EnvironmentKeyWritingModifier<CGFloat?>>, _TraitWritingModifier<ListSectionSpacingTraitKey>>, _EnvironmentKeyWritingModifier<ListSectionSpacing?>>, InlineNavigationBarTitle> and conformance <> ModifiedContent<A, B>();
  v23 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI11ToolbarItemVyytAA15ModifiedContentVyAA6ButtonVyAA07DefaultG5LabelVGAA30_EnvironmentKeyWritingModifierVyAA13AnyShapeStyleVSgGGGMd);
  v24 = lazy protocol witness table accessor for type NavigationLink<<<opaque return type of View.accessibilityElement(children:)>>.0, <<opaque return type of View.navigationTitle<A>(_:)>>.0> and conformance NavigationLink<A, B>(&lazy protocol witness table cache variable for type ToolbarItem<(), ModifiedContent<Button<DefaultButtonLabel>, _EnvironmentKeyWritingModifier<AnyShapeStyle?>>> and conformance ToolbarItem<A, B>, &_s7SwiftUI11ToolbarItemVyytAA15ModifiedContentVyAA6ButtonVyAA07DefaultG5LabelVGAA30_EnvironmentKeyWritingModifierVyAA13AnyShapeStyleVSgGGGMd);
  v26[5] = v23;
  v26[6] = v24;
  swift_getOpaqueTypeConformance2();
  View.toolbar<A>(content:)();
  return outlined destroy of HStack<TupleView<(ModifiedContent<ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Color?>>, _PaddingLayout>, AccessibilityAttachmentModifier>, NavigationLabelView, Spacer)>>(v9, &_s7SwiftUI15ModifiedContentVyACyACyACyAA4ListVys5NeverO07WorkoutB026VoiceCompanionSettingsViewVGAA30_EnvironmentKeyWritingModifierVy12CoreGraphics7CGFloatVSgGGAA06_TraitnO0VyAA0e14SectionSpacingsM0VGGAMyAA0etU0VSgGGAH24InlineNavigationBarTitle33_B86241820663BC1B3220D14BE7395977LLVGMd);
}

uint64_t closure #2 in closure #1 in closure #4 in closure #1 in VoiceCompanionEntryView.body.getter(uint64_t a1)
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
  v7 = lazy protocol witness table accessor for type NavigationLink<<<opaque return type of View.accessibilityElement(children:)>>.0, <<opaque return type of View.navigationTitle<A>(_:)>>.0> and conformance NavigationLink<A, B>(&lazy protocol witness table cache variable for type ToolbarItem<(), ModifiedContent<Button<DefaultButtonLabel>, _EnvironmentKeyWritingModifier<AnyShapeStyle?>>> and conformance ToolbarItem<A, B>, &_s7SwiftUI11ToolbarItemVyytAA15ModifiedContentVyAA6ButtonVyAA07DefaultG5LabelVGAA30_EnvironmentKeyWritingModifierVyAA13AnyShapeStyleVSgGGGMd);
  MEMORY[0x20F3098F0](v6, v3, v7);
  return (*(v4 + 8))(v6, v3);
}

void closure #1 in closure #2 in closure #1 in closure #4 in closure #1 in VoiceCompanionEntryView.body.getter(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for VoiceCompanionEntryView();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = type metadata accessor for ButtonRole();
  MEMORY[0x28223BE20](v7 - 8);
  v9 = v23 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI6ButtonVyAA07DefaultC5LabelVGMd);
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = v23 - v12;
  static ButtonRole.cancel.getter();
  outlined init with copy of VoiceCompanionEntryView(a1, v23 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v14 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v15 = swift_allocObject();
  outlined init with take of VoiceCompanionEntryView(v23 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), v15 + v14);
  MEMORY[0x20F30AF90](v9, partial apply for closure #1 in closure #1 in closure #2 in closure #1 in closure #4 in closure #1 in VoiceCompanionEntryView.body.getter, v15);
  v16 = [objc_opt_self() keyColors];
  if (v16)
  {
    v17 = v16;
    v18 = [v16 nonGradientTextColor];

    if (v18)
    {
      v19 = Color.init(uiColor:)();
      KeyPath = swift_getKeyPath();
      v23[1] = v19;
      v21 = AnyShapeStyle.init<A>(_:)();
      (*(v11 + 32))(a2, v13, v10);
      v22 = (a2 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyAA6ButtonVyAA07DefaultE5LabelVGAA30_EnvironmentKeyWritingModifierVyAA13AnyShapeStyleVSgGGMd) + 36));
      *v22 = KeyPath;
      v22[1] = v21;
      return;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
}

uint64_t closure #2 in VoiceCompanionEntryView.body.getter(uint64_t a1)
{
  *(v1 + 32) = a1;
  type metadata accessor for MainActor();
  *(v1 + 40) = static MainActor.shared.getter();
  v3 = dispatch thunk of Actor.unownedExecutor.getter();

  return MEMORY[0x2822009F8](closure #2 in VoiceCompanionEntryView.body.getter, v3, v2);
}

uint64_t closure #2 in VoiceCompanionEntryView.body.getter()
{
  v1 = *(v0 + 32);

  v2 = [*(v1 + 32) workoutActivityType];
  v3 = FIIsWorkoutVoiceEnabledForActivityType();

  v4 = (v1 + *(type metadata accessor for VoiceCompanionEntryView() + 40));
  v5 = *v4;
  v6 = *(v4 + 1);
  *(v0 + 16) = v5;
  *(v0 + 24) = v6;
  *(v0 + 48) = v3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI5StateVySbGMd);
  State.wrappedValue.setter();
  v7 = *(v0 + 8);

  return v7();
}

void closure #3 in VoiceCompanionEntryView.body.getter(uint64_t a1)
{
  v1 = [*(a1 + 32) workoutActivityType];
  type metadata accessor for VoiceCompanionEntryView();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI5StateVySbGMd);
  State.wrappedValue.getter();
  FISetWorkoutVoiceIsEnabledForActivityType();
}

uint64_t closure #2 in VoiceCompanionEntryView.activityPickerButton()@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v89 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI4FontV6DesignOSgMd);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v72 - v4;
  v85 = type metadata accessor for Font.TextStyle();
  v84 = *(v85 - 8);
  MEMORY[0x28223BE20](v85);
  v83 = &v72 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v75 = type metadata accessor for EnvironmentValues();
  v74 = *(v75 - 8);
  MEMORY[0x28223BE20](v75);
  v73 = &v72 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v78 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyACyACyACyACyAA5ImageVAA16_FlexFrameLayoutVGAA08_PaddingH0VGAA24_BackgroundStyleModifierVyAA5ColorVGGAA022_EnvironmentKeyWritingL0VyAOSgGGAA11_ClipEffectVyAA16RoundedRectangleVGGMd);
  MEMORY[0x28223BE20](v78);
  v9 = &v72 - v8;
  v79 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyACyACyACyACyACyAA5ImageVAA16_FlexFrameLayoutVGAA08_PaddingH0VGAA24_BackgroundStyleModifierVyAA5ColorVGGAA022_EnvironmentKeyWritingL0VyAOSgGGAA11_ClipEffectVyAA16RoundedRectangleVGGASyAA4FontVSgGGMd);
  MEMORY[0x28223BE20](v79);
  v82 = &v72 - v10;
  v81 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyACyACyACyACyACyACyAA5ImageVAA16_FlexFrameLayoutVGAA08_PaddingH0VGAA24_BackgroundStyleModifierVyAA5ColorVGGAA022_EnvironmentKeyWritingL0VyAOSgGGAA11_ClipEffectVyAA16RoundedRectangleVGGASyAA4FontVSgGGAUGMd);
  MEMORY[0x28223BE20](v81);
  v80 = &v72 - v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyACyACyACyACyACyACyACyAA5ImageVAA16_FlexFrameLayoutVGAA08_PaddingH0VGAA24_BackgroundStyleModifierVyAA5ColorVGGAA022_EnvironmentKeyWritingL0VyAOSgGGAA11_ClipEffectVyAA16RoundedRectangleVGGASyAA4FontVSgGGAUGAA011_ForegroundkL0VyAOGGMd);
  MEMORY[0x28223BE20](v12);
  v14 = &v72 - v13;
  v87 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyACyACyACyACyACyACyACyACyAA5ImageVAA16_FlexFrameLayoutVGAA08_PaddingH0VGAA24_BackgroundStyleModifierVyAA5ColorVGGAA022_EnvironmentKeyWritingL0VyAOSgGGAA11_ClipEffectVyAA16RoundedRectangleVGGASyAA4FontVSgGGAUGAA011_ForegroundkL0VyAOGGAA023AccessibilityAttachmentL0VGMd);
  MEMORY[0x28223BE20](v87);
  v88 = &v72 - v15;
  v77 = VoiceCompanionEntryView.voiceSymbol.getter();
  static Alignment.center.getter();
  _FlexFrameLayout.init(minWidth:idealWidth:maxWidth:minHeight:idealHeight:maxHeight:alignment:)();
  v76 = static Edge.Set.all.getter();
  v101 = 1;
  type metadata accessor for FIUIWorkoutActivityType(0, &lazy cache variable for type metadata for NLSessionActivityGoal);
  v16 = static NLSessionActivityGoal.makeOpenGoal()();
  v17 = NLSessionActivityGoal.isTimeAndDistanceGoal()();
  v86 = v12;
  if (v17)
  {
    v18 = [objc_allocWithZone(MEMORY[0x277D75348]) initWithDisplayP3Red:0.458823529 green:0.898039216 blue:0.898039216 alpha:1.0];
    v19 = [v18 colorWithAlphaComponent_];
  }

  else
  {
    _HKWorkoutGoalType.platterColor.getter([v16 goalTypeIdentifier]);
  }

  Color.init(uiColor:)();
  v20 = (a1 + *(type metadata accessor for VoiceCompanionEntryView() + 40));
  v21 = *v20;
  v22 = *(v20 + 1);
  LOBYTE(v92) = *v20;
  v93 = v22;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI5StateVySbGMd);
  State.wrappedValue.getter();
  v90 = a1;
  if (LOBYTE(v91._countAndFlagsBits) == 1)
  {
    v23 = *(a1 + 16);
    if (*(a1 + 24) == 1)
    {
      v24 = v23;
    }

    else
    {

      static os_log_type_t.fault.getter();
      v25 = static Log.runtimeIssuesLog.getter();
      os_log(_:dso:log:_:_:)();

      v26 = v73;
      EnvironmentValues.init()();
      swift_getAtKeyPath();
      outlined consume of Environment<WorkoutVoiceAvailabilityProvider>.Content(v23, 0);
      (*(v74 + 8))(v26, v75);
      v24 = v92;
    }

    v27 = dispatch thunk of WorkoutVoiceAvailabilityProvider.availabilityState.getter();

    WorkoutVoiceAvailabilityProvider.State.isFeatureAvailable.getter();
    outlined consume of WorkoutVoiceAvailabilityProvider.State(v27);
  }

  v28 = Color.opacity(_:)();

  v29 = static Edge.Set.all.getter();
  static Color.white.getter();
  LOBYTE(v92) = v21;
  v93 = v22;
  State.wrappedValue.getter();
  if (LOBYTE(v91._countAndFlagsBits) == 1)
  {
    v30 = *(v90 + 16);
    if (*(v90 + 24) == 1)
    {
      v31 = v30;
    }

    else
    {

      static os_log_type_t.fault.getter();
      v32 = static Log.runtimeIssuesLog.getter();
      os_log(_:dso:log:_:_:)();

      v33 = v73;
      EnvironmentValues.init()();
      swift_getAtKeyPath();
      outlined consume of Environment<WorkoutVoiceAvailabilityProvider>.Content(v30, 0);
      (*(v74 + 8))(v33, v75);
      v31 = v92;
    }

    v34 = dispatch thunk of WorkoutVoiceAvailabilityProvider.availabilityState.getter();

    WorkoutVoiceAvailabilityProvider.State.isFeatureAvailable.getter();
    outlined consume of WorkoutVoiceAvailabilityProvider.State(v34);
  }

  v35 = Color.opacity(_:)();

  KeyPath = swift_getKeyPath();
  v37 = &v9[*(v78 + 36)];
  v38 = *(type metadata accessor for RoundedRectangle() + 20);
  v39 = *MEMORY[0x277CE0118];
  v40 = type metadata accessor for RoundedCornerStyle();
  (*(*(v40 - 8) + 104))(&v37[v38], v39, v40);
  __asm { FMOV            V0.2D, #16.0 }

  *v37 = _Q0;
  *&v37[*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI11_ClipEffectVyAA16RoundedRectangleVGMd) + 36)] = 256;
  v46 = v96;
  *(v9 + 56) = v97;
  v47 = v99;
  *(v9 + 72) = v98;
  *(v9 + 88) = v47;
  *(v9 + 104) = v100;
  v48 = v95;
  *(v9 + 8) = v94;
  *(v9 + 24) = v48;
  *v9 = v77;
  *(v9 + 40) = v46;
  v9[120] = v76;
  *(v9 + 8) = 0u;
  *(v9 + 9) = 0u;
  v9[160] = 1;
  *(v9 + 21) = v28;
  v9[176] = v29;
  *(v9 + 23) = KeyPath;
  *(v9 + 24) = v35;
  v49 = v84;
  v50 = v83;
  v51 = v85;
  (*(v84 + 104))(v83, *MEMORY[0x277CE0A68], v85);
  v52 = *MEMORY[0x277CE0990];
  v53 = type metadata accessor for Font.Design();
  v54 = *(v53 - 8);
  (*(v54 + 104))(v5, v52, v53);
  (*(v54 + 56))(v5, 0, 1, v53);
  static Font.system(_:design:weight:)();
  outlined destroy of HStack<TupleView<(ModifiedContent<ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Color?>>, _PaddingLayout>, AccessibilityAttachmentModifier>, NavigationLabelView, Spacer)>>(v5, &_s7SwiftUI4FontV6DesignOSgMd);
  (*(v49 + 8))(v50, v51);
  static Font.Weight.semibold.getter();
  v55 = Font.weight(_:)();

  v56 = swift_getKeyPath();
  v57 = v82;
  outlined init with take of ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Image, _FlexFrameLayout>, _PaddingLayout>, _BackgroundStyleModifier<Color>>, _EnvironmentKeyWritingModifier<Color?>>, _ClipEffect<RoundedRectangle>>(v9, v82, &_s7SwiftUI15ModifiedContentVyACyACyACyACyAA5ImageVAA16_FlexFrameLayoutVGAA08_PaddingH0VGAA24_BackgroundStyleModifierVyAA5ColorVGGAA022_EnvironmentKeyWritingL0VyAOSgGGAA11_ClipEffectVyAA16RoundedRectangleVGGMd);
  v58 = (v57 + *(v79 + 36));
  *v58 = v56;
  v58[1] = v55;
  v59 = static Color.primary.getter();
  v60 = swift_getKeyPath();
  v61 = v80;
  outlined init with take of ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Image, _FlexFrameLayout>, _PaddingLayout>, _BackgroundStyleModifier<Color>>, _EnvironmentKeyWritingModifier<Color?>>, _ClipEffect<RoundedRectangle>>(v57, v80, &_s7SwiftUI15ModifiedContentVyACyACyACyACyACyAA5ImageVAA16_FlexFrameLayoutVGAA08_PaddingH0VGAA24_BackgroundStyleModifierVyAA5ColorVGGAA022_EnvironmentKeyWritingL0VyAOSgGGAA11_ClipEffectVyAA16RoundedRectangleVGGASyAA4FontVSgGGMd);
  v62 = (v61 + *(v81 + 36));
  *v62 = v60;
  v62[1] = v59;
  v63 = static Color.white.getter();
  outlined init with take of ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Image, _FlexFrameLayout>, _PaddingLayout>, _BackgroundStyleModifier<Color>>, _EnvironmentKeyWritingModifier<Color?>>, _ClipEffect<RoundedRectangle>>(v61, v14, &_s7SwiftUI15ModifiedContentVyACyACyACyACyACyACyAA5ImageVAA16_FlexFrameLayoutVGAA08_PaddingH0VGAA24_BackgroundStyleModifierVyAA5ColorVGGAA022_EnvironmentKeyWritingL0VyAOSgGGAA11_ClipEffectVyAA16RoundedRectangleVGGASyAA4FontVSgGGAUGMd);
  *&v14[*(v86 + 36)] = v63;
  if (one-time initialization token for WorkoutUIBundle != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v64 = WorkoutUIBundle.super.isa;
  v102._object = 0xE000000000000000;
  v65._countAndFlagsBits = 0x5F54554F4B524F57;
  v65._object = 0xED00005944445542;
  v66.value._countAndFlagsBits = 0x617A696C61636F4CLL;
  v66.value._object = 0xEB00000000656C62;
  v67._countAndFlagsBits = 0;
  v67._object = 0xE000000000000000;
  v102._countAndFlagsBits = 0;
  v68 = NSLocalizedString(_:tableName:bundle:value:comment:)(v65, v66, v64, v67, v102);

  v91 = v68;
  lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Image, _FlexFrameLayout>, _PaddingLayout>, _BackgroundStyleModifier<Color>>, _EnvironmentKeyWritingModifier<Color?>>, _ClipEffect<RoundedRectangle>>, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyWritingModifier<Color?>>, _ForegroundStyleModifier<Color>> and conformance <> ModifiedContent<A, B>();
  lazy protocol witness table accessor for type String and conformance String();
  v69 = v88;
  View.accessibilityLabel<A>(_:)();

  outlined destroy of HStack<TupleView<(ModifiedContent<ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Color?>>, _PaddingLayout>, AccessibilityAttachmentModifier>, NavigationLabelView, Spacer)>>(v14, &_s7SwiftUI15ModifiedContentVyACyACyACyACyACyACyACyAA5ImageVAA16_FlexFrameLayoutVGAA08_PaddingH0VGAA24_BackgroundStyleModifierVyAA5ColorVGGAA022_EnvironmentKeyWritingL0VyAOSgGGAA11_ClipEffectVyAA16RoundedRectangleVGGASyAA4FontVSgGGAUGAA011_ForegroundkL0VyAOGGMd);
  v91._countAndFlagsBits = VoiceCompanionEntryView.footnote.getter();
  v91._object = v70;
  ModifiedContent<>.accessibilityValue<A>(_:)();

  return outlined destroy of HStack<TupleView<(ModifiedContent<ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Color?>>, _PaddingLayout>, AccessibilityAttachmentModifier>, NavigationLabelView, Spacer)>>(v69, &_s7SwiftUI15ModifiedContentVyACyACyACyACyACyACyACyACyAA5ImageVAA16_FlexFrameLayoutVGAA08_PaddingH0VGAA24_BackgroundStyleModifierVyAA5ColorVGGAA022_EnvironmentKeyWritingL0VyAOSgGGAA11_ClipEffectVyAA16RoundedRectangleVGGASyAA4FontVSgGGAUGAA011_ForegroundkL0VyAOGGAA023AccessibilityAttachmentL0VGMd);
}

unint64_t closure #3 in VoiceCompanionEntryView.activityPickerButton()(uint64_t a1)
{
  v2 = type metadata accessor for EnvironmentValues();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v19 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for VoiceCompanionEntryView();
  v7 = (a1 + *(v6 + 40));
  v8 = *v7;
  v9 = *(v7 + 1);
  LOBYTE(v21) = v8;
  v22 = v9;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI5StateVySbGMd);
  State.wrappedValue.getter();
  if (v20 != 1 || ((v10 = *(a1 + 16), *(a1 + 24) != 1) ? (, static os_log_type_t.fault.getter(), v12 = static Log.runtimeIssuesLog.getter(), os_log(_:dso:log:_:_:)(), v12, EnvironmentValues.init()(), swift_getAtKeyPath(), outlined consume of Environment<WorkoutVoiceAvailabilityProvider>.Content(v10, 0), (*(v3 + 8))(v5, v2), v11 = v21) : (v11 = v10), v13 = dispatch thunk of WorkoutVoiceAvailabilityProvider.availabilityState.getter(), v11, v14 = WorkoutVoiceAvailabilityProvider.State.isFeatureAvailable.getter(), result = outlined consume of WorkoutVoiceAvailabilityProvider.State(v13), (v14 & 1) == 0))
  {
    v16 = (a1 + *(v6 + 36));
    v17 = *v16;
    v18 = *(v16 + 1);
    LOBYTE(v21) = v17;
    v22 = v18;
    v20 = 1;
    return State.wrappedValue.setter();
  }

  return result;
}

uint64_t closure #1 in closure #1 in closure #2 in closure #1 in closure #4 in closure #1 in VoiceCompanionEntryView.body.getter()
{
  type metadata accessor for VoiceCompanionEntryView();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI5StateVySbGMd);
  return State.wrappedValue.setter();
}

uint64_t closure #2 in VoiceCompanionEntryView.activityRoomButton()@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v38 = a1;
  v43 = a2;
  v44 = type metadata accessor for AccessibilityChildBehavior();
  v42 = *(v44 - 8);
  MEMORY[0x28223BE20](v44);
  v41 = &v38 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = type metadata accessor for Font.Leading();
  v39 = *(v3 - 8);
  v40 = v3;
  MEMORY[0x28223BE20](v3);
  v5 = &v38 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI6VStackVyAA9TupleViewVyAA15ModifiedContentVyAA5ImageVAA31AccessibilityAttachmentModifierVG_AA0E0PAAE10fontWeightyQrAA4FontV0M0VSgFQOyAGyAA4TextVAA022_EnvironmentKeyWritingK0VyAA0O9AlignmentOGG_Qo_AGyAGyA0_AXySiSgGGAXyAA5ColorVSgGGtGGMd);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v38 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyAA6VStackVyAA9TupleViewVyACyAA5ImageVAA31AccessibilityAttachmentModifierVG_AA0G0PAAE10fontWeightyQrAA4FontV0M0VSgFQOyACyAA4TextVAA022_EnvironmentKeyWritingK0VyAA0O9AlignmentOGG_Qo_ACyACyA0_AXySiSgGGAXyAA5ColorVSgGGtGGAA16_FlexFrameLayoutVGMd);
  v10 = v9 - 8;
  MEMORY[0x28223BE20](v9);
  v12 = &v38 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyACyAA6VStackVyAA9TupleViewVyACyAA5ImageVAA31AccessibilityAttachmentModifierVG_AA0G0PAAE10fontWeightyQrAA4FontV0M0VSgFQOyACyAA4TextVAA022_EnvironmentKeyWritingK0VyAA0O9AlignmentOGG_Qo_ACyACyA0_AXySiSgGGAXyAA5ColorVSgGGtGGAA16_FlexFrameLayoutVGAA08_PaddingW0VGMd);
  v14 = v13 - 8;
  MEMORY[0x28223BE20](v13);
  v16 = &v38 - v15;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyACyACyAA6VStackVyAA9TupleViewVyACyAA5ImageVAA31AccessibilityAttachmentModifierVG_AA0G0PAAE10fontWeightyQrAA4FontV0M0VSgFQOyACyAA4TextVAA022_EnvironmentKeyWritingK0VyAA0O9AlignmentOGG_Qo_ACyACyA0_AXySiSgGGAXyAA5ColorVSgGGtGGAA16_FlexFrameLayoutVGAA08_PaddingW0VGAXyAQSgGGMd);
  v18 = v17 - 8;
  MEMORY[0x28223BE20](v17);
  v20 = &v38 - v19;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyACyACyACyAA6VStackVyAA9TupleViewVyACyAA5ImageVAA31AccessibilityAttachmentModifierVG_AA0G0PAAE10fontWeightyQrAA4FontV0M0VSgFQOyACyAA4TextVAA022_EnvironmentKeyWritingK0VyAA0O9AlignmentOGG_Qo_ACyACyA0_AXySiSgGGAXyAA5ColorVSgGGtGGAA16_FlexFrameLayoutVGAA08_PaddingW0VGAXyAQSgGGAA016_ForegroundStyleK0VyA6_GGMd);
  MEMORY[0x28223BE20](v21);
  v23 = &v38 - v22;
  *v8 = static HorizontalAlignment.center.getter();
  *(v8 + 1) = 0;
  v8[16] = 0;
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI13_VariadicViewO4TreeVy_AA13_VStackLayoutVAA05TupleD0VyAA15ModifiedContentVyAA5ImageVAA31AccessibilityAttachmentModifierVG_AA0D0PAAE10fontWeightyQrAA4FontV0P0VSgFQOyAKyAA4TextVAA022_EnvironmentKeyWritingN0VyAA0R9AlignmentOGG_Qo_AKyAKyA4_A0_ySiSgGGA0_yAA5ColorVSgGGtGGMd);
  closure #1 in closure #2 in VoiceCompanionEntryView.activityRoomButton()(v38, &v8[*(v24 + 44)]);
  static Alignment.center.getter();
  _FlexFrameLayout.init(minWidth:idealWidth:maxWidth:minHeight:idealHeight:maxHeight:alignment:)();
  outlined init with take of VStack<TupleView<(ModifiedContent<Image, AccessibilityAttachmentModifier>, <<opaque return type of View.fontWeight(_:)>>.0, ModifiedContent<ModifiedContent<ModifiedContent<Text, _EnvironmentKeyWritingModifier<TextAlignment>>, _EnvironmentKeyWritingModifier<Int?>>, _EnvironmentKeyWritingModifier<Color?>>)>>(v8, v12, &_s7SwiftUI6VStackVyAA9TupleViewVyAA15ModifiedContentVyAA5ImageVAA31AccessibilityAttachmentModifierVG_AA0E0PAAE10fontWeightyQrAA4FontV0M0VSgFQOyAGyAA4TextVAA022_EnvironmentKeyWritingK0VyAA0O9AlignmentOGG_Qo_AGyAGyA0_AXySiSgGGAXyAA5ColorVSgGGtGGMd);
  v25 = &v12[*(v10 + 44)];
  v26 = v50;
  *(v25 + 4) = v49;
  *(v25 + 5) = v26;
  *(v25 + 6) = v51;
  v27 = v46;
  *v25 = v45;
  *(v25 + 1) = v27;
  v28 = v48;
  *(v25 + 2) = v47;
  *(v25 + 3) = v28;
  LOBYTE(v10) = static Edge.Set.all.getter();
  outlined init with take of VStack<TupleView<(ModifiedContent<Image, AccessibilityAttachmentModifier>, <<opaque return type of View.fontWeight(_:)>>.0, ModifiedContent<ModifiedContent<ModifiedContent<Text, _EnvironmentKeyWritingModifier<TextAlignment>>, _EnvironmentKeyWritingModifier<Int?>>, _EnvironmentKeyWritingModifier<Color?>>)>>(v12, v16, &_s7SwiftUI15ModifiedContentVyAA6VStackVyAA9TupleViewVyACyAA5ImageVAA31AccessibilityAttachmentModifierVG_AA0G0PAAE10fontWeightyQrAA4FontV0M0VSgFQOyACyAA4TextVAA022_EnvironmentKeyWritingK0VyAA0O9AlignmentOGG_Qo_ACyACyA0_AXySiSgGGAXyAA5ColorVSgGGtGGAA16_FlexFrameLayoutVGMd);
  v29 = &v16[*(v14 + 44)];
  *v29 = v10;
  *(v29 + 8) = 0u;
  *(v29 + 24) = 0u;
  v29[40] = 1;
  static Font.subheadline.getter();
  v31 = v39;
  v30 = v40;
  (*(v39 + 104))(v5, *MEMORY[0x277CE0A10], v40);
  v32 = Font.leading(_:)();

  (*(v31 + 8))(v5, v30);
  KeyPath = swift_getKeyPath();
  outlined init with take of VStack<TupleView<(ModifiedContent<Image, AccessibilityAttachmentModifier>, <<opaque return type of View.fontWeight(_:)>>.0, ModifiedContent<ModifiedContent<ModifiedContent<Text, _EnvironmentKeyWritingModifier<TextAlignment>>, _EnvironmentKeyWritingModifier<Int?>>, _EnvironmentKeyWritingModifier<Color?>>)>>(v16, v20, &_s7SwiftUI15ModifiedContentVyACyAA6VStackVyAA9TupleViewVyACyAA5ImageVAA31AccessibilityAttachmentModifierVG_AA0G0PAAE10fontWeightyQrAA4FontV0M0VSgFQOyACyAA4TextVAA022_EnvironmentKeyWritingK0VyAA0O9AlignmentOGG_Qo_ACyACyA0_AXySiSgGGAXyAA5ColorVSgGGtGGAA16_FlexFrameLayoutVGAA08_PaddingW0VGMd);
  v34 = &v20[*(v18 + 44)];
  *v34 = KeyPath;
  v34[1] = v32;
  v35 = static Color.white.getter();
  outlined init with take of VStack<TupleView<(ModifiedContent<Image, AccessibilityAttachmentModifier>, <<opaque return type of View.fontWeight(_:)>>.0, ModifiedContent<ModifiedContent<ModifiedContent<Text, _EnvironmentKeyWritingModifier<TextAlignment>>, _EnvironmentKeyWritingModifier<Int?>>, _EnvironmentKeyWritingModifier<Color?>>)>>(v20, v23, &_s7SwiftUI15ModifiedContentVyACyACyAA6VStackVyAA9TupleViewVyACyAA5ImageVAA31AccessibilityAttachmentModifierVG_AA0G0PAAE10fontWeightyQrAA4FontV0M0VSgFQOyACyAA4TextVAA022_EnvironmentKeyWritingK0VyAA0O9AlignmentOGG_Qo_ACyACyA0_AXySiSgGGAXyAA5ColorVSgGGtGGAA16_FlexFrameLayoutVGAA08_PaddingW0VGAXyAQSgGGMd);
  *&v23[*(v21 + 36)] = v35;
  v36 = v41;
  static AccessibilityChildBehavior.combine.getter();
  lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<VStack<TupleView<(ModifiedContent<Image, AccessibilityAttachmentModifier>, <<opaque return type of View.fontWeight(_:)>>.0, ModifiedContent<ModifiedContent<ModifiedContent<Text, _EnvironmentKeyWritingModifier<TextAlignment>>, _EnvironmentKeyWritingModifier<Int?>>, _EnvironmentKeyWritingModifier<Color?>>)>>, _FlexFrameLayout>, _PaddingLayout>, _EnvironmentKeyWritingModifier<Font?>>, _ForegroundStyleModifier<Color>> and conformance <> ModifiedContent<A, B>();
  View.accessibilityElement(children:)();
  (*(v42 + 8))(v36, v44);
  return outlined destroy of ModifiedContent<Group<_ConditionalContent<NavigationLink<<<opaque return type of View.accessibilityElement(children:)>>.0, <<opaque return type of View.navigationTitle<A>(_:)>>.0>, <<opaque return type of View.sheet<A>(isPresented:onDismiss:content:)>>.0>>, _TaskModifier>(v23, &_s7SwiftUI15ModifiedContentVyACyACyACyAA6VStackVyAA9TupleViewVyACyAA5ImageVAA31AccessibilityAttachmentModifierVG_AA0G0PAAE10fontWeightyQrAA4FontV0M0VSgFQOyACyAA4TextVAA022_EnvironmentKeyWritingK0VyAA0O9AlignmentOGG_Qo_ACyACyA0_AXySiSgGGAXyAA5ColorVSgGGtGGAA16_FlexFrameLayoutVGAA08_PaddingW0VGAXyAQSgGGAA016_ForegroundStyleK0VyA6_GGMd);
}

uint64_t closure #1 in closure #2 in VoiceCompanionEntryView.activityRoomButton()@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v58 = a2;
  v57 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI4ViewPAAE10fontWeightyQrAA4FontV0E0VSgFQOyAA15ModifiedContentVyAA4TextVAA30_EnvironmentKeyWritingModifierVyAA0I9AlignmentOGG_Qo_Md);
  v59 = *(v57 - 8);
  v3 = MEMORY[0x28223BE20](v57);
  v64 = &v50[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v3);
  v62 = &v50[-v5];
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyAA5ImageVAA31AccessibilityAttachmentModifierVGMd);
  v7 = MEMORY[0x28223BE20](v6 - 8);
  v63 = &v50[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v7);
  v10 = &v50[-v9];
  v60 = a1;
  v74._countAndFlagsBits = VoiceCompanionEntryView.voiceSymbol.getter();
  v61 = v10;
  View.accessibilityHidden(_:)();

  if (one-time initialization token for WorkoutUIBundle != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v11.super.isa = WorkoutUIBundle.super.isa;
  v87._object = 0xE000000000000000;
  v12._countAndFlagsBits = 0x5F54554F4B524F57;
  v12._object = 0xED00005944445542;
  v13.value._countAndFlagsBits = 0x617A696C61636F4CLL;
  v13.value._object = 0xEB00000000656C62;
  v14._countAndFlagsBits = 0;
  v14._object = 0xE000000000000000;
  v87._countAndFlagsBits = 0;
  v15 = NSLocalizedString(_:tableName:bundle:value:comment:)(v12, v13, v11, v14, v87);

  v74 = v15;
  lazy protocol witness table accessor for type String and conformance String();
  v16 = Text.init<A>(_:)();
  v18 = v17;
  v20 = v19;
  v22 = v21;
  KeyPath = swift_getKeyPath();
  v74._countAndFlagsBits = v16;
  v74._object = v18;
  v75 = v20 & 1;
  v77 = v22;
  v78 = KeyPath;
  v79 = 1;
  static Font.Weight.bold.getter();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyAA4TextVAA30_EnvironmentKeyWritingModifierVyAA0E9AlignmentOGGMd);
  lazy protocol witness table accessor for type ModifiedContent<Text, _EnvironmentKeyWritingModifier<TextAlignment>> and conformance <> ModifiedContent<A, B>();
  v24 = v62;
  View.fontWeight(_:)();
  outlined consume of Text.Storage(v16, v18, v20 & 1);

  v74._countAndFlagsBits = VoiceCompanionEntryView.footnote.getter();
  v74._object = v25;
  v55 = Text.init<A>(_:)();
  v54 = v26;
  LOBYTE(v11.super.isa) = v27;
  v56 = v28;
  v53 = swift_getKeyPath();
  v52 = swift_getKeyPath();
  v51 = v11.super.isa & 1;
  LOBYTE(v74._countAndFlagsBits) = v11.super.isa & 1;
  LOBYTE(v68) = 0;
  v60 = static Color.secondary.getter();
  v29 = swift_getKeyPath();
  v30 = v63;
  outlined init with copy of ModifiedContent<ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Color?>>, _PaddingLayout>, AccessibilityAttachmentModifier>(v61, v63, &_s7SwiftUI15ModifiedContentVyAA5ImageVAA31AccessibilityAttachmentModifierVGMd);
  v31 = v59;
  v32 = *(v59 + 16);
  v33 = v64;
  v34 = v57;
  v32(v64, v24, v57);
  v35 = v30;
  v36 = v58;
  outlined init with copy of ModifiedContent<ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Color?>>, _PaddingLayout>, AccessibilityAttachmentModifier>(v35, v58, &_s7SwiftUI15ModifiedContentVyAA5ImageVAA31AccessibilityAttachmentModifierVGMd);
  v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyAA5ImageVAA31AccessibilityAttachmentModifierVG_AA4ViewPAAE10fontWeightyQrAA4FontV0K0VSgFQOyACyAA4TextVAA022_EnvironmentKeyWritingH0VyAA0M9AlignmentOGG_Qo_ACyACyAxTySiSgGGATyAA5ColorVSgGGtMd);
  v32((v36 + *(v37 + 48)), v33, v34);
  v38 = v36 + *(v37 + 64);
  v39 = v55;
  *&v68 = v55;
  v40 = v54;
  *(&v68 + 1) = v54;
  LOBYTE(v33) = v51;
  LOBYTE(v69) = v51;
  *(&v69 + 1) = *v66;
  DWORD1(v69) = *&v66[3];
  v41 = v56;
  v42 = v53;
  *(&v69 + 1) = v56;
  *&v70 = v53;
  BYTE8(v70) = 1;
  *(&v70 + 9) = *v65;
  HIDWORD(v70) = *&v65[3];
  v43 = v52;
  *&v71 = v52;
  *(&v71 + 1) = 1;
  LOBYTE(v72) = 0;
  DWORD1(v72) = *&v67[3];
  *(&v72 + 1) = *v67;
  *(&v72 + 1) = v29;
  v73 = v60;
  v44 = v70;
  v45 = v71;
  v46 = v72;
  *(v38 + 80) = v60;
  *(v38 + 48) = v45;
  *(v38 + 64) = v46;
  v47 = v68;
  *(v38 + 16) = v69;
  *(v38 + 32) = v44;
  *v38 = v47;
  outlined init with copy of ModifiedContent<ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Color?>>, _PaddingLayout>, AccessibilityAttachmentModifier>(&v68, &v74, &_s7SwiftUI15ModifiedContentVyACyACyAA4TextVAA30_EnvironmentKeyWritingModifierVyAA0E9AlignmentOGGAGySiSgGGAGyAA5ColorVSgGGMd);
  v48 = *(v31 + 8);
  v48(v62, v34);
  outlined destroy of HStack<TupleView<(ModifiedContent<ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Color?>>, _PaddingLayout>, AccessibilityAttachmentModifier>, NavigationLabelView, Spacer)>>(v61, &_s7SwiftUI15ModifiedContentVyAA5ImageVAA31AccessibilityAttachmentModifierVGMd);
  v74._countAndFlagsBits = v39;
  v74._object = v40;
  v75 = v33;
  *v76 = *v66;
  *&v76[3] = *&v66[3];
  v77 = v41;
  v78 = v42;
  v79 = 1;
  *v80 = *v65;
  *&v80[3] = *&v65[3];
  v81 = v43;
  v82 = 1;
  v83 = 0;
  *&v84[3] = *&v67[3];
  *v84 = *v67;
  v85 = v29;
  v86 = v60;
  outlined destroy of HStack<TupleView<(ModifiedContent<ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Color?>>, _PaddingLayout>, AccessibilityAttachmentModifier>, NavigationLabelView, Spacer)>>(&v74, &_s7SwiftUI15ModifiedContentVyACyACyAA4TextVAA30_EnvironmentKeyWritingModifierVyAA0E9AlignmentOGGAGySiSgGGAGyAA5ColorVSgGGMd);
  v48(v64, v34);
  return outlined destroy of HStack<TupleView<(ModifiedContent<ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Color?>>, _PaddingLayout>, AccessibilityAttachmentModifier>, NavigationLabelView, Spacer)>>(v63, &_s7SwiftUI15ModifiedContentVyAA5ImageVAA31AccessibilityAttachmentModifierVGMd);
}

uint64_t outlined init with copy of VoiceCompanionEntryView(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for VoiceCompanionEntryView();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

void outlined consume of Environment<WorkoutVoiceAvailabilityProvider>.Content(id a1, char a2)
{
  if (a2)
  {
  }

  else
  {
  }
}

uint64_t outlined init with take of VoiceCompanionEntryView(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for VoiceCompanionEntryView();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t partial apply for closure #2 in VoiceCompanionEntryView.body.getter()
{
  v2 = *(type metadata accessor for VoiceCompanionEntryView() - 8);
  v3 = (*(v2 + 80) + 16) & ~*(v2 + 80);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = partial apply for closure #2 in VoiceCompanionEntryView.body.getter;

  return closure #2 in VoiceCompanionEntryView.body.getter(v0 + v3);
}

{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<Group<_ConditionalContent<NavigationLink<<<opaque return type of View.accessibilityElement(children:)>>.0, <<opaque return type of View.navigationTitle<A>(_:)>>.0>, <<opaque return type of View.sheet<A>(isPresented:onDismiss:content:)>>.0>>, _TaskModifier> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<Group<_ConditionalContent<NavigationLink<<<opaque return type of View.accessibilityElement(children:)>>.0, <<opaque return type of View.navigationTitle<A>(_:)>>.0>, <<opaque return type of View.sheet<A>(isPresented:onDismiss:content:)>>.0>>, _TaskModifier> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<Group<_ConditionalContent<NavigationLink<<<opaque return type of View.accessibilityElement(children:)>>.0, <<opaque return type of View.navigationTitle<A>(_:)>>.0>, <<opaque return type of View.sheet<A>(isPresented:onDismiss:content:)>>.0>>, _TaskModifier> and conformance <> ModifiedContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyAA5GroupVyAA012_ConditionalD0VyAA14NavigationLinkVyAA4ViewPAAE20accessibilityElement8childrenQrAA26AccessibilityChildBehaviorV_tFQOyAA6HStackVyAA05TupleI0VyACyACyACyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGAA14_PaddingLayoutVGAA0m10AttachmentV0VG_07WorkoutB00g5LabelI0VAA6SpacerVtGG_Qo_AkAE15navigationTitleyQrqd__SyRd__lFQOyAA4ListVys5NeverOA7_022VoiceCompanionSettingsI0VG_SSQo_GAkAE5sheet11isPresented9onDismiss7contentQrAA7BindingVySbG_yycSgqd__yctAaJRd__lFQOyAEyAGyACyAkAE12onTapGesture5count7performQrSi_yyctFQOyAkAE11buttonStyleyQrqd__AA20PrimitiveButtonStyleRd__lFQOyAA6ButtonVyACyACyACyACyACyACyACyACyACyAuA010_FlexFrameY0VGA2_GAA016_BackgroundStyleV0VyAYGGA_GAA11_ClipEffectVyAA16RoundedRectangleVGGAWyAA4FontVSgGGA_GAA016_ForegroundStyleV0VyAYGGA5_GG_AA16PlainButtonStyleVQo__Qo_AA01_d9ShapeKindV0VyA52_GGACyACyAkAEA36_yQrqd__AAA37_Rd__lFQOyA39_yAkAEAlMQrAO_tFQOyACyACyACyACyAA6VStackVyASyACyAUA5_G_AkAE10fontWeightyQrA56_6WeightVSgFQOyACyAA4TextVAWyAA13TextAlignmentOGG_Qo_ACyACyA87_AWySiSgGGA_GtGGA41_GA2_GA58_GA63_G_Qo_G_A68_Qo_AA011_BackgroundV0VyAA06_ShapeI0VyA52_AYGGGA73_GGG_AA0G5StackVyAA0G4PathVAkAE7toolbarA28_Qrqd__yXE_tAA07ToolbarD0Rd__lFQOyACyACyACyACyA22_AWy12CoreGraphics7CGFloatVSgGGAA06_TraituV0VyAA023ListSectionSpacingTraitT0VGGAWyAA18ListSectionSpacingVSgGGA7_06InlineG8BarTitle33_B86241820663BC1B3220D14BE7395977LLVG_AA07ToolbarD7BuilderV10buildBlockyQrxAAA117_RzlFZQOy_AA11ToolbarItemVyytACyA39_yAA18DefaultButtonLabelVGAWyAA13AnyShapeStyleVSgGGGQo_Qo_GQo_GGAA05_TaskV0VGMd);
    lazy protocol witness table accessor for type Group<_ConditionalContent<NavigationLink<<<opaque return type of View.accessibilityElement(children:)>>.0, <<opaque return type of View.navigationTitle<A>(_:)>>.0>, <<opaque return type of View.sheet<A>(isPresented:onDismiss:content:)>>.0>> and conformance <A> Group<A>( &lazy protocol witness table cache variable for type Group<_ConditionalContent<NavigationLink<<<opaque return type of View.accessibilityElement(children:)>>.0, <<opaque return type of View.navigationTitle<A>(_:)>>.0>, <<opaque return type of View.sheet<A>(isPresented:onDismiss:content:)>>.0>> and conformance <A> Group<A>,  &_s7SwiftUI5GroupVyAA19_ConditionalContentVyAA14NavigationLinkVyAA4ViewPAAE20accessibilityElement8childrenQrAA26AccessibilityChildBehaviorV_tFQOyAA6HStackVyAA05TupleH0VyAA08ModifiedE0VyASyASyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGAA14_PaddingLayoutVGAA0l10AttachmentV0VG_07WorkoutB00f5LabelH0VAA6SpacerVtGG_Qo_AiAE15navigationTitleyQrqd__SyRd__lFQOyAA4ListVys5NeverOA7_022VoiceCompanionSettingsH0VG_SSQo_GAiAE5sheet11isPresented9onDismiss7contentQrAA7BindingVySbG_yycSgqd__yctAaHRd__lFQOyACyAEyASyAiAE12onTapGesture5count7performQrSi_yyctFQOyAiAE11buttonStyleyQrqd__AA20PrimitiveButtonStyleRd__lFQOyAA6ButtonVyASyASyASyASyASyASyASyASyASyAuA010_FlexFrameY0VGA2_GAA016_BackgroundStyleV0VyAYGGA_GAA11_ClipEffectVyAA16RoundedRectangleVGGAWyAA4FontVSgGGA_GAA016_ForegroundStyleV0VyAYGGA5_GG_AA16PlainButtonStyleVQo__Qo_AA01_e9ShapeKindV0VyA52_GGASyASyAiAEA36_yQrqd__AAA37_Rd__lFQOyA39_yAiAEAjKQrAM_tFQOyASyASyASyASyAA6VStackVyAQyASyAUA5_G_AiAE10fontWeightyQrA56_6WeightVSgFQOyASyAA4TextVAWyAA13TextAlignmentOGG_Qo_ASyASyA87_AWySiSgGGA_GtGGA41_GA2_GA58_GA63_G_Qo_G_A68_Qo_AA011_BackgroundV0VyAA06_ShapeH0VyA52_AYGGGA73_GGG_AA0F5StackVyAA0F4PathVAiAE7toolbarA28_Qrqd__yXE_tAA07ToolbarE0Rd__lFQOyASyASyASyASyA22_AWy12CoreGraphics7CGFloatVSgGGAA06_TraituV0VyAA023ListSectionSpacingTraitT0VGGAWyAA18ListSectionSpacingVSgGGA7_06InlineF8BarTitle33_B86241820663BC1B3220D14BE7395977LLVG_AA07ToolbarE7BuilderV10buildBlockyQrxAAA117_RzlFZQOy_AA11ToolbarItemVyytASyA39_yAA18DefaultButtonLabelVGAWyAA13AnyShapeStyleVSgGGGQo_Qo_GQo_GGMd,  &_s7SwiftUI5GroupVyAA19_ConditionalContentVyAA14NavigationLinkVyAA4ViewPAAE20accessibilityElement8childrenQrAA26AccessibilityChildBehaviorV_tFQOyAA6HStackVyAA05TupleH0VyAA08ModifiedE0VyASyASyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGAA14_PaddingLayoutVGAA0l10AttachmentV0VG_07WorkoutB00f5LabelH0VAA6SpacerVtGG_Qo_AiAE15navigationTitleyQrqd__SyRd__lFQOyAA4ListVys5NeverOA7_022VoiceCompanionSettingsH0VG_SSQo_GAiAE5sheet11isPresented9onDismiss7contentQrAA7BindingVySbG_yycSgqd__yctAaHRd__lFQOyACyAEyASyAiAE12onTapGesture5count7performQrSi_yyctFQOyAiAE11buttonStyleyQrqd__AA20PrimitiveButtonStyleRd__lFQOyAA6ButtonVyASyASyASyASyASyASyASyASyASyAuA010_FlexFrameY0VGA2_GAA016_BackgroundStyleV0VyAYGGA_GAA11_ClipEffectVyAA16RoundedRectangleVGGAWyAA4FontVSgGGA_GAA016_ForegroundStyleV0VyAYGGA5_GG_AA16PlainButtonStyleVQo__Qo_AA01_e9ShapeKindV0VyA52_GGASyASyAiAEA36_yQrqd__AAA37_Rd__lFQOyA39_yAiAEAjKQrAM_tFQOyASyASyASyASyAA6VStackVyAQyASyAUA5_G_AiAE10fontWeightyQrA56_6WeightVSgFQOyASyAA4TextVAWyAA13TextAlignmentOGG_Qo_ASyASyA87_AWySiSgGGA_GtGGA41_GA2_GA58_GA63_G_Qo_G_A68_Qo_AA011_BackgroundV0VyAA06_ShapeH0VyA52_AYGGGA73_GGG_AA0F5StackVyAA0F4PathVAiAE7toolbarA28_Qrqd__yXE_tAA07ToolbarE0Rd__lFQOyASyASyASyASyA22_AWy12CoreGraphics7CGFloatVSgGGAA06_TraituV0VyAA023ListSectionSpacingTraitT0VGGAWyAA18ListSectionSpacingVSgGGA7_06InlineF8BarTitle33_B86241820663BC1B3220D14BE7395977LLVG_AA07ToolbarE7BuilderV10buildBlockyQrxAAA117_RzlFZQOy_AA11ToolbarItemVyytASyA39_yAA18DefaultButtonLabelVGAWyAA13AnyShapeStyleVSgGGGQo_Qo_GQo_GGMR,  lazy protocol witness table accessor for type _ConditionalContent<NavigationLink<<<opaque return type of View.accessibilityElement(children:)>>.0, <<opaque return type of View.navigationTitle<A>(_:)>>.0>, <<opaque return type of View.sheet<A>(isPresented:onDismiss:content:)>>.0> and conformance <> _ConditionalContent<A, B>);
    lazy protocol witness table accessor for type PlainButtonStyle and conformance PlainButtonStyle(&lazy protocol witness table cache variable for type _TaskModifier and conformance _TaskModifier, MEMORY[0x277CDD8B0]);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<Group<_ConditionalContent<NavigationLink<<<opaque return type of View.accessibilityElement(children:)>>.0, <<opaque return type of View.navigationTitle<A>(_:)>>.0>, <<opaque return type of View.sheet<A>(isPresented:onDismiss:content:)>>.0>>, _TaskModifier> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type _ConditionalContent<NavigationLink<<<opaque return type of View.accessibilityElement(children:)>>.0, <<opaque return type of View.navigationTitle<A>(_:)>>.0>, <<opaque return type of View.sheet<A>(isPresented:onDismiss:content:)>>.0> and conformance <> _ConditionalContent<A, B>()
{
  result = lazy protocol witness table cache variable for type _ConditionalContent<NavigationLink<<<opaque return type of View.accessibilityElement(children:)>>.0, <<opaque return type of View.navigationTitle<A>(_:)>>.0>, <<opaque return type of View.sheet<A>(isPresented:onDismiss:content:)>>.0> and conformance <> _ConditionalContent<A, B>;
  if (!lazy protocol witness table cache variable for type _ConditionalContent<NavigationLink<<<opaque return type of View.accessibilityElement(children:)>>.0, <<opaque return type of View.navigationTitle<A>(_:)>>.0>, <<opaque return type of View.sheet<A>(isPresented:onDismiss:content:)>>.0> and conformance <> _ConditionalContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI19_ConditionalContentVyAA14NavigationLinkVyAA4ViewPAAE20accessibilityElement8childrenQrAA26AccessibilityChildBehaviorV_tFQOyAA6HStackVyAA05TupleG0VyAA08ModifiedD0VyAQyAQyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGAA14_PaddingLayoutVGAA0k10AttachmentU0VG_07WorkoutB00e5LabelG0VAA6SpacerVtGG_Qo_AgAE15navigationTitleyQrqd__SyRd__lFQOyAA4ListVys5NeverOA5_022VoiceCompanionSettingsG0VG_SSQo_GAgAE5sheet11isPresented9onDismiss7contentQrAA7BindingVySbG_yycSgqd__yctAaFRd__lFQOyAA5GroupVyACyAQyAgAE12onTapGesture5count7performQrSi_yyctFQOyAgAE11buttonStyleyQrqd__AA20PrimitiveButtonStyleRd__lFQOyAA6ButtonVyAQyAQyAQyAQyAQyAQyAQyAQyAQyAsA010_FlexFrameX0VGA0_GAA016_BackgroundStyleU0VyAWGGAYGAA11_ClipEffectVyAA16RoundedRectangleVGGAUyAA4FontVSgGGAYGAA016_ForegroundStyleU0VyAWGGA3_GG_AA16PlainButtonStyleVQo__Qo_AA01_d9ShapeKindU0VyA52_GGAQyAQyAgAEA36_yQrqd__AAA37_Rd__lFQOyA39_yAgAEAhIQrAK_tFQOyAQyAQyAQyAQyAA6VStackVyAOyAQyASA3_G_AgAE10fontWeightyQrA56_6WeightVSgFQOyAQyAA4TextVAUyAA13TextAlignmentOGG_Qo_AQyAQyA87_AUySiSgGGAYGtGGA41_GA0_GA58_GA63_G_Qo_G_A68_Qo_AA011_BackgroundU0VyAA06_ShapeG0VyA52_AWGGGA73_GGG_AA0E5StackVyAA0E4PathVAgAE7toolbarA26_Qrqd__yXE_tAA07ToolbarD0Rd__lFQOyAQyAQyAQyAQyA20_AUy12CoreGraphics7CGFloatVSgGGAA06_TraittU0VyAA023ListSectionSpacingTraitS0VGGAUyAA18ListSectionSpacingVSgGGA5_06InlineE8BarTitle33_B86241820663BC1B3220D14BE7395977LLVG_AA07ToolbarD7BuilderV10buildBlockyQrxAAA117_RzlFZQOy_AA11ToolbarItemVyytAQyA39_yAA18DefaultButtonLabelVGAUyAA13AnyShapeStyleVSgGGGQo_Qo_GQo_GMd);
    lazy protocol witness table accessor for type NavigationLink<<<opaque return type of View.accessibilityElement(children:)>>.0, <<opaque return type of View.navigationTitle<A>(_:)>>.0> and conformance NavigationLink<A, B>(&lazy protocol witness table cache variable for type NavigationLink<<<opaque return type of View.accessibilityElement(children:)>>.0, <<opaque return type of View.navigationTitle<A>(_:)>>.0> and conformance NavigationLink<A, B>, &_s7SwiftUI14NavigationLinkVyAA4ViewPAAE20accessibilityElement8childrenQrAA26AccessibilityChildBehaviorV_tFQOyAA6HStackVyAA05TupleE0VyAA15ModifiedContentVyAOyAOyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGAA14_PaddingLayoutVGAA0i10AttachmentT0VG_07WorkoutB00c5LabelE0VAA6SpacerVtGG_Qo_AeAE15navigationTitleyQrqd__SyRd__lFQOyAA4ListVys5NeverOA3_022VoiceCompanionSettingsE0VG_SSQo_GMd);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI5GroupVyAA19_ConditionalContentVyAA08ModifiedE0VyAA4ViewPAAE12onTapGesture5count7performQrSi_yyctFQOyAiAE11buttonStyleyQrqd__AA015PrimitiveButtonN0Rd__lFQOyAA0P0VyAGyAGyAGyAGyAGyAGyAGyAGyAGyAA5ImageVAA16_FlexFrameLayoutVGAA08_PaddingT0VGAA011_BackgroundN8ModifierVyAA5ColorVGGAA022_EnvironmentKeyWritingW0VyA0_SgGGAA11_ClipEffectVyAA16RoundedRectangleVGGA4_yAA4FontVSgGGA6_GAA011_ForegroundnW0VyA0_GGAA023AccessibilityAttachmentW0VGG_AA05PlainpN0VQo__Qo_AA01_e9ShapeKindW0VyA11_GGAGyAGyAiAEAMyQrqd__AaNRd__lFQOyAPyAiAE20accessibilityElement8childrenQrAA26AccessibilityChildBehaviorV_tFQOyAGyAGyAGyAGyAA6VStackVyAA05TupleG0VyAGyARA25_G_AiAE10fontWeightyQrA15_6WeightVSgFQOyAGyAA4TextVA4_yAA13TextAlignmentOGG_Qo_AGyAGyA54_A4_ySiSgGGA6_GtGGATGAWGA17_GA22_G_Qo_G_A29_Qo_AA01_vW0VyAA06_ShapeG0VyA11_A0_GGGA34_GGGMd);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15NavigationStackVyAA0C4PathVAA4ViewPAAE7toolbar7contentQrqd__yXE_tAA14ToolbarContentRd__lFQOyAA08ModifiedJ0VyALyALyALyAA4ListVys5NeverO07WorkoutB0022VoiceCompanionSettingsF0VGAA30_EnvironmentKeyWritingModifierVy12CoreGraphics7CGFloatVSgGGAA06_TraittU0VyAA0l14SectionSpacingyS0VGGAVyAA0lZ7SpacingVSgGGAQ06InlineC8BarTitle33_B86241820663BC1B3220D14BE7395977LLVG_AA0iJ7BuilderV10buildBlockyQrxAaJRzlFZQOy_AA0I4ItemVyytALyAA6ButtonVyAA18DefaultButtonLabelVGAVyAA13AnyShapeStyleVSgGGGQo_Qo_GMd);
    lazy protocol witness table accessor for type Group<_ConditionalContent<NavigationLink<<<opaque return type of View.accessibilityElement(children:)>>.0, <<opaque return type of View.navigationTitle<A>(_:)>>.0>, <<opaque return type of View.sheet<A>(isPresented:onDismiss:content:)>>.0>> and conformance <A> Group<A>(&lazy protocol witness table cache variable for type Group<_ConditionalContent<ModifiedContent<<<opaque return type of View.onTapGesture(count:perform:)>>.0, _ContentShapeKindModifier<RoundedRectangle>>, ModifiedContent<ModifiedContent<<<opaque return type of View.buttonStyle<A>(_:)>>.0, _BackgroundModifier<_ShapeView<RoundedRectangle, Color>>>, _ContentShapeKindModifier<RoundedRectangle>>>> and conformance <A> Group<A>, &_s7SwiftUI5GroupVyAA19_ConditionalContentVyAA08ModifiedE0VyAA4ViewPAAE12onTapGesture5count7performQrSi_yyctFQOyAiAE11buttonStyleyQrqd__AA015PrimitiveButtonN0Rd__lFQOyAA0P0VyAGyAGyAGyAGyAGyAGyAGyAGyAGyAA5ImageVAA16_FlexFrameLayoutVGAA08_PaddingT0VGAA011_BackgroundN8ModifierVyAA5ColorVGGAA022_EnvironmentKeyWritingW0VyA0_SgGGAA11_ClipEffectVyAA16RoundedRectangleVGGA4_yAA4FontVSgGGA6_GAA011_ForegroundnW0VyA0_GGAA023AccessibilityAttachmentW0VGG_AA05PlainpN0VQo__Qo_AA01_e9ShapeKindW0VyA11_GGAGyAGyAiAEAMyQrqd__AaNRd__lFQOyAPyAiAE20accessibilityElement8childrenQrAA26AccessibilityChildBehaviorV_tFQOyAGyAGyAGyAGyAA6VStackVyAA05TupleG0VyAGyARA25_G_AiAE10fontWeightyQrA15_6WeightVSgFQOyAGyAA4TextVA4_yAA13TextAlignmentOGG_Qo_AGyAGyA54_A4_ySiSgGGA6_GtGGATGAWGA17_GA22_G_Qo_G_A29_Qo_AA01_vW0VyAA06_ShapeG0VyA11_A0_GGGA34_GGGMd, &_s7SwiftUI5GroupVyAA19_ConditionalContentVyAA08ModifiedE0VyAA4ViewPAAE12onTapGesture5count7performQrSi_yyctFQOyAiAE11buttonStyleyQrqd__AA015PrimitiveButtonN0Rd__lFQOyAA0P0VyAGyAGyAGyAGyAGyAGyAGyAGyAGyAA5ImageVAA16_FlexFrameLayoutVGAA08_PaddingT0VGAA011_BackgroundN8ModifierVyAA5ColorVGGAA022_EnvironmentKeyWritingW0VyA0_SgGGAA11_ClipEffectVyAA16RoundedRectangleVGGA4_yAA4FontVSgGGA6_GAA011_ForegroundnW0VyA0_GGAA023AccessibilityAttachmentW0VGG_AA05PlainpN0VQo__Qo_AA01_e9ShapeKindW0VyA11_GGAGyAGyAiAEAMyQrqd__AaNRd__lFQOyAPyAiAE20accessibilityElement8childrenQrAA26AccessibilityChildBehaviorV_tFQOyAGyAGyAGyAGyAA6VStackVyAA05TupleG0VyAGyARA25_G_AiAE10fontWeightyQrA15_6WeightVSgFQOyAGyAA4TextVA4_yAA13TextAlignmentOGG_Qo_AGyAGyA54_A4_ySiSgGGA6_GtGGATGAWGA17_GA22_G_Qo_G_A29_Qo_AA01_vW0VyAA06_ShapeG0VyA11_A0_GGGA34_GGGMR, lazy protocol witness table accessor for type _ConditionalContent<ModifiedContent<<<opaque return type of View.onTapGesture(count:perform:)>>.0, _ContentShapeKindModifier<RoundedRectangle>>, ModifiedContent<ModifiedContent<<<opaque return type of View.buttonStyle<A>(_:)>>.0, _BackgroundModifier<_ShapeView<RoundedRectangle, Color>>>, _ContentShapeKindModifier<RoundedRectangle>>> and conformance <> _ConditionalContent<A, B>);
    lazy protocol witness table accessor for type NavigationLink<<<opaque return type of View.accessibilityElement(children:)>>.0, <<opaque return type of View.navigationTitle<A>(_:)>>.0> and conformance NavigationLink<A, B>(&lazy protocol witness table cache variable for type NavigationStack<NavigationPath, <<opaque return type of View.toolbar<A>(content:)>>.0> and conformance NavigationStack<A, B>, &_s7SwiftUI15NavigationStackVyAA0C4PathVAA4ViewPAAE7toolbar7contentQrqd__yXE_tAA14ToolbarContentRd__lFQOyAA08ModifiedJ0VyALyALyALyAA4ListVys5NeverO07WorkoutB0022VoiceCompanionSettingsF0VGAA30_EnvironmentKeyWritingModifierVy12CoreGraphics7CGFloatVSgGGAA06_TraittU0VyAA0l14SectionSpacingyS0VGGAVyAA0lZ7SpacingVSgGGAQ06InlineC8BarTitle33_B86241820663BC1B3220D14BE7395977LLVG_AA0iJ7BuilderV10buildBlockyQrxAaJRzlFZQOy_AA0I4ItemVyytALyAA6ButtonVyAA18DefaultButtonLabelVGAVyAA13AnyShapeStyleVSgGGGQo_Qo_GMd);
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type _ConditionalContent<NavigationLink<<<opaque return type of View.accessibilityElement(children:)>>.0, <<opaque return type of View.navigationTitle<A>(_:)>>.0>, <<opaque return type of View.sheet<A>(isPresented:onDismiss:content:)>>.0> and conformance <> _ConditionalContent<A, B>);
  }

  return result;
}

uint64_t lazy protocol witness table accessor for type Group<_ConditionalContent<NavigationLink<<<opaque return type of View.accessibilityElement(children:)>>.0, <<opaque return type of View.navigationTitle<A>(_:)>>.0>, <<opaque return type of View.sheet<A>(isPresented:onDismiss:content:)>>.0>> and conformance <A> Group<A>(unint64_t *a1, uint64_t *a2, uint64_t a3, void (*a4)(void))
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

unint64_t lazy protocol witness table accessor for type _ConditionalContent<ModifiedContent<<<opaque return type of View.onTapGesture(count:perform:)>>.0, _ContentShapeKindModifier<RoundedRectangle>>, ModifiedContent<ModifiedContent<<<opaque return type of View.buttonStyle<A>(_:)>>.0, _BackgroundModifier<_ShapeView<RoundedRectangle, Color>>>, _ContentShapeKindModifier<RoundedRectangle>>> and conformance <> _ConditionalContent<A, B>()
{
  result = lazy protocol witness table cache variable for type _ConditionalContent<ModifiedContent<<<opaque return type of View.onTapGesture(count:perform:)>>.0, _ContentShapeKindModifier<RoundedRectangle>>, ModifiedContent<ModifiedContent<<<opaque return type of View.buttonStyle<A>(_:)>>.0, _BackgroundModifier<_ShapeView<RoundedRectangle, Color>>>, _ContentShapeKindModifier<RoundedRectangle>>> and conformance <> _ConditionalContent<A, B>;
  if (!lazy protocol witness table cache variable for type _ConditionalContent<ModifiedContent<<<opaque return type of View.onTapGesture(count:perform:)>>.0, _ContentShapeKindModifier<RoundedRectangle>>, ModifiedContent<ModifiedContent<<<opaque return type of View.buttonStyle<A>(_:)>>.0, _BackgroundModifier<_ShapeView<RoundedRectangle, Color>>>, _ContentShapeKindModifier<RoundedRectangle>>> and conformance <> _ConditionalContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI19_ConditionalContentVyAA08ModifiedD0VyAA4ViewPAAE12onTapGesture5count7performQrSi_yyctFQOyAgAE11buttonStyleyQrqd__AA015PrimitiveButtonM0Rd__lFQOyAA0O0VyAEyAEyAEyAEyAEyAEyAEyAEyAEyAA5ImageVAA16_FlexFrameLayoutVGAA08_PaddingS0VGAA011_BackgroundM8ModifierVyAA5ColorVGGAA022_EnvironmentKeyWritingV0VyAZSgGGAA11_ClipEffectVyAA16RoundedRectangleVGGA2_yAA4FontVSgGGA4_GAA011_ForegroundmV0VyAZGGAA023AccessibilityAttachmentV0VGG_AA05PlainoM0VQo__Qo_AA01_d9ShapeKindV0VyA9_GGAEyAEyAgAEAKyQrqd__AaLRd__lFQOyANyAgAE20accessibilityElement8childrenQrAA26AccessibilityChildBehaviorV_tFQOyAEyAEyAEyAEyAA6VStackVyAA05TupleF0VyAEyAPA23_G_AgAE10fontWeightyQrA13_6WeightVSgFQOyAEyAA4TextVA2_yAA13TextAlignmentOGG_Qo_AEyAEyA52_A2_ySiSgGGA4_GtGGARGAUGA15_GA20_G_Qo_G_A27_Qo_AA01_uV0VyAA06_ShapeF0VyA9_AZGGGA32_GGMd);
    lazy protocol witness table accessor for type ModifiedContent<<<opaque return type of View.onTapGesture(count:perform:)>>.0, _ContentShapeKindModifier<RoundedRectangle>> and conformance <> ModifiedContent<A, B>();
    lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<<<opaque return type of View.buttonStyle<A>(_:)>>.0, _BackgroundModifier<_ShapeView<RoundedRectangle, Color>>>, _ContentShapeKindModifier<RoundedRectangle>> and conformance <> ModifiedContent<A, B>();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type _ConditionalContent<ModifiedContent<<<opaque return type of View.onTapGesture(count:perform:)>>.0, _ContentShapeKindModifier<RoundedRectangle>>, ModifiedContent<ModifiedContent<<<opaque return type of View.buttonStyle<A>(_:)>>.0, _BackgroundModifier<_ShapeView<RoundedRectangle, Color>>>, _ContentShapeKindModifier<RoundedRectangle>>> and conformance <> _ConditionalContent<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<<<opaque return type of View.onTapGesture(count:perform:)>>.0, _ContentShapeKindModifier<RoundedRectangle>> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<<<opaque return type of View.onTapGesture(count:perform:)>>.0, _ContentShapeKindModifier<RoundedRectangle>> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<<<opaque return type of View.onTapGesture(count:perform:)>>.0, _ContentShapeKindModifier<RoundedRectangle>> and conformance <> ModifiedContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyAA4ViewPAAE12onTapGesture5count7performQrSi_yyctFQOyAeAE11buttonStyleyQrqd__AA015PrimitiveButtonL0Rd__lFQOyAA0N0VyACyACyACyACyACyACyACyACyACyAA5ImageVAA16_FlexFrameLayoutVGAA08_PaddingR0VGAA011_BackgroundL8ModifierVyAA5ColorVGGAA022_EnvironmentKeyWritingU0VyAXSgGGAA11_ClipEffectVyAA16RoundedRectangleVGGA0_yAA4FontVSgGGA2_GAA011_ForegroundlU0VyAXGGAA023AccessibilityAttachmentU0VGG_AA05PlainnL0VQo__Qo_AA01_d9ShapeKindU0VyA7_GGMd);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI4ViewPAAE11buttonStyleyQrqd__AA015PrimitiveButtonE0Rd__lFQOyAA0G0VyAA15ModifiedContentVyAIyAIyAIyAIyAIyAIyAIyAIyAA5ImageVAA16_FlexFrameLayoutVGAA08_PaddingM0VGAA011_BackgroundE8ModifierVyAA5ColorVGGAA022_EnvironmentKeyWritingP0VyAUSgGGAA11_ClipEffectVyAA16RoundedRectangleVGGAYyAA4FontVSgGGA_GAA011_ForegroundeP0VyAUGGAA023AccessibilityAttachmentP0VGG_AA05PlaingE0VQo_Md);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI6ButtonVyAA15ModifiedContentVyAEyAEyAEyAEyAEyAEyAEyAEyAA5ImageVAA16_FlexFrameLayoutVGAA08_PaddingI0VGAA24_BackgroundStyleModifierVyAA5ColorVGGAA022_EnvironmentKeyWritingM0VyAQSgGGAA11_ClipEffectVyAA16RoundedRectangleVGGAUyAA4FontVSgGGAWGAA011_ForegroundlM0VyAQGGAA023AccessibilityAttachmentM0VGGMd);
    type metadata accessor for PlainButtonStyle();
    lazy protocol witness table accessor for type NavigationLink<<<opaque return type of View.accessibilityElement(children:)>>.0, <<opaque return type of View.navigationTitle<A>(_:)>>.0> and conformance NavigationLink<A, B>(&lazy protocol witness table cache variable for type Button<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Image, _FlexFrameLayout>, _PaddingLayout>, _BackgroundStyleModifier<Color>>, _EnvironmentKeyWritingModifier<Color?>>, _ClipEffect<RoundedRectangle>>, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyWritingModifier<Color?>>, _ForegroundStyleModifier<Color>>, AccessibilityAttachmentModifier>> and conformance Button<A>, &_s7SwiftUI6ButtonVyAA15ModifiedContentVyAEyAEyAEyAEyAEyAEyAEyAEyAA5ImageVAA16_FlexFrameLayoutVGAA08_PaddingI0VGAA24_BackgroundStyleModifierVyAA5ColorVGGAA022_EnvironmentKeyWritingM0VyAQSgGGAA11_ClipEffectVyAA16RoundedRectangleVGGAUyAA4FontVSgGGAWGAA011_ForegroundlM0VyAQGGAA023AccessibilityAttachmentM0VGGMd);
    lazy protocol witness table accessor for type PlainButtonStyle and conformance PlainButtonStyle(&lazy protocol witness table cache variable for type PlainButtonStyle and conformance PlainButtonStyle, MEMORY[0x277CDDB18]);
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    lazy protocol witness table accessor for type NavigationLink<<<opaque return type of View.accessibilityElement(children:)>>.0, <<opaque return type of View.navigationTitle<A>(_:)>>.0> and conformance NavigationLink<A, B>(&lazy protocol witness table cache variable for type _ContentShapeKindModifier<RoundedRectangle> and conformance _ContentShapeKindModifier<A>, &_s7SwiftUI25_ContentShapeKindModifierVyAA16RoundedRectangleVGMd);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<<<opaque return type of View.onTapGesture(count:perform:)>>.0, _ContentShapeKindModifier<RoundedRectangle>> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type ModifiedContent<<<opaque return type of View.onTapGesture(count:perform:)>>.0, _ContentShapeKindModifier<RoundedRectangle>> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<<<opaque return type of View.onTapGesture(count:perform:)>>.0, _ContentShapeKindModifier<RoundedRectangle>> and conformance <> ModifiedContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyAA4ViewPAAE12onTapGesture5count7performQrSi_yyctFQOyAeAE11buttonStyleyQrqd__AA015PrimitiveButtonL0Rd__lFQOyAA0N0VyACyACyACyACyACyACyACyAA5GroupVyAA012_ConditionalD0VyACyAA5ImageVAA31AccessibilityAttachmentModifierVGAUGGAA16_FlexFrameLayoutVGAA08_PaddingW0VGAA011_BackgroundlT0VyAA5ColorVGGAA022_EnvironmentKeyWritingT0VyA5_SgGGAA11_ClipEffectVyAA16RoundedRectangleVGGA9_yAA4FontVSgGGA11_GG_AA05PlainnL0VQo__Qo_AA01_d9ShapeKindT0VyA16_GGMd);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI4ViewPAAE11buttonStyleyQrqd__AA015PrimitiveButtonE0Rd__lFQOyAA0G0VyAA15ModifiedContentVyAIyAIyAIyAIyAIyAIyAA5GroupVyAA012_ConditionalI0VyAIyAA5ImageVAA31AccessibilityAttachmentModifierVGARGGAA16_FlexFrameLayoutVGAA08_PaddingR0VGAA011_BackgroundeO0VyAA5ColorVGGAA022_EnvironmentKeyWritingO0VyA2_SgGGAA11_ClipEffectVyAA16RoundedRectangleVGGA6_yAA4FontVSgGGA8_GG_AA05PlaingE0VQo_Md);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI6ButtonVyAA15ModifiedContentVyAEyAEyAEyAEyAEyAEyAA5GroupVyAA012_ConditionalE0VyAEyAA5ImageVAA31AccessibilityAttachmentModifierVGANGGAA16_FlexFrameLayoutVGAA08_PaddingN0VGAA016_BackgroundStyleK0VyAA5ColorVGGAA022_EnvironmentKeyWritingK0VyAZSgGGAA11_ClipEffectVyAA16RoundedRectangleVGGA2_yAA4FontVSgGGA4_GGMd);
    type metadata accessor for PlainButtonStyle();
    lazy protocol witness table accessor for type Button<ModifiedContent<AdaptiveStack<TupleView<(Group<_ConditionalContent<Image, ModifiedContent<Image, _EnvironmentKeyWritingModifier<LayoutDirection>>>>, ModifiedContent<<<opaque return type of View.fontWeight(_:)>>.0, _ForegroundStyleModifier<HierarchicalShapeStyle>>, Spacer?, ModifiedContent<ModifiedContent<Text, _EnvironmentKeyWritingModifier<TextAlignment>>, _EnvironmentKeyWritingModifier<Int?>>?)>>, _ContentShapeModifier<Rectangle>>> and conformance Button<A>(&lazy protocol witness table cache variable for type Button<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Group<_ConditionalContent<ModifiedContent<Image, AccessibilityAttachmentModifier>, ModifiedContent<Image, AccessibilityAttachmentModifier>>>, _FlexFrameLayout>, _PaddingLayout>, _BackgroundStyleModifier<Color>>, _EnvironmentKeyWritingModifier<Color?>>, _ClipEffect<RoundedRectangle>>, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyWritingModifier<Color?>>> and conformance Button<A>, &_s7SwiftUI6ButtonVyAA15ModifiedContentVyAEyAEyAEyAEyAEyAEyAA5GroupVyAA012_ConditionalE0VyAEyAA5ImageVAA31AccessibilityAttachmentModifierVGANGGAA16_FlexFrameLayoutVGAA08_PaddingN0VGAA016_BackgroundStyleK0VyAA5ColorVGGAA022_EnvironmentKeyWritingK0VyAZSgGGAA11_ClipEffectVyAA16RoundedRectangleVGGA2_yAA4FontVSgGGA4_GGMd);
    _s7SwiftUI16PlainButtonStyleVAcA09PrimitivedE0AAWlTm_1(&lazy protocol witness table cache variable for type PlainButtonStyle and conformance PlainButtonStyle, MEMORY[0x277CDDB18]);
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    lazy protocol witness table accessor for type Button<ModifiedContent<AdaptiveStack<TupleView<(Group<_ConditionalContent<Image, ModifiedContent<Image, _EnvironmentKeyWritingModifier<LayoutDirection>>>>, ModifiedContent<<<opaque return type of View.fontWeight(_:)>>.0, _ForegroundStyleModifier<HierarchicalShapeStyle>>, Spacer?, ModifiedContent<ModifiedContent<Text, _EnvironmentKeyWritingModifier<TextAlignment>>, _EnvironmentKeyWritingModifier<Int?>>?)>>, _ContentShapeModifier<Rectangle>>> and conformance Button<A>(&lazy protocol witness table cache variable for type _ContentShapeKindModifier<RoundedRectangle> and conformance _ContentShapeKindModifier<A>, &_s7SwiftUI25_ContentShapeKindModifierVyAA16RoundedRectangleVGMd);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<<<opaque return type of View.onTapGesture(count:perform:)>>.0, _ContentShapeKindModifier<RoundedRectangle>> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<<<opaque return type of View.buttonStyle<A>(_:)>>.0, _BackgroundModifier<_ShapeView<RoundedRectangle, Color>>>, _ContentShapeKindModifier<RoundedRectangle>> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<<<opaque return type of View.buttonStyle<A>(_:)>>.0, _BackgroundModifier<_ShapeView<RoundedRectangle, Color>>>, _ContentShapeKindModifier<RoundedRectangle>> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<<<opaque return type of View.buttonStyle<A>(_:)>>.0, _BackgroundModifier<_ShapeView<RoundedRectangle, Color>>>, _ContentShapeKindModifier<RoundedRectangle>> and conformance <> ModifiedContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyACyAA4ViewPAAE11buttonStyleyQrqd__AA015PrimitiveButtonG0Rd__lFQOyAA0I0VyAeAE20accessibilityElement8childrenQrAA26AccessibilityChildBehaviorV_tFQOyACyACyACyACyAA6VStackVyAA05TupleE0VyACyAA5ImageVAA0M18AttachmentModifierVG_AeAE10fontWeightyQrAA4FontV0V0VSgFQOyACyAA4TextVAA022_EnvironmentKeyWritingT0VyAA0X9AlignmentOGG_Qo_ACyACyA8_A4_ySiSgGGA4_yAA5ColorVSgGGtGGAA16_FlexFrameLayoutVGAA14_PaddingLayoutVGA4_yAYSgGGAA011_ForegroundgT0VyA14_GG_Qo_G_AA05PlainiG0VQo_AA011_BackgroundT0VyAA06_ShapeE0VyAA16RoundedRectangleVA14_GGGAA01_d9ShapeKindT0VyA43_GGMd);
    lazy protocol witness table accessor for type ModifiedContent<<<opaque return type of View.buttonStyle<A>(_:)>>.0, _BackgroundModifier<_ShapeView<RoundedRectangle, Color>>> and conformance <> ModifiedContent<A, B>();
    lazy protocol witness table accessor for type NavigationLink<<<opaque return type of View.accessibilityElement(children:)>>.0, <<opaque return type of View.navigationTitle<A>(_:)>>.0> and conformance NavigationLink<A, B>(&lazy protocol witness table cache variable for type _ContentShapeKindModifier<RoundedRectangle> and conformance _ContentShapeKindModifier<A>, &_s7SwiftUI25_ContentShapeKindModifierVyAA16RoundedRectangleVGMd);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<<<opaque return type of View.buttonStyle<A>(_:)>>.0, _BackgroundModifier<_ShapeView<RoundedRectangle, Color>>>, _ContentShapeKindModifier<RoundedRectangle>> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<<<opaque return type of View.buttonStyle<A>(_:)>>.0, _BackgroundModifier<_ShapeView<RoundedRectangle, Color>>> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<<<opaque return type of View.buttonStyle<A>(_:)>>.0, _BackgroundModifier<_ShapeView<RoundedRectangle, Color>>> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<<<opaque return type of View.buttonStyle<A>(_:)>>.0, _BackgroundModifier<_ShapeView<RoundedRectangle, Color>>> and conformance <> ModifiedContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyAA4ViewPAAE11buttonStyleyQrqd__AA015PrimitiveButtonG0Rd__lFQOyAA0I0VyAeAE20accessibilityElement8childrenQrAA26AccessibilityChildBehaviorV_tFQOyACyACyACyACyAA6VStackVyAA05TupleE0VyACyAA5ImageVAA0M18AttachmentModifierVG_AeAE10fontWeightyQrAA4FontV0V0VSgFQOyACyAA4TextVAA022_EnvironmentKeyWritingT0VyAA0X9AlignmentOGG_Qo_ACyACyA8_A4_ySiSgGGA4_yAA5ColorVSgGGtGGAA16_FlexFrameLayoutVGAA14_PaddingLayoutVGA4_yAYSgGGAA011_ForegroundgT0VyA14_GG_Qo_G_AA05PlainiG0VQo_AA011_BackgroundT0VyAA06_ShapeE0VyAA16RoundedRectangleVA14_GGGMd);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI6ButtonVyAA4ViewPAAE20accessibilityElement8childrenQrAA26AccessibilityChildBehaviorV_tFQOyAA15ModifiedContentVyAKyAKyAKyAA6VStackVyAA05TupleD0VyAKyAA5ImageVAA0H18AttachmentModifierVG_AeAE10fontWeightyQrAA4FontV0S0VSgFQOyAKyAA4TextVAA022_EnvironmentKeyWritingQ0VyAA0U9AlignmentOGG_Qo_AKyAKyA6_A2_ySiSgGGA2_yAA5ColorVSgGGtGGAA16_FlexFrameLayoutVGAA14_PaddingLayoutVGA2_yAWSgGGAA016_ForegroundStyleQ0VyA12_GG_Qo_GMd);
    type metadata accessor for PlainButtonStyle();
    lazy protocol witness table accessor for type NavigationLink<<<opaque return type of View.accessibilityElement(children:)>>.0, <<opaque return type of View.navigationTitle<A>(_:)>>.0> and conformance NavigationLink<A, B>(&lazy protocol witness table cache variable for type Button<<<opaque return type of View.accessibilityElement(children:)>>.0> and conformance Button<A>, &_s7SwiftUI6ButtonVyAA4ViewPAAE20accessibilityElement8childrenQrAA26AccessibilityChildBehaviorV_tFQOyAA15ModifiedContentVyAKyAKyAKyAA6VStackVyAA05TupleD0VyAKyAA5ImageVAA0H18AttachmentModifierVG_AeAE10fontWeightyQrAA4FontV0S0VSgFQOyAKyAA4TextVAA022_EnvironmentKeyWritingQ0VyAA0U9AlignmentOGG_Qo_AKyAKyA6_A2_ySiSgGGA2_yAA5ColorVSgGGtGGAA16_FlexFrameLayoutVGAA14_PaddingLayoutVGA2_yAWSgGGAA016_ForegroundStyleQ0VyA12_GG_Qo_GMd);
    lazy protocol witness table accessor for type PlainButtonStyle and conformance PlainButtonStyle(&lazy protocol witness table cache variable for type PlainButtonStyle and conformance PlainButtonStyle, MEMORY[0x277CDDB18]);
    swift_getOpaqueTypeConformance2();
    lazy protocol witness table accessor for type NavigationLink<<<opaque return type of View.accessibilityElement(children:)>>.0, <<opaque return type of View.navigationTitle<A>(_:)>>.0> and conformance NavigationLink<A, B>(&lazy protocol witness table cache variable for type _BackgroundModifier<_ShapeView<RoundedRectangle, Color>> and conformance _BackgroundModifier<A>, &_s7SwiftUI19_BackgroundModifierVyAA10_ShapeViewVyAA16RoundedRectangleVAA5ColorVGGMd);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<<<opaque return type of View.buttonStyle<A>(_:)>>.0, _BackgroundModifier<_ShapeView<RoundedRectangle, Color>>> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

uint64_t partial apply for closure #4 in closure #1 in VoiceCompanionEntryView.body.getter()
{
  type metadata accessor for VoiceCompanionEntryView();

  return closure #4 in closure #1 in VoiceCompanionEntryView.body.getter();
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<Image, _EnvironmentKeyWritingModifier<Color?>> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<Image, _EnvironmentKeyWritingModifier<Color?>> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<Image, _EnvironmentKeyWritingModifier<Color?>> and conformance <> ModifiedContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGMd);
    lazy protocol witness table accessor for type NavigationLink<<<opaque return type of View.accessibilityElement(children:)>>.0, <<opaque return type of View.navigationTitle<A>(_:)>>.0> and conformance NavigationLink<A, B>(&lazy protocol witness table cache variable for type _EnvironmentKeyWritingModifier<Color?> and conformance _EnvironmentKeyWritingModifier<A>, &_s7SwiftUI30_EnvironmentKeyWritingModifierVyAA5ColorVSgGMd);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<Image, _EnvironmentKeyWritingModifier<Color?>> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

unint64_t outlined consume of WorkoutVoiceAvailabilityProvider.State(unint64_t result)
{
  if (result >= 2)
  {
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<List<Never, VoiceCompanionSettingsView>, _EnvironmentKeyWritingModifier<CGFloat?>>, _TraitWritingModifier<ListSectionSpacingTraitKey>>, _EnvironmentKeyWritingModifier<ListSectionSpacing?>>, InlineNavigationBarTitle> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<List<Never, VoiceCompanionSettingsView>, _EnvironmentKeyWritingModifier<CGFloat?>>, _TraitWritingModifier<ListSectionSpacingTraitKey>>, _EnvironmentKeyWritingModifier<ListSectionSpacing?>>, InlineNavigationBarTitle> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<List<Never, VoiceCompanionSettingsView>, _EnvironmentKeyWritingModifier<CGFloat?>>, _TraitWritingModifier<ListSectionSpacingTraitKey>>, _EnvironmentKeyWritingModifier<ListSectionSpacing?>>, InlineNavigationBarTitle> and conformance <> ModifiedContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyACyACyACyAA4ListVys5NeverO07WorkoutB026VoiceCompanionSettingsViewVGAA30_EnvironmentKeyWritingModifierVy12CoreGraphics7CGFloatVSgGGAA06_TraitnO0VyAA0e14SectionSpacingsM0VGGAMyAA0etU0VSgGGAH24InlineNavigationBarTitle33_B86241820663BC1B3220D14BE7395977LLVGMd);
    lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<ModifiedContent<List<Never, VoiceCompanionSettingsView>, _EnvironmentKeyWritingModifier<CGFloat?>>, _TraitWritingModifier<ListSectionSpacingTraitKey>>, _EnvironmentKeyWritingModifier<ListSectionSpacing?>> and conformance <> ModifiedContent<A, B>();
    lazy protocol witness table accessor for type InlineNavigationBarTitle and conformance InlineNavigationBarTitle();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<List<Never, VoiceCompanionSettingsView>, _EnvironmentKeyWritingModifier<CGFloat?>>, _TraitWritingModifier<ListSectionSpacingTraitKey>>, _EnvironmentKeyWritingModifier<ListSectionSpacing?>>, InlineNavigationBarTitle> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<ModifiedContent<List<Never, VoiceCompanionSettingsView>, _EnvironmentKeyWritingModifier<CGFloat?>>, _TraitWritingModifier<ListSectionSpacingTraitKey>>, _EnvironmentKeyWritingModifier<ListSectionSpacing?>> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<List<Never, VoiceCompanionSettingsView>, _EnvironmentKeyWritingModifier<CGFloat?>>, _TraitWritingModifier<ListSectionSpacingTraitKey>>, _EnvironmentKeyWritingModifier<ListSectionSpacing?>> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<List<Never, VoiceCompanionSettingsView>, _EnvironmentKeyWritingModifier<CGFloat?>>, _TraitWritingModifier<ListSectionSpacingTraitKey>>, _EnvironmentKeyWritingModifier<ListSectionSpacing?>> and conformance <> ModifiedContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyACyACyAA4ListVys5NeverO07WorkoutB026VoiceCompanionSettingsViewVGAA30_EnvironmentKeyWritingModifierVy12CoreGraphics7CGFloatVSgGGAA06_TraitnO0VyAA0e14SectionSpacingsM0VGGAMyAA0etU0VSgGGMd);
    lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<List<Never, VoiceCompanionSettingsView>, _EnvironmentKeyWritingModifier<CGFloat?>>, _TraitWritingModifier<ListSectionSpacingTraitKey>> and conformance <> ModifiedContent<A, B>();
    lazy protocol witness table accessor for type NavigationLink<<<opaque return type of View.accessibilityElement(children:)>>.0, <<opaque return type of View.navigationTitle<A>(_:)>>.0> and conformance NavigationLink<A, B>(&lazy protocol witness table cache variable for type _EnvironmentKeyWritingModifier<ListSectionSpacing?> and conformance _EnvironmentKeyWritingModifier<A>, &_s7SwiftUI30_EnvironmentKeyWritingModifierVyAA18ListSectionSpacingVSgGMd);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<List<Never, VoiceCompanionSettingsView>, _EnvironmentKeyWritingModifier<CGFloat?>>, _TraitWritingModifier<ListSectionSpacingTraitKey>>, _EnvironmentKeyWritingModifier<ListSectionSpacing?>> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<List<Never, VoiceCompanionSettingsView>, _EnvironmentKeyWritingModifier<CGFloat?>>, _TraitWritingModifier<ListSectionSpacingTraitKey>> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<List<Never, VoiceCompanionSettingsView>, _EnvironmentKeyWritingModifier<CGFloat?>>, _TraitWritingModifier<ListSectionSpacingTraitKey>> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<List<Never, VoiceCompanionSettingsView>, _EnvironmentKeyWritingModifier<CGFloat?>>, _TraitWritingModifier<ListSectionSpacingTraitKey>> and conformance <> ModifiedContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyACyAA4ListVys5NeverO07WorkoutB026VoiceCompanionSettingsViewVGAA30_EnvironmentKeyWritingModifierVy12CoreGraphics7CGFloatVSgGGAA06_TraitnO0VyAA0e14SectionSpacingsM0VGGMd);
    lazy protocol witness table accessor for type ModifiedContent<List<Never, VoiceCompanionSettingsView>, _EnvironmentKeyWritingModifier<CGFloat?>> and conformance <> ModifiedContent<A, B>();
    lazy protocol witness table accessor for type NavigationLink<<<opaque return type of View.accessibilityElement(children:)>>.0, <<opaque return type of View.navigationTitle<A>(_:)>>.0> and conformance NavigationLink<A, B>(&lazy protocol witness table cache variable for type _TraitWritingModifier<ListSectionSpacingTraitKey> and conformance _TraitWritingModifier<A>, &_s7SwiftUI21_TraitWritingModifierVyAA018ListSectionSpacingC3KeyVGMd);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<List<Never, VoiceCompanionSettingsView>, _EnvironmentKeyWritingModifier<CGFloat?>>, _TraitWritingModifier<ListSectionSpacingTraitKey>> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<List<Never, VoiceCompanionSettingsView>, _EnvironmentKeyWritingModifier<CGFloat?>> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<List<Never, VoiceCompanionSettingsView>, _EnvironmentKeyWritingModifier<CGFloat?>> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<List<Never, VoiceCompanionSettingsView>, _EnvironmentKeyWritingModifier<CGFloat?>> and conformance <> ModifiedContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyAA4ListVys5NeverO07WorkoutB026VoiceCompanionSettingsViewVGAA30_EnvironmentKeyWritingModifierVy12CoreGraphics7CGFloatVSgGGMd);
    lazy protocol witness table accessor for type NavigationLink<<<opaque return type of View.accessibilityElement(children:)>>.0, <<opaque return type of View.navigationTitle<A>(_:)>>.0> and conformance NavigationLink<A, B>(&lazy protocol witness table cache variable for type List<Never, VoiceCompanionSettingsView> and conformance List<A, B>, &_s7SwiftUI4ListVys5NeverO07WorkoutB026VoiceCompanionSettingsViewVGMd);
    lazy protocol witness table accessor for type NavigationLink<<<opaque return type of View.accessibilityElement(children:)>>.0, <<opaque return type of View.navigationTitle<A>(_:)>>.0> and conformance NavigationLink<A, B>(&lazy protocol witness table cache variable for type _EnvironmentKeyWritingModifier<CGFloat?> and conformance _EnvironmentKeyWritingModifier<A>, &_s7SwiftUI30_EnvironmentKeyWritingModifierVy12CoreGraphics7CGFloatVSgGMd);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<List<Never, VoiceCompanionSettingsView>, _EnvironmentKeyWritingModifier<CGFloat?>> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type InlineNavigationBarTitle and conformance InlineNavigationBarTitle()
{
  result = lazy protocol witness table cache variable for type InlineNavigationBarTitle and conformance InlineNavigationBarTitle;
  if (!lazy protocol witness table cache variable for type InlineNavigationBarTitle and conformance InlineNavigationBarTitle)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type InlineNavigationBarTitle and conformance InlineNavigationBarTitle);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<Button<DefaultButtonLabel>, _EnvironmentKeyWritingModifier<AnyShapeStyle?>> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<Button<DefaultButtonLabel>, _EnvironmentKeyWritingModifier<AnyShapeStyle?>> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<Button<DefaultButtonLabel>, _EnvironmentKeyWritingModifier<AnyShapeStyle?>> and conformance <> ModifiedContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyAA6ButtonVyAA07DefaultE5LabelVGAA30_EnvironmentKeyWritingModifierVyAA13AnyShapeStyleVSgGGMd);
    lazy protocol witness table accessor for type NavigationLink<<<opaque return type of View.accessibilityElement(children:)>>.0, <<opaque return type of View.navigationTitle<A>(_:)>>.0> and conformance NavigationLink<A, B>(&lazy protocol witness table cache variable for type Button<DefaultButtonLabel> and conformance Button<A>, &_s7SwiftUI6ButtonVyAA07DefaultC5LabelVGMd);
    lazy protocol witness table accessor for type NavigationLink<<<opaque return type of View.accessibilityElement(children:)>>.0, <<opaque return type of View.navigationTitle<A>(_:)>>.0> and conformance NavigationLink<A, B>(&lazy protocol witness table cache variable for type _EnvironmentKeyWritingModifier<AnyShapeStyle?> and conformance _EnvironmentKeyWritingModifier<A>, &_s7SwiftUI30_EnvironmentKeyWritingModifierVyAA13AnyShapeStyleVSgGMd);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<Button<DefaultButtonLabel>, _EnvironmentKeyWritingModifier<AnyShapeStyle?>> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<VStack<TupleView<(ModifiedContent<Image, AccessibilityAttachmentModifier>, <<opaque return type of View.fontWeight(_:)>>.0, ModifiedContent<ModifiedContent<ModifiedContent<Text, _EnvironmentKeyWritingModifier<TextAlignment>>, _EnvironmentKeyWritingModifier<Int?>>, _EnvironmentKeyWritingModifier<Color?>>)>>, _FlexFrameLayout>, _PaddingLayout>, _EnvironmentKeyWritingModifier<Font?>>, _ForegroundStyleModifier<Color>> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<VStack<TupleView<(ModifiedContent<Image, AccessibilityAttachmentModifier>, <<opaque return type of View.fontWeight(_:)>>.0, ModifiedContent<ModifiedContent<ModifiedContent<Text, _EnvironmentKeyWritingModifier<TextAlignment>>, _EnvironmentKeyWritingModifier<Int?>>, _EnvironmentKeyWritingModifier<Color?>>)>>, _FlexFrameLayout>, _PaddingLayout>, _EnvironmentKeyWritingModifier<Font?>>, _ForegroundStyleModifier<Color>> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<VStack<TupleView<(ModifiedContent<Image, AccessibilityAttachmentModifier>, <<opaque return type of View.fontWeight(_:)>>.0, ModifiedContent<ModifiedContent<ModifiedContent<Text, _EnvironmentKeyWritingModifier<TextAlignment>>, _EnvironmentKeyWritingModifier<Int?>>, _EnvironmentKeyWritingModifier<Color?>>)>>, _FlexFrameLayout>, _PaddingLayout>, _EnvironmentKeyWritingModifier<Font?>>, _ForegroundStyleModifier<Color>> and conformance <> ModifiedContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyACyACyACyAA6VStackVyAA9TupleViewVyACyAA5ImageVAA31AccessibilityAttachmentModifierVG_AA0G0PAAE10fontWeightyQrAA4FontV0M0VSgFQOyACyAA4TextVAA022_EnvironmentKeyWritingK0VyAA0O9AlignmentOGG_Qo_ACyACyA0_AXySiSgGGAXyAA5ColorVSgGGtGGAA16_FlexFrameLayoutVGAA08_PaddingW0VGAXyAQSgGGAA016_ForegroundStyleK0VyA6_GGMd);
    lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<ModifiedContent<VStack<TupleView<(ModifiedContent<Image, AccessibilityAttachmentModifier>, <<opaque return type of View.fontWeight(_:)>>.0, ModifiedContent<ModifiedContent<ModifiedContent<Text, _EnvironmentKeyWritingModifier<TextAlignment>>, _EnvironmentKeyWritingModifier<Int?>>, _EnvironmentKeyWritingModifier<Color?>>)>>, _FlexFrameLayout>, _PaddingLayout>, _EnvironmentKeyWritingModifier<Font?>> and conformance <> ModifiedContent<A, B>();
    lazy protocol witness table accessor for type NavigationLink<<<opaque return type of View.accessibilityElement(children:)>>.0, <<opaque return type of View.navigationTitle<A>(_:)>>.0> and conformance NavigationLink<A, B>(&lazy protocol witness table cache variable for type _ForegroundStyleModifier<Color> and conformance _ForegroundStyleModifier<A>, &_s7SwiftUI24_ForegroundStyleModifierVyAA5ColorVGMd);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<VStack<TupleView<(ModifiedContent<Image, AccessibilityAttachmentModifier>, <<opaque return type of View.fontWeight(_:)>>.0, ModifiedContent<ModifiedContent<ModifiedContent<Text, _EnvironmentKeyWritingModifier<TextAlignment>>, _EnvironmentKeyWritingModifier<Int?>>, _EnvironmentKeyWritingModifier<Color?>>)>>, _FlexFrameLayout>, _PaddingLayout>, _EnvironmentKeyWritingModifier<Font?>>, _ForegroundStyleModifier<Color>> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<ModifiedContent<VStack<TupleView<(ModifiedContent<Image, AccessibilityAttachmentModifier>, <<opaque return type of View.fontWeight(_:)>>.0, ModifiedContent<ModifiedContent<ModifiedContent<Text, _EnvironmentKeyWritingModifier<TextAlignment>>, _EnvironmentKeyWritingModifier<Int?>>, _EnvironmentKeyWritingModifier<Color?>>)>>, _FlexFrameLayout>, _PaddingLayout>, _EnvironmentKeyWritingModifier<Font?>> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<VStack<TupleView<(ModifiedContent<Image, AccessibilityAttachmentModifier>, <<opaque return type of View.fontWeight(_:)>>.0, ModifiedContent<ModifiedContent<ModifiedContent<Text, _EnvironmentKeyWritingModifier<TextAlignment>>, _EnvironmentKeyWritingModifier<Int?>>, _EnvironmentKeyWritingModifier<Color?>>)>>, _FlexFrameLayout>, _PaddingLayout>, _EnvironmentKeyWritingModifier<Font?>> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<VStack<TupleView<(ModifiedContent<Image, AccessibilityAttachmentModifier>, <<opaque return type of View.fontWeight(_:)>>.0, ModifiedContent<ModifiedContent<ModifiedContent<Text, _EnvironmentKeyWritingModifier<TextAlignment>>, _EnvironmentKeyWritingModifier<Int?>>, _EnvironmentKeyWritingModifier<Color?>>)>>, _FlexFrameLayout>, _PaddingLayout>, _EnvironmentKeyWritingModifier<Font?>> and conformance <> ModifiedContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyACyACyAA6VStackVyAA9TupleViewVyACyAA5ImageVAA31AccessibilityAttachmentModifierVG_AA0G0PAAE10fontWeightyQrAA4FontV0M0VSgFQOyACyAA4TextVAA022_EnvironmentKeyWritingK0VyAA0O9AlignmentOGG_Qo_ACyACyA0_AXySiSgGGAXyAA5ColorVSgGGtGGAA16_FlexFrameLayoutVGAA08_PaddingW0VGAXyAQSgGGMd);
    lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Color?>>, _PaddingLayout> and conformance <> ModifiedContent<A, B>(&lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<VStack<TupleView<(ModifiedContent<Image, AccessibilityAttachmentModifier>, <<opaque return type of View.fontWeight(_:)>>.0, ModifiedContent<ModifiedContent<ModifiedContent<Text, _EnvironmentKeyWritingModifier<TextAlignment>>, _EnvironmentKeyWritingModifier<Int?>>, _EnvironmentKeyWritingModifier<Color?>>)>>, _FlexFrameLayout>, _PaddingLayout> and conformance <> ModifiedContent<A, B>, &_s7SwiftUI15ModifiedContentVyACyAA6VStackVyAA9TupleViewVyACyAA5ImageVAA31AccessibilityAttachmentModifierVG_AA0G0PAAE10fontWeightyQrAA4FontV0M0VSgFQOyACyAA4TextVAA022_EnvironmentKeyWritingK0VyAA0O9AlignmentOGG_Qo_ACyACyA0_AXySiSgGGAXyAA5ColorVSgGGtGGAA16_FlexFrameLayoutVGAA08_PaddingW0VGMd, &_s7SwiftUI15ModifiedContentVyACyAA6VStackVyAA9TupleViewVyACyAA5ImageVAA31AccessibilityAttachmentModifierVG_AA0G0PAAE10fontWeightyQrAA4FontV0M0VSgFQOyACyAA4TextVAA022_EnvironmentKeyWritingK0VyAA0O9AlignmentOGG_Qo_ACyACyA0_AXySiSgGGAXyAA5ColorVSgGGtGGAA16_FlexFrameLayoutVGAA08_PaddingW0VGMR, lazy protocol witness table accessor for type ModifiedContent<VStack<TupleView<(ModifiedContent<Image, AccessibilityAttachmentModifier>, <<opaque return type of View.fontWeight(_:)>>.0, ModifiedContent<ModifiedContent<ModifiedContent<Text, _EnvironmentKeyWritingModifier<TextAlignment>>, _EnvironmentKeyWritingModifier<Int?>>, _EnvironmentKeyWritingModifier<Color?>>)>>, _FlexFrameLayout> and conformance <> ModifiedContent<A, B>);
    lazy protocol witness table accessor for type NavigationLink<<<opaque return type of View.accessibilityElement(children:)>>.0, <<opaque return type of View.navigationTitle<A>(_:)>>.0> and conformance NavigationLink<A, B>(&lazy protocol witness table cache variable for type _EnvironmentKeyWritingModifier<Font?> and conformance _EnvironmentKeyWritingModifier<A>, &_s7SwiftUI30_EnvironmentKeyWritingModifierVyAA4FontVSgGMd);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<VStack<TupleView<(ModifiedContent<Image, AccessibilityAttachmentModifier>, <<opaque return type of View.fontWeight(_:)>>.0, ModifiedContent<ModifiedContent<ModifiedContent<Text, _EnvironmentKeyWritingModifier<TextAlignment>>, _EnvironmentKeyWritingModifier<Int?>>, _EnvironmentKeyWritingModifier<Color?>>)>>, _FlexFrameLayout>, _PaddingLayout>, _EnvironmentKeyWritingModifier<Font?>> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<VStack<TupleView<(ModifiedContent<Image, AccessibilityAttachmentModifier>, <<opaque return type of View.fontWeight(_:)>>.0, ModifiedContent<ModifiedContent<ModifiedContent<Text, _EnvironmentKeyWritingModifier<TextAlignment>>, _EnvironmentKeyWritingModifier<Int?>>, _EnvironmentKeyWritingModifier<Color?>>)>>, _FlexFrameLayout> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<VStack<TupleView<(ModifiedContent<Image, AccessibilityAttachmentModifier>, <<opaque return type of View.fontWeight(_:)>>.0, ModifiedContent<ModifiedContent<ModifiedContent<Text, _EnvironmentKeyWritingModifier<TextAlignment>>, _EnvironmentKeyWritingModifier<Int?>>, _EnvironmentKeyWritingModifier<Color?>>)>>, _FlexFrameLayout> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<VStack<TupleView<(ModifiedContent<Image, AccessibilityAttachmentModifier>, <<opaque return type of View.fontWeight(_:)>>.0, ModifiedContent<ModifiedContent<ModifiedContent<Text, _EnvironmentKeyWritingModifier<TextAlignment>>, _EnvironmentKeyWritingModifier<Int?>>, _EnvironmentKeyWritingModifier<Color?>>)>>, _FlexFrameLayout> and conformance <> ModifiedContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyAA6VStackVyAA9TupleViewVyACyAA5ImageVAA31AccessibilityAttachmentModifierVG_AA0G0PAAE10fontWeightyQrAA4FontV0M0VSgFQOyACyAA4TextVAA022_EnvironmentKeyWritingK0VyAA0O9AlignmentOGG_Qo_ACyACyA0_AXySiSgGGAXyAA5ColorVSgGGtGGAA16_FlexFrameLayoutVGMd);
    lazy protocol witness table accessor for type NavigationLink<<<opaque return type of View.accessibilityElement(children:)>>.0, <<opaque return type of View.navigationTitle<A>(_:)>>.0> and conformance NavigationLink<A, B>(&lazy protocol witness table cache variable for type VStack<TupleView<(ModifiedContent<Image, AccessibilityAttachmentModifier>, <<opaque return type of View.fontWeight(_:)>>.0, ModifiedContent<ModifiedContent<ModifiedContent<Text, _EnvironmentKeyWritingModifier<TextAlignment>>, _EnvironmentKeyWritingModifier<Int?>>, _EnvironmentKeyWritingModifier<Color?>>)>> and conformance VStack<A>, &_s7SwiftUI6VStackVyAA9TupleViewVyAA15ModifiedContentVyAA5ImageVAA31AccessibilityAttachmentModifierVG_AA0E0PAAE10fontWeightyQrAA4FontV0M0VSgFQOyAGyAA4TextVAA022_EnvironmentKeyWritingK0VyAA0O9AlignmentOGG_Qo_AGyAGyA0_AXySiSgGGAXyAA5ColorVSgGGtGGMd);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<VStack<TupleView<(ModifiedContent<Image, AccessibilityAttachmentModifier>, <<opaque return type of View.fontWeight(_:)>>.0, ModifiedContent<ModifiedContent<ModifiedContent<Text, _EnvironmentKeyWritingModifier<TextAlignment>>, _EnvironmentKeyWritingModifier<Int?>>, _EnvironmentKeyWritingModifier<Color?>>)>>, _FlexFrameLayout> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Image, _FlexFrameLayout>, _PaddingLayout>, _BackgroundStyleModifier<Color>>, _EnvironmentKeyWritingModifier<Color?>>, _ClipEffect<RoundedRectangle>>, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyWritingModifier<Color?>>, _ForegroundStyleModifier<Color>>, AccessibilityAttachmentModifier> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Image, _FlexFrameLayout>, _PaddingLayout>, _BackgroundStyleModifier<Color>>, _EnvironmentKeyWritingModifier<Color?>>, _ClipEffect<RoundedRectangle>>, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyWritingModifier<Color?>>, _ForegroundStyleModifier<Color>>, AccessibilityAttachmentModifier> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Image, _FlexFrameLayout>, _PaddingLayout>, _BackgroundStyleModifier<Color>>, _EnvironmentKeyWritingModifier<Color?>>, _ClipEffect<RoundedRectangle>>, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyWritingModifier<Color?>>, _ForegroundStyleModifier<Color>>, AccessibilityAttachmentModifier> and conformance <> ModifiedContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyACyACyACyACyACyACyACyACyAA5ImageVAA16_FlexFrameLayoutVGAA08_PaddingH0VGAA24_BackgroundStyleModifierVyAA5ColorVGGAA022_EnvironmentKeyWritingL0VyAOSgGGAA11_ClipEffectVyAA16RoundedRectangleVGGASyAA4FontVSgGGAUGAA011_ForegroundkL0VyAOGGAA023AccessibilityAttachmentL0VGMd);
    lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Image, _FlexFrameLayout>, _PaddingLayout>, _BackgroundStyleModifier<Color>>, _EnvironmentKeyWritingModifier<Color?>>, _ClipEffect<RoundedRectangle>>, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyWritingModifier<Color?>>, _ForegroundStyleModifier<Color>> and conformance <> ModifiedContent<A, B>();
    lazy protocol witness table accessor for type PlainButtonStyle and conformance PlainButtonStyle(&lazy protocol witness table cache variable for type AccessibilityAttachmentModifier and conformance AccessibilityAttachmentModifier, MEMORY[0x277CDE470]);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Image, _FlexFrameLayout>, _PaddingLayout>, _BackgroundStyleModifier<Color>>, _EnvironmentKeyWritingModifier<Color?>>, _ClipEffect<RoundedRectangle>>, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyWritingModifier<Color?>>, _ForegroundStyleModifier<Color>>, AccessibilityAttachmentModifier> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Image, _FlexFrameLayout>, _PaddingLayout>, _BackgroundStyleModifier<Color>>, _EnvironmentKeyWritingModifier<Color?>>, _ClipEffect<RoundedRectangle>>, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyWritingModifier<Color?>>, _ForegroundStyleModifier<Color>> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Image, _FlexFrameLayout>, _PaddingLayout>, _BackgroundStyleModifier<Color>>, _EnvironmentKeyWritingModifier<Color?>>, _ClipEffect<RoundedRectangle>>, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyWritingModifier<Color?>>, _ForegroundStyleModifier<Color>> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Image, _FlexFrameLayout>, _PaddingLayout>, _BackgroundStyleModifier<Color>>, _EnvironmentKeyWritingModifier<Color?>>, _ClipEffect<RoundedRectangle>>, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyWritingModifier<Color?>>, _ForegroundStyleModifier<Color>> and conformance <> ModifiedContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyACyACyACyACyACyACyACyAA5ImageVAA16_FlexFrameLayoutVGAA08_PaddingH0VGAA24_BackgroundStyleModifierVyAA5ColorVGGAA022_EnvironmentKeyWritingL0VyAOSgGGAA11_ClipEffectVyAA16RoundedRectangleVGGASyAA4FontVSgGGAUGAA011_ForegroundkL0VyAOGGMd);
    lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Image, _FlexFrameLayout>, _PaddingLayout>, _BackgroundStyleModifier<Color>>, _EnvironmentKeyWritingModifier<Color?>>, _ClipEffect<RoundedRectangle>>, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyWritingModifier<Color?>> and conformance <> ModifiedContent<A, B>();
    lazy protocol witness table accessor for type NavigationLink<<<opaque return type of View.accessibilityElement(children:)>>.0, <<opaque return type of View.navigationTitle<A>(_:)>>.0> and conformance NavigationLink<A, B>(&lazy protocol witness table cache variable for type _ForegroundStyleModifier<Color> and conformance _ForegroundStyleModifier<A>, &_s7SwiftUI24_ForegroundStyleModifierVyAA5ColorVGMd);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Image, _FlexFrameLayout>, _PaddingLayout>, _BackgroundStyleModifier<Color>>, _EnvironmentKeyWritingModifier<Color?>>, _ClipEffect<RoundedRectangle>>, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyWritingModifier<Color?>>, _ForegroundStyleModifier<Color>> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Image, _FlexFrameLayout>, _PaddingLayout>, _BackgroundStyleModifier<Color>>, _EnvironmentKeyWritingModifier<Color?>>, _ClipEffect<RoundedRectangle>>, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyWritingModifier<Color?>> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Image, _FlexFrameLayout>, _PaddingLayout>, _BackgroundStyleModifier<Color>>, _EnvironmentKeyWritingModifier<Color?>>, _ClipEffect<RoundedRectangle>>, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyWritingModifier<Color?>> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Image, _FlexFrameLayout>, _PaddingLayout>, _BackgroundStyleModifier<Color>>, _EnvironmentKeyWritingModifier<Color?>>, _ClipEffect<RoundedRectangle>>, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyWritingModifier<Color?>> and conformance <> ModifiedContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyACyACyACyACyACyACyAA5ImageVAA16_FlexFrameLayoutVGAA08_PaddingH0VGAA24_BackgroundStyleModifierVyAA5ColorVGGAA022_EnvironmentKeyWritingL0VyAOSgGGAA11_ClipEffectVyAA16RoundedRectangleVGGASyAA4FontVSgGGAUGMd);
    lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Image, _FlexFrameLayout>, _PaddingLayout>, _BackgroundStyleModifier<Color>>, _EnvironmentKeyWritingModifier<Color?>>, _ClipEffect<RoundedRectangle>>, _EnvironmentKeyWritingModifier<Font?>> and conformance <> ModifiedContent<A, B>();
    lazy protocol witness table accessor for type NavigationLink<<<opaque return type of View.accessibilityElement(children:)>>.0, <<opaque return type of View.navigationTitle<A>(_:)>>.0> and conformance NavigationLink<A, B>(&lazy protocol witness table cache variable for type _EnvironmentKeyWritingModifier<Color?> and conformance _EnvironmentKeyWritingModifier<A>, &_s7SwiftUI30_EnvironmentKeyWritingModifierVyAA5ColorVSgGMd);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Image, _FlexFrameLayout>, _PaddingLayout>, _BackgroundStyleModifier<Color>>, _EnvironmentKeyWritingModifier<Color?>>, _ClipEffect<RoundedRectangle>>, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyWritingModifier<Color?>> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Image, _FlexFrameLayout>, _PaddingLayout>, _BackgroundStyleModifier<Color>>, _EnvironmentKeyWritingModifier<Color?>>, _ClipEffect<RoundedRectangle>>, _EnvironmentKeyWritingModifier<Font?>> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Image, _FlexFrameLayout>, _PaddingLayout>, _BackgroundStyleModifier<Color>>, _EnvironmentKeyWritingModifier<Color?>>, _ClipEffect<RoundedRectangle>>, _EnvironmentKeyWritingModifier<Font?>> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Image, _FlexFrameLayout>, _PaddingLayout>, _BackgroundStyleModifier<Color>>, _EnvironmentKeyWritingModifier<Color?>>, _ClipEffect<RoundedRectangle>>, _EnvironmentKeyWritingModifier<Font?>> and conformance <> ModifiedContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyACyACyACyACyACyAA5ImageVAA16_FlexFrameLayoutVGAA08_PaddingH0VGAA24_BackgroundStyleModifierVyAA5ColorVGGAA022_EnvironmentKeyWritingL0VyAOSgGGAA11_ClipEffectVyAA16RoundedRectangleVGGASyAA4FontVSgGGMd);
    lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Image, _FlexFrameLayout>, _PaddingLayout>, _BackgroundStyleModifier<Color>>, _EnvironmentKeyWritingModifier<Color?>>, _ClipEffect<RoundedRectangle>> and conformance <> ModifiedContent<A, B>();
    lazy protocol witness table accessor for type NavigationLink<<<opaque return type of View.accessibilityElement(children:)>>.0, <<opaque return type of View.navigationTitle<A>(_:)>>.0> and conformance NavigationLink<A, B>(&lazy protocol witness table cache variable for type _EnvironmentKeyWritingModifier<Font?> and conformance _EnvironmentKeyWritingModifier<A>, &_s7SwiftUI30_EnvironmentKeyWritingModifierVyAA4FontVSgGMd);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Image, _FlexFrameLayout>, _PaddingLayout>, _BackgroundStyleModifier<Color>>, _EnvironmentKeyWritingModifier<Color?>>, _ClipEffect<RoundedRectangle>>, _EnvironmentKeyWritingModifier<Font?>> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Image, _FlexFrameLayout>, _PaddingLayout>, _BackgroundStyleModifier<Color>>, _EnvironmentKeyWritingModifier<Color?>>, _ClipEffect<RoundedRectangle>> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Image, _FlexFrameLayout>, _PaddingLayout>, _BackgroundStyleModifier<Color>>, _EnvironmentKeyWritingModifier<Color?>>, _ClipEffect<RoundedRectangle>> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Image, _FlexFrameLayout>, _PaddingLayout>, _BackgroundStyleModifier<Color>>, _EnvironmentKeyWritingModifier<Color?>>, _ClipEffect<RoundedRectangle>> and conformance <> ModifiedContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyACyACyACyACyAA5ImageVAA16_FlexFrameLayoutVGAA08_PaddingH0VGAA24_BackgroundStyleModifierVyAA5ColorVGGAA022_EnvironmentKeyWritingL0VyAOSgGGAA11_ClipEffectVyAA16RoundedRectangleVGGMd);
    lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Image, _FlexFrameLayout>, _PaddingLayout>, _BackgroundStyleModifier<Color>>, _EnvironmentKeyWritingModifier<Color?>> and conformance <> ModifiedContent<A, B>();
    lazy protocol witness table accessor for type NavigationLink<<<opaque return type of View.accessibilityElement(children:)>>.0, <<opaque return type of View.navigationTitle<A>(_:)>>.0> and conformance NavigationLink<A, B>(&lazy protocol witness table cache variable for type _ClipEffect<RoundedRectangle> and conformance _ClipEffect<A>, &_s7SwiftUI11_ClipEffectVyAA16RoundedRectangleVGMd);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Image, _FlexFrameLayout>, _PaddingLayout>, _BackgroundStyleModifier<Color>>, _EnvironmentKeyWritingModifier<Color?>>, _ClipEffect<RoundedRectangle>> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Image, _FlexFrameLayout>, _PaddingLayout>, _BackgroundStyleModifier<Color>>, _EnvironmentKeyWritingModifier<Color?>> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Image, _FlexFrameLayout>, _PaddingLayout>, _BackgroundStyleModifier<Color>>, _EnvironmentKeyWritingModifier<Color?>> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Image, _FlexFrameLayout>, _PaddingLayout>, _BackgroundStyleModifier<Color>>, _EnvironmentKeyWritingModifier<Color?>> and conformance <> ModifiedContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyACyACyACyAA5ImageVAA16_FlexFrameLayoutVGAA08_PaddingH0VGAA24_BackgroundStyleModifierVyAA5ColorVGGAA022_EnvironmentKeyWritingL0VyAOSgGGMd);
    lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<ModifiedContent<Image, _FlexFrameLayout>, _PaddingLayout>, _BackgroundStyleModifier<Color>> and conformance <> ModifiedContent<A, B>();
    lazy protocol witness table accessor for type NavigationLink<<<opaque return type of View.accessibilityElement(children:)>>.0, <<opaque return type of View.navigationTitle<A>(_:)>>.0> and conformance NavigationLink<A, B>(&lazy protocol witness table cache variable for type _EnvironmentKeyWritingModifier<Color?> and conformance _EnvironmentKeyWritingModifier<A>, &_s7SwiftUI30_EnvironmentKeyWritingModifierVyAA5ColorVSgGMd);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Image, _FlexFrameLayout>, _PaddingLayout>, _BackgroundStyleModifier<Color>>, _EnvironmentKeyWritingModifier<Color?>> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<ModifiedContent<Image, _FlexFrameLayout>, _PaddingLayout>, _BackgroundStyleModifier<Color>> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<Image, _FlexFrameLayout>, _PaddingLayout>, _BackgroundStyleModifier<Color>> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<Image, _FlexFrameLayout>, _PaddingLayout>, _BackgroundStyleModifier<Color>> and conformance <> ModifiedContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyACyACyAA5ImageVAA16_FlexFrameLayoutVGAA08_PaddingH0VGAA24_BackgroundStyleModifierVyAA5ColorVGGMd);
    lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Color?>>, _PaddingLayout> and conformance <> ModifiedContent<A, B>(&lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<Image, _FlexFrameLayout>, _PaddingLayout> and conformance <> ModifiedContent<A, B>, &_s7SwiftUI15ModifiedContentVyACyAA5ImageVAA16_FlexFrameLayoutVGAA08_PaddingH0VGMd, &_s7SwiftUI15ModifiedContentVyACyAA5ImageVAA16_FlexFrameLayoutVGAA08_PaddingH0VGMR, lazy protocol witness table accessor for type ModifiedContent<Image, _FlexFrameLayout> and conformance <> ModifiedContent<A, B>);
    lazy protocol witness table accessor for type NavigationLink<<<opaque return type of View.accessibilityElement(children:)>>.0, <<opaque return type of View.navigationTitle<A>(_:)>>.0> and conformance NavigationLink<A, B>(&lazy protocol witness table cache variable for type _BackgroundStyleModifier<Color> and conformance _BackgroundStyleModifier<A>, &_s7SwiftUI24_BackgroundStyleModifierVyAA5ColorVGMd);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<Image, _FlexFrameLayout>, _PaddingLayout>, _BackgroundStyleModifier<Color>> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

uint64_t lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Color?>>, _PaddingLayout> and conformance <> ModifiedContent<A, B>(unint64_t *a1, uint64_t *a2, uint64_t a3, void (*a4)(void))
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

unint64_t lazy protocol witness table accessor for type ModifiedContent<Image, _FlexFrameLayout> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<Image, _FlexFrameLayout> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<Image, _FlexFrameLayout> and conformance <> ModifiedContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyAA5ImageVAA16_FlexFrameLayoutVGMd);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<Image, _FlexFrameLayout> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

uint64_t lazy protocol witness table accessor for type PlainButtonStyle and conformance PlainButtonStyle(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t objectdestroyTm_3()
{
  v1 = (type metadata accessor for VoiceCompanionEntryView() - 8);
  v2 = v0 + ((*(*v1 + 80) + 16) & ~*(*v1 + 80));

  outlined consume of Environment<WorkoutVoiceAvailabilityProvider>.Content(*(v2 + 16), *(v2 + 24));

  v3 = v1[9];
  v4 = type metadata accessor for InferenceClient();
  (*(*(v4 - 8) + 8))(v2 + v3, v4);

  return swift_deallocObject();
}

uint64_t partial apply for closure #3 in VoiceCompanionEntryView.body.getter(uint64_t (*a1)(uint64_t))
{
  v2 = *(type metadata accessor for VoiceCompanionEntryView() - 8);
  v3 = v1 + ((*(v2 + 80) + 16) & ~*(v2 + 80));

  return a1(v3);
}

uint64_t outlined init with copy of ModifiedContent<ModifiedContent<<<opaque return type of View.buttonStyle<A>(_:)>>.0, _BackgroundModifier<_ShapeView<RoundedRectangle, Color>>>, _ContentShapeKindModifier<RoundedRectangle>>(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(a3);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t type metadata accessor for FIUIWorkoutActivityType(uint64_t a1, unint64_t *a2)
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

uint64_t outlined init with take of ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Image, _FlexFrameLayout>, _PaddingLayout>, _BackgroundStyleModifier<Color>>, _EnvironmentKeyWritingModifier<Color?>>, _ClipEffect<RoundedRectangle>>(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(a3);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t outlined init with take of VStack<TupleView<(ModifiedContent<Image, AccessibilityAttachmentModifier>, <<opaque return type of View.fontWeight(_:)>>.0, ModifiedContent<ModifiedContent<ModifiedContent<Text, _EnvironmentKeyWritingModifier<TextAlignment>>, _EnvironmentKeyWritingModifier<Int?>>, _EnvironmentKeyWritingModifier<Color?>>)>>(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(a3);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t outlined destroy of ModifiedContent<Group<_ConditionalContent<NavigationLink<<<opaque return type of View.accessibilityElement(children:)>>.0, <<opaque return type of View.navigationTitle<A>(_:)>>.0>, <<opaque return type of View.sheet<A>(isPresented:onDismiss:content:)>>.0>>, _TaskModifier>(uint64_t a1, uint64_t *a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(a2);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<Text, _EnvironmentKeyWritingModifier<TextAlignment>> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<Text, _EnvironmentKeyWritingModifier<TextAlignment>> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<Text, _EnvironmentKeyWritingModifier<TextAlignment>> and conformance <> ModifiedContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyAA4TextVAA30_EnvironmentKeyWritingModifierVyAA0E9AlignmentOGGMd);
    lazy protocol witness table accessor for type NavigationLink<<<opaque return type of View.accessibilityElement(children:)>>.0, <<opaque return type of View.navigationTitle<A>(_:)>>.0> and conformance NavigationLink<A, B>(&lazy protocol witness table cache variable for type _EnvironmentKeyWritingModifier<TextAlignment> and conformance _EnvironmentKeyWritingModifier<A>, &_s7SwiftUI30_EnvironmentKeyWritingModifierVyAA13TextAlignmentOGMd);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<Text, _EnvironmentKeyWritingModifier<TextAlignment>> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

uint64_t lazy protocol witness table accessor for type NavigationLink<<<opaque return type of View.accessibilityElement(children:)>>.0, <<opaque return type of View.navigationTitle<A>(_:)>>.0> and conformance NavigationLink<A, B>(unint64_t *a1, uint64_t *a2)
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

uint64_t outlined init with copy of ModifiedContent<ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Color?>>, _PaddingLayout>, AccessibilityAttachmentModifier>(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(a3);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t outlined destroy of HStack<TupleView<(ModifiedContent<ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Color?>>, _PaddingLayout>, AccessibilityAttachmentModifier>, NavigationLabelView, Spacer)>>(uint64_t a1, uint64_t *a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(a2);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t SessionView.init(lowPowerModeMonitor:metricsPublisher:notificationCenter:sessionViewModel:sessionControls:dismissClosure:summaryViewControllerCompletion:)@<X0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t *a9@<X8>, uint64_t a10)
{
  v78 = a8;
  v80 = a6;
  v81 = a7;
  v82 = a5;
  v83 = a3;
  v85 = a4;
  v77 = a10;
  v84 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVy07WorkoutB020SessionControlsSheetVAA16_FixedSizeLayoutVGMd) - 8;
  MEMORY[0x28223BE20](v84);
  v79 = v67 - v13;
  v14 = type metadata accessor for SessionControlsSheet();
  v15 = (v14 - 8);
  v16 = MEMORY[0x28223BE20](v14);
  v18 = v67 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v20 = v67 - v19;
  v21 = type metadata accessor for SessionView();
  v71 = (a9 + v21[9]);
  v22 = a9 + v21[11];
  LOBYTE(v89) = 0;
  State.init(wrappedValue:)();
  v23 = v93;
  *v22 = v92[0];
  *(v22 + 1) = v23;
  v24 = a9 + v21[12];
  LOBYTE(v89) = 0;
  State.init(wrappedValue:)();
  v25 = v93;
  *v24 = v92[0];
  *(v24 + 1) = v25;
  v76 = (a9 + v21[13]);
  type metadata accessor for LowPowerModeMonitor();
  _s11WorkoutCore19LowPowerModeMonitorCAC7Combine16ObservableObjectAAWlTm_0(&lazy protocol witness table cache variable for type LowPowerModeMonitor and conformance LowPowerModeMonitor, MEMORY[0x277D7E2F8]);
  v75 = a1;

  *a9 = ObservedObject.init(wrappedValue:)();
  a9[1] = v26;
  v27 = v83;
  a9[2] = a2;
  a9[3] = v27;
  v74 = v21;
  v28 = type metadata accessor for SessionViewModel();
  v67[1] = _s11WorkoutCore19LowPowerModeMonitorCAC7Combine16ObservableObjectAAWlTm_0(&lazy protocol witness table cache variable for type SessionViewModel and conformance SessionViewModel, type metadata accessor for SessionViewModel);
  v70 = a2;

  v73 = a9;
  v72 = v28;
  Bindable<A>.init(wrappedValue:)();
  v29 = v82;
  outlined init with copy of SessionControls(v82, a9 + v21[8]);
  v30 = v80;
  v31 = v81;
  v32 = v71;
  *v71 = v80;
  v32[1] = v31;
  type metadata accessor for SessionControlsState();
  *(swift_allocObject() + 16) = 0;
  outlined copy of (@escaping @callee_guaranteed () -> ())?(v30);
  ObservationRegistrar.init()();
  outlined init with copy of SessionControls(v29, v92);
  v87 = 0;
  static Binding.constant(_:)();
  v33 = v89;
  v34 = v90;
  LOBYTE(v29) = v91;
  outlined init with copy of SessionControls(v92, &v20[v15[10]]);
  *v20 = v33;
  *(v20 + 1) = v34;
  v20[16] = v29;
  v35 = v70;
  v71 = v35;

  Bindable<A>.init(wrappedValue:)();
  v70 = _s11WorkoutCore19LowPowerModeMonitorCAC7Combine16ObservableObjectAAWlTm_0(&lazy protocol witness table cache variable for type SessionControlsState and conformance SessionControlsState, type metadata accessor for SessionControlsState);
  Bindable<A>.init(wrappedValue:)();
  *&v20[v15[9]] = v35;
  v36 = &v20[v15[11]];
  v86 = 0;
  State.init(wrappedValue:)();
  v37 = v88;
  *v36 = v87;
  *(v36 + 1) = v37;
  v38 = &v20[v15[12]];
  v86 = 0;
  State.init(wrappedValue:)();
  v39 = v88;
  *v38 = v87;
  *(v38 + 1) = v39;
  v40 = &v20[v15[13]];
  v86 = 0;
  State.init(wrappedValue:)();
  v41 = v88;
  *v40 = v87;
  *(v40 + 1) = v41;
  v69 = objc_opt_self();
  v42 = [v69 mainScreen];
  [v42 bounds];

  v68 = type metadata accessor for SessionControlsSheet;
  v43 = v79;
  outlined init with copy of SessionControlsSheet(v20, v79, type metadata accessor for SessionControlsSheet);
  *(v43 + *(v84 + 44)) = 256;
  v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI19UIHostingControllerCyAA15ModifiedContentVy07WorkoutB020SessionControlsSheetVAA16_FixedSizeLayoutVGGMd);
  v45 = objc_allocWithZone(v44);
  v46 = UIHostingController.init(rootView:)();
  dispatch thunk of UIHostingController.sizeThatFits(in:)();
  v48 = v47;

  v87 = 1;
  static Binding.constant(_:)();
  v49 = v89;
  v50 = v90;
  LOBYTE(v29) = v91;
  outlined init with copy of SessionControls(v92, &v18[v15[10]]);
  *v18 = v49;
  *(v18 + 1) = v50;
  v18[16] = v29;

  Bindable<A>.init(wrappedValue:)();
  Bindable<A>.init(wrappedValue:)();
  *&v18[v15[9]] = v71;
  v51 = &v18[v15[11]];
  v86 = 0;
  State.init(wrappedValue:)();
  v52 = v88;
  *v51 = v87;
  *(v51 + 1) = v52;
  v53 = &v18[v15[12]];
  v86 = 0;
  State.init(wrappedValue:)();
  v54 = v88;
  *v53 = v87;
  *(v53 + 1) = v54;
  v55 = &v18[v15[13]];
  v86 = 0;
  State.init(wrappedValue:)();
  v56 = v88;
  *v55 = v87;
  *(v55 + 1) = v56;
  v57 = [v69 mainScreen];
  [v57 bounds];

  v58 = v79;
  outlined init with copy of SessionControlsSheet(v18, v79, v68);
  *(v58 + *(v84 + 44)) = 256;
  v59 = objc_allocWithZone(v44);
  v60 = UIHostingController.init(rootView:)();
  dispatch thunk of UIHostingController.sizeThatFits(in:)();
  v62 = v61;

  _sIeg_SgWOe_0(v80);

  __swift_destroy_boxed_opaque_existential_1(v82);
  outlined destroy of SessionControlsSheet(v18);
  outlined destroy of SessionControlsSheet(v20);
  result = __swift_destroy_boxed_opaque_existential_1(v92);
  v64 = (v73 + v74[10]);
  *v64 = v48;
  v64[1] = v62;
  v65 = v76;
  v66 = v77;
  *v76 = v78;
  v65[1] = v66;
  return result;
}

uint64_t type metadata accessor for SessionView()
{
  result = type metadata singleton initialization cache for SessionView;
  if (!type metadata singleton initialization cache for SessionView)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t SessionView.body.getter@<X0>(uint64_t *a1@<X8>)
{
  *a1 = static Alignment.center.getter();
  a1[1] = v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI13_VariadicViewO4TreeVy_AA13_ZStackLayoutVAA19_ConditionalContentVyAIyAIyAA08ModifiedI0VyAA0F0VyAA05TupleD0VyAKyAA5ColorVAA017_SafeAreaIgnoringG0VG_07WorkoutB0021MirroredStartWatchAppD0VtGGAA21_TraitWritingModifierVyAA010TransitionU3KeyVGGAKyAA0D0PAAE5sheet11isPresented9onDismiss7contentQrAA7BindingVySbG_yycSgqd__yctAAA4_Rd__lFQOyA5_AAEA6_A7_A8_A9_QrA12__A13_qd__yctAAA4_Rd__lFQOyAKyAMyATGAA017_AppearanceActionW0VG_AKyAKyAU027SafetyMonitorMessageComposeD0VAA012_EnvironmentyvW0VyAQSgGGAA01_mn7RegionsoG0VGQo__AKyAKy013SafetyMonitorB0027CheckInOnboardingNavigationD0VA23_GA26_GQo_A2_GGAIyAKyA5_AAEA6_A7_A8_A9_QrA12__A13_qd__yctAAA4_Rd__lFQOyA5_AAEA6_A7_A8_A9_QrA12__A13_qd__yctAAA4_Rd__lFQOyAKyAU09CountdownD0VA16_G_A27_Qo__A33_Qo_A2_GAKyAU0D17ControllerWrapperVSgA2_GGGAIyAKyAA15NavigationStackVyAA14NavigationPathVA5_AAE7toolbarA9_Qrqd__yXE_tAA07ToolbarI0Rd__lFQOyAKyAA14GeometryReaderVyAA06ScrollD0VyAKyAKyAA6VStackVyAOyAA6SpacerV_A60_yAOyAKyAU013CountdownIconD0VAA08_PaddingG0VG_AKyAKyAKyAKyAA4TextVA21_yAA13TextAlignmentOGGA66_GA66_GAA023AccessibilityAttachmentW0VGSgA75_SgAA7ForEachVySaySi6offset_SS7elementtGSiAKyAKyAKyAKyA5_AAE11buttonStyleyQrqd__AA20PrimitiveButtonStyleRd__lFQOyAA6ButtonVyAKyA69_AA010_FlexFrameG0VGG_AA28BorderedProminentButtonStyleVQo_A21_yAA11ControlSizeOGGA21_yAA13AnyShapeStyleVSgGGAA11_ClipEffectVyAA16RoundedRectangleVGGA66_GGSgtGGA62_tGGA91_GA91_GGGA26_G_AA07ToolbarI7BuilderV10buildBlockyQrxAAA54_RzlFZQOy_AA11ToolbarItemVyytAKyA89_yAA18DefaultButtonLabelVGA23_GGQo_Qo_GA2_GAKyAU09InSessionD0VA2_GGGGMd);
  closure #1 in SessionView.body.getter(v1, a1 + *(v4 + 44));
  v5 = static Animation.easeInOut(duration:)();
  type metadata accessor for SessionView();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI8BindableVy07WorkoutB016SessionViewModelCGMd);
  Bindable.wrappedValue.getter();
  swift_getKeyPath();
  _s11WorkoutCore19LowPowerModeMonitorCAC7Combine16ObservableObjectAAWlTm_0(&lazy protocol witness table cache variable for type SessionViewModel and conformance SessionViewModel, type metadata accessor for SessionViewModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  swift_beginAccess();
  v6 = *(v9 + 17);

  result = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyAA6ZStackVyAA012_ConditionalD0VyAGyAGyACyAEyAA9TupleViewVyACyAA5ColorVAA23_SafeAreaIgnoringLayoutVG_07WorkoutB0021MirroredStartWatchAppH0VtGGAA21_TraitWritingModifierVyAA010TransitionS3KeyVGGACyAA0H0PAAE5sheet11isPresented9onDismiss7contentQrAA7BindingVySbG_yycSgqd__yctAaZRd__lFQOyA_AAEA0_A1_A2_A3_QrA6__A7_qd__yctAaZRd__lFQOyACyAEyANGAA017_AppearanceActionU0VG_ACyACyAO027SafetyMonitorMessageComposeH0VAA012_EnvironmentwtU0VyAKSgGGAA01_jk7RegionslM0VGQo__ACyACy013SafetyMonitorB0027CheckInOnboardingNavigationH0VA17_GA20_GQo_AXGGAGyACyA_AAEA0_A1_A2_A3_QrA6__A7_qd__yctAaZRd__lFQOyA_AAEA0_A1_A2_A3_QrA6__A7_qd__yctAaZRd__lFQOyACyAO09CountdownH0VA10_G_A21_Qo__A27_Qo_AXGACyAO0H17ControllerWrapperVSgAXGGGAGyACyAA15NavigationStackVyAA14NavigationPathVA_AAE7toolbarA3_Qrqd__yXE_tAA07ToolbarD0Rd__lFQOyACyAA14GeometryReaderVyAA06ScrollH0VyACyACyAA6VStackVyAIyAA6SpacerV_A54_yAIyACyAO013CountdownIconH0VAA08_PaddingM0VG_ACyACyACyACyAA4TextVA15_yAA13TextAlignmentOGGA60_GA60_GAA023AccessibilityAttachmentU0VGSgA69_SgAA7ForEachVySaySi6offset_SS7elementtGSiACyACyACyACyA_AAE11buttonStyleyQrqd__AA20PrimitiveButtonStyleRd__lFQOyAA6ButtonVyACyA63_AA010_FlexFrameM0VGG_AA28BorderedProminentButtonStyleVQo_A15_yAA11ControlSizeOGGA15_yAA13AnyShapeStyleVSgGGAA11_ClipEffectVyAA16RoundedRectangleVGGA60_GGSgtGGA56_tGGA85_GA85_GGGA20_G_AA07ToolbarD7BuilderV10buildBlockyQrxAAA48_RzlFZQOy_AA11ToolbarItemVyytACyA83_yAA18DefaultButtonLabelVGA17_GGQo_Qo_GAXGACyAO09InSessionH0VAXGGGGAA010_AnimationU0VyAO014SessionCurrentH0OGGMd);
  v8 = a1 + *(result + 36);
  *v8 = v5;
  v8[8] = v6;
  return result;
}

uint64_t closure #1 in SessionView.body.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v93 = a2;
  v82 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVy07WorkoutB013InSessionViewVAA21_TraitWritingModifierVyAA010TransitionI3KeyVGGMd);
  MEMORY[0x28223BE20](v82);
  v71 = (&v68 - v3);
  v80 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI19_ConditionalContentV7StorageOyAA08ModifiedD0VyAA15NavigationStackVyAA0G4PathVAA4ViewPAAE7toolbar7contentQrqd__yXE_tAA07ToolbarD0Rd__lFQOyAGyAA14GeometryReaderVyAA06ScrollJ0VyAGyAGyAA6VStackVyAA05TupleJ0VyAA6SpacerV_AVyAXyAGy07WorkoutB0013CountdownIconJ0VAA14_PaddingLayoutVG_AGyAGyAGyAGyAA4TextVAA30_EnvironmentKeyWritingModifierVyAA0Y9AlignmentOGGA3_GA3_GAA31AccessibilityAttachmentModifierVGSgA14_SgAA7ForEachVySaySi6offset_SS7elementtGSiAGyAGyAGyAGyAmAE11buttonStyleyQrqd__AA20PrimitiveButtonStyleRd__lFQOyAA6ButtonVyAGyA6_AA010_FlexFrameX0VGG_AA28BorderedProminentButtonStyleVQo_A8_yAA11ControlSizeOGGA8_yAA13AnyShapeStyleVSgGGAA11_ClipEffectVyAA16RoundedRectangleVGGA3_GGSgtGGAZtGGA30_GA30_GGGAA024_SafeAreaRegionsIgnoringX0VG_AA0mD7BuilderV10buildBlockyQrxAaPRzlFZQOy_AA0M4ItemVyytAGyA28_yAA18DefaultButtonLabelVGA8_yAA5ColorVSgGGGQo_Qo_GAA21_TraitWritingModifierVyAA18TransitionTraitKeyVGGAGyA_09InSessionJ0VA86_G_GMd);
  MEMORY[0x28223BE20](v80);
  v81 = &v68 - v4;
  v92 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI19_ConditionalContentVyAA08ModifiedD0VyAA15NavigationStackVyAA0F4PathVAA4ViewPAAE7toolbar7contentQrqd__yXE_tAA07ToolbarD0Rd__lFQOyAEyAA14GeometryReaderVyAA06ScrollI0VyAEyAEyAA6VStackVyAA05TupleI0VyAA6SpacerV_ATyAVyAEy07WorkoutB0013CountdownIconI0VAA14_PaddingLayoutVG_AEyAEyAEyAEyAA4TextVAA30_EnvironmentKeyWritingModifierVyAA0X9AlignmentOGGA1_GA1_GAA31AccessibilityAttachmentModifierVGSgA12_SgAA7ForEachVySaySi6offset_SS7elementtGSiAEyAEyAEyAEyAkAE11buttonStyleyQrqd__AA20PrimitiveButtonStyleRd__lFQOyAA6ButtonVyAEyA4_AA010_FlexFrameW0VGG_AA28BorderedProminentButtonStyleVQo_A6_yAA11ControlSizeOGGA6_yAA13AnyShapeStyleVSgGGAA11_ClipEffectVyAA16RoundedRectangleVGGA1_GGSgtGGAXtGGA28_GA28_GGGAA024_SafeAreaRegionsIgnoringW0VG_AA0lD7BuilderV10buildBlockyQrxAaNRzlFZQOy_AA0L4ItemVyytAEyA26_yAA18DefaultButtonLabelVGA6_yAA5ColorVSgGGGQo_Qo_GAA21_TraitWritingModifierVyAA015TransitionTraitZ0VGGAEyAY09InSessionI0VA84_GGMd);
  MEMORY[0x28223BE20](v92);
  v83 = &v68 - v5;
  v79 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyAA15NavigationStackVyAA0E4PathVAA4ViewPAAE7toolbar7contentQrqd__yXE_tAA07ToolbarD0Rd__lFQOyACyAA14GeometryReaderVyAA06ScrollH0VyACyACyAA6VStackVyAA05TupleH0VyAA6SpacerV_ARyATyACy07WorkoutB0013CountdownIconH0VAA14_PaddingLayoutVG_ACyACyACyACyAA4TextVAA30_EnvironmentKeyWritingModifierVyAA0W9AlignmentOGGA_GA_GAA31AccessibilityAttachmentModifierVGSgA10_SgAA7ForEachVySaySi6offset_SS7elementtGSiACyACyACyACyAiAE11buttonStyleyQrqd__AA20PrimitiveButtonStyleRd__lFQOyAA6ButtonVyACyA2_AA010_FlexFrameV0VGG_AA28BorderedProminentButtonStyleVQo_A4_yAA11ControlSizeOGGA4_yAA13AnyShapeStyleVSgGGAA11_ClipEffectVyAA16RoundedRectangleVGGA_GGSgtGGAVtGGA26_GA26_GGGAA024_SafeAreaRegionsIgnoringV0VG_AA0kD7BuilderV10buildBlockyQrxAaLRzlFZQOy_AA0K4ItemVyytACyA24_yAA18DefaultButtonLabelVGA4_yAA5ColorVSgGGGQo_Qo_GAA06_TraitZ8ModifierVyAA015TransitionTraitY0VGGMd);
  MEMORY[0x28223BE20](v79);
  v72 = &v68 - v6;
  v75 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI19_ConditionalContentV7StorageOyAA08ModifiedD0VyAA4ViewPAAE5sheet11isPresented9onDismiss7contentQrAA7BindingVySbG_yycSgqd__yctAaHRd__lFQOyAiAEAjklMQrAP_AQqd__yctAaHRd__lFQOyAGy07WorkoutB009CountdownG0VAA25_AppearanceActionModifierVG_AGyAGyAR027SafetyMonitorMessageComposeG0VAA022_EnvironmentKeyWritingS0VyAA5ColorVSgGGAA30_SafeAreaRegionsIgnoringLayoutVGQo__AGyAGy0tuB0027CheckInOnboardingNavigationG0VA3_GA6_GQo_AA06_TraitzS0VyAA015TransitionTraitY0VGGAGyAR0G17ControllerWrapperVSgA19_G_GMd);
  MEMORY[0x28223BE20](v75);
  v77 = (&v68 - v7);
  v87 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI19_ConditionalContentVyAA08ModifiedD0VyAA4ViewPAAE5sheet11isPresented9onDismiss7contentQrAA7BindingVySbG_yycSgqd__yctAaFRd__lFQOyAgAEAhijKQrAN_AOqd__yctAaFRd__lFQOyAEy07WorkoutB009CountdownF0VAA25_AppearanceActionModifierVG_AEyAEyAP027SafetyMonitorMessageComposeF0VAA022_EnvironmentKeyWritingR0VyAA5ColorVSgGGAA30_SafeAreaRegionsIgnoringLayoutVGQo__AEyAEy0stB0027CheckInOnboardingNavigationF0VA1_GA4_GQo_AA06_TraityR0VyAA015TransitionTraitX0VGGAEyAP0F17ControllerWrapperVSgA17_GGMd);
  MEMORY[0x28223BE20](v87);
  v78 = &v68 - v8;
  v76 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyAA4ViewPAAE5sheet11isPresented9onDismiss7contentQrAA7BindingVySbG_yycSgqd__yctAaDRd__lFQOyAeAEAfghIQrAL_AMqd__yctAaDRd__lFQOyACy07WorkoutB009CountdownE0VAA25_AppearanceActionModifierVG_ACyACyAN027SafetyMonitorMessageComposeE0VAA022_EnvironmentKeyWritingQ0VyAA5ColorVSgGGAA30_SafeAreaRegionsIgnoringLayoutVGQo__ACyACy0rsB0027CheckInOnboardingNavigationE0VA_GA2_GQo_AA06_TraitxQ0VyAA015TransitionTraitW0VGGMd);
  MEMORY[0x28223BE20](v76);
  v70 = &v68 - v9;
  v74 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyAA4ViewPAAE5sheet11isPresented9onDismiss7contentQrAA7BindingVySbG_yycSgqd__yctAaDRd__lFQOyAeAEAfghIQrAL_AMqd__yctAaDRd__lFQOyACyAA6ZStackVyACyAA5ColorVAA23_SafeAreaIgnoringLayoutVGGAA25_AppearanceActionModifierVG_ACyACy07WorkoutB0027SafetyMonitorMessageComposeE0VAA022_EnvironmentKeyWritingU0VyAQSgGGAA01_op7RegionsqR0VGQo__ACyACy0wxB0027CheckInOnboardingNavigationE0VA3_GA6_GQo_AA013_TraitWritingU0VyAA18TransitionTraitKeyVGGMd);
  MEMORY[0x28223BE20](v74);
  v69 = &v68 - v10;
  v89 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI19_ConditionalContentV7StorageOyACyACyAA08ModifiedD0VyAA6ZStackVyAA9TupleViewVyAGyAA5ColorVAA23_SafeAreaIgnoringLayoutVG_07WorkoutB0021MirroredStartWatchAppI0VtGGAA21_TraitWritingModifierVyAA010TransitionT3KeyVGGAGyAA0I0PAAE5sheet11isPresented9onDismiss7contentQrAA7BindingVySbG_yycSgqd__yctAAA0_Rd__lFQOyA1_AAEA2_A3_A4_A5_QrA8__A9_qd__yctAAA0_Rd__lFQOyAGyAIyAPGAA017_AppearanceActionV0VG_AGyAGyAQ027SafetyMonitorMessageComposeI0VAA012_EnvironmentxuV0VyAMSgGGAA01_kl7RegionsmN0VGQo__AGyAGy013SafetyMonitorB0027CheckInOnboardingNavigationI0VA19_GA22_GQo_AZGGACyAGyA1_AAEA2_A3_A4_A5_QrA8__A9_qd__yctAAA0_Rd__lFQOyA1_AAEA2_A3_A4_A5_QrA8__A9_qd__yctAAA0_Rd__lFQOyAGyAQ09CountdownI0VA12_G_A23_Qo__A29_Qo_AZGAGyAQ0I17ControllerWrapperVSgAZGGGACyAGyAA15NavigationStackVyAA14NavigationPathVA1_AAE7toolbarA5_Qrqd__yXE_tAA07ToolbarD0Rd__lFQOyAGyAA14GeometryReaderVyAA06ScrollI0VyAGyAGyAA6VStackVyAKyAA6SpacerV_A56_yAKyAGyAQ013CountdownIconI0VAA08_PaddingN0VG_AGyAGyAGyAGyAA4TextVA17_yAA13TextAlignmentOGGA62_GA62_GAA023AccessibilityAttachmentV0VGSgA71_SgAA7ForEachVySaySi6offset_SS7elementtGSiAGyAGyAGyAGyA1_AAE11buttonStyleyQrqd__AA20PrimitiveButtonStyleRd__lFQOyAA6ButtonVyAGyA65_AA010_FlexFrameN0VGG_AA28BorderedProminentButtonStyleVQo_A17_yAA11ControlSizeOGGA17_yAA13AnyShapeStyleVSgGGAA11_ClipEffectVyAA16RoundedRectangleVGGA62_GGSgtGGA58_tGGA87_GA87_GGGA22_G_AA07ToolbarD7BuilderV10buildBlockyQrxAAA50_RzlFZQOy_AA11ToolbarItemVyytAGyA85_yAA18DefaultButtonLabelVGA19_GGQo_Qo_GAZGAGyAQ09InSessionI0VAZGG_GMd);
  MEMORY[0x28223BE20](v89);
  v91 = &v68 - v11;
  v84 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI19_ConditionalContentV7StorageOyACyAA08ModifiedD0VyAA6ZStackVyAA9TupleViewVyAGyAA5ColorVAA23_SafeAreaIgnoringLayoutVG_07WorkoutB0021MirroredStartWatchAppI0VtGGAA21_TraitWritingModifierVyAA010TransitionT3KeyVGGAGyAA0I0PAAE5sheet11isPresented9onDismiss7contentQrAA7BindingVySbG_yycSgqd__yctAAA0_Rd__lFQOyA1_AAEA2_A3_A4_A5_QrA8__A9_qd__yctAAA0_Rd__lFQOyAGyAIyAPGAA017_AppearanceActionV0VG_AGyAGyAQ027SafetyMonitorMessageComposeI0VAA012_EnvironmentxuV0VyAMSgGGAA01_kl7RegionsmN0VGQo__AGyAGy013SafetyMonitorB0027CheckInOnboardingNavigationI0VA19_GA22_GQo_AZGGACyAGyA1_AAEA2_A3_A4_A5_QrA8__A9_qd__yctAAA0_Rd__lFQOyA1_AAEA2_A3_A4_A5_QrA8__A9_qd__yctAAA0_Rd__lFQOyAGyAQ09CountdownI0VA12_G_A23_Qo__A29_Qo_AZGAGyAQ0I17ControllerWrapperVSgAZGG_GMd);
  MEMORY[0x28223BE20](v84);
  v86 = &v68 - v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI19_ConditionalContentV7StorageOyAA08ModifiedD0VyAA6ZStackVyAA9TupleViewVyAGyAA5ColorVAA23_SafeAreaIgnoringLayoutVG_07WorkoutB0021MirroredStartWatchAppI0VtGGAA21_TraitWritingModifierVyAA010TransitionT3KeyVGGAGyAA0I0PAAE5sheet11isPresented9onDismiss7contentQrAA7BindingVySbG_yycSgqd__yctAAA0_Rd__lFQOyA1_AAEA2_A3_A4_A5_QrA8__A9_qd__yctAAA0_Rd__lFQOyAGyAIyAPGAA017_AppearanceActionV0VG_AGyAGyAQ027SafetyMonitorMessageComposeI0VAA012_EnvironmentxuV0VyAMSgGGAA01_kl7RegionsmN0VGQo__AGyAGy013SafetyMonitorB0027CheckInOnboardingNavigationI0VA19_GA22_GQo_AZG_GMd);
  MEMORY[0x28223BE20](v13);
  v15 = &v68 - v14;
  v85 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI19_ConditionalContentVyAA08ModifiedD0VyAA6ZStackVyAA9TupleViewVyAEyAA5ColorVAA23_SafeAreaIgnoringLayoutVG_07WorkoutB0021MirroredStartWatchAppH0VtGGAA21_TraitWritingModifierVyAA010TransitionS3KeyVGGAEyAA0H0PAAE5sheet11isPresented9onDismiss7contentQrAA7BindingVySbG_yycSgqd__yctAaZRd__lFQOyA_AAEA0_A1_A2_A3_QrA6__A7_qd__yctAaZRd__lFQOyAEyAGyANGAA017_AppearanceActionU0VG_AEyAEyAO027SafetyMonitorMessageComposeH0VAA012_EnvironmentwtU0VyAKSgGGAA01_jk7RegionslM0VGQo__AEyAEy013SafetyMonitorB0027CheckInOnboardingNavigationH0VA17_GA20_GQo_AXGGMd);
  MEMORY[0x28223BE20](v85);
  v73 = &v68 - v16;
  v90 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI19_ConditionalContentVyACyAA08ModifiedD0VyAA6ZStackVyAA9TupleViewVyAEyAA5ColorVAA23_SafeAreaIgnoringLayoutVG_07WorkoutB0021MirroredStartWatchAppH0VtGGAA21_TraitWritingModifierVyAA010TransitionS3KeyVGGAEyAA0H0PAAE5sheet11isPresented9onDismiss7contentQrAA7BindingVySbG_yycSgqd__yctAaZRd__lFQOyA_AAEA0_A1_A2_A3_QrA6__A7_qd__yctAaZRd__lFQOyAEyAGyANGAA017_AppearanceActionU0VG_AEyAEyAO027SafetyMonitorMessageComposeH0VAA012_EnvironmentwtU0VyAKSgGGAA01_jk7RegionslM0VGQo__AEyAEy013SafetyMonitorB0027CheckInOnboardingNavigationH0VA17_GA20_GQo_AXGGACyAEyA_AAEA0_A1_A2_A3_QrA6__A7_qd__yctAaZRd__lFQOyA_AAEA0_A1_A2_A3_QrA6__A7_qd__yctAaZRd__lFQOyAEyAO09CountdownH0VA10_G_A21_Qo__A27_Qo_AXGAEyAO0H17ControllerWrapperVSgAXGGGMd);
  MEMORY[0x28223BE20](v90);
  v88 = &v68 - v17;
  v18 = type metadata accessor for OpacityTransition();
  v19 = *(v18 - 8);
  v20 = MEMORY[0x28223BE20](v18);
  v22 = &v68 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v20);
  v24 = &v68 - v23;
  type metadata accessor for SessionView();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI8BindableVy07WorkoutB016SessionViewModelCGMd);
  Bindable.wrappedValue.getter();
  v25 = v94;
  swift_getKeyPath();
  v94 = v25;
  _s11WorkoutCore19LowPowerModeMonitorCAC7Combine16ObservableObjectAAWlTm_0(&lazy protocol witness table cache variable for type SessionViewModel and conformance SessionViewModel, type metadata accessor for SessionViewModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  swift_beginAccess();
  v26 = *(v25 + 17);

  if (v26 <= 2)
  {
    if (!v26)
    {
      v83 = static Alignment.center.getter();
      v45 = v44;
      closure #1 in SessionView.connectingView()(&v94);
      v46 = v94;
      v47 = v95;
      v48 = v96;
      OpacityTransition.init()();
      (*(v19 + 16))(v22, v24, v18);
      _s11WorkoutCore19LowPowerModeMonitorCAC7Combine16ObservableObjectAAWlTm_0(&lazy protocol witness table cache variable for type OpacityTransition and conformance OpacityTransition, MEMORY[0x277CE0068]);
      v49 = AnyTransition.init<A>(_:)();
      (*(v19 + 8))(v24, v18);
      *v15 = v83;
      *(v15 + 1) = v45;
      *(v15 + 2) = v46;
      v15[24] = v47;
      *(v15 + 4) = v48;
      *(v15 + 5) = v49;
      swift_storeEnumTagMultiPayload();

      v50 = v48;

      __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyAA6ZStackVyAA9TupleViewVyACyAA5ColorVAA23_SafeAreaIgnoringLayoutVG_07WorkoutB0021MirroredStartWatchAppG0VtGGAA21_TraitWritingModifierVyAA010TransitionR3KeyVGGMd);
      lazy protocol witness table accessor for type ModifiedContent<ZStack<TupleView<(ModifiedContent<Color, _SafeAreaIgnoringLayout>, MirroredStartWatchAppView)>>, _TraitWritingModifier<TransitionTraitKey>> and conformance <> ModifiedContent<A, B>();
      lazy protocol witness table accessor for type ModifiedContent<<<opaque return type of View.sheet<A>(isPresented:onDismiss:content:)>>.0, _TraitWritingModifier<TransitionTraitKey>> and conformance <> ModifiedContent<A, B>();
      v51 = v73;
      _ConditionalContent<>.init(storage:)();
      outlined init with copy of _ConditionalContent<ModifiedContent<NavigationStack<NavigationPath, <<opaque return type of View.toolbar<A>(content:)>>.0>, _TraitWritingModifier<TransitionTraitKey>>, ModifiedContent<InSessionView, _TraitWritingModifier<TransitionTraitKey>>>(v51, v86, &_s7SwiftUI19_ConditionalContentVyAA08ModifiedD0VyAA6ZStackVyAA9TupleViewVyAEyAA5ColorVAA23_SafeAreaIgnoringLayoutVG_07WorkoutB0021MirroredStartWatchAppH0VtGGAA21_TraitWritingModifierVyAA010TransitionS3KeyVGGAEyAA0H0PAAE5sheet11isPresented9onDismiss7contentQrAA7BindingVySbG_yycSgqd__yctAaZRd__lFQOyA_AAEA0_A1_A2_A3_QrA6__A7_qd__yctAaZRd__lFQOyAEyAGyANGAA017_AppearanceActionU0VG_AEyAEyAO027SafetyMonitorMessageComposeH0VAA012_EnvironmentwtU0VyAKSgGGAA01_jk7RegionslM0VGQo__AEyAEy013SafetyMonitorB0027CheckInOnboardingNavigationH0VA17_GA20_GQo_AXGGMd);
      swift_storeEnumTagMultiPayload();
      lazy protocol witness table accessor for type _ConditionalContent<ModifiedContent<ZStack<TupleView<(ModifiedContent<Color, _SafeAreaIgnoringLayout>, MirroredStartWatchAppView)>>, _TraitWritingModifier<TransitionTraitKey>>, ModifiedContent<<<opaque return type of View.sheet<A>(isPresented:onDismiss:content:)>>.0, _TraitWritingModifier<TransitionTraitKey>>> and conformance <> _ConditionalContent<A, B>();
      lazy protocol witness table accessor for type _ConditionalContent<ModifiedContent<<<opaque return type of View.sheet<A>(isPresented:onDismiss:content:)>>.0, _TraitWritingModifier<TransitionTraitKey>>, ModifiedContent<ViewControllerWrapper?, _TraitWritingModifier<TransitionTraitKey>>> and conformance <> _ConditionalContent<A, B>();
      v52 = v88;
      _ConditionalContent<>.init(storage:)();
      outlined destroy of _ConditionalContent<ModifiedContent<NavigationStack<NavigationPath, <<opaque return type of View.toolbar<A>(content:)>>.0>, _TraitWritingModifier<TransitionTraitKey>>, ModifiedContent<InSessionView, _TraitWritingModifier<TransitionTraitKey>>>(v51, &_s7SwiftUI19_ConditionalContentVyAA08ModifiedD0VyAA6ZStackVyAA9TupleViewVyAEyAA5ColorVAA23_SafeAreaIgnoringLayoutVG_07WorkoutB0021MirroredStartWatchAppH0VtGGAA21_TraitWritingModifierVyAA010TransitionS3KeyVGGAEyAA0H0PAAE5sheet11isPresented9onDismiss7contentQrAA7BindingVySbG_yycSgqd__yctAaZRd__lFQOyA_AAEA0_A1_A2_A3_QrA6__A7_qd__yctAaZRd__lFQOyAEyAGyANGAA017_AppearanceActionU0VG_AEyAEyAO027SafetyMonitorMessageComposeH0VAA012_EnvironmentwtU0VyAKSgGGAA01_jk7RegionslM0VGQo__AEyAEy013SafetyMonitorB0027CheckInOnboardingNavigationH0VA17_GA20_GQo_AXGGMd);
      outlined init with copy of _ConditionalContent<ModifiedContent<NavigationStack<NavigationPath, <<opaque return type of View.toolbar<A>(content:)>>.0>, _TraitWritingModifier<TransitionTraitKey>>, ModifiedContent<InSessionView, _TraitWritingModifier<TransitionTraitKey>>>(v52, v91, &_s7SwiftUI19_ConditionalContentVyACyAA08ModifiedD0VyAA6ZStackVyAA9TupleViewVyAEyAA5ColorVAA23_SafeAreaIgnoringLayoutVG_07WorkoutB0021MirroredStartWatchAppH0VtGGAA21_TraitWritingModifierVyAA010TransitionS3KeyVGGAEyAA0H0PAAE5sheet11isPresented9onDismiss7contentQrAA7BindingVySbG_yycSgqd__yctAaZRd__lFQOyA_AAEA0_A1_A2_A3_QrA6__A7_qd__yctAaZRd__lFQOyAEyAGyANGAA017_AppearanceActionU0VG_AEyAEyAO027SafetyMonitorMessageComposeH0VAA012_EnvironmentwtU0VyAKSgGGAA01_jk7RegionslM0VGQo__AEyAEy013SafetyMonitorB0027CheckInOnboardingNavigationH0VA17_GA20_GQo_AXGGACyAEyA_AAEA0_A1_A2_A3_QrA6__A7_qd__yctAaZRd__lFQOyA_AAEA0_A1_A2_A3_QrA6__A7_qd__yctAaZRd__lFQOyAEyAO09CountdownH0VA10_G_A21_Qo__A27_Qo_AXGAEyAO0H17ControllerWrapperVSgAXGGGMd);
      swift_storeEnumTagMultiPayload();
      lazy protocol witness table accessor for type _ConditionalContent<_ConditionalContent<ModifiedContent<ZStack<TupleView<(ModifiedContent<Color, _SafeAreaIgnoringLayout>, MirroredStartWatchAppView)>>, _TraitWritingModifier<TransitionTraitKey>>, ModifiedContent<<<opaque return type of View.sheet<A>(isPresented:onDismiss:content:)>>.0, _TraitWritingModifier<TransitionTraitKey>>>, _ConditionalContent<ModifiedContent<<<opaque return type of View.sheet<A>(isPresented:onDismiss:content:)>>.0, _TraitWritingModifier<TransitionTraitKey>>, ModifiedContent<ViewControllerWrapper?, _TraitWritingModifier<TransitionTraitKey>>>> and conformance <> _ConditionalContent<A, B>();
      lazy protocol witness table accessor for type _ConditionalContent<ModifiedContent<NavigationStack<NavigationPath, <<opaque return type of View.toolbar<A>(content:)>>.0>, _TraitWritingModifier<TransitionTraitKey>>, ModifiedContent<InSessionView, _TraitWritingModifier<TransitionTraitKey>>> and conformance <> _ConditionalContent<A, B>();
      _ConditionalContent<>.init(storage:)();

      return outlined destroy of _ConditionalContent<ModifiedContent<NavigationStack<NavigationPath, <<opaque return type of View.toolbar<A>(content:)>>.0>, _TraitWritingModifier<TransitionTraitKey>>, ModifiedContent<InSessionView, _TraitWritingModifier<TransitionTraitKey>>>(v52, &_s7SwiftUI19_ConditionalContentVyACyAA08ModifiedD0VyAA6ZStackVyAA9TupleViewVyAEyAA5ColorVAA23_SafeAreaIgnoringLayoutVG_07WorkoutB0021MirroredStartWatchAppH0VtGGAA21_TraitWritingModifierVyAA010TransitionS3KeyVGGAEyAA0H0PAAE5sheet11isPresented9onDismiss7contentQrAA7BindingVySbG_yycSgqd__yctAaZRd__lFQOyA_AAEA0_A1_A2_A3_QrA6__A7_qd__yctAaZRd__lFQOyAEyAGyANGAA017_AppearanceActionU0VG_AEyAEyAO027SafetyMonitorMessageComposeH0VAA012_EnvironmentwtU0VyAKSgGGAA01_jk7RegionslM0VGQo__AEyAEy013SafetyMonitorB0027CheckInOnboardingNavigationH0VA17_GA20_GQo_AXGGACyAEyA_AAEA0_A1_A2_A3_QrA6__A7_qd__yctAaZRd__lFQOyA_AAEA0_A1_A2_A3_QrA6__A7_qd__yctAaZRd__lFQOyAEyAO09CountdownH0VA10_G_A21_Qo__A27_Qo_AXGAEyAO0H17ControllerWrapperVSgAXGGGMd);
    }

    if (v26 == 1)
    {
      v28 = v69;
      SessionView.safetyCheckInView()(v69);
      OpacityTransition.init()();
      (*(v19 + 16))(v22, v24, v18);
      _s11WorkoutCore19LowPowerModeMonitorCAC7Combine16ObservableObjectAAWlTm_0(&lazy protocol witness table cache variable for type OpacityTransition and conformance OpacityTransition, MEMORY[0x277CE0068]);
      v29 = AnyTransition.init<A>(_:)();
      (*(v19 + 8))(v24, v18);
      *(v28 + *(v74 + 36)) = v29;
      outlined init with copy of _ConditionalContent<ModifiedContent<NavigationStack<NavigationPath, <<opaque return type of View.toolbar<A>(content:)>>.0>, _TraitWritingModifier<TransitionTraitKey>>, ModifiedContent<InSessionView, _TraitWritingModifier<TransitionTraitKey>>>(v28, v15, &_s7SwiftUI15ModifiedContentVyAA4ViewPAAE5sheet11isPresented9onDismiss7contentQrAA7BindingVySbG_yycSgqd__yctAaDRd__lFQOyAeAEAfghIQrAL_AMqd__yctAaDRd__lFQOyACyAA6ZStackVyACyAA5ColorVAA23_SafeAreaIgnoringLayoutVGGAA25_AppearanceActionModifierVG_ACyACy07WorkoutB0027SafetyMonitorMessageComposeE0VAA022_EnvironmentKeyWritingU0VyAQSgGGAA01_op7RegionsqR0VGQo__ACyACy0wxB0027CheckInOnboardingNavigationE0VA3_GA6_GQo_AA013_TraitWritingU0VyAA18TransitionTraitKeyVGGMd);
      swift_storeEnumTagMultiPayload();
      __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyAA6ZStackVyAA9TupleViewVyACyAA5ColorVAA23_SafeAreaIgnoringLayoutVG_07WorkoutB0021MirroredStartWatchAppG0VtGGAA21_TraitWritingModifierVyAA010TransitionR3KeyVGGMd);
      lazy protocol witness table accessor for type ModifiedContent<ZStack<TupleView<(ModifiedContent<Color, _SafeAreaIgnoringLayout>, MirroredStartWatchAppView)>>, _TraitWritingModifier<TransitionTraitKey>> and conformance <> ModifiedContent<A, B>();
      lazy protocol witness table accessor for type ModifiedContent<<<opaque return type of View.sheet<A>(isPresented:onDismiss:content:)>>.0, _TraitWritingModifier<TransitionTraitKey>> and conformance <> ModifiedContent<A, B>();
      v30 = v73;
      _ConditionalContent<>.init(storage:)();
      outlined init with copy of _ConditionalContent<ModifiedContent<NavigationStack<NavigationPath, <<opaque return type of View.toolbar<A>(content:)>>.0>, _TraitWritingModifier<TransitionTraitKey>>, ModifiedContent<InSessionView, _TraitWritingModifier<TransitionTraitKey>>>(v30, v86, &_s7SwiftUI19_ConditionalContentVyAA08ModifiedD0VyAA6ZStackVyAA9TupleViewVyAEyAA5ColorVAA23_SafeAreaIgnoringLayoutVG_07WorkoutB0021MirroredStartWatchAppH0VtGGAA21_TraitWritingModifierVyAA010TransitionS3KeyVGGAEyAA0H0PAAE5sheet11isPresented9onDismiss7contentQrAA7BindingVySbG_yycSgqd__yctAaZRd__lFQOyA_AAEA0_A1_A2_A3_QrA6__A7_qd__yctAaZRd__lFQOyAEyAGyANGAA017_AppearanceActionU0VG_AEyAEyAO027SafetyMonitorMessageComposeH0VAA012_EnvironmentwtU0VyAKSgGGAA01_jk7RegionslM0VGQo__AEyAEy013SafetyMonitorB0027CheckInOnboardingNavigationH0VA17_GA20_GQo_AXGGMd);
      swift_storeEnumTagMultiPayload();
      lazy protocol witness table accessor for type _ConditionalContent<ModifiedContent<ZStack<TupleView<(ModifiedContent<Color, _SafeAreaIgnoringLayout>, MirroredStartWatchAppView)>>, _TraitWritingModifier<TransitionTraitKey>>, ModifiedContent<<<opaque return type of View.sheet<A>(isPresented:onDismiss:content:)>>.0, _TraitWritingModifier<TransitionTraitKey>>> and conformance <> _ConditionalContent<A, B>();
      lazy protocol witness table accessor for type _ConditionalContent<ModifiedContent<<<opaque return type of View.sheet<A>(isPresented:onDismiss:content:)>>.0, _TraitWritingModifier<TransitionTraitKey>>, ModifiedContent<ViewControllerWrapper?, _TraitWritingModifier<TransitionTraitKey>>> and conformance <> _ConditionalContent<A, B>();
      v31 = v88;
      _ConditionalContent<>.init(storage:)();
      outlined destroy of _ConditionalContent<ModifiedContent<NavigationStack<NavigationPath, <<opaque return type of View.toolbar<A>(content:)>>.0>, _TraitWritingModifier<TransitionTraitKey>>, ModifiedContent<InSessionView, _TraitWritingModifier<TransitionTraitKey>>>(v30, &_s7SwiftUI19_ConditionalContentVyAA08ModifiedD0VyAA6ZStackVyAA9TupleViewVyAEyAA5ColorVAA23_SafeAreaIgnoringLayoutVG_07WorkoutB0021MirroredStartWatchAppH0VtGGAA21_TraitWritingModifierVyAA010TransitionS3KeyVGGAEyAA0H0PAAE5sheet11isPresented9onDismiss7contentQrAA7BindingVySbG_yycSgqd__yctAaZRd__lFQOyA_AAEA0_A1_A2_A3_QrA6__A7_qd__yctAaZRd__lFQOyAEyAGyANGAA017_AppearanceActionU0VG_AEyAEyAO027SafetyMonitorMessageComposeH0VAA012_EnvironmentwtU0VyAKSgGGAA01_jk7RegionslM0VGQo__AEyAEy013SafetyMonitorB0027CheckInOnboardingNavigationH0VA17_GA20_GQo_AXGGMd);
      outlined init with copy of _ConditionalContent<ModifiedContent<NavigationStack<NavigationPath, <<opaque return type of View.toolbar<A>(content:)>>.0>, _TraitWritingModifier<TransitionTraitKey>>, ModifiedContent<InSessionView, _TraitWritingModifier<TransitionTraitKey>>>(v31, v91, &_s7SwiftUI19_ConditionalContentVyACyAA08ModifiedD0VyAA6ZStackVyAA9TupleViewVyAEyAA5ColorVAA23_SafeAreaIgnoringLayoutVG_07WorkoutB0021MirroredStartWatchAppH0VtGGAA21_TraitWritingModifierVyAA010TransitionS3KeyVGGAEyAA0H0PAAE5sheet11isPresented9onDismiss7contentQrAA7BindingVySbG_yycSgqd__yctAaZRd__lFQOyA_AAEA0_A1_A2_A3_QrA6__A7_qd__yctAaZRd__lFQOyAEyAGyANGAA017_AppearanceActionU0VG_AEyAEyAO027SafetyMonitorMessageComposeH0VAA012_EnvironmentwtU0VyAKSgGGAA01_jk7RegionslM0VGQo__AEyAEy013SafetyMonitorB0027CheckInOnboardingNavigationH0VA17_GA20_GQo_AXGGACyAEyA_AAEA0_A1_A2_A3_QrA6__A7_qd__yctAaZRd__lFQOyA_AAEA0_A1_A2_A3_QrA6__A7_qd__yctAaZRd__lFQOyAEyAO09CountdownH0VA10_G_A21_Qo__A27_Qo_AXGAEyAO0H17ControllerWrapperVSgAXGGGMd);
      swift_storeEnumTagMultiPayload();
      lazy protocol witness table accessor for type _ConditionalContent<_ConditionalContent<ModifiedContent<ZStack<TupleView<(ModifiedContent<Color, _SafeAreaIgnoringLayout>, MirroredStartWatchAppView)>>, _TraitWritingModifier<TransitionTraitKey>>, ModifiedContent<<<opaque return type of View.sheet<A>(isPresented:onDismiss:content:)>>.0, _TraitWritingModifier<TransitionTraitKey>>>, _ConditionalContent<ModifiedContent<<<opaque return type of View.sheet<A>(isPresented:onDismiss:content:)>>.0, _TraitWritingModifier<TransitionTraitKey>>, ModifiedContent<ViewControllerWrapper?, _TraitWritingModifier<TransitionTraitKey>>>> and conformance <> _ConditionalContent<A, B>();
      lazy protocol witness table accessor for type _ConditionalContent<ModifiedContent<NavigationStack<NavigationPath, <<opaque return type of View.toolbar<A>(content:)>>.0>, _TraitWritingModifier<TransitionTraitKey>>, ModifiedContent<InSessionView, _TraitWritingModifier<TransitionTraitKey>>> and conformance <> _ConditionalContent<A, B>();
      _ConditionalContent<>.init(storage:)();
      outlined destroy of _ConditionalContent<ModifiedContent<NavigationStack<NavigationPath, <<opaque return type of View.toolbar<A>(content:)>>.0>, _TraitWritingModifier<TransitionTraitKey>>, ModifiedContent<InSessionView, _TraitWritingModifier<TransitionTraitKey>>>(v31, &_s7SwiftUI19_ConditionalContentVyACyAA08ModifiedD0VyAA6ZStackVyAA9TupleViewVyAEyAA5ColorVAA23_SafeAreaIgnoringLayoutVG_07WorkoutB0021MirroredStartWatchAppH0VtGGAA21_TraitWritingModifierVyAA010TransitionS3KeyVGGAEyAA0H0PAAE5sheet11isPresented9onDismiss7contentQrAA7BindingVySbG_yycSgqd__yctAaZRd__lFQOyA_AAEA0_A1_A2_A3_QrA6__A7_qd__yctAaZRd__lFQOyAEyAGyANGAA017_AppearanceActionU0VG_AEyAEyAO027SafetyMonitorMessageComposeH0VAA012_EnvironmentwtU0VyAKSgGGAA01_jk7RegionslM0VGQo__AEyAEy013SafetyMonitorB0027CheckInOnboardingNavigationH0VA17_GA20_GQo_AXGGACyAEyA_AAEA0_A1_A2_A3_QrA6__A7_qd__yctAaZRd__lFQOyA_AAEA0_A1_A2_A3_QrA6__A7_qd__yctAaZRd__lFQOyAEyAO09CountdownH0VA10_G_A21_Qo__A27_Qo_AXGAEyAO0H17ControllerWrapperVSgAXGGGMd);
      v32 = v28;
      v33 = &_s7SwiftUI15ModifiedContentVyAA4ViewPAAE5sheet11isPresented9onDismiss7contentQrAA7BindingVySbG_yycSgqd__yctAaDRd__lFQOyAeAEAfghIQrAL_AMqd__yctAaDRd__lFQOyACyAA6ZStackVyACyAA5ColorVAA23_SafeAreaIgnoringLayoutVGGAA25_AppearanceActionModifierVG_ACyACy07WorkoutB0027SafetyMonitorMessageComposeE0VAA022_EnvironmentKeyWritingU0VyAQSgGGAA01_op7RegionsqR0VGQo__ACyACy0wxB0027CheckInOnboardingNavigationE0VA3_GA6_GQo_AA013_TraitWritingU0VyAA18TransitionTraitKeyVGGMd;
      return outlined destroy of _ConditionalContent<ModifiedContent<NavigationStack<NavigationPath, <<opaque return type of View.toolbar<A>(content:)>>.0>, _TraitWritingModifier<TransitionTraitKey>>, ModifiedContent<InSessionView, _TraitWritingModifier<TransitionTraitKey>>>(v32, v33);
    }

    v60 = v70;
    SessionView.countdownView()(v70);
    OpacityTransition.init()();
    (*(v19 + 16))(v22, v24, v18);
    _s11WorkoutCore19LowPowerModeMonitorCAC7Combine16ObservableObjectAAWlTm_0(&lazy protocol witness table cache variable for type OpacityTransition and conformance OpacityTransition, MEMORY[0x277CE0068]);
    v61 = AnyTransition.init<A>(_:)();
    (*(v19 + 8))(v24, v18);
    *(v60 + *(v76 + 36)) = v61;
    v42 = &_s7SwiftUI15ModifiedContentVyAA4ViewPAAE5sheet11isPresented9onDismiss7contentQrAA7BindingVySbG_yycSgqd__yctAaDRd__lFQOyAeAEAfghIQrAL_AMqd__yctAaDRd__lFQOyACy07WorkoutB009CountdownE0VAA25_AppearanceActionModifierVG_ACyACyAN027SafetyMonitorMessageComposeE0VAA022_EnvironmentKeyWritingQ0VyAA5ColorVSgGGAA30_SafeAreaRegionsIgnoringLayoutVGQo__ACyACy0rsB0027CheckInOnboardingNavigationE0VA_GA2_GQo_AA06_TraitxQ0VyAA015TransitionTraitW0VGGMd;
    outlined init with copy of _ConditionalContent<ModifiedContent<NavigationStack<NavigationPath, <<opaque return type of View.toolbar<A>(content:)>>.0>, _TraitWritingModifier<TransitionTraitKey>>, ModifiedContent<InSessionView, _TraitWritingModifier<TransitionTraitKey>>>(v60, v77, &_s7SwiftUI15ModifiedContentVyAA4ViewPAAE5sheet11isPresented9onDismiss7contentQrAA7BindingVySbG_yycSgqd__yctAaDRd__lFQOyAeAEAfghIQrAL_AMqd__yctAaDRd__lFQOyACy07WorkoutB009CountdownE0VAA25_AppearanceActionModifierVG_ACyACyAN027SafetyMonitorMessageComposeE0VAA022_EnvironmentKeyWritingQ0VyAA5ColorVSgGGAA30_SafeAreaRegionsIgnoringLayoutVGQo__ACyACy0rsB0027CheckInOnboardingNavigationE0VA_GA2_GQo_AA06_TraitxQ0VyAA015TransitionTraitW0VGGMd);
    swift_storeEnumTagMultiPayload();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVy07WorkoutB021ViewControllerWrapperVSgAA21_TraitWritingModifierVyAA010TransitionI3KeyVGGMd);
    lazy protocol witness table accessor for type ModifiedContent<<<opaque return type of View.sheet<A>(isPresented:onDismiss:content:)>>.0, _TraitWritingModifier<TransitionTraitKey>> and conformance <> ModifiedContent<A, B>();
    lazy protocol witness table accessor for type ModifiedContent<ViewControllerWrapper?, _TraitWritingModifier<TransitionTraitKey>> and conformance <> ModifiedContent<A, B>();
    v62 = v78;
    _ConditionalContent<>.init(storage:)();
    outlined init with copy of _ConditionalContent<ModifiedContent<NavigationStack<NavigationPath, <<opaque return type of View.toolbar<A>(content:)>>.0>, _TraitWritingModifier<TransitionTraitKey>>, ModifiedContent<InSessionView, _TraitWritingModifier<TransitionTraitKey>>>(v62, v86, &_s7SwiftUI19_ConditionalContentVyAA08ModifiedD0VyAA4ViewPAAE5sheet11isPresented9onDismiss7contentQrAA7BindingVySbG_yycSgqd__yctAaFRd__lFQOyAgAEAhijKQrAN_AOqd__yctAaFRd__lFQOyAEy07WorkoutB009CountdownF0VAA25_AppearanceActionModifierVG_AEyAEyAP027SafetyMonitorMessageComposeF0VAA022_EnvironmentKeyWritingR0VyAA5ColorVSgGGAA30_SafeAreaRegionsIgnoringLayoutVGQo__AEyAEy0stB0027CheckInOnboardingNavigationF0VA1_GA4_GQo_AA06_TraityR0VyAA015TransitionTraitX0VGGAEyAP0F17ControllerWrapperVSgA17_GGMd);
    swift_storeEnumTagMultiPayload();
    lazy protocol witness table accessor for type _ConditionalContent<ModifiedContent<ZStack<TupleView<(ModifiedContent<Color, _SafeAreaIgnoringLayout>, MirroredStartWatchAppView)>>, _TraitWritingModifier<TransitionTraitKey>>, ModifiedContent<<<opaque return type of View.sheet<A>(isPresented:onDismiss:content:)>>.0, _TraitWritingModifier<TransitionTraitKey>>> and conformance <> _ConditionalContent<A, B>();
    lazy protocol witness table accessor for type _ConditionalContent<ModifiedContent<<<opaque return type of View.sheet<A>(isPresented:onDismiss:content:)>>.0, _TraitWritingModifier<TransitionTraitKey>>, ModifiedContent<ViewControllerWrapper?, _TraitWritingModifier<TransitionTraitKey>>> and conformance <> _ConditionalContent<A, B>();
    v63 = v88;
    _ConditionalContent<>.init(storage:)();
    outlined destroy of _ConditionalContent<ModifiedContent<NavigationStack<NavigationPath, <<opaque return type of View.toolbar<A>(content:)>>.0>, _TraitWritingModifier<TransitionTraitKey>>, ModifiedContent<InSessionView, _TraitWritingModifier<TransitionTraitKey>>>(v62, &_s7SwiftUI19_ConditionalContentVyAA08ModifiedD0VyAA4ViewPAAE5sheet11isPresented9onDismiss7contentQrAA7BindingVySbG_yycSgqd__yctAaFRd__lFQOyAgAEAhijKQrAN_AOqd__yctAaFRd__lFQOyAEy07WorkoutB009CountdownF0VAA25_AppearanceActionModifierVG_AEyAEyAP027SafetyMonitorMessageComposeF0VAA022_EnvironmentKeyWritingR0VyAA5ColorVSgGGAA30_SafeAreaRegionsIgnoringLayoutVGQo__AEyAEy0stB0027CheckInOnboardingNavigationF0VA1_GA4_GQo_AA06_TraityR0VyAA015TransitionTraitX0VGGAEyAP0F17ControllerWrapperVSgA17_GGMd);
    outlined init with copy of _ConditionalContent<ModifiedContent<NavigationStack<NavigationPath, <<opaque return type of View.toolbar<A>(content:)>>.0>, _TraitWritingModifier<TransitionTraitKey>>, ModifiedContent<InSessionView, _TraitWritingModifier<TransitionTraitKey>>>(v63, v91, &_s7SwiftUI19_ConditionalContentVyACyAA08ModifiedD0VyAA6ZStackVyAA9TupleViewVyAEyAA5ColorVAA23_SafeAreaIgnoringLayoutVG_07WorkoutB0021MirroredStartWatchAppH0VtGGAA21_TraitWritingModifierVyAA010TransitionS3KeyVGGAEyAA0H0PAAE5sheet11isPresented9onDismiss7contentQrAA7BindingVySbG_yycSgqd__yctAaZRd__lFQOyA_AAEA0_A1_A2_A3_QrA6__A7_qd__yctAaZRd__lFQOyAEyAGyANGAA017_AppearanceActionU0VG_AEyAEyAO027SafetyMonitorMessageComposeH0VAA012_EnvironmentwtU0VyAKSgGGAA01_jk7RegionslM0VGQo__AEyAEy013SafetyMonitorB0027CheckInOnboardingNavigationH0VA17_GA20_GQo_AXGGACyAEyA_AAEA0_A1_A2_A3_QrA6__A7_qd__yctAaZRd__lFQOyA_AAEA0_A1_A2_A3_QrA6__A7_qd__yctAaZRd__lFQOyAEyAO09CountdownH0VA10_G_A21_Qo__A27_Qo_AXGAEyAO0H17ControllerWrapperVSgAXGGGMd);
    swift_storeEnumTagMultiPayload();
    lazy protocol witness table accessor for type _ConditionalContent<_ConditionalContent<ModifiedContent<ZStack<TupleView<(ModifiedContent<Color, _SafeAreaIgnoringLayout>, MirroredStartWatchAppView)>>, _TraitWritingModifier<TransitionTraitKey>>, ModifiedContent<<<opaque return type of View.sheet<A>(isPresented:onDismiss:content:)>>.0, _TraitWritingModifier<TransitionTraitKey>>>, _ConditionalContent<ModifiedContent<<<opaque return type of View.sheet<A>(isPresented:onDismiss:content:)>>.0, _TraitWritingModifier<TransitionTraitKey>>, ModifiedContent<ViewControllerWrapper?, _TraitWritingModifier<TransitionTraitKey>>>> and conformance <> _ConditionalContent<A, B>();
    lazy protocol witness table accessor for type _ConditionalContent<ModifiedContent<NavigationStack<NavigationPath, <<opaque return type of View.toolbar<A>(content:)>>.0>, _TraitWritingModifier<TransitionTraitKey>>, ModifiedContent<InSessionView, _TraitWritingModifier<TransitionTraitKey>>> and conformance <> _ConditionalContent<A, B>();
    _ConditionalContent<>.init(storage:)();
    outlined destroy of _ConditionalContent<ModifiedContent<NavigationStack<NavigationPath, <<opaque return type of View.toolbar<A>(content:)>>.0>, _TraitWritingModifier<TransitionTraitKey>>, ModifiedContent<InSessionView, _TraitWritingModifier<TransitionTraitKey>>>(v63, &_s7SwiftUI19_ConditionalContentVyACyAA08ModifiedD0VyAA6ZStackVyAA9TupleViewVyAEyAA5ColorVAA23_SafeAreaIgnoringLayoutVG_07WorkoutB0021MirroredStartWatchAppH0VtGGAA21_TraitWritingModifierVyAA010TransitionS3KeyVGGAEyAA0H0PAAE5sheet11isPresented9onDismiss7contentQrAA7BindingVySbG_yycSgqd__yctAaZRd__lFQOyA_AAEA0_A1_A2_A3_QrA6__A7_qd__yctAaZRd__lFQOyAEyAGyANGAA017_AppearanceActionU0VG_AEyAEyAO027SafetyMonitorMessageComposeH0VAA012_EnvironmentwtU0VyAKSgGGAA01_jk7RegionslM0VGQo__AEyAEy013SafetyMonitorB0027CheckInOnboardingNavigationH0VA17_GA20_GQo_AXGGACyAEyA_AAEA0_A1_A2_A3_QrA6__A7_qd__yctAaZRd__lFQOyA_AAEA0_A1_A2_A3_QrA6__A7_qd__yctAaZRd__lFQOyAEyAO09CountdownH0VA10_G_A21_Qo__A27_Qo_AXGAEyAO0H17ControllerWrapperVSgAXGGGMd);
    v32 = v60;
LABEL_11:
    v33 = v42;
    return outlined destroy of _ConditionalContent<ModifiedContent<NavigationStack<NavigationPath, <<opaque return type of View.toolbar<A>(content:)>>.0>, _TraitWritingModifier<TransitionTraitKey>>, ModifiedContent<InSessionView, _TraitWritingModifier<TransitionTraitKey>>>(v32, v33);
  }

  if (v26 == 3)
  {
    SessionView.summaryView()(&v94);
    v54 = v94;
    OpacityTransition.init()();
    (*(v19 + 16))(v22, v24, v18);
    _s11WorkoutCore19LowPowerModeMonitorCAC7Combine16ObservableObjectAAWlTm_0(&lazy protocol witness table cache variable for type OpacityTransition and conformance OpacityTransition, MEMORY[0x277CE0068]);
    v55 = AnyTransition.init<A>(_:)();
    (*(v19 + 8))(v24, v18);
    v56 = v77;
    *v77 = v54;
    v56[1] = v55;
    swift_storeEnumTagMultiPayload();
    v57 = v54;

    __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVy07WorkoutB021ViewControllerWrapperVSgAA21_TraitWritingModifierVyAA010TransitionI3KeyVGGMd);
    lazy protocol witness table accessor for type ModifiedContent<<<opaque return type of View.sheet<A>(isPresented:onDismiss:content:)>>.0, _TraitWritingModifier<TransitionTraitKey>> and conformance <> ModifiedContent<A, B>();
    lazy protocol witness table accessor for type ModifiedContent<ViewControllerWrapper?, _TraitWritingModifier<TransitionTraitKey>> and conformance <> ModifiedContent<A, B>();
    v58 = v78;
    _ConditionalContent<>.init(storage:)();
    outlined init with copy of _ConditionalContent<ModifiedContent<NavigationStack<NavigationPath, <<opaque return type of View.toolbar<A>(content:)>>.0>, _TraitWritingModifier<TransitionTraitKey>>, ModifiedContent<InSessionView, _TraitWritingModifier<TransitionTraitKey>>>(v58, v86, &_s7SwiftUI19_ConditionalContentVyAA08ModifiedD0VyAA4ViewPAAE5sheet11isPresented9onDismiss7contentQrAA7BindingVySbG_yycSgqd__yctAaFRd__lFQOyAgAEAhijKQrAN_AOqd__yctAaFRd__lFQOyAEy07WorkoutB009CountdownF0VAA25_AppearanceActionModifierVG_AEyAEyAP027SafetyMonitorMessageComposeF0VAA022_EnvironmentKeyWritingR0VyAA5ColorVSgGGAA30_SafeAreaRegionsIgnoringLayoutVGQo__AEyAEy0stB0027CheckInOnboardingNavigationF0VA1_GA4_GQo_AA06_TraityR0VyAA015TransitionTraitX0VGGAEyAP0F17ControllerWrapperVSgA17_GGMd);
    swift_storeEnumTagMultiPayload();
    lazy protocol witness table accessor for type _ConditionalContent<ModifiedContent<ZStack<TupleView<(ModifiedContent<Color, _SafeAreaIgnoringLayout>, MirroredStartWatchAppView)>>, _TraitWritingModifier<TransitionTraitKey>>, ModifiedContent<<<opaque return type of View.sheet<A>(isPresented:onDismiss:content:)>>.0, _TraitWritingModifier<TransitionTraitKey>>> and conformance <> _ConditionalContent<A, B>();
    lazy protocol witness table accessor for type _ConditionalContent<ModifiedContent<<<opaque return type of View.sheet<A>(isPresented:onDismiss:content:)>>.0, _TraitWritingModifier<TransitionTraitKey>>, ModifiedContent<ViewControllerWrapper?, _TraitWritingModifier<TransitionTraitKey>>> and conformance <> _ConditionalContent<A, B>();
    v59 = v88;
    _ConditionalContent<>.init(storage:)();
    outlined destroy of _ConditionalContent<ModifiedContent<NavigationStack<NavigationPath, <<opaque return type of View.toolbar<A>(content:)>>.0>, _TraitWritingModifier<TransitionTraitKey>>, ModifiedContent<InSessionView, _TraitWritingModifier<TransitionTraitKey>>>(v58, &_s7SwiftUI19_ConditionalContentVyAA08ModifiedD0VyAA4ViewPAAE5sheet11isPresented9onDismiss7contentQrAA7BindingVySbG_yycSgqd__yctAaFRd__lFQOyAgAEAhijKQrAN_AOqd__yctAaFRd__lFQOyAEy07WorkoutB009CountdownF0VAA25_AppearanceActionModifierVG_AEyAEyAP027SafetyMonitorMessageComposeF0VAA022_EnvironmentKeyWritingR0VyAA5ColorVSgGGAA30_SafeAreaRegionsIgnoringLayoutVGQo__AEyAEy0stB0027CheckInOnboardingNavigationF0VA1_GA4_GQo_AA06_TraityR0VyAA015TransitionTraitX0VGGAEyAP0F17ControllerWrapperVSgA17_GGMd);
    outlined init with copy of _ConditionalContent<ModifiedContent<NavigationStack<NavigationPath, <<opaque return type of View.toolbar<A>(content:)>>.0>, _TraitWritingModifier<TransitionTraitKey>>, ModifiedContent<InSessionView, _TraitWritingModifier<TransitionTraitKey>>>(v59, v91, &_s7SwiftUI19_ConditionalContentVyACyAA08ModifiedD0VyAA6ZStackVyAA9TupleViewVyAEyAA5ColorVAA23_SafeAreaIgnoringLayoutVG_07WorkoutB0021MirroredStartWatchAppH0VtGGAA21_TraitWritingModifierVyAA010TransitionS3KeyVGGAEyAA0H0PAAE5sheet11isPresented9onDismiss7contentQrAA7BindingVySbG_yycSgqd__yctAaZRd__lFQOyA_AAEA0_A1_A2_A3_QrA6__A7_qd__yctAaZRd__lFQOyAEyAGyANGAA017_AppearanceActionU0VG_AEyAEyAO027SafetyMonitorMessageComposeH0VAA012_EnvironmentwtU0VyAKSgGGAA01_jk7RegionslM0VGQo__AEyAEy013SafetyMonitorB0027CheckInOnboardingNavigationH0VA17_GA20_GQo_AXGGACyAEyA_AAEA0_A1_A2_A3_QrA6__A7_qd__yctAaZRd__lFQOyA_AAEA0_A1_A2_A3_QrA6__A7_qd__yctAaZRd__lFQOyAEyAO09CountdownH0VA10_G_A21_Qo__A27_Qo_AXGAEyAO0H17ControllerWrapperVSgAXGGGMd);
    swift_storeEnumTagMultiPayload();
    lazy protocol witness table accessor for type _ConditionalContent<_ConditionalContent<ModifiedContent<ZStack<TupleView<(ModifiedContent<Color, _SafeAreaIgnoringLayout>, MirroredStartWatchAppView)>>, _TraitWritingModifier<TransitionTraitKey>>, ModifiedContent<<<opaque return type of View.sheet<A>(isPresented:onDismiss:content:)>>.0, _TraitWritingModifier<TransitionTraitKey>>>, _ConditionalContent<ModifiedContent<<<opaque return type of View.sheet<A>(isPresented:onDismiss:content:)>>.0, _TraitWritingModifier<TransitionTraitKey>>, ModifiedContent<ViewControllerWrapper?, _TraitWritingModifier<TransitionTraitKey>>>> and conformance <> _ConditionalContent<A, B>();
    lazy protocol witness table accessor for type _ConditionalContent<ModifiedContent<NavigationStack<NavigationPath, <<opaque return type of View.toolbar<A>(content:)>>.0>, _TraitWritingModifier<TransitionTraitKey>>, ModifiedContent<InSessionView, _TraitWritingModifier<TransitionTraitKey>>> and conformance <> _ConditionalContent<A, B>();
    _ConditionalContent<>.init(storage:)();

    return outlined destroy of _ConditionalContent<ModifiedContent<NavigationStack<NavigationPath, <<opaque return type of View.toolbar<A>(content:)>>.0>, _TraitWritingModifier<TransitionTraitKey>>, ModifiedContent<InSessionView, _TraitWritingModifier<TransitionTraitKey>>>(v59, &_s7SwiftUI19_ConditionalContentVyACyAA08ModifiedD0VyAA6ZStackVyAA9TupleViewVyAEyAA5ColorVAA23_SafeAreaIgnoringLayoutVG_07WorkoutB0021MirroredStartWatchAppH0VtGGAA21_TraitWritingModifierVyAA010TransitionS3KeyVGGAEyAA0H0PAAE5sheet11isPresented9onDismiss7contentQrAA7BindingVySbG_yycSgqd__yctAaZRd__lFQOyA_AAEA0_A1_A2_A3_QrA6__A7_qd__yctAaZRd__lFQOyAEyAGyANGAA017_AppearanceActionU0VG_AEyAEyAO027SafetyMonitorMessageComposeH0VAA012_EnvironmentwtU0VyAKSgGGAA01_jk7RegionslM0VGQo__AEyAEy013SafetyMonitorB0027CheckInOnboardingNavigationH0VA17_GA20_GQo_AXGGACyAEyA_AAEA0_A1_A2_A3_QrA6__A7_qd__yctAaZRd__lFQOyA_AAEA0_A1_A2_A3_QrA6__A7_qd__yctAaZRd__lFQOyAEyAO09CountdownH0VA10_G_A21_Qo__A27_Qo_AXGAEyAO0H17ControllerWrapperVSgAXGGGMd);
  }

  if (v26 == 4)
  {
    v88 = &v68;
    MEMORY[0x28223BE20](v27);
    v87 = &v68 - 4;
    *(&v68 - 2) = a1;
    v86 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI4ViewPAAE7toolbar7contentQrqd__yXE_tAA14ToolbarContentRd__lFQOyAA08ModifiedG0VyAA14GeometryReaderVyAA06ScrollC0VyAHyAHyAA6VStackVyAA05TupleC0VyAA6SpacerV_ANyAPyAHy07WorkoutB0013CountdownIconC0VAA14_PaddingLayoutVG_AHyAHyAHyAHyAA4TextVAA30_EnvironmentKeyWritingModifierVyAA0T9AlignmentOGGAWGAWGAA023AccessibilityAttachmentX0VGSgA6_SgAA7ForEachVySaySi6offset_SS7elementtGSiAHyAHyAHyAHyAcAE11buttonStyleyQrqd__AA20PrimitiveButtonStyleRd__lFQOyAA6ButtonVyAHyAzA010_FlexFrameS0VGG_AA28BorderedProminentButtonStyleVQo_A0_yAA11ControlSizeOGGA0_yAA13AnyShapeStyleVSgGGAA11_ClipEffectVyAA16RoundedRectangleVGGAWGGSgtGGARtGGA22_GA22_GGGAA024_SafeAreaRegionsIgnoringS0VG_AA0fG7BuilderV10buildBlockyQrxAaFRzlFZQOy_AA0F4ItemVyytAHyA20_yAA18DefaultButtonLabelVGA0_yAA5ColorVSgGGGQo_Qo_Md);
    v34 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyAA14GeometryReaderVyAA10ScrollViewVyACyACyAA6VStackVyAA05TupleH0VyAA6SpacerV_AIyAKyACy07WorkoutB0013CountdownIconH0VAA14_PaddingLayoutVG_ACyACyACyACyAA4TextVAA30_EnvironmentKeyWritingModifierVyAA0Q9AlignmentOGGARGARGAA023AccessibilityAttachmentU0VGSgA1_SgAA7ForEachVySaySi6offset_SS7elementtGSiACyACyACyACyAA0H0PAAE11buttonStyleyQrqd__AA20PrimitiveButtonStyleRd__lFQOyAA6ButtonVyACyAuA010_FlexFrameP0VGG_AA28BorderedProminentButtonStyleVQo_AWyAA11ControlSizeOGGAWyAA13AnyShapeStyleVSgGGAA11_ClipEffectVyAA16RoundedRectangleVGGARGGSgtGGAMtGGA19_GA19_GGGAA024_SafeAreaRegionsIgnoringP0VGMd);
    v35 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI21ToolbarContentBuilderV10buildBlockyQrxAA0cD0RzlFZQOy_AA0C4ItemVyytAA08ModifiedD0VyAA6ButtonVyAA07DefaultJ5LabelVGAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGGQo_Md);
    v36 = lazy protocol witness table accessor for type ModifiedContent<GeometryReader<ScrollView<ModifiedContent<ModifiedContent<VStack<TupleView<(Spacer, VStack<TupleView<(ModifiedContent<CountdownIconView, _PaddingLayout>, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Text, _EnvironmentKeyWritingModifier<TextAlignment>>, _PaddingLayout>, _PaddingLayout>, AccessibilityAttachmentModifier>?, ModifiedContent<ModifiedContent<ModifiedContent<Text, _EnvironmentKeyWritingModifier<TextAlignment>>, _PaddingLayout>, _PaddingLayout>?, ForEach<[(offset: Int, element: String)], Int, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<<<opaque return type of View.buttonStyle<A>(_:)>>.0, _EnvironmentKeyWritingModifier<ControlSize>>, _EnvironmentKeyWritingModifier<AnyShapeStyle?>>, _ClipEffect<RoundedRectangle>>, _PaddingLayout>>?)>>, Spacer)>>, _FlexFrameLayout>, _FlexFrameLayout>>>, _SafeAreaRegionsIgnoringLayout> and conformance <> ModifiedContent<A, B>();
    v37 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI11ToolbarItemVyytAA15ModifiedContentVyAA6ButtonVyAA07DefaultG5LabelVGAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGGMd);
    v38 = lazy protocol witness table accessor for type ZStack<_ConditionalContent<_ConditionalContent<_ConditionalContent<ModifiedContent<ZStack<TupleView<(ModifiedContent<Color, _SafeAreaIgnoringLayout>, MirroredStartWatchAppView)>>, _TraitWritingModifier<TransitionTraitKey>>, ModifiedContent<<<opaque return type of View.sheet<A>(isPresented:onDismiss:content:)>>.0, _TraitWritingModifier<TransitionTraitKey>>>, _ConditionalContent<ModifiedContent<<<opaque return type of View.sheet<A>(isPresented:onDismiss:content:)>>.0, _TraitWritingModifier<TransitionTraitKey>>, ModifiedContent<ViewControllerWrapper?, _TraitWritingModifier<TransitionTraitKey>>>>, _ConditionalContent<ModifiedContent<NavigationStack<NavigationPath, <<opaque return type of View.toolbar<A>(content:)>>.0>, _TraitWritingModifier<TransitionTraitKey>>, ModifiedContent<InSessionView, _TraitWritingModifier<TransitionTraitKey>>>>> and conformance ZStack<A>(&lazy protocol witness table cache variable for type ToolbarItem<(), ModifiedContent<Button<DefaultButtonLabel>, _EnvironmentKeyWritingModifier<Color?>>> and conformance ToolbarItem<A, B>, &_s7SwiftUI11ToolbarItemVyytAA15ModifiedContentVyAA6ButtonVyAA07DefaultG5LabelVGAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGGMd);
    v94 = v37;
    v95 = v38;
    OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
    v94 = v34;
    v95 = v35;
    v96 = v36;
    v97 = OpaqueTypeConformance2;
    swift_getOpaqueTypeConformance2();
    v40 = v72;
    NavigationStack.init<>(root:)();
    OpacityTransition.init()();
    (*(v19 + 16))(v22, v24, v18);
    _s11WorkoutCore19LowPowerModeMonitorCAC7Combine16ObservableObjectAAWlTm_0(&lazy protocol witness table cache variable for type OpacityTransition and conformance OpacityTransition, MEMORY[0x277CE0068]);
    v41 = AnyTransition.init<A>(_:)();
    (*(v19 + 8))(v24, v18);
    *(v40 + *(v79 + 36)) = v41;
    v42 = &_s7SwiftUI15ModifiedContentVyAA15NavigationStackVyAA0E4PathVAA4ViewPAAE7toolbar7contentQrqd__yXE_tAA07ToolbarD0Rd__lFQOyACyAA14GeometryReaderVyAA06ScrollH0VyACyACyAA6VStackVyAA05TupleH0VyAA6SpacerV_ARyATyACy07WorkoutB0013CountdownIconH0VAA14_PaddingLayoutVG_ACyACyACyACyAA4TextVAA30_EnvironmentKeyWritingModifierVyAA0W9AlignmentOGGA_GA_GAA31AccessibilityAttachmentModifierVGSgA10_SgAA7ForEachVySaySi6offset_SS7elementtGSiACyACyACyACyAiAE11buttonStyleyQrqd__AA20PrimitiveButtonStyleRd__lFQOyAA6ButtonVyACyA2_AA010_FlexFrameV0VGG_AA28BorderedProminentButtonStyleVQo_A4_yAA11ControlSizeOGGA4_yAA13AnyShapeStyleVSgGGAA11_ClipEffectVyAA16RoundedRectangleVGGA_GGSgtGGAVtGGA26_GA26_GGGAA024_SafeAreaRegionsIgnoringV0VG_AA0kD7BuilderV10buildBlockyQrxAaLRzlFZQOy_AA0K4ItemVyytACyA24_yAA18DefaultButtonLabelVGA4_yAA5ColorVSgGGGQo_Qo_GAA06_TraitZ8ModifierVyAA015TransitionTraitY0VGGMd;
    outlined init with copy of _ConditionalContent<ModifiedContent<NavigationStack<NavigationPath, <<opaque return type of View.toolbar<A>(content:)>>.0>, _TraitWritingModifier<TransitionTraitKey>>, ModifiedContent<InSessionView, _TraitWritingModifier<TransitionTraitKey>>>(v40, v81, &_s7SwiftUI15ModifiedContentVyAA15NavigationStackVyAA0E4PathVAA4ViewPAAE7toolbar7contentQrqd__yXE_tAA07ToolbarD0Rd__lFQOyACyAA14GeometryReaderVyAA06ScrollH0VyACyACyAA6VStackVyAA05TupleH0VyAA6SpacerV_ARyATyACy07WorkoutB0013CountdownIconH0VAA14_PaddingLayoutVG_ACyACyACyACyAA4TextVAA30_EnvironmentKeyWritingModifierVyAA0W9AlignmentOGGA_GA_GAA31AccessibilityAttachmentModifierVGSgA10_SgAA7ForEachVySaySi6offset_SS7elementtGSiACyACyACyACyAiAE11buttonStyleyQrqd__AA20PrimitiveButtonStyleRd__lFQOyAA6ButtonVyACyA2_AA010_FlexFrameV0VGG_AA28BorderedProminentButtonStyleVQo_A4_yAA11ControlSizeOGGA4_yAA13AnyShapeStyleVSgGGAA11_ClipEffectVyAA16RoundedRectangleVGGA_GGSgtGGAVtGGA26_GA26_GGGAA024_SafeAreaRegionsIgnoringV0VG_AA0kD7BuilderV10buildBlockyQrxAaLRzlFZQOy_AA0K4ItemVyytACyA24_yAA18DefaultButtonLabelVGA4_yAA5ColorVSgGGGQo_Qo_GAA06_TraitZ8ModifierVyAA015TransitionTraitY0VGGMd);
    swift_storeEnumTagMultiPayload();
    lazy protocol witness table accessor for type ModifiedContent<NavigationStack<NavigationPath, <<opaque return type of View.toolbar<A>(content:)>>.0>, _TraitWritingModifier<TransitionTraitKey>> and conformance <> ModifiedContent<A, B>();
    lazy protocol witness table accessor for type ModifiedContent<InSessionView, _TraitWritingModifier<TransitionTraitKey>> and conformance <> ModifiedContent<A, B>();
    v43 = v83;
    _ConditionalContent<>.init(storage:)();
    outlined init with copy of _ConditionalContent<ModifiedContent<NavigationStack<NavigationPath, <<opaque return type of View.toolbar<A>(content:)>>.0>, _TraitWritingModifier<TransitionTraitKey>>, ModifiedContent<InSessionView, _TraitWritingModifier<TransitionTraitKey>>>(v43, v91, &_s7SwiftUI19_ConditionalContentVyAA08ModifiedD0VyAA15NavigationStackVyAA0F4PathVAA4ViewPAAE7toolbar7contentQrqd__yXE_tAA07ToolbarD0Rd__lFQOyAEyAA14GeometryReaderVyAA06ScrollI0VyAEyAEyAA6VStackVyAA05TupleI0VyAA6SpacerV_ATyAVyAEy07WorkoutB0013CountdownIconI0VAA14_PaddingLayoutVG_AEyAEyAEyAEyAA4TextVAA30_EnvironmentKeyWritingModifierVyAA0X9AlignmentOGGA1_GA1_GAA31AccessibilityAttachmentModifierVGSgA12_SgAA7ForEachVySaySi6offset_SS7elementtGSiAEyAEyAEyAEyAkAE11buttonStyleyQrqd__AA20PrimitiveButtonStyleRd__lFQOyAA6ButtonVyAEyA4_AA010_FlexFrameW0VGG_AA28BorderedProminentButtonStyleVQo_A6_yAA11ControlSizeOGGA6_yAA13AnyShapeStyleVSgGGAA11_ClipEffectVyAA16RoundedRectangleVGGA1_GGSgtGGAXtGGA28_GA28_GGGAA024_SafeAreaRegionsIgnoringW0VG_AA0lD7BuilderV10buildBlockyQrxAaNRzlFZQOy_AA0L4ItemVyytAEyA26_yAA18DefaultButtonLabelVGA6_yAA5ColorVSgGGGQo_Qo_GAA21_TraitWritingModifierVyAA015TransitionTraitZ0VGGAEyAY09InSessionI0VA84_GGMd);
    swift_storeEnumTagMultiPayload();
    lazy protocol witness table accessor for type _ConditionalContent<_ConditionalContent<ModifiedContent<ZStack<TupleView<(ModifiedContent<Color, _SafeAreaIgnoringLayout>, MirroredStartWatchAppView)>>, _TraitWritingModifier<TransitionTraitKey>>, ModifiedContent<<<opaque return type of View.sheet<A>(isPresented:onDismiss:content:)>>.0, _TraitWritingModifier<TransitionTraitKey>>>, _ConditionalContent<ModifiedContent<<<opaque return type of View.sheet<A>(isPresented:onDismiss:content:)>>.0, _TraitWritingModifier<TransitionTraitKey>>, ModifiedContent<ViewControllerWrapper?, _TraitWritingModifier<TransitionTraitKey>>>> and conformance <> _ConditionalContent<A, B>();
    lazy protocol witness table accessor for type _ConditionalContent<ModifiedContent<NavigationStack<NavigationPath, <<opaque return type of View.toolbar<A>(content:)>>.0>, _TraitWritingModifier<TransitionTraitKey>>, ModifiedContent<InSessionView, _TraitWritingModifier<TransitionTraitKey>>> and conformance <> _ConditionalContent<A, B>();
    _ConditionalContent<>.init(storage:)();
    outlined destroy of _ConditionalContent<ModifiedContent<NavigationStack<NavigationPath, <<opaque return type of View.toolbar<A>(content:)>>.0>, _TraitWritingModifier<TransitionTraitKey>>, ModifiedContent<InSessionView, _TraitWritingModifier<TransitionTraitKey>>>(v43, &_s7SwiftUI19_ConditionalContentVyAA08ModifiedD0VyAA15NavigationStackVyAA0F4PathVAA4ViewPAAE7toolbar7contentQrqd__yXE_tAA07ToolbarD0Rd__lFQOyAEyAA14GeometryReaderVyAA06ScrollI0VyAEyAEyAA6VStackVyAA05TupleI0VyAA6SpacerV_ATyAVyAEy07WorkoutB0013CountdownIconI0VAA14_PaddingLayoutVG_AEyAEyAEyAEyAA4TextVAA30_EnvironmentKeyWritingModifierVyAA0X9AlignmentOGGA1_GA1_GAA31AccessibilityAttachmentModifierVGSgA12_SgAA7ForEachVySaySi6offset_SS7elementtGSiAEyAEyAEyAEyAkAE11buttonStyleyQrqd__AA20PrimitiveButtonStyleRd__lFQOyAA6ButtonVyAEyA4_AA010_FlexFrameW0VGG_AA28BorderedProminentButtonStyleVQo_A6_yAA11ControlSizeOGGA6_yAA13AnyShapeStyleVSgGGAA11_ClipEffectVyAA16RoundedRectangleVGGA1_GGSgtGGAXtGGA28_GA28_GGGAA024_SafeAreaRegionsIgnoringW0VG_AA0lD7BuilderV10buildBlockyQrxAaNRzlFZQOy_AA0L4ItemVyytAEyA26_yAA18DefaultButtonLabelVGA6_yAA5ColorVSgGGGQo_Qo_GAA21_TraitWritingModifierVyAA015TransitionTraitZ0VGGAEyAY09InSessionI0VA84_GGMd);
    v32 = v40;
    goto LABEL_11;
  }

  v64 = v71;
  SessionView.inSessionView()(v71);
  OpacityTransition.init()();
  (*(v19 + 16))(v22, v24, v18);
  _s11WorkoutCore19LowPowerModeMonitorCAC7Combine16ObservableObjectAAWlTm_0(&lazy protocol witness table cache variable for type OpacityTransition and conformance OpacityTransition, MEMORY[0x277CE0068]);
  v65 = AnyTransition.init<A>(_:)();
  (*(v19 + 8))(v24, v18);
  v66 = v81;
  *(v64 + *(v82 + 36)) = v65;
  outlined init with copy of ModifiedContent<InSessionView, _TraitWritingModifier<TransitionTraitKey>>(v64, v66, &_s7SwiftUI15ModifiedContentVy07WorkoutB013InSessionViewVAA21_TraitWritingModifierVyAA010TransitionI3KeyVGGMd);
  swift_storeEnumTagMultiPayload();
  lazy protocol witness table accessor for type ModifiedContent<NavigationStack<NavigationPath, <<opaque return type of View.toolbar<A>(content:)>>.0>, _TraitWritingModifier<TransitionTraitKey>> and conformance <> ModifiedContent<A, B>();
  lazy protocol witness table accessor for type ModifiedContent<InSessionView, _TraitWritingModifier<TransitionTraitKey>> and conformance <> ModifiedContent<A, B>();
  v67 = v83;
  _ConditionalContent<>.init(storage:)();
  outlined init with copy of _ConditionalContent<ModifiedContent<NavigationStack<NavigationPath, <<opaque return type of View.toolbar<A>(content:)>>.0>, _TraitWritingModifier<TransitionTraitKey>>, ModifiedContent<InSessionView, _TraitWritingModifier<TransitionTraitKey>>>(v67, v91, &_s7SwiftUI19_ConditionalContentVyAA08ModifiedD0VyAA15NavigationStackVyAA0F4PathVAA4ViewPAAE7toolbar7contentQrqd__yXE_tAA07ToolbarD0Rd__lFQOyAEyAA14GeometryReaderVyAA06ScrollI0VyAEyAEyAA6VStackVyAA05TupleI0VyAA6SpacerV_ATyAVyAEy07WorkoutB0013CountdownIconI0VAA14_PaddingLayoutVG_AEyAEyAEyAEyAA4TextVAA30_EnvironmentKeyWritingModifierVyAA0X9AlignmentOGGA1_GA1_GAA31AccessibilityAttachmentModifierVGSgA12_SgAA7ForEachVySaySi6offset_SS7elementtGSiAEyAEyAEyAEyAkAE11buttonStyleyQrqd__AA20PrimitiveButtonStyleRd__lFQOyAA6ButtonVyAEyA4_AA010_FlexFrameW0VGG_AA28BorderedProminentButtonStyleVQo_A6_yAA11ControlSizeOGGA6_yAA13AnyShapeStyleVSgGGAA11_ClipEffectVyAA16RoundedRectangleVGGA1_GGSgtGGAXtGGA28_GA28_GGGAA024_SafeAreaRegionsIgnoringW0VG_AA0lD7BuilderV10buildBlockyQrxAaNRzlFZQOy_AA0L4ItemVyytAEyA26_yAA18DefaultButtonLabelVGA6_yAA5ColorVSgGGGQo_Qo_GAA21_TraitWritingModifierVyAA015TransitionTraitZ0VGGAEyAY09InSessionI0VA84_GGMd);
  swift_storeEnumTagMultiPayload();
  lazy protocol witness table accessor for type _ConditionalContent<_ConditionalContent<ModifiedContent<ZStack<TupleView<(ModifiedContent<Color, _SafeAreaIgnoringLayout>, MirroredStartWatchAppView)>>, _TraitWritingModifier<TransitionTraitKey>>, ModifiedContent<<<opaque return type of View.sheet<A>(isPresented:onDismiss:content:)>>.0, _TraitWritingModifier<TransitionTraitKey>>>, _ConditionalContent<ModifiedContent<<<opaque return type of View.sheet<A>(isPresented:onDismiss:content:)>>.0, _TraitWritingModifier<TransitionTraitKey>>, ModifiedContent<ViewControllerWrapper?, _TraitWritingModifier<TransitionTraitKey>>>> and conformance <> _ConditionalContent<A, B>();
  lazy protocol witness table accessor for type _ConditionalContent<ModifiedContent<NavigationStack<NavigationPath, <<opaque return type of View.toolbar<A>(content:)>>.0>, _TraitWritingModifier<TransitionTraitKey>>, ModifiedContent<InSessionView, _TraitWritingModifier<TransitionTraitKey>>> and conformance <> _ConditionalContent<A, B>();
  _ConditionalContent<>.init(storage:)();
  outlined destroy of _ConditionalContent<ModifiedContent<NavigationStack<NavigationPath, <<opaque return type of View.toolbar<A>(content:)>>.0>, _TraitWritingModifier<TransitionTraitKey>>, ModifiedContent<InSessionView, _TraitWritingModifier<TransitionTraitKey>>>(v67, &_s7SwiftUI19_ConditionalContentVyAA08ModifiedD0VyAA15NavigationStackVyAA0F4PathVAA4ViewPAAE7toolbar7contentQrqd__yXE_tAA07ToolbarD0Rd__lFQOyAEyAA14GeometryReaderVyAA06ScrollI0VyAEyAEyAA6VStackVyAA05TupleI0VyAA6SpacerV_ATyAVyAEy07WorkoutB0013CountdownIconI0VAA14_PaddingLayoutVG_AEyAEyAEyAEyAA4TextVAA30_EnvironmentKeyWritingModifierVyAA0X9AlignmentOGGA1_GA1_GAA31AccessibilityAttachmentModifierVGSgA12_SgAA7ForEachVySaySi6offset_SS7elementtGSiAEyAEyAEyAEyAkAE11buttonStyleyQrqd__AA20PrimitiveButtonStyleRd__lFQOyAA6ButtonVyAEyA4_AA010_FlexFrameW0VGG_AA28BorderedProminentButtonStyleVQo_A6_yAA11ControlSizeOGGA6_yAA13AnyShapeStyleVSgGGAA11_ClipEffectVyAA16RoundedRectangleVGGA1_GGSgtGGAXtGGA28_GA28_GGGAA024_SafeAreaRegionsIgnoringW0VG_AA0lD7BuilderV10buildBlockyQrxAaNRzlFZQOy_AA0L4ItemVyytAEyA26_yAA18DefaultButtonLabelVGA6_yAA5ColorVSgGGGQo_Qo_GAA21_TraitWritingModifierVyAA015TransitionTraitZ0VGGAEyAY09InSessionI0VA84_GGMd);
  return outlined destroy of ModifiedContent<InSessionView, _TraitWritingModifier<TransitionTraitKey>>(v64, &_s7SwiftUI15ModifiedContentVy07WorkoutB013InSessionViewVAA21_TraitWritingModifierVyAA010TransitionI3KeyVGGMd);
}

uint64_t SessionView.safetyCheckInView()@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v49 = a1;
  v3 = type metadata accessor for SessionView();
  v4 = *(v3 - 8);
  v50 = v3 - 8;
  v5 = *(v4 + 64);
  v6 = MEMORY[0x28223BE20](v3 - 8);
  v52 = v37 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v8 = v37 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI4ViewPAAE5sheet11isPresented9onDismiss7contentQrAA7BindingVySbG_yycSgqd__yctAaBRd__lFQOyAA15ModifiedContentVyAA6ZStackVyAMyAA5ColorVAA23_SafeAreaIgnoringLayoutVGGAA25_AppearanceActionModifierVG_AMyAMy07WorkoutB0027SafetyMonitorMessageComposeC0VAA022_EnvironmentKeyWritingU0VyAQSgGGAA01_op7RegionsqR0VGQo_Md);
  v10 = *(v9 - 8);
  v47 = v9;
  v48 = v10;
  MEMORY[0x28223BE20](v9);
  v53 = v37 - v11;
  v12 = static Alignment.center.getter();
  v14 = v13;
  v15 = static Color.black.getter();
  v45 = v15;
  v16 = static Edge.Set.all.getter();
  v51 = type metadata accessor for SessionView;
  outlined init with copy of SessionControlsSheet(v2, v8, type metadata accessor for SessionView);
  v17 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v18 = swift_allocObject();
  v44 = v18;
  outlined init with take of SessionView(v8, v18 + v17);
  v59 = v12;
  v60 = v14;
  v61 = v15;
  LOBYTE(v62) = v16;
  v63 = partial apply for closure #2 in SessionView.safetyCheckInView();
  v64 = v18;
  v65 = 0;
  v66 = 0;
  v19 = v2 + *(v50 + 52);
  v20 = *v19;
  v21 = *(v19 + 8);
  v57 = v20;
  v58 = v21;
  v46 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI5StateVySbGMd);
  State.projectedValue.getter();
  v37[1] = v54;
  v38 = v56;
  v40 = v2;
  v22 = v51;
  outlined init with copy of SessionControlsSheet(v2, v8, v51);
  v23 = swift_allocObject();
  outlined init with take of SessionView(v8, v23 + v17);
  v24 = v52;
  outlined init with copy of SessionControlsSheet(v2, v52, v22);
  v25 = swift_allocObject();
  outlined init with take of SessionView(v24, v25 + v17);
  v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyAA6ZStackVyACyAA5ColorVAA23_SafeAreaIgnoringLayoutVGGAA25_AppearanceActionModifierVGMd);
  v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyACy07WorkoutB031SafetyMonitorMessageComposeViewVAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGAA30_SafeAreaRegionsIgnoringLayoutVGMd);
  v42 = lazy protocol witness table accessor for type ModifiedContent<ZStack<ModifiedContent<Color, _SafeAreaIgnoringLayout>>, _AppearanceActionModifier> and conformance <> ModifiedContent<A, B>();
  v43 = lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<SafetyMonitorMessageComposeView, _EnvironmentKeyWritingModifier<Color?>>, _SafeAreaRegionsIgnoringLayout> and conformance <> ModifiedContent<A, B>();
  View.sheet<A>(isPresented:onDismiss:content:)();

  v26 = v40;
  v27 = v40 + *(v50 + 56);
  v28 = *v27;
  v29 = *(v27 + 8);
  LOBYTE(v54) = v28;
  v55 = v29;
  State.projectedValue.getter();
  LODWORD(v50) = v61;
  v30 = v51;
  outlined init with copy of SessionControlsSheet(v26, v8, v51);
  v31 = swift_allocObject();
  outlined init with take of SessionView(v8, v31 + v17);
  v32 = v52;
  outlined init with copy of SessionControlsSheet(v26, v52, v30);
  v33 = swift_allocObject();
  outlined init with take of SessionView(v32, v33 + v17);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyACy013SafetyMonitorB031CheckInOnboardingNavigationViewVAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGAA30_SafeAreaRegionsIgnoringLayoutVGMd);
  v59 = v39;
  v60 = v41;
  v61 = v42;
  v62 = v43;
  swift_getOpaqueTypeConformance2();
  lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<CheckInOnboardingNavigationView, _EnvironmentKeyWritingModifier<Color?>>, _SafeAreaRegionsIgnoringLayout> and conformance <> ModifiedContent<A, B>();
  v34 = v47;
  v35 = v53;
  View.sheet<A>(isPresented:onDismiss:content:)();

  return (*(v48 + 8))(v35, v34);
}

uint64_t SessionView.countdownView()@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v49 = a1;
  v3 = type metadata accessor for SessionView();
  v4 = v3 - 8;
  v5 = *(v3 - 8);
  v6 = *(v5 + 64);
  v7 = MEMORY[0x28223BE20](v3);
  v50 = &v35 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v9 = &v35 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI4ViewPAAE5sheet11isPresented9onDismiss7contentQrAA7BindingVySbG_yycSgqd__yctAaBRd__lFQOyAA15ModifiedContentVy07WorkoutB009CountdownC0VAA25_AppearanceActionModifierVG_AMyAMyAN027SafetyMonitorMessageComposeC0VAA022_EnvironmentKeyWritingQ0VyAA5ColorVSgGGAA30_SafeAreaRegionsIgnoringLayoutVGQo_Md);
  v11 = *(v10 - 8);
  v47 = v10;
  v48 = v11;
  MEMORY[0x28223BE20](v10);
  v51 = &v35 - v12;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI8BindableVy07WorkoutB016SessionViewModelCGMd);
  Bindable.wrappedValue.getter();
  v13 = v57;
  v45 = v57;
  outlined init with copy of SessionControlsSheet(v2, v9, type metadata accessor for SessionView);
  v14 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v15 = swift_allocObject();
  v44 = v15;
  outlined init with take of SessionView(v9, v15 + v14);
  v57 = v13;
  v58 = partial apply for closure #1 in SessionView.countdownView();
  v59 = v15;
  v60 = 0;
  v61 = 0;
  v16 = v2 + *(v4 + 52);
  v17 = *v16;
  v18 = *(v16 + 8);
  v55 = v17;
  v56 = v18;
  v46 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI5StateVySbGMd);
  State.projectedValue.getter();
  v35 = v52;
  v36 = v54;
  v38 = v2;
  v42 = v9;
  v39 = type metadata accessor for SessionView;
  outlined init with copy of SessionControlsSheet(v2, v9, type metadata accessor for SessionView);
  v19 = swift_allocObject();
  outlined init with take of SessionView(v9, v19 + v14);
  v20 = v2;
  v21 = v50;
  outlined init with copy of SessionControlsSheet(v20, v50, type metadata accessor for SessionView);
  v22 = swift_allocObject();
  outlined init with take of SessionView(v21, v22 + v14);
  v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVy07WorkoutB013CountdownViewVAA25_AppearanceActionModifierVGMd);
  v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyACy07WorkoutB031SafetyMonitorMessageComposeViewVAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGAA30_SafeAreaRegionsIgnoringLayoutVGMd);
  v41 = lazy protocol witness table accessor for type ModifiedContent<CountdownView, _AppearanceActionModifier> and conformance <> ModifiedContent<A, B>();
  v43 = lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<SafetyMonitorMessageComposeView, _EnvironmentKeyWritingModifier<Color?>>, _SafeAreaRegionsIgnoringLayout> and conformance <> ModifiedContent<A, B>();
  View.sheet<A>(isPresented:onDismiss:content:)();

  v23 = v38;
  v24 = v38 + *(v4 + 56);
  v25 = *v24;
  v26 = *(v24 + 8);
  LOBYTE(v52) = v25;
  v53 = v26;
  State.projectedValue.getter();
  v27 = v42;
  v28 = v39;
  outlined init with copy of SessionControlsSheet(v23, v42, v39);
  v29 = swift_allocObject();
  outlined init with take of SessionView(v27, v29 + v14);
  v30 = v50;
  outlined init with copy of SessionControlsSheet(v23, v50, v28);
  v31 = swift_allocObject();
  outlined init with take of SessionView(v30, v31 + v14);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyACy013SafetyMonitorB031CheckInOnboardingNavigationViewVAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGAA30_SafeAreaRegionsIgnoringLayoutVGMd);
  v57 = v37;
  v58 = v40;
  v59 = v41;
  v60 = v43;
  swift_getOpaqueTypeConformance2();
  lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<CheckInOnboardingNavigationView, _EnvironmentKeyWritingModifier<Color?>>, _SafeAreaRegionsIgnoringLayout> and conformance <> ModifiedContent<A, B>();
  v32 = v47;
  v33 = v51;
  View.sheet<A>(isPresented:onDismiss:content:)();

  return (*(v48 + 8))(v33, v32);
}

void SessionView.summaryView()(uint64_t *a1@<X8>)
{
  v15 = a1;
  v2 = type metadata accessor for MirroredHostSummaryUpdate();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v15 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11WorkoutCore25MirroredHostSummaryUpdateVSgMd);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v15 - v7;
  v9 = type metadata accessor for SessionView();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI8BindableVy07WorkoutB016SessionViewModelCGMd);
  Bindable.wrappedValue.getter();
  v10 = v16;
  swift_getKeyPath();
  v16 = v10;
  _s11WorkoutCore19LowPowerModeMonitorCAC7Combine16ObservableObjectAAWlTm_0(&lazy protocol witness table cache variable for type SessionViewModel and conformance SessionViewModel, type metadata accessor for SessionViewModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v11 = OBJC_IVAR____TtC9WorkoutUI16SessionViewModel__summaryUpdate;
  swift_beginAccess();
  outlined init with copy of ModifiedContent<InSessionView, _TraitWritingModifier<TransitionTraitKey>>(v10 + v11, v8, &_s11WorkoutCore25MirroredHostSummaryUpdateVSgMd);

  if ((*(v3 + 48))(v8, 1, v2))
  {
    outlined destroy of ModifiedContent<InSessionView, _TraitWritingModifier<TransitionTraitKey>>(v8, &_s11WorkoutCore25MirroredHostSummaryUpdateVSgMd);
  }

  else
  {
    (*(v3 + 16))(v5, v8, v2);
    outlined destroy of ModifiedContent<InSessionView, _TraitWritingModifier<TransitionTraitKey>>(v8, &_s11WorkoutCore25MirroredHostSummaryUpdateVSgMd);
    v13 = MirroredHostSummaryUpdate.hkWorkout.getter();
    (*(v3 + 8))(v5, v2);
    if (v13)
    {
      v14 = *(v1 + *(v9 + 52));
      if (v14)
      {

        SessionView.createSummaryDataSource(with:)(v13);
        v12 = v14();

        _sIeg_SgWOe_0(v14);

        goto LABEL_4;
      }
    }
  }

  v12 = 0;
LABEL_4:
  *v15 = v12;
}

uint64_t SessionView.inSessionView()@<X0>(uint64_t *a1@<X8>)
{
  v2 = v1;
  v36 = type metadata accessor for PresentationDetent();
  v4 = *(v36 - 8);
  v5 = MEMORY[0x28223BE20](v36);
  v35 = &v33 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v8 = &v33 - v7;
  v9 = v1[1];
  v10 = v1[2];
  v11 = v1[3];
  type metadata accessor for WorkoutCoreInjector();
  v12 = static WorkoutCoreInjector.shared.getter();
  v34 = dispatch thunk of WorkoutCoreInjector.inject()();

  v13 = type metadata accessor for SessionView();
  outlined init with copy of SessionControls(v2 + *(v13 + 32), v40);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI8BindableVy07WorkoutB016SessionViewModelCGMd);
  Bindable.wrappedValue.getter();
  v33 = v38;
  v14 = (v2 + *(v13 + 40));
  v15 = *v14;
  v16 = v14[1];
  type metadata accessor for SessionControlsState();
  v17 = swift_allocObject();
  *(v17 + 16) = 0;
  ObservationRegistrar.init()();
  v37 = v17;
  State.init(wrappedValue:)();
  v18 = v39;
  a1[14] = v38;
  a1[15] = v18;
  v19 = type metadata accessor for InSessionView();
  v20 = v19[13];
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  *(a1 + v20) = static MetricPlatterAnalytics.shared;
  v21 = a1 + v19[17];
  LOBYTE(v37) = 0;

  State.init(wrappedValue:)();
  v22 = v39;
  *v21 = v38;
  *(v21 + 1) = v22;
  type metadata accessor for LowPowerModeMonitor();
  _s11WorkoutCore19LowPowerModeMonitorCAC7Combine16ObservableObjectAAWlTm_0(&lazy protocol witness table cache variable for type LowPowerModeMonitor and conformance LowPowerModeMonitor, MEMORY[0x277D7E2F8]);

  *a1 = ObservedObject.init(wrappedValue:)();
  a1[1] = v23;
  a1[2] = v10;
  v24 = v10;
  MetricsPublisher.workoutStatePublisher.getter();
  type metadata accessor for WorkoutStatePublisher();
  _s11WorkoutCore19LowPowerModeMonitorCAC7Combine16ObservableObjectAAWlTm_0(&lazy protocol witness table cache variable for type WorkoutStatePublisher and conformance WorkoutStatePublisher, MEMORY[0x277D7DA88]);
  a1[3] = ObservedObject.init(wrappedValue:)();
  a1[4] = v25;
  MetricsPublisher.workoutBuddyStatePublisher.getter();
  type metadata accessor for WorkoutBuddyStatePublisher();
  _s11WorkoutCore19LowPowerModeMonitorCAC7Combine16ObservableObjectAAWlTm_0(&lazy protocol witness table cache variable for type WorkoutBuddyStatePublisher and conformance WorkoutBuddyStatePublisher, MEMORY[0x277D7DBD0]);
  a1[5] = ObservedObject.init(wrappedValue:)();
  a1[6] = v26;
  v27 = v34;
  a1[7] = v11;
  a1[8] = v27;
  outlined init with copy of SessionControls(v40, (a1 + 9));
  type metadata accessor for SessionViewModel();
  _s11WorkoutCore19LowPowerModeMonitorCAC7Combine16ObservableObjectAAWlTm_0(&lazy protocol witness table cache variable for type SessionViewModel and conformance SessionViewModel, type metadata accessor for SessionViewModel);

  v28 = v27;

  Bindable<A>.init(wrappedValue:)();
  type metadata accessor for LowPowerViewModel();
  v29 = swift_allocObject();
  *(v29 + 16) = 0;
  *(v29 + 32) = 0;
  *(v29 + 40) = 0;
  *(v29 + 48) = 1;

  ObservationRegistrar.init()();
  *(v29 + 24) = v9;
  *(a1 + v19[14]) = v29;
  v30 = (a1 + v19[15]);
  *v30 = v15;
  v30[1] = v16;
  static PresentationDetent.height(_:)();
  v31 = v36;
  (*(v4 + 16))(v35, v8, v36);
  State.init(wrappedValue:)();

  (*(v4 + 8))(v8, v31);
  return __swift_destroy_boxed_opaque_existential_1(v40);
}

uint64_t closure #1 in SessionView.connectingView()@<X0>(uint64_t a1@<X8>)
{
  v2 = static Color.black.getter();
  v3 = static Edge.Set.all.getter();
  type metadata accessor for SessionView();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI8BindableVy07WorkoutB016SessionViewModelCGMd);
  Bindable.wrappedValue.getter();
  swift_getKeyPath();
  _s11WorkoutCore19LowPowerModeMonitorCAC7Combine16ObservableObjectAAWlTm_0(&lazy protocol witness table cache variable for type SessionViewModel and conformance SessionViewModel, type metadata accessor for SessionViewModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  swift_beginAccess();
  v4 = *(v6 + 24);

  *a1 = v2;
  *(a1 + 8) = v3;
  *(a1 + 16) = v4;
  return result;
}

void closure #2 in SessionView.safetyCheckInView()(uint64_t a1)
{
  v2 = type metadata accessor for SessionView();
  v10 = *(v2 - 8);
  v3 = *(v10 + 64);
  MEMORY[0x28223BE20](v2 - 8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI8BindableVy07WorkoutB016SessionViewModelCGMd);
  Bindable.wrappedValue.getter();
  swift_getKeyPath();
  _s11WorkoutCore19LowPowerModeMonitorCAC7Combine16ObservableObjectAAWlTm_0(&lazy protocol witness table cache variable for type SessionViewModel and conformance SessionViewModel, type metadata accessor for SessionViewModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v4 = OBJC_IVAR____TtC9WorkoutUI16SessionViewModel__safetyCheckIn;
  swift_beginAccess();
  v5 = *(v12 + v4);

  Bindable.wrappedValue.getter();
  swift_getKeyPath();
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  swift_beginAccess();
  v6 = *(v11 + 24);

  outlined init with copy of SessionControlsSheet(a1, &v9 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for SessionView);
  v7 = (*(v10 + 80) + 16) & ~*(v10 + 80);
  v8 = swift_allocObject();
  outlined init with take of SessionView(&v9 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0), v8 + v7);
  specialized WorkoutSafetyCheckIn.shouldDisplaySafetyCheckIn(for:startSource:startPoolSwim:completion:)(v6, 1uLL, partial apply for closure #1 in closure #2 in SessionView.safetyCheckInView(), v8);
}

uint64_t closure #1 in closure #2 in SessionView.safetyCheckInView()(char a1, uint64_t a2)
{
  v4 = [objc_opt_self() hasUserCompletedOnboarding];
  v5 = type metadata accessor for SessionView();
  if (v4)
  {
    v6 = *(v5 + 44);
  }

  else
  {
    v6 = *(v5 + 48);
  }

  LOBYTE(v10) = *(a2 + v6);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI5StateVySbGMd);
  result = State.wrappedValue.setter();
  if ((a1 & 1) == 0)
  {
    type metadata accessor for SessionView();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI8BindableVy07WorkoutB016SessionViewModelCGMd);
    Bindable.wrappedValue.getter();
    swift_getKeyPath();
    _s11WorkoutCore19LowPowerModeMonitorCAC7Combine16ObservableObjectAAWlTm_0(&lazy protocol witness table cache variable for type SessionViewModel and conformance SessionViewModel, type metadata accessor for SessionViewModel);
    ObservationRegistrar.access<A, B>(_:keyPath:)();

    v8 = (v10 + OBJC_IVAR____TtC9WorkoutUI16SessionViewModel__safetyCheckInViewDismissed);
    swift_beginAccess();
    v9 = *v8;
    outlined copy of (@escaping @callee_guaranteed () -> ())?(*v8);

    if (v9)
    {
      v9(result);
      return _sIeg_SgWOe_0(v9);
    }
  }

  return result;
}

uint64_t closure #3 in SessionView.safetyCheckInView()()
{
  type metadata accessor for SessionView();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI8BindableVy07WorkoutB016SessionViewModelCGMd);
  Bindable.wrappedValue.getter();
  swift_getKeyPath();
  _s11WorkoutCore19LowPowerModeMonitorCAC7Combine16ObservableObjectAAWlTm_0(&lazy protocol witness table cache variable for type SessionViewModel and conformance SessionViewModel, type metadata accessor for SessionViewModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v0 = (v3 + OBJC_IVAR____TtC9WorkoutUI16SessionViewModel__safetyCheckInViewDismissed);
  swift_beginAccess();
  v1 = *v0;
  outlined copy of (@escaping @callee_guaranteed () -> ())?(*v0);

  if (v1)
  {
    v1(result);
    return _sIeg_SgWOe_0(v1);
  }

  return result;
}

uint64_t closure #5 in SessionView.safetyCheckInView()(uint64_t a1)
{
  LOBYTE(v4) = *(a1 + *(type metadata accessor for SessionView() + 44));
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI5StateVySbGMd);
  result = State.wrappedValue.getter();
  if ((v5 & 1) == 0)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI8BindableVy07WorkoutB016SessionViewModelCGMd);
    Bindable.wrappedValue.getter();
    swift_getKeyPath();
    _s11WorkoutCore19LowPowerModeMonitorCAC7Combine16ObservableObjectAAWlTm_0(&lazy protocol witness table cache variable for type SessionViewModel and conformance SessionViewModel, type metadata accessor for SessionViewModel);
    ObservationRegistrar.access<A, B>(_:keyPath:)();

    v2 = (v4 + OBJC_IVAR____TtC9WorkoutUI16SessionViewModel__safetyCheckInViewDismissed);
    swift_beginAccess();
    v3 = *v2;
    outlined copy of (@escaping @callee_guaranteed () -> ())?(*v2);

    if (v3)
    {
      v3(result);
      return _sIeg_SgWOe_0(v3);
    }
  }

  return result;
}

void closure #1 in SessionView.countdownView()(uint64_t a1)
{
  v2 = type metadata accessor for SessionView();
  v14[0] = *(v2 - 8);
  v3 = *(v14[0] + 64);
  MEMORY[0x28223BE20](v2 - 8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI8BindableVy07WorkoutB016SessionViewModelCGMd);
  Bindable.wrappedValue.getter();
  swift_getKeyPath();
  _s11WorkoutCore19LowPowerModeMonitorCAC7Combine16ObservableObjectAAWlTm_0(&lazy protocol witness table cache variable for type SessionViewModel and conformance SessionViewModel, type metadata accessor for SessionViewModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  swift_beginAccess();
  v4 = *(v18 + 32);

  if (v4 != 19)
  {
    Bindable.wrappedValue.getter();
    swift_getKeyPath();
    ObservationRegistrar.access<A, B>(_:keyPath:)();

    swift_beginAccess();
    v7 = *(v17 + 32);

    if (v7 != 5)
    {
      Bindable.wrappedValue.getter();
      swift_getKeyPath();
      ObservationRegistrar.access<A, B>(_:keyPath:)();

      v8 = OBJC_IVAR____TtC9WorkoutUI16SessionViewModel__safetyCheckIn;
      swift_beginAccess();
      v9 = *(v16 + v8);

      Bindable.wrappedValue.getter();
      swift_getKeyPath();
      ObservationRegistrar.access<A, B>(_:keyPath:)();

      swift_beginAccess();
      v10 = *(v15 + 24);

      outlined init with copy of SessionControlsSheet(a1, v14 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for SessionView);
      v11 = (*(v14[0] + 80) + 16) & ~*(v14[0] + 80);
      v12 = swift_allocObject();
      outlined init with take of SessionView(v14 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0), v12 + v11);
      specialized WorkoutSafetyCheckIn.shouldDisplaySafetyCheckIn(for:startSource:startPoolSwim:completion:)(v10, 1uLL, partial apply for closure #1 in closure #1 in SessionView.countdownView(), v12);

      return;
    }

    Bindable.wrappedValue.getter();
    v5 = v16;
    swift_beginAccess();
    if (*(v16 + 16) != 1)
    {
      KeyPath = swift_getKeyPath();
      MEMORY[0x28223BE20](KeyPath);
      v14[-2] = v16;
      LOBYTE(v14[-1]) = 1;
      v15 = v5;
      goto LABEL_9;
    }

LABEL_6:
    *(v5 + 16) = 1;

    return;
  }

  Bindable.wrappedValue.getter();
  v5 = v17;
  swift_beginAccess();
  if (*(v17 + 16) == 1)
  {
    goto LABEL_6;
  }

  v6 = swift_getKeyPath();
  MEMORY[0x28223BE20](v6);
  v14[-2] = v17;
  LOBYTE(v14[-1]) = 1;
  v16 = v5;
LABEL_9:
  ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
}

uint64_t closure #1 in closure #1 in SessionView.countdownView()(unsigned __int8 a1, uint64_t a2)
{
  v4 = [objc_opt_self() hasUserCompletedOnboarding];
  v5 = type metadata accessor for SessionView();
  if (v4)
  {
    v6 = *(v5 + 44);
  }

  else
  {
    v6 = *(v5 + 48);
  }

  LOBYTE(v10) = *(a2 + v6);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI5StateVySbGMd);
  State.wrappedValue.setter();
  type metadata accessor for SessionView();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI8BindableVy07WorkoutB016SessionViewModelCGMd);
  Bindable.wrappedValue.getter();
  v7 = (a1 ^ 1) & 1;
  swift_beginAccess();
  if (v7 == *(v10 + 16))
  {
    *(v10 + 16) = v7;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath);
    _s11WorkoutCore19LowPowerModeMonitorCAC7Combine16ObservableObjectAAWlTm_0(&lazy protocol witness table cache variable for type SessionViewModel and conformance SessionViewModel, type metadata accessor for SessionViewModel);
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
  }
}

uint64_t closure #2 in SessionView.countdownView()()
{
  type metadata accessor for SessionView();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI8BindableVy07WorkoutB016SessionViewModelCGMd);
  Bindable.wrappedValue.getter();
  swift_beginAccess();
  if (*(v2 + 16) == 1)
  {
    *(v2 + 16) = 1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath);
    _s11WorkoutCore19LowPowerModeMonitorCAC7Combine16ObservableObjectAAWlTm_0(&lazy protocol witness table cache variable for type SessionViewModel and conformance SessionViewModel, type metadata accessor for SessionViewModel);
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
  }
}

uint64_t closure #4 in SessionView.safetyCheckInView()@<X0>(uint64_t a1@<X8>)
{
  type metadata accessor for SessionView();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI8BindableVy07WorkoutB016SessionViewModelCGMd);
  Bindable.wrappedValue.getter();
  swift_getKeyPath();
  _s11WorkoutCore19LowPowerModeMonitorCAC7Combine16ObservableObjectAAWlTm_0(&lazy protocol witness table cache variable for type SessionViewModel and conformance SessionViewModel, type metadata accessor for SessionViewModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v2 = OBJC_IVAR____TtC9WorkoutUI16SessionViewModel__safetyMonitorManager;
  swift_beginAccess();
  v3 = *(v12 + v2);

  Bindable.wrappedValue.getter();
  swift_getKeyPath();
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  swift_beginAccess();
  v4 = *(v11 + 24);

  v5 = dispatch thunk of WorkoutConfiguration.activityType.getter();

  v6 = [v5 identifier];
  v7 = static Color.blue.getter();
  KeyPath = swift_getKeyPath();
  v9 = static SafeAreaRegions.all.getter();
  result = static Edge.Set.all.getter();
  *a1 = v3;
  *(a1 + 8) = 9;
  *(a1 + 16) = v6;
  *(a1 + 24) = KeyPath;
  *(a1 + 32) = v7;
  *(a1 + 40) = v9;
  *(a1 + 48) = result;
  return result;
}

uint64_t closure #4 in SessionView.countdownView()(uint64_t a1)
{
  LOBYTE(v4) = *(a1 + *(type metadata accessor for SessionView() + 44));
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI5StateVySbGMd);
  result = State.wrappedValue.getter();
  if ((v3 & 1) == 0)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI8BindableVy07WorkoutB016SessionViewModelCGMd);
    Bindable.wrappedValue.getter();
    swift_beginAccess();
    if (*(v4 + 16) == 1)
    {
      *(v4 + 16) = 1;
    }

    else
    {
      KeyPath = swift_getKeyPath();
      MEMORY[0x28223BE20](KeyPath);
      _s11WorkoutCore19LowPowerModeMonitorCAC7Combine16ObservableObjectAAWlTm_0(&lazy protocol witness table cache variable for type SessionViewModel and conformance SessionViewModel, type metadata accessor for SessionViewModel);
      ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
    }
  }

  return result;
}

uint64_t closure #6 in SessionView.safetyCheckInView()@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for SessionView();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4 - 8);
  outlined init with copy of SessionControlsSheet(a1, &v15 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for SessionView);
  v7 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v8 = swift_allocObject();
  outlined init with take of SessionView(&v15 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), v8 + v7);
  CheckInOnboardingNavigationView.init(onboardingCompletionHandler:)();
  v9 = static Color.blue.getter();
  KeyPath = swift_getKeyPath();
  v11 = (a2 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVy013SafetyMonitorB031CheckInOnboardingNavigationViewVAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGMd) + 36));
  *v11 = KeyPath;
  v11[1] = v9;
  v12 = static SafeAreaRegions.all.getter();
  LOBYTE(KeyPath) = static Edge.Set.all.getter();
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyACy013SafetyMonitorB031CheckInOnboardingNavigationViewVAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGAA30_SafeAreaRegionsIgnoringLayoutVGMd);
  v14 = a2 + *(result + 36);
  *v14 = v12;
  *(v14 + 8) = KeyPath;
  return result;
}

uint64_t closure #1 in closure #6 in SessionView.safetyCheckInView()()
{
  type metadata accessor for SessionView();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI5StateVySbGMd);
  State.wrappedValue.setter();
  return State.wrappedValue.setter();
}

uint64_t SessionView.createSummaryDataSource(with:)(void *a1)
{
  v2 = v1;
  v4 = type metadata accessor for SessionView();
  outlined init with copy of SessionControls(v1 + *(v4 + 32), v22);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s9WorkoutUI15SessionControls_pMd);
  type metadata accessor for WorkoutSessionControls();
  if (swift_dynamicCast())
  {
    v5 = [*(v21 + 16) sessionActivity];
    v6 = NLSessionActivity.coreLiveWorkoutConfiguration.getter();

    v7 = (v2 + *(v4 + 36));
    v8 = *v7;
    v9 = v7[1];
    type metadata accessor for WorkoutSummaryDataSource();
    swift_allocObject();
    v10 = a1;
    outlined copy of (@escaping @callee_guaranteed () -> ())?(v8);
    v11 = WorkoutSummaryDataSource.init(workout:liveWorkoutConfiguration:customDismissalHandler:)(v10, v6, v8, v9);
    v12 = *(v21 + 40);
    if (v12)
    {
      v13 = *(v21 + 16);
      v14 = v12;
      if ([v13 workoutBuddyIsActive])
      {
        WorkoutSummaryDataSource.beginObservingWorkoutVoiceOutroTranscript(with:)(v14);
      }
    }
  }

  else
  {
    v15 = (v1 + *(v4 + 36));
    v16 = *v15;
    v17 = v15[1];
    type metadata accessor for WorkoutSummaryDataSource();
    v11 = swift_allocObject();
    *(v11 + 40) = 0u;
    *(v11 + 56) = 0u;
    *(v11 + 72) = 0;
    v18 = objc_opt_self();
    v19 = a1;
    outlined copy of (@escaping @callee_guaranteed () -> ())?(v16);
    *(v11 + 80) = [v18 weakObjectsHashTable];
    *(v11 + 88) = 0;
    *(v11 + 90) = 0;
    *(v11 + 16) = v19;
    *(v11 + 24) = v16;
    *(v11 + 32) = v17;
  }

  return v11;
}

BOOL SessionView.hasAlertTitle.getter()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11WorkoutCore29MirroredHostAlertStackRequestVSgMd);
  MEMORY[0x28223BE20](v0 - 8);
  v2 = &v11 - v1;
  type metadata accessor for SessionView();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI8BindableVy07WorkoutB016SessionViewModelCGMd);
  Bindable.wrappedValue.getter();
  v3 = v12;
  swift_getKeyPath();
  v12 = v3;
  _s11WorkoutCore19LowPowerModeMonitorCAC7Combine16ObservableObjectAAWlTm_0(&lazy protocol witness table cache variable for type SessionViewModel and conformance SessionViewModel, type metadata accessor for SessionViewModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v4 = OBJC_IVAR____TtC9WorkoutUI16SessionViewModel__alertStackRequest;
  swift_beginAccess();
  outlined init with copy of ModifiedContent<InSessionView, _TraitWritingModifier<TransitionTraitKey>>(v3 + v4, v2, &_s11WorkoutCore29MirroredHostAlertStackRequestVSgMd);

  v5 = type metadata accessor for MirroredHostAlertStackRequest();
  if ((*(*(v5 - 8) + 48))(v2, 1, v5))
  {
    outlined destroy of ModifiedContent<InSessionView, _TraitWritingModifier<TransitionTraitKey>>(v2, &_s11WorkoutCore29MirroredHostAlertStackRequestVSgMd);
    return 0;
  }

  else
  {
    v7 = MirroredHostAlertStackRequest.alertTitle.getter();
    v9 = v8;
    outlined destroy of ModifiedContent<InSessionView, _TraitWritingModifier<TransitionTraitKey>>(v2, &_s11WorkoutCore29MirroredHostAlertStackRequestVSgMd);

    v10 = HIBYTE(v9) & 0xF;
    if ((v9 & 0x2000000000000000) == 0)
    {
      v10 = v7 & 0xFFFFFFFFFFFFLL;
    }

    return v10 != 0;
  }
}

uint64_t closure #1 in SessionView.alertStackView()(uint64_t a1)
{
  v2 = type metadata accessor for SessionView();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2 - 8);
  outlined init with copy of SessionControlsSheet(a1, &v12[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)], type metadata accessor for SessionView);
  v5 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v6 = swift_allocObject();
  outlined init with take of SessionView(&v12[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)], v6 + v5);
  v7 = static SafeAreaRegions.all.getter();
  v8 = static Edge.Set.all.getter();
  v16 = partial apply for closure #1 in closure #1 in SessionView.alertStackView();
  v17 = v6;
  v18 = v7;
  v19 = v8;
  v13 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyAA14GeometryReaderVyAA10ScrollViewVyACyACyAA6VStackVyAA05TupleH0VyAA6SpacerV_AIyAKyACy07WorkoutB0013CountdownIconH0VAA14_PaddingLayoutVG_ACyACyACyACyAA4TextVAA30_EnvironmentKeyWritingModifierVyAA0Q9AlignmentOGGARGARGAA023AccessibilityAttachmentU0VGSgA1_SgAA7ForEachVySaySi6offset_SS7elementtGSiACyACyACyACyAA0H0PAAE11buttonStyleyQrqd__AA20PrimitiveButtonStyleRd__lFQOyAA6ButtonVyACyAuA010_FlexFrameP0VGG_AA28BorderedProminentButtonStyleVQo_AWyAA11ControlSizeOGGAWyAA13AnyShapeStyleVSgGGAA11_ClipEffectVyAA16RoundedRectangleVGGARGGSgtGGAMtGGA19_GA19_GGGAA024_SafeAreaRegionsIgnoringP0VGMd);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI21ToolbarContentBuilderV10buildBlockyQrxAA0cD0RzlFZQOy_AA0C4ItemVyytAA08ModifiedD0VyAA6ButtonVyAA07DefaultJ5LabelVGAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGGQo_Md);
  lazy protocol witness table accessor for type ModifiedContent<GeometryReader<ScrollView<ModifiedContent<ModifiedContent<VStack<TupleView<(Spacer, VStack<TupleView<(ModifiedContent<CountdownIconView, _PaddingLayout>, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Text, _EnvironmentKeyWritingModifier<TextAlignment>>, _PaddingLayout>, _PaddingLayout>, AccessibilityAttachmentModifier>?, ModifiedContent<ModifiedContent<ModifiedContent<Text, _EnvironmentKeyWritingModifier<TextAlignment>>, _PaddingLayout>, _PaddingLayout>?, ForEach<[(offset: Int, element: String)], Int, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<<<opaque return type of View.buttonStyle<A>(_:)>>.0, _EnvironmentKeyWritingModifier<ControlSize>>, _EnvironmentKeyWritingModifier<AnyShapeStyle?>>, _ClipEffect<RoundedRectangle>>, _PaddingLayout>>?)>>, Spacer)>>, _FlexFrameLayout>, _FlexFrameLayout>>>, _SafeAreaRegionsIgnoringLayout> and conformance <> ModifiedContent<A, B>();
  v9 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI11ToolbarItemVyytAA15ModifiedContentVyAA6ButtonVyAA07DefaultG5LabelVGAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGGMd);
  v10 = lazy protocol witness table accessor for type ZStack<_ConditionalContent<_ConditionalContent<_ConditionalContent<ModifiedContent<ZStack<TupleView<(ModifiedContent<Color, _SafeAreaIgnoringLayout>, MirroredStartWatchAppView)>>, _TraitWritingModifier<TransitionTraitKey>>, ModifiedContent<<<opaque return type of View.sheet<A>(isPresented:onDismiss:content:)>>.0, _TraitWritingModifier<TransitionTraitKey>>>, _ConditionalContent<ModifiedContent<<<opaque return type of View.sheet<A>(isPresented:onDismiss:content:)>>.0, _TraitWritingModifier<TransitionTraitKey>>, ModifiedContent<ViewControllerWrapper?, _TraitWritingModifier<TransitionTraitKey>>>>, _ConditionalContent<ModifiedContent<NavigationStack<NavigationPath, <<opaque return type of View.toolbar<A>(content:)>>.0>, _TraitWritingModifier<TransitionTraitKey>>, ModifiedContent<InSessionView, _TraitWritingModifier<TransitionTraitKey>>>>> and conformance ZStack<A>(&lazy protocol witness table cache variable for type ToolbarItem<(), ModifiedContent<Button<DefaultButtonLabel>, _EnvironmentKeyWritingModifier<Color?>>> and conformance ToolbarItem<A, B>, &_s7SwiftUI11ToolbarItemVyytAA15ModifiedContentVyAA6ButtonVyAA07DefaultG5LabelVGAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGGMd);
  v14 = v9;
  v15 = v10;
  swift_getOpaqueTypeConformance2();
  View.toolbar<A>(content:)();
}

uint64_t closure #1 in closure #1 in SessionView.alertStackView()()
{
  static Axis.Set.vertical.getter();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyACyAA6VStackVyAA9TupleViewVyAA6SpacerV_AEyAGyACy07WorkoutB0013CountdownIconG0VAA14_PaddingLayoutVG_ACyACyACyACyAA4TextVAA30_EnvironmentKeyWritingModifierVyAA0N9AlignmentOGGANGANGAA023AccessibilityAttachmentR0VGSgAYSgAA7ForEachVySaySi6offset_SS7elementtGSiACyACyACyACyAA0G0PAAE11buttonStyleyQrqd__AA20PrimitiveButtonStyleRd__lFQOyAA6ButtonVyACyAqA010_FlexFrameM0VGG_AA28BorderedProminentButtonStyleVQo_ASyAA11ControlSizeOGGASyAA13AnyShapeStyleVSgGGAA11_ClipEffectVyAA16RoundedRectangleVGGANGGSgtGGAItGGA15_GA15_GMd);
  lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<VStack<TupleView<(Spacer, VStack<TupleView<(ModifiedContent<CountdownIconView, _PaddingLayout>, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Text, _EnvironmentKeyWritingModifier<TextAlignment>>, _PaddingLayout>, _PaddingLayout>, AccessibilityAttachmentModifier>?, ModifiedContent<ModifiedContent<ModifiedContent<Text, _EnvironmentKeyWritingModifier<TextAlignment>>, _PaddingLayout>, _PaddingLayout>?, ForEach<[(offset: Int, element: String)], Int, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<<<opaque return type of View.buttonStyle<A>(_:)>>.0, _EnvironmentKeyWritingModifier<ControlSize>>, _EnvironmentKeyWritingModifier<AnyShapeStyle?>>, _ClipEffect<RoundedRectangle>>, _PaddingLayout>>?)>>, Spacer)>>, _FlexFrameLayout>, _FlexFrameLayout> and conformance <> ModifiedContent<A, B>();
  return ScrollView.init(_:showsIndicators:content:)();
}

__n128 closure #1 in closure #1 in closure #1 in SessionView.alertStackView()@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v28 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI6VStackVyAA9TupleViewVyAA15ModifiedContentVy07WorkoutB0013CountdownIconE0VAA14_PaddingLayoutVG_AGyAGyAGyAGyAA4TextVAA30_EnvironmentKeyWritingModifierVyAA0M9AlignmentOGGALGALGAA023AccessibilityAttachmentQ0VGSgAWSgAA7ForEachVySaySi6offset_SS7elementtGSiAGyAGyAGyAGyAA0E0PAAE11buttonStyleyQrqd__AA015PrimitiveButtonZ0Rd__lFQOyAA6ButtonVyAGyAoA010_FlexFrameL0VGG_AA023BorderedProminentButtonZ0VQo_AQyAA11ControlSizeOGGAQyAA08AnyShapeZ0VSgGGAA11_ClipEffectVyAA16RoundedRectangleVGGALGGSgtGGMd);
  v4 = MEMORY[0x28223BE20](v3 - 8);
  v6 = &v28 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v8 = &v28 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI6VStackVyAA9TupleViewVyAA6SpacerV_ACyAEyAA15ModifiedContentVy07WorkoutB0013CountdownIconE0VAA14_PaddingLayoutVG_AIyAIyAIyAIyAA4TextVAA30_EnvironmentKeyWritingModifierVyAA0N9AlignmentOGGANGANGAA023AccessibilityAttachmentR0VGSgAYSgAA7ForEachVySaySi6offset_SS7elementtGSiAIyAIyAIyAIyAA0E0PAAE11buttonStyleyQrqd__AA20PrimitiveButtonStyleRd__lFQOyAA6ButtonVyAIyAqA010_FlexFrameM0VGG_AA28BorderedProminentButtonStyleVQo_ASyAA11ControlSizeOGGASyAA13AnyShapeStyleVSgGGAA11_ClipEffectVyAA16RoundedRectangleVGGANGGSgtGGAGtGGMd);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = &v28 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyAA6VStackVyAA9TupleViewVyAA6SpacerV_AEyAGyACy07WorkoutB0013CountdownIconG0VAA14_PaddingLayoutVG_ACyACyACyACyAA4TextVAA30_EnvironmentKeyWritingModifierVyAA0N9AlignmentOGGANGANGAA023AccessibilityAttachmentR0VGSgAYSgAA7ForEachVySaySi6offset_SS7elementtGSiACyACyACyACyAA0G0PAAE11buttonStyleyQrqd__AA20PrimitiveButtonStyleRd__lFQOyAA6ButtonVyACyAqA010_FlexFrameM0VGG_AA28BorderedProminentButtonStyleVQo_ASyAA11ControlSizeOGGASyAA13AnyShapeStyleVSgGGAA11_ClipEffectVyAA16RoundedRectangleVGGANGGSgtGGAItGGA15_GMd);
  MEMORY[0x28223BE20](v12);
  v14 = &v28 - v13;
  *v11 = static HorizontalAlignment.center.getter();
  *(v11 + 1) = 0;
  v11[16] = 0;
  v15 = &v11[*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI13_VariadicViewO4TreeVy_AA13_VStackLayoutVAA05TupleD0VyAA6SpacerV_AA0F0VyAIyAA15ModifiedContentVy07WorkoutB0013CountdownIconD0VAA08_PaddingG0VG_AOyAOyAOyAOyAA4TextVAA30_EnvironmentKeyWritingModifierVyAA0P9AlignmentOGGATGATGAA023AccessibilityAttachmentT0VGSgA3_SgAA7ForEachVySaySi6offset_SS7elementtGSiAOyAOyAOyAOyAA0D0PAAE11buttonStyleyQrqd__AA20PrimitiveButtonStyleRd__lFQOyAA6ButtonVyAOyAwA010_FlexFrameG0VGG_AA28BorderedProminentButtonStyleVQo_AYyAA11ControlSizeOGGAYyAA13AnyShapeStyleVSgGGAA11_ClipEffectVyAA16RoundedRectangleVGGATGGSgtGGAKtGGMd) + 44)];
  *v8 = static HorizontalAlignment.center.getter();
  *(v8 + 1) = 0;
  v8[16] = 0;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI13_VariadicViewO4TreeVy_AA13_VStackLayoutVAA05TupleD0VyAA15ModifiedContentVy07WorkoutB0013CountdownIconD0VAA08_PaddingG0VG_AKyAKyAKyAKyAA4TextVAA30_EnvironmentKeyWritingModifierVyAA0O9AlignmentOGGAPGAPGAA023AccessibilityAttachmentS0VGSgA_SgAA7ForEachVySaySi6offset_SS7elementtGSiAKyAKyAKyAKyAA0D0PAAE11buttonStyleyQrqd__AA20PrimitiveButtonStyleRd__lFQOyAA6ButtonVyAKyAsA010_FlexFrameG0VGG_AA28BorderedProminentButtonStyleVQo_AUyAA11ControlSizeOGGAUyAA13AnyShapeStyleVSgGGAA11_ClipEffectVyAA16RoundedRectangleVGGAPGGSgtGGMd);
  closure #1 in closure #1 in closure #1 in closure #1 in closure #1 in SessionView.alertStackView()(a1, &v8[*(v16 + 44)]);
  outlined init with copy of _ConditionalContent<ModifiedContent<NavigationStack<NavigationPath, <<opaque return type of View.toolbar<A>(content:)>>.0>, _TraitWritingModifier<TransitionTraitKey>>, ModifiedContent<InSessionView, _TraitWritingModifier<TransitionTraitKey>>>(v8, v6, &_s7SwiftUI6VStackVyAA9TupleViewVyAA15ModifiedContentVy07WorkoutB0013CountdownIconE0VAA14_PaddingLayoutVG_AGyAGyAGyAGyAA4TextVAA30_EnvironmentKeyWritingModifierVyAA0M9AlignmentOGGALGALGAA023AccessibilityAttachmentQ0VGSgAWSgAA7ForEachVySaySi6offset_SS7elementtGSiAGyAGyAGyAGyAA0E0PAAE11buttonStyleyQrqd__AA015PrimitiveButtonZ0Rd__lFQOyAA6ButtonVyAGyAoA010_FlexFrameL0VGG_AA023BorderedProminentButtonZ0VQo_AQyAA11ControlSizeOGGAQyAA08AnyShapeZ0VSgGGAA11_ClipEffectVyAA16RoundedRectangleVGGALGGSgtGGMd);
  *v15 = 0;
  v15[8] = 0;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI6SpacerV_AA6VStackVyAA9TupleViewVyAA15ModifiedContentVy07WorkoutB0013CountdownIconF0VAA14_PaddingLayoutVG_AIyAIyAIyAIyAA4TextVAA30_EnvironmentKeyWritingModifierVyAA0N9AlignmentOGGANGANGAA023AccessibilityAttachmentR0VGSgAYSgAA7ForEachVySaySi6offset_SS7elementtGSiAIyAIyAIyAIyAA0F0PAAE11buttonStyleyQrqd__AA20PrimitiveButtonStyleRd__lFQOyAA6ButtonVyAIyAqA010_FlexFrameM0VGG_AA28BorderedProminentButtonStyleVQo_ASyAA11ControlSizeOGGASyAA13AnyShapeStyleVSgGGAA11_ClipEffectVyAA16RoundedRectangleVGGANGGSgtGGACtMd);
  outlined init with copy of _ConditionalContent<ModifiedContent<NavigationStack<NavigationPath, <<opaque return type of View.toolbar<A>(content:)>>.0>, _TraitWritingModifier<TransitionTraitKey>>, ModifiedContent<InSessionView, _TraitWritingModifier<TransitionTraitKey>>>(v6, &v15[*(v17 + 48)], &_s7SwiftUI6VStackVyAA9TupleViewVyAA15ModifiedContentVy07WorkoutB0013CountdownIconE0VAA14_PaddingLayoutVG_AGyAGyAGyAGyAA4TextVAA30_EnvironmentKeyWritingModifierVyAA0M9AlignmentOGGALGALGAA023AccessibilityAttachmentQ0VGSgAWSgAA7ForEachVySaySi6offset_SS7elementtGSiAGyAGyAGyAGyAA0E0PAAE11buttonStyleyQrqd__AA015PrimitiveButtonZ0Rd__lFQOyAA6ButtonVyAGyAoA010_FlexFrameL0VGG_AA023BorderedProminentButtonZ0VQo_AQyAA11ControlSizeOGGAQyAA08AnyShapeZ0VSgGGAA11_ClipEffectVyAA16RoundedRectangleVGGALGGSgtGGMd);
  v18 = &v15[*(v17 + 64)];
  *v18 = 0;
  v18[8] = 0;
  outlined destroy of _ConditionalContent<ModifiedContent<NavigationStack<NavigationPath, <<opaque return type of View.toolbar<A>(content:)>>.0>, _TraitWritingModifier<TransitionTraitKey>>, ModifiedContent<InSessionView, _TraitWritingModifier<TransitionTraitKey>>>(v8, &_s7SwiftUI6VStackVyAA9TupleViewVyAA15ModifiedContentVy07WorkoutB0013CountdownIconE0VAA14_PaddingLayoutVG_AGyAGyAGyAGyAA4TextVAA30_EnvironmentKeyWritingModifierVyAA0M9AlignmentOGGALGALGAA023AccessibilityAttachmentQ0VGSgAWSgAA7ForEachVySaySi6offset_SS7elementtGSiAGyAGyAGyAGyAA0E0PAAE11buttonStyleyQrqd__AA015PrimitiveButtonZ0Rd__lFQOyAA6ButtonVyAGyAoA010_FlexFrameL0VGG_AA023BorderedProminentButtonZ0VQo_AQyAA11ControlSizeOGGAQyAA08AnyShapeZ0VSgGGAA11_ClipEffectVyAA16RoundedRectangleVGGALGGSgtGGMd);
  outlined destroy of _ConditionalContent<ModifiedContent<NavigationStack<NavigationPath, <<opaque return type of View.toolbar<A>(content:)>>.0>, _TraitWritingModifier<TransitionTraitKey>>, ModifiedContent<InSessionView, _TraitWritingModifier<TransitionTraitKey>>>(v6, &_s7SwiftUI6VStackVyAA9TupleViewVyAA15ModifiedContentVy07WorkoutB0013CountdownIconE0VAA14_PaddingLayoutVG_AGyAGyAGyAGyAA4TextVAA30_EnvironmentKeyWritingModifierVyAA0M9AlignmentOGGALGALGAA023AccessibilityAttachmentQ0VGSgAWSgAA7ForEachVySaySi6offset_SS7elementtGSiAGyAGyAGyAGyAA0E0PAAE11buttonStyleyQrqd__AA015PrimitiveButtonZ0Rd__lFQOyAA6ButtonVyAGyAoA010_FlexFrameL0VGG_AA023BorderedProminentButtonZ0VQo_AQyAA11ControlSizeOGGAQyAA08AnyShapeZ0VSgGGAA11_ClipEffectVyAA16RoundedRectangleVGGALGGSgtGGMd);
  GeometryProxy.size.getter();
  static Alignment.center.getter();
  _FlexFrameLayout.init(minWidth:idealWidth:maxWidth:minHeight:idealHeight:maxHeight:alignment:)();
  outlined init with take of VStack<TupleView<(Spacer, VStack<TupleView<(ModifiedContent<CountdownIconView, _PaddingLayout>, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Text, _EnvironmentKeyWritingModifier<TextAlignment>>, _PaddingLayout>, _PaddingLayout>, AccessibilityAttachmentModifier>?, ModifiedContent<ModifiedContent<ModifiedContent<Text, _EnvironmentKeyWritingModifier<TextAlignment>>, _PaddingLayout>, _PaddingLayout>?, ForEach<[(offset: Int, element: String)], Int, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<<<opaque return type of View.buttonStyle<A>(_:)>>.0, _EnvironmentKeyWritingModifier<ControlSize>>, _EnvironmentKeyWritingModifier<AnyShapeStyle?>>, _ClipEffect<RoundedRectangle>>, _PaddingLayout>>?)>>, Spacer)>>(v11, v14, &_s7SwiftUI6VStackVyAA9TupleViewVyAA6SpacerV_ACyAEyAA15ModifiedContentVy07WorkoutB0013CountdownIconE0VAA14_PaddingLayoutVG_AIyAIyAIyAIyAA4TextVAA30_EnvironmentKeyWritingModifierVyAA0N9AlignmentOGGANGANGAA023AccessibilityAttachmentR0VGSgAYSgAA7ForEachVySaySi6offset_SS7elementtGSiAIyAIyAIyAIyAA0E0PAAE11buttonStyleyQrqd__AA20PrimitiveButtonStyleRd__lFQOyAA6ButtonVyAIyAqA010_FlexFrameM0VGG_AA28BorderedProminentButtonStyleVQo_ASyAA11ControlSizeOGGASyAA13AnyShapeStyleVSgGGAA11_ClipEffectVyAA16RoundedRectangleVGGANGGSgtGGAGtGGMd);
  v19 = &v14[*(v12 + 36)];
  v20 = v34;
  *(v19 + 4) = v33;
  *(v19 + 5) = v20;
  *(v19 + 6) = v35;
  v21 = v30;
  *v19 = v29;
  *(v19 + 1) = v21;
  v22 = v32;
  *(v19 + 2) = v31;
  *(v19 + 3) = v22;
  static Alignment.center.getter();
  _FlexFrameLayout.init(minWidth:idealWidth:maxWidth:minHeight:idealHeight:maxHeight:alignment:)();
  v23 = v28;
  outlined init with take of VStack<TupleView<(Spacer, VStack<TupleView<(ModifiedContent<CountdownIconView, _PaddingLayout>, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Text, _EnvironmentKeyWritingModifier<TextAlignment>>, _PaddingLayout>, _PaddingLayout>, AccessibilityAttachmentModifier>?, ModifiedContent<ModifiedContent<ModifiedContent<Text, _EnvironmentKeyWritingModifier<TextAlignment>>, _PaddingLayout>, _PaddingLayout>?, ForEach<[(offset: Int, element: String)], Int, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<<<opaque return type of View.buttonStyle<A>(_:)>>.0, _EnvironmentKeyWritingModifier<ControlSize>>, _EnvironmentKeyWritingModifier<AnyShapeStyle?>>, _ClipEffect<RoundedRectangle>>, _PaddingLayout>>?)>>, Spacer)>>(v14, v28, &_s7SwiftUI15ModifiedContentVyAA6VStackVyAA9TupleViewVyAA6SpacerV_AEyAGyACy07WorkoutB0013CountdownIconG0VAA14_PaddingLayoutVG_ACyACyACyACyAA4TextVAA30_EnvironmentKeyWritingModifierVyAA0N9AlignmentOGGANGANGAA023AccessibilityAttachmentR0VGSgAYSgAA7ForEachVySaySi6offset_SS7elementtGSiACyACyACyACyAA0G0PAAE11buttonStyleyQrqd__AA20PrimitiveButtonStyleRd__lFQOyAA6ButtonVyACyAqA010_FlexFrameM0VGG_AA28BorderedProminentButtonStyleVQo_ASyAA11ControlSizeOGGASyAA13AnyShapeStyleVSgGGAA11_ClipEffectVyAA16RoundedRectangleVGGANGGSgtGGAItGGA15_GMd);
  v24 = v23 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyACyAA6VStackVyAA9TupleViewVyAA6SpacerV_AEyAGyACy07WorkoutB0013CountdownIconG0VAA14_PaddingLayoutVG_ACyACyACyACyAA4TextVAA30_EnvironmentKeyWritingModifierVyAA0N9AlignmentOGGANGANGAA023AccessibilityAttachmentR0VGSgAYSgAA7ForEachVySaySi6offset_SS7elementtGSiACyACyACyACyAA0G0PAAE11buttonStyleyQrqd__AA20PrimitiveButtonStyleRd__lFQOyAA6ButtonVyACyAqA010_FlexFrameM0VGG_AA28BorderedProminentButtonStyleVQo_ASyAA11ControlSizeOGGASyAA13AnyShapeStyleVSgGGAA11_ClipEffectVyAA16RoundedRectangleVGGANGGSgtGGAItGGA15_GA15_GMd) + 36);
  v25 = v41;
  *(v24 + 64) = v40;
  *(v24 + 80) = v25;
  *(v24 + 96) = v42;
  v26 = v37;
  *v24 = v36;
  *(v24 + 16) = v26;
  result = v39;
  *(v24 + 32) = v38;
  *(v24 + 48) = result;
  return result;
}

uint64_t closure #1 in closure #1 in closure #1 in closure #1 in closure #1 in SessionView.alertStackView()@<X0>(uint64_t a1@<X0>, _OWORD *a2@<X8>)
{
  v205 = a2;
  v3 = type metadata accessor for SessionView();
  v4 = v3 - 8;
  v192 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v193 = v5;
  v194 = &v181 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v202 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI7ForEachVySaySi6offset_SS7elementtGSiAA15ModifiedContentVyAHyAHyAHyAA4ViewPAAE11buttonStyleyQrqd__AA015PrimitiveButtonK0Rd__lFQOyAA0M0VyAHyAA4TextVAA16_FlexFrameLayoutVGG_AA017BorderedProminentmK0VQo_AA30_EnvironmentKeyWritingModifierVyAA11ControlSizeOGGAYyAA08AnyShapeK0VSgGGAA11_ClipEffectVyAA16RoundedRectangleVGGAA08_PaddingQ0VGGMd);
  v200 = *(v202 - 8);
  MEMORY[0x28223BE20](v202);
  v195 = &v181 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI7ForEachVySaySi6offset_SS7elementtGSiAA15ModifiedContentVyAHyAHyAHyAA4ViewPAAE11buttonStyleyQrqd__AA015PrimitiveButtonK0Rd__lFQOyAA0M0VyAHyAA4TextVAA16_FlexFrameLayoutVGG_AA017BorderedProminentmK0VQo_AA30_EnvironmentKeyWritingModifierVyAA11ControlSizeOGGAYyAA08AnyShapeK0VSgGGAA11_ClipEffectVyAA16RoundedRectangleVGGAA08_PaddingQ0VGGSgMd);
  v8 = MEMORY[0x28223BE20](v7 - 8);
  v204 = &v181 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v203 = &v181 - v10;
  v11 = type metadata accessor for AccessibilityTraits();
  v190 = *(v11 - 8);
  v191 = v11;
  MEMORY[0x28223BE20](v11);
  v188 = &v181 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyACyACyACyAA4TextVAA30_EnvironmentKeyWritingModifierVyAA0E9AlignmentOGGAA14_PaddingLayoutVGAMGAA023AccessibilityAttachmentI0VGMd);
  v196 = *(v13 - 8);
  v197 = v13;
  MEMORY[0x28223BE20](v13);
  v189 = &v181 - v14;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11WorkoutCore29MirroredHostAlertStackRequestVSgMd);
  v16 = MEMORY[0x28223BE20](v15 - 8);
  v199 = &v181 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = MEMORY[0x28223BE20](v16);
  v198 = &v181 - v19;
  MEMORY[0x28223BE20](v18);
  v21 = &v181 - v20;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyACyACyACyAA4TextVAA30_EnvironmentKeyWritingModifierVyAA0E9AlignmentOGGAA14_PaddingLayoutVGAMGAA023AccessibilityAttachmentI0VGSgMd);
  v23 = MEMORY[0x28223BE20](v22 - 8);
  v214 = &v181 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v23);
  v215 = &v181 - v25;
  v26 = *(v4 + 36);
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI8BindableVy07WorkoutB016SessionViewModelCGMd);
  Bindable.wrappedValue.getter();
  v28 = v252;
  swift_getKeyPath();
  *&v252 = v28;
  v29 = _s11WorkoutCore19LowPowerModeMonitorCAC7Combine16ObservableObjectAAWlTm_0(&lazy protocol witness table cache variable for type SessionViewModel and conformance SessionViewModel, type metadata accessor for SessionViewModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  swift_beginAccess();
  v30 = *(v28 + 24);

  v213 = dispatch thunk of WorkoutConfiguration.activityType.getter();
  v31 = objc_opt_self();
  v201 = v30;
  v32 = [v31 currentDevice];
  v33 = specialized UIDevice.screenType.getter();

  v34 = qword_20CB5F808[v33];
  v35 = [v31 currentDevice];
  LOBYTE(v31) = specialized UIDevice.screenType.getter();

  v36 = qword_20CB5F860[v31];
  v212 = static Edge.Set.bottom.getter();
  SessionView.hasAlertTitle.getter();
  EdgeInsets.init(_all:)();
  v38 = v37;
  v40 = v39;
  v42 = v41;
  v44 = v43;
  v263 = 0;
  v208 = v26;
  v209 = a1;
  v207 = v27;
  Bindable.wrappedValue.getter();
  v45 = v252;
  swift_getKeyPath();
  *&v252 = v45;
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v46 = OBJC_IVAR____TtC9WorkoutUI16SessionViewModel__alertStackRequest;
  swift_beginAccess();
  outlined init with copy of ModifiedContent<InSessionView, _TraitWritingModifier<TransitionTraitKey>>(v45 + v46, v21, &_s11WorkoutCore29MirroredHostAlertStackRequestVSgMd);

  v47 = type metadata accessor for MirroredHostAlertStackRequest();
  v48 = *(v47 - 8);
  v49 = *(v48 + 48);
  v210 = v48 + 48;
  v211 = v49;
  v50 = v49(v21, 1, v47);
  v206 = v47;
  if (v50)
  {
    outlined destroy of ModifiedContent<InSessionView, _TraitWritingModifier<TransitionTraitKey>>(v21, &_s11WorkoutCore29MirroredHostAlertStackRequestVSgMd);
LABEL_3:
    (*(v196 + 56))(v215, 1, 1, v197);
    v51 = v209;
    goto LABEL_12;
  }

  v52 = MirroredHostAlertStackRequest.alertTitle.getter();
  v54 = v53;
  outlined destroy of ModifiedContent<InSessionView, _TraitWritingModifier<TransitionTraitKey>>(v21, &_s11WorkoutCore29MirroredHostAlertStackRequestVSgMd);
  v55 = HIBYTE(v54) & 0xF;
  if ((v54 & 0x2000000000000000) == 0)
  {
    v55 = v52 & 0xFFFFFFFFFFFFLL;
  }

  if (!v55)
  {

    goto LABEL_3;
  }

  v185 = v29;
  v186 = v44;
  v187 = v38;
  *&v252 = v52;
  *(&v252 + 1) = v54;
  lazy protocol witness table accessor for type String and conformance String();
  v56 = Text.init<A>(_:)();
  v58 = v57;
  v60 = v59;
  LODWORD(v252) = static HierarchicalShapeStyle.primary.getter();
  v61 = Text.foregroundStyle<A>(_:)();
  v63 = v62;
  v65 = v64;
  outlined consume of Text.Storage(v56, v58, v60 & 1);

  static Font.title2.getter();
  v66 = Text.font(_:)();
  v68 = v67;
  v70 = v69;

  outlined consume of Text.Storage(v61, v63, v65 & 1);

  static Font.Weight.bold.getter();
  v71 = Text.fontWeight(_:)();
  v183 = v72;
  v184 = v71;
  v74 = v73;
  v182 = v75;
  outlined consume of Text.Storage(v66, v68, v70 & 1);

  KeyPath = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy7SwiftUI4EdgeO3SetVGMd);
  v77 = swift_allocObject();
  *(v77 + 16) = xmmword_20CB5DA80;
  LOBYTE(v68) = static Edge.Set.leading.getter();
  *(v77 + 32) = v68;
  v78 = static Edge.Set.trailing.getter();
  *(v77 + 33) = v78;
  v79 = Edge.Set.init(rawValue:)();
  Edge.Set.init(rawValue:)();
  if (Edge.Set.init(rawValue:)() != v68)
  {
    v79 = Edge.Set.init(rawValue:)();
  }

  v80 = v42;
  v81 = v36;

  Edge.Set.init(rawValue:)();
  v82 = Edge.Set.init(rawValue:)();
  v51 = v209;
  v83 = v188;
  v84 = v40;
  v85 = v34;
  if (v82 != v78)
  {
    v79 = Edge.Set.init(rawValue:)();
  }

  v47 = v206;
  EdgeInsets.init(_all:)();
  v87 = v86;
  v89 = v88;
  v91 = v90;
  v93 = v92;
  v94 = v74 & 1;
  LOBYTE(v216) = v94;
  LOBYTE(v239[0]) = 0;
  v95 = static Edge.Set.bottom.getter();
  EdgeInsets.init(_all:)();
  LOBYTE(v229[0]) = 0;
  *&v231 = v184;
  *(&v231 + 1) = v183;
  LOBYTE(v232) = v94;
  *(&v232 + 1) = v182;
  *&v233 = KeyPath;
  BYTE8(v233) = 1;
  LOBYTE(v234) = v79;
  *(&v234 + 1) = v87;
  *&v235 = v89;
  *(&v235 + 1) = v91;
  *&v236 = v93;
  BYTE8(v236) = 0;
  LOBYTE(v237) = v95;
  *(&v237 + 1) = v96;
  *&v238[0] = v97;
  *(&v238[0] + 1) = v98;
  *&v238[1] = v99;
  BYTE8(v238[1]) = 0;
  static AccessibilityTraits.isHeader.getter();
  v100 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyACyACyAA4TextVAA30_EnvironmentKeyWritingModifierVyAA0E9AlignmentOGGAA14_PaddingLayoutVGAMGMd);
  v101 = lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<ModifiedContent<Text, _EnvironmentKeyWritingModifier<TextAlignment>>, _PaddingLayout>, _PaddingLayout> and conformance <> ModifiedContent<A, B>();
  v102 = v189;
  MEMORY[0x20F30A9C0](v83, v100, v101);
  (*(v190 + 8))(v83, v191);
  v257 = v236;
  v258 = v237;
  v259[0] = v238[0];
  *(v259 + 9) = *(v238 + 9);
  v254 = v233;
  v255 = v234;
  v256 = v235;
  v252 = v231;
  v253 = v232;
  outlined destroy of ModifiedContent<InSessionView, _TraitWritingModifier<TransitionTraitKey>>(&v252, &_s7SwiftUI15ModifiedContentVyACyACyAA4TextVAA30_EnvironmentKeyWritingModifierVyAA0E9AlignmentOGGAA14_PaddingLayoutVGAMGMd);
  v103 = v215;
  outlined init with take of ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Text, _EnvironmentKeyWritingModifier<TextAlignment>>, _PaddingLayout>, _PaddingLayout>, AccessibilityAttachmentModifier>(v102, v215);
  (*(v196 + 56))(v103, 0, 1, v197);
  v34 = v85;
  v36 = v81;
  v40 = v84;
  v42 = v80;
  v44 = v186;
  v38 = v187;
  v29 = v185;
LABEL_12:
  Bindable.wrappedValue.getter();
  v104 = v252;
  swift_getKeyPath();
  *&v252 = v104;
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v105 = OBJC_IVAR____TtC9WorkoutUI16SessionViewModel__alertStackRequest;
  swift_beginAccess();
  v106 = v198;
  outlined init with copy of ModifiedContent<InSessionView, _TraitWritingModifier<TransitionTraitKey>>(v104 + v105, v198, &_s11WorkoutCore29MirroredHostAlertStackRequestVSgMd);

  if (v211(v106, 1, v47))
  {
    outlined destroy of ModifiedContent<InSessionView, _TraitWritingModifier<TransitionTraitKey>>(v106, &_s11WorkoutCore29MirroredHostAlertStackRequestVSgMd);
LABEL_14:
    _s7SwiftUI15ModifiedContentVyACyACyAA4TextVAA30_EnvironmentKeyWritingModifierVyAA0E9AlignmentOGGAA14_PaddingLayoutVGAMGSgWOi0_(&v252);
    goto LABEL_23;
  }

  v107 = MirroredHostAlertStackRequest.alertMessage.getter();
  v109 = v108;
  outlined destroy of ModifiedContent<InSessionView, _TraitWritingModifier<TransitionTraitKey>>(v106, &_s11WorkoutCore29MirroredHostAlertStackRequestVSgMd);
  v110 = HIBYTE(v109) & 0xF;
  if ((v109 & 0x2000000000000000) == 0)
  {
    v110 = v107 & 0xFFFFFFFFFFFFLL;
  }

  if (!v110)
  {

    goto LABEL_14;
  }

  v185 = v29;
  v186 = v44;
  v187 = v38;
  *&v252 = v107;
  *(&v252 + 1) = v109;
  lazy protocol witness table accessor for type String and conformance String();
  v111 = Text.init<A>(_:)();
  v113 = v112;
  v115 = v114;
  LODWORD(v252) = static HierarchicalShapeStyle.secondary.getter();
  v116 = Text.foregroundStyle<A>(_:)();
  v118 = v117;
  v120 = v119;
  outlined consume of Text.Storage(v111, v113, v115 & 1);

  static Font.body.getter();
  v121 = Text.font(_:)();
  v123 = v122;
  v125 = v124;
  v198 = v126;

  outlined consume of Text.Storage(v116, v118, v120 & 1);

  v197 = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy7SwiftUI4EdgeO3SetVGMd);
  v127 = swift_allocObject();
  *(v127 + 16) = xmmword_20CB5DA80;
  LOBYTE(v111) = static Edge.Set.leading.getter();
  *(v127 + 32) = v111;
  v128 = static Edge.Set.trailing.getter();
  *(v127 + 33) = v128;
  v129 = Edge.Set.init(rawValue:)();
  Edge.Set.init(rawValue:)();
  if (Edge.Set.init(rawValue:)() != v111)
  {
    v129 = Edge.Set.init(rawValue:)();
  }

  v130 = v42;
  v131 = v36;

  Edge.Set.init(rawValue:)();
  v132 = v40;
  v133 = v34;
  if (Edge.Set.init(rawValue:)() != v128)
  {
    v129 = Edge.Set.init(rawValue:)();
  }

  v51 = v209;
  EdgeInsets.init(_all:)();
  v135 = v134;
  v137 = v136;
  v139 = v138;
  v141 = v140;
  v142 = v125 & 1;
  LOBYTE(v216) = v142;
  LOBYTE(v239[0]) = 0;
  v143 = static Edge.Set.bottom.getter();
  EdgeInsets.init(_all:)();
  LOBYTE(v229[0]) = 0;
  *&v231 = v121;
  *(&v231 + 1) = v123;
  LOBYTE(v232) = v142;
  *(&v232 + 1) = v198;
  *&v233 = v197;
  BYTE8(v233) = 1;
  LOBYTE(v234) = v129;
  *(&v234 + 1) = v135;
  *&v235 = v137;
  *(&v235 + 1) = v139;
  *&v236 = v141;
  BYTE8(v236) = 0;
  LOBYTE(v237) = v143;
  *(&v237 + 1) = v144;
  *&v238[0] = v145;
  *(&v238[0] + 1) = v146;
  *&v238[1] = v147;
  BYTE8(v238[1]) = 0;
  _s7SwiftUI15ModifiedContentVyACyACyAA4TextVAA30_EnvironmentKeyWritingModifierVyAA0E9AlignmentOGGAA14_PaddingLayoutVGAMGSgWOi_(&v231);
  v258 = v237;
  v259[0] = v238[0];
  *(v259 + 9) = *(v238 + 9);
  v254 = v233;
  v255 = v234;
  v256 = v235;
  v257 = v236;
  v252 = v231;
  v253 = v232;
  v34 = v133;
  v36 = v131;
  v40 = v132;
  v42 = v130;
  v44 = v186;
  v38 = v187;
LABEL_23:
  Bindable.wrappedValue.getter();
  v148 = v231;
  swift_getKeyPath();
  *&v231 = v148;
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v149 = OBJC_IVAR____TtC9WorkoutUI16SessionViewModel__alertStackRequest;
  swift_beginAccess();
  v150 = v199;
  outlined init with copy of ModifiedContent<InSessionView, _TraitWritingModifier<TransitionTraitKey>>(v148 + v149, v199, &_s11WorkoutCore29MirroredHostAlertStackRequestVSgMd);

  if (v211(v150, 1, v206))
  {
    outlined destroy of ModifiedContent<InSessionView, _TraitWritingModifier<TransitionTraitKey>>(v150, &_s11WorkoutCore29MirroredHostAlertStackRequestVSgMd);
    v151 = 1;
    v152 = v202;
    v153 = v203;
    v154 = v200;
  }

  else
  {
    v155 = MirroredHostAlertStackRequest.continueOptionTitles.getter();
    outlined destroy of ModifiedContent<InSessionView, _TraitWritingModifier<TransitionTraitKey>>(v150, &_s11WorkoutCore29MirroredHostAlertStackRequestVSgMd);
    v156 = specialized _copySequenceToContiguousArray<A>(_:)(v155);

    *&v231 = v156;
    swift_getKeyPath();
    v157 = v51;
    v158 = v194;
    outlined init with copy of SessionControlsSheet(v157, v194, type metadata accessor for SessionView);
    v159 = (*(v192 + 80) + 16) & ~*(v192 + 80);
    v160 = swift_allocObject();
    outlined init with take of SessionView(v158, v160 + v159);
    v161 = swift_allocObject();
    *(v161 + 16) = partial apply for closure #1 in closure #1 in closure #1 in closure #1 in closure #1 in closure #1 in SessionView.alertStackView();
    *(v161 + 24) = v160;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySi6offset_SS7elementtGMd);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyACyACyACyAA4ViewPAAE11buttonStyleyQrqd__AA015PrimitiveButtonG0Rd__lFQOyAA0I0VyACyAA4TextVAA16_FlexFrameLayoutVGG_AA017BorderedProminentiG0VQo_AA30_EnvironmentKeyWritingModifierVyAA11ControlSizeOGGATyAA08AnyShapeG0VSgGGAA11_ClipEffectVyAA16RoundedRectangleVGGAA08_PaddingM0VGMd);
    v153 = v203;
    lazy protocol witness table accessor for type ZStack<_ConditionalContent<_ConditionalContent<_ConditionalContent<ModifiedContent<ZStack<TupleView<(ModifiedContent<Color, _SafeAreaIgnoringLayout>, MirroredStartWatchAppView)>>, _TraitWritingModifier<TransitionTraitKey>>, ModifiedContent<<<opaque return type of View.sheet<A>(isPresented:onDismiss:content:)>>.0, _TraitWritingModifier<TransitionTraitKey>>>, _ConditionalContent<ModifiedContent<<<opaque return type of View.sheet<A>(isPresented:onDismiss:content:)>>.0, _TraitWritingModifier<TransitionTraitKey>>, ModifiedContent<ViewControllerWrapper?, _TraitWritingModifier<TransitionTraitKey>>>>, _ConditionalContent<ModifiedContent<NavigationStack<NavigationPath, <<opaque return type of View.toolbar<A>(content:)>>.0>, _TraitWritingModifier<TransitionTraitKey>>, ModifiedContent<InSessionView, _TraitWritingModifier<TransitionTraitKey>>>>> and conformance ZStack<A>(&lazy protocol witness table cache variable for type [(offset: Int, element: String)] and conformance [A], &_sSaySi6offset_SS7elementtGMd);
    lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<<<opaque return type of View.buttonStyle<A>(_:)>>.0, _EnvironmentKeyWritingModifier<ControlSize>>, _EnvironmentKeyWritingModifier<AnyShapeStyle?>>, _ClipEffect<RoundedRectangle>>, _PaddingLayout> and conformance <> ModifiedContent<A, B>();
    v162 = v195;
    ForEach<>.init(_:id:content:)();
    v154 = v200;
    v152 = v202;
    (*(v200 + 32))(v153, v162, v202);
    v151 = 0;
  }

  (*(v154 + 56))(v153, v151, 1, v152);
  v163 = v214;
  outlined init with copy of ModifiedContent<InSessionView, _TraitWritingModifier<TransitionTraitKey>>(v215, v214, &_s7SwiftUI15ModifiedContentVyACyACyACyAA4TextVAA30_EnvironmentKeyWritingModifierVyAA0E9AlignmentOGGAA14_PaddingLayoutVGAMGAA023AccessibilityAttachmentI0VGSgMd);
  v222 = v258;
  v223[0] = v259[0];
  *(v223 + 9) = *(v259 + 9);
  v218 = v254;
  v219 = v255;
  v220 = v256;
  v221 = v257;
  v216 = v252;
  v217 = v253;
  v164 = v204;
  outlined init with copy of _ConditionalContent<ModifiedContent<NavigationStack<NavigationPath, <<opaque return type of View.toolbar<A>(content:)>>.0>, _TraitWritingModifier<TransitionTraitKey>>, ModifiedContent<InSessionView, _TraitWritingModifier<TransitionTraitKey>>>(v153, v204, &_s7SwiftUI7ForEachVySaySi6offset_SS7elementtGSiAA15ModifiedContentVyAHyAHyAHyAA4ViewPAAE11buttonStyleyQrqd__AA015PrimitiveButtonK0Rd__lFQOyAA0M0VyAHyAA4TextVAA16_FlexFrameLayoutVGG_AA017BorderedProminentmK0VQo_AA30_EnvironmentKeyWritingModifierVyAA11ControlSizeOGGAYyAA08AnyShapeK0VSgGGAA11_ClipEffectVyAA16RoundedRectangleVGGAA08_PaddingQ0VGGSgMd);
  v165 = v201;
  *&v224 = v213;
  *(&v224 + 1) = v201;
  *&v225 = 0;
  WORD4(v225) = 256;
  HIWORD(v225) = v262;
  *(&v225 + 10) = v261;
  *&v226 = v34;
  *(&v226 + 1) = v36;
  LOBYTE(v227) = v212;
  *(&v227 + 1) = *v260;
  DWORD1(v227) = *&v260[3];
  *(&v227 + 1) = v38;
  *&v228[0] = v40;
  *(&v228[0] + 1) = v42;
  *&v228[1] = v44;
  BYTE8(v228[1]) = 0;
  v166 = v225;
  v167 = v205;
  *v205 = v224;
  v167[1] = v166;
  v168 = v226;
  v169 = v227;
  v170 = v228[0];
  *(v167 + 73) = *(v228 + 9);
  v167[3] = v169;
  v167[4] = v170;
  v167[2] = v168;
  v171 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVy07WorkoutB017CountdownIconViewVAA14_PaddingLayoutVG_ACyACyACyACyAA4TextVAA30_EnvironmentKeyWritingModifierVyAA0K9AlignmentOGGAHGAHGAA023AccessibilityAttachmentO0VGSgASSgAA7ForEachVySaySi6offset_SS7elementtGSiACyACyACyACyAA0H0PAAE11buttonStyleyQrqd__AA015PrimitiveButtonX0Rd__lFQOyAA0Z0VyACyAkA010_FlexFrameJ0VGG_AA017BorderedProminentzX0VQo_AMyAA11ControlSizeOGGAMyAA08AnyShapeX0VSgGGAA11_ClipEffectVyAA16RoundedRectangleVGGAHGGSgtMd);
  outlined init with copy of ModifiedContent<InSessionView, _TraitWritingModifier<TransitionTraitKey>>(v163, v167 + v171[12], &_s7SwiftUI15ModifiedContentVyACyACyACyAA4TextVAA30_EnvironmentKeyWritingModifierVyAA0E9AlignmentOGGAA14_PaddingLayoutVGAMGAA023AccessibilityAttachmentI0VGSgMd);
  v172 = (v167 + v171[16]);
  v229[5] = v221;
  v229[6] = v222;
  v230[0] = v223[0];
  *(v230 + 9) = *(v223 + 9);
  v173 = v221;
  v174 = v220;
  v229[3] = v219;
  v229[4] = v220;
  v175 = v219;
  v229[2] = v218;
  v176 = v218;
  v177 = v217;
  v178 = v216;
  v229[0] = v216;
  v229[1] = v217;
  v179 = v223[0];
  v172[6] = v222;
  v172[7] = v179;
  *(v172 + 121) = *(v223 + 9);
  v172[2] = v176;
  v172[3] = v175;
  v172[4] = v174;
  v172[5] = v173;
  *v172 = v178;
  v172[1] = v177;
  outlined init with copy of _ConditionalContent<ModifiedContent<NavigationStack<NavigationPath, <<opaque return type of View.toolbar<A>(content:)>>.0>, _TraitWritingModifier<TransitionTraitKey>>, ModifiedContent<InSessionView, _TraitWritingModifier<TransitionTraitKey>>>(v164, v167 + v171[20], &_s7SwiftUI7ForEachVySaySi6offset_SS7elementtGSiAA15ModifiedContentVyAHyAHyAHyAA4ViewPAAE11buttonStyleyQrqd__AA015PrimitiveButtonK0Rd__lFQOyAA0M0VyAHyAA4TextVAA16_FlexFrameLayoutVGG_AA017BorderedProminentmK0VQo_AA30_EnvironmentKeyWritingModifierVyAA11ControlSizeOGGAYyAA08AnyShapeK0VSgGGAA11_ClipEffectVyAA16RoundedRectangleVGGAA08_PaddingQ0VGGSgMd);
  outlined init with copy of ModifiedContent<InSessionView, _TraitWritingModifier<TransitionTraitKey>>(&v224, &v231, &_s7SwiftUI15ModifiedContentVy07WorkoutB017CountdownIconViewVAA14_PaddingLayoutVGMd);
  outlined init with copy of ModifiedContent<InSessionView, _TraitWritingModifier<TransitionTraitKey>>(v229, &v231, &_s7SwiftUI15ModifiedContentVyACyACyAA4TextVAA30_EnvironmentKeyWritingModifierVyAA0E9AlignmentOGGAA14_PaddingLayoutVGAMGSgMd);

  outlined destroy of _ConditionalContent<ModifiedContent<NavigationStack<NavigationPath, <<opaque return type of View.toolbar<A>(content:)>>.0>, _TraitWritingModifier<TransitionTraitKey>>, ModifiedContent<InSessionView, _TraitWritingModifier<TransitionTraitKey>>>(v153, &_s7SwiftUI7ForEachVySaySi6offset_SS7elementtGSiAA15ModifiedContentVyAHyAHyAHyAA4ViewPAAE11buttonStyleyQrqd__AA015PrimitiveButtonK0Rd__lFQOyAA0M0VyAHyAA4TextVAA16_FlexFrameLayoutVGG_AA017BorderedProminentmK0VQo_AA30_EnvironmentKeyWritingModifierVyAA11ControlSizeOGGAYyAA08AnyShapeK0VSgGGAA11_ClipEffectVyAA16RoundedRectangleVGGAA08_PaddingQ0VGGSgMd);
  outlined destroy of ModifiedContent<InSessionView, _TraitWritingModifier<TransitionTraitKey>>(v215, &_s7SwiftUI15ModifiedContentVyACyACyACyAA4TextVAA30_EnvironmentKeyWritingModifierVyAA0E9AlignmentOGGAA14_PaddingLayoutVGAMGAA023AccessibilityAttachmentI0VGSgMd);
  outlined destroy of _ConditionalContent<ModifiedContent<NavigationStack<NavigationPath, <<opaque return type of View.toolbar<A>(content:)>>.0>, _TraitWritingModifier<TransitionTraitKey>>, ModifiedContent<InSessionView, _TraitWritingModifier<TransitionTraitKey>>>(v164, &_s7SwiftUI7ForEachVySaySi6offset_SS7elementtGSiAA15ModifiedContentVyAHyAHyAHyAA4ViewPAAE11buttonStyleyQrqd__AA015PrimitiveButtonK0Rd__lFQOyAA0M0VyAHyAA4TextVAA16_FlexFrameLayoutVGG_AA017BorderedProminentmK0VQo_AA30_EnvironmentKeyWritingModifierVyAA11ControlSizeOGGAYyAA08AnyShapeK0VSgGGAA11_ClipEffectVyAA16RoundedRectangleVGGAA08_PaddingQ0VGGSgMd);
  v237 = v222;
  v238[0] = v223[0];
  *(v238 + 9) = *(v223 + 9);
  v233 = v218;
  v234 = v219;
  v235 = v220;
  v236 = v221;
  v231 = v216;
  v232 = v217;
  outlined destroy of ModifiedContent<InSessionView, _TraitWritingModifier<TransitionTraitKey>>(&v231, &_s7SwiftUI15ModifiedContentVyACyACyAA4TextVAA30_EnvironmentKeyWritingModifierVyAA0E9AlignmentOGGAA14_PaddingLayoutVGAMGSgMd);
  outlined destroy of ModifiedContent<InSessionView, _TraitWritingModifier<TransitionTraitKey>>(v214, &_s7SwiftUI15ModifiedContentVyACyACyACyAA4TextVAA30_EnvironmentKeyWritingModifierVyAA0E9AlignmentOGGAA14_PaddingLayoutVGAMGAA023AccessibilityAttachmentI0VGSgMd);
  v239[0] = v213;
  v239[1] = v165;
  v239[2] = 0;
  v240 = 256;
  v241 = v261;
  v242 = v262;
  v243 = v34;
  v244 = v36;
  v245 = v212;
  *v246 = *v260;
  *&v246[3] = *&v260[3];
  v247 = v38;
  v248 = v40;
  v249 = v42;
  v250 = v44;
  v251 = 0;
  return outlined destroy of ModifiedContent<InSessionView, _TraitWritingModifier<TransitionTraitKey>>(v239, &_s7SwiftUI15ModifiedContentVy07WorkoutB017CountdownIconViewVAA14_PaddingLayoutVGMd);
}

uint64_t closure #1 in closure #1 in closure #1 in closure #1 in closure #1 in closure #1 in SessionView.alertStackView()@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v58 = a2;
  v59 = a3;
  v57 = a1;
  v62 = a5;
  v6 = type metadata accessor for BorderedProminentButtonStyle();
  v7 = *(v6 - 8);
  v60 = v6;
  v61 = v7;
  MEMORY[0x28223BE20](v6);
  v9 = &v57 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for SessionView();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10 - 8);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI6ButtonVyAA15ModifiedContentVyAA4TextVAA16_FlexFrameLayoutVGGMd);
  v14 = *(v13 - 8);
  MEMORY[0x28223BE20](v13);
  v16 = &v57 - v15;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyACyACyAA4ViewPAAE11buttonStyleyQrqd__AA015PrimitiveButtonG0Rd__lFQOyAA0I0VyACyAA4TextVAA16_FlexFrameLayoutVGG_AA017BorderedProminentiG0VQo_AA30_EnvironmentKeyWritingModifierVyAA11ControlSizeOGGATyAA08AnyShapeG0VSgGGAA11_ClipEffectVyAA16RoundedRectangleVGGMd);
  v18 = v17 - 8;
  MEMORY[0x28223BE20](v17);
  v20 = &v57 - v19;
  outlined init with copy of SessionControlsSheet(a4, &v57 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for SessionView);
  v21 = (*(v11 + 80) + 16) & ~*(v11 + 80);
  v22 = swift_allocObject();
  outlined init with take of SessionView(&v57 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0), v22 + v21);
  v23 = v58;
  *(v22 + ((v12 + v21 + 7) & 0xFFFFFFFFFFFFFFF8)) = v57;
  v63 = v23;
  v64 = v59;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyAA4TextVAA16_FlexFrameLayoutVGMd);
  lazy protocol witness table accessor for type ModifiedContent<Text, _FlexFrameLayout> and conformance <> ModifiedContent<A, B>();
  Button.init(action:label:)();
  BorderedProminentButtonStyle.init()();
  lazy protocol witness table accessor for type ZStack<_ConditionalContent<_ConditionalContent<_ConditionalContent<ModifiedContent<ZStack<TupleView<(ModifiedContent<Color, _SafeAreaIgnoringLayout>, MirroredStartWatchAppView)>>, _TraitWritingModifier<TransitionTraitKey>>, ModifiedContent<<<opaque return type of View.sheet<A>(isPresented:onDismiss:content:)>>.0, _TraitWritingModifier<TransitionTraitKey>>>, _ConditionalContent<ModifiedContent<<<opaque return type of View.sheet<A>(isPresented:onDismiss:content:)>>.0, _TraitWritingModifier<TransitionTraitKey>>, ModifiedContent<ViewControllerWrapper?, _TraitWritingModifier<TransitionTraitKey>>>>, _ConditionalContent<ModifiedContent<NavigationStack<NavigationPath, <<opaque return type of View.toolbar<A>(content:)>>.0>, _TraitWritingModifier<TransitionTraitKey>>, ModifiedContent<InSessionView, _TraitWritingModifier<TransitionTraitKey>>>>> and conformance ZStack<A>(&lazy protocol witness table cache variable for type Button<ModifiedContent<Text, _FlexFrameLayout>> and conformance Button<A>, &_s7SwiftUI6ButtonVyAA15ModifiedContentVyAA4TextVAA16_FlexFrameLayoutVGGMd);
  _s11WorkoutCore19LowPowerModeMonitorCAC7Combine16ObservableObjectAAWlTm_0(&lazy protocol witness table cache variable for type BorderedProminentButtonStyle and conformance BorderedProminentButtonStyle, MEMORY[0x277CDE400]);
  v24 = v60;
  View.buttonStyle<A>(_:)();
  (*(v61 + 8))(v9, v24);
  (*(v14 + 8))(v16, v13);
  v25 = &v20[*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyAA4ViewPAAE11buttonStyleyQrqd__AA015PrimitiveButtonG0Rd__lFQOyAA0I0VyACyAA4TextVAA16_FlexFrameLayoutVGG_AA017BorderedProminentiG0VQo_AA30_EnvironmentKeyWritingModifierVyAA11ControlSizeOGGMd) + 36)];
  v26 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI30_EnvironmentKeyWritingModifierVyAA11ControlSizeOGMd) + 28);
  v27 = *MEMORY[0x277CDF420];
  v28 = type metadata accessor for ControlSize();
  (*(*(v28 - 8) + 104))(v25 + v26, v27, v28);
  *v25 = swift_getKeyPath();
  v29 = [objc_opt_self() secondarySystemGroupedBackgroundColor];
  v30 = Color.init(uiColor:)();
  KeyPath = swift_getKeyPath();
  v65 = v30;
  v32 = AnyShapeStyle.init<A>(_:)();
  v33 = &v20[*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyACyAA4ViewPAAE11buttonStyleyQrqd__AA015PrimitiveButtonG0Rd__lFQOyAA0I0VyACyAA4TextVAA16_FlexFrameLayoutVGG_AA017BorderedProminentiG0VQo_AA30_EnvironmentKeyWritingModifierVyAA11ControlSizeOGGATyAA08AnyShapeG0VSgGGMd) + 36)];
  *v33 = KeyPath;
  v33[1] = v32;
  v34 = &v20[*(v18 + 44)];
  v35 = *(type metadata accessor for RoundedRectangle() + 20);
  v36 = *MEMORY[0x277CE0118];
  v37 = type metadata accessor for RoundedCornerStyle();
  (*(*(v37 - 8) + 104))(&v34[v35], v36, v37);
  __asm { FMOV            V0.2D, #20.0 }

  *v34 = _Q0;
  *&v34[*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI11_ClipEffectVyAA16RoundedRectangleVGMd) + 36)] = 256;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy7SwiftUI4EdgeO3SetVGMd);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_20CB5DA80;
  LOBYTE(v9) = static Edge.Set.leading.getter();
  *(inited + 32) = v9;
  v44 = static Edge.Set.trailing.getter();
  *(inited + 33) = v44;
  v45 = Edge.Set.init(rawValue:)();
  Edge.Set.init(rawValue:)();
  if (Edge.Set.init(rawValue:)() != v9)
  {
    v45 = Edge.Set.init(rawValue:)();
  }

  Edge.Set.init(rawValue:)();
  if (Edge.Set.init(rawValue:)() != v44)
  {
    v45 = Edge.Set.init(rawValue:)();
  }

  EdgeInsets.init(_all:)();
  v47 = v46;
  v49 = v48;
  v51 = v50;
  v53 = v52;
  v54 = v62;
  outlined init with take of VStack<TupleView<(Spacer, VStack<TupleView<(ModifiedContent<CountdownIconView, _PaddingLayout>, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Text, _EnvironmentKeyWritingModifier<TextAlignment>>, _PaddingLayout>, _PaddingLayout>, AccessibilityAttachmentModifier>?, ModifiedContent<ModifiedContent<ModifiedContent<Text, _EnvironmentKeyWritingModifier<TextAlignment>>, _PaddingLayout>, _PaddingLayout>?, ForEach<[(offset: Int, element: String)], Int, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<<<opaque return type of View.buttonStyle<A>(_:)>>.0, _EnvironmentKeyWritingModifier<ControlSize>>, _EnvironmentKeyWritingModifier<AnyShapeStyle?>>, _ClipEffect<RoundedRectangle>>, _PaddingLayout>>?)>>, Spacer)>>(v20, v62, &_s7SwiftUI15ModifiedContentVyACyACyAA4ViewPAAE11buttonStyleyQrqd__AA015PrimitiveButtonG0Rd__lFQOyAA0I0VyACyAA4TextVAA16_FlexFrameLayoutVGG_AA017BorderedProminentiG0VQo_AA30_EnvironmentKeyWritingModifierVyAA11ControlSizeOGGATyAA08AnyShapeG0VSgGGAA11_ClipEffectVyAA16RoundedRectangleVGGMd);
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyACyACyACyAA4ViewPAAE11buttonStyleyQrqd__AA015PrimitiveButtonG0Rd__lFQOyAA0I0VyACyAA4TextVAA16_FlexFrameLayoutVGG_AA017BorderedProminentiG0VQo_AA30_EnvironmentKeyWritingModifierVyAA11ControlSizeOGGATyAA08AnyShapeG0VSgGGAA11_ClipEffectVyAA16RoundedRectangleVGGAA08_PaddingM0VGMd);
  v56 = v54 + *(result + 36);
  *v56 = v45;
  *(v56 + 8) = v47;
  *(v56 + 16) = v49;
  *(v56 + 24) = v51;
  *(v56 + 32) = v53;
  *(v56 + 40) = 0;
  return result;
}

uint64_t closure #1 in closure #1 in closure #1 in closure #1 in closure #1 in closure #1 in closure #1 in SessionView.alertStackView()(uint64_t a1, uint64_t a2)
{
  v21 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11WorkoutCore29MirroredHostAlertStackRequestVSgMd);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v20 - v4;
  v6 = (a1 + *(type metadata accessor for SessionView() + 32));
  v7 = v6[3];
  v8 = v6[4];
  v20 = __swift_project_boxed_opaque_existential_1(v6, v7);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI8BindableVy07WorkoutB016SessionViewModelCGMd);
  Bindable.wrappedValue.getter();
  v9 = v24;
  swift_getKeyPath();
  v24 = v9;
  _s11WorkoutCore19LowPowerModeMonitorCAC7Combine16ObservableObjectAAWlTm_0(&lazy protocol witness table cache variable for type SessionViewModel and conformance SessionViewModel, type metadata accessor for SessionViewModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v10 = OBJC_IVAR____TtC9WorkoutUI16SessionViewModel__alertStackRequest;
  swift_beginAccess();
  outlined init with copy of ModifiedContent<InSessionView, _TraitWritingModifier<TransitionTraitKey>>(v9 + v10, v5, &_s11WorkoutCore29MirroredHostAlertStackRequestVSgMd);

  v11 = type metadata accessor for MirroredHostAlertStackRequest();
  if ((*(*(v11 - 8) + 48))(v5, 1, v11))
  {
    outlined destroy of ModifiedContent<InSessionView, _TraitWritingModifier<TransitionTraitKey>>(v5, &_s11WorkoutCore29MirroredHostAlertStackRequestVSgMd);
    v12 = 0;
    v13 = 0xE000000000000000;
  }

  else
  {
    v12 = MirroredHostAlertStackRequest.identifier.getter();
    v13 = v14;
    outlined destroy of ModifiedContent<InSessionView, _TraitWritingModifier<TransitionTraitKey>>(v5, &_s11WorkoutCore29MirroredHostAlertStackRequestVSgMd);
  }

  v24 = v12;
  v25 = v13;
  v26 = v21;
  v27 = 3;
  (*(v8 + 8))(&v24, v7, v8);
  outlined consume of SessionControl(v24, v25, v26, v27);
  Bindable.wrappedValue.getter();
  v15 = v24;
  swift_getKeyPath();
  v24 = v15;
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  swift_beginAccess();
  v16 = *(v15 + 18);

  if (v16 == 1)
  {
    Bindable.wrappedValue.getter();
    v18 = v23;
    swift_beginAccess();
    if (*(v18 + 17) != 5)
    {
      KeyPath = swift_getKeyPath();
      MEMORY[0x28223BE20](KeyPath);
      *(&v20 - 2) = v18;
      *(&v20 - 8) = 5;
      v22 = v18;
      ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
    }
  }

  return result;
}

void closure #2 in closure #1 in closure #1 in closure #1 in closure #1 in closure #1 in closure #1 in SessionView.alertStackView()(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = type metadata accessor for Font.Leading();
  v47 = *(v6 - 8);
  v48 = v6;
  MEMORY[0x28223BE20](v6);
  v46 = v42 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI4FontV6DesignOSgMd);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = v42 - v9;
  v45 = type metadata accessor for Font.TextStyle();
  v11 = *(v45 - 8);
  MEMORY[0x28223BE20](v45);
  v13 = v42 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v49 = a1;
  *(&v49 + 1) = a2;
  lazy protocol witness table accessor for type String and conformance String();

  v14 = Text.init<A>(_:)();
  v16 = v15;
  v18 = v17;
  v19 = [objc_opt_self() keyColors];
  if (v19)
  {
    v20 = v19;
    v21 = [v19 nonGradientTextColor];

    if (v21)
    {
      *&v49 = Color.init(uiColor:)();
      v44 = Text.foregroundStyle<A>(_:)();
      v43 = v22;
      v24 = v23;
      v42[1] = v25;
      outlined consume of Text.Storage(v14, v16, v18 & 1);

      v26 = v45;
      (*(v11 + 104))(v13, *MEMORY[0x277CE0A68], v45);
      v27 = type metadata accessor for Font.Design();
      (*(*(v27 - 8) + 56))(v10, 1, 1, v27);
      static Font.Weight.semibold.getter();
      static Font.system(_:design:weight:)();
      outlined destroy of ModifiedContent<InSessionView, _TraitWritingModifier<TransitionTraitKey>>(v10, &_s7SwiftUI4FontV6DesignOSgMd);
      (*(v11 + 8))(v13, v26);
      v29 = v46;
      v28 = v47;
      v30 = v48;
      (*(v47 + 104))(v46, *MEMORY[0x277CE0A10], v48);
      Font.leading(_:)();

      (*(v28 + 8))(v29, v30);
      v31 = v44;
      v32 = v43;
      v33 = Text.font(_:)();
      v35 = v34;
      LOBYTE(v28) = v36;
      v38 = v37;

      outlined consume of Text.Storage(v31, v32, v24 & 1);

      static Alignment.center.getter();
      _FlexFrameLayout.init(minWidth:idealWidth:maxWidth:minHeight:idealHeight:maxHeight:alignment:)();
      v56 = v28 & 1;
      *a3 = v33;
      *(a3 + 8) = v35;
      *(a3 + 16) = v28 & 1;
      *(a3 + 24) = v38;
      v39 = v54;
      *(a3 + 96) = v53;
      *(a3 + 112) = v39;
      *(a3 + 128) = v55;
      v40 = v50;
      *(a3 + 32) = v49;
      *(a3 + 48) = v40;
      v41 = v52;
      *(a3 + 64) = v51;
      *(a3 + 80) = v41;
      return;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
}

uint64_t closure #2 in closure #1 in SessionView.alertStackView()(uint64_t a1)
{
  v2 = type metadata accessor for ToolbarItemPlacement();
  MEMORY[0x28223BE20](v2 - 8);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI11ToolbarItemVyytAA15ModifiedContentVyAA6ButtonVyAA07DefaultG5LabelVGAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGGMd);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v9[-v5];
  static ToolbarItemPlacement.cancellationAction.getter();
  v10 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyAA6ButtonVyAA07DefaultE5LabelVGAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGMd);
  lazy protocol witness table accessor for type ModifiedContent<Button<DefaultButtonLabel>, _EnvironmentKeyWritingModifier<Color?>> and conformance <> ModifiedContent<A, B>();
  ToolbarItem<>.init(placement:content:)();
  v7 = lazy protocol witness table accessor for type ZStack<_ConditionalContent<_ConditionalContent<_ConditionalContent<ModifiedContent<ZStack<TupleView<(ModifiedContent<Color, _SafeAreaIgnoringLayout>, MirroredStartWatchAppView)>>, _TraitWritingModifier<TransitionTraitKey>>, ModifiedContent<<<opaque return type of View.sheet<A>(isPresented:onDismiss:content:)>>.0, _TraitWritingModifier<TransitionTraitKey>>>, _ConditionalContent<ModifiedContent<<<opaque return type of View.sheet<A>(isPresented:onDismiss:content:)>>.0, _TraitWritingModifier<TransitionTraitKey>>, ModifiedContent<ViewControllerWrapper?, _TraitWritingModifier<TransitionTraitKey>>>>, _ConditionalContent<ModifiedContent<NavigationStack<NavigationPath, <<opaque return type of View.toolbar<A>(content:)>>.0>, _TraitWritingModifier<TransitionTraitKey>>, ModifiedContent<InSessionView, _TraitWritingModifier<TransitionTraitKey>>>>> and conformance ZStack<A>(&lazy protocol witness table cache variable for type ToolbarItem<(), ModifiedContent<Button<DefaultButtonLabel>, _EnvironmentKeyWritingModifier<Color?>>> and conformance ToolbarItem<A, B>, &_s7SwiftUI11ToolbarItemVyytAA15ModifiedContentVyAA6ButtonVyAA07DefaultG5LabelVGAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGGMd);
  MEMORY[0x20F3098F0](v6, v3, v7);
  return (*(v4 + 8))(v6, v3);
}

uint64_t closure #1 in closure #2 in closure #1 in SessionView.alertStackView()@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for SessionView();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = type metadata accessor for ButtonRole();
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v16 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  static ButtonRole.close.getter();
  outlined init with copy of SessionControlsSheet(a1, &v16 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for SessionView);
  v10 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v11 = swift_allocObject();
  outlined init with take of SessionView(&v16 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), v11 + v10);
  MEMORY[0x20F30AF90](v9, partial apply for closure #1 in closure #1 in closure #2 in closure #1 in SessionView.alertStackView(), v11);
  v12 = static Color.accentColor.getter();
  KeyPath = swift_getKeyPath();
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyAA6ButtonVyAA07DefaultE5LabelVGAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGMd);
  v15 = (a2 + *(result + 36));
  *v15 = KeyPath;
  v15[1] = v12;
  return result;
}

uint64_t closure #1 in closure #1 in closure #2 in closure #1 in SessionView.alertStackView()(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11WorkoutCore29MirroredHostAlertStackRequestVSgMd);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = v19 - v3;
  v5 = (a1 + *(type metadata accessor for SessionView() + 32));
  v6 = v5[3];
  v7 = v5[4];
  v19[1] = __swift_project_boxed_opaque_existential_1(v5, v6);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI8BindableVy07WorkoutB016SessionViewModelCGMd);
  Bindable.wrappedValue.getter();
  v8 = v20;
  swift_getKeyPath();
  v20 = v8;
  _s11WorkoutCore19LowPowerModeMonitorCAC7Combine16ObservableObjectAAWlTm_0(&lazy protocol witness table cache variable for type SessionViewModel and conformance SessionViewModel, type metadata accessor for SessionViewModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v9 = OBJC_IVAR____TtC9WorkoutUI16SessionViewModel__alertStackRequest;
  swift_beginAccess();
  outlined init with copy of ModifiedContent<InSessionView, _TraitWritingModifier<TransitionTraitKey>>(v8 + v9, v4, &_s11WorkoutCore29MirroredHostAlertStackRequestVSgMd);

  v10 = type metadata accessor for MirroredHostAlertStackRequest();
  if ((*(*(v10 - 8) + 48))(v4, 1, v10))
  {
    outlined destroy of ModifiedContent<InSessionView, _TraitWritingModifier<TransitionTraitKey>>(v4, &_s11WorkoutCore29MirroredHostAlertStackRequestVSgMd);
    v11 = 0;
    v12 = 0xE000000000000000;
  }

  else
  {
    v11 = MirroredHostAlertStackRequest.identifier.getter();
    v12 = v13;
    outlined destroy of ModifiedContent<InSessionView, _TraitWritingModifier<TransitionTraitKey>>(v4, &_s11WorkoutCore29MirroredHostAlertStackRequestVSgMd);
  }

  v20 = v11;
  v21 = v12;
  v22 = 0;
  v23 = 4;
  (*(v7 + 8))(&v20, v6, v7);
  outlined consume of SessionControl(v20, v21, v22, v23);
  Bindable.wrappedValue.getter();
  v14 = v20;
  swift_getKeyPath();
  v20 = v14;
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  swift_beginAccess();
  v15 = *(v14 + 18);

  if (v15 == 1)
  {
    Bindable.wrappedValue.getter();
    v17 = v19[4];
    swift_beginAccess();
    if (*(v17 + 17) != 5)
    {
      KeyPath = swift_getKeyPath();
      MEMORY[0x28223BE20](KeyPath);
      v19[-2] = v17;
      LOBYTE(v19[-1]) = 5;
      v19[3] = v17;
      ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
    }
  }

  return result;
}

uint64_t key path getter for SessionViewModel.currentView : SessionViewModel@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  _s11WorkoutCore19LowPowerModeMonitorCAC7Combine16ObservableObjectAAWlTm_0(&lazy protocol witness table cache variable for type SessionViewModel and conformance SessionViewModel, type metadata accessor for SessionViewModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  result = swift_beginAccess();
  *a2 = *(v3 + 17);
  return result;
}

uint64_t outlined destroy of SessionControlsSheet(uint64_t a1)
{
  v2 = type metadata accessor for SessionControlsSheet();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void type metadata completion function for SessionView()
{
  type metadata accessor for ObservedObject<LowPowerModeMonitor>();
  if (v0 <= 0x3F)
  {
    type metadata accessor for MetricsPublisher();
    if (v1 <= 0x3F)
    {
      type metadata accessor for WorkoutNotificationCenter();
      if (v2 <= 0x3F)
      {
        type metadata accessor for Bindable<SessionViewModel>();
        if (v3 <= 0x3F)
        {
          type metadata accessor for SessionControls();
          if (v4 <= 0x3F)
          {
            type metadata accessor for (())?();
            if (v5 <= 0x3F)
            {
              type metadata accessor for State<Bool>();
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

void type metadata accessor for Bindable<SessionViewModel>()
{
  if (!lazy cache variable for type metadata for Bindable<SessionViewModel>)
  {
    type metadata accessor for SessionViewModel();
    v0 = type metadata accessor for Bindable();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for Bindable<SessionViewModel>);
    }
  }
}

unint64_t type metadata accessor for SessionControls()
{
  result = lazy cache variable for type metadata for SessionControls;
  if (!lazy cache variable for type metadata for SessionControls)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &lazy cache variable for type metadata for SessionControls);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<ZStack<_ConditionalContent<_ConditionalContent<_ConditionalContent<ModifiedContent<ZStack<TupleView<(ModifiedContent<Color, _SafeAreaIgnoringLayout>, MirroredStartWatchAppView)>>, _TraitWritingModifier<TransitionTraitKey>>, ModifiedContent<<<opaque return type of View.sheet<A>(isPresented:onDismiss:content:)>>.0, _TraitWritingModifier<TransitionTraitKey>>>, _ConditionalContent<ModifiedContent<<<opaque return type of View.sheet<A>(isPresented:onDismiss:content:)>>.0, _TraitWritingModifier<TransitionTraitKey>>, ModifiedContent<ViewControllerWrapper?, _TraitWritingModifier<TransitionTraitKey>>>>, _ConditionalContent<ModifiedContent<NavigationStack<NavigationPath, <<opaque return type of View.toolbar<A>(content:)>>.0>, _TraitWritingModifier<TransitionTraitKey>>, ModifiedContent<InSessionView, _TraitWritingModifier<TransitionTraitKey>>>>>, _AnimationModifier<SessionCurrentView>> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<ZStack<_ConditionalContent<_ConditionalContent<_ConditionalContent<ModifiedContent<ZStack<TupleView<(ModifiedContent<Color, _SafeAreaIgnoringLayout>, MirroredStartWatchAppView)>>, _TraitWritingModifier<TransitionTraitKey>>, ModifiedContent<<<opaque return type of View.sheet<A>(isPresented:onDismiss:content:)>>.0, _TraitWritingModifier<TransitionTraitKey>>>, _ConditionalContent<ModifiedContent<<<opaque return type of View.sheet<A>(isPresented:onDismiss:content:)>>.0, _TraitWritingModifier<TransitionTraitKey>>, ModifiedContent<ViewControllerWrapper?, _TraitWritingModifier<TransitionTraitKey>>>>, _ConditionalContent<ModifiedContent<NavigationStack<NavigationPath, <<opaque return type of View.toolbar<A>(content:)>>.0>, _TraitWritingModifier<TransitionTraitKey>>, ModifiedContent<InSessionView, _TraitWritingModifier<TransitionTraitKey>>>>>, _AnimationModifier<SessionCurrentView>> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<ZStack<_ConditionalContent<_ConditionalContent<_ConditionalContent<ModifiedContent<ZStack<TupleView<(ModifiedContent<Color, _SafeAreaIgnoringLayout>, MirroredStartWatchAppView)>>, _TraitWritingModifier<TransitionTraitKey>>, ModifiedContent<<<opaque return type of View.sheet<A>(isPresented:onDismiss:content:)>>.0, _TraitWritingModifier<TransitionTraitKey>>>, _ConditionalContent<ModifiedContent<<<opaque return type of View.sheet<A>(isPresented:onDismiss:content:)>>.0, _TraitWritingModifier<TransitionTraitKey>>, ModifiedContent<ViewControllerWrapper?, _TraitWritingModifier<TransitionTraitKey>>>>, _ConditionalContent<ModifiedContent<NavigationStack<NavigationPath, <<opaque return type of View.toolbar<A>(content:)>>.0>, _TraitWritingModifier<TransitionTraitKey>>, ModifiedContent<InSessionView, _TraitWritingModifier<TransitionTraitKey>>>>>, _AnimationModifier<SessionCurrentView>> and conformance <> ModifiedContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyAA6ZStackVyAA012_ConditionalD0VyAGyAGyACyAEyAA9TupleViewVyACyAA5ColorVAA23_SafeAreaIgnoringLayoutVG_07WorkoutB0021MirroredStartWatchAppH0VtGGAA21_TraitWritingModifierVyAA010TransitionS3KeyVGGACyAA0H0PAAE5sheet11isPresented9onDismiss7contentQrAA7BindingVySbG_yycSgqd__yctAaZRd__lFQOyA_AAEA0_A1_A2_A3_QrA6__A7_qd__yctAaZRd__lFQOyACyAEyANGAA017_AppearanceActionU0VG_ACyACyAO027SafetyMonitorMessageComposeH0VAA012_EnvironmentwtU0VyAKSgGGAA01_jk7RegionslM0VGQo__ACyACy013SafetyMonitorB0027CheckInOnboardingNavigationH0VA17_GA20_GQo_AXGGAGyACyA_AAEA0_A1_A2_A3_QrA6__A7_qd__yctAaZRd__lFQOyA_AAEA0_A1_A2_A3_QrA6__A7_qd__yctAaZRd__lFQOyACyAO09CountdownH0VA10_G_A21_Qo__A27_Qo_AXGACyAO0H17ControllerWrapperVSgAXGGGAGyACyAA15NavigationStackVyAA14NavigationPathVA_AAE7toolbarA3_Qrqd__yXE_tAA07ToolbarD0Rd__lFQOyACyAA14GeometryReaderVyAA06ScrollH0VyACyACyAA6VStackVyAIyAA6SpacerV_A54_yAIyACyAO013CountdownIconH0VAA08_PaddingM0VG_ACyACyACyACyAA4TextVA15_yAA13TextAlignmentOGGA60_GA60_GAA023AccessibilityAttachmentU0VGSgA69_SgAA7ForEachVySaySi6offset_SS7elementtGSiACyACyACyACyA_AAE11buttonStyleyQrqd__AA20PrimitiveButtonStyleRd__lFQOyAA6ButtonVyACyA63_AA010_FlexFrameM0VGG_AA28BorderedProminentButtonStyleVQo_A15_yAA11ControlSizeOGGA15_yAA13AnyShapeStyleVSgGGAA11_ClipEffectVyAA16RoundedRectangleVGGA60_GGSgtGGA56_tGGA85_GA85_GGGA20_G_AA07ToolbarD7BuilderV10buildBlockyQrxAAA48_RzlFZQOy_AA11ToolbarItemVyytACyA83_yAA18DefaultButtonLabelVGA17_GGQo_Qo_GAXGACyAO09InSessionH0VAXGGGGAA010_AnimationU0VyAO014SessionCurrentH0OGGMd);
    lazy protocol witness table accessor for type ZStack<_ConditionalContent<_ConditionalContent<_ConditionalContent<ModifiedContent<ZStack<TupleView<(ModifiedContent<Color, _SafeAreaIgnoringLayout>, MirroredStartWatchAppView)>>, _TraitWritingModifier<TransitionTraitKey>>, ModifiedContent<<<opaque return type of View.sheet<A>(isPresented:onDismiss:content:)>>.0, _TraitWritingModifier<TransitionTraitKey>>>, _ConditionalContent<ModifiedContent<<<opaque return type of View.sheet<A>(isPresented:onDismiss:content:)>>.0, _TraitWritingModifier<TransitionTraitKey>>, ModifiedContent<ViewControllerWrapper?, _TraitWritingModifier<TransitionTraitKey>>>>, _ConditionalContent<ModifiedContent<NavigationStack<NavigationPath, <<opaque return type of View.toolbar<A>(content:)>>.0>, _TraitWritingModifier<TransitionTraitKey>>, ModifiedContent<InSessionView, _TraitWritingModifier<TransitionTraitKey>>>>> and conformance ZStack<A>( &lazy protocol witness table cache variable for type ZStack<_ConditionalContent<_ConditionalContent<_ConditionalContent<ModifiedContent<ZStack<TupleView<(ModifiedContent<Color, _SafeAreaIgnoringLayout>, MirroredStartWatchAppView)>>, _TraitWritingModifier<TransitionTraitKey>>, ModifiedContent<<<opaque return type of View.sheet<A>(isPresented:onDismiss:content:)>>.0, _TraitWritingModifier<TransitionTraitKey>>>, _ConditionalContent<ModifiedContent<<<opaque return type of View.sheet<A>(isPresented:onDismiss:content:)>>.0, _TraitWritingModifier<TransitionTraitKey>>, ModifiedContent<ViewControllerWrapper?, _TraitWritingModifier<TransitionTraitKey>>>>, _ConditionalContent<ModifiedContent<NavigationStack<NavigationPath, <<opaque return type of View.toolbar<A>(content:)>>.0>, _TraitWritingModifier<TransitionTraitKey>>, ModifiedContent<InSessionView, _TraitWritingModifier<TransitionTraitKey>>>>> and conformance ZStack<A>,  &_s7SwiftUI6ZStackVyAA19_ConditionalContentVyAEyAEyAA08ModifiedE0VyACyAA9TupleViewVyAGyAA5ColorVAA23_SafeAreaIgnoringLayoutVG_07WorkoutB0021MirroredStartWatchAppH0VtGGAA21_TraitWritingModifierVyAA010TransitionS3KeyVGGAGyAA0H0PAAE5sheet11isPresented9onDismiss7contentQrAA7BindingVySbG_yycSgqd__yctAaZRd__lFQOyA_AAEA0_A1_A2_A3_QrA6__A7_qd__yctAaZRd__lFQOyAGyACyANGAA017_AppearanceActionU0VG_AGyAGyAO027SafetyMonitorMessageComposeH0VAA012_EnvironmentwtU0VyAKSgGGAA01_jk7RegionslM0VGQo__AGyAGy013SafetyMonitorB0027CheckInOnboardingNavigationH0VA17_GA20_GQo_AXGGAEyAGyA_AAEA0_A1_A2_A3_QrA6__A7_qd__yctAaZRd__lFQOyA_AAEA0_A1_A2_A3_QrA6__A7_qd__yctAaZRd__lFQOyAGyAO09CountdownH0VA10_G_A21_Qo__A27_Qo_AXGAGyAO0H17ControllerWrapperVSgAXGGGAEyAGyAA15NavigationStackVyAA14NavigationPathVA_AAE7toolbarA3_Qrqd__yXE_tAA07ToolbarE0Rd__lFQOyAGyAA14GeometryReaderVyAA06ScrollH0VyAGyAGyAA6VStackVyAIyAA6SpacerV_A54_yAIyAGyAO013CountdownIconH0VAA08_PaddingM0VG_AGyAGyAGyAGyAA4TextVA15_yAA13TextAlignmentOGGA60_GA60_GAA023AccessibilityAttachmentU0VGSgA69_SgAA7ForEachVySaySi6offset_SS7elementtGSiAGyAGyAGyAGyA_AAE11buttonStyleyQrqd__AA20PrimitiveButtonStyleRd__lFQOyAA6ButtonVyAGyA63_AA010_FlexFrameM0VGG_AA28BorderedProminentButtonStyleVQo_A15_yAA11ControlSizeOGGA15_yAA13AnyShapeStyleVSgGGAA11_ClipEffectVyAA16RoundedRectangleVGGA60_GGSgtGGA56_tGGA85_GA85_GGGA20_G_AA07ToolbarE7BuilderV10buildBlockyQrxAAA48_RzlFZQOy_AA11ToolbarItemVyytAGyA83_yAA18DefaultButtonLabelVGA17_GGQo_Qo_GAXGAGyAO09InSessionH0VAXGGGGMd);
    lazy protocol witness table accessor for type ZStack<_ConditionalContent<_ConditionalContent<_ConditionalContent<ModifiedContent<ZStack<TupleView<(ModifiedContent<Color, _SafeAreaIgnoringLayout>, MirroredStartWatchAppView)>>, _TraitWritingModifier<TransitionTraitKey>>, ModifiedContent<<<opaque return type of View.sheet<A>(isPresented:onDismiss:content:)>>.0, _TraitWritingModifier<TransitionTraitKey>>>, _ConditionalContent<ModifiedContent<<<opaque return type of View.sheet<A>(isPresented:onDismiss:content:)>>.0, _TraitWritingModifier<TransitionTraitKey>>, ModifiedContent<ViewControllerWrapper?, _TraitWritingModifier<TransitionTraitKey>>>>, _ConditionalContent<ModifiedContent<NavigationStack<NavigationPath, <<opaque return type of View.toolbar<A>(content:)>>.0>, _TraitWritingModifier<TransitionTraitKey>>, ModifiedContent<InSessionView, _TraitWritingModifier<TransitionTraitKey>>>>> and conformance ZStack<A>(&lazy protocol witness table cache variable for type _AnimationModifier<SessionCurrentView> and conformance _AnimationModifier<A>, &_s7SwiftUI18_AnimationModifierVy07WorkoutB018SessionCurrentViewOGMd);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<ZStack<_ConditionalContent<_ConditionalContent<_ConditionalContent<ModifiedContent<ZStack<TupleView<(ModifiedContent<Color, _SafeAreaIgnoringLayout>, MirroredStartWatchAppView)>>, _TraitWritingModifier<TransitionTraitKey>>, ModifiedContent<<<opaque return type of View.sheet<A>(isPresented:onDismiss:content:)>>.0, _TraitWritingModifier<TransitionTraitKey>>>, _ConditionalContent<ModifiedContent<<<opaque return type of View.sheet<A>(isPresented:onDismiss:content:)>>.0, _TraitWritingModifier<TransitionTraitKey>>, ModifiedContent<ViewControllerWrapper?, _TraitWritingModifier<TransitionTraitKey>>>>, _ConditionalContent<ModifiedContent<NavigationStack<NavigationPath, <<opaque return type of View.toolbar<A>(content:)>>.0>, _TraitWritingModifier<TransitionTraitKey>>, ModifiedContent<InSessionView, _TraitWritingModifier<TransitionTraitKey>>>>>, _AnimationModifier<SessionCurrentView>> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<NavigationStack<NavigationPath, <<opaque return type of View.toolbar<A>(content:)>>.0>, _TraitWritingModifier<TransitionTraitKey>> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<NavigationStack<NavigationPath, <<opaque return type of View.toolbar<A>(content:)>>.0>, _TraitWritingModifier<TransitionTraitKey>> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<NavigationStack<NavigationPath, <<opaque return type of View.toolbar<A>(content:)>>.0>, _TraitWritingModifier<TransitionTraitKey>> and conformance <> ModifiedContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyAA15NavigationStackVyAA0E4PathVAA4ViewPAAE7toolbar7contentQrqd__yXE_tAA07ToolbarD0Rd__lFQOyACyAA14GeometryReaderVyAA06ScrollH0VyACyACyAA6VStackVyAA05TupleH0VyAA6SpacerV_ARyATyACy07WorkoutB0013CountdownIconH0VAA14_PaddingLayoutVG_ACyACyACyACyAA4TextVAA30_EnvironmentKeyWritingModifierVyAA0W9AlignmentOGGA_GA_GAA31AccessibilityAttachmentModifierVGSgA10_SgAA7ForEachVySaySi6offset_SS7elementtGSiACyACyACyACyAiAE11buttonStyleyQrqd__AA20PrimitiveButtonStyleRd__lFQOyAA6ButtonVyACyA2_AA010_FlexFrameV0VGG_AA28BorderedProminentButtonStyleVQo_A4_yAA11ControlSizeOGGA4_yAA13AnyShapeStyleVSgGGAA11_ClipEffectVyAA16RoundedRectangleVGGA_GGSgtGGAVtGGA26_GA26_GGGAA024_SafeAreaRegionsIgnoringV0VG_AA0kD7BuilderV10buildBlockyQrxAaLRzlFZQOy_AA0K4ItemVyytACyA24_yAA18DefaultButtonLabelVGA4_yAA5ColorVSgGGGQo_Qo_GAA06_TraitZ8ModifierVyAA015TransitionTraitY0VGGMd);
    lazy protocol witness table accessor for type ZStack<_ConditionalContent<_ConditionalContent<_ConditionalContent<ModifiedContent<ZStack<TupleView<(ModifiedContent<Color, _SafeAreaIgnoringLayout>, MirroredStartWatchAppView)>>, _TraitWritingModifier<TransitionTraitKey>>, ModifiedContent<<<opaque return type of View.sheet<A>(isPresented:onDismiss:content:)>>.0, _TraitWritingModifier<TransitionTraitKey>>>, _ConditionalContent<ModifiedContent<<<opaque return type of View.sheet<A>(isPresented:onDismiss:content:)>>.0, _TraitWritingModifier<TransitionTraitKey>>, ModifiedContent<ViewControllerWrapper?, _TraitWritingModifier<TransitionTraitKey>>>>, _ConditionalContent<ModifiedContent<NavigationStack<NavigationPath, <<opaque return type of View.toolbar<A>(content:)>>.0>, _TraitWritingModifier<TransitionTraitKey>>, ModifiedContent<InSessionView, _TraitWritingModifier<TransitionTraitKey>>>>> and conformance ZStack<A>(&lazy protocol witness table cache variable for type NavigationStack<NavigationPath, <<opaque return type of View.toolbar<A>(content:)>>.0> and conformance NavigationStack<A, B>, &_s7SwiftUI15NavigationStackVyAA0C4PathVAA4ViewPAAE7toolbar7contentQrqd__yXE_tAA14ToolbarContentRd__lFQOyAA08ModifiedJ0VyAA14GeometryReaderVyAA06ScrollF0VyALyALyAA6VStackVyAA05TupleF0VyAA6SpacerV_ARyATyALy07WorkoutB0013CountdownIconF0VAA14_PaddingLayoutVG_ALyALyALyALyAA4TextVAA30_EnvironmentKeyWritingModifierVyAA0W9AlignmentOGGA_GA_GAA31AccessibilityAttachmentModifierVGSgA10_SgAA7ForEachVySaySi6offset_SS7elementtGSiALyALyALyALyAgAE11buttonStyleyQrqd__AA20PrimitiveButtonStyleRd__lFQOyAA6ButtonVyALyA2_AA010_FlexFrameV0VGG_AA28BorderedProminentButtonStyleVQo_A4_yAA11ControlSizeOGGA4_yAA13AnyShapeStyleVSgGGAA11_ClipEffectVyAA16RoundedRectangleVGGA_GGSgtGGAVtGGA26_GA26_GGGAA024_SafeAreaRegionsIgnoringV0VG_AA0iJ7BuilderV10buildBlockyQrxAaJRzlFZQOy_AA0I4ItemVyytALyA24_yAA18DefaultButtonLabelVGA4_yAA5ColorVSgGGGQo_Qo_GMd);
    lazy protocol witness table accessor for type ZStack<_ConditionalContent<_ConditionalContent<_ConditionalContent<ModifiedContent<ZStack<TupleView<(ModifiedContent<Color, _SafeAreaIgnoringLayout>, MirroredStartWatchAppView)>>, _TraitWritingModifier<TransitionTraitKey>>, ModifiedContent<<<opaque return type of View.sheet<A>(isPresented:onDismiss:content:)>>.0, _TraitWritingModifier<TransitionTraitKey>>>, _ConditionalContent<ModifiedContent<<<opaque return type of View.sheet<A>(isPresented:onDismiss:content:)>>.0, _TraitWritingModifier<TransitionTraitKey>>, ModifiedContent<ViewControllerWrapper?, _TraitWritingModifier<TransitionTraitKey>>>>, _ConditionalContent<ModifiedContent<NavigationStack<NavigationPath, <<opaque return type of View.toolbar<A>(content:)>>.0>, _TraitWritingModifier<TransitionTraitKey>>, ModifiedContent<InSessionView, _TraitWritingModifier<TransitionTraitKey>>>>> and conformance ZStack<A>(&lazy protocol witness table cache variable for type _TraitWritingModifier<TransitionTraitKey> and conformance _TraitWritingModifier<A>, &_s7SwiftUI21_TraitWritingModifierVyAA010TransitionC3KeyVGMd);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<NavigationStack<NavigationPath, <<opaque return type of View.toolbar<A>(content:)>>.0>, _TraitWritingModifier<TransitionTraitKey>> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<InSessionView, _TraitWritingModifier<TransitionTraitKey>> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<InSessionView, _TraitWritingModifier<TransitionTraitKey>> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<InSessionView, _TraitWritingModifier<TransitionTraitKey>> and conformance <> ModifiedContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVy07WorkoutB013InSessionViewVAA21_TraitWritingModifierVyAA010TransitionI3KeyVGGMd);
    _s11WorkoutCore19LowPowerModeMonitorCAC7Combine16ObservableObjectAAWlTm_0(&lazy protocol witness table cache variable for type InSessionView and conformance InSessionView, type metadata accessor for InSessionView);
    lazy protocol witness table accessor for type ZStack<_ConditionalContent<_ConditionalContent<_ConditionalContent<ModifiedContent<ZStack<TupleView<(ModifiedContent<Color, _SafeAreaIgnoringLayout>, MirroredStartWatchAppView)>>, _TraitWritingModifier<TransitionTraitKey>>, ModifiedContent<<<opaque return type of View.sheet<A>(isPresented:onDismiss:content:)>>.0, _TraitWritingModifier<TransitionTraitKey>>>, _ConditionalContent<ModifiedContent<<<opaque return type of View.sheet<A>(isPresented:onDismiss:content:)>>.0, _TraitWritingModifier<TransitionTraitKey>>, ModifiedContent<ViewControllerWrapper?, _TraitWritingModifier<TransitionTraitKey>>>>, _ConditionalContent<ModifiedContent<NavigationStack<NavigationPath, <<opaque return type of View.toolbar<A>(content:)>>.0>, _TraitWritingModifier<TransitionTraitKey>>, ModifiedContent<InSessionView, _TraitWritingModifier<TransitionTraitKey>>>>> and conformance ZStack<A>(&lazy protocol witness table cache variable for type _TraitWritingModifier<TransitionTraitKey> and conformance _TraitWritingModifier<A>, &_s7SwiftUI21_TraitWritingModifierVyAA010TransitionC3KeyVGMd);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<InSessionView, _TraitWritingModifier<TransitionTraitKey>> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type _ConditionalContent<_ConditionalContent<ModifiedContent<ZStack<TupleView<(ModifiedContent<Color, _SafeAreaIgnoringLayout>, MirroredStartWatchAppView)>>, _TraitWritingModifier<TransitionTraitKey>>, ModifiedContent<<<opaque return type of View.sheet<A>(isPresented:onDismiss:content:)>>.0, _TraitWritingModifier<TransitionTraitKey>>>, _ConditionalContent<ModifiedContent<<<opaque return type of View.sheet<A>(isPresented:onDismiss:content:)>>.0, _TraitWritingModifier<TransitionTraitKey>>, ModifiedContent<ViewControllerWrapper?, _TraitWritingModifier<TransitionTraitKey>>>> and conformance <> _ConditionalContent<A, B>()
{
  result = lazy protocol witness table cache variable for type _ConditionalContent<_ConditionalContent<ModifiedContent<ZStack<TupleView<(ModifiedContent<Color, _SafeAreaIgnoringLayout>, MirroredStartWatchAppView)>>, _TraitWritingModifier<TransitionTraitKey>>, ModifiedContent<<<opaque return type of View.sheet<A>(isPresented:onDismiss:content:)>>.0, _TraitWritingModifier<TransitionTraitKey>>>, _ConditionalContent<ModifiedContent<<<opaque return type of View.sheet<A>(isPresented:onDismiss:content:)>>.0, _TraitWritingModifier<TransitionTraitKey>>, ModifiedContent<ViewControllerWrapper?, _TraitWritingModifier<TransitionTraitKey>>>> and conformance <> _ConditionalContent<A, B>;
  if (!lazy protocol witness table cache variable for type _ConditionalContent<_ConditionalContent<ModifiedContent<ZStack<TupleView<(ModifiedContent<Color, _SafeAreaIgnoringLayout>, MirroredStartWatchAppView)>>, _TraitWritingModifier<TransitionTraitKey>>, ModifiedContent<<<opaque return type of View.sheet<A>(isPresented:onDismiss:content:)>>.0, _TraitWritingModifier<TransitionTraitKey>>>, _ConditionalContent<ModifiedContent<<<opaque return type of View.sheet<A>(isPresented:onDismiss:content:)>>.0, _TraitWritingModifier<TransitionTraitKey>>, ModifiedContent<ViewControllerWrapper?, _TraitWritingModifier<TransitionTraitKey>>>> and conformance <> _ConditionalContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI19_ConditionalContentVyACyAA08ModifiedD0VyAA6ZStackVyAA9TupleViewVyAEyAA5ColorVAA23_SafeAreaIgnoringLayoutVG_07WorkoutB0021MirroredStartWatchAppH0VtGGAA21_TraitWritingModifierVyAA010TransitionS3KeyVGGAEyAA0H0PAAE5sheet11isPresented9onDismiss7contentQrAA7BindingVySbG_yycSgqd__yctAaZRd__lFQOyA_AAEA0_A1_A2_A3_QrA6__A7_qd__yctAaZRd__lFQOyAEyAGyANGAA017_AppearanceActionU0VG_AEyAEyAO027SafetyMonitorMessageComposeH0VAA012_EnvironmentwtU0VyAKSgGGAA01_jk7RegionslM0VGQo__AEyAEy013SafetyMonitorB0027CheckInOnboardingNavigationH0VA17_GA20_GQo_AXGGACyAEyA_AAEA0_A1_A2_A3_QrA6__A7_qd__yctAaZRd__lFQOyA_AAEA0_A1_A2_A3_QrA6__A7_qd__yctAaZRd__lFQOyAEyAO09CountdownH0VA10_G_A21_Qo__A27_Qo_AXGAEyAO0H17ControllerWrapperVSgAXGGGMd);
    lazy protocol witness table accessor for type _ConditionalContent<ModifiedContent<ZStack<TupleView<(ModifiedContent<Color, _SafeAreaIgnoringLayout>, MirroredStartWatchAppView)>>, _TraitWritingModifier<TransitionTraitKey>>, ModifiedContent<<<opaque return type of View.sheet<A>(isPresented:onDismiss:content:)>>.0, _TraitWritingModifier<TransitionTraitKey>>> and conformance <> _ConditionalContent<A, B>();
    lazy protocol witness table accessor for type _ConditionalContent<ModifiedContent<<<opaque return type of View.sheet<A>(isPresented:onDismiss:content:)>>.0, _TraitWritingModifier<TransitionTraitKey>>, ModifiedContent<ViewControllerWrapper?, _TraitWritingModifier<TransitionTraitKey>>> and conformance <> _ConditionalContent<A, B>();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type _ConditionalContent<_ConditionalContent<ModifiedContent<ZStack<TupleView<(ModifiedContent<Color, _SafeAreaIgnoringLayout>, MirroredStartWatchAppView)>>, _TraitWritingModifier<TransitionTraitKey>>, ModifiedContent<<<opaque return type of View.sheet<A>(isPresented:onDismiss:content:)>>.0, _TraitWritingModifier<TransitionTraitKey>>>, _ConditionalContent<ModifiedContent<<<opaque return type of View.sheet<A>(isPresented:onDismiss:content:)>>.0, _TraitWritingModifier<TransitionTraitKey>>, ModifiedContent<ViewControllerWrapper?, _TraitWritingModifier<TransitionTraitKey>>>> and conformance <> _ConditionalContent<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type _ConditionalContent<ModifiedContent<ZStack<TupleView<(ModifiedContent<Color, _SafeAreaIgnoringLayout>, MirroredStartWatchAppView)>>, _TraitWritingModifier<TransitionTraitKey>>, ModifiedContent<<<opaque return type of View.sheet<A>(isPresented:onDismiss:content:)>>.0, _TraitWritingModifier<TransitionTraitKey>>> and conformance <> _ConditionalContent<A, B>()
{
  result = lazy protocol witness table cache variable for type _ConditionalContent<ModifiedContent<ZStack<TupleView<(ModifiedContent<Color, _SafeAreaIgnoringLayout>, MirroredStartWatchAppView)>>, _TraitWritingModifier<TransitionTraitKey>>, ModifiedContent<<<opaque return type of View.sheet<A>(isPresented:onDismiss:content:)>>.0, _TraitWritingModifier<TransitionTraitKey>>> and conformance <> _ConditionalContent<A, B>;
  if (!lazy protocol witness table cache variable for type _ConditionalContent<ModifiedContent<ZStack<TupleView<(ModifiedContent<Color, _SafeAreaIgnoringLayout>, MirroredStartWatchAppView)>>, _TraitWritingModifier<TransitionTraitKey>>, ModifiedContent<<<opaque return type of View.sheet<A>(isPresented:onDismiss:content:)>>.0, _TraitWritingModifier<TransitionTraitKey>>> and conformance <> _ConditionalContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI19_ConditionalContentVyAA08ModifiedD0VyAA6ZStackVyAA9TupleViewVyAEyAA5ColorVAA23_SafeAreaIgnoringLayoutVG_07WorkoutB0021MirroredStartWatchAppH0VtGGAA21_TraitWritingModifierVyAA010TransitionS3KeyVGGAEyAA0H0PAAE5sheet11isPresented9onDismiss7contentQrAA7BindingVySbG_yycSgqd__yctAaZRd__lFQOyA_AAEA0_A1_A2_A3_QrA6__A7_qd__yctAaZRd__lFQOyAEyAGyANGAA017_AppearanceActionU0VG_AEyAEyAO027SafetyMonitorMessageComposeH0VAA012_EnvironmentwtU0VyAKSgGGAA01_jk7RegionslM0VGQo__AEyAEy013SafetyMonitorB0027CheckInOnboardingNavigationH0VA17_GA20_GQo_AXGGMd);
    lazy protocol witness table accessor for type ModifiedContent<ZStack<TupleView<(ModifiedContent<Color, _SafeAreaIgnoringLayout>, MirroredStartWatchAppView)>>, _TraitWritingModifier<TransitionTraitKey>> and conformance <> ModifiedContent<A, B>();
    lazy protocol witness table accessor for type ModifiedContent<<<opaque return type of View.sheet<A>(isPresented:onDismiss:content:)>>.0, _TraitWritingModifier<TransitionTraitKey>> and conformance <> ModifiedContent<A, B>();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type _ConditionalContent<ModifiedContent<ZStack<TupleView<(ModifiedContent<Color, _SafeAreaIgnoringLayout>, MirroredStartWatchAppView)>>, _TraitWritingModifier<TransitionTraitKey>>, ModifiedContent<<<opaque return type of View.sheet<A>(isPresented:onDismiss:content:)>>.0, _TraitWritingModifier<TransitionTraitKey>>> and conformance <> _ConditionalContent<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<ZStack<TupleView<(ModifiedContent<Color, _SafeAreaIgnoringLayout>, MirroredStartWatchAppView)>>, _TraitWritingModifier<TransitionTraitKey>> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<ZStack<TupleView<(ModifiedContent<Color, _SafeAreaIgnoringLayout>, MirroredStartWatchAppView)>>, _TraitWritingModifier<TransitionTraitKey>> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<ZStack<TupleView<(ModifiedContent<Color, _SafeAreaIgnoringLayout>, MirroredStartWatchAppView)>>, _TraitWritingModifier<TransitionTraitKey>> and conformance <> ModifiedContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyAA6ZStackVyAA9TupleViewVyACyAA5ColorVAA23_SafeAreaIgnoringLayoutVG_07WorkoutB0021MirroredStartWatchAppG0VtGGAA21_TraitWritingModifierVyAA010TransitionR3KeyVGGMd);
    lazy protocol witness table accessor for type ZStack<_ConditionalContent<_ConditionalContent<_ConditionalContent<ModifiedContent<ZStack<TupleView<(ModifiedContent<Color, _SafeAreaIgnoringLayout>, MirroredStartWatchAppView)>>, _TraitWritingModifier<TransitionTraitKey>>, ModifiedContent<<<opaque return type of View.sheet<A>(isPresented:onDismiss:content:)>>.0, _TraitWritingModifier<TransitionTraitKey>>>, _ConditionalContent<ModifiedContent<<<opaque return type of View.sheet<A>(isPresented:onDismiss:content:)>>.0, _TraitWritingModifier<TransitionTraitKey>>, ModifiedContent<ViewControllerWrapper?, _TraitWritingModifier<TransitionTraitKey>>>>, _ConditionalContent<ModifiedContent<NavigationStack<NavigationPath, <<opaque return type of View.toolbar<A>(content:)>>.0>, _TraitWritingModifier<TransitionTraitKey>>, ModifiedContent<InSessionView, _TraitWritingModifier<TransitionTraitKey>>>>> and conformance ZStack<A>(&lazy protocol witness table cache variable for type ZStack<TupleView<(ModifiedContent<Color, _SafeAreaIgnoringLayout>, MirroredStartWatchAppView)>> and conformance ZStack<A>, &_s7SwiftUI6ZStackVyAA9TupleViewVyAA15ModifiedContentVyAA5ColorVAA23_SafeAreaIgnoringLayoutVG_07WorkoutB0021MirroredStartWatchAppE0VtGGMd);
    lazy protocol witness table accessor for type ZStack<_ConditionalContent<_ConditionalContent<_ConditionalContent<ModifiedContent<ZStack<TupleView<(ModifiedContent<Color, _SafeAreaIgnoringLayout>, MirroredStartWatchAppView)>>, _TraitWritingModifier<TransitionTraitKey>>, ModifiedContent<<<opaque return type of View.sheet<A>(isPresented:onDismiss:content:)>>.0, _TraitWritingModifier<TransitionTraitKey>>>, _ConditionalContent<ModifiedContent<<<opaque return type of View.sheet<A>(isPresented:onDismiss:content:)>>.0, _TraitWritingModifier<TransitionTraitKey>>, ModifiedContent<ViewControllerWrapper?, _TraitWritingModifier<TransitionTraitKey>>>>, _ConditionalContent<ModifiedContent<NavigationStack<NavigationPath, <<opaque return type of View.toolbar<A>(content:)>>.0>, _TraitWritingModifier<TransitionTraitKey>>, ModifiedContent<InSessionView, _TraitWritingModifier<TransitionTraitKey>>>>> and conformance ZStack<A>(&lazy protocol witness table cache variable for type _TraitWritingModifier<TransitionTraitKey> and conformance _TraitWritingModifier<A>, &_s7SwiftUI21_TraitWritingModifierVyAA010TransitionC3KeyVGMd);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<ZStack<TupleView<(ModifiedContent<Color, _SafeAreaIgnoringLayout>, MirroredStartWatchAppView)>>, _TraitWritingModifier<TransitionTraitKey>> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<<<opaque return type of View.sheet<A>(isPresented:onDismiss:content:)>>.0, _TraitWritingModifier<TransitionTraitKey>> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<<<opaque return type of View.sheet<A>(isPresented:onDismiss:content:)>>.0, _TraitWritingModifier<TransitionTraitKey>> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<<<opaque return type of View.sheet<A>(isPresented:onDismiss:content:)>>.0, _TraitWritingModifier<TransitionTraitKey>> and conformance <> ModifiedContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyAA4ViewPAAE5sheet11isPresented9onDismiss7contentQrAA7BindingVySbG_yycSgqd__yctAaDRd__lFQOyAeAEAfghIQrAL_AMqd__yctAaDRd__lFQOyACyAA6ZStackVyACyAA5ColorVAA23_SafeAreaIgnoringLayoutVGGAA25_AppearanceActionModifierVG_ACyACy07WorkoutB0027SafetyMonitorMessageComposeE0VAA022_EnvironmentKeyWritingU0VyAQSgGGAA01_op7RegionsqR0VGQo__ACyACy0wxB0027CheckInOnboardingNavigationE0VA3_GA6_GQo_AA013_TraitWritingU0VyAA18TransitionTraitKeyVGGMd);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI4ViewPAAE5sheet11isPresented9onDismiss7contentQrAA7BindingVySbG_yycSgqd__yctAaBRd__lFQOyAA15ModifiedContentVyAA6ZStackVyAMyAA5ColorVAA23_SafeAreaIgnoringLayoutVGGAA25_AppearanceActionModifierVG_AMyAMy07WorkoutB0027SafetyMonitorMessageComposeC0VAA022_EnvironmentKeyWritingU0VyAQSgGGAA01_op7RegionsqR0VGQo_Md);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyACy013SafetyMonitorB031CheckInOnboardingNavigationViewVAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGAA30_SafeAreaRegionsIgnoringLayoutVGMd);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyAA6ZStackVyACyAA5ColorVAA23_SafeAreaIgnoringLayoutVGGAA25_AppearanceActionModifierVGMd);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyACy07WorkoutB031SafetyMonitorMessageComposeViewVAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGAA30_SafeAreaRegionsIgnoringLayoutVGMd);
    lazy protocol witness table accessor for type ModifiedContent<ZStack<ModifiedContent<Color, _SafeAreaIgnoringLayout>>, _AppearanceActionModifier> and conformance <> ModifiedContent<A, B>();
    lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<SafetyMonitorMessageComposeView, _EnvironmentKeyWritingModifier<Color?>>, _SafeAreaRegionsIgnoringLayout> and conformance <> ModifiedContent<A, B>();
    swift_getOpaqueTypeConformance2();
    lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<CheckInOnboardingNavigationView, _EnvironmentKeyWritingModifier<Color?>>, _SafeAreaRegionsIgnoringLayout> and conformance <> ModifiedContent<A, B>();
    swift_getOpaqueTypeConformance2();
    lazy protocol witness table accessor for type ZStack<_ConditionalContent<_ConditionalContent<_ConditionalContent<ModifiedContent<ZStack<TupleView<(ModifiedContent<Color, _SafeAreaIgnoringLayout>, MirroredStartWatchAppView)>>, _TraitWritingModifier<TransitionTraitKey>>, ModifiedContent<<<opaque return type of View.sheet<A>(isPresented:onDismiss:content:)>>.0, _TraitWritingModifier<TransitionTraitKey>>>, _ConditionalContent<ModifiedContent<<<opaque return type of View.sheet<A>(isPresented:onDismiss:content:)>>.0, _TraitWritingModifier<TransitionTraitKey>>, ModifiedContent<ViewControllerWrapper?, _TraitWritingModifier<TransitionTraitKey>>>>, _ConditionalContent<ModifiedContent<NavigationStack<NavigationPath, <<opaque return type of View.toolbar<A>(content:)>>.0>, _TraitWritingModifier<TransitionTraitKey>>, ModifiedContent<InSessionView, _TraitWritingModifier<TransitionTraitKey>>>>> and conformance ZStack<A>(&lazy protocol witness table cache variable for type _TraitWritingModifier<TransitionTraitKey> and conformance _TraitWritingModifier<A>, &_s7SwiftUI21_TraitWritingModifierVyAA010TransitionC3KeyVGMd);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<<<opaque return type of View.sheet<A>(isPresented:onDismiss:content:)>>.0, _TraitWritingModifier<TransitionTraitKey>> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type ModifiedContent<<<opaque return type of View.sheet<A>(isPresented:onDismiss:content:)>>.0, _TraitWritingModifier<TransitionTraitKey>> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<<<opaque return type of View.sheet<A>(isPresented:onDismiss:content:)>>.0, _TraitWritingModifier<TransitionTraitKey>> and conformance <> ModifiedContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyAA4ViewPAAE5sheet11isPresented9onDismiss7contentQrAA7BindingVySbG_yycSgqd__yctAaDRd__lFQOyAeAEAfghIQrAL_AMqd__yctAaDRd__lFQOyACy07WorkoutB009CountdownE0VAA25_AppearanceActionModifierVG_ACyACyAN027SafetyMonitorMessageComposeE0VAA022_EnvironmentKeyWritingQ0VyAA5ColorVSgGGAA30_SafeAreaRegionsIgnoringLayoutVGQo__ACyACy0rsB0027CheckInOnboardingNavigationE0VA_GA2_GQo_AA06_TraitxQ0VyAA015TransitionTraitW0VGGMd);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI4ViewPAAE5sheet11isPresented9onDismiss7contentQrAA7BindingVySbG_yycSgqd__yctAaBRd__lFQOyAA15ModifiedContentVy07WorkoutB009CountdownC0VAA25_AppearanceActionModifierVG_AMyAMyAN027SafetyMonitorMessageComposeC0VAA022_EnvironmentKeyWritingQ0VyAA5ColorVSgGGAA30_SafeAreaRegionsIgnoringLayoutVGQo_Md);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyACy013SafetyMonitorB031CheckInOnboardingNavigationViewVAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGAA30_SafeAreaRegionsIgnoringLayoutVGMd);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVy07WorkoutB013CountdownViewVAA25_AppearanceActionModifierVGMd);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyACy07WorkoutB031SafetyMonitorMessageComposeViewVAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGAA30_SafeAreaRegionsIgnoringLayoutVGMd);
    lazy protocol witness table accessor for type ModifiedContent<CountdownView, _AppearanceActionModifier> and conformance <> ModifiedContent<A, B>();
    lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<SafetyMonitorMessageComposeView, _EnvironmentKeyWritingModifier<Color?>>, _SafeAreaRegionsIgnoringLayout> and conformance <> ModifiedContent<A, B>();
    swift_getOpaqueTypeConformance2();
    lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<CheckInOnboardingNavigationView, _EnvironmentKeyWritingModifier<Color?>>, _SafeAreaRegionsIgnoringLayout> and conformance <> ModifiedContent<A, B>();
    swift_getOpaqueTypeConformance2();
    lazy protocol witness table accessor for type ZStack<_ConditionalContent<_ConditionalContent<_ConditionalContent<ModifiedContent<ZStack<TupleView<(ModifiedContent<Color, _SafeAreaIgnoringLayout>, MirroredStartWatchAppView)>>, _TraitWritingModifier<TransitionTraitKey>>, ModifiedContent<<<opaque return type of View.sheet<A>(isPresented:onDismiss:content:)>>.0, _TraitWritingModifier<TransitionTraitKey>>>, _ConditionalContent<ModifiedContent<<<opaque return type of View.sheet<A>(isPresented:onDismiss:content:)>>.0, _TraitWritingModifier<TransitionTraitKey>>, ModifiedContent<ViewControllerWrapper?, _TraitWritingModifier<TransitionTraitKey>>>>, _ConditionalContent<ModifiedContent<NavigationStack<NavigationPath, <<opaque return type of View.toolbar<A>(content:)>>.0>, _TraitWritingModifier<TransitionTraitKey>>, ModifiedContent<InSessionView, _TraitWritingModifier<TransitionTraitKey>>>>> and conformance ZStack<A>(&lazy protocol witness table cache variable for type _TraitWritingModifier<TransitionTraitKey> and conformance _TraitWritingModifier<A>, &_s7SwiftUI21_TraitWritingModifierVyAA010TransitionC3KeyVGMd);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<<<opaque return type of View.sheet<A>(isPresented:onDismiss:content:)>>.0, _TraitWritingModifier<TransitionTraitKey>> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<ZStack<ModifiedContent<Color, _SafeAreaIgnoringLayout>>, _AppearanceActionModifier> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<ZStack<ModifiedContent<Color, _SafeAreaIgnoringLayout>>, _AppearanceActionModifier> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<ZStack<ModifiedContent<Color, _SafeAreaIgnoringLayout>>, _AppearanceActionModifier> and conformance <> ModifiedContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyAA6ZStackVyACyAA5ColorVAA23_SafeAreaIgnoringLayoutVGGAA25_AppearanceActionModifierVGMd);
    lazy protocol witness table accessor for type ZStack<_ConditionalContent<_ConditionalContent<_ConditionalContent<ModifiedContent<ZStack<TupleView<(ModifiedContent<Color, _SafeAreaIgnoringLayout>, MirroredStartWatchAppView)>>, _TraitWritingModifier<TransitionTraitKey>>, ModifiedContent<<<opaque return type of View.sheet<A>(isPresented:onDismiss:content:)>>.0, _TraitWritingModifier<TransitionTraitKey>>>, _ConditionalContent<ModifiedContent<<<opaque return type of View.sheet<A>(isPresented:onDismiss:content:)>>.0, _TraitWritingModifier<TransitionTraitKey>>, ModifiedContent<ViewControllerWrapper?, _TraitWritingModifier<TransitionTraitKey>>>>, _ConditionalContent<ModifiedContent<NavigationStack<NavigationPath, <<opaque return type of View.toolbar<A>(content:)>>.0>, _TraitWritingModifier<TransitionTraitKey>>, ModifiedContent<InSessionView, _TraitWritingModifier<TransitionTraitKey>>>>> and conformance ZStack<A>(&lazy protocol witness table cache variable for type ZStack<ModifiedContent<Color, _SafeAreaIgnoringLayout>> and conformance ZStack<A>, &_s7SwiftUI6ZStackVyAA15ModifiedContentVyAA5ColorVAA23_SafeAreaIgnoringLayoutVGGMd);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<ZStack<ModifiedContent<Color, _SafeAreaIgnoringLayout>>, _AppearanceActionModifier> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<SafetyMonitorMessageComposeView, _EnvironmentKeyWritingModifier<Color?>>, _SafeAreaRegionsIgnoringLayout> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<SafetyMonitorMessageComposeView, _EnvironmentKeyWritingModifier<Color?>>, _SafeAreaRegionsIgnoringLayout> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<SafetyMonitorMessageComposeView, _EnvironmentKeyWritingModifier<Color?>>, _SafeAreaRegionsIgnoringLayout> and conformance <> ModifiedContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyACy07WorkoutB031SafetyMonitorMessageComposeViewVAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGAA30_SafeAreaRegionsIgnoringLayoutVGMd);
    lazy protocol witness table accessor for type ModifiedContent<SafetyMonitorMessageComposeView, _EnvironmentKeyWritingModifier<Color?>> and conformance <> ModifiedContent<A, B>();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<SafetyMonitorMessageComposeView, _EnvironmentKeyWritingModifier<Color?>>, _SafeAreaRegionsIgnoringLayout> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<SafetyMonitorMessageComposeView, _EnvironmentKeyWritingModifier<Color?>> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<SafetyMonitorMessageComposeView, _EnvironmentKeyWritingModifier<Color?>> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<SafetyMonitorMessageComposeView, _EnvironmentKeyWritingModifier<Color?>> and conformance <> ModifiedContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVy07WorkoutB031SafetyMonitorMessageComposeViewVAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGMd);
    lazy protocol witness table accessor for type SafetyMonitorMessageComposeView and conformance SafetyMonitorMessageComposeView();
    lazy protocol witness table accessor for type ZStack<_ConditionalContent<_ConditionalContent<_ConditionalContent<ModifiedContent<ZStack<TupleView<(ModifiedContent<Color, _SafeAreaIgnoringLayout>, MirroredStartWatchAppView)>>, _TraitWritingModifier<TransitionTraitKey>>, ModifiedContent<<<opaque return type of View.sheet<A>(isPresented:onDismiss:content:)>>.0, _TraitWritingModifier<TransitionTraitKey>>>, _ConditionalContent<ModifiedContent<<<opaque return type of View.sheet<A>(isPresented:onDismiss:content:)>>.0, _TraitWritingModifier<TransitionTraitKey>>, ModifiedContent<ViewControllerWrapper?, _TraitWritingModifier<TransitionTraitKey>>>>, _ConditionalContent<ModifiedContent<NavigationStack<NavigationPath, <<opaque return type of View.toolbar<A>(content:)>>.0>, _TraitWritingModifier<TransitionTraitKey>>, ModifiedContent<InSessionView, _TraitWritingModifier<TransitionTraitKey>>>>> and conformance ZStack<A>(&lazy protocol witness table cache variable for type _EnvironmentKeyWritingModifier<Color?> and conformance _EnvironmentKeyWritingModifier<A>, &_s7SwiftUI30_EnvironmentKeyWritingModifierVyAA5ColorVSgGMd);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<SafetyMonitorMessageComposeView, _EnvironmentKeyWritingModifier<Color?>> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type SafetyMonitorMessageComposeView and conformance SafetyMonitorMessageComposeView()
{
  result = lazy protocol witness table cache variable for type SafetyMonitorMessageComposeView and conformance SafetyMonitorMessageComposeView;
  if (!lazy protocol witness table cache variable for type SafetyMonitorMessageComposeView and conformance SafetyMonitorMessageComposeView)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SafetyMonitorMessageComposeView and conformance SafetyMonitorMessageComposeView);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type SafetyMonitorMessageComposeView and conformance SafetyMonitorMessageComposeView;
  if (!lazy protocol witness table cache variable for type SafetyMonitorMessageComposeView and conformance SafetyMonitorMessageComposeView)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SafetyMonitorMessageComposeView and conformance SafetyMonitorMessageComposeView);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<CheckInOnboardingNavigationView, _EnvironmentKeyWritingModifier<Color?>>, _SafeAreaRegionsIgnoringLayout> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<CheckInOnboardingNavigationView, _EnvironmentKeyWritingModifier<Color?>>, _SafeAreaRegionsIgnoringLayout> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<CheckInOnboardingNavigationView, _EnvironmentKeyWritingModifier<Color?>>, _SafeAreaRegionsIgnoringLayout> and conformance <> ModifiedContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyACy013SafetyMonitorB031CheckInOnboardingNavigationViewVAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGAA30_SafeAreaRegionsIgnoringLayoutVGMd);
    lazy protocol witness table accessor for type ModifiedContent<CheckInOnboardingNavigationView, _EnvironmentKeyWritingModifier<Color?>> and conformance <> ModifiedContent<A, B>();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<CheckInOnboardingNavigationView, _EnvironmentKeyWritingModifier<Color?>>, _SafeAreaRegionsIgnoringLayout> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<CheckInOnboardingNavigationView, _EnvironmentKeyWritingModifier<Color?>> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<CheckInOnboardingNavigationView, _EnvironmentKeyWritingModifier<Color?>> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<CheckInOnboardingNavigationView, _EnvironmentKeyWritingModifier<Color?>> and conformance <> ModifiedContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVy013SafetyMonitorB031CheckInOnboardingNavigationViewVAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGMd);
    _s11WorkoutCore19LowPowerModeMonitorCAC7Combine16ObservableObjectAAWlTm_0(&lazy protocol witness table cache variable for type CheckInOnboardingNavigationView and conformance CheckInOnboardingNavigationView, MEMORY[0x277D4AF38]);
    lazy protocol witness table accessor for type ZStack<_ConditionalContent<_ConditionalContent<_ConditionalContent<ModifiedContent<ZStack<TupleView<(ModifiedContent<Color, _SafeAreaIgnoringLayout>, MirroredStartWatchAppView)>>, _TraitWritingModifier<TransitionTraitKey>>, ModifiedContent<<<opaque return type of View.sheet<A>(isPresented:onDismiss:content:)>>.0, _TraitWritingModifier<TransitionTraitKey>>>, _ConditionalContent<ModifiedContent<<<opaque return type of View.sheet<A>(isPresented:onDismiss:content:)>>.0, _TraitWritingModifier<TransitionTraitKey>>, ModifiedContent<ViewControllerWrapper?, _TraitWritingModifier<TransitionTraitKey>>>>, _ConditionalContent<ModifiedContent<NavigationStack<NavigationPath, <<opaque return type of View.toolbar<A>(content:)>>.0>, _TraitWritingModifier<TransitionTraitKey>>, ModifiedContent<InSessionView, _TraitWritingModifier<TransitionTraitKey>>>>> and conformance ZStack<A>(&lazy protocol witness table cache variable for type _EnvironmentKeyWritingModifier<Color?> and conformance _EnvironmentKeyWritingModifier<A>, &_s7SwiftUI30_EnvironmentKeyWritingModifierVyAA5ColorVSgGMd);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<CheckInOnboardingNavigationView, _EnvironmentKeyWritingModifier<Color?>> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type _ConditionalContent<ModifiedContent<<<opaque return type of View.sheet<A>(isPresented:onDismiss:content:)>>.0, _TraitWritingModifier<TransitionTraitKey>>, ModifiedContent<ViewControllerWrapper?, _TraitWritingModifier<TransitionTraitKey>>> and conformance <> _ConditionalContent<A, B>()
{
  result = lazy protocol witness table cache variable for type _ConditionalContent<ModifiedContent<<<opaque return type of View.sheet<A>(isPresented:onDismiss:content:)>>.0, _TraitWritingModifier<TransitionTraitKey>>, ModifiedContent<ViewControllerWrapper?, _TraitWritingModifier<TransitionTraitKey>>> and conformance <> _ConditionalContent<A, B>;
  if (!lazy protocol witness table cache variable for type _ConditionalContent<ModifiedContent<<<opaque return type of View.sheet<A>(isPresented:onDismiss:content:)>>.0, _TraitWritingModifier<TransitionTraitKey>>, ModifiedContent<ViewControllerWrapper?, _TraitWritingModifier<TransitionTraitKey>>> and conformance <> _ConditionalContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI19_ConditionalContentVyAA08ModifiedD0VyAA4ViewPAAE5sheet11isPresented9onDismiss7contentQrAA7BindingVySbG_yycSgqd__yctAaFRd__lFQOyAgAEAhijKQrAN_AOqd__yctAaFRd__lFQOyAEy07WorkoutB009CountdownF0VAA25_AppearanceActionModifierVG_AEyAEyAP027SafetyMonitorMessageComposeF0VAA022_EnvironmentKeyWritingR0VyAA5ColorVSgGGAA30_SafeAreaRegionsIgnoringLayoutVGQo__AEyAEy0stB0027CheckInOnboardingNavigationF0VA1_GA4_GQo_AA06_TraityR0VyAA015TransitionTraitX0VGGAEyAP0F17ControllerWrapperVSgA17_GGMd);
    lazy protocol witness table accessor for type ModifiedContent<<<opaque return type of View.sheet<A>(isPresented:onDismiss:content:)>>.0, _TraitWritingModifier<TransitionTraitKey>> and conformance <> ModifiedContent<A, B>();
    lazy protocol witness table accessor for type ModifiedContent<ViewControllerWrapper?, _TraitWritingModifier<TransitionTraitKey>> and conformance <> ModifiedContent<A, B>();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type _ConditionalContent<ModifiedContent<<<opaque return type of View.sheet<A>(isPresented:onDismiss:content:)>>.0, _TraitWritingModifier<TransitionTraitKey>>, ModifiedContent<ViewControllerWrapper?, _TraitWritingModifier<TransitionTraitKey>>> and conformance <> _ConditionalContent<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<CountdownView, _AppearanceActionModifier> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<CountdownView, _AppearanceActionModifier> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<CountdownView, _AppearanceActionModifier> and conformance <> ModifiedContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVy07WorkoutB013CountdownViewVAA25_AppearanceActionModifierVGMd);
    lazy protocol witness table accessor for type CountdownView and conformance CountdownView();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<CountdownView, _AppearanceActionModifier> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type CountdownView and conformance CountdownView()
{
  result = lazy protocol witness table cache variable for type CountdownView and conformance CountdownView;
  if (!lazy protocol witness table cache variable for type CountdownView and conformance CountdownView)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CountdownView and conformance CountdownView);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<ViewControllerWrapper?, _TraitWritingModifier<TransitionTraitKey>> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<ViewControllerWrapper?, _TraitWritingModifier<TransitionTraitKey>> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<ViewControllerWrapper?, _TraitWritingModifier<TransitionTraitKey>> and conformance <> ModifiedContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVy07WorkoutB021ViewControllerWrapperVSgAA21_TraitWritingModifierVyAA010TransitionI3KeyVGGMd);
    lazy protocol witness table accessor for type ViewControllerWrapper? and conformance <A> A?();
    lazy protocol witness table accessor for type ZStack<_ConditionalContent<_ConditionalContent<_ConditionalContent<ModifiedContent<ZStack<TupleView<(ModifiedContent<Color, _SafeAreaIgnoringLayout>, MirroredStartWatchAppView)>>, _TraitWritingModifier<TransitionTraitKey>>, ModifiedContent<<<opaque return type of View.sheet<A>(isPresented:onDismiss:content:)>>.0, _TraitWritingModifier<TransitionTraitKey>>>, _ConditionalContent<ModifiedContent<<<opaque return type of View.sheet<A>(isPresented:onDismiss:content:)>>.0, _TraitWritingModifier<TransitionTraitKey>>, ModifiedContent<ViewControllerWrapper?, _TraitWritingModifier<TransitionTraitKey>>>>, _ConditionalContent<ModifiedContent<NavigationStack<NavigationPath, <<opaque return type of View.toolbar<A>(content:)>>.0>, _TraitWritingModifier<TransitionTraitKey>>, ModifiedContent<InSessionView, _TraitWritingModifier<TransitionTraitKey>>>>> and conformance ZStack<A>(&lazy protocol witness table cache variable for type _TraitWritingModifier<TransitionTraitKey> and conformance _TraitWritingModifier<A>, &_s7SwiftUI21_TraitWritingModifierVyAA010TransitionC3KeyVGMd);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<ViewControllerWrapper?, _TraitWritingModifier<TransitionTraitKey>> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ViewControllerWrapper? and conformance <A> A?()
{
  result = lazy protocol witness table cache variable for type ViewControllerWrapper? and conformance <A> A?;
  if (!lazy protocol witness table cache variable for type ViewControllerWrapper? and conformance <A> A?)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s9WorkoutUI21ViewControllerWrapperVSgMd);
    lazy protocol witness table accessor for type ViewControllerWrapper and conformance ViewControllerWrapper();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ViewControllerWrapper? and conformance <A> A?);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ViewControllerWrapper and conformance ViewControllerWrapper()
{
  result = lazy protocol witness table cache variable for type ViewControllerWrapper and conformance ViewControllerWrapper;
  if (!lazy protocol witness table cache variable for type ViewControllerWrapper and conformance ViewControllerWrapper)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ViewControllerWrapper and conformance ViewControllerWrapper);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type ViewControllerWrapper and conformance ViewControllerWrapper;
  if (!lazy protocol witness table cache variable for type ViewControllerWrapper and conformance ViewControllerWrapper)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ViewControllerWrapper and conformance ViewControllerWrapper);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type _ConditionalContent<ModifiedContent<NavigationStack<NavigationPath, <<opaque return type of View.toolbar<A>(content:)>>.0>, _TraitWritingModifier<TransitionTraitKey>>, ModifiedContent<InSessionView, _TraitWritingModifier<TransitionTraitKey>>> and conformance <> _ConditionalContent<A, B>()
{
  result = lazy protocol witness table cache variable for type _ConditionalContent<ModifiedContent<NavigationStack<NavigationPath, <<opaque return type of View.toolbar<A>(content:)>>.0>, _TraitWritingModifier<TransitionTraitKey>>, ModifiedContent<InSessionView, _TraitWritingModifier<TransitionTraitKey>>> and conformance <> _ConditionalContent<A, B>;
  if (!lazy protocol witness table cache variable for type _ConditionalContent<ModifiedContent<NavigationStack<NavigationPath, <<opaque return type of View.toolbar<A>(content:)>>.0>, _TraitWritingModifier<TransitionTraitKey>>, ModifiedContent<InSessionView, _TraitWritingModifier<TransitionTraitKey>>> and conformance <> _ConditionalContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI19_ConditionalContentVyAA08ModifiedD0VyAA15NavigationStackVyAA0F4PathVAA4ViewPAAE7toolbar7contentQrqd__yXE_tAA07ToolbarD0Rd__lFQOyAEyAA14GeometryReaderVyAA06ScrollI0VyAEyAEyAA6VStackVyAA05TupleI0VyAA6SpacerV_ATyAVyAEy07WorkoutB0013CountdownIconI0VAA14_PaddingLayoutVG_AEyAEyAEyAEyAA4TextVAA30_EnvironmentKeyWritingModifierVyAA0X9AlignmentOGGA1_GA1_GAA31AccessibilityAttachmentModifierVGSgA12_SgAA7ForEachVySaySi6offset_SS7elementtGSiAEyAEyAEyAEyAkAE11buttonStyleyQrqd__AA20PrimitiveButtonStyleRd__lFQOyAA6ButtonVyAEyA4_AA010_FlexFrameW0VGG_AA28BorderedProminentButtonStyleVQo_A6_yAA11ControlSizeOGGA6_yAA13AnyShapeStyleVSgGGAA11_ClipEffectVyAA16RoundedRectangleVGGA1_GGSgtGGAXtGGA28_GA28_GGGAA024_SafeAreaRegionsIgnoringW0VG_AA0lD7BuilderV10buildBlockyQrxAaNRzlFZQOy_AA0L4ItemVyytAEyA26_yAA18DefaultButtonLabelVGA6_yAA5ColorVSgGGGQo_Qo_GAA21_TraitWritingModifierVyAA015TransitionTraitZ0VGGAEyAY09InSessionI0VA84_GGMd);
    lazy protocol witness table accessor for type ModifiedContent<NavigationStack<NavigationPath, <<opaque return type of View.toolbar<A>(content:)>>.0>, _TraitWritingModifier<TransitionTraitKey>> and conformance <> ModifiedContent<A, B>();
    lazy protocol witness table accessor for type ModifiedContent<InSessionView, _TraitWritingModifier<TransitionTraitKey>> and conformance <> ModifiedContent<A, B>();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type _ConditionalContent<ModifiedContent<NavigationStack<NavigationPath, <<opaque return type of View.toolbar<A>(content:)>>.0>, _TraitWritingModifier<TransitionTraitKey>>, ModifiedContent<InSessionView, _TraitWritingModifier<TransitionTraitKey>>> and conformance <> _ConditionalContent<A, B>);
  }

  return result;
}

uint64_t outlined init with copy of SessionControlsSheet(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t outlined init with take of SessionView(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SessionView();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t partial apply for closure #2 in SessionView.safetyCheckInView()(uint64_t (*a1)(uint64_t))
{
  v2 = *(type metadata accessor for SessionView() - 8);
  v3 = v1 + ((*(v2 + 80) + 16) & ~*(v2 + 80));

  return a1(v3);
}

uint64_t partial apply for closure #6 in SessionView.safetyCheckInView()@<X0>(uint64_t a1@<X8>)
{
  return partial apply for closure #6 in SessionView.safetyCheckInView()(a1);
}

{
  v3 = *(type metadata accessor for SessionView() - 8);
  return closure #6 in SessionView.safetyCheckInView()(v1 + ((*(v3 + 80) + 16) & ~*(v3 + 80)), a1);
}

uint64_t partial apply for closure #1 in closure #2 in SessionView.safetyCheckInView()(uint64_t a1, uint64_t (*a2)(uint64_t, uint64_t))
{
  v4 = *(type metadata accessor for SessionView() - 8);
  v5 = v2 + ((*(v4 + 80) + 16) & ~*(v4 + 80));

  return a2(a1, v5);
}

uint64_t partial apply for closure #1 in closure #1 in SessionView.alertStackView()()
{
  type metadata accessor for SessionView();

  return closure #1 in closure #1 in SessionView.alertStackView()();
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<Button<DefaultButtonLabel>, _EnvironmentKeyWritingModifier<Color?>> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<Button<DefaultButtonLabel>, _EnvironmentKeyWritingModifier<Color?>> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<Button<DefaultButtonLabel>, _EnvironmentKeyWritingModifier<Color?>> and conformance <> ModifiedContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyAA6ButtonVyAA07DefaultE5LabelVGAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGMd);
    lazy protocol witness table accessor for type ZStack<_ConditionalContent<_ConditionalContent<_ConditionalContent<ModifiedContent<ZStack<TupleView<(ModifiedContent<Color, _SafeAreaIgnoringLayout>, MirroredStartWatchAppView)>>, _TraitWritingModifier<TransitionTraitKey>>, ModifiedContent<<<opaque return type of View.sheet<A>(isPresented:onDismiss:content:)>>.0, _TraitWritingModifier<TransitionTraitKey>>>, _ConditionalContent<ModifiedContent<<<opaque return type of View.sheet<A>(isPresented:onDismiss:content:)>>.0, _TraitWritingModifier<TransitionTraitKey>>, ModifiedContent<ViewControllerWrapper?, _TraitWritingModifier<TransitionTraitKey>>>>, _ConditionalContent<ModifiedContent<NavigationStack<NavigationPath, <<opaque return type of View.toolbar<A>(content:)>>.0>, _TraitWritingModifier<TransitionTraitKey>>, ModifiedContent<InSessionView, _TraitWritingModifier<TransitionTraitKey>>>>> and conformance ZStack<A>(&lazy protocol witness table cache variable for type Button<DefaultButtonLabel> and conformance Button<A>, &_s7SwiftUI6ButtonVyAA07DefaultC5LabelVGMd);
    lazy protocol witness table accessor for type ZStack<_ConditionalContent<_ConditionalContent<_ConditionalContent<ModifiedContent<ZStack<TupleView<(ModifiedContent<Color, _SafeAreaIgnoringLayout>, MirroredStartWatchAppView)>>, _TraitWritingModifier<TransitionTraitKey>>, ModifiedContent<<<opaque return type of View.sheet<A>(isPresented:onDismiss:content:)>>.0, _TraitWritingModifier<TransitionTraitKey>>>, _ConditionalContent<ModifiedContent<<<opaque return type of View.sheet<A>(isPresented:onDismiss:content:)>>.0, _TraitWritingModifier<TransitionTraitKey>>, ModifiedContent<ViewControllerWrapper?, _TraitWritingModifier<TransitionTraitKey>>>>, _ConditionalContent<ModifiedContent<NavigationStack<NavigationPath, <<opaque return type of View.toolbar<A>(content:)>>.0>, _TraitWritingModifier<TransitionTraitKey>>, ModifiedContent<InSessionView, _TraitWritingModifier<TransitionTraitKey>>>>> and conformance ZStack<A>(&lazy protocol witness table cache variable for type _EnvironmentKeyWritingModifier<Color?> and conformance _EnvironmentKeyWritingModifier<A>, &_s7SwiftUI30_EnvironmentKeyWritingModifierVyAA5ColorVSgGMd);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<Button<DefaultButtonLabel>, _EnvironmentKeyWritingModifier<Color?>> and conformance <> ModifiedContent<A, B>);
  }

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

uint64_t outlined consume of SessionControl(uint64_t a1, uint64_t a2, uint64_t a3, unsigned __int8 a4)
{
  if (a4 - 3 <= 1)
  {
  }

  return result;
}

double _s7SwiftUI15ModifiedContentVyACyACyAA4TextVAA30_EnvironmentKeyWritingModifierVyAA0E9AlignmentOGGAA14_PaddingLayoutVGAMGSgWOi0_(_OWORD *a1)
{
  result = 0.0;
  *(a1 + 121) = 0u;
  a1[6] = 0u;
  a1[7] = 0u;
  a1[4] = 0u;
  a1[5] = 0u;
  a1[2] = 0u;
  a1[3] = 0u;
  *a1 = 0u;
  a1[1] = 0u;
  return result;
}

uint64_t outlined init with copy of _ConditionalContent<ModifiedContent<NavigationStack<NavigationPath, <<opaque return type of View.toolbar<A>(content:)>>.0>, _TraitWritingModifier<TransitionTraitKey>>, ModifiedContent<InSessionView, _TraitWritingModifier<TransitionTraitKey>>>(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(a3);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t outlined init with copy of ModifiedContent<InSessionView, _TraitWritingModifier<TransitionTraitKey>>(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(a3);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t outlined destroy of _ConditionalContent<ModifiedContent<NavigationStack<NavigationPath, <<opaque return type of View.toolbar<A>(content:)>>.0>, _TraitWritingModifier<TransitionTraitKey>>, ModifiedContent<InSessionView, _TraitWritingModifier<TransitionTraitKey>>>(uint64_t a1, uint64_t *a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(a2);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t objectdestroyTm_4()
{
  v1 = type metadata accessor for SessionView();
  v2 = v0 + ((*(*(v1 - 1) + 80) + 16) & ~*(*(v1 - 1) + 80));

  v3 = v1[7];
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI8BindableVy07WorkoutB016SessionViewModelCGMd);
  (*(*(v4 - 8) + 8))(v2 + v3, v4);
  __swift_destroy_boxed_opaque_existential_1(v2 + v1[8]);
  if (*(v2 + v1[9]))
  {
  }

  if (*(v2 + v1[13]))
  {
  }

  return swift_deallocObject();
}

uint64_t partial apply for closure #1 in closure #1 in closure #1 in closure #1 in closure #1 in closure #1 in SessionView.alertStackView()@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v9 = *(type metadata accessor for SessionView() - 8);
  v10 = v4 + ((*(v9 + 80) + 16) & ~*(v9 + 80));

  return closure #1 in closure #1 in closure #1 in closure #1 in closure #1 in closure #1 in SessionView.alertStackView()(a1, a2, a3, v10, a4);
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<<<opaque return type of View.buttonStyle<A>(_:)>>.0, _EnvironmentKeyWritingModifier<ControlSize>>, _EnvironmentKeyWritingModifier<AnyShapeStyle?>>, _ClipEffect<RoundedRectangle>>, _PaddingLayout> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<<<opaque return type of View.buttonStyle<A>(_:)>>.0, _EnvironmentKeyWritingModifier<ControlSize>>, _EnvironmentKeyWritingModifier<AnyShapeStyle?>>, _ClipEffect<RoundedRectangle>>, _PaddingLayout> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<<<opaque return type of View.buttonStyle<A>(_:)>>.0, _EnvironmentKeyWritingModifier<ControlSize>>, _EnvironmentKeyWritingModifier<AnyShapeStyle?>>, _ClipEffect<RoundedRectangle>>, _PaddingLayout> and conformance <> ModifiedContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyACyACyACyAA4ViewPAAE11buttonStyleyQrqd__AA015PrimitiveButtonG0Rd__lFQOyAA0I0VyACyAA4TextVAA16_FlexFrameLayoutVGG_AA017BorderedProminentiG0VQo_AA30_EnvironmentKeyWritingModifierVyAA11ControlSizeOGGATyAA08AnyShapeG0VSgGGAA11_ClipEffectVyAA16RoundedRectangleVGGAA08_PaddingM0VGMd);
    lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<ModifiedContent<<<opaque return type of View.buttonStyle<A>(_:)>>.0, _EnvironmentKeyWritingModifier<ControlSize>>, _EnvironmentKeyWritingModifier<AnyShapeStyle?>>, _ClipEffect<RoundedRectangle>> and conformance <> ModifiedContent<A, B>();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<<<opaque return type of View.buttonStyle<A>(_:)>>.0, _EnvironmentKeyWritingModifier<ControlSize>>, _EnvironmentKeyWritingModifier<AnyShapeStyle?>>, _ClipEffect<RoundedRectangle>>, _PaddingLayout> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<ModifiedContent<<<opaque return type of View.buttonStyle<A>(_:)>>.0, _EnvironmentKeyWritingModifier<ControlSize>>, _EnvironmentKeyWritingModifier<AnyShapeStyle?>>, _ClipEffect<RoundedRectangle>> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<<<opaque return type of View.buttonStyle<A>(_:)>>.0, _EnvironmentKeyWritingModifier<ControlSize>>, _EnvironmentKeyWritingModifier<AnyShapeStyle?>>, _ClipEffect<RoundedRectangle>> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<<<opaque return type of View.buttonStyle<A>(_:)>>.0, _EnvironmentKeyWritingModifier<ControlSize>>, _EnvironmentKeyWritingModifier<AnyShapeStyle?>>, _ClipEffect<RoundedRectangle>> and conformance <> ModifiedContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyACyACyAA4ViewPAAE11buttonStyleyQrqd__AA015PrimitiveButtonG0Rd__lFQOyAA0I0VyACyAA4TextVAA16_FlexFrameLayoutVGG_AA017BorderedProminentiG0VQo_AA30_EnvironmentKeyWritingModifierVyAA11ControlSizeOGGATyAA08AnyShapeG0VSgGGAA11_ClipEffectVyAA16RoundedRectangleVGGMd);
    lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<<<opaque return type of View.buttonStyle<A>(_:)>>.0, _EnvironmentKeyWritingModifier<ControlSize>>, _EnvironmentKeyWritingModifier<AnyShapeStyle?>> and conformance <> ModifiedContent<A, B>();
    lazy protocol witness table accessor for type ZStack<_ConditionalContent<_ConditionalContent<_ConditionalContent<ModifiedContent<ZStack<TupleView<(ModifiedContent<Color, _SafeAreaIgnoringLayout>, MirroredStartWatchAppView)>>, _TraitWritingModifier<TransitionTraitKey>>, ModifiedContent<<<opaque return type of View.sheet<A>(isPresented:onDismiss:content:)>>.0, _TraitWritingModifier<TransitionTraitKey>>>, _ConditionalContent<ModifiedContent<<<opaque return type of View.sheet<A>(isPresented:onDismiss:content:)>>.0, _TraitWritingModifier<TransitionTraitKey>>, ModifiedContent<ViewControllerWrapper?, _TraitWritingModifier<TransitionTraitKey>>>>, _ConditionalContent<ModifiedContent<NavigationStack<NavigationPath, <<opaque return type of View.toolbar<A>(content:)>>.0>, _TraitWritingModifier<TransitionTraitKey>>, ModifiedContent<InSessionView, _TraitWritingModifier<TransitionTraitKey>>>>> and conformance ZStack<A>(&lazy protocol witness table cache variable for type _ClipEffect<RoundedRectangle> and conformance _ClipEffect<A>, &_s7SwiftUI11_ClipEffectVyAA16RoundedRectangleVGMd);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<<<opaque return type of View.buttonStyle<A>(_:)>>.0, _EnvironmentKeyWritingModifier<ControlSize>>, _EnvironmentKeyWritingModifier<AnyShapeStyle?>>, _ClipEffect<RoundedRectangle>> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<<<opaque return type of View.buttonStyle<A>(_:)>>.0, _EnvironmentKeyWritingModifier<ControlSize>>, _EnvironmentKeyWritingModifier<AnyShapeStyle?>> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<<<opaque return type of View.buttonStyle<A>(_:)>>.0, _EnvironmentKeyWritingModifier<ControlSize>>, _EnvironmentKeyWritingModifier<AnyShapeStyle?>> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<<<opaque return type of View.buttonStyle<A>(_:)>>.0, _EnvironmentKeyWritingModifier<ControlSize>>, _EnvironmentKeyWritingModifier<AnyShapeStyle?>> and conformance <> ModifiedContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyACyAA4ViewPAAE11buttonStyleyQrqd__AA015PrimitiveButtonG0Rd__lFQOyAA0I0VyACyAA4TextVAA16_FlexFrameLayoutVGG_AA017BorderedProminentiG0VQo_AA30_EnvironmentKeyWritingModifierVyAA11ControlSizeOGGATyAA08AnyShapeG0VSgGGMd);
    lazy protocol witness table accessor for type ModifiedContent<<<opaque return type of View.buttonStyle<A>(_:)>>.0, _EnvironmentKeyWritingModifier<ControlSize>> and conformance <> ModifiedContent<A, B>();
    lazy protocol witness table accessor for type ZStack<_ConditionalContent<_ConditionalContent<_ConditionalContent<ModifiedContent<ZStack<TupleView<(ModifiedContent<Color, _SafeAreaIgnoringLayout>, MirroredStartWatchAppView)>>, _TraitWritingModifier<TransitionTraitKey>>, ModifiedContent<<<opaque return type of View.sheet<A>(isPresented:onDismiss:content:)>>.0, _TraitWritingModifier<TransitionTraitKey>>>, _ConditionalContent<ModifiedContent<<<opaque return type of View.sheet<A>(isPresented:onDismiss:content:)>>.0, _TraitWritingModifier<TransitionTraitKey>>, ModifiedContent<ViewControllerWrapper?, _TraitWritingModifier<TransitionTraitKey>>>>, _ConditionalContent<ModifiedContent<NavigationStack<NavigationPath, <<opaque return type of View.toolbar<A>(content:)>>.0>, _TraitWritingModifier<TransitionTraitKey>>, ModifiedContent<InSessionView, _TraitWritingModifier<TransitionTraitKey>>>>> and conformance ZStack<A>(&lazy protocol witness table cache variable for type _EnvironmentKeyWritingModifier<AnyShapeStyle?> and conformance _EnvironmentKeyWritingModifier<A>, &_s7SwiftUI30_EnvironmentKeyWritingModifierVyAA13AnyShapeStyleVSgGMd);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<<<opaque return type of View.buttonStyle<A>(_:)>>.0, _EnvironmentKeyWritingModifier<ControlSize>>, _EnvironmentKeyWritingModifier<AnyShapeStyle?>> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<<<opaque return type of View.buttonStyle<A>(_:)>>.0, _EnvironmentKeyWritingModifier<ControlSize>> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<<<opaque return type of View.buttonStyle<A>(_:)>>.0, _EnvironmentKeyWritingModifier<ControlSize>> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<<<opaque return type of View.buttonStyle<A>(_:)>>.0, _EnvironmentKeyWritingModifier<ControlSize>> and conformance <> ModifiedContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyAA4ViewPAAE11buttonStyleyQrqd__AA015PrimitiveButtonG0Rd__lFQOyAA0I0VyACyAA4TextVAA16_FlexFrameLayoutVGG_AA017BorderedProminentiG0VQo_AA30_EnvironmentKeyWritingModifierVyAA11ControlSizeOGGMd);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI6ButtonVyAA15ModifiedContentVyAA4TextVAA16_FlexFrameLayoutVGGMd);
    type metadata accessor for BorderedProminentButtonStyle();
    lazy protocol witness table accessor for type ZStack<_ConditionalContent<_ConditionalContent<_ConditionalContent<ModifiedContent<ZStack<TupleView<(ModifiedContent<Color, _SafeAreaIgnoringLayout>, MirroredStartWatchAppView)>>, _TraitWritingModifier<TransitionTraitKey>>, ModifiedContent<<<opaque return type of View.sheet<A>(isPresented:onDismiss:content:)>>.0, _TraitWritingModifier<TransitionTraitKey>>>, _ConditionalContent<ModifiedContent<<<opaque return type of View.sheet<A>(isPresented:onDismiss:content:)>>.0, _TraitWritingModifier<TransitionTraitKey>>, ModifiedContent<ViewControllerWrapper?, _TraitWritingModifier<TransitionTraitKey>>>>, _ConditionalContent<ModifiedContent<NavigationStack<NavigationPath, <<opaque return type of View.toolbar<A>(content:)>>.0>, _TraitWritingModifier<TransitionTraitKey>>, ModifiedContent<InSessionView, _TraitWritingModifier<TransitionTraitKey>>>>> and conformance ZStack<A>(&lazy protocol witness table cache variable for type Button<ModifiedContent<Text, _FlexFrameLayout>> and conformance Button<A>, &_s7SwiftUI6ButtonVyAA15ModifiedContentVyAA4TextVAA16_FlexFrameLayoutVGGMd);
    _s11WorkoutCore19LowPowerModeMonitorCAC7Combine16ObservableObjectAAWlTm_0(&lazy protocol witness table cache variable for type BorderedProminentButtonStyle and conformance BorderedProminentButtonStyle, MEMORY[0x277CDE400]);
    swift_getOpaqueTypeConformance2();
    lazy protocol witness table accessor for type ZStack<_ConditionalContent<_ConditionalContent<_ConditionalContent<ModifiedContent<ZStack<TupleView<(ModifiedContent<Color, _SafeAreaIgnoringLayout>, MirroredStartWatchAppView)>>, _TraitWritingModifier<TransitionTraitKey>>, ModifiedContent<<<opaque return type of View.sheet<A>(isPresented:onDismiss:content:)>>.0, _TraitWritingModifier<TransitionTraitKey>>>, _ConditionalContent<ModifiedContent<<<opaque return type of View.sheet<A>(isPresented:onDismiss:content:)>>.0, _TraitWritingModifier<TransitionTraitKey>>, ModifiedContent<ViewControllerWrapper?, _TraitWritingModifier<TransitionTraitKey>>>>, _ConditionalContent<ModifiedContent<NavigationStack<NavigationPath, <<opaque return type of View.toolbar<A>(content:)>>.0>, _TraitWritingModifier<TransitionTraitKey>>, ModifiedContent<InSessionView, _TraitWritingModifier<TransitionTraitKey>>>>> and conformance ZStack<A>(&lazy protocol witness table cache variable for type _EnvironmentKeyWritingModifier<ControlSize> and conformance _EnvironmentKeyWritingModifier<A>, &_s7SwiftUI30_EnvironmentKeyWritingModifierVyAA11ControlSizeOGMd);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<<<opaque return type of View.buttonStyle<A>(_:)>>.0, _EnvironmentKeyWritingModifier<ControlSize>> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type ModifiedContent<<<opaque return type of View.buttonStyle<A>(_:)>>.0, _EnvironmentKeyWritingModifier<ControlSize>> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<<<opaque return type of View.buttonStyle<A>(_:)>>.0, _EnvironmentKeyWritingModifier<ControlSize>> and conformance <> ModifiedContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyAA4ViewPAAE11buttonStyleyQrqd__AA015PrimitiveButtonG0Rd__lFQOyAA0I0VyACyACyAA5ImageVAA011_ForegroundG9Modifier2VyAA5ColorVAOGGAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGG_AA05PlainiG0VQo_ASyAA11ControlSizeOGGMd);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI6ButtonVyAA15ModifiedContentVyAEyAA5ImageVAA25_ForegroundStyleModifier2VyAA5ColorVAKGGAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGGMd);
    type metadata accessor for PlainButtonStyle();
    lazy protocol witness table accessor for type _ForegroundStyleModifier2<Color, Color> and conformance _ForegroundStyleModifier2<A, B>(&lazy protocol witness table cache variable for type Button<ModifiedContent<ModifiedContent<Image, _ForegroundStyleModifier2<Color, Color>>, _EnvironmentKeyWritingModifier<Font?>>> and conformance Button<A>, &_s7SwiftUI6ButtonVyAA15ModifiedContentVyAEyAA5ImageVAA25_ForegroundStyleModifier2VyAA5ColorVAKGGAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGGMd);
    _s7SwiftUI16PlainButtonStyleVAcA09PrimitivedE0AAWlTm_3(&lazy protocol witness table cache variable for type PlainButtonStyle and conformance PlainButtonStyle, MEMORY[0x277CDDB18]);
    swift_getOpaqueTypeConformance2();
    lazy protocol witness table accessor for type _ForegroundStyleModifier2<Color, Color> and conformance _ForegroundStyleModifier2<A, B>(&lazy protocol witness table cache variable for type _EnvironmentKeyWritingModifier<ControlSize> and conformance _EnvironmentKeyWritingModifier<A>, &_s7SwiftUI30_EnvironmentKeyWritingModifierVyAA11ControlSizeOGMd);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<<<opaque return type of View.buttonStyle<A>(_:)>>.0, _EnvironmentKeyWritingModifier<ControlSize>> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type ModifiedContent<<<opaque return type of View.buttonStyle<A>(_:)>>.0, _EnvironmentKeyWritingModifier<ControlSize>> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<<<opaque return type of View.buttonStyle<A>(_:)>>.0, _EnvironmentKeyWritingModifier<ControlSize>> and conformance <> ModifiedContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyAA4ViewPAAE11buttonStyleyQrqd__AA015PrimitiveButtonG0Rd__lFQOyAA0I0VyACyAeAE10fontWeightyQrAA4FontV0K0VSgFQOyAA0hiG13ConfigurationV5LabelV_Qo_AA16_FlexFrameLayoutVGG_AA08BorderediG0VQo_AA30_EnvironmentKeyWritingModifierVyAA11ControlSizeOGGMd);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI6ButtonVyAA15ModifiedContentVyAA4ViewPAAE10fontWeightyQrAA4FontV0H0VSgFQOyAA09PrimitiveC18StyleConfigurationV5LabelV_Qo_AA16_FlexFrameLayoutVGGMd);
    type metadata accessor for BorderedButtonStyle();
    lazy protocol witness table accessor for type _EnvironmentKeyWritingModifier<TextAlignment> and conformance _EnvironmentKeyWritingModifier<A>(&lazy protocol witness table cache variable for type Button<ModifiedContent<<<opaque return type of View.fontWeight(_:)>>.0, _FlexFrameLayout>> and conformance Button<A>, &_s7SwiftUI6ButtonVyAA15ModifiedContentVyAA4ViewPAAE10fontWeightyQrAA4FontV0H0VSgFQOyAA09PrimitiveC18StyleConfigurationV5LabelV_Qo_AA16_FlexFrameLayoutVGGMd);
    lazy protocol witness table accessor for type LabelStyleConfiguration.Title and conformance LabelStyleConfiguration.Title(&lazy protocol witness table cache variable for type BorderedButtonStyle and conformance BorderedButtonStyle, MEMORY[0x277CDDEE0]);
    swift_getOpaqueTypeConformance2();
    lazy protocol witness table accessor for type _EnvironmentKeyWritingModifier<TextAlignment> and conformance _EnvironmentKeyWritingModifier<A>(&lazy protocol witness table cache variable for type _EnvironmentKeyWritingModifier<ControlSize> and conformance _EnvironmentKeyWritingModifier<A>, &_s7SwiftUI30_EnvironmentKeyWritingModifierVyAA11ControlSizeOGMd);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<<<opaque return type of View.buttonStyle<A>(_:)>>.0, _EnvironmentKeyWritingModifier<ControlSize>> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<ModifiedContent<Text, _EnvironmentKeyWritingModifier<TextAlignment>>, _PaddingLayout>, _PaddingLayout> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<Text, _EnvironmentKeyWritingModifier<TextAlignment>>, _PaddingLayout>, _PaddingLayout> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<Text, _EnvironmentKeyWritingModifier<TextAlignment>>, _PaddingLayout>, _PaddingLayout> and conformance <> ModifiedContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyACyACyAA4TextVAA30_EnvironmentKeyWritingModifierVyAA0E9AlignmentOGGAA14_PaddingLayoutVGAMGMd);
    lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<Text, _EnvironmentKeyWritingModifier<TextAlignment>>, _PaddingLayout> and conformance <> ModifiedContent<A, B>();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<Text, _EnvironmentKeyWritingModifier<TextAlignment>>, _PaddingLayout>, _PaddingLayout> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<Text, _EnvironmentKeyWritingModifier<TextAlignment>>, _PaddingLayout> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<Text, _EnvironmentKeyWritingModifier<TextAlignment>>, _PaddingLayout> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<Text, _EnvironmentKeyWritingModifier<TextAlignment>>, _PaddingLayout> and conformance <> ModifiedContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyACyAA4TextVAA30_EnvironmentKeyWritingModifierVyAA0E9AlignmentOGGAA14_PaddingLayoutVGMd);
    lazy protocol witness table accessor for type ModifiedContent<Text, _EnvironmentKeyWritingModifier<TextAlignment>> and conformance <> ModifiedContent<A, B>();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<Text, _EnvironmentKeyWritingModifier<TextAlignment>>, _PaddingLayout> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

uint64_t lazy protocol witness table accessor for type ZStack<_ConditionalContent<_ConditionalContent<_ConditionalContent<ModifiedContent<ZStack<TupleView<(ModifiedContent<Color, _SafeAreaIgnoringLayout>, MirroredStartWatchAppView)>>, _TraitWritingModifier<TransitionTraitKey>>, ModifiedContent<<<opaque return type of View.sheet<A>(isPresented:onDismiss:content:)>>.0, _TraitWritingModifier<TransitionTraitKey>>>, _ConditionalContent<ModifiedContent<<<opaque return type of View.sheet<A>(isPresented:onDismiss:content:)>>.0, _TraitWritingModifier<TransitionTraitKey>>, ModifiedContent<ViewControllerWrapper?, _TraitWritingModifier<TransitionTraitKey>>>>, _ConditionalContent<ModifiedContent<NavigationStack<NavigationPath, <<opaque return type of View.toolbar<A>(content:)>>.0>, _TraitWritingModifier<TransitionTraitKey>>, ModifiedContent<InSessionView, _TraitWritingModifier<TransitionTraitKey>>>>> and conformance ZStack<A>(unint64_t *a1, uint64_t *a2)
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

uint64_t outlined init with take of ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Text, _EnvironmentKeyWritingModifier<TextAlignment>>, _PaddingLayout>, _PaddingLayout>, AccessibilityAttachmentModifier>(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyACyACyACyAA4TextVAA30_EnvironmentKeyWritingModifierVyAA0E9AlignmentOGGAA14_PaddingLayoutVGAMGAA023AccessibilityAttachmentI0VGMd);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t partial apply for closure #1 in closure #1 in closure #1 in closure #1 in closure #1 in closure #1 in closure #1 in SessionView.alertStackView()()
{
  v1 = *(type metadata accessor for SessionView() - 8);
  v2 = (*(v1 + 80) + 16) & ~*(v1 + 80);
  v3 = *(v0 + ((*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8));

  return closure #1 in closure #1 in closure #1 in closure #1 in closure #1 in closure #1 in closure #1 in SessionView.alertStackView()(v0 + v2, v3);
}

uint64_t outlined destroy of ModifiedContent<InSessionView, _TraitWritingModifier<TransitionTraitKey>>(uint64_t a1, uint64_t *a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(a2);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t _s11WorkoutCore19LowPowerModeMonitorCAC7Combine16ObservableObjectAAWlTm_0(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t closure #1 in SessionViewModel.countdownBeginSequence.setterpartial apply()
{
  return partial apply for closure #1 in SessionViewModel.countdownBeginSequence.setter();
}

{
  return partial apply for closure #1 in SessionViewModel.countdownBeginSequence.setter();
}

{
  return partial apply for closure #1 in SessionViewModel.countdownBeginSequence.setter();
}

{
  return partial apply for closure #1 in SessionViewModel.countdownBeginSequence.setter();
}

uint64_t closure #1 in SessionViewModel.currentView.setterpartial apply()
{
  return partial apply for closure #1 in SessionViewModel.currentView.setter();
}

{
  return _s9WorkoutUI16SessionViewModelC07currentD0AA0c7CurrentD0OvsyyXEfU_TA_4();
}

{
  return _s9WorkoutUI16SessionViewModelC07currentD0AA0c7CurrentD0OvsyyXEfU_TA_4();
}

{
  return _s9WorkoutUI16SessionViewModelC07currentD0AA0c7CurrentD0OvsyyXEfU_TA_4();
}

{
  return _s9WorkoutUI16SessionViewModelC07currentD0AA0c7CurrentD0OvsyyXEfU_TA_4();
}

{
  return _s9WorkoutUI16SessionViewModelC07currentD0AA0c7CurrentD0OvsyyXEfU_TA_4();
}

{
  return _s9WorkoutUI16SessionViewModelC07currentD0AA0c7CurrentD0OvsyyXEfU_TA_4();
}

{
  return _s9WorkoutUI16SessionViewModelC07currentD0AA0c7CurrentD0OvsyyXEfU_TA_4();
}

{
  return _s9WorkoutUI16SessionViewModelC07currentD0AA0c7CurrentD0OvsyyXEfU_TA_4();
}

{
  return _s9WorkoutUI16SessionViewModelC07currentD0AA0c7CurrentD0OvsyyXEfU_TA_4();
}

uint64_t key path getter for SessionViewModel.countdownBeginSequence : SessionViewModel@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  lazy protocol witness table accessor for type SessionViewModel and conformance SessionViewModel(&lazy protocol witness table cache variable for type SessionViewModel and conformance SessionViewModel, type metadata accessor for SessionViewModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  result = swift_beginAccess();
  *a2 = *(v3 + 16);
  return result;
}

uint64_t SessionViewModel.countdownBeginSequence.getter()
{
  swift_getKeyPath();
  lazy protocol witness table accessor for type SessionViewModel and conformance SessionViewModel(&lazy protocol witness table cache variable for type SessionViewModel and conformance SessionViewModel, type metadata accessor for SessionViewModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  swift_beginAccess();
  return *(v0 + 16);
}

uint64_t SessionViewModel.countdownBeginSequence.setter(char a1)
{
  v2 = a1 & 1;
  result = swift_beginAccess();
  if (*(v1 + 16) == v2)
  {
    *(v1 + 16) = v2;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath);
    lazy protocol witness table accessor for type SessionViewModel and conformance SessionViewModel(&lazy protocol witness table cache variable for type SessionViewModel and conformance SessionViewModel, type metadata accessor for SessionViewModel);
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
  }

  return result;
}

uint64_t closure #1 in SessionViewModel.countdownBeginSequence.setter(uint64_t a1, char a2)
{
  result = swift_beginAccess();
  *(a1 + 16) = a2;
  return result;
}

void (*SessionViewModel.countdownBeginSequence.modify(uint64_t *a1))(void *a1)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x40uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 32) = v1;
  swift_getKeyPath();
  v4[5] = OBJC_IVAR____TtC9WorkoutUI16SessionViewModel___observationRegistrar;
  *v4 = v1;
  v4[6] = lazy protocol witness table accessor for type SessionViewModel and conformance SessionViewModel(&lazy protocol witness table cache variable for type SessionViewModel and conformance SessionViewModel, type metadata accessor for SessionViewModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  *v4 = v1;
  swift_getKeyPath();
  ObservationRegistrar.willSet<A, B>(_:keyPath:)();

  v4[7] = SessionViewModel._countdownBeginSequence.modify();
  return SessionViewModel.countdownBeginSequence.modify;
}

void SessionViewModel.countdownBeginSequence.modify(void *a1)
{
  SessionViewModel.countdownBeginSequence.modify(a1);
}

{
  v1 = *a1;
  (*(*a1 + 56))(*a1, 0);
  *v1 = v1[4];
  swift_getKeyPath();
  ObservationRegistrar.didSet<A, B>(_:keyPath:)();

  free(v1);
}

uint64_t SessionViewModel.currentView.getter@<X0>(_BYTE *a1@<X8>)
{
  swift_getKeyPath();
  lazy protocol witness table accessor for type SessionViewModel and conformance SessionViewModel(&lazy protocol witness table cache variable for type SessionViewModel and conformance SessionViewModel, type metadata accessor for SessionViewModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  result = swift_beginAccess();
  *a1 = *(v1 + 17);
  return result;
}

uint64_t SessionViewModel.currentView.setter(unsigned __int8 *a1)
{
  v2 = *a1;
  result = swift_beginAccess();
  if (*(v1 + 17) != v2)
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath);
    lazy protocol witness table accessor for type SessionViewModel and conformance SessionViewModel(&lazy protocol witness table cache variable for type SessionViewModel and conformance SessionViewModel, type metadata accessor for SessionViewModel);
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
  }

  return result;
}

uint64_t closure #1 in SessionViewModel.currentView.setter(uint64_t a1, char a2)
{
  result = swift_beginAccess();
  *(a1 + 17) = a2;
  return result;
}

void (*SessionViewModel.currentView.modify(uint64_t *a1))(void *a1)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x40uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 32) = v1;
  swift_getKeyPath();
  v4[5] = OBJC_IVAR____TtC9WorkoutUI16SessionViewModel___observationRegistrar;
  *v4 = v1;
  v4[6] = lazy protocol witness table accessor for type SessionViewModel and conformance SessionViewModel(&lazy protocol witness table cache variable for type SessionViewModel and conformance SessionViewModel, type metadata accessor for SessionViewModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  *v4 = v1;
  swift_getKeyPath();
  ObservationRegistrar.willSet<A, B>(_:keyPath:)();

  v4[7] = SessionViewModel._currentView.modify();
  return SessionViewModel.currentView.modify;
}

uint64_t key path getter for SessionViewModel.usePrecisionStart : SessionViewModel@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  lazy protocol witness table accessor for type SessionViewModel and conformance SessionViewModel(&lazy protocol witness table cache variable for type SessionViewModel and conformance SessionViewModel, type metadata accessor for SessionViewModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  result = swift_beginAccess();
  *a2 = *(v3 + 18);
  return result;
}

uint64_t SessionViewModel.usePrecisionStart.getter()
{
  swift_getKeyPath();
  lazy protocol witness table accessor for type SessionViewModel and conformance SessionViewModel(&lazy protocol witness table cache variable for type SessionViewModel and conformance SessionViewModel, type metadata accessor for SessionViewModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  swift_beginAccess();
  return *(v0 + 18);
}

uint64_t SessionViewModel.usePrecisionStart.setter(char a1)
{
  v2 = a1 & 1;
  result = swift_beginAccess();
  if (*(v1 + 18) == v2)
  {
    *(v1 + 18) = v2;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath);
    lazy protocol witness table accessor for type SessionViewModel and conformance SessionViewModel(&lazy protocol witness table cache variable for type SessionViewModel and conformance SessionViewModel, type metadata accessor for SessionViewModel);
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
  }

  return result;
}

uint64_t closure #1 in SessionViewModel.usePrecisionStart.setter(uint64_t a1, char a2)
{
  result = swift_beginAccess();
  *(a1 + 18) = a2;
  return result;
}

void (*SessionViewModel.usePrecisionStart.modify(uint64_t *a1))(void *a1)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x40uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 32) = v1;
  swift_getKeyPath();
  v4[5] = OBJC_IVAR____TtC9WorkoutUI16SessionViewModel___observationRegistrar;
  *v4 = v1;
  v4[6] = lazy protocol witness table accessor for type SessionViewModel and conformance SessionViewModel(&lazy protocol witness table cache variable for type SessionViewModel and conformance SessionViewModel, type metadata accessor for SessionViewModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  *v4 = v1;
  swift_getKeyPath();
  ObservationRegistrar.willSet<A, B>(_:keyPath:)();

  v4[7] = SessionViewModel._usePrecisionStart.modify();
  return SessionViewModel.usePrecisionStart.modify;
}

id key path getter for SessionViewModel.workoutConfiguration : SessionViewModel@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  lazy protocol witness table accessor for type SessionViewModel and conformance SessionViewModel(&lazy protocol witness table cache variable for type SessionViewModel and conformance SessionViewModel, type metadata accessor for SessionViewModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  swift_beginAccess();
  v4 = *(v3 + 24);
  *a2 = v4;

  return v4;
}

id SessionViewModel.workoutConfiguration.getter()
{
  swift_getKeyPath();
  lazy protocol witness table accessor for type SessionViewModel and conformance SessionViewModel(&lazy protocol witness table cache variable for type SessionViewModel and conformance SessionViewModel, type metadata accessor for SessionViewModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  swift_beginAccess();
  v1 = *(v0 + 24);

  return v1;
}

void SessionViewModel.workoutConfiguration.setter(void *a1)
{
  v2 = v1;
  swift_beginAccess();
  v4 = *(v1 + 24);
  type metadata accessor for WorkoutConfiguration();
  v5 = v4;
  v6 = static NSObject.== infix(_:_:)();

  if (v6)
  {
    v7 = *(v2 + 24);
    *(v2 + 24) = a1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath);
    lazy protocol witness table accessor for type SessionViewModel and conformance SessionViewModel(&lazy protocol witness table cache variable for type SessionViewModel and conformance SessionViewModel, type metadata accessor for SessionViewModel);
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
  }
}

void closure #1 in SessionViewModel.workoutConfiguration.setter(uint64_t a1, void *a2)
{
  swift_beginAccess();
  v4 = *(a1 + 24);
  *(a1 + 24) = a2;
  v5 = a2;
}

void (*SessionViewModel.workoutConfiguration.modify(uint64_t *a1))(void *a1)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x40uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 32) = v1;
  swift_getKeyPath();
  v4[5] = OBJC_IVAR____TtC9WorkoutUI16SessionViewModel___observationRegistrar;
  *v4 = v1;
  v4[6] = lazy protocol witness table accessor for type SessionViewModel and conformance SessionViewModel(&lazy protocol witness table cache variable for type SessionViewModel and conformance SessionViewModel, type metadata accessor for SessionViewModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  *v4 = v1;
  swift_getKeyPath();
  ObservationRegistrar.willSet<A, B>(_:keyPath:)();

  v4[7] = SessionViewModel._workoutConfiguration.modify();
  return SessionViewModel.workoutConfiguration.modify;
}

uint64_t key path getter for SessionViewModel.startSource : SessionViewModel@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  lazy protocol witness table accessor for type SessionViewModel and conformance SessionViewModel(&lazy protocol witness table cache variable for type SessionViewModel and conformance SessionViewModel, type metadata accessor for SessionViewModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  result = swift_beginAccess();
  *a2 = *(v3 + 32);
  return result;
}

uint64_t SessionViewModel.startSource.getter()
{
  swift_getKeyPath();
  lazy protocol witness table accessor for type SessionViewModel and conformance SessionViewModel(&lazy protocol witness table cache variable for type SessionViewModel and conformance SessionViewModel, type metadata accessor for SessionViewModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  swift_beginAccess();
  return *(v0 + 32);
}

uint64_t SessionViewModel.startSource.setter(uint64_t a1)
{
  result = swift_beginAccess();
  if (*(v1 + 32) != a1)
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath);
    lazy protocol witness table accessor for type SessionViewModel and conformance SessionViewModel(&lazy protocol witness table cache variable for type SessionViewModel and conformance SessionViewModel, type metadata accessor for SessionViewModel);
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
  }

  return result;
}

uint64_t closure #1 in SessionViewModel.startSource.setter(uint64_t a1, uint64_t a2)
{
  result = swift_beginAccess();
  *(a1 + 32) = a2;
  return result;
}

void (*SessionViewModel.startSource.modify(uint64_t *a1))(void *a1)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x40uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 32) = v1;
  swift_getKeyPath();
  v4[5] = OBJC_IVAR____TtC9WorkoutUI16SessionViewModel___observationRegistrar;
  *v4 = v1;
  v4[6] = lazy protocol witness table accessor for type SessionViewModel and conformance SessionViewModel(&lazy protocol witness table cache variable for type SessionViewModel and conformance SessionViewModel, type metadata accessor for SessionViewModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  *v4 = v1;
  swift_getKeyPath();
  ObservationRegistrar.willSet<A, B>(_:keyPath:)();

  v4[7] = SessionViewModel._startSource.modify();
  return SessionViewModel.startSource.modify;
}

uint64_t SessionViewModel.alertStackRequest.setter(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11WorkoutCore29MirroredHostAlertStackRequestVSgMd);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = v10 - v4;
  v6 = OBJC_IVAR____TtC9WorkoutUI16SessionViewModel__alertStackRequest;
  swift_beginAccess();
  outlined init with copy of MirroredHostAlertStackRequest?(v1 + v6, v5, &_s11WorkoutCore29MirroredHostAlertStackRequestVSgMd);
  v7 = specialized SessionViewModel.shouldNotifyObservers<A>(_:_:)(v5, a1);
  outlined destroy of MirroredHostAlertStackRequest?(v5, &_s11WorkoutCore29MirroredHostAlertStackRequestVSgMd);
  if (v7)
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath);
    v10[-2] = v1;
    v10[-1] = a1;
    v10[2] = v1;
    lazy protocol witness table accessor for type SessionViewModel and conformance SessionViewModel(&lazy protocol witness table cache variable for type SessionViewModel and conformance SessionViewModel, type metadata accessor for SessionViewModel);
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
  }

  else
  {
    outlined init with copy of MirroredHostAlertStackRequest?(a1, v5, &_s11WorkoutCore29MirroredHostAlertStackRequestVSgMd);
    swift_beginAccess();
    outlined assign with take of MirroredHostAlertStackRequest?(v5, v1 + v6, &_s11WorkoutCore29MirroredHostAlertStackRequestVSgMd);
    swift_endAccess();
  }

  return outlined destroy of MirroredHostAlertStackRequest?(a1, &_s11WorkoutCore29MirroredHostAlertStackRequestVSgMd);
}

void (*SessionViewModel.alertStackRequest.modify(uint64_t *a1))(void *a1)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x40uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 32) = v1;
  swift_getKeyPath();
  v4[5] = OBJC_IVAR____TtC9WorkoutUI16SessionViewModel___observationRegistrar;
  *v4 = v1;
  v4[6] = lazy protocol witness table accessor for type SessionViewModel and conformance SessionViewModel(&lazy protocol witness table cache variable for type SessionViewModel and conformance SessionViewModel, type metadata accessor for SessionViewModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  *v4 = v1;
  swift_getKeyPath();
  ObservationRegistrar.willSet<A, B>(_:keyPath:)();

  v4[7] = SessionViewModel._alertStackRequest.modify();
  return SessionViewModel.alertStackRequest.modify;
}

uint64_t closure #1 in SessionViewModel.supportsTapToSkipCountdown.setter(uint64_t a1, char a2)
{
  v4 = OBJC_IVAR____TtC9WorkoutUI16SessionViewModel__supportsTapToSkipCountdown;
  result = swift_beginAccess();
  *(a1 + v4) = a2;
  return result;
}

void (*SessionViewModel.supportsTapToSkipCountdown.modify(uint64_t *a1))(void *a1)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x40uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 32) = v1;
  swift_getKeyPath();
  v4[5] = OBJC_IVAR____TtC9WorkoutUI16SessionViewModel___observationRegistrar;
  *v4 = v1;
  v4[6] = lazy protocol witness table accessor for type SessionViewModel and conformance SessionViewModel(&lazy protocol witness table cache variable for type SessionViewModel and conformance SessionViewModel, type metadata accessor for SessionViewModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  *v4 = v1;
  swift_getKeyPath();
  ObservationRegistrar.willSet<A, B>(_:keyPath:)();

  v4[7] = SessionViewModel._supportsTapToSkipCountdown.modify();
  return SessionViewModel.supportsTapToSkipCountdown.modify;
}

uint64_t key path getter for SessionViewModel.alertStackRequest : SessionViewModel@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X4>, uint64_t *a3@<X5>, uint64_t a4@<X8>)
{
  v7 = *a1;
  swift_getKeyPath();
  lazy protocol witness table accessor for type SessionViewModel and conformance SessionViewModel(&lazy protocol witness table cache variable for type SessionViewModel and conformance SessionViewModel, type metadata accessor for SessionViewModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v8 = *a2;
  swift_beginAccess();
  return outlined init with copy of MirroredHostAlertStackRequest?(v7 + v8, a4, a3);
}

uint64_t key path setter for SessionViewModel.alertStackRequest : SessionViewModel(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5, uint64_t a6, uint64_t (*a7)(char *))
{
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(a5);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v14 - v11;
  outlined init with copy of MirroredHostAlertStackRequest?(a1, &v14 - v11, a5);
  return a7(v12);
}

uint64_t SessionViewModel.alertStackRequest.getter@<X0>(uint64_t *a1@<X1>, uint64_t *a2@<X2>, uint64_t a3@<X8>)
{
  swift_getKeyPath();
  v9 = v3;
  lazy protocol witness table accessor for type SessionViewModel and conformance SessionViewModel(&lazy protocol witness table cache variable for type SessionViewModel and conformance SessionViewModel, type metadata accessor for SessionViewModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v7 = *a1;
  swift_beginAccess();
  return outlined init with copy of MirroredHostAlertStackRequest?(v9 + v7, a3, a2);
}

uint64_t SessionViewModel.summaryUpdate.setter(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11WorkoutCore25MirroredHostSummaryUpdateVSgMd);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = v10 - v4;
  v6 = OBJC_IVAR____TtC9WorkoutUI16SessionViewModel__summaryUpdate;
  swift_beginAccess();
  outlined init with copy of MirroredHostAlertStackRequest?(v1 + v6, v5, &_s11WorkoutCore25MirroredHostSummaryUpdateVSgMd);
  v7 = specialized SessionViewModel.shouldNotifyObservers<A>(_:_:)(v5, a1);
  outlined destroy of MirroredHostAlertStackRequest?(v5, &_s11WorkoutCore25MirroredHostSummaryUpdateVSgMd);
  if (v7)
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath);
    v10[-2] = v1;
    v10[-1] = a1;
    v10[2] = v1;
    lazy protocol witness table accessor for type SessionViewModel and conformance SessionViewModel(&lazy protocol witness table cache variable for type SessionViewModel and conformance SessionViewModel, type metadata accessor for SessionViewModel);
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
  }

  else
  {
    outlined init with copy of MirroredHostAlertStackRequest?(a1, v5, &_s11WorkoutCore25MirroredHostSummaryUpdateVSgMd);
    swift_beginAccess();
    outlined assign with take of MirroredHostAlertStackRequest?(v5, v1 + v6, &_s11WorkoutCore25MirroredHostSummaryUpdateVSgMd);
    swift_endAccess();
  }

  return outlined destroy of MirroredHostAlertStackRequest?(a1, &_s11WorkoutCore25MirroredHostSummaryUpdateVSgMd);
}

uint64_t closure #1 in SessionViewModel.alertStackRequest.setter(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4, uint64_t *a5)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(a3);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = &v14 - v10;
  outlined init with copy of MirroredHostAlertStackRequest?(a2, &v14 - v10, a3);
  v12 = *a5;
  swift_beginAccess();
  outlined assign with take of MirroredHostAlertStackRequest?(v11, a1 + v12, a3);
  return swift_endAccess();
}

void (*SessionViewModel.summaryUpdate.modify(uint64_t *a1))(void *a1)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x40uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 32) = v1;
  swift_getKeyPath();
  v4[5] = OBJC_IVAR____TtC9WorkoutUI16SessionViewModel___observationRegistrar;
  *v4 = v1;
  v4[6] = lazy protocol witness table accessor for type SessionViewModel and conformance SessionViewModel(&lazy protocol witness table cache variable for type SessionViewModel and conformance SessionViewModel, type metadata accessor for SessionViewModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  *v4 = v1;
  swift_getKeyPath();
  ObservationRegistrar.willSet<A, B>(_:keyPath:)();

  v4[7] = SessionViewModel._summaryUpdate.modify();
  return SessionViewModel.summaryUpdate.modify;
}

void closure #1 in SessionViewModel.safetyMonitorManager.setter(uint64_t a1, void *a2)
{
  v4 = OBJC_IVAR____TtC9WorkoutUI16SessionViewModel__safetyMonitorManager;
  swift_beginAccess();
  v5 = *(a1 + v4);
  *(a1 + v4) = a2;
  v6 = a2;
}

void (*SessionViewModel.safetyMonitorManager.modify(uint64_t *a1))(void *a1)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x40uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 32) = v1;
  swift_getKeyPath();
  v4[5] = OBJC_IVAR____TtC9WorkoutUI16SessionViewModel___observationRegistrar;
  *v4 = v1;
  v4[6] = lazy protocol witness table accessor for type SessionViewModel and conformance SessionViewModel(&lazy protocol witness table cache variable for type SessionViewModel and conformance SessionViewModel, type metadata accessor for SessionViewModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  *v4 = v1;
  swift_getKeyPath();
  ObservationRegistrar.willSet<A, B>(_:keyPath:)();

  v4[7] = SessionViewModel._safetyMonitorManager.modify();
  return SessionViewModel.safetyMonitorManager.modify;
}

id key path getter for SessionViewModel.safetyMonitorManager : SessionViewModel@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X4>, void *a3@<X8>)
{
  v5 = *a1;
  swift_getKeyPath();
  lazy protocol witness table accessor for type SessionViewModel and conformance SessionViewModel(&lazy protocol witness table cache variable for type SessionViewModel and conformance SessionViewModel, type metadata accessor for SessionViewModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v6 = *a2;
  swift_beginAccess();
  v7 = *(v5 + v6);
  *a3 = v7;

  return v7;
}

id SessionViewModel.safetyMonitorManager.getter(uint64_t a1, uint64_t *a2)
{
  swift_getKeyPath();
  lazy protocol witness table accessor for type SessionViewModel and conformance SessionViewModel(&lazy protocol witness table cache variable for type SessionViewModel and conformance SessionViewModel, type metadata accessor for SessionViewModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v4 = *a2;
  swift_beginAccess();
  v5 = *(v2 + v4);

  return v5;
}

void SessionViewModel.safetyMonitorManager.setter(void *a1, uint64_t *a2, void (*a3)(void))
{
  v5 = v3;
  v7 = *a2;
  swift_beginAccess();
  v8 = *(v3 + v7);
  a3(0);
  v9 = v8;
  v10 = static NSObject.== infix(_:_:)();

  if (v10)
  {
    v11 = *(v5 + v7);
    *(v5 + v7) = a1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath);
    lazy protocol witness table accessor for type SessionViewModel and conformance SessionViewModel(&lazy protocol witness table cache variable for type SessionViewModel and conformance SessionViewModel, type metadata accessor for SessionViewModel);
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
  }
}

void closure #1 in SessionViewModel.safetyCheckIn.setter(uint64_t a1, void *a2)
{
  v4 = OBJC_IVAR____TtC9WorkoutUI16SessionViewModel__safetyCheckIn;
  swift_beginAccess();
  v5 = *(a1 + v4);
  *(a1 + v4) = a2;
  v6 = a2;
}

void (*SessionViewModel.safetyCheckIn.modify(uint64_t *a1))(void *a1)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x40uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 32) = v1;
  swift_getKeyPath();
  v4[5] = OBJC_IVAR____TtC9WorkoutUI16SessionViewModel___observationRegistrar;
  *v4 = v1;
  v4[6] = lazy protocol witness table accessor for type SessionViewModel and conformance SessionViewModel(&lazy protocol witness table cache variable for type SessionViewModel and conformance SessionViewModel, type metadata accessor for SessionViewModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  *v4 = v1;
  swift_getKeyPath();
  ObservationRegistrar.willSet<A, B>(_:keyPath:)();

  v4[7] = SessionViewModel._safetyCheckIn.modify();
  return SessionViewModel.safetyCheckIn.modify;
}

uint64_t key path getter for SessionViewModel.safetyCheckInViewDismissed : SessionViewModel@<X0>(uint64_t *a1@<X0>, uint64_t (**a2)()@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  lazy protocol witness table accessor for type SessionViewModel and conformance SessionViewModel(&lazy protocol witness table cache variable for type SessionViewModel and conformance SessionViewModel, type metadata accessor for SessionViewModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v4 = (v3 + OBJC_IVAR____TtC9WorkoutUI16SessionViewModel__safetyCheckInViewDismissed);
  swift_beginAccess();
  v5 = *v4;
  v6 = v4[1];
  if (v5)
  {
    v7 = swift_allocObject();
    *(v7 + 16) = v5;
    *(v7 + 24) = v6;
    v8 = thunk for @escaping @callee_guaranteed () -> ()partial apply;
  }

  else
  {
    v8 = 0;
    v7 = 0;
  }

  *a2 = v8;
  a2[1] = v7;
  return sub_20C675F90(v5);
}

uint64_t key path setter for SessionViewModel.safetyCheckInViewDismissed : SessionViewModel(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];
  if (*a1)
  {
    v3 = swift_allocObject();
    *(v3 + 16) = v1;
    *(v3 + 24) = v2;
    v4 = thunk for @escaping @callee_guaranteed () -> (@out ())partial apply;
  }

  else
  {
    v4 = 0;
  }

  KeyPath = swift_getKeyPath();
  MEMORY[0x28223BE20](KeyPath);
  sub_20C675F90(v1);
  lazy protocol witness table accessor for type SessionViewModel and conformance SessionViewModel(&lazy protocol witness table cache variable for type SessionViewModel and conformance SessionViewModel, type metadata accessor for SessionViewModel);
  ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
  outlined consume of (@escaping @callee_guaranteed () -> ())?(v4);
}

uint64_t SessionViewModel.safetyCheckInViewDismissed.setter(uint64_t a1)
{
  return SessionViewModel.safetyCheckInViewDismissed.setter(a1);
}

{
  swift_getKeyPath();
  lazy protocol witness table accessor for type SessionViewModel and conformance SessionViewModel(&lazy protocol witness table cache variable for type SessionViewModel and conformance SessionViewModel, type metadata accessor for SessionViewModel);
  ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
  outlined consume of (@escaping @callee_guaranteed () -> ())?(a1);
}

void (*SessionViewModel.safetyCheckInViewDismissed.modify(uint64_t *a1))(void *a1)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x40uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 32) = v1;
  swift_getKeyPath();
  v4[5] = OBJC_IVAR____TtC9WorkoutUI16SessionViewModel___observationRegistrar;
  *v4 = v1;
  v4[6] = lazy protocol witness table accessor for type SessionViewModel and conformance SessionViewModel(&lazy protocol witness table cache variable for type SessionViewModel and conformance SessionViewModel, type metadata accessor for SessionViewModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  *v4 = v1;
  swift_getKeyPath();
  ObservationRegistrar.willSet<A, B>(_:keyPath:)();

  v4[7] = SessionViewModel._safetyCheckInViewDismissed.modify();
  return SessionViewModel.safetyCheckInViewDismissed.modify;
}

uint64_t key path getter for SessionViewModel.supportsTapToSkipCountdown : SessionViewModel@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X4>, _BYTE *a3@<X8>)
{
  v5 = *a1;
  swift_getKeyPath();
  lazy protocol witness table accessor for type SessionViewModel and conformance SessionViewModel(&lazy protocol witness table cache variable for type SessionViewModel and conformance SessionViewModel, type metadata accessor for SessionViewModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v6 = *a2;
  result = swift_beginAccess();
  *a3 = *(v5 + v6);
  return result;
}

uint64_t SessionViewModel.supportsTapToSkipCountdown.getter(uint64_t a1, uint64_t *a2)
{
  swift_getKeyPath();
  lazy protocol witness table accessor for type SessionViewModel and conformance SessionViewModel(&lazy protocol witness table cache variable for type SessionViewModel and conformance SessionViewModel, type metadata accessor for SessionViewModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v4 = *a2;
  swift_beginAccess();
  return *(v2 + v4);
}

uint64_t SessionViewModel.supportsTapToSkipCountdown.setter(char a1, uint64_t *a2)
{
  v3 = a1 & 1;
  v4 = *a2;
  result = swift_beginAccess();
  if (*(v2 + v4) == v3)
  {
    *(v2 + v4) = v3;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath);
    lazy protocol witness table accessor for type SessionViewModel and conformance SessionViewModel(&lazy protocol witness table cache variable for type SessionViewModel and conformance SessionViewModel, type metadata accessor for SessionViewModel);
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
  }

  return result;
}

uint64_t closure #1 in SessionViewModel.mirroredEndWorkoutTimeoutAlert.setter(uint64_t a1, char a2)
{
  v4 = OBJC_IVAR____TtC9WorkoutUI16SessionViewModel__mirroredEndWorkoutTimeoutAlert;
  result = swift_beginAccess();
  *(a1 + v4) = a2;
  return result;
}

void (*SessionViewModel.mirroredEndWorkoutTimeoutAlert.modify(uint64_t *a1))(void *a1)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x40uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 32) = v1;
  swift_getKeyPath();
  v4[5] = OBJC_IVAR____TtC9WorkoutUI16SessionViewModel___observationRegistrar;
  *v4 = v1;
  v4[6] = lazy protocol witness table accessor for type SessionViewModel and conformance SessionViewModel(&lazy protocol witness table cache variable for type SessionViewModel and conformance SessionViewModel, type metadata accessor for SessionViewModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  *v4 = v1;
  swift_getKeyPath();
  ObservationRegistrar.willSet<A, B>(_:keyPath:)();

  v4[7] = SessionViewModel._mirroredEndWorkoutTimeoutAlert.modify();
  return SessionViewModel.mirroredEndWorkoutTimeoutAlert.modify;
}

uint64_t key path getter for SessionViewModel.workoutBuddyState : SessionViewModel@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  lazy protocol witness table accessor for type SessionViewModel and conformance SessionViewModel(&lazy protocol witness table cache variable for type SessionViewModel and conformance SessionViewModel, type metadata accessor for SessionViewModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v4 = OBJC_IVAR____TtC9WorkoutUI16SessionViewModel__workoutBuddyState;
  swift_beginAccess();
  v5 = type metadata accessor for WorkoutBuddyStatePublisher.State();
  return (*(*(v5 - 8) + 16))(a2, v3 + v4, v5);
}

uint64_t key path setter for SessionViewModel.workoutBuddyState : SessionViewModel(uint64_t a1)
{
  v2 = type metadata accessor for WorkoutBuddyStatePublisher.State();
  MEMORY[0x28223BE20](v2);
  v4 = &v7 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v5 + 16))(v4, a1);
  return SessionViewModel.workoutBuddyState.setter(v4);
}

uint64_t SessionViewModel.workoutBuddyState.getter@<X0>(uint64_t a1@<X8>)
{
  swift_getKeyPath();
  v6 = v1;
  lazy protocol witness table accessor for type SessionViewModel and conformance SessionViewModel(&lazy protocol witness table cache variable for type SessionViewModel and conformance SessionViewModel, type metadata accessor for SessionViewModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v3 = OBJC_IVAR____TtC9WorkoutUI16SessionViewModel__workoutBuddyState;
  swift_beginAccess();
  v4 = type metadata accessor for WorkoutBuddyStatePublisher.State();
  return (*(*(v4 - 8) + 16))(a1, v6 + v3, v4);
}

uint64_t SessionViewModel.workoutBuddyState.setter(uint64_t a1)
{
  v2 = v1;
  v4 = type metadata accessor for WorkoutBuddyStatePublisher.State();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = OBJC_IVAR____TtC9WorkoutUI16SessionViewModel__workoutBuddyState;
  swift_beginAccess();
  v9 = *(v5 + 16);
  v9(v7, v2 + v8, v4);
  lazy protocol witness table accessor for type SessionViewModel and conformance SessionViewModel(&lazy protocol witness table cache variable for type WorkoutBuddyStatePublisher.State and conformance WorkoutBuddyStatePublisher.State, MEMORY[0x277D7DBB0]);
  v14[0] = a1;
  LOBYTE(a1) = dispatch thunk of static Equatable.== infix(_:_:)();
  v10 = *(v5 + 8);
  v10(v7, v4);
  if (a1)
  {
    v9(v7, v14[0], v4);
    swift_beginAccess();
    (*(v5 + 40))(v2 + v8, v7, v4);
    swift_endAccess();
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath);
    v12 = v14[0];
    v14[-2] = v2;
    v14[-1] = v12;
    v14[1] = v2;
    lazy protocol witness table accessor for type SessionViewModel and conformance SessionViewModel(&lazy protocol witness table cache variable for type SessionViewModel and conformance SessionViewModel, type metadata accessor for SessionViewModel);
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
  }

  return (v10)(v14[0], v4);
}

uint64_t closure #1 in SessionViewModel.workoutBuddyState.setter(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for WorkoutBuddyStatePublisher.State();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v5 + 16))(v7, a2, v4);
  v8 = OBJC_IVAR____TtC9WorkoutUI16SessionViewModel__workoutBuddyState;
  swift_beginAccess();
  (*(v5 + 40))(a1 + v8, v7, v4);
  return swift_endAccess();
}

void (*SessionViewModel.workoutBuddyState.modify(uint64_t *a1))(void *a1)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x40uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 32) = v1;
  swift_getKeyPath();
  v4[5] = OBJC_IVAR____TtC9WorkoutUI16SessionViewModel___observationRegistrar;
  *v4 = v1;
  v4[6] = lazy protocol witness table accessor for type SessionViewModel and conformance SessionViewModel(&lazy protocol witness table cache variable for type SessionViewModel and conformance SessionViewModel, type metadata accessor for SessionViewModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  *v4 = v1;
  swift_getKeyPath();
  ObservationRegistrar.willSet<A, B>(_:keyPath:)();

  v4[7] = SessionViewModel._workoutBuddyState.modify();
  return SessionViewModel.workoutBuddyState.modify;
}

uint64_t key path getter for SessionViewModel.mirroredEndWorkoutTimeoutAlertDismissed : SessionViewModel@<X0>(uint64_t *a1@<X0>, uint64_t (**a2)()@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  lazy protocol witness table accessor for type SessionViewModel and conformance SessionViewModel(&lazy protocol witness table cache variable for type SessionViewModel and conformance SessionViewModel, type metadata accessor for SessionViewModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v4 = (v3 + OBJC_IVAR____TtC9WorkoutUI16SessionViewModel__mirroredEndWorkoutTimeoutAlertDismissed);
  swift_beginAccess();
  v5 = *v4;
  v6 = v4[1];
  if (v5)
  {
    v7 = swift_allocObject();
    *(v7 + 16) = v5;
    *(v7 + 24) = v6;
    v8 = partial apply for thunk for @escaping @callee_guaranteed () -> ();
  }

  else
  {
    v8 = 0;
    v7 = 0;
  }

  *a2 = v8;
  a2[1] = v7;
  return sub_20C675F90(v5);
}

uint64_t key path setter for SessionViewModel.mirroredEndWorkoutTimeoutAlertDismissed : SessionViewModel(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];
  if (*a1)
  {
    v3 = swift_allocObject();
    *(v3 + 16) = v1;
    *(v3 + 24) = v2;
    v4 = partial apply for thunk for @escaping @callee_guaranteed () -> (@out ());
  }

  else
  {
    v4 = 0;
  }

  KeyPath = swift_getKeyPath();
  MEMORY[0x28223BE20](KeyPath);
  sub_20C675F90(v1);
  lazy protocol witness table accessor for type SessionViewModel and conformance SessionViewModel(&lazy protocol witness table cache variable for type SessionViewModel and conformance SessionViewModel, type metadata accessor for SessionViewModel);
  ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
  outlined consume of (@escaping @callee_guaranteed () -> ())?(v4);
}