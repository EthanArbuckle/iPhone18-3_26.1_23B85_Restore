uint64_t specialized _NativeSet.copyAndResize(capacity:)(uint64_t a1, uint64_t *a2, uint64_t *a3, void (*a4)(void))
{
  v5 = v4;
  v6 = *v4;
  if (*(*v4 + 24) > a1)
  {
    v7 = *(*v4 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  result = static _SetStorage.resize(original:capacity:move:)();
  v9 = result;
  if (*(v6 + 16))
  {
    v30 = v5;
    v10 = 0;
    v11 = 1 << *(v6 + 32);
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    else
    {
      v12 = -1;
    }

    v13 = v12 & *(v6 + 56);
    v14 = (v11 + 63) >> 6;
    v15 = result + 56;
    while (v13)
    {
      v17 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_17:
      v20 = *(*(v6 + 48) + 8 * (v17 | (v10 << 6)));
      v21 = *(v9 + 40);
      a4();
      v22 = v20;
      result = dispatch thunk of Hashable._rawHashValue(seed:)();
      v23 = -1 << *(v9 + 32);
      v24 = result & ~v23;
      v25 = v24 >> 6;
      if (((-1 << v24) & ~*(v15 + 8 * (v24 >> 6))) == 0)
      {
        v26 = 0;
        v27 = (63 - v23) >> 6;
        while (++v25 != v27 || (v26 & 1) == 0)
        {
          v28 = v25 == v27;
          if (v25 == v27)
          {
            v25 = 0;
          }

          v26 |= v28;
          v29 = *(v15 + 8 * v25);
          if (v29 != -1)
          {
            v16 = __clz(__rbit64(~v29)) + (v25 << 6);
            goto LABEL_9;
          }
        }

        goto LABEL_30;
      }

      v16 = __clz(__rbit64((-1 << v24) & ~*(v15 + 8 * (v24 >> 6)))) | v24 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      *(*(v9 + 48) + 8 * v16) = v20;
      ++*(v9 + 16);
    }

    v18 = v10;
    while (1)
    {
      v10 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        break;
      }

      if (v10 >= v14)
      {

        v5 = v30;
        goto LABEL_28;
      }

      v19 = *(v6 + 56 + 8 * v10);
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v13 = (v19 - 1) & v19;
        goto LABEL_17;
      }
    }

    __break(1u);
LABEL_30:
    __break(1u);
  }

  else
  {

LABEL_28:
    *v5 = v9;
  }

  return result;
}

unint64_t specialized _NativeSet.copyAndResize(capacity:)(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss11_SetStorageCy9RealityIO15StageDirtyStateCGMd, &_ss11_SetStorageCy9RealityIO15StageDirtyStateCGMR);
  result = static _SetStorage.resize(original:capacity:move:)();
  v6 = result;
  if (*(v3 + 16))
  {
    v7 = 0;
    v8 = 1 << *(v3 + 32);
    if (v8 < 64)
    {
      v9 = ~(-1 << v8);
    }

    else
    {
      v9 = -1;
    }

    v10 = v9 & *(v3 + 56);
    v11 = (v8 + 63) >> 6;
    for (i = result + 56; v10; ++*(v6 + 16))
    {
      v13 = __clz(__rbit64(v10));
      v10 &= v10 - 1;
LABEL_14:
      v16 = *(*(v3 + 48) + 8 * (v13 | (v7 << 6)));
      v17 = *(v6 + 40);
      Hasher.init(_seed:)();
      v18 = *(v16 + 24);

      specialized Set.hash(into:)(v20, v18);
      specialized Set.hash(into:)(v20, *(v16 + 16));
      Hasher._finalize()();
      v19 = -1 << *(v6 + 32);
      result = _HashTable.nextHole(atOrAfter:)();
      *(i + ((result >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << result;
      *(*(v6 + 48) + 8 * result) = v16;
    }

    v14 = v7;
    while (1)
    {
      v7 = v14 + 1;
      if (__OFADD__(v14, 1))
      {
        break;
      }

      if (v7 >= v11)
      {
        goto LABEL_16;
      }

      v15 = *(v3 + 56 + 8 * v7);
      ++v14;
      if (v15)
      {
        v13 = __clz(__rbit64(v15));
        v10 = (v15 - 1) & v15;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_16:

    *v2 = v6;
  }

  return result;
}

uint64_t specialized ActionBuilder.stageSubscription.getter()
{
  if (String.count.getter() < 1)
  {
    v0 = RIOPxrTfTokenEmpty();
  }

  else
  {
    v0 = RIOPxrTfTokenCreateWithCString();
  }

  v24[0] = v0;
  v1 = specialized TypeNamePrimDirtyState.__allocating_init(typeName:)(v24);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd, &_ss23_ContiguousArrayStorageCyyXlGMR);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_26198A640;
  *(inited + 32) = v1;
  v3 = MEMORY[0x277D84FA0];
  v24[0] = MEMORY[0x277D84FA0];

  specialized Sequence.forEach(_:)(inited);

  swift_setDeallocating();
  v4 = *(inited + 16);
  swift_arrayDestroy();
  v5 = v24[0];
  type metadata accessor for StageDirtyState();
  swift_allocObject();
  v6 = StageDirtyState.init(stageMetadataContainsAnyOf:primsContainAnyOf:core:)(v3, v5, 0);

  if (String.count.getter() < 1)
  {
    v7 = RIOPxrTfTokenEmpty();
  }

  else
  {
    v7 = RIOPxrTfTokenCreateWithCString();
  }

  v8 = v7;
  type metadata accessor for NamedPropertyDirtyState();
  v9 = swift_allocObject();
  v9[4] = v8;
  v10 = v8;
  _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFShy9RealityIO16ToolsFoundationsO5TokenVG_So36RIOBuilderDirtyMetadataDescriptorRefas5NeverOTg503_s9d16IO22TypeNamePrimj28StateC04typeD7IsAnyOf020primk48ContainsjK0017propertiesContainjK04coreACShyAA16fg2O5h44VG_ALShyAA08PropertyfG0CGSo010RIOBuilderfE13L47RefaSgtcfc12generateCoreL_AQyFSo0vfmwX0aAKXEfU_Tf1cn_n(v3);
  type metadata accessor for RIOBuilderDirtyMetadataDescriptorRef(0);
  isa = Array._bridgeToObjectiveC()().super.isa;

  v12 = RIOBuilderAnyValueDirtyPropertyDescriptorCreateWithNameAndMetadataDescriptors();

  v9[2] = v3;
  v9[3] = v12;
  v13 = swift_initStackObject();
  *(v13 + 16) = xmmword_26198A640;
  *(v13 + 32) = v9;
  v24[0] = v3;

  specialized Sequence.forEach(_:)(v13);

  swift_setDeallocating();
  v14 = *(v13 + 16);
  swift_arrayDestroy();
  v15 = v24[0];
  type metadata accessor for PrimDirtyState();
  swift_allocObject();
  v16 = PrimDirtyState.init(primMetadataContainsAnyOf:propertiesContainAnyOf:core:)(v3, v15, 0);
  v17 = swift_initStackObject();
  *(v17 + 16) = xmmword_26198A640;
  *(v17 + 32) = v16;
  v24[0] = v3;

  specialized Sequence.forEach(_:)(v17);

  swift_setDeallocating();
  v18 = *(v17 + 16);
  swift_arrayDestroy();
  v19 = v24[0];
  swift_allocObject();
  v20 = StageDirtyState.init(stageMetadataContainsAnyOf:primsContainAnyOf:core:)(v3, v19, 0);
  v21 = swift_initStackObject();
  *(v21 + 16) = xmmword_26198A9D0;
  *(v21 + 32) = v6;
  *(v21 + 40) = v20;
  v24[0] = v3;

  specialized Sequence.forEach(_:)(v21);

  swift_setDeallocating();
  v22 = *(v21 + 16);
  swift_arrayDestroy();
  return v24[0];
}

uint64_t specialized ActionBuilder.inputDescriptors()()
{
  v8 = MEMORY[0x277D84FA0];
  if (one-time initialization token for OutputName != -1)
  {
    swift_once();
  }

  v1 = static EntityBuilder.OutputName;
  v0 = qword_27FEBC3A0;
  v2 = one-time initialization token for OutputIdentifier;

  if (v2 != -1)
  {
    swift_once();
  }

  v4 = static EntityBuilder.OutputIdentifier;
  v3 = *algn_27FEC8E68;
  v40[0] = v1;
  v40[1] = v0;
  v40[2] = static EntityBuilder.OutputIdentifier;
  v40[3] = *algn_27FEC8E68;
  v40[4] = specialized closure #3 in ActionBuilder.inputDescriptors();
  v40[5] = 0;
  v41 = -127;
  swift_bridgeObjectRetain_n();
  specialized Set._Variant.insert(_:)(&v34, v40);
  outlined consume of InputDescriptor(v34, *(&v34 + 1), v35, v36, v37, v38, v39);
  v34 = xmmword_26198A9E0;
  v35 = 0xD00000000000001FLL;
  v36 = 0x80000002619941F0;
  v37 = specialized closure #4 in ActionBuilder.inputDescriptors();
  v38 = 0;
  v39 = -127;
  specialized Set._Variant.insert(_:)(&v28, &v34);
  outlined consume of InputDescriptor(v28, *(&v28 + 1), v29, v30, v31, v32, v33);
  v28 = xmmword_26198A9F0;
  v29 = v4;
  v30 = v3;
  v31 = specialized closure #5 in ActionBuilder.inputDescriptors();
  v32 = 0;
  v33 = -127;

  specialized Set._Variant.insert(_:)(&v21, &v28);
  outlined consume of InputDescriptor(v21, v22, v23, v24, v25, v26, v27);
  v21 = 0xD000000000000010;
  v22 = 0x8000000261994560;
  v23 = v4;
  v24 = v3;
  v25 = specialized closure #6 in ActionBuilder.inputDescriptors();
  v26 = 0;
  v27 = -127;
  specialized Set._Variant.insert(_:)(&v15, &v21);
  outlined consume of InputDescriptor(v15, *(&v15 + 1), v16, v17, v18, v19, v20);
  v15 = xmmword_26198AA00;
  v16 = v4;
  v17 = v3;
  v18 = specialized closure #7 in ActionBuilder.inputDescriptors();
  v19 = 0;
  v20 = -127;
  specialized Set._Variant.insert(_:)(&v9, &v15);
  outlined consume of InputDescriptor(v9, v10, v11, *(&v11 + 1), v12, v13, v14);
  v9 = 0xD000000000000011;
  v10 = 0x8000000261994580;
  v11 = xmmword_26198AA10;
  v12 = specialized closure #8 in ActionBuilder.inputDescriptors();
  v13 = 0;
  v14 = -127;
  specialized Set._Variant.insert(_:)(v6, &v9);
  outlined consume of InputDescriptor(v6[0], v6[1], v6[2], v6[3], v6[4], v6[5], v7);
  return v8;
}

uint64_t specialized ActionBuilder.clear(inputs:)()
{
  swift_beginAccess();
  v1 = objc_getAssociatedObject(v0, &static BuilderAssociatedKeys.OutputsReference);
  result = swift_endAccess();
  if (v1)
  {
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
    outlined init with take of Any(&v3, v4);
    type metadata accessor for Outputs();
    swift_dynamicCast();
    memset(v4, 0, sizeof(v4));
    Outputs.subscript.setter(v4, 0x736E6F69746341, 0xE700000000000000);
  }

  else
  {
    __break(1u);
  }

  return result;
}

_OWORD *outlined init with take of Any(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  *a2 = *a1;
  a2[1] = v2;
  return a2;
}

void outlined consume of InputDescriptor(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, uint64_t a6, unsigned __int8 a7)
{
  v7 = a7 >> 4;
  if (v7 <= 3)
  {
    if ((a7 >> 4) <= 1u)
    {
LABEL_10:

LABEL_22:

      return;
    }

    v8 = a5;
    if (v7 != 2 && v7 != 3)
    {
      return;
    }
  }

  else if ((a7 >> 4) <= 5u)
  {
    v8 = a5;
    if (v7 == 4)
    {

      goto LABEL_22;
    }

    if (v7 != 5)
    {
      return;
    }
  }

  else
  {
    if (v7 != 6)
    {
      if (v7 != 7)
      {
        if (v7 == 8)
        {
        }

        return;
      }

      goto LABEL_10;
    }

    v8 = a5;
  }
}

unint64_t lazy protocol witness table accessor for type SceneDescriptionFoundations.Path and conformance SceneDescriptionFoundations.Path()
{
  result = lazy protocol witness table cache variable for type SceneDescriptionFoundations.Path and conformance SceneDescriptionFoundations.Path;
  if (!lazy protocol witness table cache variable for type SceneDescriptionFoundations.Path and conformance SceneDescriptionFoundations.Path)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SceneDescriptionFoundations.Path and conformance SceneDescriptionFoundations.Path);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type SceneDescriptionFoundations.Path and conformance SceneDescriptionFoundations.Path;
  if (!lazy protocol witness table cache variable for type SceneDescriptionFoundations.Path and conformance SceneDescriptionFoundations.Path)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SceneDescriptionFoundations.Path and conformance SceneDescriptionFoundations.Path);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type SceneDescriptionFoundations.Path and conformance SceneDescriptionFoundations.Path;
  if (!lazy protocol witness table cache variable for type SceneDescriptionFoundations.Path and conformance SceneDescriptionFoundations.Path)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SceneDescriptionFoundations.Path and conformance SceneDescriptionFoundations.Path);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type SceneDescriptionFoundations.Path and conformance SceneDescriptionFoundations.Path;
  if (!lazy protocol witness table cache variable for type SceneDescriptionFoundations.Path and conformance SceneDescriptionFoundations.Path)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SceneDescriptionFoundations.Path and conformance SceneDescriptionFoundations.Path);
  }

  return result;
}

void outlined copy of InputDescriptor(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, uint64_t a6, unsigned __int8 a7)
{
  v7 = a7 >> 4;
  if (v7 <= 3)
  {
    if ((a7 >> 4) <= 1u)
    {
LABEL_10:

LABEL_22:

      return;
    }

    v9 = a5;
    if (v7 != 2 && v7 != 3)
    {
      return;
    }
  }

  else if ((a7 >> 4) <= 5u)
  {
    v9 = a5;
    if (v7 == 4)
    {

      goto LABEL_22;
    }

    if (v7 != 5)
    {
      return;
    }
  }

  else
  {
    if (v7 != 6)
    {
      if (v7 != 7)
      {
        if (v7 == 8)
        {
        }

        return;
      }

      goto LABEL_10;
    }

    v9 = a5;
  }

  v8 = v9;
}

unint64_t lazy protocol witness table accessor for type Inputs.PropertyDelta and conformance Inputs.PropertyDelta()
{
  result = lazy protocol witness table cache variable for type Inputs.PropertyDelta and conformance Inputs.PropertyDelta;
  if (!lazy protocol witness table cache variable for type Inputs.PropertyDelta and conformance Inputs.PropertyDelta)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Inputs.PropertyDelta and conformance Inputs.PropertyDelta);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Inputs.PropertyDelta and conformance Inputs.PropertyDelta;
  if (!lazy protocol witness table cache variable for type Inputs.PropertyDelta and conformance Inputs.PropertyDelta)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Inputs.PropertyDelta and conformance Inputs.PropertyDelta);
  }

  return result;
}

uint64_t outlined init with copy of ImportSession.EvaluationFault(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ImportSession.EvaluationFault(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t outlined destroy of ImportSession.EvaluationFault(uint64_t a1)
{
  v2 = type metadata accessor for ImportSession.EvaluationFault(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t outlined init with take of ImportSession.EvaluationFault(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ImportSession.EvaluationFault(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t lazy protocol witness table accessor for type RIOPxrTfTokenRef and conformance RIOPxrTfTokenRef(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t _s9RealityIO4PrimC14attributeValue2of4typexSgAA16ToolsFoundationsO5TokenV_xmtAA012UsdAttributeE0RzlFs5SIMD3VySfG_Tt1B5()
{
  v7 = *MEMORY[0x277D85DE8];
  v1 = *(v0 + 16);
  if (!RIOPxrUsdPrimHasAttribute())
  {
    goto LABEL_5;
  }

  v2 = RIOPxrUsdPrimCopyAttribute();
  v3 = RIOPxrUsdAttributeCopyValue();
  if (!v3)
  {

LABEL_5:
    result = 0;
    goto LABEL_6;
  }

  v4 = v3;
  RIOPxrVtValueGetFloat3();

  result = 0;
LABEL_6:
  v6 = *MEMORY[0x277D85DE8];
  return result;
}

unint64_t _s9RealityIO4PrimC14attributeValue2of4typexSgAA16ToolsFoundationsO5TokenV_xmtAA012UsdAttributeE0RzlFSf_Tt1B5()
{
  v9 = *MEMORY[0x277D85DE8];
  v1 = *(v0 + 16);
  if (!RIOPxrUsdPrimHasAttribute())
  {
    goto LABEL_5;
  }

  v2 = RIOPxrUsdPrimCopyAttribute();
  v3 = RIOPxrUsdAttributeCopyValue();
  if (!v3)
  {

LABEL_5:
    v6 = 1;
    goto LABEL_6;
  }

  v4 = v3;
  Float = RIOPxrVtValueGetFloat();

  v6 = Float ^ 1;
LABEL_6:
  v7 = *MEMORY[0x277D85DE8];
  return v6 << 32;
}

uint64_t _s9RealityIO4PrimC14attributeValue2of4typexSgAA16ToolsFoundationsO5TokenV_xmtAA012UsdAttributeE0RzlFSb_Tt1B5()
{
  v8 = *MEMORY[0x277D85DE8];
  v1 = *(v0 + 16);
  if (!RIOPxrUsdPrimHasAttribute())
  {
    goto LABEL_7;
  }

  v2 = RIOPxrUsdPrimCopyAttribute();
  v3 = RIOPxrUsdAttributeCopyValue();
  if (!v3)
  {

LABEL_7:
    result = 2;
    goto LABEL_8;
  }

  v4 = v3;
  Bool = RIOPxrVtValueGetBool();

  if (Bool)
  {
    result = 0;
  }

  else
  {
    result = 2;
  }

LABEL_8:
  v7 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t _s9RealityIO4PrimC14attributeValue2of4typexSgAA16ToolsFoundationsO5TokenV_xmtAA012UsdAttributeE0RzlFs5SIMD2VySfG_Tt1B5()
{
  v8 = *MEMORY[0x277D85DE8];
  v1 = *(v0 + 16);
  if (!RIOPxrUsdPrimHasAttribute())
  {
    goto LABEL_8;
  }

  v2 = RIOPxrUsdPrimCopyAttribute();
  v3 = RIOPxrUsdAttributeCopyValue();
  if (!v3)
  {

LABEL_8:
    result = 0;
    goto LABEL_9;
  }

  v4 = v3;
  Float2 = RIOPxrVtValueGetFloat2();

  if (Float2)
  {
    result = 0;
  }

  else
  {
    result = 0;
  }

LABEL_9:
  v7 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t _s9RealityIO4PrimC14attributeValue2of4typexSgAA16ToolsFoundationsO5TokenV_xmtAA012UsdAttributeE0RzlFSS_Tt1B5()
{
  v1 = *(v0 + 16);
  if (RIOPxrUsdPrimHasAttribute())
  {
    v2 = RIOPxrUsdPrimCopyAttribute();
    v3 = RIOPxrUsdAttributeCopyValue();
    if (v3)
    {
      v4 = v3;
      v5 = RIOPxrVtValueCopyString();
      if (v5)
      {
        v6 = v5;
        v7 = static String._unconditionallyBridgeFromObjectiveC(_:)();

        return v7;
      }
    }
  }

  return 0;
}

uint64_t _s9RealityIO4PrimC14attributeValue2of4typexSgAA16ToolsFoundationsO5TokenV_xmtAA012UsdAttributeE0RzlFSd_Tt1B5()
{
  v8 = *MEMORY[0x277D85DE8];
  v1 = *(v0 + 16);
  if (!RIOPxrUsdPrimHasAttribute())
  {
    goto LABEL_8;
  }

  v2 = RIOPxrUsdPrimCopyAttribute();
  v3 = RIOPxrUsdAttributeCopyValue();
  if (!v3)
  {

LABEL_8:
    result = 0;
    goto LABEL_9;
  }

  v4 = v3;
  Double = RIOPxrVtValueGetDouble();

  if (Double)
  {
    result = 0;
  }

  else
  {
    result = 0;
  }

LABEL_9:
  v7 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t _s9RealityIO4PrimC14attributeValue2of4typexSgAA16ToolsFoundationsO5TokenV_xmtAA012UsdAttributeE0RzlFSi_Tt1B5()
{
  v8 = *MEMORY[0x277D85DE8];
  v1 = *(v0 + 16);
  if (!RIOPxrUsdPrimHasAttribute())
  {
    goto LABEL_8;
  }

  v2 = RIOPxrUsdPrimCopyAttribute();
  v3 = RIOPxrUsdAttributeCopyValue();
  if (!v3)
  {

LABEL_8:
    result = 0;
    goto LABEL_9;
  }

  v4 = v3;
  Int32 = RIOPxrVtValueGetInt32();

  if (Int32)
  {
    result = 0;
  }

  else
  {
    result = 0;
  }

LABEL_9:
  v7 = *MEMORY[0x277D85DE8];
  return result;
}

unint64_t _s9RealityIO4PrimC14attributeValue2of4typexSgAA16ToolsFoundationsO5TokenV_xmtAA012UsdAttributeE0RzlFs5Int32V_Tt1B5()
{
  v9 = *MEMORY[0x277D85DE8];
  v1 = *(v0 + 16);
  if (!RIOPxrUsdPrimHasAttribute())
  {
    goto LABEL_5;
  }

  v2 = RIOPxrUsdPrimCopyAttribute();
  v3 = RIOPxrUsdAttributeCopyValue();
  if (!v3)
  {

LABEL_5:
    v6 = 1;
    goto LABEL_6;
  }

  v4 = v3;
  Int32 = RIOPxrVtValueGetInt32();

  v6 = Int32 ^ 1;
LABEL_6:
  v7 = *MEMORY[0x277D85DE8];
  return v6 << 32;
}

uint64_t _s9RealityIO4PrimC14attributeValue2of4typexSgAA16ToolsFoundationsO5TokenV_xmtAA012UsdAttributeE0RzlFSo10simd_quatfa_Tt1B5()
{
  v7 = *MEMORY[0x277D85DE8];
  v1 = *(v0 + 16);
  if (!RIOPxrUsdPrimHasAttribute())
  {
    goto LABEL_5;
  }

  v2 = RIOPxrUsdPrimCopyAttribute();
  v3 = RIOPxrUsdAttributeCopyValue();
  if (!v3)
  {

LABEL_5:
    result = 0;
    goto LABEL_6;
  }

  v4 = v3;
  RIOPxrVtValueGetQuatf();

  result = 0;
LABEL_6:
  v6 = *MEMORY[0x277D85DE8];
  return result;
}

void _s9RealityIO4PrimC14attributeValue2of4typexSgAA16ToolsFoundationsO5TokenV_xmtAA012UsdAttributeE0RzlFs5SIMD3VySdG_Tt1B5(uint64_t a1@<X8>)
{
  v10 = *MEMORY[0x277D85DE8];
  v3 = *(v1 + 16);
  if (!RIOPxrUsdPrimHasAttribute())
  {
    goto LABEL_5;
  }

  v4 = RIOPxrUsdPrimCopyAttribute();
  v5 = RIOPxrUsdAttributeCopyValue();
  if (!v5)
  {

LABEL_5:
    v8 = 1;
    goto LABEL_6;
  }

  v6 = v5;
  Double3 = RIOPxrVtValueGetDouble3();

  v8 = Double3 ^ 1;
LABEL_6:
  *a1 = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *(a1 + 24) = 0;
  *(a1 + 32) = v8;
  v9 = *MEMORY[0x277D85DE8];
}

id one-time initialization function for infoID(uint64_t a1)
{
  return one-time initialization function for infoID(a1, 0x64693A6F666E69, 0xE700000000000000, "info:id", &static DirectionalLightComponentBuilder.infoID);
}

{
  return one-time initialization function for infoID(a1, 0x64693A6F666E69, 0xE700000000000000, "info:id", &static SpotLightComponentBuilder.infoID);
}

{
  return one-time initialization function for infoID(a1, 0x64693A6F666E69, 0xE700000000000000, "info:id", &static ImageBasedLightReceiverBuilder.infoID);
}

{
  return one-time initialization function for infoID(a1, 0x64693A6F666E69, 0xE700000000000000, "info:id", &static AnchoringComponentBuilder.infoID);
}

{
  return one-time initialization function for infoID(a1, 0x64693A6F666E69, 0xE700000000000000, "info:id", &static ImageBasedLightBuilder.infoID);
}

{
  return one-time initialization function for infoID(a1, 0x64693A6F666E69, 0xE700000000000000, "info:id", &static VirtualEnvironmentProbeComponentBuilder.infoID);
}

{
  return one-time initialization function for infoID(a1, 0x64693A6F666E69, 0xE700000000000000, "info:id", &static ModelSortGroupComponentBuilder.infoID);
}

id one-time initialization function for realityKitComponentTypeName()
{
  if (String.count.getter() < 1)
  {
    result = RIOPxrTfTokenEmpty();
  }

  else
  {
    result = RIOPxrTfTokenCreateWithCString();
  }

  static DirectionalLightComponentBuilder.realityKitComponentTypeName = result;
  return result;
}

{
  if (String.count.getter() < 1)
  {
    result = RIOPxrTfTokenEmpty();
  }

  else
  {
    result = RIOPxrTfTokenCreateWithCString();
  }

  static SpotLightComponentBuilder.realityKitComponentTypeName = result;
  return result;
}

{
  if (String.count.getter() < 1)
  {
    result = RIOPxrTfTokenEmpty();
  }

  else
  {
    result = RIOPxrTfTokenCreateWithCString();
  }

  static ImageBasedLightReceiverBuilder.realityKitComponentTypeName = result;
  return result;
}

{
  if (String.count.getter() < 1)
  {
    result = RIOPxrTfTokenEmpty();
  }

  else
  {
    result = RIOPxrTfTokenCreateWithCString();
  }

  static AnchoringComponentBuilder.realityKitComponentTypeName = result;
  return result;
}

{
  if (String.count.getter() < 1)
  {
    result = RIOPxrTfTokenEmpty();
  }

  else
  {
    result = RIOPxrTfTokenCreateWithCString();
  }

  static ImageBasedLightBuilder.realityKitComponentTypeName = result;
  return result;
}

{
  if (String.count.getter() < 1)
  {
    result = RIOPxrTfTokenEmpty();
  }

  else
  {
    result = RIOPxrTfTokenCreateWithCString();
  }

  static VirtualEnvironmentProbeComponentBuilder.realityKitComponentTypeName = result;
  return result;
}

{
  if (String.count.getter() < 1)
  {
    result = RIOPxrTfTokenEmpty();
  }

  else
  {
    result = RIOPxrTfTokenCreateWithCString();
  }

  static ModelSortGroupComponentBuilder.realityKitComponentTypeName = result;
  return result;
}

id one-time initialization function for colorAttributeName(uint64_t a1)
{
  return one-time initialization function for infoID(a1, 0x726F6C6F63, 0xE500000000000000, "color", &static DirectionalLightComponentBuilder.colorAttributeName);
}

{
  return one-time initialization function for infoID(a1, 0x726F6C6F63, 0xE500000000000000, "color", &static SpotLightComponentBuilder.colorAttributeName);
}

id one-time initialization function for intensityAttributeName(uint64_t a1)
{
  return one-time initialization function for infoID(a1, 0x7469736E65746E69, 0xE900000000000079, "intensity", &static DirectionalLightComponentBuilder.intensityAttributeName);
}

{
  return one-time initialization function for infoID(a1, 0x7469736E65746E69, 0xE900000000000079, "intensity", &static SpotLightComponentBuilder.intensityAttributeName);
}

id one-time initialization function for realWorldProxyAttributeName()
{
  if (String.count.getter() < 1)
  {
    result = RIOPxrTfTokenEmpty();
  }

  else
  {
    result = RIOPxrTfTokenCreateWithCString();
  }

  static DirectionalLightComponentBuilder.realWorldProxyAttributeName = result;
  return result;
}

id one-time initialization function for shadowStructName(uint64_t a1)
{
  return one-time initialization function for infoID(a1, 0x776F64616853, 0xE600000000000000, "Shadow", &static DirectionalLightComponentBuilder.shadowStructName);
}

{
  return one-time initialization function for infoID(a1, 0x776F64616853, 0xE600000000000000, "Shadow", &static SpotLightComponentBuilder.shadowStructName);
}

id one-time initialization function for shadowEnabledAttributeName(uint64_t a1)
{
  return one-time initialization function for infoID(a1, 0x656C62616E457369, 0xE900000000000064, "isEnabled", &static DirectionalLightComponentBuilder.shadowEnabledAttributeName);
}

{
  return one-time initialization function for infoID(a1, 0x656C62616E457369, 0xE900000000000064, "isEnabled", &static SpotLightComponentBuilder.shadowEnabledAttributeName);
}

id one-time initialization function for shadowDepthBiasAttributeName(uint64_t a1)
{
  return one-time initialization function for infoID(a1, 0x6169426874706564, 0xE900000000000073, "depthBias", &static DirectionalLightComponentBuilder.shadowDepthBiasAttributeName);
}

{
  return one-time initialization function for infoID(a1, 0x6169426874706564, 0xE900000000000073, "depthBias", &static SpotLightComponentBuilder.shadowDepthBiasAttributeName);
}

id one-time initialization function for shadowCullModeAttributeName(uint64_t a1)
{
  return one-time initialization function for infoID(a1, 0x65646F4D6C6C7563, 0xE800000000000000, "cullMode", &static DirectionalLightComponentBuilder.shadowCullModeAttributeName);
}

{
  return one-time initialization function for infoID(a1, 0x65646F4D6C6C7563, 0xE800000000000000, "cullMode", &static SpotLightComponentBuilder.shadowCullModeAttributeName);
}

id one-time initialization function for infoID(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  if (String.count.getter() < 1)
  {
    result = RIOPxrTfTokenEmpty();
  }

  else
  {
    result = RIOPxrTfTokenCreateWithCString();
  }

  *a5 = result;
  return result;
}

id one-time initialization function for shadowOrthographicScaleAttributeName()
{
  if (String.count.getter() < 1)
  {
    result = RIOPxrTfTokenEmpty();
  }

  else
  {
    result = RIOPxrTfTokenCreateWithCString();
  }

  static DirectionalLightComponentBuilder.shadowOrthographicScaleAttributeName = result;
  return result;
}

uint64_t closure #1 in DirectionalLightComponentBuilder.run(inputs:)(uint64_t a1, unint64_t a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10RealityKit25DirectionalLightComponentV6ShadowVSgMd, &_s10RealityKit25DirectionalLightComponentV6ShadowVSgMR);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v122 = &v109 - v5;
  v6 = type metadata accessor for DirectionalLightComponent.Shadow();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v117 = &v109 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s17RealityFoundation22MaterialParameterTypesV11FaceCullingOSgMd, &_s17RealityFoundation22MaterialParameterTypesV11FaceCullingOSgMR);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10 - 8);
  v116 = &v109 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v120 = &v109 - v14;
  v119 = type metadata accessor for DirectionalLightComponent.Shadow.ShadowProjectionType();
  v118 = *(v119 - 8);
  v15 = *(v118 + 64);
  MEMORY[0x28223BE20](v119);
  v115 = &v109 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v121 = (&v109 - v18);
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10RealityKit25DirectionalLightComponentVSgMd, &_s10RealityKit25DirectionalLightComponentVSgMR);
  v20 = *(*(v19 - 8) + 64);
  MEMORY[0x28223BE20](v19 - 8);
  v124 = &v109 - v21;
  v22 = type metadata accessor for DirectionalLightComponent();
  v126 = *(v22 - 8);
  v127 = v22;
  v23 = *(v126 + 64);
  MEMORY[0x28223BE20](v22);
  v125 = &v109 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = type metadata accessor for __EntityRef();
  v123 = *(v25 - 8);
  v26 = *(v123 + 64);
  MEMORY[0x28223BE20](v25);
  v28 = &v109 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = Inputs.prim.getter();
  v30 = *(v29 + 16);
  v31 = RIOPxrUsdObjectCopyName();
  v32 = RIOPxrTfTokenCopyString();
  v128 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v34 = v33;

  if (one-time initialization token for infoID != -1)
  {
    swift_once();
  }

  v129 = v29;
  v35 = *(v29 + 16);
  if (!RIOPxrUsdPrimHasAttribute())
  {
    goto LABEL_39;
  }

  v36 = RIOPxrUsdPrimCopyAttribute();
  v37 = RIOPxrUsdAttributeCopyValue();
  if (!v37)
  {

LABEL_40:
    DirectionalLightComponentBuilder.clear(inputs:)();
  }

  v114 = a2;
  v112 = v6;
  v38 = v37;
  v39 = RIOPxrVtValueCopyToken();

  if (!v39)
  {
LABEL_39:

    goto LABEL_40;
  }

  v113 = v7;
  v40 = RIOPxrTfTokenCopyString();
  v41 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v43 = v42;

  if (v41 != 0xD00000000000001BLL || 0x8000000261994620 != v43)
  {
    v45 = _stringCompareWithSmolCheck(_:_:expecting:)();

    v44 = v114;
    if (v45)
    {
      goto LABEL_12;
    }

    goto LABEL_39;
  }

  v44 = v114;
LABEL_12:
  if (one-time initialization token for OutputName != -1)
  {
LABEL_93:
    swift_once();
  }

  Inputs.subscript.getter(static EntityBuilder.OutputName, qword_27FEBC3A0, &v131);
  v46 = v113;
  if (v132)
  {
    type metadata accessor for EntityProxy();
    if (swift_dynamicCast())
    {

      v47 = v130;
      v48 = *(v129 + 16);
      if ((RIOPxrUsdPrimIsActive() & 1) == 0)
      {
        DirectionalLightComponentBuilder.clear(inputs:)();
      }

      v111 = v47;
      Inputs.prim.getter();
      if (one-time initialization token for colorAttributeName != -1)
      {
        swift_once();
      }

      v49 = _s9RealityIO4PrimC14attributeValue2of4typexSgAA16ToolsFoundationsO5TokenV_xmtAA012UsdAttributeE0RzlFs5SIMD3VySfG_Tt1B5();
      v51 = v50;
      v53 = v52;

      v54.i64[0] = v49;
      v54.i64[1] = v51;
      if (v53)
      {
        v55 = -1;
      }

      else
      {
        v55 = 0;
      }

      v131 = vbslq_s8(vdupq_n_s32(v55), xmmword_26198AAA0, v54);
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5SIMD3VySfGMd, &_ss5SIMD3VySfGMR);
      lazy protocol witness table accessor for type Float and conformance Float();
      v56 = SIMD3<>.cgColor.getter();
      Inputs.prim.getter();
      if (one-time initialization token for intensityAttributeName != -1)
      {
        swift_once();
      }

      _s9RealityIO4PrimC14attributeValue2of4typexSgAA16ToolsFoundationsO5TokenV_xmtAA012UsdAttributeE0RzlFSf_Tt1B5();

      Inputs.prim.getter();
      if (one-time initialization token for realWorldProxyAttributeName != -1)
      {
        swift_once();
      }

      _s9RealityIO4PrimC14attributeValue2of4typexSgAA16ToolsFoundationsO5TokenV_xmtAA012UsdAttributeE0RzlFSb_Tt1B5();

      *(v44 + 17) = 1;
      type metadata accessor for Entity();
      v57 = MEMORY[0x277D841D8];
      __AssetRef.__as<A>(_:)();
      v132 = v57;
      static __AssetRef.__fromCore(_:)();
      __swift_destroy_boxed_opaque_existential_0(v131.i64);
      v58 = static Entity.__fromCore(_:)();
      (*(v123 + 8))(v28, v25);
      v59 = v56;
      v60 = v125;
      DirectionalLightComponent.init(cgColor:intensity:isRealWorldProxy:)();
      v61 = v126;
      v62 = v127;
      v63 = v124;
      (*(v126 + 16))(v124, v60, v127);
      (*(v61 + 56))(v63, 0, 1, v62);
      v123 = v58;
      v64 = dispatch thunk of Entity.components.modify();
      Entity.ComponentSet.subscript.setter();
      v64(&v131, 0);
      specialized Builder.addComponent<A>(component:)(v60, MEMORY[0x277CDAED0]);
      v65 = Prim.children.getter();
      v28 = v65;
      v110 = v59;
      if (v65 >> 62)
      {
        v66 = __CocoaSet.count.getter();
        if (v66)
        {
          goto LABEL_27;
        }
      }

      else
      {
        v66 = *((v65 & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (v66)
        {
LABEL_27:
          v34 = 0;
          v44 = v28 & 0xC000000000000001;
          v25 = v28 & 0xFFFFFFFFFFFFFF8;
          while (1)
          {
            if (v44)
            {
              v68 = MEMORY[0x26670F670](v34, v28);
              v69 = v34 + 1;
              if (__OFADD__(v34, 1))
              {
                goto LABEL_91;
              }
            }

            else
            {
              if (v34 >= *((v28 & 0xFFFFFFFFFFFFFF8) + 0x10))
              {
                goto LABEL_92;
              }

              v67 = *(v28 + 8 * v34 + 32);

              v69 = v34 + 1;
              if (__OFADD__(v34, 1))
              {
LABEL_91:
                __break(1u);
LABEL_92:
                __break(1u);
                goto LABEL_93;
              }
            }

            v128 = v68;
            v70 = *(v68 + 16);
            v71 = RIOPxrUsdObjectCopyName();
            if (one-time initialization token for shadowStructName != -1)
            {
              swift_once();
            }

            v72 = static DirectionalLightComponentBuilder.shadowStructName;
            type metadata accessor for RIOPxrTfTokenRef(0);
            lazy protocol witness table accessor for type RIOPxrTfTokenRef and conformance RIOPxrTfTokenRef();
            v73 = v72;
            v74 = static _CFObject.== infix(_:_:)();

            if (v74)
            {
              break;
            }

            ++v34;
            v46 = v113;
            if (v69 == v66)
            {
              goto LABEL_102;
            }
          }

          v46 = v113;
          if (one-time initialization token for shadowEnabledAttributeName != -1)
          {
            swift_once();
          }

          v77 = _s9RealityIO4PrimC14attributeValue2of4typexSgAA16ToolsFoundationsO5TokenV_xmtAA012UsdAttributeE0RzlFSb_Tt1B5();
          v78 = v112;
          if (v77 == 2 || (v77 & 1) == 0)
          {

            goto LABEL_103;
          }

          if (one-time initialization token for shadowDistanceAttributeName != -1)
          {
            swift_once();
          }

          v79 = _s9RealityIO4PrimC14attributeValue2of4typexSgAA16ToolsFoundationsO5TokenV_xmtAA012UsdAttributeE0RzlFSf_Tt1B5();
          if ((v79 & 0x100000000) != 0)
          {
            v80 = 5.0;
          }

          else
          {
            v80 = *&v79;
          }

          if (one-time initialization token for shadowDepthBiasAttributeName != -1)
          {
            swift_once();
          }

          _s9RealityIO4PrimC14attributeValue2of4typexSgAA16ToolsFoundationsO5TokenV_xmtAA012UsdAttributeE0RzlFSf_Tt1B5();
          if (one-time initialization token for shadowZBoundsAttributeName != -1)
          {
            swift_once();
          }

          v81 = _s9RealityIO4PrimC14attributeValue2of4typexSgAA16ToolsFoundationsO5TokenV_xmtAA012UsdAttributeE0RzlFs5SIMD2VySfG_Tt1B5();
          if (v82)
          {
            v83 = -1;
          }

          else
          {
            v83 = 0;
          }

          if (one-time initialization token for shadowOrthographicScaleAttributeName != -1)
          {
            swift_once();
          }

          v84 = _s9RealityIO4PrimC14attributeValue2of4typexSgAA16ToolsFoundationsO5TokenV_xmtAA012UsdAttributeE0RzlFSf_Tt1B5();
          if ((v84 & 0x100000000) != 0)
          {
            v85 = 1.0;
          }

          else
          {
            v85 = *&v84;
          }

          if (one-time initialization token for shadowProjectionTypeAttributeName != -1)
          {
            swift_once();
          }

          v86 = _s9RealityIO4PrimC14attributeValue2of4typexSgAA16ToolsFoundationsO5TokenV_xmtAA012UsdAttributeE0RzlFSS_Tt1B5();
          if (v87)
          {
            if (v86 == 0x6465786946 && v87 == 0xE500000000000000)
            {

LABEL_77:
              v89 = v121;
              *v121 = vbsl_s8(vdup_n_s32(v83), 0x412000003C23D70ALL, v81);
              *v89[1].i32 = v85;
              v90 = MEMORY[0x277CDAEA8];
              goto LABEL_79;
            }

            v88 = _stringCompareWithSmolCheck(_:_:expecting:)();

            if (v88)
            {
              goto LABEL_77;
            }
          }

          *v121->i32 = v80;
          v90 = MEMORY[0x277CDAEB0];
LABEL_79:
          v91 = v120;
          v92 = *v90;
          (*(v118 + 104))();
          if (one-time initialization token for shadowCullModeAttributeName != -1)
          {
            swift_once();
          }

          v93 = _s9RealityIO4PrimC14attributeValue2of4typexSgAA16ToolsFoundationsO5TokenV_xmtAA012UsdAttributeE0RzlFSS_Tt1B5();
          if (v94)
          {
            v95 = v93;
            v96 = v94;
            if (v93 == 1801675074 && v94 == 0xE400000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
            {

              v97 = MEMORY[0x277CDB488];
LABEL_86:
              v98 = *v97;
              v99 = type metadata accessor for MaterialParameterTypes.FaceCulling();
              v100 = *(v99 - 8);
              (*(v100 + 104))(v91, v98, v99);
              (*(v100 + 56))(v91, 0, 1, v99);
LABEL_100:
              v103 = v118;
              v104 = v119;
              (*(v118 + 16))(v115, v121, v119);
              outlined init with copy of MaterialParameterTypes.FaceCulling?(v91, v116);
              v105 = v117;
              DirectionalLightComponent.Shadow.init(shadowProjection:depthBias:cullMode:)();
              v106 = v122;
              (*(v46 + 16))(v122, v105, v78);
              (*(v46 + 56))(v106, 0, 1, v78);
              v107 = dispatch thunk of Entity.components.modify();
              Entity.ComponentSet.subscript.setter();
              v107(&v131, 0);
              specialized Builder.addComponent<A>(component:)(v105, MEMORY[0x277CDAEC0]);

              (*(v46 + 8))(v105, v78);
              outlined destroy of Any?(v120, &_s17RealityFoundation22MaterialParameterTypesV11FaceCullingOSgMd, &_s17RealityFoundation22MaterialParameterTypesV11FaceCullingOSgMR);
              (*(v103 + 8))(v121, v104);
              return (*(v126 + 8))(v125, v127);
            }

            if (v95 == 0x746E6F7246 && v96 == 0xE500000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
            {

              v97 = MEMORY[0x277CDB498];
              goto LABEL_86;
            }

            if (v95 == 1701736270 && v96 == 0xE400000000000000)
            {

LABEL_98:
              v97 = MEMORY[0x277CDB490];
              goto LABEL_86;
            }

            v101 = _stringCompareWithSmolCheck(_:_:expecting:)();

            if (v101)
            {
              goto LABEL_98;
            }
          }

          v102 = type metadata accessor for MaterialParameterTypes.FaceCulling();
          (*(*(v102 - 8) + 56))(v91, 1, 1, v102);
          goto LABEL_100;
        }
      }

LABEL_102:

      v78 = v112;
LABEL_103:
      (*(v46 + 56))(v122, 1, 1, v78);
      v108 = dispatch thunk of Entity.components.modify();
      Entity.ComponentSet.subscript.setter();
      v108(&v131, 0);

      return (*(v126 + 8))(v125, v127);
    }
  }

  else
  {
    outlined destroy of Any?(&v131, &_sypSgMd, &_sypSgMR);
  }

  if (one-time initialization token for lightComponent != -1)
  {
    swift_once();
  }

  static os_log_type_t.error.getter();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys7CVarArg_pGMd, &_ss23_ContiguousArrayStorageCys7CVarArg_pGMR);
  v76 = swift_allocObject();
  *(v76 + 16) = xmmword_2619891C0;
  *(v76 + 56) = MEMORY[0x277D837D0];
  *(v76 + 64) = lazy protocol witness table accessor for type String and conformance String();
  *(v76 + 32) = v128;
  *(v76 + 40) = v34;
  os_log(_:dso:log:type:_:)();
}

void specialized Builder.addComponent<A>(component:)(uint64_t a1)
{
  specialized Builder.addComponent<A>(component:)(a1, MEMORY[0x277CDB530]);
}

{
  specialized Builder.addComponent<A>(component:)(a1, MEMORY[0x277CDAE08]);
}

{
  specialized Builder.addComponent<A>(component:)(a1, MEMORY[0x277CDADF8]);
}

{
  specialized Builder.addComponent<A>(component:)(a1, MEMORY[0x277CDB508]);
}

void specialized Builder.addComponent<A>(component:)(uint64_t a1, void (*a2)(void, double))
{
  v4 = type metadata accessor for __ComponentTypeRef();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = MEMORY[0x28223BE20](v4);
  v9 = v12 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  a2(0, v7);
  static Component.__coreComponentType.getter();
  type metadata accessor for REComponentType(0);
  __ComponentTypeRef.__as<A>(_:)();
  (*(v5 + 8))(v9, v4);
  if (REComponentClassFromType())
  {
    swift_beginAccess();
    v10 = objc_getAssociatedObject(v2, &static BuilderAssociatedKeys.CoreReference);
    swift_endAccess();
    if (v10)
    {
      _bridgeAnyObjectToAny(_:)();
      swift_unknownObjectRelease();
      outlined init with take of Any(&v13, &v14);
      type metadata accessor for RIOBuilderRef(0);
      swift_dynamicCast();
      v11 = v12[1];
      RIOBuilderAddComponentByClass();
    }

    else
    {
      __break(1u);
    }
  }
}

uint64_t DirectionalLightComponentBuilder.clear(inputs:)()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10RealityKit25DirectionalLightComponentV6ShadowVSgMd, &_s10RealityKit25DirectionalLightComponentV6ShadowVSgMR);
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x28223BE20](v1 - 8);
  v4 = v21 - v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10RealityKit25DirectionalLightComponentVSgMd, &_s10RealityKit25DirectionalLightComponentVSgMR);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = v21 - v7;
  v9 = type metadata accessor for __EntityRef();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v13 = v21 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (one-time initialization token for OutputName != -1)
  {
    swift_once();
  }

  Inputs.subscript.getter(static EntityBuilder.OutputName, qword_27FEBC3A0, v21);
  if (!v22)
  {
    return outlined destroy of Any?(v21, &_sypSgMd, &_sypSgMR);
  }

  type metadata accessor for EntityProxy();
  result = swift_dynamicCast();
  if (result)
  {
    if (*(v0 + 17) == 1)
    {
      type metadata accessor for Entity();
      v15 = MEMORY[0x277D841D8];
      __AssetRef.__as<A>(_:)();
      v22 = v15;
      static __AssetRef.__fromCore(_:)();
      __swift_destroy_boxed_opaque_existential_0(v21);
      static Entity.__fromCore(_:)();
      (*(v10 + 8))(v13, v9);
      v16 = type metadata accessor for DirectionalLightComponent();
      (*(*(v16 - 8) + 56))(v8, 1, 1, v16);
      v17 = dispatch thunk of Entity.components.modify();
      Entity.ComponentSet.subscript.setter();
      v17(v21, 0);
      v18 = type metadata accessor for DirectionalLightComponent.Shadow();
      (*(*(v18 - 8) + 56))(v4, 1, 1, v18);
      v19 = dispatch thunk of Entity.components.modify();
      Entity.ComponentSet.subscript.setter();
      v19(v21, 0);

      *(v0 + 17) = 0;
    }

    else
    {
    }
  }

  return result;
}

uint64_t protocol witness for Builder.run(inputs:) in conformance DirectionalLightComponentBuilder(uint64_t a1)
{
  v2 = *v1;
  v7[2] = a1;
  v8 = v1;
  v9 = v2;
  v3 = *(a1 + 56);
  v4 = swift_allocObject();
  *(v4 + 16) = partial apply for closure #1 in DirectionalLightComponentBuilder.run(inputs:);
  *(v4 + 24) = v7;
  aBlock[4] = partial apply for thunk for @callee_guaranteed () -> ();
  aBlock[5] = v4;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = thunk for @escaping @callee_guaranteed () -> ();
  aBlock[3] = &block_descriptor_1;
  v5 = _Block_copy(aBlock);

  RIOBuilderInputsPerformBlockSyncOnEngineQueue();
  _Block_release(v5);
  LOBYTE(v3) = swift_isEscapingClosureAtFileLocation();

  if (v3)
  {
    __break(1u);
  }

  return result;
}

uint64_t block_copy_helper_1(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

unint64_t lazy protocol witness table accessor for type Float and conformance Float()
{
  result = lazy protocol witness table cache variable for type Float and conformance Float;
  if (!lazy protocol witness table cache variable for type Float and conformance Float)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Float and conformance Float);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Float and conformance Float;
  if (!lazy protocol witness table cache variable for type Float and conformance Float)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Float and conformance Float);
  }

  return result;
}

uint64_t __swift_destroy_boxed_opaque_existential_0(uint64_t *a1)
{
  v1 = *(a1[3] - 8);
  if ((*(v1 + 82) & 2) == 0)
  {
    return (*(v1 + 8))();
  }

  v3 = *a1;
}

uint64_t outlined init with copy of MaterialParameterTypes.FaceCulling?(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s17RealityFoundation22MaterialParameterTypesV11FaceCullingOSgMd, &_s17RealityFoundation22MaterialParameterTypesV11FaceCullingOSgMR);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t outlined destroy of Any?(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t specialized DirectionalLightComponentBuilder.stageSubscription.getter()
{
  if (one-time initialization token for realityKitComponentTypeName != -1)
  {
    swift_once();
  }

  v10 = static DirectionalLightComponentBuilder.realityKitComponentTypeName;
  v0 = static DirectionalLightComponentBuilder.realityKitComponentTypeName;
  v1 = specialized TypeNamePrimDirtyState.__allocating_init(typeName:)(&v10);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd, &_ss23_ContiguousArrayStorageCyyXlGMR);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_26198A640;
  *(inited + 32) = v1;
  v3 = MEMORY[0x277D84FA0];
  v10 = MEMORY[0x277D84FA0];

  specialized Sequence.forEach(_:)(inited);

  swift_setDeallocating();
  v4 = *(inited + 16);
  swift_arrayDestroy();
  v5 = v10;
  type metadata accessor for StageDirtyState();
  swift_allocObject();
  v6 = StageDirtyState.init(stageMetadataContainsAnyOf:primsContainAnyOf:core:)(v3, v5, 0);
  v7 = swift_initStackObject();
  *(v7 + 16) = xmmword_26198A640;
  *(v7 + 32) = v6;
  v10 = v3;

  specialized Sequence.forEach(_:)(v7);

  swift_setDeallocating();
  v8 = *(v7 + 16);
  swift_arrayDestroy();
  return v10;
}

uint64_t specialized DirectionalLightComponentBuilder.inputDescriptors()()
{
  v7 = MEMORY[0x277D84FA0];
  if (one-time initialization token for OutputName != -1)
  {
    swift_once();
  }

  v1 = static EntityBuilder.OutputName;
  v0 = qword_27FEBC3A0;
  v2 = one-time initialization token for OutputIdentifier;

  if (v2 != -1)
  {
    swift_once();
  }

  v14[0] = v1;
  v14[1] = v0;
  v14[2] = static EntityBuilder.OutputIdentifier;
  v14[3] = *algn_27FEC8E68;
  v14[4] = 0;
  v14[5] = 0;
  v15 = 112;

  specialized Set._Variant.insert(_:)(&v8, v14);
  outlined consume of InputDescriptor(v8, *(&v8 + 1), v9, v10, v11, v12, v13);
  if (String.count.getter() < 1)
  {
    v3 = RIOPxrTfTokenEmpty();
  }

  else
  {
    v3 = RIOPxrTfTokenCreateWithCString();
  }

  v8 = xmmword_26198AAB0;
  v9 = 0xD000000000000020;
  v10 = 0x8000000261994710;
  v11 = v3;
  v12 = 1;
  v13 = 32;
  specialized Set._Variant.insert(_:)(v5, &v8);
  outlined consume of InputDescriptor(v5[0], v5[1], v5[2], v5[3], v5[4], v5[5], v6);
  return v7;
}

uint64_t specialized Sequence.compactMap<A>(_:)(void (*a1)(uint64_t *__return_ptr, uint64_t *), uint64_t a2, unint64_t a3)
{
  v16 = MEMORY[0x277D84F90];
  if (a3 >> 62)
  {
LABEL_19:
    v5 = __CocoaSet.count.getter();
    if (v5)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v5 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v5)
    {
LABEL_3:
      v6 = 0;
      v11 = MEMORY[0x277D84F90];
      while (1)
      {
        if ((a3 & 0xC000000000000001) != 0)
        {
          v7 = MEMORY[0x26670F670](v6, a3);
          v8 = v6 + 1;
          if (__OFADD__(v6, 1))
          {
LABEL_15:
            __break(1u);
LABEL_16:

            return v11;
          }
        }

        else
        {
          if (v6 >= *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            __break(1u);
            goto LABEL_19;
          }

          v7 = *(a3 + 8 * v6 + 32);

          v8 = v6 + 1;
          if (__OFADD__(v6, 1))
          {
            goto LABEL_15;
          }
        }

        v15 = v7;
        a1(&v14, &v15);
        if (v3)
        {
          goto LABEL_16;
        }

        if (v14)
        {
          MEMORY[0x26670F130](v9);
          if (*((v16 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v16 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
          {
            v12 = *((v16 & 0xFFFFFFFFFFFFFF8) + 0x10);
            specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
          }

          specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
          v11 = v16;
        }

        ++v6;
        if (v8 == v5)
        {
          return v11;
        }
      }
    }
  }

  return MEMORY[0x277D84F90];
}

uint64_t one-time initialization function for timeline()
{
  type metadata accessor for OS_os_log();
  result = OS_os_log.init(subsystem:category:)();
  static OS_os_log.timeline = result;
  return result;
}

id one-time initialization function for realityKitStruct()
{
  if (String.count.getter() < 1)
  {
    result = RIOPxrTfTokenEmpty();
  }

  else
  {
    result = RIOPxrTfTokenCreateWithCString();
  }

  static ToolsFoundations.Token.realityKitStruct = result;
  return result;
}

uint64_t closure #1 in TimelineTrackAndActionBuilder.stageSubscription.getter()
{
  if (one-time initialization token for primType != -1)
  {
    swift_once();
  }

  v14 = static TimelineConstants.Timeline.primType;
  v0 = static TimelineConstants.Timeline.primType;
  v1 = specialized TypeNamePrimDirtyState.__allocating_init(typeName:)(&v14);
  v2 = one-time initialization token for primType;

  if (v2 != -1)
  {
    swift_once();
  }

  v14 = static TimelineConstants.Track.primType;
  v3 = static TimelineConstants.Track.primType;
  v4 = specialized TypeNamePrimDirtyState.__allocating_init(typeName:)(&v14);
  v5 = one-time initialization token for primType;

  if (v5 != -1)
  {
    swift_once();
  }

  v14 = static TimelineConstants.Action.primType;
  v6 = static TimelineConstants.Action.primType;
  v7 = specialized TypeNamePrimDirtyState.__allocating_init(typeName:)(&v14);
  v8 = one-time initialization token for realityKitStruct;

  if (v8 != -1)
  {
    swift_once();
  }

  v14 = static ToolsFoundations.Token.realityKitStruct;
  v9 = static ToolsFoundations.Token.realityKitStruct;
  v10 = specialized TypeNamePrimDirtyState.__allocating_init(typeName:)(&v14);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd, &_ss23_ContiguousArrayStorageCyyXlGMR);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_26198AB40;
  *(inited + 32) = v1;
  *(inited + 40) = v4;
  *(inited + 48) = v7;
  *(inited + 56) = v10;
  v14 = MEMORY[0x277D84FA0];

  specialized Sequence.forEach(_:)(inited);

  swift_setDeallocating();
  v12 = *(inited + 16);
  swift_arrayDestroy();
  return v14;
}

uint64_t protocol witness for Builder.inputDescriptors() in conformance TimelineTrackAndActionBuilder()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy9RealityIO15InputDescriptorOGMd, &_ss23_ContiguousArrayStorageCy9RealityIO15InputDescriptorOGMR);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_2619891C0;
  if (one-time initialization token for OutputName != -1)
  {
    swift_once();
  }

  v2 = static EntityBuilder.OutputName;
  v1 = qword_27FEBC3A0;
  v3 = one-time initialization token for OutputIdentifier;

  if (v3 != -1)
  {
    swift_once();
  }

  v5 = static EntityBuilder.OutputIdentifier;
  v4 = *algn_27FEC8E68;
  *(inited + 32) = v2;
  *(inited + 40) = v1;
  *(inited + 48) = v5;
  *(inited + 64) = 0;
  *(inited + 72) = 0;
  *(inited + 56) = v4;
  *(inited + 80) = 112;

  _sSh21_nonEmptyArrayLiteralShyxGSayxG_tcfC9RealityIO15InputDescriptorO_Tt0g5Tf4g_n(inited);
  v7 = v6;
  swift_setDeallocating();
  outlined destroy of InputDescriptor(inited + 32);
  return v7;
}

Swift::Int protocol witness for Builder.outputDescriptors() in conformance TimelineTrackAndActionBuilder()
{
  v0 = _sSh21_nonEmptyArrayLiteralShyxGSayxG_tcfC9RealityIO16OutputDescriptorO_Tt0g5Tf4g_n(&outlined read-only object #0 of protocol witness for Builder.outputDescriptors() in conformance TimelineTrackAndActionBuilder);
  outlined destroy of OutputDescriptor(&unk_287410588);
  return v0;
}

uint64_t closure #1 in TimelineBuilder.inputDescriptors()(uint64_t a1, uint64_t *a2)
{
  v2 = *a2;
  v3 = *(a1 + 16);
  if (!RIOPxrUsdStageHasPrimAtPrimPath())
  {
    return MEMORY[0x277D84FA0];
  }

  v4 = RIOPxrTfTokenEmpty();
  PrimIfNeeded = RIOPxrUsdStageCreatePrimIfNeeded();

  type metadata accessor for Prim();
  *(swift_initStackObject() + 16) = PrimIfNeeded;
  if (one-time initialization token for targetPathAttributeName != -1)
  {
    goto LABEL_41;
  }

  while (1)
  {
    v39[0] = static ToolsFoundations.Token.targetPathAttributeName;
    v6 = one-time initialization token for pivotEntity;
    v7 = static ToolsFoundations.Token.targetPathAttributeName;
    if (v6 != -1)
    {
      swift_once();
    }

    v39[1] = static ToolsFoundations.Token.pivotEntity;
    v8 = static ToolsFoundations.Token.pivotEntity;
    v9 = Prim.descendants.getter();
    v38 = MEMORY[0x277D84F90];
    if (v9 >> 62)
    {
      v30 = v9;
      v10 = __CocoaSet.count.getter();
      v9 = v30;
      if (!v10)
      {
LABEL_43:
        v29 = MEMORY[0x277D84F90];
        goto LABEL_44;
      }
    }

    else
    {
      v10 = *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (!v10)
      {
        goto LABEL_43;
      }
    }

    v32 = PrimIfNeeded;
    v33 = v9;
    v11 = 0;
    v36 = v9 & 0xFFFFFFFFFFFFFF8;
    v37 = v9 & 0xC000000000000001;
    v35 = v9 + 32;
    v34 = v10;
LABEL_9:
    if (v37)
    {
      break;
    }

    if (v11 < *(v36 + 16))
    {
      v12 = *(v35 + 8 * v11);

      v13 = __OFADD__(v11++, 1);
      if (!v13)
      {
        goto LABEL_12;
      }

LABEL_33:
      __break(1u);
      return MEMORY[0x277D84FA0];
    }

LABEL_40:
    __break(1u);
LABEL_41:
    swift_once();
  }

  v12 = MEMORY[0x26670F670](v11, v33);
  v13 = __OFADD__(v11++, 1);
  if (v13)
  {
    goto LABEL_33;
  }

LABEL_12:
  v14 = 0;
  v15 = MEMORY[0x277D84F90];
  do
  {
    v16 = *(v12 + 16);
    v17 = v39[v14];
    if (RIOPxrUsdPrimHasRelationship())
    {
      v18 = *(v12 + 16);
      v19 = RIOPxrUsdPrimCopyRelationship();
      type metadata accessor for Relationship();
      v20 = swift_allocObject();
      v20[2] = v19;
      v21 = Relationship.targets.getter();
      outlined consume of Result<AnyAttribute, Object.Error>(v20, 0);
    }

    else
    {
      lazy protocol witness table accessor for type Object.Error and conformance Object.Error();
      swift_willThrowTypedImpl();
      outlined consume of Object.Error(0);

      v21 = MEMORY[0x277D84F90];
    }

    v22 = *(v21 + 16);
    v23 = *(v15 + 2);
    PrimIfNeeded = (v23 + v22);
    if (__OFADD__(v23, v22))
    {
      __break(1u);
LABEL_37:
      __break(1u);
LABEL_38:
      __break(1u);
LABEL_39:
      __break(1u);
      goto LABEL_40;
    }

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    if ((isUniquelyReferenced_nonNull_native & 1) != 0 && PrimIfNeeded <= *(v15 + 3) >> 1)
    {
      if (!*(v21 + 16))
      {
        goto LABEL_13;
      }
    }

    else
    {
      if (v23 <= PrimIfNeeded)
      {
        v25 = v23 + v22;
      }

      else
      {
        v25 = v23;
      }

      v15 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(isUniquelyReferenced_nonNull_native, v25, 1, v15);
      if (!*(v21 + 16))
      {
LABEL_13:

        if (v22)
        {
          goto LABEL_37;
        }

        goto LABEL_14;
      }
    }

    if ((*(v15 + 3) >> 1) - *(v15 + 2) < v22)
    {
      goto LABEL_38;
    }

    swift_arrayInitWithCopy();

    if (v22)
    {
      v26 = *(v15 + 2);
      v13 = __OFADD__(v26, v22);
      v27 = v26 + v22;
      if (v13)
      {
        goto LABEL_39;
      }

      *(v15 + 2) = v27;
    }

LABEL_14:
    ++v14;
  }

  while (v14 != 2);

  specialized Array.append<A>(contentsOf:)(v15);
  if (v11 != v34)
  {
    goto LABEL_9;
  }

  v29 = v38;
  PrimIfNeeded = v32;
LABEL_44:

  swift_arrayDestroy();
  v31 = _sShyShyxGqd__nc7ElementQyd__RszSTRd__lufC9RealityIO27SceneDescriptionFoundationsO4PathV_SayAHGTt0g5Tf4g_n(v29);

  return v31;
}

uint64_t specialized Sequence.flatMap<A>(_:)(uint64_t a1)
{
  v26 = *(a1 + 16);
  if (!v26)
  {
    return MEMORY[0x277D84F90];
  }

  v1 = 0;
  v2 = MEMORY[0x277D84F90];
  v25 = a1 + 32;
  while (1)
  {
    v4 = *(v25 + 8 * v1);
    v5 = v4 >> 62;
    if (v4 >> 62)
    {
      if (v4 < 0)
      {
        v23 = *(v25 + 8 * v1);
      }

      v6 = __CocoaSet.count.getter();
    }

    else
    {
      v6 = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v7 = v2 >> 62;
    if (v2 >> 62)
    {
      v24 = __CocoaSet.count.getter();
      v9 = v24 + v6;
      if (__OFADD__(v24, v6))
      {
LABEL_36:
        __break(1u);
        return MEMORY[0x277D84F90];
      }
    }

    else
    {
      v8 = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
      v9 = v8 + v6;
      if (__OFADD__(v8, v6))
      {
        goto LABEL_36;
      }
    }

    result = swift_isUniquelyReferenced_nonNull_bridgeObject();
    v29 = v6;
    if (result)
    {
      if (v7)
      {
        goto LABEL_16;
      }

      v10 = v2 & 0xFFFFFFFFFFFFFF8;
      if (v9 <= *((v2 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        goto LABEL_18;
      }
    }

    else
    {
      if (v7)
      {
LABEL_16:
        __CocoaSet.count.getter();
        goto LABEL_17;
      }

      v10 = v2 & 0xFFFFFFFFFFFFFF8;
    }

    v11 = *(v10 + 16);
LABEL_17:
    result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
    v2 = result;
    v10 = result & 0xFFFFFFFFFFFFFF8;
LABEL_18:
    v12 = *(v10 + 16);
    v13 = *(v10 + 24);
    if (v5)
    {
      break;
    }

    v14 = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v14)
    {
      goto LABEL_3;
    }

LABEL_22:
    if (((v13 >> 1) - v12) < v29)
    {
      goto LABEL_40;
    }

    v27 = v2;
    v15 = v10 + 8 * v12 + 32;
    if (v5)
    {
      if (v14 < 1)
      {
        goto LABEL_42;
      }

      lazy protocol witness table accessor for type [AnimationFillMode] and conformance [A](&lazy protocol witness table cache variable for type [AnimationResource] and conformance [A], &_sSay10RealityKit17AnimationResourceCGMd, &_sSay10RealityKit17AnimationResourceCGMR);
      for (i = 0; i != v14; ++i)
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay10RealityKit17AnimationResourceCGMd, &_sSay10RealityKit17AnimationResourceCGMR);
        v17 = specialized protocol witness for Collection.subscript.read in conformance [A](v28, i, v4);
        v19 = *v18;

        (v17)(v28, 0);
        *(v15 + 8 * i) = v19;
      }
    }

    else
    {
      type metadata accessor for AnimationResource();
      swift_arrayInitWithCopy();
    }

    v2 = v27;
    if (v29 >= 1)
    {
      v20 = *(v10 + 16);
      v21 = __OFADD__(v20, v29);
      v22 = v20 + v29;
      if (v21)
      {
        goto LABEL_41;
      }

      *(v10 + 16) = v22;
    }

LABEL_4:
    if (++v1 == v26)
    {
      return v2;
    }
  }

  result = __CocoaSet.count.getter();
  v14 = result;
  if (result)
  {
    goto LABEL_22;
  }

LABEL_3:

  if (v29 <= 0)
  {
    goto LABEL_4;
  }

  __break(1u);
LABEL_40:
  __break(1u);
LABEL_41:
  __break(1u);
LABEL_42:
  __break(1u);
  return result;
}

void *TimelineBuilder.createActions(for:inputs:)(uint64_t a1, void *a2)
{
  v2 = *(a1 + 16);
  v3 = RIOPxrUsdPrimCopyTypeName();
  if (one-time initialization token for primType != -1)
  {
    swift_once();
  }

  v4 = static TimelineConstants.Track.primType;
  type metadata accessor for RIOPxrTfTokenRef(0);
  lazy protocol witness table accessor for type AnimationFillMode and conformance AnimationFillMode(&lazy protocol witness table cache variable for type RIOPxrTfTokenRef and conformance RIOPxrTfTokenRef, type metadata accessor for RIOPxrTfTokenRef);
  v5 = v4;
  v6 = static _CFObject.== infix(_:_:)();

  if ((v6 & 1) == 0)
  {
    return 0;
  }

  v7 = String.count.getter() < 1 ? RIOPxrTfTokenEmpty() : RIOPxrTfTokenCreateWithCString();
  v8 = v7;
  v9 = _s9RealityIO4PrimC14attributeValue2of4typexSgAA16ToolsFoundationsO5TokenV_xmtAA012UsdAttributeE0RzlFSb_Tt1B5();

  if (v9 != 2 && (v9 & 1) == 0)
  {
    return 0;
  }

  v10 = Prim.children.getter();
  v11 = v10;
  if (!(v10 >> 62))
  {
    v12 = *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v12)
    {
      goto LABEL_11;
    }

LABEL_26:

    v15 = MEMORY[0x277D84F90];
LABEL_27:
    v33 = specialized Sequence.flatMap<A>(_:)(v15);

    return v33;
  }

  v12 = __CocoaSet.count.getter();
  if (!v12)
  {
    goto LABEL_26;
  }

LABEL_11:
  v40 = MEMORY[0x277D84F90];
  result = specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v12 & ~(v12 >> 63), 0);
  if ((v12 & 0x8000000000000000) == 0)
  {
    v14 = 0;
    v15 = v40;
    v37 = v11 & 0xC000000000000001;
    do
    {
      if (v37)
      {
        v16 = MEMORY[0x26670F670](v14, v11);
      }

      else
      {
        v16 = *(v11 + 8 * v14 + 32);
      }

      v17 = static os_log_type_t.info.getter();
      if (one-time initialization token for timeline != -1)
      {
        swift_once();
      }

      v18 = static OS_os_log.timeline;
      if (os_log_type_enabled(static OS_os_log.timeline, v17))
      {
        v19 = swift_slowAlloc();
        v35 = swift_slowAlloc();
        v39 = v35;
        *v19 = 136315138;
        v20 = *(v16 + 16);
        v21 = RIOPxrUsdObjectCopyPath();
        v22 = v11;
        v23 = RIOPxrSdfPathCopyString();
        v34 = v17;
        v24 = v12;
        v25 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v36 = v15;
        v27 = v26;

        v11 = v22;
        v28 = v25;
        v12 = v24;
        v29 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v28, v27, &v39);
        v15 = v36;

        *(v19 + 4) = v29;
        _os_log_impl(&dword_26187B000, v18, v34, "Start producing an EntityAction for prim at path: %s", v19, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v35);
        MEMORY[0x266713AD0](v35, -1, -1);
        MEMORY[0x266713AD0](v19, -1, -1);
      }

      v30 = TimelineBuilder.createAction(for:inputs:)(v16, a2);

      v40 = v15;
      v32 = *(v15 + 16);
      v31 = *(v15 + 24);
      if (v32 >= v31 >> 1)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v31 > 1), v32 + 1, 1);
        v15 = v40;
      }

      ++v14;
      *(v15 + 16) = v32 + 1;
      *(v15 + 8 * v32 + 32) = v30;
    }

    while (v12 != v14);

    goto LABEL_27;
  }

  __break(1u);
  return result;
}

uint64_t TimelineBuilder.timingFunction(for:)@<X0>(uint64_t a1@<X0>, unint64_t a2@<X8>)
{
  v4 = Prim.children.getter();
  v5 = v4;
  v38 = a2;
  if (v4 >> 62)
  {
    v6 = __CocoaSet.count.getter();
    if (v6)
    {
      goto LABEL_3;
    }

LABEL_44:

    v24 = 1;
    v8 = v38;
    goto LABEL_45;
  }

  v6 = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v6)
  {
    goto LABEL_44;
  }

LABEL_3:
  v7 = 0;
  v8 = v5 & 0xC000000000000001;
  while (v8)
  {
    v10 = MEMORY[0x26670F670](v7, v5);
    v11 = v7 + 1;
    if (__OFADD__(v7, 1))
    {
      goto LABEL_33;
    }

LABEL_7:
    v39 = v10;
    v12 = *(v10 + 16);
    v13 = RIOPxrUsdObjectCopyName();
    if (one-time initialization token for timingFunction != -1)
    {
      swift_once();
    }

    v14 = static ToolsFoundations.Token.timingFunction;
    type metadata accessor for RIOPxrTfTokenRef(0);
    lazy protocol witness table accessor for type AnimationFillMode and conformance AnimationFillMode(&lazy protocol witness table cache variable for type RIOPxrTfTokenRef and conformance RIOPxrTfTokenRef, type metadata accessor for RIOPxrTfTokenRef);
    v15 = v14;
    a1 = static _CFObject.== infix(_:_:)();

    if (a1)
    {

      if (String.count.getter() < 1)
      {
        v16 = RIOPxrTfTokenEmpty();
      }

      else
      {
        v16 = RIOPxrTfTokenCreateWithCString();
      }

      v17 = v16;
      v8 = v38;
      v18 = *(v39 + 16);
      if (RIOPxrUsdPrimHasAttribute())
      {
        v19 = RIOPxrUsdPrimCopyAttribute();
        v20 = RIOPxrUsdAttributeCopyValue();
        if (!v20)
        {

          goto LABEL_28;
        }

        v21 = v20;
        v5 = RIOPxrVtValueCopyToken();

        if (v5)
        {

          v22 = RIOPxrTfTokenCopyString();
          v6 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          a1 = v23;

          if (v6 == 0x746C7561666564 && a1 == 0xE700000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
          {

            static AnimationTimingFunction.default.getter();
          }

          else
          {
            if ((v6 != 0x6E4965736165 || a1 != 0xE600000000000000) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
            {
              goto LABEL_35;
            }

            static AnimationTimingFunction.easeIn.getter();
          }

LABEL_25:

          v24 = 0;
          goto LABEL_45;
        }
      }

      goto LABEL_28;
    }

    ++v7;
    if (v11 == v6)
    {
      goto LABEL_44;
    }
  }

  if (v7 >= *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_34;
  }

  v9 = *(v5 + 8 * v7 + 32);

  v11 = v7 + 1;
  if (!__OFADD__(v7, 1))
  {
    goto LABEL_7;
  }

LABEL_33:
  __break(1u);
LABEL_34:
  __break(1u);
LABEL_35:
  if (v6 == 0x754F6E4965736165 && a1 == 0xE900000000000074 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    static AnimationTimingFunction.easeInOut.getter();
    goto LABEL_25;
  }

  if (v6 == 0x74754F65736165 && a1 == 0xE700000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    static AnimationTimingFunction.easeOut.getter();
    goto LABEL_25;
  }

  if (v6 == 0x7261656E696CLL && a1 == 0xE600000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    static AnimationTimingFunction.linear.getter();
    goto LABEL_25;
  }

  if (v6 == 0x7A65426369627563 && a1 == 0xEB00000000726569)
  {

LABEL_56:
    if (String.count.getter() < 1)
    {
      v29 = RIOPxrTfTokenEmpty();
    }

    else
    {
      v29 = RIOPxrTfTokenCreateWithCString();
    }

    v30 = v29;
    _s9RealityIO4PrimC14attributeValue2of4typexSgAA16ToolsFoundationsO5TokenV_xmtAA012UsdAttributeE0RzlFs5SIMD2VySfG_Tt1B5();

    if (String.count.getter() < 1)
    {
      v31 = RIOPxrTfTokenEmpty();
    }

    else
    {
      v31 = RIOPxrTfTokenCreateWithCString();
    }

    v32 = v31;
    _s9RealityIO4PrimC14attributeValue2of4typexSgAA16ToolsFoundationsO5TokenV_xmtAA012UsdAttributeE0RzlFs5SIMD2VySfG_Tt1B5();

    __asm { FMOV            V2.2S, #1.0 }

    static AnimationTimingFunction.cubicBezier(controlPoint1:controlPoint2:)();
    goto LABEL_25;
  }

  v28 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if (v28)
  {
    goto LABEL_56;
  }

LABEL_28:
  v24 = 1;
LABEL_45:
  v25 = type metadata accessor for AnimationTimingFunction();
  v26 = *(*(v25 - 8) + 56);

  return v26(v8, v24, 1, v25);
}

uint64_t TimelineBuilder.transformMode(for:inputs:)@<X0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  v70 = a3;
  v6 = type metadata accessor for TimelineBuilder.BindPathWrapper();
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v9 = &v66 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v68 = &v66 - v11;
  v12 = Prim.children.getter();
  v13 = v12;
  v69 = v9;
  v67 = a2;
  if (v12 >> 62)
  {
    v14 = __CocoaSet.count.getter();
    if (v14)
    {
      goto LABEL_3;
    }

LABEL_51:

    goto LABEL_52;
  }

  v14 = *((v12 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v14)
  {
    goto LABEL_51;
  }

LABEL_3:
  v15 = 0;
  v16 = v13 & 0xC000000000000001;
  while (v16)
  {
    v18 = MEMORY[0x26670F670](v15, v13);
    v19 = v15 + 1;
    if (__OFADD__(v15, 1))
    {
      goto LABEL_33;
    }

LABEL_7:
    v71 = v18;
    v20 = *(v18 + 16);
    a2 = RIOPxrUsdObjectCopyName();
    if (one-time initialization token for transformMode != -1)
    {
      swift_once();
    }

    v21 = static ToolsFoundations.Token.transformMode;
    type metadata accessor for RIOPxrTfTokenRef(0);
    a1 = v22;
    lazy protocol witness table accessor for type AnimationFillMode and conformance AnimationFillMode(&lazy protocol witness table cache variable for type RIOPxrTfTokenRef and conformance RIOPxrTfTokenRef, type metadata accessor for RIOPxrTfTokenRef);
    v3 = v21;
    v23 = static _CFObject.== infix(_:_:)();

    if (v23)
    {

      v24 = String.count.getter();
      v3 = v71;
      if (v24 < 1)
      {
        v25 = RIOPxrTfTokenEmpty();
      }

      else
      {
        v25 = RIOPxrTfTokenCreateWithCString();
      }

      v26 = v25;
      v16 = v69;
      v27 = v3[2];
      if (!RIOPxrUsdPrimHasAttribute())
      {
LABEL_27:

        goto LABEL_52;
      }

      v28 = RIOPxrUsdPrimCopyAttribute();
      v29 = RIOPxrUsdAttributeCopyValue();
      if (v29)
      {
        v30 = v29;
        v13 = RIOPxrVtValueCopyToken();

        if (v13)
        {

          v31 = RIOPxrTfTokenCopyString();
          a2 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          a1 = v32;

          if (a2 == 0x746E65726170 && a1 == 0xE600000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
          {

            v33 = MEMORY[0x277CDB2F8];
          }

          else
          {
            if ((a2 != 0x6C61636F6CLL || a1 != 0xE500000000000000) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
            {
              goto LABEL_35;
            }

            v33 = MEMORY[0x277CDB2E8];
          }

          v34 = *v33;
          v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s17RealityFoundation14FromToByActionV13TransformModeOy0A3Kit0G0V_GMd, &_s17RealityFoundation14FromToByActionV13TransformModeOy0A3Kit0G0V_GMR);
          v71 = *(v35 - 8);
          v36 = v70;
          (*(v71 + 104))(v70, v34, v35);
          goto LABEL_26;
        }

        goto LABEL_27;
      }

LABEL_52:
      v53 = v70;
      static FromToByAction.TransformMode.default.getter();
      goto LABEL_53;
    }

    ++v15;
    if (v19 == v14)
    {
      goto LABEL_51;
    }
  }

  if (v15 >= *((v13 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_34;
  }

  v17 = *(v13 + 8 * v15 + 32);

  v19 = v15 + 1;
  if (!__OFADD__(v15, 1))
  {
    goto LABEL_7;
  }

LABEL_33:
  __break(1u);
LABEL_34:
  __break(1u);
LABEL_35:
  if (a2 == 0x65766974616C6572 && a1 == 0xE800000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    if (String.count.getter() < 1)
    {
      v40 = RIOPxrTfTokenEmpty();
    }

    else
    {
      v40 = RIOPxrTfTokenCreateWithCString();
    }

    v41 = v40;
    v42 = v3[2];
    if (RIOPxrUsdPrimHasRelationship())
    {
      v43 = v3[2];
      v44 = RIOPxrUsdPrimCopyRelationship();

      type metadata accessor for Relationship();
      v45 = swift_allocObject();
      v45[2] = v44;
      v46 = Relationship.targets.getter();
      outlined consume of Result<AnyAttribute, Object.Error>(v45, 0);
      if (*(v46 + 16))
      {
        v47 = *(v46 + 32);

        v72 = v47;
        v48 = v47;
        v49 = v68;
        TimelineBuilder.createBindPath(from:inputs:)(&v72, v67, v68);

        outlined init with copy of TimelineBuilder.BindPathWrapper(v49, v16);
        v57 = type metadata accessor for BindTarget.EntityPath();
        v58 = v49;
        v59 = *(v57 - 8);
        if ((*(v59 + 48))(v16, 1, v57) == 1)
        {
          v60 = v70;
          static ActionEntityResolution.sourceEntity.getter();

          outlined destroy of TimelineBuilder.BindPathWrapper(v58);
        }

        else
        {
          outlined destroy of TimelineBuilder.BindPathWrapper(v58);

          v60 = v70;
          (*(v59 + 32))(v70, v16, v57);
          v61 = *MEMORY[0x277CDB480];
          v62 = type metadata accessor for ActionEntityResolution();
          (*(*(v62 - 8) + 104))(v60, v61, v62);
        }

        v63 = *MEMORY[0x277CDB300];
        v64 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s17RealityFoundation14FromToByActionV13TransformModeOy0A3Kit0G0V_GMd, &_s17RealityFoundation14FromToByActionV13TransformModeOy0A3Kit0G0V_GMR);
        v65 = *(v64 - 8);
        (*(v65 + 104))(v60, v63, v64);
        return (*(v65 + 56))(v60, 0, 1, v64);
      }
    }

    else
    {

      v72 = 0;
      lazy protocol witness table accessor for type Object.Error and conformance Object.Error();
      swift_willThrowTypedImpl();
      outlined consume of Object.Error(v72);
    }

    v50 = v70;
    static FromToByAction.TransformMode.default.getter();

    v51 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s17RealityFoundation14FromToByActionV13TransformModeOy0A3Kit0G0V_GMd, &_s17RealityFoundation14FromToByActionV13TransformModeOy0A3Kit0G0V_GMR);
    return (*(*(v51 - 8) + 56))(v50, 0, 1, v51);
  }

  if (a2 == 0x656E656373 && a1 == 0xE500000000000000)
  {

    goto LABEL_59;
  }

  v55 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if (v55)
  {

LABEL_59:
    v56 = *MEMORY[0x277CDB2F0];
    v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s17RealityFoundation14FromToByActionV13TransformModeOy0A3Kit0G0V_GMd, &_s17RealityFoundation14FromToByActionV13TransformModeOy0A3Kit0G0V_GMR);
    v71 = *(v35 - 8);
    v36 = v70;
    (*(v71 + 104))(v70, v56, v35);
LABEL_26:
    v37 = *(v71 + 56);
    v38 = v36;
    v39 = v35;
    goto LABEL_54;
  }

  v53 = v70;
  static FromToByAction.TransformMode.default.getter();

LABEL_53:
  v54 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s17RealityFoundation14FromToByActionV13TransformModeOy0A3Kit0G0V_GMd, &_s17RealityFoundation14FromToByActionV13TransformModeOy0A3Kit0G0V_GMR);
  v37 = *(*(v54 - 8) + 56);
  v39 = v54;
  v38 = v53;
LABEL_54:

  return v37(v38, 0, 1, v39);
}

uint64_t TimelineBuilder.createBindPath(rootEntity:targetEntity:)@<X0>(void (**a1)(char *, uint64_t, uint64_t)@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v55 = a1;
  v5 = type metadata accessor for BindTarget.EntityPath();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v54 = &v48 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s17RealityFoundation10BindTargetO10EntityPathVSgMd, &_s17RealityFoundation10BindTargetO10EntityPathVSgMR);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v49 = &v48 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v14 = &v48 - v13;
  MEMORY[0x28223BE20](v15);
  v57 = &v48 - v16;
  v18 = MEMORY[0x28223BE20](v17);
  v20 = &v48 - v19;
  v52 = v6;
  v21 = v5;
  v58 = *(v6 + 56);
  v59 = v6 + 56;
  v58(&v48 - v19, 1, 1, v5, v18);
  type metadata accessor for Entity();

  v22 = MEMORY[0x277D84F90];
  v56 = xmmword_2619891C0;
  v50 = a3;
  while (1)
  {

    v23 = HasHierarchy.parent.getter();

    if (v23)
    {
      v60 = v55;
      v61 = v23;
      lazy protocol witness table accessor for type AnimationFillMode and conformance AnimationFillMode(&lazy protocol witness table cache variable for type Entity and conformance Entity, MEMORY[0x277CDB1C8]);
      v24 = dispatch thunk of static Equatable.== infix(_:_:)();

      if (v24)
      {
        break;
      }
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySSGMd, &_ss23_ContiguousArrayStorageCySSGMR);
    v25 = swift_allocObject();
    *(v25 + 16) = v56;
    *(v25 + 32) = dispatch thunk of Entity.name.getter();
    *(v25 + 40) = v26;
    v27 = *(v22 + 16);
    if (v27)
    {
      v30 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(1, v27 + 1, 1, v25);
      if (!*(v22 + 16))
      {
        goto LABEL_26;
      }

      v25 = v30;
      if ((*(v30 + 3) >> 1) - *(v30 + 2) < v27)
      {
        __break(1u);
LABEL_25:
        __break(1u);
LABEL_26:

        __break(1u);
        return result;
      }

      swift_arrayInitWithCopy();

      v31 = *(v25 + 16);
      v32 = __OFADD__(v31, v27);
      v33 = v31 + v27;
      if (v32)
      {
        goto LABEL_25;
      }

      *(v25 + 16) = v33;
    }

    else
    {
    }

    v28 = HasHierarchy.parent.getter();
    if (!v28)
    {
      v48 = a2;
      v22 = v25;
      goto LABEL_14;
    }

    v29 = v28;

    a2 = v29;
    v22 = v25;
  }

  v48 = a2;
LABEL_14:
  v51 = v22;
  v34 = *(v22 + 16);
  if (v34)
  {
    v55 = (v52 + 32);
    *&v56 = v52 + 48;
    v53 = (v52 + 8);
    v35 = (v51 + 40);
    do
    {
      v36 = v20;
      v37 = *(v35 - 1);
      v38 = *v35;
      v39 = v36;
      v40 = v57;
      outlined init with copy of BindTarget.EntityPath?(v36, v57);
      if ((*v56)(v40, 1, v21) == 1)
      {

        outlined destroy of Any?(v40, &_s17RealityFoundation10BindTargetO10EntityPathVSgMd, &_s17RealityFoundation10BindTargetO10EntityPathVSgMR);
        static BindTarget.entity(_:)();
      }

      else
      {
        v41 = v40;
        v42 = v54;
        (*v55)(v54, v41, v21);

        MEMORY[0x26670E920](v37, v38);

        (*v53)(v42, v21);
      }

      v20 = v39;
      outlined destroy of Any?(v39, &_s17RealityFoundation10BindTargetO10EntityPathVSgMd, &_s17RealityFoundation10BindTargetO10EntityPathVSgMR);
      (v58)(v14, 0, 1, v21);
      outlined init with take of BindTarget.EntityPath?(v14, v39);
      v35 += 2;
      --v34;
    }

    while (v34);
  }

  v43 = v49;
  outlined init with take of BindTarget.EntityPath?(v20, v49);
  v44 = v52;
  if ((*(v52 + 48))(v43, 1, v21) == 1)
  {
    outlined destroy of Any?(v43, &_s17RealityFoundation10BindTargetO10EntityPathVSgMd, &_s17RealityFoundation10BindTargetO10EntityPathVSgMR);
    v45 = 1;
    v46 = v50;
  }

  else
  {
    v46 = v50;
    (*(v44 + 32))(v50, v43, v21);
    v45 = 0;
  }

  return (v58)(v46, v45, 1, v21);
}

void TimelineBuilder.createBindPath(from:inputs:)(void **a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = type metadata accessor for __EntityRef();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = v37 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  MEMORY[0x28223BE20](v12);
  v15 = v37 - v14;
  v16 = *a1;
  if (!*a1)
  {
    lazy protocol witness table accessor for type TimelineBuilder.Error and conformance TimelineBuilder.Error();
    swift_allocError();
    *v32 = 0;
LABEL_13:
    swift_willThrow();
    return;
  }

  v38 = a3;
  v39 = v13;
  v17 = *(a2 + 56);
  v18 = v16;
  v41 = v17;
  v42 = v18;
  v19 = RIOBuilderInputsGetImportSession();
  if (!v19)
  {
    __break(1u);
    goto LABEL_19;
  }

  v20 = v19;
  SwiftObject = RIOImportSessionGetSwiftObject();

  if (!SwiftObject)
  {
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  v22 = OBJC_IVAR____TtC9RealityIO13ImportSession_core;

  swift_beginAccess();
  v23 = *(SwiftObject + v22);
  EntityAtPrimPath = RIOImportSessionGetEntityAtPrimPath();
  if (!EntityAtPrimPath)
  {

    lazy protocol witness table accessor for type TimelineBuilder.Error and conformance TimelineBuilder.Error();
    swift_allocError();
    *v33 = v16;
    goto LABEL_13;
  }

  v25 = EntityAtPrimPath;
  v26 = type metadata accessor for Entity();
  v44 = MEMORY[0x277D841D8];
  v43[0] = v25;
  static __AssetRef.__fromCore(_:)();
  __swift_destroy_boxed_opaque_existential_0(v43);
  v37[1] = v26;
  v40 = static Entity.__fromCore(_:)();

  v27 = v7;
  v28 = *(v7 + 8);
  v28(v15, v6);
  if (one-time initialization token for OutputName != -1)
  {
    swift_once();
  }

  Inputs.subscript.getter(static EntityBuilder.OutputName, qword_27FEBC3A0, v43);
  if (v44)
  {
    type metadata accessor for EntityProxy();
    if (swift_dynamicCast())
    {
      v29 = v28;
      (*(v27 + 16))(v10, &v45[OBJC_IVAR____TtC9RealityIO11EntityProxy_reEntity], v6);

      v30 = v39;
      (*(v27 + 32))(v39, v10, v6);
      static Entity.__fromCore(_:)();
      v31 = HasHierarchy.parent.getter();

      if (v31)
      {
        TimelineBuilder.createBindPath(rootEntity:targetEntity:)(v31, v40, v38);

        v29(v30, v6);
        return;
      }

      v29(v30, v6);
    }
  }

  else
  {
    outlined destroy of Any?(v43, &_sypSgMd, &_sypSgMR);
  }

  v34 = RIOBuilderInputsCopyPrimPath();
  if (v34)
  {
    v45 = v34;
    SceneDescriptionFoundations.Path.deletingLastPathComponent()(v43);

    v35 = v43[0];
    lazy protocol witness table accessor for type TimelineBuilder.Error and conformance TimelineBuilder.Error();
    swift_allocError();
    *v36 = v35;
    swift_willThrow();

    return;
  }

LABEL_20:
  __break(1u);
}

uint64_t TimelineBuilder.createAnimationAction(for:inputs:)(uint64_t a1, unint64_t a2)
{
  v113 = a2;
  v3 = type metadata accessor for PlayAnimationAction();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = v95 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for ActionEntityResolution();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  v106 = v95 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v14 = v95 - v13;
  v15 = type metadata accessor for TimelineBuilder.BindPathWrapper();
  v16 = *(*(v15 - 8) + 64);
  MEMORY[0x28223BE20](v15 - 8);
  v104 = v95 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v114 = v95 - v19;
  v20 = type metadata accessor for AnimationHandoffType();
  v21 = *(v20 - 8);
  v22 = *(v21 + 64);
  MEMORY[0x28223BE20](v20);
  v105 = v95 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v24);
  v26 = v95 - v25;
  v27 = String.count.getter();
  v101 = v14;
  v102 = v9;
  if (v27 < 1)
  {
    v28 = RIOPxrTfTokenEmpty();
  }

  else
  {
    v28 = RIOPxrTfTokenCreateWithCString();
  }

  v29 = v28;
  v103 = _s9RealityIO4PrimC14attributeValue2of4typexSgAA16ToolsFoundationsO5TokenV_xmtAA012UsdAttributeE0RzlFSS_Tt1B5();
  v31 = v30;

  if (!v31)
  {
    return 0;
  }

  v108 = v31;
  if (one-time initialization token for targetPathAttributeName != -1)
  {
    swift_once();
  }

  v32 = *(a1 + 16);
  v33 = static ToolsFoundations.Token.targetPathAttributeName;
  if (RIOPxrUsdPrimHasRelationship())
  {
    v34 = RIOPxrUsdPrimCopyRelationship();

    type metadata accessor for Relationship();
    v35 = swift_allocObject();
    v35[2] = v34;
    v107 = Relationship.targets.getter();
    outlined consume of Result<AnyAttribute, Object.Error>(v35, 0);
  }

  else
  {

    v115[0] = 0;
    lazy protocol witness table accessor for type Object.Error and conformance Object.Error();
    swift_willThrowTypedImpl();
    outlined consume of Object.Error(v115[0]);
    v107 = MEMORY[0x277D84F90];
  }

  v37 = String.count.getter();
  v99 = v3;
  if (v37 < 1)
  {
    v38 = RIOPxrTfTokenEmpty();
  }

  else
  {
    v38 = RIOPxrTfTokenCreateWithCString();
  }

  v39 = v38;
  _s9RealityIO4PrimC14attributeValue2of4typexSgAA16ToolsFoundationsO5TokenV_xmtAA012UsdAttributeE0RzlFSd_Tt1B5();

  if (String.count.getter() < 1)
  {
    v40 = RIOPxrTfTokenEmpty();
  }

  else
  {
    v40 = RIOPxrTfTokenCreateWithCString();
  }

  v41 = v40;
  v42 = _s9RealityIO4PrimC14attributeValue2of4typexSgAA16ToolsFoundationsO5TokenV_xmtAA012UsdAttributeE0RzlFSi_Tt1B5();
  v44 = v43;

  if (v44)
  {
    v45 = 0;
  }

  else
  {
    v45 = v42;
  }

  v46 = String.count.getter();
  v110 = v21;
  v111 = v20;
  v98 = v4;
  v96 = v45;
  if (v46 < 1)
  {
    v47 = RIOPxrTfTokenEmpty();
  }

  else
  {
    v47 = RIOPxrTfTokenCreateWithCString();
  }

  v48 = v47;
  v109 = v26;
  v49 = _s9RealityIO4PrimC14attributeValue2of4typexSgAA16ToolsFoundationsO5TokenV_xmtAA012UsdAttributeE0RzlFSb_Tt1B5();

  v50 = Prim.children.getter();
  v51 = v50;
  v112 = a1;
  v100 = v8;
  v97 = v7;
  v95[1] = v49;
  if (v50 >> 62)
  {
    v52 = __CocoaSet.count.getter();
    if (v52)
    {
      goto LABEL_25;
    }

LABEL_72:

    v26 = v109;
    static AnimationHandoffType.default.getter();
    v78 = v110;
    v53 = v113;
    v54 = v107;
    goto LABEL_73;
  }

  v52 = *((v50 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v52)
  {
    goto LABEL_72;
  }

LABEL_25:
  v53 = 0;
  v54 = v51 & 0xC000000000000001;
  while (!v54)
  {
    if (v53 >= *((v51 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
      goto LABEL_68;
    }

    v55 = *(v51 + 8 * v53 + 32);

    v56 = v53 + 1;
    if (__OFADD__(v53, 1))
    {
      goto LABEL_37;
    }

LABEL_29:
    v57 = *(v55 + 16);
    v26 = RIOPxrUsdObjectCopyName();
    if (String.count.getter() < 1)
    {
      v58 = RIOPxrTfTokenEmpty();
    }

    else
    {
      v58 = RIOPxrTfTokenCreateWithCString();
    }

    v59 = v58;
    type metadata accessor for RIOPxrTfTokenRef(0);
    lazy protocol witness table accessor for type AnimationFillMode and conformance AnimationFillMode(&lazy protocol witness table cache variable for type RIOPxrTfTokenRef and conformance RIOPxrTfTokenRef, type metadata accessor for RIOPxrTfTokenRef);
    v60 = static _CFObject.== infix(_:_:)();

    if (v60)
    {
      goto LABEL_38;
    }

    ++v53;
    if (v56 == v52)
    {
      goto LABEL_72;
    }
  }

  v55 = MEMORY[0x26670F670](v53, v51);
  v56 = v53 + 1;
  if (!__OFADD__(v53, 1))
  {
    goto LABEL_29;
  }

LABEL_37:
  __break(1u);
LABEL_38:

  if (String.count.getter() < 1)
  {
    v61 = RIOPxrTfTokenEmpty();
  }

  else
  {
    v61 = RIOPxrTfTokenCreateWithCString();
  }

  v62 = v61;
  v26 = v109;
  v53 = v113;
  v54 = v107;
  v63 = _s9RealityIO4PrimC14attributeValue2of4typexSgAA16ToolsFoundationsO5TokenV_xmtAA012UsdAttributeE0RzlFSb_Tt1B5();

  if (String.count.getter() < 1)
  {
    v64 = RIOPxrTfTokenEmpty();
  }

  else
  {
    v64 = RIOPxrTfTokenCreateWithCString();
  }

  v65 = v64;
  v66 = *(v55 + 16);
  HasAttribute = RIOPxrUsdPrimHasAttribute();
  LODWORD(v113) = v63;
  if (!HasAttribute)
  {
    v68 = v65;
LABEL_52:

    goto LABEL_53;
  }

  v68 = RIOPxrUsdPrimCopyAttribute();
  v69 = RIOPxrUsdAttributeCopyValue();
  if (!v69)
  {

    goto LABEL_52;
  }

  v70 = v26;
  v71 = v69;
  v72 = RIOPxrVtValueCopyToken();

  v26 = v70;
  if (!v72)
  {
LABEL_53:
    v76 = 0x8000000261994D60;
    v77 = 0x8000000261994D60 == 0xE700000000000000;
    v74 = 0xD000000000000012;
    goto LABEL_54;
  }

  v73 = RIOPxrTfTokenCopyString();
  v74 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v76 = v75;

  v77 = v76 == 0xE700000000000000;
  if (v74 == 0x65736F706D6F43 && v76 == 0xE700000000000000)
  {
    goto LABEL_55;
  }

LABEL_54:
  if (_stringCompareWithSmolCheck(_:_:expecting:)())
  {
LABEL_55:

    static AnimationHandoffType.compose.getter();
    goto LABEL_60;
  }

  if (v74 == 1886352467 && v76 == 0xE400000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    static AnimationHandoffType.stop.getter();
    goto LABEL_60;
  }

  if (v74 == 0x6563616C706552 && v77 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    static AnimationHandoffType.replace(applyToAllLayers:)();
    goto LABEL_60;
  }

  if (v74 == 0xD000000000000012 && 0x8000000261994D80 == v76)
  {

    goto LABEL_69;
  }

LABEL_68:
  v79 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if (v79)
  {
LABEL_69:
    static AnimationHandoffType.snapshotAndReplace(applyToAllLayers:)();
  }

  else
  {
    static AnimationHandoffType.default.getter();
  }

LABEL_60:

  v78 = v110;
LABEL_73:
  if (String.count.getter() < 1)
  {
    v80 = RIOPxrTfTokenEmpty();
  }

  else
  {
    v80 = RIOPxrTfTokenCreateWithCString();
  }

  v81 = v80;
  _s9RealityIO4PrimC14attributeValue2of4typexSgAA16ToolsFoundationsO5TokenV_xmtAA012UsdAttributeE0RzlFSb_Tt1B5();

  if (*(v54 + 16))
  {
    v82 = *(v54 + 32);
    v83 = v82;
  }

  else
  {
    v82 = 0;
  }

  v84 = v114;

  v115[0] = v82;
  TimelineBuilder.createBindPath(from:inputs:)(v115, v53, v84);
  v85 = v26;

  v86 = v104;
  outlined init with copy of TimelineBuilder.BindPathWrapper(v84, v104);
  v87 = type metadata accessor for BindTarget.EntityPath();
  v88 = *(v87 - 8);
  if ((*(v88 + 48))(v86, 1, v87) == 1)
  {
    v89 = v101;
    static ActionEntityResolution.sourceEntity.getter();
    v90 = v100;
    v91 = v102;
  }

  else
  {
    v89 = v101;
    (*(v88 + 32))(v101, v86, v87);
    v91 = v102;
    v90 = v100;
    (*(v102 + 104))(v89, *MEMORY[0x277CDB480], v100);
  }

  v115[0] = v103;
  v115[1] = v108;

  MEMORY[0x26670F080](0xD000000000000018, 0x80000002619947E0);

  (*(v91 + 16))(v106, v89, v90);
  v92 = v111;
  (*(v78 + 16))(v105, v85, v111);
  v93 = v97;
  PlayAnimationAction.init(animationName:targetEntity:transitionDuration:blendLayer:separateAnimatedValue:useParentedControllers:handoffType:)();
  v36 = specialized TimelineBuilder.handleLooping(action:for:)(v93, v112, MEMORY[0x277CDB450], MEMORY[0x277CDB448]);
  (*(v98 + 8))(v93, v99);
  (*(v91 + 8))(v89, v100);
  outlined destroy of TimelineBuilder.BindPathWrapper(v114);
  (*(v78 + 8))(v85, v92);
  return v36;
}

uint64_t TimelineBuilder.createTimelineAction(for:inputs:)(uint64_t a1, void *a2)
{
  v69 = a2;
  v3 = type metadata accessor for AnimationHandoffType();
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v63 = &v59 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for PlayAnimationAction();
  v64 = *(v6 - 8);
  v65 = v6;
  v7 = *(v64 + 64);
  MEMORY[0x28223BE20](v6);
  v9 = &v59 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for ActionEntityResolution();
  v66 = *(v10 - 8);
  v67 = v10;
  v11 = *(v66 + 64);
  MEMORY[0x28223BE20](v10);
  v13 = &v59 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v16 = &v59 - v15;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9RealityIO15TimelineBuilderC15BindPathWrapperOSgMd, &_s9RealityIO15TimelineBuilderC15BindPathWrapperOSgMR);
  v18 = *(*(v17 - 8) + 64);
  MEMORY[0x28223BE20](v17 - 8);
  v20 = &v59 - v19;
  v21 = type metadata accessor for TimelineBuilder.BindPathWrapper();
  v68 = *(v21 - 8);
  v22 = *(v68 + 64);
  MEMORY[0x28223BE20](v21);
  v24 = &v59 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v25);
  v27 = &v59 - v26;
  if (String.count.getter() < 1)
  {
    v28 = RIOPxrTfTokenEmpty();
  }

  else
  {
    v28 = RIOPxrTfTokenCreateWithCString();
  }

  v29 = v28;
  v30 = *(a1 + 16);
  if (!RIOPxrUsdPrimHasRelationship())
  {

    v70[0] = 0;
    lazy protocol witness table accessor for type Object.Error and conformance Object.Error();
    swift_willThrowTypedImpl();
    outlined consume of Object.Error(v70[0]);
    return 0;
  }

  v31 = RIOPxrUsdPrimCopyRelationship();

  type metadata accessor for Relationship();
  v32 = swift_allocObject();
  v32[2] = v31;
  v33 = Relationship.targets.getter();
  outlined consume of Result<AnyAttribute, Object.Error>(v32, 0);
  if (!*(v33 + 16))
  {

    return 0;
  }

  v60 = a1;
  v61 = v9;
  v34 = *(v33 + 32);

  v35 = v69[7];
  result = RIOBuilderInputsCopyStage();
  if (!result)
  {
    __break(1u);
    goto LABEL_25;
  }

  v37 = result;
  HasPrimAtPrimPath = RIOPxrUsdStageHasPrimAtPrimPath();

  if (!HasPrimAtPrimPath)
  {

    return 0;
  }

  v62 = v34;
  result = RIOBuilderInputsCopyStage();
  if (!result)
  {
LABEL_25:
    __break(1u);
    return result;
  }

  v39 = result;
  type metadata accessor for Stage();
  *(swift_initStackObject() + 16) = v39;
  v40 = RIOPxrTfTokenEmpty();
  PrimIfNeeded = RIOPxrUsdStageCreatePrimIfNeeded();

  type metadata accessor for Prim();
  inited = swift_initStackObject();
  v59 = PrimIfNeeded;
  *(inited + 16) = PrimIfNeeded;
  v43 = String.count.getter();
  v44 = v61;
  if (v43 < 1)
  {
    v45 = RIOPxrTfTokenEmpty();
  }

  else
  {
    v45 = RIOPxrTfTokenCreateWithCString();
  }

  v46 = v45;
  v47 = _s9RealityIO4PrimC14attributeValue2of4typexSgAA16ToolsFoundationsO5TokenV_xmtAA012UsdAttributeE0RzlFSb_Tt1B5();

  if (v47 != 2 && (v47 & 1) == 0)
  {

    return 0;
  }

  v70[3] = v62;
  SceneDescriptionFoundations.Path.deletingLastPathComponent()(v70);
  v48 = v70[0];
  TimelineBuilder.createBindPath(from:inputs:)(v70, v69, v20);
  v69 = v48;

  (*(v68 + 56))(v20, 0, 1, v21);
  outlined init with take of TimelineBuilder.BindPathWrapper(v20, v27);
  outlined init with copy of TimelineBuilder.BindPathWrapper(v27, v24);
  v49 = type metadata accessor for BindTarget.EntityPath();
  v50 = *(v49 - 8);
  if ((*(v50 + 48))(v24, 1, v49) == 1)
  {
    static ActionEntityResolution.sourceEntity.getter();
    v52 = v66;
    v51 = v67;
  }

  else
  {
    (*(v50 + 32))(v16, v24, v49);
    v52 = v66;
    v51 = v67;
    (*(v66 + 104))(v16, *MEMORY[0x277CDB480], v67);
  }

  v53 = v62;
  v54 = RIOPxrSdfPathCopyString();
  v55 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v57 = v56;

  v70[0] = v55;
  v70[1] = v57;

  MEMORY[0x26670F080](0xD000000000000018, 0x80000002619947E0);

  (*(v52 + 16))(v13, v16, v51);
  static AnimationHandoffType.compose.getter();
  PlayAnimationAction.init(animationName:targetEntity:transitionDuration:blendLayer:separateAnimatedValue:useParentedControllers:handoffType:)();
  v58 = specialized TimelineBuilder.handleLooping(action:for:)(v44, v60, MEMORY[0x277CDB450], MEMORY[0x277CDB448]);

  (*(v64 + 8))(v44, v65);
  (*(v52 + 8))(v16, v51);
  outlined destroy of TimelineBuilder.BindPathWrapper(v27);
  return v58;
}

uint64_t default argument 6 of static AnimationResource.makeActionAnimation<A>(for:duration:name:bindTarget:blendLayer:repeatMode:fillMode:trimStart:trimEnd:trimDuration:offset:delay:speed:)()
{
  type metadata accessor for AnimationFillMode();
  lazy protocol witness table accessor for type AnimationFillMode and conformance AnimationFillMode(&lazy protocol witness table cache variable for type AnimationFillMode and conformance AnimationFillMode, MEMORY[0x277CDB3E8]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay17RealityFoundation17AnimationFillModeVGMd, &_sSay17RealityFoundation17AnimationFillModeVGMR);
  lazy protocol witness table accessor for type [AnimationFillMode] and conformance [A](&lazy protocol witness table cache variable for type [AnimationFillMode] and conformance [A], &_sSay17RealityFoundation17AnimationFillModeVGMd, &_sSay17RealityFoundation17AnimationFillModeVGMR);
  return dispatch thunk of SetAlgebra.init<A>(_:)();
}

uint64_t TimelineBuilder.createAudioAction(for:inputs:)(uint64_t a1, uint64_t a2)
{
  v51 = a2;
  v3 = type metadata accessor for PlayAudioAction();
  v50 = *(v3 - 8);
  v4 = *(v50 + 64);
  MEMORY[0x28223BE20](v3);
  v6 = &v44[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v7 = type metadata accessor for ActionEntityResolution();
  v48 = *(v7 - 8);
  v49 = v7;
  v8 = *(v48 + 64);
  MEMORY[0x28223BE20](v7);
  v10 = &v44[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v11);
  v13 = &v44[-v12];
  v14 = type metadata accessor for TimelineBuilder.BindPathWrapper();
  v15 = *(*(v14 - 8) + 64);
  MEMORY[0x28223BE20](v14 - 8);
  v17 = &v44[-((v16 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v18);
  v20 = &v44[-v19];
  if (String.count.getter() < 1)
  {
    v21 = RIOPxrTfTokenEmpty();
  }

  else
  {
    v21 = RIOPxrTfTokenCreateWithCString();
  }

  v22 = v21;
  v23 = _s9RealityIO4PrimC14attributeValue2of4typexSgAA16ToolsFoundationsO5TokenV_xmtAA012UsdAttributeE0RzlFSS_Tt1B5();
  v25 = v24;

  if (!v25)
  {
    return 0;
  }

  v26 = String.count.getter();
  v46 = v23;
  v47 = v3;
  if (v26 < 1)
  {
    v27 = RIOPxrTfTokenEmpty();
  }

  else
  {
    v27 = RIOPxrTfTokenCreateWithCString();
  }

  v29 = v27;
  _s9RealityIO4PrimC14attributeValue2of4typexSgAA16ToolsFoundationsO5TokenV_xmtAA012UsdAttributeE0RzlFSd_Tt1B5();

  if (String.count.getter() < 1)
  {
    v30 = RIOPxrTfTokenEmpty();
  }

  else
  {
    v30 = RIOPxrTfTokenCreateWithCString();
  }

  v31 = v30;
  v32 = _s9RealityIO4PrimC14attributeValue2of4typexSgAA16ToolsFoundationsO5TokenV_xmtAA012UsdAttributeE0RzlFSb_Tt1B5();

  v45 = v32 == 2;
  if (one-time initialization token for targetPathAttributeName != -1)
  {
    swift_once();
  }

  v33 = *(a1 + 16);
  v34 = static ToolsFoundations.Token.targetPathAttributeName;
  if (!RIOPxrUsdPrimHasRelationship())
  {

    v52 = 0;
    lazy protocol witness table accessor for type Object.Error and conformance Object.Error();
    swift_willThrowTypedImpl();
    outlined consume of Object.Error(v52);
LABEL_19:
    v38 = 0;
    goto LABEL_20;
  }

  v35 = RIOPxrUsdPrimCopyRelationship();

  type metadata accessor for Relationship();
  v36 = swift_allocObject();
  v36[2] = v35;
  v37 = Relationship.targets.getter();
  outlined consume of Result<AnyAttribute, Object.Error>(v36, 0);
  if (!*(v37 + 16))
  {

    goto LABEL_19;
  }

  v38 = *(v37 + 32);

LABEL_20:
  v52 = v38;
  TimelineBuilder.createBindPath(from:inputs:)(&v52, v51, v20);
  LODWORD(v51) = v45 | v32;
  outlined init with copy of TimelineBuilder.BindPathWrapper(v20, v17);
  v39 = type metadata accessor for BindTarget.EntityPath();
  v40 = *(v39 - 8);
  if ((*(v40 + 48))(v17, 1, v39) == 1)
  {
    static ActionEntityResolution.sourceEntity.getter();
    v42 = v48;
    v41 = v49;
  }

  else
  {
    (*(v40 + 32))(v13, v17, v39);
    v42 = v48;
    v41 = v49;
    (*(v48 + 104))(v13, *MEMORY[0x277CDB480], v49);
  }

  (*(v42 + 16))(v10, v13, v41);
  PlayAudioAction.init(targetEntity:audioResourceName:gain:useControlledPlayback:)();
  v43 = specialized TimelineBuilder.handleLooping(action:for:)(v6, a1, MEMORY[0x277CDB390], MEMORY[0x277CDB388]);

  (*(v50 + 8))(v6, v47);
  (*(v42 + 8))(v13, v41);
  outlined destroy of TimelineBuilder.BindPathWrapper(v20);
  return v43;
}

uint64_t TimelineBuilder.createEmphasizeAction(for:inputs:)(uint64_t a1, uint64_t a2)
{
  v103 = a2;
  v117 = a1;
  v2 = type metadata accessor for AnimationRepeatMode();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v99 = &v98 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v101 = type metadata accessor for AnimationFillMode();
  v100 = *(v101 - 8);
  v6 = *(v100 + 64);
  MEMORY[0x28223BE20](v101);
  v98 = &v98 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s17RealityFoundation10BindTargetOSgMd, &_s17RealityFoundation10BindTargetOSgMR);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v105 = &v98 - v10;
  v11 = type metadata accessor for BindTarget();
  v12 = *(v11 - 8);
  v13 = *(v12 + 8);
  MEMORY[0x28223BE20](v11);
  v104 = &v98 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = type metadata accessor for EmphasizeAction();
  v112 = *(v15 - 8);
  v113 = v15;
  v16 = *(v112 + 64);
  MEMORY[0x28223BE20](v15);
  v18 = &v98 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = type metadata accessor for EmphasizeAction.EmphasisAnimationStyle();
  v20 = *(v19 - 8);
  v21 = *(v20 + 64);
  MEMORY[0x28223BE20](v19);
  v109 = &v98 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v23);
  v116 = &v98 - v24;
  v25 = type metadata accessor for EmphasizeAction.EmphasisMotionType();
  v119 = *(v25 - 8);
  v26 = *(v119 + 64);
  MEMORY[0x28223BE20](v25);
  v28 = &v98 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v29);
  v118 = &v98 - v30;
  v31 = String.count.getter();
  v102 = v2;
  if (v31 < 1)
  {
    v32 = RIOPxrTfTokenEmpty();
  }

  else
  {
    v32 = RIOPxrTfTokenCreateWithCString();
  }

  v33 = v32;
  v111 = v3;
  v34 = *(v117 + 16);
  HasAttribute = RIOPxrUsdPrimHasAttribute();
  v106 = v11;
  if (!HasAttribute)
  {
    v36 = v33;
LABEL_12:

    v110 = 0;
LABEL_13:
    v47 = MEMORY[0x277CDB328];
    goto LABEL_14;
  }

  v36 = RIOPxrUsdPrimCopyAttribute();
  v37 = RIOPxrUsdAttributeCopyValue();
  if (!v37)
  {

    goto LABEL_12;
  }

  v107 = v18;
  v38 = v37;
  v39 = RIOPxrVtValueCopyToken();

  if (!v39)
  {
    v110 = 0;
    v18 = v107;
    goto LABEL_13;
  }

  v40 = v12;
  v41 = v39;
  v42 = RIOPxrTfTokenCopyString();
  v43 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v45 = v44;
  v110 = v41;

  v46 = v43;
  v18 = v107;
  if (v43 == 7368560 && v45 == 0xE300000000000000)
  {

    v47 = MEMORY[0x277CDB328];
    v12 = v40;
    goto LABEL_14;
  }

  v12 = v40;
  if (_stringCompareWithSmolCheck(_:_:expecting:)())
  {

    goto LABEL_13;
  }

  if (v46 == 0x6B6E696C62 && v45 == 0xE500000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    v47 = MEMORY[0x277CDB340];
  }

  else if (v46 == 0x65636E756F62 && v45 == 0xE600000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    v47 = MEMORY[0x277CDB358];
  }

  else if (v46 == 1885957222 && v45 == 0xE400000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    v47 = MEMORY[0x277CDB330];
  }

  else if (v46 == 0x74616F6C66 && v45 == 0xE500000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    v47 = MEMORY[0x277CDB348];
  }

  else if (v46 == 0x656C6767696ALL && v45 == 0xE600000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    v47 = MEMORY[0x277CDB360];
  }

  else if (v46 == 0x65736C7570 && v45 == 0xE500000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    v47 = MEMORY[0x277CDB350];
    v18 = v107;
  }

  else
  {
    if (v46 == 1852403827 && v45 == 0xE400000000000000)
    {
    }

    else
    {
      v97 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if ((v97 & 1) == 0)
      {
        v18 = v107;
        goto LABEL_13;
      }
    }

    v47 = MEMORY[0x277CDB338];
    v18 = v107;
  }

LABEL_14:
  (*(v119 + 104))(v118, *v47, v25);
  if (String.count.getter() < 1)
  {
    v48 = RIOPxrTfTokenEmpty();
  }

  else
  {
    v48 = RIOPxrTfTokenCreateWithCString();
  }

  v49 = v48;
  v50 = RIOPxrUsdPrimHasAttribute();
  v114 = v25;
  v115 = v19;
  if (!v50)
  {
    v51 = v49;
LABEL_25:

    v108 = 0;
LABEL_26:
    v63 = v111;
LABEL_27:
    v64 = v12;
    v62 = MEMORY[0x277CDB370];
    goto LABEL_28;
  }

  v51 = RIOPxrUsdPrimCopyAttribute();
  v52 = RIOPxrUsdAttributeCopyValue();
  if (!v52)
  {

    goto LABEL_25;
  }

  v107 = v12;
  v53 = v20;
  v54 = v18;
  v55 = v52;
  v56 = RIOPxrVtValueCopyToken();

  if (!v56)
  {
    v108 = 0;
    v18 = v54;
    v20 = v53;
    v25 = v114;
    v19 = v115;
    v63 = v111;
    v12 = v107;
    goto LABEL_27;
  }

  v57 = v56;
  v58 = RIOPxrTfTokenCopyString();
  v59 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v61 = v60;
  v108 = v57;

  if (v59 == 0x6369736162 && v61 == 0xE500000000000000)
  {

    v62 = MEMORY[0x277CDB370];
    v19 = v115;
    v18 = v54;
LABEL_48:
    v20 = v53;
LABEL_49:
    v25 = v114;
    v63 = v111;
    v64 = v107;
    goto LABEL_28;
  }

  v18 = v54;
  if (_stringCompareWithSmolCheck(_:_:expecting:)())
  {

    v62 = MEMORY[0x277CDB370];
    v19 = v115;
    goto LABEL_48;
  }

  v20 = v53;
  if (v59 == 0x6C756679616C70 && v61 == 0xE700000000000000)
  {

    v62 = MEMORY[0x277CDB378];
    v19 = v115;
    goto LABEL_49;
  }

  v95 = _stringCompareWithSmolCheck(_:_:expecting:)();
  v25 = v114;
  v19 = v115;
  v12 = v107;
  if (v95)
  {
    v64 = v107;

    v62 = MEMORY[0x277CDB378];
    v63 = v111;
    goto LABEL_28;
  }

  if (v59 != 1684826487 || v61 != 0xE400000000000000)
  {
    v96 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v96)
    {
      v64 = v12;
      goto LABEL_68;
    }

    goto LABEL_26;
  }

  v64 = v107;

LABEL_68:
  v62 = MEMORY[0x277CDB368];
  v63 = v111;
LABEL_28:
  v65 = v116;
  (*(v20 + 104))(v116, *v62, v19);
  (*(v119 + 16))(v28, v118, v25);
  (*(v20 + 16))(v109, v65, v19);
  EmphasizeAction.init(motionType:style:isAdditive:)();
  specialized TimelineBuilder.startTimeAndDuration(for:)();
  if (String.count.getter() < 1)
  {
    v66 = RIOPxrTfTokenEmpty();
  }

  else
  {
    v66 = RIOPxrTfTokenCreateWithCString();
  }

  v67 = v66;
  _s9RealityIO4PrimC14attributeValue2of4typexSgAA16ToolsFoundationsO5TokenV_xmtAA012UsdAttributeE0RzlFs5Int32V_Tt1B5();

  if (one-time initialization token for targetPathAttributeName != -1)
  {
    swift_once();
  }

  v68 = static ToolsFoundations.Token.targetPathAttributeName;
  if (RIOPxrUsdPrimHasRelationship())
  {
    v117 = v20;
    v107 = v18;
    v69 = v64;
    v70 = RIOPxrUsdPrimCopyRelationship();

    type metadata accessor for Relationship();
    v71 = swift_allocObject();
    v71[2] = v70;
    v72 = Relationship.targets.getter();
    outlined consume of Result<AnyAttribute, Object.Error>(v71, 0);
    if (*(v72 + 16))
    {
      v73 = *(v72 + 32);
      v74 = v73;
    }

    else
    {
      v73 = 0;
    }

    v79 = v105;
    v80 = v106;

    v81 = v104;
    closure #1 in TimelineBuilder.createEmphasizeAction(for:inputs:)(v73, v103, v104);
    v111 = type metadata accessor for AnimationResource();
    (*(v69 + 2))(v79, v81, v80);
    (*(v69 + 7))(v79, 0, 1, v80);
    v82 = v98;
    static AnimationFillMode.forwards.getter();
    v83 = v99;
    v84 = v102;
    (*(v63 + 104))(v99, *MEMORY[0x277CDB418], v102);
    v92 = v82;
    v93 = static AnimationResource.makeActionAnimation<A>(for:duration:name:bindTarget:blendLayer:repeatMode:fillMode:trimStart:trimEnd:trimDuration:offset:delay:speed:)();

    (*(v63 + 8))(v83, v84);
    (*(v100 + 8))(v92, v101);
    outlined destroy of Any?(v105, &_s17RealityFoundation10BindTargetOSgMd, &_s17RealityFoundation10BindTargetOSgMR);
    (*(v69 + 1))(v104, v106);
    (*(v112 + 8))(v107, v113);
    (*(v117 + 8))(v116, v115);
    (*(v119 + 8))(v118, v114);
    return v93;
  }

  else
  {

    v120 = 0;
    lazy protocol witness table accessor for type Object.Error and conformance Object.Error();
    swift_willThrowTypedImpl();
    v75 = v120;
    v76 = swift_allocError();
    *v77 = v75;
    v78 = v114;
    v85 = v18;
    static os_log_type_t.error.getter();
    v86 = v113;
    if (one-time initialization token for timeline != -1)
    {
      swift_once();
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys7CVarArg_pGMd, &_ss23_ContiguousArrayStorageCys7CVarArg_pGMR);
    v87 = swift_allocObject();
    *(v87 + 16) = xmmword_2619891C0;
    v120 = v76;
    v88 = v76;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
    v89 = String.init<A>(describing:)();
    v91 = v90;
    *(v87 + 56) = MEMORY[0x277D837D0];
    *(v87 + 64) = lazy protocol witness table accessor for type String and conformance String();
    *(v87 + 32) = v89;
    *(v87 + 40) = v91;
    os_log(_:dso:log:_:_:)();

    (*(v112 + 8))(v85, v86);
    (*(v20 + 8))(v116, v115);
    (*(v119 + 8))(v118, v78);
    return 0;
  }
}

void closure #1 in TimelineBuilder.createEmphasizeAction(for:inputs:)(void *a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X8>)
{
  v7 = type metadata accessor for BindTarget.EntityPath();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  v11 = &v21 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for TimelineBuilder.BindPathWrapper();
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x28223BE20](v12 - 8);
  v15 = &v21 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v18 = &v21 - v17;
  v22 = a1;
  TimelineBuilder.createBindPath(from:inputs:)(&v22, a2, &v21 - v17);
  if (!v3)
  {
    outlined init with copy of TimelineBuilder.BindPathWrapper(v18, v15);
    if ((*(v8 + 48))(v15, 1, v7) == 1)
    {
      outlined destroy of TimelineBuilder.BindPathWrapper(v18);
      v19 = *MEMORY[0x277CDB230];
      v20 = type metadata accessor for BindTarget();
      (*(*(v20 - 8) + 104))(a3, v19, v20);
    }

    else
    {
      (*(v8 + 32))(v11, v15, v7);
      BindTarget.EntityPath.transform.getter();
      (*(v8 + 8))(v11, v7);
      outlined destroy of TimelineBuilder.BindPathWrapper(v18);
    }
  }
}

uint64_t TimelineBuilder.createImpulseAction(for:inputs:)(uint64_t a1, uint64_t a2)
{
  v97 = a2;
  v3 = type metadata accessor for AnimationFillMode();
  v88 = *(v3 - 8);
  v4 = *(v88 + 64);
  MEMORY[0x28223BE20](v3);
  v86 = &v80 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v96 = type metadata accessor for AnimationRepeatMode();
  v87 = *(v96 - 8);
  v6 = *(v87 + 64);
  MEMORY[0x28223BE20](v96);
  v84 = &v80 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s17RealityFoundation10BindTargetOSgMd, &_s17RealityFoundation10BindTargetOSgMR);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v82 = &v80 - v10;
  v85 = type metadata accessor for ImpulseAction();
  v83 = *(v85 - 8);
  v11 = *(v83 + 64);
  MEMORY[0x28223BE20](v85);
  v81 = &v80 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for BindTarget.EntityPath();
  v90 = *(v13 - 8);
  v14 = *(v90 + 64);
  MEMORY[0x28223BE20](v13);
  v16 = &v80 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = type metadata accessor for BindTarget();
  v94 = *(v17 - 8);
  v95 = v17;
  v18 = *(v94 + 64);
  MEMORY[0x28223BE20](v17);
  v91 = &v80 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = type metadata accessor for ActionEntityResolution();
  v92 = *(v20 - 8);
  v93 = v20;
  v21 = *(v92 + 64);
  MEMORY[0x28223BE20](v20);
  v23 = &v80 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v24);
  v98 = &v80 - v25;
  v26 = type metadata accessor for TimelineBuilder.BindPathWrapper();
  v27 = *(*(v26 - 8) + 64);
  MEMORY[0x28223BE20](v26 - 8);
  v29 = &v80 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v30);
  v32 = &v80 - v31;
  MEMORY[0x28223BE20](v33);
  v99 = &v80 - v34;
  specialized TimelineBuilder.startTimeAndDuration(for:)();
  v35 = String.count.getter();
  v89 = v3;
  if (v35 < 1)
  {
    v36 = RIOPxrTfTokenEmpty();
  }

  else
  {
    v36 = RIOPxrTfTokenCreateWithCString();
  }

  v37 = v36;
  v38 = _s9RealityIO4PrimC14attributeValue2of4typexSgAA16ToolsFoundationsO5TokenV_xmtAA012UsdAttributeE0RzlFs5SIMD3VySfG_Tt1B5();
  v40 = v39;
  v42 = v41;

  if (v42)
  {
    _ss4SIMDPsEyxqd__cSTRd__7ElementQyd__6ScalarRtzlufCs5SIMD3VySfG_SaySfGTt1g5Tf4g_n(&outlined read-only object #0 of TimelineBuilder.createImpulseAction(for:inputs:));
  }

  else
  {
    *&v43 = v38;
    *(&v43 + 1) = v40;
  }

  v80 = v43;
  if (one-time initialization token for targetPathAttributeName != -1)
  {
    swift_once();
  }

  v44 = *(a1 + 16);
  v45 = static ToolsFoundations.Token.targetPathAttributeName;
  if (RIOPxrUsdPrimHasRelationship())
  {
    v46 = RIOPxrUsdPrimCopyRelationship();

    type metadata accessor for Relationship();
    v47 = swift_allocObject();
    v47[2] = v46;
    v48 = Relationship.targets.getter();
    outlined consume of Result<AnyAttribute, Object.Error>(v47, 0);
    if (*(v48 + 16))
    {
      v49 = *(v48 + 32);
      v50 = v49;
    }

    else
    {
      v49 = 0;
    }

    v54 = v99;

    v100 = v49;
    TimelineBuilder.createBindPath(from:inputs:)(&v100, v97, v54);
    outlined init with copy of TimelineBuilder.BindPathWrapper(v54, v32);
    v55 = v90;
    v56 = *(v90 + 48);
    if (v56(v32, 1, v13) == 1)
    {
      static ActionEntityResolution.sourceEntity.getter();
      v58 = v92;
      v57 = v93;
    }

    else
    {
      v59 = *(v55 + 32);
      v60 = v98;
      v59(v98, v32, v13);
      v58 = v92;
      v61 = v60;
      v57 = v93;
      (*(v92 + 104))(v61, *MEMORY[0x277CDB480], v93);
    }

    outlined init with copy of TimelineBuilder.BindPathWrapper(v99, v29);
    if (v56(v29, 1, v13) == 1)
    {
      v63 = v94;
      v62 = v95;
      v64 = v91;
      (*(v94 + 104))(v91, *MEMORY[0x277CDB230], v95);
    }

    else
    {
      v65 = v90;
      (*(v90 + 32))(v16, v29, v13);
      v64 = v91;
      BindTarget.EntityPath.transform.getter();
      (*(v65 + 8))(v16, v13);
      v63 = v94;
      v62 = v95;
    }

    (*(v58 + 16))(v23, v98, v57);
    v66 = v81;
    ImpulseAction.init(targetEntity:linearImpulse:)();
    v97 = type metadata accessor for AnimationResource();
    v67 = v82;
    (*(v63 + 16))(v82, v64, v62);
    (*(v63 + 56))(v67, 0, 1, v62);
    v68 = v87;
    v69 = v84;
    (*(v87 + 104))(v84, *MEMORY[0x277CDB418], v96);
    v100 = MEMORY[0x277D84F90];
    lazy protocol witness table accessor for type AnimationFillMode and conformance AnimationFillMode(&lazy protocol witness table cache variable for type AnimationFillMode and conformance AnimationFillMode, MEMORY[0x277CDB3E8]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay17RealityFoundation17AnimationFillModeVGMd, &_sSay17RealityFoundation17AnimationFillModeVGMR);
    lazy protocol witness table accessor for type [AnimationFillMode] and conformance [A](&lazy protocol witness table cache variable for type [AnimationFillMode] and conformance [A], &_sSay17RealityFoundation17AnimationFillModeVGMd, &_sSay17RealityFoundation17AnimationFillModeVGMR);
    v70 = v86;
    v71 = v89;
    dispatch thunk of SetAlgebra.init<A>(_:)();
    v77 = v85;
    v78 = static AnimationResource.makeActionAnimation<A>(for:duration:name:bindTarget:blendLayer:repeatMode:fillMode:trimStart:trimEnd:trimDuration:offset:delay:speed:)();

    (*(v88 + 8))(v70, v71);
    (*(v68 + 8))(v69, v96);
    outlined destroy of Any?(v67, &_s17RealityFoundation10BindTargetOSgMd, &_s17RealityFoundation10BindTargetOSgMR);
    (*(v83 + 8))(v66, v77);
    (*(v94 + 8))(v91, v95);
    (*(v92 + 8))(v98, v93);
    outlined destroy of TimelineBuilder.BindPathWrapper(v99);
    return v78;
  }

  else
  {

    v100 = 0;
    lazy protocol witness table accessor for type Object.Error and conformance Object.Error();
    swift_willThrowTypedImpl();
    v51 = v100;
    v52 = swift_allocError();
    *v53 = v51;
    static os_log_type_t.error.getter();
    if (one-time initialization token for timeline != -1)
    {
      swift_once();
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys7CVarArg_pGMd, &_ss23_ContiguousArrayStorageCys7CVarArg_pGMR);
    v72 = swift_allocObject();
    *(v72 + 16) = xmmword_2619891C0;
    v100 = v52;
    v73 = v52;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
    v74 = String.init<A>(describing:)();
    v76 = v75;
    *(v72 + 56) = MEMORY[0x277D837D0];
    *(v72 + 64) = lazy protocol witness table accessor for type String and conformance String();
    *(v72 + 32) = v74;
    *(v72 + 40) = v76;
    os_log(_:dso:log:_:_:)();

    return 0;
  }
}

uint64_t TimelineBuilder.createLookAtTransition(for:attributeName:)@<X0>(uint64_t *a1@<X1>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10RealityKit23AnimationTimingFunctionVSgMd, &_s10RealityKit23AnimationTimingFunctionVSgMR);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v32 = &v32 - v6;
  v7 = type metadata accessor for AnimationTimingFunction();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  v11 = &v32 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v33 = &v32 - v13;
  v14 = *a1;
  v15 = Prim.children.getter();
  v16 = v15;
  v36 = v11;
  v37 = a2;
  v34 = v8;
  v35 = v7;
  if (v15 >> 62)
  {
LABEL_22:
    v17 = __CocoaSet.count.getter();
    if (v17)
    {
      goto LABEL_3;
    }

LABEL_23:

    static AnimationTimingFunction.default.getter();
    return BillboardAction.Transition.init(duration:timingFunction:)();
  }

  v17 = *((v15 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v17)
  {
    goto LABEL_23;
  }

LABEL_3:
  v18 = 0;
  while ((v16 & 0xC000000000000001) != 0)
  {
    v19 = MEMORY[0x26670F670](v18, v16);
    v20 = v18 + 1;
    if (__OFADD__(v18, 1))
    {
      goto LABEL_12;
    }

LABEL_7:
    v21 = *(v19 + 16);
    v22 = RIOPxrUsdObjectCopyName();
    type metadata accessor for RIOPxrTfTokenRef(0);
    lazy protocol witness table accessor for type AnimationFillMode and conformance AnimationFillMode(&lazy protocol witness table cache variable for type RIOPxrTfTokenRef and conformance RIOPxrTfTokenRef, type metadata accessor for RIOPxrTfTokenRef);
    v23 = static _CFObject.== infix(_:_:)();

    if (v23)
    {
      goto LABEL_13;
    }

    ++v18;
    if (v20 == v17)
    {
      goto LABEL_23;
    }
  }

  if (v18 >= *((v16 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    __break(1u);
    goto LABEL_22;
  }

  v19 = *(v16 + 8 * v18 + 32);

  v20 = v18 + 1;
  if (!__OFADD__(v18, 1))
  {
    goto LABEL_7;
  }

LABEL_12:
  __break(1u);
LABEL_13:

  if (String.count.getter() < 1)
  {
    v24 = RIOPxrTfTokenEmpty();
  }

  else
  {
    v24 = RIOPxrTfTokenCreateWithCString();
  }

  v25 = v24;
  v27 = v34;
  v26 = v35;
  v28 = v32;
  _s9RealityIO4PrimC14attributeValue2of4typexSgAA16ToolsFoundationsO5TokenV_xmtAA012UsdAttributeE0RzlFSd_Tt1B5();

  TimelineBuilder.timingFunction(for:)(v19, v28);
  v29 = *(v27 + 48);
  if (v29(v28, 1, v26) == 1)
  {
    v30 = v33;
    static AnimationTimingFunction.default.getter();
    if (v29(v28, 1, v26) != 1)
    {
      outlined destroy of Any?(v28, &_s10RealityKit23AnimationTimingFunctionVSgMd, &_s10RealityKit23AnimationTimingFunctionVSgMR);
    }
  }

  else
  {
    v30 = v33;
    (*(v27 + 32))(v33, v28, v26);
  }

  (*(v27 + 16))(v36, v30, v26);
  BillboardAction.Transition.init(duration:timingFunction:)();

  return (*(v27 + 8))(v30, v26);
}

uint64_t TimelineBuilder.createLookAtAction(for:inputs:)(uint64_t a1, uint64_t a2)
{
  v87 = a2;
  v79 = type metadata accessor for AnimationRepeatMode();
  v86 = *(v79 - 8);
  v3 = *(v86 + 64);
  MEMORY[0x28223BE20](v79);
  v85 = &v72 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for AnimationFillMode();
  v77 = *(v5 - 8);
  v78 = v5;
  v6 = *(v77 + 64);
  MEMORY[0x28223BE20](v5);
  v84 = &v72 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s17RealityFoundation10BindTargetOSgMd, &_s17RealityFoundation10BindTargetOSgMR);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v83 = &v72 - v10;
  v76 = type metadata accessor for BindTarget.EntityPath();
  v11 = *(v76 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v76);
  v75 = &v72 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for BindTarget();
  v81 = *(v14 - 8);
  v82 = v14;
  v15 = *(v81 + 64);
  MEMORY[0x28223BE20](v14);
  v80 = &v72 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = type metadata accessor for TimelineBuilder.BindPathWrapper();
  v18 = *(*(v17 - 8) + 64);
  MEMORY[0x28223BE20](v17 - 8);
  v20 = &v72 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v21);
  v90 = &v72 - v22;
  v23 = type metadata accessor for BillboardAction();
  v88 = *(v23 - 8);
  v89 = v23;
  v24 = *(v88 + 64);
  MEMORY[0x28223BE20](v23);
  v91 = &v72 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = type metadata accessor for BillboardAction.Transition();
  v27 = *(v26 - 8);
  v28 = v27[8];
  MEMORY[0x28223BE20](v26);
  v30 = &v72 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v31);
  v33 = &v72 - v32;
  MEMORY[0x28223BE20](v34);
  v36 = &v72 - v35;
  MEMORY[0x28223BE20](v37);
  v92 = &v72 - v38;
  if (String.count.getter() < 1)
  {
    v39 = RIOPxrTfTokenEmpty();
  }

  else
  {
    v39 = RIOPxrTfTokenCreateWithCString();
  }

  v40 = v39;
  v93[0] = v39;
  TimelineBuilder.createLookAtTransition(for:attributeName:)(v93, v92);

  if (String.count.getter() < 1)
  {
    v41 = RIOPxrTfTokenEmpty();
  }

  else
  {
    v41 = RIOPxrTfTokenCreateWithCString();
  }

  v42 = v41;
  v93[0] = v41;
  TimelineBuilder.createLookAtTransition(for:attributeName:)(v93, v36);

  v43 = v27[2];
  v43(v33, v92, v26);
  v43(v30, v36, v26);
  BillboardAction.init(transitionIn:transitionOut:)();
  specialized TimelineBuilder.startTimeAndDuration(for:)();
  if (String.count.getter() < 1)
  {
    v44 = RIOPxrTfTokenEmpty();
  }

  else
  {
    v44 = RIOPxrTfTokenCreateWithCString();
  }

  v45 = v44;
  v46 = _s9RealityIO4PrimC14attributeValue2of4typexSgAA16ToolsFoundationsO5TokenV_xmtAA012UsdAttributeE0RzlFs5Int32V_Tt1B5();

  if ((v46 & 0x100000000) != 0)
  {
    v47 = 0;
  }

  else
  {
    v47 = v46;
  }

  if (one-time initialization token for targetPathAttributeName != -1)
  {
    swift_once();
  }

  v48 = *(a1 + 16);
  v49 = static ToolsFoundations.Token.targetPathAttributeName;
  if (RIOPxrUsdPrimHasRelationship())
  {
    v50 = RIOPxrUsdPrimCopyRelationship();

    type metadata accessor for Relationship();
    v51 = swift_allocObject();
    v51[2] = v50;
    v52 = Relationship.targets.getter();
    outlined consume of Result<AnyAttribute, Object.Error>(v51, 0);
    if (*(v52 + 16))
    {
      v53 = *(v52 + 32);

      goto LABEL_21;
    }
  }

  else
  {

    v93[0] = 0;
    lazy protocol witness table accessor for type Object.Error and conformance Object.Error();
    swift_willThrowTypedImpl();
    outlined consume of Object.Error(v93[0]);
  }

  v53 = 0;
LABEL_21:
  v54 = v11;
  v93[0] = v53;
  v55 = v90;
  TimelineBuilder.createBindPath(from:inputs:)(v93, v87, v90);
  LODWORD(v87) = v47;
  outlined init with copy of TimelineBuilder.BindPathWrapper(v55, v20);
  v56 = *(v11 + 48);
  v57 = v76;
  v58 = v56(v20, 1, v76);
  v74 = v36;
  v73 = v26;
  if (v58 == 1)
  {
    v60 = v80;
    v59 = v81;
    v61 = v82;
    (*(v81 + 104))(v80, *MEMORY[0x277CDB220], v82);
  }

  else
  {
    v62 = v75;
    (*(v54 + 32))(v75, v20, v57);
    v60 = v80;
    BindTarget.EntityPath.billboardBlendFactor.getter();
    (*(v54 + 8))(v62, v57);
    v59 = v81;
    v61 = v82;
  }

  type metadata accessor for AnimationResource();
  v63 = v83;
  (*(v59 + 16))(v83, v60, v61);
  (*(v59 + 56))(v63, 0, 1, v61);
  static AnimationFillMode.forwards.getter();
  v64 = v79;
  (*(v86 + 104))(v85, *MEMORY[0x277CDB418], v79);
  v65 = v89;
  v66 = static AnimationResource.makeActionAnimation<A>(for:duration:name:bindTarget:blendLayer:repeatMode:fillMode:trimStart:trimEnd:trimDuration:offset:delay:speed:)();

  v67 = v77;
  v68 = v74;
  v69 = v73;
  (*(v86 + 8))(v85, v64);
  (*(v67 + 8))(v84, v78);
  outlined destroy of Any?(v83, &_s17RealityFoundation10BindTargetOSgMd, &_s17RealityFoundation10BindTargetOSgMR);
  (*(v81 + 8))(v80, v82);
  outlined destroy of TimelineBuilder.BindPathWrapper(v90);
  (*(v88 + 8))(v91, v65);
  v70 = v27[1];
  v70(v68, v69);
  v70(v92, v69);
  return v66;
}

uint64_t TimelineBuilder.createOrbitAction(for:inputs:)(uint64_t a1, void (**a2)(void, void))
{
  v146 = a2;
  v3 = type metadata accessor for AnimationRepeatMode();
  v127 = *(v3 - 8);
  v4 = *(v127 + 64);
  MEMORY[0x28223BE20](v3);
  v6 = &v119 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v130 = type metadata accessor for AnimationFillMode();
  v126 = *(v130 - 8);
  v7 = *(v126 + 64);
  MEMORY[0x28223BE20](v130);
  v9 = &v119 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s17RealityFoundation10BindTargetOSgMd, &_s17RealityFoundation10BindTargetOSgMR);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10 - 8);
  v133 = &v119 - v12;
  v13 = type metadata accessor for BindTarget.EntityPath();
  v139 = *(v13 - 8);
  v140 = v13;
  v14 = *(v139 + 64);
  MEMORY[0x28223BE20](v13);
  v124 = &v119 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v132 = type metadata accessor for BindTarget();
  v16 = *(v132 - 8);
  v17 = *(v16 + 64);
  MEMORY[0x28223BE20](v132);
  v131 = &v119 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = type metadata accessor for OrbitEntityAction();
  v138 = *(v19 - 8);
  v20 = *(v138 + 64);
  MEMORY[0x28223BE20](v19);
  v22 = &v119 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v143 = type metadata accessor for ActionEntityResolution();
  v145 = *(v143 - 8);
  v23 = *(v145 + 64);
  MEMORY[0x28223BE20](v143);
  v25 = &v119 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v26);
  v144 = &v119 - v27;
  v28 = type metadata accessor for TimelineBuilder.BindPathWrapper();
  v29 = *(*(v28 - 8) + 64);
  MEMORY[0x28223BE20](v28 - 8);
  v125 = &v119 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v31);
  v134 = &v119 - v32;
  MEMORY[0x28223BE20](v33);
  v35 = &v119 - v34;
  MEMORY[0x28223BE20](v36);
  v147 = &v119 - v37;
  v38 = String.count.getter();
  v141 = v19;
  if (v38 < 1)
  {
    v39 = RIOPxrTfTokenEmpty();
  }

  else
  {
    v39 = RIOPxrTfTokenCreateWithCString();
  }

  v40 = v39;
  _s9RealityIO4PrimC14attributeValue2of4typexSgAA16ToolsFoundationsO5TokenV_xmtAA012UsdAttributeE0RzlFSf_Tt1B5();

  v41 = String.count.getter();
  v129 = v6;
  v135 = v16;
  if (v41 < 1)
  {
    v42 = RIOPxrTfTokenEmpty();
  }

  else
  {
    v42 = RIOPxrTfTokenCreateWithCString();
  }

  v43 = v42;
  v44 = _s9RealityIO4PrimC14attributeValue2of4typexSgAA16ToolsFoundationsO5TokenV_xmtAA012UsdAttributeE0RzlFs5SIMD3VySfG_Tt1B5();
  v46 = v45;
  v48 = v47;

  if (v48)
  {
    _ss4SIMDPsEyxqd__cSTRd__7ElementQyd__6ScalarRtzlufCs5SIMD3VySfG_SaySfGTt1g5Tf4g_n(&outlined read-only object #0 of TimelineBuilder.createOrbitAction(for:inputs:));
  }

  else
  {
    *&v49 = v44;
    *(&v49 + 1) = v46;
  }

  v137 = v49;
  if (String.count.getter() < 1)
  {
    v50 = RIOPxrTfTokenEmpty();
  }

  else
  {
    v50 = RIOPxrTfTokenCreateWithCString();
  }

  v51 = v50;
  v136 = _s9RealityIO4PrimC14attributeValue2of4typexSgAA16ToolsFoundationsO5TokenV_xmtAA012UsdAttributeE0RzlFSb_Tt1B5();

  if (String.count.getter() < 1)
  {
    v52 = RIOPxrTfTokenEmpty();
  }

  else
  {
    v52 = RIOPxrTfTokenCreateWithCString();
  }

  v53 = v52;
  v128 = v9;
  v142 = v22;
  v54 = *(a1 + 16);
  if (RIOPxrUsdPrimHasAttribute())
  {
    v55 = RIOPxrUsdPrimCopyAttribute();
    v56 = RIOPxrUsdAttributeCopyValue();
    if (v56)
    {
      v57 = v56;
      v58 = RIOPxrVtValueCopyToken();

      if (v58)
      {
        goto LABEL_27;
      }

      goto LABEL_23;
    }
  }

  else
  {
    v55 = v53;
  }

LABEL_23:
  if (String.count.getter() < 1)
  {
    v59 = RIOPxrTfTokenEmpty();
  }

  else
  {
    v59 = RIOPxrTfTokenCreateWithCString();
  }

  v58 = v59;
LABEL_27:
  if (String.count.getter() < 1)
  {
    v60 = RIOPxrTfTokenEmpty();
  }

  else
  {
    v60 = RIOPxrTfTokenCreateWithCString();
  }

  v61 = v60;
  type metadata accessor for RIOPxrTfTokenRef(0);
  lazy protocol witness table accessor for type AnimationFillMode and conformance AnimationFillMode(&lazy protocol witness table cache variable for type RIOPxrTfTokenRef and conformance RIOPxrTfTokenRef, type metadata accessor for RIOPxrTfTokenRef);
  static _CFObject.== infix(_:_:)();

  specialized TimelineBuilder.startTimeAndDuration(for:)();
  if (String.count.getter() < 1)
  {
    v62 = RIOPxrTfTokenEmpty();
  }

  else
  {
    v62 = RIOPxrTfTokenCreateWithCString();
  }

  v63 = v62;
  v64 = _s9RealityIO4PrimC14attributeValue2of4typexSgAA16ToolsFoundationsO5TokenV_xmtAA012UsdAttributeE0RzlFs5Int32V_Tt1B5();

  if ((v64 & 0x100000000) != 0)
  {
    v65 = 0;
  }

  else
  {
    v65 = v64;
  }

  if (one-time initialization token for pivotEntity != -1)
  {
    swift_once();
  }

  v66 = static ToolsFoundations.Token.pivotEntity;
  if (RIOPxrUsdPrimHasRelationship())
  {
    v123 = v65;
    v67 = RIOPxrUsdPrimCopyRelationship();

    type metadata accessor for Relationship();
    v68 = swift_allocObject();
    v68[2] = v67;
    v69 = Relationship.targets.getter();
    outlined consume of Result<AnyAttribute, Object.Error>(v68, 0);
    if (*(v69 + 16))
    {
      v70 = *(v69 + 32);
      v71 = v70;
    }

    else
    {
      v70 = 0;
    }

    v75 = v146;

    v148 = v70;
    v76 = v147;
    TimelineBuilder.createBindPath(from:inputs:)(&v148, v75, v147);
    v122 = v3;
    outlined init with copy of TimelineBuilder.BindPathWrapper(v76, v35);
    v78 = v139;
    v77 = v140;
    v79 = *(v139 + 48);
    v121 = v139 + 48;
    v120 = v79;
    if (v79(v35, 1, v140) == 1)
    {
      v80 = v144;
      static ActionEntityResolution.sourceEntity.getter();
      v81 = v143;
      v82 = v145;
    }

    else
    {
      v83 = *(v78 + 32);
      v80 = v144;
      v83(v144, v35, v77);
      v82 = v145;
      v81 = v143;
      (*(v145 + 104))(v80, *MEMORY[0x277CDB480], v143);
    }

    (*(v82 + 16))(v25, v80, v81);
    v84 = v142;
    OrbitEntityAction.init(pivotEntity:revolutions:orbitalAxis:isOrientedToPath:isAdditive:)();
    if (one-time initialization token for targetPathAttributeName != -1)
    {
      swift_once();
    }

    v85 = static ToolsFoundations.Token.targetPathAttributeName;
    if (RIOPxrUsdPrimHasRelationship())
    {
      v86 = RIOPxrUsdPrimCopyRelationship();

      v87 = swift_allocObject();
      v87[2] = v86;
      v88 = Relationship.targets.getter();
      outlined consume of Result<AnyAttribute, Object.Error>(v87, 0);
      if (*(v88 + 16))
      {
        v89 = *(v88 + 32);
        v90 = v89;
      }

      else
      {
        v89 = 0;
      }

      v93 = v135;

      v148 = v89;
      v94 = v134;
      TimelineBuilder.createBindPath(from:inputs:)(&v148, v146, v134);
      v101 = v125;
      outlined init with copy of TimelineBuilder.BindPathWrapper(v94, v125);
      v102 = v140;
      if (v120(v101, 1, v140) == 1)
      {
        v103 = v131;
        v104 = v132;
        (*(v93 + 104))(v131, *MEMORY[0x277CDB230], v132);
        v105 = v128;
        v106 = v133;
      }

      else
      {
        v107 = v139;
        v108 = v124;
        (*(v139 + 32))(v124, v101, v102);
        v103 = v131;
        BindTarget.EntityPath.transform.getter();
        (*(v107 + 8))(v108, v102);
        v105 = v128;
        v106 = v133;
        v104 = v132;
      }

      v146 = type metadata accessor for AnimationResource();
      (*(v93 + 16))(v106, v103, v104);
      v109 = *(v93 + 56);
      v135 = v93 + 56;
      v109(v106, 0, 1, v104);
      static AnimationFillMode.forwards.getter();
      v110 = v127 + 104;
      v111 = v129;
      (*(v127 + 104))(v129, *MEMORY[0x277CDB418], v122);
      v112 = v105;
      v113 = static AnimationResource.makeActionAnimation<A>(for:duration:name:bindTarget:blendLayer:repeatMode:fillMode:trimStart:trimEnd:trimDuration:offset:delay:speed:)();
      v114 = (v110 - 96);
      v115 = (v126 + 8);
      v116 = (v135 - 48);
      v117 = (v138 + 8);
      v146 = (v145 + 8);
      v118 = v113;

      (*v114)(v111, v122);
      (*v115)(v112, v130);
      outlined destroy of Any?(v133, &_s17RealityFoundation10BindTargetOSgMd, &_s17RealityFoundation10BindTargetOSgMR);
      (*v116)(v131, v132);
      outlined destroy of TimelineBuilder.BindPathWrapper(v134);
      (*v117)(v142, v141);
      (*v146)(v144, v143);
      outlined destroy of TimelineBuilder.BindPathWrapper(v147);
      return v118;
    }

    v148 = 0;
    lazy protocol witness table accessor for type Object.Error and conformance Object.Error();
    swift_willThrowTypedImpl();
    v91 = v148;
    v73 = swift_allocError();
    *v92 = v91;

    (*(v138 + 8))(v84, v141);
    (*(v145 + 8))(v144, v81);
    outlined destroy of TimelineBuilder.BindPathWrapper(v147);
  }

  else
  {

    v148 = 0;
    lazy protocol witness table accessor for type Object.Error and conformance Object.Error();
    swift_willThrowTypedImpl();
    v72 = v148;
    v73 = swift_allocError();
    *v74 = v72;
  }

  static os_log_type_t.error.getter();
  if (one-time initialization token for timeline != -1)
  {
    swift_once();
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys7CVarArg_pGMd, &_ss23_ContiguousArrayStorageCys7CVarArg_pGMR);
  v95 = swift_allocObject();
  *(v95 + 16) = xmmword_2619891C0;
  v148 = v73;
  v96 = v73;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
  v97 = String.init<A>(describing:)();
  v99 = v98;
  *(v95 + 56) = MEMORY[0x277D837D0];
  *(v95 + 64) = lazy protocol witness table accessor for type String and conformance String();
  *(v95 + 32) = v97;
  *(v95 + 40) = v99;
  os_log(_:dso:log:_:_:)();

  return 0;
}

uint64_t TimelineBuilder.createSpinAction(for:inputs:)(uint64_t a1, uint64_t a2)
{
  v99 = a2;
  v3 = type metadata accessor for AnimationRepeatMode();
  v97 = *(v3 - 8);
  v98 = v3;
  v4 = *(v97 + 64);
  MEMORY[0x28223BE20](v3);
  v96 = &v87 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v92 = type metadata accessor for AnimationFillMode();
  v91 = *(v92 - 8);
  v6 = *(v91 + 64);
  MEMORY[0x28223BE20](v92);
  v95 = &v87 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s17RealityFoundation10BindTargetOSgMd, &_s17RealityFoundation10BindTargetOSgMR);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v94 = &v87 - v10;
  v11 = type metadata accessor for BindTarget.EntityPath();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v11);
  v87 = &v87 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = type metadata accessor for BindTarget();
  v104 = *(v15 - 8);
  v16 = *(v104 + 64);
  MEMORY[0x28223BE20](v15);
  v103 = &v87 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = type metadata accessor for TimelineBuilder.BindPathWrapper();
  v19 = *(*(v18 - 8) + 64);
  MEMORY[0x28223BE20](v18 - 8);
  v21 = &v87 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v22);
  v24 = &v87 - v23;
  v102 = type metadata accessor for SpinAction();
  v100 = *(v102 - 8);
  v25 = *(v100 + 64);
  MEMORY[0x28223BE20](v102);
  v106 = &v87 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10RealityKit23AnimationTimingFunctionVSgMd, &_s10RealityKit23AnimationTimingFunctionVSgMR);
  v28 = *(*(v27 - 8) + 64);
  MEMORY[0x28223BE20](v27 - 8);
  v30 = &v87 - v29;
  v31 = type metadata accessor for AnimationTimingFunction();
  v32 = *(v31 - 8);
  v33 = *(v32 + 64);
  MEMORY[0x28223BE20](v31);
  v35 = &v87 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v36);
  v107 = &v87 - v37;
  v38 = String.count.getter();
  v101 = v24;
  v90 = v11;
  v89 = v12;
  v88 = v21;
  if (v38 < 1)
  {
    v39 = RIOPxrTfTokenEmpty();
  }

  else
  {
    v39 = RIOPxrTfTokenCreateWithCString();
  }

  v40 = v39;
  _s9RealityIO4PrimC14attributeValue2of4typexSgAA16ToolsFoundationsO5TokenV_xmtAA012UsdAttributeE0RzlFSf_Tt1B5();

  if (String.count.getter() < 1)
  {
    v41 = RIOPxrTfTokenEmpty();
  }

  else
  {
    v41 = RIOPxrTfTokenCreateWithCString();
  }

  v42 = v41;
  v43 = _s9RealityIO4PrimC14attributeValue2of4typexSgAA16ToolsFoundationsO5TokenV_xmtAA012UsdAttributeE0RzlFs5SIMD3VySfG_Tt1B5();
  v45 = v44;
  v47 = v46;

  if (v47)
  {
    _ss4SIMDPsEyxqd__cSTRd__7ElementQyd__6ScalarRtzlufCs5SIMD3VySfG_SaySfGTt1g5Tf4g_n(&outlined read-only object #0 of TimelineBuilder.createSpinAction(for:inputs:));
  }

  else
  {
    v48.i64[0] = v43;
    v48.i64[1] = v45;
  }

  v105 = v48;
  TimelineBuilder.timingFunction(for:)(a1, v30);
  v49 = *(v32 + 48);
  if (v49(v30, 1, v31) == 1)
  {
    static AnimationTimingFunction.default.getter();
    if (v49(v30, 1, v31) != 1)
    {
      outlined destroy of Any?(v30, &_s10RealityKit23AnimationTimingFunctionVSgMd, &_s10RealityKit23AnimationTimingFunctionVSgMR);
    }
  }

  else
  {
    (*(v32 + 32))(v107, v30, v31);
  }

  v50 = String.count.getter();
  v93 = v15;
  if (v50 < 1)
  {
    v51 = RIOPxrTfTokenEmpty();
  }

  else
  {
    v51 = RIOPxrTfTokenCreateWithCString();
  }

  v52 = v51;
  v53 = *(a1 + 16);
  if (RIOPxrUsdPrimHasAttribute())
  {
    v54 = RIOPxrUsdPrimCopyAttribute();
    v55 = RIOPxrUsdAttributeCopyValue();
    if (v55)
    {
      v56 = v55;
      v57 = RIOPxrVtValueCopyToken();

      if (v57)
      {
        goto LABEL_28;
      }

      goto LABEL_24;
    }
  }

  else
  {
    v54 = v52;
  }

LABEL_24:
  if (String.count.getter() < 1)
  {
    v58 = RIOPxrTfTokenEmpty();
  }

  else
  {
    v58 = RIOPxrTfTokenCreateWithCString();
  }

  v57 = v58;
LABEL_28:
  if (String.count.getter() < 1)
  {
    v59 = RIOPxrTfTokenEmpty();
  }

  else
  {
    v59 = RIOPxrTfTokenCreateWithCString();
  }

  v60 = v59;
  type metadata accessor for RIOPxrTfTokenRef(0);
  lazy protocol witness table accessor for type AnimationFillMode and conformance AnimationFillMode(&lazy protocol witness table cache variable for type RIOPxrTfTokenRef and conformance RIOPxrTfTokenRef, type metadata accessor for RIOPxrTfTokenRef);
  v61 = static _CFObject.== infix(_:_:)();

  if (v61)
  {
    v62.i32[3] = 0;
    v62.i64[0] = vsubq_f32(0, v105).u64[0];
    v62.f32[2] = 0.0 - v105.f32[2];
    v105 = v62;
  }

  v63 = v103;
  (*(v32 + 16))(v35, v107, v31);
  SpinAction.init(revolutions:localAxis:timingFunction:isAdditive:)();
  specialized TimelineBuilder.startTimeAndDuration(for:)();
  if (String.count.getter() < 1)
  {
    v64 = RIOPxrTfTokenEmpty();
  }

  else
  {
    v64 = RIOPxrTfTokenCreateWithCString();
  }

  v65 = v64;
  v66 = _s9RealityIO4PrimC14attributeValue2of4typexSgAA16ToolsFoundationsO5TokenV_xmtAA012UsdAttributeE0RzlFs5Int32V_Tt1B5();

  if ((v66 & 0x100000000) != 0)
  {
    v67 = 0;
  }

  else
  {
    v67 = v66;
  }

  if (one-time initialization token for targetPathAttributeName != -1)
  {
    swift_once();
  }

  v68 = static ToolsFoundations.Token.targetPathAttributeName;
  if (RIOPxrUsdPrimHasRelationship())
  {
    v69 = RIOPxrUsdPrimCopyRelationship();

    type metadata accessor for Relationship();
    v70 = swift_allocObject();
    v70[2] = v69;
    v71 = Relationship.targets.getter();
    outlined consume of Result<AnyAttribute, Object.Error>(v70, 0);
    if (*(v71 + 16))
    {
      v72 = *(v71 + 32);

      goto LABEL_47;
    }
  }

  else
  {

    v108 = 0;
    lazy protocol witness table accessor for type Object.Error and conformance Object.Error();
    swift_willThrowTypedImpl();
    outlined consume of Object.Error(v108);
  }

  v72 = 0;
LABEL_47:
  v73 = v104;
  v108 = v72;
  v74 = v101;
  TimelineBuilder.createBindPath(from:inputs:)(&v108, v99, v101);
  LODWORD(v99) = v67;
  v105.i64[0] = v31;
  v75 = v63;
  v76 = v88;
  outlined init with copy of TimelineBuilder.BindPathWrapper(v74, v88);
  v77 = v89;
  v78 = v90;
  if ((*(v89 + 48))(v76, 1, v90) == 1)
  {
    v79 = v93;
    (*(v73 + 104))(v75, *MEMORY[0x277CDB230], v93);
  }

  else
  {
    v80 = v87;
    (*(v77 + 32))(v87, v76, v78);
    BindTarget.EntityPath.transform.getter();
    (*(v77 + 8))(v80, v78);
    v79 = v93;
  }

  type metadata accessor for AnimationResource();
  v81 = v94;
  (*(v73 + 16))(v94, v75, v79);
  (*(v73 + 56))(v81, 0, 1, v79);
  static AnimationFillMode.forwards.getter();
  (*(v97 + 104))(v96, *MEMORY[0x277CDB418], v98);
  v82 = static AnimationResource.makeActionAnimation<A>(for:duration:name:bindTarget:blendLayer:repeatMode:fillMode:trimStart:trimEnd:trimDuration:offset:delay:speed:)();
  v83 = v105.i64[0];
  v84 = v82;

  v85 = v101;
  (*(v97 + 8))(v96, v98);
  (*(v91 + 8))(v95, v92);
  outlined destroy of Any?(v94, &_s17RealityFoundation10BindTargetOSgMd, &_s17RealityFoundation10BindTargetOSgMR);
  (*(v104 + 8))(v103, v93);
  outlined destroy of TimelineBuilder.BindPathWrapper(v85);
  (*(v100 + 8))(v106, v102);
  (*(v32 + 8))(v107, v83);
  return v84;
}

uint64_t TimelineBuilder.createEnableAction(for:inputs:enabled:)(uint64_t a1, uint64_t a2, int a3)
{
  LODWORD(v63) = a3;
  v5 = type metadata accessor for AnimationFillMode();
  v69 = *(v5 - 8);
  v70 = v5;
  v6 = *(v69 + 64);
  MEMORY[0x28223BE20](v5);
  v68 = &v59 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v72 = type metadata accessor for AnimationRepeatMode();
  v64 = *(v72 - 8);
  v8 = *(v64 + 64);
  MEMORY[0x28223BE20](v72);
  v66 = &v59 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s17RealityFoundation10BindTargetOSgMd, &_s17RealityFoundation10BindTargetOSgMR);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10 - 8);
  v13 = &v59 - v12;
  v67 = type metadata accessor for SetEntityEnabledAction();
  v65 = *(v67 - 8);
  v14 = *(v65 + 64);
  MEMORY[0x28223BE20](v67);
  v16 = &v59 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v71 = type metadata accessor for ActionEntityResolution();
  v17 = *(v71 - 8);
  v18 = *(v17 + 64);
  MEMORY[0x28223BE20](v71);
  v20 = &v59 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v21);
  v23 = &v59 - v22;
  v24 = type metadata accessor for TimelineBuilder.BindPathWrapper();
  v25 = *(*(v24 - 8) + 64);
  MEMORY[0x28223BE20](v24 - 8);
  v27 = &v59 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v28);
  v30 = &v59 - v29;
  specialized TimelineBuilder.startTimeAndDuration(for:)();
  if (one-time initialization token for targetPathAttributeName != -1)
  {
    swift_once();
  }

  v31 = *(a1 + 16);
  v32 = static ToolsFoundations.Token.targetPathAttributeName;
  if (RIOPxrUsdPrimHasRelationship())
  {
    v33 = RIOPxrUsdPrimCopyRelationship();

    type metadata accessor for Relationship();
    v34 = swift_allocObject();
    v34[2] = v33;
    v35 = Relationship.targets.getter();
    outlined consume of Result<AnyAttribute, Object.Error>(v34, 0);
    if (*(v35 + 16))
    {
      v36 = *(v35 + 32);
      v37 = v36;
    }

    else
    {
      v36 = 0;
    }

    v73 = v36;
    TimelineBuilder.createBindPath(from:inputs:)(&v73, a2, v30);

    outlined init with copy of TimelineBuilder.BindPathWrapper(v30, v27);
    v41 = type metadata accessor for BindTarget.EntityPath();
    v42 = *(v41 - 8);
    if ((*(v42 + 48))(v27, 1, v41) == 1)
    {
      static ActionEntityResolution.sourceEntity.getter();
      v43 = v71;
    }

    else
    {
      (*(v42 + 32))(v23, v27, v41);
      v43 = v71;
      (*(v17 + 104))(v23, *MEMORY[0x277CDB480], v71);
    }

    v62 = v17;
    (*(v17 + 16))(v20, v23, v43);
    SetEntityEnabledAction.init(targetEntity:isEnabled:)();
    v61 = type metadata accessor for AnimationResource();
    v44 = type metadata accessor for BindTarget();
    (*(*(v44 - 8) + 56))(v13, 1, 1, v44);
    v45 = *MEMORY[0x277CDB418];
    v46 = v64;
    v47 = *(v64 + 104);
    v63 = v16;
    v48 = v66;
    v47(v66, v45, v72);
    v73 = MEMORY[0x277D84F90];
    lazy protocol witness table accessor for type AnimationFillMode and conformance AnimationFillMode(&lazy protocol witness table cache variable for type AnimationFillMode and conformance AnimationFillMode, MEMORY[0x277CDB3E8]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay17RealityFoundation17AnimationFillModeVGMd, &_sSay17RealityFoundation17AnimationFillModeVGMR);
    lazy protocol witness table accessor for type [AnimationFillMode] and conformance [A](&lazy protocol witness table cache variable for type [AnimationFillMode] and conformance [A], &_sSay17RealityFoundation17AnimationFillModeVGMd, &_sSay17RealityFoundation17AnimationFillModeVGMR);
    v49 = v70;
    v50 = v68;
    dispatch thunk of SetAlgebra.init<A>(_:)();
    v60 = v13;
    v56 = v67;
    v57 = static AnimationResource.makeActionAnimation<A>(for:duration:name:bindTarget:blendLayer:repeatMode:fillMode:trimStart:trimEnd:trimDuration:offset:delay:speed:)();
    (*(v69 + 8))(v50, v49);
    (*(v46 + 8))(v48, v72);
    outlined destroy of Any?(v60, &_s17RealityFoundation10BindTargetOSgMd, &_s17RealityFoundation10BindTargetOSgMR);
    (*(v65 + 8))(v63, v56);
    (*(v62 + 8))(v23, v71);
    outlined destroy of TimelineBuilder.BindPathWrapper(v30);
    return v57;
  }

  else
  {

    v73 = 0;
    lazy protocol witness table accessor for type Object.Error and conformance Object.Error();
    swift_willThrowTypedImpl();
    v38 = v73;
    v39 = swift_allocError();
    *v40 = v38;
    static os_log_type_t.error.getter();
    if (one-time initialization token for timeline != -1)
    {
      swift_once();
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys7CVarArg_pGMd, &_ss23_ContiguousArrayStorageCys7CVarArg_pGMR);
    v51 = swift_allocObject();
    *(v51 + 16) = xmmword_2619891C0;
    v73 = v39;
    v52 = v39;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
    v53 = String.init<A>(describing:)();
    v55 = v54;
    *(v51 + 56) = MEMORY[0x277D837D0];
    *(v51 + 64) = lazy protocol witness table accessor for type String and conformance String();
    *(v51 + 32) = v53;
    *(v51 + 40) = v55;
    os_log(_:dso:log:_:_:)();

    return 0;
  }
}

uint64_t TimelineBuilder.createReplaceBehaviorAction(for:inputs:)(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ActionEntityResolution();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v32 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for TimelineBuilder.BindPathWrapper();
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = &v32 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (one-time initialization token for targetPathAttributeName != -1)
  {
    swift_once();
  }

  v13 = *(a1 + 16);
  v14 = static ToolsFoundations.Token.targetPathAttributeName;
  if (RIOPxrUsdPrimHasRelationship())
  {
    v15 = RIOPxrUsdPrimCopyRelationship();

    type metadata accessor for Relationship();
    v16 = swift_allocObject();
    v16[2] = v15;
    v17 = Relationship.targets.getter();
    outlined consume of Result<AnyAttribute, Object.Error>(v16, 0);
    if (*(v17 + 16))
    {
      v18 = *(v17 + 32);
      v19 = v18;
    }

    else
    {
      v18 = 0;
    }

    v33 = v18;
    TimelineBuilder.createBindPath(from:inputs:)(&v33, a2, v12);
    static ActionEntityResolution.sourceEntity.getter();
    v28 = specialized TimelineBuilder.startTimeAndDuration(for:)();
    v29 = Prim.children.getter();
    MEMORY[0x28223BE20](v29);
    *(&v32 - 4) = v8;
    *(&v32 - 3) = 0x3FA1111111111111;
    *(&v32 - 2) = v28;
    v30 = specialized Sequence.compactMap<A>(_:)(partial apply for closure #1 in TimelineBuilder.createReplaceBehaviorAction(for:inputs:), (&v32 - 6), v29);

    outlined destroy of TimelineBuilder.BindPathWrapper(v12);
    (*(v5 + 8))(v8, v4);
    return v30;
  }

  else
  {

    v33 = 0;
    lazy protocol witness table accessor for type Object.Error and conformance Object.Error();
    swift_willThrowTypedImpl();
    v20 = v33;
    v21 = swift_allocError();
    *v22 = v20;
    static os_log_type_t.error.getter();
    if (one-time initialization token for timeline != -1)
    {
      swift_once();
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys7CVarArg_pGMd, &_ss23_ContiguousArrayStorageCys7CVarArg_pGMR);
    v23 = swift_allocObject();
    *(v23 + 16) = xmmword_2619891C0;
    v33 = v21;
    v24 = v21;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
    v25 = String.init<A>(describing:)();
    v27 = v26;
    *(v23 + 56) = MEMORY[0x277D837D0];
    *(v23 + 64) = lazy protocol witness table accessor for type String and conformance String();
    *(v23 + 32) = v25;
    *(v23 + 40) = v27;
    os_log(_:dso:log:_:_:)();

    return MEMORY[0x277D84F90];
  }
}

void closure #1 in TimelineBuilder.createReplaceBehaviorAction(for:inputs:)(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v60 = a2;
  v5 = type metadata accessor for AnimationFillMode();
  v66 = *(v5 - 8);
  v67 = v5;
  v6 = *(v66 + 64);
  MEMORY[0x28223BE20](v5);
  v64 = v58 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v65 = type metadata accessor for AnimationRepeatMode();
  v68 = *(v65 - 8);
  v8 = *(v68 + 64);
  MEMORY[0x28223BE20](v65);
  v63 = v58 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s17RealityFoundation10BindTargetOSgMd, &_s17RealityFoundation10BindTargetOSgMR);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10 - 8);
  v13 = v58 - v12;
  v14 = type metadata accessor for ActionEntityResolution();
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  MEMORY[0x28223BE20](v14);
  v18 = v58 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s17RealityFoundation23SetEntityPropertyActionVySSGMd, &_s17RealityFoundation23SetEntityPropertyActionVySSGMR);
  v61 = *(v19 - 8);
  v62 = v19;
  v20 = *(v61 + 64);
  MEMORY[0x28223BE20](v19);
  v22 = v58 - v21;
  v23 = *a1;
  if (String.count.getter() < 1)
  {
    v24 = RIOPxrTfTokenEmpty();
  }

  else
  {
    v24 = RIOPxrTfTokenCreateWithCString();
  }

  v25 = v24;
  v26 = *(v23 + 16);
  if (RIOPxrUsdPrimHasRelationship())
  {
    v59 = a3;
    v27 = *(v23 + 16);
    v28 = RIOPxrUsdPrimCopyRelationship();

    type metadata accessor for Relationship();
    v29 = swift_allocObject();
    v29[2] = v28;
    v30 = Relationship.targets.getter();
    outlined consume of Result<AnyAttribute, Object.Error>(v29, 0);
    if (*(v30 + 16))
    {
      v31 = *(v30 + 32);

      v32 = RIOPxrSdfPathCopyString();
      v33 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v58[0] = v34;
      v58[1] = v33;

      if (String.count.getter() < 1)
      {
        v35 = RIOPxrTfTokenEmpty();
      }

      else
      {
        v35 = RIOPxrTfTokenCreateWithCString();
      }

      v37 = v35;
      v38 = v68;
      v39 = *(v23 + 16);
      if (RIOPxrUsdPrimHasRelationship())
      {
        v40 = *(v23 + 16);
        v41 = RIOPxrUsdPrimCopyRelationship();

        v42 = swift_allocObject();
        v42[2] = v41;
        v43 = Relationship.targets.getter();
        outlined consume of Result<AnyAttribute, Object.Error>(v42, 0);
        if (*(v43 + 16))
        {
          v44 = *(v43 + 32);

          v45 = RIOPxrSdfPathCopyString();
          v46 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v48 = v47;
        }

        else
        {

          v46 = 0;
          v48 = 0xE000000000000000;
        }

        v38 = v68;
      }

      else
      {

        v69 = 0;
        lazy protocol witness table accessor for type Object.Error and conformance Object.Error();
        swift_willThrowTypedImpl();
        outlined consume of Object.Error(v69);
        v46 = 0;
        v48 = 0xE000000000000000;
      }

      (*(v15 + 16))(v18, v60, v14);
      v69 = v46;
      v70 = v48;
      SetEntityPropertyAction.init(targetEntity:key:value:)();
      v68 = type metadata accessor for AnimationResource();
      v49 = type metadata accessor for BindTarget();
      (*(*(v49 - 8) + 56))(v13, 1, 1, v49);
      v50 = v63;
      v51 = v65;
      (*(v38 + 104))(v63, *MEMORY[0x277CDB418], v65);
      v69 = MEMORY[0x277D84F90];
      lazy protocol witness table accessor for type AnimationFillMode and conformance AnimationFillMode(&lazy protocol witness table cache variable for type AnimationFillMode and conformance AnimationFillMode, MEMORY[0x277CDB3E8]);
      v52 = v38;
      __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay17RealityFoundation17AnimationFillModeVGMd, &_sSay17RealityFoundation17AnimationFillModeVGMR);
      lazy protocol witness table accessor for type [AnimationFillMode] and conformance [A](&lazy protocol witness table cache variable for type [AnimationFillMode] and conformance [A], &_sSay17RealityFoundation17AnimationFillModeVGMd, &_sSay17RealityFoundation17AnimationFillModeVGMR);
      v53 = v67;
      v54 = v64;
      dispatch thunk of SetAlgebra.init<A>(_:)();
      lazy protocol witness table accessor for type [AnimationFillMode] and conformance [A](&lazy protocol witness table cache variable for type SetEntityPropertyAction<String> and conformance SetEntityPropertyAction<A>, &_s17RealityFoundation23SetEntityPropertyActionVySSGMd, &_s17RealityFoundation23SetEntityPropertyActionVySSGMR);
      v55 = v62;
      v56 = v71;
      v57 = static AnimationResource.makeActionAnimation<A>(for:duration:name:bindTarget:blendLayer:repeatMode:fillMode:trimStart:trimEnd:trimDuration:offset:delay:speed:)();
      if (v56)
      {

        (*(v66 + 8))(v54, v53);
        (*(v52 + 8))(v50, v51);
        outlined destroy of Any?(v13, &_s17RealityFoundation10BindTargetOSgMd, &_s17RealityFoundation10BindTargetOSgMR);
        (*(v61 + 8))(v22, v55);
        v36 = 0;
      }

      else
      {
        v36 = v57;
        (*(v66 + 8))(v54, v53);
        (*(v52 + 8))(v50, v51);
        outlined destroy of Any?(v13, &_s17RealityFoundation10BindTargetOSgMd, &_s17RealityFoundation10BindTargetOSgMR);
        (*(v61 + 8))(v22, v55);
      }

      a3 = v59;
    }

    else
    {

      v36 = 0;
      a3 = v59;
    }
  }

  else
  {

    v69 = 0;
    lazy protocol witness table accessor for type Object.Error and conformance Object.Error();
    swift_willThrowTypedImpl();
    outlined consume of Object.Error(v69);
    v36 = 0;
  }

  *a3 = v36;
}

uint64_t TimelineBuilder.createFromToByTransformAction(toOrBy:for:inputs:)(int a1, uint64_t a2, void *a3)
{
  v112 = a3;
  v111 = a1;
  v4 = type metadata accessor for AnimationRepeatMode();
  v115 = *(v4 - 8);
  v5 = *(v115 + 64);
  MEMORY[0x28223BE20](v4);
  v97 = &v92 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v99 = type metadata accessor for AnimationFillMode();
  v98 = *(v99 - 8);
  v7 = *(v98 + 64);
  MEMORY[0x28223BE20](v99);
  v114 = &v92 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s17RealityFoundation10BindTargetOSgMd, &_s17RealityFoundation10BindTargetOSgMR);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v96 = &v92 - v11;
  v95 = type metadata accessor for BindTarget.EntityPath();
  v94 = *(v95 - 8);
  v12 = *(v94 + 64);
  MEMORY[0x28223BE20](v95);
  v92 = &v92 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v102 = type metadata accessor for BindTarget();
  v105 = *(v102 - 8);
  v14 = *(v105 + 64);
  MEMORY[0x28223BE20](v102);
  v101 = &v92 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = type metadata accessor for TimelineBuilder.BindPathWrapper();
  v17 = *(*(v16 - 8) + 64);
  MEMORY[0x28223BE20](v16 - 8);
  v104 = &v92 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v19);
  v106 = &v92 - v20;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s17RealityFoundation14FromToByActionV13TransformModeOy0A3Kit0G0V_GSgMd, &_s17RealityFoundation14FromToByActionV13TransformModeOy0A3Kit0G0V_GSgMR);
  v22 = *(*(v21 - 8) + 64);
  MEMORY[0x28223BE20](v21 - 8);
  v24 = &v92 - v23;
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s17RealityFoundation14FromToByActionV13TransformModeOy0A3Kit0G0V_GMd, &_s17RealityFoundation14FromToByActionV13TransformModeOy0A3Kit0G0V_GMR);
  v110 = *(v25 - 8);
  v26 = *(v110 + 64);
  MEMORY[0x28223BE20](v25);
  v103 = &v92 - v27;
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10RealityKit23AnimationTimingFunctionVSgMd, &_s10RealityKit23AnimationTimingFunctionVSgMR);
  v29 = *(*(v28 - 8) + 64);
  MEMORY[0x28223BE20](v28 - 8);
  v31 = &v92 - v30;
  v32 = type metadata accessor for AnimationTimingFunction();
  v33 = *(v32 - 8);
  v34 = *(v33 + 64);
  MEMORY[0x28223BE20](v32);
  v36 = &v92 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v37);
  v39 = &v92 - v38;
  v117 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s17RealityFoundation14FromToByActionVy0A3Kit9TransformVGMd, &_s17RealityFoundation14FromToByActionVy0A3Kit9TransformVGMR);
  v113 = *(v117 - 8);
  v40 = *(v113 + 64);
  MEMORY[0x28223BE20](v117);
  v116 = &v92 - v41;
  specialized TimelineBuilder.startTimeAndDuration(for:)();
  v42 = String.count.getter();
  v100 = v4;
  if (v42 < 1)
  {
    v43 = RIOPxrTfTokenEmpty();
  }

  else
  {
    v43 = RIOPxrTfTokenCreateWithCString();
  }

  v44 = v43;
  v45 = _s9RealityIO4PrimC14attributeValue2of4typexSgAA16ToolsFoundationsO5TokenV_xmtAA012UsdAttributeE0RzlFs5Int32V_Tt1B5();

  if ((v45 & 0x100000000) != 0)
  {
    v46 = 0;
  }

  else
  {
    v46 = v45;
  }

  v93 = v46;
  v107 = specialized TimelineBuilder.transform(for:)();
  v108 = v47;
  v109 = v48;
  TimelineBuilder.timingFunction(for:)(a2, v31);
  v49 = *(v33 + 48);
  if (v49(v31, 1, v32) == 1)
  {
    static AnimationTimingFunction.default.getter();
    v50 = v49(v31, 1, v32);
    v51 = v110;
    if (v50 != 1)
    {
      outlined destroy of Any?(v31, &_s10RealityKit23AnimationTimingFunctionVSgMd, &_s10RealityKit23AnimationTimingFunctionVSgMR);
    }

    if (v111)
    {
      goto LABEL_11;
    }
  }

  else
  {
    (*(v33 + 32))(v39, v31, v32);
    v51 = v110;
    if (v111)
    {
LABEL_11:
      (*(v33 + 16))(v36, v39, v32);
      v52 = v116;
      FromToByAction<>.init(by:timing:isAdditive:)();
      v53 = v114;
      goto LABEL_18;
    }
  }

  TimelineBuilder.transformMode(for:inputs:)(a2, v112, v24);
  v54 = *(v51 + 48);
  if (v54(v24, 1, v25) == 1)
  {
    static FromToByAction.TransformMode.default.getter();
    v55 = v54(v24, 1, v25);
    v53 = v114;
    if (v55 != 1)
    {
      outlined destroy of Any?(v24, &_s17RealityFoundation14FromToByActionV13TransformModeOy0A3Kit0G0V_GSgMd, &_s17RealityFoundation14FromToByActionV13TransformModeOy0A3Kit0G0V_GSgMR);
    }
  }

  else
  {
    (*(v51 + 32))(v103, v24, v25);
    v53 = v114;
  }

  v120 = 0u;
  v121 = 0u;
  v119 = 0u;
  v122 = 1;
  (*(v33 + 16))(v36, v39, v32);
  v52 = v116;
  FromToByAction<>.init(from:to:mode:timing:isAdditive:)();
LABEL_18:
  (*(v33 + 8))(v39, v32);
  if (one-time initialization token for targetPathAttributeName != -1)
  {
    swift_once();
  }

  v56 = *(a2 + 16);
  v57 = static ToolsFoundations.Token.targetPathAttributeName;
  HasRelationship = RIOPxrUsdPrimHasRelationship();
  v59 = v115;
  v60 = v117;
  if (HasRelationship)
  {
    v61 = RIOPxrUsdPrimCopyRelationship();

    type metadata accessor for Relationship();
    v62 = swift_allocObject();
    v62[2] = v61;
    v63 = Relationship.targets.getter();
    outlined consume of Result<AnyAttribute, Object.Error>(v62, 0);
    if (*(v63 + 16))
    {
      v64 = *(v63 + 32);
      v65 = v64;
    }

    else
    {
      v64 = 0;
    }

    v69 = v105;
    v70 = v104;

    v118 = v64;
    v71 = v106;
    TimelineBuilder.createBindPath(from:inputs:)(&v118, v112, v106);
    v72 = v53;
    outlined init with copy of TimelineBuilder.BindPathWrapper(v71, v70);
    v73 = v94;
    v74 = v95;
    if ((*(v94 + 48))(v70, 1, v95) == 1)
    {
      v75 = v101;
      v76 = v102;
      (*(v69 + 104))(v101, *MEMORY[0x277CDB230], v102);
      v77 = v96;
    }

    else
    {
      v78 = v70;
      v79 = v92;
      (*(v73 + 32))(v92, v78, v74);
      v75 = v101;
      BindTarget.EntityPath.transform.getter();
      (*(v73 + 8))(v79, v74);
      v77 = v96;
      v76 = v102;
    }

    type metadata accessor for AnimationResource();
    (*(v69 + 16))(v77, v75, v76);
    (*(v69 + 56))(v77, 0, 1, v76);
    static AnimationFillMode.forwards.getter();
    v80 = v97;
    v81 = v100;
    (*(v59 + 104))(v97, *MEMORY[0x277CDB418], v100);
    lazy protocol witness table accessor for type [AnimationFillMode] and conformance [A](&lazy protocol witness table cache variable for type FromToByAction<Transform> and conformance FromToByAction<A>, &_s17RealityFoundation14FromToByActionVy0A3Kit9TransformVGMd, &_s17RealityFoundation14FromToByActionVy0A3Kit9TransformVGMR);
    v82 = v80;
    v83 = v116;
    v89 = v82;
    v90 = static AnimationResource.makeActionAnimation<A>(for:duration:name:bindTarget:blendLayer:repeatMode:fillMode:trimStart:trimEnd:trimDuration:offset:delay:speed:)();

    (*(v59 + 8))(v89, v81);
    (*(v98 + 8))(v72, v99);
    outlined destroy of Any?(v77, &_s17RealityFoundation10BindTargetOSgMd, &_s17RealityFoundation10BindTargetOSgMR);
    (*(v69 + 8))(v101, v102);
    outlined destroy of TimelineBuilder.BindPathWrapper(v106);
    (*(v113 + 8))(v83, v117);
    return v90;
  }

  else
  {

    v118 = 0;
    lazy protocol witness table accessor for type Object.Error and conformance Object.Error();
    swift_willThrowTypedImpl();
    v66 = v118;
    v67 = swift_allocError();
    *v68 = v66;
    static os_log_type_t.error.getter();
    if (one-time initialization token for timeline != -1)
    {
      swift_once();
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys7CVarArg_pGMd, &_ss23_ContiguousArrayStorageCys7CVarArg_pGMR);
    v84 = swift_allocObject();
    *(v84 + 16) = xmmword_2619891C0;
    v118 = v67;
    v85 = v67;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
    v86 = String.init<A>(describing:)();
    v88 = v87;
    *(v84 + 56) = MEMORY[0x277D837D0];
    *(v84 + 64) = lazy protocol witness table accessor for type String and conformance String();
    *(v84 + 32) = v86;
    *(v84 + 40) = v88;
    os_log(_:dso:log:_:_:)();

    (*(v113 + 8))(v52, v60);
    return 0;
  }
}

uint64_t TimelineBuilder.createShowOrHideAction(showOrHide:for:inputs:)(char a1, uint64_t a2, uint64_t a3)
{
  v87 = a3;
  v5 = type metadata accessor for AnimationRepeatMode();
  v78 = *(v5 - 8);
  v79 = v5;
  v6 = *(v78 + 64);
  MEMORY[0x28223BE20](v5);
  v85 = &v73 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v77 = type metadata accessor for AnimationFillMode();
  v76 = *(v77 - 8);
  v8 = *(v76 + 64);
  MEMORY[0x28223BE20](v77);
  v84 = &v73 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s17RealityFoundation10BindTargetOSgMd, &_s17RealityFoundation10BindTargetOSgMR);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10 - 8);
  v83 = &v73 - v12;
  v75 = type metadata accessor for BindTarget.EntityPath();
  v86 = *(v75 - 8);
  v13 = *(v86 + 64);
  MEMORY[0x28223BE20](v75);
  v74 = &v73 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = type metadata accessor for BindTarget();
  v81 = *(v15 - 8);
  v82 = v15;
  v16 = *(v81 + 64);
  MEMORY[0x28223BE20](v15);
  v80 = &v73 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = type metadata accessor for TimelineBuilder.BindPathWrapper();
  v19 = *(*(v18 - 8) + 64);
  MEMORY[0x28223BE20](v18 - 8);
  v21 = &v73 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v22);
  v88 = &v73 - v23;
  v89 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s17RealityFoundation14FromToByActionVySfGMd, &_s17RealityFoundation14FromToByActionVySfGMR);
  v91 = *(v89 - 8);
  v24 = *(v91 + 64);
  MEMORY[0x28223BE20](v89);
  v92 = &v73 - v25;
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10RealityKit23AnimationTimingFunctionVSgMd, &_s10RealityKit23AnimationTimingFunctionVSgMR);
  v27 = *(*(v26 - 8) + 64);
  MEMORY[0x28223BE20](v26 - 8);
  v29 = &v73 - v28;
  v30 = type metadata accessor for AnimationTimingFunction();
  v31 = *(v30 - 8);
  v32 = *(v31 + 64);
  MEMORY[0x28223BE20](v30);
  v34 = &v73 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v35);
  v37 = &v73 - v36;
  TimelineBuilder.timingFunction(for:)(a2, v29);
  v38 = *(v31 + 48);
  if (v38(v29, 1, v30) == 1)
  {
    static AnimationTimingFunction.default.getter();
    if (v38(v29, 1, v30) != 1)
    {
      outlined destroy of Any?(v29, &_s10RealityKit23AnimationTimingFunctionVSgMd, &_s10RealityKit23AnimationTimingFunctionVSgMR);
    }
  }

  else
  {
    (*(v31 + 32))(v37, v29, v30);
  }

  LODWORD(v93) = 0;
  BYTE4(v93) = 1;
  v39 = 0.0;
  if ((a1 & 1) == 0)
  {
    v39 = 1.0;
  }

  v94 = v39;
  (*(v31 + 16))(v34, v37, v30);
  FromToByAction.init(from:to:timing:isAdditive:)();
  specialized TimelineBuilder.startTimeAndDuration(for:)();
  if (String.count.getter() <= 0)
  {
    v40 = RIOPxrTfTokenEmpty();
  }

  else
  {
    v40 = RIOPxrTfTokenCreateWithCString();
  }

  v41 = v40;
  v42 = _s9RealityIO4PrimC14attributeValue2of4typexSgAA16ToolsFoundationsO5TokenV_xmtAA012UsdAttributeE0RzlFs5Int32V_Tt1B5();

  if ((v42 & 0x100000000) != 0)
  {
    v43 = 0;
  }

  else
  {
    v43 = v42;
  }

  if (one-time initialization token for targetPathAttributeName != -1)
  {
    swift_once();
  }

  v44 = *(a2 + 16);
  v45 = static ToolsFoundations.Token.targetPathAttributeName;
  HasRelationship = RIOPxrUsdPrimHasRelationship();
  v90 = v37;
  if (HasRelationship)
  {
    v47 = RIOPxrUsdPrimCopyRelationship();

    type metadata accessor for Relationship();
    v48 = swift_allocObject();
    v48[2] = v47;
    v49 = Relationship.targets.getter();
    outlined consume of Result<AnyAttribute, Object.Error>(v48, 0);
    if (*(v49 + 16))
    {
      v50 = *(v49 + 32);
      v51 = v50;
    }

    else
    {
      v50 = 0;
    }

    v55 = v89;
    v56 = v86;

    v93 = v50;
    v57 = v88;
    TimelineBuilder.createBindPath(from:inputs:)(&v93, v87, v88);
    LODWORD(v89) = v43;
    outlined init with copy of TimelineBuilder.BindPathWrapper(v57, v21);
    v65 = v75;
    if ((*(v56 + 48))(v21, 1, v75) == 1)
    {
      v67 = v80;
      v66 = v81;
      v68 = v82;
      (*(v81 + 104))(v80, *MEMORY[0x277CDB228], v82);
    }

    else
    {
      v69 = v74;
      (*(v56 + 32))(v74, v21, v65);
      v67 = v80;
      BindTarget.EntityPath.opacity.getter();
      (*(v56 + 8))(v69, v65);
      v66 = v81;
      v68 = v82;
    }

    v87 = type metadata accessor for AnimationResource();
    v70 = v83;
    (*(v66 + 16))(v83, v67, v68);
    (*(v66 + 56))(v70, 0, 1, v68);
    static AnimationFillMode.forwards.getter();
    v72 = v78;
    v71 = v79;
    (*(v78 + 104))(v85, *MEMORY[0x277CDB418], v79);
    lazy protocol witness table accessor for type [AnimationFillMode] and conformance [A](&lazy protocol witness table cache variable for type FromToByAction<Float> and conformance FromToByAction<A>, &_s17RealityFoundation14FromToByActionVySfGMd, &_s17RealityFoundation14FromToByActionVySfGMR);
    v63 = static AnimationResource.makeActionAnimation<A>(for:duration:name:bindTarget:blendLayer:repeatMode:fillMode:trimStart:trimEnd:trimDuration:offset:delay:speed:)();

    (*(v72 + 8))(v85, v71);
    (*(v76 + 8))(v84, v77);
    outlined destroy of Any?(v83, &_s17RealityFoundation10BindTargetOSgMd, &_s17RealityFoundation10BindTargetOSgMR);
    (*(v81 + 8))(v80, v82);
    outlined destroy of TimelineBuilder.BindPathWrapper(v88);
  }

  else
  {

    v93 = 0;
    lazy protocol witness table accessor for type Object.Error and conformance Object.Error();
    swift_willThrowTypedImpl();
    v52 = v93;
    v53 = swift_allocError();
    *v54 = v52;
    v55 = v89;
    static os_log_type_t.error.getter();
    if (one-time initialization token for timeline != -1)
    {
      swift_once();
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys7CVarArg_pGMd, &_ss23_ContiguousArrayStorageCys7CVarArg_pGMR);
    v58 = swift_allocObject();
    *(v58 + 16) = xmmword_2619891C0;
    v93 = v53;
    v59 = v53;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
    v60 = String.init<A>(describing:)();
    v62 = v61;
    *(v58 + 56) = MEMORY[0x277D837D0];
    *(v58 + 64) = lazy protocol witness table accessor for type String and conformance String();
    *(v58 + 32) = v60;
    *(v58 + 40) = v62;
    os_log(_:dso:log:_:_:)();

    v63 = 0;
  }

  (*(v91 + 8))(v92, v55);
  (*(v31 + 8))(v90, v30);
  return v63;
}

uint64_t TimelineBuilder.createAction(for:inputs:)(unint64_t a1, void *a2)
{
  v4 = *(a1 + 16);
  v5 = RIOPxrUsdPrimCopyTypeName();
  if (one-time initialization token for primType != -1)
  {
    swift_once();
  }

  v6 = static TimelineConstants.Action.primType;
  type metadata accessor for RIOPxrTfTokenRef(0);
  lazy protocol witness table accessor for type AnimationFillMode and conformance AnimationFillMode(&lazy protocol witness table cache variable for type RIOPxrTfTokenRef and conformance RIOPxrTfTokenRef, type metadata accessor for RIOPxrTfTokenRef);
  v7 = v6;
  v8 = static _CFObject.== infix(_:_:)();

  if ((v8 & 1) == 0)
  {
    return MEMORY[0x277D84F90];
  }

  v9 = String.count.getter() < 1 ? RIOPxrTfTokenEmpty() : RIOPxrTfTokenCreateWithCString();
  v10 = v9;
  v11 = _s9RealityIO4PrimC14attributeValue2of4typexSgAA16ToolsFoundationsO5TokenV_xmtAA012UsdAttributeE0RzlFSS_Tt1B5();
  v13 = v12;

  if (!v13)
  {
    return MEMORY[0x277D84F90];
  }

  if (String.count.getter() < 1)
  {
    v14 = RIOPxrTfTokenEmpty();
  }

  else
  {
    v14 = RIOPxrTfTokenCreateWithCString();
  }

  v15 = v14;
  v16 = _s9RealityIO4PrimC14attributeValue2of4typexSgAA16ToolsFoundationsO5TokenV_xmtAA012UsdAttributeE0RzlFSb_Tt1B5();

  if (v16 != 2 && (v16 & 1) == 0)
  {

    return MEMORY[0x277D84F90];
  }

  if (v11 == 0x6F6974616D696E61 && v13 == 0xE90000000000006ELL || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    v17 = TimelineBuilder.createAnimationAction(for:inputs:)(a1, a2);
    if (v17)
    {
LABEL_17:
      v18 = v17;
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd, &_ss23_ContiguousArrayStorageCyyXlGMR);
      result = swift_allocObject();
      *(result + 16) = xmmword_26198A640;
      *(result + 32) = v18;
      return result;
    }

    return MEMORY[0x277D84F90];
  }

  if (v11 == 0x6F69647561 && v13 == 0xE500000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    v17 = TimelineBuilder.createAudioAction(for:inputs:)(a1, a2);
    if (v17)
    {
      goto LABEL_17;
    }

    return MEMORY[0x277D84F90];
  }

  if (v11 == 0x7A69736168706D65 && v13 == 0xE900000000000065 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    v17 = TimelineBuilder.createEmphasizeAction(for:inputs:)(a1, a2);
    if (v17)
    {
      goto LABEL_17;
    }

    return MEMORY[0x277D84F90];
  }

  if (v11 == 0x656C62616E65 && v13 == 0xE600000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    v20 = a1;
    v21 = a2;
    v22 = 1;
    goto LABEL_34;
  }

  if (v11 == 0x656C6261736964 && v13 == 0xE700000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    v20 = a1;
    v21 = a2;
    v22 = 0;
LABEL_34:
    v17 = TimelineBuilder.createEnableAction(for:inputs:enabled:)(v20, v21, v22);
    if (v17)
    {
      goto LABEL_17;
    }

    return MEMORY[0x277D84F90];
  }

  if (v11 == 0x65736C75706D69 && v13 == 0xE700000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    v17 = TimelineBuilder.createImpulseAction(for:inputs:)(a1, a2);
    if (v17)
    {
      goto LABEL_17;
    }

    return MEMORY[0x277D84F90];
  }

  if (v11 == 0x74416B6F6F6CLL && v13 == 0xE600000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    v17 = TimelineBuilder.createLookAtAction(for:inputs:)(a1, a2);
    if (v17)
    {
      goto LABEL_17;
    }

    return MEMORY[0x277D84F90];
  }

  if (v11 == 0x746962726FLL && v13 == 0xE500000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    v17 = TimelineBuilder.createOrbitAction(for:inputs:)(a1, a2);
    if (v17)
    {
      goto LABEL_17;
    }

    return MEMORY[0x277D84F90];
  }

  if (v11 == 1852403827 && v13 == 0xE400000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    v17 = TimelineBuilder.createSpinAction(for:inputs:)(a1, a2);
    if (v17)
    {
      goto LABEL_17;
    }

    return MEMORY[0x277D84F90];
  }

  if (v11 == 0x6163696669746F6ELL && v13 == 0xEC0000006E6F6974 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    v17 = specialized TimelineBuilder.createNotificationAction(for:inputs:)(a1);
    if (v17)
    {
      goto LABEL_17;
    }

    return MEMORY[0x277D84F90];
  }

  if (v11 == 0x656E696C656D6974 && v13 == 0xE800000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    v17 = TimelineBuilder.createTimelineAction(for:inputs:)(a1, a2);
    if (v17)
    {
      goto LABEL_17;
    }

    return MEMORY[0x277D84F90];
  }

  if ((v11 != 0xD000000000000010 || 0x8000000261994990 != v13) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
  {
    if (v11 == 0x6F5465766F6DLL && v13 == 0xE600000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
    {

      v23 = 0;
      goto LABEL_78;
    }

    if (v11 == 0x794265766F6DLL && v13 == 0xE600000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
    {

      v23 = 1;
LABEL_78:
      v17 = TimelineBuilder.createFromToByTransformAction(toOrBy:for:inputs:)(v23, a1, a2);
      if (v17)
      {
        goto LABEL_17;
      }

      return MEMORY[0x277D84F90];
    }

    if (v11 == 2003789939 && v13 == 0xE400000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
    {

      v24 = 0;
      goto LABEL_88;
    }

    if (v11 == 1701079400 && v13 == 0xE400000000000000)
    {

LABEL_94:
      v24 = 1;
LABEL_88:
      v17 = TimelineBuilder.createShowOrHideAction(showOrHide:for:inputs:)(v24, a1, a2);
      if (v17)
      {
        goto LABEL_17;
      }

      return MEMORY[0x277D84F90];
    }

    v25 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v25)
    {
      goto LABEL_94;
    }

    return MEMORY[0x277D84F90];
  }

  return TimelineBuilder.createReplaceBehaviorAction(for:inputs:)(a1, a2);
}

uint64_t closure #1 in TimelineBuilder.run(inputs:)(uint64_t a1, void *a2)
{
  v191 = type metadata accessor for AnimationFillMode();
  v4 = *(*(v191 - 8) + 64);
  MEMORY[0x28223BE20](v191);
  v193 = &v181 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v190 = type metadata accessor for AnimationRepeatMode();
  v189 = *(v190 - 8);
  v6 = *(v189 + 64);
  MEMORY[0x28223BE20](v190);
  v192 = &v181 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s17RealityFoundation25AnimationLibraryComponentVSgMd, &_s17RealityFoundation25AnimationLibraryComponentVSgMR);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v11 = &v181 - v10;
  v194 = type metadata accessor for Entity.ComponentSet();
  v198 = *(v194 - 8);
  v12 = *(v198 + 64);
  MEMORY[0x28223BE20](v194);
  v187 = &v181 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v16 = &v181 - v15;
  v197 = type metadata accessor for AnimationLibraryComponent();
  v196 = *(v197 - 8);
  v17 = *(v196 + 64);
  MEMORY[0x28223BE20](v197);
  v188 = &v181 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v19);
  v195 = &v181 - v20;
  v21 = Inputs.prim.getter();
  v22 = v21[2];

  v26 = RIOPxrUsdObjectCopyName();
  v23 = RIOPxrTfTokenCopyString();
  v24 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v200 = v25;

  LODWORD(v26) = static os_log_type_t.info.getter();
  if (one-time initialization token for timeline != -1)
  {
    goto LABEL_124;
  }

  while (1)
  {
    v27 = static OS_os_log.timeline;
    if (os_log_type_enabled(static OS_os_log.timeline, v26))
    {
      v28 = swift_slowAlloc();
      v29 = swift_slowAlloc();
      *&v209 = v29;
      *v28 = 136315138;
      v30 = v21[2];
      v31 = RIOPxrUsdObjectCopyPath();
      v204 = a2;
      v205 = a1;
      v32 = v31;
      v33 = v24;
      v34 = v21;
      v35 = RIOPxrSdfPathCopyString();
      v36 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      LODWORD(v207) = v26;
      v37 = v27;
      v38 = v16;
      v39 = v36;
      v208 = v11;
      v41 = v40;

      v21 = v34;
      v24 = v33;
      v42 = v39;
      v16 = v38;
      v27 = v37;
      v43 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v42, v41, &v209);
      v11 = v208;

      *(v28 + 4) = v43;
      a2 = v204;
      a1 = v205;
      _os_log_impl(&dword_26187B000, v37, v207, "Begin TimelineBuilder for prim at path: %s", v28, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v29);
      MEMORY[0x266713AD0](v29, -1, -1);
      MEMORY[0x266713AD0](v28, -1, -1);
    }

    v44 = Prim.parent.getter();
    if (v44)
    {
      v45 = v44;
      v46 = *(v44 + 16);
      if ((RIOPxrUsdPrimEvaluateEntityOnExport() & 1) == 0)
      {

        LODWORD(v208) = static os_log_type_t.error.getter();
        __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys7CVarArg_pGMd, &_ss23_ContiguousArrayStorageCys7CVarArg_pGMR);
        v49 = v24;
        v50 = swift_allocObject();
        *(v50 + 16) = xmmword_26198A8E0;
        v51 = *(v45 + 16);
        v52 = RIOPxrUsdObjectCopyPath();
        v53 = RIOPxrSdfPathCopyString();
        v54 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v56 = v55;

        v57 = MEMORY[0x277D837D0];
        *(v50 + 56) = MEMORY[0x277D837D0];
        v58 = lazy protocol witness table accessor for type String and conformance String();
        *(v50 + 64) = v58;
        *(v50 + 32) = v54;
        *(v50 + 40) = v56;

        *(v50 + 96) = v57;
        *(v50 + 104) = v58;
        v59 = v200;
        *(v50 + 72) = v49;
        *(v50 + 80) = v59;
        os_log(_:dso:log:type:_:)();
      }
    }

    if (one-time initialization token for OutputName != -1)
    {
      swift_once();
    }

    Inputs.subscript.getter(static EntityBuilder.OutputName, qword_27FEBC3A0, &v209);
    if (!v210)
    {

      outlined destroy of Any?(&v209, &_sypSgMd, &_sypSgMR);
      goto LABEL_18;
    }

    type metadata accessor for EntityProxy();
    if ((swift_dynamicCast() & 1) == 0)
    {

LABEL_18:
      static os_log_type_t.error.getter();
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys7CVarArg_pGMd, &_ss23_ContiguousArrayStorageCys7CVarArg_pGMR);
      v61 = swift_allocObject();
      *(v61 + 16) = xmmword_2619891C0;
      *(v61 + 56) = MEMORY[0x277D837D0];
      *(v61 + 64) = lazy protocol witness table accessor for type String and conformance String();
      v62 = v200;
      *(v61 + 32) = v24;
      *(v61 + 40) = v62;
      os_log(_:dso:log:type:_:)();
    }

    v47 = v212;
    if (String.count.getter() < 1)
    {
      v48 = RIOPxrTfTokenEmpty();
    }

    else
    {
      v48 = RIOPxrTfTokenCreateWithCString();
    }

    v63 = v48;
    v64 = _s9RealityIO4PrimC14attributeValue2of4typexSgAA16ToolsFoundationsO5TokenV_xmtAA012UsdAttributeE0RzlFSb_Tt1B5();

    if (v64 != 2 && (v64 & 1) == 0)
    {

      specialized TimelineBuilder.clear(inputs:)();
    }

    type metadata accessor for Entity();
    v183 = v47;
    v186 = static Entity.__fromCore(_:)();
    dispatch thunk of Entity.components.getter();
    v65 = v197;
    Entity.ComponentSet.subscript.getter();
    v66 = *(v198 + 8);
    v198 += 8;
    v182 = v66;
    v66(v16, v194);
    v67 = v196;
    v68 = *(v196 + 48);
    if (v68(v11, 1, v65) == 1)
    {
      v69 = v195;
      AnimationLibraryComponent.init()();
      if (v68(v11, 1, v65) != 1)
      {
        outlined destroy of Any?(v11, &_s17RealityFoundation25AnimationLibraryComponentVSgMd, &_s17RealityFoundation25AnimationLibraryComponentVSgMR);
      }
    }

    else
    {
      v70 = *(v67 + 32);
      v69 = v195;
      v70(v195, v11, v65);
    }

    specialized Builder.addComponent<A>(component:)(v69);
    v71 = Prim.children.getter();
    v11 = v71;
    v184 = v21;
    v21 = (v71 & 0xFFFFFFFFFFFFFF8);
    v24 = v71 >> 62 ? __CocoaSet.count.getter() : *((v71 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v26 = 0;
    v185 = 0;
    v208 = v11 & 0xC000000000000001;
    *&v72 = 136315138;
    v201 = v72;
    v199 = MEMORY[0x277D84F90];
    v202 = v27;
    v203 = v24;
    v204 = a2;
    v205 = a1;
    if (!v24)
    {
      break;
    }

    while (1)
    {
      if (v208)
      {
        v78 = MEMORY[0x26670F670](v26, v11);
        v79 = v26 + 1;
        if (__OFADD__(v26, 1))
        {
          break;
        }

        goto LABEL_41;
      }

      if (v26 >= v21[2])
      {
        goto LABEL_115;
      }

      v78 = *(v11 + 8 * v26 + 32);

      v79 = v26 + 1;
      if (__OFADD__(v26, 1))
      {
        break;
      }

LABEL_41:
      v207 = v79;
      v16 = static os_log_type_t.info.getter();
      if (os_log_type_enabled(v27, v16))
      {
        v80 = swift_slowAlloc();
        v206 = swift_slowAlloc();
        *&v209 = v206;
        *v80 = v201;
        v81 = *(v78 + 16);
        v82 = v21;
        v83 = v11;
        v84 = RIOPxrUsdObjectCopyPath();
        v85 = RIOPxrSdfPathCopyString();
        v86 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v88 = v87;

        v11 = v83;
        v21 = v82;

        v27 = v202;
        v89 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v86, v88, &v209);
        a2 = v204;

        *(v80 + 4) = v89;
        v24 = v203;
        _os_log_impl(&dword_26187B000, v27, v16, "Start producing a Track for prim at path: %s", v80, 0xCu);
        v90 = v206;
        __swift_destroy_boxed_opaque_existential_0(v206);
        v91 = v90;
        a1 = v205;
        MEMORY[0x266713AD0](v91, -1, -1);
        MEMORY[0x266713AD0](v80, -1, -1);
      }

      v77 = TimelineBuilder.createActions(for:inputs:)(v78, a1);

      ++v26;
      if (v77)
      {
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v199 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v199[2] + 1, 1, v199);
        }

        v93 = v199[2];
        v92 = v199[3];
        if (v93 >= v92 >> 1)
        {
          v199 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v92 > 1), v93 + 1, 1, v199);
        }

        v94 = v199;
        v199[2] = v93 + 1;
        v94[v93 + 4] = v77;
        v26 = v207;
        v24 = v203;
        if (v203 == v207)
        {
          goto LABEL_29;
        }
      }

      else if (v24 == v26)
      {
        goto LABEL_29;
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
    swift_once();
  }

LABEL_29:

  a2 = v199;
  v26 = v199[2];
  if (v26)
  {
    *&v209 = MEMORY[0x277D84F90];
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v26, 0);
    v73 = 0;
    v16 = v209;
    v24 = a2 + 4;
    do
    {
      if (v73 >= a2[2])
      {
        goto LABEL_119;
      }

      v74 = v24[v73];
      *&v209 = v16;
      a1 = *(v16 + 2);
      v75 = *(v16 + 3);
      v21 = (a1 + 1);

      if (a1 >= v75 >> 1)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v75 > 1), a1 + 1, 1);
        v16 = v209;
      }

      v76 = &v16[16 * a1];
      *(v76 + 4) = v74;
      *(v76 + 5) = v73;
      *(v16 + 2) = v21;
      ++v73;
    }

    while (v26 != v73);
    v95 = MEMORY[0x277D84F90];
LABEL_53:
    v96 = 0;
    v206 = v21;
    v207 = v16 + 32;
    v11 = v95;
    v205 = v16;
    while (2)
    {
      if (v96 >= *(v16 + 2))
      {
        goto LABEL_116;
      }

      v208 = v96;
      v97 = &v207[16 * v96];
      v26 = *v97;
      v21 = v97[1];
      if (*v97 >> 62)
      {
        a1 = __CocoaSet.count.getter();
        if (!a1)
        {
          goto LABEL_72;
        }

LABEL_59:
        *&v209 = v95;

        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, a1 & ~(a1 >> 63), 0);
        if (a1 < 0)
        {
          goto LABEL_121;
        }

        v98 = v209;
        if ((v26 & 0xC000000000000001) != 0)
        {
          v99 = 0;
          do
          {
            v100 = MEMORY[0x26670F670](v99, v26);
            *&v209 = v98;
            v102 = *(v98 + 16);
            v101 = *(v98 + 24);
            if (v102 >= v101 >> 1)
            {
              v104 = v100;
              specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v101 > 1), v102 + 1, 1);
              v100 = v104;
              v95 = MEMORY[0x277D84F90];
              v98 = v209;
            }

            ++v99;
            *(v98 + 16) = v102 + 1;
            v103 = v98 + 16 * v102;
            *(v103 + 32) = v100;
            *(v103 + 40) = v21;
          }

          while (a1 != v99);

          v16 = v205;
        }

        else
        {
          v204 = v11;
          v105 = *(v209 + 16);
          v106 = 16 * v105;
          v107 = 32;
          do
          {
            v108 = *(v26 + v107);
            *&v209 = v98;
            v109 = *(v98 + 24);

            if (v105 >= v109 >> 1)
            {
              specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v109 > 1), v105 + 1, 1);
              v98 = v209;
            }

            *(v98 + 16) = v105 + 1;
            v110 = v98 + v106;
            *(v110 + 32) = v108;
            *(v110 + 40) = v21;
            v106 += 16;
            v107 += 8;
            ++v105;
            --a1;
          }

          while (a1);

          v95 = MEMORY[0x277D84F90];
          a2 = v199;
          v11 = v204;
          v16 = v205;
        }
      }

      else
      {
        a1 = *((v26 & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (a1)
        {
          goto LABEL_59;
        }

LABEL_72:
        v98 = v95;
      }

      v26 = *(v98 + 16);
      v24 = *(v11 + 16);
      v111 = v24 + v26;
      v21 = v206;
      if (__OFADD__(v24, v26))
      {
        goto LABEL_117;
      }

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      if (isUniquelyReferenced_nonNull_native && v111 <= *(v11 + 24) >> 1)
      {
        if (!*(v98 + 16))
        {
LABEL_54:

          if (v26)
          {
            goto LABEL_118;
          }

LABEL_55:
          v96 = v208 + 1;
          if ((v208 + 1) == v21)
          {
            goto LABEL_86;
          }

          continue;
        }
      }

      else
      {
        if (v24 <= v111)
        {
          v113 = v24 + v26;
        }

        else
        {
          v113 = v24;
        }

        v11 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(isUniquelyReferenced_nonNull_native, v113, 1, v11);
        if (!*(v98 + 16))
        {
          goto LABEL_54;
        }
      }

      break;
    }

    v114 = *(v11 + 16);
    if ((*(v11 + 24) >> 1) - v114 < v26)
    {
      goto LABEL_122;
    }

    v24 = (v11 + 16 * v114);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s10RealityKit17AnimationResourceC04animD0_Si11trackNumbertMd, &_s10RealityKit17AnimationResourceC04animD0_Si11trackNumbertMR);
    swift_arrayInitWithCopy();

    if (v26)
    {
      v115 = *(v11 + 16);
      v116 = __OFADD__(v115, v26);
      v117 = v115 + v26;
      if (v116)
      {
        goto LABEL_123;
      }

      *(v11 + 16) = v117;
    }

    goto LABEL_55;
  }

  v95 = MEMORY[0x277D84F90];
  v21 = *(MEMORY[0x277D84F90] + 16);
  v16 = MEMORY[0x277D84F90];
  v11 = MEMORY[0x277D84F90];
  if (v21)
  {
    goto LABEL_53;
  }

LABEL_86:

  *&v209 = v11;

  v24 = v185;
  specialized MutableCollection<>.sort(by:)(&v209);
  if (v24)
  {
    goto LABEL_127;
  }

  v26 = v209;
  v118 = *(v209 + 16);
  if (v118)
  {
    v16 = v11;
    *&v209 = v95;
    specialized ContiguousArray.reserveCapacity(_:)();
    a2 = 0;
    v11 = 32;
    while (a2 < *(v26 + 16))
    {
      a2 = (a2 + 1);
      a1 = *(v26 + v11);

      specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
      v21 = *(v209 + 16);
      specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
      specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      specialized ContiguousArray._endMutation()();
      v11 += 16;
      if (v118 == a2)
      {

        v119 = v209;
        if (v209 >> 62)
        {
          goto LABEL_101;
        }

        goto LABEL_92;
      }
    }

    goto LABEL_120;
  }

  v119 = MEMORY[0x277D84F90];
  if (MEMORY[0x277D84F90] >> 62)
  {
LABEL_101:
    v120 = __CocoaSet.count.getter();
    if (!v120)
    {
      goto LABEL_108;
    }
  }

  else
  {
LABEL_92:
    v120 = *((v119 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v120)
    {
      goto LABEL_108;
    }
  }

  v212 = v95;
  specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v120 & ~(v120 >> 63), 0);
  if (v120 < 0)
  {
    __break(1u);
LABEL_127:

    __break(1u);
    return result;
  }

  v121 = v212;
  if ((v119 & 0xC000000000000001) != 0)
  {
    for (i = 0; i != v120; ++i)
    {
      MEMORY[0x26670F670](i, v119);
      AnimationResource.definition.getter();
      swift_unknownObjectRelease();
      v212 = v121;
      v124 = *(v121 + 16);
      v123 = *(v121 + 24);
      if (v124 >= v123 >> 1)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v123 > 1), v124 + 1, 1);
        v121 = v212;
      }

      *(v121 + 16) = v124 + 1;
      outlined init with take of AnimationDefinition(&v209, v121 + 40 * v124 + 32);
    }
  }

  else
  {
    v125 = 32;
    do
    {
      v126 = *(v119 + v125);

      AnimationResource.definition.getter();

      v212 = v121;
      v128 = *(v121 + 16);
      v127 = *(v121 + 24);
      if (v128 >= v127 >> 1)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v127 > 1), v128 + 1, 1);
        v121 = v212;
      }

      *(v121 + 16) = v128 + 1;
      outlined init with take of AnimationDefinition(&v209, v121 + 40 * v128 + 32);
      v125 += 8;
      --v120;
    }

    while (v120);
  }

LABEL_108:

  type metadata accessor for AnimationResource();
  (*(v189 + 104))(v192, *MEMORY[0x277CDB418], v190);
  v212 = MEMORY[0x277D84F90];
  lazy protocol witness table accessor for type AnimationFillMode and conformance AnimationFillMode(&lazy protocol witness table cache variable for type AnimationFillMode and conformance AnimationFillMode, MEMORY[0x277CDB3E8]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay17RealityFoundation17AnimationFillModeVGMd, &_sSay17RealityFoundation17AnimationFillModeVGMR);
  lazy protocol witness table accessor for type [AnimationFillMode] and conformance [A](&lazy protocol witness table cache variable for type [AnimationFillMode] and conformance [A], &_sSay17RealityFoundation17AnimationFillModeVGMd, &_sSay17RealityFoundation17AnimationFillModeVGMR);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  v210 = type metadata accessor for AnimationGroup();
  v211 = MEMORY[0x277CDB248];
  __swift_allocate_boxed_opaque_existential_1(&v209);
  AnimationGroup.init(group:name:repeatMode:fillMode:trimStart:trimEnd:trimDuration:offset:delay:speed:)();
  v129 = static AnimationResource.generate(with:)();
  __swift_destroy_boxed_opaque_existential_0(&v209);
  v130 = v184;
  v131 = v184[2];
  v132 = RIOPxrUsdObjectCopyPath();
  v133 = RIOPxrSdfPathCopyString();
  v134 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v136 = v135;

  specialized TimelineBuilder.printDebug(_:key:)(v129, v134, v136);

  v137 = v130[2];
  v138 = RIOPxrUsdObjectCopyPath();
  v139 = RIOPxrSdfPathCopyString();
  v140 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v142 = v141;

  v143 = v195;
  v144 = AnimationLibraryComponent.animations.modify();
  MEMORY[0x26670ECE0](v129, v140, v142);
  v144(&v209, 0);
  v145 = v130[2];
  v146 = RIOPxrUsdObjectCopyPath();
  v147 = v130;

  v148 = RIOPxrSdfPathCopyString();
  v149 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v151 = v150;

  *&v209 = v149;
  *(&v209 + 1) = v151;

  MEMORY[0x26670F080](0xD000000000000018, 0x80000002619947E0);

  v152 = v209;
  v153 = AnimationResource.repeat(duration:)();
  v154 = AnimationLibraryComponent.animations.modify();
  MEMORY[0x26670ECE0](v153, v152, *(&v152 + 1));
  v154(&v209, 0);
  v155 = v187;
  dispatch thunk of Entity.components.getter();
  v156 = v197;
  Entity.ComponentSet.set<A>(_:)();
  v182(v155, v194);
  static os_log_type_t.info.getter();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys7CVarArg_pGMd, &_ss23_ContiguousArrayStorageCys7CVarArg_pGMR);
  v157 = swift_allocObject();
  *(v157 + 16) = xmmword_2619891C0;
  (*(v196 + 16))(v188, v143, v156);
  v158 = String.init<A>(describing:)();
  v160 = v159;
  *(v157 + 56) = MEMORY[0x277D837D0];
  *(v157 + 64) = lazy protocol witness table accessor for type String and conformance String();
  *(v157 + 32) = v158;
  *(v157 + 40) = v160;
  v161 = v202;
  os_log(_:dso:log:_:_:)();

  v162 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v161, v162))
  {
    v163 = swift_slowAlloc();
    v164 = swift_slowAlloc();
    *&v209 = v164;
    *v163 = v201;
    Entity.entityPath.getter();
    v165 = MEMORY[0x26670F180]();
    v167 = v166;

    v168 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v165, v167, &v209);

    *(v163 + 4) = v168;
    _os_log_impl(&dword_26187B000, v161, v162, "Storing onto entity with path: %s", v163, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v164);
    MEMORY[0x266713AD0](v164, -1, -1);
    MEMORY[0x266713AD0](v163, -1, -1);
  }

  v169 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v161, v169))
  {
    v170 = swift_slowAlloc();
    v171 = swift_slowAlloc();
    *&v209 = v171;
    *v170 = v201;
    v172 = v147[2];
    v173 = RIOPxrUsdObjectCopyPath();
    v174 = RIOPxrSdfPathCopyString();
    v175 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v177 = v176;

    v178 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v175, v177, &v209);

    *(v170 + 4) = v178;
    _os_log_impl(&dword_26187B000, v161, v169, "End TimelineBuilder for prim at path: %s", v170, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v171);
    MEMORY[0x266713AD0](v171, -1, -1);
    MEMORY[0x266713AD0](v170, -1, -1);

    v179 = &v211;
  }

  else
  {

    v179 = &v213;
  }

  v180 = *(v179 - 32);

  return (*(v196 + 8))(v195, v197);
}

BOOL closure #4 in closure #1 in TimelineBuilder.run(inputs:)(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *a2;
  v5 = a2[1];
  AnimationResource.definition.getter();
  __swift_project_boxed_opaque_existential_1(v15, v16);
  dispatch thunk of AnimationDefinition.duration.getter();
  v7 = v6;
  __swift_destroy_boxed_opaque_existential_0(v15);
  AnimationResource.definition.getter();
  __swift_project_boxed_opaque_existential_1(v15, v16);
  dispatch thunk of AnimationDefinition.duration.getter();
  v9 = v8;
  __swift_destroy_boxed_opaque_existential_0(v15);
  if (v7 < v9)
  {
    return 1;
  }

  if (v7 != v9)
  {
    return 0;
  }

  AnimationResource.definition.getter();
  __swift_project_boxed_opaque_existential_1(v15, v16);
  dispatch thunk of AnimationDefinition.delay.getter();
  v11 = v10;
  __swift_destroy_boxed_opaque_existential_0(v15);
  AnimationResource.definition.getter();
  __swift_project_boxed_opaque_existential_1(v15, v16);
  dispatch thunk of AnimationDefinition.delay.getter();
  v13 = v12;
  __swift_destroy_boxed_opaque_existential_0(v15);
  return v11 < v13 || v11 == v13 && v3 < v5;
}

uint64_t Entity.entityPath.getter()
{
  type metadata accessor for Entity();
  if (HasHierarchy.parent.getter())
  {
    v0 = Entity.entityPath.getter();
  }

  else
  {
    v0 = MEMORY[0x277D84F90];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySSGMd, &_ss23_ContiguousArrayStorageCySSGMR);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_2619891C0;
  *(inited + 32) = dispatch thunk of Entity.name.getter();
  *(inited + 40) = v2;
  specialized Array.append<A>(contentsOf:)(inited);
  return v0;
}

Swift::Int protocol witness for Builder.outputDescriptors() in conformance TimelineBuilder()
{
  v0 = _sSh21_nonEmptyArrayLiteralShyxGSayxG_tcfC9RealityIO16OutputDescriptorO_Tt0g5Tf4g_n(&outlined read-only object #0 of protocol witness for Builder.outputDescriptors() in conformance TimelineBuilder);
  outlined destroy of OutputDescriptor(&unk_287410688);
  return v0;
}

uint64_t protocol witness for Builder.run(inputs:) in conformance TimelineBuilder(uint64_t a1)
{
  v2 = *v1;
  v7[2] = a1;
  v8 = v1;
  v9 = v2;
  v3 = *(a1 + 56);
  v4 = swift_allocObject();
  *(v4 + 16) = partial apply for closure #1 in TimelineBuilder.run(inputs:);
  *(v4 + 24) = v7;
  aBlock[4] = partial apply for thunk for @callee_guaranteed () -> ();
  aBlock[5] = v4;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = thunk for @escaping @callee_guaranteed () -> ();
  aBlock[3] = &block_descriptor_2;
  v5 = _Block_copy(aBlock);

  RIOBuilderInputsPerformBlockSyncOnEngineQueue();
  _Block_release(v5);
  LOBYTE(v3) = swift_isEscapingClosureAtFileLocation();

  if (v3)
  {
    __break(1u);
  }

  return result;
}

id one-time initialization function for primType()
{
  if (String.count.getter() < 1)
  {
    result = RIOPxrTfTokenEmpty();
  }

  else
  {
    result = RIOPxrTfTokenCreateWithCString();
  }

  static TimelineConstants.Timeline.primType = result;
  return result;
}

{
  if (String.count.getter() < 1)
  {
    result = RIOPxrTfTokenEmpty();
  }

  else
  {
    result = RIOPxrTfTokenCreateWithCString();
  }

  static TimelineConstants.Action.primType = result;
  return result;
}

{
  if (String.count.getter() < 1)
  {
    result = RIOPxrTfTokenEmpty();
  }

  else
  {
    result = RIOPxrTfTokenCreateWithCString();
  }

  static MeshSortingConstants.MeshSortingGroup.primType = result;
  return result;
}

{
  if (String.count.getter() < 1)
  {
    result = RIOPxrTfTokenEmpty();
  }

  else
  {
    result = RIOPxrTfTokenCreateWithCString();
  }

  static AudioConstants.AudioFile.primType = result;
  return result;
}

{
  if (String.count.getter() < 1)
  {
    result = RIOPxrTfTokenEmpty();
  }

  else
  {
    result = RIOPxrTfTokenCreateWithCString();
  }

  static AudioConstants.AudioFileGroup.primType = result;
  return result;
}

{
  if (String.count.getter() < 1)
  {
    result = RIOPxrTfTokenEmpty();
  }

  else
  {
    result = RIOPxrTfTokenCreateWithCString();
  }

  static AudioConstants.MixGroup.primType = result;
  return result;
}

id static TimelineConstants.Timeline.primType.getter@<X0>(void *a1@<X0>, void **a2@<X1>, void **a3@<X8>)
{
  if (*a1 != -1)
  {
    v6 = a2;
    v7 = a3;
    swift_once();
    a3 = v7;
    a2 = v6;
  }

  v4 = *a2;
  *a3 = *a2;

  return v4;
}

uint64_t getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(uint64_t a1, unint64_t a2, uint64_t *a3)
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
  __swift_destroy_boxed_opaque_existential_0(v11);
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
  v4 = specialized _copyCollectionToContiguousArray<A>(_:)(a1, a2);
  specialized Array.append<A>(contentsOf:)(&outlined read-only object #0 of _StringGuts._allocateForDeconstruct());
  result = v4;
  v3 = *(v4 + 16) - 1;
  return result;
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
  v7 = *v1;
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
    v12 = v4 + v2;
  }

  else
  {
    v12 = v4;
  }

  result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(result, v12, 1, v3);
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
  v8 = *(v3 + 16);
  if ((*(v3 + 24) >> 1) - v8 < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  memcpy((v3 + v8 + 32), (v6 + 32), v2);

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v9 = *(v3 + 16);
  v10 = __OFADD__(v9, v2);
  v11 = v9 + v2;
  if (!v10)
  {
    *(v3 + 16) = v11;
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
  v7 = *v1;
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
  if ((*(v3 + 24) >> 1) - *(v3 + 16) < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  swift_arrayInitWithCopy();

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
  v7 = *v1;
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
  if ((*(v3 + 24) >> 1) - *(v3 + 16) < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  swift_arrayInitWithCopy();

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
  v7 = *v1;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  if (isUniquelyReferenced_nonNull_native && v5 <= v3[3] >> 1)
  {
    if (*(v6 + 16))
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

  if (v4 <= v5)
  {
    v16 = v4 + v2;
  }

  else
  {
    v16 = v4;
  }

  v3 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(isUniquelyReferenced_nonNull_native, v16, 1, v3);
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
  v9 = (v3[3] >> 1) - v3[2];
  result = type metadata accessor for ImportSession.EvaluationFault(0);
  v10 = *(result - 8);
  if (v9 < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v11 = (*(v10 + 80) + 32) & ~*(v10 + 80);
  v12 = *(v10 + 72);
  swift_arrayInitWithCopy();

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v13 = v3[2];
  v14 = __OFADD__(v13, v2);
  v15 = v13 + v2;
  if (!v14)
  {
    v3[2] = v15;
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

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys5UInt8VGMd, &_ss23_ContiguousArrayStorageCys5UInt8VGMR);
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys5UInt8VGMd, &_ss23_ContiguousArrayStorageCys5UInt8VGMR);
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySnySiGGMd, &_ss23_ContiguousArrayStorageCySnySiGGMR);
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy9RealityIO4HalfVGMd, &_ss23_ContiguousArrayStorageCy9RealityIO4HalfVGMR);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 29;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 2);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[4 * v8])
    {
      memmove(v13, v14, 4 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, 4 * v8);
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyypGMd, &_ss23_ContiguousArrayStorageCyypGMR);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 1;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 5);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[32 * v8])
    {
      memmove(v13, v14, 32 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySSGMd, &_ss23_ContiguousArrayStorageCySSGMR);
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
    swift_arrayInitWithCopy();
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySdGMd, &_ss23_ContiguousArrayStorageCySdGMR);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 25;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 3);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[8 * v8])
    {
      memmove(v13, v14, 8 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, 8 * v8);
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySfGMd, &_ss23_ContiguousArrayStorageCySfGMR);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 29;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 2);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[4 * v8])
    {
      memmove(v13, v14, 4 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, 4 * v8);
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy9RealityIO5StageC16MissingReferenceVGMd, &_ss23_ContiguousArrayStorageCy9RealityIO5StageC16MissingReferenceVGMR);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 88);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[88 * v8])
    {
      memmove(v12, v13, 88 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySbGMd, &_ss23_ContiguousArrayStorageCySbGMR);
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys5SIMD2Vys5Int32VGGMd, &_ss23_ContiguousArrayStorageCys5SIMD2Vys5Int32VGGMR);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 25;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 3);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[8 * v8])
    {
      memmove(v13, v14, 8 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, 8 * v8);
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys5SIMD2VySfGGMd, &_ss23_ContiguousArrayStorageCys5SIMD2VySfGGMR);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 25;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 3);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[8 * v8])
    {
      memmove(v13, v14, 8 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, 8 * v8);
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys5SIMD2VySdGGMd, &_ss23_ContiguousArrayStorageCys5SIMD2VySdGGMR);
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySo10simd_quatfaGMd, &_ss23_ContiguousArrayStorageCySo10simd_quatfaGMR);
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySo10simd_quatdaGMd, &_ss23_ContiguousArrayStorageCySo10simd_quatdaGMR);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 1;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 5);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[32 * v8])
    {
      memmove(v13, v14, 32 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, 32 * v8);
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySo14simd_double2x2aGMd, &_ss23_ContiguousArrayStorageCySo14simd_double2x2aGMR);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 1;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 5);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[32 * v8])
    {
      memmove(v13, v14, 32 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, 32 * v8);
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySo14simd_double3x3aGMd, &_ss23_ContiguousArrayStorageCySo14simd_double3x3aGMR);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 96);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[96 * v8])
    {
      memmove(v12, v13, 96 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v12, v13, 96 * v8);
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySo14simd_double4x4aGMd, &_ss23_ContiguousArrayStorageCySo14simd_double4x4aGMR);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 + 95;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 7);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[128 * v8])
    {
      memmove(v13, v14, v8 << 7);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, v8 << 7);
  }

  return v10;
}