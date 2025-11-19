void closure #1 in closure #1 in closure #1 in closure #1 in closure #1 in closure #1 in EffortZoneView.body.getter(uint64_t *a1@<X0>, uint64_t a2@<X8>, double a3@<D0>, double a4@<D1>, double a5@<D2>)
{
  v9 = *a1;
  v10 = a1[1];
  v11 = EffortGraphLayout.horizontalUnitDistance(level:)(*a1);
  *&v19 = a3;
  *(&v19 + 1) = a4;
  *&v20 = a5;
  v12 = EffortGraphLayout.horizontalUnitDistance(level:)(v10);
  if (__OFSUB__(v10, v9))
  {
    __break(1u);
  }

  else if (!__OFADD__(v10 - v9, 1))
  {
    v13 = (a3 + a5 * -3.0) / 10.0;
    v14 = v13 * 0.5;
    v15 = v13 / a4;
    v16 = 1.0 - v13 / a4;
    v17 = v13 / a4 + v16 * v12;
    v18 = v15 + v16 * v11;
    static Alignment.center.getter();
    _FrameLayout.init(width:height:alignment:)();
    *a2 = v18;
    *(a2 + 8) = v17;
    *(a2 + 16) = v14;
    *(a2 + 24) = v19;
    *(a2 + 40) = v20;
    *(a2 + 56) = v21;
    return;
  }

  __break(1u);
}

void closure #1 in closure #2 in closure #1 in closure #1 in closure #1 in EffortZoneView.body.getter(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>, double a4@<D0>, double a5@<D1>, double a6@<D2>)
{
  v12 = type metadata accessor for EffortZoneView();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v12 - 8);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyACyAA6HStackVyAA7ForEachVySNySiGSiACyAEyACyACyAA6CircleVAA12_FrameLayoutVGAA14_OpacityEffectVGGALGGGALGAA08_PaddingJ0VGMd);
  MEMORY[0x28223BE20](v15);
  MEMORY[0x28223BE20](v16);
  v20 = &v38 - v19;
  v21 = a1[1];
  v22 = v21 - *a1;
  if (__OFSUB__(v21, *a1))
  {
    __break(1u);
    goto LABEL_6;
  }

  if (__OFADD__(v22, 1))
  {
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  v38 = v18;
  v39 = v17;
  v23 = a2;
  *a3 = static HorizontalAlignment.center.getter();
  *(a3 + 8) = 0;
  *(a3 + 16) = 1;
  v24 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI13_VariadicViewO4TreeVy_AA13_VStackLayoutVAA05TupleD0VyAA6SpacerV_AA15ModifiedContentVyAMyAA6HStackVyAA7ForEachVySNySiGSiAMyAOyAMyAMyAA6CircleVAA06_FrameG0VGAA14_OpacityEffectVGGAVGGGAVGAA08_PaddingG0VGtGGMd) + 44);
  *v20 = static VerticalAlignment.bottom.getter();
  *(v20 + 1) = 0;
  v20[16] = 0;
  if ((v22 & 0x8000000000000000) == 0)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI13_VariadicViewO4TreeVy_AA13_HStackLayoutVAA7ForEachVySNySiGSiAA15ModifiedContentVyAA0F0VyALyALyAA6CircleVAA06_FrameG0VGAA14_OpacityEffectVGGARGGGMd);
    v25 = a3 + v24;
    *&v40 = 0;
    *(&v40 + 1) = v22;
    swift_getKeyPath();
    outlined init with copy of EffortZoneView(v23, &v38 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
    v26 = (*(v13 + 80) + 16) & ~*(v13 + 80);
    v27 = swift_allocObject();
    outlined init with take of EffortZoneView(&v38 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0), v27 + v26);
    v28 = (v27 + ((v14 + v26 + 7) & 0xFFFFFFFFFFFFFFF8));
    *v28 = a4;
    v28[1] = a5;
    v28[2] = a6;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSNySiGMd);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyAA6HStackVyACyACyAA6CircleVAA12_FrameLayoutVGAA14_OpacityEffectVGGAIGMd);
    lazy protocol witness table accessor for type ClosedRange<Int> and conformance <> ClosedRange<A>();
    lazy protocol witness table accessor for type ModifiedContent<HStack<ModifiedContent<ModifiedContent<Circle, _FrameLayout>, _OpacityEffect>>, _FrameLayout> and conformance <> ModifiedContent<A, B>();
    ForEach<>.init(_:id:content:)();
    static Alignment.center.getter();
    _FrameLayout.init(width:height:alignment:)();
    v29 = &v20[*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyAA6HStackVyAA7ForEachVySNySiGSiACyAEyACyACyAA6CircleVAA12_FrameLayoutVGAA14_OpacityEffectVGGALGGGALGMd) + 36)];
    v30 = v41;
    *v29 = v40;
    *(v29 + 1) = v30;
    *(v29 + 2) = v42;
    LOBYTE(v27) = static Edge.Set.bottom.getter();
    EdgeInsets.init(_all:)();
    v31 = v38;
    v32 = &v20[*(v39 + 36)];
    *v32 = v27;
    *(v32 + 1) = v33;
    *(v32 + 2) = v34;
    *(v32 + 3) = v35;
    *(v32 + 4) = v36;
    v32[40] = 0;
    outlined init with copy of Environment<LayoutDirection>.Content(v20, v31, &_s7SwiftUI15ModifiedContentVyACyAA6HStackVyAA7ForEachVySNySiGSiACyAEyACyACyAA6CircleVAA12_FrameLayoutVGAA14_OpacityEffectVGGALGGGALGAA08_PaddingJ0VGMd);
    *v25 = 0;
    *(v25 + 8) = 1;
    v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI6SpacerV_AA15ModifiedContentVyAEyAA6HStackVyAA7ForEachVySNySiGSiAEyAGyAEyAEyAA6CircleVAA12_FrameLayoutVGAA14_OpacityEffectVGGANGGGANGAA08_PaddingK0VGtMd);
    outlined init with copy of Environment<LayoutDirection>.Content(v31, v25 + *(v37 + 48), &_s7SwiftUI15ModifiedContentVyACyAA6HStackVyAA7ForEachVySNySiGSiACyAEyACyACyAA6CircleVAA12_FrameLayoutVGAA14_OpacityEffectVGGALGGGALGAA08_PaddingJ0VGMd);
    outlined destroy of ModifiedContent<ZStack<Group<TupleView<(ModifiedContent<EffortButtonBackground, _MaskAlignmentEffect<HStack<ForEach<[ClosedRange<Int>], ClosedRange<Int>, ModifiedContent<RightTrapezoid, _FrameLayout>>>>>, HStack<ForEach<[ClosedRange<Int>], ClosedRange<Int>, VStack<TupleView<(Spacer, ModifiedContent<ModifiedContent<HStack<ForEach<ClosedRange<Int>, Int, ModifiedContent<HStack<ModifiedContent<ModifiedContent<Circle, _FrameLayout>, _OpacityEffect>>, _FrameLayout>>>, _FrameLayout>, _PaddingLayout>)>>>>)>>>, _OverlayModifier<GeometryReader<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Capsule, _ForegroundStyleModifier<Color>>, _FrameLayout>, _PositionLayout>, _ShadowEffect>>?>>(v20, &_s7SwiftUI15ModifiedContentVyACyAA6HStackVyAA7ForEachVySNySiGSiACyAEyACyACyAA6CircleVAA12_FrameLayoutVGAA14_OpacityEffectVGGALGGGALGAA08_PaddingJ0VGMd);
    outlined destroy of ModifiedContent<ZStack<Group<TupleView<(ModifiedContent<EffortButtonBackground, _MaskAlignmentEffect<HStack<ForEach<[ClosedRange<Int>], ClosedRange<Int>, ModifiedContent<RightTrapezoid, _FrameLayout>>>>>, HStack<ForEach<[ClosedRange<Int>], ClosedRange<Int>, VStack<TupleView<(Spacer, ModifiedContent<ModifiedContent<HStack<ForEach<ClosedRange<Int>, Int, ModifiedContent<HStack<ModifiedContent<ModifiedContent<Circle, _FrameLayout>, _OpacityEffect>>, _FrameLayout>>>, _FrameLayout>, _PaddingLayout>)>>>>)>>>, _OverlayModifier<GeometryReader<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Capsule, _ForegroundStyleModifier<Color>>, _FrameLayout>, _PositionLayout>, _ShadowEffect>>?>>(v31, &_s7SwiftUI15ModifiedContentVyACyAA6HStackVyAA7ForEachVySNySiGSiACyAEyACyACyAA6CircleVAA12_FrameLayoutVGAA14_OpacityEffectVGGALGGGALGAA08_PaddingJ0VGMd);
    return;
  }

LABEL_7:
  __break(1u);
}

double closure #1 in closure #1 in closure #1 in closure #1 in closure #2 in closure #1 in closure #1 in closure #1 in EffortZoneView.body.getter@<D0>(uint64_t a1@<X8>)
{
  v2 = static VerticalAlignment.center.getter();
  static Alignment.center.getter();
  _FrameLayout.init(width:height:alignment:)();
  static Alignment.center.getter();
  _FrameLayout.init(width:height:alignment:)();
  *a1 = v2;
  *(a1 + 8) = 0;
  *(a1 + 16) = 1;
  *(a1 + 24) = v4;
  *(a1 + 32) = v5;
  *(a1 + 40) = v6;
  *(a1 + 48) = v7;
  *(a1 + 56) = v8;
  *(a1 + 64) = v9;
  *(a1 + 72) = 0x3FD6666666666666;
  *(a1 + 80) = v10;
  *(a1 + 96) = v11;
  result = *&v12;
  *(a1 + 112) = v12;
  return result;
}

void *closure #1 in closure #2 in closure #1 in EffortZoneView.body.getter@<X0>(uint64_t a1@<X1>, uint64_t a2@<X8>, double a3@<D0>, double a4@<D1>, double a5@<D2>)
{
  v10 = *(a1 + 96);
  LOBYTE(v33) = *(a1 + 88);
  *(&v33 + 1) = v10;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI5StateVySbGMd);
  State.wrappedValue.getter();
  v11 = 1.0;
  if (LOBYTE(v32))
  {
    goto LABEL_5;
  }

  v12 = *(a1 + 48);
  v13 = *(a1 + 56);
  *&v33 = *(a1 + 40);
  *(&v33 + 1) = v12;
  *&v34 = v13;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI7BindingVySdGMd);
  result = MEMORY[0x20F30B100](&v32, v14);
  v11 = round(v32);
  if ((*&v11 & 0x7FFFFFFFFFFFFFFFuLL) <= 0x7FEFFFFFFFFFFFFFLL)
  {
    if (v11 <= -9.22337204e18)
    {
      __break(1u);
    }

    else if (v11 < 9.22337204e18)
    {
LABEL_5:
      v16 = v11;
      v17 = (a3 + a5 * -3.0) / 10.0;
      *&v33 = a3;
      *(&v33 + 1) = a4;
      *&v34 = a5;
      v18 = v17 / a4 + (1.0 - v17 / a4) * EffortGraphLayout.horizontalUnitDistance(level:)(v11);
      GeometryProxy.size.getter();
      v20 = v18 * v19;
      *&v33 = a3;
      *(&v33 + 1) = a4;
      *&v34 = a5;
      v21 = EffortGraphLayout.xStartForLevel(_:)(v16);
      v22 = *MEMORY[0x277CE0118];
      v23 = type metadata accessor for RoundedCornerStyle();
      (*(*(v23 - 8) + 104))(a2, v22, v23);
      v24 = static Color.white.getter();
      *(a2 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyAA7CapsuleVAA24_ForegroundStyleModifierVyAA5ColorVGGMd) + 36)) = v24;
      static Alignment.center.getter();
      _FrameLayout.init(width:height:alignment:)();
      v25 = (a2 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyACyAA7CapsuleVAA24_ForegroundStyleModifierVyAA5ColorVGGAA12_FrameLayoutVGMd) + 36));
      v26 = v34;
      *v25 = v33;
      v25[1] = v26;
      v25[2] = v35;
      GeometryProxy.size.getter();
      v28 = v27 - v20 * 0.5;
      v29 = (a2 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyACyACyAA7CapsuleVAA24_ForegroundStyleModifierVyAA5ColorVGGAA12_FrameLayoutVGAA09_PositionK0VGMd) + 36));
      *v29 = v17 * 0.5 + v21;
      v29[1] = v28;
      v30 = Color.opacity(_:)();
      result = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyACyACyACyAA7CapsuleVAA24_ForegroundStyleModifierVyAA5ColorVGGAA12_FrameLayoutVGAA09_PositionK0VGAA13_ShadowEffectVGMd);
      v31 = a2 + *(result + 9);
      *v31 = v30;
      *(v31 + 8) = xmmword_20CB7E4D0;
      *(v31 + 24) = 0x4000000000000000;
      return result;
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

void closure #3 in closure #1 in EffortZoneView.body.getter(uint64_t a1, uint64_t a2, uint64_t a3, double a4, double a5, double a6)
{
  v56 = a3;
  v63 = a1;
  v55 = type metadata accessor for EnvironmentValues();
  v9 = *(v55 - 8);
  MEMORY[0x28223BE20](v55);
  v54 = &v50 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v62 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI11EnvironmentV7ContentOyAA15LayoutDirectionO_GMd);
  MEMORY[0x28223BE20](v62);
  v12 = &v50 - v11;
  v13 = type metadata accessor for LayoutDirection();
  v14 = *(v13 - 8);
  MEMORY[0x28223BE20](v13);
  v16 = &v50 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v19 = &v50 - v18;
  v64 = a2;
  v20 = *(a2 + 32);
  v21 = *(v20 + 16);
  if (v21)
  {
    v22 = 0;
    v23 = (v20 + 32);
    v24 = *(v20 + 16);
    while (1)
    {
      v25 = *v23++;
      v26 = __OFADD__(v22, v25);
      v22 += v25;
      if (v26)
      {
        break;
      }

      if (!--v24)
      {
        v27 = v22;
        goto LABEL_7;
      }
    }

    __break(1u);
    goto LABEL_35;
  }

  v27 = 0.0;
LABEL_7:
  v66 = v27;
  v28 = v64[3];
  if ((*&v28 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    goto LABEL_36;
  }

  if (v28 <= -9.22337204e18)
  {
LABEL_37:
    __break(1u);
    goto LABEL_38;
  }

  if (v28 >= 9.22337204e18)
  {
LABEL_38:
    __break(1u);
    goto LABEL_39;
  }

  v29 = 0;
  if (v21)
  {
    v30 = (v20 + 32);
    while (1)
    {
      v31 = *v30++;
      v26 = __OFADD__(v29, v31);
      v29 += v31;
      if (v26)
      {
        break;
      }

      if (!--v21)
      {
        goto LABEL_14;
      }
    }

LABEL_35:
    __break(1u);
LABEL_36:
    __break(1u);
    goto LABEL_37;
  }

LABEL_14:
  v32 = v28;
  if (v29 < v28)
  {
LABEL_39:
    __break(1u);
    return;
  }

  v61 = v19;
  v33 = (a4 + a6 * -3.0) / 10.0;
  v60 = *(type metadata accessor for EffortZoneView() + 52);
  v52 = (v9 + 8);
  v51 = (v14 + 32);
  v59 = *MEMORY[0x277CDFA88];
  v57 = (v14 + 8);
  v58 = (v14 + 104);
  v53 = v16;
  while (1)
  {
    v34 = 3.0;
    if ((v32 - 1) <= 7)
    {
      v34 = dbl_20CB7E670[v32 - 1];
    }

    outlined init with copy of Environment<LayoutDirection>.Content(v64 + v60, v12, &_s7SwiftUI11EnvironmentV7ContentOyAA15LayoutDirectionO_GMd);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      v35 = v61;
      (*v51)(v61, v12, v13);
    }

    else
    {
      static os_log_type_t.fault.getter();
      v36 = static Log.runtimeIssuesLog.getter();
      os_log(_:dso:log:_:_:)();

      v16 = v53;
      v37 = v54;
      EnvironmentValues.init()();
      v35 = v61;
      swift_getAtKeyPath();

      (*v52)(v37, v55);
    }

    (*v58)(v16, v59, v13);
    v38 = static LayoutDirection.== infix(_:_:)();
    v39 = *v57;
    (*v57)(v16, v13);
    v39(v35, v13);
    if (v38)
    {
      DragGesture.Value.location.getter();
    }

    else
    {
      GeometryProxy.size.getter();
      v42 = v41;
      DragGesture.Value.location.getter();
      v40 = v42 - v43;
    }

    v44 = v32;
    if (v40 <= v33 + v33 * (v32 + -1.0) + v34 * a6)
    {
      goto LABEL_29;
    }

    v45 = v32;
    if (v32 == v29)
    {
      break;
    }

    ++v32;
    if (__OFADD__(v45, 1))
    {
      __break(1u);
LABEL_29:
      v66 = v44;
      goto LABEL_31;
    }
  }

  v44 = v27;
LABEL_31:
  v46 = v64[6];
  v47 = v64[7];
  v65[1] = v64[5];
  v65[2] = v46;
  v65[3] = v47;
  v48 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI7BindingVySdGMd);
  v49 = MEMORY[0x20F30B100](v65, v48);
  if (v44 != v65[0])
  {
    MEMORY[0x28223BE20](v49);
    *(&v50 - 2) = v64;
    *(&v50 - 1) = &v66;
    static Animation.default.getter();
    withAnimation<A>(_:_:)();
  }
}

uint64_t closure #1 in closure #3 in closure #1 in EffortZoneView.body.getter()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI7BindingVySdGMd);
  Binding.wrappedValue.setter();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI7BindingVySbGMd);
  return Binding.wrappedValue.setter();
}

void *closure #4 in closure #1 in EffortZoneView.body.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v41 = a2;
  v3 = type metadata accessor for EffortZoneView();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v6 = &v39 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v9 = &v39 - v8;
  v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI7StepperVyAA4TextVGMd);
  v10 = *(v40 - 8);
  MEMORY[0x28223BE20](v40);
  v12 = &v39 - v11;
  if (one-time initialization token for WorkoutUIBundle != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v13 = WorkoutUIBundle.super.isa;
  v45._object = 0xE000000000000000;
  v14._countAndFlagsBits = 0x415F54524F464645;
  v14._object = 0xEF454C5449545F58;
  v15.value._countAndFlagsBits = 0x617A696C61636F4CLL;
  v15.value._object = 0xEB00000000656C62;
  v16._countAndFlagsBits = 0;
  v16._object = 0xE000000000000000;
  v45._countAndFlagsBits = 0;
  v17 = NSLocalizedString(_:tableName:bundle:value:comment:)(v14, v15, v13, v16, v45);

  v43 = v17;
  outlined init with copy of EffortZoneView(a1, v9);
  v18 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v19 = swift_allocObject();
  outlined init with take of EffortZoneView(v9, v19 + v18);
  outlined init with copy of EffortZoneView(a1, v6);
  v20 = swift_allocObject();
  outlined init with take of EffortZoneView(v6, v20 + v18);
  lazy protocol witness table accessor for type String and conformance String();
  Stepper<>.init<A>(_:onIncrement:onDecrement:onEditingChanged:)();
  v21 = *(a1 + 40);
  v22 = *(a1 + 48);
  v23 = *(a1 + 56);
  v43._countAndFlagsBits = v21;
  v43._object = v22;
  v44 = v23;
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI7BindingVySdGMd);
  MEMORY[0x20F30B100](&v42);
  if (v42 == 0.0 || (v25 = *(a1 + 72), v26 = *(a1 + 80), v43._countAndFlagsBits = *(a1 + 64), v43._object = v25, LOBYTE(v44) = v26, v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI7BindingVySbGMd), MEMORY[0x20F30B100](&v42, v27), LOBYTE(v42) == 1))
  {
    v28 = WorkoutUIBundle.super.isa;
    v46._object = 0xE000000000000000;
    v29._countAndFlagsBits = 0x41565F4F4E5F5841;
    v29._object = 0xEB0000000045554CLL;
    v30.value._countAndFlagsBits = 0x617A696C61636F4CLL;
    v30.value._object = 0xEB00000000656C62;
    v31._countAndFlagsBits = 0;
    v31._object = 0xE000000000000000;
    v46._countAndFlagsBits = 0;
    v32 = NSLocalizedString(_:tableName:bundle:value:comment:)(v29, v30, v28, v31, v46);
    countAndFlagsBits = v32._countAndFlagsBits;
    object = v32._object;

LABEL_6:
    v43._countAndFlagsBits = countAndFlagsBits;
    v43._object = object;
    lazy protocol witness table accessor for type ZStack<Group<TupleView<(ModifiedContent<EffortButtonBackground, _MaskAlignmentEffect<HStack<ForEach<[ClosedRange<Int>], ClosedRange<Int>, ModifiedContent<RightTrapezoid, _FrameLayout>>>>>, HStack<ForEach<[ClosedRange<Int>], ClosedRange<Int>, VStack<TupleView<(Spacer, ModifiedContent<ModifiedContent<HStack<ForEach<ClosedRange<Int>, Int, ModifiedContent<HStack<ModifiedContent<ModifiedContent<Circle, _FrameLayout>, _OpacityEffect>>, _FrameLayout>>>, _FrameLayout>, _PaddingLayout>)>>>>)>>> and conformance ZStack<A>(&lazy protocol witness table cache variable for type Stepper<Text> and conformance Stepper<A>, &_s7SwiftUI7StepperVyAA4TextVGMd);
    v35 = v40;
    View.accessibilityValue<A>(_:)();

    return (*(v10 + 8))(v12, v35);
  }

  v43._countAndFlagsBits = v21;
  v43._object = v22;
  v44 = v23;
  result = MEMORY[0x20F30B100](&v42, v24);
  v37 = round(v42);
  if ((*&v37 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_12;
  }

  if (v37 <= -9.22337204e18)
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  if (v37 < 9.22337204e18)
  {
    v43._countAndFlagsBits = v37;
    countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
    object = v38;
    goto LABEL_6;
  }

LABEL_13:
  __break(1u);
  return result;
}

void *closure #1 in closure #4 in closure #1 in EffortZoneView.body.getter(void *a1)
{
  v2 = a1[5];
  v3 = a1[6];
  v4 = a1[7];
  v15 = v2;
  v16 = v3;
  v17 = v4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI7BindingVySdGMd);
  result = MEMORY[0x20F30B100](&v14);
  v6 = a1[4];
  v7 = *(v6 + 16);
  if (v7)
  {
    v8 = 0;
    v9 = (v6 + 32);
    while (1)
    {
      v10 = *v9++;
      v11 = __OFADD__(v8, v10);
      v8 += v10;
      if (v11)
      {
        break;
      }

      if (!--v7)
      {
        v12 = v8;
        goto LABEL_7;
      }
    }

    __break(1u);
  }

  else
  {
    v12 = 0.0;
LABEL_7:
    v13 = v14 + 1.0;
    v15 = v2;
    v16 = v3;
    if (v14 + 1.0 > v12)
    {
      v13 = v12;
    }

    v17 = v4;
    v14 = v13;
    return Binding.wrappedValue.setter();
  }

  return result;
}

uint64_t closure #2 in closure #4 in closure #1 in EffortZoneView.body.getter(uint64_t a1)
{
  v2 = *(a1 + 40);
  v3 = *(a1 + 48);
  v4 = *(a1 + 56);
  v8 = v2;
  v9 = v3;
  v10 = v4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI7BindingVySdGMd);
  MEMORY[0x20F30B100](&v7);
  v5 = v7 + -1.0;
  if (v7 + -1.0 <= *(a1 + 24))
  {
    v5 = *(a1 + 24);
  }

  v8 = v2;
  v9 = v3;
  v10 = v4;
  v7 = v5;
  return Binding.wrappedValue.setter();
}

uint64_t closure #5 in closure #1 in EffortZoneView.body.getter(uint64_t result)
{
  if (*(result + 81) == 1)
  {
    MEMORY[0x28223BE20](result);
    static Animation.default.getter();
    withAnimation<A>(_:_:)();
  }

  return result;
}

uint64_t protocol witness for View.body.getter in conformance EffortZoneView@<X0>(uint64_t a1@<X0>, uint64_t (**a2)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)@<X8>)
{
  v4 = *(a1 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](a1 - 8);
  outlined init with copy of EffortZoneView(v2, &v9 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v6 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v7 = swift_allocObject();
  result = outlined init with take of EffortZoneView(&v9 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), v7 + v6);
  *a2 = partial apply for closure #1 in EffortZoneView.body.getter;
  a2[1] = v7;
  return result;
}

uint64_t outlined init with copy of EffortZoneView(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for EffortZoneView();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t outlined init with take of EffortZoneView(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for EffortZoneView();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t partial apply for closure #1 in EffortZoneView.body.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *(type metadata accessor for EffortZoneView() - 8);
  v6 = (v2 + ((*(v5 + 80) + 16) & ~*(v5 + 80)));

  return closure #1 in EffortZoneView.body.getter(a1, v6, a2);
}

void partial apply for closure #3 in closure #1 in EffortZoneView.body.getter(uint64_t a1)
{
  v3 = *(type metadata accessor for EffortZoneView() - 8);
  v4 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v5 = (*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = *(type metadata accessor for GeometryProxy() - 8);
  v7 = *(v1 + v5);
  v8 = *(v1 + v5 + 8);
  v9 = *(v1 + v5 + 16);
  v10 = v1 + ((v5 + *(v6 + 80) + 24) & ~*(v6 + 80));

  closure #3 in closure #1 in EffortZoneView.body.getter(a1, v1 + v4, v10, v7, v8, v9);
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<ZStack<Group<TupleView<(ModifiedContent<EffortButtonBackground, _MaskAlignmentEffect<HStack<ForEach<[ClosedRange<Int>], ClosedRange<Int>, ModifiedContent<RightTrapezoid, _FrameLayout>>>>>, HStack<ForEach<[ClosedRange<Int>], ClosedRange<Int>, VStack<TupleView<(Spacer, ModifiedContent<ModifiedContent<HStack<ForEach<ClosedRange<Int>, Int, ModifiedContent<HStack<ModifiedContent<ModifiedContent<Circle, _FrameLayout>, _OpacityEffect>>, _FrameLayout>>>, _FrameLayout>, _PaddingLayout>)>>>>)>>>, _OverlayModifier<GeometryReader<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Capsule, _ForegroundStyleModifier<Color>>, _FrameLayout>, _PositionLayout>, _ShadowEffect>>?>> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<ZStack<Group<TupleView<(ModifiedContent<EffortButtonBackground, _MaskAlignmentEffect<HStack<ForEach<[ClosedRange<Int>], ClosedRange<Int>, ModifiedContent<RightTrapezoid, _FrameLayout>>>>>, HStack<ForEach<[ClosedRange<Int>], ClosedRange<Int>, VStack<TupleView<(Spacer, ModifiedContent<ModifiedContent<HStack<ForEach<ClosedRange<Int>, Int, ModifiedContent<HStack<ModifiedContent<ModifiedContent<Circle, _FrameLayout>, _OpacityEffect>>, _FrameLayout>>>, _FrameLayout>, _PaddingLayout>)>>>>)>>>, _OverlayModifier<GeometryReader<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Capsule, _ForegroundStyleModifier<Color>>, _FrameLayout>, _PositionLayout>, _ShadowEffect>>?>> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<ZStack<Group<TupleView<(ModifiedContent<EffortButtonBackground, _MaskAlignmentEffect<HStack<ForEach<[ClosedRange<Int>], ClosedRange<Int>, ModifiedContent<RightTrapezoid, _FrameLayout>>>>>, HStack<ForEach<[ClosedRange<Int>], ClosedRange<Int>, VStack<TupleView<(Spacer, ModifiedContent<ModifiedContent<HStack<ForEach<ClosedRange<Int>, Int, ModifiedContent<HStack<ModifiedContent<ModifiedContent<Circle, _FrameLayout>, _OpacityEffect>>, _FrameLayout>>>, _FrameLayout>, _PaddingLayout>)>>>>)>>>, _OverlayModifier<GeometryReader<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Capsule, _ForegroundStyleModifier<Color>>, _FrameLayout>, _PositionLayout>, _ShadowEffect>>?>> and conformance <> ModifiedContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyAA6ZStackVyAA5GroupVyAA9TupleViewVyACy07WorkoutB022EffortButtonBackgroundVAA20_MaskAlignmentEffectVyAA6HStackVyAA7ForEachVySaySNySiGGAsCyAJ14RightTrapezoidVAA12_FrameLayoutVGGGGG_APyARyAtsA6VStackVyAIyAA6SpacerV_ACyACyAPyARyASSiACyAPyACyACyAA6CircleVAXGAA08_OpacityO0VGGAXGGGAXGAA08_PaddingV0VGtGGGGtGGGAA16_OverlayModifierVyAA14GeometryReaderVyACyACyACyACyAA7CapsuleVAA24_ForegroundStyleModifierVyAA5ColorVGGAXGAA09_PositionV0VGAA07_ShadowO0VGGSgGGMd);
    lazy protocol witness table accessor for type ZStack<Group<TupleView<(ModifiedContent<EffortButtonBackground, _MaskAlignmentEffect<HStack<ForEach<[ClosedRange<Int>], ClosedRange<Int>, ModifiedContent<RightTrapezoid, _FrameLayout>>>>>, HStack<ForEach<[ClosedRange<Int>], ClosedRange<Int>, VStack<TupleView<(Spacer, ModifiedContent<ModifiedContent<HStack<ForEach<ClosedRange<Int>, Int, ModifiedContent<HStack<ModifiedContent<ModifiedContent<Circle, _FrameLayout>, _OpacityEffect>>, _FrameLayout>>>, _FrameLayout>, _PaddingLayout>)>>>>)>>> and conformance ZStack<A>(&lazy protocol witness table cache variable for type ZStack<Group<TupleView<(ModifiedContent<EffortButtonBackground, _MaskAlignmentEffect<HStack<ForEach<[ClosedRange<Int>], ClosedRange<Int>, ModifiedContent<RightTrapezoid, _FrameLayout>>>>>, HStack<ForEach<[ClosedRange<Int>], ClosedRange<Int>, VStack<TupleView<(Spacer, ModifiedContent<ModifiedContent<HStack<ForEach<ClosedRange<Int>, Int, ModifiedContent<HStack<ModifiedContent<ModifiedContent<Circle, _FrameLayout>, _OpacityEffect>>, _FrameLayout>>>, _FrameLayout>, _PaddingLayout>)>>>>)>>> and conformance ZStack<A>, &_s7SwiftUI6ZStackVyAA5GroupVyAA9TupleViewVyAA15ModifiedContentVy07WorkoutB022EffortButtonBackgroundVAA20_MaskAlignmentEffectVyAA6HStackVyAA7ForEachVySaySNySiGGAsIyAJ14RightTrapezoidVAA12_FrameLayoutVGGGGG_APyARyAtsA6VStackVyAGyAA6SpacerV_AIyAIyAPyARyASSiAIyAPyAIyAIyAA6CircleVAXGAA08_OpacityO0VGGAXGGGAXGAA08_PaddingV0VGtGGGGtGGGMd);
    lazy protocol witness table accessor for type ZStack<Group<TupleView<(ModifiedContent<EffortButtonBackground, _MaskAlignmentEffect<HStack<ForEach<[ClosedRange<Int>], ClosedRange<Int>, ModifiedContent<RightTrapezoid, _FrameLayout>>>>>, HStack<ForEach<[ClosedRange<Int>], ClosedRange<Int>, VStack<TupleView<(Spacer, ModifiedContent<ModifiedContent<HStack<ForEach<ClosedRange<Int>, Int, ModifiedContent<HStack<ModifiedContent<ModifiedContent<Circle, _FrameLayout>, _OpacityEffect>>, _FrameLayout>>>, _FrameLayout>, _PaddingLayout>)>>>>)>>> and conformance ZStack<A>(&lazy protocol witness table cache variable for type _OverlayModifier<GeometryReader<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Capsule, _ForegroundStyleModifier<Color>>, _FrameLayout>, _PositionLayout>, _ShadowEffect>>?> and conformance _OverlayModifier<A>, &_s7SwiftUI16_OverlayModifierVyAA14GeometryReaderVyAA15ModifiedContentVyAGyAGyAGyAA7CapsuleVAA016_ForegroundStyleD0VyAA5ColorVGGAA12_FrameLayoutVGAA09_PositionN0VGAA13_ShadowEffectVGGSgGMd);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<ZStack<Group<TupleView<(ModifiedContent<EffortButtonBackground, _MaskAlignmentEffect<HStack<ForEach<[ClosedRange<Int>], ClosedRange<Int>, ModifiedContent<RightTrapezoid, _FrameLayout>>>>>, HStack<ForEach<[ClosedRange<Int>], ClosedRange<Int>, VStack<TupleView<(Spacer, ModifiedContent<ModifiedContent<HStack<ForEach<ClosedRange<Int>, Int, ModifiedContent<HStack<ModifiedContent<ModifiedContent<Circle, _FrameLayout>, _OpacityEffect>>, _FrameLayout>>>, _FrameLayout>, _PaddingLayout>)>>>>)>>>, _OverlayModifier<GeometryReader<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Capsule, _ForegroundStyleModifier<Color>>, _FrameLayout>, _PositionLayout>, _ShadowEffect>>?>> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<Stepper<Text>, AccessibilityAttachmentModifier> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<Stepper<Text>, AccessibilityAttachmentModifier> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<Stepper<Text>, AccessibilityAttachmentModifier> and conformance <> ModifiedContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyAA7StepperVyAA4TextVGAA31AccessibilityAttachmentModifierVGMd);
    lazy protocol witness table accessor for type ZStack<Group<TupleView<(ModifiedContent<EffortButtonBackground, _MaskAlignmentEffect<HStack<ForEach<[ClosedRange<Int>], ClosedRange<Int>, ModifiedContent<RightTrapezoid, _FrameLayout>>>>>, HStack<ForEach<[ClosedRange<Int>], ClosedRange<Int>, VStack<TupleView<(Spacer, ModifiedContent<ModifiedContent<HStack<ForEach<ClosedRange<Int>, Int, ModifiedContent<HStack<ModifiedContent<ModifiedContent<Circle, _FrameLayout>, _OpacityEffect>>, _FrameLayout>>>, _FrameLayout>, _PaddingLayout>)>>>>)>>> and conformance ZStack<A>(&lazy protocol witness table cache variable for type Stepper<Text> and conformance Stepper<A>, &_s7SwiftUI7StepperVyAA4TextVGMd);
    _s7SwiftUI11DragGestureVAcA0D0AAWlTm_0(&lazy protocol witness table cache variable for type AccessibilityAttachmentModifier and conformance AccessibilityAttachmentModifier, MEMORY[0x277CDE470]);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<Stepper<Text>, AccessibilityAttachmentModifier> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

uint64_t _s7SwiftUI11DragGestureVAcA0D0AAWlTm_0(unint64_t *a1, void (*a2)(uint64_t))
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

void *partial apply for closure #1 in closure #2 in closure #1 in EffortZoneView.body.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for EffortZoneView() - 8);
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1 + ((*(v3 + 80) + 40) & ~*(v3 + 80));

  return closure #1 in closure #2 in closure #1 in EffortZoneView.body.getter(v7, a1, v4, v5, v6);
}

uint64_t objectdestroyTm_62()
{
  v1 = (type metadata accessor for EffortZoneView() - 8);
  v2 = v0 + ((*(*v1 + 80) + 16) & ~*(*v1 + 80));

  v3 = v1[15];
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI11EnvironmentV7ContentOyAA15LayoutDirectionO_GMd);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v4 = type metadata accessor for LayoutDirection();
    (*(*(v4 - 8) + 8))(v2 + v3, v4);
  }

  else
  {
  }

  return swift_deallocObject();
}

uint64_t partial apply for closure #5 in closure #1 in EffortZoneView.body.getter(uint64_t (*a1)(uint64_t))
{
  v2 = *(type metadata accessor for EffortZoneView() - 8);
  v3 = v1 + ((*(v2 + 80) + 16) & ~*(v2 + 80));

  return a1(v3);
}

unint64_t lazy protocol witness table accessor for type ClosedRange<Int> and conformance <> ClosedRange<A>()
{
  result = lazy protocol witness table cache variable for type ClosedRange<Int> and conformance <> ClosedRange<A>;
  if (!lazy protocol witness table cache variable for type ClosedRange<Int> and conformance <> ClosedRange<A>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_sSNySiGMd);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ClosedRange<Int> and conformance <> ClosedRange<A>);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type ClosedRange<Int> and conformance <> ClosedRange<A>;
  if (!lazy protocol witness table cache variable for type ClosedRange<Int> and conformance <> ClosedRange<A>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_sSNySiGMd);
    lazy protocol witness table accessor for type Int and conformance Int();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ClosedRange<Int> and conformance <> ClosedRange<A>);
  }

  return result;
}

uint64_t objectdestroy_11Tm_1()
{
  v1 = (type metadata accessor for EffortZoneView() - 8);
  v2 = v0 + ((*(*v1 + 80) + 40) & ~*(*v1 + 80));

  v3 = v1[15];
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI11EnvironmentV7ContentOyAA15LayoutDirectionO_GMd);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v4 = type metadata accessor for LayoutDirection();
    (*(*(v4 - 8) + 8))(v2 + v3, v4);
  }

  else
  {
  }

  return swift_deallocObject();
}

void partial apply for closure #1 in closure #2 in closure #1 in closure #1 in closure #1 in EffortZoneView.body.getter(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *(type metadata accessor for EffortZoneView() - 8);
  v6 = v2[2];
  v7 = v2[3];
  v8 = v2[4];
  v9 = v2 + ((*(v5 + 80) + 40) & ~*(v5 + 80));

  closure #1 in closure #2 in closure #1 in closure #1 in closure #1 in EffortZoneView.body.getter(a1, v9, a2, v6, v7, v8);
}

double partial apply for closure #1 in closure #1 in closure #1 in closure #1 in closure #2 in closure #1 in closure #1 in closure #1 in EffortZoneView.body.getter@<D0>(uint64_t a1@<X8>)
{
  type metadata accessor for EffortZoneView();

  return closure #1 in closure #1 in closure #1 in closure #1 in closure #2 in closure #1 in closure #1 in closure #1 in EffortZoneView.body.getter(a1);
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<HStack<ModifiedContent<ModifiedContent<Circle, _FrameLayout>, _OpacityEffect>>, _FrameLayout> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<HStack<ModifiedContent<ModifiedContent<Circle, _FrameLayout>, _OpacityEffect>>, _FrameLayout> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<HStack<ModifiedContent<ModifiedContent<Circle, _FrameLayout>, _OpacityEffect>>, _FrameLayout> and conformance <> ModifiedContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyAA6HStackVyACyACyAA6CircleVAA12_FrameLayoutVGAA14_OpacityEffectVGGAIGMd);
    lazy protocol witness table accessor for type ZStack<Group<TupleView<(ModifiedContent<EffortButtonBackground, _MaskAlignmentEffect<HStack<ForEach<[ClosedRange<Int>], ClosedRange<Int>, ModifiedContent<RightTrapezoid, _FrameLayout>>>>>, HStack<ForEach<[ClosedRange<Int>], ClosedRange<Int>, VStack<TupleView<(Spacer, ModifiedContent<ModifiedContent<HStack<ForEach<ClosedRange<Int>, Int, ModifiedContent<HStack<ModifiedContent<ModifiedContent<Circle, _FrameLayout>, _OpacityEffect>>, _FrameLayout>>>, _FrameLayout>, _PaddingLayout>)>>>>)>>> and conformance ZStack<A>(&lazy protocol witness table cache variable for type HStack<ModifiedContent<ModifiedContent<Circle, _FrameLayout>, _OpacityEffect>> and conformance HStack<A>, &_s7SwiftUI6HStackVyAA15ModifiedContentVyAEyAA6CircleVAA12_FrameLayoutVGAA14_OpacityEffectVGGMd);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<HStack<ModifiedContent<ModifiedContent<Circle, _FrameLayout>, _OpacityEffect>>, _FrameLayout> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

uint64_t outlined init with copy of Environment<LayoutDirection>.Content(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(a3);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t outlined destroy of ModifiedContent<ZStack<Group<TupleView<(ModifiedContent<EffortButtonBackground, _MaskAlignmentEffect<HStack<ForEach<[ClosedRange<Int>], ClosedRange<Int>, ModifiedContent<RightTrapezoid, _FrameLayout>>>>>, HStack<ForEach<[ClosedRange<Int>], ClosedRange<Int>, VStack<TupleView<(Spacer, ModifiedContent<ModifiedContent<HStack<ForEach<ClosedRange<Int>, Int, ModifiedContent<HStack<ModifiedContent<ModifiedContent<Circle, _FrameLayout>, _OpacityEffect>>, _FrameLayout>>>, _FrameLayout>, _PaddingLayout>)>>>>)>>>, _OverlayModifier<GeometryReader<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Capsule, _ForegroundStyleModifier<Color>>, _FrameLayout>, _PositionLayout>, _ShadowEffect>>?>>(uint64_t a1, uint64_t *a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(a2);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t lazy protocol witness table accessor for type ZStack<Group<TupleView<(ModifiedContent<EffortButtonBackground, _MaskAlignmentEffect<HStack<ForEach<[ClosedRange<Int>], ClosedRange<Int>, ModifiedContent<RightTrapezoid, _FrameLayout>>>>>, HStack<ForEach<[ClosedRange<Int>], ClosedRange<Int>, VStack<TupleView<(Spacer, ModifiedContent<ModifiedContent<HStack<ForEach<ClosedRange<Int>, Int, ModifiedContent<HStack<ModifiedContent<ModifiedContent<Circle, _FrameLayout>, _OpacityEffect>>, _FrameLayout>>>, _FrameLayout>, _PaddingLayout>)>>>>)>>> and conformance ZStack<A>(unint64_t *a1, uint64_t *a2)
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

uint64_t type metadata accessor for TrainingLoadSmoothedLineTrace()
{
  result = type metadata singleton initialization cache for TrainingLoadSmoothedLineTrace;
  if (!type metadata singleton initialization cache for TrainingLoadSmoothedLineTrace)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void type metadata completion function for TrainingLoadSmoothedLineTrace()
{
  type metadata accessor for [TrainingLoadViewModel.ChartPoint]();
  if (v0 <= 0x3F)
  {
    type metadata accessor for TrainingLoadViewModel.ChartPoint(319);
    if (v1 <= 0x3F)
    {
      type metadata accessor for Image?();
      if (v2 <= 0x3F)
      {
        type metadata accessor for NSDateFormatter();
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void type metadata accessor for [TrainingLoadViewModel.ChartPoint]()
{
  if (!lazy cache variable for type metadata for [TrainingLoadViewModel.ChartPoint])
  {
    type metadata accessor for TrainingLoadViewModel.ChartPoint(255);
    v0 = type metadata accessor for Array();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for [TrainingLoadViewModel.ChartPoint]);
    }
  }
}

void type metadata accessor for Image?()
{
  if (!lazy cache variable for type metadata for Image?)
  {
    v0 = type metadata accessor for Optional();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for Image?);
    }
  }
}

unint64_t type metadata accessor for NSDateFormatter()
{
  result = lazy cache variable for type metadata for NSDateFormatter;
  if (!lazy cache variable for type metadata for NSDateFormatter)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &lazy cache variable for type metadata for NSDateFormatter);
  }

  return result;
}

uint64_t one-time initialization function for inactiveColor()
{
  static Color.white.getter();
  v0 = Color.opacity(_:)();

  static TrainingLoadSmoothedLineTrace.inactiveColor = v0;
  return result;
}

uint64_t TrainingLoadSmoothedLineTrace.body.getter@<X0>(uint64_t a1@<X8>)
{
  v56 = a1;
  SmoothedLineTrace = type metadata accessor for TrainingLoadSmoothedLineTrace();
  v3 = SmoothedLineTrace - 8;
  v4 = *(SmoothedLineTrace - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](SmoothedLineTrace);
  v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI7ForEachVySnySiGSi6Charts12ChartContentPAEE6symbolAHQrqd__yXE_tAA4ViewRd__lFQOyAgEE7opacityyQrSdFQOyAgEE18accessibilityValueyQrqd__SyRd__lFQOyAgEE0K5LabelyQrqd__SyRd__lFQOyAgEE0K6HiddenyQrSbFQOyAE8LineMarkV_Qo__SSQo__SSQo__Qo__AA6ZStackVyAA012_ConditionalG0VyAA08ModifiedG0VyAYyAYyAA06_ShapeI0VyAA6CircleVAA5ColorVGAA12_FrameLayoutVGAA16_OverlayModifierVyA7_GGAA13_ShadowEffectVGAA05TupleI0VyAYyAYyA4_AA16_BlendModeEffectVGA6_G_AYyA7_AA14_OpacityEffectVGtGGSgGQo_GMd);
  v47 = *(v45 - 8);
  MEMORY[0x28223BE20](v45);
  v46 = v41 - v6;
  v54 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s6Charts12ChartContentPAAE9lineStyleyQr7SwiftUI06StrokeE0VFQOyAE7ForEachVySnySiGSiAcAE6symbolAKQrqd__yXE_tAE4ViewRd__lFQOyAcAE7opacityyQrSdFQOyAcAE18accessibilityValueyQrqd__SyRd__lFQOyAcAE0N5LabelyQrqd__SyRd__lFQOyAcAE0N6HiddenyQrSbFQOyAA8LineMarkV_Qo__SSQo__SSQo__Qo__AE6ZStackVyAE012_ConditionalC0VyAE08ModifiedC0VyA0_yA0_yAE06_ShapeL0VyAE6CircleVAE5ColorVGAE12_FrameLayoutVGAE16_OverlayModifierVyA10_GGAE13_ShadowEffectVGAE05TupleL0VyA0_yA0_yA7_AE16_BlendModeEffectVGA9_G_A0_yA10_AE14_OpacityEffectVGtGGSgGQo_G_Qo_Md);
  v50 = *(v54 - 8);
  MEMORY[0x28223BE20](v54);
  v42 = v41 - v7;
  v55 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s6Charts12ChartContentPAAE15foregroundStyleyQrqd__7SwiftUI05ShapeE0Rd__lFQOyAcAE04lineE0yQrAE06StrokeE0VFQOyAE7ForEachVySnySiGSiAcAE6symbolAMQrqd__yXE_tAE4ViewRd__lFQOyAcAE7opacityyQrSdFQOyAcAE18accessibilityValueyQrqd__SyRd__lFQOyAcAE0P5LabelyQrqd__SyRd__lFQOyAcAE0P6HiddenyQrSbFQOyAA8LineMarkV_Qo__SSQo__SSQo__Qo__AE6ZStackVyAE012_ConditionalC0VyAE08ModifiedC0VyA2_yA2_yAE01_hN0VyAE6CircleVAE5ColorVGAE12_FrameLayoutVGAE16_OverlayModifierVyA12_GGAE13_ShadowEffectVGAE05TupleN0VyA2_yA2_yA9_AE16_BlendModeEffectVGA11_G_A2_yA12_AE14_OpacityEffectVGtGGSgGQo_G_Qo__AE03AnyhE0VQo_Md);
  v52 = *(v55 - 8);
  MEMORY[0x28223BE20](v55);
  v49 = v41 - v8;
  v53 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s6Charts12ChartContentPAAE19interpolationMethodyQrAA013InterpolationE0VFQOyAcAE15foregroundStyleyQrqd__7SwiftUI05ShapeH0Rd__lFQOyAcAE04lineH0yQrAH06StrokeH0VFQOyAH7ForEachVySnySiGSiAcAE6symbolAPQrqd__yXE_tAH4ViewRd__lFQOyAcAE7opacityyQrSdFQOyAcAE18accessibilityValueyQrqd__SyRd__lFQOyAcAE0S5LabelyQrqd__SyRd__lFQOyAcAE0S6HiddenyQrSbFQOyAA8LineMarkV_Qo__SSQo__SSQo__Qo__AH6ZStackVyAH012_ConditionalC0VyAH08ModifiedC0VyA5_yA5_yAH01_kQ0VyAH6CircleVAH5ColorVGAH12_FrameLayoutVGAH16_OverlayModifierVyA15_GGAH13_ShadowEffectVGAH05TupleQ0VyA5_yA5_yA12_AH16_BlendModeEffectVGA14_G_A5_yA15_AH14_OpacityEffectVGtGGSgGQo_G_Qo__AH03AnykH0VQo__Qo_Md);
  v51 = *(v53 - 8);
  MEMORY[0x28223BE20](v53);
  v48 = v41 - v9;
  v44 = v1;
  v10 = *(*v1 + 16);
  v62[0] = 0;
  v62[1] = v10;
  KeyPath = swift_getKeyPath();
  outlined init with copy of TrainingLoadSmoothedLineTrace(v1, v41 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for TrainingLoadSmoothedLineTrace);
  v11 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v12 = swift_allocObject();
  outlined init with take of TrainingLoadSmoothedLineTrace(v41 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), v12 + v11, type metadata accessor for TrainingLoadSmoothedLineTrace);
  v41[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSnySiGMd);
  v41[2] = __swift_instantiateConcreteTypeFromMangledNameV2(&_s6Charts12ChartContentPAAE6symbolADQrqd__yXE_t7SwiftUI4ViewRd__lFQOyAcAE7opacityyQrSdFQOyAcAE18accessibilityValueyQrqd__SyRd__lFQOyAcAE0I5LabelyQrqd__SyRd__lFQOyAcAE0I6HiddenyQrSbFQOyAA8LineMarkV_Qo__SSQo__SSQo__Qo__AE6ZStackVyAE012_ConditionalC0VyAE08ModifiedC0VyAVyAVyAE06_ShapeG0VyAE6CircleVAE5ColorVGAE12_FrameLayoutVGAE16_OverlayModifierVyA4_GGAE13_ShadowEffectVGAE05TupleG0VyAVyAVyA1_AE010_BlendModeZ0VGA3_G_AVyA4_AE08_OpacityZ0VGtGGSgGQo_Md);
  v41[1] = lazy protocol witness table accessor for type Range<Int> and conformance <> Range<A>();
  v13 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s6Charts12ChartContentPAAE7opacityyQrSdFQOyAcAE18accessibilityValueyQrqd__SyRd__lFQOyAcAE0E5LabelyQrqd__SyRd__lFQOyAcAE0E6HiddenyQrSbFQOyAA8LineMarkV_Qo__SSQo__SSQo__Qo_Md);
  v14 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI6ZStackVyAA19_ConditionalContentVyAA08ModifiedE0VyAGyAGyAA10_ShapeViewVyAA6CircleVAA5ColorVGAA12_FrameLayoutVGAA16_OverlayModifierVyAQGGAA13_ShadowEffectVGAA05TupleH0VyAGyAGyAnA010_BlendModeP0VGAPG_AGyAqA08_OpacityP0VGtGGSgGMd);
  v15 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s6Charts12ChartContentPAAE18accessibilityValueyQrqd__SyRd__lFQOyAcAE0D5LabelyQrqd__SyRd__lFQOyAcAE0D6HiddenyQrSbFQOyAA8LineMarkV_Qo__SSQo__SSQo_Md);
  v16 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s6Charts12ChartContentPAAE18accessibilityLabelyQrqd__SyRd__lFQOyAcAE0D6HiddenyQrSbFQOyAA8LineMarkV_Qo__SSQo_Md);
  v17 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s6Charts12ChartContentPAAE19accessibilityHiddenyQrSbFQOyAA8LineMarkV_Qo_Md);
  v57 = type metadata accessor for LineMark();
  v58 = MEMORY[0x277CBB438];
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v19 = lazy protocol witness table accessor for type String and conformance String();
  v20 = MEMORY[0x277D837D0];
  v57 = v17;
  v58 = MEMORY[0x277D837D0];
  v59 = OpaqueTypeConformance2;
  v60 = v19;
  v21 = v42;
  v22 = swift_getOpaqueTypeConformance2();
  v57 = v16;
  v58 = v20;
  v59 = v22;
  v60 = v19;
  v23 = swift_getOpaqueTypeConformance2();
  v57 = v15;
  v58 = v23;
  v24 = swift_getOpaqueTypeConformance2();
  v25 = lazy protocol witness table accessor for type ZStack<_ConditionalContent<ModifiedContent<ModifiedContent<ModifiedContent<_ShapeView<Circle, Color>, _FrameLayout>, _OverlayModifier<ModifiedContent<_ShapeView<Circle, Color>, _FrameLayout>>>, _ShadowEffect>, TupleView<(ModifiedContent<ModifiedContent<_ShapeView<Circle, Color>, _BlendModeEffect>, _FrameLayout>, ModifiedContent<ModifiedContent<_ShapeView<Circle, Color>, _FrameLayout>, _OpacityEffect>)>>?> and conformance ZStack<A>(&lazy protocol witness table cache variable for type ZStack<_ConditionalContent<ModifiedContent<ModifiedContent<ModifiedContent<_ShapeView<Circle, Color>, _FrameLayout>, _OverlayModifier<ModifiedContent<_ShapeView<Circle, Color>, _FrameLayout>>>, _ShadowEffect>, TupleView<(ModifiedContent<ModifiedContent<_ShapeView<Circle, Color>, _BlendModeEffect>, _FrameLayout>, ModifiedContent<ModifiedContent<_ShapeView<Circle, Color>, _FrameLayout>, _OpacityEffect>)>>?> and conformance ZStack<A>, &_s7SwiftUI6ZStackVyAA19_ConditionalContentVyAA08ModifiedE0VyAGyAGyAA10_ShapeViewVyAA6CircleVAA5ColorVGAA12_FrameLayoutVGAA16_OverlayModifierVyAQGGAA13_ShadowEffectVGAA05TupleH0VyAGyAGyAnA010_BlendModeP0VGAPG_AGyAqA08_OpacityP0VGtGGSgGMd);
  v57 = v13;
  v58 = v14;
  v59 = v24;
  v60 = v25;
  v26 = v45;
  swift_getOpaqueTypeConformance2();
  v27 = v46;
  ForEach<>.init(_:id:content:)();
  v28 = v44;
  StrokeStyle.init(lineWidth:lineCap:lineJoin:miterLimit:dash:dashPhase:)();
  v29 = lazy protocol witness table accessor for type ForEach<Range<Int>, Int, <<opaque return type of ChartContent.symbol<A>(symbol:)>>.0> and conformance <> ForEach<A, B, C>();
  ChartContent.lineStyle(_:)();
  outlined destroy of StrokeStyle(v62);
  (*(v47 + 8))(v27, v26);
  if (*(v28 + *(v3 + 44)))
  {
    swift_retain_n();
    ImagePaint.init(image:sourceRect:scale:)();
    v30 = AnyShapeStyle.init<A>(_:)();
  }

  else
  {
    if (one-time initialization token for inactiveColor != -1)
    {
      swift_once();
    }

    v57 = static TrainingLoadSmoothedLineTrace.inactiveColor;

    v30 = AnyShapeStyle.init<A>(_:)();
  }

  v61 = v30;
  v57 = v26;
  v58 = v29;
  v31 = swift_getOpaqueTypeConformance2();
  v32 = MEMORY[0x277CDF6A8];
  v33 = MEMORY[0x277CDF6A0];
  v34 = v49;
  v35 = v54;
  ChartContent.foregroundStyle<A>(_:)();

  (*(v50 + 8))(v21, v35);
  v57 = v35;
  v58 = v32;
  v59 = v31;
  v60 = v33;
  v36 = swift_getOpaqueTypeConformance2();
  v37 = v48;
  v38 = v55;
  ChartContent.interpolationMethod(_:)();
  (*(v52 + 8))(v34, v38);
  v57 = v38;
  v58 = v36;
  swift_getOpaqueTypeConformance2();
  v39 = v53;
  ChartContent.alignsMarkStylesWithPlotArea(_:)();
  return (*(v51 + 8))(v37, v39);
}

void closure #1 in TrainingLoadSmoothedLineTrace.body.getter(unint64_t *a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X8>)
{
  v94 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9WorkoutUI21TrainingLoadViewModelV10ChartPointVSg_AFtMd);
  MEMORY[0x28223BE20](v94);
  v97 = &v78 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9WorkoutUI21TrainingLoadViewModelV10ChartPointVSgMd);
  MEMORY[0x28223BE20](v7 - 8);
  v80 = &v78 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v95 = &v78 - v10;
  MEMORY[0x28223BE20](v11);
  v96 = &v78 - v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s6Charts14PlottableValueVySdGMd);
  MEMORY[0x28223BE20](v13 - 8);
  v93 = &v78 - v14;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s6Charts14PlottableValueVy10Foundation4DateVGMd);
  MEMORY[0x28223BE20](v15 - 8);
  v92 = &v78 - v16;
  v91 = type metadata accessor for LineMark();
  v90 = *(v91 - 8);
  MEMORY[0x28223BE20](v91);
  v105 = &v78 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v101 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s6Charts12ChartContentPAAE19accessibilityHiddenyQrSbFQOyAA8LineMarkV_Qo_Md);
  v99 = *(v101 - 8);
  MEMORY[0x28223BE20](v101);
  v98 = &v78 - v18;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s6Charts12ChartContentPAAE18accessibilityLabelyQrqd__SyRd__lFQOyAcAE0D6HiddenyQrSbFQOyAA8LineMarkV_Qo__SSQo_Md);
  v102 = *(v19 - 8);
  MEMORY[0x28223BE20](v19);
  v100 = &v78 - v20;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s6Charts12ChartContentPAAE18accessibilityValueyQrqd__SyRd__lFQOyAcAE0D5LabelyQrqd__SyRd__lFQOyAcAE0D6HiddenyQrSbFQOyAA8LineMarkV_Qo__SSQo__SSQo_Md);
  v104 = *(v21 - 8);
  MEMORY[0x28223BE20](v21);
  v103 = &v78 - v22;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s6Charts12ChartContentPAAE7opacityyQrSdFQOyAcAE18accessibilityValueyQrqd__SyRd__lFQOyAcAE0E5LabelyQrqd__SyRd__lFQOyAcAE0E6HiddenyQrSbFQOyAA8LineMarkV_Qo__SSQo__SSQo__Qo_Md);
  v24 = *(v23 - 8);
  MEMORY[0x28223BE20](v23);
  v26 = &v78 - v25;
  View = type metadata accessor for TrainingLoadViewModel.ChartPoint(0);
  v28 = *(View - 8);
  MEMORY[0x28223BE20](View);
  MEMORY[0x28223BE20](v29);
  v106 = &v78 - v31;
  v32 = *a1;
  if ((*a1 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else
  {
    v89 = v19;
    v33 = *a2;
    if (v32 < *(*a2 + 16))
    {
      v79 = v30;
      v83 = v21;
      v84 = v26;
      v85 = v24;
      v86 = v23;
      v87 = a2;
      v88 = a3;
      v34 = v33 + ((*(v28 + 80) + 32) & ~*(v28 + 80));
      v35 = *(v28 + 72);
      v82 = v32;
      v81 = v34;
      v36 = v106;
      outlined init with copy of TrainingLoadSmoothedLineTrace(v34 + v35 * v32, v106, type metadata accessor for TrainingLoadViewModel.ChartPoint);
      LocalizedStringKey.init(stringLiteral:)();
      type metadata accessor for Date();
      static PlottableValue.value(_:_:)();

      LocalizedStringKey.init(stringLiteral:)();
      v37 = v36 + *(View + 24);
      v38 = *v37;
      if (*(v37 + 8))
      {
        v38 = 0.0;
      }

      v107 = v38;
      static PlottableValue.value(_:_:)();

      LineMark.init<A, B>(x:y:)();
      if (*(v33 + 16))
      {
        v39 = v96;
        outlined init with copy of TrainingLoadSmoothedLineTrace(v81, v96, type metadata accessor for TrainingLoadViewModel.ChartPoint);
        v40 = 0;
      }

      else
      {
        v40 = 1;
        v39 = v96;
      }

      v41 = v97;
      v42 = v95;
      v43 = *(v28 + 56);
      v43(v39, v40, 1, View);
      outlined init with copy of TrainingLoadSmoothedLineTrace(v106, v42, type metadata accessor for TrainingLoadViewModel.ChartPoint);
      v43(v42, 0, 1, View);
      v44 = *(v94 + 48);
      outlined init with copy of TrainingLoadViewModel.ChartPoint?(v39, v41, &_s9WorkoutUI21TrainingLoadViewModelV10ChartPointVSgMd);
      outlined init with copy of TrainingLoadViewModel.ChartPoint?(v42, v41 + v44, &_s9WorkoutUI21TrainingLoadViewModelV10ChartPointVSgMd);
      v45 = *(v28 + 48);
      v46 = v45(v41, 1, View);
      v47 = v87;
      if (v46 == 1)
      {
        outlined destroy of TrainingLoadViewModel.ChartPoint?(v42, &_s9WorkoutUI21TrainingLoadViewModelV10ChartPointVSgMd);
        outlined destroy of TrainingLoadViewModel.ChartPoint?(v39, &_s9WorkoutUI21TrainingLoadViewModelV10ChartPointVSgMd);
        v48 = v45(v41 + v44, 1, View);
        v49 = v91;
        v50 = v90;
        if (v48 == 1)
        {
          outlined destroy of TrainingLoadViewModel.ChartPoint?(v41, &_s9WorkoutUI21TrainingLoadViewModelV10ChartPointVSgMd);
LABEL_16:
          type metadata accessor for TrainingLoadSmoothedLineTrace();
LABEL_17:
          v54 = MEMORY[0x277CBB438];
          v55 = v98;
          v56 = v105;
          ChartContent.accessibilityHidden(_:)();
          (*(v50 + 8))(v56, v49);
          v57 = *(v47 + *(type metadata accessor for TrainingLoadSmoothedLineTrace() + 60));
          isa = Date._bridgeToObjectiveC()().super.isa;
          v59 = [v57 stringFromDate_];

          *&v60 = COERCE_DOUBLE(static String._unconditionallyBridgeFromObjectiveC(_:)());
          v62 = v61;

          v107 = *&v60;
          v108 = v62;
          v111 = v49;
          v112 = v54;
          OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
          v64 = lazy protocol witness table accessor for type String and conformance String();
          v65 = MEMORY[0x277D837D0];
          v66 = v100;
          v67 = v101;
          ChartContent.accessibilityLabel<A>(_:)();

          (*(v99 + 8))(v55, v67);
          v111 = TrainingLoadSmoothedLineTrace.makeAccessibilityValue(_:)(v82);
          v112 = v68;
          v107 = *&v67;
          v108 = v65;
          v109 = OpaqueTypeConformance2;
          v110 = v64;
          v69 = swift_getOpaqueTypeConformance2();
          v70 = v103;
          v71 = *&v89;
          ChartContent.accessibilityValue<A>(_:)();

          (*(v102 + 8))(v66, COERCE_DOUBLE(*&v71));
          v107 = v71;
          v108 = v65;
          v109 = v69;
          v110 = v64;
          v72 = swift_getOpaqueTypeConformance2();
          v73 = v84;
          v74 = *&v83;
          ChartContent.opacity(_:)();
          v75 = (*(v104 + 8))(v70, COERCE_DOUBLE(*&v74));
          MEMORY[0x28223BE20](v75);
          v76 = v106;
          *(&v78 - 2) = v106;
          *(&v78 - 1) = v47;
          __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI6ZStackVyAA19_ConditionalContentVyAA08ModifiedE0VyAGyAGyAA10_ShapeViewVyAA6CircleVAA5ColorVGAA12_FrameLayoutVGAA16_OverlayModifierVyAQGGAA13_ShadowEffectVGAA05TupleH0VyAGyAGyAnA010_BlendModeP0VGAPG_AGyAqA08_OpacityP0VGtGGSgGMd);
          v107 = v74;
          v108 = v72;
          swift_getOpaqueTypeConformance2();
          lazy protocol witness table accessor for type ZStack<_ConditionalContent<ModifiedContent<ModifiedContent<ModifiedContent<_ShapeView<Circle, Color>, _FrameLayout>, _OverlayModifier<ModifiedContent<_ShapeView<Circle, Color>, _FrameLayout>>>, _ShadowEffect>, TupleView<(ModifiedContent<ModifiedContent<_ShapeView<Circle, Color>, _BlendModeEffect>, _FrameLayout>, ModifiedContent<ModifiedContent<_ShapeView<Circle, Color>, _FrameLayout>, _OpacityEffect>)>>?> and conformance ZStack<A>(&lazy protocol witness table cache variable for type ZStack<_ConditionalContent<ModifiedContent<ModifiedContent<ModifiedContent<_ShapeView<Circle, Color>, _FrameLayout>, _OverlayModifier<ModifiedContent<_ShapeView<Circle, Color>, _FrameLayout>>>, _ShadowEffect>, TupleView<(ModifiedContent<ModifiedContent<_ShapeView<Circle, Color>, _BlendModeEffect>, _FrameLayout>, ModifiedContent<ModifiedContent<_ShapeView<Circle, Color>, _FrameLayout>, _OpacityEffect>)>>?> and conformance ZStack<A>, &_s7SwiftUI6ZStackVyAA19_ConditionalContentVyAA08ModifiedE0VyAGyAGyAA10_ShapeViewVyAA6CircleVAA5ColorVGAA12_FrameLayoutVGAA16_OverlayModifierVyAQGGAA13_ShadowEffectVGAA05TupleH0VyAGyAGyAnA010_BlendModeP0VGAPG_AGyAqA08_OpacityP0VGtGGSgGMd);
          v77 = v86;
          ChartContent.symbol<A>(symbol:)();
          (*(v85 + 8))(v73, v77);
          outlined destroy of TrainingLoadViewModel.ChartPoint(v76);
          return;
        }
      }

      else
      {
        v51 = v80;
        outlined init with copy of TrainingLoadViewModel.ChartPoint?(v41, v80, &_s9WorkoutUI21TrainingLoadViewModelV10ChartPointVSgMd);
        if (v45(v41 + v44, 1, View) != 1)
        {
          v52 = v79;
          outlined init with take of TrainingLoadSmoothedLineTrace(v41 + v44, v79, type metadata accessor for TrainingLoadViewModel.ChartPoint);
          v53 = specialized static TrainingLoadViewModel.ChartPoint.== infix(_:_:)(v51, v52);
          outlined destroy of TrainingLoadViewModel.ChartPoint(v52);
          outlined destroy of TrainingLoadViewModel.ChartPoint?(v42, &_s9WorkoutUI21TrainingLoadViewModelV10ChartPointVSgMd);
          outlined destroy of TrainingLoadViewModel.ChartPoint?(v39, &_s9WorkoutUI21TrainingLoadViewModelV10ChartPointVSgMd);
          outlined destroy of TrainingLoadViewModel.ChartPoint(v51);
          outlined destroy of TrainingLoadViewModel.ChartPoint?(v41, &_s9WorkoutUI21TrainingLoadViewModelV10ChartPointVSgMd);
          v49 = v91;
          v50 = v90;
          if (!v53)
          {
            goto LABEL_17;
          }

          goto LABEL_16;
        }

        outlined destroy of TrainingLoadViewModel.ChartPoint?(v42, &_s9WorkoutUI21TrainingLoadViewModelV10ChartPointVSgMd);
        outlined destroy of TrainingLoadViewModel.ChartPoint?(v39, &_s9WorkoutUI21TrainingLoadViewModelV10ChartPointVSgMd);
        outlined destroy of TrainingLoadViewModel.ChartPoint(v51);
        v49 = v91;
        v50 = v90;
      }

      outlined destroy of TrainingLoadViewModel.ChartPoint?(v41, &_s9WorkoutUI21TrainingLoadViewModelV10ChartPointVSg_AFtMd);
      goto LABEL_17;
    }
  }

  __break(1u);
}

uint64_t TrainingLoadSmoothedLineTrace.makeAccessibilityValue(_:)(unint64_t a1)
{
  View = type metadata accessor for TrainingLoadViewModel.ChartPoint(0);
  MEMORY[0x28223BE20](View);
  v6 = &v36 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((a1 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_42;
  }

  if (*(*v1 + 16) <= a1)
  {
LABEL_42:
    __break(1u);
    goto LABEL_43;
  }

  v7 = *v1 + ((*(v4 + 80) + 32) & ~*(v4 + 80));
  v8 = *(v4 + 72);
  outlined init with copy of TrainingLoadSmoothedLineTrace(v7 + v8 * a1, &v36 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for TrainingLoadViewModel.ChartPoint);
  v9 = *(View + 24);
  if (v6[v9 + 8])
  {
    countAndFlagsBits = Double.description.getter();
    goto LABEL_40;
  }

  v11 = *&v6[v9];
  v12 = &v6[*(View + 32)];
  if (v12[8])
  {
    if (!a1)
    {
      v14 = "AX_HIGHER_THAN_PREVIOUS_DAY";
      if (one-time initialization token for WorkoutUIBundle != -1)
      {
        swift_once();
      }

      swift_beginAccess();
      v15 = WorkoutUIBundle.super.isa;
      v35 = 0xE000000000000000;
      v16 = 0x617A696C61636F4CLL;
      v17 = 0xEB00000000656C62;
      v18 = 0xD000000000000012;
      goto LABEL_38;
    }

    v13 = v7 + v8 * (a1 - 1) + v9;
    if (*(v13 + 8) == 1)
    {
      if (v11 <= 0.0)
      {
        if (v11 != 0.0)
        {
LABEL_10:
          v14 = "ENGTH_METRIC_DESCRIPTION";
          if (one-time initialization token for WorkoutUIBundle != -1)
          {
            swift_once();
          }

          swift_beginAccess();
          v15 = WorkoutUIBundle.super.isa;
          v35 = 0xE000000000000000;
          v16 = 0x617A696C61636F4CLL;
          v17 = 0xEB00000000656C62;
          v18 = 0xD00000000000001ALL;
LABEL_38:
          v20 = v14 | 0x8000000000000000;
LABEL_39:
          v32._countAndFlagsBits = 0;
          v32._object = 0xE000000000000000;
          v33 = 0;
          countAndFlagsBits = NSLocalizedString(_:tableName:bundle:value:comment:)(*&v18, *&v16, v15, v32, *(&v35 - 1))._countAndFlagsBits;

          goto LABEL_40;
        }

LABEL_35:
        v14 = "AX_LOWER_THAN_PREVIOUS_DAY";
        if (one-time initialization token for WorkoutUIBundle != -1)
        {
          swift_once();
        }

        swift_beginAccess();
        v15 = WorkoutUIBundle.super.isa;
        v35 = 0xE000000000000000;
        v16 = 0x617A696C61636F4CLL;
        v17 = 0xEB00000000656C62;
        v18 = 0xD000000000000018;
        goto LABEL_38;
      }
    }

    else if (*v13 >= v11)
    {
      if (v11 != *v13)
      {
        goto LABEL_10;
      }

      goto LABEL_35;
    }

    v14 = "AX_EQUAL_TO_PREVIOUS_DAY";
    if (one-time initialization token for WorkoutUIBundle != -1)
    {
      swift_once();
    }

    swift_beginAccess();
    v15 = WorkoutUIBundle.super.isa;
    v35 = 0xE000000000000000;
    v16 = 0x617A696C61636F4CLL;
    v17 = 0xEB00000000656C62;
    v18 = 0xD00000000000001BLL;
    goto LABEL_38;
  }

  if (*v12 < v11)
  {
    if (one-time initialization token for WorkoutUIBundle == -1)
    {
LABEL_15:
      v19 = "AX_ABOVE_BASELINE";
      goto LABEL_30;
    }

LABEL_43:
    swift_once();
    goto LABEL_15;
  }

  if (v11 == *v12)
  {
    if (one-time initialization token for WorkoutUIBundle != -1)
    {
      swift_once();
    }

    swift_beginAccess();
    v15 = WorkoutUIBundle.super.isa;
    v35 = 0xE000000000000000;
    v18 = 0x41425F54415F5841;
    v20 = 0xEE00454E494C4553;
    v16 = 0x617A696C61636F4CLL;
    v17 = 0xEB00000000656C62;
    goto LABEL_39;
  }

  if (one-time initialization token for WorkoutUIBundle != -1)
  {
    swift_once();
  }

  v19 = "AX_BELOW_BASELINE";
LABEL_30:
  v21 = v19 - 32;
  swift_beginAccess();
  v22 = WorkoutUIBundle.super.isa;
  v23 = 0xE000000000000000;
  v37._object = 0xE000000000000000;
  v24.value._countAndFlagsBits = 0x617A696C61636F4CLL;
  v24.value._object = 0xEB00000000656C62;
  v25._object = (v21 | 0x8000000000000000);
  v25._countAndFlagsBits = 0xD000000000000011;
  v26._countAndFlagsBits = 0;
  v26._object = 0xE000000000000000;
  v37._countAndFlagsBits = 0;
  NSLocalizedString(_:tableName:bundle:value:comment:)(v25, v24, v22, v26, v37);

  v27 = AXFormatFloatWithPercentage();
  if (v27)
  {
    v28 = v27;
    v29 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v23 = v30;
  }

  else
  {
    v29 = 0;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys7CVarArg_pGMd);
  v31 = swift_allocObject();
  *(v31 + 16) = xmmword_20CB5DA70;
  *(v31 + 56) = MEMORY[0x277D837D0];
  *(v31 + 64) = lazy protocol witness table accessor for type String and conformance String();
  *(v31 + 32) = v29;
  *(v31 + 40) = v23;
  countAndFlagsBits = String.init(format:_:)();

LABEL_40:
  outlined destroy of TrainingLoadViewModel.ChartPoint(v6);
  return countAndFlagsBits;
}

uint64_t closure #1 in closure #1 in TrainingLoadSmoothedLineTrace.body.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  *a3 = static Alignment.center.getter();
  a3[1] = v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI13_VariadicViewO4TreeVy_AA13_ZStackLayoutVAA19_ConditionalContentVyAA08ModifiedI0VyAKyAKyAA06_ShapeD0VyAA6CircleVAA5ColorVGAA06_FrameG0VGAA16_OverlayModifierVyAUGGAA13_ShadowEffectVGAA05TupleD0VyAKyAKyArA010_BlendModeR0VGATG_AKyAuA08_OpacityR0VGtGGSgGMd);
  return closure #1 in closure #1 in closure #1 in TrainingLoadSmoothedLineTrace.body.getter(a1, a2, a3 + *(v7 + 44));
}

uint64_t closure #1 in closure #1 in closure #1 in TrainingLoadSmoothedLineTrace.body.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v69 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI9TupleViewVyAA15ModifiedContentVyAEyAA06_ShapeD0VyAA6CircleVAA5ColorVGAA16_BlendModeEffectVGAA12_FrameLayoutVG_AEyAEyAlQGAA08_OpacityL0VGtGMd);
  MEMORY[0x28223BE20](v69);
  v7 = &v63 - v6;
  v66 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyACyAA10_ShapeViewVyAA6CircleVAA5ColorVGAA16_BlendModeEffectVGAA12_FrameLayoutVGMd);
  MEMORY[0x28223BE20](v66);
  v9 = &v63 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v12 = &v63 - v11;
  v67 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI19_ConditionalContentV7StorageOyAA08ModifiedD0VyAGyAGyAA10_ShapeViewVyAA6CircleVAA5ColorVGAA12_FrameLayoutVGAA16_OverlayModifierVyAQGGAA13_ShadowEffectVGAA05TupleH0VyAGyAGyAnA010_BlendModeP0VGAPG_AGyAqA08_OpacityP0VGtG_GMd);
  MEMORY[0x28223BE20](v67);
  v68 = (&v63 - v13);
  SmoothedLineTrace = type metadata accessor for TrainingLoadSmoothedLineTrace();
  v71 = a2;
  v14 = a2 + SmoothedLineTrace[5];
  if ((static Date.== infix(_:_:)() & 1) == 0)
  {
    goto LABEL_3;
  }

  View = type metadata accessor for TrainingLoadViewModel.ChartPoint(0);
  type metadata accessor for DayIndex();
  lazy protocol witness table accessor for type DayIndex and conformance DayIndex();
  dispatch thunk of Strideable.distance(to:)();
  if (*&v77[0])
  {
    goto LABEL_3;
  }

  v40 = View[6];
  v41 = (a1 + v40);
  v42 = *(a1 + v40 + 8);
  v43 = (v14 + v40);
  v44 = *(v14 + v40 + 8);
  if (v42)
  {
    if (!v44)
    {
      goto LABEL_3;
    }
  }

  else
  {
    if (*v41 != *v43)
    {
      LOBYTE(v44) = 1;
    }

    if (v44)
    {
      goto LABEL_3;
    }
  }

  v45 = *(a1 + View[7]);
  if ((static Color.== infix(_:_:)() & 1) == 0)
  {
    goto LABEL_3;
  }

  v46 = View[8];
  v47 = (a1 + v46);
  v48 = *(a1 + v46 + 8);
  v49 = (v14 + v46);
  v50 = *(v14 + v46 + 8);
  if (v48)
  {
    if (v50)
    {
      goto LABEL_21;
    }

LABEL_3:
    v64 = v9;
    v65 = v7;
    v16 = SmoothedLineTrace;
    v17 = v71;
    if (*(v71 + SmoothedLineTrace[6]) == 1)
    {
      v18 = static Color.black.getter();
      v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyAA10_ShapeViewVyAA6CircleVAA5ColorVGAA16_BlendModeEffectVGMd);
      v63 = a3;
      v20 = *(v19 + 36);
      v21 = *MEMORY[0x277CE13C0];
      v22 = type metadata accessor for BlendMode();
      (*(*(v22 - 8) + 104))(&v12[v20], v21, v22);
      *v12 = v18;
      *(v12 + 4) = 256;
      static Alignment.center.getter();
      _FrameLayout.init(width:height:alignment:)();
      v23 = &v12[*(v66 + 36)];
      v24 = *(&v92[4] + 6);
      *v23 = *(&v92[3] + 6);
      *(v23 + 1) = v24;
      *(v23 + 2) = *(&v92[5] + 6);
      v25 = *(a1 + *(type metadata accessor for TrainingLoadViewModel.ChartPoint(0) + 28));
      static Alignment.center.getter();
      _FrameLayout.init(width:height:alignment:)();
      *(&v92[2] + 6) = *(&v92[8] + 6);
      *(&v92[1] + 6) = *(&v92[7] + 6);
      *(v92 + 6) = *(&v92[6] + 6);
      v26 = 0.6;
      if (!*(v17 + v16[13]))
      {
        v26 = 1.0;
      }

      *(v72 + 10) = v92[0];
      *&v72[0] = v25;
      WORD4(v72[0]) = 256;
      *(&v72[1] + 10) = v92[1];
      *(&v72[2] + 10) = v92[2];
      *(&v72[3] + 1) = *(&v92[2] + 14);
      v73 = v26;
      v27 = v64;
      outlined init with copy of TrainingLoadViewModel.ChartPoint?(v12, v64, &_s7SwiftUI15ModifiedContentVyACyAA10_ShapeViewVyAA6CircleVAA5ColorVGAA16_BlendModeEffectVGAA12_FrameLayoutVGMd);
      v89 = v72[2];
      v90 = v72[3];
      v91 = v73;
      v87 = v72[0];
      v88 = v72[1];
      v28 = v65;
      outlined init with copy of TrainingLoadViewModel.ChartPoint?(v27, v65, &_s7SwiftUI15ModifiedContentVyACyAA10_ShapeViewVyAA6CircleVAA5ColorVGAA16_BlendModeEffectVGAA12_FrameLayoutVGMd);
      v29 = v28 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyACyAA10_ShapeViewVyAA6CircleVAA5ColorVGAA16_BlendModeEffectVGAA12_FrameLayoutVG_ACyACyAjOGAA08_OpacityK0VGtMd) + 48);
      v31 = v89;
      v75[3] = v90;
      v30 = v90;
      v32 = *&v91;
      *&v76 = v91;
      v34 = v87;
      v75[1] = v88;
      v33 = v88;
      v75[2] = v89;
      v75[0] = v87;
      *(v29 + 32) = v89;
      *(v29 + 48) = v30;
      *(v29 + 64) = v32;
      *v29 = v34;
      *(v29 + 16) = v33;
      v77[3] = v30;
      v78 = v32;
      v77[1] = v33;
      v77[2] = v31;
      v77[0] = v34;

      outlined init with copy of TrainingLoadViewModel.ChartPoint?(v72, v86, &_s7SwiftUI15ModifiedContentVyACyAA10_ShapeViewVyAA6CircleVAA5ColorVGAA12_FrameLayoutVGAA14_OpacityEffectVGMd);
      outlined init with copy of TrainingLoadViewModel.ChartPoint?(v75, v86, &_s7SwiftUI15ModifiedContentVyACyAA10_ShapeViewVyAA6CircleVAA5ColorVGAA12_FrameLayoutVGAA14_OpacityEffectVGMd);
      outlined destroy of TrainingLoadViewModel.ChartPoint?(v77, &_s7SwiftUI15ModifiedContentVyACyAA10_ShapeViewVyAA6CircleVAA5ColorVGAA12_FrameLayoutVGAA14_OpacityEffectVGMd);
      outlined destroy of TrainingLoadViewModel.ChartPoint?(v27, &_s7SwiftUI15ModifiedContentVyACyAA10_ShapeViewVyAA6CircleVAA5ColorVGAA16_BlendModeEffectVGAA12_FrameLayoutVGMd);
      outlined init with copy of TrainingLoadViewModel.ChartPoint?(v28, v68, &_s7SwiftUI9TupleViewVyAA15ModifiedContentVyAEyAA06_ShapeD0VyAA6CircleVAA5ColorVGAA16_BlendModeEffectVGAA12_FrameLayoutVG_AEyAEyAlQGAA08_OpacityL0VGtGMd);
      swift_storeEnumTagMultiPayload();
      __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyACyACyAA10_ShapeViewVyAA6CircleVAA5ColorVGAA12_FrameLayoutVGAA16_OverlayModifierVyAMGGAA13_ShadowEffectVGMd);
      lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<ModifiedContent<_ShapeView<Circle, Color>, _FrameLayout>, _OverlayModifier<ModifiedContent<_ShapeView<Circle, Color>, _FrameLayout>>>, _ShadowEffect> and conformance <> ModifiedContent<A, B>();
      lazy protocol witness table accessor for type ZStack<_ConditionalContent<ModifiedContent<ModifiedContent<ModifiedContent<_ShapeView<Circle, Color>, _FrameLayout>, _OverlayModifier<ModifiedContent<_ShapeView<Circle, Color>, _FrameLayout>>>, _ShadowEffect>, TupleView<(ModifiedContent<ModifiedContent<_ShapeView<Circle, Color>, _BlendModeEffect>, _FrameLayout>, ModifiedContent<ModifiedContent<_ShapeView<Circle, Color>, _FrameLayout>, _OpacityEffect>)>>?> and conformance ZStack<A>(&lazy protocol witness table cache variable for type TupleView<(ModifiedContent<ModifiedContent<_ShapeView<Circle, Color>, _BlendModeEffect>, _FrameLayout>, ModifiedContent<ModifiedContent<_ShapeView<Circle, Color>, _FrameLayout>, _OpacityEffect>)> and conformance TupleView<A>, &_s7SwiftUI9TupleViewVyAA15ModifiedContentVyAEyAA06_ShapeD0VyAA6CircleVAA5ColorVGAA16_BlendModeEffectVGAA12_FrameLayoutVG_AEyAEyAlQGAA08_OpacityL0VGtGMd);
      v35 = v12;
      v36 = v63;
      _ConditionalContent<>.init(storage:)();
      outlined destroy of TrainingLoadViewModel.ChartPoint?(v72, &_s7SwiftUI15ModifiedContentVyACyAA10_ShapeViewVyAA6CircleVAA5ColorVGAA12_FrameLayoutVGAA14_OpacityEffectVGMd);
      outlined destroy of TrainingLoadViewModel.ChartPoint?(v28, &_s7SwiftUI9TupleViewVyAA15ModifiedContentVyAEyAA06_ShapeD0VyAA6CircleVAA5ColorVGAA16_BlendModeEffectVGAA12_FrameLayoutVG_AEyAEyAlQGAA08_OpacityL0VGtGMd);
      outlined destroy of TrainingLoadViewModel.ChartPoint?(v35, &_s7SwiftUI15ModifiedContentVyACyAA10_ShapeViewVyAA6CircleVAA5ColorVGAA16_BlendModeEffectVGAA12_FrameLayoutVGMd);
      v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI19_ConditionalContentVyAA08ModifiedD0VyAEyAEyAA10_ShapeViewVyAA6CircleVAA5ColorVGAA12_FrameLayoutVGAA16_OverlayModifierVyAOGGAA13_ShadowEffectVGAA05TupleG0VyAEyAEyAlA010_BlendModeO0VGANG_AEyAoA08_OpacityO0VGtGGMd);
      return (*(*(v37 - 8) + 56))(v36, 0, 1, v37);
    }

    else
    {
      v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI19_ConditionalContentVyAA08ModifiedD0VyAEyAEyAA10_ShapeViewVyAA6CircleVAA5ColorVGAA12_FrameLayoutVGAA16_OverlayModifierVyAOGGAA13_ShadowEffectVGAA05TupleG0VyAEyAEyAlA010_BlendModeO0VGANG_AEyAoA08_OpacityO0VGtGGMd);
      return (*(*(v39 - 8) + 56))(a3, 1, 1, v39);
    }
  }

  if (*v47 != *v49)
  {
    LOBYTE(v50) = 1;
  }

  if (v50)
  {
    goto LABEL_3;
  }

LABEL_21:
  static Color.gray.getter();
  v51 = static Color.== infix(_:_:)();

  if (v51)
  {
    v52 = static Color.white.getter();
  }

  else
  {

    v52 = v45;
  }

  static Alignment.center.getter();
  _FrameLayout.init(width:height:alignment:)();
  *&v85[6] = v86[0];
  *&v85[22] = v86[1];
  *&v85[38] = v86[2];
  v53 = static Alignment.center.getter();
  v55 = v54;
  v56 = static Color.black.getter();
  static Alignment.center.getter();
  _FrameLayout.init(width:height:alignment:)();
  *&v74[6] = v87;
  *&v74[22] = v88;
  *&v74[38] = v89;
  *&v75[0] = v56;
  WORD4(v75[0]) = 256;
  *(v75 + 10) = *v74;
  *(&v75[1] + 10) = *&v74[16];
  *(&v75[2] + 10) = *&v74[32];
  *(&v75[3] + 1) = *(&v89 + 1);
  *&v76 = v53;
  *(&v76 + 1) = v55;
  *&v77[0] = v56;
  v80 = v75[0];
  v83 = v75[3];
  v84 = v76;
  v81 = v75[1];
  v82 = v75[2];
  WORD4(v77[0]) = 256;
  *(&v77[3] + 1) = *(&v89 + 1);
  v78 = v53;
  *(&v77[1] + 10) = *&v74[16];
  *(&v77[2] + 10) = *&v74[32];
  *(v77 + 10) = *v74;
  v79 = v55;
  outlined init with copy of TrainingLoadViewModel.ChartPoint?(v75, v72, &_s7SwiftUI16_OverlayModifierVyAA15ModifiedContentVyAA10_ShapeViewVyAA6CircleVAA5ColorVGAA12_FrameLayoutVGGMd);
  outlined destroy of TrainingLoadViewModel.ChartPoint?(v77, &_s7SwiftUI16_OverlayModifierVyAA15ModifiedContentVyAA10_ShapeViewVyAA6CircleVAA5ColorVGAA12_FrameLayoutVGGMd);
  static Color.gray.getter();
  LOBYTE(v56) = static Color.== infix(_:_:)();

  if (v56)
  {
    static Color.white.getter();
    v57 = Color.opacity(_:)();
  }

  else
  {
    v57 = Color.opacity(_:)();
  }

  v58 = *(v71 + SmoothedLineTrace[12]);
  v59 = v68;
  *v68 = v52;
  *(v59 + 4) = 256;
  *(v59 + 10) = *v85;
  *(v59 + 26) = *&v85[16];
  *(v59 + 42) = *&v85[32];
  v59[7] = *&v85[46];
  v60 = v83;
  *(v59 + 6) = v82;
  *(v59 + 7) = v60;
  *(v59 + 8) = v84;
  v61 = v81;
  *(v59 + 4) = v80;
  *(v59 + 5) = v61;
  v59[18] = v57;
  v59[19] = v58;
  v59[20] = 0;
  v59[21] = 0;
  swift_storeEnumTagMultiPayload();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyACyACyAA10_ShapeViewVyAA6CircleVAA5ColorVGAA12_FrameLayoutVGAA16_OverlayModifierVyAMGGAA13_ShadowEffectVGMd);
  lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<ModifiedContent<_ShapeView<Circle, Color>, _FrameLayout>, _OverlayModifier<ModifiedContent<_ShapeView<Circle, Color>, _FrameLayout>>>, _ShadowEffect> and conformance <> ModifiedContent<A, B>();
  lazy protocol witness table accessor for type ZStack<_ConditionalContent<ModifiedContent<ModifiedContent<ModifiedContent<_ShapeView<Circle, Color>, _FrameLayout>, _OverlayModifier<ModifiedContent<_ShapeView<Circle, Color>, _FrameLayout>>>, _ShadowEffect>, TupleView<(ModifiedContent<ModifiedContent<_ShapeView<Circle, Color>, _BlendModeEffect>, _FrameLayout>, ModifiedContent<ModifiedContent<_ShapeView<Circle, Color>, _FrameLayout>, _OpacityEffect>)>>?> and conformance ZStack<A>(&lazy protocol witness table cache variable for type TupleView<(ModifiedContent<ModifiedContent<_ShapeView<Circle, Color>, _BlendModeEffect>, _FrameLayout>, ModifiedContent<ModifiedContent<_ShapeView<Circle, Color>, _FrameLayout>, _OpacityEffect>)> and conformance TupleView<A>, &_s7SwiftUI9TupleViewVyAA15ModifiedContentVyAEyAA06_ShapeD0VyAA6CircleVAA5ColorVGAA16_BlendModeEffectVGAA12_FrameLayoutVG_AEyAEyAlQGAA08_OpacityL0VGtGMd);
  _ConditionalContent<>.init(storage:)();
  v62 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI19_ConditionalContentVyAA08ModifiedD0VyAEyAEyAA10_ShapeViewVyAA6CircleVAA5ColorVGAA12_FrameLayoutVGAA16_OverlayModifierVyAOGGAA13_ShadowEffectVGAA05TupleG0VyAEyAEyAlA010_BlendModeO0VGANG_AEyAoA08_OpacityO0VGtGGMd);
  return (*(*(v62 - 8) + 56))(a3, 0, 1, v62);
}

void partial apply for closure #1 in TrainingLoadSmoothedLineTrace.body.getter(unint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *(type metadata accessor for TrainingLoadSmoothedLineTrace() - 8);
  v6 = (v2 + ((*(v5 + 80) + 16) & ~*(v5 + 80)));

  closure #1 in TrainingLoadSmoothedLineTrace.body.getter(a1, v6, a2);
}

unint64_t lazy protocol witness table accessor for type ForEach<Range<Int>, Int, <<opaque return type of ChartContent.symbol<A>(symbol:)>>.0> and conformance <> ForEach<A, B, C>()
{
  result = lazy protocol witness table cache variable for type ForEach<Range<Int>, Int, <<opaque return type of ChartContent.symbol<A>(symbol:)>>.0> and conformance <> ForEach<A, B, C>;
  if (!lazy protocol witness table cache variable for type ForEach<Range<Int>, Int, <<opaque return type of ChartContent.symbol<A>(symbol:)>>.0> and conformance <> ForEach<A, B, C>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI7ForEachVySnySiGSi6Charts12ChartContentPAEE6symbolAHQrqd__yXE_tAA4ViewRd__lFQOyAgEE7opacityyQrSdFQOyAgEE18accessibilityValueyQrqd__SyRd__lFQOyAgEE0K5LabelyQrqd__SyRd__lFQOyAgEE0K6HiddenyQrSbFQOyAE8LineMarkV_Qo__SSQo__SSQo__Qo__AA6ZStackVyAA012_ConditionalG0VyAA08ModifiedG0VyAYyAYyAA06_ShapeI0VyAA6CircleVAA5ColorVGAA12_FrameLayoutVGAA16_OverlayModifierVyA7_GGAA13_ShadowEffectVGAA05TupleI0VyAYyAYyA4_AA16_BlendModeEffectVGA6_G_AYyA7_AA14_OpacityEffectVGtGGSgGQo_GMd);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s6Charts12ChartContentPAAE7opacityyQrSdFQOyAcAE18accessibilityValueyQrqd__SyRd__lFQOyAcAE0E5LabelyQrqd__SyRd__lFQOyAcAE0E6HiddenyQrSbFQOyAA8LineMarkV_Qo__SSQo__SSQo__Qo_Md);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI6ZStackVyAA19_ConditionalContentVyAA08ModifiedE0VyAGyAGyAA10_ShapeViewVyAA6CircleVAA5ColorVGAA12_FrameLayoutVGAA16_OverlayModifierVyAQGGAA13_ShadowEffectVGAA05TupleH0VyAGyAGyAnA010_BlendModeP0VGAPG_AGyAqA08_OpacityP0VGtGGSgGMd);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s6Charts12ChartContentPAAE18accessibilityValueyQrqd__SyRd__lFQOyAcAE0D5LabelyQrqd__SyRd__lFQOyAcAE0D6HiddenyQrSbFQOyAA8LineMarkV_Qo__SSQo__SSQo_Md);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s6Charts12ChartContentPAAE18accessibilityLabelyQrqd__SyRd__lFQOyAcAE0D6HiddenyQrSbFQOyAA8LineMarkV_Qo__SSQo_Md);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s6Charts12ChartContentPAAE19accessibilityHiddenyQrSbFQOyAA8LineMarkV_Qo_Md);
    type metadata accessor for LineMark();
    swift_getOpaqueTypeConformance2();
    lazy protocol witness table accessor for type String and conformance String();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    lazy protocol witness table accessor for type ZStack<_ConditionalContent<ModifiedContent<ModifiedContent<ModifiedContent<_ShapeView<Circle, Color>, _FrameLayout>, _OverlayModifier<ModifiedContent<_ShapeView<Circle, Color>, _FrameLayout>>>, _ShadowEffect>, TupleView<(ModifiedContent<ModifiedContent<_ShapeView<Circle, Color>, _BlendModeEffect>, _FrameLayout>, ModifiedContent<ModifiedContent<_ShapeView<Circle, Color>, _FrameLayout>, _OpacityEffect>)>>?> and conformance ZStack<A>(&lazy protocol witness table cache variable for type ZStack<_ConditionalContent<ModifiedContent<ModifiedContent<ModifiedContent<_ShapeView<Circle, Color>, _FrameLayout>, _OverlayModifier<ModifiedContent<_ShapeView<Circle, Color>, _FrameLayout>>>, _ShadowEffect>, TupleView<(ModifiedContent<ModifiedContent<_ShapeView<Circle, Color>, _BlendModeEffect>, _FrameLayout>, ModifiedContent<ModifiedContent<_ShapeView<Circle, Color>, _FrameLayout>, _OpacityEffect>)>>?> and conformance ZStack<A>, &_s7SwiftUI6ZStackVyAA19_ConditionalContentVyAA08ModifiedE0VyAGyAGyAA10_ShapeViewVyAA6CircleVAA5ColorVGAA12_FrameLayoutVGAA16_OverlayModifierVyAQGGAA13_ShadowEffectVGAA05TupleH0VyAGyAGyAnA010_BlendModeP0VGAPG_AGyAqA08_OpacityP0VGtGGSgGMd);
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ForEach<Range<Int>, Int, <<opaque return type of ChartContent.symbol<A>(symbol:)>>.0> and conformance <> ForEach<A, B, C>);
  }

  return result;
}

uint64_t outlined init with copy of TrainingLoadSmoothedLineTrace(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t outlined init with take of TrainingLoadSmoothedLineTrace(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<ModifiedContent<_ShapeView<Circle, Color>, _FrameLayout>, _OverlayModifier<ModifiedContent<_ShapeView<Circle, Color>, _FrameLayout>>>, _ShadowEffect> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<_ShapeView<Circle, Color>, _FrameLayout>, _OverlayModifier<ModifiedContent<_ShapeView<Circle, Color>, _FrameLayout>>>, _ShadowEffect> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<_ShapeView<Circle, Color>, _FrameLayout>, _OverlayModifier<ModifiedContent<_ShapeView<Circle, Color>, _FrameLayout>>>, _ShadowEffect> and conformance <> ModifiedContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyACyACyAA10_ShapeViewVyAA6CircleVAA5ColorVGAA12_FrameLayoutVGAA16_OverlayModifierVyAMGGAA13_ShadowEffectVGMd);
    lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<_ShapeView<Circle, Color>, _FrameLayout>, _OverlayModifier<ModifiedContent<_ShapeView<Circle, Color>, _FrameLayout>>> and conformance <> ModifiedContent<A, B>();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<_ShapeView<Circle, Color>, _FrameLayout>, _OverlayModifier<ModifiedContent<_ShapeView<Circle, Color>, _FrameLayout>>>, _ShadowEffect> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<_ShapeView<Circle, Color>, _FrameLayout>, _OverlayModifier<ModifiedContent<_ShapeView<Circle, Color>, _FrameLayout>>> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<_ShapeView<Circle, Color>, _FrameLayout>, _OverlayModifier<ModifiedContent<_ShapeView<Circle, Color>, _FrameLayout>>> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<_ShapeView<Circle, Color>, _FrameLayout>, _OverlayModifier<ModifiedContent<_ShapeView<Circle, Color>, _FrameLayout>>> and conformance <> ModifiedContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyACyAA10_ShapeViewVyAA6CircleVAA5ColorVGAA12_FrameLayoutVGAA16_OverlayModifierVyAMGGMd);
    lazy protocol witness table accessor for type ModifiedContent<_ShapeView<Circle, Color>, _FrameLayout> and conformance <> ModifiedContent<A, B>();
    lazy protocol witness table accessor for type ZStack<_ConditionalContent<ModifiedContent<ModifiedContent<ModifiedContent<_ShapeView<Circle, Color>, _FrameLayout>, _OverlayModifier<ModifiedContent<_ShapeView<Circle, Color>, _FrameLayout>>>, _ShadowEffect>, TupleView<(ModifiedContent<ModifiedContent<_ShapeView<Circle, Color>, _BlendModeEffect>, _FrameLayout>, ModifiedContent<ModifiedContent<_ShapeView<Circle, Color>, _FrameLayout>, _OpacityEffect>)>>?> and conformance ZStack<A>(&lazy protocol witness table cache variable for type _OverlayModifier<ModifiedContent<_ShapeView<Circle, Color>, _FrameLayout>> and conformance _OverlayModifier<A>, &_s7SwiftUI16_OverlayModifierVyAA15ModifiedContentVyAA10_ShapeViewVyAA6CircleVAA5ColorVGAA12_FrameLayoutVGGMd);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<_ShapeView<Circle, Color>, _FrameLayout>, _OverlayModifier<ModifiedContent<_ShapeView<Circle, Color>, _FrameLayout>>> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

uint64_t lazy protocol witness table accessor for type ZStack<_ConditionalContent<ModifiedContent<ModifiedContent<ModifiedContent<_ShapeView<Circle, Color>, _FrameLayout>, _OverlayModifier<ModifiedContent<_ShapeView<Circle, Color>, _FrameLayout>>>, _ShadowEffect>, TupleView<(ModifiedContent<ModifiedContent<_ShapeView<Circle, Color>, _BlendModeEffect>, _FrameLayout>, ModifiedContent<ModifiedContent<_ShapeView<Circle, Color>, _FrameLayout>, _OpacityEffect>)>>?> and conformance ZStack<A>(unint64_t *a1, uint64_t *a2)
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

unint64_t lazy protocol witness table accessor for type DayIndex and conformance DayIndex()
{
  result = lazy protocol witness table cache variable for type DayIndex and conformance DayIndex;
  if (!lazy protocol witness table cache variable for type DayIndex and conformance DayIndex)
  {
    type metadata accessor for DayIndex();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type DayIndex and conformance DayIndex);
  }

  return result;
}

uint64_t outlined init with copy of TrainingLoadViewModel.ChartPoint?(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(a3);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t outlined destroy of TrainingLoadViewModel.ChartPoint?(uint64_t a1, uint64_t *a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(a2);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t DynamicTypeDisabled.body(content:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI21_ViewModifier_ContentVy07WorkoutB019DynamicTypeDisabledVGMd);
  v5 = *(*(v4 - 8) + 16);

  return v5(a2, a1, v4);
}

uint64_t protocol witness for ViewModifier.body(content:) in conformance DynamicTypeDisabled@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI21_ViewModifier_ContentVy07WorkoutB019DynamicTypeDisabledVGMd);
  v5 = *(*(v4 - 8) + 16);

  return v5(a2, a1, v4);
}

uint64_t getEnumTagSinglePayload for DynamicTypeDisabled(unsigned int *a1, int a2)
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

_WORD *storeEnumTagSinglePayload for DynamicTypeDisabled(_WORD *result, int a2, int a3)
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

unint64_t lazy protocol witness table accessor for type _ViewModifier_Content<DynamicTypeDisabled> and conformance _ViewModifier_Content<A>()
{
  result = lazy protocol witness table cache variable for type _ViewModifier_Content<DynamicTypeDisabled> and conformance _ViewModifier_Content<A>;
  if (!lazy protocol witness table cache variable for type _ViewModifier_Content<DynamicTypeDisabled> and conformance _ViewModifier_Content<A>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI21_ViewModifier_ContentVy07WorkoutB019DynamicTypeDisabledVGMd);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type _ViewModifier_Content<DynamicTypeDisabled> and conformance _ViewModifier_Content<A>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type DynamicTypeDisabled and conformance DynamicTypeDisabled()
{
  result = lazy protocol witness table cache variable for type DynamicTypeDisabled and conformance DynamicTypeDisabled;
  if (!lazy protocol witness table cache variable for type DynamicTypeDisabled and conformance DynamicTypeDisabled)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type DynamicTypeDisabled and conformance DynamicTypeDisabled);
  }

  return result;
}

uint64_t WorkoutConfigurationFilterType.symbolName.getter()
{
  v1 = type metadata accessor for WorkoutConfigurationFilterType();
  v2 = *(v1 - 8);
  v3 = MEMORY[0x28223BE20](v1);
  v5 = &v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v2 + 16))(v5, v0, v1, v3);
  v6 = (*(v2 + 88))(v5, v1);
  if (v6 == *MEMORY[0x277D7DC58])
  {
    return 0x73656C6B72617073;
  }

  if (v6 == *MEMORY[0x277D7DC30])
  {
    return 0xD000000000000014;
  }

  if (v6 == *MEMORY[0x277D7DC38])
  {
    return 0x72656D6974;
  }

  if (v6 == *MEMORY[0x277D7DC50])
  {
    type metadata accessor for IntervalWorkoutConfiguration();
    return static IntervalWorkoutConfiguration.displaySymbolName.getter();
  }

  else if (v6 == *MEMORY[0x277D7DC48])
  {
    return 0xD000000000000022;
  }

  else if (v6 == *MEMORY[0x277D7DC40])
  {
    return 0x6574756F72;
  }

  else
  {
    result = _diagnoseUnexpectedEnumCase<A>(type:)();
    __break(1u);
  }

  return result;
}

uint64_t WorkoutConfigurationFilterType.displayColor.getter()
{
  v1 = type metadata accessor for WorkoutConfigurationFilterType();
  v2 = *(v1 - 8);
  v3 = MEMORY[0x28223BE20](v1);
  v5 = &v16 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v2 + 16))(v5, v0, v1, v3);
  v6 = (*(v2 + 88))(v5, v1);
  if (v6 == *MEMORY[0x277D7DC58] || v6 == *MEMORY[0x277D7DC30])
  {
    return static Color.white.getter();
  }

  if (v6 == *MEMORY[0x277D7DC38])
  {
    v8 = [objc_opt_self() elapsedTimeColors];
    if (v8)
    {
      v9 = v8;
      v10 = [v8 nonGradientTextColor];

      if (v10)
      {
        return Color.init(uiColor:)();
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
    goto LABEL_17;
  }

  if (v6 == *MEMORY[0x277D7DC50])
  {
    v11 = objc_allocWithZone(MEMORY[0x277D75348]);
    v12 = sel_initWithDisplayP3Red_green_blue_alpha_;
    v13 = 0.607843137;
    v14 = 0.431372549;
    v15 = 0.980392157;
LABEL_14:
    [v11 v12];
    return Color.init(uiColor:)();
  }

  if (v6 == *MEMORY[0x277D7DC48])
  {
    [objc_allocWithZone(MEMORY[0x277D75348]) initWithDisplayP3Red:0.458823529 green:0.898039216 blue:0.898039216 alpha:1.0];
    return Color.init(uiColor:)();
  }

  if (v6 == *MEMORY[0x277D7DC40])
  {
    v11 = objc_allocWithZone(MEMORY[0x277D75348]);
    v12 = sel_initWithRed_green_blue_alpha_;
    v15 = 0.62745098;
    v13 = 0.0;
    v14 = 1.0;
    goto LABEL_14;
  }

LABEL_17:
  result = _diagnoseUnexpectedEnumCase<A>(type:)();
  __break(1u);
  return result;
}

double TipKitWorkoutView.body.getter@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v10 = *(a1 + 16);
  v8 = v10;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v9);
  (*(*(v8 - 8) + 16))(boxed_opaque_existential_1, v2);
  TipView.init<>(_:isPresented:arrowEdge:action:)();
  v9[0] = static Color.clear.getter();
  v5 = AnyView.init<A>(_:)();
  *(a2 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVy6TipKit0E4ViewVyAD03AnyE0VGAA21_TraitWritingModifierVyAA017ListRowBackgroundI3KeyVGGMd) + 36)) = v5;
  v6 = a2 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyACy6TipKit0E4ViewVyAD03AnyE0VGAA21_TraitWritingModifierVyAA017ListRowBackgroundI3KeyVGGAKyAA0lm6InsetsiO0VGGMd) + 36);
  *(v6 + 32) = 0;
  result = 0.0;
  *v6 = 0u;
  *(v6 + 16) = 0u;
  return result;
}

uint64_t type metadata completion function for TipKitWorkoutView()
{
  result = swift_checkMetadataState();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for TipKitWorkoutView(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 84);
  v6 = *(v4 + 64);
  if (!a2)
  {
    return 0;
  }

  v7 = a2 - v5;
  if (a2 <= v5)
  {
    return (*(v4 + 48))();
  }

  v8 = 8 * v6;
  if (v6 <= 3)
  {
    v10 = ((v7 + ~(-1 << v8)) >> v8) + 1;
    if (HIWORD(v10))
    {
      v9 = *(a1 + v6);
      if (!v9)
      {
        goto LABEL_22;
      }

      goto LABEL_11;
    }

    if (v10 > 0xFF)
    {
      v9 = *(a1 + v6);
      if (!*(a1 + v6))
      {
        goto LABEL_22;
      }

      goto LABEL_11;
    }

    if (v10 < 2)
    {
LABEL_22:
      if (v5)
      {
        return (*(v4 + 48))();
      }

      return 0;
    }
  }

  v9 = *(a1 + v6);
  if (!*(a1 + v6))
  {
    goto LABEL_22;
  }

LABEL_11:
  v11 = (v9 - 1) << v8;
  if (v6 > 3)
  {
    v11 = 0;
  }

  if (v6)
  {
    if (v6 > 3)
    {
      LODWORD(v6) = 4;
    }

    if (v6 > 2)
    {
      if (v6 == 3)
      {
        LODWORD(v6) = *a1 | (*(a1 + 2) << 16);
      }

      else
      {
        LODWORD(v6) = *a1;
      }
    }

    else if (v6 == 1)
    {
      LODWORD(v6) = *a1;
    }

    else
    {
      LODWORD(v6) = *a1;
    }
  }

  return v5 + (v6 | v11) + 1;
}

char *storeEnumTagSinglePayload for TipKitWorkoutView(char *result, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v5 = *(*(a4 + 16) - 8);
  v6 = *(v5 + 84);
  v7 = *(v5 + 64);
  v8 = a3 >= v6;
  v9 = a3 - v6;
  if (v9 != 0 && v8)
  {
    if (v7 <= 3)
    {
      v14 = ((v9 + ~(-1 << (8 * v7))) >> (8 * v7)) + 1;
      if (HIWORD(v14))
      {
        v10 = 4;
      }

      else
      {
        if (v14 < 0x100)
        {
          v15 = 1;
        }

        else
        {
          v15 = 2;
        }

        if (v14 >= 2)
        {
          v10 = v15;
        }

        else
        {
          v10 = 0;
        }
      }
    }

    else
    {
      v10 = 1;
    }
  }

  else
  {
    v10 = 0;
  }

  if (v6 < a2)
  {
    v11 = ~v6 + a2;
    if (v7 < 4)
    {
      v13 = (v11 >> (8 * v7)) + 1;
      if (v7)
      {
        v16 = v11 & ~(-1 << (8 * v7));
        v17 = result;
        bzero(result, v7);
        result = v17;
        if (v7 != 3)
        {
          if (v7 == 2)
          {
            *v17 = v16;
            if (v10 > 1)
            {
LABEL_39:
              if (v10 == 2)
              {
                *&result[v7] = v13;
              }

              else
              {
                *&result[v7] = v13;
              }

              return result;
            }
          }

          else
          {
            *v17 = v11;
            if (v10 > 1)
            {
              goto LABEL_39;
            }
          }

          goto LABEL_36;
        }

        *v17 = v16;
        v17[2] = BYTE2(v16);
      }

      if (v10 > 1)
      {
        goto LABEL_39;
      }
    }

    else
    {
      v12 = result;
      bzero(result, v7);
      result = v12;
      *v12 = v11;
      v13 = 1;
      if (v10 > 1)
      {
        goto LABEL_39;
      }
    }

LABEL_36:
    if (v10)
    {
      result[v7] = v13;
    }

    return result;
  }

  if (v10 > 1)
  {
    if (v10 != 2)
    {
      *&result[v7] = 0;
      if (!a2)
      {
        return result;
      }

      goto LABEL_28;
    }

    *&result[v7] = 0;
  }

  else if (v10)
  {
    result[v7] = 0;
    if (!a2)
    {
      return result;
    }

    goto LABEL_28;
  }

  if (!a2)
  {
    return result;
  }

LABEL_28:
  v18 = *(v5 + 56);

  return v18();
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<TipView<AnyTip>, _TraitWritingModifier<ListRowBackgroundTraitKey>>, _TraitWritingModifier<ListRowInsetsTraitKey>> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<TipView<AnyTip>, _TraitWritingModifier<ListRowBackgroundTraitKey>>, _TraitWritingModifier<ListRowInsetsTraitKey>> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<TipView<AnyTip>, _TraitWritingModifier<ListRowBackgroundTraitKey>>, _TraitWritingModifier<ListRowInsetsTraitKey>> and conformance <> ModifiedContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyACy6TipKit0E4ViewVyAD03AnyE0VGAA21_TraitWritingModifierVyAA017ListRowBackgroundI3KeyVGGAKyAA0lm6InsetsiO0VGGMd);
    lazy protocol witness table accessor for type ModifiedContent<TipView<AnyTip>, _TraitWritingModifier<ListRowBackgroundTraitKey>> and conformance <> ModifiedContent<A, B>();
    lazy protocol witness table accessor for type TipView<AnyTip> and conformance TipView<A>(&lazy protocol witness table cache variable for type _TraitWritingModifier<ListRowInsetsTraitKey> and conformance _TraitWritingModifier<A>, &_s7SwiftUI21_TraitWritingModifierVyAA013ListRowInsetsC3KeyVGMd);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<TipView<AnyTip>, _TraitWritingModifier<ListRowBackgroundTraitKey>>, _TraitWritingModifier<ListRowInsetsTraitKey>> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<TipView<AnyTip>, _TraitWritingModifier<ListRowBackgroundTraitKey>> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<TipView<AnyTip>, _TraitWritingModifier<ListRowBackgroundTraitKey>> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<TipView<AnyTip>, _TraitWritingModifier<ListRowBackgroundTraitKey>> and conformance <> ModifiedContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVy6TipKit0E4ViewVyAD03AnyE0VGAA21_TraitWritingModifierVyAA017ListRowBackgroundI3KeyVGGMd);
    lazy protocol witness table accessor for type TipView<AnyTip> and conformance TipView<A>(&lazy protocol witness table cache variable for type TipView<AnyTip> and conformance TipView<A>, &_s6TipKit0A4ViewVyAA03AnyA0VGMd);
    lazy protocol witness table accessor for type TipView<AnyTip> and conformance TipView<A>(&lazy protocol witness table cache variable for type _TraitWritingModifier<ListRowBackgroundTraitKey> and conformance _TraitWritingModifier<A>, &_s7SwiftUI21_TraitWritingModifierVyAA017ListRowBackgroundC3KeyVGMd);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<TipView<AnyTip>, _TraitWritingModifier<ListRowBackgroundTraitKey>> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

uint64_t lazy protocol witness table accessor for type TipView<AnyTip> and conformance TipView<A>(unint64_t *a1, uint64_t *a2)
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

uint64_t StepType.scaleableImage.getter()
{
  v1 = type metadata accessor for StepType();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = &v12 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v2 + 16))(v4, v0, v1);
  v5 = (*(v2 + 88))(v4, v1);
  if (v5 == *MEMORY[0x277D7E710])
  {
    v6 = 0xE400000000000000;
    v7 = 1802661751;
  }

  else if (v5 == *MEMORY[0x277D7E708])
  {
    v6 = 0xE800000000000000;
    v7 = 0x797265766F636572;
  }

  else if (v5 == *MEMORY[0x277D7E718])
  {
    v6 = 0xE600000000000000;
    v7 = 0x70756D726177;
  }

  else
  {
    if (v5 != *MEMORY[0x277D7E720])
    {
      goto LABEL_14;
    }

    v6 = 0xE800000000000000;
    v7 = 0x6E776F646C6F6F63;
  }

  if (one-time initialization token for WorkoutUIBundle != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v8 = WorkoutUIBundle.super.isa;
  v9 = MEMORY[0x20F30BAD0](v7, v6);

  v10 = [objc_opt_self() imageNamed:v9 inBundle:v8];

  if (v10)
  {
    return v10;
  }

  __break(1u);
LABEL_14:
  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

uint64_t StepType.symbolName.getter()
{
  v1 = 0x2E6E6F7276656863;
  v2 = type metadata accessor for StepType();
  v3 = *(v2 - 8);
  v4 = MEMORY[0x28223BE20](v2);
  v6 = &v9 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v3 + 16))(v6, v0, v2, v4);
  v7 = (*(v3 + 88))(v6, v2);
  if (v7 == *MEMORY[0x277D7E710] || v7 == *MEMORY[0x277D7E708])
  {
    return v1;
  }

  if (v7 == *MEMORY[0x277D7E718])
  {
    return 0xD00000000000001BLL;
  }

  if (v7 == *MEMORY[0x277D7E720])
  {
    return 0xD00000000000001DLL;
  }

  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

uint64_t StepDetailView.init(step:formattingManager:compressed:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  *a3 = result;
  a3[1] = a2;
  a3[2] = 0;
  return result;
}

uint64_t WorkoutStep.targetIconName.getter()
{
  v0 = type metadata accessor for TargetZone.ZoneType();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v10 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (WorkoutStep.activeTargetZone.getter())
  {
    TargetZone.type.getter();
    v4 = (*(v1 + 88))(v3, v0);
    v5 = *MEMORY[0x277D7DE68];
    v6 = *MEMORY[0x277D7DE50];

    if (v4 == v5 || v4 == v6)
    {
      return 0x6C69662E746C6F62;
    }

    else
    {
      (*(v1 + 8))(v3, v0);
      return 0xD00000000000001BLL;
    }
  }

  else
  {
    v8 = WorkoutStep.activeHeartRateTargetZone.getter();
    if (v8)
    {

      return 0x69662E7472616568;
    }

    else
    {
      result = WorkoutStep.activePowerZonesAlertTargetZone.getter();
      if (result)
      {

        return 0x6C69662E746C6F62;
      }
    }
  }

  return result;
}

uint64_t StepDetailView.stepDetailView(step:)@<X0>(uint64_t a1@<X8>)
{
  v109 = a1;
  v107 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI19_ConditionalContentV7StorageOyAA08ModifiedD0VyAA4ViewPAAE20accessibilityElement8childrenQrAA26AccessibilityChildBehaviorV_tFQOyAA4TextV_Qo_AA0K18AttachmentModifierVGAS_GMd);
  MEMORY[0x28223BE20](v107);
  v108 = &v91 - v2;
  v99 = type metadata accessor for AccessibilityChildBehavior();
  v98 = *(v99 - 8);
  MEMORY[0x28223BE20](v99);
  v4 = &v91 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for LocalizedStringKey.StringInterpolation();
  MEMORY[0x28223BE20](v5 - 8);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI4ViewPAAE20accessibilityElement8childrenQrAA26AccessibilityChildBehaviorV_tFQOyAA4TextV_Qo_Md);
  v103 = *(v6 - 8);
  v104 = v6;
  MEMORY[0x28223BE20](v6);
  v102 = &v91 - v7;
  v105 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyAA4ViewPAAE20accessibilityElement8childrenQrAA26AccessibilityChildBehaviorV_tFQOyAA4TextV_Qo_AA0I18AttachmentModifierVGMd);
  MEMORY[0x28223BE20](v105);
  v106 = &v91 - v8;
  v9 = type metadata accessor for StepType();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v100 = &v91 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v14 = &v91 - v13;
  MEMORY[0x28223BE20](v15);
  v17 = &v91 - v16;
  v18 = *(v1 + 8);
  WorkoutStep.stepType.getter();
  (*(v10 + 16))(v14, v17, v9);
  v19 = (*(v10 + 88))(v14, v9);
  if (v19 == *MEMORY[0x277D7E710] || v19 == *MEMORY[0x277D7E708] || v19 == *MEMORY[0x277D7E718] || v19 == *MEMORY[0x277D7E720])
  {
    v20 = *(v10 + 8);
    v96 = v9;
    v97 = v20;
    v20(v17, v9);
    v21 = Image.init(_internalSystemName:)();
    v22 = WorkoutStep.goal.getter();
    v23 = WorkoutStep.activityType.getter();
    FIUIDistanceTypeForActivityType();

    v24 = NLSessionActivityGoal.intervalDisplayString(formattingManager:distanceType:)();
    v26 = v25;

    active = WorkoutStep.hasActiveTargetZone.getter();
    v101 = v21;
    v95 = v26;
    if ((active & 1) != 0 && (v28 = WorkoutStep.alertDisplayString(formattingManager:)(v18), v29))
    {
      v30 = v29;
      v94 = v28;
      WorkoutStep.targetIconName.getter();
      v31 = Image.init(_internalSystemName:)();
      LocalizedStringKey.StringInterpolation.init(literalCapacity:interpolationCount:)();
      v32._countAndFlagsBits = 0;
      v32._object = 0xE000000000000000;
      LocalizedStringKey.StringInterpolation.appendLiteral(_:)(v32);
      LocalizedStringKey.StringInterpolation.appendInterpolation(_:)();
      v33._countAndFlagsBits = 32;
      v33._object = 0xE100000000000000;
      LocalizedStringKey.StringInterpolation.appendLiteral(_:)(v33);
      v91 = v24;
      v34._countAndFlagsBits = v24;
      v34._object = v26;
      LocalizedStringKey.StringInterpolation.appendInterpolation(_:)(v34);
      v35._countAndFlagsBits = 8236;
      v35._object = 0xE200000000000000;
      LocalizedStringKey.StringInterpolation.appendLiteral(_:)(v35);
      v93 = v31;
      LocalizedStringKey.StringInterpolation.appendInterpolation(_:)();
      v36._countAndFlagsBits = 32;
      v36._object = 0xE100000000000000;
      LocalizedStringKey.StringInterpolation.appendLiteral(_:)(v36);
      v37._countAndFlagsBits = v94;
      v92 = v30;
      v37._object = v30;
      LocalizedStringKey.StringInterpolation.appendInterpolation(_:)(v37);
      v38._countAndFlagsBits = 0;
      v38._object = 0xE000000000000000;
      LocalizedStringKey.StringInterpolation.appendLiteral(_:)(v38);
      LocalizedStringKey.init(stringInterpolation:)();
      v39 = Text.init(_:tableName:bundle:comment:)();
      v41 = v40;
      v114 = v39;
      v115 = v40;
      v43 = v42 & 1;
      v116 = v42 & 1;
      v117 = v44;
      static AccessibilityChildBehavior.ignore.getter();
      v45 = v102;
      View.accessibilityElement(children:)();
      (*(v98 + 8))(v4, v99);
      outlined consume of Text.Storage(v39, v41, v43);

      if (one-time initialization token for WorkoutUIBundle != -1)
      {
        swift_once();
      }

      swift_beginAccess();
      v46 = WorkoutUIBundle.super.isa;
      v118._object = 0xE000000000000000;
      v47._object = 0x800000020CB9E1C0;
      v47._countAndFlagsBits = 0xD00000000000001BLL;
      v48.value._countAndFlagsBits = 0x617A696C61636F4CLL;
      v48.value._object = 0xEB00000000656C62;
      v49._countAndFlagsBits = 0;
      v49._object = 0xE000000000000000;
      v118._countAndFlagsBits = 0;
      NSLocalizedString(_:tableName:bundle:value:comment:)(v47, v48, v46, v49, v118);

      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys7CVarArg_pGMd);
      v50 = swift_allocObject();
      *(v50 + 16) = xmmword_20CB5EA80;
      v51 = v100;
      WorkoutStep.stepType.getter();
      v52 = StepType.displayString.getter();
      v54 = v53;
      v97(v51, v96);
      v55 = MEMORY[0x277D837D0];
      *(v50 + 56) = MEMORY[0x277D837D0];
      v56 = lazy protocol witness table accessor for type String and conformance String();
      *(v50 + 32) = v52;
      *(v50 + 40) = v54;
      *(v50 + 96) = v55;
      *(v50 + 104) = v56;
      v57 = v91;
      *(v50 + 64) = v56;
      *(v50 + 72) = v57;
      *(v50 + 80) = v95;
      *(v50 + 136) = v55;
      *(v50 + 144) = v56;
      v58 = v92;
      *(v50 + 112) = v94;
      *(v50 + 120) = v58;
      v59 = String.init(format:_:)();
      v61 = v60;

      v112 = v59;
      v113 = v61;
      v110 = MEMORY[0x277CE0BD8];
      v111 = MEMORY[0x277CE0BC8];
      swift_getOpaqueTypeConformance2();
      lazy protocol witness table accessor for type String and conformance String();
      v62 = v106;
      v63 = v104;
      View.accessibilityLabel<A>(_:)();

      (*(v103 + 8))(v45, v63);
      outlined init with copy of VStack<TupleView<(ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Text, _EnvironmentKeyWritingModifier<Int?>>, _EnvironmentKeyWritingModifier<Font?>>, _FixedSizeLayout>, _EnvironmentKeyWritingModifier<CGFloat>>, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<_ConditionalContent<ModifiedContent<<<opaque return type of View.accessibilityElement(children:)>>.0, AccessibilityAttachmentModifier>, ModifiedContent<<<opaque return type of View.accessibilityElement(children:)>>.0, AccessibilityAttachmentModifier>>, _EnvironmentKeyWritingModifier<Int?>>, _EnvironmentKeyWritingModifier<Image.Scale>>, _EnvironmentKeyWritingModifier<Font?>>, _FixedSizeLayout>, _EnvironmentKeyWritingModifier<CGFloat>>)>>(v62, v108, &_s7SwiftUI15ModifiedContentVyAA4ViewPAAE20accessibilityElement8childrenQrAA26AccessibilityChildBehaviorV_tFQOyAA4TextV_Qo_AA0I18AttachmentModifierVGMd);
      swift_storeEnumTagMultiPayload();
      lazy protocol witness table accessor for type ModifiedContent<<<opaque return type of View.accessibilityElement(children:)>>.0, AccessibilityAttachmentModifier> and conformance <> ModifiedContent<A, B>();
      _ConditionalContent<>.init(storage:)();
    }

    else
    {
      LocalizedStringKey.StringInterpolation.init(literalCapacity:interpolationCount:)();
      v64._countAndFlagsBits = 0;
      v64._object = 0xE000000000000000;
      LocalizedStringKey.StringInterpolation.appendLiteral(_:)(v64);
      LocalizedStringKey.StringInterpolation.appendInterpolation(_:)();
      v65._countAndFlagsBits = 32;
      v65._object = 0xE100000000000000;
      LocalizedStringKey.StringInterpolation.appendLiteral(_:)(v65);
      v66._countAndFlagsBits = v24;
      v66._object = v26;
      LocalizedStringKey.StringInterpolation.appendInterpolation(_:)(v66);
      v67._countAndFlagsBits = 0;
      v67._object = 0xE000000000000000;
      LocalizedStringKey.StringInterpolation.appendLiteral(_:)(v67);
      LocalizedStringKey.init(stringInterpolation:)();
      v68 = Text.init(_:tableName:bundle:comment:)();
      v70 = v69;
      v114 = v68;
      v115 = v69;
      v72 = v71 & 1;
      v116 = v71 & 1;
      v117 = v73;
      static AccessibilityChildBehavior.ignore.getter();
      v74 = v102;
      View.accessibilityElement(children:)();
      (*(v98 + 8))(v4, v99);
      outlined consume of Text.Storage(v68, v70, v72);

      if (one-time initialization token for WorkoutUIBundle != -1)
      {
        swift_once();
      }

      swift_beginAccess();
      v75 = WorkoutUIBundle.super.isa;
      v76._countAndFlagsBits = 0xD000000000000014;
      v119._object = 0xE000000000000000;
      v76._object = 0x800000020CB9E1A0;
      v77.value._countAndFlagsBits = 0x617A696C61636F4CLL;
      v77.value._object = 0xEB00000000656C62;
      v78._countAndFlagsBits = 0;
      v78._object = 0xE000000000000000;
      v119._countAndFlagsBits = 0;
      NSLocalizedString(_:tableName:bundle:value:comment:)(v76, v77, v75, v78, v119);

      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys7CVarArg_pGMd);
      v79 = swift_allocObject();
      *(v79 + 16) = xmmword_20CB5DA80;
      v80 = v100;
      WorkoutStep.stepType.getter();
      v81 = StepType.displayString.getter();
      v83 = v82;
      v97(v80, v96);
      v84 = MEMORY[0x277D837D0];
      *(v79 + 56) = MEMORY[0x277D837D0];
      v85 = lazy protocol witness table accessor for type String and conformance String();
      *(v79 + 32) = v81;
      *(v79 + 40) = v83;
      *(v79 + 96) = v84;
      *(v79 + 104) = v85;
      *(v79 + 64) = v85;
      *(v79 + 72) = v24;
      *(v79 + 80) = v95;
      v86 = String.init(format:_:)();
      v88 = v87;

      v112 = v86;
      v113 = v88;
      v110 = MEMORY[0x277CE0BD8];
      v111 = MEMORY[0x277CE0BC8];
      swift_getOpaqueTypeConformance2();
      lazy protocol witness table accessor for type String and conformance String();
      v62 = v106;
      v89 = v104;
      View.accessibilityLabel<A>(_:)();

      (*(v103 + 8))(v74, v89);
      outlined init with copy of VStack<TupleView<(ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Text, _EnvironmentKeyWritingModifier<Int?>>, _EnvironmentKeyWritingModifier<Font?>>, _FixedSizeLayout>, _EnvironmentKeyWritingModifier<CGFloat>>, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<_ConditionalContent<ModifiedContent<<<opaque return type of View.accessibilityElement(children:)>>.0, AccessibilityAttachmentModifier>, ModifiedContent<<<opaque return type of View.accessibilityElement(children:)>>.0, AccessibilityAttachmentModifier>>, _EnvironmentKeyWritingModifier<Int?>>, _EnvironmentKeyWritingModifier<Image.Scale>>, _EnvironmentKeyWritingModifier<Font?>>, _FixedSizeLayout>, _EnvironmentKeyWritingModifier<CGFloat>>)>>(v62, v108, &_s7SwiftUI15ModifiedContentVyAA4ViewPAAE20accessibilityElement8childrenQrAA26AccessibilityChildBehaviorV_tFQOyAA4TextV_Qo_AA0I18AttachmentModifierVGMd);
      swift_storeEnumTagMultiPayload();
      lazy protocol witness table accessor for type ModifiedContent<<<opaque return type of View.accessibilityElement(children:)>>.0, AccessibilityAttachmentModifier> and conformance <> ModifiedContent<A, B>();
      _ConditionalContent<>.init(storage:)();
    }

    return outlined destroy of VStack<TupleView<(ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Text, _EnvironmentKeyWritingModifier<Int?>>, _EnvironmentKeyWritingModifier<Font?>>, _FixedSizeLayout>, _EnvironmentKeyWritingModifier<CGFloat>>, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<_ConditionalContent<ModifiedContent<<<opaque return type of View.accessibilityElement(children:)>>.0, AccessibilityAttachmentModifier>, ModifiedContent<<<opaque return type of View.accessibilityElement(children:)>>.0, AccessibilityAttachmentModifier>>, _EnvironmentKeyWritingModifier<Int?>>, _EnvironmentKeyWritingModifier<Image.Scale>>, _EnvironmentKeyWritingModifier<Font?>>, _FixedSizeLayout>, _EnvironmentKeyWritingModifier<CGFloat>>)>>(v62, &_s7SwiftUI15ModifiedContentVyAA4ViewPAAE20accessibilityElement8childrenQrAA26AccessibilityChildBehaviorV_tFQOyAA4TextV_Qo_AA0I18AttachmentModifierVGMd);
  }

  else
  {
    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  return result;
}

uint64_t WorkoutStep.alertDisplayString(formattingManager:)(uint64_t a1)
{
  v29 = a1;
  v1 = type metadata accessor for PowerZonesAlertZoneType();
  v28 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v3 = &v26 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v6 = &v26 - v5;
  v7 = type metadata accessor for HeartRateZoneType();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v26 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v13 = &v26 - v12;
  if (WorkoutStep.activeTargetZone.getter())
  {
    v14 = WorkoutStep.activityType.getter();
    v15 = TargetZone.displayString(formattingManager:activityType:)();

LABEL_9:

    return v15;
  }

  v26 = v6;
  v27 = v3;
  v16 = WorkoutStep.heartRateTargetZoneWithDefault.getter();
  HeartRateTargetZone.type.getter();

  (*(v8 + 104))(v10, *MEMORY[0x277D7E138], v7);
  _s11WorkoutCore17HeartRateZoneTypeOACSQAAWlTm_0(&lazy protocol witness table cache variable for type HeartRateZoneType and conformance HeartRateZoneType, MEMORY[0x277D7E150]);
  LOBYTE(v16) = dispatch thunk of static Equatable.== infix(_:_:)();
  v17 = *(v8 + 8);
  v17(v10, v7);
  v17(v13, v7);
  if ((v16 & 1) == 0)
  {
    v23 = WorkoutStep.heartRateTargetZoneWithDefault.getter();
    v14 = WorkoutStep.activityType.getter();
    v24 = MEMORY[0x20F305B10](v29, v14);
LABEL_8:
    v15 = v24;

    goto LABEL_9;
  }

  v18 = WorkoutStep.powerZonesAlertTargetZoneWithDefault.getter();
  v19 = v26;
  dispatch thunk of PowerZonesAlertTargetZone.type.getter();

  v21 = v27;
  v20 = v28;
  (*(v28 + 104))(v27, *MEMORY[0x277D7E418], v1);
  _s11WorkoutCore17HeartRateZoneTypeOACSQAAWlTm_0(&lazy protocol witness table cache variable for type PowerZonesAlertZoneType and conformance PowerZonesAlertZoneType, MEMORY[0x277D7E438]);
  LOBYTE(v18) = dispatch thunk of static Equatable.== infix(_:_:)();
  v22 = *(v20 + 8);
  v22(v21, v1);
  v22(v19, v1);
  if ((v18 & 1) == 0)
  {
    v23 = WorkoutStep.powerZonesAlertTargetZoneWithDefault.getter();
    v14 = WorkoutStep.activityType.getter();
    v24 = PowerZonesAlertTargetZone.displayString(formattingManager:activityType:)();
    goto LABEL_8;
  }

  return 0;
}

uint64_t StepDetailView.body.getter@<X0>(uint64_t a1@<X8>)
{
  v28 = a1;
  v2 = type metadata accessor for Font.PrivateDesign();
  v27 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v4 = v26 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyACyACyAA6HStackVyAA9TupleViewVyACyACyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAI5ScaleOGGAA023AccessibilityAttachmentL0VG_ACyAA4TextVAKySiSgGGtGGAKyAA4FontVSgGGAA16_FixedSizeLayoutVGAKy12CoreGraphics7CGFloatVGGMd);
  MEMORY[0x28223BE20](v5);
  v7 = v26 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI19_ConditionalContentV7StorageOyAA6VStackVyAA9TupleViewVyAA08ModifiedD0VyAKyAKyAKyAA4TextVAA30_EnvironmentKeyWritingModifierVySiSgGGAOyAA4FontVSgGGAA16_FixedSizeLayoutVGAOy12CoreGraphics7CGFloatVGG_AKyAKyAKyAKyAKyACyAKyAA0H0PAAE20accessibilityElement8childrenQrAA26AccessibilityChildBehaviorV_tFQOyAM_Qo_AA0y10AttachmentN0VGA13_GAQGAOyAA5ImageV5ScaleOGGAVGAYGA2_GtGGAKyAKyAKyAA6HStackVyAIyAKyAKyA17_A20_GA12_G_ARtGGAVGAYGA2_G_GMd);
  MEMORY[0x28223BE20](v8);
  v10 = v26 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI6VStackVyAA9TupleViewVyAA15ModifiedContentVyAGyAGyAGyAA4TextVAA30_EnvironmentKeyWritingModifierVySiSgGGAKyAA4FontVSgGGAA16_FixedSizeLayoutVGAKy12CoreGraphics7CGFloatVGG_AGyAGyAGyAGyAGyAA012_ConditionalG0VyAGyAA0E0PAAE20accessibilityElement8childrenQrAA26AccessibilityChildBehaviorV_tFQOyAI_Qo_AA0x10AttachmentL0VGA11_GAMGAKyAA5ImageV5ScaleOGGARGAUGAZGtGGMd);
  MEMORY[0x28223BE20](v11);
  v13 = (v26 - v12);
  v14 = *v1;
  if (*v1)
  {
    v15 = *(v1 + 2);
    v16 = v1[1];

    *v13 = static HorizontalAlignment.leading.getter();
    v13[1] = v15;
    *(v13 + 16) = 0;
    v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI13_VariadicViewO4TreeVy_AA13_VStackLayoutVAA05TupleD0VyAA15ModifiedContentVyAKyAKyAKyAA4TextVAA30_EnvironmentKeyWritingModifierVySiSgGGAOyAA4FontVSgGGAA010_FixedSizeG0VGAOy12CoreGraphics7CGFloatVGG_AKyAKyAKyAKyAKyAA012_ConditionalJ0VyAKyAA0D0PAAE20accessibilityElement8childrenQrAA26AccessibilityChildBehaviorV_tFQOyAM_Qo_AA0z10AttachmentO0VGA15_GAQGAOyAA5ImageV5ScaleOGGAVGAYGA2_GtGGMd);
    closure #1 in StepDetailView.body.getter(v14, v16, (v13 + *(v17 + 44)), v15);
    outlined init with copy of VStack<TupleView<(ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Text, _EnvironmentKeyWritingModifier<Int?>>, _EnvironmentKeyWritingModifier<Font?>>, _FixedSizeLayout>, _EnvironmentKeyWritingModifier<CGFloat>>, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<_ConditionalContent<ModifiedContent<<<opaque return type of View.accessibilityElement(children:)>>.0, AccessibilityAttachmentModifier>, ModifiedContent<<<opaque return type of View.accessibilityElement(children:)>>.0, AccessibilityAttachmentModifier>>, _EnvironmentKeyWritingModifier<Int?>>, _EnvironmentKeyWritingModifier<Image.Scale>>, _EnvironmentKeyWritingModifier<Font?>>, _FixedSizeLayout>, _EnvironmentKeyWritingModifier<CGFloat>>)>>(v13, v10, &_s7SwiftUI6VStackVyAA9TupleViewVyAA15ModifiedContentVyAGyAGyAGyAA4TextVAA30_EnvironmentKeyWritingModifierVySiSgGGAKyAA4FontVSgGGAA16_FixedSizeLayoutVGAKy12CoreGraphics7CGFloatVGG_AGyAGyAGyAGyAGyAA012_ConditionalG0VyAGyAA0E0PAAE20accessibilityElement8childrenQrAA26AccessibilityChildBehaviorV_tFQOyAI_Qo_AA0x10AttachmentL0VGA11_GAMGAKyAA5ImageV5ScaleOGGARGAUGAZGtGGMd);
    swift_storeEnumTagMultiPayload();
    lazy protocol witness table accessor for type VStack<TupleView<(ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Text, _EnvironmentKeyWritingModifier<Int?>>, _EnvironmentKeyWritingModifier<Font?>>, _FixedSizeLayout>, _EnvironmentKeyWritingModifier<CGFloat>>, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<_ConditionalContent<ModifiedContent<<<opaque return type of View.accessibilityElement(children:)>>.0, AccessibilityAttachmentModifier>, ModifiedContent<<<opaque return type of View.accessibilityElement(children:)>>.0, AccessibilityAttachmentModifier>>, _EnvironmentKeyWritingModifier<Int?>>, _EnvironmentKeyWritingModifier<Image.Scale>>, _EnvironmentKeyWritingModifier<Font?>>, _FixedSizeLayout>, _EnvironmentKeyWritingModifier<CGFloat>>)>> and conformance VStack<A>(&lazy protocol witness table cache variable for type VStack<TupleView<(ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Text, _EnvironmentKeyWritingModifier<Int?>>, _EnvironmentKeyWritingModifier<Font?>>, _FixedSizeLayout>, _EnvironmentKeyWritingModifier<CGFloat>>, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<_ConditionalContent<ModifiedContent<<<opaque return type of View.accessibilityElement(children:)>>.0, AccessibilityAttachmentModifier>, ModifiedContent<<<opaque return type of View.accessibilityElement(children:)>>.0, AccessibilityAttachmentModifier>>, _EnvironmentKeyWritingModifier<Int?>>, _EnvironmentKeyWritingModifier<Image.Scale>>, _EnvironmentKeyWritingModifier<Font?>>, _FixedSizeLayout>, _EnvironmentKeyWritingModifier<CGFloat>>)>> and conformance VStack<A>, &_s7SwiftUI6VStackVyAA9TupleViewVyAA15ModifiedContentVyAGyAGyAGyAA4TextVAA30_EnvironmentKeyWritingModifierVySiSgGGAKyAA4FontVSgGGAA16_FixedSizeLayoutVGAKy12CoreGraphics7CGFloatVGG_AGyAGyAGyAGyAGyAA012_ConditionalG0VyAGyAA0E0PAAE20accessibilityElement8childrenQrAA26AccessibilityChildBehaviorV_tFQOyAI_Qo_AA0x10AttachmentL0VGA11_GAMGAKyAA5ImageV5ScaleOGGARGAUGAZGtGGMd);
    lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<ModifiedContent<HStack<TupleView<(ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Image.Scale>>, AccessibilityAttachmentModifier>, ModifiedContent<Text, _EnvironmentKeyWritingModifier<Int?>>)>>, _EnvironmentKeyWritingModifier<Font?>>, _FixedSizeLayout>, _EnvironmentKeyWritingModifier<CGFloat>> and conformance <> ModifiedContent<A, B>();
    _ConditionalContent<>.init(storage:)();

    return outlined destroy of VStack<TupleView<(ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Text, _EnvironmentKeyWritingModifier<Int?>>, _EnvironmentKeyWritingModifier<Font?>>, _FixedSizeLayout>, _EnvironmentKeyWritingModifier<CGFloat>>, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<_ConditionalContent<ModifiedContent<<<opaque return type of View.accessibilityElement(children:)>>.0, AccessibilityAttachmentModifier>, ModifiedContent<<<opaque return type of View.accessibilityElement(children:)>>.0, AccessibilityAttachmentModifier>>, _EnvironmentKeyWritingModifier<Int?>>, _EnvironmentKeyWritingModifier<Image.Scale>>, _EnvironmentKeyWritingModifier<Font?>>, _FixedSizeLayout>, _EnvironmentKeyWritingModifier<CGFloat>>)>>(v13, &_s7SwiftUI6VStackVyAA9TupleViewVyAA15ModifiedContentVyAGyAGyAGyAA4TextVAA30_EnvironmentKeyWritingModifierVySiSgGGAKyAA4FontVSgGGAA16_FixedSizeLayoutVGAKy12CoreGraphics7CGFloatVGG_AGyAGyAGyAGyAGyAA012_ConditionalG0VyAGyAA0E0PAAE20accessibilityElement8childrenQrAA26AccessibilityChildBehaviorV_tFQOyAI_Qo_AA0x10AttachmentL0VGA11_GAMGAKyAA5ImageV5ScaleOGGARGAUGAZGtGGMd);
  }

  else
  {
    v19 = v27;
    v26[1] = v11;
    *v7 = static VerticalAlignment.center.getter();
    *(v7 + 1) = 0;
    v7[16] = 1;
    v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI13_VariadicViewO4TreeVy_AA13_HStackLayoutVAA05TupleD0VyAA15ModifiedContentVyAKyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAM5ScaleOGGAA023AccessibilityAttachmentO0VG_AKyAA4TextVAOySiSgGGtGGMd);
    closure #2 in StepDetailView.body.getter(&v7[*(v20 + 44)]);
    if (one-time initialization token for stepNameFontSize != -1)
    {
      swift_once();
    }

    static Font.Weight.medium.getter();
    static Font.PrivateDesign.compactRounded.getter();
    v21 = static Font.system(size:weight:design:)();
    (*(v19 + 8))(v4, v2);
    KeyPath = swift_getKeyPath();
    v23 = &v7[*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyAA6HStackVyAA9TupleViewVyACyACyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAI5ScaleOGGAA023AccessibilityAttachmentL0VG_ACyAA4TextVAKySiSgGGtGGAKyAA4FontVSgGGMd) + 36)];
    *v23 = KeyPath;
    v23[1] = v21;
    *&v7[*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyACyAA6HStackVyAA9TupleViewVyACyACyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAI5ScaleOGGAA023AccessibilityAttachmentL0VG_ACyAA4TextVAKySiSgGGtGGAKyAA4FontVSgGGAA16_FixedSizeLayoutVGMd) + 36)] = 256;
    v24 = swift_getKeyPath();
    v25 = &v7[*(v5 + 36)];
    *v25 = v24;
    v25[1] = 0x3FE0000000000000;
    outlined init with copy of ModifiedContent<ModifiedContent<ModifiedContent<HStack<TupleView<(ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Image.Scale>>, AccessibilityAttachmentModifier>, ModifiedContent<Text, _EnvironmentKeyWritingModifier<Int?>>)>>, _EnvironmentKeyWritingModifier<Font?>>, _FixedSizeLayout>, _EnvironmentKeyWritingModifier<CGFloat>>(v7, v10, &_s7SwiftUI15ModifiedContentVyACyACyAA6HStackVyAA9TupleViewVyACyACyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAI5ScaleOGGAA023AccessibilityAttachmentL0VG_ACyAA4TextVAKySiSgGGtGGAKyAA4FontVSgGGAA16_FixedSizeLayoutVGAKy12CoreGraphics7CGFloatVGGMd);
    swift_storeEnumTagMultiPayload();
    lazy protocol witness table accessor for type VStack<TupleView<(ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Text, _EnvironmentKeyWritingModifier<Int?>>, _EnvironmentKeyWritingModifier<Font?>>, _FixedSizeLayout>, _EnvironmentKeyWritingModifier<CGFloat>>, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<_ConditionalContent<ModifiedContent<<<opaque return type of View.accessibilityElement(children:)>>.0, AccessibilityAttachmentModifier>, ModifiedContent<<<opaque return type of View.accessibilityElement(children:)>>.0, AccessibilityAttachmentModifier>>, _EnvironmentKeyWritingModifier<Int?>>, _EnvironmentKeyWritingModifier<Image.Scale>>, _EnvironmentKeyWritingModifier<Font?>>, _FixedSizeLayout>, _EnvironmentKeyWritingModifier<CGFloat>>)>> and conformance VStack<A>(&lazy protocol witness table cache variable for type VStack<TupleView<(ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Text, _EnvironmentKeyWritingModifier<Int?>>, _EnvironmentKeyWritingModifier<Font?>>, _FixedSizeLayout>, _EnvironmentKeyWritingModifier<CGFloat>>, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<_ConditionalContent<ModifiedContent<<<opaque return type of View.accessibilityElement(children:)>>.0, AccessibilityAttachmentModifier>, ModifiedContent<<<opaque return type of View.accessibilityElement(children:)>>.0, AccessibilityAttachmentModifier>>, _EnvironmentKeyWritingModifier<Int?>>, _EnvironmentKeyWritingModifier<Image.Scale>>, _EnvironmentKeyWritingModifier<Font?>>, _FixedSizeLayout>, _EnvironmentKeyWritingModifier<CGFloat>>)>> and conformance VStack<A>, &_s7SwiftUI6VStackVyAA9TupleViewVyAA15ModifiedContentVyAGyAGyAGyAA4TextVAA30_EnvironmentKeyWritingModifierVySiSgGGAKyAA4FontVSgGGAA16_FixedSizeLayoutVGAKy12CoreGraphics7CGFloatVGG_AGyAGyAGyAGyAGyAA012_ConditionalG0VyAGyAA0E0PAAE20accessibilityElement8childrenQrAA26AccessibilityChildBehaviorV_tFQOyAI_Qo_AA0x10AttachmentL0VGA11_GAMGAKyAA5ImageV5ScaleOGGARGAUGAZGtGGMd);
    lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<ModifiedContent<HStack<TupleView<(ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Image.Scale>>, AccessibilityAttachmentModifier>, ModifiedContent<Text, _EnvironmentKeyWritingModifier<Int?>>)>>, _EnvironmentKeyWritingModifier<Font?>>, _FixedSizeLayout>, _EnvironmentKeyWritingModifier<CGFloat>> and conformance <> ModifiedContent<A, B>();
    _ConditionalContent<>.init(storage:)();
    return outlined destroy of ModifiedContent<ModifiedContent<ModifiedContent<HStack<TupleView<(ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Image.Scale>>, AccessibilityAttachmentModifier>, ModifiedContent<Text, _EnvironmentKeyWritingModifier<Int?>>)>>, _EnvironmentKeyWritingModifier<Font?>>, _FixedSizeLayout>, _EnvironmentKeyWritingModifier<CGFloat>>(v7, &_s7SwiftUI15ModifiedContentVyACyACyAA6HStackVyAA9TupleViewVyACyACyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAI5ScaleOGGAA023AccessibilityAttachmentL0VG_ACyAA4TextVAKySiSgGGtGGAKyAA4FontVSgGGAA16_FixedSizeLayoutVGAKy12CoreGraphics7CGFloatVGGMd);
  }
}

uint64_t closure #1 in StepDetailView.body.getter@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, _OWORD *a3@<X8>, double a4@<D0>)
{
  v46 = a2;
  v48 = a3;
  v50 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyACyACyACyACyAA012_ConditionalD0VyACyAA4ViewPAAE20accessibilityElement8childrenQrAA26AccessibilityChildBehaviorV_tFQOyAA4TextV_Qo_AA0J18AttachmentModifierVGAQGAA022_EnvironmentKeyWritingO0VySiSgGGATyAA5ImageV5ScaleOGGATyAA4FontVSgGGAA16_FixedSizeLayoutVGATy12CoreGraphics7CGFloatVGGMd);
  MEMORY[0x28223BE20](v50);
  v55 = &v45 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v9 = &v45 - v8;
  v10 = type metadata accessor for Font.PrivateDesign();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = &v45 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v67 = WorkoutStep.displayString.getter();
  v68 = v14;
  lazy protocol witness table accessor for type String and conformance String();
  v53 = Text.init<A>(_:)();
  v52 = v15;
  v17 = v16;
  v54 = v18;
  KeyPath = swift_getKeyPath();
  if (one-time initialization token for stepNameFontSize != -1)
  {
    swift_once();
  }

  static Font.Weight.medium.getter();
  static Font.PrivateDesign.compactRounded.getter();
  v49 = static Font.system(size:weight:design:)();
  v19 = *(v11 + 8);
  v19(v13, v10);
  v20 = swift_getKeyPath();
  v47 = v17 & 1;
  LOBYTE(v67) = v17 & 1;
  LOBYTE(v61) = 0;
  v56 = swift_getKeyPath();
  v67 = a1;
  v68 = v46;
  v69 = a4;
  StepDetailView.stepDetailView(step:)(v9);
  v21 = swift_getKeyPath();
  v22 = &v9[*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyAA012_ConditionalD0VyACyAA4ViewPAAE20accessibilityElement8childrenQrAA26AccessibilityChildBehaviorV_tFQOyAA4TextV_Qo_AA0J18AttachmentModifierVGAQGAA022_EnvironmentKeyWritingO0VySiSgGGMd) + 36)];
  *v22 = v21;
  *(v22 + 1) = 1;
  v22[16] = 0;
  v23 = &v9[*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyACyAA012_ConditionalD0VyACyAA4ViewPAAE20accessibilityElement8childrenQrAA26AccessibilityChildBehaviorV_tFQOyAA4TextV_Qo_AA0J18AttachmentModifierVGAQGAA022_EnvironmentKeyWritingO0VySiSgGGATyAA5ImageV5ScaleOGGMd) + 36)];
  v24 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI30_EnvironmentKeyWritingModifierVyAA5ImageV5ScaleOGMd) + 28);
  v25 = *MEMORY[0x277CE1050];
  v26 = type metadata accessor for Image.Scale();
  (*(*(v26 - 8) + 104))(v23 + v24, v25, v26);
  *v23 = swift_getKeyPath();
  if (one-time initialization token for stepDetailFontSize != -1)
  {
    swift_once();
  }

  static Font.Weight.semibold.getter();
  static Font.PrivateDesign.compactRounded.getter();
  v27 = static Font.system(size:weight:design:)();
  v19(v13, v10);
  v28 = swift_getKeyPath();
  v29 = &v9[*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyACyACyAA012_ConditionalD0VyACyAA4ViewPAAE20accessibilityElement8childrenQrAA26AccessibilityChildBehaviorV_tFQOyAA4TextV_Qo_AA0J18AttachmentModifierVGAQGAA022_EnvironmentKeyWritingO0VySiSgGGATyAA5ImageV5ScaleOGGATyAA4FontVSgGGMd) + 36)];
  *v29 = v28;
  v29[1] = v27;
  *&v9[*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyACyACyACyAA012_ConditionalD0VyACyAA4ViewPAAE20accessibilityElement8childrenQrAA26AccessibilityChildBehaviorV_tFQOyAA4TextV_Qo_AA0J18AttachmentModifierVGAQGAA022_EnvironmentKeyWritingO0VySiSgGGATyAA5ImageV5ScaleOGGATyAA4FontVSgGGAA16_FixedSizeLayoutVGMd) + 36)] = 256;
  v30 = swift_getKeyPath();
  v31 = &v9[*(v50 + 36)];
  *v31 = v30;
  v31[1] = 0x3FE8000000000000;
  v32 = v55;
  outlined init with copy of VStack<TupleView<(ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Text, _EnvironmentKeyWritingModifier<Int?>>, _EnvironmentKeyWritingModifier<Font?>>, _FixedSizeLayout>, _EnvironmentKeyWritingModifier<CGFloat>>, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<_ConditionalContent<ModifiedContent<<<opaque return type of View.accessibilityElement(children:)>>.0, AccessibilityAttachmentModifier>, ModifiedContent<<<opaque return type of View.accessibilityElement(children:)>>.0, AccessibilityAttachmentModifier>>, _EnvironmentKeyWritingModifier<Int?>>, _EnvironmentKeyWritingModifier<Image.Scale>>, _EnvironmentKeyWritingModifier<Font?>>, _FixedSizeLayout>, _EnvironmentKeyWritingModifier<CGFloat>>)>>(v9, v55, &_s7SwiftUI15ModifiedContentVyACyACyACyACyAA012_ConditionalD0VyACyAA4ViewPAAE20accessibilityElement8childrenQrAA26AccessibilityChildBehaviorV_tFQOyAA4TextV_Qo_AA0J18AttachmentModifierVGAQGAA022_EnvironmentKeyWritingO0VySiSgGGATyAA5ImageV5ScaleOGGATyAA4FontVSgGGAA16_FixedSizeLayoutVGATy12CoreGraphics7CGFloatVGGMd);
  v33 = v53;
  *&v61 = v53;
  v34 = v52;
  *(&v61 + 1) = v52;
  LOBYTE(v27) = v47;
  LOBYTE(v62) = v47;
  *(&v62 + 1) = *v58;
  DWORD1(v62) = *&v58[3];
  v35 = v54;
  *(&v62 + 1) = v54;
  v36 = KeyPath;
  *&v63 = KeyPath;
  *(&v63 + 1) = 1;
  LOBYTE(v64) = 0;
  *(&v64 + 1) = *v57;
  DWORD1(v64) = *&v57[3];
  *(&v64 + 1) = v20;
  v50 = v20;
  v37 = v49;
  *&v65 = v49;
  WORD4(v65) = 256;
  *(&v65 + 10) = v59;
  HIWORD(v65) = v60;
  *&v66 = v56;
  *(&v66 + 1) = 0x3FE8000000000000;
  v38 = v62;
  v39 = v48;
  *v48 = v61;
  v39[1] = v38;
  v40 = v63;
  v41 = v64;
  v42 = v66;
  v39[4] = v65;
  v39[5] = v42;
  v39[2] = v40;
  v39[3] = v41;
  v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyACyACyACyAA4TextVAA30_EnvironmentKeyWritingModifierVySiSgGGAGyAA4FontVSgGGAA16_FixedSizeLayoutVGAGy12CoreGraphics7CGFloatVGG_ACyACyACyACyACyAA012_ConditionalD0VyACyAA4ViewPAAE20accessibilityElement8childrenQrAA26AccessibilityChildBehaviorV_tFQOyAE_Qo_AA0v10AttachmentI0VGA7_GAIGAGyAA5ImageV5ScaleOGGANGAQGAVGtMd);
  outlined init with copy of VStack<TupleView<(ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Text, _EnvironmentKeyWritingModifier<Int?>>, _EnvironmentKeyWritingModifier<Font?>>, _FixedSizeLayout>, _EnvironmentKeyWritingModifier<CGFloat>>, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<_ConditionalContent<ModifiedContent<<<opaque return type of View.accessibilityElement(children:)>>.0, AccessibilityAttachmentModifier>, ModifiedContent<<<opaque return type of View.accessibilityElement(children:)>>.0, AccessibilityAttachmentModifier>>, _EnvironmentKeyWritingModifier<Int?>>, _EnvironmentKeyWritingModifier<Image.Scale>>, _EnvironmentKeyWritingModifier<Font?>>, _FixedSizeLayout>, _EnvironmentKeyWritingModifier<CGFloat>>)>>(v32, v39 + *(v43 + 48), &_s7SwiftUI15ModifiedContentVyACyACyACyACyAA012_ConditionalD0VyACyAA4ViewPAAE20accessibilityElement8childrenQrAA26AccessibilityChildBehaviorV_tFQOyAA4TextV_Qo_AA0J18AttachmentModifierVGAQGAA022_EnvironmentKeyWritingO0VySiSgGGATyAA5ImageV5ScaleOGGATyAA4FontVSgGGAA16_FixedSizeLayoutVGATy12CoreGraphics7CGFloatVGGMd);
  outlined init with copy of ModifiedContent<ModifiedContent<ModifiedContent<HStack<TupleView<(ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Image.Scale>>, AccessibilityAttachmentModifier>, ModifiedContent<Text, _EnvironmentKeyWritingModifier<Int?>>)>>, _EnvironmentKeyWritingModifier<Font?>>, _FixedSizeLayout>, _EnvironmentKeyWritingModifier<CGFloat>>(&v61, &v67, &_s7SwiftUI15ModifiedContentVyACyACyACyAA4TextVAA30_EnvironmentKeyWritingModifierVySiSgGGAGyAA4FontVSgGGAA16_FixedSizeLayoutVGAGy12CoreGraphics7CGFloatVGGMd);
  outlined destroy of VStack<TupleView<(ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Text, _EnvironmentKeyWritingModifier<Int?>>, _EnvironmentKeyWritingModifier<Font?>>, _FixedSizeLayout>, _EnvironmentKeyWritingModifier<CGFloat>>, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<_ConditionalContent<ModifiedContent<<<opaque return type of View.accessibilityElement(children:)>>.0, AccessibilityAttachmentModifier>, ModifiedContent<<<opaque return type of View.accessibilityElement(children:)>>.0, AccessibilityAttachmentModifier>>, _EnvironmentKeyWritingModifier<Int?>>, _EnvironmentKeyWritingModifier<Image.Scale>>, _EnvironmentKeyWritingModifier<Font?>>, _FixedSizeLayout>, _EnvironmentKeyWritingModifier<CGFloat>>)>>(v9, &_s7SwiftUI15ModifiedContentVyACyACyACyACyAA012_ConditionalD0VyACyAA4ViewPAAE20accessibilityElement8childrenQrAA26AccessibilityChildBehaviorV_tFQOyAA4TextV_Qo_AA0J18AttachmentModifierVGAQGAA022_EnvironmentKeyWritingO0VySiSgGGATyAA5ImageV5ScaleOGGATyAA4FontVSgGGAA16_FixedSizeLayoutVGATy12CoreGraphics7CGFloatVGGMd);
  outlined destroy of VStack<TupleView<(ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Text, _EnvironmentKeyWritingModifier<Int?>>, _EnvironmentKeyWritingModifier<Font?>>, _FixedSizeLayout>, _EnvironmentKeyWritingModifier<CGFloat>>, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<_ConditionalContent<ModifiedContent<<<opaque return type of View.accessibilityElement(children:)>>.0, AccessibilityAttachmentModifier>, ModifiedContent<<<opaque return type of View.accessibilityElement(children:)>>.0, AccessibilityAttachmentModifier>>, _EnvironmentKeyWritingModifier<Int?>>, _EnvironmentKeyWritingModifier<Image.Scale>>, _EnvironmentKeyWritingModifier<Font?>>, _FixedSizeLayout>, _EnvironmentKeyWritingModifier<CGFloat>>)>>(v32, &_s7SwiftUI15ModifiedContentVyACyACyACyACyAA012_ConditionalD0VyACyAA4ViewPAAE20accessibilityElement8childrenQrAA26AccessibilityChildBehaviorV_tFQOyAA4TextV_Qo_AA0J18AttachmentModifierVGAQGAA022_EnvironmentKeyWritingO0VySiSgGGATyAA5ImageV5ScaleOGGATyAA4FontVSgGGAA16_FixedSizeLayoutVGATy12CoreGraphics7CGFloatVGGMd);
  v67 = v33;
  v68 = v34;
  LOBYTE(v69) = v27;
  *(&v69 + 1) = *v58;
  HIDWORD(v69) = *&v58[3];
  v70 = v35;
  v71 = v36;
  v72 = 1;
  v73 = 0;
  *v74 = *v57;
  *&v74[3] = *&v57[3];
  v75 = v50;
  v76 = v37;
  v77 = 256;
  v79 = v60;
  v78 = v59;
  v80 = v56;
  v81 = 0x3FE8000000000000;
  return outlined destroy of ModifiedContent<ModifiedContent<ModifiedContent<HStack<TupleView<(ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Image.Scale>>, AccessibilityAttachmentModifier>, ModifiedContent<Text, _EnvironmentKeyWritingModifier<Int?>>)>>, _EnvironmentKeyWritingModifier<Font?>>, _FixedSizeLayout>, _EnvironmentKeyWritingModifier<CGFloat>>(&v67, &_s7SwiftUI15ModifiedContentVyACyACyACyAA4TextVAA30_EnvironmentKeyWritingModifierVySiSgGGAGyAA4FontVSgGGAA16_FixedSizeLayoutVGAGy12CoreGraphics7CGFloatVGGMd);
}

uint64_t closure #2 in StepDetailView.body.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAE5ScaleOGGMd);
  MEMORY[0x28223BE20](v2);
  v4 = (&v31 - v3);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyACyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAE5ScaleOGGAA023AccessibilityAttachmentI0VGMd);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v31 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v10 = &v31 - v9;
  v11 = Image.init(systemName:)();
  v12 = (v4 + *(v2 + 36));
  v13 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI30_EnvironmentKeyWritingModifierVyAA5ImageV5ScaleOGMd) + 28);
  v14 = *MEMORY[0x277CE1050];
  v15 = type metadata accessor for Image.Scale();
  (*(*(v15 - 8) + 104))(v12 + v13, v14, v15);
  *v12 = swift_getKeyPath();
  *v4 = v11;
  lazy protocol witness table accessor for type ModifiedContent<Image, _EnvironmentKeyWritingModifier<Image.Scale>> and conformance <> ModifiedContent<A, B>();
  View.accessibilityHidden(_:)();
  outlined destroy of ModifiedContent<ModifiedContent<ModifiedContent<HStack<TupleView<(ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Image.Scale>>, AccessibilityAttachmentModifier>, ModifiedContent<Text, _EnvironmentKeyWritingModifier<Int?>>)>>, _EnvironmentKeyWritingModifier<Font?>>, _FixedSizeLayout>, _EnvironmentKeyWritingModifier<CGFloat>>(v4, &_s7SwiftUI15ModifiedContentVyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAE5ScaleOGGMd);
  if (one-time initialization token for WorkoutUIBundle != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v16 = WorkoutUIBundle.super.isa;
  v33._object = 0xE000000000000000;
  v17.value._countAndFlagsBits = 0x617A696C61636F4CLL;
  v17.value._object = 0xEB00000000656C62;
  v18._object = 0x800000020CB9E1E0;
  v18._countAndFlagsBits = 0xD000000000000017;
  v19._countAndFlagsBits = 0;
  v19._object = 0xE000000000000000;
  v33._countAndFlagsBits = 0;
  v20 = NSLocalizedString(_:tableName:bundle:value:comment:)(v18, v17, v16, v19, v33);

  v32 = v20;
  lazy protocol witness table accessor for type String and conformance String();
  v21 = Text.init<A>(_:)();
  v23 = v22;
  v25 = v24;
  v27 = v26;
  KeyPath = swift_getKeyPath();
  outlined init with copy of ModifiedContent<ModifiedContent<ModifiedContent<HStack<TupleView<(ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Image.Scale>>, AccessibilityAttachmentModifier>, ModifiedContent<Text, _EnvironmentKeyWritingModifier<Int?>>)>>, _EnvironmentKeyWritingModifier<Font?>>, _FixedSizeLayout>, _EnvironmentKeyWritingModifier<CGFloat>>(v10, v7, &_s7SwiftUI15ModifiedContentVyACyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAE5ScaleOGGAA023AccessibilityAttachmentI0VGMd);
  outlined init with copy of ModifiedContent<ModifiedContent<ModifiedContent<HStack<TupleView<(ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Image.Scale>>, AccessibilityAttachmentModifier>, ModifiedContent<Text, _EnvironmentKeyWritingModifier<Int?>>)>>, _EnvironmentKeyWritingModifier<Font?>>, _FixedSizeLayout>, _EnvironmentKeyWritingModifier<CGFloat>>(v7, a1, &_s7SwiftUI15ModifiedContentVyACyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAE5ScaleOGGAA023AccessibilityAttachmentI0VGMd);
  v29 = a1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyACyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAE5ScaleOGGAA023AccessibilityAttachmentI0VG_ACyAA4TextVAGySiSgGGtMd) + 48);
  *v29 = v21;
  *(v29 + 8) = v23;
  *(v29 + 16) = v25 & 1;
  *(v29 + 24) = v27;
  *(v29 + 32) = KeyPath;
  *(v29 + 40) = 1;
  *(v29 + 48) = 0;
  outlined copy of Text.Storage(v21, v23, v25 & 1);

  outlined destroy of ModifiedContent<ModifiedContent<ModifiedContent<HStack<TupleView<(ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Image.Scale>>, AccessibilityAttachmentModifier>, ModifiedContent<Text, _EnvironmentKeyWritingModifier<Int?>>)>>, _EnvironmentKeyWritingModifier<Font?>>, _FixedSizeLayout>, _EnvironmentKeyWritingModifier<CGFloat>>(v10, &_s7SwiftUI15ModifiedContentVyACyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAE5ScaleOGGAA023AccessibilityAttachmentI0VGMd);
  outlined consume of Text.Storage(v21, v23, v25 & 1);

  return outlined destroy of ModifiedContent<ModifiedContent<ModifiedContent<HStack<TupleView<(ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Image.Scale>>, AccessibilityAttachmentModifier>, ModifiedContent<Text, _EnvironmentKeyWritingModifier<Int?>>)>>, _EnvironmentKeyWritingModifier<Font?>>, _FixedSizeLayout>, _EnvironmentKeyWritingModifier<CGFloat>>(v7, &_s7SwiftUI15ModifiedContentVyACyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAE5ScaleOGGAA023AccessibilityAttachmentI0VGMd);
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<ModifiedContent<HStack<TupleView<(ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Image.Scale>>, AccessibilityAttachmentModifier>, ModifiedContent<Text, _EnvironmentKeyWritingModifier<Int?>>)>>, _EnvironmentKeyWritingModifier<Font?>>, _FixedSizeLayout>, _EnvironmentKeyWritingModifier<CGFloat>> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<HStack<TupleView<(ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Image.Scale>>, AccessibilityAttachmentModifier>, ModifiedContent<Text, _EnvironmentKeyWritingModifier<Int?>>)>>, _EnvironmentKeyWritingModifier<Font?>>, _FixedSizeLayout>, _EnvironmentKeyWritingModifier<CGFloat>> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<HStack<TupleView<(ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Image.Scale>>, AccessibilityAttachmentModifier>, ModifiedContent<Text, _EnvironmentKeyWritingModifier<Int?>>)>>, _EnvironmentKeyWritingModifier<Font?>>, _FixedSizeLayout>, _EnvironmentKeyWritingModifier<CGFloat>> and conformance <> ModifiedContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyACyACyAA6HStackVyAA9TupleViewVyACyACyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAI5ScaleOGGAA023AccessibilityAttachmentL0VG_ACyAA4TextVAKySiSgGGtGGAKyAA4FontVSgGGAA16_FixedSizeLayoutVGAKy12CoreGraphics7CGFloatVGGMd);
    lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<HStack<TupleView<(ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Image.Scale>>, AccessibilityAttachmentModifier>, ModifiedContent<Text, _EnvironmentKeyWritingModifier<Int?>>)>>, _EnvironmentKeyWritingModifier<Font?>>, _FixedSizeLayout> and conformance <> ModifiedContent<A, B>();
    lazy protocol witness table accessor for type VStack<TupleView<(ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Text, _EnvironmentKeyWritingModifier<Int?>>, _EnvironmentKeyWritingModifier<Font?>>, _FixedSizeLayout>, _EnvironmentKeyWritingModifier<CGFloat>>, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<_ConditionalContent<ModifiedContent<<<opaque return type of View.accessibilityElement(children:)>>.0, AccessibilityAttachmentModifier>, ModifiedContent<<<opaque return type of View.accessibilityElement(children:)>>.0, AccessibilityAttachmentModifier>>, _EnvironmentKeyWritingModifier<Int?>>, _EnvironmentKeyWritingModifier<Image.Scale>>, _EnvironmentKeyWritingModifier<Font?>>, _FixedSizeLayout>, _EnvironmentKeyWritingModifier<CGFloat>>)>> and conformance VStack<A>(&lazy protocol witness table cache variable for type _EnvironmentKeyWritingModifier<CGFloat> and conformance _EnvironmentKeyWritingModifier<A>, &_s7SwiftUI30_EnvironmentKeyWritingModifierVy12CoreGraphics7CGFloatVGMd);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<HStack<TupleView<(ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Image.Scale>>, AccessibilityAttachmentModifier>, ModifiedContent<Text, _EnvironmentKeyWritingModifier<Int?>>)>>, _EnvironmentKeyWritingModifier<Font?>>, _FixedSizeLayout>, _EnvironmentKeyWritingModifier<CGFloat>> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<HStack<TupleView<(ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Image.Scale>>, AccessibilityAttachmentModifier>, ModifiedContent<Text, _EnvironmentKeyWritingModifier<Int?>>)>>, _EnvironmentKeyWritingModifier<Font?>>, _FixedSizeLayout> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<HStack<TupleView<(ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Image.Scale>>, AccessibilityAttachmentModifier>, ModifiedContent<Text, _EnvironmentKeyWritingModifier<Int?>>)>>, _EnvironmentKeyWritingModifier<Font?>>, _FixedSizeLayout> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<HStack<TupleView<(ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Image.Scale>>, AccessibilityAttachmentModifier>, ModifiedContent<Text, _EnvironmentKeyWritingModifier<Int?>>)>>, _EnvironmentKeyWritingModifier<Font?>>, _FixedSizeLayout> and conformance <> ModifiedContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyACyAA6HStackVyAA9TupleViewVyACyACyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAI5ScaleOGGAA023AccessibilityAttachmentL0VG_ACyAA4TextVAKySiSgGGtGGAKyAA4FontVSgGGAA16_FixedSizeLayoutVGMd);
    lazy protocol witness table accessor for type ModifiedContent<HStack<TupleView<(ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Image.Scale>>, AccessibilityAttachmentModifier>, ModifiedContent<Text, _EnvironmentKeyWritingModifier<Int?>>)>>, _EnvironmentKeyWritingModifier<Font?>> and conformance <> ModifiedContent<A, B>();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<HStack<TupleView<(ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Image.Scale>>, AccessibilityAttachmentModifier>, ModifiedContent<Text, _EnvironmentKeyWritingModifier<Int?>>)>>, _EnvironmentKeyWritingModifier<Font?>>, _FixedSizeLayout> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<HStack<TupleView<(ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Image.Scale>>, AccessibilityAttachmentModifier>, ModifiedContent<Text, _EnvironmentKeyWritingModifier<Int?>>)>>, _EnvironmentKeyWritingModifier<Font?>> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<HStack<TupleView<(ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Image.Scale>>, AccessibilityAttachmentModifier>, ModifiedContent<Text, _EnvironmentKeyWritingModifier<Int?>>)>>, _EnvironmentKeyWritingModifier<Font?>> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<HStack<TupleView<(ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Image.Scale>>, AccessibilityAttachmentModifier>, ModifiedContent<Text, _EnvironmentKeyWritingModifier<Int?>>)>>, _EnvironmentKeyWritingModifier<Font?>> and conformance <> ModifiedContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyAA6HStackVyAA9TupleViewVyACyACyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAI5ScaleOGGAA023AccessibilityAttachmentL0VG_ACyAA4TextVAKySiSgGGtGGAKyAA4FontVSgGGMd);
    lazy protocol witness table accessor for type VStack<TupleView<(ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Text, _EnvironmentKeyWritingModifier<Int?>>, _EnvironmentKeyWritingModifier<Font?>>, _FixedSizeLayout>, _EnvironmentKeyWritingModifier<CGFloat>>, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<_ConditionalContent<ModifiedContent<<<opaque return type of View.accessibilityElement(children:)>>.0, AccessibilityAttachmentModifier>, ModifiedContent<<<opaque return type of View.accessibilityElement(children:)>>.0, AccessibilityAttachmentModifier>>, _EnvironmentKeyWritingModifier<Int?>>, _EnvironmentKeyWritingModifier<Image.Scale>>, _EnvironmentKeyWritingModifier<Font?>>, _FixedSizeLayout>, _EnvironmentKeyWritingModifier<CGFloat>>)>> and conformance VStack<A>(&lazy protocol witness table cache variable for type HStack<TupleView<(ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Image.Scale>>, AccessibilityAttachmentModifier>, ModifiedContent<Text, _EnvironmentKeyWritingModifier<Int?>>)>> and conformance HStack<A>, &_s7SwiftUI6HStackVyAA9TupleViewVyAA15ModifiedContentVyAGyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAI5ScaleOGGAA023AccessibilityAttachmentL0VG_AGyAA4TextVAKySiSgGGtGGMd);
    lazy protocol witness table accessor for type VStack<TupleView<(ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Text, _EnvironmentKeyWritingModifier<Int?>>, _EnvironmentKeyWritingModifier<Font?>>, _FixedSizeLayout>, _EnvironmentKeyWritingModifier<CGFloat>>, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<_ConditionalContent<ModifiedContent<<<opaque return type of View.accessibilityElement(children:)>>.0, AccessibilityAttachmentModifier>, ModifiedContent<<<opaque return type of View.accessibilityElement(children:)>>.0, AccessibilityAttachmentModifier>>, _EnvironmentKeyWritingModifier<Int?>>, _EnvironmentKeyWritingModifier<Image.Scale>>, _EnvironmentKeyWritingModifier<Font?>>, _FixedSizeLayout>, _EnvironmentKeyWritingModifier<CGFloat>>)>> and conformance VStack<A>(&lazy protocol witness table cache variable for type _EnvironmentKeyWritingModifier<Font?> and conformance _EnvironmentKeyWritingModifier<A>, &_s7SwiftUI30_EnvironmentKeyWritingModifierVyAA4FontVSgGMd);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<HStack<TupleView<(ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Image.Scale>>, AccessibilityAttachmentModifier>, ModifiedContent<Text, _EnvironmentKeyWritingModifier<Int?>>)>>, _EnvironmentKeyWritingModifier<Font?>> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for StepDetailView(uint64_t a1, int a2)
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

uint64_t storeEnumTagSinglePayload for StepDetailView(uint64_t result, int a2, int a3)
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

uint64_t outlined init with copy of VStack<TupleView<(ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Text, _EnvironmentKeyWritingModifier<Int?>>, _EnvironmentKeyWritingModifier<Font?>>, _FixedSizeLayout>, _EnvironmentKeyWritingModifier<CGFloat>>, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<_ConditionalContent<ModifiedContent<<<opaque return type of View.accessibilityElement(children:)>>.0, AccessibilityAttachmentModifier>, ModifiedContent<<<opaque return type of View.accessibilityElement(children:)>>.0, AccessibilityAttachmentModifier>>, _EnvironmentKeyWritingModifier<Int?>>, _EnvironmentKeyWritingModifier<Image.Scale>>, _EnvironmentKeyWritingModifier<Font?>>, _FixedSizeLayout>, _EnvironmentKeyWritingModifier<CGFloat>>)>>(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(a3);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t _s11WorkoutCore17HeartRateZoneTypeOACSQAAWlTm_0(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t outlined destroy of VStack<TupleView<(ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Text, _EnvironmentKeyWritingModifier<Int?>>, _EnvironmentKeyWritingModifier<Font?>>, _FixedSizeLayout>, _EnvironmentKeyWritingModifier<CGFloat>>, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<_ConditionalContent<ModifiedContent<<<opaque return type of View.accessibilityElement(children:)>>.0, AccessibilityAttachmentModifier>, ModifiedContent<<<opaque return type of View.accessibilityElement(children:)>>.0, AccessibilityAttachmentModifier>>, _EnvironmentKeyWritingModifier<Int?>>, _EnvironmentKeyWritingModifier<Image.Scale>>, _EnvironmentKeyWritingModifier<Font?>>, _FixedSizeLayout>, _EnvironmentKeyWritingModifier<CGFloat>>)>>(uint64_t a1, uint64_t *a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(a2);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t lazy protocol witness table accessor for type VStack<TupleView<(ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Text, _EnvironmentKeyWritingModifier<Int?>>, _EnvironmentKeyWritingModifier<Font?>>, _FixedSizeLayout>, _EnvironmentKeyWritingModifier<CGFloat>>, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<_ConditionalContent<ModifiedContent<<<opaque return type of View.accessibilityElement(children:)>>.0, AccessibilityAttachmentModifier>, ModifiedContent<<<opaque return type of View.accessibilityElement(children:)>>.0, AccessibilityAttachmentModifier>>, _EnvironmentKeyWritingModifier<Int?>>, _EnvironmentKeyWritingModifier<Image.Scale>>, _EnvironmentKeyWritingModifier<Font?>>, _FixedSizeLayout>, _EnvironmentKeyWritingModifier<CGFloat>>)>> and conformance VStack<A>(unint64_t *a1, uint64_t *a2)
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

uint64_t outlined init with copy of ModifiedContent<ModifiedContent<ModifiedContent<HStack<TupleView<(ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Image.Scale>>, AccessibilityAttachmentModifier>, ModifiedContent<Text, _EnvironmentKeyWritingModifier<Int?>>)>>, _EnvironmentKeyWritingModifier<Font?>>, _FixedSizeLayout>, _EnvironmentKeyWritingModifier<CGFloat>>(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(a3);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t outlined destroy of ModifiedContent<ModifiedContent<ModifiedContent<HStack<TupleView<(ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Image.Scale>>, AccessibilityAttachmentModifier>, ModifiedContent<Text, _EnvironmentKeyWritingModifier<Int?>>)>>, _EnvironmentKeyWritingModifier<Font?>>, _FixedSizeLayout>, _EnvironmentKeyWritingModifier<CGFloat>>(uint64_t a1, uint64_t *a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(a2);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t getEnumTagSinglePayload for RightTrapezoid(uint64_t a1, int a2)
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

uint64_t storeEnumTagSinglePayload for RightTrapezoid(uint64_t result, int a2, int a3)
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

unint64_t lazy protocol witness table accessor for type _ShapeView<RightTrapezoid, ForegroundStyle> and conformance _ShapeView<A, B>()
{
  result = lazy protocol witness table cache variable for type _ShapeView<RightTrapezoid, ForegroundStyle> and conformance _ShapeView<A, B>;
  if (!lazy protocol witness table cache variable for type _ShapeView<RightTrapezoid, ForegroundStyle> and conformance _ShapeView<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI10_ShapeViewVy07WorkoutB014RightTrapezoidVAA15ForegroundStyleVGMd);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type _ShapeView<RightTrapezoid, ForegroundStyle> and conformance _ShapeView<A, B>);
  }

  return result;
}

CGFloat RightTrapezoid.path(in:)@<D0>(uint64_t a1@<X8>, CGFloat a2@<D0>, CGFloat a3@<D1>, CGFloat a4@<D2>, CGFloat a5@<D3>, double a6@<D4>, double a7@<D5>, double a8@<D6>)
{
  Path.init()();
  v36.origin.x = a2;
  v36.origin.y = a3;
  v36.size.width = a4;
  v36.size.height = a5;
  MaxY = CGRectGetMaxY(v36);
  v37.origin.x = a2;
  v37.origin.y = a3;
  v37.size.width = a4;
  v37.size.height = a5;
  v16 = (1.0 - a6) * (MaxY - CGRectGetMinY(v37));
  v38.origin.x = a2;
  v38.origin.y = a3;
  v38.size.width = a4;
  v38.size.height = a5;
  v17 = CGRectGetMaxY(v38);
  v39.origin.x = a2;
  v39.origin.y = a3;
  v39.size.width = a4;
  v39.size.height = a5;
  v18 = (1.0 - a7) * (v17 - CGRectGetMinY(v39));
  v40.origin.x = a2;
  v40.origin.y = a3;
  v40.size.width = a4;
  v40.size.height = a5;
  v25 = CGRectGetMinX(v40) + a8;
  v41.origin.x = a2;
  v41.origin.y = a3;
  v41.size.width = a4;
  v41.size.height = a5;
  v26 = CGRectGetMaxX(v41) - a8;
  *&v19 = v18 + a8;
  v42.origin.x = a2;
  v42.origin.y = a3;
  v42.size.width = a4;
  v42.size.height = a5;
  *&v29 = CGRectGetMaxX(v42) - a8;
  v43.origin.x = a2;
  v43.origin.y = a3;
  v43.size.width = a4;
  v43.size.height = a5;
  *&v28 = CGRectGetMaxY(v43) - a8;
  v44.origin.x = a2;
  v44.origin.y = a3;
  v44.size.width = a4;
  v44.size.height = a5;
  *&toa = CGRectGetMinX(v44) + a8;
  v45.origin.x = a2;
  v45.origin.y = a3;
  v45.size.width = a4;
  v45.size.height = a5;
  *&v27 = CGRectGetMaxY(v45) - a8;
  transform.a = 1.0;
  transform.b = 0.0;
  transform.c = 0.0;
  transform.d = 1.0;
  v46.origin.x = v25 - a8;
  v46.origin.y = v16 + a8 - a8;
  transform.tx = 0.0;
  transform.ty = 0.0;
  v46.size.width = a8 + a8;
  v46.size.height = a8 + a8;
  Path.addEllipse(in:transform:)(v46, &transform);
  v47.origin.x = v26 - a8;
  v47.origin.y = *&v19 - a8;
  v47.size.width = a8 + a8;
  v47.size.height = a8 + a8;
  Path.addEllipse(in:transform:)(v47, &transform);
  v48.origin.x = *&v29 - a8;
  v48.origin.y = *&v28 - a8;
  v48.size.width = a8 + a8;
  v48.size.height = a8 + a8;
  Path.addEllipse(in:transform:)(v48, &transform);
  v49.origin.x = *&toa - a8;
  v49.origin.y = *&v27 - a8;
  v49.size.width = a8 + a8;
  v49.size.height = a8 + a8;
  Path.addEllipse(in:transform:)(v49, &transform);
  v20 = atan2(*&v19 - (v16 + a8), v26 - v25);
  v21 = __sincos_stret(v20);
  v22 = -(v21.__sinval * a8);
  *&v23 = v26 - v22;
  Path.move(to:)(__PAIR128__(v16 + a8 - v21.__cosval * a8, v25 - v22));
  Path.addLine(to:)(__PAIR128__(*&v19 - v21.__cosval * a8, v23));
  Path.addLine(to:)(__PAIR128__(v19, v26 + a8));
  Path.addLine(to:)(__PAIR128__(v28, *&v29 + a8));
  Path.addLine(to:)(__PAIR128__(*&v28 + a8, v29));
  Path.addLine(to:)(__PAIR128__(*&v27 + a8, toa));
  Path.addLine(to:)(__PAIR128__(v27, *&toa - a8));
  Path.addLine(to:)(__PAIR128__(v16 + a8, v25 - a8));
  result = to_8.x;
  *a1 = to_8;
  *(a1 + 16) = v33;
  *(a1 + 32) = v34;
  return result;
}

double protocol witness for Shape.path(in:) in conformance RightTrapezoid@<D0>(uint64_t a1@<X8>, CGFloat a2@<D0>, CGFloat a3@<D1>, CGFloat a4@<D2>, CGFloat a5@<D3>)
{
  RightTrapezoid.path(in:)(v9, a2, a3, a4, a5, *v5, v5[1], v5[2]);
  result = *v9;
  v8 = v9[1];
  *a1 = v9[0];
  *(a1 + 16) = v8;
  *(a1 + 32) = v10;
  return result;
}

void (*protocol witness for Animatable.animatableData.modify in conformance RightTrapezoid(uint64_t *a1))(void *a1)
{
  if (MEMORY[0x277D84FD8])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  *a1 = v2;
  *(v2 + 32) = Animatable<>.animatableData.modify();
  return protocol witness for Animatable.animatableData.modify in conformance RightTrapezoid;
}

void protocol witness for Animatable.animatableData.modify in conformance RightTrapezoid(void *a1)
{
  v1 = *a1;
  (*(*a1 + 32))(*a1);

  free(v1);
}

uint64_t protocol witness for static View._makeView(view:inputs:) in conformance RightTrapezoid(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = lazy protocol witness table accessor for type RightTrapezoid and conformance RightTrapezoid();

  return MEMORY[0x282133768](a1, a2, a3, v6);
}

uint64_t protocol witness for static View._makeViewList(view:inputs:) in conformance RightTrapezoid(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = lazy protocol witness table accessor for type RightTrapezoid and conformance RightTrapezoid();

  return MEMORY[0x282133720](a1, a2, a3, v6);
}

uint64_t protocol witness for View.body.getter in conformance RightTrapezoid(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type RightTrapezoid and conformance RightTrapezoid();

  return MEMORY[0x282133738](a1, v2);
}

uint64_t EffortEntryView.init(estimate:isShowingEffortOnboarding:showCurrentWorkloadButton:doneTapped:animated:)@<X0>(uint64_t a1@<X0>, int a2@<W2>, uint64_t a3@<X3>, uint64_t a4@<X4>, int a5@<W5>, uint64_t a6@<X8>)
{
  v38 = a2;
  v39 = a5;
  v40 = a3;
  v41 = a4;
  v8 = type metadata accessor for ExertionValue();
  v33 = *(v8 - 8);
  v34 = v8;
  MEMORY[0x28223BE20](v8);
  v10 = &v32 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11WorkoutCore18AppleExertionScaleOSgMd);
  MEMORY[0x28223BE20](v11 - 8);
  v13 = &v32 - v12;
  v14 = type metadata accessor for AppleExertionScale();
  v15 = *(v14 - 8);
  MEMORY[0x28223BE20](v14);
  v17 = &v32 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v42 = 0;
  State.init(wrappedValue:)();
  v18 = v43;
  v19 = v44;
  LOBYTE(v42) = 0;
  State.init(wrappedValue:)();
  v20 = LOBYTE(v43);
  v35 = v44;
  LOBYTE(v42) = 0;
  State.init(wrappedValue:)();
  v37 = LOBYTE(v43);
  v36 = v44;
  v21 = a1;
  _s11WorkoutCore18AppleExertionScaleOSgWOcTm_2(a1, v13, &_s11WorkoutCore18AppleExertionScaleOSgMd);
  if ((*(v15 + 48))(v13, 1, v14) == 1)
  {
    _s11WorkoutCore18AppleExertionScaleOSgWOhTm_3(v13, &_s11WorkoutCore18AppleExertionScaleOSgMd);
    v22 = v35;
  }

  else
  {
    (*(v15 + 32))(v17, v13, v14);
    AppleExertionScale.exertionValue.getter();
    v23 = ExertionValue.level.getter();
    (*(v33 + 8))(v10, v34);

    v18 = v23;
    LOBYTE(v42) = v23 == 0;
    State.init(wrappedValue:)();
    (*(v15 + 8))(v17, v14);

    v19 = 0;
    v20 = LOBYTE(v43);
    v22 = v44;
  }

  v24 = v39;
  v25 = v38 & 1;
  LOBYTE(v42) = v39 & 1;
  State.init(wrappedValue:)();
  v26 = LOBYTE(v43);
  v27 = v44;
  LOBYTE(v42) = (v24 & 1) == 0;
  State.init(wrappedValue:)();
  result = _s11WorkoutCore18AppleExertionScaleOSgWOhTm_3(v21, &_s11WorkoutCore18AppleExertionScaleOSgMd);
  v29 = LOBYTE(v43);
  v30 = v44;
  v31 = v41;
  *a6 = v40;
  *(a6 + 8) = v31;
  *(a6 + 16) = closure #1 in EffortEntryView.init(estimate:isShowingEffortOnboarding:showCurrentWorkloadButton:doneTapped:animated:);
  *(a6 + 24) = 0;
  *(a6 + 32) = v25;
  *(a6 + 33) = 0;
  *(a6 + 40) = v18;
  *(a6 + 48) = v19;
  *(a6 + 56) = v20;
  *(a6 + 64) = v22;
  *(a6 + 72) = v26;
  *(a6 + 80) = v27;
  *(a6 + 88) = v29;
  *(a6 + 96) = v30;
  *(a6 + 104) = 0x3FDB6DB6DB6DB6DBLL;
  *(a6 + 112) = v37;
  *(a6 + 120) = v36;
  return result;
}

uint64_t EffortEntryView.init(estimate:isShowingEffortOnboarding:showCurrentWorkloadButton:cancelTapped:doneTapped:animated:)@<X0>(uint64_t a1@<X0>, int a2@<W2>, uint64_t a3@<X3>, uint64_t a4@<X4>, uint64_t a5@<X5>, uint64_t a6@<X6>, int a7@<W7>, uint64_t a8@<X8>)
{
  v41 = a2;
  v42 = a7;
  v45 = a6;
  v46 = a4;
  v43 = a5;
  v44 = a3;
  v10 = type metadata accessor for ExertionValue();
  v36 = *(v10 - 8);
  v37 = v10;
  MEMORY[0x28223BE20](v10);
  v12 = &v35 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11WorkoutCore18AppleExertionScaleOSgMd);
  MEMORY[0x28223BE20](v13 - 8);
  v15 = &v35 - v14;
  v16 = type metadata accessor for AppleExertionScale();
  v17 = *(v16 - 8);
  MEMORY[0x28223BE20](v16);
  v19 = &v35 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v47 = 0;
  State.init(wrappedValue:)();
  v20 = v48;
  v21 = v49;
  LOBYTE(v47) = 0;
  State.init(wrappedValue:)();
  v22 = LOBYTE(v48);
  v38 = v49;
  LOBYTE(v47) = 0;
  State.init(wrappedValue:)();
  v40 = LOBYTE(v48);
  v39 = v49;
  v23 = a1;
  _s11WorkoutCore18AppleExertionScaleOSgWOcTm_2(a1, v15, &_s11WorkoutCore18AppleExertionScaleOSgMd);
  if ((*(v17 + 48))(v15, 1, v16) == 1)
  {
    _s11WorkoutCore18AppleExertionScaleOSgWOhTm_3(v15, &_s11WorkoutCore18AppleExertionScaleOSgMd);
    v24 = v38;
  }

  else
  {
    (*(v17 + 32))(v19, v15, v16);
    AppleExertionScale.exertionValue.getter();
    v25 = ExertionValue.level.getter();
    (*(v36 + 8))(v12, v37);

    v20 = v25;
    LOBYTE(v47) = v25 == 0;
    State.init(wrappedValue:)();
    (*(v17 + 8))(v19, v16);

    v21 = 0;
    v22 = LOBYTE(v48);
    v24 = v49;
  }

  v26 = v42;
  v27 = v41 & 1;
  LOBYTE(v47) = v42 & 1;
  State.init(wrappedValue:)();
  v28 = LOBYTE(v48);
  v29 = v49;
  LOBYTE(v47) = (v26 & 1) == 0;
  State.init(wrappedValue:)();
  result = _s11WorkoutCore18AppleExertionScaleOSgWOhTm_3(v23, &_s11WorkoutCore18AppleExertionScaleOSgMd);
  v31 = LOBYTE(v48);
  v32 = v49;
  v33 = v45;
  *a8 = v43;
  *(a8 + 8) = v33;
  v34 = v46;
  *(a8 + 16) = v44;
  *(a8 + 24) = v34;
  *(a8 + 32) = v27;
  *(a8 + 33) = 0;
  *(a8 + 40) = v20;
  *(a8 + 48) = v21;
  *(a8 + 56) = v22;
  *(a8 + 64) = v24;
  *(a8 + 72) = v28;
  *(a8 + 80) = v29;
  *(a8 + 88) = v31;
  *(a8 + 96) = v32;
  *(a8 + 104) = 0x3FDB6DB6DB6DB6DBLL;
  *(a8 + 112) = v40;
  *(a8 + 120) = v39;
  return result;
}

CGFloat one-time initialization function for topSpacersHeight()
{
  v0 = [objc_opt_self() mainScreen];
  [v0 bounds];
  v2 = v1;
  v4 = v3;
  v6 = v5;
  v8 = v7;

  v10.origin.x = v2;
  v10.origin.y = v4;
  v10.size.width = v6;
  v10.size.height = v8;
  result = CGRectGetHeight(v10) * 0.09;
  static EffortEntryView.Layout.topSpacersHeight = *&result;
  return result;
}

uint64_t EffortEntryView.explanationString.getter()
{
  v1 = type metadata accessor for ExertionValue();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = &v20 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for AppleExertionScale();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v20 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *(v0 + 40);
  v10 = *(v0 + 48);
  v11 = *(v0 + 64);
  LOBYTE(v20) = *(v0 + 56);
  v21 = v11;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI5StateVySbGMd);
  State.wrappedValue.getter();
  if (LOBYTE(v22) == 1)
  {
    if (one-time initialization token for WorkoutUIBundle != -1)
    {
      swift_once();
    }

    swift_beginAccess();
    v12 = WorkoutUIBundle.super.isa;
    v23._object = 0xE000000000000000;
    v13._countAndFlagsBits = 0x44455050494B53;
    v14.value._countAndFlagsBits = 0x617A696C61636F4CLL;
    v14.value._object = 0xEB00000000656C62;
    v13._object = 0xE700000000000000;
    v15._countAndFlagsBits = 0;
    v15._object = 0xE000000000000000;
    v23._countAndFlagsBits = 0;
    countAndFlagsBits = NSLocalizedString(_:tableName:bundle:value:comment:)(v13, v14, v12, v15, v23)._countAndFlagsBits;

    return countAndFlagsBits;
  }

  v20 = v9;
  v21 = v10;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI5StateVySdGMd);
  result = State.wrappedValue.getter();
  v18 = round(v22);
  if ((*&v18 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_17;
  }

  if (v18 <= -9.22337204e18)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  if (v18 >= 9.22337204e18)
  {
LABEL_18:
    __break(1u);
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  if (v18 < 1)
  {
    return 0;
  }

  v20 = v9;
  v21 = v10;
  result = State.wrappedValue.getter();
  v19 = round(v22);
  if ((*&v19 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    goto LABEL_19;
  }

  if (v19 <= -9.22337204e18)
  {
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  if (v19 >= 9.22337204e18)
  {
LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

  result = v19 - 1;
  if (!__OFSUB__(v19, 1))
  {
    static AppleExertionScale.exertionForRow(_:)();
    AppleExertionScale.exertionValue.getter();
    (*(v6 + 8))(v8, v5);
    countAndFlagsBits = ExertionValue.shortDescription.getter();
    (*(v2 + 8))(v4, v1);
    return countAndFlagsBits;
  }

LABEL_22:
  __break(1u);
  return result;
}

uint64_t EffortEntryView.body.getter@<X0>(uint64_t a1@<X8>)
{
  v55 = a1;
  v2 = type metadata accessor for ScrollIndicatorVisibility();
  v46 = *(v2 - 8);
  v47 = v2;
  MEMORY[0x28223BE20](v2);
  v4 = &v45 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v48 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI4ViewPAAE8onChange2of7initial_Qrqd___SbyyctSQRd__lFQOyAA15ModifiedContentVyAA6ZStackVyAA05TupleC0VyAHyAA14LinearGradientVAA30_SafeAreaRegionsIgnoringLayoutVG_AHyAHyAA14GeometryReaderVyAHyAA6VStackVyALyAHyAA6SpacerVAA06_FrameR0VG_ALyALyAHyAA4TextVAA31AccessibilityAttachmentModifierVG_AZtGSg_AHyAUyALyAcAE15sensoryFeedback_7triggerQrAA15SensoryFeedbackV_qd__tSQRd__lFQOyAHyAcAE9focusableyQrSbFQOyAHy07WorkoutB0010EffortZoneC0VAYG_Qo_AA21_TraitWritingModifierVyAA18TransitionTraitKeyVGG_SiQo_Sg_AZSgA11_17EffortValueButtonVtGGA20_GtGSgAWA11_06EffortC21CurrentWorkloadButtonVSgtGGA20_GGAA08_PaddingR0VGAA05_FlexwR0VGtGGAA25_AppearanceActionModifierVG_SdQo_Md);
  v45 = *(v48 - 8);
  MEMORY[0x28223BE20](v48);
  v6 = &v45 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI4ViewPAAE16scrollIndicators_4axesQrAA25ScrollIndicatorVisibilityV_AA4AxisO3SetVtFQOyAcAE8onChange2of7initial_Qrqd___SbyyctSQRd__lFQOyAA15ModifiedContentVyAA6ZStackVyAA05TupleC0VyAPyAA14LinearGradientVAA30_SafeAreaRegionsIgnoringLayoutVG_APyAPyAA14GeometryReaderVyAPyAA6VStackVyATyAPyAA6SpacerVAA06_FrameZ0VG_ATyATyAPyAA4TextVAA31AccessibilityAttachmentModifierVG_A6_tGSg_APyA1_yATyAcAE15sensoryFeedback_7triggerQrAA15SensoryFeedbackV_qd__tSQRd__lFQOyAPyAcAE9focusableyQrSbFQOyAPy07WorkoutB0010EffortZoneC0VA5_G_Qo_AA21_TraitWritingModifierVyAA18TransitionTraitKeyVGG_SiQo_Sg_A6_SgA19_17EffortValueButtonVtGGA28_GtGSgA3_A19_06EffortC21CurrentWorkloadButtonVSgtGGA28_GGAA08_PaddingZ0VGAA010_FlexFrameZ0VGtGGAA25_AppearanceActionModifierVG_SdQo__Qo_Md);
  v50 = *(v7 - 8);
  v51 = v7;
  MEMORY[0x28223BE20](v7);
  v49 = &v45 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI4ViewPAAE7toolbar7contentQrqd__yXE_tAA14ToolbarContentRd__lFQOyAcAE16scrollIndicators_4axesQrAA25ScrollIndicatorVisibilityV_AA4AxisO3SetVtFQOyAcAE8onChange2of7initial_Qrqd___SbyyctSQRd__lFQOyAA08ModifiedG0VyAA6ZStackVyAA05TupleC0VyASyAA14LinearGradientVAA30_SafeAreaRegionsIgnoringLayoutVG_ASyASyAA14GeometryReaderVyASyAA6VStackVyAWyASyAA6SpacerVAA12_FrameLayoutVG_AWyAWyASyAA4TextVAA31AccessibilityAttachmentModifierVG_A9_tGSg_ASyA4_yAWyAcAE15sensoryFeedback_7triggerQrAA15SensoryFeedbackV_qd__tSQRd__lFQOyASyAcAE9focusableyQrSbFQOyASy07WorkoutB0010EffortZoneC0VA8_G_Qo_AA21_TraitWritingModifierVyAA18TransitionTraitKeyVGG_SiQo_Sg_A9_SgA22_17EffortValueButtonVtGGA31_GtGSgA6_A22_06EffortC21CurrentWorkloadButtonVSgtGGA31_GGAA14_PaddingLayoutVGAA16_FlexFrameLayoutVGtGGAA25_AppearanceActionModifierVG_SdQo__Qo__AA0vfG0VyAA0fG7BuilderV10buildBlockyQrxAaFRzlFZQOy_AA0F4ItemVyytAA6ButtonVyAA5ImageVGGQo_Sg_A69_yytASyASyA71_yASyA73_A13_GGAA32_EnvironmentKeyTransformModifierVySbGGAA14_OpacityEffectVGGtGQo_Md);
  v53 = *(v9 - 8);
  v54 = v9;
  MEMORY[0x28223BE20](v9);
  v52 = &v45 - v10;
  v11 = v1[5];
  v61 = v1[4];
  v62 = v11;
  v12 = v1[7];
  v63 = v1[6];
  v64 = v12;
  v13 = v1[1];
  v58 = *v1;
  v59 = v13;
  v14 = v1[3];
  v60[0] = v1[2];
  v60[1] = v14;
  v15 = static Alignment.center.getter();
  v17 = v16;
  closure #1 in EffortEntryView.body.getter(&v58, v82);
  v77 = v82[12];
  v78 = v82[13];
  v73 = v82[8];
  v74 = v82[9];
  v75 = v82[10];
  v76 = v82[11];
  v69 = v82[4];
  v70 = v82[5];
  v71 = v82[6];
  v72 = v82[7];
  v65 = v82[0];
  v66 = v82[1];
  v67 = v82[2];
  v68 = v82[3];
  v80[12] = v82[12];
  v80[13] = v82[13];
  v80[8] = v82[8];
  v80[9] = v82[9];
  v80[10] = v82[10];
  v80[11] = v82[11];
  v80[4] = v82[4];
  v80[5] = v82[5];
  v80[6] = v82[6];
  v80[7] = v82[7];
  v80[0] = v82[0];
  v80[1] = v82[1];
  v79 = *&v82[14];
  v81 = *&v82[14];
  v80[2] = v82[2];
  v80[3] = v82[3];
  outlined init with copy of TupleView<(ModifiedContent<LinearGradient, _SafeAreaRegionsIgnoringLayout>, ModifiedContent<ModifiedContent<GeometryReader<ModifiedContent<VStack<TupleView<(ModifiedContent<Spacer, _FrameLayout>, TupleView<(TupleView<(ModifiedContent<Text, AccessibilityAttachmentModifier>, ModifiedContent<Spacer, _FrameLayout>)>?, ModifiedContent<VStack<TupleView<((<<opaque return type of View.sensoryFeedback<A>(_:trigger:)>>.0)?, ModifiedContent<Spacer, _FrameLayout>?, EffortValueButton)>>, _TraitWritingModifier<TransitionTraitKey>>)>?, Spacer, EffortViewCurrentWorkloadButton?)>>, _TraitWritingModifier<TransitionTraitKey>>>, _PaddingLayout>, _FlexFrameLayout>)>(&v65, v57, &_s7SwiftUI9TupleViewVyAA15ModifiedContentVyAA14LinearGradientVAA30_SafeAreaRegionsIgnoringLayoutVG_AEyAEyAA14GeometryReaderVyAEyAA6VStackVyACyAEyAA6SpacerVAA06_FrameM0VG_ACyACyAEyAA4TextVAA31AccessibilityAttachmentModifierVG_AStGSg_AEyANyACyAA0D0PAAE15sensoryFeedback_7triggerQrAA07SensoryX0V_qd__tSQRd__lFQOyAEyA0_AAE9focusableyQrSbFQOyAEy07WorkoutB0010EffortZoneD0VARG_Qo_AA013_TraitWritingV0VyAA18TransitionTraitKeyVGG_SiQo_Sg_ASSgA6_17EffortValueButtonVtGGA15_GtGSgAPA6_06EffortD21CurrentWorkloadButtonVSgtGGA15_GGAA08_PaddingM0VGAA05_FlexrM0VGtGMd);
  outlined destroy of TupleView<(ModifiedContent<LinearGradient, _SafeAreaRegionsIgnoringLayout>, ModifiedContent<ModifiedContent<GeometryReader<ModifiedContent<VStack<TupleView<(ModifiedContent<Spacer, _FrameLayout>, TupleView<(TupleView<(ModifiedContent<Text, AccessibilityAttachmentModifier>, ModifiedContent<Spacer, _FrameLayout>)>?, ModifiedContent<VStack<TupleView<((<<opaque return type of View.sensoryFeedback<A>(_:trigger:)>>.0)?, ModifiedContent<Spacer, _FrameLayout>?, EffortValueButton)>>, _TraitWritingModifier<TransitionTraitKey>>)>?, Spacer, EffortViewCurrentWorkloadButton?)>>, _TraitWritingModifier<TransitionTraitKey>>>, _PaddingLayout>, _FlexFrameLayout>)>(v80, &_s7SwiftUI9TupleViewVyAA15ModifiedContentVyAA14LinearGradientVAA30_SafeAreaRegionsIgnoringLayoutVG_AEyAEyAA14GeometryReaderVyAEyAA6VStackVyACyAEyAA6SpacerVAA06_FrameM0VG_ACyACyAEyAA4TextVAA31AccessibilityAttachmentModifierVG_AStGSg_AEyANyACyAA0D0PAAE15sensoryFeedback_7triggerQrAA07SensoryX0V_qd__tSQRd__lFQOyAEyA0_AAE9focusableyQrSbFQOyAEy07WorkoutB0010EffortZoneD0VARG_Qo_AA013_TraitWritingV0VyAA18TransitionTraitKeyVGG_SiQo_Sg_ASSgA6_17EffortValueButtonVtGGA15_GtGSgAPA6_06EffortD21CurrentWorkloadButtonVSgtGGA15_GGAA08_PaddingM0VGAA05_FlexrM0VGtGMd);
  *&v57[208] = v77;
  *&v57[224] = v78;
  *&v57[240] = v79;
  *&v57[144] = v73;
  *&v57[160] = v74;
  *&v57[192] = v76;
  *&v57[176] = v75;
  *&v57[80] = v69;
  *&v57[96] = v70;
  *&v57[128] = v72;
  *&v57[112] = v71;
  *&v57[16] = v65;
  *&v57[32] = v66;
  *&v57[64] = v68;
  *&v57[48] = v67;
  v18 = swift_allocObject();
  v19 = v62;
  v18[5] = v61;
  v18[6] = v19;
  v20 = v64;
  v18[7] = v63;
  v18[8] = v20;
  v21 = v59;
  v18[1] = v58;
  v18[2] = v21;
  v22 = v60[1];
  v18[3] = v60[0];
  v18[4] = v22;
  *v57 = v15;
  *&v57[8] = v17;
  *&v57[248] = partial apply for closure #2 in EffortEntryView.body.getter;
  *&v57[256] = v18;
  *&v57[264] = 0;
  *&v57[272] = 0;
  v56 = *(v60 + 8);
  outlined init with copy of EffortEntryView(&v58, v82);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI5StateVySdGMd);
  State.wrappedValue.getter();
  v23 = swift_allocObject();
  v24 = v62;
  v23[5] = v61;
  v23[6] = v24;
  v25 = v64;
  v23[7] = v63;
  v23[8] = v25;
  v26 = v59;
  v23[1] = v58;
  v23[2] = v26;
  v27 = v60[1];
  v23[3] = v60[0];
  v23[4] = v27;
  outlined init with copy of EffortEntryView(&v58, v82);
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyAA6ZStackVyAA9TupleViewVyACyAA14LinearGradientVAA30_SafeAreaRegionsIgnoringLayoutVG_ACyACyAA14GeometryReaderVyACyAA6VStackVyAGyACyAA6SpacerVAA06_FrameN0VG_AGyAGyACyAA4TextVAA31AccessibilityAttachmentModifierVG_AUtGSg_ACyAPyAGyAA0G0PAAE15sensoryFeedback_7triggerQrAA07SensoryY0V_qd__tSQRd__lFQOyACyA2_AAE9focusableyQrSbFQOyACy07WorkoutB0010EffortZoneG0VATG_Qo_AA013_TraitWritingW0VyAA18TransitionTraitKeyVGG_SiQo_Sg_AUSgA8_17EffortValueButtonVtGGA17_GtGSgARA8_06EffortG21CurrentWorkloadButtonVSgtGGA17_GGAA08_PaddingN0VGAA05_FlexsN0VGtGGAA017_AppearanceActionW0VGMd);
  v29 = lazy protocol witness table accessor for type ModifiedContent<ZStack<TupleView<(ModifiedContent<LinearGradient, _SafeAreaRegionsIgnoringLayout>, ModifiedContent<ModifiedContent<GeometryReader<ModifiedContent<VStack<TupleView<(ModifiedContent<Spacer, _FrameLayout>, TupleView<(TupleView<(ModifiedContent<Text, AccessibilityAttachmentModifier>, ModifiedContent<Spacer, _FrameLayout>)>?, ModifiedContent<VStack<TupleView<((<<opaque return type of View.sensoryFeedback<A>(_:trigger:)>>.0)?, ModifiedContent<Spacer, _FrameLayout>?, EffortValueButton)>>, _TraitWritingModifier<TransitionTraitKey>>)>?, Spacer, EffortViewCurrentWorkloadButton?)>>, _TraitWritingModifier<TransitionTraitKey>>>, _PaddingLayout>, _FlexFrameLayout>)>>, _AppearanceActionModifier> and conformance <> ModifiedContent<A, B>();
  View.onChange<A>(of:initial:_:)();

  memcpy(v82, v57, 0x118uLL);
  v30 = outlined destroy of TupleView<(ModifiedContent<LinearGradient, _SafeAreaRegionsIgnoringLayout>, ModifiedContent<ModifiedContent<GeometryReader<ModifiedContent<VStack<TupleView<(ModifiedContent<Spacer, _FrameLayout>, TupleView<(TupleView<(ModifiedContent<Text, AccessibilityAttachmentModifier>, ModifiedContent<Spacer, _FrameLayout>)>?, ModifiedContent<VStack<TupleView<((<<opaque return type of View.sensoryFeedback<A>(_:trigger:)>>.0)?, ModifiedContent<Spacer, _FrameLayout>?, EffortValueButton)>>, _TraitWritingModifier<TransitionTraitKey>>)>?, Spacer, EffortViewCurrentWorkloadButton?)>>, _TraitWritingModifier<TransitionTraitKey>>>, _PaddingLayout>, _FlexFrameLayout>)>(v82, &_s7SwiftUI15ModifiedContentVyAA6ZStackVyAA9TupleViewVyACyAA14LinearGradientVAA30_SafeAreaRegionsIgnoringLayoutVG_ACyACyAA14GeometryReaderVyACyAA6VStackVyAGyACyAA6SpacerVAA06_FrameN0VG_AGyAGyACyAA4TextVAA31AccessibilityAttachmentModifierVG_AUtGSg_ACyAPyAGyAA0G0PAAE15sensoryFeedback_7triggerQrAA07SensoryY0V_qd__tSQRd__lFQOyACyA2_AAE9focusableyQrSbFQOyACy07WorkoutB0010EffortZoneG0VATG_Qo_AA013_TraitWritingW0VyAA18TransitionTraitKeyVGG_SiQo_Sg_AUSgA8_17EffortValueButtonVtGGA17_GtGSgARA8_06EffortG21CurrentWorkloadButtonVSgtGGA17_GGAA08_PaddingN0VGAA05_FlexsN0VGtGGAA017_AppearanceActionW0VGMd);
  MEMORY[0x20F309B80](v30);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy7SwiftUI4AxisO3SetVGMd);
  v31 = swift_allocObject();
  *(v31 + 16) = xmmword_20CB5DA80;
  v32 = static Axis.Set.vertical.getter();
  *(v31 + 32) = v32;
  v33 = static Axis.Set.horizontal.getter();
  *(v31 + 33) = v33;
  Axis.Set.init(rawValue:)();
  Axis.Set.init(rawValue:)();
  if (Axis.Set.init(rawValue:)() != v32)
  {
    Axis.Set.init(rawValue:)();
  }

  Axis.Set.init(rawValue:)();
  if (Axis.Set.init(rawValue:)() != v33)
  {
    Axis.Set.init(rawValue:)();
  }

  *v57 = v28;
  *&v57[8] = MEMORY[0x277D839F8];
  *&v57[16] = v29;
  *&v57[24] = MEMORY[0x277D83A28];
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v36 = v48;
  v35 = v49;
  View.scrollIndicators(_:axes:)();
  (*(v46 + 8))(v4, v47);
  v37 = (*(v45 + 8))(v6, v36);
  v47 = &v45;
  MEMORY[0x28223BE20](v37);
  v46 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI19TupleToolbarContentVyAA0dE7BuilderV10buildBlockyQrxAA0dE0RzlFZQOy_AA0D4ItemVyytAA6ButtonVyAA5ImageVGGQo_Sg_AIyytAA08ModifiedE0VyASyAKyASyAmA31AccessibilityAttachmentModifierVGGAA024_EnvironmentKeyTransformO0VySbGGAA14_OpacityEffectVGGtGMd);
  *v57 = v36;
  *&v57[8] = OpaqueTypeConformance2;
  v38 = swift_getOpaqueTypeConformance2();
  v39 = lazy protocol witness table accessor for type ZStack<TupleView<(ModifiedContent<LinearGradient, _SafeAreaRegionsIgnoringLayout>, ModifiedContent<ModifiedContent<GeometryReader<ModifiedContent<VStack<TupleView<(ModifiedContent<Spacer, _FrameLayout>, TupleView<(TupleView<(ModifiedContent<Text, AccessibilityAttachmentModifier>, ModifiedContent<Spacer, _FrameLayout>)>?, ModifiedContent<VStack<TupleView<((<<opaque return type of View.sensoryFeedback<A>(_:trigger:)>>.0)?, ModifiedContent<Spacer, _FrameLayout>?, EffortValueButton)>>, _TraitWritingModifier<TransitionTraitKey>>)>?, Spacer, EffortViewCurrentWorkloadButton?)>>, _TraitWritingModifier<TransitionTraitKey>>>, _PaddingLayout>, _FlexFrameLayout>)>> and conformance ZStack<A>(&lazy protocol witness table cache variable for type TupleToolbarContent<((<<opaque return type of static ToolbarContentBuilder.buildBlock<A>(_:)>>.0)?, ToolbarItem<(), ModifiedContent<ModifiedContent<Button<ModifiedContent<Image, AccessibilityAttachmentModifier>>, _EnvironmentKeyTransformModifier<Bool>>, _OpacityEffect>>)> and conformance TupleToolbarContent<A>, &_s7SwiftUI19TupleToolbarContentVyAA0dE7BuilderV10buildBlockyQrxAA0dE0RzlFZQOy_AA0D4ItemVyytAA6ButtonVyAA5ImageVGGQo_Sg_AIyytAA08ModifiedE0VyASyAKyASyAmA31AccessibilityAttachmentModifierVGGAA024_EnvironmentKeyTransformO0VySbGGAA14_OpacityEffectVGGtGMd);
  v40 = v51;
  v41 = v52;
  View.toolbar<A>(content:)();
  (*(v50 + 8))(v35, v40);
  v56 = v64;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI5StateVySbGMd);
  v42 = State.projectedValue.getter();
  MEMORY[0x28223BE20](v42);
  *v57 = v40;
  *&v57[8] = v46;
  *&v57[16] = v38;
  *&v57[24] = v39;
  swift_getOpaqueTypeConformance2();
  lazy protocol witness table accessor for type EffortListView and conformance EffortListView();
  v43 = v54;
  View.navigationDestination<A>(isPresented:destination:)();

  return (*(v53 + 8))(v41, v43);
}

uint64_t closure #1 in EffortEntryView.body.getter@<X0>(_OWORD *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11WorkoutCore18AppleExertionScaleOSgMd);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v34 - v5;
  v64 = *(a1 + 40);
  v41 = *(a1 + 40);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI5StateVySdGMd);
  result = State.wrappedValue.getter();
  v8 = round(*&v39);
  if ((*&v8 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_13;
  }

  if (v8 <= -9.22337204e18)
  {
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  if (v8 >= 9.22337204e18)
  {
LABEL_14:
    __break(1u);
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  if (v8 < 1)
  {
    v10 = 1;
    goto LABEL_11;
  }

  v41 = v64;
  result = State.wrappedValue.getter();
  v9 = round(*&v39);
  if ((*&v9 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    goto LABEL_15;
  }

  if (v9 <= -9.22337204e18)
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  if (v9 >= 9.22337204e18)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  result = v9 - 1;
  if (!__OFSUB__(v9, 1))
  {
    static AppleExertionScale.exertionForRow(_:)();
    v10 = 0;
LABEL_11:
    v11 = type metadata accessor for AppleExertionScale();
    (*(*(v11 - 8) + 56))(v6, v10, 1, v11);
    specialized static EffortColors.gradient(exertion:)(v6);
    _s11WorkoutCore18AppleExertionScaleOSgWOhTm_3(v6, &_s11WorkoutCore18AppleExertionScaleOSgMd);
    static UnitPoint.topLeading.getter();
    static UnitPoint.bottomTrailing.getter();
    LinearGradient.init(gradient:startPoint:endPoint:)();
    v35 = static SafeAreaRegions.all.getter();
    v12 = static Edge.Set.all.getter();
    v13 = v54;
    v14 = swift_allocObject();
    v15 = a1[5];
    v14[5] = a1[4];
    v14[6] = v15;
    v16 = a1[7];
    v14[7] = a1[6];
    v14[8] = v16;
    v17 = a1[1];
    v14[1] = *a1;
    v14[2] = v17;
    v18 = a1[3];
    v14[3] = a1[2];
    v14[4] = v18;
    outlined init with copy of EffortEntryView(a1, &v41);
    v19 = static Edge.Set.horizontal.getter();
    static Alignment.center.getter();
    v38 = 1;
    _FlexFrameLayout.init(minWidth:idealWidth:maxWidth:minHeight:idealHeight:maxHeight:alignment:)();
    v20 = v38;
    *&v53[55] = v60;
    *&v53[71] = v61;
    *&v53[87] = v62;
    *&v53[103] = v63;
    *&v53[7] = v57;
    *&v53[23] = v58;
    *&v53[39] = v59;
    *&v39 = partial apply for closure #1 in closure #1 in EffortEntryView.body.getter;
    *(&v39 + 1) = v14;
    LOBYTE(v40[0]) = v19;
    *(&v40[1] + 8) = 0u;
    *(v40 + 8) = 0u;
    BYTE8(v40[2]) = v38;
    *(&v40[2] + 9) = *v53;
    v21 = *v53;
    v22 = *&v53[16];
    *(&v40[3] + 9) = *&v53[16];
    v24 = *&v53[64];
    v23 = *&v53[80];
    *(&v40[7] + 9) = *&v53[80];
    *(&v40[6] + 9) = *&v53[64];
    v25 = *&v53[96];
    *(&v40[8] + 9) = *&v53[96];
    *(&v40[4] + 9) = *&v53[32];
    v26 = *&v53[32];
    v27 = *&v53[48];
    *(&v40[5] + 9) = *&v53[48];
    *&v37[39] = v40[1];
    *&v37[23] = v40[0];
    *&v37[7] = v39;
    *&v37[103] = v40[5];
    *&v37[87] = v40[4];
    *(&v40[9] + 1) = *(&v63 + 1);
    *&v37[71] = v40[3];
    *&v37[55] = v40[2];
    *&v37[167] = v40[9];
    *&v37[151] = v40[8];
    *&v37[135] = v40[7];
    *&v37[119] = v40[6];
    v28 = v55;
    *(a2 + 24) = v56;
    *(a2 + 8) = v28;
    v29 = *&v37[144];
    *(a2 + 177) = *&v37[128];
    *(a2 + 193) = v29;
    *(a2 + 209) = *&v37[160];
    v30 = *&v37[80];
    *(a2 + 113) = *&v37[64];
    *(a2 + 129) = v30;
    v31 = *&v37[112];
    *(a2 + 145) = *&v37[96];
    *(a2 + 161) = v31;
    v32 = *&v37[16];
    *(a2 + 49) = *v37;
    *(a2 + 65) = v32;
    v33 = *&v37[48];
    *(a2 + 81) = *&v37[32];
    *(a2 + 97) = v33;
    v43 = 0u;
    v44 = 0u;
    v50 = v24;
    v51 = v23;
    *a2 = v13;
    *(a2 + 40) = v35;
    *(a2 + 48) = v12;
    *(a2 + 224) = *&v37[175];
    *&v41 = partial apply for closure #1 in closure #1 in EffortEntryView.body.getter;
    *(&v41 + 1) = v14;
    v42 = v19;
    v45 = v20;
    *v52 = v25;
    *&v52[15] = *&v53[111];
    v46 = v21;
    v47 = v22;
    v48 = v26;
    v49 = v27;

    outlined init with copy of TupleView<(ModifiedContent<LinearGradient, _SafeAreaRegionsIgnoringLayout>, ModifiedContent<ModifiedContent<GeometryReader<ModifiedContent<VStack<TupleView<(ModifiedContent<Spacer, _FrameLayout>, TupleView<(TupleView<(ModifiedContent<Text, AccessibilityAttachmentModifier>, ModifiedContent<Spacer, _FrameLayout>)>?, ModifiedContent<VStack<TupleView<((<<opaque return type of View.sensoryFeedback<A>(_:trigger:)>>.0)?, ModifiedContent<Spacer, _FrameLayout>?, EffortValueButton)>>, _TraitWritingModifier<TransitionTraitKey>>)>?, Spacer, EffortViewCurrentWorkloadButton?)>>, _TraitWritingModifier<TransitionTraitKey>>>, _PaddingLayout>, _FlexFrameLayout>)>(&v39, &v36, &_s7SwiftUI15ModifiedContentVyACyAA14GeometryReaderVyACyAA6VStackVyAA9TupleViewVyACyAA6SpacerVAA12_FrameLayoutVG_AIyAIyACyAA4TextVAA31AccessibilityAttachmentModifierVG_ANtGSg_ACyAGyAIyAA0I0PAAE15sensoryFeedback_7triggerQrAA07SensoryR0V_qd__tSQRd__lFQOyACyAwAE9focusableyQrSbFQOyACy07WorkoutB0010EffortZoneI0VAMG_Qo_AA013_TraitWritingP0VyAA010TransitionY3KeyVGG_SiQo_Sg_ANSgA1_0W11ValueButtonVtGGA10_GtGSgAKA1_0wI21CurrentWorkloadButtonVSgtGGA10_GGAA08_PaddingL0VGAA05_FlexkL0VGMd);
    outlined destroy of TupleView<(ModifiedContent<LinearGradient, _SafeAreaRegionsIgnoringLayout>, ModifiedContent<ModifiedContent<GeometryReader<ModifiedContent<VStack<TupleView<(ModifiedContent<Spacer, _FrameLayout>, TupleView<(TupleView<(ModifiedContent<Text, AccessibilityAttachmentModifier>, ModifiedContent<Spacer, _FrameLayout>)>?, ModifiedContent<VStack<TupleView<((<<opaque return type of View.sensoryFeedback<A>(_:trigger:)>>.0)?, ModifiedContent<Spacer, _FrameLayout>?, EffortValueButton)>>, _TraitWritingModifier<TransitionTraitKey>>)>?, Spacer, EffortViewCurrentWorkloadButton?)>>, _TraitWritingModifier<TransitionTraitKey>>>, _PaddingLayout>, _FlexFrameLayout>)>(&v41, &_s7SwiftUI15ModifiedContentVyACyAA14GeometryReaderVyACyAA6VStackVyAA9TupleViewVyACyAA6SpacerVAA12_FrameLayoutVG_AIyAIyACyAA4TextVAA31AccessibilityAttachmentModifierVG_ANtGSg_ACyAGyAIyAA0I0PAAE15sensoryFeedback_7triggerQrAA07SensoryR0V_qd__tSQRd__lFQOyACyAwAE9focusableyQrSbFQOyACy07WorkoutB0010EffortZoneI0VAMG_Qo_AA013_TraitWritingP0VyAA010TransitionY3KeyVGG_SiQo_Sg_ANSgA1_0W11ValueButtonVtGGA10_GtGSgAKA1_0wI21CurrentWorkloadButtonVSgtGGA10_GGAA08_PaddingL0VGAA05_FlexkL0VGMd);
  }

LABEL_18:
  __break(1u);
  return result;
}

uint64_t closure #1 in closure #1 in EffortEntryView.body.getter@<X0>(uint64_t a1@<X0>, __int128 *a2@<X1>, uint64_t a3@<X8>)
{
  *a3 = static HorizontalAlignment.center.getter();
  *(a3 + 8) = 0;
  *(a3 + 16) = 0;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI13_VariadicViewO4TreeVy_AA13_VStackLayoutVAA05TupleD0VyAA15ModifiedContentVyAA6SpacerVAA06_FrameG0VG_AIyAIyAKyAA4TextVAA31AccessibilityAttachmentModifierVG_APtGSg_AKyAA0F0VyAIyAA0D0PAAE15sensoryFeedback_7triggerQrAA07SensoryR0V_qd__tSQRd__lFQOyAKyA_AAE9focusableyQrSbFQOyAKy07WorkoutB0010EffortZoneD0VAOG_Qo_AA013_TraitWritingP0VyAA010TransitionY3KeyVGG_SiQo_Sg_APSgA5_0W11ValueButtonVtGGA14_GtGSgAMA5_0wD21CurrentWorkloadButtonVSgtGGMd);
  closure #1 in closure #1 in closure #1 in EffortEntryView.body.getter(a2, a1, a3 + *(v6 + 44));
  static AnyTransition.move(edge:)();
  static AnyTransition.opacity.getter();
  v7 = static AnyTransition.asymmetric(insertion:removal:)();

  result = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyAA6VStackVyAA9TupleViewVyACyAA6SpacerVAA12_FrameLayoutVG_AGyAGyACyAA4TextVAA31AccessibilityAttachmentModifierVG_ALtGSg_ACyAEyAGyAA0G0PAAE15sensoryFeedback_7triggerQrAA07SensoryP0V_qd__tSQRd__lFQOyACyAuAE9focusableyQrSbFQOyACy07WorkoutB0010EffortZoneG0VAKG_Qo_AA013_TraitWritingN0VyAA010TransitionW3KeyVGG_SiQo_Sg_ALSgA_0U11ValueButtonVtGGA8_GtGSgAIA_0uG21CurrentWorkloadButtonVSgtGGA8_GMd);
  *(a3 + *(result + 36)) = v7;
  return result;
}

uint64_t closure #1 in closure #1 in closure #1 in EffortEntryView.body.getter@<X0>(__int128 *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v103 = a2;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI9TupleViewVyACyAA15ModifiedContentVyAA4TextVAA31AccessibilityAttachmentModifierVG_AEyAA6SpacerVAA12_FrameLayoutVGtGSg_AEyAA6VStackVyACyAA0D0PAAE15sensoryFeedback_7triggerQrAA07SensoryP0V_qd__tSQRd__lFQOyAEyAuAE9focusableyQrSbFQOyAEy07WorkoutB0010EffortZoneD0VANG_Qo_AA013_TraitWritingJ0VyAA010TransitionW3KeyVGG_SiQo_Sg_AOSgA_0U11ValueButtonVtGGA8_GtGMd);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v104 = &v84 - v7;
  v102 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyAA6VStackVyAA9TupleViewVyAA0G0PAAE15sensoryFeedback_7triggerQrAA07SensoryI0V_qd__tSQRd__lFQOyACyAiAE9focusableyQrSbFQOyACy07WorkoutB0010EffortZoneG0VAA12_FrameLayoutVG_Qo_AA21_TraitWritingModifierVyAA010TransitionR3KeyVGG_SiQo_Sg_ACyAA6SpacerVASGSgAO0N11ValueButtonVtGGAZGMd);
  MEMORY[0x28223BE20](v102);
  v9 = &v84 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v12 = (&v84 - v11);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI9TupleViewVyAA15ModifiedContentVyAA4TextVAA31AccessibilityAttachmentModifierVG_AEyAA6SpacerVAA12_FrameLayoutVGtGMd);
  v98 = *(v13 - 8);
  v99 = v13;
  MEMORY[0x28223BE20](v13);
  v97 = &v84 - v14;
  v15 = type metadata accessor for AccessibilityTraits();
  v93 = *(v15 - 8);
  v94 = v15;
  MEMORY[0x28223BE20](v15);
  v92 = &v84 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyAA4TextVAA31AccessibilityAttachmentModifierVGMd);
  MEMORY[0x28223BE20](v17 - 8);
  v96 = &v84 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v19);
  v95 = &v84 - v20;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI9TupleViewVyAA15ModifiedContentVyAA4TextVAA31AccessibilityAttachmentModifierVG_AEyAA6SpacerVAA12_FrameLayoutVGtGSgMd);
  MEMORY[0x28223BE20](v21 - 8);
  v101 = &v84 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v23);
  v100 = &v84 - v24;
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI9TupleViewVyACyAA15ModifiedContentVyAA4TextVAA31AccessibilityAttachmentModifierVG_AEyAA6SpacerVAA12_FrameLayoutVGtGSg_AEyAA6VStackVyACyAA0D0PAAE15sensoryFeedback_7triggerQrAA07SensoryP0V_qd__tSQRd__lFQOyAEyAuAE9focusableyQrSbFQOyAEy07WorkoutB0010EffortZoneD0VANG_Qo_AA013_TraitWritingJ0VyAA010TransitionW3KeyVGG_SiQo_Sg_AOSgA_0U11ValueButtonVtGGA8_GtGSgMd);
  MEMORY[0x28223BE20](v25 - 8);
  v27 = &v84 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v28);
  v109 = &v84 - v29;
  if (one-time initialization token for topSpacersHeight != -1)
  {
    swift_once();
  }

  v30 = static EffortEntryView.Layout.topSpacersHeight;
  static Alignment.center.getter();
  v91 = v30;
  _FrameLayout.init(width:height:alignment:)();
  v107 = v117;
  v108 = v115;
  v105 = v120;
  v106 = v119;
  v129 = 1;
  v128 = v116;
  v127 = v118;
  v110 = *(a1 + 72);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI5StateVySbGMd);
  State.wrappedValue.getter();
  if ((v121 & 1) == 0)
  {
    v84 = v12;
    v85 = v9;
    v86 = v27;
    v87 = v6;
    v88 = v5;
    v89 = a1;
    v90 = a3;
    if (one-time initialization token for WorkoutUIBundle != -1)
    {
      swift_once();
    }

    swift_beginAccess();
    v33 = WorkoutUIBundle.super.isa;
    v130._object = 0xE000000000000000;
    v34.value._countAndFlagsBits = 0x617A696C61636F4CLL;
    v34.value._object = 0xEB00000000656C62;
    v35._object = 0x800000020CB9E200;
    v35._countAndFlagsBits = 0xD000000000000010;
    v36._countAndFlagsBits = 0;
    v36._object = 0xE000000000000000;
    v130._countAndFlagsBits = 0;
    v37 = NSLocalizedString(_:tableName:bundle:value:comment:)(v35, v34, v33, v36, v130);

    v110 = v37;
    lazy protocol witness table accessor for type String and conformance String();
    v38 = Text.init<A>(_:)();
    v40 = v39;
    v42 = v41;
    static Font.title.getter();
    static Font.Weight.bold.getter();
    Font.weight(_:)();

    v43 = Text.font(_:)();
    v45 = v44;
    v47 = v46;
    v49 = v48;

    outlined consume of Text.Storage(v38, v40, v42 & 1);

    v110._countAndFlagsBits = v43;
    v110._object = v45;
    v47 &= 1u;
    v111 = v47;
    v112 = v49;
    v50 = v92;
    static AccessibilityTraits.isHeader.getter();
    v51 = v95;
    MEMORY[0x20F30A9C0](v50, MEMORY[0x277CE0BD8], MEMORY[0x277CE0BC8]);
    (*(v93 + 8))(v50, v94);
    outlined consume of Text.Storage(v43, v45, v47);

    static Alignment.center.getter();
    _FrameLayout.init(width:height:alignment:)();
    v93 = v123;
    v94 = v121;
    v52 = v125;
    v92 = v126;
    LOBYTE(v110._countAndFlagsBits) = 1;
    v114 = v122;
    v113 = v124;
    v53 = v96;
    _s11WorkoutCore18AppleExertionScaleOSgWOcTm_2(v51, v96, &_s7SwiftUI15ModifiedContentVyAA4TextVAA31AccessibilityAttachmentModifierVGMd);
    countAndFlagsBits = v110._countAndFlagsBits;
    v55 = v114;
    LOBYTE(v43) = v113;
    v56 = v97;
    _s11WorkoutCore18AppleExertionScaleOSgWOcTm_2(v53, v97, &_s7SwiftUI15ModifiedContentVyAA4TextVAA31AccessibilityAttachmentModifierVGMd);
    v57 = v56 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyAA4TextVAA31AccessibilityAttachmentModifierVG_ACyAA6SpacerVAA12_FrameLayoutVGtMd) + 48);
    *v57 = 0;
    *(v57 + 8) = countAndFlagsBits;
    v58 = v93;
    *(v57 + 16) = v94;
    *(v57 + 24) = v55;
    *(v57 + 32) = v58;
    *(v57 + 40) = v43;
    v59 = v92;
    *(v57 + 48) = v52;
    *(v57 + 56) = v59;
    _s11WorkoutCore18AppleExertionScaleOSgWOhTm_3(v51, &_s7SwiftUI15ModifiedContentVyAA4TextVAA31AccessibilityAttachmentModifierVGMd);
    _s11WorkoutCore18AppleExertionScaleOSgWOhTm_3(v53, &_s7SwiftUI15ModifiedContentVyAA4TextVAA31AccessibilityAttachmentModifierVGMd);
    v60 = v100;
    outlined init with take of ModifiedContent<Button<ModifiedContent<Image, AccessibilityAttachmentModifier>>, _EnvironmentKeyTransformModifier<Bool>>(v56, v100, &_s7SwiftUI9TupleViewVyAA15ModifiedContentVyAA4TextVAA31AccessibilityAttachmentModifierVG_AEyAA6SpacerVAA12_FrameLayoutVGtGMd);
    (*(v98 + 56))(v60, 0, 1, v99);
    v61 = static HorizontalAlignment.center.getter();
    v62 = v84;
    *v84 = v61;
    *(v62 + 8) = 0;
    *(v62 + 16) = 0;
    v63 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI13_VariadicViewO4TreeVy_AA13_VStackLayoutVAA05TupleD0VyAA0D0PAAE15sensoryFeedback_7triggerQrAA07SensoryJ0V_qd__tSQRd__lFQOyAA15ModifiedContentVyAkAE9focusableyQrSbFQOyAQy07WorkoutB0010EffortZoneD0VAA06_FrameG0VG_Qo_AA21_TraitWritingModifierVyAA010TransitionT3KeyVGG_SiQo_Sg_AQyAA6SpacerVAWGSgAS0Q11ValueButtonVtGGMd);
    a1 = v89;
    closure #1 in closure #1 in closure #1 in closure #1 in EffortEntryView.body.getter(v89, v103, v62 + *(v63 + 44));
    static AnyTransition.move(edge:)();
    static AnyTransition.opacity.getter();
    v64 = static AnyTransition.asymmetric(insertion:removal:)();

    v65 = v101;
    *(v62 + *(v102 + 36)) = v64;
    _s11WorkoutCore18AppleExertionScaleOSgWOcTm_2(v60, v65, &_s7SwiftUI9TupleViewVyAA15ModifiedContentVyAA4TextVAA31AccessibilityAttachmentModifierVG_AEyAA6SpacerVAA12_FrameLayoutVGtGSgMd);
    v66 = v85;
    outlined init with copy of TupleView<(ModifiedContent<LinearGradient, _SafeAreaRegionsIgnoringLayout>, ModifiedContent<ModifiedContent<GeometryReader<ModifiedContent<VStack<TupleView<(ModifiedContent<Spacer, _FrameLayout>, TupleView<(TupleView<(ModifiedContent<Text, AccessibilityAttachmentModifier>, ModifiedContent<Spacer, _FrameLayout>)>?, ModifiedContent<VStack<TupleView<((<<opaque return type of View.sensoryFeedback<A>(_:trigger:)>>.0)?, ModifiedContent<Spacer, _FrameLayout>?, EffortValueButton)>>, _TraitWritingModifier<TransitionTraitKey>>)>?, Spacer, EffortViewCurrentWorkloadButton?)>>, _TraitWritingModifier<TransitionTraitKey>>>, _PaddingLayout>, _FlexFrameLayout>)>(v62, v85, &_s7SwiftUI15ModifiedContentVyAA6VStackVyAA9TupleViewVyAA0G0PAAE15sensoryFeedback_7triggerQrAA07SensoryI0V_qd__tSQRd__lFQOyACyAiAE9focusableyQrSbFQOyACy07WorkoutB0010EffortZoneG0VAA12_FrameLayoutVG_Qo_AA21_TraitWritingModifierVyAA010TransitionR3KeyVGG_SiQo_Sg_ACyAA6SpacerVASGSgAO0N11ValueButtonVtGGAZGMd);
    v67 = v104;
    _s11WorkoutCore18AppleExertionScaleOSgWOcTm_2(v65, v104, &_s7SwiftUI9TupleViewVyAA15ModifiedContentVyAA4TextVAA31AccessibilityAttachmentModifierVG_AEyAA6SpacerVAA12_FrameLayoutVGtGSgMd);
    v68 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI9TupleViewVyAA15ModifiedContentVyAA4TextVAA31AccessibilityAttachmentModifierVG_AEyAA6SpacerVAA12_FrameLayoutVGtGSg_AEyAA6VStackVyACyAA0D0PAAE15sensoryFeedback_7triggerQrAA07SensoryP0V_qd__tSQRd__lFQOyAEyAuAE9focusableyQrSbFQOyAEy07WorkoutB0010EffortZoneD0VANG_Qo_AA013_TraitWritingJ0VyAA010TransitionW3KeyVGG_SiQo_Sg_AOSgA_0U11ValueButtonVtGGA8_GtMd);
    outlined init with copy of TupleView<(ModifiedContent<LinearGradient, _SafeAreaRegionsIgnoringLayout>, ModifiedContent<ModifiedContent<GeometryReader<ModifiedContent<VStack<TupleView<(ModifiedContent<Spacer, _FrameLayout>, TupleView<(TupleView<(ModifiedContent<Text, AccessibilityAttachmentModifier>, ModifiedContent<Spacer, _FrameLayout>)>?, ModifiedContent<VStack<TupleView<((<<opaque return type of View.sensoryFeedback<A>(_:trigger:)>>.0)?, ModifiedContent<Spacer, _FrameLayout>?, EffortValueButton)>>, _TraitWritingModifier<TransitionTraitKey>>)>?, Spacer, EffortViewCurrentWorkloadButton?)>>, _TraitWritingModifier<TransitionTraitKey>>>, _PaddingLayout>, _FlexFrameLayout>)>(v66, v67 + *(v68 + 48), &_s7SwiftUI15ModifiedContentVyAA6VStackVyAA9TupleViewVyAA0G0PAAE15sensoryFeedback_7triggerQrAA07SensoryI0V_qd__tSQRd__lFQOyACyAiAE9focusableyQrSbFQOyACy07WorkoutB0010EffortZoneG0VAA12_FrameLayoutVG_Qo_AA21_TraitWritingModifierVyAA010TransitionR3KeyVGG_SiQo_Sg_ACyAA6SpacerVASGSgAO0N11ValueButtonVtGGAZGMd);
    outlined destroy of TupleView<(ModifiedContent<LinearGradient, _SafeAreaRegionsIgnoringLayout>, ModifiedContent<ModifiedContent<GeometryReader<ModifiedContent<VStack<TupleView<(ModifiedContent<Spacer, _FrameLayout>, TupleView<(TupleView<(ModifiedContent<Text, AccessibilityAttachmentModifier>, ModifiedContent<Spacer, _FrameLayout>)>?, ModifiedContent<VStack<TupleView<((<<opaque return type of View.sensoryFeedback<A>(_:trigger:)>>.0)?, ModifiedContent<Spacer, _FrameLayout>?, EffortValueButton)>>, _TraitWritingModifier<TransitionTraitKey>>)>?, Spacer, EffortViewCurrentWorkloadButton?)>>, _TraitWritingModifier<TransitionTraitKey>>>, _PaddingLayout>, _FlexFrameLayout>)>(v62, &_s7SwiftUI15ModifiedContentVyAA6VStackVyAA9TupleViewVyAA0G0PAAE15sensoryFeedback_7triggerQrAA07SensoryI0V_qd__tSQRd__lFQOyACyAiAE9focusableyQrSbFQOyACy07WorkoutB0010EffortZoneG0VAA12_FrameLayoutVG_Qo_AA21_TraitWritingModifierVyAA010TransitionR3KeyVGG_SiQo_Sg_ACyAA6SpacerVASGSgAO0N11ValueButtonVtGGAZGMd);
    _s11WorkoutCore18AppleExertionScaleOSgWOhTm_3(v60, &_s7SwiftUI9TupleViewVyAA15ModifiedContentVyAA4TextVAA31AccessibilityAttachmentModifierVG_AEyAA6SpacerVAA12_FrameLayoutVGtGSgMd);
    outlined destroy of TupleView<(ModifiedContent<LinearGradient, _SafeAreaRegionsIgnoringLayout>, ModifiedContent<ModifiedContent<GeometryReader<ModifiedContent<VStack<TupleView<(ModifiedContent<Spacer, _FrameLayout>, TupleView<(TupleView<(ModifiedContent<Text, AccessibilityAttachmentModifier>, ModifiedContent<Spacer, _FrameLayout>)>?, ModifiedContent<VStack<TupleView<((<<opaque return type of View.sensoryFeedback<A>(_:trigger:)>>.0)?, ModifiedContent<Spacer, _FrameLayout>?, EffortValueButton)>>, _TraitWritingModifier<TransitionTraitKey>>)>?, Spacer, EffortViewCurrentWorkloadButton?)>>, _TraitWritingModifier<TransitionTraitKey>>>, _PaddingLayout>, _FlexFrameLayout>)>(v66, &_s7SwiftUI15ModifiedContentVyAA6VStackVyAA9TupleViewVyAA0G0PAAE15sensoryFeedback_7triggerQrAA07SensoryI0V_qd__tSQRd__lFQOyACyAiAE9focusableyQrSbFQOyACy07WorkoutB0010EffortZoneG0VAA12_FrameLayoutVG_Qo_AA21_TraitWritingModifierVyAA010TransitionR3KeyVGG_SiQo_Sg_ACyAA6SpacerVASGSgAO0N11ValueButtonVtGGAZGMd);
    _s11WorkoutCore18AppleExertionScaleOSgWOhTm_3(v65, &_s7SwiftUI9TupleViewVyAA15ModifiedContentVyAA4TextVAA31AccessibilityAttachmentModifierVG_AEyAA6SpacerVAA12_FrameLayoutVGtGSgMd);
    v69 = v109;
    sub_20C68E118(v67, v109);
    (*(v87 + 56))(v69, 0, 1, v88);
    a3 = v90;
    v27 = v86;
    if ((a1[2] & 1) == 0)
    {
      goto LABEL_5;
    }

LABEL_9:
    v32 = swift_allocObject();
    v70 = a1[5];
    *(v32 + 5) = a1[4];
    *(v32 + 6) = v70;
    v71 = a1[7];
    *(v32 + 7) = a1[6];
    *(v32 + 8) = v71;
    v72 = a1[1];
    *(v32 + 1) = *a1;
    *(v32 + 2) = v72;
    v73 = a1[3];
    *(v32 + 3) = a1[2];
    *(v32 + 4) = v73;
    outlined init with copy of EffortEntryView(a1, &v110);

    v31 = partial apply for closure #2 in closure #1 in closure #1 in closure #1 in EffortEntryView.body.getter;
    goto LABEL_10;
  }

  (*(v6 + 56))(v109, 1, 1, v5);
  if (a1[2])
  {
    goto LABEL_9;
  }

LABEL_5:
  v31 = 0;
  v32 = 0;
LABEL_10:
  v74 = v129;
  v75 = v128;
  v76 = v127;
  v77 = v109;
  outlined init with copy of TupleView<(ModifiedContent<LinearGradient, _SafeAreaRegionsIgnoringLayout>, ModifiedContent<ModifiedContent<GeometryReader<ModifiedContent<VStack<TupleView<(ModifiedContent<Spacer, _FrameLayout>, TupleView<(TupleView<(ModifiedContent<Text, AccessibilityAttachmentModifier>, ModifiedContent<Spacer, _FrameLayout>)>?, ModifiedContent<VStack<TupleView<((<<opaque return type of View.sensoryFeedback<A>(_:trigger:)>>.0)?, ModifiedContent<Spacer, _FrameLayout>?, EffortValueButton)>>, _TraitWritingModifier<TransitionTraitKey>>)>?, Spacer, EffortViewCurrentWorkloadButton?)>>, _TraitWritingModifier<TransitionTraitKey>>>, _PaddingLayout>, _FlexFrameLayout>)>(v109, v27, &_s7SwiftUI9TupleViewVyACyAA15ModifiedContentVyAA4TextVAA31AccessibilityAttachmentModifierVG_AEyAA6SpacerVAA12_FrameLayoutVGtGSg_AEyAA6VStackVyACyAA0D0PAAE15sensoryFeedback_7triggerQrAA07SensoryP0V_qd__tSQRd__lFQOyAEyAuAE9focusableyQrSbFQOyAEy07WorkoutB0010EffortZoneD0VANG_Qo_AA013_TraitWritingJ0VyAA010TransitionW3KeyVGG_SiQo_Sg_AOSgA_0U11ValueButtonVtGGA8_GtGSgMd);
  *a3 = 0;
  *(a3 + 8) = v74;
  v78 = v107;
  *(a3 + 16) = v108;
  *(a3 + 24) = v75;
  *(a3 + 32) = v78;
  *(a3 + 40) = v76;
  v79 = v105;
  *(a3 + 48) = v106;
  *(a3 + 56) = v79;
  v80 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyAA6SpacerVAA12_FrameLayoutVG_AA9TupleViewVyAJyACyAA4TextVAA31AccessibilityAttachmentModifierVG_AHtGSg_ACyAA6VStackVyAJyAA0I0PAAE15sensoryFeedback_7triggerQrAA07SensoryP0V_qd__tSQRd__lFQOyACyAuAE9focusableyQrSbFQOyACy07WorkoutB0010EffortZoneI0VAGG_Qo_AA013_TraitWritingM0VyAA010TransitionW3KeyVGG_SiQo_Sg_AHSgA_0U11ValueButtonVtGGA8_GtGSgAEA_0uI21CurrentWorkloadButtonVSgtMd);
  outlined init with copy of TupleView<(ModifiedContent<LinearGradient, _SafeAreaRegionsIgnoringLayout>, ModifiedContent<ModifiedContent<GeometryReader<ModifiedContent<VStack<TupleView<(ModifiedContent<Spacer, _FrameLayout>, TupleView<(TupleView<(ModifiedContent<Text, AccessibilityAttachmentModifier>, ModifiedContent<Spacer, _FrameLayout>)>?, ModifiedContent<VStack<TupleView<((<<opaque return type of View.sensoryFeedback<A>(_:trigger:)>>.0)?, ModifiedContent<Spacer, _FrameLayout>?, EffortValueButton)>>, _TraitWritingModifier<TransitionTraitKey>>)>?, Spacer, EffortViewCurrentWorkloadButton?)>>, _TraitWritingModifier<TransitionTraitKey>>>, _PaddingLayout>, _FlexFrameLayout>)>(v27, a3 + v80[12], &_s7SwiftUI9TupleViewVyACyAA15ModifiedContentVyAA4TextVAA31AccessibilityAttachmentModifierVG_AEyAA6SpacerVAA12_FrameLayoutVGtGSg_AEyAA6VStackVyACyAA0D0PAAE15sensoryFeedback_7triggerQrAA07SensoryP0V_qd__tSQRd__lFQOyAEyAuAE9focusableyQrSbFQOyAEy07WorkoutB0010EffortZoneD0VANG_Qo_AA013_TraitWritingJ0VyAA010TransitionW3KeyVGG_SiQo_Sg_AOSgA_0U11ValueButtonVtGGA8_GtGSgMd);
  v81 = a3 + v80[16];
  *v81 = 0;
  *(v81 + 8) = 1;
  v82 = (a3 + v80[20]);
  outlined copy of EffortViewCurrentWorkloadButton?(v31);
  outlined consume of EffortViewCurrentWorkloadButton?(v31);
  *v82 = v31;
  v82[1] = v32;
  outlined destroy of TupleView<(ModifiedContent<LinearGradient, _SafeAreaRegionsIgnoringLayout>, ModifiedContent<ModifiedContent<GeometryReader<ModifiedContent<VStack<TupleView<(ModifiedContent<Spacer, _FrameLayout>, TupleView<(TupleView<(ModifiedContent<Text, AccessibilityAttachmentModifier>, ModifiedContent<Spacer, _FrameLayout>)>?, ModifiedContent<VStack<TupleView<((<<opaque return type of View.sensoryFeedback<A>(_:trigger:)>>.0)?, ModifiedContent<Spacer, _FrameLayout>?, EffortValueButton)>>, _TraitWritingModifier<TransitionTraitKey>>)>?, Spacer, EffortViewCurrentWorkloadButton?)>>, _TraitWritingModifier<TransitionTraitKey>>>, _PaddingLayout>, _FlexFrameLayout>)>(v77, &_s7SwiftUI9TupleViewVyACyAA15ModifiedContentVyAA4TextVAA31AccessibilityAttachmentModifierVG_AEyAA6SpacerVAA12_FrameLayoutVGtGSg_AEyAA6VStackVyACyAA0D0PAAE15sensoryFeedback_7triggerQrAA07SensoryP0V_qd__tSQRd__lFQOyAEyAuAE9focusableyQrSbFQOyAEy07WorkoutB0010EffortZoneD0VANG_Qo_AA013_TraitWritingJ0VyAA010TransitionW3KeyVGG_SiQo_Sg_AOSgA_0U11ValueButtonVtGGA8_GtGSgMd);
  outlined consume of EffortViewCurrentWorkloadButton?(v31);
  return outlined destroy of TupleView<(ModifiedContent<LinearGradient, _SafeAreaRegionsIgnoringLayout>, ModifiedContent<ModifiedContent<GeometryReader<ModifiedContent<VStack<TupleView<(ModifiedContent<Spacer, _FrameLayout>, TupleView<(TupleView<(ModifiedContent<Text, AccessibilityAttachmentModifier>, ModifiedContent<Spacer, _FrameLayout>)>?, ModifiedContent<VStack<TupleView<((<<opaque return type of View.sensoryFeedback<A>(_:trigger:)>>.0)?, ModifiedContent<Spacer, _FrameLayout>?, EffortValueButton)>>, _TraitWritingModifier<TransitionTraitKey>>)>?, Spacer, EffortViewCurrentWorkloadButton?)>>, _TraitWritingModifier<TransitionTraitKey>>>, _PaddingLayout>, _FlexFrameLayout>)>(v27, &_s7SwiftUI9TupleViewVyACyAA15ModifiedContentVyAA4TextVAA31AccessibilityAttachmentModifierVG_AEyAA6SpacerVAA12_FrameLayoutVGtGSg_AEyAA6VStackVyACyAA0D0PAAE15sensoryFeedback_7triggerQrAA07SensoryP0V_qd__tSQRd__lFQOyAEyAuAE9focusableyQrSbFQOyAEy07WorkoutB0010EffortZoneD0VANG_Qo_AA013_TraitWritingJ0VyAA010TransitionW3KeyVGG_SiQo_Sg_AOSgA_0U11ValueButtonVtGGA8_GtGSgMd);
}

uint64_t closure #1 in closure #1 in closure #1 in closure #1 in EffortEntryView.body.getter@<X0>(__int128 *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v51 = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI4ViewPAAE15sensoryFeedback_7triggerQrAA07SensoryE0V_qd__tSQRd__lFQOyAA15ModifiedContentVyAcAE9focusableyQrSbFQOyAIy07WorkoutB0010EffortZoneC0VAA12_FrameLayoutVG_Qo_AA21_TraitWritingModifierVyAA010TransitionP3KeyVGG_SiQo_Md);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v41 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI4ViewPAAE15sensoryFeedback_7triggerQrAA07SensoryE0V_qd__tSQRd__lFQOyAA15ModifiedContentVyAcAE9focusableyQrSbFQOyAIy07WorkoutB0010EffortZoneC0VAA12_FrameLayoutVG_Qo_AA21_TraitWritingModifierVyAA010TransitionP3KeyVGG_SiQo_SgMd);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = &v41 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14.n128_f64[0] = MEMORY[0x28223BE20](v12);
  v15 = &v41 - v13;
  if (*(a1 + 33))
  {
    (*(v6 + 56))(&v41 - v13, 1, 1, v5, v14);
  }

  else
  {
    v16 = static Animation.timingCurve(_:_:_:_:duration:)();
    MEMORY[0x28223BE20](v16);
    *(&v41 - 2) = a1;
    *(&v41 - 1) = a2;
    withAnimation<A>(_:_:)();

    (*(v6 + 32))(v15, v8, v5);
    (*(v6 + 56))(v15, 0, 1, v5, v17);
  }

  static Alignment.center.getter();
  _FrameLayout.init(width:height:alignment:)();
  v18 = v67;
  v19 = v68;
  v20 = v69;
  v21 = v70;
  v22 = v71;
  v50 = v72;
  v65 = 1;
  v64 = v68;
  v63 = v70;
  v66 = 0;
  v55 = *(a1 + 40);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI5StateVySdGMd);
  result = State.wrappedValue.getter();
  v24 = round(*&v52);
  if ((*&v24 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_9;
  }

  if (v24 <= -9.22337204e18)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  if (v24 < 9.22337204e18)
  {
    v49 = v24;
    v25 = a1[5];
    v59 = a1[4];
    v60 = v25;
    v26 = a1[7];
    v61 = a1[6];
    v62 = v26;
    v27 = a1[1];
    v55 = *a1;
    v56 = v27;
    v28 = a1[3];
    v57 = a1[2];
    v58 = v28;
    v29 = EffortEntryView.explanationString.getter();
    v47 = v30;
    v48 = v29;
    v46 = v19;
    v52 = *(a1 + 56);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI5StateVySbGMd);
    v45 = v22;
    State.wrappedValue.getter();
    v44 = v54;
    v54 = a1[7];
    State.projectedValue.getter();
    v41 = v21;
    v31 = v52;
    v43 = v15;
    v42 = v53;
    outlined init with copy of TupleView<(ModifiedContent<LinearGradient, _SafeAreaRegionsIgnoringLayout>, ModifiedContent<ModifiedContent<GeometryReader<ModifiedContent<VStack<TupleView<(ModifiedContent<Spacer, _FrameLayout>, TupleView<(TupleView<(ModifiedContent<Text, AccessibilityAttachmentModifier>, ModifiedContent<Spacer, _FrameLayout>)>?, ModifiedContent<VStack<TupleView<((<<opaque return type of View.sensoryFeedback<A>(_:trigger:)>>.0)?, ModifiedContent<Spacer, _FrameLayout>?, EffortValueButton)>>, _TraitWritingModifier<TransitionTraitKey>>)>?, Spacer, EffortViewCurrentWorkloadButton?)>>, _TraitWritingModifier<TransitionTraitKey>>>, _PaddingLayout>, _FlexFrameLayout>)>(v15, v11, &_s7SwiftUI4ViewPAAE15sensoryFeedback_7triggerQrAA07SensoryE0V_qd__tSQRd__lFQOyAA15ModifiedContentVyAcAE9focusableyQrSbFQOyAIy07WorkoutB0010EffortZoneC0VAA12_FrameLayoutVG_Qo_AA21_TraitWritingModifierVyAA010TransitionP3KeyVGG_SiQo_SgMd);
    v32 = v18;
    v33 = v51;
    v34 = v66;
    outlined init with copy of TupleView<(ModifiedContent<LinearGradient, _SafeAreaRegionsIgnoringLayout>, ModifiedContent<ModifiedContent<GeometryReader<ModifiedContent<VStack<TupleView<(ModifiedContent<Spacer, _FrameLayout>, TupleView<(TupleView<(ModifiedContent<Text, AccessibilityAttachmentModifier>, ModifiedContent<Spacer, _FrameLayout>)>?, ModifiedContent<VStack<TupleView<((<<opaque return type of View.sensoryFeedback<A>(_:trigger:)>>.0)?, ModifiedContent<Spacer, _FrameLayout>?, EffortValueButton)>>, _TraitWritingModifier<TransitionTraitKey>>)>?, Spacer, EffortViewCurrentWorkloadButton?)>>, _TraitWritingModifier<TransitionTraitKey>>>, _PaddingLayout>, _FlexFrameLayout>)>(v11, v51, &_s7SwiftUI4ViewPAAE15sensoryFeedback_7triggerQrAA07SensoryE0V_qd__tSQRd__lFQOyAA15ModifiedContentVyAcAE9focusableyQrSbFQOyAIy07WorkoutB0010EffortZoneC0VAA12_FrameLayoutVG_Qo_AA21_TraitWritingModifierVyAA010TransitionP3KeyVGG_SiQo_SgMd);
    v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI4ViewPAAE15sensoryFeedback_7triggerQrAA07SensoryE0V_qd__tSQRd__lFQOyAA15ModifiedContentVyAcAE9focusableyQrSbFQOyAIy07WorkoutB0010EffortZoneC0VAA12_FrameLayoutVG_Qo_AA21_TraitWritingModifierVyAA010TransitionP3KeyVGG_SiQo_Sg_AIyAA6SpacerVAOGSgAK0L11ValueButtonVtMd);
    v36 = v33 + *(v35 + 48);
    *v36 = 0;
    *(v36 + 8) = 1;
    *(v36 + 16) = v32;
    *(v36 + 24) = v46;
    *(v36 + 32) = v20;
    *(v36 + 40) = v41;
    v37 = v49;
    v38 = v50;
    *(v36 + 48) = v45;
    *(v36 + 56) = v38;
    *(v36 + 64) = v34;
    v39 = v33 + *(v35 + 64);
    *v39 = v37;
    v40 = v47;
    *(v39 + 8) = v48;
    *(v39 + 16) = v40;
    *(v39 + 24) = v44;
    *(v39 + 32) = v31;
    *(v39 + 48) = v42;

    outlined destroy of TupleView<(ModifiedContent<LinearGradient, _SafeAreaRegionsIgnoringLayout>, ModifiedContent<ModifiedContent<GeometryReader<ModifiedContent<VStack<TupleView<(ModifiedContent<Spacer, _FrameLayout>, TupleView<(TupleView<(ModifiedContent<Text, AccessibilityAttachmentModifier>, ModifiedContent<Spacer, _FrameLayout>)>?, ModifiedContent<VStack<TupleView<((<<opaque return type of View.sensoryFeedback<A>(_:trigger:)>>.0)?, ModifiedContent<Spacer, _FrameLayout>?, EffortValueButton)>>, _TraitWritingModifier<TransitionTraitKey>>)>?, Spacer, EffortViewCurrentWorkloadButton?)>>, _TraitWritingModifier<TransitionTraitKey>>>, _PaddingLayout>, _FlexFrameLayout>)>(v43, &_s7SwiftUI4ViewPAAE15sensoryFeedback_7triggerQrAA07SensoryE0V_qd__tSQRd__lFQOyAA15ModifiedContentVyAcAE9focusableyQrSbFQOyAIy07WorkoutB0010EffortZoneC0VAA12_FrameLayoutVG_Qo_AA21_TraitWritingModifierVyAA010TransitionP3KeyVGG_SiQo_SgMd);

    return outlined destroy of TupleView<(ModifiedContent<LinearGradient, _SafeAreaRegionsIgnoringLayout>, ModifiedContent<ModifiedContent<GeometryReader<ModifiedContent<VStack<TupleView<(ModifiedContent<Spacer, _FrameLayout>, TupleView<(TupleView<(ModifiedContent<Text, AccessibilityAttachmentModifier>, ModifiedContent<Spacer, _FrameLayout>)>?, ModifiedContent<VStack<TupleView<((<<opaque return type of View.sensoryFeedback<A>(_:trigger:)>>.0)?, ModifiedContent<Spacer, _FrameLayout>?, EffortValueButton)>>, _TraitWritingModifier<TransitionTraitKey>>)>?, Spacer, EffortViewCurrentWorkloadButton?)>>, _TraitWritingModifier<TransitionTraitKey>>>, _PaddingLayout>, _FlexFrameLayout>)>(v11, &_s7SwiftUI4ViewPAAE15sensoryFeedback_7triggerQrAA07SensoryE0V_qd__tSQRd__lFQOyAA15ModifiedContentVyAcAE9focusableyQrSbFQOyAIy07WorkoutB0010EffortZoneC0VAA12_FrameLayoutVG_Qo_AA21_TraitWritingModifierVyAA010TransitionP3KeyVGG_SiQo_SgMd);
  }

LABEL_10:
  __break(1u);
  return result;
}

uint64_t closure #1 in closure #1 in closure #1 in closure #1 in closure #1 in EffortEntryView.body.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v47 = a3;
  v49 = a2;
  v4 = type metadata accessor for SensoryFeedback();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v41 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for OpacityTransition();
  v54 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v50 = &v41 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v51 = &v41 - v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11WorkoutCore18AppleExertionScaleOSgMd);
  MEMORY[0x28223BE20](v12 - 8);
  v14 = &v41 - v13;
  v48 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVy07WorkoutB014EffortZoneViewVAA12_FrameLayoutVGMd);
  MEMORY[0x28223BE20](v48);
  v16 = &v41 - v15;
  v52 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyAA4ViewPAAE9focusableyQrSbFQOyACy07WorkoutB0010EffortZoneE0VAA12_FrameLayoutVG_Qo_AA21_TraitWritingModifierVyAA010TransitionL3KeyVGGMd);
  MEMORY[0x28223BE20](v52);
  v53 = &v41 - v17;
  v60 = *(a1 + 40);
  v18 = a1;
  v57 = *(a1 + 40);
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI5StateVySdGMd);
  result = State.wrappedValue.getter();
  v21 = round(*&v56);
  if ((*&v21 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_16;
  }

  if (v21 <= -9.22337204e18)
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  if (v21 >= 9.22337204e18)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v42 = v4;
  v41 = v5;
  v46 = v7;
  v45 = v8;
  if (v21 < 1)
  {
    v23 = 1;
LABEL_11:
    v24 = type metadata accessor for AppleExertionScale();
    (*(*(v24 - 8) + 56))(v14, v23, 1, v24);
    specialized static EffortColors.midpointColor(exertion:)(v14);
    v43 = Color.opacity(_:)();

    _s11WorkoutCore18AppleExertionScaleOSgWOhTm_3(v14, &_s11WorkoutCore18AppleExertionScaleOSgMd);
    v56 = v60;
    v44 = v19;
    State.projectedValue.getter();
    v25 = v57;
    v26 = v58;
    v56 = *(v18 + 56);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI5StateVySbGMd);
    State.projectedValue.getter();
    v27 = v57;
    v28 = v58;
    v57 = *(v18 + 72);
    State.wrappedValue.getter();
    v29 = v56;
    *v16 = xmmword_20CB7EC70;
    *(v16 + 3) = 0x3FF0000000000000;
    *(v16 + 4) = &outlined read-only object #0 of closure #1 in closure #1 in closure #1 in closure #1 in closure #1 in EffortEntryView.body.getter;
    v30 = *(type metadata accessor for EffortZoneView() + 52);
    *&v16[v30] = swift_getKeyPath();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI11EnvironmentV7ContentOyAA15LayoutDirectionO_GMd);
    swift_storeEnumTagMultiPayload();
    *(v16 + 2) = v43;
    *(v16 + 40) = v25;
    *(v16 + 7) = v26;
    *(v16 + 4) = v27;
    v16[80] = v28;
    v16[81] = v29;
    LOBYTE(v56) = v29;
    State.init(wrappedValue:)();
    v31 = *(&v57 + 1);
    v16[88] = v57;
    *(v16 + 12) = v31;
    GeometryProxy.size.getter();
    GeometryProxy.size.getter();
    static Alignment.center.getter();
    _FrameLayout.init(width:height:alignment:)();
    v32 = &v16[*(v48 + 36)];
    v33 = v58;
    *v32 = v57;
    *(v32 + 1) = v33;
    *(v32 + 2) = v59;
    lazy protocol witness table accessor for type ModifiedContent<EffortZoneView, _FrameLayout> and conformance <> ModifiedContent<A, B>();
    v34 = v53;
    View.focusable(_:)();
    _s11WorkoutCore18AppleExertionScaleOSgWOhTm_3(v16, &_s7SwiftUI15ModifiedContentVy07WorkoutB014EffortZoneViewVAA12_FrameLayoutVGMd);
    v35 = v51;
    OpacityTransition.init()();
    v36 = v54;
    v37 = v45;
    (*(v54 + 16))(v50, v35, v45);
    _s7SwiftUI31AccessibilityAttachmentModifierVAcA04ViewE0AAWlTm_6(&lazy protocol witness table cache variable for type OpacityTransition and conformance OpacityTransition, MEMORY[0x277CE0068]);
    v38 = AnyTransition.init<A>(_:)();
    (*(v36 + 8))(v35, v37);
    *(v34 + *(v52 + 36)) = v38;
    v39 = v46;
    static SensoryFeedback.levelChange.getter();
    v56 = v60;
    result = State.wrappedValue.getter();
    v40 = round(v55);
    if ((*&v40 & 0x7FFFFFFFFFFFFFFFuLL) <= 0x7FEFFFFFFFFFFFFFLL)
    {
      if (v40 > -9.22337204e18)
      {
        if (v40 < 9.22337204e18)
        {
          *&v56 = v40;
          lazy protocol witness table accessor for type ModifiedContent<<<opaque return type of View.focusable(_:)>>.0, _TraitWritingModifier<TransitionTraitKey>> and conformance <> ModifiedContent<A, B>();
          View.sensoryFeedback<A>(_:trigger:)();
          (*(v41 + 8))(v39, v42);
          return outlined destroy of TupleView<(ModifiedContent<LinearGradient, _SafeAreaRegionsIgnoringLayout>, ModifiedContent<ModifiedContent<GeometryReader<ModifiedContent<VStack<TupleView<(ModifiedContent<Spacer, _FrameLayout>, TupleView<(TupleView<(ModifiedContent<Text, AccessibilityAttachmentModifier>, ModifiedContent<Spacer, _FrameLayout>)>?, ModifiedContent<VStack<TupleView<((<<opaque return type of View.sensoryFeedback<A>(_:trigger:)>>.0)?, ModifiedContent<Spacer, _FrameLayout>?, EffortValueButton)>>, _TraitWritingModifier<TransitionTraitKey>>)>?, Spacer, EffortViewCurrentWorkloadButton?)>>, _TraitWritingModifier<TransitionTraitKey>>>, _PaddingLayout>, _FlexFrameLayout>)>(v34, &_s7SwiftUI15ModifiedContentVyAA4ViewPAAE9focusableyQrSbFQOyACy07WorkoutB0010EffortZoneE0VAA12_FrameLayoutVG_Qo_AA21_TraitWritingModifierVyAA010TransitionL3KeyVGGMd);
        }

        goto LABEL_20;
      }

LABEL_19:
      __break(1u);
LABEL_20:
      __break(1u);
      goto LABEL_21;
    }

LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  v57 = *(a1 + 40);
  result = State.wrappedValue.getter();
  v22 = round(*&v56);
  if ((*&v22 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

  if (v22 <= -9.22337204e18)
  {
LABEL_22:
    __break(1u);
    goto LABEL_23;
  }

  if (v22 >= 9.22337204e18)
  {
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  result = v22 - 1;
  if (!__OFSUB__(v22, 1))
  {
    static AppleExertionScale.exertionForRow(_:)();
    v23 = 0;
    goto LABEL_11;
  }

LABEL_24:
  __break(1u);
  return result;
}

uint64_t closure #2 in EffortEntryView.body.getter(uint64_t a1)
{
  v2 = type metadata accessor for Logger();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v21[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v6);
  v8 = &v21[-v7];
  v22 = *(a1 + 72);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI5StateVySbGMd);
  result = State.wrappedValue.getter();
  if (v21[15] == 1)
  {
    static WOLog.app.getter();
    v10 = Logger.logObject.getter();
    v11 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v10, v11))
    {
      v12 = swift_slowAlloc();
      v13 = swift_slowAlloc();
      *&v22 = v13;
      *v12 = 136315138;
      *(v12 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0x6E4574726F666645, 0xEF77656956797274, &v22);
      _os_log_impl(&dword_20C66F000, v10, v11, "[%s]: animating scene appearance", v12, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v13);
      MEMORY[0x20F30E080](v13, -1, -1);
      MEMORY[0x20F30E080](v12, -1, -1);
    }

    v14 = *(v3 + 8);
    v15 = v14(v8, v2);
    MEMORY[0x28223BE20](v15);
    *&v21[-16] = a1;
    static Animation.default.getter();
    withAnimation<A>(_:_:)();

    static WOLog.app.getter();
    v16 = Logger.logObject.getter();
    v17 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v16, v17))
    {
      v18 = swift_slowAlloc();
      v19 = swift_slowAlloc();
      *&v22 = v19;
      *v18 = 136315138;
      *(v18 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0x6E4574726F666645, 0xEF77656956797274, &v22);
      _os_log_impl(&dword_20C66F000, v16, v17, "[%s]: animating cancel button appearance", v18, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v19);
      MEMORY[0x20F30E080](v19, -1, -1);
      MEMORY[0x20F30E080](v18, -1, -1);
    }

    v14(v5, v2);
    static Animation.default.getter();
    Animation.delay(_:)();

    MEMORY[0x28223BE20](v20);
    *&v21[-16] = a1;
    withAnimation<A>(_:_:)();
  }

  return result;
}

uint64_t closure #3 in EffortEntryView.body.getter()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI5StateVySdGMd);
  State.wrappedValue.getter();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI5StateVySbGMd);
  return State.wrappedValue.setter();
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<ZStack<TupleView<(ModifiedContent<LinearGradient, _SafeAreaRegionsIgnoringLayout>, ModifiedContent<ModifiedContent<GeometryReader<ModifiedContent<VStack<TupleView<(ModifiedContent<Spacer, _FrameLayout>, TupleView<(TupleView<(ModifiedContent<Text, AccessibilityAttachmentModifier>, ModifiedContent<Spacer, _FrameLayout>)>?, ModifiedContent<VStack<TupleView<((<<opaque return type of View.sensoryFeedback<A>(_:trigger:)>>.0)?, ModifiedContent<Spacer, _FrameLayout>?, EffortValueButton)>>, _TraitWritingModifier<TransitionTraitKey>>)>?, Spacer, EffortViewCurrentWorkloadButton?)>>, _TraitWritingModifier<TransitionTraitKey>>>, _PaddingLayout>, _FlexFrameLayout>)>>, _AppearanceActionModifier> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<ZStack<TupleView<(ModifiedContent<LinearGradient, _SafeAreaRegionsIgnoringLayout>, ModifiedContent<ModifiedContent<GeometryReader<ModifiedContent<VStack<TupleView<(ModifiedContent<Spacer, _FrameLayout>, TupleView<(TupleView<(ModifiedContent<Text, AccessibilityAttachmentModifier>, ModifiedContent<Spacer, _FrameLayout>)>?, ModifiedContent<VStack<TupleView<((<<opaque return type of View.sensoryFeedback<A>(_:trigger:)>>.0)?, ModifiedContent<Spacer, _FrameLayout>?, EffortValueButton)>>, _TraitWritingModifier<TransitionTraitKey>>)>?, Spacer, EffortViewCurrentWorkloadButton?)>>, _TraitWritingModifier<TransitionTraitKey>>>, _PaddingLayout>, _FlexFrameLayout>)>>, _AppearanceActionModifier> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<ZStack<TupleView<(ModifiedContent<LinearGradient, _SafeAreaRegionsIgnoringLayout>, ModifiedContent<ModifiedContent<GeometryReader<ModifiedContent<VStack<TupleView<(ModifiedContent<Spacer, _FrameLayout>, TupleView<(TupleView<(ModifiedContent<Text, AccessibilityAttachmentModifier>, ModifiedContent<Spacer, _FrameLayout>)>?, ModifiedContent<VStack<TupleView<((<<opaque return type of View.sensoryFeedback<A>(_:trigger:)>>.0)?, ModifiedContent<Spacer, _FrameLayout>?, EffortValueButton)>>, _TraitWritingModifier<TransitionTraitKey>>)>?, Spacer, EffortViewCurrentWorkloadButton?)>>, _TraitWritingModifier<TransitionTraitKey>>>, _PaddingLayout>, _FlexFrameLayout>)>>, _AppearanceActionModifier> and conformance <> ModifiedContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyAA6ZStackVyAA9TupleViewVyACyAA14LinearGradientVAA30_SafeAreaRegionsIgnoringLayoutVG_ACyACyAA14GeometryReaderVyACyAA6VStackVyAGyACyAA6SpacerVAA06_FrameN0VG_AGyAGyACyAA4TextVAA31AccessibilityAttachmentModifierVG_AUtGSg_ACyAPyAGyAA0G0PAAE15sensoryFeedback_7triggerQrAA07SensoryY0V_qd__tSQRd__lFQOyACyA2_AAE9focusableyQrSbFQOyACy07WorkoutB0010EffortZoneG0VATG_Qo_AA013_TraitWritingW0VyAA18TransitionTraitKeyVGG_SiQo_Sg_AUSgA8_17EffortValueButtonVtGGA17_GtGSgARA8_06EffortG21CurrentWorkloadButtonVSgtGGA17_GGAA08_PaddingN0VGAA05_FlexsN0VGtGGAA017_AppearanceActionW0VGMd);
    lazy protocol witness table accessor for type ZStack<TupleView<(ModifiedContent<LinearGradient, _SafeAreaRegionsIgnoringLayout>, ModifiedContent<ModifiedContent<GeometryReader<ModifiedContent<VStack<TupleView<(ModifiedContent<Spacer, _FrameLayout>, TupleView<(TupleView<(ModifiedContent<Text, AccessibilityAttachmentModifier>, ModifiedContent<Spacer, _FrameLayout>)>?, ModifiedContent<VStack<TupleView<((<<opaque return type of View.sensoryFeedback<A>(_:trigger:)>>.0)?, ModifiedContent<Spacer, _FrameLayout>?, EffortValueButton)>>, _TraitWritingModifier<TransitionTraitKey>>)>?, Spacer, EffortViewCurrentWorkloadButton?)>>, _TraitWritingModifier<TransitionTraitKey>>>, _PaddingLayout>, _FlexFrameLayout>)>> and conformance ZStack<A>(&lazy protocol witness table cache variable for type ZStack<TupleView<(ModifiedContent<LinearGradient, _SafeAreaRegionsIgnoringLayout>, ModifiedContent<ModifiedContent<GeometryReader<ModifiedContent<VStack<TupleView<(ModifiedContent<Spacer, _FrameLayout>, TupleView<(TupleView<(ModifiedContent<Text, AccessibilityAttachmentModifier>, ModifiedContent<Spacer, _FrameLayout>)>?, ModifiedContent<VStack<TupleView<((<<opaque return type of View.sensoryFeedback<A>(_:trigger:)>>.0)?, ModifiedContent<Spacer, _FrameLayout>?, EffortValueButton)>>, _TraitWritingModifier<TransitionTraitKey>>)>?, Spacer, EffortViewCurrentWorkloadButton?)>>, _TraitWritingModifier<TransitionTraitKey>>>, _PaddingLayout>, _FlexFrameLayout>)>> and conformance ZStack<A>, &_s7SwiftUI6ZStackVyAA9TupleViewVyAA15ModifiedContentVyAA14LinearGradientVAA30_SafeAreaRegionsIgnoringLayoutVG_AGyAGyAA14GeometryReaderVyAGyAA6VStackVyAEyAGyAA6SpacerVAA06_FrameN0VG_AEyAEyAGyAA4TextVAA31AccessibilityAttachmentModifierVG_AUtGSg_AGyAPyAEyAA0E0PAAE15sensoryFeedback_7triggerQrAA07SensoryY0V_qd__tSQRd__lFQOyAGyA2_AAE9focusableyQrSbFQOyAGy07WorkoutB0010EffortZoneE0VATG_Qo_AA013_TraitWritingW0VyAA18TransitionTraitKeyVGG_SiQo_Sg_AUSgA8_17EffortValueButtonVtGGA17_GtGSgARA8_06EffortE21CurrentWorkloadButtonVSgtGGA17_GGAA08_PaddingN0VGAA05_FlexsN0VGtGGMd);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<ZStack<TupleView<(ModifiedContent<LinearGradient, _SafeAreaRegionsIgnoringLayout>, ModifiedContent<ModifiedContent<GeometryReader<ModifiedContent<VStack<TupleView<(ModifiedContent<Spacer, _FrameLayout>, TupleView<(TupleView<(ModifiedContent<Text, AccessibilityAttachmentModifier>, ModifiedContent<Spacer, _FrameLayout>)>?, ModifiedContent<VStack<TupleView<((<<opaque return type of View.sensoryFeedback<A>(_:trigger:)>>.0)?, ModifiedContent<Spacer, _FrameLayout>?, EffortValueButton)>>, _TraitWritingModifier<TransitionTraitKey>>)>?, Spacer, EffortViewCurrentWorkloadButton?)>>, _TraitWritingModifier<TransitionTraitKey>>>, _PaddingLayout>, _FlexFrameLayout>)>>, _AppearanceActionModifier> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

uint64_t closure #4 in EffortEntryView.body.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v29 = a1;
  v37 = a2;
  v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI21ToolbarContentBuilderV10buildBlockyQrxAA0cD0RzlFZQOy_AA0C4ItemVyytAA6ButtonVyAA5ImageVGGQo_Sg_AGyytAA08ModifiedD0VyAQyAIyAQyAkA31AccessibilityAttachmentModifierVGGAA024_EnvironmentKeyTransformN0VySbGGAA14_OpacityEffectVGGtMd);
  MEMORY[0x28223BE20](v36);
  v34 = &v28 - v3;
  v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI11ToolbarItemVyytAA15ModifiedContentVyAEyAA6ButtonVyAEyAA5ImageVAA31AccessibilityAttachmentModifierVGGAA024_EnvironmentKeyTransformK0VySbGGAA14_OpacityEffectVGGMd);
  v33 = *(v35 - 8);
  MEMORY[0x28223BE20](v35);
  v32 = &v28 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI21ToolbarContentBuilderV10buildBlockyQrxAA0cD0RzlFZQOy_AA0C4ItemVyytAA6ButtonVyAA5ImageVGGQo_Md);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v30 = &v28 - v7;
  v8 = type metadata accessor for ToolbarItemPlacement();
  MEMORY[0x28223BE20](v8 - 8);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI11ToolbarItemVyytAA6ButtonVyAA5ImageVGGMd);
  v31 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v11 = &v28 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI21ToolbarContentBuilderV10buildBlockyQrxAA0cD0RzlFZQOy_AA0C4ItemVyytAA6ButtonVyAA5ImageVGGQo_SgMd);
  MEMORY[0x28223BE20](v12 - 8);
  v14 = &v28 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v17 = &v28 - v16;
  static ToolbarItemPlacement.cancellationAction.getter();
  v39 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI6ButtonVyAA5ImageVGMd);
  lazy protocol witness table accessor for type ZStack<TupleView<(ModifiedContent<LinearGradient, _SafeAreaRegionsIgnoringLayout>, ModifiedContent<ModifiedContent<GeometryReader<ModifiedContent<VStack<TupleView<(ModifiedContent<Spacer, _FrameLayout>, TupleView<(TupleView<(ModifiedContent<Text, AccessibilityAttachmentModifier>, ModifiedContent<Spacer, _FrameLayout>)>?, ModifiedContent<VStack<TupleView<((<<opaque return type of View.sensoryFeedback<A>(_:trigger:)>>.0)?, ModifiedContent<Spacer, _FrameLayout>?, EffortValueButton)>>, _TraitWritingModifier<TransitionTraitKey>>)>?, Spacer, EffortViewCurrentWorkloadButton?)>>, _TraitWritingModifier<TransitionTraitKey>>>, _PaddingLayout>, _FlexFrameLayout>)>> and conformance ZStack<A>(&lazy protocol witness table cache variable for type Button<Image> and conformance Button<A>, &_s7SwiftUI6ButtonVyAA5ImageVGMd);
  ToolbarItem<>.init(placement:content:)();
  v18 = lazy protocol witness table accessor for type ZStack<TupleView<(ModifiedContent<LinearGradient, _SafeAreaRegionsIgnoringLayout>, ModifiedContent<ModifiedContent<GeometryReader<ModifiedContent<VStack<TupleView<(ModifiedContent<Spacer, _FrameLayout>, TupleView<(TupleView<(ModifiedContent<Text, AccessibilityAttachmentModifier>, ModifiedContent<Spacer, _FrameLayout>)>?, ModifiedContent<VStack<TupleView<((<<opaque return type of View.sensoryFeedback<A>(_:trigger:)>>.0)?, ModifiedContent<Spacer, _FrameLayout>?, EffortValueButton)>>, _TraitWritingModifier<TransitionTraitKey>>)>?, Spacer, EffortViewCurrentWorkloadButton?)>>, _TraitWritingModifier<TransitionTraitKey>>>, _PaddingLayout>, _FlexFrameLayout>)>> and conformance ZStack<A>(&lazy protocol witness table cache variable for type ToolbarItem<(), Button<Image>> and conformance ToolbarItem<A, B>, &_s7SwiftUI11ToolbarItemVyytAA6ButtonVyAA5ImageVGGMd);
  v19 = v30;
  MEMORY[0x20F3098F0](v11, v9, v18);
  (*(v6 + 16))(v14, v19, v5);
  (*(v6 + 56))(v14, 0, 1, v5);
  v40 = v9;
  v41 = v18;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  MEMORY[0x20F309920](v14, v5, OpaqueTypeConformance2);
  outlined destroy of TupleView<(ModifiedContent<LinearGradient, _SafeAreaRegionsIgnoringLayout>, ModifiedContent<ModifiedContent<GeometryReader<ModifiedContent<VStack<TupleView<(ModifiedContent<Spacer, _FrameLayout>, TupleView<(TupleView<(ModifiedContent<Text, AccessibilityAttachmentModifier>, ModifiedContent<Spacer, _FrameLayout>)>?, ModifiedContent<VStack<TupleView<((<<opaque return type of View.sensoryFeedback<A>(_:trigger:)>>.0)?, ModifiedContent<Spacer, _FrameLayout>?, EffortValueButton)>>, _TraitWritingModifier<TransitionTraitKey>>)>?, Spacer, EffortViewCurrentWorkloadButton?)>>, _TraitWritingModifier<TransitionTraitKey>>>, _PaddingLayout>, _FlexFrameLayout>)>(v14, &_s7SwiftUI21ToolbarContentBuilderV10buildBlockyQrxAA0cD0RzlFZQOy_AA0C4ItemVyytAA6ButtonVyAA5ImageVGGQo_SgMd);
  (*(v6 + 8))(v19, v5);
  (*(v31 + 8))(v11, v9);
  static ToolbarItemPlacement.confirmationAction.getter();
  v38 = v29;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyACyAA6ButtonVyACyAA5ImageVAA31AccessibilityAttachmentModifierVGGAA024_EnvironmentKeyTransformI0VySbGGAA14_OpacityEffectVGMd);
  lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<Button<ModifiedContent<Image, AccessibilityAttachmentModifier>>, _EnvironmentKeyTransformModifier<Bool>>, _OpacityEffect> and conformance <> ModifiedContent<A, B>();
  v21 = v32;
  ToolbarItem<>.init(placement:content:)();
  v22 = *(v36 + 48);
  v23 = v34;
  outlined init with copy of TupleView<(ModifiedContent<LinearGradient, _SafeAreaRegionsIgnoringLayout>, ModifiedContent<ModifiedContent<GeometryReader<ModifiedContent<VStack<TupleView<(ModifiedContent<Spacer, _FrameLayout>, TupleView<(TupleView<(ModifiedContent<Text, AccessibilityAttachmentModifier>, ModifiedContent<Spacer, _FrameLayout>)>?, ModifiedContent<VStack<TupleView<((<<opaque return type of View.sensoryFeedback<A>(_:trigger:)>>.0)?, ModifiedContent<Spacer, _FrameLayout>?, EffortValueButton)>>, _TraitWritingModifier<TransitionTraitKey>>)>?, Spacer, EffortViewCurrentWorkloadButton?)>>, _TraitWritingModifier<TransitionTraitKey>>>, _PaddingLayout>, _FlexFrameLayout>)>(v17, v34, &_s7SwiftUI21ToolbarContentBuilderV10buildBlockyQrxAA0cD0RzlFZQOy_AA0C4ItemVyytAA6ButtonVyAA5ImageVGGQo_SgMd);
  v24 = v33;
  v25 = v23 + v22;
  v26 = v35;
  (*(v33 + 16))(v25, v21, v35);
  TupleToolbarContent.init(_:)();
  (*(v24 + 8))(v21, v26);
  return outlined destroy of TupleView<(ModifiedContent<LinearGradient, _SafeAreaRegionsIgnoringLayout>, ModifiedContent<ModifiedContent<GeometryReader<ModifiedContent<VStack<TupleView<(ModifiedContent<Spacer, _FrameLayout>, TupleView<(TupleView<(ModifiedContent<Text, AccessibilityAttachmentModifier>, ModifiedContent<Spacer, _FrameLayout>)>?, ModifiedContent<VStack<TupleView<((<<opaque return type of View.sensoryFeedback<A>(_:trigger:)>>.0)?, ModifiedContent<Spacer, _FrameLayout>?, EffortValueButton)>>, _TraitWritingModifier<TransitionTraitKey>>)>?, Spacer, EffortViewCurrentWorkloadButton?)>>, _TraitWritingModifier<TransitionTraitKey>>>, _PaddingLayout>, _FlexFrameLayout>)>(v17, &_s7SwiftUI21ToolbarContentBuilderV10buildBlockyQrxAA0cD0RzlFZQOy_AA0C4ItemVyytAA6ButtonVyAA5ImageVGGQo_SgMd);
}

uint64_t closure #1 in closure #4 in EffortEntryView.body.getter(_OWORD *a1)
{
  v2 = swift_allocObject();
  v3 = a1[5];
  v2[5] = a1[4];
  v2[6] = v3;
  v4 = a1[7];
  v2[7] = a1[6];
  v2[8] = v4;
  v5 = a1[1];
  v2[1] = *a1;
  v2[2] = v5;
  v6 = a1[3];
  v2[3] = a1[2];
  v2[4] = v6;
  outlined init with copy of EffortEntryView(a1, &v8);
  return Button.init(action:label:)();
}

uint64_t closure #2 in closure #1 in closure #4 in EffortEntryView.body.getter@<X0>(uint64_t *a1@<X8>)
{
  result = Image.init(systemName:)();
  *a1 = result;
  return result;
}

uint64_t closure #2 in closure #4 in EffortEntryView.body.getter@<X0>(_OWORD *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyAA6ButtonVyACyAA5ImageVAA31AccessibilityAttachmentModifierVGGAA024_EnvironmentKeyTransformI0VySbGGMd);
  MEMORY[0x28223BE20](v4);
  v6 = &v19 - v5;
  v7 = swift_allocObject();
  v8 = a1[5];
  v7[5] = a1[4];
  v7[6] = v8;
  v9 = a1[7];
  v7[7] = a1[6];
  v7[8] = v9;
  v10 = a1[1];
  v7[1] = *a1;
  v7[2] = v10;
  v11 = a1[3];
  v7[3] = a1[2];
  v7[4] = v11;
  outlined init with copy of EffortEntryView(a1, v21);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyAA5ImageVAA31AccessibilityAttachmentModifierVGMd);
  lazy protocol witness table accessor for type ModifiedContent<Image, AccessibilityAttachmentModifier> and conformance <> ModifiedContent<A, B>();
  Button.init(action:label:)();
  v21[0] = *(a1 + 40);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI5StateVySdGMd);
  result = State.wrappedValue.getter();
  v13 = round(v20);
  if ((*&v13 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_12;
  }

  if (v13 <= -9.22337204e18)
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  if (v13 >= 9.22337204e18)
  {
LABEL_13:
    __break(1u);
    return result;
  }

  if (v13)
  {
    v14 = 0;
  }

  else
  {
    v21[0] = *(a1 + 56);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI5StateVySbGMd);
    State.wrappedValue.getter();
    v14 = LOBYTE(v20) ^ 1;
  }

  KeyPath = swift_getKeyPath();
  v16 = swift_allocObject();
  *(v16 + 16) = v14 & 1;
  v17 = &v6[*(v4 + 36)];
  *v17 = KeyPath;
  v17[1] = _s7SwiftUI4ViewPAAE8disabledyQrSbFySbzcfU_TA_15;
  v17[2] = v16;
  v21[0] = *(a1 + 88);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI5StateVySbGMd);
  State.wrappedValue.getter();
  if (LOBYTE(v20))
  {
    v18 = 1.0;
  }

  else
  {
    v18 = 0.0;
  }

  outlined init with take of ModifiedContent<Button<ModifiedContent<Image, AccessibilityAttachmentModifier>>, _EnvironmentKeyTransformModifier<Bool>>(v6, a2, &_s7SwiftUI15ModifiedContentVyAA6ButtonVyACyAA5ImageVAA31AccessibilityAttachmentModifierVGGAA024_EnvironmentKeyTransformI0VySbGGMd);
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyACyAA6ButtonVyACyAA5ImageVAA31AccessibilityAttachmentModifierVGGAA024_EnvironmentKeyTransformI0VySbGGAA14_OpacityEffectVGMd);
  *(a2 + *(result + 36)) = v18;
  return result;
}

uint64_t closure #2 in closure #1 in closure #1 in closure #1 in EffortEntryView.body.getter(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11WorkoutCore18AppleExertionScaleOSgMd);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v10 - v3;
  v12 = *(a1 + 40);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI5StateVySdGMd);
  result = State.wrappedValue.getter();
  v6 = round(v11);
  if ((*&v6 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_13;
  }

  if (v6 <= -9.22337204e18)
  {
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  if (v6 >= 9.22337204e18)
  {
LABEL_14:
    __break(1u);
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  if (v6 < 1)
  {
    v8 = 1;
    goto LABEL_11;
  }

  v12 = *(a1 + 40);
  result = State.wrappedValue.getter();
  v7 = round(v11);
  if ((*&v7 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    goto LABEL_15;
  }

  if (v7 <= -9.22337204e18)
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  if (v7 >= 9.22337204e18)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  result = v7 - 1;
  if (!__OFSUB__(v7, 1))
  {
    static AppleExertionScale.exertionForRow(_:)();
    v8 = 0;
LABEL_11:
    v9 = type metadata accessor for AppleExertionScale();
    (*(*(v9 - 8) + 56))(v4, v8, 1, v9);
    (*a1)(v4);
    return _s11WorkoutCore18AppleExertionScaleOSgWOhTm_3(v4, &_s11WorkoutCore18AppleExertionScaleOSgMd);
  }

LABEL_18:
  __break(1u);
  return result;
}

uint64_t closure #2 in closure #2 in closure #4 in EffortEntryView.body.getter()
{
  Image.init(systemName:)();
  if (one-time initialization token for WorkoutUIBundle != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v0 = WorkoutUIBundle.super.isa;
  v5._object = 0xE000000000000000;
  v1._countAndFlagsBits = 0x415F455441445055;
  v1._object = 0xEF454C5449545F58;
  v2.value._countAndFlagsBits = 0x617A696C61636F4CLL;
  v2.value._object = 0xEB00000000656C62;
  v3._countAndFlagsBits = 0;
  v3._object = 0xE000000000000000;
  v5._countAndFlagsBits = 0;
  NSLocalizedString(_:tableName:bundle:value:comment:)(v1, v2, v0, v3, v5);

  lazy protocol witness table accessor for type String and conformance String();
  View.accessibilityLabel<A>(_:)();
}

double closure #5 in EffortEntryView.body.getter@<D0>(uint64_t a1@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI5StateVySdGMd);
  State.projectedValue.getter();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI5StateVySbGMd);
  State.projectedValue.getter();
  v2 = static Font.body.getter();
  static Font.title2.getter();
  static Font.Weight.bold.getter();
  v3 = Font.weight(_:)();

  v4 = static Font.subheadline.getter();
  v5 = static Color.white.getter();
  *a1 = v7;
  *(a1 + 8) = v8;
  *(a1 + 16) = v9;
  *(a1 + 24) = v7;
  *(a1 + 32) = v8;
  *(a1 + 40) = v9;
  result = 30.0;
  *(a1 + 48) = xmmword_20CB7EC80;
  *(a1 + 64) = xmmword_20CB7EC90;
  *(a1 + 80) = 0x4034000000000000;
  *(a1 + 88) = v2;
  *(a1 + 96) = v3;
  *(a1 + 104) = v4;
  *(a1 + 112) = v5;
  return result;
}

unint64_t lazy protocol witness table accessor for type EffortListView and conformance EffortListView()
{
  result = lazy protocol witness table cache variable for type EffortListView and conformance EffortListView;
  if (!lazy protocol witness table cache variable for type EffortListView and conformance EffortListView)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type EffortListView and conformance EffortListView);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for EffortEntryView(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 128))
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

uint64_t storeEnumTagSinglePayload for EffortEntryView(uint64_t result, int a2, int a3)
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
      *result = (a2 - 1);
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

unint64_t lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<Button<ModifiedContent<Image, AccessibilityAttachmentModifier>>, _EnvironmentKeyTransformModifier<Bool>>, _OpacityEffect> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<Button<ModifiedContent<Image, AccessibilityAttachmentModifier>>, _EnvironmentKeyTransformModifier<Bool>>, _OpacityEffect> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<Button<ModifiedContent<Image, AccessibilityAttachmentModifier>>, _EnvironmentKeyTransformModifier<Bool>>, _OpacityEffect> and conformance <> ModifiedContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyACyAA6ButtonVyACyAA5ImageVAA31AccessibilityAttachmentModifierVGGAA024_EnvironmentKeyTransformI0VySbGGAA14_OpacityEffectVGMd);
    lazy protocol witness table accessor for type ModifiedContent<Button<ModifiedContent<Image, AccessibilityAttachmentModifier>>, _EnvironmentKeyTransformModifier<Bool>> and conformance <> ModifiedContent<A, B>();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<Button<ModifiedContent<Image, AccessibilityAttachmentModifier>>, _EnvironmentKeyTransformModifier<Bool>>, _OpacityEffect> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<Button<ModifiedContent<Image, AccessibilityAttachmentModifier>>, _EnvironmentKeyTransformModifier<Bool>> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<Button<ModifiedContent<Image, AccessibilityAttachmentModifier>>, _EnvironmentKeyTransformModifier<Bool>> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<Button<ModifiedContent<Image, AccessibilityAttachmentModifier>>, _EnvironmentKeyTransformModifier<Bool>> and conformance <> ModifiedContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyAA6ButtonVyACyAA5ImageVAA31AccessibilityAttachmentModifierVGGAA024_EnvironmentKeyTransformI0VySbGGMd);
    lazy protocol witness table accessor for type ZStack<TupleView<(ModifiedContent<LinearGradient, _SafeAreaRegionsIgnoringLayout>, ModifiedContent<ModifiedContent<GeometryReader<ModifiedContent<VStack<TupleView<(ModifiedContent<Spacer, _FrameLayout>, TupleView<(TupleView<(ModifiedContent<Text, AccessibilityAttachmentModifier>, ModifiedContent<Spacer, _FrameLayout>)>?, ModifiedContent<VStack<TupleView<((<<opaque return type of View.sensoryFeedback<A>(_:trigger:)>>.0)?, ModifiedContent<Spacer, _FrameLayout>?, EffortValueButton)>>, _TraitWritingModifier<TransitionTraitKey>>)>?, Spacer, EffortViewCurrentWorkloadButton?)>>, _TraitWritingModifier<TransitionTraitKey>>>, _PaddingLayout>, _FlexFrameLayout>)>> and conformance ZStack<A>(&lazy protocol witness table cache variable for type Button<ModifiedContent<Image, AccessibilityAttachmentModifier>> and conformance Button<A>, &_s7SwiftUI6ButtonVyAA15ModifiedContentVyAA5ImageVAA31AccessibilityAttachmentModifierVGGMd);
    lazy protocol witness table accessor for type ZStack<TupleView<(ModifiedContent<LinearGradient, _SafeAreaRegionsIgnoringLayout>, ModifiedContent<ModifiedContent<GeometryReader<ModifiedContent<VStack<TupleView<(ModifiedContent<Spacer, _FrameLayout>, TupleView<(TupleView<(ModifiedContent<Text, AccessibilityAttachmentModifier>, ModifiedContent<Spacer, _FrameLayout>)>?, ModifiedContent<VStack<TupleView<((<<opaque return type of View.sensoryFeedback<A>(_:trigger:)>>.0)?, ModifiedContent<Spacer, _FrameLayout>?, EffortValueButton)>>, _TraitWritingModifier<TransitionTraitKey>>)>?, Spacer, EffortViewCurrentWorkloadButton?)>>, _TraitWritingModifier<TransitionTraitKey>>>, _PaddingLayout>, _FlexFrameLayout>)>> and conformance ZStack<A>(&lazy protocol witness table cache variable for type _EnvironmentKeyTransformModifier<Bool> and conformance _EnvironmentKeyTransformModifier<A>, &_s7SwiftUI32_EnvironmentKeyTransformModifierVySbGMd);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<Button<ModifiedContent<Image, AccessibilityAttachmentModifier>>, _EnvironmentKeyTransformModifier<Bool>> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

uint64_t outlined init with take of ModifiedContent<Button<ModifiedContent<Image, AccessibilityAttachmentModifier>>, _EnvironmentKeyTransformModifier<Bool>>(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(a3);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t _s11WorkoutCore18AppleExertionScaleOSgWOcTm_2(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(a3);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t outlined copy of EffortViewCurrentWorkloadButton?(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

uint64_t outlined consume of EffortViewCurrentWorkloadButton?(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

uint64_t objectdestroyTm_63()
{

  return swift_deallocObject();
}

uint64_t outlined init with copy of TupleView<(ModifiedContent<LinearGradient, _SafeAreaRegionsIgnoringLayout>, ModifiedContent<ModifiedContent<GeometryReader<ModifiedContent<VStack<TupleView<(ModifiedContent<Spacer, _FrameLayout>, TupleView<(TupleView<(ModifiedContent<Text, AccessibilityAttachmentModifier>, ModifiedContent<Spacer, _FrameLayout>)>?, ModifiedContent<VStack<TupleView<((<<opaque return type of View.sensoryFeedback<A>(_:trigger:)>>.0)?, ModifiedContent<Spacer, _FrameLayout>?, EffortValueButton)>>, _TraitWritingModifier<TransitionTraitKey>>)>?, Spacer, EffortViewCurrentWorkloadButton?)>>, _TraitWritingModifier<TransitionTraitKey>>>, _PaddingLayout>, _FlexFrameLayout>)>(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(a3);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<EffortZoneView, _FrameLayout> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<EffortZoneView, _FrameLayout> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<EffortZoneView, _FrameLayout> and conformance <> ModifiedContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVy07WorkoutB014EffortZoneViewVAA12_FrameLayoutVGMd);
    _s7SwiftUI31AccessibilityAttachmentModifierVAcA04ViewE0AAWlTm_6(&lazy protocol witness table cache variable for type EffortZoneView and conformance EffortZoneView, type metadata accessor for EffortZoneView);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<EffortZoneView, _FrameLayout> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

uint64_t _s11WorkoutCore18AppleExertionScaleOSgWOhTm_3(uint64_t a1, uint64_t *a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(a2);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t _s7SwiftUI31AccessibilityAttachmentModifierVAcA04ViewE0AAWlTm_6(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t lazy protocol witness table accessor for type ModifiedContent<<<opaque return type of View.focusable(_:)>>.0, _TraitWritingModifier<TransitionTraitKey>> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<<<opaque return type of View.focusable(_:)>>.0, _TraitWritingModifier<TransitionTraitKey>> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<<<opaque return type of View.focusable(_:)>>.0, _TraitWritingModifier<TransitionTraitKey>> and conformance <> ModifiedContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyAA4ViewPAAE9focusableyQrSbFQOyACy07WorkoutB0010EffortZoneE0VAA12_FrameLayoutVG_Qo_AA21_TraitWritingModifierVyAA010TransitionL3KeyVGGMd);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVy07WorkoutB014EffortZoneViewVAA12_FrameLayoutVGMd);
    lazy protocol witness table accessor for type ModifiedContent<EffortZoneView, _FrameLayout> and conformance <> ModifiedContent<A, B>();
    swift_getOpaqueTypeConformance2();
    lazy protocol witness table accessor for type ZStack<TupleView<(ModifiedContent<LinearGradient, _SafeAreaRegionsIgnoringLayout>, ModifiedContent<ModifiedContent<GeometryReader<ModifiedContent<VStack<TupleView<(ModifiedContent<Spacer, _FrameLayout>, TupleView<(TupleView<(ModifiedContent<Text, AccessibilityAttachmentModifier>, ModifiedContent<Spacer, _FrameLayout>)>?, ModifiedContent<VStack<TupleView<((<<opaque return type of View.sensoryFeedback<A>(_:trigger:)>>.0)?, ModifiedContent<Spacer, _FrameLayout>?, EffortValueButton)>>, _TraitWritingModifier<TransitionTraitKey>>)>?, Spacer, EffortViewCurrentWorkloadButton?)>>, _TraitWritingModifier<TransitionTraitKey>>>, _PaddingLayout>, _FlexFrameLayout>)>> and conformance ZStack<A>(&lazy protocol witness table cache variable for type _TraitWritingModifier<TransitionTraitKey> and conformance _TraitWritingModifier<A>, &_s7SwiftUI21_TraitWritingModifierVyAA010TransitionC3KeyVGMd);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<<<opaque return type of View.focusable(_:)>>.0, _TraitWritingModifier<TransitionTraitKey>> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

uint64_t lazy protocol witness table accessor for type ZStack<TupleView<(ModifiedContent<LinearGradient, _SafeAreaRegionsIgnoringLayout>, ModifiedContent<ModifiedContent<GeometryReader<ModifiedContent<VStack<TupleView<(ModifiedContent<Spacer, _FrameLayout>, TupleView<(TupleView<(ModifiedContent<Text, AccessibilityAttachmentModifier>, ModifiedContent<Spacer, _FrameLayout>)>?, ModifiedContent<VStack<TupleView<((<<opaque return type of View.sensoryFeedback<A>(_:trigger:)>>.0)?, ModifiedContent<Spacer, _FrameLayout>?, EffortValueButton)>>, _TraitWritingModifier<TransitionTraitKey>>)>?, Spacer, EffortViewCurrentWorkloadButton?)>>, _TraitWritingModifier<TransitionTraitKey>>>, _PaddingLayout>, _FlexFrameLayout>)>> and conformance ZStack<A>(unint64_t *a1, uint64_t *a2)
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

uint64_t outlined destroy of TupleView<(ModifiedContent<LinearGradient, _SafeAreaRegionsIgnoringLayout>, ModifiedContent<ModifiedContent<GeometryReader<ModifiedContent<VStack<TupleView<(ModifiedContent<Spacer, _FrameLayout>, TupleView<(TupleView<(ModifiedContent<Text, AccessibilityAttachmentModifier>, ModifiedContent<Spacer, _FrameLayout>)>?, ModifiedContent<VStack<TupleView<((<<opaque return type of View.sensoryFeedback<A>(_:trigger:)>>.0)?, ModifiedContent<Spacer, _FrameLayout>?, EffortValueButton)>>, _TraitWritingModifier<TransitionTraitKey>>)>?, Spacer, EffortViewCurrentWorkloadButton?)>>, _TraitWritingModifier<TransitionTraitKey>>>, _PaddingLayout>, _FlexFrameLayout>)>(uint64_t a1, uint64_t *a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(a2);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

id @objc WorkoutStartLocationAnnotation.init()(void *a1, uint64_t a2, uint64_t (*a3)(void))
{
  v4.receiver = a1;
  v4.super_class = a3();
  return objc_msgSendSuper2(&v4, sel_init);
}

id WorkoutLocationAnnotationView.init(annotation:reuseIdentifier:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a3)
  {
    v5 = MEMORY[0x20F30BAD0](a2, a3);
  }

  else
  {
    v5 = 0;
  }

  v12.receiver = v3;
  v12.super_class = type metadata accessor for WorkoutLocationAnnotationView();
  v6 = objc_msgSendSuper2(&v12, sel_initWithAnnotation_reuseIdentifier_, a1, v5);

  v7 = v6;
  [v7 setFrame_];
  v8 = objc_opt_self();
  v9 = v7;
  v10 = [v8 clearColor];
  [v9 setBackgroundColor_];

  [v9 setCanShowCallout_];
  WorkoutLocationAnnotationView.setTintColor(_:)(a1);

  swift_unknownObjectRelease();
  return v9;
}

void WorkoutLocationAnnotationView.setTintColor(_:)(uint64_t a1)
{
  if (!a1)
  {
    goto LABEL_6;
  }

  type metadata accessor for WorkoutStartLocationAnnotation();
  if (swift_dynamicCastClass())
  {
    v2 = [objc_allocWithZone(MEMORY[0x277D75348]) initWithRed:0.0 green:1.0 blue:0.62745098 alpha:1.0];
    goto LABEL_8;
  }

  type metadata accessor for WorkoutEndLocationAnnotation();
  if (swift_dynamicCastClass())
  {
    v3 = [objc_opt_self() systemRedColor];
  }

  else
  {
LABEL_6:
    v3 = [objc_opt_self() whiteColor];
  }

  v2 = v3;
LABEL_8:
  v4 = v2;
  [v1 setTintColor_];
}

Swift::Void __swiftcall WorkoutLocationAnnotationView.draw(_:)(__C::CGRect a1)
{
  height = a1.size.height;
  width = a1.size.width;
  y = a1.origin.y;
  x = a1.origin.x;
  v6 = UIGraphicsGetCurrentContext();
  if (v6)
  {
    c = v6;
    CGContextSetLineWidth(v6, 2.0);
    v7 = [v1 tintColor];
    if (v7)
    {
      v8 = v7;
      v9 = [v7 CGColor];

      CGContextSetFillColorWithColor(c, v9);
      v10 = [objc_opt_self() whiteColor];
      v11 = [v10 CGColor];

      CGContextSetStrokeColorWithColor(c, v11);
      v14.origin.x = x;
      v14.origin.y = y;
      v14.size.width = width;
      v14.size.height = height;
      v15 = CGRectInset(v14, 4.0, 4.0);
      CGContextAddEllipseInRect(c, v15);
      CGContextDrawPath(c, kCGPathFillStroke);
    }

    else
    {
      __break(1u);
    }
  }
}

id WorkoutLocationAnnotation.__deallocating_deinit(uint64_t (*a1)(void))
{
  v3.receiver = v1;
  v3.super_class = a1();
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

uint64_t getEnumTagSinglePayload for EffortListView(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 120))
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

uint64_t storeEnumTagSinglePayload for EffortListView(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
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
      *(result + 120) = 1;
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

    *(result + 120) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t _s7SwiftUI11ViewBuilderV10buildBlockyAA05TupleC0VyxxQp_tGxxQpRvzAA0C0RzlFZ07WorkoutB0020UnitsSettingsSectionC0VyAI04Unitj6EnergyL0OGSg_AKyAI0lj10PoolLengthL0OGAKyAI0lj8DistanceL0OGAuKyAI0lj5TrackpL0OGA5UQP_Tt1g5@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  v4 = *(a1 + 8);
  v5 = **a1;
  v6 = *(*a1 + 8);
  v7 = *v4;
  v8 = v4[2];
  v48 = v4[1];
  v49 = v4[3];
  LOBYTE(v4) = *(v4 + 32);
  v9 = *(a1 + 16);
  v10 = *(a1 + 24);
  v11 = *v9;
  v12 = v9[1];
  v13 = v9[2];
  v14 = v9[3];
  v15 = *(v9 + 32);
  v16 = *v10;
  v17 = v10[1];
  v18 = v10[2];
  v54 = v10[3];
  LOBYTE(v9) = *(v10 + 32);
  v20 = *(a1 + 32);
  v19 = *(a1 + 40);
  v21 = *v20;
  v55 = v20[1];
  v52 = v20[3];
  v53 = v20[2];
  v22 = *(v20 + 32);
  v23 = *v19;
  v50 = v19[1];
  v24 = v19[3];
  v51 = v19[2];
  LOBYTE(v20) = *(v19 + 32);
  *(a2 + 40) = v7;
  v26 = *(a1 + 48);
  v25 = *(a1 + 56);
  *(a2 + 72) = v4;
  *(a2 + 80) = v11;
  v27 = *v26;
  v43 = v26[1];
  *(a2 + 112) = v15;
  *(a2 + 120) = v16;
  v28 = v26[2];
  v44 = v26[3];
  LOBYTE(v26) = *(v26 + 32);
  *(a2 + 152) = v9;
  *(a2 + 160) = v21;
  v30 = *v25;
  v29 = v25[1];
  *(a2 + 192) = v22;
  *(a2 + 200) = v23;
  v31 = v25[3];
  v45 = v25[2];
  v32 = *(v25 + 32);
  *(a2 + 232) = v20;
  v34 = *(a1 + 64);
  v33 = *(a1 + 72);
  *(a2 + 240) = v27;
  *(a2 + 272) = v26;
  v35 = *v34;
  v46 = v34[1];
  *(a2 + 280) = v30;
  *(a2 + 312) = v32;
  v36 = v34[2];
  v47 = v34[3];
  LOBYTE(v26) = *(v34 + 32);
  *(a2 + 320) = v35;
  *(a2 + 352) = v26;
  v37 = *(v33 + 8);
  *(a2 + 360) = *v33;
  *(a2 + 392) = *(v33 + 32);
  v39 = *(v33 + 16);
  v38 = *(v33 + 24);
  v40 = v3[2];
  v41 = v3[3];
  LOBYTE(v21) = *(v3 + 32);
  *a2 = v5;
  *(a2 + 8) = v6;
  *(a2 + 16) = v40;
  *(a2 + 24) = v41;
  *(a2 + 32) = v21;
  *(a2 + 48) = v48;
  *(a2 + 56) = v8;
  *(a2 + 64) = v49;
  *(a2 + 88) = v12;
  *(a2 + 96) = v13;
  *(a2 + 104) = v14;
  *(a2 + 128) = v17;
  *(a2 + 136) = v18;
  *(a2 + 144) = v54;
  *(a2 + 168) = v55;
  *(a2 + 176) = v53;
  *(a2 + 184) = v52;
  *(a2 + 208) = v50;
  *(a2 + 216) = v51;
  *(a2 + 224) = v24;
  *(a2 + 248) = v43;
  *(a2 + 256) = v28;
  *(a2 + 264) = v44;
  *(a2 + 288) = v29;
  *(a2 + 296) = v45;
  *(a2 + 304) = v31;
  *(a2 + 328) = v46;
  *(a2 + 336) = v36;
  *(a2 + 344) = v47;
  *(a2 + 368) = v37;
  *(a2 + 376) = v39;
  *(a2 + 384) = v38;
  outlined copy of UnitsSettingsSectionView<UnitSettingsEnergyUnit>?(v5, v6);
}

uint64_t _s7SwiftUI11ViewBuilderV10buildBlockyAA05TupleC0VyxxQp_tGxxQpRvzAA0C0RzlFZAA15ModifiedContentVyAA4TextVAA14_PaddingLayoutVG_07WorkoutB018EffortSectionTitle33_06FC76556B25F7BE4859D6C5967358FALLVAJyAP0N6ButtonVANGA2vs3vs2vs2vJyAA7DividerVANGAvaHPAAE05sceneK0yQrAA4EdgeO3SetVFQOyAO_Qo_QP_Tt1g5@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v4 = *a1;
  v14[0] = **a1;
  v6 = v4[2];
  v5 = v4[3];
  v7 = v4[1];
  *&v15[9] = *(v4 + 57);
  v14[2] = v6;
  *v15 = v5;
  v14[1] = v7;
  memmove(a2, v4, 0x49uLL);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyAA4TextVAA14_PaddingLayoutVG_07WorkoutB018EffortSectionTitle33_06FC76556B25F7BE4859D6C5967358FALLVACyAI0I6ButtonVAGGA2ol3ol2ol2oCyAA7DividerVAGGAoA4ViewPAAE05sceneF0yQrAA4EdgeO3SetVFQOyAH_Qo_tMd);
  outlined init with copy of EffortSectionTitle(*(a1 + 8), &a2[v8[12]], type metadata accessor for EffortSectionTitle);
  outlined init with copy of _BackgroundModifier<ModifiedContent<LinearGradient, _SafeAreaRegionsIgnoringLayout>>(*(a1 + 16), &a2[v8[16]], &_s7SwiftUI15ModifiedContentVy07WorkoutB012EffortButtonVAA14_PaddingLayoutVGMd);
  outlined init with copy of _BackgroundModifier<ModifiedContent<LinearGradient, _SafeAreaRegionsIgnoringLayout>>(*(a1 + 24), &a2[v8[20]], &_s7SwiftUI15ModifiedContentVy07WorkoutB012EffortButtonVAA14_PaddingLayoutVGMd);
  outlined init with copy of _BackgroundModifier<ModifiedContent<LinearGradient, _SafeAreaRegionsIgnoringLayout>>(*(a1 + 32), &a2[v8[24]], &_s7SwiftUI15ModifiedContentVy07WorkoutB012EffortButtonVAA14_PaddingLayoutVGMd);
  outlined init with copy of EffortSectionTitle(*(a1 + 40), &a2[v8[28]], type metadata accessor for EffortSectionTitle);
  outlined init with copy of _BackgroundModifier<ModifiedContent<LinearGradient, _SafeAreaRegionsIgnoringLayout>>(*(a1 + 48), &a2[v8[32]], &_s7SwiftUI15ModifiedContentVy07WorkoutB012EffortButtonVAA14_PaddingLayoutVGMd);
  outlined init with copy of _BackgroundModifier<ModifiedContent<LinearGradient, _SafeAreaRegionsIgnoringLayout>>(*(a1 + 56), &a2[v8[36]], &_s7SwiftUI15ModifiedContentVy07WorkoutB012EffortButtonVAA14_PaddingLayoutVGMd);
  outlined init with copy of _BackgroundModifier<ModifiedContent<LinearGradient, _SafeAreaRegionsIgnoringLayout>>(*(a1 + 64), &a2[v8[40]], &_s7SwiftUI15ModifiedContentVy07WorkoutB012EffortButtonVAA14_PaddingLayoutVGMd);
  outlined init with copy of EffortSectionTitle(*(a1 + 72), &a2[v8[44]], type metadata accessor for EffortSectionTitle);
  outlined init with copy of _BackgroundModifier<ModifiedContent<LinearGradient, _SafeAreaRegionsIgnoringLayout>>(*(a1 + 80), &a2[v8[48]], &_s7SwiftUI15ModifiedContentVy07WorkoutB012EffortButtonVAA14_PaddingLayoutVGMd);
  outlined init with copy of _BackgroundModifier<ModifiedContent<LinearGradient, _SafeAreaRegionsIgnoringLayout>>(*(a1 + 88), &a2[v8[52]], &_s7SwiftUI15ModifiedContentVy07WorkoutB012EffortButtonVAA14_PaddingLayoutVGMd);
  outlined init with copy of EffortSectionTitle(*(a1 + 96), &a2[v8[56]], type metadata accessor for EffortSectionTitle);
  outlined init with copy of _BackgroundModifier<ModifiedContent<LinearGradient, _SafeAreaRegionsIgnoringLayout>>(*(a1 + 104), &a2[v8[60]], &_s7SwiftUI15ModifiedContentVy07WorkoutB012EffortButtonVAA14_PaddingLayoutVGMd);
  outlined init with copy of _BackgroundModifier<ModifiedContent<LinearGradient, _SafeAreaRegionsIgnoringLayout>>(*(a1 + 112), &a2[v8[64]], &_s7SwiftUI15ModifiedContentVy07WorkoutB012EffortButtonVAA14_PaddingLayoutVGMd);
  outlined init with copy of _BackgroundModifier<ModifiedContent<LinearGradient, _SafeAreaRegionsIgnoringLayout>>(*(a1 + 120), &a2[v8[68]], &_s7SwiftUI15ModifiedContentVyAA7DividerVAA14_PaddingLayoutVGMd);
  outlined init with copy of _BackgroundModifier<ModifiedContent<LinearGradient, _SafeAreaRegionsIgnoringLayout>>(*(a1 + 128), &a2[v8[72]], &_s7SwiftUI15ModifiedContentVy07WorkoutB012EffortButtonVAA14_PaddingLayoutVGMd);
  v9 = v8[76];
  v10 = *(a1 + 136);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI4ViewPAAE12scenePaddingyQrAA4EdgeO3SetVFQOyAA15ModifiedContentVyAA4TextVAA01_E6LayoutVG_Qo_Md);
  (*(*(v11 - 8) + 16))(&a2[v9], v10, v11);
  return outlined init with copy of _BackgroundModifier<ModifiedContent<LinearGradient, _SafeAreaRegionsIgnoringLayout>>(v14, &v13, &_s7SwiftUI15ModifiedContentVyAA4TextVAA14_PaddingLayoutVGMd);
}

uint64_t closure #1 in EffortListView.body.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  *a2 = static HorizontalAlignment.leading.getter();
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI13_VariadicViewO4TreeVy_AA13_VStackLayoutVAA05TupleD0VyAA15ModifiedContentVyAA4TextVAA08_PaddingG0VG_07WorkoutB018EffortSectionTitle33_06FC76556B25F7BE4859D6C5967358FALLVAKyAQ0N6ButtonVAOGA2wt3wt2wt2wKyAA7DividerVAOGAwA0D0PAAE05sceneL0yQrAA4EdgeO3SetVFQOyAP_Qo_tGGMd);
  closure #1 in closure #1 in EffortListView.body.getter(a1, (a2 + *(v4 + 44)));
  LOBYTE(a1) = static Edge.Set.horizontal.getter();
  EdgeInsets.init(_all:)();
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v12 = v11;
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyAA6VStackVyAA9TupleViewVyACyAA4TextVAA14_PaddingLayoutVG_07WorkoutB018EffortSectionTitle33_06FC76556B25F7BE4859D6C5967358FALLVACyAM0L6ButtonVAKGA2sp3sp2sp2sCyAA7DividerVAKGAsA0G0PAAE05sceneI0yQrAA4EdgeO3SetVFQOyAL_Qo_tGGAKGMd);
  v14 = a2 + *(result + 36);
  *v14 = a1;
  *(v14 + 8) = v6;
  *(v14 + 16) = v8;
  *(v14 + 24) = v10;
  *(v14 + 32) = v12;
  *(v14 + 40) = 0;
  return result;
}

uint64_t closure #1 in closure #1 in EffortListView.body.getter@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v386 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI4ViewPAAE12scenePaddingyQrAA4EdgeO3SetVFQOyAA15ModifiedContentVyAA4TextVAA01_E6LayoutVG_Qo_Md);
  v388 = *(v3 - 8);
  v389 = v3;
  MEMORY[0x28223BE20](v3);
  v387 = &v374[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v5);
  v385 = &v374[-v6];
  v384 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyAA7DividerVAA14_PaddingLayoutVGMd);
  MEMORY[0x28223BE20](v384);
  v408 = &v374[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v8);
  v396 = &v374[-v9];
  v426 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVy07WorkoutB012EffortButtonVAA14_PaddingLayoutVGMd);
  MEMORY[0x28223BE20](v426);
  v400 = &v374[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v11);
  v407 = &v374[-v12];
  MEMORY[0x28223BE20](v13);
  v404 = &v374[-v14];
  MEMORY[0x28223BE20](v15);
  v406 = &v374[-v16];
  MEMORY[0x28223BE20](v17);
  v403 = &v374[-v18];
  MEMORY[0x28223BE20](v19);
  v405 = &v374[-v20];
  MEMORY[0x28223BE20](v21);
  v402 = &v374[-v22];
  MEMORY[0x28223BE20](v23);
  v399 = &v374[-v24];
  MEMORY[0x28223BE20](v25);
  v401 = &v374[-v26];
  MEMORY[0x28223BE20](v27);
  v398 = &v374[-v28];
  MEMORY[0x28223BE20](v29);
  v397 = &v374[-v30];
  MEMORY[0x28223BE20](v31);
  v391 = &v374[-v32];
  MEMORY[0x28223BE20](v33);
  v421 = &v374[-v34];
  MEMORY[0x28223BE20](v35);
  v418 = &v374[-v36];
  MEMORY[0x28223BE20](v37);
  v420 = &v374[-v38];
  MEMORY[0x28223BE20](v39);
  v417 = &v374[-v40];
  MEMORY[0x28223BE20](v41);
  v419 = &v374[-v42];
  MEMORY[0x28223BE20](v43);
  v416 = &v374[-v44];
  MEMORY[0x28223BE20](v45);
  v414 = &v374[-v46];
  MEMORY[0x28223BE20](v47);
  v415 = &v374[-v48];
  MEMORY[0x28223BE20](v49);
  v413 = &v374[-v50];
  MEMORY[0x28223BE20](v51);
  v409 = &v374[-v52];
  v422 = type metadata accessor for EffortSectionTitle(0);
  MEMORY[0x28223BE20](v422);
  v392 = &v374[-((v53 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v54);
  v393 = &v374[-v55];
  MEMORY[0x28223BE20](v56);
  v394 = &v374[-v57];
  MEMORY[0x28223BE20](v58);
  v395 = &v374[-v59];
  MEMORY[0x28223BE20](v60);
  v410 = &v374[-v61];
  MEMORY[0x28223BE20](v62);
  v411 = &v374[-v63];
  MEMORY[0x28223BE20](v64);
  v412 = &v374[-v65];
  MEMORY[0x28223BE20](v66);
  v68 = &v374[-v67];
  if (one-time initialization token for WorkoutUIBundle != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v69 = WorkoutUIBundle.super.isa;
  v457._object = 0xE000000000000000;
  v70._countAndFlagsBits = 0x4549565F5453494CLL;
  v70._object = 0xEF454C5449545F57;
  v71.value._countAndFlagsBits = 0x617A696C61636F4CLL;
  v71.value._object = 0xEB00000000656C62;
  v72._countAndFlagsBits = 0;
  v72._object = 0xE000000000000000;
  v457._countAndFlagsBits = 0;
  v73 = NSLocalizedString(_:tableName:bundle:value:comment:)(v70, v71, v69, v72, v457);

  v435 = v73;
  v378 = lazy protocol witness table accessor for type String and conformance String();
  v74 = Text.init<A>(_:)();
  v76 = v75;
  v78 = v77;
  v79 = Text.font(_:)();
  v382 = v80;
  v383 = v79;
  v82 = v81;
  v381 = v83;
  outlined consume of Text.Storage(v74, v76, v78 & 1);

  v380 = static Edge.Set.top.getter();
  EdgeInsets.init(_all:)();
  v85 = v84;
  v87 = v86;
  v89 = v88;
  v91 = v90;
  v379 = v82 & 1;
  LOBYTE(v435._countAndFlagsBits) = v82 & 1;
  LOBYTE(v453) = 0;
  LODWORD(v427) = *MEMORY[0x277D7E248];
  v92 = v427;
  v430 = type metadata accessor for AppleExertionScale();
  v93 = *(v430 - 8);
  v94 = *(v93 + 104);
  v94(v68, v92, v430);
  v428 = v94;
  v429 = v93 + 104;
  v95 = v422;
  *&v68[*(v422 + 20)] = 0x403E000000000000;
  *&v68[v95[6]] = 0x4010000000000000;
  v96 = v68;
  v390 = v68;
  v97 = v95[7];
  static Font.title2.getter();
  static Font.Weight.bold.getter();
  v98 = Font.weight(_:)();

  *&v96[v97] = v98;
  v99 = v95[8];
  *&v96[v99] = static Font.subheadline.getter();
  v100 = v95[9];
  *&v96[v100] = static Color.white.getter();
  v101 = v409;
  v102 = v430;
  v94(v409, v427, v430);
  v103 = *(v93 + 56);
  v424 = v93 + 56;
  v425 = v103;
  v103(v101, 0, 1, v102);
  v449 = *a1;
  v450 = *(a1 + 16);
  v435 = *a1;
  *&v436 = *(a1 + 16);
  v423 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI7BindingVySdGMd);
  Binding.projectedValue.getter();
  v104 = v453;
  v105 = v101;
  v106 = v454;
  v447 = *(a1 + 24);
  v448 = *(a1 + 40);
  v435 = *(a1 + 24);
  LOBYTE(v436) = *(a1 + 40);
  v427 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI7BindingVySbGMd);
  Binding.projectedValue.getter();
  v107 = v453;
  LOBYTE(v96) = v454;
  v108 = type metadata accessor for EffortButton(0);
  *&v101[v108[5]] = 3;
  v109 = &v101[v108[6]];
  *v109 = v104;
  *(v109 + 2) = v106;
  v110 = &v101[v108[7]];
  *v110 = v107;
  v110[16] = v96;
  v111 = v108[8];
  static Font.title2.getter();
  static Font.Weight.medium.getter();
  v112 = Font.weight(_:)();

  *&v105[v111] = v112;
  v113 = v108[9];
  static Font.body.getter();
  v114 = Font.bold()();

  *&v105[v113] = v114;
  *&v105[v108[10]] = 0x4049000000000000;
  *&v105[v108[11]] = 0x402C000000000000;
  LOBYTE(v92) = static Edge.Set.top.getter();
  v377 = a1;
  EdgeInsets.init(_all:)();
  v115 = &v105[*(v426 + 36)];
  *v115 = v92;
  *(v115 + 1) = v116;
  *(v115 + 2) = v117;
  *(v115 + 3) = v118;
  *(v115 + 4) = v119;
  v115[40] = 0;
  v120 = v413;
  v428(v413, *MEMORY[0x277D7E250], v102);
  v121 = v102;
  v122 = v425;
  v425(v120, 0, 1, v121);
  v435 = v449;
  *&v436 = v450;
  Binding.projectedValue.getter();
  v123 = v453;
  v124 = v454;
  v435 = v447;
  LOBYTE(v436) = v448;
  Binding.projectedValue.getter();
  v125 = v453;
  *&v120[v108[5]] = 0;
  v126 = v454;
  v127 = &v120[v108[6]];
  *v127 = v123;
  *(v127 + 2) = v124;
  v128 = &v120[v108[7]];
  *v128 = v125;
  v128[16] = v126;
  v129 = v108[8];
  static Font.title2.getter();
  static Font.Weight.medium.getter();
  v130 = Font.weight(_:)();

  *&v120[v129] = v130;
  v131 = v108[9];
  static Font.body.getter();
  v132 = Font.bold()();

  *&v120[v131] = v132;
  *&v120[v108[10]] = 0x4049000000000000;
  *&v120[v108[11]] = 0x402C000000000000;
  LOBYTE(v92) = static Edge.Set.top.getter();
  EdgeInsets.init(_all:)();
  v133 = v426;
  v134 = &v120[*(v426 + 36)];
  *v134 = v92;
  *(v134 + 1) = v135;
  *(v134 + 2) = v136;
  *(v134 + 3) = v137;
  *(v134 + 4) = v138;
  v134[40] = 0;
  v139 = v415;
  v140 = v430;
  v428(v415, *MEMORY[0x277D7E258], v430);
  v122(v139, 0, 1, v140);
  v435 = v449;
  *&v436 = v450;
  Binding.projectedValue.getter();
  v141 = v453;
  v142 = v454;
  v435 = v447;
  LOBYTE(v436) = v448;
  Binding.projectedValue.getter();
  v143 = v453;
  *&v139[v108[5]] = 0;
  v144 = v454;
  v145 = &v139[v108[6]];
  *v145 = v141;
  *(v145 + 2) = v142;
  v146 = &v139[v108[7]];
  *v146 = v143;
  v146[16] = v144;
  v147 = v108[8];
  static Font.title2.getter();
  static Font.Weight.medium.getter();
  v148 = Font.weight(_:)();

  *&v139[v147] = v148;
  v149 = v108[9];
  static Font.body.getter();
  v150 = Font.bold()();

  *&v139[v149] = v150;
  *&v139[v108[10]] = 0x4049000000000000;
  *&v139[v108[11]] = 0x402C000000000000;
  LOBYTE(v140) = static Edge.Set.top.getter();
  EdgeInsets.init(_all:)();
  v151 = &v139[*(v133 + 36)];
  *v151 = v140;
  *(v151 + 1) = v152;
  *(v151 + 2) = v153;
  *(v151 + 3) = v154;
  *(v151 + 4) = v155;
  v151[40] = 0;
  v375 = *MEMORY[0x277D7E260];
  v156 = v412;
  v157 = v430;
  v158 = v428;
  (v428)(v412);
  v159 = v422;
  *&v156[*(v422 + 20)] = 0x403E000000000000;
  *&v156[v159[6]] = 0x4010000000000000;
  v160 = v156;
  v161 = v159[7];
  static Font.title2.getter();
  static Font.Weight.bold.getter();
  v162 = Font.weight(_:)();

  *&v160[v161] = v162;
  v163 = v159[8];
  *&v160[v163] = static Font.subheadline.getter();
  v164 = v159[9];
  *&v160[v164] = static Color.white.getter();
  v165 = v414;
  v158(v414, v375, v157);
  v425(v165, 0, 1, v157);
  v435 = v449;
  *&v436 = v450;
  Binding.projectedValue.getter();
  v166 = v453;
  v167 = v454;
  v435 = v447;
  LOBYTE(v436) = v448;
  Binding.projectedValue.getter();
  v168 = v453;
  *&v165[v108[5]] = 0;
  v169 = v454;
  v170 = &v165[v108[6]];
  *v170 = v166;
  *(v170 + 2) = v167;
  v171 = &v165[v108[7]];
  *v171 = v168;
  v171[16] = v169;
  v172 = v108[8];
  static Font.title2.getter();
  static Font.Weight.medium.getter();
  v173 = Font.weight(_:)();

  *&v165[v172] = v173;
  v174 = v108[9];
  static Font.body.getter();
  v175 = Font.bold()();

  *&v165[v174] = v175;
  *&v165[v108[10]] = 0x4049000000000000;
  *&v165[v108[11]] = 0x402C000000000000;
  LOBYTE(v157) = static Edge.Set.top.getter();
  EdgeInsets.init(_all:)();
  v176 = &v165[*(v426 + 36)];
  *v176 = v157;
  *(v176 + 1) = v177;
  *(v176 + 2) = v178;
  *(v176 + 3) = v179;
  *(v176 + 4) = v180;
  v176[40] = 0;
  v181 = v416;
  v182 = v430;
  v428(v416, *MEMORY[0x277D7E268], v430);
  v183 = v425;
  v425(v181, 0, 1, v182);
  v435 = v449;
  *&v436 = v450;
  Binding.projectedValue.getter();
  v184 = v453;
  v185 = v454;
  v435 = v447;
  LOBYTE(v436) = v448;
  Binding.projectedValue.getter();
  v186 = v453;
  *&v181[v108[5]] = 0;
  v187 = v454;
  v188 = &v181[v108[6]];
  *v188 = v184;
  *(v188 + 2) = v185;
  v189 = &v181[v108[7]];
  *v189 = v186;
  v189[16] = v187;
  v190 = v108[8];
  static Font.title2.getter();
  static Font.Weight.medium.getter();
  v191 = Font.weight(_:)();

  *&v181[v190] = v191;
  v192 = v108[9];
  static Font.body.getter();
  v193 = Font.bold()();

  *&v181[v192] = v193;
  *&v181[v108[10]] = 0x4049000000000000;
  *&v181[v108[11]] = 0x402C000000000000;
  LOBYTE(v182) = static Edge.Set.top.getter();
  EdgeInsets.init(_all:)();
  v194 = v426;
  v195 = &v181[*(v426 + 36)];
  *v195 = v182;
  *(v195 + 1) = v196;
  *(v195 + 2) = v197;
  *(v195 + 3) = v198;
  *(v195 + 4) = v199;
  v195[40] = 0;
  v200 = v419;
  v201 = v430;
  v202 = v428;
  v428(v419, *MEMORY[0x277D7E270], v430);
  v183(v200, 0, 1, v201);
  v435 = v449;
  *&v436 = v450;
  Binding.projectedValue.getter();
  v203 = v453;
  v204 = v454;
  v435 = v447;
  LOBYTE(v436) = v448;
  Binding.projectedValue.getter();
  v205 = v453;
  *&v200[v108[5]] = 0;
  v206 = v454;
  v207 = &v200[v108[6]];
  *v207 = v203;
  *(v207 + 2) = v204;
  v208 = &v200[v108[7]];
  *v208 = v205;
  v208[16] = v206;
  v209 = v108[8];
  static Font.title2.getter();
  static Font.Weight.medium.getter();
  v210 = Font.weight(_:)();

  *&v200[v209] = v210;
  v211 = v108[9];
  static Font.body.getter();
  v212 = Font.bold()();

  *&v200[v211] = v212;
  *&v200[v108[10]] = 0x4049000000000000;
  *&v200[v108[11]] = 0x402C000000000000;
  LOBYTE(v182) = static Edge.Set.top.getter();
  EdgeInsets.init(_all:)();
  v213 = &v200[*(v194 + 36)];
  *v213 = v182;
  *(v213 + 1) = v214;
  *(v213 + 2) = v215;
  *(v213 + 3) = v216;
  *(v213 + 4) = v217;
  v213[40] = 0;
  v218 = *MEMORY[0x277D7E278];
  v219 = v411;
  v220 = v202;
  v202(v411, v218, v201);
  v221 = v422;
  *&v219[*(v422 + 20)] = 0x403E000000000000;
  *&v219[v221[6]] = 0x4010000000000000;
  v222 = v219;
  v223 = v221[7];
  static Font.title2.getter();
  static Font.Weight.bold.getter();
  v224 = Font.weight(_:)();

  *&v222[v223] = v224;
  v225 = v221[8];
  *&v222[v225] = static Font.subheadline.getter();
  v226 = v221[9];
  *&v222[v226] = static Color.white.getter();
  v227 = v417;
  v228 = v218;
  v229 = v430;
  v220(v417, v228, v430);
  v425(v227, 0, 1, v229);
  v435 = v449;
  *&v436 = v450;
  Binding.projectedValue.getter();
  v230 = v453;
  v231 = v454;
  v435 = v447;
  LOBYTE(v436) = v448;
  Binding.projectedValue.getter();
  v232 = v453;
  *&v227[v108[5]] = 0;
  v233 = v454;
  v234 = &v227[v108[6]];
  *v234 = v230;
  *(v234 + 2) = v231;
  v235 = &v227[v108[7]];
  *v235 = v232;
  v235[16] = v233;
  v236 = v108[8];
  static Font.title2.getter();
  static Font.Weight.medium.getter();
  v237 = Font.weight(_:)();

  *&v227[v236] = v237;
  v238 = v108[9];
  static Font.body.getter();
  v239 = Font.bold()();

  *&v227[v238] = v239;
  *&v227[v108[10]] = 0x4049000000000000;
  *&v227[v108[11]] = 0x402C000000000000;
  LOBYTE(v229) = static Edge.Set.top.getter();
  EdgeInsets.init(_all:)();
  v240 = v426;
  v241 = &v227[*(v426 + 36)];
  *v241 = v229;
  *(v241 + 1) = v242;
  *(v241 + 2) = v243;
  *(v241 + 3) = v244;
  *(v241 + 4) = v245;
  v241[40] = 0;
  v246 = v420;
  v247 = v430;
  v428(v420, *MEMORY[0x277D7E280], v430);
  v425(v246, 0, 1, v247);
  v435 = v449;
  *&v436 = v450;
  Binding.projectedValue.getter();
  v248 = v453;
  v249 = v454;
  v435 = v447;
  LOBYTE(v436) = v448;
  Binding.projectedValue.getter();
  v250 = v453;
  *&v246[v108[5]] = 0;
  v251 = v454;
  v252 = &v246[v108[6]];
  *v252 = v248;
  *(v252 + 2) = v249;
  v253 = &v246[v108[7]];
  *v253 = v250;
  v253[16] = v251;
  v254 = v108[8];
  static Font.title2.getter();
  static Font.Weight.medium.getter();
  v255 = Font.weight(_:)();

  *&v246[v254] = v255;
  v256 = v108[9];
  static Font.body.getter();
  v257 = Font.bold()();

  *&v246[v256] = v257;
  v376 = v108;
  *&v246[v108[10]] = 0x4049000000000000;
  *&v246[v108[11]] = 0x402C000000000000;
  LOBYTE(v247) = static Edge.Set.top.getter();
  EdgeInsets.init(_all:)();
  v258 = &v246[*(v240 + 36)];
  *v258 = v247;
  *(v258 + 1) = v259;
  *(v258 + 2) = v260;
  *(v258 + 3) = v261;
  *(v258 + 4) = v262;
  v258[40] = 0;
  v375 = *MEMORY[0x277D7E288];
  v263 = v410;
  v264 = v430;
  v265 = v428;
  (v428)(v410);
  v266 = v422;
  *&v263[*(v422 + 20)] = 0x403E000000000000;
  *&v263[*(v266 + 24)] = 0x4010000000000000;
  v267 = v263;
  v268 = *(v266 + 28);
  v269 = v266;
  static Font.title2.getter();
  static Font.Weight.bold.getter();
  v270 = Font.weight(_:)();

  *&v267[v268] = v270;
  v271 = *(v269 + 32);
  *&v267[v271] = static Font.subheadline.getter();
  v272 = *(v269 + 36);
  *&v267[v272] = static Color.white.getter();
  v273 = v418;
  v265(v418, v375, v264);
  v274 = v425;
  v425(v273, 0, 1, v264);
  v435 = v449;
  *&v436 = v450;
  Binding.projectedValue.getter();
  v275 = v453;
  v276 = v454;
  v435 = v447;
  LOBYTE(v436) = v448;
  Binding.projectedValue.getter();
  v277 = v453;
  v278 = v376;
  *&v273[v376[5]] = 0;
  v279 = v454;
  v280 = &v273[v278[6]];
  *v280 = v275;
  *(v280 + 2) = v276;
  v281 = &v273[v278[7]];
  *v281 = v277;
  v281[16] = v279;
  v282 = v278[8];
  static Font.title2.getter();
  static Font.Weight.medium.getter();
  v283 = Font.weight(_:)();

  *&v273[v282] = v283;
  v284 = v278[9];
  static Font.body.getter();
  v285 = Font.bold()();

  *&v273[v284] = v285;
  *&v273[v278[10]] = 0x4049000000000000;
  *&v273[v278[11]] = 0x402C000000000000;
  LOBYTE(v264) = static Edge.Set.top.getter();
  EdgeInsets.init(_all:)();
  v286 = v426;
  v287 = &v273[*(v426 + 36)];
  *v287 = v264;
  *(v287 + 1) = v288;
  *(v287 + 2) = v289;
  *(v287 + 3) = v290;
  *(v287 + 4) = v291;
  v287[40] = 0;
  v292 = v421;
  v293 = v430;
  v428(v421, *MEMORY[0x277D7E290], v430);
  v274(v292, 0, 1, v293);
  v435 = v449;
  *&v436 = v450;
  Binding.projectedValue.getter();
  v294 = v453;
  v295 = v454;
  v435 = v447;
  LOBYTE(v436) = v448;
  Binding.projectedValue.getter();
  v296 = v453;
  *&v292[v278[5]] = 12;
  v297 = v454;
  v298 = &v292[v278[6]];
  *v298 = v294;
  *(v298 + 2) = v295;
  v299 = &v292[v278[7]];
  *v299 = v296;
  v299[16] = v297;
  v300 = v278[8];
  static Font.title2.getter();
  static Font.Weight.medium.getter();
  v301 = Font.weight(_:)();

  *&v292[v300] = v301;
  v302 = v278[9];
  static Font.body.getter();
  v303 = Font.bold()();

  *&v292[v302] = v303;
  *&v292[v278[10]] = 0x4049000000000000;
  *&v292[v278[11]] = 0x402C000000000000;
  LOBYTE(v293) = static Edge.Set.top.getter();
  EdgeInsets.init(_all:)();
  v304 = &v292[*(v286 + 36)];
  *v304 = v293;
  *(v304 + 1) = v305;
  *(v304 + 2) = v306;
  *(v304 + 3) = v307;
  *(v304 + 4) = v308;
  v304[40] = 0;
  v309 = v396;
  Divider.init()();
  LOBYTE(v293) = static Edge.Set.top.getter();
  EdgeInsets.init(_all:)();
  v310 = &v309[*(v384 + 36)];
  *v310 = v293;
  *(v310 + 1) = v311;
  *(v310 + 2) = v312;
  *(v310 + 3) = v313;
  *(v310 + 4) = v314;
  v310[40] = 0;
  v315 = v391;
  v274(v391, 1, 1, v430);
  v435 = v449;
  *&v436 = v450;
  Binding.projectedValue.getter();
  v316 = v453;
  v317 = v454;
  v435 = v447;
  LOBYTE(v436) = v448;
  Binding.projectedValue.getter();
  v318 = v453;
  *&v315[v278[5]] = 15;
  v319 = v454;
  v320 = &v315[v278[6]];
  *v320 = v316;
  *(v320 + 2) = v317;
  v321 = &v315[v278[7]];
  *v321 = v318;
  v321[16] = v319;
  v322 = v278[8];
  static Font.title2.getter();
  static Font.Weight.medium.getter();
  v323 = Font.weight(_:)();

  *&v315[v322] = v323;
  v324 = v278[9];
  static Font.body.getter();
  v325 = Font.bold()();

  *&v315[v324] = v325;
  *&v315[v278[10]] = 0x4049000000000000;
  *&v315[v278[11]] = 0x402C000000000000;
  LOBYTE(v293) = static Edge.Set.top.getter();
  EdgeInsets.init(_all:)();
  v326 = &v315[*(v286 + 36)];
  *v326 = v293;
  *(v326 + 1) = v327;
  *(v326 + 2) = v328;
  *(v326 + 3) = v329;
  *(v326 + 4) = v330;
  v326[40] = 0;
  v331 = WorkoutUIBundle.super.isa;
  v458._object = 0xE000000000000000;
  v332._object = 0x800000020CB9E360;
  v332._countAndFlagsBits = 0xD000000000000017;
  v333.value._countAndFlagsBits = 0x617A696C61636F4CLL;
  v333.value._object = 0xEB00000000656C62;
  v334._countAndFlagsBits = 0;
  v334._object = 0xE000000000000000;
  v458._countAndFlagsBits = 0;
  v335 = NSLocalizedString(_:tableName:bundle:value:comment:)(v332, v333, v331, v334, v458);

  v435 = v335;
  v336 = Text.init<A>(_:)();
  v338 = v337;
  LOBYTE(v324) = v339;
  static Font.footnote.getter();
  static Font.Weight.medium.getter();
  Font.weight(_:)();

  v340 = Text.font(_:)();
  v342 = v341;
  LOBYTE(v278) = v343;
  v345 = v344;

  outlined consume of Text.Storage(v336, v338, v324 & 1);

  LOBYTE(v336) = static Edge.Set.top.getter();
  EdgeInsets.init(_all:)();
  LOBYTE(v453) = v278 & 1;
  LOBYTE(v431) = 0;
  v435._countAndFlagsBits = v340;
  v435._object = v342;
  LOBYTE(v436) = v278 & 1;
  *(&v436 + 1) = v345;
  LOBYTE(v437) = v336;
  *(&v437 + 1) = v346;
  *&v438[0] = v347;
  *(&v438[0] + 1) = v348;
  *&v438[1] = v349;
  BYTE8(v438[1]) = 0;
  static Edge.Set.horizontal.getter();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyAA4TextVAA14_PaddingLayoutVGMd);
  lazy protocol witness table accessor for type ModifiedContent<Text, _PaddingLayout> and conformance <> ModifiedContent<A, B>();
  v350 = v385;
  View.scenePadding(_:)();
  v451[2] = v437;
  v452[0] = v438[0];
  *(v452 + 9) = *(v438 + 9);
  v451[0] = v435;
  v451[1] = v436;
  outlined destroy of _BackgroundModifier<ModifiedContent<LinearGradient, _SafeAreaRegionsIgnoringLayout>>(v451, &_s7SwiftUI15ModifiedContentVyAA4TextVAA14_PaddingLayoutVGMd);
  *&v431 = v383;
  *(&v431 + 1) = v382;
  LOBYTE(v432) = v379;
  *(&v432 + 1) = v381;
  LOBYTE(v433) = v380;
  *(&v433 + 1) = v85;
  *&v434[0] = v87;
  *(&v434[0] + 1) = v89;
  *&v434[1] = v91;
  BYTE8(v434[1]) = 0;
  v435._countAndFlagsBits = &v431;
  v351 = v395;
  outlined init with copy of EffortSectionTitle(v390, v395, type metadata accessor for EffortSectionTitle);
  v435._object = v351;
  v352 = v397;
  outlined init with copy of _BackgroundModifier<ModifiedContent<LinearGradient, _SafeAreaRegionsIgnoringLayout>>(v409, v397, &_s7SwiftUI15ModifiedContentVy07WorkoutB012EffortButtonVAA14_PaddingLayoutVGMd);
  *&v436 = v352;
  v353 = v398;
  outlined init with copy of _BackgroundModifier<ModifiedContent<LinearGradient, _SafeAreaRegionsIgnoringLayout>>(v413, v398, &_s7SwiftUI15ModifiedContentVy07WorkoutB012EffortButtonVAA14_PaddingLayoutVGMd);
  *(&v436 + 1) = v353;
  v354 = v401;
  outlined init with copy of _BackgroundModifier<ModifiedContent<LinearGradient, _SafeAreaRegionsIgnoringLayout>>(v415, v401, &_s7SwiftUI15ModifiedContentVy07WorkoutB012EffortButtonVAA14_PaddingLayoutVGMd);
  *&v437 = v354;
  v355 = v394;
  outlined init with copy of EffortSectionTitle(v412, v394, type metadata accessor for EffortSectionTitle);
  *(&v437 + 1) = v355;
  v356 = v399;
  outlined init with copy of _BackgroundModifier<ModifiedContent<LinearGradient, _SafeAreaRegionsIgnoringLayout>>(v414, v399, &_s7SwiftUI15ModifiedContentVy07WorkoutB012EffortButtonVAA14_PaddingLayoutVGMd);
  *&v438[0] = v356;
  v357 = v402;
  outlined init with copy of _BackgroundModifier<ModifiedContent<LinearGradient, _SafeAreaRegionsIgnoringLayout>>(v416, v402, &_s7SwiftUI15ModifiedContentVy07WorkoutB012EffortButtonVAA14_PaddingLayoutVGMd);
  *(&v438[0] + 1) = v357;
  v358 = v405;
  outlined init with copy of _BackgroundModifier<ModifiedContent<LinearGradient, _SafeAreaRegionsIgnoringLayout>>(v419, v405, &_s7SwiftUI15ModifiedContentVy07WorkoutB012EffortButtonVAA14_PaddingLayoutVGMd);
  *&v438[1] = v358;
  v359 = v393;
  outlined init with copy of EffortSectionTitle(v411, v393, type metadata accessor for EffortSectionTitle);
  *(&v438[1] + 1) = v359;
  v360 = v403;
  outlined init with copy of _BackgroundModifier<ModifiedContent<LinearGradient, _SafeAreaRegionsIgnoringLayout>>(v417, v403, &_s7SwiftUI15ModifiedContentVy07WorkoutB012EffortButtonVAA14_PaddingLayoutVGMd);
  v439 = v360;
  v361 = v406;
  outlined init with copy of _BackgroundModifier<ModifiedContent<LinearGradient, _SafeAreaRegionsIgnoringLayout>>(v420, v406, &_s7SwiftUI15ModifiedContentVy07WorkoutB012EffortButtonVAA14_PaddingLayoutVGMd);
  v440 = v361;
  v362 = v392;
  outlined init with copy of EffortSectionTitle(v410, v392, type metadata accessor for EffortSectionTitle);
  v441 = v362;
  v363 = v404;
  outlined init with copy of _BackgroundModifier<ModifiedContent<LinearGradient, _SafeAreaRegionsIgnoringLayout>>(v418, v404, &_s7SwiftUI15ModifiedContentVy07WorkoutB012EffortButtonVAA14_PaddingLayoutVGMd);
  v442 = v363;
  v364 = v407;
  outlined init with copy of _BackgroundModifier<ModifiedContent<LinearGradient, _SafeAreaRegionsIgnoringLayout>>(v421, v407, &_s7SwiftUI15ModifiedContentVy07WorkoutB012EffortButtonVAA14_PaddingLayoutVGMd);
  v443 = v364;
  v365 = v396;
  v366 = v408;
  outlined init with copy of _BackgroundModifier<ModifiedContent<LinearGradient, _SafeAreaRegionsIgnoringLayout>>(v396, v408, &_s7SwiftUI15ModifiedContentVyAA7DividerVAA14_PaddingLayoutVGMd);
  v444 = v366;
  v367 = v391;
  v368 = v400;
  outlined init with copy of _BackgroundModifier<ModifiedContent<LinearGradient, _SafeAreaRegionsIgnoringLayout>>(v391, v400, &_s7SwiftUI15ModifiedContentVy07WorkoutB012EffortButtonVAA14_PaddingLayoutVGMd);
  v445 = v368;
  v369 = v387;
  v370 = v388;
  v371 = v389;
  (*(v388 + 16))(v387, v350, v389);
  v446 = v369;
  _s7SwiftUI11ViewBuilderV10buildBlockyAA05TupleC0VyxxQp_tGxxQpRvzAA0C0RzlFZAA15ModifiedContentVyAA4TextVAA14_PaddingLayoutVG_07WorkoutB018EffortSectionTitle33_06FC76556B25F7BE4859D6C5967358FALLVAJyAP0N6ButtonVANGA2vs3vs2vs2vJyAA7DividerVANGAvaHPAAE05sceneK0yQrAA4EdgeO3SetVFQOyAO_Qo_QP_Tt1g5(&v435, v386);
  v372 = *(v370 + 8);
  v372(v350, v371);
  outlined destroy of _BackgroundModifier<ModifiedContent<LinearGradient, _SafeAreaRegionsIgnoringLayout>>(v367, &_s7SwiftUI15ModifiedContentVy07WorkoutB012EffortButtonVAA14_PaddingLayoutVGMd);
  outlined destroy of _BackgroundModifier<ModifiedContent<LinearGradient, _SafeAreaRegionsIgnoringLayout>>(v365, &_s7SwiftUI15ModifiedContentVyAA7DividerVAA14_PaddingLayoutVGMd);
  outlined destroy of _BackgroundModifier<ModifiedContent<LinearGradient, _SafeAreaRegionsIgnoringLayout>>(v421, &_s7SwiftUI15ModifiedContentVy07WorkoutB012EffortButtonVAA14_PaddingLayoutVGMd);
  outlined destroy of _BackgroundModifier<ModifiedContent<LinearGradient, _SafeAreaRegionsIgnoringLayout>>(v418, &_s7SwiftUI15ModifiedContentVy07WorkoutB012EffortButtonVAA14_PaddingLayoutVGMd);
  outlined destroy of EffortSectionTitle(v410);
  outlined destroy of _BackgroundModifier<ModifiedContent<LinearGradient, _SafeAreaRegionsIgnoringLayout>>(v420, &_s7SwiftUI15ModifiedContentVy07WorkoutB012EffortButtonVAA14_PaddingLayoutVGMd);
  outlined destroy of _BackgroundModifier<ModifiedContent<LinearGradient, _SafeAreaRegionsIgnoringLayout>>(v417, &_s7SwiftUI15ModifiedContentVy07WorkoutB012EffortButtonVAA14_PaddingLayoutVGMd);
  outlined destroy of EffortSectionTitle(v411);
  outlined destroy of _BackgroundModifier<ModifiedContent<LinearGradient, _SafeAreaRegionsIgnoringLayout>>(v419, &_s7SwiftUI15ModifiedContentVy07WorkoutB012EffortButtonVAA14_PaddingLayoutVGMd);
  outlined destroy of _BackgroundModifier<ModifiedContent<LinearGradient, _SafeAreaRegionsIgnoringLayout>>(v416, &_s7SwiftUI15ModifiedContentVy07WorkoutB012EffortButtonVAA14_PaddingLayoutVGMd);
  outlined destroy of _BackgroundModifier<ModifiedContent<LinearGradient, _SafeAreaRegionsIgnoringLayout>>(v414, &_s7SwiftUI15ModifiedContentVy07WorkoutB012EffortButtonVAA14_PaddingLayoutVGMd);
  outlined destroy of EffortSectionTitle(v412);
  outlined destroy of _BackgroundModifier<ModifiedContent<LinearGradient, _SafeAreaRegionsIgnoringLayout>>(v415, &_s7SwiftUI15ModifiedContentVy07WorkoutB012EffortButtonVAA14_PaddingLayoutVGMd);
  outlined destroy of _BackgroundModifier<ModifiedContent<LinearGradient, _SafeAreaRegionsIgnoringLayout>>(v413, &_s7SwiftUI15ModifiedContentVy07WorkoutB012EffortButtonVAA14_PaddingLayoutVGMd);
  outlined destroy of _BackgroundModifier<ModifiedContent<LinearGradient, _SafeAreaRegionsIgnoringLayout>>(v409, &_s7SwiftUI15ModifiedContentVy07WorkoutB012EffortButtonVAA14_PaddingLayoutVGMd);
  outlined destroy of EffortSectionTitle(v390);
  v372(v369, v371);
  outlined destroy of _BackgroundModifier<ModifiedContent<LinearGradient, _SafeAreaRegionsIgnoringLayout>>(v400, &_s7SwiftUI15ModifiedContentVy07WorkoutB012EffortButtonVAA14_PaddingLayoutVGMd);
  outlined destroy of _BackgroundModifier<ModifiedContent<LinearGradient, _SafeAreaRegionsIgnoringLayout>>(v408, &_s7SwiftUI15ModifiedContentVyAA7DividerVAA14_PaddingLayoutVGMd);
  outlined destroy of _BackgroundModifier<ModifiedContent<LinearGradient, _SafeAreaRegionsIgnoringLayout>>(v407, &_s7SwiftUI15ModifiedContentVy07WorkoutB012EffortButtonVAA14_PaddingLayoutVGMd);
  outlined destroy of _BackgroundModifier<ModifiedContent<LinearGradient, _SafeAreaRegionsIgnoringLayout>>(v404, &_s7SwiftUI15ModifiedContentVy07WorkoutB012EffortButtonVAA14_PaddingLayoutVGMd);
  outlined destroy of EffortSectionTitle(v392);
  outlined destroy of _BackgroundModifier<ModifiedContent<LinearGradient, _SafeAreaRegionsIgnoringLayout>>(v406, &_s7SwiftUI15ModifiedContentVy07WorkoutB012EffortButtonVAA14_PaddingLayoutVGMd);
  outlined destroy of _BackgroundModifier<ModifiedContent<LinearGradient, _SafeAreaRegionsIgnoringLayout>>(v403, &_s7SwiftUI15ModifiedContentVy07WorkoutB012EffortButtonVAA14_PaddingLayoutVGMd);
  outlined destroy of EffortSectionTitle(v393);
  outlined destroy of _BackgroundModifier<ModifiedContent<LinearGradient, _SafeAreaRegionsIgnoringLayout>>(v405, &_s7SwiftUI15ModifiedContentVy07WorkoutB012EffortButtonVAA14_PaddingLayoutVGMd);
  outlined destroy of _BackgroundModifier<ModifiedContent<LinearGradient, _SafeAreaRegionsIgnoringLayout>>(v402, &_s7SwiftUI15ModifiedContentVy07WorkoutB012EffortButtonVAA14_PaddingLayoutVGMd);
  outlined destroy of _BackgroundModifier<ModifiedContent<LinearGradient, _SafeAreaRegionsIgnoringLayout>>(v399, &_s7SwiftUI15ModifiedContentVy07WorkoutB012EffortButtonVAA14_PaddingLayoutVGMd);
  outlined destroy of EffortSectionTitle(v394);
  outlined destroy of _BackgroundModifier<ModifiedContent<LinearGradient, _SafeAreaRegionsIgnoringLayout>>(v401, &_s7SwiftUI15ModifiedContentVy07WorkoutB012EffortButtonVAA14_PaddingLayoutVGMd);
  outlined destroy of _BackgroundModifier<ModifiedContent<LinearGradient, _SafeAreaRegionsIgnoringLayout>>(v398, &_s7SwiftUI15ModifiedContentVy07WorkoutB012EffortButtonVAA14_PaddingLayoutVGMd);
  outlined destroy of _BackgroundModifier<ModifiedContent<LinearGradient, _SafeAreaRegionsIgnoringLayout>>(v397, &_s7SwiftUI15ModifiedContentVy07WorkoutB012EffortButtonVAA14_PaddingLayoutVGMd);
  outlined destroy of EffortSectionTitle(v395);
  v455 = v433;
  v456[0] = v434[0];
  *(v456 + 9) = *(v434 + 9);
  v453 = v431;
  v454 = v432;
  return outlined destroy of _BackgroundModifier<ModifiedContent<LinearGradient, _SafeAreaRegionsIgnoringLayout>>(&v453, &_s7SwiftUI15ModifiedContentVyAA4TextVAA14_PaddingLayoutVGMd);
}

double closure #2 in EffortListView.body.getter@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11WorkoutCore18AppleExertionScaleOSgMd);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v13 - v5;
  v7 = [objc_opt_self() appleEffortScoreUnit];
  *v15 = *a1;
  *&v15[16] = *(a1 + 16);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI7BindingVySdGMd);
  MEMORY[0x20F30B100](&v14, v8);
  v9 = [objc_opt_self() quantityWithUnit:v7 doubleValue:v14];

  AppleExertionScale.init(quantity:)();
  specialized static EffortColors.gradient(exertion:)(v6);
  outlined destroy of _BackgroundModifier<ModifiedContent<LinearGradient, _SafeAreaRegionsIgnoringLayout>>(v6, &_s11WorkoutCore18AppleExertionScaleOSgMd);
  static UnitPoint.topLeading.getter();
  static UnitPoint.bottomTrailing.getter();
  LinearGradient.init(gradient:startPoint:endPoint:)();
  v10 = static SafeAreaRegions.all.getter();
  v11 = static Edge.Set.all.getter();
  *a2 = *v15;
  *(a2 + 8) = *&v15[8];
  result = v16[0];
  *(a2 + 24) = *v16;
  *(a2 + 40) = v10;
  *(a2 + 48) = v11;
  return result;
}

uint64_t protocol witness for View.body.getter in conformance EffortListView@<X0>(uint64_t a1@<X8>)
{
  v3 = *(v1 + 80);
  v18[4] = *(v1 + 64);
  v18[5] = v3;
  v18[6] = *(v1 + 96);
  v19 = *(v1 + 112);
  v4 = *(v1 + 16);
  v18[0] = *v1;
  v18[1] = v4;
  v5 = *(v1 + 48);
  v18[2] = *(v1 + 32);
  v18[3] = v5;
  static Axis.Set.vertical.getter();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyAA6VStackVyAA9TupleViewVyACyAA4TextVAA14_PaddingLayoutVG_07WorkoutB018EffortSectionTitle33_06FC76556B25F7BE4859D6C5967358FALLVACyAM0L6ButtonVAKGA2sp3sp2sp2sCyAA7DividerVAKGAsA0G0PAAE05sceneI0yQrAA4EdgeO3SetVFQOyAL_Qo_tGGAKGMd);
  lazy protocol witness table accessor for type ModifiedContent<VStack<TupleView<(ModifiedContent<Text, _PaddingLayout>, EffortSectionTitle, ModifiedContent<EffortButton, _PaddingLayout>, ModifiedContent<EffortButton, _PaddingLayout>, ModifiedContent<EffortButton, _PaddingLayout>, EffortSectionTitle, ModifiedContent<EffortButton, _PaddingLayout>, ModifiedContent<EffortButton, _PaddingLayout>, ModifiedContent<EffortButton, _PaddingLayout>, EffortSectionTitle, ModifiedContent<EffortButton, _PaddingLayout>, ModifiedContent<EffortButton, _PaddingLayout>, EffortSectionTitle, ModifiedContent<EffortButton, _PaddingLayout>, ModifiedContent<EffortButton, _PaddingLayout>, ModifiedContent<Divider, _PaddingLayout>, ModifiedContent<EffortButton, _PaddingLayout>, <<opaque return type of View.scenePadding(_:)>>.0)>>, _PaddingLayout> and conformance <> ModifiedContent<A, B>();
  ScrollView.init(_:showsIndicators:content:)();
  v6 = static Alignment.center.getter();
  v8 = v7;
  closure #2 in EffortListView.body.getter(v18, &v25);
  v9 = v25;
  v10 = v26;
  v11 = v27;
  v12 = v28;
  v20 = v25;
  v21 = v26;
  v22 = v27;
  LOBYTE(v23) = v28;
  *(&v23 + 1) = v6;
  v24 = v8;
  v13 = a1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyAA10ScrollViewVyACyAA6VStackVyAA05TupleF0VyACyAA4TextVAA14_PaddingLayoutVG_07WorkoutB018EffortSectionTitle33_06FC76556B25F7BE4859D6C5967358FALLVACyAO0M6ButtonVAMGA2ur3ur2ur2uCyAA7DividerVAMGAuA0F0PAAE05sceneJ0yQrAA4EdgeO3SetVFQOyAN_Qo_tGGAMGGAA19_BackgroundModifierVyACyAA14LinearGradientVAA024_SafeAreaRegionsIgnoringK0VGGGMd) + 36);
  v14 = v23;
  *(v13 + 32) = v22;
  *(v13 + 48) = v14;
  *(v13 + 64) = v24;
  v15 = v21;
  *v13 = v20;
  *(v13 + 16) = v15;
  v25 = v9;
  v26 = v10;
  v27 = v11;
  v28 = v12;
  v29 = v6;
  v30 = v8;
  outlined init with copy of _BackgroundModifier<ModifiedContent<LinearGradient, _SafeAreaRegionsIgnoringLayout>>(&v20, v17, &_s7SwiftUI19_BackgroundModifierVyAA15ModifiedContentVyAA14LinearGradientVAA30_SafeAreaRegionsIgnoringLayoutVGGMd);
  return outlined destroy of _BackgroundModifier<ModifiedContent<LinearGradient, _SafeAreaRegionsIgnoringLayout>>(&v25, &_s7SwiftUI19_BackgroundModifierVyAA15ModifiedContentVyAA14LinearGradientVAA30_SafeAreaRegionsIgnoringLayoutVGGMd);
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<VStack<TupleView<(ModifiedContent<Text, _PaddingLayout>, EffortSectionTitle, ModifiedContent<EffortButton, _PaddingLayout>, ModifiedContent<EffortButton, _PaddingLayout>, ModifiedContent<EffortButton, _PaddingLayout>, EffortSectionTitle, ModifiedContent<EffortButton, _PaddingLayout>, ModifiedContent<EffortButton, _PaddingLayout>, ModifiedContent<EffortButton, _PaddingLayout>, EffortSectionTitle, ModifiedContent<EffortButton, _PaddingLayout>, ModifiedContent<EffortButton, _PaddingLayout>, EffortSectionTitle, ModifiedContent<EffortButton, _PaddingLayout>, ModifiedContent<EffortButton, _PaddingLayout>, ModifiedContent<Divider, _PaddingLayout>, ModifiedContent<EffortButton, _PaddingLayout>, <<opaque return type of View.scenePadding(_:)>>.0)>>, _PaddingLayout> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<VStack<TupleView<(ModifiedContent<Text, _PaddingLayout>, EffortSectionTitle, ModifiedContent<EffortButton, _PaddingLayout>, ModifiedContent<EffortButton, _PaddingLayout>, ModifiedContent<EffortButton, _PaddingLayout>, EffortSectionTitle, ModifiedContent<EffortButton, _PaddingLayout>, ModifiedContent<EffortButton, _PaddingLayout>, ModifiedContent<EffortButton, _PaddingLayout>, EffortSectionTitle, ModifiedContent<EffortButton, _PaddingLayout>, ModifiedContent<EffortButton, _PaddingLayout>, EffortSectionTitle, ModifiedContent<EffortButton, _PaddingLayout>, ModifiedContent<EffortButton, _PaddingLayout>, ModifiedContent<Divider, _PaddingLayout>, ModifiedContent<EffortButton, _PaddingLayout>, <<opaque return type of View.scenePadding(_:)>>.0)>>, _PaddingLayout> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<VStack<TupleView<(ModifiedContent<Text, _PaddingLayout>, EffortSectionTitle, ModifiedContent<EffortButton, _PaddingLayout>, ModifiedContent<EffortButton, _PaddingLayout>, ModifiedContent<EffortButton, _PaddingLayout>, EffortSectionTitle, ModifiedContent<EffortButton, _PaddingLayout>, ModifiedContent<EffortButton, _PaddingLayout>, ModifiedContent<EffortButton, _PaddingLayout>, EffortSectionTitle, ModifiedContent<EffortButton, _PaddingLayout>, ModifiedContent<EffortButton, _PaddingLayout>, EffortSectionTitle, ModifiedContent<EffortButton, _PaddingLayout>, ModifiedContent<EffortButton, _PaddingLayout>, ModifiedContent<Divider, _PaddingLayout>, ModifiedContent<EffortButton, _PaddingLayout>, <<opaque return type of View.scenePadding(_:)>>.0)>>, _PaddingLayout> and conformance <> ModifiedContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyAA6VStackVyAA9TupleViewVyACyAA4TextVAA14_PaddingLayoutVG_07WorkoutB018EffortSectionTitle33_06FC76556B25F7BE4859D6C5967358FALLVACyAM0L6ButtonVAKGA2sp3sp2sp2sCyAA7DividerVAKGAsA0G0PAAE05sceneI0yQrAA4EdgeO3SetVFQOyAL_Qo_tGGAKGMd);
    lazy protocol witness table accessor for type VStack<TupleView<(ModifiedContent<Text, _PaddingLayout>, EffortSectionTitle, ModifiedContent<EffortButton, _PaddingLayout>, ModifiedContent<EffortButton, _PaddingLayout>, ModifiedContent<EffortButton, _PaddingLayout>, EffortSectionTitle, ModifiedContent<EffortButton, _PaddingLayout>, ModifiedContent<EffortButton, _PaddingLayout>, ModifiedContent<EffortButton, _PaddingLayout>, EffortSectionTitle, ModifiedContent<EffortButton, _PaddingLayout>, ModifiedContent<EffortButton, _PaddingLayout>, EffortSectionTitle, ModifiedContent<EffortButton, _PaddingLayout>, ModifiedContent<EffortButton, _PaddingLayout>, ModifiedContent<Divider, _PaddingLayout>, ModifiedContent<EffortButton, _PaddingLayout>, <<opaque return type of View.scenePadding(_:)>>.0)>> and conformance VStack<A>(&lazy protocol witness table cache variable for type VStack<TupleView<(ModifiedContent<Text, _PaddingLayout>, EffortSectionTitle, ModifiedContent<EffortButton, _PaddingLayout>, ModifiedContent<EffortButton, _PaddingLayout>, ModifiedContent<EffortButton, _PaddingLayout>, EffortSectionTitle, ModifiedContent<EffortButton, _PaddingLayout>, ModifiedContent<EffortButton, _PaddingLayout>, ModifiedContent<EffortButton, _PaddingLayout>, EffortSectionTitle, ModifiedContent<EffortButton, _PaddingLayout>, ModifiedContent<EffortButton, _PaddingLayout>, EffortSectionTitle, ModifiedContent<EffortButton, _PaddingLayout>, ModifiedContent<EffortButton, _PaddingLayout>, ModifiedContent<Divider, _PaddingLayout>, ModifiedContent<EffortButton, _PaddingLayout>, <<opaque return type of View.scenePadding(_:)>>.0)>> and conformance VStack<A>, &_s7SwiftUI6VStackVyAA9TupleViewVyAA15ModifiedContentVyAA4TextVAA14_PaddingLayoutVG_07WorkoutB018EffortSectionTitle33_06FC76556B25F7BE4859D6C5967358FALLVAGyAM0L6ButtonVAKGA2sp3sp2sp2sGyAA7DividerVAKGAsA0E0PAAE05sceneI0yQrAA4EdgeO3SetVFQOyAL_Qo_tGGMd);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<VStack<TupleView<(ModifiedContent<Text, _PaddingLayout>, EffortSectionTitle, ModifiedContent<EffortButton, _PaddingLayout>, ModifiedContent<EffortButton, _PaddingLayout>, ModifiedContent<EffortButton, _PaddingLayout>, EffortSectionTitle, ModifiedContent<EffortButton, _PaddingLayout>, ModifiedContent<EffortButton, _PaddingLayout>, ModifiedContent<EffortButton, _PaddingLayout>, EffortSectionTitle, ModifiedContent<EffortButton, _PaddingLayout>, ModifiedContent<EffortButton, _PaddingLayout>, EffortSectionTitle, ModifiedContent<EffortButton, _PaddingLayout>, ModifiedContent<EffortButton, _PaddingLayout>, ModifiedContent<Divider, _PaddingLayout>, ModifiedContent<EffortButton, _PaddingLayout>, <<opaque return type of View.scenePadding(_:)>>.0)>>, _PaddingLayout> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

uint64_t closure #1 in EffortSectionTitle.body.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v77 = a2;
  v3 = type metadata accessor for AccessibilityTraits();
  v75 = *(v3 - 8);
  v76 = v3;
  MEMORY[0x28223BE20](v3);
  v74 = &v67 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for ExertionValue();
  v72 = v5;
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v67 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyACyAA4TextVAA14_PaddingLayoutVGAA31AccessibilityAttachmentModifierVGMd);
  MEMORY[0x28223BE20](v9 - 8);
  v79 = &v67 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v78 = &v67 - v12;
  AppleExertionScale.exertionValue.getter();
  v13 = ExertionValue.shortDescription.getter();
  v15 = v14;
  v16 = *(v6 + 8);
  v71 = v6 + 8;
  v73 = v16;
  v16(v8, v5);
  *&v92 = v13;
  *(&v92 + 1) = v15;
  v70 = lazy protocol witness table accessor for type String and conformance String();
  v17 = Text.init<A>(_:)();
  v19 = v18;
  v21 = v20;
  v69 = type metadata accessor for EffortSectionTitle(0);
  v22 = Text.font(_:)();
  v67 = v24;
  v68 = v23;
  LOBYTE(v6) = v25;
  outlined consume of Text.Storage(v17, v19, v21 & 1);

  LOBYTE(v17) = static Edge.Set.top.getter();
  v26 = a1;
  EdgeInsets.init(_all:)();
  LOBYTE(v86) = v6 & 1;
  v83 = 0;
  *&v92 = v22;
  *(&v92 + 1) = v68;
  LOBYTE(v93) = v6 & 1;
  *(&v93 + 1) = v67;
  LOBYTE(v94) = v17;
  *(&v94 + 1) = v27;
  *v95 = v28;
  *&v95[8] = v29;
  *&v95[16] = v30;
  v95[24] = 0;
  v31 = v74;
  static AccessibilityTraits.isHeader.getter();
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyAA4TextVAA14_PaddingLayoutVGMd);
  v33 = lazy protocol witness table accessor for type ModifiedContent<Text, _PaddingLayout> and conformance <> ModifiedContent<A, B>();
  v34 = v78;
  MEMORY[0x20F30A9C0](v31, v32, v33);
  (*(v75 + 8))(v31, v76);
  v84[2] = v94;
  v85[0] = *v95;
  *(v85 + 9) = *&v95[9];
  v84[0] = v92;
  v84[1] = v93;
  outlined destroy of _BackgroundModifier<ModifiedContent<LinearGradient, _SafeAreaRegionsIgnoringLayout>>(v84, &_s7SwiftUI15ModifiedContentVyAA4TextVAA14_PaddingLayoutVGMd);
  AppleExertionScale.exertionValue.getter();
  v35 = ExertionValue.longDescription.getter();
  v37 = v36;
  v73(v8, v72);
  *&v92 = v35;
  *(&v92 + 1) = v37;
  v38 = Text.init<A>(_:)();
  v40 = v39;
  LOBYTE(v31) = v41;
  v42 = v69;
  v43 = v26;
  v44 = Text.font(_:)();
  v75 = v45;
  v76 = v46;
  LOBYTE(v26) = v47;
  outlined consume of Text.Storage(v38, v40, v31 & 1);

  LOBYTE(v40) = static Edge.Set.top.getter();
  EdgeInsets.init(_all:)();
  v49 = v48;
  v51 = v50;
  v53 = v52;
  v55 = v54;
  LOBYTE(v26) = v26 & 1;
  LOBYTE(v92) = v26;
  LOBYTE(v86) = 0;
  v56 = *(v43 + *(v42 + 36));
  v57 = v79;
  outlined init with copy of _BackgroundModifier<ModifiedContent<LinearGradient, _SafeAreaRegionsIgnoringLayout>>(v34, v79, &_s7SwiftUI15ModifiedContentVyACyAA4TextVAA14_PaddingLayoutVGAA31AccessibilityAttachmentModifierVGMd);
  v58 = v77;
  outlined init with copy of _BackgroundModifier<ModifiedContent<LinearGradient, _SafeAreaRegionsIgnoringLayout>>(v57, v77, &_s7SwiftUI15ModifiedContentVyACyAA4TextVAA14_PaddingLayoutVGAA31AccessibilityAttachmentModifierVGMd);
  v59 = v58 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyACyAA4TextVAA14_PaddingLayoutVGAA31AccessibilityAttachmentModifierVG_ACyAhA016_ForegroundStyleJ0VyAA5ColorVGGtMd) + 48);
  v60 = v44;
  v61 = v75;
  *&v86 = v44;
  *(&v86 + 1) = v75;
  LOBYTE(v87) = v26;
  *(&v87 + 1) = *v81;
  DWORD1(v87) = *&v81[3];
  v62 = v76;
  *(&v87 + 1) = v76;
  LOBYTE(v88) = v40;
  *(&v88 + 1) = *v80;
  DWORD1(v88) = *&v80[3];
  *(&v88 + 1) = v49;
  *&v89 = v51;
  *(&v89 + 1) = v53;
  *&v90 = v55;
  BYTE8(v90) = 0;
  HIDWORD(v90) = *(v82 + 3);
  *(&v90 + 9) = v82[0];
  v91 = v56;
  v63 = v89;
  v64 = v90;
  *(v59 + 80) = v56;
  *(v59 + 48) = v63;
  *(v59 + 64) = v64;
  v65 = v88;
  *(v59 + 16) = v87;
  *(v59 + 32) = v65;
  *v59 = v86;

  outlined init with copy of _BackgroundModifier<ModifiedContent<LinearGradient, _SafeAreaRegionsIgnoringLayout>>(&v86, &v92, &_s7SwiftUI15ModifiedContentVyACyAA4TextVAA14_PaddingLayoutVGAA24_ForegroundStyleModifierVyAA5ColorVGGMd);
  outlined destroy of _BackgroundModifier<ModifiedContent<LinearGradient, _SafeAreaRegionsIgnoringLayout>>(v78, &_s7SwiftUI15ModifiedContentVyACyAA4TextVAA14_PaddingLayoutVGAA31AccessibilityAttachmentModifierVGMd);
  *&v92 = v60;
  *(&v92 + 1) = v61;
  LOBYTE(v93) = v26;
  *(&v93 + 1) = *v81;
  DWORD1(v93) = *&v81[3];
  *(&v93 + 1) = v62;
  LOBYTE(v94) = v40;
  *(&v94 + 1) = *v80;
  DWORD1(v94) = *&v80[3];
  *(&v94 + 1) = v49;
  *v95 = v51;
  *&v95[8] = v53;
  *&v95[16] = v55;
  v95[24] = 0;
  *&v96[3] = *(v82 + 3);
  *v96 = v82[0];
  v97 = v56;
  outlined destroy of _BackgroundModifier<ModifiedContent<LinearGradient, _SafeAreaRegionsIgnoringLayout>>(&v92, &_s7SwiftUI15ModifiedContentVyACyAA4TextVAA14_PaddingLayoutVGAA24_ForegroundStyleModifierVyAA5ColorVGGMd);
  return outlined destroy of _BackgroundModifier<ModifiedContent<LinearGradient, _SafeAreaRegionsIgnoringLayout>>(v79, &_s7SwiftUI15ModifiedContentVyACyAA4TextVAA14_PaddingLayoutVGAA31AccessibilityAttachmentModifierVGMd);
}

BOOL EffortButton.isSelectedLevel.getter()
{
  v1 = v0;
  v2 = type metadata accessor for ExertionValue();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v35 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11WorkoutCore18AppleExertionScaleOSgMd);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v35 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v11 = &v35 - v10;
  MEMORY[0x28223BE20](v12);
  v14 = &v35 - v13;
  v15 = type metadata accessor for EffortButton(0);
  v16 = v0 + *(v15 + 28);
  v17 = *v16;
  v18 = *(v16 + 8);
  LOBYTE(v16) = *(v16 + 16);
  v40 = v17;
  v41 = v18;
  LOBYTE(v42) = v16;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI7BindingVySbGMd);
  MEMORY[0x20F30B100](&v39, v19);
  if (LOBYTE(v39) != 1)
  {
    v37 = v2;
    v38 = v3;
    outlined init with copy of _BackgroundModifier<ModifiedContent<LinearGradient, _SafeAreaRegionsIgnoringLayout>>(v0, v11, &_s11WorkoutCore18AppleExertionScaleOSgMd);
    v23 = type metadata accessor for AppleExertionScale();
    v24 = *(v23 - 8);
    v25 = *(v24 + 48);
    if (v25(v11, 1, v23) == 1)
    {
      outlined destroy of _BackgroundModifier<ModifiedContent<LinearGradient, _SafeAreaRegionsIgnoringLayout>>(v11, &_s11WorkoutCore18AppleExertionScaleOSgMd);
    }

    else
    {
      AppleExertionScale.exertionValue.getter();
      v36 = *(v24 + 8);
      v36(v11, v23);
      v27 = ExertionValue.level.getter();
      v28 = *(v38 + 8);
      v38 += 8;
      v28(v5, v37);
      if (v27 > 0)
      {
        v29 = (v1 + *(v15 + 24));
        v30 = v29[1];
        v31 = v29[2];
        v40 = *v29;
        v41 = v30;
        v42 = v31;
        v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI7BindingVySdGMd);
        MEMORY[0x20F30B100](&v39, v32);
        v33 = v39;
        outlined init with copy of _BackgroundModifier<ModifiedContent<LinearGradient, _SafeAreaRegionsIgnoringLayout>>(v1, v8, &_s11WorkoutCore18AppleExertionScaleOSgMd);
        if (v25(v8, 1, v23) == 1)
        {
          outlined destroy of _BackgroundModifier<ModifiedContent<LinearGradient, _SafeAreaRegionsIgnoringLayout>>(v8, &_s11WorkoutCore18AppleExertionScaleOSgMd);
          if (v33 != 0.0)
          {
            return 0;
          }
        }

        else
        {
          AppleExertionScale.exertionValue.getter();
          v36(v8, v23);
          v34 = ExertionValue.level.getter();
          v28(v5, v37);
          if (v33 != v34)
          {
            return 0;
          }
        }

        return 1;
      }
    }

    return 0;
  }

  outlined init with copy of _BackgroundModifier<ModifiedContent<LinearGradient, _SafeAreaRegionsIgnoringLayout>>(v0, v14, &_s11WorkoutCore18AppleExertionScaleOSgMd);
  v20 = type metadata accessor for AppleExertionScale();
  v21 = *(v20 - 8);
  if ((*(v21 + 48))(v14, 1, v20) == 1)
  {
    outlined destroy of _BackgroundModifier<ModifiedContent<LinearGradient, _SafeAreaRegionsIgnoringLayout>>(v14, &_s11WorkoutCore18AppleExertionScaleOSgMd);
    return 1;
  }

  else
  {
    AppleExertionScale.exertionValue.getter();
    (*(v21 + 8))(v14, v20);
    v26 = ExertionValue.level.getter();
    (*(v3 + 8))(v5, v2);
    return v26 == 0;
  }
}

uint64_t closure #1 in EffortButton.body.getter()
{
  static Animation.default.getter();
  withAnimation<A>(_:_:)();
}

uint64_t closure #1 in closure #1 in EffortButton.body.getter(uint64_t a1)
{
  v2 = type metadata accessor for ExertionValue();
  v30 = *(v2 - 8);
  v31 = v2;
  MEMORY[0x28223BE20](v2);
  v4 = &v29 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11WorkoutCore18AppleExertionScaleOSgMd);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v29 - v6;
  v8 = type metadata accessor for AppleExertionScale();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v29 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = a1;
  outlined init with copy of _BackgroundModifier<ModifiedContent<LinearGradient, _SafeAreaRegionsIgnoringLayout>>(a1, v7, &_s11WorkoutCore18AppleExertionScaleOSgMd);
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    outlined destroy of _BackgroundModifier<ModifiedContent<LinearGradient, _SafeAreaRegionsIgnoringLayout>>(v7, &_s11WorkoutCore18AppleExertionScaleOSgMd);
    v13 = type metadata accessor for EffortButton(0);
    v14 = (a1 + *(v13 + 24));
    v15 = v14[1];
    v16 = v14[2];
    v33 = *v14;
    v34 = v15;
    v35 = v16;
    v32 = 0.0;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI7BindingVySdGMd);
    Binding.wrappedValue.setter();
    v17 = a1 + *(v13 + 28);
    v18 = *v17;
    v19 = *(v17 + 8);
    LOBYTE(v17) = *(v17 + 16);
    v33 = v18;
    v34 = v19;
    LOBYTE(v35) = v17;
    LOBYTE(v32) = 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI7BindingVySbGMd);
    return Binding.wrappedValue.setter();
  }

  else
  {
    (*(v9 + 32))(v11, v7, v8);
    AppleExertionScale.exertionValue.getter();
    v21 = ExertionValue.level.getter();
    (*(v30 + 8))(v4, v31);
    v22 = type metadata accessor for EffortButton(0);
    v23 = (v12 + *(v22 + 24));
    v24 = v23[1];
    v25 = v23[2];
    v33 = *v23;
    v34 = v24;
    v35 = v25;
    v32 = v21;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI7BindingVySdGMd);
    Binding.wrappedValue.setter();
    v26 = v12 + *(v22 + 28);
    v27 = *v26;
    v28 = *(v26 + 8);
    LOBYTE(v26) = *(v26 + 16);
    v33 = v27;
    v34 = v28;
    LOBYTE(v35) = v26;
    LOBYTE(v32) = 0;

    __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI7BindingVySbGMd);
    Binding.wrappedValue.setter();
    (*(v9 + 8))(v11, v8);
  }
}

uint64_t closure #2 in EffortButton.body.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v45 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyACyAA6HStackVyAA9TupleViewVyACyACyAA5GroupVyAA012_ConditionalD0VyACyACyACyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAM5ScaleOGGAA023AccessibilityAttachmentN0VGAA17_FlipForRTLEffectVGACyAmUGGGARGAOyAA19SymbolRenderingModeVSgGG_ACyAA4TextVAA14_PaddingLayoutVGAA6SpacerVAKyACyAmOyAA4FontVSgGGACyA18_AA07_HiddenN0VGGtGGA10_GA17_GMd);
  v4 = v3 - 8;
  MEMORY[0x28223BE20](v3);
  v6 = &v41 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyACyACyAA6HStackVyAA9TupleViewVyACyACyAA5GroupVyAA012_ConditionalD0VyACyACyACyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAM5ScaleOGGAA023AccessibilityAttachmentN0VGAA17_FlipForRTLEffectVGACyAmUGGGARGAOyAA19SymbolRenderingModeVSgGG_ACyAA4TextVAA14_PaddingLayoutVGAA6SpacerVAKyACyAmOyAA4FontVSgGGACyA18_AA07_HiddenN0VGGtGGA10_GA17_GAA010_FlexFrameZ0VGMd);
  v8 = v7 - 8;
  MEMORY[0x28223BE20](v7);
  v10 = &v41 - v9;
  v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyACyACyACyAA6HStackVyAA9TupleViewVyACyACyAA5GroupVyAA012_ConditionalD0VyACyACyACyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAM5ScaleOGGAA023AccessibilityAttachmentN0VGAA17_FlipForRTLEffectVGACyAmUGGGARGAOyAA19SymbolRenderingModeVSgGG_ACyAA4TextVAA14_PaddingLayoutVGAA6SpacerVAKyACyAmOyAA4FontVSgGGACyA18_AA07_HiddenN0VGGtGGA10_GA17_GAA010_FlexFrameZ0VGA28_GMd);
  MEMORY[0x28223BE20](v41);
  v12 = &v41 - v11;
  v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyACyACyACyACyAA6HStackVyAA9TupleViewVyACyACyAA5GroupVyAA012_ConditionalD0VyACyACyACyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAM5ScaleOGGAA023AccessibilityAttachmentN0VGAA17_FlipForRTLEffectVGACyAmUGGGARGAOyAA19SymbolRenderingModeVSgGG_ACyAA4TextVAA14_PaddingLayoutVGAA6SpacerVAKyACyAmOyAA4FontVSgGGACyA18_AA07_HiddenN0VGGtGGA10_GA17_GAA010_FlexFrameZ0VGA28_GAA016_BackgroundStyleN0VyAA5ColorVGGMd);
  MEMORY[0x28223BE20](v43);
  v14 = &v41 - v13;
  v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyACyACyACyACyACyAA6HStackVyAA9TupleViewVyACyACyAA5GroupVyAA012_ConditionalD0VyACyACyACyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAM5ScaleOGGAA023AccessibilityAttachmentN0VGAA17_FlipForRTLEffectVGACyAmUGGGARGAOyAA19SymbolRenderingModeVSgGG_ACyAA4TextVAA14_PaddingLayoutVGAA6SpacerVAKyACyAmOyAA4FontVSgGGACyA18_AA07_HiddenN0VGGtGGA10_GA17_GAA010_FlexFrameZ0VGA28_GAA016_BackgroundStyleN0VyAA5ColorVGGAA11_ClipEffectVy07WorkoutB013RoundedCornerVGGMd);
  MEMORY[0x28223BE20](v42);
  v44 = &v41 - v15;
  *v6 = static VerticalAlignment.center.getter();
  *(v6 + 1) = 0;
  v6[16] = 1;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI13_VariadicViewO4TreeVy_AA13_HStackLayoutVAA05TupleD0VyAA15ModifiedContentVyAKyAA5GroupVyAA012_ConditionalJ0VyAKyAKyAKyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAQ5ScaleOGGAA023AccessibilityAttachmentQ0VGAA17_FlipForRTLEffectVGAKyAqYGGGAVGASyAA19SymbolRenderingModeVSgGG_AKyAA4TextVAA08_PaddingG0VGAA6SpacerVAOyAKyAqSyAA4FontVSgGGAKyA22_AA07_HiddenQ0VGGtGGMd);
  closure #1 in closure #2 in EffortButton.body.getter(a1, &v6[*(v16 + 44)]);
  v17 = static Edge.Set.horizontal.getter();
  v18 = &v6[*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyAA6HStackVyAA9TupleViewVyACyACyAA5GroupVyAA012_ConditionalD0VyACyACyACyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAM5ScaleOGGAA023AccessibilityAttachmentN0VGAA17_FlipForRTLEffectVGACyAmUGGGARGAOyAA19SymbolRenderingModeVSgGG_ACyAA4TextVAA14_PaddingLayoutVGAA6SpacerVAKyACyAmOyAA4FontVSgGGACyA18_AA07_HiddenN0VGGtGGA10_GMd) + 36)];
  *v18 = v17;
  *(v18 + 8) = 0u;
  *(v18 + 24) = 0u;
  v18[40] = 1;
  v19 = type metadata accessor for EffortButton(0);
  v20 = *(a1 + v19[8]);
  KeyPath = swift_getKeyPath();
  v22 = &v6[*(v4 + 44)];
  *v22 = KeyPath;
  v22[1] = v20;

  static Alignment.center.getter();
  _FlexFrameLayout.init(minWidth:idealWidth:maxWidth:minHeight:idealHeight:maxHeight:alignment:)();
  outlined init with take of ModifiedContent<ModifiedContent<HStack<TupleView<(ModifiedContent<ModifiedContent<Group<_ConditionalContent<ModifiedContent<ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Image.Scale>>, AccessibilityAttachmentModifier>, _FlipForRTLEffect>, ModifiedContent<Image, AccessibilityAttachmentModifier>>>, _EnvironmentKeyWritingModifier<Image.Scale>>, _EnvironmentKeyWritingModifier<SymbolRenderingMode?>>, ModifiedContent<Text, _PaddingLayout>, Spacer, _ConditionalContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Font?>>, ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Font?>>, _HiddenModifier>>)>>, _PaddingLayout>, _EnvironmentKeyWritingModifier<Font?>>(v6, v10, &_s7SwiftUI15ModifiedContentVyACyAA6HStackVyAA9TupleViewVyACyACyAA5GroupVyAA012_ConditionalD0VyACyACyACyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAM5ScaleOGGAA023AccessibilityAttachmentN0VGAA17_FlipForRTLEffectVGACyAmUGGGARGAOyAA19SymbolRenderingModeVSgGG_ACyAA4TextVAA14_PaddingLayoutVGAA6SpacerVAKyACyAmOyAA4FontVSgGGACyA18_AA07_HiddenN0VGGtGGA10_GA17_GMd);
  v23 = &v10[*(v8 + 44)];
  v24 = v51;
  *(v23 + 4) = v50;
  *(v23 + 5) = v24;
  *(v23 + 6) = v52;
  v25 = v47;
  *v23 = v46;
  *(v23 + 1) = v25;
  v26 = v49;
  *(v23 + 2) = v48;
  *(v23 + 3) = v26;
  static Alignment.center.getter();
  _FlexFrameLayout.init(minWidth:idealWidth:maxWidth:minHeight:idealHeight:maxHeight:alignment:)();
  outlined init with take of ModifiedContent<ModifiedContent<HStack<TupleView<(ModifiedContent<ModifiedContent<Group<_ConditionalContent<ModifiedContent<ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Image.Scale>>, AccessibilityAttachmentModifier>, _FlipForRTLEffect>, ModifiedContent<Image, AccessibilityAttachmentModifier>>>, _EnvironmentKeyWritingModifier<Image.Scale>>, _EnvironmentKeyWritingModifier<SymbolRenderingMode?>>, ModifiedContent<Text, _PaddingLayout>, Spacer, _ConditionalContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Font?>>, ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Font?>>, _HiddenModifier>>)>>, _PaddingLayout>, _EnvironmentKeyWritingModifier<Font?>>(v10, v12, &_s7SwiftUI15ModifiedContentVyACyACyAA6HStackVyAA9TupleViewVyACyACyAA5GroupVyAA012_ConditionalD0VyACyACyACyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAM5ScaleOGGAA023AccessibilityAttachmentN0VGAA17_FlipForRTLEffectVGACyAmUGGGARGAOyAA19SymbolRenderingModeVSgGG_ACyAA4TextVAA14_PaddingLayoutVGAA6SpacerVAKyACyAmOyAA4FontVSgGGACyA18_AA07_HiddenN0VGGtGGA10_GA17_GAA010_FlexFrameZ0VGMd);
  v27 = &v12[*(v41 + 36)];
  v28 = v58;
  *(v27 + 4) = v57;
  *(v27 + 5) = v28;
  *(v27 + 6) = v59;
  v29 = v54;
  *v27 = v53;
  *(v27 + 1) = v29;
  v30 = v56;
  *(v27 + 2) = v55;
  *(v27 + 3) = v30;
  static Color.white.getter();
  v31 = Color.opacity(_:)();

  LOBYTE(v6) = static Edge.Set.all.getter();
  outlined init with take of ModifiedContent<ModifiedContent<HStack<TupleView<(ModifiedContent<ModifiedContent<Group<_ConditionalContent<ModifiedContent<ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Image.Scale>>, AccessibilityAttachmentModifier>, _FlipForRTLEffect>, ModifiedContent<Image, AccessibilityAttachmentModifier>>>, _EnvironmentKeyWritingModifier<Image.Scale>>, _EnvironmentKeyWritingModifier<SymbolRenderingMode?>>, ModifiedContent<Text, _PaddingLayout>, Spacer, _ConditionalContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Font?>>, ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Font?>>, _HiddenModifier>>)>>, _PaddingLayout>, _EnvironmentKeyWritingModifier<Font?>>(v12, v14, &_s7SwiftUI15ModifiedContentVyACyACyACyAA6HStackVyAA9TupleViewVyACyACyAA5GroupVyAA012_ConditionalD0VyACyACyACyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAM5ScaleOGGAA023AccessibilityAttachmentN0VGAA17_FlipForRTLEffectVGACyAmUGGGARGAOyAA19SymbolRenderingModeVSgGG_ACyAA4TextVAA14_PaddingLayoutVGAA6SpacerVAKyACyAmOyAA4FontVSgGGACyA18_AA07_HiddenN0VGGtGGA10_GA17_GAA010_FlexFrameZ0VGA28_GMd);
  v32 = &v14[*(v43 + 36)];
  *v32 = v31;
  v32[8] = v6;
  v33 = *(a1 + v19[11]);
  v34 = *(a1 + v19[5]);
  v35 = v44;
  outlined init with take of ModifiedContent<ModifiedContent<HStack<TupleView<(ModifiedContent<ModifiedContent<Group<_ConditionalContent<ModifiedContent<ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Image.Scale>>, AccessibilityAttachmentModifier>, _FlipForRTLEffect>, ModifiedContent<Image, AccessibilityAttachmentModifier>>>, _EnvironmentKeyWritingModifier<Image.Scale>>, _EnvironmentKeyWritingModifier<SymbolRenderingMode?>>, ModifiedContent<Text, _PaddingLayout>, Spacer, _ConditionalContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Font?>>, ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Font?>>, _HiddenModifier>>)>>, _PaddingLayout>, _EnvironmentKeyWritingModifier<Font?>>(v14, v44, &_s7SwiftUI15ModifiedContentVyACyACyACyACyAA6HStackVyAA9TupleViewVyACyACyAA5GroupVyAA012_ConditionalD0VyACyACyACyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAM5ScaleOGGAA023AccessibilityAttachmentN0VGAA17_FlipForRTLEffectVGACyAmUGGGARGAOyAA19SymbolRenderingModeVSgGG_ACyAA4TextVAA14_PaddingLayoutVGAA6SpacerVAKyACyAmOyAA4FontVSgGGACyA18_AA07_HiddenN0VGGtGGA10_GA17_GAA010_FlexFrameZ0VGA28_GAA016_BackgroundStyleN0VyAA5ColorVGGMd);
  v36 = v35 + *(v42 + 36);
  *v36 = v33;
  *(v36 + 8) = v34;
  *(v36 + 16) = 256;
  v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyACyACyACyACyACyACyAA6HStackVyAA9TupleViewVyACyACyAA5GroupVyAA012_ConditionalD0VyACyACyACyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAM5ScaleOGGAA023AccessibilityAttachmentN0VGAA17_FlipForRTLEffectVGACyAmUGGGARGAOyAA19SymbolRenderingModeVSgGG_ACyAA4TextVAA14_PaddingLayoutVGAA6SpacerVAKyACyAmOyAA4FontVSgGGACyA18_AA07_HiddenN0VGGtGGA10_GA17_GAA010_FlexFrameZ0VGA28_GAA016_BackgroundStyleN0VyAA5ColorVGGAA11_ClipEffectVy07WorkoutB013RoundedCornerVGGAA01_d9ShapeKindN0VyA41_GGMd);
  v38 = v45;
  v39 = v45 + *(v37 + 36);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI25_ContentShapeKindModifierVy07WorkoutB013RoundedCornerVGMd);
  static ContentShapeKinds.accessibility.getter();
  *v39 = v33;
  *(v39 + 8) = v34;
  *(v39 + 16) = 0;
  return outlined init with take of ModifiedContent<ModifiedContent<HStack<TupleView<(ModifiedContent<ModifiedContent<Group<_ConditionalContent<ModifiedContent<ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Image.Scale>>, AccessibilityAttachmentModifier>, _FlipForRTLEffect>, ModifiedContent<Image, AccessibilityAttachmentModifier>>>, _EnvironmentKeyWritingModifier<Image.Scale>>, _EnvironmentKeyWritingModifier<SymbolRenderingMode?>>, ModifiedContent<Text, _PaddingLayout>, Spacer, _ConditionalContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Font?>>, ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Font?>>, _HiddenModifier>>)>>, _PaddingLayout>, _EnvironmentKeyWritingModifier<Font?>>(v35, v38, &_s7SwiftUI15ModifiedContentVyACyACyACyACyACyAA6HStackVyAA9TupleViewVyACyACyAA5GroupVyAA012_ConditionalD0VyACyACyACyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAM5ScaleOGGAA023AccessibilityAttachmentN0VGAA17_FlipForRTLEffectVGACyAmUGGGARGAOyAA19SymbolRenderingModeVSgGG_ACyAA4TextVAA14_PaddingLayoutVGAA6SpacerVAKyACyAmOyAA4FontVSgGGACyA18_AA07_HiddenN0VGGtGGA10_GA17_GAA010_FlexFrameZ0VGA28_GAA016_BackgroundStyleN0VyAA5ColorVGGAA11_ClipEffectVy07WorkoutB013RoundedCornerVGGMd);
}

uint64_t closure #1 in closure #2 in EffortButton.body.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v59 = a2;
  v3 = type metadata accessor for ExertionValue();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &countAndFlagsBits - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11WorkoutCore18AppleExertionScaleOSgMd);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &countAndFlagsBits - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyACyAA5GroupVyAA012_ConditionalD0VyACyACyACyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAI5ScaleOGGAA023AccessibilityAttachmentK0VGAA17_FlipForRTLEffectVGACyAiQGGGANGAKyAA19SymbolRenderingModeVSgGGMd);
  v11 = v10 - 8;
  MEMORY[0x28223BE20](v10);
  v58 = &countAndFlagsBits - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v15 = &countAndFlagsBits - v14;
  closure #1 in closure #1 in closure #2 in EffortButton.body.getter(a1, &countAndFlagsBits - v14);
  v16 = &v15[*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyAA5GroupVyAA012_ConditionalD0VyACyACyACyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAI5ScaleOGGAA023AccessibilityAttachmentK0VGAA17_FlipForRTLEffectVGACyAiQGGGANGMd) + 36)];
  v17 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI30_EnvironmentKeyWritingModifierVyAA5ImageV5ScaleOGMd) + 28);
  v18 = *MEMORY[0x277CE1048];
  v19 = type metadata accessor for Image.Scale();
  (*(*(v19 - 8) + 104))(v16 + v17, v18, v19);
  *v16 = swift_getKeyPath();
  v20 = v15;
  v21 = &v15[*(v11 + 44)];
  v22 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI30_EnvironmentKeyWritingModifierVyAA19SymbolRenderingModeVSgGMd) + 28);
  static SymbolRenderingMode.hierarchical.getter();
  v23 = type metadata accessor for SymbolRenderingMode();
  (*(*(v23 - 8) + 56))(v21 + v22, 0, 1, v23);
  *v21 = swift_getKeyPath();
  outlined init with copy of _BackgroundModifier<ModifiedContent<LinearGradient, _SafeAreaRegionsIgnoringLayout>>(a1, v9, &_s11WorkoutCore18AppleExertionScaleOSgMd);
  v24 = type metadata accessor for AppleExertionScale();
  v25 = *(v24 - 8);
  if ((*(v25 + 48))(v9, 1, v24) == 1)
  {
    outlined destroy of _BackgroundModifier<ModifiedContent<LinearGradient, _SafeAreaRegionsIgnoringLayout>>(v9, &_s11WorkoutCore18AppleExertionScaleOSgMd);
    if (one-time initialization token for WorkoutUIBundle != -1)
    {
      swift_once();
    }

    swift_beginAccess();
    v26 = WorkoutUIBundle.super.isa;
    v76._object = 0xE000000000000000;
    v27._countAndFlagsBits = 0x4646455F50494B53;
    v27._object = 0xEB0000000054524FLL;
    v28.value._countAndFlagsBits = 0x617A696C61636F4CLL;
    v28.value._object = 0xEB00000000656C62;
    v29._countAndFlagsBits = 0;
    v29._object = 0xE000000000000000;
    v76._countAndFlagsBits = 0;
    v30 = NSLocalizedString(_:tableName:bundle:value:comment:)(v27, v28, v26, v29, v76);
    countAndFlagsBits = v30._countAndFlagsBits;
    object = v30._object;
  }

  else
  {
    AppleExertionScale.exertionValue.getter();
    (*(v25 + 8))(v9, v24);
    countAndFlagsBits = ExertionValue.shortDescription.getter();
    object = v31;
    (*(v4 + 8))(v6, v3);
  }

  v56 = static Edge.Set.vertical.getter();
  v75 = 0;
  v72 = 1;
  v32 = EffortButton.isSelectedLevel.getter();
  v33 = Image.init(systemName:)();
  v34 = *(a1 + *(type metadata accessor for EffortButton(0) + 36));
  KeyPath = swift_getKeyPath();
  *&v60 = v33;
  *(&v60 + 1) = KeyPath;
  *&v61 = v34;
  BYTE8(v61) = !v32;

  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGMd);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyACyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGAA07_HiddenI0VGMd);
  lazy protocol witness table accessor for type ModifiedContent<Image, _EnvironmentKeyWritingModifier<Font?>> and conformance <> ModifiedContent<A, B>();
  lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Font?>>, _HiddenModifier> and conformance <> ModifiedContent<A, B>();
  _ConditionalContent<>.init(storage:)();
  v36 = v63;
  v37 = v64;
  v38 = v65;
  v39 = v66;
  v40 = v20;
  v41 = v20;
  v42 = v58;
  outlined init with copy of _BackgroundModifier<ModifiedContent<LinearGradient, _SafeAreaRegionsIgnoringLayout>>(v41, v58, &_s7SwiftUI15ModifiedContentVyACyAA5GroupVyAA012_ConditionalD0VyACyACyACyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAI5ScaleOGGAA023AccessibilityAttachmentK0VGAA17_FlipForRTLEffectVGACyAiQGGGANGAKyAA19SymbolRenderingModeVSgGGMd);
  v43 = v59;
  outlined init with copy of _BackgroundModifier<ModifiedContent<LinearGradient, _SafeAreaRegionsIgnoringLayout>>(v42, v59, &_s7SwiftUI15ModifiedContentVyACyAA5GroupVyAA012_ConditionalD0VyACyACyACyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAI5ScaleOGGAA023AccessibilityAttachmentK0VGAA17_FlipForRTLEffectVGACyAiQGGGANGAKyAA19SymbolRenderingModeVSgGGMd);
  v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyACyAA5GroupVyAA012_ConditionalD0VyACyACyACyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAI5ScaleOGGAA023AccessibilityAttachmentK0VGAA17_FlipForRTLEffectVGACyAiQGGGANGAKyAA19SymbolRenderingModeVSgGG_ACyAA4TextVAA14_PaddingLayoutVGAA6SpacerVAGyACyAiKyAA4FontVSgGGACyA14_AA07_HiddenK0VGGtMd);
  v45 = (v43 + v44[12]);
  v46 = countAndFlagsBits;
  *&v60 = countAndFlagsBits;
  v47 = object;
  *(&v60 + 1) = object;
  LOBYTE(v61) = 0;
  *(&v61 + 1) = *v74;
  DWORD1(v61) = *&v74[3];
  *(&v61 + 1) = MEMORY[0x277D84F90];
  v48 = v56;
  v62[0] = v56;
  *&v62[1] = *v73;
  *&v62[4] = *&v73[3];
  memset(&v62[8], 0, 32);
  v62[40] = 1;
  v49 = v61;
  *v45 = v60;
  v45[1] = v49;
  v50 = *&v62[16];
  v45[2] = *v62;
  v45[3] = v50;
  *(v45 + 57) = *&v62[25];
  v51 = v43 + v44[16];
  *v51 = 0;
  *(v51 + 8) = 1;
  v52 = v43 + v44[20];
  *v52 = v36;
  *(v52 + 8) = v37;
  *(v52 + 16) = v38;
  *(v52 + 24) = v39;
  v53 = v46;
  outlined init with copy of _BackgroundModifier<ModifiedContent<LinearGradient, _SafeAreaRegionsIgnoringLayout>>(&v60, &v63, &_s7SwiftUI15ModifiedContentVyAA4TextVAA14_PaddingLayoutVGMd);
  outlined copy of _ConditionalContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Font?>>, ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Font?>>, _HiddenModifier>>.Storage();
  outlined destroy of _BackgroundModifier<ModifiedContent<LinearGradient, _SafeAreaRegionsIgnoringLayout>>(v40, &_s7SwiftUI15ModifiedContentVyACyAA5GroupVyAA012_ConditionalD0VyACyACyACyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAI5ScaleOGGAA023AccessibilityAttachmentK0VGAA17_FlipForRTLEffectVGACyAiQGGGANGAKyAA19SymbolRenderingModeVSgGGMd);
  outlined consume of _ConditionalContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Font?>>, ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Font?>>, _HiddenModifier>>.Storage();
  v63 = v53;
  v64 = v47;
  LOBYTE(v65) = 0;
  *(&v65 + 1) = *v74;
  HIDWORD(v65) = *&v74[3];
  v66 = MEMORY[0x277D84F90];
  v67 = v48;
  *v68 = *v73;
  *&v68[3] = *&v73[3];
  v69 = 0u;
  v70 = 0u;
  v71 = 1;
  outlined destroy of _BackgroundModifier<ModifiedContent<LinearGradient, _SafeAreaRegionsIgnoringLayout>>(&v63, &_s7SwiftUI15ModifiedContentVyAA4TextVAA14_PaddingLayoutVGMd);
  return outlined destroy of _BackgroundModifier<ModifiedContent<LinearGradient, _SafeAreaRegionsIgnoringLayout>>(v42, &_s7SwiftUI15ModifiedContentVyACyAA5GroupVyAA012_ConditionalD0VyACyACyACyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAI5ScaleOGGAA023AccessibilityAttachmentK0VGAA17_FlipForRTLEffectVGACyAiQGGGANGAKyAA19SymbolRenderingModeVSgGGMd);
}

uint64_t closure #1 in closure #1 in closure #2 in EffortButton.body.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v56 = a2;
  v55 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyAA5ImageVAA31AccessibilityAttachmentModifierVGMd);
  MEMORY[0x28223BE20](v55);
  v49 = &v42 - v3;
  v53 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI19_ConditionalContentV7StorageOyAA08ModifiedD0VyAGyAGyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAI5ScaleOGGAA023AccessibilityAttachmentK0VGAA17_FlipForRTLEffectVGAGyAiQG_GMd);
  MEMORY[0x28223BE20](v53);
  v54 = &v42 - v4;
  v51 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAE5ScaleOGGMd);
  MEMORY[0x28223BE20](v51);
  v6 = (&v42 - v5);
  v52 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyACyACyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAE5ScaleOGGAA023AccessibilityAttachmentI0VGAA17_FlipForRTLEffectVGMd);
  MEMORY[0x28223BE20](v52);
  v8 = &v42 - v7;
  v9 = type metadata accessor for ExertionValue();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = &v42 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11WorkoutCore18AppleExertionScaleOSgMd);
  MEMORY[0x28223BE20](v13 - 8);
  v47 = &v42 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v17 = &v42 - v16;
  MEMORY[0x28223BE20](v18);
  v20 = &v42 - v19;
  v48 = a1;
  outlined init with copy of _BackgroundModifier<ModifiedContent<LinearGradient, _SafeAreaRegionsIgnoringLayout>>(a1, &v42 - v19, &_s11WorkoutCore18AppleExertionScaleOSgMd);
  v21 = type metadata accessor for AppleExertionScale();
  v22 = *(v21 - 8);
  v50 = *(v22 + 48);
  if (v50(v20, 1, v21) == 1)
  {
    outlined destroy of _BackgroundModifier<ModifiedContent<LinearGradient, _SafeAreaRegionsIgnoringLayout>>(v20, &_s11WorkoutCore18AppleExertionScaleOSgMd);
LABEL_6:
    v28 = Image.init(_internalSystemName:)();
    v29 = (v6 + *(v51 + 36));
    v30 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI30_EnvironmentKeyWritingModifierVyAA5ImageV5ScaleOGMd) + 28);
    v31 = *MEMORY[0x277CE1058];
    v32 = type metadata accessor for Image.Scale();
    (*(*(v32 - 8) + 104))(v29 + v30, v31, v32);
    *v29 = swift_getKeyPath();
    *v6 = v28;
    lazy protocol witness table accessor for type ModifiedContent<Image, _EnvironmentKeyWritingModifier<Image.Scale>> and conformance <> ModifiedContent<A, B>();
    View.accessibilityHidden(_:)();
    outlined destroy of _BackgroundModifier<ModifiedContent<LinearGradient, _SafeAreaRegionsIgnoringLayout>>(v6, &_s7SwiftUI15ModifiedContentVyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAE5ScaleOGGMd);
    v8[*(v52 + 36)] = 1;
    outlined init with copy of _BackgroundModifier<ModifiedContent<LinearGradient, _SafeAreaRegionsIgnoringLayout>>(v8, v54, &_s7SwiftUI15ModifiedContentVyACyACyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAE5ScaleOGGAA023AccessibilityAttachmentI0VGAA17_FlipForRTLEffectVGMd);
    swift_storeEnumTagMultiPayload();
    lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Image.Scale>>, AccessibilityAttachmentModifier>, _FlipForRTLEffect> and conformance <> ModifiedContent<A, B>();
    lazy protocol witness table accessor for type ModifiedContent<Image, AccessibilityAttachmentModifier> and conformance <> ModifiedContent<A, B>();
    _ConditionalContent<>.init(storage:)();
    v33 = v8;
    v34 = &_s7SwiftUI15ModifiedContentVyACyACyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAE5ScaleOGGAA023AccessibilityAttachmentI0VGAA17_FlipForRTLEffectVGMd;
    return outlined destroy of _BackgroundModifier<ModifiedContent<LinearGradient, _SafeAreaRegionsIgnoringLayout>>(v33, v34);
  }

  AppleExertionScale.exertionValue.getter();
  v44 = *(v22 + 8);
  v44(v20, v21);
  v23 = ExertionValue.level.getter();
  v24 = *(v10 + 8);
  v45 = v12;
  v46 = v9;
  v43 = v24;
  v24(v12, v9);
  if (!v23)
  {
    goto LABEL_6;
  }

  v58 = 0;
  v59 = 0xE000000000000000;
  v25 = v48;
  outlined init with copy of _BackgroundModifier<ModifiedContent<LinearGradient, _SafeAreaRegionsIgnoringLayout>>(v48, v17, &_s11WorkoutCore18AppleExertionScaleOSgMd);
  if (v50(v17, 1, v21) == 1)
  {
    outlined destroy of _BackgroundModifier<ModifiedContent<LinearGradient, _SafeAreaRegionsIgnoringLayout>>(v17, &_s11WorkoutCore18AppleExertionScaleOSgMd);
    v26 = 0;
    v27 = v46;
  }

  else
  {
    v35 = v45;
    AppleExertionScale.exertionValue.getter();
    v44(v17, v21);
    v26 = ExertionValue.level.getter();
    v27 = v46;
    v43(v35, v46);
  }

  v36 = v47;
  v57 = v26;
  v37 = dispatch thunk of CustomStringConvertible.description.getter();
  MEMORY[0x20F30BC00](v37);

  MEMORY[0x20F30BC00](0x2E656C637269632ELL, 0xEC0000006C6C6966);
  v57 = Image.init(systemName:)();
  outlined init with copy of _BackgroundModifier<ModifiedContent<LinearGradient, _SafeAreaRegionsIgnoringLayout>>(v25, v36, &_s11WorkoutCore18AppleExertionScaleOSgMd);
  if (v50(v36, 1, v21) == 1)
  {
    outlined destroy of _BackgroundModifier<ModifiedContent<LinearGradient, _SafeAreaRegionsIgnoringLayout>>(v36, &_s11WorkoutCore18AppleExertionScaleOSgMd);
  }

  else
  {
    v38 = v45;
    AppleExertionScale.exertionValue.getter();
    v44(v36, v21);
    ExertionValue.level.getter();
    v43(v38, v27);
  }

  v58 = Int.localizedString.getter();
  v59 = v39;
  lazy protocol witness table accessor for type String and conformance String();
  v40 = v49;
  View.accessibilityLabel<A>(_:)();

  outlined init with copy of _BackgroundModifier<ModifiedContent<LinearGradient, _SafeAreaRegionsIgnoringLayout>>(v40, v54, &_s7SwiftUI15ModifiedContentVyAA5ImageVAA31AccessibilityAttachmentModifierVGMd);
  swift_storeEnumTagMultiPayload();
  lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Image.Scale>>, AccessibilityAttachmentModifier>, _FlipForRTLEffect> and conformance <> ModifiedContent<A, B>();
  lazy protocol witness table accessor for type ModifiedContent<Image, AccessibilityAttachmentModifier> and conformance <> ModifiedContent<A, B>();
  _ConditionalContent<>.init(storage:)();
  v33 = v40;
  v34 = &_s7SwiftUI15ModifiedContentVyAA5ImageVAA31AccessibilityAttachmentModifierVGMd;
  return outlined destroy of _BackgroundModifier<ModifiedContent<LinearGradient, _SafeAreaRegionsIgnoringLayout>>(v33, v34);
}

uint64_t protocol witness for View.body.getter in conformance EffortButton@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v18[1] = a2;
  v4 = type metadata accessor for PlainButtonStyle();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = v18 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *(a1 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v10);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI6ButtonVyAA15ModifiedContentVyAEyAEyAEyAEyAEyAEyAA6HStackVyAA9TupleViewVyAEyAEyAA5GroupVyAA012_ConditionalE0VyAEyAEyAEyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAO5ScaleOGGAA023AccessibilityAttachmentO0VGAA17_FlipForRTLEffectVGAEyAoWGGGATGAQyAA19SymbolRenderingModeVSgGG_AEyAA4TextVAA14_PaddingLayoutVGAA6SpacerVAMyAEyAoQyAA4FontVSgGGAEyA20_AA07_HiddenO0VGGtGGA12_GA19_GAA16_FlexFrameLayoutVGA30_GAA016_BackgroundStyleO0VyAA5ColorVGGAA11_ClipEffectVy07WorkoutB013RoundedCornerVGGAA01_e9ShapeKindO0VyA43_GGGMd);
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v14 = v18 - v13;
  outlined init with copy of EffortSectionTitle(v2, v18 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for EffortButton);
  v15 = (*(v8 + 80) + 16) & ~*(v8 + 80);
  v16 = swift_allocObject();
  outlined init with take of EffortButton(v18 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0), v16 + v15);
  v19 = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyACyACyACyACyACyACyAA6HStackVyAA9TupleViewVyACyACyAA5GroupVyAA012_ConditionalD0VyACyACyACyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAM5ScaleOGGAA023AccessibilityAttachmentN0VGAA17_FlipForRTLEffectVGACyAmUGGGARGAOyAA19SymbolRenderingModeVSgGG_ACyAA4TextVAA14_PaddingLayoutVGAA6SpacerVAKyACyAmOyAA4FontVSgGGACyA18_AA07_HiddenN0VGGtGGA10_GA17_GAA010_FlexFrameZ0VGA28_GAA016_BackgroundStyleN0VyAA5ColorVGGAA11_ClipEffectVy07WorkoutB013RoundedCornerVGGAA01_d9ShapeKindN0VyA41_GGMd);
  lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<HStack<TupleView<(ModifiedContent<ModifiedContent<Group<_ConditionalContent<ModifiedContent<ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Image.Scale>>, AccessibilityAttachmentModifier>, _FlipForRTLEffect>, ModifiedContent<Image, AccessibilityAttachmentModifier>>>, _EnvironmentKeyWritingModifier<Image.Scale>>, _EnvironmentKeyWritingModifier<SymbolRenderingMode?>>, ModifiedContent<Text, _PaddingLayout>, Spacer, _ConditionalContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Font?>>, ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Font?>>, _HiddenModifier>>)>>, _PaddingLayout>, _EnvironmentKeyWritingModifier<Font?>>, _FlexFrameLayout>, _FlexFrameLayout>, _BackgroundStyleModifier<Color>>, _ClipEffect<RoundedCorner>>, _ContentShapeKindModifier<RoundedCorner>> and conformance <> ModifiedContent<A, B>();
  Button.init(action:label:)();
  PlainButtonStyle.init()();
  lazy protocol witness table accessor for type VStack<TupleView<(ModifiedContent<Text, _PaddingLayout>, EffortSectionTitle, ModifiedContent<EffortButton, _PaddingLayout>, ModifiedContent<EffortButton, _PaddingLayout>, ModifiedContent<EffortButton, _PaddingLayout>, EffortSectionTitle, ModifiedContent<EffortButton, _PaddingLayout>, ModifiedContent<EffortButton, _PaddingLayout>, ModifiedContent<EffortButton, _PaddingLayout>, EffortSectionTitle, ModifiedContent<EffortButton, _PaddingLayout>, ModifiedContent<EffortButton, _PaddingLayout>, EffortSectionTitle, ModifiedContent<EffortButton, _PaddingLayout>, ModifiedContent<EffortButton, _PaddingLayout>, ModifiedContent<Divider, _PaddingLayout>, ModifiedContent<EffortButton, _PaddingLayout>, <<opaque return type of View.scenePadding(_:)>>.0)>> and conformance VStack<A>(&lazy protocol witness table cache variable for type Button<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<HStack<TupleView<(ModifiedContent<ModifiedContent<Group<_ConditionalContent<ModifiedContent<ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Image.Scale>>, AccessibilityAttachmentModifier>, _FlipForRTLEffect>, ModifiedContent<Image, AccessibilityAttachmentModifier>>>, _EnvironmentKeyWritingModifier<Image.Scale>>, _EnvironmentKeyWritingModifier<SymbolRenderingMode?>>, ModifiedContent<Text, _PaddingLayout>, Spacer, _ConditionalContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Font?>>, ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Font?>>, _HiddenModifier>>)>>, _PaddingLayout>, _EnvironmentKeyWritingModifier<Font?>>, _FlexFrameLayout>, _FlexFrameLayout>, _BackgroundStyleModifier<Color>>, _ClipEffect<RoundedCorner>>, _ContentShapeKindModifier<RoundedCorner>>> and conformance Button<A>, &_s7SwiftUI6ButtonVyAA15ModifiedContentVyAEyAEyAEyAEyAEyAEyAA6HStackVyAA9TupleViewVyAEyAEyAA5GroupVyAA012_ConditionalE0VyAEyAEyAEyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAO5ScaleOGGAA023AccessibilityAttachmentO0VGAA17_FlipForRTLEffectVGAEyAoWGGGATGAQyAA19SymbolRenderingModeVSgGG_AEyAA4TextVAA14_PaddingLayoutVGAA6SpacerVAMyAEyAoQyAA4FontVSgGGAEyA20_AA07_HiddenO0VGGtGGA12_GA19_GAA16_FlexFrameLayoutVGA30_GAA016_BackgroundStyleO0VyAA5ColorVGGAA11_ClipEffectVy07WorkoutB013RoundedCornerVGGAA01_e9ShapeKindO0VyA43_GGGMd);
  _s7SwiftUI16PlainButtonStyleVAcA09PrimitivedE0AAWlTm_4(&lazy protocol witness table cache variable for type PlainButtonStyle and conformance PlainButtonStyle, MEMORY[0x277CDDB18]);
  View.buttonStyle<A>(_:)();
  (*(v5 + 8))(v7, v4);
  return (*(v12 + 8))(v14, v11);
}

uint64_t type metadata accessor for EffortSectionTitle(uint64_t a1, uint64_t *a2)
{
  result = *a2;
  if (!*a2)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t outlined destroy of EffortSectionTitle(uint64_t a1)
{
  v2 = type metadata accessor for EffortSectionTitle(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t outlined copy of UnitsSettingsSectionView<UnitSettingsEnergyUnit>?(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
  }

  return result;
}

void type metadata completion function for EffortButton()
{
  type metadata accessor for AppleExertionScale?();
  if (v0 <= 0x3F)
  {
    type metadata accessor for UIRectCorner(319);
    if (v1 <= 0x3F)
    {
      _s7SwiftUI7BindingVySdGMaTm_0(319, &lazy cache variable for type metadata for Binding<Double>);
      if (v2 <= 0x3F)
      {
        _s7SwiftUI7BindingVySdGMaTm_0(319, &lazy cache variable for type metadata for Binding<Bool>);
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void _s7SwiftUI7BindingVySdGMaTm_0(uint64_t a1, unint64_t *a2)
{
  if (!*a2)
  {
    v3 = type metadata accessor for Binding();
    if (!v4)
    {
      atomic_store(v3, a2);
    }
  }
}

uint64_t type metadata completion function for EffortSectionTitle()
{
  result = type metadata accessor for AppleExertionScale();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<ScrollView<ModifiedContent<VStack<TupleView<(ModifiedContent<Text, _PaddingLayout>, EffortSectionTitle, ModifiedContent<EffortButton, _PaddingLayout>, ModifiedContent<EffortButton, _PaddingLayout>, ModifiedContent<EffortButton, _PaddingLayout>, EffortSectionTitle, ModifiedContent<EffortButton, _PaddingLayout>, ModifiedContent<EffortButton, _PaddingLayout>, ModifiedContent<EffortButton, _PaddingLayout>, EffortSectionTitle, ModifiedContent<EffortButton, _PaddingLayout>, ModifiedContent<EffortButton, _PaddingLayout>, EffortSectionTitle, ModifiedContent<EffortButton, _PaddingLayout>, ModifiedContent<EffortButton, _PaddingLayout>, ModifiedContent<Divider, _PaddingLayout>, ModifiedContent<EffortButton, _PaddingLayout>, <<opaque return type of View.scenePadding(_:)>>.0)>>, _PaddingLayout>>, _BackgroundModifier<ModifiedContent<LinearGradient, _SafeAreaRegionsIgnoringLayout>>> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<ScrollView<ModifiedContent<VStack<TupleView<(ModifiedContent<Text, _PaddingLayout>, EffortSectionTitle, ModifiedContent<EffortButton, _PaddingLayout>, ModifiedContent<EffortButton, _PaddingLayout>, ModifiedContent<EffortButton, _PaddingLayout>, EffortSectionTitle, ModifiedContent<EffortButton, _PaddingLayout>, ModifiedContent<EffortButton, _PaddingLayout>, ModifiedContent<EffortButton, _PaddingLayout>, EffortSectionTitle, ModifiedContent<EffortButton, _PaddingLayout>, ModifiedContent<EffortButton, _PaddingLayout>, EffortSectionTitle, ModifiedContent<EffortButton, _PaddingLayout>, ModifiedContent<EffortButton, _PaddingLayout>, ModifiedContent<Divider, _PaddingLayout>, ModifiedContent<EffortButton, _PaddingLayout>, <<opaque return type of View.scenePadding(_:)>>.0)>>, _PaddingLayout>>, _BackgroundModifier<ModifiedContent<LinearGradient, _SafeAreaRegionsIgnoringLayout>>> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<ScrollView<ModifiedContent<VStack<TupleView<(ModifiedContent<Text, _PaddingLayout>, EffortSectionTitle, ModifiedContent<EffortButton, _PaddingLayout>, ModifiedContent<EffortButton, _PaddingLayout>, ModifiedContent<EffortButton, _PaddingLayout>, EffortSectionTitle, ModifiedContent<EffortButton, _PaddingLayout>, ModifiedContent<EffortButton, _PaddingLayout>, ModifiedContent<EffortButton, _PaddingLayout>, EffortSectionTitle, ModifiedContent<EffortButton, _PaddingLayout>, ModifiedContent<EffortButton, _PaddingLayout>, EffortSectionTitle, ModifiedContent<EffortButton, _PaddingLayout>, ModifiedContent<EffortButton, _PaddingLayout>, ModifiedContent<Divider, _PaddingLayout>, ModifiedContent<EffortButton, _PaddingLayout>, <<opaque return type of View.scenePadding(_:)>>.0)>>, _PaddingLayout>>, _BackgroundModifier<ModifiedContent<LinearGradient, _SafeAreaRegionsIgnoringLayout>>> and conformance <> ModifiedContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyAA10ScrollViewVyACyAA6VStackVyAA05TupleF0VyACyAA4TextVAA14_PaddingLayoutVG_07WorkoutB018EffortSectionTitle33_06FC76556B25F7BE4859D6C5967358FALLVACyAO0M6ButtonVAMGA2ur3ur2ur2uCyAA7DividerVAMGAuA0F0PAAE05sceneJ0yQrAA4EdgeO3SetVFQOyAN_Qo_tGGAMGGAA19_BackgroundModifierVyACyAA14LinearGradientVAA024_SafeAreaRegionsIgnoringK0VGGGMd);
    lazy protocol witness table accessor for type VStack<TupleView<(ModifiedContent<Text, _PaddingLayout>, EffortSectionTitle, ModifiedContent<EffortButton, _PaddingLayout>, ModifiedContent<EffortButton, _PaddingLayout>, ModifiedContent<EffortButton, _PaddingLayout>, EffortSectionTitle, ModifiedContent<EffortButton, _PaddingLayout>, ModifiedContent<EffortButton, _PaddingLayout>, ModifiedContent<EffortButton, _PaddingLayout>, EffortSectionTitle, ModifiedContent<EffortButton, _PaddingLayout>, ModifiedContent<EffortButton, _PaddingLayout>, EffortSectionTitle, ModifiedContent<EffortButton, _PaddingLayout>, ModifiedContent<EffortButton, _PaddingLayout>, ModifiedContent<Divider, _PaddingLayout>, ModifiedContent<EffortButton, _PaddingLayout>, <<opaque return type of View.scenePadding(_:)>>.0)>> and conformance VStack<A>(&lazy protocol witness table cache variable for type ScrollView<ModifiedContent<VStack<TupleView<(ModifiedContent<Text, _PaddingLayout>, EffortSectionTitle, ModifiedContent<EffortButton, _PaddingLayout>, ModifiedContent<EffortButton, _PaddingLayout>, ModifiedContent<EffortButton, _PaddingLayout>, EffortSectionTitle, ModifiedContent<EffortButton, _PaddingLayout>, ModifiedContent<EffortButton, _PaddingLayout>, ModifiedContent<EffortButton, _PaddingLayout>, EffortSectionTitle, ModifiedContent<EffortButton, _PaddingLayout>, ModifiedContent<EffortButton, _PaddingLayout>, EffortSectionTitle, ModifiedContent<EffortButton, _PaddingLayout>, ModifiedContent<EffortButton, _PaddingLayout>, ModifiedContent<Divider, _PaddingLayout>, ModifiedContent<EffortButton, _PaddingLayout>, <<opaque return type of View.scenePadding(_:)>>.0)>>, _PaddingLayout>> and conformance ScrollView<A>, &_s7SwiftUI10ScrollViewVyAA15ModifiedContentVyAA6VStackVyAA05TupleD0VyAEyAA4TextVAA14_PaddingLayoutVG_07WorkoutB018EffortSectionTitle33_06FC76556B25F7BE4859D6C5967358FALLVAEyAO0M6ButtonVAMGA2ur3ur2ur2uEyAA7DividerVAMGAuA0D0PAAE05sceneJ0yQrAA4EdgeO3SetVFQOyAN_Qo_tGGAMGGMd);
    lazy protocol witness table accessor for type VStack<TupleView<(ModifiedContent<Text, _PaddingLayout>, EffortSectionTitle, ModifiedContent<EffortButton, _PaddingLayout>, ModifiedContent<EffortButton, _PaddingLayout>, ModifiedContent<EffortButton, _PaddingLayout>, EffortSectionTitle, ModifiedContent<EffortButton, _PaddingLayout>, ModifiedContent<EffortButton, _PaddingLayout>, ModifiedContent<EffortButton, _PaddingLayout>, EffortSectionTitle, ModifiedContent<EffortButton, _PaddingLayout>, ModifiedContent<EffortButton, _PaddingLayout>, EffortSectionTitle, ModifiedContent<EffortButton, _PaddingLayout>, ModifiedContent<EffortButton, _PaddingLayout>, ModifiedContent<Divider, _PaddingLayout>, ModifiedContent<EffortButton, _PaddingLayout>, <<opaque return type of View.scenePadding(_:)>>.0)>> and conformance VStack<A>(&lazy protocol witness table cache variable for type _BackgroundModifier<ModifiedContent<LinearGradient, _SafeAreaRegionsIgnoringLayout>> and conformance _BackgroundModifier<A>, &_s7SwiftUI19_BackgroundModifierVyAA15ModifiedContentVyAA14LinearGradientVAA30_SafeAreaRegionsIgnoringLayoutVGGMd);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<ScrollView<ModifiedContent<VStack<TupleView<(ModifiedContent<Text, _PaddingLayout>, EffortSectionTitle, ModifiedContent<EffortButton, _PaddingLayout>, ModifiedContent<EffortButton, _PaddingLayout>, ModifiedContent<EffortButton, _PaddingLayout>, EffortSectionTitle, ModifiedContent<EffortButton, _PaddingLayout>, ModifiedContent<EffortButton, _PaddingLayout>, ModifiedContent<EffortButton, _PaddingLayout>, EffortSectionTitle, ModifiedContent<EffortButton, _PaddingLayout>, ModifiedContent<EffortButton, _PaddingLayout>, EffortSectionTitle, ModifiedContent<EffortButton, _PaddingLayout>, ModifiedContent<EffortButton, _PaddingLayout>, ModifiedContent<Divider, _PaddingLayout>, ModifiedContent<EffortButton, _PaddingLayout>, <<opaque return type of View.scenePadding(_:)>>.0)>>, _PaddingLayout>>, _BackgroundModifier<ModifiedContent<LinearGradient, _SafeAreaRegionsIgnoringLayout>>> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

uint64_t outlined init with copy of EffortSectionTitle(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t outlined init with take of EffortButton(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for EffortButton(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t partial apply for closure #1 in EffortButton.body.getter()
{
  type metadata accessor for EffortButton(0);

  return closure #1 in EffortButton.body.getter();
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<HStack<TupleView<(ModifiedContent<ModifiedContent<Group<_ConditionalContent<ModifiedContent<ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Image.Scale>>, AccessibilityAttachmentModifier>, _FlipForRTLEffect>, ModifiedContent<Image, AccessibilityAttachmentModifier>>>, _EnvironmentKeyWritingModifier<Image.Scale>>, _EnvironmentKeyWritingModifier<SymbolRenderingMode?>>, ModifiedContent<Text, _PaddingLayout>, Spacer, _ConditionalContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Font?>>, ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Font?>>, _HiddenModifier>>)>>, _PaddingLayout>, _EnvironmentKeyWritingModifier<Font?>>, _FlexFrameLayout>, _FlexFrameLayout>, _BackgroundStyleModifier<Color>>, _ClipEffect<RoundedCorner>>, _ContentShapeKindModifier<RoundedCorner>> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<HStack<TupleView<(ModifiedContent<ModifiedContent<Group<_ConditionalContent<ModifiedContent<ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Image.Scale>>, AccessibilityAttachmentModifier>, _FlipForRTLEffect>, ModifiedContent<Image, AccessibilityAttachmentModifier>>>, _EnvironmentKeyWritingModifier<Image.Scale>>, _EnvironmentKeyWritingModifier<SymbolRenderingMode?>>, ModifiedContent<Text, _PaddingLayout>, Spacer, _ConditionalContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Font?>>, ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Font?>>, _HiddenModifier>>)>>, _PaddingLayout>, _EnvironmentKeyWritingModifier<Font?>>, _FlexFrameLayout>, _FlexFrameLayout>, _BackgroundStyleModifier<Color>>, _ClipEffect<RoundedCorner>>, _ContentShapeKindModifier<RoundedCorner>> and conformance <> ModifiedContent<A,;
  if (!lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<HStack<TupleView<(ModifiedContent<ModifiedContent<Group<_ConditionalContent<ModifiedContent<ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Image.Scale>>, AccessibilityAttachmentModifier>, _FlipForRTLEffect>, ModifiedContent<Image, AccessibilityAttachmentModifier>>>, _EnvironmentKeyWritingModifier<Image.Scale>>, _EnvironmentKeyWritingModifier<SymbolRenderingMode?>>, ModifiedContent<Text, _PaddingLayout>, Spacer, _ConditionalContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Font?>>, ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Font?>>, _HiddenModifier>>)>>, _PaddingLayout>, _EnvironmentKeyWritingModifier<Font?>>, _FlexFrameLayout>, _FlexFrameLayout>, _BackgroundStyleModifier<Color>>, _ClipEffect<RoundedCorner>>, _ContentShapeKindModifier<RoundedCorner>> and conformance <> ModifiedContent<A,)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyACyACyACyACyACyACyAA6HStackVyAA9TupleViewVyACyACyAA5GroupVyAA012_ConditionalD0VyACyACyACyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAM5ScaleOGGAA023AccessibilityAttachmentN0VGAA17_FlipForRTLEffectVGACyAmUGGGARGAOyAA19SymbolRenderingModeVSgGG_ACyAA4TextVAA14_PaddingLayoutVGAA6SpacerVAKyACyAmOyAA4FontVSgGGACyA18_AA07_HiddenN0VGGtGGA10_GA17_GAA010_FlexFrameZ0VGA28_GAA016_BackgroundStyleN0VyAA5ColorVGGAA11_ClipEffectVy07WorkoutB013RoundedCornerVGGAA01_d9ShapeKindN0VyA41_GGMd);
    lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<HStack<TupleView<(ModifiedContent<ModifiedContent<Group<_ConditionalContent<ModifiedContent<ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Image.Scale>>, AccessibilityAttachmentModifier>, _FlipForRTLEffect>, ModifiedContent<Image, AccessibilityAttachmentModifier>>>, _EnvironmentKeyWritingModifier<Image.Scale>>, _EnvironmentKeyWritingModifier<SymbolRenderingMode?>>, ModifiedContent<Text, _PaddingLayout>, Spacer, _ConditionalContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Font?>>, ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Font?>>, _HiddenModifier>>)>>, _PaddingLayout>, _EnvironmentKeyWritingModifier<Font?>>, _FlexFrameLayout>, _FlexFrameLayout>, _BackgroundStyleModifier<Color>>, _ClipEffect<RoundedCorner>> and conformance <> ModifiedContent<A, B>();
    lazy protocol witness table accessor for type VStack<TupleView<(ModifiedContent<Text, _PaddingLayout>, EffortSectionTitle, ModifiedContent<EffortButton, _PaddingLayout>, ModifiedContent<EffortButton, _PaddingLayout>, ModifiedContent<EffortButton, _PaddingLayout>, EffortSectionTitle, ModifiedContent<EffortButton, _PaddingLayout>, ModifiedContent<EffortButton, _PaddingLayout>, ModifiedContent<EffortButton, _PaddingLayout>, EffortSectionTitle, ModifiedContent<EffortButton, _PaddingLayout>, ModifiedContent<EffortButton, _PaddingLayout>, EffortSectionTitle, ModifiedContent<EffortButton, _PaddingLayout>, ModifiedContent<EffortButton, _PaddingLayout>, ModifiedContent<Divider, _PaddingLayout>, ModifiedContent<EffortButton, _PaddingLayout>, <<opaque return type of View.scenePadding(_:)>>.0)>> and conformance VStack<A>(&lazy protocol witness table cache variable for type _ContentShapeKindModifier<RoundedCorner> and conformance _ContentShapeKindModifier<A>, &_s7SwiftUI25_ContentShapeKindModifierVy07WorkoutB013RoundedCornerVGMd);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<HStack<TupleView<(ModifiedContent<ModifiedContent<Group<_ConditionalContent<ModifiedContent<ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Image.Scale>>, AccessibilityAttachmentModifier>, _FlipForRTLEffect>, ModifiedContent<Image, AccessibilityAttachmentModifier>>>, _EnvironmentKeyWritingModifier<Image.Scale>>, _EnvironmentKeyWritingModifier<SymbolRenderingMode?>>, ModifiedContent<Text, _PaddingLayout>, Spacer, _ConditionalContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Font?>>, ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Font?>>, _HiddenModifier>>)>>, _PaddingLayout>, _EnvironmentKeyWritingModifier<Font?>>, _FlexFrameLayout>, _FlexFrameLayout>, _BackgroundStyleModifier<Color>>, _ClipEffect<RoundedCorner>>, _ContentShapeKindModifier<RoundedCorner>> and conformance <> ModifiedContent<A,);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<HStack<TupleView<(ModifiedContent<ModifiedContent<Group<_ConditionalContent<ModifiedContent<ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Image.Scale>>, AccessibilityAttachmentModifier>, _FlipForRTLEffect>, ModifiedContent<Image, AccessibilityAttachmentModifier>>>, _EnvironmentKeyWritingModifier<Image.Scale>>, _EnvironmentKeyWritingModifier<SymbolRenderingMode?>>, ModifiedContent<Text, _PaddingLayout>, Spacer, _ConditionalContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Font?>>, ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Font?>>, _HiddenModifier>>)>>, _PaddingLayout>, _EnvironmentKeyWritingModifier<Font?>>, _FlexFrameLayout>, _FlexFrameLayout>, _BackgroundStyleModifier<Color>>, _ClipEffect<RoundedCorner>> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<HStack<TupleView<(ModifiedContent<ModifiedContent<Group<_ConditionalContent<ModifiedContent<ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Image.Scale>>, AccessibilityAttachmentModifier>, _FlipForRTLEffect>, ModifiedContent<Image, AccessibilityAttachmentModifier>>>, _EnvironmentKeyWritingModifier<Image.Scale>>, _EnvironmentKeyWritingModifier<SymbolRenderingMode?>>, ModifiedContent<Text, _PaddingLayout>, Spacer, _ConditionalContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Font?>>, ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Font?>>, _HiddenModifier>>)>>, _PaddingLayout>, _EnvironmentKeyWritingModifier<Font?>>, _FlexFrameLayout>, _FlexFrameLayout>, _BackgroundStyleModifier<Color>>, _ClipEffect<RoundedCorner>> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<HStack<TupleView<(ModifiedContent<ModifiedContent<Group<_ConditionalContent<ModifiedContent<ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Image.Scale>>, AccessibilityAttachmentModifier>, _FlipForRTLEffect>, ModifiedContent<Image, AccessibilityAttachmentModifier>>>, _EnvironmentKeyWritingModifier<Image.Scale>>, _EnvironmentKeyWritingModifier<SymbolRenderingMode?>>, ModifiedContent<Text, _PaddingLayout>, Spacer, _ConditionalContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Font?>>, ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Font?>>, _HiddenModifier>>)>>, _PaddingLayout>, _EnvironmentKeyWritingModifier<Font?>>, _FlexFrameLayout>, _FlexFrameLayout>, _BackgroundStyleModifier<Color>>, _ClipEffect<RoundedCorner>> and conformance <> ModifiedContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyACyACyACyACyACyAA6HStackVyAA9TupleViewVyACyACyAA5GroupVyAA012_ConditionalD0VyACyACyACyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAM5ScaleOGGAA023AccessibilityAttachmentN0VGAA17_FlipForRTLEffectVGACyAmUGGGARGAOyAA19SymbolRenderingModeVSgGG_ACyAA4TextVAA14_PaddingLayoutVGAA6SpacerVAKyACyAmOyAA4FontVSgGGACyA18_AA07_HiddenN0VGGtGGA10_GA17_GAA010_FlexFrameZ0VGA28_GAA016_BackgroundStyleN0VyAA5ColorVGGAA11_ClipEffectVy07WorkoutB013RoundedCornerVGGMd);
    lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<HStack<TupleView<(ModifiedContent<ModifiedContent<Group<_ConditionalContent<ModifiedContent<ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Image.Scale>>, AccessibilityAttachmentModifier>, _FlipForRTLEffect>, ModifiedContent<Image, AccessibilityAttachmentModifier>>>, _EnvironmentKeyWritingModifier<Image.Scale>>, _EnvironmentKeyWritingModifier<SymbolRenderingMode?>>, ModifiedContent<Text, _PaddingLayout>, Spacer, _ConditionalContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Font?>>, ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Font?>>, _HiddenModifier>>)>>, _PaddingLayout>, _EnvironmentKeyWritingModifier<Font?>>, _FlexFrameLayout>, _FlexFrameLayout>, _BackgroundStyleModifier<Color>> and conformance <> ModifiedContent<A, B>();
    lazy protocol witness table accessor for type VStack<TupleView<(ModifiedContent<Text, _PaddingLayout>, EffortSectionTitle, ModifiedContent<EffortButton, _PaddingLayout>, ModifiedContent<EffortButton, _PaddingLayout>, ModifiedContent<EffortButton, _PaddingLayout>, EffortSectionTitle, ModifiedContent<EffortButton, _PaddingLayout>, ModifiedContent<EffortButton, _PaddingLayout>, ModifiedContent<EffortButton, _PaddingLayout>, EffortSectionTitle, ModifiedContent<EffortButton, _PaddingLayout>, ModifiedContent<EffortButton, _PaddingLayout>, EffortSectionTitle, ModifiedContent<EffortButton, _PaddingLayout>, ModifiedContent<EffortButton, _PaddingLayout>, ModifiedContent<Divider, _PaddingLayout>, ModifiedContent<EffortButton, _PaddingLayout>, <<opaque return type of View.scenePadding(_:)>>.0)>> and conformance VStack<A>(&lazy protocol witness table cache variable for type _ClipEffect<RoundedCorner> and conformance _ClipEffect<A>, &_s7SwiftUI11_ClipEffectVy07WorkoutB013RoundedCornerVGMd);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<HStack<TupleView<(ModifiedContent<ModifiedContent<Group<_ConditionalContent<ModifiedContent<ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Image.Scale>>, AccessibilityAttachmentModifier>, _FlipForRTLEffect>, ModifiedContent<Image, AccessibilityAttachmentModifier>>>, _EnvironmentKeyWritingModifier<Image.Scale>>, _EnvironmentKeyWritingModifier<SymbolRenderingMode?>>, ModifiedContent<Text, _PaddingLayout>, Spacer, _ConditionalContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Font?>>, ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Font?>>, _HiddenModifier>>)>>, _PaddingLayout>, _EnvironmentKeyWritingModifier<Font?>>, _FlexFrameLayout>, _FlexFrameLayout>, _BackgroundStyleModifier<Color>>, _ClipEffect<RoundedCorner>> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<HStack<TupleView<(ModifiedContent<ModifiedContent<Group<_ConditionalContent<ModifiedContent<ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Image.Scale>>, AccessibilityAttachmentModifier>, _FlipForRTLEffect>, ModifiedContent<Image, AccessibilityAttachmentModifier>>>, _EnvironmentKeyWritingModifier<Image.Scale>>, _EnvironmentKeyWritingModifier<SymbolRenderingMode?>>, ModifiedContent<Text, _PaddingLayout>, Spacer, _ConditionalContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Font?>>, ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Font?>>, _HiddenModifier>>)>>, _PaddingLayout>, _EnvironmentKeyWritingModifier<Font?>>, _FlexFrameLayout>, _FlexFrameLayout>, _BackgroundStyleModifier<Color>> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<HStack<TupleView<(ModifiedContent<ModifiedContent<Group<_ConditionalContent<ModifiedContent<ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Image.Scale>>, AccessibilityAttachmentModifier>, _FlipForRTLEffect>, ModifiedContent<Image, AccessibilityAttachmentModifier>>>, _EnvironmentKeyWritingModifier<Image.Scale>>, _EnvironmentKeyWritingModifier<SymbolRenderingMode?>>, ModifiedContent<Text, _PaddingLayout>, Spacer, _ConditionalContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Font?>>, ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Font?>>, _HiddenModifier>>)>>, _PaddingLayout>, _EnvironmentKeyWritingModifier<Font?>>, _FlexFrameLayout>, _FlexFrameLayout>, _BackgroundStyleModifier<Color>> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<HStack<TupleView<(ModifiedContent<ModifiedContent<Group<_ConditionalContent<ModifiedContent<ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Image.Scale>>, AccessibilityAttachmentModifier>, _FlipForRTLEffect>, ModifiedContent<Image, AccessibilityAttachmentModifier>>>, _EnvironmentKeyWritingModifier<Image.Scale>>, _EnvironmentKeyWritingModifier<SymbolRenderingMode?>>, ModifiedContent<Text, _PaddingLayout>, Spacer, _ConditionalContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Font?>>, ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Font?>>, _HiddenModifier>>)>>, _PaddingLayout>, _EnvironmentKeyWritingModifier<Font?>>, _FlexFrameLayout>, _FlexFrameLayout>, _BackgroundStyleModifier<Color>> and conformance <> ModifiedContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyACyACyACyACyAA6HStackVyAA9TupleViewVyACyACyAA5GroupVyAA012_ConditionalD0VyACyACyACyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAM5ScaleOGGAA023AccessibilityAttachmentN0VGAA17_FlipForRTLEffectVGACyAmUGGGARGAOyAA19SymbolRenderingModeVSgGG_ACyAA4TextVAA14_PaddingLayoutVGAA6SpacerVAKyACyAmOyAA4FontVSgGGACyA18_AA07_HiddenN0VGGtGGA10_GA17_GAA010_FlexFrameZ0VGA28_GAA016_BackgroundStyleN0VyAA5ColorVGGMd);
    lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<ModifiedContent<HStack<TupleView<(ModifiedContent<ModifiedContent<Group<_ConditionalContent<ModifiedContent<ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Image.Scale>>, AccessibilityAttachmentModifier>, _FlipForRTLEffect>, ModifiedContent<Image, AccessibilityAttachmentModifier>>>, _EnvironmentKeyWritingModifier<Image.Scale>>, _EnvironmentKeyWritingModifier<SymbolRenderingMode?>>, ModifiedContent<Text, _PaddingLayout>, Spacer, _ConditionalContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Font?>>, ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Font?>>, _HiddenModifier>>)>>, _PaddingLayout>, _EnvironmentKeyWritingModifier<Font?>>, _FlexFrameLayout> and conformance <> ModifiedContent<A, B>( &lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<HStack<TupleView<(ModifiedContent<ModifiedContent<Group<_ConditionalContent<ModifiedContent<ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Image.Scale>>, AccessibilityAttachmentModifier>, _FlipForRTLEffect>, ModifiedContent<Image, AccessibilityAttachmentModifier>>>, _EnvironmentKeyWritingModifier<Image.Scale>>, _EnvironmentKeyWritingModifier<SymbolRenderingMode?>>, ModifiedContent<Text, _PaddingLayout>, Spacer, _ConditionalContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Font?>>, ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Font?>>, _HiddenModifier>>)>>, _PaddingLayout>, _EnvironmentKeyWritingModifier<Font?>>, _FlexFrameLayout>, _FlexFrameLayout> and conformance <> ModifiedContent<A, B>,  &_s7SwiftUI15ModifiedContentVyACyACyACyAA6HStackVyAA9TupleViewVyACyACyAA5GroupVyAA012_ConditionalD0VyACyACyACyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAM5ScaleOGGAA023AccessibilityAttachmentN0VGAA17_FlipForRTLEffectVGACyAmUGGGARGAOyAA19SymbolRenderingModeVSgGG_ACyAA4TextVAA14_PaddingLayoutVGAA6SpacerVAKyACyAmOyAA4FontVSgGGACyA18_AA07_HiddenN0VGGtGGA10_GA17_GAA010_FlexFrameZ0VGA28_GMd,  &_s7SwiftUI15ModifiedContentVyACyACyACyAA6HStackVyAA9TupleViewVyACyACyAA5GroupVyAA012_ConditionalD0VyACyACyACyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAM5ScaleOGGAA023AccessibilityAttachmentN0VGAA17_FlipForRTLEffectVGACyAmUGGGARGAOyAA19SymbolRenderingModeVSgGG_ACyAA4TextVAA14_PaddingLayoutVGAA6SpacerVAKyACyAmOyAA4FontVSgGGACyA18_AA07_HiddenN0VGGtGGA10_GA17_GAA010_FlexFrameZ0VGA28_GMR,  lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<ModifiedContent<HStack<TupleView<(ModifiedContent<ModifiedContent<Group<_ConditionalContent<ModifiedContent<ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Image.Scale>>, AccessibilityAttachmentModifier>, _FlipForRTLEffect>, ModifiedContent<Image, AccessibilityAttachmentModifier>>>, _EnvironmentKeyWritingModifier<Image.Scale>>, _EnvironmentKeyWritingModifier<SymbolRenderingMode?>>, ModifiedContent<Text, _PaddingLayout>, Spacer, _ConditionalContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Font?>>, ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Font?>>, _HiddenModifier>>)>>, _PaddingLayout>, _EnvironmentKeyWritingModifier<Font?>>, _FlexFrameLayout> and conformance <> ModifiedContent<A, B>);
    lazy protocol witness table accessor for type VStack<TupleView<(ModifiedContent<Text, _PaddingLayout>, EffortSectionTitle, ModifiedContent<EffortButton, _PaddingLayout>, ModifiedContent<EffortButton, _PaddingLayout>, ModifiedContent<EffortButton, _PaddingLayout>, EffortSectionTitle, ModifiedContent<EffortButton, _PaddingLayout>, ModifiedContent<EffortButton, _PaddingLayout>, ModifiedContent<EffortButton, _PaddingLayout>, EffortSectionTitle, ModifiedContent<EffortButton, _PaddingLayout>, ModifiedContent<EffortButton, _PaddingLayout>, EffortSectionTitle, ModifiedContent<EffortButton, _PaddingLayout>, ModifiedContent<EffortButton, _PaddingLayout>, ModifiedContent<Divider, _PaddingLayout>, ModifiedContent<EffortButton, _PaddingLayout>, <<opaque return type of View.scenePadding(_:)>>.0)>> and conformance VStack<A>(&lazy protocol witness table cache variable for type _BackgroundStyleModifier<Color> and conformance _BackgroundStyleModifier<A>, &_s7SwiftUI24_BackgroundStyleModifierVyAA5ColorVGMd);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<HStack<TupleView<(ModifiedContent<ModifiedContent<Group<_ConditionalContent<ModifiedContent<ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Image.Scale>>, AccessibilityAttachmentModifier>, _FlipForRTLEffect>, ModifiedContent<Image, AccessibilityAttachmentModifier>>>, _EnvironmentKeyWritingModifier<Image.Scale>>, _EnvironmentKeyWritingModifier<SymbolRenderingMode?>>, ModifiedContent<Text, _PaddingLayout>, Spacer, _ConditionalContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Font?>>, ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Font?>>, _HiddenModifier>>)>>, _PaddingLayout>, _EnvironmentKeyWritingModifier<Font?>>, _FlexFrameLayout>, _FlexFrameLayout>, _BackgroundStyleModifier<Color>> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

uint64_t lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<ModifiedContent<HStack<TupleView<(ModifiedContent<ModifiedContent<Group<_ConditionalContent<ModifiedContent<ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Image.Scale>>, AccessibilityAttachmentModifier>, _FlipForRTLEffect>, ModifiedContent<Image, AccessibilityAttachmentModifier>>>, _EnvironmentKeyWritingModifier<Image.Scale>>, _EnvironmentKeyWritingModifier<SymbolRenderingMode?>>, ModifiedContent<Text, _PaddingLayout>, Spacer, _ConditionalContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Font?>>, ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Font?>>, _HiddenModifier>>)>>, _PaddingLayout>, _EnvironmentKeyWritingModifier<Font?>>, _FlexFrameLayout> and conformance <> ModifiedContent<A, B>(unint64_t *a1, uint64_t *a2, uint64_t a3, void (*a4)(void))
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

unint64_t lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<HStack<TupleView<(ModifiedContent<ModifiedContent<Group<_ConditionalContent<ModifiedContent<ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Image.Scale>>, AccessibilityAttachmentModifier>, _FlipForRTLEffect>, ModifiedContent<Image, AccessibilityAttachmentModifier>>>, _EnvironmentKeyWritingModifier<Image.Scale>>, _EnvironmentKeyWritingModifier<SymbolRenderingMode?>>, ModifiedContent<Text, _PaddingLayout>, Spacer, _ConditionalContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Font?>>, ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Font?>>, _HiddenModifier>>)>>, _PaddingLayout>, _EnvironmentKeyWritingModifier<Font?>> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<HStack<TupleView<(ModifiedContent<ModifiedContent<Group<_ConditionalContent<ModifiedContent<ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Image.Scale>>, AccessibilityAttachmentModifier>, _FlipForRTLEffect>, ModifiedContent<Image, AccessibilityAttachmentModifier>>>, _EnvironmentKeyWritingModifier<Image.Scale>>, _EnvironmentKeyWritingModifier<SymbolRenderingMode?>>, ModifiedContent<Text, _PaddingLayout>, Spacer, _ConditionalContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Font?>>, ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Font?>>, _HiddenModifier>>)>>, _PaddingLayout>, _EnvironmentKeyWritingModifier<Font?>> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<HStack<TupleView<(ModifiedContent<ModifiedContent<Group<_ConditionalContent<ModifiedContent<ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Image.Scale>>, AccessibilityAttachmentModifier>, _FlipForRTLEffect>, ModifiedContent<Image, AccessibilityAttachmentModifier>>>, _EnvironmentKeyWritingModifier<Image.Scale>>, _EnvironmentKeyWritingModifier<SymbolRenderingMode?>>, ModifiedContent<Text, _PaddingLayout>, Spacer, _ConditionalContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Font?>>, ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Font?>>, _HiddenModifier>>)>>, _PaddingLayout>, _EnvironmentKeyWritingModifier<Font?>> and conformance <> ModifiedContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyACyAA6HStackVyAA9TupleViewVyACyACyAA5GroupVyAA012_ConditionalD0VyACyACyACyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAM5ScaleOGGAA023AccessibilityAttachmentN0VGAA17_FlipForRTLEffectVGACyAmUGGGARGAOyAA19SymbolRenderingModeVSgGG_ACyAA4TextVAA14_PaddingLayoutVGAA6SpacerVAKyACyAmOyAA4FontVSgGGACyA18_AA07_HiddenN0VGGtGGA10_GA17_GMd);
    lazy protocol witness table accessor for type ModifiedContent<HStack<TupleView<(ModifiedContent<ModifiedContent<Group<_ConditionalContent<ModifiedContent<ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Image.Scale>>, AccessibilityAttachmentModifier>, _FlipForRTLEffect>, ModifiedContent<Image, AccessibilityAttachmentModifier>>>, _EnvironmentKeyWritingModifier<Image.Scale>>, _EnvironmentKeyWritingModifier<SymbolRenderingMode?>>, ModifiedContent<Text, _PaddingLayout>, Spacer, _ConditionalContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Font?>>, ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Font?>>, _HiddenModifier>>)>>, _PaddingLayout> and conformance <> ModifiedContent<A, B>();
    lazy protocol witness table accessor for type VStack<TupleView<(ModifiedContent<Text, _PaddingLayout>, EffortSectionTitle, ModifiedContent<EffortButton, _PaddingLayout>, ModifiedContent<EffortButton, _PaddingLayout>, ModifiedContent<EffortButton, _PaddingLayout>, EffortSectionTitle, ModifiedContent<EffortButton, _PaddingLayout>, ModifiedContent<EffortButton, _PaddingLayout>, ModifiedContent<EffortButton, _PaddingLayout>, EffortSectionTitle, ModifiedContent<EffortButton, _PaddingLayout>, ModifiedContent<EffortButton, _PaddingLayout>, EffortSectionTitle, ModifiedContent<EffortButton, _PaddingLayout>, ModifiedContent<EffortButton, _PaddingLayout>, ModifiedContent<Divider, _PaddingLayout>, ModifiedContent<EffortButton, _PaddingLayout>, <<opaque return type of View.scenePadding(_:)>>.0)>> and conformance VStack<A>(&lazy protocol witness table cache variable for type _EnvironmentKeyWritingModifier<Font?> and conformance _EnvironmentKeyWritingModifier<A>, &_s7SwiftUI30_EnvironmentKeyWritingModifierVyAA4FontVSgGMd);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<HStack<TupleView<(ModifiedContent<ModifiedContent<Group<_ConditionalContent<ModifiedContent<ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Image.Scale>>, AccessibilityAttachmentModifier>, _FlipForRTLEffect>, ModifiedContent<Image, AccessibilityAttachmentModifier>>>, _EnvironmentKeyWritingModifier<Image.Scale>>, _EnvironmentKeyWritingModifier<SymbolRenderingMode?>>, ModifiedContent<Text, _PaddingLayout>, Spacer, _ConditionalContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Font?>>, ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Font?>>, _HiddenModifier>>)>>, _PaddingLayout>, _EnvironmentKeyWritingModifier<Font?>> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<HStack<TupleView<(ModifiedContent<ModifiedContent<Group<_ConditionalContent<ModifiedContent<ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Image.Scale>>, AccessibilityAttachmentModifier>, _FlipForRTLEffect>, ModifiedContent<Image, AccessibilityAttachmentModifier>>>, _EnvironmentKeyWritingModifier<Image.Scale>>, _EnvironmentKeyWritingModifier<SymbolRenderingMode?>>, ModifiedContent<Text, _PaddingLayout>, Spacer, _ConditionalContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Font?>>, ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Font?>>, _HiddenModifier>>)>>, _PaddingLayout> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<HStack<TupleView<(ModifiedContent<ModifiedContent<Group<_ConditionalContent<ModifiedContent<ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Image.Scale>>, AccessibilityAttachmentModifier>, _FlipForRTLEffect>, ModifiedContent<Image, AccessibilityAttachmentModifier>>>, _EnvironmentKeyWritingModifier<Image.Scale>>, _EnvironmentKeyWritingModifier<SymbolRenderingMode?>>, ModifiedContent<Text, _PaddingLayout>, Spacer, _ConditionalContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Font?>>, ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Font?>>, _HiddenModifier>>)>>, _PaddingLayout> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<HStack<TupleView<(ModifiedContent<ModifiedContent<Group<_ConditionalContent<ModifiedContent<ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Image.Scale>>, AccessibilityAttachmentModifier>, _FlipForRTLEffect>, ModifiedContent<Image, AccessibilityAttachmentModifier>>>, _EnvironmentKeyWritingModifier<Image.Scale>>, _EnvironmentKeyWritingModifier<SymbolRenderingMode?>>, ModifiedContent<Text, _PaddingLayout>, Spacer, _ConditionalContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Font?>>, ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Font?>>, _HiddenModifier>>)>>, _PaddingLayout> and conformance <> ModifiedContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyAA6HStackVyAA9TupleViewVyACyACyAA5GroupVyAA012_ConditionalD0VyACyACyACyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAM5ScaleOGGAA023AccessibilityAttachmentN0VGAA17_FlipForRTLEffectVGACyAmUGGGARGAOyAA19SymbolRenderingModeVSgGG_ACyAA4TextVAA14_PaddingLayoutVGAA6SpacerVAKyACyAmOyAA4FontVSgGGACyA18_AA07_HiddenN0VGGtGGA10_GMd);
    lazy protocol witness table accessor for type VStack<TupleView<(ModifiedContent<Text, _PaddingLayout>, EffortSectionTitle, ModifiedContent<EffortButton, _PaddingLayout>, ModifiedContent<EffortButton, _PaddingLayout>, ModifiedContent<EffortButton, _PaddingLayout>, EffortSectionTitle, ModifiedContent<EffortButton, _PaddingLayout>, ModifiedContent<EffortButton, _PaddingLayout>, ModifiedContent<EffortButton, _PaddingLayout>, EffortSectionTitle, ModifiedContent<EffortButton, _PaddingLayout>, ModifiedContent<EffortButton, _PaddingLayout>, EffortSectionTitle, ModifiedContent<EffortButton, _PaddingLayout>, ModifiedContent<EffortButton, _PaddingLayout>, ModifiedContent<Divider, _PaddingLayout>, ModifiedContent<EffortButton, _PaddingLayout>, <<opaque return type of View.scenePadding(_:)>>.0)>> and conformance VStack<A>(&lazy protocol witness table cache variable for type HStack<TupleView<(ModifiedContent<ModifiedContent<Group<_ConditionalContent<ModifiedContent<ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Image.Scale>>, AccessibilityAttachmentModifier>, _FlipForRTLEffect>, ModifiedContent<Image, AccessibilityAttachmentModifier>>>, _EnvironmentKeyWritingModifier<Image.Scale>>, _EnvironmentKeyWritingModifier<SymbolRenderingMode?>>, ModifiedContent<Text, _PaddingLayout>, Spacer, _ConditionalContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Font?>>, ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Font?>>, _HiddenModifier>>)>> and conformance HStack<A>, &_s7SwiftUI6HStackVyAA9TupleViewVyAA15ModifiedContentVyAGyAA5GroupVyAA012_ConditionalG0VyAGyAGyAGyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAM5ScaleOGGAA023AccessibilityAttachmentN0VGAA17_FlipForRTLEffectVGAGyAmUGGGARGAOyAA19SymbolRenderingModeVSgGG_AGyAA4TextVAA14_PaddingLayoutVGAA6SpacerVAKyAGyAmOyAA4FontVSgGGAGyA18_AA07_HiddenN0VGGtGGMd);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<HStack<TupleView<(ModifiedContent<ModifiedContent<Group<_ConditionalContent<ModifiedContent<ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Image.Scale>>, AccessibilityAttachmentModifier>, _FlipForRTLEffect>, ModifiedContent<Image, AccessibilityAttachmentModifier>>>, _EnvironmentKeyWritingModifier<Image.Scale>>, _EnvironmentKeyWritingModifier<SymbolRenderingMode?>>, ModifiedContent<Text, _PaddingLayout>, Spacer, _ConditionalContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Font?>>, ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Font?>>, _HiddenModifier>>)>>, _PaddingLayout> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

uint64_t outlined init with take of ModifiedContent<ModifiedContent<HStack<TupleView<(ModifiedContent<ModifiedContent<Group<_ConditionalContent<ModifiedContent<ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Image.Scale>>, AccessibilityAttachmentModifier>, _FlipForRTLEffect>, ModifiedContent<Image, AccessibilityAttachmentModifier>>>, _EnvironmentKeyWritingModifier<Image.Scale>>, _EnvironmentKeyWritingModifier<SymbolRenderingMode?>>, ModifiedContent<Text, _PaddingLayout>, Spacer, _ConditionalContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Font?>>, ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Font?>>, _HiddenModifier>>)>>, _PaddingLayout>, _EnvironmentKeyWritingModifier<Font?>>(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(a3);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Font?>>, _HiddenModifier> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Font?>>, _HiddenModifier> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Font?>>, _HiddenModifier> and conformance <> ModifiedContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyACyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGAA07_HiddenI0VGMd);
    lazy protocol witness table accessor for type ModifiedContent<Image, _EnvironmentKeyWritingModifier<Font?>> and conformance <> ModifiedContent<A, B>();
    lazy protocol witness table accessor for type _HiddenModifier and conformance _HiddenModifier();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Font?>>, _HiddenModifier> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

uint64_t outlined copy of _ConditionalContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Font?>>, ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Font?>>, _HiddenModifier>>.Storage()
{
}

uint64_t outlined consume of _ConditionalContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Font?>>, ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Font?>>, _HiddenModifier>>.Storage()
{
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Image.Scale>>, AccessibilityAttachmentModifier>, _FlipForRTLEffect> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Image.Scale>>, AccessibilityAttachmentModifier>, _FlipForRTLEffect> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Image.Scale>>, AccessibilityAttachmentModifier>, _FlipForRTLEffect> and conformance <> ModifiedContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyACyACyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAE5ScaleOGGAA023AccessibilityAttachmentI0VGAA17_FlipForRTLEffectVGMd);
    lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Image.Scale>>, AccessibilityAttachmentModifier> and conformance <> ModifiedContent<A, B>();
    lazy protocol witness table accessor for type _FlipForRTLEffect and conformance _FlipForRTLEffect();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Image.Scale>>, AccessibilityAttachmentModifier>, _FlipForRTLEffect> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Image.Scale>>, AccessibilityAttachmentModifier> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Image.Scale>>, AccessibilityAttachmentModifier> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Image.Scale>>, AccessibilityAttachmentModifier> and conformance <> ModifiedContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyACyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAE5ScaleOGGAA023AccessibilityAttachmentI0VGMd);
    lazy protocol witness table accessor for type ModifiedContent<Image, _EnvironmentKeyWritingModifier<Image.Scale>> and conformance <> ModifiedContent<A, B>();
    _s7SwiftUI16PlainButtonStyleVAcA09PrimitivedE0AAWlTm_4(&lazy protocol witness table cache variable for type AccessibilityAttachmentModifier and conformance AccessibilityAttachmentModifier, MEMORY[0x277CDE470]);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Image.Scale>>, AccessibilityAttachmentModifier> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

uint64_t _s7SwiftUI16PlainButtonStyleVAcA09PrimitivedE0AAWlTm_4(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t outlined init with copy of _BackgroundModifier<ModifiedContent<LinearGradient, _SafeAreaRegionsIgnoringLayout>>(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(a3);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t outlined destroy of _BackgroundModifier<ModifiedContent<LinearGradient, _SafeAreaRegionsIgnoringLayout>>(uint64_t a1, uint64_t *a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(a2);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t lazy protocol witness table accessor for type Group<TupleView<(ModifiedContent<ModifiedContent<Text, _PaddingLayout>, AccessibilityAttachmentModifier>, ModifiedContent<ModifiedContent<Text, _PaddingLayout>, _ForegroundStyleModifier<Color>>)>> and conformance <A> Group<A>()
{
  result = lazy protocol witness table cache variable for type Group<TupleView<(ModifiedContent<ModifiedContent<Text, _PaddingLayout>, AccessibilityAttachmentModifier>, ModifiedContent<ModifiedContent<Text, _PaddingLayout>, _ForegroundStyleModifier<Color>>)>> and conformance <A> Group<A>;
  if (!lazy protocol witness table cache variable for type Group<TupleView<(ModifiedContent<ModifiedContent<Text, _PaddingLayout>, AccessibilityAttachmentModifier>, ModifiedContent<ModifiedContent<Text, _PaddingLayout>, _ForegroundStyleModifier<Color>>)>> and conformance <A> Group<A>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI5GroupVyAA9TupleViewVyAA15ModifiedContentVyAGyAA4TextVAA14_PaddingLayoutVGAA31AccessibilityAttachmentModifierVG_AGyAlA016_ForegroundStyleM0VyAA5ColorVGGtGGMd);
    lazy protocol witness table accessor for type VStack<TupleView<(ModifiedContent<Text, _PaddingLayout>, EffortSectionTitle, ModifiedContent<EffortButton, _PaddingLayout>, ModifiedContent<EffortButton, _PaddingLayout>, ModifiedContent<EffortButton, _PaddingLayout>, EffortSectionTitle, ModifiedContent<EffortButton, _PaddingLayout>, ModifiedContent<EffortButton, _PaddingLayout>, ModifiedContent<EffortButton, _PaddingLayout>, EffortSectionTitle, ModifiedContent<EffortButton, _PaddingLayout>, ModifiedContent<EffortButton, _PaddingLayout>, EffortSectionTitle, ModifiedContent<EffortButton, _PaddingLayout>, ModifiedContent<EffortButton, _PaddingLayout>, ModifiedContent<Divider, _PaddingLayout>, ModifiedContent<EffortButton, _PaddingLayout>, <<opaque return type of View.scenePadding(_:)>>.0)>> and conformance VStack<A>(&lazy protocol witness table cache variable for type TupleView<(ModifiedContent<ModifiedContent<Text, _PaddingLayout>, AccessibilityAttachmentModifier>, ModifiedContent<ModifiedContent<Text, _PaddingLayout>, _ForegroundStyleModifier<Color>>)> and conformance TupleView<A>, &_s7SwiftUI9TupleViewVyAA15ModifiedContentVyAEyAA4TextVAA14_PaddingLayoutVGAA31AccessibilityAttachmentModifierVG_AEyAjA016_ForegroundStyleL0VyAA5ColorVGGtGMd);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Group<TupleView<(ModifiedContent<ModifiedContent<Text, _PaddingLayout>, AccessibilityAttachmentModifier>, ModifiedContent<ModifiedContent<Text, _PaddingLayout>, _ForegroundStyleModifier<Color>>)>> and conformance <A> Group<A>);
  }

  return result;
}

uint64_t lazy protocol witness table accessor for type VStack<TupleView<(ModifiedContent<Text, _PaddingLayout>, EffortSectionTitle, ModifiedContent<EffortButton, _PaddingLayout>, ModifiedContent<EffortButton, _PaddingLayout>, ModifiedContent<EffortButton, _PaddingLayout>, EffortSectionTitle, ModifiedContent<EffortButton, _PaddingLayout>, ModifiedContent<EffortButton, _PaddingLayout>, ModifiedContent<EffortButton, _PaddingLayout>, EffortSectionTitle, ModifiedContent<EffortButton, _PaddingLayout>, ModifiedContent<EffortButton, _PaddingLayout>, EffortSectionTitle, ModifiedContent<EffortButton, _PaddingLayout>, ModifiedContent<EffortButton, _PaddingLayout>, ModifiedContent<Divider, _PaddingLayout>, ModifiedContent<EffortButton, _PaddingLayout>, <<opaque return type of View.scenePadding(_:)>>.0)>> and conformance VStack<A>(unint64_t *a1, uint64_t *a2)
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

uint64_t getEnumTagSinglePayload for IntervalStepAddTypeView(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 56))
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

uint64_t storeEnumTagSinglePayload for IntervalStepAddTypeView(uint64_t result, int a2, int a3)
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
      *(result + 16) = (a2 - 1);
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

uint64_t closure #1 in IntervalStepAddTypeView.body.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v12[1] = a2;
  v3 = type metadata accessor for PlainListStyle();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = v12 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI4ListVys5NeverOAA9TupleViewVyAA7ForEachVySay11WorkoutCore8StepTypeOGSiAA14NavigationLinkVyAA6HStackVyAGyAA6SpacerV_AA15ModifiedContentVyAA4TextVAA30_EnvironmentKeyWritingModifierVyAA0S9AlignmentOGGAStGGAUy0iB008Intervalk10ChooseGoalF0VAYyA4_013ConfigurationM5ModelCSgGGGG_AUyAOyA3_AUyA4_0yk9SelectionF0VA10_GGAA01_tu9TransformW0VySbGGtGGMd);
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = v12 - v9;
  v12[4] = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI9TupleViewVyAA7ForEachVySay11WorkoutCore8StepTypeOGSiAA14NavigationLinkVyAA6HStackVyACyAA6SpacerV_AA15ModifiedContentVyAA4TextVAA30_EnvironmentKeyWritingModifierVyAA0Q9AlignmentOGGAOtGGAQy0gB008Intervali10ChooseGoalD0VAUyA0_013ConfigurationK5ModelCSgGGGG_AQyAKyA_AQyA0_0wi9SelectionD0VA6_GGAA01_rs9TransformU0VySbGGtGMd);
  lazy protocol witness table accessor for type List<Never, TupleView<(ForEach<[StepType], Int, NavigationLink<HStack<TupleView<(Spacer, ModifiedContent<Text, _EnvironmentKeyWritingModifier<TextAlignment>>, Spacer)>>, ModifiedContent<IntervalStepChooseGoalView, _EnvironmentKeyWritingModifier<ConfigurationNavigationModel?>>>>, ModifiedContent<NavigationLink<HStack<TupleView<(Spacer, ModifiedContent<Text, _EnvironmentKeyWritingModifier<TextAlignment>>, Spacer)>>, ModifiedContent<IntervalStepSelectionView, _EnvironmentKeyWritingModifier<ConfigurationNavigationModel?>>>, _EnvironmentKeyTransformModifier<Bool>>)>> and conformance List<A, B>(&lazy protocol witness table cache variable for type TupleView<(ForEach<[StepType], Int, NavigationLink<HStack<TupleView<(Spacer, ModifiedContent<Text, _EnvironmentKeyWritingModifier<TextAlignment>>, Spacer)>>, ModifiedContent<IntervalStepChooseGoalView, _EnvironmentKeyWritingModifier<ConfigurationNavigationModel?>>>>, ModifiedContent<NavigationLink<HStack<TupleView<(Spacer, ModifiedContent<Text, _EnvironmentKeyWritingModifier<TextAlignment>>, Spacer)>>, ModifiedContent<IntervalStepSelectionView, _EnvironmentKeyWritingModifier<ConfigurationNavigationModel?>>>, _EnvironmentKeyTransformModifier<Bool>>)> and conformance TupleView<A>, &_s7SwiftUI9TupleViewVyAA7ForEachVySay11WorkoutCore8StepTypeOGSiAA14NavigationLinkVyAA6HStackVyACyAA6SpacerV_AA15ModifiedContentVyAA4TextVAA30_EnvironmentKeyWritingModifierVyAA0Q9AlignmentOGGAOtGGAQy0gB008Intervali10ChooseGoalD0VAUyA0_013ConfigurationK5ModelCSgGGGG_AQyAKyA_AQyA0_0wi9SelectionD0VA6_GGAA01_rs9TransformU0VySbGGtGMd);
  List<>.init(content:)();
  PlainListStyle.init()();
  lazy protocol witness table accessor for type List<Never, TupleView<(ForEach<[StepType], Int, NavigationLink<HStack<TupleView<(Spacer, ModifiedContent<Text, _EnvironmentKeyWritingModifier<TextAlignment>>, Spacer)>>, ModifiedContent<IntervalStepChooseGoalView, _EnvironmentKeyWritingModifier<ConfigurationNavigationModel?>>>>, ModifiedContent<NavigationLink<HStack<TupleView<(Spacer, ModifiedContent<Text, _EnvironmentKeyWritingModifier<TextAlignment>>, Spacer)>>, ModifiedContent<IntervalStepSelectionView, _EnvironmentKeyWritingModifier<ConfigurationNavigationModel?>>>, _EnvironmentKeyTransformModifier<Bool>>)>> and conformance List<A, B>(&lazy protocol witness table cache variable for type List<Never, TupleView<(ForEach<[StepType], Int, NavigationLink<HStack<TupleView<(Spacer, ModifiedContent<Text, _EnvironmentKeyWritingModifier<TextAlignment>>, Spacer)>>, ModifiedContent<IntervalStepChooseGoalView, _EnvironmentKeyWritingModifier<ConfigurationNavigationModel?>>>>, ModifiedContent<NavigationLink<HStack<TupleView<(Spacer, ModifiedContent<Text, _EnvironmentKeyWritingModifier<TextAlignment>>, Spacer)>>, ModifiedContent<IntervalStepSelectionView, _EnvironmentKeyWritingModifier<ConfigurationNavigationModel?>>>, _EnvironmentKeyTransformModifier<Bool>>)>> and conformance List<A, B>, &_s7SwiftUI4ListVys5NeverOAA9TupleViewVyAA7ForEachVySay11WorkoutCore8StepTypeOGSiAA14NavigationLinkVyAA6HStackVyAGyAA6SpacerV_AA15ModifiedContentVyAA4TextVAA30_EnvironmentKeyWritingModifierVyAA0S9AlignmentOGGAStGGAUy0iB008Intervalk10ChooseGoalF0VAYyA4_013ConfigurationM5ModelCSgGGGG_AUyAOyA3_AUyA4_0yk9SelectionF0VA10_GGAA01_tu9TransformW0VySbGGtGGMd);
  View.listStyle<A>(_:)();
  (*(v4 + 8))(v6, v3);
  return (*(v8 + 8))(v10, v7);
}

uint64_t closure #1 in closure #1 in IntervalStepAddTypeView.body.getter@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v65 = a2;
  v3 = type metadata accessor for IntervalStepSelectionView();
  v4 = (v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = (v51 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v54 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVy07WorkoutB025IntervalStepSelectionViewVAA30_EnvironmentKeyWritingModifierVyAD28ConfigurationNavigationModelCSgGGMd);
  MEMORY[0x28223BE20](v54);
  v52 = v51 - v7;
  v60 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI14NavigationLinkVyAA6HStackVyAA9TupleViewVyAA6SpacerV_AA15ModifiedContentVyAA4TextVAA30_EnvironmentKeyWritingModifierVyAA0K9AlignmentOGGAItGGAKy07WorkoutB0021IntervalStepSelectionG0VAOyAV013ConfigurationC5ModelCSgGGGMd);
  v58 = *(v60 - 8);
  MEMORY[0x28223BE20](v60);
  v57 = v51 - v8;
  v55 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyAA14NavigationLinkVyAA6HStackVyAA9TupleViewVyAA6SpacerV_ACyAA4TextVAA30_EnvironmentKeyWritingModifierVyAA0K9AlignmentOGGAKtGGACy07WorkoutB0021IntervalStepSelectionI0VAOyAV013ConfigurationE5ModelCSgGGGAA01_lm9TransformO0VySbGGMd);
  MEMORY[0x28223BE20](v55);
  v64 = v51 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v53 = v51 - v11;
  MEMORY[0x28223BE20](v12);
  v61 = v51 - v13;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI7ForEachVySay11WorkoutCore8StepTypeOGSiAA14NavigationLinkVyAA6HStackVyAA9TupleViewVyAA6SpacerV_AA15ModifiedContentVyAA4TextVAA30_EnvironmentKeyWritingModifierVyAA0Q9AlignmentOGGAOtGGAQy0eB008Intervalg10ChooseGoalM0VAUyA0_013ConfigurationI5ModelCSgGGGGMd);
  v62 = *(v14 - 8);
  v63 = v14;
  MEMORY[0x28223BE20](v14);
  v59 = v51 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v18 = v51 - v17;
  v67 = *(a1 + 48);
  v68 = v67;
  v19 = swift_allocObject();
  v20 = *(a1 + 16);
  *(v19 + 16) = *a1;
  *(v19 + 32) = v20;
  *(v19 + 48) = *(a1 + 32);
  *(v19 + 64) = *(a1 + 48);
  outlined init with copy of [StepType](&v68, v66, &_sSay11WorkoutCore8StepTypeOGMd);
  outlined init with copy of IntervalStepAddTypeView(a1, v66);
  v51[1] = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay11WorkoutCore8StepTypeOGMd);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI14NavigationLinkVyAA6HStackVyAA9TupleViewVyAA6SpacerV_AA15ModifiedContentVyAA4TextVAA30_EnvironmentKeyWritingModifierVyAA0K9AlignmentOGGAItGGAKy07WorkoutB0022IntervalStepChooseGoalG0VAOyAV013ConfigurationC5ModelCSgGGGMd);
  lazy protocol witness table accessor for type List<Never, TupleView<(ForEach<[StepType], Int, NavigationLink<HStack<TupleView<(Spacer, ModifiedContent<Text, _EnvironmentKeyWritingModifier<TextAlignment>>, Spacer)>>, ModifiedContent<IntervalStepChooseGoalView, _EnvironmentKeyWritingModifier<ConfigurationNavigationModel?>>>>, ModifiedContent<NavigationLink<HStack<TupleView<(Spacer, ModifiedContent<Text, _EnvironmentKeyWritingModifier<TextAlignment>>, Spacer)>>, ModifiedContent<IntervalStepSelectionView, _EnvironmentKeyWritingModifier<ConfigurationNavigationModel?>>>, _EnvironmentKeyTransformModifier<Bool>>)>> and conformance List<A, B>(&lazy protocol witness table cache variable for type [StepType] and conformance [A], &_sSay11WorkoutCore8StepTypeOGMd);
  lazy protocol witness table accessor for type List<Never, TupleView<(ForEach<[StepType], Int, NavigationLink<HStack<TupleView<(Spacer, ModifiedContent<Text, _EnvironmentKeyWritingModifier<TextAlignment>>, Spacer)>>, ModifiedContent<IntervalStepChooseGoalView, _EnvironmentKeyWritingModifier<ConfigurationNavigationModel?>>>>, ModifiedContent<NavigationLink<HStack<TupleView<(Spacer, ModifiedContent<Text, _EnvironmentKeyWritingModifier<TextAlignment>>, Spacer)>>, ModifiedContent<IntervalStepSelectionView, _EnvironmentKeyWritingModifier<ConfigurationNavigationModel?>>>, _EnvironmentKeyTransformModifier<Bool>>)>> and conformance List<A, B>(&lazy protocol witness table cache variable for type NavigationLink<HStack<TupleView<(Spacer, ModifiedContent<Text, _EnvironmentKeyWritingModifier<TextAlignment>>, Spacer)>>, ModifiedContent<IntervalStepChooseGoalView, _EnvironmentKeyWritingModifier<ConfigurationNavigationModel?>>> and conformance NavigationLink<A, B>, &_s7SwiftUI14NavigationLinkVyAA6HStackVyAA9TupleViewVyAA6SpacerV_AA15ModifiedContentVyAA4TextVAA30_EnvironmentKeyWritingModifierVyAA0K9AlignmentOGGAItGGAKy07WorkoutB0022IntervalStepChooseGoalG0VAOyAV013ConfigurationC5ModelCSgGGGMd);
  lazy protocol witness table accessor for type StepType and conformance StepType(&lazy protocol witness table cache variable for type StepType and conformance StepType, MEMORY[0x277D7E728]);
  v56 = v18;
  ForEach<>.init(_:content:)();
  v21 = IntervalWorkoutConfiguration.intervalWorkout.getter();
  v22 = *(a1 + 40);
  type metadata accessor for ConfigurationNavigationModel();
  lazy protocol witness table accessor for type StepType and conformance StepType(&lazy protocol witness table cache variable for type ConfigurationNavigationModel and conformance ConfigurationNavigationModel, type metadata accessor for ConfigurationNavigationModel);
  v23 = v22;
  *v6 = EnvironmentObject.init()();
  v6[1] = v24;
  v25 = v4[7];
  *(v6 + v25) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI11EnvironmentV7ContentOyAA13DismissActionV_GMd);
  swift_storeEnumTagMultiPayload();
  *(v6 + v4[8]) = v21;
  *(v6 + v4[9]) = v23;
  v26 = v21;
  v27 = IntervalWorkout.stepBlocks.getter();

  v28 = (v6 + v4[10]);
  *v28 = v27;
  v28[1] = 0;
  v29 = (v6 + v4[11]);
  *v29 = MEMORY[0x277D84F90];
  v29[1] = 0;
  v30 = *a1;
  if (*a1)
  {

    v31 = static ObservableObject.environmentStore.getter();
    v32 = v52;
    outlined init with take of IntervalStepSelectionView(v6, v52, type metadata accessor for IntervalStepSelectionView);
    v33 = (v32 + *(v54 + 36));
    *v33 = v31;
    v33[1] = v30;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI6HStackVyAA9TupleViewVyAA6SpacerV_AA15ModifiedContentVyAA4TextVAA30_EnvironmentKeyWritingModifierVyAA0I9AlignmentOGGAGtGGMd);
    lazy protocol witness table accessor for type List<Never, TupleView<(ForEach<[StepType], Int, NavigationLink<HStack<TupleView<(Spacer, ModifiedContent<Text, _EnvironmentKeyWritingModifier<TextAlignment>>, Spacer)>>, ModifiedContent<IntervalStepChooseGoalView, _EnvironmentKeyWritingModifier<ConfigurationNavigationModel?>>>>, ModifiedContent<NavigationLink<HStack<TupleView<(Spacer, ModifiedContent<Text, _EnvironmentKeyWritingModifier<TextAlignment>>, Spacer)>>, ModifiedContent<IntervalStepSelectionView, _EnvironmentKeyWritingModifier<ConfigurationNavigationModel?>>>, _EnvironmentKeyTransformModifier<Bool>>)>> and conformance List<A, B>(&lazy protocol witness table cache variable for type HStack<TupleView<(Spacer, ModifiedContent<Text, _EnvironmentKeyWritingModifier<TextAlignment>>, Spacer)>> and conformance HStack<A>, &_s7SwiftUI6HStackVyAA9TupleViewVyAA6SpacerV_AA15ModifiedContentVyAA4TextVAA30_EnvironmentKeyWritingModifierVyAA0I9AlignmentOGGAGtGGMd);
    lazy protocol witness table accessor for type ModifiedContent<IntervalStepSelectionView, _EnvironmentKeyWritingModifier<ConfigurationNavigationModel?>> and conformance <> ModifiedContent<A, B>();
    v34 = v57;
    NavigationLink.init(destination:label:)();
    v35 = IntervalWorkoutConfiguration.intervalWorkout.getter();
    LOBYTE(v31) = IntervalWorkout.canAddRepeat.getter();

    KeyPath = swift_getKeyPath();
    v37 = swift_allocObject();
    *(v37 + 16) = (v31 & 1) == 0;
    v38 = v53;
    (*(v58 + 32))(v53, v34, v60);
    v39 = (v38 + *(v55 + 36));
    *v39 = KeyPath;
    v39[1] = _s7SwiftUI4ViewPAAE8disabledyQrSbFySbzcfU_TA_16;
    v39[2] = v37;
    v40 = v61;
    outlined init with take of ModifiedContent<NavigationLink<HStack<TupleView<(Spacer, ModifiedContent<Text, _EnvironmentKeyWritingModifier<TextAlignment>>, Spacer)>>, ModifiedContent<IntervalStepSelectionView, _EnvironmentKeyWritingModifier<ConfigurationNavigationModel?>>>, _EnvironmentKeyTransformModifier<Bool>>(v38, v61);
    v42 = v62;
    v41 = v63;
    v43 = *(v62 + 16);
    v44 = v59;
    v45 = v56;
    v43(v59, v56, v63);
    v46 = v64;
    outlined init with copy of [StepType](v40, v64, &_s7SwiftUI15ModifiedContentVyAA14NavigationLinkVyAA6HStackVyAA9TupleViewVyAA6SpacerV_ACyAA4TextVAA30_EnvironmentKeyWritingModifierVyAA0K9AlignmentOGGAKtGGACy07WorkoutB0021IntervalStepSelectionI0VAOyAV013ConfigurationE5ModelCSgGGGAA01_lm9TransformO0VySbGGMd);
    v47 = v65;
    v43(v65, v44, v41);
    v48 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI7ForEachVySay11WorkoutCore8StepTypeOGSiAA14NavigationLinkVyAA6HStackVyAA9TupleViewVyAA6SpacerV_AA15ModifiedContentVyAA4TextVAA30_EnvironmentKeyWritingModifierVyAA0Q9AlignmentOGGAOtGGAQy0eB008Intervalg10ChooseGoalM0VAUyA0_013ConfigurationI5ModelCSgGGGG_AQyAIyA_AQyA0_0wg9SelectionM0VA6_GGAA01_rs9TransformU0VySbGGtMd);
    outlined init with copy of [StepType](v46, &v47[*(v48 + 48)], &_s7SwiftUI15ModifiedContentVyAA14NavigationLinkVyAA6HStackVyAA9TupleViewVyAA6SpacerV_ACyAA4TextVAA30_EnvironmentKeyWritingModifierVyAA0K9AlignmentOGGAKtGGACy07WorkoutB0021IntervalStepSelectionI0VAOyAV013ConfigurationE5ModelCSgGGGAA01_lm9TransformO0VySbGGMd);
    outlined destroy of ModifiedContent<NavigationLink<HStack<TupleView<(Spacer, ModifiedContent<Text, _EnvironmentKeyWritingModifier<TextAlignment>>, Spacer)>>, ModifiedContent<IntervalStepSelectionView, _EnvironmentKeyWritingModifier<ConfigurationNavigationModel?>>>, _EnvironmentKeyTransformModifier<Bool>>(v40, &_s7SwiftUI15ModifiedContentVyAA14NavigationLinkVyAA6HStackVyAA9TupleViewVyAA6SpacerV_ACyAA4TextVAA30_EnvironmentKeyWritingModifierVyAA0K9AlignmentOGGAKtGGACy07WorkoutB0021IntervalStepSelectionI0VAOyAV013ConfigurationE5ModelCSgGGGAA01_lm9TransformO0VySbGGMd);
    v49 = *(v42 + 8);
    v49(v45, v41);
    outlined destroy of ModifiedContent<NavigationLink<HStack<TupleView<(Spacer, ModifiedContent<Text, _EnvironmentKeyWritingModifier<TextAlignment>>, Spacer)>>, ModifiedContent<IntervalStepSelectionView, _EnvironmentKeyWritingModifier<ConfigurationNavigationModel?>>>, _EnvironmentKeyTransformModifier<Bool>>(v46, &_s7SwiftUI15ModifiedContentVyAA14NavigationLinkVyAA6HStackVyAA9TupleViewVyAA6SpacerV_ACyAA4TextVAA30_EnvironmentKeyWritingModifierVyAA0K9AlignmentOGGAKtGGACy07WorkoutB0021IntervalStepSelectionI0VAOyAV013ConfigurationE5ModelCSgGGGAA01_lm9TransformO0VySbGGMd);
    return (v49)(v44, v41);
  }

  else
  {
    result = EnvironmentObject.error()();
    __break(1u);
  }

  return result;
}

uint64_t closure #1 in closure #1 in closure #1 in IntervalStepAddTypeView.body.getter@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X8>)
{
  v29 = a3;
  v5 = type metadata accessor for IntervalStepChooseGoalView();
  v6 = (v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = (&v26 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVy07WorkoutB026IntervalStepChooseGoalViewVAA30_EnvironmentKeyWritingModifierVyAD28ConfigurationNavigationModelCSgGGMd);
  MEMORY[0x28223BE20](v28);
  v10 = &v26 - v9;
  v11 = v6[7];
  v12 = type metadata accessor for StepType();
  v13 = *(*(v12 - 8) + 16);
  v27 = a1;
  v13(v8 + v11, a1, v12);
  v14 = a2[2];
  v26 = a2[3];
  v16 = a2[4];
  v15 = a2[5];
  type metadata accessor for ConfigurationNavigationModel();
  lazy protocol witness table accessor for type StepType and conformance StepType(&lazy protocol witness table cache variable for type ConfigurationNavigationModel and conformance ConfigurationNavigationModel, type metadata accessor for ConfigurationNavigationModel);
  v17 = v14;
  v18 = v16;
  v19 = v15;
  *v8 = EnvironmentObject.init()();
  v8[1] = v20;
  *(v8 + v6[8]) = v17;
  *(v8 + v6[9]) = v26;
  *(v8 + v6[10]) = v18;
  *(v8 + v6[11]) = v19;
  *(v8 + v6[12]) = 0;
  v21 = *a2;
  if (*a2)
  {

    v22 = static ObservableObject.environmentStore.getter();
    v23 = outlined init with take of IntervalStepSelectionView(v8, v10, type metadata accessor for IntervalStepChooseGoalView);
    v24 = &v10[*(v28 + 36)];
    *v24 = v22;
    v24[1] = v21;
    MEMORY[0x28223BE20](v23);
    *(&v26 - 2) = v27;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI6HStackVyAA9TupleViewVyAA6SpacerV_AA15ModifiedContentVyAA4TextVAA30_EnvironmentKeyWritingModifierVyAA0I9AlignmentOGGAGtGGMd);
    lazy protocol witness table accessor for type List<Never, TupleView<(ForEach<[StepType], Int, NavigationLink<HStack<TupleView<(Spacer, ModifiedContent<Text, _EnvironmentKeyWritingModifier<TextAlignment>>, Spacer)>>, ModifiedContent<IntervalStepChooseGoalView, _EnvironmentKeyWritingModifier<ConfigurationNavigationModel?>>>>, ModifiedContent<NavigationLink<HStack<TupleView<(Spacer, ModifiedContent<Text, _EnvironmentKeyWritingModifier<TextAlignment>>, Spacer)>>, ModifiedContent<IntervalStepSelectionView, _EnvironmentKeyWritingModifier<ConfigurationNavigationModel?>>>, _EnvironmentKeyTransformModifier<Bool>>)>> and conformance List<A, B>(&lazy protocol witness table cache variable for type HStack<TupleView<(Spacer, ModifiedContent<Text, _EnvironmentKeyWritingModifier<TextAlignment>>, Spacer)>> and conformance HStack<A>, &_s7SwiftUI6HStackVyAA9TupleViewVyAA6SpacerV_AA15ModifiedContentVyAA4TextVAA30_EnvironmentKeyWritingModifierVyAA0I9AlignmentOGGAGtGGMd);
    lazy protocol witness table accessor for type ModifiedContent<IntervalStepChooseGoalView, _EnvironmentKeyWritingModifier<ConfigurationNavigationModel?>> and conformance <> ModifiedContent<A, B>();
    return NavigationLink.init(destination:label:)();
  }

  else
  {
    result = EnvironmentObject.error()();
    __break(1u);
  }

  return result;
}

double closure #1 in closure #1 in closure #1 in closure #1 in IntervalStepAddTypeView.body.getter@<D0>(uint64_t a1@<X8>)
{
  v2 = static VerticalAlignment.center.getter();
  v13 = 1;
  closure #1 in closure #1 in closure #1 in closure #1 in closure #1 in IntervalStepAddTypeView.body.getter(&v8);
  v15 = v9;
  v16 = v10;
  v17[0] = v11[0];
  *(v17 + 9) = *(v11 + 9);
  v14 = v8;
  v18[2] = v10;
  v19[0] = v11[0];
  *(v19 + 9) = *(v11 + 9);
  v18[0] = v8;
  v18[1] = v9;
  outlined init with copy of [StepType](&v14, v7, &_s7SwiftUI9TupleViewVyAA6SpacerV_AA15ModifiedContentVyAA4TextVAA30_EnvironmentKeyWritingModifierVyAA0H9AlignmentOGGAEtGMd);
  outlined destroy of ModifiedContent<NavigationLink<HStack<TupleView<(Spacer, ModifiedContent<Text, _EnvironmentKeyWritingModifier<TextAlignment>>, Spacer)>>, ModifiedContent<IntervalStepSelectionView, _EnvironmentKeyWritingModifier<ConfigurationNavigationModel?>>>, _EnvironmentKeyTransformModifier<Bool>>(v18, &_s7SwiftUI9TupleViewVyAA6SpacerV_AA15ModifiedContentVyAA4TextVAA30_EnvironmentKeyWritingModifierVyAA0H9AlignmentOGGAEtGMd);
  *&v12[7] = v14;
  *&v12[64] = *(v17 + 9);
  *&v12[55] = v17[0];
  *&v12[39] = v16;
  *&v12[23] = v15;
  v3 = *v12;
  *(a1 + 33) = *&v12[16];
  v4 = *&v12[48];
  *(a1 + 49) = *&v12[32];
  *(a1 + 65) = v4;
  result = *&v12[64];
  *(a1 + 81) = *&v12[64];
  v6 = v13;
  *a1 = v2;
  *(a1 + 8) = 0;
  *(a1 + 16) = v6;
  *(a1 + 17) = v3;
  return result;
}

uint64_t closure #1 in closure #1 in closure #1 in closure #1 in closure #1 in IntervalStepAddTypeView.body.getter@<X0>(uint64_t a1@<X8>)
{
  StepType.displayStringToAddStep.getter();
  lazy protocol witness table accessor for type String and conformance String();
  v2 = Text.init<A>(_:)();
  v4 = v3;
  v6 = v5;
  v8 = v7;
  KeyPath = swift_getKeyPath();
  *a1 = 0;
  *(a1 + 8) = 1;
  *(a1 + 16) = v2;
  *(a1 + 24) = v4;
  *(a1 + 32) = v6 & 1;
  *(a1 + 40) = v8;
  *(a1 + 48) = KeyPath;
  *(a1 + 56) = 1;
  *(a1 + 64) = 0;
  *(a1 + 72) = 1;
  outlined copy of Text.Storage(v2, v4, v6 & 1);

  outlined consume of Text.Storage(v2, v4, v6 & 1);
}

double closure #2 in closure #1 in closure #1 in IntervalStepAddTypeView.body.getter@<D0>(uint64_t a1@<X8>)
{
  v2 = static VerticalAlignment.center.getter();
  v13 = 1;
  closure #1 in closure #2 in closure #1 in closure #1 in IntervalStepAddTypeView.body.getter(&v8);
  v15 = v9;
  v16 = v10;
  v17[0] = v11[0];
  *(v17 + 9) = *(v11 + 9);
  v14 = v8;
  v18[2] = v10;
  v19[0] = v11[0];
  *(v19 + 9) = *(v11 + 9);
  v18[0] = v8;
  v18[1] = v9;
  outlined init with copy of [StepType](&v14, v7, &_s7SwiftUI9TupleViewVyAA6SpacerV_AA15ModifiedContentVyAA4TextVAA30_EnvironmentKeyWritingModifierVyAA0H9AlignmentOGGAEtGMd);
  outlined destroy of ModifiedContent<NavigationLink<HStack<TupleView<(Spacer, ModifiedContent<Text, _EnvironmentKeyWritingModifier<TextAlignment>>, Spacer)>>, ModifiedContent<IntervalStepSelectionView, _EnvironmentKeyWritingModifier<ConfigurationNavigationModel?>>>, _EnvironmentKeyTransformModifier<Bool>>(v18, &_s7SwiftUI9TupleViewVyAA6SpacerV_AA15ModifiedContentVyAA4TextVAA30_EnvironmentKeyWritingModifierVyAA0H9AlignmentOGGAEtGMd);
  *&v12[7] = v14;
  *&v12[64] = *(v17 + 9);
  *&v12[55] = v17[0];
  *&v12[39] = v16;
  *&v12[23] = v15;
  v3 = *v12;
  *(a1 + 33) = *&v12[16];
  v4 = *&v12[48];
  *(a1 + 49) = *&v12[32];
  *(a1 + 65) = v4;
  result = *&v12[64];
  *(a1 + 81) = *&v12[64];
  v6 = v13;
  *a1 = v2;
  *(a1 + 8) = 0;
  *(a1 + 16) = v6;
  *(a1 + 17) = v3;
  return result;
}

uint64_t closure #1 in closure #2 in closure #1 in closure #1 in IntervalStepAddTypeView.body.getter@<X0>(uint64_t a1@<X8>)
{
  LocalizedStringKey.init(stringLiteral:)();
  if (one-time initialization token for WorkoutUIBundle != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v2 = WorkoutUIBundle.super.isa;
  v3 = Text.init(_:tableName:bundle:comment:)();
  v5 = v4;
  v7 = v6;
  v9 = v8;
  KeyPath = swift_getKeyPath();
  *a1 = 0;
  *(a1 + 8) = 1;
  *(a1 + 16) = v3;
  *(a1 + 24) = v5;
  *(a1 + 32) = v7 & 1;
  *(a1 + 40) = v9;
  *(a1 + 48) = KeyPath;
  *(a1 + 56) = 1;
  *(a1 + 64) = 0;
  *(a1 + 72) = 1;
  outlined copy of Text.Storage(v3, v5, v7 & 1);

  outlined consume of Text.Storage(v3, v5, v7 & 1);
}

uint64_t protocol witness for View.body.getter in conformance IntervalStepAddTypeView()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI4ViewPAAE9listStyleyQrqd__AA04ListE0Rd__lFQOyAA0F0Vys5NeverOAA05TupleC0VyAA7ForEachVySay11WorkoutCore8StepTypeOGSiAA14NavigationLinkVyAA6HStackVyAKyAA6SpacerV_AA15ModifiedContentVyAA4TextVAA30_EnvironmentKeyWritingModifierVyAA0U9AlignmentOGGAWtGGAYy0kB008Intervalm10ChooseGoalC0VA1_yA8_013ConfigurationO5ModelCSgGGGG_AYyASyA7_AYyA8_08Intervalm9SelectionC0VA14_GGAA01_vw9TransformY0VySbGGtGG_AA05PlainfE0VQo_Md);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI4ListVys5NeverOAA9TupleViewVyAA7ForEachVySay11WorkoutCore8StepTypeOGSiAA14NavigationLinkVyAA6HStackVyAGyAA6SpacerV_AA15ModifiedContentVyAA4TextVAA30_EnvironmentKeyWritingModifierVyAA0S9AlignmentOGGAStGGAUy0iB008Intervalk10ChooseGoalF0VAYyA4_013ConfigurationM5ModelCSgGGGG_AUyAOyA3_AUyA4_0yk9SelectionF0VA10_GGAA01_tu9TransformW0VySbGGtGGMd);
  type metadata accessor for PlainListStyle();
  lazy protocol witness table accessor for type List<Never, TupleView<(ForEach<[StepType], Int, NavigationLink<HStack<TupleView<(Spacer, ModifiedContent<Text, _EnvironmentKeyWritingModifier<TextAlignment>>, Spacer)>>, ModifiedContent<IntervalStepChooseGoalView, _EnvironmentKeyWritingModifier<ConfigurationNavigationModel?>>>>, ModifiedContent<NavigationLink<HStack<TupleView<(Spacer, ModifiedContent<Text, _EnvironmentKeyWritingModifier<TextAlignment>>, Spacer)>>, ModifiedContent<IntervalStepSelectionView, _EnvironmentKeyWritingModifier<ConfigurationNavigationModel?>>>, _EnvironmentKeyTransformModifier<Bool>>)>> and conformance List<A, B>(&lazy protocol witness table cache variable for type List<Never, TupleView<(ForEach<[StepType], Int, NavigationLink<HStack<TupleView<(Spacer, ModifiedContent<Text, _EnvironmentKeyWritingModifier<TextAlignment>>, Spacer)>>, ModifiedContent<IntervalStepChooseGoalView, _EnvironmentKeyWritingModifier<ConfigurationNavigationModel?>>>>, ModifiedContent<NavigationLink<HStack<TupleView<(Spacer, ModifiedContent<Text, _EnvironmentKeyWritingModifier<TextAlignment>>, Spacer)>>, ModifiedContent<IntervalStepSelectionView, _EnvironmentKeyWritingModifier<ConfigurationNavigationModel?>>>, _EnvironmentKeyTransformModifier<Bool>>)>> and conformance List<A, B>, &_s7SwiftUI4ListVys5NeverOAA9TupleViewVyAA7ForEachVySay11WorkoutCore8StepTypeOGSiAA14NavigationLinkVyAA6HStackVyAGyAA6SpacerV_AA15ModifiedContentVyAA4TextVAA30_EnvironmentKeyWritingModifierVyAA0S9AlignmentOGGAStGGAUy0iB008Intervalk10ChooseGoalF0VAYyA4_013ConfigurationM5ModelCSgGGGG_AUyAOyA3_AUyA4_0yk9SelectionF0VA10_GGAA01_tu9TransformW0VySbGGtGGMd);
  swift_getOpaqueTypeConformance2();
  return NavigationStack.init<>(root:)();
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<IntervalStepSelectionView, _EnvironmentKeyWritingModifier<ConfigurationNavigationModel?>> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<IntervalStepSelectionView, _EnvironmentKeyWritingModifier<ConfigurationNavigationModel?>> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<IntervalStepSelectionView, _EnvironmentKeyWritingModifier<ConfigurationNavigationModel?>> and conformance <> ModifiedContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVy07WorkoutB025IntervalStepSelectionViewVAA30_EnvironmentKeyWritingModifierVyAD28ConfigurationNavigationModelCSgGGMd);
    lazy protocol witness table accessor for type StepType and conformance StepType(&lazy protocol witness table cache variable for type IntervalStepSelectionView and conformance IntervalStepSelectionView, type metadata accessor for IntervalStepSelectionView);
    lazy protocol witness table accessor for type List<Never, TupleView<(ForEach<[StepType], Int, NavigationLink<HStack<TupleView<(Spacer, ModifiedContent<Text, _EnvironmentKeyWritingModifier<TextAlignment>>, Spacer)>>, ModifiedContent<IntervalStepChooseGoalView, _EnvironmentKeyWritingModifier<ConfigurationNavigationModel?>>>>, ModifiedContent<NavigationLink<HStack<TupleView<(Spacer, ModifiedContent<Text, _EnvironmentKeyWritingModifier<TextAlignment>>, Spacer)>>, ModifiedContent<IntervalStepSelectionView, _EnvironmentKeyWritingModifier<ConfigurationNavigationModel?>>>, _EnvironmentKeyTransformModifier<Bool>>)>> and conformance List<A, B>(&lazy protocol witness table cache variable for type _EnvironmentKeyWritingModifier<ConfigurationNavigationModel?> and conformance _EnvironmentKeyWritingModifier<A>, &_s7SwiftUI30_EnvironmentKeyWritingModifierVy07WorkoutB028ConfigurationNavigationModelCSgGMd);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<IntervalStepSelectionView, _EnvironmentKeyWritingModifier<ConfigurationNavigationModel?>> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

uint64_t outlined init with take of ModifiedContent<NavigationLink<HStack<TupleView<(Spacer, ModifiedContent<Text, _EnvironmentKeyWritingModifier<TextAlignment>>, Spacer)>>, ModifiedContent<IntervalStepSelectionView, _EnvironmentKeyWritingModifier<ConfigurationNavigationModel?>>>, _EnvironmentKeyTransformModifier<Bool>>(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyAA14NavigationLinkVyAA6HStackVyAA9TupleViewVyAA6SpacerV_ACyAA4TextVAA30_EnvironmentKeyWritingModifierVyAA0K9AlignmentOGGAKtGGACy07WorkoutB0021IntervalStepSelectionI0VAOyAV013ConfigurationE5ModelCSgGGGAA01_lm9TransformO0VySbGGMd);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t outlined init with copy of [StepType](uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(a3);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t outlined destroy of ModifiedContent<NavigationLink<HStack<TupleView<(Spacer, ModifiedContent<Text, _EnvironmentKeyWritingModifier<TextAlignment>>, Spacer)>>, ModifiedContent<IntervalStepSelectionView, _EnvironmentKeyWritingModifier<ConfigurationNavigationModel?>>>, _EnvironmentKeyTransformModifier<Bool>>(uint64_t a1, uint64_t *a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(a2);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t outlined init with take of IntervalStepSelectionView(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<IntervalStepChooseGoalView, _EnvironmentKeyWritingModifier<ConfigurationNavigationModel?>> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<IntervalStepChooseGoalView, _EnvironmentKeyWritingModifier<ConfigurationNavigationModel?>> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<IntervalStepChooseGoalView, _EnvironmentKeyWritingModifier<ConfigurationNavigationModel?>> and conformance <> ModifiedContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVy07WorkoutB026IntervalStepChooseGoalViewVAA30_EnvironmentKeyWritingModifierVyAD28ConfigurationNavigationModelCSgGGMd);
    lazy protocol witness table accessor for type StepType and conformance StepType(&lazy protocol witness table cache variable for type IntervalStepChooseGoalView and conformance IntervalStepChooseGoalView, type metadata accessor for IntervalStepChooseGoalView);
    lazy protocol witness table accessor for type List<Never, TupleView<(ForEach<[StepType], Int, NavigationLink<HStack<TupleView<(Spacer, ModifiedContent<Text, _EnvironmentKeyWritingModifier<TextAlignment>>, Spacer)>>, ModifiedContent<IntervalStepChooseGoalView, _EnvironmentKeyWritingModifier<ConfigurationNavigationModel?>>>>, ModifiedContent<NavigationLink<HStack<TupleView<(Spacer, ModifiedContent<Text, _EnvironmentKeyWritingModifier<TextAlignment>>, Spacer)>>, ModifiedContent<IntervalStepSelectionView, _EnvironmentKeyWritingModifier<ConfigurationNavigationModel?>>>, _EnvironmentKeyTransformModifier<Bool>>)>> and conformance List<A, B>(&lazy protocol witness table cache variable for type _EnvironmentKeyWritingModifier<ConfigurationNavigationModel?> and conformance _EnvironmentKeyWritingModifier<A>, &_s7SwiftUI30_EnvironmentKeyWritingModifierVy07WorkoutB028ConfigurationNavigationModelCSgGMd);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<IntervalStepChooseGoalView, _EnvironmentKeyWritingModifier<ConfigurationNavigationModel?>> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

uint64_t lazy protocol witness table accessor for type StepType and conformance StepType(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t lazy protocol witness table accessor for type List<Never, TupleView<(ForEach<[StepType], Int, NavigationLink<HStack<TupleView<(Spacer, ModifiedContent<Text, _EnvironmentKeyWritingModifier<TextAlignment>>, Spacer)>>, ModifiedContent<IntervalStepChooseGoalView, _EnvironmentKeyWritingModifier<ConfigurationNavigationModel?>>>>, ModifiedContent<NavigationLink<HStack<TupleView<(Spacer, ModifiedContent<Text, _EnvironmentKeyWritingModifier<TextAlignment>>, Spacer)>>, ModifiedContent<IntervalStepSelectionView, _EnvironmentKeyWritingModifier<ConfigurationNavigationModel?>>>, _EnvironmentKeyTransformModifier<Bool>>)>> and conformance List<A, B>(unint64_t *a1, uint64_t *a2)
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

uint64_t TimelineSchedule.paused(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v5 = a1;
  v7 = *(a2 - 8);
  v8 = MEMORY[0x28223BE20](a1);
  v10 = &v12 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v7 + 16))(v10, v3, a2, v8);
  (*(v7 + 32))(a3, v10, a2);
  result = type metadata accessor for PausableTimelineSchedule();
  *(a3 + *(result + 36)) = v5;
  return result;
}

uint64_t PausableTimelineSchedule.entries(from:mode:)@<X0>(uint64_t a1@<X2>, uint64_t a2@<X8>)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v6 = type metadata accessor for Optional();
  v7.n128_f64[0] = MEMORY[0x28223BE20](v6 - 8);
  v9 = &v12 - v8;
  if (*(v2 + *(a1 + 36)) == 1)
  {
    (*(*(AssociatedTypeWitness - 8) + 56))(v9, 1, 1, AssociatedTypeWitness, v7);
  }

  else
  {
    dispatch thunk of TimelineSchedule.entries(from:mode:)();
    (*(*(AssociatedTypeWitness - 8) + 56))(v9, 0, 1, AssociatedTypeWitness, v10);
  }

  return PausableTimelineSchedule.Entries.init(base:)(v9, a2);
}

uint64_t PausableTimelineSchedule.Entries.init(base:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  swift_getAssociatedTypeWitness();
  v4 = type metadata accessor for Optional();
  v5 = *(*(v4 - 8) + 32);

  return v5(a2, a1, v4);
}

uint64_t PausableTimelineSchedule.Entries.makeIterator()@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v16 = a1;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v4 = type metadata accessor for Optional();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v15 - v6;
  swift_getAssociatedConformanceWitness();
  v8 = swift_getAssociatedTypeWitness();
  v9 = type metadata accessor for Optional();
  v10 = MEMORY[0x28223BE20](v9 - 8);
  v12 = &v15 - v11;
  (*(v5 + 16))(v7, v2, v4, v10);
  if ((*(*(AssociatedTypeWitness - 8) + 48))(v7, 1, AssociatedTypeWitness) == 1)
  {
    (*(v5 + 8))(v7, v4);
    v13 = 1;
  }

  else
  {
    dispatch thunk of Sequence.makeIterator()();
    v13 = 0;
  }

  (*(*(v8 - 8) + 56))(v12, v13, 1, v8);
  return PausableTimelineSchedule.Iterator.init(base:)(v12, v16);
}

uint64_t PausableTimelineSchedule.Iterator.init(base:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  swift_getAssociatedTypeWitness();
  v4 = type metadata accessor for Optional();
  v5 = *(*(v4 - 8) + 32);

  return v5(a2, a1, v4);
}

uint64_t protocol witness for Sequence.makeIterator() in conformance PausableTimelineSchedule<A>.Entries@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  PausableTimelineSchedule.Entries.makeIterator()(a2);
  v4 = *(*(a1 - 8) + 8);

  return v4(v2, a1);
}

uint64_t protocol witness for Sequence._copyToContiguousArray() in conformance PausableTimelineSchedule<A>.Entries(uint64_t a1)
{
  v3 = specialized Sequence._copyToContiguousArray()();
  (*(*(a1 - 8) + 8))(v1, a1);
  return v3;
}

uint64_t PausableTimelineSchedule.Iterator.next()@<X0>(uint64_t a1@<X8>)
{
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  if ((*(*(AssociatedTypeWitness - 8) + 48))(v1, 1, AssociatedTypeWitness))
  {
    v4 = type metadata accessor for Date();
    v5 = *(*(v4 - 8) + 56);

    return v5(a1, 1, 1, v4);
  }

  else
  {
    swift_getAssociatedConformanceWitness();

    return dispatch thunk of IteratorProtocol.next()();
  }
}

uint64_t type metadata completion function for PausableTimelineSchedule()
{
  result = swift_checkMetadataState();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for PausableTimelineSchedule(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
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

  v8 = a2 - v7;
  if (a2 <= v7)
  {
    goto LABEL_25;
  }

  v9 = v6 + 1;
  v10 = 8 * (v6 + 1);
  if ((v6 + 1) > 3)
  {
    goto LABEL_7;
  }

  v12 = ((v8 + ~(-1 << v10)) >> v10) + 1;
  if (HIWORD(v12))
  {
    v11 = *(a1 + v9);
    if (v11)
    {
      goto LABEL_14;
    }
  }

  else
  {
    if (v12 <= 0xFF)
    {
      if (v12 < 2)
      {
        goto LABEL_25;
      }

LABEL_7:
      v11 = *(a1 + v9);
      if (!*(a1 + v9))
      {
        goto LABEL_25;
      }

LABEL_14:
      v13 = (v11 - 1) << v10;
      if (v9 > 3)
      {
        v13 = 0;
      }

      if (v9)
      {
        if (v9 > 3)
        {
          LODWORD(v9) = 4;
        }

        if (v9 > 2)
        {
          if (v9 == 3)
          {
            LODWORD(v9) = *a1 | (*(a1 + 2) << 16);
          }

          else
          {
            LODWORD(v9) = *a1;
          }
        }

        else if (v9 == 1)
        {
          LODWORD(v9) = *a1;
        }

        else
        {
          LODWORD(v9) = *a1;
        }
      }

      return v7 + (v9 | v13) + 1;
    }

    v11 = *(a1 + v9);
    if (*(a1 + v9))
    {
      goto LABEL_14;
    }
  }

LABEL_25:
  if (v5 >= 0xFE)
  {
    return (*(v4 + 48))();
  }

  v15 = *(a1 + v6);
  if (v15 < 2)
  {
    return 0;
  }

  return ((v15 + 2147483646) & 0x7FFFFFFF) + 1;
}

unsigned int *storeEnumTagSinglePayload for PausableTimelineSchedule(unsigned int *result, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v5 = *(*(a4 + 16) - 8);
  v6 = *(v5 + 84);
  if (v6 <= 0xFE)
  {
    v7 = 254;
  }

  else
  {
    v7 = *(v5 + 84);
  }

  v8 = *(*(*(a4 + 16) - 8) + 64);
  v9 = v8 + 1;
  v10 = a3 >= v7;
  v11 = a3 - v7;
  if (v11 != 0 && v10)
  {
    v12 = 1;
    if (v9 <= 3)
    {
      v13 = ((v11 + ~(-1 << (8 * v9))) >> (8 * v9)) + 1;
      v14 = HIWORD(v13);
      if (v13 < 0x100)
      {
        v15 = 1;
      }

      else
      {
        v15 = 2;
      }

      if (v13 >= 2)
      {
        v16 = v15;
      }

      else
      {
        v16 = 0;
      }

      if (v14)
      {
        v12 = 4;
      }

      else
      {
        v12 = v16;
      }
    }

    if (v7 >= a2)
    {
LABEL_21:
      if (v12 > 1)
      {
        if (v12 != 2)
        {
          *(result + v9) = 0;
          if (!a2)
          {
            return result;
          }

          goto LABEL_33;
        }

        *(result + v9) = 0;
      }

      else if (v12)
      {
        *(result + v9) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_33;
      }

      if (!a2)
      {
        return result;
      }

LABEL_33:
      if (v6 < 0xFE)
      {
        *(result + v8) = a2 + 1;
      }

      else
      {
        v22 = *(v5 + 56);

        return v22();
      }

      return result;
    }
  }

  else
  {
    v12 = 0;
    if (v7 >= a2)
    {
      goto LABEL_21;
    }
  }

  v17 = ~v7 + a2;
  if (v9 >= 4)
  {
    v18 = result;
    bzero(result, v8 + 1);
    result = v18;
    *v18 = v17;
    v19 = 1;
    if (v12 > 1)
    {
      goto LABEL_45;
    }

    goto LABEL_42;
  }

  v19 = (v17 >> (8 * v9)) + 1;
  if (v8 == -1)
  {
LABEL_41:
    if (v12 > 1)
    {
      goto LABEL_45;
    }

    goto LABEL_42;
  }

  v20 = v17 & ~(-1 << (8 * v9));
  v21 = result;
  bzero(result, v9);
  result = v21;
  if (v9 == 3)
  {
    *v21 = v20;
    *(v21 + 2) = BYTE2(v20);
    goto LABEL_41;
  }

  if (v9 == 2)
  {
    *v21 = v20;
    if (v12 > 1)
    {
LABEL_45:
      if (v12 == 2)
      {
        *(result + v9) = v19;
      }

      else
      {
        *(result + v9) = v19;
      }

      return result;
    }
  }

  else
  {
    *v21 = v17;
    if (v12 > 1)
    {
      goto LABEL_45;
    }
  }

LABEL_42:
  if (v12)
  {
    *(result + v9) = v19;
  }

  return result;
}

uint64_t type metadata completion function for PausableTimelineSchedule.Iterator()
{
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  swift_getAssociatedTypeWitness();
  result = type metadata accessor for Optional();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for PausableTimelineSchedule.Iterator(unsigned __int16 *a1, unsigned int a2)
{
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v5 = *(AssociatedTypeWitness - 8);
  v6 = *(v5 + 84);
  v7 = v6 - 1;
  if (!v6)
  {
    v7 = 0;
  }

  v8 = *(*(AssociatedTypeWitness - 8) + 64);
  if (!v6)
  {
    ++v8;
  }

  if (!a2)
  {
    return 0;
  }

  if (a2 > v7)
  {
    v9 = 8 * v8;
    if (v8 > 3)
    {
      goto LABEL_8;
    }

    v11 = ((a2 - v7 + ~(-1 << v9)) >> v9) + 1;
    if (HIWORD(v11))
    {
      v10 = *(a1 + v8);
      if (v10)
      {
        goto LABEL_15;
      }
    }

    else
    {
      if (v11 <= 0xFF)
      {
        if (v11 < 2)
        {
          goto LABEL_26;
        }

LABEL_8:
        v10 = *(a1 + v8);
        if (!*(a1 + v8))
        {
          goto LABEL_26;
        }

LABEL_15:
        v12 = (v10 - 1) << v9;
        if (v8 > 3)
        {
          v12 = 0;
        }

        if (v8)
        {
          if (v8 > 3)
          {
            LODWORD(v8) = 4;
          }

          if (v8 > 2)
          {
            if (v8 == 3)
            {
              LODWORD(v8) = *a1 | (*(a1 + 2) << 16);
            }

            else
            {
              LODWORD(v8) = *a1;
            }
          }

          else if (v8 == 1)
          {
            LODWORD(v8) = *a1;
          }

          else
          {
            LODWORD(v8) = *a1;
          }
        }

        return v7 + (v8 | v12) + 1;
      }

      v10 = *(a1 + v8);
      if (*(a1 + v8))
      {
        goto LABEL_15;
      }
    }
  }

LABEL_26:
  if (v6 < 2)
  {
    return 0;
  }

  v14 = (*(v5 + 48))(a1);
  if (v14 >= 2)
  {
    return v14 - 1;
  }

  else
  {
    return 0;
  }
}

void storeEnumTagSinglePayload for PausableTimelineSchedule.Iterator(_BYTE *a1, unsigned int a2, unsigned int a3)
{
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  v6 = 0;
  v7 = *(swift_getAssociatedTypeWitness() - 8);
  v8 = *(v7 + 84);
  v9 = v8 - 1;
  if (v8)
  {
    v10 = *(v7 + 64);
  }

  else
  {
    v9 = 0;
    v10 = *(v7 + 64) + 1;
  }

  if (a3 <= v9)
  {
    goto LABEL_15;
  }

  if (v10 <= 3)
  {
    v11 = ((a3 - v9 + ~(-1 << (8 * v10))) >> (8 * v10)) + 1;
    if (HIWORD(v11))
    {
      v6 = 4;
      if (v9 >= a2)
      {
        goto LABEL_25;
      }

      goto LABEL_16;
    }

    if (v11 < 0x100)
    {
      v12 = 1;
    }

    else
    {
      v12 = 2;
    }

    if (v11 >= 2)
    {
      v6 = v12;
    }

    else
    {
      v6 = 0;
    }

LABEL_15:
    if (v9 >= a2)
    {
      goto LABEL_25;
    }

    goto LABEL_16;
  }

  v6 = 1;
  if (v9 >= a2)
  {
LABEL_25:
    if (v6 > 1)
    {
      if (v6 != 2)
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

    else if (v6)
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
    if (v8 >= 2)
    {
      v16 = *(v7 + 56);

      v16(a1, a2 + 1);
    }

    return;
  }

LABEL_16:
  v13 = ~v9 + a2;
  if (v10 >= 4)
  {
    bzero(a1, v10);
    *a1 = v13;
    v14 = 1;
    if (v6 > 1)
    {
      goto LABEL_43;
    }

    goto LABEL_40;
  }

  v14 = (v13 >> (8 * v10)) + 1;
  if (!v10)
  {
LABEL_39:
    if (v6 > 1)
    {
      goto LABEL_43;
    }

    goto LABEL_40;
  }

  v15 = v13 & ~(-1 << (8 * v10));
  bzero(a1, v10);
  if (v10 == 3)
  {
    *a1 = v15;
    a1[2] = BYTE2(v15);
    goto LABEL_39;
  }

  if (v10 == 2)
  {
    *a1 = v15;
    if (v6 > 1)
    {
LABEL_43:
      if (v6 == 2)
      {
        *&a1[v10] = v14;
      }

      else
      {
        *&a1[v10] = v14;
      }

      return;
    }
  }

  else
  {
    *a1 = v13;
    if (v6 > 1)
    {
      goto LABEL_43;
    }
  }

LABEL_40:
  if (v6)
  {
    a1[v10] = v14;
  }
}

uint64_t type metadata completion function for PausableTimelineSchedule.Entries()
{
  swift_getAssociatedTypeWitness();
  result = type metadata accessor for Optional();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for PausableTimelineSchedule.Entries(unsigned __int16 *a1, unsigned int a2)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v5 = *(AssociatedTypeWitness - 8);
  v6 = *(v5 + 84);
  v7 = v6 - 1;
  if (!v6)
  {
    v7 = 0;
  }

  v8 = *(*(AssociatedTypeWitness - 8) + 64);
  if (!v6)
  {
    ++v8;
  }

  if (!a2)
  {
    return 0;
  }

  if (a2 > v7)
  {
    v9 = 8 * v8;
    if (v8 > 3)
    {
      goto LABEL_8;
    }

    v11 = ((a2 - v7 + ~(-1 << v9)) >> v9) + 1;
    if (HIWORD(v11))
    {
      v10 = *(a1 + v8);
      if (v10)
      {
        goto LABEL_15;
      }
    }

    else
    {
      if (v11 <= 0xFF)
      {
        if (v11 < 2)
        {
          goto LABEL_26;
        }

LABEL_8:
        v10 = *(a1 + v8);
        if (!*(a1 + v8))
        {
          goto LABEL_26;
        }

LABEL_15:
        v12 = (v10 - 1) << v9;
        if (v8 > 3)
        {
          v12 = 0;
        }

        if (v8)
        {
          if (v8 > 3)
          {
            LODWORD(v8) = 4;
          }

          if (v8 > 2)
          {
            if (v8 == 3)
            {
              LODWORD(v8) = *a1 | (*(a1 + 2) << 16);
            }

            else
            {
              LODWORD(v8) = *a1;
            }
          }

          else if (v8 == 1)
          {
            LODWORD(v8) = *a1;
          }

          else
          {
            LODWORD(v8) = *a1;
          }
        }

        return v7 + (v8 | v12) + 1;
      }

      v10 = *(a1 + v8);
      if (*(a1 + v8))
      {
        goto LABEL_15;
      }
    }
  }

LABEL_26:
  if (v6 < 2)
  {
    return 0;
  }

  v14 = (*(v5 + 48))(a1);
  if (v14 >= 2)
  {
    return v14 - 1;
  }

  else
  {
    return 0;
  }
}

void storeEnumTagSinglePayload for PausableTimelineSchedule.Entries(_BYTE *a1, unsigned int a2, unsigned int a3)
{
  v6 = 0;
  v7 = *(swift_getAssociatedTypeWitness() - 8);
  v8 = *(v7 + 84);
  v9 = v8 - 1;
  if (v8)
  {
    v10 = *(v7 + 64);
  }

  else
  {
    v9 = 0;
    v10 = *(v7 + 64) + 1;
  }

  if (a3 <= v9)
  {
    goto LABEL_15;
  }

  if (v10 <= 3)
  {
    v11 = ((a3 - v9 + ~(-1 << (8 * v10))) >> (8 * v10)) + 1;
    if (HIWORD(v11))
    {
      v6 = 4;
      if (v9 >= a2)
      {
        goto LABEL_25;
      }

      goto LABEL_16;
    }

    if (v11 < 0x100)
    {
      v12 = 1;
    }

    else
    {
      v12 = 2;
    }

    if (v11 >= 2)
    {
      v6 = v12;
    }

    else
    {
      v6 = 0;
    }

LABEL_15:
    if (v9 >= a2)
    {
      goto LABEL_25;
    }

    goto LABEL_16;
  }

  v6 = 1;
  if (v9 >= a2)
  {
LABEL_25:
    if (v6 > 1)
    {
      if (v6 != 2)
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

    else if (v6)
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
    if (v8 >= 2)
    {
      v16 = *(v7 + 56);

      v16(a1, a2 + 1);
    }

    return;
  }

LABEL_16:
  v13 = ~v9 + a2;
  if (v10 >= 4)
  {
    bzero(a1, v10);
    *a1 = v13;
    v14 = 1;
    if (v6 > 1)
    {
      goto LABEL_43;
    }

    goto LABEL_40;
  }

  v14 = (v13 >> (8 * v10)) + 1;
  if (!v10)
  {
LABEL_39:
    if (v6 > 1)
    {
      goto LABEL_43;
    }

    goto LABEL_40;
  }

  v15 = v13 & ~(-1 << (8 * v10));
  bzero(a1, v10);
  if (v10 == 3)
  {
    *a1 = v15;
    a1[2] = BYTE2(v15);
    goto LABEL_39;
  }

  if (v10 == 2)
  {
    *a1 = v15;
    if (v6 > 1)
    {
LABEL_43:
      if (v6 == 2)
      {
        *&a1[v10] = v14;
      }

      else
      {
        *&a1[v10] = v14;
      }

      return;
    }
  }

  else
  {
    *a1 = v13;
    if (v6 > 1)
    {
      goto LABEL_43;
    }
  }

LABEL_40:
  if (v6)
  {
    a1[v10] = v14;
  }
}

uint64_t View.workoutViewStyle(_:)()
{
  swift_getKeyPath();
  View.environment<A>(_:_:)();
}

Swift::Int WorkoutViewStyle.hashValue.getter()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  MEMORY[0x20F30CD90](v1);
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance WorkoutViewStyle()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  MEMORY[0x20F30CD90](v1);
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance WorkoutViewStyle()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  MEMORY[0x20F30CD90](v1);
  return Hasher._finalize()();
}

uint64_t protocol witness for static EnvironmentKey._valuesEqual(_:_:) in conformance WorkoutViewStyleKey(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = lazy protocol witness table accessor for type WorkoutViewStyle and conformance WorkoutViewStyle();

  return MEMORY[0x282130D40](a1, a2, a3, a4, v8);
}

uint64_t EnvironmentValues.workoutViewStyle.getter()
{
  lazy protocol witness table accessor for type WorkoutViewStyleKey and conformance WorkoutViewStyleKey();

  return EnvironmentValues.subscript.getter();
}

uint64_t (*EnvironmentValues.workoutViewStyle.modify(void *a1))(uint64_t a1)
{
  *a1 = v1;
  a1[1] = lazy protocol witness table accessor for type WorkoutViewStyleKey and conformance WorkoutViewStyleKey();
  EnvironmentValues.subscript.getter();
  return EnvironmentValues.workoutViewStyle.modify;
}

unint64_t lazy protocol witness table accessor for type WorkoutViewStyle and conformance WorkoutViewStyle()
{
  result = lazy protocol witness table cache variable for type WorkoutViewStyle and conformance WorkoutViewStyle;
  if (!lazy protocol witness table cache variable for type WorkoutViewStyle and conformance WorkoutViewStyle)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type WorkoutViewStyle and conformance WorkoutViewStyle);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for WorkoutViewStyle(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF5)
  {
    goto LABEL_17;
  }

  if (a2 + 11 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 11) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 11;
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

      return (*a1 | (v4 << 8)) - 11;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 11;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0xC;
  v8 = v6 - 12;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for WorkoutViewStyle(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 11 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 11) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xF5)
  {
    v4 = 0;
  }

  if (a2 > 0xF4)
  {
    v5 = ((a2 - 245) >> 8) + 1;
    *result = a2 + 11;
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
    *result = a2 + 11;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type _EnvironmentKeyWritingModifier<WorkoutViewStyle> and conformance _EnvironmentKeyWritingModifier<A>()
{
  result = lazy protocol witness table cache variable for type _EnvironmentKeyWritingModifier<WorkoutViewStyle> and conformance _EnvironmentKeyWritingModifier<A>;
  if (!lazy protocol witness table cache variable for type _EnvironmentKeyWritingModifier<WorkoutViewStyle> and conformance _EnvironmentKeyWritingModifier<A>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI30_EnvironmentKeyWritingModifierVy07WorkoutB00G9ViewStyleOGMd);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type _EnvironmentKeyWritingModifier<WorkoutViewStyle> and conformance _EnvironmentKeyWritingModifier<A>);
  }

  return result;
}

uint64_t type metadata accessor for MediaSuggestionsList()
{
  result = type metadata singleton initialization cache for MediaSuggestionsList;
  if (!type metadata singleton initialization cache for MediaSuggestionsList)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void type metadata completion function for MediaSuggestionsList()
{
  type metadata accessor for [WorkoutMediaSuggestion](319, &lazy cache variable for type metadata for [WorkoutMediaSuggestion], MEMORY[0x277D7DAB0], MEMORY[0x277D83940]);
  if (v0 <= 0x3F)
  {
    type metadata accessor for FIUIWorkoutActivityType();
    if (v1 <= 0x3F)
    {
      type metadata accessor for [WorkoutMediaSuggestion](319, &lazy cache variable for type metadata for Binding<MediaPlaybackConfigurationItem>, MEMORY[0x277D7E648], MEMORY[0x277CE11F8]);
      if (v2 <= 0x3F)
      {
        type metadata accessor for Binding<WorkoutMediaSuggestion?>();
        if (v3 <= 0x3F)
        {
          type metadata accessor for Binding<Bool>();
          if (v4 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

void type metadata accessor for [WorkoutMediaSuggestion](uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

double closure #1 in MediaSuggestionsList.body.getter@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v37 = a3;
  v5 = type metadata accessor for PlainButtonStyle();
  v6 = *(v5 - 8);
  v35 = v5;
  v36 = v6;
  MEMORY[0x28223BE20](v5);
  v34 = &v32 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for WorkoutMediaSuggestion();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  v11 = type metadata accessor for MediaSuggestionsList();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v11 - 8);
  v14 = &v32 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI6ButtonVyAA15ModifiedContentVyAEy07WorkoutB005MediaE3RowVAA16_FlexFrameLayoutVGAA01_E13ShapeModifierVyAA9RectangleVGGGMd);
  v16 = *(v15 - 8);
  v32 = v15;
  v33 = v16;
  MEMORY[0x28223BE20](v15);
  v18 = &v32 - v17;
  outlined init with copy of MediaSuggestionsList(a2, v14);
  v19 = a1;
  (*(v9 + 16))(&v32 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v8);
  v20 = (*(v12 + 80) + 16) & ~*(v12 + 80);
  v21 = (v13 + *(v9 + 80) + v20) & ~*(v9 + 80);
  v22 = swift_allocObject();
  outlined init with take of MediaSuggestionsList(v14, v22 + v20, type metadata accessor for MediaSuggestionsList);
  (*(v9 + 32))(v22 + v21, &v32 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0), v8);
  v38 = v19;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyACy07WorkoutB005MediaD3RowVAA16_FlexFrameLayoutVGAA01_D13ShapeModifierVyAA9RectangleVGGMd);
  lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<MediaContentRow, _FlexFrameLayout>, _ContentShapeModifier<Rectangle>> and conformance <> ModifiedContent<A, B>();
  Button.init(action:label:)();
  v23 = v34;
  PlainButtonStyle.init()();
  lazy protocol witness table accessor for type [WorkoutMediaSuggestion] and conformance [A](&lazy protocol witness table cache variable for type Button<ModifiedContent<ModifiedContent<MediaContentRow, _FlexFrameLayout>, _ContentShapeModifier<Rectangle>>> and conformance Button<A>, &_s7SwiftUI6ButtonVyAA15ModifiedContentVyAEy07WorkoutB005MediaE3RowVAA16_FlexFrameLayoutVGAA01_E13ShapeModifierVyAA9RectangleVGGGMd);
  _s7SwiftUI16PlainButtonStyleVAcA09PrimitivedE0AAWlTm_5(&lazy protocol witness table cache variable for type PlainButtonStyle and conformance PlainButtonStyle, MEMORY[0x277CDDB18]);
  v24 = v37;
  v25 = v32;
  v26 = v35;
  View.buttonStyle<A>(_:)();
  (*(v36 + 8))(v23, v26);
  (*(v33 + 8))(v18, v25);
  v27 = static Color.white.getter();
  KeyPath = swift_getKeyPath();
  v29 = (v24 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyAA4ViewPAAE11buttonStyleyQrqd__AA015PrimitiveButtonG0Rd__lFQOyAA0I0VyACyACy07WorkoutB005MediaD3RowVAA16_FlexFrameLayoutVGAA01_D13ShapeModifierVyAA9RectangleVGGG_AA05PlainiG0VQo_AA022_EnvironmentKeyWritingQ0VyAA5ColorVSgGGMd) + 36));
  *v29 = KeyPath;
  v29[1] = v27;
  v30 = v24 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyACyAA4ViewPAAE11buttonStyleyQrqd__AA015PrimitiveButtonG0Rd__lFQOyAA0I0VyACyACy07WorkoutB005MediaD3RowVAA16_FlexFrameLayoutVGAA01_D13ShapeModifierVyAA9RectangleVGGG_AA05PlainiG0VQo_AA022_EnvironmentKeyWritingQ0VyAA5ColorVSgGGAA06_TraitvQ0VyAA04Listl6InsetsxU0VGGMd) + 36);
  *(v30 + 32) = 0;
  result = 0.0;
  *v30 = 0u;
  *(v30 + 16) = 0u;
  return result;
}

uint64_t closure #1 in closure #1 in MediaSuggestionsList.body.getter(uint64_t a1, uint64_t a2)
{
  v45 = type metadata accessor for MediaSuggestionsList();
  MEMORY[0x28223BE20](v45);
  v38 = &v38 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for WorkoutMediaSuggestion();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v39 = &v38 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for Logger();
  v42 = *(v8 - 8);
  v43 = v8;
  MEMORY[0x28223BE20](v8);
  v10 = &v38 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11WorkoutCore0A15MediaSuggestionVSgMd);
  MEMORY[0x28223BE20](v11 - 8);
  v13 = &v38 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v16 = &v38 - v15;
  v47 = *(a1 + 16);
  v48 = *(a1 + 24);
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI7BindingVy11WorkoutCore30MediaPlaybackConfigurationItemCGMd);
  MEMORY[0x20F30B100](&v46, v17);
  v18 = v46;
  WorkoutMediaSuggestion.msSuggestion.getter();
  dispatch thunk of MediaPlaybackConfigurationItem.mediaSuggestion.setter();

  v19 = *(v6 + 16);
  (v19)(v16, a2, v5);
  v40 = v6;
  (*(v6 + 56))(v16, 0, 1, v5);
  v20 = v38;
  outlined init with copy of WorkoutMediaSuggestion?(v16, v13);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI7BindingVy11WorkoutCore0D15MediaSuggestionVSgGMd);
  Binding.wrappedValue.setter();
  _s11WorkoutCore0A15MediaSuggestionVSgWOhTm_0(v16, &_s11WorkoutCore0A15MediaSuggestionVSgMd);
  static WOLog.mediaPlayback.getter();
  v21 = v39;
  v19();
  v44 = a1;
  v22 = v20;
  outlined init with copy of MediaSuggestionsList(a1, v20);
  v41 = v10;
  v23 = Logger.logObject.getter();
  v24 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v23, v24))
  {
    v25 = swift_slowAlloc();
    v26 = swift_slowAlloc();
    v27 = swift_slowAlloc();
    v47 = v27;
    *v25 = 138412546;
    v28 = WorkoutMediaSuggestion.msSuggestion.getter();
    (*(v40 + 8))(v21, v5);
    *(v25 + 4) = v28;
    *v26 = v28;
    *(v25 + 12) = 2080;
    v29 = [*(v20 + 8) localizedName];
    v30 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v32 = v31;

    outlined destroy of MediaSuggestionsList(v22);
    v33 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v30, v32, &v47);

    *(v25 + 14) = v33;
    _os_log_impl(&dword_20C66F000, v23, v24, "Selecting media suggestion: %@ for activity type: %s", v25, 0x16u);
    _s11WorkoutCore0A15MediaSuggestionVSgWOhTm_0(v26, &_sSo8NSObjectCSgMd);
    MEMORY[0x20F30E080](v26, -1, -1);
    __swift_destroy_boxed_opaque_existential_0(v27);
    MEMORY[0x20F30E080](v27, -1, -1);
    MEMORY[0x20F30E080](v25, -1, -1);

    (*(v42 + 8))(v41, v43);
  }

  else
  {

    (*(v40 + 8))(v21, v5);
    (*(v42 + 8))(v41, v43);
    outlined destroy of MediaSuggestionsList(v20);
  }

  v34 = v44 + *(v45 + 32);
  v35 = *v34;
  v36 = *(v34 + 8);
  LOBYTE(v34) = *(v34 + 16);
  v47 = v35;
  *&v48 = v36;
  BYTE8(v48) = v34;
  LOBYTE(v46) = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI7BindingVySbGMd);
  return Binding.wrappedValue.setter();
}

uint64_t closure #2 in closure #1 in MediaSuggestionsList.body.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v25 = a2;
  v3 = type metadata accessor for Font.TextStyle();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v24 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for MediaContentRow();
  MEMORY[0x28223BE20](v7);
  v9 = &v24 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVy07WorkoutB005MediaD3RowVAA16_FlexFrameLayoutVGMd);
  v11 = v10 - 8;
  MEMORY[0x28223BE20](v10);
  v24 = &v24 - v12;
  v13 = type metadata accessor for WorkoutMediaSuggestion();
  (*(*(v13 - 8) + 16))(v9, a1, v13);
  *&v26 = 0x4044000000000000;
  v14 = *MEMORY[0x277CE0A68];
  v15 = *(v4 + 104);
  v15(v6, v14, v3);
  lazy protocol witness table accessor for type Double and conformance Double();
  ScaledMetric.init(wrappedValue:relativeTo:)();
  *&v26 = 0x4020000000000000;
  v15(v6, v14, v3);
  ScaledMetric.init(wrappedValue:relativeTo:)();
  static Alignment.leading.getter();
  _FlexFrameLayout.init(minWidth:idealWidth:maxWidth:minHeight:idealHeight:maxHeight:alignment:)();
  v16 = v24;
  outlined init with take of MediaSuggestionsList(v9, v24, type metadata accessor for MediaContentRow);
  v17 = (v16 + *(v11 + 44));
  v18 = v31;
  v17[4] = v30;
  v17[5] = v18;
  v17[6] = v32;
  v19 = v27;
  *v17 = v26;
  v17[1] = v19;
  v20 = v29;
  v17[2] = v28;
  v17[3] = v20;
  v21 = v16;
  v22 = v25;
  outlined init with take of ModifiedContent<MediaContentRow, _FlexFrameLayout>(v21, v25);
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyACy07WorkoutB005MediaD3RowVAA16_FlexFrameLayoutVGAA01_D13ShapeModifierVyAA9RectangleVGGMd);
  *(v22 + *(result + 36)) = 0;
  return result;
}

uint64_t protocol witness for View.body.getter in conformance MediaSuggestionsList(uint64_t a1)
{
  v2 = *(a1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](a1 - 8);
  v7[1] = *v1;
  outlined init with copy of MediaSuggestionsList(v1, v7 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  v4 = (*(v2 + 80) + 16) & ~*(v2 + 80);
  v5 = swift_allocObject();
  outlined init with take of MediaSuggestionsList(v7 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0), v5 + v4, type metadata accessor for MediaSuggestionsList);

  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay11WorkoutCore0A15MediaSuggestionVGMd);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyACyAA4ViewPAAE11buttonStyleyQrqd__AA015PrimitiveButtonG0Rd__lFQOyAA0I0VyACyACy07WorkoutB005MediaD3RowVAA16_FlexFrameLayoutVGAA01_D13ShapeModifierVyAA9RectangleVGGG_AA05PlainiG0VQo_AA022_EnvironmentKeyWritingQ0VyAA5ColorVSgGGAA06_TraitvQ0VyAA04Listl6InsetsxU0VGGMd);
  lazy protocol witness table accessor for type [WorkoutMediaSuggestion] and conformance [A](&lazy protocol witness table cache variable for type [WorkoutMediaSuggestion] and conformance [A], &_sSay11WorkoutCore0A15MediaSuggestionVGMd);
  lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<<<opaque return type of View.buttonStyle<A>(_:)>>.0, _EnvironmentKeyWritingModifier<Color?>>, _TraitWritingModifier<ListRowInsetsTraitKey>> and conformance <> ModifiedContent<A, B>();
  _s7SwiftUI16PlainButtonStyleVAcA09PrimitivedE0AAWlTm_5(&lazy protocol witness table cache variable for type WorkoutMediaSuggestion and conformance WorkoutMediaSuggestion, MEMORY[0x277D7DAB0]);
  return ForEach<>.init(_:content:)();
}