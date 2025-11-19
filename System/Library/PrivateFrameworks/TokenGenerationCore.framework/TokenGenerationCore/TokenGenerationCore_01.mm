uint64_t specialized visit #1 <A>(_:) in Regex2BNF.BNFConvert.reversePostOrder<A>(_:)(uint64_t a1, uint64_t a2, uint64_t a3, char *a4, uint64_t a5)
{
  swift_beginAccess();
  v10 = *(a3 + 16);

  v11 = specialized Set.contains(_:)(a1, a2, v10);

  if ((v11 & 1) == 0)
  {
    swift_beginAccess();

    specialized Set._Variant.insert(_:)(&v35, a1, a2);
    swift_endAccess();

    v13 = *(a4 + 3);
    if (*(v13 + 16) && (v14 = specialized __RawDictionaryStorage.find<A>(_:)(a1, a2), (v15 & 1) != 0))
    {
      v32 = a1;
      v33 = a2;
      v16 = *(*(v13 + 56) + 8 * v14);
      v34 = *(v16 + 16);
      if (v34)
      {
        v17 = v16 + 32;

        v18 = 0;
        v30 = v16 + 32;
        v31 = v16;
        while (1)
        {
          if (v18 >= *(v16 + 16))
          {
            __break(1u);
            goto LABEL_24;
          }

          v16 = *(v17 + 8 * v18);
          v19 = *(v16 + 16);
          if (v19)
          {
            break;
          }

LABEL_14:
          ++v18;
          v16 = v31;
          if (v18 == v34)
          {
            goto LABEL_18;
          }
        }

        v20 = *(v17 + 8 * v18);

        v21 = (v16 + 24 * v19 + 24);
        while (v19 <= *(v16 + 16))
        {
          v22 = *v21;
          if ((*v21 & 0xC0) == 0x80)
          {
            v24 = *(v21 - 2);
            v23 = *(v21 - 1);

            specialized visit #1 <A>(_:) in Regex2BNF.BNFConvert.reversePostOrder<A>(_:)(v24, v23, a3, a4, a5);
            outlined consume of Regex2BNF.Symbol(v24, v23, v22);
          }

          v21 -= 24;
          if (!--v19)
          {

            v17 = v30;
            goto LABEL_14;
          }
        }

        __break(1u);
      }

LABEL_18:
      swift_beginAccess();
      a4 = *(a5 + 16);
      v17 = v33;

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *(a5 + 16) = a4;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
LABEL_24:
        a4 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(a4 + 2) + 1, 1, a4);
        *(a5 + 16) = a4;
      }

      v27 = *(a4 + 2);
      v26 = *(a4 + 3);
      if (v27 >= v26 >> 1)
      {
        a4 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v26 > 1), v27 + 1, 1, a4);
      }

      *(a4 + 2) = v27 + 1;
      v28 = &a4[32 * v27];
      *(v28 + 4) = v32;
      *(v28 + 5) = v17;
      v29 = MEMORY[0x1E69E7CC0];
      *(v28 + 6) = v16;
      *(v28 + 7) = v29;
      *(a5 + 16) = a4;
      return swift_endAccess();
    }

    else
    {
      result = _assertionFailure(_:_:file:line:flags:)();
      __break(1u);
    }
  }

  return result;
}

uint64_t lazy protocol witness table accessor for type GenerationError and conformance GenerationError(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t specialized Regex2BNF.BNFConvert.mapEscapedBuiltin(_:)(uint64_t a1)
{
  v2 = type metadata accessor for AST.Atom.EscapedBuiltin();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2);
  v6 = &v15 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v3 + 16))(v6, a1, v2);
  v7 = (*(v3 + 88))(v6, v2);
  if (v7 == *MEMORY[0x1E69E8C28] || v7 == *MEMORY[0x1E69E8C30] || v7 == *MEMORY[0x1E69E8C40] || v7 == *MEMORY[0x1E69E8C38] || v7 == *MEMORY[0x1E69E8BA8] || v7 == *MEMORY[0x1E69E8C20] || v7 == *MEMORY[0x1E69E8BC0])
  {
    goto LABEL_21;
  }

  if (v7 == *MEMORY[0x1E69E8B80])
  {
    return 3;
  }

  if (v7 == *MEMORY[0x1E69E8BE0])
  {
    return 4;
  }

  if (v7 == *MEMORY[0x1E69E8C00] || v7 == *MEMORY[0x1E69E8C08] || v7 == *MEMORY[0x1E69E8B58] || v7 == *MEMORY[0x1E69E8BD8])
  {
    goto LABEL_21;
  }

  if (v7 == *MEMORY[0x1E69E8B60])
  {
    return 1;
  }

  if (v7 == *MEMORY[0x1E69E8B98])
  {
    return 2;
  }

  if (v7 == *MEMORY[0x1E69E8B78] || v7 == *MEMORY[0x1E69E8BB8])
  {
    goto LABEL_21;
  }

  if (v7 == *MEMORY[0x1E69E8BA0])
  {
    return 5;
  }

  if (v7 == *MEMORY[0x1E69E8BF0])
  {
    return 6;
  }

  if (v7 == *MEMORY[0x1E69E8C48] || v7 == *MEMORY[0x1E69E8BD0] || v7 == *MEMORY[0x1E69E8B90] || v7 == *MEMORY[0x1E69E8BE8] || v7 == *MEMORY[0x1E69E8BC8] || v7 == *MEMORY[0x1E69E8C10] || v7 == *MEMORY[0x1E69E8B88] || v7 == *MEMORY[0x1E69E8C18] || v7 == *MEMORY[0x1E69E8BF8] || v7 == *MEMORY[0x1E69E8B70] || v7 == *MEMORY[0x1E69E8B68] || v7 == *MEMORY[0x1E69E8BB0])
  {
LABEL_21:
    type metadata accessor for GenerationError();
    lazy protocol witness table accessor for type GenerationError and conformance GenerationError(&lazy protocol witness table cache variable for type GenerationError and conformance GenerationError, type metadata accessor for GenerationError);
    swift_allocError();
    swift_storeEnumTagMultiPayload();
    return swift_willThrow();
  }

  result = _diagnoseUnexpectedEnumCase<A>(type:)();
  __break(1u);
  return result;
}

uint64_t specialized static Regex2BNF.convert(_:)@<X0>(void *a1@<X8>)
{
  v3 = type metadata accessor for AST.Node();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v7 = &v29 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v31 = 0;
  *(&v31 + 1) = 0xE000000000000000;
  *&v32 = MEMORY[0x1E69E7CC8];
  *(&v32 + 1) = MEMORY[0x1E69E7CC8];
  v33 = 0uLL;
  AST.root.getter();
  v8 = Regex2BNF.BNFConvert.convert(_:)(v7);
  if (v1)
  {
    (*(v4 + 8))(v7, v3);
  }

  v10 = v8;
  (*(v4 + 8))(v7, v3);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy19TokenGenerationCore9Regex2BNFO6ChoiceVGMd, &_ss23_ContiguousArrayStorageCy19TokenGenerationCore9Regex2BNFO6ChoiceVGMR);
  v11 = swift_allocObject();
  *(v11 + 16) = xmmword_1A8FC9400;
  *(v11 + 32) = v10;

  v12._countAndFlagsBits = 1414483794;
  v12._object = 0xE400000000000000;
  v13 = Regex2BNF.SymbolGenerator.genSuffix(for:)(v12);
  v30 = v31;

  MEMORY[0x1AC57C120](1414483794, 0xE400000000000000);

  MEMORY[0x1AC57C120](v13._countAndFlagsBits, v13._object);

  v14 = v30;
  v15 = *(&v32 + 1);
  if (!*(*(&v32 + 1) + 16) || (, specialized __RawDictionaryStorage.find<A>(_:)(v14, *(&v14 + 1)), v17 = v16, , (v17 & 1) == 0))
  {

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *&v30 = v15;
    specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v11, v14, *(&v14 + 1), isUniquelyReferenced_nonNull_native);

    *(&v32 + 1) = v30;

    v33 = v14;
    Regex2BNF.BNFConvert.optimize()();
    v35 = v32;
    v36 = v33;
    v34 = v31;
    v19 = *(&v33 + 1);
    if (*(&v33 + 1))
    {
      v20 = v36;
      v39 = v31;
      v37 = *(&v35 + 1);
      v38 = v35;
      v21 = swift_allocObject();
      *(v21 + 16) = MEMORY[0x1E69E7CD0];
      v22 = swift_allocObject();
      *(v22 + 16) = MEMORY[0x1E69E7CC0];
      v23 = (v22 + 16);
      specialized visit #1 <A>(_:) in Regex2BNF.BNFConvert.reversePostOrder<A>(_:)(v20, v19, v21, &v34, v22);
      swift_beginAccess();
      specialized MutableCollection<>.reverse()();
      swift_endAccess();
      v24 = *v23;

      if (v24[2])
      {
        v26 = v24[4];
        v25 = v24[5];
        v27 = v24[6];
        v28 = v24[7];

        outlined destroy of String(&v39);
        outlined destroy of [Regex2BNF.CharacterPredicate](&v38, &_sSDySSSiGMd, &_sSDySSSiGMR);
        outlined destroy of [Regex2BNF.CharacterPredicate](&v37, &_sSDy19TokenGenerationCore9Regex2BNFO17NonTerminalSymbolVSayAC6ChoiceVGGMd, &_sSDy19TokenGenerationCore9Regex2BNFO17NonTerminalSymbolVSayAC6ChoiceVGGMR);

        *a1 = v26;
        a1[1] = v25;
        a1[2] = v27;
        a1[3] = v28;
        a1[4] = v24;
        return result;
      }

      __break(1u);
    }
  }

  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

uint64_t specialized static Regex2BNF._printAsBNF(inputRegex:)(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = type metadata accessor for SyntaxOptions();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v10 = v30 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0) + 24;
  v11 = type metadata accessor for AST();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  v14 = MEMORY[0x1EEE9AC00](v11);
  v16 = v30 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0) + 24;
  v30[0] = a1;
  v30[1] = a2;
  MEMORY[0x1AC57AEB0](v14);
  lazy protocol witness table accessor for type String and conformance String();
  parse<A>(_:_:)();
  if (v2)
  {
    (*(v7 + 8))(v10, v6);
    if (one-time initialization token for guided != -1)
    {
      swift_once();
    }

    v17 = type metadata accessor for Logger();
    __swift_project_value_buffer(v17, static Log.guided);
    v18 = v2;
    v19 = Logger.logObject.getter();
    v20 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v19, v20))
    {
      v21 = swift_slowAlloc();
      v22 = swift_slowAlloc();
      v30[0] = v22;
      *v21 = 136315138;
      swift_getErrorValue();
      v23 = Error.localizedDescription.getter();
      v25 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v23, v24, v30);

      *(v21 + 4) = v25;
      _os_log_impl(&dword_1A8E85000, v19, v20, "Regex2BNF._printAsBNF: error: %s", v21, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v22);
      MEMORY[0x1AC57DBF0](v22, -1, -1);
      MEMORY[0x1AC57DBF0](v21, -1, -1);
    }

    type metadata accessor for GenerationError();
    lazy protocol witness table accessor for type GenerationError and conformance GenerationError();
    swift_allocError();
    swift_storeEnumTagMultiPayload();
    swift_willThrow();
  }

  else
  {
    (*(v7 + 8))(v10, v6);
    specialized static Regex2BNF.convert(_:)(&v31);
    v38 = v34;
    v3 = specialized Regex2BNF.BNF.render()(v34);
    (*(v12 + 8))(v16, v11);
    v37 = v31;
    v27 = v32;
    v28 = v33;
    outlined destroy of Regex2BNF.NonTerminalSymbol(&v37);
    v36 = v27;
    outlined destroy of Regex2BNF.Expression(&v36);
    v35 = v28;
    outlined destroy of [Regex2BNF.CharacterPredicate](&v35, &_sSay19TokenGenerationCore9Regex2BNFO18CharacterPredicateVGMd, &_sSay19TokenGenerationCore9Regex2BNFO18CharacterPredicateVGMR);
    outlined destroy of [Regex2BNF.CharacterPredicate](&v38, &_sSay19TokenGenerationCore9Regex2BNFO4RuleVGMd, &_sSay19TokenGenerationCore9Regex2BNFO4RuleVGMR);
  }

  return v3;
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

uint64_t __swift_project_value_buffer(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

unint64_t lazy protocol witness table accessor for type GenerationError and conformance GenerationError()
{
  result = lazy protocol witness table cache variable for type GenerationError and conformance GenerationError;
  if (!lazy protocol witness table cache variable for type GenerationError and conformance GenerationError)
  {
    type metadata accessor for GenerationError();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type GenerationError and conformance GenerationError);
  }

  return result;
}

uint64_t outlined destroy of [Regex2BNF.CharacterPredicate](uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

unint64_t static BackusNaurParser.parsedRules(_:)(uint64_t *a1, unint64_t a2)
{
  v3 = v2;
  v6 = type metadata accessor for Logger();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v10 = &v61 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v64 = type metadata accessor for Signpost();
  v11 = *(*(v64 - 8) + 64);
  MEMORY[0x1EEE9AC00](v64);
  v13 = &v61 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (one-time initialization token for guided != -1)
  {
    goto LABEL_37;
  }

  while (1)
  {
    v14 = __swift_project_value_buffer(v6, static Log.guided);
    (*(v7 + 16))(v10, v14, v6);
    v65 = v13;
    v15 = Signpost.init(_:_:)(v10, "GuidedGenerationConstraints.BackusNaurParser.parsedRules", 56, 2, v13);
    v70 = 10;
    *&v71 = 0xE100000000000000;
    MEMORY[0x1EEE9AC00](v15);
    *(&v61 - 2) = &v70;

    v7 = specialized Collection.split(maxSplits:omittingEmptySubsequences:whereSeparator:)(0x7FFFFFFFFFFFFFFFLL, 1, partial apply for specialized closure #1 in Collection<>.split(separator:maxSplits:omittingEmptySubsequences:), (&v61 - 4), a1, a2, v16);
    v68 = v3;
    v6 = *(v7 + 16);
    if (v6)
    {
      v70 = MEMORY[0x1E69E7CC0];
      specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v6, 0);
      a1 = 0;
      v17 = v70;
      v18 = *(v7 + 16);
      v66 = v6;
      v67 = v18;
      v63 = v7;
      a2 = v7 + 56;
      v3 = v65;
      while (v67 != a1)
      {
        v19 = *(a2 - 24);
        v13 = *(a2 - 16);
        v20 = *a2;
        *&v69 = *(a2 - 8);
        v70 = v17;
        v10 = *(v17 + 16);
        v21 = *(v17 + 24);
        v7 = v10 + 1;

        if (v10 >= v21 >> 1)
        {
          specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v21 > 1), v10 + 1, 1);
          v3 = v65;
          v17 = v70;
        }

        *(v17 + 16) = v7;
        v22 = (v17 + 40 * v10);
        v22[4] = a1;
        v22[5] = v19;
        v23 = v69;
        v22[6] = v13;
        v22[7] = v23;
        v22[8] = v20;
        a2 += 32;
        a1 = (a1 + 1);
        v6 = v66;
        if (v66 == a1)
        {

          goto LABEL_10;
        }
      }

      __break(1u);
      goto LABEL_35;
    }

    v17 = MEMORY[0x1E69E7CC0];
    v3 = v65;
LABEL_10:
    v24 = *(v17 + 16);
    v6 = MEMORY[0x1E69E7CC0];
    if (!v24)
    {
      break;
    }

    a2 = 0;
    v25 = v17 + 64;
    *&v69 = *(v17 + 16);
    v63 = (v24 - 1);
    v66 = (v17 + 64);
LABEL_12:
    v67 = v6;
    v3 = (v25 + 40 * a2);
    a1 = a2;
    while (a1 < *(v17 + 16))
    {
      v10 = v17;
      v7 = *(v3 - 4);
      v26 = *(v3 - 3);
      v27 = *(v3 - 2);
      v6 = *(v3 - 1);
      a2 = a1 + 1;
      v13 = *v3;

      if ((specialized Sequence<>.starts<A>(with:)(12079, 0xE200000000000000, v26, v27) & 1) == 0)
      {
        v28 = v67;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v70 = v28;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v28 + 16) + 1, 1);
          v28 = v70;
        }

        v30 = v28;
        v32 = *(v28 + 16);
        v31 = *(v28 + 24);
        v33 = (v32 + 1);
        v3 = v65;
        if (v32 >= v31 >> 1)
        {
          v67 = (v32 + 1);
          v62 = v32;
          specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v31 > 1), v32 + 1, 1);
          v33 = v67;
          v32 = v62;
          v3 = v65;
          v30 = v70;
        }

        *(v30 + 16) = v33;
        v34 = (v30 + 40 * v32);
        v34[4] = v7;
        v34[5] = v26;
        v34[6] = v27;
        v34[7] = v6;
        v34[8] = v13;
        v6 = v30;
        v17 = v10;
        v25 = v66;
        if (v63 != a1)
        {
          goto LABEL_12;
        }

        goto LABEL_22;
      }

      v3 += 5;
      a1 = (a1 + 1);
      v17 = v10;
      if (v69 == a2)
      {
        v3 = v65;
        v6 = v67;
        goto LABEL_22;
      }
    }

LABEL_35:
    __break(1u);
LABEL_36:
    __break(1u);
LABEL_37:
    swift_once();
  }

LABEL_22:

  v13 = *(v6 + 16);
  if (v13)
  {
    v72 = MEMORY[0x1E69E7CC0];
    v3 = &v72;
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v13, 0);
    a2 = 0;
    v10 = v72;
    v35 = v6;
    a1 = (v6 + 64);
    while (a2 < *(v35 + 16))
    {
      v37 = *(a1 - 4);
      v36 = *(a1 - 3);
      v38 = *(a1 - 2);
      v39 = *(a1 - 1);
      v40 = *a1;

      v41 = v37;
      v42 = v68;
      static BackusNaurParser.parse(line:lineNumber:)(v36, v38, v39, v40, v41, &v70);
      v68 = v42;
      if (v42)
      {

        v47 = v65;
        Signpost.end()();
        v48 = v64;
        v49 = *(v64 + 20);
        v50 = type metadata accessor for OSSignposter();
        (*(*(v50 - 8) + 8))(v47 + v49, v50);
        v51 = *(v48 + 24);
        v52 = type metadata accessor for OSSignpostID();
        (*(*(v52 - 8) + 8))(v47 + v51, v52);
        v53 = *(v47 + *(v48 + 28));

        return v10;
      }

      v7 = v70;
      v43 = v71;
      v72 = v10;
      v45 = *(v10 + 16);
      v44 = *(v10 + 24);
      v6 = v45 + 1;
      v3 = v65;
      if (v45 >= v44 >> 1)
      {
        v69 = v71;
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v44 > 1), v45 + 1, 1);
        v43 = v69;
        v3 = v65;
        v10 = v72;
      }

      ++a2;
      *(v10 + 16) = v6;
      v46 = v10 + 24 * v45;
      *(v46 + 32) = v7;
      *(v46 + 40) = v43;
      a1 += 5;
      if (v13 == a2)
      {

        goto LABEL_32;
      }
    }

    goto LABEL_36;
  }

  v10 = MEMORY[0x1E69E7CC0];
LABEL_32:
  Signpost.end()();
  v54 = v64;
  v55 = *(v64 + 20);
  v56 = type metadata accessor for OSSignposter();
  (*(*(v56 - 8) + 8))(v3 + v55, v56);
  v57 = *(v54 + 24);
  v58 = type metadata accessor for OSSignpostID();
  (*(*(v58 - 8) + 8))(v3 + v57, v58);
  v59 = *(v3 + *(v54 + 28));

  return v10;
}

uint64_t static BackusNaurParser.parse(line:lineNumber:)@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t *a6@<X8>)
{
  v7 = v6;
  v171 = a4;
  v173 = a3;
  v12 = type metadata accessor for Symbol(0);
  v13 = *(v12 - 8);
  v166 = v12;
  v167 = v13;
  v14 = *(v13 + 64);
  v15 = MEMORY[0x1EEE9AC00](v12);
  v16 = MEMORY[0x1EEE9AC00](v15);
  v17 = MEMORY[0x1EEE9AC00](v16);
  v168 = &v152 - v18;
  v19 = MEMORY[0x1EEE9AC00](v17);
  v20 = MEMORY[0x1EEE9AC00](v19);
  v22 = &v152 - v21;
  MEMORY[0x1EEE9AC00](v20);
  v24 = MEMORY[0x1EEE9AC00](&v152 - v23);
  v25 = MEMORY[0x1EEE9AC00](v24);
  if ((a1 ^ a2) < 0x4000)
  {
    v170 = 0;
LABEL_3:

    goto LABEL_4;
  }

  v163 = (&v152 - v27);
  v160 = v26;
  v159 = v25;
  v157 = v22;
  v164 = v30;
  v155 = v29;
  v154 = v28;
  v153 = a6;
  v169 = v7;
  v161 = a5;
  v31 = 0;
  v165 = 0;
  v158 = 0;
  v35 = 0;
  v170 = 0;
  v156 = v174 + 1;
  v172 = MEMORY[0x1E69E7CC0];
  v162 = MEMORY[0x1E69E7CC0];
  while (1)
  {
    v39 = Substring.subscript.getter();
    v41 = v40;
    v42 = Substring.index(after:)();
    v43 = (v31 + 1);
    if (__OFADD__(v31, 1))
    {
      __break(1u);
LABEL_264:
      __break(1u);
LABEL_265:

      lazy protocol witness table accessor for type SyntaxError and conformance SyntaxError();
      swift_allocError();
      v170 = 0;
      *v32 = xmmword_1A8FC9490;
LABEL_271:
      *(v32 + 16) = 0;
      a5 = v161;
      goto LABEL_6;
    }

    v44 = v42;
    if (v35 > 4)
    {
      break;
    }

    if (v35 <= 1)
    {
      if (v35)
      {
        if (v39 == 32 && v41 == 0xE100000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
        {

          v38 = 0;
          v35 = 1;
          goto LABEL_11;
        }

        if (v39 == 58 && v41 == 0xE100000000000000)
        {

          v38 = 0;
          v35 = 2;
          goto LABEL_11;
        }

        v90 = _stringCompareWithSmolCheck(_:_:expecting:)();

        if (v90)
        {
          v38 = 0;
          v35 = 2;
          goto LABEL_11;
        }

LABEL_256:

        lazy protocol witness table accessor for type SyntaxError and conformance SyntaxError();
        swift_allocError();
        v141 = xmmword_1A8FC94A0;
LABEL_257:
        *v32 = v141;
      }

      else
      {
        if (v39 == 60 && v41 == 0xE100000000000000)
        {
LABEL_31:

LABEL_96:
          v38 = 0;
          v35 = 5;
          goto LABEL_11;
        }

        v76 = _stringCompareWithSmolCheck(_:_:expecting:)();

        if (v76)
        {
          goto LABEL_96;
        }

        lazy protocol witness table accessor for type SyntaxError and conformance SyntaxError();
        swift_allocError();
        *v32 = 0;
        *(v32 + 8) = 0;
      }

      v151 = 3;
      goto LABEL_259;
    }

    if (v35 == 2)
    {
      if (v39 == 58 && v41 == 0xE100000000000000)
      {

        v38 = 0;
        v35 = 3;
      }

      else
      {
        v75 = _stringCompareWithSmolCheck(_:_:expecting:)();

        v35 = 3;
        if ((v75 & 1) == 0)
        {

          lazy protocol witness table accessor for type SyntaxError and conformance SyntaxError();
          swift_allocError();
          *v32 = xmmword_1A8FC94A0;
          *(v32 + 16) = 3;
          a5 = v161;
          goto LABEL_6;
        }

        v38 = 0;
      }

      goto LABEL_11;
    }

    if (v35 == 3)
    {
      if (v39 == 61 && v41 == 0xE100000000000000)
      {
        goto LABEL_58;
      }

      v45 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if ((v45 & 1) == 0)
      {
        goto LABEL_256;
      }
    }

    else
    {
      if (v39 == 32 && v41 == 0xE100000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
      {
LABEL_58:

        v38 = 0;
        v35 = 4;
        goto LABEL_11;
      }

      if (v39 == 60 && v41 == 0xE100000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
      {
        goto LABEL_31;
      }

      if (v39 == 34 && v41 == 0xE100000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
      {

        v38 = 0;
        v35 = 6;
        goto LABEL_11;
      }

      if (v39 == 37 && v41 == 0xE100000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
      {

        v38 = 0;
        v35 = 8;
        goto LABEL_11;
      }

      if ((v39 != 124 || v41 != 0xE100000000000000) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
      {
        goto LABEL_270;
      }

      v113 = v170;
      if (!v170)
      {
        goto LABEL_265;
      }

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v162 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v162 + 2) + 1, 1, v162);
      }

      v115 = *(v162 + 2);
      v114 = *(v162 + 3);
      if (v115 >= v114 >> 1)
      {
        v162 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v114 > 1), v115 + 1, 1, v162);
      }

      v116 = v162;
      *(v162 + 2) = v115 + 1;
      *&v116[8 * v115 + 32] = v113;

      v170 = 0;
    }

    v38 = 0;
    v35 = 4;
LABEL_11:
    v31 = v43;
    if (!((v44 ^ a2) >> 14))
    {
      if (v38)
      {
        v174[0] = v172;
        __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySJGMd, &_sSaySJGMR);
        lazy protocol witness table accessor for type [Character] and conformance [A]();
        v120 = String.init<A>(_:)();
        v122 = v120;
        v123 = v121;
        v124 = HIBYTE(v121) & 0xF;
        if ((v121 & 0x2000000000000000) == 0)
        {
          v124 = v120 & 0xFFFFFFFFFFFFLL;
        }

        a5 = v161;
        v31 = v170;
        v125 = v155;
        if (!v124)
        {
          goto LABEL_221;
        }

        v126 = v169;
        v127 = specialized String.UTF8View.withContiguousStorageIfAvailable<A>(_:)(v120, v121, 16);
        v169 = v126;
        if ((v127 & 0x10000) != 0)
        {

          v128 = specialized _parseInteger<A, B>(ascii:radix:)(v122, v123, 16);

          if ((v128 & 0x100) != 0)
          {
            goto LABEL_221;
          }
        }

        else
        {
          LOBYTE(v128) = v127;
          if ((v127 & 0x100) != 0)
          {
LABEL_221:

            v31 = Substring.distance(from:to:)();
            lazy protocol witness table accessor for type SyntaxError and conformance SyntaxError();
            swift_allocError();
            *v32 = v122;
            *(v32 + 8) = v123;
            v33 = 2;
            goto LABEL_5;
          }
        }

        *v125 = v128;
        type metadata accessor for TerminalSymbol(0);
        swift_storeEnumTagMultiPayload();
        swift_storeEnumTagMultiPayload();
        if (!v31)
        {

          v31 = MEMORY[0x1E69E7CC0];
        }

        v142 = v154;
        outlined init with copy of Symbol(v125, v154);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v31 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v31[2] + 1, 1, v31);
        }

        v144 = v31[2];
        v143 = v31[3];
        if (v144 >= v143 >> 1)
        {
          v31 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(v143 > 1, v144 + 1, 1, v31);
        }

        v31[2] = v144 + 1;
        outlined init with take of Symbol(v142, v31 + ((*(v167 + 80) + 32) & ~*(v167 + 80)) + *(v167 + 72) * v144);
        outlined destroy of Symbol(v125);
        v172 = MEMORY[0x1E69E7CC0];
        v35 = 4;
        if (!v165)
        {
LABEL_249:
          v170 = v31;
          goto LABEL_3;
        }
      }

      else
      {
        a5 = v161;
        v31 = v170;
        if (!v165)
        {
          goto LABEL_249;
        }
      }

      if (!v31)
      {

        v170 = 0;
LABEL_4:

        v31 = Substring.distance(from:to:)();
        lazy protocol witness table accessor for type SyntaxError and conformance SyntaxError();
        swift_allocError();
        *v32 = xmmword_1A8FC94D0;
        v33 = 3;
LABEL_5:
        *(v32 + 16) = v33;
        goto LABEL_6;
      }

      if (v35 != 4)
      {
        v170 = v31;

        goto LABEL_3;
      }

      v129 = one-time initialization token for characterSetLookup;

      if (v129 != -1)
      {
        swift_once();
      }

      v130 = 0;
      v131 = static Grammar.characterSetLookup;
      v132 = 1 << *(static Grammar.characterSetLookup + 32);
      v133 = -1;
      if (v132 < 64)
      {
        v133 = ~(-1 << v132);
      }

      v134 = static Grammar.characterSetLookup + 64;
      v135 = v133 & *(static Grammar.characterSetLookup + 64);
      v136 = (v132 + 63) >> 6;
      v137 = v158;
      while (v135)
      {
LABEL_235:
        v139 = (*(v131 + 48) + ((v130 << 10) | (16 * __clz(__rbit64(v135)))));
        if (*v139 != v137 || v165 != v139[1])
        {
          v135 &= v135 - 1;
          if ((_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
          {
            continue;
          }
        }

        v170 = v31;

        v31 = Substring.distance(from:to:)();
        lazy protocol witness table accessor for type SyntaxError and conformance SyntaxError();
        swift_allocError();
        v141 = xmmword_1A8FC94C0;
        goto LABEL_257;
      }

      while (1)
      {
        v138 = v130 + 1;
        if (__OFADD__(v130, 1))
        {
          goto LABEL_264;
        }

        if (v138 >= v136)
        {

          __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy19TokenGenerationCore6ChoiceVGMd, &_ss23_ContiguousArrayStorageCy19TokenGenerationCore6ChoiceVGMR);
          inited = swift_initStackObject();
          *(inited + 16) = xmmword_1A8FC9400;
          *(inited + 32) = v31;
          v174[0] = v162;
          specialized Array.append<A>(contentsOf:)(inited);
          v146 = v174[0];
          v147 = v153;
          v148 = v165;
          *v153 = v137;
          v147[1] = v148;
          v147[2] = v146;
        }

        v135 = *(v134 + 8 * v138);
        ++v130;
        if (v135)
        {
          v130 = v138;
          goto LABEL_235;
        }
      }
    }
  }

  if (v35 <= 6)
  {
    if (v35 == 5)
    {

      v46 = v169;
      v47 = specialized Sequence.contains(where:)(v39, v41);
      v169 = v46;

      v48 = v172;
      if (v47)
      {
        goto LABEL_253;
      }

      if ((v39 != 62 || v41 != 0xE100000000000000) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
      {
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v48 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v48 + 2) + 1, 1, v48);
        }

        v88 = *(v48 + 2);
        v87 = *(v48 + 3);
        if (v88 >= v87 >> 1)
        {
          v48 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v87 > 1), v88 + 1, 1, v48);
        }

        v38 = 0;
        *(v48 + 2) = v88 + 1;
        v172 = v48;
        v89 = &v48[16 * v88];
        *(v89 + 4) = v39;
        *(v89 + 5) = v41;
        v35 = 5;
        goto LABEL_11;
      }

      if (!*(v48 + 2))
      {

        lazy protocol witness table accessor for type SyntaxError and conformance SyntaxError();
        swift_allocError();
        v141 = xmmword_1A8FC94B0;
        goto LABEL_257;
      }

      if (!v165)
      {
        v174[0] = v48;
        __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySJGMd, &_sSaySJGMR);
        lazy protocol witness table accessor for type [Character] and conformance [A]();
        v158 = String.init<A>(_:)();
        v165 = v80;
        v38 = 0;
        v35 = 1;
        goto LABEL_10;
      }

      v174[0] = v48;
      __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySJGMd, &_sSaySJGMR);
      lazy protocol witness table accessor for type [Character] and conformance [A]();
      v49 = String.init<A>(_:)();
      v50 = v163;
      *v163 = v49;
      *(v50 + 8) = v51;
      swift_storeEnumTagMultiPayload();
      v52 = v170;
      if (!v170)
      {

        v52 = MEMORY[0x1E69E7CC0];
      }

      v53 = v160;
      outlined init with copy of Symbol(v50, v160);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v52 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v52[2] + 1, 1, v52);
      }

      v55 = v52[2];
      v54 = v52[3];
      if (v55 >= v54 >> 1)
      {
        v52 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(v54 > 1, v55 + 1, 1, v52);
      }

      v52[2] = v55 + 1;
      v56 = (*(v167 + 80) + 32) & ~*(v167 + 80);
      v170 = v52;
      outlined init with take of Symbol(v53, v52 + v56 + *(v167 + 72) * v55);
      v37 = v163;
    }

    else
    {
      if (v39 == 92 && v41 == 0xE100000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
      {

        v38 = 0;
        v35 = 7;
        goto LABEL_11;
      }

      v85 = v157;
      if (v39 == 34 && v41 == 0xE100000000000000)
      {

        v86 = v170;
      }

      else
      {
        v91 = _stringCompareWithSmolCheck(_:_:expecting:)();
        v86 = v170;
        if ((v91 & 1) == 0)
        {
          goto LABEL_50;
        }
      }

      v174[0] = v172;
      __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySJGMd, &_sSaySJGMR);
      lazy protocol witness table accessor for type [Character] and conformance [A]();
      v92 = String.init<A>(_:)();
      v93 = v169;
      v95 = _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFSS17UnicodeScalarViewV_19TokenGenerationCore14TerminalSymbolOs5NeverOTg504_s19gh5Core6k21O8terminalyACSSFZAA08j5D0Os7d2O6E6VXEfU_Tf1cn_n(v92, v94);
      v169 = v93;

      v96 = v159;
      *v159 = v95;
      swift_storeEnumTagMultiPayload();
      if (!v86)
      {

        v86 = MEMORY[0x1E69E7CC0];
      }

      outlined init with copy of Symbol(v96, v85);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v86 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v86[2] + 1, 1, v86);
      }

      v98 = v86[2];
      v97 = v86[3];
      if (v98 >= v97 >> 1)
      {
        v86 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(v97 > 1, v98 + 1, 1, v86);
      }

      v86[2] = v98 + 1;
      v99 = (*(v167 + 80) + 32) & ~*(v167 + 80);
      v170 = v86;
      outlined init with take of Symbol(v85, v86 + v99 + *(v167 + 72) * v98);
      v37 = v159;
    }

LABEL_9:
    outlined destroy of Symbol(v37);
    v38 = 0;
    v35 = 4;
LABEL_10:
    v172 = MEMORY[0x1E69E7CC0];
    goto LABEL_11;
  }

  if (v35 == 7)
  {

    v57 = v169;
    v58 = specialized Sequence.contains(where:)(v39, v41);
    v169 = v57;

    if (v58)
    {
LABEL_253:

      lazy protocol witness table accessor for type SyntaxError and conformance SyntaxError();
      swift_allocError();
      v141 = xmmword_1A8FC9480;
      goto LABEL_257;
    }

LABEL_50:
    v59 = v172;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v59 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v59 + 2) + 1, 1, v59);
    }

    v61 = *(v59 + 2);
    v60 = *(v59 + 3);
    if (v61 >= v60 >> 1)
    {
      v59 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v60 > 1), v61 + 1, 1, v59);
    }

    v38 = 0;
    *(v59 + 2) = v61 + 1;
    v172 = v59;
    v62 = &v59[16 * v61];
    *(v62 + 4) = v39;
    *(v62 + 5) = v41;
    v35 = 6;
    goto LABEL_11;
  }

  if (v35 != 8)
  {
    v31 = v170;
    v63 = v164;
    if ((v39 != 32 || v41 != 0xE100000000000000) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
    {
      v81 = v172;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v81 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v81 + 2) + 1, 1, v81);
      }

      v83 = *(v81 + 2);
      v82 = *(v81 + 3);
      if (v83 >= v82 >> 1)
      {
        v81 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v82 > 1), v83 + 1, 1, v81);
      }

      *(v81 + 2) = v83 + 1;
      v172 = v81;
      v84 = &v81[16 * v83];
      *(v84 + 4) = v39;
      *(v84 + 5) = v41;
      v35 = 9;
      v38 = 1;
      goto LABEL_11;
    }

    v174[0] = v172;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySJGMd, &_sSaySJGMR);
    lazy protocol witness table accessor for type [Character] and conformance [A]();
    v64 = String.init<A>(_:)();
    v66 = HIBYTE(v65) & 0xF;
    v67 = v64 & 0xFFFFFFFFFFFFLL;
    if ((v65 & 0x2000000000000000) != 0)
    {
      v68 = HIBYTE(v65) & 0xF;
    }

    else
    {
      v68 = v64 & 0xFFFFFFFFFFFFLL;
    }

    if (!v68)
    {
LABEL_254:
      v149 = v64;
      v150 = v65;

      v31 = Substring.distance(from:to:)();
      lazy protocol witness table accessor for type SyntaxError and conformance SyntaxError();
      swift_allocError();
      *v32 = v149;
      *(v32 + 8) = v150;
      v151 = 2;
      goto LABEL_259;
    }

    if ((v65 & 0x1000000000000000) != 0)
    {
      v117 = v64;
      v118 = v65;

      LOWORD(v71) = specialized _parseInteger<A, B>(ascii:radix:)(v117, v118, 16);

      v64 = v117;
      v65 = v118;
      v31 = v170;
      if ((v71 & 0x100) != 0)
      {
        goto LABEL_254;
      }

      goto LABEL_193;
    }

    if ((v65 & 0x2000000000000000) != 0)
    {
      v174[0] = v64;
      v174[1] = v65 & 0xFFFFFFFFFFFFFFLL;
      if (v64 == 43)
      {
        if (!v66)
        {
          goto LABEL_267;
        }

        v67 = v66 - 1;
        if (v66 != 1)
        {
          LOBYTE(v71) = 0;
          v103 = v156;
          while (1)
          {
            v104 = *v103;
            v105 = v104 - 48;
            if ((v104 - 48) >= 0xA)
            {
              if ((v104 - 65) < 6)
              {
                v105 = v104 - 55;
              }

              else
              {
                if ((v104 - 97) > 5)
                {
                  goto LABEL_191;
                }

                v105 = v104 - 87;
              }
            }

            if (v71 > 0xFu)
            {
              break;
            }

            LOBYTE(v71) = v105 + 16 * v71;
            ++v103;
            if (!--v67)
            {
              goto LABEL_192;
            }
          }
        }
      }

      else if (v64 == 45)
      {
        if (!v66)
        {
          __break(1u);
LABEL_267:
          __break(1u);
LABEL_268:
          __break(1u);
LABEL_269:
          __break(1u);
LABEL_270:

          lazy protocol witness table accessor for type SyntaxError and conformance SyntaxError();
          swift_allocError();
          *v32 = v39;
          *(v32 + 8) = v41;
          goto LABEL_271;
        }

        v67 = v66 - 1;
        if (v66 != 1)
        {
          LOBYTE(v71) = 0;
          v77 = v156;
          while (1)
          {
            v78 = *v77;
            v79 = v78 - 48;
            if ((v78 - 48) >= 0xA)
            {
              if ((v78 - 65) < 6)
              {
                v79 = v78 - 55;
              }

              else
              {
                if ((v78 - 97) > 5)
                {
                  goto LABEL_191;
                }

                v79 = v78 - 87;
              }
            }

            if (v71 > 0xFu)
            {
              break;
            }

            v71 = 16 * (v71 & 0xF) - v79;
            if ((v71 & 0xFFFFFF00) != 0)
            {
              break;
            }

            ++v77;
            if (!--v67)
            {
              goto LABEL_192;
            }
          }
        }
      }

      else if (v66)
      {
        LOBYTE(v71) = 0;
        v108 = v174;
        while (1)
        {
          v109 = *v108;
          v110 = v109 - 48;
          if ((v109 - 48) >= 0xA)
          {
            if ((v109 - 65) < 6)
            {
              v110 = v109 - 55;
            }

            else
            {
              if ((v109 - 97) > 5)
              {
                goto LABEL_191;
              }

              v110 = v109 - 87;
            }
          }

          if (v71 > 0xFu)
          {
            break;
          }

          LOBYTE(v71) = v110 + 16 * v71;
          ++v108;
          if (!--v66)
          {
            LOBYTE(v67) = 0;
            goto LABEL_192;
          }
        }
      }

      goto LABEL_191;
    }

    if ((v64 & 0x1000000000000000) != 0)
    {
      v69 = ((v65 & 0xFFFFFFFFFFFFFFFLL) + 32);
    }

    else
    {
      v39 = v64;
      v41 = v65;
      v69 = _StringObject.sharedUTF8.getter();
      v64 = v39;
      v67 = v119;
      v65 = v41;
    }

    v70 = *v69;
    if (v70 == 43)
    {
      if (v67 < 1)
      {
        goto LABEL_269;
      }

      if (!--v67)
      {
        goto LABEL_191;
      }

      if (v69)
      {
        LOBYTE(v71) = 0;
        v100 = v69 + 1;
        while (1)
        {
          v101 = *v100;
          v102 = v101 - 48;
          if ((v101 - 48) >= 0xA)
          {
            if ((v101 - 65) < 6)
            {
              v102 = v101 - 55;
            }

            else
            {
              if ((v101 - 97) > 5)
              {
                goto LABEL_191;
              }

              v102 = v101 - 87;
            }
          }

          if (v71 > 0xFu)
          {
            goto LABEL_191;
          }

          LOBYTE(v71) = v102 + 16 * v71;
          ++v100;
          if (!--v67)
          {
            goto LABEL_192;
          }
        }
      }
    }

    else if (v70 == 45)
    {
      if (v67 < 1)
      {
        goto LABEL_268;
      }

      if (!--v67)
      {
        goto LABEL_191;
      }

      if (v69)
      {
        LOBYTE(v71) = 0;
        v72 = v69 + 1;
        while (1)
        {
          v73 = *v72;
          v74 = v73 - 48;
          if ((v73 - 48) >= 0xA)
          {
            if ((v73 - 65) < 6)
            {
              v74 = v73 - 55;
            }

            else
            {
              if ((v73 - 97) > 5)
              {
                goto LABEL_191;
              }

              v74 = v73 - 87;
            }
          }

          if (v71 > 0xFu)
          {
            goto LABEL_191;
          }

          v71 = 16 * (v71 & 0xF) - v74;
          if ((v71 & 0xFFFFFF00) != 0)
          {
            goto LABEL_191;
          }

          ++v72;
          if (!--v67)
          {
            goto LABEL_192;
          }
        }
      }
    }

    else
    {
      if (!v67)
      {
LABEL_191:
        LOBYTE(v71) = 0;
        LOBYTE(v67) = 1;
LABEL_192:
        v175 = v67;
        if (v67)
        {
          goto LABEL_254;
        }

LABEL_193:

        *v63 = v71;
        type metadata accessor for TerminalSymbol(0);
        swift_storeEnumTagMultiPayload();
        swift_storeEnumTagMultiPayload();
        if (!v31)
        {

          v31 = MEMORY[0x1E69E7CC0];
        }

        outlined init with copy of Symbol(v63, v168);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v31 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v31[2] + 1, 1, v31);
        }

        v112 = v31[2];
        v111 = v31[3];
        if (v112 >= v111 >> 1)
        {
          v31 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(v111 > 1, v112 + 1, 1, v31);
        }

        v31[2] = v112 + 1;
        v36 = (*(v167 + 80) + 32) & ~*(v167 + 80);
        v170 = v31;
        outlined init with take of Symbol(v168, v31 + v36 + *(v167 + 72) * v112);
        v37 = v63;
        goto LABEL_9;
      }

      if (v69)
      {
        LOBYTE(v71) = 0;
        while (1)
        {
          v106 = *v69;
          v107 = v106 - 48;
          if ((v106 - 48) >= 0xA)
          {
            if ((v106 - 65) < 6)
            {
              v107 = v106 - 55;
            }

            else
            {
              if ((v106 - 97) > 5)
              {
                goto LABEL_191;
              }

              v107 = v106 - 87;
            }
          }

          if (v71 > 0xFu)
          {
            goto LABEL_191;
          }

          LOBYTE(v71) = v107 + 16 * v71;
          ++v69;
          if (!--v67)
          {
            goto LABEL_192;
          }
        }
      }
    }

    LOBYTE(v71) = 0;
    LOBYTE(v67) = 0;
    goto LABEL_192;
  }

  if (v39 == 120 && v41 == 0xE100000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    v35 = 9;
    v38 = 1;
    goto LABEL_11;
  }

  v31 = Substring.distance(from:to:)();
  lazy protocol witness table accessor for type SyntaxError and conformance SyntaxError();
  swift_allocError();
  *v32 = v39;
  *(v32 + 8) = v41;
  v151 = 1;
LABEL_259:
  *(v32 + 16) = v151;
  a5 = v161;
LABEL_6:
  *(v32 + 24) = a5;
  *(v32 + 32) = v31;
  swift_willThrow();
}

uint64_t specialized Sequence.contains(where:)(uint64_t a1, unint64_t a2)
{
  v4 = type metadata accessor for CharacterSet();
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v23 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((a2 & 0x2000000000000000) != 0)
  {
    v9 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v9 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (v9)
  {
    v10 = 0;
    v23 = (a2 & 0xFFFFFFFFFFFFFFFLL) + 32;
    v24 = a2 & 0xFFFFFFFFFFFFFFLL;
    v11 = (v6 + 8);
    while (1)
    {
      if ((a2 & 0x1000000000000000) != 0)
      {
        _StringGuts.foreignErrorCorrectedScalar(startingAt:)();
        v15 = v14;
      }

      else
      {
        if ((a2 & 0x2000000000000000) != 0)
        {
          v25[0] = a1;
          v25[1] = v24;
          v13 = v25 + v10;
        }

        else
        {
          v12 = v23;
          if ((a1 & 0x1000000000000000) == 0)
          {
            v12 = _StringObject.sharedUTF8.getter();
          }

          v13 = (v12 + v10);
        }

        v16 = *v13;
        if ((*v13 & 0x80000000) == 0)
        {
          goto LABEL_14;
        }

        v18 = (__clz(v16 ^ 0xFF) - 24);
        if (v18 > 2)
        {
          if (v18 == 3)
          {
            v20 = ((v16 & 0xF) << 12) | ((v13[1] & 0x3F) << 6) | v13[2] & 0x3Fu;
            v15 = 3;
          }

          else
          {
            v21 = ((v16 & 0xF) << 18) | ((v13[1] & 0x3F) << 12) | ((v13[2] & 0x3F) << 6) | v13[3] & 0x3Fu;
            v15 = 4;
          }

          goto LABEL_15;
        }

        if (v18 == 1)
        {
LABEL_14:
          v15 = 1;
        }

        else
        {
          v19 = v13[1] & 0x3F | ((v16 & 0x1F) << 6);
          v15 = 2;
        }
      }

LABEL_15:
      static CharacterSet.whitespacesAndNewlines.getter();
      v17 = CharacterSet.contains(_:)();
      (*v11)(v8, v4);
      if ((v17 & 1) == 0)
      {
        v10 += v15;
        if (v10 < v9)
        {
          continue;
        }
      }

      return v17 & 1;
    }
  }

  v17 = 0;
  return v17 & 1;
}

uint64_t SyntaxError.Issue.hash(into:)(uint64_t a1, unint64_t a2, uint64_t a3, unsigned __int8 a4)
{
  if (a4 <= 1u)
  {
    if (a4)
    {
      v4 = 7;
    }

    else
    {
      v4 = 4;
    }

    MEMORY[0x1AC57CB80](v4);

    return String.hash(into:)();
  }

  if (a4 == 2)
  {
    MEMORY[0x1AC57CB80](8);

    return String.hash(into:)();
  }

  if (a2 > 2)
  {
    if (a2 ^ 3 | a3)
    {
      if (a2 ^ 4 | a3)
      {
        v6 = 6;
      }

      else
      {
        v6 = 5;
      }
    }

    else
    {
      v6 = 3;
    }
  }

  else if (a2 | a3)
  {
    if (a2 ^ 1 | a3)
    {
      v6 = 2;
    }

    else
    {
      v6 = 1;
    }
  }

  else
  {
    v6 = 0;
  }

  return MEMORY[0x1AC57CB80](v6);
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance SyntaxError.Issue()
{
  v1 = *v0;
  v2 = *(v0 + 8);
  v3 = *(v0 + 16);
  Hasher.init(_seed:)();
  SyntaxError.Issue.hash(into:)(v5, v1, v2, v3);
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance SyntaxError.Issue()
{
  v1 = *v0;
  v2 = *(v0 + 8);
  v3 = *(v0 + 16);
  Hasher.init(_seed:)();
  SyntaxError.Issue.hash(into:)(v5, v1, v2, v3);
  return Hasher._finalize()();
}

unint64_t SyntaxError.description.getter()
{
  v2 = *v0;
  v1 = *(v0 + 8);
  if (*(v0 + 16) <= 1u)
  {
    if (*(v0 + 16))
    {
      _StringGuts.grow(_:)(44);

      v3 = 0xD00000000000002ALL;
    }

    else
    {
      _StringGuts.grow(_:)(31);

      v3 = 0xD00000000000001DLL;
    }

    v10 = v3;
    v4 = v2;
    v5 = v1;
    goto LABEL_8;
  }

  if (*(v0 + 16) == 2)
  {
    _StringGuts.grow(_:)(42);

    v10 = 0xD000000000000027;
    MEMORY[0x1AC57C120](v2, v1);
    v4 = 41;
    v5 = 0xE100000000000000;
LABEL_8:
    MEMORY[0x1AC57C120](v4, v5);
    return v10;
  }

  if (v2 > 2)
  {
    v7 = v2 ^ 3 | v1;
    v8 = 0xD00000000000002BLL;
    v9 = 0xD00000000000001ALL;
    if (!(v2 ^ 4 | v1))
    {
      v9 = 0xD000000000000015;
    }
  }

  else
  {
    v7 = v2 | v1;
    v8 = 0xD000000000000025;
    v9 = 0xD00000000000001ELL;
    if (v2 ^ 1 | v1)
    {
      v9 = 0xD00000000000002ALL;
    }
  }

  if (v7)
  {
    return v9;
  }

  else
  {
    return v8;
  }
}

unint64_t specialized Collection.split(maxSplits:omittingEmptySubsequences:whereSeparator:)@<X0>(uint64_t a1@<X0>, char a2@<W1>, uint64_t (*a3)(void *)@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, unint64_t a6@<X5>, unint64_t a7@<X8>)
{
  v45 = a3;
  if (a1 < 0)
  {
    __break(1u);
    goto LABEL_43;
  }

  v11 = a5;
  v15 = HIBYTE(a6) & 0xF;
  if (!a1 || ((a6 & 0x2000000000000000) != 0 ? (v16 = HIBYTE(a6) & 0xF) : (v16 = a5 & 0xFFFFFFFFFFFFLL), !v16))
  {
    if ((a6 & 0x2000000000000000) == 0)
    {
      v15 = a5 & 0xFFFFFFFFFFFFLL;
    }

    if (!v15 && (a2 & 1) != 0)
    {

      return MEMORY[0x1E69E7CC0];
    }

    v7 = String.subscript.getter();
    v11 = v30;
    v12 = v31;
    v13 = v32;

    v14 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, 1, 1, MEMORY[0x1E69E7CC0]);
    v9 = *(v14 + 16);
    a7 = *(v14 + 24);
LABEL_39:
    v10 = v9 + 1;
    if (v9 < a7 >> 1)
    {
LABEL_40:
      *(v14 + 16) = v10;
      v36 = (v14 + 32 * v9);
      v36[4] = v7;
      v36[5] = v11;
      v36[6] = v12;
      v36[7] = v13;
      return v14;
    }

LABEL_43:
    v14 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((a7 > 1), v10, 1, v14);
    goto LABEL_40;
  }

  v7 = a4;
  v17 = 4 * v16;
  v14 = MEMORY[0x1E69E7CC0];
  v18 = 15;
  while (1)
  {
    v13 = v18 >> 14;
    if (v18 >> 14 == v17)
    {
      goto LABEL_33;
    }

    v41 = v14;
    v39 = a1;
    while (2)
    {
      v42 = v18;
      v14 = v18;
      while (1)
      {
        v19 = String.subscript.getter();
        v12 = v20;
        v44[0] = v19;
        v44[1] = v20;
        v21 = v45(v44);
        if (v8)
        {

          return v14;
        }

        v22 = v21;

        if (v22)
        {
          break;
        }

        v14 = String.index(after:)();
        v13 = v14 >> 14;
        if (v14 >> 14 == v17)
        {
          v14 = v41;
          v18 = v42;
          goto LABEL_33;
        }
      }

      result = v42;
      if (v42 >> 14 == v13 && (a2 & 1) != 0)
      {
        v18 = String.index(after:)();
        v13 = v18 >> 14;
        if (v18 >> 14 != v17)
        {
          continue;
        }

        v14 = v41;
LABEL_33:
        if (v18 >> 14 == v17 && (a2 & 1) != 0)
        {

          return v14;
        }

        if (v17 < v18 >> 14)
        {
          __break(1u);
        }

        else
        {
          v7 = String.subscript.getter();
          v11 = v33;
          v12 = v34;
          v13 = v35;

          if (swift_isUniquelyReferenced_nonNull_native())
          {
LABEL_38:
            v9 = *(v14 + 16);
            a7 = *(v14 + 24);
            goto LABEL_39;
          }
        }

        v14 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v14 + 16) + 1, 1, v14);
        goto LABEL_38;
      }

      break;
    }

    if (v13 < v42 >> 14)
    {
      break;
    }

    v24 = String.subscript.getter();
    v43 = v25;
    v37 = v27;
    v38 = v26;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v41 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v41 + 2) + 1, 1, v41);
    }

    v13 = *(v41 + 2);
    v28 = *(v41 + 3);
    v12 = v13 + 1;
    if (v13 >= v28 >> 1)
    {
      v41 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v28 > 1), v13 + 1, 1, v41);
    }

    *(v41 + 2) = v12;
    v29 = &v41[32 * v13];
    *(v29 + 4) = v24;
    *(v29 + 5) = v43;
    *(v29 + 6) = v38;
    *(v29 + 7) = v37;
    v14 = v41;
    v18 = String.index(after:)();
    a1 = v39;
    if (*(v41 + 2) == v39)
    {
      goto LABEL_33;
    }
  }

  __break(1u);
  return result;
}

uint64_t partial apply for specialized closure #1 in Collection<>.split(separator:maxSplits:omittingEmptySubsequences:)(void *a1)
{
  v2 = *(v1 + 16);
  if (*a1 == *v2 && a1[1] == v2[1])
  {
    return 1;
  }

  else
  {
    return _stringCompareWithSmolCheck(_:_:expecting:)() & 1;
  }
}

unint64_t lazy protocol witness table accessor for type [Character] and conformance [A]()
{
  result = lazy protocol witness table cache variable for type [Character] and conformance [A];
  if (!lazy protocol witness table cache variable for type [Character] and conformance [A])
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_sSaySJGMd, &_sSaySJGMR);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type [Character] and conformance [A]);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type SyntaxError and conformance SyntaxError()
{
  result = lazy protocol witness table cache variable for type SyntaxError and conformance SyntaxError;
  if (!lazy protocol witness table cache variable for type SyntaxError and conformance SyntaxError)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SyntaxError and conformance SyntaxError);
  }

  return result;
}

uint64_t outlined init with copy of Symbol(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Symbol(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t outlined init with take of Symbol(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Symbol(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t outlined destroy of Symbol(uint64_t a1)
{
  v2 = type metadata accessor for Symbol(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t specialized String.UTF8View.withContiguousStorageIfAvailable<A>(_:)(uint64_t result, unint64_t a2, uint64_t a3)
{
  if ((a2 & 0x1000000000000000) != 0)
  {
    v52 = 0;
    goto LABEL_147;
  }

  v3 = result;
  if ((a2 & 0x2000000000000000) == 0)
  {
    if ((result & 0x1000000000000000) != 0)
    {
      result = (a2 & 0xFFFFFFFFFFFFFFFLL) + 32;
      v4 = v3 & 0xFFFFFFFFFFFFLL;
    }

    else
    {
      v55 = a2;
      v54 = a3;
      result = _StringObject.sharedUTF8.getter();
      a3 = v54;
      v4 = v53;
      a2 = v55;
    }

    v5 = *result;
    if (v5 == 43)
    {
      if (v4 < 1)
      {
LABEL_153:
        __break(1u);
        goto LABEL_154;
      }

      v26 = v4 - 1;
      if (v26)
      {
        v27 = a3 + 87;
        if (a3 > 10)
        {
          v28 = a3 + 55;
        }

        else
        {
          v27 = 97;
          v28 = 65;
        }

        if (a3 <= 10)
        {
          v29 = a3 + 48;
        }

        else
        {
          v29 = 58;
        }

        if (result)
        {
          LOBYTE(v10) = 0;
          v30 = (result + 1);
          do
          {
            v31 = *v30;
            if (v31 < 0x30 || v31 >= v29)
            {
              if (v31 < 0x41 || v31 >= v28)
              {
                v14 = 0;
                v15 = 1;
                if (v31 < 0x61 || v31 >= v27)
                {
                  goto LABEL_122;
                }

                v32 = -87;
              }

              else
              {
                v32 = -55;
              }
            }

            else
            {
              v32 = -48;
            }

            if (((v10 * a3) & 0xFF00) != 0)
            {
              goto LABEL_148;
            }

            v10 = (v10 * a3) + (v31 + v32);
            if ((v10 >> 8))
            {
              goto LABEL_148;
            }

            ++v30;
            --v26;
          }

          while (v26);
LABEL_76:
          v14 = v10;
          v57 = 0;
          goto LABEL_146;
        }

        goto LABEL_121;
      }
    }

    else
    {
      if (v5 == 45)
      {
        if (v4 >= 1)
        {
          v6 = v4 - 1;
          if (v6)
          {
            v7 = a3 + 87;
            if (a3 > 10)
            {
              v8 = a3 + 55;
            }

            else
            {
              v7 = 97;
              v8 = 65;
            }

            if (a3 <= 10)
            {
              v9 = a3 + 48;
            }

            else
            {
              v9 = 58;
            }

            if (result)
            {
              LOBYTE(v10) = 0;
              v11 = (result + 1);
              while (1)
              {
                v12 = *v11;
                if (v12 < 0x30 || v12 >= v9)
                {
                  if (v12 < 0x41 || v12 >= v8)
                  {
                    v14 = 0;
                    v15 = 1;
                    if (v12 < 0x61 || v12 >= v7)
                    {
                      goto LABEL_122;
                    }

                    v13 = -87;
                  }

                  else
                  {
                    v13 = -55;
                  }
                }

                else
                {
                  v13 = -48;
                }

                if (((v10 * a3) & 0xFF00) != 0)
                {
                  goto LABEL_148;
                }

                v10 = (v10 * a3) - (v12 + v13);
                if ((v10 & 0xFFFFFF00) != 0)
                {
                  goto LABEL_148;
                }

                ++v11;
                if (!--v6)
                {
                  goto LABEL_76;
                }
              }
            }

LABEL_121:
            v14 = 0;
            v15 = 0;
LABEL_122:
            v57 = v15;
            goto LABEL_146;
          }

          goto LABEL_148;
        }

        __break(1u);
        goto LABEL_152;
      }

      if (v4)
      {
        v40 = a3 + 87;
        if (a3 > 10)
        {
          v41 = a3 + 55;
        }

        else
        {
          v40 = 97;
          v41 = 65;
        }

        if (a3 <= 10)
        {
          v42 = a3 + 48;
        }

        else
        {
          v42 = 58;
        }

        if (!result)
        {
          goto LABEL_121;
        }

        LOBYTE(v43) = 0;
        do
        {
          v44 = *result;
          if (v44 < 0x30 || v44 >= v42)
          {
            if (v44 < 0x41 || v44 >= v41)
            {
              v14 = 0;
              v15 = 1;
              if (v44 < 0x61 || v44 >= v40)
              {
                goto LABEL_122;
              }

              v45 = -87;
            }

            else
            {
              v45 = -55;
            }
          }

          else
          {
            v45 = -48;
          }

          if (((v43 * a3) & 0xFF00) != 0)
          {
            goto LABEL_148;
          }

          v43 = (v43 * a3) + (v44 + v45);
          if ((v43 >> 8))
          {
            goto LABEL_148;
          }

          ++result;
          --v4;
        }

        while (v4);
        v14 = v43;
        v57 = 0;
LABEL_146:
        v52 = v14 | (v57 << 8);
LABEL_147:
        LOBYTE(v56[0]) = (a2 & 0x1000000000000000) != 0;
        return v52 | (LOBYTE(v56[0]) << 16);
      }
    }

LABEL_148:
    v14 = 0;
    v57 = 1;
    goto LABEL_146;
  }

  v16 = HIBYTE(a2) & 0xF;
  v56[0] = result;
  v56[1] = a2 & 0xFFFFFFFFFFFFFFLL;
  if (result != 43)
  {
    if (result == 45)
    {
      if (!v16)
      {
LABEL_152:
        __break(1u);
        goto LABEL_153;
      }

      v17 = v16 - 1;
      if (v17)
      {
        LOBYTE(v18) = 0;
        v19 = a3 + 87;
        if (a3 > 10)
        {
          v20 = a3 + 55;
        }

        else
        {
          v19 = 97;
          v20 = 65;
        }

        if (a3 <= 10)
        {
          v21 = a3 + 48;
        }

        else
        {
          v21 = 58;
        }

        v22 = v56 + 1;
        while (1)
        {
          v23 = *v22;
          if (v23 < 0x30 || v23 >= v21)
          {
            if (v23 < 0x41 || v23 >= v20)
            {
              v14 = 0;
              v25 = 1;
              if (v23 < 0x61 || v23 >= v19)
              {
                goto LABEL_145;
              }

              v24 = -87;
            }

            else
            {
              v24 = -55;
            }
          }

          else
          {
            v24 = -48;
          }

          if (((v18 * a3) & 0xFF00) != 0)
          {
            goto LABEL_144;
          }

          v18 = (v18 * a3) - (v23 + v24);
          if ((v18 & 0xFFFFFF00) != 0)
          {
            goto LABEL_144;
          }

          ++v22;
          if (!--v17)
          {
            goto LABEL_143;
          }
        }
      }
    }

    else if (v16)
    {
      LOBYTE(v18) = 0;
      v46 = a3 + 87;
      if (a3 > 10)
      {
        v47 = a3 + 55;
      }

      else
      {
        v46 = 97;
        v47 = 65;
      }

      if (a3 <= 10)
      {
        v48 = a3 + 48;
      }

      else
      {
        v48 = 58;
      }

      v49 = v56;
      while (1)
      {
        v50 = *v49;
        if (v50 < 0x30 || v50 >= v48)
        {
          if (v50 < 0x41 || v50 >= v47)
          {
            v14 = 0;
            v25 = 1;
            if (v50 < 0x61 || v50 >= v46)
            {
              goto LABEL_145;
            }

            v51 = -87;
          }

          else
          {
            v51 = -55;
          }
        }

        else
        {
          v51 = -48;
        }

        if (((v18 * a3) & 0xFF00) != 0)
        {
          goto LABEL_144;
        }

        v18 = (v18 * a3) + (v50 + v51);
        if ((v18 >> 8))
        {
          goto LABEL_144;
        }

        ++v49;
        if (!--v16)
        {
          goto LABEL_143;
        }
      }
    }

    goto LABEL_144;
  }

  if (v16)
  {
    v33 = v16 - 1;
    if (v33)
    {
      LOBYTE(v18) = 0;
      v34 = a3 + 87;
      if (a3 > 10)
      {
        v35 = a3 + 55;
      }

      else
      {
        v34 = 97;
        v35 = 65;
      }

      if (a3 <= 10)
      {
        v36 = a3 + 48;
      }

      else
      {
        v36 = 58;
      }

      v37 = v56 + 1;
      do
      {
        v38 = *v37;
        if (v38 < 0x30 || v38 >= v36)
        {
          if (v38 < 0x41 || v38 >= v35)
          {
            v14 = 0;
            v25 = 1;
            if (v38 < 0x61 || v38 >= v34)
            {
              goto LABEL_145;
            }

            v39 = -87;
          }

          else
          {
            v39 = -55;
          }
        }

        else
        {
          v39 = -48;
        }

        if (((v18 * a3) & 0xFF00) != 0)
        {
          goto LABEL_144;
        }

        v18 = (v18 * a3) + (v38 + v39);
        if ((v18 >> 8))
        {
          goto LABEL_144;
        }

        ++v37;
        --v33;
      }

      while (v33);
LABEL_143:
      v25 = 0;
      v14 = v18;
      goto LABEL_145;
    }

LABEL_144:
    v14 = 0;
    v25 = 1;
LABEL_145:
    v57 = v25;
    goto LABEL_146;
  }

LABEL_154:
  __break(1u);
  return result;
}

uint64_t get_enum_tag_for_layout_string_19TokenGenerationCore11SyntaxErrorV5IssueO(uint64_t a1)
{
  if ((*(a1 + 16) & 3) == 3)
  {
    return (*a1 + 3);
  }

  else
  {
    return *(a1 + 16) & 3;
  }
}

__n128 __swift_memcpy40_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 32) = *(a2 + 32);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t getEnumTagSinglePayload for SyntaxError(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFD && *(a1 + 40))
  {
    return (*a1 + 253);
  }

  v3 = *(a1 + 16);
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

uint64_t storeEnumTagSinglePayload for SyntaxError(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFC)
  {
    *(result + 8) = 0u;
    *(result + 24) = 0u;
    *result = a2 - 253;
    if (a3 >= 0xFD)
    {
      *(result + 40) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFD)
    {
      *(result + 40) = 0;
    }

    if (a2)
    {
      *(result + 16) = -a2;
    }
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type SyntaxError.Issue and conformance SyntaxError.Issue()
{
  result = lazy protocol witness table cache variable for type SyntaxError.Issue and conformance SyntaxError.Issue;
  if (!lazy protocol witness table cache variable for type SyntaxError.Issue and conformance SyntaxError.Issue)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SyntaxError.Issue and conformance SyntaxError.Issue);
  }

  return result;
}

uint64_t specialized static SyntaxError.Issue.== infix(_:_:)(unint64_t a1, uint64_t a2, unsigned __int8 a3, uint64_t a4, uint64_t a5, char a6)
{
  if (a3 > 1u)
  {
    if (a3 == 2)
    {
      if (a6 == 2)
      {
        if (a1 == a4 && a2 == a5)
        {
          return 1;
        }

        return _stringCompareWithSmolCheck(_:_:expecting:)();
      }
    }

    else if (a1 > 2)
    {
      if (a1 ^ 3 | a2)
      {
        if (a1 ^ 4 | a2)
        {
          if (a6 == 3 && a4 == 5 && !a5)
          {
            return 1;
          }
        }

        else if (a6 == 3 && a4 == 4 && !a5)
        {
          return 1;
        }
      }

      else if (a6 == 3 && a4 == 3 && !a5)
      {
        return 1;
      }
    }

    else if (a1 | a2)
    {
      if (a1 ^ 1 | a2)
      {
        if (a6 == 3 && a4 == 2 && !a5)
        {
          return 1;
        }
      }

      else if (a6 == 3 && a4 == 1 && !a5)
      {
        return 1;
      }
    }

    else if (a6 == 3 && !(a5 | a4))
    {
      return 1;
    }
  }

  else if (a3)
  {
    if (a6 == 1)
    {
      if (a1 == a4 && a2 == a5)
      {
        return 1;
      }

      return _stringCompareWithSmolCheck(_:_:expecting:)();
    }
  }

  else if (!a6)
  {
    if (a1 == a4 && a2 == a5)
    {
      return 1;
    }

    return _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  return 0;
}

uint64_t ContiguousBitSet.first.getter()
{
  result = *(v0 + 16);
  v2 = *(v0 + 24);
  return result;
}

uint64_t ContiguousBitSet.last.getter()
{
  result = *(v0 + 32);
  v2 = *(v0 + 40);
  return result;
}

char *ContiguousBitSet.init(reservedCapacity:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  *(a2 + 16) = 0;
  *(a2 + 24) = 1;
  *(a2 + 32) = 0;
  *(a2 + 40) = 1;
  *a2 = MEMORY[0x1E69E7CC0];
  *(a2 + 8) = 0;
  return specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, a1 & ~(a1 >> 63), 0);
}

uint64_t ContiguousBitSet.init(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v3 = MEMORY[0x1E69E7CC0];
  *(a3 + 8) = 0;
  *(a3 + 16) = 0;
  *a3 = v3;
  *(a3 + 24) = 1;
  *(a3 + 32) = 0;
  *(a3 + 40) = 1;
  return ContiguousBitSet.formUnion(_:)(a1, a2);
}

uint64_t ContiguousBitSet.formUnion(_:)(uint64_t result, uint64_t a2)
{
  if (result != a2)
  {
    if (result >= a2)
    {
LABEL_47:
      __break(1u);
LABEL_48:
      __break(1u);
LABEL_49:
      __break(1u);
      goto LABEL_50;
    }

    v3 = result;
    v4 = a2 - 1;
    v5 = a2 + 62;
    if (a2 >= 1)
    {
      v5 = a2 - 1;
    }

    v6 = v5 >> 6;
    v7 = *(*v2 + 16);
    if (v7 <= v6)
    {
      result = v6 - v7 + 1;
      if (result < 0)
      {
LABEL_50:
        __break(1u);
        return result;
      }

      result = specialized ContiguousArray.append<A>(contentsOf:)(result, 0);
    }

    v8 = v3 / 64;
    if (v6 < v3 / 64)
    {
      goto LABEL_48;
    }

    v9 = v4 - (v6 << 6);
    v10 = v3 % 64;
    if (v9 >= 0)
    {
      v11 = 0xFFFFFFFFFFFFFFFFLL >> (63 - v9);
    }

    else
    {
      v11 = 0;
    }

    if (v10 >= 0)
    {
      v12 = -1 << v10;
    }

    else
    {
      v12 = 0xFFFFFFFFFFFFFFFFLL >> ((v8 << 6) - v3);
    }

    if (v8 == v6)
    {
      v13 = v11;
    }

    else
    {
      v13 = -1;
    }

    if (v3 < -63)
    {
      goto LABEL_49;
    }

    v14 = *v2;
    if (v8 >= *(*v2 + 16))
    {
      goto LABEL_44;
    }

    v15 = *(v14 + 8 * v8 + 32);
    v16 = *v2;
    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
      result = specialized _ContiguousArrayBuffer._consumeAndCreateNew()(v14);
      v14 = result;
    }

    if (v8 >= *(v14 + 16))
    {
      goto LABEL_45;
    }

    v17 = vcnt_s8(v15);
    v17.i16[0] = vaddlv_u8(v17);
    v18 = v17.u32[0];
    v19 = (v14 + 8 * v8);
    *&v19[4] |= v12 & v13;
    *v2 = v14;
    v20 = vcnt_s8(v19[4]);
    v20.i16[0] = vaddlv_u8(v20);
    v21 = v20.u32[0] - v18;
    v22 = *(v2 + 8);
    v23 = __OFADD__(v22, v21);
    v24 = v22 + v21;
    if (v23)
    {
LABEL_46:
      __break(1u);
      goto LABEL_47;
    }

    *(v2 + 8) = v24;
    if (v8 != v6)
    {
      while (1)
      {
        v25 = v8 + 1;
        v26 = v6 - 1 == v8 ? v11 : -1;
        if (v25 >= *(v14 + 16))
        {
          break;
        }

        v27 = *(v14 + 8 * v8 + 40);
        result = swift_isUniquelyReferenced_nonNull_native();
        if ((result & 1) == 0)
        {
          result = specialized _ContiguousArrayBuffer._consumeAndCreateNew()(v14);
          v14 = result;
        }

        if (v25 >= *(v14 + 16))
        {
          goto LABEL_45;
        }

        v28 = vcnt_s8(v27);
        v28.i16[0] = vaddlv_u8(v28);
        v29 = v28.u32[0];
        v30 = (v14 + 8 * v8);
        *&v30[5] |= v26;
        *v2 = v14;
        v31 = vcnt_s8(v30[5]);
        v31.i16[0] = vaddlv_u8(v31);
        v32 = v31.u32[0] - v29;
        v33 = *(v2 + 8);
        v23 = __OFADD__(v33, v32);
        v34 = v33 + v32;
        if (v23)
        {
          goto LABEL_46;
        }

        *(v2 + 8) = v34;
        ++v8;
        if (v6 == v25)
        {
          goto LABEL_34;
        }
      }

LABEL_44:
      __break(1u);
LABEL_45:
      __break(1u);
      goto LABEL_46;
    }

LABEL_34:
    v35 = *(v2 + 16);
    if (*(v2 + 24))
    {
      v35 = 0x7FFFFFFFFFFFFFFFLL;
    }

    if (v35 >= v3)
    {
      v35 = v3;
    }

    *(v2 + 16) = v35;
    *(v2 + 24) = 0;
    v36 = *(v2 + 32);
    if (*(v2 + 40))
    {
      v36 = 0x8000000000000000;
    }

    if (v4 > v36)
    {
      v36 = v4;
    }

    *(v2 + 32) = v36;
    *(v2 + 40) = 0;
  }

  return result;
}

uint64_t ContiguousBitSet.init(_:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v3 = MEMORY[0x1E69E7CC0];
  *(a3 + 8) = 0;
  *(a3 + 16) = 0;
  *a3 = v3;
  *(a3 + 24) = 1;
  *(a3 + 32) = 0;
  *(a3 + 40) = 1;
  v4 = __OFADD__(a2, 1);
  v5 = a2 + 1;
  if (!v4)
  {
    return ContiguousBitSet.formUnion(_:)(result, v5);
  }

  __break(1u);
  return result;
}

uint64_t ContiguousBitSet.init(_:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v2 = a1;
  v42 = 0uLL;
  v43 = 1;
  v44 = 0;
  v45 = 1;
  v4 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  result = Sequence<>.max()();
  if (v38 == 1)
  {
    v6 = 0;
    v7 = 0uLL;
    v8 = MEMORY[0x1E69E7CC0];
    v9 = 1;
    v10 = 1;
LABEL_38:
    *a2 = v8;
    *(a2 + 8) = v7;
    *(a2 + 24) = v10;
    *(a2 + 32) = v6;
    *(a2 + 40) = v9;
    return __swift_destroy_boxed_opaque_existential_0(v2);
  }

  if (__OFADD__(v37, 1))
  {
    goto LABEL_43;
  }

  v32 = a2;
  v41 = MEMORY[0x1E69E7CC0];
  specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, ((v37 + 1) / 64) & ~((v37 + 1 + (v37 + 1 < 0 ? 0x3FuLL : 0)) >> 63), 0);
  v8 = v41;
  v11 = v2[3];
  v12 = v2[4];
  v33 = v2;
  v13 = __swift_project_boxed_opaque_existential_1(v2, v11);
  v14 = *(*(v11 - 8) + 64);
  MEMORY[0x1EEE9AC00](v13);
  (*(v16 + 16))(&v32 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0));
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  __swift_allocate_boxed_opaque_existential_1(&v37);
  dispatch thunk of Sequence.makeIterator()();
  v17 = 0;
  v18 = 0;
  v19 = 0;
  v34 = 1;
  while (1)
  {
    while (1)
    {
      __swift_mutable_project_boxed_opaque_existential_1(&v37, AssociatedTypeWitness);
      result = dispatch thunk of IteratorProtocol.next()();
      if (v36 == 1)
      {
        __swift_destroy_boxed_opaque_existential_0(&v37);
        v7 = v42;
        v10 = v43;
        v6 = v44;
        v9 = v45;
        a2 = v32;
        v2 = v33;
        goto LABEL_38;
      }

      v21 = v35;
      v22 = v35 / 64;
      v23 = v35 - (v20 & 0xFFFFFFFFFFFFFFC0);
      v24 = *(v8 + 16);
      v25 = __OFSUB__(v35 / 64, v24);
      v26 = v35 / 64 - v24;
      if (v26 < 0 != v25)
      {
        break;
      }

      result = v26 + 1;
      if (v26 + 1 < 0)
      {
        goto LABEL_44;
      }

      specialized ContiguousArray.append<A>(contentsOf:)(result, 0);
      v8 = v41;
      v27 = 1 << v23;
LABEL_16:
      if (v23 >= 0)
      {
        v29 = v27;
      }

      else
      {
        v29 = 0;
      }

      result = swift_isUniquelyReferenced_nonNull_native();
      if ((result & 1) == 0)
      {
        result = specialized _ContiguousArrayBuffer._consumeAndCreateNew()(v8);
        v8 = result;
      }

      if (v21 < -63)
      {
        goto LABEL_40;
      }

      if (v22 >= *(v8 + 16))
      {
        goto LABEL_41;
      }

      *(v8 + 8 * v22 + 32) |= v29;
      v41 = v8;
      v25 = __OFADD__(v19++, 1);
      if (v25)
      {
        goto LABEL_42;
      }

      if (v34)
      {
        v30 = v21;
      }

      else
      {
        v30 = v18;
      }

      if (v34)
      {
        v31 = v21;
      }

      else
      {
        v31 = v17;
      }

      if (v21 >= v30)
      {
        v18 = v30;
      }

      else
      {
        v18 = v21;
      }

      *&v42 = v19;
      *(&v42 + 1) = v18;
      v43 = 0;
      if (v21 <= v31)
      {
        v17 = v31;
      }

      else
      {
        v17 = v21;
      }

      v44 = v17;
      v45 = 0;
      v34 = 0;
    }

    if (v35 < -63)
    {
      break;
    }

    v27 = 1 << v23;
    if (v23 >= 0)
    {
      v28 = 1 << v23;
    }

    else
    {
      v28 = 0;
    }

    if ((*(v8 + 32 + 8 * v22) & v28) == 0)
    {
      goto LABEL_16;
    }
  }

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

Swift::Void __swiftcall ContiguousBitSet.insert(_:)(Swift::Int a1)
{
  v4 = *v2;
  v5 = *(v2 + 8);
  v6 = *(v2 + 16);
  v7 = *(v2 + 24);
  v8 = *(v2 + 32);
  v9 = *(v2 + 40);
  v10 = a1 / 64;
  v11 = a1 - (v1 & 0xFFFFFFFFFFFFFFC0);
  v12 = *(*v2 + 16);
  v13 = __OFSUB__(a1 / 64, v12);
  v14 = a1 / 64 - v12;
  if (v14 < 0 != v13)
  {
    if (a1 < -63)
    {
LABEL_34:
      __break(1u);
      goto LABEL_35;
    }

    v15 = 1 << v11;
    if (v11 >= 0)
    {
      v16 = 1 << v11;
    }

    else
    {
      v16 = 0;
    }

    if ((*&v4[8 * v10 + 32] & v16) != 0)
    {
      return;
    }
  }

  else
  {
    if (v14 + 1 < 0)
    {
LABEL_35:
      __break(1u);
      return;
    }

    specialized ContiguousArray.append<A>(contentsOf:)((v14 + 1), 0);
    v4 = *v2;
    v15 = 1 << v11;
  }

  if (v11 >= 0)
  {
    v17 = v15;
  }

  else
  {
    v17 = 0;
  }

  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v4 = specialized _ContiguousArrayBuffer._consumeAndCreateNew()(v4);
  }

  if (a1 < -63)
  {
    __break(1u);
    goto LABEL_32;
  }

  if (v10 >= *(v4 + 2))
  {
LABEL_32:
    __break(1u);
    goto LABEL_33;
  }

  *&v4[8 * v10 + 32] |= v17;
  *v2 = v4;
  if (__OFADD__(v5, 1))
  {
LABEL_33:
    __break(1u);
    goto LABEL_34;
  }

  if (v7)
  {
    v18 = a1;
  }

  else
  {
    v18 = v6;
  }

  if (v18 >= a1)
  {
    v18 = a1;
  }

  *(v2 + 8) = v5 + 1;
  *(v2 + 16) = v18;
  *(v2 + 24) = 0;
  if (v9)
  {
    v19 = a1;
  }

  else
  {
    v19 = v8;
  }

  if (v19 <= a1)
  {
    v19 = a1;
  }

  *(v2 + 32) = v19;
  *(v2 + 40) = 0;
}

BOOL ContiguousBitSet.isDense.getter()
{
  if (*(v0 + 24))
  {
    return 1;
  }

  if (*(v0 + 40))
  {
    return 1;
  }

  v2 = *(v0 + 16);
  v3 = *(v0 + 32);
  v4 = __OFSUB__(v3, v2);
  v5 = v3 - v2;
  if (v4)
  {
    __break(1u);
  }

  else
  {
    v4 = __OFADD__(v5, 1);
    v6 = v5 + 1;
    if (!v4)
    {
      return *(v0 + 8) == v6;
    }
  }

  __break(1u);
  return result;
}

unint64_t ContiguousBitSet.makeBooleanMask(count:)(unint64_t result, char a2)
{
  v4 = result;
  v5 = v2[1];
  v12 = *v2;
  v13[0] = v5;
  *(v13 + 9) = *(v2 + 25);
  if (BYTE8(v5))
  {
    if (a2)
    {
      return MEMORY[0x1E69E7CC0];
    }

    if ((result & 0x8000000000000000) == 0)
    {
      if (result)
      {
        v6 = static Array._allocateBufferUninitialized(minimumCapacity:)();
        *(v6 + 16) = v4;
        bzero((v6 + 32), v4);
        return v6;
      }

      return MEMORY[0x1E69E7CC0];
    }

    goto LABEL_17;
  }

  v7 = *(v12 + 16);
  if (v7 >> 57)
  {
    __break(1u);
LABEL_17:
    __break(1u);
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  v8 = v7 << 6;
  outlined init with copy of ContiguousBitSet(&v12, v11);
  v9 = _sSa28_unsafeUninitializedCapacity16initializingWithSayxGSi_ySryxGz_SiztKXEtKcfCSb_Tt1g5090_s19TokenGenerationCore16ContiguousBitSetV15makeBooleanMask5counts0D5ArrayVySbGSiSg_tFySryS12Gz_SiztXEfU_0gH4Core0jkL0VTf1nc_nTf4ng_n(v8, &v12);
  outlined destroy of ContiguousBitSet(&v12);
  v11[0] = v9;
  if (a2)
  {
    return v11[0];
  }

  v10 = *(v9 + 16);
  if (v4 < v10)
  {
    result = v10 - v4;
    if (!__OFSUB__(v10, v4))
    {
      specialized RangeReplaceableCollection<>.removeLast(_:)(result, specialized ContiguousArray.replaceSubrange<A>(_:with:));
      return v11[0];
    }

    goto LABEL_18;
  }

  if (v4 <= v10)
  {
    return v11[0];
  }

  result = v4 - v10;
  if ((v4 - v10) >= 0)
  {
    specialized ContiguousArray.append<A>(contentsOf:)(result, 0);
    return v11[0];
  }

LABEL_19:
  __break(1u);
  return result;
}

uint64_t *closure #1 in ContiguousBitSet.makeBooleanMask(count:)(uint64_t *result, void *a2, uint64_t a3)
{
  v3 = *(*a3 + 16);
  if (v3)
  {
    v4 = 0;
    v5 = 0;
    v6 = *a3 + 32;
    v7 = vdupq_n_s64(1uLL);
    v8.i64[0] = 0x101010101010101;
    v8.i64[1] = 0x101010101010101;
    v9 = *result;
    while (2)
    {
      v10 = *(v6 + 8 * v4);
      v11 = v5 ^ 0x7FFFFFFFFFFFFFFFLL;
      if ((v5 ^ 0x7FFFFFFFFFFFFFFFuLL) >= 0x10)
      {
        if (v11 >= 0x3F)
        {
          v13 = 63;
        }

        else
        {
          v13 = v5 ^ 0x7FFFFFFFFFFFFFFFLL;
        }

        v14 = v13 + 1;
        v15 = v14 & 0xF;
        if ((v14 & 0xF) == 0)
        {
          v15 = 16;
        }

        v12 = v14 - v15;
        v16 = v5 + v12;
        v17 = vdupq_n_s64(v10);
        v18 = (v9 + v5);
        v19 = v12;
        v20 = xmmword_1A8FC9770;
        v21 = xmmword_1A8FC9760;
        v22 = xmmword_1A8FC9750;
        v23 = xmmword_1A8FC9740;
        v24 = xmmword_1A8FC9730;
        v25 = xmmword_1A8FC9720;
        v26 = xmmword_1A8FC9710;
        v27 = xmmword_1A8FC9700;
        do
        {
          *v18++ = vandq_s8(vuzp1q_s8(vmvnq_s8(vuzp1q_s16(vuzp1q_s32(vceqzq_s64(vandq_s8(vshlq_u64(v7, v20), v17)), vceqzq_s64(vandq_s8(vshlq_u64(v7, v21), v17))), vuzp1q_s32(vceqzq_s64(vandq_s8(vshlq_u64(v7, v22), v17)), vceqzq_s64(vandq_s8(vshlq_u64(v7, v23), v17))))), vmvnq_s8(vuzp1q_s16(vuzp1q_s32(vceqzq_s64(vandq_s8(vshlq_u64(v7, v24), v17)), vceqzq_s64(vandq_s8(vshlq_u64(v7, v25), v17))), vuzp1q_s32(vceqzq_s64(vandq_s8(vshlq_u64(v7, v26), v17)), vceqzq_s64(vandq_s8(vshlq_u64(v7, v27), v17)))))), v8);
          v28 = vdupq_n_s64(0x10uLL);
          v22 = vaddq_s64(v22, v28);
          v21 = vaddq_s64(v21, v28);
          v20 = vaddq_s64(v20, v28);
          v23 = vaddq_s64(v23, v28);
          v24 = vaddq_s64(v24, v28);
          v25 = vaddq_s64(v25, v28);
          v26 = vaddq_s64(v26, v28);
          v27 = vaddq_s64(v27, v28);
          v19 -= 16;
        }

        while (v19);
        v5 = v16;
      }

      else
      {
        v12 = 0;
      }

      ++v4;
      do
      {
        result = ((v10 >> v12) & 1);
        *(v9 + v5) = result;
        if (v11 == v12)
        {
          __break(1u);
          return result;
        }

        ++v5;
        ++v12;
      }

      while (v12 != 64);
      if (v4 != v3)
      {
        continue;
      }

      break;
    }
  }

  else
  {
    v5 = 0;
  }

  *a2 = v5;
  return result;
}

uint64_t ContiguousBitSet.forEachValue(_:)(uint64_t result)
{
  v3 = *v1;
  v4 = *(*v1 + 16);
  if (v4)
  {
    v5 = result;

    v6 = 0;
LABEL_3:
    if (v6 >= v4)
    {
      __break(1u);
    }

    else
    {
      v7 = 0;
      v8 = *(v3 + 32 + 8 * v6++);
      while (1)
      {
        result = v5((v8 >> v7) & 1);
        if (v2)
        {
        }

        if (++v7 == 64)
        {
          v4 = *(v3 + 16);
          if (v6 != v4)
          {
            goto LABEL_3;
          }
        }
      }
    }
  }

  return result;
}

unint64_t specialized RangeReplaceableCollection<>.removeLast(_:)(unint64_t result, uint64_t (*a2)(unint64_t))
{
  if (result)
  {
    if ((result & 0x8000000000000000) != 0)
    {
      __break(1u);
    }

    else
    {
      v4 = *(*v2 + 16);
      v5 = v4 >= result;
      result = v4 - result;
      if (v5)
      {
        return a2(result);
      }
    }

    __break(1u);
  }

  return result;
}

char *specialized ContiguousArray.append<A>(contentsOf:)(char *result, unint64_t a2)
{
  v3 = *v2;
  v4 = *(*v2 + 16);
  v5 = &result[v4];
  if (__OFADD__(v4, result))
  {
    goto LABEL_53;
  }

  v7 = result;
  v8 = *v2;
  result = swift_isUniquelyReferenced_nonNull_native();
  *v2 = v3;
  if (result)
  {
    v9 = *(v3 + 24) >> 1;
    if (v9 >= v5)
    {
      goto LABEL_11;
    }

    if (v4 <= v5)
    {
      v10 = v5;
    }

    else
    {
      v10 = v4;
    }
  }

  else if (v4 <= v5)
  {
    v10 = v5;
  }

  else
  {
    v10 = v4;
  }

  result = specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(result, v10, 1);
  v3 = *v2;
  v9 = *(*v2 + 24) >> 1;
LABEL_11:
  v11 = *(v3 + 16);
  v12 = v9 - v11;
  if (v9 == v11)
  {
    if (v7 > 0)
    {
LABEL_54:
      __break(1u);
      goto LABEL_55;
    }

    v13 = 0;
  }

  else
  {
    if (v12 < 1)
    {
      __break(1u);
LABEL_51:
      __break(1u);
LABEL_52:
      __break(1u);
LABEL_53:
      __break(1u);
      goto LABEL_54;
    }

    v13 = v7;
    if (v7)
    {
      v14 = (v3 + 8 * v11);
      v15 = &v14[2];
      v16 = v7 & ~(v7 >> 63);
      v17 = v9 + ~v11;
      if (v16 < v17)
      {
        v17 = v7 & ~(v7 >> 63);
      }

      if (v17 >= v7 - 1)
      {
        v17 = v7 - 1;
      }

      if (v17 > 3)
      {
        v20 = v17 + 1;
        v21 = v20 & 3;
        if ((v20 & 3) == 0)
        {
          v21 = 4;
        }

        v18 = v20 - v21;
        v19 = v18 + 1;
        v15 += v18;
        v22 = vdupq_n_s64(a2);
        v23 = v14 + 3;
        v24 = v18;
        do
        {
          v23[-1] = v22;
          *v23 = v22;
          v23 += 2;
          v24 -= 4;
        }

        while (v24);
      }

      else
      {
        v18 = 0;
        v19 = 1;
      }

      while (v18 != v16)
      {
        v18 = v19;
        *v15 = a2;
        if (v12 == v19)
        {
          v13 = v12;
          if (v12 < v7)
          {
            goto LABEL_54;
          }

          goto LABEL_31;
        }

        ++v15;
        ++v19;
        if (v7 + 1 == v18 + 1)
        {
          v13 = v7;
          goto LABEL_31;
        }
      }

      goto LABEL_52;
    }

LABEL_31:
    if (v13 > 0)
    {
      v25 = *(v3 + 16);
      v26 = __OFADD__(v25, v13);
      v27 = v25 + v13;
      if (v26)
      {
LABEL_55:
        __break(1u);
        goto LABEL_56;
      }

      *(v3 + 16) = v27;
    }
  }

  if (v13 != v12 || v12 == v7)
  {
LABEL_49:
    *v2 = v3;
    return result;
  }

  if (v12 < v7)
  {
    v28 = *(v3 + 16);
    v29 = v12 + 1;
    while (1)
    {
      v30 = *(v3 + 24);
      if (v28 + 1 > (v30 >> 1))
      {
        result = specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v30 > 1), v28 + 1, 1);
      }

      v3 = *v2;
      v31 = *(*v2 + 24) >> 1;
      if (v28 < v31)
      {
        break;
      }

LABEL_38:
      *(v3 + 16) = v28;
    }

    v32 = v29 + v31 - v28;
    v33 = v28 + 4;
    v34 = v29;
    while (1)
    {
      *(v3 + 8 * v33) = a2;
      if (v7 == v34)
      {
        break;
      }

      if (v29 < 0 || v34 >= v7)
      {
        goto LABEL_51;
      }

      ++v34;
      if (++v33 - v31 == 4)
      {
        v28 = v31;
        v29 = v32;
        goto LABEL_38;
      }
    }

    *(v3 + 16) = v33 - 3;
    goto LABEL_49;
  }

LABEL_56:
  __break(1u);
  return result;
}

char *specialized ContiguousArray.append<A>(contentsOf:)(char *result, char a2)
{
  v3 = *v2;
  v4 = *(*v2 + 16);
  v5 = &result[v4];
  if (__OFADD__(v4, result))
  {
    goto LABEL_54;
  }

  v7 = result;
  v8 = *v2;
  result = swift_isUniquelyReferenced_nonNull_native();
  *v2 = v3;
  if (result)
  {
    v9 = *(v3 + 24) >> 1;
    if (v9 >= v5)
    {
      goto LABEL_11;
    }

    if (v4 <= v5)
    {
      v10 = v5;
    }

    else
    {
      v10 = v4;
    }
  }

  else if (v4 <= v5)
  {
    v10 = v5;
  }

  else
  {
    v10 = v4;
  }

  result = specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(result, v10, 1);
  v3 = *v2;
  v9 = *(*v2 + 24) >> 1;
LABEL_11:
  v11 = *(v3 + 16);
  v12 = v9 - v11;
  if (v9 == v11)
  {
    if (v7 > 0)
    {
LABEL_55:
      __break(1u);
LABEL_56:
      __break(1u);
      goto LABEL_57;
    }

    v13 = 0;
    goto LABEL_35;
  }

  if (v12 < 1)
  {
LABEL_52:
    __break(1u);
LABEL_53:
    __break(1u);
LABEL_54:
    __break(1u);
    goto LABEL_55;
  }

  v13 = v7;
  if (v7)
  {
    v14 = (v3 + v11 + 32);
    v15 = a2 & 1;
    v16 = v7 & ~(v7 >> 63);
    v17 = v9 + ~v11;
    if (v16 < v17)
    {
      v17 = v7 & ~(v7 >> 63);
    }

    if (v17 >= v7 - 1)
    {
      v17 = v7 - 1;
    }

    if (v17 > 0xF)
    {
      v20 = v17 + 1;
      v21 = v20 & 0xF;
      if ((v20 & 0xF) == 0)
      {
        v21 = 16;
      }

      v18 = v20 - v21;
      v19 = v18 + 1;
      v22 = (v14 + v18);
      v23 = vdupq_n_s8(v15);
      v24 = v18;
      do
      {
        *v14++ = v23;
        v24 -= 16;
      }

      while (v24);
      v14 = v22;
    }

    else
    {
      v18 = 0;
      v19 = 1;
    }

    while (v18 != v16)
    {
      v18 = v19;
      v14->i8[0] = v15;
      if (v12 == v19)
      {
        v13 = v12;
        if (v12 < v7)
        {
          goto LABEL_55;
        }

        goto LABEL_32;
      }

      v14 = (v14 + 1);
      ++v19;
      if (v7 + 1 == v18 + 1)
      {
        v13 = v7;
        goto LABEL_32;
      }
    }

    goto LABEL_53;
  }

LABEL_32:
  if (v13 <= 0)
  {
LABEL_35:
    if (v13 != v12 || v13 == v7)
    {
LABEL_50:
      *v2 = v3;
      return result;
    }

    if (v12 >= v7)
    {
      goto LABEL_56;
    }

    v26 = v12 + 1;
    v27 = a2 & 1;
    while (1)
    {
      v28 = *(v3 + 24);
      if (v11 + 1 > (v28 >> 1))
      {
        result = specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v28 > 1), v11 + 1, 1);
      }

      v3 = *v2;
      v29 = *(*v2 + 24) >> 1;
      if (v11 < v29)
      {
        break;
      }

LABEL_39:
      *(v3 + 16) = v11;
    }

    v30 = v26 + v29 - v11;
    v31 = v11 + 32;
    v32 = v26;
    while (1)
    {
      *(v3 + v31) = v27;
      if (v7 == v32)
      {
        *(v3 + 16) = v31 - 31;
        goto LABEL_50;
      }

      if (v26 < 0 || v32 >= v7)
      {
        break;
      }

      ++v32;
      if (++v31 - v29 == 32)
      {
        v11 = v29;
        v26 = v30;
        goto LABEL_39;
      }
    }

    __break(1u);
    goto LABEL_52;
  }

  v25 = __OFADD__(v11, v13);
  v11 += v13;
  if (!v25)
  {
    *(v3 + 16) = v11;
    goto LABEL_35;
  }

LABEL_57:
  __break(1u);
  return result;
}

uint64_t ContiguousBitSet.indices()()
{
  v1 = v0[1];
  v3 = *v0;
  v4[0] = v1;
  *(v4 + 9) = *(v0 + 25);
  return _sSTsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lF19TokenGenerationCore16ContiguousBitSetV_Sis5NeverOTB504_s19de6Core16ghI25V7indicesSaySiGyFS2iXEfU_Tf1cn_n(&v3);
}

uint64_t _sSTsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lF19TokenGenerationCore16ContiguousBitSetV_Sis5NeverOTB504_s19de6Core16ghI25V7indicesSaySiGyFS2iXEfU_Tf1cn_n(uint64_t *a1)
{
  v16 = MEMORY[0x1E69E7CC0];
  specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, 0, 0);
  v2 = v16;
  v3 = *a1;
  result = outlined init with copy of ContiguousBitSet(a1, v15);
  v5 = 0;
LABEL_2:
  v6 = *(v3 + 16);
  if (v5 > v6)
  {
    v6 = v5;
  }

  if (v5 <= 0x200000000000000)
  {
    v7 = 0x200000000000000;
  }

  else
  {
    v7 = v5;
  }

  v8 = (v5 << 6) - 64;
  v9 = v5;
  do
  {
    if (v6 == v9)
    {

      return v2;
    }

    if ((v5 & 0x8000000000000000) != 0)
    {
      __break(1u);
LABEL_20:
      __break(1u);
      goto LABEL_21;
    }

    if (v7 == v9)
    {
      goto LABEL_20;
    }

    v10 = *(v3 + 8 * v9++ + 32);
    v8 += 64;
  }

  while (!v10);
  v5 = v9;
  while (1)
  {
    v11 = __clz(__rbit64(v10));
    v12 = v8 + v11;
    if (__OFADD__(v8, v11))
    {
      break;
    }

    v16 = v2;
    v14 = *(v2 + 16);
    v13 = *(v2 + 24);
    if (v14 >= v13 >> 1)
    {
      result = specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v13 > 1), v14 + 1, 1);
      v2 = v16;
    }

    v10 &= v10 - 1;
    *(v2 + 16) = v14 + 1;
    *(v2 + 8 * v14 + 32) = v12;
    if (!v10)
    {
      goto LABEL_2;
    }
  }

LABEL_21:
  __break(1u);
  return result;
}

Swift::Bool __swiftcall ContiguousBitSet.contains(_:)(Swift::Int a1)
{
  v2 = *v1;
  if (a1 >= 0)
  {
    v3 = a1;
  }

  else
  {
    v3 = a1 + 63;
  }

  v4 = v3 >> 6;
  if (v3 >> 6 >= *(v2 + 16))
  {
    LOBYTE(a1) = 0;
  }

  else if (a1 < -63)
  {
    __break(1u);
  }

  else
  {
    v5 = a1 - (v3 & 0xFFFFFFFFFFFFFFC0);
    v6 = *(v2 + 8 * v4 + 32);
    v7 = 1 << v5;
    if (v5 < 0)
    {
      v7 = 0;
    }

    LOBYTE(a1) = (v6 & v7) != 0;
  }

  return a1;
}

Swift::Void __swiftcall ContiguousBitSet.remove(_:)(Swift::Int a1)
{
  v2 = *v1;
  v3 = a1 + 63;
  if (a1 >= 0)
  {
    v3 = a1;
  }

  v4 = v3 >> 6;
  if (v3 >> 6 < *(v2 + 2))
  {
    if (a1 < -63)
    {
LABEL_48:
      __break(1u);
      goto LABEL_49;
    }

    v5 = a1 - (v3 & 0xFFFFFFFFFFFFFFC0);
    if ((v5 & 0x8000000000000000) == 0)
    {
      v6 = 1 << v5;
      if ((*&v2[8 * v4 + 32] & (1 << v5)) != 0)
      {
        v9 = *(v1 + 8);
        v8 = *(v1 + 16);
        v10 = *(v1 + 24);
        v11 = *(v1 + 32);
        v12 = *(v1 + 40);
        v13 = *v1;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v2 = specialized _ContiguousArrayBuffer._consumeAndCreateNew()(v2);
        }

        v14 = *(v2 + 2);
        if (v4 < v14)
        {
          v15 = v2 + 32;
          *&v2[8 * v4 + 32] &= ~v6;
          *v1 = v2;
          if (!__OFSUB__(v9, 1))
          {
            *(v1 + 8) = v9 - 1;
            if (v9 == 1)
            {
LABEL_29:
              v8 = 0;
              *(v1 + 16) = 0;
              v22 = 1;
              *(v1 + 24) = 1;
            }

            else
            {
              if ((v10 | v12))
              {
LABEL_54:
                _StringGuts.grow(_:)(42);

                v25 = dispatch thunk of CustomStringConvertible.description.getter();
                MEMORY[0x1AC57C120](v25);

                MEMORY[0x1AC57C120](0x2074756220, 0xE500000000000000);
                v26 = dispatch thunk of CustomStringConvertible.description.getter();
                MEMORY[0x1AC57C120](v26);

                MEMORY[0x1AC57C120](0x20646E6120, 0xE500000000000000);
                v27 = dispatch thunk of CustomStringConvertible.description.getter();
                MEMORY[0x1AC57C120](v27);

                _assertionFailure(_:_:file:line:flags:)();
                __break(1u);
                return;
              }

              if (v8 == a1)
              {
                v8 = a1 + 1;
                if (!__OFADD__(a1, 1))
                {
                  if (v11 >= v8)
                  {
                    while (1)
                    {
                      v16 = v8 >= 0 ? v8 : v8 + 63;
                      v17 = v16 >> 6;
                      if (v16 >> 6 < v14)
                      {
                        if (v8 < -63)
                        {
                          __break(1u);
                          goto LABEL_48;
                        }

                        v18 = v8 - (v16 & 0xFFFFFFFFFFFFFFC0);
                        v19 = *&v15[8 * v17];
                        v20 = v18 >= 0 ? 1 << v18 : 0;
                        if ((v19 & v20) != 0)
                        {
                          break;
                        }
                      }

                      if (v11 == v8)
                      {
                        v8 = 0;
                        v22 = 1;
                        goto LABEL_34;
                      }

                      if (__OFADD__(v8++, 1))
                      {
                        __break(1u);
                        goto LABEL_29;
                      }
                    }

                    v22 = 0;
LABEL_34:
                    *(v1 + 16) = v8;
                    *(v1 + 24) = v22;
                    if (v9 == 2)
                    {
                      goto LABEL_45;
                    }

LABEL_35:
                    if (v11 != a1)
                    {
                      return;
                    }

                    v23 = a1 - 1;
                    if (!__OFSUB__(a1, 1))
                    {
                      v24 = 0;
                      do
                      {
                        v8 = v23;
                        if (v23 <= 0)
                        {
                          if ((v23 != 0) | v24 & 1)
                          {
                            return;
                          }

                          v23 = 0;
                          v24 = 1;
                        }

                        else
                        {
                          --v23;
                        }
                      }

                      while (v8 >> 6 >= v14 || ((*&v15[8 * (v8 >> 6)] >> v8) & 1) == 0);
                      v22 = 0;
                      goto LABEL_45;
                    }

                    goto LABEL_53;
                  }

LABEL_52:
                  __break(1u);
LABEL_53:
                  __break(1u);
                  goto LABEL_54;
                }

LABEL_51:
                __break(1u);
                goto LABEL_52;
              }

              v22 = 0;
              if (v9 != 2)
              {
                goto LABEL_35;
              }
            }

LABEL_45:
            *(v1 + 32) = v8;
            *(v1 + 40) = v22;
            return;
          }

LABEL_50:
          __break(1u);
          goto LABEL_51;
        }

LABEL_49:
        __break(1u);
        goto LABEL_50;
      }
    }
  }
}

BOOL ContiguousBitSet.isEquivalent(to:)(_BOOL8 result, uint64_t a2)
{
  if (*(v2 + 24) & 1) != 0 || (*(v2 + 40))
  {
    return result == a2;
  }

  if (result == a2)
  {
    return 0;
  }

  if (result < a2)
  {
    v4 = 0;
    if (*(v2 + 16) != result)
    {
      return v4;
    }

    v5 = *(v2 + 32);
    if (a2 - 1 != v5)
    {
      return v4;
    }

    v6 = v5 - result;
    if (!__OFSUB__(v5, result))
    {
      v7 = __OFADD__(v6, 1);
      v8 = v6 + 1;
      if (!v7)
      {
        return *(v2 + 8) == v8;
      }

      goto LABEL_18;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
LABEL_18:
  __break(1u);
  return result;
}

uint64_t ContiguousBitSet.formUnion(_:)(uint64_t result)
{
  if ((*(result + 24) & 1) == 0 && (*(result + 40) & 1) == 0)
  {
    v2 = *result;
    v3 = *(result + 8);
    v4 = *(result + 16);
    v5 = *(result + 32);
    if (v1[3] & 1) != 0 || (v1[5])
    {
      v6 = *v1;
      v7 = *result;

      *v1 = v2;
      v1[1] = v3;
      v1[2] = v4;
      *(v1 + 24) = 0;
      v8 = v1 + 5;
      v1[4] = v5;
LABEL_31:
      *v8 = 0;
      return result;
    }

    if (v4 >= v1[2])
    {
      v9 = v1[2];
    }

    else
    {
      v9 = *(result + 16);
    }

    if (v5 <= v1[4])
    {
      v10 = v1[4];
    }

    else
    {
      v10 = *(result + 32);
    }

    v11 = v5 + 63;
    if (v5 >= 0)
    {
      v11 = *(result + 32);
    }

    v12 = v11 >> 6;
    v13 = *(*v1 + 16);
    if (v13 <= v12)
    {
      result = v12 - v13 + 1;
      if (result < 0)
      {
        goto LABEL_39;
      }

      result = specialized ContiguousArray.append<A>(contentsOf:)(result, 0);
    }

    v14 = v9 / 64;
    if (v10 / 64 >= v9 / 64)
    {
      v15 = *(v2 + 16);
      if (v14 >= v15)
      {
LABEL_30:
        v8 = v1 + 5;
        v1[2] = v9;
        *(v1 + 24) = 0;
        v1[4] = v10;
        goto LABEL_31;
      }

      v16 = *v1;
      v17 = v15 - 1;
      while (v9 >= -63)
      {
        if (v14 >= *(v16 + 16))
        {
          goto LABEL_34;
        }

        if (v14 >= *(v2 + 16))
        {
          goto LABEL_35;
        }

        v18 = *(v16 + 8 * v14 + 32);
        v19 = *(v2 + 32 + 8 * v14);
        result = swift_isUniquelyReferenced_nonNull_native();
        if ((result & 1) == 0)
        {
          result = specialized _ContiguousArrayBuffer._consumeAndCreateNew()(v16);
          v16 = result;
        }

        if (v14 >= *(v16 + 16))
        {
          goto LABEL_36;
        }

        v20 = vcnt_s8(v18);
        v20.i16[0] = vaddlv_u8(v20);
        v21 = v20.u32[0];
        v22 = (v16 + 8 * v14);
        *&v22[4] |= v19;
        *v1 = v16;
        v23 = vcnt_s8(v22[4]);
        v23.i16[0] = vaddlv_u8(v23);
        v24 = v23.u32[0] - v21;
        v25 = v1[1];
        v26 = __OFADD__(v25, v24);
        v27 = v25 + v24;
        if (v26)
        {
          goto LABEL_37;
        }

        v1[1] = v27;
        if (v10 / 64 != v14 && v17 != v14++)
        {
          continue;
        }

        goto LABEL_30;
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
    }

    __break(1u);
LABEL_39:
    __break(1u);
  }

  return result;
}

uint64_t ContiguousBitSet.union(_:)@<X0>(uint64_t *a1@<X0>, uint64_t (*a2)(uint64_t *)@<X1>, uint64_t a3@<X8>)
{
  v5 = *a1;
  v6 = *(a1 + 24);
  v7 = a1[4];
  v8 = *(a1 + 40);
  v9 = *(v3 + 24);
  v10 = *(v3 + 32);
  v11 = *(v3 + 40);
  *a3 = *v3;
  *(a3 + 8) = *(v3 + 8);
  *(a3 + 24) = v9;
  *(a3 + 32) = v10;
  *(a3 + 40) = v11;
  v13 = v5;
  v14 = *(a1 + 1);
  v15 = v6;
  v16 = v7;
  v17 = v8;

  return a2(&v13);
}

unint64_t ContiguousBitSet.formIntersection(_:)(unint64_t result)
{
  if ((*(result + 24) & 1) == 0 && (*(result + 40) & 1) == 0 && (*(v1 + 24) & 1) == 0 && (*(v1 + 40) & 1) == 0)
  {
    v7 = *result;
    v8 = *(result + 16);
    v9 = *(result + 32);
    v10 = *(v1 + 16);
    v11 = *(v1 + 32);
    v12 = *v1;
    v13 = *(*v1 + 16);
    if (*(*result + 16) >= v13)
    {
      v14 = *(*v1 + 16);
    }

    else
    {
      v14 = *(*result + 16);
    }

    if (v14)
    {
      v51 = *(result + 16);
      v52 = *(result + 32);
      v15 = 4;
      v16 = v14;
      while (1)
      {
        v17 = v15 - 4;
        if ((v15 - 4) >= *(v12 + 16))
        {
          break;
        }

        if (v17 >= *(v7 + 16))
        {
          goto LABEL_77;
        }

        v18 = *(v12 + 8 * v15);
        v19 = *(v7 + 8 * v15);
        result = swift_isUniquelyReferenced_nonNull_native();
        if ((result & 1) == 0)
        {
          result = specialized _ContiguousArrayBuffer._consumeAndCreateNew()(v12);
          v12 = result;
        }

        if (v17 >= *(v12 + 16))
        {
          goto LABEL_78;
        }

        v20 = vcnt_s8(v18);
        v20.i16[0] = vaddlv_u8(v20);
        v21 = v20.u32[0];
        *(v12 + 8 * v15) &= v19;
        *v1 = v12;
        v22 = vcnt_s8(*(v12 + 8 * v15));
        v22.i16[0] = vaddlv_u8(v22);
        v23 = v21 - v22.u32[0];
        v24 = *(v1 + 8);
        v25 = __OFSUB__(v24, v23);
        v26 = v24 - v23;
        if (v25)
        {
          goto LABEL_79;
        }

        *(v1 + 8) = v26;
        ++v15;
        if (!--v16)
        {
          v13 = *(v12 + 16);
          v8 = v51;
          v9 = v52;
          goto LABEL_23;
        }
      }

LABEL_76:
      __break(1u);
LABEL_77:
      __break(1u);
LABEL_78:
      __break(1u);
LABEL_79:
      __break(1u);
LABEL_80:
      __break(1u);
LABEL_81:
      __break(1u);
    }

    else
    {
LABEL_23:
      result = v13 - v14;
      if (v13 > v14)
      {
        if ((v13 - v14) < 0)
        {
LABEL_85:
          __break(1u);
          goto LABEL_86;
        }

        v27 = v14;
        if (v13 < result)
        {
          v27 = 0;
        }

        if (v27 != v13)
        {
          if (v27 >= v13)
          {
LABEL_86:
            __break(1u);
            return result;
          }

          v28 = *(v1 + 8);
          if (v13 >= result)
          {
            v29 = v13 - v14;
          }

          else
          {
            v29 = v13;
          }

          v30 = -v29;
          v31 = v12 + 8 * v13 + 32;
          do
          {
            v32 = vcnt_s8(*(v31 + 8 * v30));
            v32.i16[0] = vaddlv_u8(v32);
            v25 = __OFSUB__(v28, v32.u32[0]);
            v28 -= v32.u32[0];
            if (v25)
            {
              goto LABEL_83;
            }

            *(v1 + 8) = v28;
          }

          while (!__CFADD__(v30++, 1));
        }

        result = specialized RangeReplaceableCollection<>.removeLast(_:)(result, specialized ContiguousArray.replaceSubrange<A>(_:with:));
      }

      if (v8 <= v10)
      {
        v34 = v10;
      }

      else
      {
        v34 = v8;
      }

      if (v9 >= v11)
      {
        v35 = v11;
      }

      else
      {
        v35 = v9;
      }

      if (!*(v1 + 8))
      {
        *(v1 + 16) = 0;
        *(v1 + 24) = 1;
        *(v1 + 32) = 0;
        *(v1 + 40) = 1;
        return result;
      }

      if (v35 < v34)
      {
        goto LABEL_84;
      }

      v36 = *(*v1 + 16);
      v37 = *v1 + 32;
      v38 = v34;
      while (1)
      {
        v39 = v38 >= 0 ? v38 : v38 + 63;
        v40 = v39 >> 6;
        if (v39 >> 6 < v36)
        {
          if (v38 < -63)
          {
            goto LABEL_80;
          }

          v41 = v38 - (v39 & 0xFFFFFFFFFFFFFFC0);
          v42 = *(v37 + 8 * v40);
          v43 = v41 >= 0 ? 1 << v41 : 0;
          if ((v42 & v43) != 0)
          {
            break;
          }
        }

        if (v35 == v38)
        {
          __break(1u);
          goto LABEL_76;
        }

        v25 = __OFADD__(v38++, 1);
        if (v25)
        {
          __break(1u);
          break;
        }
      }

      v44 = 0;
      *(v1 + 16) = v38;
      *(v1 + 24) = 0;
      while (1)
      {
        do
        {
          v45 = v35;
          if (v34 >= v35)
          {
            if (v44 & 1 | (v35 != v34))
            {
              goto LABEL_81;
            }

            v44 = 1;
            v35 = v34;
          }

          else
          {
            --v35;
          }

          if (v45 >= 0)
          {
            v46 = v45;
          }

          else
          {
            v46 = v45 + 63;
          }

          v47 = v46 >> 6;
        }

        while (v46 >> 6 >= v36);
        if (v45 < -63)
        {
          break;
        }

        v48 = v45 - (v46 & 0xFFFFFFFFFFFFFFC0);
        v49 = *(v37 + 8 * v47);
        if (v48 >= 0)
        {
          v50 = 1 << v48;
        }

        else
        {
          v50 = 0;
        }

        if ((v49 & v50) != 0)
        {
          *(v1 + 32) = v45;
          *(v1 + 40) = 0;
          return result;
        }
      }
    }

    __break(1u);
LABEL_83:
    __break(1u);
LABEL_84:
    __break(1u);
    goto LABEL_85;
  }

  *(v1 + 8) = 0;
  *(v1 + 16) = 0;
  *(v1 + 24) = 1;
  *(v1 + 32) = 0;
  *(v1 + 40) = 1;
  v2 = *v1;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v4 = *v1;
  if (isUniquelyReferenced_nonNull_native)
  {
    v5 = *(v4 + 16);

    return specialized ContiguousArray.replaceSubrange<A>(_:with:)(0, v5);
  }

  else
  {
    v6 = _ss22_ContiguousArrayBufferV19_uninitializedCount15minimumCapacityAByxGSi_SitcfCs6UInt64V_Tt1g5Tm(0, *(v4 + 24) >> 1, &_ss23_ContiguousArrayStorageCys6UInt64VGMd, &_ss23_ContiguousArrayStorageCys6UInt64VGMR);

    *v1 = v6;
  }

  return result;
}

uint64_t specialized BidirectionalCollection.suffix(_:)(uint64_t result, uint64_t a2)
{
  if (result < 0)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16);
    return a2;
  }

  return result;
}

uint64_t ContiguousBitSet.union(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t (*a3)(uint64_t, uint64_t)@<X2>, uint64_t a4@<X8>)
{
  v9 = *(v4 + 24);
  v10 = *(v4 + 32);
  v11 = *(v4 + 40);
  *a4 = *v4;
  *(a4 + 8) = *(v4 + 8);
  *(a4 + 24) = v9;
  *(a4 + 32) = v10;
  *(a4 + 40) = v11;

  return a3(a1, a2);
}

void ContiguousBitSet.formIntersection(_:)(Swift::Int a1, Swift::Int a2)
{
  if (a1 == a2)
  {
    goto LABEL_6;
  }

  if (a1 >= a2)
  {
    __break(1u);
LABEL_35:
    __break(1u);
    return;
  }

  if (v2[3] & 1) != 0 || (v2[5])
  {
LABEL_6:
    v2[1] = 0;
    v2[2] = 0;
    *(v2 + 24) = 1;
    v2[4] = 0;
    *(v2 + 40) = 1;
    v3 = *v2;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v5 = *v2;
    if (isUniquelyReferenced_nonNull_native)
    {
LABEL_7:
      v6 = *(v5 + 16);

      specialized ContiguousArray.replaceSubrange<A>(_:with:)(0, v6);
      return;
    }

    if (*(v5 + 24) >= 2uLL)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys6UInt64VGMd, &_ss23_ContiguousArrayStorageCys6UInt64VGMR);
      v7 = swift_allocObject();
      v8 = _swift_stdlib_malloc_size(v7);
      v9 = v8 - 32;
      if (v8 < 32)
      {
        v9 = v8 - 25;
      }

      v7[2] = 0;
      v7[3] = 2 * (v9 >> 3);
    }

    else
    {
      v7 = MEMORY[0x1E69E7CC0];
    }

LABEL_15:

    *v2 = v7;
    return;
  }

  v11 = v2[2];
  v12 = v2[4];
  if (v11 >= a1 && v12 < a2)
  {
    return;
  }

  v13 = a2 - 1;
  if (v11 <= a1)
  {
    v14 = a1;
  }

  else
  {
    v14 = v2[2];
  }

  if (v13 >= v12)
  {
    v13 = v2[4];
  }

  if (v13 < v14)
  {
    v2[1] = 0;
    v2[2] = 0;
    *(v2 + 24) = 1;
    v2[4] = 0;
    *(v2 + 40) = 1;
    v15 = *v2;
    v16 = swift_isUniquelyReferenced_nonNull_native();
    v5 = *v2;
    if (v16)
    {
      goto LABEL_7;
    }

    v7 = _ss22_ContiguousArrayBufferV19_uninitializedCount15minimumCapacityAByxGSi_SitcfCs6UInt64V_Tt1g5Tm(0, *(v5 + 24) >> 1, &_ss23_ContiguousArrayStorageCys6UInt64VGMd, &_ss23_ContiguousArrayStorageCys6UInt64VGMR);
    goto LABEL_15;
  }

  if (v11 < a1)
  {
    do
    {
      v18 = v11 + 1;
      ContiguousBitSet.remove(_:)(v11);
      v11 = v18;
    }

    while (a1 != v18);
  }

  if (v12 >= a2)
  {
    ContiguousBitSet.remove(_:)(a2);
    v19 = __OFSUB__(v12, a2);
    v20 = v12 - a2;
    if (v20)
    {
      if ((v20 < 0) ^ v19 | (v20 == 0))
      {
        goto LABEL_35;
      }

      v21 = a2 + 1;
      do
      {
        ContiguousBitSet.remove(_:)(v21++);
        --v20;
      }

      while (v20);
    }
  }
}

uint64_t ContiguousBitSet.subtracting(_:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  v4 = *v2;
  v5 = *(v2 + 8);
  v6 = *(v2 + 16);
  v7 = *(v2 + 32);
  v8 = *(v2 + 40);
  if (*(v2 + 24))
  {
    *a2 = v4;
    *(a2 + 8) = v5;
    *(a2 + 16) = v6;
    *(a2 + 24) = 1;
LABEL_5:
    *(a2 + 32) = v7;
    *(a2 + 40) = v8;
  }

  if ((*(result + 24) | *(result + 40) | v8))
  {
    *a2 = v4;
    *(a2 + 8) = v5;
    *(a2 + 16) = v6;
    *(a2 + 24) = 0;
    goto LABEL_5;
  }

  if (*(result + 16) <= v6)
  {
    v9 = *(v2 + 16);
  }

  else
  {
    v9 = *(result + 16);
  }

  if (*(result + 32) >= v7)
  {
    v10 = *(v2 + 32);
  }

  else
  {
    v10 = *(result + 32);
  }

  v11 = v9 / 64;
  v12 = v10;
  if (v10 / 64 < v9 / 64)
  {
    goto LABEL_58;
  }

  v13 = *result;

  if (v9 < -63)
  {
LABEL_56:
    __break(1u);
LABEL_57:
    __break(1u);
LABEL_58:
    __break(1u);
LABEL_59:
    __break(1u);
    return result;
  }

  v14 = *(v4 + 16);
  if (v11 < v14)
  {
    v15 = v11 + 4;
    while (v15 - 4 < *(v13 + 16))
    {
      v16 = *(v4 + 8 * v15);
      v17 = *(v13 + 8 * v15);
      result = swift_isUniquelyReferenced_nonNull_native();
      if ((result & 1) == 0)
      {
        result = specialized _ContiguousArrayBuffer._consumeAndCreateNew()(v4);
        v4 = result;
      }

      v14 = *(v4 + 16);
      if (v15 - 4 >= v14)
      {
        goto LABEL_53;
      }

      v18 = vcnt_s8(v16);
      v18.i16[0] = vaddlv_u8(v18);
      v19 = v18.u32[0];
      v20 = (*(v4 + 8 * v15) & ~v17);
      *(v4 + 8 * v15) = v20;
      v21 = vcnt_s8(v20);
      v21.i16[0] = vaddlv_u8(v21);
      v22 = v19 - v21.u32[0];
      v23 = __OFSUB__(v5, v22);
      v5 -= v22;
      if (v23)
      {
        goto LABEL_54;
      }

      if (v12 / -64 + v15 == 4)
      {
        goto LABEL_26;
      }

      v14 = *(v4 + 16);
      v24 = v15 - 3;
      ++v15;
      if (v24 >= v14)
      {
        goto LABEL_25;
      }
    }

LABEL_52:
    __break(1u);
LABEL_53:
    __break(1u);
LABEL_54:
    __break(1u);
LABEL_55:
    __break(1u);
    goto LABEL_56;
  }

LABEL_25:
  __break(1u);
LABEL_26:
  if (!v5)
  {
    *(a2 + 8) = 0;
    *(a2 + 16) = 0;
    *a2 = v4;
    *(a2 + 24) = 1;
    *(a2 + 32) = 0;
    *(a2 + 40) = 1;
    return result;
  }

  if (v7 < v6)
  {
    goto LABEL_59;
  }

  v25 = v4 + 32;
  while (1)
  {
    v26 = v6 >= 0 ? v6 : v6 + 63;
    v27 = v26 >> 6;
    if (v26 >> 6 < v14)
    {
      if (v6 < -63)
      {
        goto LABEL_55;
      }

      v28 = v6 - (v26 & 0xFFFFFFFFFFFFFFC0);
      v29 = *(v25 + 8 * v27);
      v30 = v28 >= 0 ? 1 << v28 : 0;
      if ((v29 & v30) != 0)
      {
        break;
      }
    }

    if (v7 == v6)
    {
      __break(1u);
      goto LABEL_52;
    }

    v23 = __OFADD__(v6++, 1);
    if (v23)
    {
      __break(1u);
      break;
    }
  }

  v31 = 0;
  do
  {
    v32 = v7;
    if (v7 <= 0)
    {
      if (v31 & 1 | (v7 != 0))
      {
        goto LABEL_57;
      }

      v7 = 0;
      v31 = 1;
    }

    else
    {
      --v7;
    }
  }

  while (v32 >> 6 >= v14 || ((*(v25 + 8 * (v32 >> 6)) >> v32) & 1) == 0);
  *a2 = v4;
  *(a2 + 8) = v5;
  *(a2 + 16) = v6;
  *(a2 + 24) = 0;
  *(a2 + 32) = v32;
  *(a2 + 40) = 0;
  return result;
}

uint64_t ContiguousBitSet.isDisjoint(with:)(uint64_t *a1)
{
  if (a1[3])
  {
    return 1;
  }

  v4 = *(a1 + 40);
  result = 1;
  if ((v4 & 1) == 0 && (*(v1 + 24) & 1) == 0 && (*(v1 + 40) & 1) == 0)
  {
    v5 = a1[2];
    v6 = *(v1 + 32);
    if (v6 >= v5)
    {
      v7 = a1[4];
      v8 = *(v1 + 16);
      if (v7 >= v8)
      {
        if (v5 <= v8)
        {
          v5 = *(v1 + 16);
        }

        if (v7 < v6)
        {
          v6 = a1[4];
        }

        if (v6 >= v5)
        {
          v9 = *a1;
          while (1)
          {
            if (v5 >= 0)
            {
              v10 = v5;
            }

            else
            {
              v10 = v5 + 63;
            }

            v11 = v10 >> 6;
            if (v10 >> 6 < *(*v1 + 16))
            {
              if (v5 < -63)
              {
                __break(1u);
                break;
              }

              v12 = v5 - (v10 & 0xFFFFFFFFFFFFFFC0);
              result = 1 << v12;
              if (v12 >= 0)
              {
                v13 = 1 << v12;
              }

              else
              {
                v13 = 0;
              }

              if ((*(*v1 + 32 + 8 * v11) & v13) != 0 && v11 < *(v9 + 16) && (*(v9 + 32 + 8 * v11) & v13) != 0)
              {
                return 0;
              }
            }

            if (v6 == v5)
            {
              return 1;
            }

            if (__OFADD__(v5++, 1))
            {
              __break(1u);
              return 0;
            }
          }
        }

        __break(1u);
      }
    }
  }

  return result;
}

void ContiguousBitSet.applyMask(_:maskValue:)(float16x8_t **a1, float a2)
{
  v5 = *v2;
  v6 = v2[1];
  v7 = v2[2];
  v8 = *(v2 + 24);
  v9 = v2[4];
  v10 = *(v2 + 40);
  v11 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v11 = specialized _ArrayBuffer._consumeAndCreateNew()(v11);
  }

  v12.n128_f32[0] = a2;
  ContiguousBitSet.applyMask(_:maskValue:)(v11 + 2, v11[1].i64[0], v12);
  *a1 = v11;
}

void ContiguousBitSet.applyMask(_:maskValue:)(float16x8_t *a1, uint64_t a2, __n128 a3)
{
  v31 = *a3.n128_u16;
  if (a1)
  {
    if (a2 >= 0)
    {
      v5 = a2;
    }

    else
    {
      v5 = a2 + 63;
    }

    if (a2 >= -63)
    {
      v6 = *v3;
      v7 = v5 >> 6;
      if ((a2 + 63) < 0x7F)
      {
        goto LABEL_17;
      }

      v8 = 0;
      v9 = *(v6 + 16);
      v10 = 0x4000000000000000;
      v11 = a1;
      while (2)
      {
        if (v8 == v7)
        {
LABEL_35:
          __break(1u);
LABEL_36:
          __break(1u);
        }

        else
        {
          if (v8 >= v9)
          {
            v12 = 0;
LABEL_13:
            v13 = 0;
            ++v8;
            v14 = v11;
            do
            {
              if (v10 < 0)
              {
                __break(1u);
                goto LABEL_35;
              }

              v35 = v14[1];
              v36 = *v14;
              v15 = vshl_u32(vand_s8(vdup_n_s32(v12 >> v13), 0xFFFF0000FFFFLL), 0xFFFFFFFDFFFFFFFELL);
              v16.i64[0] = 0x1000100010001;
              v16.i64[1] = 0x1000100010001;
              v17.i16[0] = v12 >> v13;
              v17.i16[1] = v17.i16[0] >> 1;
              v17.i16[2] = v15.i16[0];
              v17.i16[3] = v15.i16[2];
              v17.u64[1] = vshl_u16(vdup_n_s16(v12 >> v13), 0xFFF9FFFAFFFBFFFCLL);
              v18 = vandq_s8(v17, v16);
              v34 = veorq_s8(v18, v16);
              *v19.i64 = _ss6SIMD16VsSBRzrlEyAByxGAByqd__Gcs17FixedWidthIntegerRd__s10SIMDScalarRd__lufCs7Float16V_s6UInt16VTt1g5(v18);
              v32 = v20;
              v33 = v19;
              *v21.i64 = _ss6SIMD16VsSBRzrlEyAByxGAByqd__Gcs17FixedWidthIntegerRd__s10SIMDScalarRd__lufCs7Float16V_s6UInt16VTt1g5(v34);
              *v14 = vaddq_f16(vmulq_f16(v36, v33), vmulq_n_f16(v21, v31));
              v14[1] = vaddq_f16(vmulq_f16(v35, v32), vmulq_n_f16(v22, v31));
              v14 += 2;
              v13 += 16;
            }

            while (v13 != 64);
            v10 += 64;
            v11 += 8;
            if (v8 != v7)
            {
              continue;
            }

LABEL_17:
            v23 = v7 << 6;
            if (v7 << 6 <= a2)
            {
              if (v7 << 6 == a2)
              {
                return;
              }

              if (v23 < a2)
              {
                v24 = *(v6 + 16);
                while (1)
                {
                  if (v23 >= 0)
                  {
                    v25 = v23;
                  }

                  else
                  {
                    v25 = v23 + 63;
                  }

                  v26 = v25 >> 6;
                  if (v25 >> 6 >= v24)
                  {
                    goto LABEL_22;
                  }

                  if (v23 < -63)
                  {
                    goto LABEL_36;
                  }

                  v27 = v23 - (v25 & 0xFFFFFFFFFFFFFFC0);
                  v28 = *(v6 + 32 + 8 * v26);
                  v29 = v27 >= 0 ? 1 << v27 : 0;
                  if ((v28 & v29) == 0)
                  {
LABEL_22:
                    *&a1->i16[v23] = v31;
                  }

                  if (a2 == ++v23)
                  {
                    return;
                  }
                }
              }

LABEL_40:
              __break(1u);
              return;
            }

LABEL_39:
            __break(1u);
            goto LABEL_40;
          }

          if (v8 < *(v6 + 16))
          {
            v12 = *(v6 + 32 + 8 * v8);
            goto LABEL_13;
          }
        }

        break;
      }

      __break(1u);
    }

    __break(1u);
    goto LABEL_39;
  }
}

uint64_t ContiguousBitSet.makeIterator()@<X0>(void *a1@<X8>)
{
  v2 = *v1;
  a1[2] = 0;
  a1[3] = 0;
  *a1 = v2;
  a1[1] = 0;
}

Swift::Int_optional __swiftcall ContiguousBitSet.Iterator.next()()
{
  v1 = v0[2];
  if (!v1)
  {
    v3 = *v0;
    v4 = v0[1];
    v5 = *v0 + 32;
    v6 = v4 << 6;
    while (1)
    {
      if (v4 >= *(v3 + 16))
      {
        v8 = 0;
        v9 = 1;
        goto LABEL_15;
      }

      if ((v4 & 0x8000000000000000) != 0)
      {
        break;
      }

      v1 = *(v5 + 8 * v4);
      v0[2] = v1;
      if (v4 >> 57)
      {
        goto LABEL_13;
      }

      v0[3] = v6;
      v0[1] = ++v4;
      v6 += 64;
      if (v1)
      {
        v2 = v6 - 64;
        goto LABEL_9;
      }
    }

    __break(1u);
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v2 = v0[3];
LABEL_9:
  v7 = __clz(__rbit64(v1));
  v0[2] = (v1 - 1) & v1;
  v8 = v2 + v7;
  if (__OFADD__(v2, v7))
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  v9 = 0;
LABEL_15:
  result.value = v8;
  result.is_nil = v9;
  return result;
}

Swift::Int protocol witness for IteratorProtocol.next() in conformance ContiguousBitSet.Iterator@<X0>(uint64_t a1@<X8>)
{
  v3 = ContiguousBitSet.Iterator.next()();
  *a1 = v3.value;
  *(a1 + 8) = v3.is_nil;
  return v3.value;
}

void protocol witness for Sequence.makeIterator() in conformance ContiguousBitSet(void *a1@<X8>)
{
  v2 = *v1;
  a1[2] = 0;
  a1[3] = 0;
  *a1 = v2;
  a1[1] = 0;
}

uint64_t protocol witness for Sequence._copyToContiguousArray() in conformance ContiguousBitSet()
{
  v1 = v0[1];
  v4 = *v0;
  v5[0] = v1;
  *(v5 + 9) = *(v0 + 25);
  v2 = specialized _copySequenceToContiguousArray<A>(_:)(&v4);
  outlined destroy of ContiguousBitSet(&v4);
  return v2;
}

void *protocol witness for Sequence._copyContents(initializing:) in conformance ContiguousBitSet(void *a1, unint64_t *a2, uint64_t a3)
{
  v5 = *v3;
  *v6 = v3[1];
  *&v6[9] = *(v3 + 25);
  return specialized Sequence._copySequenceContents(initializing:)(a1, a2, a3);
}

void *_ss22_ContiguousArrayBufferV19_uninitializedCount15minimumCapacityAByxGSi_SitcfCs6UInt64V_Tt1g5Tm(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
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

  __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  v6 = swift_allocObject();
  v7 = _swift_stdlib_malloc_size(v6);
  result = v6;
  v10 = v7 - 32;
  v9 = v7 < 32;
  v11 = v7 - 25;
  if (!v9)
  {
    v11 = v10;
  }

  v6[2] = a1;
  v6[3] = 2 * (v11 >> 3);
  return result;
}

void *_ss22_ContiguousArrayBufferV19_uninitializedCount15minimumCapacityAByxGSi_SitcfCSJ_Tt1g5Tm(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
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

  __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  v6 = swift_allocObject();
  v7 = _swift_stdlib_malloc_size(v6);
  result = v6;
  v10 = v7 - 32;
  v9 = v7 < 32;
  v11 = v7 - 17;
  if (!v9)
  {
    v11 = v10;
  }

  v6[2] = a1;
  v6[3] = 2 * (v11 >> 4);
  return result;
}

void *_ss22_ContiguousArrayBufferV19_uninitializedCount15minimumCapacityAByxGSi_SitcfC19TokenGenerationCore16EarleyRecognizerC4ItemV_Tt1g5(uint64_t a1, uint64_t a2)
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

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy19TokenGenerationCore16EarleyRecognizerC4ItemVGMd, &_ss23_ContiguousArrayStorageCy19TokenGenerationCore16EarleyRecognizerC4ItemVGMR);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  result = v4;
  v7 = ((v5 - 32) * 0x6666666666666667) >> 64;
  v4[2] = a1;
  v4[3] = 2 * ((v7 >> 4) + (v7 >> 63));
  return result;
}

void *_ss22_ContiguousArrayBufferV19_uninitializedCount15minimumCapacityAByxGSi_SitcfC19TokenGenerationCore4RuleV_Tt1g5(uint64_t a1, uint64_t a2)
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

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy19TokenGenerationCore4RuleVGMd, &_ss23_ContiguousArrayStorageCy19TokenGenerationCore4RuleVGMR);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  result = v4;
  v7 = ((v5 - 32) * 0x2AAAAAAAAAAAAAABLL) >> 64;
  v4[2] = a1;
  v4[3] = 2 * ((v7 >> 2) + (v7 >> 63));
  return result;
}

size_t _ss22_ContiguousArrayBufferV19_uninitializedCount15minimumCapacityAByxGSi_SitcfC10Foundation12CharacterSetV_Tt1g5Tm(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4, uint64_t (*a5)(void))
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

  __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
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

char *specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(char *a1, int64_t a2, char a3)
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
  result = specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, *v3, &_ss23_ContiguousArrayStorageCy19TokenGenerationCore9Regex2BNFO6SymbolOGMd, &_ss23_ContiguousArrayStorageCy19TokenGenerationCore9Regex2BNFO6SymbolOGMR);
  *v3 = result;
  return result;
}

{
  result = specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, *v3, &_ss23_ContiguousArrayStorageCy19TokenGenerationCore9Regex2BNFO14TerminalSymbolOGMd, &_ss23_ContiguousArrayStorageCy19TokenGenerationCore9Regex2BNFO14TerminalSymbolOGMR);
  *v3 = result;
  return result;
}

{
  result = specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, *v3, &_ss23_ContiguousArrayStorageCy19TokenGenerationCore9Regex2BNFO6ChoiceVGMd, &_ss23_ContiguousArrayStorageCy19TokenGenerationCore9Regex2BNFO6ChoiceVGMR);
  *v3 = result;
  return result;
}

{
  result = specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, *v3, &_ss23_ContiguousArrayStorageCys6UInt64VGMd, &_ss23_ContiguousArrayStorageCys6UInt64VGMR);
  *v3 = result;
  return result;
}

{
  result = specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

{
  result = specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, *v3, &_ss23_ContiguousArrayStorageCySiGMd, &_ss23_ContiguousArrayStorageCySiGMR);
  *v3 = result;
  return result;
}

{
  result = specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, *v3, &_ss23_ContiguousArrayStorageCy19TokenGenerationCore17NonTerminalSymbolVGMd, &_ss23_ContiguousArrayStorageCy19TokenGenerationCore17NonTerminalSymbolVGMR);
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
  result = specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, *v3, &_ss23_ContiguousArrayStorageCy19TokenGenerationCore10ExpressionVGMd, &_ss23_ContiguousArrayStorageCy19TokenGenerationCore10ExpressionVGMR);
  *v3 = result;
  return result;
}

{
  result = specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, *v3, &_ss23_ContiguousArrayStorageCy19TokenGenerationCore6ChoiceVGMd, &_ss23_ContiguousArrayStorageCy19TokenGenerationCore6ChoiceVGMR);
  *v3 = result;
  return result;
}

{
  result = specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, *v3, &_ss23_ContiguousArrayStorageCySJGMd, &_ss23_ContiguousArrayStorageCySJGMR);
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

void *specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(void *a1, int64_t a2, char a3)
{
  result = specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

{
  result = specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, *v3, &_ss23_ContiguousArrayStorageCySay19TokenGenerationCore9Regex2BNFO6SymbolOGGMd, &_ss23_ContiguousArrayStorageCySay19TokenGenerationCore9Regex2BNFO6SymbolOGGMR, &_sSay19TokenGenerationCore9Regex2BNFO6SymbolOGMd, &_sSay19TokenGenerationCore9Regex2BNFO6SymbolOGMR);
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
  result = specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, *v3, &_ss23_ContiguousArrayStorageCySay19TokenGenerationCore4RuleVGGMd, &_ss23_ContiguousArrayStorageCySay19TokenGenerationCore4RuleVGGMR, &_sSay19TokenGenerationCore4RuleVGMd, &_sSay19TokenGenerationCore4RuleVGMR);
  *v3 = result;
  return result;
}

{
  result = specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

{
  result = specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, *v3, &_ss23_ContiguousArrayStorageCyShySiGGMd, &_ss23_ContiguousArrayStorageCyShySiGGMR, &_sShySiGMd, &_sShySiGMR);
  *v3 = result;
  return result;
}

size_t specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(size_t a1, int64_t a2, char a3)
{
  result = specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, *v3, &_ss23_ContiguousArrayStorageCy19TokenGenerationCore14TerminalSymbolOGMd, &_ss23_ContiguousArrayStorageCy19TokenGenerationCore14TerminalSymbolOGMR, type metadata accessor for TerminalSymbol);
  *v3 = result;
  return result;
}

{
  result = specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, *v3, &_ss23_ContiguousArrayStorageCy19TokenGenerationCore6SymbolOGMd, &_ss23_ContiguousArrayStorageCy19TokenGenerationCore6SymbolOGMR, type metadata accessor for Symbol);
  *v3 = result;
  return result;
}

{
  result = specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, *v3, &_ss23_ContiguousArrayStorageCy19TokenGenerationCore18TokenizationResultOGMd, &_ss23_ContiguousArrayStorageCy19TokenGenerationCore18TokenizationResultOGMR, type metadata accessor for TokenizationResult);
  *v3 = result;
  return result;
}

{
  result = specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, *v3, &_ss23_ContiguousArrayStorageCy15TokenGeneration6PromptV4TurnVGMd, &_ss23_ContiguousArrayStorageCy15TokenGeneration6PromptV4TurnVGMR, type metadata accessor for Prompt.Turn);
  *v3 = result;
  return result;
}

{
  result = specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, *v3, &_ss23_ContiguousArrayStorageCy15TokenGeneration6PromptV10AttachmentVGMd, &_ss23_ContiguousArrayStorageCy15TokenGeneration6PromptV10AttachmentVGMR, type metadata accessor for Prompt.Attachment);
  *v3 = result;
  return result;
}

{
  result = specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, *v3, &_ss23_ContiguousArrayStorageCy15TokenGeneration6PromptV9DelimiterVGMd, &_ss23_ContiguousArrayStorageCy15TokenGeneration6PromptV9DelimiterVGMR, type metadata accessor for Prompt.Delimiter);
  *v3 = result;
  return result;
}

{
  result = specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, *v3, &_ss23_ContiguousArrayStorageCy19TokenGenerationCore15TokenizerRunnerC13TokenizedItemOGMd, &_ss23_ContiguousArrayStorageCy19TokenGenerationCore15TokenizerRunnerC13TokenizedItemOGMR, type metadata accessor for TokenizerRunner.TokenizedItem);
  *v3 = result;
  return result;
}

{
  result = specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, *v3, &_ss23_ContiguousArrayStorageCy9PromptKit0D0V8ToolCallVGMd, &_ss23_ContiguousArrayStorageCy9PromptKit0D0V8ToolCallVGMR, MEMORY[0x1E69C62C0]);
  *v3 = result;
  return result;
}

{
  result = specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, *v3, &_ss23_ContiguousArrayStorageCy9PromptKit011ChatMessageD0VGMd, &_ss23_ContiguousArrayStorageCy9PromptKit011ChatMessageD0VGMR, MEMORY[0x1E69C61C0]);
  *v3 = result;
  return result;
}

{
  result = specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, *v3, &_ss23_ContiguousArrayStorageCy9PromptKit0D0V9ComponentVGMd, &_ss23_ContiguousArrayStorageCy9PromptKit0D0V9ComponentVGMR, MEMORY[0x1E69C6360]);
  *v3 = result;
  return result;
}

char *specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(char *result, int64_t a2, char a3, char *a4)
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
    v10 = MEMORY[0x1E69E7CC0];
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy19TokenGenerationCore4RuleVGMd, &_ss23_ContiguousArrayStorageCy19TokenGenerationCore4RuleVGMR);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 24);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[24 * v8])
    {
      memmove(v12, v13, 24 * v8);
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
    v10 = MEMORY[0x1E69E7CC0];
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy19TokenGenerationCore16EarleyRecognizerC0H14TerminalSymbolOGMd, &_ss23_ContiguousArrayStorageCy19TokenGenerationCore16EarleyRecognizerC0H14TerminalSymbolOGMR);
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
    v10 = MEMORY[0x1E69E7CC0];
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy19TokenGenerationCore16EarleyRecognizerC4ItemVGMd, &_ss23_ContiguousArrayStorageCy19TokenGenerationCore16EarleyRecognizerC4ItemVGMR);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 40);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
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
    v10 = MEMORY[0x1E69E7CC0];
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys7UnicodeO6ScalarVGMd, &_ss23_ContiguousArrayStorageCys7UnicodeO6ScalarVGMR);
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
    v10 = MEMORY[0x1E69E7CC0];
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySi_SitGMd, &_ss23_ContiguousArrayStorageCySi_SitGMR);
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
    v10 = MEMORY[0x1E69E7CC0];
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
    v10 = MEMORY[0x1E69E7CC0];
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS6symbol_Si8positionSi8prioritytGMd, &_ss23_ContiguousArrayStorageCySS6symbol_Si8positionSi8prioritytGMR);
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
    v10 = MEMORY[0x1E69E7CC0];
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSS6symbol_Si8positionSi8prioritytMd, &_sSS6symbol_Si8positionSi8prioritytMR);
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySi6number_Ss4linetGMd, &_ss23_ContiguousArrayStorageCySi6number_Ss4linetGMR);
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSi6number_Ss4linetMd, &_sSi6number_Ss4linetMR);
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySi6offset_19TokenGenerationCore16EarleyRecognizerC0I4RuleV7elementtGMd, &_ss23_ContiguousArrayStorageCySi6offset_19TokenGenerationCore16EarleyRecognizerC0I4RuleV7elementtGMR);
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
    v10 = MEMORY[0x1E69E7CC0];
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSi6offset_19TokenGenerationCore16EarleyRecognizerC0F4RuleV7elementtMd, &_sSi6offset_19TokenGenerationCore16EarleyRecognizerC0F4RuleV7elementtMR);
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy19TokenGenerationCore17NonTerminalSymbolV_SitGMd, &_ss23_ContiguousArrayStorageCy19TokenGenerationCore17NonTerminalSymbolV_SitGMR);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v10[2] = v8;
    v10[3] = 2 * ((v11 - 32) / 24);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s19TokenGenerationCore17NonTerminalSymbolV_SitMd, &_s19TokenGenerationCore17NonTerminalSymbolV_SitMR);
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySi7tokenID_SS0D4TexttGMd, &_ss23_ContiguousArrayStorageCySi7tokenID_SS0D4TexttGMR);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v10[2] = v8;
    v10[3] = 2 * ((v11 - 32) / 24);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSi7tokenID_SS0A4TexttMd, &_sSi7tokenID_SS0A4TexttMR);
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(char *result, int64_t a2, char a3, char *a4, uint64_t *a5, uint64_t *a6)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
    v12 = swift_allocObject();
    v13 = _swift_stdlib_malloc_size(v12);
    *(v12 + 2) = v10;
    *(v12 + 3) = 2 * ((v13 - 32) / 24);
  }

  else
  {
    v12 = MEMORY[0x1E69E7CC0];
  }

  v14 = v12 + 32;
  v15 = a4 + 32;
  if (v7)
  {
    if (v12 != a4 || v14 >= &v15[24 * v10])
    {
      memmove(v14, v15, 24 * v10);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v12;
}

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
    __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
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
    __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
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
    swift_arrayInitWithCopy();
  }

  return v12;
}

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
    __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
    v12 = swift_allocObject();
    v13 = _swift_stdlib_malloc_size(v12);
    v14 = v13 - 32;
    if (v13 < 32)
    {
      v14 = v13 - 17;
    }

    *(v12 + 2) = v10;
    *(v12 + 3) = 2 * (v14 >> 4);
  }

  else
  {
    v12 = MEMORY[0x1E69E7CC0];
  }

  v15 = v12 + 32;
  v16 = a4 + 32;
  if (v7)
  {
    if (v12 != a4 || v15 >= &v16[16 * v10])
    {
      memmove(v15, v16, 16 * v10);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v12;
}

void *specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(void *result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t *a6, uint64_t *a7, uint64_t *a8)
{
  v11 = result;
  if (a3)
  {
    v12 = a4[3];
    v13 = v12 >> 1;
    if ((v12 >> 1) < a2)
    {
      if (v13 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v13 = v12 & 0xFFFFFFFFFFFFFFFELL;
      if ((v12 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v13 = a2;
      }
    }
  }

  else
  {
    v13 = a2;
  }

  v14 = a4[2];
  if (v13 <= v14)
  {
    v15 = a4[2];
  }

  else
  {
    v15 = v13;
  }

  if (v15)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
    v16 = swift_allocObject();
    v17 = _swift_stdlib_malloc_size(v16);
    v18 = v17 - 32;
    if (v17 < 32)
    {
      v18 = v17 - 25;
    }

    v16[2] = v14;
    v16[3] = 2 * (v18 >> 3);
  }

  else
  {
    v16 = MEMORY[0x1E69E7CC0];
  }

  if (v11)
  {
    if (v16 != a4 || v16 + 4 >= &a4[v14 + 4])
    {
      memmove(v16 + 4, a4 + 4, 8 * v14);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a7, a8);
    swift_arrayInitWithCopy();
  }

  return v16;
}

size_t specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(size_t result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t *a6, uint64_t (*a7)(void))
{
  v9 = result;
  if (a3)
  {
    v10 = a4[3];
    v11 = v10 >> 1;
    if ((v10 >> 1) < a2)
    {
      if (v11 + 0x4000000000000000 < 0)
      {
LABEL_30:
        __break(1u);
        return result;
      }

      v11 = v10 & 0xFFFFFFFFFFFFFFFELL;
      if ((v10 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v11 = a2;
      }
    }
  }

  else
  {
    v11 = a2;
  }

  v12 = a4[2];
  if (v11 <= v12)
  {
    v13 = a4[2];
  }

  else
  {
    v13 = v11;
  }

  if (!v13)
  {
    v17 = MEMORY[0x1E69E7CC0];
    goto LABEL_19;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
  v14 = *(a7(0) - 8);
  v15 = *(v14 + 72);
  v16 = (*(v14 + 80) + 32) & ~*(v14 + 80);
  v17 = swift_allocObject();
  result = _swift_stdlib_malloc_size(v17);
  if (!v15)
  {
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if (result - v16 == 0x8000000000000000 && v15 == -1)
  {
    goto LABEL_29;
  }

  v17[2] = v12;
  v17[3] = 2 * ((result - v16) / v15);
LABEL_19:
  v19 = *(a7(0) - 8);
  if (v9)
  {
    if (v17 < a4 || (v20 = (*(v19 + 80) + 32) & ~*(v19 + 80), v17 + v20 >= a4 + v20 + *(v19 + 72) * v12))
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (v17 != a4)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    a4[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v17;
}

char *specialized _ArrayBuffer._consumeAndCreateNew()(uint64_t a1)
{
  return specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(a1 + 16), 0, a1);
}

{
  return specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(a1 + 16), 0, a1);
}

{
  return specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(a1 + 16), 0, a1);
}

{
  return specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(a1 + 16), 0, a1);
}

{
  return specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(a1 + 16), 0, a1);
}

{
  return specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(a1 + 16), 0, a1);
}

{
  return specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(a1 + 16), 0, a1);
}

{
  return specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(a1 + 16), 0, a1);
}

{
  return specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(a1 + 16), 0, a1);
}

{
  return specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(a1 + 16), 0, a1);
}

size_t specialized _ArrayBuffer._consumeAndCreateNew()(void *a1)
{
  return specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, a1[2], 0, a1);
}

{
  return specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, a1[2], 0, a1);
}

{
  return specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, a1[2], 0, a1);
}

{
  return specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, a1[2], 0, a1);
}

{
  return specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, a1[2], 0, a1);
}

{
  return specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, a1[2], 0, a1);
}

{
  return specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, a1[2], 0, a1);
}

{
  return specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, a1[2], 0, a1);
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

{
  return specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, a1[2], 0, a1);
}

{
  return specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, a1[2], 0, a1);
}

char *specialized _ContiguousArrayBuffer._consumeAndCreateNew()(uint64_t a1)
{
  return specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(a1 + 16), 0, a1, &_ss23_ContiguousArrayStorageCys6UInt64VGMd, &_ss23_ContiguousArrayStorageCys6UInt64VGMR);
}

{
  return specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(a1 + 16), 0, a1, &_ss23_ContiguousArrayStorageCySiGMd, &_ss23_ContiguousArrayStorageCySiGMR);
}

{
  return specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(a1 + 16), 0, a1);
}

{
  return specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(a1 + 16), 0, a1);
}

{
  return specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(a1 + 16), 0, a1, &_ss23_ContiguousArrayStorageCySJGMd, &_ss23_ContiguousArrayStorageCySJGMR);
}

{
  return specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(a1 + 16), 0, a1);
}

uint64_t specialized _copySequenceToContiguousArray<A>(_:)(uint64_t *a1)
{
  v1 = *a1;
  result = outlined init with copy of ContiguousBitSet(a1, &v31);
  v3 = 0;
  v4 = 0;
  v5 = MEMORY[0x1E69E7CC0];
  v6 = (MEMORY[0x1E69E7CC0] + 32);
LABEL_3:
  v7 = *(v1 + 16);
  if (v4 > v7)
  {
    v7 = v4;
  }

  v8 = 0x200000000000000;
  if (v4 > 0x200000000000000)
  {
    v8 = v4;
  }

  v9 = (v4 << 6) - 64;
  v10 = v4;
  while (1)
  {
    if (v7 == v10)
    {

      v28 = v5[3];
      if (v28 >= 2)
      {
        v29 = v28 >> 1;
        v27 = __OFSUB__(v29, v3);
        v30 = v29 - v3;
        if (v27)
        {
          goto LABEL_38;
        }

        v5[2] = v30;
      }

      return v5;
    }

    if ((v4 & 0x8000000000000000) != 0)
    {
      break;
    }

    if (v8 == v10)
    {
      goto LABEL_34;
    }

    v11 = *(v1 + 8 * v10++ + 32);
    v9 += 64;
    if (v11)
    {
      while (1)
      {
        v12 = __clz(__rbit64(v11));
        v13 = v9 + v12;
        if (__OFADD__(v9, v12))
        {
          goto LABEL_35;
        }

        if (!v3)
        {
          v14 = v5[3];
          if (((v14 >> 1) + 0x4000000000000000) < 0)
          {
            goto LABEL_37;
          }

          v15 = v14 & 0xFFFFFFFFFFFFFFFELL;
          if (v15 <= 1)
          {
            v16 = 1;
          }

          else
          {
            v16 = v15;
          }

          v17 = v5;
          __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySiGMd, &_ss23_ContiguousArrayStorageCySiGMR);
          v5 = swift_allocObject();
          v18 = _swift_stdlib_malloc_size(v5);
          v20 = v18 - 32;
          v19 = v18 < 32;
          v21 = v18 - 25;
          v22 = v17;
          if (v19)
          {
            v20 = v21;
          }

          v23 = v20 >> 3;
          v5[2] = v16;
          v5[3] = 2 * (v20 >> 3);
          v24 = (v5 + 4);
          v25 = v17[3] >> 1;
          if (v17[2])
          {
            v26 = v17 + 4;
            if (v5 != v17 || v24 >= v26 + 8 * v25)
            {
              memmove(v5 + 4, v26, 8 * v25);
              v22 = v17;
            }

            v22[2] = 0;
          }

          v6 = (v24 + 8 * v25);
          v3 = (v23 & 0x7FFFFFFFFFFFFFFFLL) - v25;
        }

        v27 = __OFSUB__(v3--, 1);
        if (v27)
        {
          goto LABEL_36;
        }

        v11 &= v11 - 1;
        *v6++ = v13;
        v4 = v10;
        if (!v11)
        {
          goto LABEL_3;
        }
      }
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
  return result;
}

uint64_t specialized static ContiguousBitSet.== infix(_:_:)(uint64_t result, uint64_t *a2)
{
  v2 = *(result + 8);
  if (v2 != a2[1])
  {
    return 0;
  }

  if (!v2)
  {
    return 1;
  }

  if (*(result + 24))
  {
LABEL_38:
    __break(1u);
    goto LABEL_39;
  }

  if (a2[3])
  {
LABEL_39:
    __break(1u);
    goto LABEL_40;
  }

  v3 = *(result + 16);
  if (v3 != a2[2])
  {
    return 0;
  }

  if (*(result + 40))
  {
LABEL_40:
    __break(1u);
    goto LABEL_41;
  }

  if (a2[5])
  {
LABEL_41:
    __break(1u);
    return result;
  }

  v4 = *(result + 32);
  if (v4 != a2[4])
  {
    return 0;
  }

  v5 = v3 + 63;
  if (v3 >= 0)
  {
    v5 = *(result + 16);
  }

  v6 = v5 >> 6;
  v7 = v4 + 63;
  if (v4 >= 0)
  {
    v7 = *(result + 32);
  }

  v8 = v7 >> 6;
  if (v7 >> 6 < v6)
  {
    __break(1u);
    goto LABEL_33;
  }

  if (v3 < -63)
  {
LABEL_33:
    __break(1u);
    goto LABEL_34;
  }

  v9 = *result;
  if (*(*result + 16) <= v8)
  {
LABEL_34:
    __break(1u);
    goto LABEL_35;
  }

  if (v4 < -127)
  {
LABEL_35:
    __break(1u);
    goto LABEL_36;
  }

  v10 = *a2;
  if (*(*a2 + 16) <= v8)
  {
LABEL_36:
    __break(1u);
    goto LABEL_37;
  }

  v11 = (v8 + 1) & 0x7FFFFFFFFFFFFFFFLL;
  if (v11 == v6 || v9 == v10)
  {
    return 1;
  }

  if (v6 >= v11)
  {
LABEL_37:
    __break(1u);
    goto LABEL_38;
  }

  v12 = v9 + 32;
  v13 = v10 + 32;
  v14 = v6;
  while (1)
  {
    v15 = *(v12 + 8 * v14);
    v16 = *(v13 + 8 * v14);
    result = v15 == v16;
    if (v15 != v16 || v11 - 1 == v14)
    {
      break;
    }

    if (++v14 < v6 || v14 >= v11)
    {
      __break(1u);
      return 0;
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

uint64_t __swift_mutable_project_boxed_opaque_existential_1(uint64_t a1, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    swift_makeBoxUnique();
    return v2;
  }

  return result;
}

unint64_t _sSa28_unsafeUninitializedCapacity16initializingWithSayxGSi_ySryxGz_SiztKXEtKcfCSb_Tt1g5090_s19TokenGenerationCore16ContiguousBitSetV15makeBooleanMask5counts0D5ArrayVySbGSiSg_tFySryS12Gz_SiztXEfU_0gH4Core0jkL0VTf1nc_nTf4ng_n(unint64_t result, uint64_t a2)
{
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  v4 = result;
  if (result)
  {
    v5 = static Array._allocateBufferUninitialized(minimumCapacity:)();
    *(v5 + 16) = v4;
  }

  else
  {
    v5 = MEMORY[0x1E69E7CC0];
  }

  v7 = 0;
  v6[0] = v5 + 32;
  v6[1] = v4;
  result = closure #1 in ContiguousBitSet.makeBooleanMask(count:)(v6, &v7, a2);
  if (v2)
  {
    if (v7 <= v4)
    {
      *(v5 + 16) = v7;

      return v5;
    }

    goto LABEL_12;
  }

  if (v7 <= v4)
  {
    *(v5 + 16) = v7;
    return v5;
  }

LABEL_13:
  __break(1u);
  return result;
}

char *specialized _ArrayBufferProtocol.replaceSubrange<A>(_:with:elementsOf:)(char *result, uint64_t a2, uint64_t a3)
{
  v4 = a2 - result;
  if (__OFSUB__(a2, result))
  {
    __break(1u);
    goto LABEL_16;
  }

  v5 = a3 - v4;
  if (__OFSUB__(a3, v4))
  {
LABEL_16:
    __break(1u);
LABEL_17:
    __break(1u);
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  if (!v5)
  {
    goto LABEL_13;
  }

  v6 = *v3;
  v7 = *(v6 + 16);
  v8 = __OFSUB__(v7, a2);
  v9 = v7 - a2;
  if (v8)
  {
    goto LABEL_17;
  }

  result += v6 + a3 + 32;
  v10 = (v6 + 32 + a2);
  if (result != v10 || result >= &v10[v9])
  {
    v12 = a3;
    result = memmove(result, v10, v9);
    a3 = v12;
  }

  v13 = *(v6 + 16);
  v8 = __OFADD__(v13, v5);
  v14 = v13 + v5;
  if (v8)
  {
    goto LABEL_18;
  }

  *(v6 + 16) = v14;
LABEL_13:
  if (a3 > 0)
  {
LABEL_19:
    __break(1u);
  }

  return result;
}

char *specialized ContiguousArray.replaceSubrange<A>(_:with:)(char *result, uint64_t a2)
{
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_19;
  }

  v4 = *v2;
  v5 = *(*v2 + 16);
  if (v5 < a2)
  {
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  v6 = result;
  if (__OFSUB__(a2, result))
  {
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  v7 = &result[-a2];
  if (__OFSUB__(0, a2 - result))
  {
LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

  v8 = &v7[v5];
  if (__OFADD__(v5, v7))
  {
LABEL_22:
    __break(1u);
    return result;
  }

  v9 = *v2;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *v2 = v4;
  if (!isUniquelyReferenced_nonNull_native)
  {
    if (v5 <= v8)
    {
      v11 = v8;
    }

    else
    {
      v11 = v5;
    }

    goto LABEL_14;
  }

  if (v8 > *(v4 + 24) >> 1)
  {
    if (v5 <= v8)
    {
      v11 = v8;
    }

    else
    {
      v11 = v5;
    }

LABEL_14:
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(isUniquelyReferenced_nonNull_native, v11, 1);
  }

  return specialized _ArrayBufferProtocol.replaceSubrange<A>(_:with:elementsOf:)(v6, a2, 0);
}

unint64_t specialized ContiguousArray.replaceSubrange<A>(_:with:)(unint64_t result, uint64_t a2)
{
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_17;
  }

  v4 = *v2;
  v5 = *(*v2 + 16);
  if (v5 < a2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v6 = result;
  if (__OFSUB__(a2, result))
  {
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  v7 = result - a2;
  if (__OFSUB__(0, a2 - result))
  {
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  v8 = v5 + v7;
  if (!__OFADD__(v5, v7))
  {
    v9 = *v2;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *v2 = v4;
    if (isUniquelyReferenced_nonNull_native)
    {
      if (v8 <= *(v4 + 24) >> 1)
      {
        return specialized _ArrayBufferProtocol.replaceSubrange<A>(_:with:elementsOf:)(v6, a2, 0);
      }

      if (v5 <= v8)
      {
        v11 = v8;
      }

      else
      {
        v11 = v5;
      }
    }

    else if (v5 <= v8)
    {
      v11 = v8;
    }

    else
    {
      v11 = v5;
    }

    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(isUniquelyReferenced_nonNull_native, v11, 1);
    return specialized _ArrayBufferProtocol.replaceSubrange<A>(_:with:elementsOf:)(v6, a2, 0);
  }

LABEL_20:
  __break(1u);
  return result;
}

unint64_t lazy protocol witness table accessor for type ContiguousBitSet.Iterator and conformance ContiguousBitSet.Iterator()
{
  result = lazy protocol witness table cache variable for type ContiguousBitSet.Iterator and conformance ContiguousBitSet.Iterator;
  if (!lazy protocol witness table cache variable for type ContiguousBitSet.Iterator and conformance ContiguousBitSet.Iterator)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ContiguousBitSet.Iterator and conformance ContiguousBitSet.Iterator);
  }

  return result;
}

__n128 __swift_memcpy41_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 25) = *(a2 + 25);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t getEnumTagSinglePayload for ContiguousBitSet(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 41))
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

uint64_t storeEnumTagSinglePayload for ContiguousBitSet(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 40) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 41) = 1;
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

    *(result + 41) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for ContiguousBitSet.Iterator(uint64_t *a1, int a2)
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

uint64_t storeEnumTagSinglePayload for ContiguousBitSet.Iterator(uint64_t result, int a2, int a3)
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

unint64_t specialized _ArrayBufferProtocol.replaceSubrange<A>(_:with:elementsOf:)(unint64_t result, uint64_t a2, uint64_t a3)
{
  v4 = a2 - result;
  if (__OFSUB__(a2, result))
  {
    __break(1u);
    goto LABEL_16;
  }

  v5 = a3 - v4;
  if (__OFSUB__(a3, v4))
  {
LABEL_16:
    __break(1u);
LABEL_17:
    __break(1u);
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  if (!v5)
  {
    goto LABEL_13;
  }

  v6 = *v3;
  v7 = *(v6 + 16);
  v8 = __OFSUB__(v7, a2);
  v9 = v7 - a2;
  if (v8)
  {
    goto LABEL_17;
  }

  result = v6 + 32 + 8 * result + 8 * a3;
  v10 = (v6 + 32 + 8 * a2);
  if (result != v10 || result >= v10 + 8 * v9)
  {
    v12 = a3;
    result = memmove(result, v10, 8 * v9);
    a3 = v12;
  }

  v13 = *(v6 + 16);
  v8 = __OFADD__(v13, v5);
  v14 = v13 + v5;
  if (v8)
  {
    goto LABEL_18;
  }

  *(v6 + 16) = v14;
LABEL_13:
  if (a3 > 0)
  {
LABEL_19:
    __break(1u);
  }

  return result;
}

{
  v4 = a2 - result;
  if (__OFSUB__(a2, result))
  {
    __break(1u);
    goto LABEL_16;
  }

  v5 = a3 - v4;
  if (__OFSUB__(a3, v4))
  {
LABEL_16:
    __break(1u);
LABEL_17:
    __break(1u);
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  if (!v5)
  {
    goto LABEL_13;
  }

  v6 = *v3;
  v7 = *(v6 + 16);
  v8 = __OFSUB__(v7, a2);
  v9 = v7 - a2;
  if (v8)
  {
    goto LABEL_17;
  }

  result = v6 + 32 + 40 * result + 40 * a3;
  v10 = (v6 + 32 + 40 * a2);
  v11 = 40 * v9;
  if (result != v10 || result >= v10 + v11)
  {
    v13 = a3;
    result = memmove(result, v10, v11);
    a3 = v13;
  }

  v14 = *(v6 + 16);
  v8 = __OFADD__(v14, v5);
  v15 = v14 + v5;
  if (v8)
  {
    goto LABEL_18;
  }

  *(v6 + 16) = v15;
LABEL_13:
  if (a3 > 0)
  {
LABEL_19:
    __break(1u);
  }

  return result;
}

unint64_t specialized Array.replaceSubrange<A>(_:with:)(unint64_t result, uint64_t a2)
{
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_14;
  }

  v4 = *v2;
  v5 = *(*v2 + 2);
  if (v5 < a2)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  v6 = result;
  if (__OFSUB__(a2, result))
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v7 = result - a2;
  if (__OFSUB__(0, a2 - result))
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v8 = v5 + v7;
  if (__OFADD__(v5, v7))
  {
LABEL_17:
    __break(1u);
    return result;
  }

  v9 = *v2;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *v2 = v4;
  if (!isUniquelyReferenced_nonNull_native || v8 > *(v4 + 3) >> 1)
  {
    if (v5 <= v8)
    {
      v11 = v8;
    }

    else
    {
      v11 = v5;
    }

    v4 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(isUniquelyReferenced_nonNull_native, v11, 1, v4);
    *v2 = v4;
  }

  result = specialized _ArrayBufferProtocol.replaceSubrange<A>(_:with:elementsOf:)(v6, a2, 0);
  *v2 = v4;
  return result;
}

{
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_14;
  }

  v4 = *v2;
  v5 = *(*v2 + 2);
  if (v5 < a2)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  v6 = result;
  if (__OFSUB__(a2, result))
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v7 = result - a2;
  if (__OFSUB__(0, a2 - result))
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v8 = v5 + v7;
  if (__OFADD__(v5, v7))
  {
LABEL_17:
    __break(1u);
    return result;
  }

  v9 = *v2;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *v2 = v4;
  if (!isUniquelyReferenced_nonNull_native || v8 > *(v4 + 3) >> 1)
  {
    if (v5 <= v8)
    {
      v11 = v8;
    }

    else
    {
      v11 = v5;
    }

    v4 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(isUniquelyReferenced_nonNull_native, v11, 1, v4);
    *v2 = v4;
  }

  result = specialized _ArrayBufferProtocol.replaceSubrange<A>(_:with:elementsOf:)(v6, a2, 0);
  *v2 = v4;
  return result;
}

unint64_t specialized BidirectionalCollection.suffix(_:)(unint64_t result, uint64_t a2, unint64_t a3)
{
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
LABEL_12:
    __break(1u);
    return result;
  }

  if ((a3 & 0x2000000000000000) != 0)
  {
    v3 = HIBYTE(a3) & 0xF;
  }

  else
  {
    v3 = a2 & 0xFFFFFFFFFFFFLL;
  }

  result = String.index(_:offsetBy:limitedBy:)();
  if (v4)
  {
    result = 15;
  }

  if (4 * v3 < result >> 14)
  {
    goto LABEL_12;
  }

  return String.subscript.getter();
}

unint64_t specialized _ArrayBufferProtocol.replaceSubrange<A>(_:with:elementsOf:)(unint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = a2 - result;
  if (__OFSUB__(a2, result))
  {
    __break(1u);
    goto LABEL_17;
  }

  v11 = *v5;
  v12 = (v11 + 32 + 16 * result);
  result = swift_arrayDestroy();
  v13 = __OFSUB__(a3, v6);
  v14 = a3 - v6;
  if (v13)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  if (v14)
  {
    v15 = *(v11 + 16);
    v13 = __OFSUB__(v15, a2);
    v16 = v15 - a2;
    if (!v13)
    {
      result = &v12[2 * a3];
      v17 = (v11 + 32 + 16 * a2);
      if (result != v17 || result >= v17 + 16 * v16)
      {
        result = memmove(result, v17, 16 * v16);
      }

      v19 = *(v11 + 16);
      v13 = __OFADD__(v19, v14);
      v20 = v19 + v14;
      if (!v13)
      {
        *(v11 + 16) = v20;
        goto LABEL_13;
      }

LABEL_19:
      __break(1u);
LABEL_20:
      __break(1u);
      return result;
    }

LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

LABEL_13:
  if (a3 > 0)
  {
    *v12 = a4;
    v12[1] = a5;

    if (a3 != 1)
    {
      goto LABEL_20;
    }
  }

  return result;
}

uint64_t specialized Sequence<>.contains(_:)(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  if (v2)
  {
    v3 = (a2 + 64);
    v4 = *(a1 + 32);
    do
    {
      if (*(v3 - 4) == *a1 && *(v3 - 3) == *(a1 + 8) && *(v3 - 2) == *(a1 + 16))
      {
        if (*v3)
        {
          if (*(a1 + 32))
          {
            return 1;
          }
        }

        else
        {
          if (*(v3 - 1) == *(a1 + 24))
          {
            v5 = *(a1 + 32);
          }

          else
          {
            v5 = 1;
          }

          if (v5 != 1)
          {
            return 1;
          }
        }
      }

      v3 += 40;
      --v2;
    }

    while (v2);
  }

  return 0;
}

uint64_t specialized EnumeratedSequence.Iterator.next()()
{
  v1 = v0[2];
  v2 = v0[3];
  if (v1 >= v2)
  {
    v8 = 0;
    goto LABEL_12;
  }

  v3 = v0[1];
  if ((v3 & 0x1000000000000000) != 0)
  {
    _StringGuts.foreignErrorCorrectedScalar(startingAt:)();
    goto LABEL_10;
  }

  if ((v3 & 0x2000000000000000) != 0)
  {
    v14[0] = *v0;
    v14[1] = v3 & 0xFFFFFFFFFFFFFFLL;
    v5 = v14 + v1;
    goto LABEL_8;
  }

  if ((*v0 & 0x1000000000000000) == 0)
  {
    goto LABEL_22;
  }

  for (i = (v3 & 0xFFFFFFFFFFFFFFFLL) + 32; ; i = _StringObject.sharedUTF8.getter())
  {
    v5 = (i + v1);
LABEL_8:
    v6 = *v5;
    if ((*v5 & 0x80000000) == 0)
    {
LABEL_9:
      v7 = 1;
      goto LABEL_10;
    }

    v10 = (__clz(v6 ^ 0xFF) - 24);
    if (v10 > 2)
    {
      if (v10 == 3)
      {
        v12 = ((v6 & 0xF) << 12) | ((v5[1] & 0x3F) << 6) | v5[2] & 0x3F;
        v7 = 3;
      }

      else
      {
        v13 = ((v6 & 0xF) << 18) | ((v5[1] & 0x3F) << 12) | ((v5[2] & 0x3F) << 6) | v5[3] & 0x3F;
        v7 = 4;
      }
    }

    else
    {
      if (v10 == 1)
      {
        goto LABEL_9;
      }

      v7 = 2;
      v11 = v5[1] & 0x3F | ((v6 & 0x1F) << 6);
    }

LABEL_10:
    v0[2] = v7 + v1;
    v8 = v0[4];
    if (!__OFADD__(v8, 1))
    {
      break;
    }

    __break(1u);
LABEL_22:
    ;
  }

  v0[4] = v8 + 1;
LABEL_12:
  LOBYTE(v14[0]) = v1 >= v2;
  return v8;
}

void *specialized ContiguousArray.reserveCapacity(_:)(int64_t a1)
{
  v3 = *v1;
  result = swift_isUniquelyReferenced_nonNull_native();
  *v1 = v3;
  if (!result || a1 > *(v3 + 24) >> 1)
  {
    if (*(v3 + 16) <= a1)
    {
      v5 = a1;
    }

    else
    {
      v5 = *(v3 + 16);
    }

    return specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(result, v5, 0);
  }

  return result;
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance EarleyRecognizer.RecognizerSymbol()
{
  v1 = *v0;
  v2 = *(v0 + 8);
  Hasher.init(_seed:)();
  if (!v2)
  {
    v4 = 1;
    goto LABEL_5;
  }

  v3 = 0;
  if (v2 == 1)
  {
    v4 = 2;
LABEL_5:
    MEMORY[0x1AC57CB80](v4);
    v3 = v1;
  }

  MEMORY[0x1AC57CB80](v3);
  return Hasher._finalize()();
}

uint64_t protocol witness for Hashable.hash(into:) in conformance EarleyRecognizer.RecognizerSymbol()
{
  v1 = *v0;
  if (*(v0 + 8))
  {
    if (*(v0 + 8) != 1)
    {
      v1 = 0;
      return MEMORY[0x1AC57CB80](v1);
    }

    v2 = 2;
  }

  else
  {
    v2 = 1;
  }

  MEMORY[0x1AC57CB80](v2);
  return MEMORY[0x1AC57CB80](v1);
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance EarleyRecognizer.RecognizerSymbol()
{
  v1 = *v0;
  v2 = *(v0 + 8);
  Hasher.init(_seed:)();
  if (v2)
  {
    if (v2 != 1)
    {
      v1 = 0;
      goto LABEL_7;
    }

    v3 = 2;
  }

  else
  {
    v3 = 1;
  }

  MEMORY[0x1AC57CB80](v3);
LABEL_7:
  MEMORY[0x1AC57CB80](v1);
  return Hasher._finalize()();
}

BOOL protocol witness for static Equatable.== infix(_:_:) in conformance EarleyRecognizer.RecognizerSymbol(uint64_t a1, uint64_t *a2)
{
  v2 = *a2;
  v3 = *(a2 + 8);
  if (!*(a1 + 8))
  {
    if (*(a2 + 8))
    {
      return 0;
    }

    return *a1 == v2;
  }

  if (*(a1 + 8) == 1)
  {
    if (v3 != 1)
    {
      return 0;
    }

    return *a1 == v2;
  }

  return v3 == 2 && v2 == 0;
}

void *EarleyRecognizer.RecognizerGrammar.init(grammar:vocabularyManager:)(uint64_t *a1, void *a2)
{
  v113 = type metadata accessor for CharacterSet();
  v105 = *(v113 - 8);
  v4 = *(v105 + 64);
  MEMORY[0x1EEE9AC00](v113);
  v112 = &v104 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v118 = type metadata accessor for TerminalSymbol(0);
  v104 = *(v118 - 8);
  v6 = *(v104 + 64);
  v7 = MEMORY[0x1EEE9AC00](v118);
  v117 = &v104 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v104 - v9;
  v12 = *a1;
  v11 = a1[1];
  v14 = a1[2];
  v13 = a1[3];
  v15 = a1[4];
  v16 = a1[5];
  v125[0] = *a1;
  v125[1] = v11;
  v125[2] = v14;
  v125[3] = v13;
  v115 = v13;
  v111 = v15;
  v125[4] = v15;
  v125[5] = v16;
  v108 = v16;
  v107 = a2;
  v106 = flattenGrammar(grammar:vocabularyManager:)(v125, a2);
  v122 = v17;
  v109 = v18;
  v20 = v19;
  v21 = *(v19 + 16);
  v22 = MEMORY[0x1E69E7CC0];
  v121 = _sSa9repeating5countSayxGx_SitcfCSaySiG_Tt1g5Tf4gn_n(MEMORY[0x1E69E7CC0], v21);
  v23 = _sSa9repeating5countSayxGx_SitcfCSaySiG_Tt1g5Tf4gn_n(v22, v21);
  v116 = v14;
  if (v21)
  {
    v24 = static Array._allocateBufferUninitialized(minimumCapacity:)();
    *(v24 + 16) = v21;
    v120 = v24;
    bzero((v24 + 32), v21);
  }

  else
  {
    v120 = v22;
  }

  v123 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v21, 0, v22);
  v25 = *(v20 + 16);

  v114 = v10;
  v119 = v20;
  if (v25)
  {
    v26 = 0;
    v27 = v20 + 32;
    v124 = MEMORY[0x1E69E7CC0];
    while (2)
    {
      v28 = v26;
LABEL_7:
      if (v28 >= v25)
      {
        goto LABEL_97;
      }

      v29 = (v27 + 16 * v28);
      v31 = *v29;
      v30 = v29[1];
      v26 = v28 + 1;
      v32 = *(v12 + 16) + 1;
      v33 = (v12 + 40);
      do
      {
        if (!--v32)
        {
          v25 = *(v119 + 16);
          ++v28;
          if (v26 != v25)
          {
            goto LABEL_7;
          }

          goto LABEL_25;
        }

        if (*(v33 - 1) == v31 && *v33 == v30)
        {
          break;
        }

        v33 += 2;
      }

      while ((_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v124 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v124 + 2) + 1, 1, v124);
      }

      v35 = v119;
      v37 = *(v124 + 2);
      v36 = *(v124 + 3);
      if (v37 >= v36 >> 1)
      {
        v124 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v36 > 1), v37 + 1, 1, v124);
      }

      v38 = v124;
      *(v124 + 2) = v37 + 1;
      *&v38[8 * v37 + 32] = v28;
      v25 = *(v35 + 16);
      if (v26 != v25)
      {
        continue;
      }

      break;
    }
  }

  else
  {
    v124 = v22;
  }

LABEL_25:

  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    goto LABEL_108;
  }

  while (1)
  {
    v39 = v121;
    v40 = v122;
    v116 = *(v122 + 16);
    if (!v116)
    {
      break;
    }

    v41 = 0;
    v115 = v122 + 32;
    v111 = v120 + 32;
    v42 = v23 + 4;
    while (1)
    {
      if (v41 >= *(v40 + 16))
      {
        goto LABEL_103;
      }

      v43 = (v115 + 24 * v41);
      v44 = *v43;
      v45 = v43[1];

      if (swift_isUniquelyReferenced_nonNull_native())
      {
        if ((v44 & 0x8000000000000000) != 0)
        {
          goto LABEL_104;
        }
      }

      else
      {
        v39 = specialized _ArrayBuffer._consumeAndCreateNew()(v39);
        if ((v44 & 0x8000000000000000) != 0)
        {
          goto LABEL_104;
        }
      }

      if (v44 >= v39[2])
      {
        break;
      }

      v121 = v39;
      v46 = v39 + 4;
      v47 = v46[v44];
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v46[v44] = v47;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v47 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v47 + 2) + 1, 1, v47);
        v46[v44] = v47;
      }

      v50 = *(v47 + 2);
      v49 = *(v47 + 3);
      if (v50 >= v49 >> 1)
      {
        v47 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v49 > 1), v50 + 1, 1, v47);
        v46[v44] = v47;
      }

      *(v47 + 2) = v50 + 1;
      *&v47[8 * v50 + 32] = v41;
      v51 = *(v45 + 16);
      if (v51)
      {
        goto LABEL_42;
      }

      if (v44 >= *(v120 + 16))
      {
        goto LABEL_106;
      }

      *(v111 + v44) = 1;
      v53 = *(v123 + 2);
      v52 = *(v123 + 3);
      if (v53 >= v52 >> 1)
      {
        v123 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v52 > 1), v53 + 1, 1, v123);
      }

      v54 = v123;
      *(v123 + 2) = v53 + 1;
      *&v54[8 * v53 + 32] = v44;
      v51 = *(v45 + 16);
      if (v51)
      {
LABEL_42:
        v55 = (v45 + 40);
        do
        {
          if (*v55 == 1)
          {
            v56 = *(v55 - 1);
            if ((v56 & 0x8000000000000000) != 0)
            {
              __break(1u);
LABEL_93:
              __break(1u);
LABEL_94:
              __break(1u);
LABEL_95:
              __break(1u);
LABEL_96:
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
              __break(1u);
LABEL_102:
              __break(1u);
LABEL_103:
              __break(1u);
LABEL_104:
              __break(1u);
              goto LABEL_105;
            }

            if (v56 >= v23[2])
            {
              goto LABEL_93;
            }

            v57 = v42[v56];
            v58 = swift_isUniquelyReferenced_nonNull_native();
            v42[v56] = v57;
            if ((v58 & 1) == 0)
            {
              v57 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v57 + 2) + 1, 1, v57);
              v42[v56] = v57;
            }

            v60 = *(v57 + 2);
            v59 = *(v57 + 3);
            if (v60 >= v59 >> 1)
            {
              v57 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v59 > 1), v60 + 1, 1, v57);
              v42[v56] = v57;
            }

            *(v57 + 2) = v60 + 1;
            *&v57[8 * v60 + 32] = v41;
          }

          v55 += 16;
          --v51;
        }

        while (v51);
      }

      ++v41;

      v39 = v121;
      v40 = v122;
      if (v41 == v116)
      {
        goto LABEL_54;
      }
    }

LABEL_105:
    __break(1u);
LABEL_106:
    __break(1u);
LABEL_107:
    __break(1u);
LABEL_108:
    v23 = specialized _ArrayBuffer._consumeAndCreateNew()(v23);
  }

LABEL_54:
  v116 = (v40 + 32);
  v61 = v120 + 32;
  v121 = v39;
LABEL_55:
  v62 = *(v123 + 2) + 3;
  while (v62 != 3)
  {
    v63 = *&v123[8 * v62];
    *(v123 + 2) = v62 - 4;
    if ((v63 & 0x8000000000000000) != 0)
    {
      goto LABEL_95;
    }

    if (v63 >= v23[2])
    {
      goto LABEL_96;
    }

    v64 = v23[v63 + 4];
    v65 = *(v64 + 16);
    --v62;
    if (v65)
    {
      v66 = v23[v63 + 4];

      v67 = 0;
      v68 = v116;
      while (v67 < *(v64 + 16))
      {
        v69 = *(v64 + 32 + 8 * v67);
        if ((v69 & 0x8000000000000000) != 0)
        {
          goto LABEL_99;
        }

        if (v69 >= *(v122 + 16))
        {
          goto LABEL_100;
        }

        v70 = &v68[3 * v69];
        v71 = *v70;
        if ((*v70 & 0x8000000000000000) != 0)
        {
          goto LABEL_101;
        }

        v72 = *(v120 + 16);
        if (v71 >= v72)
        {
          goto LABEL_102;
        }

        if ((*(v61 + v71) & 1) == 0)
        {
          v73 = v70[1];
          v74 = *(v73 + 16);
          v75 = (v73 + 40);
          v76 = v74 + 1;
          while (--v76)
          {
            if (*v75 != 1)
            {
              goto LABEL_61;
            }

            v77 = *(v75 - 1);
            if (v77 >= v72)
            {
              goto LABEL_94;
            }

            v75 += 16;
            if ((*(v61 + v77) & 1) == 0)
            {
              goto LABEL_61;
            }
          }

          v79 = *(v123 + 2);
          v78 = *(v123 + 3);
          if (v79 >= v78 >> 1)
          {
            v81 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v78 > 1), v79 + 1, 1, v123);
            v68 = v116;
            v123 = v81;
          }

          v80 = v123;
          *(v123 + 2) = v79 + 1;
          *&v80[8 * v79 + 32] = v71;
          if (v71 >= *(v120 + 16))
          {
            goto LABEL_107;
          }

          *(v61 + v71) = 1;
        }

LABEL_61:
        if (++v67 == v65)
        {

          v39 = v121;
          v40 = v122;
          goto LABEL_55;
        }
      }

      goto LABEL_98;
    }
  }

  v82 = v110;
  v110[6] = v106;
  v82[7] = v40;
  v82[9] = v39;
  v83 = v109;
  v82[2] = v119;
  v82[3] = v83;
  v84 = *(v83 + 16);
  if (v84)
  {
    v125[0] = MEMORY[0x1E69E7CC0];

    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v84, 0);
    v85 = v125[0];
    v86 = v83 + ((*(v104 + 80) + 32) & ~*(v104 + 80));
    v122 = *(v104 + 72);
    v119 = v105 + 32;
    v116 = (v105 + 8);
    v87 = v114;
    do
    {
      outlined init with copy of TerminalSymbol(v86, v87, type metadata accessor for TerminalSymbol);
      v88 = v117;
      outlined init with copy of TerminalSymbol(v87, v117, type metadata accessor for TerminalSymbol);
      EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
      if ((EnumCaseMultiPayload - 1) >= 2)
      {
        if (EnumCaseMultiPayload)
        {
          outlined destroy of PromptTemplateInfo.RichVariableBinding.Component(v87, type metadata accessor for TerminalSymbol);
          v96 = *v88;
          v97 = 2;
        }

        else
        {
          outlined destroy of PromptTemplateInfo.RichVariableBinding.Component(v87, type metadata accessor for TerminalSymbol);
          v97 = 0;
          v96 = *v88;
        }
      }

      else
      {
        v91 = v112;
        v90 = v113;
        (*v119)(v112, v88, v113);
        v92 = CharacterSet.bitmapRepresentation.getter();
        v94 = v93;
        (*v116)(v91, v90);
        isa = Data._bridgeToObjectiveC()().super.isa;
        v96 = [objc_opt_self() characterSetWithBitmapRepresentation_];

        v87 = v114;
        outlined consume of Data._Representation(v92, v94);
        outlined destroy of PromptTemplateInfo.RichVariableBinding.Component(v87, type metadata accessor for TerminalSymbol);
        v97 = 1;
      }

      v125[0] = v85;
      v99 = *(v85 + 16);
      v98 = *(v85 + 24);
      if (v99 >= v98 >> 1)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v98 > 1), v99 + 1, 1);
        v85 = v125[0];
      }

      *(v85 + 16) = v99 + 1;
      v100 = v85 + 16 * v99;
      *(v100 + 32) = v96;
      *(v100 + 40) = v97;
      v86 += v122;
      --v84;
    }

    while (v84);
  }

  else
  {

    v85 = MEMORY[0x1E69E7CC0];
  }

  v101 = v110;
  v102 = v120;
  v110[4] = v85;
  v101[5] = v102;
  v101[8] = v124;

  return v101;
}