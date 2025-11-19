uint64_t closure #1 in Inputs.fetchBuildersAndOutputNames(key:)@<X0>(void **a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1;
  v4 = RIOBuilderGetSwiftObject();
  if (!v4)
  {
    goto LABEL_4;
  }

  v5 = v4;
  swift_getObjectType();
  result = swift_conformsToProtocol2();
  if (!result)
  {
    swift_unknownObjectRelease();
LABEL_4:
    v5 = specialized static _BaseBuilder.create(from:)(v3);
    result = v7;
  }

  *a2 = v5;
  a2[1] = result;
  return result;
}

uint64_t Inputs.deinit()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v3 = *(v0 + 32);
  v4 = *(v0 + 40);

  return v0;
}

uint64_t Inputs.__deallocating_deinit()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v3 = *(v0 + 32);
  v4 = *(v0 + 40);

  return swift_deallocClassInstance();
}

uint64_t Inputs.createCubeMapTextureAsset(on:for:)(uint64_t a1, uint64_t *a2)
{
  v3 = *a2;
  v4 = *(v2 + 56);
  v5 = *(a1 + 16);
  return RIOBuilderInputsCreateCubeMapTextureAsset();
}

id Inputs.StageDelta.primDelta.getter@<X0>(void *a1@<X8>)
{
  v2 = v1[2];
  v4 = v1[3];
  *a1 = v1[1];
  a1[1] = v2;
  a1[2] = v4;

  return v4;
}

uint64_t Inputs.StageDelta.hash(into:)(__int128 *a1)
{
  v3 = *v1;
  v4 = v1[1];
  v5 = v1[2];
  specialized Set.hash(into:)(a1, v3);
  specialized Set.hash(into:)(a1, v4);

  return specialized Set.hash(into:)(a1, v5);
}

uint64_t static Inputs.StageDelta.== infix(_:_:)(uint64_t *a1, uint64_t *a2)
{
  v2 = a1[1];
  v3 = a1[2];
  v4 = a2[1];
  v5 = a2[2];
  if ((_sSh2eeoiySbShyxG_ABtFZ9RealityIO16ToolsFoundationsO5TokenV_Tt1g5(*a1, *a2) & 1) == 0 || (_sSh2eeoiySbShyxG_ABtFZ9RealityIO16ToolsFoundationsO5TokenV_Tt1g5(v2, v4) & 1) == 0)
  {
    return 0;
  }

  return _sSh2eeoiySbShyxG_ABtFZ9RealityIO6InputsC13PropertyDeltaV_Tt1g5(v3, v5);
}

uint64_t static Inputs.PrimDelta.== infix(_:_:)(uint64_t *a1, uint64_t *a2)
{
  v2 = a1[1];
  v3 = a2[1];
  if ((_sSh2eeoiySbShyxG_ABtFZ9RealityIO16ToolsFoundationsO5TokenV_Tt1g5(*a1, *a2) & 1) == 0)
  {
    return 0;
  }

  return _sSh2eeoiySbShyxG_ABtFZ9RealityIO6InputsC13PropertyDeltaV_Tt1g5(v2, v3);
}

uint64_t Inputs.PrimDelta.init(core:)@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = a1;
  v4 = RIOBuilderPrimDeltaCopyDirtyMetadata();
  objc_opt_self();
  v5 = swift_dynamicCastObjCClass();
  v6 = MEMORY[0x277D84F90];
  if (v5)
  {
    *&v42 = 0;
    type metadata accessor for RIOPxrTfTokenRef(0);
    static Array._conditionallyBridgeFromObjectiveC(_:result:)();

    v7 = v6;
    if (!(v6 >> 62))
    {
      goto LABEL_3;
    }

LABEL_12:
    v8 = __CocoaSet.count.getter();
    if (v8)
    {
      goto LABEL_4;
    }

LABEL_13:

    v10 = MEMORY[0x277D84F90];
    goto LABEL_19;
  }

  v7 = MEMORY[0x277D84F90];
  if (MEMORY[0x277D84F90] >> 62)
  {
    goto LABEL_12;
  }

LABEL_3:
  v8 = *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v8)
  {
    goto LABEL_13;
  }

LABEL_4:
  *&v42 = v6;
  result = specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v8 & ~(v8 >> 63), 0);
  if (v8 < 0)
  {
    __break(1u);
    goto LABEL_36;
  }

  v10 = v42;
  if ((v7 & 0xC000000000000001) != 0)
  {
    for (i = 0; i != v8; ++i)
    {
      v12 = MEMORY[0x26670F670](i, v7);
      *&v42 = v10;
      v14 = *(v10 + 16);
      v13 = *(v10 + 24);
      if (v14 >= v13 >> 1)
      {
        v15 = v3;
        v16 = a2;
        v17 = v12;
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v13 > 1), v14 + 1, 1);
        v12 = v17;
        a2 = v16;
        v3 = v15;
        v6 = MEMORY[0x277D84F90];
        v10 = v42;
      }

      *(v10 + 16) = v14 + 1;
      *(v10 + 8 * v14 + 32) = v12;
    }
  }

  else
  {
    v18 = v3;
    v19 = a2;
    v20 = 32;
    do
    {
      v21 = *(v7 + v20);
      *&v42 = v10;
      v23 = *(v10 + 16);
      v22 = *(v10 + 24);
      v24 = v21;
      if (v23 >= v22 >> 1)
      {
        v25 = v22 > 1;
        v26 = v24;
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(v25, v23 + 1, 1);
        v24 = v26;
        v10 = v42;
      }

      *(v10 + 16) = v23 + 1;
      *(v10 + 8 * v23 + 32) = v24;
      v20 += 8;
      --v8;
    }

    while (v8);

    a2 = v19;
    v3 = v18;
    v6 = MEMORY[0x277D84F90];
  }

LABEL_19:
  v27 = _sShyShyxGqd__nc7ElementQyd__RszSTRd__lufC9RealityIO16ToolsFoundationsO5TokenV_SayAHGTt0g5Tf4g_n(v10);

  v28 = RIOBuilderPrimDeltaCopyPropertyDeltas();

  objc_opt_self();
  if (swift_dynamicCastObjCClass())
  {
    *&v42 = 0;
    type metadata accessor for RIOBuilderPropertyDeltaRef(0);
    static Array._conditionallyBridgeFromObjectiveC(_:result:)();

    v29 = v6;
    if (!(v6 >> 62))
    {
      goto LABEL_21;
    }
  }

  else
  {

    v29 = MEMORY[0x277D84F90];
    if (!(MEMORY[0x277D84F90] >> 62))
    {
LABEL_21:
      v30 = *((v29 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v30)
      {
        goto LABEL_22;
      }

LABEL_33:

      v32 = MEMORY[0x277D84F90];
LABEL_34:
      v39 = _sShyShyxGqd__nc7ElementQyd__RszSTRd__lufC9RealityIO6InputsC13PropertyDeltaV_SayAHGTt0g5Tf4g_n(v32);

      *a2 = v27;
      a2[1] = v39;
      a2[2] = v3;
      return result;
    }
  }

  v30 = __CocoaSet.count.getter();
  if (!v30)
  {
    goto LABEL_33;
  }

LABEL_22:
  v44 = v6;
  result = specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v30 & ~(v30 >> 63), 0);
  if ((v30 & 0x8000000000000000) == 0)
  {
    v41 = v27;
    v31 = 0;
    v32 = v44;
    do
    {
      if ((v29 & 0xC000000000000001) != 0)
      {
        v33 = MEMORY[0x26670F670](v31, v29);
      }

      else
      {
        v33 = *(v29 + 8 * v31 + 32);
      }

      Inputs.PropertyDelta.init(core:)(v33, &v42);
      v34 = v42;
      v35 = v43;
      v44 = v32;
      v37 = *(v32 + 16);
      v36 = *(v32 + 24);
      if (v37 >= v36 >> 1)
      {
        v40 = v42;
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v36 > 1), v37 + 1, 1);
        v34 = v40;
        v32 = v44;
      }

      ++v31;
      *(v32 + 16) = v37 + 1;
      v38 = v32 + 24 * v37;
      *(v38 + 32) = v34;
      *(v38 + 48) = v35;
    }

    while (v30 != v31);

    v27 = v41;
    goto LABEL_34;
  }

LABEL_36:
  __break(1u);
  return result;
}

Swift::Int Inputs.StageDelta.hashValue.getter()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  Hasher.init(_seed:)();
  specialized Set.hash(into:)(v5, v1);
  specialized Set.hash(into:)(v5, v2);
  specialized Set.hash(into:)(v5, v3);
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance Inputs.StageDelta()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  Hasher.init(_seed:)();
  specialized Set.hash(into:)(v5, v1);
  specialized Set.hash(into:)(v5, v2);
  specialized Set.hash(into:)(v5, v3);
  return Hasher._finalize()();
}

uint64_t protocol witness for Hashable.hash(into:) in conformance Inputs.StageDelta(__int128 *a1)
{
  v3 = *v1;
  v4 = v1[1];
  v5 = v1[2];
  specialized Set.hash(into:)(a1, v3);
  specialized Set.hash(into:)(a1, v4);

  return specialized Set.hash(into:)(a1, v5);
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance Inputs.StageDelta()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  Hasher.init(_seed:)();
  specialized Set.hash(into:)(v5, v1);
  specialized Set.hash(into:)(v5, v2);
  specialized Set.hash(into:)(v5, v3);
  return Hasher._finalize()();
}

uint64_t protocol witness for static Equatable.== infix(_:_:) in conformance Inputs.StageDelta(uint64_t *a1, uint64_t *a2)
{
  v2 = a1[1];
  v3 = a1[2];
  v4 = a2[1];
  v5 = a2[2];
  if ((_sSh2eeoiySbShyxG_ABtFZ9RealityIO16ToolsFoundationsO5TokenV_Tt1g5(*a1, *a2) & 1) == 0 || (_sSh2eeoiySbShyxG_ABtFZ9RealityIO16ToolsFoundationsO5TokenV_Tt1g5(v2, v4) & 1) == 0)
  {
    return 0;
  }

  return _sSh2eeoiySbShyxG_ABtFZ9RealityIO6InputsC13PropertyDeltaV_Tt1g5(v3, v5);
}

uint64_t Inputs.PrimDelta.hash(into:)(__int128 *a1)
{
  v3 = *v1;
  v4 = v1[1];
  specialized Set.hash(into:)(a1, v3);

  return specialized Set.hash(into:)(a1, v4);
}

void Inputs.PropertyDelta.init(core:)(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = a1;
  v4 = RIOBuilderPropertyDeltaCopyDirtyMetadata();
  objc_opt_self();
  v5 = swift_dynamicCastObjCClass();
  v6 = MEMORY[0x277D84F90];
  if (v5)
  {
    type metadata accessor for RIOPxrTfTokenRef(0);
    static Array._conditionallyBridgeFromObjectiveC(_:result:)();

    v7 = v6;
    if (!(v6 >> 62))
    {
      goto LABEL_3;
    }
  }

  else
  {

    v7 = MEMORY[0x277D84F90];
    if (!(MEMORY[0x277D84F90] >> 62))
    {
LABEL_3:
      v8 = *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v8)
      {
        goto LABEL_4;
      }

LABEL_13:

      v9 = MEMORY[0x277D84F90];
LABEL_19:
      v21 = _sShyShyxGqd__nc7ElementQyd__RszSTRd__lufC9RealityIO16ToolsFoundationsO5TokenV_SayAHGTt0g5Tf4g_n(v9);

      v22 = RIOBuilderPropertyDeltaCopyPropertyName();

      *a2 = v21;
      a2[1] = v22;
      a2[2] = v3;
      return;
    }
  }

  v8 = __CocoaSet.count.getter();
  if (!v8)
  {
    goto LABEL_13;
  }

LABEL_4:
  specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v8 & ~(v8 >> 63), 0);
  if ((v8 & 0x8000000000000000) == 0)
  {
    v9 = v6;
    if ((v7 & 0xC000000000000001) != 0)
    {
      for (i = 0; i != v8; ++i)
      {
        v11 = MEMORY[0x26670F670](i, v7);
        v13 = *(v9 + 16);
        v12 = *(v9 + 24);
        if (v13 >= v12 >> 1)
        {
          v14 = v11;
          specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v12 > 1), v13 + 1, 1);
          v11 = v14;
        }

        *(v9 + 16) = v13 + 1;
        *(v9 + 8 * v13 + 32) = v11;
      }
    }

    else
    {
      v15 = 32;
      do
      {
        v16 = *(v6 + 16);
        v17 = *(v6 + 24);
        v18 = *(v7 + v15);
        if (v16 >= v17 >> 1)
        {
          v19 = v17 > 1;
          v20 = v18;
          specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(v19, v16 + 1, 1);
          v18 = v20;
        }

        *(v6 + 16) = v16 + 1;
        *(v6 + 8 * v16 + 32) = v18;
        v15 += 8;
        --v8;
      }

      while (v8);
    }

    goto LABEL_19;
  }

  __break(1u);
}

Swift::Int Inputs.PrimDelta.hashValue.getter()
{
  v1 = *v0;
  v2 = v0[1];
  Hasher.init(_seed:)();
  specialized Set.hash(into:)(v4, v1);
  specialized Set.hash(into:)(v4, v2);
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance Inputs.PrimDelta()
{
  v1 = *v0;
  v2 = v0[1];
  Hasher.init(_seed:)();
  specialized Set.hash(into:)(v4, v1);
  specialized Set.hash(into:)(v4, v2);
  return Hasher._finalize()();
}

uint64_t protocol witness for Hashable.hash(into:) in conformance Inputs.PrimDelta(__int128 *a1)
{
  v3 = *v1;
  v4 = v1[1];
  specialized Set.hash(into:)(a1, v3);

  return specialized Set.hash(into:)(a1, v4);
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance Inputs.PrimDelta()
{
  v1 = *v0;
  v2 = v0[1];
  Hasher.init(_seed:)();
  specialized Set.hash(into:)(v4, v1);
  specialized Set.hash(into:)(v4, v2);
  return Hasher._finalize()();
}

uint64_t protocol witness for static Equatable.== infix(_:_:) in conformance Inputs.PrimDelta(uint64_t *a1, uint64_t *a2)
{
  v2 = a1[1];
  v3 = a2[1];
  if ((_sSh2eeoiySbShyxG_ABtFZ9RealityIO16ToolsFoundationsO5TokenV_Tt1g5(*a1, *a2) & 1) == 0)
  {
    return 0;
  }

  return _sSh2eeoiySbShyxG_ABtFZ9RealityIO6InputsC13PropertyDeltaV_Tt1g5(v2, v3);
}

id Inputs.PropertyDelta.propertyName.getter@<X0>(void *a1@<X8>)
{
  v2 = *(v1 + 8);
  *a1 = v2;
  return v2;
}

uint64_t Inputs.PropertyDelta.hash(into:)(__int128 *a1)
{
  v2 = *v1;
  v3 = v1[1];
  specialized Set.hash(into:)(a1, v2);
  type metadata accessor for RIOPxrTfTokenRef(0);
  lazy protocol witness table accessor for type RIOPxrTfTokenRef and conformance RIOPxrTfTokenRef();
  return _CFObject.hash(into:)();
}

uint64_t static Inputs.PropertyDelta.== infix(_:_:)(uint64_t *a1, uint64_t *a2)
{
  v2 = a1[1];
  v3 = a2[1];
  if ((_sSh2eeoiySbShyxG_ABtFZ9RealityIO16ToolsFoundationsO5TokenV_Tt1g5(*a1, *a2) & 1) == 0)
  {
    return 0;
  }

  type metadata accessor for RIOPxrTfTokenRef(0);
  lazy protocol witness table accessor for type RIOPxrTfTokenRef and conformance RIOPxrTfTokenRef();
  v4 = v2;
  v5 = v3;
  v6 = static _CFObject.== infix(_:_:)();

  return v6 & 1;
}

uint64_t Inputs.PropertyDelta.hashValue.getter()
{
  v2 = *v0;
  v3 = *(v0 + 2);
  lazy protocol witness table accessor for type Inputs.PropertyDelta and conformance Inputs.PropertyDelta();
  return dispatch thunk of Hashable._rawHashValue(seed:)();
}

uint64_t protocol witness for Hashable.hashValue.getter in conformance Inputs.PropertyDelta()
{
  v2 = *v0;
  v3 = *(v0 + 2);
  return dispatch thunk of Hashable._rawHashValue(seed:)();
}

uint64_t protocol witness for Hashable.hash(into:) in conformance Inputs.PropertyDelta(__int128 *a1)
{
  v2 = *v1;
  v3 = v1[1];
  specialized Set.hash(into:)(a1, v2);
  type metadata accessor for RIOPxrTfTokenRef(0);
  lazy protocol witness table accessor for type RIOPxrTfTokenRef and conformance RIOPxrTfTokenRef();
  return _CFObject.hash(into:)();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance Inputs.PropertyDelta()
{
  v1 = *v0;
  v2 = v0[1];
  Hasher.init(_seed:)();
  specialized Set.hash(into:)(v4, v1);
  type metadata accessor for RIOPxrTfTokenRef(0);
  lazy protocol witness table accessor for type RIOPxrTfTokenRef and conformance RIOPxrTfTokenRef();
  _CFObject.hash(into:)();
  return Hasher._finalize()();
}

uint64_t protocol witness for static Equatable.== infix(_:_:) in conformance Inputs.PropertyDelta(uint64_t *a1, uint64_t *a2)
{
  v2 = a1[1];
  v3 = a2[1];
  if ((_sSh2eeoiySbShyxG_ABtFZ9RealityIO16ToolsFoundationsO5TokenV_Tt1g5(*a1, *a2) & 1) == 0)
  {
    return 0;
  }

  type metadata accessor for RIOPxrTfTokenRef(0);
  lazy protocol witness table accessor for type RIOPxrTfTokenRef and conformance RIOPxrTfTokenRef();
  v4 = v2;
  v5 = v3;
  v6 = static _CFObject.== infix(_:_:)();

  return v6 & 1;
}

uint64_t block_copy_helper_24(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

unint64_t lazy protocol witness table accessor for type Inputs.StageDelta and conformance Inputs.StageDelta()
{
  result = lazy protocol witness table cache variable for type Inputs.StageDelta and conformance Inputs.StageDelta;
  if (!lazy protocol witness table cache variable for type Inputs.StageDelta and conformance Inputs.StageDelta)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Inputs.StageDelta and conformance Inputs.StageDelta);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type Inputs.PrimDelta and conformance Inputs.PrimDelta()
{
  result = lazy protocol witness table cache variable for type Inputs.PrimDelta and conformance Inputs.PrimDelta;
  if (!lazy protocol witness table cache variable for type Inputs.PrimDelta and conformance Inputs.PrimDelta)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Inputs.PrimDelta and conformance Inputs.PrimDelta);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for Inputs.StageDelta(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 40))
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

uint64_t storeEnumTagSinglePayload for Inputs.StageDelta(uint64_t result, int a2, int a3)
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
      *result = (a2 - 1);
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

unint64_t lazy protocol witness table accessor for type [RIOBuilderRef] and conformance [A]()
{
  result = lazy protocol witness table cache variable for type [RIOBuilderRef] and conformance [A];
  if (!lazy protocol witness table cache variable for type [RIOBuilderRef] and conformance [A])
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_sSaySo13RIOBuilderRefaGMd, &_sSaySo13RIOBuilderRefaGMR);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type [RIOBuilderRef] and conformance [A]);
  }

  return result;
}

uint64_t __RKEntityActionAnimationStyle.init(inputs:)@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10RealityKit30__RKEntityActionAnimationStyleOSgMd, &_s10RealityKit30__RKEntityActionAnimationStyleOSgMR);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v6 = &v12 - v5;
  _s9RealityIO6InputsC17valueForAttribute5named4type14requestContextxSS_xmAC020PropertyValueRequestJ0OtKAA03UsdfL0RzlFAA16ToolsFoundationsO5TokenV_Tt1g5(&v13);
  if (v1)
  {

LABEL_5:
    lazy protocol witness table accessor for type __RKEntityActionAnimationStyle.AnimationStyleLoadingError and conformance __RKEntityActionAnimationStyle.AnimationStyleLoadingError();
    swift_allocError();
    swift_willThrow();
  }

  v7 = v13;
  v8 = RIOPxrTfTokenCopyString();
  static String._unconditionallyBridgeFromObjectiveC(_:)();

  __RKEntityActionAnimationStyle.init(rawValue:)();
  v9 = type metadata accessor for __RKEntityActionAnimationStyle();
  v10 = *(v9 - 8);
  if ((*(v10 + 48))(v6, 1, v9) == 1)
  {
    outlined destroy of __RKEntityActionAnimationStyle?(v6);
    goto LABEL_5;
  }

  return (*(v10 + 32))(a1, v6, v9);
}

unint64_t lazy protocol witness table accessor for type __RKEntityActionAnimationStyle.AnimationStyleLoadingError and conformance __RKEntityActionAnimationStyle.AnimationStyleLoadingError()
{
  result = lazy protocol witness table cache variable for type __RKEntityActionAnimationStyle.AnimationStyleLoadingError and conformance __RKEntityActionAnimationStyle.AnimationStyleLoadingError;
  if (!lazy protocol witness table cache variable for type __RKEntityActionAnimationStyle.AnimationStyleLoadingError and conformance __RKEntityActionAnimationStyle.AnimationStyleLoadingError)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type __RKEntityActionAnimationStyle.AnimationStyleLoadingError and conformance __RKEntityActionAnimationStyle.AnimationStyleLoadingError);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type __RKEntityActionAnimationStyle.AnimationStyleLoadingError and conformance __RKEntityActionAnimationStyle.AnimationStyleLoadingError;
  if (!lazy protocol witness table cache variable for type __RKEntityActionAnimationStyle.AnimationStyleLoadingError and conformance __RKEntityActionAnimationStyle.AnimationStyleLoadingError)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type __RKEntityActionAnimationStyle.AnimationStyleLoadingError and conformance __RKEntityActionAnimationStyle.AnimationStyleLoadingError);
  }

  return result;
}

uint64_t outlined destroy of __RKEntityActionAnimationStyle?(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10RealityKit30__RKEntityActionAnimationStyleOSgMd, &_s10RealityKit30__RKEntityActionAnimationStyleOSgMR);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t closure #1 in static ActionBuilder.generateEmphasizeActionSpecifications(inputs:)(uint64_t a1, uint64_t a2, void **a3, uint64_t a4, uint64_t a5)
{
  v33 = a4;
  v34 = a5;
  v30 = a2;
  v31 = a3;
  v32 = type metadata accessor for __RKEntityEmphasisAnimationType();
  v5 = *(v32 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v32);
  v8 = &v29 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = type metadata accessor for __RKEntityActionAnimationStyle();
  v9 = *(v29 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v29);
  v12 = &v29 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for UUID();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  MEMORY[0x28223BE20](v13);
  v17 = &v29 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = type metadata accessor for __RKEntityActionSpecification();
  v19 = *(v18 - 8);
  v20 = *(v19 + 64);
  MEMORY[0x28223BE20](v18);
  v22 = &v29 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v14 + 16))(v17, v30, v13);
  v23 = v31;
  (*(v9 + 16))(v12, v33, v29);
  (*(v5 + 16))(v8, v34, v32);
  __RKEntityEmphasisActionArguments.init(target:duration:iterations:animationStyle:emphasisAnimationType:)();
  (*(v19 + 104))(v22, *MEMORY[0x277CDAFB0], v18);
  v24 = *v23;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *v23 = v24;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v24 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v24[2] + 1, 1, v24);
    *v23 = v24;
  }

  v27 = v24[2];
  v26 = v24[3];
  if (v27 >= v26 >> 1)
  {
    v24 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(v26 > 1, v27 + 1, 1, v24);
    *v23 = v24;
  }

  v24[2] = v27 + 1;
  return (*(v19 + 32))(v24 + ((*(v19 + 80) + 32) & ~*(v19 + 80)) + *(v19 + 72) * v27, v22, v18);
}

uint64_t specialized static ActionBuilder.generateEmphasizeActionSpecifications(inputs:)()
{
  v0 = type metadata accessor for __RKEntityGroupActionOrder();
  v41 = *(v0 - 8);
  v42 = v0;
  v1 = *(v41 + 64);
  MEMORY[0x28223BE20](v0);
  v3 = &v36 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10RealityKit30__RKEntityActionAnimationStyleOSgMd, &_s10RealityKit30__RKEntityActionAnimationStyleOSgMR);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v36 - v6;
  v8 = type metadata accessor for __RKEntityActionAnimationStyle();
  v43 = *(v8 - 8);
  v9 = *(v43 + 64);
  MEMORY[0x28223BE20](v8);
  v11 = &v36 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10RealityKit31__RKEntityEmphasisAnimationTypeOSgMd, &_s10RealityKit31__RKEntityEmphasisAnimationTypeOSgMR);
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x28223BE20](v12 - 8);
  v15 = &v36 - v14;
  v16 = type metadata accessor for __RKEntityEmphasisAnimationType();
  v17 = *(v16 - 8);
  v18 = *(v17 + 64);
  MEMORY[0x28223BE20](v16);
  v20 = &v36 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  _s9RealityIO6InputsC17valueForAttribute5named4type14requestContextxSS_xmAC020PropertyValueRequestJ0OtKAA03UsdfL0RzlFSd_Tt1g5Tf4ndn_n();
  v38 = v11;
  v39 = v20;
  v37 = v3;
  v40 = v8;
  v22 = v21;

  __RKEntityEmphasisAnimationType.init(inputs:)(v15);
  v23 = v16;
  (*(v17 + 56))(v15, 0, 1, v16);
  v24 = v39;
  (*(v17 + 32))(v39, v15, v23);

  v25 = v7;
  __RKEntityActionAnimationStyle.init(inputs:)(v7);
  v26 = v43;
  v27 = v7;
  v28 = v40;
  (*(v43 + 56))(v27, 0, 1, v40);
  v29 = v38;
  v30 = (*(v26 + 32))(v38, v25, v28);
  v44 = MEMORY[0x277D84F90];
  MEMORY[0x28223BE20](v30);
  *(&v36 - 4) = &v44;
  *(&v36 - 3) = v22;
  *(&v36 - 2) = v29;
  *(&v36 - 1) = v24;
  specialized Inputs.forEachAffectedObject(requestContext:callback:)(partial apply for closure #1 in static ActionBuilder.generateEmphasizeActionSpecifications(inputs:), (&v36 - 6));
  v31 = v44;
  if (*(v44 + 16) >= 2uLL)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy10RealityKit29__RKEntityActionSpecificationOGMd, &_ss23_ContiguousArrayStorageCy10RealityKit29__RKEntityActionSpecificationOGMR);
    v36 = type metadata accessor for __RKEntityActionSpecification();
    v32 = *(v36 - 8);
    v33 = *(v32 + 72);
    v34 = (*(v32 + 80) + 32) & ~*(v32 + 80);
    v31 = swift_allocObject();
    *(v31 + 16) = xmmword_2619891C0;
    (*(v41 + 104))(v37, *MEMORY[0x277CDAEF8], v42);

    __RKEntityActionGroupArguments.init(order:actions:exclusive:loopCount:)();
    (*(v32 + 104))(v31 + v34, *MEMORY[0x277CDAFA0], v36);
    v26 = v43;
  }

  (*(v26 + 8))(v29, v28);
  (*(v17 + 8))(v24, v23);
  return v31;
}

void GroupActionSchema.performCount.getter(uint64_t a1@<X8>)
{
  strcpy(a1, "performCount");
  *(a1 + 13) = 0;
  *(a1 + 14) = -5120;
}

void VisibilityActionSchema.moveDistance.getter(uint64_t a1@<X8>)
{
  strcpy(a1, "moveDistance");
  *(a1 + 13) = 0;
  *(a1 + 14) = -5120;
}

uint64_t (*CollideTriggerSchema.infoID.modify(void *a1))()
{
  *a1 = 0x64693A6F666E69;
  a1[1] = 0xE700000000000000;
  return RigidSchema.xformTranslateOp.modify;
}

uint64_t (*CollideTriggerSchema.affectedObjects.modify(void *a1))()
{
  *a1 = 0x6465746365666661;
  a1[1] = 0xEF737463656A624FLL;
  return RigidSchema.xformTranslateOp.modify;
}

uint64_t (*CollideTriggerSchema.colliders.modify(void *a1))()
{
  *a1 = 0x726564696C6C6F63;
  a1[1] = 0xE900000000000073;
  return RigidSchema.xformTranslateOp.modify;
}

uint64_t (*NotificationTriggerSchema.infoID.modify(void *a1))()
{
  *a1 = 0x64693A6F666E69;
  a1[1] = 0xE700000000000000;
  return RigidSchema.xformTranslateOp.modify;
}

uint64_t (*NotificationTriggerSchema.identifier.modify(void *a1))()
{
  *a1 = 0x696669746E656469;
  a1[1] = 0xEA00000000007265;
  return RigidSchema.xformTranslateOp.modify;
}

uint64_t (*ProximityToCameraTriggerSchema.infoID.modify(void *a1))()
{
  *a1 = 0x64693A6F666E69;
  a1[1] = 0xE700000000000000;
  return RigidSchema.xformTranslateOp.modify;
}

uint64_t (*ProximityToCameraTriggerSchema.affectedObjects.modify(void *a1))()
{
  *a1 = 0x6465746365666661;
  a1[1] = 0xEF737463656A624FLL;
  return RigidSchema.xformTranslateOp.modify;
}

uint64_t (*ProximityToCameraTriggerSchema.distance.modify(void *a1))()
{
  *a1 = 0x65636E6174736964;
  a1[1] = 0xE800000000000000;
  return RigidSchema.xformTranslateOp.modify;
}

uint64_t (*SceneTransitionTriggerSchema.infoID.modify(void *a1))()
{
  *a1 = 0x64693A6F666E69;
  a1[1] = 0xE700000000000000;
  return RigidSchema.xformTranslateOp.modify;
}

uint64_t (*SceneTransitionTriggerSchema.type.modify(void *a1))()
{
  *a1 = 1701869940;
  a1[1] = 0xE400000000000000;
  return RigidSchema.xformTranslateOp.modify;
}

uint64_t (*TapTriggerSchema.infoID.modify(void *a1))()
{
  *a1 = 0x64693A6F666E69;
  a1[1] = 0xE700000000000000;
  return RigidSchema.xformTranslateOp.modify;
}

uint64_t (*TapTriggerSchema.affectedObjects.modify(void *a1))()
{
  *a1 = 0x6465746365666661;
  a1[1] = 0xEF737463656A624FLL;
  return RigidSchema.xformTranslateOp.modify;
}

uint64_t (*AudioActionSchema.infoID.modify(void *a1))()
{
  *a1 = 0x64693A6F666E69;
  a1[1] = 0xE700000000000000;
  return RigidSchema.xformTranslateOp.modify;
}

uint64_t (*AudioActionSchema.affectedObjects.modify(void *a1))()
{
  *a1 = 0x6465746365666661;
  a1[1] = 0xEF737463656A624FLL;
  return RigidSchema.xformTranslateOp.modify;
}

uint64_t (*AudioActionSchema.audio.modify(void *a1))()
{
  *a1 = 0x6F69647561;
  a1[1] = 0xE500000000000000;
  return RigidSchema.xformTranslateOp.modify;
}

uint64_t (*AudioActionSchema.auralMode.modify(void *a1))()
{
  *a1 = 0x646F4D6C61727561;
  a1[1] = 0xE900000000000065;
  return RigidSchema.xformTranslateOp.modify;
}

uint64_t (*AudioActionSchema.gain.modify(void *a1))()
{
  *a1 = 1852399975;
  a1[1] = 0xE400000000000000;
  return RigidSchema.xformTranslateOp.modify;
}

uint64_t (*AudioActionSchema.multiplePerformOperation.modify(void *a1))()
{
  *a1 = 0xD000000000000018;
  a1[1] = 0x8000000261994400;
  return RigidSchema.xformTranslateOp.modify;
}

uint64_t (*AudioActionSchema.type.modify(void *a1))()
{
  *a1 = 1701869940;
  a1[1] = 0xE400000000000000;
  return RigidSchema.xformTranslateOp.modify;
}

uint64_t (*ChangeSceneActionSchema.infoID.modify(void *a1))()
{
  *a1 = 0x64693A6F666E69;
  a1[1] = 0xE700000000000000;
  return RigidSchema.xformTranslateOp.modify;
}

uint64_t (*ChangeSceneActionSchema.scene.modify(void *a1))()
{
  *a1 = 0x656E656373;
  a1[1] = 0xE500000000000000;
  return RigidSchema.xformTranslateOp.modify;
}

uint64_t (*EmphasisActionSchema.infoID.modify(void *a1))()
{
  *a1 = 0x64693A6F666E69;
  a1[1] = 0xE700000000000000;
  return RigidSchema.xformTranslateOp.modify;
}

uint64_t (*EmphasisActionSchema.affectedObjects.modify(void *a1))()
{
  *a1 = 0x6465746365666661;
  a1[1] = 0xEF737463656A624FLL;
  return RigidSchema.xformTranslateOp.modify;
}

uint64_t (*EmphasisActionSchema.duration.modify(void *a1))()
{
  *a1 = 0x6E6F697461727564;
  a1[1] = 0xE800000000000000;
  return RigidSchema.xformTranslateOp.modify;
}

uint64_t (*EmphasisActionSchema.motionType.modify(void *a1))()
{
  *a1 = 0x79546E6F69746F6DLL;
  a1[1] = 0xEA00000000006570;
  return RigidSchema.xformTranslateOp.modify;
}

uint64_t (*EmphasisActionSchema.style.modify(void *a1))()
{
  *a1 = 0x656C797473;
  a1[1] = 0xE500000000000000;
  return RigidSchema.xformTranslateOp.modify;
}

uint64_t (*GroupActionSchema.infoID.modify(void *a1))()
{
  *a1 = 0x64693A6F666E69;
  a1[1] = 0xE700000000000000;
  return RigidSchema.xformTranslateOp.modify;
}

uint64_t (*GroupActionSchema.actions.modify(void *a1))()
{
  *a1 = 0x736E6F69746361;
  a1[1] = 0xE700000000000000;
  return RigidSchema.xformTranslateOp.modify;
}

uint64_t (*GroupActionSchema.duration.modify(void *a1))()
{
  *a1 = 0x6E6F697461727564;
  a1[1] = 0xE800000000000000;
  return RigidSchema.xformTranslateOp.modify;
}

uint64_t (*GroupActionSchema.loops.modify(void *a1))()
{
  *a1 = 0x73706F6F6CLL;
  a1[1] = 0xE500000000000000;
  return RigidSchema.xformTranslateOp.modify;
}

uint64_t (*GroupActionSchema.performCount.modify(uint64_t a1))()
{
  strcpy(a1, "performCount");
  *(a1 + 13) = 0;
  *(a1 + 14) = -5120;
  return RigidSchema.xformTranslateOp.modify;
}

uint64_t (*GroupActionSchema.type.modify(void *a1))()
{
  *a1 = 1701869940;
  a1[1] = 0xE400000000000000;
  return RigidSchema.xformTranslateOp.modify;
}

uint64_t (*ImpulseActionSchema.infoID.modify(void *a1))()
{
  *a1 = 0x64693A6F666E69;
  a1[1] = 0xE700000000000000;
  return RigidSchema.xformTranslateOp.modify;
}

uint64_t (*ImpulseActionSchema.affectedObjects.modify(void *a1))()
{
  *a1 = 0x6465746365666661;
  a1[1] = 0xEF737463656A624FLL;
  return RigidSchema.xformTranslateOp.modify;
}

uint64_t (*ImpulseActionSchema.velocity.modify(void *a1))()
{
  *a1 = 0x797469636F6C6576;
  a1[1] = 0xE800000000000000;
  return RigidSchema.xformTranslateOp.modify;
}

uint64_t (*LookAtCameraActionSchema.infoID.modify(void *a1))()
{
  *a1 = 0x64693A6F666E69;
  a1[1] = 0xE700000000000000;
  return RigidSchema.xformTranslateOp.modify;
}

uint64_t (*LookAtCameraActionSchema.affectedObjects.modify(void *a1))()
{
  *a1 = 0x6465746365666661;
  a1[1] = 0xEF737463656A624FLL;
  return RigidSchema.xformTranslateOp.modify;
}

uint64_t (*LookAtCameraActionSchema.duration.modify(void *a1))()
{
  *a1 = 0x6E6F697461727564;
  a1[1] = 0xE800000000000000;
  return RigidSchema.xformTranslateOp.modify;
}

uint64_t (*LookAtCameraActionSchema.front.modify(void *a1))()
{
  *a1 = 0x746E6F7266;
  a1[1] = 0xE500000000000000;
  return RigidSchema.xformTranslateOp.modify;
}

uint64_t (*LookAtCameraActionSchema.upVector.modify(void *a1))()
{
  *a1 = 0x726F746365567075;
  a1[1] = 0xE800000000000000;
  return RigidSchema.xformTranslateOp.modify;
}

uint64_t (*NotificationActionSchema.infoID.modify(void *a1))()
{
  *a1 = 0x64693A6F666E69;
  a1[1] = 0xE700000000000000;
  return RigidSchema.xformTranslateOp.modify;
}

uint64_t (*NotificationActionSchema.affectedObjects.modify(void *a1))()
{
  *a1 = 0x6465746365666661;
  a1[1] = 0xEF737463656A624FLL;
  return RigidSchema.xformTranslateOp.modify;
}

uint64_t (*NotificationActionSchema.identifier.modify(void *a1))()
{
  *a1 = 0x696669746E656469;
  a1[1] = 0xEA00000000007265;
  return RigidSchema.xformTranslateOp.modify;
}

uint64_t (*OrbitActionSchema.infoID.modify(void *a1))()
{
  *a1 = 0x64693A6F666E69;
  a1[1] = 0xE700000000000000;
  return RigidSchema.xformTranslateOp.modify;
}

uint64_t (*OrbitActionSchema.affectedObjects.modify(void *a1))()
{
  *a1 = 0x6465746365666661;
  a1[1] = 0xEF737463656A624FLL;
  return RigidSchema.xformTranslateOp.modify;
}

uint64_t (*OrbitActionSchema.axis.modify(void *a1))()
{
  *a1 = 1936291937;
  a1[1] = 0xE400000000000000;
  return RigidSchema.xformTranslateOp.modify;
}

uint64_t (*OrbitActionSchema.center.modify(void *a1))()
{
  *a1 = 0x7265746E6563;
  a1[1] = 0xE600000000000000;
  return RigidSchema.xformTranslateOp.modify;
}

uint64_t (*OrbitActionSchema.duration.modify(void *a1))()
{
  *a1 = 0x6E6F697461727564;
  a1[1] = 0xE800000000000000;
  return RigidSchema.xformTranslateOp.modify;
}

uint64_t (*OrbitActionSchema.revolutions.modify(void *a1))()
{
  *a1 = 0x6974756C6F766572;
  a1[1] = 0xEB00000000736E6FLL;
  return RigidSchema.xformTranslateOp.modify;
}

uint64_t (*OrbitActionSchema.alignToPath.modify(void *a1))()
{
  *a1 = 0x506F546E67696C61;
  a1[1] = 0xEB00000000687461;
  return RigidSchema.xformTranslateOp.modify;
}

uint64_t (*SpinActionSchema.infoID.modify(void *a1))()
{
  *a1 = 0x64693A6F666E69;
  a1[1] = 0xE700000000000000;
  return RigidSchema.xformTranslateOp.modify;
}

uint64_t (*SpinActionSchema.affectedObjects.modify(void *a1))()
{
  *a1 = 0x6465746365666661;
  a1[1] = 0xEF737463656A624FLL;
  return RigidSchema.xformTranslateOp.modify;
}

uint64_t (*SpinActionSchema.axis.modify(void *a1))()
{
  *a1 = 1936291937;
  a1[1] = 0xE400000000000000;
  return RigidSchema.xformTranslateOp.modify;
}

uint64_t (*SpinActionSchema.duration.modify(void *a1))()
{
  *a1 = 0x6E6F697461727564;
  a1[1] = 0xE800000000000000;
  return RigidSchema.xformTranslateOp.modify;
}

uint64_t (*SpinActionSchema.revolutions.modify(void *a1))(uint64_t a1)
{
  *a1 = 0x6974756C6F766572;
  a1[1] = 0xEB00000000736E6FLL;
  return RigidSchema.xformOpOrder.modify;
}

uint64_t (*StartAnimationSchema.infoID.modify(void *a1))()
{
  *a1 = 0x64693A6F666E69;
  a1[1] = 0xE700000000000000;
  return RigidSchema.xformTranslateOp.modify;
}

uint64_t (*StartAnimationSchema.affectedObjects.modify(void *a1))()
{
  *a1 = 0x6465746365666661;
  a1[1] = 0xEF737463656A624FLL;
  return RigidSchema.xformTranslateOp.modify;
}

uint64_t (*StartAnimationSchema.multiplePerformOperation.modify(void *a1))()
{
  *a1 = 0xD000000000000018;
  a1[1] = 0x8000000261994400;
  return RigidSchema.xformTranslateOp.modify;
}

uint64_t (*StartAnimationSchema.animationSpeed.modify(char *a1))()
{
  strcpy(a1, "animationSpeed");
  a1[15] = -18;
  return RigidSchema.xformTranslateOp.modify;
}

uint64_t (*StartAnimationSchema.duration.modify(void *a1))()
{
  *a1 = 0x6E6F697461727564;
  a1[1] = 0xE800000000000000;
  return RigidSchema.xformTranslateOp.modify;
}

uint64_t (*StartAnimationSchema.reversed.modify(void *a1))()
{
  *a1 = 0x6465737265766572;
  a1[1] = 0xE800000000000000;
  return RigidSchema.xformTranslateOp.modify;
}

uint64_t (*StartAnimationSchema.reverses.modify(void *a1))()
{
  *a1 = 0x7365737265766572;
  a1[1] = 0xE800000000000000;
  return RigidSchema.xformTranslateOp.modify;
}

uint64_t (*StartAnimationSchema.start.modify(void *a1))()
{
  *a1 = 0x7472617473;
  a1[1] = 0xE500000000000000;
  return RigidSchema.xformTranslateOp.modify;
}

uint64_t (*TransformActionSchema.infoID.modify(void *a1))()
{
  *a1 = 0x64693A6F666E69;
  a1[1] = 0xE700000000000000;
  return RigidSchema.xformTranslateOp.modify;
}

uint64_t (*TransformActionSchema.affectedObjects.modify(void *a1))()
{
  *a1 = 0x6465746365666661;
  a1[1] = 0xEF737463656A624FLL;
  return RigidSchema.xformTranslateOp.modify;
}

uint64_t (*TransformActionSchema.duration.modify(void *a1))()
{
  *a1 = 0x6E6F697461727564;
  a1[1] = 0xE800000000000000;
  return RigidSchema.xformTranslateOp.modify;
}

uint64_t (*TransformActionSchema.easeType.modify(void *a1))()
{
  *a1 = 0x6570795465736165;
  a1[1] = 0xE800000000000000;
  return RigidSchema.xformTranslateOp.modify;
}

uint64_t (*TransformActionSchema.relativeToObject.modify(void *a1))()
{
  *a1 = 0xD000000000000010;
  a1[1] = 0x80000002619945A0;
  return RigidSchema.xformTranslateOp.modify;
}

uint64_t (*TransformActionSchema.type.modify(void *a1))()
{
  *a1 = 1701869940;
  a1[1] = 0xE400000000000000;
  return RigidSchema.xformTranslateOp.modify;
}

uint64_t (*TransformActionSchema.xformTarget.modify(void *a1))()
{
  *a1 = 0x7261546D726F6678;
  a1[1] = 0xEB00000000746567;
  return RigidSchema.xformTranslateOp.modify;
}

uint64_t (*VisibilityActionSchema.infoID.modify(void *a1))()
{
  *a1 = 0x64693A6F666E69;
  a1[1] = 0xE700000000000000;
  return RigidSchema.xformTranslateOp.modify;
}

uint64_t (*VisibilityActionSchema.affectedObjects.modify(void *a1))()
{
  *a1 = 0x6465746365666661;
  a1[1] = 0xEF737463656A624FLL;
  return RigidSchema.xformTranslateOp.modify;
}

uint64_t (*VisibilityActionSchema.duration.modify(void *a1))()
{
  *a1 = 0x6E6F697461727564;
  a1[1] = 0xE800000000000000;
  return RigidSchema.xformTranslateOp.modify;
}

uint64_t (*VisibilityActionSchema.easeType.modify(void *a1))()
{
  *a1 = 0x6570795465736165;
  a1[1] = 0xE800000000000000;
  return RigidSchema.xformTranslateOp.modify;
}

uint64_t (*VisibilityActionSchema.motionType.modify(void *a1))()
{
  *a1 = 0x79546E6F69746F6DLL;
  a1[1] = 0xEA00000000006570;
  return RigidSchema.xformTranslateOp.modify;
}

uint64_t (*VisibilityActionSchema.moveDistance.modify(uint64_t a1))()
{
  strcpy(a1, "moveDistance");
  *(a1 + 13) = 0;
  *(a1 + 14) = -5120;
  return RigidSchema.xformTranslateOp.modify;
}

uint64_t (*VisibilityActionSchema.style.modify(void *a1))()
{
  *a1 = 0x656C797473;
  a1[1] = 0xE500000000000000;
  return RigidSchema.xformTranslateOp.modify;
}

uint64_t (*VisibilityActionSchema.type.modify(void *a1))()
{
  *a1 = 1701869940;
  a1[1] = 0xE400000000000000;
  return RigidSchema.xformTranslateOp.modify;
}

uint64_t (*WaitActionSchema.infoID.modify(void *a1))()
{
  *a1 = 0x64693A6F666E69;
  a1[1] = 0xE700000000000000;
  return RigidSchema.xformTranslateOp.modify;
}

uint64_t (*WaitActionSchema.duration.modify(void *a1))()
{
  *a1 = 0x6E6F697461727564;
  a1[1] = 0xE800000000000000;
  return RigidSchema.xformTranslateOp.modify;
}

void *keypath_getTm_1@<X0>(void *(*a1)(void *__return_ptr)@<X3>, void *a2@<X8>)
{
  result = a1(v5);
  v4 = v5[1];
  *a2 = v5[0];
  a2[1] = v4;
  return result;
}

uint64_t keypath_setTm_1(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void *))
{
  v7 = *a1;
  v6 = a1[1];
  v9[0] = v7;
  v9[1] = v6;

  return a5(v9);
}

uint64_t closure #1 in static TriggerBuilder.generateCollisionTriggerSpecifications(inputs:)(uint64_t a1, uint64_t a2, void **a3)
{
  v5 = type metadata accessor for UUID();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  v8 = MEMORY[0x28223BE20](v5);
  v10 = &v16 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v6 + 16))(v10, a2, v5, v8);
  v11 = *a3;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *a3 = v11;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v11 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v11[2] + 1, 1, v11);
    *a3 = v11;
  }

  v14 = v11[2];
  v13 = v11[3];
  if (v14 >= v13 >> 1)
  {
    v11 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(v13 > 1, v14 + 1, 1, v11);
    *a3 = v11;
  }

  v11[2] = v14 + 1;
  return (*(v6 + 32))(v11 + ((*(v6 + 80) + 32) & ~*(v6 + 80)) + *(v6 + 72) * v14, v10, v5);
}

uint64_t closure #2 in static TriggerBuilder.generateCollisionTriggerSpecifications(inputs:)(uint64_t a1, uint64_t a2, void **a3, void *a4)
{
  v7 = type metadata accessor for __RKEntityTriggerSpecification();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  v11 = &v21 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDV6target_SayACG17collidingEntitiesSaySSG4tagstMd, &_s10Foundation4UUIDV6target_SayACG17collidingEntitiesSaySSG4tagstMR);
  v13 = *(v12 + 48);
  v14 = *(v12 + 64);
  v15 = type metadata accessor for UUID();
  (*(*(v15 - 8) + 16))(v11, a2, v15);
  *&v11[v13] = *a4;
  *&v11[v14] = MEMORY[0x277D84F90];
  (*(v8 + 104))(v11, *MEMORY[0x277CDAFE0], v7);
  v16 = *a3;

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *a3 = v16;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v16 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v16[2] + 1, 1, v16);
    *a3 = v16;
  }

  v19 = v16[2];
  v18 = v16[3];
  if (v19 >= v18 >> 1)
  {
    v16 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(v18 > 1, v19 + 1, 1, v16);
    *a3 = v16;
  }

  v16[2] = v19 + 1;
  return (*(v8 + 32))(v16 + ((*(v8 + 80) + 32) & ~*(v8 + 80)) + *(v8 + 72) * v19, v11, v7);
}

uint64_t specialized static TriggerBuilder.generateCollisionTriggerSpecifications(inputs:)()
{
  v0 = MEMORY[0x277D84F90];
  v6 = MEMORY[0x277D84F90];
  v4 = &v6;
  specialized Inputs.forEachTriggerObjectPathInProperty(named:inputName:callback:)(0x726564696C6C6F63, 0xE900000000000073, partial apply for closure #1 in static TriggerBuilder.generateCollisionTriggerSpecifications(inputs:), v3);
  if (*(v6 + 16))
  {
    v5 = v0;
    MEMORY[0x28223BE20](v6);
    v2[2] = &v5;
    v2[3] = &v6;
    specialized Inputs.forEachAffectedObject(requestContext:callback:)(partial apply for closure #2 in static TriggerBuilder.generateCollisionTriggerSpecifications(inputs:), v2);
    v0 = v5;
  }

  return v0;
}

unint64_t SceneDescriptionFoundations.AttributeSpec.description.getter()
{
  v1 = *v0;
  _StringGuts.grow(_:)(28);

  v2 = RIOPxrSdfAttributeSpecCopyLayer();
  v3 = RIOPxrSdfLayerCopyIdentifier();
  v4 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v6 = v5;

  MEMORY[0x26670F080](v4, v6);

  MEMORY[0x26670F080](62, 0xE100000000000000);
  return 0xD000000000000019;
}

unint64_t SceneDescriptionFoundations.AttributeSpec.debugDescription.getter()
{
  v1 = *v0;
  _StringGuts.grow(_:)(19);

  v2 = SceneDescriptionFoundations.AttributeSpec.description.getter();
  MEMORY[0x26670F080](v2);

  MEMORY[0x26670F080](62, 0xE100000000000000);
  return 0xD000000000000010;
}

uint64_t key path getter for Outputs.subscript(_:) : Outputs(uint64_t *a1, uint64_t *a2)
{
  v2 = *(*a1 + 16);
  v4 = *a1;
  v5 = *a2;
  v6 = a2[1];
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sypSgMd, &_sypSgMR);
  return OS_dispatch_queue.sync<A>(execute:)();
}

uint64_t key path setter for Outputs.subscript(_:) : Outputs(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v5 = *a3;
  v4 = a3[1];
  outlined init with copy of Any?(a1, v8);
  v6 = *a2;

  return Outputs.subscript.setter(v8, v5, v4);
}

uint64_t Outputs.subscript.getter()
{
  v1 = *(v0 + 16);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sypSgMd, &_sypSgMR);
  return OS_dispatch_queue.sync<A>(execute:)();
}

double closure #1 in Outputs.subscript.getter@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, _OWORD *a4@<X8>)
{
  swift_beginAccess();
  v8 = *(a1 + 32);
  if (*(v8 + 16))
  {

    v9 = specialized __RawDictionaryStorage.find<A>(_:)(a2, a3);
    if (v10)
    {
      outlined init with copy of Any(*(v8 + 56) + 32 * v9, a4);

      return result;
    }
  }

  result = 0.0;
  *a4 = 0u;
  a4[1] = 0u;
  return result;
}

uint64_t Outputs.subscript.setter(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v7 = a1;
  v8 = *(v3 + 16);
  outlined init with copy of Any?(a1, v15);
  v9 = swift_allocObject();
  *(v9 + 16) = v4;
  *(v9 + 24) = a2;
  *(v9 + 32) = a3;
  v10 = v15[1];
  *(v9 + 40) = v15[0];
  *(v9 + 56) = v10;
  v11 = swift_allocObject();
  *(v11 + 16) = partial apply for closure #1 in Outputs.subscript.setter;
  *(v11 + 24) = v9;
  v14[4] = partial apply for thunk for @callee_guaranteed () -> ();
  v14[5] = v11;
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 1107296256;
  v14[2] = thunk for @escaping @callee_guaranteed () -> ();
  v14[3] = &block_descriptor_25;
  v12 = _Block_copy(v14);

  dispatch_sync(v8, v12);
  _Block_release(v12);
  outlined destroy of Any?(v7);
  LOBYTE(v7) = swift_isEscapingClosureAtFileLocation();

  if (v7)
  {
    __break(1u);
  }

  return result;
}

void closure #1 in Outputs.subscript.setter(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  outlined init with copy of Any?(a4, v13);
  swift_beginAccess();

  specialized Dictionary.subscript.setter(v13, a2, a3);
  swift_endAccess();
  outlined init with copy of Any?(a4, v13);
  if (v14)
  {
    if (swift_dynamicCast())
    {
      v8 = MEMORY[0x26670EFB0]();
      v9 = [v8 UTF8String];
      v10 = v8;
      if (v9)
      {

        v11 = *(a1 + 24);
        v12 = MEMORY[0x26670EFB0](a2, a3);
        RIOBuilderOutputsStoreValueWithName();
      }

      else
      {
        __break(1u);
      }
    }
  }

  else
  {
    outlined destroy of Any?(v13);
  }
}

uint64_t outlined init with copy of Any?(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sypSgMd, &_sypSgMR);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t block_copy_helper_25(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

void (*Outputs.subscript.modify(void *a1, uint64_t a2, uint64_t a3))(uint64_t *a1, char a2)
{
  if (MEMORY[0x277D84FD8])
  {
    v7 = swift_coroFrameAlloc();
  }

  else
  {
    v7 = malloc(0x58uLL);
  }

  *a1 = v7;
  v7[9] = a3;
  v7[10] = v3;
  v7[8] = a2;
  v8 = *(v3 + 16);
  MEMORY[0x28223BE20](v7);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sypSgMd, &_sypSgMR);
  OS_dispatch_queue.sync<A>(execute:)();
  return Outputs.subscript.modify;
}

void Outputs.subscript.modify(uint64_t *a1, char a2)
{
  v2 = *a1;
  v4 = *(*a1 + 72);
  v3 = *(*a1 + 80);
  v5 = *(*a1 + 64);
  if (a2)
  {
    outlined init with copy of Any?(*a1, v2 + 32);

    Outputs.subscript.setter(v2 + 32, v5, v4);
    outlined destroy of Any?(v2);
  }

  else
  {

    Outputs.subscript.setter(v2, v5, v4);
  }

  free(v2);
}

void *Outputs.init(core:)(uint64_t a1)
{
  v2 = v1;
  v4 = type metadata accessor for OS_dispatch_queue.AutoreleaseFrequency();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v15 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for DispatchQoS();
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = type metadata accessor for OS_dispatch_queue.Attributes();
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11 - 8);
  type metadata accessor for OS_dispatch_queue();
  static OS_dispatch_queue.Attributes.concurrent.getter();
  static DispatchQoS.unspecified.getter();
  (*(v5 + 104))(v8, *MEMORY[0x277D85260], v4);
  v2[2] = OS_dispatch_queue.init(label:qos:attributes:autoreleaseFrequency:target:)();
  v13 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_ypTt0g5Tf4g_n(MEMORY[0x277D84F90]);
  v2[3] = a1;
  v2[4] = v13;
  RIOBuilderOutputsSetSwiftObject();
  return v2;
}

uint64_t Outputs.deinit()
{
  v1 = *(v0 + 24);
  RIOBuilderOutputsSetSwiftObject();

  v2 = *(v0 + 32);

  return v0;
}

uint64_t Outputs.__deallocating_deinit()
{
  v1 = *(v0 + 24);
  RIOBuilderOutputsSetSwiftObject();

  v2 = *(v0 + 32);

  return swift_deallocClassInstance();
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

uint64_t specialized == infix<A>(_:_:)(char a1, char a2)
{
  v7 = a1;
  v6 = a2;
  AudioConstants.AudioFile.CalibrationMode.rawValue.getter(&v5);
  AudioConstants.AudioFile.CalibrationMode.rawValue.getter(&v4);
  lazy protocol witness table accessor for type ToolsFoundations.Token and conformance ToolsFoundations.Token();
  v2 = dispatch thunk of static Equatable.== infix(_:_:)();

  return v2 & 1;
}

{
  if (a1)
  {
    if (String.count.getter() > 0)
    {
LABEL_5:
      v7 = RIOPxrTfTokenCreateWithCString();
      if (a2)
      {
        goto LABEL_6;
      }

      goto LABEL_9;
    }
  }

  else if (String.count.getter() > 0)
  {
    goto LABEL_5;
  }

  v7 = RIOPxrTfTokenEmpty();
  if (a2)
  {
LABEL_6:
    if (String.count.getter() > 0)
    {
      goto LABEL_10;
    }

LABEL_11:
    v3 = RIOPxrTfTokenEmpty();
    goto LABEL_12;
  }

LABEL_9:
  if (String.count.getter() <= 0)
  {
    goto LABEL_11;
  }

LABEL_10:
  v3 = RIOPxrTfTokenCreateWithCString();
LABEL_12:
  v6 = v3;
  lazy protocol witness table accessor for type ToolsFoundations.Token and conformance ToolsFoundations.Token();
  v4 = dispatch thunk of static Equatable.== infix(_:_:)();

  return v4 & 1;
}

id AudioConstants.AudioFile.CalibrationMode.levelToken.getter@<X0>(void *a1@<X8>)
{
  if (*v1 <= 1u)
  {
    if (String.count.getter() >= 1)
    {
      goto LABEL_5;
    }

LABEL_6:
    result = RIOPxrTfTokenEmpty();
    goto LABEL_7;
  }

  if (String.count.getter() < 1)
  {
    goto LABEL_6;
  }

LABEL_5:
  result = RIOPxrTfTokenCreateWithCString();
LABEL_7:
  *a1 = result;
  return result;
}

void AudioConstants.AudioFile.Normalization.init(rawValue:)(id *a1@<X0>, char *a2@<X8>)
{
  v3 = *a1;
  if (String.count.getter() < 1)
  {
    v4 = RIOPxrTfTokenEmpty();
  }

  else
  {
    v4 = RIOPxrTfTokenCreateWithCString();
  }

  v5 = v4;
  type metadata accessor for RIOPxrTfTokenRef(0);
  lazy protocol witness table accessor for type RIOPxrTfTokenRef and conformance RIOPxrTfTokenRef();
  v6 = static _CFObject.== infix(_:_:)();

  if (v6)
  {

    v7 = 0;
  }

  else
  {
    if (String.count.getter() < 1)
    {
      v8 = RIOPxrTfTokenEmpty();
    }

    else
    {
      v8 = RIOPxrTfTokenCreateWithCString();
    }

    v9 = v8;
    v10 = static _CFObject.== infix(_:_:)();

    if (v10)
    {
      v7 = 1;
    }

    else
    {
      v7 = 2;
    }
  }

  *a2 = v7;
}

void AudioConstants.AudioFile.CalibrationMode.init(rawValue:)(id *a1@<X0>, char *a2@<X8>)
{
  v3 = *a1;
  if (String.count.getter() < 1)
  {
    v4 = RIOPxrTfTokenEmpty();
  }

  else
  {
    v4 = RIOPxrTfTokenCreateWithCString();
  }

  v5 = v4;
  type metadata accessor for RIOPxrTfTokenRef(0);
  lazy protocol witness table accessor for type RIOPxrTfTokenRef and conformance RIOPxrTfTokenRef();
  v6 = static _CFObject.== infix(_:_:)();

  if (v6)
  {

    v7 = 0;
  }

  else
  {
    if (String.count.getter() < 1)
    {
      v8 = RIOPxrTfTokenEmpty();
    }

    else
    {
      v8 = RIOPxrTfTokenCreateWithCString();
    }

    v9 = v8;
    v10 = static _CFObject.== infix(_:_:)();

    if (v10)
    {

      v7 = 1;
    }

    else
    {
      if (String.count.getter() < 1)
      {
        v11 = RIOPxrTfTokenEmpty();
      }

      else
      {
        v11 = RIOPxrTfTokenCreateWithCString();
      }

      v12 = v11;
      v13 = static _CFObject.== infix(_:_:)();

      if (v13)
      {
        v7 = 2;
      }

      else
      {
        v7 = 3;
      }
    }
  }

  *a2 = v7;
}

float AudioConstants.AudioFile.CalibrationMode.defaultValue.getter()
{
  result = 80.0;
  if (*v0 != 1)
  {
    return 0.0;
  }

  return result;
}

id one-time initialization function for randomizeStart()
{
  if (String.count.getter() < 1)
  {
    result = RIOPxrTfTokenEmpty();
  }

  else
  {
    result = RIOPxrTfTokenCreateWithCString();
  }

  static AudioConstants.AudioFile.randomizeStart = result;
  return result;
}

id AudioConstants.AudioFile.CalibrationMode.rawValue.getter@<X0>(void *a1@<X8>)
{
  if (!*v1)
  {
    if (String.count.getter() >= 1)
    {
      goto LABEL_8;
    }

    goto LABEL_9;
  }

  if (*v1 == 1)
  {
    if (String.count.getter() >= 1)
    {
      goto LABEL_8;
    }

LABEL_9:
    result = RIOPxrTfTokenEmpty();
    goto LABEL_10;
  }

  if (String.count.getter() < 1)
  {
    goto LABEL_9;
  }

LABEL_8:
  result = RIOPxrTfTokenCreateWithCString();
LABEL_10:
  *a1 = result;
  return result;
}

void protocol witness for Hashable.hash(into:) in conformance AudioConstants.AudioFile.CalibrationMode()
{
  v3 = *v0;
  AudioConstants.AudioFile.CalibrationMode.rawValue.getter(&v2);
  v1 = v2;
  type metadata accessor for RIOPxrTfTokenRef(0);
  lazy protocol witness table accessor for type RIOPxrTfTokenRef and conformance RIOPxrTfTokenRef();
  _CFObject.hash(into:)();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance AudioConstants.AudioFile.CalibrationMode()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  v4 = v1;
  AudioConstants.AudioFile.CalibrationMode.rawValue.getter(&v3);
  type metadata accessor for RIOPxrTfTokenRef(0);
  lazy protocol witness table accessor for type RIOPxrTfTokenRef and conformance RIOPxrTfTokenRef();
  _CFObject.hash(into:)();

  return Hasher._finalize()();
}

id AudioConstants.AudioFile.Normalization.rawValue.getter@<X0>(void *a1@<X8>)
{
  if (*v1)
  {
    if (String.count.getter() >= 1)
    {
      goto LABEL_5;
    }

LABEL_6:
    result = RIOPxrTfTokenEmpty();
    goto LABEL_7;
  }

  if (String.count.getter() < 1)
  {
    goto LABEL_6;
  }

LABEL_5:
  result = RIOPxrTfTokenCreateWithCString();
LABEL_7:
  *a1 = result;
  return result;
}

void protocol witness for Hashable.hash(into:) in conformance AudioConstants.AudioFile.Normalization()
{
  v3 = *v0;
  AudioConstants.AudioFile.Normalization.rawValue.getter(&v2);
  v1 = v2;
  type metadata accessor for RIOPxrTfTokenRef(0);
  lazy protocol witness table accessor for type RIOPxrTfTokenRef and conformance RIOPxrTfTokenRef();
  _CFObject.hash(into:)();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance AudioConstants.AudioFile.Normalization()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  v4 = v1;
  AudioConstants.AudioFile.Normalization.rawValue.getter(&v3);
  type metadata accessor for RIOPxrTfTokenRef(0);
  lazy protocol witness table accessor for type RIOPxrTfTokenRef and conformance RIOPxrTfTokenRef();
  _CFObject.hash(into:)();

  return Hasher._finalize()();
}

unint64_t lazy protocol witness table accessor for type AudioConstants.AudioFile.CalibrationMode and conformance AudioConstants.AudioFile.CalibrationMode()
{
  result = lazy protocol witness table cache variable for type AudioConstants.AudioFile.CalibrationMode and conformance AudioConstants.AudioFile.CalibrationMode;
  if (!lazy protocol witness table cache variable for type AudioConstants.AudioFile.CalibrationMode and conformance AudioConstants.AudioFile.CalibrationMode)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AudioConstants.AudioFile.CalibrationMode and conformance AudioConstants.AudioFile.CalibrationMode);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type AudioConstants.AudioFile.Normalization and conformance AudioConstants.AudioFile.Normalization()
{
  result = lazy protocol witness table cache variable for type AudioConstants.AudioFile.Normalization and conformance AudioConstants.AudioFile.Normalization;
  if (!lazy protocol witness table cache variable for type AudioConstants.AudioFile.Normalization and conformance AudioConstants.AudioFile.Normalization)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AudioConstants.AudioFile.Normalization and conformance AudioConstants.AudioFile.Normalization);
  }

  return result;
}

uint64_t lazy protocol witness table accessor for type [AudioConstants.AudioFile.CalibrationMode] and conformance [A](unint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for AudioConstants.AudioFile.Normalization(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for AudioConstants.AudioFile.Normalization(uint64_t result, unsigned int a2, unsigned int a3)
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

uint64_t ObjectsChangeNoticePublisher.receive<A>(subscriber:)(uint64_t a1)
{
  v2 = type metadata accessor for ObjectsChangeNoticeSubscription();
  v3 = *(v2 + 48);
  v4 = *(v2 + 52);
  swift_allocObject();
  v5 = specialized ObjectsChangeNoticeSubscription.init(_:)(a1);
  v7[3] = v2;
  v7[4] = swift_getWitnessTable();
  v7[0] = v5;
  dispatch thunk of Subscriber.receive(subscription:)();
  return __swift_destroy_boxed_opaque_existential_0(v7);
}

uint64_t closure #1 in ObjectsChangeNoticeSubscription.init(_:)()
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v1 = result;
    if (*(result + 16))
    {
      swift_beginAccess();
      v2 = *(v1 + 24);
      static Subscribers.Demand.unlimited.getter();
      result = static Subscribers.Demand.== infix(_:_:)();
      if (result)
      {
        goto LABEL_6;
      }

      if (v2 < 0)
      {
        __break(1u);
        goto LABEL_26;
      }

      if (v2)
      {
LABEL_6:
        swift_beginAccess();
        v3 = *(v1 + 24);
        static Subscribers.Demand.unlimited.getter();
        if (static Subscribers.Demand.== infix(_:_:)())
        {
LABEL_13:
          swift_endAccess();
          ObjectsChangeInfo.init(_:)(&v9);
          v5 = dispatch thunk of Subscriber.receive(_:)();

          swift_beginAccess();
          v6 = *(v1 + 24);
          static Subscribers.Demand.unlimited.getter();
          if (static Subscribers.Demand.== infix(_:_:)())
          {
LABEL_22:
            swift_endAccess();
          }

          static Subscribers.Demand.unlimited.getter();
          v7 = static Subscribers.Demand.== infix(_:_:)();
          v8 = static Subscribers.Demand.unlimited.getter();
          if (v7)
          {
LABEL_21:
            *(v1 + 24) = v8;
            goto LABEL_22;
          }

          result = static Subscribers.Demand.== infix(_:_:)();
          if (result)
          {
LABEL_19:
            v8 = static Subscribers.Demand.unlimited.getter();
            goto LABEL_21;
          }

          if (((v6 | v5) & 0x8000000000000000) == 0)
          {
            v8 = v6 + v5;
            if (!__OFADD__(v6, v5))
            {
              if ((v8 & 0x8000000000000000) == 0)
              {
                goto LABEL_21;
              }

LABEL_29:
              __break(1u);
              return result;
            }

            goto LABEL_19;
          }

LABEL_28:
          __break(1u);
          goto LABEL_29;
        }

        static Subscribers.Demand.unlimited.getter();
        result = static Subscribers.Demand.== infix(_:_:)();
        if (result)
        {
          v4 = static Subscribers.Demand.unlimited.getter();
LABEL_12:
          *(v1 + 24) = v4;
          goto LABEL_13;
        }

        if ((v3 & 0x8000000000000000) == 0)
        {
          if (v3)
          {
            v4 = v3 - 1;
            goto LABEL_12;
          }

LABEL_27:
          __break(1u);
          goto LABEL_28;
        }

LABEL_26:
        __break(1u);
        goto LABEL_27;
      }
    }
  }

  return result;
}

uint64_t ObjectsChangeNoticeSubscription.request(_:)(uint64_t a1)
{
  swift_beginAccess();
  v3 = *(v1 + 24);
  static Subscribers.Demand.unlimited.getter();
  if (static Subscribers.Demand.== infix(_:_:)())
  {
    return swift_endAccess();
  }

  static Subscribers.Demand.unlimited.getter();
  v4 = static Subscribers.Demand.== infix(_:_:)();
  v5 = static Subscribers.Demand.unlimited.getter();
  if (v4)
  {
LABEL_9:
    *(v1 + 24) = v5;
    return swift_endAccess();
  }

  result = static Subscribers.Demand.== infix(_:_:)();
  if (result)
  {
    goto LABEL_7;
  }

  if ((v3 | a1) < 0)
  {
    __break(1u);
    goto LABEL_12;
  }

  v5 = v3 + a1;
  if (__OFADD__(v3, a1))
  {
LABEL_7:
    v5 = static Subscribers.Demand.unlimited.getter();
    goto LABEL_9;
  }

  if ((v5 & 0x8000000000000000) == 0)
  {
    goto LABEL_9;
  }

LABEL_12:
  __break(1u);
  return result;
}

uint64_t ObjectsChangeNoticeSubscription.cancel()()
{
  result = *(v0 + 16);
  if (result)
  {
    return MEMORY[0x2821554A8]();
  }

  return result;
}

uint64_t ObjectsChangeNoticeSubscription.deinit()
{
  v1 = direct field offset for ObjectsChangeNoticeSubscription.combineIdentifier;
  v2 = type metadata accessor for CombineIdentifier();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  return v0;
}

uint64_t ObjectsChangeNoticeSubscription.__deallocating_deinit()
{
  v0 = *ObjectsChangeNoticeSubscription.deinit();
  v1 = *(v0 + 48);
  v2 = *(v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t protocol witness for CustomCombineIdentifierConvertible.combineIdentifier.getter in conformance ObjectsChangeNoticeSubscription<A>@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  v4 = direct field offset for ObjectsChangeNoticeSubscription.combineIdentifier;
  v5 = type metadata accessor for CombineIdentifier();
  v6 = *(*(v5 - 8) + 16);

  return v6(a1, v3 + v4, v5);
}

void *specialized ObjectsChangeNoticeSubscription.init(_:)(uint64_t a1)
{
  v3 = *v1;
  v4 = *(*v1 + 80);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](a1);
  v8 = aBlock - v7;
  v1[2] = 0;
  v1[3] = static Subscribers.Demand.none.getter();
  CombineIdentifier.init()();
  v9 = swift_allocObject();
  swift_weakInit();
  (*(v5 + 16))(v8, a1, v4);
  v10 = (*(v5 + 80) + 40) & ~*(v5 + 80);
  v11 = swift_allocObject();
  *(v11 + 2) = v4;
  *(v11 + 3) = *(v3 + 88);
  *(v11 + 4) = v9;
  (*(v5 + 32))(&v11[v10], v8, v4);
  aBlock[4] = partial apply for closure #1 in ObjectsChangeNoticeSubscription.init(_:);
  aBlock[5] = v11;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = thunk for @escaping @callee_guaranteed (@unowned OpaquePointer) -> ();
  aBlock[3] = &block_descriptor_26;
  v12 = _Block_copy(aBlock);

  v13 = RIOPxrUsdNoticeObjectsChangedAddNoticeCallback();
  _Block_release(v12);

  v14 = v1[2];
  v1[2] = v13;

  return v1;
}

uint64_t type metadata completion function for ObjectsChangeNoticeSubscription()
{
  result = type metadata accessor for CombineIdentifier();
  if (v1 <= 0x3F)
  {
    v2 = *(result - 8) + 64;
    result = swift_initClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

uint64_t partial apply for closure #1 in ObjectsChangeNoticeSubscription.init(_:)()
{
  v1 = v0[3];
  v2 = *(*(v0[2] - 8) + 80);
  v3 = v0[4];
  return closure #1 in ObjectsChangeNoticeSubscription.init(_:)();
}

uint64_t block_copy_helper_26(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t static OutputDescriptor.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  v3 = *(a1 + 24);
  v4 = *(a1 + 32);
  v5 = *(a2 + 16);
  v6 = *(a2 + 24);
  v7 = *(a2 + 32);
  v8 = *a1 == *a2 && *(a1 + 8) == *(a2 + 8);
  if (v8 || (_stringCompareWithSmolCheck(_:_:expecting:)()) && (v2 == v5 ? (v9 = v3 == v6) : (v9 = 0), v9 || (_stringCompareWithSmolCheck(_:_:expecting:)()))
  {
    return v4 ^ v7 ^ 1u;
  }

  else
  {
    return 0;
  }
}

void OutputDescriptor.hash(into:)()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  v4 = v0[3];
  v5 = *(v0 + 32);
  MEMORY[0x26670FA20](0);
  String.hash(into:)();
  String.hash(into:)();
  Hasher._combine(_:)(v5);
}

Swift::Int OutputDescriptor.hashValue.getter()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  v4 = v0[3];
  v5 = *(v0 + 32);
  Hasher.init(_seed:)();
  MEMORY[0x26670FA20](0);
  String.hash(into:)();
  String.hash(into:)();
  Hasher._combine(_:)(v5);
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance OutputDescriptor()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  v4 = v0[3];
  v5 = *(v0 + 32);
  Hasher.init(_seed:)();
  MEMORY[0x26670FA20](0);
  String.hash(into:)();
  String.hash(into:)();
  Hasher._combine(_:)(v5);
  return Hasher._finalize()();
}

void protocol witness for Hashable.hash(into:) in conformance OutputDescriptor()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  v4 = v0[3];
  v5 = *(v0 + 32);
  MEMORY[0x26670FA20](0);
  String.hash(into:)();
  String.hash(into:)();
  Hasher._combine(_:)(v5);
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance OutputDescriptor()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  v4 = v0[3];
  v5 = *(v0 + 32);
  Hasher.init(_seed:)();
  MEMORY[0x26670FA20](0);
  String.hash(into:)();
  String.hash(into:)();
  Hasher._combine(_:)(v5);
  return Hasher._finalize()();
}

uint64_t protocol witness for static Equatable.== infix(_:_:) in conformance OutputDescriptor(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  v3 = *(a1 + 24);
  v4 = *(a1 + 32);
  v5 = *(a2 + 16);
  v6 = *(a2 + 24);
  v7 = *(a2 + 32);
  v8 = *a1 == *a2 && *(a1 + 8) == *(a2 + 8);
  if (v8 || (_stringCompareWithSmolCheck(_:_:expecting:)()) && (v2 == v5 ? (v9 = v3 == v6) : (v9 = 0), v9 || (_stringCompareWithSmolCheck(_:_:expecting:)()))
  {
    return v4 ^ v7 ^ 1u;
  }

  else
  {
    return 0;
  }
}

__n128 __swift_memcpy33_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 32) = *(a2 + 32);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t getEnumTagSinglePayload for OutputDescriptor(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 33))
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

uint64_t storeEnumTagSinglePayload for OutputDescriptor(uint64_t result, int a2, int a3)
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
      *(result + 8) = (a2 - 1);
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

uint64_t closure #1 in static ActionBuilder.generateStartAnimationActionSpecifications(inputs:)(uint64_t a1, uint64_t a2, void **a3, uint64_t a4, int a5, int a6)
{
  v33 = a5;
  v34 = a6;
  v31 = a4;
  v32 = a3;
  v7 = type metadata accessor for __RKEntityActionMultiplePerformBehavior();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  v11 = &v30 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for UUID();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v12);
  v16 = &v30 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = type metadata accessor for __RKEntityActionSpecification();
  v18 = *(v17 - 8);
  v19 = *(v18 + 64);
  v20 = MEMORY[0x28223BE20](v17);
  v22 = &v30 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v13 + 16))(v16, a2, v12, v20);
  v23 = v7;
  v24 = v32;
  (*(v8 + 16))(v11, v31, v23);
  __RKEntityStartAnimateActionArguments.init(target:loopCount:multiplePerformBehavior:clipStart:clipDuration:clipReversed:animationSpeed:clipReverses:)();
  (*(v18 + 104))(v22, *MEMORY[0x277CDAF68], v17);
  v25 = *v24;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *v24 = v25;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v25 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v25[2] + 1, 1, v25);
    *v24 = v25;
  }

  v28 = v25[2];
  v27 = v25[3];
  if (v28 >= v27 >> 1)
  {
    v25 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(v27 > 1, v28 + 1, 1, v25);
    *v24 = v25;
  }

  v25[2] = v28 + 1;
  return (*(v18 + 32))(v25 + ((*(v18 + 80) + 32) & ~*(v18 + 80)) + *(v18 + 72) * v28, v22, v17);
}

uint64_t specialized static ActionBuilder.generateStartAnimationActionSpecifications(inputs:)()
{
  v0 = type metadata accessor for __RKEntityGroupActionOrder();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20](v0);
  v4 = &v27 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10RealityKit39__RKEntityActionMultiplePerformBehaviorOSgMd, &_s10RealityKit39__RKEntityActionMultiplePerformBehaviorOSgMR);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = &v27 - v7;
  v9 = type metadata accessor for __RKEntityActionMultiplePerformBehavior();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v13 = &v27 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  _s9RealityIO6InputsC17valueForAttribute5named4type14requestContextxSS_xmAC020PropertyValueRequestJ0OtKAA03UsdfL0RzlFSd_Tt1g5Tf4ndn_n();
  v15 = v14;
  _s9RealityIO6InputsC17valueForAttribute5named4type14requestContextxSS_xmAC020PropertyValueRequestJ0OtKAA03UsdfL0RzlFSd_Tt1g5Tf4ndn_n();
  v17 = v16;
  v18 = _s9RealityIO6InputsC17valueForAttribute5named4type14requestContextxSS_xmAC020PropertyValueRequestJ0OtKAA03UsdfL0RzlFSb_Tt1g5Tf4ndn_n();
  _s9RealityIO6InputsC17valueForAttribute5named4type14requestContextxSS_xmAC020PropertyValueRequestJ0OtKAA03UsdfL0RzlFSd_Tt1g5Tf4ndn_n();
  v20 = v19;
  LODWORD(v28) = _s9RealityIO6InputsC17valueForAttribute5named4type14requestContextxSS_xmAC020PropertyValueRequestJ0OtKAA03UsdfL0RzlFSb_Tt1g5Tf4ndn_n();

  __RKEntityActionMultiplePerformBehavior.init(inputs:)(v8);
  (*(v10 + 56))(v8, 0, 1, v9);
  v21 = (*(v10 + 32))(v13, v8, v9);
  v29 = MEMORY[0x277D84F90];
  MEMORY[0x28223BE20](v21);
  *(&v27 - 8) = &v29;
  *(&v27 - 7) = v13;
  *(&v27 - 6) = v15;
  *(&v27 - 5) = v17;
  *(&v27 - 32) = v18 & 1;
  *(&v27 - 3) = v20;
  *(&v27 - 16) = v28 & 1;
  specialized Inputs.forEachAffectedObject(requestContext:callback:)(partial apply for closure #1 in static ActionBuilder.generateStartAnimationActionSpecifications(inputs:), (&v27 - 10));
  v22 = v29;
  if (*(v29 + 16) >= 2uLL)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy10RealityKit29__RKEntityActionSpecificationOGMd, &_ss23_ContiguousArrayStorageCy10RealityKit29__RKEntityActionSpecificationOGMR);
    v28 = type metadata accessor for __RKEntityActionSpecification();
    v23 = *(v28 - 8);
    v24 = *(v23 + 72);
    v25 = (*(v23 + 80) + 32) & ~*(v23 + 80);
    v22 = swift_allocObject();
    *(v22 + 16) = xmmword_2619891C0;
    (*(v1 + 104))(v4, *MEMORY[0x277CDAEF8], v0);

    __RKEntityActionGroupArguments.init(order:actions:exclusive:loopCount:)();
    (*(v23 + 104))(v22 + v25, *MEMORY[0x277CDAFA0], v28);
  }

  (*(v10 + 8))(v13, v9);
  return v22;
}

uint64_t partial apply for closure #1 in static ActionBuilder.generateStartAnimationActionSpecifications(inputs:)(uint64_t a1, uint64_t a2)
{
  v3 = *(v2 + 32);
  v4 = *(v2 + 40);
  v5 = *(v2 + 56);
  return closure #1 in static ActionBuilder.generateStartAnimationActionSpecifications(inputs:)(a1, a2, *(v2 + 16), *(v2 + 24), *(v2 + 48), *(v2 + 64));
}

Swift::Int SceneDescriptionFoundations.Variability.hashValue.getter()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  MEMORY[0x26670FA20](v1);
  return Hasher._finalize()();
}

unint64_t lazy protocol witness table accessor for type SceneDescriptionFoundations.Variability and conformance SceneDescriptionFoundations.Variability()
{
  result = lazy protocol witness table cache variable for type SceneDescriptionFoundations.Variability and conformance SceneDescriptionFoundations.Variability;
  if (!lazy protocol witness table cache variable for type SceneDescriptionFoundations.Variability and conformance SceneDescriptionFoundations.Variability)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SceneDescriptionFoundations.Variability and conformance SceneDescriptionFoundations.Variability);
  }

  return result;
}

uint64_t specialized RIOPxrVtValueRef.mapUSDValue<A>()()
{
  v0 = RIOPxrVtValueCopyString();
  if (v0)
  {
    v1 = v0;
    static String._unconditionallyBridgeFromObjectiveC(_:)();
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSSSgMd, &_sSSSgMR);
  if (swift_dynamicCast())
  {
    return v3;
  }

  else
  {
    return 0;
  }
}

uint64_t closure #1 in ReferenceImageBuilder.stageSubscription.getter()
{
  if (String.count.getter() < 1)
  {
    v0 = RIOPxrTfTokenEmpty();
  }

  else
  {
    v0 = RIOPxrTfTokenCreateWithCString();
  }

  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy9RealityIO16ToolsFoundationsO5TokenVGMd, &_ss23_ContiguousArrayStorageCy9RealityIO16ToolsFoundationsO5TokenVGMR);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_2619891C0;
  *(inited + 32) = v1;
  v3 = inited + 32;
  _sSh21_nonEmptyArrayLiteralShyxGSayxG_tcfC9RealityIO16ToolsFoundationsO5TokenV_Tt0g5Tf4g_n(inited);
  v5 = v4;
  swift_setDeallocating();
  outlined destroy of ToolsFoundations.Token(v3);
  v6 = closure #1 in closure #1 in ReferenceImageBuilder.stageSubscription.getter();
  type metadata accessor for TypeNamePrimDirtyState();
  v7 = swift_allocObject();
  v7[5] = v5;

  _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFShy9RealityIO16ToolsFoundationsO5TokenVG_So08RIOPxrTfH3Refas5NeverOTg503_s9d105IO22TypeNamePrimDirtyStateC04typeD7IsAnyOf020primMetadataContainsjK0017propertiesContainjK04coreACShyAA16fg2O5h88VG_ALShyAA08PropertyfG0CGSo010RIOBuilderfE13DescriptorRefaSgtcfc12generateCoreL_AQyFSo08I60TftX0aAKcfu_33_1208ebe0c1611b0e36169838b3b02464AkUTf3nnnpk_nTf1cn_n(v8);
  type metadata accessor for RIOPxrTfTokenRef(0);
  isa = Array._bridgeToObjectiveC()().super.isa;

  _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFShy9RealityIO18PropertyDirtyStateCG_So010RIOBuildergF13DescriptorRefas5NeverOTg503_s9d16IO22TypeNamePrimgh146C04typeD7IsAnyOf020primMetadataContainsjK0017propertiesContainjK04coreACShyAA16ToolsFoundationsO5TokenVG_ALShyAA08PropertyfG0CGSo010RIOBuilderfE13J94RefaSgtcfc12generateCoreL_AQyFSo0vfuwX0aANcfu0_32f9454acde0e12ec4aa46a683ab4ea6ebAnUTf3nnnpk_nTf1cn_n(v6);
  type metadata accessor for RIOBuilderDirtyPropertyDescriptorRef(0);
  v10 = Array._bridgeToObjectiveC()().super.isa;

  v11 = MEMORY[0x277D84FA0];
  _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFShy9RealityIO16ToolsFoundationsO5TokenVG_So36RIOBuilderDirtyMetadataDescriptorRefas5NeverOTg503_s9d16IO22TypeNamePrimj28StateC04typeD7IsAnyOf020primk48ContainsjK0017propertiesContainjK04coreACShyAA16fg2O5h44VG_ALShyAA08PropertyfG0CGSo010RIOBuilderfE13L47RefaSgtcfc12generateCoreL_AQyFSo0vfmwX0aAKXEfU_Tf1cn_n(MEMORY[0x277D84FA0]);
  type metadata accessor for RIOBuilderDirtyMetadataDescriptorRef(0);
  v12 = Array._bridgeToObjectiveC()().super.isa;

  v13 = RIOBuilderTypeNameDirtyPrimDescriptorCreateWithPropertyDescriptorsAndMetadataDescriptors();

  v7[2] = v11;
  v7[3] = v6;
  v7[4] = v13;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd, &_ss23_ContiguousArrayStorageCyyXlGMR);
  v14 = swift_initStackObject();
  *(v14 + 16) = xmmword_26198A640;
  *(v14 + 32) = v7;

  specialized Sequence.forEach(_:)(v14);

  swift_setDeallocating();
  v15 = *(v14 + 16);
  swift_arrayDestroy();
  return v11;
}

uint64_t closure #1 in closure #1 in ReferenceImageBuilder.stageSubscription.getter()
{
  if (String.count.getter() < 1)
  {
    v0 = RIOPxrTfTokenEmpty();
  }

  else
  {
    v0 = RIOPxrTfTokenCreateWithCString();
  }

  v1 = v0;
  type metadata accessor for NamedPropertyDirtyState();
  v2 = swift_allocObject();
  v2[4] = v1;
  v3 = v1;
  v4 = MEMORY[0x277D84FA0];
  _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFShy9RealityIO16ToolsFoundationsO5TokenVG_So36RIOBuilderDirtyMetadataDescriptorRefas5NeverOTg503_s9d16IO22TypeNamePrimj28StateC04typeD7IsAnyOf020primk48ContainsjK0017propertiesContainjK04coreACShyAA16fg2O5h44VG_ALShyAA08PropertyfG0CGSo010RIOBuilderfE13L47RefaSgtcfc12generateCoreL_AQyFSo0vfmwX0aAKXEfU_Tf1cn_n(MEMORY[0x277D84FA0]);
  type metadata accessor for RIOBuilderDirtyMetadataDescriptorRef(0);
  isa = Array._bridgeToObjectiveC()().super.isa;

  v6 = RIOBuilderAnyValueDirtyPropertyDescriptorCreateWithNameAndMetadataDescriptors();

  v2[2] = v4;
  v2[3] = v6;

  if (String.count.getter() < 1)
  {
    v7 = RIOPxrTfTokenEmpty();
  }

  else
  {
    v7 = RIOPxrTfTokenCreateWithCString();
  }

  v8 = v7;
  v9 = swift_allocObject();
  v9[4] = v8;
  v10 = v8;
  _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFShy9RealityIO16ToolsFoundationsO5TokenVG_So36RIOBuilderDirtyMetadataDescriptorRefas5NeverOTg503_s9d16IO22TypeNamePrimj28StateC04typeD7IsAnyOf020primk48ContainsjK0017propertiesContainjK04coreACShyAA16fg2O5h44VG_ALShyAA08PropertyfG0CGSo010RIOBuilderfE13L47RefaSgtcfc12generateCoreL_AQyFSo0vfmwX0aAKXEfU_Tf1cn_n(v4);
  v11 = Array._bridgeToObjectiveC()().super.isa;

  v12 = RIOBuilderAnyValueDirtyPropertyDescriptorCreateWithNameAndMetadataDescriptors();

  v9[2] = v4;
  v9[3] = v12;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd, &_ss23_ContiguousArrayStorageCyyXlGMR);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_26198A9D0;
  *(inited + 32) = v2;
  *(inited + 40) = v9;

  specialized Sequence.forEach(_:)(inited);

  swift_setDeallocating();
  v14 = *(inited + 16);
  swift_arrayDestroy();
  return v4;
}

void closure #1 in ReferenceImageBuilder.ImageReferenceState.init(_:)(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s17_StringProcessing5RegexVySsGMd, &_s17_StringProcessing5RegexVySsGMR);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = v24 - v5;
  v7 = *(a1 + 56);
  v8 = RIOBuilderInputsCopyStage();
  if (!v8)
  {
    __break(1u);
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v9 = v8;
  v10 = RIOPxrUsdStageCopyRootLayer();
  HasCustomLayerMetaData = RIOPxrSdfLayerHasCustomLayerMetaData();

  if (!HasCustomLayerMetaData)
  {
    goto LABEL_12;
  }

  v12 = RIOBuilderInputsCopyStage();
  if (!v12)
  {
LABEL_16:
    __break(1u);
    return;
  }

  v13 = v12;
  if (String.count.getter() < 1)
  {
    v14 = RIOPxrTfTokenEmpty();
  }

  else
  {
    v14 = RIOPxrTfTokenCreateWithCString();
  }

  v15 = v14;
  v16 = RIOPxrUsdStageCopyRootLayer();
  v17 = RIOPxrSdfLayerCopyCustomLayerDataValue();

  if (!v17)
  {

    goto LABEL_12;
  }

  v18 = specialized RIOPxrVtValueRef.mapUSDValue<A>()();
  v20 = v19;

  if (!v20)
  {
    goto LABEL_12;
  }

  v24[0] = v18;
  v24[1] = v20;
  Regex.init(_regexString:version:)();
  lazy protocol witness table accessor for type String and conformance String();
  lazy protocol witness table accessor for type Regex<Substring> and conformance Regex<A>();
  v21 = BidirectionalCollection<>.starts<A>(with:)();
  (*(v3 + 8))(v6, v2);

  if ((v21 & 1) == 0)
  {
LABEL_12:
    v22 = RIOBuilderInputsCopyStage();
    if (v22)
    {
      v23 = v22;
      RIOPxrUsdStageGetMetersPerUnit();

      return;
    }

    goto LABEL_15;
  }
}

void ReferenceImageBuilder.run(inputs:)()
{
  v1 = v0;

  specialized ReferenceImageBuilder.ImageReferenceState.init(_:)(v2, v19);
  if (v19[1])
  {
    v4 = v19[4];
    v3 = v19[5];
    v6 = v19[6];
    v5 = v19[7];
    v7 = [objc_allocWithZone(MEMORY[0x277CE5348]) initWithCGImage:v19[2] orientation:1 physicalWidth:*v19];
    v8 = dispatch thunk of __USDARReferenceProvidingPlugin.createFullSchemePath(group:name:)();
    v10 = v9;
    v11 = MEMORY[0x26670EFB0]();
    [v7 setName_];

    v12._countAndFlagsBits = v8;
    v12._object = v10;
    __USDARReferenceProvidingPlugin.registerARReference(_:forFullSchemePath:)(v7, v12);

    swift_beginAccess();
    v13 = objc_getAssociatedObject(v0, &static BuilderAssociatedKeys.OutputsReference);
    swift_endAccess();
    if (v13)
    {
      _bridgeAnyObjectToAny(_:)();
      swift_unknownObjectRelease();
      outlined init with take of Any(v16, &v17);
      type metadata accessor for Outputs();
      swift_dynamicCast();
      v14 = MEMORY[0x277D837D0];
      v18 = MEMORY[0x277D837D0];
      *&v17 = v6;
      *(&v17 + 1) = v5;

      Outputs.subscript.setter(&v17, 0x656372756F736572, 0xED0000656D616E5FLL);

      swift_beginAccess();
      v15 = objc_getAssociatedObject(v1, &static BuilderAssociatedKeys.OutputsReference);
      swift_endAccess();
      if (v15)
      {
        _bridgeAnyObjectToAny(_:)();
        swift_unknownObjectRelease();
        outlined init with take of Any(v16, &v17);
        swift_dynamicCast();
        v18 = v14;
        *&v17 = v4;
        *(&v17 + 1) = v3;

        Outputs.subscript.setter(&v17, 0x656372756F736572, 0xEE0070756F72675FLL);

        outlined destroy of ReferenceImageBuilder.ImageReferenceState?(v19);
        return;
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
  }
}

Swift::Int protocol witness for Builder.outputDescriptors() in conformance ReferenceImageBuilder()
{
  v0 = _sSh21_nonEmptyArrayLiteralShyxGSayxG_tcfC9RealityIO16OutputDescriptorO_Tt0g5Tf4g_n(&outlined read-only object #0 of ReferenceImageBuilder.outputDescriptors());
  swift_arrayDestroy();
  return v0;
}

CGImageRef specialized static CGImageRef.image(with:)(uint64_t a1, unint64_t a2)
{
  v2 = a2 >> 62;
  if ((a2 >> 62) > 1)
  {
    if (v2 != 2 || *(a1 + 16) == *(a1 + 24))
    {
      return 0;
    }
  }

  else if (v2)
  {
    if (a1 == a1 >> 32)
    {
      return 0;
    }
  }

  else if ((a2 & 0xFF000000000000) == 0)
  {
    return 0;
  }

  isa = Data._bridgeToObjectiveC()().super.isa;
  v4 = CGImageSourceCreateWithData(isa, 0);

  if (v4)
  {
    PrimaryImageIndex = CGImageSourceGetPrimaryImageIndex(v4);
    ImageAtIndex = CGImageSourceCreateImageAtIndex(v4, PrimaryImageIndex, 0);

    return ImageAtIndex;
  }

  return 0;
}

uint64_t specialized ReferenceImageBuilder.stageSubscription.getter()
{
  v0 = closure #1 in ReferenceImageBuilder.stageSubscription.getter();
  type metadata accessor for StageDirtyState();
  swift_allocObject();
  v1 = MEMORY[0x277D84FA0];
  v2 = StageDirtyState.init(stageMetadataContainsAnyOf:primsContainAnyOf:core:)(MEMORY[0x277D84FA0], v0, 0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd, &_ss23_ContiguousArrayStorageCyyXlGMR);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_26198A640;
  *(inited + 32) = v2;

  specialized Sequence.forEach(_:)(inited);

  swift_setDeallocating();
  v4 = *(inited + 16);
  swift_arrayDestroy();
  return v1;
}

void specialized ReferenceImageBuilder.ImageReferenceState.init(_:)(uint64_t a1@<X0>, void *a2@<X8>)
{
  v29 = *MEMORY[0x277D85DE8];
  v4 = Inputs.prim.getter();
  if (String.count.getter() < 1)
  {
    v5 = RIOPxrTfTokenEmpty();
  }

  else
  {
    v5 = RIOPxrTfTokenCreateWithCString();
  }

  v6 = v5;
  v7 = *(v4 + 16);
  if (!RIOPxrUsdPrimHasAttribute())
  {

    lazy protocol witness table accessor for type Object.Error and conformance Object.Error();
    swift_willThrowTypedImpl();

LABEL_18:

    outlined consume of Object.Error(0);
    goto LABEL_19;
  }

  v8 = *(v4 + 16);
  v9 = RIOPxrUsdPrimCopyAttribute();

  type metadata accessor for AnyAttribute();
  v10 = swift_allocObject();
  v10[2] = v9;
  if (String.count.getter() <= 0)
  {
    v11 = RIOPxrTfTokenEmpty();
  }

  else
  {
    v11 = RIOPxrTfTokenCreateWithCString();
  }

  v12 = v11;
  v13 = *(v4 + 16);
  if (!RIOPxrUsdPrimHasAttribute())
  {

    lazy protocol witness table accessor for type Object.Error and conformance Object.Error();
    swift_willThrowTypedImpl();

    outlined consume of Result<AnyAttribute, Object.Error>(v10, 0);
    goto LABEL_18;
  }

  v14 = *(v4 + 16);
  v15 = RIOPxrUsdPrimCopyAttribute();

  v16 = swift_allocObject();
  v16[2] = v15;
  v17 = v10[2];
  EmptyValue = RIOPxrUsdAttributeCopyValue();
  if (!EmptyValue)
  {
    EmptyValue = RIOPxrVtValueCreateEmptyValue();
  }

  v19 = EmptyValue;
  v20 = RIOPxrVtValueCopyAssetPath();

  if (!v20)
  {
    outlined consume of Result<AnyAttribute, Object.Error>(v10, 0);
    outlined consume of Result<AnyAttribute, Object.Error>(v16, 0);

    CFDataNoCopy = 0;
    goto LABEL_21;
  }

  v21 = v16[2];
  v22 = RIOPxrUsdAttributeCopyValue();
  if (!v22)
  {
    v22 = RIOPxrVtValueCreateEmptyValue();
  }

  v23 = v22;
  Float = RIOPxrVtValueGetFloat();

  if (Float)
  {
    closure #1 in ReferenceImageBuilder.ImageReferenceState.init(_:)(a1);
    v27 = RIOPxrSdfAssetPathResolvedPathCopyString();
    static String._unconditionallyBridgeFromObjectiveC(_:)();

    String.utf8CString.getter();
    v28 = RIOPxrArAssetCreate();

    if (v28)
    {
      CFDataNoCopy = RIOPxrArAssetCreateCFDataNoCopy();
      if (!CFDataNoCopy)
      {
        outlined consume of Result<AnyAttribute, Object.Error>(v10, 0);
        outlined consume of Result<AnyAttribute, Object.Error>(v16, 0);

        goto LABEL_20;
      }

      objc_opt_self();
      if (swift_dynamicCastObjCClass())
      {
        static Data._conditionallyBridgeFromObjectiveC(_:result:)();
      }

      outlined consume of Result<AnyAttribute, Object.Error>(v10, 0);
      outlined consume of Result<AnyAttribute, Object.Error>(v16, 0);
    }

    else
    {
      outlined consume of Result<AnyAttribute, Object.Error>(v10, 0);
      outlined consume of Result<AnyAttribute, Object.Error>(v16, 0);
    }
  }

  else
  {

    outlined consume of Result<AnyAttribute, Object.Error>(v16, 0);
    outlined consume of Result<AnyAttribute, Object.Error>(v10, 0);
  }

LABEL_19:
  CFDataNoCopy = 0;
LABEL_20:
  v20 = 0;
LABEL_21:
  *a2 = 0;
  a2[1] = 0;
  a2[2] = 0;
  a2[3] = 0;
  a2[4] = CFDataNoCopy;
  a2[5] = v20;
  a2[6] = 0;
  a2[7] = 0;
  v26 = *MEMORY[0x277D85DE8];
}

uint64_t specialized ReferenceImageBuilder.clear(inputs:)()
{
  v1 = v0;
  swift_beginAccess();
  v2 = objc_getAssociatedObject(v0, &static BuilderAssociatedKeys.OutputsReference);
  result = swift_endAccess();
  if (v2)
  {
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
    outlined init with take of Any(v5, &v6);
    type metadata accessor for Outputs();
    swift_dynamicCast();
    v6 = 0u;
    v7 = 0u;
    Outputs.subscript.setter(&v6, 0x656372756F736572, 0xED0000656D616E5FLL);

    swift_beginAccess();
    v4 = objc_getAssociatedObject(v1, &static BuilderAssociatedKeys.OutputsReference);
    result = swift_endAccess();
    if (v4)
    {
      _bridgeAnyObjectToAny(_:)();
      swift_unknownObjectRelease();
      outlined init with take of Any(v5, &v6);
      swift_dynamicCast();
      v6 = 0u;
      v7 = 0u;
      Outputs.subscript.setter(&v6, 0x656372756F736572, 0xEE0070756F72675FLL);
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t outlined destroy of ReferenceImageBuilder.ImageReferenceState?(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9RealityIO21ReferenceImageBuilderC0dC5StateVSgMd, &_s9RealityIO21ReferenceImageBuilderC0dC5StateVSgMR);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t lazy protocol witness table accessor for type Regex<Substring> and conformance Regex<A>()
{
  result = lazy protocol witness table cache variable for type Regex<Substring> and conformance Regex<A>;
  if (!lazy protocol witness table cache variable for type Regex<Substring> and conformance Regex<A>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s17_StringProcessing5RegexVySsGMd, &_s17_StringProcessing5RegexVySsGMR);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Regex<Substring> and conformance Regex<A>);
  }

  return result;
}

__n128 __swift_memcpy64_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  v4 = *(a2 + 48);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 48) = v4;
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t getEnumTagSinglePayload for ReferenceImageBuilder.ImageReferenceState(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 64))
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

uint64_t storeEnumTagSinglePayload for ReferenceImageBuilder.ImageReferenceState(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 56) = 0;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 64) = 1;
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

    *(result + 64) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t closure #1 in static ActionBuilder.generateTransformAnimationActionSpecifications(inputs:)(uint64_t a1, uint64_t a2, void **a3, uint64_t a4, uint64_t a5)
{
  v34 = a4;
  v35 = a5;
  v36 = a3;
  v33 = a2;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = &v31 - v7;
  v32 = type metadata accessor for __RKEntityActionMultiplePerformBehavior();
  v9 = *(v32 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v32);
  v12 = &v31 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for UUID();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  MEMORY[0x28223BE20](v13);
  v17 = &v31 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = type metadata accessor for __RKEntityActionSpecification();
  v18 = *(v31 - 8);
  v19 = *(v18 + 64);
  v20 = MEMORY[0x28223BE20](v31);
  v22 = &v31 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = *(v14 + 16);
  v23(v17, v33, v13, v20);
  (*(v9 + 16))(v12, v34, v32);
  (v23)(v8, v35, v13);
  (*(v14 + 56))(v8, 0, 1, v13);
  v24 = v36;
  v25 = v31;
  __RKEntityStartAnimateActionArguments.init(target:loopCount:multiplePerformBehavior:clipStart:clipDuration:clipReversed:animationSpeed:clipReverses:muteAudio:audioGain:targetAnimation:)();
  (*(v18 + 104))(v22, *MEMORY[0x277CDAF68], v25);
  v26 = *v24;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *v24 = v26;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v26 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v26[2] + 1, 1, v26);
    *v24 = v26;
  }

  v29 = v26[2];
  v28 = v26[3];
  if (v29 >= v28 >> 1)
  {
    v26 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(v28 > 1, v29 + 1, 1, v26);
    *v24 = v26;
  }

  v26[2] = v29 + 1;
  return (*(v18 + 32))(v26 + ((*(v18 + 80) + 32) & ~*(v18 + 80)) + *(v18 + 72) * v29, v22, v25);
}

uint64_t specialized static ActionBuilder.generateTransformAnimationActionSpecifications(inputs:)(uint64_t a1)
{
  v51 = type metadata accessor for __RKEntityGroupActionOrder();
  v53 = *(v51 - 8);
  v2 = *(v53 + 64);
  MEMORY[0x28223BE20](v51);
  v52 = &v45 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10RealityKit39__RKEntityActionMultiplePerformBehaviorOSgMd, &_s10RealityKit39__RKEntityActionMultiplePerformBehaviorOSgMR);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v45 - v6;
  v8 = type metadata accessor for __RKEntityActionMultiplePerformBehavior();
  v54 = *(v8 - 8);
  v9 = *(v54 + 64);
  MEMORY[0x28223BE20](v8);
  v11 = &v45 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x28223BE20](v12 - 8);
  v15 = &v45 - v14;
  v16 = type metadata accessor for UUID();
  v17 = *(v16 - 8);
  v18 = *(v17 + 64);
  MEMORY[0x28223BE20](v16);
  v20 = &v45 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = specialized Inputs.pathsForRelationship(named:requestContext:)();
  v48 = v15;
  v49 = v20;
  v46 = v7;
  v47 = v11;
  v50 = v17;
  if (!*(v21 + 16))
  {

    return MEMORY[0x277D84F90];
  }

  v23 = *(v21 + 32);

  v24 = *(a1 + 56);
  result = RIOBuilderInputsCopyStage();
  if (!result)
  {
    __break(1u);
    return result;
  }

  v25 = result;
  HasPrimAtPrimPath = RIOPxrUsdStageHasPrimAtPrimPath();

  if (!HasPrimAtPrimPath)
  {

    return MEMORY[0x277D84F90];
  }

  v27 = v48;
  Inputs.identifierForEntity(withInputKey:)(0x6F6974616D696E61, 0xEF797469746E456ELL, v48);
  v28 = v50;
  v29 = v16;
  if ((*(v50 + 48))(v27, 1, v16) == 1)
  {

    outlined destroy of UUID?(v27);
    return MEMORY[0x277D84F90];
  }

  v45 = v23;
  (*(v28 + 32))(v49, v27, v16);

  v30 = v46;
  __RKEntityActionMultiplePerformBehavior.init(inputs:)(v46);
  v31 = v54;
  (*(v54 + 56))(v30, 0, 1, v8);
  v32 = v47;
  v33 = v8;
  v34 = (*(v31 + 32))();
  v55 = MEMORY[0x277D84F90];
  MEMORY[0x28223BE20](v34);
  *(&v45 - 4) = &v55;
  *(&v45 - 3) = v32;
  v35 = v49;
  *(&v45 - 2) = v49;
  specialized Inputs.forEachAffectedObject(requestContext:callback:)(partial apply for closure #1 in static ActionBuilder.generateTransformAnimationActionSpecifications(inputs:), (&v45 - 6));
  v36 = v55;
  v38 = v52;
  v37 = v53;
  if (*(v55 + 16) >= 2uLL)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy10RealityKit29__RKEntityActionSpecificationOGMd, &_ss23_ContiguousArrayStorageCy10RealityKit29__RKEntityActionSpecificationOGMR);
    v39 = type metadata accessor for __RKEntityActionSpecification();
    v40 = *(v39 - 8);
    v41 = *(v40 + 72);
    v42 = (*(v40 + 80) + 32) & ~*(v40 + 80);
    v36 = swift_allocObject();
    *(v36 + 16) = xmmword_2619891C0;
    (*(v37 + 104))(v38, *MEMORY[0x277CDAEF8], v51);

    __RKEntityActionGroupArguments.init(order:actions:exclusive:loopCount:)();
    v43 = v36 + v42;
    v35 = v49;
    v44 = v39;
    v31 = v54;
    (*(v40 + 104))(v43, *MEMORY[0x277CDAFA0], v44);
    v29 = v16;
  }

  (*(v31 + 8))(v32, v33);
  (*(v50 + 8))(v35, v29);
  return v36;
}

uint64_t closure #1 in static ActionBuilder.generateOrbitActionSpecifications(inputs:)(double a1, double a2, __n128 a3, uint64_t a4, uint64_t a5, void **a6, uint64_t a7, int a8)
{
  v38 = a8;
  v37 = a3;
  v34 = a7;
  v35 = a6;
  v33 = a5;
  v36 = type metadata accessor for __RKEntitySpinDirectionType();
  v8 = *(v36 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v36);
  v11 = &v33 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for UUID();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v12);
  v16 = &v33 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v19 = &v33 - v18;
  v20 = type metadata accessor for __RKEntityActionSpecification();
  v21 = *(v20 - 8);
  v22 = *(v21 + 64);
  v23 = MEMORY[0x28223BE20](v20);
  v25 = &v33 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = *(v13 + 16);
  v26(v19, v33, v12, v23);
  (v26)(v16, v34, v12);
  v27 = v35;
  (*(v8 + 104))(v11, *MEMORY[0x277CDAF28], v36);
  __RKEntityOrbitEntityActionArguments.init(target:pivotTarget:duration:rotations:orbitalAxis:orientToPath:spinDirection:respectPhysics:physicsLinearCoefficient:physicsAngularCoefficient:)();
  (*(v21 + 104))(v25, *MEMORY[0x277CDAF50], v20);
  v28 = *v27;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *v27 = v28;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v28 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v28[2] + 1, 1, v28);
    *v27 = v28;
  }

  v31 = v28[2];
  v30 = v28[3];
  if (v31 >= v30 >> 1)
  {
    v28 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(v30 > 1, v31 + 1, 1, v28);
    *v27 = v28;
  }

  v28[2] = v31 + 1;
  return (*(v21 + 32))(v28 + ((*(v21 + 80) + 32) & ~*(v21 + 80)) + *(v21 + 72) * v31, v25, v20);
}

uint64_t specialized static ActionBuilder.generateOrbitActionSpecifications(inputs:)()
{
  v0 = type metadata accessor for __RKEntityGroupActionOrder();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20](v0);
  v4 = &v29 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = &v29 - v7;
  v9 = type metadata accessor for UUID();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v13 = &v29 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = specialized Inputs.pathsForRelationship(named:requestContext:)();
  if (!*(v14 + 16))
  {

    return MEMORY[0x277D84F90];
  }

  v31 = v1;
  v15 = *(v14 + 32);

  _s9RealityIO6InputsC17valueForAttribute5named4type14requestContextxSS_xmAC020PropertyValueRequestJ0OtKAA03UsdfL0RzlFSd_Tt1g5Tf4ndn_n();
  v17 = v16;
  _s9RealityIO6InputsC17valueForAttribute5named4type14requestContextxSS_xmAC020PropertyValueRequestJ0OtKAA03UsdfL0RzlFSd_Tt1g5Tf4ndn_n();
  v19 = v18;
  _s9RealityIO6InputsC17valueForAttribute5named4type14requestContextxSS_xmAC020PropertyValueRequestJ0OtKAA03UsdfL0RzlFAA7Vector3VySdG_Tt1g5(v32);
  v29 = v32[0];
  v30 = v32[1];
  v21 = _s9RealityIO6InputsC17valueForAttribute5named4type14requestContextxSS_xmAC020PropertyValueRequestJ0OtKAA03UsdfL0RzlFSb_Tt1g5Tf4ndn_n();
  Inputs.identifierForEntity(withInputKey:)(0x6E457265746E6563, 0xEC00000079746974, v8);
  v22 = (*(v10 + 48))(v8, 1, v9);
  if (v22 == 1)
  {
    outlined destroy of UUID?(v8);

    return MEMORY[0x277D84F90];
  }

  v23 = (*(v10 + 32))(v13, v8, v9);
  *&v32[0] = MEMORY[0x277D84F90];
  *&v24 = MEMORY[0x28223BE20](v23);
  *(&v29 - 8) = v32;
  *(&v29 - 7) = v13;
  *(&v29 - 6) = v17;
  *(&v29 - 5) = v19;
  *(&v29 - 2) = v24;
  *(&v29 - 16) = v21 & 1;
  specialized Inputs.forEachAffectedObject(requestContext:callback:)(partial apply for closure #1 in static ActionBuilder.generateOrbitActionSpecifications(inputs:), (&v29 - 5));
  v25 = *&v32[0];
  if (*(*&v32[0] + 16) >= 2uLL)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy10RealityKit29__RKEntityActionSpecificationOGMd, &_ss23_ContiguousArrayStorageCy10RealityKit29__RKEntityActionSpecificationOGMR);
    *&v30 = type metadata accessor for __RKEntityActionSpecification();
    v26 = *(v30 - 8);
    v27 = *(v26 + 72);
    v28 = (*(v26 + 80) + 32) & ~*(v26 + 80);
    v25 = swift_allocObject();
    *(v25 + 16) = xmmword_2619891C0;
    (*(v31 + 104))(v4, *MEMORY[0x277CDAEF8], v0);

    __RKEntityActionGroupArguments.init(order:actions:exclusive:loopCount:)();
    (*(v26 + 104))(v25 + v28, *MEMORY[0x277CDAFA0], v30);
  }

  (*(v10 + 8))(v13, v9);
  return v25;
}

id memoryConstraintLogObject()
{
  if (memoryConstraintLogObject_once != -1)
  {
    dispatch_once(&memoryConstraintLogObject_once, &__block_literal_global_0);
  }

  v1 = memoryConstraintLogObject__logObject;

  return v1;
}

uint64_t __memoryConstraintLogObject_block_invoke()
{
  memoryConstraintLogObject__logObject = os_log_create("com.apple.RealityIO", "MemoryConstraints");

  return MEMORY[0x2821F96F8]();
}

uint64_t __AssetLoadRequest.add(asset:)()
{
  return MEMORY[0x2821291A8]();
}

{
  return MEMORY[0x2821291B0]();
}

uint64_t Entity.ComponentSet.subscript.setter()
{
  return MEMORY[0x282129C38]();
}

{
  return MEMORY[0x282129C78]();
}

Swift::String __swiftcall String.init(_:)(NSString a1)
{
  v1 = MEMORY[0x28211E9E8](a1);
  result._object = v2;
  result._countAndFlagsBits = v1;
  return result;
}

Swift::String __swiftcall String.lowercased()()
{
  v0 = MEMORY[0x2821FBCC8]();
  result._object = v1;
  result._countAndFlagsBits = v0;
  return result;
}

uint64_t String.subscript.getter()
{
  return MEMORY[0x2821FBF68]();
}

{
  return MEMORY[0x2821FBFB0]();
}