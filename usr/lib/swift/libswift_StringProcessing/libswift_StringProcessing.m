BOOL Collection<>.contains<A>(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  v12 = type metadata accessor for Range();
  v13 = type metadata accessor for Optional();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  MEMORY[0x1EEE9AC00](v13);
  v17 = &v20 - v16;
  Collection<>.firstRange<A>(of:)(a1, a2, a3, a4, a5, a6, &v20 - v16);
  v18 = (*(*(v12 - 8) + 48))(v17, 1, v12) != 1;
  (*(v14 + 8))(v17, v13);
  return v18;
}

uint64_t Collection<>.firstRange<A>(of:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, char *a7@<X8>)
{
  v84 = a6;
  v88 = a4;
  v89 = a7;
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v13 = *(TupleTypeMetadata2 - 8);
  v14 = *(v13 + 64);
  v15 = MEMORY[0x1EEE9AC00](TupleTypeMetadata2);
  v17 = &v81 - v16;
  v18 = *(v15 + 48);
  v19 = *(a2 - 8);
  (*(v19 + 16))(&v81 - v16, v7, a2);
  v87 = *(a3 - 8);
  (*(v87 + 16))(&v17[v18], a1, a3);
  if (swift_dynamicCast())
  {
    v85 = v18;
    v86 = v19;
    if (swift_dynamicCast())
    {
      v84 = a3;
      v20 = String.subscript.getter();
      v83 = v21;
      v23 = v22;
      v25 = v24;

      v26 = String.subscript.getter();
      v28 = v27;
      v30 = v29;
      v32 = v31;

      v33 = Substring._firstRangeSubstring(of:)(v26, v28, v30, v32, v20, v83, v23, v25);
      v35 = v34;
      v37 = v36;

      if (v37)
      {
LABEL_4:
        swift_getAssociatedTypeWitness();
        swift_getAssociatedConformanceWitness();
        v38 = type metadata accessor for Range();
        (*(*(v38 - 8) + 56))(v89, 1, 1, v38);
LABEL_8:
        v13 = v86;
        (*(v87 + 8))(&v17[v85], v84);
        return (*(v13 + 8))(v17, a2);
      }

LABEL_7:
      v90 = v33;
      v91 = v35;
      swift_getCanonicalSpecializedMetadata();
      swift_getAssociatedTypeWitness();
      swift_getAssociatedConformanceWitness();
      v52 = type metadata accessor for Range();
      v53 = v89;
      swift_dynamicCast();
      (*(*(v52 - 8) + 56))(v53, 0, 1, v52);
      goto LABEL_8;
    }

    if (swift_dynamicCast())
    {
      v39 = v96;
      v40 = v97;
      v41 = v99;
      v83 = v98;
      v84 = a3;
      v42 = String.subscript.getter();
      v44 = v43;
      v46 = v45;
      v48 = v47;

      v33 = Substring._firstRangeSubstring(of:)(v42, v44, v46, v48, v39, v40, v83, v41);
      v35 = v49;
      v51 = v50;

      if (v51)
      {
        goto LABEL_4;
      }

      goto LABEL_7;
    }

    v18 = v85;
    v19 = v86;
  }

  if (!swift_dynamicCast())
  {
LABEL_20:
    Collection<>._firstRangeGeneric<A>(of:)(a1, a2, a3, v88, a5, v84, v89);
    a2 = TupleTypeMetadata2;
    return (*(v13 + 8))(v17, a2);
  }

  v85 = v18;
  v86 = v19;
  v82 = v96;
  v83 = v97;
  v55 = v98;
  v54 = v99;
  if (swift_dynamicCast())
  {
    v56 = a3;
    v57 = String.subscript.getter();
    v59 = v58;
    v61 = v60;
    v63 = v62;

    v64 = Substring._firstRangeSubstring(of:)(v82, v83, v55, v54, v57, v59, v61, v63);
    v66 = v65;
    LOBYTE(v59) = v67;

    if (v59)
    {
      swift_getAssociatedTypeWitness();
      swift_getAssociatedConformanceWitness();
      v68 = type metadata accessor for Range();
      (*(*(v68 - 8) + 56))(v89, 1, 1, v68);
    }

    else
    {
      v90 = v64;
      v91 = v66;
      swift_getCanonicalSpecializedMetadata();
      swift_getAssociatedTypeWitness();
      swift_getAssociatedConformanceWitness();
      v76 = type metadata accessor for Range();
      v77 = v89;
      swift_dynamicCast();
      (*(*(v76 - 8) + 56))(v77, 0, 1, v76);
    }

    v13 = v86;
    (*(v87 + 8))(&v17[v85], v56);
    return (*(v13 + 8))(v17, a2);
  }

  v81 = v55;
  v69 = v83;
  if (!swift_dynamicCast())
  {

    goto LABEL_20;
  }

  v70 = Substring._firstRangeSubstring(of:)(v82, v69, v81, v54, v92, v93, v94, v95);
  v72 = v71;
  v74 = v73;

  if (v74)
  {
    swift_getAssociatedTypeWitness();
    swift_getAssociatedConformanceWitness();
    v75 = type metadata accessor for Range();
    (*(*(v75 - 8) + 56))(v89, 1, 1, v75);
  }

  else
  {
    v90 = v70;
    v91 = v72;
    swift_getCanonicalSpecializedMetadata();
    swift_getAssociatedTypeWitness();
    swift_getAssociatedConformanceWitness();
    v79 = type metadata accessor for Range();
    v80 = v89;
    swift_dynamicCast();
    (*(*(v79 - 8) + 56))(v80, 0, 1, v79);
  }

  v13 = v86;
  (*(v87 + 8))(&v17[v85], a3);
  return (*(v13 + 8))(v17, a2);
}

uint64_t BidirectionalCollection<>.firstRange<A>(of:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, char *a7@<X8>)
{
  v91 = a5;
  v95 = a4;
  v96 = a7;
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v13 = *(TupleTypeMetadata2 - 8);
  v14 = *(v13 + 64);
  v15 = MEMORY[0x1EEE9AC00](TupleTypeMetadata2);
  v17 = &v88 - v16;
  v18 = *(v15 + 48);
  v19 = *(a2 - 8);
  (*(v19 + 16))(&v88 - v16, v7, a2);
  v94 = *(a3 - 8);
  (*(v94 + 16))(&v17[v18], a1, a3);
  if (!swift_dynamicCast())
  {
    goto LABEL_10;
  }

  v92 = v18;
  v93 = v19;
  if (!swift_dynamicCast())
  {
    if (swift_dynamicCast())
    {
      v40 = v103;
      v41 = v104;
      v42 = v106;
      v90 = v105;
      v91 = a3;
      v43 = String.subscript.getter();
      v45 = v44;
      v47 = v46;
      v49 = v48;

      v33 = Substring._firstRangeSubstring(of:)(v43, v45, v47, v49, v40, v41, v90, v42);
      v35 = v50;
      v52 = v51;

      if (v52)
      {
        goto LABEL_4;
      }

LABEL_7:
      v97 = v33;
      v98 = v35;
      swift_getCanonicalSpecializedMetadata();
      v53 = *(v95 + 8);
      swift_getAssociatedTypeWitness();
      swift_getAssociatedConformanceWitness();
      v54 = type metadata accessor for Range();
      v55 = v96;
      swift_dynamicCast();
      (*(*(v54 - 8) + 56))(v55, 0, 1, v54);
      goto LABEL_8;
    }

    v18 = v92;
    v19 = v93;
LABEL_10:
    if (swift_dynamicCast())
    {
      v92 = v18;
      v93 = v19;
      v89 = v103;
      v90 = v104;
      v58 = v105;
      v57 = v106;
      if (swift_dynamicCast())
      {
        v59 = a3;
        v60 = String.subscript.getter();
        v62 = v61;
        v64 = v63;
        v66 = v65;

        v67 = Substring._firstRangeSubstring(of:)(v89, v90, v58, v57, v60, v62, v64, v66);
        v69 = v68;
        LOBYTE(v62) = v70;

        if (v62)
        {
          v71 = *(v95 + 8);
          swift_getAssociatedTypeWitness();
          swift_getAssociatedConformanceWitness();
          v72 = type metadata accessor for Range();
          (*(*(v72 - 8) + 56))(v96, 1, 1, v72);
        }

        else
        {
          v97 = v67;
          v98 = v69;
          swift_getCanonicalSpecializedMetadata();
          v81 = *(v95 + 8);
          swift_getAssociatedTypeWitness();
          swift_getAssociatedConformanceWitness();
          v82 = type metadata accessor for Range();
          v83 = v96;
          swift_dynamicCast();
          (*(*(v82 - 8) + 56))(v83, 0, 1, v82);
        }

        v56 = v59;
        goto LABEL_19;
      }

      v88 = v58;
      v73 = v90;
      if (swift_dynamicCast())
      {
        v74 = Substring._firstRangeSubstring(of:)(v89, v73, v88, v57, v99, v100, v101, v102);
        v76 = v75;
        v78 = v77;

        if (v78)
        {
          v79 = *(v95 + 8);
          swift_getAssociatedTypeWitness();
          swift_getAssociatedConformanceWitness();
          v80 = type metadata accessor for Range();
          (*(*(v80 - 8) + 56))(v96, 1, 1, v80);
        }

        else
        {
          v97 = v74;
          v98 = v76;
          swift_getCanonicalSpecializedMetadata();
          v85 = *(v95 + 8);
          swift_getAssociatedTypeWitness();
          swift_getAssociatedConformanceWitness();
          v86 = type metadata accessor for Range();
          v87 = v96;
          swift_dynamicCast();
          (*(*(v86 - 8) + 56))(v87, 0, 1, v86);
        }

        (*(v94 + 8))(&v17[v92], a3);
        goto LABEL_20;
      }
    }

    Collection<>._firstRangeGeneric<A>(of:)(a1, a2, a3, *(v95 + 8), v91, *(a6 + 8), v96);
    a2 = TupleTypeMetadata2;
    return (*(v13 + 8))(v17, a2);
  }

  v91 = a3;
  v20 = String.subscript.getter();
  v90 = v21;
  v23 = v22;
  v25 = v24;

  v26 = String.subscript.getter();
  v28 = v27;
  v30 = v29;
  v32 = v31;

  v33 = Substring._firstRangeSubstring(of:)(v26, v28, v30, v32, v20, v90, v23, v25);
  v35 = v34;
  v37 = v36;

  if ((v37 & 1) == 0)
  {
    goto LABEL_7;
  }

LABEL_4:
  v38 = *(v95 + 8);
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  v39 = type metadata accessor for Range();
  (*(*(v39 - 8) + 56))(v96, 1, 1, v39);
LABEL_8:
  v56 = v91;
LABEL_19:
  (*(v94 + 8))(&v17[v92], v56);
LABEL_20:
  v13 = v93;
  return (*(v13 + 8))(v17, a2);
}

Swift::Bool __swiftcall StringProtocol.contains(_:)(Swift::String a1)
{
  v3 = v1;
  v7 = a1;
  v4 = *(v2 + 8);
  v5 = lazy protocol witness table accessor for type String and conformance String();
  BidirectionalCollection<>.firstRange<A>(of:)(&v7, v3, MEMORY[0x1E69E6158], v4, v5, MEMORY[0x1E69E5EF0], v8);
  return (v8[16] & 1) == 0;
}

BOOL StringProtocol.contains(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v10[0] = a1;
  v10[1] = a2;
  v10[2] = a3;
  v10[3] = a4;
  v7 = *(a6 + 8);
  v8 = lazy protocol witness table accessor for type Substring and conformance Substring();
  BidirectionalCollection<>.firstRange<A>(of:)(v10, a5, MEMORY[0x1E69E67B0], v7, v8, MEMORY[0x1E69E5EF0], v11);
  return (v11[16] & 1) == 0;
}

uint64_t BidirectionalCollection<>.contains<A>(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  (*(a5 + 16))(&v13, a3, a5);
  v6 = *(a4 + 8);
  Collection.subscript.getter();
  swift_getAssociatedTypeWitness();
  v7 = type metadata accessor for Regex();
  Regex.firstMatch(in:)(v9, v10, v11, v12, v7, &v14);

  if (!v15)
  {
    return 0;
  }

  outlined consume of Regex<A1.RegexOutput>.Match?<A><A1>(v14, v15);
  return 1;
}

uint64_t Regex.firstMatch(in:)@<X0>(unint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v13 = type metadata accessor for MEProgram(0);
  v14 = *(*(v13 - 8) + 64);
  result = MEMORY[0x1EEE9AC00](v13 - 8);
  v17 = &v19 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a2 >> 14 < a1 >> 14)
  {
    __break(1u);
  }

  else
  {
    v18 = *v6;
    Regex.Program.loweredProgram.getter(v17);
    static Executor.firstMatch(_:_:subjectBounds:searchBounds:)(v17, a3, a4, a1, a2, a1, a2, *(a5 + 16), a6);
    return outlined destroy of MEProgram(v17, type metadata accessor for MEProgram);
  }

  return result;
}

unint64_t Substring._firstRangeSubstring(of:)(unint64_t result, unint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5, unint64_t a6, uint64_t a7, unint64_t a8)
{
  if (a6 >> 14 < a5 >> 14)
  {
    __break(1u);
  }

  else
  {
    v67 = v8;
    v68 = v9;
    v17 = result;

    v18 = Substring.subscript.getter();
    v42 = a8;
    v43 = a7;
    v20 = v19;
    v22 = v21;
    v23 = a2;
    v24 = a3;
    v26 = v25;

    v27 = v26;
    v28 = v24;
    v29 = v23;
    v30 = specialized SubstringSearcher.State.init(text:pattern:)(v18, v20, v22, v27, v17, v23);
    v34 = v32;
    v35 = v33 & 1;
    LOBYTE(v55) = v33 & 1;
    v36 = v17;
    if (v33)
    {
      v37 = 0;
      v39 = v42;
      v38 = v43;
    }

    else
    {
      v55 = a5;
      v56 = a6;
      v39 = v42;
      v57 = v43;
      v58 = v42;
      v59 = v17;
      v60 = v29;
      v61 = v28;
      v62 = a4;
      v63 = v30;
      v64 = v31;
      v65 = v32;
      v66 = v33 & 1;
      v40 = v30;
      v41 = v31;
      SubstringSearcher.nextRange(in:searchFromEnd:)(a5, a6, v43, v32, v44);
      v31 = v41;
      v30 = v40;
      v37 = v44[0];
      v34 = v45;
      v35 = v46;
      v54 = v46;
      v38 = v43;
    }

    v44[0] = a5;
    v44[1] = a6;
    v44[2] = v38;
    v45 = v39;
    v46 = v36;
    v47 = v29;
    v48 = v28;
    v49 = a4;
    v50 = v30;
    v51 = v31;
    v52 = v34;
    v53 = v35;
    outlined destroy of SubstringSearcher(v44);
    return v37;
  }

  return result;
}

uint64_t Collection<>._firstRangeGeneric<A>(of:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, char *a7@<X8>)
{
  v77 = a6;
  v73 = a7;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v72 = *(TupleTypeMetadata2 - 8);
  v13 = *(v72 + 64);
  v14 = MEMORY[0x1EEE9AC00](TupleTypeMetadata2);
  v67 = &v61 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = MEMORY[0x1EEE9AC00](v14);
  v69 = &v61 - v17;
  v71 = *(AssociatedTypeWitness - 8);
  v18 = *(v71 + 64);
  v19 = MEMORY[0x1EEE9AC00](v16);
  v75 = &v61 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v19);
  v74 = &v61 - v21;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v70 = type metadata accessor for Range();
  v68 = *(v70 - 8);
  v22 = *(v68 + 64);
  MEMORY[0x1EEE9AC00](v70);
  v64 = &v61 - v23;
  v24 = swift_getAssociatedTypeWitness();
  v65 = *(v24 - 8);
  v25 = *(v65 + 64);
  v26 = MEMORY[0x1EEE9AC00](v24);
  v28 = (&v61 - v27);
  v29 = *(*(a3 - 8) + 64);
  MEMORY[0x1EEE9AC00](v26);
  (*(v31 + 16))(&v61 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0), a1, a3);
  v32 = *(a4 + 8);
  v33 = swift_getAssociatedTypeWitness();
  v34 = a5;
  v35 = *(a5 + 8);
  v36 = Array.init<A>(_:)();
  v37 = swift_allocObject();
  v37[2] = a2;
  v37[3] = a3;
  v37[4] = a4;
  v37[5] = v34;
  v37[6] = v77;
  v37[7] = v33;
  v38 = swift_getAssociatedConformanceWitness();
  v39 = v36;
  v40 = v74;
  v77 = v24;
  v41 = ZSearcher.init(pattern:by:)(v39, partial apply for implicit closure #1 in Collection<>._firstRangeGeneric<A>(of:), v37, v24, v38);
  v43 = v42;
  v61 = v44;
  v62 = v45;
  v63 = v28;
  v46 = v75;
  Collection.subscript.getter();
  dispatch thunk of Collection.startIndex.getter();
  dispatch thunk of Collection.endIndex.getter();
  v47 = AssociatedTypeWitness;
  result = dispatch thunk of static Comparable.<= infix(_:_:)();
  if (result)
  {
    v49 = v71;
    v50 = *(v71 + 32);
    v78 = v38;
    v51 = v69;
    v50(v69, v40, AssociatedTypeWitness);
    v52 = TupleTypeMetadata2;
    v50(&v51[*(TupleTypeMetadata2 + 48)], v46, AssociatedTypeWitness);
    AssociatedConformanceWitness = v43;
    v53 = v72;
    v54 = v67;
    (*(v72 + 16))(v67, v51, v52);
    v74 = *(v52 + 48);
    v55 = v64;
    v50(v64, v54, v47);
    v75 = v41;
    v56 = *(v49 + 8);
    v56(&v74[v54], v47);
    (*(v53 + 32))(v54, v51, v52);
    v57 = *(v52 + 48);
    v58 = v70;
    v50((v55 + *(v70 + 36)), &v54[v57], v47);
    v56(v54, v47);
    v59 = v63;
    v60 = v77;
    ZSearcher.search(_:in:)(v63, v55, v75, AssociatedConformanceWitness, v61, v62, v77, v78, v73);

    (*(v68 + 8))(v55, v58);
    return (*(v65 + 8))(v59, v60);
  }

  else
  {
    __break(1u);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type String and conformance String()
{
  result = lazy protocol witness table cache variable for type String and conformance String;
  if (!lazy protocol witness table cache variable for type String and conformance String)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type String and conformance String);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type String and conformance String;
  if (!lazy protocol witness table cache variable for type String and conformance String)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type String and conformance String);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type String and conformance String;
  if (!lazy protocol witness table cache variable for type String and conformance String)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type String and conformance String);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type Substring and conformance Substring()
{
  result = lazy protocol witness table cache variable for type Substring and conformance Substring;
  if (!lazy protocol witness table cache variable for type Substring and conformance Substring)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Substring and conformance Substring);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Substring and conformance Substring;
  if (!lazy protocol witness table cache variable for type Substring and conformance Substring)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Substring and conformance Substring);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Substring and conformance Substring;
  if (!lazy protocol witness table cache variable for type Substring and conformance Substring)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Substring and conformance Substring);
  }

  return result;
}

uint64_t ZSearcher.init(pattern:by:)(uint64_t a1, uint64_t (*a2)(char *, char *), uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = *(a5 + 8);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  zAlgorithm<A>(_:by:)(a1, a2, a3, AssociatedTypeWitness);
  return a1;
}

unint64_t specialized ZSearcher.search(_:in:)(unint64_t result, unint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t (*a9)(uint64_t *, uint64_t *))
{
  v10 = result;
  v11 = 0;
  v12 = 0;
  v28 = a8 + 32;
  v31 = a2 >> 14;
  v30 = (a7 + 40);
  v13 = a5;
  while (1)
  {
    v14 = a5 >> 14;
    v15 = v13 >> 14;
    if (a5 >> 14 >= v13 >> 14)
    {
      v35 = *(a7 + 16);
      if (!v35)
      {
        return a5;
      }

      v33 = a5;
      v34 = a5 >> 14;
      v12 = 0;
      v13 = a5;
      v23 = v30;
      while ((v13 ^ a6) >= 0x4000)
      {
        v38 = v12;
        v24 = *v23;
        v41 = *(v23 - 1);
        v42 = v24;

        v39 = Substring.subscript.getter();
        v40 = v25;
        v26 = a9(&v41, &v39);

        if ((v26 & 1) == 0)
        {
          v11 = 0;
          v14 = v34;
          v12 = v38;
          goto LABEL_25;
        }

        v12 = v38 + 1;
        result = Substring.index(after:)();
        v13 = result;
        v23 += 2;
        if (v35 == v38 + 1)
        {
          goto LABEL_29;
        }
      }

      v11 = 0;
LABEL_24:
      v14 = v34;
      goto LABEL_25;
    }

    if (v11 >= *(a8 + 16))
    {
      goto LABEL_37;
    }

    if (*(v28 + 8 * v11) >= v12)
    {
      break;
    }

LABEL_25:
    if (v14 == v31)
    {
      return 0;
    }

    result = Substring.index(after:)();
    a5 = result;
    ++v11;
    if (__OFSUB__(v12--, 1))
    {
      __break(1u);
LABEL_29:
      if (v34 > v13 >> 14)
      {
        goto LABEL_38;
      }

      return v33;
    }
  }

  v16 = *(a7 + 16);
  if (v12 == v16)
  {
LABEL_31:
    if (v15 < v14)
    {
      goto LABEL_39;
    }

    return a5;
  }

  v33 = a5;
  v34 = a5 >> 14;
  v37 = v10;
  v17 = &v30[2 * v12];
  while (1)
  {
    if ((v13 ^ a6) < 0x4000)
    {
      v11 = 0;
LABEL_23:
      v10 = v37;
      goto LABEL_24;
    }

    if (v12 >= v16)
    {
      break;
    }

    v18 = *v17;
    v41 = *(v17 - 1);
    v42 = v18;

    v19 = a4;
    v39 = Substring.subscript.getter();
    v40 = v20;
    v21 = a9(&v41, &v39);

    if ((v21 & 1) == 0)
    {
      v11 = 0;
      a4 = v19;
      goto LABEL_23;
    }

    v22 = v12 + 1;
    if (__OFADD__(v12, 1))
    {
      goto LABEL_36;
    }

    a4 = v19;
    result = Substring.index(after:)();
    v13 = result;
    ++v12;
    v17 += 2;
    if (v22 == v16)
    {
      v15 = result >> 14;
      a5 = v33;
      v14 = v34;
      goto LABEL_31;
    }
  }

  __break(1u);
LABEL_36:
  __break(1u);
LABEL_37:
  __break(1u);
LABEL_38:
  __break(1u);
LABEL_39:
  __break(1u);
  return result;
}

uint64_t ZSearcher.search(_:in:)@<X0>(void (*a1)(uint64_t, char *, uint64_t)@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t (*a5)(char *, char *)@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, char *a9@<X8>)
{
  v78 = a5;
  v79 = a6;
  v77 = a3;
  v85 = a1;
  v66 = a9;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v86 = a8;
  v87 = a7;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v14 = type metadata accessor for Range();
  v15 = type metadata accessor for Optional();
  v73 = *(v15 - 8);
  v74 = v15;
  v16 = *(v73 + 64);
  v17 = MEMORY[0x1EEE9AC00](v15);
  v69 = &v62 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = MEMORY[0x1EEE9AC00](v17);
  v72 = &v62 - v20;
  v80 = v14;
  v21 = *(v14 - 8);
  v22 = *(v21 + 64);
  v23 = MEMORY[0x1EEE9AC00](v19);
  v63 = &v62 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = MEMORY[0x1EEE9AC00](v23);
  v64 = &v62 - v26;
  v27 = *(AssociatedTypeWitness - 8);
  v28 = *(v27 + 64);
  v29 = MEMORY[0x1EEE9AC00](v25);
  v31 = &v62 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v29);
  v33 = &v62 - v32;
  v82 = swift_allocBox();
  v35 = v34;
  v36 = *(v27 + 16);
  v36(v34, a2, AssociatedTypeWitness);
  v81 = swift_allocBox();
  v83 = v37;
  v36(v37, v35, AssociatedTypeWitness);
  v38 = swift_allocObject();
  *(v38 + 16) = 0;
  v39 = swift_allocObject();
  *(v39 + 16) = 0;
  v76 = a2;
  v67 = v36;
  v36(v33, a2, AssociatedTypeWitness);
  v40 = 0;
  v41 = 0;
  v70 = a4 + 32;
  v71 = a4;
  v68 = v27 + 16;
  v84 = (v27 + 8);
  v65 = v21;
  v75 = (v21 + 48);
  v73 += 8;
  while (1)
  {
    result = dispatch thunk of static Comparable.>= infix(_:_:)();
    if (result)
    {
      v43 = v72;
      compare #1 <A>(start:end:minLength:) in ZSearcher.search(_:in:)(v33, v33, 0, v77, v78, v79, v76, v85, v72, v82, v81, v38, v39, v87, v86);
      v44 = v80;
      v45 = (*v75)(v43, 1, v80);
      v46 = v43;
      if (v45 != 1)
      {
        (*v84)(v33, AssociatedTypeWitness);
        v58 = v65;
        v59 = *(v65 + 32);
        v60 = v64;
        v59(v64, v72, v44);
LABEL_16:
        v57 = v66;
        v59(v66, v60, v44);
        v56 = 0;
        goto LABEL_17;
      }

LABEL_9:
      (*v73)(v46, v74);
      goto LABEL_10;
    }

    v47 = v87;
    if ((v40 & 0x8000000000000000) != 0)
    {
      goto LABEL_20;
    }

    if (v40 >= *(v71 + 16))
    {
      goto LABEL_21;
    }

    if (*(v70 + 8 * v40) >= v41)
    {
      v67(v31, v83, AssociatedTypeWitness);
      v61 = v47;
      v48 = v69;
      compare #1 <A>(start:end:minLength:) in ZSearcher.search(_:in:)(v33, v31, v41, v77, v78, v79, v76, v85, v69, v82, v81, v38, v39, v61, v86);
      v49 = *v84;
      (*v84)(v31, AssociatedTypeWitness);
      v44 = v80;
      v50 = (*v75)(v48, 1, v80);
      v46 = v48;
      if (v50 != 1)
      {
        v49(v33, AssociatedTypeWitness);
        v58 = v65;
        v59 = *(v65 + 32);
        v60 = v63;
        v59(v63, v69, v44);
        goto LABEL_16;
      }

      goto LABEL_9;
    }

LABEL_10:
    dispatch thunk of Collection.endIndex.getter();
    v51 = *(AssociatedConformanceWitness + 8);
    v52 = dispatch thunk of static Equatable.== infix(_:_:)();
    v53 = *v84;
    (*v84)(v31, AssociatedTypeWitness);
    if (v52)
    {
      v53(v33, AssociatedTypeWitness);
      v56 = 1;
      v57 = v66;
      v44 = v80;
      v58 = v65;
LABEL_17:
      (*(v58 + 56))(v57, v56, 1, v44);
    }

    result = dispatch thunk of Collection.formIndex(after:)();
    v54 = *(v38 + 16);
    v40 = v54 + 1;
    if (__OFADD__(v54, 1))
    {
      break;
    }

    *(v38 + 16) = v40;
    v55 = *(v39 + 16);
    v41 = v55 - 1;
    if (__OFSUB__(v55, 1))
    {
      goto LABEL_19;
    }

    *(v39 + 16) = v41;
  }

  __break(1u);
LABEL_19:
  __break(1u);
LABEL_20:
  __break(1u);
LABEL_21:
  __break(1u);
  return result;
}

uint64_t BidirectionalCollection<>.firstRange<A>(of:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v7 = *(a4 + 8);
  Collection.subscript.getter();
  v8 = v16;
  v9 = v17;
  v11 = v18;
  v10 = v19;
  (*(a5 + 16))(&v15, a3, a5);
  swift_getAssociatedTypeWitness();
  v12 = type metadata accessor for Regex();
  Regex.firstMatch(in:)(v8, v9, v11, v10, v12, &v16);

  if (!v17)
  {
    return 0;
  }

  v13 = v19;
  outlined consume of Regex<A1.RegexOutput>.Match?<A><A1>(v16, v17);
  return v13;
}

uint64_t RangesSequence.init(input:searcher:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  (*(*(AssociatedTypeWitness - 8) + 32))(a4, a1, AssociatedTypeWitness);
  v9 = type metadata accessor for RangesSequence();
  v10 = *(*(a3 - 8) + 32);
  v11 = a4 + *(v9 + 36);

  return v10(v11, a2, a3);
}

uint64_t RangesSequence.Iterator.init(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v58 = a4;
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v54 = *(TupleTypeMetadata2 - 8);
  v8 = *(v54 + 64);
  v9 = MEMORY[0x1EEE9AC00](TupleTypeMetadata2);
  v49 = &v43 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x1EEE9AC00](v9);
  v50 = &v43 - v12;
  v47 = *(AssociatedTypeWitness - 8);
  v13 = *(v47 + 64);
  v14 = MEMORY[0x1EEE9AC00](v11);
  v16 = &v43 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v18 = &v43 - v17;
  swift_getAssociatedConformanceWitness();
  v19 = type metadata accessor for Range();
  v52 = *(v19 - 8);
  v53 = v19;
  v20 = *(v52 + 64);
  MEMORY[0x1EEE9AC00](v19);
  v22 = &v43 - v21;
  v55 = a2;
  v56 = a3;
  v23 = type metadata accessor for RangesSequence();
  v46 = *(v23 - 8);
  (*(v46 + 16))(v58, a1, v23);
  v48 = v23;
  v45 = *(v23 + 36);
  swift_checkMetadataState();
  dispatch thunk of Collection.startIndex.getter();
  v57 = a1;
  dispatch thunk of Collection.endIndex.getter();
  result = dispatch thunk of static Comparable.<= infix(_:_:)();
  if (result)
  {
    v25 = v47;
    v26 = *(v47 + 32);
    v27 = v50;
    v26(v50, v18, AssociatedTypeWitness);
    v28 = v22;
    v44 = v22;
    v29 = TupleTypeMetadata2;
    v26(&v27[*(TupleTypeMetadata2 + 48)], v16, AssociatedTypeWitness);
    v30 = v54;
    v31 = v49;
    (*(v54 + 16))(v49, v27, v29);
    v32 = *(v29 + 48);
    v26(v28, v31, AssociatedTypeWitness);
    v33 = *(v25 + 8);
    v33(&v31[v32], AssociatedTypeWitness);
    (*(v30 + 32))(v31, v27, v29);
    v34 = *(v29 + 48);
    v35 = v53;
    v36 = v44;
    v26(&v44[*(v53 + 36)], &v31[v34], AssociatedTypeWitness);
    v33(v31, AssociatedTypeWitness);
    v38 = v55;
    v37 = v56;
    v39 = *(v56 + 32);
    v40 = type metadata accessor for RangesSequence.Iterator();
    v41 = v57;
    v42 = v58 + *(v40 + 36);
    v39(v57, v36, v38, v37);
    (*(v46 + 8))(v41, v48);
    return (*(v52 + 8))(v36, v35);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t RangesSequence.Iterator.next()(uint64_t a1)
{
  v2 = v1;
  v4 = *(a1 + 16);
  v5 = *(a1 + 24);
  v6 = type metadata accessor for RangesSequence();
  v7 = v2 + *(a1 + 36);
  v8 = v2 + *(v6 + 36);
  return (*(v5 + 40))(v2, v7, v4, v5);
}

uint64_t RangesSequence.makeIterator()@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(*(a1 - 8) + 64);
  MEMORY[0x1EEE9AC00](a1);
  v6 = &v9 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v7 + 16))(v6);
  return RangesSequence.Iterator.init(_:)(v6, *(a1 + 16), *(a1 + 24), a2);
}

uint64_t Collection._ranges<A>(of:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X2>, uint64_t a3@<X8>)
{
  v6 = *(a2 - 8);
  v7 = *(v6 + 64);
  v8 = MEMORY[0x1EEE9AC00](a1);
  v10 = &v18 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x1EEE9AC00](v8);
  v14 = &v18 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v15 + 16))(v14, v16);
  (*(v6 + 16))(v10, a1, a2);
  return RangesSequence.init(input:searcher:)(v14, v10, a2, a3);
}

uint64_t specialized Collection<>._ranges<A>(of:)@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, void *a7@<X8>)
{
  v14 = String.count.getter();
  if (v14)
  {
    v15 = v14;
    v16 = _ss22_ContiguousArrayBufferV19_uninitializedCount15minimumCapacityAByxGSi_SitcfCSJ_Tt1gq5(v14, 0);

    v17 = specialized Sequence._copySequenceContents(initializing:)(v61, v16 + 2, v15, a1, a2);

    if (v17 == v15)
    {
      goto LABEL_5;
    }

    __break(1u);
  }

  v16 = MEMORY[0x1E69E7CC0];
LABEL_5:
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySiGMd, &_ss23_ContiguousArrayStorageCySiGMR);
  result = swift_allocObject();
  *(result + 16) = xmmword_18E5ED040;
  countAndFlagsBits = v16[1].value._countAndFlagsBits;
  *(result + 32) = countAndFlagsBits;
  if (countAndFlagsBits < 2 || (result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(1, countAndFlagsBits, 0, result), v50 = v16[1].value._countAndFlagsBits, v50 < 2))
  {
LABEL_6:
    *a7 = a3;
    a7[1] = a4;
    a7[2] = a5;
    a7[3] = a6;
    a7[4] = v16;
    a7[5] = result;
    a7[6] = _sSl17_StringProcessingSQ7ElementRpzrlE7_ranges2ofAA14RangesSequenceVyAA9ZSearcherVyxGGqd___tSlRd__ABQyd__ACRSlFSbAC_ACtcfu_Ss_SSTt1G5;
    a7[7] = 0;
  }

  v55 = 0;
  v56 = countAndFlagsBits;
  v20 = 0;
  v21 = 0;
  v57 = -1;
  v59 = 0;
  v60 = 1;
  while (1)
  {
    --v56;
    v24 = v20 - v60;
    v58 = result;
    if (v20 <= v60)
    {
      break;
    }

    v25 = v60 - v21;
    if (__OFSUB__(v60, v21))
    {
      goto LABEL_61;
    }

    if ((v25 & 0x8000000000000000) != 0)
    {
      goto LABEL_62;
    }

    v26 = *(result + 16);
    if (v25 >= v26)
    {
      goto LABEL_63;
    }

    v27 = *(result + 8 * v25 + 32);
    if (v27 < v24)
    {
      v22 = *(result + 24);
      v23 = v26 + 1;
      if (v26 >= v22 >> 1)
      {
        v43 = *(result + 16);
        v52 = v21;
        v54 = v20;
        v45 = v59;
        v47 = v60;
        v44 = v57;
        v46 = v55;
        goto LABEL_55;
      }
    }

    else
    {
      v28 = v20;
      if (__OFADD__(v60, v24))
      {
        goto LABEL_64;
      }

      if (v20 < countAndFlagsBits)
      {
        v49 = *(result + 16);
        v29 = v20 + v57;
        v30 = v20;
        v31 = v55 + 16 * v20;
        v32 = v16;
        v51 = v31;
        v53 = v20 + v57;
        while (1)
        {
          if (v29 < 0)
          {
            goto LABEL_58;
          }

          v33 = v16[1].value._countAndFlagsBits;
          if (v57 + v28 >= v33)
          {
            goto LABEL_59;
          }

          if (v28 >= v33)
          {
            goto LABEL_60;
          }

          if (*(&v32[1].value._countAndFlagsBits + v31) != v32[v30 + 2].value._countAndFlagsBits || *(&v32[1].value._object + v31) != v32[v30 + 2].value._object)
          {
            v35 = *(&v32[1].value._countAndFlagsBits + v31);
            v36 = _stringCompareWithSmolCheck(_:_:expecting:)();
            v31 = v51;
            v29 = v53;
            v37 = v36;
            result = v58;
            if ((v37 & 1) == 0)
            {
              break;
            }
          }

          ++v28;
          ++v32;
          if (countAndFlagsBits == v28)
          {
            v27 = v57 + v28;
            v28 = countAndFlagsBits;
            goto LABEL_48;
          }
        }

        v27 = v57 + v28;
LABEL_48:
        v26 = v49;
        goto LABEL_49;
      }

      v27 = v20 - v60;
LABEL_49:
      v22 = *(result + 24);
      v23 = v26 + 1;
      if (v26 >= v22 >> 1)
      {
        v43 = v26;
        v44 = v57;
        v45 = v59;
        v46 = v55;
        v54 = v28;
LABEL_54:
        v47 = v60;
        v52 = v60;
LABEL_55:
        v59 = v45;
        v60 = v47;
        v57 = v44;
        v55 = v46;
        v48 = v23;
        result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v22 > 1), v23, 1, v58);
        v23 = v48;
        v21 = v52;
        v20 = v54;
        v26 = v43;
        goto LABEL_12;
      }

      v20 = v28;
      v21 = v60;
    }

LABEL_12:
    *(result + 16) = v23;
    *(result + 8 * v26 + 32) = v27;
    --v57;
    v59 += 16;
    ++v60;
    v55 -= 16;
    if (v60 == v50)
    {
      goto LABEL_6;
    }
  }

  if (v60 >= countAndFlagsBits)
  {
    v27 = 0;
    v20 = v60;
LABEL_44:
    v26 = *(result + 16);
    v22 = *(result + 24);
    v23 = v26 + 1;
    if (v26 >= v22 >> 1)
    {
      v43 = *(result + 16);
      v54 = v20;
      v44 = v57;
      v45 = v59;
      v46 = v55;
      goto LABEL_54;
    }

    v21 = v60;
    goto LABEL_12;
  }

  v27 = 0;
  v38 = v16 + 2;
  while (1)
  {
    v39 = v16[1].value._countAndFlagsBits;
    if (v27 >= v39)
    {
      break;
    }

    if (v60 + v27 >= v39)
    {
      goto LABEL_57;
    }

    if (v38->value._countAndFlagsBits != *(&v38[1].value._countAndFlagsBits + v59) || v38->value._object != *(&v38[1].value._object + v59))
    {
      v41 = v38->value._countAndFlagsBits;
      v42 = _stringCompareWithSmolCheck(_:_:expecting:)();
      result = v58;
      if ((v42 & 1) == 0)
      {
        v20 = v60 + v27;
        goto LABEL_44;
      }
    }

    ++v27;
    ++v38;
    if (!(v60 - countAndFlagsBits + v27))
    {
      v27 = v56;
      v20 = countAndFlagsBits;
      goto LABEL_44;
    }
  }

  __break(1u);
LABEL_57:
  __break(1u);
LABEL_58:
  __break(1u);
LABEL_59:
  __break(1u);
LABEL_60:
  __break(1u);
LABEL_61:
  __break(1u);
LABEL_62:
  __break(1u);
LABEL_63:
  __break(1u);
LABEL_64:
  __break(1u);
  return result;
}

uint64_t Collection<>._ranges<A>(of:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  v13 = *(*(a3 - 8) + 64);
  MEMORY[0x1EEE9AC00](a1);
  (*(v15 + 16))(v26 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
  v16 = *(a4 + 8);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v18 = *(a5 + 8);
  v19 = Array.init<A>(_:)();
  v20 = swift_allocObject();
  v20[2] = a2;
  v20[3] = a3;
  v20[4] = a4;
  v20[5] = a5;
  v20[6] = a6;
  v20[7] = AssociatedTypeWitness;
  v26[0] = ZSearcher.init(pattern:by:)(v19, partial apply for implicit closure #1 in Collection<>._ranges<A>(of:), v20, a2, a4);
  v26[1] = v21;
  v26[2] = v22;
  v26[3] = v23;
  v24 = type metadata accessor for ZSearcher();
  swift_getWitnessTable();
  Collection._ranges<A>(of:)(v26, v24, a7);
}

uint64_t Collection<>.ranges<A>(of:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v120 = a6;
  v119 = a5;
  v126 = a4;
  type metadata accessor for ZSearcher();
  swift_getWitnessTable();
  v118 = type metadata accessor for RangesSequence();
  v10 = *(*(v118 - 8) + 64);
  MEMORY[0x1EEE9AC00](v118);
  v12 = &v115 - v11;
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v14 = *(TupleTypeMetadata2 - 8);
  v15 = *(v14 + 64);
  v16 = MEMORY[0x1EEE9AC00](TupleTypeMetadata2);
  v18 = &v115 - v17;
  v19 = *(v16 + 48);
  v20 = *(a2 - 8);
  v21 = *(v20 + 16);
  v121 = v6;
  v22 = v6;
  v23 = a1;
  v128 = a2;
  v21(&v115 - v17, v22, a2);
  v124 = *(a3 - 8);
  (*(v124 + 16))(&v18[v19], a1, a3);
  v24 = swift_dynamicCast();
  v125 = v19;
  v127 = v18;
  if (v24)
  {
    v122 = v20;
    v123 = a3;
    if (swift_dynamicCast())
    {
      v25 = String.subscript.getter();
      v27 = v26;
      v121 = v28;
      v30 = v29;

      v31 = String.subscript.getter();
      v33 = v32;
      v35 = v34;
      v37 = v36;

      if (v27 >> 14 >= v25 >> 14)
      {

        v120 = v25;
        v39 = v35;
        v40 = v121;
        v41 = Substring.subscript.getter();
        v42 = v31;
        v44 = v43;
        v119 = v27;
        v45 = v37;
        v47 = v46;
        v49 = v48;

        v50 = specialized SubstringSearcher.State.init(text:pattern:)(v41, v44, v47, v49, v42, v33);
        v54 = v53 & 1;
        v129 = v53 & 1;
        v138 = v120;
        v139 = v119;
        v140 = v40;
        v141 = v30;
        v142 = v42;
        v143 = v33;
        v144 = v39;
        v145 = v45;
LABEL_17:
        v146 = v50;
        v147 = v51;
        v148 = v52;
        v149 = v54;
        specialized _copySequenceToContiguousArray<A>(_:)(&v138);
        outlined destroy of SubstringSearcher(&v138);
        swift_getCanonicalSpecializedMetadata();
        swift_getAssociatedTypeWitness();
        swift_getAssociatedConformanceWitness();
        type metadata accessor for Range();
        v114 = _arrayForceCast<A, B>(_:)();

        (*(v124 + 8))(&v127[v125], v123);
        v14 = v122;
LABEL_20:
        (*(v14 + 8))(v127, v128);
        return v114;
      }

      __break(1u);
      goto LABEL_22;
    }

    if (swift_dynamicCast())
    {
      v55 = v134;
      v56 = v135;
      v57 = v136;
      v58 = v137;
      v121 = String.subscript.getter();
      v60 = v59;
      v120 = v61;
      v63 = v62;

      if (v56 >> 14 >= v55 >> 14)
      {

        v64 = Substring.subscript.getter();
        v66 = v65;
        v68 = v67;
        v70 = v69;

        v71 = v66;
        v72 = v68;
        v73 = v121;
        v74 = v120;
        v50 = specialized SubstringSearcher.State.init(text:pattern:)(v64, v71, v72, v70, v121, v60);
        v54 = v75 & 1;
        v129 = v75 & 1;
        v138 = v55;
        v139 = v56;
        v140 = v57;
        v141 = v58;
        v142 = v73;
        v143 = v60;
        v144 = v74;
        v145 = v63;
        goto LABEL_17;
      }

      goto LABEL_23;
    }

    a3 = v123;
    v20 = v122;
  }

  if (!swift_dynamicCast())
  {
LABEL_19:
    Collection<>._ranges<A>(of:)(v23, v128, a3, v126, v119, v120, v12);
    swift_getAssociatedTypeWitness();
    swift_getAssociatedConformanceWitness();
    type metadata accessor for Range();
    swift_getWitnessTable();
    v114 = Array.init<A>(_:)();
    v128 = TupleTypeMetadata2;
    goto LABEL_20;
  }

  v116 = v134;
  v117 = v135;
  v77 = v136;
  v76 = v137;
  if (swift_dynamicCast())
  {
    v121 = v77;
    v122 = v20;
    v123 = a3;
    v78 = String.subscript.getter();
    v80 = v79;
    v82 = v81;
    v84 = v83;

    if (v80 >> 14 < v78 >> 14)
    {
LABEL_22:
      __break(1u);
LABEL_23:
      __break(1u);
      goto LABEL_24;
    }

    v85 = Substring.subscript.getter();
    v87 = v86;
    v89 = v88;
    v91 = v90;

    v92 = v85;
    v93 = v87;
    v94 = v89;
    v95 = v116;
    v96 = v117;
    v97 = v121;
    v50 = specialized SubstringSearcher.State.init(text:pattern:)(v92, v93, v94, v91, v116, v117);
    v54 = v98 & 1;
    v129 = v98 & 1;
    v138 = v78;
    v139 = v80;
    v140 = v82;
    v141 = v84;
LABEL_16:
    v142 = v95;
    v143 = v96;
    v144 = v97;
    v145 = v76;
    goto LABEL_17;
  }

  result = swift_dynamicCast();
  if (!result)
  {

    goto LABEL_19;
  }

  v121 = v77;
  v122 = v20;
  v123 = a3;
  v99 = v130;
  v100 = v131;
  if (v131 >> 14 >= v130 >> 14)
  {
    v101 = v132;
    v102 = v133;

    v103 = Substring.subscript.getter();
    v105 = v104;
    v107 = v106;
    v109 = v108;

    v110 = v103;
    v111 = v105;
    v112 = v107;
    v95 = v116;
    v96 = v117;
    v97 = v121;
    v50 = specialized SubstringSearcher.State.init(text:pattern:)(v110, v111, v112, v109, v116, v117);
    v54 = v113 & 1;
    v129 = v113 & 1;
    v138 = v99;
    v139 = v100;
    v140 = v101;
    v141 = v102;
    goto LABEL_16;
  }

LABEL_24:
  __break(1u);
  return result;
}

int *RegexRangesSequence.init(input:subjectBounds:searchBounds:regex:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t *a7@<X6>, uint64_t a8@<X8>)
{
  v16 = type metadata accessor for MEProgram(0);
  v17 = *(*(v16 - 8) + 64);
  MEMORY[0x1EEE9AC00](v16 - 8);
  v19 = &v25 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = *a7;
  Regex.Program.loweredProgram.getter(v19);

  outlined init with take of DSLTree.QuantificationKind(v19, a8, type metadata accessor for MEProgram);
  result = type metadata accessor for Executor.Matches();
  v22 = (a8 + result[7]);
  *v22 = a1;
  v22[1] = a2;
  v23 = (a8 + result[8]);
  *v23 = a3;
  v23[1] = a4;
  v24 = (a8 + result[9]);
  *v24 = a5;
  v24[1] = a6;
  return result;
}

uint64_t Regex.Program.loweredProgram.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = *v1;
  v5 = type metadata accessor for MEProgram(0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  v8 = MEMORY[0x1EEE9AC00](v5);
  v10 = &v32 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v12 = &v32 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s17_StringProcessing9MEProgramVSgMd, &_s17_StringProcessing9MEProgramVSgMR);
  v14 = *(*(v13 - 8) + 64);
  v15 = MEMORY[0x1EEE9AC00](v13 - 8);
  v17 = &v32 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v19 = &v32 - v18;
  loadProgram #1 <A>() in Regex.Program.loweredProgram.getter(v2, &v32 - v18);
  v20 = *(v6 + 48);
  if (v20(v19, 1, v5) != 1)
  {
    v12 = v19;
    return outlined init with take of DSLTree.QuantificationKind(v12, a1, type metadata accessor for MEProgram);
  }

  v32 = v4;
  v33 = a1;
  outlined destroy of SplitSequence<SubstringSearcher>(v19, &_s17_StringProcessing9MEProgramVSgMd, &_s17_StringProcessing9MEProgramVSgMR);
  v21 = v2[3];
  v22 = v2[4];
  type metadata accessor for Compiler();
  inited = swift_initStackObject();
  inited[2] = v21;
  inited[3] = &outlined read-only object #0 of Regex.Program.loweredProgram.getter;
  inited[4] = v22;

  Compiler.emit()(v12);
  v24 = *(v32 + 80);
  v25 = type metadata accessor for Regex.Program.ProgramBox();
  outlined init with copy of DSLTree._AST.AbsentFunction(v12, v10, type metadata accessor for MEProgram);
  v26 = *(v25 + 48);
  v27 = *(v25 + 52);
  v28 = swift_allocObject();
  outlined init with take of DSLTree.QuantificationKind(v10, v28 + direct field offset for Regex.Program.ProgramBox.value, type metadata accessor for MEProgram);

  v29 = 0;
  atomic_compare_exchange_strong(v2 + 2, &v29, v28);
  if (!v29)
  {

    a1 = v33;
    return outlined init with take of DSLTree.QuantificationKind(v12, a1, type metadata accessor for MEProgram);
  }

  loadProgram #1 <A>() in Regex.Program.loweredProgram.getter(v2, v17);
  v30 = v20(v17, 1, v5);
  a1 = v33;
  if (v30 != 1)
  {
    outlined destroy of MEProgram(v12, type metadata accessor for MEProgram);
    v12 = v17;
    return outlined init with take of DSLTree.QuantificationKind(v12, a1, type metadata accessor for MEProgram);
  }

  __break(1u);
  result = swift_unexpectedError();
  __break(1u);
  return result;
}

uint64_t RegexRangesSequence.Iterator.next()(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = type metadata accessor for Executor.Matches.Iterator();
  Executor.Matches.Iterator.next()(v2, &v8);
  v7 = v8;
  KeyPath = swift_getKeyPath();
  type metadata accessor for Regex.Match();
  type metadata accessor for Optional();
  CanonicalSpecializedMetadata = swift_getCanonicalSpecializedMetadata();
  _sSq3mapyqd_0_Sgqd_0_xqd__YKXEqd__YKs5ErrorRd__Ri_d_0_r0_lF(partial apply for implicit closure #1 in RegexRangesSequence.Iterator.next(), KeyPath, MEMORY[0x1E69E73E0], CanonicalSpecializedMetadata, v5, &v9);

  outlined consume of Regex<A1.RegexOutput>.Match?<A><A1>(v7, *(&v7 + 1));
  return v9;
}

void Executor.Matches.Iterator.next()(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 32);
  if (*(v2 + v4) == 1 || (v5 = v2 + *(a1 + 28), v7 = *(a1 + 16), static Executor._firstMatch(_:using:)(v2, v5, &v15), !v16))
  {
    *(a2 + 32) = 0;
    *a2 = 0u;
    *(a2 + 16) = 0u;
  }

  else
  {
    v14 = v16;
    v8 = v15;
    v9 = v17;
    v10 = v18;
    v11 = Executor.Matches.Iterator.nextSearchIndex(after:)(v17, v18, a1);
    if (v12)
    {
      *(v2 + v4) = 1;
LABEL_10:
      *a2 = v8;
      *(a2 + 8) = v14;
      *(a2 + 24) = v9;
      *(a2 + 32) = v10;
      return;
    }

    v13 = *(v5 + 80);
    if (v13 >> 14 >= v11 >> 14)
    {
      Processor.reset(currentPosition:searchBounds:)(v11, v11, v13);
      goto LABEL_10;
    }

    __break(1u);
  }
}

uint64_t _sSq3mapyqd_0_Sgqd_0_xqd__YKXEqd__YKs5ErrorRd__Ri_d_0_r0_lF@<X0>(void (*a1)(char *, char *)@<X0>, uint64_t a2@<X1>, uint64_t a3@<X3>, uint64_t a4@<X4>, uint64_t a5@<X6>, uint64_t a6@<X8>)
{
  v29 = a5;
  v30 = a2;
  v32 = a4;
  v31 = a1;
  v28 = *(a3 - 8);
  v10 = *(v28 + 64);
  v11 = (MEMORY[0x1EEE9AC00])();
  v13 = &v28 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = *(v14 + 16);
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  v18 = MEMORY[0x1EEE9AC00](v11);
  v20 = &v28 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = *(*(v21 - 8) + 64);
  MEMORY[0x1EEE9AC00](v18);
  v24 = &v28 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v25 + 16))(v24, v6);
  v26 = 1;
  if ((*(v16 + 48))(v24, 1, v15) != 1)
  {
    (*(v16 + 32))(v20, v24, v15);
    v31(v20, v13);
    (*(v16 + 8))(v20, v15);
    if (v7)
    {
      return (*(v28 + 32))(v29, v13, a3);
    }

    v26 = 0;
  }

  return (*(*(v32 - 8) + 56))(a6, v26, 1);
}

uint64_t protocol witness for IteratorProtocol.next() in conformance RegexRangesSequence<A>.Iterator@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  result = RegexRangesSequence.Iterator.next()(a1);
  *a2 = result;
  *(a2 + 8) = v4;
  *(a2 + 16) = v5 & 1;
  return result;
}

uint64_t RegexRangesSequence.makeIterator()@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *(a1 + 16);
  v4 = type metadata accessor for Executor.Matches.Iterator();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v12 - v7;
  v9 = type metadata accessor for Executor.Matches();
  v10 = Executor.Matches.makeIterator()(v9, v8);
  return (*(v5 + 32))(a2, v8, v4, v10);
}

double Executor.Matches.makeIterator()@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v6 = type metadata accessor for MEProgram(0);
  v7 = v6 - 8;
  v8 = *(*(v6 - 8) + 64);
  v9 = MEMORY[0x1EEE9AC00](v6);
  v11 = (&v35 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v9);
  v13 = &v35 - v12;
  outlined init with copy of DSLTree._AST.AbsentFunction(v3, &v35 - v12, type metadata accessor for MEProgram);
  outlined init with copy of DSLTree._AST.AbsentFunction(v3, v11, type metadata accessor for MEProgram);
  v14 = *(a1 + 32);
  v15 = (v3 + *(a1 + 28));
  v16 = *v15;
  v17 = v15[1];
  v18 = *(v3 + v14);
  v36 = *(v3 + v14 + 8);
  v37 = v16;
  v19 = (v3 + *(a1 + 36));
  v20 = *v19;
  v38 = v19[1];
  v45 = 1;
  v21 = *v11;
  v22 = (v11 + *(v7 + 56));
  v23 = v22[4];
  v49 = v22[3];
  v50 = v23;
  v24 = *v22;
  v25 = v22[2];
  v47 = v22[1];
  v48 = v25;
  v46 = v24;
  v43 = v49;
  *v44 = v23;
  v41 = v47;
  v42 = v25;
  v40 = v24;
  v26 = *(v11 + *(v7 + 60));

  outlined init with copy of Processor.Registers(&v46, &v39);

  outlined destroy of MEProgram(v11, type metadata accessor for MEProgram);
  LOBYTE(v11) = v45;
  v27 = *(a1 + 16);
  outlined init with take of DSLTree.QuantificationKind(v13, a2, type metadata accessor for MEProgram);
  v28 = type metadata accessor for Executor.Matches.Iterator();
  v29 = a2 + *(v28 + 28);
  v30 = v40;
  *(v29 + 120) = v41;
  v31 = v43;
  *(v29 + 136) = v42;
  *(v29 + 152) = v31;
  result = v44[0];
  *(v29 + 168) = *v44;
  v33 = v36;
  *v29 = v37;
  *(v29 + 8) = v17;
  *(v29 + 16) = v18;
  *(v29 + 24) = v33;
  *(v29 + 32) = 1;
  *(v29 + 48) = 0;
  *(v29 + 56) = 0;
  *(v29 + 40) = v21;
  *(v29 + 64) = v11;
  v34 = v38;
  *(v29 + 72) = v20;
  *(v29 + 80) = v34;
  *(v29 + 88) = v20;
  *(v29 + 96) = 0;
  *(v29 + 104) = v30;
  *(v29 + 184) = MEMORY[0x1E69E7CC0];
  *(v29 + 192) = v26;
  *(v29 + 200) = 0;
  *(v29 + 208) = 0;
  *(a2 + *(v28 + 32)) = 0;
  return result;
}

int *Collection<>._ranges<A>(of:subjectBounds:searchBounds:)@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X4>, uint64_t a5@<X6>, uint64_t a6@<X8>, uint64_t a7)
{
  Collection.subscript.getter();
  v13 = v16[3];
  v12 = v16[4];
  (*(a7 + 16))(v16, a5, a7);
  swift_getAssociatedTypeWitness();
  return RegexRangesSequence.init(input:subjectBounds:searchBounds:regex:)(v13, v12, a1, a2, a3, a4, v16, a6);
}

int *Collection<>._ranges<A>(of:)@<X0>(uint64_t a1@<X2>, uint64_t a2@<X4>, uint64_t a3@<X8>)
{
  dispatch thunk of Collection.startIndex.getter();
  result = dispatch thunk of Collection.endIndex.getter();
  if (v7 >> 14 < v8 >> 14)
  {
    __break(1u);
    __break(1u);
  }

  else
  {
    dispatch thunk of Collection.startIndex.getter();
    dispatch thunk of Collection.endIndex.getter();
    return Collection<>._ranges<A>(of:subjectBounds:searchBounds:)(v8, v7, v8, v7, a1, a3, a2);
  }

  return result;
}

uint64_t BidirectionalCollection<>.ranges<A>(of:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  swift_getAssociatedTypeWitness();
  v8 = type metadata accessor for RegexRangesSequence();
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x1EEE9AC00](v8);
  v10 = *(a4 + 8);
  Collection<>._ranges<A>(of:)(a3, a5, &v13 - v11);
  swift_getCanonicalSpecializedMetadata();
  swift_getWitnessTable();
  return Array.init<A>(_:)();
}

unint64_t Substring._replacingSubstring(_:with:maxReplacements:)(unint64_t result, unint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, unint64_t a10, unint64_t a11, uint64_t a12, unint64_t a13)
{
  v38 = result;
  if (a9 < 0)
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v55 = 0;
  v56 = 0xE000000000000000;
  if (a11 >> 14 < a10 >> 14)
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v13 = Substring.subscript.getter();
  v15 = v14;
  v17 = v16;
  v19 = v18;

  v20 = specialized SubstringSearcher.State.init(text:pattern:)(v13, v15, v17, v19, v38, a2);
  v36 = v22;
  v37 = v20;
  v24 = v23;
  v54 = v21 & 1;
  if (a9 && (v21 & 1) == 0)
  {
    v25 = 1;
    v26 = a10;
    while (1)
    {
      v57 = a10;
      v58 = a11;
      v59 = a12;
      v60 = a13;
      v61 = v38;
      v62 = a2;
      v63 = a3;
      v64 = a4;
      v65 = v37;
      v66 = v36;
      v67 = v24;
      v68 = 0;
      result = SubstringSearcher.nextRange(in:searchFromEnd:)(a10, a11, a12, v24, &v42);
      v27 = v43;
      v24 = v45;
      v28 = v46;
      v54 = v46;
      if (v44 == 1)
      {
        v27 = v26;
        goto LABEL_12;
      }

      if (v42 >> 14 < v26 >> 14)
      {
        break;
      }

      v29 = Substring.subscript.getter();
      MEMORY[0x193ACE8B0](v29);

      MEMORY[0x193ACE8B0](a5, a6, a7, a8);
      v30 = v25++ >= a9;
      v26 = v27;
      if ((v30 | v28))
      {
        goto LABEL_12;
      }
    }

    __break(1u);
    goto LABEL_15;
  }

  v27 = a10;
LABEL_12:
  v42 = a10;
  v43 = a11;
  v44 = a12;
  v45 = a13;
  v46 = v38;
  v47 = a2;
  v48 = a3;
  v49 = a4;
  v50 = v37;
  v51 = v36;
  v52 = v24;
  v53 = v54;
  result = outlined destroy of SubstringSearcher(&v42);
  if (a11 >> 14 >= v27 >> 14)
  {
    v31 = Substring.subscript.getter();
    MEMORY[0x193ACE8B0](v31);

    return v55;
  }

LABEL_17:
  __break(1u);
  return result;
}

unint64_t specialized Collection.subscript.getter(unint64_t result, uint64_t a2, unint64_t a3)
{
  v3 = HIBYTE(a3) & 0xF;
  if ((a3 & 0x2000000000000000) == 0)
  {
    v3 = a2 & 0xFFFFFFFFFFFFLL;
  }

  if (4 * v3 >= result >> 14)
  {
    return String.subscript.getter();
  }

  __break(1u);
  return result;
}

unint64_t specialized RangeReplaceableCollection._replacing<A, B>(_:with:maxReplacements:)(unint64_t result, unint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, unint64_t a6)
{
  if (a4 < 0)
  {
LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

  v38 = 0;
  v39 = 0xE000000000000000;
  v7 = *result;
  v6 = *(result + 8);
  v8 = v6 >> 14;
  if (v6 >> 14 >= *result >> 14)
  {
    v30 = *(result + 40);
    v31 = *(result + 32);
    v26 = *(result + 48);
    v29 = *(result + 56);
    v32 = *(result + 16);
    v33 = *(result + 24);
    result = outlined init with copy of (range: Range<String.Index>, value: Any?)?(result, &v34, &_s17_StringProcessing14RangesSequenceVyAA9ZSearcherVySsGGMd, &_s17_StringProcessing14RangesSequenceVyAA9ZSearcherVySsGGMR);
    v9 = 0;
    v10 = 15;
    v11 = v7;
    while (v8 >= v11 >> 14)
    {
      result = specialized ZSearcher.search(_:in:)(v7, v6, v32, v33, v11, v6, v31, v30, v26);
      if ((v13 & 1) != 0 || ((v14 = v12, v15 = result >> 14, result >> 14 != v12 >> 14) ? (v16 = 0, v11 = v12) : v15 != v8 ? (result = Substring.index(after:)(), v11 = result, v16 = 0) : (v11 = 0, v16 = 1), a4 == v9))
      {
        v14 = v10;
LABEL_17:

        v34 = specialized Collection.subscript.getter(v14, a5, a6);
        v35 = v20;
        v36 = v21;
        v37 = v22;
        lazy protocol witness table accessor for type Substring and conformance Substring();
        String.append<A>(contentsOf:)();

        return v38;
      }

      if (v15 < v10 >> 14)
      {
        goto LABEL_19;
      }

      v34 = String.subscript.getter();
      v35 = v17;
      v36 = v18;
      v37 = v19;
      lazy protocol witness table accessor for type Substring and conformance Substring();
      String.append<A>(contentsOf:)();

      v34 = a2;
      v35 = a3;
      result = String.append<A>(contentsOf:)();
      if (__OFADD__(v9, 1))
      {
        goto LABEL_20;
      }

      ++v9;
      v10 = v14;
      if (v16)
      {
        goto LABEL_17;
      }
    }

    __break(1u);
LABEL_19:
    __break(1u);
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

LABEL_22:
  __break(1u);
  return result;
}

uint64_t RangeReplaceableCollection._replacing<A, B>(_:with:maxReplacements:)@<X0>(char *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, void (*a5)(char *, char *, uint64_t)@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, char *a9@<X8>, uint64_t a10)
{
  v115 = a7;
  v113 = a3;
  v114 = a9;
  v99 = a2;
  v109 = a1;
  v14 = *(a7 + 8);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v83 = type metadata accessor for PartialRangeFrom();
  v82 = *(v83 - 8);
  v17 = *(v82 + 64);
  v18 = MEMORY[0x1EEE9AC00](v83);
  v81 = &v80 - v19;
  v100 = a6;
  v20 = a6;
  v21 = AssociatedTypeWitness;
  v86 = *(v20 - 8);
  v22 = *(v86 + 64);
  MEMORY[0x1EEE9AC00](v18);
  v98 = &v80 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = a4;
  v106 = swift_getAssociatedTypeWitness();
  v25 = *(*(v106 - 8) + 64);
  MEMORY[0x1EEE9AC00](v106);
  v105 = &v80 - v26;
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v101 = *(TupleTypeMetadata2 - 8);
  v27 = *(v101 + 64);
  v28 = MEMORY[0x1EEE9AC00](TupleTypeMetadata2);
  v96 = &v80 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v28);
  v95 = &v80 - v30;
  v110 = AssociatedConformanceWitness;
  v31 = type metadata accessor for Range();
  v84 = *(v31 - 8);
  v32 = *(v84 + 64);
  v33 = MEMORY[0x1EEE9AC00](v31);
  v94 = &v80 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v33);
  v36 = &v80 - v35;
  v37 = type metadata accessor for Optional();
  v38 = *(*(v37 - 8) + 64);
  v39 = MEMORY[0x1EEE9AC00](v37 - 8);
  v41 = &v80 - v40;
  v108 = *(a5 - 1);
  v42 = *(v108 + 64);
  MEMORY[0x1EEE9AC00](v39);
  v107 = (&v80 - ((v43 + 15) & 0xFFFFFFFFFFFFFFF0));
  v116 = a5;
  v117 = a8;
  v44 = swift_getAssociatedTypeWitness();
  v45 = *(*(v44 - 8) + 64);
  v46 = MEMORY[0x1EEE9AC00](v44);
  v48 = &v80 - v47;
  v49 = *(v21 - 8);
  v50 = *(v49 + 64);
  result = MEMORY[0x1EEE9AC00](v46);
  v54 = &v80 - v53;
  if (v113 < 0)
  {
LABEL_13:
    __break(1u);
LABEL_14:
    __break(1u);
  }

  else
  {
    v80 = v52;
    v90 = a10;
    v111 = result;
    v112 = v36;
    dispatch thunk of RangeReplaceableCollection.init()();
    v55 = v112;
    v104 = v14;
    dispatch thunk of Collection.startIndex.getter();
    (*(v108 + 16))(v107, v109, v116);
    v109 = v48;
    dispatch thunk of Sequence.makeIterator()();
    v56 = v111;
    v108 = swift_getAssociatedConformanceWitness();
    v107 = (v84 + 48);
    v102 = (v84 + 32);
    v103 = (v49 + 32);
    v89 = (v101 + 16);
    v88 = (v49 + 8);
    v87 = (v101 + 32);
    v101 = v84 + 8;
    v86 += 16;
    v57 = v56;
    v58 = v54;
    v59 = 0;
    v93 = v31;
    v92 = v41;
    v91 = v58;
    v85 = v24;
    while (1)
    {
      v60 = v109;
      dispatch thunk of IteratorProtocol.next()();
      if ((*v107)(v41, 1, v31) == 1)
      {
        break;
      }

      (*v102)(v55, v41, v31);
      if (v113 == v59)
      {
        goto LABEL_9;
      }

      result = dispatch thunk of static Comparable.<= infix(_:_:)();
      if ((result & 1) == 0)
      {
        __break(1u);
        goto LABEL_13;
      }

      v61 = *v103;
      v62 = v95;
      (*v103)(v95, v58, v21);
      v63 = v21;
      v64 = TupleTypeMetadata2;
      v61(&v62[*(TupleTypeMetadata2 + 48)], v55, v63);
      v65 = v96;
      (*v89)(v96, v62, v64);
      v66 = *(v64 + 48);
      v117 = v59;
      v67 = v94;
      v61(v94, v65, v63);
      v116 = v61;
      v68 = *v88;
      (*v88)(&v65[v66], v63);
      v69 = v62;
      v31 = v93;
      (*v87)(v65, v69, v64);
      v61(&v67[*(v31 + 36)], &v65[*(v64 + 48)], v63);
      v68(v65, v63);
      v70 = v114;
      dispatch thunk of Collection.subscript.getter();
      v71 = v67;
      v72 = v117;
      (*v101)(v71, v31);
      v73 = *(swift_getAssociatedConformanceWitness() + 8);
      dispatch thunk of RangeReplaceableCollection.append<A>(contentsOf:)();
      (*v86)(v98, v99, v100);
      v74 = *(v90 + 8);
      v60 = v70;
      v21 = v63;
      v58 = v91;
      v57 = v111;
      v55 = v112;
      dispatch thunk of RangeReplaceableCollection.append<A>(contentsOf:)();
      v116(v58, &v55[*(v31 + 36)], v21);
      v41 = v92;
      v75 = __OFADD__(v72, 1);
      v59 = v72 + 1;
      if (v75)
      {
        __break(1u);
LABEL_9:
        (*v101)(v55, v31);
        break;
      }
    }

    (*(v80 + 8))(v60, v57);
    v76 = *(v110 + 8);
    result = dispatch thunk of static Equatable.== infix(_:_:)();
    if ((result & 1) == 0)
    {
      goto LABEL_14;
    }

    v77 = v81;
    (*v103)(v81, v58, v21);
    v78 = v83;
    swift_getWitnessTable();
    Collection.subscript.getter();
    (*(v82 + 8))(v77, v78);
    v79 = *(swift_getAssociatedConformanceWitness() + 8);
    return dispatch thunk of RangeReplaceableCollection.append<A>(contentsOf:)();
  }

  return result;
}

uint64_t RangeReplaceableCollection<>.replacing<A, B>(_:with:subrange:maxReplacements:)@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, char *a9@<X8>, uint64_t a10, uint64_t a11, uint64_t a12)
{
  v13 = v12;
  v250 = a4;
  v240 = a3;
  v251 = a9;
  v244 = a8;
  v19 = *(a8 + 8);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v239 = *(AssociatedTypeWitness - 8);
  v21 = *(v239 + 64);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v237 = &v229 - v22;
  v238 = v19;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v241 = AssociatedTypeWitness;
  v234 = AssociatedConformanceWitness;
  type metadata accessor for ZSearcher();
  swift_getWitnessTable();
  v236 = type metadata accessor for RangesSequence();
  v235 = *(v236 - 8);
  v24 = *(v235 + 64);
  MEMORY[0x1EEE9AC00](v236);
  v26 = &v229 - v25;
  TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
  v233 = *(TupleTypeMetadata3 - 8);
  v28 = *(v233 + 64);
  v29 = MEMORY[0x1EEE9AC00](TupleTypeMetadata3);
  v31 = &v229 - v30;
  v32 = *(v29 + 48);
  v232 = v29;
  v33 = *(v29 + 64);
  v249 = *(a5 - 8);
  v34 = *(v249 + 16);
  v245 = v13;
  v34(&v229 - v30, v13, a5);
  v248 = *(a6 - 8);
  v35 = *(v248 + 16);
  v242 = a1;
  v35(&v31[v32], a1, a6);
  v247 = *(a7 - 8);
  v36 = *(v247 + 16);
  v243 = a2;
  v36(&v31[v33], a2, a7);
  v37 = swift_dynamicCast();
  v254 = v33;
  v255 = a7;
  v253 = v32;
  if (v37)
  {
    if (swift_dynamicCast())
    {
      if (swift_dynamicCast())
      {
        v246 = a6;
        v231 = a5;
        v252 = String.subscript.getter();
        v245 = v38;
        v244 = v39;
        v243 = v40;

        v242 = String.subscript.getter();
        v42 = v41;
        v44 = v43;
        v46 = v45;

        v47 = String.subscript.getter();
        v49 = v48;
        v51 = v50;
        v53 = v52;

        v54 = v51;
        v55 = v231;
        v56 = Substring._replacingSubstring(_:with:maxReplacements:)(v242, v42, v44, v46, v47, v49, v54, v53, v250, v252, v245, v244, v243);
        v58 = v57;

        v256 = v56;
        v257 = v58;
        swift_dynamicCast();
        (*(v247 + 8))(&v31[v254], v255);
LABEL_50:
        (*(v248 + 8))(&v31[v253], v246);
        v223 = &v272;
        return (*(*(v223 - 32) + 8))(v31, v55);
      }
    }

    else
    {
    }
  }

  v59 = swift_dynamicCast();
  v252 = v31;
  if (v59)
  {
    v60 = v268;
    v61 = v269;
    v63 = v270;
    v62 = v271;
    if (swift_dynamicCast())
    {
      v246 = a6;
      v231 = a5;
      v64 = v264;
      v65 = v265;
      v66 = v267;
      v230 = v266;
      v67 = v255;
      if (swift_dynamicCast())
      {
        Substring._replacingSubstring(_:with:maxReplacements:)(v64, v65, v230, v66, v260, v261, v262, v263, v250, v60, v61, v63, v62);

        v68 = String.subscript.getter();
        v70 = v69;
        v72 = v71;
        v73 = v67;
        v75 = v74;

        v256 = v68;
        v257 = v70;
        v258 = v72;
        v259 = v75;
        v55 = v231;
        swift_dynamicCast();
        (*(v247 + 8))(&v31[v254], v73);
        goto LABEL_50;
      }

      a5 = v231;
      a6 = v246;
    }

    if (swift_dynamicCast())
    {
      result = swift_dynamicCast();
      if (result)
      {
        v246 = a6;
        v231 = a5;
        if (v61 >> 14 >= v60 >> 14)
        {
          v245 = Substring.subscript.getter();
          v244 = v77;
          v243 = v78;
          v80 = v79;

          v242 = String.subscript.getter();
          v82 = v81;
          v84 = v83;
          v86 = v85;

          v87 = String.subscript.getter();
          v89 = v88;
          v91 = v90;
          v93 = v92;

          Substring._replacingSubstring(_:with:maxReplacements:)(v242, v82, v84, v86, v87, v89, v91, v93, v250, v245, v244, v243, v80);

          v94 = String.subscript.getter();
          v96 = v95;
          v98 = v97;
          v100 = v99;

          v264 = v94;
          v265 = v96;
          v266 = v98;
          v267 = v100;
LABEL_48:
          v55 = v231;
          goto LABEL_49;
        }

LABEL_58:
        __break(1u);
        goto LABEL_59;
      }
    }

    else
    {
    }
  }

  if (!swift_dynamicCast())
  {
LABEL_30:
    if (swift_dynamicCast())
    {
      v147 = v268;
      v148 = v269;
      if (swift_dynamicCast())
      {
        result = swift_dynamicCast();
        if (result)
        {
          v246 = a6;
          if (v148 >> 14 >= v147 >> 14)
          {
            v149 = a5;
            v150 = v264;
            v151 = v265;
            v242 = v266;
            v245 = Substring.subscript.getter();
            v244 = v152;
            v243 = v153;
            v155 = v154;

            v156 = String.subscript.getter();
            v158 = v157;
            v241 = v159;
            v161 = v160;

            if (v151 >> 14 >= v150 >> 14)
            {
              v162 = Substring.subscript.getter();
              v164 = v163;
              v166 = v165;
              v168 = v167;

              Substring._replacingSubstring(_:with:maxReplacements:)(v156, v158, v241, v161, v162, v164, v166, v168, v250, v245, v244, v243, v155);

              v169 = String.subscript.getter();
              v171 = v170;
              v173 = v172;
              v175 = v174;

              v260 = v169;
              v261 = v171;
              v262 = v173;
              v263 = v175;
              v55 = v149;
LABEL_49:
              swift_dynamicCast();
              v31 = v252;
              (*(v247 + 8))(&v252[v254], v255);
              goto LABEL_50;
            }

            goto LABEL_61;
          }

LABEL_60:
          __break(1u);
LABEL_61:
          __break(1u);
          goto LABEL_62;
        }
      }

      if (swift_dynamicCast())
      {
        v198 = v264;
        v230 = v265;
        v229 = v266;
        result = swift_dynamicCast();
        if (result)
        {
          v246 = a6;
          v231 = a5;
          if (v148 >> 14 >= v147 >> 14)
          {
            v245 = Substring.subscript.getter();
            v244 = v199;
            v243 = v200;
            v202 = v201;

            if (v230 >> 14 >= v198 >> 14)
            {
              v203 = Substring.subscript.getter();
              v205 = v204;
              v242 = v206;
              v208 = v207;

              v209 = String.subscript.getter();
              v211 = v210;
              v213 = v212;
              v215 = v214;

              Substring._replacingSubstring(_:with:maxReplacements:)(v203, v205, v242, v208, v209, v211, v213, v215, v250, v245, v244, v243, v202);

              v216 = String.subscript.getter();
              v218 = v217;
              v220 = v219;
              v222 = v221;

              v260 = v216;
              v261 = v218;
              v262 = v220;
              v263 = v222;
              goto LABEL_48;
            }

            goto LABEL_63;
          }

LABEL_62:
          __break(1u);
LABEL_63:
          __break(1u);
          goto LABEL_64;
        }
      }
    }

    v224 = a5;
    v225 = v237;
    dispatch thunk of Collection.subscript.getter();
    v226 = v241;
    Collection<>._ranges<A>(of:)(v242, v241, a6, v234, a10, a12, v26);
    (*(v239 + 8))(v225, v226);
    v227 = v236;
    WitnessTable = swift_getWitnessTable();
    RangeReplaceableCollection._replacing<A, B>(_:with:maxReplacements:)(v26, v243, v250, v224, v227, v255, v244, WitnessTable, v251, a11);
    (*(v235 + 8))(v26, v227);
    v55 = v232;
    v31 = v252;
    v223 = &v265;
    return (*(*(v223 - 32) + 8))(v31, v55);
  }

  if (swift_dynamicCast())
  {
    v102 = v268;
    v101 = v269;
    if (swift_dynamicCast())
    {
      v246 = a6;
      v231 = a5;
      v245 = String.subscript.getter();
      v244 = v103;
      v243 = v104;
      v106 = v105;

      if (v101 >> 14 >= v102 >> 14)
      {
        v107 = Substring.subscript.getter();
        v109 = v108;
        v111 = v110;
        v113 = v112;

        v114 = String.subscript.getter();
        v116 = v115;
        v118 = v117;
        v120 = v119;

        v121 = Substring._replacingSubstring(_:with:maxReplacements:)(v107, v109, v111, v113, v114, v116, v118, v120, v250, v245, v244, v243, v106);
        v123 = v122;

        v256 = v121;
        v257 = v123;
        goto LABEL_48;
      }

      __break(1u);
      goto LABEL_58;
    }
  }

  if (!swift_dynamicCast())
  {

    goto LABEL_30;
  }

  v124 = v268;
  v125 = v269;
  v126 = v270;
  v230 = v271;
  if (swift_dynamicCast())
  {
    v245 = v126;
    v246 = a6;
    v231 = a5;
    v244 = String.subscript.getter();
    v243 = v127;
    v242 = v128;
    v130 = v129;

    v131 = String.subscript.getter();
    v133 = v132;
    v135 = v134;
    v137 = v136;

    if (v125 >> 14 < v124 >> 14)
    {
LABEL_59:
      __break(1u);
      goto LABEL_60;
    }

    v138 = Substring.subscript.getter();
    v140 = v139;
    v142 = v141;
    v144 = v143;

    v145 = Substring._replacingSubstring(_:with:maxReplacements:)(v131, v133, v135, v137, v138, v140, v142, v144, v250, v244, v243, v242, v130);
LABEL_40:
    v196 = v145;
    v197 = v146;

    v256 = v196;
    v257 = v197;
    goto LABEL_48;
  }

  if (!swift_dynamicCast())
  {

    goto LABEL_30;
  }

  v246 = a6;
  v231 = a5;
  v177 = v264;
  v176 = v265;
  v245 = String.subscript.getter();
  v244 = v178;
  v243 = v179;
  v181 = v180;

  if (v176 >> 14 < v177 >> 14)
  {
LABEL_64:
    __break(1u);
    goto LABEL_65;
  }

  v182 = Substring.subscript.getter();
  v184 = v183;
  v186 = v185;
  v188 = v187;

  if (v125 >> 14 >= v124 >> 14)
  {
    v189 = Substring.subscript.getter();
    v191 = v190;
    v193 = v192;
    v195 = v194;

    v145 = Substring._replacingSubstring(_:with:maxReplacements:)(v182, v184, v186, v188, v189, v191, v193, v195, v250, v245, v244, v243, v181);
    goto LABEL_40;
  }

LABEL_65:
  __break(1u);
  return result;
}

uint64_t RangeReplaceableCollection<>.replacing<A, B>(_:with:maxReplacements:)@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, char *a9@<X8>, uint64_t a10, uint64_t a11)
{
  v55 = a8;
  v56 = a3;
  v58 = a5;
  v59 = a6;
  v53 = a1;
  v54 = a2;
  v52 = a9;
  v60 = a7;
  v13 = *(a7 + 8);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v51 = *(TupleTypeMetadata2 - 8);
  v15 = *(v51 + 64);
  v16 = MEMORY[0x1EEE9AC00](TupleTypeMetadata2);
  v46 = &v40 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = MEMORY[0x1EEE9AC00](v16);
  v47 = &v40 - v19;
  v50 = *(AssociatedTypeWitness - 8);
  v20 = *(v50 + 64);
  v21 = MEMORY[0x1EEE9AC00](v18);
  v23 = &v40 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v21);
  v25 = &v40 - v24;
  swift_getAssociatedConformanceWitness();
  v26 = type metadata accessor for Range();
  v48 = *(v26 - 8);
  v27 = *(v48 + 64);
  MEMORY[0x1EEE9AC00](v26);
  v29 = &v40 - v28;
  dispatch thunk of Collection.startIndex.getter();
  v57 = a4;
  dispatch thunk of Collection.endIndex.getter();
  result = dispatch thunk of static Comparable.<= infix(_:_:)();
  if (result)
  {
    v44 = a10;
    v45 = a11;
    v43 = v11;
    v31 = v50;
    v32 = *(v50 + 32);
    v33 = v47;
    v32(v47, v25, AssociatedTypeWitness);
    v42 = v26;
    v34 = TupleTypeMetadata2;
    v32(&v33[*(TupleTypeMetadata2 + 48)], v23, AssociatedTypeWitness);
    v35 = v51;
    v36 = v46;
    (*(v51 + 16))(v46, v33, v34);
    v41 = *(v34 + 48);
    v32(v29, v36, AssociatedTypeWitness);
    v37 = *(v31 + 8);
    v37(&v36[v41], AssociatedTypeWitness);
    (*(v35 + 32))(v36, v33, v34);
    v38 = *(v34 + 48);
    v39 = v42;
    v32(&v29[*(v42 + 36)], &v36[v38], AssociatedTypeWitness);
    v37(v36, AssociatedTypeWitness);
    RangeReplaceableCollection<>.replacing<A, B>(_:with:subrange:maxReplacements:)(v53, v54, v29, v56, v57, v58, v59, v60, v52, v55, v44, v45);
    return (*(v48 + 8))(v29, v39);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t RangeReplaceableCollection<>.replace<A, B>(_:with:maxReplacements:)(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  v68 = a8;
  v69 = a3;
  v71 = a5;
  v72 = a6;
  v66 = a1;
  v67 = a2;
  v56 = a7;
  v12 = *(a7 + 8);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v15 = *(TupleTypeMetadata2 - 8);
  v64 = TupleTypeMetadata2;
  v65 = v15;
  v16 = *(v15 + 64);
  v17 = MEMORY[0x1EEE9AC00](TupleTypeMetadata2);
  v61 = &v50 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = MEMORY[0x1EEE9AC00](v17);
  v60 = &v50 - v20;
  v58 = *(AssociatedTypeWitness - 8);
  v21 = *(v58 + 64);
  v22 = MEMORY[0x1EEE9AC00](v19);
  v24 = &v50 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v22);
  v26 = &v50 - v25;
  swift_getAssociatedConformanceWitness();
  v27 = type metadata accessor for Range();
  v62 = *(v27 - 8);
  v28 = *(v62 + 64);
  v29 = MEMORY[0x1EEE9AC00](v27);
  v31 = &v50 - v30;
  v32 = *(a4 - 8);
  v33 = v32[8];
  MEMORY[0x1EEE9AC00](v29);
  v35 = v32[2];
  v57 = &v50 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  v35();
  dispatch thunk of Collection.startIndex.getter();
  dispatch thunk of Collection.endIndex.getter();
  v36 = v32[1];
  v70 = v10;
  v63 = a4;
  v59 = v32 + 1;
  v36(v10, a4);
  result = dispatch thunk of static Comparable.<= infix(_:_:)();
  if (result)
  {
    v53 = a9;
    v54 = a10;
    v52 = v27;
    v38 = v58;
    v39 = *(v58 + 32);
    v40 = v60;
    v41 = v26;
    v42 = AssociatedTypeWitness;
    v39(v60, v41, AssociatedTypeWitness);
    v55 = v36;
    v43 = v64;
    v39(&v40[*(v64 + 48)], v24, AssociatedTypeWitness);
    v44 = v65;
    v45 = v61;
    (*(v65 + 16))(v61, v40, v43);
    v51 = *(v43 + 48);
    v39(v31, v45, v42);
    v46 = *(v38 + 8);
    v46(&v45[v51], v42);
    (*(v44 + 32))(v45, v40, v43);
    v47 = v52;
    v39(&v31[*(v52 + 36)], &v45[*(v43 + 48)], v42);
    v46(v45, v42);
    v48 = v63;
    v49 = v57;
    RangeReplaceableCollection<>.replacing<A, B>(_:with:subrange:maxReplacements:)(v66, v67, v31, v69, v63, v71, v72, v56, v70, v68, v53, v54);
    (*(v62 + 8))(v31, v47);
    return v55(v49, v48);
  }

  else
  {
    __break(1u);
  }

  return result;
}

unint64_t specialized RangeReplaceableCollection<>._replacing<A, B>(_:with:maxReplacements:)(uint64_t a1, unint64_t a2, unint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, unint64_t a7)
{
  v14 = String.subscript.getter();
  specialized Collection<>._ranges<A>(of:)(a1, a2, v14, v15, v16, v17, &v20);

  v25[0] = v20;
  v25[1] = v21;
  v25[2] = v22;
  v25[3] = v23;
  v18 = specialized RangeReplaceableCollection._replacing<A, B>(_:with:maxReplacements:)(v25, a3, a4, a5, a6, a7);
  v24[0] = v20;
  v24[1] = v21;
  v24[2] = v22;
  v24[3] = v23;
  outlined destroy of SplitSequence<SubstringSearcher>(v24, &_s17_StringProcessing14RangesSequenceVyAA9ZSearcherVySsGGMd, &_s17_StringProcessing14RangesSequenceVyAA9ZSearcherVySsGGMR);
  return v18;
}

uint64_t RangeReplaceableCollection<>.replacing<A, B>(_:with:subrange:maxReplacements:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, char *a9@<X8>, uint64_t a10, uint64_t a11, uint64_t a12)
{
  v27 = a3;
  v28 = a4;
  v30 = a9;
  v31 = a2;
  v26 = a1;
  v25 = a12;
  v29 = a8;
  swift_getAssociatedTypeWitness();
  v15 = type metadata accessor for RegexRangesSequence();
  v16 = *(v15 - 1);
  v17 = *(v16 + 64);
  MEMORY[0x1EEE9AC00](v15);
  v19 = &v24 - v18;
  v20 = *(a10 + 8);
  dispatch thunk of Collection.startIndex.getter();
  v21 = v33;
  result = dispatch thunk of Collection.endIndex.getter();
  if (v32 >> 14 < v21 >> 14)
  {
    __break(1u);
  }

  else
  {
    v24 = a10;
    Collection<>._ranges<A>(of:subjectBounds:searchBounds:)(v21, v32, v27, v28, v29, v19, v25);
    WitnessTable = swift_getWitnessTable();
    RangeReplaceableCollection._replacing<A, B>(_:with:maxReplacements:)(v19, v31, a5, a6, v15, a7, v24, WitnessTable, v30, a11);
    return (*(v16 + 8))(v19, v15);
  }

  return result;
}

uint64_t RangeReplaceableCollection<>.replacing<A, B>(_:with:maxReplacements:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, char *a9@<X8>, uint64_t a10)
{
  v17 = *(a7 + 8);
  dispatch thunk of Collection.startIndex.getter();
  result = dispatch thunk of Collection.endIndex.getter();
  if (v21 >> 14 >= v22 >> 14)
  {
    return RangeReplaceableCollection<>.replacing<A, B>(_:with:subrange:maxReplacements:)(a1, a2, v22, v21, a3, a4, a5, a6, a9, a7, a8, a10);
  }

  __break(1u);
  return result;
}

uint64_t RangeReplaceableCollection<>.replace<A, B>(_:with:maxReplacements:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v22 = a7;
  v23 = a8;
  v16 = *(a4 - 8);
  v17 = *(v16 + 64);
  MEMORY[0x1EEE9AC00](a1);
  v19 = &v22 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v16 + 32))(v19, v9, v20);
  RangeReplaceableCollection<>.replacing<A, B>(_:with:maxReplacements:)(a1, a2, a3, a4, a5, a6, v22, v23, v9, a9);
  return (*(v16 + 8))(v19, a4);
}

uint64_t SplitSequence.init(input:searcher:maxSplits:omittingEmptySubsequences:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char a4@<W3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  Collection._ranges<A>(of:)(a2, a5, a6);
  (*(*(a5 - 8) + 8))(a2, a5);
  (*(*(AssociatedTypeWitness - 8) + 8))(a1, AssociatedTypeWitness);
  result = type metadata accessor for SplitSequence();
  *(a6 + *(result + 36)) = a3;
  *(a6 + *(result + 40)) = a4;
  return result;
}

uint64_t SplitSequence.Iterator.init(ranges:maxSplits:omittingEmptySubsequences:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char a3@<W2>, uint64_t a4@<X8>)
{
  v8 = type metadata accessor for SplitSequence.Iterator();
  *(a4 + v8[11]) = 0;
  *(a4 + v8[13]) = 0;
  v9 = v8[9];
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  dispatch thunk of Collection.startIndex.getter();
  v10 = type metadata accessor for RangesSequence();
  RangesSequence.makeIterator()(v10, a4);
  result = (*(*(v10 - 8) + 8))(a1, v10);
  *(a4 + v8[10]) = a2;
  *(a4 + v8[12]) = a3;
  return result;
}

void specialized SplitSequence.Iterator.next()()
{
  if (*(v0 + 185))
  {
    return;
  }

  v1 = v0[20];
  v52 = v0[1];
  v2 = v52 >> 14;
  if (v1 >> 14 == v52 >> 14)
  {
    *(v0 + 185) = 1;
    if ((v0[23] & 1) == 0)
    {
      v3 = v0[2];
      v4 = v0[3];
      v5 = *v0;
      Substring.subscript.getter();
    }

    return;
  }

  v6 = v0[22];
  if (v6 >= v0[21])
  {
    *(v0 + 185) = 1;
    if (v2 >= v1 >> 14)
    {
      v12 = v0;
      v13 = v0[3];
      v14 = v12[2];
      v15 = *v12;

      Substring.subscript.getter();

      return;
    }

LABEL_63:
    __break(1u);
LABEL_64:
    __break(1u);
LABEL_65:
    __break(1u);
    return;
  }

  v7 = *v0;
  v8 = v0[3];
  v55 = v0[2];
  v9 = *(v0 + 5);
  v65 = *(v0 + 4);
  v66 = v9;
  v67[0] = *(v0 + 6);
  *(v67 + 9) = *(v0 + 105);
  v10 = *(v0 + 3);
  v63 = *(v0 + 2);
  v64 = v10;
  if (v0[19])
  {
LABEL_8:
    v11 = v1;
LABEL_52:
    *(v0 + 185) = 1;
    if (v11 >> 14 == v2 && (v0[23] & 1) != 0)
    {
      return;
    }

    if (v2 >= v11 >> 14)
    {

      Substring.subscript.getter();

      return;
    }

    goto LABEL_64;
  }

  v46 = v6;
  v17 = *(&v67[0] + 1);
  v16 = *&v67[0];
  v51 = v67[0] + __PAIR128__(-1, 0);
  v18 = __OFSUB__(*(&v67[0] + 1), 1);
  v49 = v18;
  v58 = v65 >> 14;
  v54 = v7 >> 14;
  v19 = v0[18];
  v48 = v0;
  v47 = *(&v67[0] + 1);
  while (1)
  {
    if (!v17)
    {
      if (v2 == v19 >> 14)
      {
        v41 = 0;
        v42 = 1;
        v53 = v19;
      }

      else
      {
        v45 = v19;
        v41 = Substring.index(after:)();
        v19 = v45;
        v42 = 0;
        v53 = v45;
      }

LABEL_48:
      v43 = v19;
      v0[18] = v41;
      *(v0 + 152) = v42 & 1;
      v19 = v41;
      goto LABEL_49;
    }

    if (*(v16 + 16))
    {
      v50 = v1;
      if (v49)
      {
LABEL_61:
        __break(1u);
LABEL_62:
        __break(1u);
        goto LABEL_63;
      }

      v20 = v19;
      v21 = v55;
      while (1)
      {
        v53 = v20;
        v22 = v21;
        v23 = v8;
        v24 = Substring.index(before:)();
        v25 = Substring.index(before:)() >> 14;
        if (v25 >= v58)
        {
          break;
        }

        v26 = *(&v51 + 1);
        v8 = v23;
        v21 = v22;
LABEL_33:
        v34 = Substring.subscript.getter();
        if (*(v16 + 16))
        {
          v36 = specialized __RawDictionaryStorage.find<A>(_:)(v34, v35);
          v38 = v37;

          if (v38)
          {
            v39 = *(*(v16 + 56) + 8 * v36);
          }

          else
          {
            v39 = 0;
          }
        }

        else
        {

          v39 = 0;
        }

        if (__OFSUB__(v26, v39))
        {
LABEL_60:
          __break(1u);
          goto LABEL_61;
        }

        v20 = Substring.index(_:offsetBy:limitedBy:)();
        if (v40)
        {
          v2 = v52 >> 14;
          v0 = v48;
          v48[18] = v20;
          *(v48 + 152) = 1;
          v11 = v50;
          goto LABEL_52;
        }
      }

      v57 = *(&v51 + 1);
      while (1)
      {
        v27 = Substring.subscript.getter();
        v29 = v28;
        v56 = v24;
        v30 = v7;
        if (v27 == Substring.subscript.getter() && v29 == v31)
        {
        }

        else
        {
          v32 = _stringCompareWithSmolCheck(_:_:expecting:)();

          if ((v32 & 1) == 0)
          {
            v8 = v23;
            v21 = v55;
            v7 = v30;
            v16 = v51;
            goto LABEL_32;
          }
        }

        if (__OFSUB__(v57--, 1))
        {
          __break(1u);
LABEL_59:
          __break(1u);
          goto LABEL_60;
        }

        v8 = v23;
        v7 = v30;
        if (v25 == v58)
        {
          break;
        }

        if (v54 >= v56 >> 14)
        {
          goto LABEL_59;
        }

        v24 = Substring.index(before:)();
        v25 = Substring.index(before:)() >> 14;
        if (v25 < v58)
        {
          v16 = v51;
          v8 = v23;
          v21 = v55;
LABEL_32:
          v26 = v57;
          goto LABEL_33;
        }
      }

      if (v53 >> 14 < v56 >> 14)
      {
        goto LABEL_62;
      }

      v17 = v47;
      v41 = Substring.index(_:offsetBy:limitedBy:)();
      v2 = v52 >> 14;
      v0 = v48;
      v1 = v50;
      v16 = v51;
      v19 = v56;
      goto LABEL_48;
    }

    SubstringSearcher.nextRangeNaive(in:searchFromEnd:)(v7, v52, v59);
    v43 = v59[0];
    v53 = v59[1];
    v44 = v60;
    v19 = v61;
    v42 = v62;
    v0[18] = v61;
    *(v0 + 152) = v42;
    if (v44)
    {
      goto LABEL_8;
    }

LABEL_49:
    if (*(v0 + 184) != 1 || (v43 ^ v1) >= 0x4000)
    {
      break;
    }

    v11 = v53;
    v0[20] = v53;
    v1 = v53;
    if (v42)
    {
      goto LABEL_52;
    }
  }

  v0[22] = v46 + 1;
  if (v43 >> 14 < v1 >> 14)
  {
    goto LABEL_65;
  }

  Substring.subscript.getter();
  v0[20] = v53;
}

uint64_t SplitSequence.Iterator.next()@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v111 = a2;
  v6 = *(a1 + 16);
  v5 = *(a1 + 24);
  swift_getAssociatedTypeWitness();
  v112 = v6;
  v113 = v5;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v97 = *(TupleTypeMetadata2 - 8);
  v9 = *(v97 + 64);
  v10 = MEMORY[0x1EEE9AC00](TupleTypeMetadata2);
  v98 = &v79 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v96 = &v79 - v12;
  v13 = swift_getAssociatedConformanceWitness();
  v14 = type metadata accessor for Range();
  v15 = type metadata accessor for Optional();
  v94 = *(v15 - 8);
  v95 = v15;
  v16 = *(v94 + 64);
  v17 = MEMORY[0x1EEE9AC00](v15);
  v19 = &v79 - v18;
  v102 = *(v14 - 8);
  v20 = *(v102 + 64);
  v21 = MEMORY[0x1EEE9AC00](v17);
  v101 = &v79 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = MEMORY[0x1EEE9AC00](v21);
  v25 = &v79 - v24;
  v109 = *(AssociatedTypeWitness - 8);
  v26 = v109[8];
  MEMORY[0x1EEE9AC00](v23);
  v28 = &v79 - v27;
  v29 = swift_checkMetadataState();
  v30 = *(*(v29 - 8) + 64);
  MEMORY[0x1EEE9AC00](v29);
  v34 = &v79 - v33;
  if (*(v3 + *(a1 + 52)))
  {
    v35 = swift_getAssociatedTypeWitness();
    v36 = *(*(v35 - 8) + 56);
    v37 = v35;
    v38 = v111;

    return v36(v38, 1, 1, v37);
  }

  v91 = v25;
  v92 = v14;
  v40 = *(a1 + 36);
  v100 = v13;
  v41 = v31;
  v42 = v32;
  v43 = swift_getAssociatedTypeWitness();
  v44 = *(v43 - 8);
  v45 = *(v44 + 16);
  v90 = v43;
  v89 = v45;
  v88 = v44 + 16;
  (v45)(v34, v3);
  v87 = AssociatedConformanceWitness;
  dispatch thunk of Collection.endIndex.getter();
  v46 = *(v42 + 8);
  v93 = v34;
  v86 = v41;
  v85 = v42 + 8;
  v46(v34, v41);
  v47 = *(v100 + 8);
  v110 = v40;
  v108 = v47;
  v48 = dispatch thunk of static Equatable.== infix(_:_:)();
  v49 = v109 + 1;
  v50 = v109[1];
  v50(v28, AssociatedTypeWitness);
  if (v48)
  {
LABEL_6:
    v51 = v111;
    v52 = v3;
    return finish #1 <A>() in SplitSequence.Iterator.next()(v52, v51);
  }

  v53 = *(a1 + 44);
  v51 = v111;
  if (*(v3 + v53) >= *(v3 + *(a1 + 40)))
  {
    v52 = v3;
    return finish #1 <A>() in SplitSequence.Iterator.next()(v52, v51);
  }

  v83 = *(v3 + v53);
  v84 = v53;
  v80 = v50;
  v81 = v49;
  v82 = v46;
  v103 = a1;
  v54 = type metadata accessor for RangesSequence.Iterator();
  v55 = *(v54 + 24);
  v106 = *(v54 + 16);
  v107 = v54;
  v56 = type metadata accessor for RangesSequence();
  v104 = *(v55 + 40);
  v105 = v56;
  v57 = (v102 + 48);
  v58 = (v102 + 32);
  v102 += 8;
  v59 = v92;
  for (i = v91; ; (*v102)(i, v59))
  {
    v61 = v3 + *(v105 + 36);
    v104(v3, v3 + *(v107 + 36), v106, v55);
    if ((*v57)(v19, 1, v59) == 1)
    {
      (*(v94 + 8))(v19, v95);
      goto LABEL_6;
    }

    (*v58)(i, v19, v59);
    if (*(v3 + *(v103 + 48)) != 1 || (dispatch thunk of static Equatable.== infix(_:_:)() & 1) == 0)
    {
      break;
    }

    $defer #1 <A>() in SplitSequence.Iterator.next()(v3, i);
  }

  *(v3 + v84) = v83 + 1;
  v89(v93, v3, v90);
  v62 = v110;
  result = dispatch thunk of static Comparable.<= infix(_:_:)();
  if (result)
  {
    v63 = v109[2];
    v64 = v96;
    v63(v96, &v62[v3], AssociatedTypeWitness);
    v65 = TupleTypeMetadata2;
    v63(&v64[*(TupleTypeMetadata2 + 48)], i, AssociatedTypeWitness);
    v67 = v97;
    v66 = v98;
    (*(v97 + 16))(v98, v64, v65);
    v68 = *(v65 + 48);
    v69 = v109[4];
    v109 += 4;
    v110 = v69;
    (v69)(v101, v66, AssociatedTypeWitness);
    v70 = &v66[v68];
    v71 = v80;
    v80(v70, AssociatedTypeWitness);
    (*(v67 + 32))(v66, v64, v65);
    v72 = v101;
    (v110)(&v101[*(v59 + 36)], &v66[*(v65 + 48)], AssociatedTypeWitness);
    v71(v66, AssociatedTypeWitness);
    v73 = v111;
    v74 = v72;
    v75 = v93;
    v76 = v86;
    dispatch thunk of Collection.subscript.getter();
    v77 = *v102;
    (*v102)(v74, v59);
    v82(v75, v76);
    v78 = swift_getAssociatedTypeWitness();
    (*(*(v78 - 8) + 56))(v73, 0, 1, v78);
    $defer #1 <A>() in SplitSequence.Iterator.next()(v3, i);
    return (v77)(i, v59);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t finish #1 <A>() in SplitSequence.Iterator.next()@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v57 = a2;
  swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v59 = swift_getAssociatedConformanceWitness();
  v4 = type metadata accessor for PartialRangeFrom();
  v45 = *(v4 - 8);
  v46 = v4;
  v5 = *(v45 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v56 = &v44 - v6;
  v60 = swift_checkMetadataState();
  v62 = *(v60 - 8);
  v7 = *(v62 + 64);
  MEMORY[0x1EEE9AC00](v60);
  v9 = &v44 - v8;
  v10 = type metadata accessor for SplitSequence.Iterator();
  v11 = *(v10 - 8);
  v12 = v11[8];
  v13 = MEMORY[0x1EEE9AC00](v10);
  v15 = &v44 - v14;
  v16 = *(AssociatedTypeWitness - 8);
  v17 = v16[8];
  v18 = MEMORY[0x1EEE9AC00](v13);
  v20 = &v44 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = MEMORY[0x1EEE9AC00](v18);
  v23 = &v44 - v22;
  *(a1 + *(v21 + 52)) = 1;
  v24 = v16[2];
  v51 = *(v21 + 36);
  v52 = v24;
  v58 = a1;
  v53 = v16 + 2;
  v24(&v44 - v22, a1 + v51, AssociatedTypeWitness);
  v50 = v11[2];
  v50(v15, a1, v10);
  v26 = *(v10 + 16);
  v25 = *(v10 + 24);
  v27 = swift_getAssociatedTypeWitness();
  v28 = *(v27 - 8);
  v29 = *(v28 + 16);
  v48 = v28 + 16;
  v49 = v29;
  v29(v9, v15, v27);
  v30 = v11[1];
  v54 = v11 + 1;
  v47 = v30;
  v30(v15, v10);
  v31 = v60;
  dispatch thunk of Collection.endIndex.getter();
  v32 = *(v62 + 8);
  v55 = v9;
  v62 += 8;
  v44 = v32;
  v32(v9, v31);
  v59 = *(v59 + 8);
  LOBYTE(v9) = dispatch thunk of static Equatable.== infix(_:_:)();
  v33 = v16[1];
  v34 = v20;
  v35 = v58;
  v33(v34, AssociatedTypeWitness);
  v33(v23, AssociatedTypeWitness);
  if (v9 & 1) != 0 && (*(v35 + *(v10 + 48)))
  {
    v36 = 1;
    v37 = v57;
LABEL_6:
    v43 = swift_getAssociatedTypeWitness();
    return (*(*(v43 - 8) + 56))(v37, v36, 1, v43);
  }

  v50(v15, v35, v10);
  v38 = v55;
  v49(v55, v15, v27);
  v47(v15, v10);
  v39 = v56;
  v52(v56, v35 + v51, AssociatedTypeWitness);
  result = dispatch thunk of static Equatable.== infix(_:_:)();
  if (result)
  {
    v41 = v46;
    swift_getWitnessTable();
    v37 = v57;
    v42 = v60;
    Collection.subscript.getter();
    (*(v45 + 8))(v39, v41);
    v44(v38, v42);
    v36 = 0;
    goto LABEL_6;
  }

  __break(1u);
  return result;
}

uint64_t $defer #1 <A>() in SplitSequence.Iterator.next()(uint64_t a1, uint64_t a2)
{
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  v5 = *(type metadata accessor for Range() + 36);
  v6 = type metadata accessor for SplitSequence.Iterator();
  v7 = *(*(AssociatedTypeWitness - 8) + 24);
  v8 = a1 + *(v6 + 36);

  return v7(v8, a2 + v5, AssociatedTypeWitness);
}

uint64_t SplitSequence.makeIterator()@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *(a1 + 16);
  v6 = *(a1 + 24);
  v7 = type metadata accessor for RangesSequence();
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v13 - v9;
  (*(v11 + 16))(&v13 - v9, v2);
  return SplitSequence.Iterator.init(ranges:maxSplits:omittingEmptySubsequences:)(v10, *(v2 + *(a1 + 36)), *(v2 + *(a1 + 40)), a2);
}

uint64_t Collection._split<A>(by:maxSplits:omittingEmptySubsequences:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char a3@<W2>, uint64_t a4@<X4>, uint64_t a5@<X8>)
{
  v10 = *(a4 - 8);
  v11 = *(v10 + 64);
  v12 = MEMORY[0x1EEE9AC00](a1);
  v14 = &v23 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = *(*(v15 - 8) + 64);
  MEMORY[0x1EEE9AC00](v12);
  v18 = &v23 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v19 + 16))(v18, v21, v20);
  (*(v10 + 16))(v14, a1, a4);
  return SplitSequence.init(input:searcher:maxSplits:omittingEmptySubsequences:)(v18, v14, a2, a3, a4, a5);
}

uint64_t Collection<>.split<A>(separator:maxSplits:omittingEmptySubsequences:)(uint64_t a1, uint64_t a2, int a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = v8;
  v65 = a7;
  v66 = a8;
  v74 = a3;
  v75 = a2;
  v14 = *(a5 - 8);
  v15 = *(v14 + 64);
  MEMORY[0x1EEE9AC00](a1);
  v62 = &v59 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = type metadata accessor for ZSearcher();
  WitnessTable = swift_getWitnessTable();
  v64 = v17;
  v69 = type metadata accessor for SplitSequence();
  v18 = *(*(v69 - 8) + 64);
  MEMORY[0x1EEE9AC00](v69);
  v68 = &v59 - v19;
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v60 = *(TupleTypeMetadata2 - 8);
  v21 = *(v60 + 64);
  v22 = MEMORY[0x1EEE9AC00](TupleTypeMetadata2);
  v24 = &v59 - v23;
  v67 = v22;
  v25 = *(v22 + 48);
  v72 = *(a4 - 8);
  v26 = *(v72 + 16);
  v70 = v9;
  v26(&v59 - v23, v9, a4);
  v27 = *(v14 + 16);
  v28 = v25;
  v61 = a1;
  v29 = a1;
  v30 = a6;
  v27(&v24[v25], v29, a5);
  if (!swift_dynamicCast())
  {
    goto LABEL_8;
  }

  v71 = v14;
  v73 = a6;
  v31 = v25;
  if (!swift_dynamicCast())
  {
    if (swift_dynamicCast())
    {
      v68 = v81;
      v69 = v80;
      v37 = v82;
      v38 = v83;
      v39 = String.subscript.getter();
      v40 = a4;
      v41 = v24;
      v43 = v42;
      v70 = v31;

      v44 = v43;
      v24 = v41;
      a4 = v40;
      specialized StringProtocol<>._split(separator:maxSplits:omittingEmptySubsequences:)(v69, v68, v37, v38, v75, v74 & 1, v39, v44);

      goto LABEL_6;
    }

    v30 = v73;
    v14 = v71;
LABEL_8:
    if (swift_dynamicCast())
    {
      v71 = v14;
      v73 = v30;
      v46 = v80;
      v47 = v81;
      if (swift_dynamicCast())
      {
        specialized StringProtocol<>._split(separator:maxSplits:omittingEmptySubsequences:)(v76, v77, v75, v74 & 1, v46, v47);
LABEL_13:

        swift_getAssociatedTypeWitness();
        v45 = _arrayForceCast<A, B>(_:)();

        (*(v71 + 8))(&v24[v28], a5);
        goto LABEL_14;
      }

      if (swift_dynamicCast())
      {
        specialized StringProtocol<>._split(separator:maxSplits:omittingEmptySubsequences:)(v76, v77, v78, v79, v75, v74 & 1, v46, v47);
        goto LABEL_13;
      }

      v30 = v73;
    }

    v27(v62, v61, a5);
    v49 = *(v30 + 8);
    AssociatedTypeWitness = swift_getAssociatedTypeWitness();
    v51 = v65;
    v52 = *(v65 + 8);
    v53 = Array.init<A>(_:)();
    v54 = swift_allocObject();
    v54[2] = a4;
    v54[3] = a5;
    v54[4] = v30;
    v54[5] = v51;
    v54[6] = v66;
    v54[7] = AssociatedTypeWitness;
    v80 = ZSearcher.init(pattern:by:)(v53, partial apply for implicit closure #1 in Collection<>._ranges<A>(of:), v54, a4, v30);
    v81 = v55;
    v82 = v56;
    v83 = v57;
    Collection._split<A>(by:maxSplits:omittingEmptySubsequences:)(&v80, v75, v74 & 1, v64, v68);

    swift_getAssociatedTypeWitness();
    swift_getWitnessTable();
    v45 = Array.init<A>(_:)();
    a4 = v67;
    v48 = v60;
    goto LABEL_17;
  }

  v70 = v25;
  v32 = v80;
  v33 = v81;
  v34 = String.subscript.getter();
  v36 = v35;

  specialized StringProtocol<>._split(separator:maxSplits:omittingEmptySubsequences:)(v32, v33, v75, v74 & 1, v34, v36);

LABEL_6:

  swift_getAssociatedTypeWitness();
  v45 = _arrayForceCast<A, B>(_:)();

  (*(v71 + 8))(&v24[v70], a5);
LABEL_14:
  v48 = v72;
LABEL_17:
  (*(v48 + 8))(v24, a4);
  return v45;
}

uint64_t specialized StringProtocol<>._split(separator:maxSplits:omittingEmptySubsequences:)(uint64_t result, uint64_t a2, uint64_t a3, char a4, unint64_t a5, unint64_t a6)
{
  if (a6 >> 14 < a5 >> 14)
  {
    __break(1u);
  }

  else
  {
    v7 = Substring.subscript.getter();
    v42 = v8;
    v43 = v7;
    v41 = v9;
    v11 = v10;
    v12 = MEMORY[0x193ACECF0](0, 0xE000000000000000);
    v14 = v13;
    v16 = v15;
    v18 = v17;
    result = String.subscript.getter();
    if (v14 >> 14 >= v12 >> 14)
    {
      v22 = v21;
      v23 = result;
      v38 = v19;
      v39 = v20;

      v24 = v16;
      v40 = a3;
      v25 = Substring.subscript.getter();
      v27 = v26;
      v37 = v11;
      v29 = v28;
      v31 = v30;

      v45[0] = v43;
      v45[1] = v42;
      v45[2] = v41;
      v45[3] = v37;
      v45[4] = v12;
      v45[5] = v14;
      v45[6] = v24;
      v45[7] = v18;
      v45[8] = v23;
      v45[9] = v38;
      v45[10] = v39;
      v45[11] = v22;
      v45[12] = specialized SubstringSearcher.State.init(text:pattern:)(v25, v27, v29, v31, v23, v38);
      v45[13] = v32;
      v45[14] = v33;
      v46 = v34 & 1;
      v47 = v40;
      v48 = a4 & 1;
      specialized _copySequenceToContiguousArray<A>(_:)(v45);
      v36 = v35;
      outlined destroy of SplitSequence<SubstringSearcher>(v45, &_s17_StringProcessing13SplitSequenceVyAA17SubstringSearcherVGMd, &_s17_StringProcessing13SplitSequenceVyAA17SubstringSearcherVGMR);
      return v36;
    }
  }

  __break(1u);
  return result;
}

uint64_t StringProtocol<>._split(separator:maxSplits:omittingEmptySubsequences:)(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5, uint64_t a6)
{
  v7 = *(*(a6 + 8) + 8);
  Collection.subscript.getter();
  v8 = MEMORY[0x193ACECF0](0, 0xE000000000000000);
  v10 = v9;
  v12 = v11;
  v14 = v13;
  result = String.subscript.getter();
  if (v10 >> 14 < v8 >> 14)
  {
    __break(1u);
  }

  else
  {
    v19 = v18;
    v20 = result;
    v34 = v16;
    v35 = v17;

    v21 = v12;
    v36 = a3;
    v22 = Substring.subscript.getter();
    v24 = v23;
    v26 = v25;
    v28 = v27;

    v43[0] = v38;
    v43[1] = v39;
    v43[2] = v40;
    v43[3] = v41;
    v43[4] = v8;
    v43[5] = v10;
    v43[6] = v21;
    v43[7] = v14;
    v43[8] = v20;
    v43[9] = v34;
    v43[10] = v35;
    v43[11] = v19;
    v43[12] = specialized SubstringSearcher.State.init(text:pattern:)(v22, v24, v26, v28, v20, v34);
    v43[13] = v29;
    v43[14] = v30;
    v44 = v31 & 1;
    *&v45[3] = *&v42[3];
    *v45 = *v42;
    v46 = v36;
    v47 = a4 & 1;
    specialized _copySequenceToContiguousArray<A>(_:)(v43);
    v33 = v32;
    outlined destroy of SplitSequence<SubstringSearcher>(v43, &_s17_StringProcessing13SplitSequenceVyAA17SubstringSearcherVGMd, &_s17_StringProcessing13SplitSequenceVyAA17SubstringSearcherVGMR);
    return v33;
  }

  return result;
}

uint64_t specialized StringProtocol<>._split(separator:maxSplits:omittingEmptySubsequences:)(uint64_t result, unint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6, unint64_t a7, unint64_t a8)
{
  if (a8 >> 14 < a7 >> 14)
  {
    __break(1u);
    goto LABEL_6;
  }

  v10 = result;
  v11 = Substring.subscript.getter();
  v44 = v12;
  v45 = v11;
  v14 = v13;
  v46 = v15;
  result = MEMORY[0x193ACECF0](0, 0xE000000000000000);
  if (a2 >> 14 < v10 >> 14)
  {
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  v19 = result;
  v20 = v16;
  v21 = v18;
  v22 = v17;
  result = Substring.subscript.getter();
  if (v20 >> 14 >= v19 >> 14)
  {
    v26 = v25;
    v27 = result;
    v41 = v23;
    v42 = v24;

    v43 = a5;
    v28 = Substring.subscript.getter();
    v30 = v29;
    v40 = v14;
    v32 = v31;
    v34 = v33;

    v48[0] = v45;
    v48[1] = v44;
    v48[2] = v40;
    v48[3] = v46;
    v48[4] = v19;
    v48[5] = v20;
    v48[6] = v22;
    v48[7] = v21;
    v48[8] = v27;
    v48[9] = v41;
    v48[10] = v42;
    v48[11] = v26;
    v48[12] = specialized SubstringSearcher.State.init(text:pattern:)(v28, v30, v32, v34, v27, v41);
    v48[13] = v35;
    v48[14] = v36;
    v49 = v37 & 1;
    v50 = v43;
    v51 = a6 & 1;
    specialized _copySequenceToContiguousArray<A>(_:)(v48);
    v39 = v38;
    outlined destroy of SplitSequence<SubstringSearcher>(v48, &_s17_StringProcessing13SplitSequenceVyAA17SubstringSearcherVGMd, &_s17_StringProcessing13SplitSequenceVyAA17SubstringSearcherVGMR);
    return v39;
  }

LABEL_7:
  __break(1u);
  return result;
}

uint64_t StringProtocol<>._split(separator:maxSplits:omittingEmptySubsequences:)(unint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6, uint64_t a7, uint64_t a8)
{
  v11 = *(*(a8 + 8) + 8);
  Collection.subscript.getter();
  result = MEMORY[0x193ACECF0](0, 0xE000000000000000);
  if (a2 >> 14 < a1 >> 14)
  {
    __break(1u);
  }

  else
  {
    v16 = result;
    v17 = v13;
    v18 = v15;
    v19 = v14;
    result = Substring.subscript.getter();
    if (v17 >> 14 >= v16 >> 14)
    {
      v23 = v22;
      v24 = result;
      v38 = v20;
      v39 = v21;

      v40 = a5;
      v25 = Substring.subscript.getter();
      v27 = v26;
      v29 = v28;
      v31 = v30;

      v32 = specialized SubstringSearcher.State.init(text:pattern:)(v25, v27, v29, v31, v24, v38);
      v42[0] = v33 & 1;
      v43[4] = v16;
      v43[5] = v17;
      v43[6] = v19;
      v43[7] = v18;
      v43[8] = v24;
      v43[9] = v38;
      v43[10] = v39;
      v43[11] = v23;
      v43[12] = v32;
      v43[13] = v34;
      v43[14] = v35;
      v44 = v33 & 1;
      *&v45[3] = *&v42[3];
      *v45 = *v42;
      v46 = v40;
      v47 = a6 & 1;
      specialized _copySequenceToContiguousArray<A>(_:)(v43);
      v37 = v36;
      outlined destroy of SplitSequence<SubstringSearcher>(v43, &_s17_StringProcessing13SplitSequenceVyAA17SubstringSearcherVGMd, &_s17_StringProcessing13SplitSequenceVyAA17SubstringSearcherVGMR);
      return v37;
    }
  }

  __break(1u);
  return result;
}

char *BidirectionalCollection<>.split<A>(separator:maxSplits:omittingEmptySubsequences:)(uint64_t a1, uint64_t a2, int a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v47 = a3;
  v45 = a7;
  v46 = a1;
  v42 = a5;
  swift_getAssociatedTypeWitness();
  v11 = type metadata accessor for Executor.Matches();
  v40 = *(v11 - 8);
  v41 = v11;
  v12 = *(v40 + 64);
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v39 - v13;
  v15 = type metadata accessor for Executor.Matches.Iterator();
  v43 = *(v15 - 8);
  v16 = *(v43 + 64);
  MEMORY[0x1EEE9AC00](v15);
  v18 = &v39 - v17;
  v19 = swift_allocObject();
  *(v19 + 16) = MEMORY[0x1E69E7CC0];
  v20 = swift_allocObject();
  v21 = a6;
  v22 = *(a6 + 8);
  dispatch thunk of Collection.startIndex.getter();
  v44 = a2;
  if (a2 < 1 || (dispatch thunk of Collection.isEmpty.getter() & 1) != 0)
  {
    dispatch thunk of Collection.endIndex.getter();
    appendSubsequence #1 <A><A1>(end:) in BidirectionalCollection<>.split<A>(separator:maxSplits:omittingEmptySubsequences:)(v50, v20, v47 & 1, v19, v7, a4, v21);
LABEL_4:
    v23 = *(v19 + 16);
    goto LABEL_5;
  }

  v39 = v22;
  v25 = v45;
  v45 = v7;
  v46 = a4;
  BidirectionalCollection<>._matches<A>(of:)(v42, v21, v25, v14);
  v26 = v41;
  v27 = Executor.Matches.makeIterator()(v41, v18);
  (*(v40 + 8))(v14, v26, v27);
  Executor.Matches.Iterator.next()(v15, &v50);
  v28 = v51;
  if (v51)
  {
    v29 = v50;
    v30 = v53;
    v31 = v54;
    while ((appendSubsequence #1 <A><A1>(end:) in BidirectionalCollection<>.split<A>(separator:maxSplits:omittingEmptySubsequences:)(v30, v20, v47 & 1, v19, v45, v46, v21) & 1) == 0 || *(*(v19 + 16) + 16) != v44)
    {
      *(v20 + 16) = v31;
      outlined consume of Regex<A1.RegexOutput>.Match?<A><A1>(v29, v28);
      Executor.Matches.Iterator.next()(v15, &v50);
      v29 = v50;
      v28 = v51;
      v30 = v53;
      v31 = v54;
      if (!v51)
      {
        goto LABEL_12;
      }
    }

    (*(v43 + 8))(v18, v15);
    *(v20 + 16) = v31;
    outlined consume of Regex<A1.RegexOutput>.Match?<A><A1>(v29, v28);
  }

  else
  {
LABEL_12:
    (*(v43 + 8))(v18, v15);
  }

  v32 = *(v20 + 16);
  v23 = v45;
  v33 = v46;
  v34 = v39;
  dispatch thunk of Collection.endIndex.getter();
  v35 = v32 >> 14;
  if (v32 >> 14 == v50 >> 14 && (v47 & 1) != 0)
  {
    goto LABEL_4;
  }

  dispatch thunk of Collection.endIndex.getter();
  if (v35 > v50 >> 14)
  {
    __break(1u);
    goto LABEL_21;
  }

  v48 = v32;
  v49 = v50;
  dispatch thunk of Collection.subscript.getter();
  v33 = v50;
  v35 = v51;
  v34 = v52;
  v18 = v53;
  v23 = *(v19 + 16);
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
LABEL_21:
    v23 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v23 + 2) + 1, 1, v23);
  }

  v37 = *(v23 + 2);
  v36 = *(v23 + 3);
  if (v37 >= v36 >> 1)
  {
    v23 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v36 > 1), v37 + 1, 1, v23);
  }

  *(v23 + 2) = v37 + 1;
  v38 = &v23[32 * v37];
  *(v38 + 4) = v33;
  *(v38 + 5) = v35;
  *(v38 + 6) = v34;
  *(v38 + 7) = v18;
  *(v19 + 16) = v23;
LABEL_5:

  return v23;
}

uint64_t appendSubsequence #1 <A><A1>(end:) in BidirectionalCollection<>.split<A>(separator:maxSplits:omittingEmptySubsequences:)(unint64_t a1, uint64_t a2, unsigned __int8 a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v13 = *(a2 + 16) >> 14;
  v14 = (v13 == a1 >> 14) & a3;
  if (v14)
  {
    return v14 ^ 1u;
  }

  if (a1 >> 14 < v13)
  {
    __break(1u);
    goto LABEL_9;
  }

  v7 = a4;
  v21 = *(a2 + 16);
  v15 = *(a7 + 8);
  dispatch thunk of Collection.subscript.getter();
  v9 = v22;
  v10 = v23;
  v11 = v24;
  v12 = v25;
  v8 = *(v7 + 16);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *(v7 + 16) = v8;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
LABEL_9:
    v8 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v8 + 2) + 1, 1, v8);
    *(v7 + 16) = v8;
  }

  v18 = *(v8 + 2);
  v17 = *(v8 + 3);
  if (v18 >= v17 >> 1)
  {
    v8 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v17 > 1), v18 + 1, 1, v8);
  }

  *(v8 + 2) = v18 + 1;
  v19 = &v8[32 * v18];
  *(v19 + 4) = v9;
  *(v19 + 5) = v10;
  *(v19 + 6) = v11;
  *(v19 + 7) = v12;
  *(v7 + 16) = v8;
  return v14 ^ 1u;
}

int *BidirectionalCollection<>._matches<A>(of:)@<X0>(uint64_t a1@<X2>, uint64_t a2@<X3>, uint64_t a3@<X4>, uint64_t a4@<X8>)
{
  v8 = type metadata accessor for MEProgram(0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v11 = &v25 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *(a3 + 16);
  v29 = a1;
  v12(&v34, a1, a3);
  Regex.Program.loweredProgram.getter(v11);

  v13 = *(a2 + 8);
  Collection.subscript.getter();
  v14 = v32;
  v28 = v33;
  dispatch thunk of Collection.startIndex.getter();
  v15 = v31;
  result = dispatch thunk of Collection.endIndex.getter();
  v17 = v30;
  v27 = v15;
  if (v30 >> 14 < v15 >> 14)
  {
    __break(1u);
  }

  else
  {
    v26 = v14;
    dispatch thunk of Collection.startIndex.getter();
    v18 = v31;
    result = dispatch thunk of Collection.endIndex.getter();
    v19 = v30;
    if (v30 >> 14 >= v18 >> 14)
    {
      swift_getAssociatedTypeWitness();
      outlined init with take of DSLTree.QuantificationKind(v11, a4, type metadata accessor for MEProgram);
      result = type metadata accessor for Executor.Matches();
      v20 = (a4 + result[7]);
      v21 = v27;
      v22 = v28;
      *v20 = v26;
      v20[1] = v22;
      v23 = (a4 + result[8]);
      *v23 = v21;
      v23[1] = v17;
      v24 = (a4 + result[9]);
      *v24 = v18;
      v24[1] = v19;
      return result;
    }
  }

  __break(1u);
  return result;
}

uint64_t BidirectionalCollection<>.starts<A>(with:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v7 = *(a4 + 8);
  Collection.subscript.getter();
  v8 = v15;
  v9 = v16;
  v11 = v17;
  v10 = v18;
  (*(a5 + 16))(&v14, a3, a5);
  swift_getAssociatedTypeWitness();
  v12 = type metadata accessor for Regex();
  Regex.prefixMatch(in:)(v8, v9, v11, v10, v12, &v15);

  if (!v16)
  {
    return 0;
  }

  outlined consume of Regex<A1.RegexOutput>.Match?<A><A1>(v15, v16);
  return 1;
}

unint64_t SubstringSearcher.nextRangeNaive(in:searchFromEnd:)@<X0>(unint64_t result@<X0>, unint64_t a2@<X1>, uint64_t a3@<X8>)
{
  if (v3[9] < 1)
  {
    __break(1u);
LABEL_28:
    __break(1u);
  }

  else
  {
    v5 = result;
    v31 = v3[9];
    v6 = v3[4];
    v37 = v3[6];
    v38 = v3[5];
    v36 = v3[7];
    v7 = Substring.index(before:)();
    v30 = a2 >> 14;
    if (a2 >> 14 < Substring.index(before:)() >> 14)
    {
      goto LABEL_21;
    }

    v35 = v6 >> 14;
    v32 = v7 >> 14;
    v33 = v5 >> 14;
LABEL_4:
    v8 = Substring.subscript.getter();
    v10 = v9;
    v11 = Substring.subscript.getter();
    v13 = v12;
    v14 = v8 >> 14;
    if (v8 >> 14 == v10 >> 14)
    {
      goto LABEL_22;
    }

    v15 = v11;
    v16 = v8;
    while (Substring.subscript.getter() != v15 || v17 != v13)
    {
      v18 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if (v18)
      {
        goto LABEL_12;
      }

      v16 = Substring.index(after:)();
      v14 = v16 >> 14;
      if (v16 >> 14 == v10 >> 14)
      {
LABEL_22:

        v20 = 0;
        v27 = 0;
        result = 0;
        v28 = 1;
        v29 = 1;
LABEL_26:
        *a3 = v20;
        *(a3 + 8) = v27;
        *(a3 + 16) = v28;
        *(a3 + 24) = result;
        *(a3 + 32) = v29 & 1;
        return result;
      }
    }

LABEL_12:

    if (v14 < v33)
    {
      goto LABEL_28;
    }

    if (v35 < v32)
    {
      while (1)
      {
        v21 = Substring.index(before:)();
        v22 = Substring.index(before:)();
        v23 = Substring.subscript.getter();
        v25 = v24;
        if (v23 == Substring.subscript.getter() && v25 == v26)
        {
        }

        else
        {
          v19 = _stringCompareWithSmolCheck(_:_:expecting:)();

          if ((v19 & 1) == 0)
          {
            if (v30 < Substring.index(after:)() >> 14)
            {
LABEL_21:
              __break(1u);
              goto LABEL_22;
            }

            goto LABEL_4;
          }
        }

        v20 = v22;
        if (v35 >= v21 >> 14)
        {
          goto LABEL_24;
        }
      }
    }

    v20 = v16;
LABEL_24:
    result = Substring.index(after:)();
    if (result >> 14 >= v20 >> 14)
    {
      v27 = result;
      result = Substring.index(_:offsetBy:limitedBy:)();
      v28 = 0;
      goto LABEL_26;
    }
  }

  __break(1u);
  return result;
}

unint64_t SubstringSearcher.nextRange(in:searchFromEnd:)@<X0>(unint64_t result@<X0>, unint64_t a2@<X1>, uint64_t a3@<X2>, unint64_t a4@<X4>, uint64_t a5@<X8>)
{
  v6 = a4;
  v8 = a2;
  v9 = a5;
  v10 = v5[9];
  if (!v10)
  {
    if ((a4 ^ a2) >= 0x4000)
    {
      result = Substring.index(after:)();
      v32 = 0;
      v33 = 0;
    }

    else
    {
      v32 = 0;
      result = 0;
      v33 = 1;
    }

    v31 = v6;
    goto LABEL_34;
  }

  v11 = v5;
  v12 = v5[8];
  if (!*(v12 + 16))
  {
    SubstringSearcher.nextRangeNaive(in:searchFromEnd:)(result, a2, v43);
    v6 = v43[0];
    v31 = v43[1];
    v32 = v44;
    result = v45;
    v33 = v46;
LABEL_34:
    *v9 = v6;
    *(v9 + 8) = v31;
    *(v9 + 16) = v32;
    *(v9 + 24) = result;
    *(v9 + 32) = v33 & 1;
    return result;
  }

  v36 = v10 - 1;
  if (!__OFSUB__(v10, 1))
  {
    v13 = v11[6];
    v42 = v11[4] >> 14;
    v38 = result >> 14;
    result = a4;
    v35 = v12;
    v39 = v11[5];
    while (1)
    {
      v37 = result;
      v6 = Substring.index(before:)();
      v14 = Substring.index(before:)() >> 14;
      if (v14 >= v42)
      {
        break;
      }

      v15 = v36;
LABEL_18:
      v24 = Substring.subscript.getter();
      if (*(v12 + 16))
      {
        v26 = specialized __RawDictionaryStorage.find<A>(_:)(v24, v25);
        v28 = v27;

        if (v28)
        {
          v29 = *(*(v12 + 56) + 8 * v26);
        }

        else
        {
          v29 = 0;
        }
      }

      else
      {

        v29 = 0;
      }

      if (__OFSUB__(v15, v29))
      {
LABEL_37:
        __break(1u);
        goto LABEL_38;
      }

      result = Substring.index(_:offsetBy:limitedBy:)();
      if (v30)
      {
        v6 = 0;
        v31 = 0;
        v32 = 1;
        v33 = 1;
LABEL_30:
        v9 = a5;
        goto LABEL_34;
      }
    }

    v41 = v36;
    v16 = v8;
    v17 = a3;
    while (1)
    {
      v40 = v14;
      v18 = Substring.subscript.getter();
      v20 = v19;
      if (v18 == Substring.subscript.getter() && v20 == v21)
      {
      }

      else
      {
        v22 = _stringCompareWithSmolCheck(_:_:expecting:)();

        if ((v22 & 1) == 0)
        {
          a3 = v17;
          v8 = v16;
          v12 = v35;
          v15 = v41;
          goto LABEL_18;
        }
      }

      if (__OFSUB__(v41--, 1))
      {
        __break(1u);
LABEL_36:
        __break(1u);
        goto LABEL_37;
      }

      if (v40 == v42)
      {
        break;
      }

      if (v38 >= v6 >> 14)
      {
        goto LABEL_36;
      }

      v6 = Substring.index(before:)();
      v14 = Substring.index(before:)() >> 14;
      if (v14 < v42)
      {
        v12 = v35;
        a3 = v17;
        v8 = v16;
        v15 = v41;
        goto LABEL_18;
      }
    }

    if (v37 >> 14 < v6 >> 14)
    {
      goto LABEL_39;
    }

    result = Substring.index(_:offsetBy:limitedBy:)();
    v32 = 0;
    v31 = v37;
    goto LABEL_30;
  }

LABEL_38:
  __break(1u);
LABEL_39:
  __break(1u);
  return result;
}

__n128 protocol witness for Sequence.makeIterator() in conformance SubstringSearcher@<Q0>(_OWORD *a1@<X8>)
{
  v2 = *(v1 + 48);
  a1[2] = *(v1 + 32);
  a1[3] = v2;
  a1[4] = *(v1 + 64);
  *(a1 + 73) = *(v1 + 73);
  result = *v1;
  v4 = *(v1 + 16);
  *a1 = *v1;
  a1[1] = v4;
  return result;
}

uint64_t protocol witness for Sequence._copyToContiguousArray() in conformance SubstringSearcher()
{
  v1 = v0[3];
  v5[2] = v0[2];
  v5[3] = v1;
  v6[0] = v0[4];
  *(v6 + 9) = *(v0 + 73);
  v2 = v0[1];
  v5[0] = *v0;
  v5[1] = v2;
  v3 = specialized _copySequenceToContiguousArray<A>(_:)(v5);
  outlined destroy of SubstringSearcher(v5);
  return v3;
}

uint64_t protocol witness for Sequence._copyContents(initializing:) in conformance SubstringSearcher(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  v7 = v3[2];
  v8 = v3[3];
  *v9 = v3[4];
  *&v9[9] = *(v3 + 73);
  v5 = *v3;
  v6 = v3[1];
  return specialized Sequence._copySequenceContents(initializing:)(a1, a2, a3);
}

unint64_t protocol witness for IteratorProtocol.next() in conformance SubstringSearcher@<X0>(uint64_t a1@<X8>)
{
  if (*(v1 + 88))
  {
    v3 = 0uLL;
    v4 = 1;
  }

  else
  {
    v5 = *(v1 + 10);
    v6 = v1[1];
    v14 = *v1;
    v15 = v6;
    v7 = v1[3];
    v16 = v1[2];
    v17 = v7;
    v18[0] = v1[4];
    *(v18 + 9) = *(v1 + 73);
    result = SubstringSearcher.nextRange(in:searchFromEnd:)(v14, *(&v14 + 1), v15, v5, &v10);
    v3 = v10;
    v4 = v11;
    v9 = v13;
    *(v1 + 10) = v12;
    *(v1 + 88) = v9;
  }

  *a1 = v3;
  *(a1 + 16) = v4;
  return result;
}

uint64_t protocol witness for CollectionSearcher.state(for:in:) in conformance SubstringSearcher@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X8>)
{
  v5 = *a1;
  v6 = a1[1];
  v7 = a1[2];
  v8 = a1[3];
  v9 = *a2;
  v10 = a2[1];
  v11 = v3[4];
  v12 = v3[5];
  v13 = v3[6];
  v14 = v3[7];

  v15 = Substring.subscript.getter();
  result = specialized SubstringSearcher.State.init(text:pattern:)(v15, v16, v17, v18, v11, v12);
  *a3 = result;
  *(a3 + 8) = v20;
  *(a3 + 16) = v21;
  *(a3 + 24) = v22 & 1;
  return result;
}

unint64_t *protocol witness for CollectionSearcher.search(_:_:) in conformance SubstringSearcher@<X0>(unint64_t *result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  if (*(a2 + 24))
  {
    v4 = 0uLL;
    v5 = 1;
  }

  else
  {
    v6 = result[3];
    result = SubstringSearcher.nextRange(in:searchFromEnd:)(*result, result[1], result[2], *(a2 + 16), &v9);
    v4 = v9;
    v5 = v10;
    v8 = v12;
    *(a2 + 16) = v11;
    *(a2 + 24) = v8;
  }

  *a3 = v4;
  *(a3 + 16) = v5;
  return result;
}

uint64_t Collection._trimmingPrefix<A>(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v6 = v5;
  v41 = a1;
  v39 = a5;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v42 = swift_getAssociatedConformanceWitness();
  v12 = type metadata accessor for PartialRangeFrom();
  v35 = *(v12 - 8);
  v36 = v12;
  v13 = *(v35 + 64);
  MEMORY[0x1EEE9AC00](v12);
  v34 = &v31 - v14;
  v15 = type metadata accessor for Optional();
  v32 = *(v15 - 8);
  v33 = v15;
  v16 = *(v32 + 64);
  v17 = MEMORY[0x1EEE9AC00](v15);
  v19 = &v31 - v18;
  v20 = *(AssociatedTypeWitness - 8);
  v21 = *(v20 + 64);
  MEMORY[0x1EEE9AC00](v17);
  v23 = &v31 - v22;
  v24 = v6;
  CollectionConsumer.consuming(_:)(v6, a3, a4, v19);
  v25 = *(v20 + 48);
  v26 = v25(v19, 1, AssociatedTypeWitness);
  v40 = v24;
  v37 = a2;
  v38 = AssociatedConformanceWitness;
  if (v26 == 1)
  {
    dispatch thunk of Collection.startIndex.getter();
    if (v25(v19, 1, AssociatedTypeWitness) != 1)
    {
      (*(v32 + 8))(v19, v33);
    }
  }

  else
  {
    (*(v20 + 32))(v23, v19, AssociatedTypeWitness);
  }

  v27 = *(v42 + 8);
  result = dispatch thunk of static Equatable.== infix(_:_:)();
  if (result)
  {
    v29 = v34;
    (*(v20 + 32))(v34, v23, AssociatedTypeWitness);
    v30 = v36;
    swift_getWitnessTable();
    Collection.subscript.getter();
    return (*(v35 + 8))(v29, v30);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t CollectionConsumer.consuming(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v41 = a4;
  swift_getAssociatedTypeWitness();
  v44 = a3;
  v43 = a2;
  swift_getAssociatedConformanceWitness();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v9 = *(TupleTypeMetadata2 - 8);
  v39 = TupleTypeMetadata2;
  v40 = v9;
  v10 = *(v9 + 64);
  v11 = MEMORY[0x1EEE9AC00](TupleTypeMetadata2);
  v36 = &v34 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x1EEE9AC00](v11);
  v15 = &v34 - v14;
  v16 = *(AssociatedTypeWitness - 8);
  v17 = v16[8];
  v18 = MEMORY[0x1EEE9AC00](v13);
  v20 = &v34 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18);
  v22 = &v34 - v21;
  swift_getAssociatedConformanceWitness();
  v23 = type metadata accessor for Range();
  v37 = *(v23 - 8);
  v38 = v23;
  v24 = *(v37 + 64);
  MEMORY[0x1EEE9AC00](v23);
  v35 = &v34 - v25;
  swift_checkMetadataState();
  dispatch thunk of Collection.startIndex.getter();
  v42 = a1;
  dispatch thunk of Collection.endIndex.getter();
  result = dispatch thunk of static Comparable.<= infix(_:_:)();
  if (result)
  {
    v27 = v16[4];
    v27(v15, v22, AssociatedTypeWitness);
    v28 = v39;
    v27(&v15[*(v39 + 48)], v20, AssociatedTypeWitness);
    v29 = v40;
    v30 = v36;
    (*(v40 + 16))(v36, v15, v28);
    v34 = *(v28 + 48);
    v31 = v35;
    v27(v35, v30, AssociatedTypeWitness);
    v32 = v16[1];
    v32(&v30[v34], AssociatedTypeWitness);
    (*(v29 + 32))(v30, v15, v28);
    v33 = v38;
    v27(&v31[*(v38 + 36)], &v30[*(v28 + 48)], AssociatedTypeWitness);
    v32(v30, AssociatedTypeWitness);
    (*(v44 + 24))(v42, v31, v43);
    return (*(v37 + 8))(v31, v33);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t CollectionConsumer.consume<>(_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v37 = AssociatedConformanceWitness;
  v38 = swift_getAssociatedConformanceWitness();
  v8 = type metadata accessor for PartialRangeFrom();
  v35 = *(v8 - 8);
  v36 = v8;
  v9 = *(v35 + 64);
  MEMORY[0x1EEE9AC00](v8);
  v34 = &v33 - v10;
  v11 = swift_checkMetadataState();
  v39 = *(v11 - 8);
  v40 = v11;
  v12 = *(v39 + 64);
  MEMORY[0x1EEE9AC00](v11);
  v41 = &v33 - v13;
  v14 = type metadata accessor for Optional();
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  v17 = MEMORY[0x1EEE9AC00](v14);
  v19 = &v33 - v18;
  v20 = *(AssociatedTypeWitness - 8);
  v21 = *(v20 + 64);
  MEMORY[0x1EEE9AC00](v17);
  v23 = &v33 - v22;
  CollectionConsumer.consuming(_:)(a1, a2, a3, v19);
  v24 = (*(v20 + 48))(v19, 1, AssociatedTypeWitness);
  if (v24 == 1)
  {
    (*(v15 + 8))(v19, v14);
    return v24 != 1;
  }

  v25 = *(v20 + 32);
  v25(v23, v19, AssociatedTypeWitness);
  v26 = v39;
  v27 = v40;
  (*(v39 + 32))(v41, a1, v40);
  v28 = *(v38 + 8);
  result = dispatch thunk of static Equatable.== infix(_:_:)();
  if (result)
  {
    v30 = v34;
    v25(v34, v23, AssociatedTypeWitness);
    v31 = v36;
    swift_getWitnessTable();
    v32 = v41;
    Collection.subscript.getter();
    (*(v35 + 8))(v30, v31);
    (*(v26 + 8))(v32, v27);
    return v24 != 1;
  }

  __break(1u);
  return result;
}

uint64_t RangeReplaceableCollection._trimPrefix<A>(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v33 = a1;
  v34 = a5;
  v32 = a3;
  v30 = a4;
  v7 = *(a4 + 8);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v29 = a2;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v10 = type metadata accessor for PartialRangeUpTo();
  v28 = *(v10 - 8);
  v11 = *(v28 + 64);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v27 - v12;
  v14 = type metadata accessor for Optional();
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  v17 = MEMORY[0x1EEE9AC00](v14);
  v19 = &v27 - v18;
  v20 = *(AssociatedTypeWitness - 8);
  v21 = *(v20 + 64);
  MEMORY[0x1EEE9AC00](v17);
  v23 = &v27 - v22;
  v31 = v5;
  CollectionConsumer.consuming(_:)(v5, v32, v34, v19);
  if ((*(v20 + 48))(v19, 1, AssociatedTypeWitness) == 1)
  {
    return (*(v15 + 8))(v19, v14);
  }

  v25 = *(v20 + 32);
  v25(v23, v19, AssociatedTypeWitness);
  v26 = *(AssociatedConformanceWitness + 8);
  result = dispatch thunk of static Equatable.== infix(_:_:)();
  if (result)
  {
    v25(v13, v23, AssociatedTypeWitness);
    swift_getWitnessTable();
    RangeReplaceableCollection.removeSubrange<A>(_:)();
    return (*(v28 + 8))(v13, v10);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t Collection._endOfPrefix(while:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v20 = a5;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v11 = type metadata accessor for Optional();
  v19 = *(v11 - 8);
  v12 = *(v19 + 64);
  MEMORY[0x1EEE9AC00](v11);
  v14 = v18 - v13;
  v21 = a3;
  v22 = a4;
  v23 = a1;
  v24 = a2;
  result = Collection.firstIndex(where:)();
  if (!v5)
  {
    v18[1] = 0;
    v16 = *(AssociatedTypeWitness - 8);
    v17 = *(v16 + 48);
    if (v17(v14, 1, AssociatedTypeWitness) == 1)
    {
      dispatch thunk of Collection.endIndex.getter();
      result = v17(v14, 1, AssociatedTypeWitness);
      if (result != 1)
      {
        return (*(v19 + 8))(v14, v11);
      }
    }

    else
    {
      return (*(v16 + 32))(v20, v14, AssociatedTypeWitness);
    }
  }

  return result;
}

uint64_t Collection.trimmingPrefix(while:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v23 = a1;
  v24 = a2;
  v22[1] = a5;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v10 = type metadata accessor for PartialRangeFrom();
  v22[0] = *(v10 - 8);
  v11 = *(v22[0] + 64);
  v12 = MEMORY[0x1EEE9AC00](v10);
  v14 = v22 - v13;
  v15 = *(AssociatedTypeWitness - 8);
  v16 = *(v15 + 64);
  MEMORY[0x1EEE9AC00](v12);
  v18 = v22 - v17;
  v19 = v25;
  result = Collection._endOfPrefix(while:)(v23, v24, a3, a4, v22 - v17);
  if (!v19)
  {
    v24 = v5;
    v25 = 0;
    v21 = *(AssociatedConformanceWitness + 8);
    result = dispatch thunk of static Equatable.== infix(_:_:)();
    if (result)
    {
      (*(v15 + 32))(v14, v18, AssociatedTypeWitness);
      swift_getWitnessTable();
      Collection.subscript.getter();
      return (*(v22[0] + 8))(v14, v10);
    }

    else
    {
      __break(1u);
    }
  }

  return result;
}

uint64_t Collection<>.trimPrefix(while:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v29 = a1;
  v30 = a2;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v8 = type metadata accessor for PartialRangeFrom();
  v26 = *(v8 - 8);
  v9 = *(v26 + 64);
  v10 = MEMORY[0x1EEE9AC00](v8);
  v12 = &v25 - v11;
  v28 = *(a3 - 8);
  v13 = *(v28 + 64);
  v14 = MEMORY[0x1EEE9AC00](v10);
  v16 = &v25 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = *(AssociatedTypeWitness - 8);
  v18 = *(v17 + 64);
  MEMORY[0x1EEE9AC00](v14);
  v20 = &v25 - v19;
  v21 = v30;
  v30 = v4;
  v22 = v31;
  result = Collection._endOfPrefix(while:)(v29, v21, a3, a4, &v25 - v19);
  if (!v22)
  {
    v31 = 0;
    (*(v28 + 32))(v16, v30, a3);
    v24 = *(AssociatedConformanceWitness + 8);
    result = dispatch thunk of static Equatable.== infix(_:_:)();
    if (result)
    {
      (*(v17 + 32))(v12, v20, AssociatedTypeWitness);
      swift_getWitnessTable();
      Collection.subscript.getter();
      (*(v26 + 8))(v12, v8);
      return (*(v28 + 8))(v16, a3);
    }

    else
    {
      __break(1u);
    }
  }

  return result;
}

uint64_t RangeReplaceableCollection.trimPrefix(while:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v47 = a1;
  v48 = a2;
  v43 = a4;
  v6 = *(a4 + 8);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v42 = *(TupleTypeMetadata2 - 8);
  v8 = *(v42 + 64);
  v9 = MEMORY[0x1EEE9AC00](TupleTypeMetadata2);
  v40 = &v37 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v44 = &v37 - v11;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v12 = type metadata accessor for Range();
  v41 = *(v12 - 8);
  v13 = *(v41 + 64);
  v14 = MEMORY[0x1EEE9AC00](v12);
  v16 = &v37 - v15;
  v17 = *(AssociatedTypeWitness - 8);
  v18 = *(v17 + 64);
  v19 = MEMORY[0x1EEE9AC00](v14);
  v21 = &v37 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v19);
  v23 = &v37 - v22;
  v24 = v47;
  v25 = v48;
  v47 = a3;
  v48 = v4;
  v26 = v49;
  result = Collection._endOfPrefix(while:)(v24, v25, a3, v6, &v37 - v22);
  if (!v26)
  {
    v39 = 0;
    v28 = v17;
    v29 = v44;
    v49 = v12;
    v30 = TupleTypeMetadata2;
    dispatch thunk of Collection.startIndex.getter();
    result = dispatch thunk of static Comparable.<= infix(_:_:)();
    if (result)
    {
      v31 = *(v28 + 32);
      v31(v29, v21, AssociatedTypeWitness);
      v31(&v29[*(v30 + 48)], v23, AssociatedTypeWitness);
      AssociatedConformanceWitness = v31;
      v32 = v42;
      v33 = v40;
      (*(v42 + 16))(v40, v29, v30);
      v38 = *(v30 + 48);
      v31(v16, v33, AssociatedTypeWitness);
      v34 = *(v28 + 8);
      v34(&v33[v38], AssociatedTypeWitness);
      (*(v32 + 32))(v33, v29, v30);
      v35 = *(v30 + 48);
      v36 = v49;
      AssociatedConformanceWitness(&v16[*(v49 + 36)], &v33[v35], AssociatedTypeWitness);
      v34(v33, AssociatedTypeWitness);
      dispatch thunk of RangeReplaceableCollection.removeSubrange(_:)();
      return (*(v41 + 8))(v16, v36);
    }

    else
    {
      __break(1u);
    }
  }

  return result;
}

uint64_t Collection<>.trimmingPrefix<A>(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v8 = *(a3 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](a1);
  v11 = v24 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24[1] = v12;
  v24[2] = v13;
  v24[3] = v14;
  v24[4] = v15;
  v24[5] = v16;
  v17 = type metadata accessor for FixedPatternConsumer();
  v18 = *(v17 - 8);
  v19 = *(v18 + 64);
  MEMORY[0x1EEE9AC00](v17);
  v21 = v24 - v20;
  (*(v8 + 16))(v11, a1, a3);
  (*(v8 + 32))(v21, v11, a3);
  WitnessTable = swift_getWitnessTable();
  Collection._trimmingPrefix<A>(_:)(v21, a2, v17, WitnessTable, a4);
  return (*(v18 + 8))(v21, v17);
}

uint64_t Collection<>.trimPrefix<A>(_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *(a3 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](a1);
  v9 = v22 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22[1] = v10;
  v22[2] = v11;
  v22[3] = v12;
  v22[4] = v13;
  v22[5] = v14;
  v15 = type metadata accessor for FixedPatternConsumer();
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  MEMORY[0x1EEE9AC00](v15);
  v19 = v22 - v18;
  (*(v6 + 16))(v9, a1, a3);
  (*(v6 + 32))(v19, v9, a3);
  WitnessTable = swift_getWitnessTable();
  CollectionConsumer.consume<>(_:)(v3, v15, WitnessTable);
  return (*(v16 + 8))(v19, v15);
}

uint64_t RangeReplaceableCollection<>.trimPrefix<A>(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = *(a3 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](a1);
  v11 = v25 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *(v12 + 8);
  v25[1] = v14;
  v25[2] = v15;
  v25[3] = v13;
  v25[4] = v16;
  v25[5] = v17;
  v18 = type metadata accessor for FixedPatternConsumer();
  v19 = *(v18 - 8);
  v20 = *(v19 + 64);
  MEMORY[0x1EEE9AC00](v18);
  v22 = v25 - v21;
  (*(v8 + 16))(v11, a1, a3);
  (*(v8 + 32))(v22, v11, a3);
  WitnessTable = swift_getWitnessTable();
  RangeReplaceableCollection._trimPrefix<A>(_:)(v22, a2, v18, a4, WitnessTable);
  return (*(v19 + 8))(v22, v18);
}

uint64_t BidirectionalCollection<>.trimmingPrefix<A>(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v7 = *(a4 + 8);
  Collection.subscript.getter();
  v8 = v16;
  v9 = v17;
  v10 = v18;
  v11 = v19;
  (*(a5 + 16))(&v15, a3, a5);
  swift_getAssociatedTypeWitness();
  v12 = type metadata accessor for Regex();
  Regex.prefixMatch(in:)(v8, v9, v10, v11, v12, &v16);

  if (!v17)
  {
    return v8;
  }

  v13 = v20;
  result = outlined consume of Regex<A1.RegexOutput>.Match?<A><A1>(v16, v17);
  if (v9 >> 14 >= v13 >> 14)
  {
    v8 = Substring.subscript.getter();

    return v8;
  }

  __break(1u);
  return result;
}

uint64_t RangeReplaceableCollection<>.trimPrefix<A>(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v8 = *(a4 + 8);
  Collection.subscript.getter();
  v9 = v18;
  v10 = v19;
  v11 = v20;
  v12 = v21;
  (*(a6 + 16))(&v17, a3, a6);
  swift_getAssociatedTypeWitness();
  v13 = type metadata accessor for Regex();
  Regex.prefixMatch(in:)(v9, v10, v11, v12, v13, &v18);

  v15 = v19;
  if (v19)
  {
    v16 = v18;
    v18 = v21;
    v19 = v22;
    dispatch thunk of RangeReplaceableCollection.removeSubrange(_:)();
    return outlined consume of Regex<A1.RegexOutput>.Match?<A><A1>(v16, v15);
  }

  return result;
}

uint64_t FixedPatternConsumer.consuming(_:in:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X2>, uint64_t a4@<X8>)
{
  v77 = a2;
  v60 = a1;
  v63 = a4;
  v5 = a3[4];
  v6 = *(v5 + 8);
  v7 = a3[2];
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v59 = type metadata accessor for Optional();
  v58 = *(v59 - 8);
  v9 = *(v58 + 64);
  v10 = MEMORY[0x1EEE9AC00](v59);
  v74 = &v58 - v11;
  v78 = *(AssociatedTypeWitness - 8);
  v12 = *(v78 + 64);
  v13 = MEMORY[0x1EEE9AC00](v10);
  v71 = &v58 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = MEMORY[0x1EEE9AC00](v13);
  v73 = &v58 - v16;
  v17 = a3[3];
  v18 = *(v17 - 8);
  v19 = *(v18 + 64);
  MEMORY[0x1EEE9AC00](v15);
  v21 = &v58 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v72 = a3;
  v75 = a3[5];
  v22 = swift_getAssociatedTypeWitness();
  v61 = *(v22 - 8);
  v23 = *(v61 + 64);
  MEMORY[0x1EEE9AC00](v22);
  v25 = &v58 - v24;
  v26 = swift_getAssociatedTypeWitness();
  v27 = *(*(v26 - 8) + 64);
  MEMORY[0x1EEE9AC00](v26);
  v29 = &v58 - v28;
  v62 = v30;
  (*(v30 + 16))(&v58 - v28, v77, v26);
  (*(v18 + 16))(v21, v76, v17);
  dispatch thunk of Sequence.makeIterator()();
  v31 = v60;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v33 = v74;
  v75 = v25;
  v76 = v22;
  v34 = v29;
  v70 = AssociatedConformanceWitness;
  dispatch thunk of IteratorProtocol.next()();
  v35 = v33;
  v36 = v78;
  v68 = *(v78 + 48);
  v69 = v78 + 48;
  if (v68(v35, 1, AssociatedTypeWitness) == 1)
  {
LABEL_6:
    (*(v61 + 8))(v75, v76);
    (*(v58 + 8))(v35, v59);
    v55 = v62;
    v54 = v63;
    (*(v62 + 32))(v63, v34, v26);
    v56 = 0;
  }

  else
  {
    v38 = *(v36 + 32);
    v37 = v36 + 32;
    v64 = (v37 - 16);
    v65 = v26;
    v78 = v37;
    v66 = v38;
    v67 = (v37 - 24);
    while (1)
    {
      v39 = v73;
      v66(v73, v35, AssociatedTypeWitness);
      v40 = swift_getAssociatedConformanceWitness();
      v41 = *(type metadata accessor for Range() + 36);
      v42 = *(v40 + 8);
      if (dispatch thunk of static Equatable.== infix(_:_:)())
      {
        break;
      }

      v43 = dispatch thunk of Collection.subscript.read();
      v44 = v71;
      (*v64)(v71);
      (v43)(v79, 0);
      v45 = v72[6];
      LOBYTE(v43) = dispatch thunk of static Equatable.== infix(_:_:)();
      v46 = v39;
      v47 = v7;
      v48 = v5;
      v49 = v31;
      v50 = *v67;
      v51 = v44;
      v26 = v65;
      (*v67)(v51, AssociatedTypeWitness);
      v50(v46, AssociatedTypeWitness);
      if ((v43 & 1) == 0)
      {
        goto LABEL_8;
      }

      dispatch thunk of Collection.formIndex(after:)();
      v52 = v74;
      dispatch thunk of IteratorProtocol.next()();
      v35 = v52;
      v53 = v68(v52, 1, AssociatedTypeWitness);
      v31 = v49;
      v5 = v48;
      v7 = v47;
      if (v53 == 1)
      {
        goto LABEL_6;
      }
    }

    (*v67)(v39, AssociatedTypeWitness);
LABEL_8:
    (*(v61 + 8))(v75, v76);
    v55 = v62;
    (*(v62 + 8))(v34, v26);
    v56 = 1;
    v54 = v63;
  }

  return (*(v55 + 56))(v54, v56, 1, v26);
}

uint64_t BidirectionalCollection<>.firstMatch<A, B>(of:)@<X0>(uint64_t a1@<X3>, uint64_t a2@<X4>, uint64_t a3@<X5>, uint64_t a4@<X8>)
{
  v7 = *(a2 + 8);
  Collection.subscript.getter();
  v8 = v14[0];
  v9 = v14[1];
  v11 = v14[2];
  v10 = v14[3];
  (*(a3 + 16))(v14, a1, a3);
  v12 = type metadata accessor for Regex();
  Regex.firstMatch(in:)(v8, v9, v11, v10, v12, a4);
}

uint64_t RangeReplaceableCollection<>.replacing<A, B, C>(_:subrange:maxReplacements:with:)@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, void (*a3)(__int128 *)@<X4>, uint64_t a4@<X5>, uint64_t a5@<X6>, uint64_t a6@<X8>, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  v50 = a3;
  v51 = a4;
  v48 = a7;
  v15 = *(*(a7 - 8) + 64);
  result = MEMORY[0x1EEE9AC00](a1);
  v21 = v41 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (v18 < 0)
  {
LABEL_15:
    __break(1u);
    return result;
  }

  v49 = v21;
  v58 = a11;
  v47 = a8;
  v46 = result;
  v67 = v18;
  v45 = v19;
  v57 = v17;
  dispatch thunk of RangeReplaceableCollection.init()();
  *&v64 = a2;
  swift_getCanonicalSpecializedMetadata();
  v22 = *(a9 + 8);
  lazy protocol witness table accessor for type PartialRangeUpTo<String.Index> and conformance PartialRangeUpTo<A>(&lazy protocol witness table cache variable for type PartialRangeUpTo<String.Index> and conformance PartialRangeUpTo<A>);
  Collection.subscript.getter();
  v64 = v60;
  v65 = v61;
  v66 = v62;
  v23 = lazy protocol witness table accessor for type Substring and conformance Substring();
  v24 = MEMORY[0x1E69E67B0];
  v53 = a6;
  v54 = v23;
  v52 = a9;
  dispatch thunk of RangeReplaceableCollection.append<A>(contentsOf:)();
  *&v64 = a2;
  *(&v64 + 1) = v57;
  v56 = v11;
  v57 = a5;
  v55 = v22;
  dispatch thunk of Collection.subscript.getter();
  v64 = v60;
  v65 = v61;
  v66 = v62;
  v25 = lazy protocol witness table accessor for type Substring and conformance Substring();
  v26 = BidirectionalCollection<>.matches<A, B>(of:)(v46, v24, v45, v47, v25, v58);

  *&v64 = v26;
  v27 = type metadata accessor for Regex.Match();
  type metadata accessor for Array();
  swift_getWitnessTable();
  Collection.prefix(_:)();
  v28 = v60;
  v30 = v61;
  v29 = v62;
  v31 = ArraySlice.startIndex.getter();
  if (v31 != ArraySlice.endIndex.getter())
  {
    v41[0] = a10;
    v46 = v29 >> 1;
    v32 = (*(&v28 + 1) + 40 * v31 + 16);
    v47 = v31;
    v45 = v28;
    v44 = v27;
    v43 = *(&v28 + 1);
    v42 = v30;
    v41[1] = v29;
    while (1)
    {
      result = ArraySlice._hoistableIsNativeTypeChecked()();
      if (v47 < v30 || v46 <= v31)
      {
        break;
      }

      v33 = v32[1];
      if (v33 >> 14 < a2 >> 14)
      {
        goto LABEL_14;
      }

      v34 = *(v32 - 1);
      v35 = *v32;
      v67 = v32[2];
      v36 = v53;
      v58 = *(v32 - 2);
      *&v64 = a2;
      *(&v64 + 1) = v33;

      v37 = v57;
      dispatch thunk of Collection.subscript.getter();
      v64 = v60;
      v65 = v61;
      v66 = v62;
      dispatch thunk of RangeReplaceableCollection.append<A>(contentsOf:)();
      v38 = v59;
      *&v60 = v58;
      *(&v60 + 1) = v34;
      v61 = v35;
      v62 = v33;
      v63 = v67;
      v50(&v60);
      if (v38)
      {
        (*(*(v37 - 8) + 8))(v36, v37);

        return swift_unknownObjectRelease();
      }

      v59 = 0;
      ++v31;

      v39 = *(v41[0] + 8);
      dispatch thunk of RangeReplaceableCollection.append<A>(contentsOf:)();
      v30 = v42;
      v40 = ArraySlice.endIndex.getter();
      v32 += 5;
      a2 = v67;
      if (v31 == v40)
      {
        goto LABEL_10;
      }
    }

    __break(1u);
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  v67 = a2;
LABEL_10:
  swift_unknownObjectRelease();
  *&v64 = v67;
  swift_getCanonicalSpecializedMetadata();
  lazy protocol witness table accessor for type PartialRangeUpTo<String.Index> and conformance PartialRangeUpTo<A>(&lazy protocol witness table cache variable for type PartialRangeFrom<String.Index> and conformance PartialRangeFrom<A>);
  Collection.subscript.getter();
  v64 = v60;
  v65 = v61;
  v66 = v62;
  return dispatch thunk of RangeReplaceableCollection.append<A>(contentsOf:)();
}

uint64_t BidirectionalCollection<>.matches<A, B>(of:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v23 = a5;
  *&v24 = a6;
  v7 = type metadata accessor for Executor.Matches();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v7);
  v11 = &v22 - v10;
  v12 = type metadata accessor for Executor.Matches.Iterator();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x1EEE9AC00](v12);
  v16 = &v22 - v15;
  type metadata accessor for Regex.Match();
  v29 = Array.init()();
  BidirectionalCollection<>._matches<A>(of:)(a4, v23, v24, v11);
  v17 = Executor.Matches.makeIterator()(v7, v16);
  (*(v8 + 8))(v11, v7, v17);
  Executor.Matches.Iterator.next()(v12, &v26);
  if (v27)
  {
    v18 = v26;
    v24 = v28;
    v25 = v27;
    type metadata accessor for Array();
    v20 = v24;
    v19 = v25;
    do
    {
      v26 = v18;
      v28 = v20;
      v27 = v19;
      Array.append(_:)();
      Executor.Matches.Iterator.next()(v12, &v26);
      v18 = v26;
      v19 = v27;
      v20 = v28;
    }

    while (v27);
  }

  (*(v13 + 8))(v16, v12);
  return v29;
}

uint64_t RangeReplaceableCollection<>.replacing<A, B, C>(_:maxReplacements:with:)@<X0>(uint64_t a1@<X0>, void (*a2)(__int128 *)@<X2>, uint64_t a3@<X3>, uint64_t a4@<X4>, uint64_t a5@<X6>, uint64_t a6@<X7>, uint64_t a7@<X8>, uint64_t a8, uint64_t a9, uint64_t a10)
{
  v15 = *(a8 + 8);
  dispatch thunk of Collection.startIndex.getter();
  result = dispatch thunk of Collection.endIndex.getter();
  if (v19 >> 14 >= v20 >> 14)
  {
    return RangeReplaceableCollection<>.replacing<A, B, C>(_:subrange:maxReplacements:with:)(a1, v20, a2, a3, a4, a7, a5, a6, a8, a9, a10);
  }

  __break(1u);
  return result;
}

uint64_t RangeReplaceableCollection<>.replace<A, B, C>(_:maxReplacements:with:)(uint64_t a1, uint64_t a2, void (*a3)(__int128 *), uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  v26 = a6;
  v23[0] = a8;
  v23[1] = a2;
  v24 = a3;
  v25 = a4;
  v15 = *(a5 - 8);
  v16 = *(v15 + 64);
  MEMORY[0x1EEE9AC00](a1);
  v18 = v23 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = *(a9 + 8);
  dispatch thunk of Collection.startIndex.getter();
  v20 = v29;
  result = dispatch thunk of Collection.endIndex.getter();
  if (v28 >> 14 < v20 >> 14)
  {
    __break(1u);
  }

  else
  {
    v22 = v27;
    result = RangeReplaceableCollection<>.replacing<A, B, C>(_:subrange:maxReplacements:with:)(a1, v20, v24, v25, a5, v18, a7, v23[0], a9, a10, a11);
    if (!v22)
    {
      (*(v15 + 8))(v11, a5);
      return (*(v15 + 32))(v11, v18, a5);
    }
  }

  return result;
}

uint64_t DefaultSearcherState.init(position:end:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = type metadata accessor for DefaultSearcherState.Position();
  (*(*(v6 - 8) + 32))(a3, a1, v6);
  v7 = *(type metadata accessor for DefaultSearcherState() + 36);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v9 = *(*(AssociatedTypeWitness - 8) + 32);

  return v9(a3 + v7, a2, AssociatedTypeWitness);
}

uint64_t StatelessCollectionSearcher.state(for:in:)@<X0>(uint64_t a1@<X1>, uint64_t a2@<X3>, uint64_t a3@<X8>)
{
  v18 = a3;
  v4 = *(a2 + 8);
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v6 = *(AssociatedTypeWitness - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v9 = &v17 - v8;
  v10 = type metadata accessor for DefaultSearcherState.Position();
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v13 = &v17 - v12;
  v14 = *(v6 + 16);
  v14(&v17 - v12, a1, AssociatedTypeWitness);
  (*(v6 + 56))(v13, 0, 1, AssociatedTypeWitness);
  swift_getAssociatedConformanceWitness();
  v15 = type metadata accessor for Range();
  v14(v9, a1 + *(v15 + 36), AssociatedTypeWitness);
  swift_checkMetadataState();
  return DefaultSearcherState.init(position:end:)(v13, v9, v18);
}

uint64_t StatelessCollectionSearcher.search(_:_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, char *a5@<X8>)
{
  v91 = a4;
  v92 = a1;
  v95 = a5;
  v7 = *(a4 + 8);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v90 = a3;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v10 = swift_getAssociatedTypeWitness();
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v86 = *(TupleTypeMetadata2 - 8);
  v11 = *(v86 + 64);
  v12 = MEMORY[0x1EEE9AC00](TupleTypeMetadata2);
  v88 = &v68 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v85 = &v68 - v14;
  v93 = swift_getAssociatedConformanceWitness();
  v15 = type metadata accessor for Range();
  v16 = type metadata accessor for Optional();
  v81 = *(v16 - 8);
  v82 = v16;
  v17 = *(v81 + 64);
  v18 = MEMORY[0x1EEE9AC00](v16);
  v87 = &v68 - v19;
  v20 = v15;
  v21 = *(v15 - 8);
  v22 = *(v21 + 64);
  v23 = MEMORY[0x1EEE9AC00](v18);
  v84 = &v68 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v23);
  v83 = &v68 - v25;
  v94 = AssociatedConformanceWitness;
  v26 = type metadata accessor for DefaultSearcherState.Position();
  v27 = *(v26 - 8);
  v28 = *(v27 + 64);
  v29 = MEMORY[0x1EEE9AC00](v26);
  v78 = &v68 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = MEMORY[0x1EEE9AC00](v29);
  v33 = &v68 - v32;
  v34 = *(v10 - 8);
  v35 = *(v34 + 64);
  v36 = MEMORY[0x1EEE9AC00](v31);
  v79 = &v68 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v36);
  v39 = &v68 - v38;
  (*(v27 + 16))(v33, a2, v26);
  if ((*(v34 + 48))(v33, 1, v10) == 1)
  {
    (*(v27 + 8))(v33, v26);
    goto LABEL_6;
  }

  v74 = v27;
  v75 = v26;
  v80 = v21;
  v77 = v20;
  v40 = *(v34 + 32);
  v40(v39, v33, v10);
  v71 = AssociatedTypeWitness;
  v41 = *(type metadata accessor for DefaultSearcherState() + 36);
  result = dispatch thunk of static Comparable.<= infix(_:_:)();
  if (result)
  {
    v43 = v34;
    v44 = v40;
    v45 = v85;
    v44(v85, v39, v10);
    v46 = TupleTypeMetadata2;
    v47 = *(v43 + 16);
    v48 = &v45[*(TupleTypeMetadata2 + 48)];
    v73 = a2;
    v70 = v43 + 16;
    v69 = v47;
    v47(v48, (a2 + v41), v10);
    v49 = v86;
    v50 = v88;
    (*(v86 + 16))(v88, v45, v46);
    v76 = *(v46 + 48);
    v51 = v84;
    v44(v84, v50, v10);
    v72 = v43;
    v52 = *(v43 + 8);
    v68 = v43 + 8;
    v52(&v50[v76], v10);
    (*(v49 + 32))(v50, v45, v46);
    v53 = v77;
    v44(&v51[*(v77 + 36)], &v50[*(v46 + 48)], v10);
    TupleTypeMetadata2 = v52;
    v52(v50, v10);
    v54 = v87;
    (*(v91 + 2))(v92, v51, v90);
    v21 = v80;
    (*(v80 + 8))(v51, v53);
    v20 = v53;
    if ((*(v21 + 48))(v54, 1, v53) != 1)
    {
      v57 = *(v21 + 32);
      v58 = v83;
      v57(v83, v54, v53);
      v59 = Range.isEmpty.getter();
      v56 = v95;
      if (v59)
      {
        v91 = v57;
        v60 = *(v53 + 36);
        v61 = v79;
        dispatch thunk of Collection.endIndex.getter();
        v62 = *(v93 + 8);
        v93 = v60;
        v63 = dispatch thunk of static Equatable.== infix(_:_:)();
        (TupleTypeMetadata2)(v61, v10);
        if (v63)
        {
          v64 = v73;
          (*(v74 + 8))(v73, v75);
          (*(v72 + 56))(v64, 1, 1, v10);
          v58 = v83;
        }

        else
        {
          v66 = v83;
          v67 = v78;
          dispatch thunk of Collection.index(after:)();
          (*(v72 + 56))(v67, 0, 1, v10);
          (*(v74 + 40))(v73, v67, v75);
          v58 = v66;
        }

        v57 = v91;
      }

      else
      {
        v65 = v73;
        (*(v74 + 8))(v73, v75);
        v69(v65, &v58[*(v53 + 36)], v10);
        (*(v72 + 56))(v65, 0, 1, v10);
      }

      v57(v56, v58, v20);
      v55 = 0;
      v21 = v80;
      return (*(v21 + 56))(v56, v55, 1, v20);
    }

    (*(v81 + 8))(v54, v82);
LABEL_6:
    v55 = 1;
    v56 = v95;
    return (*(v21 + 56))(v56, v55, 1, v20);
  }

  __break(1u);
  return result;
}

int64_t zAlgorithm<A>(_:by:)(uint64_t a1, uint64_t (*a2)(char *, char *), uint64_t a3, uint64_t a4)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySiGMd, &_ss23_ContiguousArrayStorageCySiGMR);
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_18E5ED040;
  result = MEMORY[0x193ACEA40](a1, a4);
  *(v6 + 32) = result;
  if (result >= 2)
  {
    goto LABEL_25;
  }

  while (1)
  {
    v8 = swift_allocObject();
    *(v8 + 16) = v6;
    v9 = swift_allocObject();
    *(v9 + 16) = 0;
    v10 = swift_allocObject();
    *(v10 + 16) = 0;
    type metadata accessor for Array();
    swift_getWitnessTable();
    RandomAccessCollection<>.indices.getter();
    swift_getCanonicalSpecializedMetadata();
    lazy protocol witness table accessor for type Range<Int> and conformance <> Range<A>(&lazy protocol witness table cache variable for type Range<Int> and conformance <> Range<A>);
    result = Collection.dropFirst(_:)();
    v6 = v26;
    if (v26 == v27)
    {
LABEL_3:
      v11 = *(v8 + 16);

      return v11;
    }

    if (v27 < v26)
    {
      break;
    }

    if (v26 >= v27)
    {
      goto LABEL_27;
    }

    v23 = a4;
    while (1)
    {
      v12 = *(v10 + 16);
      if (v6 >= v12)
      {
        result = compare #1 <A>(start:minLength:) in zAlgorithm<A>(_:by:)(v6, 0, a1, a2, a3, v8, v9, v10, a4);
        goto LABEL_8;
      }

      v13 = v12 - v6;
      if (__OFSUB__(v12, v6))
      {
        break;
      }

      v14 = *(v9 + 16);
      v15 = __OFSUB__(v6, v14);
      v16 = v6 - v14;
      if (v15)
      {
        goto LABEL_22;
      }

      if ((v16 & 0x8000000000000000) != 0)
      {
        goto LABEL_23;
      }

      v17 = *(v8 + 16);
      v18 = *(v17 + 16);
      if (v16 >= v18)
      {
        goto LABEL_24;
      }

      v19 = *(v17 + 8 * v16 + 32);
      if (v19 >= v13)
      {
        result = compare #1 <A>(start:minLength:) in zAlgorithm<A>(_:by:)(v6, v13, a1, a2, a3, v8, v9, v10, a4);
      }

      else
      {
        v20 = *(v8 + 16);
        result = swift_isUniquelyReferenced_nonNull_native();
        if ((result & 1) == 0)
        {
          result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v18 + 1, 1, v17);
          v17 = result;
        }

        v22 = *(v17 + 16);
        v21 = *(v17 + 24);
        if (v22 >= v21 >> 1)
        {
          result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v21 > 1), v22 + 1, 1, v17);
          v17 = result;
        }

        *(v17 + 16) = v22 + 1;
        *(v17 + 8 * v22 + 32) = v19;
        *(v8 + 16) = v17;
        a4 = v23;
      }

LABEL_8:
      if (v27 == ++v6)
      {
        goto LABEL_3;
      }
    }

    __break(1u);
LABEL_22:
    __break(1u);
LABEL_23:
    __break(1u);
LABEL_24:
    __break(1u);
LABEL_25:
    v6 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(1, result, 0, v6);
  }

  __break(1u);
LABEL_27:
  __break(1u);
  return result;
}

uint64_t compare #1 <A>(start:end:minLength:) in ZSearcher.search(_:in:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t (*a5)(char *, char *)@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, void (*a8)(uint64_t, char *, uint64_t)@<X7>, uint64_t a9@<X8>, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15)
{
  v82 = a2;
  v83 = a8;
  v80 = a6;
  v81 = a7;
  v74 = a9;
  v75 = a1;
  v78 = a11;
  v79 = a5;
  v77 = a10;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v67 = *(TupleTypeMetadata2 - 8);
  v18 = *(v67 + 64);
  v19 = MEMORY[0x1EEE9AC00](TupleTypeMetadata2);
  v69 = v65 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v19);
  v66 = v65 - v21;
  v22 = *(a15 + 8);
  v23 = swift_getAssociatedTypeWitness();
  v72 = *(v23 - 8);
  v24 = *(v72 + 64);
  v25 = MEMORY[0x1EEE9AC00](v23);
  v27 = v65 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = MEMORY[0x1EEE9AC00](v25);
  v30 = v65 - v29;
  v31 = *(AssociatedTypeWitness - 8);
  v32 = *(v31 + 64);
  MEMORY[0x1EEE9AC00](v28);
  v34 = v65 - v33;
  v70 = swift_projectBox();
  v71 = swift_projectBox();
  v73 = v31;
  v35 = *(v31 + 16);
  v65[1] = v31 + 16;
  v65[0] = v35;
  v35(v34, v82, AssociatedTypeWitness);
  v36 = a4;
  v37 = MEMORY[0x193ACEA60](a4, v23);
  v82 = AssociatedTypeWitness;
  v84 = a15;
  if (v37 != a3)
  {
    AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
    v78 = a14;
    v39 = AssociatedConformanceWitness;
    v40 = type metadata accessor for Range();
    v76 = *(v39 + 8);
    v77 = v40;
    v41 = (v72 + 16);
    v42 = (v72 + 8);
    do
    {
      v43 = *(v77 + 36);
      if (dispatch thunk of static Equatable.== infix(_:_:)())
      {
        break;
      }

      Array.subscript.getter();
      v44 = dispatch thunk of Collection.subscript.read();
      (*v41)(v27);
      (v44)(v85, 0);
      LOBYTE(v44) = v79(v30, v27);
      v45 = *v42;
      (*v42)(v27, v23);
      result = (v45)(v30, v23);
      if ((v44 & 1) == 0)
      {
        break;
      }

      if (__OFADD__(a3, 1))
      {
        __break(1u);
        goto LABEL_13;
      }

      ++a3;
      dispatch thunk of Collection.formIndex(after:)();
    }

    while (a3 != MEMORY[0x193ACEA60](v36, v23));
  }

  if (a3 == MEMORY[0x193ACEA40](v36, v23))
  {
    v47 = v82;
    v48 = swift_getAssociatedConformanceWitness();
    v49 = v75;
    result = dispatch thunk of static Comparable.<= infix(_:_:)();
    if (result)
    {
      v84 = v48;
      v50 = v66;
      (v65[0])(v66, v49, v47);
      v51 = TupleTypeMetadata2;
      v52 = v73;
      v53 = *(v73 + 32);
      v53(&v50[*(TupleTypeMetadata2 + 48)], v34, v47);
      v54 = v53;
      v83 = v53;
      v55 = v67;
      v56 = v69;
      (*(v67 + 16))(v69, v50, v51);
      v57 = *(v51 + 48);
      v58 = v74;
      v54(v74, v56, v47);
      v59 = *(v52 + 8);
      v59(&v56[v57], v47);
      (*(v55 + 32))(v56, v50, v51);
      v60 = *(v51 + 48);
      v61 = type metadata accessor for Range();
      v83(v58 + *(v61 + 36), &v56[v60], v47);
      v59(v56, v47);
      return (*(*(v61 - 8) + 56))(v58, 0, 1, v61);
    }

    else
    {
LABEL_13:
      __break(1u);
    }
  }

  else
  {
    v62 = v73;
    v63 = v82;
    (*(v73 + 24))(v70, v75, v82);
    (*(v62 + 40))(v71, v34, v63);
    *(a12 + 16) = 0;
    *(a13 + 16) = a3;
    swift_getAssociatedConformanceWitness();
    v64 = type metadata accessor for Range();
    return (*(*(v64 - 8) + 56))(v74, 1, 1, v64);
  }

  return result;
}

uint64_t protocol witness for CollectionSearcher.search(_:_:) in conformance ZSearcher<A>@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char *a4@<X8>)
{
  WitnessTable = swift_getWitnessTable();

  return StatelessCollectionSearcher.search(_:_:)(a1, a2, a3, WitnessTable, a4);
}

uint64_t compare #1 <A>(start:minLength:) in zAlgorithm<A>(_:by:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(char *, char *), uint64_t a5, char *a6, uint64_t a7, void (*a8)(char *, uint64_t), uint64_t a9)
{
  v31 = a6;
  v32 = a4;
  v13 = *(a9 - 8);
  v14 = *(v13 + 64);
  v15 = MEMORY[0x1EEE9AC00](a1);
  v17 = &v28 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = MEMORY[0x1EEE9AC00](v15);
  v20 = &v28 - v19;
  v30 = v18;
  v22 = v18 + v21;
  if (__OFADD__(v18, v21))
  {
LABEL_16:
    __break(1u);
LABEL_17:
    result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v17 + 2) + 1, 1, v17);
    v17 = result;
    *(v20 + 2) = result;
    goto LABEL_12;
  }

  v33 = MEMORY[0x193ACEA40](a3, a9);
  if (v22 < v33)
  {
    v28 = a7;
    v29 = a8;
    a7 = v13 + 8;
    while (1)
    {
      Array.subscript.getter();
      Array.subscript.getter();
      v23 = v32(v20, v17);
      a8 = *a7;
      (*a7)(v17, a9);
      a8(v20, a9);
      if ((v23 & 1) == 0)
      {
        v33 = v22;
        goto LABEL_10;
      }

      v24 = a2 + 1;
      if (__OFADD__(a2, 1))
      {
        break;
      }

      ++v22;
      ++a2;
      if (v22 >= v33)
      {
        a2 = v24;
LABEL_10:
        a7 = v28;
        a8 = v29;
        goto LABEL_11;
      }
    }

    __break(1u);
    goto LABEL_16;
  }

  v33 = v22;
LABEL_11:
  v20 = v31;
  v17 = *(v31 + 2);
  result = swift_isUniquelyReferenced_nonNull_native();
  *(v20 + 2) = v17;
  if ((result & 1) == 0)
  {
    goto LABEL_17;
  }

LABEL_12:
  v27 = *(v17 + 2);
  v26 = *(v17 + 3);
  if (v27 >= v26 >> 1)
  {
    result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v26 > 1), v27 + 1, 1, v17);
    v17 = result;
  }

  *(v17 + 2) = v27 + 1;
  *&v17[8 * v27 + 32] = a2;
  *(v20 + 2) = v17;
  *(a7 + 16) = v30;
  *(a8 + 2) = v33;
  return result;
}

void Compiler.ByteCodeGen.emitNode(_:)(unint64_t a1)
{
  v5 = type metadata accessor for DSLTree.Atom(0);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v8 = &v98 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for DSLTree.QuantificationKind(0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v12 = &v98 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for DSLTree._AST.QuantificationAmount(0);
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x1EEE9AC00](v13 - 8);
  v16 = &v98 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = type metadata accessor for DSLTree._AST.GroupKind(0);
  v18 = *(*(v17 - 8) + 64);
  MEMORY[0x1EEE9AC00](v17 - 8);
  v20 = &v98 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  switch((a1 >> 59) & 0x1E | (a1 >> 2) & 1)
  {
    case 1uLL:
      v63 = *((a1 & 0xFFFFFFFFFFFFFFBLL) + 0x10);

      Compiler.ByteCodeGen.emitConcatenation(_:)(v64);
      goto LABEL_32;
    case 2uLL:
      v29 = *v1;
      v30 = *(*v1 + 2);
      if (v30)
      {
        v31 = a1 & 0xFFFFFFFFFFFFFFBLL;
        v32 = *((a1 & 0xFFFFFFFFFFFFFFBLL) + 0x10);
        a1 = *((a1 & 0xFFFFFFFFFFFFFFBLL) + 0x18);
        v33 = *(v31 + 32);
        v20 = *(v31 + 40);
        v34 = *(v31 + 56);
        v103 = *(v31 + 48);
        v35 = *(v31 + 64);
        v36 = *(v31 + 72);
        v37 = *(v31 + 80);
        v38 = *(v31 + 88);
        v3 = *&v29[4 * v30 + 28];
        v106 = v34;
        v98 = v32;
        v99 = v35;
        v100 = v36;
        v101 = v37;
        outlined copy of CaptureTransform?(v34, v35, v36, v37, v38);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v102 = v38;
        if (isUniquelyReferenced_nonNull_native)
        {
LABEL_9:
          v41 = *(v29 + 2);
          v40 = *(v29 + 3);
          if (v41 >= v40 >> 1)
          {
            v29 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v40 > 1), v41 + 1, 1, v29);
          }

          *(v29 + 2) = v41 + 1;
          *&v29[4 * v41 + 32] = v3;
          *v1 = v29;
          v30 = v1 + *(type metadata accessor for Compiler.ByteCodeGen(0) + 20);
          if ((v20 & 1) == 0)
          {
            v42 = *(v30 + 17);
            v20 = v1;
            v43 = &v30[*(type metadata accessor for MEProgram.Builder(0) + 100)];
            specialized Dictionary._Variant.updateValue(_:forKey:)(v42, v33);
            v1 = v20;
          }

          if (a1)
          {
            v33 = v1;
            v44 = &v30[*(type metadata accessor for MEProgram.Builder(0) + 84)];
            v45._countAndFlagsBits = v98;
            v45._object = a1;
            CaptureList.indexOfCapture(named:)(v45);
            v1 = v33;
          }

          v46 = *(v30 + 17);
          if (!__OFADD__(v46, 1))
          {
            *(v30 + 17) = v46 + 1;
            v47 = *v30;
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v47 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v47 + 16) + 1, 1, v47, &_ss23_ContiguousArrayStorageCy17_StringProcessing11InstructionVGMd, &_ss23_ContiguousArrayStorageCy17_StringProcessing11InstructionVGMR);
            }

            v49 = *(v47 + 16);
            v48 = *(v47 + 24);
            v50 = v49 + 1;
            if (v49 >= v48 >> 1)
            {
              v47 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v48 > 1), v49 + 1, 1, v47, &_ss23_ContiguousArrayStorageCy17_StringProcessing11InstructionVGMd, &_ss23_ContiguousArrayStorageCy17_StringProcessing11InstructionVGMR);
            }

            *(v47 + 16) = v50;
            *(v47 + 8 * v49 + 32) = v46 | 0x1700000000000000;
            *v30 = v47;
            v51 = v1;
            v52 = Compiler.ByteCodeGen.emitNode(_:)(v103);
            if (!v2)
            {
              v47 = v52;
              v50 = v53;
              v54 = *v30;
              v81 = swift_isUniquelyReferenced_nonNull_native();
              v103 = v46 | 0x1800000000000000;
              if (v81)
              {
LABEL_54:
                v83 = *(v54 + 2);
                v82 = *(v54 + 3);
                v84 = v83 + 1;
                if (v83 >= v82 >> 1)
                {
                  v54 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v82 > 1), v83 + 1, 1, v54, &_ss23_ContiguousArrayStorageCy17_StringProcessing11InstructionVGMd, &_ss23_ContiguousArrayStorageCy17_StringProcessing11InstructionVGMR);
                }

                *(v54 + 2) = v84;
                *&v54[8 * v83 + 32] = v103;
                *v30 = v54;
                if (v50)
                {
                  v85 = v106;
                }

                else
                {
                  v50 = v47 | (v46 << 16) | 0x1A00000000000000;
                  v86 = *(v54 + 3);
                  v47 = v83 + 2;
                  if ((v83 + 2) > (v86 >> 1))
                  {
                    v54 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v86 > 1), v83 + 2, 1, v54, &_ss23_ContiguousArrayStorageCy17_StringProcessing11InstructionVGMd, &_ss23_ContiguousArrayStorageCy17_StringProcessing11InstructionVGMR);
                  }

                  v85 = v106;
                  *(v54 + 2) = v47;
                  *&v54[8 * v84 + 32] = v50;
                  *v30 = v54;
                }

                if (!v85)
                {
                  goto LABEL_69;
                }

                v106 = v51;
                v87 = swift_allocObject();
                v88 = v99;
                v89 = v100;
                *(v87 + 16) = v85;
                *(v87 + 24) = v88;
                v90 = v101;
                *(v87 + 32) = v89;
                *(v87 + 40) = v90;
                *(v87 + 48) = v102;
                v47 = *(v30 + 8);
                v51 = *(v47 + 16);
                v50 = swift_allocObject();
                *(v50 + 16) = partial apply for closure #1 in Compiler.ByteCodeGen.emitNode(_:);
                *(v50 + 24) = v87;
                if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
                {
                  goto LABEL_86;
                }

                while (1)
                {
                  v92 = *(v47 + 16);
                  v91 = *(v47 + 24);
                  if (v92 >= v91 >> 1)
                  {
                    v47 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v91 > 1), v92 + 1, 1, v47, &_ss23_ContiguousArrayStorageCyypSgSS_17_StringProcessing9ProcessorV14_StoredCaptureVtKcGMd, &_ss23_ContiguousArrayStorageCyypSgSS_17_StringProcessing9ProcessorV14_StoredCaptureVtKcGMR);
                  }

                  *(v47 + 16) = v92 + 1;
                  v93 = (v47 + 16 * v92);
                  *(v93 + 4) = partial apply for thunk for @escaping @callee_guaranteed (@guaranteed String, @in_guaranteed Processor._StoredCapture) -> (@out Any?, @error @owned Error);
                  *(v93 + 5) = v50;
                  *(v30 + 8) = v47;
                  v50 = v46 | (v51 << 16) | 0x1900000000000000;
                  v95 = *(v54 + 2);
                  v94 = *(v54 + 3);
                  v47 = v95 + 1;
                  if (v95 >= v94 >> 1)
                  {
                    v54 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v94 > 1), v95 + 1, 1, v54, &_ss23_ContiguousArrayStorageCy17_StringProcessing11InstructionVGMd, &_ss23_ContiguousArrayStorageCy17_StringProcessing11InstructionVGMR);
                  }

                  v51 = v106;
                  *(v54 + 2) = v47;
                  *&v54[8 * v95 + 32] = v50;
                  *v30 = v54;
LABEL_69:
                  v54 = *v51;
                  if (*(*v51 + 16))
                  {
                    v96 = *v51;
                    if (swift_isUniquelyReferenced_nonNull_native())
                    {
                      v97 = *(v54 + 2);
                      if (v97)
                      {
                        goto LABEL_72;
                      }

                      goto LABEL_85;
                    }
                  }

                  else
                  {
                    __break(1u);
                  }

                  v54 = specialized _ArrayBuffer._consumeAndCreateNew()(v54);
                  v97 = *(v54 + 2);
                  if (v97)
                  {
LABEL_72:
                    *(v54 + 2) = v97 - 1;
                    *v51 = v54;
                    return;
                  }

LABEL_85:
                  __break(1u);
LABEL_86:
                  v47 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v47 + 16) + 1, 1, v47, &_ss23_ContiguousArrayStorageCyypSgSS_17_StringProcessing9ProcessorV14_StoredCaptureVtKcGMd, &_ss23_ContiguousArrayStorageCyypSgSS_17_StringProcessing9ProcessorV14_StoredCaptureVtKcGMR);
                }
              }

LABEL_82:
              v54 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v54 + 2) + 1, 1, v54, &_ss23_ContiguousArrayStorageCy17_StringProcessing11InstructionVGMd, &_ss23_ContiguousArrayStorageCy17_StringProcessing11InstructionVGMR);
              goto LABEL_54;
            }

            outlined consume of CaptureTransform?(v106, v99, v100, v101, v102);
            v54 = *v1;
            if (*(*v51 + 16))
            {
              v55 = *v51;
              if (swift_isUniquelyReferenced_nonNull_native())
              {
                v56 = *(v54 + 2);
                if (v56)
                {
LABEL_24:
                  *(v54 + 2) = v56 - 1;
                  *v51 = v54;
                  return;
                }

                goto LABEL_81;
              }
            }

            else
            {
              __break(1u);
            }

            v54 = specialized _ArrayBuffer._consumeAndCreateNew()(v54);
            v56 = *(v54 + 2);
            if (v56)
            {
              goto LABEL_24;
            }

LABEL_81:
            __break(1u);
            goto LABEL_82;
          }

          __break(1u);
          goto LABEL_78;
        }

LABEL_76:
        v29 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, (v30 + 1), 1, v29);
        goto LABEL_9;
      }

      __break(1u);
LABEL_74:
      v1 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, (v1[2] + 1), 1, v1, &_ss23_ContiguousArrayStorageCySS5IndexV_yptSgSS_ADSnyADGtKcGMd, &_ss23_ContiguousArrayStorageCySS5IndexV_yptSgSS_ADSnyADGtKcGMR);
LABEL_34:
      v29 = v1[2];
      v69 = v1[3];
      if (v29 >= v69 >> 1)
      {
        v1 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v69 > 1), (v29 + 1), 1, v1, &_ss23_ContiguousArrayStorageCySS5IndexV_yptSgSS_ADSnyADGtKcGMd, &_ss23_ContiguousArrayStorageCySS5IndexV_yptSgSS_ADSnyADGtKcGMR);
      }

      v1[2] = v29 + 1;
      v70 = &v1[2 * v29];
      v70[4] = partial apply for thunk for @escaping @callee_guaranteed (@guaranteed String, @unowned String.Index, @unowned Range<String.Index>) -> (@out (String.Index, Any)?, @error @owned Error);
      v70[5] = a1;
      *(v30 + 9) = v1;
      v33 = *(v30 + 13);
      if (__OFADD__(v33, 1))
      {
        __break(1u);
        goto LABEL_76;
      }

      *(v30 + 13) = v33 + 1;
      v1 = *v30;
      if (swift_isUniquelyReferenced_nonNull_native())
      {
        goto LABEL_38;
      }

LABEL_78:
      v1 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, (v1[2] + 1), 1, v1, &_ss23_ContiguousArrayStorageCy17_StringProcessing11InstructionVGMd, &_ss23_ContiguousArrayStorageCy17_StringProcessing11InstructionVGMR);
LABEL_38:
      v72 = v1[2];
      v71 = v1[3];
      if (v72 >= v71 >> 1)
      {
        v1 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v71 > 1), v72 + 1, 1, v1, &_ss23_ContiguousArrayStorageCy17_StringProcessing11InstructionVGMd, &_ss23_ContiguousArrayStorageCy17_StringProcessing11InstructionVGMR);
      }

      v1[2] = (v72 + 1);
      v1[v72 + 4] = (v20 | (v33 << 16) | 0x1000000000000000);
      *v30 = v1;
      return;
    case 3uLL:
      v57 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s17_StringProcessing7DSLTreeV4_ASTO9GroupKindV_AC4NodeOtMd, &_s17_StringProcessing7DSLTreeV4_ASTO9GroupKindV_AC4NodeOtMR);
      v58 = swift_projectBox();
      v59 = *(v58 + *(v57 + 48));
      outlined init with copy of DSLTree._AST.AbsentFunction(v58, v20, type metadata accessor for DSLTree._AST.GroupKind);

      Compiler.ByteCodeGen.emitNoncapturingGroup(_:_:)(v20, v59);
      outlined destroy of MEProgram(v20, type metadata accessor for DSLTree._AST.GroupKind);
      goto LABEL_27;
    case 4uLL:
      v26 = *((a1 & 0xFFFFFFFFFFFFFFBLL) + 0x10);

      Compiler.ByteCodeGen.emitNode(_:)(v26);
LABEL_27:

      return;
    case 5uLL:
      type metadata accessor for Unsupported();
      lazy protocol witness table accessor for type Unsupported and conformance Unsupported(&lazy protocol witness table cache variable for type Unsupported and conformance Unsupported, MEMORY[0x1E69E8998]);
      swift_allocError();
      v24 = 0x6F697469646E6F43;
      v23 = 0xEC000000736C616ELL;
      v25 = 1281;
      goto LABEL_42;
    case 6uLL:
      v73 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s17_StringProcessing7DSLTreeV4_ASTO20QuantificationAmountV_AC0E4KindOAC4NodeOtMd, &_s17_StringProcessing7DSLTreeV4_ASTO20QuantificationAmountV_AC0E4KindOAC4NodeOtMR);
      v74 = swift_projectBox();
      v75 = *(v73 + 48);
      v76 = *(v74 + *(v73 + 64));
      outlined init with copy of DSLTree._AST.AbsentFunction(v74, v16, type metadata accessor for DSLTree._AST.QuantificationAmount);
      outlined init with copy of DSLTree._AST.AbsentFunction(v74 + v75, v12, type metadata accessor for DSLTree.QuantificationKind);

      Compiler.ByteCodeGen.emitQuantification(_:_:_:)(v16, v12, v76);
      if (v2)
      {

        outlined destroy of MEProgram(v12, type metadata accessor for DSLTree.QuantificationKind);
        outlined destroy of MEProgram(v16, type metadata accessor for DSLTree._AST.QuantificationAmount);
        return;
      }

      outlined destroy of MEProgram(v12, type metadata accessor for DSLTree.QuantificationKind);
      v79 = type metadata accessor for DSLTree._AST.QuantificationAmount;
      v80 = v16;
      goto LABEL_52;
    case 7uLL:
      v60 = a1 & 0xFFFFFFFFFFFFFFBLL;
      v61 = *((a1 & 0xFFFFFFFFFFFFFFBLL) + 0x10);
      v62 = *(v60 + 24);
      v104 = v61;
      v105 = v62;

      if (DSLTree.CustomCharacterClass.containsDot.getter())
      {

        if (v62)
        {
          type metadata accessor for Unsupported();
          lazy protocol witness table accessor for type Unsupported and conformance Unsupported(&lazy protocol witness table cache variable for type Unsupported and conformance Unsupported, MEMORY[0x1E69E8998]);
          swift_allocError();
          v24 = 0x6465747265766E49;
          v23 = 0xEC000000796E6120;
          v25 = 1291;
LABEL_42:
          MEMORY[0x193ACDF10](v24, v23, "/Library/Caches/com.apple.xbs/Sources/swiftlang_overlay_Platform_Device/swift-experimental-string-processing/Sources/_StringProcessing/ByteCodeGen.swift", 152, 2, v25);
          swift_willThrow();
        }

        else
        {
          Compiler.ByteCodeGen.emitDot()();
        }
      }

      else
      {
        v104 = v61;
        v105 = v62;
        Compiler.ByteCodeGen.emitCustomCharacterClass(_:)(&v104);
LABEL_32:
      }

      return;
    case 8uLL:
      v77 = swift_projectBox();
      outlined init with copy of DSLTree._AST.AbsentFunction(v77, v8, type metadata accessor for DSLTree.Atom);
      Compiler.ByteCodeGen.emitAtom(_:)(v8);
      if (v2)
      {
        outlined destroy of MEProgram(v8, type metadata accessor for DSLTree.Atom);
      }

      else
      {
        v79 = type metadata accessor for DSLTree.Atom;
        v80 = v8;
LABEL_52:
        outlined destroy of MEProgram(v80, v79);
      }

      return;
    case 9uLL:
    case 0x10uLL:
      return;
    case 0xAuLL:
      v27 = *((a1 & 0xFFFFFFFFFFFFFFBLL) + 0x10);
      v28 = *((a1 & 0xFFFFFFFFFFFFFFBLL) + 0x18);

      Compiler.ByteCodeGen.emitQuotedLiteral(_:)(v27, v28);
      goto LABEL_32;
    case 0xBuLL:
      type metadata accessor for Unsupported();
      lazy protocol witness table accessor for type Unsupported and conformance Unsupported(&lazy protocol witness table cache variable for type Unsupported and conformance Unsupported, MEMORY[0x1E69E8998]);
      swift_allocError();
      v24 = 0x6620746E65736261;
      v23 = 0xEF6E6F6974636E75;
      v25 = 1307;
      goto LABEL_42;
    case 0xCuLL:
      v78 = *swift_projectBox();

      Compiler.ByteCodeGen.emitNode(_:)(v78);

      return;
    case 0xDuLL:
      type metadata accessor for Unsupported();
      lazy protocol witness table accessor for type Unsupported and conformance Unsupported(&lazy protocol witness table cache variable for type Unsupported and conformance Unsupported, MEMORY[0x1E69E8998]);
      swift_allocError();
      v24 = 0x72656D75736E6F63;
      v23 = 0xE800000000000000;
      v25 = 1309;
      goto LABEL_42;
    case 0xEuLL:
      v65 = a1 & 0xFFFFFFFFFFFFFFBLL;
      v66 = *((a1 & 0xFFFFFFFFFFFFFFBLL) + 0x18);
      v67 = *(v65 + 32);
      v68 = swift_allocObject();
      *(v68 + 16) = v66;
      *(v68 + 24) = v67;
      v30 = v1 + *(type metadata accessor for Compiler.ByteCodeGen(0) + 20);
      v1 = *(v30 + 9);
      v20 = v1[2];
      a1 = swift_allocObject();
      *(a1 + 16) = partial apply for closure #1 in Compiler.ByteCodeGen.emitMatcher(_:);
      *(a1 + 24) = v68;

      if (swift_isUniquelyReferenced_nonNull_native())
      {
        goto LABEL_34;
      }

      goto LABEL_74;
    case 0xFuLL:
      type metadata accessor for Unsupported();
      lazy protocol witness table accessor for type Unsupported and conformance Unsupported(&lazy protocol witness table cache variable for type Unsupported and conformance Unsupported, MEMORY[0x1E69E8998]);
      swift_allocError();
      v23 = 0x800000018E5F2BC0;
      v24 = 0xD000000000000014;
      v25 = 1315;
      goto LABEL_42;
    default:
      v21 = *(a1 + 16);

      specialized Compiler.ByteCodeGen.emitAlternationGen<A>(_:withBacktracking:_:)(v22, v1);
      goto LABEL_32;
  }
}

uint64_t MEProgram.Builder.assemble()@<X0>(uint64_t a1@<X8>)
{
  v69 = type metadata accessor for MEProgram.Builder(0);
  v4 = *(v1 + v69[24]);
  v5 = v4 + 64;
  v6 = 1 << *(v4 + 32);
  v7 = -1;
  if (v6 < 64)
  {
    v7 = ~(-1 << v6);
  }

  v8 = v7 & *(v4 + 64);
  v9 = *v1;
  v75 = *(v1 + v69[24]);

  v67 = a1;
  v68 = v2;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    goto LABEL_79;
  }

LABEL_4:
  v10 = 0;
  v82 = v1;
  *v1 = v9;
  v11 = (v6 + 63) >> 6;
  v12 = v9 + 32;
  do
  {
LABEL_5:
    if (!v8)
    {
      while (1)
      {
        v13 = v10 + 1;
        if (__OFADD__(v10, 1))
        {
          __break(1u);
          goto LABEL_73;
        }

        if (v13 >= v11)
        {
          break;
        }

        v8 = *(v5 + 8 * v13);
        ++v10;
        if (v8)
        {
          v10 = v13;
          goto LABEL_10;
        }
      }

      v22 = v68;
      v23 = v82;
      if (v68)
      {
        return result;
      }

LABEL_24:
      v1 = *v23;
      if (*(v23 + 152))
      {
        goto LABEL_32;
      }

      v10 = *(v23 + 144);
      v25 = v23;
      v23 = *(v1 + 16);
      v6 = *(v25 + 80);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        goto LABEL_83;
      }

      if ((v10 & 0x8000000000000000) != 0)
      {
        goto LABEL_84;
      }

      while (v10 >= *(v6 + 16))
      {
        while (1)
        {
          __break(1u);
LABEL_86:
          v1 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v1 + 16) + 1, 1, v1, &_ss23_ContiguousArrayStorageCy17_StringProcessing11InstructionVGMd, &_ss23_ContiguousArrayStorageCy17_StringProcessing11InstructionVGMR);
LABEL_29:
          v27 = v1;
          v28 = *(v1 + 16);
          v29 = v27;
          v30 = *(v27 + 24);
          v6 = v28 + 1;
          if (v28 >= v30 >> 1)
          {
            v29 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v30 > 1), v28 + 1, 1, v29, &_ss23_ContiguousArrayStorageCy17_StringProcessing11InstructionVGMd, &_ss23_ContiguousArrayStorageCy17_StringProcessing11InstructionVGMR);
          }

          *(v29 + 2) = v6;
          v31 = &v29[8 * v28];
          v1 = v29;
          *(v31 + 4) = 0x1D00000000000000;
          *v23 = v29;
LABEL_32:
          v68 = v22;
          v9 = *(v23 + 88);
          v32 = *(v9 + 2);

          if (v32)
          {
            v8 = 0;
            v33 = v9 + 56;
            v65 = 414;
            while (v8 < *(v9 + 2))
            {
              v10 = *(v33 - 3);
              if ((v10 & 0x8000000000000000) != 0)
              {
                goto LABEL_74;
              }

              if (v10 >= *(v1 + 16))
              {
                goto LABEL_75;
              }

              v34 = *(v33 - 2);
              if ((v34 & 0x8000000000000000) != 0)
              {
                goto LABEL_76;
              }

              v35 = *(v23 + 80);
              v22 = *(v35 + 16);
              if (v34 >= v22)
              {
                goto LABEL_77;
              }

              v5 = v35 + 32;
              v36 = v35 + 32 + 16 * v34;
              if (*(v36 + 8))
              {
                __break(1u);
LABEL_88:
                __break(1u);
                return result;
              }

              v71 = *(v33 - 1);
              v73 = *v33;
              v75 = v1;
              v1 = *(v1 + 8 * v10 + 32);
              v23 = *v36;
              result = specialized Instruction.OpCode.init(rawValue:)(HIBYTE(v1));
              v6 = result;
              if (result <= 0x10u)
              {
                if (result != 4)
                {
                  if (result != 5 && result != 6)
                  {
                    goto LABEL_70;
                  }

                  v23 |= v1 << 16;
                }
              }

              else if (result - 17 >= 2 && result != 20)
              {
                if (result != 21)
                {
                  goto LABEL_70;
                }

                if (v73)
                {
                  goto LABEL_69;
                }

                if (v71 >= v22)
                {
                  __break(1u);
                  goto LABEL_81;
                }

                v38 = v5 + 16 * v71;
                if (*(v38 + 8))
                {
                  goto LABEL_88;
                }

                v23 |= *v38 << 16;
              }

              v1 = v75;
              result = swift_isUniquelyReferenced_nonNull_native();
              if ((result & 1) == 0)
              {
                result = specialized _ArrayBuffer._consumeAndCreateNew()(v75);
                v1 = result;
              }

              if (v10 >= *(v1 + 16))
              {
                goto LABEL_78;
              }

              ++v8;
              *(v1 + 8 * v10 + 32) = v23 | (v6 << 56);
              v33 += 32;
              v23 = v82;
              if (v32 == v8)
              {
                goto LABEL_58;
              }
            }

LABEL_73:
            __break(1u);
LABEL_74:
            __break(1u);
LABEL_75:
            __break(1u);
LABEL_76:
            __break(1u);
LABEL_77:
            __break(1u);
LABEL_78:
            __break(1u);
LABEL_79:
            v9 = specialized _ArrayBuffer._consumeAndCreateNew()(v9);
            goto LABEL_4;
          }

LABEL_58:
          v5 = *(v23 + 96);
          if (v5 < 0)
          {
LABEL_81:
            __break(1u);
          }

          else
          {
            v6 = *(v23 + 24);
            v10 = *(v23 + 40);
            v22 = *(v23 + 48);
            v40 = *(v23 + 56);
            v39 = *(v23 + 64);
            v41 = *(v23 + 72);
            v42 = *(v23 + 112);
            v82 = *(v23 + 104);

            v74 = v39;

            v72 = v41;

            if (v5)
            {
              v43 = static Array._allocateBufferUninitialized(minimumCapacity:)();
              *(v43 + 16) = v5;
              bzero((v43 + 32), 8 * v5);
            }

            else
            {
              v43 = MEMORY[0x1E69E7CC0];
            }

            *&v78 = &type metadata for SentinelValue;
            v44 = _sSa9repeating5countSayxGx_SitcfCyp_Tt1g5(&v76, v82);
            if ((v42 & 0x8000000000000000) == 0)
            {
              v82 = v44;
              v70 = v6;
              v64 = v22;
              v66 = v10;
              v62 = v43;
              v63 = v40;
              if (v42)
              {
                v45 = static Array._allocateBufferUninitialized(minimumCapacity:)();
                *(v45 + 16) = v42;
                v61 = v45;
                memset_pattern16((v45 + 32), &unk_18E5ED280, 8 * v42);
              }

              else
              {
                v61 = MEMORY[0x1E69E7CC0];
              }

              v76 = 0uLL;
              v77 = 1;
              v78 = 0u;
              v79 = 0u;
              v80 = 0;
              v81 = 1;
              v46 = _sSa9repeating5countSayxGx_SitcfC17_StringProcessing9ProcessorV14_StoredCaptureV_Tt1g5(&v76, *(v23 + 136));
              v59 = *(v23 + 120);
              v60 = v46;
              v47 = *(v23 + 128);
              v48 = *(v23 + 8);
              v49 = *(v23 + 9);
              v50 = v69[21];
              v51 = type metadata accessor for MEProgram(0);
              v52 = v51[8];
              v53 = type metadata accessor for CaptureList();
              (*(*(v53 - 8) + 16))(v67 + v52, v23 + v50, v53);
              v54 = *(v23 + v69[25]);
              v55 = *(v23 + v69[22]);
              v56 = *(v23 + v69[23]);
              *v67 = v1;
              *(v67 + 8) = v59;
              *(v67 + 16) = v47;
              *(v67 + 17) = v48;
              *(v67 + 18) = v49;
              *(v67 + v51[9]) = v54;
              *(v67 + v51[10]) = v55;
              *(v67 + v51[11]) = v56;
              v57 = v67 + v51[12];
              *v57 = v70;
              *(v57 + 8) = v66;
              *(v57 + 16) = v64;
              *(v57 + 24) = v63;
              *(v57 + 32) = v74;
              *(v57 + 40) = v72;
              *(v57 + 48) = 0;
              v58 = v82;
              *(v57 + 56) = v62;
              *(v57 + 64) = v58;
              *(v57 + 72) = v61;
              *(v67 + v51[13]) = v60;
            }
          }

          __break(1u);
LABEL_83:
          v6 = specialized _ArrayBuffer._consumeAndCreateNew()(v6);
          if ((v10 & 0x8000000000000000) == 0)
          {
            break;
          }

LABEL_84:
          __break(1u);
        }
      }

      v26 = v6 + 16 * v10;
      *(v26 + 32) = v23;
      *(v26 + 40) = 0;
      v23 = v82;
      v82[10] = v6;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        goto LABEL_86;
      }

      goto LABEL_29;
    }

LABEL_10:
    v1 = *(v82 + v69[25]);
    if (!*(v1 + 16) || (v14 = __clz(__rbit64(v8)) | (v10 << 6), v6 = *(*(v75 + 56) + 8 * v14), v15 = specialized __RawDictionaryStorage.find<A>(_:)(*(*(v75 + 48) + 8 * v14)), (v16 & 1) == 0))
    {

      lazy protocol witness table accessor for type RegexCompilationError and conformance RegexCompilationError();
      v22 = swift_allocError();
      *v24 = 0;
      *(v24 + 8) = 0;
      *(v24 + 16) = 2;
      result = swift_willThrow();
      v23 = v82;
      if (v22)
      {
        return result;
      }

      goto LABEL_24;
    }

    v8 &= v8 - 1;
    v17 = *(v6 + 16);
  }

  while (!v17);
  v1 = *(*(v1 + 56) + 8 * v15) << 16;

  v18 = 32;
  while (1)
  {
    v19 = *(v6 + v18);
    if ((v19 & 0x8000000000000000) != 0)
    {
      break;
    }

    if (v19 >= *(v9 + 2))
    {
      goto LABEL_68;
    }

    if (*&v12[8 * v19] == 1)
    {
      v20 = v1 + 1;
    }

    else
    {
      v20 = v1;
    }

    *&v12[8 * v19] = v20 | 0x1B00000000000000;
    v18 += 8;
    if (!--v17)
    {

      *v82 = v9;
      goto LABEL_5;
    }
  }

  __break(1u);
LABEL_68:
  __break(1u);
LABEL_69:
  v65 = 409;
LABEL_70:
  type metadata accessor for Unreachable();
  lazy protocol witness table accessor for type Unsupported and conformance Unsupported(&lazy protocol witness table cache variable for type Unreachable and conformance Unreachable, MEMORY[0x1E69E8988]);
  swift_allocError();
  MEMORY[0x193ACDEF0](0x6572203A4F444F54, 0xEC0000006E6F7361, "/Library/Caches/com.apple.xbs/Sources/swiftlang_overlay_Platform_Device/swift-experimental-string-processing/Sources/_StringProcessing/Engine/MEBuilder.swift", 157, 2, v65);
  swift_willThrow();
}

uint64_t Compiler.ByteCodeGen.emitAtom(_:)(uint64_t a1)
{
  v2 = type metadata accessor for DSLTree._AST.Atom(0);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v5 = &v86 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for DSLTree._AST.MatchingOptionSequence(0);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v9 = &v86 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for DSLTree._AST.Reference(0);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v13 = &v86 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for DSLTree.Atom(0);
  v15 = *(*(v14 - 8) + 64);
  v16 = MEMORY[0x1EEE9AC00](v14);
  v18 = &v86 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = MEMORY[0x1EEE9AC00](v16);
  v21 = &v86 - v20;
  v22 = MEMORY[0x1EEE9AC00](v19);
  v24 = &v86 - v23;
  v25 = MEMORY[0x1EEE9AC00](v22);
  v27 = &v86 - v26;
  v28 = MEMORY[0x1EEE9AC00](v25);
  v88 = &v86 - v29;
  v30 = MEMORY[0x1EEE9AC00](v28);
  v87 = &v86 - v31;
  MEMORY[0x1EEE9AC00](v30);
  v33 = (&v86 - v32);
  v90 = a1;
  outlined init with copy of DSLTree._AST.AbsentFunction(a1, &v86 - v32, type metadata accessor for DSLTree.Atom);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 4)
  {
    if (EnumCaseMultiPayload > 7)
    {
      if (EnumCaseMultiPayload == 8)
      {
        v36 = v95;
        Compiler.ByteCodeGen.emitAny()();
      }

      else
      {
        v36 = v95;
        v40 = v89;
        if (EnumCaseMultiPayload == 9)
        {
          Compiler.ByteCodeGen.emitAnyNonNewline()();
        }

        else
        {
          Compiler.ByteCodeGen.emitDot()();
          if (v40)
          {
            outlined init with copy of DSLTree._AST.AbsentFunction(v90, v27, type metadata accessor for DSLTree.Atom);
            result = swift_getEnumCaseMultiPayload();
            if (result <= 3)
            {
              if ((result - 1) < 2)
              {
                goto LABEL_48;
              }

              if (result)
              {
                return result;
              }
            }

            else
            {
              if (((1 << result) & 0x720) != 0)
              {
                goto LABEL_48;
              }

              if (((1 << result) & 0x90) == 0)
              {
                v55 = v27;
                return outlined destroy of MEProgram(v55, type metadata accessor for DSLTree.Atom);
              }
            }

            v56 = v27;
LABEL_47:
            outlined destroy of MEProgram(v56, type metadata accessor for DSLTree.Atom);
            goto LABEL_48;
          }
        }
      }

      goto LABEL_38;
    }

    if (EnumCaseMultiPayload != 5)
    {
      if (EnumCaseMultiPayload == 6)
      {
        outlined init with take of DSLTree.QuantificationKind(v33, v9, type metadata accessor for DSLTree._AST.MatchingOptionSequence);
        v35 = type metadata accessor for Compiler.ByteCodeGen(0);
        v36 = v95;
        v33 = v89;
        if (*(v95 + *(v35 + 24)))
        {
          goto LABEL_10;
        }

        v27 = v95 + *(v35 + 20);
        v13 = *(type metadata accessor for MEProgram.Builder(0) + 88);
        v21 = *&v27[v13];
        v5 = *(v21 + 16);
        LODWORD(v37) = swift_isUniquelyReferenced_nonNull_native();
        if ((v37 & 1) == 0)
        {
          goto LABEL_124;
        }

        for (; v5; v21 = v37)
        {
          v38 = *(v21 + 16);
          if (v5 > v38)
          {
            __break(1u);
            goto LABEL_131;
          }

          MatchingOptions.Representation.apply(_:)(v9);
          *&v27[v13] = v21;
LABEL_10:
          v21 = *v36;
          v5 = *(*v36 + 16);
          if (swift_isUniquelyReferenced_nonNull_native())
          {
            if (!v5)
            {
              goto LABEL_121;
            }
          }

          else
          {
LABEL_120:
            v21 = specialized _ArrayBuffer._consumeAndCreateNew()(v21);
            if (!v5)
            {
LABEL_121:
              __break(1u);
              goto LABEL_122;
            }
          }

          if (v5 <= *(v21 + 16))
          {
            MatchingOptions.Representation.apply(_:)(v9);
            outlined destroy of MEProgram(v9, type metadata accessor for DSLTree._AST.MatchingOptionSequence);
            *v36 = v21;
            goto LABEL_38;
          }

LABEL_122:
          __break(1u);
LABEL_123:
          __break(1u);
LABEL_124:
          v37 = specialized _ArrayBuffer._consumeAndCreateNew()(v21);
        }

        __break(1u);
LABEL_126:
        v21 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v21 + 16) + 1, 1, v21, &_ss23_ContiguousArrayStorageCy17_StringProcessing11InstructionVGMd, &_ss23_ContiguousArrayStorageCy17_StringProcessing11InstructionVGMR);
LABEL_107:
        v83 = *(v21 + 16);
        v82 = *(v21 + 24);
        if (v83 >= v82 >> 1)
        {
          v21 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v82 > 1), v83 + 1, 1, v21, &_ss23_ContiguousArrayStorageCy17_StringProcessing11InstructionVGMd, &_ss23_ContiguousArrayStorageCy17_StringProcessing11InstructionVGMR);
        }

        *(v21 + 16) = v83 + 1;
        *(v21 + 8 * v83 + 32) = v13;
        *(v36 + v9) = v21;
        if (v33)
        {
          goto LABEL_110;
        }

        goto LABEL_38;
      }

      outlined init with take of DSLTree.QuantificationKind(v33, v5, type metadata accessor for DSLTree._AST.Atom);
      v57 = v89;
      v58 = AST.Atom.generateConsumer(_:)(*v95);
      if (v57)
      {
        outlined destroy of MEProgram(v5, type metadata accessor for DSLTree._AST.Atom);
        outlined init with copy of DSLTree._AST.AbsentFunction(v90, v18, type metadata accessor for DSLTree.Atom);
        result = swift_getEnumCaseMultiPayload();
        if (result <= 3)
        {
          v60 = v95;
          if ((result - 1) >= 2)
          {
            if (result)
            {
              return result;
            }

LABEL_77:
            outlined destroy of MEProgram(v18, type metadata accessor for DSLTree.Atom);
          }
        }

        else
        {
          v60 = v95;
          if (((1 << result) & 0x720) == 0)
          {
            if (((1 << result) & 0x90) == 0)
            {
              v55 = v18;
              return outlined destroy of MEProgram(v55, type metadata accessor for DSLTree.Atom);
            }

            goto LABEL_77;
          }
        }

        result = type metadata accessor for Compiler.ByteCodeGen(0);
        *(v60 + *(result + 24)) = 1;
        return result;
      }

      if (v58)
      {
        v68 = v58;
        v69 = v59;
        outlined destroy of MEProgram(v5, type metadata accessor for DSLTree._AST.Atom);
        v70 = type metadata accessor for Compiler.ByteCodeGen(0);
        v36 = v95;
        v71 = v95 + *(v70 + 20);
        MEProgram.Builder.buildConsume(by:)(v68, v69);
        outlined consume of (@escaping @callee_guaranteed (@guaranteed String, @unowned Range<String.Index>) -> (@unowned String.Index?))?(v68);
        goto LABEL_38;
      }

      v93 = 0;
      v94 = 0xE000000000000000;
      v73 = AST.Atom._patternBase.getter();
      v75 = v74;
      v77 = v76;
      outlined destroy of MEProgram(v5, type metadata accessor for DSLTree._AST.Atom);
      v91[0] = v73;
      v91[1] = v75;
      v92 = v77 & 1;
      __swift_instantiateConcreteTypeFromMangledNameV2(&_sSS_Sb12canBeWrappedtMd, &_sSS_Sb12canBeWrappedtMR);
      _print_unlocked<A, B>(_:_:)();

      v78 = v93;
      v79 = v94;
      type metadata accessor for Unsupported();
      lazy protocol witness table accessor for type Unsupported and conformance Unsupported(&lazy protocol witness table cache variable for type Unsupported and conformance Unsupported, MEMORY[0x1E69E8998]);
      swift_allocError();
      MEMORY[0x193ACDF10](v78, v79, "/Library/Caches/com.apple.xbs/Sources/swiftlang_overlay_Platform_Device/swift-experimental-string-processing/Sources/_StringProcessing/ByteCodeGen.swift", 152, 2, 114);
      swift_willThrow();
      v21 = v87;
      outlined init with copy of DSLTree._AST.AbsentFunction(v90, v87, type metadata accessor for DSLTree.Atom);
      result = swift_getEnumCaseMultiPayload();
      if (result <= 3)
      {
        if ((result - 1) >= 2)
        {
          if (result)
          {
            return result;
          }

LABEL_96:
          outlined destroy of MEProgram(v21, type metadata accessor for DSLTree.Atom);
        }
      }

      else if (((1 << result) & 0x720) == 0)
      {
        if (((1 << result) & 0x90) == 0)
        {
          goto LABEL_42;
        }

        goto LABEL_96;
      }

      result = type metadata accessor for Compiler.ByteCodeGen(0);
      *(v95 + *(result + 24)) = 1;
      return result;
    }

    v91[0] = *v33;
    v36 = v95;
    v48 = *(*v95 + 16);
    if (v48)
    {
      v49 = (*(*v95 + 4 * v48 + 28) & 0x10000) == 0;
      v50 = v36 + *(type metadata accessor for Compiler.ByteCodeGen(0) + 20);
      MEProgram.Builder.buildUnresolvedReference(id:isScalarMode:)(v91, v49);
      goto LABEL_38;
    }

    __break(1u);
LABEL_119:
    __break(1u);
    goto LABEL_120;
  }

  if (EnumCaseMultiPayload <= 1)
  {
    v36 = v95;
    if (EnumCaseMultiPayload)
    {
      v53 = *(*v95 + 16);
      if (v53)
      {
        v37 = *v33;
        if ((*(*v95 + 4 * v53 + 28) & 0x10000) != 0)
        {
          if (v37 > 0x7F)
          {
            LODWORD(v38) = (*v33 & 0x3F) << 8;
            if (v37 >= 0x800)
            {
LABEL_131:
              v84 = (v38 | (v37 >> 6) & 0x3F) << 8;
              v85 = (((v84 | (v37 >> 12) & 0x3F) << 8) | (v37 >> 18)) - 2122219023;
              v65 = (v37 >> 12) + v84 + 8487393;
              if (WORD1(v37))
              {
                v65 = v85;
              }
            }

            else
            {
              v65 = (v37 >> 6) + v38 + 33217;
            }

            v36 = v95;
          }

          else
          {
            v65 = v37 + 1;
          }

          v91[0] = (v65 + 0xFEFEFEFEFEFEFFLL) & ~(-1 << (8 * (4 - (__clz(v65) >> 3))));
          v66 = static String._uncheckedFromUTF8(_:)();
          Compiler.ByteCodeGen.emitCharacter(_:)(v66, v67);
        }

        else
        {
          Compiler.ByteCodeGen.emitMatchScalar(_:)(v37);
        }

        goto LABEL_38;
      }

      goto LABEL_119;
    }

    Compiler.ByteCodeGen.emitCharacter(_:)(*v33, v33[1]);

LABEL_38:
    v52 = v90;
    v21 = v88;
LABEL_39:
    outlined init with copy of DSLTree._AST.AbsentFunction(v52, v21, type metadata accessor for DSLTree.Atom);
    result = swift_getEnumCaseMultiPayload();
    if (result <= 3)
    {
      if ((result - 1) >= 2)
      {
        if (result)
        {
          return result;
        }

LABEL_46:
        v56 = v21;
        goto LABEL_47;
      }
    }

    else if (((1 << result) & 0x720) == 0)
    {
      if (((1 << result) & 0x90) == 0)
      {
LABEL_42:
        v55 = v21;
        return outlined destroy of MEProgram(v55, type metadata accessor for DSLTree.Atom);
      }

      goto LABEL_46;
    }

LABEL_48:
    result = type metadata accessor for Compiler.ByteCodeGen(0);
    *(v36 + *(result + 24)) = 1;
    return result;
  }

  v36 = v95;
  if (EnumCaseMultiPayload == 2)
  {
    LOBYTE(v91[0]) = *v33;
    v41.stack._rawValue = *v95;
    v42 = DSLTree.Atom.CharacterClass.asRuntimeModel(_:)(v41);
    v43 = *(type metadata accessor for Compiler.ByteCodeGen(0) + 20);
    v44 = v42 | ((((v42 & 0x100) >> 8) & 1) << 53) & 0xFFBFFFFFFFFFFFFFLL | ((((v42 & 0x10000) >> 16) & 1) << 54) | (((v42 & 0xFF000000) != 0) << 55) | 0xC00000000000000;
    v45 = *(v36 + v43);
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v45 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v45 + 2) + 1, 1, v45, &_ss23_ContiguousArrayStorageCy17_StringProcessing11InstructionVGMd, &_ss23_ContiguousArrayStorageCy17_StringProcessing11InstructionVGMR);
    }

    v47 = *(v45 + 2);
    v46 = *(v45 + 3);
    if (v47 >= v46 >> 1)
    {
      v45 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v46 > 1), v47 + 1, 1, v45, &_ss23_ContiguousArrayStorageCy17_StringProcessing11InstructionVGMd, &_ss23_ContiguousArrayStorageCy17_StringProcessing11InstructionVGMR);
    }

    *(v45 + 2) = v47 + 1;
    *&v45[8 * v47 + 32] = v44;
    *(v36 + v43) = v45;
    goto LABEL_38;
  }

  if (EnumCaseMultiPayload != 3)
  {
    outlined init with take of DSLTree.QuantificationKind(v33, v13, type metadata accessor for DSLTree._AST.Reference);
    v51 = v89;
    Compiler.ByteCodeGen.emitBackreference(_:)(v13);
    if (v51)
    {
      outlined destroy of MEProgram(v13, type metadata accessor for DSLTree._AST.Reference);
      v52 = v90;
      goto LABEL_39;
    }

    outlined destroy of MEProgram(v13, type metadata accessor for DSLTree._AST.Reference);
    goto LABEL_38;
  }

  v21 = *v33;
  if (v21 != 3)
  {
    v61 = *(*v95 + 16);
    if (!v61)
    {
      goto LABEL_123;
    }

    v62 = *(*v95 + 4 * v61 + 28);
    v63 = *&v62 & 0x10000;
    v9 = *(type metadata accessor for Compiler.ByteCodeGen(0) + 20);
    v33 = v89;
    if ((v62 & 4) != 0)
    {
      if ((v62 & 0x40) == 0)
      {
        v64 = 0x80000000000000;
        if ((v62 & 0x2800) != 0)
        {
LABEL_73:
          v72 = 0x40000000000000;
          if (!v63)
          {
            goto LABEL_92;
          }

          goto LABEL_91;
        }

        if (!v63)
        {
          v81 = 0;
          v72 = 0x40000000000000;
          goto LABEL_93;
        }

        goto LABEL_101;
      }

      if ((v62 & 0x2800) != 0)
      {
        v72 = 0;
        v64 = 0x80000000000000;
        if (!v63)
        {
LABEL_92:
          v81 = 0x20000000000000;
LABEL_93:
          v80 = 0x10000000000000;
          goto LABEL_106;
        }

LABEL_91:
        v80 = 0;
        v81 = 0x20000000000000;
        goto LABEL_106;
      }

      v81 = 0;
      v72 = 0;
      v80 = (v63 << 36) ^ 0x10000000000000;
      v64 = 0x80000000000000;
    }

    else if ((v62 & 0x40) != 0)
    {
      if ((v62 & 0x2800) != 0)
      {
        v72 = 0;
        if (v63)
        {
          v64 = 0;
          goto LABEL_91;
        }

        v81 = 0x20000000000000;
        v80 = 0x10000000000000;
        v64 = 0;
      }

      else
      {
        v81 = 0;
        v72 = 0;
        v64 = 0;
        v80 = (v63 << 36) ^ 0x10000000000000;
      }
    }

    else
    {
      if ((v62 & 0x2800) != 0)
      {
        v64 = 0;
        goto LABEL_73;
      }

      v81 = 0;
      if (v63)
      {
        v64 = 0;
LABEL_101:
        v80 = 0;
        v81 = 0;
        v72 = 0x40000000000000;
        goto LABEL_106;
      }

      v72 = 0x40000000000000;
      v80 = 0x10000000000000;
      v64 = 0;
    }

LABEL_106:
    v13 = v80 | v81 | v72 | v64 | v21 | 0xF00000000000000;
    v21 = *(v36 + v9);
    if (swift_isUniquelyReferenced_nonNull_native())
    {
      goto LABEL_107;
    }

    goto LABEL_126;
  }

  type metadata accessor for Unsupported();
  lazy protocol witness table accessor for type Unsupported and conformance Unsupported(&lazy protocol witness table cache variable for type Unsupported and conformance Unsupported, MEMORY[0x1E69E8998]);
  v39 = swift_allocError();
  MEMORY[0x193ACDF10](0xD000000000000019, 0x800000018E5F2E90, "/Library/Caches/com.apple.xbs/Sources/swiftlang_overlay_Platform_Device/swift-experimental-string-processing/Sources/_StringProcessing/ByteCodeGen.swift", 152, 2, 204);
  swift_willThrow();
  if (!v39)
  {
    goto LABEL_38;
  }

LABEL_110:
  outlined init with copy of DSLTree._AST.AbsentFunction(v90, v24, type metadata accessor for DSLTree.Atom);
  result = swift_getEnumCaseMultiPayload();
  if (result > 3)
  {
    if (((1 << result) & 0x720) != 0)
    {
      goto LABEL_48;
    }

    if (((1 << result) & 0x90) == 0)
    {
      v55 = v24;
      return outlined destroy of MEProgram(v55, type metadata accessor for DSLTree.Atom);
    }

    goto LABEL_116;
  }

  if ((result - 1) < 2)
  {
    goto LABEL_48;
  }

  if (!result)
  {
LABEL_116:
    v56 = v24;
    goto LABEL_47;
  }

  return result;
}

uint64_t Compiler.ByteCodeGen.emitAny()()
{
  v6 = *v1;
  v7 = *(*v1 + 16);
  if (!v7)
  {
    __break(1u);
LABEL_12:
    result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v6 > 1), v2, 1, v0, &_ss23_ContiguousArrayStorageCy17_StringProcessing11InstructionVGMd, &_ss23_ContiguousArrayStorageCy17_StringProcessing11InstructionVGMR);
    v0 = result;
    goto LABEL_10;
  }

  v3 = 0x700000000010001;
  v8 = *(v6 + 4 * v7 + 28);
  v4 = *(type metadata accessor for Compiler.ByteCodeGen(0) + 20);
  v0 = *(v1 + v4);
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((v8 & 0x10000) != 0)
  {
    if ((result & 1) == 0)
    {
      result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v0 + 16) + 1, 1, v0, &_ss23_ContiguousArrayStorageCy17_StringProcessing11InstructionVGMd, &_ss23_ContiguousArrayStorageCy17_StringProcessing11InstructionVGMR);
      v0 = result;
    }

    v5 = *(v0 + 16);
    v6 = *(v0 + 24);
    v2 = v5 + 1;
    v3 = 0x700000000010000;
  }

  else
  {
    if ((result & 1) == 0)
    {
      result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v0 + 16) + 1, 1, v0, &_ss23_ContiguousArrayStorageCy17_StringProcessing11InstructionVGMd, &_ss23_ContiguousArrayStorageCy17_StringProcessing11InstructionVGMR);
      v0 = result;
    }

    v5 = *(v0 + 16);
    v6 = *(v0 + 24);
    v2 = v5 + 1;
  }

  if (v5 >= v6 >> 1)
  {
    goto LABEL_12;
  }

LABEL_10:
  *(v0 + 16) = v2;
  *(v0 + 8 * v5 + 32) = v3;
  *(v1 + v4) = v0;
  return result;
}

uint64_t Compiler.ByteCodeGen.emitAnyNonNewline()()
{
  v3 = *(*v1 + 16);
  if (!v3)
  {
    __break(1u);
    goto LABEL_14;
  }

  v4 = *(*v1 + 4 * v3 + 28);
  v2 = *(type metadata accessor for Compiler.ByteCodeGen(0) + 20);
  v0 = *(v1 + v2);
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((v4 & 0x10000) == 0)
  {
    if (result)
    {
LABEL_4:
      v7 = *(v0 + 16);
      v6 = *(v0 + 24);
      v8 = v7 + 1;
      if (v7 >= v6 >> 1)
      {
        result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v6 > 1), v7 + 1, 1, v0, &_ss23_ContiguousArrayStorageCy17_StringProcessing11InstructionVGMd, &_ss23_ContiguousArrayStorageCy17_StringProcessing11InstructionVGMR);
        v0 = result;
      }

      v9 = 0xD00000000000001;
      goto LABEL_12;
    }

LABEL_14:
    result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v0 + 16) + 1, 1, v0, &_ss23_ContiguousArrayStorageCy17_StringProcessing11InstructionVGMd, &_ss23_ContiguousArrayStorageCy17_StringProcessing11InstructionVGMR);
    v0 = result;
    goto LABEL_4;
  }

  if ((result & 1) == 0)
  {
    result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v0 + 16) + 1, 1, v0, &_ss23_ContiguousArrayStorageCy17_StringProcessing11InstructionVGMd, &_ss23_ContiguousArrayStorageCy17_StringProcessing11InstructionVGMR);
    v0 = result;
  }

  v7 = *(v0 + 16);
  v10 = *(v0 + 24);
  v8 = v7 + 1;
  if (v7 >= v10 >> 1)
  {
    result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v10 > 1), v7 + 1, 1, v0, &_ss23_ContiguousArrayStorageCy17_StringProcessing11InstructionVGMd, &_ss23_ContiguousArrayStorageCy17_StringProcessing11InstructionVGMR);
    v0 = result;
  }

  v9 = 0xD00000000000000;
LABEL_12:
  *(v0 + 16) = v8;
  *(v0 + 8 * v7 + 32) = v9;
  *(v1 + v2) = v0;
  return result;
}

void Compiler.ByteCodeGen.emitDot()()
{
  v1 = *(*v0 + 16);
  if (v1)
  {
    v2 = *(*v0 + 4 * v1 + 28);
    if ((v2 & 0x10) != 0)
    {
      if ((v2 & 0x200) != 0)
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy17_StringProcessing7DSLTreeV4NodeOGMd, &_ss23_ContiguousArrayStorageCy17_StringProcessing7DSLTreeV4NodeOGMR);
        inited = swift_initStackObject();
        *(inited + 16) = xmmword_18E5ED050;
        type metadata accessor for DSLTree.Atom(0);
        v4 = swift_allocBox();
        *v5 = 4;
        swift_storeEnumTagMultiPayload();
        *(inited + 32) = v4 | 0x4000000000000000;
        v6 = swift_allocBox();
        swift_storeEnumTagMultiPayload();
        *(inited + 40) = v6 | 0x4000000000000000;
        specialized Compiler.ByteCodeGen.emitAlternationGen<A>(_:withBacktracking:_:)(inited, v0);
        swift_setDeallocating();
        v7 = *(inited + 16);
        swift_arrayDestroy();
      }

      else
      {
        Compiler.ByteCodeGen.emitAny()();
      }
    }

    else
    {
      Compiler.ByteCodeGen.emitAnyNonNewline()();
    }
  }

  else
  {
    __break(1u);
  }
}

uint64_t Compiler.ByteCodeGen.emitCharacter(_:)(unint64_t a1, unint64_t a2)
{
  v65 = a2;
  v64 = type metadata accessor for Unicode.Scalar.Properties();
  v5 = *(v64 - 8);
  v6 = v5[8];
  result = MEMORY[0x1EEE9AC00](v64);
  v9 = v59 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v69 = v2;
  v10 = *v2;
  v11 = *(*v2 + 16);
  if (!v11)
  {
    goto LABEL_114;
  }

  v12 = *(v10 + 4 * v11 + 28);
  v68 = a1;
  if ((v12 & 0x10000) == 0)
  {
    v2 = v65;
    v13 = HIBYTE(v65) & 0xF;
    v61 = a1 & 0xFFFFFFFFFFFFLL;
    v62 = v13;
    if ((v65 & 0x2000000000000000) == 0)
    {
      v13 = a1 & 0xFFFFFFFFFFFFLL;
    }

    v67 = v13;
    if (!v13)
    {
      return result;
    }

    v14 = 0;
    v66 = (v10 + 28);
    v59[1] = (v65 & 0xFFFFFFFFFFFFFFFLL) + 32;
    v60 = v65 & 0xFFFFFFFFFFFFFFLL;
    v63 = (v5 + 1);
    v15 = v10;
    while (1)
    {
      if ((v2 & 0x1000000000000000) != 0)
      {
        v18 = _StringGuts.foreignErrorCorrectedScalar(startingAt:)();
      }

      else
      {
        if ((v2 & 0x2000000000000000) != 0)
        {
          v70 = a1;
          v71 = v60;
        }

        else if ((a1 & 0x1000000000000000) == 0)
        {
          _StringObject.sharedUTF8.getter();
        }

        v18 = _decodeScalar(_:startingAt:)();
      }

      v20 = v18;
      a1 = v19;
      v21 = *(v10 + 16);
      if (!v21)
      {
        break;
      }

      if (*&v66[4 * v21] & 1) != 0 && (Unicode.Scalar.properties.getter(), v22 = Unicode.Scalar.Properties.isCased.getter(), v2 = v65, v23 = v22, (*v63)(v9, v64), (v23))
      {
        v24 = *(type metadata accessor for Compiler.ByteCodeGen(0) + 20);
        v25 = *(v69 + v24);
        result = swift_isUniquelyReferenced_nonNull_native();
        if ((result & 1) == 0)
        {
          result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v25 + 16) + 1, 1, v25, &_ss23_ContiguousArrayStorageCy17_StringProcessing11InstructionVGMd, &_ss23_ContiguousArrayStorageCy17_StringProcessing11InstructionVGMR);
          v25 = result;
        }

        v27 = *(v25 + 16);
        v26 = *(v25 + 24);
        v28 = v27 + 1;
        if (v27 >= v26 >> 1)
        {
          result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v26 > 1), v27 + 1, 1, v25, &_ss23_ContiguousArrayStorageCy17_StringProcessing11InstructionVGMd, &_ss23_ContiguousArrayStorageCy17_StringProcessing11InstructionVGMR);
          v25 = result;
        }

        v16 = v20;
        v17 = 0x980000000000000;
      }

      else
      {
        v24 = *(type metadata accessor for Compiler.ByteCodeGen(0) + 20);
        v25 = *(v69 + v24);
        result = swift_isUniquelyReferenced_nonNull_native();
        if ((result & 1) == 0)
        {
          result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v25 + 16) + 1, 1, v25, &_ss23_ContiguousArrayStorageCy17_StringProcessing11InstructionVGMd, &_ss23_ContiguousArrayStorageCy17_StringProcessing11InstructionVGMR);
          v25 = result;
        }

        v27 = *(v25 + 16);
        v29 = *(v25 + 24);
        v28 = v27 + 1;
        if (v27 >= v29 >> 1)
        {
          result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v29 > 1), v27 + 1, 1, v25, &_ss23_ContiguousArrayStorageCy17_StringProcessing11InstructionVGMd, &_ss23_ContiguousArrayStorageCy17_StringProcessing11InstructionVGMR);
          v25 = result;
        }

        v16 = v20;
        v17 = 0x900000000000000;
      }

      *(v25 + 16) = v28;
      *(v25 + 8 * v27 + 32) = v16 | v17;
      *(v69 + v24) = v25;
      v14 += a1;
      a1 = v68;
      v10 = v15;
      if (v14 >= v67)
      {
        return result;
      }
    }

    __break(1u);
    goto LABEL_102;
  }

  v30 = v65;
  if (v12)
  {
    if ((Character._isSingleScalar.getter() & 1) == 0)
    {
      goto LABEL_93;
    }

    result = specialized Collection.first.getter(a1, v30);
    if ((result & 0x100000000) != 0)
    {
      __break(1u);
      goto LABEL_119;
    }

    Unicode.Scalar.properties.getter();
    v53 = Unicode.Scalar.Properties.isCased.getter();
    (v5[1])(v9, v64);
    if ((v53 & 1) == 0)
    {
LABEL_93:
      if (Character._isUppercased.getter() & 1) != 0 && (Character._isLowercased.getter())
      {
        goto LABEL_29;
      }
    }

    v54 = type metadata accessor for Compiler.ByteCodeGen(0);
    if ((*(v69 + *(v54 + 28)) & 1) != 0 || (Character.asciiValue.getter() & 0x100) != 0)
    {
      v5 = (v69 + *(v54 + 20));
      v58 = specialized TypedSetVector.store(_:)(a1, v65);
      v9 = *v5;
      result = swift_isUniquelyReferenced_nonNull_native();
      if ((result & 1) == 0)
      {
        result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v9 + 16) + 1, 1, v9, &_ss23_ContiguousArrayStorageCy17_StringProcessing11InstructionVGMd, &_ss23_ContiguousArrayStorageCy17_StringProcessing11InstructionVGMR);
        v9 = result;
      }

      v10 = (v58 << 16) | 0x800000000000001;
LABEL_107:
      v3 = *(v9 + 16);
      v11 = *(v9 + 24);
      v2 = v3 + 1;
      if (v3 >= v11 >> 1)
      {
        goto LABEL_115;
      }

      goto LABEL_108;
    }

    result = specialized BidirectionalCollection.last.getter(a1, v65);
    if ((result & 0x100000000) == 0)
    {
      LODWORD(v31) = result;
      v9 = *(v54 + 20);
      v10 = 0x9C0000000000000;
      v2 = *(v69 + v9);
      result = swift_isUniquelyReferenced_nonNull_native();
      if (result)
      {
LABEL_98:
        v55 = v10 & 0xFFFFFFFF00000000 | v31;
        v57 = *(v2 + 16);
        v56 = *(v2 + 24);
        if (v57 >= v56 >> 1)
        {
          result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v56 > 1), v57 + 1, 1, v2, &_ss23_ContiguousArrayStorageCy17_StringProcessing11InstructionVGMd, &_ss23_ContiguousArrayStorageCy17_StringProcessing11InstructionVGMR);
          v2 = result;
        }

        *(v2 + 16) = v57 + 1;
        *(v2 + 8 * v57 + 32) = v55;
        *(v69 + v9) = v2;
        return result;
      }

LABEL_117:
      result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v2 + 16) + 1, 1, v2, &_ss23_ContiguousArrayStorageCy17_StringProcessing11InstructionVGMd, &_ss23_ContiguousArrayStorageCy17_StringProcessing11InstructionVGMR);
      v2 = result;
      goto LABEL_98;
    }

LABEL_119:
    __break(1u);
    return result;
  }

LABEL_29:
  v2 = type metadata accessor for Compiler.ByteCodeGen(0);
  if ((*(v69 + *(v2 + 28)) & 1) != 0 || (Character.asciiValue.getter() & 0x100) != 0)
  {
LABEL_102:
    v5 = (v69 + *(v2 + 20));
    v10 = (specialized TypedSetVector.store(_:)(a1, v65) << 16) | 0x800000000000000;
    v9 = *v5;
    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
      result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v9 + 16) + 1, 1, v9, &_ss23_ContiguousArrayStorageCy17_StringProcessing11InstructionVGMd, &_ss23_ContiguousArrayStorageCy17_StringProcessing11InstructionVGMR);
      v9 = result;
    }

    goto LABEL_107;
  }

  v31 = v65;
  v61 = a1 & 0xFFFFFFFFFFFFLL;
  v62 = HIBYTE(v65) & 0xF;
  if ((v65 & 0x2000000000000000) != 0)
  {
    v3 = HIBYTE(v65) & 0xF;
  }

  else
  {
    v3 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (!v3)
  {
    __break(1u);
    goto LABEL_117;
  }

  v67 = 4 * v3;
  v32 = (v65 & 0x1000000000000000) == 0 || (a1 & 0x800000000000000) != 0;
  v33 = 11;
  if (v32)
  {
    v33 = 7;
  }

  v34 = 15;
  v35 = specialized DefaultIndices<>.index(before:)(v33 | (v3 << 16), a1, v65);
  v36 = 4 << v32;
  v63 = ((v31 & 0xFFFFFFFFFFFFFFFLL) + 32);
  v64 = v31 & 0xFFFFFFFFFFFFFFLL;
  v66 = (v35 >> 14);

  v9 = 0;
  while (1)
  {
    v5 = (v34 & 0xC);
    v37 = (v34 & 1) == 0 || v5 == v36;
    v10 = v37;
    if (v37)
    {
      break;
    }

    v38 = v34;
    if (v3 <= v34 >> 16)
    {
      goto LABEL_111;
    }

LABEL_54:
    if ((v65 & 0x1000000000000000) != 0)
    {
      v42 = String.UnicodeScalarView._foreignIndex(after:)();
      if (!v10)
      {
        goto LABEL_60;
      }
    }

    else
    {
      v39 = v38 >> 16;
      if ((v65 & 0x2000000000000000) != 0)
      {
        v70 = a1;
        v71 = v64;
        v41 = *(&v70 + v39);
      }

      else
      {
        v40 = v63;
        if ((a1 & 0x1000000000000000) == 0)
        {
          v40 = _StringObject.sharedUTF8.getter();
        }

        v41 = *(v40 + v39);
      }

      v43 = v41;
      v44 = __clz(v41 ^ 0xFF) - 24;
      if (v43 >= 0)
      {
        LOBYTE(v44) = 1;
      }

      v11 = v39 + v44;
      v42 = (v11 << 16) | 5;
      if (!v10)
      {
LABEL_60:
        if (v34 >> 16 >= v3)
        {
          goto LABEL_113;
        }

LABEL_70:
        v45 = v65;
        if ((v65 & 0x1000000000000000) == 0)
        {
          goto LABEL_71;
        }

        goto LABEL_79;
      }
    }

    if (v5 == v36)
    {
      v34 = _StringGuts._slowEnsureMatchingEncoding(_:)(v34, a1, v65);
    }

    if (v34 >> 16 >= v3)
    {
      goto LABEL_112;
    }

    if (v34)
    {
      goto LABEL_70;
    }

    _StringGuts.scalarAlignSlow(_:)(v34, a1, v65);
    v45 = v65;
    if ((v65 & 0x1000000000000000) == 0)
    {
LABEL_71:
      if ((v45 & 0x2000000000000000) != 0)
      {
        v70 = a1;
        v71 = v64;
      }

      else if ((a1 & 0x1000000000000000) == 0)
      {
        _StringObject.sharedUTF8.getter();
      }

      v46 = _decodeScalar(_:startingAt:)();
      goto LABEL_80;
    }

LABEL_79:
    v46 = _StringGuts.foreignErrorCorrectedScalar(startingAt:)();
LABEL_80:
    v47 = v46;
    v48 = *(v2 + 20);
    if (v9 == v66)
    {
      v49 = 0x940000000000000;
    }

    else
    {
      v49 = 0x900000000000000;
    }

    v50 = *(v69 + v48);
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v50 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v50 + 2) + 1, 1, v50, &_ss23_ContiguousArrayStorageCy17_StringProcessing11InstructionVGMd, &_ss23_ContiguousArrayStorageCy17_StringProcessing11InstructionVGMR);
    }

    v52 = *(v50 + 2);
    v51 = *(v50 + 3);
    if (v52 >= v51 >> 1)
    {
      v50 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v51 > 1), v52 + 1, 1, v50, &_ss23_ContiguousArrayStorageCy17_StringProcessing11InstructionVGMd, &_ss23_ContiguousArrayStorageCy17_StringProcessing11InstructionVGMR);
    }

    *(v50 + 2) = v52 + 1;
    *&v50[8 * v52 + 32] = v49 | v47;
    *(v69 + v48) = v50;
    v9 = v42 >> 14;
    v34 = v42;
    v11 = v67;
    a1 = v68;
    if (v42 >> 14 == v67)
    {
    }
  }

  v38 = v34;
  if (v5 != v36)
  {
    if (v3 <= v34 >> 16)
    {
      goto LABEL_110;
    }

    goto LABEL_51;
  }

  v38 = _StringGuts._slowEnsureMatchingEncoding(_:)(v34, a1, v65);
  if (v3 > v38 >> 16)
  {
LABEL_51:
    if ((v38 & 1) == 0)
    {
      v38 = v38 & 0xC | _StringGuts.scalarAlignSlow(_:)(v38, a1, v65) & 0xFFFFFFFFFFFFFFF3 | 1;
    }

    goto LABEL_54;
  }

LABEL_110:
  __break(1u);
LABEL_111:
  __break(1u);
LABEL_112:
  __break(1u);
LABEL_113:
  __break(1u);
LABEL_114:
  __break(1u);
LABEL_115:
  result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v11 > 1), v2, 1, v9, &_ss23_ContiguousArrayStorageCy17_StringProcessing11InstructionVGMd, &_ss23_ContiguousArrayStorageCy17_StringProcessing11InstructionVGMR);
  v9 = result;
LABEL_108:
  *(v9 + 16) = v2;
  *(v9 + 8 * v3 + 32) = v10;
  *v5 = v9;
  return result;
}

uint64_t Compiler.ByteCodeGen.emitMatchScalar(_:)(uint64_t a1)
{
  v3 = v1;
  v5 = type metadata accessor for Unicode.Scalar.Properties();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v16 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *(*v3 + 16);
  if (!v10)
  {
    __break(1u);
LABEL_11:
    result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v9 + 2) + 1, 1, v9, &_ss23_ContiguousArrayStorageCy17_StringProcessing11InstructionVGMd, &_ss23_ContiguousArrayStorageCy17_StringProcessing11InstructionVGMR);
    v9 = result;
    goto LABEL_7;
  }

  if (*(*v3 + 4 * v10 + 28) & 1) != 0 && (Unicode.Scalar.properties.getter(), v11 = Unicode.Scalar.Properties.isCased.getter(), (*(v6 + 8))(v9, v5), (v11))
  {
    v5 = *(type metadata accessor for Compiler.ByteCodeGen(0) + 20);
    a1 = a1;
    v2 = 0x980000000000000;
  }

  else
  {
    v5 = *(type metadata accessor for Compiler.ByteCodeGen(0) + 20);
    a1 = a1;
    v2 = 0x900000000000000;
  }

  v9 = *(v3 + v5);
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
    goto LABEL_11;
  }

LABEL_7:
  v13 = a1 | v2;
  v15 = *(v9 + 2);
  v14 = *(v9 + 3);
  if (v15 >= v14 >> 1)
  {
    result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v14 > 1), v15 + 1, 1, v9, &_ss23_ContiguousArrayStorageCy17_StringProcessing11InstructionVGMd, &_ss23_ContiguousArrayStorageCy17_StringProcessing11InstructionVGMR);
    v9 = result;
  }

  *(v9 + 2) = v15 + 1;
  *&v9[8 * v15 + 32] = v13;
  *(v3 + v5) = v9;
  return result;
}

uint64_t Compiler.ByteCodeGen.emitBackreference(_:)(uint64_t a1)
{
  v2 = v1;
  v4 = type metadata accessor for AST.Atom.Number();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v46 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for AST.Reference.Kind();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v9);
  v13 = &v46 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (AST.Reference.recursesWholePattern.getter())
  {
    v46 = 0;
    v47 = 0xE000000000000000;
    _StringGuts.grow(_:)(22);

    v46 = 0xD000000000000014;
    v47 = 0x800000018E5F2EB0;
    type metadata accessor for AST.Reference();
    lazy protocol witness table accessor for type Unsupported and conformance Unsupported(&lazy protocol witness table cache variable for type AST.Reference and conformance AST.Reference, MEMORY[0x1E69E8E98]);
    v14 = dispatch thunk of CustomStringConvertible.description.getter();
    MEMORY[0x193ACE8E0](v14);

    v15 = v46;
    v16 = v47;
    type metadata accessor for Unsupported();
    lazy protocol witness table accessor for type Unsupported and conformance Unsupported(&lazy protocol witness table cache variable for type Unsupported and conformance Unsupported, MEMORY[0x1E69E8998]);
    swift_allocError();
    MEMORY[0x193ACDF10](v15, v16, "/Library/Caches/com.apple.xbs/Sources/swiftlang_overlay_Platform_Device/swift-experimental-string-processing/Sources/_StringProcessing/ByteCodeGen.swift", 152, 2, 177);
    return swift_willThrow();
  }

  v18 = a1;
  AST.Reference.kind.getter();
  v19 = (*(v10 + 88))(v13, v9);
  if (v19 == *MEMORY[0x1E69E8E88])
  {
    (*(v10 + 96))(v13, v9);
    (*(v5 + 32))(v8, v13, v4);
    v18 = AST.Atom.Number.value.getter();
    v9 = v20;
    v21 = *(v5 + 8);
    v5 += 8;
    v21(v8, v4);
    if (v9)
    {
      type metadata accessor for Unreachable();
      lazy protocol witness table accessor for type Unsupported and conformance Unsupported(&lazy protocol witness table cache variable for type Unreachable and conformance Unreachable, MEMORY[0x1E69E8988]);
      swift_allocError();
      MEMORY[0x193ACDEF0](0xD000000000000010, 0x800000018E5F2ED0, "/Library/Caches/com.apple.xbs/Sources/swiftlang_overlay_Platform_Device/swift-experimental-string-processing/Sources/_StringProcessing/ByteCodeGen.swift", 152, 2, 183);
      return swift_willThrow();
    }

    if (!__OFSUB__(v18, 1))
    {
      v25 = *(*v2 + 16);
      if (v25)
      {
        v9 = ((*(*v2 + 4 * v25 + 28) & 0x10000) == 0) | ((v18 - 1) << 16);
        v13 = 0x1B00000000000000;
        v5 = *(type metadata accessor for Compiler.ByteCodeGen(0) + 20);
        v18 = *(v2 + v5);
        result = swift_isUniquelyReferenced_nonNull_native();
        if (result)
        {
LABEL_12:
          v26 = v9 | v13;
          v28 = *(v18 + 16);
          v27 = *(v18 + 24);
          if (v28 >= v27 >> 1)
          {
            result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v27 > 1), v28 + 1, 1, v18, &_ss23_ContiguousArrayStorageCy17_StringProcessing11InstructionVGMd, &_ss23_ContiguousArrayStorageCy17_StringProcessing11InstructionVGMR);
            v18 = result;
          }

          *(v18 + 16) = v28 + 1;
          *(v18 + 8 * v28 + 32) = v26;
          *(v2 + v5) = v18;
          return result;
        }

LABEL_33:
        result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v18 + 16) + 1, 1, v18, &_ss23_ContiguousArrayStorageCy17_StringProcessing11InstructionVGMd, &_ss23_ContiguousArrayStorageCy17_StringProcessing11InstructionVGMR);
        v18 = result;
        goto LABEL_12;
      }

LABEL_32:
      __break(1u);
      goto LABEL_33;
    }

    __break(1u);
LABEL_31:
    __break(1u);
    goto LABEL_32;
  }

  if (v19 == *MEMORY[0x1E69E8E90])
  {
    v46 = 0;
    v47 = 0xE000000000000000;
    _StringGuts.grow(_:)(22);

    v46 = 0xD000000000000014;
    v47 = 0x800000018E5F2EB0;
    type metadata accessor for AST.Reference();
    lazy protocol witness table accessor for type Unsupported and conformance Unsupported(&lazy protocol witness table cache variable for type AST.Reference and conformance AST.Reference, MEMORY[0x1E69E8E98]);
    v22 = dispatch thunk of CustomStringConvertible.description.getter();
    MEMORY[0x193ACE8E0](v22);

    v23 = v46;
    v24 = v47;
    type metadata accessor for Unsupported();
    lazy protocol witness table accessor for type Unsupported and conformance Unsupported(&lazy protocol witness table cache variable for type Unsupported and conformance Unsupported, MEMORY[0x1E69E8998]);
    swift_allocError();
    MEMORY[0x193ACDF10](v23, v24, "/Library/Caches/com.apple.xbs/Sources/swiftlang_overlay_Platform_Device/swift-experimental-string-processing/Sources/_StringProcessing/ByteCodeGen.swift", 152, 2, 192);
    swift_willThrow();
    return (*(v10 + 8))(v13, v9);
  }

  if (v19 != *MEMORY[0x1E69E8E80])
  {
LABEL_36:
    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
    return result;
  }

  (*(v10 + 96))(v13, v9);
  v29 = *(*v2 + 16);
  if (!v29)
  {
    goto LABEL_31;
  }

  v32 = v13;
  v31 = *v13;
  v30 = *(v32 + 8);
  v33 = *(*v2 + 4 * v29 + 28);
  v34 = (v2 + *(type metadata accessor for Compiler.ByteCodeGen(0) + 20));
  v35 = v34 + *(type metadata accessor for MEProgram.Builder(0) + 84);
  v36._countAndFlagsBits = v31;
  v36._object = v30;
  v48 = CaptureList.indexOfCapture(named:)(v36);
  value = v48.value;
  is_nil = v48.is_nil;

  if ((v33 & 0x10000) != 0)
  {
    if (!is_nil)
    {
      v39 = value - 1;
      if (!__OFSUB__(value, 1))
      {
        v40 = 0x1B00000000000000;
        goto LABEL_25;
      }

      goto LABEL_35;
    }

LABEL_22:
    lazy protocol witness table accessor for type RegexCompilationError and conformance RegexCompilationError();
    swift_allocError();
    *v41 = 0;
    *(v41 + 8) = 0;
    *(v41 + 16) = 2;
    return swift_willThrow();
  }

  if (is_nil)
  {
    goto LABEL_22;
  }

  v39 = value - 1;
  if (__OFSUB__(value, 1))
  {
    __break(1u);
LABEL_35:
    __break(1u);
    goto LABEL_36;
  }

  v40 = 0x1B00000000000001;
LABEL_25:
  v42 = *v34;
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
    result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v42 + 16) + 1, 1, v42, &_ss23_ContiguousArrayStorageCy17_StringProcessing11InstructionVGMd, &_ss23_ContiguousArrayStorageCy17_StringProcessing11InstructionVGMR);
    v42 = result;
  }

  v43 = v40 | (v39 << 16);
  v45 = *(v42 + 16);
  v44 = *(v42 + 24);
  if (v45 >= v44 >> 1)
  {
    result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v44 > 1), v45 + 1, 1, v42, &_ss23_ContiguousArrayStorageCy17_StringProcessing11InstructionVGMd, &_ss23_ContiguousArrayStorageCy17_StringProcessing11InstructionVGMR);
    v42 = result;
  }

  *(v42 + 16) = v45 + 1;
  *(v42 + 8 * v45 + 32) = v43;
  *v34 = v42;
  return result;
}

Swift::Void __swiftcall MEProgram.Builder.buildUnresolvedReference(id:isScalarMode:)(_StringProcessing::ReferenceID id, Swift::Bool isScalarMode)
{
  v3 = v2;
  v5 = *id.base;
  v6 = *v2;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v6 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v6 + 2) + 1, 1, v6, &_ss23_ContiguousArrayStorageCy17_StringProcessing11InstructionVGMd, &_ss23_ContiguousArrayStorageCy17_StringProcessing11InstructionVGMR);
  }

  v8 = *(v6 + 2);
  v7 = *(v6 + 3);
  if (v8 >= v7 >> 1)
  {
    v6 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v7 > 1), v8 + 1, 1, v6, &_ss23_ContiguousArrayStorageCy17_StringProcessing11InstructionVGMd, &_ss23_ContiguousArrayStorageCy17_StringProcessing11InstructionVGMR);
  }

  *(v6 + 2) = v8 + 1;
  *&v6[8 * v8 + 32] = isScalarMode | 0x1B00000000000000;
  *v3 = v6;
  v9 = *(type metadata accessor for MEProgram.Builder(0) + 96);
  v10 = *(v3 + v9);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v12 = *(v3 + v9);
  v14 = specialized __RawDictionaryStorage.find<A>(_:)(v5);
  v15 = *(v12 + 2);
  v16 = (v13 & 1) == 0;
  v17 = v15 + v16;
  if (__OFADD__(v15, v16))
  {
    __break(1u);
    goto LABEL_19;
  }

  v18 = v13;
  if (*(v12 + 3) < v17)
  {
    specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v17, isUniquelyReferenced_nonNull_native);
    v19 = specialized __RawDictionaryStorage.find<A>(_:)(v5);
    if ((v18 & 1) != (v20 & 1))
    {
      goto LABEL_23;
    }

    v14 = v19;
    *(v3 + v9) = v12;
    if (v18)
    {
      goto LABEL_14;
    }

    goto LABEL_12;
  }

  if (isUniquelyReferenced_nonNull_native)
  {
    *(v3 + v9) = v12;
    if (v13)
    {
      goto LABEL_14;
    }

    goto LABEL_12;
  }

  specialized _NativeDictionary.copy()();
  *(v3 + v9) = v12;
  if ((v18 & 1) == 0)
  {
LABEL_12:
    *&v12[8 * (v14 >> 6) + 64] |= 1 << v14;
    *(*(v12 + 6) + 8 * v14) = v5;
    *(*(v12 + 7) + 8 * v14) = MEMORY[0x1E69E7CC0];
    v21 = *(v12 + 2);
    v22 = __OFADD__(v21, 1);
    v23 = v21 + 1;
    if (!v22)
    {
      *(v12 + 2) = v23;
      goto LABEL_14;
    }

    __break(1u);
LABEL_23:
    KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
    return;
  }

LABEL_14:
  v3 = *(v12 + 7);
  v5 = v3[v14];
  v24 = swift_isUniquelyReferenced_nonNull_native();
  v3[v14] = v5;
  if ((v24 & 1) == 0)
  {
LABEL_19:
    v5 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v5 + 2) + 1, 1, v5, &_ss23_ContiguousArrayStorageCy17_StringProcessing8TypedIntVyAC19_InstructionAddressOGGMd, &_ss23_ContiguousArrayStorageCy17_StringProcessing8TypedIntVyAC19_InstructionAddressOGGMR);
    v3[v14] = v5;
  }

  v26 = *(v5 + 2);
  v25 = *(v5 + 3);
  if (v26 >= v25 >> 1)
  {
    v5 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v25 > 1), v26 + 1, 1, v5, &_ss23_ContiguousArrayStorageCy17_StringProcessing8TypedIntVyAC19_InstructionAddressOGGMd, &_ss23_ContiguousArrayStorageCy17_StringProcessing8TypedIntVyAC19_InstructionAddressOGGMR);
    v3[v14] = v5;
  }

  *(v5 + 2) = v26 + 1;
  *&v5[8 * v26 + 32] = v8;
}

uint64_t AST.Atom.generateConsumer(_:)(uint64_t a1)
{
  v3 = type metadata accessor for AST.Atom.CharacterProperty();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v7 = v27 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for AST.Atom.Kind();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v8);
  v12 = (v27 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  AST.Atom.kind.getter();
  v13 = (*(v9 + 88))(v12, v8);
  if (v13 == *MEMORY[0x1E69E8D58] || v13 == *MEMORY[0x1E69E8D60])
  {
    goto LABEL_33;
  }

  if (v13 == *MEMORY[0x1E69E8D28])
  {
LABEL_6:
    (*(v9 + 8))(v12, v8);
    return 0;
  }

  if (v13 == *MEMORY[0x1E69E8D80])
  {
    (*(v9 + 96))(v12, v8);
    (*(v4 + 32))(v7, v12, v3);
    v16 = AST.Atom.CharacterProperty.generateConsumer(_:)(a1);
    if (v1)
    {
      return (*(v4 + 8))(v7, v3);
    }

    v26 = v16;
    (*(v4 + 8))(v7, v3);
    return v26;
  }

  if (v13 == *MEMORY[0x1E69E8D70])
  {
    goto LABEL_33;
  }

  if (v13 == *MEMORY[0x1E69E8D30] || v13 == *MEMORY[0x1E69E8D10] || v13 == *MEMORY[0x1E69E8D38])
  {
    goto LABEL_6;
  }

  if (v13 != *MEMORY[0x1E69E8D20])
  {
    if (v13 == *MEMORY[0x1E69E8D18] || v13 == *MEMORY[0x1E69E8CF8] || v13 == *MEMORY[0x1E69E8D68] || v13 == *MEMORY[0x1E69E8D40] || v13 == *MEMORY[0x1E69E8D48])
    {
      goto LABEL_6;
    }

    if (v13 != *MEMORY[0x1E69E8D50] && v13 != *MEMORY[0x1E69E8D00] && v13 != *MEMORY[0x1E69E8D08] && v13 == *MEMORY[0x1E69E8D78])
    {
      return 0;
    }

    goto LABEL_34;
  }

  v17 = *(v9 + 96);
  v9 += 96;
  v17(v12, v8);
  v18 = *(a1 + 16);
  if (!v18)
  {
    __break(1u);
LABEL_33:
    (*(v9 + 8))(v12, v8);
LABEL_34:
    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
    return result;
  }

  v21 = v12;
  v20 = *v12;
  v19 = v21[1];
  if ((*(a1 + 4 * v18 + 28) & 0x10000) != 0)
  {
    v22 = consumeCharacterWithLeadingScalar(_:);
  }

  else
  {
    v22 = consumeScalar(_:);
  }

  v23 = swift_allocObject();
  *(v23 + 16) = v20;
  *(v23 + 24) = v19;
  v24 = swift_allocObject();
  *(v24 + 16) = partial apply for closure #1 in consumeName(_:opts:);
  *(v24 + 24) = v23;
  v25 = v22(partial apply for closure #1 in propertyScalarPredicate(_:), v24);

  return v25;
}

uint64_t MEProgram.Builder.buildConsume(by:)(uint64_t a1, uint64_t a2)
{
  v5 = v2[7];
  v6 = v5[2];
  v7 = swift_allocObject();
  *(v7 + 16) = a1;
  *(v7 + 24) = a2;

  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v5 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v5[2] + 1, 1, v5, &_ss23_ContiguousArrayStorageCySS5IndexVSgSS_SnyADGtcGMd, &_ss23_ContiguousArrayStorageCySS5IndexVSgSS_SnyADGtcGMR);
  }

  v9 = v5[2];
  v8 = v5[3];
  if (v9 >= v8 >> 1)
  {
    v5 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v8 > 1), v9 + 1, 1, v5, &_ss23_ContiguousArrayStorageCySS5IndexVSgSS_SnyADGtcGMd, &_ss23_ContiguousArrayStorageCySS5IndexVSgSS_SnyADGtcGMR);
  }

  v5[2] = v9 + 1;
  v10 = &v5[2 * v9];
  v10[4] = partial apply for thunk for @escaping @callee_guaranteed (@guaranteed String, @unowned Range<String.Index>) -> (@unowned String.Index?);
  v10[5] = v7;
  v2[7] = v5;
  v11 = *v2;
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
    result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v11 + 16) + 1, 1, v11, &_ss23_ContiguousArrayStorageCy17_StringProcessing11InstructionVGMd, &_ss23_ContiguousArrayStorageCy17_StringProcessing11InstructionVGMR);
    v11 = result;
  }

  v14 = *(v11 + 16);
  v13 = *(v11 + 24);
  if (v14 >= v13 >> 1)
  {
    result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v13 > 1), v14 + 1, 1, v11, &_ss23_ContiguousArrayStorageCy17_StringProcessing11InstructionVGMd, &_ss23_ContiguousArrayStorageCy17_StringProcessing11InstructionVGMR);
    v11 = result;
  }

  *(v11 + 16) = v14 + 1;
  *(v11 + 8 * v14 + 32) = v6 | 0xE00000000000000;
  *v2 = v11;
  return result;
}

unint64_t AST.Atom._patternBase.getter()
{
  v1 = type metadata accessor for AST.Atom.CharacterProperty();
  v30 = *(v1 - 8);
  v31 = v1;
  v2 = *(v30 + 64);
  MEMORY[0x1EEE9AC00](v1);
  v29 = &v28 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for AST.Atom.EscapedBuiltin();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v28 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for AST.Atom.Kind();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  v12 = MEMORY[0x1EEE9AC00](v9);
  v14 = &v28 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v16 = &v28 - v15;
  v32 = v0;
  AST.Atom.kind.getter();
  v17 = *(v10 + 88);
  v18 = v17(v16, v9);
  if (v18 == *MEMORY[0x1E69E8D70])
  {
    (*(v10 + 96))(v16, v9);
    (*(v5 + 32))(v8, v16, v4);
    AST.Atom.EscapedBuiltin.dslAssertionKind.getter(&v34);
    (*(v5 + 8))(v8, v4);
  }

  else
  {
    if (v18 == *MEMORY[0x1E69E8D00])
    {
      v19 = 9;
      goto LABEL_11;
    }

    if (v18 == *MEMORY[0x1E69E8D08])
    {
      v19 = 10;
      goto LABEL_11;
    }

    v34 = 13;
    (*(v10 + 8))(v16, v9);
  }

  v19 = v34;
  if (v34 != 13)
  {
LABEL_11:
    v33 = v19;
    return DSLTree.Atom.Assertion._patternBase.getter();
  }

  AST.Atom.kind.getter();
  v20 = v17(v14, v9);
  if (v20 == *MEMORY[0x1E69E8D80])
  {
    (*(v10 + 96))(v14, v9);
    v22 = v29;
    v21 = v30;
    v23 = v31;
    (*(v30 + 32))(v29, v14, v31);
    v24 = AST.Atom.CharacterProperty.isUnprintableProperty.getter();
    (*(v21 + 8))(v22, v23);
    if (v24)
    {
      return AST.Atom._regexBase.getter();
    }

    return AST.Atom._dslBase.getter();
  }

  if (v20 == *MEMORY[0x1E69E8D30] || v20 == *MEMORY[0x1E69E8D10] || v20 == *MEMORY[0x1E69E8D38])
  {
    (*(v10 + 8))(v14, v9);
  }

  else
  {
    v26 = *MEMORY[0x1E69E8D20];
    v27 = v20;
    (*(v10 + 8))(v14, v9);
    if (v27 != v26)
    {
      return AST.Atom._dslBase.getter();
    }
  }

  return AST.Atom._regexBase.getter();
}

uint64_t Compiler.ByteCodeGen.emitQuotedLiteral(_:)(uint64_t countAndFlagsBits, unint64_t object)
{
  v6 = 0;
  v87 = type metadata accessor for Unicode.Scalar.Properties();
  v7 = *(v87 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v87);
  v86 = v77 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v90 = type metadata accessor for Compiler.ByteCodeGen(0);
  v91 = v2;
  v10 = *(v2 + *(v90 + 28));
  v11 = HIBYTE(object) & 0xF;
  if (v10)
  {
    goto LABEL_19;
  }

  v2 = *v2;
  v12 = *(v2 + 16);
  if (v12)
  {
    v3 = (v2 + 32);
    if ((*(v2 + 32 + 4 * v12 - 2) & 1) != 0 && (specialized Sequence.allSatisfy(_:)(countAndFlagsBits, object) & 1) == 0)
    {
      goto LABEL_19;
    }

    v13 = (object & 0x2000000000000000) != 0 ? HIBYTE(object) & 0xF : countAndFlagsBits & 0xFFFFFFFFFFFFLL;
    if (!v13)
    {
      goto LABEL_19;
    }

    if ((object & 0x1000000000000000) == 0)
    {
      if (v13 >= 5)
      {
        goto LABEL_11;
      }

      goto LABEL_19;
    }
  }

  else
  {
    __break(1u);
  }

  if (String.UTF8View._foreignCount()() >= 5)
  {
LABEL_11:
    v14 = *(v2 + 16);
    if (!v14)
    {
      goto LABEL_129;
    }

    v15 = *(v3 + v14 - 1);
    if ((v15 & 1) == 0)
    {
      v16 = specialized _copyCollectionToContiguousArray<A>(_:)(countAndFlagsBits, object);
      v3 = (v91 + *(v90 + 20));
      v17 = specialized TypedSetVector.store(_:)(v16);

      v2 = (v15 >> 16) & 1 | (v17 << 16);
      v6 = 0xA00000000000000;
      v10 = *v3;
      result = swift_isUniquelyReferenced_nonNull_native();
      if ((result & 1) == 0)
      {
        goto LABEL_130;
      }

      goto LABEL_14;
    }
  }

LABEL_19:
  v82 = 0;
  v3 = v91;
  v6 = *v91;
  v22 = *(*v91 + 16);
  if (!v22)
  {
    goto LABEL_128;
  }

  v23 = *(v6 + 4 * v22 + 30);
  v89 = *v91;
  if ((v23 & 1) == 0)
  {
    v24 = countAndFlagsBits & 0xFFFFFFFFFFFFLL;
    if ((object & 0x2000000000000000) != 0)
    {
      v24 = HIBYTE(object) & 0xF;
    }

    v93 = countAndFlagsBits;
    v94 = object;
    v95 = 0;
    v96 = v24;

    v25 = String.Iterator.next()();
    if (!v25.value._object)
    {
    }

    countAndFlagsBits = v25.value._countAndFlagsBits;
    object = v25.value._object;
    v88 = v6 + 28;
    v85 = (v7 + 8);
    while (1)
    {
      v11 = (object & 0x2000000000000000) != 0 ? HIBYTE(object) & 0xF : countAndFlagsBits & 0xFFFFFFFFFFFFLL;
      if (v11)
      {
        break;
      }

LABEL_59:

      v44 = String.Iterator.next()();
      countAndFlagsBits = v44.value._countAndFlagsBits;
      object = v44.value._object;
      if (!v44.value._object)
      {
      }
    }

    v26 = 0;
    v83 = (object & 0xFFFFFFFFFFFFFFFLL) + 32;
    v84 = object & 0xFFFFFFFFFFFFFFLL;
    while (1)
    {
      if ((object & 0x1000000000000000) != 0)
      {
        v31 = _StringGuts.foreignErrorCorrectedScalar(startingAt:)();
        v33 = v32;
      }

      else
      {
        if ((object & 0x2000000000000000) != 0)
        {
          v92[0] = countAndFlagsBits;
          v92[1] = v84;
          v30 = v92 + v26;
        }

        else
        {
          v29 = v83;
          if ((countAndFlagsBits & 0x1000000000000000) == 0)
          {
            v29 = _StringObject.sharedUTF8.getter();
          }

          v30 = (v29 + v26);
        }

        v31 = *v30;
        if ((*v30 & 0x80000000) == 0)
        {
          goto LABEL_40;
        }

        v43 = (__clz(v31 ^ 0xFF) - 24);
        if (v43 > 2)
        {
          if (v43 == 3)
          {
            v31 = ((v31 & 0xF) << 12) | ((v30[1] & 0x3F) << 6) | v30[2] & 0x3F;
            v33 = 3;
          }

          else
          {
            v31 = ((v31 & 0xF) << 18) | ((v30[1] & 0x3F) << 12) | ((v30[2] & 0x3F) << 6) | v30[3] & 0x3F;
            v33 = 4;
          }

          goto LABEL_41;
        }

        if (v43 == 1)
        {
LABEL_40:
          v33 = 1;
        }

        else
        {
          v31 = v30[1] & 0x3F | ((v31 & 0x1F) << 6);
          v33 = 2;
        }
      }

LABEL_41:
      v34 = *(v6 + 16);
      if (!v34)
      {
        goto LABEL_78;
      }

      if (*(v88 + 4 * v34) & 1) != 0 && (v35 = v86, Unicode.Scalar.properties.getter(), v36 = Unicode.Scalar.Properties.isCased.getter(), (*v85)(v35, v87), (v36))
      {
        v37 = *(v90 + 20);
        v38 = *(v3 + v37);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v38 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v38 + 2) + 1, 1, v38, &_ss23_ContiguousArrayStorageCy17_StringProcessing11InstructionVGMd, &_ss23_ContiguousArrayStorageCy17_StringProcessing11InstructionVGMR);
        }

        v40 = *(v38 + 2);
        v39 = *(v38 + 3);
        v41 = v40 + 1;
        if (v40 >= v39 >> 1)
        {
          v38 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v39 > 1), v40 + 1, 1, v38, &_ss23_ContiguousArrayStorageCy17_StringProcessing11InstructionVGMd, &_ss23_ContiguousArrayStorageCy17_StringProcessing11InstructionVGMR);
        }

        v27 = v31;
        v28 = 0x980000000000000;
      }

      else
      {
        v37 = *(v90 + 20);
        v38 = *(v3 + v37);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v38 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v38 + 2) + 1, 1, v38, &_ss23_ContiguousArrayStorageCy17_StringProcessing11InstructionVGMd, &_ss23_ContiguousArrayStorageCy17_StringProcessing11InstructionVGMR);
        }

        v40 = *(v38 + 2);
        v42 = *(v38 + 3);
        v41 = v40 + 1;
        if (v40 >= v42 >> 1)
        {
          v38 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v42 > 1), v40 + 1, 1, v38, &_ss23_ContiguousArrayStorageCy17_StringProcessing11InstructionVGMd, &_ss23_ContiguousArrayStorageCy17_StringProcessing11InstructionVGMR);
        }

        v27 = v31;
        v28 = 0x900000000000000;
      }

      *(v38 + 2) = v41;
      *&v38[8 * v40 + 32] = v27 | v28;
      v3 = v91;
      *(v91 + v37) = v38;
      v26 += v33;
      v6 = v89;
      if (v26 >= v11)
      {
        goto LABEL_59;
      }
    }
  }

  if (v10)
  {
    goto LABEL_79;
  }

  v45 = object & 0x2000000000000000;
  v46 = countAndFlagsBits & 0xFFFFFFFFFFFFLL;
  if ((object & 0x2000000000000000) != 0)
  {
    v47 = HIBYTE(object) & 0xF;
  }

  else
  {
    v47 = countAndFlagsBits & 0xFFFFFFFFFFFFLL;
  }

  v93 = countAndFlagsBits;
  v94 = object;
  v95 = 0;
  v96 = v47;
  v88 = v47;

  v48 = String.Iterator.next()();
  if (v48.value._object)
  {
    v49 = v48.value._countAndFlagsBits;
    v50 = v48.value._object;
    do
    {
      if (v49 == 2573 && v50 == 0xE200000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
      {
      }

      else
      {
        if ((Character._isSingleScalar.getter() & 1) == 0)
        {
          goto LABEL_117;
        }

        result = specialized Collection.first.getter(v49, v50);
        if ((result & 0x100000000) != 0)
        {
          __break(1u);
LABEL_132:
          __break(1u);
          return result;
        }

        if ((result & 0xFFFFFF80) != 0)
        {
LABEL_117:

          goto LABEL_118;
        }

        result = specialized Collection.first.getter(v49, v50);
        if ((result & 0x100000000) != 0)
        {
          goto LABEL_132;
        }

        v52 = result;

        if ((v52 & 0xFFFFFF00) != 0)
        {
          __break(1u);
LABEL_78:
          __break(1u);
LABEL_79:
          v45 = object & 0x2000000000000000;
          v46 = countAndFlagsBits & 0xFFFFFFFFFFFFLL;
LABEL_118:
          if (v45)
          {
            v72 = v11;
          }

          else
          {
            v72 = v46;
          }

          v93 = countAndFlagsBits;
          v94 = object;
          v95 = 0;
          v96 = v72;

          v74 = String.Iterator.next()();
          v73 = v74.value._countAndFlagsBits;
          if (v74.value._object)
          {
            v75 = v74.value._object;
            do
            {
              Compiler.ByteCodeGen.emitCharacter(_:)(v73, v75);

              v76 = String.Iterator.next()();
              v73 = v76.value._countAndFlagsBits;
              v75 = v76.value._object;
            }

            while (v76.value._object);
          }
        }
      }

      v51 = String.Iterator.next()();
      v49 = v51.value._countAndFlagsBits;
      v50 = v51.value._object;
    }

    while (v51.value._object);
  }

  v53 = v88;
  if (!v88)
  {
    goto LABEL_118;
  }

  v79 = countAndFlagsBits & 0xFFFFFFFFFFFFLL;
  v80 = HIBYTE(object) & 0xF;
  v81 = object & 0x2000000000000000;
  v54 = (object & 0x1000000000000000) == 0 || (countAndFlagsBits & 0x800000000000000) != 0;
  v55 = 11;
  if (v54)
  {
    v55 = 7;
  }

  v84 = 4 * v88;
  v85 = (v55 | (v88 << 16));
  v2 = 15;
  v56 = specialized DefaultIndices<>.index(before:)(v85, countAndFlagsBits, object);
  v92[0] = 15;
  v6 = v89;
  v82 = v89 + 28;
  v83 = v56 >> 14;
  v3 = (4 << v54);
  v78 = object & 0xFFFFFFFFFFFFFFLL;
  v77[1] = (object & 0xFFFFFFFFFFFFFFFLL) + 32;
  v10 = v7 + 8;

  v57 = 0;
  while (1)
  {
    specialized DefaultIndices.formIndex(after:)(v92, countAndFlagsBits, object);
    if (v2 & 0xC) != v3 && (v2)
    {
      v58 = v2 >> 16;
      if (v2 >> 16 >= v53)
      {
        goto LABEL_127;
      }

LABEL_95:
      if ((object & 0x1000000000000000) != 0)
      {
        goto LABEL_102;
      }

      goto LABEL_96;
    }

    if ((v2 & 0xC) == v3)
    {
      v2 = _StringGuts._slowEnsureMatchingEncoding(_:)(v2, countAndFlagsBits, object);
    }

    v58 = v2 >> 16;
    if (v2 >> 16 >= v53)
    {
      goto LABEL_126;
    }

    if (v2)
    {
      goto LABEL_95;
    }

    v2 = _StringGuts.scalarAlignSlow(_:)(v2, countAndFlagsBits, object);
    v58 = v2 >> 16;
    if ((object & 0x1000000000000000) != 0)
    {
LABEL_102:
      v59 = _StringGuts.foreignErrorCorrectedScalar(startingAt:)();
      goto LABEL_103;
    }

LABEL_96:
    if (v81)
    {
      v93 = countAndFlagsBits;
      v94 = v78;
    }

    else if ((countAndFlagsBits & 0x1000000000000000) == 0)
    {
      v2 = v58;
      _StringObject.sharedUTF8.getter();
    }

    v59 = _decodeScalar(_:startingAt:)();
LABEL_103:
    v60 = v59;
    v61 = *(v6 + 16);
    if (!v61)
    {
      break;
    }

    if (*(v82 + 4 * v61) & 1) != 0 && (v62 = v86, Unicode.Scalar.properties.getter(), v63 = Unicode.Scalar.Properties.isCased.getter(), (*v10)(v62, v87), (v63))
    {
      v64 = *(v90 + 20);
      v65 = v57 == v83;
      v66 = 0x980000000000000;
      v67 = 0x9C0000000000000;
    }

    else
    {
      v64 = *(v90 + 20);
      v65 = v57 == v83;
      v66 = 0x900000000000000;
      v67 = 0x940000000000000;
    }

    if (v65)
    {
      v68 = v67;
    }

    else
    {
      v68 = v66;
    }

    v69 = *(v91 + v64);
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v69 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v69 + 2) + 1, 1, v69, &_ss23_ContiguousArrayStorageCy17_StringProcessing11InstructionVGMd, &_ss23_ContiguousArrayStorageCy17_StringProcessing11InstructionVGMR);
    }

    v71 = *(v69 + 2);
    v70 = *(v69 + 3);
    if (v71 >= v70 >> 1)
    {
      v69 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v70 > 1), v71 + 1, 1, v69, &_ss23_ContiguousArrayStorageCy17_StringProcessing11InstructionVGMd, &_ss23_ContiguousArrayStorageCy17_StringProcessing11InstructionVGMR);
    }

    *(v69 + 2) = v71 + 1;
    *&v69[8 * v71 + 32] = v68 | v60;
    *(v91 + v64) = v69;
    v2 = v92[0];
    v57 = v92[0] >> 14;
    v53 = v88;
    v6 = v89;
    if (v92[0] >> 14 == v84)
    {
    }
  }

  __break(1u);
LABEL_126:
  __break(1u);
LABEL_127:
  __break(1u);
LABEL_128:
  __break(1u);
LABEL_129:
  __break(1u);
LABEL_130:
  result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v10 + 16) + 1, 1, v10, &_ss23_ContiguousArrayStorageCy17_StringProcessing11InstructionVGMd, &_ss23_ContiguousArrayStorageCy17_StringProcessing11InstructionVGMR);
  v10 = result;
LABEL_14:
  v19 = v2 | v6;
  v21 = *(v10 + 16);
  v20 = *(v10 + 24);
  if (v21 >= v20 >> 1)
  {
    result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v20 > 1), v21 + 1, 1, v10, &_ss23_ContiguousArrayStorageCy17_StringProcessing11InstructionVGMd, &_ss23_ContiguousArrayStorageCy17_StringProcessing11InstructionVGMR);
    v10 = result;
  }

  *(v10 + 16) = v21 + 1;
  *(v10 + 8 * v21 + 32) = v19;
  *v3 = v10;
  return result;
}

BOOL specialized Sequence.allSatisfy(_:)(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 16);
  v4 = (a1 + 32);
  do
  {
    v5 = v3;
    if (!v3)
    {
      break;
    }

    v6 = *v4;

    v7 = DSLTree.Node._canOnlyMatchAtStartImpl(_:)(a2, v6);

    if (v7 == 2)
    {
      break;
    }

    ++v4;
    v3 = v5 - 1;
  }

  while ((v7 & 1) != 0);
  return v5 == 0;
}

unint64_t specialized Sequence.allSatisfy(_:)(unint64_t a1, unint64_t a2)
{
  if ((a2 & 0x2000000000000000) != 0)
  {
    v4 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v4 = a1 & 0xFFFFFFFFFFFFLL;
  }

  v5 = 4 * v4;
  v6 = (a1 >> 59) & 1;
  if ((a2 & 0x1000000000000000) == 0)
  {
    LOBYTE(v6) = 1;
  }

  v7 = 4 << v6;
  v20 = a2 & 0xFFFFFFFFFFFFFFLL;
  v8 = (a2 & 0xFFFFFFFFFFFFFFFLL) + 32;
  result = 15;
  while (1)
  {
    v10 = result >> 14;
    if (result >> 14 == v5)
    {
      return v10 == v5;
    }

    v11 = result & 0xC;
    v12 = result;
    if (v11 == v7)
    {
      v16 = result;
      v12 = _StringGuts._slowEnsureMatchingEncoding(_:)(result, a1, a2);
      result = v16;
    }

    v13 = v12 >> 16;
    if (v12 >> 16 >= v4)
    {
      break;
    }

    if ((a2 & 0x1000000000000000) != 0)
    {
      v18 = result;
      v15 = String.UTF8View._foreignSubscript(position:)();
      result = v18;
      if (v11 != v7)
      {
        goto LABEL_18;
      }

LABEL_23:
      result = _StringGuts._slowEnsureMatchingEncoding(_:)(result, a1, a2);
      if ((a2 & 0x1000000000000000) != 0)
      {
        goto LABEL_19;
      }

LABEL_7:
      result = (result & 0xFFFFFFFFFFFF0000) + 65540;
      if (v15 < 0)
      {
        return v10 == v5;
      }
    }

    else
    {
      if ((a2 & 0x2000000000000000) != 0)
      {
        v19[0] = a1;
        v19[1] = v20;
        v14 = v19;
      }

      else
      {
        v14 = v8;
        if ((a1 & 0x1000000000000000) == 0)
        {
          v17 = result;
          v14 = _StringObject.sharedUTF8.getter();
          result = v17;
        }
      }

      v15 = *(v14 + v13);
      if (v11 == v7)
      {
        goto LABEL_23;
      }

LABEL_18:
      if ((a2 & 0x1000000000000000) == 0)
      {
        goto LABEL_7;
      }

LABEL_19:
      if (v4 <= result >> 16)
      {
        goto LABEL_27;
      }

      result = String.UTF8View._foreignIndex(after:)();
      if (v15 < 0)
      {
        return v10 == v5;
      }
    }
  }

  __break(1u);
LABEL_27:
  __break(1u);
  return result;
}