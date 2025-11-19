uint64_t protocol witness for static Equatable.== infix(_:_:) in conformance Stationary(uint64_t *a1, uint64_t *a2)
{
  v2 = a1[1];
  v3 = *(a1 + 2);
  v4 = *(a1 + 3);
  v5 = *(a1 + 4);
  v6 = *(a1 + 5);
  v7 = a2[1];
  v8 = *(a2 + 2);
  v9 = *(a2 + 3);
  v10 = *(a2 + 4);
  v11 = *(a2 + 5);
  if (_sSasSQRzlE2eeoiySbSayxG_ABtFZ20TextAnimationSupport0B5Model33_5BB6BA5906EF51728AE44082969295EDLLV11ClusterDataV_Tt1g5(*a1, *a2) & 1) != 0 && (_sSasSQRzlE2eeoiySbSayxG_ABtFZ20TextAnimationSupport0B5Model33_5BB6BA5906EF51728AE44082969295EDLLV7ClusterV_Tt1g5(v2, v7))
  {
    v14.origin.x = v3;
    v14.origin.y = v4;
    v14.size.width = v5;
    v14.size.height = v6;
    v15.origin.x = v8;
    v15.origin.y = v9;
    v15.size.width = v10;
    v15.size.height = v11;
    v12 = CGRectEqualToRect(v14, v15);
    if (v12)
    {
      LOBYTE(v12) = static Path.== infix(_:_:)();
    }
  }

  else
  {
    LOBYTE(v12) = 0;
  }

  return v12 & 1;
}

BOOL protocol witness for static Equatable.== infix(_:_:) in conformance Transition(void *__src, const void *a2)
{
  memcpy(v4, __src, sizeof(v4));
  memcpy(__dst, a2, sizeof(__dst));
  return specialized static Transition.== infix(_:_:)(v4, __dst);
}

uint64_t TextWipeTransitionModifier.externalAlign.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = type metadata accessor for EnvironmentValues();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v16 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = MEMORY[0x1E697E7E0];
  v8 = MEMORY[0x1E697DCB8];
  type metadata accessor for TupleView<(ModifiedContent<ForEach<ArraySlice<TextModel.Cluster>, Int, TextWipeTransitionModifier.FadeOutCluster>, _OffsetEffect>, ForEach<ArraySlice<TextModel.Cluster>, Int, TextWipeTransitionModifier.FadeInCluster>)>(0, &lazy cache variable for type metadata for Environment<LayoutDirection>.Content, MEMORY[0x1E697E7E0], MEMORY[0x1E697DCB8]);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v16 - v10;
  v12 = type metadata accessor for TextWipeTransitionModifier(0);
  outlined init with copy of Environment<LayoutDirection>.Content(v1 + *(v12 + 36), v11, &lazy cache variable for type metadata for Environment<LayoutDirection>.Content, v7, v8);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v13 = type metadata accessor for LayoutDirection();
    return (*(*(v13 - 8) + 32))(a1, v11, v13);
  }

  else
  {
    static os_log_type_t.fault.getter();
    v15 = static Log.runtimeIssuesLog.getter();
    os_log(_:dso:log:_:_:)();

    EnvironmentValues.init()();
    swift_getAtKeyPath();

    return (*(v4 + 8))(v6, v3);
  }
}

BOOL protocol witness for static Equatable.== infix(_:_:) in conformance TextWipeTransitionModifier.Model.State(void *__src, const void *a2)
{
  memcpy(v4, __src, 0x131uLL);
  memcpy(__dst, a2, 0x131uLL);
  return specialized static TextWipeTransitionModifier.Model.State.== infix(_:_:)(v4, __dst);
}

void protocol witness for Animatable.animatableData.getter in conformance TextWipeTransitionModifier.KeyframeAnimationProgress(uint64_t a1@<X8>)
{
  v2 = 0.0;
  if (*(v1 + 8))
  {
    v2 = 1.0;
  }

  *a1 = *v1;
  *(a1 + 8) = v2;
}

uint64_t protocol witness for Animatable.animatableData.setter in conformance TextWipeTransitionModifier.KeyframeAnimationProgress(uint64_t result)
{
  v2 = *(result + 8);
  *v1 = *result;
  *(v1 + 8) = v2 >= 1.0;
  return result;
}

uint64_t (*protocol witness for Animatable.animatableData.modify in conformance TextWipeTransitionModifier.KeyframeAnimationProgress(uint64_t a1))(uint64_t result)
{
  *(a1 + 16) = v1;
  v2 = 0.0;
  if (*(v1 + 8))
  {
    v2 = 1.0;
  }

  *a1 = *v1;
  *(a1 + 8) = v2;
  return protocol witness for Animatable.animatableData.modify in conformance TextWipeTransitionModifier.KeyframeAnimationProgress;
}

uint64_t protocol witness for Animatable.animatableData.modify in conformance TextWipeTransitionModifier.KeyframeAnimationProgress(uint64_t result)
{
  v1 = *(result + 16);
  v2 = *(result + 8) >= 1.0;
  *v1 = *result;
  *(v1 + 8) = v2;
  return result;
}

uint64_t closure #1 in TextWipeTransitionModifier.FadeOutCluster.body.getter@<X0>(double *a1@<X0>, __int128 *a2@<X1>, uint64_t a3@<X8>)
{
  v5 = *a1;
  v6 = type metadata accessor for TextWipeTransitionModifier.FadeOutCluster(0);
  v7 = UnitCurve.value(at:)(v5);
  v8 = a2[3];
  v35 = a2[2];
  v36 = v8;
  v9 = a2[5];
  v37 = a2[4];
  v38 = v9;
  v10 = a2[1];
  v33 = *a2;
  v34 = v10;
  v11 = static Alignment.center.getter();
  v13 = v12;
  type metadata accessor for Color?(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<Color>, MEMORY[0x1E69815C0], MEMORY[0x1E69E6F90]);
  v14 = swift_allocObject();
  *(v14 + 16) = xmmword_195CC8D70;
  *(v14 + 32) = static Color.clear.getter();
  *(v14 + 40) = static Color.white.getter();
  v15 = *(a2 + *(v6 + 24));
  v24 = v33;
  v25 = v34;
  v28 = v37;
  v29 = v38;
  v26 = v35;
  v27 = v36;
  MEMORY[0x19A8BD450](v14);
  LinearGradient.init(gradient:startPoint:endPoint:)();
  v16 = v30;

  outlined init with copy of TextModel.Cluster(&v33, &v23);

  v18 = -(v7 * *(a2 + *(v6 + 36)));
  if (!v15)
  {
    v18 = v7 * *(a2 + *(v6 + 36));
  }

  v19 = v27;
  *(a3 + 32) = v26;
  *(a3 + 48) = v19;
  v20 = v29;
  *(a3 + 64) = v28;
  *(a3 + 80) = v20;
  v21 = v25;
  *a3 = v24;
  *(a3 + 16) = v21;
  *(a3 + 96) = v11;
  *(a3 + 104) = v13;
  *(a3 + 112) = v16;
  v22 = v31;
  *(a3 + 136) = v32;
  *(a3 + 120) = v22;
  *(a3 + 152) = 0;
  *(a3 + 160) = v18;
  return result;
}

uint64_t closure #2 in TextWipeTransitionModifier.FadeOutCluster.body.getter@<X0>(uint64_t a1@<X8>)
{
  v34 = a1;
  type metadata accessor for <<opaque return type of static KeyframesBuilder.buildPartialBlock<A, B>(accumulated:next:)>>.0();
  v2 = *(v1 - 8);
  v32 = v1;
  v33 = v2;
  MEMORY[0x1EEE9AC00](v1);
  v31 = &v28 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for UnitCurve();
  MEMORY[0x1EEE9AC00](v4 - 8);
  v5 = MEMORY[0x1E69E63B0];
  type metadata accessor for ModifiedContent<Text, TextGlassWipeTransitionModifier>(0, &lazy cache variable for type metadata for LinearKeyframe<Double>, MEMORY[0x1E69E63B0], MEMORY[0x1E6981FE0], MEMORY[0x1E697E3F8]);
  v7 = v6;
  v8 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v30 = &v28 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v28 - v11;
  MEMORY[0x1EEE9AC00](v13);
  v29 = &v28 - v14;
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v28 - v16;
  MEMORY[0x1EEE9AC00](v18);
  v28 = &v28 - v19;
  v35 = 0;
  type metadata accessor for TextWipeTransitionModifier.FadeOutCluster(0);
  static UnitCurve.linear.getter();
  LinearKeyframe.init(_:duration:timingCurve:)();
  v20 = lazy protocol witness table accessor for type LinearKeyframe<Double> and conformance LinearKeyframe<A>();
  MEMORY[0x19A8BCC30](v17, v5, v7, v20);
  v21 = *(v8 + 8);
  v21(v17, v7);
  v35 = 0x3FF0000000000000;
  static UnitCurve.linear.getter();
  LinearKeyframe.init(_:duration:timingCurve:)();
  v22 = v29;
  MEMORY[0x19A8BCC30](v12, v5, v7, v20);
  v21(v12, v7);
  v23 = v30;
  v24 = v28;
  MEMORY[0x19A8BCC60](v28, v5, v7, v20);
  v25 = v31;
  static KeyframesBuilder.buildPartialBlock<A, B>(accumulated:next:)();
  v35 = v5;
  v36 = v7;
  v37 = v7;
  v38 = v20;
  v39 = v20;
  swift_getOpaqueTypeConformance2();
  v26 = v32;
  static KeyframesBuilder.buildFinalResult<A>(_:)();
  (*(v33 + 8))(v25, v26);
  v21(v23, v7);
  v21(v22, v7);
  return (v21)(v24, v7);
}

uint64_t closure #1 in TextWipeTransitionModifier.FadeInCluster.body.getter@<X0>(uint64_t a1@<X0>, __int128 *a2@<X1>, uint64_t a3@<X8>)
{
  v29 = a3;
  v5 = type metadata accessor for TextWipeTransitionModifier.FadeInCluster(0);
  v6 = v5 - 8;
  v7 = *(v5 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = *a1;
  v28 = *(a1 + 8);
  v10 = UnitCurve.value(at:)(v9);
  v11 = a2[3];
  v53 = a2[2];
  v54 = v11;
  v12 = a2[5];
  v55 = a2[4];
  v56 = v12;
  v13 = a2[1];
  v51 = *a2;
  v52 = v13;
  v14 = static Alignment.center.getter();
  v26 = v15;
  v27 = v14;
  type metadata accessor for Color?(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<Color>, MEMORY[0x1E69815C0], MEMORY[0x1E69E6F90]);
  v16 = swift_allocObject();
  *(v16 + 16) = xmmword_195CC8D70;
  *(v16 + 32) = static Color.white.getter();
  *(v16 + 40) = static Color.clear.getter();
  LODWORD(a1) = *(a2 + *(v6 + 32));
  v42 = v51;
  v43 = v52;
  v46 = v55;
  v47 = v56;
  v44 = v53;
  v45 = v54;
  MEMORY[0x19A8BD450](v16);
  LinearGradient.init(gradient:startPoint:endPoint:)();
  v17 = v48;

  outlined init with copy of TextModel.Cluster(&v51, v40);

  v18 = *(v6 + 44);
  v19 = -((1.0 - v10) * *(a2 + v18));
  if (a1)
  {
    v19 = (1.0 - v10) * *(a2 + v18);
  }

  v33 = v44;
  v34 = v45;
  v35 = v46;
  v36 = v47;
  v31 = v42;
  v32 = v43;
  *&v37 = v27;
  *(&v37 + 1) = v26;
  *&v38[0] = v17;
  *(&v38[1] + 8) = v50;
  *(v38 + 8) = v49;
  *(&v38[2] + 1) = 0;
  v39 = v19;
  v30 = v28;
  outlined init with copy of TextWipeTransitionModifier.FadeInCluster(a2, &v25 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for TextWipeTransitionModifier.FadeInCluster);
  v20 = (*(v7 + 80) + 16) & ~*(v7 + 80);
  v21 = swift_allocObject();
  outlined init with take of TextWipeTransitionModifier(&v25 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), v21 + v20, type metadata accessor for TextWipeTransitionModifier.FadeInCluster);
  v22 = MEMORY[0x1E697E278];
  v23 = MEMORY[0x1E697E830];
  type metadata accessor for _ForegroundStyleModifier<Material>(0, &lazy cache variable for type metadata for ModifiedContent<ModifiedContent<TextWipeTransitionModifier.ClusterView, _MaskAlignmentEffect<ModifiedContent<Rectangle, _ForegroundStyleModifier<LinearGradient>>>>, _OffsetEffect>, type metadata accessor for ModifiedContent<TextWipeTransitionModifier.ClusterView, _MaskAlignmentEffect<ModifiedContent<Rectangle, _ForegroundStyleModifier<LinearGradient>>>>, MEMORY[0x1E697E278], MEMORY[0x1E697E830]);
  lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<TextWipeTransitionModifier.ClusterView, _MaskAlignmentEffect<ModifiedContent<Rectangle, _ForegroundStyleModifier<LinearGradient>>>>, _OffsetEffect> and conformance <> ModifiedContent<A, B>();
  View.onChange<A>(of:initial:_:)();

  v40[8] = v38[1];
  v40[9] = v38[2];
  v41 = v39;
  v40[4] = v35;
  v40[5] = v36;
  v40[6] = v37;
  v40[7] = v38[0];
  v40[0] = v31;
  v40[1] = v32;
  v40[2] = v33;
  v40[3] = v34;
  return outlined destroy of ModifiedContent<ModifiedContent<TextWipeTransitionModifier.ClusterView, _MaskAlignmentEffect<ModifiedContent<Rectangle, _ForegroundStyleModifier<LinearGradient>>>>, _OffsetEffect>(v40, &lazy cache variable for type metadata for ModifiedContent<ModifiedContent<TextWipeTransitionModifier.ClusterView, _MaskAlignmentEffect<ModifiedContent<Rectangle, _ForegroundStyleModifier<LinearGradient>>>>, _OffsetEffect>, type metadata accessor for ModifiedContent<TextWipeTransitionModifier.ClusterView, _MaskAlignmentEffect<ModifiedContent<Rectangle, _ForegroundStyleModifier<LinearGradient>>>>, v22, v23);
}

void *closure #2 in closure #1 in TextWipeTransitionModifier.FadeInCluster.body.getter()
{
  type metadata accessor for TextWipeTransitionModifier.FadeInCluster(0);
  type metadata accessor for Color?(0, &lazy cache variable for type metadata for Binding<Int>, MEMORY[0x1E69E6530], MEMORY[0x1E6981948]);
  v1 = v0;

  result = MEMORY[0x19A8BD400](&v3, v1);
  if (__OFADD__(v3, 1))
  {
    __break(1u);
  }

  else
  {
    Binding.wrappedValue.setter();
  }

  return result;
}

uint64_t closure #2 in TextWipeTransitionModifier.FadeInCluster.body.getter@<X0>(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  v33 = a1;
  v40 = a2;
  type metadata accessor for <<opaque return type of static KeyframesBuilder.buildPartialBlock<A, B>(accumulated:next:)>>.0();
  v3 = *(v2 - 8);
  v38 = v2;
  v39 = v3;
  MEMORY[0x1EEE9AC00](v2);
  v36 = &v33 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for <<opaque return type of static KeyframesBuilder.buildPartialBlock<A, B>(accumulated:next:)>>.0();
  v35 = v5;
  v37 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v44 = &v33 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for UnitCurve();
  MEMORY[0x1EEE9AC00](v7 - 8);
  type metadata accessor for _ViewModifier_Content<TextGlassWipeTransitionModifier>(0, &lazy cache variable for type metadata for LinearKeyframe<TextWipeTransitionModifier.KeyframeAnimationProgress>, lazy protocol witness table accessor for type TextWipeTransitionModifier.KeyframeAnimationProgress and conformance TextWipeTransitionModifier.KeyframeAnimationProgress, &unk_1F0A2D008, MEMORY[0x1E697E3F8]);
  v9 = v8;
  v10 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v42 = &v33 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v34 = &v33 - v13;
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v33 - v15;
  MEMORY[0x1EEE9AC00](v17);
  v41 = &v33 - v18;
  MEMORY[0x1EEE9AC00](v19);
  v21 = &v33 - v20;
  MEMORY[0x1EEE9AC00](v22);
  v43 = &v33 - v23;
  v45 = 0;
  LOBYTE(v46) = 0;
  type metadata accessor for TextWipeTransitionModifier.FadeInCluster(0);
  static UnitCurve.linear.getter();
  lazy protocol witness table accessor for type TextWipeTransitionModifier.KeyframeAnimationProgress and conformance TextWipeTransitionModifier.KeyframeAnimationProgress();
  LinearKeyframe.init(_:duration:timingCurve:)();
  v24 = lazy protocol witness table accessor for type LinearKeyframe<TextWipeTransitionModifier.KeyframeAnimationProgress> and conformance LinearKeyframe<A>();
  MEMORY[0x19A8BCC30](v21, &unk_1F0A2D008, v9, v24);
  v25 = *(v10 + 8);
  v25(v21, v9);
  v45 = 0x3FF0000000000000;
  LOBYTE(v46) = 1;
  static UnitCurve.linear.getter();
  LinearKeyframe.init(_:duration:timingCurve:)();
  MEMORY[0x19A8BCC30](v16, &unk_1F0A2D008, v9, v24);
  v25(v16, v9);
  v45 = 0x3FF0000000000000;
  LOBYTE(v46) = 1;
  static UnitCurve.linear.getter();
  v26 = v42;
  LinearKeyframe.init(_:duration:timingCurve:)();
  v27 = v34;
  MEMORY[0x19A8BCC30](v26, &unk_1F0A2D008, v9, v24);
  v25(v26, v9);
  MEMORY[0x19A8BCC60](v43, &unk_1F0A2D008, v9, v24);
  static KeyframesBuilder.buildPartialBlock<A, B>(accumulated:next:)();
  v45 = &unk_1F0A2D008;
  v46 = v9;
  v47 = v9;
  v48 = v24;
  v49 = v24;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v29 = v36;
  v30 = v35;
  static KeyframesBuilder.buildPartialBlock<A, B>(accumulated:next:)();
  v45 = &unk_1F0A2D008;
  v46 = v30;
  v47 = v9;
  v48 = OpaqueTypeConformance2;
  v49 = v24;
  swift_getOpaqueTypeConformance2();
  v31 = v38;
  static KeyframesBuilder.buildFinalResult<A>(_:)();
  (*(v39 + 8))(v29, v31);
  (*(v37 + 8))(v44, v30);
  v25(v42, v9);
  v25(v27, v9);
  v25(v41, v9);
  return (v25)(v43, v9);
}

uint64_t closure #3 in TextWipeTransitionModifier.FadeOutCluster.body.getter(uint64_t a1, uint64_t (*a2)(void))
{
  a2(0);
  type metadata accessor for Color?(0, &lazy cache variable for type metadata for State<Bool>, MEMORY[0x1E69E6370], MEMORY[0x1E6981790]);
  return State.wrappedValue.setter();
}

double protocol witness for Animatable.animatableData.getter in conformance TextWipeTransitionModifier.MorphClusterView@<D0>(double *a1@<X8>)
{
  result = *(v1 + 192);
  *a1 = result;
  return result;
}

double protocol witness for Animatable.animatableData.setter in conformance TextWipeTransitionModifier.MorphClusterView(double *a1)
{
  result = *a1;
  *(v1 + 192) = *a1;
  return result;
}

double (*protocol witness for Animatable.animatableData.modify in conformance TextWipeTransitionModifier.MorphClusterView(void *a1))(uint64_t a1)
{
  a1[1] = v1;
  *a1 = *(v1 + 192);
  return protocol witness for Animatable.animatableData.modify in conformance TextWipeTransitionModifier.MorphClusterView;
}

double protocol witness for Animatable.animatableData.modify in conformance TextWipeTransitionModifier.MorphClusterView(uint64_t a1)
{
  result = *a1;
  *(*(a1 + 8) + 192) = *a1;
  return result;
}

void TextWipeTransitionModifier.MoveCluster.body.getter(uint64_t a1@<X8>)
{
  v16 = a1;
  v2 = type metadata accessor for TextWipeTransitionModifier.MoveCluster(0);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v19 = *(v1 + *(v5 + 44) + 8);
  v20 = 0;
  type metadata accessor for Color?(0, &lazy cache variable for type metadata for State<Bool>, MEMORY[0x1E69E6370], MEMORY[0x1E6981790]);
  State.wrappedValue.getter();
  v18 = v17;
  v15 = v1;
  outlined init with copy of TextWipeTransitionModifier.FadeInCluster(v1, v14 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for TextWipeTransitionModifier.MoveCluster);
  v6 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v7 = swift_allocObject();
  outlined init with take of TextWipeTransitionModifier(v14 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), v7 + v6, type metadata accessor for TextWipeTransitionModifier.MoveCluster);
  outlined init with copy of TextWipeTransitionModifier.FadeInCluster(v1, v14 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for TextWipeTransitionModifier.MoveCluster);
  v8 = swift_allocObject();
  outlined init with take of TextWipeTransitionModifier(v14 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), v8 + v6, type metadata accessor for TextWipeTransitionModifier.MoveCluster);
  type metadata accessor for KeyframeTrack<Double, Double, <<opaque return type of static KeyframesBuilder.buildPartialBlock<A, B>(accumulated:next:)>>.0>();
  v14[1] = v9;
  type metadata accessor for ModifiedContent<Text, TextGlassWipeTransitionModifier>(0, &lazy cache variable for type metadata for ModifiedContent<TextWipeTransitionModifier.MorphClusterView, _OffsetEffect>, &unk_1F0A2CF08, MEMORY[0x1E697E278], MEMORY[0x1E697E830]);
  lazy protocol witness table accessor for type AODProgressProxy and conformance AODProgressProxy(&lazy protocol witness table cache variable for type KeyframeTrack<Double, Double, <<opaque return type of static KeyframesBuilder.buildPartialBlock<A, B>(accumulated:next:)>>.0> and conformance KeyframeTrack<A, B, C>, type metadata accessor for KeyframeTrack<Double, Double, <<opaque return type of static KeyframesBuilder.buildPartialBlock<A, B>(accumulated:next:)>>.0>);
  lazy protocol witness table accessor for type ModifiedContent<TextWipeTransitionModifier.MorphClusterView, _OffsetEffect> and conformance <> ModifiedContent<A, B>();
  v10 = v16;
  KeyframeAnimator.init<A>(initialValue:trigger:content:keyframes:)();
  outlined init with copy of TextWipeTransitionModifier.FadeInCluster(v15, v14 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for TextWipeTransitionModifier.MoveCluster);
  v11 = swift_allocObject();
  outlined init with take of TextWipeTransitionModifier(v14 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), v11 + v6, type metadata accessor for TextWipeTransitionModifier.MoveCluster);
  type metadata accessor for _ForegroundStyleModifier<Material>(0, &lazy cache variable for type metadata for ModifiedContent<KeyframeAnimator<Double, KeyframeTrack<Double, Double, <<opaque return type of static KeyframesBuilder.buildPartialBlock<A, B>(accumulated:next:)>>.0>, ModifiedContent<TextWipeTransitionModifier.MorphClusterView, _OffsetEffect>>, _AppearanceActionModifier>, type metadata accessor for KeyframeAnimator<Double, KeyframeTrack<Double, Double, <<opaque return type of static KeyframesBuilder.buildPartialBlock<A, B>(accumulated:next:)>>.0>, ModifiedContent<TextWipeTransitionModifier.MorphClusterView, _OffsetEffect>>, MEMORY[0x1E69805D8], MEMORY[0x1E697E830]);
  v13 = (v10 + *(v12 + 36));
  *v13 = partial apply for closure #3 in TextWipeTransitionModifier.MoveCluster.body.getter;
  v13[1] = v11;
  v13[2] = 0;
  v13[3] = 0;
}

uint64_t closure #1 in TextWipeTransitionModifier.MoveCluster.body.getter@<X0>(double *a1@<X0>, _OWORD *a2@<X1>, uint64_t a3@<X8>)
{
  v5 = *a1;
  v6 = type metadata accessor for TextWipeTransitionModifier.MoveCluster(0);
  v7 = UnitCurve.value(at:)(v5);
  v8 = a2[1];
  v9 = a2[3];
  v28 = a2[2];
  v10 = v28;
  v29 = v9;
  v11 = a2[5];
  v12 = a2[7];
  v32 = a2[6];
  v13 = v32;
  v33 = v12;
  v14 = a2[5];
  v16 = a2[3];
  v30 = a2[4];
  v15 = v30;
  v31 = v14;
  v17 = a2[9];
  v18 = a2[11];
  v36 = a2[10];
  v19 = v36;
  v37 = v18;
  v20 = a2[9];
  v21 = a2[7];
  v34 = a2[8];
  v35 = v20;
  v22 = a2[1];
  v27[0] = *a2;
  v23 = v27[0];
  v27[1] = v22;
  *&v20 = (1.0 - v7) * *(a2 + *(v6 + 32));
  *(a3 + 128) = v34;
  *(a3 + 144) = v17;
  v24 = a2[11];
  *(a3 + 160) = v19;
  *(a3 + 176) = v24;
  *(a3 + 64) = v15;
  *(a3 + 80) = v11;
  *(a3 + 96) = v13;
  *(a3 + 112) = v21;
  *a3 = v23;
  *(a3 + 16) = v8;
  *(a3 + 32) = v10;
  *(a3 + 48) = v16;
  *(a3 + 192) = v7;
  *(a3 + 200) = v20;
  *(a3 + 208) = 0;
  return outlined init with copy of TextModel.MorphCluster(v27, &v26);
}

uint64_t closure #2 in TextWipeTransitionModifier.MoveCluster.body.getter@<X0>(uint64_t a1@<X8>)
{
  v32 = a1;
  type metadata accessor for <<opaque return type of static KeyframesBuilder.buildPartialBlock<A, B>(accumulated:next:)>>.0();
  v2 = *(v1 - 8);
  v30 = v1;
  v31 = v2;
  MEMORY[0x1EEE9AC00](v1);
  v29 = &v26 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for UnitCurve();
  MEMORY[0x1EEE9AC00](v4 - 8);
  v5 = MEMORY[0x1E69E63B0];
  type metadata accessor for ModifiedContent<Text, TextGlassWipeTransitionModifier>(0, &lazy cache variable for type metadata for LinearKeyframe<Double>, MEMORY[0x1E69E63B0], MEMORY[0x1E6981FE0], MEMORY[0x1E697E3F8]);
  v7 = v6;
  v8 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v10 = &v26 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v28 = &v26 - v12;
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v26 - v14;
  MEMORY[0x1EEE9AC00](v16);
  v27 = &v26 - v17;
  v33 = 0;
  type metadata accessor for TextWipeTransitionModifier.MoveCluster(0);
  static UnitCurve.linear.getter();
  LinearKeyframe.init(_:duration:timingCurve:)();
  v18 = lazy protocol witness table accessor for type LinearKeyframe<Double> and conformance LinearKeyframe<A>();
  MEMORY[0x19A8BCC30](v15, v5, v7, v18);
  v19 = *(v8 + 8);
  v19(v15, v7);
  v33 = 0x3FF0000000000000;
  static UnitCurve.linear.getter();
  LinearKeyframe.init(_:duration:timingCurve:)();
  v20 = v28;
  MEMORY[0x19A8BCC30](v10, v5, v7, v18);
  v19(v10, v7);
  v21 = v27;
  MEMORY[0x19A8BCC60](v27, v5, v7, v18);
  v22 = v29;
  static KeyframesBuilder.buildPartialBlock<A, B>(accumulated:next:)();
  v33 = v5;
  v34 = v7;
  v35 = v7;
  v36 = v18;
  v37 = v18;
  swift_getOpaqueTypeConformance2();
  v23 = v22;
  v24 = v30;
  static KeyframesBuilder.buildFinalResult<A>(_:)();
  (*(v31 + 8))(v23, v24);
  v19(v10, v7);
  v19(v20, v7);
  return (v19)(v21, v7);
}

uint64_t closure #3 in TextWipeTransitionModifier.MoveCluster.body.getter()
{
  type metadata accessor for TextWipeTransitionModifier.MoveCluster(0);
  type metadata accessor for Color?(0, &lazy cache variable for type metadata for State<Bool>, MEMORY[0x1E69E6370], MEMORY[0x1E6981790]);
  return State.wrappedValue.setter();
}

uint64_t protocol witness for View.body.getter in conformance TextWipeTransitionModifier.StationaryView@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 48);
  v3 = *(v1 + 56);
  v4 = *(v1 + 64);
  v5 = *(v1 + 72);
  *a1 = v2;
  *(a1 + 8) = v3;
  *(a1 + 16) = v4;
  *(a1 + 24) = v5;
  v6 = *(v1 + 80);
  *(a1 + 32) = v6;
  return outlined copy of Path.Storage(v2, v3, v4, v5, v6);
}

uint64_t TextWipeTransitionModifier.TransitionView.body.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v54 = a1;
  type metadata accessor for ForEach<[EditWithAnimationInfo<Int>], Edit<Int>, _ConditionalContent<TupleView<(ModifiedContent<ForEach<ArraySlice<TextModel.Cluster>, Int, TextWipeTransitionModifier.FadeOutCluster>, _OffsetEffect>, ForEach<ArraySlice<TextModel.Cluster>, Int, TextWipeTransitionModifier.FadeInCluster>)>, ForEach<ArraySlice<TextModel.MorphCluster>, Int, TextWipeTransitionModifier.MoveCluster>>>();
  v4 = v3;
  v50 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v49 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for <<opaque return type of View.backdropGroup_temp(_:name:)>>.0();
  v52 = *(v7 - 8);
  v53 = v7;
  MEMORY[0x1EEE9AC00](v7);
  v51 = &v49 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *(v1 + 80);
  v10 = *(v1 + 112);
  v66 = *(v1 + 96);
  v67 = v10;
  v68 = *(v1 + 128);
  v11 = *(v1 + 152);
  v12 = *(v1 + 176);
  v62 = *(v1 + 160);
  v63 = v12;
  v64 = *(v1 + 192);
  v13 = *(v1 + 208);
  v14 = *(v1 + 216);
  v15 = *(v1 + 224);
  v16 = *(v1 + 240);
  v17 = *(v1 + 288);
  v60 = *(v1 + 272);
  v61 = v17;
  v18 = *(v1 + 256);
  v58 = v16;
  v59 = v18;
  v57 = v15;
  v19 = *(v1 + 32);
  v70 = *(v1 + 16);
  v71 = v19;
  v69 = *v1;
  v20 = *(v1 + 304);
  v21 = *&v19;
  v22 = *&v68;
  v23 = static HorizontalAlignment.leading.getter();
  v24 = 0.0;
  v25 = 0.0;
  if ((MEMORY[0x19A8BCD00](v23, v20) & 1) == 0)
  {
    v26 = static HorizontalAlignment.trailing.getter();
    if (MEMORY[0x19A8BCD00](v26, v20))
    {
      v25 = v22 - v21;
    }

    else
    {
      v27 = static HorizontalAlignment.center.getter();
      if (MEMORY[0x19A8BCD00](v27, v20))
      {
        v25 = (v22 - v21) * 0.5;
      }
    }
  }

  v28 = static HorizontalAlignment.leading.getter();
  if ((MEMORY[0x19A8BCD00](v28, v20) & 1) == 0)
  {
    v29 = static HorizontalAlignment.trailing.getter();
    if (MEMORY[0x19A8BCD00](v29, v20))
    {
      v24 = v9 - v21;
    }

    else
    {
      v30 = static HorizontalAlignment.center.getter();
      if (MEMORY[0x19A8BCD00](v30, v20))
      {
        v24 = (v9 - v21) * 0.5;
      }
    }
  }

  v31 = static HorizontalAlignment.leading.getter();
  v32 = 0.0;
  if ((MEMORY[0x19A8BCD00](v31, v20) & 1) == 0)
  {
    v33 = static HorizontalAlignment.trailing.getter();
    if (MEMORY[0x19A8BCD00](v33, v20))
    {
      v32 = v22 - v9;
    }

    else
    {
      v34 = static HorizontalAlignment.center.getter();
      if (MEMORY[0x19A8BCD00](v34, v20))
      {
        v32 = (v22 - v9) * 0.5;
      }
    }
  }

  if (v21 > v22)
  {
    v35 = v14;
  }

  else
  {
    v35 = v13;
  }

  TextModel.sizeOfCharacter.getter();
  v37 = v36;
  TextModel.sizeOfCharacter.getter();
  v39 = v38;
  v65 = v11;
  v56 = v11;
  swift_getKeyPath();
  v40 = swift_allocObject();
  memcpy((v40 + 16), v2, 0x158uLL);
  v41 = v63;
  *(v40 + 360) = v62;
  *(v40 + 376) = v41;
  *(v40 + 392) = v64;
  *(v40 + 408) = v13;
  *(v40 + 416) = v14;
  v42 = v60;
  *(v40 + 456) = v59;
  *(v40 + 472) = v42;
  *(v40 + 488) = v61;
  v43 = v58;
  *(v40 + 424) = v57;
  *(v40 + 440) = v43;
  *(v40 + 504) = v37;
  *(v40 + 512) = v25;
  *(v40 + 520) = v39;
  *(v40 + 528) = v35;
  *(v40 + 536) = v24;
  *(v40 + 544) = v32;
  outlined init with copy of [EditWithAnimationInfo<Int>](&v65, v55);
  outlined init with copy of TextWipeTransitionModifier.TransitionView(v2, v55);
  type metadata accessor for [EditWithAnimationInfo<Int>](0, &lazy cache variable for type metadata for [EditWithAnimationInfo<Int>], &lazy cache variable for type metadata for EditWithAnimationInfo<Int>, type metadata accessor for EditWithAnimationInfo, MEMORY[0x1E69E62F8]);
  type metadata accessor for _ConditionalContent<TupleView<(ModifiedContent<ForEach<ArraySlice<TextModel.Cluster>, Int, TextWipeTransitionModifier.FadeOutCluster>, _OffsetEffect>, ForEach<ArraySlice<TextModel.Cluster>, Int, TextWipeTransitionModifier.FadeInCluster>)>, ForEach<ArraySlice<TextModel.MorphCluster>, Int, TextWipeTransitionModifier.MoveCluster>>.Storage(0, &lazy cache variable for type metadata for _ConditionalContent<TupleView<(ModifiedContent<ForEach<ArraySlice<TextModel.Cluster>, Int, TextWipeTransitionModifier.FadeOutCluster>, _OffsetEffect>, ForEach<ArraySlice<TextModel.Cluster>, Int, TextWipeTransitionModifier.FadeInCluster>)>, ForEach<ArraySlice<TextModel.MorphCluster>, Int, TextWipeTransitionModifier.MoveCluster>>, type metadata accessor for TupleView<(ModifiedContent<ForEach<ArraySlice<TextModel.Cluster>, Int, TextWipeTransitionModifier.FadeOutCluster>, _OffsetEffect>, ForEach<ArraySlice<TextModel.Cluster>, Int, TextWipeTransitionModifier.FadeInCluster>)>, type metadata accessor for ForEach<ArraySlice<TextModel.MorphCluster>, Int, TextWipeTransitionModifier.MoveCluster>, MEMORY[0x1E697F960]);
  lazy protocol witness table accessor for type [EditWithAnimationInfo<Int>] and conformance [A]();
  lazy protocol witness table accessor for type Edit<Int> and conformance <> Edit<A>();
  lazy protocol witness table accessor for type _ConditionalContent<TupleView<(ModifiedContent<ForEach<ArraySlice<TextModel.Cluster>, Int, TextWipeTransitionModifier.FadeOutCluster>, _OffsetEffect>, ForEach<ArraySlice<TextModel.Cluster>, Int, TextWipeTransitionModifier.FadeInCluster>)>, ForEach<ArraySlice<TextModel.MorphCluster>, Int, TextWipeTransitionModifier.MoveCluster>> and conformance <> _ConditionalContent<A, B>();
  ForEach<>.init(_:id:content:)();
  v44 = lazy protocol witness table accessor for type ForEach<ArraySlice<TextModel.MorphCluster>, Int, TextWipeTransitionModifier.MoveCluster> and conformance <> ForEach<A, B, C>(&lazy protocol witness table cache variable for type ForEach<[EditWithAnimationInfo<Int>], Edit<Int>, _ConditionalContent<TupleView<(ModifiedContent<ForEach<ArraySlice<TextModel.Cluster>, Int, TextWipeTransitionModifier.FadeOutCluster>, _OffsetEffect>, ForEach<ArraySlice<TextModel.Cluster>, Int, TextWipeTransitionModifier.FadeInCluster>)>, ForEach<ArraySlice<TextModel.MorphCluster>, Int, TextWipeTransitionModifier.MoveCluster>>> and conformance <> ForEach<A, B, C>, type metadata accessor for ForEach<[EditWithAnimationInfo<Int>], Edit<Int>, _ConditionalContent<TupleView<(ModifiedContent<ForEach<ArraySlice<TextModel.Cluster>, Int, TextWipeTransitionModifier.FadeOutCluster>, _OffsetEffect>, ForEach<ArraySlice<TextModel.Cluster>, Int, TextWipeTransitionModifier.FadeInCluster>)>, ForEach<ArraySlice<TextModel.MorphCluster>, Int, TextWipeTransitionModifier.MoveCluster>>>, lazy protocol witness table accessor for type _ConditionalContent<TupleView<(ModifiedContent<ForEach<ArraySlice<TextModel.Cluster>, Int, TextWipeTransitionModifier.FadeOutCluster>, _OffsetEffect>, ForEach<ArraySlice<TextModel.Cluster>, Int, TextWipeTransitionModifier.FadeInCluster>)>, ForEach<ArraySlice<TextModel.MorphCluster>, Int, TextWipeTransitionModifier.MoveCluster>> and conformance <> _ConditionalContent<A, B>);
  v45 = v51;
  View.backdropGroup_temp(_:name:)();
  (*(v50 + 8))(v6, v4);
  v55[0] = *(v2 + 328);
  type metadata accessor for Color?(0, &lazy cache variable for type metadata for State<Int>, MEMORY[0x1E69E6530], MEMORY[0x1E6981790]);
  State.wrappedValue.getter();
  v46 = swift_allocObject();
  memcpy((v46 + 16), v2, 0x158uLL);
  outlined init with copy of TextWipeTransitionModifier.TransitionView(v2, v55);
  *&v55[0] = v4;
  *(&v55[0] + 1) = v44;
  swift_getOpaqueTypeConformance2();
  v47 = v53;
  View.onChange<A>(of:initial:_:)();

  return (*(v52 + 8))(v45, v47);
}

void closure #1 in TextWipeTransitionModifier.TransitionView.body.getter(unsigned __int8 *a1@<X0>, void *a2@<X1>, _OWORD *a3@<X2>, uint64_t a4@<X8>, double a5@<D0>, double a6@<D1>, double a7@<D2>, double a8@<D3>, double a9@<D4>, double a10@<D5>)
{
  v99 = a4;
  type metadata accessor for ForEach<ArraySlice<TextModel.MorphCluster>, Int, TextWipeTransitionModifier.MoveCluster>();
  v20 = v19;
  v95 = *(v19 - 8);
  MEMORY[0x1EEE9AC00](v19);
  v94 = &v83 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for _ConditionalContent<TupleView<(ModifiedContent<ForEach<ArraySlice<TextModel.Cluster>, Int, TextWipeTransitionModifier.FadeOutCluster>, _OffsetEffect>, ForEach<ArraySlice<TextModel.Cluster>, Int, TextWipeTransitionModifier.FadeInCluster>)>, ForEach<ArraySlice<TextModel.MorphCluster>, Int, TextWipeTransitionModifier.MoveCluster>>.Storage(0, &lazy cache variable for type metadata for _ConditionalContent<TupleView<(ModifiedContent<ForEach<ArraySlice<TextModel.Cluster>, Int, TextWipeTransitionModifier.FadeOutCluster>, _OffsetEffect>, ForEach<ArraySlice<TextModel.Cluster>, Int, TextWipeTransitionModifier.FadeInCluster>)>, ForEach<ArraySlice<TextModel.MorphCluster>, Int, TextWipeTransitionModifier.MoveCluster>>.Storage, type metadata accessor for TupleView<(ModifiedContent<ForEach<ArraySlice<TextModel.Cluster>, Int, TextWipeTransitionModifier.FadeOutCluster>, _OffsetEffect>, ForEach<ArraySlice<TextModel.Cluster>, Int, TextWipeTransitionModifier.FadeInCluster>)>, type metadata accessor for ForEach<ArraySlice<TextModel.MorphCluster>, Int, TextWipeTransitionModifier.MoveCluster>, MEMORY[0x1E697F948]);
  v97 = v22;
  MEMORY[0x1EEE9AC00](v22);
  v24 = &v83 - v23;
  type metadata accessor for TupleView<(ModifiedContent<ForEach<ArraySlice<TextModel.Cluster>, Int, TextWipeTransitionModifier.FadeOutCluster>, _OffsetEffect>, ForEach<ArraySlice<TextModel.Cluster>, Int, TextWipeTransitionModifier.FadeInCluster>)>(0);
  v26 = v25;
  MEMORY[0x1EEE9AC00](v25);
  v93 = &v83 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for ForEach<ArraySlice<TextModel.Cluster>, Int, TextWipeTransitionModifier.FadeOutCluster>(0, &lazy cache variable for type metadata for ForEach<ArraySlice<TextModel.Cluster>, Int, TextWipeTransitionModifier.FadeInCluster>, type metadata accessor for TextWipeTransitionModifier.FadeInCluster);
  v91 = *(v28 - 8);
  v92 = v28;
  MEMORY[0x1EEE9AC00](v28);
  v90 = &v83 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v30);
  v96 = &v83 - v31;
  type metadata accessor for ModifiedContent<ForEach<ArraySlice<TextModel.Cluster>, Int, TextWipeTransitionModifier.FadeOutCluster>, _OffsetEffect>();
  MEMORY[0x1EEE9AC00](v32);
  MEMORY[0x1EEE9AC00](v33);
  v100 = &v83 - v36;
  v37 = *a1;
  v38 = *(a1 + 3);
  v39 = *(a1 + 4);
  v40 = *(a1 + 5);
  v98 = v26;
  if (v37 != 1)
  {
    v73 = a2[18];
    v105[0] = v73;
    if ((v38 & 0x8000000000000000) == 0)
    {
      v74 = *(v73 + 16);
      if (v74 >= v38 && v74 >= v39)
      {
        if ((v39 & 0x8000000000000000) == 0)
        {
          v101 = v73;
          v102 = v73 + 32;
          v103 = v38;
          v104 = (2 * v39) | 1;
          v75 = swift_allocObject();
          v76 = a3[7];
          *(v75 + 112) = a3[6];
          *(v75 + 128) = v76;
          *(v75 + 144) = a3[8];
          v77 = a3[3];
          *(v75 + 48) = a3[2];
          *(v75 + 64) = v77;
          v78 = a3[5];
          *(v75 + 80) = a3[4];
          *(v75 + 96) = v78;
          v79 = a3[1];
          *(v75 + 16) = *a3;
          *(v75 + 32) = v79;
          *(v75 + 160) = v40;
          *(v75 + 168) = a8;
          *(v75 + 176) = a9;
          *(v75 + 184) = a10;
          type metadata accessor for Color?(0, &lazy cache variable for type metadata for ArraySlice<TextModel.MorphCluster>, &type metadata for TextModel.MorphCluster, MEMORY[0x1E69E6948]);
          type metadata accessor for TextWipeTransitionModifier.MoveCluster(0);
          lazy protocol witness table accessor for type ArraySlice<TextModel.MorphCluster> and conformance ArraySlice<A>(&lazy protocol witness table cache variable for type ArraySlice<TextModel.MorphCluster> and conformance ArraySlice<A>, &lazy cache variable for type metadata for ArraySlice<TextModel.MorphCluster>, &type metadata for TextModel.MorphCluster);
          lazy protocol witness table accessor for type TextWipeTransitionModifier.MoveCluster and conformance TextWipeTransitionModifier.MoveCluster();
          v80 = v24;
          lazy protocol witness table accessor for type TextModel.MorphCluster and conformance TextModel.MorphCluster();
          swift_bridgeObjectRetain_n();
          v81 = v94;
          ForEach<>.init(_:content:)();
          v82 = v95;
          (*(v95 + 16))(v80, v81, v20);
          swift_storeEnumTagMultiPayload();
          lazy protocol witness table accessor for type AODProgressProxy and conformance AODProgressProxy(&lazy protocol witness table cache variable for type TupleView<(ModifiedContent<ForEach<ArraySlice<TextModel.Cluster>, Int, TextWipeTransitionModifier.FadeOutCluster>, _OffsetEffect>, ForEach<ArraySlice<TextModel.Cluster>, Int, TextWipeTransitionModifier.FadeInCluster>)> and conformance TupleView<A>, type metadata accessor for TupleView<(ModifiedContent<ForEach<ArraySlice<TextModel.Cluster>, Int, TextWipeTransitionModifier.FadeOutCluster>, _OffsetEffect>, ForEach<ArraySlice<TextModel.Cluster>, Int, TextWipeTransitionModifier.FadeInCluster>)>);
          lazy protocol witness table accessor for type ForEach<ArraySlice<TextModel.MorphCluster>, Int, TextWipeTransitionModifier.MoveCluster> and conformance <> ForEach<A, B, C>(&lazy protocol witness table cache variable for type ForEach<ArraySlice<TextModel.MorphCluster>, Int, TextWipeTransitionModifier.MoveCluster> and conformance <> ForEach<A, B, C>, type metadata accessor for ForEach<ArraySlice<TextModel.MorphCluster>, Int, TextWipeTransitionModifier.MoveCluster>, lazy protocol witness table accessor for type TextWipeTransitionModifier.MoveCluster and conformance TextWipeTransitionModifier.MoveCluster);
          _ConditionalContent<>.init(storage:)();
          outlined destroy of [TextModel.MorphCluster](v105, &lazy cache variable for type metadata for [TextModel.MorphCluster], &type metadata for TextModel.MorphCluster, MEMORY[0x1E69E62F8], type metadata accessor for Color?);
          (*(v82 + 8))(v81, v20);
          return;
        }

        goto LABEL_21;
      }

      goto LABEL_19;
    }

    goto LABEL_17;
  }

  v41 = *(a1 + 1);
  v42 = *(a1 + 2);
  LODWORD(v95) = a1[48];
  v43 = *(a1 + 7);
  v44 = a2[1];
  v45 = a2[13];
  v107 = v44;
  if ((v41 & 0x8000000000000000) != 0)
  {
    __break(1u);
LABEL_17:
    __break(1u);
LABEL_18:
    __break(1u);
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  v46 = *(v44 + 16);
  if (v46 < v41 || v46 < v42)
  {
    goto LABEL_18;
  }

  if (v42 < 0)
  {
LABEL_20:
    __break(1u);
LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

  v84 = v35;
  v85 = a2;
  v86 = v24;
  v87 = v20;
  v101 = v44;
  v102 = v44 + 32;
  v103 = v41;
  v104 = (2 * v42) | 1;
  v89 = v34;
  v47 = swift_allocObject();
  v94 = v45;
  v48 = a3[7];
  *(v47 + 112) = a3[6];
  *(v47 + 128) = v48;
  *(v47 + 144) = a3[8];
  v49 = a3[3];
  *(v47 + 48) = a3[2];
  *(v47 + 64) = v49;
  v50 = a3[5];
  *(v47 + 80) = a3[4];
  *(v47 + 96) = v50;
  v51 = a3[1];
  *(v47 + 16) = *a3;
  *(v47 + 32) = v51;
  *(v47 + 160) = v40;
  *(v47 + 168) = v95;
  *(v47 + 176) = v43;
  *(v47 + 184) = v40;
  *(v47 + 192) = a5;
  type metadata accessor for Color?(0, &lazy cache variable for type metadata for ArraySlice<TextModel.Cluster>, &type metadata for TextModel.Cluster, MEMORY[0x1E69E6948]);
  v88 = type metadata accessor for TextWipeTransitionModifier.FadeOutCluster(0);
  lazy protocol witness table accessor for type ArraySlice<TextModel.MorphCluster> and conformance ArraySlice<A>(&lazy protocol witness table cache variable for type ArraySlice<TextModel.Cluster> and conformance ArraySlice<A>, &lazy cache variable for type metadata for ArraySlice<TextModel.Cluster>, &type metadata for TextModel.Cluster);
  lazy protocol witness table accessor for type AODProgressProxy and conformance AODProgressProxy(&lazy protocol witness table cache variable for type TextWipeTransitionModifier.FadeOutCluster and conformance TextWipeTransitionModifier.FadeOutCluster, type metadata accessor for TextWipeTransitionModifier.FadeOutCluster);
  v52 = lazy protocol witness table accessor for type TextModel.Cluster and conformance TextModel.Cluster();
  swift_bridgeObjectRetain_n();
  v83 = v52;
  v53 = v100;
  v54 = v94;
  ForEach<>.init(_:content:)();
  v55 = v53 + *(v89 + 36);
  *v55 = a6;
  *(v55 + 8) = 0;
  v106 = v54;
  if ((v38 & 0x8000000000000000) != 0)
  {
LABEL_22:
    __break(1u);
    goto LABEL_23;
  }

  v56 = *(v54 + 2);
  if (v56 >= v38 && v56 >= v39)
  {
    if ((v39 & 0x8000000000000000) == 0)
    {
      v105[0] = v54;
      v105[1] = v54 + 32;
      v105[2] = v38;
      v105[3] = (2 * v39) | 1;
      v57 = swift_allocObject();
      v58 = a3[7];
      *(v57 + 112) = a3[6];
      *(v57 + 128) = v58;
      *(v57 + 144) = a3[8];
      v59 = a3[3];
      *(v57 + 48) = a3[2];
      *(v57 + 64) = v59;
      v60 = a3[5];
      *(v57 + 80) = a3[4];
      *(v57 + 96) = v60;
      v61 = a3[1];
      *(v57 + 16) = *a3;
      *(v57 + 32) = v61;
      *(v57 + 160) = v40;
      *(v57 + 168) = v95;
      *(v57 + 176) = v43;
      *(v57 + 184) = v40;
      *(v57 + 192) = a7;
      v62 = v85;
      memcpy((v57 + 200), v85, 0x158uLL);

      v95 = MEMORY[0x1E69E62F8];
      outlined init with copy of TextModel.Cluster?(&v106, &v101, &lazy cache variable for type metadata for [TextModel.Cluster], &type metadata for TextModel.Cluster, MEMORY[0x1E69E62F8], type metadata accessor for Color?);
      outlined init with copy of TextWipeTransitionModifier.TransitionView(v62, &v101);
      type metadata accessor for TextWipeTransitionModifier.FadeInCluster(0);
      lazy protocol witness table accessor for type AODProgressProxy and conformance AODProgressProxy(&lazy protocol witness table cache variable for type TextWipeTransitionModifier.FadeInCluster and conformance TextWipeTransitionModifier.FadeInCluster, type metadata accessor for TextWipeTransitionModifier.FadeInCluster);
      v63 = v96;
      ForEach<>.init(_:content:)();
      v64 = v84;
      outlined init with copy of TextWipeTransitionModifier.FadeInCluster(v100, v84, type metadata accessor for ModifiedContent<ForEach<ArraySlice<TextModel.Cluster>, Int, TextWipeTransitionModifier.FadeOutCluster>, _OffsetEffect>);
      v65 = v90;
      v66 = v91;
      v67 = *(v91 + 16);
      v68 = v92;
      v67(v90, v63, v92);
      v69 = v93;
      outlined init with copy of TextWipeTransitionModifier.FadeInCluster(v64, v93, type metadata accessor for ModifiedContent<ForEach<ArraySlice<TextModel.Cluster>, Int, TextWipeTransitionModifier.FadeOutCluster>, _OffsetEffect>);
      type metadata accessor for (ModifiedContent<ForEach<ArraySlice<TextModel.Cluster>, Int, TextWipeTransitionModifier.FadeOutCluster>, _OffsetEffect>, ForEach<ArraySlice<TextModel.Cluster>, Int, TextWipeTransitionModifier.FadeInCluster>)();
      v67((v69 + *(v70 + 48)), v65, v68);
      v71 = *(v66 + 8);
      v71(v65, v68);
      outlined destroy of (TextModel.ClusterData, TextModel.Cluster)(v64, type metadata accessor for ModifiedContent<ForEach<ArraySlice<TextModel.Cluster>, Int, TextWipeTransitionModifier.FadeOutCluster>, _OffsetEffect>);
      outlined init with copy of TextWipeTransitionModifier.FadeInCluster(v69, v86, type metadata accessor for TupleView<(ModifiedContent<ForEach<ArraySlice<TextModel.Cluster>, Int, TextWipeTransitionModifier.FadeOutCluster>, _OffsetEffect>, ForEach<ArraySlice<TextModel.Cluster>, Int, TextWipeTransitionModifier.FadeInCluster>)>);
      swift_storeEnumTagMultiPayload();
      lazy protocol witness table accessor for type AODProgressProxy and conformance AODProgressProxy(&lazy protocol witness table cache variable for type TupleView<(ModifiedContent<ForEach<ArraySlice<TextModel.Cluster>, Int, TextWipeTransitionModifier.FadeOutCluster>, _OffsetEffect>, ForEach<ArraySlice<TextModel.Cluster>, Int, TextWipeTransitionModifier.FadeInCluster>)> and conformance TupleView<A>, type metadata accessor for TupleView<(ModifiedContent<ForEach<ArraySlice<TextModel.Cluster>, Int, TextWipeTransitionModifier.FadeOutCluster>, _OffsetEffect>, ForEach<ArraySlice<TextModel.Cluster>, Int, TextWipeTransitionModifier.FadeInCluster>)>);
      lazy protocol witness table accessor for type ForEach<ArraySlice<TextModel.MorphCluster>, Int, TextWipeTransitionModifier.MoveCluster> and conformance <> ForEach<A, B, C>(&lazy protocol witness table cache variable for type ForEach<ArraySlice<TextModel.MorphCluster>, Int, TextWipeTransitionModifier.MoveCluster> and conformance <> ForEach<A, B, C>, type metadata accessor for ForEach<ArraySlice<TextModel.MorphCluster>, Int, TextWipeTransitionModifier.MoveCluster>, lazy protocol witness table accessor for type TextWipeTransitionModifier.MoveCluster and conformance TextWipeTransitionModifier.MoveCluster);
      _ConditionalContent<>.init(storage:)();
      v72 = v95;
      outlined destroy of [TextModel.MorphCluster](&v106, &lazy cache variable for type metadata for [TextModel.Cluster], &type metadata for TextModel.Cluster, v95, type metadata accessor for Color?);
      outlined destroy of [TextModel.MorphCluster](&v107, &lazy cache variable for type metadata for [TextModel.Cluster], &type metadata for TextModel.Cluster, v72, type metadata accessor for Color?);
      outlined destroy of (TextModel.ClusterData, TextModel.Cluster)(v69, type metadata accessor for TupleView<(ModifiedContent<ForEach<ArraySlice<TextModel.Cluster>, Int, TextWipeTransitionModifier.FadeOutCluster>, _OffsetEffect>, ForEach<ArraySlice<TextModel.Cluster>, Int, TextWipeTransitionModifier.FadeInCluster>)>);
      v71(v96, v68);
      outlined destroy of (TextModel.ClusterData, TextModel.Cluster)(v100, type metadata accessor for ModifiedContent<ForEach<ArraySlice<TextModel.Cluster>, Int, TextWipeTransitionModifier.FadeOutCluster>, _OffsetEffect>);
      return;
    }

    goto LABEL_24;
  }

LABEL_23:
  __break(1u);
LABEL_24:
  __break(1u);
}

uint64_t closure #1 in closure #1 in TextWipeTransitionModifier.TransitionView.body.getter@<X0>(__int128 *a1@<X0>, uint64_t *a2@<X1>, char a3@<W2>, _OWORD *a4@<X8>, double a5@<D1>, double a6@<D2>, double a7@<D3>)
{
  v13 = a1[3];
  v28 = a1[2];
  v29 = v13;
  v14 = a1[5];
  v30 = a1[4];
  v31 = v14;
  v15 = a1[1];
  v26 = *a1;
  v27 = v15;
  v16 = type metadata accessor for TextWipeTransitionModifier.FadeOutCluster(0);
  outlined init with copy of TextModel.Cluster(&v26, v24);
  static UnitCurve.bezier(startControlPoint:endControlPoint:)();
  v17 = *a2;
  v18 = v29;
  a4[2] = v28;
  a4[3] = v18;
  v19 = v31;
  a4[4] = v30;
  a4[5] = v19;
  v20 = v27;
  *a4 = v26;
  a4[1] = v20;
  *(a4 + v16[6]) = a3;
  *(a4 + v16[7]) = a6;
  *(a4 + v16[8]) = v17;
  *(a4 + v16[9]) = a5 * a7;
  *(a4 + v16[10]) = 0x3FE0000000000000;
  v21 = a4 + v16[11];
  result = State.init(wrappedValue:)();
  v23 = v25;
  *v21 = v24[0];
  *(v21 + 1) = v23;
  return result;
}

__n128 closure #2 in closure #1 in TextWipeTransitionModifier.TransitionView.body.getter@<Q0>(__int128 *a1@<X0>, uint64_t a2@<X1>, char a3@<W2>, _OWORD *a4@<X8>, double a5@<D1>, double a6@<D2>, double a7@<D3>)
{
  v13 = a1[3];
  v32 = a1[2];
  v33 = v13;
  v14 = a1[5];
  v34 = a1[4];
  v35 = v14;
  v15 = a1[1];
  v30 = *a1;
  v31 = v15;
  v16 = type metadata accessor for TextWipeTransitionModifier.FadeInCluster(0);
  outlined init with copy of TextModel.Cluster(&v30, &v28);
  static UnitCurve.bezier(startControlPoint:endControlPoint:)();
  v17 = *(a2 + 8);
  v18 = *(a2 + 16) + a6;
  type metadata accessor for Color?(0, &lazy cache variable for type metadata for State<Int>, MEMORY[0x1E69E6530], MEMORY[0x1E6981790]);
  State.projectedValue.getter();
  v27 = v28;
  v19 = v29;
  v20 = v33;
  a4[2] = v32;
  a4[3] = v20;
  v21 = v35;
  a4[4] = v34;
  a4[5] = v21;
  v22 = v31;
  *a4 = v30;
  a4[1] = v22;
  *(a4 + v16[6]) = a3;
  *(a4 + v16[7]) = v18;
  *(a4 + v16[8]) = v17;
  *(a4 + v16[9]) = a5 * a7;
  *(a4 + v16[10]) = 0x3FE0000000000000;
  v23 = a4 + v16[11];
  State.init(wrappedValue:)();
  v24 = v28.n128_u64[1];
  *v23 = v28.n128_u8[0];
  *(v23 + 1) = v24;
  v25 = (a4 + v16[12]);
  result = v27;
  *v25 = v27;
  v25[1].n128_u64[0] = v19;
  return result;
}

uint64_t closure #3 in closure #1 in TextWipeTransitionModifier.TransitionView.body.getter@<X0>(__int128 *a1@<X0>, uint64_t a2@<X1>, _OWORD *a3@<X8>, double a4@<D0>, double a5@<D1>, double a6@<D2>, double a7@<D3>)
{
  v13 = a1[9];
  v40 = a1[8];
  v41 = v13;
  v14 = a1[11];
  v42 = a1[10];
  v43 = v14;
  v15 = a1[5];
  v36 = a1[4];
  v37 = v15;
  v16 = a1[7];
  v38 = a1[6];
  v39 = v16;
  v17 = a1[1];
  v32 = *a1;
  v33 = v17;
  v18 = a1[3];
  v34 = a1[2];
  v35 = v18;
  v19 = type metadata accessor for TextWipeTransitionModifier.MoveCluster(0);
  outlined init with copy of TextModel.MorphCluster(&v32, v30);
  static UnitCurve.bezier(startControlPoint:endControlPoint:)();
  v20 = *(a2 + 40);
  v21 = v41;
  a3[8] = v40;
  a3[9] = v21;
  v22 = v43;
  a3[10] = v42;
  a3[11] = v22;
  v23 = v37;
  a3[4] = v36;
  a3[5] = v23;
  v24 = v39;
  a3[6] = v38;
  a3[7] = v24;
  v25 = v33;
  *a3 = v32;
  a3[1] = v25;
  v26 = v35;
  a3[2] = v34;
  a3[3] = v26;
  *(a3 + v19[6]) = a4 + a5;
  *(a3 + v19[7]) = v20;
  *(a3 + v19[8]) = a6 + a7;
  v27 = a3 + v19[9];
  result = State.init(wrappedValue:)();
  v29 = v31;
  *v27 = v30[0];
  *(v27 + 1) = v29;
  return result;
}

uint64_t closure #2 in TextWipeTransitionModifier.TransitionView.body.getter(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  v3 = *a2;
  v4 = *(a3 + 152);
  v5 = *(v4 + 16);
  if (v5)
  {
    v6 = 0;
    v7 = (v4 + 64);
    while (1)
    {
      if (*(v7 - 4))
      {
        v8 = *(v7 - 1);
        v9 = *v7 - v8;
        if (__OFSUB__(*v7, v8))
        {
          __break(1u);
          return result;
        }

        v10 = __OFADD__(v6, v9);
        v6 += v9;
        if (v10)
        {
          break;
        }
      }

      v7 += 8;
      if (!--v5)
      {
        goto LABEL_9;
      }
    }

    __break(1u);
LABEL_9:
    if (v3 != v6)
    {
      return result;
    }

    return (*(a3 + 312))();
  }

  if (!v3)
  {
    return (*(a3 + 312))();
  }

  return result;
}

uint64_t TextWipeTransitionModifier.stopTransition()()
{
  memcpy(__dst, v0, sizeof(__dst));
  type metadata accessor for Color?(0, &lazy cache variable for type metadata for State<TextWipeTransitionModifier.Model>, &unk_1F0A2C500, MEMORY[0x1E6981790]);
  State.wrappedValue.getter();
  memcpy(__src, &v23[8], 0x131uLL);
  memcpy(v26, __src, 0x131uLL);
  result = _s20TextAnimationSupport0A22WipeTransitionModifierV5Model33_5BB6BA5906EF51728AE44082969295EDLLV5StateOWOg(v26);
  if (result)
  {
    if (result != 1)
    {
      return result;
    }

    v2 = protocol witness for TextRenderer.draw(layout:in:) in conformance TextWipeTransitionModifier.NullRenderer(v26);
    v3 = v2 + 1;
    v4 = v2 + 2;
    v5 = v2 + 3;
    v6 = v2 + 4;
    v7 = v2 + 5;
  }

  else
  {
    v8 = protocol witness for TextRenderer.draw(layout:in:) in conformance TextWipeTransitionModifier.NullRenderer(v26);
    v2 = (v8 + 96);
    v3 = (v8 + 104);
    v4 = (v8 + 112);
    v5 = (v8 + 120);
    v6 = (v8 + 128);
    v7 = (v8 + 136);
  }

  v9 = *v6;
  v10 = *v5;
  v11 = *v4;
  v12 = *v3;
  v13 = *v2;
  v14 = *v7;

  outlined destroy of TextWipeTransitionModifier.Model.State(__src);
  memcpy(__dst, v0, sizeof(__dst));
  State.wrappedValue.getter();
  memcpy(v19, v23, 0x139uLL);
  outlined destroy of TextWipeTransitionModifier.Model(v19);

  specialized TextModel.combinedPath()(v15, v20);

  *v22 = v13;
  *&v22[8] = v12;
  *&v22[16] = v11;
  *&v22[24] = v10;
  *&v22[32] = v9;
  *&v22[40] = v14;
  *&v22[48] = v20[0];
  *&v22[64] = v20[1];
  v22[80] = v21;
  _s20TextAnimationSupport0A22WipeTransitionModifierV5Model33_5BB6BA5906EF51728AE44082969295EDLLV5StateOWOi0_(v22);
  memcpy(v17, v22, sizeof(v17));
  memcpy(v23, v0, sizeof(v23));
  memcpy(v18, v0, sizeof(v18));
  v16 = MEMORY[0x1E6981790];
  outlined init with copy of TextModel.Cluster?(v23, __dst, &lazy cache variable for type metadata for State<TextWipeTransitionModifier.Model>, &unk_1F0A2C500, MEMORY[0x1E6981790], type metadata accessor for Color?);
  State.wrappedValue.setter();
  memcpy(__dst, v18, sizeof(__dst));
  return outlined destroy of [TextModel.MorphCluster](__dst, &lazy cache variable for type metadata for State<TextWipeTransitionModifier.Model>, &unk_1F0A2C500, v16, type metadata accessor for Color?);
}

uint64_t closure #1 in closure #1 in TextWipeTransitionModifier.body(content:)(uint64_t a1)
{
  MEMORY[0x1EEE9AC00](a1);
  v2 = v1;
  v43 = v3;
  v4 = type metadata accessor for TextWipeTransitionModifier(0);
  v41 = *(v4 - 8);
  v5 = *(v41 + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = type metadata accessor for LayoutDirection();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v37 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v37 - v11;
  memcpy(v53, v2, 0x148uLL);
  type metadata accessor for Color?(0, &lazy cache variable for type metadata for State<TextWipeTransitionModifier.Model>, &unk_1F0A2C500, MEMORY[0x1E6981790]);
  v42 = v13;
  State.wrappedValue.getter();
  memcpy(v54, &v52[1], 0x131uLL);
  memcpy(v55, v54, 0x131uLL);
  v14 = _s20TextAnimationSupport0A22WipeTransitionModifierV5Model33_5BB6BA5906EF51728AE44082969295EDLLV5StateOWOg(v55);
  if (!v14)
  {
    v39 = &v37 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
    v38 = protocol witness for TextRenderer.draw(layout:in:) in conformance TextWipeTransitionModifier.NullRenderer(v55);
    memcpy(v48, v54, 0x131uLL);
    v20 = protocol witness for TextRenderer.draw(layout:in:) in conformance TextWipeTransitionModifier.NullRenderer(v48);
    outlined init with copy of Transition(v20, v53);
    v21 = v2;
    TextWipeTransitionModifier.externalAlign.getter(v12);
    v22 = v2[59];
    (*(v7 + 104))(v9, *MEMORY[0x1E697E7D0], v6);
    lazy protocol witness table accessor for type AODProgressProxy and conformance AODProgressProxy(&lazy protocol witness table cache variable for type LayoutDirection and conformance LayoutDirection, MEMORY[0x1E697E7E0]);
    v23 = dispatch thunk of static Equatable.== infix(_:_:)();
    v24 = *(v7 + 8);
    v24(v9, v6);
    if (v23)
    {
      v40 = v22;
      v25 = v41;
      v26 = v39;
LABEL_11:
      v24(v12, v6);
      outlined init with copy of TextWipeTransitionModifier.FadeInCluster(v21, v26, type metadata accessor for TextWipeTransitionModifier);
      v31 = (*(v25 + 80) + 16) & ~*(v25 + 80);
      v32 = swift_allocObject();
      outlined init with take of TextWipeTransitionModifier(v26, v32 + v31, type metadata accessor for TextWipeTransitionModifier);
      v52[0] = 0;
      State.init(wrappedValue:)();
      v33 = v53[0];
      v34 = v53[1];
      memcpy(v45, v38, sizeof(v45));
      memcpy(v53, v21, 0x148uLL);
      State.wrappedValue.getter();
      memcpy(v46, v52, 0x139uLL);
      outlined destroy of TextWipeTransitionModifier.Model(v46);
      memcpy(v47, v45, 0x130uLL);
      v47[38] = v40;
      v47[39] = partial apply for closure #1 in closure #1 in closure #1 in TextWipeTransitionModifier.body(content:);
      v47[40] = v32;
      v47[41] = v33;
      v47[42] = v34;
      v47[43] = *&v46[0];
      memcpy(v49, v47, 0x160uLL);
      _s7SwiftUI19_ConditionalContentV7StorageOyAA6IDViewVy20TextAnimationSupport0G22WipeTransitionModifierV14StationaryView33_5BB6BA5906EF51728AE44082969295EDLLVSiGAGyAJ0kN0ALLLVSiG_GWOi0_(v49);
      memcpy(v53, v49, 0x161uLL);
      v16 = &lazy cache variable for type metadata for IDView<TextWipeTransitionModifier.TransitionView, Int>;
      v17 = &unk_1F0A2C910;
      v18 = lazy protocol witness table accessor for type TextWipeTransitionModifier.TransitionView and conformance TextWipeTransitionModifier.TransitionView;
      outlined init with copy of TextModel.Cluster?(v47, v52, &lazy cache variable for type metadata for IDView<TextWipeTransitionModifier.TransitionView, Int>, lazy protocol witness table accessor for type TextWipeTransitionModifier.TransitionView and conformance TextWipeTransitionModifier.TransitionView, &unk_1F0A2C910, type metadata accessor for IDView<TextWipeTransitionModifier.StationaryView, Int>);
      type metadata accessor for IDView<TextWipeTransitionModifier.StationaryView, Int>(0, &lazy cache variable for type metadata for IDView<TextWipeTransitionModifier.StationaryView, Int>, lazy protocol witness table accessor for type TextWipeTransitionModifier.StationaryView and conformance TextWipeTransitionModifier.StationaryView);
      type metadata accessor for IDView<TextWipeTransitionModifier.StationaryView, Int>(0, &lazy cache variable for type metadata for IDView<TextWipeTransitionModifier.TransitionView, Int>, lazy protocol witness table accessor for type TextWipeTransitionModifier.TransitionView and conformance TextWipeTransitionModifier.TransitionView);
      lazy protocol witness table accessor for type IDView<TextWipeTransitionModifier.StationaryView, Int> and conformance IDView<A, B>(&lazy protocol witness table cache variable for type IDView<TextWipeTransitionModifier.StationaryView, Int> and conformance IDView<A, B>, &lazy cache variable for type metadata for IDView<TextWipeTransitionModifier.StationaryView, Int>, lazy protocol witness table accessor for type TextWipeTransitionModifier.StationaryView and conformance TextWipeTransitionModifier.StationaryView);
      lazy protocol witness table accessor for type IDView<TextWipeTransitionModifier.StationaryView, Int> and conformance IDView<A, B>(&lazy protocol witness table cache variable for type IDView<TextWipeTransitionModifier.TransitionView, Int> and conformance IDView<A, B>, &lazy cache variable for type metadata for IDView<TextWipeTransitionModifier.TransitionView, Int>, lazy protocol witness table accessor for type TextWipeTransitionModifier.TransitionView and conformance TextWipeTransitionModifier.TransitionView);
      _ConditionalContent<>.init(storage:)();
      memcpy(v52, v44, 0x161uLL);
      _s7SwiftUI19_ConditionalContentV7StorageOyACyAA6IDViewVy20TextAnimationSupport0G22WipeTransitionModifierV14StationaryView33_5BB6BA5906EF51728AE44082969295EDLLVSiGAGyAJ0kN0ALLLVSiGGAA05EmptyN0V_GWOi_(v52);
      memcpy(v53, v52, 0x162uLL);
      type metadata accessor for _ConditionalContent<IDView<TextWipeTransitionModifier.StationaryView, Int>, IDView<TextWipeTransitionModifier.TransitionView, Int>>();
      lazy protocol witness table accessor for type _ConditionalContent<IDView<TextWipeTransitionModifier.StationaryView, Int>, IDView<TextWipeTransitionModifier.TransitionView, Int>> and conformance <> _ConditionalContent<A, B>();
      _ConditionalContent<>.init(storage:)();
      outlined destroy of TextWipeTransitionModifier.Model.State(v54);
      v19 = v47;
      goto LABEL_12;
    }

    v27 = static HorizontalAlignment.leading.getter();
    v28 = MEMORY[0x19A8BCD00](v27, v22);
    v29 = static HorizontalAlignment.trailing.getter();
    v30 = v22;
    v25 = v41;
    v26 = v39;
    if ((v28 & 1) == 0)
    {
      v40 = v30;
      if ((MEMORY[0x19A8BCD00](v29, v30) & 1) == 0)
      {
        goto LABEL_11;
      }

      v29 = static HorizontalAlignment.leading.getter();
    }

    v40 = v29;
    goto LABEL_11;
  }

  if (v14 == 1)
  {
    v15 = protocol witness for TextRenderer.draw(layout:in:) in conformance TextWipeTransitionModifier.NullRenderer(v55);
    v48[2] = *(v15 + 32);
    v48[3] = *(v15 + 48);
    v48[4] = *(v15 + 64);
    LOBYTE(v48[5]) = *(v15 + 80);
    v48[0] = *v15;
    v48[1] = *(v15 + 16);
    memcpy(v53, v2, 0x148uLL);
    State.wrappedValue.getter();
    memcpy(v47, v52, 0x139uLL);
    outlined destroy of TextWipeTransitionModifier.Model(v47);
    LOBYTE(v46[5]) = v48[5];
    v46[2] = v48[2];
    v46[3] = v48[3];
    v46[4] = v48[4];
    v46[0] = v48[0];
    v46[1] = v48[1];
    *(&v46[5] + 1) = v47[0];
    *v49 = v48[0];
    *&v49[16] = v48[1];
    *&v49[80] = v46[5];
    *&v49[64] = v48[4];
    *&v49[48] = v48[3];
    *&v49[32] = v48[2];
    _s7SwiftUI19_ConditionalContentV7StorageOyAA6IDViewVy20TextAnimationSupport0G22WipeTransitionModifierV14StationaryView33_5BB6BA5906EF51728AE44082969295EDLLVSiGAGyAJ0kN0ALLLVSiG_GWOi_(v49);
    memcpy(v53, v49, 0x161uLL);
    outlined init with copy of TextWipeTransitionModifier.Model.State(v54, v52);
    v16 = &lazy cache variable for type metadata for IDView<TextWipeTransitionModifier.StationaryView, Int>;
    v17 = &unk_1F0A2C998;
    v18 = lazy protocol witness table accessor for type TextWipeTransitionModifier.StationaryView and conformance TextWipeTransitionModifier.StationaryView;
    outlined init with copy of TextModel.Cluster?(v46, v52, &lazy cache variable for type metadata for IDView<TextWipeTransitionModifier.StationaryView, Int>, lazy protocol witness table accessor for type TextWipeTransitionModifier.StationaryView and conformance TextWipeTransitionModifier.StationaryView, &unk_1F0A2C998, type metadata accessor for IDView<TextWipeTransitionModifier.StationaryView, Int>);
    type metadata accessor for IDView<TextWipeTransitionModifier.StationaryView, Int>(0, &lazy cache variable for type metadata for IDView<TextWipeTransitionModifier.StationaryView, Int>, lazy protocol witness table accessor for type TextWipeTransitionModifier.StationaryView and conformance TextWipeTransitionModifier.StationaryView);
    type metadata accessor for IDView<TextWipeTransitionModifier.StationaryView, Int>(0, &lazy cache variable for type metadata for IDView<TextWipeTransitionModifier.TransitionView, Int>, lazy protocol witness table accessor for type TextWipeTransitionModifier.TransitionView and conformance TextWipeTransitionModifier.TransitionView);
    lazy protocol witness table accessor for type IDView<TextWipeTransitionModifier.StationaryView, Int> and conformance IDView<A, B>(&lazy protocol witness table cache variable for type IDView<TextWipeTransitionModifier.StationaryView, Int> and conformance IDView<A, B>, &lazy cache variable for type metadata for IDView<TextWipeTransitionModifier.StationaryView, Int>, lazy protocol witness table accessor for type TextWipeTransitionModifier.StationaryView and conformance TextWipeTransitionModifier.StationaryView);
    lazy protocol witness table accessor for type IDView<TextWipeTransitionModifier.StationaryView, Int> and conformance IDView<A, B>(&lazy protocol witness table cache variable for type IDView<TextWipeTransitionModifier.TransitionView, Int> and conformance IDView<A, B>, &lazy cache variable for type metadata for IDView<TextWipeTransitionModifier.TransitionView, Int>, lazy protocol witness table accessor for type TextWipeTransitionModifier.TransitionView and conformance TextWipeTransitionModifier.TransitionView);
    _ConditionalContent<>.init(storage:)();
    memcpy(v52, v44, 0x161uLL);
    _s7SwiftUI19_ConditionalContentV7StorageOyACyAA6IDViewVy20TextAnimationSupport0G22WipeTransitionModifierV14StationaryView33_5BB6BA5906EF51728AE44082969295EDLLVSiGAGyAJ0kN0ALLLVSiGGAA05EmptyN0V_GWOi_(v52);
    memcpy(v53, v52, 0x162uLL);
    type metadata accessor for _ConditionalContent<IDView<TextWipeTransitionModifier.StationaryView, Int>, IDView<TextWipeTransitionModifier.TransitionView, Int>>();
    lazy protocol witness table accessor for type _ConditionalContent<IDView<TextWipeTransitionModifier.StationaryView, Int>, IDView<TextWipeTransitionModifier.TransitionView, Int>> and conformance <> _ConditionalContent<A, B>();
    _ConditionalContent<>.init(storage:)();
    outlined destroy of TextWipeTransitionModifier.Model.State(v54);
    v19 = v46;
LABEL_12:
    outlined destroy of [TextModel.MorphCluster](v19, v16, v18, v17, type metadata accessor for IDView<TextWipeTransitionModifier.StationaryView, Int>);
    memcpy(v53, v51, 0x162uLL);
    goto LABEL_13;
  }

  _s7SwiftUI19_ConditionalContentV7StorageOyACyAA6IDViewVy20TextAnimationSupport0G22WipeTransitionModifierV14StationaryView33_5BB6BA5906EF51728AE44082969295EDLLVSiGAGyAJ0kN0ALLLVSiGGAA05EmptyN0V_GWOi0_(v52);
  memcpy(v51, v52, 0x162uLL);
  type metadata accessor for _ConditionalContent<IDView<TextWipeTransitionModifier.StationaryView, Int>, IDView<TextWipeTransitionModifier.TransitionView, Int>>();
  lazy protocol witness table accessor for type _ConditionalContent<IDView<TextWipeTransitionModifier.StationaryView, Int>, IDView<TextWipeTransitionModifier.TransitionView, Int>> and conformance <> _ConditionalContent<A, B>();
  _ConditionalContent<>.init(storage:)();
LABEL_13:
  v35 = v43;
  memcpy(v52, v53, 0x162uLL);
  v44[0] = 1;
  memcpy(v51, v53, 0x162uLL);
  memcpy(&v50[7], v53, 0x162uLL);
  *v43 = 0;
  *(v35 + 8) = 1;
  memcpy(v35 + 9, v50, 0x169uLL);
  outlined init with copy of _ConditionalContent<_ConditionalContent<IDView<TextWipeTransitionModifier.StationaryView, Int>, IDView<TextWipeTransitionModifier.TransitionView, Int>>, EmptyView>(v51, v49);
  return outlined destroy of ModifiedContent<ModifiedContent<TextWipeTransitionModifier.ClusterView, _MaskAlignmentEffect<ModifiedContent<Rectangle, _ForegroundStyleModifier<LinearGradient>>>>, _OffsetEffect>(v52, &lazy cache variable for type metadata for _ConditionalContent<_ConditionalContent<IDView<TextWipeTransitionModifier.StationaryView, Int>, IDView<TextWipeTransitionModifier.TransitionView, Int>>, EmptyView>, type metadata accessor for _ConditionalContent<IDView<TextWipeTransitionModifier.StationaryView, Int>, IDView<TextWipeTransitionModifier.TransitionView, Int>>, MEMORY[0x1E6981E70], MEMORY[0x1E697F960]);
}

uint64_t key path setter for EnvironmentValues.timeDataSource : EnvironmentValues(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(void), uint64_t (*a6)(char *))
{
  a5(0);
  MEMORY[0x1EEE9AC00]();
  v9 = &v12 - v8;
  (*(v10 + 16))(&v12 - v8, a1);
  return a6(v9);
}

void (*protocol witness for Animatable.animatableData.modify in conformance TextWipeTransitionModifier.NullRenderer(uint64_t *a1))(void *a1)
{
  if (MEMORY[0x1E69E7D08])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  *a1 = v2;
  *(v2 + 32) = Animatable<>.animatableData.modify();
  return protocol witness for Animatable.animatableData.modify in conformance TextWipeTransitionModifier.NullRenderer;
}

void protocol witness for Animatable.animatableData.modify in conformance TextWipeTransitionModifier.NullRenderer(void *a1)
{
  v1 = *a1;
  (*(*a1 + 32))(*a1);

  free(v1);
}

uint64_t specialized Collection.firstIndex(where:)(uint64_t (*a1)(uint64_t), uint64_t a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  if (!v4)
  {
    return 0;
  }

  v7 = 0;
  v8 = *(type metadata accessor for TextModel.ClusterData(0) - 8);
  v9 = a3 + ((*(v8 + 80) + 32) & ~*(v8 + 80));
  v10 = *(v8 + 72);
  while (1)
  {
    v11 = a1(v9);
    if (v3 || (v11 & 1) != 0)
    {
      break;
    }

    ++v7;
    v9 += v10;
    if (v4 == v7)
    {
      return 0;
    }
  }

  return v7;
}

uint64_t partial apply for closure #1 in AODProgressProxy.progress.setter()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v3 = *(v0 + 32);
  result = swift_beginAccess();
  *(v1 + 16) = v2;
  *(v1 + 24) = v3;
  return result;
}

uint64_t type metadata completion function for AODProgressProxy()
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

unint64_t lazy protocol witness table accessor for type TextGlassWipeTransitionModifier and conformance TextGlassWipeTransitionModifier()
{
  result = lazy protocol witness table cache variable for type TextGlassWipeTransitionModifier and conformance TextGlassWipeTransitionModifier;
  if (!lazy protocol witness table cache variable for type TextGlassWipeTransitionModifier and conformance TextGlassWipeTransitionModifier)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type TextGlassWipeTransitionModifier and conformance TextGlassWipeTransitionModifier);
  }

  return result;
}

__n128 __swift_memcpy144_8(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  v2 = *(a2 + 16);
  v3 = *(a2 + 32);
  v4 = *(a2 + 64);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 64) = v4;
  *(a1 + 16) = v2;
  *(a1 + 32) = v3;
  result = *(a2 + 80);
  v6 = *(a2 + 96);
  v7 = *(a2 + 128);
  *(a1 + 112) = *(a2 + 112);
  *(a1 + 128) = v7;
  *(a1 + 80) = result;
  *(a1 + 96) = v6;
  return result;
}

uint64_t getEnumTagSinglePayload for TextGlassWipeTransitionModifier(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 144))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 8);
  if (v3 <= 1)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t storeEnumTagSinglePayload for TextGlassWipeTransitionModifier(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 136) = 0;
    *(result + 120) = 0u;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 144) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 144) = 0;
    }

    if (a2)
    {
      *(result + 8) = -a2;
    }
  }

  return result;
}

void type metadata accessor for ModifiedContent<_ViewModifier_Content<TextGlassWipeTransitionModifier>, TextWipeTransitionModifier>()
{
  if (!lazy cache variable for type metadata for ModifiedContent<_ViewModifier_Content<TextGlassWipeTransitionModifier>, TextWipeTransitionModifier>)
  {
    type metadata accessor for _ViewModifier_Content<TextGlassWipeTransitionModifier>(255, &lazy cache variable for type metadata for _ViewModifier_Content<TextGlassWipeTransitionModifier>, lazy protocol witness table accessor for type TextGlassWipeTransitionModifier and conformance TextGlassWipeTransitionModifier, &type metadata for TextGlassWipeTransitionModifier, MEMORY[0x1E697FDE8]);
    type metadata accessor for TextWipeTransitionModifier(255);
    v0 = type metadata accessor for ModifiedContent();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for ModifiedContent<_ViewModifier_Content<TextGlassWipeTransitionModifier>, TextWipeTransitionModifier>);
    }
  }
}

void type metadata accessor for _ConditionalContent<TupleView<(ModifiedContent<ForEach<ArraySlice<TextModel.Cluster>, Int, TextWipeTransitionModifier.FadeOutCluster>, _OffsetEffect>, ForEach<ArraySlice<TextModel.Cluster>, Int, TextWipeTransitionModifier.FadeInCluster>)>, ForEach<ArraySlice<TextModel.MorphCluster>, Int, TextWipeTransitionModifier.MoveCluster>>.Storage(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t), uint64_t (*a5)(uint64_t, uint64_t, uint64_t))
{
  if (!*a2)
  {
    v9 = a3(255);
    v10 = a4(255);
    v11 = a5(a1, v9, v10);
    if (!v12)
    {
      atomic_store(v11, a2);
    }
  }
}

double _s20TextAnimationSupport0A22WipeTransitionModifierV5Model33_5BB6BA5906EF51728AE44082969295EDLLV5StateOWOi1_(uint64_t a1)
{
  result = 0.0;
  *(a1 + 272) = 0u;
  *(a1 + 288) = 0u;
  *(a1 + 240) = 0u;
  *(a1 + 256) = 0u;
  *(a1 + 208) = 0u;
  *(a1 + 224) = 0u;
  *(a1 + 176) = 0u;
  *(a1 + 192) = 0u;
  *(a1 + 144) = 0u;
  *(a1 + 160) = 0u;
  *(a1 + 112) = 0u;
  *(a1 + 128) = 0u;
  *(a1 + 80) = 0u;
  *(a1 + 96) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 64) = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0u;
  *a1 = 0u;
  *(a1 + 304) = 2;
  return result;
}

uint64_t outlined init with take of TextWipeTransitionModifier(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t outlined destroy of GlassMaterialProvider.Subvariant?(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
{
  type metadata accessor for TupleView<(ModifiedContent<ForEach<ArraySlice<TextModel.Cluster>, Int, TextWipeTransitionModifier.FadeOutCluster>, _OffsetEffect>, ForEach<ArraySlice<TextModel.Cluster>, Int, TextWipeTransitionModifier.FadeInCluster>)>(0, a2, a3, a4);
  (*(*(v5 - 8) + 8))(a1, v5);
  return a1;
}

uint64_t outlined destroy of Environment<String?>(uint64_t a1, unint64_t *a2, unint64_t *a3, uint64_t a4)
{
  type metadata accessor for _EnvironmentKeyWritingModifier<Color?>(0, a2, a3, a4, MEMORY[0x1E697DCC0]);
  (*(*(v5 - 8) + 8))(a1, v5);
  return a1;
}

uint64_t outlined destroy of [TextModel.MorphCluster](uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void))
{
  v6 = a5(0);
  (*(*(v6 - 8) + 8))(a1, v6);
  return a1;
}

unint64_t lazy protocol witness table accessor for type EnvironmentValues.__Key_glassSubvariant and conformance EnvironmentValues.__Key_glassSubvariant()
{
  result = lazy protocol witness table cache variable for type EnvironmentValues.__Key_glassSubvariant and conformance EnvironmentValues.__Key_glassSubvariant;
  if (!lazy protocol witness table cache variable for type EnvironmentValues.__Key_glassSubvariant and conformance EnvironmentValues.__Key_glassSubvariant)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type EnvironmentValues.__Key_glassSubvariant and conformance EnvironmentValues.__Key_glassSubvariant);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type EnvironmentValues.__Key_frost and conformance EnvironmentValues.__Key_frost()
{
  result = lazy protocol witness table cache variable for type EnvironmentValues.__Key_frost and conformance EnvironmentValues.__Key_frost;
  if (!lazy protocol witness table cache variable for type EnvironmentValues.__Key_frost and conformance EnvironmentValues.__Key_frost)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type EnvironmentValues.__Key_frost and conformance EnvironmentValues.__Key_frost);
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_20TextAnimationSupport0A22WipeTransitionModifierV5Model33_5BB6BA5906EF51728AE44082969295EDLLV5StateO(uint64_t a1)
{
  if ((*(a1 + 304) & 2) != 0)
  {
    return (*a1 + 2);
  }

  else
  {
    return *(a1 + 304) & 3;
  }
}

void type metadata completion function for TextWipeTransitionModifier()
{
  type metadata accessor for Color?(319, &lazy cache variable for type metadata for State<TextWipeTransitionModifier.Model>, &unk_1F0A2C500, MEMORY[0x1E6981790]);
  if (v0 <= 0x3F)
  {
    type metadata accessor for TupleView<(ModifiedContent<ForEach<ArraySlice<TextModel.Cluster>, Int, TextWipeTransitionModifier.FadeOutCluster>, _OffsetEffect>, ForEach<ArraySlice<TextModel.Cluster>, Int, TextWipeTransitionModifier.FadeInCluster>)>(319, &lazy cache variable for type metadata for Environment<LayoutDirection>, MEMORY[0x1E697E7E0], MEMORY[0x1E697DCC0]);
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t getEnumTagSinglePayload for TextWipeTransitionTiming(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 144))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for TextWipeTransitionTiming(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 136) = 0;
    *(result + 120) = 0u;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
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

  *(result + 144) = v3;
  return result;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<ModifiedContent<_ViewModifier_Content<TextGlassWipeTransitionModifier>, TextWipeTransitionModifier>, _EnvironmentKeyWritingModifier<TimeDataSource<Date>>>, _ForegroundStyleModifier<Material>> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<_ViewModifier_Content<TextGlassWipeTransitionModifier>, TextWipeTransitionModifier>, _EnvironmentKeyWritingModifier<TimeDataSource<Date>>>, _ForegroundStyleModifier<Material>> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<_ViewModifier_Content<TextGlassWipeTransitionModifier>, TextWipeTransitionModifier>, _EnvironmentKeyWritingModifier<TimeDataSource<Date>>>, _ForegroundStyleModifier<Material>> and conformance <> ModifiedContent<A, B>)
  {
    type metadata accessor for _ConditionalContent<TupleView<(ModifiedContent<ForEach<ArraySlice<TextModel.Cluster>, Int, TextWipeTransitionModifier.FadeOutCluster>, _OffsetEffect>, ForEach<ArraySlice<TextModel.Cluster>, Int, TextWipeTransitionModifier.FadeInCluster>)>, ForEach<ArraySlice<TextModel.MorphCluster>, Int, TextWipeTransitionModifier.MoveCluster>>.Storage(255, &lazy cache variable for type metadata for ModifiedContent<ModifiedContent<ModifiedContent<_ViewModifier_Content<TextGlassWipeTransitionModifier>, TextWipeTransitionModifier>, _EnvironmentKeyWritingModifier<TimeDataSource<Date>>>, _ForegroundStyleModifier<Material>>, type metadata accessor for ModifiedContent<ModifiedContent<_ViewModifier_Content<TextGlassWipeTransitionModifier>, TextWipeTransitionModifier>, _EnvironmentKeyWritingModifier<TimeDataSource<Date>>>, type metadata accessor for _ForegroundStyleModifier<Material>, MEMORY[0x1E697E830]);
    lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<_ViewModifier_Content<TextGlassWipeTransitionModifier>, TextWipeTransitionModifier>, _EnvironmentKeyWritingModifier<TimeDataSource<Date>>> and conformance <> ModifiedContent<A, B>();
    lazy protocol witness table accessor for type AODProgressProxy and conformance AODProgressProxy(&lazy protocol witness table cache variable for type _ForegroundStyleModifier<Material> and conformance _ForegroundStyleModifier<A>, type metadata accessor for _ForegroundStyleModifier<Material>);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<_ViewModifier_Content<TextGlassWipeTransitionModifier>, TextWipeTransitionModifier>, _EnvironmentKeyWritingModifier<TimeDataSource<Date>>>, _ForegroundStyleModifier<Material>> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<_ViewModifier_Content<TextGlassWipeTransitionModifier>, TextWipeTransitionModifier>, _EnvironmentKeyWritingModifier<TimeDataSource<Date>>> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<_ViewModifier_Content<TextGlassWipeTransitionModifier>, TextWipeTransitionModifier>, _EnvironmentKeyWritingModifier<TimeDataSource<Date>>> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<_ViewModifier_Content<TextGlassWipeTransitionModifier>, TextWipeTransitionModifier>, _EnvironmentKeyWritingModifier<TimeDataSource<Date>>> and conformance <> ModifiedContent<A, B>)
  {
    type metadata accessor for ModifiedContent<ModifiedContent<_ViewModifier_Content<TextGlassWipeTransitionModifier>, TextWipeTransitionModifier>, _EnvironmentKeyWritingModifier<TimeDataSource<Date>>>(255);
    lazy protocol witness table accessor for type ModifiedContent<_ViewModifier_Content<TextGlassWipeTransitionModifier>, TextWipeTransitionModifier> and conformance <> ModifiedContent<A, B>();
    lazy protocol witness table accessor for type AODProgressProxy and conformance AODProgressProxy(&lazy protocol witness table cache variable for type _EnvironmentKeyWritingModifier<TimeDataSource<Date>> and conformance _EnvironmentKeyWritingModifier<A>, type metadata accessor for _EnvironmentKeyWritingModifier<TimeDataSource<Date>>);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<_ViewModifier_Content<TextGlassWipeTransitionModifier>, TextWipeTransitionModifier>, _EnvironmentKeyWritingModifier<TimeDataSource<Date>>> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<_ViewModifier_Content<TextGlassWipeTransitionModifier>, TextWipeTransitionModifier> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<_ViewModifier_Content<TextGlassWipeTransitionModifier>, TextWipeTransitionModifier> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<_ViewModifier_Content<TextGlassWipeTransitionModifier>, TextWipeTransitionModifier> and conformance <> ModifiedContent<A, B>)
  {
    type metadata accessor for ModifiedContent<_ViewModifier_Content<TextGlassWipeTransitionModifier>, TextWipeTransitionModifier>();
    lazy protocol witness table accessor for type _ViewModifier_Content<TextGlassWipeTransitionModifier> and conformance _ViewModifier_Content<A>();
    lazy protocol witness table accessor for type AODProgressProxy and conformance AODProgressProxy(&lazy protocol witness table cache variable for type TextWipeTransitionModifier and conformance TextWipeTransitionModifier, type metadata accessor for TextWipeTransitionModifier);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<_ViewModifier_Content<TextGlassWipeTransitionModifier>, TextWipeTransitionModifier> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type _ViewModifier_Content<TextGlassWipeTransitionModifier> and conformance _ViewModifier_Content<A>()
{
  result = lazy protocol witness table cache variable for type _ViewModifier_Content<TextGlassWipeTransitionModifier> and conformance _ViewModifier_Content<A>;
  if (!lazy protocol witness table cache variable for type _ViewModifier_Content<TextGlassWipeTransitionModifier> and conformance _ViewModifier_Content<A>)
  {
    type metadata accessor for _ViewModifier_Content<TextGlassWipeTransitionModifier>(255, &lazy cache variable for type metadata for _ViewModifier_Content<TextGlassWipeTransitionModifier>, lazy protocol witness table accessor for type TextGlassWipeTransitionModifier and conformance TextGlassWipeTransitionModifier, &type metadata for TextGlassWipeTransitionModifier, MEMORY[0x1E697FDE8]);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type _ViewModifier_Content<TextGlassWipeTransitionModifier> and conformance _ViewModifier_Content<A>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type TextWipeTransitionTiming and conformance TextWipeTransitionTiming()
{
  result = lazy protocol witness table cache variable for type TextWipeTransitionTiming and conformance TextWipeTransitionTiming;
  if (!lazy protocol witness table cache variable for type TextWipeTransitionTiming and conformance TextWipeTransitionTiming)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type TextWipeTransitionTiming and conformance TextWipeTransitionTiming);
  }

  return result;
}

uint64_t lazy protocol witness table accessor for type String? and conformance <A> A?(unint64_t *a1, unint64_t *a2, uint64_t a3)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for Color?(255, a2, a3, MEMORY[0x1E69E6720]);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type Color? and conformance <A> A?()
{
  result = lazy protocol witness table cache variable for type Color? and conformance <A> A?;
  if (!lazy protocol witness table cache variable for type Color? and conformance <A> A?)
  {
    type metadata accessor for Color?(255, &lazy cache variable for type metadata for Color?, MEMORY[0x1E69815C0], MEMORY[0x1E69E6720]);
    lazy protocol witness table accessor for type Color and conformance Color();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Color? and conformance <A> A?);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type Color and conformance Color()
{
  result = lazy protocol witness table cache variable for type Color and conformance Color;
  if (!lazy protocol witness table cache variable for type Color and conformance Color)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Color and conformance Color);
  }

  return result;
}

BOOL specialized static TextModel.MorphCluster.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  if (*a1 != *a2)
  {
    return 0;
  }

  v105 = v11;
  v106 = v10;
  v107 = v9;
  v108 = v8;
  v109 = v7;
  v110 = v6;
  v111 = v5;
  v112 = v4;
  v113 = v2;
  v114 = v3;
  v15 = *(a1 + 80);
  v14 = *(a1 + 88);
  v17 = *(a2 + 80);
  v16 = *(a2 + 88);
  result = CGRectEqualToRect(*(a1 + 8), *(a2 + 8));
  if (result)
  {
    v19 = *(a1 + 56);
    v95 = *(a1 + 40);
    v96 = v19;
    v97 = *(a1 + 72);
    v20 = *(a2 + 56);
    v92 = *(a2 + 40);
    v93 = v20;
    v94 = *(a2 + 72);
    v21 = static Path.== infix(_:_:)();
    result = 0;
    if ((v21 & 1) != 0 && v15 == v17 && v14 == v16)
    {
      v22 = *(a1 + 144);
      v88 = *(a1 + 128);
      v89 = v22;
      v23 = *(a1 + 176);
      v90 = *(a1 + 160);
      v91 = v23;
      v24 = *(a1 + 112);
      v86 = *(a1 + 96);
      v87 = v24;
      v25 = *(a2 + 144);
      v83[2] = *(a2 + 128);
      v83[3] = v25;
      v26 = *(a2 + 176);
      v84 = *(a2 + 160);
      v85 = v26;
      v27 = *(a2 + 112);
      v83[0] = *(a2 + 96);
      v83[1] = v27;
      v28 = v86;
      v29 = v87;
      v30 = v88;
      v31 = v89;
      v32 = BYTE8(v90);
      v33 = *(&v90 + 9) | ((*(&v90 + 13) | (HIBYTE(v90) << 16)) << 32);
      v34 = BYTE8(v84);
      v35 = v91;
      if (BYTE8(v90) == 255)
      {
        if (BYTE8(v84) == 255)
        {
          v45 = v90;
          v46 = MEMORY[0x1E69E6720];
          outlined init with copy of TextModel.Cluster?(&v86, &v71, &lazy cache variable for type metadata for TextModel.Cluster?, &type metadata for TextModel.Cluster, MEMORY[0x1E69E6720], type metadata accessor for Color?);
          v47 = v46;
          v42 = v45;
          outlined init with copy of TextModel.Cluster?(v83, &v71, &lazy cache variable for type metadata for TextModel.Cluster?, &type metadata for TextModel.Cluster, v47, type metadata accessor for Color?);
          goto LABEL_17;
        }
      }

      else if (BYTE8(v84) != 255)
      {
        v60 = v90;
        v36 = *(a2 + 144);
        *v73 = *(a2 + 128);
        *&v73[16] = v36;
        v37 = *(a2 + 160);
        v38 = *(a2 + 112);
        v71 = *(a2 + 96);
        v72 = v38;
        *&v73[32] = v37;
        v74 = *(&v84 + 1);
        v75 = *(a2 + 176);
        if (v86 == v71)
        {
          v56 = *&v73[24];
          v57 = *&v73[8];
          v54 = *(&v75 + 1);
          v55 = *&v75;
          v58 = *(&v72 + 1);
          v59 = *v73;
          v40 = *(&v71 + 1);
          v39 = *&v72;
          v41 = MEMORY[0x1E69E6720];
          outlined init with copy of TextModel.Cluster?(&v86, &v61, &lazy cache variable for type metadata for TextModel.Cluster?, &type metadata for TextModel.Cluster, MEMORY[0x1E69E6720], type metadata accessor for Color?);
          outlined init with copy of TextModel.Cluster?(v83, &v61, &lazy cache variable for type metadata for TextModel.Cluster?, &type metadata for TextModel.Cluster, v41, type metadata accessor for Color?);
          v115.origin.x = *(&v28 + 1);
          *&v115.origin.y = v29;
          *&v115.size.height = v30;
          v116.origin.x = v40;
          v116.origin.y = v39;
          v116.size.width = v58;
          v116.size.height = v59;
          if (CGRectEqualToRect(v115, v116))
          {
            v98 = *(&v30 + 1);
            v99 = v31;
            v42 = v60;
            v100 = v60;
            v101 = v32;
            v102 = v57;
            v103 = v56;
            v104 = v34;
            v43 = static Path.== infix(_:_:)();
            outlined destroy of [TextModel.MorphCluster](&v71, &lazy cache variable for type metadata for TextModel.Cluster?, &type metadata for TextModel.Cluster, MEMORY[0x1E69E6720], type metadata accessor for Color?);
            if ((v43 & 1) == 0 || *&v35 != v55 || *(&v35 + 1) != v54)
            {
              v61 = v28;
              v62 = v29;
              v63 = v30;
              v64 = v31;
              v65 = v60;
              v66 = v32;
              v67 = v33;
              v69 = BYTE6(v33);
              v68 = WORD2(v33);
              v70 = v35;
              v44 = MEMORY[0x1E69E6720];
LABEL_21:
              outlined destroy of [TextModel.MorphCluster](&v61, &lazy cache variable for type metadata for TextModel.Cluster?, &type metadata for TextModel.Cluster, v44, type metadata accessor for Color?);
              return 0;
            }

LABEL_17:
            v71 = v28;
            v72 = v29;
            *v73 = v30;
            *&v73[16] = v31;
            *&v73[32] = v42;
            LOBYTE(v74) = v32;
            *(&v74 + 1) = v33;
            HIBYTE(v74) = BYTE6(v33);
            *(&v74 + 5) = WORD2(v33);
            v75 = v35;
            outlined destroy of [TextModel.MorphCluster](&v71, &lazy cache variable for type metadata for TextModel.Cluster?, &type metadata for TextModel.Cluster, MEMORY[0x1E69E6720], type metadata accessor for Color?);
            return 1;
          }
        }

        else
        {
          v52 = MEMORY[0x1E69E6720];
          outlined init with copy of TextModel.Cluster?(&v86, &v61, &lazy cache variable for type metadata for TextModel.Cluster?, &type metadata for TextModel.Cluster, MEMORY[0x1E69E6720], type metadata accessor for Color?);
          outlined init with copy of TextModel.Cluster?(v83, &v61, &lazy cache variable for type metadata for TextModel.Cluster?, &type metadata for TextModel.Cluster, v52, type metadata accessor for Color?);
        }

        v53 = MEMORY[0x1E69E6720];
        outlined destroy of [TextModel.MorphCluster](&v71, &lazy cache variable for type metadata for TextModel.Cluster?, &type metadata for TextModel.Cluster, MEMORY[0x1E69E6720], type metadata accessor for Color?);
        v61 = v28;
        v62 = v29;
        v63 = v30;
        v64 = v31;
        v65 = v60;
        v66 = v32;
        v69 = BYTE6(v33);
        v68 = WORD2(v33);
        v67 = v33;
        v70 = v35;
        v44 = v53;
        goto LABEL_21;
      }

      v71 = v86;
      v72 = v87;
      *v73 = v88;
      *&v73[16] = v89;
      *&v73[32] = v90;
      LOBYTE(v74) = BYTE8(v90);
      *(&v74 + 1) = *(&v90 + 9);
      HIBYTE(v74) = (*(&v90 + 9) | ((*(&v90 + 13) | (HIBYTE(v90) << 16)) << 32)) >> 48;
      *(&v74 + 5) = *(&v90 + 13);
      v75 = v91;
      v48 = *(a2 + 144);
      v78 = *(a2 + 128);
      v79 = v48;
      v49 = *(a2 + 160);
      v50 = *(a2 + 112);
      v76 = *(a2 + 96);
      v77 = v50;
      v80 = v49;
      v81 = *(&v84 + 1);
      v82 = *(a2 + 176);
      v51 = MEMORY[0x1E69E6720];
      outlined init with copy of TextModel.Cluster?(&v86, &v61, &lazy cache variable for type metadata for TextModel.Cluster?, &type metadata for TextModel.Cluster, MEMORY[0x1E69E6720], type metadata accessor for Color?);
      outlined init with copy of TextModel.Cluster?(v83, &v61, &lazy cache variable for type metadata for TextModel.Cluster?, &type metadata for TextModel.Cluster, v51, type metadata accessor for Color?);
      outlined destroy of (TextModel.ClusterData, TextModel.Cluster)(&v71, type metadata accessor for (TextModel.Cluster?, TextModel.Cluster?));
      return 0;
    }
  }

  return result;
}

BOOL specialized static ClusterWithPath.== infix(_:_:)(void *a1, void *a2)
{
  v4 = type metadata accessor for AttributeScopes.FoundationAttributes.DateFieldAttribute.Field();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v36 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for TupleView<(ModifiedContent<ForEach<ArraySlice<TextModel.Cluster>, Int, TextWipeTransitionModifier.FadeOutCluster>, _OffsetEffect>, ForEach<ArraySlice<TextModel.Cluster>, Int, TextWipeTransitionModifier.FadeInCluster>)>(0, &lazy cache variable for type metadata for AttributeScopes.FoundationAttributes.DateFieldAttribute.Field?, MEMORY[0x1E69685B0], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v36 - v9;
  type metadata accessor for (AttributeScopes.FoundationAttributes.DateFieldAttribute.Field?, AttributeScopes.FoundationAttributes.DateFieldAttribute.Field?)();
  v12 = v11;
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v36 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((*a1 != *a2 || a1[1] != a2[1]) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
  {
    return 0;
  }

  v37 = v7;
  v15 = type metadata accessor for ClusterWithPath(0);
  v16 = a1;
  v17 = a2;
  v38 = v15;
  v39 = v16;
  v18 = *(v15 + 20);
  v19 = *(v12 + 48);
  v20 = MEMORY[0x1E69685B0];
  v21 = MEMORY[0x1E69E6720];
  outlined init with copy of Environment<LayoutDirection>.Content(v16 + v18, v14, &lazy cache variable for type metadata for AttributeScopes.FoundationAttributes.DateFieldAttribute.Field?, MEMORY[0x1E69685B0], MEMORY[0x1E69E6720]);
  v22 = v17 + v18;
  v23 = v17;
  outlined init with copy of Environment<LayoutDirection>.Content(v22, &v14[v19], &lazy cache variable for type metadata for AttributeScopes.FoundationAttributes.DateFieldAttribute.Field?, v20, v21);
  v24 = *(v5 + 48);
  if (v24(v14, 1, v4) != 1)
  {
    outlined init with copy of Environment<LayoutDirection>.Content(v14, v10, &lazy cache variable for type metadata for AttributeScopes.FoundationAttributes.DateFieldAttribute.Field?, MEMORY[0x1E69685B0], MEMORY[0x1E69E6720]);
    if (v24(&v14[v19], 1, v4) != 1)
    {
      v25 = &v14[v19];
      v26 = v37;
      (*(v5 + 32))(v37, v25, v4);
      lazy protocol witness table accessor for type AODProgressProxy and conformance AODProgressProxy(&lazy protocol witness table cache variable for type AttributeScopes.FoundationAttributes.DateFieldAttribute.Field and conformance AttributeScopes.FoundationAttributes.DateFieldAttribute.Field, MEMORY[0x1E69685B0]);
      v27 = dispatch thunk of static Equatable.== infix(_:_:)();
      v28 = *(v5 + 8);
      v28(v26, v4);
      v28(v10, v4);
      v23 = v17;
      outlined destroy of GlassMaterialProvider.Subvariant?(v14, &lazy cache variable for type metadata for AttributeScopes.FoundationAttributes.DateFieldAttribute.Field?, MEMORY[0x1E69685B0], MEMORY[0x1E69E6720]);
      if ((v27 & 1) == 0)
      {
        return 0;
      }

      goto LABEL_11;
    }

    (*(v5 + 8))(v10, v4);
LABEL_9:
    outlined destroy of (TextModel.ClusterData, TextModel.Cluster)(v14, type metadata accessor for (AttributeScopes.FoundationAttributes.DateFieldAttribute.Field?, AttributeScopes.FoundationAttributes.DateFieldAttribute.Field?));
    return 0;
  }

  if (v24(&v14[v19], 1, v4) != 1)
  {
    goto LABEL_9;
  }

  outlined destroy of GlassMaterialProvider.Subvariant?(v14, &lazy cache variable for type metadata for AttributeScopes.FoundationAttributes.DateFieldAttribute.Field?, MEMORY[0x1E69685B0], MEMORY[0x1E69E6720]);
LABEL_11:
  v30 = v38;
  v29 = v39;
  if (*(v39 + *(v38 + 24)) == *(v23 + *(v38 + 24)))
  {
    v31 = (v39 + *(v38 + 28));
    v42 = *(v31 + 32);
    v32 = v31[1];
    v40 = *v31;
    v41 = v32;
    v33 = (v23 + *(v38 + 28));
    v45 = *(v33 + 32);
    v34 = v33[1];
    v43 = *v33;
    v44 = v34;
    if (static Path.== infix(_:_:)())
    {
      return CGRectEqualToRect(*(v29 + *(v30 + 32)), *(v23 + *(v30 + 32)));
    }
  }

  return 0;
}

BOOL specialized static Transition.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 8);
  v5 = *(a1 + 16);
  v6 = *(a1 + 24);
  v7 = *(a1 + 32);
  v8 = *(a1 + 40);
  v9 = *(a2 + 8);
  v10 = *(a2 + 16);
  v11 = *(a2 + 24);
  v12 = *(a2 + 32);
  v13 = *(a2 + 40);
  if ((_sSasSQRzlE2eeoiySbSayxG_ABtFZ20TextAnimationSupport0B5Model33_5BB6BA5906EF51728AE44082969295EDLLV11ClusterDataV_Tt1g5(*a1, *a2) & 1) == 0 || (_sSasSQRzlE2eeoiySbSayxG_ABtFZ20TextAnimationSupport0B5Model33_5BB6BA5906EF51728AE44082969295EDLLV7ClusterV_Tt1g5(v4, v9) & 1) == 0)
  {
    goto LABEL_13;
  }

  v46.origin.x = v5;
  v46.origin.y = v6;
  v46.size.width = v7;
  v46.size.height = v8;
  v49.origin.x = v10;
  v49.origin.y = v11;
  v49.size.width = v12;
  v49.size.height = v13;
  v14 = CGRectEqualToRect(v46, v49);
  if (v14)
  {
    v15 = *(a1 + 56);
    v16 = *(a1 + 64);
    v17 = *(a1 + 72);
    v18 = *(a1 + 80);
    v19 = *(a1 + 88);
    v20 = *(a2 + 56);
    v21 = *(a2 + 64);
    v22 = *(a2 + 72);
    v23 = *(a2 + 80);
    v24 = *(a2 + 88);
    if ((_sSasSQRzlE2eeoiySbSayxG_ABtFZ20TextAnimationSupport0B5Model33_5BB6BA5906EF51728AE44082969295EDLLV11ClusterDataV_Tt1g5(*(a1 + 48), *(a2 + 48)) & 1) == 0 || (_sSasSQRzlE2eeoiySbSayxG_ABtFZ20TextAnimationSupport0B5Model33_5BB6BA5906EF51728AE44082969295EDLLV7ClusterV_Tt1g5(v15, v20) & 1) == 0)
    {
      goto LABEL_13;
    }

    v47.origin.x = v16;
    v47.origin.y = v17;
    v47.size.width = v18;
    v47.size.height = v19;
    v50.origin.x = v21;
    v50.origin.y = v22;
    v50.size.width = v23;
    v50.size.height = v24;
    v14 = CGRectEqualToRect(v47, v50);
    if (v14)
    {
      v25 = *(a1 + 104);
      v26 = *(a1 + 112);
      v27 = *(a1 + 120);
      v28 = *(a1 + 128);
      v29 = *(a1 + 136);
      v30 = *(a2 + 104);
      v31 = *(a2 + 112);
      v32 = *(a2 + 120);
      v33 = *(a2 + 128);
      v34 = *(a2 + 136);
      if ((_sSasSQRzlE2eeoiySbSayxG_ABtFZ20TextAnimationSupport0B5Model33_5BB6BA5906EF51728AE44082969295EDLLV11ClusterDataV_Tt1g5(*(a1 + 96), *(a2 + 96)) & 1) == 0 || (_sSasSQRzlE2eeoiySbSayxG_ABtFZ20TextAnimationSupport0B5Model33_5BB6BA5906EF51728AE44082969295EDLLV7ClusterV_Tt1g5(v25, v30) & 1) == 0)
      {
        goto LABEL_13;
      }

      v48.origin.x = v26;
      v48.origin.y = v27;
      v48.size.width = v28;
      v48.size.height = v29;
      v51.origin.x = v31;
      v51.origin.y = v32;
      v51.size.width = v33;
      v51.size.height = v34;
      v14 = CGRectEqualToRect(v48, v51);
      if (v14)
      {
        if (_sSasSQRzlE2eeoiySbSayxG_ABtFZ20TextAnimationSupport0B5Model33_5BB6BA5906EF51728AE44082969295EDLLV12MorphClusterV_Tt1g5(*(a1 + 144), *(a2 + 144)) & 1) != 0 && (_sSasSQRzlE2eeoiySbSayxG_ABtFZ20TextAnimationSupport08EditWithC4InfoVySiG_Tt1g5(*(a1 + 152), *(a2 + 152)))
        {
          v35 = *(a1 + 272);
          v45[6] = *(a1 + 256);
          v45[7] = v35;
          v45[8] = *(a1 + 288);
          v36 = *(a1 + 208);
          v45[2] = *(a1 + 192);
          v45[3] = v36;
          v37 = *(a1 + 240);
          v45[4] = *(a1 + 224);
          v45[5] = v37;
          v38 = *(a1 + 176);
          v45[0] = *(a1 + 160);
          v45[1] = v38;
          v39 = *(a2 + 272);
          v44[6] = *(a2 + 256);
          v44[7] = v39;
          v44[8] = *(a2 + 288);
          v40 = *(a2 + 208);
          v44[2] = *(a2 + 192);
          v44[3] = v40;
          v41 = *(a2 + 240);
          v44[4] = *(a2 + 224);
          v44[5] = v41;
          v42 = *(a2 + 176);
          v44[0] = *(a2 + 160);
          v44[1] = v42;
          LOBYTE(v14) = specialized static TextWipeTransitionTiming.== infix(_:_:)(v45, v44);
          return v14;
        }

LABEL_13:
        LOBYTE(v14) = 0;
      }
    }
  }

  return v14;
}

BOOL specialized static TextModel.ClusterData.== infix(_:_:)(void *a1, void *a2)
{
  v4 = type metadata accessor for AttributeScopes.FoundationAttributes.DateFieldAttribute.Field();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v26 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for TupleView<(ModifiedContent<ForEach<ArraySlice<TextModel.Cluster>, Int, TextWipeTransitionModifier.FadeOutCluster>, _OffsetEffect>, ForEach<ArraySlice<TextModel.Cluster>, Int, TextWipeTransitionModifier.FadeInCluster>)>(0, &lazy cache variable for type metadata for AttributeScopes.FoundationAttributes.DateFieldAttribute.Field?, MEMORY[0x1E69685B0], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v26 - v9;
  type metadata accessor for (AttributeScopes.FoundationAttributes.DateFieldAttribute.Field?, AttributeScopes.FoundationAttributes.DateFieldAttribute.Field?)();
  v12 = v11;
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v26 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((*a1 != *a2 || a1[1] != a2[1]) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0 || a1[2] != a2[2])
  {
    return 0;
  }

  v26 = v7;
  v27 = v10;
  v15 = *(type metadata accessor for TextModel.ClusterData(0) + 24);
  v16 = *(v12 + 48);
  v17 = v5;
  v18 = MEMORY[0x1E69685B0];
  v19 = MEMORY[0x1E69E6720];
  outlined init with copy of Environment<LayoutDirection>.Content(a1 + v15, v14, &lazy cache variable for type metadata for AttributeScopes.FoundationAttributes.DateFieldAttribute.Field?, MEMORY[0x1E69685B0], MEMORY[0x1E69E6720]);
  outlined init with copy of Environment<LayoutDirection>.Content(a2 + v15, &v14[v16], &lazy cache variable for type metadata for AttributeScopes.FoundationAttributes.DateFieldAttribute.Field?, v18, v19);
  v20 = *(v17 + 48);
  if (v20(v14, 1, v4) == 1)
  {
    if (v20(&v14[v16], 1, v4) == 1)
    {
      outlined destroy of GlassMaterialProvider.Subvariant?(v14, &lazy cache variable for type metadata for AttributeScopes.FoundationAttributes.DateFieldAttribute.Field?, MEMORY[0x1E69685B0], MEMORY[0x1E69E6720]);
      return 1;
    }

    goto LABEL_10;
  }

  v21 = v27;
  outlined init with copy of Environment<LayoutDirection>.Content(v14, v27, &lazy cache variable for type metadata for AttributeScopes.FoundationAttributes.DateFieldAttribute.Field?, MEMORY[0x1E69685B0], MEMORY[0x1E69E6720]);
  if (v20(&v14[v16], 1, v4) == 1)
  {
    (*(v17 + 8))(v21, v4);
LABEL_10:
    outlined destroy of (TextModel.ClusterData, TextModel.Cluster)(v14, type metadata accessor for (AttributeScopes.FoundationAttributes.DateFieldAttribute.Field?, AttributeScopes.FoundationAttributes.DateFieldAttribute.Field?));
    return 0;
  }

  v23 = v26;
  (*(v17 + 32))(v26, &v14[v16], v4);
  lazy protocol witness table accessor for type AODProgressProxy and conformance AODProgressProxy(&lazy protocol witness table cache variable for type AttributeScopes.FoundationAttributes.DateFieldAttribute.Field and conformance AttributeScopes.FoundationAttributes.DateFieldAttribute.Field, MEMORY[0x1E69685B0]);
  v24 = dispatch thunk of static Equatable.== infix(_:_:)();
  v25 = *(v17 + 8);
  v25(v23, v4);
  v25(v21, v4);
  outlined destroy of GlassMaterialProvider.Subvariant?(v14, &lazy cache variable for type metadata for AttributeScopes.FoundationAttributes.DateFieldAttribute.Field?, MEMORY[0x1E69685B0], MEMORY[0x1E69E6720]);
  return (v24 & 1) != 0;
}

BOOL specialized static TextWipeTransitionModifier.Model.State.== infix(_:_:)(void *__src, const void *a2)
{
  memcpy(__dst, __src, 0x131uLL);
  v3 = _s20TextAnimationSupport0A22WipeTransitionModifierV5Model33_5BB6BA5906EF51728AE44082969295EDLLV5StateOWOg(__dst);
  if (!v3)
  {
    v18 = protocol witness for TextRenderer.draw(layout:in:) in conformance TextWipeTransitionModifier.NullRenderer(__dst);
    v19 = *v18;
    v20 = *(v18 + 8);
    v70 = *(v18 + 24);
    v71 = *(v18 + 16);
    v68 = *(v18 + 40);
    v69 = *(v18 + 32);
    v22 = *(v18 + 48);
    v21 = *(v18 + 56);
    v23 = *(v18 + 64);
    v24 = *(v18 + 72);
    v25 = *(v18 + 80);
    v26 = *(v18 + 88);
    v28 = *(v18 + 96);
    v27 = *(v18 + 104);
    v29 = *(v18 + 112);
    v30 = *(v18 + 120);
    v31 = *(v18 + 128);
    v32 = *(v18 + 136);
    v34 = *(v18 + 144);
    v33 = *(v18 + 152);
    v35 = *(v18 + 272);
    v92 = *(v18 + 256);
    v93 = v35;
    v94 = *(v18 + 288);
    v36 = *(v18 + 208);
    v88 = *(v18 + 192);
    v89 = v36;
    v37 = *(v18 + 240);
    v90 = *(v18 + 224);
    v91 = v37;
    v38 = *(v18 + 176);
    v86 = *(v18 + 160);
    v87 = v38;
    memcpy(v84, a2, 0x131uLL);
    if (!_s20TextAnimationSupport0A22WipeTransitionModifierV5Model33_5BB6BA5906EF51728AE44082969295EDLLV5StateOWOg(v84))
    {
      v59 = v26;
      v60 = v25;
      v61 = v24;
      v62 = v23;
      v53 = v32;
      v54 = v31;
      v55 = v30;
      v56 = v29;
      v39 = protocol witness for TextRenderer.draw(layout:in:) in conformance TextWipeTransitionModifier.NullRenderer(v84);
      v40 = *(v39 + 8);
      v66 = *(v39 + 24);
      v67 = *(v39 + 16);
      v64 = *(v39 + 40);
      v65 = *(v39 + 32);
      v41 = *(v39 + 48);
      v63 = *(v39 + 56);
      v42 = *(v39 + 64);
      v43 = *(v39 + 72);
      v44 = *(v39 + 80);
      v45 = *(v39 + 88);
      v57 = *(v39 + 104);
      v58 = *(v39 + 96);
      v46 = *(v39 + 112);
      v47 = *(v39 + 120);
      v48 = *(v39 + 128);
      v49 = *(v39 + 136);
      v51 = *(v39 + 152);
      v52 = *(v39 + 144);
      v81 = *(v39 + 256);
      v82 = *(v39 + 272);
      v83 = *(v39 + 288);
      v77 = *(v39 + 192);
      v78 = *(v39 + 208);
      v79 = *(v39 + 224);
      v80 = *(v39 + 240);
      v73 = *(v39 + 160);
      v75 = *(v39 + 176);
      if (_sSasSQRzlE2eeoiySbSayxG_ABtFZ20TextAnimationSupport0B5Model33_5BB6BA5906EF51728AE44082969295EDLLV11ClusterDataV_Tt1g5(v19, *v39) & 1) != 0 && (_sSasSQRzlE2eeoiySbSayxG_ABtFZ20TextAnimationSupport0B5Model33_5BB6BA5906EF51728AE44082969295EDLLV7ClusterV_Tt1g5(v20, v40))
      {
        v114.origin.y = v70;
        v114.origin.x = v71;
        v114.size.height = v68;
        v114.size.width = v69;
        v118.origin.y = v66;
        v118.origin.x = v67;
        v118.size.height = v64;
        v118.size.width = v65;
        if (CGRectEqualToRect(v114, v118) && (_sSasSQRzlE2eeoiySbSayxG_ABtFZ20TextAnimationSupport0B5Model33_5BB6BA5906EF51728AE44082969295EDLLV11ClusterDataV_Tt1g5(v22, v41) & 1) != 0 && (_sSasSQRzlE2eeoiySbSayxG_ABtFZ20TextAnimationSupport0B5Model33_5BB6BA5906EF51728AE44082969295EDLLV7ClusterV_Tt1g5(v21, v63) & 1) != 0)
        {
          v115.origin.y = v61;
          v115.origin.x = v62;
          v115.size.height = v59;
          v115.size.width = v60;
          v119.origin.x = v42;
          v119.origin.y = v43;
          v119.size.width = v44;
          v119.size.height = v45;
          if (CGRectEqualToRect(v115, v119) && (_sSasSQRzlE2eeoiySbSayxG_ABtFZ20TextAnimationSupport0B5Model33_5BB6BA5906EF51728AE44082969295EDLLV11ClusterDataV_Tt1g5(v28, v58) & 1) != 0 && (_sSasSQRzlE2eeoiySbSayxG_ABtFZ20TextAnimationSupport0B5Model33_5BB6BA5906EF51728AE44082969295EDLLV7ClusterV_Tt1g5(v27, v57) & 1) != 0)
          {
            v116.origin.y = v55;
            v116.origin.x = v56;
            v116.size.height = v53;
            v116.size.width = v54;
            v120.origin.x = v46;
            v120.origin.y = v47;
            v120.size.width = v48;
            v120.size.height = v49;
            if (CGRectEqualToRect(v116, v120) && (_sSasSQRzlE2eeoiySbSayxG_ABtFZ20TextAnimationSupport0B5Model33_5BB6BA5906EF51728AE44082969295EDLLV12MorphClusterV_Tt1g5(v34, v52) & 1) != 0 && (_sSasSQRzlE2eeoiySbSayxG_ABtFZ20TextAnimationSupport08EditWithC4InfoVySiG_Tt1g5(v33, v51) & 1) != 0)
            {
              v101 = v92;
              v102 = v93;
              v103 = v94;
              v97 = v88;
              v98 = v89;
              v100 = v91;
              v99 = v90;
              v96 = v87;
              v95 = v86;
              v110 = v81;
              v111 = v82;
              v112 = v83;
              v106 = v77;
              v107 = v78;
              v109 = v80;
              v108 = v79;
              v105 = v75;
              v104 = v73;
              if (specialized static TextWipeTransitionTiming.== infix(_:_:)(&v95, &v104))
              {
                return 1;
              }
            }
          }
        }
      }
    }

    return 0;
  }

  if (v3 == 1)
  {
    v4 = protocol witness for TextRenderer.draw(layout:in:) in conformance TextWipeTransitionModifier.NullRenderer(__dst);
    v6 = *v4;
    v5 = *(v4 + 8);
    v7 = *(v4 + 16);
    v8 = *(v4 + 24);
    v9 = *(v4 + 32);
    v10 = *(v4 + 40);
    v11 = *(v4 + 64);
    v86 = *(v4 + 48);
    v87 = v11;
    LOBYTE(v88) = *(v4 + 80);
    memcpy(v84, a2, 0x131uLL);
    if (_s20TextAnimationSupport0A22WipeTransitionModifierV5Model33_5BB6BA5906EF51728AE44082969295EDLLV5StateOWOg(v84) == 1)
    {
      v12 = protocol witness for TextRenderer.draw(layout:in:) in conformance TextWipeTransitionModifier.NullRenderer(v84);
      v13 = *(v12 + 8);
      v14 = *(v12 + 16);
      v15 = *(v12 + 24);
      v16 = *(v12 + 32);
      v17 = *(v12 + 40);
      v72 = *(v12 + 48);
      v74 = *(v12 + 64);
      v76 = *(v12 + 80);
      if (_sSasSQRzlE2eeoiySbSayxG_ABtFZ20TextAnimationSupport0B5Model33_5BB6BA5906EF51728AE44082969295EDLLV11ClusterDataV_Tt1g5(v6, *v12) & 1) != 0 && (_sSasSQRzlE2eeoiySbSayxG_ABtFZ20TextAnimationSupport0B5Model33_5BB6BA5906EF51728AE44082969295EDLLV7ClusterV_Tt1g5(v5, v13))
      {
        v113.origin.x = v7;
        v113.origin.y = v8;
        v113.size.width = v9;
        v113.size.height = v10;
        v117.origin.x = v14;
        v117.origin.y = v15;
        v117.size.width = v16;
        v117.size.height = v17;
        if (CGRectEqualToRect(v113, v117))
        {
          v95 = v86;
          v96 = v87;
          LOBYTE(v97) = v88;
          v104 = v72;
          v105 = v74;
          LOBYTE(v106) = v76;
          if (static Path.== infix(_:_:)())
          {
            return 1;
          }
        }
      }
    }

    return 0;
  }

  memcpy(v84, a2, 0x131uLL);
  return _s20TextAnimationSupport0A22WipeTransitionModifierV5Model33_5BB6BA5906EF51728AE44082969295EDLLV5StateOWOg(v84) == 2;
}

uint64_t _s20TextAnimationSupport0A22WipeTransitionModifierV5Model33_5BB6BA5906EF51728AE44082969295EDLLV5StateOWOg(uint64_t a1)
{
  if (*(a1 + 304) <= 1u)
  {
    return *(a1 + 304);
  }

  else
  {
    return (*a1 + 2);
  }
}

uint64_t outlined destroy of (TextModel.ClusterData, TextModel.Cluster)(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

void type metadata accessor for (TextModel.Cluster?, TextModel.Cluster?)()
{
  if (!lazy cache variable for type metadata for (TextModel.Cluster?, TextModel.Cluster?))
  {
    type metadata accessor for Color?(255, &lazy cache variable for type metadata for TextModel.Cluster?, &type metadata for TextModel.Cluster, MEMORY[0x1E69E6720]);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &lazy cache variable for type metadata for (TextModel.Cluster?, TextModel.Cluster?));
    }
  }
}

uint64_t outlined init with copy of Environment<LayoutDirection>.Content(uint64_t a1, uint64_t a2, unint64_t *a3, uint64_t (*a4)(uint64_t), uint64_t (*a5)(uint64_t, uint64_t))
{
  type metadata accessor for TupleView<(ModifiedContent<ForEach<ArraySlice<TextModel.Cluster>, Int, TextWipeTransitionModifier.FadeOutCluster>, _OffsetEffect>, ForEach<ArraySlice<TextModel.Cluster>, Int, TextWipeTransitionModifier.FadeInCluster>)>(0, a3, a4, a5);
  (*(*(v7 - 8) + 16))(a2, a1, v7);
  return a2;
}

void type metadata accessor for (Spacer, _ConditionalContent<_ConditionalContent<IDView<TextWipeTransitionModifier.StationaryView, Int>, IDView<TextWipeTransitionModifier.TransitionView, Int>>, EmptyView>)()
{
  if (!lazy cache variable for type metadata for (Spacer, _ConditionalContent<_ConditionalContent<IDView<TextWipeTransitionModifier.StationaryView, Int>, IDView<TextWipeTransitionModifier.TransitionView, Int>>, EmptyView>))
  {
    type metadata accessor for _ForegroundStyleModifier<Material>(255, &lazy cache variable for type metadata for _ConditionalContent<_ConditionalContent<IDView<TextWipeTransitionModifier.StationaryView, Int>, IDView<TextWipeTransitionModifier.TransitionView, Int>>, EmptyView>, type metadata accessor for _ConditionalContent<IDView<TextWipeTransitionModifier.StationaryView, Int>, IDView<TextWipeTransitionModifier.TransitionView, Int>>, MEMORY[0x1E6981E70], MEMORY[0x1E697F960]);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &lazy cache variable for type metadata for (Spacer, _ConditionalContent<_ConditionalContent<IDView<TextWipeTransitionModifier.StationaryView, Int>, IDView<TextWipeTransitionModifier.TransitionView, Int>>, EmptyView>));
    }
  }
}

void type metadata accessor for _ConditionalContent<IDView<TextWipeTransitionModifier.StationaryView, Int>, IDView<TextWipeTransitionModifier.TransitionView, Int>>()
{
  if (!lazy cache variable for type metadata for _ConditionalContent<IDView<TextWipeTransitionModifier.StationaryView, Int>, IDView<TextWipeTransitionModifier.TransitionView, Int>>)
  {
    type metadata accessor for IDView<TextWipeTransitionModifier.StationaryView, Int>(255, &lazy cache variable for type metadata for IDView<TextWipeTransitionModifier.StationaryView, Int>, lazy protocol witness table accessor for type TextWipeTransitionModifier.StationaryView and conformance TextWipeTransitionModifier.StationaryView);
    type metadata accessor for IDView<TextWipeTransitionModifier.StationaryView, Int>(255, &lazy cache variable for type metadata for IDView<TextWipeTransitionModifier.TransitionView, Int>, lazy protocol witness table accessor for type TextWipeTransitionModifier.TransitionView and conformance TextWipeTransitionModifier.TransitionView);
    v0 = type metadata accessor for _ConditionalContent();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for _ConditionalContent<IDView<TextWipeTransitionModifier.StationaryView, Int>, IDView<TextWipeTransitionModifier.TransitionView, Int>>);
    }
  }
}

unint64_t lazy protocol witness table accessor for type TextWipeTransitionModifier.StationaryView and conformance TextWipeTransitionModifier.StationaryView()
{
  result = lazy protocol witness table cache variable for type TextWipeTransitionModifier.StationaryView and conformance TextWipeTransitionModifier.StationaryView;
  if (!lazy protocol witness table cache variable for type TextWipeTransitionModifier.StationaryView and conformance TextWipeTransitionModifier.StationaryView)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type TextWipeTransitionModifier.StationaryView and conformance TextWipeTransitionModifier.StationaryView);
  }

  return result;
}

void type metadata accessor for IDView<TextWipeTransitionModifier.StationaryView, Int>(uint64_t a1, unint64_t *a2, void (*a3)(void))
{
  if (!*a2)
  {
    a3();
    v4 = type metadata accessor for IDView();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

unint64_t lazy protocol witness table accessor for type TextWipeTransitionModifier.TransitionView and conformance TextWipeTransitionModifier.TransitionView()
{
  result = lazy protocol witness table cache variable for type TextWipeTransitionModifier.TransitionView and conformance TextWipeTransitionModifier.TransitionView;
  if (!lazy protocol witness table cache variable for type TextWipeTransitionModifier.TransitionView and conformance TextWipeTransitionModifier.TransitionView)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type TextWipeTransitionModifier.TransitionView and conformance TextWipeTransitionModifier.TransitionView);
  }

  return result;
}

void type metadata accessor for _ViewModifier_Content<TextWipeTransitionModifier>()
{
  if (!lazy cache variable for type metadata for _ViewModifier_Content<TextWipeTransitionModifier>)
  {
    type metadata accessor for TextWipeTransitionModifier(255);
    lazy protocol witness table accessor for type AODProgressProxy and conformance AODProgressProxy(&lazy protocol witness table cache variable for type TextWipeTransitionModifier and conformance TextWipeTransitionModifier, type metadata accessor for TextWipeTransitionModifier);
    v0 = type metadata accessor for _ViewModifier_Content();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for _ViewModifier_Content<TextWipeTransitionModifier>);
    }
  }
}

void type metadata accessor for _OverlayModifier<ZStack<TupleView<(Spacer, _ConditionalContent<_ConditionalContent<IDView<TextWipeTransitionModifier.StationaryView, Int>, IDView<TextWipeTransitionModifier.TransitionView, Int>>, EmptyView>)>>>()
{
  if (!lazy cache variable for type metadata for _OverlayModifier<ZStack<TupleView<(Spacer, _ConditionalContent<_ConditionalContent<IDView<TextWipeTransitionModifier.StationaryView, Int>, IDView<TextWipeTransitionModifier.TransitionView, Int>>, EmptyView>)>>>)
  {
    type metadata accessor for ZStack<TupleView<(Spacer, _ConditionalContent<_ConditionalContent<IDView<TextWipeTransitionModifier.StationaryView, Int>, IDView<TextWipeTransitionModifier.TransitionView, Int>>, EmptyView>)>>();
    lazy protocol witness table accessor for type AODProgressProxy and conformance AODProgressProxy(&lazy protocol witness table cache variable for type ZStack<TupleView<(Spacer, _ConditionalContent<_ConditionalContent<IDView<TextWipeTransitionModifier.StationaryView, Int>, IDView<TextWipeTransitionModifier.TransitionView, Int>>, EmptyView>)>> and conformance ZStack<A>, type metadata accessor for ZStack<TupleView<(Spacer, _ConditionalContent<_ConditionalContent<IDView<TextWipeTransitionModifier.StationaryView, Int>, IDView<TextWipeTransitionModifier.TransitionView, Int>>, EmptyView>)>>);
    v0 = type metadata accessor for _OverlayModifier();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for _OverlayModifier<ZStack<TupleView<(Spacer, _ConditionalContent<_ConditionalContent<IDView<TextWipeTransitionModifier.StationaryView, Int>, IDView<TextWipeTransitionModifier.TransitionView, Int>>, EmptyView>)>>>);
    }
  }
}

void type metadata accessor for ZStack<TupleView<(Spacer, _ConditionalContent<_ConditionalContent<IDView<TextWipeTransitionModifier.StationaryView, Int>, IDView<TextWipeTransitionModifier.TransitionView, Int>>, EmptyView>)>>()
{
  if (!lazy cache variable for type metadata for ZStack<TupleView<(Spacer, _ConditionalContent<_ConditionalContent<IDView<TextWipeTransitionModifier.StationaryView, Int>, IDView<TextWipeTransitionModifier.TransitionView, Int>>, EmptyView>)>>)
  {
    type metadata accessor for TupleView<(Spacer, _ConditionalContent<_ConditionalContent<IDView<TextWipeTransitionModifier.StationaryView, Int>, IDView<TextWipeTransitionModifier.TransitionView, Int>>, EmptyView>)>(255);
    lazy protocol witness table accessor for type AODProgressProxy and conformance AODProgressProxy(&lazy protocol witness table cache variable for type TupleView<(Spacer, _ConditionalContent<_ConditionalContent<IDView<TextWipeTransitionModifier.StationaryView, Int>, IDView<TextWipeTransitionModifier.TransitionView, Int>>, EmptyView>)> and conformance TupleView<A>, type metadata accessor for TupleView<(Spacer, _ConditionalContent<_ConditionalContent<IDView<TextWipeTransitionModifier.StationaryView, Int>, IDView<TextWipeTransitionModifier.TransitionView, Int>>, EmptyView>)>);
    v0 = type metadata accessor for ZStack();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for ZStack<TupleView<(Spacer, _ConditionalContent<_ConditionalContent<IDView<TextWipeTransitionModifier.StationaryView, Int>, IDView<TextWipeTransitionModifier.TransitionView, Int>>, EmptyView>)>>);
    }
  }
}

void outlined consume of TextWipeTransitionModifier.Model.State(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, unsigned __int8 a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, char a39)
{
  if (a39 == 1)
  {

    outlined consume of Path.Storage(a7, a8, a9, a10, a11);
  }

  else if (!a39)
  {
  }
}

void type metadata accessor for ModifiedContent<ModifiedContent<ModifiedContent<_ViewModifier_Content<TextWipeTransitionModifier>, _OverlayModifier<ZStack<TupleView<(Spacer, _ConditionalContent<_ConditionalContent<IDView<TextWipeTransitionModifier.StationaryView, Int>, IDView<TextWipeTransitionModifier.TransitionView, Int>>, EmptyView>)>>>>, _EnvironmentKeyWritingModifier<LayoutDirection>>, _TextRendererViewModifier<TextWipeTransitionModifier.NullRenderer>>()
{
  if (!lazy cache variable for type metadata for ModifiedContent<ModifiedContent<ModifiedContent<_ViewModifier_Content<TextWipeTransitionModifier>, _OverlayModifier<ZStack<TupleView<(Spacer, _ConditionalContent<_ConditionalContent<IDView<TextWipeTransitionModifier.StationaryView, Int>, IDView<TextWipeTransitionModifier.TransitionView, Int>>, EmptyView>)>>>>, _EnvironmentKeyWritingModifier<LayoutDirection>>, _TextRendererViewModifier<TextWipeTransitionModifier.NullRenderer>>)
  {
    type metadata accessor for _ConditionalContent<TupleView<(ModifiedContent<ForEach<ArraySlice<TextModel.Cluster>, Int, TextWipeTransitionModifier.FadeOutCluster>, _OffsetEffect>, ForEach<ArraySlice<TextModel.Cluster>, Int, TextWipeTransitionModifier.FadeInCluster>)>, ForEach<ArraySlice<TextModel.MorphCluster>, Int, TextWipeTransitionModifier.MoveCluster>>.Storage(255, &lazy cache variable for type metadata for ModifiedContent<ModifiedContent<_ViewModifier_Content<TextWipeTransitionModifier>, _OverlayModifier<ZStack<TupleView<(Spacer, _ConditionalContent<_ConditionalContent<IDView<TextWipeTransitionModifier.StationaryView, Int>, IDView<TextWipeTransitionModifier.TransitionView, Int>>, EmptyView>)>>>>, _EnvironmentKeyWritingModifier<LayoutDirection>>, type metadata accessor for ModifiedContent<_ViewModifier_Content<TextWipeTransitionModifier>, _OverlayModifier<ZStack<TupleView<(Spacer, _ConditionalContent<_ConditionalContent<IDView<TextWipeTransitionModifier.StationaryView, Int>, IDView<TextWipeTransitionModifier.TransitionView, Int>>, EmptyView>)>>>>, type metadata accessor for _EnvironmentKeyWritingModifier<LayoutDirection>, MEMORY[0x1E697E830]);
    type metadata accessor for _ViewModifier_Content<TextGlassWipeTransitionModifier>(255, &lazy cache variable for type metadata for _TextRendererViewModifier<TextWipeTransitionModifier.NullRenderer>, lazy protocol witness table accessor for type TextWipeTransitionModifier.NullRenderer and conformance TextWipeTransitionModifier.NullRenderer, &unk_1F0A2C898, MEMORY[0x1E6980628]);
    v0 = type metadata accessor for ModifiedContent();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for ModifiedContent<ModifiedContent<ModifiedContent<_ViewModifier_Content<TextWipeTransitionModifier>, _OverlayModifier<ZStack<TupleView<(Spacer, _ConditionalContent<_ConditionalContent<IDView<TextWipeTransitionModifier.StationaryView, Int>, IDView<TextWipeTransitionModifier.TransitionView, Int>>, EmptyView>)>>>>, _EnvironmentKeyWritingModifier<LayoutDirection>>, _TextRendererViewModifier<TextWipeTransitionModifier.NullRenderer>>);
    }
  }
}

unint64_t lazy protocol witness table accessor for type TextWipeTransitionModifier.NullRenderer and conformance TextWipeTransitionModifier.NullRenderer()
{
  result = lazy protocol witness table cache variable for type TextWipeTransitionModifier.NullRenderer and conformance TextWipeTransitionModifier.NullRenderer;
  if (!lazy protocol witness table cache variable for type TextWipeTransitionModifier.NullRenderer and conformance TextWipeTransitionModifier.NullRenderer)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type TextWipeTransitionModifier.NullRenderer and conformance TextWipeTransitionModifier.NullRenderer);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type TextWipeTransitionModifier.NullRenderer and conformance TextWipeTransitionModifier.NullRenderer;
  if (!lazy protocol witness table cache variable for type TextWipeTransitionModifier.NullRenderer and conformance TextWipeTransitionModifier.NullRenderer)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type TextWipeTransitionModifier.NullRenderer and conformance TextWipeTransitionModifier.NullRenderer);
  }

  return result;
}

void type metadata accessor for _PreferenceActionModifier<Text.LayoutKey>()
{
  if (!lazy cache variable for type metadata for _PreferenceActionModifier<Text.LayoutKey>)
  {
    type metadata accessor for Text.LayoutKey();
    lazy protocol witness table accessor for type ForEach<ArraySlice<TextModel.MorphCluster>, Int, TextWipeTransitionModifier.MoveCluster> and conformance <> ForEach<A, B, C>(&lazy protocol witness table cache variable for type [Text.LayoutKey.AnchoredLayout] and conformance <A> [A], type metadata accessor for [Text.LayoutKey.AnchoredLayout], lazy protocol witness table accessor for type Text.LayoutKey.AnchoredLayout and conformance Text.LayoutKey.AnchoredLayout);
    v0 = type metadata accessor for _PreferenceActionModifier();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for _PreferenceActionModifier<Text.LayoutKey>);
    }
  }
}

double specialized TextModel.combinedPath()@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  Path.init()();
  v4 = *(a1 + 16);
  if (v4)
  {
    v5 = a1 + 72;
    do
    {
      v6 = *v5;
      v7 = *(v5 + 8);
      v8 = *(v5 + 16);
      v9 = *(v5 + 24);
      v10 = *(v5 + 32);
      CGAffineTransformMakeTranslation(&v15, *(v5 - 32) + *(v5 + 40), *(v5 - 24) + *(v5 + 48));
      outlined copy of Path.Storage(v6, v7, v8, v9, v10);
      Path.addPath(_:transform:)();
      outlined consume of Path.Storage(v6, v7, v8, v9, v10);
      v5 += 96;
      --v4;
    }

    while (v4);
  }

  result = *&v12;
  *a2 = v12;
  *(a2 + 16) = v13;
  *(a2 + 32) = v14;
  return result;
}

uint64_t outlined init with copy of TextModel.Cluster?(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t (*a6)(void, uint64_t, uint64_t, uint64_t))
{
  v8 = a6(0, a3, a4, a5);
  (*(*(v8 - 8) + 16))(a2, a1, v8);
  return a2;
}

uint64_t specialized static Transition.build(from:to:deadline:timing:)@<X0>(uint64_t *a1@<X0>, int64_t *a2@<X1>, _OWORD *a3@<X2>, void *a4@<X8>, double a5@<D0>)
{
  v123 = a4;
  v9 = *a2;
  v121 = a2[1];
  v122 = v9;
  v10 = a2[2];
  v11 = a2[3];
  v12 = a2[4];
  v13 = a2[5];
  v14 = *a1;
  v15 = a1[1];
  v16 = a1[2];
  v17 = a1[3];
  v18 = a1[5];
  v120 = a1[4];
  v118 = v18;
  v135 = type metadata accessor for CharacterSet();
  v19 = *(v135 - 8);
  MEMORY[0x1EEE9AC00](v135);
  v134 = &v115 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v21);
  v133 = &v115 - v22;
  v23 = type metadata accessor for TextModel.ClusterData(0);
  v130 = *(v23 - 8);
  MEMORY[0x1EEE9AC00](v23 - 8);
  v126 = &v115 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v25);
  *&v139 = &v115 - v26;
  memset(v163, 0, 48);
  result = TextModel.combineVisuals(with:)(v163);
  v119 = result;
  if (!result)
  {
    goto LABEL_134;
  }

  v29 = *a2;
  v28 = a2[1];
  v161 = v15;
  v162 = v28;
  v117 = v15;
  v30 = a3[7];
  v158 = a3[6];
  v159 = v30;
  v160 = a3[8];
  v31 = a3[3];
  v154 = a3[2];
  v155 = v31;
  v32 = a3[5];
  v156 = a3[4];
  v157 = v32;
  v34 = *a3;
  v33 = a3[1];
  v124 = a3;
  v152 = v34;
  v153 = v33;
  v35 = *(v14 + 16);

  v36 = MEMORY[0x1E69E62F8];
  outlined init with copy of TextModel.Cluster?(&v162, v142, &lazy cache variable for type metadata for [TextModel.Cluster], &type metadata for TextModel.Cluster, MEMORY[0x1E69E62F8], type metadata accessor for Color?);
  v128 = v29;

  outlined init with copy of TextModel.Cluster?(&v162, v142, &lazy cache variable for type metadata for [TextModel.Cluster], &type metadata for TextModel.Cluster, v36, type metadata accessor for Color?);

  outlined init with copy of TextModel.Cluster?(&v161, v142, &lazy cache variable for type metadata for [TextModel.Cluster], &type metadata for TextModel.Cluster, v36, type metadata accessor for Color?);
  v127 = v14;
  v138 = v35;
  if (v35)
  {
    v137 = 0;
    v129 = (*(v130 + 80) + 32) & ~*(v130 + 80);
    v37 = v14 + v129;
    v131 = *(v130 + 72);
    v132 = (v19 + 8);
    v125 = v14 + v129;
    v38 = v139;
    while (1)
    {
      outlined init with copy of TextWipeTransitionModifier.FadeInCluster(v37, v38, type metadata accessor for TextModel.ClusterData);
      v39 = v134;
      static CharacterSet.alphanumerics.getter();
      v40 = v133;
      CharacterSet.inverted.getter();
      v41 = v132;
      v42 = *v132;
      v43 = v135;
      v44 = (*v132)(v39, v135);
      MEMORY[0x1EEE9AC00](v44);
      *(&v115 - 2) = v40;
      LOBYTE(v39) = specialized Sequence.allSatisfy(_:)(partial apply for closure #1 in TextModel.ClusterData.isSeparator.getter, (&v115 - 4), v45, v46);
      v42(v40, v43);
      result = outlined destroy of (TextModel.ClusterData, TextModel.Cluster)(v38, type metadata accessor for TextModel.ClusterData);
      if (v39)
      {
        break;
      }

      v37 += v131;
      if (v138 == ++v137)
      {
        goto LABEL_12;
      }
    }

    v136 = *(v128 + 16);
    if (v136)
    {
      v49 = 0;
      v50 = v128 + v129;
      v116 = v128 + v129;
      v51 = v139;
      while (1)
      {
        v129 = v49;
        outlined init with copy of TextWipeTransitionModifier.FadeInCluster(v50, v51, type metadata accessor for TextModel.ClusterData);
        v52 = v134;
        static CharacterSet.alphanumerics.getter();
        v48 = v133;
        CharacterSet.inverted.getter();
        v53 = v135;
        v41 = v132;
        v54 = (v42)(v52, v135);
        MEMORY[0x1EEE9AC00](v54);
        *(&v115 - 2) = v48;
        v57 = specialized Sequence.allSatisfy(_:)(closure #1 in TextModel.ClusterData.isSeparator.getterpartial apply, (&v115 - 4), v55, v56);
        v42(v48, v53);
        result = outlined destroy of (TextModel.ClusterData, TextModel.Cluster)(v51, type metadata accessor for TextModel.ClusterData);
        if (v57)
        {
          break;
        }

        v49 = v129 + 1;
        v50 += v131;
        if (v136 == v129 + 1)
        {
          goto LABEL_12;
        }
      }

      v102 = v137 + 1;
      if (__OFADD__(v137, 1))
      {
        goto LABEL_131;
      }

      v58 = v139;
      while (1)
      {
        v103 = v129;
        if (v102 == v138)
        {
          break;
        }

        if (v102 >= v138)
        {
          goto LABEL_121;
        }

        outlined init with copy of TextWipeTransitionModifier.FadeInCluster(v125 + v102 * v131, v58, type metadata accessor for TextModel.ClusterData);
        v104 = v134;
        static CharacterSet.alphanumerics.getter();
        v48 = v133;
        CharacterSet.inverted.getter();
        v105 = v135;
        v41 = v132;
        v106 = (v42)(v104, v135);
        MEMORY[0x1EEE9AC00](v106);
        *(&v115 - 2) = v48;
        v57 = specialized Sequence.allSatisfy(_:)(closure #1 in TextModel.ClusterData.isSeparator.getterpartial apply, (&v115 - 4), v107, v108);
        v42(v48, v105);
        result = outlined destroy of (TextModel.ClusterData, TextModel.Cluster)(v58, type metadata accessor for TextModel.ClusterData);
        if ((v57 & 1) == 0)
        {
          goto LABEL_100;
        }

        v64 = __OFADD__(v102++, 1);
        if (v64)
        {
          __break(1u);
LABEL_100:
          v138 = v102;
          v103 = v129;
          break;
        }
      }

      v109 = v103 + 1;
      if (__OFADD__(v103, 1))
      {
        goto LABEL_132;
      }

      v58 = v139;
      while (1)
      {
        if (v109 == v136)
        {
          goto LABEL_109;
        }

        if (v109 >= v136)
        {
          goto LABEL_122;
        }

        outlined init with copy of TextWipeTransitionModifier.FadeInCluster(v116 + v109 * v131, v58, type metadata accessor for TextModel.ClusterData);
        v110 = v134;
        static CharacterSet.alphanumerics.getter();
        v48 = v133;
        CharacterSet.inverted.getter();
        v111 = v135;
        v41 = v132;
        v112 = (v42)(v110, v135);
        MEMORY[0x1EEE9AC00](v112);
        *(&v115 - 2) = v48;
        v57 = specialized Sequence.allSatisfy(_:)(closure #1 in TextModel.ClusterData.isSeparator.getterpartial apply, (&v115 - 4), v113, v114);
        v42(v48, v111);
        result = outlined destroy of (TextModel.ClusterData, TextModel.Cluster)(v58, type metadata accessor for TextModel.ClusterData);
        if ((v57 & 1) == 0)
        {
          break;
        }

        v64 = __OFADD__(v109++, 1);
        v103 = v129;
        if (v64)
        {
          __break(1u);
LABEL_109:
          v109 = v136;
          goto LABEL_111;
        }
      }

      v103 = v129;
LABEL_111:
      v47 = v126;
      v48 = v128;
      if (v138 < v137 || v109 < v103)
      {
        goto LABEL_133;
      }

      *&v139 = specialized Collection<>.editsForClock(to:split:otherSplit:)(v128, v137, v138, v103, v109, v127, v138);
      v71 = 1;
      goto LABEL_33;
    }

LABEL_12:
    v58 = (*(v130 + 80) + 32) & ~*(v130 + 80);
    v59 = v127 + v58;
    v60 = *(v127 + v58 + 16);
    v142[0] = v60;
    MEMORY[0x1EEE9AC00](result);
    *(&v115 - 4) = closure #2 in static Transition.build(from:to:deadline:timing:);
    *(&v115 - 3) = 0;
    *(&v115 - 2) = v142;
    result = specialized Collection.firstIndex(where:)(partial apply for specialized closure #1 in Collection<>.editsForClock<A>(to:groupId:), (&v115 - 6), v61);
    if (v62)
    {
      goto LABEL_135;
    }

    v48 = result;
    v57 = result + 1;
    if (__OFADD__(result, 1))
    {
      goto LABEL_123;
    }

    while (v57 != v138)
    {
      if (v57 >= v138)
      {
        goto LABEL_118;
      }

      v41 = v139;
      outlined init with copy of TextWipeTransitionModifier.FadeInCluster(v59 + *(v130 + 72) * v57, v139, type metadata accessor for TextModel.ClusterData);
      v63 = *(v41 + 2);
      result = outlined destroy of (TextModel.ClusterData, TextModel.Cluster)(v41, type metadata accessor for TextModel.ClusterData);
      if (v63 != v60)
      {
        goto LABEL_21;
      }

      v64 = __OFADD__(v57++, 1);
      if (v64)
      {
        __break(1u);
        break;
      }
    }

    v57 = v138;
LABEL_21:
    v47 = v126;
    if (v57 < v48)
    {
      goto LABEL_124;
    }

    v48 = v128;
    v136 = *(v128 + 16);
    if (v136)
    {
      v47 = &v115;
      MEMORY[0x1EEE9AC00](result);
      *(&v115 - 4) = closure #2 in static Transition.build(from:to:deadline:timing:);
      *(&v115 - 3) = 0;
      *(&v115 - 2) = v142;
      result = specialized Collection.firstIndex(where:)(partial apply for specialized closure #2 in Collection<>.editsForClock<A>(to:groupId:), (&v115 - 6), v48);
      if (v65)
      {
        goto LABEL_136;
      }

      v66 = result;
      v48 = result + 1;
      if (__OFADD__(result, 1))
      {
        goto LABEL_125;
      }

      v58 += v128;
      while (1)
      {
        v67 = v136;
        if (v48 == v136)
        {
          break;
        }

        if (v48 >= v136)
        {
          goto LABEL_120;
        }

        v41 = v139;
        outlined init with copy of TextWipeTransitionModifier.FadeInCluster(v58 + *(v130 + 72) * v48, v139, type metadata accessor for TextModel.ClusterData);
        v68 = *(v41 + 2);
        outlined destroy of (TextModel.ClusterData, TextModel.Cluster)(v41, type metadata accessor for TextModel.ClusterData);
        if (v68 != v60)
        {
          goto LABEL_35;
        }

        v64 = __OFADD__(v48++, 1);
        if (v64)
        {
          __break(1u);
          goto LABEL_32;
        }
      }

      v48 = v136;
LABEL_35:
      v58 = v124;
      if (v48 < v66)
      {
        goto LABEL_126;
      }

      v74 = v48;
      v75 = v48;
      v48 = v128;
      *&v139 = specialized Collection<>.editsForClock(to:split:otherSplit:)(v128, v57, v57, v74, v75, v127, v67);
      v71 = 0;
      v47 = v126;
      goto LABEL_37;
    }
  }

  else
  {
    v47 = v126;
    v48 = v128;
  }

LABEL_32:
  type metadata accessor for _ContiguousArrayStorage<[Edit<Int>]>();
  v69 = swift_allocObject();
  v139 = xmmword_195CC8D00;
  *(v69 + 16) = xmmword_195CC8D00;
  type metadata accessor for [EditWithAnimationInfo<Int>](0, &lazy cache variable for type metadata for _ContiguousArrayStorage<Edit<Int>>, &lazy cache variable for type metadata for Edit<Int>, type metadata accessor for Edit, MEMORY[0x1E69E6F90]);
  v70 = swift_allocObject();
  v71 = 0;
  *(v70 + 16) = v139;
  v72 = *(v48 + 16);
  *(v70 + 32) = 1;
  v73 = v138;
  *(v70 + 40) = 0;
  *(v70 + 48) = v73;
  *(v70 + 56) = 0;
  *(v70 + 64) = v72;
  v136 = v72;
  *&v139 = v69;
  *(v69 + 32) = v70;
LABEL_33:
  v58 = v124;
LABEL_37:
  if (specialized TextModel.isSplitHours()(v48, MEMORY[0x1E6968568]))
  {
    v57 = v139;

    v76 = specialized Collection<>.animationInfoGroup1Of2(_:)(v58, v57);
  }

  else if (specialized TextModel.isSplitHours()(v48, MEMORY[0x1E6968580]))
  {
    if (v136)
    {
      v78 = v48 + ((*(v130 + 80) + 32) & ~*(v130 + 80));
      v79 = *(v130 + 72);
      do
      {
        outlined init with copy of TextWipeTransitionModifier.FadeInCluster(v78, v47, type metadata accessor for TextModel.ClusterData);
        if (*v47 == 48 && v47[1] == 0xE100000000000000)
        {
          outlined destroy of (TextModel.ClusterData, TextModel.Cluster)(v47, type metadata accessor for TextModel.ClusterData);
        }

        else
        {
          v48 = _stringCompareWithSmolCheck(_:_:expecting:)();
          outlined destroy of (TextModel.ClusterData, TextModel.Cluster)(v47, type metadata accessor for TextModel.ClusterData);
          if ((v48 & 1) == 0)
          {
            goto LABEL_49;
          }
        }

        v78 += v79;
        --v136;
      }

      while (v136);
    }

    v57 = v139;

    v76 = specialized Collection<>.animationInfoGroup2Of2(_:)(v58, v57);
  }

  else
  {
LABEL_49:
    v57 = v139;

    v76 = specialized Collection<>.animationInfo(_:)(v58, v57);
  }

  v5 = v77;
  v41 = v76;

  if ((v71 & 1) == 0)
  {
    v57 = *(v41 + 2);
    if (v57)
    {
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        goto LABEL_127;
      }

      goto LABEL_54;
    }
  }

  while (2)
  {
    v5 = a5 - v5;
    if (v5 > 0.0)
    {
      v48 = *(v41 + 2);
      if (v48)
      {
        result = swift_isUniquelyReferenced_nonNull_native();
        if ((result & 1) == 0)
        {
          goto LABEL_129;
        }

        goto LABEL_60;
      }
    }

    v138 = v41;
LABEL_66:
    v87 = *(v139 + 16);
    if (!v87)
    {
      v48 = MEMORY[0x1E69E7CC0];
LABEL_85:

      v96 = v138;

      v97 = _sSTsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFs12Zip2SequenceVySay20TextAnimationSupport4EditVySiGGSayAH0iG4InfoVGG_AH0i4WithgJ0VySiGs5NeverOTg504_s20fg8Support4i11VySiGAA0dB4j13VAA0d4WithbE0op17GIgyyd_AD_AFtAIs5l163OIegnrzr_TR04_s20ab133Support10Transition33_5BB6BA5906EF51728AE44082969295EDLLV5build4from2to8deadline6timingAdA0A5ModelACLLV_AKSdAA0a4WipeD6TimingVtFZAA08df2B4e23op6GAA0R0oP27G_AA0rbT0Z6XEfU4_Tf3nnnpf_nTf1cn_n(v48, v96);
      swift_bridgeObjectRelease_n();

      v141[13] = v155;
      v141[12] = v154;
      v141[10] = v152;
      v141[11] = v153;
      v141[18] = v160;
      v141[17] = v159;
      v141[16] = v158;
      v141[14] = v156;
      v141[15] = v157;
      *&v141[1] = v16;
      *(&v141[1] + 1) = v17;
      v142[2] = v16;
      v142[3] = v17;
      *&v141[2] = v120;
      *(&v141[2] + 1) = v118;
      v142[4] = v120;
      v142[5] = v118;
      *&v141[4] = v10;
      *(&v141[4] + 1) = v11;
      *&v141[7] = v10;
      *(&v141[7] + 1) = v11;
      v142[8] = v10;
      v142[9] = v11;
      v142[14] = v10;
      v142[15] = v11;
      *&v141[0] = v127;
      *(&v141[0] + 1) = v117;
      *&v141[3] = v122;
      *(&v141[3] + 1) = v121;
      *&v141[5] = v12;
      *(&v141[5] + 1) = v13;
      *&v141[6] = v122;
      *(&v141[6] + 1) = v121;
      *&v141[8] = v12;
      *(&v141[8] + 1) = v13;
      *&v141[9] = v119;
      *(&v141[9] + 1) = v97;
      v142[0] = v127;
      v142[1] = v117;
      v142[6] = v122;
      v142[7] = v121;
      v142[10] = v12;
      v142[11] = v13;
      v142[12] = v122;
      v142[13] = v121;
      v142[16] = v12;
      v142[17] = v13;
      v142[18] = v119;
      v142[19] = v97;
      v146 = v155;
      v145 = v154;
      v143 = v152;
      v144 = v153;
      v151 = v160;
      v150 = v159;
      v149 = v158;
      v147 = v156;
      v148 = v157;
      outlined init with copy of Transition(v141, &v140);
      outlined destroy of Transition(v142);
      return memcpy(v123, v141, 0x130uLL);
    }

    v58 = 0;
    v88 = v139 + 32;
    v48 = MEMORY[0x1E69E7CC0];
    while (v58 < *(v139 + 16))
    {
      v89 = *(v88 + 8 * v58);
      v57 = *(v89 + 16);
      v90 = *(v48 + 16);
      v41 = (v90 + v57);
      if (__OFADD__(v90, v57))
      {
        goto LABEL_115;
      }

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      if (isUniquelyReferenced_nonNull_native && v41 <= *(v48 + 24) >> 1)
      {
        if (*(v89 + 16))
        {
          goto LABEL_80;
        }
      }

      else
      {
        if (v90 <= v41)
        {
          v92 = v90 + v57;
        }

        else
        {
          v92 = v90;
        }

        v48 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(isUniquelyReferenced_nonNull_native, v92, 1, v48);
        if (*(v89 + 16))
        {
LABEL_80:
          v93 = *(v48 + 16);
          if ((*(v48 + 24) >> 1) - v93 < v57)
          {
            goto LABEL_117;
          }

          memcpy((v48 + 40 * v93 + 32), (v89 + 32), 40 * v57);

          if (v57)
          {
            v94 = *(v48 + 16);
            v64 = __OFADD__(v94, v57);
            v95 = v94 + v57;
            if (v64)
            {
              goto LABEL_119;
            }

            *(v48 + 16) = v95;
          }

          goto LABEL_69;
        }
      }

      if (v57)
      {
        goto LABEL_116;
      }

LABEL_69:
      if (v87 == ++v58)
      {
        goto LABEL_85;
      }
    }

    __break(1u);
LABEL_115:
    __break(1u);
LABEL_116:
    __break(1u);
LABEL_117:
    __break(1u);
LABEL_118:
    __break(1u);
LABEL_119:
    __break(1u);
LABEL_120:
    __break(1u);
LABEL_121:
    __break(1u);
LABEL_122:
    __break(1u);
LABEL_123:
    __break(1u);
LABEL_124:
    __break(1u);
LABEL_125:
    __break(1u);
LABEL_126:
    __break(1u);
LABEL_127:
    v41 = specialized _ArrayBuffer._consumeAndCreateNew()(v41);
LABEL_54:
    if (v57 <= *(v41 + 2))
    {
      v81 = *(v58 + 128);
      v82 = v41 + 48;
      do
      {
        *(v82 - 8) = 1;
        *v82 = v81;
        v82 += 3;
        --v57;
      }

      while (v57);
      continue;
    }

    break;
  }

  __break(1u);
LABEL_129:
  result = specialized _ArrayBuffer._consumeAndCreateNew()(v41);
  v41 = result;
LABEL_60:
  if (v48 <= *(v41 + 2))
  {
    v83 = v48 - 1;
    v138 = v41;
    v84 = 0;
    if (v48 == 1)
    {
      goto LABEL_62;
    }

    v98 = !is_mul_ok(v83, 0x18uLL);
    if (&v41[24 * v83 + 32] < v41 + 32)
    {
      goto LABEL_62;
    }

    if (v98)
    {
      goto LABEL_62;
    }

    v84 = v48 & 0x7FFFFFFFFFFFFFFELL;
    v99 = (v41 + 56);
    v100 = v48 & 0x7FFFFFFFFFFFFFFELL;
    do
    {
      v101 = v5 + *v99;
      *(v99 - 3) = v5 + *(v99 - 3);
      *v99 = v101;
      v99 += 6;
      v100 -= 2;
    }

    while (v100);
    if (v48 != v84)
    {
LABEL_62:
      v85 = v48 - v84;
      v86 = 24 * v84 + 32;
      do
      {
        *&v41[v86] = v5 + *&v41[v86];
        v86 += 24;
        --v85;
      }

      while (v85);
    }

    goto LABEL_66;
  }

  __break(1u);
LABEL_131:
  __break(1u);
LABEL_132:
  __break(1u);
LABEL_133:
  __break(1u);
LABEL_134:
  __break(1u);
LABEL_135:
  __break(1u);
LABEL_136:
  __break(1u);
  return result;
}

void type metadata accessor for (TextModel.Cluster, TextModel.Cluster)()
{
  if (!lazy cache variable for type metadata for (TextModel.Cluster, TextModel.Cluster))
  {
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &lazy cache variable for type metadata for (TextModel.Cluster, TextModel.Cluster));
    }
  }
}

uint64_t _s20TextAnimationSupport0A5Model33_5BB6BA5906EF51728AE44082969295EDLLV7ClusterV_AFtSgWOg(uint64_t a1)
{
  v1 = *(a1 + 72);
  if (v1 > 6)
  {
    return (v1 ^ 0xFF) + 1;
  }

  else
  {
    return 0;
  }
}

double _s20TextAnimationSupport0A5Model33_5BB6BA5906EF51728AE44082969295EDLLV7ClusterV_AFtSgWOi0_(uint64_t a1)
{
  result = 0.0;
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 64) = 0;
  *(a1 + 72) = 255;
  *(a1 + 80) = 0u;
  *(a1 + 96) = 0u;
  *(a1 + 112) = 0u;
  *(a1 + 128) = 0u;
  *(a1 + 144) = 0u;
  *(a1 + 160) = 0u;
  *(a1 + 176) = 0u;
  return result;
}

BOOL partial apply for specialized closure #1 in Collection<>.editsForClock<A>(to:groupId:)()
{
  v1 = **(v0 + 32);
  (*(v0 + 16))(&v3);
  return v3 == v1;
}

void type metadata accessor for (inserted: Bool, memberAfterInsert: GlassMaterialProvider.Options)(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v5)
    {
      atomic_store(TupleTypeMetadata2, a2);
    }
  }
}

uint64_t outlined destroy of (offset: Int, element: ClusterWithPath)(uint64_t a1)
{
  type metadata accessor for (inserted: Bool, memberAfterInsert: GlassMaterialProvider.Options)(0, &lazy cache variable for type metadata for (offset: Int, element: ClusterWithPath), type metadata accessor for ClusterWithPath);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t outlined init with take of (inserted: Bool, memberAfterInsert: GlassMaterialProvider.Options)(uint64_t a1, uint64_t a2, unint64_t *a3, void (*a4)(uint64_t))
{
  type metadata accessor for (inserted: Bool, memberAfterInsert: GlassMaterialProvider.Options)(0, a3, a4);
  (*(*(v6 - 8) + 32))(a2, a1, v6);
  return a2;
}

uint64_t outlined destroy of LazyMapSequence<Text.Layout.Cluster, CGRect>(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, uint64_t, uint64_t, uint64_t))
{
  type metadata accessor for LazyMapSequence<Text.Layout.Cluster, CGRect>.Iterator(0, a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

_OWORD *outlined init with take of Any(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  *a2 = *a1;
  a2[1] = v2;
  return a2;
}

unint64_t lazy protocol witness table accessor for type _ConditionalContent<IDView<TextWipeTransitionModifier.StationaryView, Int>, IDView<TextWipeTransitionModifier.TransitionView, Int>> and conformance <> _ConditionalContent<A, B>()
{
  result = lazy protocol witness table cache variable for type _ConditionalContent<IDView<TextWipeTransitionModifier.StationaryView, Int>, IDView<TextWipeTransitionModifier.TransitionView, Int>> and conformance <> _ConditionalContent<A, B>;
  if (!lazy protocol witness table cache variable for type _ConditionalContent<IDView<TextWipeTransitionModifier.StationaryView, Int>, IDView<TextWipeTransitionModifier.TransitionView, Int>> and conformance <> _ConditionalContent<A, B>)
  {
    type metadata accessor for _ConditionalContent<IDView<TextWipeTransitionModifier.StationaryView, Int>, IDView<TextWipeTransitionModifier.TransitionView, Int>>();
    lazy protocol witness table accessor for type IDView<TextWipeTransitionModifier.StationaryView, Int> and conformance IDView<A, B>(&lazy protocol witness table cache variable for type IDView<TextWipeTransitionModifier.StationaryView, Int> and conformance IDView<A, B>, &lazy cache variable for type metadata for IDView<TextWipeTransitionModifier.StationaryView, Int>, lazy protocol witness table accessor for type TextWipeTransitionModifier.StationaryView and conformance TextWipeTransitionModifier.StationaryView);
    lazy protocol witness table accessor for type IDView<TextWipeTransitionModifier.StationaryView, Int> and conformance IDView<A, B>(&lazy protocol witness table cache variable for type IDView<TextWipeTransitionModifier.TransitionView, Int> and conformance IDView<A, B>, &lazy cache variable for type metadata for IDView<TextWipeTransitionModifier.TransitionView, Int>, lazy protocol witness table accessor for type TextWipeTransitionModifier.TransitionView and conformance TextWipeTransitionModifier.TransitionView);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type _ConditionalContent<IDView<TextWipeTransitionModifier.StationaryView, Int>, IDView<TextWipeTransitionModifier.TransitionView, Int>> and conformance <> _ConditionalContent<A, B>);
  }

  return result;
}

uint64_t lazy protocol witness table accessor for type IDView<TextWipeTransitionModifier.StationaryView, Int> and conformance IDView<A, B>(unint64_t *a1, unint64_t *a2, void (*a3)(void))
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for IDView<TextWipeTransitionModifier.StationaryView, Int>(255, a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t outlined init with copy of _ConditionalContent<_ConditionalContent<IDView<TextWipeTransitionModifier.StationaryView, Int>, IDView<TextWipeTransitionModifier.TransitionView, Int>>, EmptyView>(uint64_t a1, uint64_t a2)
{
  type metadata accessor for _ForegroundStyleModifier<Material>(0, &lazy cache variable for type metadata for _ConditionalContent<_ConditionalContent<IDView<TextWipeTransitionModifier.StationaryView, Int>, IDView<TextWipeTransitionModifier.TransitionView, Int>>, EmptyView>, type metadata accessor for _ConditionalContent<IDView<TextWipeTransitionModifier.StationaryView, Int>, IDView<TextWipeTransitionModifier.TransitionView, Int>>, MEMORY[0x1E6981E70], MEMORY[0x1E697F960]);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t outlined destroy of ModifiedContent<ModifiedContent<TextWipeTransitionModifier.ClusterView, _MaskAlignmentEffect<ModifiedContent<Rectangle, _ForegroundStyleModifier<LinearGradient>>>>, _OffsetEffect>(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t, uint64_t))
{
  type metadata accessor for _ForegroundStyleModifier<Material>(0, a2, a3, a4, a5);
  (*(*(v6 - 8) + 8))(a1, v6);
  return a1;
}

uint64_t objectdestroyTm()
{
  v1 = (type metadata accessor for TextWipeTransitionModifier(0) - 8);
  v2 = *(*v1 + 80);
  v3 = *(*v1 + 64);
  v4 = (v2 + 16) & ~v2;
  v13 = *(v0 + v4 + 264);
  v14 = *(v0 + v4 + 280);
  v11 = *(v0 + v4 + 232);
  v12 = *(v0 + v4 + 248);
  v9 = *(v0 + v4 + 200);
  v10 = *(v0 + v4 + 216);
  v8 = *(v0 + v4 + 168);
  outlined consume of TextWipeTransitionModifier.Model.State(*(v0 + v4 + 8), *(v0 + v4 + 16), *(v0 + v4 + 24), *(v0 + v4 + 32), *(v0 + v4 + 40), *(v0 + v4 + 48), *(v0 + v4 + 56), *(v0 + v4 + 64), *(v0 + v4 + 72), *(v0 + v4 + 80), *(v0 + v4 + 88), *(v0 + v4 + 96), *(v0 + v4 + 104), *(v0 + v4 + 112), *(v0 + v4 + 120), *(v0 + v4 + 128), *(v0 + v4 + 136), *(v0 + v4 + 144), *(v0 + v4 + 152), *(v0 + v4 + 160), v8, *(&v8 + 1), *(v0 + v4 + 184), *(v0 + v4 + 192), v9, *(&v9 + 1), v10, *(&v10 + 1), v11, *(&v11 + 1), v12, *(&v12 + 1), v13, *(&v13 + 1), v14, *(&v14 + 1), *(v0 + v4 + 296), *(v0 + v4 + 304), *(v0 + v4 + 312));

  v5 = v1[11];
  type metadata accessor for TupleView<(ModifiedContent<ForEach<ArraySlice<TextModel.Cluster>, Int, TextWipeTransitionModifier.FadeOutCluster>, _OffsetEffect>, ForEach<ArraySlice<TextModel.Cluster>, Int, TextWipeTransitionModifier.FadeInCluster>)>(0, &lazy cache variable for type metadata for Environment<LayoutDirection>.Content, MEMORY[0x1E697E7E0], MEMORY[0x1E697DCB8]);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v6 = type metadata accessor for LayoutDirection();
    (*(*(v6 - 8) + 8))(v0 + v4 + v5, v6);
  }

  else
  {
  }

  return MEMORY[0x1EEE6BDD0](v0, v4 + v3, v2 | 7);
}

void type metadata completion function for ClusterWithPath()
{
  type metadata accessor for TupleView<(ModifiedContent<ForEach<ArraySlice<TextModel.Cluster>, Int, TextWipeTransitionModifier.FadeOutCluster>, _OffsetEffect>, ForEach<ArraySlice<TextModel.Cluster>, Int, TextWipeTransitionModifier.FadeInCluster>)>(319, &lazy cache variable for type metadata for AttributeScopes.FoundationAttributes.DateFieldAttribute.Field?, MEMORY[0x1E69685B0], MEMORY[0x1E69E6720]);
  if (v0 <= 0x3F)
  {
    type metadata accessor for CGRect(319);
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

__n128 __swift_memcpy24_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u64[0] = a2[1].n128_u64[0];
  *a1 = result;
  return result;
}

uint64_t getEnumTagSinglePayload for EditAnimationInfo(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 24))
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

uint64_t storeEnumTagSinglePayload for EditAnimationInfo(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 24) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 24) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2 + 1;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for EditWithAnimationInfo(_DWORD *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 84);
  v6 = *(v4 + 80);
  if (v5 <= 0xFE)
  {
    v8 = 254;
  }

  else
  {
    v8 = *(v4 + 84);
  }

  if (!a2)
  {
    return 0;
  }

  if (v8 >= a2)
  {
    goto LABEL_28;
  }

  v7 = *(*(*(a3 + 16) - 8) + 64);
  v9 = ((((v7 + v6) & ~v6) + v7 + ((((v6 + 1) | v6) + ((v7 + v6) & ~v6) + v7) & ~v6) + 7) & 0xFFFFFFFFFFFFFFF8) + 24;
  v10 = a2 - v8;
  v11 = v9 & 0xFFFFFFF8;
  if ((v9 & 0xFFFFFFF8) != 0)
  {
    v12 = 2;
  }

  else
  {
    v12 = v10 + 1;
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

  if (v14 > 1)
  {
    if (v14 == 2)
    {
      v15 = *(a1 + v9);
      if (v15)
      {
        goto LABEL_24;
      }
    }

    else
    {
      v15 = *(a1 + v9);
      if (v15)
      {
        goto LABEL_24;
      }
    }

LABEL_28:
    if (v5 > 0xFE)
    {
      return (*(v4 + 48))((a1 + v6 + 1) & ~v6);
    }

    v18 = *a1;
    if (v18 >= 2)
    {
      return v18 - 1;
    }

    else
    {
      return 0;
    }
  }

  if (!v14)
  {
    goto LABEL_28;
  }

  v15 = *(a1 + v9);
  if (!v15)
  {
    goto LABEL_28;
  }

LABEL_24:
  v17 = v15 - 1;
  if (v11)
  {
    v17 = 0;
    LODWORD(v11) = *a1;
  }

  return v8 + (v11 | v17) + 1;
}

void storeEnumTagSinglePayload for EditWithAnimationInfo(_BYTE *a1, unsigned int a2, unsigned int a3, uint64_t a4)
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

  v8 = *(v5 + 80);
  v9 = ((*(*(*(a4 + 16) - 8) + 64) + v8) & ~v8) + *(*(*(a4 + 16) - 8) + 64);
  v10 = ((v9 + ((((v8 + 1) | v8) + v9) & ~v8) + 7) & 0xFFFFFFFFFFFFFFF8) + 24;
  if (v7 >= a3)
  {
    v14 = 0;
    v15 = a2 - v7;
    if (a2 <= v7)
    {
      goto LABEL_17;
    }
  }

  else
  {
    v11 = a3 - v7;
    if (((v9 + ((((v8 + 1) | v8) + v9) & ~v8) + 7) & 0xFFFFFFF8) == 0xFFFFFFE8)
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

    v15 = a2 - v7;
    if (a2 <= v7)
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

          goto LABEL_33;
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

LABEL_33:
        if (v6 > 0xFE)
        {
          v19 = (&a1[v8 + 1] & ~v8);
          if (v6 >= a2)
          {
            v23 = *(v5 + 56);
            v24 = &a1[v8 + 1] & ~v8;

            v23(v24);
          }

          else
          {
            if (v9 <= 3)
            {
              v20 = ~(-1 << (8 * v9));
            }

            else
            {
              v20 = -1;
            }

            if (v9)
            {
              v21 = v20 & (~v6 + a2);
              if (v9 <= 3)
              {
                v22 = v9;
              }

              else
              {
                v22 = 4;
              }

              bzero(v19, v9);
              if (v22 > 2)
              {
                if (v22 == 3)
                {
                  *v19 = v21;
                  v19[2] = BYTE2(v21);
                }

                else
                {
                  *v19 = v21;
                }
              }

              else if (v22 == 1)
              {
                *v19 = v21;
              }

              else
              {
                *v19 = v21;
              }
            }
          }
        }

        else
        {
          *a1 = a2 + 1;
        }

        return;
      }

      if (!a2)
      {
        return;
      }

      goto LABEL_33;
    }
  }

  if (((v9 + ((((v8 + 1) | v8) + v9) & ~v8) + 7) & 0xFFFFFFF8) == 0xFFFFFFE8)
  {
    v16 = v15;
  }

  else
  {
    v16 = 1;
  }

  if (((v9 + ((((v8 + 1) | v8) + v9) & ~v8) + 7) & 0xFFFFFFF8) != 0xFFFFFFE8)
  {
    v17 = ~v7 + a2;
    v18 = a1;
    bzero(a1, v10);
    a1 = v18;
    *v18 = v17;
  }

  if (v14 > 1)
  {
    if (v14 == 2)
    {
      *&a1[v10] = v16;
    }

    else
    {
      *&a1[v10] = v16;
    }
  }

  else if (v14)
  {
    a1[v10] = v16;
  }
}

uint64_t getEnumTagSinglePayload for Transition(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 304))
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

uint64_t storeEnumTagSinglePayload for Transition(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 296) = 0;
    *(result + 248) = 0u;
    *(result + 232) = 0u;
    *(result + 216) = 0u;
    *(result + 200) = 0u;
    *(result + 184) = 0u;
    *(result + 168) = 0u;
    *(result + 152) = 0u;
    *(result + 136) = 0u;
    *(result + 120) = 0u;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 280) = 0u;
    *(result + 264) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 304) = 1;
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

    *(result + 304) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

void type metadata completion function for TextModel.ClusterData()
{
  type metadata accessor for TupleView<(ModifiedContent<ForEach<ArraySlice<TextModel.Cluster>, Int, TextWipeTransitionModifier.FadeOutCluster>, _OffsetEffect>, ForEach<ArraySlice<TextModel.Cluster>, Int, TextWipeTransitionModifier.FadeInCluster>)>(319, &lazy cache variable for type metadata for AttributeScopes.FoundationAttributes.DateFieldAttribute.Field?, MEMORY[0x1E69685B0], MEMORY[0x1E69E6720]);
  if (v0 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
  }
}

__n128 __swift_memcpy96_8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v2;
  result = *(a2 + 32);
  v4 = *(a2 + 48);
  v5 = *(a2 + 80);
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 80) = v5;
  *(a1 + 32) = result;
  *(a1 + 48) = v4;
  return result;
}

uint64_t get_enum_tag_for_layout_string_20TextAnimationSupport0A5Model33_5BB6BA5906EF51728AE44082969295EDLLV7ClusterVSg(uint64_t a1)
{
  v1 = *(a1 + 72);
  if (v1 > 6)
  {
    return (v1 ^ 0xFF) + 1;
  }

  else
  {
    return 0;
  }
}

__n128 __swift_memcpy192_8(uint64_t a1, __int128 *a2)
{
  v2 = *a2;
  v3 = a2[1];
  v4 = a2[3];
  *(a1 + 32) = a2[2];
  *(a1 + 48) = v4;
  *a1 = v2;
  *(a1 + 16) = v3;
  v5 = a2[4];
  v6 = a2[5];
  v7 = a2[7];
  *(a1 + 96) = a2[6];
  *(a1 + 112) = v7;
  *(a1 + 64) = v5;
  *(a1 + 80) = v6;
  result = a2[8];
  v9 = a2[9];
  v10 = a2[11];
  *(a1 + 160) = a2[10];
  *(a1 + 176) = v10;
  *(a1 + 128) = result;
  *(a1 + 144) = v9;
  return result;
}

uint64_t getEnumTagSinglePayload for TextModel.MorphCluster(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFA && *(a1 + 192))
  {
    return (*a1 + 250);
  }

  v3 = *(a1 + 72);
  if (v3 <= 6)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t storeEnumTagSinglePayload for TextModel.MorphCluster(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xF9)
  {
    *(result + 184) = 0;
    *(result + 168) = 0u;
    *(result + 152) = 0u;
    *(result + 136) = 0u;
    *(result + 120) = 0u;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 - 250;
    if (a3 >= 0xFA)
    {
      *(result + 192) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFA)
    {
      *(result + 192) = 0;
    }

    if (a2)
    {
      *(result + 72) = -a2;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for TextWipeTransitionModifier.TransitionView(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 344))
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

uint64_t storeEnumTagSinglePayload for TextWipeTransitionModifier.TransitionView(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 248) = 0u;
    *(result + 232) = 0u;
    *(result + 216) = 0u;
    *(result + 200) = 0u;
    *(result + 184) = 0u;
    *(result + 168) = 0u;
    *(result + 152) = 0u;
    *(result + 136) = 0u;
    *(result + 120) = 0u;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 328) = 0u;
    *(result + 312) = 0u;
    *(result + 296) = 0u;
    *(result + 280) = 0u;
    *(result + 264) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 344) = 1;
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

    *(result + 344) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

__n128 __swift_memcpy81_8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v2;
  result = *(a2 + 32);
  v4 = *(a2 + 48);
  v5 = *(a2 + 64);
  *(a1 + 80) = *(a2 + 80);
  *(a1 + 48) = v4;
  *(a1 + 64) = v5;
  *(a1 + 32) = result;
  return result;
}

uint64_t getEnumTagSinglePayload for TextWipeTransitionModifier.Model.State(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFE && *(a1 + 305))
  {
    return (*a1 + 254);
  }

  v3 = *(a1 + 304);
  if (v3 <= 2)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t storeEnumTagSinglePayload for TextWipeTransitionModifier.Model.State(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFD)
  {
    *(result + 296) = 0;
    *(result + 248) = 0u;
    *(result + 232) = 0u;
    *(result + 216) = 0u;
    *(result + 200) = 0u;
    *(result + 184) = 0u;
    *(result + 168) = 0u;
    *(result + 152) = 0u;
    *(result + 136) = 0u;
    *(result + 120) = 0u;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 304) = 0;
    *(result + 280) = 0u;
    *(result + 264) = 0u;
    *result = a2 - 254;
    if (a3 >= 0xFE)
    {
      *(result + 305) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFE)
    {
      *(result + 305) = 0;
    }

    if (a2)
    {
      *(result + 304) = -a2;
    }
  }

  return result;
}

uint64_t destructiveInjectEnumTag for TextWipeTransitionModifier.Model.State(uint64_t result, unsigned int a2)
{
  if (a2 >= 2)
  {
    *result = a2 - 2;
    *(result + 24) = 0u;
    *(result + 40) = 0u;
    *(result + 56) = 0u;
    *(result + 72) = 0u;
    *(result + 88) = 0u;
    *(result + 104) = 0u;
    *(result + 120) = 0u;
    *(result + 136) = 0u;
    *(result + 152) = 0u;
    *(result + 168) = 0u;
    *(result + 184) = 0u;
    *(result + 200) = 0u;
    *(result + 216) = 0u;
    *(result + 232) = 0u;
    *(result + 248) = 0u;
    *(result + 8) = 0u;
    *(result + 264) = 0u;
    *(result + 280) = 0u;
    LOBYTE(a2) = 2;
    *(result + 296) = 0;
  }

  *(result + 304) = a2;
  return result;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<_ViewModifier_Content<TextWipeTransitionModifier>, _OverlayModifier<ZStack<TupleView<(Spacer, _ConditionalContent<_ConditionalContent<IDView<TextWipeTransitionModifier.StationaryView, Int>, IDView<TextWipeTransitionModifier.TransitionView, Int>>, EmptyView>)>>>>, _EnvironmentKeyWritingModifier<LayoutDirection>>, _TextRendererViewModifier<TextWipeTransitionModifier.NullRenderer>>, _PreferenceActionModifier<Text.LayoutKey>> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<_ViewModifier_Content<TextWipeTransitionModifier>, _OverlayModifier<ZStack<TupleView<(Spacer, _ConditionalContent<_ConditionalContent<IDView<TextWipeTransitionModifier.StationaryView, Int>, IDView<TextWipeTransitionModifier.TransitionView, Int>>, EmptyView>)>>>>, _EnvironmentKeyWritingModifier<LayoutDirection>>, _TextRendererViewModifier<TextWipeTransitionModifier.NullRenderer>>, _PreferenceActionModifier<Text.LayoutKey>> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<_ViewModifier_Content<TextWipeTransitionModifier>, _OverlayModifier<ZStack<TupleView<(Spacer, _ConditionalContent<_ConditionalContent<IDView<TextWipeTransitionModifier.StationaryView, Int>, IDView<TextWipeTransitionModifier.TransitionView, Int>>, EmptyView>)>>>>, _EnvironmentKeyWritingModifier<LayoutDirection>>, _TextRendererViewModifier<TextWipeTransitionModifier.NullRenderer>>, _PreferenceActionModifier<Text.LayoutKey>> and conformance <> ModifiedContent<A, B>)
  {
    type metadata accessor for _ConditionalContent<TupleView<(ModifiedContent<ForEach<ArraySlice<TextModel.Cluster>, Int, TextWipeTransitionModifier.FadeOutCluster>, _OffsetEffect>, ForEach<ArraySlice<TextModel.Cluster>, Int, TextWipeTransitionModifier.FadeInCluster>)>, ForEach<ArraySlice<TextModel.MorphCluster>, Int, TextWipeTransitionModifier.MoveCluster>>.Storage(255, &lazy cache variable for type metadata for ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<_ViewModifier_Content<TextWipeTransitionModifier>, _OverlayModifier<ZStack<TupleView<(Spacer, _ConditionalContent<_ConditionalContent<IDView<TextWipeTransitionModifier.StationaryView, Int>, IDView<TextWipeTransitionModifier.TransitionView, Int>>, EmptyView>)>>>>, _EnvironmentKeyWritingModifier<LayoutDirection>>, _TextRendererViewModifier<TextWipeTransitionModifier.NullRenderer>>, _PreferenceActionModifier<Text.LayoutKey>>, type metadata accessor for ModifiedContent<ModifiedContent<ModifiedContent<_ViewModifier_Content<TextWipeTransitionModifier>, _OverlayModifier<ZStack<TupleView<(Spacer, _ConditionalContent<_ConditionalContent<IDView<TextWipeTransitionModifier.StationaryView, Int>, IDView<TextWipeTransitionModifier.TransitionView, Int>>, EmptyView>)>>>>, _EnvironmentKeyWritingModifier<LayoutDirection>>, _TextRendererViewModifier<TextWipeTransitionModifier.NullRenderer>>, type metadata accessor for _PreferenceActionModifier<Text.LayoutKey>, MEMORY[0x1E697E830]);
    lazy protocol witness table accessor for type ModifiedContent<Rectangle, _ForegroundStyleModifier<LinearGradient>> and conformance <> ModifiedContent<A, B>(&lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<_ViewModifier_Content<TextWipeTransitionModifier>, _OverlayModifier<ZStack<TupleView<(Spacer, _ConditionalContent<_ConditionalContent<IDView<TextWipeTransitionModifier.StationaryView, Int>, IDView<TextWipeTransitionModifier.TransitionView, Int>>, EmptyView>)>>>>, _EnvironmentKeyWritingModifier<LayoutDirection>>, _TextRendererViewModifier<TextWipeTransitionModifier.NullRenderer>> and conformance <> ModifiedContent<A, B>, type metadata accessor for ModifiedContent<ModifiedContent<ModifiedContent<_ViewModifier_Content<TextWipeTransitionModifier>, _OverlayModifier<ZStack<TupleView<(Spacer, _ConditionalContent<_ConditionalContent<IDView<TextWipeTransitionModifier.StationaryView, Int>, IDView<TextWipeTransitionModifier.TransitionView, Int>>, EmptyView>)>>>>, _EnvironmentKeyWritingModifier<LayoutDirection>>, _TextRendererViewModifier<TextWipeTransitionModifier.NullRenderer>>, lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<_ViewModifier_Content<TextWipeTransitionModifier>, _OverlayModifier<ZStack<TupleView<(Spacer, _ConditionalContent<_ConditionalContent<IDView<TextWipeTransitionModifier.StationaryView, Int>, IDView<TextWipeTransitionModifier.TransitionView, Int>>, EmptyView>)>>>>, _EnvironmentKeyWritingModifier<LayoutDirection>> and conformance <> ModifiedContent<A, B>, lazy protocol witness table accessor for type _TextRendererViewModifier<TextWipeTransitionModifier.NullRenderer> and conformance _TextRendererViewModifier<A>);
    lazy protocol witness table accessor for type AODProgressProxy and conformance AODProgressProxy(&lazy protocol witness table cache variable for type _PreferenceActionModifier<Text.LayoutKey> and conformance _PreferenceActionModifier<A>, type metadata accessor for _PreferenceActionModifier<Text.LayoutKey>);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<_ViewModifier_Content<TextWipeTransitionModifier>, _OverlayModifier<ZStack<TupleView<(Spacer, _ConditionalContent<_ConditionalContent<IDView<TextWipeTransitionModifier.StationaryView, Int>, IDView<TextWipeTransitionModifier.TransitionView, Int>>, EmptyView>)>>>>, _EnvironmentKeyWritingModifier<LayoutDirection>>, _TextRendererViewModifier<TextWipeTransitionModifier.NullRenderer>>, _PreferenceActionModifier<Text.LayoutKey>> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

uint64_t lazy protocol witness table accessor for type ModifiedContent<Rectangle, _ForegroundStyleModifier<LinearGradient>> and conformance <> ModifiedContent<A, B>(unint64_t *a1, void (*a2)(uint64_t), void (*a3)(void), void (*a4)(void))
{
  result = *a1;
  if (!result)
  {
    a2(255);
    a3();
    a4();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<_ViewModifier_Content<TextWipeTransitionModifier>, _OverlayModifier<ZStack<TupleView<(Spacer, _ConditionalContent<_ConditionalContent<IDView<TextWipeTransitionModifier.StationaryView, Int>, IDView<TextWipeTransitionModifier.TransitionView, Int>>, EmptyView>)>>>>, _EnvironmentKeyWritingModifier<LayoutDirection>> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<_ViewModifier_Content<TextWipeTransitionModifier>, _OverlayModifier<ZStack<TupleView<(Spacer, _ConditionalContent<_ConditionalContent<IDView<TextWipeTransitionModifier.StationaryView, Int>, IDView<TextWipeTransitionModifier.TransitionView, Int>>, EmptyView>)>>>>, _EnvironmentKeyWritingModifier<LayoutDirection>> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<_ViewModifier_Content<TextWipeTransitionModifier>, _OverlayModifier<ZStack<TupleView<(Spacer, _ConditionalContent<_ConditionalContent<IDView<TextWipeTransitionModifier.StationaryView, Int>, IDView<TextWipeTransitionModifier.TransitionView, Int>>, EmptyView>)>>>>, _EnvironmentKeyWritingModifier<LayoutDirection>> and conformance <> ModifiedContent<A, B>)
  {
    type metadata accessor for _ConditionalContent<TupleView<(ModifiedContent<ForEach<ArraySlice<TextModel.Cluster>, Int, TextWipeTransitionModifier.FadeOutCluster>, _OffsetEffect>, ForEach<ArraySlice<TextModel.Cluster>, Int, TextWipeTransitionModifier.FadeInCluster>)>, ForEach<ArraySlice<TextModel.MorphCluster>, Int, TextWipeTransitionModifier.MoveCluster>>.Storage(255, &lazy cache variable for type metadata for ModifiedContent<ModifiedContent<_ViewModifier_Content<TextWipeTransitionModifier>, _OverlayModifier<ZStack<TupleView<(Spacer, _ConditionalContent<_ConditionalContent<IDView<TextWipeTransitionModifier.StationaryView, Int>, IDView<TextWipeTransitionModifier.TransitionView, Int>>, EmptyView>)>>>>, _EnvironmentKeyWritingModifier<LayoutDirection>>, type metadata accessor for ModifiedContent<_ViewModifier_Content<TextWipeTransitionModifier>, _OverlayModifier<ZStack<TupleView<(Spacer, _ConditionalContent<_ConditionalContent<IDView<TextWipeTransitionModifier.StationaryView, Int>, IDView<TextWipeTransitionModifier.TransitionView, Int>>, EmptyView>)>>>>, type metadata accessor for _EnvironmentKeyWritingModifier<LayoutDirection>, MEMORY[0x1E697E830]);
    lazy protocol witness table accessor for type ModifiedContent<_ViewModifier_Content<TextWipeTransitionModifier>, _OverlayModifier<ZStack<TupleView<(Spacer, _ConditionalContent<_ConditionalContent<IDView<TextWipeTransitionModifier.StationaryView, Int>, IDView<TextWipeTransitionModifier.TransitionView, Int>>, EmptyView>)>>>> and conformance <> ModifiedContent<A, B>();
    lazy protocol witness table accessor for type AODProgressProxy and conformance AODProgressProxy(&lazy protocol witness table cache variable for type _EnvironmentKeyWritingModifier<LayoutDirection> and conformance _EnvironmentKeyWritingModifier<A>, type metadata accessor for _EnvironmentKeyWritingModifier<LayoutDirection>);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<_ViewModifier_Content<TextWipeTransitionModifier>, _OverlayModifier<ZStack<TupleView<(Spacer, _ConditionalContent<_ConditionalContent<IDView<TextWipeTransitionModifier.StationaryView, Int>, IDView<TextWipeTransitionModifier.TransitionView, Int>>, EmptyView>)>>>>, _EnvironmentKeyWritingModifier<LayoutDirection>> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<_ViewModifier_Content<TextWipeTransitionModifier>, _OverlayModifier<ZStack<TupleView<(Spacer, _ConditionalContent<_ConditionalContent<IDView<TextWipeTransitionModifier.StationaryView, Int>, IDView<TextWipeTransitionModifier.TransitionView, Int>>, EmptyView>)>>>> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<_ViewModifier_Content<TextWipeTransitionModifier>, _OverlayModifier<ZStack<TupleView<(Spacer, _ConditionalContent<_ConditionalContent<IDView<TextWipeTransitionModifier.StationaryView, Int>, IDView<TextWipeTransitionModifier.TransitionView, Int>>, EmptyView>)>>>> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<_ViewModifier_Content<TextWipeTransitionModifier>, _OverlayModifier<ZStack<TupleView<(Spacer, _ConditionalContent<_ConditionalContent<IDView<TextWipeTransitionModifier.StationaryView, Int>, IDView<TextWipeTransitionModifier.TransitionView, Int>>, EmptyView>)>>>> and conformance <> ModifiedContent<A, B>)
  {
    type metadata accessor for ModifiedContent<_ViewModifier_Content<TextWipeTransitionModifier>, _OverlayModifier<ZStack<TupleView<(Spacer, _ConditionalContent<_ConditionalContent<IDView<TextWipeTransitionModifier.StationaryView, Int>, IDView<TextWipeTransitionModifier.TransitionView, Int>>, EmptyView>)>>>>(255);
    lazy protocol witness table accessor for type AODProgressProxy and conformance AODProgressProxy(&lazy protocol witness table cache variable for type _ViewModifier_Content<TextWipeTransitionModifier> and conformance _ViewModifier_Content<A>, type metadata accessor for _ViewModifier_Content<TextWipeTransitionModifier>);
    lazy protocol witness table accessor for type AODProgressProxy and conformance AODProgressProxy(&lazy protocol witness table cache variable for type _OverlayModifier<ZStack<TupleView<(Spacer, _ConditionalContent<_ConditionalContent<IDView<TextWipeTransitionModifier.StationaryView, Int>, IDView<TextWipeTransitionModifier.TransitionView, Int>>, EmptyView>)>>> and conformance _OverlayModifier<A>, type metadata accessor for _OverlayModifier<ZStack<TupleView<(Spacer, _ConditionalContent<_ConditionalContent<IDView<TextWipeTransitionModifier.StationaryView, Int>, IDView<TextWipeTransitionModifier.TransitionView, Int>>, EmptyView>)>>>);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<_ViewModifier_Content<TextWipeTransitionModifier>, _OverlayModifier<ZStack<TupleView<(Spacer, _ConditionalContent<_ConditionalContent<IDView<TextWipeTransitionModifier.StationaryView, Int>, IDView<TextWipeTransitionModifier.TransitionView, Int>>, EmptyView>)>>>> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type _TextRendererViewModifier<TextWipeTransitionModifier.NullRenderer> and conformance _TextRendererViewModifier<A>()
{
  result = lazy protocol witness table cache variable for type _TextRendererViewModifier<TextWipeTransitionModifier.NullRenderer> and conformance _TextRendererViewModifier<A>;
  if (!lazy protocol witness table cache variable for type _TextRendererViewModifier<TextWipeTransitionModifier.NullRenderer> and conformance _TextRendererViewModifier<A>)
  {
    type metadata accessor for _ViewModifier_Content<TextGlassWipeTransitionModifier>(255, &lazy cache variable for type metadata for _TextRendererViewModifier<TextWipeTransitionModifier.NullRenderer>, lazy protocol witness table accessor for type TextWipeTransitionModifier.NullRenderer and conformance TextWipeTransitionModifier.NullRenderer, &unk_1F0A2C898, MEMORY[0x1E6980628]);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type _TextRendererViewModifier<TextWipeTransitionModifier.NullRenderer> and conformance _TextRendererViewModifier<A>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type TextWipeTransitionTiming.Bezier and conformance TextWipeTransitionTiming.Bezier()
{
  result = lazy protocol witness table cache variable for type TextWipeTransitionTiming.Bezier and conformance TextWipeTransitionTiming.Bezier;
  if (!lazy protocol witness table cache variable for type TextWipeTransitionTiming.Bezier and conformance TextWipeTransitionTiming.Bezier)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type TextWipeTransitionTiming.Bezier and conformance TextWipeTransitionTiming.Bezier);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type EmptyAnimatableData and conformance EmptyAnimatableData()
{
  result = lazy protocol witness table cache variable for type EmptyAnimatableData and conformance EmptyAnimatableData;
  if (!lazy protocol witness table cache variable for type EmptyAnimatableData and conformance EmptyAnimatableData)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type EmptyAnimatableData and conformance EmptyAnimatableData);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type EditAnimationInfo and conformance EditAnimationInfo()
{
  result = lazy protocol witness table cache variable for type EditAnimationInfo and conformance EditAnimationInfo;
  if (!lazy protocol witness table cache variable for type EditAnimationInfo and conformance EditAnimationInfo)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type EditAnimationInfo and conformance EditAnimationInfo);
  }

  return result;
}

void type metadata accessor for ForEach<[EditWithAnimationInfo<Int>], Edit<Int>, _ConditionalContent<TupleView<(ModifiedContent<ForEach<ArraySlice<TextModel.Cluster>, Int, TextWipeTransitionModifier.FadeOutCluster>, _OffsetEffect>, ForEach<ArraySlice<TextModel.Cluster>, Int, TextWipeTransitionModifier.FadeInCluster>)>, ForEach<ArraySlice<TextModel.MorphCluster>, Int, TextWipeTransitionModifier.MoveCluster>>>()
{
  if (!lazy cache variable for type metadata for ForEach<[EditWithAnimationInfo<Int>], Edit<Int>, _ConditionalContent<TupleView<(ModifiedContent<ForEach<ArraySlice<TextModel.Cluster>, Int, TextWipeTransitionModifier.FadeOutCluster>, _OffsetEffect>, ForEach<ArraySlice<TextModel.Cluster>, Int, TextWipeTransitionModifier.FadeInCluster>)>, ForEach<ArraySlice<TextModel.MorphCluster>, Int, TextWipeTransitionModifier.MoveCluster>>>)
  {
    type metadata accessor for [EditWithAnimationInfo<Int>](255, &lazy cache variable for type metadata for [EditWithAnimationInfo<Int>], &lazy cache variable for type metadata for EditWithAnimationInfo<Int>, type metadata accessor for EditWithAnimationInfo, MEMORY[0x1E69E62F8]);
    type metadata accessor for ModifiedContent<Text, TextGlassWipeTransitionModifier>(255, &lazy cache variable for type metadata for Edit<Int>, MEMORY[0x1E69E6530], MEMORY[0x1E69E6548], type metadata accessor for Edit);
    type metadata accessor for _ConditionalContent<TupleView<(ModifiedContent<ForEach<ArraySlice<TextModel.Cluster>, Int, TextWipeTransitionModifier.FadeOutCluster>, _OffsetEffect>, ForEach<ArraySlice<TextModel.Cluster>, Int, TextWipeTransitionModifier.FadeInCluster>)>, ForEach<ArraySlice<TextModel.MorphCluster>, Int, TextWipeTransitionModifier.MoveCluster>>.Storage(255, &lazy cache variable for type metadata for _ConditionalContent<TupleView<(ModifiedContent<ForEach<ArraySlice<TextModel.Cluster>, Int, TextWipeTransitionModifier.FadeOutCluster>, _OffsetEffect>, ForEach<ArraySlice<TextModel.Cluster>, Int, TextWipeTransitionModifier.FadeInCluster>)>, ForEach<ArraySlice<TextModel.MorphCluster>, Int, TextWipeTransitionModifier.MoveCluster>>, type metadata accessor for TupleView<(ModifiedContent<ForEach<ArraySlice<TextModel.Cluster>, Int, TextWipeTransitionModifier.FadeOutCluster>, _OffsetEffect>, ForEach<ArraySlice<TextModel.Cluster>, Int, TextWipeTransitionModifier.FadeInCluster>)>, type metadata accessor for ForEach<ArraySlice<TextModel.MorphCluster>, Int, TextWipeTransitionModifier.MoveCluster>, MEMORY[0x1E697F960]);
    lazy protocol witness table accessor for type [EditWithAnimationInfo<Int>] and conformance [A]();
    lazy protocol witness table accessor for type Edit<Int> and conformance <> Edit<A>();
    v0 = type metadata accessor for ForEach();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for ForEach<[EditWithAnimationInfo<Int>], Edit<Int>, _ConditionalContent<TupleView<(ModifiedContent<ForEach<ArraySlice<TextModel.Cluster>, Int, TextWipeTransitionModifier.FadeOutCluster>, _OffsetEffect>, ForEach<ArraySlice<TextModel.Cluster>, Int, TextWipeTransitionModifier.FadeInCluster>)>, ForEach<ArraySlice<TextModel.MorphCluster>, Int, TextWipeTransitionModifier.MoveCluster>>>);
    }
  }
}

uint64_t lazy protocol witness table accessor for type ArraySlice<TextModel.MorphCluster> and conformance ArraySlice<A>(unint64_t *a1, unint64_t *a2, uint64_t a3)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for Color?(255, a2, a3, MEMORY[0x1E69E6948]);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

void type metadata accessor for ForEach<ArraySlice<TextModel.MorphCluster>, Int, TextWipeTransitionModifier.MoveCluster>()
{
  if (!lazy cache variable for type metadata for ForEach<ArraySlice<TextModel.MorphCluster>, Int, TextWipeTransitionModifier.MoveCluster>)
  {
    type metadata accessor for Color?(255, &lazy cache variable for type metadata for ArraySlice<TextModel.MorphCluster>, &type metadata for TextModel.MorphCluster, MEMORY[0x1E69E6948]);
    type metadata accessor for TextWipeTransitionModifier.MoveCluster(255);
    lazy protocol witness table accessor for type ArraySlice<TextModel.MorphCluster> and conformance ArraySlice<A>(&lazy protocol witness table cache variable for type ArraySlice<TextModel.MorphCluster> and conformance ArraySlice<A>, &lazy cache variable for type metadata for ArraySlice<TextModel.MorphCluster>, &type metadata for TextModel.MorphCluster);
    v0 = type metadata accessor for ForEach();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for ForEach<ArraySlice<TextModel.MorphCluster>, Int, TextWipeTransitionModifier.MoveCluster>);
    }
  }
}

uint64_t type metadata accessor for AODProgressProxy(uint64_t a1, uint64_t *a2)
{
  result = *a2;
  if (!*a2)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void type metadata accessor for <<opaque return type of View.backdropGroup_temp(_:name:)>>.0()
{
  if (!lazy cache variable for type metadata for <<opaque return type of View.backdropGroup_temp(_:name:)>>.0)
  {
    type metadata accessor for ForEach<[EditWithAnimationInfo<Int>], Edit<Int>, _ConditionalContent<TupleView<(ModifiedContent<ForEach<ArraySlice<TextModel.Cluster>, Int, TextWipeTransitionModifier.FadeOutCluster>, _OffsetEffect>, ForEach<ArraySlice<TextModel.Cluster>, Int, TextWipeTransitionModifier.FadeInCluster>)>, ForEach<ArraySlice<TextModel.MorphCluster>, Int, TextWipeTransitionModifier.MoveCluster>>>();
    lazy protocol witness table accessor for type ForEach<ArraySlice<TextModel.MorphCluster>, Int, TextWipeTransitionModifier.MoveCluster> and conformance <> ForEach<A, B, C>(&lazy protocol witness table cache variable for type ForEach<[EditWithAnimationInfo<Int>], Edit<Int>, _ConditionalContent<TupleView<(ModifiedContent<ForEach<ArraySlice<TextModel.Cluster>, Int, TextWipeTransitionModifier.FadeOutCluster>, _OffsetEffect>, ForEach<ArraySlice<TextModel.Cluster>, Int, TextWipeTransitionModifier.FadeInCluster>)>, ForEach<ArraySlice<TextModel.MorphCluster>, Int, TextWipeTransitionModifier.MoveCluster>>> and conformance <> ForEach<A, B, C>, type metadata accessor for ForEach<[EditWithAnimationInfo<Int>], Edit<Int>, _ConditionalContent<TupleView<(ModifiedContent<ForEach<ArraySlice<TextModel.Cluster>, Int, TextWipeTransitionModifier.FadeOutCluster>, _OffsetEffect>, ForEach<ArraySlice<TextModel.Cluster>, Int, TextWipeTransitionModifier.FadeInCluster>)>, ForEach<ArraySlice<TextModel.MorphCluster>, Int, TextWipeTransitionModifier.MoveCluster>>>, lazy protocol witness table accessor for type _ConditionalContent<TupleView<(ModifiedContent<ForEach<ArraySlice<TextModel.Cluster>, Int, TextWipeTransitionModifier.FadeOutCluster>, _OffsetEffect>, ForEach<ArraySlice<TextModel.Cluster>, Int, TextWipeTransitionModifier.FadeInCluster>)>, ForEach<ArraySlice<TextModel.MorphCluster>, Int, TextWipeTransitionModifier.MoveCluster>> and conformance <> _ConditionalContent<A, B>);
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v1)
    {
      atomic_store(OpaqueTypeMetadata2, &lazy cache variable for type metadata for <<opaque return type of View.backdropGroup_temp(_:name:)>>.0);
    }
  }
}

uint64_t lazy protocol witness table accessor for type ForEach<ArraySlice<TextModel.MorphCluster>, Int, TextWipeTransitionModifier.MoveCluster> and conformance <> ForEach<A, B, C>(unint64_t *a1, void (*a2)(uint64_t), void (*a3)(void))
{
  result = *a1;
  if (!result)
  {
    a2(255);
    a3();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type _ConditionalContent<TupleView<(ModifiedContent<ForEach<ArraySlice<TextModel.Cluster>, Int, TextWipeTransitionModifier.FadeOutCluster>, _OffsetEffect>, ForEach<ArraySlice<TextModel.Cluster>, Int, TextWipeTransitionModifier.FadeInCluster>)>, ForEach<ArraySlice<TextModel.MorphCluster>, Int, TextWipeTransitionModifier.MoveCluster>> and conformance <> _ConditionalContent<A, B>()
{
  result = lazy protocol witness table cache variable for type _ConditionalContent<TupleView<(ModifiedContent<ForEach<ArraySlice<TextModel.Cluster>, Int, TextWipeTransitionModifier.FadeOutCluster>, _OffsetEffect>, ForEach<ArraySlice<TextModel.Cluster>, Int, TextWipeTransitionModifier.FadeInCluster>)>, ForEach<ArraySlice<TextModel.MorphCluster>, Int, TextWipeTransitionModifier.MoveCluster>> and conformance <> _ConditionalContent<A, B>;
  if (!lazy protocol witness table cache variable for type _ConditionalContent<TupleView<(ModifiedContent<ForEach<ArraySlice<TextModel.Cluster>, Int, TextWipeTransitionModifier.FadeOutCluster>, _OffsetEffect>, ForEach<ArraySlice<TextModel.Cluster>, Int, TextWipeTransitionModifier.FadeInCluster>)>, ForEach<ArraySlice<TextModel.MorphCluster>, Int, TextWipeTransitionModifier.MoveCluster>> and conformance <> _ConditionalContent<A, B>)
  {
    type metadata accessor for _ConditionalContent<TupleView<(ModifiedContent<ForEach<ArraySlice<TextModel.Cluster>, Int, TextWipeTransitionModifier.FadeOutCluster>, _OffsetEffect>, ForEach<ArraySlice<TextModel.Cluster>, Int, TextWipeTransitionModifier.FadeInCluster>)>, ForEach<ArraySlice<TextModel.MorphCluster>, Int, TextWipeTransitionModifier.MoveCluster>>.Storage(255, &lazy cache variable for type metadata for _ConditionalContent<TupleView<(ModifiedContent<ForEach<ArraySlice<TextModel.Cluster>, Int, TextWipeTransitionModifier.FadeOutCluster>, _OffsetEffect>, ForEach<ArraySlice<TextModel.Cluster>, Int, TextWipeTransitionModifier.FadeInCluster>)>, ForEach<ArraySlice<TextModel.MorphCluster>, Int, TextWipeTransitionModifier.MoveCluster>>, type metadata accessor for TupleView<(ModifiedContent<ForEach<ArraySlice<TextModel.Cluster>, Int, TextWipeTransitionModifier.FadeOutCluster>, _OffsetEffect>, ForEach<ArraySlice<TextModel.Cluster>, Int, TextWipeTransitionModifier.FadeInCluster>)>, type metadata accessor for ForEach<ArraySlice<TextModel.MorphCluster>, Int, TextWipeTransitionModifier.MoveCluster>, MEMORY[0x1E697F960]);
    lazy protocol witness table accessor for type AODProgressProxy and conformance AODProgressProxy(&lazy protocol witness table cache variable for type TupleView<(ModifiedContent<ForEach<ArraySlice<TextModel.Cluster>, Int, TextWipeTransitionModifier.FadeOutCluster>, _OffsetEffect>, ForEach<ArraySlice<TextModel.Cluster>, Int, TextWipeTransitionModifier.FadeInCluster>)> and conformance TupleView<A>, type metadata accessor for TupleView<(ModifiedContent<ForEach<ArraySlice<TextModel.Cluster>, Int, TextWipeTransitionModifier.FadeOutCluster>, _OffsetEffect>, ForEach<ArraySlice<TextModel.Cluster>, Int, TextWipeTransitionModifier.FadeInCluster>)>);
    lazy protocol witness table accessor for type ForEach<ArraySlice<TextModel.MorphCluster>, Int, TextWipeTransitionModifier.MoveCluster> and conformance <> ForEach<A, B, C>(&lazy protocol witness table cache variable for type ForEach<ArraySlice<TextModel.MorphCluster>, Int, TextWipeTransitionModifier.MoveCluster> and conformance <> ForEach<A, B, C>, type metadata accessor for ForEach<ArraySlice<TextModel.MorphCluster>, Int, TextWipeTransitionModifier.MoveCluster>, lazy protocol witness table accessor for type TextWipeTransitionModifier.MoveCluster and conformance TextWipeTransitionModifier.MoveCluster);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type _ConditionalContent<TupleView<(ModifiedContent<ForEach<ArraySlice<TextModel.Cluster>, Int, TextWipeTransitionModifier.FadeOutCluster>, _OffsetEffect>, ForEach<ArraySlice<TextModel.Cluster>, Int, TextWipeTransitionModifier.FadeInCluster>)>, ForEach<ArraySlice<TextModel.MorphCluster>, Int, TextWipeTransitionModifier.MoveCluster>> and conformance <> _ConditionalContent<A, B>);
  }

  return result;
}

uint64_t objectdestroy_145Tm(uint64_t a1)
{

  return MEMORY[0x1EEE6BDD0](v1, a1, 7);
}

unint64_t lazy protocol witness table accessor for type TextModel.MorphCluster and conformance TextModel.MorphCluster()
{
  result = lazy protocol witness table cache variable for type TextModel.MorphCluster and conformance TextModel.MorphCluster;
  if (!lazy protocol witness table cache variable for type TextModel.MorphCluster and conformance TextModel.MorphCluster)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type TextModel.MorphCluster and conformance TextModel.MorphCluster);
  }

  return result;
}

void type metadata completion function for TextWipeTransitionModifier.MoveCluster()
{
  type metadata accessor for UnitCurve();
  if (v0 <= 0x3F)
  {
    type metadata accessor for Color?(319, &lazy cache variable for type metadata for State<Bool>, MEMORY[0x1E69E6370], MEMORY[0x1E6981790]);
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

__n128 __swift_memcpy56_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  v4 = *(a2 + 32);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 16) = v3;
  *(a1 + 32) = v4;
  *a1 = result;
  return result;
}

uint64_t getEnumTagSinglePayload for OffsetPath(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFA && *(a1 + 56))
  {
    return (*a1 + 250);
  }

  v3 = *(a1 + 32);
  if (v3 <= 6)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t storeEnumTagSinglePayload for OffsetPath(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xF9)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 - 250;
    if (a3 >= 0xFA)
    {
      *(result + 56) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFA)
    {
      *(result + 56) = 0;
    }

    if (a2)
    {
      *(result + 32) = -a2;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for TextWipeTransitionModifier.StationaryView(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 81))
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

uint64_t storeEnumTagSinglePayload for TextWipeTransitionModifier.StationaryView(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 72) = 0;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 80) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 81) = 1;
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

    *(result + 81) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for TextModel(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 48))
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

uint64_t storeEnumTagSinglePayload for TextModel(uint64_t result, int a2, int a3)
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
      *result = (a2 - 1);
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

unint64_t lazy protocol witness table accessor for type Path and conformance Path()
{
  result = lazy protocol witness table cache variable for type Path and conformance Path;
  if (!lazy protocol witness table cache variable for type Path and conformance Path)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Path and conformance Path);
  }

  return result;
}

uint64_t partial apply for closure #1 in TextWipeTransitionModifier.MoveCluster.body.getter@<X0>(double *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *(type metadata accessor for TextWipeTransitionModifier.MoveCluster(0) - 8);
  v6 = (v2 + ((*(v5 + 80) + 16) & ~*(v5 + 80)));

  return closure #1 in TextWipeTransitionModifier.MoveCluster.body.getter(a1, v6, a2);
}

uint64_t objectdestroy_206Tm()
{
  v1 = type metadata accessor for TextWipeTransitionModifier.MoveCluster(0);
  v2 = *(*(v1 - 8) + 80);
  v3 = *(*(v1 - 8) + 64);
  v4 = (v2 + 16) & ~v2;
  v5 = (v0 + v4);
  outlined consume of Path.Storage(*(v0 + v4 + 40), *(v0 + v4 + 48), *(v0 + v4 + 56), *(v0 + v4 + 64), *(v0 + v4 + 72));
  v6 = *(v0 + v4 + 168);
  if (v6 != 255)
  {
    outlined consume of Path.Storage(v5[17], v5[18], v5[19], v5[20], v6);
  }

  v7 = *(v1 + 20);
  v8 = type metadata accessor for UnitCurve();
  (*(*(v8 - 8) + 8))(v5 + v7, v8);

  return MEMORY[0x1EEE6BDD0](v0, v4 + v3, v2 | 7);
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<TextWipeTransitionModifier.MorphClusterView, _OffsetEffect> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<TextWipeTransitionModifier.MorphClusterView, _OffsetEffect> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<TextWipeTransitionModifier.MorphClusterView, _OffsetEffect> and conformance <> ModifiedContent<A, B>)
  {
    type metadata accessor for ModifiedContent<Text, TextGlassWipeTransitionModifier>(255, &lazy cache variable for type metadata for ModifiedContent<TextWipeTransitionModifier.MorphClusterView, _OffsetEffect>, &unk_1F0A2CF08, MEMORY[0x1E697E278], MEMORY[0x1E697E830]);
    lazy protocol witness table accessor for type TextWipeTransitionModifier.MorphClusterView and conformance TextWipeTransitionModifier.MorphClusterView();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<TextWipeTransitionModifier.MorphClusterView, _OffsetEffect> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

void type metadata accessor for KeyframeAnimator<Double, KeyframeTrack<Double, Double, <<opaque return type of static KeyframesBuilder.buildPartialBlock<A, B>(accumulated:next:)>>.0>, ModifiedContent<TextWipeTransitionModifier.MorphClusterView, _OffsetEffect>>()
{
  if (!lazy cache variable for type metadata for KeyframeAnimator<Double, KeyframeTrack<Double, Double, <<opaque return type of static KeyframesBuilder.buildPartialBlock<A, B>(accumulated:next:)>>.0>, ModifiedContent<TextWipeTransitionModifier.MorphClusterView, _OffsetEffect>>)
  {
    type metadata accessor for KeyframeTrack<Double, Double, <<opaque return type of static KeyframesBuilder.buildPartialBlock<A, B>(accumulated:next:)>>.0>();
    type metadata accessor for ModifiedContent<Text, TextGlassWipeTransitionModifier>(255, &lazy cache variable for type metadata for ModifiedContent<TextWipeTransitionModifier.MorphClusterView, _OffsetEffect>, &unk_1F0A2CF08, MEMORY[0x1E697E278], MEMORY[0x1E697E830]);
    lazy protocol witness table accessor for type AODProgressProxy and conformance AODProgressProxy(&lazy protocol witness table cache variable for type KeyframeTrack<Double, Double, <<opaque return type of static KeyframesBuilder.buildPartialBlock<A, B>(accumulated:next:)>>.0> and conformance KeyframeTrack<A, B, C>, type metadata accessor for KeyframeTrack<Double, Double, <<opaque return type of static KeyframesBuilder.buildPartialBlock<A, B>(accumulated:next:)>>.0>);
    lazy protocol witness table accessor for type ModifiedContent<TextWipeTransitionModifier.MorphClusterView, _OffsetEffect> and conformance <> ModifiedContent<A, B>();
    v0 = type metadata accessor for KeyframeAnimator();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for KeyframeAnimator<Double, KeyframeTrack<Double, Double, <<opaque return type of static KeyframesBuilder.buildPartialBlock<A, B>(accumulated:next:)>>.0>, ModifiedContent<TextWipeTransitionModifier.MorphClusterView, _OffsetEffect>>);
    }
  }
}

uint64_t partial apply for closure #1 in TextWipeTransitionModifier.FadeOutCluster.body.getter@<X0>(double *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *(type metadata accessor for TextWipeTransitionModifier.FadeOutCluster(0) - 8);
  v6 = (v2 + ((*(v5 + 80) + 16) & ~*(v5 + 80)));

  return closure #1 in TextWipeTransitionModifier.FadeOutCluster.body.getter(a1, v6, a2);
}

uint64_t objectdestroy_216Tm()
{
  v1 = (type metadata accessor for TextWipeTransitionModifier.FadeOutCluster(0) - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*v1 + 64);
  outlined consume of Path.Storage(*(v0 + v3 + 40), *(v0 + v3 + 48), *(v0 + v3 + 56), *(v0 + v3 + 64), *(v0 + v3 + 72));
  v5 = v1[7];
  v6 = type metadata accessor for UnitCurve();
  (*(*(v6 - 8) + 8))(v0 + v3 + v5, v6);

  return MEMORY[0x1EEE6BDD0](v0, v3 + v4, v2 | 7);
}

uint64_t partial apply for closure #2 in TextWipeTransitionModifier.MoveCluster.body.getter(uint64_t a1, uint64_t (*a2)(void), uint64_t (*a3)(uint64_t, uint64_t))
{
  v5 = *(a2(0) - 8);
  v6 = v3 + ((*(v5 + 80) + 16) & ~*(v5 + 80));

  return a3(a1, v6);
}

void type metadata accessor for ModifiedContent<TextWipeTransitionModifier.ClusterView, _MaskAlignmentEffect<ModifiedContent<Rectangle, _ForegroundStyleModifier<LinearGradient>>>>()
{
  if (!lazy cache variable for type metadata for ModifiedContent<TextWipeTransitionModifier.ClusterView, _MaskAlignmentEffect<ModifiedContent<Rectangle, _ForegroundStyleModifier<LinearGradient>>>>)
  {
    type metadata accessor for _MaskAlignmentEffect<ModifiedContent<Rectangle, _ForegroundStyleModifier<LinearGradient>>>();
    v0 = type metadata accessor for ModifiedContent();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for ModifiedContent<TextWipeTransitionModifier.ClusterView, _MaskAlignmentEffect<ModifiedContent<Rectangle, _ForegroundStyleModifier<LinearGradient>>>>);
    }
  }
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<TextWipeTransitionModifier.ClusterView, _MaskAlignmentEffect<ModifiedContent<Rectangle, _ForegroundStyleModifier<LinearGradient>>>>, _OffsetEffect> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<TextWipeTransitionModifier.ClusterView, _MaskAlignmentEffect<ModifiedContent<Rectangle, _ForegroundStyleModifier<LinearGradient>>>>, _OffsetEffect> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<TextWipeTransitionModifier.ClusterView, _MaskAlignmentEffect<ModifiedContent<Rectangle, _ForegroundStyleModifier<LinearGradient>>>>, _OffsetEffect> and conformance <> ModifiedContent<A, B>)
  {
    type metadata accessor for _ForegroundStyleModifier<Material>(255, &lazy cache variable for type metadata for ModifiedContent<ModifiedContent<TextWipeTransitionModifier.ClusterView, _MaskAlignmentEffect<ModifiedContent<Rectangle, _ForegroundStyleModifier<LinearGradient>>>>, _OffsetEffect>, type metadata accessor for ModifiedContent<TextWipeTransitionModifier.ClusterView, _MaskAlignmentEffect<ModifiedContent<Rectangle, _ForegroundStyleModifier<LinearGradient>>>>, MEMORY[0x1E697E278], MEMORY[0x1E697E830]);
    lazy protocol witness table accessor for type ModifiedContent<TextWipeTransitionModifier.ClusterView, _MaskAlignmentEffect<ModifiedContent<Rectangle, _ForegroundStyleModifier<LinearGradient>>>> and conformance <> ModifiedContent<A, B>();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<TextWipeTransitionModifier.ClusterView, _MaskAlignmentEffect<ModifiedContent<Rectangle, _ForegroundStyleModifier<LinearGradient>>>>, _OffsetEffect> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<TextWipeTransitionModifier.ClusterView, _MaskAlignmentEffect<ModifiedContent<Rectangle, _ForegroundStyleModifier<LinearGradient>>>> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<TextWipeTransitionModifier.ClusterView, _MaskAlignmentEffect<ModifiedContent<Rectangle, _ForegroundStyleModifier<LinearGradient>>>> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<TextWipeTransitionModifier.ClusterView, _MaskAlignmentEffect<ModifiedContent<Rectangle, _ForegroundStyleModifier<LinearGradient>>>> and conformance <> ModifiedContent<A, B>)
  {
    type metadata accessor for ModifiedContent<TextWipeTransitionModifier.ClusterView, _MaskAlignmentEffect<ModifiedContent<Rectangle, _ForegroundStyleModifier<LinearGradient>>>>();
    lazy protocol witness table accessor for type TextWipeTransitionModifier.ClusterView and conformance TextWipeTransitionModifier.ClusterView();
    lazy protocol witness table accessor for type AODProgressProxy and conformance AODProgressProxy(&lazy protocol witness table cache variable for type _MaskAlignmentEffect<ModifiedContent<Rectangle, _ForegroundStyleModifier<LinearGradient>>> and conformance _MaskAlignmentEffect<A>, type metadata accessor for _MaskAlignmentEffect<ModifiedContent<Rectangle, _ForegroundStyleModifier<LinearGradient>>>);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<TextWipeTransitionModifier.ClusterView, _MaskAlignmentEffect<ModifiedContent<Rectangle, _ForegroundStyleModifier<LinearGradient>>>> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type TextWipeTransitionModifier.ClusterView and conformance TextWipeTransitionModifier.ClusterView()
{
  result = lazy protocol witness table cache variable for type TextWipeTransitionModifier.ClusterView and conformance TextWipeTransitionModifier.ClusterView;
  if (!lazy protocol witness table cache variable for type TextWipeTransitionModifier.ClusterView and conformance TextWipeTransitionModifier.ClusterView)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type TextWipeTransitionModifier.ClusterView and conformance TextWipeTransitionModifier.ClusterView);
  }

  return result;
}

void type metadata accessor for KeyframeAnimator<Double, KeyframeTrack<Double, Double, <<opaque return type of static KeyframesBuilder.buildPartialBlock<A, B>(accumulated:next:)>>.0>, ModifiedContent<ModifiedContent<TextWipeTransitionModifier.ClusterView, _MaskAlignmentEffect<ModifiedContent<Rectangle, _ForegroundStyleModifier<LinearGradient>>>>, _OffsetEffect>>()
{
  if (!lazy cache variable for type metadata for KeyframeAnimator<Double, KeyframeTrack<Double, Double, <<opaque return type of static KeyframesBuilder.buildPartialBlock<A, B>(accumulated:next:)>>.0>, ModifiedContent<ModifiedContent<TextWipeTransitionModifier.ClusterView, _MaskAlignmentEffect<ModifiedContent<Rectangle, _ForegroundStyleModifier<LinearGradient>>>>, _OffsetEffect>>)
  {
    type metadata accessor for KeyframeTrack<Double, Double, <<opaque return type of static KeyframesBuilder.buildPartialBlock<A, B>(accumulated:next:)>>.0>();
    type metadata accessor for _ForegroundStyleModifier<Material>(255, &lazy cache variable for type metadata for ModifiedContent<ModifiedContent<TextWipeTransitionModifier.ClusterView, _MaskAlignmentEffect<ModifiedContent<Rectangle, _ForegroundStyleModifier<LinearGradient>>>>, _OffsetEffect>, type metadata accessor for ModifiedContent<TextWipeTransitionModifier.ClusterView, _MaskAlignmentEffect<ModifiedContent<Rectangle, _ForegroundStyleModifier<LinearGradient>>>>, MEMORY[0x1E697E278], MEMORY[0x1E697E830]);
    lazy protocol witness table accessor for type AODProgressProxy and conformance AODProgressProxy(&lazy protocol witness table cache variable for type KeyframeTrack<Double, Double, <<opaque return type of static KeyframesBuilder.buildPartialBlock<A, B>(accumulated:next:)>>.0> and conformance KeyframeTrack<A, B, C>, type metadata accessor for KeyframeTrack<Double, Double, <<opaque return type of static KeyframesBuilder.buildPartialBlock<A, B>(accumulated:next:)>>.0>);
    lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<TextWipeTransitionModifier.ClusterView, _MaskAlignmentEffect<ModifiedContent<Rectangle, _ForegroundStyleModifier<LinearGradient>>>>, _OffsetEffect> and conformance <> ModifiedContent<A, B>();
    v0 = type metadata accessor for KeyframeAnimator();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for KeyframeAnimator<Double, KeyframeTrack<Double, Double, <<opaque return type of static KeyframesBuilder.buildPartialBlock<A, B>(accumulated:next:)>>.0>, ModifiedContent<ModifiedContent<TextWipeTransitionModifier.ClusterView, _MaskAlignmentEffect<ModifiedContent<Rectangle, _ForegroundStyleModifier<LinearGradient>>>>, _OffsetEffect>>);
    }
  }
}

uint64_t objectdestroy_225Tm()
{
  v1 = (type metadata accessor for TextWipeTransitionModifier.FadeInCluster(0) - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*v1 + 64);
  outlined consume of Path.Storage(*(v0 + v3 + 40), *(v0 + v3 + 48), *(v0 + v3 + 56), *(v0 + v3 + 64), *(v0 + v3 + 72));
  v5 = v1[7];
  v6 = type metadata accessor for UnitCurve();
  (*(*(v6 - 8) + 8))(v0 + v3 + v5, v6);

  return MEMORY[0x1EEE6BDD0](v0, v3 + v4, v2 | 7);
}

uint64_t partial apply for closure #1 in TextWipeTransitionModifier.FadeInCluster.body.getter(uint64_t a1, uint64_t (*a2)(uint64_t, uint64_t))
{
  v4 = *(type metadata accessor for TextWipeTransitionModifier.FadeInCluster(0) - 8);
  v5 = v2 + ((*(v4 + 80) + 16) & ~*(v4 + 80));

  return a2(a1, v5);
}

void type metadata accessor for KeyframeTrack<TextWipeTransitionModifier.KeyframeAnimationProgress, TextWipeTransitionModifier.KeyframeAnimationProgress, <<opaque return type of static KeyframesBuilder.buildPartialBlock<A, B>(accumulated:next:)>>.0>()
{
  if (!lazy cache variable for type metadata for KeyframeTrack<TextWipeTransitionModifier.KeyframeAnimationProgress, TextWipeTransitionModifier.KeyframeAnimationProgress, <<opaque return type of static KeyframesBuilder.buildPartialBlock<A, B>(accumulated:next:)>>.0>)
  {
    type metadata accessor for <<opaque return type of static KeyframesBuilder.buildPartialBlock<A, B>(accumulated:next:)>>.0();
    type metadata accessor for <<opaque return type of static KeyframesBuilder.buildPartialBlock<A, B>(accumulated:next:)>>.0();
    type metadata accessor for _ViewModifier_Content<TextGlassWipeTransitionModifier>(255, &lazy cache variable for type metadata for LinearKeyframe<TextWipeTransitionModifier.KeyframeAnimationProgress>, lazy protocol witness table accessor for type TextWipeTransitionModifier.KeyframeAnimationProgress and conformance TextWipeTransitionModifier.KeyframeAnimationProgress, &unk_1F0A2D008, MEMORY[0x1E697E3F8]);
    lazy protocol witness table accessor for type LinearKeyframe<TextWipeTransitionModifier.KeyframeAnimationProgress> and conformance LinearKeyframe<A>();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    v0 = type metadata accessor for KeyframeTrack();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for KeyframeTrack<TextWipeTransitionModifier.KeyframeAnimationProgress, TextWipeTransitionModifier.KeyframeAnimationProgress, <<opaque return type of static KeyframesBuilder.buildPartialBlock<A, B>(accumulated:next:)>>.0>);
    }
  }
}

unint64_t lazy protocol witness table accessor for type TextWipeTransitionModifier.KeyframeAnimationProgress and conformance TextWipeTransitionModifier.KeyframeAnimationProgress()
{
  result = lazy protocol witness table cache variable for type TextWipeTransitionModifier.KeyframeAnimationProgress and conformance TextWipeTransitionModifier.KeyframeAnimationProgress;
  if (!lazy protocol witness table cache variable for type TextWipeTransitionModifier.KeyframeAnimationProgress and conformance TextWipeTransitionModifier.KeyframeAnimationProgress)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type TextWipeTransitionModifier.KeyframeAnimationProgress and conformance TextWipeTransitionModifier.KeyframeAnimationProgress);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type LinearKeyframe<TextWipeTransitionModifier.KeyframeAnimationProgress> and conformance LinearKeyframe<A>()
{
  result = lazy protocol witness table cache variable for type LinearKeyframe<TextWipeTransitionModifier.KeyframeAnimationProgress> and conformance LinearKeyframe<A>;
  if (!lazy protocol witness table cache variable for type LinearKeyframe<TextWipeTransitionModifier.KeyframeAnimationProgress> and conformance LinearKeyframe<A>)
  {
    type metadata accessor for _ViewModifier_Content<TextGlassWipeTransitionModifier>(255, &lazy cache variable for type metadata for LinearKeyframe<TextWipeTransitionModifier.KeyframeAnimationProgress>, lazy protocol witness table accessor for type TextWipeTransitionModifier.KeyframeAnimationProgress and conformance TextWipeTransitionModifier.KeyframeAnimationProgress, &unk_1F0A2D008, MEMORY[0x1E697E3F8]);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type LinearKeyframe<TextWipeTransitionModifier.KeyframeAnimationProgress> and conformance LinearKeyframe<A>);
  }

  return result;
}

void type metadata accessor for <<opaque return type of View.onChange<A>(of:initial:_:)>>.0()
{
  if (!lazy cache variable for type metadata for <<opaque return type of View.onChange<A>(of:initial:_:)>>.0)
  {
    type metadata accessor for _ForegroundStyleModifier<Material>(255, &lazy cache variable for type metadata for ModifiedContent<ModifiedContent<TextWipeTransitionModifier.ClusterView, _MaskAlignmentEffect<ModifiedContent<Rectangle, _ForegroundStyleModifier<LinearGradient>>>>, _OffsetEffect>, type metadata accessor for ModifiedContent<TextWipeTransitionModifier.ClusterView, _MaskAlignmentEffect<ModifiedContent<Rectangle, _ForegroundStyleModifier<LinearGradient>>>>, MEMORY[0x1E697E278], MEMORY[0x1E697E830]);
    lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<TextWipeTransitionModifier.ClusterView, _MaskAlignmentEffect<ModifiedContent<Rectangle, _ForegroundStyleModifier<LinearGradient>>>>, _OffsetEffect> and conformance <> ModifiedContent<A, B>();
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v1)
    {
      atomic_store(OpaqueTypeMetadata2, &lazy cache variable for type metadata for <<opaque return type of View.onChange<A>(of:initial:_:)>>.0);
    }
  }
}

void type metadata accessor for KeyframeAnimator<TextWipeTransitionModifier.KeyframeAnimationProgress, KeyframeTrack<TextWipeTransitionModifier.KeyframeAnimationProgress, TextWipeTransitionModifier.KeyframeAnimationProgress, <<opaque return type of static KeyframesBuilder.buildPartialBlock<A, B>(accumulated:next:)>>.0>, <<opaque return type of View.onChange<A>(of:initial:_:)>>.0>()
{
  if (!lazy cache variable for type metadata for KeyframeAnimator<TextWipeTransitionModifier.KeyframeAnimationProgress, KeyframeTrack<TextWipeTransitionModifier.KeyframeAnimationProgress, TextWipeTransitionModifier.KeyframeAnimationProgress, <<opaque return type of static KeyframesBuilder.buildPartialBlock<A, B>(accumulated:next:)>>.0>, <<opaque return type of View.onChange<A>(of:initial:_:)>>.0>)
  {
    type metadata accessor for KeyframeTrack<TextWipeTransitionModifier.KeyframeAnimationProgress, TextWipeTransitionModifier.KeyframeAnimationProgress, <<opaque return type of static KeyframesBuilder.buildPartialBlock<A, B>(accumulated:next:)>>.0>();
    type metadata accessor for <<opaque return type of View.onChange<A>(of:initial:_:)>>.0();
    lazy protocol witness table accessor for type AODProgressProxy and conformance AODProgressProxy(&lazy protocol witness table cache variable for type KeyframeTrack<TextWipeTransitionModifier.KeyframeAnimationProgress, TextWipeTransitionModifier.KeyframeAnimationProgress, <<opaque return type of static KeyframesBuilder.buildPartialBlock<A, B>(accumulated:next:)>>.0> and conformance KeyframeTrack<A, B, C>, type metadata accessor for KeyframeTrack<TextWipeTransitionModifier.KeyframeAnimationProgress, TextWipeTransitionModifier.KeyframeAnimationProgress, <<opaque return type of static KeyframesBuilder.buildPartialBlock<A, B>(accumulated:next:)>>.0>);
    type metadata accessor for _ForegroundStyleModifier<Material>(255, &lazy cache variable for type metadata for ModifiedContent<ModifiedContent<TextWipeTransitionModifier.ClusterView, _MaskAlignmentEffect<ModifiedContent<Rectangle, _ForegroundStyleModifier<LinearGradient>>>>, _OffsetEffect>, type metadata accessor for ModifiedContent<TextWipeTransitionModifier.ClusterView, _MaskAlignmentEffect<ModifiedContent<Rectangle, _ForegroundStyleModifier<LinearGradient>>>>, MEMORY[0x1E697E278], MEMORY[0x1E697E830]);
    lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<TextWipeTransitionModifier.ClusterView, _MaskAlignmentEffect<ModifiedContent<Rectangle, _ForegroundStyleModifier<LinearGradient>>>>, _OffsetEffect> and conformance <> ModifiedContent<A, B>();
    swift_getOpaqueTypeConformance2();
    v0 = type metadata accessor for KeyframeAnimator();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for KeyframeAnimator<TextWipeTransitionModifier.KeyframeAnimationProgress, KeyframeTrack<TextWipeTransitionModifier.KeyframeAnimationProgress, TextWipeTransitionModifier.KeyframeAnimationProgress, <<opaque return type of static KeyframesBuilder.buildPartialBlock<A, B>(accumulated:next:)>>.0>, <<opaque return type of View.onChange<A>(of:initial:_:)>>.0>);
    }
  }
}

void type metadata accessor for _ForegroundStyleModifier<Material>(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t, uint64_t))
{
  if (!*a2)
  {
    v9 = a3(255);
    v10 = a5(a1, v9, a4);
    if (!v11)
    {
      atomic_store(v10, a2);
    }
  }
}

uint64_t partial apply for closure #3 in TextWipeTransitionModifier.MoveCluster.body.getter(uint64_t (*a1)(void), uint64_t (*a2)(uint64_t))
{
  v3 = *(a1(0) - 8);
  v4 = v2 + ((*(v3 + 80) + 16) & ~*(v3 + 80));

  return a2(v4);
}

__n128 __swift_memcpy200_8(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  v2 = *(a2 + 16);
  v3 = *(a2 + 32);
  v4 = *(a2 + 64);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 64) = v4;
  *(a1 + 16) = v2;
  *(a1 + 32) = v3;
  v5 = *(a2 + 80);
  v6 = *(a2 + 96);
  v7 = *(a2 + 128);
  *(a1 + 112) = *(a2 + 112);
  *(a1 + 128) = v7;
  *(a1 + 80) = v5;
  *(a1 + 96) = v6;
  result = *(a2 + 144);
  v9 = *(a2 + 160);
  v10 = *(a2 + 176);
  *(a1 + 192) = *(a2 + 192);
  *(a1 + 160) = v9;
  *(a1 + 176) = v10;
  *(a1 + 144) = result;
  return result;
}

uint64_t getEnumTagSinglePayload for TextWipeTransitionModifier.MorphClusterView(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFA && *(a1 + 200))
  {
    return (*a1 + 250);
  }

  v3 = *(a1 + 72);
  if (v3 <= 6)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t storeEnumTagSinglePayload for TextWipeTransitionModifier.MorphClusterView(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xF9)
  {
    *(result + 168) = 0u;
    *(result + 152) = 0u;
    *(result + 136) = 0u;
    *(result + 184) = 0u;
    *(result + 120) = 0u;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 - 250;
    if (a3 >= 0xFA)
    {
      *(result + 200) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFA)
    {
      *(result + 200) = 0;
    }

    if (a2)
    {
      *(result + 72) = -a2;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for TextModel.Cluster(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFA && *(a1 + 96))
  {
    return (*a1 + 250);
  }

  v3 = *(a1 + 72);
  if (v3 <= 6)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t storeEnumTagSinglePayload for TextModel.Cluster(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xF9)
  {
    *(result + 88) = 0;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 - 250;
    if (a3 >= 0xFA)
    {
      *(result + 96) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFA)
    {
      *(result + 96) = 0;
    }

    if (a2)
    {
      *(result + 72) = -a2;
    }
  }

  return result;
}

uint64_t __swift_memcpy9_8(uint64_t result, uint64_t *a2)
{
  v2 = *a2;
  *(result + 8) = *(a2 + 8);
  *result = v2;
  return result;
}

uint64_t getEnumTagSinglePayload for TextWipeTransitionModifier.KeyframeAnimationProgress(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 9))
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

uint64_t storeEnumTagSinglePayload for TextWipeTransitionModifier.KeyframeAnimationProgress(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 8) = 0;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 9) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 9) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2 + 1;
    }
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<KeyframeAnimator<Double, KeyframeTrack<Double, Double, <<opaque return type of static KeyframesBuilder.buildPartialBlock<A, B>(accumulated:next:)>>.0>, ModifiedContent<TextWipeTransitionModifier.MorphClusterView, _OffsetEffect>>, _AppearanceActionModifier> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<KeyframeAnimator<Double, KeyframeTrack<Double, Double, <<opaque return type of static KeyframesBuilder.buildPartialBlock<A, B>(accumulated:next:)>>.0>, ModifiedContent<TextWipeTransitionModifier.MorphClusterView, _OffsetEffect>>, _AppearanceActionModifier> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<KeyframeAnimator<Double, KeyframeTrack<Double, Double, <<opaque return type of static KeyframesBuilder.buildPartialBlock<A, B>(accumulated:next:)>>.0>, ModifiedContent<TextWipeTransitionModifier.MorphClusterView, _OffsetEffect>>, _AppearanceActionModifier> and conformance <> ModifiedContent<A, B>)
  {
    type metadata accessor for _ForegroundStyleModifier<Material>(255, &lazy cache variable for type metadata for ModifiedContent<KeyframeAnimator<Double, KeyframeTrack<Double, Double, <<opaque return type of static KeyframesBuilder.buildPartialBlock<A, B>(accumulated:next:)>>.0>, ModifiedContent<TextWipeTransitionModifier.MorphClusterView, _OffsetEffect>>, _AppearanceActionModifier>, type metadata accessor for KeyframeAnimator<Double, KeyframeTrack<Double, Double, <<opaque return type of static KeyframesBuilder.buildPartialBlock<A, B>(accumulated:next:)>>.0>, ModifiedContent<TextWipeTransitionModifier.MorphClusterView, _OffsetEffect>>, MEMORY[0x1E69805D8], MEMORY[0x1E697E830]);
    lazy protocol witness table accessor for type AODProgressProxy and conformance AODProgressProxy(&lazy protocol witness table cache variable for type KeyframeAnimator<Double, KeyframeTrack<Double, Double, <<opaque return type of static KeyframesBuilder.buildPartialBlock<A, B>(accumulated:next:)>>.0>, ModifiedContent<TextWipeTransitionModifier.MorphClusterView, _OffsetEffect>> and conformance KeyframeAnimator<A, B, C>, type metadata accessor for KeyframeAnimator<Double, KeyframeTrack<Double, Double, <<opaque return type of static KeyframesBuilder.buildPartialBlock<A, B>(accumulated:next:)>>.0>, ModifiedContent<TextWipeTransitionModifier.MorphClusterView, _OffsetEffect>>);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<KeyframeAnimator<Double, KeyframeTrack<Double, Double, <<opaque return type of static KeyframesBuilder.buildPartialBlock<A, B>(accumulated:next:)>>.0>, ModifiedContent<TextWipeTransitionModifier.MorphClusterView, _OffsetEffect>>, _AppearanceActionModifier> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<KeyframeAnimator<Double, KeyframeTrack<Double, Double, <<opaque return type of static KeyframesBuilder.buildPartialBlock<A, B>(accumulated:next:)>>.0>, ModifiedContent<ModifiedContent<TextWipeTransitionModifier.ClusterView, _MaskAlignmentEffect<ModifiedContent<Rectangle, _ForegroundStyleModifier<LinearGradient>>>>, _OffsetEffect>>, _AppearanceActionModifier>, _OffsetEffect> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<KeyframeAnimator<Double, KeyframeTrack<Double, Double, <<opaque return type of static KeyframesBuilder.buildPartialBlock<A, B>(accumulated:next:)>>.0>, ModifiedContent<ModifiedContent<TextWipeTransitionModifier.ClusterView, _MaskAlignmentEffect<ModifiedContent<Rectangle, _ForegroundStyleModifier<LinearGradient>>>>, _OffsetEffect>>, _AppearanceActionModifier>, _OffsetEffect> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<KeyframeAnimator<Double, KeyframeTrack<Double, Double, <<opaque return type of static KeyframesBuilder.buildPartialBlock<A, B>(accumulated:next:)>>.0>, ModifiedContent<ModifiedContent<TextWipeTransitionModifier.ClusterView, _MaskAlignmentEffect<ModifiedContent<Rectangle, _ForegroundStyleModifier<LinearGradient>>>>, _OffsetEffect>>, _AppearanceActionModifier>, _OffsetEffect> and conformance <> ModifiedContent<A, B>)
  {
    type metadata accessor for _ForegroundStyleModifier<Material>(255, &lazy cache variable for type metadata for ModifiedContent<ModifiedContent<KeyframeAnimator<Double, KeyframeTrack<Double, Double, <<opaque return type of static KeyframesBuilder.buildPartialBlock<A, B>(accumulated:next:)>>.0>, ModifiedContent<ModifiedContent<TextWipeTransitionModifier.ClusterView, _MaskAlignmentEffect<ModifiedContent<Rectangle, _ForegroundStyleModifier<LinearGradient>>>>, _OffsetEffect>>, _AppearanceActionModifier>, _OffsetEffect>, type metadata accessor for ModifiedContent<KeyframeAnimator<Double, KeyframeTrack<Double, Double, <<opaque return type of static KeyframesBuilder.buildPartialBlock<A, B>(accumulated:next:)>>.0>, ModifiedContent<ModifiedContent<TextWipeTransitionModifier.ClusterView, _MaskAlignmentEffect<ModifiedContent<Rectangle, _ForegroundStyleModifier<LinearGradient>>>>, _OffsetEffect>>, _AppearanceActionModifier>, MEMORY[0x1E697E278], MEMORY[0x1E697E830]);
    lazy protocol witness table accessor for type ModifiedContent<KeyframeAnimator<TextWipeTransitionModifier.KeyframeAnimationProgress, KeyframeTrack<TextWipeTransitionModifier.KeyframeAnimationProgress, TextWipeTransitionModifier.KeyframeAnimationProgress, <<opaque return type of static KeyframesBuilder.buildPartialBlock<A, B>(accumulated:next:)>>.0>, <<opaque return type of View.onChange<A>(of:initial:_:)>>.0>, _AppearanceActionModifier> and conformance <> ModifiedContent<A, B>(&lazy protocol witness table cache variable for type ModifiedContent<KeyframeAnimator<Double, KeyframeTrack<Double, Double, <<opaque return type of static KeyframesBuilder.buildPartialBlock<A, B>(accumulated:next:)>>.0>, ModifiedContent<ModifiedContent<TextWipeTransitionModifier.ClusterView, _MaskAlignmentEffect<ModifiedContent<Rectangle, _ForegroundStyleModifier<LinearGradient>>>>, _OffsetEffect>>, _AppearanceActionModifier> and conformance <> ModifiedContent<A, B>, type metadata accessor for ModifiedContent<KeyframeAnimator<Double, KeyframeTrack<Double, Double, <<opaque return type of static KeyframesBuilder.buildPartialBlock<A, B>(accumulated:next:)>>.0>, ModifiedContent<ModifiedContent<TextWipeTransitionModifier.ClusterView, _MaskAlignmentEffect<ModifiedContent<Rectangle, _ForegroundStyleModifier<LinearGradient>>>>, _OffsetEffect>>, _AppearanceActionModifier>, &lazy protocol witness table cache variable for type KeyframeAnimator<Double, KeyframeTrack<Double, Double, <<opaque return type of static KeyframesBuilder.buildPartialBlock<A, B>(accumulated:next:)>>.0>, ModifiedContent<ModifiedContent<TextWipeTransitionModifier.ClusterView, _MaskAlignmentEffect<ModifiedContent<Rectangle, _ForegroundStyleModifier<LinearGradient>>>>, _OffsetEffect>> and conformance KeyframeAnimator<A, B, C>, type metadata accessor for KeyframeAnimator<Double, KeyframeTrack<Double, Double, <<opaque return type of static KeyframesBuilder.buildPartialBlock<A, B>(accumulated:next:)>>.0>, ModifiedContent<ModifiedContent<TextWipeTransitionModifier.ClusterView, _MaskAlignmentEffect<ModifiedContent<Rectangle, _ForegroundStyleModifier<LinearGradient>>>>, _OffsetEffect>>);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<KeyframeAnimator<Double, KeyframeTrack<Double, Double, <<opaque return type of static KeyframesBuilder.buildPartialBlock<A, B>(accumulated:next:)>>.0>, ModifiedContent<ModifiedContent<TextWipeTransitionModifier.ClusterView, _MaskAlignmentEffect<ModifiedContent<Rectangle, _ForegroundStyleModifier<LinearGradient>>>>, _OffsetEffect>>, _AppearanceActionModifier>, _OffsetEffect> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

uint64_t lazy protocol witness table accessor for type ModifiedContent<KeyframeAnimator<TextWipeTransitionModifier.KeyframeAnimationProgress, KeyframeTrack<TextWipeTransitionModifier.KeyframeAnimationProgress, TextWipeTransitionModifier.KeyframeAnimationProgress, <<opaque return type of static KeyframesBuilder.buildPartialBlock<A, B>(accumulated:next:)>>.0>, <<opaque return type of View.onChange<A>(of:initial:_:)>>.0>, _AppearanceActionModifier> and conformance <> ModifiedContent<A, B>(unint64_t *a1, void (*a2)(uint64_t), unint64_t *a3, void (*a4)(uint64_t))
{
  result = *a1;
  if (!result)
  {
    a2(255);
    lazy protocol witness table accessor for type AODProgressProxy and conformance AODProgressProxy(a3, a4);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<KeyframeAnimator<TextWipeTransitionModifier.KeyframeAnimationProgress, KeyframeTrack<TextWipeTransitionModifier.KeyframeAnimationProgress, TextWipeTransitionModifier.KeyframeAnimationProgress, <<opaque return type of static KeyframesBuilder.buildPartialBlock<A, B>(accumulated:next:)>>.0>, <<opaque return type of View.onChange<A>(of:initial:_:)>>.0>, _AppearanceActionModifier>, _OffsetEffect> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<KeyframeAnimator<TextWipeTransitionModifier.KeyframeAnimationProgress, KeyframeTrack<TextWipeTransitionModifier.KeyframeAnimationProgress, TextWipeTransitionModifier.KeyframeAnimationProgress, <<opaque return type of static KeyframesBuilder.buildPartialBlock<A, B>(accumulated:next:)>>.0>, <<opaque return type of View.onChange<A>(of:initial:_:)>>.0>, _AppearanceActionModifier>, _OffsetEffect> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<KeyframeAnimator<TextWipeTransitionModifier.KeyframeAnimationProgress, KeyframeTrack<TextWipeTransitionModifier.KeyframeAnimationProgress, TextWipeTransitionModifier.KeyframeAnimationProgress, <<opaque return type of static KeyframesBuilder.buildPartialBlock<A, B>(accumulated:next:)>>.0>, <<opaque return type of View.onChange<A>(of:initial:_:)>>.0>, _AppearanceActionModifier>, _OffsetEffect> and conformance <> ModifiedContent<A, B>)
  {
    type metadata accessor for _ForegroundStyleModifier<Material>(255, &lazy cache variable for type metadata for ModifiedContent<ModifiedContent<KeyframeAnimator<TextWipeTransitionModifier.KeyframeAnimationProgress, KeyframeTrack<TextWipeTransitionModifier.KeyframeAnimationProgress, TextWipeTransitionModifier.KeyframeAnimationProgress, <<opaque return type of static KeyframesBuilder.buildPartialBlock<A, B>(accumulated:next:)>>.0>, <<opaque return type of View.onChange<A>(of:initial:_:)>>.0>, _AppearanceActionModifier>, _OffsetEffect>, type metadata accessor for ModifiedContent<KeyframeAnimator<TextWipeTransitionModifier.KeyframeAnimationProgress, KeyframeTrack<TextWipeTransitionModifier.KeyframeAnimationProgress, TextWipeTransitionModifier.KeyframeAnimationProgress, <<opaque return type of static KeyframesBuilder.buildPartialBlock<A, B>(accumulated:next:)>>.0>, <<opaque return type of View.onChange<A>(of:initial:_:)>>.0>, _AppearanceActionModifier>, MEMORY[0x1E697E278], MEMORY[0x1E697E830]);
    lazy protocol witness table accessor for type ModifiedContent<KeyframeAnimator<TextWipeTransitionModifier.KeyframeAnimationProgress, KeyframeTrack<TextWipeTransitionModifier.KeyframeAnimationProgress, TextWipeTransitionModifier.KeyframeAnimationProgress, <<opaque return type of static KeyframesBuilder.buildPartialBlock<A, B>(accumulated:next:)>>.0>, <<opaque return type of View.onChange<A>(of:initial:_:)>>.0>, _AppearanceActionModifier> and conformance <> ModifiedContent<A, B>(&lazy protocol witness table cache variable for type ModifiedContent<KeyframeAnimator<TextWipeTransitionModifier.KeyframeAnimationProgress, KeyframeTrack<TextWipeTransitionModifier.KeyframeAnimationProgress, TextWipeTransitionModifier.KeyframeAnimationProgress, <<opaque return type of static KeyframesBuilder.buildPartialBlock<A, B>(accumulated:next:)>>.0>, <<opaque return type of View.onChange<A>(of:initial:_:)>>.0>, _AppearanceActionModifier> and conformance <> ModifiedContent<A, B>, type metadata accessor for ModifiedContent<KeyframeAnimator<TextWipeTransitionModifier.KeyframeAnimationProgress, KeyframeTrack<TextWipeTransitionModifier.KeyframeAnimationProgress, TextWipeTransitionModifier.KeyframeAnimationProgress, <<opaque return type of static KeyframesBuilder.buildPartialBlock<A, B>(accumulated:next:)>>.0>, <<opaque return type of View.onChange<A>(of:initial:_:)>>.0>, _AppearanceActionModifier>, &lazy protocol witness table cache variable for type KeyframeAnimator<TextWipeTransitionModifier.KeyframeAnimationProgress, KeyframeTrack<TextWipeTransitionModifier.KeyframeAnimationProgress, TextWipeTransitionModifier.KeyframeAnimationProgress, <<opaque return type of static KeyframesBuilder.buildPartialBlock<A, B>(accumulated:next:)>>.0>, <<opaque return type of View.onChange<A>(of:initial:_:)>>.0> and conformance KeyframeAnimator<A, B, C>, type metadata accessor for KeyframeAnimator<TextWipeTransitionModifier.KeyframeAnimationProgress, KeyframeTrack<TextWipeTransitionModifier.KeyframeAnimationProgress, TextWipeTransitionModifier.KeyframeAnimationProgress, <<opaque return type of static KeyframesBuilder.buildPartialBlock<A, B>(accumulated:next:)>>.0>, <<opaque return type of View.onChange<A>(of:initial:_:)>>.0>);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<KeyframeAnimator<TextWipeTransitionModifier.KeyframeAnimationProgress, KeyframeTrack<TextWipeTransitionModifier.KeyframeAnimationProgress, TextWipeTransitionModifier.KeyframeAnimationProgress, <<opaque return type of static KeyframesBuilder.buildPartialBlock<A, B>(accumulated:next:)>>.0>, <<opaque return type of View.onChange<A>(of:initial:_:)>>.0>, _AppearanceActionModifier>, _OffsetEffect> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

uint64_t lazy protocol witness table accessor for type AODProgressProxy and conformance AODProgressProxy(unint64_t *a1, void (*a2)(uint64_t))
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

void type metadata accessor for AnimatablePair<Double, Double>()
{
  if (!lazy cache variable for type metadata for AnimatablePair<Double, Double>)
  {
    v0 = type metadata accessor for AnimatablePair();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for AnimatablePair<Double, Double>);
    }
  }
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<Path, _FrameLayout>, _OffsetEffect> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<Path, _FrameLayout>, _OffsetEffect> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<Path, _FrameLayout>, _OffsetEffect> and conformance <> ModifiedContent<A, B>)
  {
    type metadata accessor for ModifiedContent<ModifiedContent<Path, _FrameLayout>, _OffsetEffect>();
    lazy protocol witness table accessor for type ModifiedContent<Path, _FrameLayout> and conformance <> ModifiedContent<A, B>();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<Path, _FrameLayout>, _OffsetEffect> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

void type metadata accessor for ModifiedContent<ModifiedContent<Path, _FrameLayout>, _OffsetEffect>()
{
  if (!lazy cache variable for type metadata for ModifiedContent<ModifiedContent<Path, _FrameLayout>, _OffsetEffect>)
  {
    type metadata accessor for ModifiedContent<Text, TextGlassWipeTransitionModifier>(255, &lazy cache variable for type metadata for ModifiedContent<Path, _FrameLayout>, MEMORY[0x1E6980F80], MEMORY[0x1E697E048], MEMORY[0x1E697E830]);
    v0 = type metadata accessor for ModifiedContent();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for ModifiedContent<ModifiedContent<Path, _FrameLayout>, _OffsetEffect>);
    }
  }
}

unint64_t lazy protocol witness table accessor for type Text.Effect.Markers and conformance Text.Effect.Markers()
{
  result = lazy protocol witness table cache variable for type Text.Effect.Markers and conformance Text.Effect.Markers;
  if (!lazy protocol witness table cache variable for type Text.Effect.Markers and conformance Text.Effect.Markers)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Text.Effect.Markers and conformance Text.Effect.Markers);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Text.Effect.Markers and conformance Text.Effect.Markers;
  if (!lazy protocol witness table cache variable for type Text.Effect.Markers and conformance Text.Effect.Markers)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Text.Effect.Markers and conformance Text.Effect.Markers);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Text.Effect.Markers and conformance Text.Effect.Markers;
  if (!lazy protocol witness table cache variable for type Text.Effect.Markers and conformance Text.Effect.Markers)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Text.Effect.Markers and conformance Text.Effect.Markers);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Text.Effect.Markers and conformance Text.Effect.Markers;
  if (!lazy protocol witness table cache variable for type Text.Effect.Markers and conformance Text.Effect.Markers)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Text.Effect.Markers and conformance Text.Effect.Markers);
  }

  return result;
}

uint64_t protocol witness for static Equatable.== infix(_:_:) in conformance Text.Effect.Markers.Marker(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 16);
  v2 = *(a1 + 24);
  v5 = *(a2 + 16);
  v4 = *(a2 + 24);
  result = specialized static Text.Effect.Markers.MarkerType.== infix(_:_:)(*a1, *(a1 + 8), *a2, *(a2 + 8));
  if ((result & 1) == 0)
  {
    return 0;
  }

  if (__OFSUB__(v5, v3))
  {
    __break(1u);
    goto LABEL_9;
  }

  if (v5 != v3)
  {
    return 0;
  }

  if (!__OFSUB__(v4, v2))
  {
    return v4 == v2;
  }

LABEL_9:
  __break(1u);
  return result;
}

uint64_t Dictionary<>.underlineStyle.getter(uint64_t a1)
{
  if (!*(a1 + 16))
  {
    return 0;
  }

  v2 = specialized __RawDictionaryStorage.find<A>(_:)(*MEMORY[0x1E69DB758]);
  if ((v3 & 1) == 0)
  {
    return 0;
  }

  outlined init with copy of Any(*(a1 + 56) + 32 * v2, v6);
  if (swift_dynamicCast())
  {
    return v5;
  }

  else
  {
    return 0;
  }
}

uint64_t Dictionary<>.foregroundColor.getter(uint64_t a1, uint64_t *a2)
{
  if (!*(a1 + 16))
  {
    return 0;
  }

  v3 = specialized __RawDictionaryStorage.find<A>(_:)(*a2);
  if ((v4 & 1) == 0)
  {
    return 0;
  }

  outlined init with copy of Any(*(a1 + 56) + 32 * v3, v7);
  type metadata accessor for NSObject(0, &lazy cache variable for type metadata for NSObject);
  if (swift_dynamicCast())
  {
    return v6;
  }

  else
  {
    return 0;
  }
}

void closure #1 in Text.Effect.Markers.init(fragment:)(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (!a1)
  {
    return;
  }

  v23 = a1;
  v9 = v23;
  NSTextRange.textRange.getter();
  if ((v12 & 1) != 0 || !a2)
  {
  }

  else
  {
    if (*(a2 + 16))
    {
      v13 = -a3;
      if (__OFSUB__(0, a3))
      {
        __break(1u);
      }

      else
      {
        a3 = v10 - a3;
        if (!__OFADD__(v10, v13))
        {
          v5 = v11 + v13;
          if (!__OFADD__(v11, v13))
          {
            if (v5 >= a3)
            {
              swift_beginAccess();
              v9 = *(a5 + 16);

              isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
              *(a5 + 16) = v9;
              if (isUniquelyReferenced_nonNull_native)
              {
LABEL_10:
                v15 = *(v9 + 2);
                v16 = *(v9 + 3);
                v17 = v15 + 1;
                if (v15 >= v16 >> 1)
                {
                  v22 = v15 + 1;
                  v19 = v9;
                  v20 = *(v9 + 2);
                  v21 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v16 > 1), v15 + 1, 1, v19);
                  v15 = v20;
                  v17 = v22;
                  v9 = v21;
                }

                *(v9 + 2) = v17;
                v18 = &v9[32 * v15];
                *(v18 + 4) = a2;
                v18[40] = 0;
                *(v18 + 6) = a3;
                *(v18 + 7) = v5;
                *(a5 + 16) = v9;
                swift_endAccess();

                return;
              }

LABEL_24:
              v9 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v9 + 2) + 1, 1, v9);
              *(a5 + 16) = v9;
              goto LABEL_10;
            }

LABEL_23:
            __break(1u);
            goto LABEL_24;
          }

LABEL_22:
          __break(1u);
          goto LABEL_23;
        }
      }

      __break(1u);
      goto LABEL_22;
    }

    MEMORY[0x1EEE66BE0]();
  }
}

void closure #2 in Text.Effect.Markers.init(fragment:)(int a1, int a2, char *a3, _BYTE *a4, uint64_t a5, uint64_t a6, uint64_t a7, char **a8)
{
  v11 = a3;
  v12 = [objc_msgSend(a3 endLocation)];
  swift_unknownObjectRelease();
  if (v12 + 1 > 1)
  {
    *a4 = 1;
    return;
  }

  v13 = objc_opt_self();
  type metadata accessor for NSAttributedStringKey(0);
  lazy protocol witness table accessor for type Text.Effect.BaseContent and conformance Text.Effect.BaseContent(&lazy protocol witness table cache variable for type NSAttributedStringKey and conformance NSAttributedStringKey, type metadata accessor for NSAttributedStringKey);
  v14.super.isa = Dictionary._bridgeToObjectiveC()().super.isa;
  v15 = [(objc_class *)v13 textCorrectionMarkerTypeWithAttributes:v14.super.isa];

  if (v15 != -1)
  {
    NSTextRange.textRange.getter();
    if ((v18 & 1) == 0)
    {
      v19 = -a6;
      if (__OFSUB__(0, a6))
      {
        __break(1u);
      }

      else
      {
        v13 = (v16 - a6);
        if (!__OFADD__(v16, v19))
        {
          v14.super.isa = (v17 - a6);
          if (!__OFADD__(v17, v19))
          {
            if (v14.super.isa >= v13)
            {
              swift_beginAccess();
              v11 = *a8;
              isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
              *a8 = v11;
              if (isUniquelyReferenced_nonNull_native)
              {
LABEL_9:
                v22 = *(v11 + 2);
                v21 = *(v11 + 3);
                if (v22 >= v21 >> 1)
                {
                  v11 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v21 > 1), v22 + 1, 1, v11);
                  *a8 = v11;
                }

                *(v11 + 2) = v22 + 1;
                v23 = &v11[32 * v22];
                *(v23 + 4) = v15;
                v23[40] = 1;
                *(v23 + 6) = v13;
                *(v23 + 7) = v14;
                swift_endAccess();
                return;
              }

LABEL_18:
              v11 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v11 + 2) + 1, 1, v11);
              *a8 = v11;
              goto LABEL_9;
            }

LABEL_17:
            __break(1u);
            goto LABEL_18;
          }

LABEL_16:
          __break(1u);
          goto LABEL_17;
        }
      }

      __break(1u);
      goto LABEL_16;
    }
  }
}

char *Text.Effect.Markers.layoutInfo(for:glyphOrigin:metrics:layoutAttributedString:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v48 = *MEMORY[0x1E69E9840];
  v4 = MEMORY[0x1E69E7CC0];
  v36 = *(a4 + 16);
  if (!v36)
  {
    return MEMORY[0x1E69E7CC0];
  }

  v35 = a4 + 32;

  v5 = 0;
  v6 = v4;
  do
  {
    v38 = v5;
    v39 = v6;
    v7 = v35 + 32 * v5;
    v8 = *v7;
    v9 = *(v7 + 8);
    v10 = *(v7 + 16);
    v11 = *(v7 + 24);
    outlined copy of Text.Effect.Markers.MarkerType(*v7, *(v7 + 8));
    v12 = Text.Layout.Line.xranges(range:metrics:)(v10, v11, a2);
    v13 = *(v12 + 2);
    if (v13)
    {
      v45 = v4;
      v14 = v12;
      specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v13, 0);
      v15 = v45;
      v16 = __OFSUB__(v11, v10);
      v41 = v16;
      v17 = (v14 + 40);
      while (1)
      {
        v18 = *(v17 - 1);
        v19 = *v17;
        Text.Layout.Line.origin.getter();
        v21 = v20;
        if (v9)
        {
          v44 = 0.0;
          if (v41)
          {
            __break(1u);
            goto LABEL_39;
          }

          if (_NSTextCorrectionMarkerRenderingAdjustment(a3, v10, v11 - v10, &v44))
          {
            _bridgeAnyObjectToAny(_:)();
            swift_unknownObjectRelease();
            v42 = v47;
            v43 = v46;
          }

          else
          {
            v42 = 0u;
            v43 = 0u;
          }

          v21 = v21 + v44;
        }

        else
        {
          v42 = 0u;
          v43 = 0u;
        }

        LOBYTE(v44) = v9;
        outlined copy of Text.Effect.Markers.MarkerType(v8, v9);
        v45 = v15;
        v23 = *(v15 + 2);
        v22 = *(v15 + 3);
        if (v23 >= v22 >> 1)
        {
          specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v22 > 1), v23 + 1, 1);
          v15 = v45;
        }

        *(v15 + 2) = v23 + 1;
        v24 = &v15[96 * v23];
        *(v24 + 4) = v8;
        v24[40] = LOBYTE(v44);
        v25 = *(&v46 + 3);
        *(v24 + 41) = v46;
        *(v24 + 11) = v25;
        *(v24 + 6) = v10;
        *(v24 + 7) = v11;
        *(v24 + 4) = v43;
        *(v24 + 5) = v42;
        *(v24 + 12) = v19 - v18;
        *(v24 + 13) = v19 - v18;
        *(v24 + 14) = v18;
        *(v24 + 15) = v21;
        v17 += 2;
        if (!--v13)
        {

          outlined consume of Text.Effect.Markers.MarkerType(v8, v9);
          v4 = MEMORY[0x1E69E7CC0];
          goto LABEL_22;
        }
      }
    }

    outlined consume of Text.Effect.Markers.MarkerType(v8, v9);
    v15 = v4;
LABEL_22:
    v26 = *(v15 + 2);
    v6 = v39;
    v27 = *(v39 + 2);
    v28 = v27 + v26;
    if (__OFADD__(v27, v26))
    {
LABEL_39:
      __break(1u);
LABEL_40:
      __break(1u);
LABEL_41:
      __break(1u);
LABEL_42:
      __break(1u);
    }

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    if (isUniquelyReferenced_nonNull_native && v28 <= *(v39 + 3) >> 1)
    {
      if (!*(v15 + 2))
      {
        goto LABEL_3;
      }
    }

    else
    {
      if (v27 <= v28)
      {
        v30 = v27 + v26;
      }

      else
      {
        v30 = v27;
      }

      v6 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(isUniquelyReferenced_nonNull_native, v30, 1, v39);
      if (!*(v15 + 2))
      {
LABEL_3:

        if (v26)
        {
          goto LABEL_40;
        }

        goto LABEL_4;
      }
    }

    if ((*(v6 + 3) >> 1) - *(v6 + 2) < v26)
    {
      goto LABEL_41;
    }

    swift_arrayInitWithCopy();

    if (v26)
    {
      v31 = *(v6 + 2);
      v32 = __OFADD__(v31, v26);
      v33 = v31 + v26;
      if (v32)
      {
        goto LABEL_42;
      }

      *(v6 + 2) = v33;
    }

LABEL_4:
    v5 = v38 + 1;
  }

  while (v38 + 1 != v36);

  return v6;
}

unint64_t specialized RandomAccessCollection.index(_:offsetBy:limitedBy:)(unint64_t result, uint64_t a2, unint64_t a3, uint64_t a4)
{
  v4 = *(a4 + 16);
  if (v4 < result || v4 < a3)
  {
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v6 = a3 - result;
  if (a2 >= 1)
  {
    if (v6 < 0 || v6 >= a2)
    {
      goto LABEL_13;
    }

    return 0;
  }

  if (v6 <= 0 && v6 > a2)
  {
    return 0;
  }

LABEL_13:
  v7 = __OFADD__(result, a2);
  result += a2;
  if (v7)
  {
    goto LABEL_16;
  }

  if (result > v4)
  {
LABEL_17:
    __break(1u);
  }

  return result;
}

uint64_t specialized RandomAccessCollection.index(_:offsetBy:limitedBy:)(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = *(a4 + 16);
  v4 = *(a4 + 24);
  if (v4 < a3 || v5 > a3 || v5 > result || v4 < result)
  {
    __break(1u);
    goto LABEL_24;
  }

  v9 = a3 - result;
  if (__OFSUB__(a3, result))
  {
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

  if (a2 >= 1)
  {
    if (v9 < 0 || v9 >= a2)
    {
      goto LABEL_19;
    }

    return 0;
  }

  if (v9 <= 0 && v9 > a2)
  {
    return 0;
  }

LABEL_19:
  v10 = __OFADD__(result, a2);
  result += a2;
  if (v10)
  {
LABEL_25:
    __break(1u);
LABEL_26:
    __break(1u);
    return result;
  }

  if (result < v5 || v4 < result)
  {
    goto LABEL_26;
  }

  return result;
}

uint64_t specialized RandomAccessCollection.index(_:offsetBy:limitedBy:)(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5 = *(a5 + 16);
  v6 = __OFADD__(a4, v5);
  v7 = a4 + v5;
  if (v6)
  {
    __break(1u);
LABEL_25:
    __break(1u);
    goto LABEL_26;
  }

  if (v7 < a3 || a3 < a4 || result < a4 || v7 < result)
  {
    goto LABEL_25;
  }

  v11 = a3 - result;
  if (__OFSUB__(a3, result))
  {
LABEL_26:
    __break(1u);
    goto LABEL_27;
  }

  if (a2 >= 1)
  {
    if (v11 < 0 || v11 >= a2)
    {
      goto LABEL_20;
    }

    return 0;
  }

  if (v11 <= 0 && v11 > a2)
  {
    return 0;
  }

LABEL_20:
  v6 = __OFADD__(result, a2);
  result += a2;
  if (v6)
  {
LABEL_27:
    __break(1u);
LABEL_28:
    __break(1u);
    return result;
  }

  if (result < a4 || v7 < result)
  {
    goto LABEL_28;
  }

  return result;
}

unint64_t specialized RandomAccessCollection.index(_:offsetBy:limitedBy:)(unint64_t result, uint64_t a2, unint64_t a3)
{
  v4 = *(*v3 + 16);
  if (v4 < result || v4 < a3)
  {
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v6 = a3 - result;
  if (a2 >= 1)
  {
    if (v6 < 0 || v6 >= a2)
    {
      goto LABEL_13;
    }

    return 0;
  }

  if (v6 <= 0 && v6 > a2)
  {
    return 0;
  }

LABEL_13:
  v7 = __OFADD__(result, a2);
  result += a2;
  if (v7)
  {
    goto LABEL_16;
  }

  if (result > v4)
  {
LABEL_17:
    __break(1u);
  }

  return result;
}

unint64_t protocol witness for RandomAccessCollection.index(_:offsetBy:limitedBy:) in conformance Text.Effect.Markers@<X0>(unint64_t *a1@<X0>, uint64_t a2@<X1>, unint64_t *a3@<X2>, uint64_t a4@<X8>)
{
  result = specialized RandomAccessCollection.index(_:offsetBy:limitedBy:)(*a1, a2, *a3, *v4);
  *a4 = result;
  *(a4 + 8) = v7 & 1;
  return result;
}

uint64_t (*protocol witness for Collection.subscript.read in conformance Text.Effect.Markers(uint64_t (*result)(), unint64_t *a2))()
{
  v3 = *a2;
  if ((*a2 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (v3 < *(*v2 + 16))
  {
    v4 = *v2 + 32 * v3;
    v5 = *(v4 + 40);
    v6 = *(v4 + 48);
    *result = *(v4 + 32);
    *(result + 8) = v5;
    *(result + 1) = v6;
    return protocol witness for TextRenderer.draw(layout:in:) in conformance TextWipeTransitionModifier.NullRenderer;
  }

  __break(1u);
  return result;
}

uint64_t protocol witness for Sequence._copyToContiguousArray() in conformance Text.Effect.Markers()
{
  v1 = specialized _copyCollectionToContiguousArray<A>(_:)(*v0, &lazy cache variable for type metadata for _ContiguousArrayStorage<Text.Effect.Markers.Marker>, &type metadata for Text.Effect.Markers.Marker, _ss22_ContiguousArrayBufferV19_uninitializedCount15minimumCapacityAByxGSi_SitcfC7SwiftUI4TextV0J16AnimationSupportE6EffectO7MarkersV6MarkerV_Tt1g5Tm, specialized Sequence._copySequenceContents(initializing:));

  return v1;
}

uint64_t lazy protocol witness table accessor for type IndexingIterator<Text.Effect.Markers> and conformance IndexingIterator<A>(unint64_t *a1, unint64_t *a2, uint64_t (*a3)(uint64_t, uint64_t, uint64_t))
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for IndexingIterator<Text.Effect.Markers>(255, a2, lazy protocol witness table accessor for type Text.Effect.Markers and conformance Text.Effect.Markers, &type metadata for Text.Effect.Markers, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t lazy protocol witness table accessor for type Range<Int> and conformance <> Range<A>(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for Range<Int>(255, &lazy cache variable for type metadata for Range<Int>, MEMORY[0x1E69E66A8]);
    lazy protocol witness table accessor for type Int and conformance Int();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t lazy protocol witness table accessor for type Slice<Text.Effect.Markers> and conformance <> Slice<A>(unint64_t *a1, void (*a2)(void))
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for IndexingIterator<Text.Effect.Markers>(255, &lazy cache variable for type metadata for Slice<Text.Effect.Markers>, lazy protocol witness table accessor for type Text.Effect.Markers and conformance Text.Effect.Markers, &type metadata for Text.Effect.Markers, MEMORY[0x1E69E74D0]);
    a2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t Text.Effect.MarkerLayoutInfo.filter(by:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *(a3 + 16);

  if (!v6)
  {
    v9 = MEMORY[0x1E69E7CC0];
LABEL_22:

    return v9;
  }

  v7 = a3 + 32;
  v8 = __OFSUB__(a2, a1);
  v9 = MEMORY[0x1E69E7CC0];
  while (1)
  {
    result = outlined init with copy of Text.Effect.MarkerLayoutInfo.Element(v7, &v22);
    if (v23 >= a2 || *(&v23 + 1) <= a1)
    {
      goto LABEL_6;
    }

    if (__OFSUB__(*(&v23 + 1), v23))
    {
      break;
    }

    if (*(&v23 + 1) != v23)
    {
      if (v8)
      {
        goto LABEL_24;
      }

      if (a2 != a1)
      {
        v18 = v24;
        v19 = v25;
        v20 = v26;
        v21 = v27;
        v16 = v22;
        v17 = v23;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v28 = v9;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v9 + 16) + 1, 1);
          v9 = v28;
        }

        v14 = *(v9 + 16);
        v13 = *(v9 + 24);
        if (v14 >= v13 >> 1)
        {
          specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v13 > 1), v14 + 1, 1);
          v9 = v28;
        }

        *(v9 + 16) = v14 + 1;
        v15 = (v9 + 96 * v14);
        v15[2] = v16;
        v15[3] = v17;
        v15[6] = v20;
        v15[7] = v21;
        v15[4] = v18;
        v15[5] = v19;
        goto LABEL_7;
      }
    }

LABEL_6:
    outlined destroy of Text.Effect.MarkerLayoutInfo.Element(&v22);
LABEL_7:
    v7 += 96;
    if (!--v6)
    {
      goto LABEL_22;
    }
  }

  __break(1u);
LABEL_24:
  __break(1u);
  return result;
}

double Text.Effect.MarkerLayoutInfo.rect(for:with:)(uint64_t a1, uint64_t a2, uint64_t a3, double a4)
{
  v5 = Text.Effect.MarkerLayoutInfo.filter(by:)(a1, a2, a3);
  v6 = *(v5 + 16);
  if (v6)
  {
    v7 = v5 + 32;
    outlined init with copy of Text.Effect.MarkerLayoutInfo.Element(v5 + 32, v10);
    outlined init with copy of Text.Effect.MarkerLayoutInfo.Element(v7 + 96 * v6 - 96, v9);

    a4 = v11;
    outlined destroy of Text.Effect.MarkerLayoutInfo.Element(v10);
    outlined destroy of Text.Effect.MarkerLayoutInfo.Element(v9);
  }

  else
  {
  }

  return a4;
}

void *protocol witness for BidirectionalCollection.index(before:) in conformance Text.Effect.Markers@<X0>(void *result@<X0>, unint64_t *a2@<X8>)
{
  v3 = *result - 1;
  if (__OFSUB__(*result, 1))
  {
    __break(1u);
  }

  else if (v3 < *(*v2 + 16))
  {
    *a2 = v3;
    return result;
  }

  __break(1u);
  return result;
}

unint64_t *protocol witness for BidirectionalCollection.formIndex(before:) in conformance Text.Effect.Markers(unint64_t *result)
{
  v2 = *result - 1;
  if (__OFSUB__(*result, 1))
  {
    __break(1u);
  }

  else if (v2 < *(*v1 + 16))
  {
    *result = v2;
    return result;
  }

  __break(1u);
  return result;
}

void (*protocol witness for Collection.subscript.read in conformance Text.Effect.MarkerLayoutInfo(void (**a1)(uint64_t *a1), unint64_t *a2))(uint64_t *a1)
{
  if (MEMORY[0x1E69E7D08])
  {
    result = swift_coroFrameAlloc();
  }

  else
  {
    result = malloc(0x60uLL);
  }

  *a1 = result;
  v6 = *a2;
  if ((*a2 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (v6 < *(*v2 + 16))
  {
    outlined init with copy of Text.Effect.MarkerLayoutInfo.Element(*v2 + 96 * v6 + 32, result);
    return protocol witness for Collection.subscript.read in conformance Text.Effect.MarkerLayoutInfo;
  }

  __break(1u);
  return result;
}

void protocol witness for Collection.subscript.read in conformance Text.Effect.MarkerLayoutInfo(uint64_t *a1)
{
  v1 = *a1;
  outlined destroy of Text.Effect.MarkerLayoutInfo.Element(*a1);

  free(v1);
}

uint64_t *protocol witness for Collection.subscript.getter in conformance Text.Effect.Markers@<X0>(uint64_t *result@<X0>, void *a2@<X8>)
{
  v3 = *result;
  if (*result < 0 || (v4 = result[1], result = *v2, (*v2)[2] < v4))
  {
    __break(1u);
  }

  else
  {
    *a2 = v3;
    a2[1] = v4;
    a2[2] = result;
  }

  return result;
}

void *protocol witness for RandomAccessCollection.index(_:offsetBy:) in conformance Text.Effect.Markers@<X0>(void *result@<X0>, uint64_t a2@<X1>, unint64_t *a3@<X8>)
{
  v4 = *result + a2;
  if (__OFADD__(*result, a2))
  {
    __break(1u);
  }

  else if (v4 <= *(*v3 + 16))
  {
    *a3 = v4;
    return result;
  }

  __break(1u);
  return result;
}

unint64_t *protocol witness for RandomAccessCollection.distance(from:to:) in conformance Text.Effect.Markers(unint64_t *result, unint64_t *a2)
{
  v3 = *a2;
  v4 = *(*v2 + 16);
  if (*result <= v4 && v3 <= v4)
  {
    return (v3 - *result);
  }

  __break(1u);
  return result;
}

uint64_t *protocol witness for Collection._failEarlyRangeCheck(_:bounds:) in conformance Text.Effect.Markers(uint64_t *result, uint64_t *a2)
{
  v2 = *result;
  v3 = a2[1];
  if (*result >= *a2)
  {
    v5 = __OFSUB__(v2, v3);
    v4 = v2 - v3 < 0;
  }

  else
  {
    v5 = 0;
    v4 = 0;
  }

  if (v4 == v5)
  {
    __break(1u);
  }

  return result;
}

void *protocol witness for Collection._failEarlyRangeCheck(_:bounds:) in conformance Text.Effect.Markers(void *result, void *a2)
{
  if (*result < *a2 || a2[1] < *result)
  {
    __break(1u);
  }

  return result;
}

{
  if (*result < *a2 || a2[1] < result[1])
  {
    __break(1u);
  }

  return result;
}

void *protocol witness for Collection.index(after:) in conformance Text.Effect.Markers@<X0>(void *result@<X0>, void *a2@<X8>)
{
  if (*result >= *(*v2 + 16))
  {
    __break(1u);
  }

  else
  {
    *a2 = *result + 1;
  }

  return result;
}

void *protocol witness for Collection.formIndex(after:) in conformance Text.Effect.Markers(void *result)
{
  if (*result >= *(*v1 + 16))
  {
    __break(1u);
  }

  else
  {
    ++*result;
  }

  return result;
}

uint64_t protocol witness for Sequence._copyToContiguousArray() in conformance Text.Effect.MarkerLayoutInfo()
{
  v1 = specialized _copyCollectionToContiguousArray<A>(_:)(*v0, &lazy cache variable for type metadata for _ContiguousArrayStorage<Text.Effect.MarkerLayoutInfo.Element>, &type metadata for Text.Effect.MarkerLayoutInfo.Element, _ss22_ContiguousArrayBufferV19_uninitializedCount15minimumCapacityAByxGSi_SitcfC7SwiftUI4TextV0J16AnimationSupportE6EffectO16MarkerLayoutInfoV7ElementV_Tt1g5Tm, specialized Sequence._copySequenceContents(initializing:));

  return v1;
}

void *specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(void *a1, int64_t a2, char a3, void *a4)
{
  return specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, a4, &lazy cache variable for type metadata for _ContiguousArrayStorage<(_:_:_:)>, type metadata accessor for (_:_:_:));
}

{
  return specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, a4, &lazy cache variable for type metadata for _ContiguousArrayStorage<(_:_:_:)>, type metadata accessor for (_:_:_:));
}

{
  return specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, a4, &lazy cache variable for type metadata for _ContiguousArrayStorage<Text.Effect.Configuration<BloomTextEffect>.StyleModifier>, &lazy cache variable for type metadata for Text.Effect.Configuration<BloomTextEffect>.StyleModifier, lazy protocol witness table accessor for type BloomTextEffect and conformance BloomTextEffect, &type metadata for BloomTextEffect);
}

{
  return specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, a4, &lazy cache variable for type metadata for _ContiguousArrayStorage<(_:_:_:)>, type metadata accessor for (_:_:_:));
}

{
  return specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, a4, &lazy cache variable for type metadata for _ContiguousArrayStorage<(_:_:_:)>, type metadata accessor for (_:_:_:));
}

{
  return specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, a4, &lazy cache variable for type metadata for _ContiguousArrayStorage<Text.Effect.Configuration<ShakeVerticalTextEffect>.StyleModifier>, &lazy cache variable for type metadata for Text.Effect.Configuration<ShakeVerticalTextEffect>.StyleModifier, lazy protocol witness table accessor for type ShakeVerticalTextEffect and conformance ShakeVerticalTextEffect, &type metadata for ShakeVerticalTextEffect);
}

{
  return specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, a4, &lazy cache variable for type metadata for _ContiguousArrayStorage<(_:_:_:)>, type metadata accessor for (_:_:_:));
}

{
  return specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, a4, &lazy cache variable for type metadata for _ContiguousArrayStorage<(_:_:_:)>, type metadata accessor for (_:_:_:));
}

{
  return specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, a4, &lazy cache variable for type metadata for _ContiguousArrayStorage<(_:_:_:)>, type metadata accessor for (_:_:_:));
}

{
  return specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, a4, &lazy cache variable for type metadata for _ContiguousArrayStorage<Text.Effect.Configuration<ShakeHorizontalTextEffect>.StyleModifier>, &lazy cache variable for type metadata for Text.Effect.Configuration<ShakeHorizontalTextEffect>.StyleModifier, lazy protocol witness table accessor for type ShakeHorizontalTextEffect and conformance ShakeHorizontalTextEffect, &type metadata for ShakeHorizontalTextEffect);
}

{
  return specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, a4, &lazy cache variable for type metadata for _ContiguousArrayStorage<(_:_:_:)>, type metadata accessor for (_:_:_:));
}

{
  return specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, a4, &lazy cache variable for type metadata for _ContiguousArrayStorage<Text.Effect.Configuration<BigTextEffect>.StyleModifier>, &lazy cache variable for type metadata for Text.Effect.Configuration<BigTextEffect>.StyleModifier, lazy protocol witness table accessor for type BigTextEffect and conformance BigTextEffect, &type metadata for BigTextEffect);
}

{
  return specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, a4, &lazy cache variable for type metadata for _ContiguousArrayStorage<(_:_:_:)>, type metadata accessor for (_:_:_:));
}

{
  return specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, a4, &lazy cache variable for type metadata for _ContiguousArrayStorage<Text.Effect.Configuration<SmallTextEffect>.StyleModifier>, &lazy cache variable for type metadata for Text.Effect.Configuration<SmallTextEffect>.StyleModifier, lazy protocol witness table accessor for type SmallTextEffect and conformance SmallTextEffect, &type metadata for SmallTextEffect);
}

{
  return specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, a4, &lazy cache variable for type metadata for _ContiguousArrayStorage<(_:_:_:)>, type metadata accessor for (_:_:_:));
}

{
  return specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, a4, &lazy cache variable for type metadata for _ContiguousArrayStorage<(_:_:_:)>, type metadata accessor for (_:_:_:));
}

{
  return specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, a4, &lazy cache variable for type metadata for _ContiguousArrayStorage<(_:_:_:)>, type metadata accessor for (_:_:_:));
}

char *specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(char *a1, int64_t a2, char a3, char *a4)
{
  return specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, a4, &lazy cache variable for type metadata for _ContiguousArrayStorage<Text.Effect.GlyphIndex>, &type metadata for Text.Effect.GlyphIndex);
}

{
  return specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, a4, &lazy cache variable for type metadata for _ContiguousArrayStorage<Text.Effect.ClusterIndex>, &type metadata for Text.Effect.ClusterIndex);
}

{
  return specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, a4, &lazy cache variable for type metadata for _ContiguousArrayStorage<Text.Effect.Identifier>, &type metadata for Text.Effect.Identifier);
}

void *specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(void *result, int64_t a2, char a3, void *a4, unint64_t *a5, void (*a6)(uint64_t))
{
  v7 = result;
  if (a3)
  {
    v8 = a4[3];
    v9 = v8 >> 1;
    if ((v8 >> 1) < a2)
    {
      if (v9 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v9 = v8 & 0xFFFFFFFFFFFFFFFELL;
      if ((v8 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v9 = a2;
      }
    }
  }

  else
  {
    v9 = a2;
  }

  v10 = a4[2];
  if (v9 <= v10)
  {
    v11 = a4[2];
  }

  else
  {
    v11 = v9;
  }

  if (v11)
  {
    type metadata accessor for _ContiguousArrayStorage<Text.Effect.RenderSegmentation.Segment>(0, a5, a6);
    v12 = swift_allocObject();
    v13 = _swift_stdlib_malloc_size(v12);
    v14 = v13 - 32;
    if (v13 < 32)
    {
      v14 = v13 - 17;
    }

    v12[2] = v10;
    v12[3] = 2 * (v14 >> 4);
  }

  else
  {
    v12 = MEMORY[0x1E69E7CC0];
  }

  if (v7)
  {
    if (v12 != a4 || v12 + 4 >= &a4[2 * v10 + 4])
    {
      memmove(v12 + 4, a4 + 4, 16 * v10);
    }

    a4[2] = 0;
  }

  else
  {
    type metadata accessor for ()();
    swift_arrayInitWithCopy();
  }

  return v12;
}

void *specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(void *result, int64_t a2, char a3, void *a4, unint64_t *a5, unint64_t *a6, uint64_t (*a7)(void), uint64_t a8)
{
  v12 = result;
  if (a3)
  {
    v13 = a4[3];
    v14 = v13 >> 1;
    if ((v13 >> 1) < a2)
    {
      if (v14 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v14 = v13 & 0xFFFFFFFFFFFFFFFELL;
      if ((v13 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v14 = a2;
      }
    }
  }

  else
  {
    v14 = a2;
  }

  v15 = a4[2];
  if (v14 <= v15)
  {
    v16 = a4[2];
  }

  else
  {
    v16 = v14;
  }

  if (v16)
  {
    type metadata accessor for _ContiguousArrayStorage<Text.Effect.Configuration<BigTextEffect>.StyleModifier>(0, a5, a6, a7, a8);
    v17 = swift_allocObject();
    v18 = _swift_stdlib_malloc_size(v17);
    v19 = v18 - 32;
    if (v18 < 32)
    {
      v19 = v18 - 1;
    }

    v17[2] = v15;
    v17[3] = 2 * (v19 >> 5);
  }

  else
  {
    v17 = MEMORY[0x1E69E7CC0];
  }

  if (v12)
  {
    if (v17 != a4 || v17 + 4 >= &a4[4 * v15 + 4])
    {
      memmove(v17 + 4, a4 + 4, 32 * v15);
    }

    a4[2] = 0;
  }

  else
  {
    type metadata accessor for IndexingIterator<Text.Effect.Markers>(0, a6, a7, a8, type metadata accessor for Text.Effect.Configuration.StyleModifier);
    swift_arrayInitWithCopy();
  }

  return v17;
}

char *specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(char *result, int64_t a2, char a3, char *a4, unint64_t *a5, uint64_t a6)
{
  v7 = result;
  if (a3)
  {
    v8 = *(a4 + 3);
    v9 = v8 >> 1;
    if ((v8 >> 1) < a2)
    {
      if (v9 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v9 = v8 & 0xFFFFFFFFFFFFFFFELL;
      if ((v8 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v9 = a2;
      }
    }
  }

  else
  {
    v9 = a2;
  }

  v10 = *(a4 + 2);
  if (v9 <= v10)
  {
    v11 = *(a4 + 2);
  }

  else
  {
    v11 = v9;
  }

  if (v11)
  {
    type metadata accessor for _ContiguousArrayStorage<Text.Effect.Markers.Marker>(0, a5, a6, MEMORY[0x1E69E6F90]);
    v12 = swift_allocObject();
    v13 = _swift_stdlib_malloc_size(v12);
    v14 = v13 - 32;
    if (v13 < 32)
    {
      v14 = v13 - 25;
    }

    *(v12 + 2) = v10;
    *(v12 + 3) = 2 * (v14 >> 3);
  }

  else
  {
    v12 = MEMORY[0x1E69E7CC0];
  }

  v15 = v12 + 32;
  v16 = a4 + 32;
  if (v7)
  {
    if (v12 != a4 || v15 >= &v16[8 * v10])
    {
      memmove(v15, v16, 8 * v10);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v15, v16, 8 * v10);
  }

  return v12;
}

void *specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(void *result, int64_t a2, char a3, void *a4)
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
    type metadata accessor for _ContiguousArrayStorage<Path?>();
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v10[2] = v8;
    v10[3] = 2 * ((v11 - 32) / 40);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[5 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 40 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    type metadata accessor for _ContiguousArrayStorage<Text.Effect.Markers.Marker>(0, &lazy cache variable for type metadata for Path?, MEMORY[0x1E6980F80], MEMORY[0x1E69E6720]);
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *_ss22_ContiguousArrayBufferV19_uninitializedCount15minimumCapacityAByxGSi_SitcfC7SwiftUI4TextV0J16AnimationSupportE6EffectO7MarkersV6MarkerV_Tt1g5Tm(uint64_t a1, uint64_t a2, unint64_t *a3, uint64_t a4)
{
  if (a2 <= a1)
  {
    v4 = a1;
  }

  else
  {
    v4 = a2;
  }

  if (!v4)
  {
    return MEMORY[0x1E69E7CC0];
  }

  type metadata accessor for _ContiguousArrayStorage<Text.Effect.Markers.Marker>(0, a3, a4, MEMORY[0x1E69E6F90]);
  v6 = swift_allocObject();
  v7 = _swift_stdlib_malloc_size(v6);
  result = v6;
  v10 = v7 - 32;
  v9 = v7 < 32;
  v11 = v7 - 1;
  if (!v9)
  {
    v11 = v10;
  }

  v6[2] = a1;
  v6[3] = 2 * (v11 >> 5);
  return result;
}

void *_ss22_ContiguousArrayBufferV19_uninitializedCount15minimumCapacityAByxGSi_SitcfC7SwiftUI4TextV0J16AnimationSupportE6EffectO12BaseFragmentV_Tt1g5(uint64_t a1, uint64_t a2)
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
    return MEMORY[0x1E69E7CC0];
  }

  type metadata accessor for _ContiguousArrayStorage<Text.Effect.Markers.Marker>(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<Text.Effect.BaseFragment>, &type metadata for Text.Effect.BaseFragment, MEMORY[0x1E69E6F90]);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  result = v4;
  v7 = ((v5 - 32) * 0x4924924924924925) >> 64;
  v4[2] = a1;
  v4[3] = 2 * ((v7 >> 4) + (v7 >> 63));
  return result;
}

void *_ss22_ContiguousArrayBufferV19_uninitializedCount15minimumCapacityAByxGSi_SitcfC7SwiftUI4TextV0J16AnimationSupportE6EffectO16MarkerLayoutInfoV7ElementV_Tt1g5Tm(uint64_t a1, uint64_t a2, unint64_t *a3, uint64_t a4)
{
  if (a2 <= a1)
  {
    v4 = a1;
  }

  else
  {
    v4 = a2;
  }

  if (!v4)
  {
    return MEMORY[0x1E69E7CC0];
  }

  type metadata accessor for _ContiguousArrayStorage<Text.Effect.Markers.Marker>(0, a3, a4, MEMORY[0x1E69E6F90]);
  v6 = swift_allocObject();
  v7 = _swift_stdlib_malloc_size(v6);
  result = v6;
  v9 = ((v7 - 32) * 0x2AAAAAAAAAAAAAABLL) >> 64;
  v6[2] = a1;
  v6[3] = 2 * ((v9 >> 4) + (v9 >> 63));
  return result;
}

void *_ss22_ContiguousArrayBufferV19_uninitializedCount15minimumCapacityAByxGSi_SitcfC7SwiftUI4TextV0J16AnimationSupportE6EffectO16KeyframeSequenceV5EntryV_Tt1g5(uint64_t a1, uint64_t a2)
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
    return MEMORY[0x1E69E7CC0];
  }

  type metadata accessor for _ContiguousArrayStorage<Text.Effect.Markers.Marker>(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<Text.Effect.KeyframeSequence.Entry>, &type metadata for Text.Effect.KeyframeSequence.Entry, MEMORY[0x1E69E6F90]);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  result = v4;
  v7 = ((v5 - 32) * 0x2AAAAAAAAAAAAAABLL) >> 64;
  v4[2] = a1;
  v4[3] = 2 * ((v7 >> 2) + (v7 >> 63));
  return result;
}

size_t _ss22_ContiguousArrayBufferV19_uninitializedCount15minimumCapacityAByxGSi_SitcfC7SwiftUI4TextV6LayoutV3RunV_Tt1g5Tm(uint64_t a1, uint64_t a2, unint64_t *a3, void (*a4)(uint64_t), uint64_t (*a5)(void))
{
  if (a2 <= a1)
  {
    v5 = a1;
  }

  else
  {
    v5 = a2;
  }

  if (!v5)
  {
    return MEMORY[0x1E69E7CC0];
  }

  type metadata accessor for _ContiguousArrayStorage<Text.Effect.RenderSegmentation.Segment>(0, a3, a4);
  v8 = *(a5(0) - 8);
  v9 = *(v8 + 72);
  v10 = (*(v8 + 80) + 32) & ~*(v8 + 80);
  v11 = swift_allocObject();
  result = _swift_stdlib_malloc_size(v11);
  if (v9)
  {
    if (result - v10 != 0x8000000000000000 || v9 != -1)
    {
      v11[2] = a1;
      v11[3] = 2 * ((result - v10) / v9);
      return v11;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

void *_ss22_ContiguousArrayBufferV19_uninitializedCount15minimumCapacityAByxGSi_SitcfC7SwiftUI4TextV0J16AnimationSupportE6EffectO19StopMarkerCollectorV7SegmentV7ElementV_Tt1g5(uint64_t a1, uint64_t a2)
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
    return MEMORY[0x1E69E7CC0];
  }

  type metadata accessor for _ContiguousArrayStorage<Text.Effect.Markers.Marker>(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<Text.Effect.StopMarkerCollector.Segment.Element>, &type metadata for Text.Effect.StopMarkerCollector.Segment.Element, MEMORY[0x1E69E6F90]);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  result = v4;
  v8 = v5 - 32;
  v7 = v5 < 32;
  v9 = v5 - 17;
  if (!v7)
  {
    v9 = v8;
  }

  v4[2] = a1;
  v4[3] = 2 * (v9 >> 4);
  return result;
}

void *_ss22_ContiguousArrayBufferV19_uninitializedCount15minimumCapacityAByxGSi_SitcfC7SwiftUI4TextV0J16AnimationSupportE6EffectO11DisplayInfoV_Tt1g5(uint64_t a1, uint64_t a2)
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
    return MEMORY[0x1E69E7CC0];
  }

  type metadata accessor for _ContiguousArrayStorage<Text.Effect.Markers.Marker>(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<Text.Effect.DisplayInfo>, &type metadata for Text.Effect.DisplayInfo, MEMORY[0x1E69E6F90]);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  result = v4;
  v8 = v5 - 32;
  v7 = v5 < 32;
  v9 = v5 + 95;
  if (!v7)
  {
    v9 = v8;
  }

  v4[2] = a1;
  v4[3] = 2 * (v9 >> 7);
  return result;
}

void *_ss22_ContiguousArrayBufferV19_uninitializedCount15minimumCapacityAByxGSi_SitcfC7SwiftUI4TextV0J16AnimationSupportE6EffectO8FlatPathV7ElementO_Tt1g5(uint64_t a1, uint64_t a2)
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
    return MEMORY[0x1E69E7CC0];
  }

  type metadata accessor for _ContiguousArrayStorage<Text.Effect.Markers.Marker>(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<Text.Effect.FlatPath.Element>, &type metadata for Text.Effect.FlatPath.Element, MEMORY[0x1E69E6F90]);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

uint64_t outlined init with copy of Any(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

void *specialized _copyCollectionToContiguousArray<A>(_:)(uint64_t a1)
{
  v2 = type metadata accessor for Text.Effect.BaseContent(0);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v13 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for IndexingIterator<Text.Effect.BaseContent>();
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = &v13 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = specialized Collection.count.getter();
  if (!v8)
  {
    return MEMORY[0x1E69E7CC0];
  }

  v9 = v8;
  v10 = _ss22_ContiguousArrayBufferV19_uninitializedCount15minimumCapacityAByxGSi_SitcfC7SwiftUI4TextV0J16AnimationSupportE6EffectO12BaseFragmentV_Tt1g5(v8, 0);
  outlined init with copy of Text.Effect.RenderSegmentation.Segment(a1, v4, type metadata accessor for Text.Effect.BaseContent);
  v11 = specialized Sequence._copySequenceContents(initializing:)(v7, v10 + 4, v9);
  outlined destroy of Text.Effect.RenderSegmentation.StaticRuns(v7, type metadata accessor for IndexingIterator<Text.Effect.BaseContent>);
  if (v11 != v9)
  {
    __break(1u);
    return MEMORY[0x1E69E7CC0];
  }

  return v10;
}

{
  v1 = *(a1 + 16);
  if (!v1)
  {
    return MEMORY[0x1E69E7CC0];
  }

  result = _ss22_ContiguousArrayBufferV19_uninitializedCount15minimumCapacityAByxGSi_SitcfC7SwiftUI4TextV0J16AnimationSupportE6EffectO16MarkerLayoutInfoV7ElementV_Tt1g5Tm(*(a1 + 16), 0, &lazy cache variable for type metadata for _ContiguousArrayStorage<Text.Effect.StopCollector.Segment.Element>, &type metadata for Text.Effect.StopCollector.Segment.Element);
  v4 = *(a1 + 16);
  if (v4)
  {
    v5 = 0;
    v6 = (a1 + 32);
    v7 = result;
    v8 = (result + 4);
    while (1)
    {
      memmove(v8, v6, 0x60uLL);
      if (v1 - 1 == v5)
      {
        break;
      }

      v8 += 96;
      ++v5;
      v6 += 96;
      if (v4 == v5)
      {
        goto LABEL_9;
      }
    }

    v4 = v1;
LABEL_9:
    result = v7;
  }

  if (v4 != v1)
  {
    __break(1u);
  }

  return result;
}

{
  v1 = *(a1 + 16);
  if (!v1)
  {
    return MEMORY[0x1E69E7CC0];
  }

  v3 = _ss22_ContiguousArrayBufferV19_uninitializedCount15minimumCapacityAByxGSi_SitcfC7SwiftUI4TextV0J16AnimationSupportE6EffectO16KeyframeSequenceV5EntryV_Tt1g5(*(a1 + 16), 0);
  v4 = specialized Sequence._copySequenceContents(initializing:)(&v6, (v3 + 4), v1, a1);

  if (v4 != v1)
  {
    __break(1u);
    return MEMORY[0x1E69E7CC0];
  }

  return v3;
}

{
  v1 = *(a1 + 16);
  if (!v1)
  {
    return MEMORY[0x1E69E7CC0];
  }

  result = _ss22_ContiguousArrayBufferV19_uninitializedCount15minimumCapacityAByxGSi_SitcfC7SwiftUI4TextV0J16AnimationSupportE6EffectO19StopMarkerCollectorV7SegmentV7ElementV_Tt1g5(*(a1 + 16), 0);
  v4 = *(a1 + 16);
  if (v4)
  {
    v5 = a1 + 32;
    v6 = result + 4;
    v7 = v4 - 1;
    if (v4 - 1 >= (v1 - 1))
    {
      v8 = v1 - 1;
    }

    else
    {
      v8 = v4 - 1;
    }

    v9 = v8 + 1;
    if (v9 < 0xB)
    {
      goto LABEL_20;
    }

    if (v7 >= v1 - 1)
    {
      v7 = v1 - 1;
    }

    v10 = 16 * v7 + 48;
    if (v6 >= a1 + v10 || v5 >= result + v10)
    {
      v12 = v9 & 3;
      if ((v9 & 3) == 0)
      {
        v12 = 4;
      }

      v13 = v9 - v12;
      v14 = v13 + 1;
      v6 += v13;
      v15 = (a1 + 64);
      v16 = result + 8;
      v17 = v13;
      do
      {
        v19 = *(v15 - 2);
        v18 = *(v15 - 1);
        v21 = *v15;
        v20 = v15[1];
        v15 += 4;
        *(v16 - 2) = v19;
        *(v16 - 1) = v18;
        *v16 = v21;
        v16[1] = v20;
        v16 += 4;
        v17 -= 4;
      }

      while (v17);
      v22 = v4 + 1;
    }

    else
    {
LABEL_20:
      v13 = 0;
      v14 = 1;
      v22 = v4 + 1;
    }

    while (1)
    {
      *v6 = *(v5 + 16 * v13);
      if (v1 == v14)
      {
        break;
      }

      v13 = v14;
      ++v6;
      if (v22 == ++v14)
      {
        goto LABEL_25;
      }
    }

    v4 = v1;
  }

LABEL_25:
  if (v4 != v1)
  {
    __break(1u);
  }

  return result;
}

{
  v1 = *(a1 + 16);
  if (!v1)
  {
    return MEMORY[0x1E69E7CC0];
  }

  result = _ss22_ContiguousArrayBufferV19_uninitializedCount15minimumCapacityAByxGSi_SitcfC7SwiftUI4TextV0J16AnimationSupportE6EffectO8FlatPathV7ElementO_Tt1g5(*(a1 + 16), 0);
  v4 = *(a1 + 16);
  if (v4)
  {
    v5 = 0;
    v6 = result + 4;
    v7 = v4 - 1;
    if (v4 - 1 >= (v1 - 1))
    {
      v7 = v1 - 1;
    }

    v8 = v7 + 1;
    v9 = 1;
    if (v8 >= 0x21 && result - a1 >= 0x20)
    {
      v10 = v8 & 0x1F;
      if ((v8 & 0x1F) == 0)
      {
        v10 = 32;
      }

      v5 = v8 - v10;
      v9 = v5 + 1;
      v6 += v5;
      v11 = (a1 + 48);
      v12 = result + 6;
      v13 = v5;
      do
      {
        v14 = *v11;
        *(v12 - 1) = *(v11 - 1);
        *v12 = v14;
        v11 += 2;
        v12 += 2;
        v13 -= 32;
      }

      while (v13);
    }

    while (1)
    {
      *v6 = *(a1 + 32 + v5);
      if (v1 == v9)
      {
        break;
      }

      v5 = v9;
      ++v6;
      if (v4 + 1 == ++v9)
      {
        goto LABEL_16;
      }
    }

    v4 = v1;
  }

LABEL_16:
  if (v4 != v1)
  {
    __break(1u);
  }

  return result;
}

{
  v1 = *(a1 + 16);
  if (!v1)
  {
    return MEMORY[0x1E69E7CC0];
  }

  v3 = _ss22_ContiguousArrayBufferV19_uninitializedCount15minimumCapacityAByxGSi_SitcfC7SwiftUI4TextV0J16AnimationSupportE6EffectO14KeyframeLayoutV8FragmentV_Tt1g5Tm(*(a1 + 16), 0, &lazy cache variable for type metadata for _ContiguousArrayStorage<Double>, MEMORY[0x1E69E63B0]);
  v4 = specialized Sequence._copySequenceContents(initializing:)(&v6, v3 + 4, v1, a1);

  outlined consume of [Double : Text.Effect.BaseFragment].Iterator._Variant();
  if (v4 != v1)
  {
    __break(1u);
    return MEMORY[0x1E69E7CC0];
  }

  return v3;
}

void *specialized _copyCollectionToContiguousArray<A>(_:)(uint64_t a1, char a2)
{
  v2 = *(a1 + 16);
  if (!v2)
  {
    return MEMORY[0x1E69E7CC0];
  }

  v5 = _ss22_ContiguousArrayBufferV19_uninitializedCount15minimumCapacityAByxGSi_SitcfC7SwiftUI4TextV0J16AnimationSupportE6EffectO14KeyframeLayoutV8FragmentV_Tt1g5Tm(*(a1 + 16), 0, &lazy cache variable for type metadata for _ContiguousArrayStorage<Text.Effect.KeyframeLayout.Fragment>, &type metadata for Text.Effect.KeyframeLayout.Fragment);
  v6 = specialized Sequence._copySequenceContents(initializing:)(v8, (v5 + 4), v2, a1, a2);

  if (v6 != v2)
  {
    __break(1u);
    return MEMORY[0x1E69E7CC0];
  }

  return v5;
}

uint64_t specialized _copyCollectionToContiguousArray<A>(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void, void, uint64_t, uint64_t), uint64_t (*a5)(uint64_t *, uint64_t, uint64_t, uint64_t))
{
  v5 = *(a1 + 16);
  if (!v5)
  {
    return MEMORY[0x1E69E7CC0];
  }

  v8 = a4(*(a1 + 16), 0, a2, a3);
  v9 = a5(&v11, v8 + 32, v5, a1);

  if (v9 != v5)
  {
    __break(1u);
    return MEMORY[0x1E69E7CC0];
  }

  return v8;
}

int64_t specialized _copyCollectionToContiguousArray<A>(_:)(int64_t result, uint64_t a2)
{
  v2 = *(a2 + 16);
  v3 = __OFADD__(result, v2);
  v4 = result + v2;
  if (v3)
  {
    __break(1u);
    goto LABEL_10;
  }

  v5 = result;
  v6 = v4 - result;
  if (v4 < result)
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  if (!__OFSUB__(v4, result))
  {
    if (v6)
    {
      v8 = _ss22_ContiguousArrayBufferV19_uninitializedCount15minimumCapacityAByxGSi_SitcfC7SwiftUI4TextV6LayoutV3RunV_Tt1g5Tm(v4 - result, 0, &lazy cache variable for type metadata for _ContiguousArrayStorage<Text.Effect.PathInterpolator.Cluster>, type metadata accessor for Text.Effect.PathInterpolator.Cluster, type metadata accessor for Text.Effect.PathInterpolator.Cluster);
      v9 = *(type metadata accessor for Text.Effect.PathInterpolator.Cluster(0) - 8);
      v10 = specialized Sequence._copySequenceContents(initializing:)(&v11, v8 + ((*(v9 + 80) + 32) & ~*(v9 + 80)), v6, v5, a2);

      if (v10 == v6)
      {
        return v8;
      }

      __break(1u);
    }

    return MEMORY[0x1E69E7CC0];
  }

LABEL_11:
  __break(1u);
  return result;
}

size_t specialized _copyCollectionToContiguousArray<A>(_:)(uint64_t a1)
{
  v1 = *(*a1 + 16);
  if (!v1)
  {
    return MEMORY[0x1E69E7CC0];
  }

  v3 = _ss22_ContiguousArrayBufferV19_uninitializedCount15minimumCapacityAByxGSi_SitcfC7SwiftUI4TextV6LayoutV3RunV_Tt1g5Tm(*(*a1 + 16), 0, &lazy cache variable for type metadata for _ContiguousArrayStorage<Text.Layout.Line>, MEMORY[0x1E6981048], MEMORY[0x1E6981048]);
  v4 = *(type metadata accessor for Text.Layout.Line() - 8);
  v5 = specialized Sequence._copySequenceContents(initializing:)(v8, v3 + ((*(v4 + 80) + 32) & ~*(v4 + 80)), v1);
  outlined init with copy of Text.Effect.RenderSegmentation.StaticLines(a1, v7);
  outlined destroy of IndexingIterator<Text.Effect.RenderSegmentation.StaticLines>(v8);
  if (v5 != v1)
  {
    __break(1u);
    return MEMORY[0x1E69E7CC0];
  }

  return v3;
}

{
  v1 = *(a1 + 16);
  if (!v1)
  {
    return MEMORY[0x1E69E7CC0];
  }

  v3 = _ss22_ContiguousArrayBufferV19_uninitializedCount15minimumCapacityAByxGSi_SitcfC7SwiftUI4TextV6LayoutV3RunV_Tt1g5Tm(*(a1 + 16), 0, &lazy cache variable for type metadata for _ContiguousArrayStorage<Text.Effect.RenderSegmentation.Segment>, type metadata accessor for Text.Effect.RenderSegmentation.Segment, type metadata accessor for Text.Effect.RenderSegmentation.Segment);
  v4 = *(type metadata accessor for Text.Effect.RenderSegmentation.Segment(0) - 8);
  v5 = specialized Sequence._copySequenceContents(initializing:)(&v7, v3 + ((*(v4 + 80) + 32) & ~*(v4 + 80)), v1, a1);

  if (v5 != v1)
  {
    __break(1u);
    return MEMORY[0x1E69E7CC0];
  }

  return v3;
}

char *specialized _copyCollectionToContiguousArray<A>(_:)(uint64_t a1, double a2)
{
  v2 = *(a1 + 16);
  if (!v2)
  {
    return MEMORY[0x1E69E7CC0];
  }

  v5 = _ss22_ContiguousArrayBufferV19_uninitializedCount15minimumCapacityAByxGSi_SitcfC7SwiftUI4TextV0J16AnimationSupportE6EffectO11DisplayInfoV_Tt1g5(*(a1 + 16), 0);
  v6 = specialized Sequence._copySequenceContents(initializing:)(v8, v5 + 32, v2, a1, a2);

  if (v6 != v2)
  {
    __break(1u);
    return MEMORY[0x1E69E7CC0];
  }

  return v5;
}

void specialized _copyCollectionToContiguousArray<A>(_:)(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v4 = a4 >> 1;
  v5 = (a4 >> 1) - a3;
  if (__OFSUB__(a4 >> 1, a3))
  {
LABEL_11:
    __break(1u);
    return;
  }

  if (v5)
  {
    if (v5 < 1)
    {
      if (v4 != a3)
      {
LABEL_7:
        type metadata accessor for NSObject(0, &lazy cache variable for type metadata for CALayer);
        swift_arrayInitWithCopy();
        return;
      }
    }

    else
    {
      type metadata accessor for _ContiguousArrayStorage<Text.Effect.Markers.Marker>(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<Swift.AnyObject>, MEMORY[0x1E69E7C98] + 8, MEMORY[0x1E69E6F90]);
      v7 = swift_allocObject();
      v8 = _swift_stdlib_malloc_size(v7);
      v9 = v8 - 32;
      if (v8 < 32)
      {
        v9 = v8 - 25;
      }

      v7[2] = v5;
      v7[3] = (2 * (v9 >> 3)) | 1;
      if (v4 != a3)
      {
        goto LABEL_7;
      }
    }

    __break(1u);
    goto LABEL_11;
  }
}

{
  v4 = a4 >> 1;
  v5 = (a4 >> 1) - a3;
  if (__OFSUB__(a4 >> 1, a3))
  {
    goto LABEL_14;
  }

  if (v5)
  {
    if (v5 < 1)
    {
      if (v4 != a3)
      {
        goto LABEL_10;
      }
    }

    else
    {
      type metadata accessor for _ContiguousArrayStorage<Text.Effect.RenderSegmentation.Segment>(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<UUID>, MEMORY[0x1E69695A8]);
      v7 = *(type metadata accessor for UUID() - 8);
      v8 = *(v7 + 72);
      v9 = (*(v7 + 80) + 32) & ~*(v7 + 80);
      v10 = swift_allocObject();
      v11 = _swift_stdlib_malloc_size(v10);
      if (!v8)
      {
LABEL_15:
        __break(1u);
LABEL_16:
        __break(1u);
        return;
      }

      if (v11 - v9 == 0x8000000000000000 && v8 == -1)
      {
        goto LABEL_16;
      }

      v10[2] = v5;
      v10[3] = 2 * ((v11 - v9) / v8);
      if (v4 != a3)
      {
LABEL_10:
        type metadata accessor for UUID();
        swift_arrayInitWithCopy();
        return;
      }
    }

    __break(1u);
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }
}

uint64_t specialized Sequence._copySequenceContents(initializing:)(uint64_t a1, void *a2, uint64_t a3)
{
  v4 = v3;
  v8 = type metadata accessor for ClusterIndexSequence.Iterator(0);
  v9 = (v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v57 = (&v51 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v51 - v12;
  v14 = type metadata accessor for ClusterIndexSequence(0);
  v15 = *(v14 + 24);
  v16 = (v4 + *(v14 + 20));
  v17 = *v16;
  v18 = v16[1];
  v19 = *(v4 + v15);
  v20 = *(v4 + v15 + 8);
  outlined init with take of Text.Effect.RenderSegmentation.StaticRuns.Iterator(v4, v13, type metadata accessor for Text.Effect.BaseContent);
  v21 = &v13[v9[7]];
  *v21 = v17;
  *(v21 + 1) = v18;
  v22 = &v13[v9[8]];
  *v22 = v19;
  *(v22 + 1) = v20;
  v52 = v20;
  v53 = v13;
  v23 = &v13[v9[9]];
  *v23 = v17;
  *(v23 + 1) = v18;
  v54 = v23;
  v55 = v19;
  v51 = a1;
  if (!a2)
  {
    v25 = 0;
    goto LABEL_31;
  }

  if (!a3)
  {
LABEL_29:
    v25 = a3;
LABEL_31:
    outlined init with take of Text.Effect.RenderSegmentation.StaticRuns.Iterator(v53, v51, type metadata accessor for ClusterIndexSequence.Iterator);
    return v25;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v24 = v18;
    v25 = 0;
    v26 = 1;
    while (1)
    {
      if (v17 >= v55)
      {
        if (__OFSUB__(v55, v17))
        {
          goto LABEL_39;
        }

        if (v55 != v17 || v24 >= v52)
        {
          goto LABEL_31;
        }
      }

      v56 = v26;
      v27 = v24;
      v28 = v57;
      outlined init with copy of Text.Effect.RenderSegmentation.Segment(v53, v57, type metadata accessor for ClusterIndexSequence.Iterator);
      v29 = *v28;
      v30 = v28[1];
      v31 = v28[2];
      swift_beginAccess();
      v32 = *(v29 + 48);
      v33 = *(v32 + 16);

      if (!v33)
      {
        goto LABEL_42;
      }

      v34 = specialized __RawDictionaryStorage.find<A>(_:)(v30, v31);
      if ((v35 & 1) == 0)
      {
        goto LABEL_42;
      }

      v36 = *(*(v32 + 56) + 16 * v34);
      swift_endAccess();
      if ((v17 & 0x8000000000000000) != 0)
      {
        break;
      }

      v37 = a3;
      v38 = *(v36 + 16);
      if (v17 >= v38)
      {
        goto LABEL_34;
      }

      v39 = (v36 + 32);
      v40 = *(v36 + 32 + 8 * v17);
      v41 = 0;
      if (v17)
      {
        v42 = v17;
        while (1)
        {
          v43 = *(*(*v39 + OBJC_IVAR____TtCVVOE20TextAnimationSupportV7SwiftUI4Text6Effect14KeyframeLayout8FragmentP33_4C784D74468FB10855DB713ACA87B0927Storage_clusters) + 16);
          v44 = __OFADD__(v41, v43);
          v41 += v43;
          if (v44)
          {
            break;
          }

          ++v39;
          if (!--v42)
          {
            goto LABEL_17;
          }
        }

        __break(1u);
        break;
      }

LABEL_17:

      outlined destroy of Text.Effect.RenderSegmentation.StaticRuns(v57, type metadata accessor for Text.Effect.BaseContent);
      v45 = v27 + 1;
      if (__OFADD__(v27, 1))
      {
        goto LABEL_35;
      }

      *(v54 + 1) = v45;
      v46 = *(*(v40 + OBJC_IVAR____TtCVVOE20TextAnimationSupportV7SwiftUI4Text6Effect14KeyframeLayout8FragmentP33_4C784D74468FB10855DB713ACA87B0927Storage_clusters) + 16);
      v44 = __OFADD__(v41, v46);
      v47 = v41 + v46;
      if (v44)
      {
        goto LABEL_36;
      }

      if (v47 < v41)
      {
        goto LABEL_37;
      }

      v48 = v47 == v45;
      if (__OFSUB__(v47, v45))
      {
        goto LABEL_38;
      }

      v49 = v17;
      if (v48)
      {
        v49 = v17 + 1;
        if (__OFADD__(v17, 1))
        {
          goto LABEL_40;
        }

        *v54 = v49;
      }

      *a2 = v29;
      a2[1] = v30;
      a2[2] = v31;
      a2[3] = v40;
      a2[4] = v17;
      a2[5] = v38;
      a2[6] = v41;
      a2[7] = v27;
      a3 = v37;
      if (v56 == v37)
      {
        goto LABEL_29;
      }

      a2 += 8;
      v25 = v56;
      v24 = v27 + 1;
      v17 = v49;
      v26 = v56 + 1;
      if (__OFADD__(v56, 1))
      {
        __break(1u);
        goto LABEL_29;
      }
    }

    __break(1u);
LABEL_34:
    __break(1u);
LABEL_35:
    __break(1u);
LABEL_36:
    __break(1u);
LABEL_37:
    __break(1u);
LABEL_38:
    __break(1u);
LABEL_39:
    __break(1u);
LABEL_40:
    __break(1u);
  }

  __break(1u);
LABEL_42:
  swift_endAccess();
  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

{
  v4 = v3;
  v8 = type metadata accessor for FragmentRangeSequence.Iterator(0);
  v9 = (v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v65 = (&v55 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v55 - v12;
  v14 = type metadata accessor for FragmentRangeSequence(0);
  v15 = *(v14 + 24);
  v16 = (v4 + *(v14 + 20));
  v17 = *v16;
  v18 = v16[1];
  v19 = *(v4 + v15);
  v20 = *(v4 + v15 + 8);
  outlined init with take of Text.Effect.RenderSegmentation.StaticRuns.Iterator(v4, v13, type metadata accessor for Text.Effect.BaseContent);
  v21 = &v13[v9[7]];
  *v21 = v17;
  *(v21 + 1) = v18;
  v22 = &v13[v9[8]];
  *v22 = v19;
  *(v22 + 1) = v20;
  v23 = v9[9];
  v61 = v17;
  v62 = v13;
  v24 = &v13[v23];
  *v24 = v17;
  *(v24 + 1) = v18;
  if (!a2)
  {
    a3 = 0;
    goto LABEL_42;
  }

  if (!a3)
  {
LABEL_42:
    outlined init with take of Text.Effect.RenderSegmentation.StaticRuns.Iterator(v62, a1, type metadata accessor for FragmentRangeSequence.Iterator);
    return a3;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v25 = v19;
    v56 = a1;
    v57 = a3;
    v26 = 0;
    v27 = v61;
    v58 = v61 ^ 0x7FFFFFFFFFFFFFFFLL;
    v59 = v20;
    v60 = &v13[v23];
    while (1)
    {
      if (v27 >= v25)
      {
        if (__OFSUB__(v25, v27))
        {
          goto LABEL_52;
        }

        if (v25 != v27 || v18 >= v20)
        {
          a3 = v26;
          a1 = v56;
          goto LABEL_42;
        }
      }

      v63 = v18;
      v64 = v26;
      v28 = v25;
      v29 = v65;
      outlined init with copy of Text.Effect.RenderSegmentation.Segment(v62, v65, type metadata accessor for FragmentRangeSequence.Iterator);
      v30 = *v29;
      v31 = v29[1];
      v32 = v29[2];
      swift_beginAccess();
      v33 = *(v30 + 48);
      v34 = *(v33 + 16);

      if (!v34)
      {
        goto LABEL_57;
      }

      v35 = specialized __RawDictionaryStorage.find<A>(_:)(v31, v32);
      if ((v36 & 1) == 0)
      {
        goto LABEL_57;
      }

      v37 = *(*(v33 + 56) + 16 * v35);
      swift_endAccess();
      if ((v61 & 0x8000000000000000) != 0)
      {
        break;
      }

      v38 = *(v37 + 16);
      if (v27 >= v38)
      {
        goto LABEL_47;
      }

      v39 = v37 + 32;
      v40 = *(v37 + 32 + 8 * v27);
      if (v27)
      {
        v41 = 0;
        v42 = 0;
        while (1)
        {
          v43 = *(*(*(v39 + 8 * v41) + OBJC_IVAR____TtCVVOE20TextAnimationSupportV7SwiftUI4Text6Effect14KeyframeLayout8FragmentP33_4C784D74468FB10855DB713ACA87B0927Storage_clusters) + 16);
          v52 = __OFADD__(v42, v43);
          v42 += v43;
          if (v52)
          {
            break;
          }

          if (__OFSUB__(v27, ++v41))
          {
            goto LABEL_45;
          }

          if (v27 == v41)
          {
            goto LABEL_20;
          }
        }

        __break(1u);
LABEL_45:
        __break(1u);
        break;
      }

      v42 = 0;
LABEL_20:

      outlined destroy of Text.Effect.RenderSegmentation.StaticRuns(v65, type metadata accessor for Text.Effect.BaseContent);
      if (__OFSUB__(v28, v27))
      {
        goto LABEL_48;
      }

      v25 = v28;
      if (v28 == v27)
      {
        v20 = v59;
        v44 = v60;
        v45 = v63;
        v46 = v64;
        if (v59 < v63)
        {
          goto LABEL_53;
        }

        v47 = *(*(v40 + OBJC_IVAR____TtCVVOE20TextAnimationSupportV7SwiftUI4Text6Effect14KeyframeLayout8FragmentP33_4C784D74468FB10855DB713ACA87B0927Storage_clusters) + 16);
        v52 = __OFADD__(v42, v47);
        v48 = v42 + v47;
        v49 = v52;
        v50 = v59;
      }

      else
      {
        v51 = *(*(v40 + OBJC_IVAR____TtCVVOE20TextAnimationSupportV7SwiftUI4Text6Effect14KeyframeLayout8FragmentP33_4C784D74468FB10855DB713ACA87B0927Storage_clusters) + 16);
        v52 = __OFADD__(v42, v51);
        v48 = v42 + v51;
        v49 = v52;
        v20 = v59;
        v44 = v60;
        v46 = v64;
        if (v52)
        {
          goto LABEL_54;
        }

        v45 = v63;
        if (v48 < v42 || v48 < v63)
        {
          goto LABEL_55;
        }

        v50 = v48;
      }

      if (v49)
      {
        goto LABEL_49;
      }

      if (v48 < v42)
      {
        goto LABEL_50;
      }

      *(v44 + 1) = v48;
      if (v46 == v58)
      {
        goto LABEL_51;
      }

      *v44 = v27 + 1;
      v26 = v46 + 1;
      *a2 = v30;
      a2[1] = v31;
      a2[2] = v32;
      a2[3] = v40;
      a2[4] = v27;
      a2[5] = v38;
      a2[6] = v42;
      a2[7] = v45;
      a2[8] = v50;
      a2 += 9;
      ++v27;
      v18 = v48;
      a3 = v57;
      if (v26 == v57)
      {
        a1 = v56;
        goto LABEL_42;
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
    __break(1u);
LABEL_55:
    __break(1u);
  }

  __break(1u);
LABEL_57:
  swift_endAccess();
  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

uint64_t specialized Sequence._copySequenceContents(initializing:)(uint64_t a1, void *a2, unint64_t a3)
{
  type metadata accessor for IndexingIterator<Text.Effect.BaseContent>();
  v8 = v7;
  MEMORY[0x1EEE9AC00](v7);
  v44 = (&v41 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  outlined init with copy of Text.Effect.RenderSegmentation.Segment(v3, v44, type metadata accessor for Text.Effect.BaseContent);
  v10 = *v3;
  v11 = v3[1];
  v12 = v3[2];
  swift_beginAccess();
  if (*(*(v10 + 48) + 16))
  {
    specialized __RawDictionaryStorage.find<A>(_:)(v11, v12);
    if (v13)
    {
      v14 = *(v8 + 36);
      swift_endAccess();
      v43 = v14;
      *(v44 + v14) = 0;
      outlined destroy of Text.Effect.RenderSegmentation.StaticRuns(v3, type metadata accessor for Text.Effect.BaseContent);
      if (!a2)
      {
LABEL_27:
        a3 = 0;
        goto LABEL_30;
      }

      if (!a3)
      {
LABEL_30:
        outlined init with take of Text.Effect.RenderSegmentation.StaticRuns.Iterator(v44, a1, type metadata accessor for IndexingIterator<Text.Effect.BaseContent>);
        return a3;
      }

      if ((a3 & 0x8000000000000000) == 0)
      {
        v41 = a1;
        v15 = *v44;
        v16 = v44[1];
        v17 = v44[2];
        swift_beginAccess();
        v18 = *(v15 + 48);
        if (*(v18 + 16))
        {
          v19 = 0;
          a1 = 1;
          v42 = a3;
          do
          {
            v20 = specialized __RawDictionaryStorage.find<A>(_:)(v16, v17);
            if ((v21 & 1) == 0)
            {
              break;
            }

            v22 = *(*(v18 + 56) + 16 * v20);
            swift_endAccess();
            if (*(v22 + 16) == v19)
            {
              a3 = v19;
LABEL_29:
              a1 = v41;
              goto LABEL_30;
            }

            swift_beginAccess();
            v23 = *(v15 + 48);
            v24 = *(v23 + 16);

            if (!v24)
            {
              goto LABEL_38;
            }

            v25 = specialized __RawDictionaryStorage.find<A>(_:)(v16, v17);
            if ((v26 & 1) == 0)
            {
              goto LABEL_38;
            }

            v27 = *(*(v23 + 56) + 16 * v25);
            swift_endAccess();
            v28 = *(v27 + 16);
            if (v19 >= v28)
            {
              goto LABEL_32;
            }

            v45 = *(v27 + 32 + 8 * v19);
            if (v19)
            {
              v29 = 0;
              v30 = 0;
              while (1)
              {
                v31 = *(*(*(v27 + 32 + 8 * v29) + OBJC_IVAR____TtCVVOE20TextAnimationSupportV7SwiftUI4Text6Effect14KeyframeLayout8FragmentP33_4C784D74468FB10855DB713ACA87B0927Storage_clusters) + 16);
                v32 = __OFADD__(v30, v31);
                v30 += v31;
                if (v32)
                {
                  break;
                }

                if (v19 == ++v29)
                {
                  goto LABEL_19;
                }
              }

              __break(1u);
LABEL_32:
              __break(1u);
LABEL_33:
              __break(1u);
              goto LABEL_34;
            }

            v30 = 0;
LABEL_19:
            swift_beginAccess();
            v33 = *(*(v15 + 48) + 16);

            if (!v33)
            {
              goto LABEL_36;
            }

            specialized __RawDictionaryStorage.find<A>(_:)(v16, v17);
            if ((v34 & 1) == 0)
            {
              goto LABEL_36;
            }

            swift_endAccess();
            swift_beginAccess();
            v35 = *(v15 + 48);
            if (!*(v35 + 16))
            {
              goto LABEL_35;
            }

            v36 = specialized __RawDictionaryStorage.find<A>(_:)(v16, v17);
            if ((v37 & 1) == 0)
            {
              goto LABEL_35;
            }

            v38 = *(*(v35 + 56) + 16 * v36);
            swift_endAccess();
            if (v19 >= *(v38 + 16))
            {
              goto LABEL_33;
            }

            *(v44 + v43) = a1;
            *a2 = v15;
            a2[1] = v16;
            v39 = v45;
            a2[2] = v17;
            a2[3] = v39;
            a2[4] = v19;
            a2[5] = v28;
            a2[6] = v30;
            a3 = v42;
            if (a1 == v42)
            {
              goto LABEL_29;
            }

            a2 += 7;
            ++a1;
            swift_beginAccess();
            v18 = *(v15 + 48);
            ++v19;
          }

          while (*(v18 + 16));
        }

        swift_endAccess();
        __break(1u);
        goto LABEL_27;
      }

LABEL_34:
      __break(1u);
LABEL_35:
      swift_endAccess();
      __break(1u);
LABEL_36:
      swift_endAccess();
      __break(1u);
    }
  }

  swift_endAccess();
  __break(1u);
LABEL_38:
  swift_endAccess();
  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

void *specialized Sequence._copySequenceContents(initializing:)(void *result, char *__dst, uint64_t a3, uint64_t a4)
{
  if (!__dst)
  {
    a3 = 0;
    goto LABEL_12;
  }

  if (!a3)
  {
LABEL_12:
    *result = a4;
    result[1] = a3;
    return a3;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v4 = *(a4 + 16);
    if (v4)
    {
      v5 = __dst;
      v6 = result;
      v7 = 0;
      v8 = a4;
      v9 = (a4 + 32);
      v10 = a3;
      v11 = a3 - 1;
      while (1)
      {
        memmove(v5, v9, 0x60uLL);
        if (v11 == v7)
        {
          break;
        }

        v5 += 96;
        v9 += 96;
        if (v4 == ++v7)
        {
          a3 = v4;
          a4 = v8;
          result = v6;
          goto LABEL_12;
        }
      }

      a4 = v8;
      result = v6;
      a3 = v10;
    }

    else
    {
      a3 = 0;
    }

    goto LABEL_12;
  }

  __break(1u);
  return result;
}

uint64_t specialized Sequence._copySequenceContents(initializing:)(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  if (!a2)
  {
    a3 = 0;
    goto LABEL_12;
  }

  if (!a3)
  {
LABEL_12:
    *result = a4;
    *(result + 8) = a5;
    *(result + 16) = a3;
    return a3;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v5 = *(a4 + 16);
    if (v5)
    {
      v7 = result;
      v8 = a5;
      v9 = 0;
      v10 = a4;
      v11 = a4 + 32;
      v12 = a3;
      v13 = a3 - 1;
      while (1)
      {
        *(a2 + 8 * v9) = *(v11 + 8 * v9);
        if (v13 == v9)
        {
          break;
        }

        if (v5 == ++v9)
        {
          a3 = v5;
          a5 = v8;
          a4 = v10;
          result = v7;
          goto LABEL_12;
        }
      }

      a5 = v8;
      a4 = v10;
      result = v7;
      a3 = v12;
    }

    else
    {
      a3 = 0;
    }

    goto LABEL_12;
  }

  __break(1u);
  return result;
}

void *specialized Sequence._copySequenceContents(initializing:)(void *result, _OWORD *a2, uint64_t a3, uint64_t a4)
{
  if (!a2)
  {
    a3 = 0;
    goto LABEL_11;
  }

  if (!a3)
  {
LABEL_11:
    *result = a4;
    result[1] = a3;
    return a3;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v4 = *(a4 + 16);
    if (v4)
    {
      v5 = 0;
      v6 = (a4 + 48);
      while (v5 < *(a4 + 16))
      {
        v7 = *v6;
        *a2 = *(v6 - 1);
        a2[1] = v7;
        if (a3 - 1 == v5)
        {
          goto LABEL_11;
        }

        a2 += 2;
        ++v5;
        v6 += 2;
        if (v4 == v5)
        {
          goto LABEL_9;
        }
      }

      __break(1u);
      goto LABEL_13;
    }

LABEL_9:
    a3 = v4;
    goto LABEL_11;
  }

LABEL_13:
  __break(1u);
  return result;
}

uint64_t specialized Sequence._copySequenceContents(initializing:)(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = result;
  if (!a2)
  {
    v6 = 0;
    goto LABEL_12;
  }

  v6 = a3;
  if (!a3)
  {
LABEL_12:
    *v5 = a4;
    v5[1] = v6;
    return v6;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v7 = *(a4 + 16);
    if (v7)
    {
      v9 = 0;
      v10 = 0;
      v11 = a3 - 1;
      while (v10 < *(a4 + 16))
      {
        v12 = a2 + v9;
        v13 = *(a4 + v9 + 40);
        v14 = *(a4 + v9 + 48);
        *v12 = *(a4 + v9 + 32);
        *(v12 + 8) = v13;
        *(v12 + 16) = v14;
        if (v11 == v10)
        {

          goto LABEL_12;
        }

        ++v10;
        v9 += 24;
        if (v7 == v10)
        {
          goto LABEL_9;
        }
      }

      __break(1u);
      goto LABEL_14;
    }

LABEL_9:
    v6 = v7;
    goto LABEL_12;
  }

LABEL_14:
  __break(1u);
  return result;
}

{
  v5 = result;
  if (!a2)
  {
    v6 = 0;
    goto LABEL_11;
  }

  v6 = a3;
  if (!a3)
  {
LABEL_11:
    *v5 = a4;
    v5[1] = v6;
    return v6;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v7 = *(a4 + 16);
    if (v7)
    {
      v8 = a2;
      v9 = 0;
      v10 = a4 + 32;
      v11 = a3 - 1;
      while (v9 < *(a4 + 16))
      {
        result = outlined init with copy of Text.Effect.MarkerLayoutInfo.Element(v10, v8);
        if (v11 == v9)
        {
          goto LABEL_11;
        }

        v8 += 96;
        ++v9;
        v10 += 96;
        if (v7 == v9)
        {
          goto LABEL_9;
        }
      }

      __break(1u);
      goto LABEL_13;
    }

LABEL_9:
    v6 = v7;
    goto LABEL_11;
  }

LABEL_13:
  __break(1u);
  return result;
}

{
  v5 = result;
  if (!a2)
  {
    v6 = 0;
    goto LABEL_11;
  }

  v6 = a3;
  if (!a3)
  {
LABEL_11:
    *v5 = a4;
    v5[1] = v6;
    return v6;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v7 = *(a4 + 16);
    if (v7)
    {
      v8 = a2;
      v9 = 0;
      v10 = a3 - 1;
      while (v9 < *(a4 + 16))
      {
        v11 = *(type metadata accessor for Text.Effect.RenderSegmentation.Segment(0) - 8);
        v12 = *(v11 + 72);
        result = outlined init with copy of Text.Effect.RenderSegmentation.Segment(a4 + ((*(v11 + 80) + 32) & ~*(v11 + 80)) + v12 * v9, v8, type metadata accessor for Text.Effect.RenderSegmentation.Segment);
        if (v10 == v9)
        {
          goto LABEL_11;
        }

        v8 += v12;
        if (v7 == ++v9)
        {
          goto LABEL_9;
        }
      }

      __break(1u);
      goto LABEL_13;
    }

LABEL_9:
    v6 = v7;
    goto LABEL_11;
  }

LABEL_13:
  __break(1u);
  return result;
}

{
  v5 = result;
  if (!a2)
  {
    v6 = 0;
    goto LABEL_12;
  }

  v6 = a3;
  if (!a3)
  {
LABEL_12:
    *v5 = a4;
    v5[1] = v6;
    return v6;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v7 = *(a4 + 16);
    if (v7)
    {
      v9 = 0;
      v10 = 0;
      v11 = a3 - 1;
      while (v10 < *(a4 + 16))
      {
        v12 = a2 + v9;
        v13 = *(a4 + v9 + 32);
        v14 = *(a4 + v9 + 40);
        v15 = *(a4 + v9 + 48);
        *v12 = v13;
        *(v12 + 8) = v14;
        *(v12 + 16) = v15;
        if (v11 == v10)
        {
          outlined copy of Text.Effect.Markers.MarkerType(v13, v14);
          goto LABEL_12;
        }

        result = outlined copy of Text.Effect.Markers.MarkerType(v13, v14);
        ++v10;
        v9 += 32;
        if (v7 == v10)
        {
          goto LABEL_9;
        }
      }

      __break(1u);
      goto LABEL_14;
    }

LABEL_9:
    v6 = v7;
    goto LABEL_12;
  }

LABEL_14:
  __break(1u);
  return result;
}

void *specialized Sequence._copySequenceContents(initializing:)(void *result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (a2)
  {
    v7 = a3;
    if (!a3)
    {
      goto LABEL_16;
    }

    if (a3 < 0)
    {
LABEL_24:
      __break(1u);
      goto LABEL_25;
    }

    v8 = *(a5 + 16);
    v9 = a4 + v8;
    if (__OFADD__(a4, v8))
    {
LABEL_25:
      __break(1u);
      return result;
    }

    v19 = result;
    if (!__OFSUB__(v9, a4))
    {
      v10 = a2;
      v11 = 0;
      v12 = a3 - 1;
      while (1)
      {
        if (v8 == v11)
        {
          v7 = v8;
LABEL_19:
          result = v19;
          goto LABEL_20;
        }

        v13 = *(a5 + 16);
        if (v11 >= v13)
        {
          break;
        }

        v14 = type metadata accessor for Text.Effect.PathInterpolator.Cluster(0);
        v15 = *(v14 - 8);
        result = (v14 - 8);
        v16 = *(v15 + 80);
        v17 = *(v15 + 72);
        if (__OFADD__(a4, v13))
        {
          goto LABEL_22;
        }

        if ((a4 + v11) >= (a4 + v13))
        {
          goto LABEL_23;
        }

        v18 = a4 + v11 + 1;
        result = outlined init with copy of Text.Effect.RenderSegmentation.Segment(a5 + ((v16 + 32) & ~v16) + v17 * v11, v10, type metadata accessor for Text.Effect.PathInterpolator.Cluster);
        if (v12 == v11)
        {
          v9 = a4 + v11 + 1;
          goto LABEL_19;
        }

        v10 += v17;
        ++v11;
        if (__OFSUB__(v9, v18))
        {
          goto LABEL_14;
        }
      }

      __break(1u);
LABEL_22:
      __break(1u);
LABEL_23:
      __break(1u);
      goto LABEL_24;
    }

LABEL_14:
    __break(1u);
  }

  v7 = 0;
LABEL_16:
  v9 = a4;
LABEL_20:
  *result = a4;
  result[1] = a5;
  result[2] = v9;
  return v7;
}

uint64_t specialized Sequence._copySequenceContents(initializing:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v52 = a3;
  v53 = a1;
  v56 = a2;
  v4 = type metadata accessor for Text.Layout.Run();
  v5 = *(v4 - 8);
  v63 = v4;
  v64 = v5;
  MEMORY[0x1EEE9AC00](v4);
  v62 = &v52 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v61 = &v52 - v8;
  type metadata accessor for RangeSet<Int><>.IndexSequence(0, &lazy cache variable for type metadata for RangeSet<Int><>.IndexSequence, type metadata accessor for RangeSet<>.IndexSequence);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v60 = &v52 - v10;
  type metadata accessor for Range<Int>(0, &lazy cache variable for type metadata for RangeSet<Int>, MEMORY[0x1E69E7BE0]);
  v12 = v11;
  v55 = *(v11 - 8);
  v13 = v55;
  MEMORY[0x1EEE9AC00](v11);
  v65 = &v52 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v59 = &v52 - v16;
  v17 = type metadata accessor for Text.Layout.Line();
  v58 = *(v17 - 8);
  v18 = v58;
  MEMORY[0x1EEE9AC00](v17);
  v20 = &v52 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v57 = type metadata accessor for Text.Effect.RenderSegmentation.StaticRuns.Iterator(0) - 8;
  v21 = MEMORY[0x1EEE9AC00](v57);
  v23 = &v52 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = *(v18 + 16);
  v54 = v3;
  v25 = v17;
  v24(v20, v3, v17, v21);
  v26 = type metadata accessor for Text.Effect.RenderSegmentation.StaticRuns(0);
  v27 = *(v13 + 16);
  v28 = v59;
  v27(v59, v3 + *(v26 + 24), v12);
  (v24)(v23, v20, v17);
  v29 = v65;
  v27(v65, v28, v12);
  v30 = v60;
  v31 = v12;
  v32 = v29;
  RangeSet.ranges.getter();
  outlined destroy of Text.Effect.RenderSegmentation.StaticRuns(v54, type metadata accessor for Text.Effect.RenderSegmentation.StaticRuns);
  v33 = *(v55 + 8);
  v33(v32, v31);
  v33(v28, v31);
  v34 = v56;
  (*(v58 + 8))(v20, v25);
  v35 = *(v57 + 28);
  v65 = v23;
  v36 = &v23[v35];
  type metadata accessor for RangeSet<Int><>.IndexSequence(0, &lazy cache variable for type metadata for RangeSet<Int><>.IndexSequence.Iterator, type metadata accessor for RangeSet<>.IndexSequence.Iterator);
  v38 = *(v37 + 48);
  type metadata accessor for Range<Int>(0, &lazy cache variable for type metadata for RangeSet<Int>.Ranges, MEMORY[0x1E69E7BA8]);
  v40 = v39;
  result = (*(*(v39 - 8) + 32))(&v38[v36], v30, v39);
  *v36 = 0;
  *(v36 + 1) = 0;
  if (!v34)
  {
LABEL_15:
    v42 = 0;
    goto LABEL_17;
  }

  v42 = v52;
  if (!v52)
  {
LABEL_17:
    outlined init with take of Text.Effect.RenderSegmentation.StaticRuns.Iterator(v65, v53, type metadata accessor for Text.Effect.RenderSegmentation.StaticRuns.Iterator);
    return v42;
  }

  if ((v52 & 0x8000000000000000) == 0)
  {
    v43 = 0;
    v44 = 0;
    v59 = v38;
    v60 = (v64 + 32);
    v45 = 1;
    v57 = v36;
    v58 = v40;
    while (1)
    {
      if (v44 >= RangeSet.Ranges.count.getter())
      {
        v42 = v45 - 1;
        goto LABEL_17;
      }

      result = RangeSet.Ranges.subscript.getter();
      if (__OFADD__(v66, v43))
      {
        break;
      }

      v46 = __OFADD__(v43++, 1);
      if (v46)
      {
        goto LABEL_19;
      }

      *(v36 + 1) = v43;
      result = RangeSet.Ranges.subscript.getter();
      if (__OFSUB__(v67, v66))
      {
        goto LABEL_20;
      }

      if (v43 >= v67 - v66)
      {
        v43 = 0;
        *v36 = ++v44;
        *(v36 + 1) = 0;
      }

      v47 = v62;
      Text.Layout.Line.subscript.getter();
      v48 = v61;
      v49 = *v60;
      v50 = v47;
      v51 = v63;
      (*v60)(v61, v50, v63);
      v49(v34, v48, v51);
      if (v42 == v45)
      {
        goto LABEL_17;
      }

      v34 += *(v64 + 72);
      v46 = __OFADD__(v45++, 1);
      v36 = v57;
      if (v46)
      {
        __break(1u);
        goto LABEL_15;
      }
    }

    __break(1u);
LABEL_19:
    __break(1u);
LABEL_20:
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t specialized Sequence._copySequenceContents(initializing:)(uint64_t result, uint64_t a2, uint64_t a3)
{
  v4 = result;
  v5 = v3[1];
  v16[0] = *v3;
  v16[1] = v5;
  v16[2] = v3[2];
  v17 = *(v3 + 6);
  if (!a2)
  {
    v6 = 0;
    goto LABEL_12;
  }

  v6 = a3;
  if (!a3)
  {
LABEL_11:
    v3 = v16;
    goto LABEL_12;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v7 = *v3;
    v8 = *(v7 + 16);
    if (v8)
    {
      v9 = a2;
      v10 = 0;
      v11 = a3 - 1;
      while (v10 < *(v7 + 16))
      {
        v12 = type metadata accessor for Text.Layout.Line();
        v13 = *(v12 - 8);
        v14 = *(v13 + 72);
        result = (*(v13 + 16))(v9, v7 + ((*(v13 + 80) + 32) & ~*(v13 + 80)) + v14 * v10, v12);
        if (v11 == v10)
        {
          goto LABEL_11;
        }

        v9 += v14;
        if (v8 == ++v10)
        {
          goto LABEL_9;
        }
      }

      __break(1u);
      goto LABEL_14;
    }

LABEL_9:
    v3 = v16;
    v6 = v8;
LABEL_12:
    v15 = v3[1];
    *v4 = *v3;
    *(v4 + 16) = v15;
    *(v4 + 32) = v3[2];
    *(v4 + 48) = *(v3 + 6);
    *(v4 + 56) = v6;
    return v6;
  }

LABEL_14:
  __break(1u);
  return result;
}

void *specialized Sequence._copySequenceContents(initializing:)(void *result, unint64_t a2, uint64_t a3, uint64_t a4)
{
  if (!a2)
  {
    a3 = 0;
    goto LABEL_29;
  }

  if (!a3)
  {
LABEL_29:
    *result = a4;
    result[1] = a3;
    return a3;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v4 = *(a4 + 16);
    if (v4)
    {
      v5 = a4 + 32;
      v6 = v4 - 1;
      v7 = a3 - 1;
      if (v4 - 1 >= (a3 - 1))
      {
        v8 = a3 - 1;
      }

      else
      {
        v8 = v4 - 1;
      }

      v9 = v8 + 1;
      if (v9 <= 0x1A)
      {
        goto LABEL_24;
      }

      v10 = v6 >= v7 ? a3 - 1 : v4 - 1;
      v11 = a2 + 16 * v10 >= a2 && a2 + 8 + 16 * v10 >= a2 + 8;
      v12 = v10 >> 60;
      if (!v11 || v12 != 0)
      {
        goto LABEL_24;
      }

      if (v6 >= v7)
      {
        v6 = a3 - 1;
      }

      v14 = 16 * v6;
      if (a4 + v14 + 48 <= a2 || v5 >= a2 + v14 + 16)
      {
        v18 = v9 & 3;
        if ((v9 & 3) == 0)
        {
          v18 = 4;
        }

        v15 = v9 - v18;
        v16 = v15 + 1;
        v17 = (a2 + 16 * v15);
        v19 = (a4 + 64);
        v20 = (a2 + 32);
        v21 = v15;
        do
        {
          v23 = *(v19 - 2);
          v22 = *(v19 - 1);
          v25 = *v19;
          v24 = v19[1];
          v19 += 4;
          *(v20 - 2) = v23;
          *(v20 - 1) = v22;
          *v20 = v25;
          v20[1] = v24;
          v20 += 4;
          v21 -= 4;
        }

        while (v21);
      }

      else
      {
LABEL_24:
        v15 = 0;
        v16 = 1;
        v17 = a2;
      }

      while (1)
      {
        *v17 = *(v5 + 16 * v15);
        if (a3 == v16)
        {
          break;
        }

        v15 = v16;
        ++v17;
        if (v4 + 1 == ++v16)
        {
          goto LABEL_27;
        }
      }
    }

    else
    {
LABEL_27:
      a3 = v4;
    }

    goto LABEL_29;
  }

  __break(1u);
  return result;
}

void *specialized Sequence._copySequenceContents(initializing:)(void *result, void *a2, unint64_t a3, uint64_t a4)
{
  if (!a2)
  {
LABEL_26:
    result[1] = 0;
    result[2] = 0;
    *result = a4;
    return 0;
  }

  if (!a3)
  {
    v6 = 0;
    v5 = 0;
LABEL_28:
    *result = a4;
    result[1] = v5;
    result[2] = v6;
    return a3;
  }

  if ((a3 & 0x8000000000000000) != 0)
  {
    goto LABEL_40;
  }

  v4 = *(a4 + 16);
  if (!v4)
  {
    v6 = 0;
    v5 = 0;
    v7 = 0;
LABEL_30:
    *result = a4;
    result[1] = v5;
    result[2] = v6;
    return v7;
  }

  v5 = 0;
  v6 = 0;
  v7 = 1;
  while (1)
  {
    v8 = a4 + 32 + 24 * v5;
    v9 = *v8;
    v10 = *(v8 + 8);
    v11 = *(v8 + 16);
    if (v11)
    {
      if (v11 != 1)
      {
        ++v5;
        v14 = v9;
        goto LABEL_20;
      }

      v12 = v10 - 1;
      if (__OFSUB__(v10, 1))
      {
        goto LABEL_34;
      }

      v13 = __OFSUB__(v12, v6);
      v14 = v12 - v6;
      if (v13)
      {
        goto LABEL_35;
      }

      v13 = __OFADD__(v6++, 1);
      if (v13)
      {
        goto LABEL_37;
      }

      v13 = __OFSUB__(v10, v9);
      v15 = v10 - v9;
      if (v13)
      {
        goto LABEL_39;
      }
    }

    else
    {
      v14 = v9 + v6;
      if (__OFADD__(v9, v6))
      {
        goto LABEL_33;
      }

      v13 = __OFADD__(v6++, 1);
      if (v13)
      {
        goto LABEL_36;
      }

      v13 = __OFSUB__(v10, v9);
      v15 = v10 - v9;
      if (v13)
      {
        goto LABEL_38;
      }
    }

    if (v6 >= v15)
    {
      v6 = 0;
      ++v5;
    }

LABEL_20:
    *a2 = v14;
    if (a3 == v7)
    {
      goto LABEL_28;
    }

    if (v7 >= a3)
    {
      break;
    }

    if (__OFADD__(v7, 1))
    {
      goto LABEL_32;
    }

    if (v5 >= v4)
    {
      goto LABEL_30;
    }

    ++a2;
    ++v7;
    if (v5 >= *(a4 + 16))
    {
      __break(1u);
      goto LABEL_26;
    }
  }

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
  __break(1u);
LABEL_37:
  __break(1u);
LABEL_38:
  __break(1u);
LABEL_39:
  __break(1u);
LABEL_40:
  __break(1u);
  return result;
}

void *specialized Sequence._copySequenceContents(initializing:)(void *result, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  if (!a2)
  {
LABEL_28:
    a3 = 0;
    result[1] = 0;
    result[2] = 0;
    *result = a4;
LABEL_34:
    result[3] = a6;
    return a3;
  }

  if (!a3)
  {
    v8 = 0;
    v7 = 0;
LABEL_30:
    *result = a4;
    result[1] = v7;
LABEL_33:
    result[2] = v8;
    goto LABEL_34;
  }

  if (a3 < 0)
  {
    goto LABEL_44;
  }

  v6 = *(a4 + 16);
  if (!v6)
  {
    v8 = 0;
    v7 = 0;
    v9 = 0;
LABEL_32:
    *result = a4;
    result[1] = v7;
    a3 = v9;
    goto LABEL_33;
  }

  v7 = 0;
  v8 = 0;
  v9 = 1;
  while (1)
  {
    v10 = a4 + 32 + 24 * v7;
    v11 = *v10;
    v12 = *(v10 + 8);
    v13 = *(v10 + 16);
    if (!v13)
    {
      v16 = v11 + v8;
      if (__OFADD__(v11, v8))
      {
        goto LABEL_38;
      }

      v15 = __OFADD__(v8++, 1);
      if (v15)
      {
        goto LABEL_40;
      }

      v15 = __OFSUB__(v12, v11);
      v17 = v12 - v11;
      if (v15)
      {
        goto LABEL_41;
      }

      goto LABEL_17;
    }

    if (v13 == 1)
    {
      break;
    }

    v18 = 1;
    v15 = __OFADD__(a6, v11);
    v19 = a6 + v11;
    if (v15)
    {
      goto LABEL_35;
    }

LABEL_23:
    v7 += v18;
    *a2 = v19;
    if (a3 == v9)
    {
      goto LABEL_30;
    }

    if (__OFADD__(v9, 1))
    {
      goto LABEL_36;
    }

    if (v7 >= v6)
    {
      goto LABEL_32;
    }

    ++a2;
    ++v9;
    if (v7 >= *(a4 + 16))
    {
      __break(1u);
      goto LABEL_28;
    }
  }

  v14 = v12 - 1;
  if (__OFSUB__(v12, 1))
  {
    goto LABEL_37;
  }

  v15 = __OFSUB__(v14, v8);
  v16 = v14 - v8;
  if (v15)
  {
    goto LABEL_39;
  }

  v15 = __OFADD__(v8++, 1);
  if (v15)
  {
    goto LABEL_42;
  }

  v15 = __OFSUB__(v12, v11);
  v17 = v12 - v11;
  if (v15)
  {
    goto LABEL_43;
  }

LABEL_17:
  v18 = v8 >= v17;
  if (v8 >= v17)
  {
    v8 = 0;
  }

  v19 = a6 + v16;
  if (!__OFADD__(a6, v16))
  {
    goto LABEL_23;
  }

LABEL_35:
  __break(1u);
LABEL_36:
  __break(1u);
LABEL_37:
  __break(1u);
LABEL_38:
  __break(1u);
LABEL_39:
  __break(1u);
LABEL_40:
  __break(1u);
LABEL_41:
  __break(1u);
LABEL_42:
  __break(1u);
LABEL_43:
  __break(1u);
LABEL_44:
  __break(1u);
  return result;
}