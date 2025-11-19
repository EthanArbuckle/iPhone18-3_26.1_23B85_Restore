Swift::Int __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> LeafParent.prefix(leadingToLevel:)(Swift::Int leadingToLevel)
{
  v4 = *(v3 + 32);
  if ((v4 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else
  {
    v1 = v4 - leadingToLevel;
    if (v4 < leadingToLevel)
    {
      lazy protocol witness table accessor for type LeafParentError and conformance LeafParentError();
      swift_allocError();
      *v6 = leadingToLevel;
      *(v6 + 8) = 0;
      *(v6 + 16) = v4;
      *(v6 + 24) = 0;
      return swift_willThrow();
    }

    if (v1 < -64)
    {
      return 0;
    }

    v2 = *(v3 + 16);
    if (v1 >= 65)
    {
      return v2 >> 63;
    }

    if ((v1 & 0x8000000000000000) == 0)
    {
      v8 = v1 == 64;
      v9 = v2 >> v1;
      v10 = v2 >> 63;
      if (v8)
      {
        return v10;
      }

      else
      {
        return v9;
      }
    }
  }

  v11 = v2 << -v1;
  if (v1 == -64)
  {
    return 0;
  }

  else
  {
    return v11;
  }
}

Swift::Int_optional __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> LeafParent.firstDiverge(fromAnyOf:at:)(Swift::OpaquePointer fromAnyOf, Swift::Int at)
{
  v4 = *v2;
  type metadata accessor for Array();
  swift_getWitnessTable();
  v5 = Collection.firstIndex(where:)();
  if (!v3)
  {
    v5 = v7;
    v6 = v8;
  }

  result.value = v5;
  result.is_nil = v6;
  return result;
}

Swift::Bool __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> LeafParent.bit(atLevel:)(Swift::Int atLevel)
{
  v3 = *(v2 + 32);
  if (v3 < 0)
  {
    __break(1u);
LABEL_15:
    v11 = v1 << -v3;
    if (v3 == -64)
    {
      v12 = 0;
    }

    else
    {
      v12 = v11;
    }

    LOBYTE(v5) = v12 & 1;
    return v5 & 1;
  }

  if (v3 <= atLevel)
  {
    v6 = v3 - 1;
    lazy protocol witness table accessor for type LeafParentError and conformance LeafParentError();
    swift_allocError();
    *v7 = atLevel;
    *(v7 + 8) = 0;
    *(v7 + 16) = v6;
    *(v7 + 24) = 0;
    swift_willThrow();
    return v5 & 1;
  }

  v3 += ~atLevel;
  if (v3 < -64)
  {
    LOBYTE(v5) = 0;
    return v5 & 1;
  }

  v1 = *(v2 + 16);
  if (v3 >= 65)
  {
    v5 = (v1 >> 63) & 1;
    return v5 & 1;
  }

  if (v3 < 0)
  {
    goto LABEL_15;
  }

  v9 = v3 == 64;
  v5 = v1 >> v3;
  v10 = v1 >> 63;
  if (v9)
  {
    LOBYTE(v5) = v10;
  }

  LOBYTE(v5) = v5 & 1;
  return v5 & 1;
}

uint64_t static LeafParent.makeLeafParents<A>(dimensionBitCount:blockSize:from:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v37[0] = a3;
  v9 = *(v5 + 80);
  type metadata accessor for Leaf();
  type metadata accessor for Array();
  v36 = Dictionary.init()();
  v31 = v9;
  v32 = a4;
  v33 = *(v5 + 88);
  v34 = a5;
  v35 = a2;
  type metadata accessor for Dictionary();
  type metadata accessor for Dictionary();
  swift_getWitnessTable();
  Sequence.reduce<A>(into:_:)();
  v27 = v9;
  v28 = a4;
  v29 = v33;
  v30 = a5;
  swift_getWitnessTable();
  v10 = Sequence.sorted(by:)();

  v37[3] = v10;
  v21 = v9;
  v22 = a4;
  v23 = v33;
  v24 = a5;
  v25 = a1;
  v26 = a2;
  swift_getTupleTypeMetadata2();
  v11 = type metadata accessor for Array();
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
  WitnessTable = swift_getWitnessTable();
  v14 = _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lF(partial apply for closure #3 in static LeafParent.makeLeafParents<A>(dimensionBitCount:blockSize:from:), v20, v11, v19, v12, WitnessTable, MEMORY[0x277D84950], v37);

  return v14;
}

uint64_t closure #1 in static LeafParent.makeLeafParents<A>(dimensionBitCount:blockSize:from:)(uint64_t *a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v83 = a1;
  v84 = a6;
  v75 = *(*(a7 + 24) + 16);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v12 = *(*(AssociatedTypeWitness - 8) + 64);
  v14 = MEMORY[0x28223BE20](AssociatedTypeWitness, v13);
  v73 = &v73 - v15;
  v80 = *(a5 - 8);
  v16 = *(v80 + 64);
  MEMORY[0x28223BE20](v14, v17);
  v76 = &v73 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v20 = *(TupleTypeMetadata2 - 8);
  v21 = *(v20 + 64);
  v23 = MEMORY[0x28223BE20](TupleTypeMetadata2, v22);
  v25 = &v73 - v24;
  v26 = *(*(a4 - 8) + 64);
  MEMORY[0x28223BE20](v23, v27);
  v79 = &v73 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = type metadata accessor for Leaf();
  v30 = *(*(v29 - 8) + 64);
  v32 = MEMORY[0x28223BE20](v29, v31);
  v81 = a3;
  v82 = (&v73 - v33);
  if (!a3)
  {
    __break(1u);
LABEL_35:
    __break(1u);
LABEL_36:
    __break(1u);
    goto LABEL_37;
  }

  if (*a2 == 0x8000000000000000 && v81 == -1)
  {
    goto LABEL_36;
  }

  v78 = *a2;
  v77 = v32;
  v34 = swift_allocObject();
  v34[2] = a4;
  v34[3] = a5;
  v34[4] = v84;
  v34[5] = a7;
  (*(v20 + 16))(v25, a2, TupleTypeMetadata2);
  v35 = *(TupleTypeMetadata2 + 48);
  if ((dispatch thunk of static BinaryInteger.isSigned.getter() & 1) != 0 && dispatch thunk of BinaryInteger.bitWidth.getter() > 64)
  {
    v86 = 0x8000000000000000;
    if (dispatch thunk of static BinaryInteger.isSigned.getter())
    {
      if (dispatch thunk of BinaryInteger.bitWidth.getter() < 64)
      {
        goto LABEL_16;
      }

      goto LABEL_11;
    }

    v36 = dispatch thunk of static BinaryInteger.isSigned.getter();
    v37 = dispatch thunk of BinaryInteger.bitWidth.getter();
    if (v36)
    {
      if (v37 <= 64)
      {
        swift_getAssociatedConformanceWitness();
        dispatch thunk of _ExpressibleByBuiltinIntegerLiteral.init(_builtinIntegerLiteral:)();
        v41 = v76;
        dispatch thunk of ExpressibleByIntegerLiteral.init(integerLiteral:)();
        v42 = *(*(a7 + 32) + 8);
        v43 = dispatch thunk of static Comparable.< infix(_:_:)();
        (*(v80 + 8))(v41, a5);
        if (v43)
        {
LABEL_37:
          __break(1u);
LABEL_38:
          result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
          __break(1u);
          return result;
        }

        goto LABEL_16;
      }

LABEL_11:
      lazy protocol witness table accessor for type Int and conformance Int();
      v38 = v76;
      dispatch thunk of BinaryInteger.init<A>(truncatingIfNeeded:)();
      v39 = *(*(a7 + 32) + 8);
      v40 = dispatch thunk of static Comparable.< infix(_:_:)();
      (*(v80 + 8))(v38, a5);
      if (v40)
      {
        goto LABEL_37;
      }

      goto LABEL_17;
    }

    if (v37 < 64)
    {
LABEL_16:
      dispatch thunk of BinaryInteger._lowWord.getter();
    }
  }

LABEL_17:
  if (dispatch thunk of BinaryInteger.bitWidth.getter() <= 64)
  {
    goto LABEL_22;
  }

  while (1)
  {
    v86 = 0x7FFFFFFFFFFFFFFFLL;
    v44 = dispatch thunk of static BinaryInteger.isSigned.getter();
    v45 = dispatch thunk of BinaryInteger.bitWidth.getter();
    if ((v44 & 1) == 0)
    {
      break;
    }

    if (v45 < 65)
    {
      goto LABEL_26;
    }

LABEL_20:
    lazy protocol witness table accessor for type Int and conformance Int();
    v46 = v76;
    dispatch thunk of BinaryInteger.init<A>(truncatingIfNeeded:)();
    v47 = *(*(a7 + 32) + 8);
    v48 = dispatch thunk of static Comparable.< infix(_:_:)();
    (*(v80 + 8))(v46, a5);
    if (v48)
    {
      __break(1u);
LABEL_22:
      if (dispatch thunk of BinaryInteger.bitWidth.getter() == 64 && (dispatch thunk of static BinaryInteger.isSigned.getter() & 1) == 0)
      {
        continue;
      }
    }

    goto LABEL_27;
  }

  if (v45 >= 64)
  {
    goto LABEL_20;
  }

LABEL_26:
  dispatch thunk of BinaryInteger._lowWord.getter();
LABEL_27:
  v49 = v78 / v81;
  v50 = v78 % v81;
  v51 = dispatch thunk of BinaryInteger._lowWord.getter();
  (*(v80 + 8))(&v25[v35], a5);
  v52 = v79;
  v53 = v84;
  FieldElement.init(_:)(v51, a4, v84, v79);
  Leaf.init(suffix:value:)(v50, v52, a4, v82);
  v54 = swift_allocObject();
  v54[2] = a4;
  v54[3] = a5;
  v54[4] = v53;
  v54[5] = a7;
  v54[6] = partial apply for implicit closure #1 in closure #1 in static LeafParent.makeLeafParents<A>(dimensionBitCount:blockSize:from:);
  v54[7] = v34;
  v55 = v83;
  v56 = *v83;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v58 = *v55;
  v86 = v58;
  v59 = specialized __RawDictionaryStorage.find<A>(_:)(v49);
  v61 = *(v58 + 16);
  v62 = (v60 & 1) == 0;
  v63 = v61 + v62;
  if (__OFADD__(v61, v62))
  {
    goto LABEL_35;
  }

  v64 = v59;
  v65 = v60;
  type metadata accessor for Array();
  type metadata accessor for _NativeDictionary();
  v66 = _NativeDictionary.ensureUnique(isUnique:capacity:)(isUniquelyReferenced_nonNull_native, v63);
  v69 = v86;
  if ((v66 & 1) == 0)
  {
    goto LABEL_31;
  }

  v66 = specialized __RawDictionaryStorage.find<A>(_:)(v49);
  if ((v65 & 1) != (v67 & 1))
  {
    goto LABEL_38;
  }

  v64 = v66;
LABEL_31:
  *v83 = v69;
  if ((v65 & 1) == 0)
  {
    v70 = v54[7];
    v86 = (v54[6])(v66, v67, v68);
    v85 = v49;
    _NativeDictionary._insert(at:key:value:)();
  }

  v71 = *(v69 + 56) + 8 * v64;
  Array.append(_:)();
}

void closure #3 in static LeafParent.makeLeafParents<A>(dimensionBitCount:blockSize:from:)(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X7>, uint64_t *a5@<X8>)
{
  v10 = *a1;
  v11 = a1[1];
  type metadata accessor for LeafParent();
  v12 = swift_allocObject();

  LeafParent.init(dimensionBitCount:prefix:blockSize:leaves:)(a2, v10, a3, v11);
  if (v5)
  {
    *a4 = v5;
  }

  else
  {
    *a5 = v12;
  }
}

uint64_t LeafParent.__allocating_init(dimensionBitCount:prefix:blockSize:leaves:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = swift_allocObject();
  LeafParent.init(dimensionBitCount:prefix:blockSize:leaves:)(a1, a2, a3, a4);
  return v8;
}

void LeafParent.init(dimensionBitCount:prefix:blockSize:leaves:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v54 = a1;
  v7 = *v4;
  v8 = *v4;
  v55 = v4;
  v9 = *(v7 + 80);
  v10 = type metadata accessor for Leaf();
  v63 = *(v10 - 8);
  v11 = *(v63 + 64);
  v13 = MEMORY[0x28223BE20](v10, v12);
  v15 = (&v52 - v14);
  v64 = v9;
  v65 = *(v9 - 8);
  v16 = *(v65 + 64);
  v18 = MEMORY[0x28223BE20](v13, v17);
  v62 = &v52 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18, v20);
  v24 = &v52 - v23;
  if (v21 < 1 || ((v21 + 0x7FFFFFFFFFFFFFFFLL) & v21) != 0)
  {

    lazy protocol witness table accessor for type VDAFError and conformance VDAFError();
    swift_allocError();
    *v25 = 0xD000000000000020;
    *(v25 + 8) = 0x8000000270C52520;
    *(v25 + 16) = 1;
    swift_willThrow();
    swift_deallocPartialClassInstance();
    return;
  }

  v52 = v22;
  v55[2] = a2;
  v26 = *(*(v8 + 88) + 8);
  v27 = v64;
  v28 = v21;
  dispatch thunk of static AdditiveArithmetic.zero.getter();
  v53 = v28;
  v29 = specialized Array.init(repeating:count:)(v24, v28, v27);
  (*(v65 + 8))(v24, v27);
  v67 = v29;
  if (!MEMORY[0x2743B2860](a4, v10))
  {
    goto LABEL_16;
  }

  v30 = 0;
  v31 = *(v10 + 28);
  v60 = a4;
  v61 = (v63 + 16);
  v57 = v65 + 32;
  v58 = v31;
  v56 = v65 + 40;
  v59 = v10;
  while (1)
  {
    IsNativeType = Array._hoistableIsNativeTypeChecked()();
    Array._checkSubscript(_:wasNativeTypeChecked:)();
    if (!IsNativeType)
    {
      break;
    }

    (*(v63 + 16))(v15, a4 + ((*(v63 + 80) + 32) & ~*(v63 + 80)) + *(v63 + 72) * v30, v10);
    v33 = v30 + 1;
    if (__OFADD__(v30, 1))
    {
      goto LABEL_15;
    }

LABEL_8:
    v34 = *v15;
    v36 = v64;
    v35 = v65;
    v37 = v62;
    (*(v65 + 32))(v62, v15 + v58, v64);
    v38 = v15;
    v39 = type metadata accessor for Array();
    Array._makeMutableAndUnique()();
    v40 = v67;
    Array._checkSubscript_mutating(_:)(v34);
    isClassOrObjCExistentialType = _swift_isClassOrObjCExistentialType();
    v42 = v40 & 0xFFFFFFFFFFFFFF8;
    if ((isClassOrObjCExistentialType & 1) == 0)
    {
      v42 = v40;
    }

    v43 = v42 + ((*(v35 + 80) + 32) & ~*(v35 + 80)) + *(v35 + 72) * v34;
    a4 = v60;
    (*(v35 + 40))(v43, v37, v36);
    v44 = v39;
    v15 = v38;
    v10 = v59;
    destructiveProjectEnumData for SeedCtrlUnadjustedError(v44, v45, v46, v47, v48);
    ++v30;
    if (v33 == MEMORY[0x2743B2860](a4, v10))
    {
      goto LABEL_16;
    }
  }

  v49 = _ArrayBuffer._getElementSlowPath(_:)();
  if (v52 != 8)
  {
    goto LABEL_25;
  }

  v66 = v49;
  (*v61)(v15, &v66, v10);
  swift_unknownObjectRelease();
  v33 = v30 + 1;
  if (!__OFADD__(v30, 1))
  {
    goto LABEL_8;
  }

LABEL_15:
  __break(1u);
LABEL_16:

  v50 = v55;
  v55[3] = v67;
  v51 = log2(v53);
  if ((*&v51 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_22;
  }

  if (v51 <= -9.22337204e18)
  {
LABEL_22:
    __break(1u);
    goto LABEL_23;
  }

  if (v51 >= 9.22337204e18)
  {
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  if (!__OFSUB__(v54, v51))
  {
    v50[4] = v54 - v51;
    return;
  }

LABEL_24:
  __break(1u);
LABEL_25:
  __break(1u);
}

uint64_t LeafParent.diverge(from:at:)(uint64_t result, unint64_t leadingToLevel)
{
  v3 = *(v2 + 32);
  if ((v3 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else
  {
    if (v3 <= leadingToLevel)
    {
      v16 = v3 - 1;
      lazy protocol witness table accessor for type LeafParentError and conformance LeafParentError();
      swift_allocError();
      *v17 = leadingToLevel;
      *(v17 + 8) = 0;
      *(v17 + 16) = v16;
      *(v17 + 24) = 0;
      swift_willThrow();
    }

    else
    {
      v5 = LeafParent.prefix(leadingToLevel:)(leadingToLevel);
      if (!v7)
      {
        v8 = v5;
        v9 = LeafParent.prefix(leadingToLevel:)(leadingToLevel);
        if (!v10)
        {
          if (v8 == v9)
          {
            v11 = LeafParent.bit(atLevel:)(leadingToLevel);
            if (!v12)
            {
              v13 = v11;
              v14 = LeafParent.bit(atLevel:)(leadingToLevel);
              if (!v15)
              {
                v6 = v13 ^ v14;
              }
            }
          }

          else
          {
            v6 = 0;
          }
        }
      }
    }

    return v6 & 1;
  }

  return result;
}

uint64_t partial apply for closure #1 in LeafParent.firstDiverge(fromAnyOf:at:)(void *a1)
{
  v3 = *(v1 + 16);
  if (*a1 == v3)
  {
    return 0;
  }

  else
  {
    return LeafParent.diverge(from:at:)(v3, *(v1 + 24)) & 1;
  }
}

void partial apply for closure #3 in static LeafParent.makeLeafParents<A>(dimensionBitCount:blockSize:from:)(uint64_t *a1@<X0>, void *a2@<X1>, uint64_t *a3@<X8>)
{
  v4 = v3[2];
  v5 = v3[3];
  v6 = v3[4];
  v7 = v3[5];
  closure #3 in static LeafParent.makeLeafParents<A>(dimensionBitCount:blockSize:from:)(a1, v3[6], v3[7], a2, a3);
}

uint64_t LeafParent.__deallocating_deinit()
{
  v1 = *(v0 + 24);

  return swift_deallocClassInstance();
}

uint64_t LeafParent.SuperBlockData.blockPrefix.setter(uint64_t a1)
{
  result = swift_beginAccess();
  *(v1 + 16) = a1;
  return result;
}

uint64_t LeafParent.SuperBlockData.leaves.getter()
{
  swift_beginAccess();
  v1 = *(v0 + 24);
}

uint64_t LeafParent.SuperBlockData.leaves.setter(uint64_t a1)
{
  swift_beginAccess();
  v3 = *(v1 + 24);
  *(v1 + 24) = a1;
}

uint64_t LeafParent.SuperBlockData.__allocating_init(blockPrefix:blockSize:)(uint64_t a1, Swift::Int a2)
{
  v4 = swift_allocObject();
  LeafParent.SuperBlockData.init(blockPrefix:blockSize:)(a1, a2);
  return v4;
}

void *LeafParent.SuperBlockData.init(blockPrefix:blockSize:)(uint64_t a1, Swift::Int a2)
{
  v3 = v2;
  v6 = *(*v3 + 80);
  type metadata accessor for Leaf();
  v3[3] = static Array._allocateUninitialized(_:)();
  v3[2] = a1;
  swift_beginAccess();
  type metadata accessor for Array();
  Array.reserveCapacity(_:)(a2);
  swift_endAccess();
  return v3;
}

uint64_t LeafParent.SuperBlockData.deinit()
{
  v1 = *(v0 + 24);

  return v0;
}

uint64_t LeafParent.SuperBlockData.__deallocating_deinit()
{
  v1 = *(v0 + 24);

  return swift_deallocClassInstance();
}

uint64_t static LeafParent.makeLeafParentsFromSuperBlocks<A>(measurement:superBlockSize:superBlockCount:blockSize:)(uint64_t a1, uint64_t a2, Swift::Int a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v208 = a4;
  v206 = a3;
  v196 = *(*(a6 + 24) + 16);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v11 = *(*(AssociatedTypeWitness - 8) + 64);
  v13 = MEMORY[0x28223BE20](AssociatedTypeWitness, v12);
  v15 = &v169 - v14;
  v16 = *(v6 + 80);
  v17 = *(*(v16 - 8) + 64);
  v19 = MEMORY[0x28223BE20](v13, v18);
  v198 = &v169 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v19, v21);
  v201 = &v169 - v22;
  v204 = type metadata accessor for Leaf();
  v23 = *(*(v204 - 8) + 64);
  v25 = MEMORY[0x28223BE20](v204, v24);
  v197 = (&v169 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0));
  v28 = MEMORY[0x28223BE20](v25, v27);
  v200 = (&v169 - v29);
  v30 = *(a5 - 8);
  v31 = *(v30 + 64);
  v33 = MEMORY[0x28223BE20](v28, v32);
  v199 = &v169 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  v36 = MEMORY[0x28223BE20](v33, v35);
  v202 = &v169 - v37;
  v39 = MEMORY[0x28223BE20](v36, v38);
  v207 = &v169 - v40;
  MEMORY[0x28223BE20](v39, v41);
  v205 = &v169 - v42;
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v43 = type metadata accessor for Optional();
  v44 = *(v43 - 8);
  v45 = *(v44 + 64);
  v47 = MEMORY[0x28223BE20](v43, v46);
  result = MEMORY[0x28223BE20](v47, v48);
  v53 = (v51 - 1);
  if (v51 < 1 || (v51 & *&v53) != 0 || v51 < v208)
  {
    v54 = 0x8000000270C52550;
    lazy protocol witness table accessor for type VDAFError and conformance VDAFError();
    swift_allocError();
    v56 = 0xD000000000000049;
    goto LABEL_8;
  }

  if (v206 < 1 || ((v206 + 0x7FFFFFFFFFFFFFFFLL) & v206) != 0)
  {
    v54 = 0x8000000270C525A0;
    lazy protocol witness table accessor for type VDAFError and conformance VDAFError();
    swift_allocError();
    v56 = 0xD00000000000002FLL;
LABEL_8:
    *v55 = v56;
    *(v55 + 8) = v54;
    *(v55 + 16) = 1;
    return swift_willThrow();
  }

  if (v208 <= 1 || ((v208 + 0x7FFFFFFFFFFFFFFFLL) & v208) != 0)
  {
    v54 = 0x8000000270C525D0;
    lazy protocol witness table accessor for type VDAFError and conformance VDAFError();
    swift_allocError();
    v56 = 0xD000000000000029;
    goto LABEL_8;
  }

  v57 = v51 * v206;
  if ((v51 * v206) >> 64 != (v51 * v206) >> 63)
  {
    goto LABEL_104;
  }

  v184 = (&v169 - v50);
  v186 = v52;
  v185 = result;
  v179 = v15;
  v180 = v51;
  v188 = a1;
  v170 = v7;
  v181 = v57 - 1;
  if (!__OFSUB__(v57, 1))
  {
    v58 = vcnt_s8(v53);
    v58.i16[0] = vaddlv_u8(v58);
    v171 = v58.u32[0];
    v172 = v6;
    v59 = *(v6 + 88);
    v177 = v16;
    v176 = v59;
    v60 = type metadata accessor for LeafParent.SuperBlockData();
    v61 = MEMORY[0x277D83B88];
    swift_getTupleTypeMetadata2();
    v62 = static Array._allocateUninitialized(_:)();
    v63 = specialized Dictionary.init(dictionaryLiteral:)(v62, v61, v60, MEMORY[0x277D83B98]);

    v215 = v63;
    v189 = v60;
    v173 = type metadata accessor for Dictionary();
    Dictionary.reserveCapacity(_:)(v206);
    v64 = v188 + 64;
    v65 = 1 << *(v188 + 32);
    v66 = -1;
    if (v65 < 64)
    {
      v66 = ~(-1 << v65);
    }

    v67 = v66 & *(v188 + 64);
    v174 = (v65 + 63) >> 6;
    v68 = TupleTypeMetadata2;
    v183 = TupleTypeMetadata2 - 8;
    v192 = (v30 + 16);
    v194 = (v30 + 32);
    v182 = (v44 + 32);
    v191 = (v30 + 8);

    v69 = 0;
    v175 = v64;
    v178 = v30;
    while (1)
    {
      if (!v67)
      {
        if (v174 <= v69 + 1)
        {
          v76 = v69 + 1;
        }

        else
        {
          v76 = v174;
        }

        v77 = v76 - 1;
        while (1)
        {
          v75 = v69 + 1;
          if (__OFADD__(v69, 1))
          {
            break;
          }

          if (v75 >= v174)
          {
            v67 = 0;
            v84 = 1;
            v69 = v77;
            v83 = v186;
            goto LABEL_31;
          }

          v67 = *(v64 + 8 * v75);
          ++v69;
          if (v67)
          {
            v69 = v75;
            goto LABEL_30;
          }
        }

        __break(1u);
LABEL_102:
        __break(1u);
LABEL_103:
        __break(1u);
LABEL_104:
        __break(1u);
        break;
      }

      v75 = v69;
LABEL_30:
      v78 = __clz(__rbit64(v67));
      v67 &= v67 - 1;
      v79 = v78 | (v75 << 6);
      v80 = *(*(result + 48) + 8 * v79);
      v81 = v205;
      (*(v30 + 16))(v205, *(result + 56) + *(v30 + 72) * v79, a5);
      v82 = *(v68 + 48);
      v83 = v186;
      *v186 = v80;
      (*(v30 + 32))(&v83[v82], v81, a5);
      v84 = 0;
LABEL_31:
      v85 = *(v68 - 8);
      (*(v85 + 56))(v83, v84, 1, v68);
      v86 = v184;
      (*v182)(v184, v83, v185);
      if ((*(v85 + 48))(v86, 1, v68) == 1)
      {

        v127 = v215;
        v128 = v189;
        v129 = MEMORY[0x2743B2460](v215, MEMORY[0x277D83B88]);
        v130 = v206;
        if (v129 == v206)
        {
          v214 = static Array._allocateUninitialized(_:)();
          type metadata accessor for Array();
          Array.reserveCapacity(_:)(v130);
          v131 = 0;
          v132 = v170;
          v133 = v128;
          while (1)
          {
            v213 = v131;
            MEMORY[0x2743B2480](&v211, &v213, v127, MEMORY[0x277D83B88], v133, MEMORY[0x277D83B98]);
            v134 = v211;
            if (!v211)
            {

              v211 = 0;
              v212 = 0xE000000000000000;
              _StringGuts.grow(_:)(31);

              v211 = 0xD00000000000001DLL;
              v212 = 0x8000000270C52620;
              v213 = v131;
              v158 = dispatch thunk of CustomStringConvertible.description.getter();
              MEMORY[0x2743B25F0](v158);

              v156 = v211;
              v157 = v212;
              goto LABEL_97;
            }

            v135 = v132;
            swift_beginAccess();
            v136 = *(v134 + 24);

            v138 = MEMORY[0x2743B2830](v137, v204);

            v139 = v208;
            if (v138 > v208)
            {

              v211 = 0;
              v212 = 0xE000000000000000;
              _StringGuts.grow(_:)(53);
              MEMORY[0x2743B25F0](0x6465746365707845, 0xEC000000203D3C20);
              v213 = v139;
              v160 = dispatch thunk of CustomStringConvertible.description.getter();
              MEMORY[0x2743B25F0](v160);

              MEMORY[0x2743B25F0](0xD000000000000019, 0x8000000270C52640);
              v213 = v131;
              v161 = dispatch thunk of CustomStringConvertible.description.getter();
              MEMORY[0x2743B25F0](v161);

              MEMORY[0x2743B25F0](0x6F6720747562202CLL, 0xEA00000000002074);
              v162 = *(v134 + 24);

              v164 = MEMORY[0x2743B2830](v163, v204);

              v213 = v164;
              v165 = dispatch thunk of CustomStringConvertible.description.getter();
              MEMORY[0x2743B25F0](v165);

              v166 = v211;
              v167 = v212;
              lazy protocol witness table accessor for type LeafParentError and conformance LeafParentError();
              swift_allocError();
              *v168 = v166;
              *(v168 + 8) = v167;
              *(v168 + 16) = 0;
              *(v168 + 24) = 3;
              swift_willThrow();
            }

            v140 = v127;
            swift_beginAccess();
            v141 = *(v134 + 16);
            v142 = *(v134 + 24);
            v143 = swift_allocObject();

            LeafParent.init(dimensionBitCount:prefix:blockSize:leaves:)(v171, v141, v139, v142);
            v132 = v135;
            if (v135)
            {
              break;
            }

            ++v131;
            v211 = v143;
            Array.append(_:)();

            v133 = v189;
            v127 = v140;
            if (v206 == v131)
            {

              return v214;
            }
          }
        }

        else
        {
          v210[0] = 0;
          v210[1] = 0xE000000000000000;
          _StringGuts.grow(_:)(30);

          strcpy(v210, "Expected ");
          WORD1(v210[1]) = 0;
          HIDWORD(v210[1]) = -385875968;
          v209 = v130;
          v153 = MEMORY[0x277D83B88];
          v154 = dispatch thunk of CustomStringConvertible.description.getter();
          MEMORY[0x2743B25F0](v154);

          MEMORY[0x2743B25F0](0xD000000000000011, 0x8000000270C52600);
          v209 = MEMORY[0x2743B2460](v127, v153, v128, MEMORY[0x277D83B98]);
          v155 = dispatch thunk of CustomStringConvertible.description.getter();
          MEMORY[0x2743B25F0](v155);

          v156 = v210[0];
          v157 = v210[1];
LABEL_97:
          lazy protocol witness table accessor for type LeafParentError and conformance LeafParentError();
          swift_allocError();
          *v159 = v156;
          *(v159 + 8) = v157;
          *(v159 + 16) = 0;
          *(v159 + 24) = 2;
          swift_willThrow();
        }
      }

      v87 = *v86;
      (*v194)(v207, v86 + *(v68 + 48), a5);
      if ((v87 & 0x8000000000000000) != 0 || v181 < v87)
      {
        v210[0] = 0;
        v210[1] = 0xE000000000000000;
        _StringGuts.grow(_:)(31);

        v210[0] = 544826699;
        v210[1] = 0xE400000000000000;
        v209 = v87;
        v144 = dispatch thunk of CustomStringConvertible.description.getter();
        MEMORY[0x2743B25F0](v144);

        MEMORY[0x2743B25F0](0xD000000000000016, 0x8000000270C52680);
        v209 = v181;
        v145 = dispatch thunk of CustomStringConvertible.description.getter();
        MEMORY[0x2743B25F0](v145);

        MEMORY[0x2743B25F0](93, 0xE100000000000000);
        v146 = v210[0];
        v147 = v210[1];
        lazy protocol witness table accessor for type LeafParentError and conformance LeafParentError();
        swift_allocError();
        *v148 = v146;
        *(v148 + 8) = v147;
        *(v148 + 16) = 0;
        *(v148 + 24) = 1;
        swift_willThrow();

        (*v191)(v207, a5);
      }

      v88 = v208;
      v89 = v87 % v180 / v208;
      v193 = v87 % v180 % v208;
      v190 = v87 / v180;
      v209 = v87 / v180;
      MEMORY[0x2743B2480](v210, &v209, v215, MEMORY[0x277D83B88], v189, MEMORY[0x277D83B98]);
      v90 = v210[0];
      if (v210[0])
      {
        swift_beginAccess();
        if (*(v90 + 16) != v89)
        {
          v210[0] = 0;
          v210[1] = 0xE000000000000000;
          _StringGuts.grow(_:)(43);

          strcpy(v210, "super block ");
          BYTE5(v210[1]) = 0;
          HIWORD(v210[1]) = -5120;
          v209 = v190;
          v149 = dispatch thunk of CustomStringConvertible.description.getter();
          MEMORY[0x2743B25F0](v149);

          MEMORY[0x2743B25F0](0xD00000000000001DLL, 0x8000000270C52660);
          v150 = v210[0];
          v151 = v210[1];
          lazy protocol witness table accessor for type LeafParentError and conformance LeafParentError();
          swift_allocError();
          *v152 = v150;
          *(v152 + 8) = v151;
          *(v152 + 16) = 0;
          *(v152 + 24) = 4;
          swift_willThrow();

          (*v191)(v207, a5);
        }

        v91 = v202;
        (*v192)(v202, v207, a5);
        v92 = dispatch thunk of static BinaryInteger.isSigned.getter();
        v187 = v90;
        if ((v92 & 1) != 0 && dispatch thunk of BinaryInteger.bitWidth.getter() > 64)
        {
          v210[0] = 0x8000000000000000;
          if (dispatch thunk of static BinaryInteger.isSigned.getter())
          {
            if (dispatch thunk of BinaryInteger.bitWidth.getter() < 64)
            {
              goto LABEL_61;
            }

LABEL_49:
            lazy protocol witness table accessor for type Int and conformance Int();
            v98 = v205;
            dispatch thunk of BinaryInteger.init<A>(truncatingIfNeeded:)();
            v99 = *(*(a6 + 32) + 8);
            v100 = dispatch thunk of static Comparable.< infix(_:_:)();
            result = (*v191)(v98, a5);
            if (v100)
            {
              goto LABEL_106;
            }
          }

          else
          {
            v96 = dispatch thunk of static BinaryInteger.isSigned.getter();
            v97 = dispatch thunk of BinaryInteger.bitWidth.getter();
            if (v96)
            {
              if (v97 > 64)
              {
                goto LABEL_49;
              }

              swift_getAssociatedConformanceWitness();
              dispatch thunk of _ExpressibleByBuiltinIntegerLiteral.init(_builtinIntegerLiteral:)();
              v105 = v205;
              dispatch thunk of ExpressibleByIntegerLiteral.init(integerLiteral:)();
              v106 = *(*(a6 + 32) + 8);
              v107 = dispatch thunk of static Comparable.< infix(_:_:)();
              result = (*v191)(v105, a5);
              if (v107)
              {
                goto LABEL_106;
              }

LABEL_61:
              dispatch thunk of BinaryInteger._lowWord.getter();
            }

            else if (v97 < 64)
            {
              goto LABEL_61;
            }
          }
        }

        if (dispatch thunk of BinaryInteger.bitWidth.getter() > 64 || dispatch thunk of BinaryInteger.bitWidth.getter() == 64 && (dispatch thunk of static BinaryInteger.isSigned.getter() & 1) == 0)
        {
          v210[0] = 0x7FFFFFFFFFFFFFFFLL;
          v108 = dispatch thunk of static BinaryInteger.isSigned.getter();
          v109 = dispatch thunk of BinaryInteger.bitWidth.getter();
          if (v108)
          {
            if (v109 >= 65)
            {
              goto LABEL_70;
            }

LABEL_17:
            dispatch thunk of BinaryInteger._lowWord.getter();
          }

          else
          {
            if (v109 < 64)
            {
              goto LABEL_17;
            }

LABEL_70:
            lazy protocol witness table accessor for type Int and conformance Int();
            v110 = v205;
            dispatch thunk of BinaryInteger.init<A>(truncatingIfNeeded:)();
            v111 = *(*(a6 + 32) + 8);
            v112 = dispatch thunk of static Comparable.< infix(_:_:)();
            result = (*v191)(v110, a5);
            if (v112)
            {
              goto LABEL_102;
            }
          }
        }

        v70 = dispatch thunk of BinaryInteger._lowWord.getter();
        v71 = *v191;
        (*v191)(v91, a5);
        v72 = v201;
        v73 = v70;
        v74 = v177;
        FieldElement.init(_:)(v73, v177, v176, v201);
        Leaf.init(suffix:value:)(v193, v72, v74, v200);
        swift_beginAccess();
        type metadata accessor for Array();
        Array.append(_:)();
        swift_endAccess();

        goto LABEL_19;
      }

      v187 = swift_allocObject();
      LeafParent.SuperBlockData.init(blockPrefix:blockSize:)(v89, v88);
      v93 = v199;
      (*v192)(v199, v207, a5);
      if ((dispatch thunk of static BinaryInteger.isSigned.getter() & 1) != 0 && dispatch thunk of BinaryInteger.bitWidth.getter() > 64)
      {
        v210[0] = 0x8000000000000000;
        if (dispatch thunk of static BinaryInteger.isSigned.getter())
        {
          v93 = v199;
          if (dispatch thunk of BinaryInteger.bitWidth.getter() < 64)
          {
            goto LABEL_73;
          }

          lazy protocol witness table accessor for type Int and conformance Int();
          v94 = v205;
          dispatch thunk of BinaryInteger.init<A>(truncatingIfNeeded:)();
          v95 = *(*(a6 + 32) + 8);
        }

        else
        {
          v101 = dispatch thunk of static BinaryInteger.isSigned.getter();
          v102 = dispatch thunk of BinaryInteger.bitWidth.getter();
          if ((v101 & 1) == 0)
          {
            if (v102 < 64)
            {
              goto LABEL_73;
            }

            goto LABEL_74;
          }

          if (v102 <= 64)
          {
            swift_getAssociatedConformanceWitness();
            dispatch thunk of _ExpressibleByBuiltinIntegerLiteral.init(_builtinIntegerLiteral:)();
            v113 = v205;
            dispatch thunk of ExpressibleByIntegerLiteral.init(integerLiteral:)();
            v114 = *(*(a6 + 32) + 8);
            v115 = dispatch thunk of static Comparable.< infix(_:_:)();
            result = (*v191)(v113, a5);
            if (v115)
            {
              goto LABEL_107;
            }

LABEL_73:
            dispatch thunk of BinaryInteger._lowWord.getter();
LABEL_74:
            v93 = v199;
            goto LABEL_75;
          }

          lazy protocol witness table accessor for type Int and conformance Int();
          v94 = v205;
          dispatch thunk of BinaryInteger.init<A>(truncatingIfNeeded:)();
          v103 = *(*(a6 + 32) + 8);
          v93 = v199;
        }

        v104 = dispatch thunk of static Comparable.< infix(_:_:)();
        result = (*v191)(v94, a5);
        if (v104)
        {
          goto LABEL_107;
        }
      }

LABEL_75:
      v116 = v93;
      if (dispatch thunk of BinaryInteger.bitWidth.getter() > 64 || dispatch thunk of BinaryInteger.bitWidth.getter() == 64 && (dispatch thunk of static BinaryInteger.isSigned.getter() & 1) == 0)
      {
        v210[0] = 0x7FFFFFFFFFFFFFFFLL;
        v117 = dispatch thunk of static BinaryInteger.isSigned.getter();
        v118 = dispatch thunk of BinaryInteger.bitWidth.getter();
        if (v117)
        {
          if (v118 >= 65)
          {
            goto LABEL_78;
          }
        }

        else if (v118 >= 64)
        {
LABEL_78:
          lazy protocol witness table accessor for type Int and conformance Int();
          v119 = v205;
          dispatch thunk of BinaryInteger.init<A>(truncatingIfNeeded:)();
          v120 = *(*(a6 + 32) + 8);
          v121 = dispatch thunk of static Comparable.< infix(_:_:)();
          result = (*v191)(v119, a5);
          if (v121)
          {
            goto LABEL_103;
          }

          goto LABEL_85;
        }

        dispatch thunk of BinaryInteger._lowWord.getter();
      }

LABEL_85:
      v122 = dispatch thunk of BinaryInteger._lowWord.getter();
      v71 = *v191;
      (*v191)(v116, a5);
      v123 = v198;
      v124 = v122;
      v125 = v177;
      FieldElement.init(_:)(v124, v177, v176, v198);
      Leaf.init(suffix:value:)(v193, v123, v125, v197);
      v126 = v187;
      swift_beginAccess();
      type metadata accessor for Array();
      Array.append(_:)();
      swift_endAccess();
      v210[0] = v126;
      v209 = v190;
      Dictionary.subscript.setter();
LABEL_19:
      v71(v207, a5);
      result = v188;
      v30 = v178;
      v68 = TupleTypeMetadata2;
      v64 = v175;
    }
  }

  __break(1u);
LABEL_106:
  __break(1u);
LABEL_107:
  __break(1u);
  return result;
}

unint64_t __RawDictionaryStorage.find<A>(_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v8 = *(v4 + 40);
  v9 = dispatch thunk of Hashable._rawHashValue(seed:)();

  return __RawDictionaryStorage.find<A>(_:hashValue:)(a1, v9, a2, a3);
}

unint64_t __RawDictionaryStorage.find<A>(_:hashValue:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v23[1] = a1;
  v24 = a4;
  v6 = *(*(a3 - 8) + 64);
  MEMORY[0x28223BE20](a1, a2);
  v9 = v23 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = v4;
  v10 = -1 << *(v4 + 32);
  v12 = v11 & ~v10;
  v23[0] = v4 + 64;
  if ((*(v4 + 64 + ((v12 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v12))
  {
    v13 = ~v10;
    v16 = *(v7 + 16);
    v14 = v7 + 16;
    v15 = v16;
    v17 = *(v14 + 56);
    v18 = (v14 - 8);
    do
    {
      v19 = v14;
      v15(v9, *(v25 + 48) + v17 * v12, a3);
      v20 = *(v24 + 8);
      v21 = dispatch thunk of static Equatable.== infix(_:_:)();
      (*v18)(v9, a3);
      if (v21)
      {
        break;
      }

      v12 = (v12 + 1) & v13;
      v14 = v19;
    }

    while (((*(v23[0] + ((v12 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v12) & 1) != 0);
  }

  return v12;
}

uint64_t specialized Dictionary.init(dictionaryLiteral:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v9 = *(TupleTypeMetadata2 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](TupleTypeMetadata2, v11);
  v13 = v24 - v12;
  if (MEMORY[0x2743B2830](a1, TupleTypeMetadata2))
  {
    type metadata accessor for _DictionaryStorage();
    v14 = static _DictionaryStorage.allocate(capacity:)();
  }

  else
  {
    v14 = MEMORY[0x277D84F98];
  }

  result = MEMORY[0x2743B2870](a1, TupleTypeMetadata2);
  if (result)
  {
    if (result >= 1)
    {
      v24[0] = v10;
      v28 = a4;
      v16 = 0;
      v17 = *(TupleTypeMetadata2 + 48);
      v26 = a3;
      v27 = (v9 + 16);
      v24[2] = a2 - 8;
      v25 = v17;
      v24[1] = a3 - 8;
      while (1)
      {
        v18 = result;
        if (Array._hoistableIsNativeTypeChecked()())
        {
          (*(v9 + 16))(v13, a1 + ((*(v9 + 80) + 32) & ~*(v9 + 80)) + *(v9 + 72) * v16, TupleTypeMetadata2);
        }

        else
        {
          result = _ArrayBuffer._getElementSlowPath(_:)();
          if (v24[0] != 8)
          {
            goto LABEL_19;
          }

          v29 = result;
          (*v27)(v13, &v29, TupleTypeMetadata2);
          swift_unknownObjectRelease();
        }

        result = __RawDictionaryStorage.find<A>(_:)(v13, a2, v28);
        if (v19)
        {
          break;
        }

        v20 = result;
        *(v14 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
        (*(*(a2 - 8) + 32))(v14[6] + *(*(a2 - 8) + 72) * result, v13, a2);
        result = (*(*(v26 - 8) + 32))(v14[7] + *(*(v26 - 8) + 72) * v20, &v13[v25]);
        v21 = v14[2];
        v22 = __OFADD__(v21, 1);
        v23 = v21 + 1;
        if (v22)
        {
          goto LABEL_17;
        }

        ++v16;
        v14[2] = v23;
        result = v18;
        if (v18 == v16)
        {
          goto LABEL_15;
        }
      }

      __break(1u);
LABEL_17:
      __break(1u);
    }

    __break(1u);
LABEL_19:
    __break(1u);
  }

  else
  {
LABEL_15:

    return v14;
  }

  return result;
}

unint64_t instantiation function for generic protocol witness table for LeafParentError(uint64_t a1)
{
  *(a1 + 8) = lazy protocol witness table accessor for type LeafParentError and conformance LeafParentError();
  result = lazy protocol witness table accessor for type LeafParentError and conformance LeafParentError();
  *(a1 + 16) = result;
  return result;
}

uint64_t getEnumTagSinglePayload for LeafParentError(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFC && *(a1 + 25))
  {
    return (*a1 + 252);
  }

  v3 = *(a1 + 24);
  if (v3 <= 4)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t storeEnumTagSinglePayload for LeafParentError(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFB)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 - 252;
    if (a3 >= 0xFC)
    {
      *(result + 25) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFC)
    {
      *(result + 25) = 0;
    }

    if (a2)
    {
      *(result + 24) = -a2;
    }
  }

  return result;
}

uint64_t partial apply for implicit closure #1 in closure #1 in static LeafParent.makeLeafParents<A>(dimensionBitCount:blockSize:from:)()
{
  v1 = *(v0 + 16);
  type metadata accessor for Leaf();

  return static Array._allocateUninitialized(_:)();
}

uint64_t _sSa9repeating5countSayxGx_SitcfC4VDAF7Field40V_Tt1B5Tm(uint64_t result, unint64_t a2)
{
  if ((a2 & 0x8000000000000000) != 0)
  {
    __break(1u);
    return result;
  }

  if (!a2)
  {
    return MEMORY[0x277D84F90];
  }

  v3 = result;
  result = static Array._allocateBufferUninitialized(minimumCapacity:)();
  *(result + 16) = a2;
  v4 = (result + 32);
  if (a2 <= 3)
  {
    v5 = 0;
LABEL_9:
    v9 = a2 - v5;
    do
    {
      *v4++ = v3;
      --v9;
    }

    while (v9);
    return result;
  }

  v5 = a2 & 0x7FFFFFFFFFFFFFFCLL;
  v4 += a2 & 0x7FFFFFFFFFFFFFFCLL;
  v6 = vdupq_n_s64(v3);
  v7 = (result + 48);
  v8 = a2 & 0x7FFFFFFFFFFFFFFCLL;
  do
  {
    v7[-1] = v6;
    *v7 = v6;
    v7 += 2;
    v8 -= 4;
  }

  while (v8);
  if (v5 != a2)
  {
    goto LABEL_9;
  }

  return result;
}

uint64_t protocol witness for static Equatable.== infix(_:_:) in conformance GeneratorError(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *(a1 + 16);
  v5 = *a2;
  v6 = a2[1];
  v7 = *(a2 + 16);
  return _s4VDAF17VDAFErrorProtocolPAAE2eeoiySbx_xtFZAA14GeneratorErrorO_Tt1g5();
}

uint64_t DPFGenerator.validateValues<A>(_:)(uint64_t a1, uint64_t a2)
{
  type metadata accessor for Dictionary.Keys();
  swift_getWitnessTable();
  result = Sequence<>.max()();
  if (v7)
  {
    lazy protocol witness table accessor for type GeneratorError and conformance GeneratorError();
    swift_allocError();
    *v4 = 0;
    *(v4 + 8) = 0;
    *(v4 + 16) = 1;
    return swift_willThrow();
  }

  if (a2 < -64 || a2 > 64)
  {
    goto LABEL_5;
  }

  if ((a2 & 0x8000000000000000) == 0)
  {
    if (a2 != 64)
    {
      if (v6 < 1 << a2)
      {
        return result;
      }

      goto LABEL_10;
    }

    goto LABEL_5;
  }

  if (a2 == -64)
  {
LABEL_5:
    if (v6 < 0)
    {
      return result;
    }

    goto LABEL_10;
  }

  if (v6 >= 0)
  {
LABEL_10:
    lazy protocol witness table accessor for type GeneratorError and conformance GeneratorError();
    swift_allocError();
    *v5 = v6;
    *(v5 + 8) = a2;
    *(v5 + 16) = 0;
    return swift_willThrow();
  }

  return result;
}

uint64_t DPFGenerator.generateInner(for:party0:party1:using:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, unint64_t a3@<X2>, uint64_t a4@<X3>, unint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t *a8@<X8>, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, char **a13)
{
  v17 = type metadata accessor for LeafParent();
  v18 = MEMORY[0x2743B2830](a1, v17);
  v19 = InnerCorrectionCalculator.init(leafParents:domainSeparationTag:)(a1, a10, a11, a13);
  v44 = v20;
  v45 = v19;
  *&v51 = a1;
  type metadata accessor for Array();

  swift_getWitnessTable();
  Collection.first.getter();
  if (v56)
  {
    v21 = *(v56 + 32);
  }

  else
  {
    v21 = 0;
  }

  outlined copy of Data._Representation(a2, a3);
  v22 = _sSa9repeating5countSayxGx_SitcfC10Foundation4DataV_Tt1g5Tf4gn_n(a2, a3, v18);
  outlined consume of Data._Representation(a2, a3);
  outlined copy of Data._Representation(a4, a5);
  v23 = _sSa9repeating5countSayxGx_SitcfC10Foundation4DataV_Tt1g5Tf4gn_n(a4, a5, v18);
  outlined consume of Data._Representation(a4, a5);
  result = makeClientRootCtrls(_:)(v18);
  if (v21 < 0)
  {
    __break(1u);
  }

  else
  {
    v26 = v25;
    if (v21)
    {
      v41 = v21;
      v27 = 0;
      v28 = MEMORY[0x277D84F90];
      v29 = v25;
      v30 = result;
      v31 = v23;
      v32 = v47;
      while (1)
      {
        InnerCorrectionCalculator.generate(at:with:using:)(v27, v22, v31, v30, v29, a6, a7, v45, &v51, v44, a11, a13);
        if (v32)
        {
          break;
        }

        v46 = v51;
        v33 = v52;
        v34 = v54;
        v48 = v55;
        v50 = v53;

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v28 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v28 + 2) + 1, 1, v28);
        }

        v36 = *(v28 + 2);
        v35 = *(v28 + 3);
        if (v36 >= v35 >> 1)
        {
          v28 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v35 > 1), v36 + 1, 1, v28);
          result = v34;
          v37 = v33;
        }

        else
        {
          v37 = v33;
          result = v34;
        }

        v32 = 0;
        ++v27;
        *(v28 + 2) = v36 + 1;
        *&v28[16 * v36 + 32] = v46;
        v26 = v48;
        v23 = v50;
        v29 = v48;
        v30 = result;
        v31 = v50;
        v22 = v37;
        if (v41 == v27)
        {
          goto LABEL_16;
        }
      }
    }

    else
    {
      v28 = MEMORY[0x277D84F90];
      v37 = v22;
LABEL_16:
      v38 = v37;
      v39 = result;

      *a8 = v38;
      a8[1] = v23;
      a8[2] = v39;
      a8[3] = v26;
      a8[4] = v28;
    }
  }

  return result;
}

uint64_t DPFGenerator.generate<A>(for:seedForParty0:seedForParty1:using:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, unint64_t a3@<X2>, uint64_t a4@<X3>, unint64_t a5@<X4>, uint64_t a6@<X5>, unint64_t a7@<X6>, uint64_t a8@<X7>, void *a9@<X8>, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, char **a15, void (**a16)(void, void, void), uint64_t a17)
{
  v42 = a12;
  result = specialized DPFGenerator.validateInputs<A>(_:_:_:_:)(a1, a2, a3, a4, a5, a8);
  if (!v17)
  {
    v32 = a4;
    v23 = v42;
    type metadata accessor for LeafParent();
    v24 = static LeafParent.makeLeafParents<A>(dimensionBitCount:blockSize:from:)(a8, a10, a1, a14, a17);
    DPFGenerator.generateInner(for:party0:party1:using:)(v24, a2, a3, v32, a5, a6, a7, v41, a12, a11, v42, a15, a15);
    v36 = v41[1];
    v38 = v41[0];
    v25 = v41[3];
    v40 = v41[4];
    v26 = LeafCorrectionCalculator.init(blockSize:leafParents:domainSeparationTag:)(a10, v24, a11, v23, a13, a15, a16);
    v28 = v27;
    v30 = v29;

    v31 = LeafCorrectionCalculator.calculate(seedsParty0:seedsParty1:nonce:ctrlParty1:)(v38, v36, a6, a7, v25, v26, v30, v28, v42, a13, a15, a16);

    return PreamblePublicShare.init(inner:leaf:)(v40, v31, a9);
  }

  return result;
}

uint64_t _sSa9repeating5countSayxGx_SitcfC10Foundation4DataV_Tt1g5Tf4gn_n(uint64_t result, unint64_t a2, uint64_t a3)
{
  if (a3 < 0)
  {
    __break(1u);
  }

  else
  {
    if (!a3)
    {
      return MEMORY[0x277D84F90];
    }

    v4 = result;
    v6 = static Array._allocateBufferUninitialized(minimumCapacity:)();
    v7 = v6;
    v6[2] = a3;
    v6[4] = v4;
    v6[5] = a2;
    v8 = a3 - 1;
    if (v8)
    {
      v9 = v6 + 7;
      do
      {
        outlined copy of Data._Representation(v4, a2);
        *(v9 - 1) = v4;
        *v9 = a2;
        v9 += 2;
        --v8;
      }

      while (v8);
    }

    outlined copy of Data._Representation(v4, a2);
    return v7;
  }

  return result;
}

uint64_t _sSa9repeating5countSayxGx_SitcfCSay4VDAF7Field40VG_Tt1g5Tf4gn_nTm(uint64_t result, uint64_t a2, uint64_t *a3, uint64_t *a4)
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

    v5 = result;
    __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
    v6 = static Array._allocateBufferUninitialized(minimumCapacity:)();
    v7 = v6;
    *(v6 + 16) = a2;
    *(v6 + 32) = v5;
    v8 = a2 - 1;
    if (v8)
    {
      v9 = (v6 + 40);
      do
      {
        *v9++ = v5;

        --v8;
      }

      while (v8);
    }

    return v7;
  }

  return result;
}

uint64_t specialized DPFGenerator.validateSeedsNonce(_:_:_:)(uint64_t result, unint64_t a2, uint64_t a3, unint64_t a4)
{
  v4 = a2 >> 62;
  if ((a2 >> 62) <= 1)
  {
    if (!v4)
    {
      v5 = BYTE6(a2);
      goto LABEL_11;
    }

    goto LABEL_8;
  }

  if (v4 != 2)
  {
    v5 = 0;
    goto LABEL_11;
  }

  v7 = *(result + 16);
  v6 = *(result + 24);
  v8 = __OFSUB__(v6, v7);
  v5 = v6 - v7;
  if (v8)
  {
    __break(1u);
LABEL_8:
    LODWORD(v5) = HIDWORD(result) - result;
    if (__OFSUB__(HIDWORD(result), result))
    {
      __break(1u);
      goto LABEL_25;
    }

    v5 = v5;
  }

LABEL_11:
  v9 = a4 >> 62;
  if ((a4 >> 62) > 1)
  {
    if (v9 != 2)
    {
      if (!v5)
      {
        return result;
      }

LABEL_23:
      lazy protocol witness table accessor for type GeneratorError and conformance GeneratorError();
      swift_allocError();
      *v13 = xmmword_270C44F50;
      *(v13 + 16) = 1;
      return swift_willThrow();
    }

    v11 = *(a3 + 16);
    v10 = *(a3 + 24);
    v8 = __OFSUB__(v10, v11);
    v12 = v10 - v11;
    if (!v8)
    {
      if (v5 == v12)
      {
        return result;
      }

      goto LABEL_23;
    }

LABEL_25:
    __break(1u);
    goto LABEL_26;
  }

  if (v9)
  {
    if (!__OFSUB__(HIDWORD(a3), a3))
    {
      if (v5 != HIDWORD(a3) - a3)
      {
        goto LABEL_23;
      }

      return result;
    }

LABEL_26:
    __break(1u);
    return result;
  }

  if (v5 != BYTE6(a4))
  {
    goto LABEL_23;
  }

  return result;
}

uint64_t specialized DPFGenerator.validateInputs<A>(_:_:_:_:)(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4, unint64_t a5, uint64_t a6)
{
  result = specialized DPFGenerator.validateSeedsNonce(_:_:_:)(a2, a3, a4, a5);
  if (!v6)
  {
    return DPFGenerator.validateValues<A>(_:)(a1, a6);
  }

  return result;
}

unint64_t instantiation function for generic protocol witness table for GeneratorError(uint64_t a1)
{
  *(a1 + 8) = lazy protocol witness table accessor for type GeneratorError and conformance GeneratorError();
  result = lazy protocol witness table accessor for type GeneratorError and conformance GeneratorError();
  *(a1 + 16) = result;
  return result;
}

uint64_t type metadata instantiation function for DPFGenerator()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

void *one-time initialization function for cache()
{
  result = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSi_SaySiGTt0g5Tf4g_n(MEMORY[0x277D84F90]);
  static BitReversal.cache = result;
  return result;
}

uint64_t one-time initialization function for lock()
{
  type metadata accessor for Lock();
  v0 = swift_allocObject();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss13ManagedBufferCyytSo16os_unfair_lock_sVGMd, &_ss13ManagedBufferCyytSo16os_unfair_lock_sVGMR);
  result = swift_allocObject();
  *(result + 16) = 0;
  *(v0 + 16) = result;
  static BitReversal.lock = v0;
  return result;
}

unint64_t specialized _NativeDictionary._insert(at:key:value:)(unint64_t result, uint64_t a2, uint64_t a3, void *a4)
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

unint64_t specialized _NativeDictionary.setValue(_:forKey:isUnique:)(uint64_t a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = *v3;
  result = specialized __RawDictionaryStorage.find<A>(_:)(a2);
  v11 = *(v8 + 16);
  v12 = (v10 & 1) == 0;
  v13 = __OFADD__(v11, v12);
  v14 = v11 + v12;
  if (v13)
  {
    __break(1u);
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v15 = v10;
  v16 = *(v8 + 24);
  if (v16 < v14 || (a3 & 1) == 0)
  {
    if (v16 < v14 || (a3 & 1) != 0)
    {
      specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v14, a3 & 1);
      v18 = *v4;
      result = specialized __RawDictionaryStorage.find<A>(_:)(a2);
      if ((v15 & 1) != (v19 & 1))
      {
LABEL_16:
        result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
        __break(1u);
        return result;
      }
    }

    else
    {
      v17 = result;
      specialized _NativeDictionary.copy()();
      result = v17;
    }
  }

  v20 = *v4;
  if ((v15 & 1) == 0)
  {
    v20[(result >> 6) + 8] |= 1 << result;
    *(v20[6] + 8 * result) = a2;
    *(v20[7] + 8 * result) = a1;
    v23 = v20[2];
    v13 = __OFADD__(v23, 1);
    v24 = v23 + 1;
    if (!v13)
    {
      v20[2] = v24;
      return result;
    }

    goto LABEL_15;
  }

  v21 = v20[7];
  v22 = *(v21 + 8 * result);
  *(v21 + 8 * result) = a1;
}

void specialized static BitReversal.indicesFor(_:)(uint64_t a1)
{
  if (a1 != 1)
  {
    if (one-time initialization token for lock != -1)
    {
      goto LABEL_20;
    }

    while (1)
    {
      v2 = static BitReversal.lock;
      os_unfair_lock_lock((*(static BitReversal.lock + 2) + 16));
      if (one-time initialization token for cache != -1)
      {
        swift_once();
      }

      swift_beginAccess();
      v3 = static BitReversal.cache;
      if (*(static BitReversal.cache + 2) && (v4 = specialized __RawDictionaryStorage.find<A>(_:)(a1), (v5 & 1) != 0))
      {
        v6 = *(*(v3 + 56) + 8 * v4);
      }

      else
      {
        v6 = 0;
      }

      swift_endAccess();
      os_unfair_lock_unlock((v2[2] + 16));
      if (v6)
      {
        break;
      }

      if (a1 < 0)
      {
        __break(1u);
LABEL_22:
        *(MEMORY[0x277D84F90] + 40) = v3;
        __break(1u);
        return;
      }

      v3 = a1 >> 1;
      if (!a1)
      {
        goto LABEL_22;
      }

      v7 = static Array._allocateBufferUninitialized(minimumCapacity:)();
      v7[2] = a1;
      bzero(v7 + 4, 8 * a1);
      v7[5] = v3;
      v8 = (a1 >> 1) - 1;
      if (a1 >> 1 == 1)
      {
LABEL_16:
        if (a1 <= 1024)
        {
          os_unfair_lock_lock((v2[2] + 16));
          swift_beginAccess();

          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          v14 = static BitReversal.cache;
          static BitReversal.cache = 0x8000000000000000;
          specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v7, a1, isUniquelyReferenced_nonNull_native);
          static BitReversal.cache = v14;
          swift_endAccess();
          os_unfair_lock_unlock((v2[2] + 16));
        }

        return;
      }

      v9 = v7 + 7;
      v10 = v7 + 5;
      v11 = 0x3FFFFFFFFFFFFFFFLL;
      while (v11)
      {
        v12 = *v10++;
        *(v9 - 1) = v12 >> 1;
        *v9 = (v12 >> 1) + v3;
        --v11;
        v9 += 2;
        if (!--v8)
        {
          goto LABEL_16;
        }
      }

      __break(1u);
LABEL_20:
      swift_once();
    }
  }
}

uint64_t static Share.== infix(_:_:)(uint64_t result, char a2, uint64_t a3, char a4, uint64_t a5, uint64_t a6)
{
  if ((a2 & 1) == 0)
  {
    if ((a4 & 1) == 0)
    {
      v7 = *(*(a6 + 8) + 8);
      return static Array<A>.== infix(_:_:)();
    }

    return 0;
  }

  if ((a4 & 1) == 0)
  {
    return 0;
  }

  v6 = *(result + 16);
  if (v6 != *(a3 + 16))
  {
    return 0;
  }

  if (!v6 || result == a3)
  {
    return 1;
  }

  v8 = (result + 32);
  v9 = (a3 + 32);
  while (v6)
  {
    v11 = *v8++;
    v10 = v11;
    v12 = *v9++;
    result = v10 == v12;
    if (v10 != v12 || v6-- == 1)
    {
      return result;
    }
  }

  __break(1u);
  return result;
}

uint64_t ShareDecodableParameter.encodedLength.getter(uint64_t result, char a2, uint64_t a3, uint64_t a4)
{
  if ((a2 & 1) == 0)
  {
    v4 = result;
    v5 = (*(a4 + 64))(a3, a4);
    v6 = (v5 * v4) >> 64 == (v5 * v4) >> 63;
    result = v5 * v4;
    if (!v6)
    {
      __break(1u);
    }
  }

  return result;
}

uint64_t Share.init<A>(from:parameter:)(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v10 = a1;
  v11 = *(a5 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](a1, a2);
  v17 = &v42 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (!v18)
  {
    lazy protocol witness table accessor for type VDAFCodableError and conformance VDAFCodableError();
    swift_allocError();
    *v24 = 0;
    v24[1] = 0;
    swift_willThrow();
    (*(v11 + 8))(v10, a5);
    return v10;
  }

  v44 = v14;
  v45 = v15;
  v19 = v13;
  v46 = v10;
  v47 = v11;
  v20 = *(*(a7 + 8) + 8);
  v21 = dispatch thunk of Collection.count.getter();
  v22 = v21;
  if (a3)
  {
    if (v21 == v19)
    {
      v23 = v46;
      v10 = specialized Seed.init<A>(from:parameter:)(v46, a5, a7);
      (*(v47 + 8))(v23, a5);
    }

    else
    {
      v48 = 0;
      v49 = 0xE000000000000000;
      v29 = v19;
      _StringGuts.grow(_:)(51);
      MEMORY[0x2743B25F0](0xD000000000000022, 0x8000000270C51EC0);
      v30 = v46;
      v50 = dispatch thunk of Collection.count.getter();
      v31 = dispatch thunk of CustomStringConvertible.description.getter();
      MEMORY[0x2743B25F0](v31);

      MEMORY[0x2743B25F0](0x65707865203D2120, 0xED00003D64657463);
      v50 = v29;
      v32 = dispatch thunk of CustomStringConvertible.description.getter();
      MEMORY[0x2743B25F0](v32);

      v33 = v48;
      v10 = v49;
      lazy protocol witness table accessor for type VDAFCodableError and conformance VDAFCodableError();
      swift_allocError();
      *v34 = v33;
      v34[1] = v10;
      swift_willThrow();
      (*(v47 + 8))(v30, a5);
    }

    return v10;
  }

  v43 = a5;
  v42 = *(v45 + 64);
  result = v42();
  if ((v19 * result) >> 64 == (v19 * result) >> 63)
  {
    if (v22 == v19 * result)
    {
      v27 = v46;
      v26 = v47;
      v28 = v43;
      (*(v47 + 16))(v17, v46, v43);
      v10 = Array<A>.init<A>(from:)(v17, v44, v28, v45, a7);
      (*(v26 + 8))(v27, v28);
    }

    else
    {
      v48 = 0;
      v49 = 0xE000000000000000;
      _StringGuts.grow(_:)(56);
      MEMORY[0x2743B25F0](0xD000000000000022, 0x8000000270C51EF0);
      v35 = v46;
      v36 = v43;
      v50 = dispatch thunk of Collection.count.getter();
      v37 = dispatch thunk of CustomStringConvertible.description.getter();
      MEMORY[0x2743B25F0](v37);

      MEMORY[0x2743B25F0](2107936, 0xE300000000000000);
      v50 = v42();
      v38 = dispatch thunk of CustomStringConvertible.description.getter();
      MEMORY[0x2743B25F0](v38);

      MEMORY[0x2743B25F0](0x65707865203D2120, 0xED00003D64657463);
      v50 = v19;
      v39 = dispatch thunk of CustomStringConvertible.description.getter();
      MEMORY[0x2743B25F0](v39);

      v40 = v48;
      v10 = v49;
      lazy protocol witness table accessor for type VDAFCodableError and conformance VDAFCodableError();
      swift_allocError();
      *v41 = v40;
      v41[1] = v10;
      swift_willThrow();
      (*(v47 + 8))(v35, v36);
    }

    return v10;
  }

  __break(1u);
  return result;
}

uint64_t protocol witness for VDAFDecodable.init<A>(from:parameter:) in conformance Share<A>@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  result = Share.init<A>(from:parameter:)(a1, *a2, *(a2 + 8), *(a5 + 16), a3, *(a5 + 24), a4);
  if (!v6)
  {
    *a6 = result;
    *(a6 + 8) = v9 & 1;
  }

  return result;
}

uint64_t Share.encodedLength.getter(uint64_t a1, char a2, uint64_t a3, uint64_t a4)
{
  if (a2)
  {
    return *(a1 + 16);
  }

  v6 = type metadata accessor for Array();
  WitnessTable = swift_getWitnessTable();
  return Collection<>.encodedLength.getter(v6, WitnessTable, *(a4 + 40));
}

uint64_t Share.encode<A>(into:)(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  if (a3)
  {

    return Seed.encode<A>(into:)();
  }

  else
  {
    v12 = type metadata accessor for Array();
    WitnessTable = swift_getWitnessTable();
    return Collection<>.encode<A>(into:)(a1, v12, a5, WitnessTable, a7, *(a6 + 40));
  }
}

uint64_t type metadata instantiation function for Share()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t __swift_memcpy9_8(uint64_t result, uint64_t *a2)
{
  v2 = *a2;
  *(result + 8) = *(a2 + 8);
  *result = v2;
  return result;
}

uint64_t getEnumTagSinglePayload for Share(uint64_t a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for Share(uint64_t result, unsigned int a2, unsigned int a3)
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
      *(result + 8) = -a2;
    }
  }

  return result;
}

size_t makeClientRootCtrls(_:)(size_t result)
{
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else
  {
    v1 = result;
    if (result)
    {
      v2 = static Array._allocateBufferUninitialized(minimumCapacity:)();
      *(v2 + 16) = v1;
      bzero((v2 + 32), v1);
      __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySbGMd, &_sSaySbGMR);
      v3 = static Array._allocateBufferUninitialized(minimumCapacity:)();
      v4 = v3;
      *(v3 + 16) = v1;
      *(v3 + 32) = v2;
      v5 = v1 - 1;
      if (v1 != 1)
      {
        v6 = (v3 + 40);
        do
        {
          *v6++ = v2;

          --v5;
        }

        while (v5);
      }

      v11 = MEMORY[0x277D84F90];
      specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v1, 0);
      v7 = v1;
      do
      {
        v8 = static Array._allocateBufferUninitialized(minimumCapacity:)();
        *(v8 + 16) = v1;
        bzero((v8 + 32), v1);
        *(v8 + 32) = 1;
        v10 = *(v11 + 16);
        v9 = *(v11 + 24);
        if (v10 >= v9 >> 1)
        {
          specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v9 > 1), v10 + 1, 1);
        }

        *(v11 + 16) = v10 + 1;
        *(v11 + 8 * v10 + 32) = v8;
        --v7;
      }

      while (v7);
    }

    else
    {
      v4 = MEMORY[0x277D84F90];
    }

    return v4;
  }

  return result;
}

uint64_t makeClientRootInput(seedParty0:seedParty1:keptBlockCount:)(uint64_t a1, unint64_t a2, uint64_t a3, unint64_t a4, size_t a5)
{
  outlined copy of Data._Representation(a1, a2);
  v10 = _sSa9repeating5countSayxGx_SitcfC10Foundation4DataV_Tt1g5Tf4gn_n(a1, a2, a5);
  outlined consume of Data._Representation(a1, a2);
  outlined copy of Data._Representation(a3, a4);
  _sSa9repeating5countSayxGx_SitcfC10Foundation4DataV_Tt1g5Tf4gn_n(a3, a4, a5);
  outlined consume of Data._Representation(a3, a4);
  makeClientRootCtrls(_:)(a5);
  return v10;
}

__n128 __swift_memcpy32_8(_OWORD *a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *a1 = *a2;
  a1[1] = v3;
  return result;
}

uint64_t getEnumTagSinglePayload for ClientLevelInput(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 32))
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

uint64_t storeEnumTagSinglePayload for ClientLevelInput(uint64_t result, int a2, int a3)
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
      *result = (a2 - 1);
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

uint64_t OutputShare.init<A>(from:parameter:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t *a7@<X8>)
{
  v14 = *(a4 - 8);
  v15 = *(v14 + 64);
  MEMORY[0x28223BE20](a1, a2);
  v17 = &v21 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v14 + 16))(v17, a1, v18);
  v19 = Array<A>.init<A>(from:)(v17, a3, a4, a5, a6);
  result = (*(v14 + 8))(a1, a4);
  if (!v7)
  {
    *a7 = v19;
  }

  return result;
}

uint64_t static OutputShare.== infix(_:_:)(uint64_t *a1, uint64_t *a2, uint64_t a3, uint64_t a4)
{
  v4 = *a1;
  v5 = *a2;
  v6 = *(*(a4 + 8) + 8);
  return static Array<A>.== infix(_:_:)();
}

uint64_t OutputShare.encodedLength.getter(uint64_t a1)
{
  v3 = *v1;
  v4 = *(a1 + 16);
  v5 = MEMORY[0x2743B2830](v3, v4);
  v6 = (*(*(a1 + 24) + 64))(v4);
  result = v5 * v6;
  if ((v5 * v6) >> 64 != (v5 * v6) >> 63)
  {
    __break(1u);
  }

  return result;
}

uint64_t OutputShare.encode<A>(into:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v13 = *v4;
  v9 = *(a2 + 16);
  v10 = type metadata accessor for Array();
  WitnessTable = swift_getWitnessTable();
  return Collection<>.encode<A>(into:)(a1, v10, a3, WitnessTable, a4, *(*(a2 + 24) + 40));
}

uint64_t type metadata instantiation function for OutputShare()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t PINEInputShare.measurementShare.getter()
{
  v1 = *v0;
  v2 = *(v0 + 8);
}

uint64_t PINEInputShare.proofShare.getter()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
}

uint64_t static PINEInputShare.== infix(_:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v7 = *(a1 + 16);
  v8 = *(a1 + 24);
  v10 = *(a1 + 32);
  v9 = *(a1 + 40);
  v11 = *(a2 + 16);
  v12 = *(a2 + 24);
  v14 = *(a2 + 32);
  v13 = *(a2 + 40);
  if ((static Share.== infix(_:_:)(*a1, *(a1 + 8), *a2, *(a2 + 8), a3, a5) & 1) == 0 || (static Share.== infix(_:_:)(v7, v8, v11, v12, a3, a5) & 1) == 0 || (specialized static Seed.== infix(_:_:)(v10, v14) & 1) == 0)
  {
    return 0;
  }

  return specialized static Seed.== infix(_:_:)(v9, v13);
}

uint64_t PINEInputShare.init(measurementShare:proofShare:wraparoundJointRandBlind:verificationJointRandBlind:)@<X0>(uint64_t result@<X0>, char a2@<W1>, uint64_t a3@<X2>, char a4@<W3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  *a7 = result;
  *(a7 + 8) = a2 & 1;
  *(a7 + 16) = a3;
  *(a7 + 24) = a4 & 1;
  *(a7 + 32) = a5;
  *(a7 + 40) = a6;
  return result;
}

uint64_t PINEInputShare.DecodableParameter.measurement.getter()
{
  result = *v0;
  v2 = *(v0 + 8);
  return result;
}

uint64_t PINEInputShare.DecodableParameter.proof.getter()
{
  result = *(v0 + 16);
  v2 = *(v0 + 24);
  return result;
}

uint64_t PINEInputShare.DecodableParameter.encodedLength.getter(void *a1)
{
  v3 = *v1;
  v4 = *(v1 + 8);
  v5 = *(v1 + 16);
  v6 = *(v1 + 24);
  v7 = a1[2];
  v8 = a1[4];
  v9 = ShareDecodableParameter.encodedLength.getter(v3, v4, v7, v8);
  result = ShareDecodableParameter.encodedLength.getter(v5, v6, v7, v8);
  v11 = v9 + result;
  if (__OFADD__(v9, result))
  {
    __break(1u);
    goto LABEL_6;
  }

  v12 = a1[3];
  result = (*(a1[5] + 8))();
  if (result + 0x4000000000000000 < 0)
  {
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  v13 = __OFADD__(v11, 2 * result);
  result = v11 + 2 * result;
  if (v13)
  {
LABEL_7:
    __break(1u);
  }

  return result;
}

uint64_t PINEInputShare.DecodableParameter.init<A>(vdaf:aggregatorID:)@<X0>(uint64_t a1@<X0>, Swift::Int a2@<X1>, uint64_t a3@<X3>, uint64_t a4@<X6>, uint64_t a5@<X8>)
{
  v10 = type metadata accessor for PINE();
  swift_getWitnessTable();
  v11 = VDAFProtocol.isLeaderAggregatorID(_:)(a2);
  if (v12)
  {
    return (*(*(v10 - 8) + 8))(a1, v10);
  }

  v14 = v11;
  if (v11)
  {
    v15 = PINE.measurementShareLength.getter(v10);
    v21 = 0;
    v16 = PINE.proofLength.getter(v10);
  }

  else
  {
    v20 = *(a4 + 8);
    v17 = v20(a3, a4);
    v21 = 1;
    v18 = a4;
    v15 = v17;
    v16 = v20(a3, v18);
  }

  v19 = v16;
  result = (*(*(v10 - 8) + 8))(a1, v10);
  *a5 = v15;
  *(a5 + 8) = v21;
  *(a5 + 16) = v19;
  *(a5 + 24) = !v14;
  return result;
}

uint64_t PINEInputShare.init<A>(from:parameter:)(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5, uint64_t (*a6)(void), uint64_t a7)
{
  v142 = a3;
  v13 = *(a5 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](a1, a2);
  v19 = &v126 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = *(v15 + 8);
  if (v20 == 255)
  {
    lazy protocol witness table accessor for type VDAFCodableError and conformance VDAFCodableError();
    swift_allocError();
    *v21 = 0;
    v21[1] = 0;
    swift_willThrow();
    return (*(v13 + 8))(a1, a5);
  }

  v134 = v7;
  v137 = v13;
  v138 = a1;
  v132 = v17;
  v23 = *v15;
  v24 = v20;
  v25 = *(v15 + 16);
  v26 = a5;
  v27 = *(v15 + 24);
  v28 = *(*(v16 + 8) + 8);
  v140 = v26;
  v136 = v28;
  v135 = dispatch thunk of Collection.count.getter();
  v139 = v23;
  v147 = a7;
  v148 = v23;
  v29 = v25;
  v30 = v24;
  v31 = v24 & 1;
  LOBYTE(v149) = v31;
  v150 = v29;
  LODWORD(v133) = v27;
  v32 = v27 & 1;
  v151 = v32;
  v144 = v142;
  v145 = a4;
  v141 = a6;
  v146 = a6;
  v33 = type metadata accessor for PINEInputShare.DecodableParameter();
  v34 = PINEInputShare.DecodableParameter.encodedLength.getter(v33);
  if (v135 != v34)
  {
    v144 = 0;
    v145 = 0xE000000000000000;
    _StringGuts.grow(_:)(24);
    v144 = v142;
    v145 = a4;
    v146 = v141;
    v147 = a7;
    type metadata accessor for PINEInputShare();
    v60 = _typeName(_:qualified:)();
    v62 = v61;

    v148 = v60;
    v149 = v62;
    MEMORY[0x2743B25F0](0x6572697571657220, 0xEB00000000203A64);
    v144 = v139;
    LOBYTE(v145) = v31;
    v146 = v29;
    LOBYTE(v147) = v32;
    v143 = PINEInputShare.DecodableParameter.encodedLength.getter(v33);
    v63 = dispatch thunk of CustomStringConvertible.description.getter();
    MEMORY[0x2743B25F0](v63);

    MEMORY[0x2743B25F0](0x203A746F67202CLL, 0xE700000000000000);
    v64 = v138;
    v65 = v140;
    v144 = dispatch thunk of Collection.count.getter();
    v66 = dispatch thunk of CustomStringConvertible.description.getter();
    MEMORY[0x2743B25F0](v66);

    v67 = v148;
    v68 = v149;
    lazy protocol witness table accessor for type VDAFCodableError and conformance VDAFCodableError();
    swift_allocError();
    *v69 = v67;
    v69[1] = v68;
    swift_willThrow();
    return (*(v137 + 8))(v64, v65);
  }

  v135 = v29;
  v128 = a4;
  v129 = a7;
  (*(v137 + 16))(v19, v138, v140);
  v35 = *(v136 + 8);
  v36 = ArraySlice.init<A>(_:)();
  v38 = v37;
  v40 = v39;
  v42 = v41;
  v43 = ShareDecodableParameter.encodedLength.getter(v139, v30 & 1, v142, v141);
  v136 = specialized Collection.prefix(_:)(v43, v36, v38, v40, v42);
  v45 = v44;
  v47 = v46;
  v49 = v48;
  v50 = specialized Collection.dropFirst(_:)(v43, v36, v38, v40, v42);
  v52 = v51;
  v131 = v53;
  v130 = v54;
  v144 = v136;
  v145 = v45;
  v146 = v47;
  v147 = v49;
  swift_unknownObjectRetain();
  v55 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss10ArraySliceVys5UInt8VGMd, "xq");
  v56 = lazy protocol witness table accessor for type ArraySlice<UInt8> and conformance ArraySlice<A>();
  v57 = v134;
  v58 = Share.init<A>(from:parameter:)(&v144, v139, v30 & 1, v142, v55, v141, v56);
  if (v57)
  {
    (*(v137 + 8))(v138, v140);
    return swift_unknownObjectRelease();
  }

  v134 = v58;
  v153 = v59 & 1;
  v70 = ShareDecodableParameter.encodedLength.getter(v135, v133 & 1, v142, v141);
  v71 = v131;
  v72 = v130;
  v139 = specialized Collection.prefix(_:)(v70, v50, v52, v131, v130);
  v74 = v73;
  v75 = v52;
  v77 = v76;
  v136 = v78;
  v79 = specialized Collection.dropFirst(_:)(v70, v50, v75, v71, v72);
  v81 = v80;
  v83 = v82;
  v131 = v84;
  v144 = v139;
  v145 = v74;
  v146 = v77;
  v147 = v136;
  swift_unknownObjectRetain();
  v130 = Share.init<A>(from:parameter:)(&v144, v135, v133 & 1, v142, v55, v141, v56);
  v152 = v85 & 1;
  v86 = v128;
  v141 = *(v129 + 8);
  v133 = v129 + 8;
  v87 = v83;
  v88 = v141(v128);
  v89 = v131;
  v90 = specialized Collection.prefix(_:)(v88, v79, v81, v87, v131);
  v127 = v91;
  v93 = v92;
  v94 = v81;
  v96 = v95;
  v142 = specialized Collection.dropFirst(_:)(v88, v79, v94, v87, v89);
  v139 = v97;
  v135 = v98;
  v136 = v99;
  if (v96)
  {
    type metadata accessor for __ContiguousArrayStorageBase();
    swift_unknownObjectRetain_n();
    swift_unknownObjectRetain();
    v104 = swift_dynamicCastClass();
    if (!v104)
    {
      swift_unknownObjectRelease();
      v104 = MEMORY[0x277D84F90];
    }

    v105 = *(v104 + 16);

    v106 = (v96 >> 1) - v93;
    if (__OFSUB__(v96 >> 1, v93))
    {
      __break(1u);
      goto LABEL_29;
    }

    v87 = v93;
    v103 = v142;
    if (v105 != v106)
    {
      goto LABEL_30;
    }

    v101 = swift_dynamicCastClass();
    swift_unknownObjectRelease_n();
    v86 = v128;
    v102 = v141;
    if (v101)
    {
      goto LABEL_17;
    }

    v101 = MEMORY[0x277D84F90];
    goto LABEL_16;
  }

  v87 = v93;
  swift_unknownObjectRetain();
  while (1)
  {
    specialized _copyCollectionToContiguousArray<A>(_:)(v90, v127, v87, v96);
    v101 = v100;
    v102 = v141;
    v103 = v142;
LABEL_16:
    swift_unknownObjectRelease();
LABEL_17:
    v142 = v101;
    v107 = v102(v86, v129);
    v108 = v135;
    v109 = v136;
    v110 = v139;
    v90 = specialized Collection.prefix(_:)(v107, v103, v135, v139, v136);
    v141 = v111;
    v96 = v112;
    v114 = v113;
    specialized Collection.dropFirst(_:)(v107, v103, v108, v110, v109);
    if ((v114 & 1) == 0)
    {
      swift_unknownObjectRetain();
LABEL_19:
      v115 = v137;
      specialized _copyCollectionToContiguousArray<A>(_:)(v90, v141, v96, v114);
      v117 = v116;
      swift_unknownObjectRelease();
      swift_unknownObjectRelease();
      result = (*(v115 + 8))(v138, v140);
      goto LABEL_27;
    }

    v87 = type metadata accessor for __ContiguousArrayStorageBase();
    swift_unknownObjectRetain_n();
    swift_unknownObjectRetain();
    v118 = swift_dynamicCastClass();
    if (!v118)
    {
      swift_unknownObjectRelease();
      v118 = MEMORY[0x277D84F90];
    }

    v119 = *(v118 + 16);

    v120 = v140;
    if (!__OFSUB__(v114 >> 1, v96))
    {
      break;
    }

LABEL_29:
    __break(1u);
LABEL_30:
    swift_unknownObjectRelease_n();
    v86 = v128;
  }

  if (v119 != (v114 >> 1) - v96)
  {
    swift_unknownObjectRelease_n();
    goto LABEL_19;
  }

  v117 = swift_dynamicCastClass();
  swift_unknownObjectRelease();
  v121 = v137;
  if (!v117)
  {
    swift_unknownObjectRelease();
    v117 = MEMORY[0x277D84F90];
  }

  (*(v121 + 8))(v138, v120);
  swift_unknownObjectRelease();
  result = swift_unknownObjectRelease();
LABEL_27:
  v122 = v142;
  v123 = v153;
  v124 = v152;
  v125 = v132;
  *v132 = v134;
  *(v125 + 8) = v123;
  v125[2] = v130;
  *(v125 + 24) = v124;
  v125[4] = v122;
  v125[5] = v117;
  return result;
}

uint64_t protocol witness for VDAFDecodable.init<A>(from:parameter:) in conformance PINEInputShare<A, B>(uint64_t a1, __int128 *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5 = *(a2 + 2);
  v6 = *(a2 + 24);
  v8 = *a2;
  v9 = v5;
  v10 = v6;
  return PINEInputShare.init<A>(from:parameter:)(a1, &v8, *(a5 + 16), *(a5 + 24), a3, *(a5 + 32), *(a5 + 40));
}

uint64_t PINEInputShare.encodedLength.getter(uint64_t a1)
{
  v2 = *v1;
  v3 = *(v1 + 8);
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v7 = *(v1 + 32);
  v6 = *(v1 + 40);
  v8 = *(a1 + 16);
  v9 = *(a1 + 32);
  v10 = Share.encodedLength.getter(v2, v3, v8, v9);
  result = Share.encodedLength.getter(v4, v5, v8, v9);
  v12 = v10 + result;
  if (__OFADD__(v10, result))
  {
    __break(1u);
    goto LABEL_6;
  }

  v13 = *(v7 + 16);
  v14 = __OFADD__(v12, v13);
  v15 = v12 + v13;
  if (v14)
  {
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  v16 = *(v6 + 16);
  result = v15 + v16;
  if (__OFADD__(v15, v16))
  {
LABEL_7:
    __break(1u);
  }

  return result;
}

uint64_t PINEInputShare.encode<A>(into:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = *v4;
  v9 = *(v4 + 8);
  v10 = *(v4 + 16);
  v11 = *(v4 + 24);
  v13 = *(v4 + 32);
  v12 = *(v4 + 40);
  v14 = *(a2 + 16);
  v15 = *(a2 + 32);
  Share.encode<A>(into:)(a1, v8, v9, v14, a3, v15, a4);
  Share.encode<A>(into:)(a1, v10, v11, v14, a3, v15, a4);
  Seed.encode<A>(into:)();

  return Seed.encode<A>(into:)();
}

uint64_t type metadata instantiation function for PINEInputShare()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t type metadata instantiation function for PINEInputShare.DecodableParameter()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t getEnumTagSinglePayload for PINEInputShare.DecodableParameter(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 25))
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

uint64_t storeEnumTagSinglePayload for PINEInputShare.DecodableParameter(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 25) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 25) = 0;
    }

    if (a2)
    {
      *(result + 8) = -a2;
    }
  }

  return result;
}

uint64_t static BatchedExtendableOutputFunction.makeXOF(seed:domainSeparationTag:binder:generating:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v12 = *(a1 + 16);
  v13 = *(a6 + 8);
  result = (*(v13 + 8))(a5, v13);
  if (v12 == result)
  {
    v15 = *(a6 + 16);

    v16 = v15(a1, a2, a3, a4, a5, a6);
    (*(v13 + 24))(a5, v13);
    return v16;
  }

  else
  {
    __break(1u);
  }

  return result;
}

VDAF::Usage_optional __swiftcall Usage.init(rawValue:)(Swift::UInt16 rawValue)
{
  v2 = (rawValue - 1);
  if (v2 >= 0xC)
  {
    LOBYTE(v2) = 12;
  }

  *v1 = v2;
  return rawValue;
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance Usage()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  Hasher._combine(_:)(v1 + 1);
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance Usage()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  Hasher._combine(_:)(v1 + 1);
  return Hasher._finalize()();
}

uint64_t static VDAFProtocol.measurementShareXOF(seed:aggregatorID:)(uint64_t a1, char a2, uint64_t a3, uint64_t a4)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v14 = 0;
  v9 = (*(a4 + 240))(&v14, a3, a4);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys5UInt8VGMd, &_ss23_ContiguousArrayStorageCys5UInt8VGMR);
  v10 = swift_allocObject();
  *(v10 + 16) = xmmword_270C44540;
  *(v10 + 32) = a2;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v12 = static ExtendableOutputFunction.makeXOF(seed:domainSeparationTag:binder:)(a1, v9, v10, AssociatedTypeWitness, AssociatedConformanceWitness);

  return v12;
}

uint64_t static VDAFProtocol.decodeMeasurementShare<A>(_:aggregatorID:count:)(uint64_t a1, char a2, char a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v9 = a1;
  if (a2)
  {
    v10 = static VDAFProtocol.measurementShareXOF(seed:aggregatorID:)(a1, a3, a5, a7);
    swift_getAssociatedTypeWitness();
    swift_getAssociatedConformanceWitness();
    v11 = static FieldElement.randomVector<A>(count:using:)(a4, v10, a6);
    swift_unknownObjectRelease();
    return v11;
  }

  else
  {

    if (MEMORY[0x2743B2830](v13, a6) != a4)
    {

      _StringGuts.grow(_:)(57);
      MEMORY[0x2743B25F0](0xD000000000000014, 0x8000000270C51E00);
      MEMORY[0x2743B25F0](0xD00000000000002DLL, 0x8000000270C51E50);
      v14 = dispatch thunk of CustomStringConvertible.description.getter();
      v9 = v15;
      MEMORY[0x2743B25F0](v14);

      MEMORY[0x2743B25F0](0x3D746F67202CLL, 0xE600000000000000);
      v16 = dispatch thunk of CustomStringConvertible.description.getter();
      MEMORY[0x2743B25F0](v16);

      lazy protocol witness table accessor for type VDAFError and conformance VDAFError();
      swift_allocError();
      *v17 = 0;
      *(v17 + 8) = 0xE000000000000000;
      *(v17 + 16) = 1;
      swift_willThrow();
    }

    return v9;
  }
}

uint64_t static VDAFProtocol.decodeProofShare<A>(_:aggregatorID:count:makeXOF:)(uint64_t a1, char a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(uint64_t), uint64_t a6, uint64_t a7, uint64_t a8)
{
  result = specialized static VDAFProtocol.decodeProofShare<A>(_:aggregatorID:count:makeXOF:)(a1, a2 & 1, a4, a5, a6, a7, a8);
  if (v8)
  {
    return v10;
  }

  return result;
}

uint64_t static VDAFProtocol.splitShare<A, B>(_:into:_:)(void *a1, uint64_t a2, uint64_t (*a3)(void), uint64_t a4, uint64_t a5, void (*a6)(char *, uint64_t), uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  v38 = a3;
  v39 = a4;
  v13 = *(*(a6 - 1) + 64);
  result = MEMORY[0x28223BE20](a1, a2);
  v18 = &v36 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (__OFSUB__(v15, 1))
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  if (v15 - 1 < 0)
  {
LABEL_16:
    __break(1u);
    return result;
  }

  v37 = v18;
  v40 = v16;
  if (v15 != 1)
  {
    result = 0;
    v19 = a10;
    v36 = v15 - 1;
    v42 = v40 + 8;
    v43 = a10;
    while (1)
    {
      v20 = result + 1;
      if (__OFADD__(result, 1))
      {
        break;
      }

      v21 = v38();
      result = MEMORY[0x2743B2830](*a1, a6);
      if (result < 0)
      {
        goto LABEL_14;
      }

      v41 = v20;
      v22 = v40;
      v23 = v37;
      if (result)
      {
        v24 = 0;
        v44 = result;
        v45 = v21;
        do
        {
          static FieldElement.randomElement<A>(using:)(v21, a6, a7, a9, v19, v23);
          v25 = a7;
          v26 = type metadata accessor for Array();
          Array._makeMutableAndUnique()();
          v27 = *a1;
          Array._checkSubscript_mutating(_:)(v24);
          _swift_isClassOrObjCExistentialType();
          v28 = *(v22 + 80);
          v29 = *(v22 + 72);
          v30 = *(a9 + 8);
          dispatch thunk of static AdditiveArithmetic.-= infix(_:_:)();
          (*(v22 + 8))(v23, a6);
          v31 = v26;
          a7 = v25;
          v19 = v43;
          destructiveProjectEnumData for SeedCtrlUnadjustedError(v31, v32, v33, v34, v35);
          v21 = v45;
          ++v24;
        }

        while (v44 != v24);
      }

      swift_unknownObjectRelease();
      result = v41;
      if (v41 == v36)
      {
        return result;
      }
    }

    __break(1u);
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  return result;
}

uint64_t specialized static VDAFProtocol.decodeProofShare<A>(_:aggregatorID:count:makeXOF:)(uint64_t a1, char a2, uint64_t a3, uint64_t (*a4)(uint64_t), uint64_t a5, uint64_t a6, uint64_t a7)
{
  if (a2)
  {
    v9 = a4(a1);
    swift_getAssociatedTypeWitness();
    swift_getAssociatedConformanceWitness();
    static FieldElement.randomVector<A>(count:using:)(a3, v9, a7);
    type metadata accessor for Array();
    swift_getWitnessTable();
    v10 = ArraySlice.init<A>(_:)();
    swift_unknownObjectRelease();
    return v10;
  }

  else
  {

    if (MEMORY[0x2743B2830](v12, a7) == a3)
    {
      type metadata accessor for Array();
      swift_getWitnessTable();
      return ArraySlice.init<A>(_:)();
    }

    else
    {

      _StringGuts.grow(_:)(51);
      MEMORY[0x2743B25F0](0xD000000000000014, 0x8000000270C51E00);
      MEMORY[0x2743B25F0](0xD000000000000027, 0x8000000270C51E20);
      v13 = dispatch thunk of CustomStringConvertible.description.getter();
      MEMORY[0x2743B25F0](v13);

      MEMORY[0x2743B25F0](0x3D746F67202CLL, 0xE600000000000000);
      v14 = dispatch thunk of CustomStringConvertible.description.getter();
      MEMORY[0x2743B25F0](v14);

      lazy protocol witness table accessor for type VDAFError and conformance VDAFError();
      swift_allocError();
      *v15 = 0;
      *(v15 + 8) = 0xE000000000000000;
      *(v15 + 16) = 1;
      return swift_willThrow();
    }
  }
}

unint64_t lazy protocol witness table accessor for type Usage and conformance Usage()
{
  result = lazy protocol witness table cache variable for type Usage and conformance Usage;
  if (!lazy protocol witness table cache variable for type Usage and conformance Usage)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Usage and conformance Usage);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for Usage(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for Usage(uint64_t result, unsigned int a2, unsigned int a3)
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

uint64_t Array<A>.init<A>(from:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v47 = *(a4 + 32);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  type metadata accessor for Optional();
  TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
  v10 = type metadata accessor for Optional();
  v11 = *(*(v10 - 8) + 64);
  v13 = MEMORY[0x28223BE20](v10 - 8, v12);
  v15 = &v41 - v14;
  v49 = *(a3 - 8);
  v16 = *(v49 + 64);
  MEMORY[0x28223BE20](v13, v17);
  v19 = &v41 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v48 = a5;
  v20 = *(*(a5 + 8) + 8);
  v51 = a3;
  v21 = dispatch thunk of Collection.count.getter();
  v50 = *(a4 + 64);
  v22 = v50(a2, a4);
  if (v22 != -1)
  {
    if (v22)
    {
      v21 %= v22;
    }

    if (v21)
    {
      v52 = 0;
      v53 = 0xE000000000000000;
      _StringGuts.grow(_:)(69);
      type metadata accessor for Array();
      v23 = _typeName(_:qualified:)();
      MEMORY[0x2743B25F0](v23);

      MEMORY[0x2743B25F0](0xD000000000000010, 0x8000000270C51B60);
      v24 = v51;
      v54 = dispatch thunk of Collection.count.getter();
      v25 = dispatch thunk of CustomStringConvertible.description.getter();
      MEMORY[0x2743B25F0](v25);

      MEMORY[0x2743B25F0](0xD00000000000002ELL, 0x8000000270C51B80);
      v54 = v50(a2, a4);
      v26 = dispatch thunk of CustomStringConvertible.description.getter();
      MEMORY[0x2743B25F0](v26);

      MEMORY[0x2743B25F0](41, 0xE100000000000000);
      v27 = v52;
      v28 = v53;
      lazy protocol witness table accessor for type FieldElementError and conformance FieldElementError();
      swift_allocError();
      *v29 = v27;
      *(v29 + 8) = v28;
      *(v29 + 16) = 0;
      swift_willThrow();
      (*(v49 + 8))(a1, v24);
      return v27;
    }
  }

  v30 = dispatch thunk of Collection.count.getter();
  result = v50(a2, a4);
  if (result)
  {
    if (v30 != 0x8000000000000000 || result != -1)
    {
      v43 = a4;
      v44 = a1;
      v33 = v49;
      v34 = *(v49 + 16);
      v42 = v30 / result;
      v35 = a1;
      v36 = v51;
      v34(v19, v35, v51);
      v37 = TupleTypeMetadata3;
      v38 = *(TupleTypeMetadata3 + 48);
      v39 = *(TupleTypeMetadata3 + 64);
      (*(*(AssociatedTypeWitness - 8) + 56))(v15, 1, 1);
      v40 = v43;
      *&v15[v38] = v42;
      *&v15[v39] = v50(a2, v40);
      (*(*(v37 - 8) + 56))(v15, 0, 1, v37);
      v27 = Array<A>.init<A>(from:parameter:)(v19, v15, a2, v36, v47, v48);
      (*(v33 + 8))(v44, v36);
      return v27;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t static FieldElement.randomVector<A>(count:using:)(uint64_t result, uint64_t a2, uint64_t a3)
{
  if (result < 0)
  {
    __break(1u);
  }

  else
  {
    v13[10] = 0;
    v13[11] = result;
    MEMORY[0x28223BE20](result, a2);
    v13[2] = v5;
    v13[3] = v6;
    v13[4] = v7;
    v13[5] = v8;
    v13[6] = v3;
    v13[7] = v9;
    v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSnySiGMd, &_sSnySiGMR);
    v11 = lazy protocol witness table accessor for type Range<Int> and conformance <> Range<A>();
    return _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lF(partial apply for closure #1 in static FieldElement.randomVector<A>(count:using:), v13, v10, a3, MEMORY[0x277D84A98], v11, MEMORY[0x277D84AC0], v12);
  }

  return result;
}

uint64_t FieldElement.init(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v26[1] = a4;
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v8 = *(AssociatedTypeWitness - 8);
  v9 = *(v8 + 64);
  v11 = MEMORY[0x28223BE20](AssociatedTypeWitness, v10);
  v13 = v26 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = MEMORY[0x28223BE20](v11, v14);
  v17 = v26 - v16;
  MEMORY[0x28223BE20](v15, v18);
  v20 = v26 - v19;
  if ((a1 & 0x8000000000000000) == 0)
  {
    v27 = a1;
    v21 = *(*(swift_getAssociatedConformanceWitness() + 8) + 8);
    lazy protocol witness table accessor for type Int and conformance Int();
    dispatch thunk of BinaryInteger.init<A>(_:)();
LABEL_5:
    (*(v8 + 16))(v17, v20, AssociatedTypeWitness);
    FieldElement.init(_:)(v17, a2, a3);
    return (*(v8 + 8))(v20, AssociatedTypeWitness);
  }

  result = static FieldElement.modulus.getter();
  if (!__OFSUB__(0, a1))
  {
    v27 = -a1;
    v23 = *(*(swift_getAssociatedConformanceWitness() + 8) + 8);
    lazy protocol witness table accessor for type Int and conformance Int();
    dispatch thunk of BinaryInteger.init<A>(_:)();
    v24 = *(*(v23 + 24) + 8);
    dispatch thunk of static AdditiveArithmetic.- infix(_:_:)();
    v25 = *(v8 + 8);
    v25(v13, AssociatedTypeWitness);
    v25(v17, AssociatedTypeWitness);
    goto LABEL_5;
  }

  __break(1u);
  return result;
}

uint64_t static FieldElement.randomElement<A>(using:)@<X0>(uint64_t a1@<X0>, void (*a2)(char *, uint64_t)@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v46 = a3;
  v47 = a5;
  v45 = a1;
  v37 = a6;
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  v8 = &protocol requirements base descriptor for FiniteFieldProtocol;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v38 = *(AssociatedTypeWitness - 8);
  v10 = *(v38 + 64);
  v12 = MEMORY[0x28223BE20](AssociatedTypeWitness, v11);
  v44 = &v37 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = MEMORY[0x28223BE20](v12, v14);
  v17 = &v37 - v16;
  MEMORY[0x28223BE20](v15, v18);
  v20 = &v37 - v19;
  v22 = a4 + 64;
  v21 = *(a4 + 64);
  v23 = *(*(swift_getAssociatedConformanceWitness() + 8) + 8);
  v39 = *(*(v23 + 24) + 8);
  dispatch thunk of static AdditiveArithmetic.zero.getter();
  v40 = v21;
  v41 = a4 + 64;
  v24 = v21(a2, a4);
  if (v24 < 0)
  {
LABEL_8:
    __break(1u);
  }

  else
  {
    v25 = a4;
    v26 = (v47 + 32);
    v27 = (v38 + 8);
    v49 = (v47 + 32);
    v50 = v23;
    v42 = a2;
    v43 = v25;
    v51 = v20;
    while (1)
    {
      v28 = v17;
      v29 = MEMORY[0x277D84B78];
      v30 = v44;
      if (v24)
      {
        v31 = 0;
        v48 = *v26;
        do
        {
          v52 = v24;
          v54 = v48(v46, v47);
          lazy protocol witness table accessor for type UInt8 and conformance UInt8();
          dispatch thunk of BinaryInteger.init<A>(_:)();
          v53 = v31;
          lazy protocol witness table accessor for type Int and conformance Int();
          dispatch thunk of static BinaryInteger.<< infix<A>(_:_:)();
          v32 = v29;
          v33 = *v27;
          (*v27)(v30, AssociatedTypeWitness);
          dispatch thunk of static BinaryInteger.|= infix(_:_:)();
          v33(v28, AssociatedTypeWitness);
          v29 = v32;
          v31 += 8;
          v24 = v52 - 1;
        }

        while (v52 != 1);
      }

      v8 = v42;
      v22 = v43;
      static FieldElement.modulus.getter();
      v20 = v51;
      v34 = *(*(v50 + 32) + 8);
      v35 = dispatch thunk of static Comparable.> infix(_:_:)();
      a2 = *v27;
      (*v27)(v28, AssociatedTypeWitness);
      v17 = v28;
      if ((v35 & 1) == 0)
      {
        break;
      }

      a2(v20, AssociatedTypeWitness);
      dispatch thunk of static AdditiveArithmetic.zero.getter();
      v24 = v40(v8, v22);
      v26 = v49;
      if (v24 < 0)
      {
        goto LABEL_8;
      }
    }
  }

  (*(v38 + 16))(v17, v20, AssociatedTypeWitness);
  FieldElement.init(_:)(v17, v8, v22);
  return (a2)(v20, AssociatedTypeWitness);
}

uint64_t FieldElement.init(_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v8 = *(AssociatedTypeWitness - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](AssociatedTypeWitness, v10);
  v12 = &v14 - v11;
  (*(a3 + 112))(a2, a3);
  swift_checkMetadataState();
  (*(AssociatedConformanceWitness + 64))(a1);
  (*(a3 + 96))(v12, a2, a3);
  return (*(v8 + 8))(a1, AssociatedTypeWitness);
}

uint64_t FieldElement.init(other:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v7 = *(*(AssociatedTypeWitness - 8) + 64);
  MEMORY[0x28223BE20](AssociatedTypeWitness - 8, v8);
  v10 = &v12 - v9;
  (*(a3 + 112))(a2, a3);
  (*(a3 + 88))(a2, a3);
  (*(a3 + 96))(v10, a2, a3);
  return (*(*(a2 - 8) + 8))(a1, a2);
}

uint64_t static FieldElement.modulus.getter()
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  return (*(AssociatedConformanceWitness + 24))(AssociatedTypeWitness, AssociatedConformanceWitness);
}

uint64_t FieldElement.init<A>(floatValue:fractionalBitCount:)@<X0>(uint64_t a1@<X0>, void (*a2)(void, void)@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  v20[1] = a7;
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v15 = *(*(AssociatedTypeWitness - 8) + 64);
  MEMORY[0x28223BE20](AssociatedTypeWitness - 8, v16);
  v18 = v20 - v17;
  static FieldElement.integerFrom<A>(floatValue:fractionalBitCount:)(a1, a2, a3, a4, a5, a6, v20 - v17);
  if (!v7)
  {
    FieldElement.init(_:)(v18, a3, a5);
  }

  return (*(*(a4 - 8) + 8))(a1, a4);
}

uint64_t static FieldElement.integerFrom<A>(floatValue:fractionalBitCount:)@<X0>(uint64_t a1@<X0>, void (*a2)(void, void)@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  v146 = a2;
  v121 = a7;
  v11 = *(a6 + 16);
  v131 = *(v11 + 16);
  v132 = a6;
  v129 = *(v131 + 8);
  v120 = *(v129 + 16);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v12 = *(*(AssociatedTypeWitness - 8) + 64);
  MEMORY[0x28223BE20](AssociatedTypeWitness, v13);
  v118 = &v114[-v14];
  swift_getAssociatedTypeWitness();
  v134 = a3;
  v135 = a5;
  swift_getAssociatedConformanceWitness();
  swift_getAssociatedTypeWitness();
  v141 = *(swift_getAssociatedConformanceWitness() + 8);
  v140 = *(v141 + 8);
  v117 = *(v140 + 24);
  v130 = *(v117 + 16);
  v128 = swift_getAssociatedTypeWitness();
  v15 = *(*(v128 - 8) + 64);
  MEMORY[0x28223BE20](v128, v16);
  v127 = &v114[-v17];
  v125 = type metadata accessor for FloatingPointRoundingRule();
  v124 = *(v125 - 8);
  v18 = *(v124 + 64);
  MEMORY[0x28223BE20](v125, v19);
  v123 = &v114[-((v20 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v145 = swift_checkMetadataState();
  v133 = *(v145 - 8);
  v21 = *(v133 + 64);
  v23 = MEMORY[0x28223BE20](v145, v22);
  v126 = &v114[-((v24 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v26 = MEMORY[0x28223BE20](v23, v25);
  v137 = &v114[-v27];
  v29 = MEMORY[0x28223BE20](v26, v28);
  v139 = &v114[-v30];
  v32 = MEMORY[0x28223BE20](v29, v31);
  v143 = &v114[-v33];
  v144 = *(a4 - 8);
  v34 = *(v144 + 64);
  v36 = MEMORY[0x28223BE20](v32, v35);
  v122 = &v114[-((v37 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v39 = MEMORY[0x28223BE20](v36, v38);
  v136 = &v114[-v40];
  MEMORY[0x28223BE20](v39, v41);
  v142 = &v114[-v42];
  swift_getAssociatedTypeWitness();
  v43 = *(swift_getAssociatedConformanceWitness() + 8);
  v44 = *(v43[3] + 16);
  v45 = swift_getAssociatedTypeWitness();
  v46 = *(*(v45 - 8) + 64);
  MEMORY[0x28223BE20](v45, v47);
  v48 = swift_checkMetadataState();
  v147 = *(v48 - 8);
  v49 = *(v147 + 64);
  v51 = MEMORY[0x28223BE20](v48, v50);
  v138 = &v114[-((v52 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v51, v53);
  v55 = &v114[-v54];
  if (dispatch thunk of FloatingPoint.isNaN.getter())
  {
    v56 = 0x8000000270C52050;
    lazy protocol witness table accessor for type FieldElementError and conformance FieldElementError();
    swift_allocError();
    v58 = 0xD000000000000011;
LABEL_7:
    *v57 = v58;
    *(v57 + 8) = v56;
LABEL_8:
    *(v57 + 16) = 4;
    return swift_willThrow();
  }

  if (dispatch thunk of FloatingPoint.isInfinite.getter())
  {
    v56 = 0x8000000270C52070;
    lazy protocol witness table accessor for type FieldElementError and conformance FieldElementError();
    swift_allocError();
    v58 = 0xD000000000000018;
    goto LABEL_7;
  }

  if (dispatch thunk of FloatingPoint.isSubnormal.getter())
  {
    v56 = 0x8000000270C52190;
    lazy protocol witness table accessor for type FieldElementError and conformance FieldElementError();
    swift_allocError();
    v58 = 0xD000000000000017;
    goto LABEL_7;
  }

  v116 = a1;
  dispatch thunk of FloatingPoint.exponent.getter();
  if ((dispatch thunk of static BinaryInteger.isSigned.getter() & 1) == 0 || dispatch thunk of BinaryInteger.bitWidth.getter() <= 64)
  {
    goto LABEL_22;
  }

  v148 = 0x8000000000000000;
  if (dispatch thunk of static BinaryInteger.isSigned.getter())
  {
    if (dispatch thunk of BinaryInteger.bitWidth.getter() < 64)
    {
      goto LABEL_21;
    }

    goto LABEL_16;
  }

  v115 = dispatch thunk of static BinaryInteger.isSigned.getter();
  v60 = dispatch thunk of BinaryInteger.bitWidth.getter();
  if (v115)
  {
    if (v60 <= 64)
    {
      swift_getAssociatedConformanceWitness();
      dispatch thunk of _ExpressibleByBuiltinIntegerLiteral.init(_builtinIntegerLiteral:)();
      v64 = v138;
      dispatch thunk of ExpressibleByIntegerLiteral.init(integerLiteral:)();
      v65 = *(v43[4] + 8);
      v66 = dispatch thunk of static Comparable.< infix(_:_:)();
      result = (*(v147 + 8))(v64, v48);
      if (v66)
      {
LABEL_41:
        __break(1u);
        return result;
      }

      goto LABEL_21;
    }

LABEL_16:
    lazy protocol witness table accessor for type Int and conformance Int();
    v61 = v138;
    dispatch thunk of BinaryInteger.init<A>(truncatingIfNeeded:)();
    v62 = *(v43[4] + 8);
    v63 = dispatch thunk of static Comparable.< infix(_:_:)();
    result = (*(v147 + 8))(v61, v48);
    if (v63)
    {
      goto LABEL_41;
    }

    goto LABEL_22;
  }

  if (v60 < 64)
  {
LABEL_21:
    dispatch thunk of BinaryInteger._lowWord.getter();
  }

LABEL_22:
  v67 = dispatch thunk of BinaryInteger.bitWidth.getter();
  v69 = v146;
  v68 = v147;
  if (v67 <= 64)
  {
    goto LABEL_27;
  }

  while (1)
  {
    v148 = 0x7FFFFFFFFFFFFFFFLL;
    v70 = dispatch thunk of static BinaryInteger.isSigned.getter();
    v71 = dispatch thunk of BinaryInteger.bitWidth.getter();
    if ((v70 & 1) == 0)
    {
      break;
    }

    if (v71 < 65)
    {
      goto LABEL_31;
    }

LABEL_25:
    lazy protocol witness table accessor for type Int and conformance Int();
    v72 = v138;
    dispatch thunk of BinaryInteger.init<A>(truncatingIfNeeded:)();
    v73 = *(v43[4] + 8);
    v74 = dispatch thunk of static Comparable.< infix(_:_:)();
    (*(v68 + 8))(v72, v48);
    if (v74)
    {
      __break(1u);
LABEL_27:
      if (dispatch thunk of BinaryInteger.bitWidth.getter() == 64 && (dispatch thunk of static BinaryInteger.isSigned.getter() & 1) == 0)
      {
        continue;
      }
    }

    goto LABEL_32;
  }

  if (v71 >= 64)
  {
    goto LABEL_25;
  }

LABEL_31:
  dispatch thunk of BinaryInteger._lowWord.getter();
LABEL_32:
  v75 = dispatch thunk of BinaryInteger._lowWord.getter();
  v76 = *(v68 + 8);
  v147 = v68 + 8;
  result = v76(v55, v48);
  if (__OFADD__(v75, v69))
  {
    __break(1u);
    goto LABEL_41;
  }

  v77 = v145;
  if (v69 + v75 >= dispatch thunk of static FixedWidthInteger.bitWidth.getter())
  {
    v148 = 0;
    v149 = 0xE000000000000000;
    _StringGuts.grow(_:)(75);
    MEMORY[0x2743B25F0](0xD000000000000016, 0x8000000270C52090);
    v104 = v138;
    dispatch thunk of FloatingPoint.exponent.getter();
    v105 = v43[1];
    DefaultStringInterpolation.appendInterpolation<A>(_:)();
    v76(v104, v48);
    MEMORY[0x2743B25F0](0xD000000000000018, 0x8000000270C520B0);
    v150 = v146;
    v106 = dispatch thunk of CustomStringConvertible.description.getter();
    MEMORY[0x2743B25F0](v106);

    MEMORY[0x2743B25F0](0xD000000000000016, 0x8000000270C520D0);
    v150 = dispatch thunk of static FixedWidthInteger.bitWidth.getter();
    v107 = dispatch thunk of CustomStringConvertible.description.getter();
    MEMORY[0x2743B25F0](v107);

    MEMORY[0x2743B25F0](46, 0xE100000000000000);
    v108 = v148;
    v109 = v149;
    lazy protocol witness table accessor for type FieldElementError and conformance FieldElementError();
    swift_allocError();
    *v57 = v108;
    *(v57 + 8) = v109;
    goto LABEL_8;
  }

  v148 = 1;
  lazy protocol witness table accessor for type Int and conformance Int();
  v78 = v139;
  dispatch thunk of BinaryInteger.init<A>(_:)();
  v148 = v146;
  dispatch thunk of static BinaryInteger.<< infix<A>(_:_:)();
  v79 = *(v133 + 8);
  v141 = v133 + 8;
  v146 = v79;
  v79(v78, v77);
  v80 = v136;
  dispatch thunk of FloatingPoint.init<A>(_:)();
  dispatch thunk of static Numeric.* infix(_:_:)();
  v81 = v144 + 8;
  v147 = *(v144 + 8);
  (v147)(v80, a4);
  v82 = v124;
  v83 = v123;
  v84 = v125;
  (*(v124 + 104))(v123, *MEMORY[0x277D84670], v125);
  v85 = v122;
  dispatch thunk of FloatingPoint.rounded(_:)();
  (*(v82 + 8))(v83, v84);
  v138 = *(*(v11 + 24) + 8);
  abs<A>(_:)();
  v144 = v81;
  (v147)(v85, a4);
  v86 = v137;
  v87 = v145;
  v88 = v140;
  dispatch thunk of BinaryInteger.init<A>(_:)();
  v89 = v139;
  static FieldElement.modulus.getter();
  swift_getAssociatedConformanceWitness();
  dispatch thunk of _ExpressibleByBuiltinIntegerLiteral.init(_builtinIntegerLiteral:)();
  v90 = v126;
  v91 = v88;
  v92 = v87;
  v93 = v146;
  dispatch thunk of ExpressibleByIntegerLiteral.init(integerLiteral:)();
  v94 = v143;
  dispatch thunk of static BinaryInteger./ infix(_:_:)();
  v93(v90, v92);
  v93(v89, v92);
  v95 = *(*(v91 + 32) + 8);
  v96 = dispatch thunk of static Comparable.<= infix(_:_:)();
  v93(v94, v92);
  if (v96)
  {
    swift_getAssociatedConformanceWitness();
    dispatch thunk of _ExpressibleByBuiltinIntegerLiteral.init(_builtinIntegerLiteral:)();
    v97 = v136;
    dispatch thunk of ExpressibleByIntegerLiteral.init(integerLiteral:)();
    v98 = dispatch thunk of static Comparable.< infix(_:_:)();
    v99 = v147;
    (v147)(v97, a4);
    if (v98)
    {
      v100 = v143;
      static FieldElement.modulus.getter();
      v101 = *(v117 + 8);
      v102 = v137;
      v103 = v145;
      dispatch thunk of static AdditiveArithmetic.- infix(_:_:)();
      v93(v100, v103);
      v93(v102, v103);
      return v99(v142, a4);
    }

    else
    {
      v99(v142, a4);
      return (*(v133 + 32))(v121, v137, v145);
    }
  }

  else
  {
    v148 = 0;
    v149 = 0xE000000000000000;
    _StringGuts.grow(_:)(49);
    MEMORY[0x2743B25F0](0x6C615674616F6C66, 0xEB000000003D6575);
    DefaultStringInterpolation.appendInterpolation<A>(_:)();
    MEMORY[0x2743B25F0](0xD000000000000020, 0x8000000270C52160);
    v110 = *(v91 + 8);
    DefaultStringInterpolation.appendInterpolation<A>(_:)();
    MEMORY[0x2743B25F0](11817, 0xE200000000000000);
    v111 = v148;
    v112 = v149;
    lazy protocol witness table accessor for type FieldElementError and conformance FieldElementError();
    swift_allocError();
    *v113 = v111;
    *(v113 + 8) = v112;
    *(v113 + 16) = 4;
    swift_willThrow();
    v93(v86, v92);
    return (v147)(v142, a4);
  }
}

uint64_t FieldElement.init<A>(bytes:mask:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  v49[1] = a7;
  v55 = a2;
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v54 = *(AssociatedTypeWitness - 8);
  v12 = *(v54 + 64);
  v14 = MEMORY[0x28223BE20](AssociatedTypeWitness, v13);
  v50 = v49 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14, v16);
  v53 = v49 - v17;
  v18 = a6;
  v19 = *(*(a6 + 8) + 8);
  v58 = a1;
  v56 = a4;
  v51 = v19;
  v20 = dispatch thunk of Collection.count.getter();
  v21 = *(a5 + 64);
  if (v20 == v21(a3, a5))
  {
    v22 = v55;
    v23 = v21(a3, a5);
    v24 = AssociatedTypeWitness;
    v25 = *(swift_getAssociatedConformanceWitness() + 8);
    v26 = v52;
    v27 = v58;
    v28 = v56;
    decodeInteger<A, B>(from:encodedLength:)(v58, v23, v56, v24, v18, v25, v53);
    if (v26)
    {
      (*(v54 + 8))(v22, v24);
      return (*(*(v28 - 8) + 8))(v27, v28);
    }

    else
    {
      v40 = *(v25 + 8);
      dispatch thunk of static BinaryInteger.&= infix(_:_:)();
      v41 = v50;
      static FieldElement.modulus.getter();
      v42 = *(*(v40 + 32) + 8);
      LOBYTE(v40) = dispatch thunk of static Comparable.>= infix(_:_:)();
      v43 = v54;
      v44 = *(v54 + 8);
      v44(v41, v24);
      if (v40)
      {
        lazy protocol witness table accessor for type FieldElementError and conformance FieldElementError();
        swift_allocError();
        *v45 = 0;
        *(v45 + 8) = 0;
        *(v45 + 16) = 5;
        swift_willThrow();
        v46 = AssociatedTypeWitness;
        v44(v55, AssociatedTypeWitness);
        (*(*(v56 - 8) + 8))(v58);
        v47 = v53;
      }

      else
      {
        v48 = v53;
        v46 = AssociatedTypeWitness;
        (*(v43 + 16))(v41, v53, AssociatedTypeWitness);
        FieldElement.init(_:)(v41, a3, a5);
        v44(v55, v46);
        (*(*(v56 - 8) + 8))(v58);
        v47 = v48;
      }

      return (v44)(v47, v46);
    }
  }

  else
  {
    v59 = 0;
    v60 = 0xE000000000000000;
    _StringGuts.grow(_:)(31);
    v30 = _typeName(_:qualified:)();
    v32 = v31;

    v59 = v30;
    v60 = v32;
    MEMORY[0x2743B25F0](0xD000000000000012, 0x8000000270C52710);
    v61 = v21(a3, a5);
    v33 = dispatch thunk of CustomStringConvertible.description.getter();
    MEMORY[0x2743B25F0](v33);

    MEMORY[0x2743B25F0](0x203A746F67202CLL, 0xE700000000000000);
    v34 = v58;
    v35 = v56;
    v61 = dispatch thunk of Collection.count.getter();
    v36 = dispatch thunk of CustomStringConvertible.description.getter();
    MEMORY[0x2743B25F0](v36);

    v37 = v59;
    v38 = v60;
    lazy protocol witness table accessor for type FieldElementError and conformance FieldElementError();
    swift_allocError();
    *v39 = v37;
    *(v39 + 8) = v38;
    *(v39 + 16) = 0;
    swift_willThrow();
    (*(v54 + 8))(v55, AssociatedTypeWitness);
    return (*(*(v35 - 8) + 8))(v34, v35);
  }
}

uint64_t FieldElement.init(inputVector:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, unint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  v91 = a3;
  v92 = a4;
  v93 = a2;
  v77[1] = a7;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v103 = AssociatedTypeWitness;
  v89 = swift_getAssociatedTypeWitness();
  v97 = *(v89 - 8);
  v11 = *(v97 + 64);
  v13 = MEMORY[0x28223BE20](v89, v12);
  v88 = v77 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = MEMORY[0x28223BE20](v13, v15);
  v87 = v77 - v17;
  v19 = MEMORY[0x28223BE20](v16, v18);
  v21 = v77 - v20;
  v107 = *(a5 - 8);
  v22 = *(v107 + 64);
  v24 = MEMORY[0x28223BE20](v19, v23);
  v26 = v77 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = MEMORY[0x28223BE20](v24, v27);
  v30 = v77 - v29;
  v32 = MEMORY[0x28223BE20](v28, v31);
  v34 = v77 - v33;
  v36 = MEMORY[0x28223BE20](v32, v35);
  v90 = v77 - v37;
  v39 = MEMORY[0x28223BE20](v36, v38);
  v41 = v77 - v40;
  MEMORY[0x28223BE20](v39, v42);
  v44 = v77 - v43;
  v108 = a1;
  v45 = ArraySlice.count.getter();
  v46 = a6;
  v47 = v111;
  static FieldElement.assertValidBitLength(_:)(v45, a5, a6);
  v77[3] = v47;
  if (v47)
  {
    return swift_unknownObjectRelease();
  }

  v105 = v34;
  v85 = v26;
  v104 = v21;
  v111 = v30;
  (*(a6 + 72))(a5, a6);
  v84 = *(a6 + 8);
  dispatch thunk of static AdditiveArithmetic.zero.getter();
  FieldElement.init(_:)(2, a5, a6, v90);
  swift_unknownObjectRetain();
  v49 = v92;
  v50 = v91;
  v51 = ArraySlice.startIndex.getter();
  v52 = ArraySlice.endIndex.getter();
  v86 = v51;
  v53 = v50;
  v54 = v90;
  v55 = a5;
  if (v51 == v52)
  {
    swift_unknownObjectRelease();
    v56 = v107;
    v57 = v111;
    (*(v107 + 16))(v111, v41, v55);
LABEL_10:
    FieldElement.init(other:)(v57, v55, v46);
    swift_unknownObjectRelease();
    v76 = *(v56 + 8);
    v76(v54, v55);
    v76(v41, v55);
    return (v76)(v44, v55);
  }

  else
  {
    v109 = v44;
    v83 = v41;
    v81 = swift_checkMetadataState();
    v102 = *(v46 + 96);
    v103 = v46 + 96;
    v100 = *(v46 + 88);
    v101 = v46 + 88;
    v98 = *(AssociatedConformanceWitness + 56);
    v99 = AssociatedConformanceWitness + 56;
    v82 = v49 >> 1;
    v79 = (v97 + 8);
    v97 = v107 + 8;
    v80 = v107 + 16;
    v77[0] = (v107 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
    v58 = v86;
    v59 = v93;
    v60 = v105;
    v110 = v46;
    while (1)
    {
      result = ArraySlice._hoistableIsNativeTypeChecked()();
      if (v86 < v53 || v82 <= v58)
      {
        break;
      }

      v61 = *(v107 + 16);
      v61(v60, v59 + *(v107 + 72) * v58, v55);
      v96 = v58 + 1;
      v62 = v85;
      v78 = v61;
      v61(v85, v105, v55);
      FieldElement.init(other:)(v62, v55, v46);
      v63 = v87;
      v64 = v100;
      v100(v55, v46);
      v65 = v88;
      v64(v55, v46);
      v66 = v104;
      v67 = v81;
      v98(v63, v65, v81, AssociatedConformanceWitness);
      v68 = *v79;
      v95 = v68;
      v69 = v89;
      v68(v65, v89);
      v68(v63, v69);
      v102(v66, v55, v110);
      dispatch thunk of static AdditiveArithmetic.+= infix(_:_:)();
      v94 = *(v107 + 8);
      v94(v111, v55);
      v70 = v100;
      v100(v55, v110);
      v70(v55, v110);
      v71 = v104;
      v72 = v67;
      v58 = v96;
      v98(v63, v65, v72, AssociatedConformanceWitness);
      v73 = v65;
      v57 = v111;
      v74 = v95;
      v95(v73, v69);
      v74(v63, v69);
      v75 = v71;
      v60 = v105;
      v46 = v110;
      (v102)(v75, v55);
      v94(v60, v55);
      v53 = v91;
      v59 = v93;
      if (v58 == ArraySlice.endIndex.getter())
      {
        swift_unknownObjectRelease();
        v56 = v107;
        v54 = v90;
        v41 = v83;
        v44 = v109;
        v78(v57, v83, v55);
        goto LABEL_10;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t static FieldElement.assertValidBitLength(_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v35 = a1;
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v34 = *(AssociatedTypeWitness - 8);
  v6 = *(v34 + 64);
  v8 = MEMORY[0x28223BE20](AssociatedTypeWitness, v7);
  v10 = &v33 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x28223BE20](v8, v11);
  v14 = &v33 - v13;
  MEMORY[0x28223BE20](v12, v15);
  v17 = &v33 - v16;
  v18 = *(a3 + 64);
  v36 = a2;
  v37 = a3;
  v33 = v18;
  result = (v18)(a2, a3);
  if ((result - 0x1000000000000000) >> 61 != 7)
  {
    __break(1u);
    return result;
  }

  v20 = v35;
  if (v35 >= 8 * result)
  {
    v38 = 0;
    v39 = 0xE000000000000000;
    _StringGuts.grow(_:)(42);

    v38 = 0xD000000000000011;
    v39 = 0x8000000270C51DC0;
    v40 = v20;
    v28 = dispatch thunk of CustomStringConvertible.description.getter();
    MEMORY[0x2743B25F0](v28);

    MEMORY[0x2743B25F0](0xD000000000000015, 0x8000000270C51DE0);
    v40 = v33();
    v29 = dispatch thunk of CustomStringConvertible.description.getter();
    MEMORY[0x2743B25F0](v29);
  }

  else
  {
    v21 = v17;
    static FieldElement.modulus.getter();
    v38 = 1;
    v22 = *(*(swift_getAssociatedConformanceWitness() + 8) + 8);
    lazy protocol witness table accessor for type Int and conformance Int();
    dispatch thunk of BinaryInteger.init<A>(_:)();
    v38 = v20;
    dispatch thunk of static BinaryInteger.<< infix<A>(_:_:)();
    v23 = *(v34 + 8);
    v23(v10, AssociatedTypeWitness);
    v34 = v22;
    v24 = *(*(v22 + 32) + 8);
    v25 = dispatch thunk of static Comparable.<= infix(_:_:)();
    v23(v14, AssociatedTypeWitness);
    result = (v23)(v21, AssociatedTypeWitness);
    if ((v25 & 1) == 0)
    {
      return result;
    }

    v38 = 0;
    v39 = 0xE000000000000000;
    _StringGuts.grow(_:)(40);
    MEMORY[0x2743B25F0](0xD000000000000011, 0x8000000270C51DC0);
    v40 = v20;
    v26 = dispatch thunk of CustomStringConvertible.description.getter();
    MEMORY[0x2743B25F0](v26);

    MEMORY[0x2743B25F0](0xD000000000000013, 0x8000000270C52730);
    static FieldElement.modulus.getter();
    v27 = *(v34 + 8);
    DefaultStringInterpolation.appendInterpolation<A>(_:)();
    v23(v21, AssociatedTypeWitness);
  }

  v30 = v38;
  v31 = v39;
  lazy protocol witness table accessor for type FieldElementError and conformance FieldElementError();
  swift_allocError();
  *v32 = v30;
  *(v32 + 8) = v31;
  *(v32 + 16) = 3;
  return swift_willThrow();
}

uint64_t static FieldElement.* infix(_:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v34 = a2;
  swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v7 = *(AssociatedTypeWitness - 8);
  v8 = *(v7 + 64);
  v10 = MEMORY[0x28223BE20](AssociatedTypeWitness, v9);
  v12 = &v31 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = MEMORY[0x28223BE20](v10, v13);
  v16 = &v31 - v15;
  v18 = MEMORY[0x28223BE20](v14, v17);
  v31 = &v31 - v19;
  v20 = *(*(a3 - 8) + 64);
  MEMORY[0x28223BE20](v18, v21);
  v23 = &v31 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v24 + 16))(v23, a1, a3);
  FieldElement.init(other:)(v23, a3, a4);
  v25 = swift_checkMetadataState();
  v26 = *(a4 + 88);
  v26(a3, a4);
  v26(a3, a4);
  v27 = v31;
  (*(AssociatedConformanceWitness + 56))(v16, v12, v25);
  v28 = *(v7 + 8);
  v29 = AssociatedTypeWitness;
  v28(v12, AssociatedTypeWitness);
  v28(v16, v29);
  return (*(a4 + 96))(v27, a3, a4);
}

uint64_t static FieldElement.*= infix(_:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v26 = a2;
  v27 = a1;
  swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v6 = *(AssociatedTypeWitness - 8);
  v7 = *(v6 + 64);
  v9 = MEMORY[0x28223BE20](AssociatedTypeWitness, v8);
  v11 = &AssociatedConformanceWitness - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x28223BE20](v9, v12);
  v15 = &AssociatedConformanceWitness - v14;
  MEMORY[0x28223BE20](v13, v16);
  v18 = &AssociatedConformanceWitness - v17;
  v19 = swift_checkMetadataState();
  v20 = *(a4 + 88);
  v20(a3, a4);
  v20(a3, a4);
  (*(AssociatedConformanceWitness + 56))(v15, v11, v19);
  v21 = *(v6 + 8);
  v22 = AssociatedTypeWitness;
  v21(v11, AssociatedTypeWitness);
  v21(v15, v22);
  return (*(a4 + 96))(v18, a3, a4);
}

uint64_t FieldElement.init(inputVector:)@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X8>)
{
  type metadata accessor for Array();
  swift_getWitnessTable();
  v6 = ArraySlice.init<A>(_:)();
  return FieldElement.init(inputVector:)(v6, v7, v8, v9, a1, a2, a3);
}

uint64_t FieldElement.integerValue.getter(uint64_t a1, uint64_t a2)
{
  swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v6 = *(AssociatedTypeWitness - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](AssociatedTypeWitness, v8);
  v10 = &v13 - v9;
  v11 = swift_checkMetadataState();
  (*(a2 + 88))(a1, a2);
  (*(AssociatedConformanceWitness + 72))(v10, v11, AssociatedConformanceWitness);
  return (*(v6 + 8))(v10, AssociatedTypeWitness);
}

uint64_t static FieldElement.encode(_:into:with:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v51 = a1;
  v52 = a3;
  v57 = a2;
  v7 = *(*(a4 - 8) + 64);
  MEMORY[0x28223BE20](a1, a2);
  v56 = &v49 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_getAssociatedTypeWitness();
  v58 = a5;
  swift_getAssociatedConformanceWitness();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v10 = *(AssociatedTypeWitness - 8);
  v11 = *(v10 + 64);
  v13 = MEMORY[0x28223BE20](AssociatedTypeWitness, v12);
  v15 = &v49 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = MEMORY[0x28223BE20](v13, v16);
  v19 = &v49 - v18;
  MEMORY[0x28223BE20](v17, v20);
  v22 = &v49 - v21;
  v23 = v52;
  v24 = *(swift_getAssociatedConformanceWitness() + 8);
  if (dispatch thunk of static FixedWidthInteger.bitWidth.getter() >= v23)
  {
    v31 = v22;
    v32 = a4;
    v50 = v10;
    v33 = *(v10 + 16);
    v34 = v31;
    v33();
    v59 = 1;
    v35 = *(v24 + 8);
    lazy protocol witness table accessor for type Int and conformance Int();
    result = dispatch thunk of BinaryInteger.init<A>(_:)();
    if (v23 < 0)
    {
      __break(1u);
    }

    else
    {
      v36 = v19;
      v55 = v32;
      v37 = v34;
      if (v23)
      {
        v53 = (v50 + 32);
        v54 = (v50 + 8);
        v38 = v52;
        do
        {
          v39 = v36;
          dispatch thunk of static BinaryInteger.& infix(_:_:)();
          FieldElement.init(_:)(v15, v55, v58);
          type metadata accessor for Array();
          Array.append(_:)();
          v59 = 1;
          dispatch thunk of static BinaryInteger.>> infix<A>(_:_:)();
          (*v54)(v37, AssociatedTypeWitness);
          (*v53)(v37, v15, AssociatedTypeWitness);
          v36 = v39;
          --v38;
        }

        while (v38);
      }

      v58 = v36;
      v40 = *(v35[3] + 8);
      dispatch thunk of static AdditiveArithmetic.zero.getter();
      v41 = *(v35[2] + 8);
      v42 = dispatch thunk of static Equatable.== infix(_:_:)();
      v43 = *(v50 + 8);
      v43(v15, AssociatedTypeWitness);
      if ((v42 & 1) == 0)
      {
        v59 = 0;
        v60 = 0xE000000000000000;
        _StringGuts.grow(_:)(39);
        MEMORY[0x2743B25F0](0xD000000000000014, 0x8000000270C51FD0);
        v44 = v35[1];
        DefaultStringInterpolation.appendInterpolation<A>(_:)();
        MEMORY[0x2743B25F0](0x6962206874697720, 0xEF3D687464695774);
        v61 = v52;
        v45 = dispatch thunk of CustomStringConvertible.description.getter();
        MEMORY[0x2743B25F0](v45);

        v46 = v59;
        v47 = v60;
        lazy protocol witness table accessor for type FieldElementError and conformance FieldElementError();
        swift_allocError();
        *v48 = v46;
        *(v48 + 8) = v47;
        *(v48 + 16) = 1;
        swift_willThrow();
      }

      v43(v58, AssociatedTypeWitness);
      return (v43)(v37, AssociatedTypeWitness);
    }
  }

  else
  {
    v59 = 0;
    v60 = 0xE000000000000000;
    _StringGuts.grow(_:)(25);

    v59 = 0xD000000000000012;
    v60 = 0x8000000270C52010;
    v61 = v23;
    v25 = dispatch thunk of CustomStringConvertible.description.getter();
    MEMORY[0x2743B25F0](v25);

    MEMORY[0x2743B25F0](2113056, 0xE300000000000000);
    v61 = dispatch thunk of static FixedWidthInteger.bitWidth.getter();
    v26 = dispatch thunk of CustomStringConvertible.description.getter();
    MEMORY[0x2743B25F0](v26);

    v27 = v59;
    v28 = v60;
    lazy protocol witness table accessor for type FieldElementError and conformance FieldElementError();
    swift_allocError();
    *v29 = v27;
    *(v29 + 8) = v28;
    *(v29 + 16) = 2;
    return swift_willThrow();
  }

  return result;
}

uint64_t static FieldElement.integerToBitVector(input:bitWidth:)(uint64_t a1, Swift::Int a2, uint64_t a3, uint64_t a4)
{
  v11 = Array.init()();
  type metadata accessor for Array();
  Array.reserveCapacity(_:)(a2);
  static FieldElement.encode(_:into:with:)(a1, &v11, a2, a3, a4);
  v9 = v11;
  if (v4)
  {
  }

  return v9;
}

uint64_t static FieldElement.integersToElements(_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8[5] = a1;
  v8[2] = a2;
  v8[3] = a3;
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  swift_getAssociatedTypeWitness();
  v4 = type metadata accessor for Array();
  WitnessTable = swift_getWitnessTable();
  return _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lF(partial apply for closure #1 in static FieldElement.integersToElements(_:), v8, v4, a2, MEMORY[0x277D84A98], WitnessTable, MEMORY[0x277D84AC0], v6);
}

uint64_t closure #1 in static FieldElement.integersToElements(_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v7 = *(*(AssociatedTypeWitness - 8) + 64);
  MEMORY[0x28223BE20](AssociatedTypeWitness, v8);
  v10 = v13 - v9;
  (*(v11 + 16))(v13 - v9, a1);
  return FieldElement.init(_:)(v10, a2, a3);
}

uint64_t static FieldElement.elementsToIntegers(_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8[5] = a1;
  v8[2] = a2;
  v8[3] = a3;
  v3 = type metadata accessor for Array();
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  WitnessTable = swift_getWitnessTable();
  return _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lF(partial apply for closure #1 in static FieldElement.elementsToIntegers(_:), v8, v3, AssociatedTypeWitness, MEMORY[0x277D84A98], WitnessTable, MEMORY[0x277D84AC0], v6);
}

uint64_t FieldElement.init<A>(from:parameter:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X4>, uint64_t a5@<X5>, uint64_t a6@<X8>)
{
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v13 = *(*(AssociatedTypeWitness - 8) + 64);
  v15 = MEMORY[0x28223BE20](AssociatedTypeWitness - 8, v14);
  v17 = &v24 - v16;
  v18 = *(a3 - 8);
  v19 = *(v18 + 64);
  MEMORY[0x28223BE20](v15, v20);
  v22 = &v24 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v18 + 16))(v22, a1, a3);
  default argument 1 of FieldElement.init<A>(bytes:mask:)();
  FieldElement.init<A>(bytes:mask:)(v22, v17, a2, a3, a4, a5, a6);
  return (*(v18 + 8))(a1, a3);
}

uint64_t FieldElement.encode<A>(into:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v17 = a3;
  v18 = a5;
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v9 = *(AssociatedTypeWitness - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](AssociatedTypeWitness, v11);
  v13 = &v17 - v12;
  FieldElement.integerValue.getter(a2, a4);
  v14 = (*(a4 + 64))(a2, a4);
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  encodeInteger<A, B>(_:into:encodedLength:)(v13, a1, v14, v17, AssociatedTypeWitness, v18, *(AssociatedConformanceWitness + 8));
  return (*(v9 + 8))(v13, AssociatedTypeWitness);
}

uint64_t static FieldElement.+= infix(_:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v66 = a2;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  swift_getAssociatedTypeWitness();
  v61 = AssociatedTypeWitness;
  v9 = *(*(swift_getAssociatedConformanceWitness() + 8) + 8);
  v60 = v9[3];
  v57 = *(v60 + 16);
  v56 = swift_getAssociatedTypeWitness();
  v10 = *(*(v56 - 8) + 64);
  MEMORY[0x28223BE20](v56, v11);
  v55 = &v55 - v12;
  v13 = swift_checkMetadataState();
  v64 = *(v13 - 8);
  v14 = *(v64 + 64);
  v16 = MEMORY[0x28223BE20](v13, v15);
  v58 = &v55 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = MEMORY[0x28223BE20](v16, v18);
  v59 = &v55 - v20;
  v22 = MEMORY[0x28223BE20](v19, v21);
  v62 = &v55 - v23;
  v25 = MEMORY[0x28223BE20](v22, v24);
  v27 = &v55 - v26;
  v29 = MEMORY[0x28223BE20](v25, v28);
  MEMORY[0x28223BE20](v29, v30);
  v67 = &v55 - v31;
  v32 = *(a4 + 88);
  v63 = v33;
  v65 = a1;
  v32(a3, a4);
  v66 = a3;
  v32(a3, a4);
  if ((dispatch thunk of static BinaryInteger.isSigned.getter() & 1) == 0)
  {
    v37 = dispatch thunk of static BinaryInteger.isSigned.getter();
    v38 = dispatch thunk of BinaryInteger.bitWidth.getter();
    if (v37)
    {
      v35 = v64;
      if (v38 <= 64)
      {
        swift_getAssociatedConformanceWitness();
        dispatch thunk of _ExpressibleByBuiltinIntegerLiteral.init(_builtinIntegerLiteral:)();
        v36 = v62;
        dispatch thunk of ExpressibleByIntegerLiteral.init(integerLiteral:)();
        v39 = *(v9[4] + 8);
        v40 = dispatch thunk of static Comparable.>= infix(_:_:)();
        (*(v35 + 8))(v36, v13);
        if ((v40 & 1) != 0 && !dispatch thunk of BinaryInteger._lowWord.getter())
        {
          goto LABEL_19;
        }

        goto LABEL_13;
      }
    }

    else
    {
      v35 = v64;
      if (v38 < 64)
      {
        v43 = dispatch thunk of BinaryInteger._lowWord.getter();
        v36 = v62;
        if (v43)
        {
          goto LABEL_13;
        }

LABEL_19:
        (*(v35 + 8))(v27, v13);
        (*(v35 + 32))(v67, v63, v13);
        return (*(a4 + 96))(v67, v66, a4);
      }
    }

    v68 = 0;
    lazy protocol witness table accessor for type Int and conformance Int();
    v36 = v62;
    dispatch thunk of BinaryInteger.init<A>(truncatingIfNeeded:)();
    v53 = *(v9[2] + 8);
    v42 = dispatch thunk of static Equatable.== infix(_:_:)();
LABEL_18:
    (*(v35 + 8))(v36, v13);
    if ((v42 & 1) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_19;
  }

  if (dispatch thunk of BinaryInteger.bitWidth.getter() >= 64)
  {
    v68 = 0;
    lazy protocol witness table accessor for type Int and conformance Int();
    v36 = v62;
    dispatch thunk of BinaryInteger.init<A>(truncatingIfNeeded:)();
    v41 = *(v9[2] + 8);
    v42 = dispatch thunk of static Equatable.== infix(_:_:)();
    v35 = v64;
    goto LABEL_18;
  }

  v34 = dispatch thunk of BinaryInteger._lowWord.getter();
  v35 = v64;
  v36 = v62;
  if (!v34)
  {
    goto LABEL_19;
  }

LABEL_13:
  v64 = a4;
  v44 = swift_checkMetadataState();
  v61 = *(AssociatedConformanceWitness + 24);
  v61(v44, AssociatedConformanceWitness);
  v45 = v59;
  v62 = *(v60 + 8);
  dispatch thunk of static AdditiveArithmetic.- infix(_:_:)();
  v60 = AssociatedConformanceWitness;
  v46 = *(v35 + 8);
  v46(v36, v13);
  v47 = *(v9[4] + 8);
  v48 = v45;
  v49 = v27;
  v50 = v63;
  if (dispatch thunk of static Comparable.< infix(_:_:)())
  {
    v57 = v49;
    v51 = v58;
    v61(v44, v60);
    dispatch thunk of static AdditiveArithmetic.- infix(_:_:)();
    v46(v51, v13);
    dispatch thunk of static AdditiveArithmetic.+ infix(_:_:)();
    v46(v36, v13);
    v46(v48, v13);
    v52 = v57;
  }

  else
  {
    dispatch thunk of static AdditiveArithmetic.- infix(_:_:)();
    v46(v48, v13);
    v52 = v49;
  }

  v46(v52, v13);
  v46(v50, v13);
  a4 = v64;
  return (*(a4 + 96))(v67, v66, a4);
}

uint64_t static FieldElement.-= infix(_:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v43 = a2;
  v44 = a1;
  swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v41 = *(AssociatedTypeWitness - 8);
  v8 = *(v41 + 64);
  v10 = MEMORY[0x28223BE20](AssociatedTypeWitness, v9);
  v38 = &v37 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x28223BE20](v10, v12);
  v39 = &v37 - v14;
  v16 = MEMORY[0x28223BE20](v13, v15);
  v18 = &v37 - v17;
  v20 = MEMORY[0x28223BE20](v16, v19);
  v22 = &v37 - v21;
  MEMORY[0x28223BE20](v20, v23);
  v42 = &v37 - v24;
  v25 = *(a4 + 88);
  v25(a3, a4);
  v43 = a3;
  v40 = a4;
  v25(a3, a4);
  v26 = *(*(swift_getAssociatedConformanceWitness() + 8) + 8);
  v27 = *(*(v26 + 32) + 8);
  if (dispatch thunk of static Comparable.< infix(_:_:)())
  {
    swift_checkMetadataState();
    v28 = *(AssociatedConformanceWitness + 24);
    v29 = v38;
    v28();
    v30 = *(*(v26 + 24) + 8);
    v31 = v39;
    dispatch thunk of static AdditiveArithmetic.- infix(_:_:)();
    v32 = *(v41 + 8);
    v32(v29, AssociatedTypeWitness);
    v33 = v42;
    dispatch thunk of static AdditiveArithmetic.+ infix(_:_:)();
    v32(v31, AssociatedTypeWitness);
    v32(v18, AssociatedTypeWitness);
    v32(v22, AssociatedTypeWitness);
  }

  else
  {
    v34 = *(*(v26 + 24) + 8);
    v33 = v42;
    dispatch thunk of static AdditiveArithmetic.- infix(_:_:)();
    v35 = *(v41 + 8);
    v35(v18, AssociatedTypeWitness);
    v35(v22, AssociatedTypeWitness);
  }

  return (*(v40 + 96))(v33, v43);
}

uint64_t static FieldElement.+ infix(_:_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t (*a5)(uint64_t, uint64_t, uint64_t, void)@<X4>, uint64_t a6@<X8>)
{
  v11 = *(*(a3 - 8) + 64);
  MEMORY[0x28223BE20](a1, a1);
  v13 = &v16 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v14 + 16))(v13);
  FieldElement.init(other:)(v13, a3, a4);
  return a5(a6, a2, a3, *(a4 + 8));
}

uint64_t static FieldElement.== infix(_:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v21[1] = a2;
  swift_getAssociatedTypeWitness();
  v21[0] = swift_getAssociatedConformanceWitness();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v7 = *(AssociatedTypeWitness - 8);
  v8 = *(v7 + 64);
  v10 = MEMORY[0x28223BE20](AssociatedTypeWitness, v9);
  v12 = v21 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10, v13);
  v15 = v21 - v14;
  v16 = *(a4 + 88);
  v16(a3, a4);
  v16(a3, a4);
  v17 = *(*(*(*(swift_getAssociatedConformanceWitness() + 8) + 8) + 16) + 8);
  v18 = dispatch thunk of static Equatable.== infix(_:_:)();
  v19 = *(v7 + 8);
  v19(v12, AssociatedTypeWitness);
  v19(v15, AssociatedTypeWitness);
  return v18 & 1;
}

uint64_t static FieldElement./= infix(_:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v131 = a2;
  v118 = a1;
  swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  swift_getAssociatedTypeWitness();
  v130 = AssociatedConformanceWitness;
  v7 = *(*(swift_getAssociatedConformanceWitness() + 8) + 8);
  v125 = v7[3];
  v134 = v125[2];
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v8 = *(*(AssociatedTypeWitness - 8) + 64);
  MEMORY[0x28223BE20](AssociatedTypeWitness, v9);
  v132 = &v111 - v10;
  v11 = swift_checkMetadataState();
  v129 = *(v11 - 8);
  v12 = *(v129 + 64);
  v14 = MEMORY[0x28223BE20](v11, v13);
  v136 = &v111 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = MEMORY[0x28223BE20](v14, v16);
  v137 = &v111 - v18;
  v20 = MEMORY[0x28223BE20](v17, v19);
  v121 = &v111 - v21;
  v23 = MEMORY[0x28223BE20](v20, v22);
  v135 = &v111 - v24;
  v26 = MEMORY[0x28223BE20](v23, v25);
  v128 = &v111 - v27;
  v29 = MEMORY[0x28223BE20](v26, v28);
  v126 = &v111 - v30;
  v32 = MEMORY[0x28223BE20](v29, v31);
  v117 = &v111 - v33;
  v35 = MEMORY[0x28223BE20](v32, v34);
  v37 = &v111 - v36;
  v39 = MEMORY[0x28223BE20](v35, v38);
  v41 = &v111 - v40;
  v43 = MEMORY[0x28223BE20](v39, v42);
  v113 = &v111 - v44;
  v46 = MEMORY[0x28223BE20](v43, v45);
  MEMORY[0x28223BE20](v46, v47);
  v111 = &v111 - v48;
  v49 = *(a4 + 88);
  v112 = v50;
  v49(a3, a4);
  v114 = a3;
  v115 = a4;
  v49(a3, a4);
  if (dispatch thunk of static BinaryInteger.isSigned.getter())
  {
    v51 = v41;
    if (dispatch thunk of BinaryInteger.bitWidth.getter() < 64)
    {
      goto LABEL_11;
    }

    goto LABEL_13;
  }

  v52 = dispatch thunk of static BinaryInteger.isSigned.getter();
  v53 = dispatch thunk of BinaryInteger.bitWidth.getter();
  v51 = v41;
  v55 = __OFSUB__(v53, 64);
  v54 = v53 - 64 < 0;
  if ((v52 & 1) == 0)
  {
    goto LABEL_9;
  }

  if (v53 > 64)
  {
LABEL_13:
    while (1)
    {
      *&v138 = 0;
      lazy protocol witness table accessor for type Int and conformance Int();
      dispatch thunk of BinaryInteger.init<A>(truncatingIfNeeded:)();
      v61 = *(v7[2] + 8);
      v62 = dispatch thunk of static Equatable.== infix(_:_:)();
      v58 = v129;
      (*(v129 + 8))(v37, v11);
      v59 = v130;
      if ((v62 & 1) == 0)
      {
        goto LABEL_14;
      }

LABEL_8:
      while (1)
      {
        _assertionFailure(_:_:file:line:flags:)();
        __break(1u);
LABEL_9:
        if (v54 == v55)
        {
          break;
        }

LABEL_11:
        v60 = dispatch thunk of BinaryInteger._lowWord.getter();
        v58 = v129;
        v59 = v130;
        if (v60)
        {
          goto LABEL_14;
        }
      }
    }
  }

  swift_getAssociatedConformanceWitness();
  dispatch thunk of _ExpressibleByBuiltinIntegerLiteral.init(_builtinIntegerLiteral:)();
  v51 = v41;
  dispatch thunk of ExpressibleByIntegerLiteral.init(integerLiteral:)();
  v56 = *(v7[4] + 8);
  v57 = dispatch thunk of static Comparable.>= infix(_:_:)();
  v58 = v129;
  (*(v129 + 8))(v37, v11);
  v59 = v130;
  if ((v57 & 1) != 0 && !dispatch thunk of BinaryInteger._lowWord.getter())
  {
    goto LABEL_8;
  }

LABEL_14:
  v116 = v51;
  v127 = swift_checkMetadataState();
  (*(v59 + 24))(v127, v59);
  v131 = swift_getAssociatedConformanceWitness();
  dispatch thunk of _ExpressibleByBuiltinIntegerLiteral.init(_builtinIntegerLiteral:)();
  v63 = v126;
  dispatch thunk of ExpressibleByIntegerLiteral.init(integerLiteral:)();
  v64 = v125[1];
  v65 = v117;
  dispatch thunk of static AdditiveArithmetic.- infix(_:_:)();
  v66 = *(v58 + 8);
  v66(v63, v11);
  v66(v37, v11);
  v68 = *(v58 + 16);
  v67 = v58 + 16;
  v68(v128, v116, v11);
  v69 = v59;
  v70 = v135;
  v126 = v68;
  v68(v135, v65, v11);
  *&v138 = 1;
  v123 = lazy protocol witness table accessor for type Int and conformance Int();
  dispatch thunk of BinaryInteger.init<A>(_:)();
  (*(v69 + 64))(v37);
  v66(v37, v11);
  v71 = (v67 + 16);
  v124 = v69 + 56;
  v125 = v7;
  v122 = (v67 + 16);
  v129 = v67;
  v119 = v37;
  while (1)
  {
    (v126)(v137, v70, v11);
    if ((dispatch thunk of static BinaryInteger.isSigned.getter() & 1) == 0)
    {
      if (dispatch thunk of BinaryInteger.bitWidth.getter() < 128)
      {
        goto LABEL_24;
      }

      goto LABEL_27;
    }

    v77 = dispatch thunk of static BinaryInteger.isSigned.getter();
    v78 = dispatch thunk of BinaryInteger.bitWidth.getter();
    if (v77)
    {
      break;
    }

    if (v78 < 128)
    {
LABEL_24:
      v84 = lazy protocol witness table accessor for type _UInt128 and conformance _UInt128();
      v85 = v137;
      static FixedWidthInteger._truncatingInit<A>(_:)(v137, &type metadata for _UInt128, v11, v84, v7, &v138);
      v66(v85, v11);
      v83 = v135;
      if (v138 == 0)
      {
        goto LABEL_46;
      }

      goto LABEL_28;
    }

LABEL_27:
    lazy protocol witness table accessor for type _UInt128 and conformance _UInt128();
    v138 = 0uLL;
    dispatch thunk of BinaryInteger.init<A>(truncatingIfNeeded:)();
    v86 = *(v7[2] + 8);
    v87 = v137;
    v88 = dispatch thunk of static Equatable.== infix(_:_:)();
    v66(v37, v11);
    v66(v87, v11);
    v83 = v135;
    if (v88)
    {
      goto LABEL_46;
    }

LABEL_28:
    dispatch thunk of _ExpressibleByBuiltinIntegerLiteral.init(_builtinIntegerLiteral:)();
    dispatch thunk of ExpressibleByIntegerLiteral.init(integerLiteral:)();
    dispatch thunk of static BinaryInteger.& infix(_:_:)();
    v66(v37, v11);
    if ((dispatch thunk of static BinaryInteger.isSigned.getter() & 1) == 0)
    {
      if (dispatch thunk of BinaryInteger.bitWidth.getter() < 128)
      {
        goto LABEL_34;
      }

LABEL_37:
      lazy protocol witness table accessor for type _UInt128 and conformance _UInt128();
      v138 = 0uLL;
      dispatch thunk of BinaryInteger.init<A>(truncatingIfNeeded:)();
      v96 = *(v7[2] + 8);
      v97 = v136;
      v120 = dispatch thunk of static Equatable.== infix(_:_:)();
      v66(v37, v11);
      v66(v97, v11);
      v72 = v130;
      v73 = v127;
      v74 = v128;
      v71 = v122;
      if ((v120 & 1) == 0)
      {
        goto LABEL_16;
      }

      goto LABEL_17;
    }

    v89 = dispatch thunk of static BinaryInteger.isSigned.getter();
    v90 = dispatch thunk of BinaryInteger.bitWidth.getter();
    if ((v89 & 1) == 0)
    {
      if (v90 < 128)
      {
LABEL_34:
        v94 = lazy protocol witness table accessor for type _UInt128 and conformance _UInt128();
        v95 = v136;
        static FixedWidthInteger._truncatingInit<A>(_:)(v136, &type metadata for _UInt128, v11, v94, v7, &v138);
        v66(v95, v11);
        v72 = v130;
        v73 = v127;
        v74 = v128;
        v71 = v122;
        if (v138 != 0)
        {
          goto LABEL_16;
        }

        goto LABEL_17;
      }

      goto LABEL_37;
    }

    if (v90 <= 128)
    {
      dispatch thunk of _ExpressibleByBuiltinIntegerLiteral.init(_builtinIntegerLiteral:)();
      dispatch thunk of ExpressibleByIntegerLiteral.init(integerLiteral:)();
      v103 = *(v7[4] + 8);
      v104 = dispatch thunk of static Comparable.>= infix(_:_:)();
      v66(v37, v11);
      if ((v104 & 1) == 0)
      {
        v66(v136, v11);
        v72 = v130;
        v73 = v127;
        v74 = v128;
        v71 = v122;
        v37 = v119;
LABEL_16:
        v75 = v121;
        (*(v72 + 56))(v121, v74, v73, v72);
        v66(v75, v11);
        (*v71)(v75, v37, v11);
        goto LABEL_17;
      }

      v105 = lazy protocol witness table accessor for type _UInt128 and conformance _UInt128();
      v106 = v136;
      static FixedWidthInteger._truncatingInit<A>(_:)(v136, &type metadata for _UInt128, v11, v105, v7, &v138);
      v66(v106, v11);
      v72 = v130;
      v73 = v127;
      v74 = v128;
      v71 = v122;
      v37 = v119;
      if (v138 != 0)
      {
        goto LABEL_16;
      }
    }

    else
    {
      lazy protocol witness table accessor for type _UInt128 and conformance _UInt128();
      v138 = 0uLL;
      dispatch thunk of BinaryInteger.init<A>(truncatingIfNeeded:)();
      v91 = *(v7[2] + 8);
      v92 = v136;
      v93 = dispatch thunk of static Equatable.== infix(_:_:)();
      v66(v37, v11);
      v66(v92, v11);
      v72 = v130;
      v73 = v127;
      v74 = v128;
      v71 = v122;
      if ((v93 & 1) == 0)
      {
        goto LABEL_16;
      }
    }

LABEL_17:
    (*(v72 + 56))(v74, v74, v73, v72);
    v66(v74, v11);
    v76 = *v71;
    (*v71)(v74, v37, v11);
    *&v138 = 1;
    v70 = v135;
    v7 = v125;
    dispatch thunk of static BinaryInteger.>> infix<A>(_:_:)();
    v66(v70, v11);
    v76(v70, v37, v11);
  }

  if (v78 > 128)
  {
    lazy protocol witness table accessor for type _UInt128 and conformance _UInt128();
    v138 = 0uLL;
    dispatch thunk of BinaryInteger.init<A>(truncatingIfNeeded:)();
    v79 = *(v7[2] + 8);
    v80 = v137;
    v81 = dispatch thunk of static Equatable.== infix(_:_:)();
    v66(v37, v11);
    v82 = v80;
    v83 = v135;
    v66(v82, v11);
    if (v81)
    {
      goto LABEL_46;
    }

    goto LABEL_28;
  }

  dispatch thunk of _ExpressibleByBuiltinIntegerLiteral.init(_builtinIntegerLiteral:)();
  dispatch thunk of ExpressibleByIntegerLiteral.init(integerLiteral:)();
  v98 = *(v7[4] + 8);
  v99 = dispatch thunk of static Comparable.>= infix(_:_:)();
  v66(v37, v11);
  if ((v99 & 1) == 0)
  {
    v66(v137, v11);
    goto LABEL_28;
  }

  v100 = lazy protocol witness table accessor for type _UInt128 and conformance _UInt128();
  v101 = v137;
  static FixedWidthInteger._truncatingInit<A>(_:)(v137, &type metadata for _UInt128, v11, v100, v7, &v138);
  v102 = v101;
  v83 = v135;
  v66(v102, v11);
  if (v138 != 0)
  {
    goto LABEL_28;
  }

LABEL_46:
  v66(v83, v11);
  v66(v128, v11);
  v66(v117, v11);
  v66(v116, v11);
  v107 = v113;
  (*v71)(v113, v121, v11);
  v108 = v111;
  v109 = v112;
  (*(v130 + 56))(v112, v107);
  v66(v107, v11);
  v66(v109, v11);
  return (*(v115 + 96))(v108, v114);
}

uint64_t static FieldElement./ infix(_:_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v144 = a2;
  v140 = a1;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  swift_getAssociatedTypeWitness();
  v143 = AssociatedConformanceWitness;
  v137 = AssociatedTypeWitness;
  v10 = *(*(swift_getAssociatedConformanceWitness() + 8) + 8);
  v138 = v10[3];
  v147 = v138[2];
  v146 = swift_getAssociatedTypeWitness();
  v11 = *(*(v146 - 8) + 64);
  MEMORY[0x28223BE20](v146, v12);
  v145 = &v124 - v13;
  v14 = swift_checkMetadataState();
  v142 = *(v14 - 8);
  v15 = *(v142 + 64);
  v17 = MEMORY[0x28223BE20](v14, v16);
  v149 = &v124 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = MEMORY[0x28223BE20](v17, v19);
  v150 = &v124 - v21;
  v23 = MEMORY[0x28223BE20](v20, v22);
  v134 = &v124 - v24;
  v26 = MEMORY[0x28223BE20](v23, v25);
  v148 = &v124 - v27;
  v29 = MEMORY[0x28223BE20](v26, v28);
  v141 = &v124 - v30;
  v32 = MEMORY[0x28223BE20](v29, v31);
  v139 = &v124 - v33;
  v35 = MEMORY[0x28223BE20](v32, v34);
  v131 = &v124 - v36;
  v38 = MEMORY[0x28223BE20](v35, v37);
  v40 = &v124 - v39;
  v42 = MEMORY[0x28223BE20](v38, v41);
  v44 = &v124 - v43;
  v46 = MEMORY[0x28223BE20](v42, v45);
  v127 = &v124 - v47;
  v49 = MEMORY[0x28223BE20](v46, v48);
  v51 = &v124 - v50;
  v53 = MEMORY[0x28223BE20](v49, v52);
  v125 = &v124 - v54;
  v55 = *(*(a3 - 8) + 64);
  MEMORY[0x28223BE20](v53, v56);
  v58 = &v124 - ((v57 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v59 + 16))(v58, v140, a3);
  FieldElement.init(other:)(v58, a3, a4);
  v60 = a4;
  v61 = *(a4 + 88);
  v126 = v51;
  v62 = v44;
  v128 = a5;
  v63 = v60;
  v61(a3);
  v129 = a3;
  v130 = v63;
  (v61)(a3, v63);
  if (dispatch thunk of static BinaryInteger.isSigned.getter())
  {
    if (dispatch thunk of BinaryInteger.bitWidth.getter() < 64)
    {
      goto LABEL_11;
    }

    goto LABEL_13;
  }

  v64 = dispatch thunk of static BinaryInteger.isSigned.getter();
  v65 = dispatch thunk of BinaryInteger.bitWidth.getter();
  v67 = __OFSUB__(v65, 64);
  v66 = v65 - 64 < 0;
  if ((v64 & 1) == 0)
  {
    goto LABEL_9;
  }

  if (v65 > 64)
  {
LABEL_13:
    while (1)
    {
      *&v151 = 0;
      lazy protocol witness table accessor for type Int and conformance Int();
      dispatch thunk of BinaryInteger.init<A>(truncatingIfNeeded:)();
      v73 = *(v10[2] + 8);
      v74 = dispatch thunk of static Equatable.== infix(_:_:)();
      v70 = v142;
      (*(v142 + 8))(v40, v14);
      v71 = v143;
      if ((v74 & 1) == 0)
      {
        goto LABEL_14;
      }

LABEL_8:
      while (1)
      {
        _assertionFailure(_:_:file:line:flags:)();
        __break(1u);
LABEL_9:
        if (v66 == v67)
        {
          break;
        }

LABEL_11:
        v72 = dispatch thunk of BinaryInteger._lowWord.getter();
        v70 = v142;
        v71 = v143;
        if (v72)
        {
          goto LABEL_14;
        }
      }
    }
  }

  swift_getAssociatedConformanceWitness();
  dispatch thunk of _ExpressibleByBuiltinIntegerLiteral.init(_builtinIntegerLiteral:)();
  dispatch thunk of ExpressibleByIntegerLiteral.init(integerLiteral:)();
  v68 = *(v10[4] + 8);
  v69 = dispatch thunk of static Comparable.>= infix(_:_:)();
  v70 = v142;
  (*(v142 + 8))(v40, v14);
  v71 = v143;
  if ((v69 & 1) != 0 && !dispatch thunk of BinaryInteger._lowWord.getter())
  {
    goto LABEL_8;
  }

LABEL_14:
  v140 = swift_checkMetadataState();
  (*(v71 + 24))(v140, v71);
  v144 = swift_getAssociatedConformanceWitness();
  dispatch thunk of _ExpressibleByBuiltinIntegerLiteral.init(_builtinIntegerLiteral:)();
  v75 = v139;
  dispatch thunk of ExpressibleByIntegerLiteral.init(integerLiteral:)();
  v76 = v138[1];
  v77 = v131;
  dispatch thunk of static AdditiveArithmetic.- infix(_:_:)();
  v78 = *(v70 + 8);
  v78(v75, v14);
  v78(v40, v14);
  v80 = *(v70 + 16);
  v79 = v70 + 16;
  v124 = v62;
  v80(v141, v62, v14);
  v81 = v148;
  v139 = v80;
  v80(v148, v77, v14);
  v82 = v81;
  *&v151 = 1;
  v136 = lazy protocol witness table accessor for type Int and conformance Int();
  dispatch thunk of BinaryInteger.init<A>(_:)();
  v83 = v143;
  (*(v143 + 64))(v40);
  v78(v40, v14);
  v84 = (v79 + 16);
  v137 = v83 + 56;
  v138 = v10;
  v135 = (v79 + 16);
  v142 = v79;
  v132 = v40;
  while (1)
  {
    (v139)(v150, v82, v14);
    if ((dispatch thunk of static BinaryInteger.isSigned.getter() & 1) == 0)
    {
      if (dispatch thunk of BinaryInteger.bitWidth.getter() < 128)
      {
        goto LABEL_24;
      }

      goto LABEL_27;
    }

    v90 = dispatch thunk of static BinaryInteger.isSigned.getter();
    v91 = dispatch thunk of BinaryInteger.bitWidth.getter();
    if (v90)
    {
      break;
    }

    if (v91 < 128)
    {
LABEL_24:
      v97 = lazy protocol witness table accessor for type _UInt128 and conformance _UInt128();
      v98 = v150;
      static FixedWidthInteger._truncatingInit<A>(_:)(v150, &type metadata for _UInt128, v14, v97, v10, &v151);
      v78(v98, v14);
      v96 = v148;
      if (v151 == 0)
      {
        goto LABEL_46;
      }

      goto LABEL_28;
    }

LABEL_27:
    lazy protocol witness table accessor for type _UInt128 and conformance _UInt128();
    v151 = 0uLL;
    dispatch thunk of BinaryInteger.init<A>(truncatingIfNeeded:)();
    v99 = *(v10[2] + 8);
    v100 = v150;
    v101 = dispatch thunk of static Equatable.== infix(_:_:)();
    v78(v40, v14);
    v78(v100, v14);
    v96 = v148;
    if (v101)
    {
      goto LABEL_46;
    }

LABEL_28:
    dispatch thunk of _ExpressibleByBuiltinIntegerLiteral.init(_builtinIntegerLiteral:)();
    dispatch thunk of ExpressibleByIntegerLiteral.init(integerLiteral:)();
    dispatch thunk of static BinaryInteger.& infix(_:_:)();
    v78(v40, v14);
    if ((dispatch thunk of static BinaryInteger.isSigned.getter() & 1) == 0)
    {
      if (dispatch thunk of BinaryInteger.bitWidth.getter() < 128)
      {
        goto LABEL_34;
      }

LABEL_37:
      lazy protocol witness table accessor for type _UInt128 and conformance _UInt128();
      v151 = 0uLL;
      dispatch thunk of BinaryInteger.init<A>(truncatingIfNeeded:)();
      v109 = *(v10[2] + 8);
      v110 = v149;
      v133 = dispatch thunk of static Equatable.== infix(_:_:)();
      v78(v40, v14);
      v78(v110, v14);
      v85 = v143;
      v86 = v140;
      v87 = v141;
      v84 = v135;
      if ((v133 & 1) == 0)
      {
        goto LABEL_16;
      }

      goto LABEL_17;
    }

    v102 = dispatch thunk of static BinaryInteger.isSigned.getter();
    v103 = dispatch thunk of BinaryInteger.bitWidth.getter();
    if ((v102 & 1) == 0)
    {
      if (v103 < 128)
      {
LABEL_34:
        v107 = lazy protocol witness table accessor for type _UInt128 and conformance _UInt128();
        v108 = v149;
        static FixedWidthInteger._truncatingInit<A>(_:)(v149, &type metadata for _UInt128, v14, v107, v10, &v151);
        v78(v108, v14);
        v85 = v143;
        v86 = v140;
        v87 = v141;
        v84 = v135;
        if (v151 != 0)
        {
          goto LABEL_16;
        }

        goto LABEL_17;
      }

      goto LABEL_37;
    }

    if (v103 <= 128)
    {
      dispatch thunk of _ExpressibleByBuiltinIntegerLiteral.init(_builtinIntegerLiteral:)();
      dispatch thunk of ExpressibleByIntegerLiteral.init(integerLiteral:)();
      v116 = *(v10[4] + 8);
      v117 = dispatch thunk of static Comparable.>= infix(_:_:)();
      v78(v40, v14);
      if ((v117 & 1) == 0)
      {
        v78(v149, v14);
        v85 = v143;
        v86 = v140;
        v87 = v141;
        v84 = v135;
        v40 = v132;
LABEL_16:
        v88 = v134;
        (*(v85 + 56))(v134, v87, v86, v85);
        v78(v88, v14);
        (*v84)(v88, v40, v14);
        goto LABEL_17;
      }

      v118 = lazy protocol witness table accessor for type _UInt128 and conformance _UInt128();
      v119 = v149;
      static FixedWidthInteger._truncatingInit<A>(_:)(v149, &type metadata for _UInt128, v14, v118, v10, &v151);
      v78(v119, v14);
      v85 = v143;
      v86 = v140;
      v87 = v141;
      v84 = v135;
      v40 = v132;
      if (v151 != 0)
      {
        goto LABEL_16;
      }
    }

    else
    {
      lazy protocol witness table accessor for type _UInt128 and conformance _UInt128();
      v151 = 0uLL;
      dispatch thunk of BinaryInteger.init<A>(truncatingIfNeeded:)();
      v104 = *(v10[2] + 8);
      v105 = v149;
      v106 = dispatch thunk of static Equatable.== infix(_:_:)();
      v78(v40, v14);
      v78(v105, v14);
      v85 = v143;
      v86 = v140;
      v87 = v141;
      v84 = v135;
      if ((v106 & 1) == 0)
      {
        goto LABEL_16;
      }
    }

LABEL_17:
    (*(v85 + 56))(v87, v87, v86, v85);
    v78(v87, v14);
    v89 = *v84;
    (*v84)(v87, v40, v14);
    *&v151 = 1;
    v82 = v148;
    v10 = v138;
    dispatch thunk of static BinaryInteger.>> infix<A>(_:_:)();
    v78(v82, v14);
    v89(v82, v40, v14);
  }

  if (v91 > 128)
  {
    lazy protocol witness table accessor for type _UInt128 and conformance _UInt128();
    v151 = 0uLL;
    dispatch thunk of BinaryInteger.init<A>(truncatingIfNeeded:)();
    v92 = *(v10[2] + 8);
    v93 = v150;
    v94 = dispatch thunk of static Equatable.== infix(_:_:)();
    v78(v40, v14);
    v95 = v93;
    v96 = v148;
    v78(v95, v14);
    if (v94)
    {
      goto LABEL_46;
    }

    goto LABEL_28;
  }

  dispatch thunk of _ExpressibleByBuiltinIntegerLiteral.init(_builtinIntegerLiteral:)();
  dispatch thunk of ExpressibleByIntegerLiteral.init(integerLiteral:)();
  v111 = *(v10[4] + 8);
  v112 = dispatch thunk of static Comparable.>= infix(_:_:)();
  v78(v40, v14);
  if ((v112 & 1) == 0)
  {
    v78(v150, v14);
    goto LABEL_28;
  }

  v113 = lazy protocol witness table accessor for type _UInt128 and conformance _UInt128();
  v114 = v150;
  static FixedWidthInteger._truncatingInit<A>(_:)(v150, &type metadata for _UInt128, v14, v113, v10, &v151);
  v115 = v114;
  v96 = v148;
  v78(v115, v14);
  if (v151 != 0)
  {
    goto LABEL_28;
  }

LABEL_46:
  v78(v96, v14);
  v78(v141, v14);
  v78(v131, v14);
  v78(v124, v14);
  v120 = v127;
  (*v84)(v127, v134, v14);
  v121 = v125;
  v122 = v126;
  (*(v143 + 56))(v126, v120);
  v78(v120, v14);
  v78(v122, v14);
  return (*(v130 + 96))(v121, v129);
}

uint64_t static FieldElement.root(n:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v23 = a4;
  swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v9 = *(*(AssociatedTypeWitness - 8) + 64);
  MEMORY[0x28223BE20](AssociatedTypeWitness, v10);
  v12 = &v21 - v11;
  v13 = swift_checkMetadataState();
  v22 = *(AssociatedConformanceWitness + 48);
  v22(v13, AssociatedConformanceWitness);
  v14 = MEMORY[0x2743B2830]();

  if (v14 <= a1)
  {
    v25 = 0;
    v26 = 0xE000000000000000;
    _StringGuts.grow(_:)(26);
    v24 = a1;
    v16 = dispatch thunk of CustomStringConvertible.description.getter();
    v18 = v17;

    v25 = v16;
    v26 = v18;
    MEMORY[0x2743B25F0](2112544, 0xE300000000000000);
    v22(v13, AssociatedConformanceWitness);
    v19 = MEMORY[0x2743B2830]();

    v24 = v19;
    v20 = dispatch thunk of CustomStringConvertible.description.getter();
    MEMORY[0x2743B25F0](v20);

    MEMORY[0x2743B25F0](0xD000000000000013, 0x8000000270C51DA0);
    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  else
  {
    (*(a3 + 112))(a2, a3);
    v22(v13, AssociatedConformanceWitness);
    Array.subscript.getter();

    return (*(a3 + 96))(v12, a2, a3);
  }

  return result;
}

uint64_t FieldElement.pow(_:)@<X0>(char *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v5 = v4;
  v92 = a3;
  v103 = a1;
  v91 = a4;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  swift_getAssociatedTypeWitness();
  v7 = *(*(swift_getAssociatedConformanceWitness() + 8) + 8);
  v110 = *(v7[3] + 16);
  v109 = swift_getAssociatedTypeWitness();
  v8 = *(*(v109 - 8) + 64);
  MEMORY[0x28223BE20](v109, v9);
  v108 = &v88 - v10;
  v11 = swift_checkMetadataState();
  v12 = *(v11 - 8);
  v13 = v12[8];
  v15 = MEMORY[0x28223BE20](v11, v14);
  v107 = &v88 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = MEMORY[0x28223BE20](v15, v17);
  v104 = &v88 - v19;
  v21 = MEMORY[0x28223BE20](v18, v20);
  v23 = &v88 - v22;
  v25 = MEMORY[0x28223BE20](v21, v24);
  v95 = &v88 - v26;
  v28 = MEMORY[0x28223BE20](v25, v27);
  v30 = &v88 - v29;
  v32 = MEMORY[0x28223BE20](v28, v31);
  v106 = &v88 - v33;
  v35 = MEMORY[0x28223BE20](v32, v34);
  v37 = &v88 - v36;
  v39 = MEMORY[0x28223BE20](v35, v38);
  v89 = &v88 - v40;
  v41 = *(*(a2 - 8) + 64);
  MEMORY[0x28223BE20](v39, v42);
  v44 = &v88 - ((v43 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v45 + 16))(v44, v5, a2);
  v46 = v92;
  FieldElement.init(other:)(v44, a2, v92);
  v47 = *(v46 + 88);
  v90 = a2;
  v47(a2, v46);
  v48 = v12[2];
  v88 = v37;
  v48(v106, v37, v11);
  v49 = v103;
  v102 = v48;
  v103 = (v12 + 2);
  v48(v30, v49, v11);
  v50 = swift_checkMetadataState();
  *&v111 = 1;
  v98 = lazy protocol witness table accessor for type Int and conformance Int();
  dispatch thunk of BinaryInteger.init<A>(_:)();
  v51 = *(AssociatedConformanceWitness + 64);
  v100 = v50;
  v52 = v50;
  v53 = AssociatedConformanceWitness;
  v51(v23, v52);
  v56 = v12[1];
  v54 = v12 + 1;
  v55 = v56;
  v56(v23, v11);
  v96 = v53 + 56;
  v97 = v7;
  AssociatedTypeWitness = (v54 + 3);
  v99 = v30;
  v93 = v23;
  while (1)
  {
    v66 = v104;
    v102(v104, v30, v11);
    if (dispatch thunk of static BinaryInteger.isSigned.getter())
    {
      break;
    }

    if (dispatch thunk of BinaryInteger.bitWidth.getter() >= 128)
    {
      goto LABEL_14;
    }

LABEL_11:
    v71 = lazy protocol witness table accessor for type _UInt128 and conformance _UInt128();
    static FixedWidthInteger._truncatingInit<A>(_:)(v66, &type metadata for _UInt128, v11, v71, v7, &v111);
    v55(v66, v11);
    if (v111 == 0)
    {
      goto LABEL_31;
    }

LABEL_15:
    swift_getAssociatedConformanceWitness();
    dispatch thunk of _ExpressibleByBuiltinIntegerLiteral.init(_builtinIntegerLiteral:)();
    dispatch thunk of ExpressibleByIntegerLiteral.init(integerLiteral:)();
    v74 = v107;
    dispatch thunk of static BinaryInteger.& infix(_:_:)();
    v55(v23, v11);
    if ((dispatch thunk of static BinaryInteger.isSigned.getter() & 1) == 0)
    {
      if (dispatch thunk of BinaryInteger.bitWidth.getter() < 128)
      {
        v81 = lazy protocol witness table accessor for type _UInt128 and conformance _UInt128();
        static FixedWidthInteger._truncatingInit<A>(_:)(v74, &type metadata for _UInt128, v11, v81, v7, &v111);
        v55(v74, v11);
        v82 = *(&v111 + 1) | v111;
        v57 = AssociatedConformanceWitness;
        v58 = v106;
        goto LABEL_27;
      }

LABEL_23:
      lazy protocol witness table accessor for type _UInt128 and conformance _UInt128();
      v111 = 0uLL;
      dispatch thunk of BinaryInteger.init<A>(truncatingIfNeeded:)();
      v83 = *(v7[2] + 8);
      v94 = dispatch thunk of static Equatable.== infix(_:_:)();
      v55(v23, v11);
      v55(v74, v11);
      v57 = AssociatedConformanceWitness;
      v58 = v106;
LABEL_29:
      v59 = v55;
      v60 = v54;
      v62 = v100;
      v61 = AssociatedTypeWitness;
      if ((v94 & 1) == 0)
      {
        goto LABEL_3;
      }

      goto LABEL_4;
    }

    v75 = dispatch thunk of static BinaryInteger.isSigned.getter();
    v76 = dispatch thunk of BinaryInteger.bitWidth.getter();
    if ((v75 & 1) == 0)
    {
      v57 = AssociatedConformanceWitness;
      v58 = v106;
      if (v76 < 128)
      {
        v84 = lazy protocol witness table accessor for type _UInt128 and conformance _UInt128();
        static FixedWidthInteger._truncatingInit<A>(_:)(v74, &type metadata for _UInt128, v11, v84, v7, &v111);
        v55(v74, v11);
        v82 = *(&v111 + 1) | v111;
LABEL_27:
        v59 = v55;
        v60 = v54;
        v62 = v100;
        v61 = AssociatedTypeWitness;
        if (v82)
        {
          goto LABEL_3;
        }

        goto LABEL_4;
      }

      lazy protocol witness table accessor for type _UInt128 and conformance _UInt128();
      v111 = 0uLL;
      dispatch thunk of BinaryInteger.init<A>(truncatingIfNeeded:)();
      v85 = *(v7[2] + 8);
      v94 = dispatch thunk of static Equatable.== infix(_:_:)();
      v55(v23, v11);
      v55(v74, v11);
      goto LABEL_29;
    }

    if (v76 > 128)
    {
      goto LABEL_23;
    }

    dispatch thunk of _ExpressibleByBuiltinIntegerLiteral.init(_builtinIntegerLiteral:)();
    v77 = v107;
    dispatch thunk of ExpressibleByIntegerLiteral.init(integerLiteral:)();
    v78 = *(v7[4] + 8);
    v79 = dispatch thunk of static Comparable.>= infix(_:_:)();
    v55(v23, v11);
    if ((v79 & 1) == 0)
    {
      v55(v77, v11);
      v57 = AssociatedConformanceWitness;
      v58 = v106;
      v59 = v55;
      v60 = v54;
      v62 = v100;
      v61 = AssociatedTypeWitness;
      v23 = v93;
LABEL_3:
      v63 = v95;
      (*(v57 + 56))(v95, v58, v62, v57);
      v59(v63, v11);
      (*v61)(v63, v23, v11);
      goto LABEL_4;
    }

    v80 = lazy protocol witness table accessor for type _UInt128 and conformance _UInt128();
    static FixedWidthInteger._truncatingInit<A>(_:)(v77, &type metadata for _UInt128, v11, v80, v7, &v111);
    v55(v77, v11);
    v57 = AssociatedConformanceWitness;
    v58 = v106;
    v59 = v55;
    v60 = v54;
    v62 = v100;
    v61 = AssociatedTypeWitness;
    v23 = v93;
    if (v111 != 0)
    {
      goto LABEL_3;
    }

LABEL_4:
    (*(v57 + 56))(v58, v58, v62, v57);
    v59(v58, v11);
    v64 = *v61;
    (*v61)(v58, v23, v11);
    *&v111 = 1;
    v30 = v99;
    v65 = v97;
    dispatch thunk of static BinaryInteger.>> infix<A>(_:_:)();
    v59(v30, v11);
    v64(v30, v23, v11);
    v54 = v60;
    v55 = v59;
    v7 = v65;
  }

  v67 = dispatch thunk of static BinaryInteger.isSigned.getter();
  v68 = dispatch thunk of BinaryInteger.bitWidth.getter();
  if (v67)
  {
    if (v68 > 128)
    {
      goto LABEL_14;
    }

    swift_getAssociatedConformanceWitness();
    dispatch thunk of _ExpressibleByBuiltinIntegerLiteral.init(_builtinIntegerLiteral:)();
    dispatch thunk of ExpressibleByIntegerLiteral.init(integerLiteral:)();
    v69 = *(v7[4] + 8);
    v70 = dispatch thunk of static Comparable.>= infix(_:_:)();
    v55(v23, v11);
    if ((v70 & 1) == 0)
    {
      v55(v66, v11);
      goto LABEL_15;
    }

    goto LABEL_11;
  }

  if (v68 < 128)
  {
    goto LABEL_11;
  }

LABEL_14:
  lazy protocol witness table accessor for type _UInt128 and conformance _UInt128();
  v111 = 0uLL;
  dispatch thunk of BinaryInteger.init<A>(truncatingIfNeeded:)();
  v72 = *(v7[2] + 8);
  v73 = dispatch thunk of static Equatable.== infix(_:_:)();
  v55(v23, v11);
  v55(v66, v11);
  if ((v73 & 1) == 0)
  {
    goto LABEL_15;
  }

LABEL_31:
  v55(v30, v11);
  v55(v106, v11);
  v55(v88, v11);
  v86 = v89;
  (*AssociatedTypeWitness)(v89, v95, v11);
  return (*(v92 + 96))(v86, v90);
}

uint64_t FieldElement.inv()@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v103 = a3;
  swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  swift_getAssociatedTypeWitness();
  v114 = AssociatedConformanceWitness;
  v6 = *(*(swift_getAssociatedConformanceWitness() + 8) + 8);
  v111 = v6[3];
  v120 = *(v111 + 2);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v7 = *(*(AssociatedTypeWitness - 8) + 64);
  MEMORY[0x28223BE20](AssociatedTypeWitness, v8);
  v118 = &v98 - v9;
  v10 = swift_checkMetadataState();
  v116 = *(v10 - 8);
  v11 = *(v116 + 64);
  v13 = MEMORY[0x28223BE20](v10, v12);
  v121 = &v98 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = MEMORY[0x28223BE20](v13, v15);
  v122 = &v98 - v17;
  v19 = MEMORY[0x28223BE20](v16, v18);
  v106 = &v98 - v20;
  v22 = MEMORY[0x28223BE20](v19, v21);
  v113 = &v98 - v23;
  v25 = MEMORY[0x28223BE20](v22, v24);
  v115 = &v98 - v26;
  v28 = MEMORY[0x28223BE20](v25, v27);
  v30 = &v98 - v29;
  v32 = MEMORY[0x28223BE20](v28, v31);
  v102 = &v98 - v33;
  v35 = MEMORY[0x28223BE20](v32, v34);
  v37 = &v98 - v36;
  v39 = MEMORY[0x28223BE20](v35, v38);
  v41 = &v98 - v40;
  v43 = MEMORY[0x28223BE20](v39, v42);
  v98 = &v98 - v44;
  v45 = *(*(a1 - 8) + 64);
  MEMORY[0x28223BE20](v43, v46);
  v48 = &v98 - ((v47 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v49 + 16))(v48, v117, a1);
  FieldElement.init(other:)(v48, a1, a2);
  v50 = *(a2 + 88);
  v99 = a1;
  v100 = a2;
  v50(a1, a2);
  if (dispatch thunk of static BinaryInteger.isSigned.getter())
  {
    if (dispatch thunk of BinaryInteger.bitWidth.getter() < 64)
    {
      goto LABEL_11;
    }

    goto LABEL_13;
  }

  v51 = dispatch thunk of static BinaryInteger.isSigned.getter();
  v52 = dispatch thunk of BinaryInteger.bitWidth.getter();
  v54 = __OFSUB__(v52, 64);
  v53 = v52 - 64 < 0;
  if ((v51 & 1) == 0)
  {
    goto LABEL_9;
  }

  if (v52 > 64)
  {
LABEL_13:
    while (1)
    {
      *&v123 = 0;
      lazy protocol witness table accessor for type Int and conformance Int();
      dispatch thunk of BinaryInteger.init<A>(truncatingIfNeeded:)();
      v60 = *(v6[2] + 8);
      v61 = dispatch thunk of static Equatable.== infix(_:_:)();
      v57 = v116;
      (*(v116 + 8))(v37, v10);
      v58 = v114;
      if ((v61 & 1) == 0)
      {
        goto LABEL_14;
      }

LABEL_8:
      while (1)
      {
        _assertionFailure(_:_:file:line:flags:)();
        __break(1u);
LABEL_9:
        if (v53 == v54)
        {
          break;
        }

LABEL_11:
        v59 = dispatch thunk of BinaryInteger._lowWord.getter();
        v58 = v114;
        v57 = v116;
        if (v59)
        {
          goto LABEL_14;
        }
      }
    }
  }

  swift_getAssociatedConformanceWitness();
  dispatch thunk of _ExpressibleByBuiltinIntegerLiteral.init(_builtinIntegerLiteral:)();
  dispatch thunk of ExpressibleByIntegerLiteral.init(integerLiteral:)();
  v55 = *(v6[4] + 8);
  v56 = dispatch thunk of static Comparable.>= infix(_:_:)();
  v57 = v116;
  (*(v116 + 8))(v37, v10);
  v58 = v114;
  if ((v56 & 1) != 0 && !dispatch thunk of BinaryInteger._lowWord.getter())
  {
    goto LABEL_8;
  }

LABEL_14:
  v101 = v41;
  v112 = swift_checkMetadataState();
  (*(v58 + 24))(v112, v58);
  v117 = swift_getAssociatedConformanceWitness();
  dispatch thunk of _ExpressibleByBuiltinIntegerLiteral.init(_builtinIntegerLiteral:)();
  dispatch thunk of ExpressibleByIntegerLiteral.init(integerLiteral:)();
  v62 = *(v111 + 1);
  v63 = v102;
  dispatch thunk of static AdditiveArithmetic.- infix(_:_:)();
  v64 = *(v57 + 8);
  v64(v30, v10);
  v64(v37, v10);
  v66 = *(v57 + 16);
  v65 = v57 + 16;
  v66(v115, v101, v10);
  v67 = v113;
  v111 = v66;
  v66(v113, v63, v10);
  *&v123 = 1;
  v109 = lazy protocol witness table accessor for type Int and conformance Int();
  dispatch thunk of BinaryInteger.init<A>(_:)();
  (*(v58 + 64))(v37);
  v64(v37, v10);
  v68 = (v65 + 16);
  v110 = v6;
  v107 = v58 + 56;
  v108 = (v65 + 16);
  v116 = v65;
  v104 = v37;
  while (1)
  {
    v111(v122, v67, v10);
    if (dispatch thunk of static BinaryInteger.isSigned.getter())
    {
      break;
    }

    if (dispatch thunk of BinaryInteger.bitWidth.getter() >= 128)
    {
      goto LABEL_27;
    }

LABEL_24:
    v78 = lazy protocol witness table accessor for type _UInt128 and conformance _UInt128();
    v79 = v122;
    static FixedWidthInteger._truncatingInit<A>(_:)(v122, &type metadata for _UInt128, v10, v78, v6, &v123);
    v64(v79, v10);
    if (v123 == 0)
    {
      goto LABEL_42;
    }

LABEL_28:
    dispatch thunk of _ExpressibleByBuiltinIntegerLiteral.init(_builtinIntegerLiteral:)();
    dispatch thunk of ExpressibleByIntegerLiteral.init(integerLiteral:)();
    dispatch thunk of static BinaryInteger.& infix(_:_:)();
    v64(v37, v10);
    if ((dispatch thunk of static BinaryInteger.isSigned.getter() & 1) == 0)
    {
      if (dispatch thunk of BinaryInteger.bitWidth.getter() < 128)
      {
        goto LABEL_34;
      }

LABEL_37:
      lazy protocol witness table accessor for type _UInt128 and conformance _UInt128();
      v123 = 0uLL;
      dispatch thunk of BinaryInteger.init<A>(truncatingIfNeeded:)();
      v90 = *(v6[2] + 8);
      v91 = v121;
      v105 = dispatch thunk of static Equatable.== infix(_:_:)();
      v64(v37, v10);
      v64(v91, v10);
      v69 = v114;
      v70 = v115;
      v71 = v112;
      v68 = v108;
      if ((v105 & 1) == 0)
      {
        goto LABEL_16;
      }

      goto LABEL_17;
    }

    v83 = dispatch thunk of static BinaryInteger.isSigned.getter();
    v84 = dispatch thunk of BinaryInteger.bitWidth.getter();
    if ((v83 & 1) == 0)
    {
      if (v84 < 128)
      {
LABEL_34:
        v88 = lazy protocol witness table accessor for type _UInt128 and conformance _UInt128();
        v89 = v121;
        static FixedWidthInteger._truncatingInit<A>(_:)(v121, &type metadata for _UInt128, v10, v88, v6, &v123);
        v64(v89, v10);
        v69 = v114;
        v70 = v115;
        v71 = v112;
        v68 = v108;
        if (v123 != 0)
        {
          goto LABEL_16;
        }

        goto LABEL_17;
      }

      goto LABEL_37;
    }

    if (v84 <= 128)
    {
      dispatch thunk of _ExpressibleByBuiltinIntegerLiteral.init(_builtinIntegerLiteral:)();
      dispatch thunk of ExpressibleByIntegerLiteral.init(integerLiteral:)();
      v92 = *(v6[4] + 8);
      v93 = dispatch thunk of static Comparable.>= infix(_:_:)();
      v64(v37, v10);
      if ((v93 & 1) == 0)
      {
        v64(v121, v10);
        v69 = v114;
        v70 = v115;
        v71 = v112;
        v68 = v108;
        v37 = v104;
LABEL_16:
        v72 = v106;
        (*(v69 + 56))(v106, v70, v71, v69);
        v64(v72, v10);
        (*v68)(v72, v37, v10);
        goto LABEL_17;
      }

      v94 = lazy protocol witness table accessor for type _UInt128 and conformance _UInt128();
      v95 = v121;
      static FixedWidthInteger._truncatingInit<A>(_:)(v121, &type metadata for _UInt128, v10, v94, v6, &v123);
      v64(v95, v10);
      v69 = v114;
      v70 = v115;
      v71 = v112;
      v68 = v108;
      v37 = v104;
      if (v123 != 0)
      {
        goto LABEL_16;
      }
    }

    else
    {
      lazy protocol witness table accessor for type _UInt128 and conformance _UInt128();
      v123 = 0uLL;
      dispatch thunk of BinaryInteger.init<A>(truncatingIfNeeded:)();
      v85 = *(v6[2] + 8);
      v86 = v121;
      v87 = dispatch thunk of static Equatable.== infix(_:_:)();
      v64(v37, v10);
      v64(v86, v10);
      v69 = v114;
      v70 = v115;
      v71 = v112;
      v68 = v108;
      if ((v87 & 1) == 0)
      {
        goto LABEL_16;
      }
    }

LABEL_17:
    (*(v69 + 56))(v70, v70, v71, v69);
    v64(v70, v10);
    v73 = *v68;
    (*v68)(v70, v37, v10);
    *&v123 = 1;
    v67 = v113;
    v6 = v110;
    dispatch thunk of static BinaryInteger.>> infix<A>(_:_:)();
    v64(v67, v10);
    v73(v67, v37, v10);
  }

  v74 = dispatch thunk of static BinaryInteger.isSigned.getter();
  v75 = dispatch thunk of BinaryInteger.bitWidth.getter();
  if (v74)
  {
    if (v75 > 128)
    {
      goto LABEL_27;
    }

    dispatch thunk of _ExpressibleByBuiltinIntegerLiteral.init(_builtinIntegerLiteral:)();
    dispatch thunk of ExpressibleByIntegerLiteral.init(integerLiteral:)();
    v76 = *(v6[4] + 8);
    v77 = dispatch thunk of static Comparable.>= infix(_:_:)();
    v64(v37, v10);
    if ((v77 & 1) == 0)
    {
      v64(v122, v10);
      goto LABEL_28;
    }

    goto LABEL_24;
  }

  if (v75 < 128)
  {
    goto LABEL_24;
  }

LABEL_27:
  lazy protocol witness table accessor for type _UInt128 and conformance _UInt128();
  v123 = 0uLL;
  dispatch thunk of BinaryInteger.init<A>(truncatingIfNeeded:)();
  v80 = *(v6[2] + 8);
  v81 = v122;
  v82 = dispatch thunk of static Equatable.== infix(_:_:)();
  v64(v37, v10);
  v64(v81, v10);
  if ((v82 & 1) == 0)
  {
    goto LABEL_28;
  }

LABEL_42:
  v64(v67, v10);
  v64(v115, v10);
  v64(v102, v10);
  v64(v101, v10);
  v96 = v98;
  (*v68)(v98, v106, v10);
  return (*(v100 + 96))(v96, v99);
}

uint64_t specialized FieldElement.description.getter(unint64_t a1, uint64_t a2)
{
  specialized FieldElement.integerValue.getter(a1, a2, &v10);
  lazy protocol witness table accessor for type _UInt128 and conformance _UInt128();
  *&v10 = dispatch thunk of CustomStringConvertible.description.getter();
  *(&v10 + 1) = v4;

  MEMORY[0x2743B25F0](7876648, 0xE300000000000000);

  v5 = v10;
  *&v10 = a1;
  *(&v10 + 1) = a2;
  lazy protocol witness table accessor for type _UInt128 and conformance _UInt128();
  v6 = String.init<A>(_:radix:uppercase:)();
  v8 = v7;
  v10 = v5;

  MEMORY[0x2743B25F0](v6, v8);

  MEMORY[0x2743B25F0](41, 0xE100000000000000);

  return v10;
}

uint64_t specialized FieldElement.description.getter(uint64_t a1)
{
  return specialized FieldElement.description.getter(a1, specialized FieldElement.integerValue.getter);
}

{
  return specialized FieldElement.description.getter(a1, specialized FieldElement.integerValue.getter);
}

uint64_t specialized FieldElement.description.getter(uint64_t a1, void (*a2)(void))
{
  a2();
  v6 = dispatch thunk of CustomStringConvertible.description.getter();

  MEMORY[0x2743B25F0](7876648, 0xE300000000000000);

  lazy protocol witness table accessor for type UInt64 and conformance UInt64();
  v2 = String.init<A>(_:radix:uppercase:)();
  v4 = v3;

  MEMORY[0x2743B25F0](v2, v4);

  MEMORY[0x2743B25F0](41, 0xE100000000000000);

  return v6;
}

uint64_t specialized FieldElement.description.getter()
{
  v4 = dispatch thunk of CustomStringConvertible.description.getter();

  MEMORY[0x2743B25F0](7876648, 0xE300000000000000);

  lazy protocol witness table accessor for type UInt32 and conformance UInt32();
  v0 = String.init<A>(_:radix:uppercase:)();
  v2 = v1;

  MEMORY[0x2743B25F0](v0, v2);

  MEMORY[0x2743B25F0](41, 0xE100000000000000);

  return v4;
}

uint64_t FieldElement.description.getter(uint64_t a1, uint64_t a2)
{
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v5 = *(AssociatedTypeWitness - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](AssociatedTypeWitness, v7);
  v9 = &v20 - v8;
  FieldElement.integerValue.getter(a1, a2);
  v10 = *(*(*(swift_getAssociatedConformanceWitness() + 8) + 8) + 8);
  v11 = dispatch thunk of CustomStringConvertible.description.getter();
  v13 = v12;
  (*(v5 + 8))(v9, AssociatedTypeWitness);
  v20 = v11;
  v21 = v13;

  MEMORY[0x2743B25F0](7876648, 0xE300000000000000);

  v15 = v20;
  v14 = v21;
  (*(a2 + 88))(a1, a2);
  v16 = String.init<A>(_:radix:uppercase:)();
  v18 = v17;
  v20 = v15;
  v21 = v14;

  MEMORY[0x2743B25F0](v16, v18);

  MEMORY[0x2743B25F0](41, 0xE100000000000000);

  return v20;
}

uint64_t static FieldElement.randomVectorBatched<A>(count:using:)(Swift::Int a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v48 = a4;
  v38 = a2;
  v10 = *(*(a3 - 8) + 64);
  MEMORY[0x28223BE20](a1, a2);
  v41 = &v34 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v13 = *(AssociatedTypeWitness - 8);
  v14 = *(v13 + 64);
  v16 = MEMORY[0x28223BE20](AssociatedTypeWitness, v15);
  v18 = &v34 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16, v19);
  v42 = &v34 - v20;
  v53 = Array.init()();
  v40 = type metadata accessor for Array();
  Array.reserveCapacity(_:)(a1);
  v44 = v53;
  v21 = MEMORY[0x2743B2830]();
  v43 = a1;
  if (v21 >= a1)
  {
    return v44;
  }

  v51 = a5;
  v52 = 0;
  v46 = *(a5 + 64);
  v47 = a5 + 64;
  v37 = *(a6 + 8);
  v35 = *(v37 + 40);
  v36 = v37 + 40;
  v50 = (v13 + 8);
  v39 = (v13 + 16);
  v22 = v42;
  v45 = a6;
  result = v46(a3, a5);
LABEL_6:
  if ((result - 0x80000000000000) >> 56 == 255)
  {
    v49 = v35(result << 8, v48, v37);
    v25 = 0;
    while (1)
    {
      result = v46(a3, a5);
      if ((v25 * result) >> 64 != (v25 * result) >> 63)
      {
        __break(1u);
        break;
      }

      MEMORY[0x28223BE20](result, v26);
      v27 = v48;
      *(&v34 - 6) = a3;
      *(&v34 - 5) = v27;
      *(&v34 - 4) = a5;
      *(&v34 - 3) = a6;
      *(&v34 - 2) = v28;
      v29 = v52;
      Array.withUnsafeBytes<A>(_:)();
      v52 = v29;
      static FieldElement.modulus.getter();
      v30 = *(*(*(*(swift_getAssociatedConformanceWitness() + 8) + 8) + 32) + 8);
      v31 = dispatch thunk of static Comparable.> infix(_:_:)();
      v32 = *v50;
      (*v50)(v18, AssociatedTypeWitness);
      if (v31)
      {
        v32(v22, AssociatedTypeWitness);
        a6 = v45;
      }

      else
      {
        (*v39)(v18, v22, AssociatedTypeWitness);
        FieldElement.init(_:)(v18, a3, v51);
        Array.append(_:)();
        v44 = v53;
        v33 = MEMORY[0x2743B2830]();
        v32(v22, AssociatedTypeWitness);
        if (v33 == v43)
        {
          a6 = v45;
          a5 = v51;
          v22 = v42;
LABEL_4:

          v24 = MEMORY[0x2743B2830](v44, a3);
          if (v24 >= v43)
          {
            return v44;
          }

          result = v46(a3, a5);
          goto LABEL_6;
        }

        a6 = v45;
        v22 = v42;
      }

      ++v25;
      a5 = v51;
      if (v25 == 256)
      {
        goto LABEL_4;
      }
    }
  }

  __break(1u);
  return result;
}

uint64_t closure #1 in static FieldElement.randomVectorBatched<A>(count:using:)()
{
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  swift_getAssociatedTypeWitness();
  return UnsafeRawBufferPointer.load<A>(fromByteOffset:as:)();
}

uint64_t Array<A>.elementwiseAdd(_:)(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(unint64_t, char *, uint64_t, void))
{
  v34 = a4;
  v35 = a3;
  v6 = *(a2 + 16);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](a1, a2);
  v10 = v32 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *v4;
  v12 = MEMORY[0x2743B2830](*v4, v6);
  v13 = MEMORY[0x2743B2830](a1, v6);
  if (v12 == v13)
  {
    result = MEMORY[0x2743B2830](v11, v6);
    if (result < 0)
    {
      __break(1u);
    }

    else if (result)
    {
      v15 = v10;
      v16 = v7;
      v17 = v4;
      v18 = 0;
      v32[2] = v16 + 8;
      v33 = result;
      do
      {
        v19 = v18 + 1;
        Array.subscript.getter();
        Array._makeMutableAndUnique()();
        v20 = *v17;
        Array._checkSubscript_mutating(_:)(v18);
        isClassOrObjCExistentialType = _swift_isClassOrObjCExistentialType();
        v22 = v20 & 0xFFFFFFFFFFFFFF8;
        if ((isClassOrObjCExistentialType & 1) == 0)
        {
          v22 = v20;
        }

        v34(v22 + ((*(v16 + 80) + 32) & ~*(v16 + 80)) + *(v16 + 72) * v18, v15, v6, *(v35 + 8));
        (*(v16 + 8))(v15, v6);
        result = v33;
        ++v18;
      }

      while (v33 != v19);
    }
  }

  else
  {
    v36 = 0;
    v37 = 0xE000000000000000;
    v23 = v13;
    _StringGuts.grow(_:)(28);
    v24 = _typeName(_:qualified:)();
    v26 = v25;

    v36 = v24;
    v37 = v26;
    MEMORY[0x2743B25F0](0xD000000000000012, 0x8000000270C526F0);
    v38 = MEMORY[0x2743B2830](v11, v6);
    v27 = dispatch thunk of CustomStringConvertible.description.getter();
    MEMORY[0x2743B25F0](v27);

    MEMORY[0x2743B25F0](540877088, 0xE400000000000000);
    v38 = v23;
    v28 = dispatch thunk of CustomStringConvertible.description.getter();
    MEMORY[0x2743B25F0](v28);

    v29 = v36;
    v30 = v37;
    lazy protocol witness table accessor for type FieldElementError and conformance FieldElementError();
    swift_allocError();
    *v31 = v29;
    *(v31 + 8) = v30;
    *(v31 + 16) = 1;
    return swift_willThrow();
  }

  return result;
}

uint64_t static Array<A>.elementwiseAdding(_:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(uint64_t, uint64_t, uint64_t))
{
  v7 = v5;
  v10 = type metadata accessor for Array();

  a5(a2, v10, a4);
  if (v7)
  {
  }

  return a1;
}

uint64_t SignedInteger<>.init<A>(fieldElement:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X5>, char *a6@<X8>)
{
  v78 = a4;
  v82 = a1;
  v80 = a6;
  v10 = type metadata accessor for Optional();
  v63 = *(v10 - 8);
  v64 = v10;
  v11 = *(v63 + 64);
  MEMORY[0x28223BE20](v10, v12);
  v70 = &v63 - v13;
  v76 = *(a4 + 8);
  v66 = *(v76 + 24);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v69 = *(AssociatedTypeWitness - 8);
  v14 = *(v69 + 64);
  v16 = MEMORY[0x28223BE20](AssociatedTypeWitness, v15);
  v67 = &v63 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16, v18);
  v68 = &v63 - v19;
  swift_getAssociatedTypeWitness();
  v77 = a5;
  v83 = a3;
  swift_getAssociatedConformanceWitness();
  swift_getAssociatedTypeWitness();
  v20 = *(swift_getAssociatedConformanceWitness() + 8);
  v75 = *(v20 + 8);
  v73 = *(*(v75 + 24) + 16);
  v21 = swift_getAssociatedTypeWitness();
  v22 = *(*(v21 - 8) + 64);
  MEMORY[0x28223BE20](v21, v23);
  v24 = swift_checkMetadataState();
  v74 = *(v24 - 8);
  v25 = *(v74 + 64);
  v27 = MEMORY[0x28223BE20](v24, v26);
  v29 = &v63 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = MEMORY[0x28223BE20](v27, v30);
  v33 = &v63 - v32;
  v35 = MEMORY[0x28223BE20](v31, v34);
  v37 = &v63 - v36;
  v39 = MEMORY[0x28223BE20](v35, v38);
  v81 = &v63 - v40;
  v79 = *(a2 - 8);
  v41 = *(v79 + 64);
  MEMORY[0x28223BE20](v39, v42);
  v72 = &v63 - ((v43 + 15) & 0xFFFFFFFFFFFFFFF0);
  v65 = v20;
  v44 = dispatch thunk of static FixedWidthInteger.bitWidth.getter();
  if (dispatch thunk of static FixedWidthInteger.bitWidth.getter() >= v44)
  {
    v78 = a2;
    FieldElement.integerValue.getter(v83, v77);
    static FieldElement.modulus.getter();
    swift_getAssociatedConformanceWitness();
    dispatch thunk of _ExpressibleByBuiltinIntegerLiteral.init(_builtinIntegerLiteral:)();
    dispatch thunk of ExpressibleByIntegerLiteral.init(integerLiteral:)();
    v48 = v75;
    dispatch thunk of static BinaryInteger./ infix(_:_:)();
    v49 = v74;
    v50 = *(v74 + 8);
    v50(v29, v24);
    v50(v33, v24);
    v51 = *(*(v48 + 32) + 8);
    v52 = dispatch thunk of static Comparable.> infix(_:_:)();
    v50(v37, v24);
    if (v52)
    {
      static FieldElement.modulus.getter();
      dispatch thunk of FixedWidthInteger.subtractingReportingOverflow(_:)();
      v50(v33, v24);
      a2 = v78;
      v53 = AssociatedTypeWitness;
      swift_getAssociatedConformanceWitness();
      v54 = v68;
      dispatch thunk of BinaryInteger.init<A>(_:)();
      v55 = v69;
      (*(v69 + 16))(v67, v54, v53);
      v56 = v72;
      dispatch thunk of BinaryInteger.init<A>(truncatingIfNeeded:)();
      (*(*(v83 - 8) + 8))(v82);
      (*(v55 + 8))(v54, v53);
      v50(v81, v24);
      v47 = v79;
      v46 = v80;
      (*(v79 + 32))(v80, v56, a2);
    }

    else
    {
      v57 = v81;
      (*(v49 + 16))(v37, v81, v24);
      v58 = v70;
      a2 = v78;
      dispatch thunk of Numeric.init<A>(exactly:)();
      (*(*(v83 - 8) + 8))(v82);
      v50(v57, v24);
      v47 = v79;
      v59 = (*(v79 + 48))(v58, 1, a2);
      v46 = v80;
      if (v59 == 1)
      {
        (*(v63 + 8))(v58, v64);
        v45 = 1;
        return (*(v47 + 56))(v46, v45, 1, a2);
      }

      v60 = *(v47 + 32);
      v61 = v72;
      v60(v72, v58, a2);
      v60(v46, v61, a2);
    }

    v45 = 0;
    return (*(v47 + 56))(v46, v45, 1, a2);
  }

  (*(*(v83 - 8) + 8))(v82);
  v45 = 1;
  v47 = v79;
  v46 = v80;
  return (*(v47 + 56))(v46, v45, 1, a2);
}

uint64_t BinaryFloatingPoint.init<A>(fieldElement:fractionalBitCount:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  v64 = a5;
  v70 = a1;
  v63 = a7;
  v59 = a3;
  v60 = *(a3 - 8);
  v61 = a2;
  v9 = *(v60 + 64);
  v10 = MEMORY[0x28223BE20](a1, a2);
  v62 = &v54 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x28223BE20](v10, v12);
  v65 = &v54 - v14;
  MEMORY[0x28223BE20](v13, v15);
  v69 = &v54 - v16;
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  swift_getAssociatedTypeWitness();
  v67 = *(*(swift_getAssociatedConformanceWitness() + 8) + 8);
  v55 = *(v67 + 24);
  v68 = *(v55 + 16);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v18 = *(*(AssociatedTypeWitness - 8) + 64);
  MEMORY[0x28223BE20](AssociatedTypeWitness, v19);
  v20 = swift_checkMetadataState();
  v57 = *(v20 - 8);
  v21 = *(v57 + 64);
  v23 = MEMORY[0x28223BE20](v20, v22);
  v25 = &v54 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = MEMORY[0x28223BE20](v23, v26);
  v29 = &v54 - v28;
  v31 = MEMORY[0x28223BE20](v27, v30);
  v33 = &v54 - v32;
  MEMORY[0x28223BE20](v31, v34);
  v36 = &v54 - v35;
  FieldElement.integerValue.getter(a4, a6);
  v37 = a4;
  v38 = v57;
  v66 = v37;
  v56 = a6;
  static FieldElement.modulus.getter();
  swift_getAssociatedConformanceWitness();
  dispatch thunk of _ExpressibleByBuiltinIntegerLiteral.init(_builtinIntegerLiteral:)();
  dispatch thunk of ExpressibleByIntegerLiteral.init(integerLiteral:)();
  v39 = v67;
  dispatch thunk of static BinaryInteger./ infix(_:_:)();
  v40 = *(v38 + 8);
  v40(v25, v20);
  v40(v29, v20);
  v41 = *(*(v39 + 32) + 8);
  v68 = v36;
  v42 = dispatch thunk of static Comparable.> infix(_:_:)();
  v40(v33, v20);
  v58 = v40;
  if (v42)
  {
    static FieldElement.modulus.getter();
    v43 = *(v55 + 8);
    dispatch thunk of static AdditiveArithmetic.- infix(_:_:)();
    v40(v29, v20);
    v44 = v65;
    v45 = *(v64 + 16);
    v46 = v59;
    dispatch thunk of FloatingPoint.init<A>(_:)();
    v47 = *(v45 + 16);
    dispatch thunk of static SignedNumeric.- prefix(_:)();
    v48 = v60;
    (*(v60 + 8))(v44, v46);
  }

  else
  {
    (*(v38 + 16))(v33, v68, v20);
    v49 = *(v64 + 16);
    v46 = v59;
    dispatch thunk of FloatingPoint.init<A>(_:)();
    v48 = v60;
  }

  v50 = v62;
  dispatch thunk of FloatingPoint.init(_:)();
  v51 = v69;
  dispatch thunk of static FloatingPoint./= infix(_:_:)();
  v52 = *(v48 + 8);
  v52(v50, v46);
  (*(v48 + 16))(v65, v51, v46);
  dispatch thunk of BinaryFloatingPoint.init<A>(_:)();
  (*(*(v66 - 8) + 8))(v70);
  v52(v51, v46);
  return v58(v68, v20);
}

void one-time initialization function for one()
{
  static Field32.one = 0xFFFFF;
}

{
  static Field40.one = 0x1B7FFFEB0;
}

{
  static Field64.one = 0xFFFFFFFFLL;
}

void one-time initialization function for negativeOne()
{
  static Field32.negativeOne = -2097150;
}

{
  static Field40.negativeOne = 0xFE46B00151;
}

{
  static Field64.negativeOne = 0xFFFFFFFE00000002;
}

void *static Field32.one.getter@<X0>(void *result@<X0>, _DWORD *a2@<X1>, _DWORD *a3@<X8>)
{
  if (*result != -1)
  {
    v3 = a2;
    v4 = a3;
    result = swift_once();
    a3 = v4;
    a2 = v3;
  }

  *a3 = *a2;
  return result;
}

Swift::Int Field32.hashValue.getter()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  Hasher._combine(_:)(v1);
  return Hasher._finalize()();
}

uint64_t protocol witness for static FieldElement.one.getter in conformance Field32@<X0>(void *a1@<X2>, _DWORD *a2@<X3>, _DWORD *a3@<X8>)
{
  if (*a1 != -1)
  {
    v3 = a2;
    v4 = a3;
    result = swift_once();
    a3 = v4;
    a2 = v3;
  }

  *a3 = *a2;
  return result;
}

unsigned int *protocol witness for static AdditiveArithmetic.+ infix(_:_:) in conformance Field32@<X0>(unsigned int *result@<X0>, unsigned int *a2@<X1>, _DWORD *a3@<X8>)
{
  v3 = *result;
  v4 = *a2;
  if (!*a2)
  {
    goto LABEL_8;
  }

  v5 = v4 <= 0xFFF00001;
  v6 = -1048575 - v4;
  if (!v5)
  {
    __break(1u);
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  if (v3 >= v6)
  {
    *a3 = v3 - v6;
    return result;
  }

  v5 = v6 <= 0xFFF00001;
  v7 = -1048575 - v6;
  if (!v5)
  {
    goto LABEL_10;
  }

  v5 = __CFADD__(v3, v7);
  v3 += v7;
  if (!v5)
  {
LABEL_8:
    *a3 = v3;
    return result;
  }

LABEL_11:
  __break(1u);
  return result;
}

unsigned int *protocol witness for static AdditiveArithmetic.+= infix(_:_:) in conformance Field32(unsigned int *result, unsigned int *a2)
{
  v2 = *a2;
  v3 = *result;
  if (!*a2)
  {
    goto LABEL_8;
  }

  v4 = v2 <= 0xFFF00001;
  v5 = -1048575 - v2;
  if (!v4)
  {
    __break(1u);
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  if (v3 >= v5)
  {
    *result = v3 - v5;
    return result;
  }

  v4 = v5 <= 0xFFF00001;
  v6 = -1048575 - v5;
  if (!v4)
  {
    goto LABEL_10;
  }

  v4 = __CFADD__(v3, v6);
  v3 += v6;
  if (!v4)
  {
LABEL_8:
    *result = v3;
    return result;
  }

LABEL_11:
  __break(1u);
  return result;
}

int *protocol witness for static AdditiveArithmetic.- infix(_:_:) in conformance Field32@<X0>(int *result@<X0>, unsigned int *a2@<X1>, int *a3@<X8>)
{
  v3 = *result;
  v4 = *a2;
  v5 = *result - *a2;
  if (*result >= *a2)
  {
    goto LABEL_4;
  }

  v6 = -1048575 - v4;
  if (v4 > 0xFFF00001)
  {
    __break(1u);
  }

  else
  {
    v7 = __CFADD__(v3, v6);
    v5 = v3 + v6;
    if (!v7)
    {
LABEL_4:
      *a3 = v5;
      return result;
    }
  }

  __break(1u);
  return result;
}

int *protocol witness for static AdditiveArithmetic.-= infix(_:_:) in conformance Field32(int *result, unsigned int *a2)
{
  v2 = *a2;
  v3 = *result;
  v4 = *result - *a2;
  if (*result >= *a2)
  {
    goto LABEL_4;
  }

  v5 = -1048575 - v2;
  if (v2 > 0xFFF00001)
  {
    __break(1u);
  }

  else
  {
    v6 = __CFADD__(v3, v5);
    v4 = v3 + v5;
    if (!v6)
    {
LABEL_4:
      *result = v4;
      return result;
    }
  }

  __break(1u);
  return result;
}

uint64_t protocol witness for VDAFEncodable.encode<A>(into:) in conformance Field32(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = lazy protocol witness table accessor for type Field32 and conformance Field32();

  return FieldElement.encode<A>(into:)(a1, a4, a2, v8, a3);
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance Field32()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  Hasher._combine(_:)(v1);
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance Field32()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  Hasher._combine(_:)(v1);
  return Hasher._finalize()();
}

unint64_t *protocol witness for static AdditiveArithmetic.+ infix(_:_:) in conformance Field40@<X0>(unint64_t *result@<X0>, unint64_t *a2@<X1>, void *a3@<X8>)
{
  v3 = *result;
  v4 = *a2;
  if (!*a2)
  {
    goto LABEL_7;
  }

  v5 = v4 <= 0xFFFEB00001;
  v6 = 0xFFFEB00001 - v4;
  if (!v5)
  {
    __break(1u);
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  if (v3 >= v6)
  {
    *a3 = v3 - v6;
    return result;
  }

  v7 = 0xFFFEB00001 - v6;
  if (v6 > 0xFFFEB00001)
  {
    goto LABEL_9;
  }

  v5 = __CFADD__(v3, v7);
  v3 += v7;
  if (!v5)
  {
LABEL_7:
    *a3 = v3;
    return result;
  }

LABEL_10:
  __break(1u);
  return result;
}

unint64_t *protocol witness for static AdditiveArithmetic.+= infix(_:_:) in conformance Field40(unint64_t *result, unint64_t *a2)
{
  v2 = *a2;
  v3 = *result;
  if (!*a2)
  {
    goto LABEL_7;
  }

  v4 = v2 <= 0xFFFEB00001;
  v5 = 0xFFFEB00001 - v2;
  if (!v4)
  {
    __break(1u);
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  if (v3 >= v5)
  {
    *result = v3 - v5;
    return result;
  }

  v6 = 0xFFFEB00001 - v5;
  if (v5 > 0xFFFEB00001)
  {
    goto LABEL_9;
  }

  v4 = __CFADD__(v3, v6);
  v3 += v6;
  if (!v4)
  {
LABEL_7:
    *result = v3;
    return result;
  }

LABEL_10:
  __break(1u);
  return result;
}

uint64_t *protocol witness for static AdditiveArithmetic.- infix(_:_:) in conformance Field40@<X0>(uint64_t *result@<X0>, unint64_t *a2@<X1>, unint64_t *a3@<X8>)
{
  v3 = *result;
  v4 = *a2;
  v5 = *result - *a2;
  if (*result >= *a2)
  {
    goto LABEL_4;
  }

  v6 = 0xFFFEB00001 - v4;
  if (v4 > 0xFFFEB00001)
  {
    __break(1u);
  }

  else
  {
    v7 = __CFADD__(v3, v6);
    v5 = v3 + v6;
    if (!v7)
    {
LABEL_4:
      *a3 = v5;
      return result;
    }
  }

  __break(1u);
  return result;
}

uint64_t *protocol witness for static AdditiveArithmetic.-= infix(_:_:) in conformance Field40(uint64_t *result, unint64_t *a2)
{
  v2 = *a2;
  v3 = *result;
  v4 = *result - *a2;
  if (*result >= *a2)
  {
    goto LABEL_4;
  }

  v5 = 0xFFFEB00001 - v2;
  if (v2 > 0xFFFEB00001)
  {
    __break(1u);
  }

  else
  {
    v6 = __CFADD__(v3, v5);
    v4 = v3 + v5;
    if (!v6)
    {
LABEL_4:
      *result = v4;
      return result;
    }
  }

  __break(1u);
  return result;
}

uint64_t protocol witness for VDAFEncodable.encode<A>(into:) in conformance Field40(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = lazy protocol witness table accessor for type Field40 and conformance Field40();

  return FieldElement.encode<A>(into:)(a1, a4, a2, v8, a3);
}

void *static Field40.one.getter@<X0>(void *result@<X0>, void *a2@<X1>, void *a3@<X8>)
{
  if (*result != -1)
  {
    v3 = a2;
    v4 = a3;
    result = swift_once();
    a3 = v4;
    a2 = v3;
  }

  *a3 = *a2;
  return result;
}

Swift::Int Field40.hashValue.getter()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  MEMORY[0x2743B31A0](v1);
  return Hasher._finalize()();
}

uint64_t protocol witness for static FieldElement.one.getter in conformance Field40@<X0>(void *a1@<X2>, void *a2@<X3>, void *a3@<X8>)
{
  if (*a1 != -1)
  {
    v3 = a2;
    v4 = a3;
    result = swift_once();
    a3 = v4;
    a2 = v3;
  }

  *a3 = *a2;
  return result;
}

unint64_t *protocol witness for static AdditiveArithmetic.+ infix(_:_:) in conformance Field64@<X0>(unint64_t *result@<X0>, unint64_t *a2@<X1>, void *a3@<X8>)
{
  v3 = *result;
  v4 = *a2;
  if (!*a2)
  {
    goto LABEL_8;
  }

  v5 = v4 <= 0xFFFFFFFF00000001;
  v6 = 0xFFFFFFFF00000001 - v4;
  if (!v5)
  {
    __break(1u);
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  if (v3 >= v6)
  {
    *a3 = v3 - v6;
    return result;
  }

  v5 = v6 <= 0xFFFFFFFF00000001;
  v7 = 0xFFFFFFFF00000001 - v6;
  if (!v5)
  {
    goto LABEL_10;
  }

  v5 = __CFADD__(v3, v7);
  v3 += v7;
  if (!v5)
  {
LABEL_8:
    *a3 = v3;
    return result;
  }

LABEL_11:
  __break(1u);
  return result;
}

unint64_t *protocol witness for static AdditiveArithmetic.+= infix(_:_:) in conformance Field64(unint64_t *result, unint64_t *a2)
{
  v2 = *a2;
  v3 = *result;
  if (!*a2)
  {
    goto LABEL_8;
  }

  v4 = v2 <= 0xFFFFFFFF00000001;
  v5 = 0xFFFFFFFF00000001 - v2;
  if (!v4)
  {
    __break(1u);
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  if (v3 >= v5)
  {
    *result = v3 - v5;
    return result;
  }

  v4 = v5 <= 0xFFFFFFFF00000001;
  v6 = 0xFFFFFFFF00000001 - v5;
  if (!v4)
  {
    goto LABEL_10;
  }

  v4 = __CFADD__(v3, v6);
  v3 += v6;
  if (!v4)
  {
LABEL_8:
    *result = v3;
    return result;
  }

LABEL_11:
  __break(1u);
  return result;
}

uint64_t *protocol witness for static AdditiveArithmetic.- infix(_:_:) in conformance Field64@<X0>(uint64_t *result@<X0>, unint64_t *a2@<X1>, unint64_t *a3@<X8>)
{
  v3 = *result;
  v4 = *a2;
  v5 = *result - *a2;
  if (*result >= *a2)
  {
    goto LABEL_4;
  }

  v6 = 0xFFFFFFFF00000001 - v4;
  if (v4 > 0xFFFFFFFF00000001)
  {
    __break(1u);
  }

  else
  {
    v7 = __CFADD__(v3, v6);
    v5 = v3 + v6;
    if (!v7)
    {
LABEL_4:
      *a3 = v5;
      return result;
    }
  }

  __break(1u);
  return result;
}

uint64_t *protocol witness for static AdditiveArithmetic.-= infix(_:_:) in conformance Field64(uint64_t *result, unint64_t *a2)
{
  v2 = *a2;
  v3 = *result;
  v4 = *result - *a2;
  if (*result >= *a2)
  {
    goto LABEL_4;
  }

  v5 = 0xFFFFFFFF00000001 - v2;
  if (v2 > 0xFFFFFFFF00000001)
  {
    __break(1u);
  }

  else
  {
    v6 = __CFADD__(v3, v5);
    v4 = v3 + v5;
    if (!v6)
    {
LABEL_4:
      *result = v4;
      return result;
    }
  }

  __break(1u);
  return result;
}

uint64_t protocol witness for VDAFEncodable.encode<A>(into:) in conformance Field64(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = lazy protocol witness table accessor for type Field64 and conformance Field64();

  return FieldElement.encode<A>(into:)(a1, a4, a2, v8, a3);
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance Field40()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  MEMORY[0x2743B31A0](v1);
  return Hasher._finalize()();
}

unint64_t one-time initialization function for negativeOne()
{
  if (one-time initialization token for p != -1)
  {
    goto LABEL_7;
  }

  while (1)
  {
    v1 = static MontgomeryFiniteField128.p - 1;
    if (static MontgomeryFiniteField128.p != 0)
    {
      break;
    }

    __break(1u);
LABEL_7:
    swift_once();
  }

  v2 = (static MontgomeryFiniteField128.p - 1uLL) >> 64;

  return _s4VDAF12FieldElementPAAEyx06FiniteB0_11IntegerTypeQZcfCAA8Field128V_Tt1B5(v1, v2, &static Field128.negativeOne);
}

__n128 static Field128.one.getter@<Q0>(void *a1@<X0>, __n128 *a2@<X1>, __n128 *a3@<X8>)
{
  if (*a1 != -1)
  {
    v4 = a2;
    v5 = a3;
    swift_once();
    a3 = v5;
    a2 = v4;
  }

  result = *a2;
  *a3 = *a2;
  return result;
}

__n128 Field128.value.getter@<Q0>(__n128 *a1@<X8>)
{
  result = *v1;
  *a1 = *v1;
  return result;
}

__n128 Field128.value.setter(__n128 *a1)
{
  result = *a1;
  *v1 = *a1;
  return result;
}

uint64_t Field128.hash(into:)()
{
  v1 = v0[1];
  MEMORY[0x2743B31A0](*v0);
  return MEMORY[0x2743B31A0](v1);
}

Swift::Int Field128.hashValue.getter()
{
  v1 = *v0;
  v2 = v0[1];
  Hasher.init(_seed:)();
  MEMORY[0x2743B31A0](v1);
  MEMORY[0x2743B31A0](v2);
  return Hasher._finalize()();
}

__n128 protocol witness for FieldElement.value.setter in conformance Field128(__n128 *a1)
{
  result = *a1;
  *v1 = *a1;
  return result;
}

__n128 protocol witness for static FieldElement.one.getter in conformance Field128@<Q0>(void *a1@<X2>, __n128 *a2@<X3>, __n128 *a3@<X8>)
{
  if (*a1 != -1)
  {
    v4 = a2;
    v5 = a3;
    swift_once();
    a3 = v5;
    a2 = v4;
  }

  result = *a2;
  *a3 = *a2;
  return result;
}

unint64_t protocol witness for static AdditiveArithmetic.+ infix(_:_:) in conformance Field128@<X0>(unint64_t *a1@<X0>, uint64_t *a2@<X1>, unint64_t *a3@<X8>)
{
  v4 = *a1;
  v5 = a1[1];
  v6 = *a2;
  v7 = a2[1];
  *a3 = *a1;
  a3[1] = v5;
  result = _ss17FixedWidthIntegerPsE15_truncatingInityxqd__SzRd__lFZ4VDAF8_UInt128V_SiTt1g5(0, &v15);
  if (v7 == *(&v15 + 1) && v6 == v15)
  {
    goto LABEL_16;
  }

  if (one-time initialization token for p != -1)
  {
    swift_once();
  }

  v14 = static MontgomeryFiniteField128.p;
  *&v13 = v6;
  *(&v13 + 1) = v7;
  result = _UInt128.subtractingReportingOverflow(_:)(&v15, &v13);
  if (result)
  {
    __break(1u);
    goto LABEL_18;
  }

  v11 = *(&v15 + 1);
  v10 = v15;
  v12 = v4 < v15;
  if (v5 != *(&v15 + 1))
  {
    v12 = v5 < *(&v15 + 1);
  }

  if (v12)
  {
    v14 = static MontgomeryFiniteField128.p;
    v13 = v15;
    result = _UInt128.subtractingReportingOverflow(_:)(&v15, &v13);
    if ((result & 1) == 0)
    {
      *&v14 = v4;
      *(&v14 + 1) = v5;
      v13 = v15;
      result = _UInt128.addingReportingOverflow(_:)(&v15, &v13);
      if ((result & 1) == 0)
      {
LABEL_15:
        v5 = *(&v15 + 1);
        v4 = v15;
LABEL_16:
        *a3 = v4;
        a3[1] = v5;
        return result;
      }

      __break(1u);
      goto LABEL_14;
    }

LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

LABEL_14:
  *&v14 = v4;
  *(&v14 + 1) = v5;
  *&v13 = v10;
  *(&v13 + 1) = v11;
  result = _UInt128.subtractingReportingOverflow(_:)(&v15, &v13);
  if ((result & 1) == 0)
  {
    goto LABEL_15;
  }

LABEL_19:
  __break(1u);
  return result;
}

unint64_t protocol witness for static AdditiveArithmetic.+= infix(_:_:) in conformance Field128(unint64_t *a1, uint64_t *a2)
{
  v3 = *a2;
  v4 = a2[1];
  v5 = *a1;
  v6 = a1[1];
  result = _ss17FixedWidthIntegerPsE15_truncatingInityxqd__SzRd__lFZ4VDAF8_UInt128V_SiTt1g5(0, &v14);
  if (v4 == *(&v14 + 1) && v3 == v14)
  {
    goto LABEL_16;
  }

  if (one-time initialization token for p != -1)
  {
    swift_once();
  }

  v13 = static MontgomeryFiniteField128.p;
  *&v12 = v3;
  *(&v12 + 1) = v4;
  result = _UInt128.subtractingReportingOverflow(_:)(&v14, &v12);
  if (result)
  {
    __break(1u);
    goto LABEL_18;
  }

  v10 = *(&v14 + 1);
  v9 = v14;
  v11 = v5 < v14;
  if (v6 != *(&v14 + 1))
  {
    v11 = v6 < *(&v14 + 1);
  }

  if (v11)
  {
    v13 = static MontgomeryFiniteField128.p;
    v12 = v14;
    result = _UInt128.subtractingReportingOverflow(_:)(&v14, &v12);
    if ((result & 1) == 0)
    {
      *&v13 = v5;
      *(&v13 + 1) = v6;
      v12 = v14;
      result = _UInt128.addingReportingOverflow(_:)(&v14, &v12);
      if ((result & 1) == 0)
      {
LABEL_15:
        v6 = *(&v14 + 1);
        v5 = v14;
LABEL_16:
        *a1 = v5;
        a1[1] = v6;
        return result;
      }

      __break(1u);
      goto LABEL_14;
    }

LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

LABEL_14:
  *&v13 = v5;
  *(&v13 + 1) = v6;
  *&v12 = v9;
  *(&v12 + 1) = v10;
  result = _UInt128.subtractingReportingOverflow(_:)(&v14, &v12);
  if ((result & 1) == 0)
  {
    goto LABEL_15;
  }

LABEL_19:
  __break(1u);
  return result;
}

unint64_t protocol witness for static AdditiveArithmetic.- infix(_:_:) in conformance Field128@<X0>(unint64_t *a1@<X0>, __int128 **a2@<X1>, unint64_t *a3@<X8>)
{
  v4 = *a1;
  v5 = a1[1];
  v6 = *a2;
  v7 = a2[1];
  *a3 = *a1;
  a3[1] = v5;
  v8 = v4 < v6;
  if (v5 != v7)
  {
    v8 = v5 < v7;
  }

  if (v8)
  {
    if (one-time initialization token for p != -1)
    {
      swift_once();
    }

    v11 = static MontgomeryFiniteField128.p;
    *&v10 = v6;
    *(&v10 + 1) = v7;
    result = _UInt128.subtractingReportingOverflow(_:)(&v12, &v10);
    if (result)
    {
      __break(1u);
      goto LABEL_12;
    }

    *&v11 = v4;
    *(&v11 + 1) = v5;
    v10 = v12;
    v6 = &v11;
    result = _UInt128.addingReportingOverflow(_:)(&v12, &v10);
    if ((result & 1) == 0)
    {
LABEL_10:
      *a3 = v12;
      return result;
    }

    __break(1u);
  }

  *&v11 = v4;
  *(&v11 + 1) = v5;
  *&v10 = v6;
  *(&v10 + 1) = v7;
  result = _UInt128.subtractingReportingOverflow(_:)(&v12, &v10);
  if ((result & 1) == 0)
  {
    goto LABEL_10;
  }

LABEL_12:
  __break(1u);
  return result;
}

unint64_t protocol witness for static AdditiveArithmetic.-= infix(_:_:) in conformance Field128(uint64_t *a1, __int128 **a2)
{
  v3 = *a2;
  v4 = a2[1];
  v5 = *a1;
  v6 = a1[1];
  v7 = *a1 < *a2;
  if (v6 != v4)
  {
    v7 = v6 < v4;
  }

  if (v7)
  {
    if (one-time initialization token for p != -1)
    {
      swift_once();
    }

    v10 = static MontgomeryFiniteField128.p;
    *&v9 = v3;
    *(&v9 + 1) = v4;
    result = _UInt128.subtractingReportingOverflow(_:)(&v11, &v9);
    if (result)
    {
      __break(1u);
      goto LABEL_12;
    }

    *&v10 = v5;
    *(&v10 + 1) = v6;
    v9 = v11;
    v3 = &v10;
    result = _UInt128.addingReportingOverflow(_:)(&v11, &v9);
    if ((result & 1) == 0)
    {
LABEL_10:
      *a1 = v11;
      return result;
    }

    __break(1u);
  }

  *&v10 = v5;
  *(&v10 + 1) = v6;
  *&v9 = v3;
  *(&v9 + 1) = v4;
  result = _UInt128.subtractingReportingOverflow(_:)(&v11, &v9);
  if ((result & 1) == 0)
  {
    goto LABEL_10;
  }

LABEL_12:
  __break(1u);
  return result;
}

uint64_t protocol witness for VDAFEncodable.encode<A>(into:) in conformance Field128(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = lazy protocol witness table accessor for type Field128 and conformance Field128();

  return FieldElement.encode<A>(into:)(a1, a4, a2, v8, a3);
}

uint64_t _ss17FixedWidthIntegerPsE15_truncatingInityxqd__SzRd__lFZ4VDAF8_UInt128V_AD7_Int128VTt1g5@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  *a3 = result;
  a3[1] = a2;
  return result;
}

uint64_t _ss17FixedWidthIntegerPsE15_truncatingInityxqd__SzRd__lFZ4VDAF8_UInt128V_s5UInt8VTt1g5@<X0>(uint64_t result@<X0>, void *a2@<X8>)
{
  *a2 = result;
  a2[1] = 0;
  return result;
}

uint64_t _ss17FixedWidthIntegerPsE15_truncatingInityxqd__SzRd__lFZ4VDAF8_UInt128V_s6UInt32VTt1g5@<X0>(uint64_t result@<X0>, void *a2@<X8>)
{
  *a2 = result;
  a2[1] = 0;
  return result;
}

uint64_t static FixedWidthInteger._truncatingInit<A>(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  AssociatedConformanceWitness = a1;
  v78 = a6;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v11 = *(*(AssociatedTypeWitness - 8) + 64);
  MEMORY[0x28223BE20](AssociatedTypeWitness, v12);
  v69 = &v62 - v13;
  v73 = a5;
  v68 = *(*(*(swift_getAssociatedConformanceWitness() + 8) + 8) + 8);
  v72 = AssociatedTypeWitness;
  v81 = swift_getAssociatedTypeWitness();
  v70 = *(v81 - 8);
  v14 = *(v70 + 64);
  v16 = MEMORY[0x28223BE20](v81, v15);
  v80 = &v62 - v17;
  v71 = *(a2 - 8);
  v18 = *(v71 + 64);
  v20 = MEMORY[0x28223BE20](v16, v19);
  v77 = &v62 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = MEMORY[0x28223BE20](v20, v22);
  v76 = &v62 - v24;
  v26 = MEMORY[0x28223BE20](v23, v25);
  v82 = &v62 - v27;
  v29 = MEMORY[0x28223BE20](v26, v28);
  v31 = &v62 - v30;
  MEMORY[0x28223BE20](v29, v32);
  v34 = &v62 - v33;
  v79 = a4;
  v67 = *(a4 + 8);
  v75 = *(v67 + 24);
  v64 = *(v75 + 16);
  v65 = swift_getAssociatedTypeWitness();
  v35 = *(*(v65 - 8) + 64);
  v37 = MEMORY[0x28223BE20](v65, v36);
  v66 = &v62 - v38;
  v39 = *(a3 - 8);
  v40 = *(v39 + 64);
  MEMORY[0x28223BE20](v37, v41);
  v43 = &v62 - ((v42 + 15) & 0xFFFFFFFFFFFFFFF0);
  v44 = *(*(a5 + 24) + 16);
  v45 = swift_getAssociatedTypeWitness();
  v46 = *(*(v45 - 8) + 64);
  MEMORY[0x28223BE20](v45, v47);
  swift_getAssociatedConformanceWitness();
  dispatch thunk of _ExpressibleByBuiltinIntegerLiteral.init(_builtinIntegerLiteral:)();
  dispatch thunk of ExpressibleByIntegerLiteral.init(integerLiteral:)();
  v48 = *(*(v73 + 32) + 8);
  v49 = dispatch thunk of static Comparable.< infix(_:_:)();
  (*(v39 + 8))(v43, a3);
  swift_getAssociatedConformanceWitness();
  dispatch thunk of _ExpressibleByBuiltinIntegerLiteral.init(_builtinIntegerLiteral:)();
  v63 = v49;
  dispatch thunk of ExpressibleByIntegerLiteral.init(integerLiteral:)();
  if (v49)
  {
    v50 = v67;
    dispatch thunk of static BinaryInteger.~ prefix(_:)();
    (*(v71 + 8))(v34, a2);
  }

  else
  {
    v50 = v67;
  }

  dispatch thunk of _ExpressibleByBuiltinIntegerLiteral.init(_builtinIntegerLiteral:)();
  dispatch thunk of ExpressibleByIntegerLiteral.init(integerLiteral:)();
  dispatch thunk of static FixedWidthInteger.bitWidth.getter();
  dispatch thunk of FixedWidthInteger.init(_truncatingBits:)();
  dispatch thunk of BinaryInteger.words.getter();
  dispatch thunk of Sequence.makeIterator()();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  dispatch thunk of IteratorProtocol.next()();
  if ((v83 & 1) == 0)
  {
    v73 = *(*(v50 + 32) + 8);
    v72 = v63 << 63 >> 63;
    v51 = (v71 + 8);
    v52 = v76;
    do
    {
      if ((dispatch thunk of static Comparable.< infix(_:_:)() & 1) == 0)
      {
        break;
      }

      v53 = v34;
      v54 = v50;
      v55 = v31;
      v56 = v77;
      dispatch thunk of FixedWidthInteger.init(_truncatingBits:)();
      dispatch thunk of static FixedWidthInteger.&<< infix(_:_:)();
      v57 = *v51;
      v58 = v56;
      v31 = v55;
      v50 = v54;
      v34 = v53;
      (*v51)(v58, a2);
      dispatch thunk of static BinaryInteger.^= infix(_:_:)();
      v57(v52, a2);
      dispatch thunk of FixedWidthInteger.init(_truncatingBits:)();
      v59 = *(v75 + 8);
      dispatch thunk of static AdditiveArithmetic.+= infix(_:_:)();
      v57(v53, a2);
      dispatch thunk of IteratorProtocol.next()();
    }

    while ((v83 & 1) == 0);
  }

  (*(v70 + 8))(v80, v81);
  v60 = *(v71 + 8);
  v60(v82, a2);
  return (v60)(v31, a2);
}

Swift::Void __swiftcall Array._checkSubscript_mutating(_:)(Swift::Int a1)
{
  v2 = v1;
  isClassOrObjCExistentialType = _swift_isClassOrObjCExistentialType();
  if (a1 < 0)
  {
    __break(1u);
LABEL_7:
    __break(1u);
    return;
  }

  v5 = v2 & 0xFFFFFFFFFFFFFF8;
  if ((isClassOrObjCExistentialType & 1) == 0)
  {
    v5 = v2;
  }

  if (*(v5 + 16) <= a1)
  {
    goto LABEL_7;
  }
}

uint64_t partial apply for closure #1 in static FieldElement.randomVectorBatched<A>(count:using:)()
{
  v1 = v0[2];
  v2 = v0[3];
  v3 = v0[4];
  v4 = v0[5];
  v5 = v0[6];
  return closure #1 in static FieldElement.randomVectorBatched<A>(count:using:)();
}

unint64_t instantiation function for generic protocol witness table for FieldElementError(uint64_t a1)
{
  *(a1 + 8) = lazy protocol witness table accessor for type FieldElementError and conformance FieldElementError();
  result = lazy protocol witness table accessor for type FieldElementError and conformance FieldElementError();
  *(a1 + 16) = result;
  return result;
}

unint64_t lazy protocol witness table accessor for type MontgomeryFiniteField32 and conformance MontgomeryFiniteField32()
{
  result = lazy protocol witness table cache variable for type MontgomeryFiniteField32 and conformance MontgomeryFiniteField32;
  if (!lazy protocol witness table cache variable for type MontgomeryFiniteField32 and conformance MontgomeryFiniteField32)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MontgomeryFiniteField32 and conformance MontgomeryFiniteField32);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type Field32 and conformance Field32()
{
  result = lazy protocol witness table cache variable for type Field32 and conformance Field32;
  if (!lazy protocol witness table cache variable for type Field32 and conformance Field32)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Field32 and conformance Field32);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Field32 and conformance Field32;
  if (!lazy protocol witness table cache variable for type Field32 and conformance Field32)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Field32 and conformance Field32);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Field32 and conformance Field32;
  if (!lazy protocol witness table cache variable for type Field32 and conformance Field32)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Field32 and conformance Field32);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Field32 and conformance Field32;
  if (!lazy protocol witness table cache variable for type Field32 and conformance Field32)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Field32 and conformance Field32);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Field32 and conformance Field32;
  if (!lazy protocol witness table cache variable for type Field32 and conformance Field32)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Field32 and conformance Field32);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type MontgomeryFiniteField40 and conformance MontgomeryFiniteField40()
{
  result = lazy protocol witness table cache variable for type MontgomeryFiniteField40 and conformance MontgomeryFiniteField40;
  if (!lazy protocol witness table cache variable for type MontgomeryFiniteField40 and conformance MontgomeryFiniteField40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MontgomeryFiniteField40 and conformance MontgomeryFiniteField40);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type Field40 and conformance Field40()
{
  result = lazy protocol witness table cache variable for type Field40 and conformance Field40;
  if (!lazy protocol witness table cache variable for type Field40 and conformance Field40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Field40 and conformance Field40);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Field40 and conformance Field40;
  if (!lazy protocol witness table cache variable for type Field40 and conformance Field40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Field40 and conformance Field40);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Field40 and conformance Field40;
  if (!lazy protocol witness table cache variable for type Field40 and conformance Field40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Field40 and conformance Field40);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Field40 and conformance Field40;
  if (!lazy protocol witness table cache variable for type Field40 and conformance Field40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Field40 and conformance Field40);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Field40 and conformance Field40;
  if (!lazy protocol witness table cache variable for type Field40 and conformance Field40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Field40 and conformance Field40);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type MontgomeryFiniteField64 and conformance MontgomeryFiniteField64()
{
  result = lazy protocol witness table cache variable for type MontgomeryFiniteField64 and conformance MontgomeryFiniteField64;
  if (!lazy protocol witness table cache variable for type MontgomeryFiniteField64 and conformance MontgomeryFiniteField64)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MontgomeryFiniteField64 and conformance MontgomeryFiniteField64);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type Field64 and conformance Field64()
{
  result = lazy protocol witness table cache variable for type Field64 and conformance Field64;
  if (!lazy protocol witness table cache variable for type Field64 and conformance Field64)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Field64 and conformance Field64);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Field64 and conformance Field64;
  if (!lazy protocol witness table cache variable for type Field64 and conformance Field64)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Field64 and conformance Field64);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Field64 and conformance Field64;
  if (!lazy protocol witness table cache variable for type Field64 and conformance Field64)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Field64 and conformance Field64);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Field64 and conformance Field64;
  if (!lazy protocol witness table cache variable for type Field64 and conformance Field64)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Field64 and conformance Field64);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Field64 and conformance Field64;
  if (!lazy protocol witness table cache variable for type Field64 and conformance Field64)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Field64 and conformance Field64);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type MontgomeryFiniteField128 and conformance MontgomeryFiniteField128()
{
  result = lazy protocol witness table cache variable for type MontgomeryFiniteField128 and conformance MontgomeryFiniteField128;
  if (!lazy protocol witness table cache variable for type MontgomeryFiniteField128 and conformance MontgomeryFiniteField128)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MontgomeryFiniteField128 and conformance MontgomeryFiniteField128);
  }

  return result;
}

uint64_t instantiation function for generic protocol witness table for Field32(void *a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void), uint64_t (*a5)(void), uint64_t (*a6)(void))
{
  a1[1] = a4();
  a1[2] = a5();
  result = a6();
  a1[3] = result;
  return result;
}

unint64_t lazy protocol witness table accessor for type Field128 and conformance Field128()
{
  result = lazy protocol witness table cache variable for type Field128 and conformance Field128;
  if (!lazy protocol witness table cache variable for type Field128 and conformance Field128)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Field128 and conformance Field128);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Field128 and conformance Field128;
  if (!lazy protocol witness table cache variable for type Field128 and conformance Field128)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Field128 and conformance Field128);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Field128 and conformance Field128;
  if (!lazy protocol witness table cache variable for type Field128 and conformance Field128)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Field128 and conformance Field128);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Field128 and conformance Field128;
  if (!lazy protocol witness table cache variable for type Field128 and conformance Field128)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Field128 and conformance Field128);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Field128 and conformance Field128;
  if (!lazy protocol witness table cache variable for type Field128 and conformance Field128)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Field128 and conformance Field128);
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_4VDAF17FieldElementErrorO(uint64_t a1)
{
  if ((*(a1 + 16) & 7u) <= 4)
  {
    return *(a1 + 16) & 7;
  }

  else
  {
    return (*a1 + 5);
  }
}

uint64_t getEnumTagSinglePayload for FieldElementError(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFB && *(a1 + 17))
  {
    return (*a1 + 251);
  }

  v3 = *(a1 + 16);
  if (v3 <= 5)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t storeEnumTagSinglePayload for FieldElementError(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFA)
  {
    *(result + 16) = 0;
    *result = a2 - 251;
    *(result + 8) = 0;
    if (a3 >= 0xFB)
    {
      *(result + 17) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFB)
    {
      *(result + 17) = 0;
    }

    if (a2)
    {
      *(result + 16) = -a2;
    }
  }

  return result;
}

uint64_t destructiveInjectEnumTag for FieldElementError(uint64_t result, unsigned int a2)
{
  if (a2 >= 5)
  {
    *result = a2 - 5;
    *(result + 8) = 0;
    LOBYTE(a2) = 5;
  }

  *(result + 16) = a2;
  return result;
}

uint64_t BitMasks.__allocating_init(keptBlockCount:)(size_t a1)
{
  result = swift_allocObject();
  if ((a1 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else
  {
    v3 = result;
    if (a1)
    {
      v4 = static Array._allocateBufferUninitialized(minimumCapacity:)();
      *(v4 + 16) = a1;
      bzero((v4 + 32), a1);
      *(v3 + 16) = v4;
      v5 = static Array._allocateBufferUninitialized(minimumCapacity:)();
      *(v5 + 16) = a1;
      bzero((v5 + 32), a1);
    }

    else
    {
      v5 = MEMORY[0x277D84F90];
      *(result + 16) = MEMORY[0x277D84F90];
    }

    *(v3 + 24) = v5;
    return v3;
  }

  return result;
}

void BitMasks.disableSeedCorrection(between:forPath:)(void *a1, unint64_t at)
{
  if ((at & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_8;
  }

  v2 = a1[4];
  if (*(v2 + 16) <= at)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  v3 = a1[10];
  if (*(v3 + 16) <= at)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  v4 = a1[5];
  if (*(v4 + 16) <= at)
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  v5 = a1[11];
  if (*(v5 + 16) > at)
  {
    BitMasks.set(at:left:right:)(at, *(v2 + at + 32) != *(v3 + at + 32), (*(v4 + at + 32) ^ *(v5 + at + 32)) & 1);
    return;
  }

LABEL_11:
  __break(1u);
}

uint64_t *BitMasks.enableSeedCorrection(between:forPath:withOnPathBit:)(uint64_t *result, unint64_t a2, char a3)
{
  if ((a2 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_10;
  }

  v4 = result[4];
  if (*(v4 + 16) <= a2)
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  v5 = result[10];
  if (*(v5 + 16) <= a2)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  v6 = result[5];
  if (*(v6 + 16) <= a2)
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  v7 = result[11];
  if (*(v7 + 16) <= a2)
  {
LABEL_13:
    __break(1u);
    return result;
  }

  v16 = result[1];
  v17 = *result;
  v8 = result[3];
  v14 = result[2];
  v10 = result[6];
  v9 = result[7];
  v11 = result[8];
  v12 = result[9];
  v15 = *(v4 + a2 + 32) ^ *(v5 + a2 + 32) ^ a3;
  v13 = *(v6 + a2 + 32) ^ *(v7 + a2 + 32) ^ a3;
  outlined copy of Data._Representation(*result, v16);

  outlined copy of Data._Representation(v10, v9);

  outlined copy of Data._Representation(v14, v8);

  outlined copy of Data._Representation(v11, v12);

  BitMasks.set(at:left:right:)(a2, (v15 & 1) == 0, v13 & 1);
  outlined consume of Data._Representation(v11, v12);

  outlined consume of Data._Representation(v14, v8);

  outlined consume of Data._Representation(v10, v9);

  outlined consume of Data._Representation(v17, v16);
}

uint64_t specialized Collection<>.encodedLength.getter(uint64_t result)
{
  v1 = result;
  v2 = result & 0xFFFFFFFFFFFFFF8;
  v3 = result >> 62;
  if (result >> 62)
  {
    if (result >= 0)
    {
      result &= 0xFFFFFFFFFFFFFF8uLL;
    }

    result = MEMORY[0x2743B2FD0](result);
    if (!result)
    {
      v11 = 0;
      goto LABEL_9;
    }
  }

  else if (!*((result & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v11 = 0;
    goto LABEL_14;
  }

  if ((v1 & 0xC000000000000001) != 0)
  {
    goto LABEL_22;
  }

  if (*((v1 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v4 = *(v1 + 32);

    {
      v6 = *(*(i + 16) + 16);
      v7 = *(*(i + 24) + 16);

      v8 = v6 + v7;
      if (__OFADD__(v6, v7))
      {
        break;
      }

      v9 = __OFADD__(v8, 7);
      v10 = v8 + 7;
      if (v9)
      {
        goto LABEL_25;
      }

      v11 = v10 / 8;
      v2 = v1 & 0xFFFFFFFFFFFFFF8;
      if (v3)
      {
LABEL_9:
        if (v1 < 0)
        {
          v12 = v1;
        }

        else
        {
          v12 = v2;
        }

        v13 = MEMORY[0x2743B2FD0](v12);
      }

      else
      {
LABEL_14:
        v13 = *(v2 + 16);
      }

      if ((v11 * v13) >> 64 == (v11 * v13) >> 63)
      {
        return v11 * v13;
      }

      __break(1u);
LABEL_22:
      ;
    }

    __break(1u);
  }

  __break(1u);
LABEL_25:
  __break(1u);
  return result;
}

{
  v1 = *(result + 16);
  if (!v1)
  {
    goto LABEL_6;
  }

  v2 = *(result + 32);
  v3 = *(v2 + 16);
  if (!v3)
  {
    v5 = 0;
    goto LABEL_8;
  }

  v4 = *(*(v2 + 32) + 16);
  v5 = v4 + 2;
  if (__OFADD__(v4, 2))
  {
    __break(1u);
LABEL_6:
    v6 = 0;
    goto LABEL_12;
  }

LABEL_8:
  v6 = v5 * v3;
  if ((v5 * v3) >> 64 != (v5 * v3) >> 63)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  v7 = *(*(result + 40) + 16);
  if (!v7)
  {
    goto LABEL_12;
  }

  if (v7 >> 61)
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v8 = __OFADD__(v6, 4 * v7);
  v6 += 4 * v7;
  if (!v8)
  {
LABEL_12:
    result = v6 * v1;
    if ((v6 * v1) >> 64 == (v6 * v1) >> 63)
    {
      return result;
    }

    __break(1u);
    goto LABEL_14;
  }

LABEL_16:
  __break(1u);
  return result;
}

uint64_t BitMasks.__allocating_init(left:right:)(uint64_t a1, uint64_t a2)
{
  result = swift_allocObject();
  *(result + 16) = a1;
  *(result + 24) = a2;
  return result;
}

uint64_t BitMasks.init(left:right:)(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return v2;
}

size_t BitMasks.init(keptBlockCount:)(size_t result)
{
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else
  {
    if (result)
    {
      v2 = result;
      v3 = static Array._allocateBufferUninitialized(minimumCapacity:)();
      *(v3 + 16) = v2;
      bzero((v3 + 32), v2);
      *(v1 + 16) = v3;
      v4 = static Array._allocateBufferUninitialized(minimumCapacity:)();
      *(v4 + 16) = v2;
      bzero((v4 + 32), v2);
    }

    else
    {
      v4 = MEMORY[0x277D84F90];
      *(v1 + 16) = MEMORY[0x277D84F90];
    }

    *(v1 + 24) = v4;
    return v1;
  }

  return result;
}

uint64_t BitMasks.get(side:)(char a1)
{
  v2 = 24;
  if ((a1 & 1) == 0)
  {
    v2 = 16;
  }

  v3 = *(v1 + v2);
}

uint64_t BitMasks.deinit()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 24);

  return v0;
}

uint64_t BitMasks.__deallocating_deinit()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 24);

  return swift_deallocClassInstance();
}

uint64_t BitMaskDecodableParameter.encodedLength.getter(uint64_t result)
{
  if (result + 0x4000000000000000 < 0)
  {
    __break(1u);
    goto LABEL_7;
  }

  v1 = 2 * result + 7;
  if (__OFADD__(2 * result, 7))
  {
LABEL_7:
    __break(1u);
    return result;
  }

  if (v1 < 0)
  {
    v1 = 2 * result + 14;
  }

  return v1 >> 3;
}

uint64_t BitMasks.__allocating_init<A>(from:parameter:)(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5)
{
  v7 = specialized BitMasks.__allocating_init<A>(from:parameter:)(a1, a2, a3 & 1, a4, a5);
  (*(*(a4 - 8) + 8))(a1, a4);
  return v7;
}

uint64_t closure #1 in BitMasks.init<A>(from:parameter:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X3>, _BYTE *a3@<X8>)
{
  v25 = a3;
  v4 = *(*(a2 + 8) + 8);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v5 = *(AssociatedTypeWitness - 8);
  v6 = *(v5 + 64);
  v8 = MEMORY[0x28223BE20](AssociatedTypeWitness, v7);
  v10 = &AssociatedTypeWitness - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8, v11);
  v13 = &AssociatedTypeWitness - v12;
  v14 = *a1;
  dispatch thunk of Collection.startIndex.getter();
  if (v14 >= 0)
  {
    v15 = v14;
  }

  else
  {
    v15 = v14 + 7;
  }

  dispatch thunk of RandomAccessCollection.index(_:offsetBy:)();
  v16 = *(v5 + 8);
  v17 = v10;
  v18 = AssociatedTypeWitness;
  v16(v17, AssociatedTypeWitness);
  v19 = dispatch thunk of Collection.subscript.read();
  v21 = *v20;
  v19(v26, 0);
  result = (v16)(v13, v18);
  if ((v14 - (v15 & 0xFFFFFFFFFFFFFFF8)) < 0)
  {
    v23 = v21 << ((v15 & 0xF8) - v14);
  }

  else
  {
    v23 = v21 >> (v14 - (v15 & 0xF8));
  }

  *v25 = v23 & 1;
  return result;
}

uint64_t closure #2 in BitMasks.init<A>(from:parameter:)@<X0>(void *a1@<X0>, uint64_t a2@<X1>, unsigned int a3@<W2>, uint64_t a4@<X4>, _BYTE *a5@<X8>)
{
  v36 = a2;
  v34 = a4;
  v8 = *(*(a4 + 8) + 8);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v10 = *(AssociatedTypeWitness - 8);
  v11 = *(v10 + 64);
  v13 = MEMORY[0x28223BE20](AssociatedTypeWitness, v12);
  v15 = &v31 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = MEMORY[0x28223BE20](v13, v16);
  v20 = &v31 - v19;
  v21 = *a1;
  v22 = __OFADD__(*a1, v36);
  v23 = *a1 + v36;
  if (v22)
  {
    __break(1u);
LABEL_9:
    v30 = a3 << -v21;
    goto LABEL_7;
  }

  v32 = v18;
  v33 = a5;
  dispatch thunk of Collection.startIndex.getter();
  if (v23 >= 0)
  {
    v24 = v23;
  }

  else
  {
    v24 = v23 + 7;
  }

  dispatch thunk of RandomAccessCollection.index(_:offsetBy:)();
  v25 = *(v10 + 8);
  v26 = v15;
  v27 = v32;
  v25(v26, v32);
  v28 = dispatch thunk of Collection.subscript.read();
  a3 = *v29;
  v28(v35, 0);
  result = (v25)(v20, v27);
  LOBYTE(v21) = v23 - (v24 & 0xF8);
  if ((v23 - (v24 & 0xFFFFFFFFFFFFFFF8)) < 0)
  {
    goto LABEL_9;
  }

  v30 = a3 >> v21;
LABEL_7:
  *v33 = v30 & 1;
  return result;
}

uint64_t protocol witness for VDAFDecodable.init<A>(from:parameter:) in conformance BitMasks@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t *a5@<X8>)
{
  v9 = specialized BitMasks.__allocating_init<A>(from:parameter:)(a1, *a2, *(a2 + 8), a3, a4);
  result = (*(*(a3 - 8) + 8))(a1, a3);
  if (!v5)
  {
    *a5 = v9;
  }

  return result;
}

uint64_t BitMasks.encodedLength.getter()
{
  v1 = *(*(v0 + 16) + 16);
  v2 = *(*(v0 + 24) + 16);
  v3 = __OFADD__(v1, v2);
  v4 = v1 + v2;
  if (v3)
  {
    __break(1u);
  }

  else
  {
    v3 = __OFADD__(v4, 7);
    v5 = v4 + 7;
    if (!v3)
    {
      return v5 / 8;
    }
  }

  __break(1u);
  return result;
}

uint64_t BitMasks.encode<A>(into:)()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v3 = *(v1 + 16);
  if (v3 != *(v2 + 16))
  {
LABEL_35:
    __break(1u);
    goto LABEL_36;
  }

  v4 = 2 * v3;
  if (__OFADD__(v3, v3))
  {
LABEL_36:
    __break(1u);
    goto LABEL_37;
  }

  v5 = __OFADD__(v4, 7);
  v6 = v4 + 7;
  if (v5)
  {
LABEL_37:
    __break(1u);
LABEL_38:
    __break(1u);
    return result;
  }

  v7 = v6 + 7;
  if (v6 >= 0)
  {
    v7 = v6;
  }

  if (v6 < -7)
  {
    goto LABEL_38;
  }

  if (v6 < 8)
  {
    v9 = MEMORY[0x277D84F90];
  }

  else
  {
    v8 = v7 >> 3;
    v9 = static Array._allocateBufferUninitialized(minimumCapacity:)();
    *(v9 + 16) = v8;
    bzero((v9 + 32), v8);
    v1 = *(v0 + 16);
    v2 = *(v0 + 24);
  }

  v10 = *(v1 + 16);

  if (v10)
  {
    v12 = 0;
    v13 = v9 + 32;
    do
    {
      v14 = *(v2 + 16);
      if (v12 == v14)
      {
        break;
      }

      if (v12 >= v14)
      {
        __break(1u);
LABEL_32:
        __break(1u);
LABEL_33:
        __break(1u);
LABEL_34:
        __break(1u);
        goto LABEL_35;
      }

      v15 = *(v2 + v12 + 32);
      if (*(v1 + 32 + v12))
      {
        if (v12 >> 3 >= *(v9 + 16))
        {
          goto LABEL_32;
        }

        *(v13 + (v12 >> 3)) |= 1 << (v12 & 7);
      }

      if (v15)
      {
        v16 = v12 + v3;
        if (__OFADD__(v12, v3))
        {
          goto LABEL_33;
        }

        if (v16 >= 0)
        {
          v17 = v12 + v3;
        }

        else
        {
          v17 = v16 + 7;
        }

        v18 = v16 - (v17 & 0xFFFFFFFFFFFFFFF8);
        if (v18 >= 0)
        {
          v19 = 1 << v18;
        }

        else
        {
          v19 = 0;
        }

        if (v16 < -7)
        {
          goto LABEL_34;
        }

        if (v17 >> 3 >= *(v9 + 16))
        {
          __break(1u);
          break;
        }

        *(v13 + (v17 >> 3)) |= v19;
      }

      ++v12;
    }

    while (v10 != v12);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSays5UInt8VGMd, &_sSays5UInt8VGMR);
  lazy protocol witness table accessor for type [UInt8] and conformance <A> [A](&lazy protocol witness table cache variable for type [UInt8] and conformance [A], &_sSays5UInt8VGMd, &_sSays5UInt8VGMR);
  return dispatch thunk of RangeReplaceableCollection.append<A>(contentsOf:)();
}

void *BitCorrections.get(side:)(char a1, uint64_t a2)
{
  if (a2 >> 62)
  {
    if (a2 < 0)
    {
      v17 = a2;
    }

    else
    {
      v17 = a2 & 0xFFFFFFFFFFFFFF8;
    }

    v4 = MEMORY[0x2743B2FD0](v17);
  }

  else
  {
    v4 = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v5 = MEMORY[0x277D84F90];
  if (!v4)
  {
    return v5;
  }

  v18 = MEMORY[0x277D84F90];
  result = specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v4 & ~(v4 >> 63), 0);
  if ((v4 & 0x8000000000000000) == 0)
  {
    v5 = v18;
    if ((a2 & 0xC000000000000001) != 0)
    {
      v7 = 0;
      if (a1)
      {
        v8 = 24;
      }

      else
      {
        v8 = 16;
      }

      do
      {
        v9 = *(MEMORY[0x2743B2D10](v7, a2) + v8);

        swift_unknownObjectRelease();
        v11 = *(v18 + 16);
        v10 = *(v18 + 24);
        if (v11 >= v10 >> 1)
        {
          specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v10 > 1), v11 + 1, 1);
        }

        ++v7;
        *(v18 + 16) = v11 + 1;
        *(v18 + 8 * v11 + 32) = v9;
      }

      while (v4 != v7);
    }

    else
    {
      v12 = (a2 + 32);
      if (a1)
      {
        v13 = 24;
      }

      else
      {
        v13 = 16;
      }

      do
      {
        v14 = *(*v12 + v13);

        v16 = *(v18 + 16);
        v15 = *(v18 + 24);
        if (v16 >= v15 >> 1)
        {
          specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v15 > 1), v16 + 1, 1);
        }

        *(v18 + 16) = v16 + 1;
        *(v18 + 8 * v16 + 32) = v14;
        ++v12;
        --v4;
      }

      while (v4);
    }

    return v5;
  }

  __break(1u);
  return result;
}

uint64_t BitCorrectionsDecodableParameter.encodedLength.getter(uint64_t result)
{
  if (result + 0x4000000000000000 < 0)
  {
    __break(1u);
    goto LABEL_8;
  }

  v1 = 2 * result + 7;
  if (__OFADD__(2 * result, 7))
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  if (v1 < 0)
  {
    v1 = 2 * result + 14;
  }

  v2 = v1 >> 3;
  v3 = result * (v1 >> 3);
  if ((result * v2) >> 64 == v3 >> 63)
  {
    return v3;
  }

LABEL_9:
  __break(1u);
  return result;
}

uint64_t BitCorrections.init<A>(from:parameter:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = a2;
  v7 = *(a4 - 8);
  v8 = *(v7 + 64);
  result = MEMORY[0x28223BE20](a1, a2);
  v12 = &v19[-1] - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (v13)
  {
    lazy protocol witness table accessor for type VDAFCodableError and conformance VDAFCodableError();
    swift_allocError();
    *v14 = 0;
    v14[1] = 0;
LABEL_8:
    swift_willThrow();
    (*(v7 + 8))(a1, a4);
    return v5;
  }

  if (v5 < 1)
  {
    lazy protocol witness table accessor for type PreambleError and conformance PreambleError();
    swift_allocError();
    *(v17 + 8) = 0;
    *(v17 + 16) = 0;
    *v17 = v5;
    *(v17 + 24) = 2;
    goto LABEL_8;
  }

  if (v5 + 0x4000000000000000 < 0)
  {
    __break(1u);
  }

  else if (!__OFADD__(2 * v5, 7))
  {
    v15 = v10;
    (*(v7 + 16))(v12, a1, a4);
    v19[0] = v5;
    v19[1] = 0;
    v19[2] = v5;
    v19[3] = (2 * v5 + 7) >> 3;
    v20 = 0;
    v16 = type metadata accessor for BitMasks();
    v5 = Array<A>.init<A>(from:parameter:)(v12, v19, v16, a4, &protocol witness table for BitMasks, v15);
    (*(v7 + 8))(a1, a4);
    return v5;
  }

  __break(1u);
  return result;
}

uint64_t protocol witness for VDAFDecodable.init<A>(from:parameter:) in conformance BitCorrections@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  result = BitCorrections.init<A>(from:parameter:)(a1, *a2, *(a2 + 8), a3);
  if (!v4)
  {
    *a4 = result;
  }

  return result;
}

uint64_t BitCorrections.encode<A>(into:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a2 >> 62)
  {
    if (a2 < 0)
    {
      v10 = a2;
    }

    else
    {
      v10 = a2 & 0xFFFFFFFFFFFFFF8;
    }

    result = MEMORY[0x2743B2FD0](v10);
    if (result >= 1)
    {
      goto LABEL_3;
    }
  }

  else
  {
    result = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (result >= 1)
    {
LABEL_3:
      v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay4VDAF8BitMasksCGMd, &_sSay4VDAF8BitMasksCGMR);
      v9 = lazy protocol witness table accessor for type [UInt8] and conformance <A> [A](&lazy protocol witness table cache variable for type [BitMasks] and conformance [A], &_sSay4VDAF8BitMasksCGMd, &_sSay4VDAF8BitMasksCGMR);
      return Collection<>.encode<A>(into:)(a1, v8, a3, v9, a4, &protocol witness table for BitMasks);
    }
  }

  __break(1u);
  return result;
}

uint64_t specialized static BitMasks.== infix(_:_:)(uint64_t result, uint64_t a2)
{
  v2 = *(result + 16);
  v3 = *(a2 + 16);
  v4 = *(v2 + 16);
  if (v4 != *(v3 + 16))
  {
    return 0;
  }

  if (v4)
  {
    v5 = v2 == v3;
  }

  else
  {
    v5 = 1;
  }

  if (v5)
  {
    return _sSasSQRzlE2eeoiySbSayxG_ABtFZSb_Tt1g5(*(result + 24), *(a2 + 24));
  }

  v6 = (v2 + 32);
  v7 = (v3 + 32);
  while (v4)
  {
    if (*v6 != *v7)
    {
      return 0;
    }

    ++v6;
    ++v7;
    if (!--v4)
    {
      return _sSasSQRzlE2eeoiySbSayxG_ABtFZSb_Tt1g5(*(result + 24), *(a2 + 24));
    }
  }

  __break(1u);
  return result;
}