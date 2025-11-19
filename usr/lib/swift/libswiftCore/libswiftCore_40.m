uint64_t Optional.map<A>(_:)@<X0>(void (*a1)(char *)@<X0>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X8>)
{
  v19 = a1;
  v7 = *(a2 + 16);
  v8 = *(v7 - 8);
  v9 = MEMORY[0x1EEE9AC00](a1);
  v11 = &v18 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v13 = &v18 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v14 + 16))(v13, v15);
  v16 = 1;
  if ((*(v8 + 48))(v13, 1, v7) != 1)
  {
    (*(v8 + 32))(v11, v13, v7);
    v19(v11);
    result = (*(v8 + 8))(v11, v7);
    if (v4)
    {
      return result;
    }

    v16 = 0;
  }

  return (*(*(a3 - 8) + 56))(a4, v16, 1, a3);
}

uint64_t Optional.flatMap<A>(_:)@<X0>(void (*a1)(char *)@<X0>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X8>)
{
  v7 = *(a2 + 16);
  v8 = *(v7 - 8);
  v9 = MEMORY[0x1EEE9AC00](a1);
  v11 = v17 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v13 = v17 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v14 + 16))(v13, v15);
  if ((*(v8 + 48))(v13, 1, v7) == 1)
  {
    return (*(*(a3 - 8) + 56))(a4, 1, 1, a3);
  }

  (*(v8 + 32))(v11, v13, v7);
  a1(v11);
  return (*(v8 + 8))(v11, v7);
}

uint64_t Optional.debugDescription.getter(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = *(v1 - 8);
  v3 = MEMORY[0x1EEE9AC00](a1);
  v5 = &v44[-2] - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v3);
  v7 = &v44[-2] - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v8 + 16))(v7);
  if ((*(v2 + 48))(v7, 1, v1) == 1)
  {
    return 7104878;
  }

  v10 = *(v2 + 32);
  v10(v5, v7, v1);
  v11 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("Optional(", 9uLL, 1);
  countAndFlagsBits = v11._countAndFlagsBits;
  object = v11._object;
  v12 = canonical specialized generic type metadata accessor for _ContiguousArrayStorage<Any>();
  inited = swift_initStackObject(v12, v44);
  *(inited + 1) = xmmword_18071DB30;
  inited[7] = v1;
  boxed_opaque_existential_0Tm = __swift_allocate_boxed_opaque_existential_0Tm(inited + 4);
  v10(boxed_opaque_existential_0Tm, v5, v1);
  specialized _debugPrint<A>(_:separator:terminator:to:)(inited, 32, 0xE100000000000000, 0, 0xE000000000000000, &countAndFlagsBits);
  0xE000000000000000;
  0xE100000000000000;
  swift_setDeallocating(inited);
  __swift_destroy_boxed_opaque_existential_1Tm(inited + 4);
  v16 = countAndFlagsBits;
  v15 = object;
  v17 = HIBYTE(object) & 0xF;
  v18 = countAndFlagsBits & 0xFFFFFFFFFFFFLL;
  if ((object & 0x2000000000000000) != 0)
  {
    v19 = HIBYTE(object) & 0xF;
  }

  else
  {
    v19 = countAndFlagsBits & 0xFFFFFFFFFFFFLL;
  }

  if (!v19 && (countAndFlagsBits & ~object & 0x2000000000000000) == 0)
  {
    object;
    return 41;
  }

  if ((object & 0x2000000000000000) != 0 && v17 != 15)
  {
    if (v17 < 8)
    {
      v16 = ((-255 << (8 * (HIBYTE(object) & 7u))) - 1) & countAndFlagsBits | (41 << (8 * (HIBYTE(object) & 7u)));
    }

    object;
    0xE100000000000000;
    return v16;
  }

  0xE100000000000000;
  if ((v15 & 0x1000000000000000) != 0)
  {
    v40 = String.UTF8View._foreignCount()();
    v21 = v40 + 1;
    if (!__OFADD__(v40, 1))
    {
      goto LABEL_15;
    }

LABEL_65:
    __break(1u);
    goto LABEL_66;
  }

  v21 = v19 + 1;
  if (__OFADD__(v19, 1))
  {
    goto LABEL_65;
  }

LABEL_15:
  v22 = v16 & ~v15;
  if ((v22 & 0x2000000000000000) != 0 && swift_isUniquelyReferenced_nonNull_native(v15 & 0xFFFFFFFFFFFFFFFLL))
  {
    v23 = _StringGuts.nativeUnusedCapacity.getter(v16, v15);
    if (v24)
    {
      goto LABEL_69;
    }

    if (v21 <= 15)
    {
      if ((v15 & 0x2000000000000000) == 0)
      {
        if (v23 < 1)
        {
          goto LABEL_21;
        }

        goto LABEL_26;
      }

LABEL_41:
      v26 = v15;
      goto LABEL_42;
    }

LABEL_26:
    v27 = v22 & 0x2000000000000000;
    v28 = _StringGuts.nativeUnusedCapacity.getter(v16, v15);
    if ((v29 & 1) != 0 || v28 <= 0)
    {
      if (v27)
      {
        swift_isUniquelyReferenced_nonNull_native(v15 & 0xFFFFFFFFFFFFFFFLL);
      }

      v30 = 2 * _StringGuts.nativeCapacity.getter(v16, v15);
      if (v31)
      {
        v30 = 0;
      }

      if (v30 > v21)
      {
        v21 = v30;
      }
    }

    else if (v27 && swift_isUniquelyReferenced_nonNull_native(v15 & 0xFFFFFFFFFFFFFFFLL))
    {
      goto LABEL_61;
    }

    v32 = _StringGuts.uniqueNativeCapacity.getter();
    if (v33)
    {
      if ((v15 & 0x1000000000000000) != 0)
      {
        v19 = String.UTF8View._foreignCount()();
      }
    }

    else
    {
      v19 = 2 * v32;
    }

    if (v19 <= v21)
    {
      v19 = v21;
    }

    if ((v15 & 0x1000000000000000) == 0)
    {
      if ((v15 & 0x2000000000000000) != 0)
      {
        *&__src = v16;
        *(&__src + 1) = v15 & 0xFFFFFFFFFFFFFFLL;
        v37 = v17 | 0xC000000000000000;
        if ((v15 & 0x4000000000000000) == 0)
        {
          v37 = HIBYTE(v15) & 0xF;
        }

        v38 = v37 | 0x3000000000000000;
        v36 = _allocateStringStorage(codeUnitCapacity:)(v19);
        *(v36 + 16) = v39;
        *(v36 + 24) = v38;
        if (v39 < 0)
        {
          *__StringStorage._breadcrumbsAddress.getter() = 0;
          v38 = *(v36 + 24);
        }

        *(v36 + 32 + (v38 & 0xFFFFFFFFFFFFLL)) = 0;
        specialized UnsafeMutablePointer.initialize(from:count:)(&__src, HIBYTE(v15) & 0xF, (v36 + 32));
      }

      else
      {
        if ((v16 & 0x1000000000000000) != 0)
        {
          v35 = ((v15 & 0xFFFFFFFFFFFFFFFLL) + 32);
        }

        else
        {
          v35 = _StringObject.sharedUTF8.getter(v16, v15);
          v18 = v41;
        }

        v36 = specialized static __StringStorage.create(initializingFrom:codeUnitCapacity:isASCII:)(v35, v18, v19, v16 < 0);
      }

      v15;
      v15 = v36;
      goto LABEL_61;
    }

LABEL_66:
    _StringGuts._foreignGrow(_:)(v19);
    v15 = object;
LABEL_61:
    __src = xmmword_18071DC90;
    0xE100000000000000;
    __StringStorage.appendInPlace(_:isASCII:)(&__src, 1uLL, 1);
    0xE100000000000000;
    return *((v15 & 0xFFFFFFFFFFFFFFFLL) + 0x18);
  }

  if (v21 > 15)
  {
    goto LABEL_26;
  }

  if ((v15 & 0x2000000000000000) != 0)
  {
    goto LABEL_41;
  }

LABEL_21:
  if ((v15 & 0x1000000000000000) != 0)
  {
    v16 = _StringGuts._foreignConvertedToSmall()(v16, v15);
  }

  else
  {
    if ((v16 & 0x1000000000000000) != 0)
    {
      v25 = ((v15 & 0xFFFFFFFFFFFFFFFLL) + 32);
    }

    else
    {
      v25 = _StringObject.sharedUTF8.getter(v16, v15);
      v18 = v42;
    }

    closure #1 in _StringGuts._convertedToSmall()(v25, v18, &__src, v20);
    v26 = *(&__src + 1);
    v16 = __src;
  }

LABEL_42:
  v34 = HIBYTE(v26) & 0xF;
  if (v34 == 15)
  {
LABEL_69:
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  if (v34 < 8)
  {
    v16 = ((-255 << (8 * (HIBYTE(v26) & 7u))) - 1) & v16 | (41 << (8 * (HIBYTE(v26) & 7u)));
  }

  v15;
  swift_bridgeObjectRelease_n(0xE100000000000000, 2);
  return v16;
}

uint64_t Optional.customMirror.getter@<X0>(Class *a1@<X0>, Class **a2@<X8>)
{
  v3 = v2;
  v51 = a2;
  v5 = a1[2];
  v6 = *(v5 - 1);
  v7 = MEMORY[0x1EEE9AC00](a1);
  v9 = &v47 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *(v7 - 8);
  v11 = MEMORY[0x1EEE9AC00](v7);
  v48 = (&v47 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  v13 = MEMORY[0x1EEE9AC00](v11);
  v15 = &v47 - v14;
  v16 = MEMORY[0x1EEE9AC00](v13);
  v49 = (&v47 - v17);
  v18 = MEMORY[0x1EEE9AC00](v16);
  v20 = &v47 - v19;
  MEMORY[0x1EEE9AC00](v18);
  v22 = &v47 - v21;
  v50 = v10;
  v23 = *(v10 + 16);
  v23(&v47 - v21, v3, a1);
  if ((*(v6 + 48))(v22, 1, v5) == 1)
  {
    v23(v15, v3, a1);
    v52 = 0;
    v53 = 0;
    v24 = static Mirror._superclassIterator<A>(_:_:)(v15, &v52, a1);
    v26 = v25;
    v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss26_RandomAccessCollectionBoxCys15LazyMapSequenceVys13KeyValuePairsVySSypGSSSg5label_yp5valuetGGMd, _ss26_RandomAccessCollectionBoxCys15LazyMapSequenceVys13KeyValuePairsVySSypGSSSg5label_yp5valuetGGMR);
    v28 = swift_allocObject(v27, 0x48, 7uLL);
    v28[6] = &_swiftEmptyArrayStorage;
    v28[7] = closure #1 in Mirror.init<A>(_:children:displayStyle:ancestorRepresentation:);
    v28[8] = 0;
    v29 = canonical specialized generic type metadata accessor for _IndexBox<Int>();
    v30 = swift_allocObject(v29, 0x18, 7uLL);
    *(v30 + 2) = 0;
    v31 = swift_allocObject(v29, 0x18, 7uLL);
    *(v31 + 2) = 0;
    v28[2] = v30;
    v28[3] = &protocol witness table for _IndexBox<A>;
    v28[4] = v31;
    v28[5] = &protocol witness table for _IndexBox<A>;
    v32 = v48;
    (*(v50 + 32))(v48, v15, a1);
  }

  else
  {
    v33 = *(v6 + 32);
    v33(v9, v22, v5);
    v23(v20, v3, a1);
    v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_yptGMd, _ss23_ContiguousArrayStorageCySS_yptGMR);
    v35 = swift_allocObject(v34, 0x50, 7uLL);
    *(v35 + 1) = xmmword_18071DB30;
    v35[4] = 1701670771;
    v35[5] = 0xE400000000000000;
    v35[9] = v5;
    boxed_opaque_existential_0Tm = __swift_allocate_boxed_opaque_existential_0Tm(v35 + 6);
    v33(boxed_opaque_existential_0Tm, v9, v5);
    v52 = 0;
    v53 = 0;
    v24 = static Mirror._superclassIterator<A>(_:_:)(v20, &v52, a1);
    v26 = v37;
    v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss26_RandomAccessCollectionBoxCys15LazyMapSequenceVys13KeyValuePairsVySSypGSSSg5label_yp5valuetGGMd, _ss26_RandomAccessCollectionBoxCys15LazyMapSequenceVys13KeyValuePairsVySSypGSSSg5label_yp5valuetGGMR);
    v28 = swift_allocObject(v38, 0x48, 7uLL);
    v28[6] = v35;
    v28[7] = closure #1 in Mirror.init<A>(_:children:displayStyle:ancestorRepresentation:);
    v28[8] = 0;
    v39 = canonical specialized generic type metadata accessor for _IndexBox<Int>();
    v40 = swift_allocObject(v39, 0x18, 7uLL);
    *(v40 + 2) = 0;
    v41 = v35[2];
    v42 = swift_allocObject(v39, 0x18, 7uLL);
    *(v42 + 2) = v41;
    v28[2] = v40;
    v28[3] = &protocol witness table for _IndexBox<A>;
    v28[4] = v42;
    v28[5] = &protocol witness table for _IndexBox<A>;
    v32 = v49;
    (*(v50 + 32))(v49, v20, a1);
  }

  v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss21CustomLeafReflectable_pMd, _ss21CustomLeafReflectable_pMR);
  result = swift_dynamicCast(&v52, v32, a1, v43, 6uLL);
  v45 = result;
  if (result)
  {
    result = __swift_destroy_boxed_opaque_existential_1Tm(&v52);
  }

  v46 = v51;
  *v51 = a1;
  v46[1] = v28;
  *(v46 + 16) = 4;
  v46[3] = v24;
  v46[4] = v26;
  *(v46 + 40) = v45;
  return result;
}

uint64_t protocol witness for static Equatable.== infix(_:_:) in conformance <A> A?(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = a3;
  v32 = a1;
  v30 = *(a4 - 8);
  v6 = *(a3 + 16);
  v7 = *(v6 - 8);
  v8 = MEMORY[0x1EEE9AC00](a1);
  v29 = &v28 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v33 = &v28 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_getTupleTypeMetadata2(0, v13, v13, 0, 0);
  v15 = v14;
  v31 = *(v14 - 8);
  v16 = MEMORY[0x1EEE9AC00](v14);
  v18 = &v28 - v17;
  v19 = *(v16 + 48);
  v20 = *(v11 + 16);
  v20(&v28 - v17, v32, v4);
  v20(&v18[v19], a2, v4);
  v32 = v7;
  v21 = *(v7 + 48);
  if (v21(v18, 1, v6) == 1)
  {
    if (v21(&v18[v19], 1, v6) == 1)
    {
      v22 = 1;
    }

    else
    {
      v11 = v31;
      v4 = v15;
      v22 = 0;
    }
  }

  else
  {
    v20(v33, v18, v4);
    if (v21(&v18[v19], 1, v6) == 1)
    {
      (*(v32 + 8))(v33, v6);
      v22 = 0;
      v11 = v31;
      v4 = v15;
    }

    else
    {
      v23 = v32;
      v24 = v29;
      (*(v32 + 32))(v29, &v18[v19], v6);
      v25 = v33;
      v22 = (*(v30 + 8))(v33, v24, v6);
      v26 = *(v23 + 8);
      v26(v24, v6);
      v26(v25, v6);
    }
  }

  (*(v11 + 8))(v18, v4);
  return v22 & 1;
}

void Optional<A>.hash(into:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a2 + 16);
  v6 = *(v5 - 8);
  v7 = MEMORY[0x1EEE9AC00](a1);
  v9 = &v14 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v11 = &v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v12 + 16))(v11, v13);
  if ((*(v6 + 48))(v11, 1, v5) == 1)
  {
    Hasher._combine(_:)(0);
  }

  else
  {
    (*(v6 + 32))(v9, v11, v5);
    Hasher._combine(_:)(1u);
    (*(a3 + 24))(a1, v5, a3);
    (*(v6 + 8))(v9, v5);
  }
}

Swift::Int Optional<A>.hashValue.getter(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 16);
  v5 = *(v4 - 8);
  v6 = MEMORY[0x1EEE9AC00](a1);
  v8 = &v13 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v10 = &v13 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = 0u;
  v18 = 0u;
  v14 = 0;
  v15 = veorq_s8(_swift_stdlib_Hashing_parameters, xmmword_18071DB60);
  v16 = veorq_s8(_swift_stdlib_Hashing_parameters, xmmword_18071DB70);
  (*(v11 + 16))(v10, v2);
  if ((*(v5 + 48))(v10, 1, v4) == 1)
  {
    Hasher._combine(_:)(0);
  }

  else
  {
    (*(v5 + 32))(v8, v10, v4);
    Hasher._combine(_:)(1u);
    (*(a2 + 24))(&v14, v4, a2);
    (*(v5 + 8))(v8, v4);
  }

  return Hasher._finalize()();
}

uint64_t ?? infix<A>(_:_:)@<X0>(uint64_t a1@<X0>, uint64_t (*a2)(void)@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v9 = type metadata accessor for Optional(0, a4, a3, a4);
  MEMORY[0x1EEE9AC00](v9);
  v11 = v15 - v10;
  (*(v12 + 16))(v15 - v10, a1);
  v13 = *(a4 - 8);
  if ((*(v13 + 48))(v11, 1, a4) == 1)
  {
    return a2();
  }

  else
  {
    return (*(v13 + 32))(a5, v11, a4);
  }
}

{
  v9 = type metadata accessor for Optional(0, a4, a3, a4);
  MEMORY[0x1EEE9AC00](v9);
  v11 = v15 - v10;
  (*(v12 + 16))(v15 - v10, a1);
  v13 = *(a4 - 8);
  if ((*(v13 + 48))(v11, 1, a4) == 1)
  {
    return a2();
  }

  (*(v13 + 32))(a5, v11, a4);
  return (*(v13 + 56))(a5, 0, 1, a4);
}

__SwiftNull *Optional._bridgeToObjectiveC()(uint64_t a1)
{
  v2 = *(a1 - 8);
  v3 = MEMORY[0x1EEE9AC00](a1);
  v5 = &v12 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *(v3 + 16);
  v7 = *(v6 - 1);
  MEMORY[0x1EEE9AC00](v3);
  v9 = (&v12 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v2 + 16))(v5);
  if ((*(v7 + 48))(v5, 1, v6) == 1)
  {
    (*(v2 + 8))(v5, a1);
    return _swift_Foundation_getOptionalNilSentinelObject(v6);
  }

  else
  {
    (*(v7 + 32))(v9, v5, v6);
    v11 = _bridgeAnythingToObjectiveC<A>(_:)(v9, v6);
    (*(v7 + 8))(v9, v6);
    return v11;
  }
}

uint64_t static Optional._forceBridgeFromObjectiveC(_:result:)(__SwiftNull *a1, uint64_t a2, unint64_t *a3)
{
  v6 = *(a3 - 1);
  MEMORY[0x1EEE9AC00](a1);
  v8 = (&v18 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v11 = type metadata accessor for Optional(255, v9, v9, v10);
  v14 = type metadata accessor for Optional(0, v11, v12, v13);
  (*(*(v14 - 8) + 8))(a2, v14);
  OptionalNilSentinelObject = _swift_Foundation_getOptionalNilSentinelObject(a3);
  swift_unknownObjectRelease(OptionalNilSentinelObject);
  if (OptionalNilSentinelObject == a1)
  {
    (*(v6 + 56))(a2, 1, 1, a3);
    v17 = *(*(v11 - 8) + 56);

    return v17(a2, 0, 1, v11);
  }

  else
  {
    v19 = a1;
    swift_unknownObjectRetain(a1);
    swift_dynamicCast(v8, &v19, qword_1EEEAC710, a3, 7uLL);
    (*(v6 + 16))(a2, v8, a3);
    (*(v6 + 56))(a2, 0, 1, a3);
    (*(*(v11 - 8) + 56))(a2, 0, 1, v11);
    return (*(v6 + 8))(v8, a3);
  }
}

uint64_t static Optional._conditionallyBridgeFromObjectiveC(_:result:)(__SwiftNull *a1, char *a2, unint64_t *a3, uint64_t a4)
{
  v7 = type metadata accessor for Optional(0, a3, a3, a4);
  v8 = *(v7 - 8);
  v9 = MEMORY[0x1EEE9AC00](v7);
  v11 = (&v24 - v10);
  v12 = *(a3 - 1);
  MEMORY[0x1EEE9AC00](v9);
  v14 = &v24 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = type metadata accessor for Optional(0, v7, v15, v16);
  (*(*(v17 - 8) + 8))(a2, v17);
  OptionalNilSentinelObject = _swift_Foundation_getOptionalNilSentinelObject(a3);
  swift_unknownObjectRelease(OptionalNilSentinelObject);
  if (OptionalNilSentinelObject == a1)
  {
    v21 = 1;
    (*(v12 + 56))(a2, 1, 1, a3);
    (*(v8 + 56))(a2, 0, 1, v7);
  }

  else
  {
    v25 = a1;
    swift_unknownObjectRetain(a1);
    v19 = swift_dynamicCast(v11, &v25, qword_1EEEAC710, a3, 6uLL);
    v20 = *(v12 + 56);
    if (v19)
    {
      v21 = 1;
      v20(v11, 0, 1, a3);
      v24 = v7;
      v22 = *(v12 + 32);
      v22(v14, v11, a3);
      v22(a2, v14, a3);
      v20(a2, 0, 1, a3);
      (*(v8 + 56))(a2, 0, 1, v24);
    }

    else
    {
      v20(v11, 1, 1, a3);
      (*(v8 + 8))(v11, v7);
      (*(v8 + 56))(a2, 1, 1, v7);
      return 0;
    }
  }

  return v21;
}

uint64_t static Optional._unconditionallyBridgeFromObjectiveC(_:)@<X0>(__SwiftNull *a1@<X0>, unint64_t *a2@<X1>, swift *a3@<X8>)
{
  if (a1)
  {
    swift_unknownObjectRetain(a1);
    OptionalNilSentinelObject = _swift_Foundation_getOptionalNilSentinelObject(a2);
    swift_unknownObjectRelease(OptionalNilSentinelObject);
    if (OptionalNilSentinelObject != a1)
    {
      v9 = a1;
      swift_dynamicCast(a3, &v9, qword_1EEEAC710, a2, 7uLL);
      return (*(*(a2 - 1) + 56))(a3, 0, 1, a2);
    }

    swift_unknownObjectRelease(a1);
  }

  v8 = *(*(a2 - 1) + 56);

  return v8(a3, 1, 1, a2);
}

uint64_t OptionSet.union(_:)(uint64_t a1, unint64_t a2, uint64_t a3)
{
  v6 = *(a2 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v8 = &v15 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *(v9 + 8);
  swift_getAssociatedTypeWitness(0, v10, a2, &protocol requirements base descriptor for RawRepresentable, associated type descriptor for RawRepresentable.RawValue);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v13 = &v15 - v12;
  (*(v10 + 24))(a2, v10);
  (*(a3 + 24))(v13, a2, a3);
  (*(v6 + 16))(v8, a1, a2);
  return (*(*(a3 + 16) + 96))(v8, a2);
}

uint64_t OptionSet.intersection(_:)(uint64_t a1, unint64_t a2, uint64_t a3)
{
  v6 = *(a3 + 8);
  swift_getAssociatedTypeWitness(0, v6, a2, &protocol requirements base descriptor for RawRepresentable, associated type descriptor for RawRepresentable.RawValue);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = &v11 - v8;
  (*(v6 + 24))(a2, v6);
  (*(a3 + 24))(v9, a2, a3);
  return (*(*(a3 + 16) + 104))(a1, a2);
}

uint64_t OptionSet.symmetricDifference(_:)(uint64_t a1, unint64_t a2, uint64_t a3)
{
  v6 = *(a2 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v8 = &v15 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *(v9 + 8);
  swift_getAssociatedTypeWitness(0, v10, a2, &protocol requirements base descriptor for RawRepresentable, associated type descriptor for RawRepresentable.RawValue);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v13 = &v15 - v12;
  (*(v10 + 24))(a2, v10);
  (*(a3 + 24))(v13, a2, a3);
  (*(v6 + 16))(v8, a1, a2);
  return (*(*(a3 + 16) + 112))(v8, a2);
}

uint64_t OptionSet<>.insert(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v35 = a1;
  swift_getTupleTypeMetadata2(0, &type metadata for Bool, a3, "inserted memberAfterInsert ", 0);
  v36 = v9;
  v34 = *(v9 - 8);
  v10 = MEMORY[0x1EEE9AC00](v9);
  v33 = v32 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x1EEE9AC00](v10);
  v14 = v32 - v13;
  v15 = *(a3 - 8);
  v16 = MEMORY[0x1EEE9AC00](v12);
  v18 = v32 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v20 = v32 - v19;
  v21 = *(v15 + 16);
  v32[1] = v5;
  v21(v18, v5, a3);
  v22 = *(a4 + 16);
  (*(v22 + 56))(a2, a3, v22);
  v23 = *(*(v22 + 8) + 8);
  v32[0] = a2;
  v24 = v23(v20, a2, a3);
  v25 = *(v36 + 48);
  *v14 = (v24 & 1) == 0;
  if (v24)
  {
    (*(v15 + 32))(&v14[v25], v20, a3);
  }

  else
  {
    (*(v15 + 8))(v20, a3);
    v26 = &v14[v25];
    v27 = v32[0];
    v21(v26, v32[0], a3);
    v21(v18, v27, a3);
    (*(v22 + 96))(v18, a3, v22);
  }

  v28 = v33;
  v29 = v36;
  (*(v34 + 32))(v33, v14, v36);
  v30 = *v28;
  (*(v15 + 32))(v35, &v28[*(v29 + 48)], a3);
  return v30;
}

uint64_t OptionSet<>.remove(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v5 = v4;
  v10 = *(a2 - 8);
  v11 = MEMORY[0x1EEE9AC00](a1);
  v13 = &v19 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v15 = &v19 - v14;
  (*(v10 + 16))(v13, v5, a2);
  v16 = *(a3 + 16);
  (*(v16 + 56))(a1, a2, v16);
  if ((*(v16 + 152))(a2, v16))
  {
    (*(v10 + 8))(v15, a2);
    v17 = 1;
  }

  else
  {
    (*(v16 + 168))(a1, a2, v16);
    (*(v10 + 32))(a4, v15, a2);
    v17 = 0;
  }

  return (*(v10 + 56))(a4, v17, 1, a2);
}

uint64_t OptionSet<>.update(with:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v5 = v4;
  v22 = a4;
  v9 = *(a2 - 8);
  v10 = MEMORY[0x1EEE9AC00](a1);
  v12 = &v21 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v14 = &v21 - v13;
  v15 = *(v9 + 16);
  v15(v12, v5, a2);
  v16 = *(a3 + 16);
  (*(v16 + 56))(a1, a2, v16);
  v15(v12, a1, a2);
  (*(v16 + 96))(v12, a2, v16);
  if ((*(v16 + 152))(a2, v16))
  {
    (*(v9 + 8))(v14, a2);
    v17 = 1;
    v18 = v22;
  }

  else
  {
    v19 = v22;
    (*(v9 + 32))(v22, v14, a2);
    v17 = 0;
    v18 = v19;
  }

  return (*(v9 + 56))(v18, v17, 1, a2);
}

uint64_t OptionSet<>.init()(unint64_t a1, uint64_t a2, uint64_t a3)
{
  swift_getAssociatedTypeWitness(0, *(a2 + 8), a1, &protocol requirements base descriptor for RawRepresentable, associated type descriptor for RawRepresentable.RawValue);
  v7 = v6;
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v17 - v8;
  v10 = *(*(*(a3 + 8) + 24) + 16);
  swift_getAssociatedTypeWitness(0, v10, v7, &protocol requirements base descriptor for ExpressibleByIntegerLiteral, associated type descriptor for ExpressibleByIntegerLiteral.IntegerLiteralType);
  v12 = v11;
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v17 - v13;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness(v10, v7, v12, &protocol requirements base descriptor for ExpressibleByIntegerLiteral, associated conformance descriptor for ExpressibleByIntegerLiteral.ExpressibleByIntegerLiteral.IntegerLiteralType: _ExpressibleByBuiltinIntegerLiteral);
  (*(AssociatedConformanceWitness + 8))(&qword_18071E0A8, 256, v12, AssociatedConformanceWitness);
  (*(v10 + 24))(v14, v7, v10);
  return (*(a2 + 24))(v9, a1, a2);
}

uint64_t OptionSet<>.formUnion(_:)(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4)
{
  v22 = a4;
  v23 = a3;
  v21[1] = a1;
  v6 = *(a3 + 8);
  swift_getAssociatedTypeWitness(0, v6, a2, &protocol requirements base descriptor for RawRepresentable, associated type descriptor for RawRepresentable.RawValue);
  v8 = v7;
  v9 = *(v7 - 8);
  v10 = MEMORY[0x1EEE9AC00](v7);
  v12 = v21 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x1EEE9AC00](v10);
  v15 = v21 - v14;
  MEMORY[0x1EEE9AC00](v13);
  v17 = v21 - v16;
  v18 = *(v6 + 24);
  v21[0] = v4;
  v18(a2, v6);
  (*(*(a2 - 8) + 8))(v4, a2);
  v18(a2, v6);
  (*(*(v22 + 8) + 208))(v15, v12, v8);
  v19 = *(v9 + 8);
  v19(v12, v8);
  v19(v15, v8);
  return (*(v23 + 24))(v17, a2);
}

uint64_t OptionSet<>.formIntersection(_:)(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4)
{
  v22 = a4;
  v23 = a3;
  v21[1] = a1;
  v6 = *(a3 + 8);
  swift_getAssociatedTypeWitness(0, v6, a2, &protocol requirements base descriptor for RawRepresentable, associated type descriptor for RawRepresentable.RawValue);
  v8 = v7;
  v9 = *(v7 - 8);
  v10 = MEMORY[0x1EEE9AC00](v7);
  v12 = v21 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x1EEE9AC00](v10);
  v15 = v21 - v14;
  MEMORY[0x1EEE9AC00](v13);
  v17 = v21 - v16;
  v18 = *(v6 + 24);
  v21[0] = v4;
  v18(a2, v6);
  (*(*(a2 - 8) + 8))(v4, a2);
  v18(a2, v6);
  (*(*(v22 + 8) + 192))(v15, v12, v8);
  v19 = *(v9 + 8);
  v19(v12, v8);
  v19(v15, v8);
  return (*(v23 + 24))(v17, a2);
}

uint64_t OptionSet<>.formSymmetricDifference(_:)(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4)
{
  v22 = a4;
  v23 = a3;
  v21[1] = a1;
  v6 = *(a3 + 8);
  swift_getAssociatedTypeWitness(0, v6, a2, &protocol requirements base descriptor for RawRepresentable, associated type descriptor for RawRepresentable.RawValue);
  v8 = v7;
  v9 = *(v7 - 8);
  v10 = MEMORY[0x1EEE9AC00](v7);
  v12 = v21 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x1EEE9AC00](v10);
  v15 = v21 - v14;
  MEMORY[0x1EEE9AC00](v13);
  v17 = v21 - v16;
  v18 = *(v6 + 24);
  v21[0] = v4;
  v18(a2, v6);
  (*(*(a2 - 8) + 8))(v4, a2);
  v18(a2, v6);
  (*(*(v22 + 8) + 224))(v15, v12, v8);
  v19 = *(v9 + 8);
  v19(v12, v8);
  v19(v15, v8);
  return (*(v23 + 24))(v17, a2);
}

void TextOutputStream._writeASCII(_:)(uint64_t a1, uint64_t a2, uint8x8_t a3, uint64_t a4, uint64_t a5)
{
  v6 = specialized static String._uncheckedFromASCII(_:)(a1, a2, a3);
  v8 = v7;
  (*(a5 + 24))(v6);

  v8;
}

uint64_t _fallbackEnumRawValue<A>(_:)(int *a1, uint64_t a2)
{
  result = 0;
  v4 = *(*(a2 - 8) + 64);
  if (v4 > 3)
  {
    if (v4 == 4)
    {
      return *a1;
    }

    else if (v4 == 8)
    {
      return *a1;
    }
  }

  else if (v4 == 1)
  {
    return *a1;
  }

  else if (v4 == 2)
  {
    return *a1;
  }

  return result;
}

void _adHocPrint_unlocked<A, B>(_:_:_:isDebugPrint:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v10 = MEMORY[0x1EEE9AC00](a1);
  v15 = (&v241 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
  v17 = *v16;
  v18 = *(v16 + 8);
  v19 = *(v16 + 16);
  v242 = v21;
  v243 = v20;
  v244 = v22;
  if (v19 > 3)
  {
    if (v19 != 9)
    {
      if (v19 == 8)
      {
        printTypeName #1 <A, B>(_:) in _adHocPrint_unlocked<A, B>(_:_:_:isDebugPrint:)(v17, a3, v11 & 1, a6, a7);
        (*(a7 + 24))(10536, 0xE200000000000000, a6, a7);

        0xE200000000000000;
        return;
      }

      if (v19 == 4)
      {
        v59 = v18[2];
        v60 = v18[3];
        if (specialized static AnyIndex.== infix(_:_:)(v59, v60, v18[4], v18[5]))
        {
          *&v248 = 7104878;
          *(&v248 + 1) = 0xE300000000000000;
          _debugPrint_unlocked<A, B>(_:_:)(&v248, a3, &type metadata for String, a6, v242);
          v61 = 0xE300000000000000;
          goto LABEL_264;
        }

        (*(*v18 + 256))(&v248, v59, v60);
        _debugPrint_unlocked<A, B>(_:_:)(&v249, a3, byte_1EEEAC6F8, a6, v242);
        outlined destroy of _HasContiguousBytes?(&v248, &_sSSSg5label_yp5valuetMd, _sSSSg5label_yp5valuetMR);
        return;
      }

LABEL_71:
      TypeName = swift_getTypeName(v17, 1);
      if (v74 < 0)
      {
        goto LABEL_271;
      }

      v75 = TypeName;
      v76 = v74;
      if (_allASCII(_:)(TypeName, v74))
      {
        v78 = 1;
LABEL_74:
        if (v76)
        {
          if (v76 <= 15)
          {
            v79 = v76 - 8;
            v80 = 8;
            if (v76 < 8)
            {
              v80 = v76;
            }

            if (v76 >= 4)
            {
              v83 = v80 & 0xC;
              v77.i32[0] = *v75;
              v166 = vmovl_u16(*&vmovl_u8(v77));
              v167.i64[0] = v166.u32[0];
              v167.i64[1] = v166.u32[1];
              v168.i64[0] = 255;
              v168.i64[1] = 255;
              v169 = vandq_s8(v167, v168);
              v167.i64[0] = v166.u32[2];
              v167.i64[1] = v166.u32[3];
              v170 = vshlq_u64(vandq_s8(v167, v168), xmmword_18071DBA0);
              v171.i32[1] = 0;
              v172 = vshlq_u64(v169, xmmword_18071DBB0);
              if (v83 != 4)
              {
                v171.i32[0] = *(v75 + 4);
                v173 = vmovl_u16(*&vmovl_u8(v171));
                v174.i64[0] = v173.u32[2];
                v174.i64[1] = v173.u32[3];
                v175 = vandq_s8(v174, v168);
                v174.i64[0] = v173.u32[0];
                v174.i64[1] = v173.u32[1];
                v170 = vorrq_s8(vshlq_u64(v175, xmmword_18071DBD0), v170);
                v172 = vorrq_s8(vshlq_u64(vandq_s8(v174, v168), xmmword_18071DBC0), v172);
              }

              v176 = vorrq_s8(v172, v170);
              v81 = vorr_s8(*v176.i8, *&vextq_s8(v176, v176, 8uLL));
              if (v80 == v83)
              {
LABEL_226:
                if (v76 >= 9)
                {
                  v180 = 0;
                  v181 = 0;
                  v182 = (v75 + 8);
                  do
                  {
                    v183 = *v182++;
                    v180 |= v183 << v181;
                    v181 += 8;
                    --v79;
                  }

                  while (v79);
                  goto LABEL_259;
                }

LABEL_258:
                v180 = 0;
LABEL_259:
                v238 = 0xA000000000000000;
                if (((v180 | *&v81) & 0x8080808080808080) == 0)
                {
                  v238 = 0xE000000000000000;
                }

                v104 = v238 | (v76 << 56) | v180;
                goto LABEL_262;
              }

              v82 = 8 * v83;
            }

            else
            {
              v81 = 0;
              v82 = 0;
              v83 = 0;
            }

            v177 = v80 - v83;
            v178 = (v75 + v83);
            do
            {
              v179 = *v178++;
              *&v81 |= v179 << (v82 & 0x38);
              v82 += 8;
              --v177;
            }

            while (v177);
            goto LABEL_226;
          }

LABEL_147:
          v104 = specialized static __StringStorage.create(initializingFrom:codeUnitCapacity:isASCII:)(v75, v76, v76, v78 & 1);
          v81 = *(v104 + 24);
          goto LABEL_262;
        }

LABEL_217:
        v81 = 0;
        v104 = 0xE000000000000000;
        goto LABEL_262;
      }

      if (!v76)
      {
        goto LABEL_217;
      }

      v105 = 0;
      v106 = (v75 + v76);
      v78 = 1;
      v107 = v75;
      v108 = v75;
      while (1)
      {
        v110 = *v108++;
        v109 = v110;
        if ((v110 & 0x80000000) == 0)
        {
          v111 = 1;
          goto LABEL_98;
        }

        if ((v109 + 11) <= 0xCCu)
        {
          LOBYTE(v248) = _diagnoseInvalidUTF8MultiByteLeading(_:)(v109);
          goto LABEL_149;
        }

        if (v109 <= 0xDFu)
        {
          if (v108 == v106 || (*v108 & 0xC0) != 0x80)
          {
LABEL_266:
            v239 = 4;
            goto LABEL_267;
          }

          v78 = 0;
          v108 = v107 + 2;
          v111 = 2;
        }

        else
        {
          if (v109 == 224)
          {
            if (v108 == v106)
            {
              goto LABEL_266;
            }

            if (v107[1] - 192 < 0xFFFFFFE0)
            {
              goto LABEL_275;
            }

            goto LABEL_117;
          }

          if (v109 <= 0xECu)
          {
            if (v108 == v106 || (v107[1] & 0xC0) != 0x80)
            {
              goto LABEL_266;
            }

LABEL_117:
            if (v107 + 2 == v106 || (v107[2] & 0xC0) != 0x80)
            {
              goto LABEL_266;
            }

            v78 = 0;
            v108 = v107 + 3;
            v111 = 3;
            a7 = v242;
            goto LABEL_98;
          }

          if (v109 == 237)
          {
            if (v108 == v106)
            {
              goto LABEL_266;
            }

            v112 = v107[1];
            if (v112 > 0x9F || (v112 & 0xC0) != 0x80)
            {
              v239 = 1;
LABEL_267:
              while (1)
              {
                LOBYTE(v248) = v239;
LABEL_149:
                swift_willThrowTypedImpl(&v248, &type metadata for _UTF8EncodingErrorKind, &protocol witness table for _UTF8EncodingErrorKind);
                v117 = specialized Collection.subscript.getter(v105, v75, v76);
                v122 = findInvalidRange #1 (_:) in validateUTF8(_:)(v117, v118, v119, v120);
                *&v248 = 0;
                *(&v248 + 1) = 0xE000000000000000;
                if (!__OFADD__(v76, 15))
                {
                  break;
                }

                __break(1u);
LABEL_284:
                v239 = 2;
              }

              v123 = v121;
              v105 = &v248;
              _StringGuts.reserveCapacity(_:)(v76 + 15);
              v124 = v122;
              while (1)
              {
                v125 = specialized Collection.subscript.getter(v124, v75, v76);
                v129 = v248 & 0xFFFFFFFFFFFFLL;
                if ((*(&v248 + 1) & 0x2000000000000000) != 0)
                {
                  v129 = HIBYTE(*(&v248 + 1)) & 0xFLL;
                }

                v130 = __OFADD__(v129, v76);
                v131 = v129 + v76;
                if (v130)
                {
                  __break(1u);
LABEL_273:
                  __break(1u);
LABEL_274:
                  __break(1u);
                  goto LABEL_275;
                }

                v132 = v125;
                if (__OFADD__(v131, 3))
                {
                  goto LABEL_273;
                }

                v133 = v126;
                v134 = v127;
                v135 = v128;
                v136 = v75;
                _StringGuts.reserveCapacity(_:)(v131 + 3);
                v137 = _sSR8rebasingSRyxGs5SliceVyABG_tcfCs5UInt8V_Tt0g5Tm(v132, v133, v134, v135);
                v139 = v138;
                v105 = (*(&v248 + 1) & 0xFFFFFFFFFFFFFFFLL);
                v75 = (*(&v248 + 1) & 0xFFFFFFFFFFFFFFFLL) + 32;
                specialized UnsafeMutablePointer.initialize(from:count:)(v137, v138, (v75 + (*((*(&v248 + 1) & 0xFFFFFFFFFFFFFFFLL) + 0x18) & 0xFFFFFFFFFFFFLL)));
                v140 = *(v105 + 3) & 0xFFFFFFFFFFFFLL;
                v141 = v140 + v139;
                if (__OFADD__(v140, v139))
                {
                  goto LABEL_274;
                }

                v142 = v141 | 0x3000000000000000;
                *(v105 + 3) = v141 | 0x3000000000000000;
                *(v75 + (v141 & 0xFFFFFFFFFFFFLL)) = 0;
                if ((v105[1] & 0x8000000000000000) != 0)
                {
                  v143 = __StringStorage._breadcrumbsAddress.getter();
                  v144 = *v143;
                  *v143 = 0;
                  v144;
                  v142 = *(v105 + 3);
                }

                *&v248 = v142;
                specialized Unicode.Scalar.withUTF8CodeUnits<A>(_:)(0xFFFDu, &v248);
                v145 = specialized Collection.subscript.getter(v123, v136, v76);
                v75 = _sSR8rebasingSRyxGs5SliceVyABG_tcfCs5UInt8V_Tt0g5Tm(v145, v146, v147, v148);
                v76 = v149;
                if ((validateUTF8(_:)(v75, v149) & 0x8000000000000000) == 0)
                {
                  break;
                }

                v123 = v150;
                if (!v76)
                {
                  goto LABEL_219;
                }
              }

              _StringGuts.appendInPlace(_:isASCII:)(v75, v76, 0);
LABEL_219:
              v104 = *(&v248 + 1);
              v81 = v248;
              a7 = v242;
LABEL_262:
              (*(a7 + 24))(v81);
LABEL_263:
              v61 = v104;
LABEL_264:
              v61;
              return;
            }

            goto LABEL_127;
          }

          if (v109 <= 0xEFu)
          {
            if (v108 == v106 || (v107[1] & 0xC0) != 0x80)
            {
              goto LABEL_266;
            }

LABEL_127:
            if (v107 + 2 == v106 || (v107[2] & 0xC0) != 0x80)
            {
              goto LABEL_266;
            }

            v78 = 0;
            v108 = v107 + 3;
            v111 = 3;
            goto LABEL_98;
          }

          if (v109 == 240)
          {
            if (v108 == v106)
            {
              goto LABEL_266;
            }

            if (v107[1] - 192 < 0xFFFFFFD0)
            {
LABEL_275:
              v239 = 3;
              goto LABEL_267;
            }
          }

          else if (v109 <= 0xF3u)
          {
            if (v108 == v106 || (v107[1] & 0xC0) != 0x80)
            {
              goto LABEL_266;
            }
          }

          else
          {
            if (v108 == v106)
            {
              goto LABEL_266;
            }

            v113 = v107[1];
            if (v113 > 0x8F || (v113 & 0xC0) != 0x80)
            {
              goto LABEL_284;
            }
          }

          if (v107 + 2 == v106 || (v107[2] & 0xC0) != 0x80 || v107 + 3 == v106 || (v107[3] & 0xC0) != 0x80)
          {
            goto LABEL_266;
          }

          v78 = 0;
          v108 = v107 + 4;
          v111 = 4;
        }

LABEL_98:
        v105 = (v105 + v111);
        v107 = v108;
        if (v108 == v106)
        {
          goto LABEL_74;
        }
      }
    }

    v70 = v11;
    v71 = v12;
    (*(v13 + 16))(v15, v10, v12);
    v72 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sypXpMd, _sypXpMR);
    if (swift_dynamicCast(&v248, v15, v71, v72, 6uLL))
    {
      printTypeName #1 <A, B>(_:) in _adHocPrint_unlocked<A, B>(_:_:_:isDebugPrint:)(v248, a3, v70 & 1, a6, a7);
      return;
    }

    v101 = swift_OpaqueSummary(v17);
    if (v101)
    {
      v102 = specialized String.init(validatingUTF8:)(v101);
      if (v103)
      {
        v104 = v103;
        (*(a7 + 24))(v102);
        goto LABEL_263;
      }
    }

    v114 = swift_getTypeName(v17, 1);
    if (v115 < 0)
    {
      goto LABEL_271;
    }

    v75 = v114;
    v76 = v115;
    if (_allASCII(_:)(v114, v115))
    {
      v78 = 1;
LABEL_145:
      if (!v76)
      {
        goto LABEL_217;
      }

      if (v76 > 15)
      {
        goto LABEL_147;
      }

      v217 = v76 - 8;
      v218 = 8;
      if (v76 < 8)
      {
        v218 = v76;
      }

      if (v76 >= 4)
      {
        v220 = v218 & 0xC;
        v116.i32[0] = *v75;
        v221 = vmovl_u16(*&vmovl_u8(v116));
        v222.i64[0] = v221.u32[0];
        v222.i64[1] = v221.u32[1];
        v223.i64[0] = 255;
        v223.i64[1] = 255;
        v224 = vandq_s8(v222, v223);
        v222.i64[0] = v221.u32[2];
        v222.i64[1] = v221.u32[3];
        v225 = vshlq_u64(vandq_s8(v222, v223), xmmword_18071DBA0);
        v226.i32[1] = 0;
        v227 = vshlq_u64(v224, xmmword_18071DBB0);
        if (v220 != 4)
        {
          v226.i32[0] = *(v75 + 4);
          v228 = vmovl_u16(*&vmovl_u8(v226));
          v229.i64[0] = v228.u32[2];
          v229.i64[1] = v228.u32[3];
          v230 = vandq_s8(v229, v223);
          v229.i64[0] = v228.u32[0];
          v229.i64[1] = v228.u32[1];
          v225 = vorrq_s8(vshlq_u64(v230, xmmword_18071DBD0), v225);
          v227 = vorrq_s8(vshlq_u64(vandq_s8(v229, v223), xmmword_18071DBC0), v227);
        }

        v231 = vorrq_s8(v227, v225);
        v81 = vorr_s8(*v231.i8, *&vextq_s8(v231, v231, 8uLL));
        if (v218 == v220)
        {
LABEL_254:
          if (v76 >= 9)
          {
            v180 = 0;
            v235 = 0;
            v236 = (v75 + 8);
            do
            {
              v237 = *v236++;
              v180 |= v237 << v235;
              v235 += 8;
              --v217;
            }

            while (v217);
            goto LABEL_259;
          }

          goto LABEL_258;
        }

        v219 = 8 * v220;
      }

      else
      {
        v81 = 0;
        v219 = 0;
        v220 = 0;
      }

      v232 = v218 - v220;
      v233 = (v75 + v220);
      do
      {
        v234 = *v233++;
        *&v81 |= v234 << (v219 & 0x38);
        v219 += 8;
        --v232;
      }

      while (v232);
      goto LABEL_254;
    }

    if (!v76)
    {
      goto LABEL_217;
    }

    v157 = 0;
    v158 = (v75 + v76);
    v78 = 1;
    v159 = v75;
    v160 = v75;
    while (1)
    {
      v162 = *v160++;
      v161 = v162;
      if ((v162 & 0x80000000) == 0)
      {
        v163 = 1;
        goto LABEL_174;
      }

      if ((v161 + 11) <= 0xCCu)
      {
        LOBYTE(v248) = _diagnoseInvalidUTF8MultiByteLeading(_:)(v161);
        goto LABEL_231;
      }

      if (v161 <= 0xDFu)
      {
        if (v160 == v158 || (*v160 & 0xC0) != 0x80)
        {
LABEL_268:
          v240 = 4;
LABEL_269:
          while (1)
          {
            LOBYTE(v248) = v240;
LABEL_231:
            swift_willThrowTypedImpl(&v248, &type metadata for _UTF8EncodingErrorKind, &protocol witness table for _UTF8EncodingErrorKind);
            v184 = specialized Collection.subscript.getter(v157, v75, v76);
            v189 = findInvalidRange #1 (_:) in validateUTF8(_:)(v184, v185, v186, v187);
            *&v248 = 0;
            *(&v248 + 1) = 0xE000000000000000;
            if (!__OFADD__(v76, 15))
            {
              break;
            }

            __break(1u);
LABEL_286:
            v240 = 2;
          }

          v190 = v188;
          _StringGuts.reserveCapacity(_:)(v76 + 15);
          v191 = v189;
          while (1)
          {
            v192 = specialized Collection.subscript.getter(v191, v75, v76);
            v196 = v248 & 0xFFFFFFFFFFFFLL;
            if ((*(&v248 + 1) & 0x2000000000000000) != 0)
            {
              v196 = HIBYTE(*(&v248 + 1)) & 0xFLL;
            }

            v130 = __OFADD__(v196, v76);
            v197 = v196 + v76;
            if (v130)
            {
              break;
            }

            v198 = v192;
            if (__OFADD__(v197, 3))
            {
              goto LABEL_277;
            }

            v199 = v193;
            v200 = v194;
            v201 = v195;
            _StringGuts.reserveCapacity(_:)(v197 + 3);
            v202 = _sSR8rebasingSRyxGs5SliceVyABG_tcfCs5UInt8V_Tt0g5Tm(v198, v199, v200, v201);
            v204 = v203;
            v205 = *(&v248 + 1) & 0xFFFFFFFFFFFFFFFLL;
            specialized UnsafeMutablePointer.initialize(from:count:)(v202, v203, ((*(&v248 + 1) & 0xFFFFFFFFFFFFFFFLL) + 32 + (*((*(&v248 + 1) & 0xFFFFFFFFFFFFFFFLL) + 0x18) & 0xFFFFFFFFFFFFLL)));
            v206 = *(v205 + 24) & 0xFFFFFFFFFFFFLL;
            v207 = v206 + v204;
            if (__OFADD__(v206, v204))
            {
              goto LABEL_278;
            }

            v208 = v207 | 0x3000000000000000;
            *(v205 + 24) = v207 | 0x3000000000000000;
            *(v205 + 32 + (v207 & 0xFFFFFFFFFFFFLL)) = 0;
            a7 = v242;
            if ((*(v205 + 16) & 0x8000000000000000) != 0)
            {
              v209 = __StringStorage._breadcrumbsAddress.getter();
              v210 = *v209;
              *v209 = 0;
              v210;
              v208 = *(v205 + 24);
            }

            *&v248 = v208;
            specialized Unicode.Scalar.withUTF8CodeUnits<A>(_:)(0xFFFDu, &v248);
            v211 = specialized Collection.subscript.getter(v190, v75, v76);
            v75 = _sSR8rebasingSRyxGs5SliceVyABG_tcfCs5UInt8V_Tt0g5Tm(v211, v212, v213, v214);
            v76 = v215;
            if ((validateUTF8(_:)(v75, v215) & 0x8000000000000000) == 0)
            {
              _StringGuts.appendInPlace(_:isASCII:)(v75, v76, 0);
              v104 = *(&v248 + 1);
              v81 = v248;
              goto LABEL_262;
            }

            v190 = v216;
            if (!v76)
            {
              v104 = *(&v248 + 1);
              v81 = v248;
              a7 = v242;
              goto LABEL_262;
            }
          }

          __break(1u);
LABEL_277:
          __break(1u);
LABEL_278:
          __break(1u);
LABEL_271:
          _fatalErrorMessage(_:_:file:line:flags:)("Fatal error", 11, 2);
        }

        v78 = 0;
        v160 = v159 + 2;
        v163 = 2;
      }

      else
      {
        if (v161 == 224)
        {
          if (v160 == v158)
          {
            goto LABEL_268;
          }

          if (v159[1] - 192 < 0xFFFFFFE0)
          {
            goto LABEL_280;
          }

          goto LABEL_202;
        }

        if (v161 <= 0xECu)
        {
          goto LABEL_200;
        }

        if (v161 == 237)
        {
          if (v160 == v158)
          {
            goto LABEL_268;
          }

          v164 = v159[1];
          if (v164 > 0x9F || (v164 & 0xC0) != 0x80)
          {
            v240 = 1;
            goto LABEL_269;
          }

          goto LABEL_202;
        }

        if (v161 <= 0xEFu)
        {
LABEL_200:
          if (v160 == v158 || (v159[1] & 0xC0) != 0x80)
          {
            goto LABEL_268;
          }

LABEL_202:
          if (v159 + 2 == v158 || (v159[2] & 0xC0) != 0x80)
          {
            goto LABEL_268;
          }

          v78 = 0;
          v160 = v159 + 3;
          v163 = 3;
          goto LABEL_174;
        }

        if (v161 == 240)
        {
          if (v160 == v158)
          {
            goto LABEL_268;
          }

          if (v159[1] - 192 < 0xFFFFFFD0)
          {
LABEL_280:
            v240 = 3;
            goto LABEL_269;
          }

          if (v159 + 2 == v158 || (v159[2] & 0xC0) != 0x80 || v159 + 3 == v158 || (v159[3] & 0xC0) != 0x80)
          {
            goto LABEL_268;
          }

          v78 = 0;
          v160 = v159 + 4;
          v163 = 4;
        }

        else
        {
          if (v161 <= 0xF3u)
          {
            if (v160 == v158 || (v159[1] & 0xC0) != 0x80)
            {
              goto LABEL_268;
            }
          }

          else
          {
            if (v160 == v158)
            {
              goto LABEL_268;
            }

            v165 = v159[1];
            if (v165 > 0x8F || (v165 & 0xC0) != 0x80)
            {
              goto LABEL_286;
            }
          }

          if (v159 + 2 == v158 || (v159[2] & 0xC0) != 0x80 || v159 + 3 == v158 || (v159[3] & 0xC0) != 0x80)
          {
            goto LABEL_268;
          }

          v78 = 0;
          v160 = v159 + 4;
          v163 = 4;
          a7 = v242;
        }
      }

LABEL_174:
      v157 += v163;
      v159 = v160;
      if (v160 == v158)
      {
        goto LABEL_145;
      }
    }
  }

  if (!v19)
  {
    printTypeName #1 <A, B>(_:) in _adHocPrint_unlocked<A, B>(_:_:_:isDebugPrint:)(v17, a3, v11 & 1, a6, a7);
    v62 = *(a7 + 24);
    v62(40, 0xE100000000000000, a6, a7);
    0xE100000000000000;
    v63 = (*(*v18 + 96))();
    v64 = *(*v63 + 96);
    v64(&v245);
    v249 = v246;
    v250 = v247;
    v248 = v245;
    if (*(&v247 + 1))
    {
      v65 = 1;
      do
      {
        v69 = v248;
        outlined init with take of Any(&v249, &v245);
        if (*(&v69 + 1))
        {
          if ((v65 & 1) == 0)
          {
            v62(8236, 0xE200000000000000, v243, v242);
            0xE200000000000000;
          }

          v66 = v243;
          v67 = v244;
          a7 = v242;
          v62(v69, *(&v69 + 1), v243, v242);
          *(&v69 + 1);
          v62(8250, 0xE200000000000000, v66, a7);
          0xE200000000000000;
          _debugPrint_unlocked<A, B>(_:_:)(&v245, v67, byte_1EEEAC6F8, v66, a7);
          v65 = 0;
        }

        else
        {
          a7 = v242;
        }

        v68 = __swift_destroy_boxed_opaque_existential_1Tm(&v245);
        (v64)(&v245, v68);
        v249 = v246;
        v250 = v247;
        v248 = v245;
      }

      while (*(&v247 + 1));
    }

    v63;
    v62(41, 0xE100000000000000, v243, a7);
    v61 = 0xE100000000000000;
    goto LABEL_264;
  }

  if (v19 != 2)
  {
    if (v19 == 3)
    {
      v23 = *(a7 + 24);
      v23(40, 0xE100000000000000, a6, a7);
      0xE100000000000000;
      v24 = (*(*v18 + 96))();
      v25 = *(*v24 + 96);
      v25(&v245);
      v249 = v246;
      v250 = v247;
      v248 = v245;
      if (!*(&v247 + 1))
      {
LABEL_87:
        v24;
        v23(41, 0xE100000000000000, v243, a7);
        v61 = 0xE100000000000000;
        goto LABEL_264;
      }

      v26 = 1;
      while (1)
      {
        v27 = *(&v248 + 1);
        v29 = v248;
        outlined init with take of Any(&v249, &v245);
        if ((v26 & 1) == 0)
        {
          v23(8236, 0xE200000000000000, v243, a7);
          0xE200000000000000;
        }

        if (!v27)
        {
          goto LABEL_9;
        }

        v30 = HIBYTE(v27) & 0xF;
        v31 = v29 & 0xFFFFFFFFFFFFLL;
        if ((v27 & 0x2000000000000000) != 0)
        {
          v32 = HIBYTE(v27) & 0xF;
        }

        else
        {
          v32 = v29 & 0xFFFFFFFFFFFFLL;
        }

        if (!v32)
        {
          goto LABEL_8;
        }

        if ((v27 & 0x1000000000000000) != 0)
        {
          v52 = _StringGuts._opaqueComplexCharacterStride(startingAt:)(0);
          v53 = _StringGuts.foreignErrorCorrectedGrapheme(startingAt:endingAt:)(0, v52);
          object = v53._object;
          countAndFlagsBits = v53._countAndFlagsBits;
          goto LABEL_39;
        }

        if ((v27 & 0x2000000000000000) == 0)
        {
          break;
        }

        if (v30 == 1)
        {
          *&v251[0] = v29;
          *(&v251[0] + 1) = v27 & 0xFFFFFFFFFFFFFFLL;
          v45 = 1;
        }

        else
        {
          if (v29 == 2573 || (v29 & 0x8080) != 0)
          {
            v54 = _StringGuts._opaqueComplexCharacterStride(startingAt:)(0);
            if (v54 < 0)
            {
              goto LABEL_270;
            }

            v45 = v54;
          }

          else
          {
            v45 = 1;
          }

          *&v251[0] = v29;
          *(&v251[0] + 1) = v27 & 0xFFFFFFFFFFFFFFLL;
          if (v30 < v45)
          {
            goto LABEL_271;
          }
        }

        v46 = _allASCII(_:)(v251, v45);
        v43 = v251;
        v41 = v46;
        v44 = v45;
LABEL_38:
        countAndFlagsBits = specialized static String._uncheckedFromUTF8(_:isASCII:)(v43, v44, v41, v42);
LABEL_39:
        v49 = object;
        if (countAndFlagsBits == 46 && object == 0xE100000000000000)
        {
          v27;
          0xE100000000000000;
          v27 = 0xE100000000000000;
        }

        else
        {
          if ((~object & 0x6000000000000000) == 0)
          {
            object;
            0xE100000000000000;
LABEL_45:
            v51 = v243;
            a7 = v242;
            v23(v29, v27, v243, v242);
            v27;
            v27 = 0xE200000000000000;
            v23(8250, 0xE200000000000000, v51, a7);
            goto LABEL_8;
          }

          v50 = _stringCompareInternal(_:_:expecting:)(countAndFlagsBits, object, 0x2EuLL, 0xE100000000000000, 0);
          v49;
          0xE100000000000000;
          if ((v50 & 1) == 0)
          {
            goto LABEL_45;
          }

          a7 = v242;
        }

LABEL_8:
        v27;
LABEL_9:
        _debugPrint_unlocked<A, B>(_:_:)(&v245, v244, byte_1EEEAC6F8, v243, a7);
        v28 = __swift_destroy_boxed_opaque_existential_1Tm(&v245);
        (v25)(&v245, v28);
        v26 = 0;
        v249 = v246;
        v250 = v247;
        v248 = v245;
        if (!*(&v247 + 1))
        {
          goto LABEL_87;
        }
      }

      if ((v29 & 0x1000000000000000) != 0)
      {
        v33 = ((v27 & 0xFFFFFFFFFFFFFFFLL) + 32);
        v34 = v29 & 0xFFFFFFFFFFFFLL;
        if (v31 != 1)
        {
          goto LABEL_21;
        }
      }

      else
      {
        v33 = _StringObject.sharedUTF8.getter(v29, v27);
        v31 = v29 & 0xFFFFFFFFFFFFLL;
        if (v34 != 1)
        {
LABEL_21:
          if (!v33)
          {
            _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
          }

          v35 = *v33;
          if (v35 != 2573 && (v35 & 0x80808080) == 0)
          {
            v34 = 1;
          }

          else
          {
            v57 = v31;
            v58 = _StringGuts._opaqueComplexCharacterStride(startingAt:)(0);
            if (v58 < 0)
            {
LABEL_270:
              _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
            }

            v34 = v58;
            v31 = v57;
          }
        }
      }

      if ((v29 & 0x1000000000000000) != 0)
      {
        v37 = ((v27 & 0xFFFFFFFFFFFFFFFLL) + 32);
        if (v31 < v34)
        {
          goto LABEL_271;
        }
      }

      else
      {
        v55 = v34;
        v37 = _StringObject.sharedUTF8.getter(v29, v27);
        v31 = v56;
        v34 = v55;
        if (v31 < v55)
        {
          goto LABEL_271;
        }
      }

      v38 = _sSR8rebasingSRyxGs5SliceVyABG_tcfCs5UInt8V_Tt0g5Tm(0, v34, v37, v31);
      v40 = v39;
      v41 = _allASCII(_:)(v38, v39);
      v43 = v38;
      v44 = v40;
      a7 = v242;
      goto LABEL_38;
    }

    goto LABEL_71;
  }

  v84 = v11;
  v85 = v10;
  v86 = v12;
  v87 = swift_EnumCaseName(v10, v12);
  if (v87 && (v88 = specialized String.init(validatingUTF8:)(v87), v89))
  {
    v90 = v89;
    if (v84)
    {
      v91 = v88;
      v92 = v242;
      printTypeName #1 <A, B>(_:) in _adHocPrint_unlocked<A, B>(_:_:_:isDebugPrint:)(v17, v244, 1, a6, v242);
      v93 = *(v92 + 24);
      v93(46, 0xE100000000000000, a6, v92);
      0xE100000000000000;
      v88 = v91;
      a3 = v244;
    }

    else
    {
      v92 = v242;
      v93 = *(v242 + 24);
    }

    v93(v88, v90, a6, v92);
    v100 = v90;
  }

  else
  {
    printTypeName #1 <A, B>(_:) in _adHocPrint_unlocked<A, B>(_:_:_:isDebugPrint:)(v17, a3, v84 & 1, a6, v242);
    v94 = _fallbackEnumRawValue<A>(_:)(v85, v86);
    if (v95)
    {
      goto LABEL_164;
    }

    v96 = v94;
    v97 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("(rawValue: ", 0xBuLL, 1);
    v98 = v242;
    v99 = *(v242 + 24);
    v99(v97._countAndFlagsBits);
    v97._object;
    *&v248 = v96;
    _debugPrint_unlocked<A, B>(_:_:)(&v248, v244, &type metadata for Int64, a6, v98);
    (v99)(41, 0xE100000000000000, a6, v98);
    a3 = v244;
    v100 = 0xE100000000000000;
  }

  v100;
LABEL_164:
  v151 = v18[2];
  v152 = v18[3];
  if ((specialized static AnyIndex.== infix(_:_:)(v151, v152, v18[4], v18[5]) & 1) == 0)
  {
    (*(*v18 + 256))(&v245, v151, v152);
    v248 = v245;
    outlined init with take of Any(&v246, &v249);
    *(&v248 + 1);
    outlined init with take of Any(&v249, v251);
    outlined init with copy of Any(v251, &v245);
    Mirror.init(reflecting:)(&v245, &v248);
    v153 = *(&v248 + 1);
    v154 = v249;
    v250;
    v153;
    if (v154 == 9)
    {
      v155 = v242;
    }

    else
    {
      v155 = v242;
      if (v154 == 3)
      {
        _debugPrint_unlocked<A, B>(_:_:)(v251, a3, byte_1EEEAC6F8, a6, v242);
        __swift_destroy_boxed_opaque_existential_1Tm(v251);
        return;
      }
    }

    v156 = *(v155 + 24);
    v156(40, 0xE100000000000000, a6, v155);
    0xE100000000000000;
    _debugPrint_unlocked<A, B>(_:_:)(v251, a3, byte_1EEEAC6F8, a6, v155);
    __swift_destroy_boxed_opaque_existential_1Tm(v251);
    v156(41, 0xE100000000000000, a6, v155);
    v61 = 0xE100000000000000;
    goto LABEL_264;
  }
}

void printTypeName #1 <A, B>(_:) in _adHocPrint_unlocked<A, B>(_:_:_:isDebugPrint:)(unint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5)
{
  TypeName = swift_getTypeName(a1, a3);
  if (v8 < 0)
  {
    goto LABEL_183;
  }

  v9 = TypeName;
  v10 = v8;
  if (_allASCII(_:)(TypeName, v8))
  {
    v12 = 1;
LABEL_4:
    if (v10)
    {
      if (v10 > 15)
      {
        v13 = specialized static __StringStorage.create(initializingFrom:codeUnitCapacity:isASCII:)(v9, v10, v10, v12 & 1);
        v14 = *(v13 + 24);
        goto LABEL_173;
      }

      v75 = v10 - 8;
      v76 = 8;
      if (v10 < 8)
      {
        v76 = v10;
      }

      if (v10 >= 4)
      {
        v78 = v76 & 0xC;
        v11.i32[0] = *v9;
        v79 = vmovl_u16(*&vmovl_u8(v11));
        v80.i64[0] = v79.u32[0];
        v80.i64[1] = v79.u32[1];
        v81.i64[0] = 255;
        v81.i64[1] = 255;
        v82 = vandq_s8(v80, v81);
        v80.i64[0] = v79.u32[2];
        v80.i64[1] = v79.u32[3];
        v83 = vshlq_u64(vandq_s8(v80, v81), xmmword_18071DBA0);
        v84.i32[1] = 0;
        v85 = vshlq_u64(v82, xmmword_18071DBB0);
        if (v78 != 4)
        {
          v84.i32[0] = *(v9 + 4);
          v86 = vmovl_u16(*&vmovl_u8(v84));
          v87.i64[0] = v86.u32[2];
          v87.i64[1] = v86.u32[3];
          v88 = vandq_s8(v87, v81);
          v87.i64[0] = v86.u32[0];
          v87.i64[1] = v86.u32[1];
          v83 = vorrq_s8(vshlq_u64(v88, xmmword_18071DBD0), v83);
          v85 = vorrq_s8(vshlq_u64(vandq_s8(v87, v81), xmmword_18071DBC0), v85);
        }

        v89 = vorrq_s8(v85, v83);
        v14 = vorr_s8(*v89.i8, *&vextq_s8(v89, v89, 8uLL));
        if (v76 == v78)
        {
          goto LABEL_165;
        }

        v77 = 8 * v78;
      }

      else
      {
        v14 = 0;
        v77 = 0;
        v78 = 0;
      }

      v90 = v76 - v78;
      v91 = (v9 + v78);
      do
      {
        v92 = *v91++;
        *&v14 |= v92 << (v77 & 0x38);
        v77 += 8;
        --v90;
      }

      while (v90);
LABEL_165:
      if (v10 < 9)
      {
        v93 = 0;
      }

      else
      {
        v93 = 0;
        v94 = 0;
        v95 = (v9 + 8);
        do
        {
          v96 = *v95++;
          v93 |= v96 << v94;
          v94 += 8;
          --v75;
        }

        while (v75);
      }

      v97 = 0xA000000000000000;
      if (((v93 | *&v14) & 0x8080808080808080) == 0)
      {
        v97 = 0xE000000000000000;
      }

      v13 = v97 | (v10 << 56) | v93;
      goto LABEL_173;
    }

LABEL_54:
    v14 = 0;
    v13 = 0xE000000000000000;
    goto LABEL_173;
  }

  if (!v10)
  {
    goto LABEL_54;
  }

  v15 = (v9 + v10);
  v12 = 1;
  v16 = v9;
  v17 = 0;
  v18 = v9;
  while (1)
  {
    v20 = *v18++;
    v19 = v20;
    if ((v20 & 0x80000000) == 0)
    {
      v21 = 1;
      goto LABEL_11;
    }

    if ((v19 + 11) <= 0xCCu)
    {
      LOBYTE(v101) = _diagnoseInvalidUTF8MultiByteLeading(_:)(v19);
      goto LABEL_56;
    }

    if (v19 <= 0xDFu)
    {
      break;
    }

    if (v19 == 224)
    {
      if (v18 == v15)
      {
        goto LABEL_174;
      }

      if (v16[1] - 192 < 0xFFFFFFE0)
      {
        goto LABEL_176;
      }

      goto LABEL_39;
    }

    if (v19 <= 0xECu)
    {
      goto LABEL_37;
    }

    if (v19 == 237)
    {
      if (v18 == v15)
      {
        goto LABEL_174;
      }

      v22 = v16[1];
      if (v22 > 0x9F || (v22 & 0xC0) != 0x80)
      {
        v98 = 1;
        goto LABEL_175;
      }

LABEL_39:
      if (v16 + 2 == v15 || (v16[2] & 0xC0) != 0x80)
      {
        goto LABEL_174;
      }

      v12 = 0;
      v18 = v16 + 3;
      v21 = 3;
      goto LABEL_11;
    }

    if (v19 <= 0xEFu)
    {
LABEL_37:
      if (v18 == v15 || (v16[1] & 0xC0) != 0x80)
      {
        goto LABEL_174;
      }

      goto LABEL_39;
    }

    if (v19 == 240)
    {
      if (v18 == v15)
      {
        goto LABEL_174;
      }

      if (v16[1] - 192 < 0xFFFFFFD0)
      {
LABEL_176:
        v98 = 3;
        goto LABEL_175;
      }

      if (v16 + 2 == v15 || (v16[2] & 0xC0) != 0x80 || v16 + 3 == v15 || (v16[3] & 0xC0) != 0x80)
      {
        goto LABEL_174;
      }

      v12 = 0;
      v18 = v16 + 4;
      v21 = 4;
    }

    else
    {
      if (v19 <= 0xF3u)
      {
        if (v18 == v15 || (v16[1] & 0xC0) != 0x80)
        {
          goto LABEL_174;
        }
      }

      else
      {
        if (v18 == v15)
        {
          goto LABEL_174;
        }

        v23 = v16[1];
        if (v23 > 0x8F || (v23 & 0xC0) != 0x80)
        {
          goto LABEL_190;
        }
      }

      if (v16 + 2 == v15 || (v16[2] & 0xC0) != 0x80 || v16 + 3 == v15 || (v16[3] & 0xC0) != 0x80)
      {
        goto LABEL_174;
      }

      v12 = 0;
      v18 = v16 + 4;
      v21 = 4;
    }

LABEL_11:
    v17 += v21;
    v16 = v18;
    if (v18 == v15)
    {
      goto LABEL_4;
    }
  }

  if (v18 != v15 && (*v18 & 0xC0) == 0x80)
  {
    v12 = 0;
    v18 = v16 + 2;
    v21 = 2;
    goto LABEL_11;
  }

LABEL_174:
  v98 = 4;
LABEL_175:
  while (2)
  {
    LOBYTE(v101) = v98;
LABEL_56:
    swift_willThrowTypedImpl(&v101, &type metadata for _UTF8EncodingErrorKind, &protocol witness table for _UTF8EncodingErrorKind);
    v24 = specialized Collection.subscript.getter(v17, v9, v10);
    v17 = v24;
    v28 = v25;
    v29 = v26;
    v30 = v27;
    v31 = v24;
    if (v24 != v25)
    {
      specialized Slice.subscript.getter(v24, v24, v25, v26, v27);
      v31 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        goto LABEL_183;
      }
    }

    v99 = a4;
    a4 = v17;
    if (v31 != v28)
    {
      v32 = specialized Slice.subscript.getter(v31, v17, v28, v29, v30);
      v33 = __OFADD__(v31, 1);
      v34 = v31 + 1;
      if (v33)
      {
        goto LABEL_183;
      }

      a4 = v17;
      if ((v32 & 0xC0) == 0x80)
      {
        a4 = v17 + 1;
        if (__OFADD__(v17, 1))
        {
          goto LABEL_191;
        }

        if (v17 + 1 <= v17)
        {
          goto LABEL_183;
        }

        if (v34 != v28)
        {
          v35 = specialized Slice.subscript.getter(v34, v17, v28, v29, v30);
          v33 = __OFADD__(v34, 1);
          v36 = v34 + 1;
          if (v33)
          {
            goto LABEL_183;
          }

          if ((v35 & 0xC0) == 0x80)
          {
            v33 = __OFADD__(a4, 1);
            a4 = v17 + 2;
            if (v33)
            {
              goto LABEL_191;
            }

            if (v17 + 2 <= v17)
            {
              goto LABEL_183;
            }

            if (v36 != v28)
            {
              v37 = specialized Slice.subscript.getter(v36, v17, v28, v29, v30);
              if (v36 == 0x7FFFFFFFFFFFFFFFLL)
              {
                goto LABEL_183;
              }

              if ((v37 & 0xC0) == 0x80)
              {
                v33 = __OFADD__(a4, 1);
                a4 = v17 + 3;
                if (!v33)
                {
                  if (v17 + 3 <= v17)
                  {
                    goto LABEL_183;
                  }

                  goto LABEL_73;
                }

LABEL_191:
                __break(1u);
LABEL_183:
                _fatalErrorMessage(_:_:file:line:flags:)("Fatal error", 11, 2);
              }
            }
          }
        }
      }

LABEL_73:
      if (a4 < v17)
      {
        _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
      }
    }

    v38 = a4 + 1;
    if (__OFADD__(a4, 1))
    {
      __break(1u);
      goto LABEL_183;
    }

    if (v28 < v38)
    {
      goto LABEL_183;
    }

    v39 = _legacyNarrowIllegalRange #1 (buf:) in validateUTF8(_:)(v17, v38, v29, v30);
    v101 = 0;
    v102 = 0xE000000000000000;
    v41 = v10 + 15;
    if (__OFADD__(v10, 15))
    {
      __break(1u);
LABEL_190:
      v98 = 2;
      continue;
    }

    break;
  }

  v42 = v39;
  v43 = v40;
  if (v41 >= 16)
  {
    v44 = _StringGuts.uniqueNativeCapacity.getter();
    if ((v45 & 1) != 0 || v44 < v41)
    {
      _StringGuts.grow(_:)(v10 + 15);
    }
  }

LABEL_81:
  if (v42 < 0)
  {
LABEL_177:
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  v46 = v10;
  if (v10 < v42)
  {
    goto LABEL_183;
  }

  v47 = v101 & 0xFFFFFFFFFFFFLL;
  if ((v102 & 0x2000000000000000) != 0)
  {
    v47 = HIBYTE(v102) & 0xF;
  }

  v33 = __OFADD__(v47, v10);
  v48 = v47 + v10;
  if (v33)
  {
    __break(1u);
LABEL_181:
    __break(1u);
LABEL_182:
    __break(1u);
    goto LABEL_183;
  }

  v49 = v48 + 3;
  if (__OFADD__(v48, 3))
  {
    goto LABEL_181;
  }

  if (v49 >= 16 && ((v50 = _StringGuts.uniqueNativeCapacity.getter(), (v51 & 1) != 0) || v50 < v49))
  {
    _StringGuts.grow(_:)(v49);
    if (v42)
    {
      goto LABEL_91;
    }
  }

  else if (v42)
  {
LABEL_91:
    if (!v9)
    {
      goto LABEL_183;
    }
  }

  v13 = v102;
  v52 = v102 & 0xFFFFFFFFFFFFFFFLL;
  v53 = (v102 & 0xFFFFFFFFFFFFFFFLL) + 32;
  specialized UnsafeMutablePointer.initialize(from:count:)(v9, v42, (v53 + (*((v102 & 0xFFFFFFFFFFFFFFFLL) + 0x18) & 0xFFFFFFFFFFFFLL)));
  v54 = *(v52 + 24) & 0xFFFFFFFFFFFFLL;
  v55 = v54 + v42;
  if (__OFADD__(v54, v42))
  {
    goto LABEL_182;
  }

  v56 = v55 | 0x3000000000000000;
  *(v52 + 24) = v55 | 0x3000000000000000;
  *(v53 + (v55 & 0xFFFFFFFFFFFFLL)) = 0;
  v57 = *(v52 + 16);
  if (v57 < 0)
  {
    v58 = ((v53 + (v57 & 0xFFFFFFFFFFFFLL) + 7) & 0x7FFFFFFFFFFFFFF8);
    v59 = *v58;
    *v58 = 0;
    v59;
    v56 = *(v52 + 24);
  }

  v101 = v56;
  specialized Unicode.Scalar.withUTF8CodeUnits<A>(_:)(0xFFFDu, &v101);
  if (v46 < v43)
  {
    goto LABEL_177;
  }

  if (v43 < 0)
  {
    goto LABEL_183;
  }

  v10 = v46 - v43;
  if (v46 - v43 < 0 || v10 && !v9)
  {
    goto LABEL_183;
  }

  v60 = (v9 + v43);
  if (!_allASCII(_:)((v9 + v43), v46 - v43) && v46 != v43)
  {
    v61 = 0;
    v62 = (v9 + v46);
    v63 = v60;
    v64 = v60;
    do
    {
      v66 = *v64++;
      v65 = v66;
      if ((v66 & 0x80000000) == 0)
      {
        v67 = 1;
        goto LABEL_105;
      }

      if ((v65 + 11) <= 0xCCu)
      {
        v100[0] = _diagnoseInvalidUTF8MultiByteLeading(_:)(v65);
        goto LABEL_145;
      }

      if (v65 <= 0xDFu)
      {
        if (v64 == v62 || (*v64 & 0xC0) != 0x80)
        {
LABEL_149:
          v100[0] = 4;
          goto LABEL_145;
        }

        v64 = v63 + 2;
        v67 = 2;
      }

      else
      {
        if (v65 == 224)
        {
          if (v64 == v62)
          {
            goto LABEL_149;
          }

          if (v63[1] - 192 < 0xFFFFFFE0)
          {
            goto LABEL_150;
          }

          goto LABEL_129;
        }

        if (v65 <= 0xECu)
        {
          goto LABEL_127;
        }

        if (v65 == 237)
        {
          if (v64 == v62)
          {
            goto LABEL_149;
          }

          v68 = v63[1];
          if (v68 > 0x9F || (v68 & 0xC0) != 0x80)
          {
            v100[0] = 1;
            goto LABEL_145;
          }

          goto LABEL_129;
        }

        if (v65 <= 0xEFu)
        {
LABEL_127:
          if (v64 == v62 || (v63[1] & 0xC0) != 0x80)
          {
            goto LABEL_149;
          }

LABEL_129:
          if (v63 + 2 == v62 || (v63[2] & 0xC0) != 0x80)
          {
            goto LABEL_149;
          }

          v64 = v63 + 3;
          v67 = 3;
          goto LABEL_105;
        }

        if (v65 == 240)
        {
          if (v64 == v62)
          {
            goto LABEL_149;
          }

          if (v63[1] - 192 < 0xFFFFFFD0)
          {
LABEL_150:
            v100[0] = 3;
            goto LABEL_145;
          }
        }

        else if (v65 <= 0xF3u)
        {
          if (v64 == v62 || (v63[1] & 0xC0) != 0x80)
          {
            goto LABEL_149;
          }
        }

        else
        {
          if (v64 == v62)
          {
            goto LABEL_149;
          }

          v69 = v63[1];
          if (v69 > 0x8F || (v69 & 0xC0) != 0x80)
          {
            v100[0] = 2;
LABEL_145:
            swift_willThrowTypedImpl(v100, &type metadata for _UTF8EncodingErrorKind, &protocol witness table for _UTF8EncodingErrorKind);
            v70 = specialized Collection.subscript.getter(v61, v60, v10);
            v42 = findInvalidRange #1 (_:) in validateUTF8(_:)(v70, v71, v72, v73);
            v43 = v74;
            v9 = v60;
            if (!v10)
            {
              v14 = v101;
              v13 = v102;
              goto LABEL_154;
            }

            goto LABEL_81;
          }
        }

        if (v63 + 2 == v62 || (v63[2] & 0xC0) != 0x80 || v63 + 3 == v62 || (v63[3] & 0xC0) != 0x80)
        {
          goto LABEL_149;
        }

        v64 = v63 + 4;
        v67 = 4;
      }

LABEL_105:
      v61 += v67;
      v63 = v64;
    }

    while (v64 != v62);
  }

  __StringStorage.appendInPlace(_:isASCII:)(v60, v10, 0);
  v14 = *(v52 + 24);
LABEL_154:
  a4 = v99;
LABEL_173:
  (*(a5 + 24))(v14, v13, a4, a5);
  v13;
}

uint64_t String.subscript.getter(Swift::String::Index a1, uint64_t a2, unint64_t a3)
{
  v5._rawBits = _StringGuts.validateScalarIndex(_:)(a1)._rawBits;
  v6 = (v5._rawBits >> 8) & 0x3F;
  v7 = v5._rawBits >> 16;
  if (v6)
  {
LABEL_24:
    v10 = v6 + v7;
    if ((a3 & 0x1000000000000000) == 0)
    {
      goto LABEL_25;
    }

    goto LABEL_38;
  }

  v8 = a2 & 0xFFFFFFFFFFFFLL;
  if ((a3 & 0x2000000000000000) != 0)
  {
    v9 = HIBYTE(a3) & 0xF;
  }

  else
  {
    v9 = a2 & 0xFFFFFFFFFFFFLL;
  }

  if (v5._rawBits >> 14 == 4 * v9)
  {
    v6 = 0;
    v10 = v5._rawBits >> 16;
    if ((a3 & 0x1000000000000000) != 0)
    {
      goto LABEL_38;
    }

LABEL_25:
    if (v10 < v7)
    {
      _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
    }

    if ((a3 & 0x2000000000000000) != 0)
    {
      v29 = a2;
      v30 = a3 & 0xFFFFFFFFFFFFFFLL;
      if ((HIBYTE(a3) & 0xF) >= v10 && (v6 & 0x8000000000000000) == 0)
      {
        v24 = _allASCII(_:)((&v29 + v7), v6);
        v22 = &v29 + v7;
        v20 = v24;
        v23 = v6;
        return specialized static String._uncheckedFromUTF8(_:isASCII:)(v22, v23, v20, v21);
      }
    }

    else if ((a2 & 0x1000000000000000) != 0)
    {
      v15 = ((a3 & 0xFFFFFFFFFFFFFFFLL) + 32);
      v16 = a2 & 0xFFFFFFFFFFFFLL;
      if ((a2 & 0xFFFFFFFFFFFFLL) >= v10)
      {
LABEL_29:
        v17 = _sSR8rebasingSRyxGs5SliceVyABG_tcfCs5UInt8V_Tt0g5Tm(v7, v10, v15, v16);
        v19 = v18;
        v20 = _allASCII(_:)(v17, v18);
        v22 = v17;
        v23 = v19;
        return specialized static String._uncheckedFromUTF8(_:isASCII:)(v22, v23, v20, v21);
      }
    }

    else
    {
      v26 = a2;
      v27 = v10;
      v15 = _StringObject.sharedUTF8.getter(v26, a3);
      v16 = v28;
      v10 = v27;
      if (v16 >= v27)
      {
        goto LABEL_29;
      }
    }

    _fatalErrorMessage(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  if ((a3 & 0x1000000000000000) != 0)
  {
    goto LABEL_37;
  }

  if ((a3 & 0x2000000000000000) != 0)
  {
    v29 = a2;
    v30 = a3 & 0xFFFFFFFFFFFFFFLL;
    if (v7 + 1 != (HIBYTE(a3) & 0xF))
    {
      v13 = *(&v29 + v7);
      if (v13 == 2573 || (v13 & 0x80808080) != 0)
      {
        goto LABEL_37;
      }
    }

    goto LABEL_23;
  }

  if ((a2 & 0x1000000000000000) != 0)
  {
    v11 = ((a3 & 0xFFFFFFFFFFFFFFFLL) + 32);
  }

  else
  {
    v11 = _StringObject.sharedUTF8.getter(a2, a3);
  }

  if (v7 + 1 == v8)
  {
    goto LABEL_23;
  }

  if (!v11)
  {
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  v12 = *&v11[v7];
  if (v12 != 2573 && (v12 & 0x80808080) == 0)
  {
LABEL_23:
    v6 = 1;
    goto LABEL_24;
  }

LABEL_37:
  v6 = _StringGuts._opaqueComplexCharacterStride(startingAt:)(v7);
  v10 = v6 + v7;
  if ((a3 & 0x1000000000000000) == 0)
  {
    goto LABEL_25;
  }

LABEL_38:

  return _StringGuts.foreignErrorCorrectedGrapheme(startingAt:endingAt:)(v7, v10)._countAndFlagsBits;
}

Swift::Void __swiftcall _Stdout.write(_:)(Swift::String a1)
{
  v1 = HIBYTE(a1._object) & 0xF;
  if ((a1._object & 0x2000000000000000) == 0)
  {
    v1 = a1._countAndFlagsBits & 0xFFFFFFFFFFFFLL;
  }

  if (v1)
  {
    object = a1._object;
    countAndFlagsBits = a1._countAndFlagsBits;
    a1._object;
    if ((object & 0x1000000000000000) != 0)
    {
      countAndFlagsBits = specialized static String._copying(_:)(countAndFlagsBits, object);
      v7 = v6;
      object;
      object = v7;
      if ((v7 & 0x2000000000000000) == 0)
      {
        goto LABEL_6;
      }
    }

    else if ((object & 0x2000000000000000) == 0)
    {
LABEL_6:
      if ((countAndFlagsBits & 0x1000000000000000) != 0)
      {
        v4 = ((object & 0xFFFFFFFFFFFFFFFLL) + 32);
        v5 = countAndFlagsBits & 0xFFFFFFFFFFFFLL;
      }

      else
      {
        v4 = _StringObject.sharedUTF8.getter(countAndFlagsBits, object);
        if (!v4)
        {
          _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
        }

        v5 = v8;
      }

      _swift_stdlib_fwrite_stdout(v4, 1uLL, v5);

      object;
      return;
    }

    v9[0] = countAndFlagsBits;
    v9[1] = object & 0xFFFFFFFFFFFFFFLL;
    _swift_stdlib_fwrite_stdout(v9, 1uLL, HIBYTE(object) & 0xF);
    object;
  }
}

void protocol witness for TextOutputStream._writeASCII(_:) in conformance _Stdout(uint64_t a1, uint64_t a2, uint8x8_t a3)
{
  v3._countAndFlagsBits = specialized static String._uncheckedFromASCII(_:)(a1, a2, a3);
  object = v3._object;
  _Stdout.write(_:)(v3);

  object;
}

uint64_t _StringGuts.init(_:isASCII:)(uint64_t a1, unint64_t a2, char a3)
{
  v3 = a2 | 0xC000000000000000;
  if ((a3 & 1) == 0)
  {
    v3 = a2;
  }

  return v3 | 0x1000000000000000;
}

void _StringGuts.append(_:)(unint64_t a1, unint64_t a2, double a3, double a4, double a5, double a6, double a7, double a8, double a9, int8x16_t a10)
{
  v11 = v10[1];
  if ((v11 & 0x2000000000000000) == 0)
  {
    if ((a2 & 0x2000000000000000) != 0)
    {
      v12 = HIBYTE(a2) & 0xF;
      goto LABEL_6;
    }

LABEL_5:
    v12 = a1 & 0xFFFFFFFFFFFFLL;
    goto LABEL_6;
  }

  if ((a2 & 0x2000000000000000) == 0)
  {
    goto LABEL_5;
  }

  v13 = a1;
  v14 = a2;
  v15 = specialized _SmallString.init(_:appending:)(*v10, v10[1], a1, a2);
  if ((v17 & 1) == 0)
  {
    v18 = v15;
    v19 = v16;
    v11;
    *v10 = v18;
    v10[1] = v19;
    return;
  }

  a2 = v14;
  v12 = HIBYTE(v14) & 0xF;
  a1 = v13;
LABEL_6:

  _StringGuts.append(_:)(a1, a2, 0, v12, a3, a4, a5, a6, a7, a8, a9, a10);
}

void Unicode.Scalar.write<A>(to:)(uint64_t a1, unsigned int a2, uint64_t a3, uint64_t a4)
{
  v5 = specialized Unicode.Scalar.withUTF8CodeUnits<A>(_:)(a2);
  v7 = v6;
  (*(a4 + 24))(v5);

  v7;
}

uint64_t _playgroundPrintHook.getter()
{
  v0 = _playgroundPrintHook;
  outlined copy of (@escaping @callee_guaranteed (@guaranteed String) -> ())?(_playgroundPrintHook, qword_1EA79EC28);
  return v0;
}

uint64_t _playgroundPrintHook.setter(uint64_t a1, uint64_t a2)
{
  v2 = _playgroundPrintHook;
  v3 = qword_1EA79EC28;
  _playgroundPrintHook = a1;
  qword_1EA79EC28 = a2;
  return outlined consume of (@escaping @callee_guaranteed (@guaranteed String) -> ())?(v2, v3);
}

Swift::Void __swiftcall _TeeStream.write(_:)(Swift::String a1)
{
  v2 = v1;
  object = a1._object;
  countAndFlagsBits = a1._countAndFlagsBits;
  (*(*(v1 + 32) + 24))(a1._countAndFlagsBits, a1._object, *(v1 + 16));
  (*(*(v2 + 40) + 24))(countAndFlagsBits, object, *(v2 + 24));
}

Swift::Void __swiftcall _TeeStream._lock()()
{
  v1 = v0;
  (*(*(v0 + 32) + 8))(*(v0 + 16));
  (*(*(v1 + 40) + 8))(*(v1 + 24));
}

Swift::Void __swiftcall _TeeStream._unlock()()
{
  v1 = v0;
  (*(*(v0 + 40) + 16))(*(v0 + 24));
  v2 = *(*(v1 + 32) + 16);
  v3 = *(v1 + 16);

  v2(v3);
}

uint64_t _Pointer.successor()(unint64_t a1, uint64_t a2)
{
  v4 = (*(a2 + 48))();
  swift_getAssociatedTypeWitness(0, a2, a1, &protocol requirements base descriptor for _Pointer, associated type descriptor for _Pointer.Pointee);
  return (*(a2 + 56))(v4 + *(*(v5 - 8) + 72), a1, a2);
}

uint64_t _Pointer.predecessor()(unint64_t a1, uint64_t a2)
{
  v4 = (*(a2 + 48))();
  swift_getAssociatedTypeWitness(0, a2, a1, &protocol requirements base descriptor for _Pointer, associated type descriptor for _Pointer.Pointee);
  return (*(a2 + 56))(v4 - *(*(v5 - 8) + 72), a1, a2);
}

uint64_t static Strideable<>.-= infix(_:_:)(const void *a1, uint64_t a2, const char *a3, uint64_t a4)
{
  v7 = *(a4 + 32);
  swift_getAssociatedTypeWitness(0, v7, a3, &protocol requirements base descriptor for Strideable, associated type descriptor for Strideable.Stride);
  v9 = v8;
  v10 = *(v8 - 8);
  v11 = MEMORY[0x1EEE9AC00](v8);
  v13 = &v17 - v12;
  MEMORY[0x1EEE9AC00](v11);
  memcpy(&v17 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v14);
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness(v7, a3, v9, &protocol requirements base descriptor for Strideable, associated conformance descriptor for Strideable.Strideable.Stride: SignedNumeric);
  (*(AssociatedConformanceWitness + 16))(a2, v9, AssociatedConformanceWitness);
  (*(v7 + 48))(v13, a3, v7);
  return (*(v10 + 8))(v13, v9);
}

void *_convertConstArrayToPointerArgument<A, B>(_:)(uint64_t a1, int64_t a2, uint64_t *a3, uint64_t a4, uint64_t a5)
{
  a2;
  if (!_swift_isClassOrObjCExistentialType(a3, a3) || (a2 & 0x8000000000000000) == 0 && (a2 & 0x4000000000000000) == 0)
  {
    a2;
    if (_swift_isClassOrObjCExistentialType(a3, a3))
    {
      v9 = ((*(*(a3 - 1) + 80) + 32) & ~*(*(a3 - 1) + 80)) + (a2 & 0xFFFFFFFFFFFFFF8);
    }

    else
    {
      v9 = a2 + ((*(*(a3 - 1) + 80) + 32) & ~*(*(a3 - 1) + 80));
    }

LABEL_7:
    if (_swift_isClassOrObjCExistentialType(a3, a3) && (a2 < 0 || (a2 & 0x4000000000000000) != 0))
    {
      if (a2 < 0)
      {
        v10 = a2;
      }

      else
      {
        v10 = (a2 & 0xFFFFFFFFFFFFFF8);
      }

      swift_unknownObjectRetain(v10);
      if (v9)
      {
        goto LABEL_14;
      }
    }

    else
    {
      if (_swift_isClassOrObjCExistentialType(a3, a3))
      {
        v10 = (a2 & 0xFFFFFFFFFFFFFF8);
      }

      else
      {
        v10 = a2;
      }

      a2;
      if (v9)
      {
        goto LABEL_14;
      }
    }

    (*(a5 + 56))((~*(*(a3 - 1) + 80) | 0xFFFFFF00), a4, a5);
    return v10;
  }

  if (!Array._getCount()())
  {
    a2;
    v9 = 0;
    goto LABEL_7;
  }

  v14 = type metadata accessor for _ArrayBuffer(0, a3, v11, v12);
  WitnessTable = swift_getWitnessTable(protocol conformance descriptor for _ArrayBuffer<A>, v14, v15);
  v10 = (*(WitnessTable + 56))(v14, WitnessTable);
  v9 = v10 + ((*(*(a3 - 1) + 80) + 32) & ~*(*(a3 - 1) + 80));
LABEL_14:
  (*(a5 + 56))(v9, a4, a5);
  return v10;
}

void *_convertMutableArrayToPointerArgument<A, B>(_:)(uint64_t a1, unint64_t *a2, uint64_t *a3, uint64_t a4, uint64_t a5)
{
  v9 = type metadata accessor for Array(0, a3, a3, a4);
  Array._reserveCapacityImpl(minimumCapacity:growForAppend:)(0, 0);
  v10 = *a2;
  if (_swift_isClassOrObjCExistentialType(a3, a3) && ((v10 & 0x8000000000000000) != 0 || (v10 & 0x4000000000000000) != 0))
  {
    WitnessTable = swift_getWitnessTable(protocol conformance descriptor for [A], v9, v11);
    if ((Collection.isEmpty.getter(v9, WitnessTable) & 1) == 0)
    {
      _fatalErrorMessage(_:_:file:line:flags:)("Fatal error", 11, 2);
    }
  }

  else
  {
    _swift_isClassOrObjCExistentialType(a3, a3);
  }

  v12 = *a2;
  *a2;
  if (!_swift_isClassOrObjCExistentialType(a3, a3) || (v12 & 0x8000000000000000) == 0 && (v12 & 0x4000000000000000) == 0)
  {
    v12;
    if (_swift_isClassOrObjCExistentialType(a3, a3))
    {
      v13 = ((*(*(a3 - 1) + 80) + 32) & ~*(*(a3 - 1) + 80)) + (v12 & 0xFFFFFFFFFFFFFF8);
    }

    else
    {
      v13 = v12 + ((*(*(a3 - 1) + 80) + 32) & ~*(*(a3 - 1) + 80));
    }

LABEL_11:
    if (_swift_isClassOrObjCExistentialType(a3, a3) && (v12 < 0 || (v12 & 0x4000000000000000) != 0))
    {
      if (v12 < 0)
      {
        v14 = v12;
      }

      else
      {
        v14 = (v12 & 0xFFFFFFFFFFFFFF8);
      }

      swift_unknownObjectRetain(v14);
      if (v13)
      {
        goto LABEL_18;
      }
    }

    else
    {
      if (_swift_isClassOrObjCExistentialType(a3, a3))
      {
        v14 = (v12 & 0xFFFFFFFFFFFFFF8);
      }

      else
      {
        v14 = v12;
      }

      v12;
      if (v13)
      {
        goto LABEL_18;
      }
    }

    (*(a5 + 56))((~*(*(a3 - 1) + 80) | 0xFFFFFF00), a4, a5);
    return v14;
  }

  if (!Array._getCount()())
  {
    v12;
    v13 = 0;
    goto LABEL_11;
  }

  v19 = type metadata accessor for _ArrayBuffer(0, a3, v16, v17);
  v21 = swift_getWitnessTable(protocol conformance descriptor for _ArrayBuffer<A>, v19, v20);
  v14 = (*(v21 + 56))(v19, v21);
  v13 = v14 + ((*(*(a3 - 1) + 80) + 32) & ~*(*(a3 - 1) + 80));
LABEL_18:
  (*(a5 + 56))(v13, a4, a5);
  return v14;
}

__objc2_class **_convertConstStringToUTF8PointerArgument<A>(_:)(uint64_t a1, unint64_t a2, unint64_t a3, uint64_t a4, uint64_t a5)
{
  v7 = String.utf8CString.getter(a2, a3);
  (*(a5 + 56))(v7 + 4, a4, a5);
  return v7;
}

__objc2_class **String.utf8CString.getter(unint64_t a1, unint64_t a2)
{
  if ((a2 & 0x1000000000000000) == 0)
  {
    if ((a2 & 0x2000000000000000) != 0)
    {
      v11[0] = a1;
      v11[1] = a2 & 0xFFFFFFFFFFFFFFLL;
      v5 = HIBYTE(a2) & 0xF;
      v4 = v11;
    }

    else if ((a1 & 0x1000000000000000) != 0)
    {
      v4 = ((a2 & 0xFFFFFFFFFFFFFFFLL) + 32);
      v5 = a1 & 0xFFFFFFFFFFFFLL;
    }

    else
    {
      v4 = _StringObject.sharedUTF8.getter(a1, a2);
      if (!v4)
      {
        v6 = &_swiftEmptyArrayStorage;
        goto LABEL_7;
      }
    }

    v6 = specialized _copyCollectionToContiguousArray<A>(_:)(v4, v5);
LABEL_7:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native(v6);
    v11[0] = v6;
    if (!isUniquelyReferenced_nonNull_native)
    {
      specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, &v6[2]->isa + 1, 1);
      v6 = v11[0];
    }

    v9 = v6[2];
    v8 = v6[3];
    if (v9 >= v8 >> 1)
    {
      specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v8 > 1), &v9->isa + 1, 1);
      v6 = v11[0];
    }

    v6[2] = (&v9->isa + 1);
    *(&v9->info + v6) = 0;
    return v6;
  }

  return String._slowUTF8CString()(a1, a2);
}

uint64_t LazyDropWhileSequence.init(_base:predicate:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t (*a6)(void, uint64_t, uint64_t)@<X5>, uint64_t a7@<X8>)
{
  (*(*(a4 - 8) + 32))(a7, a1, a4);
  result = a6(0, a4, a5);
  v14 = (a7 + *(result + 36));
  *v14 = a2;
  v14[1] = a3;
  return result;
}

uint64_t LazyDropWhileSequence.Iterator._predicate.getter(uint64_t a1)
{
  v2 = (v1 + *(a1 + 40));
  v3 = *v2;
  v2[1];
  return v3;
}

uint64_t LazyDropWhileSequence.Iterator.init(_base:predicate:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, unint64_t a4@<X3>, int **a5@<X4>, uint64_t (*a6)(void, unint64_t, int **)@<X5>, _BYTE *a7@<X8>)
{
  *a7 = 0;
  v13 = a6(0, a4, a5);
  v14 = *(v13 + 36);
  swift_getAssociatedTypeWitness(0, a5, a4, &protocol requirements base descriptor for Sequence, associated type descriptor for Sequence.Iterator);
  result = (*(*(v15 - 8) + 32))(&a7[v14], a1, v15);
  v17 = &a7[*(v13 + 40)];
  *v17 = a2;
  v17[1] = a3;
  return result;
}

uint64_t LazyPrefixWhileSequence.Iterator.next()@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v6 = *(a1 + 16);
  v5 = *(a1 + 24);
  swift_getAssociatedTypeWitness(255, v5, v6, &protocol requirements base descriptor for Sequence, associated type descriptor for Sequence.Element);
  v8 = v7;
  v11 = type metadata accessor for Optional(0, v7, v9, v10);
  v12 = MEMORY[0x1EEE9AC00](v11);
  v14 = &v29 - v13;
  v15 = *(v8 - 8);
  v16 = MEMORY[0x1EEE9AC00](v12);
  v19 = &v29 - v18;
  v32 = v2;
  if ((*v2 & 1) == 0)
  {
    v29 = v17;
    v30 = v16;
    v31 = a2;
    swift_getAssociatedTypeWitness(255, v5, v6, &protocol requirements base descriptor for Sequence, associated type descriptor for Sequence.Iterator);
    v22 = v21;
    AssociatedConformanceWitness = swift_getAssociatedConformanceWitness(v5, v6, v21, &protocol requirements base descriptor for Sequence, associated conformance descriptor for Sequence.Sequence.Iterator: IteratorProtocol);
    v24 = *(AssociatedConformanceWitness + 16);
    v25 = swift_checkMetadataState(0, v22);
    v24(v25, AssociatedConformanceWitness);
    if ((*(v15 + 48))(v14, 1, v8) == 1)
    {
      (*(v29 + 8))(v14, v30);
      v20 = 1;
    }

    else
    {
      v26 = *(v15 + 32);
      v26(v19, v14, v8);
      if ((*&v32[*(a1 + 40)])(v19))
      {
        v27 = v31;
        v26(v31, v19, v8);
        a2 = v27;
        v20 = 0;
        return (*(v15 + 56))(a2, v20, 1, v8);
      }

      (*(v15 + 8))(v19, v8);
      v20 = 1;
      *v32 = 1;
    }

    a2 = v31;
    return (*(v15 + 56))(a2, v20, 1, v8);
  }

  v20 = 1;
  return (*(v15 + 56))(a2, v20, 1, v8);
}

__n128 LazyDropWhileSequence.makeIterator()@<Q0>(uint64_t a1@<X0>, uint64_t (*a2)(void, uint64_t, uint64_t)@<X1>, _BYTE *a3@<X8>)
{
  v7 = *(a1 + 16);
  MEMORY[0x1EEE9AC00](a1);
  (*(v9 + 32))(&v15 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), v3, v7);
  v10 = *(a1 + 24);
  v11 = *(v10 + 32);
  v12 = a2(0, v7, v10);
  v11(v7, v10);
  v13 = *(a1 + 36);
  *a3 = 0;
  result = *(v3 + v13);
  *&a3[*(v12 + 40)] = result;
  return result;
}

atomic_ullong *LazySequenceProtocol.drop(while:)@<X0>(uint64_t a1@<X0>, atomic_ullong *a2@<X1>, const char *a3@<X2>, uint64_t a4@<X3>, uint64_t (*a5)(void, uint64_t, uint64_t)@<X4>, uint64_t a6@<X8>)
{
  (*(a4 + 32))(a3, a4);
  (*(*(a3 - 1) + 8))(v6, a3);
  swift_getAssociatedTypeWitness(255, a4, a3, &protocol requirements base descriptor for LazySequenceProtocol, associated type descriptor for LazySequenceProtocol.Elements);
  v14 = v13;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness(a4, a3, v13, &protocol requirements base descriptor for LazySequenceProtocol, associated conformance descriptor for LazySequenceProtocol.LazySequenceProtocol.Elements: Sequence);
  v16 = (a6 + *(a5(0, v14, AssociatedConformanceWitness) + 36));
  *v16 = a1;
  v16[1] = a2;

  return a2;
}

uint64_t LazyPrefixWhileSequence<>.Index._value.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X3>, uint64_t a3@<X8>)
{
  v5 = type metadata accessor for LazyPrefixWhileSequence<>._IndexRepresentation(0, *(a1 + 16), *(a1 + 24), a2);
  v6 = *(*(v5 - 8) + 16);

  return v6(a3, v3, v5);
}

uint64_t LazyPrefixWhileSequence<>.Index.init(_:)@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, int **a3@<X2>, uint64_t a4@<X8>)
{
  swift_getAssociatedTypeWitness(0, a3, a2, &protocol requirements base descriptor for Collection, associated type descriptor for Collection.Index);
  v7 = v6;
  v10 = *(v6 - 8);
  (*(v10 + 32))(a4, a1, v6);
  v8 = *(v10 + 56);

  return v8(a4, 0, 1, v7);
}

uint64_t LazyPrefixWhileSequence<>.Index.init(endOf:)@<X0>(unint64_t a1@<X1>, int **a2@<X2>, uint64_t a3@<X8>)
{
  (*(*(a1 - 8) + 8))();
  swift_getAssociatedTypeWitness(0, a2, a1, &protocol requirements base descriptor for Collection, associated type descriptor for Collection.Index);
  v7 = *(*(v6 - 8) + 56);

  return v7(a3, 1, 1, v6);
}

uint64_t static LazyPrefixWhileSequence<>.Index.== infix(_:_:)(uint64_t a1, uint64_t a2, const char *a3, int **a4)
{
  v35 = a1;
  v36 = a2;
  swift_getAssociatedTypeWitness(0, a4, a3, &protocol requirements base descriptor for Collection, associated type descriptor for Collection.Index);
  v7 = v6;
  v8 = *(v6 - 8);
  v9 = MEMORY[0x1EEE9AC00](v6);
  v33 = &v31 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v32 = &v31 - v11;
  v34 = a3;
  v13 = type metadata accessor for LazyPrefixWhileSequence<>._IndexRepresentation(255, a3, a4, v12);
  swift_getTupleTypeMetadata2(0, v13, v13, 0, 0);
  v15 = MEMORY[0x1EEE9AC00](v14 - 8);
  v17 = &v31 - v16;
  v18 = *(v15 + 56);
  v19 = *(v13 - 8);
  v20 = *(v19 + 16);
  v20(&v31 - v16, v35, v13);
  v20(&v17[v18], v36, v13);
  v21 = v8[6];
  LODWORD(v20) = v21(v17, 1, v7);
  v22 = v21(&v17[v18], 1, v7);
  if (v20 != 1)
  {
    if (v22 != 1)
    {
      v24 = v8[4];
      v25 = v32;
      v24(v32, v17, v7);
      v26 = &v17[v18];
      v27 = v33;
      v24(v33, v26, v7);
      AssociatedConformanceWitness = swift_getAssociatedConformanceWitness(a4, v34, v7, &protocol requirements base descriptor for Collection, associated conformance descriptor for Collection.Collection.Index: Comparable);
      v23 = (*(*(AssociatedConformanceWitness + 8) + 8))(v25, v27, v7);
      v29 = v8[1];
      v29(v27, v7);
      v29(v25, v7);
      return v23 & 1;
    }

    (v8[1])(v17, v7);
    goto LABEL_7;
  }

  if (v22 != 1)
  {
    (*(v19 + 8))(&v17[v18], v13);
LABEL_7:
    v23 = 0;
    return v23 & 1;
  }

  v23 = 1;
  return v23 & 1;
}

uint64_t static LazyPrefixWhileSequence<>.Index.< infix(_:_:)(uint64_t a1, uint64_t a2, const char *a3, int **a4)
{
  v34 = a2;
  swift_getAssociatedTypeWitness(0, a4, a3, &protocol requirements base descriptor for Collection, associated type descriptor for Collection.Index);
  v8 = v7;
  v9 = *(v7 - 8);
  v10 = MEMORY[0x1EEE9AC00](v7);
  v32 = &v31 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v31 = &v31 - v12;
  v33 = a3;
  v14 = type metadata accessor for LazyPrefixWhileSequence<>._IndexRepresentation(255, a3, a4, v13);
  swift_getTupleTypeMetadata2(0, v14, v14, 0, 0);
  v16 = MEMORY[0x1EEE9AC00](v15 - 8);
  v18 = &v31 - v17;
  v19 = *(v16 + 56);
  v20 = *(v14 - 8);
  v21 = *(v20 + 16);
  v21(&v31 - v17, a1, v14);
  v21(&v18[v19], v34, v14);
  v22 = *(v9 + 48);
  if (v22(v18, 1, v8) == 1)
  {
    (*(v20 + 8))(&v18[v19], v14);
    v23 = 0;
  }

  else if (v22(&v18[v19], 1, v8) == 1)
  {
    (*(v9 + 8))(v18, v8);
    v23 = 1;
  }

  else
  {
    v24 = *(v9 + 32);
    v25 = v31;
    v24(v31, v18, v8);
    v26 = &v18[v19];
    v27 = v32;
    v24(v32, v26, v8);
    AssociatedConformanceWitness = swift_getAssociatedConformanceWitness(a4, v33, v8, &protocol requirements base descriptor for Collection, associated conformance descriptor for Collection.Collection.Index: Comparable);
    v23 = (*(AssociatedConformanceWitness + 16))(v25, v27, v8, AssociatedConformanceWitness);
    v29 = *(v9 + 8);
    v29(v27, v8);
    v29(v25, v8);
  }

  return v23 & 1;
}

void LazyPrefixWhileSequence<>.Index<>.hash(into:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v8 = *(a2 + 16);
  v7 = *(a2 + 24);
  swift_getAssociatedTypeWitness(0, v7, v8, &protocol requirements base descriptor for Collection, associated type descriptor for Collection.Index);
  v10 = v9;
  v11 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v13 = &v19 - v12;
  v15 = type metadata accessor for LazyPrefixWhileSequence<>._IndexRepresentation(0, v8, v7, v14);
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v19 - v16;
  (*(v18 + 16))(&v19 - v16, v4);
  if ((*(v11 + 48))(v17, 1, v10) == 1)
  {
    Hasher._combine(_:)(0x7FFFFFFFFFFFFFFFuLL);
  }

  else
  {
    (*(v11 + 32))(v13, v17, v10);
    (*(a3 + 24))(a1, v10, a3);
    (*(v11 + 8))(v13, v10);
  }
}

Swift::Int LazyPrefixWhileSequence<>.Index<>.hashValue.getter(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = *(a1 + 16);
  v5 = *(a1 + 24);
  swift_getAssociatedTypeWitness(0, v5, v6, &protocol requirements base descriptor for Collection, associated type descriptor for Collection.Index);
  v8 = v7;
  v9 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v11 = &v18 - v10;
  v13 = type metadata accessor for LazyPrefixWhileSequence<>._IndexRepresentation(0, v6, v5, v12);
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v18 - v14;
  v22 = 0u;
  v23 = 0u;
  v19 = 0;
  v20 = veorq_s8(_swift_stdlib_Hashing_parameters, xmmword_18071DB60);
  v21 = veorq_s8(_swift_stdlib_Hashing_parameters, xmmword_18071DB70);
  (*(v16 + 16))(&v18 - v14, v3);
  if ((*(v9 + 48))(v15, 1, v8) == 1)
  {
    Hasher._combine(_:)(0x7FFFFFFFFFFFFFFFuLL);
  }

  else
  {
    (*(v9 + 32))(v11, v15, v8);
    (*(a2 + 24))(&v19, v8, a2);
    (*(v9 + 8))(v11, v8);
  }

  return Hasher._finalize()();
}

uint64_t LazyPrefixWhileSequence<>.startIndex.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v5 = *(a1 + 16);
  swift_getAssociatedTypeWitness(0, a2, v5, &protocol requirements base descriptor for Collection, associated type descriptor for Collection.Index);
  v7 = v6;
  v8 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v10 = &v12 - v9;
  (*(a2 + 64))(v5, a2);
  (*(v8 + 32))(a3, v10, v7);
  return (*(v8 + 56))(a3, 0, 1, v7);
}

uint64_t LazyPrefixWhileSequence<>.endIndex.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v32 = a3;
  v28 = a1;
  v5 = *(a1 + 16);
  swift_getAssociatedTypeWitness(0, a2, v5, &protocol requirements base descriptor for Collection, associated type descriptor for Collection.Index);
  v30 = *(v6 - 8);
  v31 = v6;
  MEMORY[0x1EEE9AC00](v6);
  v29 = &v27 - v7;
  swift_getAssociatedTypeWitness(255, *(a2 + 8), v5, &protocol requirements base descriptor for Sequence, associated type descriptor for Sequence.Element);
  v9 = v8;
  v12 = type metadata accessor for Optional(0, v8, v10, v11);
  v13 = *(v12 - 8);
  v14 = MEMORY[0x1EEE9AC00](v12);
  v16 = &v27 - v15;
  v17 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v14);
  v19 = &v27 - v18;
  Collection.first.getter(v5, a2, v16);
  if ((*(v17 + 48))(v16, 1, v9) == 1)
  {
    (*(v13 + 8))(v16, v12);
LABEL_5:
    v25 = v29;
    (*(a2 + 64))(v5, a2);
    v24 = v30;
    v23 = v31;
    v22 = v32;
    (*(v30 + 32))(v32, v25, v31);
    v21 = 0;
    return (*(v24 + 56))(v22, v21, 1, v23);
  }

  (*(v17 + 32))(v19, v16, v9);
  v20 = (*(v3 + *(v28 + 36)))(v19);
  (*(v17 + 8))(v19, v9);
  if ((v20 & 1) == 0)
  {
    goto LABEL_5;
  }

  v21 = 1;
  v23 = v31;
  v22 = v32;
  v24 = v30;
  return (*(v24 + 56))(v22, v21, 1, v23);
}

uint64_t LazyPrefixWhileSequence<>.index(after:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v5 = v4;
  v7 = a2;
  v58 = a1;
  v55 = a4;
  v8 = *(a2 + 16);
  swift_getAssociatedTypeWitness(0, *(a3 + 8), v8, &protocol requirements base descriptor for Sequence, associated type descriptor for Sequence.Element);
  v50 = *(v9 - 8);
  v51 = v9;
  MEMORY[0x1EEE9AC00](v9);
  v49 = &v48 - v10;
  v12 = type metadata accessor for LazyPrefixWhileSequence<>._IndexRepresentation(0, v8, a3, v11);
  v56 = *(v12 - 8);
  v57 = v12;
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v48 - v13;
  swift_getAssociatedTypeWitness(0, a3, v8, &protocol requirements base descriptor for Collection, associated type descriptor for Collection.Index);
  v16 = v15;
  v59 = *(v15 - 8);
  v17 = MEMORY[0x1EEE9AC00](v15);
  v52 = &v48 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = MEMORY[0x1EEE9AC00](v17);
  v53 = &v48 - v20;
  MEMORY[0x1EEE9AC00](v19);
  v22 = &v48 - v21;
  v24 = type metadata accessor for LazyPrefixWhileSequence<>.Index(0, v8, a3, v23);
  v25 = *(v24 - 8);
  MEMORY[0x1EEE9AC00](v24);
  v27 = &v48 - v26;
  v48 = v7;
  v54 = v5;
  LazyPrefixWhileSequence<>.endIndex.getter(v7, a3, &v48 - v26);
  v28 = v58;
  LOBYTE(v7) = static LazyPrefixWhileSequence<>.Index.== infix(_:_:)(v58, v27, v8, a3);
  (*(v25 + 8))(v27, v24);
  if (v7)
  {
LABEL_8:
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  v30 = v56;
  v29 = v57;
  (*(v56 + 16))(v14, v28, v57);
  v31 = v59;
  if ((*(v59 + 48))(v14, 1, v16) == 1)
  {
    (*(v30 + 8))(v14, v29);
    goto LABEL_8;
  }

  v57 = *(v31 + 32);
  v58 = v31 + 32;
  v57(v22, v14, v16);
  v33 = v53;
  v32 = v54;
  (*(a3 + 184))(v22, v8, a3);
  v34 = *(v31 + 8);
  v34(v22, v16);
  v35 = v52;
  (*(a3 + 72))(v8, a3);
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness(a3, v8, v16, &protocol requirements base descriptor for Collection, associated conformance descriptor for Collection.Collection.Index: Comparable);
  v37 = (*(*(AssociatedConformanceWitness + 8) + 8))(v33, v35, v16);
  v34(v35, v16);
  if ((v37 & 1) != 0 || (v38 = *(v32 + *(v48 + 36)), v39 = (*(a3 + 80))(v60, v33, v8, a3), v41 = v49, v40 = v50, v42 = v51, (*(v50 + 16))(v49), v39(v60, 0), v43 = v38(v41), (*(v40 + 8))(v41, v42), (v43 & 1) == 0))
  {
    v34(v33, v16);
    v46 = 1;
    v45 = v55;
  }

  else
  {
    v44 = v55;
    v57(v55, v33, v16);
    v45 = v44;
    v46 = 0;
  }

  return (*(v59 + 56))(v45, v46, 1, v16);
}

uint64_t LazyPrefixWhileSequence<>.subscript.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v7 = *(a2 + 16);
  swift_getAssociatedTypeWitness(0, a3, v7, &protocol requirements base descriptor for Collection, associated type descriptor for Collection.Index);
  v9 = v8;
  v10 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v12 = &v23[-v11];
  v14 = type metadata accessor for LazyPrefixWhileSequence<>._IndexRepresentation(0, v7, a3, v13);
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v23[-v15];
  (*(v17 + 16))(&v23[-v15], a1);
  if ((*(v10 + 48))(v16, 1, v9) == 1)
  {
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  (*(v10 + 32))(v12, v16, v9);
  v18 = (*(a3 + 80))(v23, v12, v7, a3);
  v20 = v19;
  swift_getAssociatedTypeWitness(0, *(a3 + 8), v7, &protocol requirements base descriptor for Sequence, associated type descriptor for Sequence.Element);
  (*(*(v21 - 8) + 16))(a4, v20, v21);
  v18(v23, 0);
  return (*(v10 + 8))(v12, v9);
}

uint64_t (*protocol witness for Collection.subscript.read in conformance <> LazyPrefixWhileSequence<A>(void *a1, uint64_t a2, uint64_t a3, uint64_t a4))()
{
  if (swift_coroFrameAlloc)
  {
    v8 = swift_coroFrameAlloc(0x28, 0x48CCuLL);
  }

  else
  {
    v8 = malloc(0x28uLL);
  }

  *a1 = v8;
  v8[4] = LazyPrefixWhileSequence<>.subscript.read(v8, a2, a3, *(a4 - 8));
  return protocol witness for Collection.subscript.read in conformance _ArrayBuffer<A>;
}

uint64_t (*LazyPrefixWhileSequence<>.subscript.read(void *a1, uint64_t a2, uint64_t a3, uint64_t a4))()
{
  swift_getAssociatedTypeWitness(0, *(a4 + 8), *(a3 + 16), &protocol requirements base descriptor for Sequence, associated type descriptor for Sequence.Element);
  *a1 = v8;
  v9 = *(v8 - 8);
  a1[1] = v9;
  v10 = *(v9 + 64);
  if (swift_coroFrameAlloc)
  {
    v11 = swift_coroFrameAlloc(v10, 0xE853uLL);
  }

  else
  {
    v11 = malloc(v10);
  }

  a1[2] = v11;
  LazyPrefixWhileSequence<>.subscript.getter(a2, a3, a4, v11);
  return _ArrayBuffer.subscript.read;
}

uint64_t protocol witness for Collection._customIndexOfEquatableElement(_:) in conformance <> EnumeratedSequence<A>@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t (*a3)(uint64_t, void, void)@<X3>, uint64_t a4@<X8>)
{
  v5 = a3(255, *(a1 + 16), *(a2 - 8));
  v8 = type metadata accessor for Optional(0, v5, v6, v7);
  v9 = *(*(v8 - 8) + 56);

  return v9(a4, 1, 1, v8);
}

uint64_t protocol witness for Collection.formIndex(after:) in conformance <> EnumeratedSequence<A>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void, void, uint64_t), void (*a5)(char *, uint64_t, uint64_t))
{
  v8 = *(a3 - 8);
  v9 = a4(0, *(a2 + 16), v8);
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v14 - v11;
  (*(v10 + 32))(&v14 - v11, a1, v9);
  a5(v12, a2, v8);
  return (*(v10 + 8))(v12, v9);
}

uint64_t LazyPrefixWhileSequence<>.index(before:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v5 = v4;
  v60 = a4;
  v73 = a3;
  v8 = *(a3 + 8);
  v9 = *(v8 + 8);
  v76 = a2;
  v10 = *(a2 + 16);
  swift_getAssociatedTypeWitness(0, v9, v10, &protocol requirements base descriptor for Sequence, associated type descriptor for Sequence.Element);
  v75 = v11;
  v66 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v74 = &v58 - v12;
  swift_getAssociatedTypeWitness(0, v8, v10, &protocol requirements base descriptor for Collection, associated type descriptor for Collection.Index);
  v14 = v13;
  v15 = *(v13 - 8);
  v16 = MEMORY[0x1EEE9AC00](v13);
  v18 = &v58 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = MEMORY[0x1EEE9AC00](v16);
  v21 = &v58 - v20;
  v22 = MEMORY[0x1EEE9AC00](v19);
  v24 = &v58 - v23;
  MEMORY[0x1EEE9AC00](v22);
  v77 = (&v58 - v25);
  v27 = type metadata accessor for LazyPrefixWhileSequence<>._IndexRepresentation(0, v10, v8, v26);
  MEMORY[0x1EEE9AC00](v27);
  v29 = &v58 - v28;
  (*(v30 + 16))(&v58 - v28, a1);
  v31 = *(v15 + 48);
  v78 = v14;
  if (v31(v29, 1, v14) == 1)
  {
    (*(v8 + 64))(v10, v8);
    v72 = *(v8 + 184);
    v73 = v8 + 184;
    v70 = *(v8 + 72);
    v71 = v8 + 72;
    v69 = *(swift_getAssociatedConformanceWitness(v8, v10, v78, &protocol requirements base descriptor for Collection, associated conformance descriptor for Collection.Collection.Index: Comparable) + 8);
    v67 = *(v69 + 8);
    v68 = v69 + 8;
    v32 = (v15 + 8);
    v62 = (v66 + 2);
    v63 = v8 + 80;
    v61 = (v66 + 1);
    v59 = v15;
    v65 = v24;
    v66 = (v15 + 32);
    v33 = v21;
    v64 = (v15 + 8);
    while (1)
    {
      v72(v33, v10, v8);
      v70(v10, v8);
      v34 = v78;
      v35 = v67(v18, v24, v78, v69);
      v36 = v10;
      v37 = *v32;
      (*v32)(v24, v34);
      if (v35)
      {
        break;
      }

      v77 = *(v5 + *(v76 + 36));
      v38 = (*(v8 + 80))(v79, v18, v36, v8);
      v39 = v74;
      v40 = v33;
      v41 = v18;
      v42 = v75;
      (*v62)(v74);
      (v38)(v79, 0);
      LOBYTE(v38) = v77(v39);
      v43 = v42;
      v18 = v41;
      v33 = v40;
      v32 = v64;
      v24 = v65;
      (*v61)(v39, v43);
      if ((v38 & 1) == 0)
      {
        break;
      }

      v44 = v78;
      v37(v33, v78);
      (*v66)(v33, v18, v44);
      v10 = v36;
    }

    v55 = v78;
    v37(v18, v78);
    v56 = v59;
    v57 = v60;
    (*(v59 + 32))(v60, v33, v55);
    return (*(v56 + 56))(v57, 0, 1, v55);
  }

  else
  {
    v45 = v77;
    v46 = v78;
    v76 = *(v15 + 32);
    (v76)(v77, v29, v78);
    (*(v8 + 64))(v10, v8);
    AssociatedConformanceWitness = swift_getAssociatedConformanceWitness(v8, v10, v46, &protocol requirements base descriptor for Collection, associated conformance descriptor for Collection.Collection.Index: Comparable);
    v48 = (*(*(AssociatedConformanceWitness + 8) + 8))(v45, v24, v46);
    v49 = v10;
    v50 = *(v15 + 8);
    v50(v24, v46);
    if (v48)
    {
      _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
    }

    v51 = v77;
    (*(v73 + 32))(v77, v49);
    v52 = v78;
    v50(v51, v78);
    v53 = v60;
    (v76)(v60, v24, v52);
    return (*(v15 + 56))(v53, 0, 1, v52);
  }
}

uint64_t protocol witness for BidirectionalCollection.formIndex(before:) in conformance <> LazyPrefixWhileSequence<A>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = *(a3 - 8);
  v7 = type metadata accessor for LazyPrefixWhileSequence<>.Index(0, *(a2 + 16), *(v6 + 8), a4);
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v12 - v9;
  (*(v8 + 32))(&v12 - v9, a1, v7);
  LazyPrefixWhileSequence<>.index(before:)(v10, a2, v6, a1);
  return (*(v8 + 8))(v10, v7);
}

Swift::Void __swiftcall _prespecialize()()
{
  canonical specialized generic type metadata accessor for _ContiguousArrayStorage<Any>();
  canonical specialized generic type metadata accessor for _ContiguousArrayStorage<AnyHashable>();
  canonical specialized generic type metadata accessor for _ContiguousArrayStorage<[String : Swift.AnyObject]>();
  canonical specialized generic type metadata accessor for _ContiguousArrayStorage<Int64>();

  canonical specialized generic type metadata accessor for _ContiguousArrayStorage<String>();
}

void Array.__specialize_append(_:)(uint64_t a1, uint64_t a2)
{
  Array.__specialize_append(_:)(a1, a2);
}

{
  (*(*(*(a2 + 16) - 8) + 8))();
  __break(1u);
}

uint64_t specialized Set._Variant.insert(_:)(uint64_t *a1, uint64_t a2)
{
  v3 = a2;
  v5 = *v2;
  v6 = specialized static Hasher._hash(seed:_:)(*(*v2 + 40), a2);
  v7 = -1 << *(v5 + 32);
  v8 = v6 & ~v7;
  if ((*(v5 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8))
  {
    v9 = ~v7;
    while (1)
    {
      v10 = *(v5 + 48);
      if (*(v10 + 8 * v8) == v3)
      {
        break;
      }

      v8 = (v8 + 1) & v9;
      if (((*(v5 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8) & 1) == 0)
      {
        goto LABEL_5;
      }
    }

    result = 0;
    v3 = *(v10 + 8 * v8);
  }

  else
  {
LABEL_5:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native(*v2);
    v13 = *v2;
    *v2 = 0x8000000000000000;
    specialized _NativeSet.insertNew(_:at:isUnique:)(v3, v8, isUniquelyReferenced_nonNull_native);
    *v2 = v13;
    result = 1;
  }

  *a1 = v3;
  return result;
}

{
  v5 = *v2;
  v6 = specialized static Hasher._hash(seed:_:)(*(*v2 + 40), a2);
  v7 = -1 << *(v5 + 32);
  v8 = v6 & ~v7;
  if ((*(v5 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8))
  {
    v9 = ~v7;
    while (*(*(v5 + 48) + 8 * v8) != a2)
    {
      v8 = (v8 + 1) & v9;
      if (((*(v5 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8) & 1) == 0)
      {
        goto LABEL_5;
      }
    }

    result = 0;
  }

  else
  {
LABEL_5:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native(*v2);
    v12 = *v2;
    *v2 = 0x8000000000000000;
    specialized _NativeSet.insertNew(_:at:isUnique:)(a2, v8, isUniquelyReferenced_nonNull_native);
    *v2 = v12;
    result = 1;
  }

  *a1 = a2;
  return result;
}

uint64_t specialized Set._Variant.insert(_:)(unint64_t *a1, unint64_t a2, unint64_t a3)
{
  v7 = *v3;
  v8 = _swift_stdlib_Hashing_parameters ^ *(*v3 + 40);
  v22 = 0u;
  v23 = 0u;
  v21[0] = 0;
  v21[1] = v8 ^ 0x736F6D6570736575;
  v21[2] = *(&_swift_stdlib_Hashing_parameters + 1) ^ 0x646F72616E646F6DLL;
  v21[3] = v8 ^ 0x6C7967656E657261;
  v21[4] = *(&_swift_stdlib_Hashing_parameters + 1) ^ 0x7465646279746573;
  String.hash(into:)(v21, a2, a3);
  v9 = Hasher._finalize()();
  v10 = -1 << *(v7 + 32);
  v11 = v9 & ~v10;
  if ((*(v7 + 56 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11))
  {
    v12 = ~v10;
    while (1)
    {
      v13 = (*(v7 + 48) + 16 * v11);
      v14 = v13[1];
      if (*v13 == a2 && v14 == a3)
      {
        break;
      }

      v16 = (~v14 & 0x6000000000000000) == 0 && (a3 & 0x6000000000000000) == 0x6000000000000000;
      if (!v16 && (_stringCompareInternal(_:_:expecting:)(*v13, v14, a2, a3, 0) & 1) != 0)
      {
        break;
      }

      v11 = (v11 + 1) & v12;
      if (((*(v7 + 56 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11) & 1) == 0)
      {
        goto LABEL_14;
      }
    }

    a3;
    v17 = (*(v7 + 48) + 16 * v11);
    v18 = v17[1];
    *a1 = *v17;
    a1[1] = v18;
    v18;
    return 0;
  }

  else
  {
LABEL_14:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native(*v3);
    v21[0] = *v3;
    *v3 = 0x8000000000000000;
    a3;
    specialized _NativeSet.insertNew(_:at:isUnique:)(a2, a3, v11, isUniquelyReferenced_nonNull_native);
    *v3 = v21[0];
    *a1 = a2;
    a1[1] = a3;
    return 1;
  }
}

uint64_t specialized Set._Variant.insert(_:)(uint64_t a1, uint64_t a2)
{
  v4 = *v2;
  v5 = *(*v2 + 40);
  v6 = *(a2 + 24);
  v7 = *(a2 + 32);
  __swift_project_boxed_opaque_existential_0Tm(a2, v6);
  (*(v7 + 8))(v32, v6, v7);
  v8 = v33;
  v9 = v34;
  __swift_project_boxed_opaque_existential_0Tm(v32, v33);
  v10 = (*(v9 + 40))(v5, v8, v9);
  __swift_destroy_boxed_opaque_existential_1Tm(v32);
  v11 = v4 + 56;
  v27 = v4;
  v12 = -1 << *(v4 + 32);
  v13 = v10 & ~v12;
  if ((*(v4 + 56 + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v13))
  {
    v14 = ~v12;
    while (1)
    {
      outlined init with copy of AnyHashable(*(v27 + 48) + 40 * v13, v32);
      v15 = v33;
      v16 = v34;
      __swift_project_boxed_opaque_existential_0Tm(v32, v33);
      (*(v16 + 8))(v29, v15, v16);
      v17 = v30;
      v18 = v31;
      __swift_project_boxed_opaque_existential_0Tm(v29, v30);
      v19 = *(a2 + 24);
      v20 = *(a2 + 32);
      __swift_project_boxed_opaque_existential_0Tm(a2, v19);
      (*(v20 + 8))(v28, v19, v20);
      v21 = (*(v18 + 16))(v28, v17, v18);
      __swift_destroy_boxed_opaque_existential_1Tm(v28);
      __swift_destroy_boxed_opaque_existential_1Tm(v29);
      outlined destroy of AnyHashable(v32);
      if (v21)
      {
        break;
      }

      v13 = (v13 + 1) & v14;
      if (((*(v11 + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v13) & 1) == 0)
      {
        goto LABEL_5;
      }
    }

    outlined destroy of AnyHashable(a2);
    outlined init with copy of AnyHashable(*(v27 + 48) + 40 * v13, a1);
    return 0;
  }

  else
  {
LABEL_5:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native(*v25);
    outlined init with copy of AnyHashable(a2, v32);
    v29[0] = *v25;
    *v25 = 0x8000000000000000;
    specialized _NativeSet.insertNew(_:at:isUnique:)(v32, v13, isUniquelyReferenced_nonNull_native);
    *v25 = v29[0];
    v23 = *(a2 + 16);
    *a1 = *a2;
    *(a1 + 16) = v23;
    *(a1 + 32) = *(a2 + 32);
    return 1;
  }
}

{
  v4 = *v2;
  v5 = *(*v2 + 40);
  v6 = *(a2 + 24);
  v7 = *(a2 + 32);
  __swift_project_boxed_opaque_existential_0Tm(a2, v6);
  (*(v7 + 8))(v32, v6, v7);
  v8 = v33;
  v9 = v34;
  __swift_project_boxed_opaque_existential_0Tm(v32, v33);
  v10 = (*(v9 + 40))(v5, v8, v9);
  __swift_destroy_boxed_opaque_existential_1Tm(v32);
  v11 = v4 + 56;
  v27 = v4;
  v12 = -1 << *(v4 + 32);
  v13 = v10 & ~v12;
  if ((*(v4 + 56 + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v13))
  {
    v14 = ~v12;
    while (1)
    {
      outlined init with copy of AnyHashable(*(v27 + 48) + 40 * v13, v32);
      v15 = v33;
      v16 = v34;
      __swift_project_boxed_opaque_existential_0Tm(v32, v33);
      (*(v16 + 8))(v29, v15, v16);
      v17 = v30;
      v18 = v31;
      __swift_project_boxed_opaque_existential_0Tm(v29, v30);
      v19 = *(a2 + 24);
      v20 = *(a2 + 32);
      __swift_project_boxed_opaque_existential_0Tm(a2, v19);
      (*(v20 + 8))(v28, v19, v20);
      v21 = (*(v18 + 16))(v28, v17, v18);
      __swift_destroy_boxed_opaque_existential_1Tm(v28);
      __swift_destroy_boxed_opaque_existential_1Tm(v29);
      outlined destroy of AnyHashable(v32);
      if (v21)
      {
        break;
      }

      v13 = (v13 + 1) & v14;
      if (((*(v11 + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v13) & 1) == 0)
      {
        goto LABEL_5;
      }
    }

    outlined destroy of AnyHashable(a2);
    outlined init with copy of AnyHashable(*(v27 + 48) + 40 * v13, a1);
    return 0;
  }

  else
  {
LABEL_5:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native(*v25);
    outlined init with copy of AnyHashable(a2, v32);
    v29[0] = *v25;
    *v25 = 0x8000000000000000;
    specialized _NativeSet.insertNew(_:at:isUnique:)(v32, v13, isUniquelyReferenced_nonNull_native);
    *v25 = v29[0];
    v23 = *(a2 + 16);
    *a1 = *a2;
    *(a1 + 16) = v23;
    *(a1 + 32) = *(a2 + 32);
    return 1;
  }
}

uint64_t Set._Variant.insert(_:)(uint64_t a1, id *a2, uint64_t a3)
{
  v6 = a1;
  v7 = *(a3 + 16);
  v8 = *(v7 - 1);
  v9 = MEMORY[0x1EEE9AC00](a1);
  v11 = &v42 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v13 = &v42 - v12;
  v14 = *v3;
  if ((*v3 & 0xC000000000000001) != 0)
  {
    v45 = v6;
    v15 = _bridgeAnythingToObjectiveC<A>(_:)(a2, v7);
    if (v14 < 0)
    {
      v16 = v14;
    }

    else
    {
      v16 = (v14 & 0xFFFFFFFFFFFFFF8);
    }

    v14;
    v17 = [v16 member_];
    swift_unknownObjectRelease(v15);
    if (v17)
    {
      (*(v8 + 8))(a2, v7);
      v14;
      _forceBridgeFromObjectiveC<A>(_:_:)(v17, v7, v18, v45);
      swift_unknownObjectRelease(v17);
      return 0;
    }

    v44 = v3;
    result = [v16 count];
    v33 = v45;
    if (__OFADD__(result, 1))
    {
      __break(1u);
      return result;
    }

    v34 = *(a3 + 24);
    v35 = _NativeSet.init(_:capacity:)(v16, result + 1, v7, v34);
    v51 = v35;
    (*(v8 + 16))(v11, a2, v7);
    v37 = v35[2];
    if (v35[3] <= v37)
    {
      type metadata accessor for _NativeSet(0, v7, v34, v36);
      _NativeSet.resize(capacity:)(&v37->isa + 1);
      v35 = v51;
    }

    _NativeSet._unsafeInsertNew(_:)(v11, v35, v7);
    v14;
    *v44 = v35;
    (*(v8 + 32))(v33, a2, v7);
    return 1;
  }

  v44 = v3;
  v20 = *(v14 + 40);
  v21 = *(*(a3 + 24) + 32);
  v50 = *(a3 + 24);
  v22 = v21(v20, v7);
  v48 = v14 + 56;
  v49 = v14;
  v23 = -1 << *(v14 + 32);
  v24 = v22 & ~v23;
  if (((*(v14 + 56 + ((v24 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v24) & 1) == 0)
  {
    v25 = *(v8 + 16);
    v32 = v8;
LABEL_17:
    v38 = v44;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native(*v44);
    v25(v13, a2, v7);
    v51 = *v38;
    *v38 = 0x8000000000000000;
    v41 = type metadata accessor for _NativeSet(0, v7, v50, v40);
    _NativeSet.insertNew(_:at:isUnique:)(v13, v24, isUniquelyReferenced_nonNull_native, v41);
    *v38 = v51;
    (*(v32 + 32))(v6, a2, v7);
    return 1;
  }

  v45 = v6;
  v46 = ~v23;
  v25 = *(v8 + 16);
  v47 = *(v8 + 72);
  v26 = (v8 + 8);
  v42 = (v8 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v43 = v8;
  while (1)
  {
    v27 = v47 * v24;
    v28 = v25;
    v25(v13, (*(v49 + 48) + v47 * v24), v7);
    v29 = a2;
    v30 = (*(*(v50 + 8) + 8))(v13, a2, v7);
    v31 = *v26;
    (*v26)(v13, v7);
    if (v30)
    {
      break;
    }

    v24 = (v24 + 1) & v46;
    a2 = v29;
    v25 = v28;
    if (((*(v48 + ((v24 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v24) & 1) == 0)
    {
      v6 = v45;
      v32 = v43;
      goto LABEL_17;
    }
  }

  v31(v29, v7);
  v28(v45, (*(v49 + 48) + v27), v7);
  return 0;
}

uint64_t specialized Set._Variant.remove(_:)(unint64_t a1, unint64_t a2)
{
  v5 = *v2;
  v6 = _swift_stdlib_Hashing_parameters ^ *(*v2 + 40);
  v20 = 0u;
  v21 = 0u;
  v19[0] = 0;
  v19[1] = v6 ^ 0x736F6D6570736575;
  v19[2] = *(&_swift_stdlib_Hashing_parameters + 1) ^ 0x646F72616E646F6DLL;
  v19[3] = v6 ^ 0x6C7967656E657261;
  v19[4] = *(&_swift_stdlib_Hashing_parameters + 1) ^ 0x7465646279746573;
  String.hash(into:)(v19, a1, a2);
  v7 = Hasher._finalize()();
  v8 = -1 << *(v5 + 32);
  v9 = v7 & ~v8;
  if (((*(v5 + 56 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) == 0)
  {
    return 0;
  }

  v10 = ~v8;
  while (1)
  {
    v11 = (*(v5 + 48) + 16 * v9);
    v12 = v11[1];
    if (*v11 == a1 && v12 == a2)
    {
      break;
    }

    v14 = (~v12 & 0x6000000000000000) == 0 && (a2 & 0x6000000000000000) == 0x6000000000000000;
    if (!v14 && (_stringCompareInternal(_:_:expecting:)(*v11, v12, a1, a2, 0) & 1) != 0)
    {
      break;
    }

    v9 = (v9 + 1) & v10;
    if (((*(v5 + 56 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) == 0)
    {
      return 0;
    }
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native(*v2);
  v16 = *v2;
  v19[0] = *v2;
  *v2 = 0x8000000000000000;
  if (!isUniquelyReferenced_nonNull_native)
  {
    specialized _NativeSet.copy()();
    v16 = v19[0];
  }

  v17 = *(*(v16 + 48) + 16 * v9);
  specialized _NativeSet._delete(at:)(v9);
  *v2 = v19[0];
  return v17;
}

unint64_t specialized Set._Variant.remove(_:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *v2;
  v5 = *(*v2 + 40);
  v6 = a1[3];
  v7 = a1[4];
  __swift_project_boxed_opaque_existential_0Tm(a1, v6);
  (*(v7 + 8))(v34, v6, v7);
  v8 = v35;
  v9 = v36;
  __swift_project_boxed_opaque_existential_0Tm(v34, v35);
  v10 = (*(v9 + 40))(v5, v8, v9);
  result = __swift_destroy_boxed_opaque_existential_1Tm(v34);
  v12 = v4 + 56;
  v29 = v4;
  v13 = -1 << *(v4 + 32);
  v14 = v10 & ~v13;
  if ((*(v4 + 56 + ((v14 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v14))
  {
    v15 = ~v13;
    while (1)
    {
      outlined init with copy of AnyHashable(*(v29 + 48) + 40 * v14, v34);
      v16 = v35;
      v17 = v36;
      __swift_project_boxed_opaque_existential_0Tm(v34, v35);
      (*(v17 + 8))(v31, v16, v17);
      v18 = v32;
      v19 = v33;
      __swift_project_boxed_opaque_existential_0Tm(v31, v32);
      v20 = a1[3];
      v21 = a1[4];
      __swift_project_boxed_opaque_existential_0Tm(a1, v20);
      (*(v21 + 8))(v30, v20, v21);
      v22 = (*(v19 + 16))(v30, v18, v19);
      __swift_destroy_boxed_opaque_existential_1Tm(v30);
      __swift_destroy_boxed_opaque_existential_1Tm(v31);
      result = outlined destroy of AnyHashable(v34);
      if (v22)
      {
        break;
      }

      v14 = (v14 + 1) & v15;
      if (((*(v12 + ((v14 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v14) & 1) == 0)
      {
        goto LABEL_5;
      }
    }

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native(*v27);
    v24 = *v27;
    v34[0] = *v27;
    *v27 = 0x8000000000000000;
    if (!isUniquelyReferenced_nonNull_native)
    {
      specialized _NativeSet.copy()();
      v24 = v34[0];
    }

    v25 = *(v24 + 48) + 40 * v14;
    v26 = *(v25 + 16);
    *a2 = *v25;
    *(a2 + 16) = v26;
    *(a2 + 32) = *(v25 + 32);
    result = specialized _NativeSet._delete(at:)(v14);
    *v27 = v34[0];
  }

  else
  {
LABEL_5:
    *(a2 + 32) = 0;
    *a2 = 0u;
    *(a2 + 16) = 0u;
  }

  return result;
}

void *specialized Set._Variant.remove(_:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *v2;
  v5 = *(*v2 + 40);
  v6 = a1[3];
  v7 = a1[4];
  __swift_project_boxed_opaque_existential_0Tm(a1, v6);
  (*(v7 + 8))(&v54, v6, v7);
  v8 = *(&v55 + 1);
  v9 = v56;
  __swift_project_boxed_opaque_existential_0Tm(&v54, *(&v55 + 1));
  v10 = (*(v9 + 40))(v5, v8, v9);
  result = __swift_destroy_boxed_opaque_existential_1Tm(&v54);
  v12 = v4 + 56;
  v49 = v4;
  v13 = -1 << *(v4 + 32);
  v14 = v10 & ~v13;
  if (((*(v4 + 56 + ((v14 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v14) & 1) == 0)
  {
LABEL_5:
    *(a2 + 32) = 0;
    *a2 = 0u;
    *(a2 + 16) = 0u;
    return result;
  }

  v15 = ~v13;
  while (1)
  {
    outlined init with copy of AnyHashable(*(v49 + 48) + 40 * v14, &v54);
    v16 = *(&v55 + 1);
    v17 = v56;
    __swift_project_boxed_opaque_existential_0Tm(&v54, *(&v55 + 1));
    (*(v17 + 8))(v51, v16, v17);
    v18 = v52;
    v19 = v53;
    __swift_project_boxed_opaque_existential_0Tm(v51, v52);
    v20 = a1[3];
    v21 = a1[4];
    __swift_project_boxed_opaque_existential_0Tm(a1, v20);
    (*(v21 + 8))(v50, v20, v21);
    v22 = (*(v19 + 16))(v50, v18, v19);
    __swift_destroy_boxed_opaque_existential_1Tm(v50);
    __swift_destroy_boxed_opaque_existential_1Tm(v51);
    result = outlined destroy of AnyHashable(&v54);
    if (v22)
    {
      break;
    }

    v14 = (v14 + 1) & v15;
    if (((*(v12 + ((v14 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v14) & 1) == 0)
    {
      goto LABEL_5;
    }
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native(*v47);
  v24 = *v47;
  v51[0] = *v47;
  *v47 = 0x8000000000000000;
  if (isUniquelyReferenced_nonNull_native)
  {
    v25 = v24;
LABEL_8:
    v26 = *(v25 + 48) + 40 * v14;
    v27 = *(v26 + 16);
    *a2 = *v26;
    *(a2 + 16) = v27;
    *(a2 + 32) = *(v26 + 32);
    result = specialized _NativeSet._delete(at:)(v14);
    *v47 = v51[0];
    return result;
  }

  v28 = *(v24 + 36);
  v29 = *(v24 + 40);
  v30 = *(v24 + 32);
  LOBYTE(v54) = 0;
  v31 = _ss11_SetStorageC8allocate5scale3age4seedAByxGs4Int8V_s5Int32VSgSiSgtFZs11AnyHashableV_Tt2g5(v30, v28, v29, 0);
  v25 = v31;
  if (!*(v24 + 16))
  {
LABEL_24:
    v24;
    v51[0] = v25;
    goto LABEL_8;
  }

  result = v31 + 7;
  v32 = v24 + 56;
  v33 = ((1 << *(v25 + 32)) + 63) >> 6;
  if (v25 != v24 || result >= v32 + 8 * v33)
  {
    result = memmove(result, (v24 + 56), 8 * v33);
  }

  v34 = 0;
  *(v25 + 16) = *(v24 + 16);
  v35 = 1 << *(v24 + 32);
  v36 = *(v24 + 56);
  v37 = -1;
  if (v35 < 64)
  {
    v37 = ~(-1 << v35);
  }

  v38 = v37 & v36;
  v39 = (v35 + 63) >> 6;
  if ((v37 & v36) != 0)
  {
    do
    {
      v40 = __clz(__rbit64(v38));
      v38 &= v38 - 1;
LABEL_22:
      v43 = 40 * (v40 | (v34 << 6));
      result = outlined init with copy of AnyHashable(*(v24 + 48) + v43, &v54);
      v44 = *(v25 + 48) + v43;
      v45 = v54;
      v46 = v55;
      *(v44 + 32) = v56;
      *v44 = v45;
      *(v44 + 16) = v46;
    }

    while (v38);
  }

  v41 = v34;
  while (1)
  {
    v34 = v41 + 1;
    if (__OFADD__(v41, 1))
    {
      break;
    }

    if (v34 >= v39)
    {
      goto LABEL_24;
    }

    v42 = *(v32 + 8 * v34);
    ++v41;
    if (v42)
    {
      v40 = __clz(__rbit64(v42));
      v38 = (v42 - 1) & v42;
      goto LABEL_22;
    }
  }

  __break(1u);
  return result;
}

void Set._Variant.remove(_:)(id *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v7 = *(a2 + 16);
  v33 = *(v7 - 1);
  MEMORY[0x1EEE9AC00](a1);
  v9 = &v31 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *v3;
  if ((*v3 & 0xC000000000000001) != 0)
  {
    if (v10 < 0)
    {
      v11 = *v3;
    }

    else
    {
      v11 = (v10 & 0xFFFFFFFFFFFFFF8);
    }

    *v3;
    v12 = _bridgeAnythingToObjectiveC<A>(_:)(a1, v7);
    v13 = [v11 member_];
    swift_unknownObjectRelease(v12);
    if (v13)
    {
      swift_unknownObjectRelease(v13);
      Set._Variant._migrateToNative(_:removing:)(v11, a1, a2, a3);
      v10;
      v14 = *(v33 + 56);

      v14(a3, 0, 1, v7);
    }

    else
    {
      (*(v33 + 56))(a3, 1, 1, v7);

      v10;
    }
  }

  else
  {
    v31 = v3;
    v32 = a3;
    v15 = *(v10 + 40);
    v16 = *(a2 + 24);
    v17 = *(v16 + 32);
    v36 = a1;
    v37 = v16;
    v18 = v17(v15, v7);
    v19 = -1 << *(v10 + 32);
    v20 = v18 & ~v19;
    v35 = v10 + 56;
    if ((*(v10 + 56 + ((v20 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v20))
    {
      v34 = ~v19;
      v21 = *(v33 + 16);
      v22 = *(v33 + 72);
      v23 = (v33 + 8);
      while (1)
      {
        v21(v9, *(v10 + 48) + v22 * v20, v7);
        v24 = (*(*(v37 + 8) + 8))(v9, v36, v7);
        (*v23)(v9, v7);
        if (v24)
        {
          break;
        }

        v20 = (v20 + 1) & v34;
        if (((*(v35 + ((v20 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v20) & 1) == 0)
        {
          goto LABEL_13;
        }
      }

      v25 = v31;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native(*v31);
      v28 = *v25;
      v38 = *v25;
      *v25 = 0x8000000000000000;
      if (!isUniquelyReferenced_nonNull_native)
      {
        type metadata accessor for _NativeSet(0, v7, v37, v27);
        _NativeSet.copy()();
        v28 = v38;
      }

      v29 = v32;
      (*(v33 + 32))(v32, *(v28 + 48) + v22 * v20, v7);
      type metadata accessor for _NativeSet(0, v7, v37, v30);
      _NativeSet._delete(at:)(v20);
      *v31 = v28;
      (*(v33 + 56))(v29, 0, 1, v7);
    }

    else
    {
LABEL_13:
      (*(v33 + 56))(v32, 1, 1, v7);
    }
  }
}

void specialized _print<A>(_:separator:terminator:to:)(uint64_t a1, unint64_t a2, unint64_t a3, uint64_t a4, void *a5, unint64_t *a6)
{
  v46._countAndFlagsBits = a4;
  v46._object = a5;
  v7 = *(a1 + 16);
  if (v7)
  {
    outlined init with copy of Any(a1 + 32, v47);
    v19 = *a6;
    v20 = a6[1];
    v21 = HIBYTE(v20) & 0xF;
    if ((v20 & 0x2000000000000000) == 0)
    {
      v21 = *a6 & 0xFFFFFFFFFFFFLL;
    }

    if (v21 || (v19 & ~v20 & 0x2000000000000000) != 0)
    {
      if ((v20 & 0x2000000000000000) != 0 && (v22 = specialized _SmallString.init(_:appending:)(v19, a6[1], 0, 0xE000000000000000), (v24 & 1) == 0))
      {
        v25 = v22;
        v26 = v23;
        v20;
        0xE000000000000000;
        *a6 = v25;
        a6[1] = v26;
      }

      else
      {
        _StringGuts.append(_:)(0, 0xE000000000000000, 0, 0, v11, v12, v13, v14, v15, v16, v17, v18);
        0xE000000000000000;
      }
    }

    else
    {
      a6[1];
      *a6 = 0;
      a6[1] = 0xE000000000000000;
    }

    _print_unlocked<A, B>(_:_:)(v47, a6, byte_1EEEAC6F8, &type metadata for String, &protocol witness table for String);
    __swift_destroy_boxed_opaque_existential_1Tm(v47);
    v27 = v7 - 1;
    if (v27)
    {
      v28 = a1 + 64;
      while (1)
      {
        a3;
        outlined init with copy of Any(v28, v47);
        v38 = *a6;
        v39 = a6[1];
        v40 = HIBYTE(v39) & 0xF;
        if ((v39 & 0x2000000000000000) == 0)
        {
          v40 = *a6 & 0xFFFFFFFFFFFFLL;
        }

        if (!v40 && (v38 & ~v39 & 0x2000000000000000) == 0)
        {
          a6[1];
          *a6 = a2;
          a6[1] = a3;
          goto LABEL_16;
        }

        if ((v39 & 0x2000000000000000) == 0)
        {
          break;
        }

        if ((a3 & 0x2000000000000000) == 0)
        {
          goto LABEL_14;
        }

        v41 = specialized _SmallString.init(_:appending:)(v38, a6[1], a2, a3);
        v29 = HIBYTE(a3) & 0xF;
        if ((v43 & 1) == 0)
        {
          v44 = v41;
          v45 = v42;
          v39;
          a3;
          *a6 = v44;
          a6[1] = v45;
          goto LABEL_16;
        }

LABEL_15:
        _StringGuts.append(_:)(a2, a3, 0, v29, v30, v31, v32, v33, v34, v35, v36, v37);
        a3;
LABEL_16:
        _print_unlocked<A, B>(_:_:)(v47, a6, byte_1EEEAC6F8, &type metadata for String, &protocol witness table for String);
        __swift_destroy_boxed_opaque_existential_1Tm(v47);
        v28 += 32;
        if (!--v27)
        {
          goto LABEL_12;
        }
      }

      v29 = HIBYTE(a3) & 0xF;
      if ((a3 & 0x2000000000000000) != 0)
      {
        goto LABEL_15;
      }

LABEL_14:
      v29 = a2 & 0xFFFFFFFFFFFFLL;
      goto LABEL_15;
    }
  }

LABEL_12:
  String.write(_:)(v46);
}

void print(_:separator:terminator:)(uint64_t a1, unint64_t a2, unint64_t a3, uint64_t a4, void *a5, void (*a6)(uint64_t *, unint64_t *, unsigned __int8 *, void *, _UNKNOWN **), void (*a7)(uint64_t *, uint64_t, unsigned __int8 *, ValueMetadata *, _UNKNOWN **))
{
  v7 = a5;
  v8 = a4;
  v10 = a2;
  v12 = _playgroundPrintHook;
  if (!_playgroundPrintHook)
  {
    specialized _print<A>(_:separator:terminator:to:)(a1, a2, a3, a4, a5, a6, a7);
    return;
  }

  v13 = qword_1EA79EC28;
  v14 = 0xE000000000000000;
  v71 = 0;
  v72 = 0xE000000000000000;
  qword_1EA79EC28;
  _swift_stdlib_flockfile_stdout();
  v23 = *(a1 + 16);
  if (v23)
  {
    v63 = v8;
    v64 = v7;
    v65 = v13;
    v66 = v12;
    v24 = 0;
    v25 = a1 + 32;
    v26 = v23 - 1;
    v27 = 0xE000000000000000;
    v67 = v10;
    while (1)
    {
      outlined init with copy of Any(v25, v70);
      v36 = v72;
      v37 = HIBYTE(v72) & 0xF;
      if ((v72 & 0x2000000000000000) == 0)
      {
        v37 = v71 & 0xFFFFFFFFFFFFLL;
      }

      if (v37 || (v71 & ~v72 & 0x2000000000000000) != 0)
      {
        v38 = v27 & 0x2000000000000000;
        if ((v72 & 0x2000000000000000) != 0)
        {
          if (v38)
          {
            v39 = specialized _SmallString.init(_:appending:)(v71, v72, v24, v27);
            if ((v41 & 1) == 0)
            {
              v48 = v39;
              v49 = v40;
              v36;
              v71 = v48;
              v72 = v49;
              v44 = v27;
              v10 = v67;
              if ((v27 & 0xF00000000000000) == 0)
              {
                goto LABEL_25;
              }

              goto LABEL_19;
            }
          }
        }

        if (v38)
        {
          v42 = HIBYTE(v27) & 0xF;
        }

        else
        {
          v42 = v24 & 0xFFFFFFFFFFFFLL;
        }

        _StringGuts.append(_:)(v24, v27, 0, v42, v28, v29, v30, v31, v32, v33, v34, v35);
        v10 = v67;
      }

      else
      {
        v27;
        v36;
        v71 = v24;
        v72 = v27;
        v38 = v27 & 0x2000000000000000;
      }

      if (v38)
      {
        v43 = HIBYTE(v27) & 0xF;
      }

      else
      {
        v43 = v24 & 0xFFFFFFFFFFFFLL;
      }

      v44 = v27;
      if (!v43)
      {
LABEL_25:
        v50 = v27;
        goto LABEL_29;
      }

LABEL_19:
      v27;
      if ((v44 & 0x1000000000000000) != 0)
      {
        v24 = specialized static String._copying(_:)(v24, v27);
        v44 = v51;
        v27;
        v45 = v44;
        if ((v44 & 0x2000000000000000) == 0)
        {
LABEL_21:
          if ((v24 & 0x1000000000000000) != 0)
          {
            v46 = ((v44 & 0xFFFFFFFFFFFFFFFLL) + 32);
            v47 = v24 & 0xFFFFFFFFFFFFLL;
          }

          else
          {
            v46 = _StringObject.sharedUTF8.getter(v24, v45);
            if (!v46)
            {
              _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
            }

            v47 = v52;
          }

          goto LABEL_28;
        }
      }

      else
      {
        v45 = v27;
        if ((v44 & 0x2000000000000000) == 0)
        {
          goto LABEL_21;
        }
      }

      v47 = HIBYTE(v44) & 0xF;
      v69[0] = v24;
      v69[1] = v44 & 0xFFFFFFFFFFFFFFLL;
      v46 = v69;
LABEL_28:
      _swift_stdlib_fwrite_stdout(v46, 1uLL, v47);
      v27;
      v50 = v45;
LABEL_29:
      v50;
      a6(v70, &v71, byte_1EEEAC6F8, &unk_1EEEBBFD0, &protocol witness table for _TeeStream<A, B>);
      __swift_destroy_boxed_opaque_existential_1Tm(v70);
      if (!v26)
      {
        v53 = v71;
        v14 = v72;
        v13 = v65;
        v12 = v66;
        v8 = v63;
        v7 = v64;
        goto LABEL_36;
      }

      a3;
      --v26;
      v25 += 32;
      v24 = v10;
      v27 = a3;
    }
  }

  v53 = 0;
LABEL_36:
  v54 = HIBYTE(v14) & 0xF;
  if ((v14 & 0x2000000000000000) == 0)
  {
    v54 = v53 & 0xFFFFFFFFFFFFLL;
  }

  if (!v54 && (v53 & ~v14 & 0x2000000000000000) == 0)
  {
    v7;
    v14;
    v71 = v8;
    v72 = v7;
    goto LABEL_48;
  }

  if ((v14 & 0x2000000000000000) != 0)
  {
    if ((v7 & 0x2000000000000000) != 0)
    {
      v56 = specialized _SmallString.init(_:appending:)(v53, v14, v8, v7);
      if ((v58 & 1) == 0)
      {
        v61 = v56;
        v62 = v57;
        v14;
        v71 = v61;
        v72 = v62;
        goto LABEL_48;
      }

      goto LABEL_46;
    }
  }

  else if ((v7 & 0x2000000000000000) != 0)
  {
LABEL_46:
    v55 = HIBYTE(v7) & 0xF;
    goto LABEL_47;
  }

  v55 = v8 & 0xFFFFFFFFFFFFLL;
LABEL_47:
  _StringGuts.append(_:)(v8, v7, 0, v55, v15, v16, v17, v18, v19, v20, v21, v22);
LABEL_48:
  v59._countAndFlagsBits = v8;
  v59._object = v7;
  _Stdout.write(_:)(v59);
  _swift_stdlib_funlockfile_stdout();
  v60 = v72;
  v12(v71, v72);
  v60;
  outlined consume of (@escaping @callee_guaranteed (@guaranteed String) -> ())?(v12, v13);
}

void specialized _debugPrint<A>(_:separator:terminator:to:)(uint64_t a1, uint64_t a2, unint64_t a3, unint64_t a4, unint64_t a5, int8x8_t *a6)
{
  v6 = a6;
  v127 = *(a1 + 16);
  if (v127)
  {
    v7 = 0;
    v8 = 0;
    v126 = a1 + 32;
    v9 = 0xE000000000000000;
    while (1)
    {
      outlined init with copy of Any(v126 + 32 * v7, v132);
      v10 = *v6;
      v11 = *(v6 + 8);
      v12 = HIBYTE(v11) & 0xF;
      v13 = *v6 & 0xFFFFFFFFFFFFLL;
      if ((v11 & 0x2000000000000000) != 0)
      {
        v14 = HIBYTE(v11) & 0xF;
      }

      else
      {
        v14 = *v6 & 0xFFFFFFFFFFFFLL;
      }

      if (!v14 && (*&v10 & ~v11 & 0x2000000000000000) == 0)
      {
        *(v6 + 8);
        *v6 = v8;
        *(v6 + 8) = v9;
        goto LABEL_121;
      }

      v15 = (v9 & 0x2000000000000000) == 0;
      v16 = HIBYTE(v9) & 0xF;
      if ((v11 & 0x2000000000000000) == 0)
      {
        break;
      }

      if ((v9 & 0x2000000000000000) == 0)
      {
        v17 = *&v8 & 0xFFFFFFFFFFFFLL;
        v15 = 1;
        goto LABEL_13;
      }

      v50 = v12 + v16;
      if (v12 + v16 >= 0x10)
      {
        v15 = 0;
        v17 = *&v8 & 0xFFFFFFFFFFFFLL;
        v18 = HIBYTE(v9) & 0xF;
        goto LABEL_14;
      }

      v75 = v7;
      if (v16)
      {
        v76 = 0;
        v77 = 0;
        v78 = 8 * v12;
        v79 = 8 * v16;
        v80 = *(v6 + 8);
        do
        {
          v81 = v9 >> (v76 & 0x38);
          if (v77 < 8)
          {
            v81 = *&v8 >> v76;
          }

          v82 = (v81 << (v78 & 0x38)) | ((-255 << (v78 & 0x38)) - 1) & v80;
          v83 = (v81 << v78) | ((-255 << v78) - 1) & *&v10;
          if (v12 <= 7)
          {
            v10 = v83;
          }

          else
          {
            v80 = v82;
          }

          ++v12;
          v78 += 8;
          v76 += 8;
          ++v77;
        }

        while (v79 != v76);
      }

      else
      {
        v80 = *(v6 + 8);
      }

      *(v6 + 8);
      v9;
      v92 = 0xE000000000000000;
      if (*&v10 & 0x8080808080808080 | v80 & 0x80808080808080)
      {
        v92 = 0xA000000000000000;
      }

      *v6 = v10;
      *(v6 + 8) = v92 & 0xFF00000000000000 | (v50 << 56) | v80 & 0xFFFFFFFFFFFFFFLL;
      v7 = v75;
LABEL_121:
      ++v7;
      _debugPrint_unlocked<A, B>(_:_:)(v132, v6, byte_1EEEAC6F8, &type metadata for String, &protocol witness table for String);
      __swift_destroy_boxed_opaque_existential_1Tm(v132);
      if (v7 == v127)
      {
        goto LABEL_144;
      }

      v9 = a3;
      a3;
      v8 = a2;
    }

    v17 = *&v8 & 0xFFFFFFFFFFFFLL;
    v18 = HIBYTE(v9) & 0xF;
    if ((v9 & 0x2000000000000000) == 0)
    {
LABEL_13:
      v18 = v17;
    }

LABEL_14:
    __n = HIBYTE(v9) & 0xF;
    v123 = v17;
    v128 = v15;
    if ((v9 & 0x1000000000000000) != 0)
    {
      v20 = v18;
      swift_bridgeObjectRetain_n(v9, 2);
      v104._rawBits = 1;
      v105._rawBits = (v18 << 16) | 1;
      v106._rawBits = _StringGuts.validateScalarRange(_:)(v104, v105, *&v8, v9)._rawBits;
      if (v106._rawBits < 0x10000)
      {
        v106._rawBits |= 3;
      }

      v18 = String.UTF8View.distance(from:to:)(v106, v107);
      v9;
      if ((v11 & 0x1000000000000000) == 0)
      {
LABEL_16:
        v21 = __OFADD__(v14, v18);
        v22 = v14 + v18;
        if (v21)
        {
          goto LABEL_150;
        }

        goto LABEL_17;
      }
    }

    else
    {
      v9;
      v20 = v18;
      if ((v11 & 0x1000000000000000) == 0)
      {
        goto LABEL_16;
      }
    }

    v108 = String.UTF8View._foreignCount()();
    v22 = v108 + v18;
    if (__OFADD__(v108, v18))
    {
LABEL_150:
      __break(1u);
LABEL_151:
      _fatalErrorMessage(_:_:file:line:flags:)("Fatal error", 11, 2);
    }

LABEL_17:
    v129 = v7;
    v23 = *&v10 & ~v11;
    if ((v23 & 0x2000000000000000) != 0 && swift_isUniquelyReferenced_nonNull_native(v11 & 0xFFFFFFFFFFFFFFFLL))
    {
      v24 = _StringGuts.nativeUnusedCapacity.getter(*&v10, v11);
      if (v25)
      {
        goto LABEL_153;
      }

      if (v22 > 15)
      {
        goto LABEL_28;
      }

      if ((v11 & 0x2000000000000000) == 0)
      {
        if (v24 < v18)
        {
          goto LABEL_23;
        }

LABEL_28:
        v28 = v23 & 0x2000000000000000;
        v29 = _StringGuts.nativeUnusedCapacity.getter(*&v10, v11);
        if ((v30 & 1) != 0 || v29 < v18)
        {
          v31 = v20;
          if (v28)
          {
            swift_isUniquelyReferenced_nonNull_native(v11 & 0xFFFFFFFFFFFFFFFLL);
          }

          v32 = 2 * _StringGuts.nativeCapacity.getter(*&v10, v11);
          if (v33)
          {
            v32 = 0;
          }

          if (v32 > v22)
          {
            v22 = v32;
          }
        }

        else
        {
          v31 = v20;
          if (v28)
          {
            v6 = a6;
            if (swift_isUniquelyReferenced_nonNull_native(v11 & 0xFFFFFFFFFFFFFFFLL))
            {
              goto LABEL_80;
            }

            goto LABEL_37;
          }
        }

        v6 = a6;
LABEL_37:
        v34 = _StringGuts.uniqueNativeCapacity.getter();
        if (v35)
        {
          v36 = *(v6 + 8);
          if ((v36 & 0x1000000000000000) != 0)
          {
            v37 = String.UTF8View._foreignCount()();
          }

          else if ((v36 & 0x2000000000000000) != 0)
          {
            v37 = HIBYTE(v36) & 0xF;
          }

          else
          {
            v37 = *v6 & 0xFFFFFFFFFFFFLL;
          }
        }

        else
        {
          v37 = 2 * v34;
        }

        if (v37 <= v22)
        {
          v37 = v22;
        }

        v51 = *(v6 + 8);
        if ((v51 & 0x1000000000000000) != 0)
        {
          _StringGuts._foreignGrow(_:)(v37);
        }

        else
        {
          v52 = *v6;
          if ((v51 & 0x2000000000000000) != 0)
          {
            v61 = HIBYTE(v51) & 0xF;
            __src = *v6;
            v131 = v51 & 0xFFFFFFFFFFFFFFLL;
            v62 = v61 | 0xC000000000000000;
            if ((v51 & 0x4000000000000000) == 0)
            {
              v62 = HIBYTE(v51) & 0xF;
            }

            v60 = v62 | 0x3000000000000000;
            v63 = _allocateStringStorage(codeUnitCapacity:)(v37);
            v59 = v63;
            *(v63 + 16) = v64;
            *(v63 + 24) = v60;
            if (v64 < 0)
            {
              *((v63 + (v64 & 0xFFFFFFFFFFFFLL) + 39) & 0xFFFFFFFFFFFFFFF8) = 0;
              v60 = *(v63 + 24);
            }

            v65 = (v63 + 32);
            *(v59 + 32 + (v60 & 0xFFFFFFFFFFFFLL)) = 0;
            if (&__src < v59 + 32 + v61 && v65 < &__src + v61)
            {
              goto LABEL_151;
            }

            memcpy(v65, &__src, HIBYTE(v51) & 0xF);
          }

          else
          {
            if ((v52 & 0x1000000000000000) != 0)
            {
              v53 = ((v51 & 0xFFFFFFFFFFFFFFFLL) + 32);
              v54 = v52 & 0xFFFFFFFFFFFFLL;
            }

            else
            {
              v111 = v37;
              v53 = _StringObject.sharedUTF8.getter(*v6, *(v6 + 8));
              v37 = v111;
              v54 = v112;
            }

            v55 = v54 | 0xC000000000000000;
            if (v52 >= 0)
            {
              v55 = v54;
            }

            v56 = v55 | 0x3000000000000000;
            v57 = _allocateStringStorage(codeUnitCapacity:)(v37);
            v59 = v57;
            *(v57 + 16) = v58;
            *(v57 + 24) = v56;
            if (v58 < 0)
            {
              *((v57 + (v58 & 0xFFFFFFFFFFFFLL) + 39) & 0xFFFFFFFFFFFFFFF8) = 0;
              v56 = *(v57 + 24);
            }

            *(v57 + 32 + (v56 & 0xFFFFFFFFFFFFLL)) = 0;
            specialized UnsafeMutablePointer.initialize(from:count:)(v53, v54, (v57 + 32));
            v60 = *(v59 + 24);
          }

          v51;
          *v6 = v60;
          *(v6 + 8) = v59;
        }

LABEL_80:
        if ((v9 & 0x1000000000000000) != 0)
        {
          _StringGuts._foreignAppendInPlace(_:)(*&v8, v9, 0, v31);
          swift_bridgeObjectRelease_n(v9, 2);
LABEL_120:
          v7 = v129;
          goto LABEL_121;
        }

        if (!v128)
        {
          __src = v8;
          v131 = v9 & 0xFFFFFFFFFFFFFFLL;
          v9;
          v84 = *(v6 + 8) & 0xFFFFFFFFFFFFFFFLL;
          v85 = v84 + 32;
          v86 = (v84 + 32 + (*(v84 + 0x18) & 0xFFFFFFFFFFFFLL));
          if (&__src < &v86[__n] && v86 < &__src + __n)
          {
            goto LABEL_151;
          }

          memcpy(v86, &__src, __n);
          v87 = *(v84 + 24);
          v88 = (v87 & 0xFFFFFFFFFFFFLL) + __n;
          v89 = v87 > -1 || (v9 & 0x4000000000000000) == 0;
          v90 = v88 | 0xC000000000000000;
          if (v89)
          {
            v90 = v88;
          }

          *(v84 + 24) = v90 | 0x3000000000000000;
          *(v85 + (v90 & 0xFFFFFFFFFFFFLL)) = 0;
          v91 = *(v84 + 16);
          if (v91 < 0)
          {
            v93 = ((v85 + (v91 & 0xFFFFFFFFFFFFLL) + 7) & 0x7FFFFFFFFFFFFFF8);
            v94 = *v93;
            *v93 = 0;
            v9;
            v94;
          }

          else
          {
            v9;
          }

          *v6 = *(v84 + 24);
          goto LABEL_120;
        }

        if ((*&v8 & 0x1000000000000000) != 0)
        {
          v66 = ((v9 & 0xFFFFFFFFFFFFFFFLL) + 32);
          if (!v123)
          {
LABEL_85:
            v9;
            v67 = *(v6 + 8) & 0xFFFFFFFFFFFFFFFLL;
            v68 = v67 + 32;
            specialized UnsafeMutablePointer.initialize(from:count:)(v66, v123, (v67 + 32 + (*(v67 + 0x18) & 0xFFFFFFFFFFFFLL)));
            v69 = *(v67 + 16);
            v70 = *(v67 + 24);
            v71 = (v70 & 0xFFFFFFFFFFFFLL) + v123;
            if ((v70 & *&v8) < 0 != v21)
            {
              v71 |= 0xC000000000000000;
            }

            v72 = v71 | 0x3000000000000000;
            *(v67 + 24) = v71 | 0x3000000000000000;
            *(v68 + (v71 & 0xFFFFFFFFFFFFLL)) = 0;
            if (v69 < 0)
            {
              v73 = ((v68 + (v69 & 0xFFFFFFFFFFFFLL) + 7) & 0x7FFFFFFFFFFFFFF8);
              v74 = *v73;
              *v73 = 0;
              v74;
              v72 = *(v67 + 24);
            }

            *v6 = v72;
            v9;
            goto LABEL_120;
          }
        }

        else
        {
          v113 = _StringObject.sharedUTF8.getter(*&v8, v9);
          if (v114 < v123)
          {
LABEL_152:
            _fatalErrorMessage(_:_:file:line:flags:)("Fatal error", 11, 2);
          }

          v66 = v113;
          if (!v123)
          {
            goto LABEL_85;
          }
        }

        if (!v66)
        {
          goto LABEL_152;
        }

        goto LABEL_85;
      }
    }

    else
    {
      if (v22 > 15)
      {
        goto LABEL_28;
      }

      if ((v11 & 0x2000000000000000) == 0)
      {
LABEL_23:
        if ((v11 & 0x1000000000000000) != 0)
        {
          v10 = _StringGuts._foreignConvertedToSmall()(*&v10, v11);
          v27 = v103;
        }

        else
        {
          if ((*&v10 & 0x1000000000000000) != 0)
          {
            v26 = ((v11 & 0xFFFFFFFFFFFFFFFLL) + 32);
          }

          else
          {
            v26 = _StringObject.sharedUTF8.getter(*&v10, v11);
            v13 = v115;
          }

          closure #1 in _StringGuts._convertedToSmall()(v26, v13, &__src, v19);
          v10 = __src;
          v27 = v131;
        }

LABEL_44:
        v9;
        if (v128)
        {
          if ((v9 & 0x1000000000000000) != 0)
          {
            v8 = _StringGuts._foreignConvertedToSmall()(*&v8, v9);
            v39 = v116;
            v9;
          }

          else
          {
            v109 = v123;
            if ((*&v8 & 0x1000000000000000) != 0)
            {
              v110 = ((v9 & 0xFFFFFFFFFFFFFFFLL) + 32);
            }

            else
            {
              v110 = _StringObject.sharedUTF8.getter(*&v8, v9);
            }

            closure #1 in _StringGuts._convertedToSmall()(v110, v109, &__src, v38);
            v9;
            v8 = __src;
            v39 = v131;
          }
        }

        else
        {
          v9;
          v39 = v9;
        }

        v40 = HIBYTE(v27) & 0xF;
        v41 = HIBYTE(v39) & 0xF;
        v42 = v41 + v40;
        if (v41 + v40 > 0xF)
        {
LABEL_153:
          _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
        }

        v9;
        if (v41)
        {
          v43 = 0;
          v44 = 0;
          v45 = 8 * v40;
          do
          {
            v46 = v39 >> (v43 & 0x38);
            if (v44 < 8)
            {
              v46 = *&v8 >> v43;
            }

            v47 = (v46 << (v45 & 0x38)) | ((-255 << (v45 & 0x38)) - 1) & v27;
            v48 = (v46 << v45) | ((-255 << v45) - 1) & *&v10;
            if (v40 <= 7)
            {
              v10 = v48;
            }

            else
            {
              v27 = v47;
            }

            ++v40;
            v45 += 8;
            v43 += 8;
            ++v44;
          }

          while (8 * v41 != v43);
        }

        v9;
        v11;
        v49 = 0xE000000000000000;
        if (*&v10 & 0x8080808080808080 | v27 & 0x80808080808080)
        {
          v49 = 0xA000000000000000;
        }

        v6 = a6;
        *a6 = v10;
        a6[1] = (v49 & 0xFF00000000000000 | (v42 << 56) | v27 & 0xFFFFFFFFFFFFFFLL);
        goto LABEL_120;
      }
    }

    v27 = v11;
    goto LABEL_44;
  }

  0xE000000000000000;
LABEL_144:
  v117 = *(v6 + 8);
  v118 = HIBYTE(v117) & 0xF;
  if ((v117 & 0x2000000000000000) == 0)
  {
    v118 = *v6 & 0xFFFFFFFFFFFFLL;
  }

  if (v118 || (*v6 & ~v117 & 0x2000000000000000) != 0)
  {
    _StringGuts.append(_:)(a4, a5, v95, v96, v97, v98, v99, v100, v101, v102);
  }

  else
  {
    a5;
    v117;
    *v6 = a4;
    *(v6 + 8) = a5;
  }
}

void specialized _print<A>(_:separator:terminator:to:)(uint64_t a1, unint64_t a2, unint64_t a3, uint64_t a4, void *a5, uint64_t a6, void (*a7)(uint64_t *, uint64_t, unsigned __int8 *, ValueMetadata *, _UNKNOWN **))
{
  v23._countAndFlagsBits = a4;
  v23._object = a5;
  _swift_stdlib_flockfile_stdout();
  v12 = *(a1 + 16);
  if (v12)
  {
    outlined init with copy of Any(a1 + 32, v25);
    v13._countAndFlagsBits = 0;
    v13._object = 0xE000000000000000;
    _Stdout.write(_:)(v13);
    a7(v25, a6, byte_1EEEAC6F8, &type metadata for _Stdout, &protocol witness table for _Stdout);
    __swift_destroy_boxed_opaque_existential_1Tm(v25);
    v14 = v12 - 1;
    if (v14)
    {
      if ((a3 & 0x2000000000000000) != 0)
      {
        v15 = HIBYTE(a3) & 0xF;
      }

      else
      {
        v15 = a2 & 0xFFFFFFFFFFFFLL;
      }

      v16 = a1 + 64;
      do
      {
        outlined init with copy of Any(v16, v25);
        if (!v15)
        {
          goto LABEL_10;
        }

        a3;
        v19 = a3;
        v20 = a2;
        if ((a3 & 0x1000000000000000) != 0)
        {
          v20 = specialized static String._copying(_:)(a2, a3);
          v19 = v21;
          a3;
          if ((v19 & 0x2000000000000000) == 0)
          {
LABEL_14:
            if ((v20 & 0x1000000000000000) != 0)
            {
              v18 = ((v19 & 0xFFFFFFFFFFFFFFFLL) + 32);
              v17 = v20 & 0xFFFFFFFFFFFFLL;
            }

            else
            {
              v18 = _StringObject.sharedUTF8.getter(v20, v19);
              if (!v18)
              {
                _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
              }

              v17 = v22;
            }

            goto LABEL_9;
          }
        }

        else if ((a3 & 0x2000000000000000) == 0)
        {
          goto LABEL_14;
        }

        v17 = HIBYTE(v19) & 0xF;
        v24[0] = v20;
        v24[1] = v19 & 0xFFFFFFFFFFFFFFLL;
        v18 = v24;
LABEL_9:
        _swift_stdlib_fwrite_stdout(v18, 1uLL, v17);
        v19;
LABEL_10:
        a7(v25, a6, byte_1EEEAC6F8, &type metadata for _Stdout, &protocol witness table for _Stdout);
        __swift_destroy_boxed_opaque_existential_1Tm(v25);
        v16 += 32;
        --v14;
      }

      while (v14);
    }
  }

  _Stdout.write(_:)(v23);
  _swift_stdlib_funlockfile_stdout();
}

uint64_t _print<A>(_:separator:terminator:to:)(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4, unint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void (*a9)(uint64_t *, uint64_t, unsigned __int8 *, uint64_t, uint64_t))
{
  (*(a8 + 8))(a7, a8);
  v15 = *(a1 + 16);
  v16 = *(a8 + 24);
  if (v15)
  {
    outlined init with copy of Any(a1 + 32, v22);
    v16(0, 0xE000000000000000, a7, a8);
    0xE000000000000000;
    a9(v22, a6, byte_1EEEAC6F8, a7, a8);
    __swift_destroy_boxed_opaque_existential_1Tm(v22);
    v17 = v15 - 1;
    if (v17)
    {
      v18 = a1 + 64;
      do
      {
        a3;
        outlined init with copy of Any(v18, v22);
        v16(a2, a3, a7, a8);
        a3;
        a9(v22, a6, byte_1EEEAC6F8, a7, a8);
        __swift_destroy_boxed_opaque_existential_1Tm(v22);
        v18 += 32;
        --v17;
      }

      while (v17);
    }
  }

  v16(a4, a5, a7, a8);
  return (*(a8 + 16))(a7, a8);
}

Swift::UInt64 __swiftcall SystemRandomNumberGenerator.next()()
{
  __buf = 0;
  swift_stdlib_random(&__buf, 8uLL);
  return __buf;
}

uint64_t protocol witness for RandomNumberGenerator.next() in conformance SystemRandomNumberGenerator()
{
  __buf = 0;
  swift_stdlib_random(&__buf, 8uLL);
  return __buf;
}

uint64_t Range.init(uncheckedBounds:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v45 = a2;
  v48 = a5;
  swift_getTupleTypeMetadata2(0, a3, a3, "lower upper ", 0);
  v9 = v8;
  v10 = *(v8 - 8);
  v11 = MEMORY[0x1EEE9AC00](v8);
  v44 = &v39 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x1EEE9AC00](v11);
  v43 = &v39 - v14;
  v15 = MEMORY[0x1EEE9AC00](v13);
  v47 = &v39 - v16;
  v17 = MEMORY[0x1EEE9AC00](v15);
  v46 = &v39 - v18;
  MEMORY[0x1EEE9AC00](v17);
  v20 = &v39 - v19;
  v21 = *(a3 - 8);
  v22 = *(v21 + 32);
  v22(&v39 - v19, a1, a3);
  v23 = *(v9 + 48);
  v22(&v20[v23], v45, a3);
  if (((*(a4 + 24))(v20, &v20[v23], a3, a4) & 1) == 0)
  {
    _fatalErrorMessage(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  v42 = a4;
  v40 = *(v10 + 16);
  v24 = v46;
  v40(v46, v20, v9);
  v45 = *(v9 + 48);
  v41 = *(v10 + 32);
  v39 = v22;
  v25 = v21;
  v26 = v47;
  v41();
  v27 = *(v9 + 48);
  v28 = v43;
  v29 = v24;
  v30 = v39;
  v39(v43, v29, a3);
  v30(&v28[*(v9 + 48)], &v26[v27], a3);
  v31 = v30;
  v32 = v44;
  v40(v44, v28, v9);
  v33 = *(v9 + 48);
  v31(v48, v32, a3);
  v34 = *(v25 + 8);
  v34(&v32[v33], a3);
  (v41)(v32, v28, v9);
  v35 = *(v9 + 48);
  v37 = type metadata accessor for Range(0, a3, v42, v36);
  v31(v48 + *(v37 + 36), &v32[v35], a3);
  v34(v32, a3);
  v34(v47, a3);
  return (v34)(&v46[v45], a3);
}

uint64_t protocol witness for Sequence.makeIterator() in conformance <> ClosedRange<A>@<X0>(unint64_t a1@<X0>, uint64_t a2@<X1>, int *a3@<X2>, void (*a4)(unint64_t)@<X3>, uint64_t a5@<X8>)
{
  v9 = *(a1 - 8);
  v13 = *(a2 - 16);
  (*(v9 + 16))(a5, v5, a1);
  v14 = vextq_s8(v13, v13, 8uLL);
  WitnessTable = swift_getWitnessTable(a3, a1, &v14);
  type metadata accessor for IndexingIterator(0, a1, WitnessTable, v11);
  a4(a1);
  return (*(v9 + 8))(v5, a1);
}

uint64_t protocol witness for Sequence.underestimatedCount.getter in conformance <> ClosedRange<A>(unint64_t a1, uint64_t a2, int *a3)
{
  v6 = vextq_s8(*(a2 - 16), *(a2 - 16), 8uLL);
  WitnessTable = swift_getWitnessTable(a3, a1, &v6);
  return Collection.underestimatedCount.getter(a1, WitnessTable);
}

uint64_t Range<>._customContainsEquatableElement(_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v7 = *(a2 + 16);
  v8 = *(a3 + 8);
  if ((*(v8 + 24))(v4, a1, v7, v8))
  {
    v9 = (*(v8 + 16))(a1, v4 + *(a2 + 36), v7, v8);
  }

  else
  {
    v9 = 0;
  }

  return v9 & 1;
}

uint64_t protocol witness for Sequence._copyToContiguousArray() in conformance <> ClosedRange<A>(unint64_t a1, uint64_t a2, int *a3)
{
  v8 = vextq_s8(*(a2 - 16), *(a2 - 16), 8uLL);
  WitnessTable = swift_getWitnessTable(a3, a1, &v8);
  v6 = specialized Collection._copyToContiguousArray()(v3, a1, WitnessTable);
  (*(*(a1 - 8) + 8))(v3, a1);
  return v6;
}

uint64_t Range<>.index(after:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, int **a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v6 = v5;
  v59 = a4;
  v65 = a5;
  v66 = a1;
  v9 = *(a2 + 16);
  v67 = a3;
  swift_getAssociatedTypeWitness(0, a3, v9, &protocol requirements base descriptor for Strideable, associated type descriptor for Strideable.Stride);
  v11 = v10;
  v63 = *(v10 - 1);
  MEMORY[0x1EEE9AC00](v10);
  v62 = &v52 - v12;
  v60 = *(*(swift_getAssociatedConformanceWitness(a3, v9, v11, &protocol requirements base descriptor for Strideable, associated conformance descriptor for Strideable.Strideable.Stride: SignedNumeric) + 8) + 16);
  v64 = v11;
  swift_getAssociatedTypeWitness(0, v60, v11, &protocol requirements base descriptor for ExpressibleByIntegerLiteral, associated type descriptor for ExpressibleByIntegerLiteral.IntegerLiteralType);
  v58 = v13;
  MEMORY[0x1EEE9AC00](v13);
  v57 = &v52 - v14;
  swift_getTupleTypeMetadata2(0, v9, v9, "lower upper ", 0);
  v55 = *(v15 - 8);
  v56 = v15;
  v16 = MEMORY[0x1EEE9AC00](v15);
  v53 = &v52 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = MEMORY[0x1EEE9AC00](v16);
  v20 = &v52 - v19;
  v21 = MEMORY[0x1EEE9AC00](v18);
  v23 = &v52 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = MEMORY[0x1EEE9AC00](v21);
  v26 = &v52 - v25;
  v61 = a2;
  v54 = *(a2 - 8);
  MEMORY[0x1EEE9AC00](v24);
  v28 = &v52 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = v29;
  v31 = *(v29 + 16);
  v31(v26, v6, v9);
  v31(v23, v6 + *(a2 + 36), v9);
  if (((*(v67[1] + 3))(v26, v23, v9) & 1) == 0)
  {
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  v32 = *(v30 + 32);
  v32(v20, v26, v9);
  v33 = v56;
  v34 = v23;
  v35 = v9;
  v32(&v20[*(v56 + 48)], v34, v9);
  v36 = v55;
  v37 = v53;
  (*(v55 + 16))(v53, v20, v33);
  v52 = *(v33 + 48);
  v32(v28, v37, v35);
  v38 = *(v30 + 8);
  v38(&v37[v52], v35);
  (*(v36 + 32))(v37, v20, v33);
  v39 = *(v33 + 48);
  v40 = v61;
  v32(&v28[*(v61 + 36)], &v37[v39], v35);
  v41 = v37;
  v42 = v35;
  v38(v41, v35);
  v43 = v67;
  v68[0] = v67;
  v68[1] = v59;
  WitnessTable = swift_getWitnessTable(protocol conformance descriptor for <> Range<A>, v40, v68);
  specialized Collection._failEarlyRangeCheck(_:bounds:)(v66, v28, v40, WitnessTable);
  (*(v54 + 8))(v28, v40);
  v45 = v60;
  v46 = v64;
  v47 = v58;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness(v60, v64, v58, &protocol requirements base descriptor for ExpressibleByIntegerLiteral, associated conformance descriptor for ExpressibleByIntegerLiteral.ExpressibleByIntegerLiteral.IntegerLiteralType: _ExpressibleByBuiltinIntegerLiteral);
  v49 = v57;
  (*(AssociatedConformanceWitness + 8))(&qword_1806729C0, 512, v47, AssociatedConformanceWitness);
  v50 = v62;
  (v45[3])(v49, v46, v45);
  (v43[6])(v50, v42, v43);
  return (*(v63 + 8))(v50, v46);
}

uint64_t Range<>.index(before:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v24 = a2;
  v23 = a4;
  v6 = *(a2 + 16);
  swift_getAssociatedTypeWitness(0, a3, v6, &protocol requirements base descriptor for Strideable, associated type descriptor for Strideable.Stride);
  v8 = v7;
  v22 = *(v7 - 1);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v21 - v9;
  v11 = *(*(swift_getAssociatedConformanceWitness(a3, v6, v8, &protocol requirements base descriptor for Strideable, associated conformance descriptor for Strideable.Strideable.Stride: SignedNumeric) + 8) + 16);
  swift_getAssociatedTypeWitness(0, v11, v8, &protocol requirements base descriptor for ExpressibleByIntegerLiteral, associated type descriptor for ExpressibleByIntegerLiteral.IntegerLiteralType);
  v13 = v12;
  MEMORY[0x1EEE9AC00](v12);
  v15 = &v21 - v14;
  v16 = *(a3 + 8);
  v17 = *(v16 + 40);
  v26 = a1;
  v18 = v25;
  if ((v17(a1) & 1) == 0 || ((*(v16 + 24))(v26, v18 + *(v24 + 36), v6, v16) & 1) == 0)
  {
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness(v11, v8, v13, &protocol requirements base descriptor for ExpressibleByIntegerLiteral, associated conformance descriptor for ExpressibleByIntegerLiteral.ExpressibleByIntegerLiteral.IntegerLiteralType: _ExpressibleByBuiltinIntegerLiteral);
  (*(AssociatedConformanceWitness + 8))(&unk_18071E0B0, 257, v13, AssociatedConformanceWitness);
  (*(v11 + 24))(v15, v8, v11);
  (*(a3 + 48))(v10, v6, a3);
  return (*(v22 + 8))(v10, v8);
}

uint64_t Range<>.index(_:offsetBy:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v26[2] = a1;
  v26[0] = a3;
  v10 = *(a3 + 16);
  swift_getAssociatedTypeWitness(0, a4, v10, &protocol requirements base descriptor for Strideable, associated type descriptor for Strideable.Stride);
  v12 = v11;
  v13 = *(v11 - 8);
  v14 = MEMORY[0x1EEE9AC00](v11);
  v16 = v26 - v15;
  v27 = a2;
  v17 = *(a5 + 8);
  v18 = *(v17 + 88);
  v21 = lazy protocol witness table accessor for type Int and conformance Int(v14, v19, v20);
  v22 = v17;
  v23 = v26[1];
  v18(&v27, &type metadata for Int, v21, v12, v22);
  (*(a4 + 48))(v16, v10, a4);
  (*(v13 + 8))(v16, v12);
  v24 = *(a4 + 8);
  if (((*(v24 + 32))(a6, v23, v10, v24) & 1) == 0 || (result = (*(v24 + 24))(a6, v23 + *(v26[0] + 36), v10, v24), (result & 1) == 0))
  {
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  return result;
}

uint64_t Range<>.subscript.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  return (*(*(a2 - 8) + 16))(a3, a1, a2);
}

{
  if ((Range.contains(_:)(a1, a2) & 1) == 0)
  {
    _fatalErrorMessage(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  v6 = *(*(*(a2 + 16) - 8) + 16);

  return v6(a3, a1);
}

uint64_t Range<>._customIndexOfEquatableElement(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v5 = v4;
  v9 = *(a2 + 16);
  v10 = *(a3 + 8);
  if ((*(v10 + 24))(v5, a1, v9, v10) & 1) != 0 && ((*(v10 + 16))(a1, v5 + *(a2 + 36), v9, v10))
  {
    v11 = *(v9 - 8);
    (*(v11 + 16))(a4, a1, v9);
    v12 = 0;
  }

  else
  {
    v11 = *(v9 - 8);
    v12 = 1;
  }

  (*(v11 + 56))(a4, v12, 1, v9);
  v15 = type metadata accessor for Optional(0, v9, v13, v14);
  v16 = *(*(v15 - 8) + 56);

  return v16(a4, 0, 1, v15);
}

uint64_t (*protocol witness for Collection.subscript.read in conformance <> Range<A>(void *a1, uint64_t a2, uint64_t a3))()
{
  if (swift_coroFrameAlloc)
  {
    v6 = swift_coroFrameAlloc(0x28, 0xCCB6uLL);
  }

  else
  {
    v6 = malloc(0x28uLL);
  }

  *a1 = v6;
  v6[4] = Range<>.subscript.read(v6, a2, a3);
  return protocol witness for Collection.subscript.read in conformance _ArrayBuffer<A>;
}

uint64_t (*Range<>.subscript.read(uint64_t a1, uint64_t a2, uint64_t a3))()
{
  if ((Range.contains(_:)(a2, a3) & 1) == 0)
  {
    _fatalErrorMessage(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  return _swift_displayCrashMessage;
}

uint64_t protocol witness for Collection.index(after:) in conformance <> Range<A>@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v6 = v4;
  v60 = a4;
  v61 = a1;
  v55 = a3;
  v7 = *(a2 + 16);
  v62 = *(a3 - 8);
  swift_getAssociatedTypeWitness(0, v62, v7, &protocol requirements base descriptor for Strideable, associated type descriptor for Strideable.Stride);
  v9 = v8;
  v58 = *(v8 - 1);
  MEMORY[0x1EEE9AC00](v8);
  v57 = &v47 - v10;
  v54 = *(*(swift_getAssociatedConformanceWitness(v62, v7, v9, &protocol requirements base descriptor for Strideable, associated conformance descriptor for Strideable.Strideable.Stride: SignedNumeric) + 8) + 16);
  v59 = v9;
  swift_getAssociatedTypeWitness(0, v54, v9, &protocol requirements base descriptor for ExpressibleByIntegerLiteral, associated type descriptor for ExpressibleByIntegerLiteral.IntegerLiteralType);
  v53 = v11;
  MEMORY[0x1EEE9AC00](v11);
  v52 = &v47 - v12;
  swift_getTupleTypeMetadata2(0, v7, v7, "lower upper ", 0);
  v50 = *(v13 - 8);
  v51 = v13;
  v14 = MEMORY[0x1EEE9AC00](v13);
  v48 = &v47 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = MEMORY[0x1EEE9AC00](v14);
  v18 = &v47 - v17;
  v19 = MEMORY[0x1EEE9AC00](v16);
  v21 = &v47 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = MEMORY[0x1EEE9AC00](v19);
  v24 = &v47 - v23;
  v56 = a2;
  v49 = *(a2 - 8);
  MEMORY[0x1EEE9AC00](v22);
  v26 = &v47 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = v27;
  v29 = *(v27 + 16);
  v29(v24, v6, v7);
  v29(v21, v6 + *(a2 + 36), v7);
  if (((*(v62[1] + 3))(v24, v21, v7) & 1) == 0)
  {
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  v30 = *(v28 + 32);
  v31 = v24;
  v32 = v7;
  v30(v18, v31, v7);
  v33 = v51;
  v30(&v18[*(v51 + 48)], v21, v7);
  v34 = v50;
  v35 = v48;
  (*(v50 + 16))(v48, v18, v33);
  v36 = *(v33 + 48);
  v30(v26, v35, v32);
  v47 = *(v28 + 8);
  v47(&v35[v36], v32);
  (*(v34 + 32))(v35, v18, v33);
  v37 = v56;
  v30(&v26[*(v56 + 36)], &v35[*(v33 + 48)], v32);
  v38 = v35;
  v39 = v32;
  v47(v38, v32);
  Collection._failEarlyRangeCheck(_:bounds:)(v61, v26, v37, v55);
  (*(v49 + 8))(v26, v37);
  v40 = v53;
  v41 = v54;
  v42 = v59;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness(v54, v59, v53, &protocol requirements base descriptor for ExpressibleByIntegerLiteral, associated conformance descriptor for ExpressibleByIntegerLiteral.ExpressibleByIntegerLiteral.IntegerLiteralType: _ExpressibleByBuiltinIntegerLiteral);
  v44 = v52;
  (*(AssociatedConformanceWitness + 8))(&qword_1806729C0, 512, v40, AssociatedConformanceWitness);
  v45 = v57;
  (v41[3])(v44, v42, v41);
  (v62[6])(v45, v39);
  return (*(v58 + 8))(v45, v42);
}

uint64_t protocol witness for Collection.formIndex(after:) in conformance <> Range<A>(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v53 = a3;
  v5 = *(a2 + 16);
  v60 = *(a3 - 8);
  swift_getAssociatedTypeWitness(0, v60, v5, &protocol requirements base descriptor for Strideable, associated type descriptor for Strideable.Stride);
  v7 = v6;
  v56 = *(v6 - 1);
  MEMORY[0x1EEE9AC00](v6);
  v55 = &v45 - v8;
  v52 = *(*(swift_getAssociatedConformanceWitness(v60, v5, v7, &protocol requirements base descriptor for Strideable, associated conformance descriptor for Strideable.Strideable.Stride: SignedNumeric) + 8) + 16);
  v57 = v7;
  swift_getAssociatedTypeWitness(0, v52, v7, &protocol requirements base descriptor for ExpressibleByIntegerLiteral, associated type descriptor for ExpressibleByIntegerLiteral.IntegerLiteralType);
  v51 = v9;
  MEMORY[0x1EEE9AC00](v9);
  v50 = &v45 - v10;
  swift_getTupleTypeMetadata2(0, v5, v5, "lower upper ", 0);
  v12 = v11;
  v46 = *(v11 - 8);
  v13 = MEMORY[0x1EEE9AC00](v11);
  v15 = &v45 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = MEMORY[0x1EEE9AC00](v13);
  v18 = &v45 - v17;
  v47 = *(a2 - 8);
  v19 = MEMORY[0x1EEE9AC00](v16);
  v45 = &v45 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = *(v5 - 1);
  v22 = MEMORY[0x1EEE9AC00](v19);
  v24 = &v45 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = MEMORY[0x1EEE9AC00](v22);
  v27 = &v45 - v26;
  MEMORY[0x1EEE9AC00](v25);
  v48 = &v45 - v28;
  v49 = v21;
  v29 = *(v21 + 32);
  v58 = a1;
  v29();
  Range<>.startIndex.getter(a2, v27);
  v54 = a2;
  Range<>.endIndex.getter(a2, v24);
  if (((*(v60[1] + 3))(v27, v24, v5) & 1) == 0)
  {
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  (v29)(v18, v27, v5);
  (v29)(&v18[*(v12 + 48)], v24, v5);
  v30 = v46;
  (*(v46 + 16))(v15, v18, v12);
  v31 = *(v12 + 48);
  v32 = v45;
  (v29)(v45, v15, v5);
  v59 = v29;
  v33 = v18;
  v34 = *(v49 + 8);
  v34(&v15[v31], v5);
  (*(v30 + 32))(v15, v33, v12);
  v35 = v54;
  (v59)(&v32[*(v54 + 36)], &v15[*(v12 + 48)], v5);
  v34(v15, v5);
  v36 = v34;
  v37 = v48;
  Collection._failEarlyRangeCheck(_:bounds:)(v48, v32, v35, v53);
  (*(v47 + 8))(v32, v35);
  v38 = v51;
  v39 = v52;
  v40 = v57;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness(v52, v57, v51, &protocol requirements base descriptor for ExpressibleByIntegerLiteral, associated conformance descriptor for ExpressibleByIntegerLiteral.ExpressibleByIntegerLiteral.IntegerLiteralType: _ExpressibleByBuiltinIntegerLiteral);
  v42 = v50;
  (*(AssociatedConformanceWitness + 8))(&qword_1806729C0, 512, v38, AssociatedConformanceWitness);
  v43 = v55;
  (v39[3])(v42, v40, v39);
  (v60[6])(v43, v5);
  (*(v56 + 8))(v43, v40);
  return v36(v37, v5);
}

uint64_t protocol witness for BidirectionalCollection.formIndex(before:) in conformance <> Range<A>(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a3 - 8);
  v6 = *(a2 + 16);
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v9 = &v11 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v7 + 32))(v9, a1, v6);
  Range<>.index(before:)(v9, a2, v5, a1);
  return (*(v7 + 8))(v9, v6);
}

uint64_t protocol witness for Collection.index(_:offsetBy:limitedBy:) in conformance <> ClosedRange<A>@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, unint64_t a4@<X3>, uint64_t a5@<X4>, int *a6@<X5>, uint64_t a7@<X8>)
{
  v14 = vextq_s8(*(a5 - 16), *(a5 - 16), 8uLL);
  WitnessTable = swift_getWitnessTable(a6, a4, &v14);
  return RandomAccessCollection.index(_:offsetBy:limitedBy:)(a1, a2, a3, a4, WitnessTable, a7);
}

uint64_t Range<>.init(_:)@<X0>(uint64_t a1@<X0>, const char *a2@<X1>, uint64_t a3@<X2>, char *a4@<X8>)
{
  v47 = a1;
  v51 = a4;
  swift_getTupleTypeMetadata2(0, a2, a2, "lower upper ", 0);
  v7 = *(v6 - 8);
  v49 = v6;
  v50 = v7;
  v8 = MEMORY[0x1EEE9AC00](v6);
  v48 = &v43 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v52 = &v43 - v10;
  swift_getAssociatedTypeWitness(0, a3, a2, &protocol requirements base descriptor for Strideable, associated type descriptor for Strideable.Stride);
  v12 = v11;
  v46 = *(v11 - 1);
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v43 - v13;
  v15 = *(*(swift_getAssociatedConformanceWitness(a3, a2, v12, &protocol requirements base descriptor for Strideable, associated conformance descriptor for Strideable.Strideable.Stride: SignedNumeric) + 8) + 16);
  swift_getAssociatedTypeWitness(0, v15, v12, &protocol requirements base descriptor for ExpressibleByIntegerLiteral, associated type descriptor for ExpressibleByIntegerLiteral.IntegerLiteralType);
  v17 = v16;
  v18 = MEMORY[0x1EEE9AC00](v16);
  v20 = &v43 - v19;
  v44 = *(a2 - 1);
  v21 = MEMORY[0x1EEE9AC00](v18);
  v23 = &v43 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v21);
  v25 = &v43 - v24;
  v45 = *(a3 + 8);
  v27 = type metadata accessor for ClosedRange(0, a2, v45, v26);
  v43 = *(v27 + 36);
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness(v15, v12, v17, &protocol requirements base descriptor for ExpressibleByIntegerLiteral, associated conformance descriptor for ExpressibleByIntegerLiteral.ExpressibleByIntegerLiteral.IntegerLiteralType: _ExpressibleByBuiltinIntegerLiteral);
  (*(AssociatedConformanceWitness + 8))(&qword_1806729C0, 512, v17, AssociatedConformanceWitness);
  (*(v15 + 24))(v20, v12, v15);
  v29 = v47;
  (*(a3 + 48))(v14, a2, a3);
  (*(v46 + 8))(v14, v12);
  v30 = v44;
  (*(v44 + 16))(v23, v29, a2);
  (*(*(v27 - 8) + 8))(v29, v27);
  v31 = *(v30 + 32);
  v32 = v52;
  v31(v52, v23, a2);
  v33 = v49;
  v31(&v32[*(v49 + 48)], v25, a2);
  v34 = v50;
  v35 = v48;
  (*(v50 + 16))(v48, v32, v33);
  v36 = *(v33 + 48);
  v37 = v51;
  v31(v51, v35, a2);
  v38 = *(v30 + 8);
  v38(&v35[v36], a2);
  (*(v34 + 32))(v35, v52, v33);
  v39 = *(v33 + 48);
  v41 = type metadata accessor for Range(0, a2, v45, v40);
  v31(&v37[*(v41 + 36)], &v35[v39], a2);
  return (v38)(v35, a2);
}

uint64_t ClosedRange.clamped(to:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v4 = v3;
  v5 = a2;
  v48 = a3;
  v7 = *(a2 + 16);
  swift_getTupleTypeMetadata2(0, v7, v7, "lower upper ", 0);
  v9 = *(v8 - 8);
  v46 = v8;
  v47 = v9;
  v10 = MEMORY[0x1EEE9AC00](v8);
  v45 = &v41 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x1EEE9AC00](v10);
  v44 = &v41 - v13;
  v14 = *(v7 - 8);
  v15 = MEMORY[0x1EEE9AC00](v12);
  v43 = &v41 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v18 = &v41 - v17;
  v19 = *(v5 + 24);
  v41 = *(v19 + 40);
  v20 = v41(a1, v4, v7, v19);
  v49 = v18;
  v50 = v5;
  if (v20)
  {
    v21 = v14;
    v42 = *(v14 + 16);
    v42(v18, a1, v7);
    v22 = *(v19 + 16);
  }

  else
  {
    v23 = *(v5 + 36);
    v22 = *(v19 + 16);
    v24 = v22(a1 + v23, v4, v7, v19);
    v21 = v14;
    v25 = *(v14 + 16);
    v42 = v25;
    if (v24)
    {
      v26 = a1 + v23;
      v27 = v49;
    }

    else
    {
      v27 = v49;
      v26 = v4;
    }

    v25(v27, v26, v7);
    v5 = v50;
  }

  v28 = *(v5 + 36);
  if (v22(a1 + v28, v4 + v28, v7, v19))
  {
    v29 = a1 + v28;
LABEL_12:
    v30 = v43;
    v31 = v43;
    goto LABEL_13;
  }

  if ((v41(a1, v4 + v28, v7, v19) & 1) == 0)
  {
    v29 = v4 + v28;
    goto LABEL_12;
  }

  v30 = v43;
  v31 = v43;
  v29 = a1;
LABEL_13:
  v42(v31, v29, v7);
  v32 = v21;
  v33 = *(v21 + 32);
  v34 = v44;
  v33(v44, v49, v7);
  v35 = v46;
  v33(&v34[*(v46 + 48)], v30, v7);
  v36 = v47;
  v37 = v45;
  (*(v47 + 16))(v45, v34, v35);
  v49 = *(v35 + 48);
  v38 = v48;
  v33(v48, v37, v7);
  v39 = *(v32 + 8);
  v39(&v49[v37], v7);
  (*(v36 + 32))(v37, v34, v35);
  v33(&v38[*(v50 + 36)], &v37[*(v35 + 48)], v7);
  return (v39)(v37, v7);
}

uint64_t specialized Range.description.getter(unint64_t a1, uint64_t a2)
{
  v5 = _StringGuts.init(_initialCapacity:)(7);
  v7 = v5;
  v8 = v6;
  v130 = v5;
  v131 = v6;
  v9 = HIBYTE(v6) & 0xF;
  v10 = v5 & 0xFFFFFFFFFFFFLL;
  if ((v6 & 0x2000000000000000) != 0)
  {
    v11 = HIBYTE(v6) & 0xF;
  }

  else
  {
    v11 = v5 & 0xFFFFFFFFFFFFLL;
  }

  if (!v11 && (v5 & ~v6 & 0x2000000000000000) == 0)
  {
    v6;
    v19 = 0xE000000000000000;
    v130 = 0;
    goto LABEL_63;
  }

  if ((v6 & 0x2000000000000000) != 0)
  {
    v6;
    v2 = 0xE000000000000000;
    0xE000000000000000;
    v18 = 0xA000000000000000;
    if (!(v8 & 0x80808080808080 | v7 & 0x8080808080808080))
    {
      v18 = 0xE000000000000000;
    }

    v19 = v18 & 0xFF00000000000000 | (v9 << 56) | v8 & 0xFFFFFFFFFFFFFFLL;
    goto LABEL_62;
  }

  0xE000000000000000;
  v13 = v10;
  if ((v8 & 0x1000000000000000) != 0)
  {
    v13 = String.UTF8View._foreignCount()();
    if ((v7 & 0x2000000000000000) == 0)
    {
      goto LABEL_21;
    }
  }

  else if ((v7 & 0x2000000000000000) == 0)
  {
    goto LABEL_21;
  }

  if (swift_isUniquelyReferenced_nonNull_native(v8 & 0xFFFFFFFFFFFFFFFLL))
  {
    v14 = _StringGuts.nativeUnusedCapacity.getter(v7, v8);
    if (v15)
    {
      goto LABEL_188;
    }

    if (v13 > 15 || (v14 & 0x8000000000000000) == 0)
    {
      v16 = _StringGuts.nativeUnusedCapacity.getter(v7, v8);
      if ((v17 & 1) != 0 || (v16 & 0x8000000000000000) != 0)
      {
        goto LABEL_32;
      }

      goto LABEL_25;
    }

LABEL_27:
    if ((v8 & 0x1000000000000000) != 0)
    {
      v7 = _StringGuts._foreignConvertedToSmall()(v7, v8);
      v23 = v28;
      goto LABEL_42;
    }

    if ((v7 & 0x1000000000000000) != 0)
    {
      v22 = ((v8 & 0xFFFFFFFFFFFFFFFLL) + 32);
      goto LABEL_30;
    }

    goto LABEL_185;
  }

LABEL_21:
  if (v13 <= 15)
  {
    goto LABEL_27;
  }

  v20 = _StringGuts.nativeUnusedCapacity.getter(v7, v8);
  if ((v21 & 1) != 0 || (v20 & 0x8000000000000000) != 0)
  {
    if ((v7 & 0x2000000000000000) == 0)
    {
LABEL_33:
      v24 = _StringGuts.nativeCapacity.getter(v7, v8);
      if (v25)
      {
        v26 = 0;
      }

      else
      {
        v26 = v24;
      }

      if (v26 + 0x4000000000000000 < 0)
      {
        goto LABEL_184;
      }

      v27 = 2 * v26;
      if (v27 > v13)
      {
        v13 = v27;
      }

      goto LABEL_39;
    }

LABEL_32:
    swift_isUniquelyReferenced_nonNull_native(v8 & 0xFFFFFFFFFFFFFFFLL);
    goto LABEL_33;
  }

  if ((v7 & 0x2000000000000000) != 0)
  {
LABEL_25:
    if (swift_isUniquelyReferenced_nonNull_native(v8 & 0xFFFFFFFFFFFFFFFLL))
    {
      goto LABEL_40;
    }
  }

LABEL_39:
  _StringGuts.grow(_:)(v13);
LABEL_40:
  v129 = 0uLL;
  closure #1 in _StringGuts.append(_:)(&v129, 0, &v130, 1);
  swift_bridgeObjectRelease_n(0xE000000000000000, 2);
  while (1)
  {
    *&v129 = a1;
    _print_unlocked<A, B>(_:_:)(&v129, &v130, &type metadata for Int, &type metadata for DefaultStringInterpolation, &protocol witness table for DefaultStringInterpolation);
    a1 = v130;
    v8 = v131;
    v46 = HIBYTE(v131) & 0xF;
    v47 = v130 & 0xFFFFFFFFFFFFLL;
    if ((v131 & 0x2000000000000000) != 0)
    {
      v48 = HIBYTE(v131) & 0xF;
    }

    else
    {
      v48 = v130 & 0xFFFFFFFFFFFFLL;
    }

    if (!v48 && (v130 & ~v131 & 0x2000000000000000) == 0)
    {
      v131;
      v130 = 3943982;
      v131 = 0xE300000000000000;
      goto LABEL_127;
    }

    if ((v131 & 0x2000000000000000) != 0 && v46 <= 0xC)
    {
      v49 = 8 * HIBYTE(v131);
      v50 = (-255 << (v49 & 0x38)) - 1;
      v51 = 46 << (v49 & 0x38);
      v52 = v46 + 1;
      if (v46 >= 8)
      {
        v54 = v50 & v131 | v51;
        v53 = 8 * (v52 & 7);
      }

      else
      {
        a1 = v50 & v130 | v51;
        if (v46 != 7)
        {
          a1 = ((-255 << (8 * (v52 & 7u))) - 1) & a1 | (46 << (8 * (v52 & 7u)));
          if (v46 < 6)
          {
            a1 = ((-255 << ((v49 + 16) & 0x38)) - 1) & a1 | (60 << ((v49 + 16) & 0x38));
            v71 = v131;
            goto LABEL_102;
          }

          v70 = 0;
          v69 = v131;
LABEL_101:
          v71 = ((-255 << v70) - 1) & v69 | (60 << v70);
LABEL_102:
          v131;
          0xE300000000000000;
          v72 = 0xA000000000000000;
          if (!(a1 & 0x8080808080808080 | v71 & 0x80808080808080))
          {
            v72 = 0xE000000000000000;
          }

          v73 = (v72 & 0xFF00000000000000 | (v46 << 56) | v71 & 0xFFFFFFFFFFFFFFLL) + 0x300000000000000;
          goto LABEL_126;
        }

        v53 = 0;
        v54 = v131;
      }

      v69 = ((-255 << v53) - 1) & v54 | (46 << v53);
      v70 = (v49 + 16) & 0x38;
      goto LABEL_101;
    }

    0xE300000000000000;
    if ((v8 & 0x1000000000000000) != 0)
    {
      v112 = String.UTF8View._foreignCount()();
      v7 = v112 + 3;
      if (__OFADD__(v112, 3))
      {
LABEL_166:
        __break(1u);
        goto LABEL_167;
      }
    }

    else
    {
      v56 = __OFADD__(v48, 3);
      v7 = v48 + 3;
      if (v56)
      {
        goto LABEL_166;
      }
    }

    v57 = a1 & ~v8;
    if ((v57 & 0x2000000000000000) != 0 && swift_isUniquelyReferenced_nonNull_native(v8 & 0xFFFFFFFFFFFFFFFLL))
    {
      v58 = _StringGuts.nativeUnusedCapacity.getter(a1, v8);
      if (v59)
      {
        goto LABEL_188;
      }

      if (v7 <= 15)
      {
        if ((v8 & 0x2000000000000000) != 0)
        {
          goto LABEL_106;
        }

        if (v58 < 3)
        {
          goto LABEL_82;
        }
      }
    }

    else if (v7 <= 15)
    {
      if ((v8 & 0x2000000000000000) != 0)
      {
LABEL_106:
        v61 = v8;
      }

      else
      {
LABEL_82:
        if ((v8 & 0x1000000000000000) != 0)
        {
          a1 = _StringGuts._foreignConvertedToSmall()(a1, v8);
          v61 = v111;
        }

        else
        {
          if ((a1 & 0x1000000000000000) != 0)
          {
            v60 = ((v8 & 0xFFFFFFFFFFFFFFFLL) + 32);
          }

          else
          {
            v60 = _StringObject.sharedUTF8.getter(a1, v8);
            v47 = v122;
          }

          closure #1 in _StringGuts._convertedToSmall()(v60, v47, &v129, v55);
          v61 = *(&v129 + 1);
          a1 = v129;
        }
      }

      v74 = 3943982;
      v75 = 0xE300000000000000;
      0xE300000000000000;
      v76._rawBits = 1;
      v77._rawBits = 196609;
      v78._rawBits = _StringGuts.validateScalarRange(_:)(v76, v77, 0x3C2E2EuLL, 0xE300000000000000)._rawBits;
      if (v78._rawBits < 0x10000)
      {
        v78._rawBits |= 3;
      }

      if (v78._rawBits >> 16 || (v79._rawBits & 0xFFFFFFFFFFFF0000) != 0x30000)
      {
        v74 = specialized static String._copying(_:)(v78._rawBits, v79._rawBits, 0x3C2E2EuLL, 0xE300000000000000);
        v75 = v81;
        0xE300000000000000;
      }

      if ((v75 & 0x2000000000000000) != 0)
      {
        v75;
      }

      else if ((v75 & 0x1000000000000000) != 0)
      {
        v74 = _StringGuts._foreignConvertedToSmall()(v74, v75);
        v128 = v127;
        v75;
        v75 = v128;
      }

      else
      {
        if ((v74 & 0x1000000000000000) != 0)
        {
          v118 = ((v75 & 0xFFFFFFFFFFFFFFFLL) + 32);
          v119 = v74 & 0xFFFFFFFFFFFFLL;
        }

        else
        {
          v118 = _StringObject.sharedUTF8.getter(v74, v75);
        }

        closure #1 in _StringGuts._convertedToSmall()(v118, v119, &v129, v80);
        v75;
        v75 = *(&v129 + 1);
        v74 = v129;
      }

      v82 = HIBYTE(v61) & 0xF;
      v83 = HIBYTE(v75) & 0xF;
      v84 = v83 + v82;
      if (v83 + v82 > 0xF)
      {
        goto LABEL_188;
      }

      0xE300000000000000;
      if (v83)
      {
        v85 = 0;
        v86 = 0;
        v87 = 8 * v82;
        do
        {
          v88 = v75 >> (v85 & 0x38);
          if (v86 < 8)
          {
            v88 = v74 >> v85;
          }

          v89 = (v88 << (v87 & 0x38)) | ((-255 << (v87 & 0x38)) - 1) & v61;
          v90 = (v88 << v87) | ((-255 << v87) - 1) & a1;
          if (v82 <= 7)
          {
            a1 = v90;
          }

          else
          {
            v61 = v89;
          }

          ++v82;
          v87 += 8;
          v85 += 8;
          ++v86;
        }

        while (8 * v83 != v85);
      }

      v8;
      0xE300000000000000;
      v91 = 0xA000000000000000;
      if (!(a1 & 0x8080808080808080 | v61 & 0x80808080808080))
      {
        v91 = 0xE000000000000000;
      }

      v73 = v91 & 0xFF00000000000000 | (v84 << 56) | v61 & 0xFFFFFFFFFFFFFFLL;
LABEL_126:
      v130 = a1;
      v131 = v73;
      goto LABEL_127;
    }

    v62 = v57 & 0x2000000000000000;
    v63 = _StringGuts.nativeUnusedCapacity.getter(a1, v8);
    if ((v64 & 1) == 0 && v63 > 2)
    {
      if (!v62 || !swift_isUniquelyReferenced_nonNull_native(v8 & 0xFFFFFFFFFFFFFFFLL))
      {
        goto LABEL_97;
      }

      goto LABEL_98;
    }

    if (v62)
    {
      swift_isUniquelyReferenced_nonNull_native(v8 & 0xFFFFFFFFFFFFFFFLL);
    }

    v65 = _StringGuts.nativeCapacity.getter(a1, v8);
    v67 = (v66 & 1) != 0 ? 0 : v65;
    if (v67 + 0x4000000000000000 >= 0)
    {
      break;
    }

    __break(1u);
LABEL_184:
    __break(1u);
LABEL_185:
    v22 = _StringObject.sharedUTF8.getter(v7, v8);
    v10 = v120;
LABEL_30:
    closure #1 in _StringGuts._convertedToSmall()(v22, v10, &v129, v12);
    v23 = *(&v129 + 1);
    v7 = v129;
LABEL_42:
    v29 = 0xE000000000000000;
    0xE000000000000000;
    v30._rawBits = 1;
    v31._rawBits = 1;
    v32._rawBits = _StringGuts.validateScalarRange(_:)(v30, v31, 0, 0xE000000000000000)._rawBits;
    if (v32._rawBits < 0x10000)
    {
      v32._rawBits |= 3;
    }

    if (v32._rawBits >> 16 || v33._rawBits >= 0x10000)
    {
      v35 = specialized static String._copying(_:)(v32._rawBits, v33._rawBits, 0, 0xE000000000000000);
      v29 = v36;
      0xE000000000000000;
    }

    else
    {
      v35 = 0;
    }

    if ((v29 & 0x2000000000000000) != 0)
    {
      v29;
    }

    else if ((v29 & 0x1000000000000000) != 0)
    {
      v35 = _StringGuts._foreignConvertedToSmall()(v35, v29);
      v124 = v123;
      v29;
      v29 = v124;
    }

    else
    {
      if ((v35 & 0x1000000000000000) != 0)
      {
        v114 = ((v29 & 0xFFFFFFFFFFFFFFFLL) + 32);
        v115 = v35 & 0xFFFFFFFFFFFFLL;
      }

      else
      {
        v114 = _StringObject.sharedUTF8.getter(v35, v29);
      }

      closure #1 in _StringGuts._convertedToSmall()(v114, v115, &v129, v34);
      v29;
      v29 = *(&v129 + 1);
      v35 = v129;
    }

    v37 = HIBYTE(v23) & 0xF;
    v2 = HIBYTE(v29) & 0xF;
    v38 = v2 + v37;
    if (v2 + v37 > 0xF)
    {
      goto LABEL_188;
    }

    0xE000000000000000;
    if (v2)
    {
      v39 = 0;
      v40 = 0;
      v41 = 8 * v37;
      do
      {
        v42 = v29 >> (v39 & 0x38);
        if (v40 < 8)
        {
          v42 = v35 >> v39;
        }

        v43 = (v42 << (v41 & 0x38)) | ((-255 << (v41 & 0x38)) - 1) & v23;
        v44 = (v42 << v41) | ((-255 << v41) - 1) & v7;
        if (v37 <= 7)
        {
          v7 = v44;
        }

        else
        {
          v23 = v43;
        }

        ++v37;
        v41 += 8;
        v39 += 8;
        ++v40;
      }

      while (8 * v2 != v39);
    }

    v8;
    0xE000000000000000;
    v45 = 0xA000000000000000;
    if (!(v7 & 0x8080808080808080 | v23 & 0x80808080808080))
    {
      v45 = 0xE000000000000000;
    }

    v19 = v45 & 0xFF00000000000000 | (v38 << 56) | v23 & 0xFFFFFFFFFFFFFFLL;
LABEL_62:
    v130 = v7;
LABEL_63:
    v131 = v19;
  }

  v68 = 2 * v67;
  if (v68 > v7)
  {
    v7 = v68;
  }

LABEL_97:
  _StringGuts.grow(_:)(v7);
LABEL_98:
  v129 = xmmword_18071DCA0;
  closure #1 in _StringGuts.append(_:)(&v129, 3uLL, &v130, 1);
  swift_bridgeObjectRelease_n(0xE300000000000000, 2);
LABEL_127:
  *&v129 = a2;
  _print_unlocked<A, B>(_:_:)(&v129, &v130, &type metadata for Int, &type metadata for DefaultStringInterpolation, &protocol witness table for DefaultStringInterpolation);
  v8 = v130;
  v2 = v131;
  a1 = v130 & 0xFFFFFFFFFFFFLL;
  if ((v131 & 0x2000000000000000) != 0)
  {
    v92 = HIBYTE(v131) & 0xF;
  }

  else
  {
    v92 = v130 & 0xFFFFFFFFFFFFLL;
  }

  if (v92 || (v130 & ~v131 & 0x2000000000000000) != 0)
  {
    if ((v131 & 0x2000000000000000) == 0)
    {
      0xE000000000000000;
      v94 = a1;
      if ((v2 & 0x1000000000000000) == 0)
      {
        if ((v8 & 0x2000000000000000) != 0)
        {
          goto LABEL_135;
        }

LABEL_168:
        if (v94 > 15)
        {
LABEL_169:
          _StringGuts.prepareForAppendInPlace(totalCount:otherUTF8Count:)(v94, 0);
          v129 = 0uLL;
          closure #1 in _StringGuts.append(_:)(&v129, 0, &v130, 1);
          swift_bridgeObjectRelease_n(0xE000000000000000, 2);
          return v130;
        }

LABEL_139:
        if ((v2 & 0x1000000000000000) != 0)
        {
          v98 = _StringGuts._foreignConvertedToSmall()(v8, v2);
          v99 = v100;
        }

        else
        {
          if ((v8 & 0x1000000000000000) != 0)
          {
            v97 = ((v2 & 0xFFFFFFFFFFFFFFFLL) + 32);
          }

          else
          {
            v97 = _StringObject.sharedUTF8.getter(v8, v2);
            a1 = v121;
          }

          closure #1 in _StringGuts._convertedToSmall()(v97, a1, &v129, v93);
          v99 = *(&v129 + 1);
          v98 = v129;
        }

        v101 = 0xE000000000000000;
        0xE000000000000000;
        v102._rawBits = 1;
        v103._rawBits = 1;
        v104._rawBits = _StringGuts.validateScalarRange(_:)(v102, v103, 0, 0xE000000000000000)._rawBits;
        if (v104._rawBits < 0x10000)
        {
          v104._rawBits |= 3;
        }

        if (v104._rawBits >> 16 || v105._rawBits >= 0x10000)
        {
          v107 = specialized static String._copying(_:)(v104._rawBits, v105._rawBits, 0, 0xE000000000000000);
          v101 = v108;
          0xE000000000000000;
        }

        else
        {
          v107 = 0;
        }

        if ((v101 & 0x2000000000000000) != 0)
        {
          v101;
        }

        else if ((v101 & 0x1000000000000000) != 0)
        {
          v107 = _StringGuts._foreignConvertedToSmall()(v107, v101);
          v126 = v125;
          v101;
          v101 = v126;
        }

        else
        {
          if ((v107 & 0x1000000000000000) != 0)
          {
            v116 = ((v101 & 0xFFFFFFFFFFFFFFFLL) + 32);
            v117 = v107 & 0xFFFFFFFFFFFFLL;
          }

          else
          {
            v116 = _StringObject.sharedUTF8.getter(v107, v101);
          }

          closure #1 in _StringGuts._convertedToSmall()(v116, v117, &v129, v106);
          v101;
          v101 = *(&v129 + 1);
          v107 = v129;
        }

        v109 = specialized _SmallString.init(_:appending:)(v98, v99, v107, v101);
        if ((v110 & 1) == 0)
        {
          v8 = v109;
          v2;
          swift_bridgeObjectRelease_n(0xE000000000000000, 2);
          return v8;
        }

LABEL_188:
        _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
      }

LABEL_167:
      v94 = String.UTF8View._foreignCount()();
      if ((v8 & 0x2000000000000000) == 0)
      {
        goto LABEL_168;
      }

LABEL_135:
      if (!swift_isUniquelyReferenced_nonNull_native(v2 & 0xFFFFFFFFFFFFFFFLL))
      {
        goto LABEL_168;
      }

      v95 = _StringGuts.nativeUnusedCapacity.getter(v8, v2);
      if ((v96 & 1) == 0)
      {
        if (v94 > 15 || (v95 & 0x8000000000000000) == 0)
        {
          goto LABEL_169;
        }

        goto LABEL_139;
      }

      goto LABEL_188;
    }

    v131;
    0xE000000000000000;
  }

  else
  {
    v131;
    return 0;
  }

  return v8;
}

unint64_t ClosedRange.description.getter(uint64_t a1, unint64_t a2)
{
  v4 = v2;
  v24 = _StringGuts.init(_initialCapacity:)(7);
  v25 = v6;
  v7 = *(a1 + 16);
  _print_unlocked<A, B>(_:_:)(v2, &v24, v7, &type metadata for DefaultStringInterpolation, &protocol witness table for DefaultStringInterpolation);
  v16 = v25;
  v17 = HIBYTE(v25) & 0xF;
  if ((v25 & 0x2000000000000000) == 0)
  {
    v17 = v24 & 0xFFFFFFFFFFFFLL;
  }

  if (v17 || (v24 & ~v25 & 0x2000000000000000) != 0)
  {
    if ((v25 & 0x2000000000000000) != 0 && (v18 = specialized _SmallString.init(_:appending:)(v24, v25, a2, 0xE300000000000000), (v20 & 1) == 0))
    {
      v21 = v18;
      v22 = v19;
      v16;
      v24 = v21;
      v25 = v22;
    }

    else
    {
      _StringGuts.append(_:)(a2, 0xE300000000000000, 0, 3, v8, v9, v10, v11, v12, v13, v14, v15);
    }
  }

  else
  {
    v25;
    v24 = a2;
    v25 = 0xE300000000000000;
  }

  _print_unlocked<A, B>(_:_:)(v4 + *(a1 + 36), &v24, v7, &type metadata for DefaultStringInterpolation, &protocol witness table for DefaultStringInterpolation);
  return v24;
}

unint64_t Range.debugDescription.getter(unint64_t a1)
{
  v2 = v1;
  v253 = a1;
  v3 = *(a1 + 16);
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v6 = &v245 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = _StringGuts.init(_initialCapacity:)(8);
  v9 = v7;
  v10 = v8;
  v256 = v7;
  v257 = v8;
  v11 = HIBYTE(v8) & 0xF;
  v12 = v7 & 0xFFFFFFFFFFFFLL;
  if ((v8 & 0x2000000000000000) != 0)
  {
    v13 = HIBYTE(v8) & 0xF;
  }

  else
  {
    v13 = v7 & 0xFFFFFFFFFFFFLL;
  }

  if (v13 || (v7 & ~v8 & 0x2000000000000000) != 0)
  {
    if ((v8 & 0x2000000000000000) == 0 || v11 > 9)
    {
      0xE600000000000000;
      if ((v10 & 0x1000000000000000) != 0)
      {
        goto LABEL_180;
      }

      v21 = __OFADD__(v13, 6);
      v22 = v13 + 6;
      if (!v21)
      {
        goto LABEL_13;
      }

LABEL_182:
      __break(1u);
      goto LABEL_183;
    }

    v14 = 8 * HIBYTE(v8);
    v15 = (-255 << (v14 & 0x38)) - 1;
    v16 = 82 << (v14 & 0x38);
    v17 = v11 + 1;
    if (v11 >= 8)
    {
      v19 = v15 & v8 | v16;
      v18 = 8 * (v17 & 7);
    }

    else
    {
      v9 = v15 & v7 | v16;
      if (v11 != 7)
      {
        v9 = ((-255 << (8 * (v17 & 7u))) - 1) & v9 | (97 << (8 * (v17 & 7u)));
        if (v11 < 6)
        {
          v9 = ((-255 << ((v14 + 16) & 0x38)) - 1) & v9 | (110 << ((v14 + 16) & 0x38));
          if (v11 != 5)
          {
            v9 = ((-255 << ((v14 + 24) & 0x38)) - 1) & v9 | (103 << ((v14 + 24) & 0x38));
            if (v11 < 4)
            {
              v9 = ((0xFFFFFF0100000000 << (8 * v11)) - 1) & v9 | (0x6500000000 << (8 * v11));
              if (v11 != 3)
              {
                v9 = ((-255 << ((v14 + 40) & 0x38)) - 1) & v9 | (40 << ((v14 + 40) & 0x38));
                v37 = v8;
                goto LABEL_31;
              }

              v36 = 0;
              v35 = v8;
LABEL_30:
              v37 = ((-255 << v36) - 1) & v35 | (40 << v36);
LABEL_31:
              v8;
              0xE600000000000000;
              v38 = 0xA000000000000000;
              if (!(v9 & 0x8080808080808080 | v37 & 0x80808080808080))
              {
                v38 = 0xE000000000000000;
              }

              v28 = (v38 & 0xFF00000000000000 | (v11 << 56) | v37 & 0xFFFFFFFFFFFFFFLL) + 0x600000000000000;
              goto LABEL_46;
            }

            v34 = 0;
            v33 = v8;
LABEL_29:
            v35 = ((-255 << v34) - 1) & v33 | (101 << v34);
            v36 = (v14 + 40) & 0x38;
            goto LABEL_30;
          }

          v32 = 0;
          v31 = v8;
LABEL_28:
          v33 = ((-255 << v32) - 1) & v31 | (103 << v32);
          v34 = v14 & 0x38 ^ 0x20;
          goto LABEL_29;
        }

        v30 = 0;
        v29 = v8;
LABEL_27:
        v31 = ((-255 << v30) - 1) & v29 | (110 << v30);
        v32 = (v14 + 24) & 0x38;
        goto LABEL_28;
      }

      v18 = 0;
      v19 = v8;
    }

    v29 = ((-255 << v18) - 1) & v19 | (97 << v18);
    v30 = (v14 + 16) & 0x38;
    goto LABEL_27;
  }

  v9 = 0x2865676E6152;
  v8;
  v28 = 0xE600000000000000;
LABEL_46:
  v256 = v9;
  v257 = v28;
  while (1)
  {
    v50 = *(v4 + 16);
    v254 = v2;
    v250 = v50;
    v251 = v4 + 16;
    v50(v6, v2, v3);
    *&v255 = 0;
    *(&v255 + 1) = 0xE000000000000000;
    _debugPrint_unlocked<A, B>(_:_:)(v6, &v255, v3, &type metadata for String, &protocol witness table for String);
    v52 = *(v4 + 8);
    v51 = v4 + 8;
    v252 = v6;
    v249 = v52;
    v52(v6, v3);
    v10 = *(&v255 + 1);
    v6 = v255;
    v53 = HIBYTE(v28) & 0xF;
    v2 = v9 & 0xFFFFFFFFFFFFLL;
    if ((v28 & 0x2000000000000000) != 0)
    {
      v54 = HIBYTE(v28) & 0xF;
    }

    else
    {
      v54 = v9 & 0xFFFFFFFFFFFFLL;
    }

    if (!v54 && (v9 & ~v28 & 0x2000000000000000) == 0)
    {
      v28;
      v256 = v6;
      v257 = v10;
      goto LABEL_117;
    }

    v55 = (*(&v255 + 1) & 0x2000000000000000) == 0;
    v56 = HIBYTE(*(&v255 + 1)) & 0xFLL;
    if ((v28 & 0x2000000000000000) != 0)
    {
      if ((*(&v255 + 1) & 0x2000000000000000) == 0)
      {
        v247 = v3;
        v57 = v255 & 0xFFFFFFFFFFFFLL;
        v55 = 1;
LABEL_57:
        v3 = v57;
        goto LABEL_58;
      }

      v83 = v53 + v56;
      if (v53 + v56 < 0x10)
      {
        if (v56)
        {
          v95 = 0;
          v96 = 0;
          v97 = 8 * v53;
          v98 = v28;
          v2 = v254;
          do
          {
            v99 = *(&v255 + 1) >> (v95 & 0x38);
            if (v96 < 8)
            {
              v99 = v255 >> v95;
            }

            v100 = (v99 << (v97 & 0x38)) | ((-255 << (v97 & 0x38)) - 1) & v98;
            v101 = (v99 << v97) | ((-255 << v97) - 1) & v9;
            if (v53 <= 7)
            {
              v9 = v101;
            }

            else
            {
              v98 = v100;
            }

            ++v53;
            v97 += 8;
            v95 += 8;
            ++v96;
          }

          while (8 * v56 != v95);
        }

        else
        {
          v98 = v28;
          v2 = v254;
        }

        v28;
        v10;
        v102 = 0xA000000000000000;
        if (!(v9 & 0x8080808080808080 | v98 & 0x80808080808080))
        {
          v102 = 0xE000000000000000;
        }

        v256 = v9;
        v257 = v102 & 0xFF00000000000000 | (v83 << 56) | v98 & 0xFFFFFFFFFFFFFFLL;
        goto LABEL_140;
      }

      v247 = v3;
      v55 = 0;
      v57 = v255 & 0xFFFFFFFFFFFFLL;
      v3 = HIBYTE(*(&v255 + 1)) & 0xFLL;
    }

    else
    {
      v247 = v3;
      v57 = v255 & 0xFFFFFFFFFFFFLL;
      v3 = HIBYTE(*(&v255 + 1)) & 0xFLL;
      if ((*(&v255 + 1) & 0x2000000000000000) == 0)
      {
        goto LABEL_57;
      }
    }

LABEL_58:
    v246 = v55;
    v245 = v57;
    v248 = v51;
    if ((*(&v255 + 1) & 0x1000000000000000) != 0)
    {
      swift_bridgeObjectRetain_n(*(&v255 + 1), 2);
      v123._rawBits = 1;
      v124._rawBits = (v3 << 16) | 1;
      v125._rawBits = _StringGuts.validateScalarRange(_:)(v123, v124, v6, v10)._rawBits;
      if (v125._rawBits < 0x10000)
      {
        v125._rawBits |= 3;
      }

      v4 = String.UTF8View.distance(from:to:)(v125, v126);
      v10;
      if ((v28 & 0x1000000000000000) == 0)
      {
LABEL_60:
        v21 = __OFADD__(v54, v4);
        v12 = v54 + v4;
        if (!v21)
        {
          break;
        }

        goto LABEL_179;
      }
    }

    else
    {
      *(&v255 + 1);
      v4 = v3;
      if ((v28 & 0x1000000000000000) == 0)
      {
        goto LABEL_60;
      }
    }

    v127 = String.UTF8View._foreignCount()();
    v12 = v127 + v4;
    if (!__OFADD__(v127, v4))
    {
      break;
    }

LABEL_179:
    __break(1u);
LABEL_180:
    v128 = String.UTF8View._foreignCount()();
    v22 = v128 + 6;
    if (__OFADD__(v128, 6))
    {
      goto LABEL_182;
    }

LABEL_13:
    if ((v9 & ~v10 & 0x2000000000000000) != 0 && swift_isUniquelyReferenced_nonNull_native(v10 & 0xFFFFFFFFFFFFFFFLL))
    {
      v23 = _StringGuts.nativeUnusedCapacity.getter(v9, v10);
      if (v24)
      {
        goto LABEL_311;
      }

      if (v22 <= 15)
      {
        if ((v10 & 0x2000000000000000) != 0)
        {
          goto LABEL_35;
        }

        if (v23 < 6)
        {
          goto LABEL_19;
        }
      }

LABEL_24:
      _StringGuts.prepareForAppendInPlace(totalCount:otherUTF8Count:)(v22, 6);
      v255 = xmmword_18071DCB0;
      closure #1 in _StringGuts.append(_:)(&v255, 6uLL, &v256, 1);
      swift_bridgeObjectRelease_n(0xE600000000000000, 2);
      v9 = v256;
      v28 = v257;
    }

    else
    {
      if (v22 > 15)
      {
        goto LABEL_24;
      }

      if ((v10 & 0x2000000000000000) != 0)
      {
LABEL_35:
        v26 = v2;
        v27 = v10;
        goto LABEL_36;
      }

LABEL_19:
      if ((v10 & 0x1000000000000000) != 0)
      {
        v26 = v2;
        v9 = _StringGuts._foreignConvertedToSmall()(v9, v10);
        v27 = v122;
      }

      else
      {
        if ((v9 & 0x1000000000000000) != 0)
        {
          v25 = ((v10 & 0xFFFFFFFFFFFFFFFLL) + 32);
        }

        else
        {
          v25 = _StringObject.sharedUTF8.getter(v9, v10);
          v12 = v236;
        }

        v26 = v2;
        closure #1 in _StringGuts._convertedToSmall()(v25, v12, &v255, v20);
        v27 = *(&v255 + 1);
        v9 = v255;
      }

LABEL_36:
      v39 = 0x2865676E6152;
      v40 = 0xE600000000000000;
      0xE600000000000000;
      v41._rawBits = 1;
      v42._rawBits = 393217;
      v43._rawBits = _StringGuts.validateScalarRange(_:)(v41, v42, 0x2865676E6152uLL, 0xE600000000000000)._rawBits;
      if (v43._rawBits < 0x10000)
      {
        v43._rawBits |= 3;
      }

      if (v43._rawBits >> 16 || (v44._rawBits & 0xFFFFFFFFFFFF0000) != 0x60000)
      {
        v39 = specialized static String._copying(_:)(v43._rawBits, v44._rawBits, 0x2865676E6152uLL, 0xE600000000000000);
        v40 = v46;
        0xE600000000000000;
      }

      if ((v40 & 0x2000000000000000) != 0)
      {
        v40;
      }

      else if ((v40 & 0x1000000000000000) != 0)
      {
        v39 = _StringGuts._foreignConvertedToSmall()(v39, v40);
        v244 = v243;
        v40;
        v40 = v244;
      }

      else
      {
        if ((v39 & 0x1000000000000000) != 0)
        {
          v227 = ((v40 & 0xFFFFFFFFFFFFFFFLL) + 32);
          v228 = v39 & 0xFFFFFFFFFFFFLL;
        }

        else
        {
          v227 = _StringObject.sharedUTF8.getter(v39, v40);
        }

        closure #1 in _StringGuts._convertedToSmall()(v227, v228, &v255, v45);
        v40;
        v40 = *(&v255 + 1);
        v39 = v255;
      }

      v47 = specialized _SmallString.init(_:appending:)(v9, v27, v39, v40);
      if (v49)
      {
        goto LABEL_311;
      }

      v9 = v47;
      v28 = v48;
      v10;
      swift_bridgeObjectRelease_n(0xE600000000000000, 2);
      v256 = v9;
      v257 = v28;
      v2 = v26;
    }
  }

  v59 = v9 & ~v28;
  if ((v59 & 0x2000000000000000) == 0 || !swift_isUniquelyReferenced_nonNull_native(v28 & 0xFFFFFFFFFFFFFFFLL))
  {
    if (v12 <= 15)
    {
      if ((v28 & 0x2000000000000000) == 0)
      {
        goto LABEL_67;
      }

      goto LABEL_88;
    }

LABEL_72:
    v64 = v59 & 0x2000000000000000;
    v65 = _StringGuts.nativeUnusedCapacity.getter(v9, v28);
    if (v66)
    {
      v2 = v254;
      if (v64)
      {
LABEL_74:
        swift_isUniquelyReferenced_nonNull_native(v28 & 0xFFFFFFFFFFFFFFFLL);
      }
    }

    else
    {
      v2 = v254;
      if (v65 >= v4)
      {
        if (v64 && swift_isUniquelyReferenced_nonNull_native(v28 & 0xFFFFFFFFFFFFFFFLL))
        {
LABEL_82:
          if ((v10 & 0x1000000000000000) != 0)
          {
            _StringGuts._foreignAppendInPlace(_:)(v6, v10, 0, v3);
          }

          else
          {
            if (v246)
            {
              v3 = v247;
              if ((v6 & 0x1000000000000000) != 0)
              {
                v72 = (v10 & 0xFFFFFFFFFFFFFFFLL) + 32;
                v73 = v245;
                v74 = v245;
              }

              else
              {
                v230 = _StringObject.sharedUTF8.getter(v6, v10);
                if (v231 < v245)
                {
                  goto LABEL_307;
                }

                v72 = v230;
                v74 = v231;
                v2 = v254;
                v73 = v245;
              }

              v75 = _sSR8rebasingSRyxGs5SliceVyABG_tcfCs5UInt8V_Tt0g5Tm(0, v73, v72, v74);
              closure #1 in _StringGuts.append(_:)(v75, v76, &v256, v6 < 0);
              swift_bridgeObjectRelease_n(v10, 2);
              goto LABEL_140;
            }

            *&v255 = v6;
            *(&v255 + 1) = v10 & 0xFFFFFFFFFFFFFFLL;
            closure #1 in _StringGuts.append(_:)(&v255, HIBYTE(v10) & 0xF, &v256, (v10 & 0x4000000000000000) != 0);
          }

          swift_bridgeObjectRelease_n(v10, 2);
          v3 = v247;
          goto LABEL_140;
        }

LABEL_81:
        _StringGuts.grow(_:)(v12);
        goto LABEL_82;
      }

      if (v64)
      {
        goto LABEL_74;
      }
    }

    v67 = _StringGuts.nativeCapacity.getter(v9, v28);
    if (v69)
    {
      v70 = 0;
    }

    else
    {
      v70 = v67;
    }

    if (v70 + 0x4000000000000000 < 0)
    {
      __break(1u);
      goto LABEL_295;
    }

    v71 = 2 * v70;
    if (v71 > v12)
    {
      v12 = v71;
    }

    goto LABEL_81;
  }

  v60 = _StringGuts.nativeUnusedCapacity.getter(v9, v28);
  if (v61)
  {
    goto LABEL_311;
  }

  if (v12 > 15)
  {
    goto LABEL_72;
  }

  if ((v28 & 0x2000000000000000) != 0)
  {
LABEL_88:
    v63 = v28;
    goto LABEL_89;
  }

  if (v60 >= v4)
  {
    goto LABEL_72;
  }

LABEL_67:
  if ((v28 & 0x1000000000000000) != 0)
  {
    v9 = _StringGuts._foreignConvertedToSmall()(v9, v28);
    v63 = v121;
  }

  else
  {
    if ((v9 & 0x1000000000000000) != 0)
    {
      v62 = ((v28 & 0xFFFFFFFFFFFFFFFLL) + 32);
    }

    else
    {
      v62 = _StringObject.sharedUTF8.getter(v9, v28);
      v2 = v234;
    }

    closure #1 in _StringGuts._convertedToSmall()(v62, v2, &v255, v58);
    v63 = *(&v255 + 1);
    v9 = v255;
  }

LABEL_89:
  v10;
  v77._rawBits = 1;
  v78._rawBits = (v3 << 16) | 1;
  v79._rawBits = _StringGuts.validateScalarRange(_:)(v77, v78, v6, v10)._rawBits;
  if (v79._rawBits < 0x10000)
  {
    v79._rawBits |= 3;
  }

  if (v79._rawBits >> 16 || v80._rawBits >> 16 != v3)
  {
    v6 = specialized static String._copying(_:)(v79._rawBits, v80._rawBits, v6, v10);
    v82 = v84;
    v10;
  }

  else
  {
    v82 = v10;
  }

  v3 = v247;
  if ((v82 & 0x2000000000000000) != 0)
  {
    v82;
  }

  else if ((v82 & 0x1000000000000000) != 0)
  {
    v6 = _StringGuts._foreignConvertedToSmall()(v6, v82);
    v238 = v237;
    v82;
    v82 = v238;
  }

  else
  {
    if ((v6 & 0x1000000000000000) != 0)
    {
      v221 = ((v82 & 0xFFFFFFFFFFFFFFFLL) + 32);
      v222 = v6 & 0xFFFFFFFFFFFFLL;
    }

    else
    {
      v221 = _StringObject.sharedUTF8.getter(v6, v82);
    }

    closure #1 in _StringGuts._convertedToSmall()(v221, v222, &v255, v81);
    v82;
    v82 = *(&v255 + 1);
    v6 = v255;
  }

  v85 = HIBYTE(v63) & 0xF;
  v86 = HIBYTE(v82) & 0xF;
  v87 = v86 + v85;
  if (v86 + v85 > 0xF)
  {
    goto LABEL_311;
  }

  v10;
  if (v86)
  {
    v88 = 0;
    v89 = 0;
    v90 = 8 * v85;
    do
    {
      v91 = v82 >> (v88 & 0x38);
      if (v89 < 8)
      {
        v91 = v6 >> v88;
      }

      v92 = (v91 << (v90 & 0x38)) | ((-255 << (v90 & 0x38)) - 1) & v63;
      v93 = (v91 << v90) | ((-255 << v90) - 1) & v9;
      if (v85 <= 7)
      {
        v9 = v93;
      }

      else
      {
        v63 = v92;
      }

      ++v85;
      v90 += 8;
      v88 += 8;
      ++v89;
    }

    while (8 * v86 != v88);
  }

  v28;
  v10;
  v94 = 0xA000000000000000;
  if (!(v9 & 0x8080808080808080 | v63 & 0x80808080808080))
  {
    v94 = 0xE000000000000000;
  }

  v256 = v9;
  v257 = v94 & 0xFF00000000000000 | (v87 << 56) | v63 & 0xFFFFFFFFFFFFFFLL;
LABEL_117:
  v2 = v254;
LABEL_140:
  v10 = v256;
  v9 = v257;
  v103 = HIBYTE(v257) & 0xF;
  v12 = v256 & 0xFFFFFFFFFFFFLL;
  if ((v257 & 0x2000000000000000) != 0)
  {
    v104 = HIBYTE(v257) & 0xF;
  }

  else
  {
    v104 = v256 & 0xFFFFFFFFFFFFLL;
  }

  if (!v104 && (v256 & ~v257 & 0x2000000000000000) == 0)
  {
    v257;
    v10 = 0;
    v111 = 0xE000000000000000;
    goto LABEL_186;
  }

  if ((v257 & 0x2000000000000000) == 0)
  {
    0xE000000000000000;
    v106 = v10 & 0xFFFFFFFFFFFFLL;
    if ((v9 & 0x1000000000000000) == 0)
    {
      if ((v10 & 0x2000000000000000) != 0)
      {
        goto LABEL_148;
      }

LABEL_184:
      if (v106 > 15)
      {
LABEL_185:
        _StringGuts.prepareForAppendInPlace(totalCount:otherUTF8Count:)(v106, 0);
        v255 = 0uLL;
        closure #1 in _StringGuts.append(_:)(&v255, 0, &v256, 1);
        swift_bridgeObjectRelease_n(0xE000000000000000, 2);
        v10 = v256;
        v111 = v257;
        goto LABEL_186;
      }

LABEL_152:
      if ((v9 & 0x1000000000000000) != 0)
      {
        v64 = _StringGuts._foreignConvertedToSmall()(v10, v9);
        v2 = v112;
      }

      else
      {
        if ((v10 & 0x1000000000000000) != 0)
        {
          v109 = ((v9 & 0xFFFFFFFFFFFFFFFLL) + 32);
        }

        else
        {
          v109 = _StringObject.sharedUTF8.getter(v10, v9);
          v12 = v229;
        }

        closure #1 in _StringGuts._convertedToSmall()(v109, v12, &v255, v105);
        v2 = *(&v255 + 1);
        v64 = v255;
      }

      0xE000000000000000;
      v113._rawBits = 1;
      v114._rawBits = 1;
      v115._rawBits = _StringGuts.validateScalarRange(_:)(v113, v114, 0, 0xE000000000000000)._rawBits;
      if (v115._rawBits < 0x10000)
      {
        v115._rawBits |= 3;
      }

      v56 = Substring.description.getter(v115._rawBits, v116._rawBits, 0, 0xE000000000000000);
      v12 = v117;
      0xE000000000000000;
      if ((v12 & 0x2000000000000000) != 0)
      {
        v12;
LABEL_165:
        v118 = specialized _SmallString.init(_:appending:)(v64, v2, v56, v12);
        if ((v120 & 1) == 0)
        {
          v10 = v118;
          v111 = v119;
          v9;
          swift_bridgeObjectRelease_n(0xE000000000000000, 2);
          v2 = v254;
          goto LABEL_186;
        }

LABEL_311:
        _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
      }

LABEL_295:
      if ((v12 & 0x1000000000000000) != 0)
      {
        v56 = _StringGuts._foreignConvertedToSmall()(v56, v12);
        v242 = v241;
        v12;
        v12 = v242;
      }

      else
      {
        if ((v56 & 0x1000000000000000) != 0)
        {
          v225 = ((v12 & 0xFFFFFFFFFFFFFFFLL) + 32);
          v226 = v56 & 0xFFFFFFFFFFFFLL;
        }

        else
        {
          v225 = _StringObject.sharedUTF8.getter(v56, v12);
        }

        closure #1 in _StringGuts._convertedToSmall()(v225, v226, &v255, v68);
        v12;
        v12 = *(&v255 + 1);
        v56 = v255;
      }

      goto LABEL_165;
    }

LABEL_183:
    v106 = String.UTF8View._foreignCount()();
    if ((v10 & 0x2000000000000000) == 0)
    {
      goto LABEL_184;
    }

LABEL_148:
    if (!swift_isUniquelyReferenced_nonNull_native(v9 & 0xFFFFFFFFFFFFFFFLL))
    {
      goto LABEL_184;
    }

    v107 = _StringGuts.nativeUnusedCapacity.getter(v10, v9);
    if ((v108 & 1) == 0)
    {
      if (v106 > 15 || (v107 & 0x8000000000000000) == 0)
      {
        goto LABEL_185;
      }

      goto LABEL_152;
    }

    goto LABEL_311;
  }

  v257;
  0xE000000000000000;
  v110 = 0xA000000000000000;
  if (!(v9 & 0x80808080808080 | v10 & 0x8080808080808080))
  {
    v110 = 0xE000000000000000;
  }

  v111 = v110 & 0xFF00000000000000 | (v103 << 56) | v9 & 0xFFFFFFFFFFFFFFLL;
LABEL_186:
  v129 = _StringGuts.init(_initialCapacity:)(6);
  v139 = v129;
  v256 = v129;
  v257 = v130;
  v140 = HIBYTE(v130) & 0xF;
  v141 = v129 & 0xFFFFFFFFFFFFLL;
  if ((v130 & 0x2000000000000000) != 0)
  {
    v141 = HIBYTE(v130) & 0xF;
  }

  if (!v141 && (v129 & ~v130 & 0x2000000000000000) == 0)
  {
    v139 = 3943982;
    v130;
    v148 = 0xE300000000000000;
    goto LABEL_203;
  }

  if ((v130 & 0x2000000000000000) == 0 || v140 > 0xC)
  {
    _StringGuts.append(_:)(3943982, 0xE300000000000000, 0, 3, v131, v132, v133, v134, v135, v136, v137, v138);
    0xE300000000000000;
    v139 = v256;
    v148 = v257;
    goto LABEL_204;
  }

  v142 = 8 * HIBYTE(v130);
  v143 = (-255 << (v142 & 0x38)) - 1;
  v144 = 46 << (v142 & 0x38);
  v145 = v140 + 1;
  if (v140 >= 8)
  {
    v147 = v143 & v130 | v144;
    v146 = 8 * (v145 & 7);
LABEL_197:
    v149 = ((-255 << v146) - 1) & v147 | (46 << v146);
    v150 = (v142 + 16) & 0x38;
    goto LABEL_198;
  }

  v139 = v143 & v129 | v144;
  if (v140 == 7)
  {
    v146 = 0;
    v147 = v130;
    goto LABEL_197;
  }

  v139 = ((-255 << (8 * (v145 & 7u))) - 1) & v139 | (46 << (8 * (v145 & 7u)));
  if (v140 >= 6)
  {
    v150 = 0;
    v149 = v130;
LABEL_198:
    v151 = ((-255 << v150) - 1) & v149 | (60 << v150);
    goto LABEL_199;
  }

  v139 = ((-255 << ((v142 + 16) & 0x38)) - 1) & v139 | (60 << ((v142 + 16) & 0x38));
  v151 = v130;
LABEL_199:
  v130;
  0xE300000000000000;
  v152 = 0xA000000000000000;
  if (!(v139 & 0x8080808080808080 | v151 & 0x80808080808080))
  {
    v152 = 0xE000000000000000;
  }

  v148 = (v152 & 0xFF00000000000000 | (v140 << 56) | v151 & 0xFFFFFFFFFFFFFFLL) + 0x300000000000000;
LABEL_203:
  v256 = v139;
  v257 = v148;
LABEL_204:
  v153 = v252;
  v250(v252, v2 + *(v253 + 36), v3);
  *&v255 = 0;
  *(&v255 + 1) = 0xE000000000000000;
  _debugPrint_unlocked<A, B>(_:_:)(v153, &v255, v3, &type metadata for String, &protocol witness table for String);
  v249(v153, v3);
  v154 = *(&v255 + 1);
  v155 = v255;
  v156 = HIBYTE(v148) & 0xF;
  v157 = v139 & 0xFFFFFFFFFFFFLL;
  if ((v148 & 0x2000000000000000) != 0)
  {
    v158 = HIBYTE(v148) & 0xF;
  }

  else
  {
    v158 = v139 & 0xFFFFFFFFFFFFLL;
  }

  if (!v158 && (v139 & ~v148 & 0x2000000000000000) == 0)
  {
    v148;
    v256 = v155;
    v257 = v154;
    goto LABEL_275;
  }

  v253 = v10;
  v254 = v111;
  v159 = (*(&v255 + 1) & 0x2000000000000000) == 0;
  v160 = HIBYTE(*(&v255 + 1)) & 0xFLL;
  if ((v148 & 0x2000000000000000) != 0)
  {
    if ((*(&v255 + 1) & 0x2000000000000000) == 0)
    {
      v161 = v255 & 0xFFFFFFFFFFFFLL;
      v159 = 1;
      goto LABEL_214;
    }

    v181 = v156 + v160;
    if (v156 + v160 < 0x10)
    {
      if (v160)
      {
        v193 = 0;
        v194 = 0;
        v195 = 8 * v156;
        v196 = 8 * v160;
        v197 = v148;
        v10 = v253;
        do
        {
          v198 = *(&v255 + 1) >> (v193 & 0x38);
          if (v194 < 8)
          {
            v198 = v255 >> v193;
          }

          v199 = (v198 << (v195 & 0x38)) | ((-255 << (v195 & 0x38)) - 1) & v197;
          v200 = (v198 << v195) | ((-255 << v195) - 1) & v139;
          if (v156 <= 7)
          {
            v139 = v200;
          }

          else
          {
            v197 = v199;
          }

          ++v156;
          v195 += 8;
          v193 += 8;
          ++v194;
        }

        while (v196 != v193);
      }

      else
      {
        v197 = v148;
        v10 = v253;
      }

      v148;
      v154;
      v201 = 0xA000000000000000;
      if (!(v139 & 0x8080808080808080 | v197 & 0x80808080808080))
      {
        v201 = 0xE000000000000000;
      }

      v256 = v139;
      v257 = v201 & 0xFF00000000000000 | (v181 << 56) | v197 & 0xFFFFFFFFFFFFFFLL;
LABEL_274:
      v111 = v254;
      goto LABEL_275;
    }

    v159 = 0;
    v162 = HIBYTE(*(&v255 + 1)) & 0xFLL;
    v252 = v255 & 0xFFFFFFFFFFFFLL;
    if ((*(&v255 + 1) & 0x1000000000000000) != 0)
    {
      goto LABEL_244;
    }

LABEL_216:
    *(&v255 + 1);
    v164 = v162;
    if ((v148 & 0x1000000000000000) == 0)
    {
      goto LABEL_217;
    }

LABEL_247:
    v186 = String.UTF8View._foreignCount()();
    v165 = v186 + v164;
    if (__OFADD__(v186, v164))
    {
      goto LABEL_249;
    }

LABEL_218:
    if ((v139 & ~v148 & 0x2000000000000000) != 0 && swift_isUniquelyReferenced_nonNull_native(v148 & 0xFFFFFFFFFFFFFFFLL))
    {
      v166 = _StringGuts.nativeUnusedCapacity.getter(v139, v148);
      if (v167)
      {
        goto LABEL_311;
      }

      if (v165 <= 15)
      {
        if ((v148 & 0x2000000000000000) == 0)
        {
          if (v166 < v164)
          {
LABEL_224:
            if ((v148 & 0x1000000000000000) == 0)
            {
              v10 = v253;
              if ((v139 & 0x1000000000000000) != 0)
              {
                v168 = ((v148 & 0xFFFFFFFFFFFFFFFLL) + 32);
              }

              else
              {
                v168 = _StringObject.sharedUTF8.getter(v139, v148);
                v157 = v235;
              }

              closure #1 in _StringGuts._convertedToSmall()(v168, v157, &v255, v163);
              v169 = *(&v255 + 1);
              v139 = v255;
              goto LABEL_237;
            }

            v139 = _StringGuts._foreignConvertedToSmall()(v139, v148);
            v169 = v220;
LABEL_236:
            v10 = v253;
LABEL_237:
            v154;
            v175._rawBits = 1;
            v176._rawBits = (v162 << 16) | 1;
            v177._rawBits = _StringGuts.validateScalarRange(_:)(v175, v176, v155, v154)._rawBits;
            if (v177._rawBits < 0x10000)
            {
              v177._rawBits |= 3;
            }

            if (v177._rawBits >> 16 || v178._rawBits >> 16 != v162)
            {
              v155 = specialized static String._copying(_:)(v177._rawBits, v178._rawBits, v155, v154);
              v180 = v187;
              v154;
            }

            else
            {
              v180 = v154;
            }

            if ((v180 & 0x2000000000000000) != 0)
            {
              v180;
            }

            else if ((v180 & 0x1000000000000000) != 0)
            {
              v155 = _StringGuts._foreignConvertedToSmall()(v155, v180);
              v240 = v239;
              v180;
              v180 = v240;
              v10 = v253;
            }

            else
            {
              if ((v155 & 0x1000000000000000) != 0)
              {
                v223 = ((v180 & 0xFFFFFFFFFFFFFFFLL) + 32);
                v224 = v155 & 0xFFFFFFFFFFFFLL;
              }

              else
              {
                v223 = _StringObject.sharedUTF8.getter(v155, v180);
              }

              closure #1 in _StringGuts._convertedToSmall()(v223, v224, &v255, v179);
              v180;
              v180 = *(&v255 + 1);
              v155 = v255;
            }

            v188 = specialized _SmallString.init(_:appending:)(v139, v169, v155, v180);
            if (v190)
            {
              goto LABEL_311;
            }

            v191 = v188;
            v192 = v189;
            v148;
            swift_bridgeObjectRelease_n(v154, 2);
            v256 = v191;
            v257 = v192;
            goto LABEL_274;
          }

          goto LABEL_229;
        }

LABEL_235:
        v169 = v148;
        goto LABEL_236;
      }
    }

    else if (v165 <= 15)
    {
      if ((v148 & 0x2000000000000000) == 0)
      {
        goto LABEL_224;
      }

      goto LABEL_235;
    }

LABEL_229:
    _StringGuts.prepareForAppendInPlace(totalCount:otherUTF8Count:)(v165, v164);
    if ((v154 & 0x1000000000000000) != 0)
    {
      goto LABEL_250;
    }

    v111 = v254;
    if (!v159)
    {
      *&v255 = v155;
      *(&v255 + 1) = v154 & 0xFFFFFFFFFFFFFFLL;
      closure #1 in _StringGuts.append(_:)(&v255, HIBYTE(v154) & 0xF, &v256, (v154 & 0x4000000000000000) != 0);
      swift_bridgeObjectRelease_n(v154, 2);
      v10 = v253;
      goto LABEL_275;
    }

    if ((v155 & 0x1000000000000000) != 0)
    {
      v170 = (v154 & 0xFFFFFFFFFFFFFFFLL) + 32;
      v171 = v252;
      v10 = v253;
      v172 = v252;
LABEL_233:
      v173 = _sSR8rebasingSRyxGs5SliceVyABG_tcfCs5UInt8V_Tt0g5Tm(0, v171, v170, v172);
      closure #1 in _StringGuts.append(_:)(v173, v174, &v256, v155 < 0);
      swift_bridgeObjectRelease_n(v154, 2);
      goto LABEL_275;
    }

    v232 = _StringObject.sharedUTF8.getter(v155, v154);
    if (v233 >= v252)
    {
      v170 = v232;
      v172 = v233;
      v10 = v253;
      v111 = v254;
      v171 = v252;
      goto LABEL_233;
    }

LABEL_307:
    _fatalErrorMessage(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  v161 = v255 & 0xFFFFFFFFFFFFLL;
  v162 = HIBYTE(*(&v255 + 1)) & 0xFLL;
  if ((*(&v255 + 1) & 0x2000000000000000) == 0)
  {
LABEL_214:
    v162 = v161;
  }

  v252 = v161;
  if ((*(&v255 + 1) & 0x1000000000000000) == 0)
  {
    goto LABEL_216;
  }

LABEL_244:
  swift_bridgeObjectRetain_n(*(&v255 + 1), 2);
  v182._rawBits = 1;
  v183._rawBits = (v162 << 16) | 1;
  v184._rawBits = _StringGuts.validateScalarRange(_:)(v182, v183, v155, v154)._rawBits;
  if (v184._rawBits < 0x10000)
  {
    v184._rawBits |= 3;
  }

  v164 = String.UTF8View.distance(from:to:)(v184, v185);
  v154;
  if ((v148 & 0x1000000000000000) != 0)
  {
    goto LABEL_247;
  }

LABEL_217:
  v21 = __OFADD__(v158, v164);
  v165 = v158 + v164;
  if (!v21)
  {
    goto LABEL_218;
  }

LABEL_249:
  __break(1u);
LABEL_250:
  _StringGuts._foreignAppendInPlace(_:)(v155, v154, 0, v162);
  swift_bridgeObjectRelease_n(v154, 2);
  v10 = v253;
  v111 = v254;
LABEL_275:
  v202 = v257;
  v203 = HIBYTE(v257) & 0xF;
  if ((v257 & 0x2000000000000000) == 0)
  {
    v203 = v256 & 0xFFFFFFFFFFFFLL;
  }

  if (v203 || (v256 & ~v257 & 0x2000000000000000) != 0)
  {
    if ((v257 & 0x2000000000000000) != 0 && (v204 = specialized _SmallString.init(_:appending:)(v256, v257, 0x29uLL, 0xE100000000000000), (v206 & 1) == 0))
    {
      v217 = v204;
      v216 = v205;
      v202;
      0xE100000000000000;
      v215 = v217;
    }

    else
    {
      0xE100000000000000;
      _StringGuts.append(_:)(41, 0xE100000000000000, 0, 1, v207, v208, v209, v210, v211, v212, v213, v214);
      swift_bridgeObjectRelease_n(0xE100000000000000, 2);
      v215 = v256;
      v216 = v257;
    }
  }

  else
  {
    v257;
    v216 = 0xE100000000000000;
    v215 = 41;
  }

  v218 = specialized static String.+ infix(_:_:)(v10, v111, v215, v216);
  v111;
  v216;
  return v218;
}

uint64_t ClosedRange.customMirror.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v6 = *(a1 - 8);
  v7 = MEMORY[0x1EEE9AC00](a1);
  v31 = (&v32[-1] - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v32[-1] - v9;
  (*(v6 + 16))(&v32[-1] - v9, v3, a1);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_yptGMd, _ss23_ContiguousArrayStorageCySS_yptGMR);
  v12 = swift_allocObject(v11, 0x80, 7uLL);
  *(v12 + 1) = xmmword_18071DBE0;
  v12[4] = 0x756F427265776F6CLL;
  v12[5] = 0xEA0000000000646ELL;
  v13 = *(a1 + 16);
  v12[9] = v13;
  boxed_opaque_existential_0Tm = __swift_allocate_boxed_opaque_existential_0Tm(v12 + 6);
  v15 = *(*(v13 - 8) + 16);
  v15(boxed_opaque_existential_0Tm, v3, v13);
  v12[10] = 0x756F427265707075;
  v12[11] = 0xEA0000000000646ELL;
  v16 = *(a1 + 36);
  v12[15] = v13;
  v17 = __swift_allocate_boxed_opaque_existential_0Tm(v12 + 12);
  v15(v17, v3 + v16, v13);
  v32[0] = 0;
  v32[1] = 0;
  v18 = static Mirror._superclassIterator<A>(_:_:)(v10, v32, a1);
  v20 = v19;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss26_RandomAccessCollectionBoxCys15LazyMapSequenceVys13KeyValuePairsVySSypGSSSg5label_yp5valuetGGMd, _ss26_RandomAccessCollectionBoxCys15LazyMapSequenceVys13KeyValuePairsVySSypGSSSg5label_yp5valuetGGMR);
  v22 = swift_allocObject(v21, 0x48, 7uLL);
  v22[6] = v12;
  v22[7] = closure #1 in Mirror.init<A>(_:children:displayStyle:ancestorRepresentation:);
  v22[8] = 0;
  v23 = canonical specialized generic type metadata accessor for _IndexBox<Int>();
  v24 = swift_allocObject(v23, 0x18, 7uLL);
  v24[2] = 0;
  v25 = v12[2];
  v26 = swift_allocObject(v23, 0x18, 7uLL);
  v26[2] = v25;
  v22[2] = v24;
  v22[3] = &protocol witness table for _IndexBox<A>;
  v22[4] = v26;
  v22[5] = &protocol witness table for _IndexBox<A>;
  v27 = v31;
  (*(v6 + 32))(v31, v10, a1);
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss21CustomLeafReflectable_pMd, _ss21CustomLeafReflectable_pMR);
  result = swift_dynamicCast(v32, v27, a1, v28, 6uLL);
  v30 = result;
  if (result)
  {
    result = __swift_destroy_boxed_opaque_existential_1Tm(v32);
  }

  *a2 = a1;
  *(a2 + 8) = v22;
  *(a2 + 16) = 9;
  *(a2 + 24) = v18;
  *(a2 + 32) = v20;
  *(a2 + 40) = v30;
  return result;
}

uint64_t ClosedRange<>.hash(into:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a3 + 24);
  v6 = *(a2 + 16);
  v5(a1, v6);
  return (v5)(a1, v6, a3);
}

Swift::Int ClosedRange<>.hashValue.getter(uint64_t a1, uint64_t a2)
{
  v9 = 0u;
  v10 = 0u;
  v6 = 0;
  v7 = veorq_s8(_swift_stdlib_Hashing_parameters, xmmword_18071DB60);
  v8 = veorq_s8(_swift_stdlib_Hashing_parameters, xmmword_18071DB70);
  v3 = *(a2 + 24);
  v4 = *(a1 + 16);
  v3(&v6, v4, a2);
  v3(&v6, v4, a2);
  return Hasher._finalize()();
}

uint64_t ClosedRange<>.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t (*a5)(void, Class *, uint64_t)@<X4>, char *a6@<X8>)
{
  v151 = a5;
  v152 = a3;
  v155 = a4;
  v150 = a6;
  swift_getTupleTypeMetadata2(0, a2, a2, "lower upper ", 0);
  v154 = v8;
  v149 = *(v8 - 8);
  v9 = MEMORY[0x1EEE9AC00](v8);
  v11 = &v145 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x1EEE9AC00](v9);
  v14 = &v145 - v13;
  v153 = *(a2 - 8);
  v15 = MEMORY[0x1EEE9AC00](v12);
  v17 = &v145 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v19 = &v145 - v18;
  v21 = a1[3];
  v20 = a1[4];
  __swift_project_boxed_opaque_existential_0Tm(a1, v21);
  v22 = v161;
  (*(v20 + 32))(v158, v21, v20);
  if (v22)
  {
LABEL_68:
    v40 = a1;
    return __swift_destroy_boxed_opaque_existential_1Tm(v40);
  }

  v146 = v14;
  v147 = v11;
  v23 = v154;
  v148 = v17;
  v161 = a1;
  v24 = v159;
  v25 = v160;
  __swift_mutable_project_boxed_opaque_existential_1(v158, v159);
  v26 = v155;
  (*(v25 + 176))(a2, a2, v155, v24, v25);
  v27 = a2;
  v28 = v159;
  v29 = v160;
  __swift_mutable_project_boxed_opaque_existential_1(v158, v159);
  v30 = v148;
  (*(v29 + 176))(v27, v27, v26, v28, v29);
  v31 = v152;
  if (((*(v152 + 24))(v19, v30, v27, v152) & 1) == 0)
  {
    swift_allocError(&type metadata for DecodingError, &protocol witness table for DecodingError, 0, 0);
    v155 = v41;
    v42 = v161[3];
    v43 = v161[4];
    __swift_project_boxed_opaque_existential_0Tm(v161, v42);
    v154 = (*(v43 + 8))(v42, v43);
    v44 = _StringGuts.init(_initialCapacity:)(72);
    v54 = v45;
    v156 = v44;
    v157 = v45;
    v55 = HIBYTE(v45) & 0xF;
    if ((v45 & 0x2000000000000000) == 0)
    {
      v55 = v44 & 0xFFFFFFFFFFFFLL;
    }

    if (v55 || (v44 & ~v45 & 0x2000000000000000) != 0)
    {
      v56 = v19;
      if ((0x800000018066C240 & 0x2000000000000000 & v45) != 0 && (v57 = specialized _SmallString.init(_:appending:)(v44, v45, 0xD000000000000012, 0x800000018066C240 | 0x8000000000000000), (v59 & 1) == 0))
      {
        v61 = v57;
        v62 = v58;
        v54;
        0x800000018066C240 | 0x8000000000000000;
        v156 = v61;
        v157 = v62;
      }

      else
      {
        if ((0x800000018066C240 & 0x2000000000000000) != 0)
        {
          v60 = (0x800000018066C240 >> 56) & 0xF;
        }

        else
        {
          v60 = 18;
        }

        _StringGuts.append(_:)(0xD000000000000012, 0x800000018066C240 | 0x8000000000000000, 0, v60, v46, v47, v48, v49, v50, v51, v52, v53);
        0x800000018066C240 | 0x8000000000000000;
      }

      v19 = v56;
      v31 = v152;
    }

    else
    {
      v45;
      v156 = 0xD000000000000012;
      v157 = 0x800000018066C240 | 0x8000000000000000;
    }

    v63 = v151(0, v27, v31);
    TypeName = swift_getTypeName(v63, 0);
    if (v65 < 0)
    {
      _fatalErrorMessage(_:_:file:line:flags:)("Fatal error", 11, 2);
    }

    v66 = TypeName;
    v67 = v65;
    v68 = validateUTF8(_:)(TypeName, v65);
    if (v68 < 0)
    {
      v72 = repairUTF8(_:firstKnownBrokenRange:)(v66, v67, v69, v70);
    }

    else
    {
      v72 = specialized static String._uncheckedFromUTF8(_:isASCII:)(v66, v67, v68 & 1, v71);
    }

    v82 = v73;
    v83 = v157;
    v84 = HIBYTE(v157) & 0xF;
    if ((v157 & 0x2000000000000000) == 0)
    {
      v84 = v156 & 0xFFFFFFFFFFFFLL;
    }

    if (!v84 && (v156 & ~v157 & 0x2000000000000000) == 0)
    {
      v85 = v19;
      v107 = v72;
      v157;
      v95 = v107;
      v156 = v107;
      v157 = v82;
      goto LABEL_30;
    }

    v85 = v19;
    if ((v157 & 0x2000000000000000) != 0)
    {
      if ((v73 & 0x2000000000000000) != 0)
      {
        v103 = v72;
        v104 = specialized _SmallString.init(_:appending:)(v156, v157, v72, v73);
        if ((v106 & 1) == 0)
        {
          v143 = v105;
          v144 = v104;
          v83;
          v82;
          v156 = v144;
          v157 = v143;
          v82 = v143;
          v95 = v144;
          goto LABEL_30;
        }

        v86 = HIBYTE(v82) & 0xF;
        v72 = v103;
        goto LABEL_29;
      }
    }

    else if ((v73 & 0x2000000000000000) != 0)
    {
      v86 = HIBYTE(v73) & 0xF;
LABEL_29:
      _StringGuts.append(_:)(v72, v82, 0, v86, v74, v75, v76, v77, v78, v79, v80, v81);
      v82;
      v95 = v156;
      v82 = v157;
LABEL_30:
      v96 = HIBYTE(v82) & 0xF;
      if ((v82 & 0x2000000000000000) == 0)
      {
        v96 = v95 & 0xFFFFFFFFFFFFLL;
      }

      if (v96 || (v95 & ~v82 & 0x2000000000000000) != 0)
      {
        if ((0x800000018066C770 & 0x2000000000000000 & v82) != 0 && (v97 = specialized _SmallString.init(_:appending:)(v95, v82, 0xD000000000000014, 0x800000018066C770 | 0x8000000000000000), (v99 & 1) == 0))
        {
          v101 = v97;
          v102 = v98;
          v82;
          0x800000018066C770 | 0x8000000000000000;
          v156 = v101;
          v157 = v102;
        }

        else
        {
          if ((0x800000018066C770 & 0x2000000000000000) != 0)
          {
            v100 = (0x800000018066C770 >> 56) & 0xF;
          }

          else
          {
            v100 = 20;
          }

          _StringGuts.append(_:)(0xD000000000000014, 0x800000018066C770 | 0x8000000000000000, 0, v100, v87, v88, v89, v90, v91, v92, v93, v94);
          0x800000018066C770 | 0x8000000000000000;
        }
      }

      else
      {
        v82;
        v156 = 0xD000000000000014;
        v157 = 0x800000018066C770 | 0x8000000000000000;
      }

      _print_unlocked<A, B>(_:_:)(v85, &v156, v27, &type metadata for DefaultStringInterpolation, &protocol witness table for DefaultStringInterpolation);
      v108 = *(v153 + 8);
      v108(v85, v27);
      v117 = v157;
      v118 = HIBYTE(v157) & 0xF;
      if ((v157 & 0x2000000000000000) == 0)
      {
        v118 = v156 & 0xFFFFFFFFFFFFLL;
      }

      if (v118 || (v156 & ~v157 & 0x2000000000000000) != 0)
      {
        if ((0x800000018066C790 & 0x2000000000000000 & v157) != 0 && (v119 = specialized _SmallString.init(_:appending:)(v156, v157, 0xD00000000000001BLL, 0x800000018066C790 | 0x8000000000000000), (v121 & 1) == 0))
        {
          v123 = v119;
          v124 = v120;
          v117;
          0x800000018066C790 | 0x8000000000000000;
          v156 = v123;
          v157 = v124;
        }

        else
        {
          if ((0x800000018066C790 & 0x2000000000000000) != 0)
          {
            v122 = (0x800000018066C790 >> 56) & 0xF;
          }

          else
          {
            v122 = 27;
          }

          _StringGuts.append(_:)(0xD00000000000001BLL, 0x800000018066C790 | 0x8000000000000000, 0, v122, v109, v110, v111, v112, v113, v114, v115, v116);
          0x800000018066C790 | 0x8000000000000000;
        }
      }

      else
      {
        v157;
        v156 = 0xD00000000000001BLL;
        v157 = 0x800000018066C790 | 0x8000000000000000;
      }

      v125 = v148;
      _print_unlocked<A, B>(_:_:)(v148, &v156, v27, &type metadata for DefaultStringInterpolation, &protocol witness table for DefaultStringInterpolation);
      v108(v125, v27);
      v134 = v157;
      v135 = HIBYTE(v157) & 0xF;
      if ((v157 & 0x2000000000000000) == 0)
      {
        v135 = v156 & 0xFFFFFFFFFFFFLL;
      }

      v136 = v155;
      if (v135 || (v156 & ~v157 & 0x2000000000000000) != 0)
      {
        if ((v157 & 0x2000000000000000) != 0 && (v137 = specialized _SmallString.init(_:appending:)(v156, v157, 0x29uLL, 0xE100000000000000), (v139 & 1) == 0))
        {
          v141 = v137;
          v140 = v138;
          v134;
          0xE100000000000000;
        }

        else
        {
          _StringGuts.append(_:)(41, 0xE100000000000000, 0, 1, v126, v127, v128, v129, v130, v131, v132, v133);
          0xE100000000000000;
          v141 = v156;
          v140 = v157;
        }
      }

      else
      {
        v157;
        v140 = 0xE100000000000000;
        v141 = 41;
      }

      *v136 = v154;
      *(v136 + 8) = v141;
      *(v136 + 16) = v140;
      *(v136 + 24) = 0;
      *(v136 + 72) = 3;
      swift_willThrow();
      __swift_destroy_boxed_opaque_existential_1Tm(v158);
      a1 = v161;
      goto LABEL_68;
    }

    v86 = v72 & 0xFFFFFFFFFFFFLL;
    goto LABEL_29;
  }

  v32 = v153;
  v155 = 0;
  v33 = *(v153 + 32);
  v34 = v146;
  v33(v146, v19, v27);
  v33(&v34[*(v23 + 48)], v30, v27);
  v35 = v149;
  v36 = v147;
  (*(v149 + 16))(v147, v34, v23);
  v148 = *(v23 + 48);
  v33(v150, v36, v27);
  v37 = *(v32 + 8);
  v37(&v36[v148], v27);
  (*(v35 + 32))(v36, v34, v23);
  v38 = *(v23 + 48);
  v39 = v151(0, v27, v152);
  v33(&v150[*(v39 + 36)], &v36[v38], v27);
  v37(v36, v27);
  __swift_destroy_boxed_opaque_existential_1Tm(v158);
  v40 = v161;
  return __swift_destroy_boxed_opaque_existential_1Tm(v40);
}

uint64_t PartialRangeUpTo.relative<A>(to:)@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X3>, char *a4@<X8>)
{
  v31 = a2;
  v33 = a4;
  v6 = *(a1 + 16);
  swift_getTupleTypeMetadata2(0, v6, v6, "lower upper ", 0);
  v8 = v7;
  v30 = *(v7 - 8);
  v9 = MEMORY[0x1EEE9AC00](v7);
  v11 = &v30 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x1EEE9AC00](v9);
  v14 = &v30 - v13;
  v15 = *(v6 - 8);
  v16 = MEMORY[0x1EEE9AC00](v12);
  v18 = &v30 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v20 = &v30 - v19;
  (*(a3 + 64))(v31, a3);
  (*(v15 + 16))(v18, v32, v6);
  v21 = *(a1 + 24);
  if (((*(v21 + 24))(v20, v18, v6, v21) & 1) == 0)
  {
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  v22 = *(v15 + 32);
  v22(v14, v20, v6);
  v22(&v14[*(v8 + 48)], v18, v6);
  v32 = v21;
  v23 = v30;
  (*(v30 + 16))(v11, v14, v8);
  v24 = *(v8 + 48);
  v22(v33, v11, v6);
  v25 = *(v15 + 8);
  v25(&v11[v24], v6);
  (*(v23 + 32))(v11, v14, v8);
  v26 = *(v8 + 48);
  v28 = type metadata accessor for Range(0, v6, v32, v27);
  v22(&v33[*(v28 + 36)], &v11[v26], v6);
  return (v25)(v11, v6);
}

uint64_t protocol witness for RangeExpression.relative<A>(to:) in conformance PartialRangeUpTo<A>@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X3>, char *a4@<X8>)
{
  v31 = a1;
  v33 = a4;
  v6 = *(a3 + 16);
  swift_getTupleTypeMetadata2(0, v6, v6, "lower upper ", 0);
  v8 = v7;
  v30 = *(v7 - 8);
  v9 = MEMORY[0x1EEE9AC00](v7);
  v11 = &v30 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x1EEE9AC00](v9);
  v14 = &v30 - v13;
  v15 = *(v6 - 8);
  v16 = MEMORY[0x1EEE9AC00](v12);
  v18 = &v30 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v20 = &v30 - v19;
  (*(a2 + 64))(v31, a2);
  (*(v15 + 16))(v18, v32, v6);
  v21 = *(a3 + 24);
  if (((*(v21 + 24))(v20, v18, v6, v21) & 1) == 0)
  {
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  v22 = *(v15 + 32);
  v22(v14, v20, v6);
  v22(&v14[*(v8 + 48)], v18, v6);
  v32 = v21;
  v23 = v30;
  (*(v30 + 16))(v11, v14, v8);
  v24 = *(v8 + 48);
  v22(v33, v11, v6);
  v25 = *(v15 + 8);
  v25(&v11[v24], v6);
  (*(v23 + 32))(v11, v14, v8);
  v26 = *(v8 + 48);
  v28 = type metadata accessor for Range(0, v6, v32, v27);
  v22(&v33[*(v28 + 36)], &v11[v26], v6);
  return (v25)(v11, v6);
}

uint64_t PartialRangeThrough.relative<A>(to:)@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X3>, char *a4@<X8>)
{
  v34 = a4;
  v7 = *(a1 + 16);
  swift_getTupleTypeMetadata2(0, v7, v7, "lower upper ", 0);
  v31 = v8;
  v9 = *(v8 - 8);
  v10 = MEMORY[0x1EEE9AC00](v8);
  v32 = &v31 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x1EEE9AC00](v10);
  v14 = &v31 - v13;
  v15 = *(v7 - 8);
  v16 = MEMORY[0x1EEE9AC00](v12);
  v18 = &v31 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v20 = &v31 - v19;
  (*(a3 + 64))(a2, a3);
  (*(a3 + 184))(v33, a2, a3);
  v21 = *(a1 + 24);
  if (((*(v21 + 24))(v20, v18, v7, v21) & 1) == 0)
  {
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  v22 = *(v15 + 32);
  v22(v14, v20, v7);
  v33 = v21;
  v23 = v31;
  v22(&v14[*(v31 + 48)], v18, v7);
  v24 = v32;
  (*(v9 + 16))(v32, v14, v23);
  v25 = *(v23 + 48);
  v22(v34, v24, v7);
  v26 = *(v15 + 8);
  v26(&v24[v25], v7);
  (*(v9 + 32))(v24, v14, v23);
  v27 = *(v23 + 48);
  v29 = type metadata accessor for Range(0, v7, v33, v28);
  v22(&v34[*(v29 + 36)], &v24[v27], v7);
  return (v26)(v24, v7);
}

uint64_t protocol witness for RangeExpression.relative<A>(to:) in conformance PartialRangeThrough<A>@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X3>, char *a4@<X8>)
{
  v34 = a4;
  v7 = *(a3 + 16);
  swift_getTupleTypeMetadata2(0, v7, v7, "lower upper ", 0);
  v31 = v8;
  v9 = *(v8 - 8);
  v10 = MEMORY[0x1EEE9AC00](v8);
  v32 = &v31 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x1EEE9AC00](v10);
  v14 = &v31 - v13;
  v15 = *(v7 - 8);
  v16 = MEMORY[0x1EEE9AC00](v12);
  v18 = &v31 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v20 = &v31 - v19;
  (*(a2 + 64))(a1, a2);
  (*(a2 + 184))(v33, a1, a2);
  v21 = *(a3 + 24);
  if (((*(v21 + 24))(v20, v18, v7, v21) & 1) == 0)
  {
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  v22 = *(v15 + 32);
  v22(v14, v20, v7);
  v33 = v21;
  v23 = v31;
  v22(&v14[*(v31 + 48)], v18, v7);
  v24 = v32;
  (*(v9 + 16))(v32, v14, v23);
  v25 = *(v23 + 48);
  v22(v34, v24, v7);
  v26 = *(v15 + 8);
  v26(&v24[v25], v7);
  (*(v9 + 32))(v24, v14, v23);
  v27 = *(v23 + 48);
  v29 = type metadata accessor for Range(0, v7, v33, v28);
  v22(&v34[*(v29 + 36)], &v24[v27], v7);
  return (v26)(v24, v7);
}

uint64_t PartialRangeUpTo<>.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X3>, uint64_t a4@<X8>)
{
  v21 = a3;
  v8 = *(a2 - 8);
  v9 = MEMORY[0x1EEE9AC00](a1);
  v11 = &v18[-1] - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = v9[3];
  v13 = v9[4];
  __swift_project_boxed_opaque_existential_0Tm(v9, v12);
  (*(v13 + 32))(v18, v12, v13);
  if (!v4)
  {
    v14 = v19;
    v15 = v20;
    __swift_mutable_project_boxed_opaque_existential_1(v18, v19);
    (*(v15 + 176))(a2, a2, v21, v14, v15);
    (*(v8 + 32))(a4, v11, a2);
    __swift_destroy_boxed_opaque_existential_1Tm(v18);
  }

  return __swift_destroy_boxed_opaque_existential_1Tm(a1);
}

{
  return PartialRangeFrom<>.init(from:)(a1, a2, a3, a4);
}

uint64_t PartialRangeUpTo<>.encode(to:)(void *a1, uint64_t a2, uint64_t a3)
{
  v6 = a1[3];
  v7 = a1[4];
  __swift_project_boxed_opaque_existential_0Tm(a1, v6);
  (*(v7 + 32))(v11, v6, v7);
  v8 = v12;
  v9 = v13;
  __swift_mutable_project_boxed_opaque_existential_1(v11, v12);
  (*(v9 + 160))(v3, *(a2 + 16), a3, v8, v9);
  return __swift_destroy_boxed_opaque_existential_1Tm(v11);
}

{
  return PartialRangeFrom<>.encode(to:)(a1, a2, a3);
}

uint64_t PartialRangeFrom.relative<A>(to:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, char *a5@<X8>)
{
  v32[1] = a1;
  v33 = a3;
  v34 = a5;
  v8 = *(a2 + 16);
  swift_getTupleTypeMetadata2(0, v8, v8, "lower upper ", 0);
  v10 = v9;
  v32[0] = *(v9 - 8);
  v11 = MEMORY[0x1EEE9AC00](v9);
  v13 = v32 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = MEMORY[0x1EEE9AC00](v11);
  v16 = v32 - v15;
  v17 = *(v8 - 8);
  v18 = MEMORY[0x1EEE9AC00](v14);
  v20 = v32 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18);
  v22 = v32 - v21;
  (*(v17 + 16))(v32 - v21, v5, v8);
  (*(a4 + 72))(v33, a4);
  v23 = *(a2 + 24);
  if (((*(v23 + 24))(v22, v20, v8, v23) & 1) == 0)
  {
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  v24 = *(v17 + 32);
  v24(v16, v22, v8);
  v24(&v16[*(v10 + 48)], v20, v8);
  v33 = v23;
  v25 = v32[0];
  (*(v32[0] + 16))(v13, v16, v10);
  v26 = *(v10 + 48);
  v24(v34, v13, v8);
  v27 = *(v17 + 8);
  v27(&v13[v26], v8);
  (*(v25 + 32))(v13, v16, v10);
  v28 = *(v10 + 48);
  v30 = type metadata accessor for Range(0, v8, v33, v29);
  v24(&v34[*(v30 + 36)], &v13[v28], v8);
  return (v27)(v13, v8);
}

uint64_t protocol witness for RangeExpression.relative<A>(to:) in conformance PartialRangeFrom<A>@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, char *a5@<X8>)
{
  v32[1] = a1;
  v33 = a2;
  v34 = a5;
  v8 = *(a4 + 16);
  swift_getTupleTypeMetadata2(0, v8, v8, "lower upper ", 0);
  v10 = v9;
  v32[0] = *(v9 - 8);
  v11 = MEMORY[0x1EEE9AC00](v9);
  v13 = v32 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = MEMORY[0x1EEE9AC00](v11);
  v16 = v32 - v15;
  v17 = *(v8 - 8);
  v18 = MEMORY[0x1EEE9AC00](v14);
  v20 = v32 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18);
  v22 = v32 - v21;
  (*(v17 + 16))(v32 - v21, v5, v8);
  (*(a3 + 72))(v33, a3);
  v23 = *(a4 + 24);
  if (((*(v23 + 24))(v22, v20, v8, v23) & 1) == 0)
  {
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  v24 = *(v17 + 32);
  v24(v16, v22, v8);
  v24(&v16[*(v10 + 48)], v20, v8);
  v33 = v23;
  v25 = v32[0];
  (*(v32[0] + 16))(v13, v16, v10);
  v26 = *(v10 + 48);
  v24(v34, v13, v8);
  v27 = *(v17 + 8);
  v27(&v13[v26], v8);
  (*(v25 + 32))(v13, v16, v10);
  v28 = *(v10 + 48);
  v30 = type metadata accessor for Range(0, v8, v33, v29);
  v24(&v34[*(v30 + 36)], &v13[v28], v8);
  return (v27)(v13, v8);
}

uint64_t PartialRangeFrom<>.Iterator.next()@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 16);
  v21 = *(a1 + 24);
  swift_getAssociatedTypeWitness(0, v21, v4, &protocol requirements base descriptor for Strideable, associated type descriptor for Strideable.Stride);
  v6 = v5;
  v23 = *(v5 - 1);
  MEMORY[0x1EEE9AC00](v5);
  v22 = &v20 - v7;
  v8 = *(*(swift_getAssociatedConformanceWitness(v21, v4, v6, &protocol requirements base descriptor for Strideable, associated conformance descriptor for Strideable.Strideable.Stride: SignedNumeric) + 8) + 16);
  swift_getAssociatedTypeWitness(0, v8, v6, &protocol requirements base descriptor for ExpressibleByIntegerLiteral, associated type descriptor for ExpressibleByIntegerLiteral.IntegerLiteralType);
  v10 = v9;
  v11 = MEMORY[0x1EEE9AC00](v9);
  v13 = &v20 - v12;
  v14 = *(v4 - 1);
  MEMORY[0x1EEE9AC00](v11);
  v16 = &v20 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v14 + 16))(a2, v2, v4);
  (*(v14 + 56))(a2, 0, 1, v4);
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness(v8, v6, v10, &protocol requirements base descriptor for ExpressibleByIntegerLiteral, associated conformance descriptor for ExpressibleByIntegerLiteral.ExpressibleByIntegerLiteral.IntegerLiteralType: _ExpressibleByBuiltinIntegerLiteral);
  (*(AssociatedConformanceWitness + 8))(&qword_1806729C0, 512, v10, AssociatedConformanceWitness);
  v18 = v22;
  (*(v8 + 24))(v13, v6, v8);
  (v21[6])(v18, v4);
  (*(v23 + 8))(v18, v6);
  return (*(v14 + 40))(v2, v16, v4);
}

uint64_t Collection.subscript.getter@<X0>(const char *a1@<X2>, uint64_t a2@<X3>, uint64_t a3@<X8>)
{
  v54 = a3;
  swift_getAssociatedTypeWitness(255, a2, a1, &protocol requirements base descriptor for Collection, associated type descriptor for Collection.Index);
  v7 = v6;
  swift_getTupleTypeMetadata2(0, v7, v7, "lower upper ", 0);
  v53 = v8;
  v51 = *(v8 - 8);
  v9 = MEMORY[0x1EEE9AC00](v8);
  v52 = &v44 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v48 = &v44 - v11;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness(a2, a1, v7, &protocol requirements base descriptor for Collection, associated conformance descriptor for Collection.Collection.Index: Comparable);
  v14 = type metadata accessor for Range(0, v7, AssociatedConformanceWitness, v13);
  v49 = *(v14 - 8);
  v50 = v14;
  v15 = MEMORY[0x1EEE9AC00](v14);
  v17 = &v44 - v16;
  v56 = *(v7 - 8);
  v18 = MEMORY[0x1EEE9AC00](v15);
  v55 = &v44 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = MEMORY[0x1EEE9AC00](v18);
  v22 = &v44 - v21;
  MEMORY[0x1EEE9AC00](v20);
  v24 = &v44 - v23;
  v47 = type metadata accessor for PartialRangeFrom(0, v7, AssociatedConformanceWitness, v25);
  v26 = *(v47 - 8);
  MEMORY[0x1EEE9AC00](v47);
  v28 = &v44 - v27;
  v29 = *(a2 + 64);
  v57 = a1;
  v58 = v3;
  v59 = a2;
  v29(a1, a2);
  if (((*(*(AssociatedConformanceWitness + 8) + 8))(v24, v24, v7) & 1) == 0 || (v30 = v56, v46 = *(v56 + 32), v46(v28, v24, v7), (*(v30 + 16))(v22, v28, v7), v31 = v55, (*(v59 + 72))(v57, v59), ((*(AssociatedConformanceWitness + 24))(v22, v31, v7, AssociatedConformanceWitness) & 1) == 0))
  {
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  (*(v26 + 8))(v28, v47);
  v32 = v17;
  v45 = v17;
  v33 = v48;
  v34 = v46;
  v46(v48, v22, v7);
  v35 = v53;
  v34(&v33[*(v53 + 48)], v31, v7);
  v37 = v51;
  v36 = v52;
  (*(v51 + 16))(v52, v33, v35);
  v38 = *(v35 + 48);
  v34(v32, v36, v7);
  v39 = *(v56 + 8);
  v39(&v36[v38], v7);
  (*(v37 + 32))(v36, v33, v35);
  v40 = *(v35 + 48);
  v41 = v50;
  v42 = v45;
  v34(&v45[*(v50 + 36)], &v36[v40], v7);
  v39(v36, v7);
  (*(v59 + 88))(v42, v57);
  return (*(v49 + 8))(v42, v41);
}

uint64_t specialized MutableCollection.subscript.getter(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a3 + 8);
  (*(v5 + 72))(v8, a2, v5);
  v6 = v8[0];
  if (v8[0] < a1)
  {
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  v8[0] = a1;
  v8[1] = v6;
  return (*(v5 + 88))(v8, a2, v5);
}

{
  v5 = *(a3 + 8);
  (*(v5 + 64))(v7, a2, v5);
  if (v7[0] > a1)
  {
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  v7[1] = a1;
  return (*(v5 + 88))(v7, a2, v5);
}

uint64_t MutableCollection.subscript.getter(uint64_t a1, unint64_t a2, const char *a3, uint64_t a4, swift *a5)
{
  v9 = *(a4 + 8);
  swift_getAssociatedTypeWitness(255, v9, a2, &protocol requirements base descriptor for Collection, associated type descriptor for Collection.Index);
  v11 = v10;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness(a5, a3, v10, &protocol requirements base descriptor for RangeExpression, associated conformance descriptor for RangeExpression.RangeExpression.Bound: Comparable);
  v14 = type metadata accessor for Range(0, v11, AssociatedConformanceWitness, v13);
  v15 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v14);
  v17 = &v19 - v16;
  (*(a5 + 3))(v5, a2, v9, a3, a5);
  (*(v9 + 88))(v17, a2, v9);
  return (*(v15 + 8))(v17, v14);
}

uint64_t key path setter for MutableCollection.subscript<A>(_:) : <A><A1>AAA1(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = *(a3 + a4 - 32);
  v7 = *(a3 + a4 - 24);
  v8 = *(a3 + a4 - 16);
  v9 = *(a3 + a4 - 8);
  swift_getAssociatedTypeWitness(0, *(v8 + 8), v6, &protocol requirements base descriptor for Collection, associated type descriptor for Collection.SubSequence);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v15 - v11;
  (*(v13 + 16))(&v15 - v11, a1);
  return specialized MutableCollection.subscript.setter(v12, a3, v6, v7, v8, v9);
}

uint64_t MutableCollection.subscript.setter(uint64_t a1, uint64_t a2, unint64_t a3, const char *a4, uint64_t a5, swift *a6)
{
  specialized MutableCollection.subscript.setter(a1, a2, a3, a4, a5, a6);
  v8 = *(*(a4 - 1) + 8);

  return v8(a2, a4);
}

void (*MutableCollection.subscript.modify(void *a1, uint64_t a2, unint64_t a3, const char *a4, uint64_t a5, swift *a6))(uint64_t a1, char a2)
{
  if (swift_coroFrameAlloc)
  {
    v11 = swift_coroFrameAlloc(0x80, 0xC48FuLL);
  }

  else
  {
    v11 = malloc(0x80uLL);
  }

  v12 = v11;
  *a1 = v11;
  v11[3] = a6;
  v11[4] = v34;
  v11[1] = a4;
  v11[2] = a5;
  *v11 = a3;
  v13 = *(a5 + 8);
  v11[5] = v13;
  swift_getAssociatedTypeWitness(255, v13, a3, &protocol requirements base descriptor for Collection, associated type descriptor for Collection.Index);
  v15 = v14;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness(a6, a4, v14, &protocol requirements base descriptor for RangeExpression, associated conformance descriptor for RangeExpression.RangeExpression.Bound: Comparable);
  v32 = type metadata accessor for Range(0, v15, AssociatedConformanceWitness, v17);
  v18 = *(v32 - 8);
  v19 = *(v18 + 64);
  if (swift_coroFrameAlloc)
  {
    v20 = swift_coroFrameAlloc(v19, 0xC48FuLL);
  }

  else
  {
    v20 = malloc(v19);
  }

  v21 = v20;
  v12[6] = v20;
  swift_getAssociatedTypeWitness(0, v13, a3, &protocol requirements base descriptor for Collection, associated type descriptor for Collection.SubSequence);
  v12[7] = v22;
  v23 = *(v22 - 8);
  v12[8] = v23;
  v24 = *(v23 + 64);
  v33 = a6;
  if (swift_coroFrameAlloc)
  {
    v12[9] = swift_coroFrameAlloc(v24, 0xC48FuLL);
    v25 = swift_coroFrameAlloc(v24, 0xC48FuLL);
  }

  else
  {
    v12[9] = malloc(v24);
    v25 = malloc(v24);
  }

  v12[10] = v25;
  v26 = *(a4 - 1);
  v27 = v26;
  v12[11] = v26;
  v28 = *(v26 + 64);
  if (swift_coroFrameAlloc)
  {
    v12[12] = swift_coroFrameAlloc(v28, 0xC48FuLL);
    v29 = swift_coroFrameAlloc(v28, 0xC48FuLL);
  }

  else
  {
    v12[12] = malloc(v28);
    v29 = malloc(v28);
  }

  v12[13] = v29;
  (*(v27 + 16))();
  v30 = *(v33 + 3);
  v12[14] = v30;
  v12[15] = (v33 + 24) & 0xFFFFFFFFFFFFLL | 0x25A2000000000000;
  v30(v34, a3, v13, a4);
  (*(v13 + 88))(v21, a3, v13);
  (*(v18 + 8))(v21, v32);
  return MutableCollection.subscript.modify;
}