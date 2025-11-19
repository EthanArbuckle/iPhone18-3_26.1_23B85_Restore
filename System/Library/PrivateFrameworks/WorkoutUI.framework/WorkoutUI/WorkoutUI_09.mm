uint64_t lazy protocol witness table accessor for type AlignedLeadingAccessoryContentView<ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Color?>>, _FlipForRTLEffect>?, VStack<TupleView<(Text, Text)>>> and conformance AlignedLeadingAccessoryContentView<A, B>(unint64_t *a1, uint64_t *a2)
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

void type metadata completion function for PredictedActivityPickerItemRow()
{
  type metadata accessor for Environment<DismissAction>();
  if (v0 <= 0x3F)
  {
    type metadata accessor for PredictedActivityPickerItem();
    if (v1 <= 0x3F)
    {
      type metadata accessor for EnvironmentObject<FIUIFormattingManager>();
      if (v2 <= 0x3F)
      {
        type metadata accessor for EnvironmentObject<ConfigurationNavigationModel>();
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void type metadata accessor for EnvironmentObject<FIUIFormattingManager>()
{
  if (!lazy cache variable for type metadata for EnvironmentObject<FIUIFormattingManager>)
  {
    type metadata accessor for FIUIFormattingManager();
    lazy protocol witness table accessor for type FIUIFormattingManager and conformance FIUIFormattingManager(&lazy protocol witness table cache variable for type FIUIFormattingManager and conformance FIUIFormattingManager, type metadata accessor for FIUIFormattingManager);
    v0 = type metadata accessor for EnvironmentObject();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for EnvironmentObject<FIUIFormattingManager>);
    }
  }
}

uint64_t lazy protocol witness table accessor for type FIUIFormattingManager and conformance FIUIFormattingManager(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t outlined copy of ModifiedContent<ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyWritingModifier<Color?>>, _FlipForRTLEffect>?(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

uint64_t outlined consume of ModifiedContent<ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyWritingModifier<Color?>>, _FlipForRTLEffect>?(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

uint64_t outlined destroy of TupleView<(ModifiedContent<ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyWritingModifier<Color?>>, _FlipForRTLEffect>?, ModifiedContent<Spacer, _FrameLayout>, Text, Text)>(uint64_t a1, uint64_t *a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(a2);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t outlined init with copy of TupleView<(ModifiedContent<ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyWritingModifier<Color?>>, _FlipForRTLEffect>?, ModifiedContent<Spacer, _FrameLayout>, Text, Text)>(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(a3);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t getEnumTagSinglePayload for ControlsLockOverlay(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 112))
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

uint64_t storeEnumTagSinglePayload for ControlsLockOverlay(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 104) = 0;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 112) = 1;
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

    *(result + 112) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t ControlsLockOverlay.body.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v28 = a1;
  v3 = type metadata accessor for AccessibilityActionKind();
  v29 = *(v3 - 8);
  v30 = v3;
  MEMORY[0x28223BE20](v3);
  v26 = &v23 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = type metadata accessor for AccessibilityChildBehavior();
  v5 = *(v24 - 8);
  MEMORY[0x28223BE20](v24);
  v7 = &v23 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI4ViewPAAE20accessibilityElement8childrenQrAA26AccessibilityChildBehaviorV_tFQOyAA15ModifiedContentVyAIyAA9RectangleVAA24_ForegroundStyleModifierVyAA5ColorVGGAA08_OverlayO0VyAIyAIyAA14GeometryReaderVyAIyAIyAIyAA06_ShapeC0VyAA07RoundedL0VAA8MaterialVGAA12_FrameLayoutVGAA08_PaddingX0VGASyAA05TupleC0VyAIyAIyAIyAIyAIyAIy07WorkoutB019SlidingGradientTextVA5_GA5_GA5_GAA14_OpacityEffectVGAA022_EnvironmentKeyWritingO0Vy12CoreGraphics7CGFloatVGGA19_ySiSgGG_AcAE7gesture_9includingQrqd___AA11GestureMaskVtAA7GestureRd__lFQOyAIyAIyAIyAIyAA6CircleVA2_GAPGASyAA5GroupVyAA012_ConditionalK0VyAA5ImageVA42_GGGGAA09_PositionX0VG_AA13_EndedGestureVyAA15_ChangedGestureVyAA11DragGestureVGGQo_tGGGGA2_GA19_yAA4FontVSgGGGG_Qo_Md);
  v27 = *(v25 - 8);
  MEMORY[0x28223BE20](v25);
  v9 = &v23 - v8;
  v10 = static Color.clear.getter();
  v11 = static Alignment.center.getter();
  v13 = v12;
  closure #1 in ControlsLockOverlay.body.getter(v2, &v43);
  v32[2] = v45;
  v32[3] = v46;
  v32[4] = v47;
  v39 = v45;
  v40 = v46;
  v32[0] = v43;
  v32[1] = v44;
  *&v33 = v11;
  *(&v33 + 1) = v13;
  v37 = v43;
  v38 = v44;
  v41 = v47;
  v42 = v33;
  v34[3] = v46;
  v34[4] = v47;
  v34[1] = v44;
  v34[2] = v45;
  v34[0] = v43;
  v35 = v11;
  v36 = v13;
  sub_20C67B228(v32, v31);
  outlined destroy of _OverlayModifier<ModifiedContent<ModifiedContent<GeometryReader<ModifiedContent<ModifiedContent<ModifiedContent<_ShapeView<RoundedRectangle, Material>, _FrameLayout>, _PaddingLayout>, _OverlayModifier<TupleView<(ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<SlidingGradientText, _PaddingLayout>, _PaddingLayout>, _PaddingLayout>, _OpacityEffect>, _EnvironmentKeyWritingModifier<CGFloat>>, _EnvironmentKeyWritingModifier<Int?>>, <<opaque return type of View.gesture<A>(_:including:)>>.0)>>>>, _FrameLayout>, _EnvironmentKeyWritingModifier<Font?>>>(v34, &_s7SwiftUI16_OverlayModifierVyAA15ModifiedContentVyAEyAA14GeometryReaderVyAEyAEyAEyAA10_ShapeViewVyAA16RoundedRectangleVAA8MaterialVGAA12_FrameLayoutVGAA08_PaddingO0VGACyAA05TupleJ0VyAEyAEyAEyAEyAEyAEy07WorkoutB019SlidingGradientTextVASGASGASGAA14_OpacityEffectVGAA022_EnvironmentKeyWritingD0Vy12CoreGraphics7CGFloatVGGA5_ySiSgGG_AA0J0PAAE7gesture_9includingQrqd___AA11GestureMaskVtAA7GestureRd__lFQOyAEyAEyAEyAEyAA6CircleVAPGAA016_ForegroundStyleD0VyAA5ColorVGGACyAA5GroupVyAA012_ConditionalF0VyAA5ImageVA35_GGGGAA09_PositionO0VG_AA13_EndedGestureVyAA15_ChangedGestureVyAA11DragGestureVGGQo_tGGGGAPGA5_yAA4FontVSgGGGMd);
  *v31 = v10;
  *&v31[40] = v39;
  *&v31[56] = v40;
  *&v31[72] = v41;
  *&v31[88] = v42;
  *&v31[8] = v37;
  *&v31[24] = v38;
  static AccessibilityChildBehavior.combine.getter();
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyACyAA9RectangleVAA24_ForegroundStyleModifierVyAA5ColorVGGAA08_OverlayH0VyACyACyAA14GeometryReaderVyACyACyACyAA10_ShapeViewVyAA07RoundedE0VAA8MaterialVGAA12_FrameLayoutVGAA08_PaddingR0VGAMyAA05TupleN0VyACyACyACyACyACyACy07WorkoutB019SlidingGradientTextVA_GA_GA_GAA14_OpacityEffectVGAA022_EnvironmentKeyWritingH0Vy12CoreGraphics7CGFloatVGGA13_ySiSgGG_AA0N0PAAE7gesture_9includingQrqd___AA11GestureMaskVtAA7GestureRd__lFQOyACyACyACyACyAA6CircleVAXGAJGAMyAA5GroupVyAA012_ConditionalD0VyAA5ImageVA38_GGGGAA09_PositionR0VG_AA13_EndedGestureVyAA15_ChangedGestureVyAA11DragGestureVGGQo_tGGGGAXGA13_yAA4FontVSgGGGGMd);
  v15 = lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<Rectangle, _ForegroundStyleModifier<Color>>, _OverlayModifier<ModifiedContent<ModifiedContent<GeometryReader<ModifiedContent<ModifiedContent<ModifiedContent<_ShapeView<RoundedRectangle, Material>, _FrameLayout>, _PaddingLayout>, _OverlayModifier<TupleView<(ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<SlidingGradientText, _PaddingLayout>, _PaddingLayout>, _PaddingLayout>, _OpacityEffect>, _EnvironmentKeyWritingModifier<CGFloat>>, _EnvironmentKeyWritingModifier<Int?>>, <<opaque return type of View.gesture<A>(_:including:)>>.0)>>>>, _FrameLayout>, _EnvironmentKeyWritingModifier<Font?>>>> and conformance <> ModifiedContent<A, B>();
  View.accessibilityElement(children:)();
  (*(v5 + 8))(v7, v24);
  v47 = *&v31[64];
  v48 = *&v31[80];
  v49 = *&v31[96];
  v43 = *v31;
  v44 = *&v31[16];
  v45 = *&v31[32];
  v46 = *&v31[48];
  outlined destroy of _OverlayModifier<ModifiedContent<ModifiedContent<GeometryReader<ModifiedContent<ModifiedContent<ModifiedContent<_ShapeView<RoundedRectangle, Material>, _FrameLayout>, _PaddingLayout>, _OverlayModifier<TupleView<(ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<SlidingGradientText, _PaddingLayout>, _PaddingLayout>, _PaddingLayout>, _OpacityEffect>, _EnvironmentKeyWritingModifier<CGFloat>>, _EnvironmentKeyWritingModifier<Int?>>, <<opaque return type of View.gesture<A>(_:including:)>>.0)>>>>, _FrameLayout>, _EnvironmentKeyWritingModifier<Font?>>>(&v43, &_s7SwiftUI15ModifiedContentVyACyAA9RectangleVAA24_ForegroundStyleModifierVyAA5ColorVGGAA08_OverlayH0VyACyACyAA14GeometryReaderVyACyACyACyAA10_ShapeViewVyAA07RoundedE0VAA8MaterialVGAA12_FrameLayoutVGAA08_PaddingR0VGAMyAA05TupleN0VyACyACyACyACyACyACy07WorkoutB019SlidingGradientTextVA_GA_GA_GAA14_OpacityEffectVGAA022_EnvironmentKeyWritingH0Vy12CoreGraphics7CGFloatVGGA13_ySiSgGG_AA0N0PAAE7gesture_9includingQrqd___AA11GestureMaskVtAA7GestureRd__lFQOyACyACyACyACyAA6CircleVAXGAJGAMyAA5GroupVyAA012_ConditionalD0VyAA5ImageVA38_GGGGAA09_PositionR0VG_AA13_EndedGestureVyAA15_ChangedGestureVyAA11DragGestureVGGQo_tGGGGAXGA13_yAA4FontVSgGGGGMd);
  v16 = swift_allocObject();
  v17 = v2[5];
  v16[5] = v2[4];
  v16[6] = v17;
  v16[7] = v2[6];
  v18 = v2[1];
  v16[1] = *v2;
  v16[2] = v18;
  v19 = v2[3];
  v16[3] = v2[2];
  v16[4] = v19;
  outlined init with copy of ControlsLockOverlay(v2, v31);
  v20 = v26;
  static AccessibilityActionKind.default.getter();
  *v31 = v14;
  *&v31[8] = v15;
  swift_getOpaqueTypeConformance2();
  v21 = v25;
  View.accessibilityAction(_:_:)();

  (*(v29 + 8))(v20, v30);
  return (*(v27 + 8))(v9, v21);
}

uint64_t closure #1 in ControlsLockOverlay.body.getter@<X0>(_OWORD *a1@<X0>, uint64_t a2@<X8>)
{
  v31 = type metadata accessor for Font.Leading();
  v4 = *(v31 - 8);
  MEMORY[0x28223BE20](v31);
  v6 = &v27 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI4FontV6DesignOSgMd);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v27 - v8;
  v10 = type metadata accessor for Font.TextStyle();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = &v27 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = swift_allocObject();
  v15 = a1[5];
  v14[5] = a1[4];
  v14[6] = v15;
  v14[7] = a1[6];
  v16 = a1[1];
  v14[1] = *a1;
  v14[2] = v16;
  v17 = a1[3];
  v14[3] = a1[2];
  v14[4] = v17;
  outlined init with copy of ControlsLockOverlay(a1, &v32);
  static Alignment.center.getter();
  _FrameLayout.init(width:height:alignment:)();
  v18 = v32;
  v29 = v36;
  v30 = v34;
  v28 = v37;
  v39 = v33;
  v38 = v35;
  (*(v11 + 104))(v13, *MEMORY[0x277CE0A70], v10);
  v19 = type metadata accessor for Font.Design();
  (*(*(v19 - 8) + 56))(v9, 1, 1, v19);
  static Font.Weight.medium.getter();
  static Font.system(_:design:weight:)();
  _s7SwiftUI4FontV6DesignOSgWOhTm_3(v9, &_s7SwiftUI4FontV6DesignOSgMd);
  (*(v11 + 8))(v13, v10);
  v20 = v31;
  (*(v4 + 104))(v6, *MEMORY[0x277CE0A10], v31);
  v21 = Font.leading(_:)();

  (*(v4 + 8))(v6, v20);
  result = swift_getKeyPath();
  v23 = v39;
  v24 = v38;
  *a2 = partial apply for closure #1 in closure #1 in ControlsLockOverlay.body.getter;
  *(a2 + 8) = v14;
  *(a2 + 16) = v18;
  *(a2 + 24) = v23;
  v25 = v29;
  *(a2 + 32) = v30;
  *(a2 + 40) = v24;
  v26 = v28;
  *(a2 + 48) = v25;
  *(a2 + 56) = v26;
  *(a2 + 64) = result;
  *(a2 + 72) = v21;
  return result;
}

uint64_t closure #1 in closure #1 in ControlsLockOverlay.body.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, double *a3@<X8>)
{
  GeometryProxy.size.getter();
  v7 = v6 * 0.5;
  v8 = *(type metadata accessor for RoundedRectangle() + 20);
  v9 = *MEMORY[0x277CE0118];
  v10 = type metadata accessor for RoundedCornerStyle();
  (*(*(v10 - 8) + 104))(a3 + v8, v9, v10);
  *a3 = v7;
  a3[1] = v7;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI10_ShapeViewVyAA16RoundedRectangleVAA8MaterialVGMd);
  static Material.regular.getter();
  *(a3 + *(v11 + 56)) = 256;
  GeometryProxy.size.getter();
  v29 = *(a2 + 16);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI5StateVySdGMd);
  State.wrappedValue.getter();
  static Alignment.center.getter();
  _FrameLayout.init(width:height:alignment:)();
  v12 = (a3 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyAA10_ShapeViewVyAA16RoundedRectangleVAA8MaterialVGAA12_FrameLayoutVGMd) + 36));
  *v12 = v29;
  v12[1] = v30;
  v12[2] = v31;
  v13 = static Edge.Set.leading.getter();
  State.wrappedValue.getter();
  EdgeInsets.init(_all:)();
  v15 = v14;
  v17 = v16;
  v19 = v18;
  v21 = v20;
  v22 = a3 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyACyAA10_ShapeViewVyAA16RoundedRectangleVAA8MaterialVGAA12_FrameLayoutVGAA08_PaddingK0VGMd) + 36);
  *v22 = v13;
  *(v22 + 1) = v15;
  *(v22 + 2) = v17;
  *(v22 + 3) = v19;
  *(v22 + 4) = v21;
  v22[40] = 0;
  v23 = static Alignment.center.getter();
  v25 = v24;
  v26 = a3 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyACyACyAA10_ShapeViewVyAA16RoundedRectangleVAA8MaterialVGAA12_FrameLayoutVGAA08_PaddingK0VGAA16_OverlayModifierVyAA05TupleF0VyACyACyACyACyACyACy07WorkoutB019SlidingGradientTextVAOGAOGAOGAA14_OpacityEffectVGAA022_EnvironmentKeyWritingN0Vy12CoreGraphics7CGFloatVGGA3_ySiSgGG_AA0F0PAAE7gesture_9includingQrqd___AA11GestureMaskVtAA7GestureRd__lFQOyACyACyACyACyAA6CircleVALGAA016_ForegroundStyleN0VyAA5ColorVGGARyAA5GroupVyAA012_ConditionalD0VyAA5ImageVA33_GGGGAA09_PositionK0VG_AA13_EndedGestureVyAA15_ChangedGestureVyAA11DragGestureVGGQo_tGGGMd) + 36);
  closure #1 in closure #1 in closure #1 in ControlsLockOverlay.body.getter(a2, a1, v26);
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI16_OverlayModifierVyAA9TupleViewVyAA15ModifiedContentVyAGyAGyAGyAGyAGy07WorkoutB019SlidingGradientTextVAA14_PaddingLayoutVGALGALGAA14_OpacityEffectVGAA022_EnvironmentKeyWritingD0Vy12CoreGraphics7CGFloatVGGATySiSgGG_AA0F0PAAE7gesture_9includingQrqd___AA11GestureMaskVtAA0Y0Rd__lFQOyAGyAGyAGyAGyAA6CircleVAA06_FrameN0VGAA016_ForegroundStyleD0VyAA5ColorVGGACyAA5GroupVyAA012_ConditionalH0VyAA5ImageVA24_GGGGAA09_PositionN0VG_AA06_EndedY0VyAA08_ChangedY0VyAA04DragY0VGGQo_tGGMd);
  v28 = (v26 + *(result + 36));
  *v28 = v23;
  v28[1] = v25;
  return result;
}

uint64_t closure #1 in closure #1 in closure #1 in ControlsLockOverlay.body.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v126 = a2;
  v123 = a3;
  v128 = type metadata accessor for GeometryProxy();
  v110 = *(v128 - 8);
  v130 = *(v110 + 64);
  MEMORY[0x28223BE20](v128);
  v127 = &v101 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v109 = type metadata accessor for LocalCoordinateSpace();
  MEMORY[0x28223BE20](v109);
  v108 = &v101 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for DragGesture();
  v7 = *(v6 - 8);
  v112 = v6;
  v113 = v7;
  MEMORY[0x28223BE20](v6);
  v124 = &v101 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15_ChangedGestureVyAA04DragD0VGMd);
  v10 = *(v9 - 8);
  v116 = v9;
  v117 = v10;
  MEMORY[0x28223BE20](v9);
  v111 = &v101 - v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI13_EndedGestureVyAA08_ChangedD0VyAA04DragD0VGGMd);
  v13 = *(v12 - 8);
  v121 = v12;
  v122 = v13;
  MEMORY[0x28223BE20](v12);
  v114 = &v101 - v14;
  v15 = type metadata accessor for Color.RGBColorSpace();
  v106 = *(v15 - 8);
  v107 = v15;
  MEMORY[0x28223BE20](v15);
  v17 = &v101 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI4ViewPAAE7gesture_9includingQrqd___AA11GestureMaskVtAA0F0Rd__lFQOyAA15ModifiedContentVyAJyAJyAJyAA6CircleVAA12_FrameLayoutVGAA24_ForegroundStyleModifierVyAA5ColorVGGAA08_OverlayO0VyAA5GroupVyAA012_ConditionalI0VyAA5ImageVA1_GGGGAA09_PositionL0VG_AA06_EndedF0VyAA08_ChangedF0VyAA04DragF0VGGQo_Md);
  v119 = *(v18 - 8);
  v120 = v18;
  MEMORY[0x28223BE20](v18);
  v118 = &v101 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v20);
  v115 = &v101 - v21;
  v22 = type metadata accessor for Locale();
  MEMORY[0x28223BE20](v22 - 8);
  v23 = type metadata accessor for String.LocalizationValue();
  MEMORY[0x28223BE20](v23 - 8);
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyACyACyACyACyACy07WorkoutB019SlidingGradientTextVAA14_PaddingLayoutVGAHGAHGAA14_OpacityEffectVGAA30_EnvironmentKeyWritingModifierVy12CoreGraphics7CGFloatVGGAPySiSgGGMd);
  v25 = v24 - 8;
  MEMORY[0x28223BE20](v24);
  v129 = &v101 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v27);
  v29 = &v101 - v28;
  String.LocalizationValue.init(stringLiteral:)();
  type metadata accessor for WorkoutUIBundlePlaceholder();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v31 = [objc_opt_self() bundleForClass_];
  static Locale.current.getter();
  v32 = String.init(localized:table:bundle:locale:comment:)();
  v34 = v33;
  KeyPath = swift_getKeyPath();
  *&v29[*(type metadata accessor for SlidingGradientText() + 36)] = KeyPath;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI11EnvironmentV7ContentOyAA15LayoutDirectionO_GMd);
  swift_storeEnumTagMultiPayload();
  *v29 = v32;
  *(v29 + 1) = v34;
  *(v29 + 2) = 0x4000000000000000;
  *(v29 + 3) = 10;
  v29[32] = 0;
  *&v133 = 0x3FF0000000000000;
  State.init(wrappedValue:)();
  v36 = *(&v131[0] + 1);
  *(v29 + 5) = *&v131[0];
  *(v29 + 6) = v36;
  LOBYTE(v133) = 0;
  State.init(wrappedValue:)();
  v37 = *(&v131[0] + 1);
  v29[56] = v131[0];
  *(v29 + 8) = v37;
  LOBYTE(v32) = static Edge.Set.leading.getter();
  v38 = *(a1 + 56);
  EdgeInsets.init(_all:)();
  v40 = v39;
  v42 = v41;
  v44 = v43;
  v46 = v45;
  v47 = &v29[*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVy07WorkoutB019SlidingGradientTextVAA14_PaddingLayoutVGMd) + 36)];
  *v47 = v32;
  *(v47 + 1) = v40;
  *(v47 + 2) = v42;
  *(v47 + 3) = v44;
  *(v47 + 4) = v46;
  v47[40] = 0;
  LOBYTE(v32) = static Edge.Set.vertical.getter();
  v48 = &v29[*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyACy07WorkoutB019SlidingGradientTextVAA14_PaddingLayoutVGAHGMd) + 36)];
  *v48 = v32;
  *(v48 + 8) = 0u;
  *(v48 + 24) = 0u;
  v48[40] = 1;
  LOBYTE(v32) = static Edge.Set.trailing.getter();
  EdgeInsets.init(_all:)();
  v50 = v49;
  v52 = v51;
  v54 = v53;
  v56 = v55;
  v57 = &v29[*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyACyACy07WorkoutB019SlidingGradientTextVAA14_PaddingLayoutVGAHGAHGMd) + 36)];
  v125 = v29;
  *v57 = v32;
  *(v57 + 1) = v50;
  *(v57 + 2) = v52;
  *(v57 + 3) = v54;
  *(v57 + 4) = v56;
  v57[40] = 0;
  v149 = *(a1 + 16);
  v131[0] = *(a1 + 16);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI5StateVySdGMd);
  State.wrappedValue.getter();
  v58 = 1.0 - *&v133 / *(a1 + 104);
  *&v29[*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyACyACyACy07WorkoutB019SlidingGradientTextVAA14_PaddingLayoutVGAHGAHGAA14_OpacityEffectVGMd) + 36)] = v58;
  v59 = swift_getKeyPath();
  v60 = &v29[*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyACyACyACyACy07WorkoutB019SlidingGradientTextVAA14_PaddingLayoutVGAHGAHGAA14_OpacityEffectVGAA30_EnvironmentKeyWritingModifierVy12CoreGraphics7CGFloatVGGMd) + 36)];
  *v60 = v59;
  v60[1] = 0x3FE999999999999ALL;
  v61 = swift_getKeyPath();
  v62 = &v29[*(v25 + 44)];
  *v62 = v61;
  *(v62 + 1) = 2;
  v62[16] = 0;
  static Alignment.center.getter();
  _FrameLayout.init(width:height:alignment:)();
  LOBYTE(v29) = v144;
  LOBYTE(KeyPath) = v146;
  v104 = v147;
  v105 = v145;
  v102 = v143;
  v103 = v148;
  (*(v106 + 104))(v17, *MEMORY[0x277CE0EE0], v107);
  v107 = Color.init(_:red:green:blue:opacity:)();
  v106 = static Alignment.center.getter();
  v64 = v63;
  v65 = v126;
  closure #1 in closure #1 in closure #1 in closure #1 in closure #1 in ControlsLockOverlay.body.getter(a1, v131);
  v66 = *&v131[0];
  LOBYTE(v34) = BYTE8(v131[0]);
  v142 = v29;
  v141 = KeyPath;
  v140 = BYTE8(v131[0]);
  v131[0] = v149;
  State.wrappedValue.getter();
  v67 = v38 + *&v133 + *(a1 + 64);
  GeometryProxy.size.getter();
  *&v133 = v102;
  BYTE8(v133) = v29;
  *&v134 = v105;
  BYTE8(v134) = KeyPath;
  *&v135 = v104;
  *(&v135 + 1) = v103;
  *&v136 = v107;
  *(&v136 + 1) = v66;
  LOBYTE(v137) = v34;
  *(&v137 + 1) = v106;
  *&v138 = v64;
  *(&v138 + 1) = v67;
  v139 = v68 * 0.5;
  static CoordinateSpaceProtocol<>.local.getter();
  DragGesture.init<A>(minimumDistance:coordinateSpace:)();
  v69 = v110;
  v109 = *(v110 + 16);
  v70 = v127;
  v71 = v65;
  v72 = v128;
  v109(v127, v71, v128);
  v73 = (*(v69 + 80) + 128) & ~*(v69 + 80);
  v74 = swift_allocObject();
  v75 = *(a1 + 80);
  v74[5] = *(a1 + 64);
  v74[6] = v75;
  v74[7] = *(a1 + 96);
  v76 = *(a1 + 16);
  v74[1] = *a1;
  v74[2] = v76;
  v77 = *(a1 + 48);
  v74[3] = *(a1 + 32);
  v74[4] = v77;
  v110 = *(v69 + 32);
  (v110)(v74 + v73, v70, v72);
  outlined init with copy of ControlsLockOverlay(a1, v131);
  lazy protocol witness table accessor for type DragGesture and conformance DragGesture(&lazy protocol witness table cache variable for type DragGesture and conformance DragGesture, MEMORY[0x277CDD730]);
  lazy protocol witness table accessor for type DragGesture and conformance DragGesture(&lazy protocol witness table cache variable for type DragGesture.Value and conformance DragGesture.Value, MEMORY[0x277CDD708]);
  v78 = v111;
  v79 = v112;
  v80 = v124;
  Gesture<>.onChanged(_:)();

  (*(v113 + 8))(v80, v79);
  v81 = v127;
  v82 = v128;
  v109(v127, v126, v128);
  v83 = swift_allocObject();
  v84 = *(a1 + 80);
  v83[5] = *(a1 + 64);
  v83[6] = v84;
  v83[7] = *(a1 + 96);
  v85 = *(a1 + 16);
  v83[1] = *a1;
  v83[2] = v85;
  v86 = *(a1 + 48);
  v83[3] = *(a1 + 32);
  v83[4] = v86;
  (v110)(v83 + v73, v81, v82);
  outlined init with copy of ControlsLockOverlay(a1, v131);
  lazy protocol witness table accessor for type _ForegroundStyleModifier<Color> and conformance _ForegroundStyleModifier<A>(&lazy protocol witness table cache variable for type _ChangedGesture<DragGesture> and conformance _ChangedGesture<A>, &_s7SwiftUI15_ChangedGestureVyAA04DragD0VGMd);
  v87 = v114;
  v88 = v116;
  Gesture.onEnded(_:)();

  (*(v117 + 8))(v78, v88);
  static GestureMask.all.getter();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyACyACyACyAA6CircleVAA12_FrameLayoutVGAA24_ForegroundStyleModifierVyAA5ColorVGGAA08_OverlayJ0VyAA5GroupVyAA012_ConditionalD0VyAA5ImageVAVGGGGAA09_PositionG0VGMd);
  lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Circle, _FrameLayout>, _ForegroundStyleModifier<Color>>, _OverlayModifier<Group<_ConditionalContent<Image, Image>>>>, _PositionLayout> and conformance <> ModifiedContent<A, B>();
  lazy protocol witness table accessor for type _ForegroundStyleModifier<Color> and conformance _ForegroundStyleModifier<A>(&lazy protocol witness table cache variable for type _EndedGesture<_ChangedGesture<DragGesture>> and conformance _EndedGesture<A>, &_s7SwiftUI13_EndedGestureVyAA08_ChangedD0VyAA04DragD0VGGMd);
  v89 = v115;
  v90 = v121;
  View.gesture<A>(_:including:)();
  (*(v122 + 8))(v87, v90);
  v131[4] = v137;
  v131[5] = v138;
  v132 = v139;
  v131[0] = v133;
  v131[1] = v134;
  v131[2] = v135;
  v131[3] = v136;
  _s7SwiftUI4FontV6DesignOSgWOhTm_3(v131, &_s7SwiftUI15ModifiedContentVyACyACyACyAA6CircleVAA12_FrameLayoutVGAA24_ForegroundStyleModifierVyAA5ColorVGGAA08_OverlayJ0VyAA5GroupVyAA012_ConditionalD0VyAA5ImageVAVGGGGAA09_PositionG0VGMd);
  v91 = v129;
  outlined init with copy of ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<SlidingGradientText, _PaddingLayout>, _PaddingLayout>, _PaddingLayout>, _OpacityEffect>, _EnvironmentKeyWritingModifier<CGFloat>>, _EnvironmentKeyWritingModifier<Int?>>(v125, v129, &_s7SwiftUI15ModifiedContentVyACyACyACyACyACy07WorkoutB019SlidingGradientTextVAA14_PaddingLayoutVGAHGAHGAA14_OpacityEffectVGAA30_EnvironmentKeyWritingModifierVy12CoreGraphics7CGFloatVGGAPySiSgGGMd);
  v92 = v118;
  v93 = v119;
  v94 = *(v119 + 16);
  v95 = v120;
  v94(v118, v89, v120);
  v96 = v91;
  v97 = v123;
  outlined init with copy of ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<SlidingGradientText, _PaddingLayout>, _PaddingLayout>, _PaddingLayout>, _OpacityEffect>, _EnvironmentKeyWritingModifier<CGFloat>>, _EnvironmentKeyWritingModifier<Int?>>(v96, v123, &_s7SwiftUI15ModifiedContentVyACyACyACyACyACy07WorkoutB019SlidingGradientTextVAA14_PaddingLayoutVGAHGAHGAA14_OpacityEffectVGAA30_EnvironmentKeyWritingModifierVy12CoreGraphics7CGFloatVGGAPySiSgGGMd);
  v98 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyACyACyACyACyACy07WorkoutB019SlidingGradientTextVAA14_PaddingLayoutVGAHGAHGAA14_OpacityEffectVGAA30_EnvironmentKeyWritingModifierVy12CoreGraphics7CGFloatVGGAPySiSgGG_AA4ViewPAAE7gesture_9includingQrqd___AA11GestureMaskVtAA0W0Rd__lFQOyACyACyACyACyAA6CircleVAA06_FrameJ0VGAA016_ForegroundStyleP0VyAA5ColorVGGAA08_OverlayP0VyAA5GroupVyAA012_ConditionalD0VyAA5ImageVA22_GGGGAA09_PositionJ0VG_AA06_EndedW0VyAA08_ChangedW0VyAA04DragW0VGGQo_tMd);
  v94((v97 + *(v98 + 48)), v92, v95);
  v99 = *(v93 + 8);
  v99(v89, v95);
  _s7SwiftUI4FontV6DesignOSgWOhTm_3(v125, &_s7SwiftUI15ModifiedContentVyACyACyACyACyACy07WorkoutB019SlidingGradientTextVAA14_PaddingLayoutVGAHGAHGAA14_OpacityEffectVGAA30_EnvironmentKeyWritingModifierVy12CoreGraphics7CGFloatVGGAPySiSgGGMd);
  v99(v92, v95);
  return _s7SwiftUI4FontV6DesignOSgWOhTm_3(v129, &_s7SwiftUI15ModifiedContentVyACyACyACyACyACy07WorkoutB019SlidingGradientTextVAA14_PaddingLayoutVGAHGAHGAA14_OpacityEffectVGAA30_EnvironmentKeyWritingModifierVy12CoreGraphics7CGFloatVGGAPySiSgGGMd);
}

uint64_t closure #1 in closure #1 in closure #1 in closure #1 in closure #1 in ControlsLockOverlay.body.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 16);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI5StateVySdGMd);
  State.wrappedValue.getter();
  GeometryProxy.size.getter();
  Image.init(systemName:)();
  result = _ConditionalContent<>.init(storage:)();
  *a2 = v4;
  *(a2 + 8) = BYTE8(v4);
  return result;
}

uint64_t closure #2 in closure #1 in closure #1 in closure #1 in ControlsLockOverlay.body.getter()
{
  DragGesture.Value.translation.getter();
  GeometryProxy.size.getter();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI5StateVySdGMd);
  return State.wrappedValue.setter();
}

uint64_t closure #3 in closure #1 in closure #1 in closure #1 in ControlsLockOverlay.body.getter(uint64_t a1, uint64_t a2)
{
  MEMORY[0x20F30B4C0](*(a2 + 96), 1.0, 0.0);
  withAnimation<A>(_:_:)();
}

uint64_t closure #1 in closure #3 in closure #1 in closure #1 in closure #1 in ControlsLockOverlay.body.getter(uint64_t a1)
{
  v9 = *(a1 + 16);
  v10 = v9;
  v11 = *(&v9 + 1);
  outlined init with copy of ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<SlidingGradientText, _PaddingLayout>, _PaddingLayout>, _PaddingLayout>, _OpacityEffect>, _EnvironmentKeyWritingModifier<CGFloat>>, _EnvironmentKeyWritingModifier<Int?>>(&v11, &v8, &_s7SwiftUI11AnyLocationCySdGSgMd);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI5StateVySdGMd);
  State.wrappedValue.getter();
  v2 = v8;
  GeometryProxy.size.getter();
  if (v3 * *(a1 + 72) >= v2)
  {
    v9 = v10;
    v8 = 0.0;
    State.wrappedValue.setter();
    return _s7SwiftUI4FontV6DesignOSgWOhTm_3(&v10, &_s7SwiftUI5StateVySdGMd);
  }

  else
  {
    GeometryProxy.size.getter();
    v5 = v4 - (*(a1 + 56) + *(a1 + 64) + *(a1 + 56) + *(a1 + 64));
    v9 = v10;
    v8 = v5;
    State.wrappedValue.setter();
    v6 = _s7SwiftUI4FontV6DesignOSgWOhTm_3(&v10, &_s7SwiftUI5StateVySdGMd);
    return (*a1)(v6, *(a1 + 96));
  }
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<Rectangle, _ForegroundStyleModifier<Color>>, _OverlayModifier<ModifiedContent<ModifiedContent<GeometryReader<ModifiedContent<ModifiedContent<ModifiedContent<_ShapeView<RoundedRectangle, Material>, _FrameLayout>, _PaddingLayout>, _OverlayModifier<TupleView<(ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<SlidingGradientText, _PaddingLayout>, _PaddingLayout>, _PaddingLayout>, _OpacityEffect>, _EnvironmentKeyWritingModifier<CGFloat>>, _EnvironmentKeyWritingModifier<Int?>>, <<opaque return type of View.gesture<A>(_:including:)>>.0)>>>>, _FrameLayout>, _EnvironmentKeyWritingModifier<Font?>>>> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<Rectangle, _ForegroundStyleModifier<Color>>, _OverlayModifier<ModifiedContent<ModifiedContent<GeometryReader<ModifiedContent<ModifiedContent<ModifiedContent<_ShapeView<RoundedRectangle, Material>, _FrameLayout>, _PaddingLayout>, _OverlayModifier<TupleView<(ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<SlidingGradientText, _PaddingLayout>, _PaddingLayout>, _PaddingLayout>, _OpacityEffect>, _EnvironmentKeyWritingModifier<CGFloat>>, _EnvironmentKeyWritingModifier<Int?>>, <<opaque return type of View.gesture<A>(_:including:)>>.0)>>>>, _FrameLayout>, _EnvironmentKeyWritingModifier<Font?>>>> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<Rectangle, _ForegroundStyleModifier<Color>>, _OverlayModifier<ModifiedContent<ModifiedContent<GeometryReader<ModifiedContent<ModifiedContent<ModifiedContent<_ShapeView<RoundedRectangle, Material>, _FrameLayout>, _PaddingLayout>, _OverlayModifier<TupleView<(ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<SlidingGradientText, _PaddingLayout>, _PaddingLayout>, _PaddingLayout>, _OpacityEffect>, _EnvironmentKeyWritingModifier<CGFloat>>, _EnvironmentKeyWritingModifier<Int?>>, <<opaque return type of View.gesture<A>(_:including:)>>.0)>>>>, _FrameLayout>, _EnvironmentKeyWritingModifier<Font?>>>> and conformance <> ModifiedContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyACyAA9RectangleVAA24_ForegroundStyleModifierVyAA5ColorVGGAA08_OverlayH0VyACyACyAA14GeometryReaderVyACyACyACyAA10_ShapeViewVyAA07RoundedE0VAA8MaterialVGAA12_FrameLayoutVGAA08_PaddingR0VGAMyAA05TupleN0VyACyACyACyACyACyACy07WorkoutB019SlidingGradientTextVA_GA_GA_GAA14_OpacityEffectVGAA022_EnvironmentKeyWritingH0Vy12CoreGraphics7CGFloatVGGA13_ySiSgGG_AA0N0PAAE7gesture_9includingQrqd___AA11GestureMaskVtAA7GestureRd__lFQOyACyACyACyACyAA6CircleVAXGAJGAMyAA5GroupVyAA012_ConditionalD0VyAA5ImageVA38_GGGGAA09_PositionR0VG_AA13_EndedGestureVyAA15_ChangedGestureVyAA11DragGestureVGGQo_tGGGGAXGA13_yAA4FontVSgGGGGMd);
    lazy protocol witness table accessor for type ModifiedContent<Rectangle, _ForegroundStyleModifier<Color>> and conformance <> ModifiedContent<A, B>();
    lazy protocol witness table accessor for type _ForegroundStyleModifier<Color> and conformance _ForegroundStyleModifier<A>(&lazy protocol witness table cache variable for type _OverlayModifier<ModifiedContent<ModifiedContent<GeometryReader<ModifiedContent<ModifiedContent<ModifiedContent<_ShapeView<RoundedRectangle, Material>, _FrameLayout>, _PaddingLayout>, _OverlayModifier<TupleView<(ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<SlidingGradientText, _PaddingLayout>, _PaddingLayout>, _PaddingLayout>, _OpacityEffect>, _EnvironmentKeyWritingModifier<CGFloat>>, _EnvironmentKeyWritingModifier<Int?>>, <<opaque return type of View.gesture<A>(_:including:)>>.0)>>>>, _FrameLayout>, _EnvironmentKeyWritingModifier<Font?>>> and conformance _OverlayModifier<A>, &_s7SwiftUI16_OverlayModifierVyAA15ModifiedContentVyAEyAA14GeometryReaderVyAEyAEyAEyAA10_ShapeViewVyAA16RoundedRectangleVAA8MaterialVGAA12_FrameLayoutVGAA08_PaddingO0VGACyAA05TupleJ0VyAEyAEyAEyAEyAEyAEy07WorkoutB019SlidingGradientTextVASGASGASGAA14_OpacityEffectVGAA022_EnvironmentKeyWritingD0Vy12CoreGraphics7CGFloatVGGA5_ySiSgGG_AA0J0PAAE7gesture_9includingQrqd___AA11GestureMaskVtAA7GestureRd__lFQOyAEyAEyAEyAEyAA6CircleVAPGAA016_ForegroundStyleD0VyAA5ColorVGGACyAA5GroupVyAA012_ConditionalF0VyAA5ImageVA35_GGGGAA09_PositionO0VG_AA13_EndedGestureVyAA15_ChangedGestureVyAA11DragGestureVGGQo_tGGGGAPGA5_yAA4FontVSgGGGMd);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<Rectangle, _ForegroundStyleModifier<Color>>, _OverlayModifier<ModifiedContent<ModifiedContent<GeometryReader<ModifiedContent<ModifiedContent<ModifiedContent<_ShapeView<RoundedRectangle, Material>, _FrameLayout>, _PaddingLayout>, _OverlayModifier<TupleView<(ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<SlidingGradientText, _PaddingLayout>, _PaddingLayout>, _PaddingLayout>, _OpacityEffect>, _EnvironmentKeyWritingModifier<CGFloat>>, _EnvironmentKeyWritingModifier<Int?>>, <<opaque return type of View.gesture<A>(_:including:)>>.0)>>>>, _FrameLayout>, _EnvironmentKeyWritingModifier<Font?>>>> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<Rectangle, _ForegroundStyleModifier<Color>> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<Rectangle, _ForegroundStyleModifier<Color>> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<Rectangle, _ForegroundStyleModifier<Color>> and conformance <> ModifiedContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyAA9RectangleVAA24_ForegroundStyleModifierVyAA5ColorVGGMd);
    lazy protocol witness table accessor for type Rectangle and conformance Rectangle();
    lazy protocol witness table accessor for type _ForegroundStyleModifier<Color> and conformance _ForegroundStyleModifier<A>(&lazy protocol witness table cache variable for type _ForegroundStyleModifier<Color> and conformance _ForegroundStyleModifier<A>, &_s7SwiftUI24_ForegroundStyleModifierVyAA5ColorVGMd);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<Rectangle, _ForegroundStyleModifier<Color>> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type Rectangle and conformance Rectangle()
{
  result = lazy protocol witness table cache variable for type Rectangle and conformance Rectangle;
  if (!lazy protocol witness table cache variable for type Rectangle and conformance Rectangle)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Rectangle and conformance Rectangle);
  }

  return result;
}

uint64_t outlined destroy of _OverlayModifier<ModifiedContent<ModifiedContent<GeometryReader<ModifiedContent<ModifiedContent<ModifiedContent<_ShapeView<RoundedRectangle, Material>, _FrameLayout>, _PaddingLayout>, _OverlayModifier<TupleView<(ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<SlidingGradientText, _PaddingLayout>, _PaddingLayout>, _PaddingLayout>, _OpacityEffect>, _EnvironmentKeyWritingModifier<CGFloat>>, _EnvironmentKeyWritingModifier<Int?>>, <<opaque return type of View.gesture<A>(_:including:)>>.0)>>>>, _FrameLayout>, _EnvironmentKeyWritingModifier<Font?>>>(uint64_t a1, uint64_t *a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(a2);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t objectdestroyTm_23()
{

  return swift_deallocObject();
}

uint64_t objectdestroy_18Tm()
{
  v1 = type metadata accessor for GeometryProxy();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 128) & ~*(v2 + 80);

  (*(v2 + 8))(v0 + v3, v1);

  return swift_deallocObject();
}

uint64_t partial apply for closure #2 in closure #1 in closure #1 in closure #1 in ControlsLockOverlay.body.getter(uint64_t a1, uint64_t (*a2)(uint64_t, uint64_t, uint64_t))
{
  v4 = *(type metadata accessor for GeometryProxy() - 8);
  v5 = v2 + ((*(v4 + 80) + 128) & ~*(v4 + 80));

  return a2(a1, v2 + 16, v5);
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Circle, _FrameLayout>, _ForegroundStyleModifier<Color>>, _OverlayModifier<Group<_ConditionalContent<Image, Image>>>>, _PositionLayout> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Circle, _FrameLayout>, _ForegroundStyleModifier<Color>>, _OverlayModifier<Group<_ConditionalContent<Image, Image>>>>, _PositionLayout> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Circle, _FrameLayout>, _ForegroundStyleModifier<Color>>, _OverlayModifier<Group<_ConditionalContent<Image, Image>>>>, _PositionLayout> and conformance <> ModifiedContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyACyACyACyAA6CircleVAA12_FrameLayoutVGAA24_ForegroundStyleModifierVyAA5ColorVGGAA08_OverlayJ0VyAA5GroupVyAA012_ConditionalD0VyAA5ImageVAVGGGGAA09_PositionG0VGMd);
    lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<ModifiedContent<Circle, _FrameLayout>, _ForegroundStyleModifier<Color>>, _OverlayModifier<Group<_ConditionalContent<Image, Image>>>> and conformance <> ModifiedContent<A, B>();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Circle, _FrameLayout>, _ForegroundStyleModifier<Color>>, _OverlayModifier<Group<_ConditionalContent<Image, Image>>>>, _PositionLayout> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<ModifiedContent<Circle, _FrameLayout>, _ForegroundStyleModifier<Color>>, _OverlayModifier<Group<_ConditionalContent<Image, Image>>>> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<Circle, _FrameLayout>, _ForegroundStyleModifier<Color>>, _OverlayModifier<Group<_ConditionalContent<Image, Image>>>> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<Circle, _FrameLayout>, _ForegroundStyleModifier<Color>>, _OverlayModifier<Group<_ConditionalContent<Image, Image>>>> and conformance <> ModifiedContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyACyACyAA6CircleVAA12_FrameLayoutVGAA24_ForegroundStyleModifierVyAA5ColorVGGAA08_OverlayJ0VyAA5GroupVyAA012_ConditionalD0VyAA5ImageVAVGGGGMd);
    lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<Circle, _FrameLayout>, _ForegroundStyleModifier<Color>> and conformance <> ModifiedContent<A, B>();
    lazy protocol witness table accessor for type _ForegroundStyleModifier<Color> and conformance _ForegroundStyleModifier<A>(&lazy protocol witness table cache variable for type _OverlayModifier<Group<_ConditionalContent<Image, Image>>> and conformance _OverlayModifier<A>, &_s7SwiftUI16_OverlayModifierVyAA5GroupVyAA19_ConditionalContentVyAA5ImageVAIGGGMd);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<Circle, _FrameLayout>, _ForegroundStyleModifier<Color>>, _OverlayModifier<Group<_ConditionalContent<Image, Image>>>> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<Circle, _FrameLayout>, _ForegroundStyleModifier<Color>> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<Circle, _FrameLayout>, _ForegroundStyleModifier<Color>> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<Circle, _FrameLayout>, _ForegroundStyleModifier<Color>> and conformance <> ModifiedContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyACyAA6CircleVAA12_FrameLayoutVGAA24_ForegroundStyleModifierVyAA5ColorVGGMd);
    lazy protocol witness table accessor for type ModifiedContent<Circle, _FrameLayout> and conformance <> ModifiedContent<A, B>();
    lazy protocol witness table accessor for type _ForegroundStyleModifier<Color> and conformance _ForegroundStyleModifier<A>(&lazy protocol witness table cache variable for type _ForegroundStyleModifier<Color> and conformance _ForegroundStyleModifier<A>, &_s7SwiftUI24_ForegroundStyleModifierVyAA5ColorVGMd);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<Circle, _FrameLayout>, _ForegroundStyleModifier<Color>> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<Circle, _FrameLayout> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<Circle, _FrameLayout> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<Circle, _FrameLayout> and conformance <> ModifiedContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyAA6CircleVAA12_FrameLayoutVGMd);
    lazy protocol witness table accessor for type Circle and conformance Circle();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<Circle, _FrameLayout> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type Circle and conformance Circle()
{
  result = lazy protocol witness table cache variable for type Circle and conformance Circle;
  if (!lazy protocol witness table cache variable for type Circle and conformance Circle)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Circle and conformance Circle);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Circle and conformance Circle;
  if (!lazy protocol witness table cache variable for type Circle and conformance Circle)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Circle and conformance Circle);
  }

  return result;
}

uint64_t lazy protocol witness table accessor for type _ForegroundStyleModifier<Color> and conformance _ForegroundStyleModifier<A>(unint64_t *a1, uint64_t *a2)
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

uint64_t outlined init with copy of ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<SlidingGradientText, _PaddingLayout>, _PaddingLayout>, _PaddingLayout>, _OpacityEffect>, _EnvironmentKeyWritingModifier<CGFloat>>, _EnvironmentKeyWritingModifier<Int?>>(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(a3);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t _s7SwiftUI4FontV6DesignOSgWOhTm_3(uint64_t a1, uint64_t *a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(a2);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t lazy protocol witness table accessor for type DragGesture and conformance DragGesture(unint64_t *a1, void (*a2)(uint64_t))
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

void static MetricViewBuilder.view(metricType:metricPlatterType:formattingManager:activityType:metricsPublisher:)(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X2>, void *a4@<X3>, uint64_t (*a5)()@<X4>, uint64_t a6@<X8>)
{
  v626 = a5;
  v620 = a4;
  v625 = a3;
  v567 = a2;
  v630 = a6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateVSgMd);
  MEMORY[0x28223BE20](v7 - 8);
  v568 = &v555 - v8;
  v566 = type metadata accessor for WorkoutTimeView();
  MEMORY[0x28223BE20](v566);
  v570 = (&v555 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  v569 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVy07WorkoutB00E8TimeViewVAD12MetricDetailVGMd);
  MEMORY[0x28223BE20](v569);
  v572 = &v555 - v10;
  v584 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyACy07WorkoutB00E8TimeViewVAD12MetricDetailVGAA24_ForegroundStyleModifierVyAA5ColorVGGMd);
  MEMORY[0x28223BE20](v584);
  v571 = &v555 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v573 = &v555 - v13;
  v582 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI19_ConditionalContentV7StorageOy07WorkoutB015PowerMetricViewVAA08ModifiedD0VyAJyAF0f4TimeI0VAF0H6DetailVGAA24_ForegroundStyleModifierVyAA5ColorVGG_GMd);
  MEMORY[0x28223BE20](v582);
  v583 = (&v555 - v14);
  v601 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI19_ConditionalContentVy07WorkoutB015PowerMetricViewVAA08ModifiedD0VyAHyAD0e4TimeH0VAD0G6DetailVGAA24_ForegroundStyleModifierVyAA5ColorVGGGMd);
  MEMORY[0x28223BE20](v601);
  v585 = &v555 - v15;
  v599 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI19_ConditionalContentV7StorageOyACy07WorkoutB016EnergyMetricViewVAF05PowerhI0VGACyAjA08ModifiedD0VyAMyAF0f4TimeI0VAF0H6DetailVGAA24_ForegroundStyleModifierVyAA5ColorVGGG_GMd);
  MEMORY[0x28223BE20](v599);
  v600 = (&v555 - v16);
  v610 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI19_ConditionalContentVyACy07WorkoutB016EnergyMetricViewVAD05PowergH0VGACyAhA08ModifiedD0VyAKyAD0e4TimeH0VAD0G6DetailVGAA24_ForegroundStyleModifierVyAA5ColorVGGGGMd);
  MEMORY[0x28223BE20](v610);
  v602 = &v555 - v17;
  v607 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI19_ConditionalContentV7StorageOyACyACy07WorkoutB025SegmentDurationMetricViewVAF014DistanceDetailiJ0VGACyAF04PaceiJ0VAF06EnergyiJ0VGGACyACyAoF05PoweriJ0VGACyAsA08ModifiedD0VyAVyAF0f4TimeJ0VAF0iL0VGAA24_ForegroundStyleModifierVyAA5ColorVGGGG_GMd);
  MEMORY[0x28223BE20](v607);
  v609 = (&v555 - v18);
  v618 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI19_ConditionalContentVyACyACy07WorkoutB025SegmentDurationMetricViewVAD014DistanceDetailhI0VGACyAD04PacehI0VAD06EnergyhI0VGGACyACyAmD05PowerhI0VGACyAqA08ModifiedD0VyATyAD0e4TimeI0VAD0hK0VGAA24_ForegroundStyleModifierVyAA5ColorVGGGGGMd);
  MEMORY[0x28223BE20](v618);
  v611 = &v555 - v19;
  v615 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI19_ConditionalContentV7StorageOyACyACyACyACyACy07WorkoutB017CadenceMetricViewVAA05EmptyI0VGAHGAHGACyAF015ElevationChangehI0VAF07CurrentkhI0VGGACyACyAF05PowerhI0VAUGACyAuF014FlightsClimbedhI0VGGGACyACyACyAF015SegmentDurationhI0VAF014DistanceDetailhI0VGACyAF04PacehI0VAF06EnergyhI0VGGACyACyA8_AUGACyAuA08ModifiedD0VyA13_yAF0f4TimeI0VAF0hT0VGAA24_ForegroundStyleModifierVyAA5ColorVGGGGG_GMd);
  MEMORY[0x28223BE20](v615);
  v617 = (&v555 - v20);
  v624 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI19_ConditionalContentVyACyACyACyACyACy07WorkoutB017CadenceMetricViewVAA05EmptyH0VGAFGAFGACyAD015ElevationChangegH0VAD07CurrentjgH0VGGACyACyAD05PowergH0VASGACyAsD014FlightsClimbedgH0VGGGACyACyACyAD015SegmentDurationgH0VAD014DistanceDetailgH0VGACyAD04PacegH0VAD06EnergygH0VGGACyACyA6_ASGACyAsA08ModifiedD0VyA11_yAD0e4TimeH0VAD0gS0VGAA24_ForegroundStyleModifierVyAA5ColorVGGGGGGMd);
  MEMORY[0x28223BE20](v624);
  v619 = &v555 - v21;
  v563 = type metadata accessor for MetricPlatterType();
  v561 = *(v563 - 8);
  MEMORY[0x28223BE20](v563);
  v557 = &v555 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v559 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11WorkoutCore17MetricPlatterTypeOSg_ADtMd);
  MEMORY[0x28223BE20](v559);
  v562 = &v555 - v23;
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11WorkoutCore17MetricPlatterTypeOSgMd);
  MEMORY[0x28223BE20](v24 - 8);
  v558 = &v555 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v26);
  v560 = &v555 - v27;
  v578 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI19_ConditionalContentV7StorageOy07WorkoutB020TimeInZoneMetricViewVAF0ijK0V_GMd);
  MEMORY[0x28223BE20](v578);
  v579 = (&v555 - v28);
  v597 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI19_ConditionalContentVy07WorkoutB020TimeInZoneMetricViewVAD0hiJ0VGMd);
  MEMORY[0x28223BE20](v597);
  v580 = &v555 - v29;
  v30 = type metadata accessor for ZoneViewType();
  v588 = *(v30 - 8);
  v589 = v30;
  MEMORY[0x28223BE20](v30);
  v32 = &v555 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v33);
  v35 = &v555 - v34;
  v593 = type metadata accessor for ZoneMetricView();
  MEMORY[0x28223BE20](v593);
  v37 = &v555 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v38);
  v565 = &v555 - v39;
  MEMORY[0x28223BE20](v40);
  v42 = &v555 - v41;
  MEMORY[0x28223BE20](v43);
  v564 = &v555 - v44;
  v594 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI19_ConditionalContentV7StorageOyACy07WorkoutB028HeartRateAggregateMetricViewVAF04ZonejK0VGACyAF06TimeInljK0VAJG_GMd);
  MEMORY[0x28223BE20](v594);
  v596 = &v555 - v45;
  v574 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI19_ConditionalContentV7StorageOy07WorkoutB028HeartRateAggregateMetricViewVAF04ZonejK0V_GMd);
  MEMORY[0x28223BE20](v574);
  v576 = &v555 - v46;
  v595 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI19_ConditionalContentVy07WorkoutB028HeartRateAggregateMetricViewVAD04ZoneiJ0VGMd);
  MEMORY[0x28223BE20](v595);
  v577 = &v555 - v47;
  v606 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI19_ConditionalContentVyACy07WorkoutB028HeartRateAggregateMetricViewVAD04ZoneiJ0VGACyAD06TimeInkiJ0VAHGGMd);
  MEMORY[0x28223BE20](v606);
  v598 = &v555 - v48;
  v592 = type metadata accessor for HeartRateAggregateMetricView();
  MEMORY[0x28223BE20](v592);
  v581 = &v555 - ((v49 + 15) & 0xFFFFFFFFFFFFFFF0);
  v50 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI19_ConditionalContentV7StorageOy07WorkoutB019HeartRateMetricViewVAF0gh9AggregateiJ0V_GMd);
  MEMORY[0x28223BE20](v50);
  v52 = &v555 - v51;
  v590 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI19_ConditionalContentVy07WorkoutB019HeartRateMetricViewVAD0fg9AggregatehI0VGMd);
  MEMORY[0x28223BE20](v590);
  v575 = &v555 - v53;
  v54 = type metadata accessor for HeartRateMetricView();
  MEMORY[0x28223BE20](v54);
  v56 = &v555 - ((v55 + 15) & 0xFFFFFFFFFFFFFFF0);
  v627 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI19_ConditionalContentV7StorageOyACyACyACyACyACy07WorkoutB016EnergyMetricViewVAHGACyAF09HeartRatehI0VAF0jk9AggregatehI0VGGACyACyAmF04ZonehI0VGACyAF06TimeInmhI0VAQGGGACyACyACyAtF04PacehI0VGACyA2YGGACyA_ACyAF08DistancehI0VAF04LapshI0VGGGGACyACyACyACyACyACyAF07CadencehI0VAA05EmptyI0VGA10_GA10_GACyAF015ElevationChangehI0VAF07CurrentuhI0VGGACyACyAF05PowerhI0VA23_GACyA23_AF014FlightsClimbedhI0VGGGACyACyACyAF015SegmentDurationhI0VAF0q6DetailhI0VGACyAyHGGACyACyAHA23_GACyA23_AA08ModifiedD0VyA39_yAF0fnI0VAF0H6DetailVGAA24_ForegroundStyleModifierVyAA5ColorVGGGGGGGACyACyACyACyA33_AYGACyAF012StrideLengthhI0VA58_GGACyACyAF019VerticalOscillationhI0VA62_GACyAF013GroundContactnhI0VA65_GGGACyACyA17_AF016DownhillRunCounthI0VGACyA12_AA6HStackVyAA05TupleI0VyA39_yAA4TextVAF0H9ValueFontVG_A39_yA39_yA77_AF0H19DescriptionCoreFontVGAF26ExtendedLineSpacingSupport33_241C09B5AC269BC1C919798A0AC522FDLLVGtGGGGG_GMd);
  MEMORY[0x28223BE20](v627);
  v629 = &v555 - v57;
  v621 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI19_ConditionalContentV7StorageOyACyACyACyACy07WorkoutB016EnergyMetricViewVAHGACyAF09HeartRatehI0VAF0jk9AggregatehI0VGGACyACyAmF04ZonehI0VGACyAF06TimeInmhI0VAQGGGACyACyACyAtF04PacehI0VGACyA2YGGACyA_ACyAF08DistancehI0VAF04LapshI0VGGGGACyACyACyACyACyACyAF07CadencehI0VAA05EmptyI0VGA10_GA10_GACyAF015ElevationChangehI0VAF07CurrentuhI0VGGACyACyAF05PowerhI0VA23_GACyA23_AF014FlightsClimbedhI0VGGGACyACyACyAF015SegmentDurationhI0VAF0q6DetailhI0VGACyAyHGGACyACyAHA23_GACyA23_AA08ModifiedD0VyA39_yAF0fnI0VAF0H6DetailVGAA24_ForegroundStyleModifierVyAA5ColorVGGGGGG_GMd);
  MEMORY[0x28223BE20](v621);
  v623 = &v555 - v58;
  v612 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI19_ConditionalContentV7StorageOyACyACyACy07WorkoutB016EnergyMetricViewVAHGACyAF09HeartRatehI0VAF0jk9AggregatehI0VGGACyACyAmF04ZonehI0VGACyAF06TimeInmhI0VAQGGGACyACyACyAtF04PacehI0VGACyA2YGGACyA_ACyAF08DistancehI0VAF04LapshI0VGGG_GMd);
  MEMORY[0x28223BE20](v612);
  v614 = (&v555 - v59);
  v603 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI19_ConditionalContentV7StorageOyACyACy07WorkoutB016EnergyMetricViewVAHGACyAF09HeartRatehI0VAF0jk9AggregatehI0VGGACyACyAmF04ZonehI0VGACyAF06TimeInmhI0VAQGG_GMd);
  MEMORY[0x28223BE20](v603);
  v605 = &v555 - v60;
  v586 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI19_ConditionalContentV7StorageOyACy07WorkoutB016EnergyMetricViewVAHGACyAF09HeartRatehI0VAF0jk9AggregatehI0VG_GMd);
  MEMORY[0x28223BE20](v586);
  v587 = (&v555 - v61);
  v604 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI19_ConditionalContentVyACy07WorkoutB016EnergyMetricViewVAFGACyAD09HeartRategH0VAD0ij9AggregategH0VGGMd);
  MEMORY[0x28223BE20](v604);
  v591 = &v555 - v62;
  v613 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI19_ConditionalContentVyACyACy07WorkoutB016EnergyMetricViewVAFGACyAD09HeartRategH0VAD0ij9AggregategH0VGGACyACyAkD04ZonegH0VGACyAD06TimeInlgH0VAOGGGMd);
  MEMORY[0x28223BE20](v613);
  v608 = &v555 - v63;
  v622 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI19_ConditionalContentVyACyACyACy07WorkoutB016EnergyMetricViewVAFGACyAD09HeartRategH0VAD0ij9AggregategH0VGGACyACyAkD04ZonegH0VGACyAD06TimeInlgH0VAOGGGACyACyACyArD04PacegH0VGACyA2WGGACyAyCyAD08DistancegH0VAD04LapsgH0VGGGGMd);
  MEMORY[0x28223BE20](v622);
  v616 = &v555 - v64;
  v628 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI19_ConditionalContentVyACyACyACyACy07WorkoutB016EnergyMetricViewVAFGACyAD09HeartRategH0VAD0ij9AggregategH0VGGACyACyAkD04ZonegH0VGACyAD06TimeInlgH0VAOGGGACyACyACyArD04PacegH0VGACyA2WGGACyAyCyAD08DistancegH0VAD04LapsgH0VGGGGACyACyACyACyACyACyAD07CadencegH0VAA05EmptyH0VGA8_GA8_GACyAD015ElevationChangegH0VAD07CurrenttgH0VGGACyACyAD05PowergH0VA21_GACyA21_AD014FlightsClimbedgH0VGGGACyACyACyAD015SegmentDurationgH0VAD0p6DetailgH0VGACyAwFGGACyACyAFA21_GACyA21_AA08ModifiedD0VyA37_yAD0emH0VAD0G6DetailVGAA24_ForegroundStyleModifierVyAA5ColorVGGGGGGGMd);
  v65 = MEMORY[0x28223BE20](v628);
  v67 = &v555 - v66;
  switch(a1)
  {
    case 0:
      _s7SwiftUI19_ConditionalContentV7StorageOyAA9EmptyViewVAA6HStackVyAA05TupleG0VyAA08ModifiedD0VyAA4TextV07WorkoutB015MetricValueFontVG_AMyAMyAoP0m15DescriptionCoreO0VGAP26ExtendedLineSpacingSupport33_241C09B5AC269BC1C919798A0AC522FDLLVGtGG_GWOi_(&v670);
      v689[8] = v678;
      v690[0] = v679;
      LOWORD(v690[1]) = v680;
      v689[4] = v674;
      v689[5] = v675;
      v689[7] = v677;
      v689[6] = v676;
      v689[0] = v670;
      v689[1] = v671;
      v689[3] = v673;
      v689[2] = v672;
      __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI6HStackVyAA9TupleViewVyAA15ModifiedContentVyAA4TextV07WorkoutB015MetricValueFontVG_AGyAGyAiJ0j15DescriptionCoreL0VGAJ26ExtendedLineSpacingSupport33_241C09B5AC269BC1C919798A0AC522FDLLVGtGGMd);
      lazy protocol witness table accessor for type HStack<TupleView<(ModifiedContent<Text, MetricValueFont>, ModifiedContent<ModifiedContent<Text, MetricDescriptionCoreFont>, ExtendedLineSpacingSupport>)>> and conformance HStack<A>(&lazy protocol witness table cache variable for type HStack<TupleView<(ModifiedContent<Text, MetricValueFont>, ModifiedContent<ModifiedContent<Text, MetricDescriptionCoreFont>, ExtendedLineSpacingSupport>)>> and conformance HStack<A>, &_s7SwiftUI6HStackVyAA9TupleViewVyAA15ModifiedContentVyAA4TextV07WorkoutB015MetricValueFontVG_AGyAGyAiJ0j15DescriptionCoreL0VGAJ26ExtendedLineSpacingSupport33_241C09B5AC269BC1C919798A0AC522FDLLVGtGGMd);
      _ConditionalContent<>.init(storage:)();
      v687 = v655;
      v688[0] = v656;
      LOWORD(v688[1]) = v657;
      v684[1] = v652[1];
      v684[2] = v652[2];
      v686 = v654;
      v685 = v653;
      v681 = v650[0];
      v682 = v650[1];
      v684[0] = v652[0];
      v683 = v651;
      _s7SwiftUI19_ConditionalContentV7StorageOyACy07WorkoutB025ElevationChangeMetricViewVAF016DownhillRunCountiJ0VGACyAA05EmptyJ0VAA6HStackVyAA05TupleJ0VyAA08ModifiedD0VyAA4TextVAF0I9ValueFontVG_ASyASyAuF0i15DescriptionCoreT0VGAF26ExtendedLineSpacingSupport33_241C09B5AC269BC1C919798A0AC522FDLLVGtGGG_GWOi0_(&v681);
      v689[8] = v687;
      v690[0] = v688[0];
      *(v690 + 15) = *(v688 + 15);
      v689[4] = v684[1];
      v689[5] = v684[2];
      v689[7] = v686;
      v689[6] = v685;
      v689[0] = v681;
      v689[1] = v682;
      v689[3] = v684[0];
      v689[2] = v683;
      __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI19_ConditionalContentVy07WorkoutB025ElevationChangeMetricViewVAD016DownhillRunCounthI0VGMd);
      __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI19_ConditionalContentVyAA9EmptyViewVAA6HStackVyAA05TupleF0VyAA08ModifiedD0VyAA4TextV07WorkoutB015MetricValueFontVG_AKyAKyAmN0l15DescriptionCoreN0VGAN26ExtendedLineSpacingSupport33_241C09B5AC269BC1C919798A0AC522FDLLVGtGGGMd);
      lazy protocol witness table accessor for type _ConditionalContent<ElevationChangeMetricView, DownhillRunCountMetricView> and conformance <> _ConditionalContent<A, B>();
      lazy protocol witness table accessor for type _ConditionalContent<EmptyView, HStack<TupleView<(ModifiedContent<Text, MetricValueFont>, ModifiedContent<ModifiedContent<Text, MetricDescriptionCoreFont>, ExtendedLineSpacingSupport>)>>> and conformance <> _ConditionalContent<A, B>();
      _ConditionalContent<>.init(storage:)();
      v689[8] = v648;
      v690[0] = *v649;
      *(v690 + 15) = *&v649[15];
      v689[4] = v644;
      v689[5] = v645;
      v689[7] = v647;
      v689[6] = v646;
      v689[0] = v640;
      v689[1] = v641;
      v689[3] = v643;
      v689[2] = v642;
      _s7SwiftUI19_ConditionalContentV7StorageOyACyACyACy07WorkoutB024DistanceDetailMetricViewVAF04PaceiJ0VGACyAF012StrideLengthiJ0VAMGGACyACyAF019VerticalOscillationiJ0VAQGACyAF017GroundContactTimeiJ0VATGGGACyACyAF015ElevationChangeiJ0VAF016DownhillRunCountiJ0VGACyAA05EmptyJ0VAA6HStackVyAA05TupleJ0VyAA08ModifiedD0VyAA4TextVAF0I9ValueFontVG_A8_yA8_yA10_AF0I19DescriptionCoreFontVGAF26ExtendedLineSpacingSupport33_241C09B5AC269BC1C919798A0AC522FDLLVGtGGGG_GWOi0_(v689);
      v637 = v689[8];
      v638 = v690[0];
      v639 = v690[1];
      v634[1] = v689[4];
      v634[2] = v689[5];
      v635 = v689[6];
      v636 = v689[7];
      v631 = v689[0];
      v632 = v689[1];
      v633 = v689[2];
      v634[0] = v689[3];
      __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI19_ConditionalContentVyACyACy07WorkoutB024DistanceDetailMetricViewVAD04PacehI0VGACyAD012StrideLengthhI0VAKGGACyACyAD019VerticalOscillationhI0VAOGACyAD017GroundContactTimehI0VARGGGMd);
      __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI19_ConditionalContentVyACy07WorkoutB025ElevationChangeMetricViewVAD016DownhillRunCounthI0VGACyAA05EmptyI0VAA6HStackVyAA05TupleI0VyAA08ModifiedD0VyAA4TextVAD0H9ValueFontVG_AQyAQyAsD0h15DescriptionCoreS0VGAD26ExtendedLineSpacingSupport33_241C09B5AC269BC1C919798A0AC522FDLLVGtGGGGMd);
      lazy protocol witness table accessor for type _ConditionalContent<_ConditionalContent<_ConditionalContent<DistanceDetailMetricView, PaceMetricView>, _ConditionalContent<StrideLengthMetricView, StrideLengthMetricView>>, _ConditionalContent<_ConditionalContent<VerticalOscillationMetricView, VerticalOscillationMetricView>, _ConditionalContent<GroundContactTimeMetricView, GroundContactTimeMetricView>>> and conformance <> _ConditionalContent<A, B>();
      lazy protocol witness table accessor for type _ConditionalContent<_ConditionalContent<ElevationChangeMetricView, DownhillRunCountMetricView>, _ConditionalContent<EmptyView, HStack<TupleView<(ModifiedContent<Text, MetricValueFont>, ModifiedContent<ModifiedContent<Text, MetricDescriptionCoreFont>, ExtendedLineSpacingSupport>)>>>> and conformance <> _ConditionalContent<A, B>();
      _ConditionalContent<>.init(storage:)();
      v68 = v656;
      v69 = v629;
      *(v629 + 128) = v655;
      *(v69 + 144) = v68;
      *(v69 + 160) = v657;
      v70 = v652[2];
      *(v69 + 64) = v652[1];
      *(v69 + 80) = v70;
      v71 = v654;
      *(v69 + 96) = v653;
      *(v69 + 112) = v71;
      v72 = v650[1];
      *v69 = v650[0];
      *(v69 + 16) = v72;
      v73 = v652[0];
      *(v69 + 32) = v651;
      *(v69 + 48) = v73;
      swift_storeEnumTagMultiPayload();
      __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI19_ConditionalContentVyACyACyACy07WorkoutB024DistanceDetailMetricViewVAD04PacehI0VGACyAD012StrideLengthhI0VAKGGACyACyAD019VerticalOscillationhI0VAOGACyAD017GroundContactTimehI0VARGGGACyACyAD015ElevationChangehI0VAD016DownhillRunCounthI0VGACyAA05EmptyI0VAA6HStackVyAA05TupleI0VyAA08ModifiedD0VyAA4TextVAD0H9ValueFontVG_A6_yA6_yA8_AD0H19DescriptionCoreFontVGAD26ExtendedLineSpacingSupport33_241C09B5AC269BC1C919798A0AC522FDLLVGtGGGGGMd);
      lazy protocol witness table accessor for type _ConditionalContent<_ConditionalContent<_ConditionalContent<_ConditionalContent<_ConditionalContent<EnergyMetricView, EnergyMetricView>, _ConditionalContent<HeartRateMetricView, HeartRateAggregateMetricView>>, _ConditionalContent<_ConditionalContent<HeartRateAggregateMetricView, ZoneMetricView>, _ConditionalContent<TimeInZoneMetricView, ZoneMetricView>>>, _ConditionalContent<_ConditionalContent<_ConditionalContent<TimeInZoneMetricView, PaceMetricView>, _ConditionalContent<PaceMetricView, PaceMetricView>>, _ConditionalContent<_ConditionalContent<PaceMetricView, PaceMetricView>, _ConditionalContent<DistanceMetricView, LapsMetricView>>>>, _ConditionalContent<_ConditionalContent<_ConditionalContent<_ConditionalContent<_ConditionalContent<_ConditionalContent<CadenceMetricView, EmptyView>, CadenceMetricView>, CadenceMetricView>, _ConditionalContent<ElevationChangeMetricView, CurrentElevationMetricView>>, _ConditionalContent<_ConditionalContent<PowerMetricView, PowerMet();
      lazy protocol witness table accessor for type _ConditionalContent<_ConditionalContent<_ConditionalContent<_ConditionalContent<DistanceDetailMetricView, PaceMetricView>, _ConditionalContent<StrideLengthMetricView, StrideLengthMetricView>>, _ConditionalContent<_ConditionalContent<VerticalOscillationMetricView, VerticalOscillationMetricView>, _ConditionalContent<GroundContactTimeMetricView, GroundContactTimeMetricView>>>, _ConditionalContent<_ConditionalContent<ElevationChangeMetricView, DownhillRunCountMetricView>, _ConditionalContent<EmptyView, HStack<TupleView<(ModifiedContent<Text, MetricValueFont>, ModifiedContent<ModifiedContent<Text, MetricDescriptionCoreFont>, ExtendedLineSpacingSupport>)>>>>> and conformance <> _ConditionalContent<A, B>();
      _ConditionalContent<>.init(storage:)();
      return;
    case 1:
      v193 = v67;
      MetricsPublisher.distance.getter();
      v255 = v254;
      v256 = FIUIDistanceTypeForActivityType();
      MetricsPublisher.trackRunningMetricsPublisher.getter();
      v257 = TrackRunningMetricsPublisher.trackRunningCoordinator.getter();

      v258 = dispatch thunk of TrackRunningCoordinator.preferredDistanceUnit.getter();
      v260 = v259;

      KeyPath = swift_getKeyPath();
      LOBYTE(v670) = v260 & 1;
      LOBYTE(v668) = 0;
      LOBYTE(v666[0]) = 0;
      *&v689[0] = v255;
      *(&v689[0] + 1) = v625;
      *&v689[1] = v256;
      *(&v689[1] + 1) = v258;
      LOBYTE(v689[2]) = v260 & 1;
      *(&v689[2] + 1) = KeyPath;
      LOWORD(v689[3]) = 0;
      v261 = v625;
      outlined copy of Environment<WorkoutViewStyle>.Content(KeyPath, 0);
      lazy protocol witness table accessor for type DistanceMetricView and conformance DistanceMetricView();
      lazy protocol witness table accessor for type LapsMetricView and conformance LapsMetricView();
      _ConditionalContent<>.init(storage:)();
      v689[0] = v650[0];
      v689[1] = v650[1];
      v689[2] = v651;
      LOWORD(v689[3]) = v652[0];
      LOBYTE(v640) = 1;
      BYTE9(v689[4]) = 1;
      __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI19_ConditionalContentVy07WorkoutB014PaceMetricViewVAFGMd);
      __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI19_ConditionalContentVy07WorkoutB018DistanceMetricViewVAD04LapsgH0VGMd);
      lazy protocol witness table accessor for type _ConditionalContent<StrideLengthMetricView, StrideLengthMetricView> and conformance <> _ConditionalContent<A, B>(&lazy protocol witness table cache variable for type _ConditionalContent<PaceMetricView, PaceMetricView> and conformance <> _ConditionalContent<A, B>, &_s7SwiftUI19_ConditionalContentVy07WorkoutB014PaceMetricViewVAFGMd, &_s7SwiftUI19_ConditionalContentVy07WorkoutB014PaceMetricViewVAFGMR, lazy protocol witness table accessor for type PaceMetricView and conformance PaceMetricView);
      lazy protocol witness table accessor for type _ConditionalContent<DistanceMetricView, LapsMetricView> and conformance <> _ConditionalContent<A, B>();
      _ConditionalContent<>.init(storage:)();
      v651 = v633;
      v652[0] = v634[0];
      *(v652 + 10) = *(v634 + 10);
      v650[0] = v631;
      v650[1] = v632;
      LOBYTE(v681) = 1;
      BYTE10(v652[1]) = 1;
      __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI19_ConditionalContentVyACy07WorkoutB020TimeInZoneMetricViewVAD04PaceiJ0VGACyA2HGGMd);
      __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI19_ConditionalContentVyACy07WorkoutB014PaceMetricViewVAFGACyAD08DistancegH0VAD04LapsgH0VGGMd);
      lazy protocol witness table accessor for type _ConditionalContent<_ConditionalContent<TimeInZoneMetricView, PaceMetricView>, _ConditionalContent<PaceMetricView, PaceMetricView>> and conformance <> _ConditionalContent<A, B>();
      lazy protocol witness table accessor for type _ConditionalContent<_ConditionalContent<PaceMetricView, PaceMetricView>, _ConditionalContent<DistanceMetricView, LapsMetricView>> and conformance <> _ConditionalContent<A, B>();
      _ConditionalContent<>.init(storage:)();
      v262 = v689[3];
      v263 = v614;
      v614[2] = v689[2];
      v263[3] = v262;
      *(v263 + 59) = *(&v689[3] + 11);
      v264 = v689[1];
      *v263 = v689[0];
      v263[1] = v264;
      swift_storeEnumTagMultiPayload();
      __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI19_ConditionalContentVyACyACy07WorkoutB020TimeInZoneMetricViewVAD04PaceiJ0VGACyA2HGGACyAjCyAD08DistanceiJ0VAD04LapsiJ0VGGGMd);
      lazy protocol witness table accessor for type _ConditionalContent<_ConditionalContent<_ConditionalContent<EnergyMetricView, EnergyMetricView>, _ConditionalContent<HeartRateMetricView, HeartRateAggregateMetricView>>, _ConditionalContent<_ConditionalContent<HeartRateAggregateMetricView, ZoneMetricView>, _ConditionalContent<TimeInZoneMetricView, ZoneMetricView>>> and conformance <> _ConditionalContent<A, B>();
      lazy protocol witness table accessor for type _ConditionalContent<_ConditionalContent<_ConditionalContent<TimeInZoneMetricView, PaceMetricView>, _ConditionalContent<PaceMetricView, PaceMetricView>>, _ConditionalContent<_ConditionalContent<PaceMetricView, PaceMetricView>, _ConditionalContent<DistanceMetricView, LapsMetricView>>> and conformance <> _ConditionalContent<A, B>();
      v265 = v616;
      _ConditionalContent<>.init(storage:)();
      v266 = &_s7SwiftUI19_ConditionalContentVyACyACyACy07WorkoutB016EnergyMetricViewVAFGACyAD09HeartRategH0VAD0ij9AggregategH0VGGACyACyAkD04ZonegH0VGACyAD06TimeInlgH0VAOGGGACyACyACyArD04PacegH0VGACyA2WGGACyAyCyAD08DistancegH0VAD04LapsgH0VGGGGMd;
      outlined init with copy of TupleView<(ModifiedContent<Text, MetricValueFont>, ModifiedContent<ModifiedContent<Text, MetricDescriptionCoreFont>, ExtendedLineSpacingSupport>)>(v265, v623, &_s7SwiftUI19_ConditionalContentVyACyACyACy07WorkoutB016EnergyMetricViewVAFGACyAD09HeartRategH0VAD0ij9AggregategH0VGGACyACyAkD04ZonegH0VGACyAD06TimeInlgH0VAOGGGACyACyACyArD04PacegH0VGACyA2WGGACyAyCyAD08DistancegH0VAD04LapsgH0VGGGGMd);
      goto LABEL_57;
    case 2:
      v193 = v67;
      MetricsPublisher.energyMetricsPublisher.getter();
      EnergyMetricsPublisher.activeEnergy.getter();
      v202 = v201;

      KeyPath = swift_getKeyPath();
      *&v650[0] = v202;
      *(v650 + 8) = vdupq_n_s64(1uLL);
      *(&v650[1] + 1) = v625;
      *&v651 = KeyPath;
      WORD4(v651) = 0;
      v203 = v625;
      goto LABEL_28;
    case 4:
      v74 = v67;
      MetricsPublisher.currentPace.getter();
      v319 = v318;
      MetricsPublisher.workoutStatePublisher.getter();
      v320 = WorkoutStatePublisher.gpsUnavailable.getter();

      v321 = swift_getKeyPath();
      *&v681 = v625;
      *(&v681 + 1) = 4;
      v322 = v620;
      *&v682 = v620;
      *(&v682 + 1) = v321;
      LOBYTE(v683) = 0;
      *(&v683 + 1) = v319;
      LOBYTE(v684[0]) = v320 & 1;
      *&v684[1] = 0;
      *(&v684[0] + 1) = 0;
      v689[2] = v683;
      v689[3] = *&v684[0];
      *&v689[4] = 0;
      v689[1] = v682;
      v689[0] = v681;
      LOBYTE(v668) = 1;
      BYTE8(v689[4]) = 1;
      v323 = v625;
      v324 = v322;
      outlined init with copy of PaceMetricView(&v681, v650);
      lazy protocol witness table accessor for type TimeInZoneMetricView and conformance TimeInZoneMetricView();
      lazy protocol witness table accessor for type PaceMetricView and conformance PaceMetricView();
      _ConditionalContent<>.init(storage:)();
      v689[2] = v651;
      v689[3] = v652[0];
      *(&v689[3] + 9) = *(v652 + 9);
      v689[1] = v650[1];
      v689[0] = v650[0];
      LOBYTE(v670) = 0;
      BYTE9(v689[4]) = 0;
      goto LABEL_45;
    case 5:
      v556 = v67;
      MetricsPublisher.heartRateMetricsPublisher.getter();
      v625 = HeartRateMetricsPublisher.currentHeartRate.getter();
      v326 = v325;

      MetricsPublisher.heartRateMetricsPublisher.getter();
      HeartRateMetricsPublisher.currentHeartRateValueType.getter();

      MetricsPublisher.heartRateMetricsPublisher.getter();
      v327 = HeartRateMetricsPublisher.isStaleHeartRate.getter();

      MetricsPublisher.workoutStatePublisher.getter();
      v328 = WorkoutStatePublisher.workoutPaused.getter();

      MetricsPublisher.workoutStatePublisher.getter();
      v329 = WorkoutStatePublisher.lowPowerModeAnimationSuspended.getter();

      v330 = &v56[v54[9]];
      *v330 = swift_getKeyPath();
      v330[8] = 0;
      v331 = &v56[v54[10]];
      *v331 = swift_getKeyPath();
      v331[8] = 0;
      v332 = &v56[v54[11]];
      *v332 = swift_getKeyPath();
      v332[8] = 0;
      *&v56[v54[12]] = 0x3FD6666666666666;
      v333 = &v56[v54[13]];
      *v333 = 0;
      *(v333 + 1) = 0;
      *v56 = v625;
      v56[8] = v326 & 1;
      v56[v54[6]] = v327 & 1;
      v56[v54[7]] = v328 & 1;
      v56[v54[8]] = v329 & 1;
      v626 = type metadata accessor for HeartRateMetricView;
      _s9WorkoutUI0A8TimeViewVWOcTm_0(v56, v52, type metadata accessor for HeartRateMetricView);
      swift_storeEnumTagMultiPayload();
      lazy protocol witness table accessor for type HeartRateMetricView and conformance HeartRateMetricView(&lazy protocol witness table cache variable for type HeartRateMetricView and conformance HeartRateMetricView, type metadata accessor for HeartRateMetricView);
      lazy protocol witness table accessor for type HeartRateMetricView and conformance HeartRateMetricView(&lazy protocol witness table cache variable for type HeartRateAggregateMetricView and conformance HeartRateAggregateMetricView, type metadata accessor for HeartRateAggregateMetricView);
      v334 = v575;
      _ConditionalContent<>.init(storage:)();
      outlined init with copy of TupleView<(ModifiedContent<Text, MetricValueFont>, ModifiedContent<ModifiedContent<Text, MetricDescriptionCoreFont>, ExtendedLineSpacingSupport>)>(v334, v587, &_s7SwiftUI19_ConditionalContentVy07WorkoutB019HeartRateMetricViewVAD0fg9AggregatehI0VGMd);
      swift_storeEnumTagMultiPayload();
      __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI19_ConditionalContentVy07WorkoutB016EnergyMetricViewVAFGMd);
      lazy protocol witness table accessor for type _ConditionalContent<StrideLengthMetricView, StrideLengthMetricView> and conformance <> _ConditionalContent<A, B>(&lazy protocol witness table cache variable for type _ConditionalContent<EnergyMetricView, EnergyMetricView> and conformance <> _ConditionalContent<A, B>, &_s7SwiftUI19_ConditionalContentVy07WorkoutB016EnergyMetricViewVAFGMd, &_s7SwiftUI19_ConditionalContentVy07WorkoutB016EnergyMetricViewVAFGMR, lazy protocol witness table accessor for type EnergyMetricView and conformance EnergyMetricView);
      lazy protocol witness table accessor for type _ConditionalContent<HeartRateMetricView, HeartRateAggregateMetricView> and conformance <> _ConditionalContent<A, B>();
      v335 = v591;
      _ConditionalContent<>.init(storage:)();
      outlined destroy of TupleView<(ModifiedContent<Text, MetricValueFont>, ModifiedContent<ModifiedContent<Text, MetricDescriptionCoreFont>, ExtendedLineSpacingSupport>)>(v334, &_s7SwiftUI19_ConditionalContentVy07WorkoutB019HeartRateMetricViewVAD0fg9AggregatehI0VGMd);
      outlined init with copy of TupleView<(ModifiedContent<Text, MetricValueFont>, ModifiedContent<ModifiedContent<Text, MetricDescriptionCoreFont>, ExtendedLineSpacingSupport>)>(v335, v605, &_s7SwiftUI19_ConditionalContentVyACy07WorkoutB016EnergyMetricViewVAFGACyAD09HeartRategH0VAD0ij9AggregategH0VGGMd);
      swift_storeEnumTagMultiPayload();
      lazy protocol witness table accessor for type _ConditionalContent<_ConditionalContent<EnergyMetricView, EnergyMetricView>, _ConditionalContent<HeartRateMetricView, HeartRateAggregateMetricView>> and conformance <> _ConditionalContent<A, B>();
      lazy protocol witness table accessor for type _ConditionalContent<_ConditionalContent<HeartRateAggregateMetricView, ZoneMetricView>, _ConditionalContent<TimeInZoneMetricView, ZoneMetricView>> and conformance <> _ConditionalContent<A, B>();
      v336 = v608;
      _ConditionalContent<>.init(storage:)();
      outlined destroy of TupleView<(ModifiedContent<Text, MetricValueFont>, ModifiedContent<ModifiedContent<Text, MetricDescriptionCoreFont>, ExtendedLineSpacingSupport>)>(v335, &_s7SwiftUI19_ConditionalContentVyACy07WorkoutB016EnergyMetricViewVAFGACyAD09HeartRategH0VAD0ij9AggregategH0VGGMd);
      outlined init with copy of TupleView<(ModifiedContent<Text, MetricValueFont>, ModifiedContent<ModifiedContent<Text, MetricDescriptionCoreFont>, ExtendedLineSpacingSupport>)>(v336, v614, &_s7SwiftUI19_ConditionalContentVyACyACy07WorkoutB016EnergyMetricViewVAFGACyAD09HeartRategH0VAD0ij9AggregategH0VGGACyACyAkD04ZonegH0VGACyAD06TimeInlgH0VAOGGGMd);
      swift_storeEnumTagMultiPayload();
      __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI19_ConditionalContentVyACyACy07WorkoutB020TimeInZoneMetricViewVAD04PaceiJ0VGACyA2HGGACyAjCyAD08DistanceiJ0VAD04LapsiJ0VGGGMd);
      lazy protocol witness table accessor for type _ConditionalContent<_ConditionalContent<_ConditionalContent<EnergyMetricView, EnergyMetricView>, _ConditionalContent<HeartRateMetricView, HeartRateAggregateMetricView>>, _ConditionalContent<_ConditionalContent<HeartRateAggregateMetricView, ZoneMetricView>, _ConditionalContent<TimeInZoneMetricView, ZoneMetricView>>> and conformance <> _ConditionalContent<A, B>();
      lazy protocol witness table accessor for type _ConditionalContent<_ConditionalContent<_ConditionalContent<TimeInZoneMetricView, PaceMetricView>, _ConditionalContent<PaceMetricView, PaceMetricView>>, _ConditionalContent<_ConditionalContent<PaceMetricView, PaceMetricView>, _ConditionalContent<DistanceMetricView, LapsMetricView>>> and conformance <> _ConditionalContent<A, B>();
      v337 = v616;
      _ConditionalContent<>.init(storage:)();
      outlined destroy of TupleView<(ModifiedContent<Text, MetricValueFont>, ModifiedContent<ModifiedContent<Text, MetricDescriptionCoreFont>, ExtendedLineSpacingSupport>)>(v336, &_s7SwiftUI19_ConditionalContentVyACyACy07WorkoutB016EnergyMetricViewVAFGACyAD09HeartRategH0VAD0ij9AggregategH0VGGACyACyAkD04ZonegH0VGACyAD06TimeInlgH0VAOGGGMd);
      outlined init with copy of TupleView<(ModifiedContent<Text, MetricValueFont>, ModifiedContent<ModifiedContent<Text, MetricDescriptionCoreFont>, ExtendedLineSpacingSupport>)>(v337, v623, &_s7SwiftUI19_ConditionalContentVyACyACyACy07WorkoutB016EnergyMetricViewVAFGACyAD09HeartRategH0VAD0ij9AggregategH0VGGACyACyAkD04ZonegH0VGACyAD06TimeInlgH0VAOGGGACyACyACyArD04PacegH0VGACyA2WGGACyAyCyAD08DistancegH0VAD04LapsgH0VGGGGMd);
      swift_storeEnumTagMultiPayload();
      lazy protocol witness table accessor for type _ConditionalContent<_ConditionalContent<_ConditionalContent<_ConditionalContent<EnergyMetricView, EnergyMetricView>, _ConditionalContent<HeartRateMetricView, HeartRateAggregateMetricView>>, _ConditionalContent<_ConditionalContent<HeartRateAggregateMetricView, ZoneMetricView>, _ConditionalContent<TimeInZoneMetricView, ZoneMetricView>>>, _ConditionalContent<_ConditionalContent<_ConditionalContent<TimeInZoneMetricView, PaceMetricView>, _ConditionalContent<PaceMetricView, PaceMetricView>>, _ConditionalContent<_ConditionalContent<PaceMetricView, PaceMetricView>, _ConditionalContent<DistanceMetricView, LapsMetricView>>>> and conformance <> _ConditionalContent<A, B>();
      lazy protocol witness table accessor for type _ConditionalContent<_ConditionalContent<_ConditionalContent<_ConditionalContent<_ConditionalContent<_ConditionalContent<CadenceMetricView, EmptyView>, CadenceMetricView>, CadenceMetricView>, _ConditionalContent<ElevationChangeMetricView, CurrentElevationMetricView>>, _ConditionalContent<_ConditionalContent<PowerMetricView, PowerMetricView>, _ConditionalContent<PowerMetricView, FlightsClimbedMetricView>>>, _ConditionalContent<_ConditionalContent<_ConditionalContent<SegmentDurationMetricView, DistanceDetailMetricView>, _ConditionalContent<PaceMetricView, EnergyMetricView>>, _ConditionalContent<_ConditionalContent<EnergyMetricView, PowerMetricView>, _ConditionalContent<PowerMetricView, ModifiedContent<ModifiedContent<WorkoutTimeView, MetricDetail>, _ForegroundStyleModifier<Color>>>>>> and conformance <> _ConditionalContent<A, B>();
      v338 = v556;
      _ConditionalContent<>.init(storage:)();
      outlined destroy of TupleView<(ModifiedContent<Text, MetricValueFont>, ModifiedContent<ModifiedContent<Text, MetricDescriptionCoreFont>, ExtendedLineSpacingSupport>)>(v337, &_s7SwiftUI19_ConditionalContentVyACyACyACy07WorkoutB016EnergyMetricViewVAFGACyAD09HeartRategH0VAD0ij9AggregategH0VGGACyACyAkD04ZonegH0VGACyAD06TimeInlgH0VAOGGGACyACyACyArD04PacegH0VGACyA2WGGACyAyCyAD08DistancegH0VAD04LapsgH0VGGGGMd);
      outlined init with copy of TupleView<(ModifiedContent<Text, MetricValueFont>, ModifiedContent<ModifiedContent<Text, MetricDescriptionCoreFont>, ExtendedLineSpacingSupport>)>(v338, v629, &_s7SwiftUI19_ConditionalContentVyACyACyACyACy07WorkoutB016EnergyMetricViewVAFGACyAD09HeartRategH0VAD0ij9AggregategH0VGGACyACyAkD04ZonegH0VGACyAD06TimeInlgH0VAOGGGACyACyACyArD04PacegH0VGACyA2WGGACyAyCyAD08DistancegH0VAD04LapsgH0VGGGGACyACyACyACyACyACyAD07CadencegH0VAA05EmptyH0VGA8_GA8_GACyAD015ElevationChangegH0VAD07CurrenttgH0VGGACyACyAD05PowergH0VA21_GACyA21_AD014FlightsClimbedgH0VGGGACyACyACyAD015SegmentDurationgH0VAD0p6DetailgH0VGACyAwFGGACyACyAFA21_GACyA21_AA08ModifiedD0VyA37_yAD0emH0VAD0G6DetailVGAA24_ForegroundStyleModifierVyAA5ColorVGGGGGGGMd);
      swift_storeEnumTagMultiPayload();
      __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI19_ConditionalContentVyACyACyACy07WorkoutB024DistanceDetailMetricViewVAD04PacehI0VGACyAD012StrideLengthhI0VAKGGACyACyAD019VerticalOscillationhI0VAOGACyAD017GroundContactTimehI0VARGGGACyACyAD015ElevationChangehI0VAD016DownhillRunCounthI0VGACyAA05EmptyI0VAA6HStackVyAA05TupleI0VyAA08ModifiedD0VyAA4TextVAD0H9ValueFontVG_A6_yA6_yA8_AD0H19DescriptionCoreFontVGAD26ExtendedLineSpacingSupport33_241C09B5AC269BC1C919798A0AC522FDLLVGtGGGGGMd);
      lazy protocol witness table accessor for type _ConditionalContent<_ConditionalContent<_ConditionalContent<_ConditionalContent<_ConditionalContent<EnergyMetricView, EnergyMetricView>, _ConditionalContent<HeartRateMetricView, HeartRateAggregateMetricView>>, _ConditionalContent<_ConditionalContent<HeartRateAggregateMetricView, ZoneMetricView>, _ConditionalContent<TimeInZoneMetricView, ZoneMetricView>>>, _ConditionalContent<_ConditionalContent<_ConditionalContent<TimeInZoneMetricView, PaceMetricView>, _ConditionalContent<PaceMetricView, PaceMetricView>>, _ConditionalContent<_ConditionalContent<PaceMetricView, PaceMetricView>, _ConditionalContent<DistanceMetricView, LapsMetricView>>>>, _ConditionalContent<_ConditionalContent<_ConditionalContent<_ConditionalContent<_ConditionalContent<_ConditionalContent<CadenceMetricView, EmptyView>, CadenceMetricView>, CadenceMetricView>, _ConditionalContent<ElevationChangeMetricView, CurrentElevationMetricView>>, _ConditionalContent<_ConditionalContent<PowerMetricView, PowerMet();
      lazy protocol witness table accessor for type _ConditionalContent<_ConditionalContent<_ConditionalContent<_ConditionalContent<DistanceDetailMetricView, PaceMetricView>, _ConditionalContent<StrideLengthMetricView, StrideLengthMetricView>>, _ConditionalContent<_ConditionalContent<VerticalOscillationMetricView, VerticalOscillationMetricView>, _ConditionalContent<GroundContactTimeMetricView, GroundContactTimeMetricView>>>, _ConditionalContent<_ConditionalContent<ElevationChangeMetricView, DownhillRunCountMetricView>, _ConditionalContent<EmptyView, HStack<TupleView<(ModifiedContent<Text, MetricValueFont>, ModifiedContent<ModifiedContent<Text, MetricDescriptionCoreFont>, ExtendedLineSpacingSupport>)>>>>> and conformance <> _ConditionalContent<A, B>();
      _ConditionalContent<>.init(storage:)();
      outlined destroy of TupleView<(ModifiedContent<Text, MetricValueFont>, ModifiedContent<ModifiedContent<Text, MetricDescriptionCoreFont>, ExtendedLineSpacingSupport>)>(v338, &_s7SwiftUI19_ConditionalContentVyACyACyACyACy07WorkoutB016EnergyMetricViewVAFGACyAD09HeartRategH0VAD0ij9AggregategH0VGGACyACyAkD04ZonegH0VGACyAD06TimeInlgH0VAOGGGACyACyACyArD04PacegH0VGACyA2WGGACyAyCyAD08DistancegH0VAD04LapsgH0VGGGGACyACyACyACyACyACyAD07CadencegH0VAA05EmptyH0VGA8_GA8_GACyAD015ElevationChangegH0VAD07CurrenttgH0VGGACyACyAD05PowergH0VA21_GACyA21_AD014FlightsClimbedgH0VGGGACyACyACyAD015SegmentDurationgH0VAD0p6DetailgH0VGACyAwFGGACyACyAFA21_GACyA21_AA08ModifiedD0VyA37_yAD0emH0VAD0G6DetailVGAA24_ForegroundStyleModifierVyAA5ColorVGGGGGGGMd);
      v160 = v56;
      goto LABEL_47;
    case 7:
      v193 = v67;
      MetricsPublisher.energyMetricsPublisher.getter();
      EnergyMetricsPublisher.totalEnergy.getter();
      v220 = v219;

      KeyPath = swift_getKeyPath();
      *&v650[0] = v220;
      *(v650 + 8) = xmmword_20CB63850;
      *(&v650[1] + 1) = v625;
      *&v651 = KeyPath;
      WORD4(v651) = 256;
      v203 = v625;
LABEL_28:
      v626 = v203;
      outlined copy of Environment<WorkoutViewStyle>.Content(KeyPath, 0);
      lazy protocol witness table accessor for type EnergyMetricView and conformance EnergyMetricView();
      _ConditionalContent<>.init(storage:)();
      v221 = *&v689[2];
      v222 = BYTE8(v689[2]);
      v223 = BYTE9(v689[2]);
      v224 = v689[1];
      v225 = v587;
      *v587 = v689[0];
      v225[1] = v224;
      *(v225 + 4) = v221;
      *(v225 + 40) = v222;
      *(v225 + 41) = v223;
      swift_storeEnumTagMultiPayload();
      __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI19_ConditionalContentVy07WorkoutB016EnergyMetricViewVAFGMd);
      lazy protocol witness table accessor for type _ConditionalContent<StrideLengthMetricView, StrideLengthMetricView> and conformance <> _ConditionalContent<A, B>(&lazy protocol witness table cache variable for type _ConditionalContent<EnergyMetricView, EnergyMetricView> and conformance <> _ConditionalContent<A, B>, &_s7SwiftUI19_ConditionalContentVy07WorkoutB016EnergyMetricViewVAFGMd, &_s7SwiftUI19_ConditionalContentVy07WorkoutB016EnergyMetricViewVAFGMR, lazy protocol witness table accessor for type EnergyMetricView and conformance EnergyMetricView);
      lazy protocol witness table accessor for type _ConditionalContent<HeartRateMetricView, HeartRateAggregateMetricView> and conformance <> _ConditionalContent<A, B>();
      v226 = v591;
      _ConditionalContent<>.init(storage:)();
      outlined init with copy of TupleView<(ModifiedContent<Text, MetricValueFont>, ModifiedContent<ModifiedContent<Text, MetricDescriptionCoreFont>, ExtendedLineSpacingSupport>)>(v226, v605, &_s7SwiftUI19_ConditionalContentVyACy07WorkoutB016EnergyMetricViewVAFGACyAD09HeartRategH0VAD0ij9AggregategH0VGGMd);
      swift_storeEnumTagMultiPayload();
      lazy protocol witness table accessor for type _ConditionalContent<_ConditionalContent<EnergyMetricView, EnergyMetricView>, _ConditionalContent<HeartRateMetricView, HeartRateAggregateMetricView>> and conformance <> _ConditionalContent<A, B>();
      lazy protocol witness table accessor for type _ConditionalContent<_ConditionalContent<HeartRateAggregateMetricView, ZoneMetricView>, _ConditionalContent<TimeInZoneMetricView, ZoneMetricView>> and conformance <> _ConditionalContent<A, B>();
      v227 = v608;
      _ConditionalContent<>.init(storage:)();
      outlined destroy of TupleView<(ModifiedContent<Text, MetricValueFont>, ModifiedContent<ModifiedContent<Text, MetricDescriptionCoreFont>, ExtendedLineSpacingSupport>)>(v226, &_s7SwiftUI19_ConditionalContentVyACy07WorkoutB016EnergyMetricViewVAFGACyAD09HeartRategH0VAD0ij9AggregategH0VGGMd);
      outlined init with copy of TupleView<(ModifiedContent<Text, MetricValueFont>, ModifiedContent<ModifiedContent<Text, MetricDescriptionCoreFont>, ExtendedLineSpacingSupport>)>(v227, v614, &_s7SwiftUI19_ConditionalContentVyACyACy07WorkoutB016EnergyMetricViewVAFGACyAD09HeartRategH0VAD0ij9AggregategH0VGGACyACyAkD04ZonegH0VGACyAD06TimeInlgH0VAOGGGMd);
      swift_storeEnumTagMultiPayload();
      __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI19_ConditionalContentVyACyACy07WorkoutB020TimeInZoneMetricViewVAD04PaceiJ0VGACyA2HGGACyAjCyAD08DistanceiJ0VAD04LapsiJ0VGGGMd);
      lazy protocol witness table accessor for type _ConditionalContent<_ConditionalContent<_ConditionalContent<EnergyMetricView, EnergyMetricView>, _ConditionalContent<HeartRateMetricView, HeartRateAggregateMetricView>>, _ConditionalContent<_ConditionalContent<HeartRateAggregateMetricView, ZoneMetricView>, _ConditionalContent<TimeInZoneMetricView, ZoneMetricView>>> and conformance <> _ConditionalContent<A, B>();
      lazy protocol witness table accessor for type _ConditionalContent<_ConditionalContent<_ConditionalContent<TimeInZoneMetricView, PaceMetricView>, _ConditionalContent<PaceMetricView, PaceMetricView>>, _ConditionalContent<_ConditionalContent<PaceMetricView, PaceMetricView>, _ConditionalContent<DistanceMetricView, LapsMetricView>>> and conformance <> _ConditionalContent<A, B>();
      v228 = v616;
      _ConditionalContent<>.init(storage:)();
      outlined destroy of TupleView<(ModifiedContent<Text, MetricValueFont>, ModifiedContent<ModifiedContent<Text, MetricDescriptionCoreFont>, ExtendedLineSpacingSupport>)>(v227, &_s7SwiftUI19_ConditionalContentVyACyACy07WorkoutB016EnergyMetricViewVAFGACyAD09HeartRategH0VAD0ij9AggregategH0VGGACyACyAkD04ZonegH0VGACyAD06TimeInlgH0VAOGGGMd);
      v229 = &_s7SwiftUI19_ConditionalContentVyACyACyACy07WorkoutB016EnergyMetricViewVAFGACyAD09HeartRategH0VAD0ij9AggregategH0VGGACyACyAkD04ZonegH0VGACyAD06TimeInlgH0VAOGGGACyACyACyArD04PacegH0VGACyA2WGGACyAyCyAD08DistancegH0VAD04LapsgH0VGGGGMd;
      outlined init with copy of TupleView<(ModifiedContent<Text, MetricValueFont>, ModifiedContent<ModifiedContent<Text, MetricDescriptionCoreFont>, ExtendedLineSpacingSupport>)>(v228, v623, &_s7SwiftUI19_ConditionalContentVyACyACyACy07WorkoutB016EnergyMetricViewVAFGACyAD09HeartRategH0VAD0ij9AggregategH0VGGACyACyAkD04ZonegH0VGACyAD06TimeInlgH0VAOGGGACyACyACyArD04PacegH0VGACyA2WGGACyAyCyAD08DistancegH0VAD04LapsgH0VGGGGMd);
      goto LABEL_71;
    case 8:
      v74 = v67;
      MetricsPublisher.averagePace.getter();
      v268 = v267;
      MetricsPublisher.workoutStatePublisher.getter();
      v269 = WorkoutStatePublisher.gpsUnavailable.getter();

      v270 = swift_getKeyPath();
      *&v681 = v625;
      *(&v681 + 1) = 8;
      v271 = v620;
      *&v682 = v620;
      *(&v682 + 1) = v270;
      LOBYTE(v683) = 0;
      *(&v683 + 1) = v268;
      LOBYTE(v684[0]) = v269 & 1;
      *&v684[1] = 0;
      *(&v684[0] + 1) = 0;
      v689[2] = v683;
      v689[3] = *&v684[0];
      *&v689[4] = 0;
      v689[1] = v682;
      v689[0] = v681;
      LOBYTE(v668) = 0;
      BYTE8(v689[4]) = 0;
      v272 = v625;
      v273 = v271;
      outlined init with copy of PaceMetricView(&v681, v650);
      lazy protocol witness table accessor for type PaceMetricView and conformance PaceMetricView();
      _ConditionalContent<>.init(storage:)();
      v689[2] = v651;
      v689[3] = v652[0];
      *(&v689[3] + 9) = *(v652 + 9);
      v689[1] = v650[1];
      v689[0] = v650[0];
      LOBYTE(v670) = 1;
      BYTE9(v689[4]) = 1;
      goto LABEL_45;
    case 9:
      v193 = v67;
      MetricsPublisher.lapsMetricsPublisher.getter();
      type metadata accessor for LapsMetricsPublisher();
      lazy protocol witness table accessor for type HeartRateMetricView and conformance HeartRateMetricView(&lazy protocol witness table cache variable for type LapsMetricsPublisher and conformance LapsMetricsPublisher, MEMORY[0x277D7E358]);
      v274 = ObservedObject.init(wrappedValue:)();
      LOBYTE(v670) = 1;
      *&v689[0] = v274;
      *(&v689[0] + 1) = v275;
      v276 = v625;
      *&v689[1] = v625;
      BYTE1(v689[3]) = 1;
      lazy protocol witness table accessor for type DistanceMetricView and conformance DistanceMetricView();
      lazy protocol witness table accessor for type LapsMetricView and conformance LapsMetricView();
      v277 = v276;

      v278 = v277;
      _ConditionalContent<>.init(storage:)();
      v689[0] = v650[0];
      v689[1] = v650[1];
      v689[2] = v651;
      LOWORD(v689[3]) = v652[0];
      LOBYTE(v640) = 1;
      BYTE9(v689[4]) = 1;
      __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI19_ConditionalContentVy07WorkoutB014PaceMetricViewVAFGMd);
      __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI19_ConditionalContentVy07WorkoutB018DistanceMetricViewVAD04LapsgH0VGMd);
      lazy protocol witness table accessor for type _ConditionalContent<StrideLengthMetricView, StrideLengthMetricView> and conformance <> _ConditionalContent<A, B>(&lazy protocol witness table cache variable for type _ConditionalContent<PaceMetricView, PaceMetricView> and conformance <> _ConditionalContent<A, B>, &_s7SwiftUI19_ConditionalContentVy07WorkoutB014PaceMetricViewVAFGMd, &_s7SwiftUI19_ConditionalContentVy07WorkoutB014PaceMetricViewVAFGMR, lazy protocol witness table accessor for type PaceMetricView and conformance PaceMetricView);
      lazy protocol witness table accessor for type _ConditionalContent<DistanceMetricView, LapsMetricView> and conformance <> _ConditionalContent<A, B>();
      _ConditionalContent<>.init(storage:)();
      v651 = v633;
      v652[0] = v634[0];
      *(v652 + 10) = *(v634 + 10);
      v650[0] = v631;
      v650[1] = v632;
      LOBYTE(v681) = 1;
      BYTE10(v652[1]) = 1;
      __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI19_ConditionalContentVyACy07WorkoutB020TimeInZoneMetricViewVAD04PaceiJ0VGACyA2HGGMd);
      __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI19_ConditionalContentVyACy07WorkoutB014PaceMetricViewVAFGACyAD08DistancegH0VAD04LapsgH0VGGMd);
      lazy protocol witness table accessor for type _ConditionalContent<_ConditionalContent<TimeInZoneMetricView, PaceMetricView>, _ConditionalContent<PaceMetricView, PaceMetricView>> and conformance <> _ConditionalContent<A, B>();
      lazy protocol witness table accessor for type _ConditionalContent<_ConditionalContent<PaceMetricView, PaceMetricView>, _ConditionalContent<DistanceMetricView, LapsMetricView>> and conformance <> _ConditionalContent<A, B>();
      _ConditionalContent<>.init(storage:)();
      v279 = v689[3];
      v280 = v614;
      v614[2] = v689[2];
      v280[3] = v279;
      *(v280 + 59) = *(&v689[3] + 11);
      v281 = v689[1];
      *v280 = v689[0];
      v280[1] = v281;
      swift_storeEnumTagMultiPayload();
      __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI19_ConditionalContentVyACyACy07WorkoutB020TimeInZoneMetricViewVAD04PaceiJ0VGACyA2HGGACyAjCyAD08DistanceiJ0VAD04LapsiJ0VGGGMd);
      lazy protocol witness table accessor for type _ConditionalContent<_ConditionalContent<_ConditionalContent<EnergyMetricView, EnergyMetricView>, _ConditionalContent<HeartRateMetricView, HeartRateAggregateMetricView>>, _ConditionalContent<_ConditionalContent<HeartRateAggregateMetricView, ZoneMetricView>, _ConditionalContent<TimeInZoneMetricView, ZoneMetricView>>> and conformance <> _ConditionalContent<A, B>();
      lazy protocol witness table accessor for type _ConditionalContent<_ConditionalContent<_ConditionalContent<TimeInZoneMetricView, PaceMetricView>, _ConditionalContent<PaceMetricView, PaceMetricView>>, _ConditionalContent<_ConditionalContent<PaceMetricView, PaceMetricView>, _ConditionalContent<DistanceMetricView, LapsMetricView>>> and conformance <> _ConditionalContent<A, B>();
      v282 = v616;
      _ConditionalContent<>.init(storage:)();
      outlined init with copy of TupleView<(ModifiedContent<Text, MetricValueFont>, ModifiedContent<ModifiedContent<Text, MetricDescriptionCoreFont>, ExtendedLineSpacingSupport>)>(v282, v623, &_s7SwiftUI19_ConditionalContentVyACyACyACy07WorkoutB016EnergyMetricViewVAFGACyAD09HeartRategH0VAD0ij9AggregategH0VGGACyACyAkD04ZonegH0VGACyAD06TimeInlgH0VAOGGGACyACyACyArD04PacegH0VGACyA2WGGACyAyCyAD08DistancegH0VAD04LapsgH0VGGGGMd);
      swift_storeEnumTagMultiPayload();
      lazy protocol witness table accessor for type _ConditionalContent<_ConditionalContent<_ConditionalContent<_ConditionalContent<EnergyMetricView, EnergyMetricView>, _ConditionalContent<HeartRateMetricView, HeartRateAggregateMetricView>>, _ConditionalContent<_ConditionalContent<HeartRateAggregateMetricView, ZoneMetricView>, _ConditionalContent<TimeInZoneMetricView, ZoneMetricView>>>, _ConditionalContent<_ConditionalContent<_ConditionalContent<TimeInZoneMetricView, PaceMetricView>, _ConditionalContent<PaceMetricView, PaceMetricView>>, _ConditionalContent<_ConditionalContent<PaceMetricView, PaceMetricView>, _ConditionalContent<DistanceMetricView, LapsMetricView>>>> and conformance <> _ConditionalContent<A, B>();
      lazy protocol witness table accessor for type _ConditionalContent<_ConditionalContent<_ConditionalContent<_ConditionalContent<_ConditionalContent<_ConditionalContent<CadenceMetricView, EmptyView>, CadenceMetricView>, CadenceMetricView>, _ConditionalContent<ElevationChangeMetricView, CurrentElevationMetricView>>, _ConditionalContent<_ConditionalContent<PowerMetricView, PowerMetricView>, _ConditionalContent<PowerMetricView, FlightsClimbedMetricView>>>, _ConditionalContent<_ConditionalContent<_ConditionalContent<SegmentDurationMetricView, DistanceDetailMetricView>, _ConditionalContent<PaceMetricView, EnergyMetricView>>, _ConditionalContent<_ConditionalContent<EnergyMetricView, PowerMetricView>, _ConditionalContent<PowerMetricView, ModifiedContent<ModifiedContent<WorkoutTimeView, MetricDetail>, _ForegroundStyleModifier<Color>>>>>> and conformance <> _ConditionalContent<A, B>();
      _ConditionalContent<>.init(storage:)();
      outlined destroy of TupleView<(ModifiedContent<Text, MetricValueFont>, ModifiedContent<ModifiedContent<Text, MetricDescriptionCoreFont>, ExtendedLineSpacingSupport>)>(v282, &_s7SwiftUI19_ConditionalContentVyACyACyACy07WorkoutB016EnergyMetricViewVAFGACyAD09HeartRategH0VAD0ij9AggregategH0VGGACyACyAkD04ZonegH0VGACyAD06TimeInlgH0VAOGGGACyACyACyArD04PacegH0VGACyA2WGGACyAyCyAD08DistancegH0VAD04LapsgH0VGGGGMd);
      outlined init with copy of TupleView<(ModifiedContent<Text, MetricValueFont>, ModifiedContent<ModifiedContent<Text, MetricDescriptionCoreFont>, ExtendedLineSpacingSupport>)>(v193, v629, &_s7SwiftUI19_ConditionalContentVyACyACyACyACy07WorkoutB016EnergyMetricViewVAFGACyAD09HeartRategH0VAD0ij9AggregategH0VGGACyACyAkD04ZonegH0VGACyAD06TimeInlgH0VAOGGGACyACyACyArD04PacegH0VGACyA2WGGACyAyCyAD08DistancegH0VAD04LapsgH0VGGGGACyACyACyACyACyACyAD07CadencegH0VAA05EmptyH0VGA8_GA8_GACyAD015ElevationChangegH0VAD07CurrenttgH0VGGACyACyAD05PowergH0VA21_GACyA21_AD014FlightsClimbedgH0VGGGACyACyACyAD015SegmentDurationgH0VAD0p6DetailgH0VGACyAwFGGACyACyAFA21_GACyA21_AA08ModifiedD0VyA37_yAD0emH0VAD0G6DetailVGAA24_ForegroundStyleModifierVyAA5ColorVGGGGGGGMd);
      swift_storeEnumTagMultiPayload();
      __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI19_ConditionalContentVyACyACyACy07WorkoutB024DistanceDetailMetricViewVAD04PacehI0VGACyAD012StrideLengthhI0VAKGGACyACyAD019VerticalOscillationhI0VAOGACyAD017GroundContactTimehI0VARGGGACyACyAD015ElevationChangehI0VAD016DownhillRunCounthI0VGACyAA05EmptyI0VAA6HStackVyAA05TupleI0VyAA08ModifiedD0VyAA4TextVAD0H9ValueFontVG_A6_yA6_yA8_AD0H19DescriptionCoreFontVGAD26ExtendedLineSpacingSupport33_241C09B5AC269BC1C919798A0AC522FDLLVGtGGGGGMd);
      lazy protocol witness table accessor for type _ConditionalContent<_ConditionalContent<_ConditionalContent<_ConditionalContent<_ConditionalContent<EnergyMetricView, EnergyMetricView>, _ConditionalContent<HeartRateMetricView, HeartRateAggregateMetricView>>, _ConditionalContent<_ConditionalContent<HeartRateAggregateMetricView, ZoneMetricView>, _ConditionalContent<TimeInZoneMetricView, ZoneMetricView>>>, _ConditionalContent<_ConditionalContent<_ConditionalContent<TimeInZoneMetricView, PaceMetricView>, _ConditionalContent<PaceMetricView, PaceMetricView>>, _ConditionalContent<_ConditionalContent<PaceMetricView, PaceMetricView>, _ConditionalContent<DistanceMetricView, LapsMetricView>>>>, _ConditionalContent<_ConditionalContent<_ConditionalContent<_ConditionalContent<_ConditionalContent<_ConditionalContent<CadenceMetricView, EmptyView>, CadenceMetricView>, CadenceMetricView>, _ConditionalContent<ElevationChangeMetricView, CurrentElevationMetricView>>, _ConditionalContent<_ConditionalContent<PowerMetricView, PowerMet();
      lazy protocol witness table accessor for type _ConditionalContent<_ConditionalContent<_ConditionalContent<_ConditionalContent<DistanceDetailMetricView, PaceMetricView>, _ConditionalContent<StrideLengthMetricView, StrideLengthMetricView>>, _ConditionalContent<_ConditionalContent<VerticalOscillationMetricView, VerticalOscillationMetricView>, _ConditionalContent<GroundContactTimeMetricView, GroundContactTimeMetricView>>>, _ConditionalContent<_ConditionalContent<ElevationChangeMetricView, DownhillRunCountMetricView>, _ConditionalContent<EmptyView, HStack<TupleView<(ModifiedContent<Text, MetricValueFont>, ModifiedContent<ModifiedContent<Text, MetricDescriptionCoreFont>, ExtendedLineSpacingSupport>)>>>>> and conformance <> _ConditionalContent<A, B>();
      _ConditionalContent<>.init(storage:)();

      goto LABEL_116;
    case 10:
      v193 = v67;
      v375 = MetricsPublisher.elevationGain.getter();
      v377 = v376;
      v378 = swift_getKeyPath();
      KeyPath = v378;
      if (v377)
      {
        v379 = 0;
      }

      else
      {
        v379 = v375;
      }

      *&v689[0] = 10;
      *(&v689[0] + 1) = v379;
      v301 = v625;
      *&v689[1] = v625;
      *(&v689[1] + 1) = v378;
      LOWORD(v689[2]) = 0;
      goto LABEL_56;
    case 11:
      v133 = v67;
      MetricsPublisher.powerMetricsPublisher.getter();
      v359 = PowerMetricsPublisher.currentPower.getter();
      v361 = v360;

      MetricsPublisher.workoutStatePublisher.getter();
      v362 = WorkoutStatePublisher.workoutPaused.getter();

      MetricsPublisher.workoutStatePublisher.getter();
      v363 = WorkoutStatePublisher.lowPowerModeAnimationSuspended.getter();

      v364 = swift_getKeyPath();
      LOBYTE(v650[0]) = 0;
      v365 = swift_getKeyPath();
      LOBYTE(v631) = 0;
      v366 = swift_getKeyPath();
      LOBYTE(v640) = 0;
      v367 = v361 & 1;
      v368 = v620;
      *&v681 = v620;
      *(&v681 + 1) = v359;
      LOBYTE(v682) = v367;
      *(&v682 + 1) = 11;
      *&v683 = v625;
      BYTE8(v683) = v362 & 1;
      BYTE9(v683) = v363 & 1;
      *&v684[0] = v364;
      BYTE8(v684[0]) = v650[0];
      *&v684[1] = v365;
      BYTE8(v684[1]) = v631;
      *&v684[2] = v366;
      BYTE8(v684[2]) = 0;
      v689[2] = v683;
      v689[3] = v684[0];
      v689[4] = v684[1];
      *(&v689[4] + 9) = *(&v684[1] + 9);
      v689[0] = v681;
      v689[1] = v682;
      LOBYTE(v668) = 0;
      BYTE9(v689[5]) = 0;
      v369 = v625;
      v370 = v368;
      outlined init with copy of PowerMetricView(&v681, v650);
      lazy protocol witness table accessor for type PowerMetricView and conformance PowerMetricView();
      _ConditionalContent<>.init(storage:)();
      v689[2] = v651;
      v689[3] = v652[0];
      v689[4] = v652[1];
      *(&v689[4] + 10) = *(&v652[1] + 10);
      v689[0] = v650[0];
      v689[1] = v650[1];
      LOBYTE(v670) = 0;
      BYTE10(v689[5]) = 0;
      __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI19_ConditionalContentVy07WorkoutB015PowerMetricViewVAFGMd);
      __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI19_ConditionalContentVy07WorkoutB015PowerMetricViewVAD014FlightsClimbedgH0VGMd);
      lazy protocol witness table accessor for type _ConditionalContent<StrideLengthMetricView, StrideLengthMetricView> and conformance <> _ConditionalContent<A, B>(&lazy protocol witness table cache variable for type _ConditionalContent<PowerMetricView, PowerMetricView> and conformance <> _ConditionalContent<A, B>, &_s7SwiftUI19_ConditionalContentVy07WorkoutB015PowerMetricViewVAFGMd, &_s7SwiftUI19_ConditionalContentVy07WorkoutB015PowerMetricViewVAFGMR, lazy protocol witness table accessor for type PowerMetricView and conformance PowerMetricView);
      lazy protocol witness table accessor for type _ConditionalContent<PowerMetricView, FlightsClimbedMetricView> and conformance <> _ConditionalContent<A, B>();
      _ConditionalContent<>.init(storage:)();
      v651 = v633;
      v652[0] = v634[0];
      v652[1] = v634[1];
      *(&v652[1] + 11) = *(&v634[1] + 11);
      v650[0] = v631;
      v650[1] = v632;
      LOBYTE(v640) = 1;
      BYTE11(v652[2]) = 1;
      __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI19_ConditionalContentVyACyACyACy07WorkoutB017CadenceMetricViewVAA05EmptyH0VGAFGAFGACyAD015ElevationChangegH0VAD07CurrentjgH0VGGMd);
      __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI19_ConditionalContentVyACy07WorkoutB015PowerMetricViewVAFGACyAfD014FlightsClimbedgH0VGGMd);
      lazy protocol witness table accessor for type _ConditionalContent<_ConditionalContent<_ConditionalContent<_ConditionalContent<CadenceMetricView, EmptyView>, CadenceMetricView>, CadenceMetricView>, _ConditionalContent<ElevationChangeMetricView, CurrentElevationMetricView>> and conformance <> _ConditionalContent<A, B>();
      lazy protocol witness table accessor for type _ConditionalContent<_ConditionalContent<PowerMetricView, PowerMetricView>, _ConditionalContent<PowerMetricView, FlightsClimbedMetricView>> and conformance <> _ConditionalContent<A, B>();
      _ConditionalContent<>.init(storage:)();
      v371 = v689[3];
      v178 = v617;
      v617[2] = v689[2];
      v178[3] = v371;
      v178[4] = v689[4];
      v179 = *(&v689[4] + 12);
      goto LABEL_51;
    case 12:
      v133 = v67;
      MetricsPublisher.powerMetricsPublisher.getter();
      v134 = PowerMetricsPublisher.averagePower.getter();
      v136 = v135;

      MetricsPublisher.workoutStatePublisher.getter();
      v137 = WorkoutStatePublisher.workoutPaused.getter();

      MetricsPublisher.workoutStatePublisher.getter();
      v138 = WorkoutStatePublisher.lowPowerModeAnimationSuspended.getter();

      v139 = swift_getKeyPath();
      LOBYTE(v650[0]) = 0;
      v140 = swift_getKeyPath();
      LOBYTE(v631) = 0;
      v141 = swift_getKeyPath();
      LOBYTE(v640) = 0;
      v142 = v136 & 1;
      v143 = v620;
      *&v681 = v620;
      *(&v681 + 1) = v134;
      LOBYTE(v682) = v142;
      *(&v682 + 1) = 12;
      *&v683 = v625;
      BYTE8(v683) = v137 & 1;
      BYTE9(v683) = v138 & 1;
      *&v684[0] = v139;
      BYTE8(v684[0]) = v650[0];
      *&v684[1] = v140;
      BYTE8(v684[1]) = v631;
      *&v684[2] = v141;
      BYTE8(v684[2]) = 0;
      v689[2] = v683;
      v689[3] = v684[0];
      v689[4] = v684[1];
      *(&v689[4] + 9) = *(&v684[1] + 9);
      v689[0] = v681;
      v689[1] = v682;
      LOBYTE(v668) = 1;
      BYTE9(v689[5]) = 1;
      v144 = v625;
      v145 = v143;
      outlined init with copy of PowerMetricView(&v681, v650);
      lazy protocol witness table accessor for type PowerMetricView and conformance PowerMetricView();
      _ConditionalContent<>.init(storage:)();
      v689[2] = v651;
      v689[3] = v652[0];
      v689[4] = v652[1];
      *(&v689[4] + 10) = *(&v652[1] + 10);
      v689[0] = v650[0];
      v689[1] = v650[1];
      LOBYTE(v670) = 0;
      BYTE10(v689[5]) = 0;
      goto LABEL_18;
    case 13:
      v230 = v67;
      MetricsPublisher.flightsClimbed.getter();
      LOBYTE(v670) = 1;
      *&v689[0] = v231;
      v232 = v625;
      *(&v689[0] + 1) = v625;
      BYTE9(v689[5]) = 1;
      lazy protocol witness table accessor for type PowerMetricView and conformance PowerMetricView();
      lazy protocol witness table accessor for type FlightsClimbedMetricView and conformance FlightsClimbedMetricView();
      v233 = v232;
      _ConditionalContent<>.init(storage:)();
      v689[2] = v651;
      v689[3] = v652[0];
      v689[4] = v652[1];
      *(&v689[4] + 10) = *(&v652[1] + 10);
      v689[0] = v650[0];
      v689[1] = v650[1];
      LOBYTE(v640) = 1;
      BYTE10(v689[5]) = 1;
      __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI19_ConditionalContentVy07WorkoutB015PowerMetricViewVAFGMd);
      __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI19_ConditionalContentVy07WorkoutB015PowerMetricViewVAD014FlightsClimbedgH0VGMd);
      lazy protocol witness table accessor for type _ConditionalContent<StrideLengthMetricView, StrideLengthMetricView> and conformance <> _ConditionalContent<A, B>(&lazy protocol witness table cache variable for type _ConditionalContent<PowerMetricView, PowerMetricView> and conformance <> _ConditionalContent<A, B>, &_s7SwiftUI19_ConditionalContentVy07WorkoutB015PowerMetricViewVAFGMd, &_s7SwiftUI19_ConditionalContentVy07WorkoutB015PowerMetricViewVAFGMR, lazy protocol witness table accessor for type PowerMetricView and conformance PowerMetricView);
      lazy protocol witness table accessor for type _ConditionalContent<PowerMetricView, FlightsClimbedMetricView> and conformance <> _ConditionalContent<A, B>();
      _ConditionalContent<>.init(storage:)();
      v651 = v633;
      v652[0] = v634[0];
      v652[1] = v634[1];
      *(&v652[1] + 11) = *(&v634[1] + 11);
      v650[0] = v631;
      v650[1] = v632;
      LOBYTE(v681) = 1;
      BYTE11(v652[2]) = 1;
      __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI19_ConditionalContentVyACyACyACy07WorkoutB017CadenceMetricViewVAA05EmptyH0VGAFGAFGACyAD015ElevationChangegH0VAD07CurrentjgH0VGGMd);
      __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI19_ConditionalContentVyACy07WorkoutB015PowerMetricViewVAFGACyAfD014FlightsClimbedgH0VGGMd);
      lazy protocol witness table accessor for type _ConditionalContent<_ConditionalContent<_ConditionalContent<_ConditionalContent<CadenceMetricView, EmptyView>, CadenceMetricView>, CadenceMetricView>, _ConditionalContent<ElevationChangeMetricView, CurrentElevationMetricView>> and conformance <> _ConditionalContent<A, B>();
      lazy protocol witness table accessor for type _ConditionalContent<_ConditionalContent<PowerMetricView, PowerMetricView>, _ConditionalContent<PowerMetricView, FlightsClimbedMetricView>> and conformance <> _ConditionalContent<A, B>();
      _ConditionalContent<>.init(storage:)();
      v234 = v689[3];
      v235 = v617;
      v617[2] = v689[2];
      v235[3] = v234;
      v235[4] = v689[4];
      *(v235 + 76) = *(&v689[4] + 12);
      v236 = v689[1];
      *v235 = v689[0];
      v235[1] = v236;
      swift_storeEnumTagMultiPayload();
      __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI19_ConditionalContentVyACyACyACyACy07WorkoutB017CadenceMetricViewVAA05EmptyH0VGAFGAFGACyAD015ElevationChangegH0VAD07CurrentjgH0VGGACyACyAD05PowergH0VASGACyAsD014FlightsClimbedgH0VGGGMd);
      lazy protocol witness table accessor for type _ConditionalContent<_ConditionalContent<_ConditionalContent<_ConditionalContent<_ConditionalContent<CadenceMetricView, EmptyView>, CadenceMetricView>, CadenceMetricView>, _ConditionalContent<ElevationChangeMetricView, CurrentElevationMetricView>>, _ConditionalContent<_ConditionalContent<PowerMetricView, PowerMetricView>, _ConditionalContent<PowerMetricView, FlightsClimbedMetricView>>> and conformance <> _ConditionalContent<A, B>();
      lazy protocol witness table accessor for type _ConditionalContent<_ConditionalContent<_ConditionalContent<SegmentDurationMetricView, DistanceDetailMetricView>, _ConditionalContent<PaceMetricView, EnergyMetricView>>, _ConditionalContent<_ConditionalContent<EnergyMetricView, PowerMetricView>, _ConditionalContent<PowerMetricView, ModifiedContent<ModifiedContent<WorkoutTimeView, MetricDetail>, _ForegroundStyleModifier<Color>>>>> and conformance <> _ConditionalContent<A, B>();
      v237 = v619;
      _ConditionalContent<>.init(storage:)();
      goto LABEL_59;
    case 14:
      v74 = v67;
      MetricsPublisher.rollingPace.getter();
      v184 = v183;
      MetricsPublisher.workoutStatePublisher.getter();
      v185 = WorkoutStatePublisher.gpsUnavailable.getter();

      v186 = swift_getKeyPath();
      *&v681 = v625;
      *(&v681 + 1) = 14;
      v187 = v620;
      *&v682 = v620;
      *(&v682 + 1) = v186;
      LOBYTE(v683) = 0;
      *(&v683 + 1) = v184;
      LOBYTE(v684[0]) = v185 & 1;
      *&v684[1] = 0;
      *(&v684[0] + 1) = 0;
      v689[2] = v683;
      v689[3] = *&v684[0];
      *&v689[4] = 0;
      v689[1] = v682;
      v689[0] = v681;
      LOBYTE(v668) = 0;
      BYTE8(v689[4]) = 0;
      v188 = v625;
      v189 = v187;
      outlined init with copy of PaceMetricView(&v681, v650);
      lazy protocol witness table accessor for type PaceMetricView and conformance PaceMetricView();
      _ConditionalContent<>.init(storage:)();
      v689[2] = v651;
      v689[3] = v652[0];
      *(&v689[3] + 9) = *(v652 + 9);
      v689[1] = v650[1];
      v689[0] = v650[0];
      LOBYTE(v670) = 0;
      BYTE9(v689[4]) = 0;
      __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI19_ConditionalContentVy07WorkoutB014PaceMetricViewVAFGMd);
      __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI19_ConditionalContentVy07WorkoutB018DistanceMetricViewVAD04LapsgH0VGMd);
      lazy protocol witness table accessor for type _ConditionalContent<StrideLengthMetricView, StrideLengthMetricView> and conformance <> _ConditionalContent<A, B>(&lazy protocol witness table cache variable for type _ConditionalContent<PaceMetricView, PaceMetricView> and conformance <> _ConditionalContent<A, B>, &_s7SwiftUI19_ConditionalContentVy07WorkoutB014PaceMetricViewVAFGMd, &_s7SwiftUI19_ConditionalContentVy07WorkoutB014PaceMetricViewVAFGMR, lazy protocol witness table accessor for type PaceMetricView and conformance PaceMetricView);
      lazy protocol witness table accessor for type _ConditionalContent<DistanceMetricView, LapsMetricView> and conformance <> _ConditionalContent<A, B>();
      _ConditionalContent<>.init(storage:)();
      v651 = v633;
      v652[0] = v634[0];
      *(v652 + 10) = *(v634 + 10);
      v650[0] = v631;
      v650[1] = v632;
      LOBYTE(v640) = 1;
      BYTE10(v652[1]) = 1;
      __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI19_ConditionalContentVyACy07WorkoutB020TimeInZoneMetricViewVAD04PaceiJ0VGACyA2HGGMd);
      __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI19_ConditionalContentVyACy07WorkoutB014PaceMetricViewVAFGACyAD08DistancegH0VAD04LapsgH0VGGMd);
      lazy protocol witness table accessor for type _ConditionalContent<_ConditionalContent<TimeInZoneMetricView, PaceMetricView>, _ConditionalContent<PaceMetricView, PaceMetricView>> and conformance <> _ConditionalContent<A, B>();
      lazy protocol witness table accessor for type _ConditionalContent<_ConditionalContent<PaceMetricView, PaceMetricView>, _ConditionalContent<DistanceMetricView, LapsMetricView>> and conformance <> _ConditionalContent<A, B>();
      _ConditionalContent<>.init(storage:)();
      v190 = v689[3];
      v191 = v614;
      v614[2] = v689[2];
      v191[3] = v190;
      v192 = *(&v689[3] + 11);
      goto LABEL_62;
    case 15:
      v556 = v67;
      v122 = v560;
      v121 = v561;
      v123 = v563;
      (*(v561 + 104))(v560, *MEMORY[0x277D7E1D0], v563, v65);
      (*(v121 + 56))(v122, 0, 1, v123);
      v124 = *(v559 + 48);
      v125 = v562;
      outlined init with copy of TupleView<(ModifiedContent<Text, MetricValueFont>, ModifiedContent<ModifiedContent<Text, MetricDescriptionCoreFont>, ExtendedLineSpacingSupport>)>(v567, v562, &_s11WorkoutCore17MetricPlatterTypeOSgMd);
      outlined init with copy of TupleView<(ModifiedContent<Text, MetricValueFont>, ModifiedContent<ModifiedContent<Text, MetricDescriptionCoreFont>, ExtendedLineSpacingSupport>)>(v122, v125 + v124, &_s11WorkoutCore17MetricPlatterTypeOSgMd);
      v126 = *(v121 + 48);
      if (v126(v125, 1, v123) == 1)
      {
        outlined destroy of TupleView<(ModifiedContent<Text, MetricValueFont>, ModifiedContent<ModifiedContent<Text, MetricDescriptionCoreFont>, ExtendedLineSpacingSupport>)>(v122, &_s11WorkoutCore17MetricPlatterTypeOSgMd);
        if (v126(v125 + v124, 1, v123) == 1)
        {
          outlined destroy of TupleView<(ModifiedContent<Text, MetricValueFont>, ModifiedContent<ModifiedContent<Text, MetricDescriptionCoreFont>, ExtendedLineSpacingSupport>)>(v125, &_s11WorkoutCore17MetricPlatterTypeOSgMd);
          goto LABEL_120;
        }

        goto LABEL_90;
      }

      v486 = v558;
      outlined init with copy of TupleView<(ModifiedContent<Text, MetricValueFont>, ModifiedContent<ModifiedContent<Text, MetricDescriptionCoreFont>, ExtendedLineSpacingSupport>)>(v125, v558, &_s11WorkoutCore17MetricPlatterTypeOSgMd);
      if (v126(v125 + v124, 1, v123) == 1)
      {
        outlined destroy of TupleView<(ModifiedContent<Text, MetricValueFont>, ModifiedContent<ModifiedContent<Text, MetricDescriptionCoreFont>, ExtendedLineSpacingSupport>)>(v122, &_s11WorkoutCore17MetricPlatterTypeOSgMd);
        (*(v121 + 8))(v486, v123);
LABEL_90:
        outlined destroy of TupleView<(ModifiedContent<Text, MetricValueFont>, ModifiedContent<ModifiedContent<Text, MetricDescriptionCoreFont>, ExtendedLineSpacingSupport>)>(v125, &_s11WorkoutCore17MetricPlatterTypeOSg_ADtMd);
LABEL_91:
        v487 = MetricsPublisher.currentCadence.getter();
        v489 = v488;
        v490 = swift_getKeyPath();
        v491 = v489 & 1;
        LOBYTE(v650[0]) = 1;
        v492 = v620;
        *&v689[0] = v620;
        *(&v689[0] + 1) = v487;
        LOBYTE(v689[1]) = v491;
        *(&v689[1] + 1) = 15;
        v689[2] = v625;
        *&v689[3] = 0;
        *(&v689[3] + 1) = v490;
        LOBYTE(v689[4]) = 0;
        BYTE2(v689[4]) = 1;
        v493 = v625;
        v494 = v492;
        goto LABEL_125;
      }

      v539 = v557;
      (*(v121 + 32))(v557, v125 + v124, v123);
      lazy protocol witness table accessor for type HeartRateMetricView and conformance HeartRateMetricView(&lazy protocol witness table cache variable for type MetricPlatterType and conformance MetricPlatterType, MEMORY[0x277D7E1F8]);
      LODWORD(v616) = dispatch thunk of static Equatable.== infix(_:_:)();
      v540 = *(v121 + 8);
      v540(v539, v123);
      outlined destroy of TupleView<(ModifiedContent<Text, MetricValueFont>, ModifiedContent<ModifiedContent<Text, MetricDescriptionCoreFont>, ExtendedLineSpacingSupport>)>(v122, &_s11WorkoutCore17MetricPlatterTypeOSgMd);
      v540(v486, v123);
      outlined destroy of TupleView<(ModifiedContent<Text, MetricValueFont>, ModifiedContent<ModifiedContent<Text, MetricDescriptionCoreFont>, ExtendedLineSpacingSupport>)>(v125, &_s11WorkoutCore17MetricPlatterTypeOSgMd);
      if ((v616 & 1) == 0)
      {
        goto LABEL_91;
      }

LABEL_120:
      v541 = COERCE_DOUBLE(MetricsPublisher.averageCadence.getter());
      if ((v542 & 1) != 0 || v541 <= 0.0)
      {
        LOBYTE(v631) = 1;
        BYTE1(v689[4]) = 1;
        lazy protocol witness table accessor for type CadenceMetricView and conformance CadenceMetricView();
      }

      else
      {
        v543 = MetricsPublisher.currentCadence.getter();
        v545 = v544;
        v546 = swift_getKeyPath();
        LOBYTE(v650[0]) = 0;
        LOBYTE(v631) = 0;
        v547 = v620;
        *&v689[0] = v620;
        *(&v689[0] + 1) = v543;
        LOBYTE(v689[1]) = v545 & 1;
        *(&v689[1] + 1) = 15;
        v548 = v625;
        v689[2] = v625;
        *&v689[3] = 0;
        *(&v689[3] + 1) = v546;
        LOWORD(v689[4]) = 0;
        lazy protocol witness table accessor for type CadenceMetricView and conformance CadenceMetricView();
        v549 = v548;
        v550 = v547;
      }

      _ConditionalContent<>.init(storage:)();
      v689[2] = v651;
      v689[3] = v652[0];
      LOWORD(v689[4]) = v652[1];
      v689[1] = v650[1];
      v689[0] = v650[0];
      LOBYTE(v631) = 0;
      BYTE2(v689[4]) = 0;
LABEL_125:
      __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI19_ConditionalContentVy07WorkoutB017CadenceMetricViewVAA05EmptyH0VGMd);
      lazy protocol witness table accessor for type _ConditionalContent<CadenceMetricView, EmptyView> and conformance <> _ConditionalContent<A, B>();
      lazy protocol witness table accessor for type CadenceMetricView and conformance CadenceMetricView();
      _ConditionalContent<>.init(storage:)();
      v689[2] = v683;
      v689[3] = v684[0];
      *(&v689[3] + 15) = *(v684 + 15);
      v689[1] = v682;
      v689[0] = v681;
      LOBYTE(v668) = 0;
      BYTE3(v689[4]) = 0;
      outlined init with copy of TupleView<(ModifiedContent<Text, MetricValueFont>, ModifiedContent<ModifiedContent<Text, MetricDescriptionCoreFont>, ExtendedLineSpacingSupport>)>(&v681, v650, &_s7SwiftUI19_ConditionalContentVyACy07WorkoutB017CadenceMetricViewVAA05EmptyH0VGAFGMd);
      __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI19_ConditionalContentVyACy07WorkoutB017CadenceMetricViewVAA05EmptyH0VGAFGMd);
      lazy protocol witness table accessor for type _ConditionalContent<_ConditionalContent<CadenceMetricView, EmptyView>, CadenceMetricView> and conformance <> _ConditionalContent<A, B>();
      lazy protocol witness table accessor for type CadenceMetricView and conformance CadenceMetricView();
      _ConditionalContent<>.init(storage:)();
      v689[2] = v651;
      v689[3] = v652[0];
      LODWORD(v689[4]) = v652[1];
      v689[1] = v650[1];
      v689[0] = v650[0];
      LOBYTE(v670) = 0;
      BYTE4(v689[4]) = 0;
      __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI19_ConditionalContentVyACyACy07WorkoutB017CadenceMetricViewVAA05EmptyH0VGAFGAFGMd);
      __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI19_ConditionalContentVy07WorkoutB025ElevationChangeMetricViewVAD07CurrentfhI0VGMd);
      lazy protocol witness table accessor for type _ConditionalContent<_ConditionalContent<_ConditionalContent<CadenceMetricView, EmptyView>, CadenceMetricView>, CadenceMetricView> and conformance <> _ConditionalContent<A, B>();
      lazy protocol witness table accessor for type _ConditionalContent<ElevationChangeMetricView, CurrentElevationMetricView> and conformance <> _ConditionalContent<A, B>();
      _ConditionalContent<>.init(storage:)();
      v651 = v633;
      v652[0] = v634[0];
      *(v652 + 13) = *(v634 + 13);
      v650[0] = v631;
      v650[1] = v632;
      LOBYTE(v640) = 0;
      BYTE11(v652[2]) = 0;
      __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI19_ConditionalContentVyACyACyACy07WorkoutB017CadenceMetricViewVAA05EmptyH0VGAFGAFGACyAD015ElevationChangegH0VAD07CurrentjgH0VGGMd);
      __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI19_ConditionalContentVyACy07WorkoutB015PowerMetricViewVAFGACyAfD014FlightsClimbedgH0VGGMd);
      lazy protocol witness table accessor for type _ConditionalContent<_ConditionalContent<_ConditionalContent<_ConditionalContent<CadenceMetricView, EmptyView>, CadenceMetricView>, CadenceMetricView>, _ConditionalContent<ElevationChangeMetricView, CurrentElevationMetricView>> and conformance <> _ConditionalContent<A, B>();
      lazy protocol witness table accessor for type _ConditionalContent<_ConditionalContent<PowerMetricView, PowerMetricView>, _ConditionalContent<PowerMetricView, FlightsClimbedMetricView>> and conformance <> _ConditionalContent<A, B>();
      _ConditionalContent<>.init(storage:)();
      v551 = v689[3];
      v552 = v617;
      v617[2] = v689[2];
      v552[3] = v551;
      v552[4] = v689[4];
      *(v552 + 76) = *(&v689[4] + 12);
      v553 = v689[1];
      *v552 = v689[0];
      v552[1] = v553;
      swift_storeEnumTagMultiPayload();
      __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI19_ConditionalContentVyACyACyACyACy07WorkoutB017CadenceMetricViewVAA05EmptyH0VGAFGAFGACyAD015ElevationChangegH0VAD07CurrentjgH0VGGACyACyAD05PowergH0VASGACyAsD014FlightsClimbedgH0VGGGMd);
      lazy protocol witness table accessor for type _ConditionalContent<_ConditionalContent<_ConditionalContent<_ConditionalContent<_ConditionalContent<CadenceMetricView, EmptyView>, CadenceMetricView>, CadenceMetricView>, _ConditionalContent<ElevationChangeMetricView, CurrentElevationMetricView>>, _ConditionalContent<_ConditionalContent<PowerMetricView, PowerMetricView>, _ConditionalContent<PowerMetricView, FlightsClimbedMetricView>>> and conformance <> _ConditionalContent<A, B>();
      lazy protocol witness table accessor for type _ConditionalContent<_ConditionalContent<_ConditionalContent<SegmentDurationMetricView, DistanceDetailMetricView>, _ConditionalContent<PaceMetricView, EnergyMetricView>>, _ConditionalContent<_ConditionalContent<EnergyMetricView, PowerMetricView>, _ConditionalContent<PowerMetricView, ModifiedContent<ModifiedContent<WorkoutTimeView, MetricDetail>, _ForegroundStyleModifier<Color>>>>> and conformance <> _ConditionalContent<A, B>();
      v554 = v619;
      _ConditionalContent<>.init(storage:)();
      outlined init with copy of TupleView<(ModifiedContent<Text, MetricValueFont>, ModifiedContent<ModifiedContent<Text, MetricDescriptionCoreFont>, ExtendedLineSpacingSupport>)>(v554, v623, &_s7SwiftUI19_ConditionalContentVyACyACyACyACyACy07WorkoutB017CadenceMetricViewVAA05EmptyH0VGAFGAFGACyAD015ElevationChangegH0VAD07CurrentjgH0VGGACyACyAD05PowergH0VASGACyAsD014FlightsClimbedgH0VGGGACyACyACyAD015SegmentDurationgH0VAD014DistanceDetailgH0VGACyAD04PacegH0VAD06EnergygH0VGGACyACyA6_ASGACyAsA08ModifiedD0VyA11_yAD0e4TimeH0VAD0gS0VGAA24_ForegroundStyleModifierVyAA5ColorVGGGGGGMd);
      swift_storeEnumTagMultiPayload();
      lazy protocol witness table accessor for type _ConditionalContent<_ConditionalContent<_ConditionalContent<_ConditionalContent<EnergyMetricView, EnergyMetricView>, _ConditionalContent<HeartRateMetricView, HeartRateAggregateMetricView>>, _ConditionalContent<_ConditionalContent<HeartRateAggregateMetricView, ZoneMetricView>, _ConditionalContent<TimeInZoneMetricView, ZoneMetricView>>>, _ConditionalContent<_ConditionalContent<_ConditionalContent<TimeInZoneMetricView, PaceMetricView>, _ConditionalContent<PaceMetricView, PaceMetricView>>, _ConditionalContent<_ConditionalContent<PaceMetricView, PaceMetricView>, _ConditionalContent<DistanceMetricView, LapsMetricView>>>> and conformance <> _ConditionalContent<A, B>();
      lazy protocol witness table accessor for type _ConditionalContent<_ConditionalContent<_ConditionalContent<_ConditionalContent<_ConditionalContent<_ConditionalContent<CadenceMetricView, EmptyView>, CadenceMetricView>, CadenceMetricView>, _ConditionalContent<ElevationChangeMetricView, CurrentElevationMetricView>>, _ConditionalContent<_ConditionalContent<PowerMetricView, PowerMetricView>, _ConditionalContent<PowerMetricView, FlightsClimbedMetricView>>>, _ConditionalContent<_ConditionalContent<_ConditionalContent<SegmentDurationMetricView, DistanceDetailMetricView>, _ConditionalContent<PaceMetricView, EnergyMetricView>>, _ConditionalContent<_ConditionalContent<EnergyMetricView, PowerMetricView>, _ConditionalContent<PowerMetricView, ModifiedContent<ModifiedContent<WorkoutTimeView, MetricDetail>, _ForegroundStyleModifier<Color>>>>>> and conformance <> _ConditionalContent<A, B>();
      v193 = v556;
      _ConditionalContent<>.init(storage:)();
      outlined destroy of TupleView<(ModifiedContent<Text, MetricValueFont>, ModifiedContent<ModifiedContent<Text, MetricDescriptionCoreFont>, ExtendedLineSpacingSupport>)>(v554, &_s7SwiftUI19_ConditionalContentVyACyACyACyACyACy07WorkoutB017CadenceMetricViewVAA05EmptyH0VGAFGAFGACyAD015ElevationChangegH0VAD07CurrentjgH0VGGACyACyAD05PowergH0VASGACyAsD014FlightsClimbedgH0VGGGACyACyACyAD015SegmentDurationgH0VAD014DistanceDetailgH0VGACyAD04PacegH0VAD06EnergygH0VGGACyACyA6_ASGACyAsA08ModifiedD0VyA11_yAD0e4TimeH0VAD0gS0VGAA24_ForegroundStyleModifierVyAA5ColorVGGGGGGMd);
      outlined init with copy of TupleView<(ModifiedContent<Text, MetricValueFont>, ModifiedContent<ModifiedContent<Text, MetricDescriptionCoreFont>, ExtendedLineSpacingSupport>)>(v193, v629, &_s7SwiftUI19_ConditionalContentVyACyACyACyACy07WorkoutB016EnergyMetricViewVAFGACyAD09HeartRategH0VAD0ij9AggregategH0VGGACyACyAkD04ZonegH0VGACyAD06TimeInlgH0VAOGGGACyACyACyArD04PacegH0VGACyA2WGGACyAyCyAD08DistancegH0VAD04LapsgH0VGGGGACyACyACyACyACyACyAD07CadencegH0VAA05EmptyH0VGA8_GA8_GACyAD015ElevationChangegH0VAD07CurrenttgH0VGGACyACyAD05PowergH0VA21_GACyA21_AD014FlightsClimbedgH0VGGGACyACyACyAD015SegmentDurationgH0VAD0p6DetailgH0VGACyAwFGGACyACyAFA21_GACyA21_AA08ModifiedD0VyA37_yAD0emH0VAD0G6DetailVGAA24_ForegroundStyleModifierVyAA5ColorVGGGGGGGMd);
      swift_storeEnumTagMultiPayload();
      __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI19_ConditionalContentVyACyACyACy07WorkoutB024DistanceDetailMetricViewVAD04PacehI0VGACyAD012StrideLengthhI0VAKGGACyACyAD019VerticalOscillationhI0VAOGACyAD017GroundContactTimehI0VARGGGACyACyAD015ElevationChangehI0VAD016DownhillRunCounthI0VGACyAA05EmptyI0VAA6HStackVyAA05TupleI0VyAA08ModifiedD0VyAA4TextVAD0H9ValueFontVG_A6_yA6_yA8_AD0H19DescriptionCoreFontVGAD26ExtendedLineSpacingSupport33_241C09B5AC269BC1C919798A0AC522FDLLVGtGGGGGMd);
      lazy protocol witness table accessor for type _ConditionalContent<_ConditionalContent<_ConditionalContent<_ConditionalContent<_ConditionalContent<EnergyMetricView, EnergyMetricView>, _ConditionalContent<HeartRateMetricView, HeartRateAggregateMetricView>>, _ConditionalContent<_ConditionalContent<HeartRateAggregateMetricView, ZoneMetricView>, _ConditionalContent<TimeInZoneMetricView, ZoneMetricView>>>, _ConditionalContent<_ConditionalContent<_ConditionalContent<TimeInZoneMetricView, PaceMetricView>, _ConditionalContent<PaceMetricView, PaceMetricView>>, _ConditionalContent<_ConditionalContent<PaceMetricView, PaceMetricView>, _ConditionalContent<DistanceMetricView, LapsMetricView>>>>, _ConditionalContent<_ConditionalContent<_ConditionalContent<_ConditionalContent<_ConditionalContent<_ConditionalContent<CadenceMetricView, EmptyView>, CadenceMetricView>, CadenceMetricView>, _ConditionalContent<ElevationChangeMetricView, CurrentElevationMetricView>>, _ConditionalContent<_ConditionalContent<PowerMetricView, PowerMet();
      lazy protocol witness table accessor for type _ConditionalContent<_ConditionalContent<_ConditionalContent<_ConditionalContent<DistanceDetailMetricView, PaceMetricView>, _ConditionalContent<StrideLengthMetricView, StrideLengthMetricView>>, _ConditionalContent<_ConditionalContent<VerticalOscillationMetricView, VerticalOscillationMetricView>, _ConditionalContent<GroundContactTimeMetricView, GroundContactTimeMetricView>>>, _ConditionalContent<_ConditionalContent<ElevationChangeMetricView, DownhillRunCountMetricView>, _ConditionalContent<EmptyView, HStack<TupleView<(ModifiedContent<Text, MetricValueFont>, ModifiedContent<ModifiedContent<Text, MetricDescriptionCoreFont>, ExtendedLineSpacingSupport>)>>>>> and conformance <> _ConditionalContent<A, B>();
      _ConditionalContent<>.init(storage:)();
      outlined destroy of TupleView<(ModifiedContent<Text, MetricValueFont>, ModifiedContent<ModifiedContent<Text, MetricDescriptionCoreFont>, ExtendedLineSpacingSupport>)>(&v681, &_s7SwiftUI19_ConditionalContentVyACy07WorkoutB017CadenceMetricViewVAA05EmptyH0VGAFGMd);
LABEL_116:
      v374 = v193;
      v405 = &_s7SwiftUI19_ConditionalContentVyACyACyACyACy07WorkoutB016EnergyMetricViewVAFGACyAD09HeartRategH0VAD0ij9AggregategH0VGGACyACyAkD04ZonegH0VGACyAD06TimeInlgH0VAOGGGACyACyACyArD04PacegH0VGACyA2WGGACyAyCyAD08DistancegH0VAD04LapsgH0VGGGGACyACyACyACyACyACyAD07CadencegH0VAA05EmptyH0VGA8_GA8_GACyAD015ElevationChangegH0VAD07CurrenttgH0VGGACyACyAD05PowergH0VA21_GACyA21_AD014FlightsClimbedgH0VGGGACyACyACyAD015SegmentDurationgH0VAD0p6DetailgH0VGACyAwFGGACyACyAFA21_GACyA21_AA08ModifiedD0VyA37_yAD0emH0VAD0G6DetailVGAA24_ForegroundStyleModifierVyAA5ColorVGGGGGGGMd;
LABEL_117:
      outlined destroy of TupleView<(ModifiedContent<Text, MetricValueFont>, ModifiedContent<ModifiedContent<Text, MetricDescriptionCoreFont>, ExtendedLineSpacingSupport>)>(v374, v405);
      return;
    case 16:
      v74 = v67;
      v283 = MetricsPublisher.averageCadence.getter();
      v285 = v284;
      v286 = swift_getKeyPath();
      LOBYTE(v650[0]) = 0;
      v287 = v285 & 1;
      v288 = v620;
      *&v681 = v620;
      *(&v681 + 1) = v283;
      LOBYTE(v682) = v287;
      *(&v682 + 1) = 16;
      v683 = v625;
      *&v684[0] = 0;
      *(&v684[0] + 1) = v286;
      LOBYTE(v684[1]) = 0;
      v689[2] = v625;
      v689[3] = v684[0];
      LOBYTE(v689[4]) = 0;
      v689[1] = v682;
      v689[0] = v681;
      LOBYTE(v668) = 1;
      BYTE3(v689[4]) = 1;
      v289 = v625;
      v290 = v288;
      outlined init with copy of CadenceMetricView(&v681, v650);
      __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI19_ConditionalContentVyACy07WorkoutB017CadenceMetricViewVAA05EmptyH0VGAFGMd);
      lazy protocol witness table accessor for type _ConditionalContent<_ConditionalContent<CadenceMetricView, EmptyView>, CadenceMetricView> and conformance <> _ConditionalContent<A, B>();
      lazy protocol witness table accessor for type CadenceMetricView and conformance CadenceMetricView();
      _ConditionalContent<>.init(storage:)();
      v689[2] = v651;
      v689[3] = v652[0];
      LODWORD(v689[4]) = v652[1];
      v689[1] = v650[1];
      v689[0] = v650[0];
      LOBYTE(v670) = 0;
      BYTE4(v689[4]) = 0;
      __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI19_ConditionalContentVyACyACy07WorkoutB017CadenceMetricViewVAA05EmptyH0VGAFGAFGMd);
      __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI19_ConditionalContentVy07WorkoutB025ElevationChangeMetricViewVAD07CurrentfhI0VGMd);
      lazy protocol witness table accessor for type _ConditionalContent<_ConditionalContent<_ConditionalContent<CadenceMetricView, EmptyView>, CadenceMetricView>, CadenceMetricView> and conformance <> _ConditionalContent<A, B>();
      lazy protocol witness table accessor for type _ConditionalContent<ElevationChangeMetricView, CurrentElevationMetricView> and conformance <> _ConditionalContent<A, B>();
      _ConditionalContent<>.init(storage:)();
      v651 = v633;
      v652[0] = v634[0];
      *(v652 + 13) = *(v634 + 13);
      v650[0] = v631;
      v650[1] = v632;
      LOBYTE(v640) = 0;
      BYTE11(v652[2]) = 0;
      __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI19_ConditionalContentVyACyACyACy07WorkoutB017CadenceMetricViewVAA05EmptyH0VGAFGAFGACyAD015ElevationChangegH0VAD07CurrentjgH0VGGMd);
      __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI19_ConditionalContentVyACy07WorkoutB015PowerMetricViewVAFGACyAfD014FlightsClimbedgH0VGGMd);
      lazy protocol witness table accessor for type _ConditionalContent<_ConditionalContent<_ConditionalContent<_ConditionalContent<CadenceMetricView, EmptyView>, CadenceMetricView>, CadenceMetricView>, _ConditionalContent<ElevationChangeMetricView, CurrentElevationMetricView>> and conformance <> _ConditionalContent<A, B>();
      lazy protocol witness table accessor for type _ConditionalContent<_ConditionalContent<PowerMetricView, PowerMetricView>, _ConditionalContent<PowerMetricView, FlightsClimbedMetricView>> and conformance <> _ConditionalContent<A, B>();
      _ConditionalContent<>.init(storage:)();
      v291 = v689[3];
      v292 = v617;
      v617[2] = v689[2];
      v292[3] = v291;
      v292[4] = v689[4];
      *(v292 + 76) = *(&v689[4] + 12);
      v293 = v689[1];
      *v292 = v689[0];
      v292[1] = v293;
      swift_storeEnumTagMultiPayload();
      __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI19_ConditionalContentVyACyACyACyACy07WorkoutB017CadenceMetricViewVAA05EmptyH0VGAFGAFGACyAD015ElevationChangegH0VAD07CurrentjgH0VGGACyACyAD05PowergH0VASGACyAsD014FlightsClimbedgH0VGGGMd);
      lazy protocol witness table accessor for type _ConditionalContent<_ConditionalContent<_ConditionalContent<_ConditionalContent<_ConditionalContent<CadenceMetricView, EmptyView>, CadenceMetricView>, CadenceMetricView>, _ConditionalContent<ElevationChangeMetricView, CurrentElevationMetricView>>, _ConditionalContent<_ConditionalContent<PowerMetricView, PowerMetricView>, _ConditionalContent<PowerMetricView, FlightsClimbedMetricView>>> and conformance <> _ConditionalContent<A, B>();
      lazy protocol witness table accessor for type _ConditionalContent<_ConditionalContent<_ConditionalContent<SegmentDurationMetricView, DistanceDetailMetricView>, _ConditionalContent<PaceMetricView, EnergyMetricView>>, _ConditionalContent<_ConditionalContent<EnergyMetricView, PowerMetricView>, _ConditionalContent<PowerMetricView, ModifiedContent<ModifiedContent<WorkoutTimeView, MetricDetail>, _ForegroundStyleModifier<Color>>>>> and conformance <> _ConditionalContent<A, B>();
      v294 = v619;
      _ConditionalContent<>.init(storage:)();
      outlined init with copy of TupleView<(ModifiedContent<Text, MetricValueFont>, ModifiedContent<ModifiedContent<Text, MetricDescriptionCoreFont>, ExtendedLineSpacingSupport>)>(v294, v623, &_s7SwiftUI19_ConditionalContentVyACyACyACyACyACy07WorkoutB017CadenceMetricViewVAA05EmptyH0VGAFGAFGACyAD015ElevationChangegH0VAD07CurrentjgH0VGGACyACyAD05PowergH0VASGACyAsD014FlightsClimbedgH0VGGGACyACyACyAD015SegmentDurationgH0VAD014DistanceDetailgH0VGACyAD04PacegH0VAD06EnergygH0VGGACyACyA6_ASGACyAsA08ModifiedD0VyA11_yAD0e4TimeH0VAD0gS0VGAA24_ForegroundStyleModifierVyAA5ColorVGGGGGGMd);
      swift_storeEnumTagMultiPayload();
      lazy protocol witness table accessor for type _ConditionalContent<_ConditionalContent<_ConditionalContent<_ConditionalContent<EnergyMetricView, EnergyMetricView>, _ConditionalContent<HeartRateMetricView, HeartRateAggregateMetricView>>, _ConditionalContent<_ConditionalContent<HeartRateAggregateMetricView, ZoneMetricView>, _ConditionalContent<TimeInZoneMetricView, ZoneMetricView>>>, _ConditionalContent<_ConditionalContent<_ConditionalContent<TimeInZoneMetricView, PaceMetricView>, _ConditionalContent<PaceMetricView, PaceMetricView>>, _ConditionalContent<_ConditionalContent<PaceMetricView, PaceMetricView>, _ConditionalContent<DistanceMetricView, LapsMetricView>>>> and conformance <> _ConditionalContent<A, B>();
      lazy protocol witness table accessor for type _ConditionalContent<_ConditionalContent<_ConditionalContent<_ConditionalContent<_ConditionalContent<_ConditionalContent<CadenceMetricView, EmptyView>, CadenceMetricView>, CadenceMetricView>, _ConditionalContent<ElevationChangeMetricView, CurrentElevationMetricView>>, _ConditionalContent<_ConditionalContent<PowerMetricView, PowerMetricView>, _ConditionalContent<PowerMetricView, FlightsClimbedMetricView>>>, _ConditionalContent<_ConditionalContent<_ConditionalContent<SegmentDurationMetricView, DistanceDetailMetricView>, _ConditionalContent<PaceMetricView, EnergyMetricView>>, _ConditionalContent<_ConditionalContent<EnergyMetricView, PowerMetricView>, _ConditionalContent<PowerMetricView, ModifiedContent<ModifiedContent<WorkoutTimeView, MetricDetail>, _ForegroundStyleModifier<Color>>>>>> and conformance <> _ConditionalContent<A, B>();
      _ConditionalContent<>.init(storage:)();
      outlined destroy of TupleView<(ModifiedContent<Text, MetricValueFont>, ModifiedContent<ModifiedContent<Text, MetricDescriptionCoreFont>, ExtendedLineSpacingSupport>)>(v294, &_s7SwiftUI19_ConditionalContentVyACyACyACyACyACy07WorkoutB017CadenceMetricViewVAA05EmptyH0VGAFGAFGACyAD015ElevationChangegH0VAD07CurrentjgH0VGGACyACyAD05PowergH0VASGACyAsD014FlightsClimbedgH0VGGGACyACyACyAD015SegmentDurationgH0VAD014DistanceDetailgH0VGACyAD04PacegH0VAD06EnergygH0VGGACyACyA6_ASGACyAsA08ModifiedD0VyA11_yAD0e4TimeH0VAD0gS0VGAA24_ForegroundStyleModifierVyAA5ColorVGGGGGGMd);
      v102 = &_s7SwiftUI19_ConditionalContentVyACyACyACyACy07WorkoutB016EnergyMetricViewVAFGACyAD09HeartRategH0VAD0ij9AggregategH0VGGACyACyAkD04ZonegH0VGACyAD06TimeInlgH0VAOGGGACyACyACyArD04PacegH0VGACyA2WGGACyAyCyAD08DistancegH0VAD04LapsgH0VGGGGACyACyACyACyACyACyAD07CadencegH0VAA05EmptyH0VGA8_GA8_GACyAD015ElevationChangegH0VAD07CurrenttgH0VGGACyACyAD05PowergH0VA21_GACyA21_AD014FlightsClimbedgH0VGGGACyACyACyAD015SegmentDurationgH0VAD0p6DetailgH0VGACyAwFGGACyACyAFA21_GACyA21_AA08ModifiedD0VyA37_yAD0emH0VAD0G6DetailVGAA24_ForegroundStyleModifierVyAA5ColorVGGGGGGGMd;
      outlined init with copy of TupleView<(ModifiedContent<Text, MetricValueFont>, ModifiedContent<ModifiedContent<Text, MetricDescriptionCoreFont>, ExtendedLineSpacingSupport>)>(v74, v629, &_s7SwiftUI19_ConditionalContentVyACyACyACyACy07WorkoutB016EnergyMetricViewVAFGACyAD09HeartRategH0VAD0ij9AggregategH0VGGACyACyAkD04ZonegH0VGACyAD06TimeInlgH0VAOGGGACyACyACyArD04PacegH0VGACyA2WGGACyAyCyAD08DistancegH0VAD04LapsgH0VGGGGACyACyACyACyACyACyAD07CadencegH0VAA05EmptyH0VGA8_GA8_GACyAD015ElevationChangegH0VAD07CurrenttgH0VGGACyACyAD05PowergH0VA21_GACyA21_AD014FlightsClimbedgH0VGGGACyACyACyAD015SegmentDurationgH0VAD0p6DetailgH0VGACyAwFGGACyACyAFA21_GACyA21_AA08ModifiedD0VyA37_yAD0emH0VAD0G6DetailVGAA24_ForegroundStyleModifierVyAA5ColorVGGGGGGGMd);
      swift_storeEnumTagMultiPayload();
      __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI19_ConditionalContentVyACyACyACy07WorkoutB024DistanceDetailMetricViewVAD04PacehI0VGACyAD012StrideLengthhI0VAKGGACyACyAD019VerticalOscillationhI0VAOGACyAD017GroundContactTimehI0VARGGGACyACyAD015ElevationChangehI0VAD016DownhillRunCounthI0VGACyAA05EmptyI0VAA6HStackVyAA05TupleI0VyAA08ModifiedD0VyAA4TextVAD0H9ValueFontVG_A6_yA6_yA8_AD0H19DescriptionCoreFontVGAD26ExtendedLineSpacingSupport33_241C09B5AC269BC1C919798A0AC522FDLLVGtGGGGGMd);
      lazy protocol witness table accessor for type _ConditionalContent<_ConditionalContent<_ConditionalContent<_ConditionalContent<_ConditionalContent<EnergyMetricView, EnergyMetricView>, _ConditionalContent<HeartRateMetricView, HeartRateAggregateMetricView>>, _ConditionalContent<_ConditionalContent<HeartRateAggregateMetricView, ZoneMetricView>, _ConditionalContent<TimeInZoneMetricView, ZoneMetricView>>>, _ConditionalContent<_ConditionalContent<_ConditionalContent<TimeInZoneMetricView, PaceMetricView>, _ConditionalContent<PaceMetricView, PaceMetricView>>, _ConditionalContent<_ConditionalContent<PaceMetricView, PaceMetricView>, _ConditionalContent<DistanceMetricView, LapsMetricView>>>>, _ConditionalContent<_ConditionalContent<_ConditionalContent<_ConditionalContent<_ConditionalContent<_ConditionalContent<CadenceMetricView, EmptyView>, CadenceMetricView>, CadenceMetricView>, _ConditionalContent<ElevationChangeMetricView, CurrentElevationMetricView>>, _ConditionalContent<_ConditionalContent<PowerMetricView, PowerMet();
      lazy protocol witness table accessor for type _ConditionalContent<_ConditionalContent<_ConditionalContent<_ConditionalContent<DistanceDetailMetricView, PaceMetricView>, _ConditionalContent<StrideLengthMetricView, StrideLengthMetricView>>, _ConditionalContent<_ConditionalContent<VerticalOscillationMetricView, VerticalOscillationMetricView>, _ConditionalContent<GroundContactTimeMetricView, GroundContactTimeMetricView>>>, _ConditionalContent<_ConditionalContent<ElevationChangeMetricView, DownhillRunCountMetricView>, _ConditionalContent<EmptyView, HStack<TupleView<(ModifiedContent<Text, MetricValueFont>, ModifiedContent<ModifiedContent<Text, MetricDescriptionCoreFont>, ExtendedLineSpacingSupport>)>>>>> and conformance <> _ConditionalContent<A, B>();
      _ConditionalContent<>.init(storage:)();
      outlined destroy of CadenceMetricView(&v681);
      goto LABEL_64;
    case 17:
      v193 = v67;
      v295 = MetricsPublisher.currentElevation.getter();
      v297 = v296;
      MetricsPublisher.workoutStatePublisher.getter();
      v298 = WorkoutStatePublisher.gpsUnavailable.getter();

      v299 = swift_getKeyPath();
      KeyPath = v299;
      if (v298)
      {
        v300 = 256;
      }

      else
      {
        v300 = 0;
      }

      *&v689[0] = v295;
      *(&v689[0] + 1) = v300 | v297 & 1;
      v301 = v625;
      *&v689[1] = v625;
      *(&v689[1] + 1) = v299;
      LOWORD(v689[2]) = 256;
LABEL_56:
      v261 = v301;
      outlined copy of Environment<WorkoutViewStyle>.Content(KeyPath, 0);
      lazy protocol witness table accessor for type ElevationChangeMetricView and conformance ElevationChangeMetricView();
      lazy protocol witness table accessor for type CurrentElevationMetricView and conformance CurrentElevationMetricView();
      _ConditionalContent<>.init(storage:)();
      LOBYTE(v640) = BYTE1(v651);
      LOBYTE(v670) = 1;
      v689[0] = v650[0];
      v689[1] = v650[1];
      LOWORD(v689[2]) = v651;
      BYTE4(v689[4]) = 1;
      __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI19_ConditionalContentVyACyACy07WorkoutB017CadenceMetricViewVAA05EmptyH0VGAFGAFGMd);
      __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI19_ConditionalContentVy07WorkoutB025ElevationChangeMetricViewVAD07CurrentfhI0VGMd);
      lazy protocol witness table accessor for type _ConditionalContent<_ConditionalContent<_ConditionalContent<CadenceMetricView, EmptyView>, CadenceMetricView>, CadenceMetricView> and conformance <> _ConditionalContent<A, B>();
      lazy protocol witness table accessor for type _ConditionalContent<ElevationChangeMetricView, CurrentElevationMetricView> and conformance <> _ConditionalContent<A, B>();
      _ConditionalContent<>.init(storage:)();
      v651 = v633;
      v652[0] = v634[0];
      *(v652 + 13) = *(v634 + 13);
      v650[0] = v631;
      v650[1] = v632;
      LOBYTE(v681) = 0;
      BYTE11(v652[2]) = 0;
      __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI19_ConditionalContentVyACyACyACy07WorkoutB017CadenceMetricViewVAA05EmptyH0VGAFGAFGACyAD015ElevationChangegH0VAD07CurrentjgH0VGGMd);
      __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI19_ConditionalContentVyACy07WorkoutB015PowerMetricViewVAFGACyAfD014FlightsClimbedgH0VGGMd);
      lazy protocol witness table accessor for type _ConditionalContent<_ConditionalContent<_ConditionalContent<_ConditionalContent<CadenceMetricView, EmptyView>, CadenceMetricView>, CadenceMetricView>, _ConditionalContent<ElevationChangeMetricView, CurrentElevationMetricView>> and conformance <> _ConditionalContent<A, B>();
      lazy protocol witness table accessor for type _ConditionalContent<_ConditionalContent<PowerMetricView, PowerMetricView>, _ConditionalContent<PowerMetricView, FlightsClimbedMetricView>> and conformance <> _ConditionalContent<A, B>();
      _ConditionalContent<>.init(storage:)();
      v380 = v689[3];
      v381 = v617;
      v617[2] = v689[2];
      v381[3] = v380;
      v381[4] = v689[4];
      *(v381 + 76) = *(&v689[4] + 12);
      v382 = v689[1];
      *v381 = v689[0];
      v381[1] = v382;
      swift_storeEnumTagMultiPayload();
      __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI19_ConditionalContentVyACyACyACyACy07WorkoutB017CadenceMetricViewVAA05EmptyH0VGAFGAFGACyAD015ElevationChangegH0VAD07CurrentjgH0VGGACyACyAD05PowergH0VASGACyAsD014FlightsClimbedgH0VGGGMd);
      lazy protocol witness table accessor for type _ConditionalContent<_ConditionalContent<_ConditionalContent<_ConditionalContent<_ConditionalContent<CadenceMetricView, EmptyView>, CadenceMetricView>, CadenceMetricView>, _ConditionalContent<ElevationChangeMetricView, CurrentElevationMetricView>>, _ConditionalContent<_ConditionalContent<PowerMetricView, PowerMetricView>, _ConditionalContent<PowerMetricView, FlightsClimbedMetricView>>> and conformance <> _ConditionalContent<A, B>();
      lazy protocol witness table accessor for type _ConditionalContent<_ConditionalContent<_ConditionalContent<SegmentDurationMetricView, DistanceDetailMetricView>, _ConditionalContent<PaceMetricView, EnergyMetricView>>, _ConditionalContent<_ConditionalContent<EnergyMetricView, PowerMetricView>, _ConditionalContent<PowerMetricView, ModifiedContent<ModifiedContent<WorkoutTimeView, MetricDetail>, _ForegroundStyleModifier<Color>>>>> and conformance <> _ConditionalContent<A, B>();
      v265 = v619;
      _ConditionalContent<>.init(storage:)();
      v266 = &_s7SwiftUI19_ConditionalContentVyACyACyACyACyACy07WorkoutB017CadenceMetricViewVAA05EmptyH0VGAFGAFGACyAD015ElevationChangegH0VAD07CurrentjgH0VGGACyACyAD05PowergH0VASGACyAsD014FlightsClimbedgH0VGGGACyACyACyAD015SegmentDurationgH0VAD014DistanceDetailgH0VGACyAD04PacegH0VAD06EnergygH0VGGACyACyA6_ASGACyAsA08ModifiedD0VyA11_yAD0e4TimeH0VAD0gS0VGAA24_ForegroundStyleModifierVyAA5ColorVGGGGGGMd;
      outlined init with copy of TupleView<(ModifiedContent<Text, MetricValueFont>, ModifiedContent<ModifiedContent<Text, MetricDescriptionCoreFont>, ExtendedLineSpacingSupport>)>(v265, v623, &_s7SwiftUI19_ConditionalContentVyACyACyACyACyACy07WorkoutB017CadenceMetricViewVAA05EmptyH0VGAFGAFGACyAD015ElevationChangegH0VAD07CurrentjgH0VGGACyACyAD05PowergH0VASGACyAsD014FlightsClimbedgH0VGGGACyACyACyAD015SegmentDurationgH0VAD014DistanceDetailgH0VGACyAD04PacegH0VAD06EnergygH0VGGACyACyA6_ASGACyAsA08ModifiedD0VyA11_yAD0e4TimeH0VAD0gS0VGAA24_ForegroundStyleModifierVyAA5ColorVGGGGGGMd);
LABEL_57:
      swift_storeEnumTagMultiPayload();
      lazy protocol witness table accessor for type _ConditionalContent<_ConditionalContent<_ConditionalContent<_ConditionalContent<EnergyMetricView, EnergyMetricView>, _ConditionalContent<HeartRateMetricView, HeartRateAggregateMetricView>>, _ConditionalContent<_ConditionalContent<HeartRateAggregateMetricView, ZoneMetricView>, _ConditionalContent<TimeInZoneMetricView, ZoneMetricView>>>, _ConditionalContent<_ConditionalContent<_ConditionalContent<TimeInZoneMetricView, PaceMetricView>, _ConditionalContent<PaceMetricView, PaceMetricView>>, _ConditionalContent<_ConditionalContent<PaceMetricView, PaceMetricView>, _ConditionalContent<DistanceMetricView, LapsMetricView>>>> and conformance <> _ConditionalContent<A, B>();
      lazy protocol witness table accessor for type _ConditionalContent<_ConditionalContent<_ConditionalContent<_ConditionalContent<_ConditionalContent<_ConditionalContent<CadenceMetricView, EmptyView>, CadenceMetricView>, CadenceMetricView>, _ConditionalContent<ElevationChangeMetricView, CurrentElevationMetricView>>, _ConditionalContent<_ConditionalContent<PowerMetricView, PowerMetricView>, _ConditionalContent<PowerMetricView, FlightsClimbedMetricView>>>, _ConditionalContent<_ConditionalContent<_ConditionalContent<SegmentDurationMetricView, DistanceDetailMetricView>, _ConditionalContent<PaceMetricView, EnergyMetricView>>, _ConditionalContent<_ConditionalContent<EnergyMetricView, PowerMetricView>, _ConditionalContent<PowerMetricView, ModifiedContent<ModifiedContent<WorkoutTimeView, MetricDetail>, _ForegroundStyleModifier<Color>>>>>> and conformance <> _ConditionalContent<A, B>();
      _ConditionalContent<>.init(storage:)();
      outlined destroy of TupleView<(ModifiedContent<Text, MetricValueFont>, ModifiedContent<ModifiedContent<Text, MetricDescriptionCoreFont>, ExtendedLineSpacingSupport>)>(v265, v266);
      outlined init with copy of TupleView<(ModifiedContent<Text, MetricValueFont>, ModifiedContent<ModifiedContent<Text, MetricDescriptionCoreFont>, ExtendedLineSpacingSupport>)>(v193, v629, &_s7SwiftUI19_ConditionalContentVyACyACyACyACy07WorkoutB016EnergyMetricViewVAFGACyAD09HeartRategH0VAD0ij9AggregategH0VGGACyACyAkD04ZonegH0VGACyAD06TimeInlgH0VAOGGGACyACyACyArD04PacegH0VGACyA2WGGACyAyCyAD08DistancegH0VAD04LapsgH0VGGGGACyACyACyACyACyACyAD07CadencegH0VAA05EmptyH0VGA8_GA8_GACyAD015ElevationChangegH0VAD07CurrenttgH0VGGACyACyAD05PowergH0VA21_GACyA21_AD014FlightsClimbedgH0VGGGACyACyACyAD015SegmentDurationgH0VAD0p6DetailgH0VGACyAwFGGACyACyAFA21_GACyA21_AA08ModifiedD0VyA37_yAD0emH0VAD0G6DetailVGAA24_ForegroundStyleModifierVyAA5ColorVGGGGGGGMd);
      swift_storeEnumTagMultiPayload();
      __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI19_ConditionalContentVyACyACyACy07WorkoutB024DistanceDetailMetricViewVAD04PacehI0VGACyAD012StrideLengthhI0VAKGGACyACyAD019VerticalOscillationhI0VAOGACyAD017GroundContactTimehI0VARGGGACyACyAD015ElevationChangehI0VAD016DownhillRunCounthI0VGACyAA05EmptyI0VAA6HStackVyAA05TupleI0VyAA08ModifiedD0VyAA4TextVAD0H9ValueFontVG_A6_yA6_yA8_AD0H19DescriptionCoreFontVGAD26ExtendedLineSpacingSupport33_241C09B5AC269BC1C919798A0AC522FDLLVGtGGGGGMd);
      lazy protocol witness table accessor for type _ConditionalContent<_ConditionalContent<_ConditionalContent<_ConditionalContent<_ConditionalContent<EnergyMetricView, EnergyMetricView>, _ConditionalContent<HeartRateMetricView, HeartRateAggregateMetricView>>, _ConditionalContent<_ConditionalContent<HeartRateAggregateMetricView, ZoneMetricView>, _ConditionalContent<TimeInZoneMetricView, ZoneMetricView>>>, _ConditionalContent<_ConditionalContent<_ConditionalContent<TimeInZoneMetricView, PaceMetricView>, _ConditionalContent<PaceMetricView, PaceMetricView>>, _ConditionalContent<_ConditionalContent<PaceMetricView, PaceMetricView>, _ConditionalContent<DistanceMetricView, LapsMetricView>>>>, _ConditionalContent<_ConditionalContent<_ConditionalContent<_ConditionalContent<_ConditionalContent<_ConditionalContent<CadenceMetricView, EmptyView>, CadenceMetricView>, CadenceMetricView>, _ConditionalContent<ElevationChangeMetricView, CurrentElevationMetricView>>, _ConditionalContent<_ConditionalContent<PowerMetricView, PowerMet();
      lazy protocol witness table accessor for type _ConditionalContent<_ConditionalContent<_ConditionalContent<_ConditionalContent<DistanceDetailMetricView, PaceMetricView>, _ConditionalContent<StrideLengthMetricView, StrideLengthMetricView>>, _ConditionalContent<_ConditionalContent<VerticalOscillationMetricView, VerticalOscillationMetricView>, _ConditionalContent<GroundContactTimeMetricView, GroundContactTimeMetricView>>>, _ConditionalContent<_ConditionalContent<ElevationChangeMetricView, DownhillRunCountMetricView>, _ConditionalContent<EmptyView, HStack<TupleView<(ModifiedContent<Text, MetricValueFont>, ModifiedContent<ModifiedContent<Text, MetricDescriptionCoreFont>, ExtendedLineSpacingSupport>)>>>>> and conformance <> _ConditionalContent<A, B>();
      _ConditionalContent<>.init(storage:)();

      goto LABEL_72;
    case 21:
      v230 = v67;
      v406 = MetricsPublisher.segmentIndex.getter();
      MetricsPublisher.segmentDuration.getter();
      v408 = v407;
      MetricsPublisher.workoutStatePublisher.getter();
      v409 = WorkoutStatePublisher.workoutPaused.getter();

      v410 = swift_getKeyPath();
      *&v689[0] = v406;
      *(&v689[0] + 1) = v408;
      *&v689[1] = v409 & 1;
      *(&v689[1] + 1) = v410;
      memset(&v689[2], 0, 17);
      outlined copy of Environment<WorkoutViewStyle>.Content(v410, 0);
      lazy protocol witness table accessor for type SegmentDurationMetricView and conformance SegmentDurationMetricView();
      lazy protocol witness table accessor for type DistanceDetailMetricView and conformance DistanceDetailMetricView();
      _ConditionalContent<>.init(storage:)();
      LOBYTE(v681) = v634[0];
      LOBYTE(v640) = 0;
      v650[0] = v631;
      v650[1] = v632;
      v651 = v633;
      LOBYTE(v652[0]) = v634[0];
      BYTE9(v652[1]) = 0;
      __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI19_ConditionalContentVy07WorkoutB025SegmentDurationMetricViewVAD014DistanceDetailhI0VGMd);
      __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI19_ConditionalContentVy07WorkoutB014PaceMetricViewVAD06EnergygH0VGMd);
      lazy protocol witness table accessor for type _ConditionalContent<SegmentDurationMetricView, DistanceDetailMetricView> and conformance <> _ConditionalContent<A, B>();
      lazy protocol witness table accessor for type _ConditionalContent<PaceMetricView, EnergyMetricView> and conformance <> _ConditionalContent<A, B>();
      _ConditionalContent<>.init(storage:)();
      v411 = v689[3];
      v412 = v609;
      v609[2] = v689[2];
      v412[3] = v411;
      *(v412 + 58) = *(&v689[3] + 10);
      v413 = v689[1];
      *v412 = v689[0];
      v412[1] = v413;
      swift_storeEnumTagMultiPayload();
      __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI19_ConditionalContentVyACy07WorkoutB025SegmentDurationMetricViewVAD014DistanceDetailhI0VGACyAD04PacehI0VAD06EnergyhI0VGGMd);
      lazy protocol witness table accessor for type _ConditionalContent<_ConditionalContent<SegmentDurationMetricView, DistanceDetailMetricView>, _ConditionalContent<PaceMetricView, EnergyMetricView>> and conformance <> _ConditionalContent<A, B>();
      lazy protocol witness table accessor for type _ConditionalContent<_ConditionalContent<EnergyMetricView, PowerMetricView>, _ConditionalContent<PowerMetricView, ModifiedContent<ModifiedContent<WorkoutTimeView, MetricDetail>, _ForegroundStyleModifier<Color>>>> and conformance <> _ConditionalContent<A, B>();
      v414 = v611;
      _ConditionalContent<>.init(storage:)();
      outlined init with copy of TupleView<(ModifiedContent<Text, MetricValueFont>, ModifiedContent<ModifiedContent<Text, MetricDescriptionCoreFont>, ExtendedLineSpacingSupport>)>(v414, v617, &_s7SwiftUI19_ConditionalContentVyACyACy07WorkoutB025SegmentDurationMetricViewVAD014DistanceDetailhI0VGACyAD04PacehI0VAD06EnergyhI0VGGACyACyAmD05PowerhI0VGACyAqA08ModifiedD0VyATyAD0e4TimeI0VAD0hK0VGAA24_ForegroundStyleModifierVyAA5ColorVGGGGGMd);
      swift_storeEnumTagMultiPayload();
      __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI19_ConditionalContentVyACyACyACyACy07WorkoutB017CadenceMetricViewVAA05EmptyH0VGAFGAFGACyAD015ElevationChangegH0VAD07CurrentjgH0VGGACyACyAD05PowergH0VASGACyAsD014FlightsClimbedgH0VGGGMd);
      lazy protocol witness table accessor for type _ConditionalContent<_ConditionalContent<_ConditionalContent<_ConditionalContent<_ConditionalContent<CadenceMetricView, EmptyView>, CadenceMetricView>, CadenceMetricView>, _ConditionalContent<ElevationChangeMetricView, CurrentElevationMetricView>>, _ConditionalContent<_ConditionalContent<PowerMetricView, PowerMetricView>, _ConditionalContent<PowerMetricView, FlightsClimbedMetricView>>> and conformance <> _ConditionalContent<A, B>();
      lazy protocol witness table accessor for type _ConditionalContent<_ConditionalContent<_ConditionalContent<SegmentDurationMetricView, DistanceDetailMetricView>, _ConditionalContent<PaceMetricView, EnergyMetricView>>, _ConditionalContent<_ConditionalContent<EnergyMetricView, PowerMetricView>, _ConditionalContent<PowerMetricView, ModifiedContent<ModifiedContent<WorkoutTimeView, MetricDetail>, _ForegroundStyleModifier<Color>>>>> and conformance <> _ConditionalContent<A, B>();
      v415 = v619;
      _ConditionalContent<>.init(storage:)();
      outlined destroy of TupleView<(ModifiedContent<Text, MetricValueFont>, ModifiedContent<ModifiedContent<Text, MetricDescriptionCoreFont>, ExtendedLineSpacingSupport>)>(v414, &_s7SwiftUI19_ConditionalContentVyACyACy07WorkoutB025SegmentDurationMetricViewVAD014DistanceDetailhI0VGACyAD04PacehI0VAD06EnergyhI0VGGACyACyAmD05PowerhI0VGACyAqA08ModifiedD0VyATyAD0e4TimeI0VAD0hK0VGAA24_ForegroundStyleModifierVyAA5ColorVGGGGGMd);
      outlined init with copy of TupleView<(ModifiedContent<Text, MetricValueFont>, ModifiedContent<ModifiedContent<Text, MetricDescriptionCoreFont>, ExtendedLineSpacingSupport>)>(v415, v623, &_s7SwiftUI19_ConditionalContentVyACyACyACyACyACy07WorkoutB017CadenceMetricViewVAA05EmptyH0VGAFGAFGACyAD015ElevationChangegH0VAD07CurrentjgH0VGGACyACyAD05PowergH0VASGACyAsD014FlightsClimbedgH0VGGGACyACyACyAD015SegmentDurationgH0VAD014DistanceDetailgH0VGACyAD04PacegH0VAD06EnergygH0VGGACyACyA6_ASGACyAsA08ModifiedD0VyA11_yAD0e4TimeH0VAD0gS0VGAA24_ForegroundStyleModifierVyAA5ColorVGGGGGGMd);
      swift_storeEnumTagMultiPayload();
      lazy protocol witness table accessor for type _ConditionalContent<_ConditionalContent<_ConditionalContent<_ConditionalContent<EnergyMetricView, EnergyMetricView>, _ConditionalContent<HeartRateMetricView, HeartRateAggregateMetricView>>, _ConditionalContent<_ConditionalContent<HeartRateAggregateMetricView, ZoneMetricView>, _ConditionalContent<TimeInZoneMetricView, ZoneMetricView>>>, _ConditionalContent<_ConditionalContent<_ConditionalContent<TimeInZoneMetricView, PaceMetricView>, _ConditionalContent<PaceMetricView, PaceMetricView>>, _ConditionalContent<_ConditionalContent<PaceMetricView, PaceMetricView>, _ConditionalContent<DistanceMetricView, LapsMetricView>>>> and conformance <> _ConditionalContent<A, B>();
      lazy protocol witness table accessor for type _ConditionalContent<_ConditionalContent<_ConditionalContent<_ConditionalContent<_ConditionalContent<_ConditionalContent<CadenceMetricView, EmptyView>, CadenceMetricView>, CadenceMetricView>, _ConditionalContent<ElevationChangeMetricView, CurrentElevationMetricView>>, _ConditionalContent<_ConditionalContent<PowerMetricView, PowerMetricView>, _ConditionalContent<PowerMetricView, FlightsClimbedMetricView>>>, _ConditionalContent<_ConditionalContent<_ConditionalContent<SegmentDurationMetricView, DistanceDetailMetricView>, _ConditionalContent<PaceMetricView, EnergyMetricView>>, _ConditionalContent<_ConditionalContent<EnergyMetricView, PowerMetricView>, _ConditionalContent<PowerMetricView, ModifiedContent<ModifiedContent<WorkoutTimeView, MetricDetail>, _ForegroundStyleModifier<Color>>>>>> and conformance <> _ConditionalContent<A, B>();
      _ConditionalContent<>.init(storage:)();
      outlined destroy of TupleView<(ModifiedContent<Text, MetricValueFont>, ModifiedContent<ModifiedContent<Text, MetricDescriptionCoreFont>, ExtendedLineSpacingSupport>)>(v415, &_s7SwiftUI19_ConditionalContentVyACyACyACyACyACy07WorkoutB017CadenceMetricViewVAA05EmptyH0VGAFGAFGACyAD015ElevationChangegH0VAD07CurrentjgH0VGGACyACyAD05PowergH0VASGACyAsD014FlightsClimbedgH0VGGGACyACyACyAD015SegmentDurationgH0VAD014DistanceDetailgH0VGACyAD04PacegH0VAD06EnergygH0VGGACyACyA6_ASGACyAsA08ModifiedD0VyA11_yAD0e4TimeH0VAD0gS0VGAA24_ForegroundStyleModifierVyAA5ColorVGGGGGGMd);
      outlined init with copy of TupleView<(ModifiedContent<Text, MetricValueFont>, ModifiedContent<ModifiedContent<Text, MetricDescriptionCoreFont>, ExtendedLineSpacingSupport>)>(v230, v629, &_s7SwiftUI19_ConditionalContentVyACyACyACyACy07WorkoutB016EnergyMetricViewVAFGACyAD09HeartRategH0VAD0ij9AggregategH0VGGACyACyAkD04ZonegH0VGACyAD06TimeInlgH0VAOGGGACyACyACyArD04PacegH0VGACyA2WGGACyAyCyAD08DistancegH0VAD04LapsgH0VGGGGACyACyACyACyACyACyAD07CadencegH0VAA05EmptyH0VGA8_GA8_GACyAD015ElevationChangegH0VAD07CurrenttgH0VGGACyACyAD05PowergH0VA21_GACyA21_AD014FlightsClimbedgH0VGGGACyACyACyAD015SegmentDurationgH0VAD0p6DetailgH0VGACyAwFGGACyACyAFA21_GACyA21_AA08ModifiedD0VyA37_yAD0emH0VAD0G6DetailVGAA24_ForegroundStyleModifierVyAA5ColorVGGGGGGGMd);
      swift_storeEnumTagMultiPayload();
      __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI19_ConditionalContentVyACyACyACy07WorkoutB024DistanceDetailMetricViewVAD04PacehI0VGACyAD012StrideLengthhI0VAKGGACyACyAD019VerticalOscillationhI0VAOGACyAD017GroundContactTimehI0VARGGGACyACyAD015ElevationChangehI0VAD016DownhillRunCounthI0VGACyAA05EmptyI0VAA6HStackVyAA05TupleI0VyAA08ModifiedD0VyAA4TextVAD0H9ValueFontVG_A6_yA6_yA8_AD0H19DescriptionCoreFontVGAD26ExtendedLineSpacingSupport33_241C09B5AC269BC1C919798A0AC522FDLLVGtGGGGGMd);
      lazy protocol witness table accessor for type _ConditionalContent<_ConditionalContent<_ConditionalContent<_ConditionalContent<_ConditionalContent<EnergyMetricView, EnergyMetricView>, _ConditionalContent<HeartRateMetricView, HeartRateAggregateMetricView>>, _ConditionalContent<_ConditionalContent<HeartRateAggregateMetricView, ZoneMetricView>, _ConditionalContent<TimeInZoneMetricView, ZoneMetricView>>>, _ConditionalContent<_ConditionalContent<_ConditionalContent<TimeInZoneMetricView, PaceMetricView>, _ConditionalContent<PaceMetricView, PaceMetricView>>, _ConditionalContent<_ConditionalContent<PaceMetricView, PaceMetricView>, _ConditionalContent<DistanceMetricView, LapsMetricView>>>>, _ConditionalContent<_ConditionalContent<_ConditionalContent<_ConditionalContent<_ConditionalContent<_ConditionalContent<CadenceMetricView, EmptyView>, CadenceMetricView>, CadenceMetricView>, _ConditionalContent<ElevationChangeMetricView, CurrentElevationMetricView>>, _ConditionalContent<_ConditionalContent<PowerMetricView, PowerMet();
      lazy protocol witness table accessor for type _ConditionalContent<_ConditionalContent<_ConditionalContent<_ConditionalContent<DistanceDetailMetricView, PaceMetricView>, _ConditionalContent<StrideLengthMetricView, StrideLengthMetricView>>, _ConditionalContent<_ConditionalContent<VerticalOscillationMetricView, VerticalOscillationMetricView>, _ConditionalContent<GroundContactTimeMetricView, GroundContactTimeMetricView>>>, _ConditionalContent<_ConditionalContent<ElevationChangeMetricView, DownhillRunCountMetricView>, _ConditionalContent<EmptyView, HStack<TupleView<(ModifiedContent<Text, MetricValueFont>, ModifiedContent<ModifiedContent<Text, MetricDescriptionCoreFont>, ExtendedLineSpacingSupport>)>>>>> and conformance <> _ConditionalContent<A, B>();
      _ConditionalContent<>.init(storage:)();
      outlined consume of Environment<WorkoutViewStyle>.Content(v410, 0);
      goto LABEL_67;
    case 22:
      v230 = v67;
      MetricsPublisher.segmentDistance.getter();
      v384 = v383;
      v385 = FIUIDistanceTypeForActivityType();
      MetricsPublisher.trackRunningMetricsPublisher.getter();
      v386 = TrackRunningMetricsPublisher.trackRunningCoordinator.getter();

      v387 = dispatch thunk of TrackRunningCoordinator.preferredDistanceUnit.getter();
      v389 = v388;

      v390 = v389 & 1;
      *&v689[0] = v384;
      v391 = v625;
      *(&v689[0] + 1) = v625;
      *&v689[1] = v385;
      *(&v689[1] + 1) = v387;
      *&v689[2] = v390;
      *(&v689[2] + 1) = 22;
      LOBYTE(v689[3]) = 1;
      lazy protocol witness table accessor for type SegmentDurationMetricView and conformance SegmentDurationMetricView();
      lazy protocol witness table accessor for type DistanceDetailMetricView and conformance DistanceDetailMetricView();
      v233 = v391;
      _ConditionalContent<>.init(storage:)();
      LOBYTE(v681) = v634[0];
      LOBYTE(v640) = 0;
      v650[0] = v631;
      v650[1] = v632;
      v651 = v633;
      LOBYTE(v652[0]) = v634[0];
      BYTE9(v652[1]) = 0;
      __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI19_ConditionalContentVy07WorkoutB025SegmentDurationMetricViewVAD014DistanceDetailhI0VGMd);
      __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI19_ConditionalContentVy07WorkoutB014PaceMetricViewVAD06EnergygH0VGMd);
      lazy protocol witness table accessor for type _ConditionalContent<SegmentDurationMetricView, DistanceDetailMetricView> and conformance <> _ConditionalContent<A, B>();
      lazy protocol witness table accessor for type _ConditionalContent<PaceMetricView, EnergyMetricView> and conformance <> _ConditionalContent<A, B>();
      _ConditionalContent<>.init(storage:)();
      v392 = v689[3];
      v393 = v609;
      v609[2] = v689[2];
      v393[3] = v392;
      *(v393 + 58) = *(&v689[3] + 10);
      v394 = v689[1];
      *v393 = v689[0];
      v393[1] = v394;
      swift_storeEnumTagMultiPayload();
      __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI19_ConditionalContentVyACy07WorkoutB025SegmentDurationMetricViewVAD014DistanceDetailhI0VGACyAD04PacehI0VAD06EnergyhI0VGGMd);
      lazy protocol witness table accessor for type _ConditionalContent<_ConditionalContent<SegmentDurationMetricView, DistanceDetailMetricView>, _ConditionalContent<PaceMetricView, EnergyMetricView>> and conformance <> _ConditionalContent<A, B>();
      lazy protocol witness table accessor for type _ConditionalContent<_ConditionalContent<EnergyMetricView, PowerMetricView>, _ConditionalContent<PowerMetricView, ModifiedContent<ModifiedContent<WorkoutTimeView, MetricDetail>, _ForegroundStyleModifier<Color>>>> and conformance <> _ConditionalContent<A, B>();
      v395 = v611;
      _ConditionalContent<>.init(storage:)();
      outlined init with copy of TupleView<(ModifiedContent<Text, MetricValueFont>, ModifiedContent<ModifiedContent<Text, MetricDescriptionCoreFont>, ExtendedLineSpacingSupport>)>(v395, v617, &_s7SwiftUI19_ConditionalContentVyACyACy07WorkoutB025SegmentDurationMetricViewVAD014DistanceDetailhI0VGACyAD04PacehI0VAD06EnergyhI0VGGACyACyAmD05PowerhI0VGACyAqA08ModifiedD0VyATyAD0e4TimeI0VAD0hK0VGAA24_ForegroundStyleModifierVyAA5ColorVGGGGGMd);
      swift_storeEnumTagMultiPayload();
      __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI19_ConditionalContentVyACyACyACyACy07WorkoutB017CadenceMetricViewVAA05EmptyH0VGAFGAFGACyAD015ElevationChangegH0VAD07CurrentjgH0VGGACyACyAD05PowergH0VASGACyAsD014FlightsClimbedgH0VGGGMd);
      lazy protocol witness table accessor for type _ConditionalContent<_ConditionalContent<_ConditionalContent<_ConditionalContent<_ConditionalContent<CadenceMetricView, EmptyView>, CadenceMetricView>, CadenceMetricView>, _ConditionalContent<ElevationChangeMetricView, CurrentElevationMetricView>>, _ConditionalContent<_ConditionalContent<PowerMetricView, PowerMetricView>, _ConditionalContent<PowerMetricView, FlightsClimbedMetricView>>> and conformance <> _ConditionalContent<A, B>();
      lazy protocol witness table accessor for type _ConditionalContent<_ConditionalContent<_ConditionalContent<SegmentDurationMetricView, DistanceDetailMetricView>, _ConditionalContent<PaceMetricView, EnergyMetricView>>, _ConditionalContent<_ConditionalContent<EnergyMetricView, PowerMetricView>, _ConditionalContent<PowerMetricView, ModifiedContent<ModifiedContent<WorkoutTimeView, MetricDetail>, _ForegroundStyleModifier<Color>>>>> and conformance <> _ConditionalContent<A, B>();
      v237 = v619;
      _ConditionalContent<>.init(storage:)();
      outlined destroy of TupleView<(ModifiedContent<Text, MetricValueFont>, ModifiedContent<ModifiedContent<Text, MetricDescriptionCoreFont>, ExtendedLineSpacingSupport>)>(v395, &_s7SwiftUI19_ConditionalContentVyACyACy07WorkoutB025SegmentDurationMetricViewVAD014DistanceDetailhI0VGACyAD04PacehI0VAD06EnergyhI0VGGACyACyAmD05PowerhI0VGACyAqA08ModifiedD0VyATyAD0e4TimeI0VAD0hK0VGAA24_ForegroundStyleModifierVyAA5ColorVGGGGGMd);
LABEL_59:
      outlined init with copy of TupleView<(ModifiedContent<Text, MetricValueFont>, ModifiedContent<ModifiedContent<Text, MetricDescriptionCoreFont>, ExtendedLineSpacingSupport>)>(v237, v623, &_s7SwiftUI19_ConditionalContentVyACyACyACyACyACy07WorkoutB017CadenceMetricViewVAA05EmptyH0VGAFGAFGACyAD015ElevationChangegH0VAD07CurrentjgH0VGGACyACyAD05PowergH0VASGACyAsD014FlightsClimbedgH0VGGGACyACyACyAD015SegmentDurationgH0VAD014DistanceDetailgH0VGACyAD04PacegH0VAD06EnergygH0VGGACyACyA6_ASGACyAsA08ModifiedD0VyA11_yAD0e4TimeH0VAD0gS0VGAA24_ForegroundStyleModifierVyAA5ColorVGGGGGGMd);
      swift_storeEnumTagMultiPayload();
      lazy protocol witness table accessor for type _ConditionalContent<_ConditionalContent<_ConditionalContent<_ConditionalContent<EnergyMetricView, EnergyMetricView>, _ConditionalContent<HeartRateMetricView, HeartRateAggregateMetricView>>, _ConditionalContent<_ConditionalContent<HeartRateAggregateMetricView, ZoneMetricView>, _ConditionalContent<TimeInZoneMetricView, ZoneMetricView>>>, _ConditionalContent<_ConditionalContent<_ConditionalContent<TimeInZoneMetricView, PaceMetricView>, _ConditionalContent<PaceMetricView, PaceMetricView>>, _ConditionalContent<_ConditionalContent<PaceMetricView, PaceMetricView>, _ConditionalContent<DistanceMetricView, LapsMetricView>>>> and conformance <> _ConditionalContent<A, B>();
      lazy protocol witness table accessor for type _ConditionalContent<_ConditionalContent<_ConditionalContent<_ConditionalContent<_ConditionalContent<_ConditionalContent<CadenceMetricView, EmptyView>, CadenceMetricView>, CadenceMetricView>, _ConditionalContent<ElevationChangeMetricView, CurrentElevationMetricView>>, _ConditionalContent<_ConditionalContent<PowerMetricView, PowerMetricView>, _ConditionalContent<PowerMetricView, FlightsClimbedMetricView>>>, _ConditionalContent<_ConditionalContent<_ConditionalContent<SegmentDurationMetricView, DistanceDetailMetricView>, _ConditionalContent<PaceMetricView, EnergyMetricView>>, _ConditionalContent<_ConditionalContent<EnergyMetricView, PowerMetricView>, _ConditionalContent<PowerMetricView, ModifiedContent<ModifiedContent<WorkoutTimeView, MetricDetail>, _ForegroundStyleModifier<Color>>>>>> and conformance <> _ConditionalContent<A, B>();
      _ConditionalContent<>.init(storage:)();
      outlined destroy of TupleView<(ModifiedContent<Text, MetricValueFont>, ModifiedContent<ModifiedContent<Text, MetricDescriptionCoreFont>, ExtendedLineSpacingSupport>)>(v237, &_s7SwiftUI19_ConditionalContentVyACyACyACyACyACy07WorkoutB017CadenceMetricViewVAA05EmptyH0VGAFGAFGACyAD015ElevationChangegH0VAD07CurrentjgH0VGGACyACyAD05PowergH0VASGACyAsD014FlightsClimbedgH0VGGGACyACyACyAD015SegmentDurationgH0VAD014DistanceDetailgH0VGACyAD04PacegH0VAD06EnergygH0VGGACyACyA6_ASGACyAsA08ModifiedD0VyA11_yAD0e4TimeH0VAD0gS0VGAA24_ForegroundStyleModifierVyAA5ColorVGGGGGGMd);
      outlined init with copy of TupleView<(ModifiedContent<Text, MetricValueFont>, ModifiedContent<ModifiedContent<Text, MetricDescriptionCoreFont>, ExtendedLineSpacingSupport>)>(v230, v629, &_s7SwiftUI19_ConditionalContentVyACyACyACyACy07WorkoutB016EnergyMetricViewVAFGACyAD09HeartRategH0VAD0ij9AggregategH0VGGACyACyAkD04ZonegH0VGACyAD06TimeInlgH0VAOGGGACyACyACyArD04PacegH0VGACyA2WGGACyAyCyAD08DistancegH0VAD04LapsgH0VGGGGACyACyACyACyACyACyAD07CadencegH0VAA05EmptyH0VGA8_GA8_GACyAD015ElevationChangegH0VAD07CurrenttgH0VGGACyACyAD05PowergH0VA21_GACyA21_AD014FlightsClimbedgH0VGGGACyACyACyAD015SegmentDurationgH0VAD0p6DetailgH0VGACyAwFGGACyACyAFA21_GACyA21_AA08ModifiedD0VyA37_yAD0emH0VAD0G6DetailVGAA24_ForegroundStyleModifierVyAA5ColorVGGGGGGGMd);
      swift_storeEnumTagMultiPayload();
      __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI19_ConditionalContentVyACyACyACy07WorkoutB024DistanceDetailMetricViewVAD04PacehI0VGACyAD012StrideLengthhI0VAKGGACyACyAD019VerticalOscillationhI0VAOGACyAD017GroundContactTimehI0VARGGGACyACyAD015ElevationChangehI0VAD016DownhillRunCounthI0VGACyAA05EmptyI0VAA6HStackVyAA05TupleI0VyAA08ModifiedD0VyAA4TextVAD0H9ValueFontVG_A6_yA6_yA8_AD0H19DescriptionCoreFontVGAD26ExtendedLineSpacingSupport33_241C09B5AC269BC1C919798A0AC522FDLLVGtGGGGGMd);
      lazy protocol witness table accessor for type _ConditionalContent<_ConditionalContent<_ConditionalContent<_ConditionalContent<_ConditionalContent<EnergyMetricView, EnergyMetricView>, _ConditionalContent<HeartRateMetricView, HeartRateAggregateMetricView>>, _ConditionalContent<_ConditionalContent<HeartRateAggregateMetricView, ZoneMetricView>, _ConditionalContent<TimeInZoneMetricView, ZoneMetricView>>>, _ConditionalContent<_ConditionalContent<_ConditionalContent<TimeInZoneMetricView, PaceMetricView>, _ConditionalContent<PaceMetricView, PaceMetricView>>, _ConditionalContent<_ConditionalContent<PaceMetricView, PaceMetricView>, _ConditionalContent<DistanceMetricView, LapsMetricView>>>>, _ConditionalContent<_ConditionalContent<_ConditionalContent<_ConditionalContent<_ConditionalContent<_ConditionalContent<CadenceMetricView, EmptyView>, CadenceMetricView>, CadenceMetricView>, _ConditionalContent<ElevationChangeMetricView, CurrentElevationMetricView>>, _ConditionalContent<_ConditionalContent<PowerMetricView, PowerMet();
      lazy protocol witness table accessor for type _ConditionalContent<_ConditionalContent<_ConditionalContent<_ConditionalContent<DistanceDetailMetricView, PaceMetricView>, _ConditionalContent<StrideLengthMetricView, StrideLengthMetricView>>, _ConditionalContent<_ConditionalContent<VerticalOscillationMetricView, VerticalOscillationMetricView>, _ConditionalContent<GroundContactTimeMetricView, GroundContactTimeMetricView>>>, _ConditionalContent<_ConditionalContent<ElevationChangeMetricView, DownhillRunCountMetricView>, _ConditionalContent<EmptyView, HStack<TupleView<(ModifiedContent<Text, MetricValueFont>, ModifiedContent<ModifiedContent<Text, MetricDescriptionCoreFont>, ExtendedLineSpacingSupport>)>>>>> and conformance <> _ConditionalContent<A, B>();
      _ConditionalContent<>.init(storage:)();

LABEL_67:
      v374 = v230;
      v405 = &_s7SwiftUI19_ConditionalContentVyACyACyACyACy07WorkoutB016EnergyMetricViewVAFGACyAD09HeartRategH0VAD0ij9AggregategH0VGGACyACyAkD04ZonegH0VGACyAD06TimeInlgH0VAOGGGACyACyACyArD04PacegH0VGACyA2WGGACyAyCyAD08DistancegH0VAD04LapsgH0VGGGGACyACyACyACyACyACyAD07CadencegH0VAA05EmptyH0VGA8_GA8_GACyAD015ElevationChangegH0VAD07CurrenttgH0VGGACyACyAD05PowergH0VA21_GACyA21_AD014FlightsClimbedgH0VGGGACyACyACyAD015SegmentDurationgH0VAD0p6DetailgH0VGACyAwFGGACyACyAFA21_GACyA21_AA08ModifiedD0VyA37_yAD0emH0VAD0G6DetailVGAA24_ForegroundStyleModifierVyAA5ColorVGGGGGGGMd;
      goto LABEL_117;
    case 23:
      v74 = v67;
      MetricsPublisher.segmentPace.getter();
      v105 = v104;
      MetricsPublisher.workoutStatePublisher.getter();
      v106 = WorkoutStatePublisher.gpsUnavailable.getter();

      v107 = swift_getKeyPath();
      *&v681 = v625;
      *(&v681 + 1) = 23;
      v108 = v620;
      *&v682 = v620;
      *(&v682 + 1) = v107;
      LOBYTE(v683) = 0;
      *(&v683 + 1) = v105;
      LOBYTE(v684[0]) = v106 & 1;
      *&v684[1] = 0;
      *(&v684[0] + 1) = 0;
      v689[2] = v683;
      v689[3] = *&v684[0];
      *&v689[4] = 0;
      v689[1] = v682;
      v689[0] = v681;
      LOBYTE(v670) = 0;
      BYTE8(v689[4]) = 0;
      v109 = v625;
      v110 = v108;
      outlined init with copy of PaceMetricView(&v681, v650);
      lazy protocol witness table accessor for type PaceMetricView and conformance PaceMetricView();
      lazy protocol witness table accessor for type EnergyMetricView and conformance EnergyMetricView();
      _ConditionalContent<>.init(storage:)();
      v651 = v633;
      v652[0] = v634[0];
      *(v652 + 9) = *(v634 + 9);
      v650[0] = v631;
      v650[1] = v632;
      LOBYTE(v640) = 1;
      BYTE9(v652[1]) = 1;
      __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI19_ConditionalContentVy07WorkoutB025SegmentDurationMetricViewVAD014DistanceDetailhI0VGMd);
      __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI19_ConditionalContentVy07WorkoutB014PaceMetricViewVAD06EnergygH0VGMd);
      lazy protocol witness table accessor for type _ConditionalContent<SegmentDurationMetricView, DistanceDetailMetricView> and conformance <> _ConditionalContent<A, B>();
      lazy protocol witness table accessor for type _ConditionalContent<PaceMetricView, EnergyMetricView> and conformance <> _ConditionalContent<A, B>();
      _ConditionalContent<>.init(storage:)();
      v111 = v689[3];
      v112 = v609;
      v609[2] = v689[2];
      v112[3] = v111;
      *(v112 + 58) = *(&v689[3] + 10);
      v113 = v689[1];
      *v112 = v689[0];
      v112[1] = v113;
      swift_storeEnumTagMultiPayload();
      __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI19_ConditionalContentVyACy07WorkoutB025SegmentDurationMetricViewVAD014DistanceDetailhI0VGACyAD04PacehI0VAD06EnergyhI0VGGMd);
      lazy protocol witness table accessor for type _ConditionalContent<_ConditionalContent<SegmentDurationMetricView, DistanceDetailMetricView>, _ConditionalContent<PaceMetricView, EnergyMetricView>> and conformance <> _ConditionalContent<A, B>();
      lazy protocol witness table accessor for type _ConditionalContent<_ConditionalContent<EnergyMetricView, PowerMetricView>, _ConditionalContent<PowerMetricView, ModifiedContent<ModifiedContent<WorkoutTimeView, MetricDetail>, _ForegroundStyleModifier<Color>>>> and conformance <> _ConditionalContent<A, B>();
      v114 = v611;
      _ConditionalContent<>.init(storage:)();
      outlined init with copy of TupleView<(ModifiedContent<Text, MetricValueFont>, ModifiedContent<ModifiedContent<Text, MetricDescriptionCoreFont>, ExtendedLineSpacingSupport>)>(v114, v617, &_s7SwiftUI19_ConditionalContentVyACyACy07WorkoutB025SegmentDurationMetricViewVAD014DistanceDetailhI0VGACyAD04PacehI0VAD06EnergyhI0VGGACyACyAmD05PowerhI0VGACyAqA08ModifiedD0VyATyAD0e4TimeI0VAD0hK0VGAA24_ForegroundStyleModifierVyAA5ColorVGGGGGMd);
      swift_storeEnumTagMultiPayload();
      __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI19_ConditionalContentVyACyACyACyACy07WorkoutB017CadenceMetricViewVAA05EmptyH0VGAFGAFGACyAD015ElevationChangegH0VAD07CurrentjgH0VGGACyACyAD05PowergH0VASGACyAsD014FlightsClimbedgH0VGGGMd);
      lazy protocol witness table accessor for type _ConditionalContent<_ConditionalContent<_ConditionalContent<_ConditionalContent<_ConditionalContent<CadenceMetricView, EmptyView>, CadenceMetricView>, CadenceMetricView>, _ConditionalContent<ElevationChangeMetricView, CurrentElevationMetricView>>, _ConditionalContent<_ConditionalContent<PowerMetricView, PowerMetricView>, _ConditionalContent<PowerMetricView, FlightsClimbedMetricView>>> and conformance <> _ConditionalContent<A, B>();
      lazy protocol witness table accessor for type _ConditionalContent<_ConditionalContent<_ConditionalContent<SegmentDurationMetricView, DistanceDetailMetricView>, _ConditionalContent<PaceMetricView, EnergyMetricView>>, _ConditionalContent<_ConditionalContent<EnergyMetricView, PowerMetricView>, _ConditionalContent<PowerMetricView, ModifiedContent<ModifiedContent<WorkoutTimeView, MetricDetail>, _ForegroundStyleModifier<Color>>>>> and conformance <> _ConditionalContent<A, B>();
      v115 = v619;
      _ConditionalContent<>.init(storage:)();
      outlined destroy of TupleView<(ModifiedContent<Text, MetricValueFont>, ModifiedContent<ModifiedContent<Text, MetricDescriptionCoreFont>, ExtendedLineSpacingSupport>)>(v114, &_s7SwiftUI19_ConditionalContentVyACyACy07WorkoutB025SegmentDurationMetricViewVAD014DistanceDetailhI0VGACyAD04PacehI0VAD06EnergyhI0VGGACyACyAmD05PowerhI0VGACyAqA08ModifiedD0VyATyAD0e4TimeI0VAD0hK0VGAA24_ForegroundStyleModifierVyAA5ColorVGGGGGMd);
      v116 = &_s7SwiftUI19_ConditionalContentVyACyACyACyACyACy07WorkoutB017CadenceMetricViewVAA05EmptyH0VGAFGAFGACyAD015ElevationChangegH0VAD07CurrentjgH0VGGACyACyAD05PowergH0VASGACyAsD014FlightsClimbedgH0VGGGACyACyACyAD015SegmentDurationgH0VAD014DistanceDetailgH0VGACyAD04PacegH0VAD06EnergygH0VGGACyACyA6_ASGACyAsA08ModifiedD0VyA11_yAD0e4TimeH0VAD0gS0VGAA24_ForegroundStyleModifierVyAA5ColorVGGGGGGMd;
      outlined init with copy of TupleView<(ModifiedContent<Text, MetricValueFont>, ModifiedContent<ModifiedContent<Text, MetricDescriptionCoreFont>, ExtendedLineSpacingSupport>)>(v115, v623, &_s7SwiftUI19_ConditionalContentVyACyACyACyACyACy07WorkoutB017CadenceMetricViewVAA05EmptyH0VGAFGAFGACyAD015ElevationChangegH0VAD07CurrentjgH0VGGACyACyAD05PowergH0VASGACyAsD014FlightsClimbedgH0VGGGACyACyACyAD015SegmentDurationgH0VAD014DistanceDetailgH0VGACyAD04PacegH0VAD06EnergygH0VGGACyACyA6_ASGACyAsA08ModifiedD0VyA11_yAD0e4TimeH0VAD0gS0VGAA24_ForegroundStyleModifierVyAA5ColorVGGGGGGMd);
      goto LABEL_63;
    case 24:
      v193 = v67;
      MetricsPublisher.segmentActiveEnergy.getter();
      v195 = v194;
      KeyPath = swift_getKeyPath();
      LOBYTE(v640) = 0;
      LOBYTE(v670) = 1;
      *&v689[0] = v195;
      *(v689 + 8) = xmmword_20CB67B90;
      *(&v689[1] + 1) = v625;
      *&v689[2] = KeyPath;
      BYTE8(v689[2]) = 0;
      BYTE8(v689[4]) = 1;
      v626 = v625;
      outlined copy of Environment<WorkoutViewStyle>.Content(KeyPath, 0);
      lazy protocol witness table accessor for type PaceMetricView and conformance PaceMetricView();
      lazy protocol witness table accessor for type EnergyMetricView and conformance EnergyMetricView();
      _ConditionalContent<>.init(storage:)();
      v651 = v633;
      v652[0] = v634[0];
      *(v652 + 9) = *(v634 + 9);
      v650[0] = v631;
      v650[1] = v632;
      LOBYTE(v681) = 1;
      BYTE9(v652[1]) = 1;
      __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI19_ConditionalContentVy07WorkoutB025SegmentDurationMetricViewVAD014DistanceDetailhI0VGMd);
      __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI19_ConditionalContentVy07WorkoutB014PaceMetricViewVAD06EnergygH0VGMd);
      lazy protocol witness table accessor for type _ConditionalContent<SegmentDurationMetricView, DistanceDetailMetricView> and conformance <> _ConditionalContent<A, B>();
      lazy protocol witness table accessor for type _ConditionalContent<PaceMetricView, EnergyMetricView> and conformance <> _ConditionalContent<A, B>();
      _ConditionalContent<>.init(storage:)();
      v197 = v689[3];
      v198 = v609;
      v609[2] = v689[2];
      v198[3] = v197;
      *(v198 + 58) = *(&v689[3] + 10);
      v199 = v689[1];
      *v198 = v689[0];
      v198[1] = v199;
      swift_storeEnumTagMultiPayload();
      __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI19_ConditionalContentVyACy07WorkoutB025SegmentDurationMetricViewVAD014DistanceDetailhI0VGACyAD04PacehI0VAD06EnergyhI0VGGMd);
      lazy protocol witness table accessor for type _ConditionalContent<_ConditionalContent<SegmentDurationMetricView, DistanceDetailMetricView>, _ConditionalContent<PaceMetricView, EnergyMetricView>> and conformance <> _ConditionalContent<A, B>();
      lazy protocol witness table accessor for type _ConditionalContent<_ConditionalContent<EnergyMetricView, PowerMetricView>, _ConditionalContent<PowerMetricView, ModifiedContent<ModifiedContent<WorkoutTimeView, MetricDetail>, _ForegroundStyleModifier<Color>>>> and conformance <> _ConditionalContent<A, B>();
      v200 = v611;
      _ConditionalContent<>.init(storage:)();
      goto LABEL_70;
    case 25:
      v193 = v67;
      MetricsPublisher.segmentTotalEnergy.getter();
      v420 = v419;
      KeyPath = swift_getKeyPath();
      LOBYTE(v631) = 0;
      LOBYTE(v681) = 0;
      *&v650[0] = v420;
      *(v650 + 8) = vdupq_n_s64(3uLL);
      *(&v650[1] + 1) = v625;
      *&v651 = KeyPath;
      BYTE8(v651) = 0;
      BYTE9(v652[2]) = 0;
      v626 = v625;
      outlined copy of Environment<WorkoutViewStyle>.Content(KeyPath, 0);
      lazy protocol witness table accessor for type EnergyMetricView and conformance EnergyMetricView();
      lazy protocol witness table accessor for type PowerMetricView and conformance PowerMetricView();
      _ConditionalContent<>.init(storage:)();
      v421 = v689[3];
      v422 = v600;
      v600[2] = v689[2];
      v422[3] = v421;
      v422[4] = v689[4];
      *(v422 + 74) = *(&v689[4] + 10);
      v423 = v689[1];
      *v422 = v689[0];
      v422[1] = v423;
      swift_storeEnumTagMultiPayload();
      __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI19_ConditionalContentVy07WorkoutB016EnergyMetricViewVAD05PowergH0VGMd);
      lazy protocol witness table accessor for type _ConditionalContent<EnergyMetricView, PowerMetricView> and conformance <> _ConditionalContent<A, B>();
      lazy protocol witness table accessor for type _ConditionalContent<PowerMetricView, ModifiedContent<ModifiedContent<WorkoutTimeView, MetricDetail>, _ForegroundStyleModifier<Color>>> and conformance <> _ConditionalContent<A, B>();
      v424 = v602;
      _ConditionalContent<>.init(storage:)();
      outlined init with copy of TupleView<(ModifiedContent<Text, MetricValueFont>, ModifiedContent<ModifiedContent<Text, MetricDescriptionCoreFont>, ExtendedLineSpacingSupport>)>(v424, v609, &_s7SwiftUI19_ConditionalContentVyACy07WorkoutB016EnergyMetricViewVAD05PowergH0VGACyAhA08ModifiedD0VyAKyAD0e4TimeH0VAD0G6DetailVGAA24_ForegroundStyleModifierVyAA5ColorVGGGGMd);
      swift_storeEnumTagMultiPayload();
      __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI19_ConditionalContentVyACy07WorkoutB025SegmentDurationMetricViewVAD014DistanceDetailhI0VGACyAD04PacehI0VAD06EnergyhI0VGGMd);
      lazy protocol witness table accessor for type _ConditionalContent<_ConditionalContent<SegmentDurationMetricView, DistanceDetailMetricView>, _ConditionalContent<PaceMetricView, EnergyMetricView>> and conformance <> _ConditionalContent<A, B>();
      lazy protocol witness table accessor for type _ConditionalContent<_ConditionalContent<EnergyMetricView, PowerMetricView>, _ConditionalContent<PowerMetricView, ModifiedContent<ModifiedContent<WorkoutTimeView, MetricDetail>, _ForegroundStyleModifier<Color>>>> and conformance <> _ConditionalContent<A, B>();
      v200 = v611;
      _ConditionalContent<>.init(storage:)();
      outlined destroy of TupleView<(ModifiedContent<Text, MetricValueFont>, ModifiedContent<ModifiedContent<Text, MetricDescriptionCoreFont>, ExtendedLineSpacingSupport>)>(v424, &_s7SwiftUI19_ConditionalContentVyACy07WorkoutB016EnergyMetricViewVAD05PowergH0VGACyAhA08ModifiedD0VyAKyAD0e4TimeH0VAD0G6DetailVGAA24_ForegroundStyleModifierVyAA5ColorVGGGGMd);
LABEL_70:
      outlined init with copy of TupleView<(ModifiedContent<Text, MetricValueFont>, ModifiedContent<ModifiedContent<Text, MetricDescriptionCoreFont>, ExtendedLineSpacingSupport>)>(v200, v617, &_s7SwiftUI19_ConditionalContentVyACyACy07WorkoutB025SegmentDurationMetricViewVAD014DistanceDetailhI0VGACyAD04PacehI0VAD06EnergyhI0VGGACyACyAmD05PowerhI0VGACyAqA08ModifiedD0VyATyAD0e4TimeI0VAD0hK0VGAA24_ForegroundStyleModifierVyAA5ColorVGGGGGMd);
      swift_storeEnumTagMultiPayload();
      __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI19_ConditionalContentVyACyACyACyACy07WorkoutB017CadenceMetricViewVAA05EmptyH0VGAFGAFGACyAD015ElevationChangegH0VAD07CurrentjgH0VGGACyACyAD05PowergH0VASGACyAsD014FlightsClimbedgH0VGGGMd);
      lazy protocol witness table accessor for type _ConditionalContent<_ConditionalContent<_ConditionalContent<_ConditionalContent<_ConditionalContent<CadenceMetricView, EmptyView>, CadenceMetricView>, CadenceMetricView>, _ConditionalContent<ElevationChangeMetricView, CurrentElevationMetricView>>, _ConditionalContent<_ConditionalContent<PowerMetricView, PowerMetricView>, _ConditionalContent<PowerMetricView, FlightsClimbedMetricView>>> and conformance <> _ConditionalContent<A, B>();
      lazy protocol witness table accessor for type _ConditionalContent<_ConditionalContent<_ConditionalContent<SegmentDurationMetricView, DistanceDetailMetricView>, _ConditionalContent<PaceMetricView, EnergyMetricView>>, _ConditionalContent<_ConditionalContent<EnergyMetricView, PowerMetricView>, _ConditionalContent<PowerMetricView, ModifiedContent<ModifiedContent<WorkoutTimeView, MetricDetail>, _ForegroundStyleModifier<Color>>>>> and conformance <> _ConditionalContent<A, B>();
      v228 = v619;
      _ConditionalContent<>.init(storage:)();
      outlined destroy of TupleView<(ModifiedContent<Text, MetricValueFont>, ModifiedContent<ModifiedContent<Text, MetricDescriptionCoreFont>, ExtendedLineSpacingSupport>)>(v200, &_s7SwiftUI19_ConditionalContentVyACyACy07WorkoutB025SegmentDurationMetricViewVAD014DistanceDetailhI0VGACyAD04PacehI0VAD06EnergyhI0VGGACyACyAmD05PowerhI0VGACyAqA08ModifiedD0VyATyAD0e4TimeI0VAD0hK0VGAA24_ForegroundStyleModifierVyAA5ColorVGGGGGMd);
      v229 = &_s7SwiftUI19_ConditionalContentVyACyACyACyACyACy07WorkoutB017CadenceMetricViewVAA05EmptyH0VGAFGAFGACyAD015ElevationChangegH0VAD07CurrentjgH0VGGACyACyAD05PowergH0VASGACyAsD014FlightsClimbedgH0VGGGACyACyACyAD015SegmentDurationgH0VAD014DistanceDetailgH0VGACyAD04PacegH0VAD06EnergygH0VGGACyACyA6_ASGACyAsA08ModifiedD0VyA11_yAD0e4TimeH0VAD0gS0VGAA24_ForegroundStyleModifierVyAA5ColorVGGGGGGMd;
      outlined init with copy of TupleView<(ModifiedContent<Text, MetricValueFont>, ModifiedContent<ModifiedContent<Text, MetricDescriptionCoreFont>, ExtendedLineSpacingSupport>)>(v228, v623, &_s7SwiftUI19_ConditionalContentVyACyACyACyACyACy07WorkoutB017CadenceMetricViewVAA05EmptyH0VGAFGAFGACyAD015ElevationChangegH0VAD07CurrentjgH0VGGACyACyAD05PowergH0VASGACyAsD014FlightsClimbedgH0VGGGACyACyACyAD015SegmentDurationgH0VAD014DistanceDetailgH0VGACyAD04PacegH0VAD06EnergygH0VGGACyACyA6_ASGACyAsA08ModifiedD0VyA11_yAD0e4TimeH0VAD0gS0VGAA24_ForegroundStyleModifierVyAA5ColorVGGGGGGMd);
LABEL_71:
      swift_storeEnumTagMultiPayload();
      lazy protocol witness table accessor for type _ConditionalContent<_ConditionalContent<_ConditionalContent<_ConditionalContent<EnergyMetricView, EnergyMetricView>, _ConditionalContent<HeartRateMetricView, HeartRateAggregateMetricView>>, _ConditionalContent<_ConditionalContent<HeartRateAggregateMetricView, ZoneMetricView>, _ConditionalContent<TimeInZoneMetricView, ZoneMetricView>>>, _ConditionalContent<_ConditionalContent<_ConditionalContent<TimeInZoneMetricView, PaceMetricView>, _ConditionalContent<PaceMetricView, PaceMetricView>>, _ConditionalContent<_ConditionalContent<PaceMetricView, PaceMetricView>, _ConditionalContent<DistanceMetricView, LapsMetricView>>>> and conformance <> _ConditionalContent<A, B>();
      lazy protocol witness table accessor for type _ConditionalContent<_ConditionalContent<_ConditionalContent<_ConditionalContent<_ConditionalContent<_ConditionalContent<CadenceMetricView, EmptyView>, CadenceMetricView>, CadenceMetricView>, _ConditionalContent<ElevationChangeMetricView, CurrentElevationMetricView>>, _ConditionalContent<_ConditionalContent<PowerMetricView, PowerMetricView>, _ConditionalContent<PowerMetricView, FlightsClimbedMetricView>>>, _ConditionalContent<_ConditionalContent<_ConditionalContent<SegmentDurationMetricView, DistanceDetailMetricView>, _ConditionalContent<PaceMetricView, EnergyMetricView>>, _ConditionalContent<_ConditionalContent<EnergyMetricView, PowerMetricView>, _ConditionalContent<PowerMetricView, ModifiedContent<ModifiedContent<WorkoutTimeView, MetricDetail>, _ForegroundStyleModifier<Color>>>>>> and conformance <> _ConditionalContent<A, B>();
      _ConditionalContent<>.init(storage:)();
      outlined destroy of TupleView<(ModifiedContent<Text, MetricValueFont>, ModifiedContent<ModifiedContent<Text, MetricDescriptionCoreFont>, ExtendedLineSpacingSupport>)>(v228, v229);
      outlined init with copy of TupleView<(ModifiedContent<Text, MetricValueFont>, ModifiedContent<ModifiedContent<Text, MetricDescriptionCoreFont>, ExtendedLineSpacingSupport>)>(v193, v629, &_s7SwiftUI19_ConditionalContentVyACyACyACyACy07WorkoutB016EnergyMetricViewVAFGACyAD09HeartRategH0VAD0ij9AggregategH0VGGACyACyAkD04ZonegH0VGACyAD06TimeInlgH0VAOGGGACyACyACyArD04PacegH0VGACyA2WGGACyAyCyAD08DistancegH0VAD04LapsgH0VGGGGACyACyACyACyACyACyAD07CadencegH0VAA05EmptyH0VGA8_GA8_GACyAD015ElevationChangegH0VAD07CurrenttgH0VGGACyACyAD05PowergH0VA21_GACyA21_AD014FlightsClimbedgH0VGGGACyACyACyAD015SegmentDurationgH0VAD0p6DetailgH0VGACyAwFGGACyACyAFA21_GACyA21_AA08ModifiedD0VyA37_yAD0emH0VAD0G6DetailVGAA24_ForegroundStyleModifierVyAA5ColorVGGGGGGGMd);
      swift_storeEnumTagMultiPayload();
      __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI19_ConditionalContentVyACyACyACy07WorkoutB024DistanceDetailMetricViewVAD04PacehI0VGACyAD012StrideLengthhI0VAKGGACyACyAD019VerticalOscillationhI0VAOGACyAD017GroundContactTimehI0VARGGGACyACyAD015ElevationChangehI0VAD016DownhillRunCounthI0VGACyAA05EmptyI0VAA6HStackVyAA05TupleI0VyAA08ModifiedD0VyAA4TextVAD0H9ValueFontVG_A6_yA6_yA8_AD0H19DescriptionCoreFontVGAD26ExtendedLineSpacingSupport33_241C09B5AC269BC1C919798A0AC522FDLLVGtGGGGGMd);
      lazy protocol witness table accessor for type _ConditionalContent<_ConditionalContent<_ConditionalContent<_ConditionalContent<_ConditionalContent<EnergyMetricView, EnergyMetricView>, _ConditionalContent<HeartRateMetricView, HeartRateAggregateMetricView>>, _ConditionalContent<_ConditionalContent<HeartRateAggregateMetricView, ZoneMetricView>, _ConditionalContent<TimeInZoneMetricView, ZoneMetricView>>>, _ConditionalContent<_ConditionalContent<_ConditionalContent<TimeInZoneMetricView, PaceMetricView>, _ConditionalContent<PaceMetricView, PaceMetricView>>, _ConditionalContent<_ConditionalContent<PaceMetricView, PaceMetricView>, _ConditionalContent<DistanceMetricView, LapsMetricView>>>>, _ConditionalContent<_ConditionalContent<_ConditionalContent<_ConditionalContent<_ConditionalContent<_ConditionalContent<CadenceMetricView, EmptyView>, CadenceMetricView>, CadenceMetricView>, _ConditionalContent<ElevationChangeMetricView, CurrentElevationMetricView>>, _ConditionalContent<_ConditionalContent<PowerMetricView, PowerMet();
      lazy protocol witness table accessor for type _ConditionalContent<_ConditionalContent<_ConditionalContent<_ConditionalContent<DistanceDetailMetricView, PaceMetricView>, _ConditionalContent<StrideLengthMetricView, StrideLengthMetricView>>, _ConditionalContent<_ConditionalContent<VerticalOscillationMetricView, VerticalOscillationMetricView>, _ConditionalContent<GroundContactTimeMetricView, GroundContactTimeMetricView>>>, _ConditionalContent<_ConditionalContent<ElevationChangeMetricView, DownhillRunCountMetricView>, _ConditionalContent<EmptyView, HStack<TupleView<(ModifiedContent<Text, MetricValueFont>, ModifiedContent<ModifiedContent<Text, MetricDescriptionCoreFont>, ExtendedLineSpacingSupport>)>>>>> and conformance <> _ConditionalContent<A, B>();
      _ConditionalContent<>.init(storage:)();

LABEL_72:
      v425 = KeyPath;
      v426 = 0;
      goto LABEL_115;
    case 26:
      v117 = MetricsPublisher.currentStrideLength.getter();
      *&v689[0] = 26;
      *(&v689[0] + 1) = v117;
      *&v689[1] = v118 & 1;
      v119 = v625;
      *(&v689[1] + 1) = v625;
      LOBYTE(v689[2]) = 0;
      lazy protocol witness table accessor for type StrideLengthMetricView and conformance StrideLengthMetricView();
      v120 = v119;
      _ConditionalContent<>.init(storage:)();
      LOBYTE(v670) = v633;
      LOBYTE(v668) = 1;
      v689[0] = v631;
      v689[1] = v632;
      LOBYTE(v689[2]) = v633;
      BYTE9(v689[4]) = 1;
      goto LABEL_20;
    case 27:
      v180 = MetricsPublisher.averageStrideLength.getter();
      *&v689[0] = 27;
      *(&v689[0] + 1) = v180;
      *&v689[1] = v181 & 1;
      v182 = v625;
      *(&v689[1] + 1) = v625;
      LOBYTE(v689[2]) = 1;
      lazy protocol witness table accessor for type StrideLengthMetricView and conformance StrideLengthMetricView();
      v120 = v182;
      _ConditionalContent<>.init(storage:)();
      LOBYTE(v670) = v633;
      LOBYTE(v668) = 1;
      v689[0] = v631;
      v689[1] = v632;
      LOBYTE(v689[2]) = v633;
      BYTE9(v689[4]) = 1;
LABEL_20:
      __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI19_ConditionalContentVy07WorkoutB024DistanceDetailMetricViewVAD04PacehI0VGMd);
      __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI19_ConditionalContentVy07WorkoutB022StrideLengthMetricViewVAFGMd);
      lazy protocol witness table accessor for type _ConditionalContent<DistanceDetailMetricView, PaceMetricView> and conformance <> _ConditionalContent<A, B>();
      lazy protocol witness table accessor for type _ConditionalContent<StrideLengthMetricView, StrideLengthMetricView> and conformance <> _ConditionalContent<A, B>(&lazy protocol witness table cache variable for type _ConditionalContent<StrideLengthMetricView, StrideLengthMetricView> and conformance <> _ConditionalContent<A, B>, &_s7SwiftUI19_ConditionalContentVy07WorkoutB022StrideLengthMetricViewVAFGMd, &_s7SwiftUI19_ConditionalContentVy07WorkoutB022StrideLengthMetricViewVAFGMR, lazy protocol witness table accessor for type StrideLengthMetricView and conformance StrideLengthMetricView);
      _ConditionalContent<>.init(storage:)();
      v689[2] = v651;
      v689[3] = v652[0];
      *(&v689[3] + 10) = *(v652 + 10);
      v689[1] = v650[1];
      v689[0] = v650[0];
      LOBYTE(v640) = 0;
      BYTE10(v689[4]) = 0;
      __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI19_ConditionalContentVyACy07WorkoutB024DistanceDetailMetricViewVAD04PacehI0VGACyAD012StrideLengthhI0VAKGGMd);
      __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI19_ConditionalContentVyACy07WorkoutB029VerticalOscillationMetricViewVAFGACyAD017GroundContactTimehI0VAIGGMd);
      lazy protocol witness table accessor for type _ConditionalContent<_ConditionalContent<DistanceDetailMetricView, PaceMetricView>, _ConditionalContent<StrideLengthMetricView, StrideLengthMetricView>> and conformance <> _ConditionalContent<A, B>();
      lazy protocol witness table accessor for type _ConditionalContent<_ConditionalContent<VerticalOscillationMetricView, VerticalOscillationMetricView>, _ConditionalContent<GroundContactTimeMetricView, GroundContactTimeMetricView>> and conformance <> _ConditionalContent<A, B>();
      _ConditionalContent<>.init(storage:)();
      v689[2] = v683;
      v689[3] = v684[0];
      *(&v689[3] + 11) = *(v684 + 11);
      goto LABEL_81;
    case 28:
      v130 = MetricsPublisher.currentVerticalOscillation.getter();
      *&v689[0] = 28;
      *(&v689[0] + 1) = v130;
      *&v689[1] = v131 & 1;
      v132 = v625;
      *(&v689[1] + 1) = v625;
      LOBYTE(v689[2]) = 0;
      lazy protocol witness table accessor for type VerticalOscillationMetricView and conformance VerticalOscillationMetricView();
      v120 = v132;
      _ConditionalContent<>.init(storage:)();
      v689[0] = v631;
      v689[1] = v632;
      LOWORD(v689[2]) = v633;
      __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI19_ConditionalContentVy07WorkoutB029VerticalOscillationMetricViewVAFGMd);
      __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI19_ConditionalContentVy07WorkoutB027GroundContactTimeMetricViewVAFGMd);
      lazy protocol witness table accessor for type _ConditionalContent<StrideLengthMetricView, StrideLengthMetricView> and conformance <> _ConditionalContent<A, B>(&lazy protocol witness table cache variable for type _ConditionalContent<VerticalOscillationMetricView, VerticalOscillationMetricView> and conformance <> _ConditionalContent<A, B>, &_s7SwiftUI19_ConditionalContentVy07WorkoutB029VerticalOscillationMetricViewVAFGMd, &_s7SwiftUI19_ConditionalContentVy07WorkoutB029VerticalOscillationMetricViewVAFGMR, lazy protocol witness table accessor for type VerticalOscillationMetricView and conformance VerticalOscillationMetricView);
      lazy protocol witness table accessor for type _ConditionalContent<StrideLengthMetricView, StrideLengthMetricView> and conformance <> _ConditionalContent<A, B>(&lazy protocol witness table cache variable for type _ConditionalContent<GroundContactTimeMetricView, GroundContactTimeMetricView> and conformance <> _ConditionalContent<A, B>, &_s7SwiftUI19_ConditionalContentVy07WorkoutB027GroundContactTimeMetricViewVAFGMd, &_s7SwiftUI19_ConditionalContentVy07WorkoutB027GroundContactTimeMetricViewVAFGMR, lazy protocol witness table accessor for type GroundContactTimeMetricView and conformance GroundContactTimeMetricView);
      _ConditionalContent<>.init(storage:)();
      LOBYTE(v640) = BYTE1(v651);
      LOBYTE(v670) = 1;
      v689[0] = v650[0];
      v689[1] = v650[1];
      LOWORD(v689[2]) = v651;
      BYTE10(v689[4]) = 1;
      goto LABEL_80;
    case 29:
      v238 = MetricsPublisher.averageVerticalOscillation.getter();
      *&v689[0] = 29;
      *(&v689[0] + 1) = v238;
      *&v689[1] = v239 & 1;
      v240 = v625;
      *(&v689[1] + 1) = v625;
      LOBYTE(v689[2]) = 1;
      lazy protocol witness table accessor for type VerticalOscillationMetricView and conformance VerticalOscillationMetricView();
      v120 = v240;
      _ConditionalContent<>.init(storage:)();
      v689[0] = v631;
      v689[1] = v632;
      LOWORD(v689[2]) = v633;
      goto LABEL_79;
    case 30:
      v127 = MetricsPublisher.currentGroundContactTime.getter();
      *&v689[0] = 30;
      *(&v689[0] + 1) = v127;
      *&v689[1] = v128 & 1;
      v129 = v625;
      *(&v689[1] + 1) = v625;
      LOBYTE(v689[2]) = 0;
      lazy protocol witness table accessor for type GroundContactTimeMetricView and conformance GroundContactTimeMetricView();
      v120 = v129;
      _ConditionalContent<>.init(storage:)();
      v689[0] = v631;
      v689[1] = v632;
      LOBYTE(v689[2]) = v633;
      goto LABEL_78;
    case 31:
      v462 = MetricsPublisher.averageGroundContactTime.getter();
      *&v689[0] = 31;
      *(&v689[0] + 1) = v462;
      *&v689[1] = v463 & 1;
      v464 = v625;
      *(&v689[1] + 1) = v625;
      LOBYTE(v689[2]) = 1;
      lazy protocol witness table accessor for type GroundContactTimeMetricView and conformance GroundContactTimeMetricView();
      v120 = v464;
      _ConditionalContent<>.init(storage:)();
      v689[0] = v631;
      v689[1] = v632;
      LOBYTE(v689[2]) = v633;
LABEL_78:
      BYTE1(v689[2]) = 1;
LABEL_79:
      __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI19_ConditionalContentVy07WorkoutB029VerticalOscillationMetricViewVAFGMd);
      __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI19_ConditionalContentVy07WorkoutB027GroundContactTimeMetricViewVAFGMd);
      lazy protocol witness table accessor for type _ConditionalContent<StrideLengthMetricView, StrideLengthMetricView> and conformance <> _ConditionalContent<A, B>(&lazy protocol witness table cache variable for type _ConditionalContent<VerticalOscillationMetricView, VerticalOscillationMetricView> and conformance <> _ConditionalContent<A, B>, &_s7SwiftUI19_ConditionalContentVy07WorkoutB029VerticalOscillationMetricViewVAFGMd, &_s7SwiftUI19_ConditionalContentVy07WorkoutB029VerticalOscillationMetricViewVAFGMR, lazy protocol witness table accessor for type VerticalOscillationMetricView and conformance VerticalOscillationMetricView);
      lazy protocol witness table accessor for type _ConditionalContent<StrideLengthMetricView, StrideLengthMetricView> and conformance <> _ConditionalContent<A, B>(&lazy protocol witness table cache variable for type _ConditionalContent<GroundContactTimeMetricView, GroundContactTimeMetricView> and conformance <> _ConditionalContent<A, B>, &_s7SwiftUI19_ConditionalContentVy07WorkoutB027GroundContactTimeMetricViewVAFGMd, &_s7SwiftUI19_ConditionalContentVy07WorkoutB027GroundContactTimeMetricViewVAFGMR, lazy protocol witness table accessor for type GroundContactTimeMetricView and conformance GroundContactTimeMetricView);
      _ConditionalContent<>.init(storage:)();
      LOBYTE(v640) = BYTE1(v651);
      LOBYTE(v670) = 1;
      v689[0] = v650[0];
      v689[1] = v650[1];
      LOWORD(v689[2]) = v651;
      BYTE10(v689[4]) = 1;
LABEL_80:
      __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI19_ConditionalContentVyACy07WorkoutB024DistanceDetailMetricViewVAD04PacehI0VGACyAD012StrideLengthhI0VAKGGMd);
      __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI19_ConditionalContentVyACy07WorkoutB029VerticalOscillationMetricViewVAFGACyAD017GroundContactTimehI0VAIGGMd);
      lazy protocol witness table accessor for type _ConditionalContent<_ConditionalContent<DistanceDetailMetricView, PaceMetricView>, _ConditionalContent<StrideLengthMetricView, StrideLengthMetricView>> and conformance <> _ConditionalContent<A, B>();
      lazy protocol witness table accessor for type _ConditionalContent<_ConditionalContent<VerticalOscillationMetricView, VerticalOscillationMetricView>, _ConditionalContent<GroundContactTimeMetricView, GroundContactTimeMetricView>> and conformance <> _ConditionalContent<A, B>();
      _ConditionalContent<>.init(storage:)();
      v689[2] = v683;
      v689[3] = v684[0];
      *(&v689[3] + 11) = *(v684 + 11);
      goto LABEL_81;
    case 34:
      v556 = v67;
      v427 = v568;
      MetricsPublisher.splitStartDate.getter();
      MetricsPublisher.workoutStatePublisher.getter();
      v428 = swift_getKeyPath();
      v429 = v570;
      *v570 = v428;
      *(v429 + 8) = 0;
      *(v429 + 16) = swift_getKeyPath();
      *(v429 + 24) = 0;
      v430 = v566;
      v431 = *(v566 + 24);
      v432 = type metadata accessor for Date();
      (*(*(v432 - 8) + 56))(v429 + v431, 1, 1, v432);
      v433 = *(v430 + 28);
      outlined assign with copy of Date?(v427, v429 + v431);
      *(v429 + v433) = 0;
      v434 = (v429 + *(v430 + 32));
      type metadata accessor for WorkoutStatePublisher();
      lazy protocol witness table accessor for type HeartRateMetricView and conformance HeartRateMetricView(&lazy protocol witness table cache variable for type WorkoutStatePublisher and conformance WorkoutStatePublisher, MEMORY[0x277D7DA88]);
      v435 = ObservedObject.init(wrappedValue:)();
      v437 = v436;
      outlined destroy of TupleView<(ModifiedContent<Text, MetricValueFont>, ModifiedContent<ModifiedContent<Text, MetricDescriptionCoreFont>, ExtendedLineSpacingSupport>)>(v427, &_s10Foundation4DateVSgMd);
      *v434 = v435;
      v434[1] = v437;
      if (one-time initialization token for WorkoutUIBundle != -1)
      {
        swift_once();
      }

      swift_beginAccess();
      v438 = WorkoutUIBundle.super.isa;
      v691._object = 0xE000000000000000;
      v439.value._countAndFlagsBits = 0x617A696C61636F4CLL;
      v439.value._object = 0xEB00000000656C62;
      v440._object = 0x800000020CB96890;
      v440._countAndFlagsBits = 0xD00000000000001ALL;
      v441._countAndFlagsBits = 0;
      v441._object = 0xE000000000000000;
      v691._countAndFlagsBits = 0;
      NSLocalizedString(_:tableName:bundle:value:comment:)(v440, v439, v438, v441, v691);

      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys7CVarArg_pGMd);
      v442 = swift_allocObject();
      *(v442 + 16) = xmmword_20CB5DA70;
      v443 = MetricsPublisher.splitIndex.getter();
      v444 = MEMORY[0x277D83C10];
      *(v442 + 56) = MEMORY[0x277D83B88];
      *(v442 + 64) = v444;
      *(v442 + 32) = v443;
      v445 = static String.localizedStringWithFormat(_:_:)();
      v447 = v446;

      v448 = [objc_opt_self() secondaryLabelColor];
      v449 = Color.init(uiColor:)();
      v450 = v572;
      _s9WorkoutUI0A8TimeViewVWOcTm_0(v429, v572, type metadata accessor for WorkoutTimeView);
      v451 = (v450 + *(v569 + 36));
      *v451 = v445;
      v451[1] = v447;
      v451[2] = v449;
      v451[3] = 0x4008000000000000;
      _s9WorkoutUI0A8TimeViewVWOhTm_0(v429, type metadata accessor for WorkoutTimeView);
      v452 = [objc_opt_self() splitsColors];
      v453 = [v452 valueDisplayColor];

      if (v453)
      {
        v454 = Color.init(uiColor:)();
        v455 = v571;
        outlined init with take of ModifiedContent<WorkoutTimeView, MetricDetail>(v450, v571, &_s7SwiftUI15ModifiedContentVy07WorkoutB00E8TimeViewVAD12MetricDetailVGMd);
        *(v455 + *(v584 + 36)) = v454;
        v456 = v573;
        outlined init with take of ModifiedContent<WorkoutTimeView, MetricDetail>(v455, v573, &_s7SwiftUI15ModifiedContentVyACy07WorkoutB00E8TimeViewVAD12MetricDetailVGAA24_ForegroundStyleModifierVyAA5ColorVGGMd);
        outlined init with copy of TupleView<(ModifiedContent<Text, MetricValueFont>, ModifiedContent<ModifiedContent<Text, MetricDescriptionCoreFont>, ExtendedLineSpacingSupport>)>(v456, v583, &_s7SwiftUI15ModifiedContentVyACy07WorkoutB00E8TimeViewVAD12MetricDetailVGAA24_ForegroundStyleModifierVyAA5ColorVGGMd);
        swift_storeEnumTagMultiPayload();
        lazy protocol witness table accessor for type PowerMetricView and conformance PowerMetricView();
        lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<WorkoutTimeView, MetricDetail>, _ForegroundStyleModifier<Color>> and conformance <> ModifiedContent<A, B>();
        v457 = v585;
        _ConditionalContent<>.init(storage:)();
        outlined init with copy of TupleView<(ModifiedContent<Text, MetricValueFont>, ModifiedContent<ModifiedContent<Text, MetricDescriptionCoreFont>, ExtendedLineSpacingSupport>)>(v457, v600, &_s7SwiftUI19_ConditionalContentVy07WorkoutB015PowerMetricViewVAA08ModifiedD0VyAHyAD0e4TimeH0VAD0G6DetailVGAA24_ForegroundStyleModifierVyAA5ColorVGGGMd);
        swift_storeEnumTagMultiPayload();
        __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI19_ConditionalContentVy07WorkoutB016EnergyMetricViewVAD05PowergH0VGMd);
        lazy protocol witness table accessor for type _ConditionalContent<EnergyMetricView, PowerMetricView> and conformance <> _ConditionalContent<A, B>();
        lazy protocol witness table accessor for type _ConditionalContent<PowerMetricView, ModifiedContent<ModifiedContent<WorkoutTimeView, MetricDetail>, _ForegroundStyleModifier<Color>>> and conformance <> _ConditionalContent<A, B>();
        v458 = v602;
        _ConditionalContent<>.init(storage:)();
        outlined destroy of TupleView<(ModifiedContent<Text, MetricValueFont>, ModifiedContent<ModifiedContent<Text, MetricDescriptionCoreFont>, ExtendedLineSpacingSupport>)>(v457, &_s7SwiftUI19_ConditionalContentVy07WorkoutB015PowerMetricViewVAA08ModifiedD0VyAHyAD0e4TimeH0VAD0G6DetailVGAA24_ForegroundStyleModifierVyAA5ColorVGGGMd);
        outlined init with copy of TupleView<(ModifiedContent<Text, MetricValueFont>, ModifiedContent<ModifiedContent<Text, MetricDescriptionCoreFont>, ExtendedLineSpacingSupport>)>(v458, v609, &_s7SwiftUI19_ConditionalContentVyACy07WorkoutB016EnergyMetricViewVAD05PowergH0VGACyAhA08ModifiedD0VyAKyAD0e4TimeH0VAD0G6DetailVGAA24_ForegroundStyleModifierVyAA5ColorVGGGGMd);
        swift_storeEnumTagMultiPayload();
        __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI19_ConditionalContentVyACy07WorkoutB025SegmentDurationMetricViewVAD014DistanceDetailhI0VGACyAD04PacehI0VAD06EnergyhI0VGGMd);
        lazy protocol witness table accessor for type _ConditionalContent<_ConditionalContent<SegmentDurationMetricView, DistanceDetailMetricView>, _ConditionalContent<PaceMetricView, EnergyMetricView>> and conformance <> _ConditionalContent<A, B>();
        lazy protocol witness table accessor for type _ConditionalContent<_ConditionalContent<EnergyMetricView, PowerMetricView>, _ConditionalContent<PowerMetricView, ModifiedContent<ModifiedContent<WorkoutTimeView, MetricDetail>, _ForegroundStyleModifier<Color>>>> and conformance <> _ConditionalContent<A, B>();
        v459 = v611;
        _ConditionalContent<>.init(storage:)();
        outlined destroy of TupleView<(ModifiedContent<Text, MetricValueFont>, ModifiedContent<ModifiedContent<Text, MetricDescriptionCoreFont>, ExtendedLineSpacingSupport>)>(v458, &_s7SwiftUI19_ConditionalContentVyACy07WorkoutB016EnergyMetricViewVAD05PowergH0VGACyAhA08ModifiedD0VyAKyAD0e4TimeH0VAD0G6DetailVGAA24_ForegroundStyleModifierVyAA5ColorVGGGGMd);
        outlined init with copy of TupleView<(ModifiedContent<Text, MetricValueFont>, ModifiedContent<ModifiedContent<Text, MetricDescriptionCoreFont>, ExtendedLineSpacingSupport>)>(v459, v617, &_s7SwiftUI19_ConditionalContentVyACyACy07WorkoutB025SegmentDurationMetricViewVAD014DistanceDetailhI0VGACyAD04PacehI0VAD06EnergyhI0VGGACyACyAmD05PowerhI0VGACyAqA08ModifiedD0VyATyAD0e4TimeI0VAD0hK0VGAA24_ForegroundStyleModifierVyAA5ColorVGGGGGMd);
        swift_storeEnumTagMultiPayload();
        __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI19_ConditionalContentVyACyACyACyACy07WorkoutB017CadenceMetricViewVAA05EmptyH0VGAFGAFGACyAD015ElevationChangegH0VAD07CurrentjgH0VGGACyACyAD05PowergH0VASGACyAsD014FlightsClimbedgH0VGGGMd);
        lazy protocol witness table accessor for type _ConditionalContent<_ConditionalContent<_ConditionalContent<_ConditionalContent<_ConditionalContent<CadenceMetricView, EmptyView>, CadenceMetricView>, CadenceMetricView>, _ConditionalContent<ElevationChangeMetricView, CurrentElevationMetricView>>, _ConditionalContent<_ConditionalContent<PowerMetricView, PowerMetricView>, _ConditionalContent<PowerMetricView, FlightsClimbedMetricView>>> and conformance <> _ConditionalContent<A, B>();
        lazy protocol witness table accessor for type _ConditionalContent<_ConditionalContent<_ConditionalContent<SegmentDurationMetricView, DistanceDetailMetricView>, _ConditionalContent<PaceMetricView, EnergyMetricView>>, _ConditionalContent<_ConditionalContent<EnergyMetricView, PowerMetricView>, _ConditionalContent<PowerMetricView, ModifiedContent<ModifiedContent<WorkoutTimeView, MetricDetail>, _ForegroundStyleModifier<Color>>>>> and conformance <> _ConditionalContent<A, B>();
        v460 = v619;
        _ConditionalContent<>.init(storage:)();
        outlined destroy of TupleView<(ModifiedContent<Text, MetricValueFont>, ModifiedContent<ModifiedContent<Text, MetricDescriptionCoreFont>, ExtendedLineSpacingSupport>)>(v459, &_s7SwiftUI19_ConditionalContentVyACyACy07WorkoutB025SegmentDurationMetricViewVAD014DistanceDetailhI0VGACyAD04PacehI0VAD06EnergyhI0VGGACyACyAmD05PowerhI0VGACyAqA08ModifiedD0VyATyAD0e4TimeI0VAD0hK0VGAA24_ForegroundStyleModifierVyAA5ColorVGGGGGMd);
        outlined init with copy of TupleView<(ModifiedContent<Text, MetricValueFont>, ModifiedContent<ModifiedContent<Text, MetricDescriptionCoreFont>, ExtendedLineSpacingSupport>)>(v460, v623, &_s7SwiftUI19_ConditionalContentVyACyACyACyACyACy07WorkoutB017CadenceMetricViewVAA05EmptyH0VGAFGAFGACyAD015ElevationChangegH0VAD07CurrentjgH0VGGACyACyAD05PowergH0VASGACyAsD014FlightsClimbedgH0VGGGACyACyACyAD015SegmentDurationgH0VAD014DistanceDetailgH0VGACyAD04PacegH0VAD06EnergygH0VGGACyACyA6_ASGACyAsA08ModifiedD0VyA11_yAD0e4TimeH0VAD0gS0VGAA24_ForegroundStyleModifierVyAA5ColorVGGGGGGMd);
        swift_storeEnumTagMultiPayload();
        lazy protocol witness table accessor for type _ConditionalContent<_ConditionalContent<_ConditionalContent<_ConditionalContent<EnergyMetricView, EnergyMetricView>, _ConditionalContent<HeartRateMetricView, HeartRateAggregateMetricView>>, _ConditionalContent<_ConditionalContent<HeartRateAggregateMetricView, ZoneMetricView>, _ConditionalContent<TimeInZoneMetricView, ZoneMetricView>>>, _ConditionalContent<_ConditionalContent<_ConditionalContent<TimeInZoneMetricView, PaceMetricView>, _ConditionalContent<PaceMetricView, PaceMetricView>>, _ConditionalContent<_ConditionalContent<PaceMetricView, PaceMetricView>, _ConditionalContent<DistanceMetricView, LapsMetricView>>>> and conformance <> _ConditionalContent<A, B>();
        lazy protocol witness table accessor for type _ConditionalContent<_ConditionalContent<_ConditionalContent<_ConditionalContent<_ConditionalContent<_ConditionalContent<CadenceMetricView, EmptyView>, CadenceMetricView>, CadenceMetricView>, _ConditionalContent<ElevationChangeMetricView, CurrentElevationMetricView>>, _ConditionalContent<_ConditionalContent<PowerMetricView, PowerMetricView>, _ConditionalContent<PowerMetricView, FlightsClimbedMetricView>>>, _ConditionalContent<_ConditionalContent<_ConditionalContent<SegmentDurationMetricView, DistanceDetailMetricView>, _ConditionalContent<PaceMetricView, EnergyMetricView>>, _ConditionalContent<_ConditionalContent<EnergyMetricView, PowerMetricView>, _ConditionalContent<PowerMetricView, ModifiedContent<ModifiedContent<WorkoutTimeView, MetricDetail>, _ForegroundStyleModifier<Color>>>>>> and conformance <> _ConditionalContent<A, B>();
        v461 = v556;
        _ConditionalContent<>.init(storage:)();
        outlined destroy of TupleView<(ModifiedContent<Text, MetricValueFont>, ModifiedContent<ModifiedContent<Text, MetricDescriptionCoreFont>, ExtendedLineSpacingSupport>)>(v460, &_s7SwiftUI19_ConditionalContentVyACyACyACyACyACy07WorkoutB017CadenceMetricViewVAA05EmptyH0VGAFGAFGACyAD015ElevationChangegH0VAD07CurrentjgH0VGGACyACyAD05PowergH0VASGACyAsD014FlightsClimbedgH0VGGGACyACyACyAD015SegmentDurationgH0VAD014DistanceDetailgH0VGACyAD04PacegH0VAD06EnergygH0VGGACyACyA6_ASGACyAsA08ModifiedD0VyA11_yAD0e4TimeH0VAD0gS0VGAA24_ForegroundStyleModifierVyAA5ColorVGGGGGGMd);
        outlined init with copy of TupleView<(ModifiedContent<Text, MetricValueFont>, ModifiedContent<ModifiedContent<Text, MetricDescriptionCoreFont>, ExtendedLineSpacingSupport>)>(v461, v629, &_s7SwiftUI19_ConditionalContentVyACyACyACyACy07WorkoutB016EnergyMetricViewVAFGACyAD09HeartRategH0VAD0ij9AggregategH0VGGACyACyAkD04ZonegH0VGACyAD06TimeInlgH0VAOGGGACyACyACyArD04PacegH0VGACyA2WGGACyAyCyAD08DistancegH0VAD04LapsgH0VGGGGACyACyACyACyACyACyAD07CadencegH0VAA05EmptyH0VGA8_GA8_GACyAD015ElevationChangegH0VAD07CurrenttgH0VGGACyACyAD05PowergH0VA21_GACyA21_AD014FlightsClimbedgH0VGGGACyACyACyAD015SegmentDurationgH0VAD0p6DetailgH0VGACyAwFGGACyACyAFA21_GACyA21_AA08ModifiedD0VyA37_yAD0emH0VAD0G6DetailVGAA24_ForegroundStyleModifierVyAA5ColorVGGGGGGGMd);
        swift_storeEnumTagMultiPayload();
        __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI19_ConditionalContentVyACyACyACy07WorkoutB024DistanceDetailMetricViewVAD04PacehI0VGACyAD012StrideLengthhI0VAKGGACyACyAD019VerticalOscillationhI0VAOGACyAD017GroundContactTimehI0VARGGGACyACyAD015ElevationChangehI0VAD016DownhillRunCounthI0VGACyAA05EmptyI0VAA6HStackVyAA05TupleI0VyAA08ModifiedD0VyAA4TextVAD0H9ValueFontVG_A6_yA6_yA8_AD0H19DescriptionCoreFontVGAD26ExtendedLineSpacingSupport33_241C09B5AC269BC1C919798A0AC522FDLLVGtGGGGGMd);
        lazy protocol witness table accessor for type _ConditionalContent<_ConditionalContent<_ConditionalContent<_ConditionalContent<_ConditionalContent<EnergyMetricView, EnergyMetricView>, _ConditionalContent<HeartRateMetricView, HeartRateAggregateMetricView>>, _ConditionalContent<_ConditionalContent<HeartRateAggregateMetricView, ZoneMetricView>, _ConditionalContent<TimeInZoneMetricView, ZoneMetricView>>>, _ConditionalContent<_ConditionalContent<_ConditionalContent<TimeInZoneMetricView, PaceMetricView>, _ConditionalContent<PaceMetricView, PaceMetricView>>, _ConditionalContent<_ConditionalContent<PaceMetricView, PaceMetricView>, _ConditionalContent<DistanceMetricView, LapsMetricView>>>>, _ConditionalContent<_ConditionalContent<_ConditionalContent<_ConditionalContent<_ConditionalContent<_ConditionalContent<CadenceMetricView, EmptyView>, CadenceMetricView>, CadenceMetricView>, _ConditionalContent<ElevationChangeMetricView, CurrentElevationMetricView>>, _ConditionalContent<_ConditionalContent<PowerMetricView, PowerMet();
        lazy protocol witness table accessor for type _ConditionalContent<_ConditionalContent<_ConditionalContent<_ConditionalContent<DistanceDetailMetricView, PaceMetricView>, _ConditionalContent<StrideLengthMetricView, StrideLengthMetricView>>, _ConditionalContent<_ConditionalContent<VerticalOscillationMetricView, VerticalOscillationMetricView>, _ConditionalContent<GroundContactTimeMetricView, GroundContactTimeMetricView>>>, _ConditionalContent<_ConditionalContent<ElevationChangeMetricView, DownhillRunCountMetricView>, _ConditionalContent<EmptyView, HStack<TupleView<(ModifiedContent<Text, MetricValueFont>, ModifiedContent<ModifiedContent<Text, MetricDescriptionCoreFont>, ExtendedLineSpacingSupport>)>>>>> and conformance <> _ConditionalContent<A, B>();
        _ConditionalContent<>.init(storage:)();
        outlined destroy of TupleView<(ModifiedContent<Text, MetricValueFont>, ModifiedContent<ModifiedContent<Text, MetricDescriptionCoreFont>, ExtendedLineSpacingSupport>)>(v461, &_s7SwiftUI19_ConditionalContentVyACyACyACyACy07WorkoutB016EnergyMetricViewVAFGACyAD09HeartRategH0VAD0ij9AggregategH0VGGACyACyAkD04ZonegH0VGACyAD06TimeInlgH0VAOGGGACyACyACyArD04PacegH0VGACyA2WGGACyAyCyAD08DistancegH0VAD04LapsgH0VGGGGACyACyACyACyACyACyAD07CadencegH0VAA05EmptyH0VGA8_GA8_GACyAD015ElevationChangegH0VAD07CurrenttgH0VGGACyACyAD05PowergH0VA21_GACyA21_AD014FlightsClimbedgH0VGGGACyACyACyAD015SegmentDurationgH0VAD0p6DetailgH0VGACyAwFGGACyACyAFA21_GACyA21_AA08ModifiedD0VyA37_yAD0emH0VAD0G6DetailVGAA24_ForegroundStyleModifierVyAA5ColorVGGGGGGGMd);
        v374 = v456;
        v405 = &_s7SwiftUI15ModifiedContentVyACy07WorkoutB00E8TimeViewVAD12MetricDetailVGAA24_ForegroundStyleModifierVyAA5ColorVGGMd;
        goto LABEL_117;
      }

      __break(1u);
      return;
    case 35:
      MetricsPublisher.splitDistance.getter();
      v162 = v161;
      v163 = FIUIDistanceTypeForActivityType();
      LOBYTE(v668) = 1;
      LOBYTE(v666[0]) = 0;
      *&v689[0] = v162;
      v164 = v625;
      *(&v689[0] + 1) = v625;
      v689[1] = v163;
      LOBYTE(v689[2]) = 1;
      *(&v689[2] + 1) = 35;
      BYTE8(v689[4]) = 0;
      lazy protocol witness table accessor for type DistanceDetailMetricView and conformance DistanceDetailMetricView();
      lazy protocol witness table accessor for type PaceMetricView and conformance PaceMetricView();
      v120 = v164;
      _ConditionalContent<>.init(storage:)();
      v689[2] = v633;
      v689[3] = v634[0];
      *(&v689[3] + 9) = *(v634 + 9);
      v689[1] = v632;
      v689[0] = v631;
      LOBYTE(v670) = 0;
      BYTE9(v689[4]) = 0;
      __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI19_ConditionalContentVy07WorkoutB024DistanceDetailMetricViewVAD04PacehI0VGMd);
      __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI19_ConditionalContentVy07WorkoutB022StrideLengthMetricViewVAFGMd);
      lazy protocol witness table accessor for type _ConditionalContent<DistanceDetailMetricView, PaceMetricView> and conformance <> _ConditionalContent<A, B>();
      lazy protocol witness table accessor for type _ConditionalContent<StrideLengthMetricView, StrideLengthMetricView> and conformance <> _ConditionalContent<A, B>(&lazy protocol witness table cache variable for type _ConditionalContent<StrideLengthMetricView, StrideLengthMetricView> and conformance <> _ConditionalContent<A, B>, &_s7SwiftUI19_ConditionalContentVy07WorkoutB022StrideLengthMetricViewVAFGMd, &_s7SwiftUI19_ConditionalContentVy07WorkoutB022StrideLengthMetricViewVAFGMR, lazy protocol witness table accessor for type StrideLengthMetricView and conformance StrideLengthMetricView);
      _ConditionalContent<>.init(storage:)();
      v689[2] = v651;
      v689[3] = v652[0];
      *(&v689[3] + 10) = *(v652 + 10);
      v689[1] = v650[1];
      v689[0] = v650[0];
      LOBYTE(v640) = 0;
      BYTE10(v689[4]) = 0;
      __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI19_ConditionalContentVyACy07WorkoutB024DistanceDetailMetricViewVAD04PacehI0VGACyAD012StrideLengthhI0VAKGGMd);
      __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI19_ConditionalContentVyACy07WorkoutB029VerticalOscillationMetricViewVAFGACyAD017GroundContactTimehI0VAIGGMd);
      lazy protocol witness table accessor for type _ConditionalContent<_ConditionalContent<DistanceDetailMetricView, PaceMetricView>, _ConditionalContent<StrideLengthMetricView, StrideLengthMetricView>> and conformance <> _ConditionalContent<A, B>();
      lazy protocol witness table accessor for type _ConditionalContent<_ConditionalContent<VerticalOscillationMetricView, VerticalOscillationMetricView>, _ConditionalContent<GroundContactTimeMetricView, GroundContactTimeMetricView>> and conformance <> _ConditionalContent<A, B>();
      _ConditionalContent<>.init(storage:)();
      v689[2] = v683;
      v689[3] = v684[0];
      *(&v689[3] + 11) = *(v684 + 11);
LABEL_81:
      v689[1] = v682;
      v689[0] = v681;
      _s7SwiftUI19_ConditionalContentV7StorageOyACyACyACy07WorkoutB024DistanceDetailMetricViewVAF04PaceiJ0VGACyAF012StrideLengthiJ0VAMGGACyACyAF019VerticalOscillationiJ0VAQGACyAF017GroundContactTimeiJ0VATGGGACyACyAF015ElevationChangeiJ0VAF016DownhillRunCountiJ0VGACyAA05EmptyJ0VAA6HStackVyAA05TupleJ0VyAA08ModifiedD0VyAA4TextVAF0I9ValueFontVG_A8_yA8_yA10_AF0I19DescriptionCoreFontVGAF26ExtendedLineSpacingSupport33_241C09B5AC269BC1C919798A0AC522FDLLVGtGGGG_GWOi_(v689);
      goto LABEL_82;
    case 36:
      MetricsPublisher.splitPace.getter();
      v205 = v204;
      MetricsPublisher.workoutStatePublisher.getter();
      v206 = WorkoutStatePublisher.gpsUnavailable.getter();

      v207 = swift_getKeyPath();
      *&v640 = v625;
      *(&v640 + 1) = 36;
      v208 = v620;
      *&v641 = v620;
      *(&v641 + 1) = v207;
      LOBYTE(v642) = 0;
      *(&v642 + 1) = v205;
      LOBYTE(v643) = v206 & 1;
      *&v644 = 0;
      *(&v643 + 1) = 0;
      v689[2] = v642;
      v689[3] = v643;
      *&v689[4] = 0;
      v689[1] = v641;
      v689[0] = v640;
      LOBYTE(v666[0]) = 1;
      BYTE8(v689[4]) = 1;
      v209 = v625;
      v210 = v208;
      outlined init with copy of PaceMetricView(&v640, v650);
      lazy protocol witness table accessor for type DistanceDetailMetricView and conformance DistanceDetailMetricView();
      lazy protocol witness table accessor for type PaceMetricView and conformance PaceMetricView();
      _ConditionalContent<>.init(storage:)();
      v689[2] = v633;
      v689[3] = v634[0];
      *(&v689[3] + 9) = *(v634 + 9);
      v689[1] = v632;
      v689[0] = v631;
      LOBYTE(v668) = 0;
      BYTE9(v689[4]) = 0;
      __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI19_ConditionalContentVy07WorkoutB024DistanceDetailMetricViewVAD04PacehI0VGMd);
      __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI19_ConditionalContentVy07WorkoutB022StrideLengthMetricViewVAFGMd);
      lazy protocol witness table accessor for type _ConditionalContent<DistanceDetailMetricView, PaceMetricView> and conformance <> _ConditionalContent<A, B>();
      lazy protocol witness table accessor for type _ConditionalContent<StrideLengthMetricView, StrideLengthMetricView> and conformance <> _ConditionalContent<A, B>(&lazy protocol witness table cache variable for type _ConditionalContent<StrideLengthMetricView, StrideLengthMetricView> and conformance <> _ConditionalContent<A, B>, &_s7SwiftUI19_ConditionalContentVy07WorkoutB022StrideLengthMetricViewVAFGMd, &_s7SwiftUI19_ConditionalContentVy07WorkoutB022StrideLengthMetricViewVAFGMR, lazy protocol witness table accessor for type StrideLengthMetricView and conformance StrideLengthMetricView);
      _ConditionalContent<>.init(storage:)();
      v689[2] = v651;
      v689[3] = v652[0];
      *(&v689[3] + 10) = *(v652 + 10);
      v689[1] = v650[1];
      v689[0] = v650[0];
      LOBYTE(v670) = 0;
      BYTE10(v689[4]) = 0;
      __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI19_ConditionalContentVyACy07WorkoutB024DistanceDetailMetricViewVAD04PacehI0VGACyAD012StrideLengthhI0VAKGGMd);
      __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI19_ConditionalContentVyACy07WorkoutB029VerticalOscillationMetricViewVAFGACyAD017GroundContactTimehI0VAIGGMd);
      lazy protocol witness table accessor for type _ConditionalContent<_ConditionalContent<DistanceDetailMetricView, PaceMetricView>, _ConditionalContent<StrideLengthMetricView, StrideLengthMetricView>> and conformance <> _ConditionalContent<A, B>();
      lazy protocol witness table accessor for type _ConditionalContent<_ConditionalContent<VerticalOscillationMetricView, VerticalOscillationMetricView>, _ConditionalContent<GroundContactTimeMetricView, GroundContactTimeMetricView>> and conformance <> _ConditionalContent<A, B>();
      _ConditionalContent<>.init(storage:)();
      v689[2] = v683;
      v689[3] = v684[0];
      *(&v689[3] + 11) = *(v684 + 11);
      v689[1] = v682;
      v689[0] = v681;
      _s7SwiftUI19_ConditionalContentV7StorageOyACyACyACy07WorkoutB024DistanceDetailMetricViewVAF04PaceiJ0VGACyAF012StrideLengthiJ0VAMGGACyACyAF019VerticalOscillationiJ0VAQGACyAF017GroundContactTimeiJ0VATGGGACyACyAF015ElevationChangeiJ0VAF016DownhillRunCountiJ0VGACyAA05EmptyJ0VAA6HStackVyAA05TupleJ0VyAA08ModifiedD0VyAA4TextVAF0I9ValueFontVG_A8_yA8_yA10_AF0I19DescriptionCoreFontVGAF26ExtendedLineSpacingSupport33_241C09B5AC269BC1C919798A0AC522FDLLVGtGGGG_GWOi_(v689);
      v637 = v689[8];
      v638 = v690[0];
      v639 = v690[1];
      v634[1] = v689[4];
      v634[2] = v689[5];
      v635 = v689[6];
      v636 = v689[7];
      v631 = v689[0];
      v632 = v689[1];
      v633 = v689[2];
      v634[0] = v689[3];
      __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI19_ConditionalContentVyACyACy07WorkoutB024DistanceDetailMetricViewVAD04PacehI0VGACyAD012StrideLengthhI0VAKGGACyACyAD019VerticalOscillationhI0VAOGACyAD017GroundContactTimehI0VARGGGMd);
      __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI19_ConditionalContentVyACy07WorkoutB025ElevationChangeMetricViewVAD016DownhillRunCounthI0VGACyAA05EmptyI0VAA6HStackVyAA05TupleI0VyAA08ModifiedD0VyAA4TextVAD0H9ValueFontVG_AQyAQyAsD0h15DescriptionCoreS0VGAD26ExtendedLineSpacingSupport33_241C09B5AC269BC1C919798A0AC522FDLLVGtGGGGMd);
      lazy protocol witness table accessor for type _ConditionalContent<_ConditionalContent<_ConditionalContent<DistanceDetailMetricView, PaceMetricView>, _ConditionalContent<StrideLengthMetricView, StrideLengthMetricView>>, _ConditionalContent<_ConditionalContent<VerticalOscillationMetricView, VerticalOscillationMetricView>, _ConditionalContent<GroundContactTimeMetricView, GroundContactTimeMetricView>>> and conformance <> _ConditionalContent<A, B>();
      lazy protocol witness table accessor for type _ConditionalContent<_ConditionalContent<ElevationChangeMetricView, DownhillRunCountMetricView>, _ConditionalContent<EmptyView, HStack<TupleView<(ModifiedContent<Text, MetricValueFont>, ModifiedContent<ModifiedContent<Text, MetricDescriptionCoreFont>, ExtendedLineSpacingSupport>)>>>> and conformance <> _ConditionalContent<A, B>();
      _ConditionalContent<>.init(storage:)();
      v211 = v656;
      v212 = v629;
      *(v629 + 128) = v655;
      *(v212 + 144) = v211;
      *(v212 + 160) = v657;
      v213 = v652[2];
      *(v212 + 64) = v652[1];
      *(v212 + 80) = v213;
      v214 = v654;
      *(v212 + 96) = v653;
      *(v212 + 112) = v214;
      v215 = v650[1];
      *v212 = v650[0];
      *(v212 + 16) = v215;
      v216 = v652[0];
      *(v212 + 32) = v651;
      *(v212 + 48) = v216;
      swift_storeEnumTagMultiPayload();
      __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI19_ConditionalContentVyACyACyACy07WorkoutB024DistanceDetailMetricViewVAD04PacehI0VGACyAD012StrideLengthhI0VAKGGACyACyAD019VerticalOscillationhI0VAOGACyAD017GroundContactTimehI0VARGGGACyACyAD015ElevationChangehI0VAD016DownhillRunCounthI0VGACyAA05EmptyI0VAA6HStackVyAA05TupleI0VyAA08ModifiedD0VyAA4TextVAD0H9ValueFontVG_A6_yA6_yA8_AD0H19DescriptionCoreFontVGAD26ExtendedLineSpacingSupport33_241C09B5AC269BC1C919798A0AC522FDLLVGtGGGGGMd);
      lazy protocol witness table accessor for type _ConditionalContent<_ConditionalContent<_ConditionalContent<_ConditionalContent<_ConditionalContent<EnergyMetricView, EnergyMetricView>, _ConditionalContent<HeartRateMetricView, HeartRateAggregateMetricView>>, _ConditionalContent<_ConditionalContent<HeartRateAggregateMetricView, ZoneMetricView>, _ConditionalContent<TimeInZoneMetricView, ZoneMetricView>>>, _ConditionalContent<_ConditionalContent<_ConditionalContent<TimeInZoneMetricView, PaceMetricView>, _ConditionalContent<PaceMetricView, PaceMetricView>>, _ConditionalContent<_ConditionalContent<PaceMetricView, PaceMetricView>, _ConditionalContent<DistanceMetricView, LapsMetricView>>>>, _ConditionalContent<_ConditionalContent<_ConditionalContent<_ConditionalContent<_ConditionalContent<_ConditionalContent<CadenceMetricView, EmptyView>, CadenceMetricView>, CadenceMetricView>, _ConditionalContent<ElevationChangeMetricView, CurrentElevationMetricView>>, _ConditionalContent<_ConditionalContent<PowerMetricView, PowerMet();
      lazy protocol witness table accessor for type _ConditionalContent<_ConditionalContent<_ConditionalContent<_ConditionalContent<DistanceDetailMetricView, PaceMetricView>, _ConditionalContent<StrideLengthMetricView, StrideLengthMetricView>>, _ConditionalContent<_ConditionalContent<VerticalOscillationMetricView, VerticalOscillationMetricView>, _ConditionalContent<GroundContactTimeMetricView, GroundContactTimeMetricView>>>, _ConditionalContent<_ConditionalContent<ElevationChangeMetricView, DownhillRunCountMetricView>, _ConditionalContent<EmptyView, HStack<TupleView<(ModifiedContent<Text, MetricValueFont>, ModifiedContent<ModifiedContent<Text, MetricDescriptionCoreFont>, ExtendedLineSpacingSupport>)>>>>> and conformance <> _ConditionalContent<A, B>();
      _ConditionalContent<>.init(storage:)();
      outlined destroy of PaceMetricView(&v640);
      return;
    case 37:
      v556 = v67;
      MetricsPublisher.heartRateMetricsPublisher.getter();
      v302 = HeartRateMetricsPublisher.maximumHeartRate.getter();
      v304 = v303;

      MetricsPublisher.heartRateMetricsPublisher.getter();
      v305 = HeartRateMetricsPublisher.isStaleHeartRate.getter();

      v306 = v592;
      v307 = *(v592 + 28);
      v308 = swift_getKeyPath();
      v309 = v581;
      *&v581[v307] = v308;
      __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI11EnvironmentV7ContentOyAA16RedactionReasonsV_GMd);
      swift_storeEnumTagMultiPayload();
      v310 = v309 + *(v306 + 32);
      *v310 = swift_getKeyPath();
      *(v310 + 8) = 0;
      *v309 = 1;
      *(v309 + 8) = v302;
      *(v309 + 16) = v304 & 1;
      *(v309 + 17) = v305 & 1;
      v311 = type metadata accessor for HeartRateAggregateMetricView;
      _s9WorkoutUI0A8TimeViewVWOcTm_0(v309, v576, type metadata accessor for HeartRateAggregateMetricView);
      swift_storeEnumTagMultiPayload();
      lazy protocol witness table accessor for type HeartRateMetricView and conformance HeartRateMetricView(&lazy protocol witness table cache variable for type HeartRateAggregateMetricView and conformance HeartRateAggregateMetricView, type metadata accessor for HeartRateAggregateMetricView);
      lazy protocol witness table accessor for type HeartRateMetricView and conformance HeartRateMetricView(&lazy protocol witness table cache variable for type ZoneMetricView and conformance ZoneMetricView, type metadata accessor for ZoneMetricView);
      v312 = v577;
      _ConditionalContent<>.init(storage:)();
      outlined init with copy of TupleView<(ModifiedContent<Text, MetricValueFont>, ModifiedContent<ModifiedContent<Text, MetricDescriptionCoreFont>, ExtendedLineSpacingSupport>)>(v312, v596, &_s7SwiftUI19_ConditionalContentVy07WorkoutB028HeartRateAggregateMetricViewVAD04ZoneiJ0VGMd);
      swift_storeEnumTagMultiPayload();
      lazy protocol witness table accessor for type _ConditionalContent<HeartRateAggregateMetricView, ZoneMetricView> and conformance <> _ConditionalContent<A, B>();
      lazy protocol witness table accessor for type _ConditionalContent<TimeInZoneMetricView, ZoneMetricView> and conformance <> _ConditionalContent<A, B>();
      v313 = v598;
      _ConditionalContent<>.init(storage:)();
      outlined destroy of TupleView<(ModifiedContent<Text, MetricValueFont>, ModifiedContent<ModifiedContent<Text, MetricDescriptionCoreFont>, ExtendedLineSpacingSupport>)>(v312, &_s7SwiftUI19_ConditionalContentVy07WorkoutB028HeartRateAggregateMetricViewVAD04ZoneiJ0VGMd);
      outlined init with copy of TupleView<(ModifiedContent<Text, MetricValueFont>, ModifiedContent<ModifiedContent<Text, MetricDescriptionCoreFont>, ExtendedLineSpacingSupport>)>(v313, v605, &_s7SwiftUI19_ConditionalContentVyACy07WorkoutB028HeartRateAggregateMetricViewVAD04ZoneiJ0VGACyAD06TimeInkiJ0VAHGGMd);
      swift_storeEnumTagMultiPayload();
      lazy protocol witness table accessor for type _ConditionalContent<_ConditionalContent<EnergyMetricView, EnergyMetricView>, _ConditionalContent<HeartRateMetricView, HeartRateAggregateMetricView>> and conformance <> _ConditionalContent<A, B>();
      lazy protocol witness table accessor for type _ConditionalContent<_ConditionalContent<HeartRateAggregateMetricView, ZoneMetricView>, _ConditionalContent<TimeInZoneMetricView, ZoneMetricView>> and conformance <> _ConditionalContent<A, B>();
      v314 = v608;
      _ConditionalContent<>.init(storage:)();
      outlined destroy of TupleView<(ModifiedContent<Text, MetricValueFont>, ModifiedContent<ModifiedContent<Text, MetricDescriptionCoreFont>, ExtendedLineSpacingSupport>)>(v313, &_s7SwiftUI19_ConditionalContentVyACy07WorkoutB028HeartRateAggregateMetricViewVAD04ZoneiJ0VGACyAD06TimeInkiJ0VAHGGMd);
      outlined init with copy of TupleView<(ModifiedContent<Text, MetricValueFont>, ModifiedContent<ModifiedContent<Text, MetricDescriptionCoreFont>, ExtendedLineSpacingSupport>)>(v314, v614, &_s7SwiftUI19_ConditionalContentVyACyACy07WorkoutB016EnergyMetricViewVAFGACyAD09HeartRategH0VAD0ij9AggregategH0VGGACyACyAkD04ZonegH0VGACyAD06TimeInlgH0VAOGGGMd);
      swift_storeEnumTagMultiPayload();
      __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI19_ConditionalContentVyACyACy07WorkoutB020TimeInZoneMetricViewVAD04PaceiJ0VGACyA2HGGACyAjCyAD08DistanceiJ0VAD04LapsiJ0VGGGMd);
      lazy protocol witness table accessor for type _ConditionalContent<_ConditionalContent<_ConditionalContent<EnergyMetricView, EnergyMetricView>, _ConditionalContent<HeartRateMetricView, HeartRateAggregateMetricView>>, _ConditionalContent<_ConditionalContent<HeartRateAggregateMetricView, ZoneMetricView>, _ConditionalContent<TimeInZoneMetricView, ZoneMetricView>>> and conformance <> _ConditionalContent<A, B>();
      lazy protocol witness table accessor for type _ConditionalContent<_ConditionalContent<_ConditionalContent<TimeInZoneMetricView, PaceMetricView>, _ConditionalContent<PaceMetricView, PaceMetricView>>, _ConditionalContent<_ConditionalContent<PaceMetricView, PaceMetricView>, _ConditionalContent<DistanceMetricView, LapsMetricView>>> and conformance <> _ConditionalContent<A, B>();
      v315 = v616;
      _ConditionalContent<>.init(storage:)();
      outlined destroy of TupleView<(ModifiedContent<Text, MetricValueFont>, ModifiedContent<ModifiedContent<Text, MetricDescriptionCoreFont>, ExtendedLineSpacingSupport>)>(v314, &_s7SwiftUI19_ConditionalContentVyACyACy07WorkoutB016EnergyMetricViewVAFGACyAD09HeartRategH0VAD0ij9AggregategH0VGGACyACyAkD04ZonegH0VGACyAD06TimeInlgH0VAOGGGMd);
      outlined init with copy of TupleView<(ModifiedContent<Text, MetricValueFont>, ModifiedContent<ModifiedContent<Text, MetricDescriptionCoreFont>, ExtendedLineSpacingSupport>)>(v315, v623, &_s7SwiftUI19_ConditionalContentVyACyACyACy07WorkoutB016EnergyMetricViewVAFGACyAD09HeartRategH0VAD0ij9AggregategH0VGGACyACyAkD04ZonegH0VGACyAD06TimeInlgH0VAOGGGACyACyACyArD04PacegH0VGACyA2WGGACyAyCyAD08DistancegH0VAD04LapsgH0VGGGGMd);
      swift_storeEnumTagMultiPayload();
      lazy protocol witness table accessor for type _ConditionalContent<_ConditionalContent<_ConditionalContent<_ConditionalContent<EnergyMetricView, EnergyMetricView>, _ConditionalContent<HeartRateMetricView, HeartRateAggregateMetricView>>, _ConditionalContent<_ConditionalContent<HeartRateAggregateMetricView, ZoneMetricView>, _ConditionalContent<TimeInZoneMetricView, ZoneMetricView>>>, _ConditionalContent<_ConditionalContent<_ConditionalContent<TimeInZoneMetricView, PaceMetricView>, _ConditionalContent<PaceMetricView, PaceMetricView>>, _ConditionalContent<_ConditionalContent<PaceMetricView, PaceMetricView>, _ConditionalContent<DistanceMetricView, LapsMetricView>>>> and conformance <> _ConditionalContent<A, B>();
      lazy protocol witness table accessor for type _ConditionalContent<_ConditionalContent<_ConditionalContent<_ConditionalContent<_ConditionalContent<_ConditionalContent<CadenceMetricView, EmptyView>, CadenceMetricView>, CadenceMetricView>, _ConditionalContent<ElevationChangeMetricView, CurrentElevationMetricView>>, _ConditionalContent<_ConditionalContent<PowerMetricView, PowerMetricView>, _ConditionalContent<PowerMetricView, FlightsClimbedMetricView>>>, _ConditionalContent<_ConditionalContent<_ConditionalContent<SegmentDurationMetricView, DistanceDetailMetricView>, _ConditionalContent<PaceMetricView, EnergyMetricView>>, _ConditionalContent<_ConditionalContent<EnergyMetricView, PowerMetricView>, _ConditionalContent<PowerMetricView, ModifiedContent<ModifiedContent<WorkoutTimeView, MetricDetail>, _ForegroundStyleModifier<Color>>>>>> and conformance <> _ConditionalContent<A, B>();
      v316 = v556;
      _ConditionalContent<>.init(storage:)();
      outlined destroy of TupleView<(ModifiedContent<Text, MetricValueFont>, ModifiedContent<ModifiedContent<Text, MetricDescriptionCoreFont>, ExtendedLineSpacingSupport>)>(v315, &_s7SwiftUI19_ConditionalContentVyACyACyACy07WorkoutB016EnergyMetricViewVAFGACyAD09HeartRategH0VAD0ij9AggregategH0VGGACyACyAkD04ZonegH0VGACyAD06TimeInlgH0VAOGGGACyACyACyArD04PacegH0VGACyA2WGGACyAyCyAD08DistancegH0VAD04LapsgH0VGGGGMd);
      outlined init with copy of TupleView<(ModifiedContent<Text, MetricValueFont>, ModifiedContent<ModifiedContent<Text, MetricDescriptionCoreFont>, ExtendedLineSpacingSupport>)>(v316, v629, &_s7SwiftUI19_ConditionalContentVyACyACyACyACy07WorkoutB016EnergyMetricViewVAFGACyAD09HeartRategH0VAD0ij9AggregategH0VGGACyACyAkD04ZonegH0VGACyAD06TimeInlgH0VAOGGGACyACyACyArD04PacegH0VGACyA2WGGACyAyCyAD08DistancegH0VAD04LapsgH0VGGGGACyACyACyACyACyACyAD07CadencegH0VAA05EmptyH0VGA8_GA8_GACyAD015ElevationChangegH0VAD07CurrenttgH0VGGACyACyAD05PowergH0VA21_GACyA21_AD014FlightsClimbedgH0VGGGACyACyACyAD015SegmentDurationgH0VAD0p6DetailgH0VGACyAwFGGACyACyAFA21_GACyA21_AA08ModifiedD0VyA37_yAD0emH0VAD0G6DetailVGAA24_ForegroundStyleModifierVyAA5ColorVGGGGGGGMd);
      swift_storeEnumTagMultiPayload();
      __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI19_ConditionalContentVyACyACyACy07WorkoutB024DistanceDetailMetricViewVAD04PacehI0VGACyAD012StrideLengthhI0VAKGGACyACyAD019VerticalOscillationhI0VAOGACyAD017GroundContactTimehI0VARGGGACyACyAD015ElevationChangehI0VAD016DownhillRunCounthI0VGACyAA05EmptyI0VAA6HStackVyAA05TupleI0VyAA08ModifiedD0VyAA4TextVAD0H9ValueFontVG_A6_yA6_yA8_AD0H19DescriptionCoreFontVGAD26ExtendedLineSpacingSupport33_241C09B5AC269BC1C919798A0AC522FDLLVGtGGGGGMd);
      lazy protocol witness table accessor for type _ConditionalContent<_ConditionalContent<_ConditionalContent<_ConditionalContent<_ConditionalContent<EnergyMetricView, EnergyMetricView>, _ConditionalContent<HeartRateMetricView, HeartRateAggregateMetricView>>, _ConditionalContent<_ConditionalContent<HeartRateAggregateMetricView, ZoneMetricView>, _ConditionalContent<TimeInZoneMetricView, ZoneMetricView>>>, _ConditionalContent<_ConditionalContent<_ConditionalContent<TimeInZoneMetricView, PaceMetricView>, _ConditionalContent<PaceMetricView, PaceMetricView>>, _ConditionalContent<_ConditionalContent<PaceMetricView, PaceMetricView>, _ConditionalContent<DistanceMetricView, LapsMetricView>>>>, _ConditionalContent<_ConditionalContent<_ConditionalContent<_ConditionalContent<_ConditionalContent<_ConditionalContent<CadenceMetricView, EmptyView>, CadenceMetricView>, CadenceMetricView>, _ConditionalContent<ElevationChangeMetricView, CurrentElevationMetricView>>, _ConditionalContent<_ConditionalContent<PowerMetricView, PowerMet();
      lazy protocol witness table accessor for type _ConditionalContent<_ConditionalContent<_ConditionalContent<_ConditionalContent<DistanceDetailMetricView, PaceMetricView>, _ConditionalContent<StrideLengthMetricView, StrideLengthMetricView>>, _ConditionalContent<_ConditionalContent<VerticalOscillationMetricView, VerticalOscillationMetricView>, _ConditionalContent<GroundContactTimeMetricView, GroundContactTimeMetricView>>>, _ConditionalContent<_ConditionalContent<ElevationChangeMetricView, DownhillRunCountMetricView>, _ConditionalContent<EmptyView, HStack<TupleView<(ModifiedContent<Text, MetricValueFont>, ModifiedContent<ModifiedContent<Text, MetricDescriptionCoreFont>, ExtendedLineSpacingSupport>)>>>>> and conformance <> _ConditionalContent<A, B>();
      _ConditionalContent<>.init(storage:)();
      outlined destroy of TupleView<(ModifiedContent<Text, MetricValueFont>, ModifiedContent<ModifiedContent<Text, MetricDescriptionCoreFont>, ExtendedLineSpacingSupport>)>(v316, &_s7SwiftUI19_ConditionalContentVyACyACyACyACy07WorkoutB016EnergyMetricViewVAFGACyAD09HeartRategH0VAD0ij9AggregategH0VGGACyACyAkD04ZonegH0VGACyAD06TimeInlgH0VAOGGGACyACyACyArD04PacegH0VGACyA2WGGACyAyCyAD08DistancegH0VAD04LapsgH0VGGGGACyACyACyACyACyACyAD07CadencegH0VAA05EmptyH0VGA8_GA8_GACyAD015ElevationChangegH0VAD07CurrenttgH0VGGACyACyAD05PowergH0VA21_GACyA21_AD014FlightsClimbedgH0VGGGACyACyACyAD015SegmentDurationgH0VAD0p6DetailgH0VGACyAwFGGACyACyAFA21_GACyA21_AA08ModifiedD0VyA37_yAD0emH0VAD0G6DetailVGAA24_ForegroundStyleModifierVyAA5ColorVGGGGGGGMd);
      v317 = v309;
      goto LABEL_103;
    case 38:
      v556 = v67;
      (*(v588 + 104))(v35, *MEMORY[0x277D7DFA0], v589, v65);
      MetricsPublisher.heartRateMetricsPublisher.getter();
      v217 = HeartRateMetricsPublisher.liveHeartRateZones.getter();

      if (v217)
      {
        v625 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11WorkoutCore9LiveZonesCyAA0C13HeartRateZoneCGMd);
        v218 = lazy protocol witness table accessor for type HStack<TupleView<(ModifiedContent<Text, MetricValueFont>, ModifiedContent<ModifiedContent<Text, MetricDescriptionCoreFont>, ExtendedLineSpacingSupport>)>> and conformance HStack<A>(&lazy protocol witness table cache variable for type LiveZones<LiveHeartRateZone> and conformance LiveZones<A>, &_s11WorkoutCore9LiveZonesCyAA0C13HeartRateZoneCGMd);
      }

      else
      {
        v625 = 0;
        v218 = 0;
      }

      MetricsPublisher.heartRateMetricsPublisher.getter();
      v508 = HeartRateMetricsPublisher.currentHeartRate.getter();
      v510 = v509;

      MetricsPublisher.heartRateMetricsPublisher.getter();
      v511 = HeartRateMetricsPublisher.liveHeartRateZones.getter();

      if (v511)
      {
        v512 = dispatch thunk of LiveZones.isStale.getter();
      }

      else
      {
        v512 = 1;
      }

      v513 = v593;
      v514 = &v42[*(v593 + 32)];
      *v514 = swift_getKeyPath();
      v514[8] = 0;
      (*(v588 + 32))(v42, v35, v589);
      v515 = &v42[v513[5]];
      *v515 = v217;
      v515[1] = 0;
      v516 = v625;
      v515[2] = 0;
      v515[3] = v516;
      v515[4] = v218;
      v517 = &v42[v513[6]];
      *v517 = v508;
      v517[8] = v510 & 1;
      v42[v513[7]] = v512 & 1;
      v505 = v564;
      outlined init with take of ZoneMetricView(v42, v564);
      v311 = type metadata accessor for ZoneMetricView;
      _s9WorkoutUI0A8TimeViewVWOcTm_0(v505, v576, type metadata accessor for ZoneMetricView);
      swift_storeEnumTagMultiPayload();
      lazy protocol witness table accessor for type HeartRateMetricView and conformance HeartRateMetricView(&lazy protocol witness table cache variable for type HeartRateAggregateMetricView and conformance HeartRateAggregateMetricView, type metadata accessor for HeartRateAggregateMetricView);
      lazy protocol witness table accessor for type HeartRateMetricView and conformance HeartRateMetricView(&lazy protocol witness table cache variable for type ZoneMetricView and conformance ZoneMetricView, type metadata accessor for ZoneMetricView);
      v506 = v577;
      _ConditionalContent<>.init(storage:)();
      v507 = &_s7SwiftUI19_ConditionalContentVy07WorkoutB028HeartRateAggregateMetricViewVAD04ZoneiJ0VGMd;
      outlined init with copy of TupleView<(ModifiedContent<Text, MetricValueFont>, ModifiedContent<ModifiedContent<Text, MetricDescriptionCoreFont>, ExtendedLineSpacingSupport>)>(v506, v596, &_s7SwiftUI19_ConditionalContentVy07WorkoutB028HeartRateAggregateMetricViewVAD04ZoneiJ0VGMd);
      goto LABEL_102;
    case 39:
      v556 = v67;
      MetricsPublisher.heartRateMetricsPublisher.getter();
      v475 = HeartRateMetricsPublisher.liveHeartRateZones.getter();

      if (v475)
      {
        v476 = dispatch thunk of LiveZones.elapsedTimeInCurrentZone.getter();
        v478 = v477;
      }

      else
      {
        v476 = 0;
        v478 = 1;
      }

      MetricsPublisher.heartRateMetricsPublisher.getter();
      v530 = HeartRateMetricsPublisher.liveHeartRateZones.getter();

      if (v530)
      {
        v531 = dispatch thunk of LiveZones.isStale.getter();
      }

      else
      {
        v531 = 1;
      }

      TimeInZoneMetricView.init(elapsedTime:isStale:)(v476, v478 & 1, v531 & 1, v689);
      v532 = BYTE8(v689[0]);
      v533 = BYTE9(v689[0]);
      v524 = *&v689[1];
      v525 = BYTE8(v689[1]);
      v534 = *&v689[2];
      v535 = v579;
      *v579 = *&v689[0];
      *(v535 + 8) = v532;
      *(v535 + 9) = v533;
      v535[2] = v524;
      *(v535 + 24) = v525;
      v535[4] = v534;
      swift_storeEnumTagMultiPayload();
      outlined copy of Environment<WorkoutViewStyle>.Content(v524, v525);
      lazy protocol witness table accessor for type TimeInZoneMetricView and conformance TimeInZoneMetricView();
      lazy protocol witness table accessor for type HeartRateMetricView and conformance HeartRateMetricView(&lazy protocol witness table cache variable for type ZoneMetricView and conformance ZoneMetricView, type metadata accessor for ZoneMetricView);
      v536 = v580;
      _ConditionalContent<>.init(storage:)();
      outlined init with copy of TupleView<(ModifiedContent<Text, MetricValueFont>, ModifiedContent<ModifiedContent<Text, MetricDescriptionCoreFont>, ExtendedLineSpacingSupport>)>(v536, v596, &_s7SwiftUI19_ConditionalContentVy07WorkoutB020TimeInZoneMetricViewVAD0hiJ0VGMd);
      swift_storeEnumTagMultiPayload();
      lazy protocol witness table accessor for type _ConditionalContent<HeartRateAggregateMetricView, ZoneMetricView> and conformance <> _ConditionalContent<A, B>();
      lazy protocol witness table accessor for type _ConditionalContent<TimeInZoneMetricView, ZoneMetricView> and conformance <> _ConditionalContent<A, B>();
      v537 = v598;
      _ConditionalContent<>.init(storage:)();
      outlined destroy of TupleView<(ModifiedContent<Text, MetricValueFont>, ModifiedContent<ModifiedContent<Text, MetricDescriptionCoreFont>, ExtendedLineSpacingSupport>)>(v536, &_s7SwiftUI19_ConditionalContentVy07WorkoutB020TimeInZoneMetricViewVAD0hiJ0VGMd);
      outlined init with copy of TupleView<(ModifiedContent<Text, MetricValueFont>, ModifiedContent<ModifiedContent<Text, MetricDescriptionCoreFont>, ExtendedLineSpacingSupport>)>(v537, v605, &_s7SwiftUI19_ConditionalContentVyACy07WorkoutB028HeartRateAggregateMetricViewVAD04ZoneiJ0VGACyAD06TimeInkiJ0VAHGGMd);
      swift_storeEnumTagMultiPayload();
      lazy protocol witness table accessor for type _ConditionalContent<_ConditionalContent<EnergyMetricView, EnergyMetricView>, _ConditionalContent<HeartRateMetricView, HeartRateAggregateMetricView>> and conformance <> _ConditionalContent<A, B>();
      lazy protocol witness table accessor for type _ConditionalContent<_ConditionalContent<HeartRateAggregateMetricView, ZoneMetricView>, _ConditionalContent<TimeInZoneMetricView, ZoneMetricView>> and conformance <> _ConditionalContent<A, B>();
      v538 = v608;
      _ConditionalContent<>.init(storage:)();
      outlined destroy of TupleView<(ModifiedContent<Text, MetricValueFont>, ModifiedContent<ModifiedContent<Text, MetricDescriptionCoreFont>, ExtendedLineSpacingSupport>)>(v537, &_s7SwiftUI19_ConditionalContentVyACy07WorkoutB028HeartRateAggregateMetricViewVAD04ZoneiJ0VGACyAD06TimeInkiJ0VAHGGMd);
      outlined init with copy of TupleView<(ModifiedContent<Text, MetricValueFont>, ModifiedContent<ModifiedContent<Text, MetricDescriptionCoreFont>, ExtendedLineSpacingSupport>)>(v538, v614, &_s7SwiftUI19_ConditionalContentVyACyACy07WorkoutB016EnergyMetricViewVAFGACyAD09HeartRategH0VAD0ij9AggregategH0VGGACyACyAkD04ZonegH0VGACyAD06TimeInlgH0VAOGGGMd);
      swift_storeEnumTagMultiPayload();
      __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI19_ConditionalContentVyACyACy07WorkoutB020TimeInZoneMetricViewVAD04PaceiJ0VGACyA2HGGACyAjCyAD08DistanceiJ0VAD04LapsiJ0VGGGMd);
      lazy protocol witness table accessor for type _ConditionalContent<_ConditionalContent<_ConditionalContent<EnergyMetricView, EnergyMetricView>, _ConditionalContent<HeartRateMetricView, HeartRateAggregateMetricView>>, _ConditionalContent<_ConditionalContent<HeartRateAggregateMetricView, ZoneMetricView>, _ConditionalContent<TimeInZoneMetricView, ZoneMetricView>>> and conformance <> _ConditionalContent<A, B>();
      lazy protocol witness table accessor for type _ConditionalContent<_ConditionalContent<_ConditionalContent<TimeInZoneMetricView, PaceMetricView>, _ConditionalContent<PaceMetricView, PaceMetricView>>, _ConditionalContent<_ConditionalContent<PaceMetricView, PaceMetricView>, _ConditionalContent<DistanceMetricView, LapsMetricView>>> and conformance <> _ConditionalContent<A, B>();
      v529 = v616;
      _ConditionalContent<>.init(storage:)();
      outlined destroy of TupleView<(ModifiedContent<Text, MetricValueFont>, ModifiedContent<ModifiedContent<Text, MetricDescriptionCoreFont>, ExtendedLineSpacingSupport>)>(v538, &_s7SwiftUI19_ConditionalContentVyACyACy07WorkoutB016EnergyMetricViewVAFGACyAD09HeartRategH0VAD0ij9AggregategH0VGGACyACyAkD04ZonegH0VGACyAD06TimeInlgH0VAOGGGMd);
      goto LABEL_114;
    case 40:
      v556 = v67;
      MetricsPublisher.heartRateMetricsPublisher.getter();
      v146 = HeartRateMetricsPublisher.averageHeartRate.getter();
      v148 = v147;

      MetricsPublisher.heartRateMetricsPublisher.getter();
      v149 = HeartRateMetricsPublisher.isStaleHeartRate.getter();

      v150 = v592;
      v151 = *(v592 + 28);
      v152 = swift_getKeyPath();
      v153 = v581;
      *&v581[v151] = v152;
      __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI11EnvironmentV7ContentOyAA16RedactionReasonsV_GMd);
      swift_storeEnumTagMultiPayload();
      v154 = v153 + *(v150 + 32);
      *v154 = swift_getKeyPath();
      *(v154 + 8) = 0;
      *v153 = 0;
      *(v153 + 8) = v146;
      *(v153 + 16) = v148 & 1;
      *(v153 + 17) = v149 & 1;
      v626 = type metadata accessor for HeartRateAggregateMetricView;
      _s9WorkoutUI0A8TimeViewVWOcTm_0(v153, v52, type metadata accessor for HeartRateAggregateMetricView);
      swift_storeEnumTagMultiPayload();
      lazy protocol witness table accessor for type HeartRateMetricView and conformance HeartRateMetricView(&lazy protocol witness table cache variable for type HeartRateMetricView and conformance HeartRateMetricView, type metadata accessor for HeartRateMetricView);
      lazy protocol witness table accessor for type HeartRateMetricView and conformance HeartRateMetricView(&lazy protocol witness table cache variable for type HeartRateAggregateMetricView and conformance HeartRateAggregateMetricView, type metadata accessor for HeartRateAggregateMetricView);
      v155 = v575;
      _ConditionalContent<>.init(storage:)();
      outlined init with copy of TupleView<(ModifiedContent<Text, MetricValueFont>, ModifiedContent<ModifiedContent<Text, MetricDescriptionCoreFont>, ExtendedLineSpacingSupport>)>(v155, v587, &_s7SwiftUI19_ConditionalContentVy07WorkoutB019HeartRateMetricViewVAD0fg9AggregatehI0VGMd);
      swift_storeEnumTagMultiPayload();
      __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI19_ConditionalContentVy07WorkoutB016EnergyMetricViewVAFGMd);
      lazy protocol witness table accessor for type _ConditionalContent<StrideLengthMetricView, StrideLengthMetricView> and conformance <> _ConditionalContent<A, B>(&lazy protocol witness table cache variable for type _ConditionalContent<EnergyMetricView, EnergyMetricView> and conformance <> _ConditionalContent<A, B>, &_s7SwiftUI19_ConditionalContentVy07WorkoutB016EnergyMetricViewVAFGMd, &_s7SwiftUI19_ConditionalContentVy07WorkoutB016EnergyMetricViewVAFGMR, lazy protocol witness table accessor for type EnergyMetricView and conformance EnergyMetricView);
      lazy protocol witness table accessor for type _ConditionalContent<HeartRateMetricView, HeartRateAggregateMetricView> and conformance <> _ConditionalContent<A, B>();
      v156 = v591;
      _ConditionalContent<>.init(storage:)();
      outlined destroy of TupleView<(ModifiedContent<Text, MetricValueFont>, ModifiedContent<ModifiedContent<Text, MetricDescriptionCoreFont>, ExtendedLineSpacingSupport>)>(v155, &_s7SwiftUI19_ConditionalContentVy07WorkoutB019HeartRateMetricViewVAD0fg9AggregatehI0VGMd);
      outlined init with copy of TupleView<(ModifiedContent<Text, MetricValueFont>, ModifiedContent<ModifiedContent<Text, MetricDescriptionCoreFont>, ExtendedLineSpacingSupport>)>(v156, v605, &_s7SwiftUI19_ConditionalContentVyACy07WorkoutB016EnergyMetricViewVAFGACyAD09HeartRategH0VAD0ij9AggregategH0VGGMd);
      swift_storeEnumTagMultiPayload();
      lazy protocol witness table accessor for type _ConditionalContent<_ConditionalContent<EnergyMetricView, EnergyMetricView>, _ConditionalContent<HeartRateMetricView, HeartRateAggregateMetricView>> and conformance <> _ConditionalContent<A, B>();
      lazy protocol witness table accessor for type _ConditionalContent<_ConditionalContent<HeartRateAggregateMetricView, ZoneMetricView>, _ConditionalContent<TimeInZoneMetricView, ZoneMetricView>> and conformance <> _ConditionalContent<A, B>();
      v157 = v608;
      _ConditionalContent<>.init(storage:)();
      outlined destroy of TupleView<(ModifiedContent<Text, MetricValueFont>, ModifiedContent<ModifiedContent<Text, MetricDescriptionCoreFont>, ExtendedLineSpacingSupport>)>(v156, &_s7SwiftUI19_ConditionalContentVyACy07WorkoutB016EnergyMetricViewVAFGACyAD09HeartRategH0VAD0ij9AggregategH0VGGMd);
      outlined init with copy of TupleView<(ModifiedContent<Text, MetricValueFont>, ModifiedContent<ModifiedContent<Text, MetricDescriptionCoreFont>, ExtendedLineSpacingSupport>)>(v157, v614, &_s7SwiftUI19_ConditionalContentVyACyACy07WorkoutB016EnergyMetricViewVAFGACyAD09HeartRategH0VAD0ij9AggregategH0VGGACyACyAkD04ZonegH0VGACyAD06TimeInlgH0VAOGGGMd);
      swift_storeEnumTagMultiPayload();
      __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI19_ConditionalContentVyACyACy07WorkoutB020TimeInZoneMetricViewVAD04PaceiJ0VGACyA2HGGACyAjCyAD08DistanceiJ0VAD04LapsiJ0VGGGMd);
      lazy protocol witness table accessor for type _ConditionalContent<_ConditionalContent<_ConditionalContent<EnergyMetricView, EnergyMetricView>, _ConditionalContent<HeartRateMetricView, HeartRateAggregateMetricView>>, _ConditionalContent<_ConditionalContent<HeartRateAggregateMetricView, ZoneMetricView>, _ConditionalContent<TimeInZoneMetricView, ZoneMetricView>>> and conformance <> _ConditionalContent<A, B>();
      lazy protocol witness table accessor for type _ConditionalContent<_ConditionalContent<_ConditionalContent<TimeInZoneMetricView, PaceMetricView>, _ConditionalContent<PaceMetricView, PaceMetricView>>, _ConditionalContent<_ConditionalContent<PaceMetricView, PaceMetricView>, _ConditionalContent<DistanceMetricView, LapsMetricView>>> and conformance <> _ConditionalContent<A, B>();
      v158 = v616;
      _ConditionalContent<>.init(storage:)();
      outlined destroy of TupleView<(ModifiedContent<Text, MetricValueFont>, ModifiedContent<ModifiedContent<Text, MetricDescriptionCoreFont>, ExtendedLineSpacingSupport>)>(v157, &_s7SwiftUI19_ConditionalContentVyACyACy07WorkoutB016EnergyMetricViewVAFGACyAD09HeartRategH0VAD0ij9AggregategH0VGGACyACyAkD04ZonegH0VGACyAD06TimeInlgH0VAOGGGMd);
      outlined init with copy of TupleView<(ModifiedContent<Text, MetricValueFont>, ModifiedContent<ModifiedContent<Text, MetricDescriptionCoreFont>, ExtendedLineSpacingSupport>)>(v158, v623, &_s7SwiftUI19_ConditionalContentVyACyACyACy07WorkoutB016EnergyMetricViewVAFGACyAD09HeartRategH0VAD0ij9AggregategH0VGGACyACyAkD04ZonegH0VGACyAD06TimeInlgH0VAOGGGACyACyACyArD04PacegH0VGACyA2WGGACyAyCyAD08DistancegH0VAD04LapsgH0VGGGGMd);
      swift_storeEnumTagMultiPayload();
      lazy protocol witness table accessor for type _ConditionalContent<_ConditionalContent<_ConditionalContent<_ConditionalContent<EnergyMetricView, EnergyMetricView>, _ConditionalContent<HeartRateMetricView, HeartRateAggregateMetricView>>, _ConditionalContent<_ConditionalContent<HeartRateAggregateMetricView, ZoneMetricView>, _ConditionalContent<TimeInZoneMetricView, ZoneMetricView>>>, _ConditionalContent<_ConditionalContent<_ConditionalContent<TimeInZoneMetricView, PaceMetricView>, _ConditionalContent<PaceMetricView, PaceMetricView>>, _ConditionalContent<_ConditionalContent<PaceMetricView, PaceMetricView>, _ConditionalContent<DistanceMetricView, LapsMetricView>>>> and conformance <> _ConditionalContent<A, B>();
      lazy protocol witness table accessor for type _ConditionalContent<_ConditionalContent<_ConditionalContent<_ConditionalContent<_ConditionalContent<_ConditionalContent<CadenceMetricView, EmptyView>, CadenceMetricView>, CadenceMetricView>, _ConditionalContent<ElevationChangeMetricView, CurrentElevationMetricView>>, _ConditionalContent<_ConditionalContent<PowerMetricView, PowerMetricView>, _ConditionalContent<PowerMetricView, FlightsClimbedMetricView>>>, _ConditionalContent<_ConditionalContent<_ConditionalContent<SegmentDurationMetricView, DistanceDetailMetricView>, _ConditionalContent<PaceMetricView, EnergyMetricView>>, _ConditionalContent<_ConditionalContent<EnergyMetricView, PowerMetricView>, _ConditionalContent<PowerMetricView, ModifiedContent<ModifiedContent<WorkoutTimeView, MetricDetail>, _ForegroundStyleModifier<Color>>>>>> and conformance <> _ConditionalContent<A, B>();
      v159 = v556;
      _ConditionalContent<>.init(storage:)();
      outlined destroy of TupleView<(ModifiedContent<Text, MetricValueFont>, ModifiedContent<ModifiedContent<Text, MetricDescriptionCoreFont>, ExtendedLineSpacingSupport>)>(v158, &_s7SwiftUI19_ConditionalContentVyACyACyACy07WorkoutB016EnergyMetricViewVAFGACyAD09HeartRategH0VAD0ij9AggregategH0VGGACyACyAkD04ZonegH0VGACyAD06TimeInlgH0VAOGGGACyACyACyArD04PacegH0VGACyA2WGGACyAyCyAD08DistancegH0VAD04LapsgH0VGGGGMd);
      outlined init with copy of TupleView<(ModifiedContent<Text, MetricValueFont>, ModifiedContent<ModifiedContent<Text, MetricDescriptionCoreFont>, ExtendedLineSpacingSupport>)>(v159, v629, &_s7SwiftUI19_ConditionalContentVyACyACyACyACy07WorkoutB016EnergyMetricViewVAFGACyAD09HeartRategH0VAD0ij9AggregategH0VGGACyACyAkD04ZonegH0VGACyAD06TimeInlgH0VAOGGGACyACyACyArD04PacegH0VGACyA2WGGACyAyCyAD08DistancegH0VAD04LapsgH0VGGGGACyACyACyACyACyACyAD07CadencegH0VAA05EmptyH0VGA8_GA8_GACyAD015ElevationChangegH0VAD07CurrenttgH0VGGACyACyAD05PowergH0VA21_GACyA21_AD014FlightsClimbedgH0VGGGACyACyACyAD015SegmentDurationgH0VAD0p6DetailgH0VGACyAwFGGACyACyAFA21_GACyA21_AA08ModifiedD0VyA37_yAD0emH0VAD0G6DetailVGAA24_ForegroundStyleModifierVyAA5ColorVGGGGGGGMd);
      swift_storeEnumTagMultiPayload();
      __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI19_ConditionalContentVyACyACyACy07WorkoutB024DistanceDetailMetricViewVAD04PacehI0VGACyAD012StrideLengthhI0VAKGGACyACyAD019VerticalOscillationhI0VAOGACyAD017GroundContactTimehI0VARGGGACyACyAD015ElevationChangehI0VAD016DownhillRunCounthI0VGACyAA05EmptyI0VAA6HStackVyAA05TupleI0VyAA08ModifiedD0VyAA4TextVAD0H9ValueFontVG_A6_yA6_yA8_AD0H19DescriptionCoreFontVGAD26ExtendedLineSpacingSupport33_241C09B5AC269BC1C919798A0AC522FDLLVGtGGGGGMd);
      lazy protocol witness table accessor for type _ConditionalContent<_ConditionalContent<_ConditionalContent<_ConditionalContent<_ConditionalContent<EnergyMetricView, EnergyMetricView>, _ConditionalContent<HeartRateMetricView, HeartRateAggregateMetricView>>, _ConditionalContent<_ConditionalContent<HeartRateAggregateMetricView, ZoneMetricView>, _ConditionalContent<TimeInZoneMetricView, ZoneMetricView>>>, _ConditionalContent<_ConditionalContent<_ConditionalContent<TimeInZoneMetricView, PaceMetricView>, _ConditionalContent<PaceMetricView, PaceMetricView>>, _ConditionalContent<_ConditionalContent<PaceMetricView, PaceMetricView>, _ConditionalContent<DistanceMetricView, LapsMetricView>>>>, _ConditionalContent<_ConditionalContent<_ConditionalContent<_ConditionalContent<_ConditionalContent<_ConditionalContent<CadenceMetricView, EmptyView>, CadenceMetricView>, CadenceMetricView>, _ConditionalContent<ElevationChangeMetricView, CurrentElevationMetricView>>, _ConditionalContent<_ConditionalContent<PowerMetricView, PowerMet();
      lazy protocol witness table accessor for type _ConditionalContent<_ConditionalContent<_ConditionalContent<_ConditionalContent<DistanceDetailMetricView, PaceMetricView>, _ConditionalContent<StrideLengthMetricView, StrideLengthMetricView>>, _ConditionalContent<_ConditionalContent<VerticalOscillationMetricView, VerticalOscillationMetricView>, _ConditionalContent<GroundContactTimeMetricView, GroundContactTimeMetricView>>>, _ConditionalContent<_ConditionalContent<ElevationChangeMetricView, DownhillRunCountMetricView>, _ConditionalContent<EmptyView, HStack<TupleView<(ModifiedContent<Text, MetricValueFont>, ModifiedContent<ModifiedContent<Text, MetricDescriptionCoreFont>, ExtendedLineSpacingSupport>)>>>>> and conformance <> _ConditionalContent<A, B>();
      _ConditionalContent<>.init(storage:)();
      outlined destroy of TupleView<(ModifiedContent<Text, MetricValueFont>, ModifiedContent<ModifiedContent<Text, MetricDescriptionCoreFont>, ExtendedLineSpacingSupport>)>(v159, &_s7SwiftUI19_ConditionalContentVyACyACyACyACy07WorkoutB016EnergyMetricViewVAFGACyAD09HeartRategH0VAD0ij9AggregategH0VGGACyACyAkD04ZonegH0VGACyAD06TimeInlgH0VAOGGGACyACyACyArD04PacegH0VGACyA2WGGACyAyCyAD08DistancegH0VAD04LapsgH0VGGGGACyACyACyACyACyACyAD07CadencegH0VAA05EmptyH0VGA8_GA8_GACyAD015ElevationChangegH0VAD07CurrenttgH0VGGACyACyAD05PowergH0VA21_GACyA21_AD014FlightsClimbedgH0VGGGACyACyACyAD015SegmentDurationgH0VAD0p6DetailgH0VGACyAwFGGACyACyAFA21_GACyA21_AA08ModifiedD0VyA37_yAD0emH0VAD0G6DetailVGAA24_ForegroundStyleModifierVyAA5ColorVGGGGGGGMd);
      v160 = v153;
LABEL_47:
      _s9WorkoutUI0A8TimeViewVWOhTm_0(v160, v626);
      return;
    case 41:
      v74 = v67;
      MetricsPublisher.intervalsMetricsPublisher.getter();
      IntervalsMetricsPublisher.intervalAveragePace.getter();
      v397 = v396;

      MetricsPublisher.workoutStatePublisher.getter();
      v398 = WorkoutStatePublisher.gpsUnavailable.getter();

      v399 = swift_getKeyPath();
      *&v681 = v625;
      *(&v681 + 1) = 41;
      v400 = v620;
      *&v682 = v620;
      *(&v682 + 1) = v399;
      LOBYTE(v683) = 0;
      *(&v683 + 1) = v397;
      LOBYTE(v684[0]) = v398 & 1;
      *&v684[1] = 0;
      *(&v684[0] + 1) = 0;
      v689[2] = v683;
      v689[3] = *&v684[0];
      *&v689[4] = 0;
      v689[1] = v682;
      v689[0] = v681;
      LOBYTE(v668) = 1;
      BYTE8(v689[4]) = 1;
      v401 = v625;
      v402 = v400;
      outlined init with copy of PaceMetricView(&v681, v650);
      lazy protocol witness table accessor for type PaceMetricView and conformance PaceMetricView();
      _ConditionalContent<>.init(storage:)();
      v689[2] = v651;
      v689[3] = v652[0];
      *(&v689[3] + 9) = *(v652 + 9);
      v689[1] = v650[1];
      v689[0] = v650[0];
      LOBYTE(v670) = 0;
      BYTE9(v689[4]) = 0;
      __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI19_ConditionalContentVy07WorkoutB014PaceMetricViewVAFGMd);
      __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI19_ConditionalContentVy07WorkoutB018DistanceMetricViewVAD04LapsgH0VGMd);
      lazy protocol witness table accessor for type _ConditionalContent<StrideLengthMetricView, StrideLengthMetricView> and conformance <> _ConditionalContent<A, B>(&lazy protocol witness table cache variable for type _ConditionalContent<PaceMetricView, PaceMetricView> and conformance <> _ConditionalContent<A, B>, &_s7SwiftUI19_ConditionalContentVy07WorkoutB014PaceMetricViewVAFGMd, &_s7SwiftUI19_ConditionalContentVy07WorkoutB014PaceMetricViewVAFGMR, lazy protocol witness table accessor for type PaceMetricView and conformance PaceMetricView);
      lazy protocol witness table accessor for type _ConditionalContent<DistanceMetricView, LapsMetricView> and conformance <> _ConditionalContent<A, B>();
      _ConditionalContent<>.init(storage:)();
      v651 = v633;
      v652[0] = v634[0];
      *(v652 + 10) = *(v634 + 10);
      v650[0] = v631;
      v650[1] = v632;
      LOBYTE(v640) = 1;
      BYTE10(v652[1]) = 1;
      goto LABEL_61;
    case 43:
      v556 = v67;
      MetricsPublisher.powerMetricsPublisher.getter();
      v471 = PowerMetricsPublisher.livePowerZones.getter();

      if (v471)
      {
        v472 = dispatch thunk of LiveZones.elapsedTimeInCurrentZone.getter();
        v474 = v473;
      }

      else
      {
        v472 = 0;
        v474 = 1;
      }

      MetricsPublisher.powerMetricsPublisher.getter();
      v522 = PowerMetricsPublisher.livePowerZones.getter();

      if (v522)
      {
        v523 = dispatch thunk of LiveZones.isStale.getter();
      }

      else
      {
        v523 = 1;
      }

      TimeInZoneMetricView.init(elapsedTime:isStale:)(v472, v474 & 1, v523 & 1, &v681);
      v524 = v682;
      v525 = BYTE8(v682);
      LOBYTE(v668) = BYTE8(v681);
      LOBYTE(v666[0]) = BYTE8(v682);
      LOBYTE(v658) = 0;
      *&v689[0] = v681;
      WORD4(v689[0]) = WORD4(v681);
      *&v689[1] = v682;
      BYTE8(v689[1]) = BYTE8(v682);
      *&v689[2] = v683;
      BYTE8(v689[4]) = 0;
      outlined copy of Environment<WorkoutViewStyle>.Content(v682, SBYTE8(v682));
      lazy protocol witness table accessor for type TimeInZoneMetricView and conformance TimeInZoneMetricView();
      lazy protocol witness table accessor for type PaceMetricView and conformance PaceMetricView();
      _ConditionalContent<>.init(storage:)();
      v689[2] = v651;
      v689[3] = v652[0];
      *(&v689[3] + 9) = *(v652 + 9);
      v689[1] = v650[1];
      v689[0] = v650[0];
      LOBYTE(v670) = 0;
      BYTE9(v689[4]) = 0;
      __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI19_ConditionalContentVy07WorkoutB020TimeInZoneMetricViewVAD04PaceiJ0VGMd);
      __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI19_ConditionalContentVy07WorkoutB014PaceMetricViewVAFGMd);
      lazy protocol witness table accessor for type _ConditionalContent<TimeInZoneMetricView, PaceMetricView> and conformance <> _ConditionalContent<A, B>();
      lazy protocol witness table accessor for type _ConditionalContent<StrideLengthMetricView, StrideLengthMetricView> and conformance <> _ConditionalContent<A, B>(&lazy protocol witness table cache variable for type _ConditionalContent<PaceMetricView, PaceMetricView> and conformance <> _ConditionalContent<A, B>, &_s7SwiftUI19_ConditionalContentVy07WorkoutB014PaceMetricViewVAFGMd, &_s7SwiftUI19_ConditionalContentVy07WorkoutB014PaceMetricViewVAFGMR, lazy protocol witness table accessor for type PaceMetricView and conformance PaceMetricView);
      _ConditionalContent<>.init(storage:)();
      v651 = v633;
      v652[0] = v634[0];
      *(v652 + 10) = *(v634 + 10);
      v650[0] = v631;
      v650[1] = v632;
      LOBYTE(v640) = 0;
      BYTE10(v652[1]) = 0;
      __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI19_ConditionalContentVyACy07WorkoutB020TimeInZoneMetricViewVAD04PaceiJ0VGACyA2HGGMd);
      __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI19_ConditionalContentVyACy07WorkoutB014PaceMetricViewVAFGACyAD08DistancegH0VAD04LapsgH0VGGMd);
      lazy protocol witness table accessor for type _ConditionalContent<_ConditionalContent<TimeInZoneMetricView, PaceMetricView>, _ConditionalContent<PaceMetricView, PaceMetricView>> and conformance <> _ConditionalContent<A, B>();
      lazy protocol witness table accessor for type _ConditionalContent<_ConditionalContent<PaceMetricView, PaceMetricView>, _ConditionalContent<DistanceMetricView, LapsMetricView>> and conformance <> _ConditionalContent<A, B>();
      _ConditionalContent<>.init(storage:)();
      v526 = v689[3];
      v527 = v614;
      v614[2] = v689[2];
      v527[3] = v526;
      *(v527 + 59) = *(&v689[3] + 11);
      v528 = v689[1];
      *v527 = v689[0];
      v527[1] = v528;
      swift_storeEnumTagMultiPayload();
      __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI19_ConditionalContentVyACyACy07WorkoutB020TimeInZoneMetricViewVAD04PaceiJ0VGACyA2HGGACyAjCyAD08DistanceiJ0VAD04LapsiJ0VGGGMd);
      lazy protocol witness table accessor for type _ConditionalContent<_ConditionalContent<_ConditionalContent<EnergyMetricView, EnergyMetricView>, _ConditionalContent<HeartRateMetricView, HeartRateAggregateMetricView>>, _ConditionalContent<_ConditionalContent<HeartRateAggregateMetricView, ZoneMetricView>, _ConditionalContent<TimeInZoneMetricView, ZoneMetricView>>> and conformance <> _ConditionalContent<A, B>();
      lazy protocol witness table accessor for type _ConditionalContent<_ConditionalContent<_ConditionalContent<TimeInZoneMetricView, PaceMetricView>, _ConditionalContent<PaceMetricView, PaceMetricView>>, _ConditionalContent<_ConditionalContent<PaceMetricView, PaceMetricView>, _ConditionalContent<DistanceMetricView, LapsMetricView>>> and conformance <> _ConditionalContent<A, B>();
      v529 = v616;
      _ConditionalContent<>.init(storage:)();
LABEL_114:
      outlined init with copy of TupleView<(ModifiedContent<Text, MetricValueFont>, ModifiedContent<ModifiedContent<Text, MetricDescriptionCoreFont>, ExtendedLineSpacingSupport>)>(v529, v623, &_s7SwiftUI19_ConditionalContentVyACyACyACy07WorkoutB016EnergyMetricViewVAFGACyAD09HeartRategH0VAD0ij9AggregategH0VGGACyACyAkD04ZonegH0VGACyAD06TimeInlgH0VAOGGGACyACyACyArD04PacegH0VGACyA2WGGACyAyCyAD08DistancegH0VAD04LapsgH0VGGGGMd);
      swift_storeEnumTagMultiPayload();
      lazy protocol witness table accessor for type _ConditionalContent<_ConditionalContent<_ConditionalContent<_ConditionalContent<EnergyMetricView, EnergyMetricView>, _ConditionalContent<HeartRateMetricView, HeartRateAggregateMetricView>>, _ConditionalContent<_ConditionalContent<HeartRateAggregateMetricView, ZoneMetricView>, _ConditionalContent<TimeInZoneMetricView, ZoneMetricView>>>, _ConditionalContent<_ConditionalContent<_ConditionalContent<TimeInZoneMetricView, PaceMetricView>, _ConditionalContent<PaceMetricView, PaceMetricView>>, _ConditionalContent<_ConditionalContent<PaceMetricView, PaceMetricView>, _ConditionalContent<DistanceMetricView, LapsMetricView>>>> and conformance <> _ConditionalContent<A, B>();
      lazy protocol witness table accessor for type _ConditionalContent<_ConditionalContent<_ConditionalContent<_ConditionalContent<_ConditionalContent<_ConditionalContent<CadenceMetricView, EmptyView>, CadenceMetricView>, CadenceMetricView>, _ConditionalContent<ElevationChangeMetricView, CurrentElevationMetricView>>, _ConditionalContent<_ConditionalContent<PowerMetricView, PowerMetricView>, _ConditionalContent<PowerMetricView, FlightsClimbedMetricView>>>, _ConditionalContent<_ConditionalContent<_ConditionalContent<SegmentDurationMetricView, DistanceDetailMetricView>, _ConditionalContent<PaceMetricView, EnergyMetricView>>, _ConditionalContent<_ConditionalContent<EnergyMetricView, PowerMetricView>, _ConditionalContent<PowerMetricView, ModifiedContent<ModifiedContent<WorkoutTimeView, MetricDetail>, _ForegroundStyleModifier<Color>>>>>> and conformance <> _ConditionalContent<A, B>();
      v193 = v556;
      _ConditionalContent<>.init(storage:)();
      outlined destroy of TupleView<(ModifiedContent<Text, MetricValueFont>, ModifiedContent<ModifiedContent<Text, MetricDescriptionCoreFont>, ExtendedLineSpacingSupport>)>(v529, &_s7SwiftUI19_ConditionalContentVyACyACyACy07WorkoutB016EnergyMetricViewVAFGACyAD09HeartRategH0VAD0ij9AggregategH0VGGACyACyAkD04ZonegH0VGACyAD06TimeInlgH0VAOGGGACyACyACyArD04PacegH0VGACyA2WGGACyAyCyAD08DistancegH0VAD04LapsgH0VGGGGMd);
      outlined init with copy of TupleView<(ModifiedContent<Text, MetricValueFont>, ModifiedContent<ModifiedContent<Text, MetricDescriptionCoreFont>, ExtendedLineSpacingSupport>)>(v193, v629, &_s7SwiftUI19_ConditionalContentVyACyACyACyACy07WorkoutB016EnergyMetricViewVAFGACyAD09HeartRategH0VAD0ij9AggregategH0VGGACyACyAkD04ZonegH0VGACyAD06TimeInlgH0VAOGGGACyACyACyArD04PacegH0VGACyA2WGGACyAyCyAD08DistancegH0VAD04LapsgH0VGGGGACyACyACyACyACyACyAD07CadencegH0VAA05EmptyH0VGA8_GA8_GACyAD015ElevationChangegH0VAD07CurrenttgH0VGGACyACyAD05PowergH0VA21_GACyA21_AD014FlightsClimbedgH0VGGGACyACyACyAD015SegmentDurationgH0VAD0p6DetailgH0VGACyAwFGGACyACyAFA21_GACyA21_AA08ModifiedD0VyA37_yAD0emH0VAD0G6DetailVGAA24_ForegroundStyleModifierVyAA5ColorVGGGGGGGMd);
      swift_storeEnumTagMultiPayload();
      __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI19_ConditionalContentVyACyACyACy07WorkoutB024DistanceDetailMetricViewVAD04PacehI0VGACyAD012StrideLengthhI0VAKGGACyACyAD019VerticalOscillationhI0VAOGACyAD017GroundContactTimehI0VARGGGACyACyAD015ElevationChangehI0VAD016DownhillRunCounthI0VGACyAA05EmptyI0VAA6HStackVyAA05TupleI0VyAA08ModifiedD0VyAA4TextVAD0H9ValueFontVG_A6_yA6_yA8_AD0H19DescriptionCoreFontVGAD26ExtendedLineSpacingSupport33_241C09B5AC269BC1C919798A0AC522FDLLVGtGGGGGMd);
      lazy protocol witness table accessor for type _ConditionalContent<_ConditionalContent<_ConditionalContent<_ConditionalContent<_ConditionalContent<EnergyMetricView, EnergyMetricView>, _ConditionalContent<HeartRateMetricView, HeartRateAggregateMetricView>>, _ConditionalContent<_ConditionalContent<HeartRateAggregateMetricView, ZoneMetricView>, _ConditionalContent<TimeInZoneMetricView, ZoneMetricView>>>, _ConditionalContent<_ConditionalContent<_ConditionalContent<TimeInZoneMetricView, PaceMetricView>, _ConditionalContent<PaceMetricView, PaceMetricView>>, _ConditionalContent<_ConditionalContent<PaceMetricView, PaceMetricView>, _ConditionalContent<DistanceMetricView, LapsMetricView>>>>, _ConditionalContent<_ConditionalContent<_ConditionalContent<_ConditionalContent<_ConditionalContent<_ConditionalContent<CadenceMetricView, EmptyView>, CadenceMetricView>, CadenceMetricView>, _ConditionalContent<ElevationChangeMetricView, CurrentElevationMetricView>>, _ConditionalContent<_ConditionalContent<PowerMetricView, PowerMet();
      lazy protocol witness table accessor for type _ConditionalContent<_ConditionalContent<_ConditionalContent<_ConditionalContent<DistanceDetailMetricView, PaceMetricView>, _ConditionalContent<StrideLengthMetricView, StrideLengthMetricView>>, _ConditionalContent<_ConditionalContent<VerticalOscillationMetricView, VerticalOscillationMetricView>, _ConditionalContent<GroundContactTimeMetricView, GroundContactTimeMetricView>>>, _ConditionalContent<_ConditionalContent<ElevationChangeMetricView, DownhillRunCountMetricView>, _ConditionalContent<EmptyView, HStack<TupleView<(ModifiedContent<Text, MetricValueFont>, ModifiedContent<ModifiedContent<Text, MetricDescriptionCoreFont>, ExtendedLineSpacingSupport>)>>>>> and conformance <> _ConditionalContent<A, B>();
      _ConditionalContent<>.init(storage:)();
      v425 = v524;
      v426 = v525;
LABEL_115:
      outlined consume of Environment<WorkoutViewStyle>.Content(v425, v426);
      goto LABEL_116;
    case 44:
      v74 = v67;
      MetricsPublisher.segmentAveragePower.getter();
      v86 = v85;
      MetricsPublisher.workoutStatePublisher.getter();
      v87 = WorkoutStatePublisher.workoutPaused.getter();

      MetricsPublisher.workoutStatePublisher.getter();
      v88 = WorkoutStatePublisher.lowPowerModeAnimationSuspended.getter();

      v89 = swift_getKeyPath();
      LOBYTE(v650[0]) = 0;
      v90 = swift_getKeyPath();
      LOBYTE(v681) = 0;
      v91 = swift_getKeyPath();
      LOBYTE(v640) = 0;
      LOBYTE(v689[0]) = 0;
      v92 = v87 & 1;
      v93 = v620;
      *&v631 = v620;
      *(&v631 + 1) = v86;
      LOBYTE(v632) = 0;
      *(&v632 + 1) = 44;
      *&v633 = v625;
      BYTE8(v633) = v92;
      BYTE9(v633) = v88 & 1;
      *&v634[0] = v89;
      BYTE8(v634[0]) = v650[0];
      *&v634[1] = v90;
      BYTE8(v634[1]) = v681;
      *&v634[2] = v91;
      BYTE8(v634[2]) = 0;
      v651 = v633;
      v652[0] = v634[0];
      v652[1] = v634[1];
      *(&v652[1] + 9) = *(&v634[1] + 9);
      v650[0] = v631;
      v650[1] = v632;
      LOBYTE(v681) = 1;
      BYTE9(v652[2]) = 1;
      v94 = v625;
      v95 = v93;
      outlined init with copy of PowerMetricView(&v631, v689);
      lazy protocol witness table accessor for type EnergyMetricView and conformance EnergyMetricView();
      lazy protocol witness table accessor for type PowerMetricView and conformance PowerMetricView();
      _ConditionalContent<>.init(storage:)();
      v96 = v689[3];
      v97 = v600;
      v600[2] = v689[2];
      v97[3] = v96;
      v97[4] = v689[4];
      *(v97 + 74) = *(&v689[4] + 10);
      v98 = v689[1];
      *v97 = v689[0];
      v97[1] = v98;
      swift_storeEnumTagMultiPayload();
      __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI19_ConditionalContentVy07WorkoutB016EnergyMetricViewVAD05PowergH0VGMd);
      lazy protocol witness table accessor for type _ConditionalContent<EnergyMetricView, PowerMetricView> and conformance <> _ConditionalContent<A, B>();
      lazy protocol witness table accessor for type _ConditionalContent<PowerMetricView, ModifiedContent<ModifiedContent<WorkoutTimeView, MetricDetail>, _ForegroundStyleModifier<Color>>> and conformance <> _ConditionalContent<A, B>();
      v99 = v602;
      _ConditionalContent<>.init(storage:)();
      outlined init with copy of TupleView<(ModifiedContent<Text, MetricValueFont>, ModifiedContent<ModifiedContent<Text, MetricDescriptionCoreFont>, ExtendedLineSpacingSupport>)>(v99, v609, &_s7SwiftUI19_ConditionalContentVyACy07WorkoutB016EnergyMetricViewVAD05PowergH0VGACyAhA08ModifiedD0VyAKyAD0e4TimeH0VAD0G6DetailVGAA24_ForegroundStyleModifierVyAA5ColorVGGGGMd);
      swift_storeEnumTagMultiPayload();
      __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI19_ConditionalContentVyACy07WorkoutB025SegmentDurationMetricViewVAD014DistanceDetailhI0VGACyAD04PacehI0VAD06EnergyhI0VGGMd);
      lazy protocol witness table accessor for type _ConditionalContent<_ConditionalContent<SegmentDurationMetricView, DistanceDetailMetricView>, _ConditionalContent<PaceMetricView, EnergyMetricView>> and conformance <> _ConditionalContent<A, B>();
      lazy protocol witness table accessor for type _ConditionalContent<_ConditionalContent<EnergyMetricView, PowerMetricView>, _ConditionalContent<PowerMetricView, ModifiedContent<ModifiedContent<WorkoutTimeView, MetricDetail>, _ForegroundStyleModifier<Color>>>> and conformance <> _ConditionalContent<A, B>();
      v100 = v611;
      _ConditionalContent<>.init(storage:)();
      outlined destroy of TupleView<(ModifiedContent<Text, MetricValueFont>, ModifiedContent<ModifiedContent<Text, MetricDescriptionCoreFont>, ExtendedLineSpacingSupport>)>(v99, &_s7SwiftUI19_ConditionalContentVyACy07WorkoutB016EnergyMetricViewVAD05PowergH0VGACyAhA08ModifiedD0VyAKyAD0e4TimeH0VAD0G6DetailVGAA24_ForegroundStyleModifierVyAA5ColorVGGGGMd);
      outlined init with copy of TupleView<(ModifiedContent<Text, MetricValueFont>, ModifiedContent<ModifiedContent<Text, MetricDescriptionCoreFont>, ExtendedLineSpacingSupport>)>(v100, v617, &_s7SwiftUI19_ConditionalContentVyACyACy07WorkoutB025SegmentDurationMetricViewVAD014DistanceDetailhI0VGACyAD04PacehI0VAD06EnergyhI0VGGACyACyAmD05PowerhI0VGACyAqA08ModifiedD0VyATyAD0e4TimeI0VAD0hK0VGAA24_ForegroundStyleModifierVyAA5ColorVGGGGGMd);
      swift_storeEnumTagMultiPayload();
      __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI19_ConditionalContentVyACyACyACyACy07WorkoutB017CadenceMetricViewVAA05EmptyH0VGAFGAFGACyAD015ElevationChangegH0VAD07CurrentjgH0VGGACyACyAD05PowergH0VASGACyAsD014FlightsClimbedgH0VGGGMd);
      lazy protocol witness table accessor for type _ConditionalContent<_ConditionalContent<_ConditionalContent<_ConditionalContent<_ConditionalContent<CadenceMetricView, EmptyView>, CadenceMetricView>, CadenceMetricView>, _ConditionalContent<ElevationChangeMetricView, CurrentElevationMetricView>>, _ConditionalContent<_ConditionalContent<PowerMetricView, PowerMetricView>, _ConditionalContent<PowerMetricView, FlightsClimbedMetricView>>> and conformance <> _ConditionalContent<A, B>();
      lazy protocol witness table accessor for type _ConditionalContent<_ConditionalContent<_ConditionalContent<SegmentDurationMetricView, DistanceDetailMetricView>, _ConditionalContent<PaceMetricView, EnergyMetricView>>, _ConditionalContent<_ConditionalContent<EnergyMetricView, PowerMetricView>, _ConditionalContent<PowerMetricView, ModifiedContent<ModifiedContent<WorkoutTimeView, MetricDetail>, _ForegroundStyleModifier<Color>>>>> and conformance <> _ConditionalContent<A, B>();
      v101 = v619;
      _ConditionalContent<>.init(storage:)();
      outlined destroy of TupleView<(ModifiedContent<Text, MetricValueFont>, ModifiedContent<ModifiedContent<Text, MetricDescriptionCoreFont>, ExtendedLineSpacingSupport>)>(v100, &_s7SwiftUI19_ConditionalContentVyACyACy07WorkoutB025SegmentDurationMetricViewVAD014DistanceDetailhI0VGACyAD04PacehI0VAD06EnergyhI0VGGACyACyAmD05PowerhI0VGACyAqA08ModifiedD0VyATyAD0e4TimeI0VAD0hK0VGAA24_ForegroundStyleModifierVyAA5ColorVGGGGGMd);
      outlined init with copy of TupleView<(ModifiedContent<Text, MetricValueFont>, ModifiedContent<ModifiedContent<Text, MetricDescriptionCoreFont>, ExtendedLineSpacingSupport>)>(v101, v623, &_s7SwiftUI19_ConditionalContentVyACyACyACyACyACy07WorkoutB017CadenceMetricViewVAA05EmptyH0VGAFGAFGACyAD015ElevationChangegH0VAD07CurrentjgH0VGGACyACyAD05PowergH0VASGACyAsD014FlightsClimbedgH0VGGGACyACyACyAD015SegmentDurationgH0VAD014DistanceDetailgH0VGACyAD04PacegH0VAD06EnergygH0VGGACyACyA6_ASGACyAsA08ModifiedD0VyA11_yAD0e4TimeH0VAD0gS0VGAA24_ForegroundStyleModifierVyAA5ColorVGGGGGGMd);
      swift_storeEnumTagMultiPayload();
      lazy protocol witness table accessor for type _ConditionalContent<_ConditionalContent<_ConditionalContent<_ConditionalContent<EnergyMetricView, EnergyMetricView>, _ConditionalContent<HeartRateMetricView, HeartRateAggregateMetricView>>, _ConditionalContent<_ConditionalContent<HeartRateAggregateMetricView, ZoneMetricView>, _ConditionalContent<TimeInZoneMetricView, ZoneMetricView>>>, _ConditionalContent<_ConditionalContent<_ConditionalContent<TimeInZoneMetricView, PaceMetricView>, _ConditionalContent<PaceMetricView, PaceMetricView>>, _ConditionalContent<_ConditionalContent<PaceMetricView, PaceMetricView>, _ConditionalContent<DistanceMetricView, LapsMetricView>>>> and conformance <> _ConditionalContent<A, B>();
      lazy protocol witness table accessor for type _ConditionalContent<_ConditionalContent<_ConditionalContent<_ConditionalContent<_ConditionalContent<_ConditionalContent<CadenceMetricView, EmptyView>, CadenceMetricView>, CadenceMetricView>, _ConditionalContent<ElevationChangeMetricView, CurrentElevationMetricView>>, _ConditionalContent<_ConditionalContent<PowerMetricView, PowerMetricView>, _ConditionalContent<PowerMetricView, FlightsClimbedMetricView>>>, _ConditionalContent<_ConditionalContent<_ConditionalContent<SegmentDurationMetricView, DistanceDetailMetricView>, _ConditionalContent<PaceMetricView, EnergyMetricView>>, _ConditionalContent<_ConditionalContent<EnergyMetricView, PowerMetricView>, _ConditionalContent<PowerMetricView, ModifiedContent<ModifiedContent<WorkoutTimeView, MetricDetail>, _ForegroundStyleModifier<Color>>>>>> and conformance <> _ConditionalContent<A, B>();
      _ConditionalContent<>.init(storage:)();
      outlined destroy of TupleView<(ModifiedContent<Text, MetricValueFont>, ModifiedContent<ModifiedContent<Text, MetricDescriptionCoreFont>, ExtendedLineSpacingSupport>)>(v101, &_s7SwiftUI19_ConditionalContentVyACyACyACyACyACy07WorkoutB017CadenceMetricViewVAA05EmptyH0VGAFGAFGACyAD015ElevationChangegH0VAD07CurrentjgH0VGGACyACyAD05PowergH0VASGACyAsD014FlightsClimbedgH0VGGGACyACyACyAD015SegmentDurationgH0VAD014DistanceDetailgH0VGACyAD04PacegH0VAD06EnergygH0VGGACyACyA6_ASGACyAsA08ModifiedD0VyA11_yAD0e4TimeH0VAD0gS0VGAA24_ForegroundStyleModifierVyAA5ColorVGGGGGGMd);
      v102 = &_s7SwiftUI19_ConditionalContentVyACyACyACyACy07WorkoutB016EnergyMetricViewVAFGACyAD09HeartRategH0VAD0ij9AggregategH0VGGACyACyAkD04ZonegH0VGACyAD06TimeInlgH0VAOGGGACyACyACyArD04PacegH0VGACyA2WGGACyAyCyAD08DistancegH0VAD04LapsgH0VGGGGACyACyACyACyACyACyAD07CadencegH0VAA05EmptyH0VGA8_GA8_GACyAD015ElevationChangegH0VAD07CurrenttgH0VGGACyACyAD05PowergH0VA21_GACyA21_AD014FlightsClimbedgH0VGGGACyACyACyAD015SegmentDurationgH0VAD0p6DetailgH0VGACyAwFGGACyACyAFA21_GACyA21_AA08ModifiedD0VyA37_yAD0emH0VAD0G6DetailVGAA24_ForegroundStyleModifierVyAA5ColorVGGGGGGGMd;
      outlined init with copy of TupleView<(ModifiedContent<Text, MetricValueFont>, ModifiedContent<ModifiedContent<Text, MetricDescriptionCoreFont>, ExtendedLineSpacingSupport>)>(v74, v629, &_s7SwiftUI19_ConditionalContentVyACyACyACyACy07WorkoutB016EnergyMetricViewVAFGACyAD09HeartRategH0VAD0ij9AggregategH0VGGACyACyAkD04ZonegH0VGACyAD06TimeInlgH0VAOGGGACyACyACyArD04PacegH0VGACyA2WGGACyAyCyAD08DistancegH0VAD04LapsgH0VGGGGACyACyACyACyACyACyAD07CadencegH0VAA05EmptyH0VGA8_GA8_GACyAD015ElevationChangegH0VAD07CurrenttgH0VGGACyACyAD05PowergH0VA21_GACyA21_AD014FlightsClimbedgH0VGGGACyACyACyAD015SegmentDurationgH0VAD0p6DetailgH0VGACyAwFGGACyACyAFA21_GACyA21_AA08ModifiedD0VyA37_yAD0emH0VAD0G6DetailVGAA24_ForegroundStyleModifierVyAA5ColorVGGGGGGGMd);
      swift_storeEnumTagMultiPayload();
      __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI19_ConditionalContentVyACyACyACy07WorkoutB024DistanceDetailMetricViewVAD04PacehI0VGACyAD012StrideLengthhI0VAKGGACyACyAD019VerticalOscillationhI0VAOGACyAD017GroundContactTimehI0VARGGGACyACyAD015ElevationChangehI0VAD016DownhillRunCounthI0VGACyAA05EmptyI0VAA6HStackVyAA05TupleI0VyAA08ModifiedD0VyAA4TextVAD0H9ValueFontVG_A6_yA6_yA8_AD0H19DescriptionCoreFontVGAD26ExtendedLineSpacingSupport33_241C09B5AC269BC1C919798A0AC522FDLLVGtGGGGGMd);
      lazy protocol witness table accessor for type _ConditionalContent<_ConditionalContent<_ConditionalContent<_ConditionalContent<_ConditionalContent<EnergyMetricView, EnergyMetricView>, _ConditionalContent<HeartRateMetricView, HeartRateAggregateMetricView>>, _ConditionalContent<_ConditionalContent<HeartRateAggregateMetricView, ZoneMetricView>, _ConditionalContent<TimeInZoneMetricView, ZoneMetricView>>>, _ConditionalContent<_ConditionalContent<_ConditionalContent<TimeInZoneMetricView, PaceMetricView>, _ConditionalContent<PaceMetricView, PaceMetricView>>, _ConditionalContent<_ConditionalContent<PaceMetricView, PaceMetricView>, _ConditionalContent<DistanceMetricView, LapsMetricView>>>>, _ConditionalContent<_ConditionalContent<_ConditionalContent<_ConditionalContent<_ConditionalContent<_ConditionalContent<CadenceMetricView, EmptyView>, CadenceMetricView>, CadenceMetricView>, _ConditionalContent<ElevationChangeMetricView, CurrentElevationMetricView>>, _ConditionalContent<_ConditionalContent<PowerMetricView, PowerMet();
      lazy protocol witness table accessor for type _ConditionalContent<_ConditionalContent<_ConditionalContent<_ConditionalContent<DistanceDetailMetricView, PaceMetricView>, _ConditionalContent<StrideLengthMetricView, StrideLengthMetricView>>, _ConditionalContent<_ConditionalContent<VerticalOscillationMetricView, VerticalOscillationMetricView>, _ConditionalContent<GroundContactTimeMetricView, GroundContactTimeMetricView>>>, _ConditionalContent<_ConditionalContent<ElevationChangeMetricView, DownhillRunCountMetricView>, _ConditionalContent<EmptyView, HStack<TupleView<(ModifiedContent<Text, MetricValueFont>, ModifiedContent<ModifiedContent<Text, MetricDescriptionCoreFont>, ExtendedLineSpacingSupport>)>>>>> and conformance <> _ConditionalContent<A, B>();
      _ConditionalContent<>.init(storage:)();
      v103 = &v631;
      goto LABEL_49;
    case 45:
      v74 = v67;
      MetricsPublisher.splitAveragePower.getter();
      v340 = v339;
      MetricsPublisher.workoutStatePublisher.getter();
      v341 = WorkoutStatePublisher.workoutPaused.getter();

      MetricsPublisher.workoutStatePublisher.getter();
      v342 = WorkoutStatePublisher.lowPowerModeAnimationSuspended.getter();

      v343 = swift_getKeyPath();
      LOBYTE(v631) = 0;
      v344 = swift_getKeyPath();
      LOBYTE(v681) = 0;
      v345 = swift_getKeyPath();
      LOBYTE(v640) = 0;
      LOBYTE(v650[0]) = 0;
      v346 = v341 & 1;
      v347 = v342 & 1;
      v348 = v620;
      *&v689[0] = v620;
      *(&v689[0] + 1) = v340;
      LOBYTE(v689[1]) = 0;
      *(&v689[1] + 1) = 45;
      v349 = v625;
      *&v689[2] = v625;
      BYTE8(v689[2]) = v346;
      BYTE9(v689[2]) = v347;
      *&v689[3] = v343;
      BYTE8(v689[3]) = v631;
      *&v689[4] = v344;
      BYTE8(v689[4]) = v681;
      *&v689[5] = v345;
      BYTE8(v689[5]) = 0;
      v350 = v689[3];
      v351 = v583;
      v583[2] = v689[2];
      v351[3] = v350;
      v351[4] = v689[4];
      *(v351 + 73) = *(&v689[4] + 9);
      v352 = v689[1];
      *v351 = v689[0];
      v351[1] = v352;
      swift_storeEnumTagMultiPayload();
      v353 = v349;
      v354 = v348;
      outlined init with copy of PowerMetricView(v689, v650);
      lazy protocol witness table accessor for type PowerMetricView and conformance PowerMetricView();
      lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<WorkoutTimeView, MetricDetail>, _ForegroundStyleModifier<Color>> and conformance <> ModifiedContent<A, B>();
      v355 = v585;
      _ConditionalContent<>.init(storage:)();
      outlined init with copy of TupleView<(ModifiedContent<Text, MetricValueFont>, ModifiedContent<ModifiedContent<Text, MetricDescriptionCoreFont>, ExtendedLineSpacingSupport>)>(v355, v600, &_s7SwiftUI19_ConditionalContentVy07WorkoutB015PowerMetricViewVAA08ModifiedD0VyAHyAD0e4TimeH0VAD0G6DetailVGAA24_ForegroundStyleModifierVyAA5ColorVGGGMd);
      swift_storeEnumTagMultiPayload();
      __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI19_ConditionalContentVy07WorkoutB016EnergyMetricViewVAD05PowergH0VGMd);
      lazy protocol witness table accessor for type _ConditionalContent<EnergyMetricView, PowerMetricView> and conformance <> _ConditionalContent<A, B>();
      lazy protocol witness table accessor for type _ConditionalContent<PowerMetricView, ModifiedContent<ModifiedContent<WorkoutTimeView, MetricDetail>, _ForegroundStyleModifier<Color>>> and conformance <> _ConditionalContent<A, B>();
      v356 = v602;
      _ConditionalContent<>.init(storage:)();
      outlined destroy of TupleView<(ModifiedContent<Text, MetricValueFont>, ModifiedContent<ModifiedContent<Text, MetricDescriptionCoreFont>, ExtendedLineSpacingSupport>)>(v355, &_s7SwiftUI19_ConditionalContentVy07WorkoutB015PowerMetricViewVAA08ModifiedD0VyAHyAD0e4TimeH0VAD0G6DetailVGAA24_ForegroundStyleModifierVyAA5ColorVGGGMd);
      outlined init with copy of TupleView<(ModifiedContent<Text, MetricValueFont>, ModifiedContent<ModifiedContent<Text, MetricDescriptionCoreFont>, ExtendedLineSpacingSupport>)>(v356, v609, &_s7SwiftUI19_ConditionalContentVyACy07WorkoutB016EnergyMetricViewVAD05PowergH0VGACyAhA08ModifiedD0VyAKyAD0e4TimeH0VAD0G6DetailVGAA24_ForegroundStyleModifierVyAA5ColorVGGGGMd);
      swift_storeEnumTagMultiPayload();
      __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI19_ConditionalContentVyACy07WorkoutB025SegmentDurationMetricViewVAD014DistanceDetailhI0VGACyAD04PacehI0VAD06EnergyhI0VGGMd);
      lazy protocol witness table accessor for type _ConditionalContent<_ConditionalContent<SegmentDurationMetricView, DistanceDetailMetricView>, _ConditionalContent<PaceMetricView, EnergyMetricView>> and conformance <> _ConditionalContent<A, B>();
      lazy protocol witness table accessor for type _ConditionalContent<_ConditionalContent<EnergyMetricView, PowerMetricView>, _ConditionalContent<PowerMetricView, ModifiedContent<ModifiedContent<WorkoutTimeView, MetricDetail>, _ForegroundStyleModifier<Color>>>> and conformance <> _ConditionalContent<A, B>();
      v357 = v611;
      _ConditionalContent<>.init(storage:)();
      outlined destroy of TupleView<(ModifiedContent<Text, MetricValueFont>, ModifiedContent<ModifiedContent<Text, MetricDescriptionCoreFont>, ExtendedLineSpacingSupport>)>(v356, &_s7SwiftUI19_ConditionalContentVyACy07WorkoutB016EnergyMetricViewVAD05PowergH0VGACyAhA08ModifiedD0VyAKyAD0e4TimeH0VAD0G6DetailVGAA24_ForegroundStyleModifierVyAA5ColorVGGGGMd);
      outlined init with copy of TupleView<(ModifiedContent<Text, MetricValueFont>, ModifiedContent<ModifiedContent<Text, MetricDescriptionCoreFont>, ExtendedLineSpacingSupport>)>(v357, v617, &_s7SwiftUI19_ConditionalContentVyACyACy07WorkoutB025SegmentDurationMetricViewVAD014DistanceDetailhI0VGACyAD04PacehI0VAD06EnergyhI0VGGACyACyAmD05PowerhI0VGACyAqA08ModifiedD0VyATyAD0e4TimeI0VAD0hK0VGAA24_ForegroundStyleModifierVyAA5ColorVGGGGGMd);
      swift_storeEnumTagMultiPayload();
      __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI19_ConditionalContentVyACyACyACyACy07WorkoutB017CadenceMetricViewVAA05EmptyH0VGAFGAFGACyAD015ElevationChangegH0VAD07CurrentjgH0VGGACyACyAD05PowergH0VASGACyAsD014FlightsClimbedgH0VGGGMd);
      lazy protocol witness table accessor for type _ConditionalContent<_ConditionalContent<_ConditionalContent<_ConditionalContent<_ConditionalContent<CadenceMetricView, EmptyView>, CadenceMetricView>, CadenceMetricView>, _ConditionalContent<ElevationChangeMetricView, CurrentElevationMetricView>>, _ConditionalContent<_ConditionalContent<PowerMetricView, PowerMetricView>, _ConditionalContent<PowerMetricView, FlightsClimbedMetricView>>> and conformance <> _ConditionalContent<A, B>();
      lazy protocol witness table accessor for type _ConditionalContent<_ConditionalContent<_ConditionalContent<SegmentDurationMetricView, DistanceDetailMetricView>, _ConditionalContent<PaceMetricView, EnergyMetricView>>, _ConditionalContent<_ConditionalContent<EnergyMetricView, PowerMetricView>, _ConditionalContent<PowerMetricView, ModifiedContent<ModifiedContent<WorkoutTimeView, MetricDetail>, _ForegroundStyleModifier<Color>>>>> and conformance <> _ConditionalContent<A, B>();
      v358 = v619;
      _ConditionalContent<>.init(storage:)();
      outlined destroy of TupleView<(ModifiedContent<Text, MetricValueFont>, ModifiedContent<ModifiedContent<Text, MetricDescriptionCoreFont>, ExtendedLineSpacingSupport>)>(v357, &_s7SwiftUI19_ConditionalContentVyACyACy07WorkoutB025SegmentDurationMetricViewVAD014DistanceDetailhI0VGACyAD04PacehI0VAD06EnergyhI0VGGACyACyAmD05PowerhI0VGACyAqA08ModifiedD0VyATyAD0e4TimeI0VAD0hK0VGAA24_ForegroundStyleModifierVyAA5ColorVGGGGGMd);
      outlined init with copy of TupleView<(ModifiedContent<Text, MetricValueFont>, ModifiedContent<ModifiedContent<Text, MetricDescriptionCoreFont>, ExtendedLineSpacingSupport>)>(v358, v623, &_s7SwiftUI19_ConditionalContentVyACyACyACyACyACy07WorkoutB017CadenceMetricViewVAA05EmptyH0VGAFGAFGACyAD015ElevationChangegH0VAD07CurrentjgH0VGGACyACyAD05PowergH0VASGACyAsD014FlightsClimbedgH0VGGGACyACyACyAD015SegmentDurationgH0VAD014DistanceDetailgH0VGACyAD04PacegH0VAD06EnergygH0VGGACyACyA6_ASGACyAsA08ModifiedD0VyA11_yAD0e4TimeH0VAD0gS0VGAA24_ForegroundStyleModifierVyAA5ColorVGGGGGGMd);
      swift_storeEnumTagMultiPayload();
      lazy protocol witness table accessor for type _ConditionalContent<_ConditionalContent<_ConditionalContent<_ConditionalContent<EnergyMetricView, EnergyMetricView>, _ConditionalContent<HeartRateMetricView, HeartRateAggregateMetricView>>, _ConditionalContent<_ConditionalContent<HeartRateAggregateMetricView, ZoneMetricView>, _ConditionalContent<TimeInZoneMetricView, ZoneMetricView>>>, _ConditionalContent<_ConditionalContent<_ConditionalContent<TimeInZoneMetricView, PaceMetricView>, _ConditionalContent<PaceMetricView, PaceMetricView>>, _ConditionalContent<_ConditionalContent<PaceMetricView, PaceMetricView>, _ConditionalContent<DistanceMetricView, LapsMetricView>>>> and conformance <> _ConditionalContent<A, B>();
      lazy protocol witness table accessor for type _ConditionalContent<_ConditionalContent<_ConditionalContent<_ConditionalContent<_ConditionalContent<_ConditionalContent<CadenceMetricView, EmptyView>, CadenceMetricView>, CadenceMetricView>, _ConditionalContent<ElevationChangeMetricView, CurrentElevationMetricView>>, _ConditionalContent<_ConditionalContent<PowerMetricView, PowerMetricView>, _ConditionalContent<PowerMetricView, FlightsClimbedMetricView>>>, _ConditionalContent<_ConditionalContent<_ConditionalContent<SegmentDurationMetricView, DistanceDetailMetricView>, _ConditionalContent<PaceMetricView, EnergyMetricView>>, _ConditionalContent<_ConditionalContent<EnergyMetricView, PowerMetricView>, _ConditionalContent<PowerMetricView, ModifiedContent<ModifiedContent<WorkoutTimeView, MetricDetail>, _ForegroundStyleModifier<Color>>>>>> and conformance <> _ConditionalContent<A, B>();
      _ConditionalContent<>.init(storage:)();
      outlined destroy of TupleView<(ModifiedContent<Text, MetricValueFont>, ModifiedContent<ModifiedContent<Text, MetricDescriptionCoreFont>, ExtendedLineSpacingSupport>)>(v358, &_s7SwiftUI19_ConditionalContentVyACyACyACyACyACy07WorkoutB017CadenceMetricViewVAA05EmptyH0VGAFGAFGACyAD015ElevationChangegH0VAD07CurrentjgH0VGGACyACyAD05PowergH0VASGACyAsD014FlightsClimbedgH0VGGGACyACyACyAD015SegmentDurationgH0VAD014DistanceDetailgH0VGACyAD04PacegH0VAD06EnergygH0VGGACyACyA6_ASGACyAsA08ModifiedD0VyA11_yAD0e4TimeH0VAD0gS0VGAA24_ForegroundStyleModifierVyAA5ColorVGGGGGGMd);
      v102 = &_s7SwiftUI19_ConditionalContentVyACyACyACyACy07WorkoutB016EnergyMetricViewVAFGACyAD09HeartRategH0VAD0ij9AggregategH0VGGACyACyAkD04ZonegH0VGACyAD06TimeInlgH0VAOGGGACyACyACyArD04PacegH0VGACyA2WGGACyAyCyAD08DistancegH0VAD04LapsgH0VGGGGACyACyACyACyACyACyAD07CadencegH0VAA05EmptyH0VGA8_GA8_GACyAD015ElevationChangegH0VAD07CurrenttgH0VGGACyACyAD05PowergH0VA21_GACyA21_AD014FlightsClimbedgH0VGGGACyACyACyAD015SegmentDurationgH0VAD0p6DetailgH0VGACyAwFGGACyACyAFA21_GACyA21_AA08ModifiedD0VyA37_yAD0emH0VAD0G6DetailVGAA24_ForegroundStyleModifierVyAA5ColorVGGGGGGGMd;
      outlined init with copy of TupleView<(ModifiedContent<Text, MetricValueFont>, ModifiedContent<ModifiedContent<Text, MetricDescriptionCoreFont>, ExtendedLineSpacingSupport>)>(v74, v629, &_s7SwiftUI19_ConditionalContentVyACyACyACyACy07WorkoutB016EnergyMetricViewVAFGACyAD09HeartRategH0VAD0ij9AggregategH0VGGACyACyAkD04ZonegH0VGACyAD06TimeInlgH0VAOGGGACyACyACyArD04PacegH0VGACyA2WGGACyAyCyAD08DistancegH0VAD04LapsgH0VGGGGACyACyACyACyACyACyAD07CadencegH0VAA05EmptyH0VGA8_GA8_GACyAD015ElevationChangegH0VAD07CurrenttgH0VGGACyACyAD05PowergH0VA21_GACyA21_AD014FlightsClimbedgH0VGGGACyACyACyAD015SegmentDurationgH0VAD0p6DetailgH0VGACyAwFGGACyACyAFA21_GACyA21_AA08ModifiedD0VyA37_yAD0emH0VAD0G6DetailVGAA24_ForegroundStyleModifierVyAA5ColorVGGGGGGGMd);
      swift_storeEnumTagMultiPayload();
      __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI19_ConditionalContentVyACyACyACy07WorkoutB024DistanceDetailMetricViewVAD04PacehI0VGACyAD012StrideLengthhI0VAKGGACyACyAD019VerticalOscillationhI0VAOGACyAD017GroundContactTimehI0VARGGGACyACyAD015ElevationChangehI0VAD016DownhillRunCounthI0VGACyAA05EmptyI0VAA6HStackVyAA05TupleI0VyAA08ModifiedD0VyAA4TextVAD0H9ValueFontVG_A6_yA6_yA8_AD0H19DescriptionCoreFontVGAD26ExtendedLineSpacingSupport33_241C09B5AC269BC1C919798A0AC522FDLLVGtGGGGGMd);
      lazy protocol witness table accessor for type _ConditionalContent<_ConditionalContent<_ConditionalContent<_ConditionalContent<_ConditionalContent<EnergyMetricView, EnergyMetricView>, _ConditionalContent<HeartRateMetricView, HeartRateAggregateMetricView>>, _ConditionalContent<_ConditionalContent<HeartRateAggregateMetricView, ZoneMetricView>, _ConditionalContent<TimeInZoneMetricView, ZoneMetricView>>>, _ConditionalContent<_ConditionalContent<_ConditionalContent<TimeInZoneMetricView, PaceMetricView>, _ConditionalContent<PaceMetricView, PaceMetricView>>, _ConditionalContent<_ConditionalContent<PaceMetricView, PaceMetricView>, _ConditionalContent<DistanceMetricView, LapsMetricView>>>>, _ConditionalContent<_ConditionalContent<_ConditionalContent<_ConditionalContent<_ConditionalContent<_ConditionalContent<CadenceMetricView, EmptyView>, CadenceMetricView>, CadenceMetricView>, _ConditionalContent<ElevationChangeMetricView, CurrentElevationMetricView>>, _ConditionalContent<_ConditionalContent<PowerMetricView, PowerMet();
      lazy protocol witness table accessor for type _ConditionalContent<_ConditionalContent<_ConditionalContent<_ConditionalContent<DistanceDetailMetricView, PaceMetricView>, _ConditionalContent<StrideLengthMetricView, StrideLengthMetricView>>, _ConditionalContent<_ConditionalContent<VerticalOscillationMetricView, VerticalOscillationMetricView>, _ConditionalContent<GroundContactTimeMetricView, GroundContactTimeMetricView>>>, _ConditionalContent<_ConditionalContent<ElevationChangeMetricView, DownhillRunCountMetricView>, _ConditionalContent<EmptyView, HStack<TupleView<(ModifiedContent<Text, MetricValueFont>, ModifiedContent<ModifiedContent<Text, MetricDescriptionCoreFont>, ExtendedLineSpacingSupport>)>>>>> and conformance <> _ConditionalContent<A, B>();
      _ConditionalContent<>.init(storage:)();
      v103 = v689;
LABEL_49:
      outlined destroy of PowerMetricView(v103);
      goto LABEL_64;
    case 47:
      v556 = v67;
      (*(v588 + 104))(v32, *MEMORY[0x277D7DF98], v589, v65);
      MetricsPublisher.powerMetricsPublisher.getter();
      v83 = PowerMetricsPublisher.livePowerZones.getter();

      if (v83)
      {
        v625 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11WorkoutCore9LiveZonesCyAA0C9PowerZoneCGMd);
        v84 = lazy protocol witness table accessor for type HStack<TupleView<(ModifiedContent<Text, MetricValueFont>, ModifiedContent<ModifiedContent<Text, MetricDescriptionCoreFont>, ExtendedLineSpacingSupport>)>> and conformance HStack<A>(&lazy protocol witness table cache variable for type LiveZones<LivePowerZone> and conformance LiveZones<A>, &_s11WorkoutCore9LiveZonesCyAA0C9PowerZoneCGMd);
      }

      else
      {
        v625 = 0;
        v84 = 0;
      }

      MetricsPublisher.powerMetricsPublisher.getter();
      v495 = PowerMetricsPublisher.currentPower.getter();
      v497 = v496;

      MetricsPublisher.powerMetricsPublisher.getter();
      v498 = PowerMetricsPublisher.livePowerZones.getter();

      if (v498)
      {
        v499 = dispatch thunk of LiveZones.isStale.getter();
      }

      else
      {
        v499 = 1;
      }

      v500 = v593;
      v501 = &v37[*(v593 + 32)];
      *v501 = swift_getKeyPath();
      v501[8] = 0;
      (*(v588 + 32))(v37, v32, v589);
      v502 = &v37[v500[5]];
      *v502 = v83;
      v502[1] = 0;
      v503 = v625;
      v502[2] = 0;
      v502[3] = v503;
      v502[4] = v84;
      v504 = &v37[v500[6]];
      *v504 = v495;
      v504[8] = v497 & 1;
      v37[v500[7]] = v499 & 1;
      v505 = v565;
      outlined init with take of ZoneMetricView(v37, v565);
      v311 = type metadata accessor for ZoneMetricView;
      _s9WorkoutUI0A8TimeViewVWOcTm_0(v505, v579, type metadata accessor for ZoneMetricView);
      swift_storeEnumTagMultiPayload();
      lazy protocol witness table accessor for type TimeInZoneMetricView and conformance TimeInZoneMetricView();
      lazy protocol witness table accessor for type HeartRateMetricView and conformance HeartRateMetricView(&lazy protocol witness table cache variable for type ZoneMetricView and conformance ZoneMetricView, type metadata accessor for ZoneMetricView);
      v506 = v580;
      _ConditionalContent<>.init(storage:)();
      v507 = &_s7SwiftUI19_ConditionalContentVy07WorkoutB020TimeInZoneMetricViewVAD0hiJ0VGMd;
      outlined init with copy of TupleView<(ModifiedContent<Text, MetricValueFont>, ModifiedContent<ModifiedContent<Text, MetricDescriptionCoreFont>, ExtendedLineSpacingSupport>)>(v506, v596, &_s7SwiftUI19_ConditionalContentVy07WorkoutB020TimeInZoneMetricViewVAD0hiJ0VGMd);
LABEL_102:
      swift_storeEnumTagMultiPayload();
      lazy protocol witness table accessor for type _ConditionalContent<HeartRateAggregateMetricView, ZoneMetricView> and conformance <> _ConditionalContent<A, B>();
      lazy protocol witness table accessor for type _ConditionalContent<TimeInZoneMetricView, ZoneMetricView> and conformance <> _ConditionalContent<A, B>();
      v518 = v598;
      _ConditionalContent<>.init(storage:)();
      outlined destroy of TupleView<(ModifiedContent<Text, MetricValueFont>, ModifiedContent<ModifiedContent<Text, MetricDescriptionCoreFont>, ExtendedLineSpacingSupport>)>(v506, v507);
      outlined init with copy of TupleView<(ModifiedContent<Text, MetricValueFont>, ModifiedContent<ModifiedContent<Text, MetricDescriptionCoreFont>, ExtendedLineSpacingSupport>)>(v518, v605, &_s7SwiftUI19_ConditionalContentVyACy07WorkoutB028HeartRateAggregateMetricViewVAD04ZoneiJ0VGACyAD06TimeInkiJ0VAHGGMd);
      swift_storeEnumTagMultiPayload();
      lazy protocol witness table accessor for type _ConditionalContent<_ConditionalContent<EnergyMetricView, EnergyMetricView>, _ConditionalContent<HeartRateMetricView, HeartRateAggregateMetricView>> and conformance <> _ConditionalContent<A, B>();
      lazy protocol witness table accessor for type _ConditionalContent<_ConditionalContent<HeartRateAggregateMetricView, ZoneMetricView>, _ConditionalContent<TimeInZoneMetricView, ZoneMetricView>> and conformance <> _ConditionalContent<A, B>();
      v519 = v608;
      _ConditionalContent<>.init(storage:)();
      outlined destroy of TupleView<(ModifiedContent<Text, MetricValueFont>, ModifiedContent<ModifiedContent<Text, MetricDescriptionCoreFont>, ExtendedLineSpacingSupport>)>(v518, &_s7SwiftUI19_ConditionalContentVyACy07WorkoutB028HeartRateAggregateMetricViewVAD04ZoneiJ0VGACyAD06TimeInkiJ0VAHGGMd);
      outlined init with copy of TupleView<(ModifiedContent<Text, MetricValueFont>, ModifiedContent<ModifiedContent<Text, MetricDescriptionCoreFont>, ExtendedLineSpacingSupport>)>(v519, v614, &_s7SwiftUI19_ConditionalContentVyACyACy07WorkoutB016EnergyMetricViewVAFGACyAD09HeartRategH0VAD0ij9AggregategH0VGGACyACyAkD04ZonegH0VGACyAD06TimeInlgH0VAOGGGMd);
      swift_storeEnumTagMultiPayload();
      __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI19_ConditionalContentVyACyACy07WorkoutB020TimeInZoneMetricViewVAD04PaceiJ0VGACyA2HGGACyAjCyAD08DistanceiJ0VAD04LapsiJ0VGGGMd);
      lazy protocol witness table accessor for type _ConditionalContent<_ConditionalContent<_ConditionalContent<EnergyMetricView, EnergyMetricView>, _ConditionalContent<HeartRateMetricView, HeartRateAggregateMetricView>>, _ConditionalContent<_ConditionalContent<HeartRateAggregateMetricView, ZoneMetricView>, _ConditionalContent<TimeInZoneMetricView, ZoneMetricView>>> and conformance <> _ConditionalContent<A, B>();
      lazy protocol witness table accessor for type _ConditionalContent<_ConditionalContent<_ConditionalContent<TimeInZoneMetricView, PaceMetricView>, _ConditionalContent<PaceMetricView, PaceMetricView>>, _ConditionalContent<_ConditionalContent<PaceMetricView, PaceMetricView>, _ConditionalContent<DistanceMetricView, LapsMetricView>>> and conformance <> _ConditionalContent<A, B>();
      v520 = v616;
      _ConditionalContent<>.init(storage:)();
      outlined destroy of TupleView<(ModifiedContent<Text, MetricValueFont>, ModifiedContent<ModifiedContent<Text, MetricDescriptionCoreFont>, ExtendedLineSpacingSupport>)>(v519, &_s7SwiftUI19_ConditionalContentVyACyACy07WorkoutB016EnergyMetricViewVAFGACyAD09HeartRategH0VAD0ij9AggregategH0VGGACyACyAkD04ZonegH0VGACyAD06TimeInlgH0VAOGGGMd);
      outlined init with copy of TupleView<(ModifiedContent<Text, MetricValueFont>, ModifiedContent<ModifiedContent<Text, MetricDescriptionCoreFont>, ExtendedLineSpacingSupport>)>(v520, v623, &_s7SwiftUI19_ConditionalContentVyACyACyACy07WorkoutB016EnergyMetricViewVAFGACyAD09HeartRategH0VAD0ij9AggregategH0VGGACyACyAkD04ZonegH0VGACyAD06TimeInlgH0VAOGGGACyACyACyArD04PacegH0VGACyA2WGGACyAyCyAD08DistancegH0VAD04LapsgH0VGGGGMd);
      swift_storeEnumTagMultiPayload();
      lazy protocol witness table accessor for type _ConditionalContent<_ConditionalContent<_ConditionalContent<_ConditionalContent<EnergyMetricView, EnergyMetricView>, _ConditionalContent<HeartRateMetricView, HeartRateAggregateMetricView>>, _ConditionalContent<_ConditionalContent<HeartRateAggregateMetricView, ZoneMetricView>, _ConditionalContent<TimeInZoneMetricView, ZoneMetricView>>>, _ConditionalContent<_ConditionalContent<_ConditionalContent<TimeInZoneMetricView, PaceMetricView>, _ConditionalContent<PaceMetricView, PaceMetricView>>, _ConditionalContent<_ConditionalContent<PaceMetricView, PaceMetricView>, _ConditionalContent<DistanceMetricView, LapsMetricView>>>> and conformance <> _ConditionalContent<A, B>();
      lazy protocol witness table accessor for type _ConditionalContent<_ConditionalContent<_ConditionalContent<_ConditionalContent<_ConditionalContent<_ConditionalContent<CadenceMetricView, EmptyView>, CadenceMetricView>, CadenceMetricView>, _ConditionalContent<ElevationChangeMetricView, CurrentElevationMetricView>>, _ConditionalContent<_ConditionalContent<PowerMetricView, PowerMetricView>, _ConditionalContent<PowerMetricView, FlightsClimbedMetricView>>>, _ConditionalContent<_ConditionalContent<_ConditionalContent<SegmentDurationMetricView, DistanceDetailMetricView>, _ConditionalContent<PaceMetricView, EnergyMetricView>>, _ConditionalContent<_ConditionalContent<EnergyMetricView, PowerMetricView>, _ConditionalContent<PowerMetricView, ModifiedContent<ModifiedContent<WorkoutTimeView, MetricDetail>, _ForegroundStyleModifier<Color>>>>>> and conformance <> _ConditionalContent<A, B>();
      v521 = v556;
      _ConditionalContent<>.init(storage:)();
      outlined destroy of TupleView<(ModifiedContent<Text, MetricValueFont>, ModifiedContent<ModifiedContent<Text, MetricDescriptionCoreFont>, ExtendedLineSpacingSupport>)>(v520, &_s7SwiftUI19_ConditionalContentVyACyACyACy07WorkoutB016EnergyMetricViewVAFGACyAD09HeartRategH0VAD0ij9AggregategH0VGGACyACyAkD04ZonegH0VGACyAD06TimeInlgH0VAOGGGACyACyACyArD04PacegH0VGACyA2WGGACyAyCyAD08DistancegH0VAD04LapsgH0VGGGGMd);
      outlined init with copy of TupleView<(ModifiedContent<Text, MetricValueFont>, ModifiedContent<ModifiedContent<Text, MetricDescriptionCoreFont>, ExtendedLineSpacingSupport>)>(v521, v629, &_s7SwiftUI19_ConditionalContentVyACyACyACyACy07WorkoutB016EnergyMetricViewVAFGACyAD09HeartRategH0VAD0ij9AggregategH0VGGACyACyAkD04ZonegH0VGACyAD06TimeInlgH0VAOGGGACyACyACyArD04PacegH0VGACyA2WGGACyAyCyAD08DistancegH0VAD04LapsgH0VGGGGACyACyACyACyACyACyAD07CadencegH0VAA05EmptyH0VGA8_GA8_GACyAD015ElevationChangegH0VAD07CurrenttgH0VGGACyACyAD05PowergH0VA21_GACyA21_AD014FlightsClimbedgH0VGGGACyACyACyAD015SegmentDurationgH0VAD0p6DetailgH0VGACyAwFGGACyACyAFA21_GACyA21_AA08ModifiedD0VyA37_yAD0emH0VAD0G6DetailVGAA24_ForegroundStyleModifierVyAA5ColorVGGGGGGGMd);
      swift_storeEnumTagMultiPayload();
      __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI19_ConditionalContentVyACyACyACy07WorkoutB024DistanceDetailMetricViewVAD04PacehI0VGACyAD012StrideLengthhI0VAKGGACyACyAD019VerticalOscillationhI0VAOGACyAD017GroundContactTimehI0VARGGGACyACyAD015ElevationChangehI0VAD016DownhillRunCounthI0VGACyAA05EmptyI0VAA6HStackVyAA05TupleI0VyAA08ModifiedD0VyAA4TextVAD0H9ValueFontVG_A6_yA6_yA8_AD0H19DescriptionCoreFontVGAD26ExtendedLineSpacingSupport33_241C09B5AC269BC1C919798A0AC522FDLLVGtGGGGGMd);
      lazy protocol witness table accessor for type _ConditionalContent<_ConditionalContent<_ConditionalContent<_ConditionalContent<_ConditionalContent<EnergyMetricView, EnergyMetricView>, _ConditionalContent<HeartRateMetricView, HeartRateAggregateMetricView>>, _ConditionalContent<_ConditionalContent<HeartRateAggregateMetricView, ZoneMetricView>, _ConditionalContent<TimeInZoneMetricView, ZoneMetricView>>>, _ConditionalContent<_ConditionalContent<_ConditionalContent<TimeInZoneMetricView, PaceMetricView>, _ConditionalContent<PaceMetricView, PaceMetricView>>, _ConditionalContent<_ConditionalContent<PaceMetricView, PaceMetricView>, _ConditionalContent<DistanceMetricView, LapsMetricView>>>>, _ConditionalContent<_ConditionalContent<_ConditionalContent<_ConditionalContent<_ConditionalContent<_ConditionalContent<CadenceMetricView, EmptyView>, CadenceMetricView>, CadenceMetricView>, _ConditionalContent<ElevationChangeMetricView, CurrentElevationMetricView>>, _ConditionalContent<_ConditionalContent<PowerMetricView, PowerMet();
      lazy protocol witness table accessor for type _ConditionalContent<_ConditionalContent<_ConditionalContent<_ConditionalContent<DistanceDetailMetricView, PaceMetricView>, _ConditionalContent<StrideLengthMetricView, StrideLengthMetricView>>, _ConditionalContent<_ConditionalContent<VerticalOscillationMetricView, VerticalOscillationMetricView>, _ConditionalContent<GroundContactTimeMetricView, GroundContactTimeMetricView>>>, _ConditionalContent<_ConditionalContent<ElevationChangeMetricView, DownhillRunCountMetricView>, _ConditionalContent<EmptyView, HStack<TupleView<(ModifiedContent<Text, MetricValueFont>, ModifiedContent<ModifiedContent<Text, MetricDescriptionCoreFont>, ExtendedLineSpacingSupport>)>>>>> and conformance <> _ConditionalContent<A, B>();
      _ConditionalContent<>.init(storage:)();
      outlined destroy of TupleView<(ModifiedContent<Text, MetricValueFont>, ModifiedContent<ModifiedContent<Text, MetricDescriptionCoreFont>, ExtendedLineSpacingSupport>)>(v521, &_s7SwiftUI19_ConditionalContentVyACyACyACyACy07WorkoutB016EnergyMetricViewVAFGACyAD09HeartRategH0VAD0ij9AggregategH0VGGACyACyAkD04ZonegH0VGACyAD06TimeInlgH0VAOGGGACyACyACyArD04PacegH0VGACyA2WGGACyAyCyAD08DistancegH0VAD04LapsgH0VGGGGACyACyACyACyACyACyAD07CadencegH0VAA05EmptyH0VGA8_GA8_GACyAD015ElevationChangegH0VAD07CurrenttgH0VGGACyACyAD05PowergH0VA21_GACyA21_AD014FlightsClimbedgH0VGGGACyACyACyAD015SegmentDurationgH0VAD0p6DetailgH0VGACyAwFGGACyACyAFA21_GACyA21_AA08ModifiedD0VyA37_yAD0emH0VAD0G6DetailVGAA24_ForegroundStyleModifierVyAA5ColorVGGGGGGGMd);
      v317 = v505;
LABEL_103:
      _s9WorkoutUI0A8TimeViewVWOhTm_0(v317, v311);
      return;
    case 48:
      v74 = v67;
      MetricsPublisher.fastestPace.getter();
      v76 = v75;
      MetricsPublisher.workoutStatePublisher.getter();
      v77 = WorkoutStatePublisher.gpsUnavailable.getter();

      v78 = swift_getKeyPath();
      v79 = v77 & 1;
      *&v681 = v625;
      *(&v681 + 1) = 48;
      v80 = v620;
      *&v682 = v620;
      *(&v682 + 1) = v78;
      LOBYTE(v683) = 0;
      *(&v683 + 1) = v76;
      LOBYTE(v684[0]) = v79;
      *&v684[1] = 0;
      *(&v684[0] + 1) = 0;
      v689[2] = v683;
      v689[3] = *&v684[0];
      *&v689[4] = 0;
      v689[1] = v682;
      v689[0] = v681;
      LOBYTE(v668) = 1;
      BYTE8(v689[4]) = 1;
      v81 = v625;
      v82 = v80;
      outlined init with copy of PaceMetricView(&v681, v650);
      lazy protocol witness table accessor for type PaceMetricView and conformance PaceMetricView();
      _ConditionalContent<>.init(storage:)();
      v689[2] = v651;
      v689[3] = v652[0];
      *(&v689[3] + 9) = *(v652 + 9);
      v689[1] = v650[1];
      v689[0] = v650[0];
      LOBYTE(v670) = 1;
      BYTE9(v689[4]) = 1;
LABEL_45:
      __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI19_ConditionalContentVy07WorkoutB020TimeInZoneMetricViewVAD04PaceiJ0VGMd);
      __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI19_ConditionalContentVy07WorkoutB014PaceMetricViewVAFGMd);
      lazy protocol witness table accessor for type _ConditionalContent<TimeInZoneMetricView, PaceMetricView> and conformance <> _ConditionalContent<A, B>();
      lazy protocol witness table accessor for type _ConditionalContent<StrideLengthMetricView, StrideLengthMetricView> and conformance <> _ConditionalContent<A, B>(&lazy protocol witness table cache variable for type _ConditionalContent<PaceMetricView, PaceMetricView> and conformance <> _ConditionalContent<A, B>, &_s7SwiftUI19_ConditionalContentVy07WorkoutB014PaceMetricViewVAFGMd, &_s7SwiftUI19_ConditionalContentVy07WorkoutB014PaceMetricViewVAFGMR, lazy protocol witness table accessor for type PaceMetricView and conformance PaceMetricView);
      _ConditionalContent<>.init(storage:)();
      v651 = v633;
      v652[0] = v634[0];
      *(v652 + 10) = *(v634 + 10);
      v650[0] = v631;
      v650[1] = v632;
      LOBYTE(v640) = 0;
      BYTE10(v652[1]) = 0;
LABEL_61:
      __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI19_ConditionalContentVyACy07WorkoutB020TimeInZoneMetricViewVAD04PaceiJ0VGACyA2HGGMd);
      __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI19_ConditionalContentVyACy07WorkoutB014PaceMetricViewVAFGACyAD08DistancegH0VAD04LapsgH0VGGMd);
      lazy protocol witness table accessor for type _ConditionalContent<_ConditionalContent<TimeInZoneMetricView, PaceMetricView>, _ConditionalContent<PaceMetricView, PaceMetricView>> and conformance <> _ConditionalContent<A, B>();
      lazy protocol witness table accessor for type _ConditionalContent<_ConditionalContent<PaceMetricView, PaceMetricView>, _ConditionalContent<DistanceMetricView, LapsMetricView>> and conformance <> _ConditionalContent<A, B>();
      _ConditionalContent<>.init(storage:)();
      v403 = v689[3];
      v191 = v614;
      v614[2] = v689[2];
      v191[3] = v403;
      v192 = *(&v689[3] + 11);
LABEL_62:
      *(v191 + 59) = v192;
      v404 = v689[1];
      *v191 = v689[0];
      v191[1] = v404;
      swift_storeEnumTagMultiPayload();
      __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI19_ConditionalContentVyACyACy07WorkoutB020TimeInZoneMetricViewVAD04PaceiJ0VGACyA2HGGACyAjCyAD08DistanceiJ0VAD04LapsiJ0VGGGMd);
      lazy protocol witness table accessor for type _ConditionalContent<_ConditionalContent<_ConditionalContent<EnergyMetricView, EnergyMetricView>, _ConditionalContent<HeartRateMetricView, HeartRateAggregateMetricView>>, _ConditionalContent<_ConditionalContent<HeartRateAggregateMetricView, ZoneMetricView>, _ConditionalContent<TimeInZoneMetricView, ZoneMetricView>>> and conformance <> _ConditionalContent<A, B>();
      lazy protocol witness table accessor for type _ConditionalContent<_ConditionalContent<_ConditionalContent<TimeInZoneMetricView, PaceMetricView>, _ConditionalContent<PaceMetricView, PaceMetricView>>, _ConditionalContent<_ConditionalContent<PaceMetricView, PaceMetricView>, _ConditionalContent<DistanceMetricView, LapsMetricView>>> and conformance <> _ConditionalContent<A, B>();
      v115 = v616;
      _ConditionalContent<>.init(storage:)();
      v116 = &_s7SwiftUI19_ConditionalContentVyACyACyACy07WorkoutB016EnergyMetricViewVAFGACyAD09HeartRategH0VAD0ij9AggregategH0VGGACyACyAkD04ZonegH0VGACyAD06TimeInlgH0VAOGGGACyACyACyArD04PacegH0VGACyA2WGGACyAyCyAD08DistancegH0VAD04LapsgH0VGGGGMd;
      outlined init with copy of TupleView<(ModifiedContent<Text, MetricValueFont>, ModifiedContent<ModifiedContent<Text, MetricDescriptionCoreFont>, ExtendedLineSpacingSupport>)>(v115, v623, &_s7SwiftUI19_ConditionalContentVyACyACyACy07WorkoutB016EnergyMetricViewVAFGACyAD09HeartRategH0VAD0ij9AggregategH0VGGACyACyAkD04ZonegH0VGACyAD06TimeInlgH0VAOGGGACyACyACyArD04PacegH0VGACyA2WGGACyAyCyAD08DistancegH0VAD04LapsgH0VGGGGMd);
LABEL_63:
      swift_storeEnumTagMultiPayload();
      lazy protocol witness table accessor for type _ConditionalContent<_ConditionalContent<_ConditionalContent<_ConditionalContent<EnergyMetricView, EnergyMetricView>, _ConditionalContent<HeartRateMetricView, HeartRateAggregateMetricView>>, _ConditionalContent<_ConditionalContent<HeartRateAggregateMetricView, ZoneMetricView>, _ConditionalContent<TimeInZoneMetricView, ZoneMetricView>>>, _ConditionalContent<_ConditionalContent<_ConditionalContent<TimeInZoneMetricView, PaceMetricView>, _ConditionalContent<PaceMetricView, PaceMetricView>>, _ConditionalContent<_ConditionalContent<PaceMetricView, PaceMetricView>, _ConditionalContent<DistanceMetricView, LapsMetricView>>>> and conformance <> _ConditionalContent<A, B>();
      lazy protocol witness table accessor for type _ConditionalContent<_ConditionalContent<_ConditionalContent<_ConditionalContent<_ConditionalContent<_ConditionalContent<CadenceMetricView, EmptyView>, CadenceMetricView>, CadenceMetricView>, _ConditionalContent<ElevationChangeMetricView, CurrentElevationMetricView>>, _ConditionalContent<_ConditionalContent<PowerMetricView, PowerMetricView>, _ConditionalContent<PowerMetricView, FlightsClimbedMetricView>>>, _ConditionalContent<_ConditionalContent<_ConditionalContent<SegmentDurationMetricView, DistanceDetailMetricView>, _ConditionalContent<PaceMetricView, EnergyMetricView>>, _ConditionalContent<_ConditionalContent<EnergyMetricView, PowerMetricView>, _ConditionalContent<PowerMetricView, ModifiedContent<ModifiedContent<WorkoutTimeView, MetricDetail>, _ForegroundStyleModifier<Color>>>>>> and conformance <> _ConditionalContent<A, B>();
      _ConditionalContent<>.init(storage:)();
      outlined destroy of TupleView<(ModifiedContent<Text, MetricValueFont>, ModifiedContent<ModifiedContent<Text, MetricDescriptionCoreFont>, ExtendedLineSpacingSupport>)>(v115, v116);
      v102 = &_s7SwiftUI19_ConditionalContentVyACyACyACyACy07WorkoutB016EnergyMetricViewVAFGACyAD09HeartRategH0VAD0ij9AggregategH0VGGACyACyAkD04ZonegH0VGACyAD06TimeInlgH0VAOGGGACyACyACyArD04PacegH0VGACyA2WGGACyAyCyAD08DistancegH0VAD04LapsgH0VGGGGACyACyACyACyACyACyAD07CadencegH0VAA05EmptyH0VGA8_GA8_GACyAD015ElevationChangegH0VAD07CurrenttgH0VGGACyACyAD05PowergH0VA21_GACyA21_AD014FlightsClimbedgH0VGGGACyACyACyAD015SegmentDurationgH0VAD0p6DetailgH0VGACyAwFGGACyACyAFA21_GACyA21_AA08ModifiedD0VyA37_yAD0emH0VAD0G6DetailVGAA24_ForegroundStyleModifierVyAA5ColorVGGGGGGGMd;
      outlined init with copy of TupleView<(ModifiedContent<Text, MetricValueFont>, ModifiedContent<ModifiedContent<Text, MetricDescriptionCoreFont>, ExtendedLineSpacingSupport>)>(v74, v629, &_s7SwiftUI19_ConditionalContentVyACyACyACyACy07WorkoutB016EnergyMetricViewVAFGACyAD09HeartRategH0VAD0ij9AggregategH0VGGACyACyAkD04ZonegH0VGACyAD06TimeInlgH0VAOGGGACyACyACyArD04PacegH0VGACyA2WGGACyAyCyAD08DistancegH0VAD04LapsgH0VGGGGACyACyACyACyACyACyAD07CadencegH0VAA05EmptyH0VGA8_GA8_GACyAD015ElevationChangegH0VAD07CurrenttgH0VGGACyACyAD05PowergH0VA21_GACyA21_AD014FlightsClimbedgH0VGGGACyACyACyAD015SegmentDurationgH0VAD0p6DetailgH0VGACyAwFGGACyACyAFA21_GACyA21_AA08ModifiedD0VyA37_yAD0emH0VAD0G6DetailVGAA24_ForegroundStyleModifierVyAA5ColorVGGGGGGGMd);
      swift_storeEnumTagMultiPayload();
      __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI19_ConditionalContentVyACyACyACy07WorkoutB024DistanceDetailMetricViewVAD04PacehI0VGACyAD012StrideLengthhI0VAKGGACyACyAD019VerticalOscillationhI0VAOGACyAD017GroundContactTimehI0VARGGGACyACyAD015ElevationChangehI0VAD016DownhillRunCounthI0VGACyAA05EmptyI0VAA6HStackVyAA05TupleI0VyAA08ModifiedD0VyAA4TextVAD0H9ValueFontVG_A6_yA6_yA8_AD0H19DescriptionCoreFontVGAD26ExtendedLineSpacingSupport33_241C09B5AC269BC1C919798A0AC522FDLLVGtGGGGGMd);
      lazy protocol witness table accessor for type _ConditionalContent<_ConditionalContent<_ConditionalContent<_ConditionalContent<_ConditionalContent<EnergyMetricView, EnergyMetricView>, _ConditionalContent<HeartRateMetricView, HeartRateAggregateMetricView>>, _ConditionalContent<_ConditionalContent<HeartRateAggregateMetricView, ZoneMetricView>, _ConditionalContent<TimeInZoneMetricView, ZoneMetricView>>>, _ConditionalContent<_ConditionalContent<_ConditionalContent<TimeInZoneMetricView, PaceMetricView>, _ConditionalContent<PaceMetricView, PaceMetricView>>, _ConditionalContent<_ConditionalContent<PaceMetricView, PaceMetricView>, _ConditionalContent<DistanceMetricView, LapsMetricView>>>>, _ConditionalContent<_ConditionalContent<_ConditionalContent<_ConditionalContent<_ConditionalContent<_ConditionalContent<CadenceMetricView, EmptyView>, CadenceMetricView>, CadenceMetricView>, _ConditionalContent<ElevationChangeMetricView, CurrentElevationMetricView>>, _ConditionalContent<_ConditionalContent<PowerMetricView, PowerMet();
      lazy protocol witness table accessor for type _ConditionalContent<_ConditionalContent<_ConditionalContent<_ConditionalContent<DistanceDetailMetricView, PaceMetricView>, _ConditionalContent<StrideLengthMetricView, StrideLengthMetricView>>, _ConditionalContent<_ConditionalContent<VerticalOscillationMetricView, VerticalOscillationMetricView>, _ConditionalContent<GroundContactTimeMetricView, GroundContactTimeMetricView>>>, _ConditionalContent<_ConditionalContent<ElevationChangeMetricView, DownhillRunCountMetricView>, _ConditionalContent<EmptyView, HStack<TupleView<(ModifiedContent<Text, MetricValueFont>, ModifiedContent<ModifiedContent<Text, MetricDescriptionCoreFont>, ExtendedLineSpacingSupport>)>>>>> and conformance <> _ConditionalContent<A, B>();
      _ConditionalContent<>.init(storage:)();
      outlined destroy of PaceMetricView(&v681);
LABEL_64:
      v374 = v74;
      goto LABEL_65;
    case 49:
      v133 = v67;
      MetricsPublisher.powerMetricsPublisher.getter();
      v165 = PowerMetricsPublisher.thirtySecondAveragePower.getter();
      v167 = v166;

      MetricsPublisher.workoutStatePublisher.getter();
      v168 = WorkoutStatePublisher.workoutPaused.getter();

      MetricsPublisher.workoutStatePublisher.getter();
      v169 = WorkoutStatePublisher.lowPowerModeAnimationSuspended.getter();

      v170 = swift_getKeyPath();
      LOBYTE(v650[0]) = 0;
      v171 = swift_getKeyPath();
      LOBYTE(v631) = 0;
      v172 = swift_getKeyPath();
      LOBYTE(v640) = 0;
      v173 = v167 & 1;
      v174 = v620;
      *&v681 = v620;
      *(&v681 + 1) = v165;
      LOBYTE(v682) = v173;
      *(&v682 + 1) = 49;
      *&v683 = v625;
      BYTE8(v683) = v168 & 1;
      BYTE9(v683) = v169 & 1;
      *&v684[0] = v170;
      BYTE8(v684[0]) = v650[0];
      *&v684[1] = v171;
      BYTE8(v684[1]) = v631;
      *&v684[2] = v172;
      BYTE8(v684[2]) = 0;
      v689[2] = v683;
      v689[3] = v684[0];
      v689[4] = v684[1];
      *(&v689[4] + 9) = *(&v684[1] + 9);
      v689[0] = v681;
      v689[1] = v682;
      LOBYTE(v668) = 0;
      BYTE9(v689[5]) = 0;
      v175 = v625;
      v176 = v174;
      outlined init with copy of PowerMetricView(&v681, v650);
      lazy protocol witness table accessor for type PowerMetricView and conformance PowerMetricView();
      lazy protocol witness table accessor for type FlightsClimbedMetricView and conformance FlightsClimbedMetricView();
      _ConditionalContent<>.init(storage:)();
      v689[2] = v651;
      v689[3] = v652[0];
      v689[4] = v652[1];
      *(&v689[4] + 10) = *(&v652[1] + 10);
      v689[0] = v650[0];
      v689[1] = v650[1];
      LOBYTE(v670) = 1;
      BYTE10(v689[5]) = 1;
LABEL_18:
      __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI19_ConditionalContentVy07WorkoutB015PowerMetricViewVAFGMd);
      __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI19_ConditionalContentVy07WorkoutB015PowerMetricViewVAD014FlightsClimbedgH0VGMd);
      lazy protocol witness table accessor for type _ConditionalContent<StrideLengthMetricView, StrideLengthMetricView> and conformance <> _ConditionalContent<A, B>(&lazy protocol witness table cache variable for type _ConditionalContent<PowerMetricView, PowerMetricView> and conformance <> _ConditionalContent<A, B>, &_s7SwiftUI19_ConditionalContentVy07WorkoutB015PowerMetricViewVAFGMd, &_s7SwiftUI19_ConditionalContentVy07WorkoutB015PowerMetricViewVAFGMR, lazy protocol witness table accessor for type PowerMetricView and conformance PowerMetricView);
      lazy protocol witness table accessor for type _ConditionalContent<PowerMetricView, FlightsClimbedMetricView> and conformance <> _ConditionalContent<A, B>();
      _ConditionalContent<>.init(storage:)();
      v651 = v633;
      v652[0] = v634[0];
      v652[1] = v634[1];
      *(&v652[1] + 11) = *(&v634[1] + 11);
      v650[0] = v631;
      v650[1] = v632;
      LOBYTE(v640) = 1;
      BYTE11(v652[2]) = 1;
      __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI19_ConditionalContentVyACyACyACy07WorkoutB017CadenceMetricViewVAA05EmptyH0VGAFGAFGACyAD015ElevationChangegH0VAD07CurrentjgH0VGGMd);
      __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI19_ConditionalContentVyACy07WorkoutB015PowerMetricViewVAFGACyAfD014FlightsClimbedgH0VGGMd);
      lazy protocol witness table accessor for type _ConditionalContent<_ConditionalContent<_ConditionalContent<_ConditionalContent<CadenceMetricView, EmptyView>, CadenceMetricView>, CadenceMetricView>, _ConditionalContent<ElevationChangeMetricView, CurrentElevationMetricView>> and conformance <> _ConditionalContent<A, B>();
      lazy protocol witness table accessor for type _ConditionalContent<_ConditionalContent<PowerMetricView, PowerMetricView>, _ConditionalContent<PowerMetricView, FlightsClimbedMetricView>> and conformance <> _ConditionalContent<A, B>();
      _ConditionalContent<>.init(storage:)();
      v177 = v689[3];
      v178 = v617;
      v617[2] = v689[2];
      v178[3] = v177;
      v178[4] = v689[4];
      v179 = *(&v689[4] + 12);
LABEL_51:
      *(v178 + 76) = v179;
      v372 = v689[1];
      *v178 = v689[0];
      v178[1] = v372;
      swift_storeEnumTagMultiPayload();
      __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI19_ConditionalContentVyACyACyACyACy07WorkoutB017CadenceMetricViewVAA05EmptyH0VGAFGAFGACyAD015ElevationChangegH0VAD07CurrentjgH0VGGACyACyAD05PowergH0VASGACyAsD014FlightsClimbedgH0VGGGMd);
      lazy protocol witness table accessor for type _ConditionalContent<_ConditionalContent<_ConditionalContent<_ConditionalContent<_ConditionalContent<CadenceMetricView, EmptyView>, CadenceMetricView>, CadenceMetricView>, _ConditionalContent<ElevationChangeMetricView, CurrentElevationMetricView>>, _ConditionalContent<_ConditionalContent<PowerMetricView, PowerMetricView>, _ConditionalContent<PowerMetricView, FlightsClimbedMetricView>>> and conformance <> _ConditionalContent<A, B>();
      lazy protocol witness table accessor for type _ConditionalContent<_ConditionalContent<_ConditionalContent<SegmentDurationMetricView, DistanceDetailMetricView>, _ConditionalContent<PaceMetricView, EnergyMetricView>>, _ConditionalContent<_ConditionalContent<EnergyMetricView, PowerMetricView>, _ConditionalContent<PowerMetricView, ModifiedContent<ModifiedContent<WorkoutTimeView, MetricDetail>, _ForegroundStyleModifier<Color>>>>> and conformance <> _ConditionalContent<A, B>();
      v373 = v619;
      _ConditionalContent<>.init(storage:)();
      outlined init with copy of TupleView<(ModifiedContent<Text, MetricValueFont>, ModifiedContent<ModifiedContent<Text, MetricDescriptionCoreFont>, ExtendedLineSpacingSupport>)>(v373, v623, &_s7SwiftUI19_ConditionalContentVyACyACyACyACyACy07WorkoutB017CadenceMetricViewVAA05EmptyH0VGAFGAFGACyAD015ElevationChangegH0VAD07CurrentjgH0VGGACyACyAD05PowergH0VASGACyAsD014FlightsClimbedgH0VGGGACyACyACyAD015SegmentDurationgH0VAD014DistanceDetailgH0VGACyAD04PacegH0VAD06EnergygH0VGGACyACyA6_ASGACyAsA08ModifiedD0VyA11_yAD0e4TimeH0VAD0gS0VGAA24_ForegroundStyleModifierVyAA5ColorVGGGGGGMd);
      swift_storeEnumTagMultiPayload();
      lazy protocol witness table accessor for type _ConditionalContent<_ConditionalContent<_ConditionalContent<_ConditionalContent<EnergyMetricView, EnergyMetricView>, _ConditionalContent<HeartRateMetricView, HeartRateAggregateMetricView>>, _ConditionalContent<_ConditionalContent<HeartRateAggregateMetricView, ZoneMetricView>, _ConditionalContent<TimeInZoneMetricView, ZoneMetricView>>>, _ConditionalContent<_ConditionalContent<_ConditionalContent<TimeInZoneMetricView, PaceMetricView>, _ConditionalContent<PaceMetricView, PaceMetricView>>, _ConditionalContent<_ConditionalContent<PaceMetricView, PaceMetricView>, _ConditionalContent<DistanceMetricView, LapsMetricView>>>> and conformance <> _ConditionalContent<A, B>();
      lazy protocol witness table accessor for type _ConditionalContent<_ConditionalContent<_ConditionalContent<_ConditionalContent<_ConditionalContent<_ConditionalContent<CadenceMetricView, EmptyView>, CadenceMetricView>, CadenceMetricView>, _ConditionalContent<ElevationChangeMetricView, CurrentElevationMetricView>>, _ConditionalContent<_ConditionalContent<PowerMetricView, PowerMetricView>, _ConditionalContent<PowerMetricView, FlightsClimbedMetricView>>>, _ConditionalContent<_ConditionalContent<_ConditionalContent<SegmentDurationMetricView, DistanceDetailMetricView>, _ConditionalContent<PaceMetricView, EnergyMetricView>>, _ConditionalContent<_ConditionalContent<EnergyMetricView, PowerMetricView>, _ConditionalContent<PowerMetricView, ModifiedContent<ModifiedContent<WorkoutTimeView, MetricDetail>, _ForegroundStyleModifier<Color>>>>>> and conformance <> _ConditionalContent<A, B>();
      _ConditionalContent<>.init(storage:)();
      outlined destroy of TupleView<(ModifiedContent<Text, MetricValueFont>, ModifiedContent<ModifiedContent<Text, MetricDescriptionCoreFont>, ExtendedLineSpacingSupport>)>(v373, &_s7SwiftUI19_ConditionalContentVyACyACyACyACyACy07WorkoutB017CadenceMetricViewVAA05EmptyH0VGAFGAFGACyAD015ElevationChangegH0VAD07CurrentjgH0VGGACyACyAD05PowergH0VASGACyAsD014FlightsClimbedgH0VGGGACyACyACyAD015SegmentDurationgH0VAD014DistanceDetailgH0VGACyAD04PacegH0VAD06EnergygH0VGGACyACyA6_ASGACyAsA08ModifiedD0VyA11_yAD0e4TimeH0VAD0gS0VGAA24_ForegroundStyleModifierVyAA5ColorVGGGGGGMd);
      v102 = &_s7SwiftUI19_ConditionalContentVyACyACyACyACy07WorkoutB016EnergyMetricViewVAFGACyAD09HeartRategH0VAD0ij9AggregategH0VGGACyACyAkD04ZonegH0VGACyAD06TimeInlgH0VAOGGGACyACyACyArD04PacegH0VGACyA2WGGACyAyCyAD08DistancegH0VAD04LapsgH0VGGGGACyACyACyACyACyACyAD07CadencegH0VAA05EmptyH0VGA8_GA8_GACyAD015ElevationChangegH0VAD07CurrenttgH0VGGACyACyAD05PowergH0VA21_GACyA21_AD014FlightsClimbedgH0VGGGACyACyACyAD015SegmentDurationgH0VAD0p6DetailgH0VGACyAwFGGACyACyAFA21_GACyA21_AA08ModifiedD0VyA37_yAD0emH0VAD0G6DetailVGAA24_ForegroundStyleModifierVyAA5ColorVGGGGGGGMd;
      outlined init with copy of TupleView<(ModifiedContent<Text, MetricValueFont>, ModifiedContent<ModifiedContent<Text, MetricDescriptionCoreFont>, ExtendedLineSpacingSupport>)>(v133, v629, &_s7SwiftUI19_ConditionalContentVyACyACyACyACy07WorkoutB016EnergyMetricViewVAFGACyAD09HeartRategH0VAD0ij9AggregategH0VGGACyACyAkD04ZonegH0VGACyAD06TimeInlgH0VAOGGGACyACyACyArD04PacegH0VGACyA2WGGACyAyCyAD08DistancegH0VAD04LapsgH0VGGGGACyACyACyACyACyACyAD07CadencegH0VAA05EmptyH0VGA8_GA8_GACyAD015ElevationChangegH0VAD07CurrenttgH0VGGACyACyAD05PowergH0VA21_GACyA21_AD014FlightsClimbedgH0VGGGACyACyACyAD015SegmentDurationgH0VAD0p6DetailgH0VGACyAwFGGACyACyAFA21_GACyA21_AA08ModifiedD0VyA37_yAD0emH0VAD0G6DetailVGAA24_ForegroundStyleModifierVyAA5ColorVGGGGGGGMd);
      swift_storeEnumTagMultiPayload();
      __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI19_ConditionalContentVyACyACyACy07WorkoutB024DistanceDetailMetricViewVAD04PacehI0VGACyAD012StrideLengthhI0VAKGGACyACyAD019VerticalOscillationhI0VAOGACyAD017GroundContactTimehI0VARGGGACyACyAD015ElevationChangehI0VAD016DownhillRunCounthI0VGACyAA05EmptyI0VAA6HStackVyAA05TupleI0VyAA08ModifiedD0VyAA4TextVAD0H9ValueFontVG_A6_yA6_yA8_AD0H19DescriptionCoreFontVGAD26ExtendedLineSpacingSupport33_241C09B5AC269BC1C919798A0AC522FDLLVGtGGGGGMd);
      lazy protocol witness table accessor for type _ConditionalContent<_ConditionalContent<_ConditionalContent<_ConditionalContent<_ConditionalContent<EnergyMetricView, EnergyMetricView>, _ConditionalContent<HeartRateMetricView, HeartRateAggregateMetricView>>, _ConditionalContent<_ConditionalContent<HeartRateAggregateMetricView, ZoneMetricView>, _ConditionalContent<TimeInZoneMetricView, ZoneMetricView>>>, _ConditionalContent<_ConditionalContent<_ConditionalContent<TimeInZoneMetricView, PaceMetricView>, _ConditionalContent<PaceMetricView, PaceMetricView>>, _ConditionalContent<_ConditionalContent<PaceMetricView, PaceMetricView>, _ConditionalContent<DistanceMetricView, LapsMetricView>>>>, _ConditionalContent<_ConditionalContent<_ConditionalContent<_ConditionalContent<_ConditionalContent<_ConditionalContent<CadenceMetricView, EmptyView>, CadenceMetricView>, CadenceMetricView>, _ConditionalContent<ElevationChangeMetricView, CurrentElevationMetricView>>, _ConditionalContent<_ConditionalContent<PowerMetricView, PowerMet();
      lazy protocol witness table accessor for type _ConditionalContent<_ConditionalContent<_ConditionalContent<_ConditionalContent<DistanceDetailMetricView, PaceMetricView>, _ConditionalContent<StrideLengthMetricView, StrideLengthMetricView>>, _ConditionalContent<_ConditionalContent<VerticalOscillationMetricView, VerticalOscillationMetricView>, _ConditionalContent<GroundContactTimeMetricView, GroundContactTimeMetricView>>>, _ConditionalContent<_ConditionalContent<ElevationChangeMetricView, DownhillRunCountMetricView>, _ConditionalContent<EmptyView, HStack<TupleView<(ModifiedContent<Text, MetricValueFont>, ModifiedContent<ModifiedContent<Text, MetricDescriptionCoreFont>, ExtendedLineSpacingSupport>)>>>>> and conformance <> _ConditionalContent<A, B>();
      _ConditionalContent<>.init(storage:)();
      outlined destroy of PowerMetricView(&v681);
      v374 = v133;
      goto LABEL_65;
    case 53:
      v241 = MetricsPublisher.descent.getter();
      v243 = v242;
      v244 = swift_getKeyPath();
      v245 = v244;
      if (v243)
      {
        v246 = 0;
      }

      else
      {
        v246 = v241;
      }

      *&v689[0] = 53;
      *(&v689[0] + 1) = v246;
      *&v689[1] = v625;
      *(&v689[1] + 1) = v244;
      LOWORD(v689[2]) = 0;
      v247 = v625;
      outlined copy of Environment<WorkoutViewStyle>.Content(v245, 0);
      lazy protocol witness table accessor for type ElevationChangeMetricView and conformance ElevationChangeMetricView();
      lazy protocol witness table accessor for type DownhillRunCountMetricView and conformance DownhillRunCountMetricView();
      _ConditionalContent<>.init(storage:)();
      v681 = v650[0];
      v682 = v650[1];
      LOWORD(v683) = v651;
      _s7SwiftUI19_ConditionalContentV7StorageOyACy07WorkoutB025ElevationChangeMetricViewVAF016DownhillRunCountiJ0VGACyAA05EmptyJ0VAA6HStackVyAA05TupleJ0VyAA08ModifiedD0VyAA4TextVAF0I9ValueFontVG_ASyASyAuF0i15DescriptionCoreT0VGAF26ExtendedLineSpacingSupport33_241C09B5AC269BC1C919798A0AC522FDLLVGtGGG_GWOi_(&v681);
      v689[8] = v687;
      v690[0] = v688[0];
      *(v690 + 15) = *(v688 + 15);
      v689[4] = v684[1];
      v689[5] = v684[2];
      v689[7] = v686;
      v689[6] = v685;
      v689[0] = v681;
      v689[1] = v682;
      v689[3] = v684[0];
      v689[2] = v683;
      __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI19_ConditionalContentVy07WorkoutB025ElevationChangeMetricViewVAD016DownhillRunCounthI0VGMd);
      __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI19_ConditionalContentVyAA9EmptyViewVAA6HStackVyAA05TupleF0VyAA08ModifiedD0VyAA4TextV07WorkoutB015MetricValueFontVG_AKyAKyAmN0l15DescriptionCoreN0VGAN26ExtendedLineSpacingSupport33_241C09B5AC269BC1C919798A0AC522FDLLVGtGGGMd);
      lazy protocol witness table accessor for type _ConditionalContent<ElevationChangeMetricView, DownhillRunCountMetricView> and conformance <> _ConditionalContent<A, B>();
      lazy protocol witness table accessor for type _ConditionalContent<EmptyView, HStack<TupleView<(ModifiedContent<Text, MetricValueFont>, ModifiedContent<ModifiedContent<Text, MetricDescriptionCoreFont>, ExtendedLineSpacingSupport>)>>> and conformance <> _ConditionalContent<A, B>();
      _ConditionalContent<>.init(storage:)();
      v689[8] = v648;
      v690[0] = *v649;
      *(v690 + 15) = *&v649[15];
      v689[4] = v644;
      v689[5] = v645;
      v689[7] = v647;
      v689[6] = v646;
      v689[0] = v640;
      v689[1] = v641;
      v689[3] = v643;
      v689[2] = v642;
      _s7SwiftUI19_ConditionalContentV7StorageOyACyACyACy07WorkoutB024DistanceDetailMetricViewVAF04PaceiJ0VGACyAF012StrideLengthiJ0VAMGGACyACyAF019VerticalOscillationiJ0VAQGACyAF017GroundContactTimeiJ0VATGGGACyACyAF015ElevationChangeiJ0VAF016DownhillRunCountiJ0VGACyAA05EmptyJ0VAA6HStackVyAA05TupleJ0VyAA08ModifiedD0VyAA4TextVAF0I9ValueFontVG_A8_yA8_yA10_AF0I19DescriptionCoreFontVGAF26ExtendedLineSpacingSupport33_241C09B5AC269BC1C919798A0AC522FDLLVGtGGGG_GWOi0_(v689);
      v637 = v689[8];
      v638 = v690[0];
      v639 = v690[1];
      v634[1] = v689[4];
      v634[2] = v689[5];
      v635 = v689[6];
      v636 = v689[7];
      v631 = v689[0];
      v632 = v689[1];
      v633 = v689[2];
      v634[0] = v689[3];
      __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI19_ConditionalContentVyACyACy07WorkoutB024DistanceDetailMetricViewVAD04PacehI0VGACyAD012StrideLengthhI0VAKGGACyACyAD019VerticalOscillationhI0VAOGACyAD017GroundContactTimehI0VARGGGMd);
      __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI19_ConditionalContentVyACy07WorkoutB025ElevationChangeMetricViewVAD016DownhillRunCounthI0VGACyAA05EmptyI0VAA6HStackVyAA05TupleI0VyAA08ModifiedD0VyAA4TextVAD0H9ValueFontVG_AQyAQyAsD0h15DescriptionCoreS0VGAD26ExtendedLineSpacingSupport33_241C09B5AC269BC1C919798A0AC522FDLLVGtGGGGMd);
      lazy protocol witness table accessor for type _ConditionalContent<_ConditionalContent<_ConditionalContent<DistanceDetailMetricView, PaceMetricView>, _ConditionalContent<StrideLengthMetricView, StrideLengthMetricView>>, _ConditionalContent<_ConditionalContent<VerticalOscillationMetricView, VerticalOscillationMetricView>, _ConditionalContent<GroundContactTimeMetricView, GroundContactTimeMetricView>>> and conformance <> _ConditionalContent<A, B>();
      lazy protocol witness table accessor for type _ConditionalContent<_ConditionalContent<ElevationChangeMetricView, DownhillRunCountMetricView>, _ConditionalContent<EmptyView, HStack<TupleView<(ModifiedContent<Text, MetricValueFont>, ModifiedContent<ModifiedContent<Text, MetricDescriptionCoreFont>, ExtendedLineSpacingSupport>)>>>> and conformance <> _ConditionalContent<A, B>();
      _ConditionalContent<>.init(storage:)();
      v248 = v656;
      v249 = v629;
      *(v629 + 128) = v655;
      *(v249 + 144) = v248;
      *(v249 + 160) = v657;
      v250 = v652[2];
      *(v249 + 64) = v652[1];
      *(v249 + 80) = v250;
      v251 = v654;
      *(v249 + 96) = v653;
      *(v249 + 112) = v251;
      v252 = v650[1];
      *v249 = v650[0];
      *(v249 + 16) = v252;
      v253 = v652[0];
      *(v249 + 32) = v651;
      *(v249 + 48) = v253;
      swift_storeEnumTagMultiPayload();
      __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI19_ConditionalContentVyACyACyACy07WorkoutB024DistanceDetailMetricViewVAD04PacehI0VGACyAD012StrideLengthhI0VAKGGACyACyAD019VerticalOscillationhI0VAOGACyAD017GroundContactTimehI0VARGGGACyACyAD015ElevationChangehI0VAD016DownhillRunCounthI0VGACyAA05EmptyI0VAA6HStackVyAA05TupleI0VyAA08ModifiedD0VyAA4TextVAD0H9ValueFontVG_A6_yA6_yA8_AD0H19DescriptionCoreFontVGAD26ExtendedLineSpacingSupport33_241C09B5AC269BC1C919798A0AC522FDLLVGtGGGGGMd);
      lazy protocol witness table accessor for type _ConditionalContent<_ConditionalContent<_ConditionalContent<_ConditionalContent<_ConditionalContent<EnergyMetricView, EnergyMetricView>, _ConditionalContent<HeartRateMetricView, HeartRateAggregateMetricView>>, _ConditionalContent<_ConditionalContent<HeartRateAggregateMetricView, ZoneMetricView>, _ConditionalContent<TimeInZoneMetricView, ZoneMetricView>>>, _ConditionalContent<_ConditionalContent<_ConditionalContent<TimeInZoneMetricView, PaceMetricView>, _ConditionalContent<PaceMetricView, PaceMetricView>>, _ConditionalContent<_ConditionalContent<PaceMetricView, PaceMetricView>, _ConditionalContent<DistanceMetricView, LapsMetricView>>>>, _ConditionalContent<_ConditionalContent<_ConditionalContent<_ConditionalContent<_ConditionalContent<_ConditionalContent<CadenceMetricView, EmptyView>, CadenceMetricView>, CadenceMetricView>, _ConditionalContent<ElevationChangeMetricView, CurrentElevationMetricView>>, _ConditionalContent<_ConditionalContent<PowerMetricView, PowerMet();
      lazy protocol witness table accessor for type _ConditionalContent<_ConditionalContent<_ConditionalContent<_ConditionalContent<DistanceDetailMetricView, PaceMetricView>, _ConditionalContent<StrideLengthMetricView, StrideLengthMetricView>>, _ConditionalContent<_ConditionalContent<VerticalOscillationMetricView, VerticalOscillationMetricView>, _ConditionalContent<GroundContactTimeMetricView, GroundContactTimeMetricView>>>, _ConditionalContent<_ConditionalContent<ElevationChangeMetricView, DownhillRunCountMetricView>, _ConditionalContent<EmptyView, HStack<TupleView<(ModifiedContent<Text, MetricValueFont>, ModifiedContent<ModifiedContent<Text, MetricDescriptionCoreFont>, ExtendedLineSpacingSupport>)>>>>> and conformance <> _ConditionalContent<A, B>();
      _ConditionalContent<>.init(storage:)();

      outlined consume of Environment<WorkoutViewStyle>.Content(v245, 0);
      return;
    case 54:
      v416 = MetricsPublisher.downhillRunCount.getter();
      v418 = v625;
      *&v689[0] = v625;
      *(&v689[0] + 1) = v416;
      v689[1] = v417 & 1;
      LOWORD(v689[2]) = 256;
      lazy protocol witness table accessor for type ElevationChangeMetricView and conformance ElevationChangeMetricView();
      lazy protocol witness table accessor for type DownhillRunCountMetricView and conformance DownhillRunCountMetricView();
      v120 = v418;
      _ConditionalContent<>.init(storage:)();
      v681 = v650[0];
      v682 = v650[1];
      LOWORD(v683) = v651;
      _s7SwiftUI19_ConditionalContentV7StorageOyACy07WorkoutB025ElevationChangeMetricViewVAF016DownhillRunCountiJ0VGACyAA05EmptyJ0VAA6HStackVyAA05TupleJ0VyAA08ModifiedD0VyAA4TextVAF0I9ValueFontVG_ASyASyAuF0i15DescriptionCoreT0VGAF26ExtendedLineSpacingSupport33_241C09B5AC269BC1C919798A0AC522FDLLVGtGGG_GWOi_(&v681);
      v689[8] = v687;
      v690[0] = v688[0];
      *(v690 + 15) = *(v688 + 15);
      v689[4] = v684[1];
      v689[5] = v684[2];
      v689[7] = v686;
      v689[6] = v685;
      v689[0] = v681;
      v689[1] = v682;
      v689[3] = v684[0];
      v689[2] = v683;
      __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI19_ConditionalContentVy07WorkoutB025ElevationChangeMetricViewVAD016DownhillRunCounthI0VGMd);
      __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI19_ConditionalContentVyAA9EmptyViewVAA6HStackVyAA05TupleF0VyAA08ModifiedD0VyAA4TextV07WorkoutB015MetricValueFontVG_AKyAKyAmN0l15DescriptionCoreN0VGAN26ExtendedLineSpacingSupport33_241C09B5AC269BC1C919798A0AC522FDLLVGtGGGMd);
      lazy protocol witness table accessor for type _ConditionalContent<ElevationChangeMetricView, DownhillRunCountMetricView> and conformance <> _ConditionalContent<A, B>();
      lazy protocol witness table accessor for type _ConditionalContent<EmptyView, HStack<TupleView<(ModifiedContent<Text, MetricValueFont>, ModifiedContent<ModifiedContent<Text, MetricDescriptionCoreFont>, ExtendedLineSpacingSupport>)>>> and conformance <> _ConditionalContent<A, B>();
      _ConditionalContent<>.init(storage:)();
      v689[8] = v648;
      v690[0] = *v649;
      *(v690 + 15) = *&v649[15];
      v689[4] = v644;
      v689[5] = v645;
      v689[7] = v647;
      v689[6] = v646;
      v689[0] = v640;
      v689[1] = v641;
      v689[3] = v643;
      v689[2] = v642;
      _s7SwiftUI19_ConditionalContentV7StorageOyACyACyACy07WorkoutB024DistanceDetailMetricViewVAF04PaceiJ0VGACyAF012StrideLengthiJ0VAMGGACyACyAF019VerticalOscillationiJ0VAQGACyAF017GroundContactTimeiJ0VATGGGACyACyAF015ElevationChangeiJ0VAF016DownhillRunCountiJ0VGACyAA05EmptyJ0VAA6HStackVyAA05TupleJ0VyAA08ModifiedD0VyAA4TextVAF0I9ValueFontVG_A8_yA8_yA10_AF0I19DescriptionCoreFontVGAF26ExtendedLineSpacingSupport33_241C09B5AC269BC1C919798A0AC522FDLLVGtGGGG_GWOi0_(v689);
LABEL_82:
      v637 = v689[8];
      v638 = v690[0];
      v639 = v690[1];
      v634[1] = v689[4];
      v634[2] = v689[5];
      v635 = v689[6];
      v636 = v689[7];
      v631 = v689[0];
      v632 = v689[1];
      v633 = v689[2];
      v634[0] = v689[3];
      __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI19_ConditionalContentVyACyACy07WorkoutB024DistanceDetailMetricViewVAD04PacehI0VGACyAD012StrideLengthhI0VAKGGACyACyAD019VerticalOscillationhI0VAOGACyAD017GroundContactTimehI0VARGGGMd);
      __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI19_ConditionalContentVyACy07WorkoutB025ElevationChangeMetricViewVAD016DownhillRunCounthI0VGACyAA05EmptyI0VAA6HStackVyAA05TupleI0VyAA08ModifiedD0VyAA4TextVAD0H9ValueFontVG_AQyAQyAsD0h15DescriptionCoreS0VGAD26ExtendedLineSpacingSupport33_241C09B5AC269BC1C919798A0AC522FDLLVGtGGGGMd);
      lazy protocol witness table accessor for type _ConditionalContent<_ConditionalContent<_ConditionalContent<DistanceDetailMetricView, PaceMetricView>, _ConditionalContent<StrideLengthMetricView, StrideLengthMetricView>>, _ConditionalContent<_ConditionalContent<VerticalOscillationMetricView, VerticalOscillationMetricView>, _ConditionalContent<GroundContactTimeMetricView, GroundContactTimeMetricView>>> and conformance <> _ConditionalContent<A, B>();
      lazy protocol witness table accessor for type _ConditionalContent<_ConditionalContent<ElevationChangeMetricView, DownhillRunCountMetricView>, _ConditionalContent<EmptyView, HStack<TupleView<(ModifiedContent<Text, MetricValueFont>, ModifiedContent<ModifiedContent<Text, MetricDescriptionCoreFont>, ExtendedLineSpacingSupport>)>>>> and conformance <> _ConditionalContent<A, B>();
      _ConditionalContent<>.init(storage:)();
      v465 = v656;
      v466 = v629;
      *(v629 + 128) = v655;
      *(v466 + 144) = v465;
      *(v466 + 160) = v657;
      v467 = v652[2];
      *(v466 + 64) = v652[1];
      *(v466 + 80) = v467;
      v468 = v654;
      *(v466 + 96) = v653;
      *(v466 + 112) = v468;
      v469 = v650[1];
      *v466 = v650[0];
      *(v466 + 16) = v469;
      v470 = v652[0];
      *(v466 + 32) = v651;
      *(v466 + 48) = v470;
      swift_storeEnumTagMultiPayload();
      __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI19_ConditionalContentVyACyACyACy07WorkoutB024DistanceDetailMetricViewVAD04PacehI0VGACyAD012StrideLengthhI0VAKGGACyACyAD019VerticalOscillationhI0VAOGACyAD017GroundContactTimehI0VARGGGACyACyAD015ElevationChangehI0VAD016DownhillRunCounthI0VGACyAA05EmptyI0VAA6HStackVyAA05TupleI0VyAA08ModifiedD0VyAA4TextVAD0H9ValueFontVG_A6_yA6_yA8_AD0H19DescriptionCoreFontVGAD26ExtendedLineSpacingSupport33_241C09B5AC269BC1C919798A0AC522FDLLVGtGGGGGMd);
      lazy protocol witness table accessor for type _ConditionalContent<_ConditionalContent<_ConditionalContent<_ConditionalContent<_ConditionalContent<EnergyMetricView, EnergyMetricView>, _ConditionalContent<HeartRateMetricView, HeartRateAggregateMetricView>>, _ConditionalContent<_ConditionalContent<HeartRateAggregateMetricView, ZoneMetricView>, _ConditionalContent<TimeInZoneMetricView, ZoneMetricView>>>, _ConditionalContent<_ConditionalContent<_ConditionalContent<TimeInZoneMetricView, PaceMetricView>, _ConditionalContent<PaceMetricView, PaceMetricView>>, _ConditionalContent<_ConditionalContent<PaceMetricView, PaceMetricView>, _ConditionalContent<DistanceMetricView, LapsMetricView>>>>, _ConditionalContent<_ConditionalContent<_ConditionalContent<_ConditionalContent<_ConditionalContent<_ConditionalContent<CadenceMetricView, EmptyView>, CadenceMetricView>, CadenceMetricView>, _ConditionalContent<ElevationChangeMetricView, CurrentElevationMetricView>>, _ConditionalContent<_ConditionalContent<PowerMetricView, PowerMet();
      lazy protocol witness table accessor for type _ConditionalContent<_ConditionalContent<_ConditionalContent<_ConditionalContent<DistanceDetailMetricView, PaceMetricView>, _ConditionalContent<StrideLengthMetricView, StrideLengthMetricView>>, _ConditionalContent<_ConditionalContent<VerticalOscillationMetricView, VerticalOscillationMetricView>, _ConditionalContent<GroundContactTimeMetricView, GroundContactTimeMetricView>>>, _ConditionalContent<_ConditionalContent<ElevationChangeMetricView, DownhillRunCountMetricView>, _ConditionalContent<EmptyView, HStack<TupleView<(ModifiedContent<Text, MetricValueFont>, ModifiedContent<ModifiedContent<Text, MetricDescriptionCoreFont>, ExtendedLineSpacingSupport>)>>>>> and conformance <> _ConditionalContent<A, B>();
      _ConditionalContent<>.init(storage:)();

      return;
    default:
      v479 = static VerticalAlignment.center.getter();
      LOBYTE(v631) = 1;
      closure #1 in static MetricViewBuilder.view(metricType:metricPlatterType:formattingManager:activityType:metricsPublisher:)(v689);
      v664 = v689[6];
      v665[0] = v689[7];
      *(v665 + 9) = *(&v689[7] + 9);
      v660 = v689[2];
      v661 = v689[3];
      v663 = v689[5];
      v662 = v689[4];
      v659 = v689[1];
      v658 = v689[0];
      v666[6] = v689[6];
      v667[0] = v689[7];
      *(v667 + 9) = *(&v689[7] + 9);
      v666[2] = v689[2];
      v666[3] = v689[3];
      v666[5] = v689[5];
      v666[4] = v689[4];
      v666[1] = v689[1];
      v666[0] = v689[0];
      outlined init with copy of TupleView<(ModifiedContent<Text, MetricValueFont>, ModifiedContent<ModifiedContent<Text, MetricDescriptionCoreFont>, ExtendedLineSpacingSupport>)>(&v658, v650, &_s7SwiftUI9TupleViewVyAA15ModifiedContentVyAA4TextV07WorkoutB015MetricValueFontVG_AEyAEyAgH0i15DescriptionCoreK0VGAH26ExtendedLineSpacingSupport33_241C09B5AC269BC1C919798A0AC522FDLLVGtGMd);
      outlined destroy of TupleView<(ModifiedContent<Text, MetricValueFont>, ModifiedContent<ModifiedContent<Text, MetricDescriptionCoreFont>, ExtendedLineSpacingSupport>)>(v666, &_s7SwiftUI9TupleViewVyAA15ModifiedContentVyAA4TextV07WorkoutB015MetricValueFontVG_AEyAEyAgH0i15DescriptionCoreK0VGAH26ExtendedLineSpacingSupport33_241C09B5AC269BC1C919798A0AC522FDLLVGtGMd);
      *(&v689[2] + 7) = v660;
      *(&v689[1] + 7) = v659;
      *(&v689[6] + 7) = v664;
      *(&v689[5] + 7) = v663;
      *(&v689[7] + 7) = v665[0];
      v689[8] = *(v665 + 9);
      *(&v689[3] + 7) = v661;
      *(&v689[4] + 7) = v662;
      *(v689 + 7) = v658;
      *&v669[33] = v689[2];
      *&v669[17] = v689[1];
      *&v669[81] = v689[5];
      *&v669[97] = v689[6];
      *&v669[113] = v689[7];
      *&v669[129] = *(v665 + 9);
      *&v669[49] = v689[3];
      v668 = v479;
      v669[0] = v631;
      *&v669[65] = v689[4];
      *&v669[1] = v689[0];
      v678 = *&v669[112];
      v679 = *&v669[128];
      LOBYTE(v680) = BYTE8(v665[1]);
      v674 = *&v669[48];
      v675 = *&v669[64];
      v677 = *&v669[96];
      v676 = *&v669[80];
      v670 = v479;
      v671 = *v669;
      v673 = *&v669[32];
      v672 = *&v669[16];
      _s7SwiftUI19_ConditionalContentV7StorageOyAA9EmptyViewVAA6HStackVyAA05TupleG0VyAA08ModifiedD0VyAA4TextV07WorkoutB015MetricValueFontVG_AMyAMyAoP0m15DescriptionCoreO0VGAP26ExtendedLineSpacingSupport33_241C09B5AC269BC1C919798A0AC522FDLLVGtGG_GWOi0_(&v670);
      v689[8] = v678;
      v690[0] = v679;
      LOWORD(v690[1]) = v680;
      v689[4] = v674;
      v689[5] = v675;
      v689[7] = v677;
      v689[6] = v676;
      v689[0] = v670;
      v689[1] = v671;
      v689[3] = v673;
      v689[2] = v672;
      v102 = &_s7SwiftUI6HStackVyAA9TupleViewVyAA15ModifiedContentVyAA4TextV07WorkoutB015MetricValueFontVG_AGyAGyAiJ0j15DescriptionCoreL0VGAJ26ExtendedLineSpacingSupport33_241C09B5AC269BC1C919798A0AC522FDLLVGtGGMd;
      outlined init with copy of TupleView<(ModifiedContent<Text, MetricValueFont>, ModifiedContent<ModifiedContent<Text, MetricDescriptionCoreFont>, ExtendedLineSpacingSupport>)>(&v668, v650, &_s7SwiftUI6HStackVyAA9TupleViewVyAA15ModifiedContentVyAA4TextV07WorkoutB015MetricValueFontVG_AGyAGyAiJ0j15DescriptionCoreL0VGAJ26ExtendedLineSpacingSupport33_241C09B5AC269BC1C919798A0AC522FDLLVGtGGMd);
      __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI6HStackVyAA9TupleViewVyAA15ModifiedContentVyAA4TextV07WorkoutB015MetricValueFontVG_AGyAGyAiJ0j15DescriptionCoreL0VGAJ26ExtendedLineSpacingSupport33_241C09B5AC269BC1C919798A0AC522FDLLVGtGGMd);
      lazy protocol witness table accessor for type HStack<TupleView<(ModifiedContent<Text, MetricValueFont>, ModifiedContent<ModifiedContent<Text, MetricDescriptionCoreFont>, ExtendedLineSpacingSupport>)>> and conformance HStack<A>(&lazy protocol witness table cache variable for type HStack<TupleView<(ModifiedContent<Text, MetricValueFont>, ModifiedContent<ModifiedContent<Text, MetricDescriptionCoreFont>, ExtendedLineSpacingSupport>)>> and conformance HStack<A>, &_s7SwiftUI6HStackVyAA9TupleViewVyAA15ModifiedContentVyAA4TextV07WorkoutB015MetricValueFontVG_AGyAGyAiJ0j15DescriptionCoreL0VGAJ26ExtendedLineSpacingSupport33_241C09B5AC269BC1C919798A0AC522FDLLVGtGGMd);
      _ConditionalContent<>.init(storage:)();
      v687 = v655;
      v688[0] = v656;
      LOWORD(v688[1]) = v657;
      v684[1] = v652[1];
      v684[2] = v652[2];
      v686 = v654;
      v685 = v653;
      v681 = v650[0];
      v682 = v650[1];
      v684[0] = v652[0];
      v683 = v651;
      _s7SwiftUI19_ConditionalContentV7StorageOyACy07WorkoutB025ElevationChangeMetricViewVAF016DownhillRunCountiJ0VGACyAA05EmptyJ0VAA6HStackVyAA05TupleJ0VyAA08ModifiedD0VyAA4TextVAF0I9ValueFontVG_ASyASyAuF0i15DescriptionCoreT0VGAF26ExtendedLineSpacingSupport33_241C09B5AC269BC1C919798A0AC522FDLLVGtGGG_GWOi0_(&v681);
      v689[8] = v687;
      v690[0] = v688[0];
      *(v690 + 15) = *(v688 + 15);
      v689[4] = v684[1];
      v689[5] = v684[2];
      v689[7] = v686;
      v689[6] = v685;
      v689[0] = v681;
      v689[1] = v682;
      v689[3] = v684[0];
      v689[2] = v683;
      __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI19_ConditionalContentVy07WorkoutB025ElevationChangeMetricViewVAD016DownhillRunCounthI0VGMd);
      __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI19_ConditionalContentVyAA9EmptyViewVAA6HStackVyAA05TupleF0VyAA08ModifiedD0VyAA4TextV07WorkoutB015MetricValueFontVG_AKyAKyAmN0l15DescriptionCoreN0VGAN26ExtendedLineSpacingSupport33_241C09B5AC269BC1C919798A0AC522FDLLVGtGGGMd);
      lazy protocol witness table accessor for type _ConditionalContent<ElevationChangeMetricView, DownhillRunCountMetricView> and conformance <> _ConditionalContent<A, B>();
      lazy protocol witness table accessor for type _ConditionalContent<EmptyView, HStack<TupleView<(ModifiedContent<Text, MetricValueFont>, ModifiedContent<ModifiedContent<Text, MetricDescriptionCoreFont>, ExtendedLineSpacingSupport>)>>> and conformance <> _ConditionalContent<A, B>();
      _ConditionalContent<>.init(storage:)();
      v689[8] = v648;
      v690[0] = *v649;
      *(v690 + 15) = *&v649[15];
      v689[4] = v644;
      v689[5] = v645;
      v689[7] = v647;
      v689[6] = v646;
      v689[0] = v640;
      v689[1] = v641;
      v689[3] = v643;
      v689[2] = v642;
      _s7SwiftUI19_ConditionalContentV7StorageOyACyACyACy07WorkoutB024DistanceDetailMetricViewVAF04PaceiJ0VGACyAF012StrideLengthiJ0VAMGGACyACyAF019VerticalOscillationiJ0VAQGACyAF017GroundContactTimeiJ0VATGGGACyACyAF015ElevationChangeiJ0VAF016DownhillRunCountiJ0VGACyAA05EmptyJ0VAA6HStackVyAA05TupleJ0VyAA08ModifiedD0VyAA4TextVAF0I9ValueFontVG_A8_yA8_yA10_AF0I19DescriptionCoreFontVGAF26ExtendedLineSpacingSupport33_241C09B5AC269BC1C919798A0AC522FDLLVGtGGGG_GWOi0_(v689);
      v637 = v689[8];
      v638 = v690[0];
      v639 = v690[1];
      v634[1] = v689[4];
      v634[2] = v689[5];
      v635 = v689[6];
      v636 = v689[7];
      v631 = v689[0];
      v632 = v689[1];
      v633 = v689[2];
      v634[0] = v689[3];
      __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI19_ConditionalContentVyACyACy07WorkoutB024DistanceDetailMetricViewVAD04PacehI0VGACyAD012StrideLengthhI0VAKGGACyACyAD019VerticalOscillationhI0VAOGACyAD017GroundContactTimehI0VARGGGMd);
      __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI19_ConditionalContentVyACy07WorkoutB025ElevationChangeMetricViewVAD016DownhillRunCounthI0VGACyAA05EmptyI0VAA6HStackVyAA05TupleI0VyAA08ModifiedD0VyAA4TextVAD0H9ValueFontVG_AQyAQyAsD0h15DescriptionCoreS0VGAD26ExtendedLineSpacingSupport33_241C09B5AC269BC1C919798A0AC522FDLLVGtGGGGMd);
      lazy protocol witness table accessor for type _ConditionalContent<_ConditionalContent<_ConditionalContent<DistanceDetailMetricView, PaceMetricView>, _ConditionalContent<StrideLengthMetricView, StrideLengthMetricView>>, _ConditionalContent<_ConditionalContent<VerticalOscillationMetricView, VerticalOscillationMetricView>, _ConditionalContent<GroundContactTimeMetricView, GroundContactTimeMetricView>>> and conformance <> _ConditionalContent<A, B>();
      lazy protocol witness table accessor for type _ConditionalContent<_ConditionalContent<ElevationChangeMetricView, DownhillRunCountMetricView>, _ConditionalContent<EmptyView, HStack<TupleView<(ModifiedContent<Text, MetricValueFont>, ModifiedContent<ModifiedContent<Text, MetricDescriptionCoreFont>, ExtendedLineSpacingSupport>)>>>> and conformance <> _ConditionalContent<A, B>();
      _ConditionalContent<>.init(storage:)();
      v480 = v656;
      v481 = v629;
      *(v629 + 128) = v655;
      *(v481 + 144) = v480;
      *(v481 + 160) = v657;
      v482 = v652[2];
      *(v481 + 64) = v652[1];
      *(v481 + 80) = v482;
      v483 = v654;
      *(v481 + 96) = v653;
      *(v481 + 112) = v483;
      v484 = v650[1];
      *v481 = v650[0];
      *(v481 + 16) = v484;
      v485 = v652[0];
      *(v481 + 32) = v651;
      *(v481 + 48) = v485;
      swift_storeEnumTagMultiPayload();
      __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI19_ConditionalContentVyACyACyACy07WorkoutB024DistanceDetailMetricViewVAD04PacehI0VGACyAD012StrideLengthhI0VAKGGACyACyAD019VerticalOscillationhI0VAOGACyAD017GroundContactTimehI0VARGGGACyACyAD015ElevationChangehI0VAD016DownhillRunCounthI0VGACyAA05EmptyI0VAA6HStackVyAA05TupleI0VyAA08ModifiedD0VyAA4TextVAD0H9ValueFontVG_A6_yA6_yA8_AD0H19DescriptionCoreFontVGAD26ExtendedLineSpacingSupport33_241C09B5AC269BC1C919798A0AC522FDLLVGtGGGGGMd);
      lazy protocol witness table accessor for type _ConditionalContent<_ConditionalContent<_ConditionalContent<_ConditionalContent<_ConditionalContent<EnergyMetricView, EnergyMetricView>, _ConditionalContent<HeartRateMetricView, HeartRateAggregateMetricView>>, _ConditionalContent<_ConditionalContent<HeartRateAggregateMetricView, ZoneMetricView>, _ConditionalContent<TimeInZoneMetricView, ZoneMetricView>>>, _ConditionalContent<_ConditionalContent<_ConditionalContent<TimeInZoneMetricView, PaceMetricView>, _ConditionalContent<PaceMetricView, PaceMetricView>>, _ConditionalContent<_ConditionalContent<PaceMetricView, PaceMetricView>, _ConditionalContent<DistanceMetricView, LapsMetricView>>>>, _ConditionalContent<_ConditionalContent<_ConditionalContent<_ConditionalContent<_ConditionalContent<_ConditionalContent<CadenceMetricView, EmptyView>, CadenceMetricView>, CadenceMetricView>, _ConditionalContent<ElevationChangeMetricView, CurrentElevationMetricView>>, _ConditionalContent<_ConditionalContent<PowerMetricView, PowerMet();
      lazy protocol witness table accessor for type _ConditionalContent<_ConditionalContent<_ConditionalContent<_ConditionalContent<DistanceDetailMetricView, PaceMetricView>, _ConditionalContent<StrideLengthMetricView, StrideLengthMetricView>>, _ConditionalContent<_ConditionalContent<VerticalOscillationMetricView, VerticalOscillationMetricView>, _ConditionalContent<GroundContactTimeMetricView, GroundContactTimeMetricView>>>, _ConditionalContent<_ConditionalContent<ElevationChangeMetricView, DownhillRunCountMetricView>, _ConditionalContent<EmptyView, HStack<TupleView<(ModifiedContent<Text, MetricValueFont>, ModifiedContent<ModifiedContent<Text, MetricDescriptionCoreFont>, ExtendedLineSpacingSupport>)>>>>> and conformance <> _ConditionalContent<A, B>();
      _ConditionalContent<>.init(storage:)();
      v374 = &v668;
LABEL_65:
      v405 = v102;
      goto LABEL_117;
  }
}

uint64_t closure #1 in static MetricViewBuilder.view(metricType:metricPlatterType:formattingManager:activityType:metricsPublisher:)@<X0>(_OWORD *a1@<X8>)
{
  v2 = type metadata accessor for LocalizedStringKey.StringInterpolation();
  MEMORY[0x28223BE20](v2 - 8);
  LocalizedStringKey.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v3._countAndFlagsBits = 0;
  v3._object = 0xE000000000000000;
  LocalizedStringKey.StringInterpolation.appendLiteral(_:)(v3);
  LocalizedStringKey.StringInterpolation.appendInterpolation<A>(_:specifier:)();
  v4._countAndFlagsBits = 0;
  v4._object = 0xE000000000000000;
  LocalizedStringKey.StringInterpolation.appendLiteral(_:)(v4);
  LocalizedStringKey.init(stringInterpolation:)();
  v5 = Text.init(_:tableName:bundle:comment:)();
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v27 = v10;
  KeyPath = swift_getKeyPath();
  LOBYTE(v54[0]) = 0;
  *&v56[0] = 0xD000000000000012;
  *(&v56[0] + 1) = 0x800000020CB968B0;
  lazy protocol witness table accessor for type String and conformance String();
  v13 = StringProtocol.localizedUppercase.getter();
  specialized View.metricDescriptionFont(multiline:)(1, v13, v14, 0, MEMORY[0x277D84F90], &v41);

  *&v50 = v5;
  *(&v50 + 1) = v7;
  LOBYTE(v51) = v9 & 1;
  *(&v51 + 1) = *v49;
  DWORD1(v51) = *&v49[3];
  *(&v51 + 1) = v11;
  LOWORD(v52) = 256;
  *(&v52 + 2) = v47;
  WORD3(v52) = v48;
  *(&v52 + 1) = KeyPath;
  LOBYTE(v40[0]) = 0;
  v38 = v51;
  v39 = v52;
  v37 = v50;
  v15 = v41;
  v54[1] = v42;
  v54[0] = v41;
  v54[4] = v45;
  v16 = v43;
  v54[3] = v44;
  v54[2] = v43;
  v17 = v42;
  *(&v40[1] + 8) = v42;
  *(v40 + 8) = v41;
  BYTE8(v40[5]) = v46;
  *(&v40[4] + 8) = v45;
  v18 = v44;
  *(&v40[3] + 8) = v44;
  *(&v40[2] + 8) = v43;
  v19 = v50;
  v20 = v51;
  v21 = v40[0];
  v22 = v40[1];
  a1[2] = v52;
  a1[3] = v21;
  *a1 = v19;
  a1[1] = v20;
  v23 = v40[2];
  v24 = v40[3];
  *(a1 + 121) = *(&v40[4] + 9);
  v25 = v40[4];
  a1[6] = v24;
  a1[7] = v25;
  a1[4] = v22;
  a1[5] = v23;
  v53 = 0;
  v55 = v46;
  v56[2] = v16;
  v56[3] = v18;
  v56[4] = v45;
  v57 = v46;
  v56[0] = v15;
  v56[1] = v17;
  outlined init with copy of TupleView<(ModifiedContent<Text, MetricValueFont>, ModifiedContent<ModifiedContent<Text, MetricDescriptionCoreFont>, ExtendedLineSpacingSupport>)>(&v50, v28, &_s7SwiftUI15ModifiedContentVyAA4TextV07WorkoutB015MetricValueFontVGMd);
  outlined init with copy of TupleView<(ModifiedContent<Text, MetricValueFont>, ModifiedContent<ModifiedContent<Text, MetricDescriptionCoreFont>, ExtendedLineSpacingSupport>)>(v54, v28, &_s7SwiftUI15ModifiedContentVyACyAA4TextV07WorkoutB025MetricDescriptionCoreFontVGAF26ExtendedLineSpacingSupport33_241C09B5AC269BC1C919798A0AC522FDLLVGMd);
  outlined destroy of TupleView<(ModifiedContent<Text, MetricValueFont>, ModifiedContent<ModifiedContent<Text, MetricDescriptionCoreFont>, ExtendedLineSpacingSupport>)>(v56, &_s7SwiftUI15ModifiedContentVyACyAA4TextV07WorkoutB025MetricDescriptionCoreFontVGAF26ExtendedLineSpacingSupport33_241C09B5AC269BC1C919798A0AC522FDLLVGMd);
  v28[0] = v5;
  v28[1] = v7;
  v29 = v9 & 1;
  *v30 = *v49;
  *&v30[3] = *&v49[3];
  v31 = v27;
  v32 = 256;
  v33 = v47;
  v34 = v48;
  v35 = KeyPath;
  v36 = 0;
  return outlined destroy of TupleView<(ModifiedContent<Text, MetricValueFont>, ModifiedContent<ModifiedContent<Text, MetricDescriptionCoreFont>, ExtendedLineSpacingSupport>)>(v28, &_s7SwiftUI15ModifiedContentVyAA4TextV07WorkoutB015MetricValueFontVGMd);
}

uint64_t lazy protocol witness table accessor for type _ConditionalContent<StrideLengthMetricView, StrideLengthMetricView> and conformance <> _ConditionalContent<A, B>(unint64_t *a1, uint64_t *a2, uint64_t a3, void (*a4)(void))
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

void static MetricViewBuilder.view(metricType:formattingManager:activityType:value:)(uint64_t a1@<X0>, void *a2@<X1>, char *a3@<X2>, uint64_t a4@<X8>, double a5@<D0>)
{
  v70 = a3;
  v77 = a4;
  v8 = type metadata accessor for HeartRateAggregateMetricView();
  MEMORY[0x28223BE20](v8);
  v10 = (&v69 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI19_ConditionalContentV7StorageOy07WorkoutB019HeartRateMetricViewVAF0gh9AggregateiJ0V_GMd);
  MEMORY[0x28223BE20](v11);
  v13 = &v69 - v12;
  v73 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI19_ConditionalContentVy07WorkoutB019HeartRateMetricViewVAD0fg9AggregatehI0VGMd);
  MEMORY[0x28223BE20](v73);
  v71 = &v69 - v14;
  v15 = type metadata accessor for HeartRateMetricView();
  MEMORY[0x28223BE20](v15);
  v17 = (&v69 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0));
  v74 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI19_ConditionalContentV7StorageOyACyACy07WorkoutB016EnergyMetricViewVAHGACyAF09HeartRatehI0VAF0jk9AggregatehI0VGGACyACyAF04PacehI0VAF08DistancehI0VGACyAA05EmptyI0VAF0H4TextVGG_GMd);
  MEMORY[0x28223BE20](v74);
  v76 = (&v69 - v18);
  v72 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI19_ConditionalContentV7StorageOyACy07WorkoutB016EnergyMetricViewVAHGACyAF09HeartRatehI0VAF0jk9AggregatehI0VG_GMd);
  MEMORY[0x28223BE20](v72);
  v20 = &v69 - v19;
  v75 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI19_ConditionalContentVyACy07WorkoutB016EnergyMetricViewVAFGACyAD09HeartRategH0VAD0ij9AggregategH0VGGMd);
  MEMORY[0x28223BE20](v75);
  v22 = &v69 - v21;
  if (a1 <= 4)
  {
    switch(a1)
    {
      case 0:
        v98 = 0;
        v97[24] = 0;
        lazy protocol witness table accessor for type MetricText and conformance MetricText();
        _ConditionalContent<>.init(storage:)();
        *v88 = v93[0];
        *&v88[9] = *(v93 + 9);
        v86[1] = v91;
        v87 = v92;
        v86[0] = v90;
        LOBYTE(v78) = 1;
        v89 = 1;
LABEL_19:
        __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI19_ConditionalContentVy07WorkoutB014PaceMetricViewVAD08DistancegH0VGMd);
        __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI19_ConditionalContentVyAA9EmptyViewV07WorkoutB010MetricTextVGMd);
        lazy protocol witness table accessor for type _ConditionalContent<PaceMetricView, DistanceMetricView> and conformance <> _ConditionalContent<A, B>();
        lazy protocol witness table accessor for type _ConditionalContent<EmptyView, MetricText> and conformance <> _ConditionalContent<A, B>();
        _ConditionalContent<>.init(storage:)();
        v44 = *v97;
        v45 = v76;
        v76[2] = v96;
        v45[3] = v44;
        *(v45 + 58) = *&v97[10];
        v46 = v95;
        *v45 = v94;
        v45[1] = v46;
        swift_storeEnumTagMultiPayload();
        __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI19_ConditionalContentVyACy07WorkoutB014PaceMetricViewVAD08DistancegH0VGACyAA05EmptyH0VAD0G4TextVGGMd);
        lazy protocol witness table accessor for type _ConditionalContent<_ConditionalContent<EnergyMetricView, EnergyMetricView>, _ConditionalContent<HeartRateMetricView, HeartRateAggregateMetricView>> and conformance <> _ConditionalContent<A, B>();
        lazy protocol witness table accessor for type _ConditionalContent<_ConditionalContent<PaceMetricView, DistanceMetricView>, _ConditionalContent<EmptyView, MetricText>> and conformance <> _ConditionalContent<A, B>();
        _ConditionalContent<>.init(storage:)();
        return;
      case 1:
        v63 = FIUIDistanceTypeForActivityType();
        KeyPath = swift_getKeyPath();
        v98 = 1;
        v85 = 0;
        v84 = 1;
        *&v94 = a5;
        *(&v94 + 1) = a2;
        v95 = v63;
        LOBYTE(v96) = 1;
        *(&v96 + 1) = KeyPath;
        v97[0] = 0;
        v97[24] = 1;
        v65 = a2;
        outlined copy of Environment<WorkoutViewStyle>.Content(KeyPath, 0);
        lazy protocol witness table accessor for type PaceMetricView and conformance PaceMetricView();
        lazy protocol witness table accessor for type DistanceMetricView and conformance DistanceMetricView();
        _ConditionalContent<>.init(storage:)();
        *v88 = v93[0];
        *&v88[9] = *(v93 + 9);
        v86[1] = v91;
        v87 = v92;
        v86[0] = v90;
        LOBYTE(v78) = 0;
        v89 = 0;
        __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI19_ConditionalContentVy07WorkoutB014PaceMetricViewVAD08DistancegH0VGMd);
        __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI19_ConditionalContentVyAA9EmptyViewV07WorkoutB010MetricTextVGMd);
        lazy protocol witness table accessor for type _ConditionalContent<PaceMetricView, DistanceMetricView> and conformance <> _ConditionalContent<A, B>();
        lazy protocol witness table accessor for type _ConditionalContent<EmptyView, MetricText> and conformance <> _ConditionalContent<A, B>();
        _ConditionalContent<>.init(storage:)();
        v66 = *v97;
        v67 = v76;
        v76[2] = v96;
        v67[3] = v66;
        *(v67 + 58) = *&v97[10];
        v68 = v95;
        *v67 = v94;
        v67[1] = v68;
        swift_storeEnumTagMultiPayload();
        __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI19_ConditionalContentVyACy07WorkoutB014PaceMetricViewVAD08DistancegH0VGACyAA05EmptyH0VAD0G4TextVGGMd);
        lazy protocol witness table accessor for type _ConditionalContent<_ConditionalContent<EnergyMetricView, EnergyMetricView>, _ConditionalContent<HeartRateMetricView, HeartRateAggregateMetricView>> and conformance <> _ConditionalContent<A, B>();
        lazy protocol witness table accessor for type _ConditionalContent<_ConditionalContent<PaceMetricView, DistanceMetricView>, _ConditionalContent<EmptyView, MetricText>> and conformance <> _ConditionalContent<A, B>();
        _ConditionalContent<>.init(storage:)();

        outlined consume of Environment<WorkoutViewStyle>.Content(KeyPath, 0);
        return;
      case 2:
        v29 = v22;
        v23 = swift_getKeyPath();
        *v86 = a5;
        *(v86 + 8) = vdupq_n_s64(1uLL);
        *(&v86[1] + 1) = a2;
        *&v87 = v23;
        WORD4(v87) = 0;
        v24 = a2;
        outlined copy of Environment<WorkoutViewStyle>.Content(v23, 0);
        lazy protocol witness table accessor for type EnergyMetricView and conformance EnergyMetricView();
        _ConditionalContent<>.init(storage:)();
        v30 = v96;
        v31 = BYTE8(v96);
        v32 = BYTE9(v96);
        v33 = v95;
        *v20 = v94;
        *(v20 + 1) = v33;
        *(v20 + 4) = v30;
        v20[40] = v31;
        v20[41] = v32;
        swift_storeEnumTagMultiPayload();
        __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI19_ConditionalContentVy07WorkoutB016EnergyMetricViewVAFGMd);
        lazy protocol witness table accessor for type _ConditionalContent<StrideLengthMetricView, StrideLengthMetricView> and conformance <> _ConditionalContent<A, B>(&lazy protocol witness table cache variable for type _ConditionalContent<EnergyMetricView, EnergyMetricView> and conformance <> _ConditionalContent<A, B>, &_s7SwiftUI19_ConditionalContentVy07WorkoutB016EnergyMetricViewVAFGMd, &_s7SwiftUI19_ConditionalContentVy07WorkoutB016EnergyMetricViewVAFGMR, lazy protocol witness table accessor for type EnergyMetricView and conformance EnergyMetricView);
        lazy protocol witness table accessor for type _ConditionalContent<HeartRateMetricView, HeartRateAggregateMetricView> and conformance <> _ConditionalContent<A, B>();
        goto LABEL_10;
    }
  }

  else
  {
    if (a1 <= 7)
    {
      v70 = v22;
      if (a1 != 5)
      {
        if (a1 == 7)
        {
          v23 = swift_getKeyPath();
          *v86 = a5;
          *(v86 + 8) = xmmword_20CB63850;
          *(&v86[1] + 1) = a2;
          *&v87 = v23;
          WORD4(v87) = 256;
          v24 = a2;
          outlined copy of Environment<WorkoutViewStyle>.Content(v23, 0);
          lazy protocol witness table accessor for type EnergyMetricView and conformance EnergyMetricView();
          _ConditionalContent<>.init(storage:)();
          v25 = v96;
          v26 = BYTE8(v96);
          v27 = BYTE9(v96);
          v28 = v95;
          *v20 = v94;
          *(v20 + 1) = v28;
          *(v20 + 4) = v25;
          v20[40] = v26;
          v20[41] = v27;
          swift_storeEnumTagMultiPayload();
          __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI19_ConditionalContentVy07WorkoutB016EnergyMetricViewVAFGMd);
          lazy protocol witness table accessor for type _ConditionalContent<StrideLengthMetricView, StrideLengthMetricView> and conformance <> _ConditionalContent<A, B>(&lazy protocol witness table cache variable for type _ConditionalContent<EnergyMetricView, EnergyMetricView> and conformance <> _ConditionalContent<A, B>, &_s7SwiftUI19_ConditionalContentVy07WorkoutB016EnergyMetricViewVAFGMd, &_s7SwiftUI19_ConditionalContentVy07WorkoutB016EnergyMetricViewVAFGMR, lazy protocol witness table accessor for type EnergyMetricView and conformance EnergyMetricView);
          lazy protocol witness table accessor for type _ConditionalContent<HeartRateMetricView, HeartRateAggregateMetricView> and conformance <> _ConditionalContent<A, B>();
          v29 = v70;
LABEL_10:
          _ConditionalContent<>.init(storage:)();
          outlined init with copy of TupleView<(ModifiedContent<Text, MetricValueFont>, ModifiedContent<ModifiedContent<Text, MetricDescriptionCoreFont>, ExtendedLineSpacingSupport>)>(v29, v76, &_s7SwiftUI19_ConditionalContentVyACy07WorkoutB016EnergyMetricViewVAFGACyAD09HeartRategH0VAD0ij9AggregategH0VGGMd);
          swift_storeEnumTagMultiPayload();
          __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI19_ConditionalContentVyACy07WorkoutB014PaceMetricViewVAD08DistancegH0VGACyAA05EmptyH0VAD0G4TextVGGMd);
          lazy protocol witness table accessor for type _ConditionalContent<_ConditionalContent<EnergyMetricView, EnergyMetricView>, _ConditionalContent<HeartRateMetricView, HeartRateAggregateMetricView>> and conformance <> _ConditionalContent<A, B>();
          lazy protocol witness table accessor for type _ConditionalContent<_ConditionalContent<PaceMetricView, DistanceMetricView>, _ConditionalContent<EmptyView, MetricText>> and conformance <> _ConditionalContent<A, B>();
          _ConditionalContent<>.init(storage:)();

          outlined consume of Environment<WorkoutViewStyle>.Content(v23, 0);
          outlined destroy of TupleView<(ModifiedContent<Text, MetricValueFont>, ModifiedContent<ModifiedContent<Text, MetricDescriptionCoreFont>, ExtendedLineSpacingSupport>)>(v29, &_s7SwiftUI19_ConditionalContentVyACy07WorkoutB016EnergyMetricViewVAFGACyAD09HeartRategH0VAD0ij9AggregategH0VGGMd);
          return;
        }

        goto LABEL_15;
      }

      v47 = v15[5];
      v48 = *MEMORY[0x277D7E4D8];
      v49 = type metadata accessor for HeartRateCurrentValueType();
      (*(*(v49 - 8) + 104))(v17 + v47, v48, v49);
      v50 = v17 + v15[9];
      *v50 = swift_getKeyPath();
      v50[8] = 0;
      v51 = v17 + v15[10];
      *v51 = swift_getKeyPath();
      v51[8] = 0;
      v52 = v17 + v15[11];
      *v52 = swift_getKeyPath();
      v52[8] = 0;
      *(v17 + v15[12]) = 0.35;
      v53 = v17 + v15[13];
      *v53 = 0;
      *(v53 + 1) = 0;
      *v17 = a5;
      *(v17 + 8) = 0;
      *(v17 + v15[6]) = 0;
      *(v17 + v15[7]) = 0;
      *(v17 + v15[8]) = 1;
      v69 = type metadata accessor for HeartRateMetricView;
      _s9WorkoutUI0A8TimeViewVWOcTm_0(v17, v13, type metadata accessor for HeartRateMetricView);
      swift_storeEnumTagMultiPayload();
      lazy protocol witness table accessor for type HeartRateMetricView and conformance HeartRateMetricView(&lazy protocol witness table cache variable for type HeartRateMetricView and conformance HeartRateMetricView, type metadata accessor for HeartRateMetricView);
      lazy protocol witness table accessor for type HeartRateMetricView and conformance HeartRateMetricView(&lazy protocol witness table cache variable for type HeartRateAggregateMetricView and conformance HeartRateAggregateMetricView, type metadata accessor for HeartRateAggregateMetricView);
      v54 = v71;
      _ConditionalContent<>.init(storage:)();
      outlined init with copy of TupleView<(ModifiedContent<Text, MetricValueFont>, ModifiedContent<ModifiedContent<Text, MetricDescriptionCoreFont>, ExtendedLineSpacingSupport>)>(v54, v20, &_s7SwiftUI19_ConditionalContentVy07WorkoutB019HeartRateMetricViewVAD0fg9AggregatehI0VGMd);
      swift_storeEnumTagMultiPayload();
      __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI19_ConditionalContentVy07WorkoutB016EnergyMetricViewVAFGMd);
      lazy protocol witness table accessor for type _ConditionalContent<StrideLengthMetricView, StrideLengthMetricView> and conformance <> _ConditionalContent<A, B>(&lazy protocol witness table cache variable for type _ConditionalContent<EnergyMetricView, EnergyMetricView> and conformance <> _ConditionalContent<A, B>, &_s7SwiftUI19_ConditionalContentVy07WorkoutB016EnergyMetricViewVAFGMd, &_s7SwiftUI19_ConditionalContentVy07WorkoutB016EnergyMetricViewVAFGMR, lazy protocol witness table accessor for type EnergyMetricView and conformance EnergyMetricView);
      lazy protocol witness table accessor for type _ConditionalContent<HeartRateMetricView, HeartRateAggregateMetricView> and conformance <> _ConditionalContent<A, B>();
      v55 = v70;
      _ConditionalContent<>.init(storage:)();
      outlined destroy of TupleView<(ModifiedContent<Text, MetricValueFont>, ModifiedContent<ModifiedContent<Text, MetricDescriptionCoreFont>, ExtendedLineSpacingSupport>)>(v54, &_s7SwiftUI19_ConditionalContentVy07WorkoutB019HeartRateMetricViewVAD0fg9AggregatehI0VGMd);
      outlined init with copy of TupleView<(ModifiedContent<Text, MetricValueFont>, ModifiedContent<ModifiedContent<Text, MetricDescriptionCoreFont>, ExtendedLineSpacingSupport>)>(v55, v76, &_s7SwiftUI19_ConditionalContentVyACy07WorkoutB016EnergyMetricViewVAFGACyAD09HeartRategH0VAD0ij9AggregategH0VGGMd);
      swift_storeEnumTagMultiPayload();
      __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI19_ConditionalContentVyACy07WorkoutB014PaceMetricViewVAD08DistancegH0VGACyAA05EmptyH0VAD0G4TextVGGMd);
      lazy protocol witness table accessor for type _ConditionalContent<_ConditionalContent<EnergyMetricView, EnergyMetricView>, _ConditionalContent<HeartRateMetricView, HeartRateAggregateMetricView>> and conformance <> _ConditionalContent<A, B>();
      lazy protocol witness table accessor for type _ConditionalContent<_ConditionalContent<PaceMetricView, DistanceMetricView>, _ConditionalContent<EmptyView, MetricText>> and conformance <> _ConditionalContent<A, B>();
      _ConditionalContent<>.init(storage:)();
      outlined destroy of TupleView<(ModifiedContent<Text, MetricValueFont>, ModifiedContent<ModifiedContent<Text, MetricDescriptionCoreFont>, ExtendedLineSpacingSupport>)>(v55, &_s7SwiftUI19_ConditionalContentVyACy07WorkoutB016EnergyMetricViewVAFGACyAD09HeartRategH0VAD0ij9AggregategH0VGGMd);
      v38 = v17;
LABEL_21:
      _s9WorkoutUI0A8TimeViewVWOhTm_0(v38, v69);
      return;
    }

    if (a1 == 8)
    {
      v56 = swift_getKeyPath();
      *&v78 = a2;
      *(&v78 + 1) = 8;
      v57 = v70;
      *&v79 = v70;
      *(&v79 + 1) = v56;
      LOBYTE(v80) = 0;
      *(&v80 + 1) = a5;
      LOBYTE(v81) = 0;
      v82 = 0;
      v83 = 0;
      v96 = v80;
      *v97 = v81;
      *&v97[16] = 0;
      v94 = v78;
      v95 = v79;
      v85 = 0;
      v97[24] = 0;
      v58 = a2;
      v59 = v57;
      outlined init with copy of PaceMetricView(&v78, v86);
      lazy protocol witness table accessor for type PaceMetricView and conformance PaceMetricView();
      lazy protocol witness table accessor for type DistanceMetricView and conformance DistanceMetricView();
      _ConditionalContent<>.init(storage:)();
      *v88 = v93[0];
      *&v88[9] = *(v93 + 9);
      v86[1] = v91;
      v87 = v92;
      v86[0] = v90;
      v98 = 0;
      v89 = 0;
      __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI19_ConditionalContentVy07WorkoutB014PaceMetricViewVAD08DistancegH0VGMd);
      __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI19_ConditionalContentVyAA9EmptyViewV07WorkoutB010MetricTextVGMd);
      lazy protocol witness table accessor for type _ConditionalContent<PaceMetricView, DistanceMetricView> and conformance <> _ConditionalContent<A, B>();
      lazy protocol witness table accessor for type _ConditionalContent<EmptyView, MetricText> and conformance <> _ConditionalContent<A, B>();
      _ConditionalContent<>.init(storage:)();
      v60 = *v97;
      v61 = v76;
      v76[2] = v96;
      v61[3] = v60;
      *(v61 + 58) = *&v97[10];
      v62 = v95;
      *v61 = v94;
      v61[1] = v62;
      swift_storeEnumTagMultiPayload();
      __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI19_ConditionalContentVyACy07WorkoutB014PaceMetricViewVAD08DistancegH0VGACyAA05EmptyH0VAD0G4TextVGGMd);
      lazy protocol witness table accessor for type _ConditionalContent<_ConditionalContent<EnergyMetricView, EnergyMetricView>, _ConditionalContent<HeartRateMetricView, HeartRateAggregateMetricView>> and conformance <> _ConditionalContent<A, B>();
      lazy protocol witness table accessor for type _ConditionalContent<_ConditionalContent<PaceMetricView, DistanceMetricView>, _ConditionalContent<EmptyView, MetricText>> and conformance <> _ConditionalContent<A, B>();
      _ConditionalContent<>.init(storage:)();
      outlined destroy of PaceMetricView(&v78);
      return;
    }

    v70 = v22;
    if (a1 == 40)
    {
      v34 = *(v8 + 28);
      *(v10 + v34) = swift_getKeyPath();
      __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI11EnvironmentV7ContentOyAA16RedactionReasonsV_GMd);
      swift_storeEnumTagMultiPayload();
      v35 = v10 + *(v8 + 32);
      *v35 = swift_getKeyPath();
      v35[8] = 0;
      *v10 = 0;
      v10[1] = a5;
      *(v10 + 8) = 0;
      v69 = type metadata accessor for HeartRateAggregateMetricView;
      _s9WorkoutUI0A8TimeViewVWOcTm_0(v10, v13, type metadata accessor for HeartRateAggregateMetricView);
      swift_storeEnumTagMultiPayload();
      lazy protocol witness table accessor for type HeartRateMetricView and conformance HeartRateMetricView(&lazy protocol witness table cache variable for type HeartRateMetricView and conformance HeartRateMetricView, type metadata accessor for HeartRateMetricView);
      lazy protocol witness table accessor for type HeartRateMetricView and conformance HeartRateMetricView(&lazy protocol witness table cache variable for type HeartRateAggregateMetricView and conformance HeartRateAggregateMetricView, type metadata accessor for HeartRateAggregateMetricView);
      v36 = v71;
      _ConditionalContent<>.init(storage:)();
      outlined init with copy of TupleView<(ModifiedContent<Text, MetricValueFont>, ModifiedContent<ModifiedContent<Text, MetricDescriptionCoreFont>, ExtendedLineSpacingSupport>)>(v36, v20, &_s7SwiftUI19_ConditionalContentVy07WorkoutB019HeartRateMetricViewVAD0fg9AggregatehI0VGMd);
      swift_storeEnumTagMultiPayload();
      __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI19_ConditionalContentVy07WorkoutB016EnergyMetricViewVAFGMd);
      lazy protocol witness table accessor for type _ConditionalContent<StrideLengthMetricView, StrideLengthMetricView> and conformance <> _ConditionalContent<A, B>(&lazy protocol witness table cache variable for type _ConditionalContent<EnergyMetricView, EnergyMetricView> and conformance <> _ConditionalContent<A, B>, &_s7SwiftUI19_ConditionalContentVy07WorkoutB016EnergyMetricViewVAFGMd, &_s7SwiftUI19_ConditionalContentVy07WorkoutB016EnergyMetricViewVAFGMR, lazy protocol witness table accessor for type EnergyMetricView and conformance EnergyMetricView);
      lazy protocol witness table accessor for type _ConditionalContent<HeartRateMetricView, HeartRateAggregateMetricView> and conformance <> _ConditionalContent<A, B>();
      v37 = v70;
      _ConditionalContent<>.init(storage:)();
      outlined destroy of TupleView<(ModifiedContent<Text, MetricValueFont>, ModifiedContent<ModifiedContent<Text, MetricDescriptionCoreFont>, ExtendedLineSpacingSupport>)>(v36, &_s7SwiftUI19_ConditionalContentVy07WorkoutB019HeartRateMetricViewVAD0fg9AggregatehI0VGMd);
      outlined init with copy of TupleView<(ModifiedContent<Text, MetricValueFont>, ModifiedContent<ModifiedContent<Text, MetricDescriptionCoreFont>, ExtendedLineSpacingSupport>)>(v37, v76, &_s7SwiftUI19_ConditionalContentVyACy07WorkoutB016EnergyMetricViewVAFGACyAD09HeartRategH0VAD0ij9AggregategH0VGGMd);
      swift_storeEnumTagMultiPayload();
      __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI19_ConditionalContentVyACy07WorkoutB014PaceMetricViewVAD08DistancegH0VGACyAA05EmptyH0VAD0G4TextVGGMd);
      lazy protocol witness table accessor for type _ConditionalContent<_ConditionalContent<EnergyMetricView, EnergyMetricView>, _ConditionalContent<HeartRateMetricView, HeartRateAggregateMetricView>> and conformance <> _ConditionalContent<A, B>();
      lazy protocol witness table accessor for type _ConditionalContent<_ConditionalContent<PaceMetricView, DistanceMetricView>, _ConditionalContent<EmptyView, MetricText>> and conformance <> _ConditionalContent<A, B>();
      _ConditionalContent<>.init(storage:)();
      outlined destroy of TupleView<(ModifiedContent<Text, MetricValueFont>, ModifiedContent<ModifiedContent<Text, MetricDescriptionCoreFont>, ExtendedLineSpacingSupport>)>(v37, &_s7SwiftUI19_ConditionalContentVyACy07WorkoutB016EnergyMetricViewVAFGACyAD09HeartRategH0VAD0ij9AggregategH0VGGMd);
      v38 = v10;
      goto LABEL_21;
    }
  }

LABEL_15:
  if ((*&a5 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
  }

  else if (a5 > -9.22337204e18)
  {
    if (a5 < 9.22337204e18)
    {
      *&v94 = a5;
      v39 = dispatch thunk of CustomStringConvertible.description.getter();
      v41 = v40;
      *&v94 = 1701869908;
      *(&v94 + 1) = 0xE400000000000000;
      *&v86[0] = a1;
      v42 = dispatch thunk of CustomStringConvertible.description.getter();
      MEMORY[0x20F30BC00](v42);

      v43 = v94;
      v98 = 1;
      *&v94 = v39;
      *(&v94 + 1) = v41;
      v95 = v43;
      v96 = 0uLL;
      *v97 = 0;
      *&v97[8] = 0;
      *&v97[16] = 0;
      v97[24] = 1;
      lazy protocol witness table accessor for type MetricText and conformance MetricText();
      _ConditionalContent<>.init(storage:)();
      *v88 = v93[0];
      *&v88[9] = *(v93 + 9);
      v86[1] = v91;
      v87 = v92;
      v86[0] = v90;
      LOBYTE(v78) = 1;
      v89 = 1;
      goto LABEL_19;
    }

    goto LABEL_26;
  }

  __break(1u);
LABEL_26:
  __break(1u);
}

uint64_t key path setter for EnvironmentValues.redactionReasons : EnvironmentValues(uint64_t a1)
{
  v2 = type metadata accessor for RedactionReasons();
  v3 = MEMORY[0x28223BE20](v2);
  (*(v5 + 16))(&v7 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v3);
  return EnvironmentValues.redactionReasons.setter();
}

uint64_t outlined init with take of ModifiedContent<WorkoutTimeView, MetricDetail>(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(a3);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t lazy protocol witness table accessor for type HeartRateMetricView and conformance HeartRateMetricView(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t outlined init with take of ZoneMetricView(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ZoneMetricView();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t lazy protocol witness table accessor for type HStack<TupleView<(ModifiedContent<Text, MetricValueFont>, ModifiedContent<ModifiedContent<Text, MetricDescriptionCoreFont>, ExtendedLineSpacingSupport>)>> and conformance HStack<A>(unint64_t *a1, uint64_t *a2)
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

uint64_t _s9WorkoutUI0A8TimeViewVWOcTm_0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t _s9WorkoutUI0A8TimeViewVWOhTm_0(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t lazy protocol witness table accessor for type _ConditionalContent<PaceMetricView, DistanceMetricView> and conformance <> _ConditionalContent<A, B>()
{
  result = lazy protocol witness table cache variable for type _ConditionalContent<PaceMetricView, DistanceMetricView> and conformance <> _ConditionalContent<A, B>;
  if (!lazy protocol witness table cache variable for type _ConditionalContent<PaceMetricView, DistanceMetricView> and conformance <> _ConditionalContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI19_ConditionalContentVy07WorkoutB014PaceMetricViewVAD08DistancegH0VGMd);
    lazy protocol witness table accessor for type PaceMetricView and conformance PaceMetricView();
    lazy protocol witness table accessor for type DistanceMetricView and conformance DistanceMetricView();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type _ConditionalContent<PaceMetricView, DistanceMetricView> and conformance <> _ConditionalContent<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type _ConditionalContent<EmptyView, MetricText> and conformance <> _ConditionalContent<A, B>()
{
  result = lazy protocol witness table cache variable for type _ConditionalContent<EmptyView, MetricText> and conformance <> _ConditionalContent<A, B>;
  if (!lazy protocol witness table cache variable for type _ConditionalContent<EmptyView, MetricText> and conformance <> _ConditionalContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI19_ConditionalContentVyAA9EmptyViewV07WorkoutB010MetricTextVGMd);
    lazy protocol witness table accessor for type MetricText and conformance MetricText();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type _ConditionalContent<EmptyView, MetricText> and conformance <> _ConditionalContent<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type _ConditionalContent<_ConditionalContent<PaceMetricView, DistanceMetricView>, _ConditionalContent<EmptyView, MetricText>> and conformance <> _ConditionalContent<A, B>()
{
  result = lazy protocol witness table cache variable for type _ConditionalContent<_ConditionalContent<PaceMetricView, DistanceMetricView>, _ConditionalContent<EmptyView, MetricText>> and conformance <> _ConditionalContent<A, B>;
  if (!lazy protocol witness table cache variable for type _ConditionalContent<_ConditionalContent<PaceMetricView, DistanceMetricView>, _ConditionalContent<EmptyView, MetricText>> and conformance <> _ConditionalContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI19_ConditionalContentVyACy07WorkoutB014PaceMetricViewVAD08DistancegH0VGACyAA05EmptyH0VAD0G4TextVGGMd);
    lazy protocol witness table accessor for type _ConditionalContent<PaceMetricView, DistanceMetricView> and conformance <> _ConditionalContent<A, B>();
    lazy protocol witness table accessor for type _ConditionalContent<EmptyView, MetricText> and conformance <> _ConditionalContent<A, B>();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type _ConditionalContent<_ConditionalContent<PaceMetricView, DistanceMetricView>, _ConditionalContent<EmptyView, MetricText>> and conformance <> _ConditionalContent<A, B>);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for MetricViewBuilder(unsigned int *a1, int a2)
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

_WORD *storeEnumTagSinglePayload for MetricViewBuilder(_WORD *result, int a2, int a3)
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

unint64_t lazy protocol witness table accessor for type _ConditionalContent<_ConditionalContent<_ConditionalContent<EnergyMetricView, EnergyMetricView>, _ConditionalContent<HeartRateMetricView, HeartRateAggregateMetricView>>, _ConditionalContent<_ConditionalContent<PaceMetricView, DistanceMetricView>, _ConditionalContent<EmptyView, MetricText>>> and conformance <> _ConditionalContent<A, B>()
{
  result = lazy protocol witness table cache variable for type _ConditionalContent<_ConditionalContent<_ConditionalContent<EnergyMetricView, EnergyMetricView>, _ConditionalContent<HeartRateMetricView, HeartRateAggregateMetricView>>, _ConditionalContent<_ConditionalContent<PaceMetricView, DistanceMetricView>, _ConditionalContent<EmptyView, MetricText>>> and conformance <> _ConditionalContent<A, B>;
  if (!lazy protocol witness table cache variable for type _ConditionalContent<_ConditionalContent<_ConditionalContent<EnergyMetricView, EnergyMetricView>, _ConditionalContent<HeartRateMetricView, HeartRateAggregateMetricView>>, _ConditionalContent<_ConditionalContent<PaceMetricView, DistanceMetricView>, _ConditionalContent<EmptyView, MetricText>>> and conformance <> _ConditionalContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI19_ConditionalContentVyACyACy07WorkoutB016EnergyMetricViewVAFGACyAD09HeartRategH0VAD0ij9AggregategH0VGGACyACyAD04PacegH0VAD08DistancegH0VGACyAA05EmptyH0VAD0G4TextVGGGMd);
    lazy protocol witness table accessor for type _ConditionalContent<_ConditionalContent<EnergyMetricView, EnergyMetricView>, _ConditionalContent<HeartRateMetricView, HeartRateAggregateMetricView>> and conformance <> _ConditionalContent<A, B>();
    lazy protocol witness table accessor for type _ConditionalContent<_ConditionalContent<PaceMetricView, DistanceMetricView>, _ConditionalContent<EmptyView, MetricText>> and conformance <> _ConditionalContent<A, B>();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type _ConditionalContent<_ConditionalContent<_ConditionalContent<EnergyMetricView, EnergyMetricView>, _ConditionalContent<HeartRateMetricView, HeartRateAggregateMetricView>>, _ConditionalContent<_ConditionalContent<PaceMetricView, DistanceMetricView>, _ConditionalContent<EmptyView, MetricText>>> and conformance <> _ConditionalContent<A, B>);
  }

  return result;
}

uint64_t outlined init with copy of TupleView<(ModifiedContent<Text, MetricValueFont>, ModifiedContent<ModifiedContent<Text, MetricDescriptionCoreFont>, ExtendedLineSpacingSupport>)>(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(a3);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t outlined destroy of TupleView<(ModifiedContent<Text, MetricValueFont>, ModifiedContent<ModifiedContent<Text, MetricDescriptionCoreFont>, ExtendedLineSpacingSupport>)>(uint64_t a1, uint64_t *a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(a2);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t TrainingLoadChartViewModel.configuration.getter@<X0>(uint64_t a1@<X8>)
{
  swift_getKeyPath();
  v5 = v1;
  lazy protocol witness table accessor for type TrainingLoadChartViewModel and conformance TrainingLoadChartViewModel();
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v3 = OBJC_IVAR____TtC9WorkoutUI26TrainingLoadChartViewModel__configuration;
  swift_beginAccess();
  return outlined init with copy of TrainingLoadViewModel.ChartPoint(v5 + v3, a1, type metadata accessor for TrainingLoadChart.Configuration);
}

uint64_t key path getter for TrainingLoadChartViewModel.configuration : TrainingLoadChartViewModel@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  lazy protocol witness table accessor for type TrainingLoadChartViewModel and conformance TrainingLoadChartViewModel();
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v4 = OBJC_IVAR____TtC9WorkoutUI26TrainingLoadChartViewModel__configuration;
  swift_beginAccess();
  return outlined init with copy of TrainingLoadViewModel.ChartPoint(v3 + v4, a2, type metadata accessor for TrainingLoadChart.Configuration);
}

uint64_t key path setter for TrainingLoadChartViewModel.configuration : TrainingLoadChartViewModel(uint64_t a1)
{
  v2 = type metadata accessor for TrainingLoadChart.Configuration(0);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v6 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  outlined init with copy of TrainingLoadViewModel.ChartPoint(a1, v4, type metadata accessor for TrainingLoadChart.Configuration);
  return TrainingLoadChartViewModel.configuration.setter(v4);
}

uint64_t TrainingLoadChartViewModel.configuration.setter(uint64_t a1)
{
  v3 = type metadata accessor for TrainingLoadChart.Configuration(0);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = v10 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = OBJC_IVAR____TtC9WorkoutUI26TrainingLoadChartViewModel__configuration;
  swift_beginAccess();
  outlined init with copy of TrainingLoadViewModel.ChartPoint(v1 + v6, v5, type metadata accessor for TrainingLoadChart.Configuration);
  v7 = specialized TrainingLoadChartViewModel.shouldNotifyObservers<A>(_:_:)(v5, a1);
  outlined destroy of TrainingLoadViewModel.ChartPoint(v5, type metadata accessor for TrainingLoadChart.Configuration);
  if (v7)
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath);
    v10[-2] = v1;
    v10[-1] = a1;
    v10[2] = v1;
    lazy protocol witness table accessor for type TrainingLoadChartViewModel and conformance TrainingLoadChartViewModel();
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
  }

  else
  {
    outlined init with copy of TrainingLoadViewModel.ChartPoint(a1, v5, type metadata accessor for TrainingLoadChart.Configuration);
    swift_beginAccess();
    outlined assign with take of TrainingLoadChart.Configuration(v5, v1 + v6);
    swift_endAccess();
  }

  return outlined destroy of TrainingLoadViewModel.ChartPoint(a1, type metadata accessor for TrainingLoadChart.Configuration);
}

uint64_t closure #1 in TrainingLoadChartViewModel.configuration.setter(uint64_t a1, uint64_t a2)
{
  v4 = OBJC_IVAR____TtC9WorkoutUI26TrainingLoadChartViewModel__configuration;
  swift_beginAccess();
  outlined assign with copy of TrainingLoadChart.Configuration(a2, a1 + v4);
  return swift_endAccess();
}

double TrainingLoadChartViewModel.emphasizedChartPointIndexOffset.getter()
{
  swift_getKeyPath();
  lazy protocol witness table accessor for type TrainingLoadChartViewModel and conformance TrainingLoadChartViewModel();
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  return *(v0 + OBJC_IVAR____TtC9WorkoutUI26TrainingLoadChartViewModel__emphasizedChartPointIndexOffset);
}

double key path getter for TrainingLoadChartViewModel.emphasizedChartPointIndexOffset : TrainingLoadChartViewModel@<D0>(uint64_t *a1@<X0>, double *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  lazy protocol witness table accessor for type TrainingLoadChartViewModel and conformance TrainingLoadChartViewModel();
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  result = *(v3 + OBJC_IVAR____TtC9WorkoutUI26TrainingLoadChartViewModel__emphasizedChartPointIndexOffset);
  *a2 = result;
  return result;
}

uint64_t TrainingLoadChartViewModel.emphasizedChartPointIndexOffset.setter(double a1)
{
  v3 = type metadata accessor for Logger();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v13 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = OBJC_IVAR____TtC9WorkoutUI26TrainingLoadChartViewModel__emphasizedChartPointIndexOffset;
  if (*(v1 + OBJC_IVAR____TtC9WorkoutUI26TrainingLoadChartViewModel__emphasizedChartPointIndexOffset) == a1)
  {
    *(v1 + OBJC_IVAR____TtC9WorkoutUI26TrainingLoadChartViewModel__emphasizedChartPointIndexOffset) = a1;
    static WOLog.trainingLoad.getter();

    v8 = Logger.logObject.getter();
    v9 = static os_log_type_t.debug.getter();

    if (os_log_type_enabled(v8, v9))
    {
      v10 = swift_slowAlloc();
      *v10 = 134217984;
      swift_getKeyPath();
      v14 = v1;
      lazy protocol witness table accessor for type TrainingLoadChartViewModel and conformance TrainingLoadChartViewModel();
      ObservationRegistrar.access<A, B>(_:keyPath:)();

      *(v10 + 4) = *(v1 + v7);
      _os_log_impl(&dword_20C66F000, v8, v9, "Changing offset to %f", v10, 0xCu);
      MEMORY[0x20F30E080](v10, -1, -1);
    }

    return (*(v4 + 8))(v6, v3);
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath);
    *(&v13 - 2) = v1;
    *(&v13 - 1) = a1;
    v14 = v1;
    lazy protocol witness table accessor for type TrainingLoadChartViewModel and conformance TrainingLoadChartViewModel();
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
  }
}

uint64_t closure #1 in TrainingLoadChartViewModel.emphasizedChartPointIndexOffset.setter(uint64_t a1, double a2)
{
  v5 = type metadata accessor for Logger();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v15 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = OBJC_IVAR____TtC9WorkoutUI26TrainingLoadChartViewModel__emphasizedChartPointIndexOffset;
  *(a1 + OBJC_IVAR____TtC9WorkoutUI26TrainingLoadChartViewModel__emphasizedChartPointIndexOffset) = a2;
  static WOLog.trainingLoad.getter();

  v10 = Logger.logObject.getter();
  v11 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    v17 = v2;
    v13 = v12;
    *v12 = 134217984;
    swift_getKeyPath();
    v16 = v5;
    v18 = a1;
    lazy protocol witness table accessor for type TrainingLoadChartViewModel and conformance TrainingLoadChartViewModel();
    ObservationRegistrar.access<A, B>(_:keyPath:)();
    v5 = v16;

    *(v13 + 1) = *(a1 + v9);
    _os_log_impl(&dword_20C66F000, v10, v11, "Changing offset to %f", v13, 0xCu);
    MEMORY[0x20F30E080](v13, -1, -1);
  }

  return (*(v6 + 8))(v8, v5);
}

uint64_t TrainingLoadChartViewModel.indexOffsetFromFirstKeyDateToFirstPoint.getter()
{
  swift_getKeyPath();
  lazy protocol witness table accessor for type TrainingLoadChartViewModel and conformance TrainingLoadChartViewModel();
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v1 = v0 + OBJC_IVAR____TtC9WorkoutUI26TrainingLoadChartViewModel__configuration;
  swift_beginAccess();
  v2 = type metadata accessor for TrainingLoadChart.Configuration(0);
  v3 = *(*(v1 + *(v2 + 28)) + 16);
  swift_getKeyPath();
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  result = 0;
  if (*(*(v1 + *(v2 + 24)) + 16) < v3)
  {
    swift_getKeyPath();
    ObservationRegistrar.access<A, B>(_:keyPath:)();

    v5 = *(*(v1 + *(v2 + 28)) + 16);
    swift_getKeyPath();
    ObservationRegistrar.access<A, B>(_:keyPath:)();

    return v5 - *(*(v1 + *(v2 + 24)) + 16);
  }

  return result;
}

double TrainingLoadChartViewModel.maxValueOfIndexOffset.getter()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSNsSxRzSZ6StrideRpzrlE5IndexOy9HealthKit03DayB0V_GMd);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = v23 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v7 = v23 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSNy9HealthKit8DayIndexVGMd);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = v23 - v9;
  v11 = type metadata accessor for GregorianDayRange();
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v14 = v23 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_getKeyPath();
  v23[1] = OBJC_IVAR____TtC9WorkoutUI26TrainingLoadChartViewModel___observationRegistrar;
  v24 = v0;
  v23[0] = lazy protocol witness table accessor for type TrainingLoadChartViewModel and conformance TrainingLoadChartViewModel();
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v15 = v0 + OBJC_IVAR____TtC9WorkoutUI26TrainingLoadChartViewModel__configuration;
  swift_beginAccess();
  v16 = type metadata accessor for TrainingLoadChart.Configuration(0);
  (*(v12 + 16))(v14, v15 + *(v16 + 20), v11);
  GregorianDayRange.dayIndexRange.getter();
  (*(v12 + 8))(v14, v11);
  v17 = type metadata accessor for DayIndex();
  v18 = *(v17 - 8);
  (*(v18 + 16))(v7, v10, v17);
  v19 = *(v18 + 56);
  v19(v7, 0, 1, v17);
  v19(v4, 1, 1, v17);
  v20 = specialized ClosedRange<>.distance(from:to:)(v7, v4);
  outlined destroy of ClosedRange<DayIndex><>.Index(v4, &_sSNsSxRzSZ6StrideRpzrlE5IndexOy9HealthKit03DayB0V_GMd);
  outlined destroy of ClosedRange<DayIndex><>.Index(v7, &_sSNsSxRzSZ6StrideRpzrlE5IndexOy9HealthKit03DayB0V_GMd);
  outlined destroy of ClosedRange<DayIndex><>.Index(v10, &_sSNy9HealthKit8DayIndexVGMd);
  swift_getKeyPath();
  v23[2] = v1;
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v21 = *(*(v15 + *(v16 + 24)) + 16);
  if (v21 >= v20)
  {
    return v20;
  }

  return v21;
}

double TrainingLoadChartViewModel.minValueOfIndexOffset.getter()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSNsSxRzSZ6StrideRpzrlE5IndexOy9HealthKit03DayB0V_GMd);
  MEMORY[0x28223BE20](v1 - 8);
  v24 = &v21 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v3);
  v23 = &v21 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSNy9HealthKit8DayIndexVGMd);
  MEMORY[0x28223BE20](v5 - 8);
  v21 = &v21 - v6;
  v7 = type metadata accessor for GregorianDayRange();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v21 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_getKeyPath();
  v26 = v0;
  lazy protocol witness table accessor for type TrainingLoadChartViewModel and conformance TrainingLoadChartViewModel();
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v11 = v0 + OBJC_IVAR____TtC9WorkoutUI26TrainingLoadChartViewModel__configuration;
  swift_beginAccess();
  v12 = type metadata accessor for TrainingLoadChart.Configuration(0);
  v22 = *(*(v11 + *(v12 + 24)) + 16);
  swift_getKeyPath();
  v25 = v0;
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  (*(v8 + 16))(v10, v11 + *(v12 + 20), v7);
  v13 = v21;
  GregorianDayRange.dayIndexRange.getter();
  (*(v8 + 8))(v10, v7);
  v14 = type metadata accessor for DayIndex();
  v15 = *(v14 - 8);
  v16 = v23;
  (*(v15 + 16))(v23, v13, v14);
  v17 = *(v15 + 56);
  v17(v16, 0, 1, v14);
  v18 = v24;
  v17(v24, 1, 1, v14);
  v19 = specialized ClosedRange<>.distance(from:to:)(v16, v18);
  outlined destroy of ClosedRange<DayIndex><>.Index(v18, &_sSNsSxRzSZ6StrideRpzrlE5IndexOy9HealthKit03DayB0V_GMd);
  outlined destroy of ClosedRange<DayIndex><>.Index(v16, &_sSNsSxRzSZ6StrideRpzrlE5IndexOy9HealthKit03DayB0V_GMd);
  outlined destroy of ClosedRange<DayIndex><>.Index(v13, &_sSNy9HealthKit8DayIndexVGMd);
  result = 1.0;
  if (v22 < v19)
  {
    return 0.0;
  }

  return result;
}

uint64_t TrainingLoadChartViewModel.init(configuration:)(uint64_t a1)
{
  v2 = v1;
  v61 = a1;
  v3 = type metadata accessor for Logger();
  v47 = *(v3 - 8);
  v48 = v3;
  MEMORY[0x28223BE20](v3);
  v46 = &v45 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for Date();
  v59 = *(v5 - 8);
  v60 = v5;
  MEMORY[0x28223BE20](v5);
  v58 = &v45 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v55 = type metadata accessor for Calendar.Identifier();
  v53 = *(v55 - 8);
  MEMORY[0x28223BE20](v55);
  v8 = &v45 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v54 = type metadata accessor for Calendar();
  v52 = *(v54 - 8);
  MEMORY[0x28223BE20](v54);
  v10 = &v45 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for GregorianDayRange();
  v56 = *(v11 - 8);
  v57 = v11;
  MEMORY[0x28223BE20](v11);
  v51 = &v45 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v50 = &v45 - v14;
  MEMORY[0x28223BE20](v15);
  v17 = &v45 - v16;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9WorkoutUI17TrainingLoadChartV13ConfigurationVSgMd);
  MEMORY[0x28223BE20](v18 - 8);
  v20 = &v45 - v19;
  v21 = type metadata accessor for TrainingLoadChart.Configuration(0);
  v22 = *(v21 - 8);
  MEMORY[0x28223BE20](v21);
  v24 = &v45 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v25);
  v27 = &v45 - v26;
  v28 = OBJC_IVAR____TtC9WorkoutUI26TrainingLoadChartViewModel__emphasizedChartPointIndexOffset;
  *(v2 + OBJC_IVAR____TtC9WorkoutUI26TrainingLoadChartViewModel__emphasizedChartPointIndexOffset) = 0xBFF0000000000000;
  v49 = OBJC_IVAR____TtC9WorkoutUI26TrainingLoadChartViewModel___observationRegistrar;
  ObservationRegistrar.init()();
  outlined init with copy of TrainingLoadChart.Configuration?(v61, v20);
  if ((*(v22 + 48))(v20, 1, v21) == 1)
  {
    outlined destroy of ClosedRange<DayIndex><>.Index(v20, &_s9WorkoutUI17TrainingLoadChartV13ConfigurationVSgMd);
    v29 = v53;
    v30 = v55;
    (*(v53 + 104))(v8, *MEMORY[0x277CC9830], v55);
    Calendar.init(identifier:)();
    (*(v29 + 8))(v8, v30);
    v31 = v58;
    static Date.now.getter();
    static GregorianDayRange.previousWeek(through:gregorianCalendar:)();
    (*(v59 + 8))(v31, v60);
    (*(v52 + 8))(v10, v54);
    v33 = v56;
    v32 = v57;
    v34 = *(v56 + 16);
    v35 = v50;
    v34(v50, v17, v57);
    v36 = v51;
    v34(v51, v17, v32);
    TrainingLoadChart.Configuration.init(dayRangeOfData:viewPortDayRange:points:keyDates:)(v35, v36, MEMORY[0x277D84F90], MEMORY[0x277D84F90], v24);
    outlined destroy of ClosedRange<DayIndex><>.Index(v61, &_s9WorkoutUI17TrainingLoadChartV13ConfigurationVSgMd);
    (*(v33 + 8))(v17, v32);
    outlined init with take of TrainingLoadViewModel.ChartPoint(v24, v2 + OBJC_IVAR____TtC9WorkoutUI26TrainingLoadChartViewModel__configuration, type metadata accessor for TrainingLoadChart.Configuration);
  }

  else
  {
    v37 = v61;
    outlined init with take of TrainingLoadViewModel.ChartPoint(v20, v27, type metadata accessor for TrainingLoadChart.Configuration);
    outlined init with copy of TrainingLoadViewModel.ChartPoint(v27, v2 + OBJC_IVAR____TtC9WorkoutUI26TrainingLoadChartViewModel__configuration, type metadata accessor for TrainingLoadChart.Configuration);
    ChartView = TrainingLoadChartViewModel.maxValueOfIndexOffset.getter();
    if (*(v2 + v28) == ChartView)
    {
      *(v2 + v28) = ChartView;
      v39 = v46;
      static WOLog.trainingLoad.getter();

      v40 = Logger.logObject.getter();
      v41 = static os_log_type_t.debug.getter();

      if (os_log_type_enabled(v40, v41))
      {
        v42 = swift_slowAlloc();
        *v42 = 134217984;
        swift_getKeyPath();
        v62 = v2;
        lazy protocol witness table accessor for type TrainingLoadChartViewModel and conformance TrainingLoadChartViewModel();
        ObservationRegistrar.access<A, B>(_:keyPath:)();

        *(v42 + 4) = *(v2 + v28);
        _os_log_impl(&dword_20C66F000, v40, v41, "Changing offset to %f", v42, 0xCu);
        MEMORY[0x20F30E080](v42, -1, -1);
      }

      (*(v47 + 8))(v39, v48);
      outlined destroy of ClosedRange<DayIndex><>.Index(v37, &_s9WorkoutUI17TrainingLoadChartV13ConfigurationVSgMd);
      outlined destroy of TrainingLoadViewModel.ChartPoint(v27, type metadata accessor for TrainingLoadChart.Configuration);
    }

    else
    {
      KeyPath = swift_getKeyPath();
      MEMORY[0x28223BE20](KeyPath);
      *(&v45 - 2) = v2;
      *(&v45 - 1) = ChartView;
      v62 = v2;
      lazy protocol witness table accessor for type TrainingLoadChartViewModel and conformance TrainingLoadChartViewModel();
      ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();

      outlined destroy of ClosedRange<DayIndex><>.Index(v37, &_s9WorkoutUI17TrainingLoadChartV13ConfigurationVSgMd);
      outlined destroy of TrainingLoadViewModel.ChartPoint(v27, type metadata accessor for TrainingLoadChart.Configuration);
    }
  }

  return v2;
}

void TrainingLoadChartViewModel.emphasizedChartPoint.getter(uint64_t a1@<X8>)
{
  swift_getKeyPath();
  lazy protocol witness table accessor for type TrainingLoadChartViewModel and conformance TrainingLoadChartViewModel();
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v3 = *(v1 + OBJC_IVAR____TtC9WorkoutUI26TrainingLoadChartViewModel__emphasizedChartPointIndexOffset);
  if ((*&v3 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_20;
  }

  if (v3 <= -9.22337204e18)
  {
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  if (v3 >= 9.22337204e18)
  {
LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

  ChartView = TrainingLoadChartViewModel.minValueOfIndexOffset.getter();
  if ((*&ChartView & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
LABEL_22:
    __break(1u);
    goto LABEL_23;
  }

  if (ChartView <= -9.22337204e18)
  {
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  if (ChartView >= 9.22337204e18)
  {
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

  v5 = ChartView;
  swift_getKeyPath();
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v6 = v1 + OBJC_IVAR____TtC9WorkoutUI26TrainingLoadChartViewModel__configuration;
  swift_beginAccess();
  v7 = type metadata accessor for TrainingLoadChart.Configuration(0);
  v8 = *(*(v6 + *(v7 + 24)) + 16);
  if (v8 < v5)
  {
LABEL_25:
    __break(1u);
    goto LABEL_26;
  }

  v9 = v7;
  v10 = v3;
  swift_getKeyPath();
  if (v3 >= v5 && v8 > v10)
  {
    ObservationRegistrar.access<A, B>(_:keyPath:)();

    if ((v10 & 0x8000000000000000) == 0)
    {
      v17 = *(v6 + *(v9 + 24));
      if (*(v17 + 16) > v10)
      {
        View = type metadata accessor for TrainingLoadViewModel.ChartPoint(0);
        v19 = *(View - 8);
        outlined init with copy of TrainingLoadViewModel.ChartPoint(v17 + ((*(v19 + 80) + 32) & ~*(v19 + 80)) + *(v19 + 72) * v10, a1, type metadata accessor for TrainingLoadViewModel.ChartPoint);
        (*(v19 + 56))(a1, 0, 1, View);
        return;
      }

      goto LABEL_27;
    }

LABEL_26:
    __break(1u);
LABEL_27:
    __break(1u);
    return;
  }

  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v12 = *(v6 + *(v9 + 24));
  v13 = *(v12 + 16);
  if (v13)
  {
    v14 = v13 - 1;
    v15 = type metadata accessor for TrainingLoadViewModel.ChartPoint(0);
    v16 = *(v15 - 8);
    outlined init with copy of TrainingLoadViewModel.ChartPoint(v12 + ((*(v16 + 80) + 32) & ~*(v16 + 80)) + *(v16 + 72) * v14, a1, type metadata accessor for TrainingLoadViewModel.ChartPoint);
    (*(v16 + 56))(a1, 0, 1, v15);
  }

  else
  {
    v20 = type metadata accessor for TrainingLoadViewModel.ChartPoint(0);
    (*(*(v20 - 8) + 56))(a1, 1, 1, v20);
  }
}

uint64_t TrainingLoadChartViewModel.minAcuteBaseline.getter()
{
  View = type metadata accessor for TrainingLoadViewModel.ChartPoint(0);
  v2 = *(View - 8);
  MEMORY[0x28223BE20](View);
  v4 = &v21 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v7 = &v21 - v6;
  MEMORY[0x28223BE20](v8);
  v10 = &v21 - v9;
  swift_getKeyPath();
  v22 = v0;
  lazy protocol witness table accessor for type TrainingLoadChartViewModel and conformance TrainingLoadChartViewModel();
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v11 = v0 + OBJC_IVAR____TtC9WorkoutUI26TrainingLoadChartViewModel__configuration;
  swift_beginAccess();
  v12 = *(v11 + *(type metadata accessor for TrainingLoadChart.Configuration(0) + 24));
  v13 = *(v12 + 16);
  if (!v13)
  {
    return 0;
  }

  v14 = v12 + ((*(v2 + 80) + 32) & ~*(v2 + 80));
  outlined init with copy of TrainingLoadViewModel.ChartPoint(v14, v7, type metadata accessor for TrainingLoadViewModel.ChartPoint);

  if (v13 == 1)
  {
LABEL_3:

    outlined init with take of TrainingLoadViewModel.ChartPoint(v7, v10, type metadata accessor for TrainingLoadViewModel.ChartPoint);
    v16 = *&v10[*(View + 24)];
    outlined destroy of TrainingLoadViewModel.ChartPoint(v10, type metadata accessor for TrainingLoadViewModel.ChartPoint);
    return v16;
  }

  v17 = 1;
  while (v17 < *(v12 + 16))
  {
    outlined init with copy of TrainingLoadViewModel.ChartPoint(v14 + *(v2 + 72) * v17, v4, type metadata accessor for TrainingLoadViewModel.ChartPoint);
    v18 = *(View + 24);
    v19 = *&v4[v18];
    if (v4[v18 + 8])
    {
      v19 = 0.0;
    }

    v20 = &v7[v18];
    if (v20[8])
    {
      if (v19 >= 0.0)
      {
        goto LABEL_16;
      }
    }

    else if (v19 >= *v20)
    {
LABEL_16:
      result = outlined destroy of TrainingLoadViewModel.ChartPoint(v4, type metadata accessor for TrainingLoadViewModel.ChartPoint);
      goto LABEL_8;
    }

    outlined destroy of TrainingLoadViewModel.ChartPoint(v7, type metadata accessor for TrainingLoadViewModel.ChartPoint);
    result = outlined init with take of TrainingLoadViewModel.ChartPoint(v4, v7, type metadata accessor for TrainingLoadViewModel.ChartPoint);
LABEL_8:
    if (v13 == ++v17)
    {
      goto LABEL_3;
    }
  }

  __break(1u);
  return result;
}

uint64_t TrainingLoadChartViewModel.maxAcuteBaseline.getter()
{
  View = type metadata accessor for TrainingLoadViewModel.ChartPoint(0);
  v2 = *(View - 8);
  MEMORY[0x28223BE20](View);
  v4 = &v21 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v7 = &v21 - v6;
  MEMORY[0x28223BE20](v8);
  v10 = &v21 - v9;
  swift_getKeyPath();
  v22 = v0;
  lazy protocol witness table accessor for type TrainingLoadChartViewModel and conformance TrainingLoadChartViewModel();
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v11 = v0 + OBJC_IVAR____TtC9WorkoutUI26TrainingLoadChartViewModel__configuration;
  swift_beginAccess();
  v12 = *(v11 + *(type metadata accessor for TrainingLoadChart.Configuration(0) + 24));
  v13 = *(v12 + 16);
  if (!v13)
  {
    return 0;
  }

  v14 = v12 + ((*(v2 + 80) + 32) & ~*(v2 + 80));
  outlined init with copy of TrainingLoadViewModel.ChartPoint(v14, v7, type metadata accessor for TrainingLoadViewModel.ChartPoint);

  if (v13 == 1)
  {
LABEL_3:

    outlined init with take of TrainingLoadViewModel.ChartPoint(v7, v10, type metadata accessor for TrainingLoadViewModel.ChartPoint);
    v16 = *&v10[*(View + 24)];
    outlined destroy of TrainingLoadViewModel.ChartPoint(v10, type metadata accessor for TrainingLoadViewModel.ChartPoint);
    return v16;
  }

  v17 = 1;
  while (v17 < *(v12 + 16))
  {
    outlined init with copy of TrainingLoadViewModel.ChartPoint(v14 + *(v2 + 72) * v17, v4, type metadata accessor for TrainingLoadViewModel.ChartPoint);
    v18 = *(View + 24);
    v19 = *&v7[v18];
    if (v7[v18 + 8])
    {
      v19 = 0.0;
    }

    v20 = &v4[v18];
    if (v20[8])
    {
      if (v19 >= 0.0)
      {
        goto LABEL_16;
      }
    }

    else if (v19 >= *v20)
    {
LABEL_16:
      result = outlined destroy of TrainingLoadViewModel.ChartPoint(v4, type metadata accessor for TrainingLoadViewModel.ChartPoint);
      goto LABEL_8;
    }

    outlined destroy of TrainingLoadViewModel.ChartPoint(v7, type metadata accessor for TrainingLoadViewModel.ChartPoint);
    result = outlined init with take of TrainingLoadViewModel.ChartPoint(v4, v7, type metadata accessor for TrainingLoadViewModel.ChartPoint);
LABEL_8:
    if (v13 == ++v17)
    {
      goto LABEL_3;
    }
  }

  __break(1u);
  return result;
}

uint64_t TrainingLoadChartViewModel.minChronicBaseline.getter()
{
  View = type metadata accessor for TrainingLoadViewModel.ChartPoint(0);
  v2 = *(View - 8);
  MEMORY[0x28223BE20](View);
  v4 = &v24 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_getKeyPath();
  v25 = v0;
  lazy protocol witness table accessor for type TrainingLoadChartViewModel and conformance TrainingLoadChartViewModel();
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v5 = v0 + OBJC_IVAR____TtC9WorkoutUI26TrainingLoadChartViewModel__configuration;
  swift_beginAccess();
  v6 = *(v5 + *(type metadata accessor for TrainingLoadChart.Configuration(0) + 24));
  v7 = *(v6 + 16);
  if (v7)
  {
    v8 = &v4[*(View + 32)];
    v9 = v6 + ((*(v2 + 80) + 32) & ~*(v2 + 80));
    v10 = *(v2 + 72);

    v11 = MEMORY[0x277D84F90];
    do
    {
      outlined init with copy of TrainingLoadViewModel.ChartPoint(v9, v4, type metadata accessor for TrainingLoadViewModel.ChartPoint);
      v12 = *v8;
      v13 = v8[8];
      outlined destroy of TrainingLoadViewModel.ChartPoint(v4, type metadata accessor for TrainingLoadViewModel.ChartPoint);
      if ((v13 & 1) == 0)
      {
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v11 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v11 + 2) + 1, 1, v11);
        }

        v15 = *(v11 + 2);
        v14 = *(v11 + 3);
        if (v15 >= v14 >> 1)
        {
          v11 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v14 > 1), v15 + 1, 1, v11);
        }

        *(v11 + 2) = v15 + 1;
        *&v11[8 * v15 + 32] = v12;
      }

      v9 += v10;
      --v7;
    }

    while (v7);

    v16 = *(v11 + 2);
    if (v16)
    {
      goto LABEL_11;
    }

LABEL_18:
    v22 = 0.0;
    goto LABEL_19;
  }

  v11 = MEMORY[0x277D84F90];
  v16 = *(MEMORY[0x277D84F90] + 16);
  if (!v16)
  {
    goto LABEL_18;
  }

LABEL_11:
  v17 = *(v11 + 4);
  v18 = v16 - 1;
  if (v16 != 1)
  {
    v19 = (v11 + 40);
    do
    {
      v20 = *v19++;
      v21 = v20;
      if (v20 < v17)
      {
        v17 = v21;
      }

      --v18;
    }

    while (v18);
  }

  v22 = v17;
LABEL_19:

  return *&v22;
}

uint64_t TrainingLoadChartViewModel.maxChronicBaseline.getter()
{
  View = type metadata accessor for TrainingLoadViewModel.ChartPoint(0);
  v2 = *(View - 8);
  MEMORY[0x28223BE20](View);
  v4 = &v24 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_getKeyPath();
  v25 = v0;
  lazy protocol witness table accessor for type TrainingLoadChartViewModel and conformance TrainingLoadChartViewModel();
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v5 = v0 + OBJC_IVAR____TtC9WorkoutUI26TrainingLoadChartViewModel__configuration;
  swift_beginAccess();
  v6 = *(v5 + *(type metadata accessor for TrainingLoadChart.Configuration(0) + 24));
  v7 = *(v6 + 16);
  if (v7)
  {
    v8 = &v4[*(View + 32)];
    v9 = v6 + ((*(v2 + 80) + 32) & ~*(v2 + 80));
    v10 = *(v2 + 72);

    v11 = MEMORY[0x277D84F90];
    do
    {
      outlined init with copy of TrainingLoadViewModel.ChartPoint(v9, v4, type metadata accessor for TrainingLoadViewModel.ChartPoint);
      v12 = *v8;
      v13 = v8[8];
      outlined destroy of TrainingLoadViewModel.ChartPoint(v4, type metadata accessor for TrainingLoadViewModel.ChartPoint);
      if ((v13 & 1) == 0)
      {
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v11 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v11 + 2) + 1, 1, v11);
        }

        v15 = *(v11 + 2);
        v14 = *(v11 + 3);
        if (v15 >= v14 >> 1)
        {
          v11 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v14 > 1), v15 + 1, 1, v11);
        }

        *(v11 + 2) = v15 + 1;
        *&v11[8 * v15 + 32] = v12;
      }

      v9 += v10;
      --v7;
    }

    while (v7);

    v16 = *(v11 + 2);
    if (v16)
    {
      goto LABEL_11;
    }

LABEL_18:
    v22 = 0.0;
    goto LABEL_19;
  }

  v11 = MEMORY[0x277D84F90];
  v16 = *(MEMORY[0x277D84F90] + 16);
  if (!v16)
  {
    goto LABEL_18;
  }

LABEL_11:
  v17 = *(v11 + 4);
  v18 = v16 - 1;
  if (v16 != 1)
  {
    v19 = (v11 + 40);
    do
    {
      v20 = *v19++;
      v21 = v20;
      if (v17 < v20)
      {
        v17 = v21;
      }

      --v18;
    }

    while (v18);
  }

  v22 = v17;
LABEL_19:

  return *&v22;
}

uint64_t TrainingLoadChartViewModel.updateSelectedDay(to:)(uint64_t a1)
{
  v2 = v1;
  v75 = a1;
  v55 = type metadata accessor for Logger();
  v54 = *(v55 - 8);
  MEMORY[0x28223BE20](v55);
  v53 = &v53 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v74 = type metadata accessor for Calendar.Identifier();
  v4 = *(v74 - 8);
  MEMORY[0x28223BE20](v74);
  v73 = &v53 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v72 = type metadata accessor for Calendar();
  v61 = *(v72 - 8);
  MEMORY[0x28223BE20](v72);
  v71 = &v53 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v70 = type metadata accessor for Date();
  v7 = *(v70 - 8);
  MEMORY[0x28223BE20](v70);
  v69 = &v53 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v68 = &v53 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSi6offset_9WorkoutUI21TrainingLoadViewModelV10ChartPointV7elementtMd);
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v59 = (&v53 - v13);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSi6offset_9WorkoutUI21TrainingLoadViewModelV10ChartPointV7elementtSgMd);
  MEMORY[0x28223BE20](v14 - 8);
  v16 = &v53 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v78 = (&v53 - v18);
  swift_getKeyPath();
  v19 = OBJC_IVAR____TtC9WorkoutUI26TrainingLoadChartViewModel___observationRegistrar;
  v80 = v2;
  ChartView = lazy protocol witness table accessor for type TrainingLoadChartViewModel and conformance TrainingLoadChartViewModel();
  v56 = v19;
  v57 = ChartView;
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v58 = v2;
  v21 = &v2[OBJC_IVAR____TtC9WorkoutUI26TrainingLoadChartViewModel__configuration];
  swift_beginAccess();
  v22 = *&v21[*(type metadata accessor for TrainingLoadChart.Configuration(0) + 24)];
  v23 = *(v22 + 16);
  v76 = (v12 + 48);
  v77 = (v12 + 56);
  v65 = (v7 + 16);
  v64 = *MEMORY[0x277CC9830];
  v63 = (v4 + 104);
  v62 = (v4 + 8);
  ++v61;
  v60 = (v7 + 8);

  v25 = 0;
  v66 = v23;
  v67 = v11;
  v26 = v69;
  do
  {
    if (v25 == v23)
    {
      v27 = 1;
      v25 = v23;
    }

    else
    {
      if ((v25 & 0x8000000000000000) != 0)
      {
        __break(1u);
LABEL_18:
        __break(1u);
        return result;
      }

      if (v25 >= *(v22 + 16))
      {
        goto LABEL_18;
      }

      v28 = *(type metadata accessor for TrainingLoadViewModel.ChartPoint(0) - 8);
      v29 = v22 + ((*(v28 + 80) + 32) & ~*(v28 + 80)) + *(v28 + 72) * v25;
      v30 = *(v11 + 48);
      v31 = v59;
      *v59 = v25;
      outlined init with copy of TrainingLoadViewModel.ChartPoint(v29, v31 + v30, type metadata accessor for TrainingLoadViewModel.ChartPoint);
      outlined init with take of (offset: Int, element: TrainingLoadViewModel.ChartPoint)(v31, v16, &_sSi6offset_9WorkoutUI21TrainingLoadViewModelV10ChartPointV7elementtMd);
      v27 = 0;
      ++v25;
    }

    v32 = v78;
    (*v77)(v16, v27, 1, v11);
    outlined init with take of (offset: Int, element: TrainingLoadViewModel.ChartPoint)(v16, v32, &_sSi6offset_9WorkoutUI21TrainingLoadViewModelV10ChartPointV7elementtSgMd);
    if ((*v76)(v32, 1, v11) == 1)
    {
    }

    v33 = *v32;
    v34 = *(v11 + 48);
    v35 = v68;
    v36 = v22;
    v37 = v16;
    v38 = v70;
    (*v65)(v68, v32 + v34, v70);
    outlined destroy of TrainingLoadViewModel.ChartPoint(v32 + v34, type metadata accessor for TrainingLoadViewModel.ChartPoint);
    v40 = v73;
    v39 = v74;
    (*v63)(v73, v64, v74);
    v41 = v71;
    Calendar.init(identifier:)();
    (*v62)(v40, v39);
    DayIndex.startDate(in:)();
    (*v61)(v41, v72);
    LOBYTE(v39) = Date.isSameDay(as:)();
    v42 = *v60;
    (*v60)(v26, v38);
    v43 = v35;
    v44 = v38;
    v16 = v37;
    v22 = v36;
    v23 = v66;
    v11 = v67;
    result = v42(v43, v44);
  }

  while ((v39 & 1) == 0);

  if (v33 != -1)
  {
    v45 = v33;
    v46 = OBJC_IVAR____TtC9WorkoutUI26TrainingLoadChartViewModel__emphasizedChartPointIndexOffset;
    v47 = v58;
    if (*&v58[OBJC_IVAR____TtC9WorkoutUI26TrainingLoadChartViewModel__emphasizedChartPointIndexOffset] == v33)
    {
      *&v58[OBJC_IVAR____TtC9WorkoutUI26TrainingLoadChartViewModel__emphasizedChartPointIndexOffset] = v45;
      v48 = v53;
      static WOLog.trainingLoad.getter();

      v49 = Logger.logObject.getter();
      v50 = static os_log_type_t.debug.getter();

      if (os_log_type_enabled(v49, v50))
      {
        v51 = swift_slowAlloc();
        *v51 = 134217984;
        swift_getKeyPath();
        v79 = v47;
        ObservationRegistrar.access<A, B>(_:keyPath:)();

        *(v51 + 4) = *&v47[v46];
        _os_log_impl(&dword_20C66F000, v49, v50, "Changing offset to %f", v51, 0xCu);
        MEMORY[0x20F30E080](v51, -1, -1);
      }

      return (*(v54 + 8))(v48, v55);
    }

    else
    {
      KeyPath = swift_getKeyPath();
      MEMORY[0x28223BE20](KeyPath);
      *(&v53 - 2) = v47;
      *(&v53 - 1) = v45;
      v79 = v47;
      ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
    }
  }

  return result;
}

uint64_t TrainingLoadChartViewModel.__deallocating_deinit()
{
  outlined destroy of TrainingLoadViewModel.ChartPoint(v0 + OBJC_IVAR____TtC9WorkoutUI26TrainingLoadChartViewModel__configuration, type metadata accessor for TrainingLoadChart.Configuration);
  v1 = OBJC_IVAR____TtC9WorkoutUI26TrainingLoadChartViewModel___observationRegistrar;
  v2 = type metadata accessor for ObservationRegistrar();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for TrainingLoadChartViewModel()
{
  result = type metadata singleton initialization cache for TrainingLoadChartViewModel;
  if (!type metadata singleton initialization cache for TrainingLoadChartViewModel)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t type metadata completion function for TrainingLoadChartViewModel()
{
  result = type metadata accessor for TrainingLoadChart.Configuration(319);
  if (v1 <= 0x3F)
  {
    result = type metadata accessor for ObservationRegistrar();
    if (v2 <= 0x3F)
    {
      result = swift_updateClassMetadata2();
      if (!result)
      {
        return 0;
      }
    }
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type TrainingLoadChartViewModel and conformance TrainingLoadChartViewModel()
{
  result = lazy protocol witness table cache variable for type TrainingLoadChartViewModel and conformance TrainingLoadChartViewModel;
  if (!lazy protocol witness table cache variable for type TrainingLoadChartViewModel and conformance TrainingLoadChartViewModel)
  {
    type metadata accessor for TrainingLoadChartViewModel();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type TrainingLoadChartViewModel and conformance TrainingLoadChartViewModel);
  }

  return result;
}

uint64_t outlined init with take of (offset: Int, element: TrainingLoadViewModel.ChartPoint)(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(a3);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t outlined init with copy of TrainingLoadViewModel.ChartPoint(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t specialized TrainingLoadChartViewModel.shouldNotifyObservers<A>(_:_:)(uint64_t a1, uint64_t a2)
{
  if (static GregorianDayRange.== infix(_:_:)() & 1) != 0 && (v4 = type metadata accessor for TrainingLoadChart.Configuration(0), (static GregorianDayRange.== infix(_:_:)()) && (_sSasSQRzlE2eeoiySbSayxG_ABtFZ9WorkoutUI21TrainingLoadViewModelV10ChartPointV_Tt1g5(*(a1 + v4[6]), *(a2 + v4[6])) & 1) != 0 && (_sSasSQRzlE2eeoiySbSayxG_ABtFZ10Foundation4DateV_Tt1g5(*(a1 + v4[7]), *(a2 + v4[7])) & 1) != 0 && *(a1 + v4[8]) == *(a2 + v4[8]))
  {
    v5 = *(a1 + v4[9]) ^ *(a2 + v4[9]);
  }

  else
  {
    v5 = 1;
  }

  return v5 & 1;
}

uint64_t outlined destroy of TrainingLoadViewModel.ChartPoint(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t outlined assign with take of TrainingLoadChart.Configuration(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for TrainingLoadChart.Configuration(0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t outlined assign with copy of TrainingLoadChart.Configuration(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for TrainingLoadChart.Configuration(0);
  (*(*(v4 - 8) + 24))(a2, a1, v4);
  return a2;
}

uint64_t outlined init with copy of TrainingLoadChart.Configuration?(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9WorkoutUI17TrainingLoadChartV13ConfigurationVSgMd);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t outlined destroy of ClosedRange<DayIndex><>.Index(uint64_t a1, uint64_t *a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(a2);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t outlined init with take of TrainingLoadViewModel.ChartPoint(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t closure #1 in TrainingLoadChartViewModel.emphasizedChartPointIndexOffset.setterpartial apply()
{
  return partial apply for closure #1 in TrainingLoadChartViewModel.emphasizedChartPointIndexOffset.setter();
}

{
  return partial apply for closure #1 in TrainingLoadChartViewModel.emphasizedChartPointIndexOffset.setter();
}

void *EffortSampleCollection.effortSample.getter()
{
  v1 = *(v0 + OBJC_IVAR___WOEffortSampleCollection_effortSample);
  v2 = v1;
  return v1;
}

void *EffortSampleCollection.estimatedEffortSample.getter()
{
  v1 = *(v0 + OBJC_IVAR___WOEffortSampleCollection_estimatedEffortSample);
  v2 = v1;
  return v1;
}

id EffortSampleCollection.__allocating_init(effortSample:estimatedEffortSample:)(uint64_t a1, uint64_t a2)
{
  v5 = objc_allocWithZone(v2);
  *&v5[OBJC_IVAR___WOEffortSampleCollection_effortSample] = a1;
  *&v5[OBJC_IVAR___WOEffortSampleCollection_estimatedEffortSample] = a2;
  v7.receiver = v5;
  v7.super_class = v2;
  return objc_msgSendSuper2(&v7, sel_init);
}

id EffortSampleCollection.init(effortSample:estimatedEffortSample:)(uint64_t a1, uint64_t a2)
{
  *&v2[OBJC_IVAR___WOEffortSampleCollection_effortSample] = a1;
  *&v2[OBJC_IVAR___WOEffortSampleCollection_estimatedEffortSample] = a2;
  v4.receiver = v2;
  v4.super_class = type metadata accessor for EffortSampleCollection();
  return objc_msgSendSuper2(&v4, sel_init);
}

void *EffortSampleCollection.preferredSample.getter()
{
  v1 = *(v0 + OBJC_IVAR___WOEffortSampleCollection_effortSample);
  v2 = v1;
  if (!v1)
  {
    v2 = *(v0 + OBJC_IVAR___WOEffortSampleCollection_estimatedEffortSample);
    if (v2)
    {
      v3 = v2;
    }
  }

  v4 = v1;
  return v2;
}

id EffortSampleCollection.preferredQuantity.getter()
{
  v1 = *(v0 + OBJC_IVAR___WOEffortSampleCollection_effortSample);
  if (v1)
  {
    v2 = *(v0 + OBJC_IVAR___WOEffortSampleCollection_effortSample);
  }

  else
  {
    v3 = *(v0 + OBJC_IVAR___WOEffortSampleCollection_estimatedEffortSample);
    if (!v3)
    {
      return 0;
    }

    v2 = v3;
    v1 = 0;
  }

  v4 = v1;
  v5 = [v2 quantity];

  return v5;
}

id EffortSampleCollection.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id EffortSampleCollection.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for EffortSampleCollection();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t RouteMapView.init(locationPositionPublisher:)@<X0>(uint64_t *a1@<X8>)
{
  type metadata accessor for LocationPositionPublisher();
  lazy protocol witness table accessor for type LocationPositionPublisher and conformance LocationPositionPublisher();
  result = ObservedObject.init(wrappedValue:)();
  *a1 = result;
  a1[1] = v3;
  return result;
}

unint64_t lazy protocol witness table accessor for type LocationPositionPublisher and conformance LocationPositionPublisher()
{
  result = lazy protocol witness table cache variable for type LocationPositionPublisher and conformance LocationPositionPublisher;
  if (!lazy protocol witness table cache variable for type LocationPositionPublisher and conformance LocationPositionPublisher)
  {
    type metadata accessor for LocationPositionPublisher();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type LocationPositionPublisher and conformance LocationPositionPublisher);
  }

  return result;
}

uint64_t RouteMapView.body.getter@<X0>(uint64_t *a1@<X8>)
{
  v4 = *v1;
  v3 = v1[1];
  type metadata accessor for LocationPositionPublisher();
  lazy protocol witness table accessor for type LocationPositionPublisher and conformance LocationPositionPublisher();

  v5 = ObservedObject.init(wrappedValue:)();
  v7 = v6;
  v8 = static Alignment.bottom.getter();
  v10 = v9;
  v11 = a1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVy07WorkoutB017BreadcrumbMapViewVAA16_OverlayModifierVyACyAD011RouteStatusH0VAA14_PaddingLayoutVGSgGGMd) + 36);
  closure #1 in RouteMapView.body.getter(v4, v3, v11);
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI16_OverlayModifierVyAA15ModifiedContentVy07WorkoutB015RouteStatusViewVAA14_PaddingLayoutVGSgGMd);
  v13 = (v11 + *(result + 36));
  *v13 = v8;
  v13[1] = v10;
  *a1 = v5;
  a1[1] = v7;
  return result;
}

uint64_t closure #1 in RouteMapView.body.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = type metadata accessor for RouteStatusView();
  MEMORY[0x28223BE20](v6 - 8);
  v8 = v23 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVy07WorkoutB015RouteStatusViewVAA14_PaddingLayoutVGMd);
  v23[0] = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v11 = v23 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v14 = v23 - v13;
  v23[6] = a1;
  v23[7] = a2;
  if (RouteMapView.shouldDisplayStatusView.getter())
  {
    LocationPositionPublisher.routePosition.getter();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy7SwiftUI4EdgeO3SetVGMd);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_20CB5EA80;
    v16 = static Edge.Set.leading.getter();
    *(inited + 32) = v16;
    v17 = static Edge.Set.trailing.getter();
    *(inited + 33) = v17;
    v18 = static Edge.Set.bottom.getter();
    *(inited + 34) = v18;
    v19 = Edge.Set.init(rawValue:)();
    Edge.Set.init(rawValue:)();
    if (Edge.Set.init(rawValue:)() != v16)
    {
      v19 = Edge.Set.init(rawValue:)();
    }

    Edge.Set.init(rawValue:)();
    if (Edge.Set.init(rawValue:)() != v17)
    {
      v19 = Edge.Set.init(rawValue:)();
    }

    Edge.Set.init(rawValue:)();
    if (Edge.Set.init(rawValue:)() != v18)
    {
      v19 = Edge.Set.init(rawValue:)();
    }

    outlined init with take of RouteStatusView(v8, v11);
    v20 = &v11[*(v9 + 36)];
    *v20 = v19;
    *(v20 + 8) = 0u;
    *(v20 + 24) = 0u;
    v20[40] = 1;
    outlined init with take of ModifiedContent<RouteStatusView, _PaddingLayout>(v11, v14);
    outlined init with take of ModifiedContent<RouteStatusView, _PaddingLayout>(v14, a3);
    return (*(v23[0] + 56))(a3, 0, 1, v9);
  }

  else
  {
    v22 = *(v23[0] + 56);

    return v22(a3, 1, 1, v9);
  }
}

uint64_t RouteMapView.shouldDisplayStatusView.getter()
{
  v0 = type metadata accessor for Logger();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v19 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for RacePosition();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v19 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);

  v8 = LocationPositionPublisher.routePoints.getter();

  v9 = *(v8 + 16);

  if (v9)
  {

    LocationPositionPublisher.routePosition.getter();

    v10 = (*(v5 + 88))(v7, v4);
    if (v10 == *MEMORY[0x277D7DF68] || v10 == *MEMORY[0x277D7DF58] || v10 == *MEMORY[0x277D7DF78])
    {
      return 1;
    }

    if (v10 != *MEMORY[0x277D7DF80] && v10 != *MEMORY[0x277D7DF70] && v10 != *MEMORY[0x277D7DF60])
    {
      static WOLog.core.getter();
      v16 = Logger.logObject.getter();
      v17 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v16, v17))
      {
        v18 = swift_slowAlloc();
        *v18 = 0;
        _os_log_impl(&dword_20C66F000, v16, v17, "Trying to display map view with unknown route postion, returning false", v18, 2u);
        MEMORY[0x20F30E080](v18, -1, -1);
      }

      (*(v1 + 8))(v3, v0);
      (*(v5 + 8))(v7, v4);
    }
  }

  return 0;
}

uint64_t protocol witness for View.body.getter in conformance RouteMapView@<X0>(uint64_t *a1@<X8>)
{
  v4 = *v1;
  v3 = v1[1];
  type metadata accessor for LocationPositionPublisher();
  lazy protocol witness table accessor for type LocationPositionPublisher and conformance LocationPositionPublisher();

  v5 = ObservedObject.init(wrappedValue:)();
  v7 = v6;
  v8 = static Alignment.bottom.getter();
  v10 = v9;
  v11 = a1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVy07WorkoutB017BreadcrumbMapViewVAA16_OverlayModifierVyACyAD011RouteStatusH0VAA14_PaddingLayoutVGSgGGMd) + 36);
  closure #1 in RouteMapView.body.getter(v4, v3, v11);
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI16_OverlayModifierVyAA15ModifiedContentVy07WorkoutB015RouteStatusViewVAA14_PaddingLayoutVGSgGMd);
  v13 = (v11 + *(result + 36));
  *v13 = v8;
  v13[1] = v10;
  *a1 = v5;
  a1[1] = v7;
  return result;
}

uint64_t getEnumTagSinglePayload for RouteMapView(uint64_t a1, int a2)
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

uint64_t storeEnumTagSinglePayload for RouteMapView(uint64_t result, int a2, int a3)
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

unint64_t lazy protocol witness table accessor for type ModifiedContent<BreadcrumbMapView, _OverlayModifier<ModifiedContent<RouteStatusView, _PaddingLayout>?>> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<BreadcrumbMapView, _OverlayModifier<ModifiedContent<RouteStatusView, _PaddingLayout>?>> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<BreadcrumbMapView, _OverlayModifier<ModifiedContent<RouteStatusView, _PaddingLayout>?>> and conformance <> ModifiedContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVy07WorkoutB017BreadcrumbMapViewVAA16_OverlayModifierVyACyAD011RouteStatusH0VAA14_PaddingLayoutVGSgGGMd);
    lazy protocol witness table accessor for type BreadcrumbMapView and conformance BreadcrumbMapView();
    lazy protocol witness table accessor for type _OverlayModifier<ModifiedContent<RouteStatusView, _PaddingLayout>?> and conformance _OverlayModifier<A>(&lazy protocol witness table cache variable for type _OverlayModifier<ModifiedContent<RouteStatusView, _PaddingLayout>?> and conformance _OverlayModifier<A>, &_s7SwiftUI16_OverlayModifierVyAA15ModifiedContentVy07WorkoutB015RouteStatusViewVAA14_PaddingLayoutVGSgGMd);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<BreadcrumbMapView, _OverlayModifier<ModifiedContent<RouteStatusView, _PaddingLayout>?>> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

uint64_t type metadata accessor for RouteStatusView()
{
  result = type metadata singleton initialization cache for RouteStatusView;
  if (!type metadata singleton initialization cache for RouteStatusView)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t type metadata completion function for RouteStatusView()
{
  result = type metadata accessor for RacePosition();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t closure #1 in closure #1 in RouteStatusView.body.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, double *a3@<X8>)
{
  GeometryProxy.size.getter();
  v7 = v6 * 0.5;
  v8 = *(type metadata accessor for RoundedRectangle() + 20);
  v9 = *MEMORY[0x277CE0118];
  v10 = type metadata accessor for RoundedCornerStyle();
  (*(*(v10 - 8) + 104))(a3 + v8, v9, v10);
  *a3 = v7;
  a3[1] = v7;
  GeometryProxy.size.getter();
  static Alignment.center.getter();
  _FrameLayout.init(width:height:alignment:)();
  v11 = (a3 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyAA16RoundedRectangleVAA12_FrameLayoutVGMd) + 36));
  v12 = v35;
  *v11 = v34;
  v11[1] = v12;
  v11[2] = v36;
  v13 = static Color.black.getter();
  *(a3 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyACyAA16RoundedRectangleVAA12_FrameLayoutVGAA24_ForegroundStyleModifierVyAA5ColorVGGMd) + 36)) = v13;
  v14 = static Alignment.center.getter();
  v16 = v15;
  closure #1 in closure #1 in closure #1 in RouteStatusView.body.getter(a2, a1, &v25);
  v43 = v31;
  v44 = v32;
  v45 = v33;
  v39 = v27;
  v40 = v28;
  v41 = v29;
  v42 = v30;
  v37 = v25;
  v38 = v26;
  *&v46 = v14;
  *(&v46 + 1) = v16;
  v17 = (a3 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyACyACyAA16RoundedRectangleVAA12_FrameLayoutVGAA24_ForegroundStyleModifierVyAA5ColorVGGAA08_OverlayK0VyAA012_ConditionalD0VyARyARyAA4TextVATGARyAA6HStackVyAA9TupleViewVyACyACyACyAA5ImageVAA012_AspectRatioH0VGAGGAMG_ATtGGATGGARyAuTGGGGMd) + 36));
  v18 = v44;
  v17[6] = v43;
  v17[7] = v18;
  v19 = v46;
  v17[8] = v45;
  v17[9] = v19;
  v20 = v40;
  v17[2] = v39;
  v17[3] = v20;
  v21 = v42;
  v17[4] = v41;
  v17[5] = v21;
  v22 = v38;
  *v17 = v37;
  v17[1] = v22;
  v47[6] = v31;
  v47[7] = v32;
  v47[8] = v33;
  v47[2] = v27;
  v47[3] = v28;
  v47[4] = v29;
  v47[5] = v30;
  v47[0] = v25;
  v47[1] = v26;
  v48 = v14;
  v49 = v16;
  outlined init with copy of _OverlayModifier<_ConditionalContent<_ConditionalContent<_ConditionalContent<Text, Text>, _ConditionalContent<HStack<TupleView<(ModifiedContent<ModifiedContent<ModifiedContent<Image, _AspectRatioLayout>, _FrameLayout>, _ForegroundStyleModifier<Color>>, Text)>>, Text>>, _ConditionalContent<_ConditionalContent<Text, Text>, Text>>>(&v37, &v24, &_s7SwiftUI16_OverlayModifierVyAA19_ConditionalContentVyAEyAEyAA4TextVAGGAEyAA6HStackVyAA9TupleViewVyAA08ModifiedF0VyANyANyAA5ImageVAA18_AspectRatioLayoutVGAA06_FrameO0VGAA016_ForegroundStyleD0VyAA5ColorVGG_AGtGGAGGGAEyAhGGGGMd);
  return outlined destroy of _OverlayModifier<_ConditionalContent<_ConditionalContent<_ConditionalContent<Text, Text>, _ConditionalContent<HStack<TupleView<(ModifiedContent<ModifiedContent<ModifiedContent<Image, _AspectRatioLayout>, _FrameLayout>, _ForegroundStyleModifier<Color>>, Text)>>, Text>>, _ConditionalContent<_ConditionalContent<Text, Text>, Text>>>(v47, &_s7SwiftUI16_OverlayModifierVyAA19_ConditionalContentVyAEyAEyAA4TextVAGGAEyAA6HStackVyAA9TupleViewVyAA08ModifiedF0VyANyANyAA5ImageVAA18_AspectRatioLayoutVGAA06_FrameO0VGAA016_ForegroundStyleD0VyAA5ColorVGG_AGtGGAGGGAEyAhGGGGMd);
}

__n128 closure #1 in closure #1 in closure #1 in RouteStatusView.body.getter@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v93 = a3;
  v5 = type metadata accessor for Font.Leading();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v91 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for RacePosition();
  v10 = *(v9 - 8);
  v11 = MEMORY[0x28223BE20](v9);
  v13 = &v91 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v10 + 16))(v13, a1, v9, v11);
  v14 = (*(v10 + 88))(v13, v9);
  if (v14 != *MEMORY[0x277D7DF68])
  {
    if (v14 == *MEMORY[0x277D7DF58])
    {
      LocalizedStringKey.init(stringLiteral:)();
      v39 = Text.init(_:tableName:bundle:comment:)();
      v41 = v40;
      v43 = v42;
      static Font.title3.getter();
      (*(v6 + 104))(v8, *MEMORY[0x277CE0A10], v5);
      Font.leading(_:)();

      (*(v6 + 8))(v8, v5);
      v44 = Text.font(_:)();
      v46 = v45;
      v48 = v47;
      v50 = v49;
      v92 = v49;

      outlined consume of Text.Storage(v39, v41, v43 & 1);

      *&v136 = v44;
      *(&v136 + 1) = v46;
      v137.n128_u64[0] = v48 & 1;
      v137.n128_u64[1] = v50;
      LOBYTE(v138) = 0;
      outlined copy of Text.Storage(v44, v46, v48 & 1);

      _ConditionalContent<>.init(storage:)();
      v120 = *v144;
      v121 = *&v144[16];
      LOBYTE(v122) = v144[32];
      _s7SwiftUI19_ConditionalContentV7StorageOyACyAA4TextVAGGACyAA6HStackVyAA9TupleViewVyAA08ModifiedD0VyANyANyAA5ImageVAA18_AspectRatioLayoutVGAA06_FrameN0VGAA24_ForegroundStyleModifierVyAA5ColorVGG_AGtGGAGG_GWOi_(&v120);
      *&v144[80] = v125;
      *&v144[96] = v126;
      *&v144[112] = v127[0];
      *&v144[122] = *(v127 + 10);
      *&v144[32] = v122;
      *&v144[48] = v123;
      *&v144[64] = v124;
      *v144 = v120;
      *&v144[16] = v121;
      __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI19_ConditionalContentVyAA4TextVAEGMd);
      __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI19_ConditionalContentVyAA6HStackVyAA9TupleViewVyAA08ModifiedD0VyAIyAIyAA5ImageVAA18_AspectRatioLayoutVGAA06_FrameL0VGAA24_ForegroundStyleModifierVyAA5ColorVGG_AA4TextVtGGAYGMd);
      lazy protocol witness table accessor for type _ConditionalContent<Text, Text> and conformance <> _ConditionalContent<A, B>();
      lazy protocol witness table accessor for type _ConditionalContent<HStack<TupleView<(ModifiedContent<ModifiedContent<ModifiedContent<Image, _AspectRatioLayout>, _FrameLayout>, _ForegroundStyleModifier<Color>>, Text)>>, Text> and conformance <> _ConditionalContent<A, B>();
      _ConditionalContent<>.init(storage:)();
      *&v144[96] = v110;
      *&v144[112] = v111[0];
      *&v144[122] = *(v111 + 10);
      *&v144[32] = v106;
      *&v144[48] = v107;
      *&v144[64] = v108;
      *&v144[80] = v109;
      *v144 = v104;
      *&v144[16] = v105;
      _s7SwiftUI19_ConditionalContentV7StorageOyACyACyAA4TextVAGGACyAA6HStackVyAA9TupleViewVyAA08ModifiedD0VyANyANyAA5ImageVAA18_AspectRatioLayoutVGAA06_FrameN0VGAA24_ForegroundStyleModifierVyAA5ColorVGG_AGtGGAGGGACyAhGG_GWOi_(v144);
      v133 = *&v144[80];
      v134 = *&v144[96];
      v135[0] = *&v144[112];
      *(v135 + 11) = *&v144[123];
      v130 = *&v144[32];
      v131 = *&v144[48];
      v132 = *&v144[64];
      v128 = *v144;
      v129 = *&v144[16];
      __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI19_ConditionalContentVyACyAA4TextVAEGACyAA6HStackVyAA9TupleViewVyAA08ModifiedD0VyALyALyAA5ImageVAA18_AspectRatioLayoutVGAA06_FrameM0VGAA24_ForegroundStyleModifierVyAA5ColorVGG_AEtGGAEGGMd);
      __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI19_ConditionalContentVyACyAA4TextVAEGAEGMd);
      lazy protocol witness table accessor for type _ConditionalContent<_ConditionalContent<Text, Text>, _ConditionalContent<HStack<TupleView<(ModifiedContent<ModifiedContent<ModifiedContent<Image, _AspectRatioLayout>, _FrameLayout>, _ForegroundStyleModifier<Color>>, Text)>>, Text>> and conformance <> _ConditionalContent<A, B>();
      lazy protocol witness table accessor for type _ConditionalContent<_ConditionalContent<Text, Text>, Text> and conformance <> _ConditionalContent<A, B>();
      _ConditionalContent<>.init(storage:)();
      outlined consume of Text.Storage(v44, v46, v48 & 1);

      v150 = v141;
      v151 = v142;
      v152[0] = v143[0];
      *(v152 + 11) = *(v143 + 11);
      v147 = v138;
      v148 = v139;
      v149 = v140;
      goto LABEL_5;
    }

    if (v14 == *MEMORY[0x277D7DF78])
    {
      v58 = static VerticalAlignment.center.getter();
      LOBYTE(v128) = 1;
      closure #1 in closure #1 in closure #1 in closure #1 in RouteStatusView.body.getter(a2, v144);
      v98 = *&v144[64];
      v99 = *&v144[80];
      v100 = *&v144[96];
      v94 = *v144;
      v95 = *&v144[16];
      v96 = *&v144[32];
      v97 = *&v144[48];
      v101[0] = *v144;
      v101[1] = *&v144[16];
      v101[2] = *&v144[32];
      v101[3] = *&v144[48];
      v101[4] = *&v144[64];
      v101[5] = *&v144[80];
      v101[6] = *&v144[96];
      outlined init with copy of _OverlayModifier<_ConditionalContent<_ConditionalContent<_ConditionalContent<Text, Text>, _ConditionalContent<HStack<TupleView<(ModifiedContent<ModifiedContent<ModifiedContent<Image, _AspectRatioLayout>, _FrameLayout>, _ForegroundStyleModifier<Color>>, Text)>>, Text>>, _ConditionalContent<_ConditionalContent<Text, Text>, Text>>>(&v94, &v136, &_s7SwiftUI9TupleViewVyAA15ModifiedContentVyAEyAEyAA5ImageVAA18_AspectRatioLayoutVGAA06_FrameJ0VGAA24_ForegroundStyleModifierVyAA5ColorVGG_AA4TextVtGMd);
      outlined destroy of _OverlayModifier<_ConditionalContent<_ConditionalContent<_ConditionalContent<Text, Text>, _ConditionalContent<HStack<TupleView<(ModifiedContent<ModifiedContent<ModifiedContent<Image, _AspectRatioLayout>, _FrameLayout>, _ForegroundStyleModifier<Color>>, Text)>>, Text>>, _ConditionalContent<_ConditionalContent<Text, Text>, Text>>>(v101, &_s7SwiftUI9TupleViewVyAA15ModifiedContentVyAEyAEyAA5ImageVAA18_AspectRatioLayoutVGAA06_FrameJ0VGAA24_ForegroundStyleModifierVyAA5ColorVGG_AA4TextVtGMd);
      *&v144[55] = v97;
      *&v144[71] = v98;
      *&v144[87] = v99;
      *&v144[103] = v100;
      *&v144[7] = v94;
      *&v144[23] = v95;
      *&v144[39] = v96;
      v102 = v58;
      v103[0] = v128;
      *&v103[65] = *&v144[64];
      *&v103[81] = *&v144[80];
      *&v103[97] = *&v144[96];
      *&v103[1] = *v144;
      *&v103[17] = *&v144[16];
      *&v103[33] = *&v144[32];
      *&v103[49] = *&v144[48];
      v112 = v58;
      v118 = *&v103[80];
      v119[0] = *&v103[96];
      v116 = *&v103[48];
      v117 = *&v103[64];
      v114 = *&v103[16];
      v115 = *&v103[32];
      *&v103[112] = *(&v100 + 1);
      *&v119[1] = *(&v100 + 1);
      v113 = *v103;
      _s7SwiftUI19_ConditionalContentV7StorageOyAA6HStackVyAA9TupleViewVyAA08ModifiedD0VyAKyAKyAA5ImageVAA18_AspectRatioLayoutVGAA06_FrameM0VGAA24_ForegroundStyleModifierVyAA5ColorVGG_AA4TextVtGGA__GWOi_(&v112);
      *&v144[96] = v118;
      *&v144[112] = v119[0];
      *&v144[121] = *(v119 + 9);
      *&v144[32] = v114;
      *&v144[48] = v115;
      *&v144[64] = v116;
      *&v144[80] = v117;
      *v144 = v112;
      *&v144[16] = v113;
      outlined init with copy of _OverlayModifier<_ConditionalContent<_ConditionalContent<_ConditionalContent<Text, Text>, _ConditionalContent<HStack<TupleView<(ModifiedContent<ModifiedContent<ModifiedContent<Image, _AspectRatioLayout>, _FrameLayout>, _ForegroundStyleModifier<Color>>, Text)>>, Text>>, _ConditionalContent<_ConditionalContent<Text, Text>, Text>>>(&v102, &v136, &_s7SwiftUI6HStackVyAA9TupleViewVyAA15ModifiedContentVyAGyAGyAA5ImageVAA18_AspectRatioLayoutVGAA06_FrameK0VGAA24_ForegroundStyleModifierVyAA5ColorVGG_AA4TextVtGGMd);
      __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI6HStackVyAA9TupleViewVyAA15ModifiedContentVyAGyAGyAA5ImageVAA18_AspectRatioLayoutVGAA06_FrameK0VGAA24_ForegroundStyleModifierVyAA5ColorVGG_AA4TextVtGGMd);
      lazy protocol witness table accessor for type _OverlayModifier<ModifiedContent<RouteStatusView, _PaddingLayout>?> and conformance _OverlayModifier<A>(&lazy protocol witness table cache variable for type HStack<TupleView<(ModifiedContent<ModifiedContent<ModifiedContent<Image, _AspectRatioLayout>, _FrameLayout>, _ForegroundStyleModifier<Color>>, Text)>> and conformance HStack<A>, &_s7SwiftUI6HStackVyAA9TupleViewVyAA15ModifiedContentVyAGyAGyAA5ImageVAA18_AspectRatioLayoutVGAA06_FrameK0VGAA24_ForegroundStyleModifierVyAA5ColorVGG_AA4TextVtGGMd);
      _ConditionalContent<>.init(storage:)();
      v126 = v142;
      v127[0] = v143[0];
      *(v127 + 9) = *(v143 + 9);
      v122 = v138;
      v123 = v139;
      v124 = v140;
      v125 = v141;
      v120 = v136;
      v121 = v137;
      _s7SwiftUI19_ConditionalContentV7StorageOyACyAA4TextVAGGACyAA6HStackVyAA9TupleViewVyAA08ModifiedD0VyANyANyAA5ImageVAA18_AspectRatioLayoutVGAA06_FrameN0VGAA24_ForegroundStyleModifierVyAA5ColorVGG_AGtGGAGG_GWOi0_(&v120);
      *&v144[96] = v126;
      *&v144[112] = v127[0];
      *&v144[122] = *(v127 + 10);
      *&v144[32] = v122;
      *&v144[48] = v123;
      *&v144[64] = v124;
      *&v144[80] = v125;
      *v144 = v120;
      *&v144[16] = v121;
      __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI19_ConditionalContentVyAA4TextVAEGMd);
      __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI19_ConditionalContentVyAA6HStackVyAA9TupleViewVyAA08ModifiedD0VyAIyAIyAA5ImageVAA18_AspectRatioLayoutVGAA06_FrameL0VGAA24_ForegroundStyleModifierVyAA5ColorVGG_AA4TextVtGGAYGMd);
      lazy protocol witness table accessor for type _ConditionalContent<Text, Text> and conformance <> _ConditionalContent<A, B>();
      lazy protocol witness table accessor for type _ConditionalContent<HStack<TupleView<(ModifiedContent<ModifiedContent<ModifiedContent<Image, _AspectRatioLayout>, _FrameLayout>, _ForegroundStyleModifier<Color>>, Text)>>, Text> and conformance <> _ConditionalContent<A, B>();
      _ConditionalContent<>.init(storage:)();
      *&v144[96] = v110;
      *&v144[112] = v111[0];
      *&v144[122] = *(v111 + 10);
      *&v144[32] = v106;
      *&v144[48] = v107;
      *&v144[64] = v108;
      *&v144[80] = v109;
      *v144 = v104;
      *&v144[16] = v105;
      _s7SwiftUI19_ConditionalContentV7StorageOyACyACyAA4TextVAGGACyAA6HStackVyAA9TupleViewVyAA08ModifiedD0VyANyANyAA5ImageVAA18_AspectRatioLayoutVGAA06_FrameN0VGAA24_ForegroundStyleModifierVyAA5ColorVGG_AGtGGAGGGACyAhGG_GWOi_(v144);
      v134 = *&v144[96];
      v135[0] = *&v144[112];
      *(v135 + 11) = *&v144[123];
      v130 = *&v144[32];
      v131 = *&v144[48];
      v132 = *&v144[64];
      v133 = *&v144[80];
      v128 = *v144;
      v129 = *&v144[16];
      __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI19_ConditionalContentVyACyAA4TextVAEGACyAA6HStackVyAA9TupleViewVyAA08ModifiedD0VyALyALyAA5ImageVAA18_AspectRatioLayoutVGAA06_FrameM0VGAA24_ForegroundStyleModifierVyAA5ColorVGG_AEtGGAEGGMd);
      __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI19_ConditionalContentVyACyAA4TextVAEGAEGMd);
      lazy protocol witness table accessor for type _ConditionalContent<_ConditionalContent<Text, Text>, _ConditionalContent<HStack<TupleView<(ModifiedContent<ModifiedContent<ModifiedContent<Image, _AspectRatioLayout>, _FrameLayout>, _ForegroundStyleModifier<Color>>, Text)>>, Text>> and conformance <> _ConditionalContent<A, B>();
      lazy protocol witness table accessor for type _ConditionalContent<_ConditionalContent<Text, Text>, Text> and conformance <> _ConditionalContent<A, B>();
      _ConditionalContent<>.init(storage:)();
      outlined destroy of _OverlayModifier<_ConditionalContent<_ConditionalContent<_ConditionalContent<Text, Text>, _ConditionalContent<HStack<TupleView<(ModifiedContent<ModifiedContent<ModifiedContent<Image, _AspectRatioLayout>, _FrameLayout>, _ForegroundStyleModifier<Color>>, Text)>>, Text>>, _ConditionalContent<_ConditionalContent<Text, Text>, Text>>>(&v102, &_s7SwiftUI6HStackVyAA9TupleViewVyAA15ModifiedContentVyAGyAGyAA5ImageVAA18_AspectRatioLayoutVGAA06_FrameK0VGAA24_ForegroundStyleModifierVyAA5ColorVGG_AA4TextVtGGMd);
      v151 = v142;
      v152[0] = v143[0];
      *(v152 + 11) = *(v143 + 11);
      v147 = v138;
      v148 = v139;
      v149 = v140;
      v150 = v141;
      v52 = v136;
      v51 = v137;
      goto LABEL_6;
    }

    if (v14 == *MEMORY[0x277D7DF80])
    {
      static Font.title3.getter();
      (*(v6 + 104))(v8, *MEMORY[0x277CE0A10], v5);
      Font.leading(_:)();

      (*(v6 + 8))(v8, v5);
      v59 = Text.font(_:)();
      v61 = v60;
      v63 = v62;
      v65 = v64;

      *&v112 = v59;
      *(&v112 + 1) = v61;
      v91 = v61;
      v92 = v65;
      LOBYTE(v113) = v63 & 1;
      *(&v113 + 1) = v65;
      _s7SwiftUI19_ConditionalContentV7StorageOyAA6HStackVyAA9TupleViewVyAA08ModifiedD0VyAKyAKyAA5ImageVAA18_AspectRatioLayoutVGAA06_FrameM0VGAA24_ForegroundStyleModifierVyAA5ColorVGG_AA4TextVtGGA__GWOi0_(&v112);
      *&v144[96] = v118;
      *&v144[112] = v119[0];
      *&v144[121] = *(v119 + 9);
      *&v144[32] = v114;
      *&v144[48] = v115;
      *&v144[64] = v116;
      *&v144[80] = v117;
      *v144 = v112;
      *&v144[16] = v113;
      outlined copy of Text.Storage(v59, v61, v63 & 1);

      __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI6HStackVyAA9TupleViewVyAA15ModifiedContentVyAGyAGyAA5ImageVAA18_AspectRatioLayoutVGAA06_FrameK0VGAA24_ForegroundStyleModifierVyAA5ColorVGG_AA4TextVtGGMd);
      lazy protocol witness table accessor for type _OverlayModifier<ModifiedContent<RouteStatusView, _PaddingLayout>?> and conformance _OverlayModifier<A>(&lazy protocol witness table cache variable for type HStack<TupleView<(ModifiedContent<ModifiedContent<ModifiedContent<Image, _AspectRatioLayout>, _FrameLayout>, _ForegroundStyleModifier<Color>>, Text)>> and conformance HStack<A>, &_s7SwiftUI6HStackVyAA9TupleViewVyAA15ModifiedContentVyAGyAGyAA5ImageVAA18_AspectRatioLayoutVGAA06_FrameK0VGAA24_ForegroundStyleModifierVyAA5ColorVGG_AA4TextVtGGMd);
      _ConditionalContent<>.init(storage:)();
      v126 = v142;
      v127[0] = v143[0];
      *(v127 + 9) = *(v143 + 9);
      v122 = v138;
      v123 = v139;
      v124 = v140;
      v125 = v141;
      v120 = v136;
      v121 = v137;
      _s7SwiftUI19_ConditionalContentV7StorageOyACyAA4TextVAGGACyAA6HStackVyAA9TupleViewVyAA08ModifiedD0VyANyANyAA5ImageVAA18_AspectRatioLayoutVGAA06_FrameN0VGAA24_ForegroundStyleModifierVyAA5ColorVGG_AGtGGAGG_GWOi0_(&v120);
      *&v144[96] = v126;
      *&v144[112] = v127[0];
      *&v144[122] = *(v127 + 10);
      *&v144[32] = v122;
      *&v144[48] = v123;
      *&v144[64] = v124;
      *&v144[80] = v125;
      *v144 = v120;
      *&v144[16] = v121;
      __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI19_ConditionalContentVyAA4TextVAEGMd);
      __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI19_ConditionalContentVyAA6HStackVyAA9TupleViewVyAA08ModifiedD0VyAIyAIyAA5ImageVAA18_AspectRatioLayoutVGAA06_FrameL0VGAA24_ForegroundStyleModifierVyAA5ColorVGG_AA4TextVtGGAYGMd);
      lazy protocol witness table accessor for type _ConditionalContent<Text, Text> and conformance <> _ConditionalContent<A, B>();
      lazy protocol witness table accessor for type _ConditionalContent<HStack<TupleView<(ModifiedContent<ModifiedContent<ModifiedContent<Image, _AspectRatioLayout>, _FrameLayout>, _ForegroundStyleModifier<Color>>, Text)>>, Text> and conformance <> _ConditionalContent<A, B>();
      _ConditionalContent<>.init(storage:)();
      *&v144[96] = v110;
      *&v144[112] = v111[0];
      *&v144[122] = *(v111 + 10);
      *&v144[32] = v106;
      *&v144[48] = v107;
      *&v144[64] = v108;
      *&v144[80] = v109;
      *v144 = v104;
      *&v144[16] = v105;
      _s7SwiftUI19_ConditionalContentV7StorageOyACyACyAA4TextVAGGACyAA6HStackVyAA9TupleViewVyAA08ModifiedD0VyANyANyAA5ImageVAA18_AspectRatioLayoutVGAA06_FrameN0VGAA24_ForegroundStyleModifierVyAA5ColorVGG_AGtGGAGGGACyAhGG_GWOi_(v144);
      v134 = *&v144[96];
      v135[0] = *&v144[112];
      *(v135 + 11) = *&v144[123];
      v130 = *&v144[32];
      v131 = *&v144[48];
      v132 = *&v144[64];
      v133 = *&v144[80];
      v128 = *v144;
      v129 = *&v144[16];
      __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI19_ConditionalContentVyACyAA4TextVAEGACyAA6HStackVyAA9TupleViewVyAA08ModifiedD0VyALyALyAA5ImageVAA18_AspectRatioLayoutVGAA06_FrameM0VGAA24_ForegroundStyleModifierVyAA5ColorVGG_AEtGGAEGGMd);
      __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI19_ConditionalContentVyACyAA4TextVAEGAEGMd);
      lazy protocol witness table accessor for type _ConditionalContent<_ConditionalContent<Text, Text>, _ConditionalContent<HStack<TupleView<(ModifiedContent<ModifiedContent<ModifiedContent<Image, _AspectRatioLayout>, _FrameLayout>, _ForegroundStyleModifier<Color>>, Text)>>, Text>> and conformance <> _ConditionalContent<A, B>();
      lazy protocol witness table accessor for type _ConditionalContent<_ConditionalContent<Text, Text>, Text> and conformance <> _ConditionalContent<A, B>();
      _ConditionalContent<>.init(storage:)();
      outlined consume of Text.Storage(v59, v91, v63 & 1);
    }

    else
    {
      if (v14 != *MEMORY[0x277D7DF70])
      {
        v75 = (v6 + 104);
        v76 = (v6 + 8);
        if (v14 != *MEMORY[0x277D7DF60])
        {
          v92 = "T@HKQuantity,N,R";
          static Font.title3.getter();
          (*v75)(v8, *MEMORY[0x277CE0A10], v5);
          Font.leading(_:)();

          (*v76)(v8, v5);
          v84 = Text.font(_:)();
          v86 = v85;
          v88 = v87;
          v90 = v89;
          v92 = v89;

          *&v136 = v84;
          *(&v136 + 1) = v86;
          v137.n128_u64[0] = v88 & 1;
          v137.n128_u64[1] = v90;
          LOWORD(v138) = 256;
          outlined copy of Text.Storage(v84, v86, v88 & 1);

          __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI19_ConditionalContentVyAA4TextVAEGMd);
          lazy protocol witness table accessor for type _ConditionalContent<Text, Text> and conformance <> _ConditionalContent<A, B>();
          _ConditionalContent<>.init(storage:)();
          _s7SwiftUI19_ConditionalContentV7StorageOyACyACyAA4TextVAGGACyAA6HStackVyAA9TupleViewVyAA08ModifiedD0VyANyANyAA5ImageVAA18_AspectRatioLayoutVGAA06_FrameN0VGAA24_ForegroundStyleModifierVyAA5ColorVGG_AGtGGAGGGACyAhGG_GWOi0_(v144);
          v134 = *&v144[96];
          v135[0] = *&v144[112];
          *(v135 + 11) = *&v144[123];
          v130 = *&v144[32];
          v131 = *&v144[48];
          v132 = *&v144[64];
          v133 = *&v144[80];
          v128 = *v144;
          v129 = *&v144[16];
          __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI19_ConditionalContentVyACyAA4TextVAEGACyAA6HStackVyAA9TupleViewVyAA08ModifiedD0VyALyALyAA5ImageVAA18_AspectRatioLayoutVGAA06_FrameM0VGAA24_ForegroundStyleModifierVyAA5ColorVGG_AEtGGAEGGMd);
          __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI19_ConditionalContentVyACyAA4TextVAEGAEGMd);
          lazy protocol witness table accessor for type _ConditionalContent<_ConditionalContent<Text, Text>, _ConditionalContent<HStack<TupleView<(ModifiedContent<ModifiedContent<ModifiedContent<Image, _AspectRatioLayout>, _FrameLayout>, _ForegroundStyleModifier<Color>>, Text)>>, Text>> and conformance <> _ConditionalContent<A, B>();
          lazy protocol witness table accessor for type _ConditionalContent<_ConditionalContent<Text, Text>, Text> and conformance <> _ConditionalContent<A, B>();
          _ConditionalContent<>.init(storage:)();
          outlined consume of Text.Storage(v84, v86, v88 & 1);

          v151 = v142;
          v152[0] = v143[0];
          *(v152 + 11) = *(v143 + 11);
          v147 = v138;
          v148 = v139;
          v149 = v140;
          v150 = v141;
          v145 = v136;
          v146 = v137;
          (*(v10 + 8))(v13, v9);
          goto LABEL_7;
        }

        static Font.title3.getter();
        (*v75)(v8, *MEMORY[0x277CE0A10], v5);
        Font.leading(_:)();

        (*v76)(v8, v5);
        v77 = Text.font(_:)();
        v79 = v78;
        v81 = v80;
        v83 = v82;

        *&v136 = v77;
        *(&v136 + 1) = v79;
        v137.n128_u64[0] = v81 & 1;
        v137.n128_u64[1] = v83;
        LOBYTE(v138) = 1;
        outlined copy of Text.Storage(v77, v79, v81 & 1);

        _ConditionalContent<>.init(storage:)();
        v136 = *v144;
        v137 = *&v144[16];
        LOWORD(v138) = v144[32];
        __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI19_ConditionalContentVyAA4TextVAEGMd);
        lazy protocol witness table accessor for type _ConditionalContent<Text, Text> and conformance <> _ConditionalContent<A, B>();
        _ConditionalContent<>.init(storage:)();
        _s7SwiftUI19_ConditionalContentV7StorageOyACyACyAA4TextVAGGACyAA6HStackVyAA9TupleViewVyAA08ModifiedD0VyANyANyAA5ImageVAA18_AspectRatioLayoutVGAA06_FrameN0VGAA24_ForegroundStyleModifierVyAA5ColorVGG_AGtGGAGGGACyAhGG_GWOi0_(v144);
        v134 = *&v144[96];
        v135[0] = *&v144[112];
        *(v135 + 11) = *&v144[123];
        v130 = *&v144[32];
        v131 = *&v144[48];
        v132 = *&v144[64];
        v133 = *&v144[80];
        v128 = *v144;
        v129 = *&v144[16];
        __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI19_ConditionalContentVyACyAA4TextVAEGACyAA6HStackVyAA9TupleViewVyAA08ModifiedD0VyALyALyAA5ImageVAA18_AspectRatioLayoutVGAA06_FrameM0VGAA24_ForegroundStyleModifierVyAA5ColorVGG_AEtGGAEGGMd);
        __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI19_ConditionalContentVyACyAA4TextVAEGAEGMd);
        lazy protocol witness table accessor for type _ConditionalContent<_ConditionalContent<Text, Text>, _ConditionalContent<HStack<TupleView<(ModifiedContent<ModifiedContent<ModifiedContent<Image, _AspectRatioLayout>, _FrameLayout>, _ForegroundStyleModifier<Color>>, Text)>>, Text>> and conformance <> _ConditionalContent<A, B>();
        lazy protocol witness table accessor for type _ConditionalContent<_ConditionalContent<Text, Text>, Text> and conformance <> _ConditionalContent<A, B>();
        _ConditionalContent<>.init(storage:)();
        outlined consume of Text.Storage(v77, v79, v81 & 1);

        v73 = v142;
        v74 = v143[0];
        goto LABEL_15;
      }

      static Font.title3.getter();
      (*(v6 + 104))(v8, *MEMORY[0x277CE0A10], v5);
      Font.leading(_:)();

      (*(v6 + 8))(v8, v5);
      v66 = Text.font(_:)();
      v68 = v67;
      v70 = v69;
      v72 = v71;

      *&v136 = v66;
      v92 = v68;
      *(&v136 + 1) = v68;
      v137.n128_u64[0] = v70 & 1;
      v137.n128_u64[1] = v72;
      LOBYTE(v138) = 0;
      outlined copy of Text.Storage(v66, v68, v70 & 1);

      _ConditionalContent<>.init(storage:)();
      v136 = *v144;
      v137 = *&v144[16];
      LOWORD(v138) = v144[32];
      __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI19_ConditionalContentVyAA4TextVAEGMd);
      lazy protocol witness table accessor for type _ConditionalContent<Text, Text> and conformance <> _ConditionalContent<A, B>();
      _ConditionalContent<>.init(storage:)();
      _s7SwiftUI19_ConditionalContentV7StorageOyACyACyAA4TextVAGGACyAA6HStackVyAA9TupleViewVyAA08ModifiedD0VyANyANyAA5ImageVAA18_AspectRatioLayoutVGAA06_FrameN0VGAA24_ForegroundStyleModifierVyAA5ColorVGG_AGtGGAGGGACyAhGG_GWOi0_(v144);
      v134 = *&v144[96];
      v135[0] = *&v144[112];
      *(v135 + 11) = *&v144[123];
      v130 = *&v144[32];
      v131 = *&v144[48];
      v132 = *&v144[64];
      v133 = *&v144[80];
      v128 = *v144;
      v129 = *&v144[16];
      __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI19_ConditionalContentVyACyAA4TextVAEGACyAA6HStackVyAA9TupleViewVyAA08ModifiedD0VyALyALyAA5ImageVAA18_AspectRatioLayoutVGAA06_FrameM0VGAA24_ForegroundStyleModifierVyAA5ColorVGG_AEtGGAEGGMd);
      __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI19_ConditionalContentVyACyAA4TextVAEGAEGMd);
      lazy protocol witness table accessor for type _ConditionalContent<_ConditionalContent<Text, Text>, _ConditionalContent<HStack<TupleView<(ModifiedContent<ModifiedContent<ModifiedContent<Image, _AspectRatioLayout>, _FrameLayout>, _ForegroundStyleModifier<Color>>, Text)>>, Text>> and conformance <> _ConditionalContent<A, B>();
      lazy protocol witness table accessor for type _ConditionalContent<_ConditionalContent<Text, Text>, Text> and conformance <> _ConditionalContent<A, B>();
      _ConditionalContent<>.init(storage:)();
      outlined consume of Text.Storage(v66, v92, v70 & 1);
    }

    v73 = v142;
    v74 = v143[0];
LABEL_15:
    v151 = v73;
    v152[0] = v74;
    *(v152 + 11) = *(v143 + 11);
    v147 = v138;
    v148 = v139;
    v149 = v140;
    v150 = v141;
    v52 = v136;
    v51 = v137;
    goto LABEL_6;
  }

  LocalizedStringKey.init(stringLiteral:)();
  v15 = Text.init(_:tableName:bundle:comment:)();
  v16 = v6;
  v18 = v17;
  v20 = v19;
  static Font.title3.getter();
  (*(v16 + 104))(v8, *MEMORY[0x277CE0A10], v5);
  Font.leading(_:)();

  (*(v16 + 8))(v8, v5);
  v21 = Text.font(_:)();
  v91 = v23;
  v92 = v22;
  v25 = v24;

  outlined consume of Text.Storage(v15, v18, v20 & 1);

  v26 = [objc_allocWithZone(MEMORY[0x277D75348]) initWithRed:0.0 green:1.0 blue:0.62745098 alpha:1.0];
  v27 = [objc_allocWithZone(MEMORY[0x277D75348]) initWithDisplayP3Red:0.0 green:0.62745098 blue:0.525490196 alpha:1.0];
  [objc_allocWithZone(MEMORY[0x277D75348]) initWithRed:0.0 green:1.0 blue:0.62745098 alpha:1.0];
  v28 = [v27 colorWithAlphaComponent_];

  *v144 = Color.init(uiColor:)();
  LOBYTE(v26) = v25;
  v29 = v21;
  v30 = v92;
  v31 = Text.foregroundStyle<A>(_:)();
  v33 = v32;
  v35 = v34;
  v37 = v36;
  outlined consume of Text.Storage(v29, v30, v26 & 1);

  v38 = v35 & 1;
  *&v136 = v31;
  *(&v136 + 1) = v33;
  v137.n128_u64[0] = v38;
  v137.n128_u64[1] = v37;
  LOBYTE(v138) = 1;
  outlined copy of Text.Storage(v31, v33, v38);

  _ConditionalContent<>.init(storage:)();
  v120 = *v144;
  v121 = *&v144[16];
  LOBYTE(v122) = v144[32];
  _s7SwiftUI19_ConditionalContentV7StorageOyACyAA4TextVAGGACyAA6HStackVyAA9TupleViewVyAA08ModifiedD0VyANyANyAA5ImageVAA18_AspectRatioLayoutVGAA06_FrameN0VGAA24_ForegroundStyleModifierVyAA5ColorVGG_AGtGGAGG_GWOi_(&v120);
  *&v144[96] = v126;
  *&v144[112] = v127[0];
  *&v144[122] = *(v127 + 10);
  *&v144[32] = v122;
  *&v144[48] = v123;
  *&v144[64] = v124;
  *&v144[80] = v125;
  *v144 = v120;
  *&v144[16] = v121;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI19_ConditionalContentVyAA4TextVAEGMd);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI19_ConditionalContentVyAA6HStackVyAA9TupleViewVyAA08ModifiedD0VyAIyAIyAA5ImageVAA18_AspectRatioLayoutVGAA06_FrameL0VGAA24_ForegroundStyleModifierVyAA5ColorVGG_AA4TextVtGGAYGMd);
  lazy protocol witness table accessor for type _ConditionalContent<Text, Text> and conformance <> _ConditionalContent<A, B>();
  lazy protocol witness table accessor for type _ConditionalContent<HStack<TupleView<(ModifiedContent<ModifiedContent<ModifiedContent<Image, _AspectRatioLayout>, _FrameLayout>, _ForegroundStyleModifier<Color>>, Text)>>, Text> and conformance <> _ConditionalContent<A, B>();
  _ConditionalContent<>.init(storage:)();
  *&v144[96] = v110;
  *&v144[112] = v111[0];
  *&v144[122] = *(v111 + 10);
  *&v144[32] = v106;
  *&v144[48] = v107;
  *&v144[64] = v108;
  *&v144[80] = v109;
  *v144 = v104;
  *&v144[16] = v105;
  _s7SwiftUI19_ConditionalContentV7StorageOyACyACyAA4TextVAGGACyAA6HStackVyAA9TupleViewVyAA08ModifiedD0VyANyANyAA5ImageVAA18_AspectRatioLayoutVGAA06_FrameN0VGAA24_ForegroundStyleModifierVyAA5ColorVGG_AGtGGAGGGACyAhGG_GWOi_(v144);
  v134 = *&v144[96];
  v135[0] = *&v144[112];
  *(v135 + 11) = *&v144[123];
  v130 = *&v144[32];
  v131 = *&v144[48];
  v132 = *&v144[64];
  v133 = *&v144[80];
  v128 = *v144;
  v129 = *&v144[16];
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI19_ConditionalContentVyACyAA4TextVAEGACyAA6HStackVyAA9TupleViewVyAA08ModifiedD0VyALyALyAA5ImageVAA18_AspectRatioLayoutVGAA06_FrameM0VGAA24_ForegroundStyleModifierVyAA5ColorVGG_AEtGGAEGGMd);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI19_ConditionalContentVyACyAA4TextVAEGAEGMd);
  lazy protocol witness table accessor for type _ConditionalContent<_ConditionalContent<Text, Text>, _ConditionalContent<HStack<TupleView<(ModifiedContent<ModifiedContent<ModifiedContent<Image, _AspectRatioLayout>, _FrameLayout>, _ForegroundStyleModifier<Color>>, Text)>>, Text>> and conformance <> _ConditionalContent<A, B>();
  lazy protocol witness table accessor for type _ConditionalContent<_ConditionalContent<Text, Text>, Text> and conformance <> _ConditionalContent<A, B>();
  _ConditionalContent<>.init(storage:)();
  outlined consume of Text.Storage(v31, v33, v38);

  v151 = v142;
  v152[0] = v143[0];
  *(v152 + 11) = *(v143 + 11);
  v147 = v138;
  v148 = v139;
  v149 = v140;
  v150 = v141;
LABEL_5:
  v52 = v136;
  v51 = v137;
LABEL_6:
  v145 = v52;
  v146 = v51;
LABEL_7:
  v53 = v152[0];
  v54 = v93;
  *(v93 + 96) = v151;
  *(v54 + 112) = v53;
  *(v54 + 123) = *(v152 + 11);
  v55 = v148;
  *(v54 + 32) = v147;
  *(v54 + 48) = v55;
  v56 = v150;
  *(v54 + 64) = v149;
  *(v54 + 80) = v56;
  result = v146;
  *v54 = v145;
  *(v54 + 16) = result;
  return result;
}

uint64_t closure #1 in closure #1 in closure #1 in closure #1 in RouteStatusView.body.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v38 = a1;
  v42 = a2;
  v2 = type metadata accessor for Font.Leading();
  v40 = *(v2 - 8);
  v41 = v2;
  MEMORY[0x28223BE20](v2);
  v4 = &v38 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for Image.ResizingMode();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v38 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI19SymbolRenderingModeVSgMd);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = &v38 - v10;
  Image.init(systemName:)();
  static SymbolRenderingMode.hierarchical.getter();
  v12 = type metadata accessor for SymbolRenderingMode();
  (*(*(v12 - 8) + 56))(v11, 0, 1, v12);
  Image.symbolRenderingMode(_:)();

  outlined destroy of _OverlayModifier<_ConditionalContent<_ConditionalContent<_ConditionalContent<Text, Text>, _ConditionalContent<HStack<TupleView<(ModifiedContent<ModifiedContent<ModifiedContent<Image, _AspectRatioLayout>, _FrameLayout>, _ForegroundStyleModifier<Color>>, Text)>>, Text>>, _ConditionalContent<_ConditionalContent<Text, Text>, Text>>>(v11, &_s7SwiftUI19SymbolRenderingModeVSgMd);
  (*(v6 + 104))(v8, *MEMORY[0x277CE0FE0], v5);
  v39 = Image.resizable(capInsets:resizingMode:)();

  (*(v6 + 8))(v8, v5);
  GeometryProxy.size.getter();
  static Alignment.center.getter();
  _FrameLayout.init(width:height:alignment:)();
  LOBYTE(v47[0]) = 1;
  *&v44[3] = *&v44[27];
  *&v44[11] = *&v44[35];
  *&v44[19] = *&v44[43];
  v13 = objc_allocWithZone(MEMORY[0x277D75348]);
  v14 = [v13 initWithRed:1.0 green:0.407843137 blue:0.321568627 alpha:{1.0, v38}];
  v15 = [objc_allocWithZone(MEMORY[0x277D75348]) initWithDisplayP3Red:0.2 green:0.0823529412 blue:0.0666666667 alpha:1.0];
  [objc_allocWithZone(MEMORY[0x277D75348]) initWithRed:1.0 green:0.407843137 blue:0.321568627 alpha:1.0];
  v16 = [v15 colorWithAlphaComponent_];

  v38 = Color.init(uiColor:)();
  LocalizedStringKey.init(stringLiteral:)();
  v17 = Text.init(_:tableName:bundle:comment:)();
  v19 = v18;
  v21 = v20;
  static Font.title2.getter();
  v23 = v40;
  v22 = v41;
  (*(v40 + 104))(v4, *MEMORY[0x277CE0A10], v41);
  Font.leading(_:)();

  (*(v23 + 8))(v4, v22);
  v24 = Text.font(_:)();
  v26 = v25;
  LOBYTE(v22) = v27;
  v29 = v28;

  outlined consume of Text.Storage(v17, v19, v21 & 1);

  v30 = v38;
  v31 = v39;
  v45[0] = v39;
  v45[1] = 0;
  LOWORD(v46[0]) = 1;
  *(v46 + 2) = *v44;
  *(&v46[1] + 2) = *&v44[8];
  *(&v46[2] + 2) = *&v44[16];
  *&v46[3] = *&v44[23];
  *(&v46[3] + 1) = v38;
  v43 = v22 & 1;
  v32 = v39;
  v33 = v46[0];
  v34 = v46[3];
  v35 = v42;
  v36 = v46[1];
  *(v42 + 48) = v46[2];
  *(v35 + 64) = v34;
  *(v35 + 16) = v33;
  *(v35 + 32) = v36;
  *v35 = v32;
  *(v35 + 80) = v24;
  *(v35 + 88) = v26;
  *(v35 + 96) = v22 & 1;
  *(v35 + 104) = v29;
  outlined init with copy of _OverlayModifier<_ConditionalContent<_ConditionalContent<_ConditionalContent<Text, Text>, _ConditionalContent<HStack<TupleView<(ModifiedContent<ModifiedContent<ModifiedContent<Image, _AspectRatioLayout>, _FrameLayout>, _ForegroundStyleModifier<Color>>, Text)>>, Text>>, _ConditionalContent<_ConditionalContent<Text, Text>, Text>>>(v45, v47, &_s7SwiftUI15ModifiedContentVyACyACyAA5ImageVAA18_AspectRatioLayoutVGAA06_FrameH0VGAA24_ForegroundStyleModifierVyAA5ColorVGGMd);
  outlined copy of Text.Storage(v24, v26, v22 & 1);

  outlined consume of Text.Storage(v24, v26, v22 & 1);

  v47[0] = v31;
  v47[1] = 0;
  v48 = 1;
  v49 = *v44;
  v50 = *&v44[8];
  *v51 = *&v44[16];
  *&v51[14] = *&v44[23];
  v52 = v30;
  return outlined destroy of _OverlayModifier<_ConditionalContent<_ConditionalContent<_ConditionalContent<Text, Text>, _ConditionalContent<HStack<TupleView<(ModifiedContent<ModifiedContent<ModifiedContent<Image, _AspectRatioLayout>, _FrameLayout>, _ForegroundStyleModifier<Color>>, Text)>>, Text>>, _ConditionalContent<_ConditionalContent<Text, Text>, Text>>>(v47, &_s7SwiftUI15ModifiedContentVyACyACyAA5ImageVAA18_AspectRatioLayoutVGAA06_FrameH0VGAA24_ForegroundStyleModifierVyAA5ColorVGGMd);
}

double protocol witness for View.body.getter in conformance RouteStatusView@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](a1 - 8);
  v6 = static Color.clear.getter();
  v7 = static Alignment.center.getter();
  v9 = v8;
  outlined init with copy of RouteStatusView(v2, v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v10 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v11 = swift_allocObject();
  outlined init with take of RouteStatusView(v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), v11 + v10);
  static Alignment.center.getter();
  _FrameLayout.init(width:height:alignment:)();
  *a2 = v6;
  *(a2 + 8) = partial apply for closure #1 in closure #1 in RouteStatusView.body.getter;
  *(a2 + 16) = v11;
  *(a2 + 24) = v7;
  *(a2 + 32) = v9;
  v12 = v14[1];
  *(a2 + 40) = v14[0];
  *(a2 + 56) = v12;
  result = *&v15;
  *(a2 + 72) = v15;
  return result;
}

uint64_t outlined init with copy of RouteStatusView(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for RouteStatusView();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t outlined init with take of RouteStatusView(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for RouteStatusView();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t partial apply for closure #1 in closure #1 in RouteStatusView.body.getter@<X0>(uint64_t a1@<X0>, double *a2@<X8>)
{
  v5 = *(type metadata accessor for RouteStatusView() - 8);
  v6 = v2 + ((*(v5 + 80) + 16) & ~*(v5 + 80));

  return closure #1 in closure #1 in RouteStatusView.body.getter(a1, v6, a2);
}

unint64_t lazy protocol witness table accessor for type _ConditionalContent<_ConditionalContent<Text, Text>, _ConditionalContent<HStack<TupleView<(ModifiedContent<ModifiedContent<ModifiedContent<Image, _AspectRatioLayout>, _FrameLayout>, _ForegroundStyleModifier<Color>>, Text)>>, Text>> and conformance <> _ConditionalContent<A, B>()
{
  result = lazy protocol witness table cache variable for type _ConditionalContent<_ConditionalContent<Text, Text>, _ConditionalContent<HStack<TupleView<(ModifiedContent<ModifiedContent<ModifiedContent<Image, _AspectRatioLayout>, _FrameLayout>, _ForegroundStyleModifier<Color>>, Text)>>, Text>> and conformance <> _ConditionalContent<A, B>;
  if (!lazy protocol witness table cache variable for type _ConditionalContent<_ConditionalContent<Text, Text>, _ConditionalContent<HStack<TupleView<(ModifiedContent<ModifiedContent<ModifiedContent<Image, _AspectRatioLayout>, _FrameLayout>, _ForegroundStyleModifier<Color>>, Text)>>, Text>> and conformance <> _ConditionalContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI19_ConditionalContentVyACyAA4TextVAEGACyAA6HStackVyAA9TupleViewVyAA08ModifiedD0VyALyALyAA5ImageVAA18_AspectRatioLayoutVGAA06_FrameM0VGAA24_ForegroundStyleModifierVyAA5ColorVGG_AEtGGAEGGMd);
    lazy protocol witness table accessor for type _ConditionalContent<Text, Text> and conformance <> _ConditionalContent<A, B>();
    lazy protocol witness table accessor for type _ConditionalContent<HStack<TupleView<(ModifiedContent<ModifiedContent<ModifiedContent<Image, _AspectRatioLayout>, _FrameLayout>, _ForegroundStyleModifier<Color>>, Text)>>, Text> and conformance <> _ConditionalContent<A, B>();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type _ConditionalContent<_ConditionalContent<Text, Text>, _ConditionalContent<HStack<TupleView<(ModifiedContent<ModifiedContent<ModifiedContent<Image, _AspectRatioLayout>, _FrameLayout>, _ForegroundStyleModifier<Color>>, Text)>>, Text>> and conformance <> _ConditionalContent<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type _ConditionalContent<HStack<TupleView<(ModifiedContent<ModifiedContent<ModifiedContent<Image, _AspectRatioLayout>, _FrameLayout>, _ForegroundStyleModifier<Color>>, Text)>>, Text> and conformance <> _ConditionalContent<A, B>()
{
  result = lazy protocol witness table cache variable for type _ConditionalContent<HStack<TupleView<(ModifiedContent<ModifiedContent<ModifiedContent<Image, _AspectRatioLayout>, _FrameLayout>, _ForegroundStyleModifier<Color>>, Text)>>, Text> and conformance <> _ConditionalContent<A, B>;
  if (!lazy protocol witness table cache variable for type _ConditionalContent<HStack<TupleView<(ModifiedContent<ModifiedContent<ModifiedContent<Image, _AspectRatioLayout>, _FrameLayout>, _ForegroundStyleModifier<Color>>, Text)>>, Text> and conformance <> _ConditionalContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI19_ConditionalContentVyAA6HStackVyAA9TupleViewVyAA08ModifiedD0VyAIyAIyAA5ImageVAA18_AspectRatioLayoutVGAA06_FrameL0VGAA24_ForegroundStyleModifierVyAA5ColorVGG_AA4TextVtGGAYGMd);
    lazy protocol witness table accessor for type _OverlayModifier<ModifiedContent<RouteStatusView, _PaddingLayout>?> and conformance _OverlayModifier<A>(&lazy protocol witness table cache variable for type HStack<TupleView<(ModifiedContent<ModifiedContent<ModifiedContent<Image, _AspectRatioLayout>, _FrameLayout>, _ForegroundStyleModifier<Color>>, Text)>> and conformance HStack<A>, &_s7SwiftUI6HStackVyAA9TupleViewVyAA15ModifiedContentVyAGyAGyAA5ImageVAA18_AspectRatioLayoutVGAA06_FrameK0VGAA24_ForegroundStyleModifierVyAA5ColorVGG_AA4TextVtGGMd);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type _ConditionalContent<HStack<TupleView<(ModifiedContent<ModifiedContent<ModifiedContent<Image, _AspectRatioLayout>, _FrameLayout>, _ForegroundStyleModifier<Color>>, Text)>>, Text> and conformance <> _ConditionalContent<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type _ConditionalContent<_ConditionalContent<Text, Text>, Text> and conformance <> _ConditionalContent<A, B>()
{
  result = lazy protocol witness table cache variable for type _ConditionalContent<_ConditionalContent<Text, Text>, Text> and conformance <> _ConditionalContent<A, B>;
  if (!lazy protocol witness table cache variable for type _ConditionalContent<_ConditionalContent<Text, Text>, Text> and conformance <> _ConditionalContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI19_ConditionalContentVyACyAA4TextVAEGAEGMd);
    lazy protocol witness table accessor for type _ConditionalContent<Text, Text> and conformance <> _ConditionalContent<A, B>();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type _ConditionalContent<_ConditionalContent<Text, Text>, Text> and conformance <> _ConditionalContent<A, B>);
  }

  return result;
}

uint64_t outlined init with copy of _OverlayModifier<_ConditionalContent<_ConditionalContent<_ConditionalContent<Text, Text>, _ConditionalContent<HStack<TupleView<(ModifiedContent<ModifiedContent<ModifiedContent<Image, _AspectRatioLayout>, _FrameLayout>, _ForegroundStyleModifier<Color>>, Text)>>, Text>>, _ConditionalContent<_ConditionalContent<Text, Text>, Text>>>(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(a3);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t outlined destroy of _OverlayModifier<_ConditionalContent<_ConditionalContent<_ConditionalContent<Text, Text>, _ConditionalContent<HStack<TupleView<(ModifiedContent<ModifiedContent<ModifiedContent<Image, _AspectRatioLayout>, _FrameLayout>, _ForegroundStyleModifier<Color>>, Text)>>, Text>>, _ConditionalContent<_ConditionalContent<Text, Text>, Text>>>(uint64_t a1, uint64_t *a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(a2);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t outlined init with take of ModifiedContent<RouteStatusView, _PaddingLayout>(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVy07WorkoutB015RouteStatusViewVAA14_PaddingLayoutVGMd);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<ModifiedContent<Rectangle, _ForegroundStyleModifier<Color>>, _OverlayModifier<GeometryReader<ModifiedContent<ModifiedContent<ModifiedContent<RoundedRectangle, _FrameLayout>, _ForegroundStyleModifier<Color>>, _OverlayModifier<_ConditionalContent<_ConditionalContent<_ConditionalContent<Text, Text>, _ConditionalContent<HStack<TupleView<(ModifiedContent<ModifiedContent<ModifiedContent<Image, _AspectRatioLayout>, _FrameLayout>, _ForegroundStyleModifier<Color>>, Text)>>, Text>>, _ConditionalContent<_ConditionalContent<Text, Text>, Text>>>>>>>, _FrameLayout> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<Rectangle, _ForegroundStyleModifier<Color>>, _OverlayModifier<GeometryReader<ModifiedContent<ModifiedContent<ModifiedContent<RoundedRectangle, _FrameLayout>, _ForegroundStyleModifier<Color>>, _OverlayModifier<_ConditionalContent<_ConditionalContent<_ConditionalContent<Text, Text>, _ConditionalContent<HStack<TupleView<(ModifiedContent<ModifiedContent<ModifiedContent<Image, _AspectRatioLayout>, _FrameLayout>, _ForegroundStyleModifier<Color>>, Text)>>, Text>>, _ConditionalContent<_ConditionalContent<Text, Text>, Text>>>>>>>, _FrameLayout> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<Rectangle, _ForegroundStyleModifier<Color>>, _OverlayModifier<GeometryReader<ModifiedContent<ModifiedContent<ModifiedContent<RoundedRectangle, _FrameLayout>, _ForegroundStyleModifier<Color>>, _OverlayModifier<_ConditionalContent<_ConditionalContent<_ConditionalContent<Text, Text>, _ConditionalContent<HStack<TupleView<(ModifiedContent<ModifiedContent<ModifiedContent<Image, _AspectRatioLayout>, _FrameLayout>, _ForegroundStyleModifier<Color>>, Text)>>, Text>>, _ConditionalContent<_ConditionalContent<Text, Text>, Text>>>>>>>, _FrameLayout> and conformance <> ModifiedContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyACyACyAA9RectangleVAA24_ForegroundStyleModifierVyAA5ColorVGGAA08_OverlayH0VyAA14GeometryReaderVyACyACyACyAA07RoundedE0VAA12_FrameLayoutVGAJGAMyAA012_ConditionalD0VyAWyAWyAA4TextVAYGAWyAA6HStackVyAA9TupleViewVyACyACyACyAA5ImageVAA012_AspectRatioO0VGASGAJG_AYtGGAYGGAWyAzYGGGGGGGASGMd);
    lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<Rectangle, _ForegroundStyleModifier<Color>>, _OverlayModifier<GeometryReader<ModifiedContent<ModifiedContent<ModifiedContent<RoundedRectangle, _FrameLayout>, _ForegroundStyleModifier<Color>>, _OverlayModifier<_ConditionalContent<_ConditionalContent<_ConditionalContent<Text, Text>, _ConditionalContent<HStack<TupleView<(ModifiedContent<ModifiedContent<ModifiedContent<Image, _AspectRatioLayout>, _FrameLayout>, _ForegroundStyleModifier<Color>>, Text)>>, Text>>, _ConditionalContent<_ConditionalContent<Text, Text>, Text>>>>>>> and conformance <> ModifiedContent<A, B>();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<Rectangle, _ForegroundStyleModifier<Color>>, _OverlayModifier<GeometryReader<ModifiedContent<ModifiedContent<ModifiedContent<RoundedRectangle, _FrameLayout>, _ForegroundStyleModifier<Color>>, _OverlayModifier<_ConditionalContent<_ConditionalContent<_ConditionalContent<Text, Text>, _ConditionalContent<HStack<TupleView<(ModifiedContent<ModifiedContent<ModifiedContent<Image, _AspectRatioLayout>, _FrameLayout>, _ForegroundStyleModifier<Color>>, Text)>>, Text>>, _ConditionalContent<_ConditionalContent<Text, Text>, Text>>>>>>>, _FrameLayout> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<Rectangle, _ForegroundStyleModifier<Color>>, _OverlayModifier<GeometryReader<ModifiedContent<ModifiedContent<ModifiedContent<RoundedRectangle, _FrameLayout>, _ForegroundStyleModifier<Color>>, _OverlayModifier<_ConditionalContent<_ConditionalContent<_ConditionalContent<Text, Text>, _ConditionalContent<HStack<TupleView<(ModifiedContent<ModifiedContent<ModifiedContent<Image, _AspectRatioLayout>, _FrameLayout>, _ForegroundStyleModifier<Color>>, Text)>>, Text>>, _ConditionalContent<_ConditionalContent<Text, Text>, Text>>>>>>> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<Rectangle, _ForegroundStyleModifier<Color>>, _OverlayModifier<GeometryReader<ModifiedContent<ModifiedContent<ModifiedContent<RoundedRectangle, _FrameLayout>, _ForegroundStyleModifier<Color>>, _OverlayModifier<_ConditionalContent<_ConditionalContent<_ConditionalContent<Text, Text>, _ConditionalContent<HStack<TupleView<(ModifiedContent<ModifiedContent<ModifiedContent<Image, _AspectRatioLayout>, _FrameLayout>, _ForegroundStyleModifier<Color>>, Text)>>, Text>>, _ConditionalContent<_ConditionalContent<Text, Text>, Text>>>>>>> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<Rectangle, _ForegroundStyleModifier<Color>>, _OverlayModifier<GeometryReader<ModifiedContent<ModifiedContent<ModifiedContent<RoundedRectangle, _FrameLayout>, _ForegroundStyleModifier<Color>>, _OverlayModifier<_ConditionalContent<_ConditionalContent<_ConditionalContent<Text, Text>, _ConditionalContent<HStack<TupleView<(ModifiedContent<ModifiedContent<ModifiedContent<Image, _AspectRatioLayout>, _FrameLayout>, _ForegroundStyleModifier<Color>>, Text)>>, Text>>, _ConditionalContent<_ConditionalContent<Text, Text>, Text>>>>>>> and conformance <> ModifiedContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyACyAA9RectangleVAA24_ForegroundStyleModifierVyAA5ColorVGGAA08_OverlayH0VyAA14GeometryReaderVyACyACyACyAA07RoundedE0VAA12_FrameLayoutVGAJGAMyAA012_ConditionalD0VyAWyAWyAA4TextVAYGAWyAA6HStackVyAA9TupleViewVyACyACyACyAA5ImageVAA012_AspectRatioO0VGASGAJG_AYtGGAYGGAWyAzYGGGGGGGMd);
    lazy protocol witness table accessor for type ModifiedContent<Rectangle, _ForegroundStyleModifier<Color>> and conformance <> ModifiedContent<A, B>();
    lazy protocol witness table accessor for type _OverlayModifier<ModifiedContent<RouteStatusView, _PaddingLayout>?> and conformance _OverlayModifier<A>(&lazy protocol witness table cache variable for type _OverlayModifier<GeometryReader<ModifiedContent<ModifiedContent<ModifiedContent<RoundedRectangle, _FrameLayout>, _ForegroundStyleModifier<Color>>, _OverlayModifier<_ConditionalContent<_ConditionalContent<_ConditionalContent<Text, Text>, _ConditionalContent<HStack<TupleView<(ModifiedContent<ModifiedContent<ModifiedContent<Image, _AspectRatioLayout>, _FrameLayout>, _ForegroundStyleModifier<Color>>, Text)>>, Text>>, _ConditionalContent<_ConditionalContent<Text, Text>, Text>>>>>> and conformance _OverlayModifier<A>, &_s7SwiftUI16_OverlayModifierVyAA14GeometryReaderVyAA15ModifiedContentVyAGyAGyAA16RoundedRectangleVAA12_FrameLayoutVGAA016_ForegroundStyleD0VyAA5ColorVGGACyAA012_ConditionalH0VyATyATyAA4TextVAVGATyAA6HStackVyAA9TupleViewVyAGyAGyAGyAA5ImageVAA012_AspectRatioL0VGAKGAQG_AVtGGAVGGATyAwVGGGGGGMd);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<Rectangle, _ForegroundStyleModifier<Color>>, _OverlayModifier<GeometryReader<ModifiedContent<ModifiedContent<ModifiedContent<RoundedRectangle, _FrameLayout>, _ForegroundStyleModifier<Color>>, _OverlayModifier<_ConditionalContent<_ConditionalContent<_ConditionalContent<Text, Text>, _ConditionalContent<HStack<TupleView<(ModifiedContent<ModifiedContent<ModifiedContent<Image, _AspectRatioLayout>, _FrameLayout>, _ForegroundStyleModifier<Color>>, Text)>>, Text>>, _ConditionalContent<_ConditionalContent<Text, Text>, Text>>>>>>> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

uint64_t lazy protocol witness table accessor for type _OverlayModifier<ModifiedContent<RouteStatusView, _PaddingLayout>?> and conformance _OverlayModifier<A>(unint64_t *a1, uint64_t *a2)
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

uint64_t static AnyTransition.peekLeading.getter()
{
  static AnyTransition.move(edge:)();
  static AnyTransition.move(edge:)();
  v0 = static AnyTransition.asymmetric(insertion:removal:)();

  return v0;
}

uint64_t AlertConfigurationViewModel.ViewModelContainer.hash(into:)()
{
  v1 = v0;
  v2 = type metadata accessor for ConfigurationType();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v11 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for AlertConfigurationViewModel.ViewModelContainer(0);
  MEMORY[0x28223BE20](v6);
  v8 = &v11 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  outlined init with copy of AlertConfigurationViewModel.ViewModelContainer(v1, v8, type metadata accessor for AlertConfigurationViewModel.ViewModelContainer);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9WorkoutUI21LocalBindingViewModelC_0A4Core17ConfigurationTypeOtMd);
    (*(v3 + 32))(v5, &v8[*(v9 + 48)], v2);
    MEMORY[0x20F30CD90](1);
    LocalBindingViewModel.hash(into:)();
    lazy protocol witness table accessor for type ConfigurationType and conformance ConfigurationType(&lazy protocol witness table cache variable for type ConfigurationType and conformance ConfigurationType, MEMORY[0x277D7E118]);
    dispatch thunk of Hashable.hash(into:)();

    return (*(v3 + 8))(v5, v2);
  }

  else
  {
    MEMORY[0x20F30CD90](0);
    ActivityPersistingViewModel.hash(into:)();
  }
}

Swift::Int AlertConfigurationViewModel.ViewModelContainer.hashValue.getter()
{
  Hasher.init(_seed:)();
  AlertConfigurationViewModel.ViewModelContainer.hash(into:)();
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance AlertConfigurationViewModel.ViewModelContainer()
{
  Hasher.init(_seed:)();
  AlertConfigurationViewModel.ViewModelContainer.hash(into:)();
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance AlertConfigurationViewModel.ViewModelContainer()
{
  Hasher.init(_seed:)();
  AlertConfigurationViewModel.ViewModelContainer.hash(into:)();
  return Hasher._finalize()();
}

uint64_t AlertConfigurationViewModel.readTargetZones()()
{
  v1 = type metadata accessor for AlertConfigurationViewModel.ViewModelContainer(0);
  MEMORY[0x28223BE20](v1);
  v3 = &v14[-1] - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  outlined init with copy of AlertConfigurationViewModel.ViewModelContainer(v0 + OBJC_IVAR____TtC9WorkoutUI27AlertConfigurationViewModel_container, v3, type metadata accessor for AlertConfigurationViewModel.ViewModelContainer);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v5 = *v3;
  if (EnumCaseMultiPayload == 1)
  {
    v6 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s9WorkoutUI21LocalBindingViewModelC_0A4Core17ConfigurationTypeOtMd) + 48);
    swift_getKeyPath();
    v15 = v5;
    lazy protocol witness table accessor for type ConfigurationType and conformance ConfigurationType(&lazy protocol witness table cache variable for type LocalBindingViewModel and conformance LocalBindingViewModel, type metadata accessor for LocalBindingViewModel);
    ObservationRegistrar.access<A, B>(_:keyPath:)();

    swift_beginAccess();
    v7 = v5[3];
    v8 = v5[4];
    v14[1] = v5[2];
    v14[2] = v7;
    v14[3] = v8;

    v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI7BindingVySay11WorkoutCore10TargetZoneCGGMd);
    MEMORY[0x20F30B100](v14, v9);

    v10 = v14[0];
    v11 = type metadata accessor for ConfigurationType();
    (*(*(v11 - 8) + 8))(&v3[v6], v11);
  }

  else
  {
    swift_getKeyPath();
    v15 = v5;
    lazy protocol witness table accessor for type ConfigurationType and conformance ConfigurationType(&lazy protocol witness table cache variable for type ActivityPersistingViewModel and conformance ActivityPersistingViewModel, type metadata accessor for ActivityPersistingViewModel);
    ObservationRegistrar.access<A, B>(_:keyPath:)();

    swift_beginAccess();
    v10 = v5[2];
  }

  return v10;
}

uint64_t AlertConfigurationViewModel.heartRateTargetZone.getter()
{
  v1 = type metadata accessor for AlertConfigurationViewModel.ViewModelContainer(0);
  MEMORY[0x28223BE20](v1);
  v3 = &v13 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  outlined init with copy of AlertConfigurationViewModel.ViewModelContainer(v0 + OBJC_IVAR____TtC9WorkoutUI27AlertConfigurationViewModel_container, v3, type metadata accessor for AlertConfigurationViewModel.ViewModelContainer);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v5 = *v3;
  if (EnumCaseMultiPayload == 1)
  {
    v6 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s9WorkoutUI21LocalBindingViewModelC_0A4Core17ConfigurationTypeOtMd) + 48);
    swift_getKeyPath();
    v14 = v5;
    lazy protocol witness table accessor for type ConfigurationType and conformance ConfigurationType(&lazy protocol witness table cache variable for type LocalBindingViewModel and conformance LocalBindingViewModel, type metadata accessor for LocalBindingViewModel);
    ObservationRegistrar.access<A, B>(_:keyPath:)();

    swift_beginAccess();
    v7 = *(v5 + 40);
    v8 = *(v5 + 56);

    v8;

    v9 = type metadata accessor for ConfigurationType();
    (*(*(v9 - 8) + 8))(&v3[v6], v9);
  }

  else
  {
    v10 = swift_allocObject();
    v10[2] = 0;
    v10[3] = 0;
    v10[4] = v5;
    v11 = swift_allocObject();
    v11[2] = 0;
    v11[3] = 0;
    v11[4] = v5;
    type metadata accessor for HeartRateTargetZone();

    Binding.init(get:set:)();
    return v14;
  }

  return v7;
}

id closure #1 in AlertConfigurationViewModel.heartRateTargetZone.getter@<X0>(uint64_t a1@<X2>, void *a2@<X8>)
{
  swift_getKeyPath();
  lazy protocol witness table accessor for type ConfigurationType and conformance ConfigurationType(&lazy protocol witness table cache variable for type ActivityPersistingViewModel and conformance ActivityPersistingViewModel, type metadata accessor for ActivityPersistingViewModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  swift_beginAccess();
  v4 = *(a1 + 24);
  *a2 = v4;

  return v4;
}

uint64_t AlertConfigurationViewModel.powerZonesAlertTargetZone.getter()
{
  v1 = type metadata accessor for AlertConfigurationViewModel.ViewModelContainer(0);
  MEMORY[0x28223BE20](v1);
  v3 = &v13 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  outlined init with copy of AlertConfigurationViewModel.ViewModelContainer(v0 + OBJC_IVAR____TtC9WorkoutUI27AlertConfigurationViewModel_container, v3, type metadata accessor for AlertConfigurationViewModel.ViewModelContainer);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v5 = *v3;
  if (EnumCaseMultiPayload == 1)
  {
    v6 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s9WorkoutUI21LocalBindingViewModelC_0A4Core17ConfigurationTypeOtMd) + 48);
    swift_getKeyPath();
    v14 = v5;
    lazy protocol witness table accessor for type ConfigurationType and conformance ConfigurationType(&lazy protocol witness table cache variable for type LocalBindingViewModel and conformance LocalBindingViewModel, type metadata accessor for LocalBindingViewModel);
    ObservationRegistrar.access<A, B>(_:keyPath:)();

    swift_beginAccess();
    v7 = *(v5 + 64);
    v8 = *(v5 + 80);

    v8;

    v9 = type metadata accessor for ConfigurationType();
    (*(*(v9 - 8) + 8))(&v3[v6], v9);
  }

  else
  {
    v10 = swift_allocObject();
    v10[2] = 0;
    v10[3] = 0;
    v10[4] = v5;
    v11 = swift_allocObject();
    v11[2] = 0;
    v11[3] = 0;
    v11[4] = v5;
    type metadata accessor for PowerZonesAlertTargetZone();

    Binding.init(get:set:)();
    return v14;
  }

  return v7;
}

id closure #1 in AlertConfigurationViewModel.powerZonesAlertTargetZone.getter@<X0>(uint64_t a1@<X2>, void *a2@<X8>)
{
  swift_getKeyPath();
  lazy protocol witness table accessor for type ConfigurationType and conformance ConfigurationType(&lazy protocol witness table cache variable for type ActivityPersistingViewModel and conformance ActivityPersistingViewModel, type metadata accessor for ActivityPersistingViewModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  swift_beginAccess();
  v4 = *(a1 + 32);
  *a2 = v4;

  return v4;
}

uint64_t AlertConfigurationViewModel.__allocating_init(container:activityType:formattingManager:workoutConfiguration:activityMoveMode:sessionContext:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v24 = a5;
  v25 = a6;
  v10 = type metadata accessor for AlertConfigurationViewModel.ViewModelContainer(0);
  MEMORY[0x28223BE20](v10);
  v12 = &v24 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for AlertConfigurationContext();
  v14 = *(v13 - 8);
  MEMORY[0x28223BE20](v13);
  v16 = &v24 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = swift_allocObject();
  ObservationRegistrar.init()();
  outlined init with copy of AlertConfigurationViewModel.ViewModelContainer(a1, v17 + OBJC_IVAR____TtC9WorkoutUI27AlertConfigurationViewModel_container, type metadata accessor for AlertConfigurationViewModel.ViewModelContainer);
  *(v17 + 16) = a2;
  *(v17 + 24) = a3;
  outlined init with take of AlertConfigurationViewModel.ViewModelContainer(a1, v12);
  if (swift_getEnumCaseMultiPayload() == 1)
  {

    v18 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s9WorkoutUI21LocalBindingViewModelC_0A4Core17ConfigurationTypeOtMd) + 48);
    v19 = type metadata accessor for ConfigurationType();
    (*(*(v19 - 8) + 32))(v16, &v12[v18], v19);
    v20 = MEMORY[0x277D7E4B8];
  }

  else
  {
    _s9WorkoutUI27AlertConfigurationViewModelC0eF9ContainerOWOhTm_0(v12, type metadata accessor for AlertConfigurationViewModel.ViewModelContainer);
    v20 = MEMORY[0x277D7E4C0];
  }

  (*(v14 + 104))(v16, *v20, v13);
  (*(v14 + 32))(v17 + OBJC_IVAR____TtC9WorkoutUI27AlertConfigurationViewModel_configurationContext, v16, v13);
  *(v17 + OBJC_IVAR____TtC9WorkoutUI27AlertConfigurationViewModel_workoutConfiguration) = a4;
  *(v17 + OBJC_IVAR____TtC9WorkoutUI27AlertConfigurationViewModel_activityMoveMode) = v24;
  v21 = OBJC_IVAR____TtC9WorkoutUI27AlertConfigurationViewModel_sessionContext;
  v22 = type metadata accessor for AlertConfigurationSessionContext();
  (*(*(v22 - 8) + 32))(v17 + v21, v25, v22);
  return v17;
}

uint64_t AlertConfigurationViewModel.init(container:activityType:formattingManager:workoutConfiguration:activityMoveMode:sessionContext:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v24 = a5;
  v25 = a6;
  v11 = type metadata accessor for AlertConfigurationViewModel.ViewModelContainer(0);
  MEMORY[0x28223BE20](v11);
  v13 = &v24 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for AlertConfigurationContext();
  v15 = *(v14 - 8);
  MEMORY[0x28223BE20](v14);
  v17 = &v24 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  ObservationRegistrar.init()();
  outlined init with copy of AlertConfigurationViewModel.ViewModelContainer(a1, v6 + OBJC_IVAR____TtC9WorkoutUI27AlertConfigurationViewModel_container, type metadata accessor for AlertConfigurationViewModel.ViewModelContainer);
  *(v6 + 16) = a2;
  *(v6 + 24) = a3;
  outlined init with take of AlertConfigurationViewModel.ViewModelContainer(a1, v13);
  if (swift_getEnumCaseMultiPayload() == 1)
  {

    v18 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s9WorkoutUI21LocalBindingViewModelC_0A4Core17ConfigurationTypeOtMd) + 48);
    v19 = type metadata accessor for ConfigurationType();
    (*(*(v19 - 8) + 32))(v17, &v13[v18], v19);
    v20 = MEMORY[0x277D7E4B8];
  }

  else
  {
    _s9WorkoutUI27AlertConfigurationViewModelC0eF9ContainerOWOhTm_0(v13, type metadata accessor for AlertConfigurationViewModel.ViewModelContainer);
    v20 = MEMORY[0x277D7E4C0];
  }

  (*(v15 + 104))(v17, *v20, v14);
  (*(v15 + 32))(v6 + OBJC_IVAR____TtC9WorkoutUI27AlertConfigurationViewModel_configurationContext, v17, v14);
  *(v6 + OBJC_IVAR____TtC9WorkoutUI27AlertConfigurationViewModel_workoutConfiguration) = a4;
  *(v6 + OBJC_IVAR____TtC9WorkoutUI27AlertConfigurationViewModel_activityMoveMode) = v24;
  v21 = OBJC_IVAR____TtC9WorkoutUI27AlertConfigurationViewModel_sessionContext;
  v22 = type metadata accessor for AlertConfigurationSessionContext();
  (*(*(v22 - 8) + 32))(v6 + v21, v25, v22);
  return v6;
}

uint64_t AlertConfigurationViewModel.__allocating_init(activityType:formattingManager:workoutConfiguration:activityMoveMode:sessionContext:)(void *a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v33 = a5;
  v37 = a3;
  v38 = a4;
  v36 = type metadata accessor for AlertConfigurationContext();
  v7 = *(v36 - 8);
  MEMORY[0x28223BE20](v36);
  v34 = &v33 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for AlertConfigurationSessionContext();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = &v33 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for AlertConfigurationViewModel.ViewModelContainer(0);
  MEMORY[0x28223BE20](v13);
  v15 = &v33 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v18 = (&v33 - v17);
  type metadata accessor for ActivityPersistingViewModel(0);
  swift_allocObject();
  v19 = a1;
  v20 = a2;
  v21 = specialized ActivityPersistingViewModel.init(activityType:formattingManager:)(v19, v20);

  *v18 = v21;
  swift_storeEnumTagMultiPayload();
  v22 = *(v10 + 16);
  v35 = v12;
  v23 = v12;
  v24 = v33;
  v22(v23, v33, v9);
  type metadata accessor for AlertConfigurationViewModel(0);
  v25 = swift_allocObject();
  ObservationRegistrar.init()();
  (*(v10 + 8))(v24, v9);
  outlined init with copy of AlertConfigurationViewModel.ViewModelContainer(v18, v25 + OBJC_IVAR____TtC9WorkoutUI27AlertConfigurationViewModel_container, type metadata accessor for AlertConfigurationViewModel.ViewModelContainer);
  *(v25 + 16) = v19;
  *(v25 + 24) = v20;
  outlined init with take of AlertConfigurationViewModel.ViewModelContainer(v18, v15);
  if (swift_getEnumCaseMultiPayload() == 1)
  {

    v26 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s9WorkoutUI21LocalBindingViewModelC_0A4Core17ConfigurationTypeOtMd) + 48);
    v27 = type metadata accessor for ConfigurationType();
    v28 = v34;
    (*(*(v27 - 8) + 32))(v34, &v15[v26], v27);
    v29 = MEMORY[0x277D7E4B8];
  }

  else
  {
    _s9WorkoutUI27AlertConfigurationViewModelC0eF9ContainerOWOhTm_0(v15, type metadata accessor for AlertConfigurationViewModel.ViewModelContainer);
    v29 = MEMORY[0x277D7E4C0];
    v28 = v34;
  }

  v30 = v36;
  (*(v7 + 104))(v28, *v29, v36);
  (*(v7 + 32))(v25 + OBJC_IVAR____TtC9WorkoutUI27AlertConfigurationViewModel_configurationContext, v28, v30);
  v31 = v38;
  *(v25 + OBJC_IVAR____TtC9WorkoutUI27AlertConfigurationViewModel_workoutConfiguration) = v37;
  *(v25 + OBJC_IVAR____TtC9WorkoutUI27AlertConfigurationViewModel_activityMoveMode) = v31;
  (*(v10 + 32))(v25 + OBJC_IVAR____TtC9WorkoutUI27AlertConfigurationViewModel_sessionContext, v35, v9);
  return v25;
}

void *ActivityPersistingViewModel.__allocating_init(activityType:formattingManager:)(void *a1, void *a2)
{
  swift_allocObject();
  v4 = specialized ActivityPersistingViewModel.init(activityType:formattingManager:)(a1, a2);

  return v4;
}

uint64_t AlertConfigurationViewModel.hash(into:)()
{
  v1 = v0;
  NSObject.hash(into:)();
  type metadata accessor for AlertConfigurationContext();
  lazy protocol witness table accessor for type ConfigurationType and conformance ConfigurationType(&lazy protocol witness table cache variable for type AlertConfigurationContext and conformance AlertConfigurationContext, MEMORY[0x277D7E4C8]);
  dispatch thunk of Hashable.hash(into:)();
  v2 = *(v0 + OBJC_IVAR____TtC9WorkoutUI27AlertConfigurationViewModel_workoutConfiguration);
  if (v2)
  {
    Hasher._combine(_:)(1u);
    v3 = v2;
    NSObject.hash(into:)();
  }

  else
  {
    Hasher._combine(_:)(0);
  }

  MEMORY[0x20F30CD90](*(v1 + OBJC_IVAR____TtC9WorkoutUI27AlertConfigurationViewModel_activityMoveMode));
  type metadata accessor for AlertConfigurationSessionContext();
  lazy protocol witness table accessor for type ConfigurationType and conformance ConfigurationType(&lazy protocol witness table cache variable for type AlertConfigurationSessionContext and conformance AlertConfigurationSessionContext, MEMORY[0x277D7E698]);
  dispatch thunk of Hashable.hash(into:)();
  return AlertConfigurationViewModel.ViewModelContainer.hash(into:)();
}

uint64_t AlertConfigurationViewModel.updateTargetZone(_:)(uint64_t a1)
{
  v3 = type metadata accessor for TargetZone.PrimaryType();
  v29 = *(v3 - 8);
  v30 = v3;
  MEMORY[0x28223BE20](v3);
  v5 = v28 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for TargetZone.ZoneType();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = v28 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for AlertConfigurationViewModel.ViewModelContainer(0);
  MEMORY[0x28223BE20](v10);
  v12 = v28 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  outlined init with copy of AlertConfigurationViewModel.ViewModelContainer(v1 + OBJC_IVAR____TtC9WorkoutUI27AlertConfigurationViewModel_container, v12, type metadata accessor for AlertConfigurationViewModel.ViewModelContainer);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v14 = *v12;
  if (EnumCaseMultiPayload == 1)
  {
    swift_getKeyPath();
    v15 = OBJC_IVAR____TtC9WorkoutUI21LocalBindingViewModel___observationRegistrar;
    v39 = v14;
    v28[0] = lazy protocol witness table accessor for type ConfigurationType and conformance ConfigurationType(&lazy protocol witness table cache variable for type LocalBindingViewModel and conformance LocalBindingViewModel, type metadata accessor for LocalBindingViewModel);
    v28[1] = v15;
    ObservationRegistrar.access<A, B>(_:keyPath:)();

    swift_beginAccess();
    v28[2] = a1;
    v17 = v14[2];
    v16 = v14[3];
    v18 = v14[4];

    TargetZone.type.getter();
    TargetZone.ZoneType.primaryType.getter();
    (*(v7 + 8))(v9, v6);
    v35 = v17;
    v36 = v16;
    v37 = v18;
    v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI7BindingVySay11WorkoutCore10TargetZoneCGGMd);
    MEMORY[0x20F30B100](&v38);
    Array<A>.removeTargetZone(primaryType:)(v5);
    (*(v29 + 8))(v5, v30);
    v32 = v17;
    v33 = v16;
    v34 = v18;
    v31 = v38;
    Binding.wrappedValue.setter();

    if (dispatch thunk of TargetZone.enabled.getter())
    {
      swift_getKeyPath();
      v35 = v14;
      ObservationRegistrar.access<A, B>(_:keyPath:)();

      v20 = v14[2];
      v21 = v14[3];
      v22 = v14[4];
      v35 = v20;
      v36 = v21;
      v37 = v22;

      MEMORY[0x20F30B100](&v38, v19);

      MEMORY[0x20F30BCF0](v23);
      if (*((v38 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v38 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
      }

      specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      v32 = v20;
      v33 = v21;
      v34 = v22;
      v31 = v38;
      Binding.wrappedValue.setter();
    }

    v24 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s9WorkoutUI21LocalBindingViewModelC_0A4Core17ConfigurationTypeOtMd) + 48);
    v25 = type metadata accessor for ConfigurationType();
    return (*(*(v25 - 8) + 8))(&v12[v24], v25);
  }

  else
  {
    TargetZone.type.getter();
    TargetZone.ZoneType.primaryType.getter();
    (*(v7 + 8))(v9, v6);
    swift_getKeyPath();
    v39 = v14;
    lazy protocol witness table accessor for type ConfigurationType and conformance ConfigurationType(&lazy protocol witness table cache variable for type ActivityPersistingViewModel and conformance ActivityPersistingViewModel, type metadata accessor for ActivityPersistingViewModel);
    ObservationRegistrar.access<A, B>(_:keyPath:)();

    v39 = v14;
    swift_getKeyPath();
    ObservationRegistrar.willSet<A, B>(_:keyPath:)();

    swift_beginAccess();
    Array<A>.removeTargetZone(primaryType:)(v5);
    (*(v29 + 8))(v5, v30);
    swift_endAccess();
    v39 = v14;
    swift_getKeyPath();
    ObservationRegistrar.didSet<A, B>(_:keyPath:)();

    if (dispatch thunk of TargetZone.enabled.getter())
    {
      swift_getKeyPath();
      v39 = v14;
      ObservationRegistrar.access<A, B>(_:keyPath:)();

      v39 = v14;
      swift_getKeyPath();
      ObservationRegistrar.willSet<A, B>(_:keyPath:)();

      swift_beginAccess();

      MEMORY[0x20F30BCF0](v27);
      if (*((v14[2] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v14[2] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
      }

      specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      swift_endAccess();
      v39 = v14;
      swift_getKeyPath();
      ObservationRegistrar.didSet<A, B>(_:keyPath:)();
    }
  }
}

uint64_t AlertConfigurationViewModel.deinit()
{
  v1 = OBJC_IVAR____TtC9WorkoutUI27AlertConfigurationViewModel_configurationContext;
  v2 = type metadata accessor for AlertConfigurationContext();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  v3 = OBJC_IVAR____TtC9WorkoutUI27AlertConfigurationViewModel_sessionContext;
  v4 = type metadata accessor for AlertConfigurationSessionContext();
  (*(*(v4 - 8) + 8))(v0 + v3, v4);
  _s9WorkoutUI27AlertConfigurationViewModelC0eF9ContainerOWOhTm_0(v0 + OBJC_IVAR____TtC9WorkoutUI27AlertConfigurationViewModel_container, type metadata accessor for AlertConfigurationViewModel.ViewModelContainer);
  v5 = OBJC_IVAR____TtC9WorkoutUI27AlertConfigurationViewModel___observationRegistrar;
  v6 = type metadata accessor for ObservationRegistrar();
  (*(*(v6 - 8) + 8))(v0 + v5, v6);
  return v0;
}

uint64_t AlertConfigurationViewModel.__deallocating_deinit()
{
  v1 = OBJC_IVAR____TtC9WorkoutUI27AlertConfigurationViewModel_configurationContext;
  v2 = type metadata accessor for AlertConfigurationContext();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  v3 = OBJC_IVAR____TtC9WorkoutUI27AlertConfigurationViewModel_sessionContext;
  v4 = type metadata accessor for AlertConfigurationSessionContext();
  (*(*(v4 - 8) + 8))(v0 + v3, v4);
  _s9WorkoutUI27AlertConfigurationViewModelC0eF9ContainerOWOhTm_0(v0 + OBJC_IVAR____TtC9WorkoutUI27AlertConfigurationViewModel_container, type metadata accessor for AlertConfigurationViewModel.ViewModelContainer);
  v5 = OBJC_IVAR____TtC9WorkoutUI27AlertConfigurationViewModel___observationRegistrar;
  v6 = type metadata accessor for ObservationRegistrar();
  (*(*(v6 - 8) + 8))(v0 + v5, v6);

  return swift_deallocClassInstance();
}

uint64_t protocol witness for Identifiable.id.getter in conformance AlertConfigurationViewModel@<X0>(uint64_t *a1@<X8>)
{
  type metadata accessor for AlertConfigurationViewModel(0);
  result = Identifiable<>.id.getter();
  *a1 = result;
  return result;
}

uint64_t key path getter for ActivityPersistingViewModel.targetZones : ActivityPersistingViewModel@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  lazy protocol witness table accessor for type ConfigurationType and conformance ConfigurationType(&lazy protocol witness table cache variable for type ActivityPersistingViewModel and conformance ActivityPersistingViewModel, type metadata accessor for ActivityPersistingViewModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  swift_beginAccess();
  *a2 = *(v3 + 16);
}

uint64_t ActivityPersistingViewModel.targetZones.getter()
{
  swift_getKeyPath();
  lazy protocol witness table accessor for type ConfigurationType and conformance ConfigurationType(&lazy protocol witness table cache variable for type ActivityPersistingViewModel and conformance ActivityPersistingViewModel, type metadata accessor for ActivityPersistingViewModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  swift_beginAccess();
}

uint64_t ActivityPersistingViewModel.targetZones.setter(uint64_t a1)
{
  swift_beginAccess();

  v4 = _sSasSQRzlE2eeoiySbSayxG_ABtFZ11WorkoutCore10TargetZoneC_Tt1g5Tm(v3, a1, MEMORY[0x277D7DF08], &lazy protocol witness table cache variable for type TargetZone and conformance TargetZone, MEMORY[0x277D7DF08]);

  if (v4)
  {
    *(v1 + 16) = a1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath);
    lazy protocol witness table accessor for type ConfigurationType and conformance ConfigurationType(&lazy protocol witness table cache variable for type ActivityPersistingViewModel and conformance ActivityPersistingViewModel, type metadata accessor for ActivityPersistingViewModel);
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
  }
}

uint64_t closure #1 in ActivityPersistingViewModel.targetZones.setter(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  *(a1 + 16) = a2;
}

void (*ActivityPersistingViewModel.targetZones.modify(uint64_t *a1))(void *a1)
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
  v4[5] = OBJC_IVAR____TtC9WorkoutUI27ActivityPersistingViewModel___observationRegistrar;
  *v4 = v1;
  v4[6] = lazy protocol witness table accessor for type ConfigurationType and conformance ConfigurationType(&lazy protocol witness table cache variable for type ActivityPersistingViewModel and conformance ActivityPersistingViewModel, type metadata accessor for ActivityPersistingViewModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  *v4 = v1;
  swift_getKeyPath();
  ObservationRegistrar.willSet<A, B>(_:keyPath:)();

  v4[7] = ActivityPersistingViewModel._targetZones.modify();
  return ActivityPersistingViewModel.targetZones.modify;
}

void ActivityPersistingViewModel.targetZones.modify(void *a1)
{
  ActivityPersistingViewModel.targetZones.modify(a1);
}

{
  v1 = *a1;
  (*(*a1 + 56))(*a1, 0);
  *v1 = v1[4];
  swift_getKeyPath();
  ObservationRegistrar.didSet<A, B>(_:keyPath:)();

  free(v1);
}

id key path getter for ActivityPersistingViewModel.heartRateTargetZone : ActivityPersistingViewModel@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  lazy protocol witness table accessor for type ConfigurationType and conformance ConfigurationType(&lazy protocol witness table cache variable for type ActivityPersistingViewModel and conformance ActivityPersistingViewModel, type metadata accessor for ActivityPersistingViewModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  swift_beginAccess();
  v4 = *(v3 + 24);
  *a2 = v4;

  return v4;
}

id ActivityPersistingViewModel.heartRateTargetZone.getter()
{
  swift_getKeyPath();
  lazy protocol witness table accessor for type ConfigurationType and conformance ConfigurationType(&lazy protocol witness table cache variable for type ActivityPersistingViewModel and conformance ActivityPersistingViewModel, type metadata accessor for ActivityPersistingViewModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  swift_beginAccess();
  v1 = *(v0 + 24);

  return v1;
}

void ActivityPersistingViewModel.heartRateTargetZone.setter(void *a1)
{
  v2 = v1;
  swift_beginAccess();
  v4 = *(v1 + 24);
  type metadata accessor for HeartRateTargetZone();
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
    lazy protocol witness table accessor for type ConfigurationType and conformance ConfigurationType(&lazy protocol witness table cache variable for type ActivityPersistingViewModel and conformance ActivityPersistingViewModel, type metadata accessor for ActivityPersistingViewModel);
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
  }
}

void closure #1 in ActivityPersistingViewModel.heartRateTargetZone.setter(uint64_t a1, void *a2)
{
  swift_beginAccess();
  v4 = *(a1 + 24);
  *(a1 + 24) = a2;
  v5 = a2;
}

void (*ActivityPersistingViewModel.heartRateTargetZone.modify(uint64_t *a1))(void *a1)
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
  v4[5] = OBJC_IVAR____TtC9WorkoutUI27ActivityPersistingViewModel___observationRegistrar;
  *v4 = v1;
  v4[6] = lazy protocol witness table accessor for type ConfigurationType and conformance ConfigurationType(&lazy protocol witness table cache variable for type ActivityPersistingViewModel and conformance ActivityPersistingViewModel, type metadata accessor for ActivityPersistingViewModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  *v4 = v1;
  swift_getKeyPath();
  ObservationRegistrar.willSet<A, B>(_:keyPath:)();

  v4[7] = ActivityPersistingViewModel._heartRateTargetZone.modify();
  return ActivityPersistingViewModel.heartRateTargetZone.modify;
}

id key path getter for ActivityPersistingViewModel.powerZonesAlertTargetZone : ActivityPersistingViewModel@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  lazy protocol witness table accessor for type ConfigurationType and conformance ConfigurationType(&lazy protocol witness table cache variable for type ActivityPersistingViewModel and conformance ActivityPersistingViewModel, type metadata accessor for ActivityPersistingViewModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  swift_beginAccess();
  v4 = *(v3 + 32);
  *a2 = v4;

  return v4;
}

id ActivityPersistingViewModel.powerZonesAlertTargetZone.getter()
{
  swift_getKeyPath();
  lazy protocol witness table accessor for type ConfigurationType and conformance ConfigurationType(&lazy protocol witness table cache variable for type ActivityPersistingViewModel and conformance ActivityPersistingViewModel, type metadata accessor for ActivityPersistingViewModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  swift_beginAccess();
  v1 = *(v0 + 32);

  return v1;
}

void ActivityPersistingViewModel.powerZonesAlertTargetZone.setter(void *a1)
{
  v2 = v1;
  swift_beginAccess();
  v4 = *(v1 + 32);
  type metadata accessor for PowerZonesAlertTargetZone();
  v5 = v4;
  v6 = static NSObject.== infix(_:_:)();

  if (v6)
  {
    v7 = *(v2 + 32);
    *(v2 + 32) = a1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath);
    lazy protocol witness table accessor for type ConfigurationType and conformance ConfigurationType(&lazy protocol witness table cache variable for type ActivityPersistingViewModel and conformance ActivityPersistingViewModel, type metadata accessor for ActivityPersistingViewModel);
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
  }
}

void closure #1 in ActivityPersistingViewModel.powerZonesAlertTargetZone.setter(uint64_t a1, void *a2)
{
  swift_beginAccess();
  v4 = *(a1 + 32);
  *(a1 + 32) = a2;
  v5 = a2;
}

void (*ActivityPersistingViewModel.powerZonesAlertTargetZone.modify(uint64_t *a1))(void *a1)
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
  v4[5] = OBJC_IVAR____TtC9WorkoutUI27ActivityPersistingViewModel___observationRegistrar;
  *v4 = v1;
  v4[6] = lazy protocol witness table accessor for type ConfigurationType and conformance ConfigurationType(&lazy protocol witness table cache variable for type ActivityPersistingViewModel and conformance ActivityPersistingViewModel, type metadata accessor for ActivityPersistingViewModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  *v4 = v1;
  swift_getKeyPath();
  ObservationRegistrar.willSet<A, B>(_:keyPath:)();

  v4[7] = ActivityPersistingViewModel._powerZonesAlertTargetZone.modify();
  return ActivityPersistingViewModel.powerZonesAlertTargetZone.modify;
}

id key path getter for ActivityPersistingViewModel.timeBasedSplit : ActivityPersistingViewModel@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  lazy protocol witness table accessor for type ConfigurationType and conformance ConfigurationType(&lazy protocol witness table cache variable for type ActivityPersistingViewModel and conformance ActivityPersistingViewModel, type metadata accessor for ActivityPersistingViewModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  swift_beginAccess();
  v4 = *(v3 + 40);
  *a2 = v4;

  return v4;
}

id ActivityPersistingViewModel.timeBasedSplit.getter()
{
  swift_getKeyPath();
  lazy protocol witness table accessor for type ConfigurationType and conformance ConfigurationType(&lazy protocol witness table cache variable for type ActivityPersistingViewModel and conformance ActivityPersistingViewModel, type metadata accessor for ActivityPersistingViewModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  swift_beginAccess();
  v1 = *(v0 + 40);

  return v1;
}

void ActivityPersistingViewModel.timeBasedSplit.setter(void *a1)
{
  v2 = v1;
  swift_beginAccess();
  v4 = *(v1 + 40);
  type metadata accessor for NLWorkoutSplitStorage(0, &lazy cache variable for type metadata for NLWorkoutSplitStorage);
  v5 = v4;
  v6 = static NSObject.== infix(_:_:)();

  if (v6)
  {
    v7 = *(v2 + 40);
    *(v2 + 40) = a1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath);
    lazy protocol witness table accessor for type ConfigurationType and conformance ConfigurationType(&lazy protocol witness table cache variable for type ActivityPersistingViewModel and conformance ActivityPersistingViewModel, type metadata accessor for ActivityPersistingViewModel);
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
  }
}

void closure #1 in ActivityPersistingViewModel.timeBasedSplit.setter(uint64_t a1, void *a2)
{
  swift_beginAccess();
  v4 = *(a1 + 40);
  *(a1 + 40) = a2;
  v5 = a2;
}

void (*ActivityPersistingViewModel.timeBasedSplit.modify(uint64_t *a1))(void *a1)
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
  v4[5] = OBJC_IVAR____TtC9WorkoutUI27ActivityPersistingViewModel___observationRegistrar;
  *v4 = v1;
  v4[6] = lazy protocol witness table accessor for type ConfigurationType and conformance ConfigurationType(&lazy protocol witness table cache variable for type ActivityPersistingViewModel and conformance ActivityPersistingViewModel, type metadata accessor for ActivityPersistingViewModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  *v4 = v1;
  swift_getKeyPath();
  ObservationRegistrar.willSet<A, B>(_:keyPath:)();

  v4[7] = ActivityPersistingViewModel._timeBasedSplit.modify();
  return ActivityPersistingViewModel.timeBasedSplit.modify;
}

id key path getter for ActivityPersistingViewModel.distanceBasedSplit : ActivityPersistingViewModel@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  lazy protocol witness table accessor for type ConfigurationType and conformance ConfigurationType(&lazy protocol witness table cache variable for type ActivityPersistingViewModel and conformance ActivityPersistingViewModel, type metadata accessor for ActivityPersistingViewModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  swift_beginAccess();
  v4 = *(v3 + 48);
  *a2 = v4;

  return v4;
}

id ActivityPersistingViewModel.distanceBasedSplit.getter()
{
  swift_getKeyPath();
  lazy protocol witness table accessor for type ConfigurationType and conformance ConfigurationType(&lazy protocol witness table cache variable for type ActivityPersistingViewModel and conformance ActivityPersistingViewModel, type metadata accessor for ActivityPersistingViewModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  swift_beginAccess();
  v1 = *(v0 + 48);

  return v1;
}

void ActivityPersistingViewModel.distanceBasedSplit.setter(void *a1)
{
  v2 = v1;
  swift_beginAccess();
  v4 = *(v1 + 48);
  type metadata accessor for NLWorkoutSplitStorage(0, &lazy cache variable for type metadata for NLWorkoutSplitStorage);
  v5 = v4;
  v6 = static NSObject.== infix(_:_:)();

  if (v6)
  {
    v7 = *(v2 + 48);
    *(v2 + 48) = a1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath);
    lazy protocol witness table accessor for type ConfigurationType and conformance ConfigurationType(&lazy protocol witness table cache variable for type ActivityPersistingViewModel and conformance ActivityPersistingViewModel, type metadata accessor for ActivityPersistingViewModel);
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
  }
}

void closure #1 in ActivityPersistingViewModel.distanceBasedSplit.setter(uint64_t a1, void *a2)
{
  swift_beginAccess();
  v4 = *(a1 + 48);
  *(a1 + 48) = a2;
  v5 = a2;
}

void (*ActivityPersistingViewModel.distanceBasedSplit.modify(uint64_t *a1))(void *a1)
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
  v4[5] = OBJC_IVAR____TtC9WorkoutUI27ActivityPersistingViewModel___observationRegistrar;
  *v4 = v1;
  v4[6] = lazy protocol witness table accessor for type ConfigurationType and conformance ConfigurationType(&lazy protocol witness table cache variable for type ActivityPersistingViewModel and conformance ActivityPersistingViewModel, type metadata accessor for ActivityPersistingViewModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  *v4 = v1;
  swift_getKeyPath();
  ObservationRegistrar.willSet<A, B>(_:keyPath:)();

  v4[7] = ActivityPersistingViewModel._distanceBasedSplit.modify();
  return ActivityPersistingViewModel.distanceBasedSplit.modify;
}

uint64_t key path getter for ActivityPersistingViewModel.raceAlerts : ActivityPersistingViewModel@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  lazy protocol witness table accessor for type ConfigurationType and conformance ConfigurationType(&lazy protocol witness table cache variable for type ActivityPersistingViewModel and conformance ActivityPersistingViewModel, type metadata accessor for ActivityPersistingViewModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  swift_beginAccess();
  *a2 = *(v3 + 56);
}

uint64_t ActivityPersistingViewModel.raceAlerts.getter()
{
  swift_getKeyPath();
  lazy protocol witness table accessor for type ConfigurationType and conformance ConfigurationType(&lazy protocol witness table cache variable for type ActivityPersistingViewModel and conformance ActivityPersistingViewModel, type metadata accessor for ActivityPersistingViewModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  swift_beginAccess();
}

uint64_t ActivityPersistingViewModel.raceAlerts.setter(uint64_t a1)
{
  swift_beginAccess();
  type metadata accessor for RaceAlerts();
  lazy protocol witness table accessor for type ConfigurationType and conformance ConfigurationType(&lazy protocol witness table cache variable for type RaceAlerts and conformance RaceAlerts, MEMORY[0x277D7DE00]);
  if (dispatch thunk of static Equatable.== infix(_:_:)())
  {
    *(v1 + 56) = a1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath);
    lazy protocol witness table accessor for type ConfigurationType and conformance ConfigurationType(&lazy protocol witness table cache variable for type ActivityPersistingViewModel and conformance ActivityPersistingViewModel, type metadata accessor for ActivityPersistingViewModel);
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
  }
}

uint64_t closure #1 in ActivityPersistingViewModel.raceAlerts.setter(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  *(a1 + 56) = a2;
}

void (*ActivityPersistingViewModel.raceAlerts.modify(uint64_t *a1))(void *a1)
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
  v4[5] = OBJC_IVAR____TtC9WorkoutUI27ActivityPersistingViewModel___observationRegistrar;
  *v4 = v1;
  v4[6] = lazy protocol witness table accessor for type ConfigurationType and conformance ConfigurationType(&lazy protocol witness table cache variable for type ActivityPersistingViewModel and conformance ActivityPersistingViewModel, type metadata accessor for ActivityPersistingViewModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  *v4 = v1;
  swift_getKeyPath();
  ObservationRegistrar.willSet<A, B>(_:keyPath:)();

  v4[7] = ActivityPersistingViewModel._raceAlerts.modify();
  return ActivityPersistingViewModel.raceAlerts.modify;
}

uint64_t key path getter for ActivityPersistingViewModel.pacerAlerts : ActivityPersistingViewModel@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  lazy protocol witness table accessor for type ConfigurationType and conformance ConfigurationType(&lazy protocol witness table cache variable for type ActivityPersistingViewModel and conformance ActivityPersistingViewModel, type metadata accessor for ActivityPersistingViewModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  swift_beginAccess();
  *a2 = *(v3 + 64);
}

uint64_t ActivityPersistingViewModel.pacerAlerts.getter()
{
  swift_getKeyPath();
  lazy protocol witness table accessor for type ConfigurationType and conformance ConfigurationType(&lazy protocol witness table cache variable for type ActivityPersistingViewModel and conformance ActivityPersistingViewModel, type metadata accessor for ActivityPersistingViewModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  swift_beginAccess();
}

uint64_t ActivityPersistingViewModel.pacerAlerts.setter(uint64_t a1)
{
  swift_beginAccess();
  type metadata accessor for PacerAlerts();
  lazy protocol witness table accessor for type ConfigurationType and conformance ConfigurationType(&lazy protocol witness table cache variable for type PacerAlerts and conformance PacerAlerts, MEMORY[0x277D7DF28]);
  if (dispatch thunk of static Equatable.== infix(_:_:)())
  {
    *(v1 + 64) = a1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath);
    lazy protocol witness table accessor for type ConfigurationType and conformance ConfigurationType(&lazy protocol witness table cache variable for type ActivityPersistingViewModel and conformance ActivityPersistingViewModel, type metadata accessor for ActivityPersistingViewModel);
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
  }
}

uint64_t closure #1 in ActivityPersistingViewModel.pacerAlerts.setter(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  *(a1 + 64) = a2;
}

void (*ActivityPersistingViewModel.pacerAlerts.modify(uint64_t *a1))(void *a1)
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
  v4[5] = OBJC_IVAR____TtC9WorkoutUI27ActivityPersistingViewModel___observationRegistrar;
  *v4 = v1;
  v4[6] = lazy protocol witness table accessor for type ConfigurationType and conformance ConfigurationType(&lazy protocol witness table cache variable for type ActivityPersistingViewModel and conformance ActivityPersistingViewModel, type metadata accessor for ActivityPersistingViewModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  *v4 = v1;
  swift_getKeyPath();
  ObservationRegistrar.willSet<A, B>(_:keyPath:)();

  v4[7] = ActivityPersistingViewModel._pacerAlerts.modify();
  return ActivityPersistingViewModel.pacerAlerts.modify;
}

uint64_t key path getter for ActivityPersistingViewModel.trackAlerts : ActivityPersistingViewModel@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  lazy protocol witness table accessor for type ConfigurationType and conformance ConfigurationType(&lazy protocol witness table cache variable for type ActivityPersistingViewModel and conformance ActivityPersistingViewModel, type metadata accessor for ActivityPersistingViewModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  swift_beginAccess();
  *a2 = *(v3 + 72);
}

uint64_t ActivityPersistingViewModel.trackAlerts.getter()
{
  swift_getKeyPath();
  lazy protocol witness table accessor for type ConfigurationType and conformance ConfigurationType(&lazy protocol witness table cache variable for type ActivityPersistingViewModel and conformance ActivityPersistingViewModel, type metadata accessor for ActivityPersistingViewModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  swift_beginAccess();
}

uint64_t ActivityPersistingViewModel.trackAlerts.setter(uint64_t a1)
{
  swift_beginAccess();
  type metadata accessor for TrackAlerts();
  lazy protocol witness table accessor for type ConfigurationType and conformance ConfigurationType(&lazy protocol witness table cache variable for type TrackAlerts and conformance TrackAlerts, MEMORY[0x277D7DF40]);
  if (dispatch thunk of static Equatable.== infix(_:_:)())
  {
    *(v1 + 72) = a1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath);
    lazy protocol witness table accessor for type ConfigurationType and conformance ConfigurationType(&lazy protocol witness table cache variable for type ActivityPersistingViewModel and conformance ActivityPersistingViewModel, type metadata accessor for ActivityPersistingViewModel);
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
  }
}

uint64_t closure #1 in ActivityPersistingViewModel.trackAlerts.setter(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  *(a1 + 72) = a2;
}

void (*ActivityPersistingViewModel.trackAlerts.modify(uint64_t *a1))(void *a1)
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
  v4[5] = OBJC_IVAR____TtC9WorkoutUI27ActivityPersistingViewModel___observationRegistrar;
  *v4 = v1;
  v4[6] = lazy protocol witness table accessor for type ConfigurationType and conformance ConfigurationType(&lazy protocol witness table cache variable for type ActivityPersistingViewModel and conformance ActivityPersistingViewModel, type metadata accessor for ActivityPersistingViewModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  *v4 = v1;
  swift_getKeyPath();
  ObservationRegistrar.willSet<A, B>(_:keyPath:)();

  v4[7] = ActivityPersistingViewModel._trackAlerts.modify();
  return ActivityPersistingViewModel.trackAlerts.modify;
}

void *ActivityPersistingViewModel.init(activityType:formattingManager:)(void *a1, void *a2)
{
  v4 = specialized ActivityPersistingViewModel.init(activityType:formattingManager:)(a1, a2);

  return v4;
}

uint64_t _sSasSQRzlE2eeoiySbSayxG_ABtFZ9WorkoutUI21TrainingLoadViewModelV10ChartPointV_Tt1g5(uint64_t a1, uint64_t a2)
{
  View = type metadata accessor for TrainingLoadViewModel.ChartPoint(0);
  v5 = MEMORY[0x28223BE20](View);
  v7 = v27 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v10 = v27 - v9;
  v11 = *(a1 + 16);
  if (v11 != *(a2 + 16))
  {
    return 0;
  }

  if (v11 && a1 != a2)
  {
    v12 = (*(v8 + 80) + 32) & ~*(v8 + 80);
    v13 = a1 + v12;
    v14 = a2 + v12;
    v15 = *(v8 + 72);
    while (1)
    {
      outlined init with copy of AlertConfigurationViewModel.ViewModelContainer(v13, v10, type metadata accessor for TrainingLoadViewModel.ChartPoint);
      outlined init with copy of AlertConfigurationViewModel.ViewModelContainer(v14, v7, type metadata accessor for TrainingLoadViewModel.ChartPoint);
      if ((static Date.== infix(_:_:)() & 1) == 0)
      {
        break;
      }

      type metadata accessor for DayIndex();
      lazy protocol witness table accessor for type ConfigurationType and conformance ConfigurationType(&lazy protocol witness table cache variable for type DayIndex and conformance DayIndex, MEMORY[0x277CCB6A8]);
      dispatch thunk of Strideable.distance(to:)();
      if (v27[1])
      {
        break;
      }

      v16 = *(View + 24);
      v17 = &v10[v16];
      v18 = v10[v16 + 8];
      v19 = &v7[v16];
      v20 = v7[v16 + 8];
      if (v18)
      {
        if (!v20)
        {
          break;
        }
      }

      else
      {
        if (*v17 != *v19)
        {
          LOBYTE(v20) = 1;
        }

        if (v20)
        {
          break;
        }
      }

      if ((static Color.== infix(_:_:)() & 1) == 0)
      {
        break;
      }

      v21 = *(View + 32);
      v22 = &v10[v21];
      v23 = v10[v21 + 8];
      v24 = &v7[v21];
      v25 = v24[8];
      if ((v23 & 1) == 0)
      {
        if (v25)
        {
          break;
        }

        v25 = *v22 == *v24;
      }

      _s9WorkoutUI27AlertConfigurationViewModelC0eF9ContainerOWOhTm_0(v7, type metadata accessor for TrainingLoadViewModel.ChartPoint);
      _s9WorkoutUI27AlertConfigurationViewModelC0eF9ContainerOWOhTm_0(v10, type metadata accessor for TrainingLoadViewModel.ChartPoint);
      if (v25)
      {
        v14 += v15;
        v13 += v15;
        if (--v11)
        {
          continue;
        }
      }

      return v25;
    }

    _s9WorkoutUI27AlertConfigurationViewModelC0eF9ContainerOWOhTm_0(v7, type metadata accessor for TrainingLoadViewModel.ChartPoint);
    _s9WorkoutUI27AlertConfigurationViewModelC0eF9ContainerOWOhTm_0(v10, type metadata accessor for TrainingLoadViewModel.ChartPoint);
    return 0;
  }

  return 1;
}

void _sSasSQRzlE2eeoiySbSayxG_ABtFZ11WorkoutCore18AppleExertionScaleOSg_Tt1g5(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AppleExertionScale();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v28 = &v25 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11WorkoutCore18AppleExertionScaleOSgMd);
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7 - 8);
  v10 = &v25 - v9;
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11WorkoutCore18AppleExertionScaleOSg_ADtMd);
  MEMORY[0x28223BE20](v30);
  v12 = &v25 - v11;
  v13 = *(a1 + 16);
  if (v13 != *(a2 + 16) || !v13 || a1 == a2)
  {
    return;
  }

  v14 = (*(v8 + 80) + 32) & ~*(v8 + 80);
  v15 = a1 + v14;
  v16 = a2 + v14;
  v17 = (v5 + 48);
  v26 = (v5 + 32);
  v27 = (v5 + 8);
  v18 = *(v8 + 72);
  v25 = v18;
  while (1)
  {
    v19 = *(v30 + 48);
    outlined init with copy of AppleExertionScale?(v15, v12);
    outlined init with copy of AppleExertionScale?(v16, &v12[v19]);
    v20 = *v17;
    if ((*v17)(v12, 1, v4) != 1)
    {
      break;
    }

    if (v20(&v12[v19], 1, v4) != 1)
    {
      goto LABEL_14;
    }

    outlined destroy of (AppleExertionScale?, AppleExertionScale?)(v12, &_s11WorkoutCore18AppleExertionScaleOSgMd);
LABEL_5:
    v16 += v18;
    v15 += v18;
    if (!--v13)
    {
      return;
    }
  }

  outlined init with copy of AppleExertionScale?(v12, v10);
  if (v20(&v12[v19], 1, v4) != 1)
  {
    v21 = v10;
    v22 = v28;
    (*v26)(v28, &v12[v19], v4);
    lazy protocol witness table accessor for type ConfigurationType and conformance ConfigurationType(&lazy protocol witness table cache variable for type AppleExertionScale and conformance AppleExertionScale, MEMORY[0x277D7E2A0]);
    v29 = dispatch thunk of static Equatable.== infix(_:_:)();
    v23 = *v27;
    v24 = v22;
    v10 = v21;
    v18 = v25;
    (*v27)(v24, v4);
    v23(v10, v4);
    outlined destroy of (AppleExertionScale?, AppleExertionScale?)(v12, &_s11WorkoutCore18AppleExertionScaleOSgMd);
    if ((v29 & 1) == 0)
    {
      return;
    }

    goto LABEL_5;
  }

  (*v27)(v10, v4);
LABEL_14:
  outlined destroy of (AppleExertionScale?, AppleExertionScale?)(v12, &_s11WorkoutCore18AppleExertionScaleOSg_ADtMd);
}

uint64_t _sSasSQRzlE2eeoiySbSayxG_ABtFZ13HealthBalance28TrainingLoadSampleDaySummaryV_Tt1g5Tm(uint64_t a1, uint64_t a2, uint64_t (*a3)(void), unint64_t *a4, void (*a5)(uint64_t), uint64_t a6)
{
  v32 = a5;
  v33 = a6;
  v31 = a4;
  v8 = a3(0);
  v9 = *(v8 - 8);
  v10 = MEMORY[0x28223BE20](v8);
  v12 = &v28 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v14 = &v28 - v13;
  v15 = *(a1 + 16);
  if (v15 != *(a2 + 16))
  {
    v25 = 0;
    return v25 & 1;
  }

  if (!v15 || a1 == a2)
  {
    v25 = 1;
    return v25 & 1;
  }

  v16 = (*(v9 + 80) + 32) & ~*(v9 + 80);
  v17 = a1 + v16;
  v18 = a2 + v16;
  v20 = *(v9 + 16);
  v19 = v9 + 16;
  v21 = (v19 - 8);
  v29 = *(v19 + 56);
  v30 = v20;
  while (1)
  {
    v22 = v30;
    result = (v30)(v14, v17, v8);
    if (!v15)
    {
      break;
    }

    v24 = v19;
    v22(v12, v18, v8);
    lazy protocol witness table accessor for type ConfigurationType and conformance ConfigurationType(v31, v32);
    v25 = dispatch thunk of static Equatable.== infix(_:_:)();
    v26 = *v21;
    (*v21)(v12, v8);
    v26(v14, v8);
    if (v25)
    {
      v18 += v29;
      v17 += v29;
      v27 = v15-- == 1;
      v19 = v24;
      if (!v27)
      {
        continue;
      }
    }

    return v25 & 1;
  }

  __break(1u);
  return result;
}

uint64_t _sSasSQRzlE2eeoiySbSayxG_ABtFZSo14NLWorkoutAlertC_Tt1g5(unint64_t a1, uint64_t a2)
{
  v3 = a1;
  v4 = a1 >> 62;
  if (a1 >> 62)
  {
    goto LABEL_44;
  }

  v5 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  while (!(a2 >> 62))
  {
    result = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v5 != result)
    {
      goto LABEL_46;
    }

LABEL_5:
    if (!v5)
    {
      goto LABEL_29;
    }

    v7 = v3 & 0xFFFFFFFFFFFFFF8;
    v8 = (v3 & 0xFFFFFFFFFFFFFF8) + 32;
    if (v3 < 0)
    {
      v7 = v3;
    }

    if (v4)
    {
      v8 = v7;
    }

    v9 = a2 & 0xFFFFFFFFFFFFFF8;
    v10 = (a2 & 0xFFFFFFFFFFFFFF8) + 32;
    if (a2 < 0)
    {
      v9 = a2;
    }

    if (a2 >> 62)
    {
      v10 = v9;
    }

    if (v8 == v10)
    {
LABEL_29:
      v18 = 1;
      return v18 & 1;
    }

    if (v5 < 0)
    {
      __break(1u);
      return result;
    }

    v4 = type metadata accessor for NLWorkoutSplitStorage(0, &lazy cache variable for type metadata for NLWorkoutAlert);
    if (((a2 | v3) & 0xC000000000000001) != 0)
    {
      v11 = a2 & 0xC000000000000001;
      v12 = 4;
      while (1)
      {
        v13 = v12 - 4;
        v14 = v12 - 3;
        if (__OFADD__(v12 - 4, 1))
        {
          __break(1u);
LABEL_40:
          __break(1u);
          goto LABEL_41;
        }

        if ((v3 & 0xC000000000000001) != 0)
        {
          v15 = MEMORY[0x20F30C990](v12 - 4, v3);
          if (!v11)
          {
            goto LABEL_24;
          }
        }

        else
        {
          if (v13 >= *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_42;
          }

          v15 = *(v3 + 8 * v12);
          if (!v11)
          {
LABEL_24:
            if (v13 >= *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              goto LABEL_43;
            }

            v16 = *(a2 + 8 * v12);
            goto LABEL_26;
          }
        }

        v16 = MEMORY[0x20F30C990](v12 - 4, a2);
LABEL_26:
        v17 = v16;
        v18 = static NSObject.== infix(_:_:)();

        if (v18)
        {
          ++v12;
          if (v14 != v5)
          {
            continue;
          }
        }

        return v18 & 1;
      }
    }

    v19 = (v3 + 32);
    v20 = (a2 + 32);
    v21 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v22 = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v23 = v5 - 1;
    while (1)
    {
      if (!v21)
      {
        goto LABEL_40;
      }

      if (!v22)
      {
        break;
      }

      v25 = *v19++;
      v24 = v25;
      v26 = *v20++;
      a2 = v24;
      v3 = v26;
      v18 = static NSObject.== infix(_:_:)();

      v28 = v23-- != 0;
      if (v18)
      {
        --v22;
        --v21;
        if (v28)
        {
          continue;
        }
      }

      return v18 & 1;
    }

LABEL_41:
    __break(1u);
LABEL_42:
    __break(1u);
LABEL_43:
    __break(1u);
LABEL_44:
    v5 = __CocoaSet.count.getter();
  }

  result = __CocoaSet.count.getter();
  if (v5 == result)
  {
    goto LABEL_5;
  }

LABEL_46:
  v18 = 0;
  return v18 & 1;
}

uint64_t _sSasSQRzlE2eeoiySbSayxG_ABtFZ9WorkoutUI21TrainingLoadViewModelV_Tt1g5(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for TrainingLoadViewModel(0) - 8;
  v5 = MEMORY[0x28223BE20](v4);
  v7 = &v18 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v10 = &v18 - v9;
  v11 = *(a1 + 16);
  if (v11 == *(a2 + 16))
  {
    if (!v11 || a1 == a2)
    {
      v16 = 1;
    }

    else
    {
      v12 = (*(v8 + 80) + 32) & ~*(v8 + 80);
      v13 = a1 + v12;
      v14 = a2 + v12;
      v15 = *(v8 + 72);
      do
      {
        outlined init with copy of AlertConfigurationViewModel.ViewModelContainer(v13, v10, type metadata accessor for TrainingLoadViewModel);
        outlined init with copy of AlertConfigurationViewModel.ViewModelContainer(v14, v7, type metadata accessor for TrainingLoadViewModel);
        v16 = specialized static TrainingLoadViewModel.== infix(_:_:)(v10, v7);
        _s9WorkoutUI27AlertConfigurationViewModelC0eF9ContainerOWOhTm_0(v7, type metadata accessor for TrainingLoadViewModel);
        _s9WorkoutUI27AlertConfigurationViewModelC0eF9ContainerOWOhTm_0(v10, type metadata accessor for TrainingLoadViewModel);
        if ((v16 & 1) == 0)
        {
          break;
        }

        v14 += v15;
        v13 += v15;
        --v11;
      }

      while (v11);
    }
  }

  else
  {
    v16 = 0;
  }

  return v16 & 1;
}

uint64_t _sSasSQRzlE2eeoiySbSayxG_ABtFZ11WorkoutCore10TargetZoneC_Tt1g5Tm(uint64_t a1, uint64_t a2, void (*a3)(void), unint64_t *a4, void (*a5)(uint64_t))
{
  v7 = a1 >> 62;
  if (a1 >> 62)
  {
    goto LABEL_32;
  }

  v8 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_3:
  if (a2 >> 62)
  {
    v21 = a3;
    result = __CocoaSet.count.getter();
    a3 = v21;
    if (v8 == result)
    {
      goto LABEL_5;
    }

LABEL_34:
    v18 = 0;
    return v18 & 1;
  }

  result = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (v8 != result)
  {
    goto LABEL_34;
  }

LABEL_5:
  if (!v8)
  {
    goto LABEL_28;
  }

  v10 = a1 & 0xFFFFFFFFFFFFFF8;
  v11 = (a1 & 0xFFFFFFFFFFFFFF8) + 32;
  if (a1 < 0)
  {
    v10 = a1;
  }

  if (v7)
  {
    v11 = v10;
  }

  v12 = a2 & 0xFFFFFFFFFFFFFF8;
  v13 = (a2 & 0xFFFFFFFFFFFFFF8) + 32;
  if (a2 < 0)
  {
    v12 = a2;
  }

  if (a2 >> 62)
  {
    v13 = v12;
  }

  if (v11 == v13)
  {
LABEL_28:
    v18 = 1;
    return v18 & 1;
  }

  if ((v8 & 0x8000000000000000) == 0)
  {
    a3(0);
    v14 = a2 & 0xC000000000000001;
    v15 = 4;
    v7 = v8;
    while (1)
    {
      v16 = v15 - 4;
      v17 = v15 - 3;
      if (__OFADD__(v15 - 4, 1))
      {
        __break(1u);
LABEL_30:
        __break(1u);
LABEL_31:
        __break(1u);
LABEL_32:
        v19 = a3;
        v20 = __CocoaSet.count.getter();
        a3 = v19;
        v8 = v20;
        goto LABEL_3;
      }

      if ((a1 & 0xC000000000000001) != 0)
      {
        MEMORY[0x20F30C990](v15 - 4, a1);
        if (v14)
        {
          goto LABEL_20;
        }
      }

      else
      {
        if (v16 >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_30;
        }

        if (v14)
        {
LABEL_20:
          MEMORY[0x20F30C990](v15 - 4, a2);
          goto LABEL_25;
        }
      }

      if (v16 >= *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_31;
      }

LABEL_25:
      lazy protocol witness table accessor for type ConfigurationType and conformance ConfigurationType(a4, a5);
      v18 = dispatch thunk of static Equatable.== infix(_:_:)();

      if (v18)
      {
        ++v15;
        if (v17 != v7)
        {
          continue;
        }
      }

      return v18 & 1;
    }
  }

  __break(1u);
  return result;
}

uint64_t ActivityPersistingViewModel.hash(into:)()
{
  v1 = v0;
  swift_getKeyPath();
  lazy protocol witness table accessor for type ConfigurationType and conformance ConfigurationType(&lazy protocol witness table cache variable for type ActivityPersistingViewModel and conformance ActivityPersistingViewModel, type metadata accessor for ActivityPersistingViewModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  swift_beginAccess();
  v2 = *(v0 + 16);
  if (!(v2 >> 62))
  {
    result = MEMORY[0x20F30CD90](*((v2 & 0xFFFFFFFFFFFFFF8) + 0x10));
    v4 = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v4)
    {
      goto LABEL_3;
    }

LABEL_10:
    swift_getKeyPath();
    ObservationRegistrar.access<A, B>(_:keyPath:)();

    swift_beginAccess();
    v6 = *(v0 + 24);
    NSObject.hash(into:)();

    swift_getKeyPath();
    ObservationRegistrar.access<A, B>(_:keyPath:)();

    swift_beginAccess();
    v7 = v1[4];
    NSObject.hash(into:)();

    swift_getKeyPath();
    ObservationRegistrar.access<A, B>(_:keyPath:)();

    swift_beginAccess();
    v8 = v1[5];
    NSObject.hash(into:)();

    swift_getKeyPath();
    ObservationRegistrar.access<A, B>(_:keyPath:)();

    swift_beginAccess();
    v9 = v1[6];
    NSObject.hash(into:)();

    swift_getKeyPath();
    ObservationRegistrar.access<A, B>(_:keyPath:)();

    swift_beginAccess();
    type metadata accessor for RaceAlerts();
    lazy protocol witness table accessor for type ConfigurationType and conformance ConfigurationType(&lazy protocol witness table cache variable for type RaceAlerts and conformance RaceAlerts, MEMORY[0x277D7DE00]);
    dispatch thunk of Hashable.hash(into:)();
    swift_getKeyPath();
    ObservationRegistrar.access<A, B>(_:keyPath:)();

    swift_beginAccess();
    type metadata accessor for PacerAlerts();
    lazy protocol witness table accessor for type ConfigurationType and conformance ConfigurationType(&lazy protocol witness table cache variable for type PacerAlerts and conformance PacerAlerts, MEMORY[0x277D7DF28]);
    dispatch thunk of Hashable.hash(into:)();
    swift_getKeyPath();
    ObservationRegistrar.access<A, B>(_:keyPath:)();

    swift_beginAccess();
    type metadata accessor for TrackAlerts();
    lazy protocol witness table accessor for type ConfigurationType and conformance ConfigurationType(&lazy protocol witness table cache variable for type TrackAlerts and conformance TrackAlerts, MEMORY[0x277D7DF40]);
    return dispatch thunk of Hashable.hash(into:)();
  }

  v10 = __CocoaSet.count.getter();
  MEMORY[0x20F30CD90](v10);
  result = __CocoaSet.count.getter();
  v4 = result;
  if (!result)
  {
    goto LABEL_10;
  }

LABEL_3:
  if (v4 >= 1)
  {

    v5 = 0;
    do
    {
      if ((v2 & 0xC000000000000001) != 0)
      {
        MEMORY[0x20F30C990](v5, v2);
      }

      else
      {
      }

      ++v5;
      type metadata accessor for TargetZone();
      lazy protocol witness table accessor for type ConfigurationType and conformance ConfigurationType(&lazy protocol witness table cache variable for type TargetZone and conformance TargetZone, MEMORY[0x277D7DF08]);
      dispatch thunk of Hashable.hash(into:)();
    }

    while (v4 != v5);

    goto LABEL_10;
  }

  __break(1u);
  return result;
}

id *ActivityPersistingViewModel.deinit()
{

  v1 = OBJC_IVAR____TtC9WorkoutUI27ActivityPersistingViewModel___observationRegistrar;
  v2 = type metadata accessor for ObservationRegistrar();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  return v0;
}

uint64_t ActivityPersistingViewModel.__deallocating_deinit()
{
  ActivityPersistingViewModel.deinit();

  return swift_deallocClassInstance();
}

uint64_t key path getter for LocalBindingViewModel.targetZones : LocalBindingViewModel@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  lazy protocol witness table accessor for type ConfigurationType and conformance ConfigurationType(&lazy protocol witness table cache variable for type LocalBindingViewModel and conformance LocalBindingViewModel, type metadata accessor for LocalBindingViewModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  swift_beginAccess();
  v4 = v3[3];
  v5 = v3[4];
  *a2 = v3[2];
  a2[1] = v4;
  a2[2] = v5;
}

uint64_t key path setter for LocalBindingViewModel.targetZones : LocalBindingViewModel()
{
  return key path setter for LocalBindingViewModel.targetZones : LocalBindingViewModel();
}

{
  swift_getKeyPath();
  lazy protocol witness table accessor for type ConfigurationType and conformance ConfigurationType(&lazy protocol witness table cache variable for type LocalBindingViewModel and conformance LocalBindingViewModel, type metadata accessor for LocalBindingViewModel);
  ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
}

uint64_t LocalBindingViewModel.targetZones.getter()
{
  swift_getKeyPath();
  lazy protocol witness table accessor for type ConfigurationType and conformance ConfigurationType(&lazy protocol witness table cache variable for type LocalBindingViewModel and conformance LocalBindingViewModel, type metadata accessor for LocalBindingViewModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  swift_beginAccess();
  v1 = *(v0 + 16);

  return v1;
}

uint64_t LocalBindingViewModel.targetZones.setter()
{
  swift_getKeyPath();
  lazy protocol witness table accessor for type ConfigurationType and conformance ConfigurationType(&lazy protocol witness table cache variable for type LocalBindingViewModel and conformance LocalBindingViewModel, type metadata accessor for LocalBindingViewModel);
  ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
}

uint64_t closure #1 in LocalBindingViewModel.targetZones.setter(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  a1[2] = a2;
  a1[3] = a3;
  a1[4] = a4;
}

void (*LocalBindingViewModel.targetZones.modify(uint64_t *a1))(void *a1)
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
  v4[5] = OBJC_IVAR____TtC9WorkoutUI21LocalBindingViewModel___observationRegistrar;
  *v4 = v1;
  v4[6] = lazy protocol witness table accessor for type ConfigurationType and conformance ConfigurationType(&lazy protocol witness table cache variable for type LocalBindingViewModel and conformance LocalBindingViewModel, type metadata accessor for LocalBindingViewModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  *v4 = v1;
  swift_getKeyPath();
  ObservationRegistrar.willSet<A, B>(_:keyPath:)();

  v4[7] = LocalBindingViewModel._targetZones.modify();
  return LocalBindingViewModel.targetZones.modify;
}

id key path getter for LocalBindingViewModel.heartRateTargetZone : LocalBindingViewModel@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  lazy protocol witness table accessor for type ConfigurationType and conformance ConfigurationType(&lazy protocol witness table cache variable for type LocalBindingViewModel and conformance LocalBindingViewModel, type metadata accessor for LocalBindingViewModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  swift_beginAccess();
  v4 = v3[6];
  v6 = v3[7];
  *a2 = v3[5];
  a2[1] = v4;
  a2[2] = v6;

  return v6;
}

uint64_t LocalBindingViewModel.heartRateTargetZone.getter()
{
  swift_getKeyPath();
  v5 = v0;
  lazy protocol witness table accessor for type ConfigurationType and conformance ConfigurationType(&lazy protocol witness table cache variable for type LocalBindingViewModel and conformance LocalBindingViewModel, type metadata accessor for LocalBindingViewModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  swift_beginAccess();
  v1 = *(v0 + 40);
  v2 = *(v5 + 56);

  v3 = v2;
  return v1;
}

uint64_t LocalBindingViewModel.heartRateTargetZone.setter(uint64_t a1, uint64_t a2, void *a3)
{
  return LocalBindingViewModel.heartRateTargetZone.setter(a1, a2, a3);
}

{
  swift_getKeyPath();
  lazy protocol witness table accessor for type ConfigurationType and conformance ConfigurationType(&lazy protocol witness table cache variable for type LocalBindingViewModel and conformance LocalBindingViewModel, type metadata accessor for LocalBindingViewModel);
  ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
}

uint64_t closure #1 in LocalBindingViewModel.heartRateTargetZone.setter(void *a1, uint64_t a2, uint64_t a3, void *a4)
{
  swift_beginAccess();
  v8 = a1[7];
  a1[5] = a2;
  a1[6] = a3;
  a1[7] = a4;

  v9 = a4;
}

void (*LocalBindingViewModel.heartRateTargetZone.modify(uint64_t *a1))(void *a1)
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
  v4[5] = OBJC_IVAR____TtC9WorkoutUI21LocalBindingViewModel___observationRegistrar;
  *v4 = v1;
  v4[6] = lazy protocol witness table accessor for type ConfigurationType and conformance ConfigurationType(&lazy protocol witness table cache variable for type LocalBindingViewModel and conformance LocalBindingViewModel, type metadata accessor for LocalBindingViewModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  *v4 = v1;
  swift_getKeyPath();
  ObservationRegistrar.willSet<A, B>(_:keyPath:)();

  v4[7] = LocalBindingViewModel._heartRateTargetZone.modify();
  return LocalBindingViewModel.heartRateTargetZone.modify;
}

id key path getter for LocalBindingViewModel.powerZonesAlertTargetZone : LocalBindingViewModel@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  lazy protocol witness table accessor for type ConfigurationType and conformance ConfigurationType(&lazy protocol witness table cache variable for type LocalBindingViewModel and conformance LocalBindingViewModel, type metadata accessor for LocalBindingViewModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  swift_beginAccess();
  v4 = v3[9];
  v6 = v3[10];
  *a2 = v3[8];
  a2[1] = v4;
  a2[2] = v6;

  return v6;
}

uint64_t LocalBindingViewModel.powerZonesAlertTargetZone.getter()
{
  swift_getKeyPath();
  v5 = v0;
  lazy protocol witness table accessor for type ConfigurationType and conformance ConfigurationType(&lazy protocol witness table cache variable for type LocalBindingViewModel and conformance LocalBindingViewModel, type metadata accessor for LocalBindingViewModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  swift_beginAccess();
  v1 = *(v0 + 64);
  v2 = *(v5 + 80);

  v3 = v2;
  return v1;
}

uint64_t closure #1 in LocalBindingViewModel.powerZonesAlertTargetZone.setter(void *a1, uint64_t a2, uint64_t a3, void *a4)
{
  swift_beginAccess();
  v8 = a1[10];
  a1[8] = a2;
  a1[9] = a3;
  a1[10] = a4;

  v9 = a4;
}

void (*LocalBindingViewModel.powerZonesAlertTargetZone.modify(uint64_t *a1))(void *a1)
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
  v4[5] = OBJC_IVAR____TtC9WorkoutUI21LocalBindingViewModel___observationRegistrar;
  *v4 = v1;
  v4[6] = lazy protocol witness table accessor for type ConfigurationType and conformance ConfigurationType(&lazy protocol witness table cache variable for type LocalBindingViewModel and conformance LocalBindingViewModel, type metadata accessor for LocalBindingViewModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  *v4 = v1;
  swift_getKeyPath();
  ObservationRegistrar.willSet<A, B>(_:keyPath:)();

  v4[7] = LocalBindingViewModel._powerZonesAlertTargetZone.modify();
  return LocalBindingViewModel.powerZonesAlertTargetZone.modify;
}

void *LocalBindingViewModel.__allocating_init(targetZones:heartRateTargetZone:powerZonesAlertTargetZone:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v17 = swift_allocObject();
  ObservationRegistrar.init()();
  v17[2] = a1;
  v17[3] = a2;
  v17[4] = a3;
  v17[5] = a4;
  v17[6] = a5;
  v17[7] = a6;
  v17[8] = a7;
  v17[9] = a8;
  v17[10] = a9;
  return v17;
}

void *LocalBindingViewModel.init(targetZones:heartRateTargetZone:powerZonesAlertTargetZone:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  ObservationRegistrar.init()();
  v9[2] = a1;
  v9[3] = a2;
  v9[4] = a3;
  v9[5] = a4;
  v9[6] = a5;
  v9[7] = a6;
  v9[8] = a7;
  v9[9] = a8;
  v9[10] = a9;
  return v9;
}

void LocalBindingViewModel.hash(into:)()
{
  v1 = v0;
  swift_getKeyPath();
  v19 = v0;
  lazy protocol witness table accessor for type ConfigurationType and conformance ConfigurationType(&lazy protocol witness table cache variable for type LocalBindingViewModel and conformance LocalBindingViewModel, type metadata accessor for LocalBindingViewModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  swift_beginAccess();
  v17 = *(v0 + 16);
  v18 = *(v0 + 24);
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI7BindingVySay11WorkoutCore10TargetZoneCGGMd);
  MEMORY[0x20F30B100](&v15, v2);
  v3 = v15;
  if (!(v15 >> 62))
  {
    MEMORY[0x20F30CD90](*((v15 & 0xFFFFFFFFFFFFFF8) + 0x10));
    v4 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v4)
    {
      goto LABEL_3;
    }

LABEL_10:

    swift_getKeyPath();
    v17 = v0;
    ObservationRegistrar.access<A, B>(_:keyPath:)();

    swift_beginAccess();
    v15 = *(v0 + 40);
    v16 = *(v0 + 48);
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI7BindingVy11WorkoutCore19HeartRateTargetZoneCGMd);
    MEMORY[0x20F30B100](&v13, v8);
    v9 = v13;
    NSObject.hash(into:)();

    swift_getKeyPath();
    v15 = v1;
    ObservationRegistrar.access<A, B>(_:keyPath:)();

    swift_beginAccess();
    v13 = *(v1 + 64);
    v14 = *(v1 + 72);
    v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI7BindingVy11WorkoutCore25PowerZonesAlertTargetZoneCGMd);
    MEMORY[0x20F30B100](&v12, v10);
    v11 = v12;
    NSObject.hash(into:)();

    return;
  }

  v7 = __CocoaSet.count.getter();
  MEMORY[0x20F30CD90](v7);
  v4 = __CocoaSet.count.getter();
  if (!v4)
  {
    goto LABEL_10;
  }

LABEL_3:
  if (v4 >= 1)
  {
    v5 = 0;
    do
    {
      if ((v3 & 0xC000000000000001) != 0)
      {
        v6 = MEMORY[0x20F30C990](v5, v3);
      }

      else
      {
        v6 = *(v3 + 8 * v5 + 32);
      }

      v13 = v6;
      ++v5;
      type metadata accessor for TargetZone();
      lazy protocol witness table accessor for type ConfigurationType and conformance ConfigurationType(&lazy protocol witness table cache variable for type TargetZone and conformance TargetZone, MEMORY[0x277D7DF08]);
      dispatch thunk of Hashable.hash(into:)();
    }

    while (v4 != v5);
    goto LABEL_10;
  }

  __break(1u);
}

uint64_t LocalBindingViewModel.deinit()
{

  v1 = OBJC_IVAR____TtC9WorkoutUI21LocalBindingViewModel___observationRegistrar;
  v2 = type metadata accessor for ObservationRegistrar();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  return v0;
}

uint64_t LocalBindingViewModel.__deallocating_deinit()
{

  v1 = OBJC_IVAR____TtC9WorkoutUI21LocalBindingViewModel___observationRegistrar;
  v2 = type metadata accessor for ObservationRegistrar();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return swift_deallocClassInstance();
}

Swift::Int AlertConfigurationViewModel.hashValue.getter(void (*a1)(_BYTE *))
{
  Hasher.init(_seed:)();
  a1(v3);
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance AlertConfigurationViewModel(uint64_t a1, uint64_t a2, void (*a3)(_BYTE *))
{
  Hasher.init(_seed:)();
  a3(v5);
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance AlertConfigurationViewModel(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(_BYTE *))
{
  Hasher.init(_seed:)();
  a4(v6);
  return Hasher._finalize()();
}

uint64_t specialized static AlertConfigurationViewModel.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  type metadata accessor for NLWorkoutSplitStorage(0, &lazy cache variable for type metadata for NSObject);
  if ((static NSObject.== infix(_:_:)() & 1) == 0 || (static AlertConfigurationContext.== infix(_:_:)() & 1) == 0)
  {
    return 0;
  }

  v4 = *(a1 + OBJC_IVAR____TtC9WorkoutUI27AlertConfigurationViewModel_workoutConfiguration);
  v5 = *(a2 + OBJC_IVAR____TtC9WorkoutUI27AlertConfigurationViewModel_workoutConfiguration);
  if (v4)
  {
    if (!v5)
    {
      return 0;
    }

    type metadata accessor for WorkoutConfiguration();
    v6 = v5;
    v7 = v4;
    v8 = static NSObject.== infix(_:_:)();

    if ((v8 & 1) == 0)
    {
      return 0;
    }
  }

  else if (v5)
  {
    return 0;
  }

  if (*(a1 + OBJC_IVAR____TtC9WorkoutUI27AlertConfigurationViewModel_activityMoveMode) != *(a2 + OBJC_IVAR____TtC9WorkoutUI27AlertConfigurationViewModel_activityMoveMode) || (static AlertConfigurationSessionContext.== infix(_:_:)() & 1) == 0)
  {
    return 0;
  }

  v9 = a1 + OBJC_IVAR____TtC9WorkoutUI27AlertConfigurationViewModel_container;
  v10 = a2 + OBJC_IVAR____TtC9WorkoutUI27AlertConfigurationViewModel_container;

  return specialized static AlertConfigurationViewModel.ViewModelContainer.== infix(_:_:)(v9, v10);
}

uint64_t specialized static AlertConfigurationViewModel.ViewModelContainer.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ConfigurationType();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v34 = &v34 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v35 = &v34 - v8;
  v9 = type metadata accessor for AlertConfigurationViewModel.ViewModelContainer(0);
  MEMORY[0x28223BE20](v9);
  v11 = (&v34 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v12);
  v14 = (&v34 - v13);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9WorkoutUI27AlertConfigurationViewModelC0eF9ContainerO_AEtMd);
  MEMORY[0x28223BE20](v15 - 8);
  v17 = &v34 - v16;
  v19 = (&v34 + *(v18 + 56) - v16);
  outlined init with copy of AlertConfigurationViewModel.ViewModelContainer(a1, &v34 - v16, type metadata accessor for AlertConfigurationViewModel.ViewModelContainer);
  outlined init with copy of AlertConfigurationViewModel.ViewModelContainer(a2, v19, type metadata accessor for AlertConfigurationViewModel.ViewModelContainer);
  if (swift_getEnumCaseMultiPayload() != 1)
  {
    outlined init with copy of AlertConfigurationViewModel.ViewModelContainer(v17, v14, type metadata accessor for AlertConfigurationViewModel.ViewModelContainer);
    v30 = *v14;
    if (swift_getEnumCaseMultiPayload() != 1)
    {
      v31 = *v19;
      type metadata accessor for ActivityPersistingViewModel(0);
      v29 = specialized static ActivityPersistingViewModel.== infix(_:_:)(v30, v31);

      goto LABEL_7;
    }

    goto LABEL_9;
  }

  outlined init with copy of AlertConfigurationViewModel.ViewModelContainer(v17, v11, type metadata accessor for AlertConfigurationViewModel.ViewModelContainer);
  v20 = *v11;
  v21 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s9WorkoutUI21LocalBindingViewModelC_0A4Core17ConfigurationTypeOtMd) + 48);
  if (swift_getEnumCaseMultiPayload() != 1)
  {
    (*(v5 + 8))(v11 + v21, v4);
LABEL_9:

    outlined destroy of (AppleExertionScale?, AppleExertionScale?)(v17, &_s9WorkoutUI27AlertConfigurationViewModelC0eF9ContainerO_AEtMd);
LABEL_10:
    v29 = 0;
    return v29 & 1;
  }

  v22 = *v19;
  v23 = *(v5 + 32);
  v24 = v11 + v21;
  v25 = v35;
  v23(v35, v24, v4);
  v26 = v19 + v21;
  v27 = v34;
  v23(v34, v26, v4);
  type metadata accessor for LocalBindingViewModel(0);
  if ((specialized static LocalBindingViewModel.== infix(_:_:)(v20, v22) & 1) == 0)
  {

    v33 = *(v5 + 8);
    v33(v27, v4);
    v33(v25, v4);
    _s9WorkoutUI27AlertConfigurationViewModelC0eF9ContainerOWOhTm_0(v17, type metadata accessor for AlertConfigurationViewModel.ViewModelContainer);
    goto LABEL_10;
  }

  lazy protocol witness table accessor for type ConfigurationType and conformance ConfigurationType(&lazy protocol witness table cache variable for type ConfigurationType and conformance ConfigurationType, MEMORY[0x277D7E118]);
  dispatch thunk of RawRepresentable.rawValue.getter();
  dispatch thunk of RawRepresentable.rawValue.getter();

  v28 = *(v5 + 8);
  v28(v27, v4);
  v28(v25, v4);
  v29 = v37 == v36;
LABEL_7:
  _s9WorkoutUI27AlertConfigurationViewModelC0eF9ContainerOWOhTm_0(v17, type metadata accessor for AlertConfigurationViewModel.ViewModelContainer);
  return v29 & 1;
}

uint64_t specialized static ActivityPersistingViewModel.== infix(_:_:)(void *a1, uint64_t a2)
{
  swift_getKeyPath();
  lazy protocol witness table accessor for type ConfigurationType and conformance ConfigurationType(&lazy protocol witness table cache variable for type ActivityPersistingViewModel and conformance ActivityPersistingViewModel, type metadata accessor for ActivityPersistingViewModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  swift_beginAccess();
  v4 = a1[2];
  swift_getKeyPath();

  ObservationRegistrar.access<A, B>(_:keyPath:)();

  swift_beginAccess();
  v5 = *(a2 + 16);

  v6 = _sSasSQRzlE2eeoiySbSayxG_ABtFZ11WorkoutCore10TargetZoneC_Tt1g5Tm(v4, v5, MEMORY[0x277D7DF08], &lazy protocol witness table cache variable for type TargetZone and conformance TargetZone, MEMORY[0x277D7DF08]);

  if (v6 & 1) != 0 && (type metadata accessor for HeartRateTargetZone(), swift_getKeyPath(), ObservationRegistrar.access<A, B>(_:keyPath:)(), , swift_beginAccess(), v7 = a1[3], swift_getKeyPath(), v8 = v7, ObservationRegistrar.access<A, B>(_:keyPath:)(), , swift_beginAccess(), v9 = *(a2 + 24), LOBYTE(v7) = MEMORY[0x20F305B40](v8, v9), v8, v9, (v7) && (type metadata accessor for PowerZonesAlertTargetZone(), swift_getKeyPath(), ObservationRegistrar.access<A, B>(_:keyPath:)(), , swift_beginAccess(), v10 = a1[4], swift_getKeyPath(), v11 = v10, ObservationRegistrar.access<A, B>(_:keyPath:)(), , swift_beginAccess(), v12 = *(a2 + 32), LOBYTE(v10) = static PowerZonesAlertTargetZone.== infix(_:_:)(), v11, v12, (v10) && (type metadata accessor for NLWorkoutSplitStorage(0, &lazy cache variable for type metadata for NSObject), swift_getKeyPath(), ObservationRegistrar.access<A, B>(_:keyPath:)(), , swift_beginAccess(), v13 = a1[5], swift_getKeyPath(), v14 = v13, ObservationRegistrar.access<A, B>(_:keyPath:)(), , swift_beginAccess(), v15 = *(a2 + 40), LOBYTE(v13) = static NSObject.== infix(_:_:)(), v14, v15, (v13) && (swift_getKeyPath(), ObservationRegistrar.access<A, B>(_:keyPath:)(), , swift_beginAccess(), v16 = a1[6], swift_getKeyPath(), v17 = v16, ObservationRegistrar.access<A, B>(_:keyPath:)(), , swift_beginAccess(), v18 = *(a2 + 48), LOBYTE(v16) = static NSObject.== infix(_:_:)(), v17, v18, (v16) && (type metadata accessor for RaceAlerts(), swift_getKeyPath(), ObservationRegistrar.access<A, B>(_:keyPath:)(), , swift_beginAccess(), swift_getKeyPath(), , ObservationRegistrar.access<A, B>(_:keyPath:)(), , swift_beginAccess(), , v19 = static RaceAlerts.== infix(_:_:)(), , , (v19) && (type metadata accessor for PacerAlerts(), swift_getKeyPath(), ObservationRegistrar.access<A, B>(_:keyPath:)(), , swift_beginAccess(), swift_getKeyPath(), , ObservationRegistrar.access<A, B>(_:keyPath:)(), , swift_beginAccess(), , v20 = static PacerAlerts.== infix(_:_:)(), , , (v20))
  {
    type metadata accessor for TrackAlerts();
    swift_getKeyPath();
    ObservationRegistrar.access<A, B>(_:keyPath:)();

    swift_beginAccess();
    swift_getKeyPath();

    ObservationRegistrar.access<A, B>(_:keyPath:)();

    swift_beginAccess();

    v21 = static TrackAlerts.== infix(_:_:)();
  }

  else
  {
    v21 = 0;
  }

  return v21 & 1;
}

uint64_t specialized static LocalBindingViewModel.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  swift_getKeyPath();
  v29 = a1;
  lazy protocol witness table accessor for type ConfigurationType and conformance ConfigurationType(&lazy protocol witness table cache variable for type LocalBindingViewModel and conformance LocalBindingViewModel, type metadata accessor for LocalBindingViewModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  swift_beginAccess();
  v27 = *(a1 + 16);
  v28 = *(a1 + 24);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI7BindingVySay11WorkoutCore10TargetZoneCGGMd);
  MEMORY[0x20F30B100](v23);
  v5 = v23[0];
  swift_getKeyPath();
  v26 = a2;
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  swift_beginAccess();
  v24 = *(a2 + 16);
  v25 = *(a2 + 24);
  MEMORY[0x20F30B100](&v21, v4);
  v6 = _sSasSQRzlE2eeoiySbSayxG_ABtFZ11WorkoutCore10TargetZoneC_Tt1g5Tm(v5, v21, MEMORY[0x277D7DF08], &lazy protocol witness table cache variable for type TargetZone and conformance TargetZone, MEMORY[0x277D7DF08]);

  if (v6 & 1) != 0 && (type metadata accessor for HeartRateTargetZone(), swift_getKeyPath(), v27 = a1, ObservationRegistrar.access<A, B>(_:keyPath:)(), , swift_beginAccess(), v24 = *(a1 + 40), v25 = *(a1 + 48), v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI7BindingVy11WorkoutCore19HeartRateTargetZoneCGMd), MEMORY[0x20F30B100](&v19), v8 = v19, swift_getKeyPath(), v23[0] = a2, ObservationRegistrar.access<A, B>(_:keyPath:)(), , swift_beginAccess(), v21 = *(a2 + 40), v22 = *(a2 + 48), MEMORY[0x20F30B100](&v17, v7), v9 = v17, v10 = MEMORY[0x20F305B40](v8, v17), v9, v8, (v10))
  {
    type metadata accessor for PowerZonesAlertTargetZone();
    swift_getKeyPath();
    v24 = a1;
    ObservationRegistrar.access<A, B>(_:keyPath:)();

    swift_beginAccess();
    v21 = *(a1 + 64);
    v22 = *(a1 + 72);
    v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI7BindingVy11WorkoutCore25PowerZonesAlertTargetZoneCGMd);
    MEMORY[0x20F30B100](&v20);
    v12 = v20;
    swift_getKeyPath();
    v19 = a2;
    ObservationRegistrar.access<A, B>(_:keyPath:)();

    swift_beginAccess();
    v17 = *(a2 + 64);
    v18 = *(a2 + 72);
    MEMORY[0x20F30B100](&v16, v11);
    v13 = v16;
    v14 = static PowerZonesAlertTargetZone.== infix(_:_:)();
  }

  else
  {
    v14 = 0;
  }

  return v14 & 1;
}

uint64_t outlined init with take of AlertConfigurationViewModel.ViewModelContainer(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AlertConfigurationViewModel.ViewModelContainer(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}