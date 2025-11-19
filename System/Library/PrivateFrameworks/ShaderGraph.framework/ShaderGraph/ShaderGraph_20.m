uint64_t _s11ShaderGraph17OrderedDictionaryV9_grouping2byACyxq_Gqd___x7ElementQy_KXEtKcSmR_STRd__AGQyd__AHRSlufCAA13TextureSourceO_SayAA05TypedH0VGANTt1g504_s11a12Graph23inferh23Assignments4fromSayAA05j24D0VGAA7SGGraphC_tKFAA0D6I9OAEXEfU4_Tf1nc_nTf4g_n(uint64_t a1)
{
  v29 = MEMORY[0x277D84F90];
  v26 = *(a1 + 16);
  if (!v26)
  {
    return 0;
  }

  v1 = 0;
  v25 = a1 + 32;
  v2 = MEMORY[0x277D84F90];
  while (1)
  {
    v4 = v25 + 32 * v1;
    v5 = *v4;
    v6 = *(v4 + 8);
    v7 = *(v4 + 16);
    v8 = *(v29 + 16);
    v28 = *(v4 + 24);
    if (v8)
    {
      break;
    }

LABEL_24:
    outlined copy of TextureSource();
    outlined copy of TextureSource();

    specialized OrderedSet._appendNew(_:in:)(v5, v6, v7, 0);
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v2[2] + 1, 1);
    }

    v20 = v2[2];
    v19 = v2[3];
    if (v20 >= v19 >> 1)
    {
      specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v19 > 1), v20 + 1, 1);
    }

    v2[2] = v20 + 1;
    v27 = v2;
    v21 = v2 + 4;
    v22 = MEMORY[0x277D84F90];
    v2[v20 + 4] = MEMORY[0x277D84F90];
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v2[v20 + 4] = v22;
    v14 = v22;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v14 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v22 + 16) + 1, 1, v22);
      v21[v20] = v14;
    }

    v17 = *(v14 + 2);
    v24 = *(v14 + 3);
    v18 = v17 + 1;
    if (v17 >= v24 >> 1)
    {
      v14 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v24 > 1), v17 + 1, 1, v14);
      v21[v20] = v14;
    }

LABEL_3:
    ++v1;
    *(v14 + 2) = v18;
    v3 = &v14[32 * v17];
    *(v3 + 4) = v5;
    *(v3 + 5) = v6;
    v3[48] = v7;
    *(v3 + 7) = v28;
    outlined consume of TextureSource();
    v2 = v27;
    if (v1 == v26)
    {
      return 0;
    }
  }

  v9 = 0;
  v10 = (v29 + 48);
  while ((*v10 & 1) != 0)
  {
    if (v7)
    {
      goto LABEL_11;
    }

LABEL_6:
    ++v9;
    v10 += 24;
    if (v8 == v9)
    {
      goto LABEL_24;
    }
  }

  if (v7)
  {
    goto LABEL_6;
  }

LABEL_11:
  v11 = *(v10 - 2) == v5 && *(v10 - 1) == v6;
  if (!v11 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
  {
    goto LABEL_6;
  }

  outlined copy of TextureSource();
  outlined copy of TextureSource();

  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
    result = specialized _ContiguousArrayBuffer._consumeAndCreateNew()(v2);
    v2 = result;
  }

  if ((v9 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (v9 < v2[2])
  {
    v13 = v2 + 4;
    v14 = v2[v9 + 4];
    v15 = swift_isUniquelyReferenced_nonNull_native();
    v2[v9 + 4] = v14;
    v27 = v2;
    if ((v15 & 1) == 0)
    {
      v14 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v14 + 2) + 1, 1, v14);
      v13[v9] = v14;
    }

    v17 = *(v14 + 2);
    v16 = *(v14 + 3);
    v18 = v17 + 1;
    if (v17 >= v16 >> 1)
    {
      v14 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v16 > 1), v17 + 1, 1, v14);
      v13[v9] = v14;
    }

    goto LABEL_3;
  }

  __break(1u);
  return result;
}

uint64_t specialized OrderedDictionary.init<A>(_grouping:by:)(uint64_t a1, uint64_t (*a2)(char *), uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v74 = a5;
  v75 = a7;
  v68 = a2;
  v69 = a3;
  v71 = a1;
  v59 = *(a4 - 8);
  v12 = *(v59 + 64);
  v73 = a9;
  MEMORY[0x28223BE20](a1);
  v79 = &v58 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v67 = v14;
  v15 = *(*(v14 + 8) + 8);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v61 = *(AssociatedTypeWitness - 8);
  v16 = *(v61 + 64);
  MEMORY[0x28223BE20](AssociatedTypeWitness);
  v18 = &v58 - v17;
  v19 = type metadata accessor for Optional();
  v20 = *(*(v19 - 8) + 64);
  MEMORY[0x28223BE20](v19 - 8);
  v22 = &v58 - v21;
  v23 = *(a6 - 8);
  v24 = *(v23 + 64);
  MEMORY[0x28223BE20](v25);
  v70 = &v58 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = swift_getAssociatedTypeWitness();
  v58 = *(v27 - 8);
  v28 = *(v58 + 64);
  MEMORY[0x28223BE20](v27);
  v30 = &v58 - v29;
  v65 = a4;
  v31 = OrderedSet.init()(a4);
  v66 = v32;
  v33 = v74;
  v34 = static Array._allocateUninitialized(_:)();
  v35 = MEMORY[0x266772110](v34, v33);
  v76 = v31;
  v77 = v66;
  v78 = v35;
  (*(v23 + 16))(v70, v71, a6);
  v36 = AssociatedTypeWitness;
  dispatch thunk of Sequence.makeIterator()();
  v37 = v61;
  v66 = a6;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v70 = v30;
  v71 = v27;
  v64 = AssociatedConformanceWitness;
  dispatch thunk of IteratorProtocol.next()();
  v62 = *(v37 + 48);
  v63 = v37 + 48;
  if (v62(v22, 1, v36) == 1)
  {
LABEL_5:
    (*(v58 + 8))(v70, v71);
    return v76;
  }

  else
  {
    v40 = *(v37 + 32);
    v39 = v37 + 32;
    v59 += 8;
    v60 = v40;
    v61 = v39 - 24;
    while (1)
    {
      v60(v18, v22, v36);
      v41 = v68(v18);
      if (v9)
      {
        break;
      }

      MEMORY[0x28223BE20](v41);
      v42 = v39;
      v44 = v65;
      v43 = v66;
      v45 = v74;
      v46 = v75;
      *(&v58 - 6) = v65;
      *(&v58 - 5) = v45;
      *(&v58 - 4) = v43;
      *(&v58 - 3) = v46;
      v47 = v73;
      *(&v58 - 2) = v67;
      *(&v58 - 1) = v47;
      MEMORY[0x28223BE20](v48);
      *(&v58 - 8) = v44;
      *(&v58 - 7) = v49;
      *(&v58 - 6) = v51;
      *(&v58 - 5) = v50;
      *(&v58 - 4) = v52;
      *(&v58 - 3) = v53;
      *(&v58 - 2) = v18;
      v54 = type metadata accessor for OrderedDictionary();
      v55 = v79;
      OrderedDictionary.updateValue<A>(forKey:default:with:)(v79, partial apply for implicit closure #1 in OrderedDictionary.init<A>(_grouping:by:), (&v58 - 8), partial apply for closure #1 in OrderedDictionary.init<A>(_grouping:by:), (&v58 - 10), v54);
      v36 = AssociatedTypeWitness;
      v56 = v44;
      v39 = v42;
      (*v59)(v55, v56);
      (*v61)(v18, v36);
      dispatch thunk of IteratorProtocol.next()();
      if (v62(v22, 1, v36) == 1)
      {
        goto LABEL_5;
      }
    }

    (*(v58 + 8))(v70, v71);

    return (*v61)(v18, v36);
  }
}

uint64_t specialized OrderedDictionary.init<A>(uniqueKeysWithValues:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v55 = a5;
  AssociatedConformanceWitness = a1;
  v44 = *(a3 - 8);
  v8 = *(v44 + 64);
  MEMORY[0x28223BE20](a1);
  v53 = &v43 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v12 = &v43 - v11;
  v54 = *(v13 - 8);
  v14 = *(v54 + 64);
  MEMORY[0x28223BE20](v15);
  v17 = &v43 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v18 = type metadata accessor for Optional();
  v19 = *(*(v18 - 8) + 64);
  MEMORY[0x28223BE20](v18 - 8);
  v21 = &v43 - v20;
  v51 = *(a4 - 8);
  v22 = *(v51 + 8);
  MEMORY[0x28223BE20](v23);
  v50 = &v43 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v45 = *(AssociatedTypeWitness - 8);
  v25 = *(v45 + 64);
  MEMORY[0x28223BE20](AssociatedTypeWitness);
  v56 = &v43 - v26;
  v27 = OrderedSet.init()(a2);
  v29 = v28;
  v30 = static Array._allocateUninitialized(_:)();
  v31 = MEMORY[0x266772110](v30, a3);
  v58 = v27;
  v59 = v29;
  v60 = v31;
  v32 = AssociatedConformanceWitness;
  v33 = dispatch thunk of Sequence.underestimatedCount.getter();
  type metadata accessor for OrderedDictionary();
  OrderedDictionary.reserveCapacity(_:)(v33);
  (*(v51 + 2))(v50, v32, a4);
  dispatch thunk of Sequence.makeIterator()();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  dispatch thunk of IteratorProtocol.next()();
  v34 = TupleTypeMetadata2;
  v35 = *(TupleTypeMetadata2 - 8);
  v36 = *(v35 + 48);
  v50 = (v35 + 48);
  v51 = v36;
  if (v36(v21, 1, TupleTypeMetadata2) == 1)
  {
LABEL_5:
    (*(v45 + 8))(v56, AssociatedTypeWitness);
    return v58;
  }

  else
  {
    v37 = *(v54 + 32);
    v48 = (v44 + 32);
    v49 = v37;
    v47 = (v44 + 16);
    v38 = (v44 + 8);
    v54 += 32;
    v39 = (v54 - 24);
    while (1)
    {
      v40 = *(v34 + 48);
      v49(v17, v21, a2);
      (*v48)(v12, &v21[v40], a3);
      v41 = type metadata accessor for OrderedSet();
      result = OrderedSet._append(_:)(v17, v41);
      if ((result & 1) == 0)
      {
        break;
      }

      (*v47)(v53, v12, a3);
      type metadata accessor for ContiguousArray();
      ContiguousArray.append(_:)();
      (*v38)(v12, a3);
      (*v39)(v17, a2);
      dispatch thunk of IteratorProtocol.next()();
      if (v51(v21, 1, v34) == 1)
      {
        goto LABEL_5;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t specialized OrderedDictionary.init<A>(_uncheckedUniqueKeysWithValues:)(char *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v73 = a1;
  v58 = *(a3 - 8);
  v8 = *(v58 + 64);
  MEMORY[0x28223BE20](a1);
  v65 = &v55 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v63 = &v55 - v11;
  v56 = *(v12 - 8);
  v13 = *(v56 + 64);
  MEMORY[0x28223BE20](v14);
  v62 = &v55 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = v16;
  v72 = v16;
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v71 = type metadata accessor for Optional();
  v68 = *(v71 - 8);
  v19 = *(v68 + 64);
  MEMORY[0x28223BE20](v71);
  v70 = &v55 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v21);
  v23 = &v55 - v22;
  v69 = *(a4 - 8);
  v24 = *(v69 + 64);
  MEMORY[0x28223BE20](v25);
  v67 = &v55 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = a4;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v57 = *(AssociatedTypeWitness - 8);
  v28 = *(v57 + 64);
  MEMORY[0x28223BE20](AssociatedTypeWitness);
  v30 = &v55 - v29;
  v31 = OrderedSet.init()(v17);
  v33 = v32;
  v34 = a3;
  v35 = static Array._allocateUninitialized(_:)();
  v36 = MEMORY[0x266772110](v35, a3);
  v75 = v31;
  v76 = v33;
  v77 = v36;
  v37 = v73;
  v38 = dispatch thunk of Sequence.underestimatedCount.getter();
  v64 = v34;
  v66 = a5;
  type metadata accessor for OrderedDictionary();
  OrderedDictionary.reserveCapacity(_:)(v38);
  (*(v69 + 16))(v67, v37, v27);
  v73 = v30;
  dispatch thunk of Sequence.makeIterator()();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v68 += 32;
  v69 = AssociatedConformanceWitness;
  v67 = (TupleTypeMetadata2 - 8);
  v60 = (v58 + 32);
  v61 = (v56 + 32);
  v59 = (v58 + 16);
  v40 = (v58 + 8);
  v41 = (v56 + 8);
  for (i = v62; ; (*v41)(i, v53))
  {
    v43 = v70;
    dispatch thunk of IteratorProtocol.next()();
    (*v68)(v23, v43, v71);
    if ((*(*(TupleTypeMetadata2 - 8) + 48))(v23, 1, TupleTypeMetadata2) == 1)
    {
      break;
    }

    v44 = *(TupleTypeMetadata2 + 48);
    v45 = TupleTypeMetadata2;
    v46 = v72;
    (*v61)(i, v23, v72);
    v47 = &v23[v44];
    v48 = v63;
    v49 = v23;
    v50 = v64;
    (*v60)(v63, v47, v64);
    v51 = type metadata accessor for OrderedSet();
    OrderedSet._appendNew(_:)(i, v51);
    (*v59)(v65, v48, v50);
    type metadata accessor for ContiguousArray();
    ContiguousArray.append(_:)();
    v52 = v50;
    v23 = v49;
    (*v40)(v48, v52);
    v53 = v46;
    TupleTypeMetadata2 = v45;
  }

  (*(v57 + 8))(v73, AssociatedTypeWitness);
  return v75;
}

uint64_t partial apply for closure #1 in OrderedDictionary.init<A>(uncheckedUniqueKeysWithValues:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2[4];
  v4 = v2[5];
  v5 = v2[6];
  return closure #1 in OrderedDictionary.init<A>(uncheckedUniqueKeysWithValues:)(a1, v2[2], v2[3], a2);
}

uint64_t partial apply for implicit closure #1 in OrderedDictionary.init<A>(_grouping:by:)()
{
  v1 = *(v0 + 48);
  v2 = *(v0 + 24);
  return dispatch thunk of RangeReplaceableCollection.init()();
}

uint64_t Input.spec.getter()
{
  v2 = v0[2];
  v1 = v0[3];
  v3 = v0[1];

  return v2;
}

uint64_t OutputSpec.label.setter(uint64_t a1, uint64_t a2)
{
  v5 = v2[1];

  *v2 = a1;
  v2[1] = a2;
  return result;
}

uint64_t OutputSpec.type.setter(uint64_t a1)
{
  v3 = *(v1 + 16);

  *(v1 + 16) = a1;
  return result;
}

uint64_t static InputSpec.== infix(_:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  if (a1 == a4 && a2 == a5 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {
    return (*(*a3 + 128))(a6) & 1;
  }

  else
  {
    return 0;
  }
}

Swift::Int InputSpec.hashValue.getter(uint64_t a1, uint64_t a2, uint64_t a3)
{
  Hasher.init(_seed:)();
  String.hash(into:)();
  (*(*a3 + 120))(v5);
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance InputSpec()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  Hasher.init(_seed:)();
  String.hash(into:)();
  (*(*v3 + 120))(v5);
  return Hasher._finalize()();
}

uint64_t protocol witness for Hashable.hash(into:) in conformance InputSpec(uint64_t a1)
{
  v3 = *v1;
  v4 = v1[1];
  v5 = v1[2];
  String.hash(into:)();
  return (*(*v5 + 120))(a1);
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance InputSpec()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  Hasher.init(_seed:)();
  String.hash(into:)();
  (*(*v3 + 120))(v5);
  return Hasher._finalize()();
}

uint64_t protocol witness for static Equatable.== infix(_:_:) in conformance InputSpec(void *a1, void *a2)
{
  v2 = a1[2];
  v3 = a2[2];
  v4 = *a1 == *a2 && a1[1] == a2[1];
  if (v4 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {
    return (*(*v2 + 128))(v3) & 1;
  }

  else
  {
    return 0;
  }
}

unint64_t lazy protocol witness table accessor for type InputSpec and conformance InputSpec()
{
  result = lazy protocol witness table cache variable for type InputSpec and conformance InputSpec;
  if (!lazy protocol witness table cache variable for type InputSpec and conformance InputSpec)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type InputSpec and conformance InputSpec);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type OutputSpec and conformance OutputSpec()
{
  result = lazy protocol witness table cache variable for type OutputSpec and conformance OutputSpec;
  if (!lazy protocol witness table cache variable for type OutputSpec and conformance OutputSpec)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type OutputSpec and conformance OutputSpec);
  }

  return result;
}

uint64_t toSIMDMat2fCols(_:)()
{
  result = NSArray.validateExactCount(_:)(2);
  if (!v0)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySfGMd, &_sSaySfGMR);
    static Array._conditionallyBridgeFromObjectiveC(_:result:)();
    lazy protocol witness table accessor for type SGInternalError and conformance SGInternalError();
    swift_allocError();
    *v2 = xmmword_265F28600;
    *(v2 + 16) = xmmword_265F28610;
    *(v2 + 32) = 0x4000000000000000;
    *(v2 + 64) = 0;
    *(v2 + 72) = 0;
    return swift_willThrow();
  }

  return result;
}

uint64_t toSIMDMat3fCols(_:)()
{
  result = NSArray.validateExactCount(_:)(3);
  if (!v0)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySfGMd, &_sSaySfGMR);
    static Array._conditionallyBridgeFromObjectiveC(_:result:)();
    lazy protocol witness table accessor for type SGInternalError and conformance SGInternalError();
    swift_allocError();
    *v2 = xmmword_265F28600;
    *(v2 + 16) = xmmword_265F28610;
    *(v2 + 32) = 0x4000000000000000;
    *(v2 + 64) = 0;
    *(v2 + 72) = 0;
    return swift_willThrow();
  }

  return result;
}

uint64_t toSIMDMat4fCols(_:)()
{
  result = NSArray.validateExactCount(_:)(4);
  if (!v0)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySfGMd, &_sSaySfGMR);
    static Array._conditionallyBridgeFromObjectiveC(_:result:)();
    lazy protocol witness table accessor for type SGInternalError and conformance SGInternalError();
    swift_allocError();
    *v2 = xmmword_265F28600;
    *(v2 + 16) = xmmword_265F28610;
    *(v2 + 32) = 0x4000000000000000;
    *(v2 + 64) = 0;
    *(v2 + 72) = 0;
    return swift_willThrow();
  }

  return result;
}

uint64_t toSIMD2i(_:)()
{
  result = NSArray.attemptCastToFloatArray(withLength:)(2, xmmword_265F28620);
  if (!v0)
  {
    _ss4SIMDPsEyxqd__cSTRd__7ElementQyd__6ScalarRtzlufCs5SIMD2Vys5Int32VG_SayAJGTt1g5Tf4g_n(result);
  }

  return result;
}

__n128 toSIMD3i(_:)(uint64_t a1, uint64_t a2, double (*a3)(void))
{
  NSArray.attemptCastToFloatArray(withLength:)(a2, xmmword_265F28620);
  if (!v3)
  {
    *&v6 = a3();
    v7 = v6;

    return v7;
  }

  return result;
}

uint64_t toSIMD2f(_:)()
{
  result = NSArray.attemptCastToFloatArray(withLength:)(2, xmmword_265F28630);
  if (!v0)
  {
    _ss4SIMDPsEyxqd__cSTRd__7ElementQyd__6ScalarRtzlufCs5SIMD2Vys5Int32VG_SayAJGTt1g5Tf4g_n(result);
  }

  return result;
}

uint64_t toSIMD2h(_:)()
{
  result = NSArray.attemptCastToFloatArray(withLength:)(2, xmmword_265F28640);
  if (!v0)
  {
    v2 = _ss4SIMDPsEyxqd__cSTRd__7ElementQyd__6ScalarRtzlufCs5SIMD2Vys6UInt16VG_SayAJGTt1g5Tf4g_n(result);

    return v2;
  }

  return result;
}

__n128 toSIMD4f(_:)(uint64_t a1, uint64_t a2, double (*a3)(void))
{
  NSArray.attemptCastToFloatArray(withLength:)(a2, xmmword_265F28630);
  if (!v3)
  {
    *&v6 = a3();
    v7 = v6;

    return v7;
  }

  return result;
}

uint64_t toSIMD3h(_:)(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  result = NSArray.attemptCastToFloatArray(withLength:)(a2, xmmword_265F28640);
  if (!v3)
  {
    a3();
  }

  return result;
}

uint64_t NSArray.validateExactCount(_:)(uint64_t a1)
{
  result = [v1 count];
  if (result != a1)
  {
    if (a1 < 0)
    {
      __break(1u);
    }

    else
    {
      result = [v1 count];
      if ((result & 0x8000000000000000) == 0)
      {
        v4 = result;
        lazy protocol witness table accessor for type SGInternalError and conformance SGInternalError();
        swift_allocError();
        *v5 = a1;
        v5[1] = v4;
        v5[4] = 0x6000000000000000;
        v5[8] = 0;
        v5[9] = 0;
        return swift_willThrow();
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t NSArray.attemptCastToFloatArray(withLength:)(uint64_t a1, __n128 a2)
{
  result = NSArray.validateExactCount(_:)(a1);
  if (!v2)
  {
    static Array._conditionallyBridgeFromObjectiveC(_:result:)();
    lazy protocol witness table accessor for type SGInternalError and conformance SGInternalError();
    swift_allocError();
    *v4 = xmmword_265F28600;
    *(v4 + 16) = a2;
    *(v4 + 32) = 0x4000000000000000;
    *(v4 + 64) = 0;
    *(v4 + 72) = 0;
    return swift_willThrow();
  }

  return result;
}

uint64_t _ss4SIMDPsEyxqd__cSTRd__7ElementQyd__6ScalarRtzlufCs5SIMD2Vys5Int32VG_SayAJGTt1g5Tf4g_n(uint64_t result)
{
  v1 = *(result + 16);
  if (v1)
  {
    if ((v1 - 1) > 1)
    {
      __break(1u);
    }

    else
    {
      v2 = *(result + 32);
      if (v1 != 1)
      {
        v3 = *(result + 36);
        return result;
      }
    }
  }

  __break(1u);
  return result;
}

uint64_t _ss4SIMDPsEyxqd__cSTRd__7ElementQyd__6ScalarRtzlufCs5SIMD3Vys5Int32VG_SayAJGTt1g5Tf4g_n(uint64_t result)
{
  v1 = *(result + 16);
  if (!v1)
  {
    goto LABEL_9;
  }

  if ((v1 - 1) > 2)
  {
    __break(1u);
LABEL_9:
    __break(1u);
    return result;
  }

  v2 = *(result + 32);
  if (v1 != 1)
  {
    v3 = *(result + 36);
    if (v1 != 2)
    {
      v4 = *(result + 40);
    }
  }

  if (v1 != 3)
  {
    goto LABEL_9;
  }

  return result;
}

uint64_t _ss4SIMDPsEyxqd__cSTRd__7ElementQyd__6ScalarRtzlufCs5SIMD4Vys5Int32VG_SayAJGTt1g5Tf4g_n(uint64_t result)
{
  v1 = *(result + 16);
  if (!v1)
  {
    goto LABEL_10;
  }

  if ((v1 - 1) > 3)
  {
    __break(1u);
LABEL_10:
    __break(1u);
    return result;
  }

  v2 = *(result + 32);
  if (v1 != 1)
  {
    v3 = *(result + 36);
    if (v1 != 2)
    {
      v4 = *(result + 40);
      if (v1 != 3)
      {
        v5 = *(result + 44);
      }
    }
  }

  if (v1 != 4)
  {
    goto LABEL_10;
  }

  return result;
}

uint64_t _ss4SIMDPsEyxqd__cSTRd__7ElementQyd__6ScalarRtzlufCs5SIMD3VySfG_s10ArraySliceVySfGTt1g5Tf4gX_n(uint64_t result, uint64_t a2, unint64_t a3)
{
  if (a3 >> 1 == a2)
  {
    goto LABEL_10;
  }

  if ((a3 >> 1) <= a2)
  {
    __break(1u);
    goto LABEL_9;
  }

  v3 = (a3 >> 1) + ~a2;
  if (v3 > 2)
  {
LABEL_9:
    __break(1u);
LABEL_10:
    __break(1u);
    return result;
  }

  v4 = 0;
  v5 = 0uLL;
  do
  {
    v6 = *(result + 4 * a2 + 4 * v4);
    v7 = v5;
    *(&v7 & 0xFFFFFFFFFFFFFFF3 | (4 * (v4 & 3))) = v6;
    v5 = v7;
    ++v4;
  }

  while ((a3 >> 1) - a2 != v4);
  if (v3 != 2)
  {
    goto LABEL_10;
  }

  return result;
}

uint64_t _ss4SIMDPsEyxqd__cSTRd__7ElementQyd__6ScalarRtzlufCs5SIMD4VySfG_s10ArraySliceVySfGTt1g5Tf4gX_n(uint64_t result, uint64_t a2, unint64_t a3)
{
  if (a3 >> 1 == a2)
  {
    goto LABEL_10;
  }

  if ((a3 >> 1) <= a2)
  {
    __break(1u);
    goto LABEL_9;
  }

  v3 = (a3 >> 1) + ~a2;
  if (v3 > 3)
  {
LABEL_9:
    __break(1u);
LABEL_10:
    __break(1u);
    return result;
  }

  v4 = 0;
  v5 = 0uLL;
  do
  {
    v6 = *(result + 4 * a2 + 4 * v4);
    v7 = v5;
    *(&v7 & 0xFFFFFFFFFFFFFFF3 | (4 * (v4 & 3))) = v6;
    v5 = v7;
    ++v4;
  }

  while ((a3 >> 1) - a2 != v4);
  if (v3 != 3)
  {
    goto LABEL_10;
  }

  return result;
}

uint64_t _ss4SIMDPsEyxqd__cSTRd__7ElementQyd__6ScalarRtzlufCs5SIMD2Vys6UInt16VG_SayAJGTt1g5Tf4g_n(uint64_t result)
{
  v1 = *(result + 16);
  if (v1)
  {
    if ((v1 - 1) > 1)
    {
      __break(1u);
    }

    else if (v1 != 1)
    {
      return *(result + 32);
    }
  }

  __break(1u);
  return result;
}

uint64_t _ss4SIMDPsEyxqd__cSTRd__7ElementQyd__6ScalarRtzlufCs5SIMD3Vys6UInt16VG_SayAJGTt1g5Tf4g_n(uint64_t result)
{
  v1 = *(result + 16);
  if (!v1)
  {
    goto LABEL_9;
  }

  if ((v1 - 1) > 2)
  {
    __break(1u);
LABEL_9:
    __break(1u);
    return result;
  }

  v2 = *(result + 32);
  if (v1 != 1)
  {
    v3 = *(result + 34);
    if (v1 != 2)
    {
      v4 = *(result + 36);
    }
  }

  if (v1 != 3)
  {
    goto LABEL_9;
  }

  return result;
}

uint64_t _ss4SIMDPsEyxqd__cSTRd__7ElementQyd__6ScalarRtzlufCs5SIMD4Vys6UInt16VG_SayAJGTt1g5Tf4g_n(uint64_t result)
{
  v1 = *(result + 16);
  if (!v1)
  {
    goto LABEL_10;
  }

  if ((v1 - 1) > 3)
  {
    __break(1u);
LABEL_10:
    __break(1u);
    return result;
  }

  v2 = *(result + 32);
  if (v1 != 1)
  {
    v3 = *(result + 34);
    if (v1 != 2)
    {
      v4 = *(result + 36);
      if (v1 != 3)
      {
        v5 = *(result + 38);
      }
    }
  }

  if (v1 != 4)
  {
    goto LABEL_10;
  }

  return result;
}

uint64_t OrderedDictionary<>.hash(into:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v49 = a8;
  v15 = *(a6 - 8);
  v16 = *(v15 + 64);
  MEMORY[0x28223BE20](a1);
  v44 = v39 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v40 = *(v18 - 8);
  v19 = *(v40 + 64);
  MEMORY[0x28223BE20](v20);
  v43 = v39 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v54 = type metadata accessor for Optional();
  v51 = *(v54 - 8);
  v23 = *(v51 + 64);
  MEMORY[0x28223BE20](v54);
  v53 = v39 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v25);
  v27 = v39 - v26;
  v28 = ContiguousArray.count.getter();
  v45 = a1;
  MEMORY[0x266772770](v28);
  v55 = a2;
  v56 = a3;
  v57 = a4;
  v58 = 0;
  v46 = a5;
  v47 = a6;
  v48 = a7;
  v29 = type metadata accessor for OrderedDictionary.Iterator();
  v51 += 32;
  v52 = v29;
  v50 = TupleTypeMetadata2 - 8;
  v41 = (v15 + 32);
  v42 = (v40 + 32);
  v30 = (v15 + 8);
  v31 = (v40 + 8);
  v40 = a2;

  v39[1] = a3;

  v39[0] = a4;

  v32 = v43;
  v33 = v44;
  v34 = v47;
  while (1)
  {
    v35 = v53;
    OrderedDictionary.Iterator.next()(v52, v53);
    (*v51)(v27, v35, v54);
    if ((*(*(TupleTypeMetadata2 - 8) + 48))(v27, 1, TupleTypeMetadata2) == 1)
    {
      break;
    }

    v36 = *(TupleTypeMetadata2 + 48);
    v37 = v46;
    (*v42)(v32, v27, v46);
    (*v41)(v33, &v27[v36], v34);
    dispatch thunk of Hashable.hash(into:)();
    dispatch thunk of Hashable.hash(into:)();
    (*v30)(v33, v34);
    (*v31)(v32, v37);
  }
}

Swift::Int OrderedDictionary<>.hashValue.getter(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  Hasher.init(_seed:)();
  OrderedDictionary<>.hash(into:)(v15, a1, a2, a3, a4, a5, a6, a7);
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance <> OrderedDictionary<A, B>(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  v5 = *(a3 - 8);
  Hasher.init(_seed:)();
  OrderedDictionary<>.hash(into:)(v7, *v3, v3[1], v3[2], a2[2], a2[3], a2[4], v5);
  return Hasher._finalize()();
}

uint64_t FunctionNodeID.description.getter()
{
  v0 = dispatch thunk of CustomStringConvertible.description.getter();
  MEMORY[0x266771550](v0);

  return 25705;
}

Swift::Int FunctionNodeID.hashValue.getter(uint64_t a1)
{
  Hasher.init(_seed:)();
  MEMORY[0x266772770](a1);
  return Hasher._finalize()();
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance FunctionNodeID()
{
  v3 = *v0;
  v1 = dispatch thunk of CustomStringConvertible.description.getter();
  MEMORY[0x266771550](v1);

  return 25705;
}

uint64_t MetalFunctionNode.setInputs(_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a1 + 16);
  v4 = MEMORY[0x277D84F90];
  if (v3)
  {
    v6 = a3;
    v17 = MEMORY[0x277D84F90];
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v3, 0);
    v4 = v17;
    v7 = a1 + 32;
    do
    {
      outlined init with copy of MetalFunctionNode(v7, v14);
      v8 = v15;
      v9 = v16;
      __swift_project_boxed_opaque_existential_1(v14, v15);
      v10 = (*(v9 + 24))(v8, v9);
      __swift_destroy_boxed_opaque_existential_1Tm(v14);
      v17 = v4;
      v12 = *(v4 + 16);
      v11 = *(v4 + 24);
      if (v12 >= v11 >> 1)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v11 > 1), v12 + 1, 1);
        v4 = v17;
      }

      *(v4 + 16) = v12 + 1;
      *(v4 + 8 * v12 + 32) = v10;
      v7 += 40;
      --v3;
    }

    while (v3);
    a3 = v6;
  }

  return (*(a3 + 56))(v4);
}

ShaderGraph::NodeDefStore __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> NodeDefStore.including(_:)(Swift::OpaquePointer a1)
{
  v5 = v4;
  v6 = v3;
  v7 = v2;
  v8 = v1;
  v14 = v2;
  swift_bridgeObjectRetain_n();

  specialized Sequence.forEach(_:)(a1._rawValue, v7, &v14);

  v10 = v14;
  if (v5)
  {
  }

  else
  {
  }

  v11 = v8;
  v12 = v10;
  v13 = v6;
  result.implementations._rawValue = v13;
  result.geomPropDefs._rawValue = v12;
  result.nodeDefs._rawValue = v11;
  return result;
}

uint64_t SGGeometryPropertyDefinition.name.getter()
{
  v1 = *(v0 + OBJC_IVAR___SGGeometryPropertyDefinition_name);
  v2 = *(v0 + OBJC_IVAR___SGGeometryPropertyDefinition_name + 8);

  return v1;
}

uint64_t static SGGeometryPropertyDefinition.create(name:mappingTo:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a2)
  {
    if (a4)
    {
      v5 = *(v4 + 104);

      return v5(a1, a2, a3, a4);
    }

    v11 = 0x8000000265F334B0;
    v12 = 0xD000000000000016;
  }

  else
  {
    v11 = 0xE400000000000000;
    v12 = 1701667182;
  }

  lazy protocol witness table accessor for type APIError and conformance APIError();
  v13 = swift_allocError();
  *v14 = v12;
  *(v14 + 8) = v11;
  *(v14 + 16) = 1;
  swift_willThrow();
  if (one-time initialization token for logger != -1)
  {
    swift_once();
  }

  v15 = type metadata accessor for Logger();
  __swift_project_value_buffer(v15, logger);
  v16 = static os_log_type_t.error.getter();
  v17 = v13;
  v18 = Logger.logObject.getter();

  if (os_log_type_enabled(v18, v16))
  {
    v19 = swift_slowAlloc();
    v20 = swift_slowAlloc();
    v25 = v20;
    *v19 = 136315138;
    v21 = v13;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
    v22 = String.init<A>(describing:)();
    v24 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v22, v23, &v25);

    *(v19 + 4) = v24;
    _os_log_impl(&dword_265D7D000, v18, v16, "%s", v19, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v20);
    MEMORY[0x266773120](v20, -1, -1);
    MEMORY[0x266773120](v19, -1, -1);
  }

  else
  {
  }

  return 0;
}

uint64_t SGGeometryPropertyDefinition.referencedGeomPropName.getter()
{
  v1 = *(v0 + OBJC_IVAR___SGGeometryPropertyDefinition_referencedGeomPropName);
  v2 = *(v0 + OBJC_IVAR___SGGeometryPropertyDefinition_referencedGeomPropName + 8);

  return v1;
}

id SGGeometryPropertyDefinition.__allocating_init(name:referencedGeomPropName:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = objc_allocWithZone(v4);
  v10 = &v9[OBJC_IVAR___SGGeometryPropertyDefinition_referencedGeomPropName];
  *v10 = a3;
  *(v10 + 1) = a4;
  v11 = &v9[OBJC_IVAR___SGGeometryPropertyDefinition_name];
  *v11 = a1;
  *(v11 + 1) = a2;
  v13.receiver = v9;
  v13.super_class = v4;
  return objc_msgSendSuper2(&v13, sel_init);
}

id SGGeometryPropertyDefinition.init(name:referencedGeomPropName:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = &v4[OBJC_IVAR___SGGeometryPropertyDefinition_referencedGeomPropName];
  *v5 = a3;
  *(v5 + 1) = a4;
  v6 = &v4[OBJC_IVAR___SGGeometryPropertyDefinition_name];
  *v6 = a1;
  *(v6 + 1) = a2;
  v8.receiver = v4;
  v8.super_class = type metadata accessor for SGGeometryPropertyDefinition();
  return objc_msgSendSuper2(&v8, sel_init);
}

unint64_t SGGeometryPropertyDefinition.description.getter()
{
  v1 = v0;
  _StringGuts.grow(_:)(44);

  MEMORY[0x266771550](*(v1 + OBJC_IVAR___SGGeometryPropertyDefinition_name), *(v1 + OBJC_IVAR___SGGeometryPropertyDefinition_name + 8));
  MEMORY[0x266771550](0x22203E2D2D2022, 0xE700000000000000);
  MEMORY[0x266771550](*(v1 + OBJC_IVAR___SGGeometryPropertyDefinition_referencedGeomPropName), *(v1 + OBJC_IVAR___SGGeometryPropertyDefinition_referencedGeomPropName + 8));
  MEMORY[0x266771550](15906, 0xE200000000000000);
  return 0xD00000000000001FLL;
}

Swift::Int SGGeometryPropertyDefinition.CodingKey.hashValue.getter(char a1)
{
  Hasher.init(_seed:)();
  MEMORY[0x266772770](a1 & 1);
  return Hasher._finalize()();
}

uint64_t SGGeometryPropertyDefinition.CodingKey.stringValue.getter(char a1)
{
  if (a1)
  {
    return 0xD000000000000016;
  }

  else
  {
    return 1701667182;
  }
}

unint64_t protocol witness for CodingKey.stringValue.getter in conformance SGGeometryPropertyDefinition.CodingKey()
{
  if (*v0)
  {
    result = 0xD000000000000016;
  }

  else
  {
    result = 1701667182;
  }

  *v0;
  return result;
}

uint64_t protocol witness for CodingKey.init(stringValue:) in conformance SGGeometryPropertyDefinition.CodingKey@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = specialized SGGeometryPropertyDefinition.CodingKey.init(stringValue:)(a1, a2);
  *a3 = result;
  return result;
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance SGGeometryPropertyDefinition.CodingKey(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type SGGeometryPropertyDefinition.CodingKey and conformance SGGeometryPropertyDefinition.CodingKey();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance SGGeometryPropertyDefinition.CodingKey(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type SGGeometryPropertyDefinition.CodingKey and conformance SGGeometryPropertyDefinition.CodingKey();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t SGGeometryPropertyDefinition.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy11ShaderGraph28SGGeometryPropertyDefinitionC9CodingKeyOGMd, &_ss22KeyedEncodingContainerVy11ShaderGraph28SGGeometryPropertyDefinitionC9CodingKeyOGMR);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v16[-v8];
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type SGGeometryPropertyDefinition.CodingKey and conformance SGGeometryPropertyDefinition.CodingKey();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v11 = *(v3 + OBJC_IVAR___SGGeometryPropertyDefinition_name);
  v12 = *(v3 + OBJC_IVAR___SGGeometryPropertyDefinition_name + 8);
  v16[15] = 0;
  KeyedEncodingContainer.encode(_:forKey:)();
  if (!v2)
  {
    v14 = *(v3 + OBJC_IVAR___SGGeometryPropertyDefinition_referencedGeomPropName);
    v15 = *(v3 + OBJC_IVAR___SGGeometryPropertyDefinition_referencedGeomPropName + 8);
    v16[14] = 1;
    KeyedEncodingContainer.encode(_:forKey:)();
  }

  return (*(v6 + 8))(v9, v5);
}

id SGGeometryPropertyDefinition.init(from:)(uint64_t *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy11ShaderGraph28SGGeometryPropertyDefinitionC9CodingKeyOGMd, &_ss22KeyedDecodingContainerVy11ShaderGraph28SGGeometryPropertyDefinitionC9CodingKeyOGMR);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v20 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type SGGeometryPropertyDefinition.CodingKey and conformance SGGeometryPropertyDefinition.CodingKey();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v2)
  {
    __swift_destroy_boxed_opaque_existential_1Tm(a1);
    type metadata accessor for SGGeometryPropertyDefinition();
    swift_deallocPartialClassInstance();
  }

  else
  {
    v21 = 0;
    v11 = KeyedDecodingContainer.decode(_:forKey:)();
    v13 = &v1[OBJC_IVAR___SGGeometryPropertyDefinition_name];
    *v13 = v11;
    v13[1] = v14;
    v21 = 1;
    v15 = KeyedDecodingContainer.decode(_:forKey:)();
    v17 = v16;
    (*(v6 + 8))(v9, v5);
    v18 = &v1[OBJC_IVAR___SGGeometryPropertyDefinition_referencedGeomPropName];
    *v18 = v15;
    v18[1] = v17;
    v19 = type metadata accessor for SGGeometryPropertyDefinition();
    v20.receiver = v1;
    v20.super_class = v19;
    v3 = objc_msgSendSuper2(&v20, sel_init);
    __swift_destroy_boxed_opaque_existential_1Tm(a1);
  }

  return v3;
}

id SGGeometryPropertyDefinition.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for SGGeometryPropertyDefinition();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t protocol witness for Decodable.init(from:) in conformance SGGeometryPropertyDefinition@<X0>(uint64_t *a1@<X8>)
{
  result = (*(v1 + 120))();
  if (!v2)
  {
    *a1 = result;
  }

  return result;
}

void specialized Sequence.forEach(_:)(unint64_t a1, uint64_t isUniquelyReferenced_nonNull_native, void *a3)
{
  v5 = a1;
  if (a1 >> 62)
  {
LABEL_33:
    v6 = __CocoaSet.count.getter();
    if (v6)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v6 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v6)
    {
LABEL_3:
      v7 = 0;
      v56 = v5 & 0xFFFFFFFFFFFFFF8;
      v57 = v5 & 0xC000000000000001;
      v54 = isUniquelyReferenced_nonNull_native;
      v55 = a3;
      v53 = v5;
      do
      {
        if (v57)
        {
          v14 = MEMORY[0x266772030](v7, v5);
        }

        else
        {
          if (v7 >= *(v56 + 16))
          {
            goto LABEL_30;
          }

          v14 = *(v5 + 8 * v7 + 32);
        }

        v15 = v14;
        if (__OFADD__(v7, 1))
        {
          __break(1u);
LABEL_30:
          __break(1u);
LABEL_31:
          __break(1u);
LABEL_32:
          __break(1u);
          goto LABEL_33;
        }

        v17 = *&v14[OBJC_IVAR___SGGeometryPropertyDefinition_referencedGeomPropName];
        v16 = *&v14[OBJC_IVAR___SGGeometryPropertyDefinition_referencedGeomPropName + 8];
        v18 = *(isUniquelyReferenced_nonNull_native + 16);

        if (!v18 || (v19 = specialized __RawDictionaryStorage.find<A>(_:)(v17, v16), (v20 & 1) == 0))
        {
          lazy protocol witness table accessor for type UserGraphError and conformance UserGraphError();
          swift_allocError();
          *v51 = 30;
          *(v51 + 8) = v17;
          *(v51 + 16) = v16;
          swift_willThrow();

          return;
        }

        v21 = v19;

        v22 = (*(isUniquelyReferenced_nonNull_native + 56) + (v21 << 6));
        v23 = *v22;
        v24 = v22[1];
        v25 = v22[2];
        *&v66[9] = *(v22 + 41);
        v65 = v24;
        *v66 = v25;
        v64 = v23;
        v61 = v15;
        v26 = &v15[OBJC_IVAR___SGGeometryPropertyDefinition_name];
        if (*(*a3 + 16))
        {
          v28 = *v26;
          v27 = v26[1];
          outlined init with copy of GeomPropDef(&v64, v62);

          specialized __RawDictionaryStorage.find<A>(_:)(v28, v27);
          LOBYTE(v27) = v29;

          if (v27)
          {
            outlined destroy of GeomPropDef(&v64);

            v13 = v7 + 1;
            goto LABEL_6;
          }
        }

        else
        {
          outlined init with copy of GeomPropDef(&v64, v62);
        }

        v31 = *v26;
        v30 = v26[1];
        v32 = v65;
        v33 = *v66;
        v34 = v66[8];
        v60 = *&v66[16];
        LOBYTE(v62[0]) = v66[8];
        v58 = v66[24];
        v59 = v66[9];
        LOBYTE(v67) = v66[24];
        swift_bridgeObjectRetain_n();

        v35 = v33;
        v36 = v34;
        outlined copy of GeomPropDef.GeomProp(*(&v32 + 1), v33, v34);
        v37 = *a3;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v67 = *a3;
        v38 = v67;
        *a3 = 0x8000000000000000;
        v39 = v31;
        v5 = specialized __RawDictionaryStorage.find<A>(_:)(v31, v30);
        v41 = v38[2];
        v42 = (v40 & 1) == 0;
        v43 = v41 + v42;
        if (__OFADD__(v41, v42))
        {
          goto LABEL_31;
        }

        a3 = v40;
        if (v38[3] >= v43)
        {
          if ((isUniquelyReferenced_nonNull_native & 1) == 0)
          {
            specialized _NativeDictionary.copy()();
          }
        }

        else
        {
          specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v43, isUniquelyReferenced_nonNull_native);
          v44 = specialized __RawDictionaryStorage.find<A>(_:)(v39, v30);
          if ((a3 & 1) != (v45 & 1))
          {
            KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
            __break(1u);
            return;
          }

          v5 = v44;
        }

        if (a3)
        {
          v8 = v67;
          v9 = v67[7] + (v5 << 6);
          v11 = *(v9 + 16);
          v10 = *(v9 + 32);
          v12 = *v9;
          *&v63[9] = *(v9 + 41);
          v62[1] = v11;
          *v63 = v10;
          v62[0] = v12;
          *v9 = v39;
          *(v9 + 8) = v30;
          *(v9 + 16) = v32;
          *(v9 + 32) = v35;
          *(v9 + 40) = v36;
          *(v9 + 41) = v59;
          *(v9 + 48) = v60;
          *(v9 + 56) = v58;
          outlined destroy of GeomPropDef(v62);
        }

        else
        {
          v8 = v67;
          v67[(v5 >> 6) + 8] |= 1 << v5;
          v46 = (v8[6] + 16 * v5);
          *v46 = v39;
          v46[1] = v30;
          v47 = v8[7] + (v5 << 6);
          *v47 = v39;
          *(v47 + 8) = v30;
          *(v47 + 16) = v32;
          *(v47 + 32) = v35;
          *(v47 + 40) = v36;
          *(v47 + 41) = v59;
          *(v47 + 48) = v60;
          *(v47 + 56) = v58;
          v48 = v8[2];
          v49 = __OFADD__(v48, 1);
          v50 = v48 + 1;
          if (v49)
          {
            goto LABEL_32;
          }

          v8[2] = v50;
        }

        a3 = v55;
        *v55 = v8;
        outlined destroy of GeomPropDef(&v64);

        v5 = v53;
        isUniquelyReferenced_nonNull_native = v54;
        v6 = v52;
        v13 = v7 + 1;
LABEL_6:
        ++v7;
      }

      while (v13 != v6);
    }
  }
}

uint64_t specialized SGGeometryPropertyDefinition.CodingKey.init(stringValue:)(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 1701667182 && a2 == 0xE400000000000000;
  if (v3 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD000000000000016 && 0x8000000265F334B0 == a2)
  {

    return 1;
  }

  else
  {
    v6 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v6)
    {
      return 1;
    }

    else
    {
      return 2;
    }
  }
}

unint64_t lazy protocol witness table accessor for type SGGeometryPropertyDefinition.CodingKey and conformance SGGeometryPropertyDefinition.CodingKey()
{
  result = lazy protocol witness table cache variable for type SGGeometryPropertyDefinition.CodingKey and conformance SGGeometryPropertyDefinition.CodingKey;
  if (!lazy protocol witness table cache variable for type SGGeometryPropertyDefinition.CodingKey and conformance SGGeometryPropertyDefinition.CodingKey)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SGGeometryPropertyDefinition.CodingKey and conformance SGGeometryPropertyDefinition.CodingKey);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type SGGeometryPropertyDefinition.CodingKey and conformance SGGeometryPropertyDefinition.CodingKey;
  if (!lazy protocol witness table cache variable for type SGGeometryPropertyDefinition.CodingKey and conformance SGGeometryPropertyDefinition.CodingKey)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SGGeometryPropertyDefinition.CodingKey and conformance SGGeometryPropertyDefinition.CodingKey);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type SGGeometryPropertyDefinition.CodingKey and conformance SGGeometryPropertyDefinition.CodingKey;
  if (!lazy protocol witness table cache variable for type SGGeometryPropertyDefinition.CodingKey and conformance SGGeometryPropertyDefinition.CodingKey)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SGGeometryPropertyDefinition.CodingKey and conformance SGGeometryPropertyDefinition.CodingKey);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type SGGeometryPropertyDefinition.CodingKey and conformance SGGeometryPropertyDefinition.CodingKey;
  if (!lazy protocol witness table cache variable for type SGGeometryPropertyDefinition.CodingKey and conformance SGGeometryPropertyDefinition.CodingKey)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SGGeometryPropertyDefinition.CodingKey and conformance SGGeometryPropertyDefinition.CodingKey);
  }

  return result;
}

Swift::String __swiftcall OrderedSet._debugTypeName()()
{
  v0 = specialized OrderedSet._debugTypeName()();
  result._object = v1;
  result._countAndFlagsBits = v0;
  return result;
}

Swift::String __swiftcall OrderedSet._debugDescription(typeName:)(Swift::String typeName)
{
  v3 = v2;
  v4 = v1;
  v5 = *(v2 - 8);
  v6 = v5[8];
  MEMORY[0x28223BE20](typeName._countAndFlagsBits);
  v8 = v25 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v11 = v25 - v10;
  v28 = v12;
  v29 = v13;

  MEMORY[0x266771550](23336, 0xE200000000000000);
  v14 = *(v4 + 16);
  if (v14)
  {
    v27 = v4;
    ContiguousArray.subscript.getter();
    v15 = v5[4];
    v15(v8, v11, v3);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyypGMd, &_ss23_ContiguousArrayStorageCyypGMR);
    v16 = swift_allocObject();
    v26 = xmmword_265F1F670;
    *(v16 + 16) = xmmword_265F1F670;
    *(v16 + 56) = v3;
    boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0((v16 + 32));
    v25[0] = v5[2];
    v25[1] = v5 + 2;
    (v25[0])(boxed_opaque_existential_0, v8, v3);
    debugPrint<A>(_:separator:terminator:to:)();

    v18 = v5[1];
    v18(v8, v3);
    if (v14 != 1)
    {
      v19 = 1;
      do
      {
        ContiguousArray.subscript.getter();
        ++v19;
        v15(v8, v11, v3);
        MEMORY[0x266771550](8236, 0xE200000000000000);
        __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyypGMd, &_ss23_ContiguousArrayStorageCyypGMR);
        v20 = swift_allocObject();
        *(v20 + 16) = v26;
        *(v20 + 56) = v3;
        v21 = __swift_allocate_boxed_opaque_existential_0((v20 + 32));
        (v25[0])(v21, v8, v3);
        debugPrint<A>(_:separator:terminator:to:)();

        v18(v8, v3);
      }

      while (v14 != v19);
    }
  }

  MEMORY[0x266771550](10589, 0xE200000000000000);
  v22 = v28;
  v23 = v29;
  result._object = v23;
  result._countAndFlagsBits = v22;
  return result;
}

uint64_t OrderedSet.debugDescription.getter()
{
  v0._countAndFlagsBits = specialized OrderedSet._debugTypeName()();
  countAndFlagsBits = OrderedSet._debugDescription(typeName:)(v0)._countAndFlagsBits;

  return countAndFlagsBits;
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance OrderedSet<A>(uint64_t a1)
{
  v2 = *(v1 + 8);
  v3 = *(a1 + 16);
  v4 = *(a1 + 24);
  return OrderedSet.debugDescription.getter();
}

uint64_t specialized OrderedSet._debugTypeName()()
{
  v0 = _typeName(_:qualified:)();
  MEMORY[0x266771550](v0);

  MEMORY[0x266771550](62, 0xE100000000000000);
  return 0x536465726564724FLL;
}

uint64_t static SGNode.create(nodeDefName:name:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (one-time initialization token for shared != -1)
  {
    v5 = a1;
    v6 = a2;
    v7 = a4;
    v8 = a3;
    swift_once();
    a1 = v5;
    a2 = v6;
    a3 = v8;
    a4 = v7;
  }

  return specialized static SGNode.create(nodeDefName:name:store:)(a1, a2, a3, a4, static BuiltInDefinitionStore.shared);
}

uint64_t SGNode.name.getter()
{
  v1 = *(v0 + OBJC_IVAR___SGNode_name);
  v2 = *(v0 + OBJC_IVAR___SGNode_name + 8);

  return v1;
}

Class @objc SGNode.inputs.getter(uint64_t a1, uint64_t a2, void *a3, void (*a4)(void))
{
  v4 = *(a1 + *a3);
  a4(0);

  v5.super.isa = Array._bridgeToObjectiveC()().super.isa;

  return v5.super.isa;
}

void SGNode.graph.setter(void *a1)
{
  swift_beginAccess();
  swift_unknownObjectWeakAssign();
}

void (*SGNode.graph.modify(uint64_t *a1))(id **a1, char a2)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  v5 = OBJC_IVAR___SGNode_graph;
  *(v3 + 32) = v1;
  *(v3 + 40) = v5;
  swift_beginAccess();
  *(v4 + 24) = swift_unknownObjectWeakLoadStrong();
  return SGInput.edge.modify;
}

char *SGNode.init(name:data:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  ObjectType = swift_getObjectType();
  swift_unknownObjectWeakInit();
  v8 = &v3[OBJC_IVAR___SGNode_name];
  *v8 = a1;
  v8[1] = a2;

  *&v3[OBJC_IVAR___SGNode_inputs] = recreateInputs(from:nodeName:)(a3, a1, a2);
  v9 = recreateOutputs(from:nodeName:)(a3, a1, a2);

  *&v3[OBJC_IVAR___SGNode_outputs] = v9;
  v10 = &v3[OBJC_IVAR___SGNode_data];
  v11 = *(a3 + 48);
  *(v10 + 2) = *(a3 + 32);
  *(v10 + 3) = v11;
  *(v10 + 4) = *(a3 + 64);
  v10[80] = *(a3 + 80);
  v12 = *(a3 + 16);
  *v10 = *a3;
  *(v10 + 1) = v12;
  outlined init with copy of NodeData(a3, v28);
  v27.receiver = v3;
  v27.super_class = ObjectType;
  v13 = objc_msgSendSuper2(&v27, sel_init);
  v14 = *&v13[OBJC_IVAR___SGNode_inputs];
  if (v14 >> 62)
  {
    goto LABEL_28;
  }

  v15 = *((v14 & 0xFFFFFFFFFFFFFF8) + 0x10);
  while (1)
  {
    v16 = v13;

    if (v15)
    {
      v17 = 0;
      while (1)
      {
        if ((v14 & 0xC000000000000001) != 0)
        {
          v13 = MEMORY[0x266772030](v17, v14);
        }

        else
        {
          if (v17 >= *((v14 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_25;
          }

          v13 = *(v14 + 8 * v17 + 32);
        }

        v18 = v13;
        v19 = v17 + 1;
        if (__OFADD__(v17, 1))
        {
          break;
        }

        swift_beginAccess();
        swift_unknownObjectWeakAssign();

        ++v17;
        if (v19 == v15)
        {
          goto LABEL_12;
        }
      }

      __break(1u);
LABEL_25:
      __break(1u);
      goto LABEL_26;
    }

LABEL_12:

    v14 = *&v16[OBJC_IVAR___SGNode_outputs];
    if (v14 >> 62)
    {
      if (v14 < 0)
      {
        v26 = *&v16[OBJC_IVAR___SGNode_outputs];
      }

      v20 = __CocoaSet.count.getter();
    }

    else
    {
      v20 = *((v14 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    if (!v20)
    {
      break;
    }

    v21 = 0;
    while (1)
    {
      if ((v14 & 0xC000000000000001) != 0)
      {
        v13 = MEMORY[0x266772030](v21, v14);
      }

      else
      {
        if (v21 >= *((v14 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_27;
        }

        v13 = *(v14 + 8 * v21 + 32);
      }

      v22 = v13;
      v23 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        break;
      }

      swift_beginAccess();
      swift_unknownObjectWeakAssign();

      ++v21;
      if (v23 == v20)
      {
        goto LABEL_23;
      }
    }

LABEL_26:
    __break(1u);
LABEL_27:
    __break(1u);
LABEL_28:
    v25 = v13;
    v15 = __CocoaSet.count.getter();
    v13 = v25;
  }

LABEL_23:

  outlined destroy of NodeData(a3);

  return v16;
}

uint64_t recreateInputs(from:nodeName:)(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a1 + 80) >> 6;
  if (v5)
  {
    if (v5 == 1)
    {
      v6 = *a1;
      v7 = OBJC_IVAR___SGGraph_inputs;
      swift_beginAccess();
      v8 = *(v6 + v7);
      if (v8 >> 62)
      {
        if (v8 < 0)
        {
          v34 = *(v6 + v7);
        }

        v9 = __CocoaSet.count.getter();
      }

      else
      {
        v9 = *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      result = MEMORY[0x277D84F90];
      if (v9)
      {
        v41 = MEMORY[0x277D84F90];

        result = specialized ContiguousArray.reserveCapacity(_:)();
        if (v9 < 0)
        {
          __break(1u);
        }

        else
        {
          v11 = 0;
          v35 = v8 & 0xC000000000000001;
          v36 = v9;
          v37 = v8;
          v38 = a2;
          do
          {
            if (v35)
            {
              v12 = MEMORY[0x266772030](v11, v8);
            }

            else
            {
              v12 = *(v8 + 8 * v11 + 32);
            }

            v13 = v12;
            ++v11;
            v14 = *&v12[OBJC_IVAR___SGInput_name];
            v15 = *&v12[OBJC_IVAR___SGInput_name + 8];
            v16 = OBJC_IVAR___SGInput_type;
            swift_beginAccess();
            v17 = *&v13[v16];
            v18 = type metadata accessor for SGInput();
            v19 = objc_allocWithZone(v18);
            swift_unknownObjectWeakInit();
            swift_unknownObjectWeakInit();
            v20 = &v19[OBJC_IVAR___SGInput_name];
            *v20 = v14;
            *(v20 + 1) = v15;
            *&v19[OBJC_IVAR___SGInput_type] = v17;
            v21 = &v19[OBJC_IVAR___SGInput_attachment];
            *v21 = v38;
            *(v21 + 1) = a3;
            v40.receiver = v19;
            v40.super_class = v18;

            objc_msgSendSuper2(&v40, sel_init);

            specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
            v22 = *(v41 + 16);
            specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
            specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
            specialized ContiguousArray._endMutation()();
            v8 = v37;
          }

          while (v36 != v11);

          return v41;
        }
      }
    }

    else
    {
      return MEMORY[0x277D84F90];
    }
  }

  else
  {
    v23 = a1[2];
    v24 = *(v23 + 16);
    result = MEMORY[0x277D84F90];
    if (v24)
    {
      v42 = MEMORY[0x277D84F90];
      specialized ContiguousArray.reserveCapacity(_:)();
      v25 = type metadata accessor for SGInput();
      v26 = (v23 + 48);
      do
      {
        v28 = *(v26 - 2);
        v27 = *(v26 - 1);
        v29 = *v26;
        v26 += 4;
        v30 = objc_allocWithZone(v25);
        swift_unknownObjectWeakInit();
        swift_unknownObjectWeakInit();
        v31 = &v30[OBJC_IVAR___SGInput_name];
        *v31 = v28;
        *(v31 + 1) = v27;
        *&v30[OBJC_IVAR___SGInput_type] = v29;
        v32 = &v30[OBJC_IVAR___SGInput_attachment];
        *v32 = a2;
        *(v32 + 1) = a3;
        v39.receiver = v30;
        v39.super_class = v25;

        objc_msgSendSuper2(&v39, sel_init);
        specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
        v33 = *(v42 + 16);
        specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
        specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        specialized ContiguousArray._endMutation()();
        --v24;
      }

      while (v24);
      return v42;
    }
  }

  return result;
}

uint64_t recreateOutputs(from:nodeName:)(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a1 + 80) >> 6;
  if (v5)
  {
    v6 = *a1;
    if (v5 == 1)
    {
      v7 = OBJC_IVAR___SGGraph_outputs;
      swift_beginAccess();
      v8 = *(v6 + v7);
      if (v8 >> 62)
      {
        if (v8 < 0)
        {
          v47 = *(v6 + v7);
        }

        v9 = __CocoaSet.count.getter();
      }

      else
      {
        v9 = *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      result = MEMORY[0x277D84F90];
      if (v9)
      {
        v55 = MEMORY[0x277D84F90];

        result = specialized ContiguousArray.reserveCapacity(_:)();
        if (v9 < 0)
        {
          __break(1u);
        }

        else
        {
          v11 = 0;
          v48 = v8 & 0xC000000000000001;
          v50 = v8;
          v51 = a2;
          v49 = v9;
          do
          {
            if (v48)
            {
              v12 = MEMORY[0x266772030](v11, v8);
            }

            else
            {
              v12 = *(v8 + 8 * v11 + 32);
            }

            v13 = v12;
            ++v11;
            v14 = *&v12[OBJC_IVAR___SGOutput_name];
            v15 = *&v12[OBJC_IVAR___SGOutput_name + 8];
            v16 = OBJC_IVAR___SGOutput_type;
            swift_beginAccess();
            v17 = *&v13[v16];
            v18 = type metadata accessor for SGOutput();
            v19 = objc_allocWithZone(v18);
            v20 = &v19[OBJC_IVAR___SGOutput_attachment];
            *v20 = 0;
            *(v20 + 1) = 0;
            v21 = &v19[OBJC_IVAR___SGOutput__edges];
            *v21 = 0;
            *(v21 + 1) = MEMORY[0x277D84F90];
            swift_unknownObjectWeakInit();
            v22 = &v19[OBJC_IVAR___SGOutput_name];
            *v22 = v14;
            *(v22 + 1) = v15;
            *&v19[OBJC_IVAR___SGOutput_type] = v17;
            swift_beginAccess();
            v23 = *(v20 + 1);
            *v20 = v51;
            *(v20 + 1) = a3;

            v53.receiver = v19;
            v53.super_class = v18;
            objc_msgSendSuper2(&v53, sel_init);

            specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
            v24 = *(v55 + 16);
            specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
            specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
            specialized ContiguousArray._endMutation()();
            v8 = v50;
          }

          while (v49 != v11);

          return v55;
        }
      }
    }

    else
    {
      v39 = type metadata accessor for SGOutput();
      v40 = objc_allocWithZone(v39);
      v41 = &v40[OBJC_IVAR___SGOutput_attachment];
      *v41 = 0;
      *(v41 + 1) = 0;
      v42 = MEMORY[0x277D84F90];
      v43 = &v40[OBJC_IVAR___SGOutput__edges];
      *v43 = 0;
      *(v43 + 1) = v42;
      swift_unknownObjectWeakInit();
      v44 = &v40[OBJC_IVAR___SGOutput_name];
      *v44 = 7632239;
      *(v44 + 1) = 0xE300000000000000;
      *&v40[OBJC_IVAR___SGOutput_type] = v6;
      swift_beginAccess();
      v45 = *(v41 + 1);
      *v41 = a2;
      *(v41 + 1) = a3;

      v56.receiver = v40;
      v56.super_class = v39;
      v46 = objc_msgSendSuper2(&v56, sel_init);
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd, &_ss23_ContiguousArrayStorageCyyXlGMR);
      result = swift_allocObject();
      *(result + 16) = xmmword_265F20CD0;
      *(result + 32) = v46;
    }
  }

  else
  {
    v25 = a1[3];
    v26 = *(v25 + 16);
    result = MEMORY[0x277D84F90];
    if (v26)
    {
      v54 = MEMORY[0x277D84F90];
      specialized ContiguousArray.reserveCapacity(_:)();
      v27 = a2;
      v28 = type metadata accessor for SGOutput();
      v29 = (v25 + 48);
      do
      {
        v31 = *(v29 - 2);
        v30 = *(v29 - 1);
        v32 = *v29;
        v29 += 3;
        v33 = objc_allocWithZone(v28);
        v34 = &v33[OBJC_IVAR___SGOutput_attachment];
        *v34 = 0;
        *(v34 + 1) = 0;
        v35 = &v33[OBJC_IVAR___SGOutput__edges];
        *v35 = 0;
        *(v35 + 1) = MEMORY[0x277D84F90];
        swift_unknownObjectWeakInit();
        v36 = &v33[OBJC_IVAR___SGOutput_name];
        *v36 = v31;
        *(v36 + 1) = v30;
        *&v33[OBJC_IVAR___SGOutput_type] = v32;
        swift_beginAccess();
        v37 = *(v34 + 1);
        *v34 = v27;
        *(v34 + 1) = a3;

        v52.receiver = v33;
        v52.super_class = v28;
        objc_msgSendSuper2(&v52, sel_init);
        specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
        v38 = *(v54 + 16);
        specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
        specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        specialized ContiguousArray._endMutation()();
        --v26;
      }

      while (v26);
      return v54;
    }
  }

  return result;
}

ShaderGraph::SGNode::CodingKeys_optional __swiftcall SGNode.CodingKeys.init(stringValue:)(Swift::String stringValue)
{
  object = stringValue._object;
  v2._countAndFlagsBits = stringValue._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&outlined read-only object #0 of SGNode.CodingKeys.init(rawValue:), v2);

  if (v3 >= 4)
  {
    return 4;
  }

  else
  {
    return v3;
  }
}

uint64_t SGNode.CodingKeys.stringValue.getter(unsigned __int8 a1)
{
  v1 = 1701667182;
  v2 = 0x7374757074756FLL;
  if (a1 != 2)
  {
    v2 = 1635017060;
  }

  if (a1)
  {
    v1 = 0x737475706E69;
  }

  if (a1 <= 1u)
  {
    return v1;
  }

  else
  {
    return v2;
  }
}

uint64_t protocol witness for static Equatable.== infix(_:_:) in conformance SGNode.CodingKeys(_BYTE *a1, _BYTE *a2)
{
  v2 = 1701667182;
  v3 = *a1;
  v4 = 0xE400000000000000;
  v5 = 0xE700000000000000;
  v6 = 0x7374757074756FLL;
  if (v3 != 2)
  {
    v6 = 1635017060;
    v5 = 0xE400000000000000;
  }

  v7 = 0x737475706E69;
  if (*a1)
  {
    v4 = 0xE600000000000000;
  }

  else
  {
    v7 = 1701667182;
  }

  if (*a1 <= 1u)
  {
    v8 = v7;
  }

  else
  {
    v8 = v6;
  }

  if (v3 <= 1)
  {
    v9 = v4;
  }

  else
  {
    v9 = v5;
  }

  v10 = 0xE400000000000000;
  v11 = 0xE700000000000000;
  v12 = 0x7374757074756FLL;
  if (*a2 != 2)
  {
    v12 = 1635017060;
    v11 = 0xE400000000000000;
  }

  if (*a2)
  {
    v2 = 0x737475706E69;
    v10 = 0xE600000000000000;
  }

  if (*a2 <= 1u)
  {
    v13 = v2;
  }

  else
  {
    v13 = v12;
  }

  if (*a2 <= 1u)
  {
    v14 = v10;
  }

  else
  {
    v14 = v11;
  }

  if (v8 == v13 && v9 == v14)
  {
    v15 = 1;
  }

  else
  {
    v15 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  return v15 & 1;
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance SGNode.CodingKeys()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t protocol witness for Hashable.hash(into:) in conformance SGNode.CodingKeys()
{
  *v0;
  *v0;
  *v0;
  String.hash(into:)();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance SGNode.CodingKeys()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

unint64_t protocol witness for RawRepresentable.init(rawValue:) in conformance SGNode.CodingKeys@<X0>(Swift::String *a1@<X0>, _BYTE *a2@<X8>)
{
  result = specialized SGNode.CodingKeys.init(rawValue:)(*a1);
  *a2 = result;
  return result;
}

void protocol witness for RawRepresentable.rawValue.getter in conformance SGNode.CodingKeys(uint64_t *a1@<X8>)
{
  v2 = 0xE400000000000000;
  v3 = 1701667182;
  v4 = 0xE700000000000000;
  v5 = 0x7374757074756FLL;
  if (*v1 != 2)
  {
    v5 = 1635017060;
    v4 = 0xE400000000000000;
  }

  if (*v1)
  {
    v3 = 0x737475706E69;
    v2 = 0xE600000000000000;
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

uint64_t protocol witness for CodingKey.stringValue.getter in conformance SGNode.CodingKeys()
{
  v1 = 1701667182;
  v2 = 0x7374757074756FLL;
  if (*v0 != 2)
  {
    v2 = 1635017060;
  }

  if (*v0)
  {
    v1 = 0x737475706E69;
  }

  if (*v0 <= 1u)
  {
    return v1;
  }

  else
  {
    return v2;
  }
}

unint64_t protocol witness for CodingKey.init(stringValue:) in conformance SGNode.CodingKeys@<X0>(Swift::String a1@<X1:X0>, _BYTE *a2@<X8>)
{
  result = specialized SGNode.CodingKeys.init(rawValue:)(a1);
  *a2 = result;
  return result;
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance SGNode.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type SGNode.CodingKeys and conformance SGNode.CodingKeys();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance SGNode.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type SGNode.CodingKeys and conformance SGNode.CodingKeys();

  return MEMORY[0x2821FE720](a1, v2);
}

char *SGNode.init(from:)(uint64_t *a1)
{
  v3 = v2;
  v4 = v1;
  ObjectType = swift_getObjectType();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy11ShaderGraph6SGNodeC10CodingKeysOGMd, &_ss22KeyedDecodingContainerVy11ShaderGraph6SGNodeC10CodingKeysOGMR);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = &v52 - v9;
  v55 = OBJC_IVAR___SGNode_graph;
  swift_unknownObjectWeakInit();
  v12 = a1[3];
  v11 = a1[4];
  v56 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v12);
  lazy protocol witness table accessor for type SGNode.CodingKeys and conformance SGNode.CodingKeys();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v2)
  {
    v14 = 0;
  }

  else
  {
    v54 = v7;
    LOBYTE(v59) = 0;
    v13 = KeyedDecodingContainer.decode(_:forKey:)();
    v19 = v18;
    v53 = v6;
    v20 = &v4[OBJC_IVAR___SGNode_name];
    *v20 = v13;
    v20[1] = v18;
    v21 = v13;

    v22._countAndFlagsBits = v21;
    v22._object = v19;
    v23._countAndFlagsBits = 1701667182;
    v23._object = 0xE400000000000000;
    validate(_:named:)(v22, v23);
    v3 = v24;
    if (!v24)
    {

      v57 = 3;
      lazy protocol witness table accessor for type NodeData and conformance NodeData();
      KeyedDecodingContainer.decode<A>(_:forKey:)();
      v52 = v10;
      v25 = v61;
      v26 = v62;
      v67[2] = v61;
      v67[3] = v62;
      v27 = v63;
      v67[4] = v63;
      v68 = v64;
      v28 = v59;
      v29 = v60;
      v67[0] = v59;
      v67[1] = v60;
      v30 = &v4[OBJC_IVAR___SGNode_data];
      v30[80] = v64;
      *(v30 + 3) = v26;
      *(v30 + 4) = v27;
      *(v30 + 1) = v29;
      *(v30 + 2) = v25;
      *v30 = v28;
      v31 = *v20;
      v32 = v20[1];
      outlined init with copy of NodeData(v67, &v59);

      v33 = recreateInputs(from:nodeName:)(v67, v31, v32);

      outlined destroy of NodeData(v67);
      *&v4[OBJC_IVAR___SGNode_inputs] = v33;
      v34 = *(v30 + 3);
      v65[2] = *(v30 + 2);
      v65[3] = v34;
      v65[4] = *(v30 + 4);
      v66 = v30[80];
      v35 = *(v30 + 1);
      v65[0] = *v30;
      v65[1] = v35;
      v36 = *v20;
      v37 = v20[1];
      outlined init with copy of NodeData(v65, &v59);

      v38 = recreateOutputs(from:nodeName:)(v65, v36, v37);

      outlined destroy of NodeData(v65);
      *&v4[OBJC_IVAR___SGNode_outputs] = v38;
      v58.receiver = v4;
      v58.super_class = ObjectType;
      v39 = objc_msgSendSuper2(&v58, sel_init);
      v40 = *&v39[OBJC_IVAR___SGNode_inputs];
      if (v40 >> 62)
      {
        goto LABEL_37;
      }

      v41 = *((v40 & 0xFFFFFFFFFFFFFF8) + 0x10);
      while (1)
      {
        v4 = v39;

        if (v41)
        {
          v42 = 0;
          ObjectType = (v40 & 0xC000000000000001);
          v55 = v40 & 0xFFFFFFFFFFFFFF8;
          while (1)
          {
            if (ObjectType)
            {
              v39 = MEMORY[0x266772030](v42, v40);
            }

            else
            {
              if (v42 >= *(v55 + 16))
              {
                goto LABEL_34;
              }

              v39 = *(v40 + 8 * v42 + 32);
            }

            v43 = v39;
            v44 = v42 + 1;
            if (__OFADD__(v42, 1))
            {
              break;
            }

            swift_beginAccess();
            swift_unknownObjectWeakAssign();

            ++v42;
            if (v44 == v41)
            {
              goto LABEL_21;
            }
          }

          __break(1u);
LABEL_34:
          __break(1u);
        }

        else
        {
LABEL_21:

          v45 = *&v4[OBJC_IVAR___SGNode_outputs];
          if (v45 >> 62)
          {
            if (v45 < 0)
            {
              v51 = *&v4[OBJC_IVAR___SGNode_outputs];
            }

            v46 = __CocoaSet.count.getter();
          }

          else
          {
            v46 = *((v45 & 0xFFFFFFFFFFFFFF8) + 0x10);
          }

          if (!v46)
          {
LABEL_32:

            (*(v54 + 8))(v52, v53);
            __swift_destroy_boxed_opaque_existential_1Tm(v56);

            return v4;
          }

          v47 = 0;
          ObjectType = (v45 & 0xC000000000000001);
          v55 = v45 & 0xFFFFFFFFFFFFFF8;
          while (1)
          {
            if (ObjectType)
            {
              v39 = MEMORY[0x266772030](v47, v45);
            }

            else
            {
              if (v47 >= *(v55 + 16))
              {
                goto LABEL_36;
              }

              v39 = *(v45 + 8 * v47 + 32);
            }

            v48 = v39;
            v49 = v47 + 1;
            if (__OFADD__(v47, 1))
            {
              break;
            }

            v40 = OBJC_IVAR___SGOutput_node;
            swift_beginAccess();
            swift_unknownObjectWeakAssign();

            ++v47;
            if (v49 == v46)
            {
              goto LABEL_32;
            }
          }
        }

        __break(1u);
LABEL_36:
        __break(1u);
LABEL_37:
        v50 = v39;
        v41 = __CocoaSet.count.getter();
        v39 = v50;
      }
    }

    (*(v54 + 8))(v10, v53);

    v14 = 1;
  }

  type metadata accessor for SGError();
  v15 = v3;
  SGError.__allocating_init(_:)(v3);
  swift_willThrow();

  __swift_destroy_boxed_opaque_existential_1Tm(v56);
  if (v14)
  {
    v16 = *&v4[OBJC_IVAR___SGNode_name + 8];
  }

  MEMORY[0x2667731C0](&v4[v55]);
  swift_deallocPartialClassInstance();
  return v4;
}

void SGNode.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy11ShaderGraph6SGNodeC10CodingKeysOGMd, &_ss22KeyedEncodingContainerVy11ShaderGraph6SGNodeC10CodingKeysOGMR);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v16[-v8];
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type SGNode.CodingKeys and conformance SGNode.CodingKeys();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v11 = *(v3 + OBJC_IVAR___SGNode_name);
  v12 = *(v3 + OBJC_IVAR___SGNode_name + 8);
  v23 = 0;
  KeyedEncodingContainer.encode(_:forKey:)();
  if (v2)
  {
    (*(v6 + 8))(v9, v5);
    type metadata accessor for SGError();
    v15 = v2;
    SGError.__allocating_init(_:)(v2);
    swift_willThrow();
  }

  else
  {
    v13 = *(v3 + OBJC_IVAR___SGNode_data + 48);
    v19 = *(v3 + OBJC_IVAR___SGNode_data + 32);
    v20 = v13;
    v21 = *(v3 + OBJC_IVAR___SGNode_data + 64);
    v22 = *(v3 + OBJC_IVAR___SGNode_data + 80);
    v14 = *(v3 + OBJC_IVAR___SGNode_data + 16);
    v17 = *(v3 + OBJC_IVAR___SGNode_data);
    v18 = v14;
    v16[15] = 3;
    lazy protocol witness table accessor for type NodeData and conformance NodeData();
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    (*(v6 + 8))(v9, v5);
  }
}

id SGNode.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id SGNode.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

char *protocol witness for Decodable.init(from:) in conformance SGNode@<X0>(uint64_t *a1@<X0>, char **a2@<X8>)
{
  v6 = objc_allocWithZone(v2);
  result = SGNode.init(from:)(a1);
  if (!v3)
  {
    *a2 = result;
  }

  return result;
}

char *static SGNode.create(_:type:name:)(void *a1, uint64_t a2, Swift::String a3)
{
  return specialized static SGNode.create(_:type:name:)(a1, a2, a3);
}

{
  return specialized static SGNode.create(_:type:name:)(a1, a2, a3);
}

char *static SGNode.create(_:name:)(char a1, uint64_t a2, void *a3)
{
  v5 = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithBool_];
  v8._countAndFlagsBits = a2;
  v8._object = a3;
  v6 = specialized static SGNode.create(_:type:name:)(v5, 1, v8);

  return v6;
}

id @objc static SGNode.create(_:type:name:)(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t (*a7)(void *, uint64_t, uint64_t, uint64_t))
{
  if (a5)
  {
    v10 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v12 = v11;
  }

  else
  {
    v10 = 0;
    v12 = 0;
  }

  v13 = a3;
  v14 = a7(a3, a4, v10, v12);

  return v14;
}

uint64_t static SGNode.createColor3(color:name:)(int a1, Swift::String a2)
{
  return static SGNode.createColor3(color:name:)(a1, a2);
}

{
  if (a2._object)
  {
    return specialized static SGNode.create(color:name:numComponents:)(a1, a2);
  }

  lazy protocol witness table accessor for type APIError and conformance APIError();
  swift_allocError();
  *v3 = xmmword_265F20CE0;
  *(v3 + 16) = 1;
  return swift_willThrow();
}

id @objc static SGNode.createColor3(color:name:)(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, void *a5)
{
  if (a4)
  {
    v7 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v9 = v8;
    v10 = a3;
    v19._countAndFlagsBits = v7;
    v19._object = v9;
    v11 = specialized static SGNode.create(color:name:numComponents:)(a3, v19);

    v16 = v11;
  }

  else
  {
    lazy protocol witness table accessor for type APIError and conformance APIError();
    v14 = swift_allocError();
    *v15 = xmmword_265F20CE0;
    *(v15 + 16) = 1;
    swift_willThrow();
    if (a5)
    {
      v12 = _convertErrorToNSError(_:)();

      v13 = v12;
      v16 = 0;
      *a5 = v12;
    }

    else
    {

      v16 = 0;
    }
  }

  return v16;
}

uint64_t SGNode.input.getter(void *a1)
{
  v2 = *(v1 + *a1);
  swift_getKeyPath();
}

uint64_t SGNode.description.getter()
{
  v1 = v0;
  v8 = 60;
  v9 = 0xE100000000000000;
  v7.receiver = v0;
  v7.super_class = swift_getObjectType();
  v2 = objc_msgSendSuper2(&v7, sel_description);
  v3 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v5 = v4;

  MEMORY[0x266771550](v3, v5);

  MEMORY[0x266771550](0x223D656D616E203ALL, 0xE800000000000000);
  MEMORY[0x266771550](*&v1[OBJC_IVAR___SGNode_name], *&v1[OBJC_IVAR___SGNode_name + 8]);
  MEMORY[0x266771550](15906, 0xE200000000000000);
  return v8;
}

unint64_t specialized SGNode.CodingKeys.init(rawValue:)(Swift::String string)
{
  object = string._object;
  v2._countAndFlagsBits = string._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&outlined read-only object #0 of SGNode.CodingKeys.init(rawValue:), v2);

  if (v3 >= 4)
  {
    return 4;
  }

  else
  {
    return v3;
  }
}

unint64_t lazy protocol witness table accessor for type SGNode.CodingKeys and conformance SGNode.CodingKeys()
{
  result = lazy protocol witness table cache variable for type SGNode.CodingKeys and conformance SGNode.CodingKeys;
  if (!lazy protocol witness table cache variable for type SGNode.CodingKeys and conformance SGNode.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SGNode.CodingKeys and conformance SGNode.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type SGNode.CodingKeys and conformance SGNode.CodingKeys;
  if (!lazy protocol witness table cache variable for type SGNode.CodingKeys and conformance SGNode.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SGNode.CodingKeys and conformance SGNode.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type SGNode.CodingKeys and conformance SGNode.CodingKeys;
  if (!lazy protocol witness table cache variable for type SGNode.CodingKeys and conformance SGNode.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SGNode.CodingKeys and conformance SGNode.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type SGNode.CodingKeys and conformance SGNode.CodingKeys;
  if (!lazy protocol witness table cache variable for type SGNode.CodingKeys and conformance SGNode.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SGNode.CodingKeys and conformance SGNode.CodingKeys);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type NodeData and conformance NodeData()
{
  result = lazy protocol witness table cache variable for type NodeData and conformance NodeData;
  if (!lazy protocol witness table cache variable for type NodeData and conformance NodeData)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type NodeData and conformance NodeData);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type NodeData and conformance NodeData;
  if (!lazy protocol witness table cache variable for type NodeData and conformance NodeData)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type NodeData and conformance NodeData);
  }

  return result;
}

char *specialized static SGNode.create(_:type:name:)(void *a1, uint64_t a2, Swift::String _)
{
  if (!a1)
  {
    lazy protocol witness table accessor for type APIError and conformance APIError();
    v10 = swift_allocError();
    v13 = xmmword_265F289E0;
LABEL_7:
    *v12 = v13;
    *(v12 + 16) = 1;
    swift_willThrow();
    goto LABEL_8;
  }

  if (!_._object)
  {
    lazy protocol witness table accessor for type APIError and conformance APIError();
    v10 = swift_allocError();
    v13 = xmmword_265F20CE0;
    goto LABEL_7;
  }

  countAndFlagsBits = _._countAndFlagsBits;
  object = _._object;
  v8._countAndFlagsBits = 1701667182;
  v8._object = 0xE400000000000000;
  validate(_:named:)(_, v8);
  v10 = v9;
  if (!v9)
  {
    v11 = a1;
    specialized SGDataTypeStorage.init(type:scalar:)(v11, a2, v38);
    v17 = v39;

    *&v40 = a2;
    v41 = v38[0];
    v42 = v38[1];
    v43 = v38[2];
    v44 = v38[3];
    v45 = v17 & 0x1F | 0x80;
    v18 = type metadata accessor for SGNode();
    v19 = objc_allocWithZone(v18);
    swift_unknownObjectWeakInit();
    v20 = &v19[OBJC_IVAR___SGNode_name];
    *v20 = countAndFlagsBits;
    v20[1] = object;
    *&v19[OBJC_IVAR___SGNode_inputs] = MEMORY[0x277D84F90];
    outlined init with copy of SGDataTypeStorage(v38, v37);

    *&v19[OBJC_IVAR___SGNode_outputs] = recreateOutputs(from:nodeName:)(&v40, countAndFlagsBits, object);
    v21 = &v19[OBJC_IVAR___SGNode_data];
    v22 = v43;
    *(v21 + 2) = v42;
    *(v21 + 3) = v22;
    *(v21 + 4) = v44;
    v21[80] = v45;
    v23 = v41;
    *v21 = v40;
    *(v21 + 1) = v23;
    outlined init with copy of SGDataTypeStorage(v38, v37);
    v36.receiver = v19;
    v36.super_class = v18;
    v24 = objc_msgSendSuper2(&v36, sel_init);
    v25 = *&v24[OBJC_IVAR___SGNode_inputs];
    v46 = 0;
    if (v25 >> 62)
    {
      goto LABEL_37;
    }

    v26 = *((v25 & 0xFFFFFFFFFFFFFF8) + 0x10);
    while (1)
    {
      v14 = v24;

      if (v26)
      {
        v27 = 0;
        while (1)
        {
          if ((v25 & 0xC000000000000001) != 0)
          {
            v24 = MEMORY[0x266772030](v27, v25);
          }

          else
          {
            if (v27 >= *((v25 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              goto LABEL_34;
            }

            v24 = *(v25 + 8 * v27 + 32);
          }

          v28 = v24;
          v29 = v27 + 1;
          if (__OFADD__(v27, 1))
          {
            break;
          }

          swift_beginAccess();
          swift_unknownObjectWeakAssign();

          ++v27;
          if (v29 == v26)
          {
            goto LABEL_21;
          }
        }

        __break(1u);
LABEL_34:
        __break(1u);
      }

      else
      {
LABEL_21:

        v25 = *&v14[OBJC_IVAR___SGNode_outputs];
        if (v25 >> 62)
        {
          if (v25 < 0)
          {
            v35 = *&v14[OBJC_IVAR___SGNode_outputs];
          }

          v30 = __CocoaSet.count.getter();
        }

        else
        {
          v30 = *((v25 & 0xFFFFFFFFFFFFFF8) + 0x10);
        }

        if (!v30)
        {
LABEL_32:

          outlined destroy of SGDataTypeStorage(v38);

          outlined destroy of SGDataTypeStorage(v38);
          return v14;
        }

        v31 = 0;
        while (1)
        {
          if ((v25 & 0xC000000000000001) != 0)
          {
            v24 = MEMORY[0x266772030](v31, v25);
          }

          else
          {
            if (v31 >= *((v25 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              goto LABEL_36;
            }

            v24 = *(v25 + 8 * v31 + 32);
          }

          v32 = v24;
          v33 = v31 + 1;
          if (__OFADD__(v31, 1))
          {
            break;
          }

          swift_beginAccess();
          swift_unknownObjectWeakAssign();

          ++v31;
          if (v33 == v30)
          {
            goto LABEL_32;
          }
        }
      }

      __break(1u);
LABEL_36:
      __break(1u);
LABEL_37:
      v34 = v24;
      v26 = __CocoaSet.count.getter();
      v24 = v34;
    }
  }

LABEL_8:
  v14 = type metadata accessor for SGError();
  v15 = v10;
  SGError.__allocating_init(_:)(v10);
  swift_willThrow();

  return v14;
}

{
  object = _._object;
  countAndFlagsBits = _._countAndFlagsBits;
  if (!a1)
  {
    lazy protocol witness table accessor for type APIError and conformance APIError();
    v10 = swift_allocError();
    v12 = xmmword_265F289F0;
LABEL_7:
    *v11 = v12;
    *(v11 + 16) = 1;
    swift_willThrow();
    goto LABEL_8;
  }

  if (!_._object)
  {
    lazy protocol witness table accessor for type APIError and conformance APIError();
    v10 = swift_allocError();
    v12 = xmmword_265F20CE0;
    goto LABEL_7;
  }

  v8._countAndFlagsBits = 1701667182;
  v8._object = 0xE400000000000000;
  validate(_:named:)(_, v8);
  v10 = v9;
  if (!v9)
  {
    specialized SGDataTypeStorage.init(type:value:)(a2, a1, v41);
    v49 = 0;
    *&v43 = a2;
    v44 = v41[0];
    v45 = v41[1];
    v46 = v41[2];
    v47 = v41[3];
    v48 = v42 & 0x1F | 0x80;
    v20 = type metadata accessor for SGNode();
    v21 = objc_allocWithZone(v20);
    swift_unknownObjectWeakInit();
    v22 = &v21[OBJC_IVAR___SGNode_name];
    *v22 = countAndFlagsBits;
    v22[1] = object;
    *&v21[OBJC_IVAR___SGNode_inputs] = MEMORY[0x277D84F90];
    outlined init with copy of SGDataTypeStorage(v41, &v39);

    *&v21[OBJC_IVAR___SGNode_outputs] = recreateOutputs(from:nodeName:)(&v43, countAndFlagsBits, object);
    v23 = &v21[OBJC_IVAR___SGNode_data];
    v24 = v46;
    *(v23 + 2) = v45;
    *(v23 + 3) = v24;
    *(v23 + 4) = v47;
    v23[80] = v48;
    v25 = v44;
    *v23 = v43;
    *(v23 + 1) = v25;
    outlined init with copy of SGDataTypeStorage(v41, &v39);
    v38.receiver = v21;
    v38.super_class = v20;
    v26 = objc_msgSendSuper2(&v38, sel_init);
    v27 = *&v26[OBJC_IVAR___SGNode_inputs];
    if (v27 >> 62)
    {
      goto LABEL_40;
    }

    v28 = *((v27 & 0xFFFFFFFFFFFFFF8) + 0x10);
    while (1)
    {
      v17 = v26;

      if (v28)
      {
        v29 = 0;
        while (1)
        {
          if ((v27 & 0xC000000000000001) != 0)
          {
            v26 = MEMORY[0x266772030](v29, v27);
          }

          else
          {
            if (v29 >= *((v27 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              goto LABEL_37;
            }

            v26 = *(v27 + 8 * v29 + 32);
          }

          v30 = v26;
          v31 = v29 + 1;
          if (__OFADD__(v29, 1))
          {
            break;
          }

          swift_beginAccess();
          swift_unknownObjectWeakAssign();

          ++v29;
          if (v31 == v28)
          {
            goto LABEL_24;
          }
        }

        __break(1u);
LABEL_37:
        __break(1u);
      }

      else
      {
LABEL_24:

        v27 = *&v17[OBJC_IVAR___SGNode_outputs];
        if (v27 >> 62)
        {
          if (v27 < 0)
          {
            v37 = *&v17[OBJC_IVAR___SGNode_outputs];
          }

          v32 = __CocoaSet.count.getter();
        }

        else
        {
          v32 = *((v27 & 0xFFFFFFFFFFFFFF8) + 0x10);
        }

        if (!v32)
        {
LABEL_35:

          outlined destroy of SGDataTypeStorage(v41);

          outlined destroy of SGDataTypeStorage(v41);
          return v17;
        }

        v33 = 0;
        while (1)
        {
          if ((v27 & 0xC000000000000001) != 0)
          {
            v26 = MEMORY[0x266772030](v33, v27);
          }

          else
          {
            if (v33 >= *((v27 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              goto LABEL_39;
            }

            v26 = *(v27 + 8 * v33 + 32);
          }

          v34 = v26;
          v35 = v33 + 1;
          if (__OFADD__(v33, 1))
          {
            break;
          }

          swift_beginAccess();
          swift_unknownObjectWeakAssign();

          ++v33;
          if (v35 == v32)
          {
            goto LABEL_35;
          }
        }
      }

      __break(1u);
LABEL_39:
      __break(1u);
LABEL_40:
      v36 = v26;
      v28 = __CocoaSet.count.getter();
      v26 = v36;
    }
  }

LABEL_8:
  v39 = 0;
  v40 = 0xE000000000000000;
  _StringGuts.grow(_:)(40);
  MEMORY[0x266771550](0xD000000000000021, 0x8000000265F33620);
  if (object)
  {

    v13 = String.init<A>(describing:)();
    v15 = v14;
  }

  else
  {
    v15 = 0xE500000000000000;
    v13 = 0x3E6C696E3CLL;
  }

  MEMORY[0x266771550](v13, v15);

  MEMORY[0x266771550](2112034, 0xE300000000000000);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
  _print_unlocked<A, B>(_:_:)();
  v16 = v39;
  v17 = v40;
  lazy protocol witness table accessor for type UserGraphError and conformance UserGraphError();
  swift_allocError();
  *v18 = 25;
  *(v18 + 8) = v16;
  *(v18 + 16) = v17;
  swift_willThrow();

  return v17;
}

char *specialized static SGNode.create(value:type:name:)(uint64_t a1, uint64_t a2, uint64_t a3, Swift::String _)
{
  if (!a2)
  {
    lazy protocol witness table accessor for type APIError and conformance APIError();
    v11 = swift_allocError();
    v13 = xmmword_265F289F0;
LABEL_7:
    *v12 = v13;
    v14 = 1;
LABEL_8:
    *(v12 + 16) = v14;
    swift_willThrow();
    goto LABEL_9;
  }

  if (!_._object)
  {
    lazy protocol witness table accessor for type APIError and conformance APIError();
    v11 = swift_allocError();
    v13 = xmmword_265F20CE0;
    goto LABEL_7;
  }

  v45 = a2;
  countAndFlagsBits = _._countAndFlagsBits;
  object = _._object;
  v9._countAndFlagsBits = 1701667182;
  v9._object = 0xE400000000000000;
  validate(_:named:)(_, v9);
  if (!v10)
  {
    if ((a3 - 11) < 3)
    {
      *&v39 = a3;
      *&v40 = a1;
      *(&v40 + 1) = v45;
      v44 = -122;
      v17 = type metadata accessor for SGNode();
      v18 = objc_allocWithZone(v17);
      swift_unknownObjectWeakInit();
      v19 = &v18[OBJC_IVAR___SGNode_name];
      *v19 = countAndFlagsBits;
      v19[1] = object;
      *&v18[OBJC_IVAR___SGNode_inputs] = MEMORY[0x277D84F90];

      *&v18[OBJC_IVAR___SGNode_outputs] = recreateOutputs(from:nodeName:)(&v39, countAndFlagsBits, object);
      v20 = &v18[OBJC_IVAR___SGNode_data];
      v21 = v42;
      *(v20 + 2) = v41;
      *(v20 + 3) = v21;
      *(v20 + 4) = v43;
      v20[80] = v44;
      v22 = v40;
      *v20 = v39;
      *(v20 + 1) = v22;
      v38.receiver = v18;
      v38.super_class = v17;

      v23 = objc_msgSendSuper2(&v38, sel_init);
      v24 = *&v23[OBJC_IVAR___SGNode_inputs];
      if (v24 >> 62)
      {
        goto LABEL_40;
      }

      v25 = *((v24 & 0xFFFFFFFFFFFFFF8) + 0x10);
      while (1)
      {
        v11 = v23;

        if (v25)
        {
          v26 = 0;
          while (1)
          {
            if ((v24 & 0xC000000000000001) != 0)
            {
              v23 = MEMORY[0x266772030](v26, v24);
            }

            else
            {
              if (v26 >= *((v24 & 0xFFFFFFFFFFFFFF8) + 0x10))
              {
                goto LABEL_37;
              }

              v23 = *(v24 + 8 * v26 + 32);
            }

            v27 = v23;
            v28 = v26 + 1;
            if (__OFADD__(v26, 1))
            {
              break;
            }

            swift_beginAccess();
            swift_unknownObjectWeakAssign();

            ++v26;
            if (v28 == v25)
            {
              goto LABEL_24;
            }
          }

          __break(1u);
LABEL_37:
          __break(1u);
        }

        else
        {
LABEL_24:

          v24 = *&v11[OBJC_IVAR___SGNode_outputs];
          if (v24 >> 62)
          {
            if (v24 < 0)
            {
              v37 = *&v11[OBJC_IVAR___SGNode_outputs];
            }

            v32 = __CocoaSet.count.getter();
          }

          else
          {
            v32 = *((v24 & 0xFFFFFFFFFFFFFF8) + 0x10);
          }

          if (!v32)
          {
LABEL_35:

            return v11;
          }

          v33 = 0;
          while (1)
          {
            if ((v24 & 0xC000000000000001) != 0)
            {
              v23 = MEMORY[0x266772030](v33, v24);
            }

            else
            {
              if (v33 >= *((v24 & 0xFFFFFFFFFFFFFF8) + 0x10))
              {
                goto LABEL_39;
              }

              v23 = *(v24 + 8 * v33 + 32);
            }

            v34 = v23;
            v35 = v33 + 1;
            if (__OFADD__(v33, 1))
            {
              break;
            }

            swift_beginAccess();
            swift_unknownObjectWeakAssign();

            ++v33;
            if (v35 == v32)
            {
              goto LABEL_35;
            }
          }
        }

        __break(1u);
LABEL_39:
        __break(1u);
LABEL_40:
        v36 = v23;
        v25 = __CocoaSet.count.getter();
        v23 = v36;
      }
    }

    v29 = SGDataType.stringValue.getter();
    v31 = v30;
    lazy protocol witness table accessor for type APIError and conformance APIError();
    v11 = swift_allocError();
    *v12 = v29;
    *(v12 + 8) = v31;
    v14 = 4;
    goto LABEL_8;
  }

  v11 = v10;
LABEL_9:
  type metadata accessor for SGError();
  v15 = v11;
  SGError.__allocating_init(_:)(v11);
  swift_willThrow();

  return v11;
}

uint64_t sub_265ED4FF4(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  swift_beginAccess();
  return swift_unknownObjectWeakAssign();
}

uint64_t dispatch thunk of SGNode.__allocating_init(name:data:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *(v3 + 120);
  v5 = *(a3 + 80);
  v6 = *(a3 + 16);
  v9[0] = *a3;
  v9[1] = v6;
  v7 = *(a3 + 48);
  v9[2] = *(a3 + 32);
  v9[3] = v7;
  v9[4] = *(a3 + 64);
  v10 = v5;
  return v4(a1, a2, v9);
}

uint64_t static _HashTable.create<A>(uncheckedUniqueElements:scale:reservedScale:)(uint64_t a1, int64_t a2, char a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v14 = *(*(a6 + 8) + 8);
  v15 = dispatch thunk of Collection.count.getter();
  v16 = specialized static _HashTable.scale(forCapacity:)(v15);
  result = 0;
  if (a3)
  {
    v18 = 0;
  }

  else
  {
    v18 = a2;
  }

  if (v16 <= v18)
  {
    v16 = v18;
  }

  if (v16 <= a4)
  {
    v16 = a4;
  }

  if (v16 >= 5)
  {
    v19 = specialized _HashTable.init(scale:reservedScale:)(v16, a4);
    _HashTable.UnsafeHandle.fill<A>(uncheckedUniqueElements:)(a1, (v19 + 16), v19 + 32, a5, a6, a7);
    return v19;
  }

  return result;
}

uint64_t static _HashTable.create<A>(untilFirstDuplicateIn:scale:reservedScale:)(char *a1, uint64_t a2, uint64_t a3, int a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v70 = a8;
  v71 = a3;
  LODWORD(v66) = a4;
  v63 = a1;
  v65 = a7;
  v11 = *(*(a7 + 8) + 8);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v13 = *(*(TupleTypeMetadata2 - 8) + 64);
  MEMORY[0x28223BE20](TupleTypeMetadata2);
  v15 = &v52 - v14;
  v16 = *(v11 + 8);
  v52 = swift_getAssociatedTypeWitness();
  v58 = *(v52 - 8);
  v17 = *(v58 + 64);
  MEMORY[0x28223BE20](v52);
  v67 = &v52 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v19);
  v21 = &v52 - v20;
  v22 = *(AssociatedTypeWitness - 8);
  v23 = *(v22 + 64);
  MEMORY[0x28223BE20](v24);
  v55 = &v52 - v25;
  v26 = type metadata accessor for Optional();
  v27 = *(*(v26 - 8) + 64);
  MEMORY[0x28223BE20](v26 - 8);
  v54 = &v52 - v28;
  v29 = swift_getAssociatedTypeWitness();
  v30 = *(*(v29 - 8) + 64);
  MEMORY[0x28223BE20](v29);
  v62 = (&v52 - v31);
  v61 = *(swift_getAssociatedConformanceWitness() + 8);
  v69 = swift_getAssociatedTypeWitness();
  v53 = *(v69 - 8);
  v32 = *(v53 + 64);
  MEMORY[0x28223BE20](v69);
  v68 = &v52 - v33;
  v34 = dispatch thunk of Collection.count.getter();
  v35 = specialized static _HashTable.scale(forCapacity:)(v34);
  v36 = v71;
  if (v66)
  {
    v36 = 0;
  }

  if (v35 > v36)
  {
    v36 = v35;
  }

  if (v36 <= a5)
  {
    v37 = a5;
  }

  else
  {
    v37 = v36;
  }

  if (v37 > 4)
  {
    v38 = specialized _HashTable.init(scale:reservedScale:)(v37, a5);
    v39 = *(TupleTypeMetadata2 + 48);
    _HashTable.UnsafeHandle.fill<A>(untilFirstDuplicateIn:)(&v15[v39], a2, (v38 + 16), v38 + 32, a6, v65, v70);
    (*(v22 + 32))(v63, &v15[v39], AssociatedTypeWitness);
    return v38;
  }

  if (dispatch thunk of Collection.count.getter() > 1)
  {
    v41 = v52;
    v73 = static Array._allocateUninitialized(_:)();
    v42 = dispatch thunk of Collection.count.getter();
    v71 = type metadata accessor for Array();
    Array.reserveCapacity(_:)(v42);
    v65 = a2;
    v66 = a6;
    TupleTypeMetadata2 = v11;
    dispatch thunk of Collection.indices.getter();
    dispatch thunk of Sequence.makeIterator()();
    AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
    v44 = v54;
    v61 = AssociatedConformanceWitness;
    dispatch thunk of IteratorProtocol.next()();
    v45 = v22;
    v59 = *(v22 + 48);
    v60 = v22 + 48;
    v46 = v59(v44, 1, AssociatedTypeWitness);
    v47 = v55;
    if (v46 != 1)
    {
      v62 = *(v45 + 32);
      v48 = (v58 + 16);
      v57 = v45 + 32;
      v58 += 8;
      v56 = (v45 + 8);
      while (1)
      {
        v62(v47, v44, AssociatedTypeWitness);
        v49 = dispatch thunk of Collection.subscript.read();
        v50 = *v48;
        (*v48)(v21);
        v49(v72, 0);
        v72[0] = v73;
        swift_getWitnessTable();
        v51 = *(v70 + 8);
        if (Sequence<>.contains(_:)())
        {
          break;
        }

        (v50)(v67, v21, v41);
        Array.append(_:)();
        (*v58)(v21, v41);
        (*v56)(v47, AssociatedTypeWitness);
        dispatch thunk of IteratorProtocol.next()();
        if (v59(v44, 1, AssociatedTypeWitness) == 1)
        {
          goto LABEL_16;
        }
      }

      (*v58)(v21, v41);
      (*(v53 + 8))(v68, v69);

      v62(v63, v47, AssociatedTypeWitness);
      return 0;
    }

LABEL_16:
    (*(v53 + 8))(v68, v69);
  }

  dispatch thunk of Collection.endIndex.getter();
  return 0;
}

uint64_t _HashTable._storage.setter(uint64_t a1)
{
  v3 = *v1;

  *v1 = a1;
  return result;
}

void *_HashTable.copy()(void *result)
{
  v1 = result[2];
  v2 = (v1 & 0x3F) << v1;
  v3 = __OFADD__(v2, 64);
  v4 = v2 + 64;
  if (v3)
  {
    __break(1u);
  }

  else
  {
    v5 = result;
    v7 = v4 - 1;
    v6 = v4 < 1;
    v8 = v4 + 62;
    if (!v6)
    {
      v8 = v7;
    }

    v9 = v8 >> 6;
    type metadata accessor for _HashTable.Storage();
    v10 = swift_allocObject();
    v11 = v5[3];
    v10[2] = v1;
    v10[3] = v11;
    memcpy(v10 + 4, v5 + 4, 8 * v9);
    return v10;
  }

  return result;
}

__n128 _HashTable.header.getter@<Q0>(__n128 *a1@<X0>, __n128 *a2@<X8>)
{
  swift_beginAccess();
  result = a1[1];
  *a2 = result;
  return result;
}

__n128 _HashTable.header.setter(__n128 *a1, __n128 *a2)
{
  swift_beginAccess();
  result = *a1;
  a2[1] = *a1;
  return result;
}

uint64_t _HashTable.capacity.getter(uint64_t a1)
{
  result = swift_beginAccess();
  v3 = *(a1 + 16) & 0x3FLL;
  if (v3 < 5)
  {
    return 15;
  }

  v4 = (1 << v3) * 0.75;
  if (COERCE__INT64(fabs(v4)) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_9;
  }

  if (v4 <= -9.22337204e18)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  if (v4 >= 9.22337204e18)
  {
LABEL_10:
    __break(1u);
    return result;
  }

  return v4;
}

uint64_t _HashTable.minimumCapacity.getter(uint64_t a1)
{
  swift_beginAccess();
  result = 0;
  v3 = *(a1 + 16) & 0x3FLL;
  if (v3 >= 5 && v3 != (*(a1 + 24) & 0x3FLL))
  {
    v5 = vcvtd_n_f64_s64(1 << v3, 2uLL);
    if ((*&v5 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
    {
      __break(1u);
    }

    else if (v5 > -9.22337204e18)
    {
      if (v5 < 9.22337204e18)
      {
        return v5;
      }

LABEL_12:
      __break(1u);
      return result;
    }

    __break(1u);
    goto LABEL_12;
  }

  return result;
}

uint64_t specialized _HashTable.init(scale:reservedScale:)(uint64_t result, uint64_t a2)
{
  v2 = (result << result) + 63;
  if (__OFADD__(result << result, 63))
  {
    __break(1u);
LABEL_9:
    __break(1u);
    return result;
  }

  v4 = result;
  v5 = (result << result) + 126;
  if (v2 >= 0)
  {
    v5 = (result << result) + 63;
  }

  v6 = v5 >> 6;
  type metadata accessor for _HashTable.Storage();
  v7 = 8 * v6;
  result = swift_allocObject();
  *(result + 16) = v4 | (result << 6);
  *(result + 24) = a2;
  if (v2 < -63)
  {
    goto LABEL_9;
  }

  if ((v2 + 63) >= 0x7F)
  {
    v8 = result;
    bzero((result + 32), v7);
    return v8;
  }

  return result;
}

uint64_t type metadata accessor for _HashTable.Storage()
{
  result = type metadata singleton initialization cache for _HashTable.Storage;
  if (!type metadata singleton initialization cache for _HashTable.Storage)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

__n128 sub_265ED5E40@<Q0>(__n128 **a1@<X0>, __n128 *a2@<X8>)
{
  v3 = *a1;
  swift_beginAccess();
  result = v3[1];
  *a2 = result;
  return result;
}

uint64_t sub_265ED5E88(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *a2;
  result = swift_beginAccess();
  *(v4 + 16) = v2;
  *(v4 + 24) = v3;
  return result;
}

uint64_t MetalShaderProgram.createLiteralValue(type:value:)(uint64_t result, uint64_t a2)
{
  v3 = *(v2 + 48);
  if (__OFADD__(v3, 1))
  {
    __break(1u);
  }

  else
  {
    v5 = result;
    *(v2 + 48) = v3 + 1;
    type metadata accessor for MetalLiteralValueNode();
    v6 = swift_allocObject();
    *(v6 + 112) = *(a2 + 64);
    v7 = MEMORY[0x277D84F90];
    *(v6 + 113) = 0;
    *(v6 + 24) = v7;
    *(v6 + 32) = v5;
    v8 = *(a2 + 48);
    *(v6 + 80) = *(a2 + 32);
    *(v6 + 96) = v8;
    v9 = *(a2 + 16);
    *(v6 + 48) = *a2;
    *(v6 + 64) = v9;
    *(v6 + 16) = v3;

    outlined init with copy of SGDataTypeStorage(a2, &v11);
    v10 = specialized MetalShaderProgram.add<A>(_:)(v6);

    return v10;
  }

  return result;
}

uint64_t MetalShaderProgram.createCallFunction(resultType:functionName:)(uint64_t result, uint64_t a2, uint64_t a3)
{
  v4 = *(v3 + 48);
  if (__OFADD__(v4, 1))
  {
    __break(1u);
  }

  else
  {
    v7 = result;
    *(v3 + 48) = v4 + 1;
    type metadata accessor for MetalFunctionCallNode();
    v8 = swift_allocObject();
    v9 = MEMORY[0x277D84F90];
    *(v8 + 56) = 0;
    *(v8 + 32) = v7;
    *(v8 + 40) = a2;
    *(v8 + 48) = a3;
    *(v8 + 16) = v4;
    *(v8 + 24) = v9;

    v10 = specialized MetalShaderProgram.add<A>(_:)(v8);

    return v10;
  }

  return result;
}

uint64_t MetalShaderProgram.createRESurfaceShaderFunctionNode(named:paramsInput:uniformsInput:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v16 = *(v8 + 48);
  if (__OFADD__(v16, 1))
  {
    __break(1u);
    goto LABEL_5;
  }

  v9 = a7;
  v10 = a6;
  v14 = a5;
  v15 = a4;
  v12 = a2;
  v13 = a1;
  v22 = a3;
  v23 = a8;
  *(v8 + 48) = v16 + 1;
  type metadata accessor for RESurfaceShaderFunctionNode();
  v11 = swift_allocObject();
  v17 = one-time initialization token for void;

  if (v17 != -1)
  {
LABEL_5:
    swift_once();
  }

  v18 = static MetalDataType.void;
  v19 = MEMORY[0x277D84F90];
  v11[2] = v13;
  v11[3] = v12;
  v11[4] = v22;
  v11[5] = v15;
  v11[6] = v14;
  v11[7] = v10;
  v11[8] = v9;
  v11[9] = v23;
  v11[12] = v19;
  v11[13] = v13;
  v11[14] = v12;
  v11[10] = v18;
  v11[11] = v16;
  swift_bridgeObjectRetain_n();

  outlined copy of (name: String, type: MetalDataType)?(v10, v9);
  v20 = specialized MetalShaderProgram.add<A>(_:)(v11);

  return v20;
}

uint64_t MetalShaderProgram.createGetArgument(resultType:argumentName:)(uint64_t result, uint64_t a2, uint64_t a3)
{
  v4 = *(v3 + 48);
  if (__OFADD__(v4, 1))
  {
    __break(1u);
  }

  else
  {
    v7 = result;
    *(v3 + 48) = v4 + 1;
    type metadata accessor for MetalFunctionParameterNode();
    v8 = swift_allocObject();
    v9 = MEMORY[0x277D84F90];
    v8[4] = v7;
    v8[5] = a2;
    v8[6] = a3;
    v8[2] = v4;
    v8[3] = v9;

    v10 = specialized MetalShaderProgram.add<A>(_:)(v8);

    return v10;
  }

  return result;
}

uint64_t MetalShaderProgram.createPassthrough(valueType:)(uint64_t result)
{
  v2 = *(v1 + 48);
  if (__OFADD__(v2, 1))
  {
    __break(1u);
  }

  else
  {
    v3 = result;
    *(v1 + 48) = v2 + 1;
    type metadata accessor for MetalPassthroughNode();
    v4 = swift_allocObject();
    v5 = MEMORY[0x277D84F90];
    *(v4 + 24) = v3;
    *(v4 + 32) = v5;
    *(v4 + 40) = 0;
    *(v4 + 16) = v2;

    v6 = specialized MetalShaderProgram.add<A>(_:)(v4);

    return v6;
  }

  return result;
}

void *MetalShaderProgram.__allocating_init()()
{
  v0 = swift_allocObject();
  v1 = MEMORY[0x277D84F90];
  v0[2] = MEMORY[0x277D84F90];
  v0[3] = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfC11ShaderGraph14FunctionNodeIDV_AC05MetaleF0_pTt0g5Tf4g_n(v1);
  v0[4] = v1;
  v0[5] = v1;
  v0[6] = 1;
  return v0;
}

uint64_t specialized Dictionary.subscript.setter(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  if (*(a1 + 24))
  {
    outlined init with take of MetalFunctionNode(a1, v17);
    v5 = *v2;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v15 = *v2;
    result = specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v17, a2, isUniquelyReferenced_nonNull_native);
    *v2 = v15;
  }

  else
  {
    outlined destroy of [Input](a1, &_s11ShaderGraph17MetalFunctionNode_pSgMd, &_s11ShaderGraph17MetalFunctionNode_pSgMR);
    v8 = *v2;
    v9 = specialized __RawDictionaryStorage.find<A>(_:)(a2);
    if (v10)
    {
      v11 = v9;
      v12 = *v3;
      v13 = swift_isUniquelyReferenced_nonNull_native();
      v14 = *v3;
      v16 = *v3;
      if (!v13)
      {
        specialized _NativeDictionary.copy()();
        v14 = v16;
      }

      outlined init with take of MetalFunctionNode((*(v14 + 56) + 40 * v11), v17);
      specialized _NativeDictionary._delete(at:)(v11, v14);
      *v3 = v14;
    }

    else
    {
      v18 = 0;
      memset(v17, 0, sizeof(v17));
    }

    return outlined destroy of [Input](v17, &_s11ShaderGraph17MetalFunctionNode_pSgMd, &_s11ShaderGraph17MetalFunctionNode_pSgMR);
  }

  return result;
}

char *MetalShaderProgram.terminalNodes()()
{
  v1 = *(*v0 + 120);
  v2 = v1();
  v3 = *(v2 + 16);
  if (v3)
  {
    v4 = v2 + 32;
    v5 = MEMORY[0x277D84F90];
    while (1)
    {
      outlined init with copy of MetalFunctionNode(v4, v56);
      v7 = v57;
      v8 = v58;
      __swift_project_boxed_opaque_existential_1(v56, v57);
      v9 = (*(v8 + 48))(v7, v8);
      result = __swift_destroy_boxed_opaque_existential_1Tm(v56);
      v10 = *(v9 + 16);
      v11 = *(v5 + 16);
      v12 = v11 + v10;
      if (__OFADD__(v11, v10))
      {
        goto LABEL_46;
      }

      result = swift_isUniquelyReferenced_nonNull_native();
      if (result && v12 <= *(v5 + 24) >> 1)
      {
        if (*(v9 + 16))
        {
          goto LABEL_14;
        }
      }

      else
      {
        if (v11 <= v12)
        {
          v13 = v11 + v10;
        }

        else
        {
          v13 = v11;
        }

        result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(result, v13, 1, v5);
        v5 = result;
        if (*(v9 + 16))
        {
LABEL_14:
          v14 = *(v5 + 16);
          if ((*(v5 + 24) >> 1) - v14 < v10)
          {
            goto LABEL_48;
          }

          memcpy((v5 + 8 * v14 + 32), (v9 + 32), 8 * v10);

          if (v10)
          {
            v15 = *(v5 + 16);
            v16 = __OFADD__(v15, v10);
            v17 = v15 + v10;
            if (v16)
            {
              goto LABEL_49;
            }

            *(v5 + 16) = v17;
          }

          goto LABEL_4;
        }
      }

      if (v10)
      {
        goto LABEL_47;
      }

LABEL_4:
      v4 += 40;
      if (!--v3)
      {

        goto LABEL_20;
      }
    }
  }

  v5 = MEMORY[0x277D84F90];
LABEL_20:
  v18 = _sShyShyxGqd__nc7ElementQyd__RszSTRd__lufC11ShaderGraph14FunctionNodeIDV_SayAFGTt0g5Tf4g_n(v5);

  v20 = (v1)(v19);
  v21 = *(v20 + 16);
  if (v21)
  {
    *&v54 = MEMORY[0x277D84F90];
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v21, 0);
    v22 = v54;
    v23 = v20 + 32;
    do
    {
      outlined init with copy of MetalFunctionNode(v23, v56);
      v24 = v57;
      v25 = v58;
      __swift_project_boxed_opaque_existential_1(v56, v57);
      v26 = (*(v25 + 24))(v24, v25);
      __swift_destroy_boxed_opaque_existential_1Tm(v56);
      *&v54 = v22;
      v28 = *(v22 + 16);
      v27 = *(v22 + 24);
      if (v28 >= v27 >> 1)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v27 > 1), v28 + 1, 1);
        v22 = v54;
      }

      *(v22 + 16) = v28 + 1;
      *(v22 + 8 * v28 + 32) = v26;
      v23 += 40;
      --v21;
    }

    while (v21);
  }

  else
  {

    v22 = MEMORY[0x277D84F90];
  }

  v29 = _sShyShyxGqd__nc7ElementQyd__RszSTRd__lufC11ShaderGraph14FunctionNodeIDV_SayAFGTt0g5Tf4g_n(v22);

  if (*(v18 + 16) <= *(v29 + 16) >> 3)
  {
    v56[0] = v29;
    specialized Set._subtract<A>(_:)(v18);

    v30 = v56[0];
  }

  else
  {
    v30 = specialized _NativeSet.subtracting<A>(_:)(v18, v29);
  }

  v31 = v30 + 56;
  v32 = 1 << *(v30 + 32);
  v33 = -1;
  if (v32 < 64)
  {
    v33 = ~(-1 << v32);
  }

  v34 = v33 & *(v30 + 56);
  v35 = (v32 + 63) >> 6;

  v36 = 0;
  v37 = MEMORY[0x277D84F90];
  v51 = v30;
  if (v34)
  {
    goto LABEL_37;
  }

  while (1)
  {
    v38 = v36 + 1;
    if (__OFADD__(v36, 1))
    {
      break;
    }

    if (v38 >= v35)
    {

      return v37;
    }

    v34 = *(v31 + 8 * v38);
    ++v36;
    if (v34)
    {
      v36 = v38;
      do
      {
LABEL_37:
        v39 = __clz(__rbit64(v34));
        v34 &= v34 - 1;
        (*(*v53 + 272))(&v54, *(*(v30 + 48) + ((v36 << 9) | (8 * v39))));
        outlined init with take of MetalFunctionNode(&v54, v56);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v55 = v37;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          v37 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v37[2] + 1, 1, v37);
          v55 = v37;
        }

        v42 = v37[2];
        v41 = v37[3];
        if (v42 >= v41 >> 1)
        {
          v52 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v41 > 1), v42 + 1, 1, v37);
          v55 = v52;
        }

        else
        {
          v52 = v37;
        }

        v43 = v57;
        v44 = v58;
        v45 = __swift_mutable_project_boxed_opaque_existential_1(v56, v57);
        v46 = *(*(v43 - 8) + 64);
        v47 = MEMORY[0x28223BE20](v45);
        v49 = &v51 - ((v48 + 15) & 0xFFFFFFFFFFFFFFF0);
        (*(v50 + 16))(v49, v47);
        specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)(v42, v49, &v55, v43, v44);
        result = __swift_destroy_boxed_opaque_existential_1Tm(v56);
        v30 = v51;
        v37 = v52;
      }

      while (v34);
    }
  }

  __break(1u);
LABEL_46:
  __break(1u);
LABEL_47:
  __break(1u);
LABEL_48:
  __break(1u);
LABEL_49:
  __break(1u);
  return result;
}

uint64_t MetalShaderProgram.topologicalSort(from:)(void *a1)
{
  v6 = MEMORY[0x277D84FA0];
  v5 = MEMORY[0x277D84FA0];
  v3 = MEMORY[0x277D84F90];
  v4 = MEMORY[0x277D84F90];
  MetalShaderProgram._dfsHelper(node:visited:onStack:preOrder:postOrder:)(a1, &v6, &v5, &v4, &v3);

  if (v1)
  {
  }

  else
  {
    return v3;
  }
}

uint64_t MetalShaderProgram.createFunctionDefinitionNode(argumentTypes:resultType:functionName:specifier:)(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, unint64_t a6)
{
  v7 = *(v6 + 48);
  if (__OFADD__(v7, 1))
  {
    __break(1u);
  }

  else
  {
    v13 = result;
    *(v6 + 48) = v7 + 1;
    type metadata accessor for MetalFunctionDefinitionNode();
    v14 = swift_allocObject();
    v15 = v14;
    v16 = MEMORY[0x277D84F90];
    v14[4] = a2;
    v14[5] = a3;
    if (a6)
    {
      v17 = a5;
    }

    else
    {
      v17 = 0;
    }

    v18 = 0xE000000000000000;
    if (a6)
    {
      v18 = a6;
    }

    v14[6] = a4;
    v14[7] = v17;
    v14[8] = v18;
    v14[9] = v13;
    v14[2] = v7;
    v14[3] = v16;

    v19 = specialized MetalShaderProgram.add<A>(_:)(v15);

    return v19;
  }

  return result;
}

uint64_t defaultCreateMetalInvocation(in:for:functionDefinitionName:)(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v7 = a1;
  v8 = (*(*a1 + 112))();
  v9 = a2[3];
  v10 = a2[4];
  __swift_project_boxed_opaque_existential_1(a2, v9);
  v11 = (*(v10 + 48))(v9, v10);
  v12 = *(v11 + 16);
  v13 = MEMORY[0x277D84F90];
  if (v12)
  {
    v24 = a4;
    v25 = v8;
    v29 = MEMORY[0x277D84F90];
    result = specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v12, 0);
    v15 = 0;
    v16 = v29;
    v27 = *(**(v7 + 16) + 272);
    while (v15 < *(v11 + 16))
    {
      v27(v28, *(v11 + 8 * v15 + 32));
      if (v4)
      {
      }

      v17 = v7;
      v29 = v16;
      v19 = *(v16 + 2);
      v18 = *(v16 + 3);
      if (v19 >= v18 >> 1)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v18 > 1), v19 + 1, 1);
        v16 = v29;
      }

      ++v15;
      *(v16 + 2) = v19 + 1;
      result = outlined init with take of MetalFunctionNode(v28, &v16[40 * v19 + 32]);
      v7 = v17;
      if (v12 == v15)
      {

        a4 = v24;
        v8 = v25;
        v13 = MEMORY[0x277D84F90];
        goto LABEL_11;
      }
    }

    __break(1u);
  }

  else
  {

    v16 = MEMORY[0x277D84F90];
LABEL_11:
    v29 = v13;

    v20 = specialized Sequence.compactMap<A>(_:)(v16, v8, v7, &v29);

    if (v4)
    {
    }

    else
    {

      *&v28[0] = v20;
      __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySSGMd, &_sSaySSGMR);
      lazy protocol witness table accessor for type [String] and conformance [A]();
      v21 = BidirectionalCollection<>.joined(separator:)();
      v23 = v22;

      *&v28[0] = a3;
      *(&v28[0] + 1) = a4;

      MEMORY[0x266771550](40, 0xE100000000000000);
      MEMORY[0x266771550](v21, v23);

      MEMORY[0x266771550](15145, 0xE200000000000000);

      return *&v28[0];
    }
  }

  return result;
}

uint64_t closure #1 in implicit closure #1 in closure #2 in defaultCreateMetalInvocation(in:for:functionDefinitionName:)(void *a1, uint64_t a2, uint64_t a3, char **a4)
{
  outlined init with copy of MetalFunctionNode(a1, &v49);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s11ShaderGraph17MetalFunctionNode_pMd, &_s11ShaderGraph17MetalFunctionNode_pMR);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s11ShaderGraph18HasMetalInvocation_pMd, &_s11ShaderGraph18HasMetalInvocation_pMR);
  swift_dynamicCast();
  v9 = v47;
  v10 = v48;
  __swift_project_boxed_opaque_existential_1(v46, v47);
  v11 = (*(v10 + 8))(a2, v9, v10);
  v13 = v12;
  v15 = v14;
  __swift_destroy_boxed_opaque_existential_1Tm(v46);
  if (!v4)
  {
    v52 = a4;
    outlined init with copy of MetalFunctionNode(a1, &v49);
    type metadata accessor for MetalLiteralValueNode();
    if (swift_dynamicCast() || (outlined init with copy of MetalFunctionNode(a1, &v49), type metadata accessor for MetalFunctionParameterNode(), swift_dynamicCast()))
    {
    }

    else
    {
      v45 = (*(*a3 + 304))(a1);
      v18 = v17;
      specialized Array.append<A>(contentsOf:)(v15);
      v19 = a1[3];
      v20 = a1[4];
      __swift_project_boxed_opaque_existential_1(a1, v19);
      v21 = (*(v20 + 16))(v19, v20);
      if (one-time initialization token for void != -1)
      {
        swift_once();
      }

      v22 = (*(*v21 + 128))(static MetalDataType.void);

      if (v22)
      {
        *&v49 = v11;
        *(&v49 + 1) = v13;
        MEMORY[0x266771550](59, 0xE100000000000000);
        v23 = v49;
        v24 = v52;
        v25 = *v52;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        *v24 = v25;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          v25 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v25 + 2) + 1, 1, v25);
          *v24 = v25;
        }

        v11 = v45;
        v28 = *(v25 + 2);
        v27 = *(v25 + 3);
        if (v28 >= v27 >> 1)
        {
          v25 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v27 > 1), v28 + 1, 1, v25);
          *v52 = v25;
        }

        *(v25 + 2) = v28 + 1;
        *&v25[16 * v28 + 32] = v23;
      }

      else
      {
        v29 = a1[3];
        v30 = a1[4];
        __swift_project_boxed_opaque_existential_1(a1, v29);
        v31 = (*(v30 + 16))(v29, v30);
        v33 = *(v31 + 24);
        v32 = *(v31 + 32);

        *&v49 = v33;
        *(&v49 + 1) = v32;
        MEMORY[0x266771550](32, 0xE100000000000000);
        MEMORY[0x266771550](v45, v18);
        MEMORY[0x266771550](2112800, 0xE300000000000000);
        MEMORY[0x266771550](v11, v13);

        MEMORY[0x266771550](59, 0xE100000000000000);
        v35 = *(&v49 + 1);
        v34 = v49;
        outlined init with copy of MetalFunctionNode(a1, v46);
        __swift_instantiateConcreteTypeFromMangledNameV2(&_s11ShaderGraph26MetalConstExprFunctionNode_pMd, &_s11ShaderGraph26MetalConstExprFunctionNode_pMR);
        if (swift_dynamicCast())
        {
          v36 = *(&v50 + 1);
          v37 = v51;
          __swift_project_boxed_opaque_existential_1(&v49, *(&v50 + 1));
          v38 = (*(v37 + 16))(v36, v37);
          __swift_destroy_boxed_opaque_existential_1Tm(&v49);
          if (v38)
          {
            *&v49 = 0x70786574736E6F63;
            *(&v49 + 1) = 0xEA00000000002072;
            MEMORY[0x266771550](v34, v35);

            v35 = *(&v49 + 1);
            v34 = v49;
          }
        }

        else
        {
          v51 = 0;
          v49 = 0u;
          v50 = 0u;
          outlined destroy of [Input](&v49, &_s11ShaderGraph26MetalConstExprFunctionNode_pSgMd, &_s11ShaderGraph26MetalConstExprFunctionNode_pSgMR);
        }

        v39 = v52;
        v40 = *v52;
        v41 = swift_isUniquelyReferenced_nonNull_native();
        *v39 = v40;
        if ((v41 & 1) == 0)
        {
          v40 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v40 + 2) + 1, 1, v40);
          *v39 = v40;
        }

        v43 = *(v40 + 2);
        v42 = *(v40 + 3);
        if (v43 >= v42 >> 1)
        {
          v40 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v42 > 1), v43 + 1, 1, v40);
          *v39 = v40;
        }

        *(v40 + 2) = v43 + 1;
        v44 = &v40[16 * v43];
        *(v44 + 4) = v34;
        *(v44 + 5) = v35;
        return v45;
      }
    }
  }

  return v11;
}

uint64_t MetalFunctionNodeBase.metalFunctionTemplate.getter()
{
  v1 = *(v0 + 24);
  v2 = *(v0 + 32);

  return v1;
}

uint64_t MetalFunctionNodeBase.debugLabel.getter()
{
  swift_beginAccess();
  v1 = *(v0 + 48);
  v2 = *(v0 + 56);

  return v1;
}

uint64_t MetalFunctionNodeBase.debugLabel.setter(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  v5 = *(v2 + 56);
  *(v2 + 48) = a1;
  *(v2 + 56) = a2;
}

uint64_t MetalFunctionNodeBase.resultType.getter()
{
  swift_beginAccess();
  v1 = *(v0 + 64);
}

uint64_t MetalFunctionNodeBase.resultType.setter(uint64_t a1)
{
  swift_beginAccess();
  v3 = *(v1 + 64);
  *(v1 + 64) = a1;
}

uint64_t MetalFunctionNodeBase.functionDefinitionName.getter()
{
  (*(*v0 + 120))();
  v1 = dispatch thunk of CustomStringConvertible.description.getter();
  MEMORY[0x266771550](v1);

  MEMORY[0x266771550](25705, 0xE200000000000000);

  return 0x6E6F6974636E7566;
}

void *MetalFunctionNodeBase.__allocating_init(id:resultType:template:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = swift_allocObject();
  v9 = MEMORY[0x277D84F90];
  result[6] = 0;
  result[7] = 0;
  result[8] = a2;
  result[4] = a4;
  result[5] = v9;
  result[2] = a1;
  result[3] = a3;
  return result;
}

void *MetalFunctionNodeBase.init(id:resultType:template:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[7] = 0;
  v4[5] = MEMORY[0x277D84F90];
  v4[6] = 0;
  v4[8] = a2;
  v4[3] = a3;
  v4[4] = a4;
  v4[2] = a1;
  return v4;
}

Swift::Void __swiftcall MetalFunctionNodeBase.setInputs(_:)(Swift::OpaquePointer a1)
{
  v2 = *(a1._rawValue + 2);
  v3 = MEMORY[0x277D84F90];
  if (v2)
  {
    v14 = MEMORY[0x277D84F90];
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v2, 0);
    v3 = v14;
    v5 = a1._rawValue + 32;
    do
    {
      outlined init with copy of MetalFunctionNode(v5, v11);
      v6 = v12;
      v7 = v13;
      __swift_project_boxed_opaque_existential_1(v11, v12);
      v8 = (*(v7 + 24))(v6, v7);
      __swift_destroy_boxed_opaque_existential_1Tm(v11);
      v14 = v3;
      v10 = *(v3 + 16);
      v9 = *(v3 + 24);
      if (v10 >= v9 >> 1)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v9 > 1), v10 + 1, 1);
        v3 = v14;
      }

      *(v3 + 16) = v10 + 1;
      *(v3 + 8 * v10 + 32) = v8;
      v5 += 40;
      --v2;
    }

    while (v2);
  }

  (*(*v1 + 152))(v3);
}

uint64_t MetalFunctionNodeBase.generateMetalSource(in:)(void **a1)
{
  v3 = v2;
  v4 = v1;
  v59 = ((*a1)[14])();
  v58 = v1;
  v6 = (*(*v1 + 144))();
  v7 = v6;
  v8 = *(v6 + 16);
  if (v8)
  {
    v9 = 0;
    v10 = MEMORY[0x277D84F90];
    v60 = *(v6 + 16);
    while (v9 < *(v7 + 16))
    {
      (*(*a1[2] + 272))(&v61, *(v7 + 8 * v9 + 32));
      if (v3)
      {
      }

      v12 = v63;
      v13 = v64;
      __swift_project_boxed_opaque_existential_1(&v61, v63);
      v14 = (*(v13 + 16))(v12, v13);
      if (one-time initialization token for void != -1)
      {
        swift_once();
      }

      v4 = static MetalDataType.void;
      v15 = *(*v14 + 128);

      v17 = v15(v16);

      if ((v17 & 1) == 0)
      {
        v18 = v63;
        v19 = v64;
        __swift_project_boxed_opaque_existential_1(&v61, v63);
        v20 = (*(v19 + 16))(v18, v19);
        v4 = (*(*v20 + 240))(v20);
        v22 = v21;

        MEMORY[0x266771550](9248, 0xE200000000000000);
        v65 = v9;
        v23 = dispatch thunk of CustomStringConvertible.description.getter();
        MEMORY[0x266771550](v23);

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v10 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v10 + 2) + 1, 1, v10);
        }

        v25 = *(v10 + 2);
        v24 = *(v10 + 3);
        if (v25 >= v24 >> 1)
        {
          v10 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v24 > 1), v25 + 1, 1, v10);
        }

        *(v10 + 2) = v25 + 1;
        v11 = &v10[16 * v25];
        *(v11 + 4) = v4;
        *(v11 + 5) = v22;
        v8 = v60;
      }

      ++v9;
      __swift_destroy_boxed_opaque_existential_1Tm(&v61);
      if (v8 == v9)
      {
        goto LABEL_15;
      }
    }

    __break(1u);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
LABEL_15:

    v61 = v10;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySSGMd, &_sSaySSGMR);
    lazy protocol witness table accessor for type [String] and conformance [A]();
    v26 = BidirectionalCollection<>.joined(separator:)();
    v28 = v27;

    v30 = (*(*v58 + 168))(v29);
    if (v31)
    {
      v61 = 2109231;
      v62 = 0xE300000000000000;
      MEMORY[0x266771550](v30);

      v32 = v61;
      v33 = v62;
      v10 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, 1, 1, MEMORY[0x277D84F90]);
      v35 = *(v10 + 2);
      v34 = *(v10 + 3);
      if (v35 >= v34 >> 1)
      {
        v10 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v34 > 1), v35 + 1, 1, v10);
      }

      *(v10 + 2) = v35 + 1;
      v36 = &v10[16 * v35];
      *(v36 + 4) = v32;
      *(v36 + 5) = v33;
    }

    else
    {
      v10 = MEMORY[0x277D84F90];
    }

    v61 = 0;
    v62 = 0xE000000000000000;
    _StringGuts.grow(_:)(27);

    v61 = 0x20656E696C6E69;
    v62 = 0xE700000000000000;
    v38 = (*(*v58 + 192))(v37);
    v39 = *(v38 + 24);
    v40 = *(v38 + 32);

    MEMORY[0x266771550](v39, v40);

    v41 = MEMORY[0x266771550](32, 0xE100000000000000);
    v42 = (*(*v58 + 216))(v41);
    MEMORY[0x266771550](v42);

    MEMORY[0x266771550](40, 0xE100000000000000);
    MEMORY[0x266771550](v26, v28);

    MEMORY[0x266771550](0x202020200A7B2029, 0xE800000000000000);
    MEMORY[0x266771550](v58[3], v58[4]);
    MEMORY[0x266771550](32010, 0xE200000000000000);
    v4 = v61;
    v9 = v62;
    if (swift_isUniquelyReferenced_nonNull_native())
    {
      goto LABEL_22;
    }
  }

  v10 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v10 + 2) + 1, 1, v10);
LABEL_22:
  v44 = *(v10 + 2);
  v43 = *(v10 + 3);
  if (v44 >= v43 >> 1)
  {
    v10 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v43 > 1), v44 + 1, 1, v10);
  }

  *(v10 + 2) = v44 + 1;
  v45 = &v10[16 * v44];
  *(v45 + 4) = v4;
  *(v45 + 5) = v9;
  v61 = v10;
  v46 = BidirectionalCollection<>.joined(separator:)();
  v48 = v47;

  v49 = (*(*v59 + 352))(&v61);
  v51 = v50;
  v52 = *v50;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *v51 = v52;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v52 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v52 + 2) + 1, 1, v52);
    *v51 = v52;
  }

  v55 = *(v52 + 2);
  v54 = *(v52 + 3);
  if (v55 >= v54 >> 1)
  {
    v52 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v54 > 1), v55 + 1, 1, v52);
    *v51 = v52;
  }

  *(v52 + 2) = v55 + 1;
  v56 = &v52[16 * v55];
  *(v56 + 4) = v46;
  *(v56 + 5) = v48;
  v49(&v61, 0);
}

uint64_t MetalFunctionNodeBase.createMetalInvocation(in:)(uint64_t a1)
{
  v3 = v2;
  v12[3] = type metadata accessor for MetalFunctionNodeBase();
  v12[4] = &protocol witness table for MetalFunctionNodeBase;
  v12[0] = v1;
  v5 = *(*v1 + 216);

  v7 = v5(v6);
  v9 = defaultCreateMetalInvocation(in:for:functionDefinitionName:)(a1, v12, v7, v8);
  if (v3)
  {

    return __swift_destroy_boxed_opaque_existential_1Tm(v12);
  }

  else
  {
    v11 = v9;

    __swift_destroy_boxed_opaque_existential_1Tm(v12);
    return v11;
  }
}

void *MetalFunctionNodeBase.deinit()
{
  v1 = v0[4];

  v2 = v0[5];

  v3 = v0[7];

  v4 = v0[8];

  return v0;
}

uint64_t MetalFunctionNodeBase.__deallocating_deinit()
{
  v1 = v0[4];

  v2 = v0[5];

  v3 = v0[7];

  v4 = v0[8];

  return swift_deallocClassInstance();
}

uint64_t (*protocol witness for MetalFunctionNode.id.modify in conformance MetalFunctionNodeBase(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  *a1 = v3;
  *(v3 + 32) = (*(**v1 + 136))();
  return protocol witness for MetalFunctionNode.inputs.modify in conformance MetalFunctionNodeBase;
}

uint64_t (*protocol witness for MetalFunctionNode.inputs.modify in conformance MetalFunctionNodeBase(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  *a1 = v3;
  *(v3 + 32) = (*(**v1 + 160))();
  return protocol witness for MetalFunctionNode.inputs.modify in conformance MetalFunctionNodeBase;
}

uint64_t protocol witness for HasMetalInvocation.createMetalInvocation(in:) in conformance MetalFunctionNodeBase()
{
  result = (*(**v0 + 248))();
  if (v1)
  {
    return v3;
  }

  return result;
}

uint64_t MetalLiteralValueNode.id.setter(uint64_t a1)
{
  result = swift_beginAccess();
  *(v1 + 16) = a1;
  return result;
}

uint64_t MetalLiteralValueNode.resultType.getter()
{
  swift_beginAccess();
  v1 = *(v0 + 32);
}

uint64_t MetalLiteralValueNode.resultType.setter(uint64_t a1)
{
  swift_beginAccess();
  v3 = *(v1 + 32);
  *(v1 + 32) = a1;
}

__n128 MetalLiteralValueNode.value.getter@<Q0>(uint64_t a1@<X8>)
{
  swift_beginAccess();
  v3 = *(v1 + 96);
  v10 = *(v1 + 80);
  v11 = v3;
  v12 = *(v1 + 112);
  v4 = *(v1 + 64);
  v8 = *(v1 + 48);
  v9 = v4;
  outlined init with copy of SGDataTypeStorage(&v8, &v7);
  v5 = v11;
  *(a1 + 32) = v10;
  *(a1 + 48) = v5;
  *(a1 + 64) = v12;
  result = v9;
  *a1 = v8;
  *(a1 + 16) = result;
  return result;
}

__n128 MetalLiteralValueNode.value.setter(uint64_t a1)
{
  swift_beginAccess();
  v3 = *(v1 + 48);
  v4 = *(v1 + 56);
  v5 = *(v1 + 64);
  v6 = *(v1 + 72);
  v7 = *(v1 + 80);
  v8 = *(v1 + 88);
  v9 = *(v1 + 96);
  v10 = *(v1 + 104);
  v11 = *(v1 + 112);
  v12 = *(a1 + 48);
  *(v1 + 80) = *(a1 + 32);
  *(v1 + 96) = v12;
  *(v1 + 112) = *(a1 + 64);
  v13 = *(a1 + 16);
  *(v1 + 48) = *a1;
  *(v1 + 64) = v13;
  outlined consume of SGDataTypeStorage(v3, v4, v5, v6, v7, v8, v9, v10, v11);
  return result;
}

uint64_t MetalLiteralValueNode.isConstExpr.setter(char a1)
{
  result = swift_beginAccess();
  *(v1 + 113) = a1;
  return result;
}

__n128 MetalLiteralValueNode.__allocating_init(id:resultType:value:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = swift_allocObject();
  v7 = MEMORY[0x277D84F90];
  *(v6 + 113) = 0;
  *(v6 + 24) = v7;
  *(v6 + 32) = a2;
  v8 = *(a3 + 48);
  *(v6 + 80) = *(a3 + 32);
  *(v6 + 96) = v8;
  *(v6 + 112) = *(a3 + 64);
  result = *(a3 + 16);
  *(v6 + 48) = *a3;
  *(v6 + 64) = result;
  *(v6 + 16) = a1;
  return result;
}

uint64_t MetalLiteralValueNode.init(id:resultType:value:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = MEMORY[0x277D84F90];
  *(v3 + 113) = 0;
  *(v3 + 24) = v4;
  *(v3 + 32) = a2;
  v5 = *(a3 + 48);
  *(v3 + 80) = *(a3 + 32);
  *(v3 + 96) = v5;
  *(v3 + 112) = *(a3 + 64);
  v6 = *(a3 + 16);
  *(v3 + 48) = *a3;
  *(v3 + 64) = v6;
  *(v3 + 16) = a1;
  return v3;
}

Swift::Void __swiftcall MetalLiteralValueNode.setInputs(_:)(Swift::OpaquePointer a1)
{
  if (one-time initialization token for logger != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  __swift_project_value_buffer(v1, logger);
  oslog = Logger.logObject.getter();
  v2 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(oslog, v2))
  {
    v3 = swift_slowAlloc();
    v4 = swift_slowAlloc();
    v6 = v4;
    *v3 = 136315138;
    *(v3 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0x7475706E49746573, 0xED0000293A5F2873, &v6);
    __swift_destroy_boxed_opaque_existential_1Tm(v4);
    MEMORY[0x266773120](v4, -1, -1);
    MEMORY[0x266773120](v3, -1, -1);
  }
}

uint64_t MetalLiteralValueNode.debugLabel.getter()
{
  v1 = (*(*v0 + 120))();
  v8 = 25705;
  v9 = 0xE200000000000000;
  v10 = v1;
  v2 = dispatch thunk of CustomStringConvertible.description.getter();
  MEMORY[0x266771550](v2);

  v3 = MEMORY[0x266771550](95, 0xE100000000000000);
  (*(*v0 + 192))(&v8, v3);
  v4 = String.init<A>(describing:)();
  v6 = v5;
  v8 = 25705;
  v9 = 0xE200000000000000;

  MEMORY[0x266771550](v4, v6);

  MEMORY[0x266771550](0x61726574696C6E5CLL, 0xE90000000000006CLL);

  return v8;
}

uint64_t MetalLiteralValueNode.deinit()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 32);

  outlined consume of SGDataTypeStorage(*(v0 + 48), *(v0 + 56), *(v0 + 64), *(v0 + 72), *(v0 + 80), *(v0 + 88), *(v0 + 96), *(v0 + 104), *(v0 + 112));
  return v0;
}

uint64_t MetalLiteralValueNode.__deallocating_deinit()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 32);

  outlined consume of SGDataTypeStorage(*(v0 + 48), *(v0 + 56), *(v0 + 64), *(v0 + 72), *(v0 + 80), *(v0 + 88), *(v0 + 96), *(v0 + 104), *(v0 + 112));

  return swift_deallocClassInstance();
}

uint64_t (*protocol witness for MetalFunctionNode.id.modify in conformance MetalLiteralValueNode(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  *a1 = v3;
  *(v3 + 32) = (*(**v1 + 136))();
  return protocol witness for MetalFunctionNode.inputs.modify in conformance MetalFunctionNodeBase;
}

uint64_t (*protocol witness for MetalFunctionNode.inputs.modify in conformance MetalLiteralValueNode(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  *a1 = v3;
  *(v3 + 32) = (*(**v1 + 160))();
  return protocol witness for MetalFunctionNode.inputs.modify in conformance MetalFunctionNodeBase;
}

uint64_t (*protocol witness for MetalConstExprFunctionNode.isConstExpr.modify in conformance MetalLiteralValueNode(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  *a1 = v3;
  *(v3 + 32) = (*(**v1 + 232))();
  return protocol witness for MetalFunctionNode.inputs.modify in conformance MetalFunctionNodeBase;
}

uint64_t MetalFunctionCallNode.functionName.getter()
{
  v1 = *(v0 + 40);
  v2 = *(v0 + 48);

  return v1;
}

uint64_t MetalFunctionCallNode.isConstExpr.setter(char a1)
{
  result = swift_beginAccess();
  *(v1 + 56) = a1;
  return result;
}

uint64_t MetalFunctionCallNode.__allocating_init(id:resultType:functionName:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = swift_allocObject();
  v9 = MEMORY[0x277D84F90];
  *(result + 56) = 0;
  *(result + 32) = a2;
  *(result + 40) = a3;
  *(result + 48) = a4;
  *(result + 16) = a1;
  *(result + 24) = v9;
  return result;
}

uint64_t MetalFunctionCallNode.init(id:resultType:functionName:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 56) = 0;
  v5 = MEMORY[0x277D84F90];
  *(v4 + 32) = a2;
  *(v4 + 40) = a3;
  *(v4 + 48) = a4;
  *(v4 + 16) = a1;
  *(v4 + 24) = v5;
  return v4;
}

Swift::Void __swiftcall MetalFunctionCallNode.setInputs(_:)(Swift::OpaquePointer a1)
{
  v2 = *(a1._rawValue + 2);
  v3 = MEMORY[0x277D84F90];
  if (v2)
  {
    v14 = MEMORY[0x277D84F90];
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v2, 0);
    v3 = v14;
    v5 = a1._rawValue + 32;
    do
    {
      outlined init with copy of MetalFunctionNode(v5, v11);
      v6 = v12;
      v7 = v13;
      __swift_project_boxed_opaque_existential_1(v11, v12);
      v8 = (*(v7 + 24))(v6, v7);
      __swift_destroy_boxed_opaque_existential_1Tm(v11);
      v14 = v3;
      v10 = *(v3 + 16);
      v9 = *(v3 + 24);
      if (v10 >= v9 >> 1)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v9 > 1), v10 + 1, 1);
        v3 = v14;
      }

      *(v3 + 16) = v10 + 1;
      *(v3 + 8 * v10 + 32) = v8;
      v5 += 40;
      --v2;
    }

    while (v2);
  }

  (*(*v1 + 152))(v3);
}

uint64_t MetalFunctionCallNode.createMetalInvocation(in:)(uint64_t a1)
{
  v3 = v2;
  v10[3] = type metadata accessor for MetalFunctionCallNode();
  v10[4] = &protocol witness table for MetalFunctionCallNode;
  v10[0] = v1;
  v5 = *(v1 + 40);
  v6 = *(v1 + 48);

  v7 = defaultCreateMetalInvocation(in:for:functionDefinitionName:)(a1, v10, v5, v6);
  if (v3)
  {
    return __swift_destroy_boxed_opaque_existential_1Tm(v10);
  }

  v9 = v7;
  __swift_destroy_boxed_opaque_existential_1Tm(v10);
  return v9;
}

uint64_t MetalFunctionCallNode.debugLabel.getter()
{
  (*(*v0 + 120))();
  v1 = dispatch thunk of CustomStringConvertible.description.getter();
  MEMORY[0x266771550](v1);

  MEMORY[0x266771550](95, 0xE100000000000000);
  v3 = v0[5];
  v4 = v0[6];

  MEMORY[0x266771550](0x6974636E75666E5CLL, 0xEA00000000006E6FLL);

  MEMORY[0x266771550](v3, v4);

  return 25705;
}

uint64_t MetalFunctionCallNode.__deallocating_deinit()
{
  return MetalFunctionCallNode.__deallocating_deinit();
}

{
  v1 = v0[3];

  v2 = v0[4];

  v3 = v0[6];

  return swift_deallocClassInstance();
}

uint64_t (*protocol witness for MetalFunctionNode.id.modify in conformance MetalFunctionCallNode(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  *a1 = v3;
  *(v3 + 32) = (*(**v1 + 136))();
  return protocol witness for MetalFunctionNode.inputs.modify in conformance MetalFunctionNodeBase;
}

uint64_t (*protocol witness for MetalFunctionNode.inputs.modify in conformance MetalFunctionCallNode(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  *a1 = v3;
  *(v3 + 32) = (*(**v1 + 160))();
  return protocol witness for MetalFunctionNode.inputs.modify in conformance MetalFunctionNodeBase;
}

uint64_t protocol witness for HasMetalInvocation.createMetalInvocation(in:) in conformance MetalFunctionCallNode()
{
  result = (*(**v0 + 232))();
  if (v1)
  {
    return v3;
  }

  return result;
}

uint64_t (*protocol witness for MetalConstExprFunctionNode.isConstExpr.modify in conformance MetalFunctionCallNode(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  *a1 = v3;
  *(v3 + 32) = (*(**v1 + 208))();
  return protocol witness for MetalFunctionNode.inputs.modify in conformance MetalFunctionNodeBase;
}

uint64_t MetalFunctionParameterNode.name.getter()
{
  swift_beginAccess();
  v1 = *(v0 + 40);
  v2 = *(v0 + 48);

  return v1;
}

uint64_t MetalFunctionParameterNode.name.setter(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  v5 = *(v2 + 48);
  *(v2 + 40) = a1;
  *(v2 + 48) = a2;
}

void *MetalFunctionParameterNode.__allocating_init(id:resultType:name:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = swift_allocObject();
  v9 = MEMORY[0x277D84F90];
  result[4] = a2;
  result[5] = a3;
  result[6] = a4;
  result[2] = a1;
  result[3] = v9;
  return result;
}

void *MetalFunctionParameterNode.init(id:resultType:name:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = MEMORY[0x277D84F90];
  v4[4] = a2;
  v4[5] = a3;
  v4[6] = a4;
  v4[2] = a1;
  v4[3] = v5;
  return v4;
}

uint64_t MetalFunctionParameterNode.debugLabel.getter()
{
  (*(*v0 + 112))();
  v1 = dispatch thunk of CustomStringConvertible.description.getter();
  MEMORY[0x266771550](v1);

  v2 = MEMORY[0x266771550](95, 0xE100000000000000);
  v3 = (*(*v0 + 160))(v2);
  v5 = v4;

  MEMORY[0x266771550](v3, v5);

  return 25705;
}

void *MetalFunctionCallNode.deinit()
{
  v1 = v0[3];

  v2 = v0[4];

  v3 = v0[6];

  return v0;
}

uint64_t (*protocol witness for MetalFunctionNode.id.modify in conformance MetalFunctionParameterNode(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  *a1 = v3;
  *(v3 + 32) = (*(**v1 + 128))();
  return protocol witness for MetalFunctionNode.inputs.modify in conformance MetalFunctionNodeBase;
}

uint64_t (*protocol witness for MetalFunctionNode.inputs.modify in conformance MetalFunctionParameterNode(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  *a1 = v3;
  *(v3 + 32) = (*(**v1 + 152))();
  return protocol witness for MetalFunctionNode.inputs.modify in conformance MetalFunctionNodeBase;
}

uint64_t protocol witness for HasMetalInvocation.createMetalInvocation(in:) in conformance MetalFunctionParameterNode()
{
  result = (*(**v0 + 200))();
  if (v1)
  {
    return v3;
  }

  return result;
}

uint64_t MetalFunctionDefinitionNode.specifier.getter()
{
  swift_beginAccess();
  v1 = *(v0 + 56);
  v2 = *(v0 + 64);

  return v1;
}

uint64_t MetalFunctionDefinitionNode.specifier.setter(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  v5 = *(v2 + 64);
  *(v2 + 56) = a1;
  *(v2 + 64) = a2;
}

uint64_t MetalFunctionDefinitionNode.argumentTypes.getter()
{
  swift_beginAccess();
  v1 = *(v0 + 72);
}

uint64_t MetalFunctionDefinitionNode.argumentTypes.setter(uint64_t a1)
{
  swift_beginAccess();
  v3 = *(v1 + 72);
  *(v1 + 72) = a1;
}

void *MetalFunctionDefinitionNode.__allocating_init(id:argumentTypes:resultType:functionName:specifier:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, unint64_t a7)
{
  result = swift_allocObject();
  v15 = MEMORY[0x277D84F90];
  result[4] = a3;
  result[5] = a4;
  if (a7)
  {
    v16 = a6;
  }

  else
  {
    v16 = 0;
  }

  v17 = 0xE000000000000000;
  if (a7)
  {
    v17 = a7;
  }

  result[6] = a5;
  result[7] = v16;
  result[8] = v17;
  result[9] = a2;
  result[2] = a1;
  result[3] = v15;
  return result;
}

void *MetalFunctionDefinitionNode.init(id:argumentTypes:resultType:functionName:specifier:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, unint64_t a7)
{
  v8 = MEMORY[0x277D84F90];
  v7[4] = a3;
  v7[5] = a4;
  if (a7)
  {
    v9 = a6;
  }

  else
  {
    v9 = 0;
  }

  v7[6] = a5;
  v7[7] = v9;
  v10 = 0xE000000000000000;
  if (a7)
  {
    v10 = a7;
  }

  v7[8] = v10;
  v7[9] = a2;
  v7[2] = a1;
  v7[3] = v8;
  return v7;
}

uint64_t MetalFunctionDefinitionNode.debugLabel.getter()
{
  (*(*v0 + 128))();
  v1 = dispatch thunk of CustomStringConvertible.description.getter();
  MEMORY[0x266771550](v1);

  MEMORY[0x266771550](95, 0xE100000000000000);
  _StringGuts.grow(_:)(23);

  MEMORY[0x266771550](v0[5], v0[6]);

  MEMORY[0x266771550](0xD000000000000015, 0x8000000265F33690);

  return 25705;
}

Swift::Void __swiftcall MetalFunctionDefinitionNode.setInputs(_:)(Swift::OpaquePointer a1)
{
  v2 = *(a1._rawValue + 2);
  v3 = MEMORY[0x277D84F90];
  if (v2)
  {
    v14 = MEMORY[0x277D84F90];
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v2, 0);
    v3 = v14;
    v5 = a1._rawValue + 32;
    do
    {
      outlined init with copy of MetalFunctionNode(v5, v11);
      v6 = v12;
      v7 = v13;
      __swift_project_boxed_opaque_existential_1(v11, v12);
      v8 = (*(v7 + 24))(v6, v7);
      __swift_destroy_boxed_opaque_existential_1Tm(v11);
      v14 = v3;
      v10 = *(v3 + 16);
      v9 = *(v3 + 24);
      if (v10 >= v9 >> 1)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v9 > 1), v10 + 1, 1);
        v3 = v14;
      }

      *(v3 + 16) = v10 + 1;
      *(v3 + 8 * v10 + 32) = v8;
      v5 += 40;
      --v2;
    }

    while (v2);
  }

  (*(*v1 + 160))(v3);
}

uint64_t MetalFunctionDefinitionNode.functionDeclarationString()()
{
  result = (*(*v0 + 224))();
  v2 = result;
  v26 = *(result + 16);
  if (v26)
  {
    v3 = 0;
    v27 = MEMORY[0x277D84F90];
    v4 = (result + 48);
    while (v3 < *(v2 + 16))
    {
      v7 = *(v4 - 2);
      v6 = *(v4 - 1);
      v8 = *v4;
      v9 = one-time initialization token for void;

      if (v9 != -1)
      {
        swift_once();
      }

      v10 = *(*v8 + 128);

      v12 = v10(v11);

      if ((v12 & 1) == 0)
      {
        v28 = (*(*v8 + 240))(v13);
        v30 = v14;
        MEMORY[0x266771550](32, 0xE100000000000000);
        MEMORY[0x266771550](v7, v6);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v27 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v27 + 2) + 1, 1, v27);
        }

        v16 = *(v27 + 2);
        v15 = *(v27 + 3);
        if (v16 >= v15 >> 1)
        {
          v27 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v15 > 1), v16 + 1, 1, v27);
        }

        *(v27 + 2) = v16 + 1;
        v5 = &v27[16 * v16];
        *(v5 + 4) = v28;
        *(v5 + 5) = v30;
      }

      ++v3;

      v4 += 3;
      if (v26 == v3)
      {
        goto LABEL_13;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_13:

    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySSGMd, &_sSaySSGMR);
    lazy protocol witness table accessor for type [String] and conformance [A]();
    v17 = BidirectionalCollection<>.joined(separator:)();
    v19 = v18;

    v29 = (*(*v25 + 200))(v20);
    v21 = MEMORY[0x266771550](32, 0xE100000000000000);
    v22 = (*(*v25 + 176))(v21);
    v23 = *(v22 + 24);
    v24 = *(v22 + 32);

    MEMORY[0x266771550](v23, v24);

    MEMORY[0x266771550](32, 0xE100000000000000);
    MEMORY[0x266771550](v25[5], v25[6]);
    MEMORY[0x266771550](40, 0xE100000000000000);
    MEMORY[0x266771550](v17, v19);

    MEMORY[0x266771550](41, 0xE100000000000000);

    return v29;
  }

  return result;
}

Swift::String __swiftcall MetalFunctionDefinitionNode.forwardDeclaration()()
{
  v4 = MetalFunctionDefinitionNode.functionDeclarationString()();
  v5 = v0;

  MEMORY[0x266771550](59, 0xE100000000000000);

  v1 = v4;
  v2 = v5;
  result._object = v2;
  result._countAndFlagsBits = v1;
  return result;
}

void *closure #1 in MetalFunctionDefinitionNode.generateMetalSource(in:)(uint64_t a1, unint64_t a2, uint64_t a3)
{
  v6 = a2;
  v8 = *(a2 + 16);
  v9 = (*(*a3 + 152))();
  if (!*(v9 + 16))
  {
    __break(1u);
    goto LABEL_38;
  }

  v10 = *(v9 + 32);

  result = (*(*v8 + 272))(v72, v10);
  if (v3)
  {
    return result;
  }

  v75 = 0;
  outlined init with copy of MetalFunctionNode(v72, &v67);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s11ShaderGraph17MetalFunctionNode_pMd, &_s11ShaderGraph17MetalFunctionNode_pMR);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s11ShaderGraph18HasMetalInvocation_pMd, &_s11ShaderGraph18HasMetalInvocation_pMR);
  if ((swift_dynamicCast() & 1) == 0)
  {
    v66 = 0;
    memset(v65, 0, sizeof(v65));
    outlined destroy of [Input](v65, &_s11ShaderGraph18HasMetalInvocation_pSgMd, &_s11ShaderGraph18HasMetalInvocation_pSgMR);
    v8 = 0;
    v6 = 0xE000000000000000;
    v4 = MEMORY[0x277D84F90];
    goto LABEL_8;
  }

  outlined init with take of MetalFunctionNode(v65, &v68);
  v12 = v70;
  v13 = v71;
  __swift_project_boxed_opaque_existential_1(&v68, v70);
  v14 = v75;
  v15 = (*(v13 + 8))(v6, v12, v13);
  v75 = v14;
  if (!v14)
  {
    v8 = v15;
    v6 = v16;
    v4 = v17;

    __swift_destroy_boxed_opaque_existential_1Tm(&v68);
LABEL_8:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v19 = v4;
    if (isUniquelyReferenced_nonNull_native)
    {
LABEL_9:
      v21 = *(v19 + 2);
      v20 = *(v19 + 3);
      if (v21 >= v20 >> 1)
      {
        v19 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v20 > 1), v21 + 1, 1, v19);
      }

      *(v19 + 2) = v21 + 1;
      v22 = &v19[16 * v21];
      *(v22 + 4) = v8;
      *(v22 + 5) = v6;

      v24 = (*(*a3 + 256))(v23);
      if (v25)
      {
        v64 = v6;
        v26 = a1;
        v27 = v8;
        v68 = 2109231;
        v69 = 0xE300000000000000;
        MEMORY[0x266771550](v24);

        v29 = v68;
        v28 = v69;
        v30 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, 1, 1, MEMORY[0x277D84F90]);
        v32 = *(v30 + 2);
        v31 = *(v30 + 3);
        if (v32 >= v31 >> 1)
        {
          v30 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v31 > 1), v32 + 1, 1, v30);
        }

        *(v30 + 2) = v32 + 1;
        v33 = &v30[16 * v32];
        *(v33 + 4) = v29;
        *(v33 + 5) = v28;
        v8 = v27;
        a1 = v26;
        v6 = v64;
      }

      else
      {
        v30 = MEMORY[0x277D84F90];
      }

      v68 = MetalFunctionDefinitionNode.functionDeclarationString()();
      v69 = v34;

      MEMORY[0x266771550](31520, 0xE200000000000000);

      v35 = v68;
      v36 = v69;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v30 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v30 + 2) + 1, 1, v30);
      }

      v38 = *(v30 + 2);
      v37 = *(v30 + 3);
      if (v38 >= v37 >> 1)
      {
        v30 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v37 > 1), v38 + 1, 1, v30);
      }

      *(v30 + 2) = v38 + 1;
      v39 = &v30[16 * v38];
      *(v39 + 4) = v35;
      *(v39 + 5) = v36;
      v67 = v30;
      specialized Array.append<A>(contentsOf:)(v4);
      v40 = v73;
      v41 = v74;
      __swift_project_boxed_opaque_existential_1(v72, v73);
      v42 = (*(v41 + 16))(v40, v41);
      if (one-time initialization token for void != -1)
      {
        swift_once();
      }

      v43 = *(*v42 + 128);

      v45 = v43(v44);

      if ((v45 & 1) == 0)
      {
        v68 = 0x206E7275746572;
        v69 = 0xE700000000000000;
        MEMORY[0x266771550](v8, v6);

        MEMORY[0x266771550](59, 0xE100000000000000);
        v8 = v68;
        v6 = v69;
      }

      v46 = v67;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v46 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v46 + 2) + 1, 1, v46);
      }

      v48 = *(v46 + 2);
      v47 = *(v46 + 3);
      v49 = v48 + 1;
      if (v48 >= v47 >> 1)
      {
        v46 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v47 > 1), v48 + 1, 1, v46);
      }

      *(v46 + 2) = v49;
      v50 = &v46[16 * v48];
      *(v50 + 4) = v8;
      *(v50 + 5) = v6;
      v51 = *(v46 + 3);
      if (v49 >= v51 >> 1)
      {
        v46 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v51 > 1), v48 + 2, 1, v46);
      }

      *(v46 + 2) = v48 + 2;
      v52 = &v46[16 * v49];
      *(v52 + 4) = 125;
      *(v52 + 5) = 0xE100000000000000;
      v68 = v46;
      __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySSGMd, &_sSaySSGMR);
      lazy protocol witness table accessor for type [String] and conformance [A]();
      v53 = BidirectionalCollection<>.joined(separator:)();
      v55 = v54;

      v56 = (*(*a1 + 352))(&v68);
      v58 = v57;
      v59 = *v57;
      v60 = swift_isUniquelyReferenced_nonNull_native();
      *v58 = v59;
      if ((v60 & 1) == 0)
      {
        v59 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v59 + 2) + 1, 1, v59);
        *v58 = v59;
      }

      v62 = *(v59 + 2);
      v61 = *(v59 + 3);
      if (v62 >= v61 >> 1)
      {
        v59 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v61 > 1), v62 + 1, 1, v59);
        *v58 = v59;
      }

      *(v59 + 2) = v62 + 1;
      v63 = &v59[16 * v62];
      *(v63 + 4) = v53;
      *(v63 + 5) = v55;
      v56(&v68, 0);
      return __swift_destroy_boxed_opaque_existential_1Tm(v72);
    }

LABEL_38:
    v19 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v4 + 16) + 1, 1, v4);
    goto LABEL_9;
  }

  __swift_destroy_boxed_opaque_existential_1Tm(&v68);
  return __swift_destroy_boxed_opaque_existential_1Tm(v72);
}

void *MetalFunctionDefinitionNode.deinit()
{
  v1 = v0[3];

  v2 = v0[4];

  v3 = v0[6];

  v4 = v0[8];

  v5 = v0[9];

  return v0;
}

uint64_t MetalFunctionDefinitionNode.__deallocating_deinit()
{
  v1 = v0[3];

  v2 = v0[4];

  v3 = v0[6];

  v4 = v0[8];

  v5 = v0[9];

  return swift_deallocClassInstance();
}

uint64_t (*protocol witness for MetalFunctionNode.id.modify in conformance MetalFunctionDefinitionNode(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  *a1 = v3;
  *(v3 + 32) = (*(**v1 + 144))();
  return protocol witness for MetalFunctionNode.inputs.modify in conformance MetalFunctionNodeBase;
}

uint64_t (*protocol witness for MetalFunctionNode.inputs.modify in conformance MetalFunctionDefinitionNode(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  *a1 = v3;
  *(v3 + 32) = (*(**v1 + 168))();
  return protocol witness for MetalFunctionNode.inputs.modify in conformance MetalFunctionNodeBase;
}

uint64_t MetalStructGetterOffsetNode.__allocating_init(id:inputType:resultType:offset:)(uint64_t a1, uint64_t a2, uint64_t a3, int a4)
{
  result = swift_allocObject();
  v9 = MEMORY[0x277D84F90];
  *(result + 32) = a2;
  *(result + 40) = a3;
  *(result + 48) = a4;
  *(result + 16) = a1;
  *(result + 24) = v9;
  return result;
}

uint64_t MetalStructGetterOffsetNode.init(id:inputType:resultType:offset:)(uint64_t a1, uint64_t a2, uint64_t a3, int a4)
{
  v5 = MEMORY[0x277D84F90];
  *(v4 + 32) = a2;
  *(v4 + 40) = a3;
  *(v4 + 48) = a4;
  *(v4 + 16) = a1;
  *(v4 + 24) = v5;
  return v4;
}

uint64_t MetalStructGetterOffsetNode.debugLabel.getter()
{
  (*(*v0 + 120))();
  v1 = dispatch thunk of CustomStringConvertible.description.getter();
  MEMORY[0x266771550](v1);

  v2 = MEMORY[0x266771550](95, 0xE100000000000000);
  v3 = (*(*v0 + 168))(v2);
  v5 = *(v3 + 24);
  v4 = *(v3 + 32);

  MEMORY[0x266771550](0x657366666F204020, 0xEA00000000002074);
  v8 = v0[12];
  v6 = dispatch thunk of CustomStringConvertible.description.getter();
  MEMORY[0x266771550](v6);

  MEMORY[0x266771550](v5, v4);

  return 25705;
}

Swift::Void __swiftcall MetalStructGetterOffsetNode.setInputs(_:)(Swift::OpaquePointer a1)
{
  v2 = *(a1._rawValue + 2);
  v3 = MEMORY[0x277D84F90];
  if (v2)
  {
    v14 = MEMORY[0x277D84F90];
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v2, 0);
    v3 = v14;
    v5 = a1._rawValue + 32;
    do
    {
      outlined init with copy of MetalFunctionNode(v5, v11);
      v6 = v12;
      v7 = v13;
      __swift_project_boxed_opaque_existential_1(v11, v12);
      v8 = (*(v7 + 24))(v6, v7);
      __swift_destroy_boxed_opaque_existential_1Tm(v11);
      v14 = v3;
      v10 = *(v3 + 16);
      v9 = *(v3 + 24);
      if (v10 >= v9 >> 1)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v9 > 1), v10 + 1, 1);
        v3 = v14;
      }

      *(v3 + 16) = v10 + 1;
      *(v3 + 8 * v10 + 32) = v8;
      v5 += 40;
      --v2;
    }

    while (v2);
  }

  (*(*v1 + 152))(v3);
}

uint64_t MetalStructGetterOffsetNode.createMetalInvocation(in:)(uint64_t a1)
{
  v3 = v2;
  v4 = v1;
  v6 = (*(*v1 + 144))();
  v7 = *(v6 + 16);
  if (v7)
  {
    v46 = v1;
    v51 = MEMORY[0x277D84F90];
    v8 = &v51;
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v7, 0);
    v9 = 0;
    v10 = v51;
    v45 = a1;
    v11 = *(a1 + 16);
    v54 = (*v11 + 272);
    v47 = *v54;
    do
    {
      if (v9 >= *(v6 + 16))
      {
        __break(1u);
        goto LABEL_28;
      }

      v8 = v11;
      v47(v53, *(v6 + 8 * v9 + 32));
      if (v2)
      {

        return v8;
      }

      a1 = 0;
      v51 = v10;
      v13 = *(v10 + 16);
      v12 = *(v10 + 24);
      if (v13 >= v12 >> 1)
      {
        v8 = &v51;
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v12 > 1), v13 + 1, 1);
        v10 = v51;
      }

      v9 = (v9 + 1);
      *(v10 + 16) = v13 + 1;
      outlined init with take of MetalFunctionNode(v53, v10 + 40 * v13 + 32);
      v2 = 0;
    }

    while (v7 != v9);
    v3 = 0;

    a1 = v45;
    v4 = v46;
    if (!*(v10 + 16))
    {
      goto LABEL_15;
    }
  }

  else
  {

    v10 = MEMORY[0x277D84F90];
    if (!*(MEMORY[0x277D84F90] + 16))
    {
LABEL_15:
      __break(1u);
      goto LABEL_16;
    }
  }

  v14 = outlined init with copy of MetalFunctionNode(v10 + 32, v53);
  (*(*v4 + 168))(v14);
  type metadata accessor for MetalDataType.Pointer();
  if (swift_dynamicCastClass())
  {

    outlined init with copy of MetalFunctionNode(v53, &v51);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s11ShaderGraph17MetalFunctionNode_pMd, &_s11ShaderGraph17MetalFunctionNode_pMR);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s11ShaderGraph18HasMetalInvocation_pMd, &_s11ShaderGraph18HasMetalInvocation_pMR);
    swift_dynamicCast();
    v15 = v49;
    v16 = v50;
    v8 = __swift_project_boxed_opaque_existential_1(v48, v49);
    v17 = (*(v16 + 8))(a1, v15, v16);
    if (v3)
    {
      __swift_destroy_boxed_opaque_existential_1Tm(v53);
      __swift_destroy_boxed_opaque_existential_1Tm(v48);
      return v8;
    }

LABEL_16:
    v9 = v18;
    v10 = v17;
    v54 = v19;
    v20 = __swift_destroy_boxed_opaque_existential_1Tm(v48);
    v7 = *(*v4 + 192);
    a1 = v4;
    v8 = (v7)(v20);
    if (one-time initialization token for color3 != -1)
    {
LABEL_28:
      swift_once();
    }

    v21 = *(*v8 + 128);

    v23 = v21(v22);

    if (v23)
    {
      v51 = 0;
      v52 = 0xE000000000000000;
      _StringGuts.grow(_:)(32);
      v25 = v7();
      v26 = *(v25 + 24);
      v27 = *(v25 + 32);

      v51 = v26;
      v52 = v27;
      v28 = "(*(constant float3*)(";
    }

    else
    {
      v29 = (v7)(v24);
      if (one-time initialization token for color4 != -1)
      {
        swift_once();
      }

      v30 = *(*v29 + 128);

      v32 = v30(v31);

      if ((v32 & 1) == 0)
      {
        v51 = 0;
        v52 = 0xE000000000000000;
        _StringGuts.grow(_:)(24);

        v51 = 0x6174736E6F63282ALL;
        v52 = 0xEB0000000020746ELL;
        v40 = (v7)(v39);
        v41 = *(v40 + 24);
        v42 = *(v40 + 32);

        MEMORY[0x266771550](v41, v42);

        MEMORY[0x266771550](2631978, 0xE300000000000000);
        MEMORY[0x266771550](v10, v9);

        MEMORY[0x266771550](2108192, 0xE300000000000000);
        LODWORD(v48[0]) = *(a1 + 48);
        v43 = dispatch thunk of CustomStringConvertible.description.getter();
        MEMORY[0x266771550](v43);

        v37 = 41;
        v38 = 0xE100000000000000;
        goto LABEL_25;
      }

      v51 = 0;
      v52 = 0xE000000000000000;
      _StringGuts.grow(_:)(32);
      v33 = v7();
      v34 = *(v33 + 24);
      v35 = *(v33 + 32);

      v51 = v34;
      v52 = v35;
      v28 = "(*(constant float4*)(";
    }

    MEMORY[0x266771550](0xD000000000000015, (v28 - 32) | 0x8000000000000000);
    MEMORY[0x266771550](v10, v9);

    MEMORY[0x266771550](2108192, 0xE300000000000000);
    LODWORD(v48[0]) = *(a1 + 48);
    v36 = dispatch thunk of CustomStringConvertible.description.getter();
    MEMORY[0x266771550](v36);

    v37 = 10537;
    v38 = 0xE200000000000000;
LABEL_25:
    MEMORY[0x266771550](v37, v38);
    v8 = v51;
    __swift_destroy_boxed_opaque_existential_1Tm(v53);
    return v8;
  }

  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

void *MetalStructGetterOffsetNode.deinit()
{
  v1 = v0[3];

  v2 = v0[4];

  v3 = v0[5];

  return v0;
}

uint64_t MetalStructGetterOffsetNode.__deallocating_deinit()
{
  v1 = v0[3];

  v2 = v0[4];

  v3 = v0[5];

  return swift_deallocClassInstance();
}

uint64_t (*protocol witness for MetalFunctionNode.id.modify in conformance MetalStructGetterOffsetNode(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  *a1 = v3;
  *(v3 + 32) = (*(**v1 + 136))();
  return protocol witness for MetalFunctionNode.inputs.modify in conformance MetalFunctionNodeBase;
}

uint64_t (*protocol witness for MetalFunctionNode.inputs.modify in conformance MetalStructGetterOffsetNode(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  *a1 = v3;
  *(v3 + 32) = (*(**v1 + 160))();
  return protocol witness for MetalFunctionNode.inputs.modify in conformance MetalFunctionNodeBase;
}

uint64_t protocol witness for HasMetalInvocation.createMetalInvocation(in:) in conformance MetalStructGetterOffsetNode()
{
  result = (*(**v0 + 240))();
  if (v1)
  {
    return v3;
  }

  return result;
}

uint64_t MetalLiteralValueNode.inputs.setter(uint64_t a1)
{
  swift_beginAccess();
  v3 = *(v1 + 24);
  *(v1 + 24) = a1;
}

uint64_t MetalFunctionCallNode.resultType.getter()
{
  swift_beginAccess();
  v1 = *(v0 + 32);
}

uint64_t MetalStructGetterOffsetNode.resultType.getter()
{
  swift_beginAccess();
  v1 = *(v0 + 40);
}

uint64_t MetalStructGetterNode.fieldName.getter()
{
  v1 = *(v0 + 48);
  v2 = *(v0 + 56);

  return v1;
}

void *MetalStructGetterNode.__allocating_init(id:inputType:resultType:fieldName:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  result = swift_allocObject();
  v11 = MEMORY[0x277D84F90];
  result[4] = a2;
  result[5] = a3;
  result[6] = a4;
  result[7] = a5;
  result[2] = a1;
  result[3] = v11;
  return result;
}

void *MetalStructGetterNode.init(id:inputType:resultType:fieldName:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = MEMORY[0x277D84F90];
  v5[4] = a2;
  v5[5] = a3;
  v5[6] = a4;
  v5[7] = a5;
  v5[2] = a1;
  v5[3] = v6;
  return v5;
}

uint64_t MetalStructGetterNode.debugLabel.getter()
{
  (*(*v0 + 120))();
  v1 = dispatch thunk of CustomStringConvertible.description.getter();
  MEMORY[0x266771550](v1);

  v2 = MEMORY[0x266771550](95, 0xE100000000000000);
  v3 = (*(*v0 + 168))(v2);
  v5 = *(v3 + 24);
  v4 = *(v3 + 32);

  MEMORY[0x266771550](46, 0xE100000000000000);
  MEMORY[0x266771550](v0[6], v0[7]);

  MEMORY[0x266771550](v5, v4);

  return 25705;
}

Swift::Void __swiftcall MetalStructGetterNode.setInputs(_:)(Swift::OpaquePointer a1)
{
  v2 = *(a1._rawValue + 2);
  v3 = MEMORY[0x277D84F90];
  if (v2)
  {
    v14 = MEMORY[0x277D84F90];
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v2, 0);
    v3 = v14;
    v5 = a1._rawValue + 32;
    do
    {
      outlined init with copy of MetalFunctionNode(v5, v11);
      v6 = v12;
      v7 = v13;
      __swift_project_boxed_opaque_existential_1(v11, v12);
      v8 = (*(v7 + 24))(v6, v7);
      __swift_destroy_boxed_opaque_existential_1Tm(v11);
      v14 = v3;
      v10 = *(v3 + 16);
      v9 = *(v3 + 24);
      if (v10 >= v9 >> 1)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v9 > 1), v10 + 1, 1);
        v3 = v14;
      }

      *(v3 + 16) = v10 + 1;
      *(v3 + 8 * v10 + 32) = v8;
      v5 += 40;
      --v2;
    }

    while (v2);
  }

  (*(*v1 + 152))(v3);
}

void *MetalStructGetterNode.createMetalInvocation(in:)(void *a1)
{
  v3 = v2;
  v4 = v1;
  v6 = (*(*v1 + 144))();
  v7 = *(v6 + 16);
  if (v7)
  {
    v38 = v1;
    v43 = MEMORY[0x277D84F90];
    v8 = &v43;
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v7, 0);
    v9 = 0;
    v10 = v43;
    v37 = a1;
    v11 = a1[2];
    v46 = (*v11 + 272);
    v39 = *v46;
    do
    {
      if (v9 >= *(v6 + 16))
      {
        __break(1u);
        goto LABEL_33;
      }

      v8 = v11;
      (v39)(v45, *(v6 + 8 * v9 + 32));
      if (v2)
      {

        return v8;
      }

      a1 = 0;
      v43 = v10;
      v13 = v10[2];
      v12 = v10[3];
      if (v13 >= v12 >> 1)
      {
        v8 = &v43;
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v12 > 1), v13 + 1, 1);
        v10 = v43;
      }

      ++v9;
      v10[2] = v13 + 1;
      outlined init with take of MetalFunctionNode(v45, &v10[5 * v13 + 4]);
      v2 = 0;
    }

    while (v7 != v9);
    v3 = 0;

    a1 = v37;
    v4 = v38;
    if (!v10[2])
    {
      goto LABEL_14;
    }
  }

  else
  {

    v10 = MEMORY[0x277D84F90];
    if (!*(MEMORY[0x277D84F90] + 16))
    {
LABEL_14:
      __break(1u);
      goto LABEL_15;
    }
  }

  outlined init with copy of MetalFunctionNode((v10 + 4), v45);

  (*(*v4 + 168))(v14);
  type metadata accessor for MetalDataType.Reference();
  if (swift_dynamicCastClass())
  {

    v6 = 0xE100000000000000;
    v15 = 46;
    goto LABEL_21;
  }

LABEL_15:
  type metadata accessor for MetalDataType.Pointer();
  v16 = swift_dynamicCastClass();

  if (v16)
  {
    v15 = 15917;
  }

  else
  {
    v15 = 46;
  }

  if (v16)
  {
    v6 = 0xE200000000000000;
  }

  else
  {
    v6 = 0xE100000000000000;
  }

LABEL_21:
  outlined init with copy of MetalFunctionNode(v45, &v43);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s11ShaderGraph17MetalFunctionNode_pMd, &_s11ShaderGraph17MetalFunctionNode_pMR);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s11ShaderGraph18HasMetalInvocation_pMd, &_s11ShaderGraph18HasMetalInvocation_pMR);
  swift_dynamicCast();
  v17 = v41;
  v18 = v42;
  v8 = __swift_project_boxed_opaque_existential_1(v40, v41);
  v19 = (*(v18 + 8))(a1, v17, v18);
  if (v3)
  {
    __swift_destroy_boxed_opaque_existential_1Tm(v45);

    __swift_destroy_boxed_opaque_existential_1Tm(v40);
  }

  else
  {
    v9 = v20;
    v37 = v15;
    v39 = v19;
    v46 = v21;
    v22 = __swift_destroy_boxed_opaque_existential_1Tm(v40);
    v10 = *(*v4 + 192);
    a1 = v4;
    v8 = (v10)(v22);
    if (one-time initialization token for color3 != -1)
    {
LABEL_33:
      swift_once();
    }

    v23 = *(*v8 + 128);

    v25 = v23(v24);

    if (v25)
    {
      goto LABEL_28;
    }

    v27 = (v10)(v26);
    if (one-time initialization token for color4 != -1)
    {
      swift_once();
    }

    v28 = *(*v27 + 128);

    v30 = v28(v29);

    if (v30)
    {
LABEL_28:
      v31 = (v10)(v26);
      v32 = *(v31 + 24);
      v33 = *(v31 + 32);

      v43 = v32;
      v44 = v33;
      MEMORY[0x266771550](40, 0xE100000000000000);
      MEMORY[0x266771550](v39, v9);

      MEMORY[0x266771550](v37, v6);

      MEMORY[0x266771550](a1[6], a1[7]);
      v34 = 41;
      v35 = 0xE100000000000000;
    }

    else
    {
      v43 = v39;
      v44 = v9;
      MEMORY[0x266771550](v37, v6);

      v34 = a1[6];
      v35 = a1[7];
    }

    MEMORY[0x266771550](v34, v35);
    v8 = v43;
    __swift_destroy_boxed_opaque_existential_1Tm(v45);
  }

  return v8;
}

void *MetalStructGetterNode.deinit()
{
  v1 = v0[3];

  v2 = v0[4];

  v3 = v0[5];

  v4 = v0[7];

  return v0;
}

uint64_t MetalStructGetterNode.__deallocating_deinit()
{
  v1 = v0[3];

  v2 = v0[4];

  v3 = v0[5];

  v4 = v0[7];

  return swift_deallocClassInstance();
}

uint64_t (*protocol witness for MetalFunctionNode.id.modify in conformance MetalStructGetterNode(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  *a1 = v3;
  *(v3 + 32) = (*(**v1 + 136))();
  return protocol witness for MetalFunctionNode.inputs.modify in conformance MetalFunctionNodeBase;
}

uint64_t (*protocol witness for MetalFunctionNode.inputs.modify in conformance MetalStructGetterNode(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  *a1 = v3;
  *(v3 + 32) = (*(**v1 + 160))();
  return protocol witness for MetalFunctionNode.inputs.modify in conformance MetalFunctionNodeBase;
}

uint64_t protocol witness for HasMetalInvocation.createMetalInvocation(in:) in conformance MetalStructGetterNode()
{
  result = (*(**v0 + 240))();
  if (v1)
  {
    return v3;
  }

  return result;
}

uint64_t MetalPassthroughNode.id.setter(uint64_t a1)
{
  result = swift_beginAccess();
  *(v1 + 16) = a1;
  return result;
}

uint64_t MetalPassthroughNode.isConstExpr.setter(char a1)
{
  result = swift_beginAccess();
  *(v1 + 40) = a1;
  return result;
}

uint64_t MetalPassthroughNode.__allocating_init(id:resultType:)(uint64_t a1, uint64_t a2)
{
  result = swift_allocObject();
  v5 = MEMORY[0x277D84F90];
  *(result + 24) = a2;
  *(result + 32) = v5;
  *(result + 40) = 0;
  *(result + 16) = a1;
  return result;
}

uint64_t MetalPassthroughNode.init(id:resultType:)(uint64_t a1, uint64_t a2)
{
  v3 = MEMORY[0x277D84F90];
  *(v2 + 24) = a2;
  *(v2 + 32) = v3;
  *(v2 + 40) = 0;
  *(v2 + 16) = a1;
  return v2;
}

uint64_t MetalPassthroughNode.debugLabel.getter()
{
  (*(*v0 + 112))();
  HIDWORD(v6[1]) = -335544320;
  v1 = dispatch thunk of CustomStringConvertible.description.getter();
  MEMORY[0x266771550](v1);

  MEMORY[0x266771550](95, 0xE100000000000000);
  strcpy(v6, "passthrough(");
  v2 = v0[3];
  v3 = *(v2 + 24);
  v4 = *(v2 + 32);

  MEMORY[0x266771550](v3, v4);

  MEMORY[0x266771550](41, 0xE100000000000000);

  MEMORY[0x266771550](v6[0], v6[1]);

  return 25705;
}

uint64_t MetalPassthroughNode.deinit()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 32);

  return v0;
}

uint64_t MetalPassthroughNode.__deallocating_deinit()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 32);

  return swift_deallocClassInstance();
}

uint64_t (*protocol witness for MetalFunctionNode.id.modify in conformance MetalPassthroughNode(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  *a1 = v3;
  *(v3 + 32) = (*(**v1 + 128))();
  return protocol witness for MetalFunctionNode.inputs.modify in conformance MetalFunctionNodeBase;
}

uint64_t (*protocol witness for MetalFunctionNode.inputs.modify in conformance MetalPassthroughNode(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  *a1 = v3;
  *(v3 + 32) = (*(**v1 + 152))();
  return protocol witness for MetalFunctionNode.inputs.modify in conformance MetalFunctionNodeBase;
}

uint64_t (*protocol witness for MetalConstExprFunctionNode.isConstExpr.modify in conformance MetalPassthroughNode(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  *a1 = v3;
  *(v3 + 32) = (*(**v1 + 176))();
  return protocol witness for XMLNodePrivate.children.modify in conformance XMLParserDelegate.StringNode;
}

uint64_t MetalShaderProgram.createGetField(inputType:resultType:fieldName:)(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = *(v4 + 48);
  if (__OFADD__(v5, 1))
  {
    __break(1u);
  }

  else
  {
    v9 = result;
    *(v4 + 48) = v5 + 1;
    type metadata accessor for MetalStructGetterNode();
    v10 = swift_allocObject();
    v11 = MEMORY[0x277D84F90];
    v10[4] = v9;
    v10[5] = a2;
    v10[6] = a3;
    v10[7] = a4;
    v10[2] = v5;
    v10[3] = v11;

    v12 = specialized MetalShaderProgram.add<A>(_:)(v10);

    return v12;
  }

  return result;
}

uint64_t MetalShaderProgram.createStructGetterNode(inputType:resultType:offset:)(uint64_t result, uint64_t a2, int a3)
{
  v4 = *(v3 + 48);
  if (__OFADD__(v4, 1))
  {
    __break(1u);
  }

  else
  {
    v7 = result;
    *(v3 + 48) = v4 + 1;
    type metadata accessor for MetalStructGetterOffsetNode();
    v8 = swift_allocObject();
    v9 = MEMORY[0x277D84F90];
    *(v8 + 32) = v7;
    *(v8 + 40) = a2;
    *(v8 + 48) = a3;
    *(v8 + 16) = v4;
    *(v8 + 24) = v9;

    v10 = specialized MetalShaderProgram.add<A>(_:)(v8);

    return v10;
  }

  return result;
}

uint64_t key path setter for MetalShaderProgram.nodes : MetalShaderProgram(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  swift_beginAccess();
  v4 = *(v3 + 16);
  *(v3 + 16) = v2;
}

uint64_t MetalShaderProgram.nodes.getter()
{
  swift_beginAccess();
  v1 = *(v0 + 16);
}

uint64_t key path setter for MetalShaderProgram.nodeMap : MetalShaderProgram(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  swift_beginAccess();
  v4 = *(v3 + 24);
  *(v3 + 24) = v2;
}

uint64_t MetalLiteralValueNode.inputs.getter()
{
  swift_beginAccess();
  v1 = *(v0 + 24);
}

uint64_t MetalPassthroughNode.inputs.getter()
{
  swift_beginAccess();
  v1 = *(v0 + 32);
}

uint64_t MetalFunctionCallNode.resultType.setter(uint64_t a1, uint64_t (*a2)(uint64_t))
{
  swift_beginAccess();
  v5 = *(v2 + 32);
  *(v2 + 32) = a1;
  return a2(v5);
}

uint64_t MetalFunctionNodeBase.inputs.getter()
{
  swift_beginAccess();
  v1 = *(v0 + 40);
}

uint64_t MetalFunctionNodeBase.inputs.setter(uint64_t a1, uint64_t (*a2)(uint64_t))
{
  swift_beginAccess();
  v5 = *(v2 + 40);
  *(v2 + 40) = a1;
  return a2(v5);
}

char *MetalShaderProgram.importPaths.getter()
{
  v1 = (*(*v0 + 120))();
  v2 = *(v1 + 16);
  if (v2)
  {
    v3 = v1 + 32;
    v4 = MEMORY[0x277D84F90];
    do
    {
      outlined init with copy of MetalFunctionNode(v3, &v38);
      outlined init with take of MetalFunctionNode(&v38, v35);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v41 = v4;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v4 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v4[2] + 1, 1, v4);
        v41 = v4;
      }

      v7 = v4[2];
      v6 = v4[3];
      if (v7 >= v6 >> 1)
      {
        v4 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v6 > 1), v7 + 1, 1, v4);
        v41 = v4;
      }

      v8 = v36;
      v9 = v37;
      v10 = __swift_mutable_project_boxed_opaque_existential_1(v35, v36);
      v11 = *(*(v8 - 8) + 64);
      v12 = MEMORY[0x28223BE20](v10);
      v14 = &v35[-1] - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
      (*(v15 + 16))(v14, v12);
      specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)(v7, v14, &v41, v8, v9);
      __swift_destroy_boxed_opaque_existential_1Tm(v35);
      v3 += 40;
      --v2;
    }

    while (v2);

    v16 = v4[2];
    if (v16)
    {
      goto LABEL_9;
    }

LABEL_27:

    v18 = MEMORY[0x277D84F90];
LABEL_28:
    v30 = _sShyShyxGqd__nc7ElementQyd__RszSTRd__lufCSS_SaySSGTt0g5Tf4g_n(v18);

    v31 = *(v30 + 16);
    if (v31)
    {
      v32 = _ss22_ContiguousArrayBufferV19_uninitializedCount15minimumCapacityAByxGSi_SitcfCSS_Tt1g5(*(v30 + 16), 0);
      v33 = specialized Sequence._copySequenceContents(initializing:)(&v38, v32 + 4, v31, v30);
      outlined consume of [String : GeomPropDef].Iterator._Variant();
      if (v33 == v31)
      {
        return v32;
      }

      __break(1u);
    }

    return MEMORY[0x277D84F90];
  }

  v4 = MEMORY[0x277D84F90];
  v16 = *(MEMORY[0x277D84F90] + 16);
  if (!v16)
  {
    goto LABEL_27;
  }

LABEL_9:
  v17 = (v4 + 4);
  v18 = MEMORY[0x277D84F90];
  while (1)
  {
    outlined init with copy of MetalFunctionNode(v17, &v38);
    v20 = v39;
    v21 = v40;
    __swift_project_boxed_opaque_existential_1(&v38, v39);
    v22 = (*(v21 + 8))(v20, v21);
    result = __swift_destroy_boxed_opaque_existential_1Tm(&v38);
    v23 = *(v22 + 16);
    v24 = *(v18 + 2);
    v25 = v24 + v23;
    if (__OFADD__(v24, v23))
    {
      break;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if (result && v25 <= *(v18 + 3) >> 1)
    {
      if (*(v22 + 16))
      {
        goto LABEL_21;
      }
    }

    else
    {
      if (v24 <= v25)
      {
        v26 = v24 + v23;
      }

      else
      {
        v26 = v24;
      }

      result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(result, v26, 1, v18);
      v18 = result;
      if (*(v22 + 16))
      {
LABEL_21:
        if ((*(v18 + 3) >> 1) - *(v18 + 2) < v23)
        {
          goto LABEL_35;
        }

        swift_arrayInitWithCopy();

        if (v23)
        {
          v27 = *(v18 + 2);
          v28 = __OFADD__(v27, v23);
          v29 = v27 + v23;
          if (v28)
          {
            goto LABEL_36;
          }

          *(v18 + 2) = v29;
        }

        goto LABEL_11;
      }
    }

    if (v23)
    {
      goto LABEL_34;
    }

LABEL_11:
    v17 += 40;
    if (!--v16)
    {

      goto LABEL_28;
    }
  }

  __break(1u);
LABEL_34:
  __break(1u);
LABEL_35:
  __break(1u);
LABEL_36:
  __break(1u);
  return result;
}

void *MetalShaderProgram.init()()
{
  v1 = MEMORY[0x277D84F90];
  v0[2] = MEMORY[0x277D84F90];
  v0[3] = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfC11ShaderGraph14FunctionNodeIDV_AC05MetaleF0_pTt0g5Tf4g_n(v1);
  v0[4] = v1;
  v0[5] = v1;
  v0[6] = 1;
  return v0;
}

uint64_t MetalShaderProgram.generateMetalSource(in:)(uint64_t a1)
{
  v23 = a1;
  v3 = (*(*v1 + 120))();
  v4 = *(v3 + 16);
  if (!v4)
  {

    v6 = MEMORY[0x277D84F90];
    v10 = *(MEMORY[0x277D84F90] + 16);
    if (!v10)
    {
    }

    goto LABEL_16;
  }

  v5 = v3 + 32;
  v6 = MEMORY[0x277D84F90];
  do
  {
    outlined init with copy of MetalFunctionNode(v5, &v20);
    outlined init with take of MetalFunctionNode(&v20, v19);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s11ShaderGraph17MetalFunctionNode_pMd, &_s11ShaderGraph17MetalFunctionNode_pMR);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s11ShaderGraph20MetalSourceGenerator_pMd, &_s11ShaderGraph20MetalSourceGenerator_pMR);
    if ((swift_dynamicCast() & 1) == 0)
    {
      v18 = 0;
      v16 = 0u;
      v17 = 0u;
LABEL_4:
      outlined destroy of [Input](&v16, &_s11ShaderGraph20MetalSourceGenerator_pSgMd, &_s11ShaderGraph20MetalSourceGenerator_pSgMR);
      goto LABEL_5;
    }

    if (!*(&v17 + 1))
    {
      goto LABEL_4;
    }

    outlined init with take of MetalFunctionNode(&v16, v19);
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v6 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v6[2] + 1, 1, v6);
    }

    v8 = v6[2];
    v7 = v6[3];
    if (v8 >= v7 >> 1)
    {
      v6 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v7 > 1), v8 + 1, 1, v6);
    }

    v6[2] = v8 + 1;
    outlined init with take of MetalFunctionNode(v19, &v6[5 * v8 + 4]);
LABEL_5:
    v5 += 40;
    --v4;
  }

  while (v4);

  v10 = v6[2];
  if (!v10)
  {
  }

LABEL_16:
  v11 = 0;
  v12 = (v6 + 4);
  v13 = v23;
  while (v11 < v6[2])
  {
    outlined init with copy of MetalFunctionNode(v12, &v20);
    v14 = v21;
    v15 = v22;
    __swift_project_boxed_opaque_existential_1(&v20, v21);
    (*(v15 + 8))(v13, v14, v15);
    if (v2)
    {

      return __swift_destroy_boxed_opaque_existential_1Tm(&v20);
    }

    ++v11;
    result = __swift_destroy_boxed_opaque_existential_1Tm(&v20);
    v12 += 40;
    if (v10 == v11)
    {
    }
  }

  __break(1u);
  return result;
}

uint64_t MetalShaderProgram.node(withIdentifier:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = (*(*v2 + 144))();
  if (*(v5 + 16) && (v6 = specialized __RawDictionaryStorage.find<A>(_:)(a1), (v7 & 1) != 0))
  {
    outlined init with copy of MetalFunctionNode(*(v5 + 56) + 40 * v6, a2);
  }

  else
  {

    lazy protocol witness table accessor for type MetalFunctionGraphError and conformance MetalFunctionGraphError();
    swift_allocError();
    *v9 = 1;
    *(v9 + 8) = 0;
    *(v9 + 16) = 0;
    *(v9 + 24) = 0;
    *(v9 + 32) = 4;
    *(v9 + 40) = 0;
    *(v9 + 48) = 0;
    *(v9 + 56) = MEMORY[0x277D84F90];
    return swift_willThrow();
  }
}

uint64_t MetalShaderProgram.filtered(by:)(uint64_t a1, uint64_t a2)
{
  v4 = v2;
  v7 = *(*v2 + 120);
  v8 = v7();
  result = specialized _ArrayProtocol.filter(_:)(a1, a2, v8);
  if (v3)
  {
    return result;
  }

  v10 = result;
  swift_beginAccess();
  v11 = *(v4 + 16);
  *(v4 + 16) = v10;

  swift_beginAccess();
  if (*(*(v4 + 24) + 16))
  {
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *&v36[0] = *(v4 + 24);
    *(v4 + 24) = 0x8000000000000000;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss17_NativeDictionaryVy11ShaderGraph14FunctionNodeIDVAC05MetaleF0_pGMd, &_ss17_NativeDictionaryVy11ShaderGraph14FunctionNodeIDVAC05MetaleF0_pGMR);
    _NativeDictionary.removeAll(isUnique:)(isUniquelyReferenced_nonNull_native);
    *(v4 + 24) = *&v36[0];
  }

  v13 = swift_endAccess();
  v14 = (v7)(v13);
  v15 = *(v14 + 16);
  if (!v15)
  {
  }

  for (i = v14 + 32; ; i += 40)
  {
    outlined init with copy of MetalFunctionNode(i, v37);
    v18 = v38;
    v19 = v39;
    __swift_project_boxed_opaque_existential_1(v37, v38);
    v20 = (*(v19 + 24))(v18, v19);
    swift_beginAccess();
    outlined init with copy of MetalFunctionNode(v37, v36);
    v21 = *(v4 + 24);
    v22 = swift_isUniquelyReferenced_nonNull_native();
    v40 = *(v4 + 24);
    v23 = v40;
    *(v4 + 24) = 0x8000000000000000;
    v24 = specialized __RawDictionaryStorage.find<A>(_:)(v20);
    v26 = v23[2];
    v27 = (v25 & 1) == 0;
    v28 = __OFADD__(v26, v27);
    v29 = v26 + v27;
    if (v28)
    {
      break;
    }

    v30 = v25;
    if (v23[3] < v29)
    {
      specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v29, v22);
      v24 = specialized __RawDictionaryStorage.find<A>(_:)(v20);
      if ((v30 & 1) != (v31 & 1))
      {
        goto LABEL_22;
      }

LABEL_13:
      v32 = v40;
      if (v30)
      {
        goto LABEL_6;
      }

      goto LABEL_14;
    }

    if (v22)
    {
      goto LABEL_13;
    }

    v35 = v24;
    specialized _NativeDictionary.copy()();
    v24 = v35;
    v32 = v40;
    if (v30)
    {
LABEL_6:
      v17 = (v32[7] + 40 * v24);
      __swift_destroy_boxed_opaque_existential_1Tm(v17);
      outlined init with take of MetalFunctionNode(v36, v17);
      goto LABEL_7;
    }

LABEL_14:
    v32[(v24 >> 6) + 8] |= 1 << v24;
    *(v32[6] + 8 * v24) = v20;
    outlined init with take of MetalFunctionNode(v36, v32[7] + 40 * v24);
    v33 = v32[2];
    v28 = __OFADD__(v33, 1);
    v34 = v33 + 1;
    if (v28)
    {
      goto LABEL_21;
    }

    v32[2] = v34;
LABEL_7:
    *(v4 + 24) = v32;
    swift_endAccess();
    __swift_destroy_boxed_opaque_existential_1Tm(v37);
    if (!--v15)
    {
    }
  }

  __break(1u);
LABEL_21:
  __break(1u);
LABEL_22:
  result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return result;
}

void *MetalShaderProgram.deinit()
{
  v1 = v0[2];

  v2 = v0[3];

  v3 = v0[4];

  v4 = v0[5];

  return v0;
}

uint64_t MetalShaderProgram.__deallocating_deinit()
{
  v1 = v0[2];

  v2 = v0[3];

  v3 = v0[4];

  v4 = v0[5];

  return swift_deallocClassInstance();
}

uint64_t MetalShaderProgram.allNodesUpstream(of:)(void *a1)
{
  v6 = MEMORY[0x277D84FA0];
  v5 = MEMORY[0x277D84FA0];
  v3 = MEMORY[0x277D84F90];
  v4 = MEMORY[0x277D84F90];
  MetalShaderProgram._dfsHelper(node:visited:onStack:preOrder:postOrder:)(a1, &v6, &v5, &v4, &v3);

  if (v1)
  {
  }

  else
  {
    return v4;
  }
}

uint64_t MetalShaderProgram._dfsHelper(node:visited:onStack:preOrder:postOrder:)(void *a1, uint64_t *a2, uint64_t *a3, uint64_t *a4, uint64_t *a5)
{
  v7 = v6;
  v8 = v5;
  v76 = a5;
  v13 = a1[3];
  v14 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v13);
  v15 = (*(v14 + 24))(v13, v14);
  v80 = a3;
  specialized Set._Variant.insert(_:)(v77, v15);
  v16 = a1[3];
  v17 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v16);
  v18 = (*(v17 + 24))(v16, v17);
  specialized Set._Variant.insert(_:)(v77, v18);
  v73 = a1;
  outlined init with copy of MetalFunctionNode(a1, v77);
  v19 = *a4;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v75 = a4;
  *a4 = v19;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
LABEL_30:
    v19 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v19[2] + 1, 1, v19);
    *v75 = v19;
  }

  v22 = v19[2];
  v21 = v19[3];
  if (v22 >= v21 >> 1)
  {
    v19 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v21 > 1), v22 + 1, 1, v19);
    *v75 = v19;
  }

  v24 = v78;
  v23 = v79;
  v25 = __swift_mutable_project_boxed_opaque_existential_1(v77, v78);
  v26 = *(*(v24 - 8) + 64);
  v27 = MEMORY[0x28223BE20](v25);
  v29 = &v72 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v30 + 16))(v29, v27);
  v31 = v22;
  v32 = v75;
  specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)(v31, v29, v75, v24, v23);
  __swift_destroy_boxed_opaque_existential_1Tm(v77);
  *v32 = v19;
  v33 = v73[3];
  v34 = v73[4];
  v19 = __swift_project_boxed_opaque_existential_1(v73, v33);
  v35 = (*(v34 + 48))(v33, v34);
  v36 = v35;
  v37 = *(v35 + 16);
  if (!v37)
  {
LABEL_22:

    outlined init with copy of MetalFunctionNode(v73, v77);
    v52 = v76;
    v53 = *v76;
    v54 = swift_isUniquelyReferenced_nonNull_native();
    *v52 = v53;
    if ((v54 & 1) == 0)
    {
      v53 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v53[2] + 1, 1, v53);
      *v76 = v53;
    }

    v56 = v53[2];
    v55 = v53[3];
    if (v56 >= v55 >> 1)
    {
      v53 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v55 > 1), v56 + 1, 1, v53);
      *v76 = v53;
    }

    v57 = v78;
    v58 = v79;
    v59 = __swift_mutable_project_boxed_opaque_existential_1(v77, v78);
    v60 = *(*(v57 - 8) + 64);
    v61 = MEMORY[0x28223BE20](v59);
    v63 = &v72 - ((v62 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v64 + 16))(v63, v61);
    v65 = v56;
    v66 = v76;
    specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)(v65, v63, v76, v57, v58);
    __swift_destroy_boxed_opaque_existential_1Tm(v77);
    *v66 = v53;
    v67 = v73[3];
    v68 = v73[4];
    __swift_project_boxed_opaque_existential_1(v73, v67);
    v69 = (*(v68 + 24))(v67, v68);
    return specialized Set._Variant.remove(_:)(v69);
  }

  v38 = 0;
  v74 = v35 + 32;
  while (1)
  {
    if (v38 >= *(v36 + 16))
    {
      __break(1u);
      goto LABEL_30;
    }

    v39 = *(v74 + 8 * v38);
    v40 = *a2;
    if (*(*a2 + 16))
    {
      v41 = *(v40 + 40);
      Hasher.init(_seed:)();
      v19 = v77;
      MEMORY[0x266772770](v39);
      v42 = Hasher._finalize()();
      v43 = -1 << *(v40 + 32);
      v44 = v42 & ~v43;
      if ((*(v40 + 56 + ((v44 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v44))
      {
        break;
      }
    }

LABEL_12:
    (*(*v8 + 272))(v77, v39);
    if (v7)
    {
    }

    v19 = v8;
    MetalShaderProgram._dfsHelper(node:visited:onStack:preOrder:postOrder:)(v77, a2, v80, v75, v76);
    v7 = 0;
    __swift_destroy_boxed_opaque_existential_1Tm(v77);
LABEL_14:
    if (++v38 == v37)
    {
      goto LABEL_22;
    }
  }

  v45 = ~v43;
  while (*(*(v40 + 48) + 8 * v44) != v39)
  {
    v44 = (v44 + 1) & v45;
    if (((*(v40 + 56 + ((v44 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v44) & 1) == 0)
    {
      goto LABEL_12;
    }
  }

  v46 = *v80;
  if (!*(*v80 + 16))
  {
    goto LABEL_14;
  }

  v47 = *(v46 + 40);
  Hasher.init(_seed:)();
  v19 = v77;
  MEMORY[0x266772770](v39);
  v48 = Hasher._finalize()();
  v49 = -1 << *(v46 + 32);
  v50 = v48 & ~v49;
  if (((*(v46 + 56 + ((v50 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v50) & 1) == 0)
  {
    goto LABEL_14;
  }

  v51 = ~v49;
  while (*(*(v46 + 48) + 8 * v50) != v39)
  {
    v50 = (v50 + 1) & v51;
    if (((*(v46 + 56 + ((v50 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v50) & 1) == 0)
    {
      goto LABEL_14;
    }
  }

  lazy protocol witness table accessor for type MetalFunctionGraphError and conformance MetalFunctionGraphError();
  swift_allocError();
  *v71 = 0u;
  *(v71 + 16) = 0u;
  *(v71 + 32) = 4;
  *(v71 + 40) = 0;
  *(v71 + 48) = 0;
  *(v71 + 56) = MEMORY[0x277D84F90];
  return swift_willThrow();
}

uint64_t MetalShaderProgram.parameterNodes(connectedTo:)(void *a1)
{
  result = MetalShaderProgram.allNodesUpstream(of:)(a1);
  if (v2)
  {
    return v1;
  }

  v4 = result;
  v5 = *(result + 16);
  v6 = MEMORY[0x277D84F90];
  if (!v5)
  {
LABEL_13:

    v18 = MEMORY[0x277D84F90];
    v12 = *(v6 + 16);
    if (v12)
    {
      v13 = v6 + 32;
      v1 = MEMORY[0x277D84F90];
      do
      {
        outlined init with copy of MetalFunctionNode(v13, v17);
        outlined init with take of MetalFunctionNode(v17, v16);
        __swift_instantiateConcreteTypeFromMangledNameV2(&_s11ShaderGraph17MetalFunctionNode_pMd, &_s11ShaderGraph17MetalFunctionNode_pMR);
        type metadata accessor for MetalFunctionParameterNode();
        if ((swift_dynamicCast() & 1) != 0 && v15)
        {
          MEMORY[0x266771770]();
          if (*((v18 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v18 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
          {
            v14 = *((v18 & 0xFFFFFFFFFFFFFF8) + 0x10);
            specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
          }

          specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
          v1 = v18;
        }

        v13 += 40;
        --v12;
      }

      while (v12);
    }

    else
    {

      return MEMORY[0x277D84F90];
    }

    return v1;
  }

  v7 = 0;
  v8 = result + 32;
  while (v7 < *(v4 + 16))
  {
    outlined init with copy of MetalFunctionNode(v8, v17);
    outlined init with copy of MetalFunctionNode(v17, v16);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s11ShaderGraph17MetalFunctionNode_pMd, &_s11ShaderGraph17MetalFunctionNode_pMR);
    type metadata accessor for MetalFunctionParameterNode();
    if (swift_dynamicCast())
    {

      outlined init with take of MetalFunctionNode(v17, v16);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v18 = v6;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v6 + 16) + 1, 1);
        v6 = v18;
      }

      v11 = *(v6 + 16);
      v10 = *(v6 + 24);
      if (v11 >= v10 >> 1)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v10 > 1), v11 + 1, 1);
        v6 = v18;
      }

      *(v6 + 16) = v11 + 1;
      result = outlined init with take of MetalFunctionNode(v16, v6 + 40 * v11 + 32);
    }

    else
    {
      result = __swift_destroy_boxed_opaque_existential_1Tm(v17);
    }

    ++v7;
    v8 += 40;
    if (v5 == v7)
    {
      goto LABEL_13;
    }
  }

  __break(1u);
  return result;
}

uint64_t specialized _NativeDictionary._insert(at:key:value:)(unint64_t a1, uint64_t a2, __int128 *a3, void *a4)
{
  a4[(a1 >> 6) + 8] |= 1 << a1;
  *(a4[6] + 8 * a1) = a2;
  result = outlined init with take of MetalFunctionNode(a3, a4[7] + 40 * a1);
  v6 = a4[2];
  v7 = __OFADD__(v6, 1);
  v8 = v6 + 1;
  if (v7)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v8;
  }

  return result;
}

unint64_t specialized _NativeDictionary._insert(at:key:value:)(unint64_t result, uint64_t a2, uint64_t a3, void *a4)
{
  a4[(result >> 6) + 8] |= 1 << result;
  v4 = a4[6] + 56 * result;
  v5 = *(a2 + 16);
  *v4 = *a2;
  *(v4 + 16) = v5;
  *(v4 + 32) = *(a2 + 32);
  *(v4 + 48) = *(a2 + 48);
  *(a4[7] + 8 * result) = a3;
  v6 = a4[2];
  v7 = __OFADD__(v6, 1);
  v8 = v6 + 1;
  if (v7)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v8;
  }

  return result;
}

{
  a4[(result >> 6) + 8] |= 1 << result;
  v4 = a4[6] + 40 * result;
  v5 = *(a2 + 16);
  *v4 = *a2;
  *(v4 + 16) = v5;
  *(v4 + 32) = *(a2 + 32);
  *(a4[7] + 8 * result) = a3;
  v6 = a4[2];
  v7 = __OFADD__(v6, 1);
  v8 = v6 + 1;
  if (v7)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v8;
  }

  return result;
}

{
  a4[(result >> 6) + 8] |= 1 << result;
  *(a4[6] + 8 * result) = a2;
  *(a4[7] + 8 * result) = a3;
  v4 = a4[2];
  v5 = __OFADD__(v4, 1);
  v6 = v4 + 1;
  if (v5)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v6;
  }

  return result;
}

unint64_t specialized _NativeDictionary._insert(at:key:value:)(unint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  a5[(result >> 6) + 8] |= 1 << result;
  v5 = (a5[6] + 16 * result);
  *v5 = a2;
  v5[1] = a3;
  v6 = a5[7] + 152 * result;
  v7 = *(a4 + 80);
  *(v6 + 64) = *(a4 + 64);
  *(v6 + 80) = v7;
  v8 = *(a4 + 48);
  *(v6 + 32) = *(a4 + 32);
  *(v6 + 48) = v8;
  *(v6 + 144) = *(a4 + 144);
  v9 = *(a4 + 128);
  *(v6 + 112) = *(a4 + 112);
  *(v6 + 128) = v9;
  *(v6 + 96) = *(a4 + 96);
  v10 = *(a4 + 16);
  *v6 = *a4;
  *(v6 + 16) = v10;
  v11 = a5[2];
  v12 = __OFADD__(v11, 1);
  v13 = v11 + 1;
  if (v12)
  {
    __break(1u);
  }

  else
  {
    a5[2] = v13;
  }

  return result;
}

{
  a5[(result >> 6) + 8] |= 1 << result;
  v5 = (a5[6] + 16 * result);
  *v5 = a2;
  v5[1] = a3;
  *(a5[7] + 8 * result) = a4;
  v6 = a5[2];
  v7 = __OFADD__(v6, 1);
  v8 = v6 + 1;
  if (v7)
  {
    __break(1u);
  }

  else
  {
    a5[2] = v8;
  }

  return result;
}

{
  a5[(result >> 6) + 8] |= 1 << result;
  *(a5[6] + 8 * result) = a2;
  v5 = (a5[7] + 16 * result);
  *v5 = a3;
  v5[1] = a4;
  v6 = a5[2];
  v7 = __OFADD__(v6, 1);
  v8 = v6 + 1;
  if (v7)
  {
    __break(1u);
  }

  else
  {
    a5[2] = v8;
  }

  return result;
}

unint64_t specialized _NativeDictionary._insert(at:key:value:)(unint64_t result, uint64_t a2, _OWORD *a3, void *a4)
{
  a4[(result >> 6) + 8] |= 1 << result;
  *(a4[6] + 8 * result) = a2;
  v4 = (a4[7] + 48 * result);
  v5 = a3[1];
  *v4 = *a3;
  v4[1] = v5;
  v4[2] = a3[2];
  v6 = a4[2];
  v7 = __OFADD__(v6, 1);
  v8 = v6 + 1;
  if (v7)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v8;
  }

  return result;
}

unint64_t specialized _NativeDictionary._insert(at:key:value:)(unint64_t result, _OWORD *a2, _OWORD *a3, void *a4)
{
  a4[(result >> 6) + 8] |= 1 << result;
  v4 = (a4[6] + 80 * result);
  v5 = a2[3];
  v4[2] = a2[2];
  v4[3] = v5;
  v4[4] = a2[4];
  v6 = a2[1];
  *v4 = *a2;
  v4[1] = v6;
  v7 = (a4[7] + 48 * result);
  v8 = a3[1];
  *v7 = *a3;
  v7[1] = v8;
  *(v7 + 25) = *(a3 + 25);
  v9 = a4[2];
  v10 = __OFADD__(v9, 1);
  v11 = v9 + 1;
  if (v10)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v11;
  }

  return result;
}

unint64_t specialized _NativeDictionary._insert(at:key:value:)(unint64_t result, _OWORD *a2, uint64_t a3, uint64_t a4, void *a5)
{
  a5[(result >> 6) + 8] |= 1 << result;
  v5 = (a5[6] + 80 * result);
  v6 = a2[3];
  v5[2] = a2[2];
  v5[3] = v6;
  v5[4] = a2[4];
  v7 = a2[1];
  *v5 = *a2;
  v5[1] = v7;
  v8 = (a5[7] + 16 * result);
  *v8 = a3;
  v8[1] = a4;
  v9 = a5[2];
  v10 = __OFADD__(v9, 1);
  v11 = v9 + 1;
  if (v10)
  {
    __break(1u);
  }

  else
  {
    a5[2] = v11;
  }

  return result;
}

uint64_t specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4, uint64_t a5)
{
  v13 = a4;
  v14 = a5;
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(&v12);
  (*(*(a4 - 8) + 32))(boxed_opaque_existential_0, a2, a4);
  v10 = *a3;
  *(v10 + 16) = a1 + 1;
  return outlined init with take of MetalFunctionNode(&v12, v10 + 40 * a1 + 32);
}

uint64_t specialized Sequence.compactMap<A>(_:)(uint64_t result, uint64_t a2, uint64_t a3, char **a4)
{
  v4 = *(result + 16);
  if (!v4)
  {
    return MEMORY[0x277D84F90];
  }

  v6 = 0;
  v7 = result + 32;
  v8 = MEMORY[0x277D84F90];
  v22 = result + 32;
  do
  {
    v23 = v8;
    v9 = (v7 + 40 * v6);
    for (i = v6; ; ++i)
    {
      if (i >= v4)
      {
        __break(1u);
LABEL_23:
        __break(1u);
        return result;
      }

      v6 = i + 1;
      if (__OFADD__(i, 1))
      {
        goto LABEL_23;
      }

      v11 = (*(*a2 + 296))(v9);
      if (!v12)
      {
        v11 = closure #1 in implicit closure #1 in closure #2 in defaultCreateMetalInvocation(in:for:functionDefinitionName:)(v9, a3, a2, a4);
        if (v26)
        {
          v8 = v23;

          return v8;
        }
      }

      v13 = v12;
      v27 = v11;
      v15 = v9[3];
      v14 = v9[4];
      __swift_project_boxed_opaque_existential_1(v9, v15);
      v16 = (*(v14 + 16))(v15, v14);
      if (one-time initialization token for void != -1)
      {
        swift_once();
      }

      v17 = (*(*v16 + 128))(static MetalDataType.void);

      if ((v17 & 1) == 0)
      {
        break;
      }

      v9 += 5;
      if (v6 == v4)
      {
        return v23;
      }
    }

    v8 = v23;
    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
      result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v23 + 16) + 1, 1, v23);
      v8 = result;
    }

    v7 = v22;
    v19 = *(v8 + 16);
    v18 = *(v8 + 24);
    v20 = v27;
    if (v19 >= v18 >> 1)
    {
      result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v18 > 1), v19 + 1, 1, v8);
      v8 = result;
      v20 = v27;
    }

    *(v8 + 16) = v19 + 1;
    v21 = v8 + 16 * v19;
    *(v21 + 32) = v20;
    *(v21 + 40) = v13;
  }

  while (v6 != v4);
  return v8;
}

unint64_t lazy protocol witness table accessor for type MetalFunctionGraphError and conformance MetalFunctionGraphError()
{
  result = lazy protocol witness table cache variable for type MetalFunctionGraphError and conformance MetalFunctionGraphError;
  if (!lazy protocol witness table cache variable for type MetalFunctionGraphError and conformance MetalFunctionGraphError)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MetalFunctionGraphError and conformance MetalFunctionGraphError);
  }

  return result;
}

uint64_t sub_265EDFABC@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*(**a1 + 120))();
  *a2 = result;
  return result;
}

uint64_t sub_265EDFB50@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*(**a1 + 144))();
  *a2 = result;
  return result;
}

uint64_t sub_265EDFB9C(uint64_t *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = *(**a2 + 152);

  return v3(v4);
}

uint64_t sub_265EDFBF0@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*(**a1 + 168))();
  *a2 = result;
  a2[1] = v4;
  return result;
}

uint64_t sub_265EDFC3C(uint64_t *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *(**a2 + 176);

  return v4(v2, v3);
}

uint64_t sub_265EDFCA4@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*(**a1 + 192))();
  *a2 = result;
  return result;
}

uint64_t sub_265EDFCF0(uint64_t *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = *(**a2 + 200);

  return v3(v4);
}

uint64_t sub_265EDFD44@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*(**a1 + 120))();
  *a2 = result;
  return result;
}

uint64_t sub_265EDFDD8@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*(**a1 + 144))();
  *a2 = result;
  return result;
}

uint64_t sub_265EDFE24(uint64_t *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = *(**a2 + 152);

  return v3(v4);
}

uint64_t sub_265EDFE78@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*(**a1 + 168))();
  *a2 = result;
  return result;
}

uint64_t sub_265EDFEC4(uint64_t *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = *(**a2 + 176);

  return v3(v4);
}

__n128 sub_265EDFF18@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  (*(**a1 + 192))(v5);
  v3 = v5[3];
  *(a2 + 32) = v5[2];
  *(a2 + 48) = v3;
  *(a2 + 64) = v6;
  result = v5[1];
  *a2 = v5[0];
  *(a2 + 16) = result;
  return result;
}

uint64_t sub_265EDFF84(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 48);
  v7[2] = *(a1 + 32);
  v7[3] = v2;
  v8 = *(a1 + 64);
  v3 = *(a1 + 16);
  v7[0] = *a1;
  v7[1] = v3;
  v4 = *(**a2 + 200);
  outlined init with copy of SGDataTypeStorage(v7, &v6);
  return v4(v7);
}

uint64_t sub_265EE0000@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  result = (*(**a1 + 216))();
  *a2 = result & 1;
  return result;
}

uint64_t sub_265EE0098@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*(**a1 + 120))();
  *a2 = result;
  return result;
}

uint64_t sub_265EE012C@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*(**a1 + 144))();
  *a2 = result;
  return result;
}

uint64_t sub_265EE0178(uint64_t *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = *(**a2 + 152);

  return v3(v4);
}

uint64_t sub_265EE01CC@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*(**a1 + 168))();
  *a2 = result;
  return result;
}

uint64_t sub_265EE0218(uint64_t *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = *(**a2 + 176);

  return v3(v4);
}

uint64_t sub_265EE026C@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  result = (*(**a1 + 192))();
  *a2 = result & 1;
  return result;
}

uint64_t sub_265EE0304@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*(**a1 + 112))();
  *a2 = result;
  return result;
}

uint64_t sub_265EE0398@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*(**a1 + 136))();
  *a2 = result;
  return result;
}

uint64_t sub_265EE03E4(uint64_t *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = *(**a2 + 144);

  return v3(v4);
}

uint64_t sub_265EE0438@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*(**a1 + 160))();
  *a2 = result;
  a2[1] = v4;
  return result;
}

uint64_t sub_265EE0484(uint64_t *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *(**a2 + 168);

  return v4(v2, v3);
}

uint64_t sub_265EE04EC@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*(**a1 + 128))();
  *a2 = result;
  return result;
}

uint64_t sub_265EE0580@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*(**a1 + 152))();
  *a2 = result;
  return result;
}

uint64_t sub_265EE05CC(uint64_t *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = *(**a2 + 160);

  return v3(v4);
}

uint64_t sub_265EE0620@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*(**a1 + 176))();
  *a2 = result;
  return result;
}

uint64_t sub_265EE066C(uint64_t *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = *(**a2 + 184);

  return v3(v4);
}

uint64_t sub_265EE06C0@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*(**a1 + 200))();
  *a2 = result;
  a2[1] = v4;
  return result;
}

uint64_t sub_265EE070C(uint64_t *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *(**a2 + 208);

  return v4(v2, v3);
}

uint64_t sub_265EE0774@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*(**a1 + 224))();
  *a2 = result;
  return result;
}

uint64_t sub_265EE07C0(uint64_t *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = *(**a2 + 232);

  return v3(v4);
}

uint64_t sub_265EE0814@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*(**a1 + 120))();
  *a2 = result;
  return result;
}

uint64_t sub_265EE08A8@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*(**a1 + 144))();
  *a2 = result;
  return result;
}

uint64_t sub_265EE08F4(uint64_t *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = *(**a2 + 152);

  return v3(v4);
}

uint64_t sub_265EE0948@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*(**a1 + 168))();
  *a2 = result;
  return result;
}

uint64_t sub_265EE0994(uint64_t *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = *(**a2 + 176);

  return v3(v4);
}

uint64_t sub_265EE09E8@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*(**a1 + 192))();
  *a2 = result;
  return result;
}

uint64_t sub_265EE0A34(uint64_t *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = *(**a2 + 200);

  return v3(v4);
}

uint64_t sub_265EE0A88@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*(**a1 + 120))();
  *a2 = result;
  return result;
}

uint64_t sub_265EE0B1C@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*(**a1 + 144))();
  *a2 = result;
  return result;
}

uint64_t sub_265EE0B68(uint64_t *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = *(**a2 + 152);

  return v3(v4);
}

uint64_t sub_265EE0BBC@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*(**a1 + 168))();
  *a2 = result;
  return result;
}

uint64_t sub_265EE0C08(uint64_t *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = *(**a2 + 176);

  return v3(v4);
}

uint64_t sub_265EE0C5C@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*(**a1 + 192))();
  *a2 = result;
  return result;
}

uint64_t sub_265EE0CA8(uint64_t *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = *(**a2 + 200);

  return v3(v4);
}

uint64_t sub_265EE0CFC@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*(**a1 + 112))();
  *a2 = result;
  return result;
}

uint64_t sub_265EE0D90@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*(**a1 + 136))();
  *a2 = result;
  return result;
}

uint64_t sub_265EE0DDC(uint64_t *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = *(**a2 + 144);

  return v3(v4);
}

uint64_t sub_265EE0E30@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  result = (*(**a1 + 160))();
  *a2 = result & 1;
  return result;
}

uint64_t sub_265EE0EC8@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*(**a1 + 120))();
  *a2 = result;
  return result;
}

uint64_t sub_265EE0F18@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*(**a1 + 144))();
  *a2 = result;
  return result;
}

uint64_t sub_265EE0F68@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*(**a1 + 168))();
  *a2 = result;
  return result;
}

uint64_t sub_265EE0FB4(uint64_t *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = *(**a2 + 176);

  return v3(v4);
}

uint64_t sub_265EE1008@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*(**a1 + 192))();
  *a2 = result;
  return result;
}

uint64_t sub_265EE1054(uint64_t *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = *(**a2 + 200);

  return v3(v4);
}

uint64_t dispatch thunk of MetalLiteralValueNode.value.setter(uint64_t a1)
{
  v2 = *(a1 + 64);
  v3 = *(*v1 + 200);
  v4 = *(a1 + 16);
  v7[0] = *a1;
  v7[1] = v4;
  v5 = *(a1 + 48);
  v7[2] = *(a1 + 32);
  v7[3] = v5;
  v8 = v2;
  return v3(v7);
}

uint64_t dispatch thunk of MetalLiteralValueNode.__allocating_init(id:resultType:value:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *(a3 + 64);
  v5 = *(v3 + 240);
  v6 = *(a3 + 16);
  v9[0] = *a3;
  v9[1] = v6;
  v7 = *(a3 + 48);
  v9[2] = *(a3 + 32);
  v9[3] = v7;
  v10 = v4;
  return v5(a1, a2, v9);
}

uint64_t static OrderedDictionary<>.== infix(_:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  if ((static OrderedSet.== infix(_:_:)(a1, a2, a4, a5, a7, a9) & 1) == 0)
  {
    return 0;
  }

  return MEMORY[0x2821FD370](a3, a6, a8, a10);
}

uint64_t _HashTable.Header.bias.setter(uint64_t result)
{
  v2 = 1 << *v1;
  v3 = __OFSUB__(v2, 1);
  v4 = v2 - 1;
  if (v3)
  {
    __break(1u);
  }

  else
  {
    v5 = (v4 & (result >> 63)) + result;
    if (v5 < v4)
    {
      v4 = 0;
    }

    v1[1] = v1[1] & 0x3FLL | ((v5 - v4) << 6);
  }

  return result;
}

uint64_t _HashTable.Header.init(scale:reservedScale:seed:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  *a4 = result | (a3 << 6);
  a4[1] = a2;
  return result;
}

uint64_t _HashTable.Header.capacity.getter()
{
  v1 = *v0 & 0x3FLL;
  if (v1 < 5)
  {
    return 15;
  }

  v3 = (1 << v1) * 0.75;
  if (COERCE__INT64(fabs(v3)) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_8;
  }

  if (v3 <= -9.22337204e18)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  if (v3 < 9.22337204e18)
  {
    return v3;
  }

LABEL_9:
  __break(1u);
  return result;
}

void *(*_HashTable.Header.reservedScale.modify(uint64_t *a1))(void *result)
{
  v2 = *(v1 + 8);
  a1[1] = v1;
  a1[2] = v2;
  *a1 = v2 & 0x3F;
  return _HashTable.Header.reservedScale.modify;
}

uint64_t (*_HashTable.Header.bias.modify(uint64_t *a1))(uint64_t *a1)
{
  *a1 = *(v1 + 8) >> 6;
  a1[1] = v1;
  return _HashTable.UnsafeHandle.bias.modify;
}

uint64_t RandomAccessCollection._offset(of:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(*(a3 + 8) + 8);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v5 = *(AssociatedTypeWitness - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](AssociatedTypeWitness);
  v8 = &v11 - v7;
  dispatch thunk of Collection.startIndex.getter();
  v9 = dispatch thunk of RandomAccessCollection.distance(from:to:)();
  (*(v5 + 8))(v8, AssociatedTypeWitness);
  return v9;
}

uint64_t RandomAccessCollection.subscript.getter@<X0>(uint64_t a1@<X2>, uint64_t a2@<X8>)
{
  v3 = *(*(a1 + 8) + 8);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v5 = *(AssociatedTypeWitness - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](AssociatedTypeWitness);
  v8 = &v19[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v9);
  v11 = &v19[-v10];
  dispatch thunk of Collection.startIndex.getter();
  dispatch thunk of RandomAccessCollection.index(_:offsetBy:)();
  v12 = *(v5 + 8);
  v12(v8, AssociatedTypeWitness);
  v13 = dispatch thunk of Collection.subscript.read();
  v15 = v14;
  v16 = *(v3 + 8);
  v17 = swift_getAssociatedTypeWitness();
  (*(*(v17 - 8) + 16))(a2, v15, v17);
  v13(v19, 0);
  return (v12)(v11, AssociatedTypeWitness);
}

uint64_t RandomAccessCollection._index(at:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(*(a3 + 8) + 8);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v5 = *(AssociatedTypeWitness - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](AssociatedTypeWitness);
  v8 = &v10 - v7;
  dispatch thunk of Collection.startIndex.getter();
  dispatch thunk of RandomAccessCollection.index(_:offsetBy:)();
  return (*(v5 + 8))(v8, AssociatedTypeWitness);
}

unint64_t MaterialXError.description.getter()
{
  memcpy(__dst, v0, sizeof(__dst));
  v1 = _s11ShaderGraph14MaterialXErrorOWOg(__dst);
  if (v1 > 2)
  {
    if (v1 == 3)
    {
      v9 = destructiveProjectEnumData for MaterialXError(__dst);
      v10 = v9[7];
      v40 = v9[6];
      v41 = v10;
      v11 = v9[9];
      v42 = v9[8];
      v43 = v11;
      v12 = v9[3];
      v36 = v9[2];
      v37 = v12;
      v13 = v9[5];
      v38 = v9[4];
      v39 = v13;
      v14 = v9[1];
      v34 = *v9;
      v35 = v14;
      v15 = v9[17];
      v30 = v9[16];
      v31 = v15;
      v16 = v9[19];
      v32 = v9[18];
      v33 = v16;
      v17 = v9[13];
      v26 = v9[12];
      v27 = v17;
      v18 = v9[15];
      v28 = v9[14];
      v29 = v18;
      v19 = v9[11];
      v24 = v9[10];
      v25 = v19;
      _StringGuts.grow(_:)(46);

      v20 = NodeDef.Availability.description.getter();
      MEMORY[0x266771550](v20);

      MEMORY[0x266771550](0x202E737620, 0xE500000000000000);
      v21 = NodeDef.Availability.description.getter();
      MEMORY[0x266771550](v21);

      return 0xD000000000000025;
    }

    else if (v1 == 4)
    {
      return 0xD000000000000015;
    }

    else
    {
      return 0xD000000000000030;
    }
  }

  else
  {
    if (v1)
    {
      if (v1 == 1)
      {
        v2 = destructiveProjectEnumData for MaterialXError(__dst);
        v3 = *v2;
        v4 = v2[1];
        *&v34 = 0;
        *(&v34 + 1) = 0xE000000000000000;
        _StringGuts.grow(_:)(47);

        v5 = 0x8000000265F33A30;
        v6 = 0xD00000000000002CLL;
      }

      else
      {
        v22 = destructiveProjectEnumData for MaterialXError(__dst);
        v3 = *v22;
        v4 = v22[1];
        *&v34 = 0;
        *(&v34 + 1) = 0xE000000000000000;
        _StringGuts.grow(_:)(32);

        v5 = 0x8000000265F33A10;
        v6 = 0xD00000000000001DLL;
      }
    }

    else
    {
      v8 = destructiveProjectEnumData for MaterialXError(__dst);
      v3 = *v8;
      v4 = v8[1];
      *&v34 = 0;
      *(&v34 + 1) = 0xE000000000000000;
      _StringGuts.grow(_:)(36);

      v5 = 0x8000000265F33A60;
      v6 = 0xD000000000000021;
    }

    *&v34 = v6;
    *(&v34 + 1) = v5;
    MEMORY[0x266771550](v3, v4);
    MEMORY[0x266771550](34, 0xE100000000000000);
    return v34;
  }
}

unint64_t _s11ShaderGraph14MaterialXErrorOWOg(uint64_t a1)
{
  v1 = *(a1 + 280);
  if (v1 >= 0)
  {
    return v1 >> 61;
  }

  else
  {
    return (*a1 + 4);
  }
}

unint64_t get_enum_tag_for_layout_string_11ShaderGraph14MaterialXErrorO(uint64_t a1)
{
  v1 = *(a1 + 280);
  if (v1 >= 0)
  {
    return v1 >> 61;
  }

  else
  {
    return (*a1 + 4);
  }
}

uint64_t getEnumTagSinglePayload for MaterialXError(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 320))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 120) >> 17;
  if (v2 > 0x80000000)
  {
    v3 = ~v2;
  }

  else
  {
    v3 = -1;
  }

  return (v3 + 1);
}

double storeEnumTagSinglePayload for MaterialXError(uint64_t a1, int a2, int a3)
{
  if (a2 < 0)
  {
    *(a1 + 312) = 0;
    result = 0.0;
    *(a1 + 248) = 0u;
    *(a1 + 232) = 0u;
    *(a1 + 216) = 0u;
    *(a1 + 200) = 0u;
    *(a1 + 184) = 0u;
    *(a1 + 168) = 0u;
    *(a1 + 152) = 0u;
    *(a1 + 136) = 0u;
    *(a1 + 120) = 0u;
    *(a1 + 104) = 0u;
    *(a1 + 88) = 0u;
    *(a1 + 72) = 0u;
    *(a1 + 56) = 0u;
    *(a1 + 40) = 0u;
    *(a1 + 24) = 0u;
    *(a1 + 8) = 0u;
    *(a1 + 296) = 0u;
    *(a1 + 280) = 0u;
    *(a1 + 264) = 0u;
    *a1 = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(a1 + 320) = 1;
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
      result = 0.0;
      *(a1 + 80) = 0u;
      *(a1 + 96) = 0u;
      *(a1 + 48) = 0u;
      *(a1 + 64) = 0u;
      *(a1 + 16) = 0u;
      *(a1 + 32) = 0u;
      *a1 = 0u;
      *(a1 + 112) = 0;
      *(a1 + 120) = -a2 << 17;
      *(a1 + 128) = 0u;
      *(a1 + 144) = 0u;
      *(a1 + 160) = 0u;
      *(a1 + 176) = 0u;
      *(a1 + 192) = 0u;
      *(a1 + 208) = 0u;
      *(a1 + 224) = 0u;
      *(a1 + 240) = 0u;
      *(a1 + 256) = 0u;
      *(a1 + 272) = 0u;
      *(a1 + 288) = 0u;
      *(a1 + 304) = 0u;
      return result;
    }

    *(a1 + 320) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t destructiveInjectEnumTag for MaterialXError(uint64_t result, uint64_t a2)
{
  if (a2 < 4)
  {
    v2 = *(result + 160) & 7;
    v3 = *(result + 280) & 0x1FFFFLL | (a2 << 61);
    *(result + 120) &= 0x1FFFFuLL;
    *(result + 160) = v2;
    *(result + 280) = v3;
  }

  else
  {
    *result = (a2 - 4);
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
    *(result + 8) = 0u;
    *(result + 248) = 0u;
    *(result + 264) = 0u;
    *(result + 280) = 0x8000000000000000;
    *(result + 288) = 0u;
    *(result + 304) = 0u;
  }

  return result;
}

uint64_t specialized == infix<A>(_:_:)(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = a1;
  v3 = 0xE800000000000000;
  v4 = 0x6E65676E61746962;
  v5 = 0xE900000000000074;
  v6 = 0xE800000000000000;
  v7 = 0x64726F6F63786574;
  if (a1 != 4)
  {
    v7 = 0x6F6C6F636D6F6567;
    v6 = 0xE900000000000072;
  }

  if (a1 != 3)
  {
    v4 = v7;
    v5 = v6;
  }

  v8 = 0xE600000000000000;
  v9 = 0x6C616D726F6ELL;
  if (a1 != 1)
  {
    v9 = 0x746E65676E6174;
    v8 = 0xE700000000000000;
  }

  if (a1)
  {
    v3 = v8;
  }

  else
  {
    v9 = 0x6E6F697469736F70;
  }

  if (a1 <= 2u)
  {
    v10 = v9;
  }

  else
  {
    v10 = v4;
  }

  if (v2 <= 2)
  {
    v11 = v3;
  }

  else
  {
    v11 = v5;
  }

  if (a2 > 2u)
  {
    if (a2 == 3)
    {
      v12 = 0xE900000000000074;
      if (v10 != 0x6E65676E61746962)
      {
        goto LABEL_34;
      }
    }

    else if (a2 == 4)
    {
      v12 = 0xE800000000000000;
      if (v10 != 0x64726F6F63786574)
      {
        goto LABEL_34;
      }
    }

    else
    {
      v12 = 0xE900000000000072;
      if (v10 != 0x6F6C6F636D6F6567)
      {
LABEL_34:
        v13 = _stringCompareWithSmolCheck(_:_:expecting:)();
        goto LABEL_35;
      }
    }
  }

  else if (a2)
  {
    if (a2 == 1)
    {
      v12 = 0xE600000000000000;
      if (v10 != 0x6C616D726F6ELL)
      {
        goto LABEL_34;
      }
    }

    else
    {
      v12 = 0xE700000000000000;
      if (v10 != 0x746E65676E6174)
      {
        goto LABEL_34;
      }
    }
  }

  else
  {
    v12 = 0xE800000000000000;
    if (v10 != 0x6E6F697469736F70)
    {
      goto LABEL_34;
    }
  }

  if (v11 != v12)
  {
    goto LABEL_34;
  }

  v13 = 1;
LABEL_35:

  return v13 & 1;
}

Swift::Int specialized RawRepresentable<>.hashValue.getter()
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

Swift::Int specialized RawRepresentable<>._rawHashValue(seed:)()
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

void _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFSD6ValuesVySS11ShaderGraph11GeomPropDefV_G_AH19NodeDefinitionStoreV0gH0Vs5NeverOTg504_s11e7Graph19jkl10VACycfcAC8gh7VAA0fG3I6Vcfu0_Tf1cn_n(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    v34 = MEMORY[0x277D84F90];
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v1, 0);
    v2 = v34;
    v3 = a1 + 64;
    v4 = -1 << *(a1 + 32);
    v5 = _HashTable.startBucket.getter();
    v6 = a1;
    if (v5 < 0 || (v7 = v5, v5 >= 1 << *(a1 + 32)))
    {
LABEL_23:
      __break(1u);
    }

    else
    {
      v8 = *(a1 + 36);
      v9 = 1;
      v30 = v1;
      v37 = a1 + 64;
      while (1)
      {
        v10 = v7 >> 6;
        if ((*(v3 + 8 * (v7 >> 6)) & (1 << v7)) == 0)
        {
          break;
        }

        v11 = (*(v6 + 56) + (v7 << 6));
        v13 = v11[1];
        v12 = v11[2];
        v14 = *v11;
        *(v36 + 9) = *(v11 + 41);
        v35[1] = v13;
        v36[0] = v12;
        v35[0] = v14;
        outlined init with copy of GeomPropDef(v35, v31);
        NodeDefinitionStore.GeomProp.init(geomPropDef:)(v35, v32);
        v34 = v2;
        v16 = *(v2 + 16);
        v15 = *(v2 + 24);
        if (v16 >= v15 >> 1)
        {
          specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v15 > 1), v16 + 1, 1);
          v2 = v34;
        }

        *(v2 + 16) = v16 + 1;
        v17 = (v2 + (v16 << 6));
        v18 = v32[0];
        v19 = v32[1];
        v20 = v33[0];
        *(v17 + 74) = *(v33 + 10);
        v17[3] = v19;
        v17[4] = v20;
        v17[2] = v18;
        v21 = 1 << *(v6 + 32);
        if (v7 >= v21)
        {
          goto LABEL_25;
        }

        v3 = v37;
        v22 = *(v37 + 8 * v10);
        if ((v22 & (1 << v7)) == 0)
        {
          goto LABEL_26;
        }

        if (v8 != *(v6 + 36))
        {
          goto LABEL_27;
        }

        v23 = v22 & (-2 << (v7 & 0x3F));
        if (v23)
        {
          v7 = __clz(__rbit64(v23)) | v7 & 0x7FFFFFFFFFFFFFC0;
        }

        else
        {
          v24 = v10 << 6;
          v25 = v10 + 1;
          v26 = (a1 + 72 + 8 * v10);
          while (v25 < (v21 + 63) >> 6)
          {
            v28 = *v26++;
            v27 = v28;
            v24 += 64;
            ++v25;
            if (v28)
            {
              outlined consume of [String : String].Index._Variant(v7, v8, 0);
              v6 = a1;
              v7 = __clz(__rbit64(v27)) + v24;
              goto LABEL_18;
            }
          }

          outlined consume of [String : String].Index._Variant(v7, v8, 0);
          v6 = a1;
          v7 = v21;
        }

LABEL_18:
        if (v9 == v30)
        {
          return;
        }

        if ((v7 & 0x8000000000000000) == 0)
        {
          v8 = *(v6 + 36);
          ++v9;
          if (v7 < 1 << *(v6 + 32))
          {
            continue;
          }
        }

        goto LABEL_23;
      }
    }

    __break(1u);
LABEL_25:
    __break(1u);
LABEL_26:
    __break(1u);
LABEL_27:
    __break(1u);
  }
}

uint64_t specialized Collection<>.popFirst()()
{
  v1 = v0[2];
  v2 = v0[3] >> 1;
  if (v1 == v2)
  {
    return 2;
  }

  if (v1 < v2)
  {
    result = *(v0[1] + v1);
    v0[2] = v1 + 1;
  }

  else
  {
    __break(1u);
  }

  return result;
}

{
  v1 = v0[2];
  v2 = v0[3] >> 1;
  if (v1 == v2)
  {
    return 0;
  }

  if (v1 >= v2)
  {
    __break(1u);
    return result;
  }

  v4 = (v0[1] + 16 * v1);
  v3 = *v4;
  v5 = v4[1];
  v0[2] = v1 + 1;

  return v3;
}