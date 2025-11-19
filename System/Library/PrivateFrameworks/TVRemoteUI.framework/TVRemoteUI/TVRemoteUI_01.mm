id FMPFRingView.__deallocating_deinit()
{
  if (one-time initialization token for default != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  __swift_project_value_buffer(v1, static Logger.default);
  v2 = v0;
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v14 = v6;
    *v5 = 136315138;
    v7 = [v2 description];
    v8 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v10 = v9;

    v11 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v8, v10, &v14);

    *(v5 + 4) = v11;
    _os_log_impl(&dword_26CFEB000, v3, v4, "🧭 FMPFRingView%s: deinit", v5, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v6);
    MEMORY[0x26D6B2710](v6, -1, -1);
    MEMORY[0x26D6B2710](v5, -1, -1);
  }

  v12 = type metadata accessor for FMPFRingView();
  v15.receiver = v2;
  v15.super_class = v12;
  return objc_msgSendSuper2(&v15, sel_dealloc);
}

Swift::Void __swiftcall FMPFRingView.updateWithDeltaTime(_:)(Swift::Double a1)
{
  v3 = type metadata accessor for DispatchWorkItemFlags();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20]();
  v6 = &v18 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for DispatchQoS();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20]();
  v10 = &v18 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = swift_allocObject();
  *(v11 + 16) = v1;
  *(v11 + 24) = a1;
  v12 = objc_opt_self();
  v13 = v1;
  if ([v12 isMainThread])
  {
    closure #1 in FMPFRingView.updateWithDeltaTime(_:)(v13, a1);
  }

  else
  {
    type metadata accessor for SKConstraint(0, &lazy cache variable for type metadata for OS_dispatch_queue);
    v14 = static OS_dispatch_queue.main.getter();
    v15 = swift_allocObject();
    *(v15 + 16) = partial apply for closure #1 in FMPFRingView.updateWithDeltaTime(_:);
    *(v15 + 24) = v11;
    aBlock[4] = partial apply for closure #2 in FMPFRingView.updateWithDeltaTime(_:);
    aBlock[5] = v15;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = thunk for @escaping @callee_guaranteed () -> ();
    aBlock[3] = &block_descriptor_44;
    v16 = _Block_copy(aBlock);
    v19 = v7;
    v17 = v16;

    static DispatchQoS.unspecified.getter();
    aBlock[0] = MEMORY[0x277D84F90];
    lazy protocol witness table accessor for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay8Dispatch0A13WorkItemFlagsVGMd);
    lazy protocol witness table accessor for type [DispatchWorkItemFlags] and conformance [A]();
    dispatch thunk of SetAlgebra.init<A>(_:)();
    MEMORY[0x26D6B1500](0, v10, v6, v17);
    _Block_release(v17);

    (*(v4 + 8))(v6, v3);
    (*(v8 + 8))(v10, v19);
  }
}

id closure #1 in FMPFRingView.updateWithDeltaTime(_:)(char *a1, Swift::Double a2)
{
  v4 = OBJC_IVAR____TtC10TVRemoteUI12FMPFRingView_opacitySpring;
  v5 = *&a1[OBJC_IVAR____TtC10TVRemoteUI12FMPFRingView_opacitySpring];
  if (!FMPFFluidSpring.isStable.getter())
  {
    FLSpring.step(_:)(a2);
    *(v5 + OBJC_IVAR____TtC10TVRemoteUI15FMPFFluidSpring_ready) = 1;
    v6 = *&a1[v4];
    v7 = (v6 + OBJC_IVAR____TtC10TVRemoteUI8FLSpring__s);
    swift_beginAccess();
    if (vabdd_f64(v7[35] + *(v6 + OBJC_IVAR____TtC10TVRemoteUI8FLSpring__o + 40), *v7 + *(v6 + OBJC_IVAR____TtC10TVRemoteUI8FLSpring__o)) > *(v6 + OBJC_IVAR____TtC10TVRemoteUI8FLSpring_stableValueThreshold))
    {
      v8 = *v7 + *(v6 + OBJC_IVAR____TtC10TVRemoteUI8FLSpring__o);
    }

    else
    {
      v8 = v7[35] + *(v6 + OBJC_IVAR____TtC10TVRemoteUI8FLSpring__o + 40);
    }

    v9 = objc_opt_self();
    [v9 begin];
    [v9 setDisableActions_];
    [a1 setAlpha_];
    [v9 commit];
  }

  v10 = OBJC_IVAR____TtC10TVRemoteUI12FMPFRingView_startAngleSpring;
  v11 = *&a1[OBJC_IVAR____TtC10TVRemoteUI12FMPFRingView_startAngleSpring];
  if (!FMPFFluidSpring.isStable.getter() || !FMPFFluidSpring.isStable.getter() || !FMPFFluidSpring.isStable.getter())
  {
    FLSpring.step(_:)(a2);
    *(v11 + OBJC_IVAR____TtC10TVRemoteUI15FMPFFluidSpring_ready) = 1;
    v12 = OBJC_IVAR____TtC10TVRemoteUI12FMPFRingView_endAngleSpring;
    v13 = *&a1[OBJC_IVAR____TtC10TVRemoteUI12FMPFRingView_endAngleSpring];
    FLSpring.step(_:)(a2);
    *(v13 + OBJC_IVAR____TtC10TVRemoteUI15FMPFFluidSpring_ready) = 1;
    v14 = OBJC_IVAR____TtC10TVRemoteUI12FMPFRingView_additionalRadiusScaleSpring;
    v15 = *&a1[OBJC_IVAR____TtC10TVRemoteUI12FMPFRingView_additionalRadiusScaleSpring];
    FLSpring.step(_:)(a2);
    *(v15 + OBJC_IVAR____TtC10TVRemoteUI15FMPFFluidSpring_ready) = 1;
    v16 = *&a1[v10];
    v17 = (v16 + OBJC_IVAR____TtC10TVRemoteUI8FLSpring__s);
    swift_beginAccess();
    if (vabdd_f64(v17[35] + *(v16 + OBJC_IVAR____TtC10TVRemoteUI8FLSpring__o + 40), *v17 + *(v16 + OBJC_IVAR____TtC10TVRemoteUI8FLSpring__o)) > *(v16 + OBJC_IVAR____TtC10TVRemoteUI8FLSpring_stableValueThreshold))
    {
      v18 = *v17 + *(v16 + OBJC_IVAR____TtC10TVRemoteUI8FLSpring__o);
    }

    else
    {
      v18 = v17[35] + *(v16 + OBJC_IVAR____TtC10TVRemoteUI8FLSpring__o + 40);
    }

    v19 = *&a1[v12];
    v20 = (v19 + OBJC_IVAR____TtC10TVRemoteUI8FLSpring__s);
    swift_beginAccess();
    if (vabdd_f64(v20[35] + *(v19 + OBJC_IVAR____TtC10TVRemoteUI8FLSpring__o + 40), *v20 + *(v19 + OBJC_IVAR____TtC10TVRemoteUI8FLSpring__o)) > *(v19 + OBJC_IVAR____TtC10TVRemoteUI8FLSpring_stableValueThreshold))
    {
      v21 = *v20 + *(v19 + OBJC_IVAR____TtC10TVRemoteUI8FLSpring__o);
    }

    else
    {
      v21 = v20[35] + *(v19 + OBJC_IVAR____TtC10TVRemoteUI8FLSpring__o + 40);
    }

    v22 = *&a1[v14];
    v23 = (v22 + OBJC_IVAR____TtC10TVRemoteUI8FLSpring__s);
    swift_beginAccess();
    v24 = *v23 + *(v22 + OBJC_IVAR____TtC10TVRemoteUI8FLSpring__o);
    if (vabdd_f64(v23[35] + *(v22 + OBJC_IVAR____TtC10TVRemoteUI8FLSpring__o + 40), v24) <= *(v22 + OBJC_IVAR____TtC10TVRemoteUI8FLSpring_stableValueThreshold))
    {
      v24 = v23[35] + *(v22 + OBJC_IVAR____TtC10TVRemoteUI8FLSpring__o + 40);
    }

    *&a1[OBJC_IVAR____TtC10TVRemoteUI12FMPFRingView_startAngle] = v18;
    *&a1[OBJC_IVAR____TtC10TVRemoteUI12FMPFRingView_endAngle] = v21;
    *&a1[OBJC_IVAR____TtC10TVRemoteUI12FMPFRingView_additionalRadiusScale] = v24;
  }

  return [a1 setNeedsDisplay];
}

void closure #1 in FMPFRingView.drawFromStartAngle(_:to:additionalRadiusScale:sprung:)(uint64_t a1, char a2, char a3, char *a4, Swift::Double a5, Swift::Double a6)
{
  if (a2)
  {
    v8 = 0.0;
  }

  else
  {
    v8 = *&a1;
  }

  v9 = *&a4[OBJC_IVAR____TtC10TVRemoteUI12FMPFRingView_startAngleSpring];
  if (a3)
  {
    v10 = v9 + OBJC_IVAR____TtC10TVRemoteUI15FMPFFluidSpring_ftarget;
    *v10 = a5;
    *(v10 + 8) = 0;
    FMPFFluidSpring.ftarget.didset();
    v11 = *&a4[OBJC_IVAR____TtC10TVRemoteUI12FMPFRingView_endAngleSpring] + OBJC_IVAR____TtC10TVRemoteUI15FMPFFluidSpring_ftarget;
    *v11 = a6;
    *(v11 + 8) = 0;
    FMPFFluidSpring.ftarget.didset();
    v12 = *&a4[OBJC_IVAR____TtC10TVRemoteUI12FMPFRingView_additionalRadiusScaleSpring] + OBJC_IVAR____TtC10TVRemoteUI15FMPFFluidSpring_ftarget;
    *v12 = v8;
    *(v12 + 8) = 0;
    FMPFFluidSpring.ftarget.didset();
  }

  else
  {
    FLSpring.resetImmediately(toValue:)(a5);
    *(v9 + OBJC_IVAR____TtC10TVRemoteUI15FMPFFluidSpring_ready) = 0;
    v14 = *&a4[OBJC_IVAR____TtC10TVRemoteUI12FMPFRingView_endAngleSpring];
    FLSpring.resetImmediately(toValue:)(a6);
    *(v14 + OBJC_IVAR____TtC10TVRemoteUI15FMPFFluidSpring_ready) = 0;
    v15 = *&a4[OBJC_IVAR____TtC10TVRemoteUI12FMPFRingView_additionalRadiusScaleSpring];
    FLSpring.resetImmediately(toValue:)(v8);
    *(v15 + OBJC_IVAR____TtC10TVRemoteUI15FMPFFluidSpring_ready) = 0;
    *&a4[OBJC_IVAR____TtC10TVRemoteUI12FMPFRingView_startAngle] = a5;
    *&a4[OBJC_IVAR____TtC10TVRemoteUI12FMPFRingView_endAngle] = a6;
    *&a4[OBJC_IVAR____TtC10TVRemoteUI12FMPFRingView_additionalRadiusScale] = v8;
    [a4 bounds];

    [a4 drawRect_];
  }
}

uint64_t FMPFRingView.setOpacity(_:sprung:)(uint64_t a1, char a2, char a3)
{
  v7 = type metadata accessor for DispatchWorkItemFlags();
  v22 = *(v7 - 8);
  MEMORY[0x28223BE20]();
  v9 = &v21 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = type metadata accessor for DispatchQoS();
  v10 = *(v21 - 8);
  MEMORY[0x28223BE20]();
  v12 = &v21 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = swift_allocObject();
  *(v13 + 16) = a1;
  v14 = a2 & 1;
  *(v13 + 24) = v14;
  *(v13 + 25) = a3;
  *(v13 + 32) = v3;
  v15 = objc_opt_self();
  v16 = v3;
  if ([v15 isMainThread])
  {
    closure #1 in FMPFRingView.setOpacity(_:sprung:)(a1, v14, a3 & 1, v16);
  }

  else
  {
    type metadata accessor for SKConstraint(0, &lazy cache variable for type metadata for OS_dispatch_queue);
    v18 = static OS_dispatch_queue.main.getter();
    v19 = swift_allocObject();
    *(v19 + 16) = partial apply for closure #1 in FMPFRingView.setOpacity(_:sprung:);
    *(v19 + 24) = v13;
    aBlock[4] = partial apply for closure #2 in FMPFRingView.setOpacity(_:sprung:);
    aBlock[5] = v19;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = thunk for @escaping @callee_guaranteed () -> ();
    aBlock[3] = &block_descriptor_1;
    v20 = _Block_copy(aBlock);

    static DispatchQoS.unspecified.getter();
    aBlock[0] = MEMORY[0x277D84F90];
    lazy protocol witness table accessor for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay8Dispatch0A13WorkItemFlagsVGMd);
    lazy protocol witness table accessor for type [DispatchWorkItemFlags] and conformance [A]();
    dispatch thunk of SetAlgebra.init<A>(_:)();
    MEMORY[0x26D6B1500](0, v12, v9, v20);
    _Block_release(v20);

    (*(v22 + 8))(v9, v7);
    return (*(v10 + 8))(v12, v21);
  }
}

void closure #1 in FMPFRingView.setOpacity(_:sprung:)(uint64_t a1, char a2, char a3, char *a4)
{
  if (a2)
  {
    v4 = 0.0;
  }

  else
  {
    v4 = *&a1;
  }

  v5 = *&a4[OBJC_IVAR____TtC10TVRemoteUI12FMPFRingView_opacitySpring];
  if (a3)
  {
    v6 = v5 + OBJC_IVAR____TtC10TVRemoteUI15FMPFFluidSpring_ftarget;
    *v6 = v4;
    *(v6 + 8) = 0;
    FMPFFluidSpring.ftarget.didset();
  }

  else
  {
    FLSpring.resetImmediately(toValue:)(v4);
    *(v5 + OBJC_IVAR____TtC10TVRemoteUI15FMPFFluidSpring_ready) = 0;
    v8 = objc_opt_self();
    [v8 begin];
    [v8 setDisableActions_];
    [a4 setAlpha_];

    [v8 commit];
  }
}

uint64_t getEnumTagSinglePayload for FMPFRingViewStyle(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 32))
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

uint64_t storeEnumTagSinglePayload for FMPFRingViewStyle(uint64_t result, int a2, int a3)
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
      *(result + 24) = (a2 - 1);
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

uint64_t block_copy_helper_1(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

unint64_t lazy protocol witness table accessor for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags()
{
  result = lazy protocol witness table cache variable for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags;
  if (!lazy protocol witness table cache variable for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags)
  {
    type metadata accessor for DispatchWorkItemFlags();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags);
  }

  return result;
}

void specialized FMPFRingView.draw(_:)()
{
  [v0 bounds];
  Width = CGRectGetWidth(v16);
  v2 = *&v0[OBJC_IVAR____TtC10TVRemoteUI12FMPFRingView_verticalOffset];
  [v0 bounds];
  Height = CGRectGetHeight(v17);
  v4 = *&v0[OBJC_IVAR____TtC10TVRemoteUI12FMPFRingView_startAngle];
  v5 = *&v0[OBJC_IVAR____TtC10TVRemoteUI12FMPFRingView_endAngle];
  v6 = &v0[OBJC_IVAR____TtC10TVRemoteUI12FMPFRingView_style];
  v7 = *&v0[OBJC_IVAR____TtC10TVRemoteUI12FMPFRingView_style + 16];
  if (v7 + v7 < vabdd_f64(v4, v5))
  {
    v8 = Height * 0.5;
    v9 = Width * 0.5 - v2;
    v10 = -v7;
    if (v4 <= v5)
    {
      v11 = *&v0[OBJC_IVAR____TtC10TVRemoteUI12FMPFRingView_style + 16];
    }

    else
    {
      v11 = -v7;
    }

    if (v4 > v5)
    {
      v10 = *&v0[OBJC_IVAR____TtC10TVRemoteUI12FMPFRingView_style + 16];
    }

    v12 = [objc_opt_self() bezierPathWithArcCenter:v4 > v5 radius:v9 startAngle:v8 endAngle:*&v0[OBJC_IVAR____TtC10TVRemoteUI12FMPFRingView_diskRadius] * (*&v0[OBJC_IVAR____TtC10TVRemoteUI12FMPFRingView_additionalRadiusScale] + 1.0) clockwise:{v10 - v4, v11 - v5}];
    if (v12)
    {
      v14 = v12;
      [v12 setLineWidth_];
      [v14 setLineCapStyle_];
      [*(v6 + 3) setStroke];
      v13 = [objc_opt_self() clearColor];
      [v13 setFill];

      [v14 stroke];
    }
  }
}

uint64_t FMFindingMeasurement.description.getter()
{
  v1 = *(v0 + 16);
  if (v1 > 2)
  {
    switch(v1)
    {
      case 5:
        v2 = 0xE500000000000000;
        v3 = 0x646E756F66;
        goto LABEL_14;
      case 4:
        v2 = 0xE400000000000000;
        v3 = 1701995880;
        goto LABEL_14;
      case 3:
        v2 = 0xE400000000000000;
        v3 = 1918985582;
        goto LABEL_14;
    }

    goto LABEL_12;
  }

  v2 = 0xE300000000000000;
  if (v1 != 1)
  {
    if (v1 == 2)
    {
      v3 = 7496038;
      goto LABEL_14;
    }

LABEL_12:
    v4 = FMFindingDistance.description.getter();
    v2 = v5;
    goto LABEL_13;
  }

  v4 = 7104878;
LABEL_13:
  MEMORY[0x26D6B12B0](v4, v2);

  v3 = 0x3A65736963657270;
  v2 = 0xE900000000000020;
LABEL_14:
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys7CVarArg_pGMd);
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_26D0D2E90;
  *(v6 + 56) = MEMORY[0x277D837D0];
  *(v6 + 64) = lazy protocol witness table accessor for type String and conformance String();
  *(v6 + 32) = v3;
  *(v6 + 40) = v2;

  return String.init(format:_:)();
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance FMFindingTrend()
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t protocol witness for Hashable.hash(into:) in conformance FMFindingTrend()
{
  String.hash(into:)();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance FMFindingTrend()
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

unint64_t protocol witness for RawRepresentable.init(rawValue:) in conformance FMFindingTrend@<X0>(Swift::String *a1@<X0>, _BYTE *a2@<X8>)
{
  result = specialized FMFindingTrend.init(rawValue:)(*a1);
  *a2 = result;
  return result;
}

void protocol witness for RawRepresentable.rawValue.getter in conformance FMFindingTrend(uint64_t *a1@<X8>)
{
  v2 = 0xE700000000000000;
  v3 = 0x6E776F6E6B6E75;
  v4 = 0xEA0000000000676ELL;
  v5 = 0x656C62617473;
  if (*v1 == 2)
  {
    v5 = 0x6973616572636564;
  }

  else
  {
    v4 = 0xE600000000000000;
  }

  if (*v1)
  {
    v3 = 0x6973616572636E69;
    v2 = 0xEA0000000000676ELL;
  }

  if (*v1 <= 1u)
  {
    v6 = v3;
  }

  else
  {
    v6 = v5;
  }

  if (*v1 > 1u)
  {
    v2 = v4;
  }

  *a1 = v6;
  a1[1] = v2;
}

uint64_t protocol witness for static Equatable.== infix(_:_:) in conformance FMFindingMeasurement.CodingKeys(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1 == 0;
  if (*a1)
  {
    v3 = 0x65636E6174736964;
  }

  else
  {
    v3 = 1701869940;
  }

  if (v2)
  {
    v4 = 0xE400000000000000;
  }

  else
  {
    v4 = 0xE800000000000000;
  }

  if (*a2)
  {
    v5 = 0x65636E6174736964;
  }

  else
  {
    v5 = 1701869940;
  }

  if (*a2)
  {
    v6 = 0xE800000000000000;
  }

  else
  {
    v6 = 0xE400000000000000;
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

Swift::Int protocol witness for Hashable.hashValue.getter in conformance FMFindingMeasurement.CodingKeys()
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t protocol witness for Hashable.hash(into:) in conformance FMFindingMeasurement.CodingKeys()
{
  String.hash(into:)();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance FMFindingMeasurement.CodingKeys()
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t protocol witness for RawRepresentable.init(rawValue:) in conformance FMFindingMeasurement.CodingKeys@<X0>(Swift::String *a1@<X0>, char *a2@<X8>)
{
  v3 = _findStringSwitchCase(cases:string:)(&outlined read-only object #0 of FMFindingMeasurement.CodingKeys.init(rawValue:), *a1);

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

void protocol witness for RawRepresentable.rawValue.getter in conformance FMFindingMeasurement.CodingKeys(uint64_t *a1@<X8>)
{
  v2 = 1701869940;
  if (*v1)
  {
    v2 = 0x65636E6174736964;
  }

  v3 = 0xE400000000000000;
  if (*v1)
  {
    v3 = 0xE800000000000000;
  }

  *a1 = v2;
  a1[1] = v3;
}

uint64_t protocol witness for CodingKey.stringValue.getter in conformance FMFindingMeasurement.CodingKeys()
{
  if (*v0)
  {
    return 0x65636E6174736964;
  }

  else
  {
    return 1701869940;
  }
}

uint64_t protocol witness for CodingKey.init(stringValue:) in conformance FMFindingMeasurement.CodingKeys@<X0>(Swift::String string@<0:X0, 8:X1>, char *a2@<X8>)
{
  object = string._object;
  v3._countAndFlagsBits = string._countAndFlagsBits;
  v3._object = object;
  v5 = _findStringSwitchCase(cases:string:)(&outlined read-only object #0 of FMFindingMeasurement.CodingKeys.init(rawValue:), v3);

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

  *a2 = v7;
  return result;
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance FMFindingMeasurement.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type FMFindingMeasurement.CodingKeys and conformance FMFindingMeasurement.CodingKeys();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance FMFindingMeasurement.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type FMFindingMeasurement.CodingKeys and conformance FMFindingMeasurement.CodingKeys();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t FMFindingMeasurement.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy10TVRemoteUI20FMFindingMeasurementO10CodingKeys33_D103FFDFE5EFB859C200F2C74AFC4691LLOGMd);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20]();
  v8 = &v11[-v7];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type FMFindingMeasurement.CodingKeys and conformance FMFindingMeasurement.CodingKeys();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v9 = *(v3 + 2);
  if (v9 > 3)
  {
    if (v9 == 4)
    {
      LOBYTE(v12) = 0;
      goto LABEL_12;
    }

    if (v9 == 5)
    {
      LOBYTE(v12) = 0;
      goto LABEL_12;
    }
  }

  else
  {
    if (v9 == 2)
    {
      LOBYTE(v12) = 0;
      goto LABEL_12;
    }

    if (v9 == 3)
    {
      LOBYTE(v12) = 0;
LABEL_12:
      KeyedEncodingContainer.encode(_:forKey:)();
      return (*(v6 + 8))(v8, v5);
    }
  }

  LOBYTE(v12) = 0;
  KeyedEncodingContainer.encode(_:forKey:)();
  if (!v2)
  {
    v12 = *v3;
    v13 = v9;
    v15 = *(v3 + 40);
    v16 = *(v3 + 56);
    v17[0] = *(v3 + 72);
    *(v17 + 9) = *(v3 + 81);
    v14 = *(v3 + 24);
    v11[15] = 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s10TVRemoteUI17FMFindingDistanceVSgMd);
    lazy protocol witness table accessor for type FMFindingDistance? and conformance <A> A?();
    KeyedEncodingContainer.encode<A>(_:forKey:)();
  }

  return (*(v6 + 8))(v8, v5);
}

uint64_t FMFindingMeasurement.calculateTrend(from:)(uint64_t a1)
{
  result = 0;
  v4 = *(v1 + 16);
  if (v4 > 3)
  {
    if (v4 == 4)
    {
      v12 = *(a1 + 16);
      v6 = v12 >= 7;
      v8 = 8 * v12;
      v10 = 0x20301010000;
    }

    else
    {
      if (v4 != 5)
      {
        return result;
      }

      v9 = *(a1 + 16);
      v6 = v9 >= 7;
      v8 = 8 * v9;
      v10 = 0x30101010000;
    }
  }

  else
  {
    if (v4 != 2)
    {
      if (v4 != 3)
      {
        return result;
      }

      v5 = *(a1 + 16);
      v6 = v5 >= 7;
      v7 = 0x1020203010000;
      v8 = 8 * v5;
      goto LABEL_11;
    }

    v11 = *(a1 + 16);
    v6 = v11 >= 7;
    v8 = 8 * v11;
    v10 = 0x20202030000;
  }

  v7 = v10 & 0xFFFFFFFFFFFFLL | 0x1000000000000;
LABEL_11:
  v13 = v7 >> v8;
  if (v6)
  {
    return 0;
  }

  else
  {
    return v13;
  }
}

Swift::Int FMFindingMeasurement.hashValue.getter()
{
  Hasher.init(_seed:)();
  v1 = *(v0 + 16);
  if (v1 > 3)
  {
    if (v1 == 4)
    {
      v2 = 3;
      goto LABEL_12;
    }

    if (v1 == 5)
    {
      v2 = 4;
      goto LABEL_12;
    }
  }

  else
  {
    if (v1 == 2)
    {
      v2 = 1;
      goto LABEL_12;
    }

    if (v1 == 3)
    {
      v2 = 2;
LABEL_12:
      MEMORY[0x26D6B18C0](v2);
      return Hasher._finalize()();
    }
  }

  MEMORY[0x26D6B18C0](5);
  if (v1 == 1)
  {
    Hasher._combine(_:)(0);
  }

  else
  {
    Hasher._combine(_:)(1u);
    FMFindingDistance.hash(into:)();
  }

  return Hasher._finalize()();
}

BOOL protocol witness for static Equatable.== infix(_:_:) in conformance FMFindingMeasurement(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 80);
  v11[4] = *(a1 + 64);
  v11[5] = v2;
  v12 = *(a1 + 96);
  v3 = *(a1 + 16);
  v11[0] = *a1;
  v11[1] = v3;
  v4 = *(a1 + 48);
  v11[2] = *(a1 + 32);
  v11[3] = v4;
  v5 = *(a2 + 16);
  v13[0] = *a2;
  v13[1] = v5;
  v6 = *(a2 + 32);
  v7 = *(a2 + 48);
  v8 = *(a2 + 64);
  v9 = *(a2 + 80);
  v14 = *(a2 + 96);
  v13[4] = v8;
  v13[5] = v9;
  v13[2] = v6;
  v13[3] = v7;
  return specialized static FMFindingMeasurement.== infix(_:_:)(v11, v13);
}

void protocol witness for Hashable.hash(into:) in conformance FMFindingMeasurement()
{
  v1 = *(v0 + 16);
  if (v1 > 3)
  {
    if (v1 == 4)
    {
      v2 = 3;
      goto LABEL_12;
    }

    if (v1 == 5)
    {
      v2 = 4;
      goto LABEL_12;
    }
  }

  else
  {
    if (v1 == 2)
    {
      v2 = 1;
      goto LABEL_12;
    }

    if (v1 == 3)
    {
      v2 = 2;
LABEL_12:
      MEMORY[0x26D6B18C0](v2);
      return;
    }
  }

  MEMORY[0x26D6B18C0](5);
  if (v1 == 1)
  {
    Hasher._combine(_:)(0);
  }

  else
  {
    Hasher._combine(_:)(1u);
    FMFindingDistance.hash(into:)();
  }
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance FMFindingMeasurement()
{
  v1 = *(v0 + 16);
  Hasher.init(_seed:)();
  if (v1 > 3)
  {
    if (v1 == 4)
    {
      v2 = 3;
      goto LABEL_12;
    }

    if (v1 == 5)
    {
      v2 = 4;
      goto LABEL_12;
    }
  }

  else
  {
    if (v1 == 2)
    {
      v2 = 1;
      goto LABEL_12;
    }

    if (v1 == 3)
    {
      v2 = 2;
LABEL_12:
      MEMORY[0x26D6B18C0](v2);
      return Hasher._finalize()();
    }
  }

  MEMORY[0x26D6B18C0](5);
  if (v1 == 1)
  {
    Hasher._combine(_:)(0);
  }

  else
  {
    Hasher._combine(_:)(1u);
    FMFindingDistance.hash(into:)();
  }

  return Hasher._finalize()();
}

__n128 protocol witness for Decodable.init(from:) in conformance FMFindingMeasurement@<Q0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  specialized FMFindingMeasurement.init(from:)(a1, v7);
  if (!v2)
  {
    v5 = v7[5];
    *(a2 + 64) = v7[4];
    *(a2 + 80) = v5;
    *(a2 + 96) = v8;
    v6 = v7[1];
    *a2 = v7[0];
    *(a2 + 16) = v6;
    result = v7[3];
    *(a2 + 32) = v7[2];
    *(a2 + 48) = result;
  }

  return result;
}

BOOL specialized static FMFindingMeasurement.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  v3 = *(a2 + 16);
  if (v2 > 3)
  {
    if (v2 == 4)
    {
      if (v3 != 4)
      {
        return 0;
      }
    }

    else
    {
      if (v2 != 5)
      {
        goto LABEL_10;
      }

      if (v3 != 5)
      {
        return 0;
      }
    }

    return 1;
  }

  if (v2 == 2)
  {
    return v3 == 2;
  }

  if (v2 == 3)
  {
    return v3 == 3;
  }

LABEL_10:
  if ((v3 - 2) < 4)
  {
    return 0;
  }

  v38 = *a1;
  v4 = *(a1 + 40);
  v5 = *(a1 + 72);
  v36 = *(a1 + 56);
  v37[0] = v5;
  *(v37 + 9) = *(a1 + 81);
  v34 = *(a1 + 24);
  v35 = v4;
  *&v33[7] = *a2;
  if (v2 != 1)
  {
    if (v3 != 1)
    {
      v17 = *a2;
      *v18 = v3;
      *&v18[8] = *(a2 + 24);
      *&v18[24] = *(a2 + 40);
      *&v18[65] = *(a2 + 81);
      *&v18[56] = *(a2 + 72);
      *&v18[40] = *(a2 + 56);
      v25 = v17;
      *v26 = *v18;
      v26[80] = v18[80];
      *&v26[48] = *&v18[48];
      *&v26[64] = *&v18[64];
      *&v26[16] = *&v18[16];
      *&v26[32] = *&v18[32];
      v39 = *a1;
      v41 = *(a1 + 24);
      v13 = *(a1 + 40);
      v14 = *(a1 + 56);
      v15 = *(a1 + 72);
      *(v44 + 9) = *(a1 + 81);
      v44[0] = v15;
      v43 = v14;
      v42 = v13;
      v40 = v2;
      outlined init with copy of FMFindingMeasurement(a1, &v19);
      outlined init with copy of FMFindingMeasurement(a2, &v19);
      v6 = specialized static FMFindingDistance.== infix(_:_:)(&v39, &v25);
      outlined destroy of (FMFindingDistance?, FMFindingDistance?)(&v17, &_s10TVRemoteUI17FMFindingDistanceVSgMd);
      v19 = v38;
      v20 = v2;
      v22 = v35;
      v23 = v36;
      v24[0] = v37[0];
      *(v24 + 9) = *(v37 + 9);
      v21 = v34;
      outlined destroy of (FMFindingDistance?, FMFindingDistance?)(&v19, &_s10TVRemoteUI17FMFindingDistanceVSgMd);
      return v6;
    }

    goto LABEL_19;
  }

  if (v3 != 1)
  {
LABEL_19:
    v25 = *a1;
    *&v26[24] = *(a1 + 40);
    *&v26[40] = *(a1 + 56);
    *&v26[56] = *(a1 + 72);
    *&v26[65] = *(a1 + 81);
    *&v26[8] = *(a1 + 24);
    *v27 = *v33;
    *v26 = v2;
    *&v27[15] = *&v33[15];
    v28 = v3;
    v8 = *(a2 + 24);
    *&v32[9] = *(a2 + 81);
    v9 = *(a2 + 72);
    v31 = *(a2 + 56);
    *v32 = v9;
    v10 = *(a2 + 40);
    v29 = v8;
    v30 = v10;
    outlined init with copy of FMFindingMeasurement(a1, &v39);
    outlined init with copy of FMFindingMeasurement(a2, &v39);
    outlined destroy of (FMFindingDistance?, FMFindingDistance?)(&v25, &_s10TVRemoteUI17FMFindingDistanceVSg_ADtMd);
    return 0;
  }

  v25 = *a1;
  v6 = 1;
  *v26 = 1;
  *&v26[24] = *(a1 + 40);
  *&v26[40] = *(a1 + 56);
  *&v26[56] = *(a1 + 72);
  *&v26[65] = *(a1 + 81);
  *&v26[8] = *(a1 + 24);
  outlined init with copy of FMFindingMeasurement(a1, &v39);
  outlined init with copy of FMFindingMeasurement(a2, &v39);
  outlined destroy of (FMFindingDistance?, FMFindingDistance?)(&v25, &_s10TVRemoteUI17FMFindingDistanceVSgMd);
  return v6;
}

uint64_t getEnumTagSinglePayload for FMFindingMeasurement(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 > 0x7FFFFFF9 && *(a1 + 97))
  {
    return (*a1 + 2147483642);
  }

  v3 = *(a1 + 16);
  if (v3 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 - 1;
  v5 = v4 <= 0;
  if (v4 < 0)
  {
    v4 = -1;
  }

  if (v5)
  {
    v4 = 0;
  }

  if (v4 >= 5)
  {
    return (v4 - 4);
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for FMFindingMeasurement(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 >= 0x7FFFFFFA)
  {
    *(result + 96) = 0;
    *(result + 64) = 0u;
    *(result + 80) = 0u;
    *(result + 32) = 0u;
    *(result + 48) = 0u;
    *result = 0u;
    *(result + 16) = 0u;
    *result = a2 - 2147483642;
    if (a3 >= 0x7FFFFFFA)
    {
      *(result + 97) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFA)
    {
      *(result + 97) = 0;
    }

    if (a2)
    {
      *(result + 16) = a2 + 5;
    }
  }

  return result;
}

double destructiveInjectEnumTag for FMFindingMeasurement(uint64_t a1, unsigned int a2)
{
  if (a2 > 0x7FFFFFFD)
  {
    *(a1 + 88) = 0;
    result = 0.0;
    *(a1 + 72) = 0u;
    *(a1 + 56) = 0u;
    *(a1 + 40) = 0u;
    *(a1 + 24) = 0u;
    *(a1 + 8) = 0u;
    *(a1 + 96) = 0;
    *a1 = a2 - 2147483646;
  }

  else if (a2)
  {
    *(a1 + 16) = a2 + 1;
  }

  return result;
}

unint64_t specialized FMFindingTrend.init(rawValue:)(Swift::String string)
{
  object = string._object;
  v2._countAndFlagsBits = string._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&outlined read-only object #0 of FMFindingTrend.init(rawValue:), v2);

  if (v3 >= 4)
  {
    return 4;
  }

  else
  {
    return v3;
  }
}

uint64_t specialized FMFindingMeasurement.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy10TVRemoteUI20FMFindingMeasurementO10CodingKeys33_D103FFDFE5EFB859C200F2C74AFC4691LLOGMd);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20]();
  v8 = &v16 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type FMFindingMeasurement.CodingKeys and conformance FMFindingMeasurement.CodingKeys();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v30 = 0;
  v9 = KeyedDecodingContainer.decode(_:forKey:)();
  if (v9 <= 2)
  {
    if (v9 == 1)
    {
      (*(v6 + 8))(v8, v5);
      v11 = 0;
      v12 = xmmword_26D0D38E0;
      goto LABEL_15;
    }

    if (v9 == 2)
    {
      (*(v6 + 8))(v8, v5);
      v11 = 0;
      v12 = xmmword_26D0D38D0;
      goto LABEL_15;
    }
  }

  else
  {
    switch(v9)
    {
      case 3:
        (*(v6 + 8))(v8, v5);
        v11 = 0;
        v12 = xmmword_26D0D38C0;
        goto LABEL_15;
      case 4:
        (*(v6 + 8))(v8, v5);
        v11 = 0;
        v12 = xmmword_26D0D38B0;
LABEL_15:
        v21 = v12;
        v19 = 0u;
        v20 = 0u;
        v18 = 0u;
        v17 = 0u;
        v16 = 0u;
        goto LABEL_16;
      case 5:
        v29 = 1;
        lazy protocol witness table accessor for type FMFindingDistance and conformance FMFindingDistance();
        KeyedDecodingContainer.decode<A>(_:forKey:)();
        v20 = v22;
        v21 = v23;
        v18 = v25;
        v19 = v24;
        v16 = v27;
        v17 = v26;
        v11 = v28;
        (*(v6 + 8))(v8, v5);
LABEL_16:
        result = __swift_destroy_boxed_opaque_existential_1(a1);
        v13 = v21;
        *a2 = v20;
        *(a2 + 16) = v13;
        v14 = v18;
        *(a2 + 32) = v19;
        *(a2 + 48) = v14;
        v15 = v16;
        *(a2 + 64) = v17;
        *(a2 + 80) = v15;
        *(a2 + 96) = v11;
        return result;
    }
  }

  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

unint64_t lazy protocol witness table accessor for type FMFindingMeasurement.CodingKeys and conformance FMFindingMeasurement.CodingKeys()
{
  result = lazy protocol witness table cache variable for type FMFindingMeasurement.CodingKeys and conformance FMFindingMeasurement.CodingKeys;
  if (!lazy protocol witness table cache variable for type FMFindingMeasurement.CodingKeys and conformance FMFindingMeasurement.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type FMFindingMeasurement.CodingKeys and conformance FMFindingMeasurement.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type FMFindingMeasurement.CodingKeys and conformance FMFindingMeasurement.CodingKeys;
  if (!lazy protocol witness table cache variable for type FMFindingMeasurement.CodingKeys and conformance FMFindingMeasurement.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type FMFindingMeasurement.CodingKeys and conformance FMFindingMeasurement.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type FMFindingMeasurement.CodingKeys and conformance FMFindingMeasurement.CodingKeys;
  if (!lazy protocol witness table cache variable for type FMFindingMeasurement.CodingKeys and conformance FMFindingMeasurement.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type FMFindingMeasurement.CodingKeys and conformance FMFindingMeasurement.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type FMFindingMeasurement.CodingKeys and conformance FMFindingMeasurement.CodingKeys;
  if (!lazy protocol witness table cache variable for type FMFindingMeasurement.CodingKeys and conformance FMFindingMeasurement.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type FMFindingMeasurement.CodingKeys and conformance FMFindingMeasurement.CodingKeys);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type FMFindingDistance? and conformance <A> A?()
{
  result = lazy protocol witness table cache variable for type FMFindingDistance? and conformance <A> A?;
  if (!lazy protocol witness table cache variable for type FMFindingDistance? and conformance <A> A?)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s10TVRemoteUI17FMFindingDistanceVSgMd);
    lazy protocol witness table accessor for type FMFindingDistance and conformance FMFindingDistance();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type FMFindingDistance? and conformance <A> A?);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for FMFindingMeasurement.CodingKeys(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for FMFindingMeasurement.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
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

uint64_t getEnumTagSinglePayload for FMFindingViewStyle(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 152))
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

uint64_t storeEnumTagSinglePayload for FMFindingViewStyle(uint64_t result, int a2, int a3)
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
      *result = (a2 - 1);
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

void FMPFSKBTRangeDiskNode.setup()()
{
  v11.origin.x = -320.0;
  v11.size.width = 640.0;
  v11.origin.y = -320.0;
  v11.size.height = 640.0;
  v1 = CGPathCreateWithEllipseInRect(v11, 0);
  [v0 setPath_];

  [v0 setLineWidth_];
  v2 = objc_opt_self();
  v3 = [v2 systemBlueColor];
  v4 = objc_opt_self();
  v5 = [v4 traitCollectionWithUserInterfaceStyle_];
  v6 = [v3 resolvedColorWithTraitCollection_];

  [v0 setFillColor_];
  v7 = [v2 systemBlueColor];
  v8 = [v4 traitCollectionWithUserInterfaceStyle_];
  v9 = [v7 resolvedColorWithTraitCollection_];

  [v0 setStrokeColor_];
}

Swift::Void __swiftcall FMPFSKBTRangeDiskNode.render()()
{
  v1 = *&v0[OBJC_IVAR____TtC10TVRemoteUI21FMPFSKBTRangeDiskNode_opacitySpring];
  v2 = (v1 + OBJC_IVAR____TtC10TVRemoteUI8FLSpring__s);
  swift_beginAccess();
  v3 = *v2 + *(v1 + OBJC_IVAR____TtC10TVRemoteUI8FLSpring__o);
  if (vabdd_f64(v2[35] + *(v1 + OBJC_IVAR____TtC10TVRemoteUI8FLSpring__o + 40), v3) <= *(v1 + OBJC_IVAR____TtC10TVRemoteUI8FLSpring_stableValueThreshold))
  {
    v3 = v2[35] + *(v1 + OBJC_IVAR____TtC10TVRemoteUI8FLSpring__o + 40);
  }

  [v0 setAlpha_];
  v4 = *&v0[OBJC_IVAR____TtC10TVRemoteUI21FMPFSKBTRangeDiskNode_sizeSpring];
  v5 = (v4 + OBJC_IVAR____TtC10TVRemoteUI8FLSpring__s);
  swift_beginAccess();
  v6 = *v5;
  v7 = *(v4 + OBJC_IVAR____TtC10TVRemoteUI8FLSpring__o);
  v8 = v5[35];
  v9 = *(v4 + OBJC_IVAR____TtC10TVRemoteUI8FLSpring__o + 40);
  v10 = *(v4 + OBJC_IVAR____TtC10TVRemoteUI8FLSpring_stableValueThreshold);
  v11 = [v0 scene];
  if (v11)
  {
    if (vabdd_f64(v8 + v9, v6 + v7) > v10)
    {
      v12 = v6 + v7;
    }

    else
    {
      v12 = v8 + v9;
    }

    v13 = v11;
    [v11 size];
    v15 = v14;

    v16 = round(v12 * v15) / 640.0;
  }

  else
  {
    v16 = 1.0;
  }

  [v0 setScale_];
}

void FMPFSKBTRangeDiskNode.__ivar_destroyer()
{
  v1 = *(v0 + OBJC_IVAR____TtC10TVRemoteUI21FMPFSKBTRangeDiskNode_opacitySpring);
}

id FMPFSKBTRangeDiskNode.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for FMPFSKBTRangeDiskNode();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

void FMPFSKSpriteNode.setBrightness(_:with:)(void *a1, double a2)
{
  v10[1] = *MEMORY[0x277D85DE8];
  v4 = &v2[OBJC_IVAR____TtC10TVRemoteUI16FMPFSKSpriteNode_brightness];
  *v4 = a2;
  *(v4 + 8) = 0;
  v5 = &v2[OBJC_IVAR____TtC10TVRemoteUI16FMPFSKSpriteNode_previousBrightness];
  if ((v2[OBJC_IVAR____TtC10TVRemoteUI16FMPFSKSpriteNode_previousBrightness + 8] & 1) != 0 || vabdd_f64(*v5, a2) >= 2.22044605e-16)
  {
    *v5 = a2;
    *(v5 + 8) = 0;
    v9 = 1.0;
    v10[0] = 1.0;
    v7 = 1.0;
    v8 = 1.0;
    [a1 getRed:v10 green:&v9 blue:&v8 alpha:&v7];
    v9 = v9 * a2;
    v10[0] = v10[0] * a2;
    v8 = v8 * a2;
    v6 = [objc_allocWithZone(MEMORY[0x277D75348]) initWithRed:v10[0] green:v9 blue:v8 alpha:v7];
    [v2 setColor_];
  }
}

id FMPFSKNode.__deallocating_deinit(uint64_t (*a1)(void))
{
  v3.receiver = v1;
  v3.super_class = a1();
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

id FMPFSKBTRangeDotNode.init()()
{
  v1 = OBJC_IVAR____TtC10TVRemoteUI20FMPFSKBTRangeDotNode_sizeSpring;
  *&v0[v1] = specialized static FMPFFluidSpring.lazySpringWith(initialValue:stableValueThreshold:)(0, 0, 0x3F50624DD2F1A9FCLL, 0);
  v2._object = 0x800000026D0DAEB0;
  v2._countAndFlagsBits = 0xD000000000000016;
  isa = FMPFTexture(name:)(v2).super.isa;
  v4 = [objc_opt_self() whiteColor];
  [(objc_class *)isa size];
  v6 = v5;
  v8 = v7;
  v11.receiver = v0;
  v11.super_class = type metadata accessor for FMPFSKBTRangeDotNode();
  v9 = objc_msgSendSuper2(&v11, sel_initWithTexture_color_size_, isa, v4, v6, v8);

  return v9;
}

Swift::Void __swiftcall FMPFSKBTRangeDotNode.update(delta:)(Swift::Double delta)
{
  v2 = v1;
  v3 = *&v1[OBJC_IVAR____TtC10TVRemoteUI20FMPFSKBTRangeDotNode_sizeSpring];
  FLSpring.step(_:)(delta);
  *(v3 + OBJC_IVAR____TtC10TVRemoteUI15FMPFFluidSpring_ready) = 1;
  v4 = (v3 + OBJC_IVAR____TtC10TVRemoteUI8FLSpring__s);
  swift_beginAccess();
  if (vabdd_f64(v4[35] + *(v3 + OBJC_IVAR____TtC10TVRemoteUI8FLSpring__o + 40), *v4 + *(v3 + OBJC_IVAR____TtC10TVRemoteUI8FLSpring__o)) > *(v3 + OBJC_IVAR____TtC10TVRemoteUI8FLSpring_stableValueThreshold))
  {
    v5 = *v4 + *(v3 + OBJC_IVAR____TtC10TVRemoteUI8FLSpring__o);
  }

  else
  {
    v5 = v4[35] + *(v3 + OBJC_IVAR____TtC10TVRemoteUI8FLSpring__o + 40);
  }

  v6 = [v2 scene];
  v7 = 1.0;
  if (v6)
  {
    v8 = v6;
    [v6 size];
    v10 = v9;

    v11 = [v2 texture];
    if (v11)
    {
      v12 = v11;
      [v11 size];
      v14 = v13;

      v7 = round(v5 * v10) / v14;
    }
  }

  [v2 setScale_];
}

void FMPFSKBTRangeDotNode.setDotNodeSizeFactor(_:sprung:)(char a1, Swift::Double a2)
{
  v3 = v2;
  v4 = *&v2[OBJC_IVAR____TtC10TVRemoteUI20FMPFSKBTRangeDotNode_sizeSpring];
  if (a1)
  {
    v5 = v4 + OBJC_IVAR____TtC10TVRemoteUI15FMPFFluidSpring_ftarget;
    *v5 = a2;
    *(v5 + 8) = 0;
    FMPFFluidSpring.ftarget.didset();
  }

  else
  {
    FLSpring.resetImmediately(toValue:)(a2);
    *(v4 + OBJC_IVAR____TtC10TVRemoteUI15FMPFFluidSpring_ready) = 0;
    v6 = (v4 + OBJC_IVAR____TtC10TVRemoteUI8FLSpring__s);
    swift_beginAccess();
    if (vabdd_f64(v6[35] + *(v4 + OBJC_IVAR____TtC10TVRemoteUI8FLSpring__o + 40), *v6 + *(v4 + OBJC_IVAR____TtC10TVRemoteUI8FLSpring__o)) > *(v4 + OBJC_IVAR____TtC10TVRemoteUI8FLSpring_stableValueThreshold))
    {
      v7 = *v6 + *(v4 + OBJC_IVAR____TtC10TVRemoteUI8FLSpring__o);
    }

    else
    {
      v7 = v6[35] + *(v4 + OBJC_IVAR____TtC10TVRemoteUI8FLSpring__o + 40);
    }

    v8 = [v3 scene];
    v9 = 1.0;
    if (v8)
    {
      v10 = v8;
      [v8 size];
      v12 = v11;

      v13 = [v3 texture];
      if (v13)
      {
        v14 = v13;
        [v13 size];
        v16 = v15;

        v9 = round(v7 * v12) / v16;
      }
    }

    [v3 setScale_];
  }
}

Swift::Void __swiftcall FMPFSKBTRangeDotNode.pulse(duration:)(Swift::Double duration)
{
  if (!UIAccessibilityIsReduceMotionEnabled())
  {
    v3 = [v1 texture];
    if (v3)
    {
      v4 = v3;
      type metadata accessor for FMPFSKSpriteNode();
      v5 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd);
      v6 = swift_allocObject();
      *(v6 + 16) = xmmword_26D0D2860;
      v7 = objc_opt_self();
      v8 = objc_opt_self();
      v9 = v5;
      v10 = [v8 rangeWithConstantValue_];
      v11 = [v7 distance:v10 toNode:v1];

      *(v6 + 32) = v11;
      type metadata accessor for SKConstraint(0, &lazy cache variable for type metadata for SKConstraint);
      isa = Array._bridgeToObjectiveC()().super.isa;

      [v9 setConstraints_];

      v13 = v9;
      [v13 setTexture_];
      [v4 size];
      [v13 setSize_];

      [v13 setScale_];
      v14 = objc_opt_self();
      v15 = [v14 scaleTo:2.0 duration:duration];
      [v15 setTimingMode_];
      v16 = [v14 fadeAlphaTo:0.0 duration:duration];
      [v16 setTimingMode_];
      v17 = swift_allocObject();
      *(v17 + 16) = xmmword_26D0D2880;
      *(v17 + 32) = v16;
      *(v17 + 40) = v15;
      type metadata accessor for SKConstraint(0, &lazy cache variable for type metadata for SKAction);
      v18 = v16;
      v19 = v15;
      v20 = Array._bridgeToObjectiveC()().super.isa;

      v21 = [v14 group_];

      [v1 addChild_];
      v22 = swift_allocObject();
      *(v22 + 16) = v13;
      v25[4] = partial apply for closure #2 in FMPFSKPeripheralDotNode.pulse(_:animated:);
      v25[5] = v22;
      v25[0] = MEMORY[0x277D85DD0];
      v25[1] = 1107296256;
      v25[2] = thunk for @escaping @callee_guaranteed () -> ();
      v25[3] = &block_descriptor_2;
      v23 = _Block_copy(v25);
      v24 = v13;

      [v24 runAction:v21 completion:v23];
      _Block_release(v23);
    }
  }
}

id FMPFSKBTRangeDotNode.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for FMPFSKBTRangeDotNode();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t block_copy_helper_2(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t FMPFSKPatternFragmentNode.description.getter()
{
  v1 = v0;
  v2 = &v0[OBJC_IVAR____TtC10TVRemoteUI25FMPFSKPatternFragmentNode_composedPosition];
  if (v0[OBJC_IVAR____TtC10TVRemoteUI25FMPFSKPatternFragmentNode_composedPosition + 16])
  {
    v3 = 0xE000000000000000;
    _StringGuts.grow(_:)(33);

    v4 = _Pointer.debugDescription.getter();
    v6 = specialized BidirectionalCollection.suffix(_:)(6, v4, v5);
    v8 = v7;
    v10 = v9;
    v12 = v11;

    v13 = MEMORY[0x26D6B1280](v6, v8, v10, v12);
    v15 = v14;

    MEMORY[0x26D6B12B0](v13, v15);

    MEMORY[0x26D6B12B0](30768, 0xE200000000000000);

    MEMORY[0x26D6B12B0](32, 0xE100000000000000);
    v16 = [v0 name];
    if (v16)
    {
      v17 = v16;
      v18 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v3 = v19;
    }

    else
    {
      v18 = 0;
    }

    MEMORY[0x26D6B12B0](v18, v3);

    MEMORY[0x26D6B12B0](0x3E4025202CLL, 0xE500000000000000);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys7CVarArg_pGMd);
    v39 = swift_allocObject();
    *(v39 + 16) = xmmword_26D0D2E90;
    v40 = [v1 isHidden];
    v41 = lazy protocol witness table accessor for type String and conformance String();
    if (v40)
    {
      v42 = 0x6E6564646968;
    }

    else
    {
      v42 = 0x656C6269736976;
    }

    v43 = 0xE700000000000000;
    *(v39 + 56) = MEMORY[0x277D837D0];
    *(v39 + 64) = v41;
    if (v40)
    {
      v43 = 0xE600000000000000;
    }

    *(v39 + 32) = v42;
    *(v39 + 40) = v43;
  }

  else
  {
    v21 = *v2;
    v20 = *(v2 + 1);
    v22 = 0xE000000000000000;
    _StringGuts.grow(_:)(64);
    MEMORY[0x26D6B12B0](0xD000000000000017, 0x800000026D0DC280);
    v23 = _Pointer.debugDescription.getter();
    v25 = specialized BidirectionalCollection.suffix(_:)(6, v23, v24);
    v27 = v26;
    v29 = v28;
    v31 = v30;

    v32 = MEMORY[0x26D6B1280](v25, v27, v29, v31);
    v34 = v33;

    MEMORY[0x26D6B12B0](v32, v34);

    MEMORY[0x26D6B12B0](30768, 0xE200000000000000);

    MEMORY[0x26D6B12B0](32, 0xE100000000000000);
    v35 = [v0 name];
    if (v35)
    {
      v36 = v35;
      v37 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v22 = v38;
    }

    else
    {
      v37 = 0;
    }

    MEMORY[0x26D6B12B0](v37, v22);

    MEMORY[0x26D6B12B0](0xD000000000000024, 0x800000026D0DC2A0);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys7CVarArg_pGMd);
    v44 = swift_allocObject();
    *(v44 + 16) = xmmword_26D0D3E20;
    v45 = MEMORY[0x277D85048];
    *(v44 + 56) = MEMORY[0x277D85048];
    v46 = lazy protocol witness table accessor for type CGFloat and conformance CGFloat();
    *(v44 + 64) = v46;
    *(v44 + 32) = v21;
    *(v44 + 96) = v45;
    *(v44 + 104) = v46;
    *(v44 + 72) = v20;
    v47 = [v1 isHidden];
    v48 = lazy protocol witness table accessor for type String and conformance String();
    if (v47)
    {
      v49 = 0x6E6564646968;
    }

    else
    {
      v49 = 0x656C6269736976;
    }

    v50 = 0xE700000000000000;
    *(v44 + 136) = MEMORY[0x277D837D0];
    *(v44 + 144) = v48;
    if (v47)
    {
      v50 = 0xE600000000000000;
    }

    *(v44 + 112) = v49;
    *(v44 + 120) = v50;
  }

  v51 = String.init(format:_:)();

  return v51;
}

uint64_t FMPFSKPatternFragmentNode.calculateIntermediatePosition()()
{
  if (*(v0 + OBJC_IVAR____TtC10TVRemoteUI25FMPFSKPatternFragmentNode_peripheralPosition + 16))
  {
    goto LABEL_9;
  }

  v1 = *(v0 + OBJC_IVAR____TtC10TVRemoteUI25FMPFSKPatternFragmentNode_peripheralPosition);
  if (!*(v0 + OBJC_IVAR____TtC10TVRemoteUI25FMPFSKPatternFragmentNode_travelingStyle))
  {

    goto LABEL_6;
  }

  v2 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if ((v2 & 1) == 0)
  {
LABEL_9:
    *&result = 0.0;
    return result;
  }

LABEL_6:
  v4 = *(v0 + OBJC_IVAR____TtC10TVRemoteUI25FMPFSKPatternFragmentNode_innerPeripheralDiskRadius);
  v5 = *(v0 + OBJC_IVAR____TtC10TVRemoteUI25FMPFSKPatternFragmentNode_style);
  specialized static BinaryFloatingPoint<>.random<A>(in:using:)(v3, 0.0, 3.14159265);
  v7 = v6 * 0.25;
  v8 = 2.0;
  if (v1 > 0.0)
  {
    v8 = -2.0;
  }

  *&result = v4 * __sincos_stret(v5 * (v8 * v7) + 1.57079633).__cosval;
  return result;
}

uint64_t FMPFSKPatternFragmentNode.controlPoint(with:trackOffset:)(double a1)
{
  v3 = OBJC_IVAR____TtC10TVRemoteUI25FMPFSKPatternFragmentNode_travelingStyle;
  if (*(v1 + OBJC_IVAR____TtC10TVRemoteUI25FMPFSKPatternFragmentNode_travelingStyle) && *(v1 + OBJC_IVAR____TtC10TVRemoteUI25FMPFSKPatternFragmentNode_travelingStyle) == 1)
  {

    return *&a1;
  }

  v4 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if (v4)
  {
    return *&a1;
  }

  if (!*(v1 + v3))
  {

    return 0;
  }

  v6 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if (v6)
  {
    return 0;
  }

  return 0;
}

uint64_t FMPFSKPatternFragmentNode.quadCurveBezierLength(from:endPoint:)(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5, char a6)
{
  if (a3 & 1) != 0 || (a6)
  {
    return 0;
  }

  *&v8.f64[0] = a1;
  *&v8.f64[1] = a2;
  v23 = v8;
  *&v8.f64[0] = a4;
  *&v8.f64[1] = a5;
  v22 = v8;
  v9 = 1;
  v10 = FMPFSKPatternFragmentNode.controlPoint(with:trackOffset:)(*&a1);
  v12 = v11;
  v13 = OBJC_IVAR____TtC10TVRemoteUI25FMPFSKPatternFragmentNode_travelingStyle;
  *&v14.f64[0] = v10;
  v14.f64[1] = v15;
  v21 = v14;
  v16 = 0.0;
  v17 = v23;
  do
  {
    v25 = vcvtd_n_f64_u64(v9, 4uLL);
    v26 = v17;
    v24 = 1.0 - v25;
    if (!*(v6 + v13))
    {
      goto LABEL_11;
    }

    v19 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v19)
    {
      goto LABEL_13;
    }

    if (*(v6 + v13) && *(v6 + v13) == 1)
    {
LABEL_11:
    }

    else
    {
      v20 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if ((v20 & 1) == 0)
      {
        goto LABEL_5;
      }
    }

LABEL_13:
    if (v12)
    {
LABEL_5:
      v17 = vaddq_f64(vmulq_n_f64(v22, v25), vmulq_n_f64(v23, v24));
      goto LABEL_6;
    }

    v17 = vaddq_f64(vmulq_n_f64(vaddq_f64(vmulq_n_f64(v21, v25), vmulq_n_f64(v23, v24)), v24), vmulq_n_f64(vaddq_f64(vmulq_n_f64(v22, v25), vmulq_n_f64(v21, v24)), v25));
LABEL_6:
    v18 = vsubq_f64(v17, v26);
    v16 = v16 + sqrt(vaddvq_f64(vmulq_f64(v18, v18)));
    ++v9;
  }

  while (v9 != 17);
  return *&v16;
}

void FMPFSKPatternFragmentNode.executePartPerimeterRotation(_:)(void *a1)
{
  if (([v1 isHidden] & 1) == 0)
  {
    v3 = *&v1[OBJC_IVAR____TtC10TVRemoteUI25FMPFSKPatternFragmentNode_dotNode] + OBJC_IVAR____TtC10TVRemoteUI16FMPFSKSpriteNode_brightness;
    if ((*(v3 + 8) & 1) == 0)
    {
      v4 = *v3;
      if (!UIAccessibilityIsReduceMotionEnabled())
      {
        v5 = *&v1[OBJC_IVAR____TtC10TVRemoteUI25FMPFSKPatternFragmentNode_gimbalNode];
        v6 = swift_allocObject();
        v6[2] = a1;
        v6[3] = v4;
        v6[4] = v1;
        v11[4] = partial apply for closure #1 in FMPFSKPatternFragmentNode.executePartPerimeterRotation(_:);
        v11[5] = v6;
        v11[0] = MEMORY[0x277D85DD0];
        v11[1] = 1107296256;
        v11[2] = thunk for @escaping @callee_guaranteed () -> ();
        v11[3] = &block_descriptor_3;
        v7 = _Block_copy(v11);
        v8 = v5;
        v9 = a1;
        v10 = v1;

        [v8 runAction:v9 completion:v7];
        _Block_release(v7);
      }
    }
  }
}

Swift::Void __swiftcall FMPFSKPatternFragmentNode.setDotsFreeFromBearing()()
{
  v1 = (v0 + OBJC_IVAR____TtC10TVRemoteUI25FMPFSKPatternFragmentNode_peripheralPosition);
  if ((*(v0 + OBJC_IVAR____TtC10TVRemoteUI25FMPFSKPatternFragmentNode_peripheralPosition + 16) & 1) == 0)
  {
    v2 = *(v0 + OBJC_IVAR____TtC10TVRemoteUI25FMPFSKPatternFragmentNode_dotNode) + OBJC_IVAR____TtC10TVRemoteUI16FMPFSKSpriteNode_brightness;
    if ((*(v2 + 8) & 1) == 0)
    {
      v3 = OBJC_IVAR____TtC10TVRemoteUI25FMPFSKPatternFragmentNode_perimeterRotateOnceAction;
      if (!*(v0 + OBJC_IVAR____TtC10TVRemoteUI25FMPFSKPatternFragmentNode_perimeterRotateOnceAction))
      {
        v5 = *v1;
        v4 = *(v1 + 1);
        v6 = *v2;
        v7 = specialized RandomNumberGenerator.next<A>(upperBound:)(11);
        v8 = v0 + OBJC_IVAR____TtC10TVRemoteUI25FMPFSKPatternFragmentNode_style;
        v9 = *(v0 + OBJC_IVAR____TtC10TVRemoteUI25FMPFSKPatternFragmentNode_style + 32) * 100.0;
        if (v9 < 0.0)
        {
          __break(1u);
        }

        else
        {
          v10 = v7;
          v11 = hypot(v5, v4);
          v12 = dbl_26D0D2870[(v10 & 1) == 0];
          specialized static BinaryFloatingPoint<>.random<A>(in:using:)(v13, 0.0, v9);
          v15 = [objc_opt_self() rotateByAngle:v12 / *(v8 + 48) duration:(v11 + v11) * 3.14159265 / (*(v8 + 24) * (v14 / -100.0 + 1.0)) / *(v8 + 48)];
          [v15 setTimingMode_];
          [v15 setSpeed_];
          v16 = *(v0 + v3);
          *(v0 + v3) = v15;
          v17 = v15;

          FMPFSKPatternFragmentNode.executePartPerimeterRotation(_:)(v17);
        }
      }
    }
  }
}

Swift::Void __swiftcall FMPFSKPatternFragmentNode.setDotsBoundToBearing()()
{
  v1 = OBJC_IVAR____TtC10TVRemoteUI25FMPFSKPatternFragmentNode_perimeterRotateOnceAction;
  if (*&v0[OBJC_IVAR____TtC10TVRemoteUI25FMPFSKPatternFragmentNode_perimeterRotateOnceAction])
  {
    v2 = OBJC_IVAR____TtC10TVRemoteUI25FMPFSKPatternFragmentNode_gimbalNode;
    [*&v0[OBJC_IVAR____TtC10TVRemoteUI25FMPFSKPatternFragmentNode_gimbalNode] removeAllActions];
    v3 = *&v0[v1];
    *&v0[v1] = 0;

    v4 = &v0[OBJC_IVAR____TtC10TVRemoteUI25FMPFSKPatternFragmentNode_peripheralPosition];
    if ((v0[OBJC_IVAR____TtC10TVRemoteUI25FMPFSKPatternFragmentNode_peripheralPosition + 16] & 1) == 0)
    {
      v5 = &v0[OBJC_IVAR____TtC10TVRemoteUI25FMPFSKPatternFragmentNode_explodedPosition];
      if ((v0[OBJC_IVAR____TtC10TVRemoteUI25FMPFSKPatternFragmentNode_explodedPosition + 16] & 1) == 0)
      {
        v7 = *v4;
        v6 = *(v4 + 1);
        v9 = *v5;
        v8 = *(v5 + 1);
        v10 = fmod(*&v0[OBJC_IVAR____TtC10TVRemoteUI25FMPFSKPatternFragmentNode_presentedAbsoluteHeading] / 180.0 * 3.14159265, 6.28318531);
        if (v10 <= 3.14159265)
        {
          if (v10 < -3.14159265)
          {
            v10 = v10 + 6.28318531;
          }
        }

        else
        {
          v10 = v10 + -6.28318531;
        }

        [*&v0[v2] zRotation];
        v12 = fmod(v11, 6.28318531);
        if (v12 <= 3.14159265)
        {
          if (v12 < -3.14159265)
          {
            v12 = v12 + 6.28318531;
          }
        }

        else
        {
          v12 = v12 + -6.28318531;
        }

        v13 = v10 + v12;
        v14 = hypot(*&v7, v6);
        v15 = atan2(v6, *&v7);
        v16 = __sincos_stret(v13 + v15);
        *v4 = v14 * v16.__cosval;
        *(v4 + 1) = v14 * v16.__sinval;
        v4[16] = 0;
        FMPFSKPatternFragmentNode.peripheralPosition.didset();
        v17 = hypot(v9, v8);
        v18 = atan2(v8, v9);
        v19 = __sincos_stret(v13 + v18);
        *v5 = v17 * v19.__cosval;
        *(v5 + 1) = v17 * v19.__sinval;
        v5[16] = 0;
      }
    }

    [*&v0[v2] setZRotation_];
    [v0 setZRotation_];
    v20 = FMPFSKPatternFragmentNode.calculateIntermediatePosition()();
    if (v22)
    {
      v23 = *v4;
      v24 = *(v4 + 1);
      v25 = v4[16];
    }

    else
    {
      v23 = v20;
      v24 = v21;
      v25 = 0;
    }

    v26 = &v0[OBJC_IVAR____TtC10TVRemoteUI25FMPFSKPatternFragmentNode_intermediatePosition];
    *v26 = v23;
    *(v26 + 1) = v24;
    v26[16] = v25;
    v27 = FMPFSKPatternFragmentNode.quadCurveBezierLength(from:endPoint:)(*&v0[OBJC_IVAR____TtC10TVRemoteUI25FMPFSKPatternFragmentNode_composedPosition], *&v0[OBJC_IVAR____TtC10TVRemoteUI25FMPFSKPatternFragmentNode_composedPosition + 8], v0[OBJC_IVAR____TtC10TVRemoteUI25FMPFSKPatternFragmentNode_composedPosition + 16], v23, v24, v25);
    v28 = &v0[OBJC_IVAR____TtC10TVRemoteUI25FMPFSKPatternFragmentNode_curveLength];
    *v28 = v27;
    v28[8] = v29 & 1;
    v30 = specialized FMPFSKPatternFragmentNode.arcLength(from:endPoint:)(*v26, *(v26 + 1), v26[16], *v4, *(v4 + 1), v4[16]);
    v31 = &v0[OBJC_IVAR____TtC10TVRemoteUI25FMPFSKPatternFragmentNode_arcLength];
    *v31 = v30;
    v31[8] = v32 & 1;
    if ((v0[OBJC_IVAR____TtC10TVRemoteUI25FMPFSKPatternFragmentNode_conformationFactor + 8] & 1) == 0)
    {
      v33 = *&v0[OBJC_IVAR____TtC10TVRemoteUI25FMPFSKPatternFragmentNode_conformationFactor];

      FMPFSKPatternFragmentNode.applyConformationFactor(_:)(v33);
    }
  }
}

uint64_t FMPFSKPatternFragmentNode.peripheralPosition.didset()
{
  v1 = FMPFSKPatternFragmentNode.calculateIntermediatePosition()();
  if (v3)
  {
    v4 = *(v0 + OBJC_IVAR____TtC10TVRemoteUI25FMPFSKPatternFragmentNode_peripheralPosition);
    v5 = *(v0 + OBJC_IVAR____TtC10TVRemoteUI25FMPFSKPatternFragmentNode_peripheralPosition + 8);
    v6 = *(v0 + OBJC_IVAR____TtC10TVRemoteUI25FMPFSKPatternFragmentNode_peripheralPosition + 16);
  }

  else
  {
    v4 = v1;
    v5 = v2;
    v6 = 0;
  }

  v7 = v0 + OBJC_IVAR____TtC10TVRemoteUI25FMPFSKPatternFragmentNode_intermediatePosition;
  *v7 = v4;
  *(v7 + 8) = v5;
  *(v7 + 16) = v6;
  v8 = FMPFSKPatternFragmentNode.quadCurveBezierLength(from:endPoint:)(*(v0 + OBJC_IVAR____TtC10TVRemoteUI25FMPFSKPatternFragmentNode_composedPosition), *(v0 + OBJC_IVAR____TtC10TVRemoteUI25FMPFSKPatternFragmentNode_composedPosition + 8), *(v0 + OBJC_IVAR____TtC10TVRemoteUI25FMPFSKPatternFragmentNode_composedPosition + 16), v4, v5, v6);
  v9 = v0 + OBJC_IVAR____TtC10TVRemoteUI25FMPFSKPatternFragmentNode_curveLength;
  *v9 = v8;
  *(v9 + 8) = v10 & 1;
  result = specialized FMPFSKPatternFragmentNode.arcLength(from:endPoint:)(*v7, *(v7 + 8), *(v7 + 16), *(v0 + OBJC_IVAR____TtC10TVRemoteUI25FMPFSKPatternFragmentNode_peripheralPosition), *(v0 + OBJC_IVAR____TtC10TVRemoteUI25FMPFSKPatternFragmentNode_peripheralPosition + 8), *(v0 + OBJC_IVAR____TtC10TVRemoteUI25FMPFSKPatternFragmentNode_peripheralPosition + 16));
  v12 = v0 + OBJC_IVAR____TtC10TVRemoteUI25FMPFSKPatternFragmentNode_arcLength;
  *v12 = result;
  *(v12 + 8) = v13 & 1;
  return result;
}

Swift::Void __swiftcall FMPFSKPatternFragmentNode.resetToInitialPeripheralPosition()()
{
  if (*(v0 + OBJC_IVAR____TtC10TVRemoteUI25FMPFSKPatternFragmentNode_experienceType) != 1)
  {
    v1 = *(v0 + OBJC_IVAR____TtC10TVRemoteUI25FMPFSKPatternFragmentNode_initialPeripheralPosition + 16);
    v2 = v0 + OBJC_IVAR____TtC10TVRemoteUI25FMPFSKPatternFragmentNode_peripheralPosition;
    *v2 = *(v0 + OBJC_IVAR____TtC10TVRemoteUI25FMPFSKPatternFragmentNode_initialPeripheralPosition);
    *(v2 + 16) = v1;
    FMPFSKPatternFragmentNode.peripheralPosition.didset();
    v3 = FMPFSKPatternFragmentNode.calculateIntermediatePosition()();
    if (v5)
    {
      v6 = *v2;
      v7 = *(v2 + 8);
      v8 = *(v2 + 16);
    }

    else
    {
      v6 = v3;
      v7 = v4;
      v8 = 0;
    }

    v9 = v0 + OBJC_IVAR____TtC10TVRemoteUI25FMPFSKPatternFragmentNode_intermediatePosition;
    *v9 = v6;
    *(v9 + 8) = v7;
    *(v9 + 16) = v8;
    v10 = FMPFSKPatternFragmentNode.quadCurveBezierLength(from:endPoint:)(*(v0 + OBJC_IVAR____TtC10TVRemoteUI25FMPFSKPatternFragmentNode_composedPosition), *(v0 + OBJC_IVAR____TtC10TVRemoteUI25FMPFSKPatternFragmentNode_composedPosition + 8), *(v0 + OBJC_IVAR____TtC10TVRemoteUI25FMPFSKPatternFragmentNode_composedPosition + 16), v6, v7, v8);
    v11 = v0 + OBJC_IVAR____TtC10TVRemoteUI25FMPFSKPatternFragmentNode_curveLength;
    *v11 = v10;
    *(v11 + 8) = v12 & 1;
    v13 = specialized FMPFSKPatternFragmentNode.arcLength(from:endPoint:)(*v9, *(v9 + 8), *(v9 + 16), *v2, *(v2 + 8), *(v2 + 16));
    v14 = v0 + OBJC_IVAR____TtC10TVRemoteUI25FMPFSKPatternFragmentNode_arcLength;
    *v14 = v13;
    *(v14 + 8) = v15 & 1;
    v16 = *(v0 + OBJC_IVAR____TtC10TVRemoteUI25FMPFSKPatternFragmentNode_initialExplodedPosition + 16);
    v17 = v0 + OBJC_IVAR____TtC10TVRemoteUI25FMPFSKPatternFragmentNode_explodedPosition;
    *v17 = *(v0 + OBJC_IVAR____TtC10TVRemoteUI25FMPFSKPatternFragmentNode_initialExplodedPosition);
    *(v17 + 16) = v16;
  }
}

Swift::Void __swiftcall FMPFSKPatternFragmentNode.setDisturbanceScatterOffset(_:sprung:)(CGPoint _, Swift::Bool sprung)
{
  v3 = *(v2 + OBJC_IVAR____TtC10TVRemoteUI25FMPFSKPatternFragmentNode_disturbanceScatterOffsetXSpring);
  if (v3 && (v4 = *(v2 + OBJC_IVAR____TtC10TVRemoteUI25FMPFSKPatternFragmentNode_disturbanceScatterOffsetYSpring)) != 0)
  {
    y = _.y;
    x = _.x;
    v7 = v2 + OBJC_IVAR____TtC10TVRemoteUI25FMPFSKPatternFragmentNode_disturbanceScatterOffset;
    *v7 = _.x;
    *(v7 + 8) = _.y;
    *(v7 + 16) = 0;
    if (!sprung || (v8 = &v3[OBJC_IVAR____TtC10TVRemoteUI8FLSpring__s], swift_beginAccess(), v8[35] + *&v3[OBJC_IVAR____TtC10TVRemoteUI8FLSpring__o + 40] == 1.79769313e308) || (v9 = &v4[OBJC_IVAR____TtC10TVRemoteUI8FLSpring__s], swift_beginAccess(), v9[35] + *&v4[OBJC_IVAR____TtC10TVRemoteUI8FLSpring__o + 40] == 1.79769313e308))
    {
      FLSpring.resetImmediately(toValue:)(x);
      v3[OBJC_IVAR____TtC10TVRemoteUI15FMPFFluidSpring_ready] = 0;
      FLSpring.resetImmediately(toValue:)(y);
      v4[OBJC_IVAR____TtC10TVRemoteUI15FMPFFluidSpring_ready] = 0;
      v10 = v2 + OBJC_IVAR____TtC10TVRemoteUI25FMPFSKPatternFragmentNode_presentedDisturbanceScatterOffset;
      *v10 = x;
      *(v10 + 8) = y;
      *(v10 + 16) = 0;
      if ((*(v2 + OBJC_IVAR____TtC10TVRemoteUI25FMPFSKPatternFragmentNode_conformationFactor + 8) & 1) == 0)
      {
        v11 = *(v2 + OBJC_IVAR____TtC10TVRemoteUI25FMPFSKPatternFragmentNode_conformationFactor);
        v12 = v3;
        v13 = v4;
        FMPFSKPatternFragmentNode.applyConformationFactor(_:)(v11);
      }
    }

    else
    {
      v16 = &v3[OBJC_IVAR____TtC10TVRemoteUI15FMPFFluidSpring_ftarget];
      *v16 = x;
      *(v16 + 8) = 0;
      FMPFFluidSpring.ftarget.didset();
      v17 = &v4[OBJC_IVAR____TtC10TVRemoteUI15FMPFFluidSpring_ftarget];
      *v17 = y;
      *(v17 + 8) = 0;
      FMPFFluidSpring.ftarget.didset();
    }
  }

  else
  {
    v14 = v2 + OBJC_IVAR____TtC10TVRemoteUI25FMPFSKPatternFragmentNode_presentedDisturbanceScatterOffset;
    *(v14 + 16) = 0;
    *v14 = 0;
    *(v14 + 8) = 0;
    if ((*(v2 + OBJC_IVAR____TtC10TVRemoteUI25FMPFSKPatternFragmentNode_conformationFactor + 8) & 1) == 0)
    {
      v15 = *(v2 + OBJC_IVAR____TtC10TVRemoteUI25FMPFSKPatternFragmentNode_conformationFactor);

      FMPFSKPatternFragmentNode.applyConformationFactor(_:)(v15);
    }
  }
}

void FMPFSKPatternFragmentNode.setDisturbanceHoming(conformationFactor:sprung:)(char a1, double a2)
{
  v3 = v2;
  v4 = *(v2 + OBJC_IVAR____TtC10TVRemoteUI25FMPFSKPatternFragmentNode_disturbanceHomingFactorSpring);
  if (!v4 || (v5 = v3 + OBJC_IVAR____TtC10TVRemoteUI25FMPFSKPatternFragmentNode_style, (*(v3 + OBJC_IVAR____TtC10TVRemoteUI25FMPFSKPatternFragmentNode_style + 168) & 1) != 0) || (*(v5 + 152) & 1) != 0 || (*(v5 + 184) & 1) != 0)
  {
    v6 = v3 + OBJC_IVAR____TtC10TVRemoteUI25FMPFSKPatternFragmentNode_presentedDisturbanceHomingFactor;
    *(v3 + OBJC_IVAR____TtC10TVRemoteUI25FMPFSKPatternFragmentNode_presentedDisturbanceHomingFactor) = 0x3FF0000000000000;
LABEL_6:
    *(v6 + 8) = 0;
    return;
  }

  v7 = *(v5 + 160);
  if (v7 <= a2)
  {
    v12 = (*(v5 + 176) - a2) / (*(v5 + 176) - v7);
    v13 = 1.0 - fmin(v12, 1.0);
    if (v12 < 0.0)
    {
      v11 = 1.0;
    }

    else
    {
      v11 = v13;
    }
  }

  else
  {
    v8 = (a2 - *(v5 + 144)) / (v7 - *(v5 + 144));
    if (v8 < 0.0)
    {
      v9 = 0.0;
    }

    else
    {
      v9 = v8;
    }

    v10 = 1.0 - v9;
    if (v8 >= 1.0)
    {
      v11 = 0.0;
    }

    else
    {
      v11 = v10;
    }
  }

  v14 = v3 + OBJC_IVAR____TtC10TVRemoteUI25FMPFSKPatternFragmentNode_disturbanceHomingFactor;
  *v14 = v11;
  *(v14 + 8) = 0;
  if ((a1 & 1) == 0 || (v15 = v4 + OBJC_IVAR____TtC10TVRemoteUI8FLSpring__s, swift_beginAccess(), *(v15 + 280) + *(v4 + OBJC_IVAR____TtC10TVRemoteUI8FLSpring__o + 40) == 1.79769313e308))
  {
    FLSpring.resetImmediately(toValue:)(v11);
    *(v4 + OBJC_IVAR____TtC10TVRemoteUI15FMPFFluidSpring_ready) = 0;
    v6 = v3 + OBJC_IVAR____TtC10TVRemoteUI25FMPFSKPatternFragmentNode_presentedDisturbanceHomingFactor;
    *(v3 + OBJC_IVAR____TtC10TVRemoteUI25FMPFSKPatternFragmentNode_presentedDisturbanceHomingFactor) = v11;
    goto LABEL_6;
  }

  v16 = v4 + OBJC_IVAR____TtC10TVRemoteUI15FMPFFluidSpring_ftarget;
  *v16 = v11;
  *(v16 + 8) = 0;
  FMPFFluidSpring.ftarget.didset();
}

void FMPFSKPatternFragmentNode.__ivar_destroyer()
{
  v1 = *(v0 + OBJC_IVAR____TtC10TVRemoteUI25FMPFSKPatternFragmentNode_renderingColor);
}

id FMPFSKPatternFragmentNode.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for FMPFSKPatternFragmentNode();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

double specialized FMPFSKPatternFragmentNode.positionOnArcWith(startPoint:endPoint:at:)(long double a1, long double a2, long double a3, long double a4, double a5)
{
  v8 = atan2(a2, a1);
  v9 = atan2(a4, a3);
  v10 = v9 - v8;
  if (vabdd_f64(v9, v8) > 3.14159265)
  {
    if (v8 >= 0.0 || v9 < 0.0)
    {
      if (v9 < 0.0 && v8 >= 0.0)
      {
        v10 = v10 + 6.28318531;
      }
    }

    else
    {
      v10 = v10 + -6.28318531;
    }
  }

  v12 = hypot(a3, a4);
  return v12 * __sincos_stret((1.0 - a5) * v8 + (v8 + v10) * a5).__cosval;
}

void specialized FMPFSKPatternFragmentNode.positionOnCurvedPathWith(conformationFactor:trackOffsetCorrection:)(uint64_t a1@<X8>, double a2@<D0>)
{
  v4 = (v2 + OBJC_IVAR____TtC10TVRemoteUI25FMPFSKPatternFragmentNode_composedPosition);
  v5 = 0uLL;
  v6 = 0.0;
  if ((*(v2 + OBJC_IVAR____TtC10TVRemoteUI25FMPFSKPatternFragmentNode_composedPosition + 16) & 1) == 0)
  {
    v7 = (v2 + OBJC_IVAR____TtC10TVRemoteUI25FMPFSKPatternFragmentNode_intermediatePosition);
    if ((*(v2 + OBJC_IVAR____TtC10TVRemoteUI25FMPFSKPatternFragmentNode_intermediatePosition + 16) & 1) == 0)
    {
      v8 = v2 + OBJC_IVAR____TtC10TVRemoteUI25FMPFSKPatternFragmentNode_peripheralPosition;
      if ((*(v2 + OBJC_IVAR____TtC10TVRemoteUI25FMPFSKPatternFragmentNode_peripheralPosition + 16) & 1) == 0 && (*(v2 + OBJC_IVAR____TtC10TVRemoteUI25FMPFSKPatternFragmentNode_curveLength + 8) & 1) == 0 && (*(v2 + OBJC_IVAR____TtC10TVRemoteUI25FMPFSKPatternFragmentNode_arcLength + 8) & 1) == 0)
      {
        v11 = a1;
        v32 = *v4;
        v33 = v4[1];
        v12 = *v7;
        v6 = *v8;
        v13 = *(v2 + OBJC_IVAR____TtC10TVRemoteUI25FMPFSKPatternFragmentNode_arcLength);
        v14 = *(v2 + OBJC_IVAR____TtC10TVRemoteUI25FMPFSKPatternFragmentNode_curveLength);
        v15 = *(v2 + OBJC_IVAR____TtC10TVRemoteUI25FMPFSKPatternFragmentNode_trackOffset);
        if (*(v2 + OBJC_IVAR____TtC10TVRemoteUI25FMPFSKPatternFragmentNode_trackOffset + 8))
        {
          v15 = 0.0;
        }

        v16 = v7[1] - v15;
        v10 = *(v8 + 8) - v15;
        v17 = 1.0 - a2;
        *&v18 = COERCE_DOUBLE(FMPFSKPatternFragmentNode.controlPoint(with:trackOffset:)(*v4));
        v21 = v14 / (v13 + v14);
        if (v17 > v21)
        {
          *&v5 = specialized FMPFSKPatternFragmentNode.positionOnArcWith(startPoint:endPoint:at:)(v12, v16, v6, v10, (v17 - v21) / (v13 / (v13 + v14)));
          v9 = 0;
          *(&v5 + 1) = v22;
          a1 = v11;
          goto LABEL_7;
        }

        v23 = *&v18;
        v24 = v19;
        v25 = v20;
        v26 = v17 / v21;
        v27 = 1.0 - v17 / v21;
        v28 = OBJC_IVAR____TtC10TVRemoteUI25FMPFSKPatternFragmentNode_travelingStyle;
        if (*(v2 + OBJC_IVAR____TtC10TVRemoteUI25FMPFSKPatternFragmentNode_travelingStyle))
        {
          v29 = _stringCompareWithSmolCheck(_:_:expecting:)();

          if (v29)
          {
            goto LABEL_17;
          }

          if (!*(v2 + v28) || *(v2 + v28) != 1)
          {
            v31 = _stringCompareWithSmolCheck(_:_:expecting:)();

            a1 = v11;
            if (v31 & 1) == 0 || (v25)
            {
              goto LABEL_18;
            }

            goto LABEL_21;
          }
        }

LABEL_17:
        a1 = v11;
        if (v25)
        {
LABEL_18:
          *&v5 = v12 * v26 + v32 * v27;
          v30 = v33 * v27;
LABEL_22:
          v9 = 0;
          *(&v5 + 1) = v30 + v26 * v16;
          goto LABEL_7;
        }

LABEL_21:
        v16 = v26 * v16 + v27 * v24;
        *&v5 = v27 * (v32 * v27 + v26 * v23) + v26 * (v12 * v26 + v27 * v23);
        v30 = v27 * (v33 * v27 + v26 * v24);
        goto LABEL_22;
      }
    }
  }

  v9 = 1;
  v10 = 0.0;
LABEL_7:
  *a1 = v5;
  *(a1 + 16) = v6;
  *(a1 + 24) = v10;
  *(a1 + 32) = v9;
}

void specialized FMPFSKPatternFragmentNode.init(coder:)()
{
  v1 = OBJC_IVAR____TtC10TVRemoteUI25FMPFSKPatternFragmentNode_gimbalNode;
  *(v0 + v1) = [objc_allocWithZone(type metadata accessor for FMPFSKNode()) init];
  *(v0 + OBJC_IVAR____TtC10TVRemoteUI25FMPFSKPatternFragmentNode_disturbScatterRandomOffsetFrameCounter) = 0;
  v2 = v0 + OBJC_IVAR____TtC10TVRemoteUI25FMPFSKPatternFragmentNode_initialPeripheralPosition;
  *v2 = 0;
  *(v2 + 8) = 0;
  *(v2 + 16) = 1;
  v3 = v0 + OBJC_IVAR____TtC10TVRemoteUI25FMPFSKPatternFragmentNode_initialExplodedPosition;
  *v3 = 0;
  *(v3 + 8) = 0;
  *(v3 + 16) = 1;
  v4 = v0 + OBJC_IVAR____TtC10TVRemoteUI25FMPFSKPatternFragmentNode_curveLength;
  *v4 = 0;
  *(v4 + 8) = 1;
  v5 = v0 + OBJC_IVAR____TtC10TVRemoteUI25FMPFSKPatternFragmentNode_arcLength;
  *v5 = 0;
  *(v5 + 8) = 1;
  *(v0 + OBJC_IVAR____TtC10TVRemoteUI25FMPFSKPatternFragmentNode_perimeterRotateOnceAction) = 0;
  v6 = v0 + OBJC_IVAR____TtC10TVRemoteUI25FMPFSKPatternFragmentNode_intermediatePosition;
  *v6 = 0;
  *(v6 + 8) = 0;
  *(v6 + 16) = 1;
  v7 = v0 + OBJC_IVAR____TtC10TVRemoteUI25FMPFSKPatternFragmentNode_relativeHeading;
  *v7 = 0;
  *(v7 + 8) = 1;
  *(v0 + OBJC_IVAR____TtC10TVRemoteUI25FMPFSKPatternFragmentNode_disturbanceScatterOffsetXSpring) = 0;
  *(v0 + OBJC_IVAR____TtC10TVRemoteUI25FMPFSKPatternFragmentNode_disturbanceScatterOffsetYSpring) = 0;
  *(v0 + OBJC_IVAR____TtC10TVRemoteUI25FMPFSKPatternFragmentNode_disturbanceHomingFactorSpring) = 0;
  v8 = v0 + OBJC_IVAR____TtC10TVRemoteUI25FMPFSKPatternFragmentNode_explodedPosition;
  *v8 = 0;
  *(v8 + 8) = 0;
  *(v8 + 16) = 1;
  v9 = v0 + OBJC_IVAR____TtC10TVRemoteUI25FMPFSKPatternFragmentNode_peripheralPosition;
  *v9 = 0;
  *(v9 + 8) = 0;
  *(v9 + 16) = 1;
  v10 = v0 + OBJC_IVAR____TtC10TVRemoteUI25FMPFSKPatternFragmentNode_composedPosition;
  *v10 = 0;
  *(v10 + 8) = 0;
  *(v10 + 16) = 1;
  *(v0 + OBJC_IVAR____TtC10TVRemoteUI25FMPFSKPatternFragmentNode_useAlternateScaling) = 0;
  v11 = v0 + OBJC_IVAR____TtC10TVRemoteUI25FMPFSKPatternFragmentNode_conformationTimingFunction;
  *v11 = 0u;
  *(v11 + 16) = 0u;
  *(v11 + 32) = 1;
  v12 = v0 + OBJC_IVAR____TtC10TVRemoteUI25FMPFSKPatternFragmentNode_conformedToExplodedFactor;
  *v12 = 0;
  *(v12 + 8) = 1;
  v13 = v0 + OBJC_IVAR____TtC10TVRemoteUI25FMPFSKPatternFragmentNode_conformationFactor;
  *v13 = 0;
  *(v13 + 8) = 1;
  v14 = v0 + OBJC_IVAR____TtC10TVRemoteUI25FMPFSKPatternFragmentNode_scalingFactor;
  *v14 = 0;
  *(v14 + 8) = 1;
  *(v0 + OBJC_IVAR____TtC10TVRemoteUI25FMPFSKPatternFragmentNode_shouldApplyDisturbanceScatterOffset) = 1;
  v15 = v0 + OBJC_IVAR____TtC10TVRemoteUI25FMPFSKPatternFragmentNode_disturbanceScatterOffset;
  *v15 = 0;
  *(v15 + 8) = 0;
  *(v15 + 16) = 1;
  v16 = v0 + OBJC_IVAR____TtC10TVRemoteUI25FMPFSKPatternFragmentNode_presentedDisturbanceScatterOffset;
  *v16 = 0;
  *(v16 + 8) = 0;
  *(v16 + 16) = 1;
  *(v0 + OBJC_IVAR____TtC10TVRemoteUI25FMPFSKPatternFragmentNode_shouldApplyDisturbanceHomingFactor) = 1;
  v17 = v0 + OBJC_IVAR____TtC10TVRemoteUI25FMPFSKPatternFragmentNode_disturbanceHomingFactor;
  *v17 = 0;
  *(v17 + 8) = 1;
  v18 = v0 + OBJC_IVAR____TtC10TVRemoteUI25FMPFSKPatternFragmentNode_presentedDisturbanceHomingFactor;
  *v18 = 0;
  *(v18 + 8) = 1;
  v19 = v0 + OBJC_IVAR____TtC10TVRemoteUI25FMPFSKPatternFragmentNode_trackOffset;
  *v19 = 0;
  *(v19 + 8) = 1;
  *(v0 + OBJC_IVAR____TtC10TVRemoteUI25FMPFSKPatternFragmentNode_presentedAbsoluteHeading) = 0;
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

uint64_t specialized FMPFSKPatternFragmentNode.arcLength(from:endPoint:)(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5, char a6)
{
  if (a3 & 1) != 0 || (a6)
  {
    return 0;
  }

  v11 = hypot(*&a4, *&a5);
  v12 = atan2(*&a2, *&a1);
  v13 = atan2(*&a5, *&a4);
  v14 = v13 - v12;
  if (vabdd_f64(v13, v12) > 3.14159265)
  {
    if (v12 >= 0.0 || v13 < 0.0)
    {
      if (v13 < 0.0 && v12 >= 0.0)
      {
        v14 = v14 + 6.28318531;
      }
    }

    else
    {
      v14 = v14 + -6.28318531;
    }
  }

  return fabs((v11 + v11) * v14);
}

uint64_t partial apply for closure #1 in FMPFSKPatternFragmentNode.executePartPerimeterRotation(_:)()
{
  v1 = *(v0 + 16);
  [v1 setSpeed_];
  return FMPFSKPatternFragmentNode.executePartPerimeterRotation(_:)(v1);
}

uint64_t block_copy_helper_3(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

unint64_t lazy protocol witness table accessor for type CGFloat and conformance CGFloat()
{
  result = lazy protocol witness table cache variable for type CGFloat and conformance CGFloat;
  if (!lazy protocol witness table cache variable for type CGFloat and conformance CGFloat)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CGFloat and conformance CGFloat);
  }

  return result;
}

uint64_t protocol witness for Tip.image.getter in conformance SiriTip()
{
  type metadata accessor for TVRUITipManager();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v1 = [objc_opt_self() bundleForClass_];

  return MEMORY[0x2821336E0](0x62724F69726953, 0xE700000000000000, v1);
}

uint64_t protocol witness for Tip.options.getter in conformance SiriTip()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s6TipKit4TipsO14OptionsBuilderV17buildPartialBlock5firstQrx_tAA0A6OptionRzlFZQOy__AE0F10ExpressionyQrxAaHRzlFZQOy__AC17UsesConstellationVQo_Qo_Md);
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20]();
  v3 = &v16 - v2;
  v4 = type metadata accessor for Tips.UsesConstellation();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20]();
  v7 = &v16 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s6TipKit4TipsO14OptionsBuilderV15buildExpressionyQrxAA0A6OptionRzlFZQOy__AC17UsesConstellationVQo_Md);
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20]();
  v11 = &v16 - v10;
  MEMORY[0x26D6B0FE0](1);
  v12 = MEMORY[0x277CE1A00];
  MEMORY[0x26D6B0F70](v7, v4, MEMORY[0x277CE1A00]);
  (*(v5 + 8))(v7, v4);
  v16 = v4;
  v17 = v12;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  MEMORY[0x26D6B0FA0](v11, v8, OpaqueTypeConformance2);
  v16 = v8;
  v17 = OpaqueTypeConformance2;
  swift_getOpaqueTypeConformance2();
  v14 = static Tips.OptionsBuilder.buildFinalResult<A>(_:)();
  (*(v1 + 8))(v3, v0);
  (*(v9 + 8))(v11, v8);
  return v14;
}

unint64_t lazy protocol witness table accessor for type SiriTip and conformance SiriTip()
{
  result = lazy protocol witness table cache variable for type SiriTip and conformance SiriTip;
  if (!lazy protocol witness table cache variable for type SiriTip and conformance SiriTip)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SiriTip and conformance SiriTip);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type SiriTip and conformance SiriTip;
  if (!lazy protocol witness table cache variable for type SiriTip and conformance SiriTip)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SiriTip and conformance SiriTip);
  }

  return result;
}

char *FMPFSKPatternNode.init(experienceType:config:size:withRingView:conformedToExplodedFactor:conformationFactor:)(unsigned __int8 *a1, uint64_t a2, void *a3, uint64_t a4, char a5, uint64_t a6, char a7, double a8, double a9)
{
  v13 = *a1;
  v14 = OBJC_IVAR____TtC10TVRemoteUI17FMPFSKPatternNode_ringView;
  *&v9[OBJC_IVAR____TtC10TVRemoteUI17FMPFSKPatternNode_ringView] = 0;
  v15 = OBJC_IVAR____TtC10TVRemoteUI17FMPFSKPatternNode_canvasDebugNode;
  v16 = type metadata accessor for FMPFSKNode();
  *&v9[v15] = [objc_allocWithZone(v16) init];
  *&v9[OBJC_IVAR____TtC10TVRemoteUI17FMPFSKPatternNode_canvasInsideBorderBezierNode] = 0;
  *&v9[OBJC_IVAR____TtC10TVRemoteUI17FMPFSKPatternNode_canvasDiskBezierNode] = 0;
  v17 = OBJC_IVAR____TtC10TVRemoteUI17FMPFSKPatternNode_canvasPatternSpinesNode;
  *&v9[v17] = [objc_allocWithZone(MEMORY[0x277CDCF58]) init];
  v18 = OBJC_IVAR____TtC10TVRemoteUI17FMPFSKPatternNode_gimbalNode;
  *&v9[v18] = [objc_allocWithZone(v16) init];
  v19 = OBJC_IVAR____TtC10TVRemoteUI17FMPFSKPatternNode_patternFragmentsNode;
  *&v9[v19] = [objc_allocWithZone(v16) init];
  *&v9[OBJC_IVAR____TtC10TVRemoteUI17FMPFSKPatternNode_patternFragmentNodes] = MEMORY[0x277D84F90];
  v20 = OBJC_IVAR____TtC10TVRemoteUI17FMPFSKPatternNode_labelsNode;
  *&v9[v20] = [objc_allocWithZone(v16) init];
  *&v9[OBJC_IVAR____TtC10TVRemoteUI17FMPFSKPatternNode_noonNode] = 0;
  *&v9[OBJC_IVAR____TtC10TVRemoteUI17FMPFSKPatternNode_pointeeNode] = 0;
  v9[OBJC_IVAR____TtC10TVRemoteUI17FMPFSKPatternNode_noonNodeSnappedUnderPointeeNode] = 0;
  *&v9[OBJC_IVAR____TtC10TVRemoteUI17FMPFSKPatternNode_extraDiskRadiusWhenSnapping] = 0;
  v9[OBJC_IVAR____TtC10TVRemoteUI17FMPFSKPatternNode_forceHideNoonNode] = 0;
  v9[OBJC_IVAR____TtC10TVRemoteUI17FMPFSKPatternNode_allFragmentsAreOrbiting] = 0;
  v21 = &v9[OBJC_IVAR____TtC10TVRemoteUI17FMPFSKPatternNode_track];
  *v21 = 0;
  v21[8] = 1;
  v9[OBJC_IVAR____TtC10TVRemoteUI17FMPFSKPatternNode_trackDidChange] = 0;
  v22 = &v9[OBJC_IVAR____TtC10TVRemoteUI17FMPFSKPatternNode_trackTop];
  *v22 = 0;
  *(v22 + 1) = 0;
  v22[16] = 1;
  v23 = &v9[OBJC_IVAR____TtC10TVRemoteUI17FMPFSKPatternNode_trackBottom];
  *v23 = 0;
  *(v23 + 1) = 0;
  v23[16] = 1;
  v9[OBJC_IVAR____TtC10TVRemoteUI17FMPFSKPatternNode_needsRecomputeVisibleFragments] = 0;
  *&v9[OBJC_IVAR____TtC10TVRemoteUI17FMPFSKPatternNode_delegate + 8] = 0;
  swift_unknownObjectWeakInit();
  v9[OBJC_IVAR____TtC10TVRemoteUI17FMPFSKPatternNode_inFOV] = 2;
  v9[OBJC_IVAR____TtC10TVRemoteUI17FMPFSKPatternNode_shouldApplyConformedToExplodedFactor] = 1;
  v24 = &v9[OBJC_IVAR____TtC10TVRemoteUI17FMPFSKPatternNode_conformedToExplodedFactor];
  *v24 = 0;
  v24[8] = 1;
  v25 = &v9[OBJC_IVAR____TtC10TVRemoteUI17FMPFSKPatternNode_presentedConformedToExplodedFactor];
  *v25 = 0;
  v25[8] = 1;
  v9[OBJC_IVAR____TtC10TVRemoteUI17FMPFSKPatternNode_shouldApplyConformationFactor] = 1;
  v26 = &v9[OBJC_IVAR____TtC10TVRemoteUI17FMPFSKPatternNode_conformationFactor];
  *v26 = 0;
  v26[8] = 1;
  v27 = &v9[OBJC_IVAR____TtC10TVRemoteUI17FMPFSKPatternNode_presentedConformationFactor];
  *v27 = 0;
  v27[8] = 1;
  v9[OBJC_IVAR____TtC10TVRemoteUI17FMPFSKPatternNode_shouldApplyBearing] = 1;
  v28 = &v9[OBJC_IVAR____TtC10TVRemoteUI17FMPFSKPatternNode_bearing];
  *v28 = 0;
  v28[8] = 1;
  v29 = &v9[OBJC_IVAR____TtC10TVRemoteUI17FMPFSKPatternNode_presentedEnergeticBearing];
  *v29 = 0;
  v29[8] = 1;
  v30 = &v9[OBJC_IVAR____TtC10TVRemoteUI17FMPFSKPatternNode_presentedLethargicBearing];
  *v30 = 0;
  v30[8] = 1;
  v9[OBJC_IVAR____TtC10TVRemoteUI17FMPFSKPatternNode_shouldApplyCenterFactor] = 1;
  v31 = &v9[OBJC_IVAR____TtC10TVRemoteUI17FMPFSKPatternNode_centerFactor];
  *v31 = 0;
  v31[8] = 1;
  v32 = &v9[OBJC_IVAR____TtC10TVRemoteUI17FMPFSKPatternNode_presentedCenterFactor];
  *v32 = 0;
  v32[8] = 1;
  *&v9[OBJC_IVAR____TtC10TVRemoteUI17FMPFSKPatternNode_derivativeCenterFactor] = 0;
  v9[OBJC_IVAR____TtC10TVRemoteUI17FMPFSKPatternNode_shouldLookout] = 1;
  v33 = &v9[OBJC_IVAR____TtC10TVRemoteUI17FMPFSKPatternNode_lookout];
  *v33 = 0;
  v33[8] = 1;
  v34 = &v9[OBJC_IVAR____TtC10TVRemoteUI17FMPFSKPatternNode_presentedLookout];
  *v34 = 0;
  v34[8] = 1;
  v9[OBJC_IVAR____TtC10TVRemoteUI17FMPFSKPatternNode_shouldLabelsOpacity] = 1;
  v35 = &v9[OBJC_IVAR____TtC10TVRemoteUI17FMPFSKPatternNode_labelsOpacity];
  *v35 = 0;
  v35[8] = 1;
  v36 = &v9[OBJC_IVAR____TtC10TVRemoteUI17FMPFSKPatternNode_presentedLabelsOpacity];
  *v36 = 0;
  v36[8] = 1;
  v9[OBJC_IVAR____TtC10TVRemoteUI17FMPFSKPatternNode_experienceType] = v13;
  if (v13 == 1)
  {
    if (one-time initialization token for r1NoAR != -1)
    {
      swift_once();
    }

    v37 = &static FMPFSKPatternNodeStyle.r1NoAR;
  }

  else
  {
    if (one-time initialization token for r1OrBT != -1)
    {
      swift_once();
    }

    v37 = &static FMPFSKPatternNodeStyle.r1OrBT;
  }

  v38 = v37[11];
  v94 = v37[10];
  v95 = v38;
  v96 = v37[12];
  v39 = v37[7];
  v90 = v37[6];
  v91 = v39;
  v40 = v37[9];
  v92 = v37[8];
  v93 = v40;
  v41 = v37[3];
  v86 = v37[2];
  v87 = v41;
  v42 = v37[5];
  v88 = v37[4];
  v89 = v42;
  v43 = v37[1];
  v84 = *v37;
  v85 = v43;
  v44 = &v9[OBJC_IVAR____TtC10TVRemoteUI17FMPFSKPatternNode_style];
  *(v44 + 2) = v86;
  *(v44 + 3) = v41;
  v45 = v91;
  *(v44 + 6) = v90;
  *(v44 + 7) = v45;
  v46 = v89;
  *(v44 + 4) = v88;
  *(v44 + 5) = v46;
  v47 = v96;
  *(v44 + 11) = v95;
  *(v44 + 12) = v47;
  v48 = v94;
  *(v44 + 9) = v93;
  *(v44 + 10) = v48;
  *(v44 + 8) = v92;
  v49 = v85;
  *v44 = v84;
  *(v44 + 1) = v49;
  v50 = &v9[OBJC_IVAR____TtC10TVRemoteUI17FMPFSKPatternNode_config];
  v51 = *(a2 + 144);
  *(v50 + 8) = *(a2 + 128);
  *(v50 + 9) = v51;
  *(v50 + 10) = *(a2 + 160);
  v50[176] = *(a2 + 176);
  v52 = *(a2 + 80);
  *(v50 + 4) = *(a2 + 64);
  *(v50 + 5) = v52;
  v53 = *(a2 + 112);
  *(v50 + 6) = *(a2 + 96);
  *(v50 + 7) = v53;
  v54 = *(a2 + 16);
  *v50 = *a2;
  *(v50 + 1) = v54;
  v55 = *(a2 + 48);
  *(v50 + 2) = *(a2 + 32);
  *(v50 + 3) = v55;
  v56 = objc_opt_self();
  outlined init with copy of FMPFSKPatternNodeConfig(a2, v83);

  v57 = MEMORY[0x26D6B1210](0xD000000000000011, 0x800000026D0DAE90);
  v58 = MGGetSInt32Answer();

  *&v9[OBJC_IVAR____TtC10TVRemoteUI17FMPFSKPatternNode_pixelsPerInch] = v58;
  v59 = &v9[OBJC_IVAR____TtC10TVRemoteUI17FMPFSKPatternNode_sceneSize];
  *v59 = a8;
  v59[1] = a9;
  v60 = *&v9[v14];
  *&v9[v14] = a3;
  v77 = a3;

  if (one-time initialization token for default != -1)
  {
    swift_once();
  }

  v61 = qword_2804DD018;
  *&v9[OBJC_IVAR____TtC10TVRemoteUI17FMPFSKPatternNode_noonDotColor] = qword_2804DD018;
  v62 = qword_2804DD020;
  *&v9[OBJC_IVAR____TtC10TVRemoteUI17FMPFSKPatternNode_pointeeDotColor] = qword_2804DD020;
  v63 = 1.0;
  if (v13 == 1)
  {
    v63 = 0.5;
  }

  v64 = v63 * *v59;
  v65 = v63 * v59[1];
  if (v65 >= v64)
  {
    v65 = v64;
  }

  v66 = v65 * 0.5;
  *&v9[OBJC_IVAR____TtC10TVRemoteUI17FMPFSKPatternNode_explodedDiskRadius] = *(v44 + 6) * v66;
  *&v9[OBJC_IVAR____TtC10TVRemoteUI17FMPFSKPatternNode_peripheralDiskRadius] = v66 * *(v44 + 8);
  if (a5)
  {
    v67 = 0;
  }

  else
  {
    v67 = a4;
  }

  *v24 = v67;
  v24[8] = 0;
  if (a7)
  {
    v68 = 0;
  }

  else
  {
    v68 = a6;
  }

  *v26 = v68;
  v26[8] = 0;
  v69 = *(v44 + 22);
  v70 = v61;
  v71 = v62;
  *&v9[OBJC_IVAR____TtC10TVRemoteUI17FMPFSKPatternNode_conformationFactorSpring] = specialized static FMPFFluidSpring.defaultSpringWith(initialValue:stableValueThreshold:response:)(v68, 0, 0x3F50624DD2F1A9FCLL, 0, v69, 0);
  *&v9[OBJC_IVAR____TtC10TVRemoteUI17FMPFSKPatternNode_conformedToExplodedFactorSpring] = specialized static FMPFFluidSpring.defaultSpringWith(initialValue:stableValueThreshold:response:)(v67, 0, 0x3F847AE147AE147BLL, 0, *(v44 + 22), 0);
  *&v9[OBJC_IVAR____TtC10TVRemoteUI17FMPFSKPatternNode_energeticAngleSpring] = specialized static FMPFFluidSpring.defaultSpringWith(initialValue:stableValueThreshold:response:)(0, 0, 0x3F69BC65B68B71C3, 0, 0, 1);
  *&v9[OBJC_IVAR____TtC10TVRemoteUI17FMPFSKPatternNode_lethargicAngleSpring] = specialized static FMPFFluidSpring.lethargicSpringWith(initialValue:stableValueThreshold:)(0, 0, 0x3F69BC65B68B71C3, 0);
  *&v9[OBJC_IVAR____TtC10TVRemoteUI17FMPFSKPatternNode_centerFactorSpring] = specialized static FMPFFluidSpring.defaultSpringWith(initialValue:stableValueThreshold:response:)(0, 1, 0x3F847AE147AE147BLL, 0, 0, 1);
  *&v9[OBJC_IVAR____TtC10TVRemoteUI17FMPFSKPatternNode_lookoutSpring] = specialized static FMPFFluidSpring.defaultSpringWith(initialValue:stableValueThreshold:response:)(0, 0, 0x3F847AE147AE147BLL, 0, 0, 1);
  *&v9[OBJC_IVAR____TtC10TVRemoteUI17FMPFSKPatternNode_trackSpring] = specialized static FMPFFluidSpring.lethargicSpringWith(initialValue:stableValueThreshold:)(0x3FE0000000000000, 0, 0x3F1A36E2EB1C432DLL, 0);
  *&v9[OBJC_IVAR____TtC10TVRemoteUI17FMPFSKPatternNode_labelsOpacitySpring] = specialized static FMPFFluidSpring.defaultSpringWith(initialValue:stableValueThreshold:response:)(0, 0, 0x3F847AE147AE147BLL, 0, 0, 1);
  v82.receiver = v9;
  v82.super_class = type metadata accessor for FMPFSKPatternNode();
  v72 = objc_msgSendSuper2(&v82, sel_init);
  v73 = *&v72[OBJC_IVAR____TtC10TVRemoteUI17FMPFSKPatternNode_gimbalNode];
  v74 = v72;
  [v74 addChild_];

  outlined destroy of FMPFSKPatternNodeConfig(a2);
  return v74;
}

Swift::Void __swiftcall FMPFSKPatternNode.applyDebugMode(_:)(Swift::Bool a1)
{
  v2 = v1;
  [*(v1 + OBJC_IVAR____TtC10TVRemoteUI17FMPFSKPatternNode_canvasDebugNode) setHidden_];
  [*(v1 + OBJC_IVAR____TtC10TVRemoteUI17FMPFSKPatternNode_canvasInsideBorderBezierNode) setHidden_];
  [*(v1 + OBJC_IVAR____TtC10TVRemoteUI17FMPFSKPatternNode_canvasDiskBezierNode) setHidden_];
  v4 = OBJC_IVAR____TtC10TVRemoteUI17FMPFSKPatternNode_noonNode;
  v5 = *(v1 + OBJC_IVAR____TtC10TVRemoteUI17FMPFSKPatternNode_noonNode);
  if (v5)
  {
    [v5 setHidden_];
  }

  v6 = OBJC_IVAR____TtC10TVRemoteUI17FMPFSKPatternNode_pointeeNode;
  v7 = *(v1 + OBJC_IVAR____TtC10TVRemoteUI17FMPFSKPatternNode_pointeeNode);
  if (v7)
  {
    [v7 setHidden_];
  }

  [*(v1 + OBJC_IVAR____TtC10TVRemoteUI17FMPFSKPatternNode_patternFragmentsNode) setHidden_];
  v8 = *(v1 + v4);
  if (v8)
  {
    if (a1)
    {
      v9 = objc_opt_self();
      v10 = v8;
      v11 = [v9 yellowColor];
      v12 = [v11 colorWithAlphaComponent_];

      v13 = v12;
    }

    else
    {
      v14 = *(v2 + OBJC_IVAR____TtC10TVRemoteUI17FMPFSKPatternNode_noonDotColor);
      v10 = v8;
      v13 = v14;
    }

    FMPFSKPeripheralDotNode.renderingColor.setter(v13);
  }

  v15 = *(v2 + v6);
  if (v15)
  {
    if (a1)
    {
      v16 = objc_opt_self();
      v17 = v15;
      v18 = [v16 purpleColor];
      v19 = [v18 colorWithAlphaComponent_];

      v20 = v19;
    }

    else
    {
      v21 = *(v2 + OBJC_IVAR____TtC10TVRemoteUI17FMPFSKPatternNode_pointeeDotColor);
      v17 = v15;
      v20 = v21;
    }

    FMPFSKPeripheralDotNode.renderingColor.setter(v20);
  }

  v22 = [*(v2 + OBJC_IVAR____TtC10TVRemoteUI17FMPFSKPatternNode_canvasPatternSpinesNode) children];
  type metadata accessor for SKNode();
  v23 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  if (v23 >> 62)
  {
    goto LABEL_28;
  }

  for (i = *((v23 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = MEMORY[0x26D6B1780](v30))
  {
    v25 = 0;
    while (1)
    {
      if ((v23 & 0xC000000000000001) != 0)
      {
        v26 = MEMORY[0x26D6B1680](v25, v23);
      }

      else
      {
        if (v25 >= *((v23 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_27;
        }

        v26 = *(v23 + 8 * v25 + 32);
      }

      v27 = v26;
      v28 = v25 + 1;
      if (__OFADD__(v25, 1))
      {
        break;
      }

      objc_opt_self();
      v29 = swift_dynamicCastObjCClass();
      if (v29)
      {
        [v29 setLineWidth_];
      }

      ++v25;
      if (v28 == i)
      {
        goto LABEL_32;
      }
    }

    __break(1u);
LABEL_27:
    __break(1u);
LABEL_28:
    if (v23 < 0)
    {
      v30 = v23;
    }

    else
    {
      v30 = v23 & 0xFFFFFFFFFFFFFF8;
    }
  }

LABEL_32:
}

void FMPFSKPatternNode.setConformationFactor(_:sprung:)(char a1, Swift::Double a2)
{
  v3 = v2;
  v5 = v2 + OBJC_IVAR____TtC10TVRemoteUI17FMPFSKPatternNode_conformationFactor;
  *v5 = a2;
  *(v5 + 8) = 0;
  v6 = v2 + OBJC_IVAR____TtC10TVRemoteUI17FMPFSKPatternNode_presentedConformationFactor;
  if ((*(v2 + OBJC_IVAR____TtC10TVRemoteUI17FMPFSKPatternNode_presentedConformationFactor + 8) & 1) == 0)
  {
    if (*v6 == 0.0 && a2 > 0.0)
    {
      v7 = a1;
      v8 = v2 + OBJC_IVAR____TtC10TVRemoteUI17FMPFSKPatternNode_delegate;
      if (swift_unknownObjectWeakLoadStrong())
      {
        v9 = *(v8 + 8);
        ObjectType = swift_getObjectType();
        (*(v9 + 24))(ObjectType, v9);
        swift_unknownObjectRelease();
      }

      FMPFSKPatternNode.readjustFragmentNodesComposedPositionForTape(_:)(*(v2 + OBJC_IVAR____TtC10TVRemoteUI17FMPFSKPatternNode_track), *(v2 + OBJC_IVAR____TtC10TVRemoteUI17FMPFSKPatternNode_track + 8));
LABEL_15:
      a1 = v7;
      goto LABEL_16;
    }

    if (*v6 == 1.0 && a2 < 1.0)
    {
      v7 = a1;
      v12 = v2 + OBJC_IVAR____TtC10TVRemoteUI17FMPFSKPatternNode_delegate;
      if (swift_unknownObjectWeakLoadStrong())
      {
        v13 = *(v12 + 8);
        v14 = swift_getObjectType();
        (*(v13 + 32))(v14, v13);
        swift_unknownObjectRelease();
      }

      FMPFSKPatternNode.readjustFragmentNodesPeripheralPositionForTape()();
      goto LABEL_15;
    }
  }

LABEL_16:
  if ((a1 & 1) != 0 && (v15 = *(v2 + OBJC_IVAR____TtC10TVRemoteUI17FMPFSKPatternNode_conformationFactorSpring), v16 = v15 + OBJC_IVAR____TtC10TVRemoteUI8FLSpring__s, swift_beginAccess(), *(v16 + 280) + *(v15 + OBJC_IVAR____TtC10TVRemoteUI8FLSpring__o + 40) != 1.79769313e308))
  {
    v29 = v15 + OBJC_IVAR____TtC10TVRemoteUI15FMPFFluidSpring_ftarget;
    *v29 = a2;
    *(v29 + 8) = 0;
    FMPFFluidSpring.ftarget.didset();
  }

  else
  {
    v17 = *(v3 + OBJC_IVAR____TtC10TVRemoteUI17FMPFSKPatternNode_conformationFactorSpring);
    FLSpring.resetImmediately(toValue:)(a2);
    *(v17 + OBJC_IVAR____TtC10TVRemoteUI15FMPFFluidSpring_ready) = 0;
    v18 = *(v3 + OBJC_IVAR____TtC10TVRemoteUI17FMPFSKPatternNode_style + 184);
    if ((a2 - v18) / (1.0 - v18) < 0.0)
    {
      v19 = 0.0;
    }

    else
    {
      v19 = (a2 - v18) / (1.0 - v18);
    }

    *v6 = a2;
    *(v6 + 8) = 0;
    v20 = OBJC_IVAR____TtC10TVRemoteUI17FMPFSKPatternNode_patternFragmentNodes;
    swift_beginAccess();
    v21 = *(v3 + v20);
    if (v21 >> 62)
    {
      goto LABEL_36;
    }

    for (i = *((v21 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = MEMORY[0x26D6B1780](v30))
    {

      if (!i)
      {
        break;
      }

      v23 = 0;
      v18 = fmin(a2 / v18, 1.0);
      while (1)
      {
        if ((v21 & 0xC000000000000001) != 0)
        {
          v24 = MEMORY[0x26D6B1680](v23, v21);
        }

        else
        {
          if (v23 >= *((v21 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_35;
          }

          v24 = *(v21 + 8 * v23 + 32);
        }

        v25 = v24;
        v26 = v23 + 1;
        if (__OFADD__(v23, 1))
        {
          break;
        }

        v27 = &v24[OBJC_IVAR____TtC10TVRemoteUI25FMPFSKPatternFragmentNode_conformationFactor];
        *v27 = v18;
        *(v27 + 8) = 0;
        FMPFSKPatternFragmentNode.applyConformationFactor(_:)(v18);
        v28 = &v25[OBJC_IVAR____TtC10TVRemoteUI25FMPFSKPatternFragmentNode_scalingFactor];
        *v28 = v19;
        *(v28 + 8) = 0;
        FMPFSKPatternFragmentNode.applyScalingFactor(_:)(v19);
        FMPFSKPatternFragmentNode.setDisturbanceHoming(conformationFactor:sprung:)(1, a2);

        ++v23;
        if (v26 == i)
        {
          goto LABEL_32;
        }
      }

      __break(1u);
LABEL_35:
      __break(1u);
LABEL_36:
      if (v21 < 0)
      {
        v30 = v21;
      }

      else
      {
        v30 = v21 & 0xFFFFFFFFFFFFFF8;
      }
    }

LABEL_32:

    FMPFSKPatternNode.stageConformationVsScalingVsBearingVsCentering()();
  }
}

void FMPFSKPatternNode.setCenterFactor(_:sprung:)(char a1, Swift::Double a2)
{
  v3 = v2;
  v5 = v2 + OBJC_IVAR____TtC10TVRemoteUI17FMPFSKPatternNode_centerFactor;
  if ((*(v2 + OBJC_IVAR____TtC10TVRemoteUI17FMPFSKPatternNode_centerFactor + 8) & 1) == 0)
  {
    if (*v5 >= a2)
    {
      v6 = OBJC_IVAR____TtC10TVRemoteUI17FMPFSKPatternNode_derivativeCenterFactor;
      if (*v5 <= a2)
      {
        v7 = *(v2 + OBJC_IVAR____TtC10TVRemoteUI17FMPFSKPatternNode_derivativeCenterFactor);
      }

      else
      {
        v7 = -1;
      }
    }

    else
    {
      v6 = OBJC_IVAR____TtC10TVRemoteUI17FMPFSKPatternNode_derivativeCenterFactor;
      v7 = 1;
    }

    *(v2 + v6) = v7;
  }

  *v5 = a2;
  *(v5 + 8) = 0;
  if ((a1 & 1) != 0 && (v8 = *(v2 + OBJC_IVAR____TtC10TVRemoteUI17FMPFSKPatternNode_centerFactorSpring), v9 = v8 + OBJC_IVAR____TtC10TVRemoteUI8FLSpring__s, swift_beginAccess(), *(v9 + 280) + *(v8 + OBJC_IVAR____TtC10TVRemoteUI8FLSpring__o + 40) != 1.79769313e308))
  {
    v12 = v8 + OBJC_IVAR____TtC10TVRemoteUI15FMPFFluidSpring_ftarget;
    *v12 = a2;
    *(v12 + 8) = 0;
    FMPFFluidSpring.ftarget.didset();
  }

  else
  {
    v10 = *(v3 + OBJC_IVAR____TtC10TVRemoteUI17FMPFSKPatternNode_centerFactorSpring);
    FLSpring.resetImmediately(toValue:)(a2);
    *(v10 + OBJC_IVAR____TtC10TVRemoteUI15FMPFFluidSpring_ready) = 0;
    v11 = v3 + OBJC_IVAR____TtC10TVRemoteUI17FMPFSKPatternNode_presentedCenterFactor;
    *v11 = a2;
    *(v11 + 8) = 0;
  }

  FMPFSKPatternNode.stageConformationVsScalingVsBearingVsCentering()();
}

void FMPFSKPatternNode.setLookout(_:sprung:)(char a1, Swift::Double a2)
{
  v3 = v2;
  v5 = v2 + OBJC_IVAR____TtC10TVRemoteUI17FMPFSKPatternNode_lookout;
  *v5 = a2;
  *(v5 + 8) = 0;
  if ((a1 & 1) != 0 && (v6 = *(v2 + OBJC_IVAR____TtC10TVRemoteUI17FMPFSKPatternNode_lookoutSpring), v7 = v6 + OBJC_IVAR____TtC10TVRemoteUI8FLSpring__s, swift_beginAccess(), *(v7 + 280) + *(v6 + OBJC_IVAR____TtC10TVRemoteUI8FLSpring__o + 40) != 1.79769313e308))
  {
    v10 = v6 + OBJC_IVAR____TtC10TVRemoteUI15FMPFFluidSpring_ftarget;
    *v10 = a2;
    *(v10 + 8) = 0;
    FMPFFluidSpring.ftarget.didset();
  }

  else
  {
    v8 = *(v3 + OBJC_IVAR____TtC10TVRemoteUI17FMPFSKPatternNode_lookoutSpring);
    FLSpring.resetImmediately(toValue:)(a2);
    *(v8 + OBJC_IVAR____TtC10TVRemoteUI15FMPFFluidSpring_ready) = 0;
    v9 = v3 + OBJC_IVAR____TtC10TVRemoteUI17FMPFSKPatternNode_presentedLookout;
    *v9 = a2;
    *(v9 + 8) = 0;
  }

  FMPFSKPatternNode.stageConformationVsScalingVsBearingVsCentering()();
}

id FMPFSKPatternNode.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for FMPFSKPatternNode();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

unint64_t type metadata accessor for SKNode()
{
  result = lazy cache variable for type metadata for SKNode;
  if (!lazy cache variable for type metadata for SKNode)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &lazy cache variable for type metadata for SKNode);
  }

  return result;
}

void specialized FMPFSKPatternNode.init(coder:)()
{
  *(v0 + OBJC_IVAR____TtC10TVRemoteUI17FMPFSKPatternNode_ringView) = 0;
  v1 = OBJC_IVAR____TtC10TVRemoteUI17FMPFSKPatternNode_canvasDebugNode;
  v2 = type metadata accessor for FMPFSKNode();
  *(v0 + v1) = [objc_allocWithZone(v2) init];
  *(v0 + OBJC_IVAR____TtC10TVRemoteUI17FMPFSKPatternNode_canvasInsideBorderBezierNode) = 0;
  *(v0 + OBJC_IVAR____TtC10TVRemoteUI17FMPFSKPatternNode_canvasDiskBezierNode) = 0;
  v3 = OBJC_IVAR____TtC10TVRemoteUI17FMPFSKPatternNode_canvasPatternSpinesNode;
  *(v0 + v3) = [objc_allocWithZone(MEMORY[0x277CDCF58]) init];
  v4 = OBJC_IVAR____TtC10TVRemoteUI17FMPFSKPatternNode_gimbalNode;
  *(v0 + v4) = [objc_allocWithZone(v2) init];
  v5 = OBJC_IVAR____TtC10TVRemoteUI17FMPFSKPatternNode_patternFragmentsNode;
  *(v0 + v5) = [objc_allocWithZone(v2) init];
  *(v0 + OBJC_IVAR____TtC10TVRemoteUI17FMPFSKPatternNode_patternFragmentNodes) = MEMORY[0x277D84F90];
  v6 = OBJC_IVAR____TtC10TVRemoteUI17FMPFSKPatternNode_labelsNode;
  *(v0 + v6) = [objc_allocWithZone(v2) init];
  *(v0 + OBJC_IVAR____TtC10TVRemoteUI17FMPFSKPatternNode_noonNode) = 0;
  *(v0 + OBJC_IVAR____TtC10TVRemoteUI17FMPFSKPatternNode_pointeeNode) = 0;
  *(v0 + OBJC_IVAR____TtC10TVRemoteUI17FMPFSKPatternNode_noonNodeSnappedUnderPointeeNode) = 0;
  *(v0 + OBJC_IVAR____TtC10TVRemoteUI17FMPFSKPatternNode_extraDiskRadiusWhenSnapping) = 0;
  *(v0 + OBJC_IVAR____TtC10TVRemoteUI17FMPFSKPatternNode_forceHideNoonNode) = 0;
  *(v0 + OBJC_IVAR____TtC10TVRemoteUI17FMPFSKPatternNode_allFragmentsAreOrbiting) = 0;
  v7 = v0 + OBJC_IVAR____TtC10TVRemoteUI17FMPFSKPatternNode_track;
  *v7 = 0;
  *(v7 + 8) = 1;
  *(v0 + OBJC_IVAR____TtC10TVRemoteUI17FMPFSKPatternNode_trackDidChange) = 0;
  v8 = v0 + OBJC_IVAR____TtC10TVRemoteUI17FMPFSKPatternNode_trackTop;
  *v8 = 0;
  *(v8 + 8) = 0;
  *(v8 + 16) = 1;
  v9 = v0 + OBJC_IVAR____TtC10TVRemoteUI17FMPFSKPatternNode_trackBottom;
  *v9 = 0;
  *(v9 + 8) = 0;
  *(v9 + 16) = 1;
  *(v0 + OBJC_IVAR____TtC10TVRemoteUI17FMPFSKPatternNode_needsRecomputeVisibleFragments) = 0;
  *(v0 + OBJC_IVAR____TtC10TVRemoteUI17FMPFSKPatternNode_delegate + 8) = 0;
  swift_unknownObjectWeakInit();
  *(v0 + OBJC_IVAR____TtC10TVRemoteUI17FMPFSKPatternNode_inFOV) = 2;
  *(v0 + OBJC_IVAR____TtC10TVRemoteUI17FMPFSKPatternNode_shouldApplyConformedToExplodedFactor) = 1;
  v10 = v0 + OBJC_IVAR____TtC10TVRemoteUI17FMPFSKPatternNode_conformedToExplodedFactor;
  *v10 = 0;
  *(v10 + 8) = 1;
  v11 = v0 + OBJC_IVAR____TtC10TVRemoteUI17FMPFSKPatternNode_presentedConformedToExplodedFactor;
  *v11 = 0;
  *(v11 + 8) = 1;
  *(v0 + OBJC_IVAR____TtC10TVRemoteUI17FMPFSKPatternNode_shouldApplyConformationFactor) = 1;
  v12 = v0 + OBJC_IVAR____TtC10TVRemoteUI17FMPFSKPatternNode_conformationFactor;
  *v12 = 0;
  *(v12 + 8) = 1;
  v13 = v0 + OBJC_IVAR____TtC10TVRemoteUI17FMPFSKPatternNode_presentedConformationFactor;
  *v13 = 0;
  *(v13 + 8) = 1;
  *(v0 + OBJC_IVAR____TtC10TVRemoteUI17FMPFSKPatternNode_shouldApplyBearing) = 1;
  v14 = v0 + OBJC_IVAR____TtC10TVRemoteUI17FMPFSKPatternNode_bearing;
  *v14 = 0;
  *(v14 + 8) = 1;
  v15 = v0 + OBJC_IVAR____TtC10TVRemoteUI17FMPFSKPatternNode_presentedEnergeticBearing;
  *v15 = 0;
  *(v15 + 8) = 1;
  v16 = v0 + OBJC_IVAR____TtC10TVRemoteUI17FMPFSKPatternNode_presentedLethargicBearing;
  *v16 = 0;
  *(v16 + 8) = 1;
  *(v0 + OBJC_IVAR____TtC10TVRemoteUI17FMPFSKPatternNode_shouldApplyCenterFactor) = 1;
  v17 = v0 + OBJC_IVAR____TtC10TVRemoteUI17FMPFSKPatternNode_centerFactor;
  *v17 = 0;
  *(v17 + 8) = 1;
  v18 = v0 + OBJC_IVAR____TtC10TVRemoteUI17FMPFSKPatternNode_presentedCenterFactor;
  *v18 = 0;
  *(v18 + 8) = 1;
  *(v0 + OBJC_IVAR____TtC10TVRemoteUI17FMPFSKPatternNode_derivativeCenterFactor) = 0;
  *(v0 + OBJC_IVAR____TtC10TVRemoteUI17FMPFSKPatternNode_shouldLookout) = 1;
  v19 = v0 + OBJC_IVAR____TtC10TVRemoteUI17FMPFSKPatternNode_lookout;
  *v19 = 0;
  *(v19 + 8) = 1;
  v20 = v0 + OBJC_IVAR____TtC10TVRemoteUI17FMPFSKPatternNode_presentedLookout;
  *v20 = 0;
  *(v20 + 8) = 1;
  *(v0 + OBJC_IVAR____TtC10TVRemoteUI17FMPFSKPatternNode_shouldLabelsOpacity) = 1;
  v21 = v0 + OBJC_IVAR____TtC10TVRemoteUI17FMPFSKPatternNode_labelsOpacity;
  *v21 = 0;
  *(v21 + 8) = 1;
  v22 = v0 + OBJC_IVAR____TtC10TVRemoteUI17FMPFSKPatternNode_presentedLabelsOpacity;
  *v22 = 0;
  *(v22 + 8) = 1;
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

uint64_t @objc FMPFSKScene.touchesBegan(_:with:)(void *a1, uint64_t a2, uint64_t a3, void *a4, void (*a5)(uint64_t))
{
  type metadata accessor for UITouch();
  lazy protocol witness table accessor for type UITouch and conformance NSObject();
  v8 = static Set._unconditionallyBridgeFromObjectiveC(_:)();
  v9 = a4;
  v10 = a1;
  a5(v8);
}

unint64_t type metadata accessor for UITouch()
{
  result = lazy cache variable for type metadata for UITouch;
  if (!lazy cache variable for type metadata for UITouch)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &lazy cache variable for type metadata for UITouch);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type UITouch and conformance NSObject()
{
  result = lazy protocol witness table cache variable for type UITouch and conformance NSObject;
  if (!lazy protocol witness table cache variable for type UITouch and conformance NSObject)
  {
    type metadata accessor for UITouch();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type UITouch and conformance NSObject);
  }

  return result;
}

void specialized FMPFSKScene.touchesBegan(_:with:)(uint64_t a1)
{
  v2 = v1;
  v4 = [objc_opt_self() standardUserDefaults];
  v5 = [v4 fmpfDebugMode];

  if (!v5 || (*(v2 + OBJC_IVAR____TtC10TVRemoteUI11FMPFSKScene_isInteractivelyDebugging) & 1) != 0)
  {
    return;
  }

  *(v2 + OBJC_IVAR____TtC10TVRemoteUI11FMPFSKScene_isInteractivelyDebugging) = 1;
  *(v2 + OBJC_IVAR____TtC10TVRemoteUI11FMPFSKScene_usingDebuggingTouches) = 1;
  if ((a1 & 0xC000000000000001) != 0)
  {
    swift_unknownObjectRetain();
    __CocoaSet.makeIterator()();
    type metadata accessor for UITouch();
    lazy protocol witness table accessor for type UITouch and conformance NSObject();
    Set.Iterator.init(_cocoa:)();
    a1 = v32[1];
    v6 = v32[2];
    v7 = v32[3];
    v8 = v32[4];
    v9 = v32[5];
  }

  else
  {
    v10 = -1 << *(a1 + 32);
    v6 = a1 + 56;
    v7 = ~v10;
    v11 = -v10;
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    else
    {
      v12 = -1;
    }

    v9 = v12 & *(a1 + 56);

    v8 = 0;
  }

  v30 = v7;
  v13 = (v7 + 64) >> 6;
  while (a1 < 0)
  {
    v19 = __CocoaSet.Iterator.next()();
    if (!v19 || (v31 = v19, type metadata accessor for UITouch(), swift_dynamicCast(), v18 = v32[0], v16 = v8, v17 = v9, !v32[0]))
    {
LABEL_28:
      outlined consume of Set<UITouch>.Iterator._Variant();
      return;
    }

LABEL_21:
    [v18 locationInNode_];
    v22 = v2 + OBJC_IVAR____TtC10TVRemoteUI11FMPFSKScene_initialTouchDownLocation;
    if (*(v2 + OBJC_IVAR____TtC10TVRemoteUI11FMPFSKScene_initialTouchDownLocation + 16))
    {
      *v22 = v20;
      *(v22 + 8) = v21;
      *(v22 + 16) = 0;
      v32[0] = 0;
      v23 = MEMORY[0x26D6B2720](v32, 8);
      v24 = v32[0];
      if ((11 * v32[0]) <= 4)
      {
        do
        {
          v32[0] = 0;
          v23 = MEMORY[0x26D6B2720](v32, 8);
          v24 = v32[0];
        }

        while ((11 * v32[0]) < 5);
      }

      if (((v24 * 0xBuLL) >> 64))
      {
        v25 = 45.0;
        v26 = 180.0;
      }

      else
      {
        v25 = -180.0;
        v26 = -45.0;
      }

      specialized static BinaryFloatingPoint<>.random<A>(in:using:)(v23, v25, v26);
      v28 = v27;

      v29 = v2 + OBJC_IVAR____TtC10TVRemoteUI11FMPFSKScene_initialBearing;
      *v29 = v28;
      *(v29 + 8) = 0;
    }

    else
    {
    }

    v8 = v16;
    v9 = v17;
  }

  v14 = v8;
  v15 = v9;
  v16 = v8;
  if (v9)
  {
LABEL_17:
    v17 = (v15 - 1) & v15;
    v18 = *(*(a1 + 48) + ((v16 << 9) | (8 * __clz(__rbit64(v15)))));
    if (!v18)
    {
      goto LABEL_28;
    }

    goto LABEL_21;
  }

  while (1)
  {
    v16 = v14 + 1;
    if (__OFADD__(v14, 1))
    {
      break;
    }

    if (v16 >= v13)
    {
      goto LABEL_28;
    }

    v15 = *(v6 + 8 * v16);
    ++v14;
    if (v15)
    {
      goto LABEL_17;
    }
  }

  __break(1u);
}

void specialized FMPFSKScene.touchesMoved(_:with:)(uint64_t a1)
{
  if (v1[OBJC_IVAR____TtC10TVRemoteUI11FMPFSKScene_usingDebuggingTouches] != 1)
  {
    return;
  }

  v2 = v1;
  v4 = [objc_opt_self() standardUserDefaults];
  v5 = [v4 fmpfDebugMode];

  if (!v5)
  {
    return;
  }

  if ((a1 & 0xC000000000000001) != 0)
  {
    swift_unknownObjectRetain();
    __CocoaSet.makeIterator()();
    type metadata accessor for UITouch();
    lazy protocol witness table accessor for type UITouch and conformance NSObject();
    Set.Iterator.init(_cocoa:)();
    a1 = v38;
    v6 = v39;
    v7 = v40;
    v8 = v41;
    v9 = v42;
  }

  else
  {
    v10 = -1 << *(a1 + 32);
    v6 = a1 + 56;
    v7 = ~v10;
    v11 = -v10;
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    else
    {
      v12 = -1;
    }

    v9 = v12 & *(a1 + 56);

    v8 = 0;
  }

  while (a1 < 0)
  {
    if (!__CocoaSet.Iterator.next()() || (type metadata accessor for UITouch(), swift_dynamicCast(), (v15 = v37) == 0))
    {
LABEL_28:
      outlined consume of Set<UITouch>.Iterator._Variant();
      return;
    }

LABEL_20:
    [v15 locationInNode_];
    v18 = &v2[OBJC_IVAR____TtC10TVRemoteUI11FMPFSKScene_initialTouchDownLocation];
    if ((v2[OBJC_IVAR____TtC10TVRemoteUI11FMPFSKScene_initialTouchDownLocation + 16] & 1) == 0 && (v2[OBJC_IVAR____TtC10TVRemoteUI11FMPFSKScene_initialBearing + 8] & 1) == 0)
    {
      v19 = v16;
      v20 = v17;
      v21 = *&v2[OBJC_IVAR____TtC10TVRemoteUI11FMPFSKScene_initialBearing];
      v22 = *v18;
      v23 = v18[1];
      [v2 size];
      v25 = v24;
      [v2 size];
      v27 = v26;
      Strong = swift_unknownObjectWeakLoadStrong();
      if (Strong)
      {
        v29 = Strong;
        v30 = Strong + OBJC_IVAR____TtC10TVRemoteUI8FMPFView_fmpfdelegate;
        if (swift_unknownObjectWeakLoadStrong())
        {
          v35 = *(v30 + 8);
          v36 = vabdd_f64(v22, v19) < vabdd_f64(v23, v20);
          v31 = hypot(v19 - v22, v20 - v23);
          if (v27 >= v25)
          {
            v32 = v25;
          }

          else
          {
            v32 = v27;
          }

          v33 = fmin(v31 / (v32 * 0.66), 1.0);
          ObjectType = swift_getObjectType();
          (*(v35 + 24))(COERCE_DOUBLE(*&v33), 0, v36, v29, ObjectType, v21);
          swift_unknownObjectRelease();
        }

        swift_unknownObjectRelease();
      }
    }
  }

  v13 = v8;
  v14 = v9;
  if (v9)
  {
LABEL_16:
    v9 = (v14 - 1) & v14;
    v15 = *(*(a1 + 48) + ((v8 << 9) | (8 * __clz(__rbit64(v14)))));
    if (!v15)
    {
      goto LABEL_28;
    }

    goto LABEL_20;
  }

  while (1)
  {
    v8 = v13 + 1;
    if (__OFADD__(v13, 1))
    {
      break;
    }

    if (v8 >= ((v7 + 64) >> 6))
    {
      goto LABEL_28;
    }

    v14 = *(v6 + 8 * v8);
    ++v13;
    if (v14)
    {
      goto LABEL_16;
    }
  }

  __break(1u);
}

void specialized FMPFSKScene.touchesEnded(_:with:)(uint64_t a1)
{
  if (*(v1 + OBJC_IVAR____TtC10TVRemoteUI11FMPFSKScene_usingDebuggingTouches) != 1)
  {
    return;
  }

  v2 = v1;
  v3 = a1;
  v25 = OBJC_IVAR____TtC10TVRemoteUI11FMPFSKScene_usingDebuggingTouches;
  if ((a1 & 0xC000000000000001) != 0)
  {
    swift_unknownObjectRetain();
    __CocoaSet.makeIterator()();
    type metadata accessor for UITouch();
    lazy protocol witness table accessor for type UITouch and conformance NSObject();
    Set.Iterator.init(_cocoa:)();
    v3 = v27;
    v4 = v28;
    v5 = v29;
    v6 = v30;
    v7 = v31;
  }

  else
  {
    v8 = -1 << *(a1 + 32);
    v4 = a1 + 56;
    v5 = ~v8;
    v9 = -v8;
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    else
    {
      v10 = -1;
    }

    v7 = v10 & *(a1 + 56);

    v6 = 0;
  }

  v24 = v5;
  while (v3 < 0)
  {
    if (!__CocoaSet.Iterator.next()() || (type metadata accessor for UITouch(), swift_dynamicCast(), v15 = v26, v13 = v6, v14 = v7, !v26))
    {
LABEL_27:
      outlined consume of Set<UITouch>.Iterator._Variant();
      *(v2 + v25) = 0;
      *(v2 + OBJC_IVAR____TtC10TVRemoteUI11FMPFSKScene_isInteractivelyDebugging) = 0;
      return;
    }

LABEL_20:
    [v15 locationInNode_];
    if (*(v2 + OBJC_IVAR____TtC10TVRemoteUI11FMPFSKScene_initialBearing + 8) & 1) != 0 || (*(v2 + 16 + OBJC_IVAR____TtC10TVRemoteUI11FMPFSKScene_initialTouchDownLocation))
    {
    }

    else
    {
      v16 = *(v2 + OBJC_IVAR____TtC10TVRemoteUI11FMPFSKScene_initialBearing);
      Strong = swift_unknownObjectWeakLoadStrong();
      if (Strong)
      {
        v18 = Strong;
        v19 = Strong + OBJC_IVAR____TtC10TVRemoteUI8FMPFView_fmpfdelegate;
        if (swift_unknownObjectWeakLoadStrong())
        {
          v20 = *(v19 + 8);
          ObjectType = swift_getObjectType();
          (*(v20 + 24))(0, 1, 2, v18, ObjectType, v20, v16);
          swift_unknownObjectRelease();
        }

        swift_unknownObjectRelease();
      }

      v22 = v2 + OBJC_IVAR____TtC10TVRemoteUI11FMPFSKScene_initialTouchDownLocation;
      *v22 = 0;
      *(v22 + 8) = 0;
      *(v22 + 16) = 1;
      v23 = v2 + OBJC_IVAR____TtC10TVRemoteUI11FMPFSKScene_initialBearing;
      *v23 = 0;
      *(v23 + 8) = 1;
    }

    v6 = v13;
    v7 = v14;
  }

  v11 = v6;
  v12 = v7;
  v13 = v6;
  if (v7)
  {
LABEL_16:
    v14 = (v12 - 1) & v12;
    v15 = *(*(v3 + 48) + ((v13 << 9) | (8 * __clz(__rbit64(v12)))));
    if (!v15)
    {
      goto LABEL_27;
    }

    goto LABEL_20;
  }

  while (1)
  {
    v13 = v11 + 1;
    if (__OFADD__(v11, 1))
    {
      break;
    }

    if (v13 >= ((v5 + 64) >> 6))
    {
      goto LABEL_27;
    }

    v12 = *(v4 + 8 * v13);
    ++v11;
    if (v12)
    {
      goto LABEL_16;
    }
  }

  __break(1u);
}

void specialized FMPFSKScene.touchesCancelled(_:with:)(uint64_t a1)
{
  if (*(v1 + OBJC_IVAR____TtC10TVRemoteUI11FMPFSKScene_usingDebuggingTouches) == 1)
  {
    v2 = v1;
    v3 = a1;
    v19 = OBJC_IVAR____TtC10TVRemoteUI11FMPFSKScene_usingDebuggingTouches;
    if ((a1 & 0xC000000000000001) != 0)
    {
      swift_unknownObjectRetain();
      __CocoaSet.makeIterator()();
      type metadata accessor for UITouch();
      lazy protocol witness table accessor for type UITouch and conformance NSObject();
      Set.Iterator.init(_cocoa:)();
      v3 = v21;
      v4 = v22;
      v5 = v23;
      v6 = v24;
      v7 = v25;
    }

    else
    {
      v8 = -1 << *(a1 + 32);
      v4 = a1 + 56;
      v5 = ~v8;
      v9 = -v8;
      if (v9 < 64)
      {
        v10 = ~(-1 << v9);
      }

      else
      {
        v10 = -1;
      }

      v7 = v10 & *(a1 + 56);

      v6 = 0;
    }

    v11 = (v5 + 64) >> 6;
    if (v3 < 0)
    {
      goto LABEL_15;
    }

    while (1)
    {
      v12 = v6;
      v13 = v7;
      v14 = v6;
      if (!v7)
      {
        break;
      }

LABEL_13:
      v15 = (v13 - 1) & v13;
      v16 = *(*(v3 + 48) + ((v14 << 9) | (8 * __clz(__rbit64(v13)))));
      if (!v16)
      {
LABEL_19:
        outlined consume of Set<UITouch>.Iterator._Variant();
        *(v2 + v19) = 0;
        *(v2 + OBJC_IVAR____TtC10TVRemoteUI11FMPFSKScene_isInteractivelyDebugging) = 0;
        return;
      }

      while (1)
      {
        [v16 locationInNode_];

        v17 = v2 + OBJC_IVAR____TtC10TVRemoteUI11FMPFSKScene_initialTouchDownLocation;
        *v17 = 0;
        *(v17 + 8) = 0;
        *(v17 + 16) = 1;
        v18 = v2 + OBJC_IVAR____TtC10TVRemoteUI11FMPFSKScene_initialBearing;
        *v18 = 0;
        *(v18 + 8) = 1;
        v6 = v14;
        v7 = v15;
        if ((v3 & 0x8000000000000000) == 0)
        {
          break;
        }

LABEL_15:
        if (__CocoaSet.Iterator.next()())
        {
          type metadata accessor for UITouch();
          swift_dynamicCast();
          v16 = v20;
          v14 = v6;
          v15 = v7;
          if (v20)
          {
            continue;
          }
        }

        goto LABEL_19;
      }
    }

    while (1)
    {
      v14 = v12 + 1;
      if (__OFADD__(v12, 1))
      {
        break;
      }

      if (v14 >= v11)
      {
        goto LABEL_19;
      }

      v13 = *(v4 + 8 * v14);
      ++v12;
      if (v13)
      {
        goto LABEL_13;
      }
    }

    __break(1u);
  }
}

id TVRUIFindingSession.start(for:dismissedHandler:)(void *a1, uint64_t a2, uint64_t a3)
{
  if (([a1 respondsToSelector_] & 1) == 0 || (v7 = objc_msgSend(a1, sel_pairedRemoteInfo)) == 0)
  {
    if (one-time initialization token for findingExperience != -1)
    {
      swift_once();
    }

    v14 = type metadata accessor for Logger();
    __swift_project_value_buffer(v14, static Logger.findingExperience);
    v15 = Logger.logObject.getter();
    v16 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v15, v16))
    {
      v17 = swift_slowAlloc();
      *v17 = 0;
      _os_log_impl(&dword_26CFEB000, v15, v16, "No remote info found. Failed to start finding session.", v17, 2u);
      MEMORY[0x26D6B2710](v17, -1, -1);
    }

    return 0;
  }

  v8 = v7;
  if ([v3 isFindingSessionActive])
  {
    if (one-time initialization token for findingExperience != -1)
    {
      swift_once();
    }

    v9 = type metadata accessor for Logger();
    __swift_project_value_buffer(v9, static Logger.findingExperience);
    v10 = Logger.logObject.getter();
    v11 = static os_log_type_t.default.getter();
    if (!os_log_type_enabled(v10, v11))
    {
      goto LABEL_24;
    }

    v12 = swift_slowAlloc();
    *v12 = 0;
    v13 = "Finding session is already active";
LABEL_23:
    _os_log_impl(&dword_26CFEB000, v10, v11, v13, v12, 2u);
    MEMORY[0x26D6B2710](v12, -1, -1);
LABEL_24:

    return 0;
  }

  [v8 copy];
  _bridgeAnyObjectToAny(_:)();
  swift_unknownObjectRelease();
  type metadata accessor for SKConstraint(0, &lazy cache variable for type metadata for TVRCSiriRemoteInfo);
  if (!swift_dynamicCast())
  {
    if (one-time initialization token for findingExperience != -1)
    {
      swift_once();
    }

    v22 = type metadata accessor for Logger();
    __swift_project_value_buffer(v22, static Logger.findingExperience);
    v10 = Logger.logObject.getter();
    v11 = static os_log_type_t.error.getter();
    if (!os_log_type_enabled(v10, v11))
    {
      goto LABEL_24;
    }

    v12 = swift_slowAlloc();
    *v12 = 0;
    v13 = "Remote info copy type mismatch";
    goto LABEL_23;
  }

  v18 = [a1 name];
  if (!v18)
  {
    v19 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v18 = MEMORY[0x26D6B1210](v19);
  }

  [v23 setTvName_];

  if ([a1 respondsToSelector_])
  {
    [a1 enableFindingSession_];
  }

  [v3 setDevice_];
  v20 = TVRUIFindingSession.findingViewController(for:dismissedHandler:)(v23, a2, a3);

  return v20;
}

id TVRUIFindingSession.findingViewController(for:dismissedHandler:)(void *a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v8 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v9 = type metadata accessor for FindingSessionPresentationController();
  v10 = objc_allocWithZone(v9);
  v11 = &v10[OBJC_IVAR____TtC10TVRemoteUI36FindingSessionPresentationController_didDismissHandler];
  *v11 = partial apply for closure #1 in TVRUIFindingSession.findingViewController(for:dismissedHandler:);
  v11[1] = v8;
  v26.receiver = v10;
  v26.super_class = v9;
  v12 = objc_msgSendSuper2(&v26, sel_init);
  [v4 setFindingSessionPresentationController_];

  v13 = TVRCSiriRemoteInfo.discoveryToken()();
  if (v13)
  {
    v14 = v13;
    v15 = objc_allocWithZone(type metadata accessor for FindingViewController());
    v16 = a1;
    v17 = specialized FindingViewController.init(discoveryToken:remoteInfo:)(v14, v16);

    v18 = &v17[OBJC_IVAR____TtC10TVRemoteUI21FindingViewController_dismissedHandler];
    v19 = *&v17[OBJC_IVAR____TtC10TVRemoteUI21FindingViewController_dismissedHandler];
    *v18 = a2;
    *(v18 + 1) = a3;

    outlined consume of (@escaping @callee_guaranteed (@guaranteed FMR1HapticPattern?, @in_guaranteed Any?) -> ())?(v19);
    [v4 setFindingVC_];
    v20 = [v4 findingVC];
  }

  else
  {
    if (one-time initialization token for findingExperience != -1)
    {
      swift_once();
    }

    v21 = type metadata accessor for Logger();
    __swift_project_value_buffer(v21, static Logger.findingExperience);
    v22 = Logger.logObject.getter();
    v23 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v22, v23))
    {
      v24 = swift_slowAlloc();
      *v24 = 0;
      _os_log_impl(&dword_26CFEB000, v22, v23, "Failed to create discovery token", v24, 2u);
      MEMORY[0x26D6B2710](v24, -1, -1);
    }

    return 0;
  }

  return v20;
}

void closure #1 in TVRUIFindingSession.findingViewController(for:dismissedHandler:)()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    v2 = [Strong device];

    if (v2)
    {
      if ([v2 respondsToSelector_])
      {
        [v2 enableFindingSession_];
      }

      swift_unknownObjectRelease();
    }
  }
}

NIDiscoveryToken_optional __swiftcall TVRCSiriRemoteInfo.discoveryToken()()
{
  v1 = [v0 btAddressData];
  if (v1)
  {
    v3 = v1;
    v4 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
    v6 = v5;

    outlined consume of Data._Representation(v4, v6);
    v1 = [v0 irkData];
    if (v1)
    {
      v7 = v1;
      v8 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
      v10 = v9;

      outlined consume of Data._Representation(v8, v10);
      v1 = [v0 btAddressData];
      if (v1)
      {
        v11 = v1;
        v12 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
        v14 = v13;

        v15.super.isa = Data._bridgeToObjectiveC()().super.isa;
        outlined consume of Data._Representation(v12, v14);
        v1 = [v0 irkData];
        if (v1)
        {
          v16 = v1;
          v17 = objc_opt_self();
          v18 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
          v20 = v19;

          isa = Data._bridgeToObjectiveC()().super.isa;
          outlined consume of Data._Representation(v18, v20);
          v22 = [v17 generateBluetoothDeviceTokenWithPublicAddress:v15.super.isa IRK:isa];

          v1 = v22;
          goto LABEL_9;
        }
      }

      else
      {
        __break(1u);
      }

      __break(1u);
    }
  }

LABEL_9:
  result.value.super.isa = v1;
  result.is_nil = v2;
  return result;
}

Swift::Void __swiftcall TVRUIFindingSession.stop()()
{
  v1 = [v0 findingVC];
  if (v1)
  {
    v6 = v1;
    if (one-time initialization token for findingExperience != -1)
    {
      swift_once();
    }

    v2 = type metadata accessor for Logger();
    __swift_project_value_buffer(v2, static Logger.findingExperience);
    v3 = Logger.logObject.getter();
    v4 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v3, v4))
    {
      v5 = swift_slowAlloc();
      *v5 = 0;
      _os_log_impl(&dword_26CFEB000, v3, v4, "Stop finding remote", v5, 2u);
      MEMORY[0x26D6B2710](v5, -1, -1);
    }

    [v6 dismissViewControllerAnimated:1 completion:0];
  }
}

TVRUIFindingSession __swiftcall TVRUIFindingSession.init()()
{
  v0 = objc_allocWithZone(swift_getObjCClassFromMetadata());

  v1 = [v0 init];
  result.device = v4;
  result.findingSessionPresentationController = v3;
  result.findingVC = v2;
  result.super.isa = v1;
  return result;
}

id TVRUIFindingSession.init()()
{
  *(v0 + OBJC_IVAR___TVRUIFindingSession_findingVC) = 0;
  *(v0 + OBJC_IVAR___TVRUIFindingSession_findingSessionPresentationController) = 0;
  *(v0 + OBJC_IVAR___TVRUIFindingSession_device) = 0;
  v2.super_class = TVRUIFindingSession;
  return objc_msgSendSuper2(&v2, sel_init);
}

id FindingSessionPresentationController.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for FindingSessionPresentationController();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t specialized FindingSessionPresentationController.presentationControllerDidDismiss(_:)()
{
  v1 = v0;
  if (one-time initialization token for findingExperience != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  __swift_project_value_buffer(v2, static Logger.findingExperience);
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&dword_26CFEB000, v3, v4, "presentationControllerDidDismiss", v5, 2u);
    MEMORY[0x26D6B2710](v5, -1, -1);
  }

  return (*(v1 + OBJC_IVAR____TtC10TVRemoteUI36FindingSessionPresentationController_didDismissHandler))();
}

id FMPFSKBTLevelRingNode.render()()
{
  IsReduceMotionEnabled = UIAccessibilityIsReduceMotionEnabled();
  v1 = *&v0[OBJC_IVAR____TtC10TVRemoteUI21FMPFSKBTLevelRingNode_visibilitySpring];
  v2 = (v1 + OBJC_IVAR____TtC10TVRemoteUI8FLSpring__s);
  swift_beginAccess();
  v3 = (v1 + OBJC_IVAR____TtC10TVRemoteUI8FLSpring__o);
  v4 = *v2 + *(v1 + OBJC_IVAR____TtC10TVRemoteUI8FLSpring__o);
  v5 = OBJC_IVAR____TtC10TVRemoteUI8FLSpring_stableValueThreshold;
  if (vabdd_f64(v2[35] + *(v1 + OBJC_IVAR____TtC10TVRemoteUI8FLSpring__o + 40), v4) <= *(v1 + OBJC_IVAR____TtC10TVRemoteUI8FLSpring_stableValueThreshold))
  {
    v4 = v2[35] + *(v1 + OBJC_IVAR____TtC10TVRemoteUI8FLSpring__o + 40);
  }

  [v0 setAlpha_];
  v6 = *&v0[OBJC_IVAR____TtC10TVRemoteUI21FMPFSKBTLevelRingNode_ringNode];
  v7 = *&v0[OBJC_IVAR____TtC10TVRemoteUI21FMPFSKBTLevelRingNode_collapseSpring];
  v8 = (v7 + OBJC_IVAR____TtC10TVRemoteUI8FLSpring__s);
  swift_beginAccess();
  v9 = (v7 + OBJC_IVAR____TtC10TVRemoteUI8FLSpring__o);
  v10 = *v8 + *(v7 + OBJC_IVAR____TtC10TVRemoteUI8FLSpring__o);
  v11 = OBJC_IVAR____TtC10TVRemoteUI8FLSpring_stableValueThreshold;
  if (vabdd_f64(v8[35] + *(v7 + OBJC_IVAR____TtC10TVRemoteUI8FLSpring__o + 40), v10) <= *(v7 + OBJC_IVAR____TtC10TVRemoteUI8FLSpring_stableValueThreshold))
  {
    v10 = v8[35] + v9[5];
  }

  [v6 setAlpha_];
  if (IsReduceMotionEnabled)
  {
    [v0 setScale_];
    v12 = 1.0;
  }

  else
  {
    v13 = *v2 + *v3;
    if (vabdd_f64(v2[35] + v3[5], v13) <= *(v1 + v5))
    {
      v13 = v2[35] + v3[5];
    }

    [v0 setScale_];
    v12 = *v8 + *v9;
    if (vabdd_f64(v8[35] + v9[5], v12) <= *(v7 + v11))
    {
      v12 = v8[35] + v9[5];
    }
  }

  return FMPFSKBTLevelRingNode.renderRingPath(at:)(v12);
}

id FMPFSKBTLevelRingNode.renderRingPath(at:)(double a1)
{
  v2 = *(v1 + OBJC_IVAR____TtC10TVRemoteUI21FMPFSKBTLevelRingNode_targetRadius);
  v3 = v2 * a1;
  v4 = v2 - v2 * a1 + v2 - v2 * a1 + 10.0;
  v5 = *(v1 + OBJC_IVAR____TtC10TVRemoteUI21FMPFSKBTLevelRingNode_collapseSpring);
  v6 = (v5 + OBJC_IVAR____TtC10TVRemoteUI8FLSpring__s);
  swift_beginAccess();
  if (vabdd_f64(v6[35] + *(v5 + OBJC_IVAR____TtC10TVRemoteUI8FLSpring__o + 40), *v6 + *(v5 + OBJC_IVAR____TtC10TVRemoteUI8FLSpring__o)) > *(v5 + OBJC_IVAR____TtC10TVRemoteUI8FLSpring_stableValueThreshold))
  {
    v7 = *v6 + *(v5 + OBJC_IVAR____TtC10TVRemoteUI8FLSpring__o);
  }

  else
  {
    v7 = v6[35] + *(v5 + OBJC_IVAR____TtC10TVRemoteUI8FLSpring__o + 40);
  }

  v8 = *(v1 + OBJC_IVAR____TtC10TVRemoteUI21FMPFSKBTLevelRingNode_ringNode);
  v9 = objc_opt_self();
  v10 = v9;
  if (v7 >= 0.7)
  {
    v21 = [v9 whiteColor];
    [v8 setStrokeColor_];

    v22 = [v10 clearColor];
    [v8 setFillColor_];

    Mutable = CGPathCreateMutable();
    CGMutablePathRef.addArc(center:radius:startAngle:endAngle:clockwise:transform:)();
  }

  else
  {
    v11 = [v9 clearColor];
    [v8 setStrokeColor_];

    v12 = [v10 whiteColor];
    [v8 setFillColor_];

    v13 = v3 + v4 * 0.5;
    v14 = v3 - v4 * 0.5;
    v15 = -v13;
    v16 = v13 + v13;
    v17 = objc_opt_self();
    v18 = [v17 bezierPathWithOvalInRect_];
    v19 = [v17 bezierPathWithOvalInRect_];
    [v18 appendPath_];
    [v18 setUsesEvenOddFillRule_];
    Mutable = [v18 CGPath];

    v4 = 0.0;
  }

  [v8 setPath_];

  return [v8 setLineWidth_];
}

char *FMPFSKBTLevelsNode.init()()
{
  v12 = MEMORY[0x277D84F90];
  specialized ContiguousArray.reserveCapacity(_:)();
  closure #1 in FMPFSKBTLevelsNode.init()(0, 0.5);
  specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
  specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
  specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
  specialized ContiguousArray._endMutation()();
  closure #1 in FMPFSKBTLevelsNode.init()(1, 1.0);
  specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
  specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
  specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
  specialized ContiguousArray._endMutation()();
  *&v0[OBJC_IVAR____TtC10TVRemoteUI18FMPFSKBTLevelsNode_ringNodes] = v12;
  v11.receiver = v0;
  v11.super_class = type metadata accessor for FMPFSKBTLevelsNode();
  v1 = objc_msgSendSuper2(&v11, sel_init);
  v2 = *&v1[OBJC_IVAR____TtC10TVRemoteUI18FMPFSKBTLevelsNode_ringNodes];
  if (v2 >> 62)
  {
    goto LABEL_16;
  }

  v3 = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
  while (1)
  {
    v4 = v1;

    if (!v3)
    {
      break;
    }

    while (!__OFSUB__(v3--, 1))
    {
      if ((v2 & 0xC000000000000001) != 0)
      {
        v6 = MEMORY[0x26D6B1680](v3, v2);
      }

      else
      {
        if ((v3 & 0x8000000000000000) != 0)
        {
          goto LABEL_14;
        }

        if (v3 >= *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_15;
        }

        v6 = *(v2 + 32 + 8 * v3);
      }

      v7 = v6;
      [v4 addChild_];

      if (!v3)
      {
        goto LABEL_12;
      }
    }

    __break(1u);
LABEL_14:
    __break(1u);
LABEL_15:
    __break(1u);
LABEL_16:
    v9 = v2 & 0xFFFFFFFFFFFFFF8;
    if (v2 < 0)
    {
      v9 = v2;
    }

    v10 = v1;
    v3 = MEMORY[0x26D6B1780](v9);
    v1 = v10;
  }

LABEL_12:

  return v4;
}

char *closure #1 in FMPFSKBTLevelsNode.init()(uint64_t a1, double a2)
{
  v4 = [objc_opt_self() mainScreen];
  [v4 bounds];
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v12 = v11;

  v40.origin.x = v6;
  v40.origin.y = v8;
  v40.size.width = v10;
  v40.size.height = v12;
  v13 = CGRectGetHeight(v40) * a2 * 0.5;
  v14 = a1 * -0.05 + 0.45;
  v15 = a1 * 0.33 + 1.0;
  v16 = type metadata accessor for FMPFSKBTLevelRingNode();
  v17 = objc_allocWithZone(v16);
  v18 = OBJC_IVAR____TtC10TVRemoteUI21FMPFSKBTLevelRingNode_visibilitySpring;
  *&v17[v18] = specialized static FMPFFluidSpring.lazySpringWith(initialValue:stableValueThreshold:)(0, 0, 0x3F50624DD2F1A9FCLL, 0);
  v19 = OBJC_IVAR____TtC10TVRemoteUI21FMPFSKBTLevelRingNode_collapseSpring;
  *&v17[v19] = specialized static FMPFFluidSpring.lazySpringWith(initialValue:stableValueThreshold:)(0x3FF0000000000000, 0, 0x3F50624DD2F1A9FCLL, 0);
  v20 = OBJC_IVAR____TtC10TVRemoteUI21FMPFSKBTLevelRingNode_ringNode;
  *&v17[v20] = [objc_allocWithZone(MEMORY[0x277CDCF70]) init];
  *&v17[OBJC_IVAR____TtC10TVRemoteUI21FMPFSKBTLevelRingNode_threshold] = a2;
  *&v17[OBJC_IVAR____TtC10TVRemoteUI21FMPFSKBTLevelRingNode_targetAlpha] = v14;
  *&v17[OBJC_IVAR____TtC10TVRemoteUI21FMPFSKBTLevelRingNode_targetWidth] = 0x4024000000000000;
  *&v17[OBJC_IVAR____TtC10TVRemoteUI21FMPFSKBTLevelRingNode_targetRadius] = round(v13);
  v21 = (*&v17[v18] + OBJC_IVAR____TtC10TVRemoteUI8FLSpring_parameters);
  v22 = *v21;
  v23 = v21[1];
  v24 = v21[2];
  v25 = v21[3];
  v21[2] = v15;
  FLSpring.parameters.didset(v22, v23, v24, v25);
  v33.receiver = v17;
  v33.super_class = v16;
  v26 = objc_msgSendSuper2(&v33, sel_init);
  v27 = OBJC_IVAR____TtC10TVRemoteUI21FMPFSKBTLevelRingNode_ringNode;
  v28 = *&v26[OBJC_IVAR____TtC10TVRemoteUI21FMPFSKBTLevelRingNode_ringNode];
  v29 = v26;
  v30 = v28;
  Mutable = CGPathCreateMutable();
  v34 = 0x3FF0000000000000;
  v35 = 0;
  v36 = 0;
  v37 = 0x3FF0000000000000;
  v38 = 0;
  v39 = 0;
  CGMutablePathRef.addArc(center:radius:startAngle:endAngle:clockwise:transform:)();
  [v30 setPath_];

  [*&v26[v27] setLineWidth_];
  [v29 addChild_];

  return v29;
}

Swift::Void __swiftcall FMPFSKBTLevelsNode.show(sprung:)(Swift::Bool sprung)
{
  v35 = *(v1 + OBJC_IVAR____TtC10TVRemoteUI18FMPFSKBTLevelsNode_ringNodes);
  if (v35 >> 62)
  {
    goto LABEL_27;
  }

  for (i = *((v35 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = MEMORY[0x26D6B1780](v31))
  {
    v3 = 0;
    v4 = &OBJC_IVAR____TtC10TVRemoteUI8FLSpring__s;
    v32 = i;
    while (1)
    {
      if ((v35 & 0xC000000000000001) != 0)
      {
        v9 = MEMORY[0x26D6B1680](v3, v35);
      }

      else
      {
        if (v3 >= *((v35 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_26;
        }

        v9 = *(v35 + 8 * v3 + 32);
      }

      v10 = v9;
      v11 = v3 + 1;
      if (__OFADD__(v3, 1))
      {
        break;
      }

      v12 = OBJC_IVAR____TtC10TVRemoteUI21FMPFSKBTLevelRingNode_visibilitySpring;
      v13 = *&v9[OBJC_IVAR____TtC10TVRemoteUI21FMPFSKBTLevelRingNode_visibilitySpring];
      if (sprung)
      {
        v14 = v13 + OBJC_IVAR____TtC10TVRemoteUI15FMPFFluidSpring_ftarget;
        *v14 = 0x3FF0000000000000;
        *(v14 + 8) = 0;
        v15 = v4;
        v16 = v13 + *v4;
        swift_beginAccess();
        v17 = v13 + OBJC_IVAR____TtC10TVRemoteUI8FLSpring__o;
        v18 = *(v13 + OBJC_IVAR____TtC10TVRemoteUI8FLSpring__o + 40);
        if (*(v16 + 280) + v18 == 1.79769313e308)
        {
          FLSpring.resetImmediately(toValue:)(1.0);
          *(v13 + OBJC_IVAR____TtC10TVRemoteUI15FMPFFluidSpring_ready) = 0;
          v18 = *(v17 + 40);
        }

        v19 = 1.0 - v18;
        *(v16 + 280) = v19;
        *(v16 + 240) = v19;
        *(v16 + 248) = 0;
        v4 = v15;
      }

      else
      {
        FLSpring.resetImmediately(toValue:)(1.0);
        *(v13 + OBJC_IVAR____TtC10TVRemoteUI15FMPFFluidSpring_ready) = 0;
        IsReduceMotionEnabled = UIAccessibilityIsReduceMotionEnabled();
        v20 = *&v10[v12];
        v21 = v4;
        v22 = (v20 + *v4);
        swift_beginAccess();
        v23 = *v22 + *(v20 + OBJC_IVAR____TtC10TVRemoteUI8FLSpring__o);
        if (vabdd_f64(v22[35] + *(v20 + OBJC_IVAR____TtC10TVRemoteUI8FLSpring__o + 40), v23) <= *(v20 + OBJC_IVAR____TtC10TVRemoteUI8FLSpring_stableValueThreshold))
        {
          v23 = v22[35] + *(v20 + OBJC_IVAR____TtC10TVRemoteUI8FLSpring__o + 40);
        }

        [v10 setAlpha_];
        v24 = *&v10[OBJC_IVAR____TtC10TVRemoteUI21FMPFSKBTLevelRingNode_ringNode];
        v25 = OBJC_IVAR____TtC10TVRemoteUI21FMPFSKBTLevelRingNode_collapseSpring;
        v26 = *&v10[OBJC_IVAR____TtC10TVRemoteUI21FMPFSKBTLevelRingNode_collapseSpring];
        v27 = (v26 + *v21);
        swift_beginAccess();
        v28 = *v27 + *(v26 + OBJC_IVAR____TtC10TVRemoteUI8FLSpring__o);
        if (vabdd_f64(v27[35] + *(v26 + OBJC_IVAR____TtC10TVRemoteUI8FLSpring__o + 40), v28) <= *(v26 + OBJC_IVAR____TtC10TVRemoteUI8FLSpring_stableValueThreshold))
        {
          v28 = v27[35] + *(v26 + OBJC_IVAR____TtC10TVRemoteUI8FLSpring__o + 40);
        }

        [v24 setAlpha_];
        v29 = *&v10[v12];
        v30 = (v29 + *v21);
        if (IsReduceMotionEnabled)
        {
          swift_beginAccess();
          [v10 setScale_];
          FMPFSKBTLevelRingNode.renderRingPath(at:)(1.0);
          i = v32;
          v4 = v21;
        }

        else
        {
          swift_beginAccess();
          v5 = *v30 + *(v29 + OBJC_IVAR____TtC10TVRemoteUI8FLSpring__o);
          if (vabdd_f64(v30[35] + *(v29 + OBJC_IVAR____TtC10TVRemoteUI8FLSpring__o + 40), v5) <= *(v29 + OBJC_IVAR____TtC10TVRemoteUI8FLSpring_stableValueThreshold))
          {
            v5 = v30[35] + *(v29 + OBJC_IVAR____TtC10TVRemoteUI8FLSpring__o + 40);
          }

          [v10 setScale_];
          v6 = *&v10[v25];
          v4 = v21;
          v7 = (v6 + *v21);
          swift_beginAccess();
          v8 = *v7 + *(v6 + OBJC_IVAR____TtC10TVRemoteUI8FLSpring__o);
          if (vabdd_f64(v7[35] + *(v6 + OBJC_IVAR____TtC10TVRemoteUI8FLSpring__o + 40), v8) <= *(v6 + OBJC_IVAR____TtC10TVRemoteUI8FLSpring_stableValueThreshold))
          {
            v8 = v7[35] + *(v6 + OBJC_IVAR____TtC10TVRemoteUI8FLSpring__o + 40);
          }

          FMPFSKBTLevelRingNode.renderRingPath(at:)(v8);
          i = v32;
        }
      }

      ++v3;
      if (v11 == i)
      {
        return;
      }
    }

    __break(1u);
LABEL_26:
    __break(1u);
LABEL_27:
    if (v35 < 0)
    {
      v31 = v35;
    }

    else
    {
      v31 = v35 & 0xFFFFFFFFFFFFFF8;
    }
  }
}

Swift::Void __swiftcall FMPFSKBTLevelsNode.hide(sprung:)(Swift::Bool sprung)
{
  v35 = *(v1 + OBJC_IVAR____TtC10TVRemoteUI18FMPFSKBTLevelsNode_ringNodes);
  if (v35 >> 62)
  {
    goto LABEL_27;
  }

  for (i = *((v35 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = MEMORY[0x26D6B1780](v31))
  {
    v3 = 0;
    v4 = &OBJC_IVAR____TtC10TVRemoteUI8FLSpring__s;
    v32 = i;
    while (1)
    {
      if ((v35 & 0xC000000000000001) != 0)
      {
        v9 = MEMORY[0x26D6B1680](v3, v35);
      }

      else
      {
        if (v3 >= *((v35 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_26;
        }

        v9 = *(v35 + 8 * v3 + 32);
      }

      v10 = v9;
      v11 = v3 + 1;
      if (__OFADD__(v3, 1))
      {
        break;
      }

      v12 = OBJC_IVAR____TtC10TVRemoteUI21FMPFSKBTLevelRingNode_visibilitySpring;
      v13 = *&v9[OBJC_IVAR____TtC10TVRemoteUI21FMPFSKBTLevelRingNode_visibilitySpring];
      if (sprung)
      {
        v14 = v13 + OBJC_IVAR____TtC10TVRemoteUI15FMPFFluidSpring_ftarget;
        *v14 = 0;
        *(v14 + 8) = 0;
        v15 = v4;
        v16 = v13 + *v4;
        swift_beginAccess();
        v17 = v13 + OBJC_IVAR____TtC10TVRemoteUI8FLSpring__o;
        v18 = *(v13 + OBJC_IVAR____TtC10TVRemoteUI8FLSpring__o + 40);
        if (*(v16 + 280) + v18 == 1.79769313e308)
        {
          FLSpring.resetImmediately(toValue:)(0.0);
          *(v13 + OBJC_IVAR____TtC10TVRemoteUI15FMPFFluidSpring_ready) = 0;
          v18 = *(v17 + 40);
        }

        v19 = 0.0 - v18;
        *(v16 + 280) = v19;
        *(v16 + 240) = v19;
        *(v16 + 248) = 0;
        v4 = v15;
      }

      else
      {
        FLSpring.resetImmediately(toValue:)(0.0);
        *(v13 + OBJC_IVAR____TtC10TVRemoteUI15FMPFFluidSpring_ready) = 0;
        IsReduceMotionEnabled = UIAccessibilityIsReduceMotionEnabled();
        v20 = *&v10[v12];
        v21 = v4;
        v22 = (v20 + *v4);
        swift_beginAccess();
        v23 = *v22 + *(v20 + OBJC_IVAR____TtC10TVRemoteUI8FLSpring__o);
        if (vabdd_f64(v22[35] + *(v20 + OBJC_IVAR____TtC10TVRemoteUI8FLSpring__o + 40), v23) <= *(v20 + OBJC_IVAR____TtC10TVRemoteUI8FLSpring_stableValueThreshold))
        {
          v23 = v22[35] + *(v20 + OBJC_IVAR____TtC10TVRemoteUI8FLSpring__o + 40);
        }

        [v10 setAlpha_];
        v24 = *&v10[OBJC_IVAR____TtC10TVRemoteUI21FMPFSKBTLevelRingNode_ringNode];
        v25 = OBJC_IVAR____TtC10TVRemoteUI21FMPFSKBTLevelRingNode_collapseSpring;
        v26 = *&v10[OBJC_IVAR____TtC10TVRemoteUI21FMPFSKBTLevelRingNode_collapseSpring];
        v27 = (v26 + *v21);
        swift_beginAccess();
        v28 = *v27 + *(v26 + OBJC_IVAR____TtC10TVRemoteUI8FLSpring__o);
        if (vabdd_f64(v27[35] + *(v26 + OBJC_IVAR____TtC10TVRemoteUI8FLSpring__o + 40), v28) <= *(v26 + OBJC_IVAR____TtC10TVRemoteUI8FLSpring_stableValueThreshold))
        {
          v28 = v27[35] + *(v26 + OBJC_IVAR____TtC10TVRemoteUI8FLSpring__o + 40);
        }

        [v24 setAlpha_];
        v29 = *&v10[v12];
        v30 = (v29 + *v21);
        if (IsReduceMotionEnabled)
        {
          swift_beginAccess();
          [v10 setScale_];
          FMPFSKBTLevelRingNode.renderRingPath(at:)(1.0);
          i = v32;
          v4 = v21;
        }

        else
        {
          swift_beginAccess();
          v5 = *v30 + *(v29 + OBJC_IVAR____TtC10TVRemoteUI8FLSpring__o);
          if (vabdd_f64(v30[35] + *(v29 + OBJC_IVAR____TtC10TVRemoteUI8FLSpring__o + 40), v5) <= *(v29 + OBJC_IVAR____TtC10TVRemoteUI8FLSpring_stableValueThreshold))
          {
            v5 = v30[35] + *(v29 + OBJC_IVAR____TtC10TVRemoteUI8FLSpring__o + 40);
          }

          [v10 setScale_];
          v6 = *&v10[v25];
          v4 = v21;
          v7 = (v6 + *v21);
          swift_beginAccess();
          v8 = *v7 + *(v6 + OBJC_IVAR____TtC10TVRemoteUI8FLSpring__o);
          if (vabdd_f64(v7[35] + *(v6 + OBJC_IVAR____TtC10TVRemoteUI8FLSpring__o + 40), v8) <= *(v6 + OBJC_IVAR____TtC10TVRemoteUI8FLSpring_stableValueThreshold))
          {
            v8 = v7[35] + *(v6 + OBJC_IVAR____TtC10TVRemoteUI8FLSpring__o + 40);
          }

          FMPFSKBTLevelRingNode.renderRingPath(at:)(v8);
          i = v32;
        }
      }

      ++v3;
      if (v11 == i)
      {
        return;
      }
    }

    __break(1u);
LABEL_26:
    __break(1u);
LABEL_27:
    if (v35 < 0)
    {
      v31 = v35;
    }

    else
    {
      v31 = v35 & 0xFFFFFFFFFFFFFF8;
    }
  }
}

uint64_t FMPFSKBTLevelsNode.update(diskSize:sprung:)(char a1, double a2)
{
  v4 = *(v2 + OBJC_IVAR____TtC10TVRemoteUI18FMPFSKBTLevelsNode_ringNodes);
  v81 = MEMORY[0x277D84F90];
  v69 = v4 >> 62;
  if (v4 >> 62)
  {
    goto LABEL_94;
  }

  for (i = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = MEMORY[0x26D6B1780](v67))
  {
    v6 = MEMORY[0x277D84F90];
    if (i)
    {
      v7 = 0;
      while (1)
      {
        if ((v4 & 0xC000000000000001) != 0)
        {
          v8 = MEMORY[0x26D6B1680](v7, v4);
        }

        else
        {
          if (v7 >= *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_87;
          }

          v8 = *(v4 + 8 * v7 + 32);
        }

        v9 = v7 + 1;
        if (__OFADD__(v7, 1))
        {
          break;
        }

        if (*&v8[OBJC_IVAR____TtC10TVRemoteUI21FMPFSKBTLevelRingNode_threshold] > a2)
        {
        }

        else
        {
          specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
          specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
          specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
          specialized ContiguousArray._endMutation()();
        }

        ++v7;
        if (v9 == i)
        {
          v6 = v81;
          goto LABEL_15;
        }
      }

      __break(1u);
LABEL_87:
      __break(1u);
LABEL_88:
      __break(1u);
LABEL_89:
      __break(1u);
LABEL_90:
      __break(1u);
LABEL_91:
      __break(1u);
      goto LABEL_92;
    }

LABEL_15:
    if (v6 < 0 || (v6 & 0x4000000000000000) != 0)
    {
      v10 = MEMORY[0x26D6B1780](v6);
    }

    else
    {
      v10 = *(v6 + 16);
    }

    if (v10)
    {
      v11 = 0;
      v75 = v10;
      v77 = v6 & 0xC000000000000001;
      v70 = v6;
      v71 = v4;
      do
      {
        if (v77)
        {
          v17 = MEMORY[0x26D6B1680](v11, v6);
        }

        else
        {
          if (v11 >= *(v6 + 16))
          {
            goto LABEL_89;
          }

          v17 = *(v6 + 8 * v11 + 32);
        }

        v18 = v17;
        v16 = v11 + 1;
        if (__OFADD__(v11, 1))
        {
          goto LABEL_88;
        }

        v19 = OBJC_IVAR____TtC10TVRemoteUI21FMPFSKBTLevelRingNode_collapseSpring;
        v20 = *&v17[OBJC_IVAR____TtC10TVRemoteUI21FMPFSKBTLevelRingNode_collapseSpring];
        if (a1)
        {
          v21 = v20 + OBJC_IVAR____TtC10TVRemoteUI15FMPFFluidSpring_ftarget;
          *v21 = 0;
          *(v21 + 8) = 0;
          v22 = v20 + OBJC_IVAR____TtC10TVRemoteUI8FLSpring__s;
          swift_beginAccess();
          v23 = v20 + OBJC_IVAR____TtC10TVRemoteUI8FLSpring__o;
          v24 = *(v20 + OBJC_IVAR____TtC10TVRemoteUI8FLSpring__o + 40);
          if (*(v22 + 280) + v24 == 1.79769313e308)
          {
            FLSpring.resetImmediately(toValue:)(0.0);
            *(v20 + OBJC_IVAR____TtC10TVRemoteUI15FMPFFluidSpring_ready) = 0;
            v24 = *(v23 + 40);
          }

          v25 = 0.0 - v24;
          *(v22 + 280) = v25;
          *(v22 + 240) = v25;
          *(v22 + 248) = 0;
        }

        else
        {
          FLSpring.resetImmediately(toValue:)(0.0);
          *(v20 + OBJC_IVAR____TtC10TVRemoteUI15FMPFFluidSpring_ready) = 0;
          IsReduceMotionEnabled = UIAccessibilityIsReduceMotionEnabled();
          v26 = OBJC_IVAR____TtC10TVRemoteUI21FMPFSKBTLevelRingNode_visibilitySpring;
          v27 = *&v18[OBJC_IVAR____TtC10TVRemoteUI21FMPFSKBTLevelRingNode_visibilitySpring];
          v28 = (v27 + OBJC_IVAR____TtC10TVRemoteUI8FLSpring__s);
          swift_beginAccess();
          v29 = *v28 + *(v27 + OBJC_IVAR____TtC10TVRemoteUI8FLSpring__o);
          if (vabdd_f64(v28[35] + *(v27 + OBJC_IVAR____TtC10TVRemoteUI8FLSpring__o + 40), v29) <= *(v27 + OBJC_IVAR____TtC10TVRemoteUI8FLSpring_stableValueThreshold))
          {
            v29 = v28[35] + *(v27 + OBJC_IVAR____TtC10TVRemoteUI8FLSpring__o + 40);
          }

          [v18 setAlpha_];
          v30 = *&v18[OBJC_IVAR____TtC10TVRemoteUI21FMPFSKBTLevelRingNode_ringNode];
          v31 = *&v18[v19];
          v32 = (v31 + OBJC_IVAR____TtC10TVRemoteUI8FLSpring__s);
          swift_beginAccess();
          v33 = *v32 + *(v31 + OBJC_IVAR____TtC10TVRemoteUI8FLSpring__o);
          if (vabdd_f64(v32[35] + *(v31 + OBJC_IVAR____TtC10TVRemoteUI8FLSpring__o + 40), v33) <= *(v31 + OBJC_IVAR____TtC10TVRemoteUI8FLSpring_stableValueThreshold))
          {
            v33 = v32[35] + *(v31 + OBJC_IVAR____TtC10TVRemoteUI8FLSpring__o + 40);
          }

          [v30 setAlpha_];
          v34 = *&v18[v26];
          v35 = (v34 + OBJC_IVAR____TtC10TVRemoteUI8FLSpring__s);
          if (IsReduceMotionEnabled)
          {
            swift_beginAccess();
            [v18 setScale_];
            FMPFSKBTLevelRingNode.renderRingPath(at:)(1.0);
          }

          else
          {
            swift_beginAccess();
            v12 = *v35 + *(v34 + OBJC_IVAR____TtC10TVRemoteUI8FLSpring__o);
            if (vabdd_f64(v35[35] + *(v34 + OBJC_IVAR____TtC10TVRemoteUI8FLSpring__o + 40), v12) <= *(v34 + OBJC_IVAR____TtC10TVRemoteUI8FLSpring_stableValueThreshold))
            {
              v12 = v35[35] + *(v34 + OBJC_IVAR____TtC10TVRemoteUI8FLSpring__o + 40);
            }

            [v18 setScale_];
            v13 = *&v18[v19];
            v14 = (v13 + OBJC_IVAR____TtC10TVRemoteUI8FLSpring__s);
            swift_beginAccess();
            v15 = *v14 + *(v13 + OBJC_IVAR____TtC10TVRemoteUI8FLSpring__o);
            if (vabdd_f64(v14[35] + *(v13 + OBJC_IVAR____TtC10TVRemoteUI8FLSpring__o + 40), v15) <= *(v13 + OBJC_IVAR____TtC10TVRemoteUI8FLSpring_stableValueThreshold))
            {
              v15 = v14[35] + *(v13 + OBJC_IVAR____TtC10TVRemoteUI8FLSpring__o + 40);
            }

            FMPFSKBTLevelRingNode.renderRingPath(at:)(v15);
          }

          v6 = v70;
          v4 = v71;
          v16 = v11 + 1;
        }

        ++v11;
      }

      while (v16 != v75);
    }

    v80 = MEMORY[0x277D84F90];
    if (v69)
    {
      if (v4 < 0)
      {
        v40 = v4;
      }

      else
      {
        v40 = v4 & 0xFFFFFFFFFFFFFF8;
      }

      v36 = MEMORY[0x26D6B1780](v40);
      if (v36)
      {
LABEL_44:
        v37 = 0;
        while (1)
        {
          if ((v4 & 0xC000000000000001) != 0)
          {
            v38 = MEMORY[0x26D6B1680](v37, v4);
          }

          else
          {
            if (v37 >= *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              goto LABEL_91;
            }

            v38 = *(v4 + 8 * v37 + 32);
          }

          v39 = v37 + 1;
          if (__OFADD__(v37, 1))
          {
            goto LABEL_90;
          }

          if (*&v38[OBJC_IVAR____TtC10TVRemoteUI21FMPFSKBTLevelRingNode_threshold] <= a2)
          {
          }

          else
          {
            specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
            specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
            specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
            specialized ContiguousArray._endMutation()();
          }

          ++v37;
          if (v39 == v36)
          {
            v4 = v80;
            if ((v80 & 0x8000000000000000) == 0)
            {
              goto LABEL_61;
            }

            goto LABEL_99;
          }
        }
      }
    }

    else
    {
      v36 = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v36)
      {
        goto LABEL_44;
      }
    }

    v4 = MEMORY[0x277D84F90];
    if ((MEMORY[0x277D84F90] & 0x8000000000000000) == 0)
    {
LABEL_61:
      if ((v4 & 0x4000000000000000) == 0)
      {
        v41 = *(v4 + 16);
        if (!v41)
        {
        }

        goto LABEL_63;
      }
    }

LABEL_99:
    v41 = MEMORY[0x26D6B1780](v4);
    if (!v41)
    {
      break;
    }

LABEL_63:
    v42 = 0;
    v78 = v4 & 0xC000000000000001;
    a2 = 1.0;
    v73 = v41;
    v74 = v4;
    while (1)
    {
      if (v78)
      {
        v47 = MEMORY[0x26D6B1680](v42, v4);
      }

      else
      {
        if (v42 >= *(v4 + 16))
        {
          goto LABEL_93;
        }

        v47 = *(v4 + 8 * v42 + 32);
      }

      v48 = v47;
      v49 = v42 + 1;
      if (__OFADD__(v42, 1))
      {
        break;
      }

      v50 = OBJC_IVAR____TtC10TVRemoteUI21FMPFSKBTLevelRingNode_collapseSpring;
      v51 = *&v47[OBJC_IVAR____TtC10TVRemoteUI21FMPFSKBTLevelRingNode_collapseSpring];
      if (a1)
      {
        v52 = v51 + OBJC_IVAR____TtC10TVRemoteUI15FMPFFluidSpring_ftarget;
        *v52 = 0x3FF0000000000000;
        *(v52 + 8) = 0;
        v53 = v51 + OBJC_IVAR____TtC10TVRemoteUI8FLSpring__s;
        swift_beginAccess();
        v54 = v51 + OBJC_IVAR____TtC10TVRemoteUI8FLSpring__o;
        v55 = *(v51 + OBJC_IVAR____TtC10TVRemoteUI8FLSpring__o + 40);
        if (*(v53 + 280) + v55 == 1.79769313e308)
        {
          FLSpring.resetImmediately(toValue:)(1.0);
          *(v51 + OBJC_IVAR____TtC10TVRemoteUI15FMPFFluidSpring_ready) = 0;
          v55 = *(v54 + 40);
        }

        v56 = 1.0 - v55;
        *(v53 + 280) = v56;
        *(v53 + 240) = v56;
        *(v53 + 248) = 0;
      }

      else
      {
        FLSpring.resetImmediately(toValue:)(1.0);
        *(v51 + OBJC_IVAR____TtC10TVRemoteUI15FMPFFluidSpring_ready) = 0;
        v76 = UIAccessibilityIsReduceMotionEnabled();
        v57 = OBJC_IVAR____TtC10TVRemoteUI21FMPFSKBTLevelRingNode_visibilitySpring;
        v58 = *&v48[OBJC_IVAR____TtC10TVRemoteUI21FMPFSKBTLevelRingNode_visibilitySpring];
        v59 = (v58 + OBJC_IVAR____TtC10TVRemoteUI8FLSpring__s);
        swift_beginAccess();
        v60 = *v59 + *(v58 + OBJC_IVAR____TtC10TVRemoteUI8FLSpring__o);
        if (vabdd_f64(v59[35] + *(v58 + OBJC_IVAR____TtC10TVRemoteUI8FLSpring__o + 40), v60) <= *(v58 + OBJC_IVAR____TtC10TVRemoteUI8FLSpring_stableValueThreshold))
        {
          v60 = v59[35] + *(v58 + OBJC_IVAR____TtC10TVRemoteUI8FLSpring__o + 40);
        }

        [v48 setAlpha_];
        v61 = *&v48[OBJC_IVAR____TtC10TVRemoteUI21FMPFSKBTLevelRingNode_ringNode];
        v62 = *&v48[v50];
        v63 = (v62 + OBJC_IVAR____TtC10TVRemoteUI8FLSpring__s);
        swift_beginAccess();
        v64 = *v63 + *(v62 + OBJC_IVAR____TtC10TVRemoteUI8FLSpring__o);
        if (vabdd_f64(v63[35] + *(v62 + OBJC_IVAR____TtC10TVRemoteUI8FLSpring__o + 40), v64) <= *(v62 + OBJC_IVAR____TtC10TVRemoteUI8FLSpring_stableValueThreshold))
        {
          v64 = v63[35] + *(v62 + OBJC_IVAR____TtC10TVRemoteUI8FLSpring__o + 40);
        }

        [v61 setAlpha_];
        v65 = *&v48[v57];
        v66 = (v65 + OBJC_IVAR____TtC10TVRemoteUI8FLSpring__s);
        if (v76)
        {
          swift_beginAccess();
          [v48 setScale_];
          FMPFSKBTLevelRingNode.renderRingPath(at:)(1.0);
        }

        else
        {
          swift_beginAccess();
          v43 = *v66 + *(v65 + OBJC_IVAR____TtC10TVRemoteUI8FLSpring__o);
          if (vabdd_f64(v66[35] + *(v65 + OBJC_IVAR____TtC10TVRemoteUI8FLSpring__o + 40), v43) <= *(v65 + OBJC_IVAR____TtC10TVRemoteUI8FLSpring_stableValueThreshold))
          {
            v43 = v66[35] + *(v65 + OBJC_IVAR____TtC10TVRemoteUI8FLSpring__o + 40);
          }

          [v48 setScale_];
          v44 = *&v48[v50];
          v45 = (v44 + OBJC_IVAR____TtC10TVRemoteUI8FLSpring__s);
          swift_beginAccess();
          v46 = *v45 + *(v44 + OBJC_IVAR____TtC10TVRemoteUI8FLSpring__o);
          if (vabdd_f64(v45[35] + *(v44 + OBJC_IVAR____TtC10TVRemoteUI8FLSpring__o + 40), v46) <= *(v44 + OBJC_IVAR____TtC10TVRemoteUI8FLSpring_stableValueThreshold))
          {
            v46 = v45[35] + *(v44 + OBJC_IVAR____TtC10TVRemoteUI8FLSpring__o + 40);
          }

          FMPFSKBTLevelRingNode.renderRingPath(at:)(v46);
        }

        v41 = v73;
        v4 = v74;
      }

      ++v42;
      if (v49 == v41)
      {
      }
    }

LABEL_92:
    __break(1u);
LABEL_93:
    __break(1u);
LABEL_94:
    if (v4 < 0)
    {
      v67 = v4;
    }

    else
    {
      v67 = v4 & 0xFFFFFFFFFFFFFF8;
    }
  }
}

Swift::Void __swiftcall FMPFSKBTLevelsNode.update(delta:)(Swift::Double_optional delta)
{
  v3 = *(v2 + OBJC_IVAR____TtC10TVRemoteUI18FMPFSKBTLevelsNode_ringNodes);
  if (v3 >> 62)
  {
    goto LABEL_16;
  }

  for (i = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10); i; *&delta.is_nil = v32)
  {
    v5 = 0;
    delta.value = *&delta.is_nil;
    if (v1)
    {
      v6 = 0.0;
    }

    else
    {
      v6 = *&delta.is_nil;
    }

    v35 = i;
    while (1)
    {
      if ((v3 & 0xC000000000000001) != 0)
      {
        *&delta.is_nil = MEMORY[0x26D6B1680](v5, v3);
      }

      else
      {
        if (v5 >= *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_15;
        }

        *&delta.is_nil = *(v3 + 8 * v5 + 32);
      }

      v7 = *&delta.is_nil;
      v8 = v5 + 1;
      if (__OFADD__(v5, 1))
      {
        break;
      }

      v9 = *(*&delta.is_nil + OBJC_IVAR____TtC10TVRemoteUI21FMPFSKBTLevelRingNode_visibilitySpring);
      v10 = (v9 + OBJC_IVAR____TtC10TVRemoteUI8FLSpring__s);
      swift_beginAccess();
      v11 = v10[35];
      v12 = v11 - *(v9 + OBJC_IVAR____TtC10TVRemoteUI8FLSpring__previousTarget);
      *(v9 + OBJC_IVAR____TtC10TVRemoteUI8FLSpring__previousTarget) = v11;
      *(v9 + OBJC_IVAR____TtC10TVRemoteUI8FLSpring__targetVelocity) = v12 / v6 * 0.25 + *(v9 + OBJC_IVAR____TtC10TVRemoteUI8FLSpring__targetVelocity) * 0.75;
      memcpy(__dst, v10, sizeof(__dst));
      FLCompoundSpring.step(deltaTime:)(&__src, v6);
      swift_beginAccess();
      memcpy(v10, &__src, 0x170uLL);
      v13 = v9 + OBJC_IVAR____TtC10TVRemoteUI8FLSpring__o;
      v14 = *(v9 + OBJC_IVAR____TtC10TVRemoteUI8FLSpring__o + 80);
      v52 = *(v9 + OBJC_IVAR____TtC10TVRemoteUI8FLSpring__o + 64);
      v53 = v14;
      v54 = *(v9 + OBJC_IVAR____TtC10TVRemoteUI8FLSpring__o + 96);
      v15 = *(v9 + OBJC_IVAR____TtC10TVRemoteUI8FLSpring__o + 16);
      v48 = *(v9 + OBJC_IVAR____TtC10TVRemoteUI8FLSpring__o);
      v49 = v15;
      v16 = *(v9 + OBJC_IVAR____TtC10TVRemoteUI8FLSpring__o + 32);
      v51 = *(v9 + OBJC_IVAR____TtC10TVRemoteUI8FLSpring__o + 48);
      v50 = v16;
      FLSimpleSpring.step(deltaTime:)(&v37, v6);
      v17 = *&v37._beta;
      *(v13 + 64) = *&v37._previousStiffness;
      *(v13 + 80) = v17;
      *(v13 + 96) = *&v37._omega1;
      v18 = *&v37.mass;
      *v13 = v37.state;
      *(v13 + 16) = v18;
      v19 = *&v37.stablePositionThreshold;
      *(v13 + 32) = *&v37.damping;
      *(v13 + 48) = v19;
      *(v9 + OBJC_IVAR____TtC10TVRemoteUI15FMPFFluidSpring_ready) = 1;
      v20 = *&v7[OBJC_IVAR____TtC10TVRemoteUI21FMPFSKBTLevelRingNode_collapseSpring];
      v21 = (v20 + OBJC_IVAR____TtC10TVRemoteUI8FLSpring__s);
      swift_beginAccess();
      v22 = v21[35];
      v23 = v22 - *(v20 + OBJC_IVAR____TtC10TVRemoteUI8FLSpring__previousTarget);
      *(v20 + OBJC_IVAR____TtC10TVRemoteUI8FLSpring__previousTarget) = v22;
      *(v20 + OBJC_IVAR____TtC10TVRemoteUI8FLSpring__targetVelocity) = v23 / v6 * 0.25 + *(v20 + OBJC_IVAR____TtC10TVRemoteUI8FLSpring__targetVelocity) * 0.75;
      memcpy(v47, v21, sizeof(v47));
      FLCompoundSpring.step(deltaTime:)(&v38, v6);
      swift_beginAccess();
      memcpy(v21, &v38, 0x170uLL);
      v24 = v20 + OBJC_IVAR____TtC10TVRemoteUI8FLSpring__o;
      v25 = *(v20 + OBJC_IVAR____TtC10TVRemoteUI8FLSpring__o + 80);
      v44 = *(v20 + OBJC_IVAR____TtC10TVRemoteUI8FLSpring__o + 64);
      v45 = v25;
      v46 = *(v20 + OBJC_IVAR____TtC10TVRemoteUI8FLSpring__o + 96);
      v26 = *(v20 + OBJC_IVAR____TtC10TVRemoteUI8FLSpring__o + 16);
      v40 = *(v20 + OBJC_IVAR____TtC10TVRemoteUI8FLSpring__o);
      v41 = v26;
      v27 = *(v20 + OBJC_IVAR____TtC10TVRemoteUI8FLSpring__o + 32);
      v43 = *(v20 + OBJC_IVAR____TtC10TVRemoteUI8FLSpring__o + 48);
      v42 = v27;
      FLSimpleSpring.step(deltaTime:)(&v39, v6);
      v28 = *&v39._beta;
      *(v24 + 64) = *&v39._previousStiffness;
      *(v24 + 80) = v28;
      *(v24 + 96) = *&v39._omega1;
      v29 = *&v39.mass;
      *v24 = v39.state;
      *(v24 + 16) = v29;
      v30 = *&v39.stablePositionThreshold;
      *(v24 + 32) = *&v39.damping;
      *(v24 + 48) = v30;
      *(v20 + OBJC_IVAR____TtC10TVRemoteUI15FMPFFluidSpring_ready) = 1;
      FMPFSKBTLevelRingNode.render()();

      ++v5;
      if (v8 == v35)
      {
        return;
      }
    }

    __break(1u);
LABEL_15:
    __break(1u);
LABEL_16:
    v31 = v3 & 0xFFFFFFFFFFFFFF8;
    if (v3 < 0)
    {
      v31 = v3;
    }

    v32 = *&delta.is_nil;
    v33 = v1;
    v34 = MEMORY[0x26D6B1780](v31, *&delta.value);
    v1 = v33;
    i = v34;
  }
}

id FMPFSKBTLevelRingNode.__deallocating_deinit(uint64_t (*a1)(void))
{
  v3.receiver = v1;
  v3.super_class = a1();
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

void specialized FMPFSKBTLevelRingNode.init(coder:)()
{
  v1 = OBJC_IVAR____TtC10TVRemoteUI21FMPFSKBTLevelRingNode_visibilitySpring;
  *(v0 + v1) = specialized static FMPFFluidSpring.lazySpringWith(initialValue:stableValueThreshold:)(0, 0, 0x3F50624DD2F1A9FCLL, 0);
  v2 = OBJC_IVAR____TtC10TVRemoteUI21FMPFSKBTLevelRingNode_collapseSpring;
  *(v0 + v2) = specialized static FMPFFluidSpring.lazySpringWith(initialValue:stableValueThreshold:)(0x3FF0000000000000, 0, 0x3F50624DD2F1A9FCLL, 0);
  v3 = OBJC_IVAR____TtC10TVRemoteUI21FMPFSKBTLevelRingNode_ringNode;
  *(v0 + v3) = [objc_allocWithZone(MEMORY[0x277CDCF70]) init];
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

uint64_t thunk for @escaping @callee_guaranteed () -> ()(uint64_t a1)
{
  v1 = *(a1 + 32);

  v1(v2);
}

{
  return (*(a1 + 32))();
}

void specialized FMPFSKScene.dispatch(_:)(uint64_t a1, void *a2)
{
  specialized FMPFSKScene.dispatch(_:)(a2);
}

{
  specialized FMPFSKScene.dispatch(_:)(a2);
}

Swift::Void __swiftcall FMPFSKScene.fragmentsStartedOrbiting()()
{
  v1 = type metadata accessor for DispatchWorkItemFlags();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20]();
  v4 = &v29 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for DispatchQoS();
  v31 = *(v5 - 8);
  v32 = v5;
  MEMORY[0x28223BE20]();
  v7 = &v29 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (one-time initialization token for default != -1)
  {
    swift_once();
  }

  v8 = type metadata accessor for Logger();
  __swift_project_value_buffer(v8, static Logger.default);
  v9 = v0;
  v10 = Logger.logObject.getter();
  v11 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v10, v11))
  {
    v29 = v2;
    v30 = v1;
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    aBlock[0] = v13;
    *v12 = 136315138;
    v14 = *&v9[OBJC_IVAR____TtC10TVRemoteUI11FMPFSKScene_patternNode];
    if (v14)
    {
      v15 = [v14 description];
      v16 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v18 = v17;
    }

    else
    {
      v16 = 0;
      v18 = 0xE000000000000000;
    }

    v19 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v16, v18, aBlock);

    *(v12 + 4) = v19;
    _os_log_impl(&dword_26CFEB000, v10, v11, "🧭 FMPFSKPatternNode%s: fragmentsStartedOrbiting()", v12, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v13);
    MEMORY[0x26D6B2710](v13, -1, -1);
    MEMORY[0x26D6B2710](v12, -1, -1);

    v2 = v29;
    v1 = v30;
  }

  else
  {
  }

  v20 = swift_allocObject();
  *(v20 + 16) = v9;
  v21 = objc_opt_self();
  v22 = v9;
  if ([v21 isMainThread])
  {
    v23 = &v22[OBJC_IVAR____TtC10TVRemoteUI11FMPFSKScene_altDelegate];
    if (swift_unknownObjectWeakLoadStrong())
    {
      v24 = *(v23 + 1);
      ObjectType = swift_getObjectType();
      (*(*(v24 + 8) + 8))(ObjectType);

      swift_unknownObjectRelease();
    }

    else
    {
    }
  }

  else
  {
    type metadata accessor for OS_dispatch_queue();
    v26 = static OS_dispatch_queue.main.getter();
    v27 = swift_allocObject();
    *(v27 + 16) = partial apply for closure #1 in FMPFSKScene.fragmentsStartedOrbiting();
    *(v27 + 24) = v20;
    aBlock[4] = closure #1 in FMPFSKScene.dispatch(_:)partial apply;
    aBlock[5] = v27;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = thunk for @escaping @callee_guaranteed () -> ();
    aBlock[3] = &block_descriptor_73;
    v28 = _Block_copy(aBlock);

    static DispatchQoS.unspecified.getter();
    aBlock[0] = MEMORY[0x277D84F90];
    lazy protocol witness table accessor for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay8Dispatch0A13WorkItemFlagsVGMd);
    lazy protocol witness table accessor for type [DispatchWorkItemFlags] and conformance [A]();
    dispatch thunk of SetAlgebra.init<A>(_:)();
    MEMORY[0x26D6B1500](0, v7, v4, v28);
    _Block_release(v28);

    (*(v2 + 8))(v4, v1);
    (*(v31 + 8))(v7, v32);
  }
}

BOOL closure #1 in FMPFSKScene.fragmentsStartedOrbiting()(uint64_t a1)
{
  v1 = a1 + OBJC_IVAR____TtC10TVRemoteUI11FMPFSKScene_altDelegate;
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = *(v1 + 8);
    ObjectType = swift_getObjectType();
    (*(*(v3 + 8) + 8))(ObjectType);
    swift_unknownObjectRelease();
  }

  return Strong == 0;
}

Swift::Void __swiftcall FMPFSKScene.fragmentsStoppedOrbiting()()
{
  v1 = type metadata accessor for DispatchWorkItemFlags();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20]();
  v4 = &v29 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for DispatchQoS();
  v31 = *(v5 - 8);
  v32 = v5;
  MEMORY[0x28223BE20]();
  v7 = &v29 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (one-time initialization token for default != -1)
  {
    swift_once();
  }

  v8 = type metadata accessor for Logger();
  __swift_project_value_buffer(v8, static Logger.default);
  v9 = v0;
  v10 = Logger.logObject.getter();
  v11 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v10, v11))
  {
    v29 = v2;
    v30 = v1;
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    aBlock[0] = v13;
    *v12 = 136315138;
    v14 = *&v9[OBJC_IVAR____TtC10TVRemoteUI11FMPFSKScene_patternNode];
    if (v14)
    {
      v15 = [v14 description];
      v16 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v18 = v17;
    }

    else
    {
      v16 = 0;
      v18 = 0xE000000000000000;
    }

    v19 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v16, v18, aBlock);

    *(v12 + 4) = v19;
    _os_log_impl(&dword_26CFEB000, v10, v11, "🧭 FMPFSKPatternNode%s: fragmentsStoppedOrbiting()", v12, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v13);
    MEMORY[0x26D6B2710](v13, -1, -1);
    MEMORY[0x26D6B2710](v12, -1, -1);

    v2 = v29;
    v1 = v30;
  }

  else
  {
  }

  v20 = swift_allocObject();
  *(v20 + 16) = v9;
  v21 = objc_opt_self();
  v22 = v9;
  if ([v21 isMainThread])
  {
    v23 = &v22[OBJC_IVAR____TtC10TVRemoteUI11FMPFSKScene_altDelegate];
    if (swift_unknownObjectWeakLoadStrong())
    {
      v24 = *(v23 + 1);
      ObjectType = swift_getObjectType();
      (*(*(v24 + 8) + 16))(ObjectType);

      swift_unknownObjectRelease();
    }

    else
    {
    }
  }

  else
  {
    type metadata accessor for OS_dispatch_queue();
    v26 = static OS_dispatch_queue.main.getter();
    v27 = swift_allocObject();
    *(v27 + 16) = partial apply for closure #1 in FMPFSKScene.fragmentsStoppedOrbiting();
    *(v27 + 24) = v20;
    aBlock[4] = closure #1 in FMPFSKScene.dispatch(_:)partial apply;
    aBlock[5] = v27;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = thunk for @escaping @callee_guaranteed () -> ();
    aBlock[3] = &block_descriptor_63;
    v28 = _Block_copy(aBlock);

    static DispatchQoS.unspecified.getter();
    aBlock[0] = MEMORY[0x277D84F90];
    lazy protocol witness table accessor for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay8Dispatch0A13WorkItemFlagsVGMd);
    lazy protocol witness table accessor for type [DispatchWorkItemFlags] and conformance [A]();
    dispatch thunk of SetAlgebra.init<A>(_:)();
    MEMORY[0x26D6B1500](0, v7, v4, v28);
    _Block_release(v28);

    (*(v2 + 8))(v4, v1);
    (*(v31 + 8))(v7, v32);
  }
}

BOOL closure #1 in FMPFSKScene.fragmentsStoppedOrbiting()(uint64_t a1)
{
  v1 = a1 + OBJC_IVAR____TtC10TVRemoteUI11FMPFSKScene_altDelegate;
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = *(v1 + 8);
    ObjectType = swift_getObjectType();
    (*(*(v3 + 8) + 16))(ObjectType);
    swift_unknownObjectRelease();
  }

  return Strong == 0;
}

BOOL closure #1 in FMPFSKScene.patternIsFullyPeripheral()(uint64_t a1)
{
  v1 = a1 + OBJC_IVAR____TtC10TVRemoteUI11FMPFSKScene_altDelegate;
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = *(v1 + 8);
    ObjectType = swift_getObjectType();
    (*(*(v3 + 8) + 40))(ObjectType);
    swift_unknownObjectRelease();
  }

  return Strong == 0;
}

BOOL closure #1 in FMPFSKScene.patternIsFullyFormed()(uint64_t a1)
{
  v1 = a1 + OBJC_IVAR____TtC10TVRemoteUI11FMPFSKScene_altDelegate;
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = *(v1 + 8);
    ObjectType = swift_getObjectType();
    (*(*(v3 + 8) + 48))(ObjectType);
    swift_unknownObjectRelease();
  }

  return Strong == 0;
}

BOOL closure #1 in FMPFSKScene.pointeeDotIsFullyCentered()(uint64_t a1)
{
  v1 = a1 + OBJC_IVAR____TtC10TVRemoteUI11FMPFSKScene_altDelegate;
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = *(v1 + 8);
    ObjectType = swift_getObjectType();
    (*(*(v3 + 8) + 56))(ObjectType);
    swift_unknownObjectRelease();
  }

  return Strong == 0;
}

BOOL closure #1 in FMPFSKScene.patternIsFullyFormedAndPointeeDotIsFullyCentered()(uint64_t a1)
{
  v1 = a1 + OBJC_IVAR____TtC10TVRemoteUI11FMPFSKScene_altDelegate;
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = *(v1 + 8);
    ObjectType = swift_getObjectType();
    (*(*(v3 + 8) + 64))(ObjectType);
    swift_unknownObjectRelease();
  }

  return Strong == 0;
}

BOOL closure #1 in FMPFSKScene.pointeeAndNoonDotsDidConverge()(uint64_t a1)
{
  v1 = a1 + OBJC_IVAR____TtC10TVRemoteUI11FMPFSKScene_altDelegate;
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = *(v1 + 8);
    ObjectType = swift_getObjectType();
    (*(*(v3 + 8) + 72))(ObjectType);
    swift_unknownObjectRelease();
  }

  return Strong == 0;
}

BOOL closure #1 in FMPFSKScene.pointeeAndNoonDotsDidDiverge()(uint64_t a1)
{
  v1 = a1 + OBJC_IVAR____TtC10TVRemoteUI11FMPFSKScene_altDelegate;
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = *(v1 + 8);
    ObjectType = swift_getObjectType();
    (*(*(v3 + 8) + 80))(ObjectType);
    swift_unknownObjectRelease();
  }

  return Strong == 0;
}

void protocol witness for FMPFSKPatternNodeDelegate.patternIsFullyPeripheral() in conformance FMPFSKScene()
{
  v1 = v0;
  specialized FMPFSKScene.dispatch(_:)(v1);
}

void protocol witness for FMPFSKPatternNodeDelegate.patternIsFullyFormed() in conformance FMPFSKScene()
{
  v1 = v0;
  specialized FMPFSKScene.dispatch(_:)(v1);
}

void protocol witness for FMPFSKPatternNodeDelegate.pointeeDotIsFullyCentered() in conformance FMPFSKScene()
{
  v1 = v0;
  specialized FMPFSKScene.dispatch(_:)(v1);
}

void protocol witness for FMPFSKPatternNodeDelegate.patternIsFullyFormedAndPointeeDotIsFullyCentered() in conformance FMPFSKScene()
{
  v1 = v0;
  specialized FMPFSKScene.dispatch(_:)(v1);
}

void protocol witness for FMPFSKPatternNodeDelegate.pointeeAndNoonDotsDidConverge() in conformance FMPFSKScene()
{
  v1 = v0;

  specialized FMPFSKScene.dispatch(_:)(v1, v1);
}

void protocol witness for FMPFSKPatternNodeDelegate.pointeeAndNoonDotsDidDiverge() in conformance FMPFSKScene()
{
  v1 = v0;

  specialized FMPFSKScene.dispatch(_:)(v1, v1);
}

unint64_t getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = specialized _StringGuts._deconstructUTF8<A>(scratch:)(v11, 0, 0, 1, a1, a2);
  v7 = v11[0];
  if (!v6)
  {
    ObjectType = MEMORY[0x277D840A0];
    v11[0] = a1;
    v11[1] = a2;
    v9 = *a3;
    if (!*a3)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  v8 = v6;

  ObjectType = swift_getObjectType();
  v11[0] = v8;
  v9 = *a3;
  if (*a3)
  {
LABEL_3:
    outlined init with copy of Any(v11, v9);
    *a3 = v9 + 32;
  }

LABEL_4:
  __swift_destroy_boxed_opaque_existential_1(v11);
  return v7;
}

unint64_t specialized _StringGuts._deconstructUTF8<A>(scratch:)(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
{
  if ((a6 & 0x2000000000000000) != 0)
  {
    if ((a4 & 1) == 0)
    {
      if (__dst)
      {
        v9 = HIBYTE(a6) & 0xF;
        if (a3 - __dst > v9)
        {
          v12[0] = a5;
          v12[1] = a6 & 0xFFFFFFFFFFFFFFLL;
          memcpy(__dst, v12, HIBYTE(a6) & 0xF);
          result = 0;
          *(__dst + v9) = 0;
          *a1 = __dst;
          return result;
        }
      }
    }

LABEL_8:
    result = _StringGuts._allocateForDeconstruct()(a5, a6);
    *a1 = v8;
    return result;
  }

  if ((a6 & 0x1000000000000000) != 0)
  {
    goto LABEL_8;
  }

  if ((a5 & 0x1000000000000000) != 0)
  {
    result = (a6 & 0xFFFFFFFFFFFFFFFLL) + 32;
  }

  else
  {
    v11 = a6;
    result = _StringObject.sharedUTF8.getter();
    a6 = v11;
    if (!result)
    {
      __break(1u);
      return result;
    }
  }

  *a1 = result;
  if ((a6 & 0x8000000000000000) != 0)
  {
    return 0;
  }

  else
  {
    return swift_unknownObjectRetain();
  }
}

uint64_t _StringGuts._allocateForDeconstruct()(uint64_t a1, unint64_t a2)
{
  v3 = specialized _copyCollectionToContiguousArray<A>(_:)(a1, a2);
  specialized Array.append<A>(contentsOf:)(&outlined read-only object #0 of _StringGuts._allocateForDeconstruct());
  return v3;
}

uint64_t specialized _copyCollectionToContiguousArray<A>(_:)(uint64_t a1, unint64_t a2)
{
  if ((a2 & 0x1000000000000000) != 0)
  {
    goto LABEL_13;
  }

  v4 = a1 & 0xFFFFFFFFFFFFLL;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v5 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v5 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (!v5)
  {
    return MEMORY[0x277D84F90];
  }

  v6 = _ss22_ContiguousArrayBufferV19_uninitializedCount15minimumCapacityAByxGSi_SitcfCs5UInt8V_Tt1gq5(v5, 0);
  v7 = v6;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v15[0] = a1;
    v15[1] = a2 & 0xFFFFFFFFFFFFFFLL;
    memcpy(v6 + 4, v15, HIBYTE(a2) & 0xF);
    return v7;
  }

  if ((a1 & 0x1000000000000000) != 0)
  {
    v8 = ((a2 & 0xFFFFFFFFFFFFFFFLL) + 32);
    v9 = a1 & 0xFFFFFFFFFFFFLL;
    goto LABEL_9;
  }

  result = _StringObject.sharedUTF8.getter();
  v9 = v14;
  v8 = result;
  if (v4 >= v9)
  {
LABEL_9:
    memcpy(v7 + 4, v8, v9);
    if (v9 != v4)
    {
      while (1)
      {
        __break(1u);
LABEL_13:
        v10 = String.UTF8View._foreignCount()();
        if (!v10)
        {
          return MEMORY[0x277D84F90];
        }

        v11 = v10;
        v7 = _ss22_ContiguousArrayBufferV19_uninitializedCount15minimumCapacityAByxGSi_SitcfCs5UInt8V_Tt1gq5(v10, 0);
        result = _StringGuts._foreignCopyUTF8(into:)();
        if (v13)
        {
          goto LABEL_20;
        }

        if (result == v11)
        {
          return v7;
        }
      }
    }

    return v7;
  }

LABEL_20:
  __break(1u);
  return result;
}

uint64_t specialized Array.append<A>(contentsOf:)(uint64_t result)
{
  v2 = *(result + 16);
  v3 = *v1;
  v4 = *(*v1 + 16);
  v5 = v4 + v2;
  if (__OFADD__(v4, v2))
  {
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v6 = result;
  result = swift_isUniquelyReferenced_nonNull_native();
  if (result && v5 <= *(v3 + 24) >> 1)
  {
    if (*(v6 + 16))
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

  if (v4 <= v5)
  {
    v11 = v4 + v2;
  }

  else
  {
    v11 = v4;
  }

  result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(result, v11, 1, v3);
  v3 = result;
  if (!*(v6 + 16))
  {
LABEL_13:

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

LABEL_5:
  v7 = *(v3 + 16);
  if ((*(v3 + 24) >> 1) - v7 < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  memcpy((v3 + v7 + 32), (v6 + 32), v2);

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v8 = *(v3 + 16);
  v9 = __OFADD__(v8, v2);
  v10 = v8 + v2;
  if (!v9)
  {
    *(v3 + 16) = v10;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

{
  v2 = *(result + 16);
  v3 = *v1;
  v4 = *(*v1 + 16);
  v5 = v4 + v2;
  if (__OFADD__(v4, v2))
  {
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v6 = result;
  result = swift_isUniquelyReferenced_nonNull_native();
  if (result && v5 <= *(v3 + 24) >> 1)
  {
    if (*(v6 + 16))
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

  if (v4 <= v5)
  {
    v11 = v4 + v2;
  }

  else
  {
    v11 = v4;
  }

  result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(result, v11, 1, v3);
  v3 = result;
  if (!*(v6 + 16))
  {
LABEL_13:

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

LABEL_5:
  v7 = *(v3 + 16);
  if ((*(v3 + 24) >> 1) - v7 < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  memcpy((v3 + 16 * v7 + 32), (v6 + 32), 16 * v2);

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v8 = *(v3 + 16);
  v9 = __OFADD__(v8, v2);
  v10 = v8 + v2;
  if (!v9)
  {
    *(v3 + 16) = v10;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
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
  v5 = _swift_stdlib_malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

char *specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys5UInt8VGMd);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * v11 - 64;
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[v8])
    {
      memmove(v12, v13, v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v12, v13, v8);
  }

  return v10;
}

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
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySnySiGGMd);
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
    memcpy(v13, v14, 16 * v8);
  }

  return v10;
}

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
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySo7CGPointVGMd);
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
    memcpy(v13, v14, 16 * v8);
  }

  return v10;
}

uint64_t specialized FMPFSKScene.dispatch(_:)(void *a1)
{
  v2 = type metadata accessor for DispatchWorkItemFlags();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20]();
  v5 = &v21 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for DispatchQoS();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20]();
  v9 = &v21 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = swift_allocObject();
  *(v10 + 16) = a1;
  v11 = objc_opt_self();
  v12 = a1;
  if ([v11 isMainThread])
  {
    v13 = &v12[OBJC_IVAR____TtC10TVRemoteUI11FMPFSKScene_altDelegate];
    if (swift_unknownObjectWeakLoadStrong())
    {
      v14 = *(v13 + 1);
      ObjectType = swift_getObjectType();
      (*(*(v14 + 8) + 40))(ObjectType);

      return swift_unknownObjectRelease();
    }

    else
    {
    }
  }

  else
  {
    type metadata accessor for OS_dispatch_queue();
    v17 = static OS_dispatch_queue.main.getter();
    v18 = swift_allocObject();
    *(v18 + 16) = partial apply for closure #1 in FMPFSKScene.patternIsFullyPeripheral();
    *(v18 + 24) = v10;
    aBlock[4] = closure #1 in FMPFSKScene.dispatch(_:)partial apply;
    aBlock[5] = v18;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = thunk for @escaping @callee_guaranteed () -> ();
    aBlock[3] = &block_descriptor_53;
    v19 = _Block_copy(aBlock);
    v22 = v6;
    v20 = v19;

    static DispatchQoS.unspecified.getter();
    aBlock[0] = MEMORY[0x277D84F90];
    lazy protocol witness table accessor for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay8Dispatch0A13WorkItemFlagsVGMd);
    lazy protocol witness table accessor for type [DispatchWorkItemFlags] and conformance [A]();
    dispatch thunk of SetAlgebra.init<A>(_:)();
    MEMORY[0x26D6B1500](0, v9, v5, v20);
    _Block_release(v20);

    (*(v3 + 8))(v5, v2);
    (*(v7 + 8))(v9, v22);
  }
}

{
  v2 = type metadata accessor for DispatchWorkItemFlags();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20]();
  v5 = &v21 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for DispatchQoS();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20]();
  v9 = &v21 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = swift_allocObject();
  *(v10 + 16) = a1;
  v11 = objc_opt_self();
  v12 = a1;
  if ([v11 isMainThread])
  {
    v13 = &v12[OBJC_IVAR____TtC10TVRemoteUI11FMPFSKScene_altDelegate];
    if (swift_unknownObjectWeakLoadStrong())
    {
      v14 = *(v13 + 1);
      ObjectType = swift_getObjectType();
      (*(*(v14 + 8) + 48))(ObjectType);

      return swift_unknownObjectRelease();
    }

    else
    {
    }
  }

  else
  {
    type metadata accessor for OS_dispatch_queue();
    v17 = static OS_dispatch_queue.main.getter();
    v18 = swift_allocObject();
    *(v18 + 16) = partial apply for closure #1 in FMPFSKScene.patternIsFullyFormed();
    *(v18 + 24) = v10;
    aBlock[4] = closure #1 in FMPFSKScene.dispatch(_:)partial apply;
    aBlock[5] = v18;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = thunk for @escaping @callee_guaranteed () -> ();
    aBlock[3] = &block_descriptor_43;
    v19 = _Block_copy(aBlock);
    v22 = v6;
    v20 = v19;

    static DispatchQoS.unspecified.getter();
    aBlock[0] = MEMORY[0x277D84F90];
    lazy protocol witness table accessor for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay8Dispatch0A13WorkItemFlagsVGMd);
    lazy protocol witness table accessor for type [DispatchWorkItemFlags] and conformance [A]();
    dispatch thunk of SetAlgebra.init<A>(_:)();
    MEMORY[0x26D6B1500](0, v9, v5, v20);
    _Block_release(v20);

    (*(v3 + 8))(v5, v2);
    (*(v7 + 8))(v9, v22);
  }
}

{
  v2 = type metadata accessor for DispatchWorkItemFlags();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20]();
  v5 = &v21 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for DispatchQoS();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20]();
  v9 = &v21 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = swift_allocObject();
  *(v10 + 16) = a1;
  v11 = objc_opt_self();
  v12 = a1;
  if ([v11 isMainThread])
  {
    v13 = &v12[OBJC_IVAR____TtC10TVRemoteUI11FMPFSKScene_altDelegate];
    if (swift_unknownObjectWeakLoadStrong())
    {
      v14 = *(v13 + 1);
      ObjectType = swift_getObjectType();
      (*(*(v14 + 8) + 56))(ObjectType);

      return swift_unknownObjectRelease();
    }

    else
    {
    }
  }

  else
  {
    type metadata accessor for OS_dispatch_queue();
    v17 = static OS_dispatch_queue.main.getter();
    v18 = swift_allocObject();
    *(v18 + 16) = partial apply for closure #1 in FMPFSKScene.pointeeDotIsFullyCentered();
    *(v18 + 24) = v10;
    aBlock[4] = closure #1 in FMPFSKScene.dispatch(_:)partial apply;
    aBlock[5] = v18;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = thunk for @escaping @callee_guaranteed () -> ();
    aBlock[3] = &block_descriptor_33;
    v19 = _Block_copy(aBlock);
    v22 = v6;
    v20 = v19;

    static DispatchQoS.unspecified.getter();
    aBlock[0] = MEMORY[0x277D84F90];
    lazy protocol witness table accessor for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay8Dispatch0A13WorkItemFlagsVGMd);
    lazy protocol witness table accessor for type [DispatchWorkItemFlags] and conformance [A]();
    dispatch thunk of SetAlgebra.init<A>(_:)();
    MEMORY[0x26D6B1500](0, v9, v5, v20);
    _Block_release(v20);

    (*(v3 + 8))(v5, v2);
    (*(v7 + 8))(v9, v22);
  }
}

{
  v2 = type metadata accessor for DispatchWorkItemFlags();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20]();
  v5 = &v21 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for DispatchQoS();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20]();
  v9 = &v21 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = swift_allocObject();
  *(v10 + 16) = a1;
  v11 = objc_opt_self();
  v12 = a1;
  if ([v11 isMainThread])
  {
    v13 = &v12[OBJC_IVAR____TtC10TVRemoteUI11FMPFSKScene_altDelegate];
    if (swift_unknownObjectWeakLoadStrong())
    {
      v14 = *(v13 + 1);
      ObjectType = swift_getObjectType();
      (*(*(v14 + 8) + 64))(ObjectType);

      return swift_unknownObjectRelease();
    }

    else
    {
    }
  }

  else
  {
    type metadata accessor for OS_dispatch_queue();
    v17 = static OS_dispatch_queue.main.getter();
    v18 = swift_allocObject();
    *(v18 + 16) = partial apply for closure #1 in FMPFSKScene.patternIsFullyFormedAndPointeeDotIsFullyCentered();
    *(v18 + 24) = v10;
    aBlock[4] = closure #1 in FMPFSKScene.dispatch(_:)partial apply;
    aBlock[5] = v18;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = thunk for @escaping @callee_guaranteed () -> ();
    aBlock[3] = &block_descriptor_23;
    v19 = _Block_copy(aBlock);
    v22 = v6;
    v20 = v19;

    static DispatchQoS.unspecified.getter();
    aBlock[0] = MEMORY[0x277D84F90];
    lazy protocol witness table accessor for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay8Dispatch0A13WorkItemFlagsVGMd);
    lazy protocol witness table accessor for type [DispatchWorkItemFlags] and conformance [A]();
    dispatch thunk of SetAlgebra.init<A>(_:)();
    MEMORY[0x26D6B1500](0, v9, v5, v20);
    _Block_release(v20);

    (*(v3 + 8))(v5, v2);
    (*(v7 + 8))(v9, v22);
  }
}

{
  v2 = type metadata accessor for DispatchWorkItemFlags();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20]();
  v5 = &v21 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for DispatchQoS();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20]();
  v9 = &v21 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = swift_allocObject();
  *(v10 + 16) = a1;
  v11 = objc_opt_self();
  v12 = a1;
  if ([v11 isMainThread])
  {
    v13 = &v12[OBJC_IVAR____TtC10TVRemoteUI11FMPFSKScene_altDelegate];
    if (swift_unknownObjectWeakLoadStrong())
    {
      v14 = *(v13 + 1);
      ObjectType = swift_getObjectType();
      (*(*(v14 + 8) + 72))(ObjectType);

      return swift_unknownObjectRelease();
    }

    else
    {
    }
  }

  else
  {
    type metadata accessor for OS_dispatch_queue();
    v17 = static OS_dispatch_queue.main.getter();
    v18 = swift_allocObject();
    *(v18 + 16) = partial apply for closure #1 in FMPFSKScene.pointeeAndNoonDotsDidConverge();
    *(v18 + 24) = v10;
    aBlock[4] = closure #1 in FMPFSKScene.dispatch(_:)partial apply;
    aBlock[5] = v18;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = thunk for @escaping @callee_guaranteed () -> ();
    aBlock[3] = &block_descriptor_13;
    v19 = _Block_copy(aBlock);
    v22 = v6;
    v20 = v19;

    static DispatchQoS.unspecified.getter();
    aBlock[0] = MEMORY[0x277D84F90];
    lazy protocol witness table accessor for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay8Dispatch0A13WorkItemFlagsVGMd);
    lazy protocol witness table accessor for type [DispatchWorkItemFlags] and conformance [A]();
    dispatch thunk of SetAlgebra.init<A>(_:)();
    MEMORY[0x26D6B1500](0, v9, v5, v20);
    _Block_release(v20);

    (*(v3 + 8))(v5, v2);
    (*(v7 + 8))(v9, v22);
  }
}

{
  v2 = type metadata accessor for DispatchWorkItemFlags();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20]();
  v5 = &v21 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for DispatchQoS();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20]();
  v9 = &v21 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = swift_allocObject();
  *(v10 + 16) = a1;
  v11 = objc_opt_self();
  v12 = a1;
  if ([v11 isMainThread])
  {
    v13 = &v12[OBJC_IVAR____TtC10TVRemoteUI11FMPFSKScene_altDelegate];
    if (swift_unknownObjectWeakLoadStrong())
    {
      v14 = *(v13 + 1);
      ObjectType = swift_getObjectType();
      (*(*(v14 + 8) + 80))(ObjectType);

      return swift_unknownObjectRelease();
    }

    else
    {
    }
  }

  else
  {
    type metadata accessor for OS_dispatch_queue();
    v17 = static OS_dispatch_queue.main.getter();
    v18 = swift_allocObject();
    *(v18 + 16) = partial apply for closure #1 in FMPFSKScene.pointeeAndNoonDotsDidDiverge();
    *(v18 + 24) = v10;
    aBlock[4] = partial apply for closure #1 in FMPFSKScene.dispatch(_:);
    aBlock[5] = v18;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = thunk for @escaping @callee_guaranteed () -> ();
    aBlock[3] = &block_descriptor_4;
    v19 = _Block_copy(aBlock);
    v22 = v6;
    v20 = v19;

    static DispatchQoS.unspecified.getter();
    aBlock[0] = MEMORY[0x277D84F90];
    lazy protocol witness table accessor for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay8Dispatch0A13WorkItemFlagsVGMd);
    lazy protocol witness table accessor for type [DispatchWorkItemFlags] and conformance [A]();
    dispatch thunk of SetAlgebra.init<A>(_:)();
    MEMORY[0x26D6B1500](0, v9, v5, v20);
    _Block_release(v20);

    (*(v3 + 8))(v5, v2);
    (*(v7 + 8))(v9, v22);
  }
}

unint64_t type metadata accessor for OS_dispatch_queue()
{
  result = lazy cache variable for type metadata for OS_dispatch_queue;
  if (!lazy cache variable for type metadata for OS_dispatch_queue)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &lazy cache variable for type metadata for OS_dispatch_queue);
  }

  return result;
}

uint64_t block_copy_helper_4(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t protocol witness for Tip.title.getter in conformance InfoTip()
{
  LocalizedStringKey.init(stringLiteral:)();
  type metadata accessor for TVRUITipManager();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v1 = [objc_opt_self() bundleForClass_];
  return Text.init(_:tableName:bundle:comment:)();
}

uint64_t protocol witness for Tip.message.getter in conformance InfoTip()
{
  LocalizedStringKey.init(stringLiteral:)();
  type metadata accessor for TVRUITipManager();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v1 = [objc_opt_self() bundleForClass_];
  return Text.init(_:tableName:bundle:comment:)();
}

unint64_t lazy protocol witness table accessor for type InfoTip and conformance InfoTip()
{
  result = lazy protocol witness table cache variable for type InfoTip and conformance InfoTip;
  if (!lazy protocol witness table cache variable for type InfoTip and conformance InfoTip)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type InfoTip and conformance InfoTip);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type InfoTip and conformance InfoTip;
  if (!lazy protocol witness table cache variable for type InfoTip and conformance InfoTip)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type InfoTip and conformance InfoTip);
  }

  return result;
}

uint64_t specialized InfoTip.options.getter()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s6TipKit4TipsO14OptionsBuilderV17buildPartialBlock11accumulated4nextQrx_q_tAA0A6OptionRzAaIR_r0_lFZQOy__AeF5firstQrx_tAaIRzlFZQOy__AE0F10ExpressionyQrxAaIRzlFZQOy__AC17UsesConstellationVQo_Qo_AeKyQrxAaIRzlFZQOy__AC15MaxDisplayCountVQo_Qo_Md);
  v1 = *(v0 - 8);
  v38 = v0;
  v39 = v1;
  MEMORY[0x28223BE20]();
  v36 = &v30 - v2;
  v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s6TipKit4TipsO14OptionsBuilderV17buildPartialBlock5firstQrx_tAA0A6OptionRzlFZQOy__AE0F10ExpressionyQrxAaHRzlFZQOy__AC17UsesConstellationVQo_Qo_Md);
  v37 = *(v35 - 8);
  MEMORY[0x28223BE20]();
  v33 = &v30 - v3;
  v4 = type metadata accessor for Tips.MaxDisplayCount();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20]();
  v7 = &v30 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s6TipKit4TipsO14OptionsBuilderV15buildExpressionyQrxAA0A6OptionRzlFZQOy__AC15MaxDisplayCountVQo_Md);
  v34 = *(v32 - 8);
  MEMORY[0x28223BE20]();
  v9 = &v30 - v8;
  v10 = type metadata accessor for Tips.UsesConstellation();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20]();
  v13 = &v30 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s6TipKit4TipsO14OptionsBuilderV15buildExpressionyQrxAA0A6OptionRzlFZQOy__AC17UsesConstellationVQo_Md);
  v31 = *(v14 - 8);
  MEMORY[0x28223BE20]();
  v16 = &v30 - v15;
  MEMORY[0x26D6B0FE0](0);
  v17 = MEMORY[0x277CE1A00];
  MEMORY[0x26D6B0F70](v13, v10, MEMORY[0x277CE1A00]);
  (*(v11 + 8))(v13, v10);
  Tips.MaxDisplayCount.init(_:)();
  v18 = MEMORY[0x277CE19F0];
  MEMORY[0x26D6B0F70](v7, v4, MEMORY[0x277CE19F0]);
  (*(v5 + 8))(v7, v4);
  v40 = v10;
  v41 = v17;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v20 = v33;
  MEMORY[0x26D6B0FA0](v16, v14, OpaqueTypeConformance2);
  v40 = v14;
  v41 = OpaqueTypeConformance2;
  v21 = swift_getOpaqueTypeConformance2();
  v40 = v4;
  v41 = v18;
  v22 = swift_getOpaqueTypeConformance2();
  v24 = v35;
  v23 = v36;
  v25 = v32;
  static Tips.OptionsBuilder.buildPartialBlock<A, B>(accumulated:next:)();
  v40 = v24;
  v41 = v25;
  v42 = v21;
  v43 = v22;
  swift_getOpaqueTypeConformance2();
  v26 = v23;
  v27 = v38;
  v28 = static Tips.OptionsBuilder.buildFinalResult<A>(_:)();
  (*(v39 + 8))(v26, v27);
  (*(v37 + 8))(v20, v24);
  (*(v34 + 8))(v9, v25);
  (*(v31 + 8))(v16, v14);
  return v28;
}

Swift::Void __swiftcall FMPFSKPatternNode.stageConformationVsScalingVsBearingVsCentering()()
{
  v2 = v0;
  v3 = v0 + OBJC_IVAR____TtC10TVRemoteUI17FMPFSKPatternNode_presentedConformedToExplodedFactor;
  v4 = (*(v0 + OBJC_IVAR____TtC10TVRemoteUI17FMPFSKPatternNode_presentedConformedToExplodedFactor) > 0.0) & ~*(v0 + OBJC_IVAR____TtC10TVRemoteUI17FMPFSKPatternNode_presentedConformedToExplodedFactor + 8);
  v5 = v0 + OBJC_IVAR____TtC10TVRemoteUI17FMPFSKPatternNode_presentedConformationFactor;
  if ((*(v0 + OBJC_IVAR____TtC10TVRemoteUI17FMPFSKPatternNode_presentedConformationFactor + 8) & 1) == 0)
  {
    v6 = *(v0 + OBJC_IVAR____TtC10TVRemoteUI17FMPFSKPatternNode_style + 184);
    v7 = *v5 - v6;
    if (v7 < 0.0)
    {
      v7 = 0.0;
    }

    if (*(v0 + OBJC_IVAR____TtC10TVRemoteUI17FMPFSKPatternNode_style + 200) <= v7 / (1.0 - *v5 - v6) || (*(v0 + OBJC_IVAR____TtC10TVRemoteUI17FMPFSKPatternNode_presentedCenterFactor + 8) & 1) != 0 || (v8 = (*(v0 + OBJC_IVAR____TtC10TVRemoteUI17FMPFSKPatternNode_presentedConformedToExplodedFactor) > 0.0) & ~*(v0 + OBJC_IVAR____TtC10TVRemoteUI17FMPFSKPatternNode_presentedConformedToExplodedFactor + 8), *(v0 + OBJC_IVAR____TtC10TVRemoteUI17FMPFSKPatternNode_presentedCenterFactor) >= 0.0))
    {
      v8 = 1;
    }

    v9 = OBJC_IVAR____TtC10TVRemoteUI17FMPFSKPatternNode_patternFragmentNodes;
    swift_beginAccess();
    v10 = *(v0 + v9);
    v79 = v8;
    if (v10 >> 62)
    {
      if (v10 < 0)
      {
        v72 = v10;
      }

      else
      {
        v72 = v10 & 0xFFFFFFFFFFFFFF8;
      }

      v11 = MEMORY[0x26D6B1780](v72);
    }

    else
    {
      v11 = *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    if (v11)
    {
      v12 = 0;
      v1 = v4 ^ 1u;
      do
      {
        if ((v10 & 0xC000000000000001) != 0)
        {
          v13 = MEMORY[0x26D6B1680](v12, v10);
          v14 = v12 + 1;
          if (__OFADD__(v12, 1))
          {
LABEL_19:
            __break(1u);
            break;
          }
        }

        else
        {
          if (v12 >= *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
LABEL_113:
            __break(1u);
            goto LABEL_114;
          }

          v13 = *(v10 + 8 * v12 + 32);
          v14 = v12 + 1;
          if (__OFADD__(v12, 1))
          {
            goto LABEL_19;
          }
        }

        v13[OBJC_IVAR____TtC10TVRemoteUI25FMPFSKPatternFragmentNode_shouldApplyDisturbanceScatterOffset] = v4 ^ 1;

        ++v12;
      }

      while (v14 != v11);
    }

    v2 = v81;
    *(v81 + OBJC_IVAR____TtC10TVRemoteUI17FMPFSKPatternNode_shouldApplyCenterFactor) = v79;
  }

  *(v2 + OBJC_IVAR____TtC10TVRemoteUI17FMPFSKPatternNode_shouldApplyBearing) = 1;
  if (*(v5 + 8))
  {
LABEL_22:
    if ((*(v2 + OBJC_IVAR____TtC10TVRemoteUI17FMPFSKPatternNode_presentedCenterFactor + 8) & 1) == 0 && *(v2 + OBJC_IVAR____TtC10TVRemoteUI17FMPFSKPatternNode_presentedCenterFactor) >= 1.0)
    {
      goto LABEL_24;
    }

LABEL_51:
    *(v2 + OBJC_IVAR____TtC10TVRemoteUI17FMPFSKPatternNode_needsRecomputeVisibleFragments) = 0;
    goto LABEL_52;
  }

  v18 = *v5;
  if (*v5 > 0.0)
  {
    if (*(v3 + 8))
    {
      goto LABEL_22;
    }

    if (v18 >= 1.0 && *v3 <= 0.0 && ((*(v2 + OBJC_IVAR____TtC10TVRemoteUI17FMPFSKPatternNode_presentedCenterFactor + 8) & 1) != 0 || *(v2 + OBJC_IVAR____TtC10TVRemoteUI17FMPFSKPatternNode_presentedCenterFactor) < 1.0))
    {
      v68 = v2 + OBJC_IVAR____TtC10TVRemoteUI17FMPFSKPatternNode_delegate;
      if (swift_unknownObjectWeakLoadStrong())
      {
        v69 = *(v68 + 8);
        ObjectType = swift_getObjectType();
        (*(v69 + 48))(ObjectType, v69);
        goto LABEL_108;
      }
    }

    else
    {
      v19 = *(v2 + OBJC_IVAR____TtC10TVRemoteUI17FMPFSKPatternNode_presentedCenterFactor);
      v20 = *(v2 + OBJC_IVAR____TtC10TVRemoteUI17FMPFSKPatternNode_presentedCenterFactor + 8);
      if (v20 == 1 || v19 < 1.0)
      {
        if (*(v3 + 8))
        {
          goto LABEL_51;
        }
      }

      else if ((*(v3 + 8) & 1) != 0 || v18 < 1.0 || *v3 > 0.0)
      {
LABEL_24:
        v15 = v2 + OBJC_IVAR____TtC10TVRemoteUI17FMPFSKPatternNode_delegate;
        if (swift_unknownObjectWeakLoadStrong())
        {
          v16 = *(v15 + 8);
          v17 = swift_getObjectType();
          (*(v16 + 56))(v17, v16);
LABEL_41:
          swift_unknownObjectRelease();
          goto LABEL_52;
        }

        goto LABEL_52;
      }

      v25 = v18 < 1.0;
      if (*v3 > 0.0)
      {
        v25 = 1;
      }

      if (((v20 | v25) & 1) != 0 || v19 < 1.0)
      {
        goto LABEL_51;
      }

      v26 = v2 + OBJC_IVAR____TtC10TVRemoteUI17FMPFSKPatternNode_delegate;
      if (swift_unknownObjectWeakLoadStrong())
      {
        v27 = *(v26 + 8);
        v28 = swift_getObjectType();
        (*(v27 + 64))(v28, v27);
LABEL_108:
        swift_unknownObjectRelease();
      }
    }

    *(v2 + OBJC_IVAR____TtC10TVRemoteUI17FMPFSKPatternNode_needsRecomputeVisibleFragments) = 1;
    goto LABEL_52;
  }

  v22 = v2 + OBJC_IVAR____TtC10TVRemoteUI17FMPFSKPatternNode_delegate;
  if (swift_unknownObjectWeakLoadStrong())
  {
    v23 = *(v22 + 8);
    v24 = swift_getObjectType();
    (*(v23 + 40))(v24, v23);
    goto LABEL_41;
  }

LABEL_52:
  v29 = 0.0;
  if ((*(v5 + 8) & 1) == 0)
  {
    v30 = (v2 + OBJC_IVAR____TtC10TVRemoteUI17FMPFSKPatternNode_presentedCenterFactor);
    if ((*(v2 + OBJC_IVAR____TtC10TVRemoteUI17FMPFSKPatternNode_presentedCenterFactor + 8) & 1) == 0 && *v30 >= 0.0)
    {
      v29 = *v5 * *v30;
      if (((*(v2 + OBJC_IVAR____TtC10TVRemoteUI17FMPFSKPatternNode_derivativeCenterFactor) != -1) & v4) == 0)
      {
        v29 = 0.0;
      }
    }
  }

  [*(v2 + OBJC_IVAR____TtC10TVRemoteUI17FMPFSKPatternNode_patternFragmentsNode) setAlpha_];
  if (*(v2 + OBJC_IVAR____TtC10TVRemoteUI17FMPFSKPatternNode_needsRecomputeVisibleFragments) == 1)
  {
    [*(v2 + OBJC_IVAR____TtC10TVRemoteUI17FMPFSKPatternNode_gimbalNode) position];
    *&v32 = COERCE_DOUBLE(FMPFSKPatternNode.visibleTrackOffsets(center:)(-v31));
    if ((v34 & 1) == 0)
    {
      v35 = *&v32;
      v36 = v33;
      v37 = OBJC_IVAR____TtC10TVRemoteUI17FMPFSKPatternNode_patternFragmentNodes;
      swift_beginAccess();
      v10 = *(v2 + v37);
      if (v10 >> 62)
      {
        if (v10 < 0)
        {
          v77 = *(v2 + v37);
        }

        else
        {
          v77 = v10 & 0xFFFFFFFFFFFFFF8;
        }

        v38 = MEMORY[0x26D6B1780](v77);
      }

      else
      {
        v38 = *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      if (v38)
      {
        v39 = 0;
        v40 = v35 + 1.0;
        while (1)
        {
          if ((v10 & 0xC000000000000001) != 0)
          {
            v41 = MEMORY[0x26D6B1680](v39, v10);
          }

          else
          {
            if (v39 >= *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              goto LABEL_115;
            }

            v41 = *(v10 + 8 * v39 + 32);
          }

          v42 = v41;
          v1 = v39 + 1;
          if (__OFADD__(v39, 1))
          {
            break;
          }

          if ((v41[OBJC_IVAR____TtC10TVRemoteUI25FMPFSKPatternFragmentNode_composedPosition + 16] & 1) == 0)
          {
            v43 = *&v41[OBJC_IVAR____TtC10TVRemoteUI25FMPFSKPatternFragmentNode_composedPosition + 8];
            v44 = v36 + -1.0 > v43 || v43 > v40;
            [v41 setHidden_];
          }

          ++v39;
          if (v1 == v38)
          {
            goto LABEL_74;
          }
        }

LABEL_114:
        __break(1u);
LABEL_115:
        __break(1u);
        goto LABEL_116;
      }

LABEL_74:
    }
  }

  v45 = OBJC_IVAR____TtC10TVRemoteUI17FMPFSKPatternNode_patternFragmentNodes;
  swift_beginAccess();
  v10 = *(v2 + v45);
  v78 = v45;
  v1 = v10 & 0xFFFFFFFFFFFFFF8;
  if (!(v10 >> 62))
  {
    v46 = *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10);
    goto LABEL_77;
  }

LABEL_116:
  if (v10 < 0)
  {
    v71 = v10;
  }

  else
  {
    v71 = v1;
  }

  v46 = MEMORY[0x26D6B1780](v71);
LABEL_77:

  v47 = 0;
  v48 = 0;
  v49 = 0;
  v50 = 0;
LABEL_78:
  v80 = v49;
  v82 = v48;
  v51 = v47;
  while (v46 != v51)
  {
    if ((v10 & 0xC000000000000001) != 0)
    {
      v52 = MEMORY[0x26D6B1680](v51, v10);
      v53 = v51 + 1;
      if (__OFADD__(v51, 1))
      {
        goto LABEL_110;
      }
    }

    else
    {
      if (v51 >= *(v1 + 16))
      {
        goto LABEL_111;
      }

      v52 = *(v10 + 8 * v51 + 32);
      v53 = v51 + 1;
      if (__OFADD__(v51, 1))
      {
LABEL_110:
        __break(1u);
LABEL_111:
        __break(1u);
LABEL_112:
        __break(1u);
        goto LABEL_113;
      }
    }

    v54 = *&v52[OBJC_IVAR____TtC10TVRemoteUI25FMPFSKPatternFragmentNode_perimeterRotateOnceAction];

    if (!v54)
    {
      v47 = v53;
      v49 = v50;
      v48 = v82 + 1;
      if (!__OFADD__(v82, 1))
      {
        goto LABEL_78;
      }

      __break(1u);
      break;
    }

    ++v51;
    if (__OFADD__(v50++, 1))
    {
      goto LABEL_112;
    }
  }

  v56 = OBJC_IVAR____TtC10TVRemoteUI17FMPFSKPatternNode_allFragmentsAreOrbiting;
  v57 = *(v81 + v78);
  if (*(v81 + OBJC_IVAR____TtC10TVRemoteUI17FMPFSKPatternNode_allFragmentsAreOrbiting))
  {
    if (!(v57 >> 62))
    {
LABEL_95:
      v58 = *((v57 & 0xFFFFFFFFFFFFFF8) + 0x10);
      goto LABEL_96;
    }

LABEL_130:
    if (v57 < 0)
    {
      v74 = v57;
    }

    else
    {
      v74 = v57 & 0xFFFFFFFFFFFFFF8;
    }

    v58 = MEMORY[0x26D6B1780](v74);
LABEL_96:
    if (v58 == v82)
    {
      *(v81 + v56) = 0;
      v59 = v81 + OBJC_IVAR____TtC10TVRemoteUI17FMPFSKPatternNode_delegate;
      if (swift_unknownObjectWeakLoadStrong())
      {
        v60 = *(v59 + 8);
        v61 = swift_getObjectType();
        (*(v60 + 16))(v61, v60);
        swift_unknownObjectRelease();
      }

      if ((*(v81 + OBJC_IVAR____TtC10TVRemoteUI17FMPFSKPatternNode_track + 8) & 1) == 0)
      {
        v62 = *(v81 + OBJC_IVAR____TtC10TVRemoteUI17FMPFSKPatternNode_trackSpring);
        FLSpring.resetImmediately(toValue:)(*(v81 + OBJC_IVAR____TtC10TVRemoteUI17FMPFSKPatternNode_track));
        *(v62 + OBJC_IVAR____TtC10TVRemoteUI15FMPFFluidSpring_ready) = 0;
      }

      return;
    }

    goto LABEL_134;
  }

  v63 = v46 + v80 - v47;
  if (v57 >> 62)
  {
    if (v57 < 0)
    {
      v73 = *(v81 + v78);
    }

    else
    {
      v73 = v57 & 0xFFFFFFFFFFFFFF8;
    }

    if (MEMORY[0x26D6B1780](v73) == v63)
    {
      goto LABEL_103;
    }

LABEL_128:
    if (*(v81 + v56) != 1)
    {
LABEL_134:
      if (*(v81 + OBJC_IVAR____TtC10TVRemoteUI17FMPFSKPatternNode_trackDidChange) == 1 && (*(v81 + v56) & 1) == 0 && (*(v81 + OBJC_IVAR____TtC10TVRemoteUI17FMPFSKPatternNode_track + 8) & 1) == 0)
      {
        v75 = *(v81 + OBJC_IVAR____TtC10TVRemoteUI17FMPFSKPatternNode_track);
        *(v81 + OBJC_IVAR____TtC10TVRemoteUI17FMPFSKPatternNode_trackDidChange) = 0;
        v76 = *(v81 + OBJC_IVAR____TtC10TVRemoteUI17FMPFSKPatternNode_trackSpring) + OBJC_IVAR____TtC10TVRemoteUI15FMPFFluidSpring_ftarget;
        *v76 = v75;
        *(v76 + 8) = 0;
        FMPFFluidSpring.ftarget.didset();
      }

      return;
    }

    v57 = *(v81 + v78);
    if (!(v57 >> 62))
    {
      goto LABEL_95;
    }

    goto LABEL_130;
  }

  if (*((v57 & 0xFFFFFFFFFFFFFF8) + 0x10) != v63)
  {
    goto LABEL_128;
  }

LABEL_103:
  *(v81 + v56) = 1;
  v64 = v81 + OBJC_IVAR____TtC10TVRemoteUI17FMPFSKPatternNode_delegate;
  if (swift_unknownObjectWeakLoadStrong())
  {
    v65 = *(v64 + 8);
    v66 = swift_getObjectType();
    (*(v65 + 8))(v66, v65);
    swift_unknownObjectRelease();
  }

  v67 = *(v81 + OBJC_IVAR____TtC10TVRemoteUI17FMPFSKPatternNode_trackSpring);
  FLSpring.resetImmediately(toValue:)(0.5);
  *(v67 + OBJC_IVAR____TtC10TVRemoteUI15FMPFFluidSpring_ready) = 0;
  FMPFSKPatternNode.applyTrack(_:)(0.5);
}

void FMPFSKPatternNode.apply(presentedEnergeticAngle:presentedLethargicAngle:presentedCenterFactor:presentedLookout:)(uint64_t a1, int a2, uint64_t a3, char a4, uint64_t a5, char a6, uint64_t a7, int a8)
{
  v9 = v8;
  v192 = a2;
  v17 = type metadata accessor for DispatchWorkItemFlags();
  v189 = *(v17 - 8);
  v190 = v17;
  MEMORY[0x28223BE20]();
  v188 = &v166 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for DispatchQoS();
  v19 = MEMORY[0x28223BE20]();
  v22 = *(v9 + OBJC_IVAR____TtC10TVRemoteUI17FMPFSKPatternNode_noonNode);
  if (v22)
  {
    v23 = *(v9 + OBJC_IVAR____TtC10TVRemoteUI17FMPFSKPatternNode_pointeeNode);
    if (v23)
    {
      if ((*(v9 + OBJC_IVAR____TtC10TVRemoteUI17FMPFSKPatternNode_presentedConformationFactor + 8) & 1) == 0)
      {
        v171 = &v166 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
        v172 = v21;
        v184 = a8;
        v173 = v19;
        v24 = *(v9 + OBJC_IVAR____TtC10TVRemoteUI17FMPFSKPatternNode_presentedConformationFactor);
        v25 = v9 + OBJC_IVAR____TtC10TVRemoteUI17FMPFSKPatternNode_presentedCenterFactor;
        *v25 = *&a5;
        *(v25 + 8) = a6 & 1;
        if (a6)
        {
          v26 = 0.0;
        }

        else
        {
          v26 = *&a5;
        }

        v27 = objc_opt_self();
        v187 = v22;
        v191 = v23;
        v28 = [v27 standardUserDefaults];
        v29 = [v28 fmpfDebugMode];

        v30 = 1.0;
        if (!v29)
        {
          v30 = 0.0;
        }

        [*(v9 + OBJC_IVAR____TtC10TVRemoteUI17FMPFSKPatternNode_canvasPatternSpinesNode) setAlpha_];
        v31 = *(v9 + OBJC_IVAR____TtC10TVRemoteUI17FMPFSKPatternNode_gimbalNode);
        if (a4)
        {
          [*(v9 + OBJC_IVAR____TtC10TVRemoteUI17FMPFSKPatternNode_gimbalNode) zRotation];
        }

        else
        {
          v32 = *&a3;
        }

        v33 = v192;
        [v31 setZRotation_];
        v34 = *&a1;
        if ((v33 & 1) == 0)
        {
          v34 = *&a1 / 3.14159265 * 180.0;
        }

        v35 = v9 + OBJC_IVAR____TtC10TVRemoteUI17FMPFSKPatternNode_presentedEnergeticBearing;
        *v35 = v34;
        *(v35 + 8) = v33 & 1;
        if ((a4 & 1) == 0)
        {
          *&a3 = *&a3 / 3.14159265 * 180.0;
        }

        v36 = v9 + OBJC_IVAR____TtC10TVRemoteUI17FMPFSKPatternNode_presentedLethargicBearing;
        *v36 = *&a3;
        *(v36 + 8) = a4 & 1;
        [*&v191[OBJC_IVAR____TtC10TVRemoteUI23FMPFSKPeripheralDotNode_gimbalNode] zRotation];
        v37 = 6.28318531;
        v39 = fmod(v38, 6.28318531);
        v186 = 3.14159265;
        if (v39 <= 3.14159265)
        {
          v40 = v184;
          if (v39 < -3.14159265)
          {
            v39 = v39 + 6.28318531;
          }
        }

        else
        {
          v39 = v39 + -6.28318531;
          v40 = v184;
        }

        v41 = fmod(v39, 6.28318531);
        if (v41 <= v186)
        {
          if (v41 < -3.14159265)
          {
            v41 = v41 + 6.28318531;
          }
        }

        else
        {
          v41 = v41 + -6.28318531;
        }

        if ((v33 & 1) == 0)
        {
          v41 = *&a1;
        }

        v42 = (v9 + OBJC_IVAR____TtC10TVRemoteUI17FMPFSKPatternNode_style);
        v43 = *(v9 + OBJC_IVAR____TtC10TVRemoteUI17FMPFSKPatternNode_style + 112);
        v44 = *(v9 + OBJC_IVAR____TtC10TVRemoteUI17FMPFSKPatternNode_style + 120);
        v46 = *(v9 + OBJC_IVAR____TtC10TVRemoteUI17FMPFSKPatternNode_style + 96);
        v45 = *(v9 + OBJC_IVAR____TtC10TVRemoteUI17FMPFSKPatternNode_style + 104);
        v47 = *(v9 + OBJC_IVAR____TtC10TVRemoteUI17FMPFSKPatternNode_style + 136);
        v170 = *(v9 + OBJC_IVAR____TtC10TVRemoteUI17FMPFSKPatternNode_style + 144);
        v169 = v47;
        v183 = *(v9 + OBJC_IVAR____TtC10TVRemoteUI17FMPFSKPatternNode_style + 128);
        v48 = v9 + OBJC_IVAR____TtC10TVRemoteUI17FMPFSKPatternNode_presentedLookout;
        *v48 = *&a7;
        *(v48 + 8) = v40 & 1;
        v49 = remainder(v41, 6.28318531);
        v50 = fmod(v49, 6.28318531);
        v51 = v50;
        if (v50 <= v186)
        {
          if (v50 < -3.14159265)
          {
            v51 = v50 + 6.28318531;
          }
        }

        else
        {
          v51 = v50 + -6.28318531;
        }

        v52 = (v24 - v42[20]) / (1.0 - v42[20]);
        if (v52 < 0.0)
        {
          v52 = 0.0;
        }

        v175 = *&a7;
        if (v40)
        {
          v53 = 0.0;
        }

        else
        {
          v53 = *&a7;
        }

        v55 = (1.0 - v26) * v52;
        v56 = (1.0 - v53) * v55;
        v57 = v24;
        if (*(v9 + OBJC_IVAR____TtC10TVRemoteUI17FMPFSKPatternNode_forceHideNoonNode))
        {
          v58 = 0.0;
        }

        else
        {
          v58 = v52;
        }

        v59 = (v9 + OBJC_IVAR____TtC10TVRemoteUI17FMPFSKPatternNode_presentedConformedToExplodedFactor);
        v60 = *(v9 + OBJC_IVAR____TtC10TVRemoteUI17FMPFSKPatternNode_presentedConformedToExplodedFactor + 8);
        v181 = v57;
        if (v60)
        {
          v179 = (1.0 - v53) * v55;
          v61 = 1.0;
        }

        else
        {
          v61 = 1.0 - *v59;
          v62 = v57 * *v59;
          v52 = v62 + v52 * v61;
          v53 = v62 + v53 * v61;
          v179 = v56 * v61;
        }

        v54 = 1.0 - v26;
        v176 = v61 * -(*(v9 + OBJC_IVAR____TtC10TVRemoteUI17FMPFSKPatternNode_sceneSize + 8) * (v26 * (v26 * v26) + v26 * v26 * (v54 * 0.0) + v54 * (v54 * v54) * 0.0 + v26 * (v54 * v54 * 0.0)));
        v182 = v45 * v52 + v46 * (1.0 - v52);
        v178 = v44 * v52 + v43 * (1.0 - v52);
        v185 = v53;
        v63 = v183 * v53;
        v168 = v42[21];
        v167 = *(v9 + OBJC_IVAR____TtC10TVRemoteUI17FMPFSKPatternNode_pixelsPerInch);
        v64 = [objc_opt_self() mainScreen];
        [v64 scale];
        v66 = v65;

        v67 = v42[2];
        v68 = v191;
        v69 = &v191[OBJC_IVAR____TtC10TVRemoteUI23FMPFSKPeripheralDotNode_opacity];
        *v69 = 0x3FF0000000000000;
        v69[8] = 0;
        v70 = *&v68[OBJC_IVAR____TtC10TVRemoteUI23FMPFSKPeripheralDotNode_opacitySpring];
        FLSpring.resetImmediately(toValue:)(1.0);
        *(v70 + OBJC_IVAR____TtC10TVRemoteUI15FMPFFluidSpring_ready) = 0;
        v71 = &v68[OBJC_IVAR____TtC10TVRemoteUI23FMPFSKPeripheralDotNode_presentedOpacity];
        *v71 = 0x3FF0000000000000;
        v71[8] = 0;
        v174 = OBJC_IVAR____TtC10TVRemoteUI23FMPFSKPeripheralDotNode_dotNode;
        [*&v68[OBJC_IVAR____TtC10TVRemoteUI23FMPFSKPeripheralDotNode_dotNode] setAlpha_];
        [*&v68[OBJC_IVAR____TtC10TVRemoteUI23FMPFSKPeripheralDotNode_btRangingNode] setAlpha_];
        v72 = v187;
        v73 = &v187[OBJC_IVAR____TtC10TVRemoteUI23FMPFSKPeripheralDotNode_opacity];
        *v73 = v58;
        *(v73 + 8) = 0;
        v74 = *&v72[OBJC_IVAR____TtC10TVRemoteUI23FMPFSKPeripheralDotNode_opacitySpring];
        FLSpring.resetImmediately(toValue:)(v58);
        *(v74 + OBJC_IVAR____TtC10TVRemoteUI15FMPFFluidSpring_ready) = 0;
        v75 = &v72[OBJC_IVAR____TtC10TVRemoteUI23FMPFSKPeripheralDotNode_presentedOpacity];
        *v75 = v58;
        *(v75 + 8) = 0;
        v76 = OBJC_IVAR____TtC10TVRemoteUI23FMPFSKPeripheralDotNode_dotNode;
        [*&v72[OBJC_IVAR____TtC10TVRemoteUI23FMPFSKPeripheralDotNode_dotNode] setAlpha_];
        [*&v72[OBJC_IVAR____TtC10TVRemoteUI23FMPFSKPeripheralDotNode_btRangingNode] setAlpha_];
        v77 = *(v9 + OBJC_IVAR____TtC10TVRemoteUI17FMPFSKPatternNode_centerFactor + 8);
        v180 = v63;
        if ((v77 & 1) != 0 || (v78 = *(v9 + OBJC_IVAR____TtC10TVRemoteUI17FMPFSKPatternNode_inFOV), v78 == 2) || (v79 = *(v9 + OBJC_IVAR____TtC10TVRemoteUI17FMPFSKPatternNode_centerFactor), (v78 & 1) == 0) && v26 < 2.22044605e-16)
        {
          v80 = OBJC_IVAR____TtC10TVRemoteUI17FMPFSKPatternNode_extraDiskRadiusWhenSnapping;
          v81 = *(v9 + OBJC_IVAR____TtC10TVRemoteUI17FMPFSKPatternNode_extraDiskRadiusWhenSnapping);
          v82 = OBJC_IVAR____TtC10TVRemoteUI17FMPFSKPatternNode_noonNodeSnappedUnderPointeeNode;
          v83 = *(v9 + OBJC_IVAR____TtC10TVRemoteUI17FMPFSKPatternNode_noonNodeSnappedUnderPointeeNode) == 1;
          *&v177 = 6.28318531;
          if (v83)
          {
            v84 = 0.0;
            FMPFSKPatternNode.setLookout(_:sprung:)(1, 0.0);
            if (v81 <= 0.0)
            {
              *(v9 + v82) = 0;
              v88 = v185;
            }

            else
            {
              v85 = v9 + OBJC_IVAR____TtC10TVRemoteUI17FMPFSKPatternNode_delegate;
              if (swift_unknownObjectWeakLoadStrong())
              {
                v86 = *(v85 + 8);
                ObjectType = swift_getObjectType();
                (*(v86 + 80))(ObjectType, v86);
                swift_unknownObjectRelease();
              }

              *(v9 + v82) = 0;
              v88 = v185;
              v84 = v51 * v185;
            }
          }

          else
          {
            *(v9 + OBJC_IVAR____TtC10TVRemoteUI17FMPFSKPatternNode_noonNodeSnappedUnderPointeeNode) = 0;
            v84 = 0.0;
            v88 = v185;
            if (v81 > 0.0)
            {
              v84 = v51 * v185;
            }
          }

          v89 = OBJC_IVAR____TtC10TVRemoteUI17FMPFSKPatternNode_peripheralDiskRadius;
          v90 = v88 * *(v9 + v80);
          v91 = -((v90 + *(v9 + OBJC_IVAR____TtC10TVRemoteUI17FMPFSKPatternNode_peripheralDiskRadius)) * v26);
          v92 = -(v91 * cos(1.57079633 - v51));
          v93 = sin(1.57079633 - fabs(v51)) * v91;
          if (*(v9 + OBJC_IVAR____TtC10TVRemoteUI17FMPFSKPatternNode_experienceType) != 1)
          {
            [*(v9 + OBJC_IVAR____TtC10TVRemoteUI17FMPFSKPatternNode_patternFragmentsNode) setPosition_];
          }

          v94 = v191;
          FMPFSKPeripheralDotNode.setOffset(_:sprung:)(__PAIR128__(*&v93, *&v92), 0);
          v95 = v187;
          FMPFSKPeripheralDotNode.setOffset(_:sprung:)(__PAIR128__(*&v93, *&v92), 0);
          FMPFSKPeripheralDotNode.setDotScale(_:sprung:)(1, v178);
          FMPFSKPeripheralDotNode.setAngle(_:sprung:)(0, v84);
          v96 = v90 + *(v9 + v89);
          v97 = &v95[OBJC_IVAR____TtC10TVRemoteUI23FMPFSKPeripheralDotNode_diskRadius];
          *v97 = v96;
          *(v97 + 8) = 0;
          v98 = *&v95[OBJC_IVAR____TtC10TVRemoteUI23FMPFSKPeripheralDotNode_diskRadiusSpring];
          FLSpring.resetImmediately(toValue:)(v96);
          *(v98 + OBJC_IVAR____TtC10TVRemoteUI15FMPFFluidSpring_ready) = 0;
          v99 = &v95[OBJC_IVAR____TtC10TVRemoteUI23FMPFSKPeripheralDotNode_presentedDiskRadius];
          *v99 = v96;
          *(v99 + 8) = 0;
          [*&v95[OBJC_IVAR____TtC10TVRemoteUI23FMPFSKPeripheralDotNode_diskNode] setPosition_];
          FMPFSKPeripheralDotNode.setDotScale(_:sprung:)(1, v182);
          v100 = v90 + *(v9 + v89);
          v101 = &v94[OBJC_IVAR____TtC10TVRemoteUI23FMPFSKPeripheralDotNode_diskRadius];
          *v101 = v100;
          v101[8] = 0;
          v102 = *&v94[OBJC_IVAR____TtC10TVRemoteUI23FMPFSKPeripheralDotNode_diskRadiusSpring];
          FLSpring.resetImmediately(toValue:)(v100);
          *(v102 + OBJC_IVAR____TtC10TVRemoteUI15FMPFFluidSpring_ready) = 0;
          v103 = &v94[OBJC_IVAR____TtC10TVRemoteUI23FMPFSKPeripheralDotNode_presentedDiskRadius];
          *v103 = v100;
          v103[8] = 0;
          [*&v94[OBJC_IVAR____TtC10TVRemoteUI23FMPFSKPeripheralDotNode_diskNode] setPosition_];
          v95[OBJC_IVAR____TtC10TVRemoteUI23FMPFSKPeripheralDotNode_shouldApplyRadiusFactor] = 0;
          FMPFSKPeripheralDotNode.pulse(_:animated:)(0, 0);
          v104 = v180;
          if (v81 <= 0.0)
          {
            v104 = 0.0;
          }

          v105 = v192;
          v106 = v181;
          v37 = *&v177;
          goto LABEL_59;
        }

        v119 = OBJC_IVAR____TtC10TVRemoteUI17FMPFSKPatternNode_noonNodeSnappedUnderPointeeNode;
        if (*(v9 + OBJC_IVAR____TtC10TVRemoteUI17FMPFSKPatternNode_noonNodeSnappedUnderPointeeNode))
        {
          *(v9 + OBJC_IVAR____TtC10TVRemoteUI17FMPFSKPatternNode_noonNodeSnappedUnderPointeeNode) = 1;
          v120 = v79 >= 0.5;
          if (v78)
          {
            v105 = v192;
            v121 = v185;
            if (v79 >= 0.5)
            {
              v120 = 1;
              v122 = v51;
LABEL_100:
              v166 = v122;
              v135 = OBJC_IVAR____TtC10TVRemoteUI17FMPFSKPatternNode_experienceType;
              v136 = 0.0;
              v137 = 1.0;
              v138 = 0.0;
              if (*(v9 + OBJC_IVAR____TtC10TVRemoteUI17FMPFSKPatternNode_experienceType) != 2)
              {
                v139 = 1.0;
                v140 = 0.0;
                if (v120)
                {
                  v140 = v121;
                  v139 = 1.0 - v121;
                }

                v138 = 1.0 - v121 + v169 * v140;
                v137 = v26 * (v168 * v167 / v66 / v67 / v182 - v170) + v139 + v170 * v140;
              }

              v169 = v138;
              v170 = v137;
              v141 = OBJC_IVAR____TtC10TVRemoteUI17FMPFSKPatternNode_peripheralDiskRadius;
              v142 = *(v9 + OBJC_IVAR____TtC10TVRemoteUI17FMPFSKPatternNode_peripheralDiskRadius);
              if (v78)
              {
                v136 = v121;
              }

              v143 = v136 * (v183 * v142);
              *(v9 + OBJC_IVAR____TtC10TVRemoteUI17FMPFSKPatternNode_extraDiskRadiusWhenSnapping) = v143;
              v144 = -((v142 + v143) * v26);
              v145 = -(v144 * cos(1.57079633 - v51));
              v146 = sin(1.57079633 - fabs(v51)) * v144;
              if (*(v9 + v135) != 1)
              {
                [*(v9 + OBJC_IVAR____TtC10TVRemoteUI17FMPFSKPatternNode_patternFragmentsNode) setPosition_];
              }

              v147 = v191;
              FMPFSKPeripheralDotNode.setOffset(_:sprung:)(__PAIR128__(*&v146, *&v145), 0);
              v148 = v187;
              FMPFSKPeripheralDotNode.setOffset(_:sprung:)(__PAIR128__(*&v146, *&v145), 0);
              v149 = v178 * v169;
              v150 = &v148[OBJC_IVAR____TtC10TVRemoteUI23FMPFSKPeripheralDotNode_dotScale];
              *v150 = v178 * v169;
              *(v150 + 8) = 0;
              v151 = *&v148[OBJC_IVAR____TtC10TVRemoteUI23FMPFSKPeripheralDotNode_dotScaleSpring];
              FLSpring.resetImmediately(toValue:)(v149);
              *(v151 + OBJC_IVAR____TtC10TVRemoteUI15FMPFFluidSpring_ready) = 0;
              v152 = &v148[OBJC_IVAR____TtC10TVRemoteUI23FMPFSKPeripheralDotNode_presentedDotScale];
              *v152 = v149;
              *(v152 + 8) = 0;
              [*&v148[v76] setScale_];
              FMPFSKPeripheralDotNode.setAngle(_:sprung:)(0, v166);
              v153 = v143 + *(v9 + v141);
              v154 = &v148[OBJC_IVAR____TtC10TVRemoteUI23FMPFSKPeripheralDotNode_diskRadius];
              *v154 = v153;
              *(v154 + 8) = 0;
              v155 = *&v148[OBJC_IVAR____TtC10TVRemoteUI23FMPFSKPeripheralDotNode_diskRadiusSpring];
              FLSpring.resetImmediately(toValue:)(v153);
              *(v155 + OBJC_IVAR____TtC10TVRemoteUI15FMPFFluidSpring_ready) = 0;
              v156 = &v148[OBJC_IVAR____TtC10TVRemoteUI23FMPFSKPeripheralDotNode_presentedDiskRadius];
              *v156 = v153;
              *(v156 + 8) = 0;
              [*&v148[OBJC_IVAR____TtC10TVRemoteUI23FMPFSKPeripheralDotNode_diskNode] setPosition_];
              v157 = v182 * v170;
              v158 = &v147[OBJC_IVAR____TtC10TVRemoteUI23FMPFSKPeripheralDotNode_dotScale];
              *v158 = v182 * v170;
              v158[8] = 0;
              v159 = *&v147[OBJC_IVAR____TtC10TVRemoteUI23FMPFSKPeripheralDotNode_dotScaleSpring];
              FLSpring.resetImmediately(toValue:)(v157);
              *(v159 + OBJC_IVAR____TtC10TVRemoteUI15FMPFFluidSpring_ready) = 0;
              v160 = &v147[OBJC_IVAR____TtC10TVRemoteUI23FMPFSKPeripheralDotNode_presentedDotScale];
              *v160 = v157;
              v160[8] = 0;
              [*&v147[v174] setScale_];
              v161 = v143 + *(v9 + v141);
              v162 = &v147[OBJC_IVAR____TtC10TVRemoteUI23FMPFSKPeripheralDotNode_diskRadius];
              *v162 = v161;
              v162[8] = 0;
              v163 = *&v147[OBJC_IVAR____TtC10TVRemoteUI23FMPFSKPeripheralDotNode_diskRadiusSpring];
              FLSpring.resetImmediately(toValue:)(v161);
              *(v163 + OBJC_IVAR____TtC10TVRemoteUI15FMPFFluidSpring_ready) = 0;
              v164 = &v147[OBJC_IVAR____TtC10TVRemoteUI23FMPFSKPeripheralDotNode_presentedDiskRadius];
              *v164 = v161;
              v164[8] = 0;
              [*&v147[OBJC_IVAR____TtC10TVRemoteUI23FMPFSKPeripheralDotNode_diskNode] setPosition_];
              v165 = 0;
              if (v26 >= 1.0)
              {
                v165 = FMPFSKPeripheralDotNode.presentedRingCount.getter() == 0;
              }

              v187[OBJC_IVAR____TtC10TVRemoteUI23FMPFSKPeripheralDotNode_shouldApplyRadiusFactor] = v165;
              v106 = v181;
              v104 = v180;
LABEL_59:
              v107 = OBJC_IVAR____TtC10TVRemoteUI17FMPFSKPatternNode_ringView;
              v108 = *(v9 + OBJC_IVAR____TtC10TVRemoteUI17FMPFSKPatternNode_ringView);
              if (v108)
              {
                v109 = *&v179;
                v110 = v108;
                FMPFRingView.setOpacity(_:sprung:)(v109, 0, 1);
              }

              if ((v187[OBJC_IVAR____TtC10TVRemoteUI23FMPFSKPeripheralDotNode_presentedAngle + 8] & 1) == 0)
              {
                v111 = fmod(*&v187[OBJC_IVAR____TtC10TVRemoteUI23FMPFSKPeripheralDotNode_presentedAngle], v37);
                if (v111 <= v186)
                {
                  if (v111 < -3.14159265)
                  {
                    v111 = v111 + v37;
                  }
                }

                else
                {
                  v111 = v111 + -6.28318531;
                }

                v112 = *(v9 + v107);
                if (v112 && v111 <= fabs(v51))
                {
                  v113 = swift_allocObject();
                  *(v113 + 16) = v104;
                  *(v113 + 24) = 0;
                  *(v113 + 32) = v112;
                  *(v113 + 40) = v111;
                  *(v113 + 48) = v51;
                  v114 = objc_opt_self();
                  v115 = v112;
                  if ([v114 isMainThread])
                  {
                    v116 = *&v115[OBJC_IVAR____TtC10TVRemoteUI12FMPFRingView_startAngleSpring];
                    FLSpring.resetImmediately(toValue:)(v111);
                    *(v116 + OBJC_IVAR____TtC10TVRemoteUI15FMPFFluidSpring_ready) = 0;
                    v117 = *&v115[OBJC_IVAR____TtC10TVRemoteUI12FMPFRingView_endAngleSpring];
                    FLSpring.resetImmediately(toValue:)(v51);
                    *(v117 + OBJC_IVAR____TtC10TVRemoteUI15FMPFFluidSpring_ready) = 0;
                    v118 = *&v115[OBJC_IVAR____TtC10TVRemoteUI12FMPFRingView_additionalRadiusScaleSpring];
                    FLSpring.resetImmediately(toValue:)(v104);
                    *(v118 + OBJC_IVAR____TtC10TVRemoteUI15FMPFFluidSpring_ready) = 0;
                    *&v115[OBJC_IVAR____TtC10TVRemoteUI12FMPFRingView_startAngle] = v111;
                    *&v115[OBJC_IVAR____TtC10TVRemoteUI12FMPFRingView_endAngle] = v51;
                    *&v115[OBJC_IVAR____TtC10TVRemoteUI12FMPFRingView_additionalRadiusScale] = v104;
                    [v115 bounds];
                    [v115 drawRect_];
                  }

                  else
                  {
                    type metadata accessor for SKConstraint(0, &lazy cache variable for type metadata for OS_dispatch_queue);
                    v123 = static OS_dispatch_queue.main.getter();
                    v124 = swift_allocObject();
                    *(v124 + 16) = partial apply for closure #1 in FMPFRingView.drawFromStartAngle(_:to:additionalRadiusScale:sprung:);
                    *(v124 + 24) = v113;
                    aBlock[4] = partial apply for closure #2 in FMPFRingView.drawFromStartAngle(_:to:additionalRadiusScale:sprung:);
                    aBlock[5] = v124;
                    aBlock[0] = MEMORY[0x277D85DD0];
                    aBlock[1] = 1107296256;
                    aBlock[2] = thunk for @escaping @callee_guaranteed () -> ();
                    aBlock[3] = &block_descriptor_5;
                    v125 = _Block_copy(aBlock);

                    v126 = v171;
                    static DispatchQoS.unspecified.getter();
                    aBlock[0] = MEMORY[0x277D84F90];
                    lazy protocol witness table accessor for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags();
                    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay8Dispatch0A13WorkItemFlagsVGMd);
                    lazy protocol witness table accessor for type [DispatchWorkItemFlags] and conformance [A]();
                    v127 = v188;
                    v128 = v190;
                    dispatch thunk of SetAlgebra.init<A>(_:)();
                    MEMORY[0x26D6B1500](0, v126, v127, v125);
                    _Block_release(v125);

                    (*(v189 + 8))(v127, v128);
                    (*(v172 + 8))(v126, v173);
                  }

                  v105 = v192;
                }
              }

              if (v185 <= 0.0)
              {
                v129 = v105 ^ 1;
                if ((v184 & 1) == 0 && v175 > 0.0)
                {
LABEL_81:
                  if (*(v9 + OBJC_IVAR____TtC10TVRemoteUI17FMPFSKPatternNode_experienceType) == 1)
                  {
                    if (v106 > 0.0)
                    {
                      goto LABEL_88;
                    }
                  }

                  else if (v106 > 0.75)
                  {
                    goto LABEL_88;
                  }

                  if ((*(v9 + OBJC_IVAR____TtC10TVRemoteUI17FMPFSKPatternNode_conformationFactor + 8) & 1) == 0 && *(v9 + OBJC_IVAR____TtC10TVRemoteUI17FMPFSKPatternNode_conformationFactor) == 0.0)
                  {
                    v130 = &v191[OBJC_IVAR____TtC10TVRemoteUI23FMPFSKPeripheralDotNode_interactiveAngleFactor];
                    *v130 = 0;
                    v130[8] = 1;
                    FMPFSKPeripheralDotNode.setFreeFromBearing()();
LABEL_89:

                    return;
                  }

LABEL_88:
                  FMPFSKPeripheralDotNode.setBoundToBearing()();
                  FMPFSKPeripheralDotNode.setUnsprungInteractiveAngleFactor(_:)(COERCE_ID(v106 * (v106 * v106) + v106 * v106 * ((1.0 - v106) * 3.0) + (1.0 - v106) * ((1.0 - v106) * (1.0 - v106)) * 0.0 + v106 * ((1.0 - v106) * (1.0 - v106) * 3.0)), 0);
                  goto LABEL_89;
                }
              }

              else
              {
                v129 = 0;
              }

              FMPFSKPeripheralDotNode.setAngle(_:sprung:)(v129 & 1, v51);
              goto LABEL_81;
            }

LABEL_95:
            v122 = v51 * v121;
            v120 = 1;
            goto LABEL_100;
          }

          v105 = v192;
          v121 = v185;
        }

        else
        {
          FMPFSKPatternNode.setLookout(_:sprung:)(1, 1.0);
          if (v78)
          {
            v131 = v9 + OBJC_IVAR____TtC10TVRemoteUI17FMPFSKPatternNode_delegate;
            Strong = swift_unknownObjectWeakLoadStrong();
            v105 = v192;
            if (Strong)
            {
              v133 = *(v131 + 8);
              v134 = swift_getObjectType();
              (*(v133 + 72))(v134, v133);
              swift_unknownObjectRelease();
            }

            v120 = 1;
            *(v9 + v119) = 1;
            v122 = v51;
            v121 = v185;
            if (v79 >= 0.5)
            {
              goto LABEL_100;
            }

            goto LABEL_95;
          }

          *(v9 + v119) = 1;
          v120 = v79 >= 0.5;
          v105 = v192;
          v121 = v185;
        }

        v122 = 0.0;
        if (v120)
        {
          v122 = v51;
        }

        goto LABEL_100;
      }
    }
  }
}

uint64_t FMPFSKPatternNode.applyTrack(_:)(double a1)
{
  v3 = v1 + OBJC_IVAR____TtC10TVRemoteUI17FMPFSKPatternNode_config;
  v4 = 0.0;
  if ((*(v1 + OBJC_IVAR____TtC10TVRemoteUI17FMPFSKPatternNode_config + 32) & 1) == 0)
  {
    v4 = (a1 + -0.5) * ((*(v1 + OBJC_IVAR____TtC10TVRemoteUI17FMPFSKPatternNode_peripheralDiskRadius) + *(v1 + OBJC_IVAR____TtC10TVRemoteUI17FMPFSKPatternNode_peripheralDiskRadius)) * *v3 / *(v3 + 24));
  }

  v5 = *(v1 + OBJC_IVAR____TtC10TVRemoteUI17FMPFSKPatternNode_gimbalNode);
  [v5 position];
  [v5 setPosition_];
  v6 = OBJC_IVAR____TtC10TVRemoteUI17FMPFSKPatternNode_patternFragmentNodes;
  swift_beginAccess();
  v25 = v1;
  j = *(v1 + v6);
  if (j >> 62)
  {
    goto LABEL_33;
  }

  for (i = *((j & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = MEMORY[0x26D6B1780](v23))
  {

    if (i)
    {
      v9 = 0;
      while (1)
      {
        if ((j & 0xC000000000000001) != 0)
        {
          v10 = MEMORY[0x26D6B1680](v9, j);
        }

        else
        {
          if (v9 >= *((j & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_30;
          }

          v10 = *(j + 8 * v9 + 32);
        }

        v11 = v10;
        v12 = v9 + 1;
        if (__OFADD__(v9, 1))
        {
          break;
        }

        v13 = &v10[OBJC_IVAR____TtC10TVRemoteUI25FMPFSKPatternFragmentNode_trackOffset];
        *v13 = v4;
        *(v13 + 8) = 0;
        if ((v10[OBJC_IVAR____TtC10TVRemoteUI25FMPFSKPatternFragmentNode_conformationFactor + 8] & 1) == 0)
        {
          FMPFSKPatternFragmentNode.applyConformationFactor(_:)(*&v10[OBJC_IVAR____TtC10TVRemoteUI25FMPFSKPatternFragmentNode_conformationFactor]);
        }

        ++v9;
        if (v12 == i)
        {
          goto LABEL_15;
        }
      }

      __break(1u);
LABEL_30:
      __break(1u);
      goto LABEL_31;
    }

LABEL_15:

    if (*(v3 + 112))
    {
      return result;
    }

    v4 = *(v3 + 104);
    v15 = [*(v25 + OBJC_IVAR____TtC10TVRemoteUI17FMPFSKPatternNode_labelsNode) children];
    type metadata accessor for SKConstraint(0, &lazy cache variable for type metadata for SKNode);
    v16 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

    v17 = specialized _arrayConditionalCast<A, B>(_:)(v16);

    if (!v17)
    {
      return result;
    }

    if (!(v17 >> 62))
    {
      v18 = *((v17 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (!v18)
      {
      }

      goto LABEL_19;
    }

    v24 = v17 >= 0 ? v17 & 0xFFFFFFFFFFFFFF8 : v17;
    v18 = MEMORY[0x26D6B1780](v24);
    if (!v18)
    {
      break;
    }

LABEL_19:
    for (j = 0; ; ++j)
    {
      if ((v17 & 0xC000000000000001) != 0)
      {
        v19 = MEMORY[0x26D6B1680](j, v17);
      }

      else
      {
        if (j >= *((v17 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_32;
        }

        v19 = *(v17 + 8 * j + 32);
      }

      v20 = v19;
      v21 = j + 1;
      if (__OFADD__(j, 1))
      {
        break;
      }

      v22 = v4 * ((*&v19[OBJC_IVAR____TtC10TVRemoteUI15FMPFSKLabelNode_normalizedIndex] - a1) * *v3);
      if (v22 < 0.0)
      {
        v22 = 0.0;
      }

      [v19 setAlpha_];

      if (v21 == v18)
      {
      }
    }

LABEL_31:
    __break(1u);
LABEL_32:
    __break(1u);
LABEL_33:
    if (j < 0)
    {
      v23 = j;
    }

    else
    {
      v23 = j & 0xFFFFFFFFFFFFFF8;
    }
  }
}

uint64_t specialized _arrayConditionalCast<A, B>(_:)(uint64_t a1)
{
  v9 = MEMORY[0x277D84F90];
  if (a1 >> 62)
  {
    goto LABEL_15;
  }

  specialized ContiguousArray.reserveCapacity(_:)();
  for (i = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = MEMORY[0x26D6B1780](v8))
  {
    for (j = 0; ; ++j)
    {
      if ((a1 & 0xC000000000000001) != 0)
      {
        v4 = MEMORY[0x26D6B1680](j, a1);
      }

      else
      {
        if (j >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_14;
        }

        v4 = *(a1 + 8 * j + 32);
      }

      v5 = v4;
      v6 = j + 1;
      if (__OFADD__(j, 1))
      {
        break;
      }

      type metadata accessor for FMPFSKLabelNode();
      if (!swift_dynamicCastClass())
      {

        return 0;
      }

      specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
      specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
      specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      specialized ContiguousArray._endMutation()();
      if (v6 == i)
      {
        return v9;
      }
    }

    __break(1u);
LABEL_14:
    __break(1u);
LABEL_15:
    if (a1 < 0)
    {
      v8 = a1;
    }

    else
    {
      v8 = a1 & 0xFFFFFFFFFFFFFF8;
    }

    MEMORY[0x26D6B1780](v8);
    specialized ContiguousArray.reserveCapacity(_:)();
  }

  return v9;
}

Swift::Void __swiftcall FMPFSKPatternNode.updateWithDeltaTime(_:)(Swift::Double_optional a1)
{
  v3 = v2;
  v4 = v1;
  v103 = *&a1.is_nil;
  if (*(v2 + OBJC_IVAR____TtC10TVRemoteUI17FMPFSKPatternNode_bearing + 8))
  {
    v5 = 0.0;
    v6 = 0.0;
    v7 = 1;
    v8 = 1;
  }

  else
  {
    v6 = *(v2 + OBJC_IVAR____TtC10TVRemoteUI17FMPFSKPatternNode_presentedEnergeticBearing);
    v8 = *(v2 + OBJC_IVAR____TtC10TVRemoteUI17FMPFSKPatternNode_presentedEnergeticBearing + 8);
    if ((v8 & 1) == 0)
    {
      v6 = v6 / 180.0 * 3.14159265;
    }

    v5 = *(v2 + OBJC_IVAR____TtC10TVRemoteUI17FMPFSKPatternNode_presentedLethargicBearing);
    if (*(v2 + OBJC_IVAR____TtC10TVRemoteUI17FMPFSKPatternNode_presentedLethargicBearing + 8))
    {
      v7 = 1;
    }

    else
    {
      v7 = 0;
      v5 = v5 / 180.0 * 3.14159265;
    }
  }

  v9 = *(v2 + OBJC_IVAR____TtC10TVRemoteUI17FMPFSKPatternNode_presentedCenterFactor);
  v10 = *(v2 + OBJC_IVAR____TtC10TVRemoteUI17FMPFSKPatternNode_presentedCenterFactor + 8);
  v11 = *(v2 + OBJC_IVAR____TtC10TVRemoteUI17FMPFSKPatternNode_presentedLookout);
  v12 = *(v2 + OBJC_IVAR____TtC10TVRemoteUI17FMPFSKPatternNode_presentedLookout + 8);
  if ((v1 & 1) == 0)
  {
    v102 = *(v2 + OBJC_IVAR____TtC10TVRemoteUI17FMPFSKPatternNode_bearing + 8);
    v97 = *(v2 + OBJC_IVAR____TtC10TVRemoteUI17FMPFSKPatternNode_presentedLookout);
    v98 = *(v2 + OBJC_IVAR____TtC10TVRemoteUI17FMPFSKPatternNode_presentedCenterFactor);
    v99 = *(v2 + OBJC_IVAR____TtC10TVRemoteUI17FMPFSKPatternNode_presentedLookout + 8);
    v100 = *(v2 + OBJC_IVAR____TtC10TVRemoteUI17FMPFSKPatternNode_presentedCenterFactor + 8);
    v101 = v5;
    if (*(v2 + OBJC_IVAR____TtC10TVRemoteUI17FMPFSKPatternNode_shouldApplyConformedToExplodedFactor) == 1)
    {
      v13 = OBJC_IVAR____TtC10TVRemoteUI17FMPFSKPatternNode_conformedToExplodedFactorSpring;
      v14 = *(v2 + OBJC_IVAR____TtC10TVRemoteUI17FMPFSKPatternNode_conformedToExplodedFactorSpring);
      if (!FMPFFluidSpring.isStable.getter())
      {
        v95 = v6;
        FLSpring.step(_:)(v103);
        *(v14 + OBJC_IVAR____TtC10TVRemoteUI15FMPFFluidSpring_ready) = 1;
        v15 = *(v3 + v13);
        v16 = (v15 + OBJC_IVAR____TtC10TVRemoteUI8FLSpring__s);
        swift_beginAccess();
        v17 = *v16 + *(v15 + OBJC_IVAR____TtC10TVRemoteUI8FLSpring__o);
        if (vabdd_f64(v16[35] + *(v15 + OBJC_IVAR____TtC10TVRemoteUI8FLSpring__o + 40), v17) <= *(v15 + OBJC_IVAR____TtC10TVRemoteUI8FLSpring_stableValueThreshold))
        {
          v17 = v16[35] + *(v15 + OBJC_IVAR____TtC10TVRemoteUI8FLSpring__o + 40);
        }

        v18 = v3 + OBJC_IVAR____TtC10TVRemoteUI17FMPFSKPatternNode_presentedConformedToExplodedFactor;
        *v18 = v17;
        *(v18 + 8) = 0;
        v19 = OBJC_IVAR____TtC10TVRemoteUI17FMPFSKPatternNode_patternFragmentNodes;
        swift_beginAccess();
        v20 = *(v3 + v19);
        if (v20 >> 62)
        {
          if (v20 < 0)
          {
            v92 = v20;
          }

          else
          {
            v92 = v20 & 0xFFFFFFFFFFFFFF8;
          }

          v21 = MEMORY[0x26D6B1780](v92);
        }

        else
        {
          v21 = *((v20 & 0xFFFFFFFFFFFFFF8) + 0x10);
        }

        v22 = OBJC_IVAR____TtC10TVRemoteUI17FMPFSKPatternNode_conformedToExplodedFactor;

        if (v21)
        {
          v23 = 0;
          v24 = v3 + v22;
          do
          {
            if ((v20 & 0xC000000000000001) != 0)
            {
              v25 = MEMORY[0x26D6B1680](v23, v20);
              v26 = v23 + 1;
              if (__OFADD__(v23, 1))
              {
                goto LABEL_24;
              }
            }

            else
            {
              if (v23 >= *((v20 & 0xFFFFFFFFFFFFFF8) + 0x10))
              {
                goto LABEL_98;
              }

              v25 = *(v20 + 8 * v23 + 32);
              v26 = v23 + 1;
              if (__OFADD__(v23, 1))
              {
LABEL_24:
                __break(1u);
                break;
              }
            }

            v27 = *(v24 + 8);
            v28 = &v25[OBJC_IVAR____TtC10TVRemoteUI25FMPFSKPatternFragmentNode_conformedToExplodedFactor];
            *v28 = *v24;
            v28[8] = v27;

            ++v23;
          }

          while (v26 != v21);
        }

        v6 = v95;
      }
    }

    if (*(v3 + OBJC_IVAR____TtC10TVRemoteUI17FMPFSKPatternNode_shouldApplyConformationFactor) == 1)
    {
      v29 = OBJC_IVAR____TtC10TVRemoteUI17FMPFSKPatternNode_conformationFactorSpring;
      v30 = *(v3 + OBJC_IVAR____TtC10TVRemoteUI17FMPFSKPatternNode_conformationFactorSpring);
      if (!FMPFFluidSpring.isStable.getter())
      {
        v94 = v7;
        FLSpring.step(_:)(v103);
        *(v30 + OBJC_IVAR____TtC10TVRemoteUI15FMPFFluidSpring_ready) = 1;
        v31 = *(v3 + v29);
        v32 = (v31 + OBJC_IVAR____TtC10TVRemoteUI8FLSpring__s);
        swift_beginAccess();
        if (vabdd_f64(v32[35] + *(v31 + OBJC_IVAR____TtC10TVRemoteUI8FLSpring__o + 40), *v32 + *(v31 + OBJC_IVAR____TtC10TVRemoteUI8FLSpring__o)) > *(v31 + OBJC_IVAR____TtC10TVRemoteUI8FLSpring_stableValueThreshold))
        {
          v33 = *v32 + *(v31 + OBJC_IVAR____TtC10TVRemoteUI8FLSpring__o);
        }

        else
        {
          v33 = v32[35] + *(v31 + OBJC_IVAR____TtC10TVRemoteUI8FLSpring__o + 40);
        }

        v34 = *(v3 + OBJC_IVAR____TtC10TVRemoteUI17FMPFSKPatternNode_style + 184);
        if ((v33 - v34) / (1.0 - v34) < 0.0)
        {
          v35 = 0.0;
        }

        else
        {
          v35 = (v33 - v34) / (1.0 - v34);
        }

        v36 = v3 + OBJC_IVAR____TtC10TVRemoteUI17FMPFSKPatternNode_presentedConformationFactor;
        *v36 = v33;
        *(v36 + 8) = 0;
        v37 = OBJC_IVAR____TtC10TVRemoteUI17FMPFSKPatternNode_patternFragmentNodes;
        swift_beginAccess();
        v38 = *(v3 + v37);
        v96 = v6;
        if (v38 >> 62)
        {
          if (v38 < 0)
          {
            v93 = *(v3 + v37);
          }

          else
          {
            v93 = v38 & 0xFFFFFFFFFFFFFF8;
          }

          v39 = MEMORY[0x26D6B1780](v93);
        }

        else
        {
          v39 = *((v38 & 0xFFFFFFFFFFFFFF8) + 0x10);
        }

        if (v39)
        {
          v40 = 0;
          v41 = fmin(v33 / v34, 1.0);
          v24 = &OBJC_IVAR____TtC10TVRemoteUI25FMPFSKPatternFragmentNode_scalingFactor;
          do
          {
            if ((v38 & 0xC000000000000001) != 0)
            {
              v42 = MEMORY[0x26D6B1680](v40, v38);
            }

            else
            {
              if (v40 >= *((v38 & 0xFFFFFFFFFFFFFF8) + 0x10))
              {
                goto LABEL_100;
              }

              v42 = *(v38 + 8 * v40 + 32);
            }

            v43 = v42;
            v44 = v40 + 1;
            if (__OFADD__(v40, 1))
            {
              goto LABEL_99;
            }

            v45 = &v42[OBJC_IVAR____TtC10TVRemoteUI25FMPFSKPatternFragmentNode_conformationFactor];
            *v45 = v41;
            *(v45 + 8) = 0;
            FMPFSKPatternFragmentNode.applyConformationFactor(_:)(v41);
            v46 = &v43[OBJC_IVAR____TtC10TVRemoteUI25FMPFSKPatternFragmentNode_scalingFactor];
            *v46 = v35;
            *(v46 + 8) = 0;
            FMPFSKPatternFragmentNode.applyScalingFactor(_:)(v35);
            FMPFSKPatternFragmentNode.setDisturbanceHoming(conformationFactor:sprung:)(1, v33);

            ++v40;
          }

          while (v44 != v39);
        }

        FMPFSKPatternNode.stageConformationVsScalingVsBearingVsCentering()();
        v6 = v96;
        v7 = v94;
      }
    }

    v47 = OBJC_IVAR____TtC10TVRemoteUI17FMPFSKPatternNode_shouldApplyBearing;
    if (!(v102 & 1 | ((*(v3 + OBJC_IVAR____TtC10TVRemoteUI17FMPFSKPatternNode_shouldApplyBearing) & 1) == 0)))
    {
      v48 = OBJC_IVAR____TtC10TVRemoteUI17FMPFSKPatternNode_energeticAngleSpring;
      v49 = *(v3 + OBJC_IVAR____TtC10TVRemoteUI17FMPFSKPatternNode_energeticAngleSpring);
      if (!FMPFFluidSpring.isStable.getter())
      {
        FLSpring.step(_:)(v103);
        *(v49 + OBJC_IVAR____TtC10TVRemoteUI15FMPFFluidSpring_ready) = 1;
        v50 = *(v3 + v48);
        v51 = (v50 + OBJC_IVAR____TtC10TVRemoteUI8FLSpring__s);
        swift_beginAccess();
        v8 = 0;
        v52 = *v51 + *(v50 + OBJC_IVAR____TtC10TVRemoteUI8FLSpring__o);
        if (vabdd_f64(v51[35] + *(v50 + OBJC_IVAR____TtC10TVRemoteUI8FLSpring__o + 40), v52) <= *(v50 + OBJC_IVAR____TtC10TVRemoteUI8FLSpring_stableValueThreshold))
        {
          v52 = v51[35] + *(v50 + OBJC_IVAR____TtC10TVRemoteUI8FLSpring__o + 40);
        }

        v6 = v52;
      }
    }

    if (!(v102 & 1 | ((*(v3 + v47) & 1) == 0)))
    {
      v53 = OBJC_IVAR____TtC10TVRemoteUI17FMPFSKPatternNode_lethargicAngleSpring;
      v54 = *(v3 + OBJC_IVAR____TtC10TVRemoteUI17FMPFSKPatternNode_lethargicAngleSpring);
      if (!FMPFFluidSpring.isStable.getter())
      {
        FLSpring.step(_:)(v103);
        *(v54 + OBJC_IVAR____TtC10TVRemoteUI15FMPFFluidSpring_ready) = 1;
        v55 = *(v3 + v53);
        v56 = (v55 + OBJC_IVAR____TtC10TVRemoteUI8FLSpring__s);
        swift_beginAccess();
        v7 = 0;
        v57 = *v56 + *(v55 + OBJC_IVAR____TtC10TVRemoteUI8FLSpring__o);
        if (vabdd_f64(v56[35] + *(v55 + OBJC_IVAR____TtC10TVRemoteUI8FLSpring__o + 40), v57) <= *(v55 + OBJC_IVAR____TtC10TVRemoteUI8FLSpring_stableValueThreshold))
        {
          v57 = v56[35] + *(v55 + OBJC_IVAR____TtC10TVRemoteUI8FLSpring__o + 40);
        }

        v101 = v57;
      }
    }

    if (*(v3 + OBJC_IVAR____TtC10TVRemoteUI17FMPFSKPatternNode_shouldApplyCenterFactor) == 1)
    {
      v58 = OBJC_IVAR____TtC10TVRemoteUI17FMPFSKPatternNode_centerFactorSpring;
      v59 = *(v3 + OBJC_IVAR____TtC10TVRemoteUI17FMPFSKPatternNode_centerFactorSpring);
      if (!FMPFFluidSpring.isStable.getter())
      {
        FLSpring.step(_:)(v103);
        *(v59 + OBJC_IVAR____TtC10TVRemoteUI15FMPFFluidSpring_ready) = 1;
        v60 = *(v3 + v58);
        v61 = (v60 + OBJC_IVAR____TtC10TVRemoteUI8FLSpring__s);
        swift_beginAccess();
        v100 = 0;
        v62 = *v61 + *(v60 + OBJC_IVAR____TtC10TVRemoteUI8FLSpring__o);
        if (vabdd_f64(v61[35] + *(v60 + OBJC_IVAR____TtC10TVRemoteUI8FLSpring__o + 40), v62) <= *(v60 + OBJC_IVAR____TtC10TVRemoteUI8FLSpring_stableValueThreshold))
        {
          v62 = v61[35] + *(v60 + OBJC_IVAR____TtC10TVRemoteUI8FLSpring__o + 40);
        }

        v98 = *&v62;
      }
    }

    if (*(v3 + OBJC_IVAR____TtC10TVRemoteUI17FMPFSKPatternNode_shouldLookout) == 1)
    {
      v63 = OBJC_IVAR____TtC10TVRemoteUI17FMPFSKPatternNode_lookoutSpring;
      v64 = *(v3 + OBJC_IVAR____TtC10TVRemoteUI17FMPFSKPatternNode_lookoutSpring);
      if (!FMPFFluidSpring.isStable.getter())
      {
        FLSpring.step(_:)(v103);
        *(v64 + OBJC_IVAR____TtC10TVRemoteUI15FMPFFluidSpring_ready) = 1;
        v65 = *(v3 + v63);
        v66 = (v65 + OBJC_IVAR____TtC10TVRemoteUI8FLSpring__s);
        swift_beginAccess();
        v99 = 0;
        v67 = *v66 + *(v65 + OBJC_IVAR____TtC10TVRemoteUI8FLSpring__o);
        if (vabdd_f64(v66[35] + *(v65 + OBJC_IVAR____TtC10TVRemoteUI8FLSpring__o + 40), v67) <= *(v65 + OBJC_IVAR____TtC10TVRemoteUI8FLSpring_stableValueThreshold))
        {
          v67 = v66[35] + *(v65 + OBJC_IVAR____TtC10TVRemoteUI8FLSpring__o + 40);
        }

        v97 = *&v67;
      }
    }

    if (*(v3 + OBJC_IVAR____TtC10TVRemoteUI17FMPFSKPatternNode_shouldLabelsOpacity) == 1)
    {
      v68 = OBJC_IVAR____TtC10TVRemoteUI17FMPFSKPatternNode_labelsOpacitySpring;
      v69 = *(v3 + OBJC_IVAR____TtC10TVRemoteUI17FMPFSKPatternNode_labelsOpacitySpring);
      if (!FMPFFluidSpring.isStable.getter())
      {
        FLSpring.step(_:)(v103);
        *(v69 + OBJC_IVAR____TtC10TVRemoteUI15FMPFFluidSpring_ready) = 1;
        v70 = *(v3 + v68);
        v71 = (v70 + OBJC_IVAR____TtC10TVRemoteUI8FLSpring__s);
        swift_beginAccess();
        v72 = *v71 + *(v70 + OBJC_IVAR____TtC10TVRemoteUI8FLSpring__o);
        if (vabdd_f64(v71[35] + *(v70 + OBJC_IVAR____TtC10TVRemoteUI8FLSpring__o + 40), v72) <= *(v70 + OBJC_IVAR____TtC10TVRemoteUI8FLSpring_stableValueThreshold))
        {
          v72 = v71[35] + *(v70 + OBJC_IVAR____TtC10TVRemoteUI8FLSpring__o + 40);
        }

        v73 = v3 + OBJC_IVAR____TtC10TVRemoteUI17FMPFSKPatternNode_presentedLabelsOpacity;
        *v73 = v72;
        *(v73 + 8) = 0;
        [*(v3 + OBJC_IVAR____TtC10TVRemoteUI17FMPFSKPatternNode_labelsNode) setAlpha_];
      }
    }

    v74 = OBJC_IVAR____TtC10TVRemoteUI17FMPFSKPatternNode_trackSpring;
    v75 = *(v3 + OBJC_IVAR____TtC10TVRemoteUI17FMPFSKPatternNode_trackSpring);
    if (!FMPFFluidSpring.isStable.getter())
    {
      FLSpring.step(_:)(v103);
      *(v75 + OBJC_IVAR____TtC10TVRemoteUI15FMPFFluidSpring_ready) = 1;
      v76 = *(v3 + v74);
      v77 = (v76 + OBJC_IVAR____TtC10TVRemoteUI8FLSpring__s);
      swift_beginAccess();
      v78 = *v77 + *(v76 + OBJC_IVAR____TtC10TVRemoteUI8FLSpring__o);
      if (vabdd_f64(v77[35] + *(v76 + OBJC_IVAR____TtC10TVRemoteUI8FLSpring__o + 40), v78) <= *(v76 + OBJC_IVAR____TtC10TVRemoteUI8FLSpring_stableValueThreshold))
      {
        v78 = v77[35] + *(v76 + OBJC_IVAR____TtC10TVRemoteUI8FLSpring__o + 40);
      }

      FMPFSKPatternNode.applyTrack(_:)(v78);
    }

    v5 = v101;
    v12 = v99;
    v10 = v100;
    v11 = v97;
    v9 = v98;
  }

  FMPFSKPatternNode.apply(presentedEnergeticAngle:presentedLethargicAngle:presentedCenterFactor:presentedLookout:)(*&v6, v8, *&v5, v7, v9, v10, v11, v12);
  v79 = OBJC_IVAR____TtC10TVRemoteUI17FMPFSKPatternNode_patternFragmentNodes;
  swift_beginAccess();
  v24 = *(v3 + v79);
  if (v24 >> 62)
  {
    goto LABEL_101;
  }

  for (i = *((v24 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = MEMORY[0x26D6B1780](v91))
  {

    if (!i)
    {
      break;
    }

    v81 = 0;
    while (1)
    {
      if ((v24 & 0xC000000000000001) != 0)
      {
        v82 = MEMORY[0x26D6B1680](v81, v24);
      }

      else
      {
        if (v81 >= *((v24 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_97;
        }

        v82 = *(v24 + 8 * v81 + 32);
      }

      v83 = v82;
      v84 = v81 + 1;
      if (__OFADD__(v81, 1))
      {
        break;
      }

      if ((v4 & 1) == 0)
      {
        FMPFSKPatternFragmentNode.updateWithDeltaTime(_:)(v103);
      }

      ++v81;
      if (v84 == i)
      {
        goto LABEL_88;
      }
    }

    __break(1u);
LABEL_97:
    __break(1u);
LABEL_98:
    __break(1u);
LABEL_99:
    __break(1u);
LABEL_100:
    __break(1u);
LABEL_101:
    if (v24 < 0)
    {
      v91 = v24;
    }

    else
    {
      v91 = v24 & 0xFFFFFFFFFFFFFF8;
    }
  }

LABEL_88:

  if ((v4 & 1) == 0)
  {
    v85 = *(v3 + OBJC_IVAR____TtC10TVRemoteUI17FMPFSKPatternNode_noonNode);
    if (v85)
    {
      v86 = v85;
      FMPFSKPeripheralDotNode.updateWithDeltaTime(_:)(v103);
    }

    v87 = *(v3 + OBJC_IVAR____TtC10TVRemoteUI17FMPFSKPatternNode_pointeeNode);
    if (v87)
    {
      v88 = v87;
      FMPFSKPeripheralDotNode.updateWithDeltaTime(_:)(v103);
    }

    v89 = *(v3 + OBJC_IVAR____TtC10TVRemoteUI17FMPFSKPatternNode_ringView);
    if (v89)
    {
      v90 = v89;
      FMPFRingView.updateWithDeltaTime(_:)(v103);
    }
  }

  FMPFSKPatternNode.stageConformationVsScalingVsBearingVsCentering()();
}

uint64_t block_copy_helper_5(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

id FMR1GlyphButton.__deallocating_deinit()
{
  v1 = *&v0[OBJC_IVAR____TtC10TVRemoteUI15FMR1GlyphButton_ringDisplayLink];
  if (v1)
  {
    v2 = objc_opt_self();
    v3 = v1;
    v4 = [v2 currentRunLoop];
    [v3 removeFromRunLoop:v4 forMode:*MEMORY[0x277CBE738]];
  }

  v6.receiver = v0;
  v6.super_class = type metadata accessor for FMR1GlyphButton();
  return objc_msgSendSuper2(&v6, sel_dealloc);
}

Swift::Void __swiftcall FMR1GlyphButton.setupSubviews()()
{
  [v0 setUserInteractionEnabled_];
  [v0 setAccessibilityRespondsToUserInteraction_];
  [v0 setIsAccessibilityElement_];
  v1 = [objc_opt_self() clearColor];
  [v0 setBackgroundColor_];

  v2 = OBJC_IVAR____TtC10TVRemoteUI15FMR1GlyphButton_button;
  [*&v0[OBJC_IVAR____TtC10TVRemoteUI15FMR1GlyphButton_button] setUserInteractionEnabled_];
  [*&v0[v2] setIsAccessibilityElement_];
  [v0 addSubview_];
  v3 = OBJC_IVAR____TtC10TVRemoteUI15FMR1GlyphButton_label;
  v4 = *&v0[OBJC_IVAR____TtC10TVRemoteUI15FMR1GlyphButton_label];
  v5 = objc_opt_self();
  v6 = *MEMORY[0x277D76968];
  v7 = v4;
  v8 = [v5 preferredFontForTextStyle_];
  v9 = &v0[OBJC_IVAR____TtC10TVRemoteUI15FMR1GlyphButton_style];
  v10 = [v8 fontWithSize_];

  [v7 setFont_];
  [*&v0[v3] setNumberOfLines_];
  [*&v0[v3] setAdjustsFontForContentSizeCategory_];
  [*&v0[v3] setTextAlignment_];
  [*&v0[v3] setTextColor_];
  v11 = [*&v0[v3] layer];
  [v11 setOpacity_];

  v12 = *&v0[v3];

  [v0 addSubview_];
}

Swift::Void __swiftcall FMR1GlyphButton.setupConstraints()()
{
  v1 = OBJC_IVAR____TtC10TVRemoteUI15FMR1GlyphButton_button;
  [*&v0[OBJC_IVAR____TtC10TVRemoteUI15FMR1GlyphButton_button] setTranslatesAutoresizingMaskIntoConstraints_];
  v30 = objc_opt_self();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd);
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_26D0D4100;
  v3 = [*&v0[v1] topAnchor];
  v4 = [v0 &selRef_setVolumeButtonsRect_];
  v5 = [v3 constraintEqualToAnchor_];

  *(v2 + 32) = v5;
  v6 = [*&v0[v1] leadingAnchor];
  v7 = [v0 leadingAnchor];
  v8 = [v6 constraintEqualToAnchor_];

  *(v2 + 40) = v8;
  v9 = [*&v0[v1] trailingAnchor];
  v10 = [v0 trailingAnchor];
  v11 = [v9 constraintEqualToAnchor_];

  *(v2 + 48) = v11;
  v12 = [*&v0[v1] widthAnchor];
  v13 = &v0[OBJC_IVAR____TtC10TVRemoteUI15FMR1GlyphButton_style];
  v14 = *&v0[OBJC_IVAR____TtC10TVRemoteUI15FMR1GlyphButton_style];
  v15 = [v12 constraintEqualToConstant_];

  *(v2 + 56) = v15;
  v16 = [*&v0[v1] heightAnchor];
  v17 = [v16 constraintEqualToConstant_];

  *(v2 + 64) = v17;
  type metadata accessor for SKConstraint(0, &lazy cache variable for type metadata for NSLayoutConstraint);
  isa = Array._bridgeToObjectiveC()().super.isa;

  [v30 activateConstraints_];

  v19 = OBJC_IVAR____TtC10TVRemoteUI15FMR1GlyphButton_label;
  [*&v0[OBJC_IVAR____TtC10TVRemoteUI15FMR1GlyphButton_label] setTranslatesAutoresizingMaskIntoConstraints_];
  v20 = swift_allocObject();
  *(v20 + 16) = xmmword_26D0D4110;
  v21 = [*&v0[v19] topAnchor];
  v22 = [*&v0[v1] bottomAnchor];
  v23 = [v21 constraintEqualToAnchor:v22 constant:v13[1]];

  *(v20 + 32) = v23;
  v24 = [*&v0[v19] bottomAnchor];
  v25 = [v0 bottomAnchor];
  v26 = [v24 constraintEqualToAnchor_];

  *(v20 + 40) = v26;
  v27 = [*&v0[v19] centerXAnchor];
  v28 = [*&v0[v1] centerXAnchor];
  v29 = [v27 constraintEqualToAnchor_];

  *(v20 + 48) = v29;
  v31 = Array._bridgeToObjectiveC()().super.isa;

  [v30 activateConstraints_];
}

void FMR1GlyphButton.touchesBegan(_:with:)(uint64_t a1, uint64_t a2)
{
  type metadata accessor for SKConstraint(0, &lazy cache variable for type metadata for UITouch);
  lazy protocol witness table accessor for type UITouch and conformance NSObject();
  isa = Set._bridgeToObjectiveC()().super.isa;
  v9.receiver = v2;
  v9.super_class = type metadata accessor for FMR1GlyphButton();
  objc_msgSendSuper2(&v9, sel_touchesBegan_withEvent_, isa, a2);

  v5 = [*&v2[OBJC_IVAR____TtC10TVRemoteUI15FMR1GlyphButton_button] layer];
  v6 = [objc_opt_self() whiteColor];
  v7 = [v6 colorWithAlphaComponent_];

  v8 = [v7 CGColor];
  [v5 setBackgroundColor_];
}

void FMR1GlyphButton.touchesEnded(_:with:)(uint64_t a1, uint64_t a2)
{
  type metadata accessor for SKConstraint(0, &lazy cache variable for type metadata for UITouch);
  lazy protocol witness table accessor for type UITouch and conformance NSObject();
  isa = Set._bridgeToObjectiveC()().super.isa;
  v17.receiver = v2;
  v17.super_class = type metadata accessor for FMR1GlyphButton();
  objc_msgSendSuper2(&v17, sel_touchesEnded_withEvent_, isa, a2);

  v6 = OBJC_IVAR____TtC10TVRemoteUI15FMR1GlyphButton_button;
  v7 = [*&v2[OBJC_IVAR____TtC10TVRemoteUI15FMR1GlyphButton_button] layer];
  v8 = *&v2[OBJC_IVAR____TtC10TVRemoteUI15FMR1GlyphButton_normalBackgroundColor];
  if (v8)
  {
    v9 = [v8 CGColor];
  }

  else
  {
    v9 = 0;
  }

  [v7 setBackgroundColor_];

  v10 = specialized Collection.first.getter(a1);
  if (v10)
  {
    v11 = v10;
    [v10 locationInView_];
    v13 = v12;
    v15 = v14;
    [v2 bounds];
    v18.x = v13;
    v18.y = v15;
    if (CGRectContainsPoint(v19, v18))
    {
      v16 = *&v2[v6];
      [v16 sendActionsForControlEvents_];
    }
  }
}

uint64_t specialized Collection.first.getter(uint64_t a1)
{
  v2 = a1 & 0xC000000000000001;
  if ((a1 & 0xC000000000000001) != 0)
  {
    v3 = __CocoaSet.startIndex.getter();
    v5 = v4;
    v6 = __CocoaSet.endIndex.getter();
    v8 = v7;
    v9 = MEMORY[0x26D6B15F0](v3, v5, v6, v7);
    outlined consume of Set<UITouch>.Index._Variant(v6, v8, 1);
    if (v9)
    {
LABEL_3:
      outlined consume of Set<UITouch>.Index._Variant(v3, v5, v2 != 0);
      return 0;
    }
  }

  else
  {
    v3 = _HashTable.startBucket.getter();
    v5 = *(a1 + 36);
    if (v3 == 1 << *(a1 + 32))
    {
      goto LABEL_3;
    }
  }

  specialized Set.subscript.getter(v3, v5, v2 != 0, a1);
  v12 = v11;
  outlined consume of Set<UITouch>.Index._Variant(v3, v5, v2 != 0);
  return v12;
}

uint64_t @objc FMR1GlyphButton.touchesBegan(_:with:)(void *a1, uint64_t a2, uint64_t a3, void *a4, void (*a5)(uint64_t, void *))
{
  type metadata accessor for SKConstraint(0, &lazy cache variable for type metadata for UITouch);
  lazy protocol witness table accessor for type UITouch and conformance NSObject();
  v8 = static Set._unconditionallyBridgeFromObjectiveC(_:)();
  v9 = a4;
  v10 = a1;
  a5(v8, a4);
}

void FMR1GlyphButton.touchesCancelled(_:with:)(uint64_t a1, uint64_t a2)
{
  type metadata accessor for SKConstraint(0, &lazy cache variable for type metadata for UITouch);
  lazy protocol witness table accessor for type UITouch and conformance NSObject();
  isa = Set._bridgeToObjectiveC()().super.isa;
  v8.receiver = v2;
  v8.super_class = type metadata accessor for FMR1GlyphButton();
  objc_msgSendSuper2(&v8, sel_touchesCancelled_withEvent_, isa, a2);

  v5 = [*&v2[OBJC_IVAR____TtC10TVRemoteUI15FMR1GlyphButton_button] layer];
  v6 = *&v2[OBJC_IVAR____TtC10TVRemoteUI15FMR1GlyphButton_normalBackgroundColor];
  if (v6)
  {
    v7 = [v6 CGColor];
  }

  else
  {
    v7 = 0;
  }

  [v5 setBackgroundColor_];
}

void FMR1GlyphButton.touchesMoved(_:with:)(uint64_t a1, uint64_t a2)
{
  type metadata accessor for SKConstraint(0, &lazy cache variable for type metadata for UITouch);
  lazy protocol witness table accessor for type UITouch and conformance NSObject();
  isa = Set._bridgeToObjectiveC()().super.isa;
  v18.receiver = v2;
  v18.super_class = type metadata accessor for FMR1GlyphButton();
  objc_msgSendSuper2(&v18, sel_touchesMoved_withEvent_, isa, a2);

  v6 = specialized Collection.first.getter(a1);
  if (v6)
  {
    v7 = v6;
    [v6 locationInView_];
    v9 = v8;
    v11 = v10;
    [v2 bounds];
    v19.x = v9;
    v19.y = v11;
    v12 = CGRectContainsPoint(v20, v19);
    v13 = [*&v2[OBJC_IVAR____TtC10TVRemoteUI15FMR1GlyphButton_button] layer];
    if (v12)
    {
      v14 = [objc_opt_self() whiteColor];
      v15 = [v14 colorWithAlphaComponent_];

      v16 = [v15 CGColor];
    }

    else
    {
      v17 = *&v2[OBJC_IVAR____TtC10TVRemoteUI15FMR1GlyphButton_normalBackgroundColor];
      if (v17)
      {
        v16 = [v17 CGColor];
      }

      else
      {
        v16 = 0;
      }
    }

    [v13 setBackgroundColor_];
  }
}

id FMR1GlyphButton.ringDisplayLinkUpdate(displaylink:)(void *a1)
{
  v2 = &v1[OBJC_IVAR____TtC10TVRemoteUI15FMR1GlyphButton_lastRenderTime];
  if ((v1[OBJC_IVAR____TtC10TVRemoteUI15FMR1GlyphButton_lastRenderTime + 8] & 1) == 0)
  {
    v3 = v1;
    v4 = *v2;
    v5 = a1;
    [a1 timestamp];
    v7 = v6 - v4;
    v8 = *&v1[OBJC_IVAR____TtC10TVRemoteUI15FMR1GlyphButton_ringPerimiterAnimationSpring];
    if (v8)
    {
      FLSpring.step(_:)(v7);
      *(v8 + OBJC_IVAR____TtC10TVRemoteUI15FMPFFluidSpring_ready) = 1;
    }

    v9 = *&v3[OBJC_IVAR____TtC10TVRemoteUI15FMR1GlyphButton_ringFadeAnimationSpring];
    if (v9)
    {
      FLSpring.step(_:)(v7);
      *(v9 + OBJC_IVAR____TtC10TVRemoteUI15FMPFFluidSpring_ready) = 1;
    }

    [v3 setNeedsDisplay];
    a1 = v5;
  }

  result = [a1 timestamp];
  *v2 = v11;
  *(v2 + 8) = 0;
  return result;
}

void FMR1GlyphButton.isUserInteractionEnabled.setter(char a1)
{
  v10.receiver = v1;
  v10.super_class = type metadata accessor for FMR1GlyphButton();
  objc_msgSendSuper2(&v10, sel_setUserInteractionEnabled_, a1 & 1);
  v3 = objc_opt_self();
  v4 = *&v1[OBJC_IVAR____TtC10TVRemoteUI15FMR1GlyphButton_button];
  v5 = swift_allocObject();
  *(v5 + 16) = v1;
  *(v5 + 24) = a1;
  v9[4] = partial apply for closure #1 in FMR1GlyphButton.isUserInteractionEnabled.setter;
  v9[5] = v5;
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 1107296256;
  v9[2] = thunk for @escaping @callee_guaranteed () -> ();
  v9[3] = &block_descriptor_6;
  v6 = _Block_copy(v9);
  v7 = v4;
  v8 = v1;

  [v3 transitionWithView:v7 duration:5242880 options:v6 animations:0 completion:0.25];
  _Block_release(v6);
}

Swift::Void __swiftcall FMR1GlyphButton.set(named:tintColor:backgroundColor:usesGlassBackground:)(Swift::String named, UIColor_optional tintColor, UIColor_optional backgroundColor, Swift::Bool usesGlassBackground)
{
  isa = backgroundColor.value.super.isa;
  v6 = *&tintColor.is_nil;
  v7 = tintColor.value.super.isa;
  object = named._object;
  countAndFlagsBits = named._countAndFlagsBits;
  type metadata accessor for _Glass._GlassVariant();
  MEMORY[0x28223BE20]();
  v10 = &v4[OBJC_IVAR____TtC10TVRemoteUI15FMR1GlyphButton_named];
  *v10 = countAndFlagsBits;
  v10[1] = object;

  v11 = *&v4[OBJC_IVAR____TtC10TVRemoteUI15FMR1GlyphButton_style];
  v12 = [objc_opt_self() configurationWithPointSize:7 weight:v11 / 3.0];
  v13 = MEMORY[0x26D6B1210](countAndFlagsBits, object);
  v14 = [objc_opt_self() systemImageNamed_];

  v15 = [v14 imageByApplyingSymbolConfiguration_];
  if (v15)
  {
    [*&v4[OBJC_IVAR____TtC10TVRemoteUI15FMR1GlyphButton_button] setImage:v15 forState:0];
  }

  v16 = OBJC_IVAR____TtC10TVRemoteUI15FMR1GlyphButton_button;
  v17 = *&v4[OBJC_IVAR____TtC10TVRemoteUI15FMR1GlyphButton_button];
  if (v7)
  {
    v18 = v17;
    v19 = v7;
  }

  else
  {
    v20 = objc_opt_self();
    v21 = v17;
    v19 = [v20 whiteColor];
  }

  v22 = v7;
  [v17 setTintColor_];

  v23 = [*&v4[v16] layer];
  [v23 setCornerRadius_];

  if (isa)
  {
    v24 = 0;
  }

  else if (!v6 || (v24 = [v6 CGColor]) == 0)
  {
    v25 = [objc_opt_self() whiteColor];
    v26 = [v25 colorWithAlphaComponent_];

    v24 = [v26 CGColor];
  }

  v27 = [*&v4[v16] layer];
  [v27 setBackgroundColor_];

  if (v24)
  {
    v28 = [objc_allocWithZone(MEMORY[0x277D75348]) initWithCGColor_];
  }

  else
  {
    v28 = 0;
  }

  v29 = *&v4[OBJC_IVAR____TtC10TVRemoteUI15FMR1GlyphButton_normalBackgroundColor];
  *&v4[OBJC_IVAR____TtC10TVRemoteUI15FMR1GlyphButton_normalBackgroundColor] = v28;

  if (isa)
  {
    v30 = *&v4[v16];
    static _Glass._GlassVariant.regular.getter();
    v31[3] = type metadata accessor for _Glass();
    v31[4] = MEMORY[0x277D74E20];
    __swift_allocate_boxed_opaque_existential_1(v31);
    _Glass.init(_:smoothness:)();
    UIView._background.setter();

    [v4 setBackgroundColor_];
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

uint64_t getEnumTagSinglePayload for FMR1GlyphButtonStyle(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 56))
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

uint64_t storeEnumTagSinglePayload for FMR1GlyphButtonStyle(uint64_t result, int a2, int a3)
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
      *(result + 24) = (a2 - 1);
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

uint64_t *__swift_allocate_boxed_opaque_existential_1(uint64_t *result)
{
  if ((*(*(result[3] - 8) + 82) & 2) != 0)
  {
    *result = swift_allocBox();
    return v1;
  }

  return result;
}

uint64_t block_copy_helper_6(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

void specialized Set.subscript.getter(unint64_t a1, uint64_t a2, char a3, uint64_t a4)
{
  v6 = a1;
  if ((a4 & 0xC000000000000001) != 0)
  {
    if (a3)
    {
      if (a4 < 0)
      {
        v7 = a4;
      }

      else
      {
        v7 = a4 & 0xFFFFFFFFFFFFFF8;
      }

      MEMORY[0x26D6B1620](a1, a2, v7);
      type metadata accessor for SKConstraint(0, &lazy cache variable for type metadata for UITouch);
      swift_dynamicCast();
      return;
    }

LABEL_26:
    __break(1u);
    return;
  }

  if (a3)
  {
    type metadata accessor for SKConstraint(0, &lazy cache variable for type metadata for UITouch);
    if (__CocoaSet.Index.age.getter() != *(a4 + 36))
    {
      __break(1u);
LABEL_24:
      __break(1u);
      goto LABEL_25;
    }

    __CocoaSet.Index.element.getter();
    swift_dynamicCast();
    v4 = v15;
    v8 = NSObject._rawHashValue(seed:)(*(a4 + 40));
    v9 = -1 << *(a4 + 32);
    v6 = v8 & ~v9;
    if ((*(a4 + 56 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
    {
      v10 = ~v9;
      do
      {
        v11 = *(*(a4 + 48) + 8 * v6);
        v12 = static NSObject.== infix(_:_:)();

        if (v12)
        {
          goto LABEL_19;
        }

        v6 = (v6 + 1) & v10;
      }

      while (((*(a4 + 56 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
    }

    __break(1u);
  }

  if ((v6 & 0x8000000000000000) != 0 || 1 << *(a4 + 32) <= v6)
  {
    goto LABEL_24;
  }

  if (((*(a4 + 8 * (v6 >> 6) + 56) >> v6) & 1) == 0)
  {
LABEL_25:
    __break(1u);
    goto LABEL_26;
  }

  if (*(a4 + 36) != a2)
  {
    __break(1u);
LABEL_19:
  }

  v13 = *(*(a4 + 48) + 8 * v6);

  v14 = v13;
}