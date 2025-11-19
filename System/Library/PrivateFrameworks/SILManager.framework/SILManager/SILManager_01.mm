void *protocol witness for SetAlgebra.remove(_:) in conformance SILValidator.DisabledHealthCheckOptions@<X0>(void *result@<X0>, uint64_t a2@<X8>)
{
  v3 = *v2 & *result;
  if (v3)
  {
    *v2 &= ~*result;
  }

  *a2 = v3;
  *(a2 + 8) = v3 == 0;
  return result;
}

uint64_t *protocol witness for SetAlgebra.update(with:) in conformance SILValidator.DisabledHealthCheckOptions@<X0>(uint64_t *result@<X0>, uint64_t a2@<X8>)
{
  v3 = *result;
  v4 = *v2;
  *v2 |= *result;
  v5 = v4 & v3;
  *a2 = v5;
  *(a2 + 8) = v5 == 0;
  return result;
}

void *protocol witness for RawRepresentable.init(rawValue:) in conformance SILValidator.DisabledHealthCheckOptions@<X0>(void *result@<X0>, uint64_t a2@<X8>)
{
  *a2 = *result;
  *(a2 + 8) = 0;
  return result;
}

uint64_t protocol witness for ExpressibleByArrayLiteral.init(arrayLiteral:) in conformance SILValidator.DisabledHealthCheckOptions@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = specialized SetAlgebra<>.init(arrayLiteral:)(a1);

  *a2 = v3;
  return result;
}

__n128 SILValidator.IndicatorStates.subscript.getter@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  type metadata accessor for SILIndicatorDesc();
  if (static SILIndicatorDesc.isCameraIndicator(_:)(a1))
  {
    v7 = *(v2 + 64);
    if ((v7 & 0xFF00) != 0x200)
    {
      *(a2 + 24) = &type metadata for SILValidator.IndicatorState;
      v8 = swift_allocObject();
      *a2 = v8;
      v9 = *(v3 + 16);
      *(v8 + 16) = *v3;
      *(v8 + 32) = v9;
      result = *(v3 + 32);
      v10 = *(v3 + 48);
LABEL_7:
      *(v8 + 48) = result;
      *(v8 + 64) = v10;
      *(v8 + 80) = v7;
      return result;
    }

    goto LABEL_9;
  }

  if (static SILIndicatorDesc.isMicrophoneIndicator(_:)(a1))
  {
    v7 = *(v2 + 136);
    if ((v7 & 0xFF00) != 0x200)
    {
      *(a2 + 24) = &type metadata for SILValidator.IndicatorState;
      v8 = swift_allocObject();
      *a2 = v8;
      v11 = *(v3 + 88);
      *(v8 + 16) = *(v3 + 72);
      *(v8 + 32) = v11;
      result = *(v3 + 104);
      v10 = *(v3 + 120);
      goto LABEL_7;
    }

    goto LABEL_9;
  }

  v12 = *(v2 + 176);
  if (v12 == 2)
  {
LABEL_9:
    result.n128_u64[0] = 0;
    *a2 = 0u;
    *(a2 + 16) = 0u;
    return result;
  }

  *(a2 + 24) = &type metadata for SILValidator.FaceIDState;
  v13 = swift_allocObject();
  *a2 = v13;
  result = *(v3 + 144);
  v14 = *(v3 + 160);
  *(v13 + 16) = result;
  *(v13 + 32) = v14;
  *(v13 + 48) = v12;
  return result;
}

SILManager::SILError_optional __swiftcall SILValidator.FBITriggeredType.toSILError()()
{
  if (v0 >= 3u)
  {
    return 9;
  }

  else
  {
    return (0x80A18u >> (8 * v0));
  }
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance SILValidator.FBITriggeredType()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  MEMORY[0x266730370](v1);
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance SILValidator.FBITriggeredType()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  MEMORY[0x266730370](v1);
  return Hasher._finalize()();
}

__n128 SILValidator.indicatorStates.getter@<Q0>(uint64_t a1@<X8>)
{
  swift_beginAccess();
  v3 = *(v1 + 168);
  *(a1 + 128) = *(v1 + 152);
  *(a1 + 144) = v3;
  *(a1 + 160) = *(v1 + 184);
  *(a1 + 176) = *(v1 + 200);
  v4 = *(v1 + 104);
  *(a1 + 64) = *(v1 + 88);
  *(a1 + 80) = v4;
  v5 = *(v1 + 136);
  *(a1 + 96) = *(v1 + 120);
  *(a1 + 112) = v5;
  v6 = *(v1 + 40);
  *a1 = *(v1 + 24);
  *(a1 + 16) = v6;
  result = *(v1 + 56);
  v8 = *(v1 + 72);
  *(a1 + 32) = result;
  *(a1 + 48) = v8;
  return result;
}

__n128 SILValidator.indicatorStates.setter(uint64_t a1)
{
  swift_beginAccess();
  v3 = *(a1 + 144);
  *(v1 + 152) = *(a1 + 128);
  *(v1 + 168) = v3;
  *(v1 + 184) = *(a1 + 160);
  v4 = *(a1 + 80);
  *(v1 + 88) = *(a1 + 64);
  *(v1 + 104) = v4;
  v5 = *(a1 + 112);
  *(v1 + 120) = *(a1 + 96);
  *(v1 + 136) = v5;
  v6 = *(a1 + 16);
  *(v1 + 24) = *a1;
  *(v1 + 40) = v6;
  result = *(a1 + 32);
  v8 = *(a1 + 48);
  *(v1 + 56) = result;
  *(v1 + 200) = *(a1 + 176);
  *(v1 + 72) = v8;
  return result;
}

uint64_t SILValidator.trackedAnimations.setter(uint64_t a1)
{
  swift_beginAccess();
  *(v1 + 208) = a1;
}

uint64_t SILValidator.pendingStatePerRegion.setter(uint64_t a1)
{
  swift_beginAccess();
  *(v1 + 216) = a1;
}

uint64_t SILValidator.statePerRegion.setter(uint64_t a1)
{
  swift_beginAccess();
  *(v1 + 224) = a1;
}

uint64_t SILValidator.__allocating_init(displaySize:animationHistoryEnabled:)(int a1, int a2, char a3)
{
  v6 = swift_allocObject();
  SILValidator.init(displaySize:animationHistoryEnabled:)(a1, a2, a3);
  return v6;
}

uint64_t SILValidator.init(displaySize:animationHistoryEnabled:)(int a1, int a2, char a3)
{
  *(v3 + 208) = 0;
  *(v3 + 72) = 0u;
  *(v3 + 56) = 0u;
  *(v3 + 40) = 0u;
  *(v3 + 24) = 0u;
  *(v3 + 88) = 512;
  *(v3 + 96) = 0u;
  *(v3 + 112) = 0u;
  *(v3 + 128) = 0u;
  *(v3 + 144) = 0u;
  *(v3 + 160) = 512;
  *(v3 + 168) = 0u;
  *(v3 + 184) = 0u;
  *(v3 + 200) = 2;
  memset(v20, 0, sizeof(v20));
  v21 = 0;
  v7 = MAX_REGIONS_COUNT.unsafeMutableAddressor();
  *(v3 + 224) = _sSa9repeating5countSayxGx_SitcfC10SILManager12SILValidatorC11RegionStateVSg_Tt1g5Tf4gn_n(v20, *v7);
  v8 = *v7;
  v14[0] = 0;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0;
  v9 = _sSa9repeating5countSayxGx_SitcfCSb_10SILManager12SILValidatorC11RegionStateVSgt_Tt1g5Tf4gn_n(v14, v8);
  v10 = specialized _arrayForceCast<A, B>(_:)(v9);

  v11 = 0;
  *(v3 + 216) = v10;
  *(v3 + 16) = a1;
  *(v3 + 20) = a2;
  if (a3)
  {
    type metadata accessor for SILDebugAnimationTracker();
    v11 = swift_allocObject();
    v11[2] = 32;
    v12 = *_emptyDequeStorage.unsafeMutableAddressor();
    v11[3] = v12;
    v11[4] = v12;
    swift_retain_n();
  }

  swift_beginAccess();
  *(v3 + 208) = v11;

  return v3;
}

uint64_t specialized _arrayForceCast<A, B>(_:)(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = MEMORY[0x277D84F90];
  if (v1)
  {
    v27 = MEMORY[0x277D84F90];
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v1, 0);
    v2 = v27;
    v4 = (a1 + 32);
    do
    {
      v5 = v4[1];
      v6 = v4[3];
      v19 = v4[2];
      v20 = v6;
      v7 = v4[3];
      v8 = v4[4];
      v9 = v4[1];
      v18[0] = *v4;
      v18[1] = v9;
      v24 = v19;
      v25 = v7;
      v26 = v4[4];
      v23 = v5;
      v21 = v8;
      v22 = v18[0];
      outlined init with copy of SILBackend?(v18, v17, &_sSb_10SILManager12SILValidatorC11RegionStateVSgtMd);
      __swift_instantiateConcreteTypeFromMangledNameV2(&_sSb_10SILManager12SILValidatorC11RegionStateVSgtMd);
      __swift_instantiateConcreteTypeFromMangledNameV2(&_sSb5dirty_10SILManager12SILValidatorC11RegionStateVSgtMd);
      swift_dynamicCast();
      v25 = v17[3];
      v26 = v17[4];
      v23 = v17[1];
      v24 = v17[2];
      v22 = v17[0];
      v27 = v2;
      v11 = *(v2 + 16);
      v10 = *(v2 + 24);
      if (v11 >= v10 >> 1)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v10 > 1), v11 + 1, 1);
        v2 = v27;
      }

      *(v2 + 16) = v11 + 1;
      v12 = (v2 + 80 * v11);
      v12[2] = v22;
      v13 = v23;
      v14 = v24;
      v15 = v26;
      v12[5] = v25;
      v12[6] = v15;
      v12[3] = v13;
      v12[4] = v14;
      v4 += 5;
      --v1;
    }

    while (v1);
  }

  return v2;
}

{
  v1 = *(a1 + 16);
  v2 = MEMORY[0x277D84F90];
  if (v1)
  {
    v15 = MEMORY[0x277D84F90];
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v1, 0);
    v2 = v15;
    v4 = a1 + 32;
    do
    {
      outlined init with copy of SILFileHandle(v4, v11);
      __swift_instantiateConcreteTypeFromMangledNameV2(&_s10SILManager13IOSurfaceLike_pMd);
      __swift_instantiateConcreteTypeFromMangledNameV2(&_s10SILManager13IOSurfaceLike_pSgMd);
      swift_dynamicCast();
      v15 = v2;
      v6 = *(v2 + 16);
      v5 = *(v2 + 24);
      if (v6 >= v5 >> 1)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v5 > 1), v6 + 1, 1);
        v2 = v15;
      }

      *(v2 + 16) = v6 + 1;
      v7 = v2 + 40 * v6;
      v8 = v12;
      v9 = v13;
      *(v7 + 64) = v14;
      *(v7 + 32) = v8;
      *(v7 + 48) = v9;
      v4 += 40;
      --v1;
    }

    while (v1);
  }

  return v2;
}

void *SILDebugAnimationTracker.__allocating_init()()
{
  v0 = swift_allocObject();
  v0[2] = 32;
  v1 = *_emptyDequeStorage.unsafeMutableAddressor();
  v0[3] = v1;
  v0[4] = v1;
  swift_retain_n();
  return v0;
}

Swift::Int SILValidator.turnOffRegions(renderer:regionMask:)(uint64_t a1, int a2)
{
  v3 = v2;
  LODWORD(v14[0]) = a2;
  lazy protocol witness table accessor for type UInt32 and conformance UInt32();
  BitmaskIterator.init(_:)(v14, MEMORY[0x277D84CC0], v17);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10SILManager15BitmaskIteratorVys6UInt32VGMd);
  v18 = BitmaskIterator.next()();
  if (v18.is_nil)
  {
    return v18.value;
  }

  value = v18.value;
  while (1)
  {
    v5 = (*(*v3 + 184))(v16);
    v7 = v6;
    v8 = *v6;
    v18.value = swift_isUniquelyReferenced_nonNull_native();
    *v7 = v8;
    if ((v18.value & 1) == 0)
    {
      break;
    }

    if ((value & 0x8000000000000000) != 0)
    {
      goto LABEL_9;
    }

LABEL_5:
    if (value >= v8[2])
    {
      goto LABEL_10;
    }

    v9 = &v8[10 * value];
    *(v9 + 32) = 1;
    v14[0] = *(v9 + 5);
    v10 = *(v9 + 7);
    v11 = *(v9 + 9);
    v12 = *(v9 + 11);
    v15 = v9[13];
    v14[2] = v11;
    v14[3] = v12;
    v14[1] = v10;
    *(v9 + 7) = 0u;
    *(v9 + 9) = 0u;
    *(v9 + 11) = 0u;
    v9[13] = 0;
    *(v9 + 5) = 0u;
    outlined destroy of SILValidator.RegionState?(v14, &_s10SILManager12SILValidatorC11RegionStateVSgMd);
    v5(v16, 0);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s10SILManager15BitmaskIteratorVys6UInt32VGMd);
    v18 = BitmaskIterator.next()();
    value = v18.value;
    if (v18.is_nil)
    {
      return v18.value;
    }
  }

  v18.value = specialized _ArrayBuffer._consumeAndCreateNew()(v8);
  v8 = v18.value;
  *v7 = v18.value;
  if ((value & 0x8000000000000000) == 0)
  {
    goto LABEL_5;
  }

LABEL_9:
  __break(1u);
LABEL_10:
  __break(1u);
  return v18.value;
}

uint64_t SILValidator.swapEnd(renderer:swapID:)(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  result = outlined init with copy of SILBackend?(a1 + 24, v76, &_s10SILManager10SILBackend_pSgMd);
  if (v77)
  {
    v24 = *(*v2 + 248);
    v24(&v51, v76, a2);
    v7 = v51;
    v72 = v60;
    v73 = v61;
    v74 = v62;
    v75 = v63;
    v68 = v56;
    v69 = v57;
    v70 = v58;
    v71 = v59;
    v64 = v52;
    v65 = v53;
    v66 = v54;
    v67 = v55;
    __swift_destroy_boxed_opaque_existential_1Tm(v76);
    v78[8] = v72;
    v78[9] = v73;
    v78[10] = v74;
    v79 = v75;
    v78[4] = v68;
    v78[5] = v69;
    v78[6] = v70;
    v78[7] = v71;
    v78[0] = v64;
    v78[1] = v65;
    v78[2] = v66;
    v78[3] = v67;
    v23 = *(*v3 + 200);
    v8 = v23(v7);
    v9 = (*(*v3 + 144))(v8);
    if (v9)
    {
      v10 = v9;
      v11 = (*(*v3 + 192))();
      v12 = static UInt64.now()();
      (*(*v10 + 128))(v11, v78, a2, v12);
    }

    v13 = MAX_REGIONS_COUNT.unsafeMutableAddressor();
    v14 = *v13;
    v33[0] = 0;
    v34 = 0u;
    v35 = 0u;
    v36 = 0u;
    v37 = 0u;
    v38 = 0;
    v15 = _sSa9repeating5countSayxGx_SitcfCSb_10SILManager12SILValidatorC11RegionStateVSgt_Tt1g5Tf4gn_n(v33, v14);
    v16 = specialized _arrayForceCast<A, B>(_:)(v15);

    v17 = *(*v3 + 176);
    v17(v16);
    v18 = (*(*v3 + 272))(v78, a1);
    if (!v18)
    {
      v47 = v72;
      v48 = v73;
      v49 = v74;
      v50 = v75;
      v43 = v68;
      v44 = v69;
      v45 = v70;
      v46 = v71;
      v39 = v64;
      v40 = v65;
      v41 = v66;
      v42 = v67;
      goto LABEL_8;
    }

    result = outlined init with copy of SILBackend?(a1 + 24, v31, &_s10SILManager10SILBackend_pSgMd);
    if (v32)
    {
      v24(&v51, v31, a2);
      v19 = v51;
      v47 = v60;
      v48 = v61;
      v49 = v62;
      v50 = v63;
      v43 = v56;
      v44 = v57;
      v45 = v58;
      v46 = v59;
      v39 = v52;
      v40 = v53;
      v41 = v54;
      v42 = v55;
      __swift_destroy_boxed_opaque_existential_1Tm(v31);
      v23(v19);
      v20 = *v13;
      v25[0] = 0;
      v26 = 0u;
      v27 = 0u;
      v28 = 0u;
      v29 = 0u;
      v30 = 0;
      v21 = _sSa9repeating5countSayxGx_SitcfCSb_10SILManager12SILValidatorC11RegionStateVSgt_Tt1g5Tf4gn_n(v25, v20);
      v22 = specialized _arrayForceCast<A, B>(_:)(v21);

      v17(v22);
LABEL_8:
      (*(*v3 + 128))(&v39);
      return v18;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

__uint64_t SILValidator.indicatorStateFromRegions(forRegionState:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  result = static UInt64.now()();
  v58 = result;
  v4 = *(a1 + 16);
  if (v4)
  {
    v5 = 0;
    v61 = 0;
    v62 = 0;
    v63 = 0;
    v64 = 0;
    v66 = 0;
    v67 = 0;
    v65 = 0;
    v72 = 0;
    v73 = 0;
    v70 = 0;
    v71 = 0;
    v75 = 0;
    v76 = 0;
    v74 = 0;
    v78 = 0;
    v79 = 0;
    v55 = 0;
    v56 = 0;
    v80 = 0;
    v69 = 0;
    v60 = 0;
    v53 = a1 + 32;
    v68 = 512;
    v77 = 2;
    v6 = MEMORY[0x277D85000];
    v59 = 512;
    v7 = &_s10SILManager12SILValidatorC11RegionStateVSgMR;
    do
    {
      while (1)
      {
        v8 = (v53 + 72 * v5);
        v9 = v5;
        while (1)
        {
          if (v9 >= v4)
          {
            __break(1u);
LABEL_71:
            __break(1u);
            return result;
          }

          v10 = v8[3];
          v84[2] = v8[2];
          v84[3] = v10;
          v85 = *(v8 + 8);
          v11 = v8[1];
          v84[0] = *v8;
          v84[1] = v11;
          v5 = v9 + 1;
          if (__OFADD__(v9, 1))
          {
            goto LABEL_71;
          }

          v12 = v7;
          v13 = *v8;
          v110 = v8[1];
          v14 = v8[3];
          v111 = v8[2];
          v112 = v14;
          v113 = *(v8 + 8);
          v109 = v13;
          v114[0] = v13;
          v114[1] = v110;
          v115 = v111;
          v116 = v14;
          v117 = v113;
          v15 = v13;
          if (v13)
          {
            break;
          }

          v7 = v12;
          result = outlined init with copy of SILBackend?(v84, v82, &_s10SILManager12SILValidatorC11RegionStateVSgMd);
          ++v9;
          v8 = (v8 + 72);
          if (v5 == v4)
          {
            goto LABEL_30;
          }
        }

        v16 = v8[3];
        v123[2] = v8[2];
        v123[3] = v16;
        v124 = *(v8 + 8);
        v17 = v8[1];
        v123[0] = *v8;
        v123[1] = v17;
        v52 = *((*v6 & **&v114[0]) + 0x168);
        outlined init with copy of SILBackend?(v84, v82, &_s10SILManager12SILValidatorC11RegionStateVSgMd);
        v18 = outlined init with copy of SILBackend?(&v109, v82, &_s10SILManager12SILValidatorC11RegionStateVSgMd);
        LOBYTE(v52) = v52(v18);
        outlined destroy of SILValidator.RegionState?(&v109, &_s10SILManager12SILValidatorC11RegionStateVSgMd);
        if (v52)
        {
          break;
        }

        v27 = *((*MEMORY[0x277D85000] & *v15) + 0x170);
        v82[2] = v111;
        v82[3] = v112;
        v83 = v113;
        v82[0] = v109;
        v82[1] = v110;
        v28 = outlined init with copy of SILValidator.RegionState(v82, v81);
        v29 = v27(v28);
        v30 = outlined destroy of SILValidator.RegionState?(&v109, &_s10SILManager12SILValidatorC11RegionStateVSgMd);
        if (v29)
        {
          v125[0] = v64;
          v125[1] = v63;
          v125[2] = v62;
          v125[3] = v61;
          v125[4] = v60;
          v126 = v80;
          v127 = v65;
          v129 = BYTE6(v65);
          v128 = WORD2(v65);
          v130 = v67;
          v131 = v66;
          v132 = v59;
          (*(*v57 + 120))(v90, v30);
          updateIndicator #1 (_:_:_:_:) in SILValidator.indicatorStateFromRegions(forRegionState:)(v9, v123, v125, v90, v58, v91);
          v63 = v91[1];
          v64 = v91[0];
          v61 = v91[3];
          v62 = v91[2];
          v60 = v91[4];
          LODWORD(v80) = v92;
          v67 = v96;
          v65 = v93 | ((v94 | (v95 << 16)) << 32);
          v66 = v97;
          v59 = v98;
        }

        else
        {
          v133[0] = v70;
          v133[1] = v71;
          v133[2] = v72;
          v133[3] = v73;
          v133[4] = v69;
          v134 = BYTE4(v80);
          v135 = v74;
          v137 = BYTE6(v74);
          v136 = WORD2(v74);
          v138 = v75;
          v139 = v76;
          v140 = v68;
          (*(*v57 + 120))(v99, v30);
          updateIndicator #1 (_:_:_:_:) in SILValidator.indicatorStateFromRegions(forRegionState:)(v9, v123, v133, &v100, v58, v101);
          v70 = v101[0];
          v71 = v101[1];
          v72 = v101[2];
          v73 = v101[3];
          v69 = v101[4];
          HIDWORD(v80) = v102;
          v74 = v103 | ((v104 | (v105 << 16)) << 32);
          v75 = v106;
          v76 = v107;
          v68 = v108;
        }

        result = outlined destroy of SILValidator.RegionState?(&v109, &_s10SILManager12SILValidatorC11RegionStateVSgMd);
        v7 = &_s10SILManager12SILValidatorC11RegionStateVSgMR;
        if (v5 == v4)
        {
          goto LABEL_30;
        }
      }

      v19 = v79;
      if (v77 == 2)
      {
        v19 = v9;
      }

      if (v9 < v19)
      {
        v19 = v9;
      }

      v79 = v19;
      v20 = *((*MEMORY[0x277D85000] & *v15) + 0xA8);
      v21 = outlined init with copy of SILValidator.RegionState(v114, v82);
      v56 = v20(v21);
      v22 = outlined destroy of SILValidator.RegionState?(&v109, &_s10SILManager12SILValidatorC11RegionStateVSgMd);
      if (v77 == 2)
      {
        v23 = v58;
      }

      else
      {
        v23 = v78;
      }

      v24 = *(*v57 + 120);
      v25 = v24(v86, v22);
      if (v87 == 2)
      {
        v26 = v58;
      }

      else
      {
        v26 = v86[21];
      }

      if (v26 >= v23)
      {
        v26 = v23;
      }

      v78 = v26;
      v24(v88, v25);
      v7 = &_s10SILManager12SILValidatorC11RegionStateVSgMR;
      result = outlined destroy of SILValidator.RegionState?(&v109, &_s10SILManager12SILValidatorC11RegionStateVSgMd);
      v55 = v115;
      v77 = v89 & 1;
      v6 = MEMORY[0x277D85000];
    }

    while (v5 != v4);
  }

  else
  {
    v60 = 0;
    v61 = 0;
    v79 = 0;
    v80 = 0;
    v65 = 0;
    v66 = 0;
    v67 = 0;
    v63 = 0;
    v64 = 0;
    v62 = 0;
    v69 = 0;
    v70 = 0;
    v74 = 0;
    v75 = 0;
    v76 = 0;
    v71 = 0;
    v72 = 0;
    v73 = 0;
    v55 = 0;
    v56 = 0;
    v78 = 0;
    LOBYTE(v77) = 2;
    v59 = 512;
    v68 = 512;
  }

LABEL_30:
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy10SILManager12SILValidatorC14IndicatorStateVSgGMd);
  v31 = swift_allocObject();
  *(v31 + 16) = xmmword_262A998B0;
  *(v31 + 32) = v64;
  *(v31 + 40) = v63;
  *(v31 + 48) = v62;
  *(v31 + 56) = v61;
  *(v31 + 64) = v60;
  *(v31 + 72) = v80;
  *(v31 + 79) = BYTE6(v65);
  *(v31 + 77) = WORD2(v65);
  *(v31 + 73) = v65;
  *(v31 + 80) = v67;
  *(v31 + 88) = v66;
  *(v31 + 96) = v59;
  *(v31 + 104) = v70;
  *(v31 + 112) = v71;
  *(v31 + 120) = v72;
  *(v31 + 128) = v73;
  *(v31 + 136) = v69;
  *(v31 + 144) = BYTE4(v80);
  *(v31 + 151) = BYTE6(v74);
  *(v31 + 149) = WORD2(v74);
  *(v31 + 145) = v74;
  *(v31 + 152) = v75;
  *(v31 + 160) = v76;
  *(v31 + 168) = v68;
  v32 = *(*v57 + 120);
  v33 = v32(&v109);
  v34 = v110;
  v35 = v112;
  *(v31 + 208) = v111;
  *(v31 + 224) = v35;
  *(v31 + 240) = v113;
  *(v31 + 176) = v109;
  *(v31 + 192) = v34;
  (v32)(v114, v33);
  v36 = v31;
  v37 = v120;
  *(v31 + 264) = v119;
  *(v31 + 280) = v37;
  *(v31 + 296) = v121;
  *(v31 + 312) = v122;
  *(v31 + 248) = v118;
  v38 = v59 & 0xFF00;
  if (v60 >= v58)
  {
    v39 = v58;
  }

  else
  {
    v39 = v60;
  }

  if (v80 != 1)
  {
    v39 = v58;
  }

  if (v38 == 512)
  {
    v39 = v58;
  }

  v40 = v68 & 0xFF00;
  if (v69 >= v39)
  {
    v41 = v39;
  }

  else
  {
    v41 = v69;
  }

  if (HIDWORD(v80) != 1)
  {
    v41 = v39;
  }

  if (v40 == 512)
  {
    v42 = v39;
  }

  else
  {
    v42 = v41;
  }

  if (*(v36 + 241) << 8 != 512)
  {
    v43 = *(v36 + 208);
    if (v43 >= v42)
    {
      v43 = v42;
    }

    if (*(v36 + 216) == 1)
    {
      v42 = v43;
    }
  }

  v44 = *(v36 + 280);
  v45 = *(v36 + 288);
  v46 = *(v36 + 313) << 8;

  *a2 = v64;
  *(a2 + 8) = v63;
  *(a2 + 16) = v62;
  *(a2 + 24) = v61;
  *(a2 + 47) = BYTE6(v65);
  if (v44 >= v42)
  {
    v47 = v42;
  }

  else
  {
    v47 = v44;
  }

  if (v45 != 1 || v46 == 512)
  {
    v47 = v42;
  }

  v49 = HIDWORD(v80) != 1 || v40 == 512;
  v50 = v69;
  if (!v49)
  {
    v50 = v47;
  }

  if (v80 != 1 || v38 == 512)
  {
    v47 = v60;
  }

  *(a2 + 32) = v47;
  *(a2 + 40) = v80;
  *(a2 + 45) = WORD2(v65);
  *(a2 + 41) = v65;
  *(a2 + 48) = v67;
  *(a2 + 56) = v66;
  *(a2 + 64) = v59;
  *(a2 + 72) = v70;
  *(a2 + 80) = v71;
  *(a2 + 88) = v72;
  *(a2 + 96) = v73;
  *(a2 + 104) = v50;
  *(a2 + 112) = BYTE4(v80);
  *(a2 + 119) = BYTE6(v74);
  *(a2 + 117) = WORD2(v74);
  *(a2 + 113) = v74;
  *(a2 + 120) = v75;
  *(a2 + 128) = v76;
  *(a2 + 136) = v68;
  *(a2 + 144) = v79;
  *(a2 + 152) = v56;
  *(a2 + 160) = v55;
  *(a2 + 168) = v78;
  *(a2 + 176) = v77;
  return result;
}

void updateIndicator #1 (_:_:_:_:) in SILValidator.indicatorStateFromRegions(forRegionState:)(uint64_t a1@<X0>, uint64_t a2@<X1>, float *a3@<X2>, uint64_t a4@<X3>, unint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v12 = *(a3 + 3);
  v106 = type metadata accessor for Logger();
  v105 = *(v106 - 8);
  v13 = MEMORY[0x28223BE20](v106);
  v104 = &v98 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = MEMORY[0x28223BE20](v13);
  v103 = &v98 - v16;
  v17 = MEMORY[0x28223BE20](v15);
  v102 = &v98 - v18;
  MEMORY[0x28223BE20](v17);
  v20 = &v98 - v19;
  v21 = *a2;
  v22 = *(a2 + 36);
  v23 = *(*a2 + OBJC_IVAR____TtC10SILManager12SILAssetDesc_framesBuffer) + 28 * v22;
  v24 = *(a2 + 32);
  v25 = *(a3 + 65) << 8;
  v107 = a5;
  v108 = a5;
  if (v25 != 512)
  {
    v107 = *(a3 + 2);
    v108 = v12;
  }

  v26 = *(v23 + 4);
  v27 = *(a2 + 16);
  v28 = *(a2 + 24);
  v29 = specialized static SILValidator.frameSteady(_:_:_:)(v21, v22, v24);
  if (v25 == 512)
  {
    v30 = a5;
    v31 = a1;
  }

  else
  {
    v32 = *(a3 + 4);
    if (*a3 >= a1)
    {
      v31 = a1;
    }

    else
    {
      v31 = *a3;
    }

    if (v26 <= a3[2])
    {
      v26 = a3[2];
    }

    if (v24 <= a3[3])
    {
      v24 = a3[3];
    }

    if (v29)
    {
      v33 = a5;
    }

    else
    {
      v33 = *(a3 + 4);
    }

    if (*(a3 + 40) != 2)
    {
      v33 = a5;
    }

    if (v29)
    {
      v34 = a5;
    }

    else
    {
      v34 = *(a3 + 4);
    }

    if (*(a3 + 40))
    {
      v35 = 1;
    }

    else
    {
      v32 = v34;
      v35 = v29;
    }

    if (*(a3 + 40) <= 1u)
    {
      v30 = v32;
    }

    else
    {
      v30 = v33;
    }

    if (*(a3 + 40) <= 1u)
    {
      v29 = v35;
    }
  }

  v36 = v29 & 1;
  v37 = *(a4 + 64);
  if ((v37 & 0xFF00) == 0x200)
  {
    LOBYTE(v38) = 0;
    v40 = v107;
    v39 = v108;
LABEL_103:
    v109[72] = 0;
    *a6 = v31;
    *(a6 + 8) = v26;
    *(a6 + 12) = v24;
    *(a6 + 16) = v40;
    *(a6 + 24) = v39;
    *(a6 + 32) = v30;
    *(a6 + 40) = v36;
    *(a6 + 48) = v27;
    *(a6 + 56) = v28;
    *(a6 + 64) = 0;
    *(a6 + 65) = v38;
    return;
  }

  v42 = *(a4 + 8);
  v41 = *(a4 + 12);
  v44 = *(a4 + 16);
  v43 = *(a4 + 24);
  v45 = *(a4 + 32);
  v47 = *(a4 + 48);
  v46 = *(a4 + 56);
  if (*(a4 + 40) > 1u)
  {
    if (*(a4 + 40) != 2)
    {
      v40 = v107;
      v39 = v108;
      if (v29)
      {
        v36 = 1;
      }

      else if (v26 < v42 || v24 < v41)
      {
        v36 = 2;
      }

      else
      {
        v36 = 0;
      }

      goto LABEL_97;
    }

    if (v29)
    {
      v36 = 1;
      goto LABEL_45;
    }

    if (a5 >= v45)
    {
      v53 = *(a4 + 56);
      v54 = *(a4 + 32);
      v99 = v30;
      v100 = v44;
      v101 = v43;
      v55 = UInt64.toSeconds()();
      v56 = MEMORY[0x277D85000];
      v57 = (*((*MEMORY[0x277D85000] & *v21) + 0x138))();
      if (v57)
      {
        v58 = *(v57 + 24);

        v59 = *&v58[OBJC_IVAR____TtC10SILManager14SILConstraints_timeToSteadyAsSeconds];

        if (v59 >= v55 || (v37 & 0x100) != 0)
        {
          v36 = 2;
          v30 = v54;
          v40 = v107;
          v39 = v108;
          v43 = v101;
          v44 = v100;
          v46 = v53;
          goto LABEL_97;
        }

        v83 = SILLogger.unsafeMutableAddressor();
        (*(v105 + 16))(v103, v83, v106);
        outlined init with copy of SILValidator.RegionState(a2, v109);
        v84 = Logger.logObject.getter();
        v85 = static os_log_type_t.error.getter();
        if (os_log_type_enabled(v84, v85))
        {
          v86 = swift_slowAlloc();
          LODWORD(v102) = v37;
          v87 = v31;
          v88 = v86;
          *v86 = 134218240;
          *(v86 + 4) = (*((*v56 & *v21) + 0xA8))();
          outlined destroy of SILValidator.RegionState(a2);
          *(v88 + 12) = 2048;
          *(v88 + 14) = v87;
          _os_log_impl(&dword_262A43000, v84, v85, "Indicator %ld in region %ld exceeded timeToSteady threshold", v88, 0x16u);
          v89 = v88;
          v31 = v87;
          v37 = v102;
          MEMORY[0x266730D70](v89, -1, -1);
        }

        else
        {
          outlined destroy of SILValidator.RegionState(a2);
        }

        v40 = v107;
        v39 = v108;
        v46 = v53;

        (*(v105 + 8))(v103, v106);
        swift_beginAccess();
        v30 = v99 & (static SILValidator.DisabledHealthChecks << 61 >> 63);
        v97 = (static SILValidator.DisabledHealthChecks & 4) == 0;
        goto LABEL_93;
      }

      goto LABEL_108;
    }

LABEL_105:
    __break(1u);
LABEL_106:
    __break(1u);
LABEL_107:
    __break(1u);
LABEL_108:
    __break(1u);
    goto LABEL_109;
  }

  if (!*(a4 + 40))
  {
    v104 = *(a4 + 56);
    if (a5 >= v45)
    {
      v98 = v45;
      v99 = v30;
      *&v103 = v47;
      v100 = v44;
      v101 = v43;
      v48 = UInt64.toSeconds()();
      v49 = (*((*MEMORY[0x277D85000] & *v21) + 0x138))();
      if (v49)
      {
        v50 = *(v49 + 24);

        v51 = *&v50[OBJC_IVAR____TtC10SILManager14SILConstraints_timeToSteadyAsSeconds];

        if (v51 < v48 && (v37 & 0x100) == 0)
        {
          v69 = SILLogger.unsafeMutableAddressor();
          (*(v105 + 16))(v20, v69, v106);
          outlined init with copy of SILValidator.RegionState(a2, v109);
          v70 = Logger.logObject.getter();
          v71 = static os_log_type_t.error.getter();
          v72 = os_log_type_enabled(v70, v71);
          v47 = *&v103;
          v46 = *&v104;
          if (v72)
          {
            v73 = swift_slowAlloc();
            LODWORD(v102) = v37;
            v74 = v31;
            v75 = v73;
            *v73 = 134218240;
            *(v73 + 4) = (*((*MEMORY[0x277D85000] & *v21) + 0xA8))();
            outlined destroy of SILValidator.RegionState(a2);
            *(v75 + 12) = 2048;
            *(v75 + 14) = v74;
            _os_log_impl(&dword_262A43000, v70, v71, "Indicator %ld in region %ld exceeded timeToSteady threshold", v75, 0x16u);
            v76 = v75;
            v31 = v74;
            v37 = v102;
            MEMORY[0x266730D70](v76, -1, -1);
          }

          else
          {
            outlined destroy of SILValidator.RegionState(a2);
          }

          v40 = v107;
          v39 = v108;

          (*(v105 + 8))(v20, v106);
          swift_beginAccess();
          v30 = v99 & (static SILValidator.DisabledHealthChecks << 61 >> 63);
          if ((static SILValidator.DisabledHealthChecks & 4) == 0)
          {
            v36 = 3;
          }

          goto LABEL_96;
        }

        v47 = *&v103;
        v46 = *&v104;
        if (v36)
        {
          v36 = 1;
          v40 = v107;
          v39 = v108;
          v43 = v101;
          v44 = v100;
          v30 = v99;
LABEL_97:
          v38 = (v37 >> 8) & 1;
          if (!((v24 > 0.0) | v37 & 1))
          {
            v27 = v47;
            v28 = v46;
          }

          if (v44 < v40)
          {
            v40 = v44;
          }

          if (v43 < v39)
          {
            v39 = v43;
          }

          goto LABEL_103;
        }

        v43 = v101;
        v44 = v100;
        if (v24 >= v41)
        {
          if (v26 < v42 && (v37 & 0x100) == 0)
          {
            goto LABEL_72;
          }
        }

        else if ((v37 & 0x100) == 0)
        {
LABEL_72:
          v77 = SILLogger.unsafeMutableAddressor();
          (*(v105 + 16))(v102, v77, v106);
          outlined init with copy of SILValidator.RegionState(a2, v109);
          v78 = Logger.logObject.getter();
          v79 = static os_log_type_t.error.getter();
          if (os_log_type_enabled(v78, v79))
          {
            v80 = v31;
            v81 = swift_slowAlloc();
            *v81 = 134218240;
            *(v81 + 4) = (*((*MEMORY[0x277D85000] & *v21) + 0xA8))();
            outlined destroy of SILValidator.RegionState(a2);
            *(v81 + 12) = 2048;
            *(v81 + 14) = v80;
            _os_log_impl(&dword_262A43000, v78, v79, "Indicator %ld in region %ld shrunk in opacity or size before becoming steady", v81, 0x16u);
            v82 = v81;
            v31 = v80;
            MEMORY[0x266730D70](v82, -1, -1);
          }

          else
          {
            outlined destroy of SILValidator.RegionState(a2);
          }

          v40 = v107;
          v39 = v108;

          (*(v105 + 8))(v102, v106);
          swift_beginAccess();
          v30 = v98 & (static SILValidator.DisabledHealthChecks << 60 >> 63);
          v97 = (static SILValidator.DisabledHealthChecks & 8) == 0;
LABEL_93:
          if (v97)
          {
            v36 = 3;
          }

          else
          {
            v36 = 0;
          }

LABEL_96:
          v43 = v101;
          v44 = v100;
          goto LABEL_97;
        }

        v36 = 0;
        v30 = v98;
LABEL_45:
        v40 = v107;
        v39 = v108;
        goto LABEL_97;
      }

      goto LABEL_107;
    }

    __break(1u);
    goto LABEL_105;
  }

  if (v29)
  {
    v36 = 1;
    v30 = *(a4 + 32);
    goto LABEL_45;
  }

  if (a5 < v45)
  {
    goto LABEL_106;
  }

  v61 = *(a4 + 56);
  v99 = v30;
  v100 = v44;
  v101 = v43;
  v62 = UInt64.toSeconds()();
  v63 = MEMORY[0x277D85000];
  v64 = (*((*MEMORY[0x277D85000] & *v21) + 0x138))();
  if (v64)
  {
    v65 = *(v64 + 24);

    v66 = *&v65[OBJC_IVAR____TtC10SILManager14SILConstraints_timeAsSteadyAsSeconds];

    if (v66 <= v62 || (v37 & 0x100) != 0)
    {
      v36 = 2;
      v30 = a5;
      v40 = v107;
      v39 = v108;
      v43 = v101;
      v44 = v100;
      v46 = v61;
      goto LABEL_97;
    }

    v90 = SILLogger.unsafeMutableAddressor();
    (*(v105 + 16))(v104, v90, v106);
    outlined init with copy of SILValidator.RegionState(a2, v109);
    v91 = Logger.logObject.getter();
    v92 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v91, v92))
    {
      v93 = swift_slowAlloc();
      v94 = v63;
      v95 = v93;
      *v93 = 134218752;
      *(v93 + 4) = (*((*v94 & *v21) + 0xA8))();
      outlined destroy of SILValidator.RegionState(a2);
      *(v95 + 12) = 2048;
      *(v95 + 14) = v31;
      *(v95 + 22) = 2048;
      *(v95 + 24) = v62;
      *(v95 + 32) = 2048;
      *(v95 + 34) = v66;
      _os_log_impl(&dword_262A43000, v91, v92, "Indicator %ld in region %ld %fs did not exceed timeAsSteady threshold %fs before becoming unsteady", v95, 0x2Au);
      MEMORY[0x266730D70](v95, -1, -1);
    }

    else
    {
      outlined destroy of SILValidator.RegionState(a2);
    }

    v40 = v107;
    v39 = v108;
    v46 = v61;

    (*(v105 + 8))(v104, v106);
    swift_beginAccess();
    v30 = v99 & (static SILValidator.DisabledHealthChecks << 59 >> 63);
    v97 = (static SILValidator.DisabledHealthChecks & 0x10) == 0;
    goto LABEL_93;
  }

LABEL_109:
  __break(1u);
}

uint64_t SILValidator.commitPendingRegionStates(backend:swapID:)@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v101 = a1;
  v98 = a2;
  v84 = type metadata accessor for Logger();
  v82 = *(v84 - 8);
  v3 = MEMORY[0x28223BE20](v84);
  v83 = &v81 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v102 = (*(*v2 + 192))(v3);
  v5 = *(*v2 + 168);
  v6 = *v2 + 168;
  v103 = v2;
  v99 = v6;
  v100 = v5;
  result = v5();
  v8 = result;
  v9 = *(result + 16);
  if (!v9)
  {
LABEL_13:

    v31 = *(*v103 + 240);

    v33 = v31(&v118, v32);
    v96 = v119;
    v97 = v118;
    v94 = v121;
    v95 = v120;
    v92 = v123;
    v93 = *&v122[8];
    v90 = v125;
    v91 = v124;
    v86 = v126;
    v87 = *v122;
    v88 = v128;
    v89 = v127;
    v85 = v129;
    result = (v100)(v33);
    v35 = result;
    v36 = *(result + 16);
    if (!v36)
    {
LABEL_48:
      v73 = v102;

      v74 = v98;
      *v98 = v73;
      v75 = v97;
      *(v74 + 3) = v96;
      *(v74 + 1) = v75;
      v76 = v95;
      *(v74 + 7) = v94;
      *(v74 + 5) = v76;
      v77 = v86;
      *(v74 + 36) = v87;
      v78 = v92;
      *(v74 + 5) = v93;
      *(v74 + 6) = v78;
      v79 = v90;
      *(v74 + 7) = v91;
      *(v74 + 8) = v79;
      *(v74 + 72) = v77;
      v80 = v89;
      *(v74 + 21) = v88;
      *(v74 + 19) = v80;
      *(v74 + 184) = v85;
      return result;
    }

    v37 = 0;
    v38 = v82++;
    v99 = (v38 + 2);
    v100 = "expected case value, %llx";
    v39 = result + 40;
    *&v34 = 134217984;
    v81 = v34;
    v103 = result;
    while (1)
    {
      if (v37 >= *(v35 + 16))
      {
        goto LABEL_50;
      }

      v113 = *(v39 - 8);
      v40 = *(v39 + 8);
      v41 = *(v39 + 24);
      v42 = *(v39 + 56);
      v116 = *(v39 + 40);
      v117 = v42;
      v114 = v40;
      v115 = v41;
      v111[0] = *v39;
      v44 = *(v39 + 32);
      v43 = *(v39 + 48);
      v45 = *(v39 + 16);
      v112 = *(v39 + 64);
      v111[2] = v44;
      v111[3] = v43;
      v111[1] = v45;
      if (v113 != 1)
      {
        break;
      }

      if (*&v111[0])
      {
        v46 = v36;
        v47 = *((*MEMORY[0x277D85000] & **&v111[0]) + 0xA8);
        outlined init with copy of SILBackend?(&v113, &v106, &_sSb5dirty_10SILManager12SILValidatorC11RegionStateVSgtMd);
        v48 = outlined init with copy of SILBackend?(v111, &v106, &_s10SILManager12SILValidatorC11RegionStateVSgMd);
        v49 = v47(v48);
        type metadata accessor for SILIndicatorDesc();
        if (static SILIndicatorDesc.isCameraIndicator(_:)(v49))
        {
          v50 = *v122;
          v36 = v46;
          if ((*v122 & 0xFF00) == 0x200)
          {
            goto LABEL_30;
          }

          *(&v105 + 1) = &type metadata for SILValidator.IndicatorState;
          v51 = swift_allocObject();
          *&v104 = v51;
          v52 = v119;
          *(v51 + 16) = v118;
          *(v51 + 32) = v52;
          v53 = v120;
          v54 = v121;
          goto LABEL_28;
        }

        if (static SILIndicatorDesc.isMicrophoneIndicator(_:)(v49))
        {
          v50 = v126;
          v36 = v46;
          if ((v126 & 0xFF00) == 0x200)
          {
            goto LABEL_30;
          }

          *(&v105 + 1) = &type metadata for SILValidator.IndicatorState;
          v51 = swift_allocObject();
          *&v104 = v51;
          v55 = v123;
          *(v51 + 16) = *&v122[8];
          *(v51 + 32) = v55;
          v53 = v124;
          v54 = v125;
LABEL_28:
          *(v51 + 48) = v53;
          *(v51 + 64) = v54;
          *(v51 + 80) = v50;
          v35 = v103;
        }

        else
        {
          v56 = v129;
          v36 = v46;
          if (v129 == 2)
          {
LABEL_30:
            outlined destroy of SILValidator.RegionState?(v111, &_s10SILManager12SILValidatorC11RegionStateVSgMd);
            outlined destroy of SILValidator.RegionState?(v111, &_s10SILManager12SILValidatorC11RegionStateVSgMd);
            v104 = 0u;
            v105 = 0u;
            result = outlined destroy of SILValidator.RegionState?(&v104, &_sypSgMd);
            v35 = v103;
            goto LABEL_16;
          }

          *(&v105 + 1) = &type metadata for SILValidator.FaceIDState;
          v57 = swift_allocObject();
          *&v104 = v57;
          v58 = v128;
          *(v57 + 16) = v127;
          *(v57 + 32) = v58;
          *(v57 + 48) = v56;
          v35 = v103;
        }

        if (swift_dynamicCast())
        {
          if ((v110 & 0x100) != 0)
          {
            outlined destroy of SILValidator.RegionState?(v111, &_s10SILManager12SILValidatorC11RegionStateVSgMd);
            v59 = -1;
LABEL_44:
            swift_beginAccess();
            if ((static SILValidator.DisabledHealthChecks & 0x100) != 0)
            {
              v67 = -1;
            }

            else
            {
              v67 = v59;
            }

            v68 = Log.unsafeMutableAddressor();
            swift_beginAccess();
            v69 = *v68;
            *&v106 = 0;
            *(&v106 + 1) = 0xE000000000000000;

            _StringGuts.grow(_:)(42);
            MEMORY[0x26672FCC0](0xD000000000000019, v100 | 0x8000000000000000);
            UInt64.toSeconds()();
            Double.write<A>(to:)();
            MEMORY[0x26672FCC0](0x657220726F662073, 0xED0000206E6F6967);
            *&v104 = v37;
            v70 = dispatch thunk of CustomStringConvertible.description.getter();
            MEMORY[0x26672FCC0](v70);

            (*(*v69 + 120))(7, v106, *(&v106 + 1));

            v71 = v101[3];
            v72 = v101[4];
            __swift_project_boxed_opaque_existential_1(v101, v71);
            (*(v72 + 64))(v37, 1, v67, 24, v71, v72);
LABEL_24:
            result = outlined destroy of SILValidator.RegionState?(v111, &_s10SILManager12SILValidatorC11RegionStateVSgMd);
            goto LABEL_16;
          }

          v60 = BYTE8(v108);
          if (BYTE8(v108) != 3 || v108)
          {
            outlined destroy of SILValidator.RegionState?(v111, &_s10SILManager12SILValidatorC11RegionStateVSgMd);
            if (v60)
            {
              v59 = -1;
            }

            else
            {
              v59 = static UInt64.secondsAsTicks(_:)(0.032);
            }

            goto LABEL_44;
          }

          v61 = SILLogger.unsafeMutableAddressor();
          (*v99)(v83, v61, v84);
          v62 = Logger.logObject.getter();
          v63 = static os_log_type_t.error.getter();
          if (os_log_type_enabled(v62, v63))
          {
            v64 = swift_slowAlloc();
            *v64 = v81;
            *(v64 + 4) = v37;
            _os_log_impl(&dword_262A43000, v62, v63, "Reporting bad health for malicious indicator in region %ld", v64, 0xCu);
            MEMORY[0x266730D70](v64, -1, -1);
          }

          (*v82)(v83, v84);
          v65 = v101[3];
          v66 = v101[4];
          __swift_project_boxed_opaque_existential_1(v101, v65);
          (*(v66 + 64))(v37, 0, -1, 24, v65, v66);
        }

        outlined destroy of SILValidator.RegionState?(v111, &_s10SILManager12SILValidatorC11RegionStateVSgMd);
        goto LABEL_24;
      }

      result = outlined init with copy of SILBackend?(&v113, &v106, &_sSb5dirty_10SILManager12SILValidatorC11RegionStateVSgtMd);
LABEL_16:
      ++v37;
      v39 += 80;
      if (v36 == v37)
      {
        goto LABEL_48;
      }
    }

    outlined init with copy of SILBackend?(&v113, &v106, &_sSb5dirty_10SILManager12SILValidatorC11RegionStateVSgtMd);
    goto LABEL_24;
  }

  v10 = 0;
  v11 = result + 40;
  *&v96 = v9 - 1;
  v12 = 32;
  *&v97 = result + 40;
  *&v95 = 32;
LABEL_3:
  v13 = v12 + 72 * v10;
  v14 = v11 + 80 * v10;
  while (v10 < *(v8 + 16))
  {
    v118 = *(v14 - 8);
    v15 = *(v14 + 8);
    v16 = *(v14 + 24);
    v17 = *(v14 + 56);
    v121 = *(v14 + 40);
    *v122 = v17;
    v119 = v15;
    v120 = v16;
    v18 = v10 + 1;
    v106 = *v14;
    v20 = *(v14 + 32);
    v19 = *(v14 + 48);
    v21 = *(v14 + 16);
    v110 = *(v14 + 64);
    v108 = v20;
    v109 = v19;
    v107 = v21;
    if (v118 == 1)
    {
      outlined init with copy of SILBackend?(&v118, &v113, &_sSb5dirty_10SILManager12SILValidatorC11RegionStateVSgtMd);
      v22 = v102;
      result = swift_isUniquelyReferenced_nonNull_native();
      if ((result & 1) == 0)
      {
        result = specialized _ArrayBuffer._consumeAndCreateNew()(v22);
        v22 = result;
      }

      if (v10 >= v22[2])
      {
        goto LABEL_51;
      }

      v102 = v22;
      v23 = v22 + v13;
      v113 = *(v22 + v13);
      v24 = *(v22 + v13 + 16);
      v25 = *(v22 + v13 + 32);
      v26 = *(v22 + v13 + 48);
      *&v117 = *(v22 + v13 + 64);
      v115 = v25;
      v116 = v26;
      v114 = v24;
      v28 = v108;
      v27 = v109;
      v29 = v107;
      *(v23 + 8) = v110;
      *(v23 + 2) = v28;
      *(v23 + 3) = v27;
      *(v23 + 1) = v29;
      *v23 = v106;
      result = outlined destroy of SILValidator.RegionState?(&v113, &_s10SILManager12SILValidatorC11RegionStateVSgMd);
      v30 = v96 == v10++;
      v11 = v97;
      v12 = v95;
      if (v30)
      {
        goto LABEL_13;
      }

      goto LABEL_3;
    }

    outlined init with copy of SILBackend?(&v118, &v113, &_sSb5dirty_10SILManager12SILValidatorC11RegionStateVSgtMd);
    result = outlined destroy of SILValidator.RegionState?(&v106, &_s10SILManager12SILValidatorC11RegionStateVSgMd);
    v13 += 72;
    v14 += 80;
    ++v10;
    if (v9 == v18)
    {
      goto LABEL_13;
    }
  }

  __break(1u);
LABEL_50:
  __break(1u);
LABEL_51:
  __break(1u);
  return result;
}

uint64_t SILValidator.triggerFBI(renderer:region:indicator:)(void **a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v114 = a2;
  v7 = type metadata accessor for Logger();
  v8 = *(v7 - 8);
  v9 = MEMORY[0x28223BE20](v7);
  v111 = &v101[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v11 = MEMORY[0x28223BE20](v9);
  v112 = &v101[-v12];
  MEMORY[0x28223BE20](v11);
  v14 = &v101[-v13];
  outlined init with copy of SILBackend?((a1 + 3), v124, &_s10SILManager10SILBackend_pSgMd);
  v15 = v125;
  if (!v125)
  {
    goto LABEL_79;
  }

  v16 = v126;
  __swift_project_boxed_opaque_existential_1(v124, v125);
  v17 = (*(v16 + 104))(v15, v16);
  __swift_destroy_boxed_opaque_existential_1Tm(v124);
  if (v17)
  {
    v18 = SILLogger.unsafeMutableAddressor();
    (*(v8 + 16))(v14, v18, v7);
    v19 = Logger.logObject.getter();
    v20 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v19, v20))
    {
      v21 = swift_slowAlloc();
      *v21 = 134217984;
      *(v21 + 4) = a3;
      _os_log_impl(&dword_262A43000, v19, v20, "Skipping FBI for indicator %ld as it is disabled", v21, 0xCu);
      MEMORY[0x266730D70](v21, -1, -1);
    }

    (*(v8 + 8))(v14, v7);
    return 0;
  }

  type metadata accessor for SILIndicatorDesc();
  v23 = static SILIndicatorDesc.isCameraIndicator(_:)(a3);
  v109 = v8;
  if (v23)
  {
    swift_beginAccess();
    if ((static SILValidator.DisabledHealthChecks & 0x200) == 0)
    {
      v25 = (*(*v4 + 136))(v124);
      if (*(v24 + 65) << 8 != 512)
      {
        *(v24 + 65) = 1;
      }

      v25(v124, 0);
    }
  }

  if (static SILIndicatorDesc.isMicrophoneIndicator(_:)(a3))
  {
    swift_beginAccess();
    if ((static SILValidator.DisabledHealthChecks & 0x200) == 0)
    {
      v27 = (*(*v4 + 136))(v124);
      if (*(v26 + 137) << 8 != 512)
      {
        *(v26 + 137) = 1;
      }

      v27(v124, 0);
    }
  }

  if (static SILIndicatorDesc.isFaceIDIndicator(_:)())
  {
    swift_beginAccess();
    if ((static SILValidator.DisabledHealthChecks & 0x200) == 0)
    {
      v29 = (*(*v4 + 136))(v124);
      if (*(v28 + 176) != 2)
      {
        *(v28 + 176) = 1;
      }

      v29(v124, 0);
    }
  }

  v30 = MEMORY[0x277D85000];
  v31 = *((*MEMORY[0x277D85000] & *a1[8]) + 0xA8);
  v113 = a3;
  v32 = v31(a3);
  v110 = v7;
  v33 = *((*v30 & *v32) + 0x138);
  v34 = v33();
  if (!v34)
  {
    goto LABEL_81;
  }

  v35 = *(v34 + 24);

  *v108 = *&v35[OBJC_IVAR____TtC10SILManager14SILConstraints_fallbackInfo];
  v36 = *&v35[OBJC_IVAR____TtC10SILManager14SILConstraints_fallbackInfo + 16];
  v37 = v35[OBJC_IVAR____TtC10SILManager14SILConstraints_fallbackInfo + 18];

  if (v37)
  {
    v38 = v33();
    if (!v38)
    {
LABEL_82:
      __break(1u);
      result = swift_unexpectedError();
      __break(1u);
      return result;
    }

    v39 = *(v38 + 24);

    v40 = *&v39[OBJC_IVAR____TtC10SILManager14SILConstraints_boundingBoxes];

    v41 = MEMORY[0x277D85000];
    if ((*((*MEMORY[0x277D85000] & *v32) + 0x170))() & 1) != 0 || ((*((*v41 & *v32) + 0x178))())
    {
      (*(*v4 + 120))(v124);
      SILValidator.IndicatorStates.subscript.getter(v113, &v119);
      if (v120)
      {
        if (swift_dynamicCast())
        {
          if ((v118 & 1) == 0)
          {
            v42 = *(v40 + 16);
            v43 = *(v42 + 16);
            if (v43)
            {
              v44 = v4[2]._0;
              v45 = v4[2]._1;
              v46 = *(v42 + 32);
              v47 = *(v42 + 40);
              v48 = *(v42 + 48);
              v49 = *(v42 + 56);
              v50 = v43 - 1;
              v103 = v40;
              v102 = v44;
              if (v43 != 1)
              {
                v51 = (v42 + 88);
                v104 = v117 / v45;
                v105 = v116 / v44;
                do
                {
                  v52 = *(v51 - 3);
                  v53 = *(v51 - 2);
                  v54 = *(v51 - 1);
                  v107 = *v51;
                  v108[0] = v54;
                  v56 = v104;
                  v55 = v105;
                  v106 = CGRect.squaredDistanceFrom(_:)(v105, v104, v52, v53, v54, v107);
                  v57 = CGRect.squaredDistanceFrom(_:)(v55, v56, v46, v47, v48, v49);
                  if (v106 < v57)
                  {
                    v46 = v52;
                    v47 = v53;
                    v48 = v108[0];
                    v49 = v107;
                  }

                  v51 += 4;
                  --v50;
                }

                while (v50);
              }

              v58 = Log.unsafeMutableAddressor();
              swift_beginAccess();
              v59 = *(**v58 + 128);

              v59(7, 0xD00000000000002ELL, 0x8000000262A9DFC0);

              v122 = CGRect.midPoint.getter(v46, v47, v48);
              v123 = v60;
              v121 = CGSize.init(_:)(__PAIR64__(v45, v102));
              type metadata accessor for CGPoint(0);
              v62 = v61;
              type metadata accessor for CGSize(0);
              v64 = * infix<A, B>(_:_:)(&v122, &v121, v62, v63, &protocol witness table for CGPoint, &protocol witness table for CGSize);
              height = v119.height;
              width = v119.width;
              v67 = v113;
              goto LABEL_40;
            }
          }
        }
      }

      else
      {
        outlined destroy of SILValidator.RegionState?(&v119, &_sypSgMd);
      }
    }

    v75 = Log.unsafeMutableAddressor();
    swift_beginAccess();
    v76 = *(**v75 + 128);

    v76(7, 0xD00000000000002DLL, 0x8000000262A9DF90);

    v77 = *(v40 + 16);
    if (!*(v77 + 16))
    {
LABEL_78:
      __break(1u);
LABEL_79:
      __break(1u);
      goto LABEL_80;
    }

    v122 = CGRect.midPoint.getter(*(v77 + 32), *(v77 + 40), *(v77 + 48));
    v123 = v78;
    v121 = CGSize.init(_:)(v4[2]);
    type metadata accessor for CGPoint(0);
    v80 = v79;
    type metadata accessor for CGSize(0);
    v64 = * infix<A, B>(_:_:)(&v122, &v121, v80, v81, &protocol witness table for CGPoint, &protocol witness table for CGSize);
    height = v119.height;
    width = v119.width;
    v67 = v113;
LABEL_40:
    v82 = (*((*MEMORY[0x277D85000] & *v32) + 0x168))(v64);
    v83 = v32 + OBJC_IVAR____TtC10SILManager12SILAssetDesc_framesBuffer;
    v84 = *(v32 + OBJC_IVAR____TtC10SILManager12SILAssetDesc_framesBuffer);
    if (v82)
    {
      if (!v84)
      {
        goto LABEL_80;
      }

      v85 = *(v83 + 1);
      if (!v85)
      {
        goto LABEL_80;
      }

      v36 = 0;
      v86 = 28 * v85;
      v87 = v84 + 24;
      v88 = 28 * v85;
      do
      {
        if (*(v87 + 3))
        {
          LOWORD(v87) = *v87;
          goto LABEL_67;
        }

        ++v36;
        v87 += 28;
        v88 -= 28;
      }

      while (v88);
      LODWORD(v87) = *(v84 + 24);
      if (v85 == 1)
      {
        goto LABEL_59;
      }

      v36 = 0;
      v89 = *(v84 + 20);
      v90 = v86 - 28;
      v91 = (v84 + 52);
      v92 = 1;
      do
      {
        v93 = *(v91 - 1);
        v94 = v89 >= v93;
        if (v89 < v93)
        {
          v36 = v92;
        }

        ++v92;
        if (v89 <= v93)
        {
          v89 = *(v91 - 1);
        }

        if (!v94)
        {
          LOBYTE(v87) = *v91;
        }

        v91 += 7;
        v90 -= 28;
      }

      while (v90);
    }

    else
    {
      if (!v84)
      {
        goto LABEL_80;
      }

      v95 = *(v83 + 1);
      if (!v95)
      {
        goto LABEL_80;
      }

      LODWORD(v87) = *(v84 + 24);
      if (v95 == 1)
      {
LABEL_59:
        v36 = 0;
      }

      else
      {
        v36 = 0;
        v96 = *(v84 + 4);
        v97 = 28 * v95 - 28;
        v98 = v84 + 32;
        v99 = 1;
        do
        {
          if (v96 < *v98)
          {
            v36 = v99;
          }

          ++v99;
          if (v96 < *v98)
          {
            v96 = *v98;
            LOBYTE(v87) = *(v98 + 20);
          }

          v98 += 28;
          v97 -= 28;
        }

        while (v97);
      }
    }

LABEL_67:
    if (v87 == 2)
    {
LABEL_80:
      __break(1u);
LABEL_81:
      __break(1u);
      goto LABEL_82;
    }

    if ((v36 & 0x8000000000000000) != 0)
    {
      __break(1u);
    }

    else if (!(v36 >> 16))
    {
      goto LABEL_70;
    }

    __break(1u);
    goto LABEL_78;
  }

  v68 = (*(v32 + OBJC_IVAR____TtC10SILManager12SILAssetDesc_extent) / 2);
  *v124 = *v108;
  v119 = CGSize.init(_:)(v4[2]);
  type metadata accessor for CGPoint(0);
  v70 = v69;
  type metadata accessor for CGSize(0);
  v72 = v71;
  v73 = * infix<A, B>(_:_:)(v124, &v119, v70, v71, &protocol witness table for CGPoint, &protocol witness table for CGSize);
  v119 = v115;
  v122 = destructiveProjectEnumData for SILValidator.SILValidationErrors(v73, v68, v68);
  v123 = v74;
  + infix<A, B>(_:_:)(&v119, &v122, v70, v72, &protocol witness table for CGPoint, &protocol witness table for CGSize);
  height = v124[1];
  width = v124[0];
  v67 = v113;
LABEL_70:
  ((*a1)[88])(v114, v67, 0, v36, width, height, 1.0, 0.0);

  if (v67 <= 2)
  {
    v100 = 0x20201u >> (8 * v67);
  }

  else
  {
    v100 = 3;
  }

  if (v67 >= 0)
  {
    return v100;
  }

  else
  {
    return 0;
  }
}

void *SILValidator.getMinOnTime(renderer:)(uint64_t a1)
{
  v3 = type metadata accessor for Logger();
  v60 = *(v3 - 8);
  v4 = MEMORY[0x28223BE20](v3);
  v56 = &v55 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = MEMORY[0x28223BE20](v4);
  v58 = &v55 - v7;
  MEMORY[0x28223BE20](v6);
  v9 = &v55 - v8;
  result = outlined init with copy of SILBackend?(a1 + 24, v74, &_s10SILManager10SILBackend_pSgMd);
  v11 = v75;
  if (!v75)
  {
    goto LABEL_46;
  }

  v12 = v76;
  __swift_project_boxed_opaque_existential_1(v74, v75);
  v13 = (*(v12 + 136))(v11, v12);
  __swift_destroy_boxed_opaque_existential_1Tm(v74);
  v59 = static UInt64.secondsAsTicks(_:)(v13);
  v14 = static UInt64.now()();
  result = outlined init with copy of SILBackend?(a1 + 24, v61, &_s10SILManager10SILBackend_pSgMd);
  v15 = v62;
  if (v62)
  {
    v16 = v63;
    __swift_project_boxed_opaque_existential_1(v61, v62);
    v17 = (*(v16 + 96))(v15, v16);
    v55 = v18;
    v57 = v19;
    v20 = __swift_destroy_boxed_opaque_existential_1Tm(v61);
    v21 = *(*v1 + 120);
    result = v21(v64, v20);
    v22 = v64[2];
    if (v65 << 8 == 512)
    {
      v22 = 0;
    }

    v23 = v14 >= v22;
    v24 = v14 - v22;
    if (!v23)
    {
      __break(1u);
      goto LABEL_42;
    }

    if (!v17)
    {
      v25 = v59;
      if (v24 >= v59)
      {
        goto LABEL_17;
      }

      v26 = SILLogger.unsafeMutableAddressor();
      (*(v60 + 16))(v9, v26, v3);
      v27 = Logger.logObject.getter();
      v28 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v27, v28))
      {
        v29 = v3;
        v30 = swift_slowAlloc();
        *v30 = 0;
        _os_log_impl(&dword_262A43000, v27, v28, "EIC FBI race! Forcing MOT on Cam", v30, 2u);
        v31 = v30;
        v3 = v29;
        v25 = v59;
        MEMORY[0x266730D70](v31, -1, -1);
      }

      v32 = (*(v60 + 8))(v9, v3);
      result = v21(v66, v32);
      v33 = v66[2];
      if (v67 << 8 == 512)
      {
        v33 = v14;
      }

      v17 = v33 + v25;
      if (!__CFADD__(v33, v25))
      {
LABEL_17:
        result = v21(v68, result);
        if (v69 == 2)
        {
          v34 = 0;
        }

        else
        {
          v34 = v68[21];
        }

        v23 = v14 >= v34;
        v35 = v14 - v34;
        if (v23)
        {
          if (!v57 && v35 < v25)
          {
            v36 = SILLogger.unsafeMutableAddressor();
            (*(v60 + 16))(v58, v36, v3);
            v37 = Logger.logObject.getter();
            v38 = static os_log_type_t.default.getter();
            if (os_log_type_enabled(v37, v38))
            {
              v39 = v3;
              v40 = swift_slowAlloc();
              *v40 = 0;
              _os_log_impl(&dword_262A43000, v37, v38, "EIC FBI race! Forcing MOT on FaceID", v40, 2u);
              v41 = v40;
              v3 = v39;
              v25 = v59;
              MEMORY[0x266730D70](v41, -1, -1);
            }

            v42 = (*(v60 + 8))(v58, v3);
            result = v21(v70, v42);
            v43 = v71 == 2 ? v14 : v70[21];
            if (__CFADD__(v43, v25))
            {
              goto LABEL_44;
            }
          }

          result = v21(v72, result);
          v44 = v72[11];
          if (v73 << 8 == 512)
          {
            v44 = 0;
          }

          v23 = v14 >= v44;
          v45 = v14 - v44;
          if (v23)
          {
            if (v55 || v45 >= v25)
            {
              return v17;
            }

            v46 = SILLogger.unsafeMutableAddressor();
            (*(v60 + 16))(v56, v46, v3);
            v47 = Logger.logObject.getter();
            v48 = static os_log_type_t.default.getter();
            if (os_log_type_enabled(v47, v48))
            {
              v49 = swift_slowAlloc();
              v58 = v17;
              v50 = v3;
              v51 = v49;
              *v49 = 0;
              _os_log_impl(&dword_262A43000, v47, v48, "EIC FBI race! Forcing MOT on Mic", v49, 2u);
              v52 = v51;
              v3 = v50;
              v17 = v58;
              MEMORY[0x266730D70](v52, -1, -1);
            }

            v53 = (*(v60 + 8))(v56, v3);
            result = v21(v74, v53);
            v54 = v77;
            if (v78 << 8 == 512)
            {
              v54 = v14;
            }

            if (!__CFADD__(v54, v59))
            {
              return v17;
            }

            goto LABEL_45;
          }

LABEL_43:
          __break(1u);
LABEL_44:
          __break(1u);
LABEL_45:
          __break(1u);
LABEL_46:
          __break(1u);
          goto LABEL_47;
        }

LABEL_42:
        __break(1u);
        goto LABEL_43;
      }

      __break(1u);
    }

    v25 = v59;
    goto LABEL_17;
  }

LABEL_47:
  __break(1u);
  return result;
}

uint64_t SILValidator.checkFallbackIndicator(states:renderer:)(float *a1, uint64_t a2)
{
  v3 = v2;
  v123 = type metadata accessor for Logger();
  v121 = *(v123 - 8);
  v6 = MEMORY[0x28223BE20](v123);
  v115 = &v108 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = MEMORY[0x28223BE20](v6);
  v113 = &v108 - v9;
  v10 = MEMORY[0x28223BE20](v8);
  v12 = &v108 - v11;
  v13 = MEMORY[0x28223BE20](v10);
  v15 = &v108 - v14;
  v16 = MEMORY[0x28223BE20](v13);
  v18 = &v108 - v17;
  v19 = MEMORY[0x28223BE20](v16);
  v21 = &v108 - v20;
  MEMORY[0x28223BE20](v19);
  v23 = &v108 - v22;
  v122 = static UInt64.now()();
  v24 = *(*v3 + 264);
  v116 = a2;
  v25 = v24(a2);
  v119 = v26;
  v120 = v25;
  v117 = v27;
  v28 = *a1;
  v29 = a1[3];
  v118 = *(a1 + 65) << 8;
  if (v118 != 512)
  {
    v30 = *(a1 + 40);
    if (v30 == 2)
    {
      if (v29 >= 0.1)
      {
        goto LABEL_13;
      }
    }

    else
    {
      if (v30 != 3)
      {
        goto LABEL_13;
      }

      v31 = 0;
      if (*(a1 + 4) || v29 >= 0.1)
      {
        goto LABEL_17;
      }
    }
  }

  if (v122 >= v120)
  {
    (*(*v3 + 120))(v129);
    if (v130 << 8 != 512)
    {
      v47 = SILLogger.unsafeMutableAddressor();
      (*(v121 + 16))(v21, v47, v123);
      v48 = Logger.logObject.getter();
      v49 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v48, v49))
      {
        v50 = swift_slowAlloc();
        v114 = v28;
        v51 = v50;
        *v50 = 134218240;
        *(v50 + 4) = v122;
        *(v50 + 12) = 2048;
        *(v50 + 14) = v120;
        _os_log_impl(&dword_262A43000, v48, v49, "Camera disabled %llu >= %llu", v50, 0x16u);
        v52 = v51;
        v28 = v114;
        MEMORY[0x266730D70](v52, -1, -1);
      }

      (*(v121 + 8))(v21, v123);
      v31 = 1;
LABEL_17:
      LODWORD(v114) = v31;
      v110 = *(a1 + 18);
      v53 = a1[40];
      v112 = *(a1 + 176);
      if (v112 == 2 || v53 < 0.1)
      {
        v55 = *(*v3 + 120);
        v54 = v121;
        if (v122 < v117 && v118 == 512)
        {
          v55(v131);
          if (v132 == 2)
          {
            v56 = 3;
          }

          else
          {
            v56 = v131[19];
          }

          v57 = SILLogger.unsafeMutableAddressor();
          (*(v54 + 16))(v18, v57, v123);
          v58 = Logger.logObject.getter();
          v59 = static os_log_type_t.default.getter();
          if (os_log_type_enabled(v58, v59))
          {
            v60 = v28;
            v61 = swift_slowAlloc();
            *v61 = 134218496;
            *(v61 + 4) = v56;
            *(v61 + 12) = 2048;
            *(v61 + 14) = v122;
            *(v61 + 22) = 2048;
            *(v61 + 24) = v117;
            _os_log_impl(&dword_262A43000, v58, v59, "FaceID FBI for %ld! %llu < %llu ", v61, 0x20u);
            v62 = v61;
            v28 = v60;
            MEMORY[0x266730D70](v62, -1, -1);
          }

          v54 = v121;
          (*(v121 + 8))(v18, v123);
          v46 = (*(*v3 + 256))(v116, 2, v56);
        }

        else
        {
          v55(v131);
          if (v132 == 2)
          {
            v46 = 0;
          }

          else
          {
            v63 = SILLogger.unsafeMutableAddressor();
            (*(v54 + 16))(v15, v63, v123);
            v64 = Logger.logObject.getter();
            v65 = static os_log_type_t.default.getter();
            if (os_log_type_enabled(v64, v65))
            {
              v66 = swift_slowAlloc();
              *v66 = 134218240;
              *(v66 + 4) = v122;
              *(v66 + 12) = 2048;
              *(v66 + 14) = v117;
              _os_log_impl(&dword_262A43000, v64, v65, "FaceID indicator disabled %llu >= %llu", v66, 0x16u);
              MEMORY[0x266730D70](v66, -1, -1);
            }

            (*(v54 + 8))(v15, v123);
            v46 = 0;
            LODWORD(v114) = 1;
          }
        }
      }

      else
      {
        v46 = 0;
        v54 = v121;
      }

      v109 = *(a1 + 9);
      v67 = a1[21];
      v111 = *(a1 + 137) << 8;
      if (v111 == 512 || ((v68 = *(a1 + 112), v68 == 2) || v68 == 3 && !*(a1 + 13)) && v67 < 0.1)
      {
        if (v122 < v119 && v118 == 512)
        {
          v69 = SILLogger.unsafeMutableAddressor();
          (*(v54 + 16))(v12, v69, v123);
          v70 = Logger.logObject.getter();
          v71 = static os_log_type_t.default.getter();
          if (os_log_type_enabled(v70, v71))
          {
            v72 = swift_slowAlloc();
            v73 = swift_slowAlloc();
            v127 = v73;
            *v72 = 134218498;
            *(v72 + 4) = v122;
            *(v72 + 12) = 2048;
            *(v72 + 14) = v119;
            *(v72 + 22) = 2080;
            v74 = *(a1 + 9);
            v141 = *(a1 + 8);
            v142 = v74;
            v143 = *(a1 + 10);
            v144 = *(a1 + 176);
            v75 = *(a1 + 5);
            v137 = *(a1 + 4);
            v138 = v75;
            v76 = *(a1 + 7);
            v139 = *(a1 + 6);
            v140 = v76;
            v77 = *(a1 + 1);
            v133 = *a1;
            v134 = v77;
            v78 = *(a1 + 3);
            v135 = *(a1 + 2);
            v136 = v78;
            v79 = String.init<A>(describing:)();
            v81 = v28;
            v82 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v79, v80, &v127);

            *(v72 + 24) = v82;
            v28 = v81;
            v83 = v123;
            _os_log_impl(&dword_262A43000, v70, v71, "Mic FBI for 1! %llu < %llu & states are %s", v72, 0x20u);
            __swift_destroy_boxed_opaque_existential_1Tm(v73);
            v84 = v73;
            v54 = v121;
            MEMORY[0x266730D70](v84, -1, -1);
            MEMORY[0x266730D70](v72, -1, -1);

            (*(v54 + 8))(v12, v83);
          }

          else
          {

            (*(v54 + 8))(v12, v123);
          }

          v46 = (*(*v3 + 256))(v116, 0, 1);
        }

        else
        {
          (*(*v3 + 120))(&v133);
          if (BYTE9(v141) << 8 != 512)
          {
            v85 = SILLogger.unsafeMutableAddressor();
            v86 = v113;
            (*(v54 + 16))(v113, v85, v123);
            v87 = Logger.logObject.getter();
            v88 = static os_log_type_t.default.getter();
            if (os_log_type_enabled(v87, v88))
            {
              v89 = swift_slowAlloc();
              *v89 = 134218240;
              *(v89 + 4) = v122;
              *(v89 + 12) = 2048;
              *(v89 + 14) = v119;
              _os_log_impl(&dword_262A43000, v87, v88, "Microphone indicator disabled %llu >= %llu", v89, 0x16u);
              MEMORY[0x266730D70](v89, -1, -1);
            }

            (*(v54 + 8))(v86, v123);
LABEL_51:
            v127 = 0;
            v128 = 0xE000000000000000;
            _StringGuts.grow(_:)(42);

            v127 = 0x203A20776F6ELL;
            v128 = 0xE600000000000000;
            v125 = v122;
            v91 = dispatch thunk of CustomStringConvertible.description.getter();
            MEMORY[0x26672FCC0](v91);

            MEMORY[0x26672FCC0](0x3A206D6163202620, 0xE900000000000020);
            v125 = v120;
            v92 = dispatch thunk of CustomStringConvertible.description.getter();
            MEMORY[0x26672FCC0](v92);

            MEMORY[0x26672FCC0](0x3A20646966202620, 0xE900000000000020);
            v125 = v117;
            v93 = dispatch thunk of CustomStringConvertible.description.getter();
            MEMORY[0x26672FCC0](v93);

            MEMORY[0x26672FCC0](0x3A2063696D202620, 0xE900000000000020);
            v125 = v119;
            v94 = dispatch thunk of CustomStringConvertible.description.getter();
            MEMORY[0x26672FCC0](v94);

            MEMORY[0x26672FCC0](10, 0xE100000000000000);
            if (v118 != 512)
            {
              v125 = 0;
              v126 = 0xE000000000000000;
              _StringGuts.grow(_:)(26);
              MEMORY[0x26672FCC0](0x6361706F206D6163, 0xED0000203A797469);
              Float.write<A>(to:)();
              MEMORY[0x26672FCC0](0x206E6F6967657220, 0xE800000000000000);
              v124 = v28;
              v95 = dispatch thunk of CustomStringConvertible.description.getter();
              MEMORY[0x26672FCC0](v95);

              MEMORY[0x26672FCC0](10, 0xE100000000000000);
              MEMORY[0x26672FCC0](v125, v126);
            }

            v96 = v115;
            if (v112 != 2)
            {
              v125 = 0;
              v126 = 0xE000000000000000;
              _StringGuts.grow(_:)(25);
              MEMORY[0x26672FCC0](0x6361706F20646966, 0xEC00000020797469);
              Float.write<A>(to:)();
              MEMORY[0x26672FCC0](0x206E6F6967657220, 0xE800000000000000);
              v124 = v110;
              v97 = dispatch thunk of CustomStringConvertible.description.getter();
              MEMORY[0x26672FCC0](v97);

              MEMORY[0x26672FCC0](10, 0xE100000000000000);
              MEMORY[0x26672FCC0](v125, v126);
            }

            if (v111 != 512)
            {
              v125 = 0;
              v126 = 0xE000000000000000;
              _StringGuts.grow(_:)(25);
              MEMORY[0x26672FCC0](0x6361706F2063696DLL, 0xED0000203A797469);
              Float.write<A>(to:)();
              MEMORY[0x26672FCC0](0x206E6F6967657220, 0xE800000000000000);
              v124 = v109;
              v98 = dispatch thunk of CustomStringConvertible.description.getter();
              MEMORY[0x26672FCC0](v98);

              MEMORY[0x26672FCC0](v125, v126);
            }

            v99 = SILLogger.unsafeMutableAddressor();
            (*(v54 + 16))(v96, v99, v123);
            v101 = v127;
            v100 = v128;

            v102 = Logger.logObject.getter();
            v103 = static os_log_type_t.default.getter();

            if (os_log_type_enabled(v102, v103))
            {
              v104 = swift_slowAlloc();
              v105 = swift_slowAlloc();
              v125 = v105;
              *v104 = 136315138;
              v106 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v101, v100, &v125);

              *(v104 + 4) = v106;
              _os_log_impl(&dword_262A43000, v102, v103, "%s", v104, 0xCu);
              __swift_destroy_boxed_opaque_existential_1Tm(v105);
              MEMORY[0x266730D70](v105, -1, -1);
              MEMORY[0x266730D70](v104, -1, -1);
            }

            else
            {
            }

            (*(v54 + 8))(v96, v123);
            return v46;
          }
        }
      }

      v90 = v114;
      if (v46)
      {
        v90 = 1;
      }

      if (v90 != 1)
      {
        return 0;
      }

      goto LABEL_51;
    }

LABEL_13:
    v31 = 0;
    goto LABEL_17;
  }

  v32 = SILLogger.unsafeMutableAddressor();
  v33 = v121;
  (*(v121 + 16))(v23, v32, v123);
  v34 = Logger.logObject.getter();
  v35 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v34, v35))
  {
    v36 = swift_slowAlloc();
    v37 = swift_slowAlloc();
    v131[0] = v37;
    *v36 = 134218498;
    *(v36 + 4) = v122;
    *(v36 + 12) = 2048;
    *(v36 + 14) = v120;
    *(v36 + 22) = 2080;
    v38 = *(a1 + 9);
    v141 = *(a1 + 8);
    v142 = v38;
    v143 = *(a1 + 10);
    v144 = *(a1 + 176);
    v39 = *(a1 + 5);
    v137 = *(a1 + 4);
    v138 = v39;
    v40 = *(a1 + 7);
    v139 = *(a1 + 6);
    v140 = v40;
    v41 = *(a1 + 1);
    v133 = *a1;
    v134 = v41;
    v42 = *(a1 + 3);
    v135 = *(a1 + 2);
    v136 = v42;
    v43 = String.init<A>(describing:)();
    v45 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v43, v44, v131);

    *(v36 + 24) = v45;
    _os_log_impl(&dword_262A43000, v34, v35, "Cam FBI for 0! %llu < %llu & states are %s", v36, 0x20u);
    __swift_destroy_boxed_opaque_existential_1Tm(v37);
    MEMORY[0x266730D70](v37, -1, -1);
    MEMORY[0x266730D70](v36, -1, -1);
  }

  (*(v33 + 8))(v23, v123);
  return (*(*v3 + 256))(v116, 0, 0);
}

void *SILValidator.validateSwap(now:regionId:indicator:center:frameNumber:opacity:)@<X0>(unint64_t a1@<X0>, void *a2@<X2>, uint64_t a3@<X3>, void *a4@<X8>, __n128 a5@<Q0>, __n128 a6@<Q1>, float a7@<S2>)
{
  v109 = a6;
  v110 = a5;
  v114 = a1;
  v108 = a4;
  v104 = type metadata accessor for Logger();
  v106 = *(v104 - 8);
  v12 = MEMORY[0x28223BE20](v104);
  v105 = &v99 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v103 = &v99 - v14;
  v15 = MEMORY[0x277D85000];
  v16 = (*MEMORY[0x277D85000] & *a2) + 312;
  v17 = *((*MEMORY[0x277D85000] & *a2) + 0x138);
  v18 = a2;
  v115 = v17;
  v116 = v16;
  result = v17();
  if (!result)
  {
    goto LABEL_67;
  }

  v20 = (*(*result + 136))(v18, a3);

  v117 = a2;
  v128 = v18;
  v129 = v20;
  *&v131 = v110.n128_u64[0];
  *(&v131 + 1) = v109.n128_u64[0];
  v132 = a7;
  v113 = a3;
  v133 = a3;
  v135 = 0u;
  v136 = 0u;
  v22 = (*v15 & *v18) + 368;
  v23 = *((*v15 & *v18) + 0x170);
  v24 = v23(v21);
  v25 = v15;
  v26 = v112;
  if (v24 & 1) != 0 && (result = (*(*v112 + 120))(v137), v138 != 2) && (v138 & 1) != 0 || ((*((*v25 & *v18) + 0x178))() & 1) != 0 && (result = (*(*v26 + 120))(v139), v140 != 2) && (v140 & 1) != 0 || (v101 = v22, v27 = *((*v25 & *v18) + 0x168), v107 = (*v25 & *v18) + 360, (v27()) && (result = (*(*v26 + 120))(v141), v142 != 2) && (v142)
  {
    v28 = v128;
    v29 = v129;
    v127[0] = *v130;
    *(v127 + 3) = *&v130[3];
    v30 = v131;
    a7 = v132;
    LOWORD(v31) = v133;
    v32 = v134;
    v33 = v135;
    v34 = v136;
LABEL_60:
    v98 = v108;
    *v108 = v28;
    *(v98 + 8) = v29;
    *(v98 + 9) = v127[0];
    *(v98 + 3) = *(v127 + 3);
    *(v98 + 1) = v30;
    *(v98 + 8) = a7;
    *(v98 + 18) = v31;
    *(v98 + 19) = v32;
    *(v98 + 5) = v33;
    *(v98 + 7) = v34;
    return result;
  }

  v35 = *v26;
  v102 = v26 & 0xFFFFFFFFFFFFLL | 0x6AE1000000000000;
  v36 = (*(v35 + 288))(v114, v18);
  if (a7 > 0.01)
  {
    v37 = v36;
    v100 = v27;
    LODWORD(v7) = *(v26 + 16);
    LODWORD(v8) = *(v26 + 20);
    result = v115();
    if (!result)
    {
      goto LABEL_69;
    }

    v38 = v110.n128_f64[0] / v7;
    v39 = v109.n128_f64[0] / v8;
    v40 = result[3];

    v41 = *&v40[OBJC_IVAR____TtC10SILManager14SILConstraints_boundingBoxes];

    v42 = *(*v41 + 104);
    if ((v42(v37 & 1, v38, v39) & 1) == 0)
    {
      v99 = v41;
      if ((v37 & 1) == 0)
      {
        v43 = default argument 1 of SILBoundingBoxes.isPositionValid(position:includeDynamicBoundingBoxes:)();
        v44 = v42(v43 & 1, v38, v39);
        if (v44)
        {
          v45 = v23(v44);
          v46 = *(*v26 + 120);
          if (v45)
          {
            result = v46(v143);
            v47 = v143[2];
            v48 = &v144;
          }

          else
          {
            result = v46(v145);
            v47 = v145[11];
            v48 = &v146;
          }

          if (*(v48 + 1) << 8 == 512)
          {
            v47 = v114;
          }

          v49 = v114 - v47;
          v50 = v104;
          if (v114 < v47)
          {
            goto LABEL_64;
          }

          v51 = SILLogger.unsafeMutableAddressor();
          (*(v106 + 16))(v103, v51, v50);
          v52 = Logger.logObject.getter();
          v53 = static os_log_type_t.error.getter();
          if (os_log_type_enabled(v52, v53))
          {
            v54 = swift_slowAlloc();
            *v54 = 134218496;
            v55 = v109.n128_u64[0];
            *(v54 + 4) = v110.n128_u64[0];
            *(v54 + 12) = 2048;
            *(v54 + 14) = v55;
            *(v54 + 22) = 2048;
            *(v54 + 24) = v49;
            _os_log_impl(&dword_262A43000, v52, v53, "Min time not reach to use dynamic position: (%f, %f) visible time : %llus", v54, 0x20u);
            MEMORY[0x266730D70](v54, -1, -1);
          }

          (*(v106 + 8))(v103, v50);
          swift_beginAccess();
          if ((static SILValidator.DisabledHealthChecks & 1) == 0)
          {
            lazy protocol witness table accessor for type SILError and conformance SILError();
            swift_allocError();
            v57 = 7;
LABEL_31:
            *v56 = v57;
            swift_willThrow();

            return outlined destroy of SILValidator.RegionState(&v128);
          }
        }
      }

      v58 = SILLogger.unsafeMutableAddressor();
      v59 = v105;
      v60 = v106;
      v61 = v104;
      (*(v106 + 16))(v105, v58, v104);
      v62 = Logger.logObject.getter();
      v63 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v62, v63))
      {
        v64 = swift_slowAlloc();
        *v64 = 134218240;
        v65 = v109.n128_u64[0];
        *(v64 + 4) = v110.n128_u64[0];
        *(v64 + 12) = 2048;
        *(v64 + 14) = v65;
        _os_log_impl(&dword_262A43000, v62, v63, "Invalid Position: center: (%f, %f)", v64, 0x16u);
        v66 = v64;
        v59 = v105;
        MEMORY[0x266730D70](v66, -1, -1);
      }

      (*(v60 + 8))(v59, v61);
      swift_beginAccess();
      if ((static SILValidator.DisabledHealthChecks & 2) == 0)
      {
        lazy protocol witness table accessor for type SILError and conformance SILError();
        swift_allocError();
        v57 = 3;
        goto LABEL_31;
      }
    }

    v27 = v100;
  }

  v67 = (v27)(v36);
  if ((v67 & 1) == 0)
  {
    v31 = v113;
LABEL_58:
    v28 = v18;
    result = (v115)(v28);
    if (!result)
    {
      goto LABEL_68;
    }

    v29 = (*(*result + 136))(v28, v31);
    outlined destroy of SILValidator.RegionState(&v128);

    *&v30 = v110.n128_u64[0];
    *(&v30 + 1) = v109.n128_u64[0];
    v33 = 0uLL;
    v34 = 0uLL;
    goto LABEL_60;
  }

  result = (*(*v26 + 192))(v67);
  v68 = result[2];
  if (!v68)
  {
    v112 = MEMORY[0x277D84F90];
    goto LABEL_50;
  }

  v69 = 0;
  v70 = result + 4;
  v112 = MEMORY[0x277D84F90];
  v106 = v68 - 1;
  v71 = MEMORY[0x277D85000];
  v107 = (result + 4);
  do
  {
    v72 = &v70[9 * v69];
    v73 = v69;
    while (1)
    {
      if (v73 >= result[2])
      {
        __break(1u);
        goto LABEL_63;
      }

      *v125 = *v72;
      v74 = *(v72 + 1);
      v75 = *(v72 + 2);
      v76 = *(v72 + 3);
      *&v125[64] = v72[8];
      *&v125[32] = v75;
      *&v125[48] = v76;
      *&v125[16] = v74;
      if (*v125)
      {
        break;
      }

LABEL_37:
      ++v73;
      v72 += 9;
      if (v68 == v73)
      {
        goto LABEL_50;
      }
    }

    v77 = result;
    v78 = *((*v71 & **v125) + 0xA8);
    v121 = *&v125[16];
    v122 = *&v125[32];
    v123 = *&v125[48];
    v124 = *&v125[64];
    v120 = *v125;
    v79 = outlined init with copy of SILValidator.RegionState(&v120, v119);
    v80 = v78(v79);
    v71 = MEMORY[0x277D85000];
    if (v80 != (*((*MEMORY[0x277D85000] & *v18) + 0xA8))(v80))
    {
      outlined destroy of SILValidator.RegionState?(v125, &_s10SILManager12SILValidatorC11RegionStateVSgMd);
      result = v77;
      goto LABEL_37;
    }

    v81 = v112;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v126 = v81;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v81[2] + 1, 1);
      v81 = v126;
    }

    v84 = v81[2];
    v83 = v81[3];
    v85 = (v84 + 1);
    if (v84 >= v83 >> 1)
    {
      v112 = (v84 + 1);
      specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v83 > 1), v84 + 1, 1);
      v85 = v112;
      v81 = v126;
    }

    v69 = v73 + 1;
    v81[2] = v85;
    v112 = v81;
    v86 = &v81[9 * v84];
    *(v86 + 2) = *v125;
    v87 = *&v125[16];
    v88 = *&v125[32];
    v89 = *&v125[48];
    v86[12] = *&v125[64];
    *(v86 + 4) = v88;
    *(v86 + 5) = v89;
    *(v86 + 3) = v87;
    v70 = v107;
    result = v77;
  }

  while (v106 != v73);
LABEL_50:
  v111 = v18;

  result = v112;
  v117 = v112[2];
  if (!v117)
  {
LABEL_57:

    v31 = v113;
    v18 = v111;
    goto LABEL_58;
  }

  v90 = 0;
  v91 = 4;
  while (v90 < result[2])
  {
    *v125 = *&result[v91];
    v92 = *&result[v91 + 2];
    v93 = *&result[v91 + 4];
    v94 = *&result[v91 + 6];
    *&v125[64] = result[v91 + 8];
    *&v125[32] = v93;
    *&v125[48] = v94;
    *&v125[16] = v92;
    v95 = outlined init with copy of SILBackend?(v125, &v120, &_s10SILManager12SILValidatorC11RegionStateVSgMd);
    result = (v115)(v95);
    if (!result)
    {
      goto LABEL_66;
    }

    if (!*v125)
    {
      goto LABEL_65;
    }

    v147 = *v125;
    v148 = *&v125[8];
    v149 = *&v125[24];
    v150 = *&v125[40];
    v151 = *&v125[56];
    v96 = *(*result + 128);
    v120 = *v125;
    v122 = *&v125[32];
    v123 = *&v125[48];
    v124 = *&v125[64];
    v121 = *&v125[16];
    outlined init with copy of SILValidator.RegionState(&v120, v119);
    v97 = v118;
    v96(v114, &v147, v113);
    v118 = v97;
    if (v97)
    {

      outlined destroy of SILValidator.RegionState(&v128);
      outlined destroy of SILValidator.RegionState?(v125, &_s10SILManager12SILValidatorC11RegionStateVSgMd);
      outlined destroy of SILValidator.RegionState?(v125, &_s10SILManager12SILValidatorC11RegionStateVSgMd);
    }

    v90 = (v90 + 1);
    outlined destroy of SILValidator.RegionState?(v125, &_s10SILManager12SILValidatorC11RegionStateVSgMd);

    outlined destroy of SILValidator.RegionState?(v125, &_s10SILManager12SILValidatorC11RegionStateVSgMd);
    v91 += 9;
    result = v112;
    if (v117 == v90)
    {
      goto LABEL_57;
    }
  }

LABEL_63:
  __break(1u);
LABEL_64:
  __break(1u);
LABEL_65:
  __break(1u);
LABEL_66:
  __break(1u);
LABEL_67:
  __break(1u);
LABEL_68:
  __break(1u);
LABEL_69:
  __break(1u);
  return result;
}

void SILValidator.RegionState.init(now:indicator:center:frameNumber:opacity:)(void *a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X8>, double a4@<D0>, double a5@<D1>, float a6@<S2>)
{
  v11 = *((*MEMORY[0x277D85000] & *a1) + 0x138);
  v12 = a1;
  v13 = v11();
  if (v13)
  {
    v14 = (*(*v13 + 136))(v12, a2);

    *a3 = v12;
    *(a3 + 8) = v14;
    *(a3 + 16) = a4;
    *(a3 + 24) = a5;
    *(a3 + 32) = a6;
    *(a3 + 36) = a2;
    *(a3 + 40) = 0u;
    *(a3 + 56) = 0u;
  }

  else
  {
    __break(1u);
  }
}

void *SILValidator.canUseDynamicBoundingBoxes(now:indicator:)(unint64_t a1, void *a2)
{
  v5 = MEMORY[0x277D85000];
  if ((*((*MEMORY[0x277D85000] & *a2) + 0x168))())
  {
    return 0;
  }

  v7 = (*((*v5 & *a2) + 0x170))();
  v8 = *(*v2 + 120);
  if (v7)
  {
    result = v8(v13);
    v9 = v13[2];
    v10 = v14;
  }

  else
  {
    result = v8(v13);
    v9 = v14[3];
    v10 = &v15;
  }

  if (*(v10 + 1) << 8 == 512)
  {
    v9 = a1;
  }

  if (a1 >= v9)
  {
    result = (*((*v5 & *a2) + 0x138))(result);
    if (result)
    {
      v11 = result[3];

      v12 = *&v11[OBJC_IVAR____TtC10SILManager14SILConstraints_minStaticLocationDuration];

      return (v12 < UInt64.toSeconds()());
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t SILValidator.clampSwapPosition(indicator:center:)(void *a1, double a2, double a3)
{
  LODWORD(v4) = *(v3 + 16);
  LODWORD(v5) = *(v3 + 20);
  result = (*((*MEMORY[0x277D85000] & *a1) + 0x138))();
  if (result)
  {
    v9 = v4;
    v10 = v5;
    v11 = *(result + 24);

    v12 = *&v11[OBJC_IVAR____TtC10SILManager14SILConstraints_boundingBoxes];

    v13 = *(v12 + 16);
    v14 = *(v13 + 16);
    if (v14)
    {
      v15 = a2 / v9;
      v16 = (v13 + 48);
      v17 = 0uLL;
      v18 = INFINITY;
      __asm { FMOV            V2.2D, #0.5 }

      v24 = a3 / v10;
      do
      {
        v25 = vaddq_f64(v16[-1], vmulq_f64(*v16, _Q2));
        v26 = (v15 - *v25.i64) * (v15 - *v25.i64) + (v24 - *&v25.i64[1]) * (v24 - *&v25.i64[1]);
        v27 = vdup_n_s32(v26 < v18);
        v28.i64[0] = v27.u32[0];
        v28.i64[1] = v27.u32[1];
        v17 = vbslq_s8(vcltzq_s64(vshlq_n_s64(v28, 0x3FuLL)), v25, v17);
        if (v26 < v18)
        {
          v18 = (v15 - *v25.i64) * (v15 - *v25.i64) + (v24 - *&v25.i64[1]) * (v24 - *&v25.i64[1]);
        }

        v16 += 2;
        --v14;
      }

      while (v14);
    }
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t SILValidator.__deallocating_deinit()
{

  return MEMORY[0x2821FE8D8](v0, 232, 7);
}

uint64_t SILDebugAnimationTracker.animations.getter()
{
  swift_beginAccess();
  v1 = *(v0 + 24);

  return v1;
}

uint64_t SILDebugAnimationTracker.animations.setter(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  *(v2 + 24) = a1;
  *(v2 + 32) = a2;
}

uint64_t SILDebugAnimationTracker.update(_:)(uint64_t a1)
{
  v2 = v1;
  type metadata accessor for SILIndicatorDesc();
  v4 = *a1;
  if (static SILIndicatorDesc.isCameraIndicator(_:)(*a1))
  {
    v5 = *(*v1 + 96);
    v6 = v5();

    v7 = *(v6 + 24);
    if (v7)
    {
      v8 = v7 - 1;
      if (__OFSUB__(v7, 1))
      {
LABEL_59:
        __break(1u);
        goto LABEL_60;
      }

      if (v8 < 0)
      {
LABEL_60:
        __break(1u);
        goto LABEL_61;
      }

      if (v8 >= v7)
      {
LABEL_61:
        __break(1u);
LABEL_62:
        __break(1u);
        goto LABEL_63;
      }

      v10 = (v5)(v9);

      v11 = v10[3];
      if (!v11)
      {
LABEL_78:

        __break(1u);
        goto LABEL_79;
      }

      v12 = v11 - 1;
      if (__OFSUB__(v11, 1))
      {
        goto LABEL_62;
      }

      if (v12 < 0)
      {
LABEL_63:
        __break(1u);
        goto LABEL_64;
      }

      if (v12 >= v11)
      {
LABEL_64:
        __break(1u);
        goto LABEL_65;
      }

      v13 = v10[4] + v12;
      v14 = v10[2];
      if (v13 < v14)
      {
        v14 = 0;
      }

      v15 = BYTE1(v10[9 * (v13 - v14) + 11]);

      if (v15 & 1) != 0 && (*(a1 + 49))
      {
        return result;
      }
    }

    else
    {
    }

    v30 = (v5)(result);

    v31 = *(v30 + 24);

    if (v31 >= 33)
    {
      v33 = (*(*v2 + 112))(v59);
      if (!*(*v32 + 24))
      {
LABEL_65:
        __break(1u);
LABEL_66:
        __break(1u);
LABEL_67:
        __break(1u);
LABEL_68:
        __break(1u);
        goto LABEL_69;
      }

      v34 = v32;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        specialized Deque._Storage._makeUniqueCopy()();
      }

      v35 = *v34;
      v36 = *(*v34 + 32);
      v37 = __OFADD__(v36, 1);
      v38 = v36 + 1;
      if (v37)
      {
        goto LABEL_66;
      }

      v39 = v35[3];
      if (v38 >= v35[2])
      {
        v38 = 0;
      }

      v35[4] = v38;
      if (__OFSUB__(v39, 1))
      {
        goto LABEL_68;
      }

      v35[3] = v39 - 1;
      v33(v59, 0);
    }

    v41 = (*(*v2 + 112))(v59);
    v42 = *(*v40 + 24);
    v43 = v42 + 1;
    if (!__OFADD__(v42, 1))
    {
      v44 = v40;
      goto LABEL_53;
    }

    __break(1u);
    goto LABEL_59;
  }

  result = static SILIndicatorDesc.isMicrophoneIndicator(_:)(v4);
  if ((result & 1) == 0 || v4 != 1)
  {
    return result;
  }

  v17 = *(*v1 + 96);
  v17();
  v19 = v18;

  v20 = *(v19 + 24);
  if (!v20)
  {

LABEL_43:
    (v17)(result);
    v46 = v45;

    v47 = *(v46 + 24);

    if (v47 >= 33)
    {
      v48 = (*(*v2 + 112))(v59);
      v50 = v49 + 8;
      if (!*(*(v49 + 8) + 24))
      {
LABEL_75:
        __break(1u);
LABEL_76:
        __break(1u);
LABEL_77:
        __break(1u);
        goto LABEL_78;
      }

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        specialized Deque._Storage._makeUniqueCopy()();
      }

      v51 = *v50;
      v52 = *(*v50 + 32);
      v37 = __OFADD__(v52, 1);
      v53 = v52 + 1;
      if (v37)
      {
        goto LABEL_76;
      }

      v54 = v51[3];
      if (v53 >= v51[2])
      {
        v53 = 0;
      }

      v51[4] = v53;
      if (__OFSUB__(v54, 1))
      {
        goto LABEL_77;
      }

      v51[3] = v54 - 1;
      v48(v59, 0);
    }

    v41 = (*(*v2 + 112))(v59);
    v44 = (v55 + 8);
    v56 = *(*(v55 + 8) + 24);
    v43 = v56 + 1;
    if (!__OFADD__(v56, 1))
    {
LABEL_53:
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v58 = *v44;
      if (*(*v44 + 16) < v43 || (isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        specialized Deque._Storage._ensureUnique(isUnique:minimumCapacity:linearGrowth:)(isUniquelyReferenced_nonNull_native, v43, 0);
        v58 = *v44;
      }

      specialized closure #1 in Deque.append(_:)((v58 + 16), v58 + 40, a1);
      return v41(v59, 0);
    }

    goto LABEL_67;
  }

  v21 = v20 - 1;
  if (__OFSUB__(v20, 1))
  {
LABEL_69:
    __break(1u);
    goto LABEL_70;
  }

  if (v21 < 0)
  {
LABEL_70:
    __break(1u);
    goto LABEL_71;
  }

  if (v21 >= v20)
  {
LABEL_71:
    __break(1u);
LABEL_72:
    __break(1u);
    goto LABEL_73;
  }

  (v17)(v22);
  v24 = v23;

  v25 = v24[3];
  if (!v25)
  {
LABEL_79:

    __break(1u);
    return result;
  }

  v26 = v25 - 1;
  if (__OFSUB__(v25, 1))
  {
    goto LABEL_72;
  }

  if (v26 < 0)
  {
LABEL_73:
    __break(1u);
    goto LABEL_74;
  }

  if (v26 >= v25)
  {
LABEL_74:
    __break(1u);
    goto LABEL_75;
  }

  v27 = v24[4] + v26;
  v28 = v24[2];
  if (v27 < v28)
  {
    v28 = 0;
  }

  v29 = BYTE1(v24[9 * (v27 - v28) + 11]);

  if ((v29 & 1) == 0 || (*(a1 + 49) & 1) == 0)
  {
    goto LABEL_43;
  }

  return result;
}

uint64_t SILDebugAnimationTracker.updateRegionStates(_:_:_:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySbGMd);
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_262A998C0;
  *(v7 + 32) = 0;
  v8 = v7 + 32;
  v48 = v7;
  *(v7 + 34) = 0;
  v9 = *(a1 + 16);
  if (!v9)
  {
    v35 = 3;
LABEL_27:
    for (i = 0; i != v35; ++i)
    {
      if ((*(v8 + i) & 1) == 0)
      {
        v37 = static UInt64.now()();
        v38 = static UInt64.now()();
        *v59 = i;
        *&v59[8] = 0;
        *&v59[12] = 0;
        *&v59[24] = 0;
        v60 = v37;
        LOWORD(v61) = 280;
        *(&v61 + 1) = v38;
        LOBYTE(v62) = 0;
        (*(*v4 + 120))(v59);
      }
    }
  }

  v41 = v7 + 32;
  v42 = v4;
  v10 = a1 + 32;
  v49 = a2;
  do
  {
    v11 = *(v10 + 48);
    v56 = *(v10 + 32);
    v57 = v11;
    v58 = *(v10 + 64);
    v12 = *(v10 + 16);
    v55[0] = *v10;
    v55[1] = v12;
    *v59 = v55[0];
    *&v59[16] = v12;
    v60 = v56;
    v61 = v11;
    v62 = v58;
    v13 = *&v55[0];
    if (!*&v55[0])
    {
      outlined init with copy of SILBackend?(v55, v53, &_s10SILManager12SILValidatorC11RegionStateVSgMd);
      goto LABEL_4;
    }

    v14 = v60;
    v50 = WORD2(v60);
    type metadata accessor for SILIndicatorDesc();
    v15 = *((*MEMORY[0x277D85000] & *v13) + 0xA8);
    outlined init with copy of SILBackend?(v59, v53, &_s10SILManager12SILValidatorC11RegionStateVSgMd);
    outlined init with copy of SILBackend?(v59, v53, &_s10SILManager12SILValidatorC11RegionStateVSgMd);
    v16 = outlined init with copy of SILBackend?(v55, v53, &_s10SILManager12SILValidatorC11RegionStateVSgMd);
    v17 = (v15)(v16);
    if (!static SILIndicatorDesc.isCameraIndicator(_:)(v17))
    {
      v18 = v15();
      if (!static SILIndicatorDesc.isMicrophoneIndicator(_:)(v18))
      {
LABEL_23:
        outlined destroy of SILValidator.RegionState?(v59, &_s10SILManager12SILValidatorC11RegionStateVSgMd);
        outlined destroy of SILValidator.RegionState?(v59, &_s10SILManager12SILValidatorC11RegionStateVSgMd);

        goto LABEL_4;
      }
    }

    v19 = v15();
    if (static SILIndicatorDesc.isCameraIndicator(_:)(v19))
    {
      v20 = *(v49 + 64);
      if ((v20 & 0xFF00) == 0x200)
      {
        goto LABEL_17;
      }

      *(&v52 + 1) = &type metadata for SILValidator.IndicatorState;
      v21 = swift_allocObject();
      *&v51 = v21;
      v22 = *(v49 + 16);
      *(v21 + 16) = *v49;
      *(v21 + 32) = v22;
      v23 = *(v49 + 32);
      v24 = *(v49 + 48);
LABEL_14:
      *(v21 + 48) = v23;
      *(v21 + 64) = v24;
      *(v21 + 80) = v20;
      goto LABEL_19;
    }

    if (static SILIndicatorDesc.isMicrophoneIndicator(_:)(v19))
    {
      v20 = *(v49 + 136);
      if ((v20 & 0xFF00) == 0x200)
      {
        goto LABEL_17;
      }

      *(&v52 + 1) = &type metadata for SILValidator.IndicatorState;
      v21 = swift_allocObject();
      *&v51 = v21;
      v25 = *(v49 + 88);
      *(v21 + 16) = *(v49 + 72);
      *(v21 + 32) = v25;
      v23 = *(v49 + 104);
      v24 = *(v49 + 120);
      goto LABEL_14;
    }

    v26 = *(v49 + 176);
    if (v26 == 2)
    {
LABEL_17:
      outlined destroy of SILValidator.RegionState?(v59, &_s10SILManager12SILValidatorC11RegionStateVSgMd);
      outlined destroy of SILValidator.RegionState?(v59, &_s10SILManager12SILValidatorC11RegionStateVSgMd);

      v51 = 0u;
      v52 = 0u;
      outlined destroy of SILValidator.RegionState?(&v51, &_sypSgMd);
      goto LABEL_4;
    }

    *(&v52 + 1) = &type metadata for SILValidator.FaceIDState;
    v27 = swift_allocObject();
    *&v51 = v27;
    v28 = *(v49 + 160);
    *(v27 + 16) = *(v49 + 144);
    *(v27 + 32) = v28;
    *(v27 + 48) = v26;
LABEL_19:
    if ((swift_dynamicCast() & 1) == 0)
    {
      goto LABEL_23;
    }

    v45 = v53[0];
    v47 = v53[4];
    v46 = v54;
    v29 = v13;
    v44 = v15();
    outlined destroy of SILValidator.RegionState?(v59, &_s10SILManager12SILValidatorC11RegionStateVSgMd);
    v43 = *((*MEMORY[0x277D85000] & *v29) + 0xF8);
    v30 = *v59;
    v31 = v43(v50);
    outlined destroy of SILValidator.RegionState?(v59, &_s10SILManager12SILValidatorC11RegionStateVSgMd);
    outlined destroy of SILValidator.RegionState?(v59, &_s10SILManager12SILValidatorC11RegionStateVSgMd);
    v63 = v44;
    v64 = v50;
    v65 = v31;
    v66 = v14;
    v67 = v45;
    v68 = a4;
    v69 = a3;
    v70 = 24;
    v71 = v47;
    v72 = v46;
    v32 = (*(*v42 + 120))(&v63);
    v33 = (v15)(v32);
    outlined destroy of SILValidator.RegionState?(v59, &_s10SILManager12SILValidatorC11RegionStateVSgMd);
    result = outlined destroy of SILValidator.RegionState?(v59, &_s10SILManager12SILValidatorC11RegionStateVSgMd);
    if ((v33 & 0x8000000000000000) != 0)
    {
      __break(1u);
LABEL_32:
      __break(1u);
      return result;
    }

    if (v33 >= *(v48 + 16))
    {
      goto LABEL_32;
    }

    *(v41 + v33) = 1;
LABEL_4:
    v10 += 72;
    --v9;
  }

  while (v9);
  v35 = *(v48 + 16);
  v8 = v41;
  v4 = v42;
  if (v35)
  {
    goto LABEL_27;
  }
}

void SILDebugAnimationTracker.updateError(_:_:_:error:_:)(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5)
{
  v6 = *(a2 + 16);
  v7 = *(a2 + 48);
  v48 = *(a2 + 32);
  v49 = v7;
  v50 = *(a2 + 64);
  v46 = *a2;
  v47 = v6;
  v8 = *a2;
  if (*a2 && a4 != 24)
  {
    v28 = v5;
    v11 = *(a2 + 32);
    v12 = *(a2 + 36);
    type metadata accessor for SILIndicatorDesc();
    v13 = MEMORY[0x277D85000];
    v14 = *((*MEMORY[0x277D85000] & *v8) + 0xA8);
    v45 = *(a2 + 64);
    v15 = *(a2 + 48);
    v44[2] = *(a2 + 32);
    v44[3] = v15;
    v16 = *(a2 + 16);
    v44[0] = *a2;
    v44[1] = v16;
    outlined init with copy of SILBackend?(a2, v42, &_s10SILManager12SILValidatorC11RegionStateVSgMd);
    v17 = outlined init with copy of SILValidator.RegionState(v44, v42);
    v18 = (v14)(v17);
    if (static SILIndicatorDesc.isCameraIndicator(_:)(v18) || (v19 = v14(), static SILIndicatorDesc.isMicrophoneIndicator(_:)(v19)))
    {
      v40[2] = v48;
      v40[3] = v49;
      v41 = v50;
      v40[0] = v46;
      v40[1] = v47;
      v20 = outlined init with copy of SILValidator.RegionState(v40, v42);
      v21 = (v14)(v20);
      v22 = *((*v13 & *v8) + 0xF8);
      v43 = v50;
      v42[2] = v48;
      v42[3] = v49;
      v42[0] = v46;
      v42[1] = v47;
      outlined init with copy of SILValidator.RegionState(v42, &v29);
      v23 = v22(v12);
      outlined destroy of SILValidator.RegionState?(a2, &_s10SILManager12SILValidatorC11RegionStateVSgMd);
      v24 = static UInt64.now()();
      outlined destroy of SILValidator.RegionState?(a2, &_s10SILManager12SILValidatorC11RegionStateVSgMd);
      v29 = v21;
      v30 = v12;
      v31 = v23;
      v32 = v11;
      v33 = 0;
      v34 = a5;
      v35 = a3;
      v36 = a4;
      v37 = 0;
      v38 = v24;
      v39 = 0;
      (*(*v28 + 120))(&v29);
      outlined destroy of SILValidator.RegionState?(a2, &_s10SILManager12SILValidatorC11RegionStateVSgMd);
      v25 = a2;
    }

    else
    {
      outlined destroy of SILValidator.RegionState?(a2, &_s10SILManager12SILValidatorC11RegionStateVSgMd);
      v25 = a2;
    }

    outlined destroy of SILValidator.RegionState?(v25, &_s10SILManager12SILValidatorC11RegionStateVSgMd);
  }
}

uint64_t SILDebugAnimationTracker.printAnimations(animationDeque:)(void *a1)
{
  v2 = type metadata accessor for Logger();
  v3 = *(v2 - 8);
  v4 = MEMORY[0x28223BE20](v2);
  v79 = &v78 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = MEMORY[0x28223BE20](v4);
  v82 = &v78 - v7;
  v8 = MEMORY[0x28223BE20](v6);
  v81 = &v78 - v9;
  v10 = MEMORY[0x28223BE20](v8);
  v84 = &v78 - v11;
  MEMORY[0x28223BE20](v10);
  v13 = &v78 - v12;
  v14 = SILLogger.unsafeMutableAddressor();
  v15 = v3;
  v16 = *(v3 + 16);
  v87 = v14;
  v88 = v3 + 16;
  v86 = v16;
  (v16)(v13);
  v17 = Logger.logObject.getter();
  v18 = static os_log_type_t.error.getter();
  v19 = os_log_type_enabled(v17, v18);
  v92 = v2;
  if (v19)
  {
    v20 = swift_slowAlloc();
    *v20 = 0;
    _os_log_impl(&dword_262A43000, v17, v18, "------", v20, 2u);
    v21 = v20;
    v2 = v92;
    MEMORY[0x266730D70](v21, -1, -1);
  }

  v22 = *(v15 + 8);
  v89 = v15 + 8;
  v85 = v22;
  v22(v13, v2);
  v23 = a1[4];
  if (a1[2] >= a1[3] + v23)
  {
    v24 = a1[3] + v23;
  }

  else
  {
    v24 = a1[2];
  }

  v96 = a1;
  v97 = v23;
  v98 = v24;

  *&v25 = 136315394;
  v80 = v25;
  *&v25 = 136316930;
  v83 = v25;
  while (v23 != v24)
  {
    v28 = v96;
LABEL_14:
    v29 = v97;
    v93 = ++v97;
    v30 = &v28[9 * v29];
    v31 = v30[5];
    v32 = *(v30 + 24);
    v34 = *(v30 + 13);
    v33 = *(v30 + 14);
    v36 = v30[8];
    v35 = v30[9];
    v37 = v30[10];
    v38 = *(v30 + 88);
    v39 = *(v30 + 89);
    v90 = *(v30 + 104);
    v91 = v35;
    v40 = Log.unsafeMutableAddressor();
    swift_beginAccess();
    v41 = *(**v40 + 152);

    v42 = v41(v31);
    v44 = v43;

    if (v38 == 24)
    {
      v2 = v92;
      if (v39)
      {
        v45 = v81;
        v86(v81, v87, v92);

        v46 = Logger.logObject.getter();
        v47 = static os_log_type_t.error.getter();

        if (os_log_type_enabled(v46, v47))
        {
          v48 = swift_slowAlloc();
          v49 = swift_slowAlloc();
          v95 = v49;
          *v48 = v80;
          v50 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v42, v44, &v95);

          *(v48 + 4) = v50;
          *(v48 + 12) = 2048;
          *(v48 + 14) = v91;
          _os_log_impl(&dword_262A43000, v46, v47, "Anim: [%s] .... REMOVED .... %llu", v48, 0x16u);
          __swift_destroy_boxed_opaque_existential_1Tm(v49);
          v51 = v49;
          v2 = v92;
          MEMORY[0x266730D70](v51, -1, -1);
          v52 = v48;
          goto LABEL_22;
        }

LABEL_7:
      }

      else
      {
        v45 = v82;
        v86(v82, v87, v92);

        v46 = Logger.logObject.getter();
        v65 = static os_log_type_t.error.getter();

        if (!os_log_type_enabled(v46, v65))
        {
          goto LABEL_7;
        }

        v66 = swift_slowAlloc();
        v67 = swift_slowAlloc();
        v95 = v67;
        *v66 = v83;
        v68 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v42, v44, &v95);

        *(v66 + 4) = v68;
        *(v66 + 12) = 2048;
        *(v66 + 14) = v37;
        *(v66 + 22) = 512;
        *(v66 + 24) = v32;
        *(v66 + 26) = 2048;
        *(v66 + 28) = v34;
        *(v66 + 36) = 2048;
        *(v66 + 38) = v33;
        *(v66 + 46) = 2048;
        *(v66 + 48) = v36;
        *(v66 + 56) = 2048;
        v69 = v90;
        *(v66 + 58) = v91;
        *(v66 + 66) = 2080;
        v70 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(qword_262A99E10[v69], 0xE100000000000000, &v95);

        *(v66 + 68) = v70;
        _os_log_impl(&dword_262A43000, v46, v65, "Anim: [%s] (%llu) %hu, %f, %f, %ld, %llu, state:%s", v66, 0x4Cu);
        swift_arrayDestroy();
        v71 = v67;
        v2 = v92;
        MEMORY[0x266730D70](v71, -1, -1);
        v52 = v66;
LABEL_22:
        MEMORY[0x266730D70](v52, -1, -1);
      }

      v26 = v45;
      goto LABEL_9;
    }

    v53 = v84;
    v2 = v92;
    v86(v84, v87, v92);

    v54 = Logger.logObject.getter();
    v55 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v54, v55))
    {
      v56 = swift_slowAlloc();
      v57 = swift_slowAlloc();
      v95 = v57;
      *v56 = v83;
      v58 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v42, v44, &v95);

      *(v56 + 4) = v58;
      *(v56 + 12) = 2080;
      v94 = v38;
      __swift_instantiateConcreteTypeFromMangledNameV2(&_s10SILManager8SILErrorOSgMd);
      v59 = Optional.debugDescription.getter();
      v61 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v59, v60, &v95);

      *(v56 + 14) = v61;
      *(v56 + 22) = 2048;
      *(v56 + 24) = v37;
      *(v56 + 32) = 2048;
      *(v56 + 34) = v34;
      *(v56 + 42) = 2048;
      *(v56 + 44) = v33;
      *(v56 + 52) = 2048;
      *(v56 + 54) = v36;
      *(v56 + 62) = 2048;
      v62 = v90;
      *(v56 + 64) = v91;
      *(v56 + 72) = 2080;
      v63 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(qword_262A99E10[v62], 0xE100000000000000, &v95);

      *(v56 + 74) = v63;
      _os_log_impl(&dword_262A43000, v54, v55, "Anim: [%s] ERROR! %s (%llu), %f, %f, %ld, %llu, state: %s", v56, 0x52u);
      swift_arrayDestroy();
      MEMORY[0x266730D70](v57, -1, -1);
      v64 = v56;
      v2 = v92;
      MEMORY[0x266730D70](v64, -1, -1);

      v26 = v84;
    }

    else
    {

      v26 = v53;
    }

LABEL_9:
    v85(v26, v2);
    v24 = v98;
    v23 = v93;
  }

  v27 = specialized Deque.Iterator._swapSegment()();
  v28 = v96;
  if (v27)
  {
    goto LABEL_14;
  }

  v72 = v79;
  v86(v79, v87, v2);
  v73 = Logger.logObject.getter();
  v74 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v73, v74))
  {
    v76 = swift_slowAlloc();
    *v76 = 0;
    _os_log_impl(&dword_262A43000, v73, v74, "-----", v76, 2u);
    MEMORY[0x266730D70](v76, -1, -1);
  }

  return (v85)(v72, v2);
}

Swift::Void __swiftcall SILDebugAnimationTracker.print()()
{
  v1 = *(*v0 + 96);
  v2 = v1();

  v3 = *(*v0 + 144);
  v3(v2);

  (v1)(v4);
  v6 = v5;

  v3(v6);
}

uint64_t SILDebugAnimationTracker.__deallocating_deinit()
{

  return MEMORY[0x2821FE8D8](v0, 40, 7);
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySb5dirty_10SILManager12SILValidatorC11RegionStateVSgtGMd);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v10[2] = v8;
    v10[3] = 2 * ((v11 - 32) / 80);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[10 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 80 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSb5dirty_10SILManager12SILValidatorC11RegionStateVSgtMd);
    swift_arrayInitWithCopy();
  }

  return v10;
}

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
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy10SILManager12SILValidatorC11RegionStateVSgGMd);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v10[2] = v8;
    v10[3] = 2 * ((v11 - 32) / 72);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[9 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 72 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s10SILManager12SILValidatorC11RegionStateVSgMd);
    swift_arrayInitWithCopy();
  }

  return v10;
}

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
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy10SILManager13SILFileHandle_pGMd);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v10[2] = v8;
    v10[3] = 2 * ((v11 - 32) / 40);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s10SILManager13SILFileHandle_pMd);
    swift_arrayInitWithCopy();
  }

  return v10;
}

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
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy10SILManager13IOSurfaceLike_pSgGMd);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v10[2] = v8;
    v10[3] = 2 * ((v11 - 32) / 40);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s10SILManager13IOSurfaceLike_pSgMd);
    swift_arrayInitWithCopy();
  }

  return v10;
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
  __swift_destroy_boxed_opaque_existential_1Tm(v11);
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySo6CGRectV_SbtGMd);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 40);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  v14 = 40 * v8;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[v14])
    {
      memmove(v12, v13, v14);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v12, v13, v14);
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySo6CGRectVGMd);
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyypGMd);
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySrys5UInt8VGGMd);
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy10SILManager11SILRendererC6RegionC11PageContentVGMd);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 + 31;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 6);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  v15 = v8 << 6;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[v15])
    {
      memmove(v13, v14, v15);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, v15);
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySiGMd);
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

void *specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(void *a1, int64_t a2, char a3)
{
  result = specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

{
  result = specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

{
  result = specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

{
  result = specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

{
  result = specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(void *result, int64_t a2, char a3, void *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySb5dirty_10SILManager12SILValidatorC11RegionStateVSgtGMd);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v10[2] = v8;
    v10[3] = 2 * ((v11 - 32) / 80);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[10 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 80 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSb5dirty_10SILManager12SILValidatorC11RegionStateVSgtMd);
    swift_arrayInitWithCopy();
  }

  return v10;
}

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
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy10SILManager12SILValidatorC11RegionStateVSgGMd);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v10[2] = v8;
    v10[3] = 2 * ((v11 - 32) / 72);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[9 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 72 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s10SILManager12SILValidatorC11RegionStateVSgMd);
    swift_arrayInitWithCopy();
  }

  return v10;
}

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
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy10SILManager13SILFileHandle_pGMd);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v10[2] = v8;
    v10[3] = 2 * ((v11 - 32) / 40);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s10SILManager13SILFileHandle_pMd);
    swift_arrayInitWithCopy();
  }

  return v10;
}

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
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_SStGMd);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 1;
    }

    v10[2] = v8;
    v10[3] = 2 * (v12 >> 5);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[4 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 32 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSS_SStMd);
    swift_arrayInitWithCopy();
  }

  return v10;
}

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
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS3key_10SILManager13SILCursorDescC5valuetGMd);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v10[2] = v8;
    v10[3] = 2 * ((v11 - 32) / 24);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[3 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 24 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSS3key_10SILManager13SILCursorDescC5valuetMd);
    swift_arrayInitWithCopy();
  }

  return v10;
}

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
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy10SILManager13IOSurfaceLike_pSgGMd);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v10[2] = v8;
    v10[3] = 2 * ((v11 - 32) / 40);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s10SILManager13IOSurfaceLike_pSgMd);
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *specialized _ArrayBuffer._consumeAndCreateNew()(void *a1)
{
  return specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, a1[2], 0, a1);
}

{
  return specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, a1[2], 0, a1);
}

{
  return specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, a1[2], 0, a1);
}

uint64_t specialized Deque._Storage._makeUniqueCopy()()
{
  v1 = *v0;
  v2 = (*v0 + 16);
  v3 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s19CollectionsInternal12_DequeBufferCy10SILManager24SILDebugAnimationTrackerC14AnimPropertiesVGMd);
  v4 = swift_allocObject();
  v5 = *(v1 + 24);
  *(v4 + 16) = v3;
  *(v4 + 24) = v5;
  if (v5 >= 1)
  {
    specialized closure #2 in Deque._UnsafeHandle.copyElements()(v4 + 16, (v4 + 40), v2, (v1 + 40));
  }

  *v0 = v4;
  return result;
}

uint64_t specialized Deque._Storage._ensureUnique(isUnique:minimumCapacity:linearGrowth:)(char a1, Swift::Int to, char a3)
{
  v4 = *v3;
  v5 = (*v3 + 16);
  v6 = *v5;
  if (*v5 >= to)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s19CollectionsInternal12_DequeBufferCy10SILManager24SILDebugAnimationTrackerC14AnimPropertiesVGMd);
    v9 = swift_allocObject();
    v10 = *(v4 + 24);
    *(v9 + 16) = v6;
    *(v9 + 24) = v10;
    if (v10 >= 1)
    {
      specialized closure #2 in Deque._UnsafeHandle.copyElements()(v9 + 16, (v9 + 40), v5, (v4 + 40));
    }
  }

  else
  {
    Deque._Storage._growCapacity(to:linearly:)(to, a3 & 1);
    if (a1)
    {
      v8 = *(v4 + 24);
      __swift_instantiateConcreteTypeFromMangledNameV2(&_s19CollectionsInternal12_DequeBufferCy10SILManager24SILDebugAnimationTrackerC14AnimPropertiesVGMd);
      v9 = swift_allocObject();
      *(v9 + 16) = (_swift_stdlib_malloc_size(v9) - 40) / 72;
      *(v9 + 24) = v8;
      *(v9 + 32) = 0;
      if (v8 >= 1)
      {
        specialized closure #2 in Deque._UnsafeHandle.moveElements(minimumCapacity:)(v9 + 16, (v9 + 40), v5, (v4 + 40));
        *(v4 + 24) = 0;
      }
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&_s19CollectionsInternal12_DequeBufferCy10SILManager24SILDebugAnimationTrackerC14AnimPropertiesVGMd);
      v9 = swift_allocObject();
      v11 = _swift_stdlib_malloc_size(v9);
      v12 = *(v4 + 24);
      *(v9 + 16) = (v11 - 40) / 72;
      *(v9 + 24) = v12;
      *(v9 + 32) = 0;
      if (v12 >= 1)
      {
        specialized closure #2 in Deque._UnsafeHandle.copyElements(minimumCapacity:)(v9 + 16, (v9 + 40), v5, (v4 + 40));
      }
    }
  }

  *v3 = v9;
  return result;
}

void *specialized closure #1 in Deque.append(_:)(void *result, uint64_t a2, uint64_t a3)
{
  v4 = result[1];
  v3 = result[2];
  v6 = __OFADD__(v3, v4);
  v5 = v3 + v4;
  if (!v6)
  {
    if ((v4 & 0x8000000000000000) == 0)
    {
      v6 = __OFSUB__(v5, *result);
      if (v5 < *result || (v5 -= *result, !v6))
      {
LABEL_9:
        v7 = a2 + 72 * v5;
        *(v7 + 64) = *(a3 + 64);
        v8 = *(a3 + 48);
        *(v7 + 32) = *(a3 + 32);
        *(v7 + 48) = v8;
        v9 = *(a3 + 16);
        *v7 = *a3;
        *(v7 + 16) = v9;
        v10 = result[1];
        v6 = __OFADD__(v10, 1);
        v11 = v10 + 1;
        if (!v6)
        {
          result[1] = v11;
          return result;
        }

        goto LABEL_12;
      }

      __break(1u);
    }

    if (v5 < 0)
    {
      v6 = __OFADD__(v5, *result);
      v5 += *result;
      if (v6)
      {
        goto LABEL_13;
      }
    }

    goto LABEL_9;
  }

  __break(1u);
LABEL_12:
  __break(1u);
LABEL_13:
  __break(1u);
  return result;
}

void specialized closure #2 in Deque._UnsafeHandle.moveElements(minimumCapacity:)(int a1, char *__dst, void *a3, char *a4)
{
  v4 = a3[2];
  v5 = *a3 - v4;
  if (__OFSUB__(*a3, v4))
  {
    __break(1u);
    goto LABEL_32;
  }

  v6 = a3[1];
  if (v5 < v6)
  {
    v7 = v6 - v5;
    if (!__OFSUB__(v6, v5))
    {
      v8 = *a3 - v4;
      v9 = a4;
      goto LABEL_6;
    }

LABEL_32:
    __break(1u);
    goto LABEL_33;
  }

  v9 = 0;
  v7 = 0;
  v8 = a3[1];
LABEL_6:
  if (v7)
  {
    v10 = v5 < v6;
  }

  else
  {
    v10 = 0;
  }

  if (v10)
  {
    v11 = v9;
  }

  else
  {
    v11 = 0;
  }

  if (v8 < 1)
  {
    v8 = 0;
    goto LABEL_20;
  }

  if (!a4)
  {
LABEL_33:
    __break(1u);
    goto LABEL_34;
  }

  v12 = &a4[72 * v4];
  if (v12 != __dst || &v12[72 * v8] <= __dst)
  {
    v14 = __dst;
    memmove(__dst, v12, 72 * v8);
    __dst = v14;
  }

LABEL_20:
  if (v5 >= v6 || v7 < 1)
  {
    return;
  }

  if (!v11)
  {
LABEL_34:
    __break(1u);
    return;
  }

  v16 = &__dst[72 * v8];
  v17 = 72 * v7;
  if (v16 != v11 || v16 >= &v11[v17])
  {

    memmove(v16, v11, v17);
  }
}

void specialized closure #2 in Deque._UnsafeHandle.copyElements(minimumCapacity:)(int a1, char *__dst, void *a3, char *__src)
{
  v4 = a3[2];
  v5 = *a3 - v4;
  if (__OFSUB__(*a3, v4))
  {
    __break(1u);
    goto LABEL_20;
  }

  v7 = a3[1];
  if (v5 >= v7)
  {
    v10 = 0;
    v8 = 0;
    v9 = a3[1];
    if (v7 < 1)
    {
      goto LABEL_5;
    }

    goto LABEL_7;
  }

  v8 = v7 - v5;
  if (__OFSUB__(v7, v5))
  {
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  v9 = *a3 - v4;
  v10 = __src;
  if (v5 < 1)
  {
LABEL_5:
    v11 = 0;
    goto LABEL_9;
  }

LABEL_7:
  if (!__src)
  {
LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

  v11 = 72 * v9;
  memcpy(__dst, &__src[72 * v4], 72 * v9);
LABEL_9:
  if (v5 < v7 && v8 >= 1)
  {
    if (v10)
    {

      memcpy(&__dst[v11], v10, 72 * v8);
      return;
    }

LABEL_22:
    __break(1u);
  }
}

void specialized closure #2 in Deque._UnsafeHandle.copyElements()(int a1, char *__dst, void *a3, char *__src)
{
  v4 = a3[2];
  v5 = *a3 - v4;
  if (__OFSUB__(*a3, v4))
  {
    __break(1u);
    goto LABEL_20;
  }

  v7 = a3[1];
  if (v5 >= v7)
  {
    v10 = 0;
    v8 = 0;
    v9 = a3[1];
    if (v7 < 1)
    {
      goto LABEL_9;
    }

LABEL_7:
    if (__src)
    {
      memcpy(&__dst[72 * v4], &__src[72 * v4], 72 * v9);
      goto LABEL_9;
    }

LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

  v8 = v7 - v5;
  if (__OFSUB__(v7, v5))
  {
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  v9 = *a3 - v4;
  v10 = __src;
  if (v5 >= 1)
  {
    goto LABEL_7;
  }

LABEL_9:
  if (v5 < v7 && v8 >= 1)
  {
    if (v10)
    {

      memcpy(__dst, v10, 72 * v8);
      return;
    }

LABEL_22:
    __break(1u);
  }
}

uint64_t specialized Deque.Iterator._swapSegment()()
{
  v1 = *v0;
  v3 = *(*v0 + 24);
  v2 = *(*v0 + 32);
  v6 = __OFADD__(v2, v3);
  v4 = v2 + v3;
  if (v6)
  {
    __break(1u);
    goto LABEL_14;
  }

  if (v3 < 0)
  {
LABEL_7:
    if ((v4 & 0x8000000000000000) == 0)
    {
      goto LABEL_9;
    }

    v7 = *(v1 + 16);
    v6 = __OFADD__(v4, v7);
    v4 += v7;
    if (!v6)
    {
      goto LABEL_9;
    }

LABEL_14:
    __break(1u);
    return result;
  }

  v5 = *(v1 + 16);
  v6 = __OFSUB__(v4, v5);
  v1 = v4 - v5;
  if (v1 < 0 == v6)
  {
    v4 = v1;
    if (v6)
    {
      __break(1u);
      goto LABEL_7;
    }
  }

LABEL_9:
  if (!v4 || v4 == v0[1])
  {
    return 0;
  }

  v0[1] = 0;
  v0[2] = v4;
  return 1;
}

uint64_t specialized SetAlgebra<>.init(arrayLiteral:)(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    return 0;
  }

  result = 0;
  v4 = (a1 + 32);
  do
  {
    v6 = *v4++;
    v5 = v6;
    if ((v6 & ~result) == 0)
    {
      v5 = 0;
    }

    result |= v5;
    --v1;
  }

  while (v1);
  return result;
}

uint64_t _sSa9repeating5countSayxGx_SitcfC10SILManager12SILValidatorC11RegionStateVSg_Tt1g5Tf4gn_n(uint64_t result, uint64_t a2)
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    if (!a2)
    {
      return MEMORY[0x277D84F90];
    }

    v3 = result;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s10SILManager12SILValidatorC11RegionStateVSgMd);
    v4 = static Array._allocateBufferUninitialized(minimumCapacity:)();
    v5 = v4;
    *(v4 + 16) = a2;
    *(v4 + 32) = *v3;
    v7 = *(v3 + 32);
    v6 = *(v3 + 48);
    v8 = *(v3 + 16);
    *(v4 + 96) = *(v3 + 64);
    *(v4 + 64) = v7;
    *(v4 + 80) = v6;
    *(v4 + 48) = v8;
    v9 = a2 - 1;
    if (a2 != 1)
    {
      v10 = v4 + 104;
      do
      {
        outlined init with copy of SILBackend?(v3, v14, &_s10SILManager12SILValidatorC11RegionStateVSgMd);
        *v10 = *v3;
        v11 = *(v3 + 16);
        v12 = *(v3 + 32);
        v13 = *(v3 + 48);
        *(v10 + 64) = *(v3 + 64);
        *(v10 + 32) = v12;
        *(v10 + 48) = v13;
        *(v10 + 16) = v11;
        v10 += 72;
        --v9;
      }

      while (v9);
    }

    outlined init with copy of SILBackend?(v3, v14, &_s10SILManager12SILValidatorC11RegionStateVSgMd);
    return v5;
  }

  return result;
}

uint64_t _sSa9repeating5countSayxGx_SitcfCSb_10SILManager12SILValidatorC11RegionStateVSgt_Tt1g5Tf4gn_n(uint64_t result, uint64_t a2)
{
  v2 = *(result + 72);
  v16[0] = *result;
  *&v16[8] = *(result + 8);
  *&v16[24] = *(result + 24);
  *&v16[40] = *(result + 40);
  *&v16[56] = *(result + 56);
  *&v16[72] = v2;
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    if (!a2)
    {
      return MEMORY[0x277D84F90];
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSb_10SILManager12SILValidatorC11RegionStateVSgtMd);
    v4 = static Array._allocateBufferUninitialized(minimumCapacity:)();
    v5 = v4;
    *(v4 + 16) = a2;
    v6 = *&v16[16];
    *(v4 + 32) = *v16;
    v8 = *&v16[48];
    v7 = *&v16[64];
    v9 = *&v16[32];
    *(v4 + 48) = v6;
    *(v4 + 64) = v9;
    *(v4 + 80) = v8;
    *(v4 + 96) = v7;
    v10 = a2 - 1;
    if (a2 != 1)
    {
      v11 = (v4 + 112);
      do
      {
        outlined init with copy of SILBackend?(v16, v15, &_sSb_10SILManager12SILValidatorC11RegionStateVSgtMd);
        *v11 = *v16;
        v12 = *&v16[16];
        v13 = *&v16[32];
        v14 = *&v16[64];
        v11[3] = *&v16[48];
        v11[4] = v14;
        v11[1] = v12;
        v11[2] = v13;
        v11 += 5;
        --v10;
      }

      while (v10);
    }

    outlined init with copy of SILBackend?(v16, v15, &_sSb_10SILManager12SILValidatorC11RegionStateVSgtMd);
    return v5;
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type UInt32 and conformance UInt32()
{
  result = lazy protocol witness table cache variable for type UInt32 and conformance UInt32;
  if (!lazy protocol witness table cache variable for type UInt32 and conformance UInt32)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type UInt32 and conformance UInt32);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type UInt32 and conformance UInt32;
  if (!lazy protocol witness table cache variable for type UInt32 and conformance UInt32)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type UInt32 and conformance UInt32);
  }

  return result;
}

uint64_t __swift_instantiateConcreteTypeFromMangledNameV2(uint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContext2();
    *a1 = result;
  }

  return result;
}

id *specialized static SILValidator.frameSteady(_:_:_:)(void *a1, uint64_t a2, float a3)
{
  if (*(a1 + OBJC_IVAR____TtC10SILManager12SILAssetDesc_flipbook))
  {
    result = (*((*MEMORY[0x277D85000] & *a1) + 0x138))();
    if (result)
    {
      v5 = (*(*result + 15))(a2);

      return (v5 & 1);
    }

    __break(1u);
    goto LABEL_14;
  }

  v7 = *(*(a1 + OBJC_IVAR____TtC10SILManager12SILAssetDesc_framesBuffer) + 28 * a2 + 4);
  v8 = *((*MEMORY[0x277D85000] & *a1) + 0x138);
  result = v8();
  if (!result)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  v9 = result[3];

  v10 = *&v9[OBJC_IVAR____TtC10SILManager14SILConstraints_steadyFrames];

  if (v10 <= v7)
  {
    result = v8();
    if (!result)
    {
LABEL_16:
      __break(1u);
      return result;
    }

    v12 = result[3];

    v13 = *&v12[OBJC_IVAR____TtC10SILManager14SILConstraints_steadyFrames + 4];

    v11 = v7 <= v13;
  }

  else
  {
    v11 = 0;
  }

  result = v8();
  if (!result)
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v14 = result[3];

  v15 = *&v14[OBJC_IVAR____TtC10SILManager14SILConstraints_steadyOpacity];

  if (v15 <= a3)
  {
    return v11;
  }

  else
  {
    return 0;
  }
}

uint64_t outlined destroy of SILValidator.RegionState?(uint64_t a1, uint64_t *a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(a2);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

void *__swift_project_boxed_opaque_existential_1(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

uint64_t __swift_destroy_boxed_opaque_existential_1Tm(uint64_t a1)
{
  v1 = *(*(a1 + 24) - 8);
  if ((*(v1 + 82) & 2) != 0)
  {
  }

  else
  {
    return (*(v1 + 8))();
  }
}

unint64_t lazy protocol witness table accessor for type SILError and conformance SILError()
{
  result = lazy protocol witness table cache variable for type SILError and conformance SILError;
  if (!lazy protocol witness table cache variable for type SILError and conformance SILError)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SILError and conformance SILError);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type SILError and conformance SILError;
  if (!lazy protocol witness table cache variable for type SILError and conformance SILError)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SILError and conformance SILError);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type SILError and conformance SILError;
  if (!lazy protocol witness table cache variable for type SILError and conformance SILError)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SILError and conformance SILError);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type SILValidator.DisabledHealthCheckOptions and conformance SILValidator.DisabledHealthCheckOptions()
{
  result = lazy protocol witness table cache variable for type SILValidator.DisabledHealthCheckOptions and conformance SILValidator.DisabledHealthCheckOptions;
  if (!lazy protocol witness table cache variable for type SILValidator.DisabledHealthCheckOptions and conformance SILValidator.DisabledHealthCheckOptions)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SILValidator.DisabledHealthCheckOptions and conformance SILValidator.DisabledHealthCheckOptions);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type SILValidator.DisabledHealthCheckOptions and conformance SILValidator.DisabledHealthCheckOptions;
  if (!lazy protocol witness table cache variable for type SILValidator.DisabledHealthCheckOptions and conformance SILValidator.DisabledHealthCheckOptions)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SILValidator.DisabledHealthCheckOptions and conformance SILValidator.DisabledHealthCheckOptions);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type SILValidator.DisabledHealthCheckOptions and conformance SILValidator.DisabledHealthCheckOptions;
  if (!lazy protocol witness table cache variable for type SILValidator.DisabledHealthCheckOptions and conformance SILValidator.DisabledHealthCheckOptions)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SILValidator.DisabledHealthCheckOptions and conformance SILValidator.DisabledHealthCheckOptions);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type SILValidator.DisabledHealthCheckOptions and conformance SILValidator.DisabledHealthCheckOptions;
  if (!lazy protocol witness table cache variable for type SILValidator.DisabledHealthCheckOptions and conformance SILValidator.DisabledHealthCheckOptions)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SILValidator.DisabledHealthCheckOptions and conformance SILValidator.DisabledHealthCheckOptions);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type SILValidator.FBITriggeredType and conformance SILValidator.FBITriggeredType()
{
  result = lazy protocol witness table cache variable for type SILValidator.FBITriggeredType and conformance SILValidator.FBITriggeredType;
  if (!lazy protocol witness table cache variable for type SILValidator.FBITriggeredType and conformance SILValidator.FBITriggeredType)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SILValidator.FBITriggeredType and conformance SILValidator.FBITriggeredType);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for SILValidator.SILValidationErrors(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 8))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for SILValidator.SILValidationErrors(uint64_t result, int a2, int a3)
{
  if (a2)
  {
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

  *(result + 8) = v3;
  return result;
}

__n128 __swift_memcpy66_8(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  result = *(a2 + 16);
  v3 = *(a2 + 32);
  v4 = *(a2 + 48);
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 32) = v3;
  *(a1 + 48) = v4;
  *(a1 + 16) = result;
  return result;
}

uint64_t getEnumTagSinglePayload for SILValidator.IndicatorState(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 66))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 65);
  v4 = v3 >= 2;
  v5 = (v3 + 2147483646) & 0x7FFFFFFF;
  if (!v4)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t storeEnumTagSinglePayload for SILValidator.IndicatorState(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 56) = 0;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 64) = 0;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 66) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 66) = 0;
    }

    if (a2)
    {
      *(result + 65) = a2 + 1;
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

uint64_t getEnumTagSinglePayload for SILValidator.IndicatorState.AnimationState(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFD && *(a1 + 9))
  {
    return (*a1 + 253);
  }

  v3 = *(a1 + 8);
  if (v3 <= 3)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t storeEnumTagSinglePayload for SILValidator.IndicatorState.AnimationState(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFC)
  {
    *(result + 8) = 0;
    *result = a2 - 253;
    if (a3 >= 0xFD)
    {
      *(result + 9) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFD)
    {
      *(result + 9) = 0;
    }

    if (a2)
    {
      *(result + 8) = -a2;
    }
  }

  return result;
}

uint64_t getEnumTag for SILValidator.IndicatorState.AnimationState(uint64_t a1)
{
  if (*(a1 + 8) <= 2u)
  {
    return *(a1 + 8);
  }

  else
  {
    return (*a1 + 3);
  }
}

uint64_t destructiveInjectEnumTag for SILValidator.IndicatorState.AnimationState(uint64_t result, unsigned int a2)
{
  if (a2 >= 3)
  {
    *result = a2 - 3;
    LOBYTE(a2) = 3;
  }

  *(result + 8) = a2;
  return result;
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

uint64_t getEnumTagSinglePayload for SILValidator.FaceIDState(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 33))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 32);
  v4 = v3 >= 2;
  v5 = (v3 + 2147483646) & 0x7FFFFFFF;
  if (!v4)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t storeEnumTagSinglePayload for SILValidator.FaceIDState(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *(result + 32) = 0;
    *result = a2 - 255;
    *(result + 8) = 0;
    if (a3 >= 0xFF)
    {
      *(result + 33) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 33) = 0;
    }

    if (a2)
    {
      *(result + 32) = a2 + 1;
    }
  }

  return result;
}

__n128 __swift_memcpy177_8(uint64_t a1, __int128 *a2)
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
  v10 = a2[10];
  *(a1 + 176) = *(a2 + 176);
  *(a1 + 144) = v9;
  *(a1 + 160) = v10;
  *(a1 + 128) = result;
  return result;
}

uint64_t getEnumTagSinglePayload for SILValidator.IndicatorStates(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFE && *(a1 + 177))
  {
    return (*a1 + 254);
  }

  v3 = *(a1 + 65);
  if (v3 >= 2)
  {
    v4 = ((v3 + 2147483646) & 0x7FFFFFFF) - 1;
  }

  else
  {
    v4 = -2;
  }

  if (v4 < 0)
  {
    v4 = -1;
  }

  return (v4 + 1);
}

uint64_t storeEnumTagSinglePayload for SILValidator.IndicatorStates(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFD)
  {
    *(result + 168) = 0;
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
    *(result + 176) = 0;
    *result = a2 - 254;
    if (a3 >= 0xFE)
    {
      *(result + 177) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFE)
    {
      *(result + 177) = 0;
    }

    if (a2)
    {
      *(result + 65) = a2 + 2;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for SILValidator.FBITriggeredType(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFD)
  {
    goto LABEL_17;
  }

  if (a2 + 3 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 3) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 3;
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

      return (*a1 | (v4 << 8)) - 3;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 3;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 4;
  v8 = v6 - 4;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for SILValidator.FBITriggeredType(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 3 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 3) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFD)
  {
    v4 = 0;
  }

  if (a2 > 0xFC)
  {
    v5 = ((a2 - 253) >> 8) + 1;
    *result = a2 + 3;
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
    *result = a2 + 3;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

__n128 __swift_memcpy72_8(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  result = *(a2 + 16);
  v3 = *(a2 + 32);
  v4 = *(a2 + 48);
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 32) = v3;
  *(a1 + 48) = v4;
  *(a1 + 16) = result;
  return result;
}

uint64_t getEnumTagSinglePayload for SILValidator.RegionState(uint64_t *a1, int a2)
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

uint64_t storeEnumTagSinglePayload for SILValidator.RegionState(uint64_t result, int a2, int a3)
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

__n128 __swift_memcpy65_8(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  result = *(a2 + 16);
  v3 = *(a2 + 32);
  v4 = *(a2 + 48);
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 32) = v3;
  *(a1 + 48) = v4;
  *(a1 + 16) = result;
  return result;
}

uint64_t getEnumTagSinglePayload for SILDebugAnimationTracker.AnimProperties(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 65))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 49);
  v4 = v3 >= 2;
  v5 = (v3 + 2147483646) & 0x7FFFFFFF;
  if (!v4)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t storeEnumTagSinglePayload for SILDebugAnimationTracker.AnimProperties(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 56) = 0;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 64) = 0;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 65) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 65) = 0;
    }

    if (a2)
    {
      *(result + 49) = a2 + 1;
    }
  }

  return result;
}

__n128 __swift_memcpy32_8(_OWORD *a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *a1 = *a2;
  a1[1] = v3;
  return result;
}

uint64_t getEnumTagSinglePayload for CGRect(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 32))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for CGRect(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = (a2 - 1);
    *(result + 8) = 0;
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

  *(result + 32) = v3;
  return result;
}

void type metadata accessor for CGPoint(uint64_t a1, unint64_t *a2)
{
  if (!*a2)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    if (!v4)
    {
      atomic_store(ForeignTypeMetadata, a2);
    }
  }
}

__n128 __swift_memcpy16_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

uint64_t outlined init with copy of Any(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t outlined init with copy of SILBackend?(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(a3);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

Swift::Int __swiftcall scaleDimension(dim:scale:)(Swift::Int dim, Swift::Float scale)
{
  v2 = dim * scale;
  v3 = floorf(v2);
  v4 = ceilf(v2);
  if (v2 >= 0.0)
  {
    v5 = v4;
  }

  else
  {
    v5 = v3;
  }

  if ((LODWORD(v5) & 0x7FFFFFFFu) > 0x7F7FFFFF)
  {
    __break(1u);
    goto LABEL_9;
  }

  if (v5 <= -9.2234e18)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  if (v5 < 9.2234e18)
  {
    return v5;
  }

LABEL_10:
  __break(1u);
  return dim;
}

void *FrameDesc.init(from:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy10SILManager9FrameDescC10CodingKeysOGMd);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v21 - v7;
  v9 = __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type FrameDesc.CodingKeys and conformance FrameDesc.CodingKeys();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v2)
  {
    __swift_destroy_boxed_opaque_existential_1Tm(a1);
    type metadata accessor for FrameDesc();
    swift_deallocPartialClassInstance();
  }

  else
  {
    v22 = 0;
    *&v3[OBJC_IVAR____TtC10SILManager9FrameDesc_dataOffset] = KeyedDecodingContainer.decode(_:forKey:)();
    v22 = 1;
    *&v3[OBJC_IVAR____TtC10SILManager9FrameDesc_dataSize] = KeyedDecodingContainer.decode(_:forKey:)();
    v22 = 2;
    KeyedDecodingContainer.decode(_:forKey:)();
    *&v3[OBJC_IVAR____TtC10SILManager9FrameDesc_time] = v10;
    v22 = 3;
    KeyedDecodingContainer.decode(_:forKey:)();
    *&v3[OBJC_IVAR____TtC10SILManager9FrameDesc_size] = v11;
    v22 = 9;
    v12 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
    if ((v12 & 0x10000) != 0)
    {
      v13 = 0;
    }

    else
    {
      v13 = v12;
    }

    *&v3[OBJC_IVAR____TtC10SILManager9FrameDesc_posOffsetX] = v13;
    v22 = 10;
    v14 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
    if ((v14 & 0x10000) != 0)
    {
      v15 = 0;
    }

    else
    {
      v15 = v14;
    }

    *&v3[OBJC_IVAR____TtC10SILManager9FrameDesc_posOffsetY] = v15;
    v22 = 4;
    v16 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
    v17 = *&v16;
    if ((v16 & 0x100000000) != 0)
    {
      v17 = 0.0;
    }

    *&v3[OBJC_IVAR____TtC10SILManager9FrameDesc_blur] = v17;
    v22 = 5;
    v3[OBJC_IVAR____TtC10SILManager9FrameDesc_unnoticeable] = KeyedDecodingContainer.decodeIfPresent(_:forKey:)() & 1;
    v22 = 6;
    v3[OBJC_IVAR____TtC10SILManager9FrameDesc_skipEic] = KeyedDecodingContainer.decodeIfPresent(_:forKey:)() & 1;
    v22 = 7;
    v3[OBJC_IVAR____TtC10SILManager9FrameDesc_insecure] = KeyedDecodingContainer.decodeIfPresent(_:forKey:)() & 1;
    v22 = 8;
    v19 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
    (*(v6 + 8))(v8, v5);
    v3[OBJC_IVAR____TtC10SILManager9FrameDesc_delayed] = v19 & 1;
    v20 = type metadata accessor for FrameDesc();
    v21.receiver = v3;
    v21.super_class = v20;
    v9 = objc_msgSendSuper2(&v21, sel_init);
    __swift_destroy_boxed_opaque_existential_1Tm(a1);
  }

  return v9;
}

unint64_t lazy protocol witness table accessor for type FrameDesc.CodingKeys and conformance FrameDesc.CodingKeys()
{
  result = lazy protocol witness table cache variable for type FrameDesc.CodingKeys and conformance FrameDesc.CodingKeys;
  if (!lazy protocol witness table cache variable for type FrameDesc.CodingKeys and conformance FrameDesc.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type FrameDesc.CodingKeys and conformance FrameDesc.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type FrameDesc.CodingKeys and conformance FrameDesc.CodingKeys;
  if (!lazy protocol witness table cache variable for type FrameDesc.CodingKeys and conformance FrameDesc.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type FrameDesc.CodingKeys and conformance FrameDesc.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type FrameDesc.CodingKeys and conformance FrameDesc.CodingKeys;
  if (!lazy protocol witness table cache variable for type FrameDesc.CodingKeys and conformance FrameDesc.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type FrameDesc.CodingKeys and conformance FrameDesc.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type FrameDesc.CodingKeys and conformance FrameDesc.CodingKeys;
  if (!lazy protocol witness table cache variable for type FrameDesc.CodingKeys and conformance FrameDesc.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type FrameDesc.CodingKeys and conformance FrameDesc.CodingKeys);
  }

  return result;
}

id FrameDesc.init()()
{
  *&v0[OBJC_IVAR____TtC10SILManager9FrameDesc_dataOffset] = 0;
  *&v0[OBJC_IVAR____TtC10SILManager9FrameDesc_dataSize] = 0;
  *&v0[OBJC_IVAR____TtC10SILManager9FrameDesc_time] = 0;
  *&v0[OBJC_IVAR____TtC10SILManager9FrameDesc_size] = 0;
  *&v0[OBJC_IVAR____TtC10SILManager9FrameDesc_blur] = 0;
  *&v0[OBJC_IVAR____TtC10SILManager9FrameDesc_posOffsetX] = 0;
  *&v0[OBJC_IVAR____TtC10SILManager9FrameDesc_posOffsetY] = 0;
  v0[OBJC_IVAR____TtC10SILManager9FrameDesc_unnoticeable] = 0;
  v0[OBJC_IVAR____TtC10SILManager9FrameDesc_skipEic] = 0;
  v0[OBJC_IVAR____TtC10SILManager9FrameDesc_insecure] = 0;
  v0[OBJC_IVAR____TtC10SILManager9FrameDesc_delayed] = 0;
  v2.receiver = v0;
  v2.super_class = type metadata accessor for FrameDesc();
  return objc_msgSendSuper2(&v2, sel_init);
}

void __swiftcall FrameDesc.getSILFrameDesc()(SILFrameDesc *__return_ptr retstr)
{
  v2 = *(v1 + OBJC_IVAR____TtC10SILManager9FrameDesc_size);
  v3 = *(v1 + OBJC_IVAR____TtC10SILManager9FrameDesc_blur);
  v4 = *(v1 + OBJC_IVAR____TtC10SILManager9FrameDesc_posOffsetX);
  v5 = *(v1 + OBJC_IVAR____TtC10SILManager9FrameDesc_posOffsetY);
  v6 = *(v1 + OBJC_IVAR____TtC10SILManager9FrameDesc_dataOffset);
  v7 = *(v1 + OBJC_IVAR____TtC10SILManager9FrameDesc_dataSize);
  v8 = *(v1 + OBJC_IVAR____TtC10SILManager9FrameDesc_unnoticeable);
  v9 = *(v1 + OBJC_IVAR____TtC10SILManager9FrameDesc_skipEic);
  v10 = *(v1 + OBJC_IVAR____TtC10SILManager9FrameDesc_insecure);
  v11 = *(v1 + OBJC_IVAR____TtC10SILManager9FrameDesc_delayed);
  retstr->var0 = *(v1 + OBJC_IVAR____TtC10SILManager9FrameDesc_time);
  retstr->var1 = v2;
  retstr->var2 = v3;
  retstr->var3 = v4;
  retstr->var4 = v5;
  retstr->var5 = v6;
  retstr->var6 = v7;
  retstr->var7 = v8;
  retstr->var8 = v9;
  retstr->var9 = v10;
  retstr->var10 = v11;
}

uint64_t FrameDesc.CodingKeys.rawValue.getter(unsigned __int8 a1)
{
  if (a1 <= 4u)
  {
    v5 = 0x7366664F61746164;
    v6 = 1701669236;
    v7 = 1702521203;
    if (a1 != 3)
    {
      v7 = 1920298082;
    }

    if (a1 != 2)
    {
      v6 = v7;
    }

    if (a1)
    {
      v5 = 0x657A695361746164;
    }

    if (a1 <= 1u)
    {
      return v5;
    }

    else
    {
      return v6;
    }
  }

  else
  {
    v1 = 0x646579616C6564;
    if (a1 != 8)
    {
      v1 = 0x657366664F736F70;
    }

    v2 = 0x656369746F6E6E75;
    v3 = 0x63694570696B73;
    if (a1 != 6)
    {
      v3 = 0x6572756365736E69;
    }

    if (a1 != 5)
    {
      v2 = v3;
    }

    if (a1 <= 7u)
    {
      return v2;
    }

    else
    {
      return v1;
    }
  }
}

uint64_t protocol witness for static Equatable.== infix(_:_:) in conformance FrameDesc.CodingKeys(unsigned __int8 *a1, unsigned __int8 *a2)
{
  v2 = *a2;
  v3 = FrameDesc.CodingKeys.rawValue.getter(*a1);
  v5 = v4;
  if (v3 == FrameDesc.CodingKeys.rawValue.getter(v2) && v5 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  return v8 & 1;
}

uint64_t specialized == infix<A>(_:_:)(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = a1;
  if (a1 <= 3u)
  {
    v11 = 0xE700000000000000;
    v12 = 0x8000000262A9E150;
    v13 = 0xD000000000000013;
    if (a1 != 2)
    {
      v13 = 0x7246796461657473;
      v12 = 0xEF657A6953656D61;
    }

    v14 = 0x676E69646E756F62;
    if (a1)
    {
      v11 = 0xED00007365786F42;
    }

    else
    {
      v14 = 0x73656369766564;
    }

    if (a1 <= 1u)
    {
      v9 = v14;
    }

    else
    {
      v9 = v13;
    }

    if (v2 <= 1)
    {
      v10 = v11;
    }

    else
    {
      v10 = v12;
    }
  }

  else
  {
    v3 = 0xD000000000000015;
    v4 = 0x8000000262A9E1B0;
    v5 = 0x8000000262A9E1D0;
    v6 = 0x704F796461657473;
    if (a1 == 7)
    {
      v6 = 0xD000000000000015;
    }

    else
    {
      v5 = 0xED00007974696361;
    }

    if (a1 != 6)
    {
      v3 = v6;
      v4 = v5;
    }

    v7 = 0x8000000262A9E180;
    v8 = 0xD000000000000019;
    if (a1 != 4)
    {
      v8 = 0x6B6361626C6C6166;
      v7 = 0xEC0000006F666E49;
    }

    if (a1 <= 5u)
    {
      v9 = v8;
    }

    else
    {
      v9 = v3;
    }

    if (v2 <= 5)
    {
      v10 = v7;
    }

    else
    {
      v10 = v4;
    }
  }

  if (a2 <= 3u)
  {
    if (a2 > 1u)
    {
      if (a2 == 2)
      {
        v16 = 0x8000000262A9E150;
        if (v9 != 0xD000000000000013)
        {
          goto LABEL_53;
        }
      }

      else
      {
        v16 = 0xEF657A6953656D61;
        if (v9 != 0x7246796461657473)
        {
          goto LABEL_53;
        }
      }
    }

    else
    {
      if (a2)
      {
        v17 = 0x676E69646E756F62;
        v18 = 0x7365786F42;
        goto LABEL_48;
      }

      v16 = 0xE700000000000000;
      if (v9 != 0x73656369766564)
      {
        goto LABEL_53;
      }
    }
  }

  else
  {
    if (a2 > 5u)
    {
      if (a2 == 6)
      {
        v15 = "timeToSteadyAsSeconds";
LABEL_42:
        v16 = (v15 - 32) | 0x8000000000000000;
        if (v9 != 0xD000000000000015)
        {
          goto LABEL_53;
        }

        goto LABEL_51;
      }

      if (a2 == 7)
      {
        v15 = "timeAsSteadyAsSeconds";
        goto LABEL_42;
      }

      v17 = 0x704F796461657473;
      v18 = 0x7974696361;
LABEL_48:
      v16 = v18 & 0xFFFFFFFFFFFFLL | 0xED00000000000000;
      if (v9 != v17)
      {
        goto LABEL_53;
      }

      goto LABEL_51;
    }

    if (a2 == 4)
    {
      v16 = 0x8000000262A9E180;
      if (v9 != 0xD000000000000019)
      {
        goto LABEL_53;
      }
    }

    else
    {
      v16 = 0xEC0000006F666E49;
      if (v9 != 0x6B6361626C6C6166)
      {
LABEL_53:
        v19 = _stringCompareWithSmolCheck(_:_:expecting:)();
        goto LABEL_54;
      }
    }
  }

LABEL_51:
  if (v10 != v16)
  {
    goto LABEL_53;
  }

  v19 = 1;
LABEL_54:

  return v19 & 1;
}

{
  v2 = a1;
  v3 = 0xE500000000000000;
  v4 = 0x7954726F73727563;
  v5 = 0xEA00000000006570;
  if (a1 != 5)
  {
    v4 = 0xD000000000000017;
    v5 = 0x8000000262A9E260;
  }

  v6 = 0x74616D726F66;
  if (a1 != 3)
  {
    v6 = 0x74657366666FLL;
  }

  if (a1 <= 4u)
  {
    v4 = v6;
    v5 = 0xE600000000000000;
  }

  v7 = 2020896616;
  if (a1 != 1)
  {
    v7 = 2037673832;
  }

  if (a1)
  {
    v3 = 0xE400000000000000;
  }

  else
  {
    v7 = 0x656C616373;
  }

  if (a1 <= 2u)
  {
    v8 = v7;
  }

  else
  {
    v8 = v4;
  }

  if (v2 <= 2)
  {
    v9 = v3;
  }

  else
  {
    v9 = v5;
  }

  if (a2 <= 2u)
  {
    if (a2)
    {
      v10 = 0xE400000000000000;
      if (a2 == 1)
      {
        if (v8 != 2020896616)
        {
          goto LABEL_39;
        }
      }

      else if (v8 != 2037673832)
      {
        goto LABEL_39;
      }
    }

    else
    {
      v10 = 0xE500000000000000;
      if (v8 != 0x656C616373)
      {
        goto LABEL_39;
      }
    }
  }

  else if (a2 > 4u)
  {
    if (a2 == 5)
    {
      v10 = 0xEA00000000006570;
      if (v8 != 0x7954726F73727563)
      {
        goto LABEL_39;
      }
    }

    else
    {
      v10 = 0x8000000262A9E260;
      if (v8 != 0xD000000000000017)
      {
LABEL_39:
        v11 = _stringCompareWithSmolCheck(_:_:expecting:)();
        goto LABEL_40;
      }
    }
  }

  else
  {
    v10 = 0xE600000000000000;
    if (a2 == 3)
    {
      if (v8 != 0x74616D726F66)
      {
        goto LABEL_39;
      }
    }

    else if (v8 != 0x74657366666FLL)
    {
      goto LABEL_39;
    }
  }

  if (v9 != v10)
  {
    goto LABEL_39;
  }

  v11 = 1;
LABEL_40:

  return v11 & 1;
}

{
  v2 = 1701667182;
  v3 = a1;
  v4 = 0xE400000000000000;
  v5 = 0xE800000000000000;
  v6 = 0x6B6F6F6270696C66;
  if (a1 != 6)
  {
    v6 = 0x6F666E4972657375;
    v5 = 0xE800000000000000;
  }

  v7 = 0xE600000000000000;
  v8 = 0x73656D617266;
  if (a1 != 4)
  {
    v8 = 0x656D614E626F6C62;
    v7 = 0xE800000000000000;
  }

  if (a1 <= 5u)
  {
    v6 = v8;
    v5 = v7;
  }

  v9 = 0xE300000000000000;
  v10 = 7499842;
  if (a1 != 2)
  {
    v10 = 0x746E65747865;
    v9 = 0xE600000000000000;
  }

  v11 = 1701869940;
  if (a1)
  {
    v4 = 0xE400000000000000;
  }

  else
  {
    v11 = 1701667182;
  }

  if (a1 > 1u)
  {
    v4 = v9;
  }

  else
  {
    v10 = v11;
  }

  if (a1 <= 3u)
  {
    v12 = v10;
  }

  else
  {
    v12 = v6;
  }

  if (v3 <= 3)
  {
    v13 = v4;
  }

  else
  {
    v13 = v5;
  }

  if (a2 > 3u)
  {
    if (a2 > 5u)
    {
      v14 = 0xE800000000000000;
      if (a2 == 6)
      {
        if (v12 != 0x6B6F6F6270696C66)
        {
          goto LABEL_43;
        }
      }

      else if (v12 != 0x6F666E4972657375)
      {
        goto LABEL_43;
      }
    }

    else if (a2 == 4)
    {
      v14 = 0xE600000000000000;
      if (v12 != 0x73656D617266)
      {
        goto LABEL_43;
      }
    }

    else
    {
      v14 = 0xE800000000000000;
      if (v12 != 0x656D614E626F6C62)
      {
        goto LABEL_43;
      }
    }
  }

  else
  {
    if (a2 > 1u)
    {
      if (a2 == 2)
      {
        v14 = 0xE300000000000000;
        if (v12 != 7499842)
        {
          goto LABEL_43;
        }

        goto LABEL_40;
      }

      v14 = 0xE600000000000000;
      v2 = 0x746E65747865;
    }

    else
    {
      v14 = 0xE400000000000000;
      if (a2)
      {
        if (v12 != 1701869940)
        {
          goto LABEL_43;
        }

        goto LABEL_40;
      }
    }

    if (v12 != v2)
    {
LABEL_43:
      v15 = _stringCompareWithSmolCheck(_:_:expecting:)();
      goto LABEL_44;
    }
  }

LABEL_40:
  if (v13 != v14)
  {
    goto LABEL_43;
  }

  v15 = 1;
LABEL_44:

  return v15 & 1;
}

{
  v2 = 0xE900000000000065;
  v3 = 0xE90000000000006DLL;
  v4 = a1;
  v5 = 0xE600000000000000;
  v6 = 0x6E6F6D6D6F43;
  if (a1 != 6)
  {
    v6 = 0x69746164696C6156;
    v5 = 0xEA00000000006E6FLL;
  }

  v7 = 0x65646E65524C4953;
  v8 = 0xEB00000000726572;
  if (a1 != 4)
  {
    v7 = 0x646E656B636142;
    v8 = 0xE700000000000000;
  }

  if (a1 <= 5u)
  {
    v6 = v7;
    v5 = v8;
  }

  v9 = 0x6361667275535845;
  if (a1 == 2)
  {
    v10 = 0xE900000000000065;
  }

  else
  {
    v9 = 0x6F4C617461445845;
    v10 = 0xEC00000072656461;
  }

  v11 = 0x616C707369445845;
  if (a1)
  {
    v3 = 0xE900000000000079;
  }

  else
  {
    v11 = 0x6165627468676954;
  }

  if (a1 > 1u)
  {
    v3 = v10;
  }

  else
  {
    v9 = v11;
  }

  if (a1 <= 3u)
  {
    v12 = v9;
  }

  else
  {
    v12 = v6;
  }

  if (v4 <= 3)
  {
    v13 = v3;
  }

  else
  {
    v13 = v5;
  }

  if (a2 > 3u)
  {
    if (a2 > 5u)
    {
      if (a2 == 6)
      {
        v2 = 0xE600000000000000;
        if (v12 != 0x6E6F6D6D6F43)
        {
          goto LABEL_46;
        }
      }

      else
      {
        v2 = 0xEA00000000006E6FLL;
        if (v12 != 0x69746164696C6156)
        {
LABEL_46:
          v14 = _stringCompareWithSmolCheck(_:_:expecting:)();
          goto LABEL_47;
        }
      }
    }

    else if (a2 == 4)
    {
      v2 = 0xEB00000000726572;
      if (v12 != 0x65646E65524C4953)
      {
        goto LABEL_46;
      }
    }

    else
    {
      v2 = 0xE700000000000000;
      if (v12 != 0x646E656B636142)
      {
        goto LABEL_46;
      }
    }
  }

  else if (a2 > 1u)
  {
    if (a2 == 2)
    {
      if (v12 != 0x6361667275535845)
      {
        goto LABEL_46;
      }
    }

    else
    {
      v2 = 0xEC00000072656461;
      if (v12 != 0x6F4C617461445845)
      {
        goto LABEL_46;
      }
    }
  }

  else if (a2)
  {
    v2 = 0xE900000000000079;
    if (v12 != 0x616C707369445845)
    {
      goto LABEL_46;
    }
  }

  else
  {
    v2 = 0xE90000000000006DLL;
    if (v12 != 0x6165627468676954)
    {
      goto LABEL_46;
    }
  }

  if (v13 != v2)
  {
    goto LABEL_46;
  }

  v14 = 1;
LABEL_47:

  return v14 & 1;
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance FrameDesc.CodingKeys()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  FrameDesc.CodingKeys.rawValue.getter(v1);
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t protocol witness for Hashable.hash(into:) in conformance FrameDesc.CodingKeys()
{
  FrameDesc.CodingKeys.rawValue.getter(*v0);
  String.hash(into:)();
}

uint64_t specialized RawRepresentable<>.hash(into:)()
{
  String.hash(into:)();
}

{
  String.hash(into:)();
}

{
  String.hash(into:)();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance FrameDesc.CodingKeys()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  FrameDesc.CodingKeys.rawValue.getter(v1);
  String.hash(into:)();

  return Hasher._finalize()();
}

Swift::Int specialized RawRepresentable<>._rawHashValue(seed:)()
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

unint64_t protocol witness for RawRepresentable.init(rawValue:) in conformance FrameDesc.CodingKeys@<X0>(Swift::String *a1@<X0>, _BYTE *a2@<X8>)
{
  result = specialized FrameDesc.CodingKeys.init(rawValue:)(*a1);
  *a2 = result;
  return result;
}

uint64_t protocol witness for RawRepresentable.rawValue.getter in conformance FrameDesc.CodingKeys@<X0>(uint64_t *a1@<X8>)
{
  result = FrameDesc.CodingKeys.rawValue.getter(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

unint64_t protocol witness for CodingKey.init(stringValue:) in conformance FrameDesc.CodingKeys@<X0>(Swift::String a1@<X1:X0>, _BYTE *a2@<X8>)
{
  result = specialized FrameDesc.CodingKeys.init(rawValue:)(a1);
  *a2 = result;
  return result;
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance FrameDesc.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type FrameDesc.CodingKeys and conformance FrameDesc.CodingKeys();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance FrameDesc.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type FrameDesc.CodingKeys and conformance FrameDesc.CodingKeys();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t protocol witness for Decodable.init(from:) in conformance FrameDesc@<X0>(uint64_t *a1@<X8>)
{
  result = (*(v1 + 168))();
  if (!v2)
  {
    *a1 = result;
  }

  return result;
}

uint64_t SILBoundingBoxes.__allocating_init(values:)(uint64_t a1)
{
  v2 = swift_allocObject();
  SILBoundingBoxes.init(values:)(a1);
  return v2;
}

uint64_t SILBoundingBoxes.init(values:)(uint64_t a1)
{
  v2 = MEMORY[0x277D84F90];
  if (!a1)
  {
    goto LABEL_35;
  }

  v4 = *(a1 + 16);
  if (!v4)
  {

LABEL_35:
    *(v1 + 16) = &outlined read-only object #0 of SILBoundingBoxes.init(values:);
    *(v1 + 24) = v2;
    return v1;
  }

  v57 = MEMORY[0x277D84F90];
  specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v4, 0);
  v5 = 0;
  v6 = v57;
  do
  {
    if (v5 >= *(a1 + 16))
    {
      __break(1u);
LABEL_65:
      __break(1u);
LABEL_66:
      __break(1u);
LABEL_67:
      __break(1u);
LABEL_68:
      __break(1u);
LABEL_69:
      __break(1u);
LABEL_70:
      __break(1u);
LABEL_71:
      __break(1u);
LABEL_72:
      __break(1u);
LABEL_73:
      __break(1u);
LABEL_74:
      __break(1u);
      goto LABEL_75;
    }

    v7 = *(a1 + 8 * v5 + 32);

    if (!*(v7 + 16))
    {
      goto LABEL_65;
    }

    v8 = specialized __RawDictionaryStorage.find<A>(_:)(88, 0xE100000000000000);
    if ((v9 & 1) == 0)
    {
      goto LABEL_66;
    }

    if (!*(v7 + 16))
    {
      goto LABEL_67;
    }

    v10 = *(*(v7 + 56) + 8 * v8);
    v11 = specialized __RawDictionaryStorage.find<A>(_:)(89, 0xE100000000000000);
    if ((v12 & 1) == 0)
    {
      goto LABEL_68;
    }

    if (!*(v7 + 16))
    {
      goto LABEL_69;
    }

    v13 = *(*(v7 + 56) + 8 * v11);
    v14 = specialized __RawDictionaryStorage.find<A>(_:)(0x6874646957, 0xE500000000000000);
    if ((v15 & 1) == 0)
    {
      goto LABEL_70;
    }

    if (!*(v7 + 16))
    {
      goto LABEL_71;
    }

    v16 = *(*(v7 + 56) + 8 * v14);
    v17 = specialized __RawDictionaryStorage.find<A>(_:)(0x746867696548, 0xE600000000000000);
    if ((v18 & 1) == 0)
    {
      goto LABEL_72;
    }

    v19 = *(*(v7 + 56) + 8 * v17);
    if (*(v7 + 16) && (specialized __RawDictionaryStorage.find<A>(_:)(0x63696D616E7964, 0xE700000000000000), (v20 & 1) != 0))
    {
      if (!*(v7 + 16))
      {
        goto LABEL_73;
      }

      v21 = specialized __RawDictionaryStorage.find<A>(_:)(0x63696D616E7964, 0xE700000000000000);
      if ((v22 & 1) == 0)
      {
        goto LABEL_74;
      }

      v23 = *(*(v7 + 56) + 8 * v21) > 0.0;
    }

    else
    {
      v23 = 0;
    }

    v25 = *(v57 + 16);
    v24 = *(v57 + 24);
    if (v25 >= v24 >> 1)
    {
      specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v24 > 1), v25 + 1, 1);
    }

    ++v5;
    *(v57 + 16) = v25 + 1;
    v26 = v57 + 40 * v25;
    *(v26 + 32) = v10;
    *(v26 + 40) = v13;
    *(v26 + 48) = v16;
    *(v26 + 56) = v19;
    *(v26 + 64) = v23;
  }

  while (v4 != v5);

  result = swift_isUniquelyReferenced_nonNull_native();
  if (result)
  {
    goto LABEL_23;
  }

LABEL_75:
  result = specialized _ArrayBuffer._consumeAndCreateNew()(v57);
  v6 = result;
LABEL_23:
  v1 = v54;
  v28 = *(v6 + 16);
  if (v28)
  {
    v29 = 0;
    v30 = v6 + 32;
LABEL_25:
    v31 = (v30 + 40 * v29);
    v32 = v29;
    while (*(v31 + 32) != 1)
    {
      ++v32;
      v31 = (v31 + 40);
      if (v32 >= v28)
      {
        if (v28 <= v29 + 1)
        {
          v32 = v29 + 1;
        }

        else
        {
          v32 = v28;
        }

        goto LABEL_39;
      }
    }

    v33 = v30 + 40 * v28;
    while (v32 < --v28)
    {
      v34 = *(v33 - 8);
      v33 -= 40;
      if ((v34 & 1) == 0)
      {
        v35 = *v31;
        v36 = v31[1];
        v37 = *(v33 + 32);
        v38 = *(v33 + 16);
        *v31 = *v33;
        v31[1] = v38;
        *(v31 + 4) = v37;
        *v33 = v35;
        *(v33 + 16) = v36;
        v29 = v32 + 1;
        *(v33 + 32) = 1;
        if (v32 + 1 < v28)
        {
          goto LABEL_25;
        }

        ++v32;
        break;
      }
    }

LABEL_39:
    if (v32 < 0)
    {
      __break(1u);
    }

    else if (*(v6 + 16) >= v32)
    {
      if (v32)
      {

        v39 = MEMORY[0x277D84F90];
        v40 = 32;
        v41 = v32;
        do
        {
          v52 = *(v6 + v40 + 16);
          v55 = *(v6 + v40);
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v39 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v39 + 2) + 1, 1, v39);
          }

          v43 = *(v39 + 2);
          v42 = *(v39 + 3);
          if (v43 >= v42 >> 1)
          {
            v39 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v42 > 1), v43 + 1, 1, v39);
          }

          *(v39 + 2) = v43 + 1;
          v44 = &v39[32 * v43];
          *(v44 + 2) = v55;
          *(v44 + 3) = v52;
          v40 += 40;
          --v41;
        }

        while (v41);
      }

      else
      {
        v39 = MEMORY[0x277D84F90];
      }

      *(v1 + 16) = v39;
      v45 = *(v6 + 16);
      if (v45 >= v32)
      {
        goto LABEL_52;
      }

LABEL_78:
      __break(1u);
      goto LABEL_79;
    }

    __break(1u);
    goto LABEL_78;
  }

  v32 = 0;
  *(v54 + 16) = MEMORY[0x277D84F90];
  v45 = *(v6 + 16);
LABEL_52:
  v46 = v45 - v32;
  if (v45 == v32)
  {
    v47 = MEMORY[0x277D84F90];
LABEL_62:
    *(v1 + 24) = v47;

    return v1;
  }

  if (v45 > v32)
  {

    v48 = 40 * v32 + 32;
    v47 = MEMORY[0x277D84F90];
    do
    {
      v53 = *(v6 + v48 + 16);
      v56 = *(v6 + v48);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v47 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v47 + 2) + 1, 1, v47);
      }

      v50 = *(v47 + 2);
      v49 = *(v47 + 3);
      if (v50 >= v49 >> 1)
      {
        v47 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v49 > 1), v50 + 1, 1, v47);
      }

      *(v47 + 2) = v50 + 1;
      v51 = &v47[32 * v50];
      *(v51 + 2) = v56;
      *(v51 + 3) = v53;
      v48 += 40;
      --v46;
    }

    while (v46);

    goto LABEL_62;
  }

LABEL_79:
  __break(1u);
  return result;
}

Swift::Bool __swiftcall SILBoundingBoxes.isPositionValid(position:includeDynamicBoundingBoxes:)(CGPoint position, Swift::Bool includeDynamicBoundingBoxes)
{
  v3 = includeDynamicBoundingBoxes;
  y = position.y;
  x = position.x;
  v6 = *(v2 + 16);
  v7 = v6 + 56;
  v8 = -*(v6 + 16);
  v9 = -1;
  while (1)
  {
    if (v8 + v9 == -1)
    {
      if (!v3)
      {
        return 0;
      }

      v12 = *(v2 + 24);
      v13 = v12 + 56;
      v14 = -*(v12 + 16);
      v15 = -1;
      do
      {
        v11 = v14 + v15 != -1;
        if (v14 + v15 == -1)
        {
          break;
        }

        if (++v15 >= *(v12 + 16))
        {
          goto LABEL_15;
        }

        v16 = v13 + 32;
        includeDynamicBoundingBoxes = CGRect.contains(_:)(__PAIR128__(*&y, *&x));
        v13 = v16;
      }

      while (!includeDynamicBoundingBoxes);
      return v11;
    }

    if (++v9 >= *(v6 + 16))
    {
      break;
    }

    v10 = v7 + 32;
    includeDynamicBoundingBoxes = CGRect.contains(_:)(__PAIR128__(*&y, *&x));
    v7 = v10;
    if (includeDynamicBoundingBoxes)
    {
      return 1;
    }
  }

  __break(1u);
LABEL_15:
  __break(1u);
  return includeDynamicBoundingBoxes;
}

uint64_t SILBoundingBoxes.deinit()
{

  return v0;
}

uint64_t SILBoundingBoxes.__deallocating_deinit()
{

  return MEMORY[0x2821FE8D8](v0, 32, 7);
}

uint64_t SILConstraints.constraintsFile.getter()
{
  v1 = (v0 + OBJC_IVAR____TtC10SILManager14SILConstraints_constraintsFile);
  swift_beginAccess();
  v2 = *v1;

  return v2;
}

uint64_t SILConstraints.constraintsFile.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + OBJC_IVAR____TtC10SILManager14SILConstraints_constraintsFile);
  swift_beginAccess();
  *v5 = a1;
  v5[1] = a2;
}

char *SILConstraints.init(from:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy10SILManager14SILConstraintsC10CodingKeysOGMd);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v33 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type SILConstraints.CodingKeys and conformance SILConstraints.CodingKeys();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v2)
  {
    __swift_destroy_boxed_opaque_existential_1Tm(a1);
    type metadata accessor for SILConstraints();
    swift_deallocPartialClassInstance();
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySSGMd);
    v35 = 0;
    lazy protocol witness table accessor for type [String] and conformance <A> [A](&lazy protocol witness table cache variable for type [String] and conformance <A> [A], &_sSaySSGMd);
    KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
    v10 = v36;
    if (!v36)
    {
      v10 = MEMORY[0x277D84F90];
    }

    *&v1[OBJC_IVAR____TtC10SILManager14SILConstraints_devices] = v10;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySDySSSdGGMd);
    v35 = 1;
    lazy protocol witness table accessor for type [[String : Double]] and conformance <A> [A]();
    KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
    v11 = v36;
    type metadata accessor for SILBoundingBoxes();
    v12 = swift_allocObject();
    SILBoundingBoxes.init(values:)(v11);
    *&v3[OBJC_IVAR____TtC10SILManager14SILConstraints_boundingBoxes] = v12;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSDySSSdGMd);
    v35 = 5;
    lazy protocol witness table accessor for type [String : Double] and conformance <> [A : B](&lazy protocol witness table cache variable for type [String : Double] and conformance <> [A : B], &_sSDySSSdGMd);
    KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
    v13 = specialized FallbackInfo.init(values:)(v36);
    v14 = &v3[OBJC_IVAR____TtC10SILManager14SILConstraints_fallbackInfo];
    *v14 = v13;
    *(v14 + 1) = v15;
    *(v14 + 8) = v16;
    v14[18] = v17 & 1;
    LOBYTE(v36) = 3;
    v18 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
    v19 = *&v18 + -0.5;
    if ((v18 & 0x100000000) != 0)
    {
      v19 = 0.0;
    }

    v20 = &v3[OBJC_IVAR____TtC10SILManager14SILConstraints_steadyFrames];
    *v20 = v19;
    *(v20 + 1) = 1203982208;
    LOBYTE(v36) = 6;
    v21 = COERCE_DOUBLE(KeyedDecodingContainer.decodeIfPresent(_:forKey:)());
    if (v22)
    {
      v21 = 1.0;
    }

    *&v3[OBJC_IVAR____TtC10SILManager14SILConstraints_timeToSteadyAsSeconds] = v21;
    LOBYTE(v36) = 7;
    v23 = COERCE_DOUBLE(KeyedDecodingContainer.decodeIfPresent(_:forKey:)());
    if (v24)
    {
      v23 = 0.5;
    }

    *&v3[OBJC_IVAR____TtC10SILManager14SILConstraints_timeAsSteadyAsSeconds] = v23;
    LOBYTE(v36) = 8;
    v25 = COERCE_DOUBLE(KeyedDecodingContainer.decodeIfPresent(_:forKey:)());
    if (v26)
    {
      v25 = 0.2;
    }

    *&v3[OBJC_IVAR____TtC10SILManager14SILConstraints_steadyOpacity] = v25;
    LOBYTE(v36) = 2;
    v27 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
    v28 = *&v27;
    if ((v27 & 0x100000000) != 0)
    {
      v28 = 0.0;
    }

    *&v3[OBJC_IVAR____TtC10SILManager14SILConstraints_noticeableFrame] = v28;
    LOBYTE(v36) = 4;
    v29 = COERCE_DOUBLE(KeyedDecodingContainer.decodeIfPresent(_:forKey:)());
    if (v30)
    {
      v29 = 3.0;
    }

    *&v3[OBJC_IVAR____TtC10SILManager14SILConstraints_minStaticLocationDuration] = v29;
    (*(v6 + 8))(v8, v5);
    v31 = &v3[OBJC_IVAR____TtC10SILManager14SILConstraints_constraintsFile];
    *v31 = 0x3E656E696C6E693CLL;
    *(v31 + 1) = 0xE800000000000000;
    v32 = type metadata accessor for SILConstraints();
    v34.receiver = v3;
    v34.super_class = v32;
    v3 = objc_msgSendSuper2(&v34, sel_init);
    __swift_destroy_boxed_opaque_existential_1Tm(a1);
  }

  return v3;
}

uint64_t SILConstraints.CodingKeys.rawValue.getter(unsigned __int8 a1)
{
  if (a1 <= 3u)
  {
    v5 = 0x73656369766564;
    v6 = 0xD000000000000013;
    if (a1 != 2)
    {
      v6 = 0x7246796461657473;
    }

    if (a1)
    {
      v5 = 0x676E69646E756F62;
    }

    if (a1 <= 1u)
    {
      return v5;
    }

    else
    {
      return v6;
    }
  }

  else
  {
    v1 = 0xD000000000000015;
    v2 = 0x704F796461657473;
    if (a1 == 7)
    {
      v2 = 0xD000000000000015;
    }

    if (a1 != 6)
    {
      v1 = v2;
    }

    v3 = 0xD000000000000019;
    if (a1 != 4)
    {
      v3 = 0x6B6361626C6C6166;
    }

    if (a1 <= 5u)
    {
      return v3;
    }

    else
    {
      return v1;
    }
  }
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance SILConstraints.CodingKeys()
{
  Hasher.init(_seed:)();
  specialized RawRepresentable<>.hash(into:)();
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance SILConstraints.CodingKeys()
{
  Hasher.init(_seed:)();
  specialized RawRepresentable<>.hash(into:)();
  return Hasher._finalize()();
}

unint64_t protocol witness for RawRepresentable.init(rawValue:) in conformance SILConstraints.CodingKeys@<X0>(Swift::String *a1@<X0>, _BYTE *a2@<X8>)
{
  result = specialized SILConstraints.CodingKeys.init(rawValue:)(*a1);
  *a2 = result;
  return result;
}

uint64_t protocol witness for RawRepresentable.rawValue.getter in conformance SILConstraints.CodingKeys@<X0>(uint64_t *a1@<X8>)
{
  result = SILConstraints.CodingKeys.rawValue.getter(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

unint64_t protocol witness for CodingKey.init(stringValue:) in conformance SILConstraints.CodingKeys@<X0>(Swift::String a1@<X1:X0>, _BYTE *a2@<X8>)
{
  result = specialized SILConstraints.CodingKeys.init(rawValue:)(a1);
  *a2 = result;
  return result;
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance SILConstraints.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type SILConstraints.CodingKeys and conformance SILConstraints.CodingKeys();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance SILConstraints.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type SILConstraints.CodingKeys and conformance SILConstraints.CodingKeys();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t SILConstraints.__ivar_destroyer()
{
}

uint64_t protocol witness for Decodable.init(from:) in conformance SILConstraints@<X0>(uint64_t *a1@<X8>)
{
  result = (*(v1 + 184))();
  if (!v2)
  {
    *a1 = result;
  }

  return result;
}

uint64_t SILAssetDesc.type.getter()
{
  v1 = OBJC_IVAR____TtC10SILManager12SILAssetDesc_type;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t SILAssetDesc.type.setter(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC10SILManager12SILAssetDesc_type;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

uint64_t SILAssetDesc.name.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC10SILManager12SILAssetDesc_name);

  return v1;
}

uint64_t SILAssetDesc.blobName.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC10SILManager12SILAssetDesc_blobName);

  return v1;
}

void *SILAssetDesc.flipbook.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC10SILManager12SILAssetDesc_flipbook);
  v2 = v1;
  return v1;
}

double variable initialization expression of SILAssetDesc.blobHandle@<D0>(uint64_t a1@<X8>)
{
  *(a1 + 32) = 0;
  result = 0.0;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  return result;
}

uint64_t SILAssetDesc.blobHandle.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC10SILManager12SILAssetDesc_blobHandle;
  swift_beginAccess();
  return outlined init with copy of SILFileHandle?(v1 + v3, a1);
}

uint64_t SILAssetDesc.blobHandle.setter(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC10SILManager12SILAssetDesc_blobHandle;
  swift_beginAccess();
  outlined assign with take of SILFileHandle?(a1, v1 + v3);
  return swift_endAccess();
}

unint64_t protocol witness for RawRepresentable.init(rawValue:) in conformance SILAssetDesc.CodingKeys@<X0>(Swift::String *a1@<X0>, _BYTE *a2@<X8>)
{
  result = specialized SILAssetDesc.CodingKeys.init(rawValue:)(*a1);
  *a2 = result;
  return result;
}

void protocol witness for RawRepresentable.rawValue.getter in conformance SILAssetDesc.CodingKeys(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE400000000000000;
  v4 = 1701667182;
  v5 = 0xE800000000000000;
  v6 = 0x6B6F6F6270696C66;
  if (v2 != 6)
  {
    v6 = 0x6F666E4972657375;
    v5 = 0xE800000000000000;
  }

  v7 = 0xE600000000000000;
  v8 = 0x73656D617266;
  if (v2 != 4)
  {
    v8 = 0x656D614E626F6C62;
    v7 = 0xE800000000000000;
  }

  if (*v1 <= 5u)
  {
    v6 = v8;
    v5 = v7;
  }

  v9 = 0xE300000000000000;
  v10 = 7499842;
  if (v2 != 2)
  {
    v10 = 0x746E65747865;
    v9 = 0xE600000000000000;
  }

  if (*v1)
  {
    v4 = 1701869940;
    v3 = 0xE400000000000000;
  }

  if (*v1 > 1u)
  {
    v4 = v10;
    v3 = v9;
  }

  v13 = __OFSUB__(v2, 3);
  v11 = v2 == 3;
  v12 = v2 - 3 < 0;
  if (*v1 <= 3u)
  {
    v14 = v4;
  }

  else
  {
    v14 = v6;
  }

  if (!(v12 ^ v13 | v11))
  {
    v3 = v5;
  }

  *a1 = v14;
  a1[1] = v3;
}

uint64_t protocol witness for CodingKey.stringValue.getter in conformance SILAssetDesc.CodingKeys()
{
  v1 = *v0;
  v2 = 1701667182;
  v3 = 0x6B6F6F6270696C66;
  if (v1 != 6)
  {
    v3 = 0x6F666E4972657375;
  }

  v4 = 0x73656D617266;
  if (v1 != 4)
  {
    v4 = 0x656D614E626F6C62;
  }

  if (*v0 <= 5u)
  {
    v3 = v4;
  }

  v5 = 7499842;
  if (v1 != 2)
  {
    v5 = 0x746E65747865;
  }

  if (*v0)
  {
    v2 = 1701869940;
  }

  if (*v0 > 1u)
  {
    v2 = v5;
  }

  if (*v0 <= 3u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

unint64_t protocol witness for CodingKey.init(stringValue:) in conformance SILAssetDesc.CodingKeys@<X0>(Swift::String a1@<X1:X0>, _BYTE *a2@<X8>)
{
  result = specialized SILAssetDesc.CodingKeys.init(rawValue:)(a1);
  *a2 = result;
  return result;
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance SILAssetDesc.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type SILAssetDesc.CodingKeys and conformance SILAssetDesc.CodingKeys();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance SILAssetDesc.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type SILAssetDesc.CodingKeys and conformance SILAssetDesc.CodingKeys();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t SILAssetDesc.init(from:)(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy10SILManager12SILAssetDescC10CodingKeysOGMd);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v45 - v6;
  v55 = v1;
  v8 = &v1[OBJC_IVAR____TtC10SILManager12SILAssetDesc_blobHandle];
  *v8 = 0u;
  *(v8 + 16) = 0u;
  *(v8 + 32) = 0;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type SILAssetDesc.CodingKeys and conformance SILAssetDesc.CodingKeys();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v2)
  {
    v11 = v55;
    __swift_destroy_boxed_opaque_existential_1Tm(a1);
    goto LABEL_4;
  }

  v49 = v5;
  LOBYTE(v52[0]) = 0;
  v9 = KeyedDecodingContainer.decode(_:forKey:)();
  v11 = v55;
  v12 = &v55[OBJC_IVAR____TtC10SILManager12SILAssetDesc_name];
  *v12 = v9;
  v12[1] = v13;
  LOBYTE(v52[0]) = 3;
  v14 = KeyedDecodingContainer.decode(_:forKey:)();
  v15 = v49;
  *&v11[OBJC_IVAR____TtC10SILManager12SILAssetDesc_extent] = v14;
  LOBYTE(v52[0]) = 2;
  v16 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  if (v17)
  {
    v18 = -1;
  }

  else
  {
    v18 = v16;
  }

  *&v11[OBJC_IVAR____TtC10SILManager12SILAssetDesc_Bpr] = v18;
  LOBYTE(v52[0]) = 5;
  v19 = KeyedDecodingContainer.decode(_:forKey:)();
  v20 = &v11[OBJC_IVAR____TtC10SILManager12SILAssetDesc_blobName];
  *v20 = v19;
  v20[1] = v21;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay10SILManager9FrameDescCGMd);
  v51 = 4;
  lazy protocol witness table accessor for type [FrameDesc] and conformance <A> [A]();
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  v22 = *&v52[0];
  v48 = *&v52[0];
  if (*&v52[0] >> 62)
  {
    if (*&v52[0] < 0)
    {
      v43 = *&v52[0];
    }

    else
    {
      v43 = *&v52[0] & 0xFFFFFFFFFFFFFF8;
    }

    v44 = MEMORY[0x2667300B0](v43);
    v22 = v48;
    v23 = v44;
  }

  else
  {
    v23 = *((*&v52[0] & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v46 = 0;
  result = 28 * v23;
  if ((v23 * 28) >> 64 == (28 * v23) >> 63)
  {
    result = swift_slowAlloc();
    if ((v23 & 0x8000000000000000) == 0)
    {
      if (v23)
      {
        v24 = v22;
        v47 = v23;
        v25 = 0;
        v26 = v22 & 0xC000000000000001;
        v45 = result;
        v27 = result;
        do
        {
          if (v26)
          {
            v28 = MEMORY[0x266730000](v25);
          }

          else
          {
            v28 = *(v24 + 8 * v25 + 32);
          }

          v29 = v28;
          ++v25;
          (*((*MEMORY[0x277D85000] & *v28) + 0xB0))(v54);

          *v27 = v54[0];
          *(v27 + 12) = *(v54 + 12);
          v27 = (v27 + 28);
          v24 = v48;
        }

        while (v47 != v25);
        v30 = &v11[OBJC_IVAR____TtC10SILManager12SILAssetDesc_framesBuffer];
        v31 = v45;
        v23 = v47;
        *v30 = v45;
        v30[1] = v23;
        *&v11[OBJC_IVAR____TtC10SILManager12SILAssetDesc_frames] = v31;
        v15 = v49;
        if (v23 <= 0xFFFFFFFFLL)
        {
          goto LABEL_22;
        }

        __break(1u);
      }

      v32 = &v11[OBJC_IVAR____TtC10SILManager12SILAssetDesc_framesBuffer];
      *v32 = result;
      v32[1] = 0;
      *&v11[OBJC_IVAR____TtC10SILManager12SILAssetDesc_frames] = result;
LABEL_22:
      *&v11[OBJC_IVAR____TtC10SILManager12SILAssetDesc_framesCount] = v23;
      LOBYTE(v52[0]) = 1;
      v33 = v46;
      v34 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
      if (!v33)
      {
        if (v35)
        {
          v36 = -1;
        }

        else
        {
          v36 = v34;
        }

        *&v11[OBJC_IVAR____TtC10SILManager12SILAssetDesc_type] = v36;
        __swift_instantiateConcreteTypeFromMangledNameV2(&_sSDySSSDySSSDySSSaySiGGGGMd);
        v51 = 6;
        lazy protocol witness table accessor for type [String : [String : [String : [Int]]]] and conformance <> [A : B](&lazy protocol witness table cache variable for type [String : [String : [String : [Int]]]] and conformance <> [A : B], &_sSDySSSDySSSDySSSaySiGGGGMd, &_sSDySSSDySSSDySSSaySiGGGGMR, lazy protocol witness table accessor for type [String : [String : [Int]]] and conformance <> [A : B]);
        KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
        v37 = *&v52[0];
        if (*&v52[0])
        {
          v38 = objc_allocWithZone(type metadata accessor for SILFlipBookDesc());
          v39 = SILFlipBookDesc.init(_:_:)(v48, v37);
        }

        else
        {

          v39 = 0;
        }

        v40 = v55;
        *&v55[OBJC_IVAR____TtC10SILManager12SILAssetDesc_flipbook] = v39;
        v41 = _ss22KeyedDecodingContainerV10SILManagerE15decodeIfPresent_6forKeySDySSypGSgAFm_xtKFAC12SILAssetDescC10CodingKeysO_Ttg5(7);
        (*(v49 + 8))(v7, v4);
        *&v40[OBJC_IVAR____TtC10SILManager12SILAssetDesc_userInfo] = v41;
        v53 = 0;
        memset(v52, 0, sizeof(v52));
        swift_beginAccess();
        outlined assign with take of SILFileHandle?(v52, v8);
        swift_endAccess();
        v42 = type metadata accessor for SILAssetDesc();
        v50.receiver = v40;
        v50.super_class = v42;
        v11 = objc_msgSendSuper2(&v50, sel_init);
        __swift_destroy_boxed_opaque_existential_1Tm(a1);
        return v11;
      }

      (*(v15 + 8))(v7, v4);

      __swift_destroy_boxed_opaque_existential_1Tm(a1);

LABEL_4:
      outlined destroy of SILFileHandle?(v8);
      type metadata accessor for SILAssetDesc();
      swift_deallocPartialClassInstance();
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

uint64_t _ss22KeyedDecodingContainerV10SILManagerE15decodeIfPresent_6forKeySDySSypGSgAFm_xtKFAC12SILAssetDescC10CodingKeysO_Ttg5(char a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy10SILManager15PlistCodingKeysVGMd);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v9 - v5;
  v11 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy10SILManager12SILAssetDescC10CodingKeysOGMd);
  if ((KeyedDecodingContainer.contains(_:)() & 1) == 0)
  {
    return 0;
  }

  v10 = a1;
  lazy protocol witness table accessor for type PlistCodingKeys and conformance PlistCodingKeys();
  result = KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
  if (!v1)
  {
    v8 = _ss22KeyedDecodingContainerV10SILManagerE6decodeySDySSypGAEmKFAC15PlistCodingKeysV_Ttg5();
    (*(v4 + 8))(v6, v3);
    return v8;
  }

  return result;
}

uint64_t SILAssetDesc.__ivar_destroyer()
{

  v1 = v0 + OBJC_IVAR____TtC10SILManager12SILAssetDesc_blobHandle;

  return outlined destroy of SILFileHandle?(v1);
}

BOOL static SILAssetDesc.== infix(_:_:)(void *a1, void *a2)
{
  v3 = MEMORY[0x277D85000];
  v4 = (*((*MEMORY[0x277D85000] & *a1) + 0xA8))();
  return v4 == (*((*v3 & *a2) + 0xA8))();
}

Swift::Bool __swiftcall SILAssetDesc.frameInsecure(frameNumber:)(Swift::UInt16 frameNumber)
{
  v3 = type metadata accessor for Logger();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v15 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *&v1[OBJC_IVAR____TtC10SILManager12SILAssetDesc_framesCount];
  if (v7 > frameNumber)
  {
    return *(*&v1[OBJC_IVAR____TtC10SILManager12SILAssetDesc_framesBuffer] + 28 * frameNumber + 26);
  }

  v9 = SILLogger.unsafeMutableAddressor();
  (*(v4 + 16))(v6, v9, v3);
  v10 = v1;
  v11 = Logger.logObject.getter();
  v12 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    v16 = v14;
    *v13 = 33555202;
    *(v13 + 4) = frameNumber;
    *(v13 + 6) = 1024;
    *(v13 + 8) = v7;

    *(v13 + 12) = 2080;
    *(v13 + 14) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(*&v10[OBJC_IVAR____TtC10SILManager12SILAssetDesc_name], *&v10[OBJC_IVAR____TtC10SILManager12SILAssetDesc_name + 8], &v16);
    _os_log_impl(&dword_262A43000, v11, v12, "frameInsecure = false as frame %hu >= max frames %u for indicator %s", v13, 0x16u);
    __swift_destroy_boxed_opaque_existential_1Tm(v14);
    MEMORY[0x266730D70](v14, -1, -1);
    MEMORY[0x266730D70](v13, -1, -1);
  }

  else
  {
  }

  (*(v4 + 8))(v6, v3);
  return 0;
}

Swift::Bool __swiftcall SILAssetDesc.frameDelayed(frameNumber:)(Swift::UInt16 frameNumber)
{
  v3 = type metadata accessor for Logger();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v15 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *&v1[OBJC_IVAR____TtC10SILManager12SILAssetDesc_framesCount];
  if (v7 > frameNumber)
  {
    return *(*&v1[OBJC_IVAR____TtC10SILManager12SILAssetDesc_framesBuffer] + 28 * frameNumber + 27);
  }

  v9 = SILLogger.unsafeMutableAddressor();
  (*(v4 + 16))(v6, v9, v3);
  v10 = v1;
  v11 = Logger.logObject.getter();
  v12 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    v16 = v14;
    *v13 = 33555202;
    *(v13 + 4) = frameNumber;
    *(v13 + 6) = 1024;
    *(v13 + 8) = v7;

    *(v13 + 12) = 2080;
    *(v13 + 14) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(*&v10[OBJC_IVAR____TtC10SILManager12SILAssetDesc_name], *&v10[OBJC_IVAR____TtC10SILManager12SILAssetDesc_name + 8], &v16);
    _os_log_impl(&dword_262A43000, v11, v12, "frameDelayed = false as frame %hu >= max frames %u for indicator %s", v13, 0x16u);
    __swift_destroy_boxed_opaque_existential_1Tm(v14);
    MEMORY[0x266730D70](v14, -1, -1);
    MEMORY[0x266730D70](v13, -1, -1);
  }

  else
  {
  }

  (*(v4 + 8))(v6, v3);
  return 0;
}