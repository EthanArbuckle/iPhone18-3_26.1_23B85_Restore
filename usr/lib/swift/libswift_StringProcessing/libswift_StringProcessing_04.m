uint64_t static DSLTree.CustomCharacterClass.generalCategory(_:)@<X0>(uint64_t *a1@<X8>)
{
  v41 = a1;
  v1 = type metadata accessor for Source.Location();
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v38 = &v34 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for AST.Atom.Kind();
  v35 = *(v4 - 8);
  v36 = v4;
  v5 = *(v35 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v34 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for AST.Atom();
  v39 = *(v8 - 8);
  v40 = v8;
  v9 = *(v39 + 64);
  MEMORY[0x1EEE9AC00](v8);
  v37 = &v34 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss7UnicodeO12_RegexParserE23ExtendedGeneralCategoryOSgMd, &_ss7UnicodeO12_RegexParserE23ExtendedGeneralCategoryOSgMR);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v14 = &v34 - v13;
  v15 = type metadata accessor for AST.Atom.CharacterProperty.Kind();
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  MEMORY[0x1EEE9AC00](v15);
  v19 = &v34 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = type metadata accessor for AST.Atom.CharacterProperty();
  v21 = *(v20 - 8);
  v22 = *(v21 + 64);
  MEMORY[0x1EEE9AC00](v20);
  v24 = &v34 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  Unicode.GeneralCategory.extendedGeneralCategory.getter(v14);
  v25 = type metadata accessor for Unicode.ExtendedGeneralCategory();
  v26 = *(v25 - 8);
  result = (*(v26 + 48))(v14, 1, v25);
  if (result == 1)
  {
    __break(1u);
  }

  else
  {
    (*(v26 + 32))(v19, v14, v25);
    (*(v16 + 104))(v19, *MEMORY[0x1E69E8C88], v15);
    AST.Atom.CharacterProperty.init(_:isInverted:isPOSIX:)();
    (*(v21 + 32))(v7, v24, v20);
    (*(v35 + 104))(v7, *MEMORY[0x1E69E8D80], v36);
    static Source.Location.fake.getter();
    v28 = v37;
    AST.Atom.init(_:_:)();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy17_StringProcessing7DSLTreeV20CustomCharacterClassV6MemberOGMd, &_ss23_ContiguousArrayStorageCy17_StringProcessing7DSLTreeV20CustomCharacterClassV6MemberOGMR);
    v29 = *(type metadata accessor for DSLTree.CustomCharacterClass.Member(0) - 8);
    v30 = *(v29 + 72);
    v31 = (*(v29 + 80) + 32) & ~*(v29 + 80);
    v32 = swift_allocObject();
    *(v32 + 16) = xmmword_18E5ED040;
    (*(v39 + 32))(v32 + v31, v28, v40);
    type metadata accessor for DSLTree.Atom(0);
    swift_storeEnumTagMultiPayload();
    result = swift_storeEnumTagMultiPayload();
    v33 = v41;
    *v41 = v32;
    *(v33 + 8) = 0;
  }

  return result;
}

uint64_t Unicode.GeneralCategory.extendedGeneralCategory.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = type metadata accessor for Unicode.GeneralCategory();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v16 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v5 + 16))(v8, v2, v4);
  v9 = (*(v5 + 88))(v8, v4);
  if (v9 == *MEMORY[0x1E69E78A0])
  {
    v10 = MEMORY[0x1E69E91A0];
  }

  else if (v9 == *MEMORY[0x1E69E7888])
  {
    v10 = MEMORY[0x1E69E9188];
  }

  else if (v9 == *MEMORY[0x1E69E7898])
  {
    v10 = MEMORY[0x1E69E9198];
  }

  else if (v9 == *MEMORY[0x1E69E7860])
  {
    v10 = MEMORY[0x1E69E9160];
  }

  else if (v9 == *MEMORY[0x1E69E7818])
  {
    v10 = MEMORY[0x1E69E9110];
  }

  else if (v9 == *MEMORY[0x1E69E7870])
  {
    v10 = MEMORY[0x1E69E9170];
  }

  else if (v9 == *MEMORY[0x1E69E7830])
  {
    v10 = MEMORY[0x1E69E9130];
  }

  else if (v9 == *MEMORY[0x1E69E7848])
  {
    v10 = MEMORY[0x1E69E9148];
  }

  else if (v9 == *MEMORY[0x1E69E7840])
  {
    v10 = MEMORY[0x1E69E9140];
  }

  else if (v9 == *MEMORY[0x1E69E7838])
  {
    v10 = MEMORY[0x1E69E9138];
  }

  else if (v9 == *MEMORY[0x1E69E7820])
  {
    v10 = MEMORY[0x1E69E9118];
  }

  else if (v9 == *MEMORY[0x1E69E78D0])
  {
    v10 = MEMORY[0x1E69E91D0];
  }

  else if (v9 == *MEMORY[0x1E69E7880])
  {
    v10 = MEMORY[0x1E69E9180];
  }

  else if (v9 == *MEMORY[0x1E69E7890])
  {
    v10 = MEMORY[0x1E69E9190];
  }

  else if (v9 == *MEMORY[0x1E69E78A8])
  {
    v10 = MEMORY[0x1E69E91A8];
  }

  else if (v9 == *MEMORY[0x1E69E78C0])
  {
    v10 = MEMORY[0x1E69E91C0];
  }

  else if (v9 == *MEMORY[0x1E69E78B0])
  {
    v10 = MEMORY[0x1E69E91B0];
  }

  else if (v9 == *MEMORY[0x1E69E78B8])
  {
    v10 = MEMORY[0x1E69E91B8];
  }

  else if (v9 == *MEMORY[0x1E69E7800])
  {
    v10 = MEMORY[0x1E69E90F0];
  }

  else if (v9 == *MEMORY[0x1E69E7858])
  {
    v10 = MEMORY[0x1E69E9158];
  }

  else if (v9 == *MEMORY[0x1E69E7868])
  {
    v10 = MEMORY[0x1E69E9168];
  }

  else if (v9 == *MEMORY[0x1E69E7828])
  {
    v10 = MEMORY[0x1E69E9120];
  }

  else if (v9 == *MEMORY[0x1E69E7878])
  {
    v10 = MEMORY[0x1E69E9178];
  }

  else if (v9 == *MEMORY[0x1E69E7850])
  {
    v10 = MEMORY[0x1E69E9150];
  }

  else if (v9 == *MEMORY[0x1E69E78C8])
  {
    v10 = MEMORY[0x1E69E91C8];
  }

  else if (v9 == *MEMORY[0x1E69E78E0])
  {
    v10 = MEMORY[0x1E69E9208];
  }

  else if (v9 == *MEMORY[0x1E69E78D8])
  {
    v10 = MEMORY[0x1E69E91E8];
  }

  else if (v9 == *MEMORY[0x1E69E78E8])
  {
    v10 = MEMORY[0x1E69E9218];
  }

  else if (v9 == *MEMORY[0x1E69E7808])
  {
    v10 = MEMORY[0x1E69E90F8];
  }

  else
  {
    if (v9 != *MEMORY[0x1E69E7810])
    {
      v15 = type metadata accessor for Unicode.ExtendedGeneralCategory();
      (*(*(v15 - 8) + 56))(a1, 1, 1, v15);
      return (*(v5 + 8))(v8, v4);
    }

    v10 = MEMORY[0x1E69E9100];
  }

  v11 = *v10;
  v12 = type metadata accessor for Unicode.ExtendedGeneralCategory();
  v13 = *(v12 - 8);
  (*(v13 + 104))(a1, v11, v12);
  return (*(v13 + 56))(a1, 0, 1, v12);
}

uint64_t DSLTree.CustomCharacterClass.inverted.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 8);
  *a1 = *v1;
  *(a1 + 8) = (v2 & 1) == 0;
}

void DSLTree.Atom.CharacterClass.inverted.getter(char *a1@<X8>)
{
  v2 = 14;
  switch(*v1)
  {
    case 1:
      v2 = 0;
      break;
    case 2:
      v2 = 3;
      break;
    case 3:
      v2 = 2;
      break;
    case 4:
      v2 = 5;
      break;
    case 5:
      v2 = 4;
      break;
    case 6:
      v2 = 7;
      break;
    case 7:
      v2 = 6;
      break;
    case 8:
      v2 = 9;
      break;
    case 9:
      v2 = 8;
      break;
    case 0xA:
      v2 = 11;
      break;
    case 0xB:
      v2 = 10;
      break;
    case 0xC:
      break;
    case 0xD:
      _assertionFailure(_:_:file:line:flags:)();
      __break(1u);
      JUMPOUT(0x18E5C0198);
    default:
      v2 = 1;
      break;
  }

  *a1 = v2;
}

BOOL DSLTree.Node.hasChildNodes.getter(unint64_t a1)
{
  v2 = type metadata accessor for DSLTree._AST.AbsentFunction(0);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v5 = &v13 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = (a1 >> 59) & 0x1E | (a1 >> 2) & 1;
  if (v6 > 0x10)
  {
    goto LABEL_8;
  }

  if (((1 << v6) & 0x1E780) != 0)
  {
    return 0;
  }

  if (((1 << v6) & 0x107C) != 0)
  {
    return 1;
  }

  if (v6 == 11)
  {
    v8 = swift_projectBox();
    outlined init with copy of DSLTree._AST.AbsentFunction(v8, v5, type metadata accessor for DSLTree._AST.AbsentFunction);
    v9 = AST.AbsentFunction.children.getter();
    outlined destroy of MEProgram(v5, type metadata accessor for DSLTree._AST.AbsentFunction);
    v10 = *(v9 + 16);

    v11 = v10 == 0;
  }

  else
  {
LABEL_8:
    if (v6)
    {
      v12 = *((a1 & 0xFFFFFFFFFFFFFFBLL) + 0x10);
    }

    else
    {
      v12 = *(a1 + 16);
    }

    v11 = *(v12 + 16) == 0;
  }

  return !v11;
}

uint64_t DSLTree.Node.children.getter(unint64_t a1)
{
  v2 = type metadata accessor for AST.Node();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2);
  v6 = &v38 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for DSLTree._AST.AbsentFunction(0);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v10 = &v38 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = (a1 >> 59) & 0x1E | (a1 >> 2) & 1;
  if (v11 <= 4)
  {
    if (v11 <= 1)
    {
      if (v11)
      {
        v12 = *((a1 & 0xFFFFFFFFFFFFFFBLL) + 0x10);
      }

      else
      {
        v12 = *(a1 + 16);
      }

      return v12;
    }

    if (v11 == 2)
    {
      v29 = *((a1 & 0xFFFFFFFFFFFFFFBLL) + 0x30);
    }

    else
    {
      if (v11 == 3)
      {
        v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s17_StringProcessing7DSLTreeV4_ASTO9GroupKindV_AC4NodeOtMd, &_s17_StringProcessing7DSLTreeV4_ASTO9GroupKindV_AC4NodeOtMR);
        v27 = swift_projectBox();
        v28 = *(v26 + 48);
LABEL_30:
        v29 = *(v27 + v28);
        goto LABEL_31;
      }

      v29 = *((a1 & 0xFFFFFFFFFFFFFFBLL) + 0x10);
    }

LABEL_31:
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy17_StringProcessing7DSLTreeV4NodeOGMd, &_ss23_ContiguousArrayStorageCy17_StringProcessing7DSLTreeV4NodeOGMR);
    v12 = swift_allocObject();
    *(v12 + 16) = xmmword_18E5ED040;
    *(v12 + 32) = v29;
    goto LABEL_32;
  }

  if (v11 > 0x10)
  {
LABEL_27:
    if (v11 == 5)
    {
      v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s17_StringProcessing7DSLTreeV4_ASTO13ConditionKindV_AC4NodeOAItMd, &_s17_StringProcessing7DSLTreeV4_ASTO13ConditionKindV_AC4NodeOAItMR);
      v34 = swift_projectBox();
      v35 = *(v34 + *(v33 + 48));
      v36 = *(v34 + *(v33 + 64));
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy17_StringProcessing7DSLTreeV4NodeOGMd, &_ss23_ContiguousArrayStorageCy17_StringProcessing7DSLTreeV4NodeOGMR);
      v12 = swift_allocObject();
      *(v12 + 16) = xmmword_18E5ED050;
      *(v12 + 32) = v35;
      *(v12 + 40) = v36;

LABEL_32:

      return v12;
    }

    v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s17_StringProcessing7DSLTreeV4_ASTO20QuantificationAmountV_AC0E4KindOAC4NodeOtMd, &_s17_StringProcessing7DSLTreeV4_ASTO20QuantificationAmountV_AC0E4KindOAC4NodeOtMR);
    v27 = swift_projectBox();
    v28 = *(v37 + 64);
    goto LABEL_30;
  }

  v12 = MEMORY[0x1E69E7CC0];
  if (((1 << v11) & 0x1E780) != 0)
  {
    return v12;
  }

  if (v11 != 11)
  {
    if (v11 == 12)
    {
      v30 = *swift_projectBox();

      v31 = DSLTree.Node.children.getter(v30);

      return v31;
    }

    goto LABEL_27;
  }

  v13 = swift_projectBox();
  outlined init with copy of DSLTree._AST.AbsentFunction(v13, v10, type metadata accessor for DSLTree._AST.AbsentFunction);
  v14 = AST.AbsentFunction.children.getter();
  outlined destroy of MEProgram(v10, type metadata accessor for DSLTree._AST.AbsentFunction);
  v15 = *(v14 + 16);
  if (!v15)
  {
LABEL_34:

    return v12;
  }

  v44 = v12;
  v40 = v14;
  specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v15, 0);
  v16 = v40;
  v17 = 0;
  v12 = v44;
  v42 = v40 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
  v43 = v15;
  v41 = v3 + 16;
  v38 = (v3 + 8);
  v39 = (v3 + 32);
  while (v17 < *(v16 + 16))
  {
    (*(v3 + 16))(v6, v42 + *(v3 + 72) * v17, v2);
    v18 = convert #1 () in AST.Node.dslTreeNode.getter(v6);
    if (((v18 >> 59) & 0x1E | (v18 >> 2) & 1) == 0xC)
    {
      (*v38)(v6, v2);
    }

    else
    {
      v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s17_StringProcessing7DSLTreeV4NodeO_AC4_ASTO7ASTNodeVtMd, &_s17_StringProcessing7DSLTreeV4NodeO_AC4_ASTO7ASTNodeVtMR);
      v20 = swift_allocBox();
      v21 = *(v19 + 48);
      v22 = v39;
      v16 = v40;
      *v23 = v18;
      (*v22)(v23 + v21, v6, v2);
      v18 = v20 | 0x6000000000000000;
    }

    v44 = v12;
    v25 = *(v12 + 16);
    v24 = *(v12 + 24);
    if (v25 >= v24 >> 1)
    {
      specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v24 > 1), v25 + 1, 1);
      v16 = v40;
      v12 = v44;
    }

    ++v17;
    *(v12 + 16) = v25 + 1;
    *(v12 + 8 * v25 + 32) = v18;
    if (v43 == v17)
    {
      goto LABEL_34;
    }
  }

  __break(1u);
  result = swift_unexpectedError();
  __break(1u);
  return result;
}

uint64_t DSLTree.Node.appending(_:)(uint64_t a1, unint64_t a2)
{
  if (((a2 >> 59) & 0x1E | (a2 >> 2) & 1) == 1)
  {
    v4 = *((a2 & 0xFFFFFFFFFFFFFFBLL) + 0x10);
    v5 = swift_allocObject();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy17_StringProcessing7DSLTreeV4NodeOGMd, &_ss23_ContiguousArrayStorageCy17_StringProcessing7DSLTreeV4NodeOGMR);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_18E5ED040;
    *(inited + 32) = a1;

    specialized Array.append<A>(contentsOf:)(inited);
    *(v5 + 16) = v4;
  }

  else
  {
    v5 = swift_allocObject();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy17_StringProcessing7DSLTreeV4NodeOGMd, &_ss23_ContiguousArrayStorageCy17_StringProcessing7DSLTreeV4NodeOGMR);
    v7 = swift_allocObject();
    *(v7 + 16) = xmmword_18E5ED050;
    *(v7 + 32) = a2;
    *(v7 + 40) = a1;
    *(v5 + 16) = v7;
  }

  return v5 | 4;
}

uint64_t DSLTree.Node.appendingAlternationCase(_:)(uint64_t a1, unint64_t a2)
{
  if ((a2 >> 59) & 0x1E | (a2 >> 2) & 1)
  {
    v4 = swift_allocObject();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy17_StringProcessing7DSLTreeV4NodeOGMd, &_ss23_ContiguousArrayStorageCy17_StringProcessing7DSLTreeV4NodeOGMR);
    v5 = swift_allocObject();
    *(v5 + 16) = xmmword_18E5ED050;
    *(v5 + 32) = a2;
    *(v5 + 40) = a1;
    *(v4 + 16) = v5;
  }

  else
  {
    v6 = *(a2 + 16);
    v4 = swift_allocObject();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy17_StringProcessing7DSLTreeV4NodeOGMd, &_ss23_ContiguousArrayStorageCy17_StringProcessing7DSLTreeV4NodeOGMR);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_18E5ED040;
    *(inited + 32) = a1;

    specialized Array.append<A>(contentsOf:)(inited);
    *(v4 + 16) = v6;
  }

  return v4;
}

_StringProcessing::ReferenceID __swiftcall ReferenceID.init()()
{
  v1 = static ReferenceID.counter;
  if (__OFADD__(static ReferenceID.counter, 1))
  {
    __break(1u);
  }

  else
  {
    ++static ReferenceID.counter;
    *v0 = v1;
  }

  return result;
}

Swift::Int ReferenceID.hashValue.getter()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  MEMORY[0x193ACEF90](v1);
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance Instruction(uint64_t a1, uint64_t a2, void (*a3)(uint64_t))
{
  v5 = *v3;
  Hasher.init(_seed:)();
  a3(v5);
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance Instruction(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(uint64_t))
{
  v6 = *v4;
  Hasher.init(_seed:)();
  a4(v6);
  return Hasher._finalize()();
}

void *CaptureTransform.init<A, B>(_:)@<X0>(uint64_t (*a1)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  swift_getFunctionTypeMetadata1();
  swift_getFunctionTypeMetadata1();

  if (swift_dynamicCast())
  {

    a2 = swift_allocObject();
    *(a2 + 16) = a3;
    *(a2 + 24) = a4;
    *(a2 + 32) = v13;
    v10 = 3;
    v11 = partial apply for thunk for @escaping @callee_guaranteed (@guaranteed Substring) -> (@out B, @error @owned Error);
    a1 = partial apply for thunk for @escaping @callee_guaranteed (@in_guaranteed Substring) -> (@out B, @error @owned Error);
  }

  else
  {
    v10 = 2;
    v11 = partial apply for closure #1 in CaptureTransform.init<A, B>(_:);
  }

  result = swift_allocObject();
  result[2] = a3;
  result[3] = a4;
  result[4] = a1;
  result[5] = a2;
  *a5 = a3;
  *(a5 + 8) = a4;
  *(a5 + 16) = v11;
  *(a5 + 24) = result;
  *(a5 + 32) = v10;
  return result;
}

{
  type metadata accessor for Optional();
  swift_getFunctionTypeMetadata1();
  swift_getFunctionTypeMetadata1();

  if (swift_dynamicCast())
  {

    a2 = swift_allocObject();
    *(a2 + 16) = a3;
    *(a2 + 24) = a4;
    *(a2 + 32) = v13;
    v10 = 1;
    v11 = partial apply for thunk for @escaping @callee_guaranteed (@guaranteed Substring) -> (@out B?, @error @owned Error);
    a1 = partial apply for thunk for @escaping @callee_guaranteed (@in_guaranteed Substring) -> (@out B?, @error @owned Error);
  }

  else
  {
    v10 = 0;
    v11 = partial apply for closure #1 in CaptureTransform.init<A, B>(_:);
  }

  result = swift_allocObject();
  result[2] = a3;
  result[3] = a4;
  result[4] = a1;
  result[5] = a2;
  *a5 = a3;
  *(a5 + 8) = a4;
  *(a5 + 16) = v11;
  *(a5 + 24) = result;
  *(a5 + 32) = v10;
  return result;
}

uint64_t thunk for @escaping @callee_guaranteed (@guaranteed Substring) -> (@out B, @error @owned Error)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X7>, uint64_t *a3@<X8>)
{
  v6 = *(a2 - 8);
  v7 = *(v6 + 64);
  v8 = MEMORY[0x1EEE9AC00](a1);
  v10 = &v14 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = v11(v8);
  if (!v3)
  {
    a3[3] = a2;
    boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(a3);
    return (*(v6 + 32))(boxed_opaque_existential_0, v10, a2);
  }

  return result;
}

uint64_t *closure #1 in CaptureTransform.init<A, B>(_:)@<X0>(uint64_t a1@<X0>, void (*a2)(_BYTE *)@<X1>, uint64_t a3@<X3>, uint64_t a4@<X4>, uint64_t *a5@<X8>)
{
  v10 = *(a3 - 8);
  v11 = *(v10 + 64);
  v12 = MEMORY[0x1EEE9AC00](a1);
  v14 = &v16[-((v13 + 15) & 0xFFFFFFFFFFFFFFF0)];
  outlined init with copy of Any(v12, v16);
  swift_dynamicCast();
  a5[3] = a4;
  __swift_allocate_boxed_opaque_existential_0(a5);
  a2(v14);
  result = (*(v10 + 8))(v14, a3);
  if (v5)
  {
    return __swift_deallocate_boxed_opaque_existential_0(a5);
  }

  return result;
}

_OWORD *thunk for @escaping @callee_guaranteed (@guaranteed Substring) -> (@out B?, @error @owned Error)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t (*a5)(uint64_t, uint64_t, uint64_t, uint64_t)@<X4>, uint64_t a6@<X7>, _OWORD *a7@<X8>)
{
  v24 = a7;
  v14 = type metadata accessor for Optional();
  v15 = *(*(v14 - 8) + 64);
  MEMORY[0x1EEE9AC00](v14 - 8);
  v17 = &v22 - v16;
  result = a5(a1, a2, a3, a4);
  if (!v7)
  {
    v19 = v24;
    v20 = *(a6 - 8);
    result = (*(v20 + 48))(v17, 1, a6);
    if (result == 1)
    {
      *v19 = 0u;
      v19[1] = 0u;
    }

    else
    {
      v23 = a6;
      boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(&v22);
      (*(v20 + 32))(boxed_opaque_existential_0, v17, a6);
      return outlined init with take of Any(&v22, v19);
    }
  }

  return result;
}

uint64_t closure #1 in CaptureTransform.init<A, B>(_:)@<X0>(uint64_t a1@<X0>, void (*a2)(char *)@<X1>, uint64_t a3@<X3>, uint64_t a4@<X4>, uint64_t a5@<X8>)
{
  v24 = a5;
  v9 = *(a3 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](a1);
  v12 = &v23 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for Optional();
  v23 = *(v13 - 8);
  v14 = *(v23 + 64);
  MEMORY[0x1EEE9AC00](v13);
  v16 = &v23 - v15;
  outlined init with copy of Any(a1, v25);
  swift_dynamicCast();
  v17 = v26;
  a2(v12);
  result = (*(v9 + 8))(v12, a3);
  if (!v17)
  {
    v20 = v23;
    v19 = v24;
    v21 = *(a4 - 8);
    if ((*(v21 + 48))(v16, 1, a4) == 1)
    {
      result = (*(v20 + 8))(v16, v13);
      *v19 = 0u;
      *(v19 + 16) = 0u;
    }

    else
    {
      *(v19 + 24) = a4;
      boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v19);
      return (*(v21 + 32))(boxed_opaque_existential_0, v16, a4);
    }
  }

  return result;
}

unint64_t protocol witness for CustomStringConvertible.description.getter in conformance CaptureTransform()
{
  v1 = *v0;
  v2 = v0[1];
  return specialized CaptureTransform.description.getter();
}

uint64_t CaptureList.Builder.addCaptures(of:optionalNesting:visibleInTypedOutput:)(unint64_t a1, uint64_t a2, int a3)
{
  v126 = a3;
  v124 = a2;
  v4 = type metadata accessor for AST.AbsentFunction.Kind();
  v122 = *(v4 - 8);
  v123 = v4;
  v5 = *(v122 + 8);
  MEMORY[0x1EEE9AC00](v4);
  v125 = &v114 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for DSLTree._AST.AbsentFunction(0);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v121 = &v114 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for DSLTree._AST.QuantificationAmount(0);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v120 = &v114 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for AST.Node();
  v116 = *(v13 - 8);
  v117 = v13;
  v14 = *(v116 + 64);
  MEMORY[0x1EEE9AC00](v13);
  v115 = (&v114 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0));
  v16 = type metadata accessor for AST.Conditional.Condition.Kind();
  v119 = *(v16 - 8);
  v17 = *(v119 + 64);
  MEMORY[0x1EEE9AC00](v16);
  v118 = &v114 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = type metadata accessor for DSLTree._AST.ConditionKind(0);
  v20 = *(*(v19 - 8) + 64);
  MEMORY[0x1EEE9AC00](v19 - 8);
  v22 = &v114 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = type metadata accessor for Source.Location();
  v114 = *(v23 - 8);
  v24 = *(v114 + 64);
  MEMORY[0x1EEE9AC00](v23);
  v25 = type metadata accessor for CaptureList.Capture();
  v26 = *(v25 - 8);
  v27 = *(v26 + 64);
  MEMORY[0x1EEE9AC00](v25);
  v29 = &v114 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = type metadata accessor for CaptureList.Builder.OptionalNesting();
  v31 = *(*(v30 - 8) + 64);
  v32 = MEMORY[0x1EEE9AC00](v30);
  v34 = &v114 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = MEMORY[0x1EEE9AC00](v32);
  v38 = &v114 - v36;
  v39 = (a1 >> 59) & 0x1E | (a1 >> 2) & 1;
  if (v39 > 4)
  {
    if (v39 <= 0x10)
    {
      if (((1 << v39) & 0x1E780) != 0)
      {
        return result;
      }

      if (v39 == 11)
      {
        v50 = swift_projectBox();
        v51 = v121;
        outlined init with copy of DSLTree._AST.AbsentFunction(v50, v121, type metadata accessor for DSLTree._AST.AbsentFunction);
        v52 = v125;
        AST.AbsentFunction.kind.getter();
        v54 = v122;
        v53 = v123;
        v55 = (*(v122 + 11))(v52, v123);
        if (v55 == *MEMORY[0x1E69E89D0])
        {
          goto LABEL_16;
        }

        if (v55 == *MEMORY[0x1E69E89B8])
        {
          outlined destroy of MEProgram(v51, type metadata accessor for DSLTree._AST.AbsentFunction);
          v54[12](v52, v53);
          v101 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s12_RegexParser3ASTV4NodeO8absentee_AA6SourceV8LocationV4pipeAE4exprtMd, &_s12_RegexParser3ASTV4NodeO8absentee_AA6SourceV8LocationV4pipeAE4exprtMR);
          v102 = *(v101 + 48);
          v104 = v115;
          v103 = v116;
          v105 = v117;
          (*(v116 + 32))(v115, &v52[*(v101 + 64)], v117);
          CaptureList.Builder.addCaptures(of:optionalNesting:visibleInTypedOutput:)();
          v106 = *(v103 + 8);
          v106(v104, v105);
          (*(v114 + 8))(&v52[v102], v23);
          return (v106)(v52, v105);
        }

        if (v55 == *MEMORY[0x1E69E89C8])
        {
LABEL_16:
          outlined destroy of MEProgram(v51, type metadata accessor for DSLTree._AST.AbsentFunction);
          return (v54[1])(v52, v53);
        }

        if (v55 == *MEMORY[0x1E69E89C0])
        {
          return outlined destroy of MEProgram(v51, type metadata accessor for DSLTree._AST.AbsentFunction);
        }

        result = _assertionFailure(_:_:file:line:flags:)();
        __break(1u);
        return result;
      }

      if (v39 == 12)
      {
        v69 = result;
        v70 = v37;
        v71 = *swift_projectBox();

        CaptureList.Builder.OptionalNesting.disablingNesting.getter();
        CaptureList.Builder.addCaptures(of:optionalNesting:visibleInTypedOutput:)(v71, v38, v126 & 1);

        return v70[1](v38, v69);
      }
    }

    v125 = v37;
    v122 = &v114 - v36;
    v123 = result;
    if (v39 == 5)
    {
      v72 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s17_StringProcessing7DSLTreeV4_ASTO13ConditionKindV_AC4NodeOAItMd, &_s17_StringProcessing7DSLTreeV4_ASTO13ConditionKindV_AC4NodeOAItMR);
      v73 = swift_projectBox();
      v74 = *(v73 + *(v72 + 48));
      v75 = *(v73 + *(v72 + 64));
      outlined init with copy of DSLTree._AST.AbsentFunction(v73, v22, type metadata accessor for DSLTree._AST.ConditionKind);
      v76 = v118;
      v77 = v119;
      (*(v119 + 32))(v118, v22, v16);
      v78 = (*(v77 + 88))(v76, v16);
      v79 = *MEMORY[0x1E69E89A8];
      v121 = v75;
      if (v78 == v79)
      {
        (*(v77 + 96))(v76, v16);
        v80 = type metadata accessor for AST.Group();
        v81 = swift_allocBox();
        (*(*(v80 - 8) + 32))(v82, v76, v80);
        v84 = v115;
        v83 = v116;
        *v115 = v81;
        v85 = v117;
        (*(v83 + 104))(v84, *MEMORY[0x1E69E8DE0], v117);

        v86 = v126;
        CaptureList.Builder.addCaptures(of:optionalNesting:visibleInTypedOutput:)();
        (*(v83 + 8))(v84, v85);
      }

      else
      {
        v107 = *(v77 + 8);

        v107(v76, v16);
        v86 = v126;
      }

      v108 = v122;
      CaptureList.Builder.OptionalNesting.addingOptional.getter();
      CaptureList.Builder.addCaptures(of:optionalNesting:visibleInTypedOutput:)(v74, v108, v86 & 1);

      v109 = *(v125 + 1);
      v110 = v123;
      v109(v108, v123);
      CaptureList.Builder.OptionalNesting.addingOptional.getter();
      CaptureList.Builder.addCaptures(of:optionalNesting:visibleInTypedOutput:)(v121, v108, v86 & 1);

      return (v109)(v108, v110);
    }

    else
    {
      v87 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s17_StringProcessing7DSLTreeV4_ASTO20QuantificationAmountV_AC0E4KindOAC4NodeOtMd, &_s17_StringProcessing7DSLTreeV4_ASTO20QuantificationAmountV_AC0E4KindOAC4NodeOtMR);
      v88 = swift_projectBox();
      v89 = *(v88 + *(v87 + 64));
      v90 = v120;
      outlined init with copy of DSLTree._AST.AbsentFunction(v88, v120, type metadata accessor for DSLTree._AST.QuantificationAmount);
      (*(v125 + 2))(v34, v124, v123);

      v91 = AST.Quantification.Amount.bounds.getter();
      v93 = v92;
      outlined destroy of MEProgram(v90, type metadata accessor for DSLTree._AST.QuantificationAmount);
      if ((v93 & 1) == 0 && !v91)
      {
        v94 = v122;
        CaptureList.Builder.OptionalNesting.addingOptional.getter();
        v95 = v125;
        v96 = v123;
        (*(v125 + 1))(v34, v123);
        v95[4](v34, v94, v96);
      }

      CaptureList.Builder.addCaptures(of:optionalNesting:visibleInTypedOutput:)(v89, v34, v126 & 1);

      return (*(v125 + 1))(v34, v123);
    }
  }

  if (v39 <= 1)
  {
    if (v39)
    {
      v63 = *((a1 & 0xFFFFFFFFFFFFFFBLL) + 0x10);
      v64 = *(v63 + 16);
      if (!v64)
      {
        return result;
      }

      v65 = 32;
      v66 = v126;
      v67 = v124;
      do
      {
        v68 = *(v63 + v65);

        CaptureList.Builder.addCaptures(of:optionalNesting:visibleInTypedOutput:)(v68, v67, v66 & 1);

        v65 += 8;
        --v64;
      }

      while (v64);
    }

    else
    {
      v125 = *(a1 + 16);
      v45 = *(v125 + 2);
      if (!v45)
      {
        return result;
      }

      v46 = (v37 + 8);
      v47 = result;

      v48 = 32;
      do
      {
        v49 = *&v125[v48];

        CaptureList.Builder.OptionalNesting.addingOptional.getter();
        CaptureList.Builder.addCaptures(of:optionalNesting:visibleInTypedOutput:)(v49, v38, v126 & 1);

        (*v46)(v38, v47);
        v48 += 8;
        --v45;
      }

      while (v45);
    }
  }

  if (v39 == 2)
  {
    v56 = a1 & 0xFFFFFFFFFFFFFFBLL;
    v57 = *((a1 & 0xFFFFFFFFFFFFFFBLL) + 0x10);
    v58 = *((a1 & 0xFFFFFFFFFFFFFFBLL) + 0x18);
    v60 = *((a1 & 0xFFFFFFFFFFFFFFBLL) + 0x30);
    v59 = *(v56 + 56);
    v125 = v60;
    if (v59)
    {
      v61 = *(v56 + 64);
    }

    else
    {

      v97 = DSLTree.Node.outputDefiningNode.getter(v60);
      v98 = (v97 >> 59) & 0x1E | (v97 >> 2) & 1;
      v99 = v97 & 0xFFFFFFFFFFFFFFBLL;
      if (v98 == 14)
      {
        v100 = *(v99 + 16);
      }
    }

    v111 = v124;
    CaptureList.Builder.OptionalNesting.depth.getter();
    static Source.Location.fake.getter();
    v112 = v126;
    CaptureList.Capture.init(name:type:optionalDepth:visibleInTypedOutput:_:)();
    v113 = CaptureList.Builder.captures.modify();
    CaptureList.append(_:)();
    (*(v26 + 8))(v29, v25);
    v113(v127, 0);
    return CaptureList.Builder.addCaptures(of:optionalNesting:visibleInTypedOutput:)(v125, v111, v112 & 1);
  }

  else
  {
    if (v39 == 3)
    {
      v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s17_StringProcessing7DSLTreeV4_ASTO9GroupKindV_AC4NodeOtMd, &_s17_StringProcessing7DSLTreeV4_ASTO9GroupKindV_AC4NodeOtMR);
      v41 = *(swift_projectBox() + *(v40 + 48));

      v42 = v126 & 1;
      v43 = v41;
      v44 = v124;
    }

    else
    {
      v62 = *((a1 & 0xFFFFFFFFFFFFFFBLL) + 0x10);

      v43 = v62;
      v44 = v124;
      v42 = 0;
    }

    CaptureList.Builder.addCaptures(of:optionalNesting:visibleInTypedOutput:)(v43, v44, v42);
  }
}

uint64_t static CaptureList.Builder.build(_:)@<X0>(unint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v28 = a2;
  v3 = type metadata accessor for CaptureList.Builder.OptionalNesting();
  v26 = *(v3 - 8);
  v27 = v3;
  v4 = *(v26 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v25 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for Source.Location();
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = type metadata accessor for CaptureList.Capture();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v9);
  v13 = &v25 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = type metadata accessor for CaptureList.Builder();
  v14 = *(v25 - 8);
  v15 = *(v14 + 64);
  MEMORY[0x1EEE9AC00](v25);
  v17 = &v25 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = *a1;
  CaptureList.Builder.init()();
  v19 = DSLTree.Node.outputDefiningNode.getter(v18);
  v20 = (v19 >> 59) & 0x1E | (v19 >> 2) & 1;
  v21 = v19 & 0xFFFFFFFFFFFFFFBLL;
  if (v20 == 14)
  {
    v22 = *(v21 + 16);
  }

  static Source.Location.fake.getter();
  CaptureList.Capture.init(name:type:optionalDepth:visibleInTypedOutput:_:)();
  v23 = CaptureList.Builder.captures.modify();
  CaptureList.append(_:)();
  (*(v10 + 8))(v13, v9);
  v23(v29, 0);
  CaptureList.Builder.OptionalNesting.init(canNest:)();
  CaptureList.Builder.addCaptures(of:optionalNesting:visibleInTypedOutput:)(v18, v6, 1);
  (*(v26 + 8))(v6, v27);
  CaptureList.Builder.captures.getter();
  return (*(v14 + 8))(v17, v25);
}

uint64_t DSLTree.Node.outputDefiningNode.getter(unint64_t a1)
{
  if (((a1 >> 59) & 0x1E | (a1 >> 2) & 1) - 3 > 1)
  {

    return a1;
  }

  else
  {
    result = DSLTree.Node.children.getter(a1);
    if (*(result + 16))
    {
      v2 = *(result + 32);

      v3 = DSLTree.Node.outputDefiningNode.getter(v2);

      return v3;
    }

    else
    {
      __break(1u);
    }
  }

  return result;
}

uint64_t DSLTree.Node._canOnlyMatchAtStartImpl(_:)(uint64_t a1, unint64_t a2)
{
  v93 = a1;
  v3 = type metadata accessor for AST.Quantification.Amount();
  v87 = *(v3 - 8);
  v88 = v3;
  v4 = *(v87 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v91 = &v83 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v92 = type metadata accessor for AST.Atom.Number();
  v90 = *(v92 - 8);
  v6 = *(v90 + 64);
  MEMORY[0x1EEE9AC00](v92);
  v89 = &v83 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for DSLTree._AST.QuantificationAmount(0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v86 = &v83 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for AST.Group.Kind();
  v85 = *(v11 - 8);
  v12 = *(v85 + 64);
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v83 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = type metadata accessor for AST.MatchingOptionSequence();
  v83 = *(v15 - 8);
  v84 = v15;
  v16 = *(v83 + 64);
  MEMORY[0x1EEE9AC00](v15);
  v18 = &v83 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = type metadata accessor for DSLTree._AST.GroupKind(0);
  v20 = *(*(v19 - 8) + 64);
  MEMORY[0x1EEE9AC00](v19 - 8);
  v22 = &v83 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = type metadata accessor for DSLTree._AST.MatchingOptionSequence(0);
  v24 = *(*(v23 - 8) + 64);
  MEMORY[0x1EEE9AC00](v23 - 8);
  v26 = &v83 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = type metadata accessor for DSLTree.Atom(0);
  v28 = *(*(v27 - 8) + 64);
  v29 = MEMORY[0x1EEE9AC00](v27);
  v31 = &v83 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v29);
  v33 = &v83 - v32;
  v34 = 2;
  switch((a2 >> 59) & 0x1E | (a2 >> 2) & 1)
  {
    case 1uLL:
      v26 = 0xFFFFFFFFFFFFFFBLL;
      v18 = *((a2 & 0xFFFFFFFFFFFFFFBLL) + 0x10);
      v63 = *(v18 + 2);

      v64 = 0;
      v11 = v93;
      while (2)
      {
        if (v63 != v64)
        {
          if (v64 < *(v18 + 2))
          {
            v27 = v64 + 1;
            v22 = *&v18[8 * v64 + 32];

            v34 = DSLTree.Node._canOnlyMatchAtStartImpl(_:)(v11, v22);
            a2 = v34;

            v64 = v27;
            if (v34 != 2)
            {

              return v34;
            }

            continue;
          }

          __break(1u);
LABEL_68:
          __break(1u);
LABEL_69:
          __break(1u);
LABEL_70:
          v34 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v22 + 1, 1, v34);
LABEL_6:
          v38 = *(v34 + 16);
          v37 = *(v34 + 24);
          v22 = v38 + 1;
          if (v38 >= v37 >> 1)
          {
            v34 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v37 > 1), v38 + 1, 1, v34);
          }

          *(v34 + 16) = v22;
          *(v34 + 4 * v38 + 32) = v26;
          *v27 = v34;
          v39 = DSLTree.Node._canOnlyMatchAtStartImpl(_:)(v27, v18);
          v18 = *v27;
          if (*(*v27 + 16))
          {
            v34 = v39;
            v40 = *v27;
            if (swift_isUniquelyReferenced_nonNull_native())
            {
              v41 = *(v18 + 2);
              if (v41)
              {
LABEL_11:
                *(v18 + 2) = v41 - 1;
                *v27 = v18;
                return v34;
              }

              goto LABEL_75;
            }
          }

          else
          {
            __break(1u);
LABEL_72:
            v38 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v34 + 1, 1, v38);
LABEL_17:
            v59 = *(v38 + 16);
            v58 = *(v38 + 24);
            if (v59 >= v58 >> 1)
            {
              v38 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v58 > 1), v59 + 1, 1, v38);
            }

            *(v38 + 16) = v59 + 1;
            *(v38 + 4 * v59 + 32) = a2;
            a2 = v93;
            *v93 = v38;
            v60 = v85;
            (*(v85 + 32))(v14, v22, v11);
            if ((*(v60 + 88))(v14, v11) == *MEMORY[0x1E69E8E58])
            {
              (*(v60 + 96))(v14, v11);
              v61 = v83;
              v22 = v84;
              (*(v83 + 32))(v18, v14, v84);
              MatchingOptions.Representation.apply(_:)(v18);
              (*(v61 + 8))(v18, v22);
              *a2 = v38;
            }

            else
            {
              (*(v60 + 8))(v14, v11);
            }

            v34 = DSLTree.Node._canOnlyMatchAtStartImpl(_:)(a2, v26);

            v18 = *a2;
            if (*(*a2 + 16))
            {
              v78 = *a2;
              if (swift_isUniquelyReferenced_nonNull_native())
              {
                v79 = *(v18 + 2);
                if (!v79)
                {
LABEL_77:
                  __break(1u);
                  goto LABEL_78;
                }

LABEL_47:
                *(v18 + 2) = v79 - 1;
                *a2 = v18;
                return v34;
              }

LABEL_76:
              v18 = specialized _ArrayBuffer._consumeAndCreateNew()(v18);
              v79 = *(v18 + 2);
              if (!v79)
              {
                goto LABEL_77;
              }

              goto LABEL_47;
            }

            __break(1u);
          }

          v18 = specialized _ArrayBuffer._consumeAndCreateNew()(v18);
          v41 = *(v18 + 2);
          if (v41)
          {
            goto LABEL_11;
          }

LABEL_75:
          __break(1u);
          goto LABEL_76;
        }

        break;
      }

      return 0;
    case 2uLL:
      v27 = v93;
      v34 = *v93;
      v22 = *(*v93 + 16);
      if (!v22)
      {
        goto LABEL_68;
      }

      v18 = *((a2 & 0xFFFFFFFFFFFFFFBLL) + 0x30);
      v26 = *(v34 + 4 * v22 + 28);
      v36 = *v93;
      if (swift_isUniquelyReferenced_nonNull_native())
      {
        goto LABEL_6;
      }

      goto LABEL_70;
    case 3uLL:
      v27 = 0xFFFFFFFFFFFFFFBLL;
      v56 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s17_StringProcessing7DSLTreeV4_ASTO9GroupKindV_AC4NodeOtMd, &_s17_StringProcessing7DSLTreeV4_ASTO9GroupKindV_AC4NodeOtMR);
      v57 = swift_projectBox();
      v26 = *(v57 + *(v56 + 48));
      outlined init with copy of DSLTree._AST.AbsentFunction(v57, v22, type metadata accessor for DSLTree._AST.GroupKind);
      v38 = *v93;
      v34 = *(*v93 + 16);
      if (!v34)
      {
        goto LABEL_69;
      }

      LODWORD(a2) = *(v38 + 4 * v34 + 28);

      if (swift_isUniquelyReferenced_nonNull_native())
      {
        goto LABEL_17;
      }

      goto LABEL_72;
    case 4uLL:
      v35 = ((a2 & 0xFFFFFFFFFFFFFFBLL) + 16);
      goto LABEL_22;
    case 5uLL:
      v67 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s17_StringProcessing7DSLTreeV4_ASTO13ConditionKindV_AC4NodeOAItMd, &_s17_StringProcessing7DSLTreeV4_ASTO13ConditionKindV_AC4NodeOAItMR);
      v68 = swift_projectBox();
      v69 = *(v68 + *(v67 + 48));
      v70 = *(v68 + *(v67 + 64));

      v71 = v93;
      v72 = DSLTree.Node._canOnlyMatchAtStartImpl(_:)(v93, v69);

      if (v72 == 2 || (v72 & 1) == 0)
      {

        return 0;
      }

      else
      {
        v73 = DSLTree.Node._canOnlyMatchAtStartImpl(_:)(v71, v70);

        return v73 & 1;
      }

    case 6uLL:
      v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s17_StringProcessing7DSLTreeV4_ASTO20QuantificationAmountV_AC0E4KindOAC4NodeOtMd, &_s17_StringProcessing7DSLTreeV4_ASTO20QuantificationAmountV_AC0E4KindOAC4NodeOtMR);
      v43 = swift_projectBox();
      v44 = *(v43 + *(v42 + 64));
      v45 = v86;
      outlined init with copy of DSLTree._AST.AbsentFunction(v43, v86, type metadata accessor for DSLTree._AST.QuantificationAmount);
      v47 = v87;
      v46 = v88;
      v48 = v91;
      (*(v87 + 16))(v91, v45, v88);
      v49 = (*(v47 + 88))(v48, v46);
      if (v49 == *MEMORY[0x1E69E8AC8])
      {

        outlined destroy of MEProgram(v45, type metadata accessor for DSLTree._AST.QuantificationAmount);
        (*(v47 + 96))(v48, v46);
        v51 = v89;
        v50 = v90;
        v52 = v92;
        (*(v90 + 32))(v89, v48, v92);
      }

      else
      {
        v52 = v92;
        v51 = v89;
        v50 = v90;
        if (v49 == *MEMORY[0x1E69E8AD0])
        {

          outlined destroy of MEProgram(v45, type metadata accessor for DSLTree._AST.QuantificationAmount);
          (*(v47 + 96))(v48, v46);
          (*(v50 + 32))(v51, v48, v52);
        }

        else
        {
          if (v49 == *MEMORY[0x1E69E8AC0])
          {
            outlined destroy of MEProgram(v45, type metadata accessor for DSLTree._AST.QuantificationAmount);
            (*(v47 + 8))(v48, v46);
            return 2;
          }

          if (v49 != *MEMORY[0x1E69E8AB8])
          {
            v74 = v93;
            if (v49 != *MEMORY[0x1E69E8AB0])
            {
              if (v49 == *MEMORY[0x1E69E8AD8])
              {

                outlined destroy of MEProgram(v45, type metadata accessor for DSLTree._AST.QuantificationAmount);
                goto LABEL_49;
              }

              if (v49 != *MEMORY[0x1E69E8AE0])
              {
LABEL_82:
                _assertionFailure(_:_:file:line:flags:)();
                __break(1u);
                JUMPOUT(0x18E5C3338);
              }
            }

            outlined destroy of MEProgram(v45, type metadata accessor for DSLTree._AST.QuantificationAmount);
            return 2;
          }

          outlined destroy of MEProgram(v45, type metadata accessor for DSLTree._AST.QuantificationAmount);
          (*(v47 + 96))(v48, v46);
          v82 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s12_RegexParser3ASTV4AtomV6NumberV_AGtMd, &_s12_RegexParser3ASTV4AtomV6NumberV_AGtMR) + 48);
          (*(v50 + 32))(v51, v48, v52);
          (*(v50 + 8))(&v48[v82], v52);
        }
      }

      v74 = v93;
      v75 = AST.Atom.Number.value.getter();
      v77 = v76;
      (*(v50 + 8))(v51, v52);
      if ((v77 & 1) != 0 || v75 <= 0)
      {

        return 2;
      }

LABEL_49:
      v34 = DSLTree.Node._canOnlyMatchAtStartImpl(_:)(v74, v44);

      return v34;
    case 7uLL:
    case 0xAuLL:
    case 0xBuLL:
    case 0xDuLL:
    case 0xEuLL:
    case 0xFuLL:
      return 0;
    case 8uLL:
      v65 = swift_projectBox();
      EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
      if (EnumCaseMultiPayload == 3)
      {
        outlined init with copy of DSLTree._AST.AbsentFunction(v65, v33, type metadata accessor for DSLTree.Atom);
        if (!*v33)
        {
          return 1;
        }

        if (*v33 == 9)
        {
          v80 = *(*v93 + 16);
          if (v80)
          {
            return (*(*v93 + 4 * v80 + 28) & 4) == 0;
          }

          goto LABEL_81;
        }
      }

      else if (EnumCaseMultiPayload == 6)
      {
        outlined init with copy of DSLTree._AST.AbsentFunction(v65, v31, type metadata accessor for DSLTree.Atom);
        outlined init with take of DSLTree.QuantificationKind(v31, v26, type metadata accessor for DSLTree._AST.MatchingOptionSequence);
        v22 = v93;
        v18 = *v93;
        v34 = *(*v93 + 16);
        if (swift_isUniquelyReferenced_nonNull_native())
        {
          if (!v34)
          {
LABEL_79:
            __break(1u);
            goto LABEL_80;
          }

          goto LABEL_32;
        }

LABEL_78:
        v18 = specialized _ArrayBuffer._consumeAndCreateNew()(v18);
        if (!v34)
        {
          goto LABEL_79;
        }

LABEL_32:
        if (v34 > *(v18 + 2))
        {
LABEL_80:
          __break(1u);
LABEL_81:
          __break(1u);
          goto LABEL_82;
        }

        MatchingOptions.Representation.apply(_:)(v26);
        outlined destroy of MEProgram(v26, type metadata accessor for DSLTree._AST.MatchingOptionSequence);
        *v22 = v18;
        return 2;
      }

      return 0;
    case 9uLL:
    case 0x10uLL:
      return v34;
    case 0xCuLL:
      v35 = swift_projectBox();
LABEL_22:
      v62 = *v35;

      v34 = DSLTree.Node._canOnlyMatchAtStartImpl(_:)(v93, v62);

      return v34;
    default:
      v53 = *(a2 + 16);

      v55 = specialized Sequence.allSatisfy(_:)(v54, v93);

      return v55;
  }
}

uint64_t DSLTree._Tree.children.getter(unint64_t a1)
{
  v2 = type metadata accessor for AST.Node();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2);
  v6 = &v56 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for DSLTree._AST.AbsentFunction(0);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v10 = &v56 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = (a1 >> 59) & 0x1E | (a1 >> 2) & 1;
  if (v11 <= 4)
  {
    if (v11 > 1)
    {
      if (v11 == 2)
      {
        v36 = *((a1 & 0xFFFFFFFFFFFFFFBLL) + 0x30);
      }

      else
      {
        if (v11 == 3)
        {
          v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s17_StringProcessing7DSLTreeV4_ASTO9GroupKindV_AC4NodeOtMd, &_s17_StringProcessing7DSLTreeV4_ASTO9GroupKindV_AC4NodeOtMR);
          v28 = swift_projectBox();
          v29 = *(v27 + 48);
LABEL_39:
          v36 = *(v28 + v29);
          goto LABEL_40;
        }

        v36 = *((a1 & 0xFFFFFFFFFFFFFFBLL) + 0x10);
      }

LABEL_40:
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy17_StringProcessing7DSLTreeV5_TreeVGMd, &_ss23_ContiguousArrayStorageCy17_StringProcessing7DSLTreeV5_TreeVGMR);
      v12 = swift_allocObject();
      *(v12 + 16) = xmmword_18E5ED040;
      *(v12 + 32) = v36;
      goto LABEL_41;
    }

    if (v11)
    {
      v37 = *((a1 & 0xFFFFFFFFFFFFFFBLL) + 0x10);
      v38 = *(v37 + 16);
      v12 = MEMORY[0x1E69E7CC0];
      if (v38)
      {
        v64 = MEMORY[0x1E69E7CC0];

        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v38, 0);
        v12 = v64;
        v39 = *(v64 + 16);
        v40 = 32;
        do
        {
          v41 = *(v37 + v40);
          v64 = v12;
          v42 = *(v12 + 24);

          if (v39 >= v42 >> 1)
          {
            specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v42 > 1), v39 + 1, 1);
            v12 = v64;
          }

          *(v12 + 16) = v39 + 1;
          *(v12 + 8 * v39 + 32) = v41;
          v40 += 8;
          ++v39;
          --v38;
        }

        while (v38);
        goto LABEL_47;
      }
    }

    else
    {
      v30 = *(a1 + 16);
      v31 = *(v30 + 16);
      v12 = MEMORY[0x1E69E7CC0];
      if (v31)
      {
        v64 = MEMORY[0x1E69E7CC0];

        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v31, 0);
        v12 = v64;
        v32 = *(v64 + 16);
        v33 = 32;
        do
        {
          v34 = *(v30 + v33);
          v64 = v12;
          v35 = *(v12 + 24);

          if (v32 >= v35 >> 1)
          {
            specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v35 > 1), v32 + 1, 1);
            v12 = v64;
          }

          *(v12 + 16) = v32 + 1;
          *(v12 + 8 * v32 + 32) = v34;
          v33 += 8;
          ++v32;
          --v31;
        }

        while (v31);
        goto LABEL_47;
      }
    }
  }

  else
  {
    if (v11 > 0x10)
    {
LABEL_36:
      if (v11 == 5)
      {
        v46 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s17_StringProcessing7DSLTreeV4_ASTO13ConditionKindV_AC4NodeOAItMd, &_s17_StringProcessing7DSLTreeV4_ASTO13ConditionKindV_AC4NodeOAItMR);
        v47 = swift_projectBox();
        v48 = *(v47 + *(v46 + 48));
        v49 = *(v47 + *(v46 + 64));
        __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy17_StringProcessing7DSLTreeV5_TreeVGMd, &_ss23_ContiguousArrayStorageCy17_StringProcessing7DSLTreeV5_TreeVGMR);
        v12 = swift_allocObject();
        *(v12 + 16) = xmmword_18E5ED050;
        *(v12 + 32) = v48;
        *(v12 + 40) = v49;

LABEL_41:

        return v12;
      }

      v50 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s17_StringProcessing7DSLTreeV4_ASTO20QuantificationAmountV_AC0E4KindOAC4NodeOtMd, &_s17_StringProcessing7DSLTreeV4_ASTO20QuantificationAmountV_AC0E4KindOAC4NodeOtMR);
      v28 = swift_projectBox();
      v29 = *(v50 + 64);
      goto LABEL_39;
    }

    v12 = MEMORY[0x1E69E7CC0];
    if (((1 << v11) & 0x1E780) == 0)
    {
      if (v11 == 11)
      {
        v13 = swift_projectBox();
        outlined init with copy of DSLTree._AST.AbsentFunction(v13, v10, type metadata accessor for DSLTree._AST.AbsentFunction);
        v14 = AST.AbsentFunction.children.getter();
        outlined destroy of MEProgram(v10, type metadata accessor for DSLTree._AST.AbsentFunction);
        v15 = *(v14 + 16);
        if (v15)
        {
          v64 = v12;
          v59 = v14;
          specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v15, 0);
          v16 = v59;
          v17 = 0;
          v18 = v64;
          v61 = v59 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
          v62 = v15;
          v60 = v3 + 16;
          v57 = (v3 + 8);
          v58 = (v3 + 32);
          v63 = v3;
          do
          {
            if (v17 >= *(v16 + 16))
            {
              __break(1u);
              result = swift_unexpectedError();
              __break(1u);
              return result;
            }

            (*(v3 + 16))(v6, v61 + *(v3 + 72) * v17, v2);
            v19 = convert #1 () in AST.Node.dslTreeNode.getter(v6);
            if (((v19 >> 59) & 0x1E | (v19 >> 2) & 1) == 0xC)
            {
              (*v57)(v6, v2);
            }

            else
            {
              v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s17_StringProcessing7DSLTreeV4NodeO_AC4_ASTO7ASTNodeVtMd, &_s17_StringProcessing7DSLTreeV4NodeO_AC4_ASTO7ASTNodeVtMR);
              v21 = swift_allocBox();
              v22 = *(v20 + 48);
              v23 = v58;
              v16 = v59;
              *v24 = v19;
              (*v23)(v24 + v22, v6, v2);
              v19 = v21 | 0x6000000000000000;
            }

            v64 = v18;
            v26 = *(v18 + 16);
            v25 = *(v18 + 24);
            if (v26 >= v25 >> 1)
            {
              specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v25 > 1), v26 + 1, 1);
              v16 = v59;
              v18 = v64;
            }

            ++v17;
            *(v18 + 16) = v26 + 1;
            *(v18 + 8 * v26 + 32) = v19;
            v3 = v63;
          }

          while (v62 != v17);

          v51 = *(v18 + 16);
          if (v51)
          {
            goto LABEL_43;
          }
        }

        else
        {

          v18 = MEMORY[0x1E69E7CC0];
          v51 = *(MEMORY[0x1E69E7CC0] + 16);
          if (v51)
          {
LABEL_43:
            v64 = v12;
            specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v51, 0);
            v12 = v64;
            v52 = *(v64 + 16);
            v53 = 32;
            do
            {
              v54 = *(v18 + v53);
              v64 = v12;
              v55 = *(v12 + 24);

              if (v52 >= v55 >> 1)
              {
                specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v55 > 1), v52 + 1, 1);
                v12 = v64;
              }

              *(v12 + 16) = v52 + 1;
              *(v12 + 8 * v52 + 32) = v54;
              v53 += 8;
              ++v52;
              --v51;
            }

            while (v51);
LABEL_47:

            return v12;
          }
        }

        return MEMORY[0x1E69E7CC0];
      }

      if (v11 == 12)
      {
        v43 = *swift_projectBox();

        v44 = DSLTree._Tree.children.getter(v43);

        return v44;
      }

      goto LABEL_36;
    }
  }

  return v12;
}

uint64_t static DSLTree._AST.GroupKind.atomicNonCapturing.getter@<X0>(unsigned int *a1@<X0>, uint64_t (*a2)(void)@<X1>, uint64_t a3@<X8>)
{
  v4 = *a1;
  v5 = a2(0);
  v6 = *(*(v5 - 8) + 104);

  return v6(a3, v4, v5);
}

uint64_t static DSLTree._AST.QuantificationAmount.exactly(_:)@<X0>(unsigned int *a1@<X1>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for Source.Location();
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  static Source.Location.fake.getter();
  AST.Atom.Number.init(_:at:)();
  v6 = *a1;
  v7 = type metadata accessor for AST.Quantification.Amount();
  return (*(*(v7 - 8) + 104))(a2, v6, v7);
}

uint64_t static DSLTree._AST.QuantificationAmount.range(_:_:)@<X0>(uint64_t a1@<X8>)
{
  v2 = type metadata accessor for Source.Location();
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s12_RegexParser3ASTV4AtomV6NumberV_AGtMd, &_s12_RegexParser3ASTV4AtomV6NumberV_AGtMR) + 48);
  static Source.Location.fake.getter();
  AST.Atom.Number.init(_:at:)();
  static Source.Location.fake.getter();
  AST.Atom.Number.init(_:at:)();
  v5 = *MEMORY[0x1E69E8AB8];
  v6 = type metadata accessor for AST.Quantification.Amount();
  return (*(*(v6 - 8) + 104))(a1, v5, v6);
}

uint64_t RegexRepetitionBehavior.dslTreeKind.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  v4 = type metadata accessor for AST.Quantification.Kind();
  v5 = *(*(v4 - 8) + 104);
  v6 = **(&unk_1E72620F0 + v3);

  return v5(a1, v6, v4);
}

uint64_t Regex.Match.range.getter()
{
  result = *(v0 + 24);
  v2 = *(v0 + 32);
  return result;
}

uint64_t Regex.Match.output.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 16);
  v5 = type metadata accessor for Optional();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  v8 = MEMORY[0x1EEE9AC00](v5);
  v10 = &v24[-v9 - 16];
  Description = v4[-1].Description;
  v12 = Description[8];
  v13 = MEMORY[0x1EEE9AC00](v8);
  v15 = &v24[-((v14 + 15) & 0xFFFFFFFFFFFFFFF0) - 16];
  v16 = v2[1];
  v17 = v2[2];
  if (v4 == &type metadata for AnyRegexOutput)
  {
    v25[0] = *v2;
    v25[1] = v16;
    v25[2] = v17;

    return swift_dynamicCast();
  }

  else
  {
    v18 = v13;
    specialized Sequence<>.existentialOutput(from:)(*v2, v2[1], v17, v25);
    outlined init with copy of Any(v25, v24);
    if (swift_dynamicCast())
    {
      __swift_destroy_boxed_opaque_existential_0(v25);
      (Description[7])(v10, 0, 1, v4);
      v19 = Description[4];
      v19(v15, v10, v4);
      return (v19)(a2, v15, v4);
    }

    else
    {
      (Description[7])(v10, 1, 1, v4);
      (*(v6 + 8))(v10, v18);
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyypGMd, &_ss23_ContiguousArrayStorageCyypGMR);
      v21 = swift_allocObject();
      v23 = xmmword_18E5ED040;
      *(v21 + 16) = xmmword_18E5ED040;
      outlined init with copy of Any(v25, v21 + 32);
      print(_:separator:terminator:)();

      v22 = swift_allocObject();
      *(v22 + 16) = v23;
      *(v22 + 56) = swift_getMetatypeMetadata();
      *(v22 + 32) = v4;
      print(_:separator:terminator:)();

      result = _assertionFailure(_:_:file:line:flags:)();
      __break(1u);
    }
  }

  return result;
}

uint64_t Regex.Match.subscript.getter@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v5 = *a1;
  v34 = a1;
  v6 = v5;
  v7 = *(a2 + 16);
  v30 = *(v7 - 8);
  v8 = *(v30 + 64);
  MEMORY[0x1EEE9AC00](a1);
  v29 = v27 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *v3;
  v11 = *(v3 + 8);
  v12 = *(v3 + 16);
  v28 = *(v3 + 24);
  v13 = *(v12 + 16);
  v14 = MEMORY[0x1E69E7CC0];
  v32 = v7;
  v31 = v15;
  v33 = v12;
  if (v13)
  {
    v46 = MEMORY[0x1E69E7CC0];
    result = specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v13, 0);
    if (v13 <= *(v12 + 16))
    {
      v27[0] = v6;
      v27[1] = a3;
      v14 = v46;
      v17 = v12 + 32;
      while (1)
      {
        outlined init with copy of AnyRegexOutput.ElementRepresentation(v17, &v41);
        v44 = v10;
        v45 = v11;
        outlined init with copy of (range: Range<String.Index>, value: Any?)?(v42, v39, &_sSnySS5IndexVG5range_ypSg5valuetSgMd, &_sSnySS5IndexVG5range_ypSg5valuetSgMR);
        if (v40[3] == 1)
        {
          break;
        }

        outlined init with copy of Any?(v40, &v37);
        if (!v38)
        {

          outlined destroy of Any?(v40);
          goto LABEL_9;
        }

        outlined destroy of AnyRegexOutput.Element(&v41);
        outlined init with take of Any(&v37, v35);
        __swift_project_boxed_opaque_existential_0(v35, v36);
        DynamicType = swift_getDynamicType();
        __swift_destroy_boxed_opaque_existential_0(v35);
        outlined destroy of Any?(v40);
LABEL_10:
        v46 = v14;
        v20 = *(v14 + 16);
        v19 = *(v14 + 24);
        if (v20 >= v19 >> 1)
        {
          specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v19 > 1), v20 + 1, 1);
          v14 = v46;
        }

        *(v14 + 16) = v20 + 1;
        *(v14 + 8 * v20 + 32) = DynamicType;
        v17 += 88;
        if (!--v13)
        {
          v6 = v27[0];
          goto LABEL_14;
        }
      }

      outlined destroy of SplitSequence<SubstringSearcher>(v39, &_sSnySS5IndexVG5range_ypSg5valuetSgMd, &_sSnySS5IndexVG5range_ypSg5valuetSgMR);
LABEL_9:
      outlined destroy of AnyRegexOutput.Element(&v41);
      DynamicType = static TypeConstruction.optionalType<A>(of:depth:)();
      goto LABEL_10;
    }

    __break(1u);
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

LABEL_14:
  v41 = v14;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSayypXpGMd, &_sSayypXpGMR);
  lazy protocol witness table accessor for type [Any.Type] and conformance [A](&lazy protocol witness table cache variable for type [Any.Type] and conformance [A], &_sSayypXpGMd, &_sSayypXpGMR);
  v21 = static MemoryLayout.tupleElementIndex<A>(of:elementTypes:)();
  v23 = v22;

  if (v23)
  {
    v41 = v10;
    v42[0] = v11;
    v42[1] = v33;
    v43 = v28;
    v24 = v29;
    Regex.Match.output.getter(v31, v29);
    swift_getAtKeyPath();
    return (*(v30 + 8))(v24, v32);
  }

  if ((v21 & 0x8000000000000000) != 0)
  {
    goto LABEL_20;
  }

  if (v21 < *(v33 + 16))
  {
    outlined init with copy of AnyRegexOutput.ElementRepresentation(v33 + 88 * v21 + 32, &v41);
    v44 = v10;
    v45 = v11;
    v25 = v41;

    constructExistentialOutputComponent(from:component:optionalCount:)(v42, v25, v39);
    outlined destroy of AnyRegexOutput.Element(&v41);
    swift_getCanonicalSpecializedMetadata();
    v26 = *(v6 + *MEMORY[0x1E69E77B0] + 8);
    return swift_dynamicCast();
  }

LABEL_21:
  __break(1u);
  return result;
}

uint64_t Regex.Match.subscript.getter@<X0>(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  v4 = *v2;
  v5 = *(v2 + 1);
  v6 = *(v2 + 3);
  return Regex.Match.output.getter(a1, a2);
}

uint64_t Regex.Match.subscript.getter(uint64_t *a1)
{
  v2 = *a1;
  v4 = *v1;
  v3 = v1[1];
  v5 = v1[2];
  v6 = *(v5 + 16);

  if (v6)
  {
    v7 = 0;
    v8 = v5 + 32;
    while (v7 < *(v5 + 16))
    {
      outlined init with copy of AnyRegexOutput.ElementRepresentation(v8, v18);
      *(&v19 + 1) = v4;
      v20 = v3;
      v15 = v18[4];
      v16 = v19;
      v17 = v3;
      v11 = v18[0];
      v12 = v18[1];
      v13 = v18[2];
      v14 = v18[3];
      if ((v19 & 1) == 0 && *(&v15 + 1) == v2)
      {

        v21[4] = v15;
        v21[5] = v16;
        v22 = v17;
        v21[0] = v11;
        v21[1] = v12;
        v21[2] = v13;
        v21[3] = v14;
        v9 = v11;

        constructExistentialOutputComponent(from:component:optionalCount:)(v21 + 8, v9, v18);

        outlined destroy of AnyRegexOutput.Element(v21);
        return swift_dynamicCast();
      }

      ++v7;

      outlined destroy of AnyRegexOutput.Element(&v11);
      v8 += 88;
      if (v6 == v7)
      {
        goto LABEL_9;
      }
    }

    __break(1u);
  }

LABEL_9:

  __break(1u);
  return result;
}

uint64_t Regex.wholeMatch(in:)@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X2>, char a4@<W3>, void *a5@<X8>)
{
  v11 = type metadata accessor for MEProgram(0);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v14 = &v21 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = *v5;
  v16 = HIBYTE(a2) & 0xF;
  if ((a2 & 0x2000000000000000) == 0)
  {
    v16 = a1;
  }

  v17 = 7;
  if (((a2 >> 60) & ((a1 & 0x800000000000000) == 0)) != 0)
  {
    v17 = 11;
  }

  v18 = v17 | (v16 << 16);
  Regex.Program.loweredProgram.getter(v14);
  v20 = *(a3 + 16);
  static Executor._run(_:_:subjectBounds:searchBounds:mode:)(v14, a1, a2, 15, v18, 15, v18, a4, a5);
  return outlined destroy of MEProgram(v14, type metadata accessor for MEProgram);
}

uint64_t Regex.firstMatch(in:)@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v9 = type metadata accessor for MEProgram(0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v12 = &v18 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *v4;
  v14 = HIBYTE(a2) & 0xF;
  if ((a2 & 0x2000000000000000) == 0)
  {
    v14 = a1;
  }

  v15 = 7;
  if (((a2 >> 60) & ((a1 & 0x800000000000000) == 0)) != 0)
  {
    v15 = 11;
  }

  v16 = v15 | (v14 << 16);
  Regex.Program.loweredProgram.getter(v12);
  static Executor.firstMatch(_:_:subjectBounds:searchBounds:)(v12, a1, a2, 15, v16, 15, v16, *(a3 + 16), a4);
  return outlined destroy of MEProgram(v12, type metadata accessor for MEProgram);
}

uint64_t Regex.prefixMatch(in:)@<X0>(unint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, int a6@<W5>, void *a7@<X8>)
{
  v22 = a6;
  v14 = type metadata accessor for MEProgram(0);
  v15 = *(*(v14 - 8) + 64);
  result = MEMORY[0x1EEE9AC00](v14 - 8);
  v18 = &v21 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a2 >> 14 < a1 >> 14)
  {
    __break(1u);
  }

  else
  {
    v19 = *v7;
    Regex.Program.loweredProgram.getter(v18);
    v20 = *(a5 + 16);
    static Executor._run(_:_:subjectBounds:searchBounds:mode:)(v18, a3, a4, a1, a2, a1, a2, v22, a7);
    return outlined destroy of MEProgram(v18, type metadata accessor for MEProgram);
  }

  return result;
}

uint64_t BidirectionalCollection<>.wholeMatch<A>(of:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, void (*a7)(uint64_t, uint64_t, uint64_t, uint64_t, uint64_t))
{
  (*(a5 + 16))(&v16, a3, a5);
  v9 = *(a4 + 8);
  Collection.subscript.getter();
  swift_getAssociatedTypeWitness();
  v10 = type metadata accessor for Regex();
  a7(v12, v13, v14, v15, v10);
}

void *RegexComponent.wrapInOption(_:addingIf:)@<X0>(uint64_t a1@<X0>, int a2@<W1>, uint64_t a3@<X2>, uint64_t a4@<X3>, void *a5@<X8>)
{
  v32 = a3;
  v31 = a2;
  v30 = a1;
  v33 = a5;
  v6 = type metadata accessor for Source.Location();
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = type metadata accessor for AST.MatchingOption.Kind();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v8);
  v12 = &v30 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for AST.MatchingOptionSequence();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  MEMORY[0x1EEE9AC00](v13);
  v17 = &v30 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy12_RegexParser3ASTV14MatchingOptionVGMd, &_ss23_ContiguousArrayStorageCy12_RegexParser3ASTV14MatchingOptionVGMR);
  v18 = *(type metadata accessor for AST.MatchingOption() - 8);
  v19 = *(v18 + 72);
  v20 = (*(v18 + 80) + 32) & ~*(v18 + 80);
  *(swift_allocObject() + 16) = xmmword_18E5ED040;
  (*(v9 + 16))(v12, v30, v8);
  static Source.Location.fake.getter();
  AST.MatchingOption.init(_:location:)();
  if (v31)
  {
    AST.MatchingOptionSequence.init(adding:)();
  }

  else
  {
    AST.MatchingOptionSequence.init(removing:)();
  }

  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s17_StringProcessing7DSLTreeV4_ASTO9GroupKindV_AC4NodeOtMd, &_s17_StringProcessing7DSLTreeV4_ASTO9GroupKindV_AC4NodeOtMR);
  v22 = swift_allocBox();
  v24 = v23;
  v25 = *(v21 + 48);
  (*(v14 + 32))(v23, v17, v13);
  v26 = *MEMORY[0x1E69E8E58];
  v27 = type metadata accessor for AST.Group.Kind();
  (*(*(v27 - 8) + 104))(v24, v26, v27);
  (*(a4 + 16))(&v34, v32, a4);
  v28 = v34;
  swift_getAssociatedTypeWitness();
  *(v24 + v25) = *(v28 + 24);

  type metadata accessor for Regex.Program();
  result = swift_allocObject();
  result[3] = v22 | 0x1000000000000004;
  result[4] = 0;
  result[2] = 0;
  *v33 = result;
  return result;
}

uint64_t Regex.wordBoundaryKind(_:)@<X0>(unsigned __int8 *a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v7 = type metadata accessor for AST.MatchingOption.Kind();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v7);
  v11 = v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  LODWORD(a1) = *a1;
  v14[1] = *v3;
  (*(v8 + 104))(v11, *MEMORY[0x1E69E8A48], v7);
  WitnessTable = swift_getWitnessTable();
  RegexComponent.wrapInOption(_:addingIf:)(v11, a1, a2, WitnessTable, a3);
  return (*(v8 + 8))(v11, v7);
}

uint64_t Regex.ignoresCase(_:)@<X0>(int a1@<W0>, uint64_t a2@<X1>, unsigned int *a3@<X2>, void *a4@<X8>)
{
  v9 = type metadata accessor for AST.MatchingOption.Kind();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v9);
  v13 = v16 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16[1] = *v4;
  (*(v10 + 104))(v13, *a3, v9);
  WitnessTable = swift_getWitnessTable();
  RegexComponent.wrapInOption(_:addingIf:)(v13, a1, a2, WitnessTable, a4);
  return (*(v10 + 8))(v13, v9);
}

uint64_t Regex.repetitionBehavior(_:)@<X0>(unsigned __int8 *a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v7 = type metadata accessor for AST.MatchingOption.Kind();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  v10 = MEMORY[0x1EEE9AC00](v7);
  v12 = v19 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v14 = v19 - v13;
  v15 = *a1;
  v19[1] = *v3;
  if (v15 == 2)
  {
    (*(v8 + 104))(v19 - v13, *MEMORY[0x1E69E8A38], v7);
    WitnessTable = swift_getWitnessTable();
    RegexComponent.wrapInOption(_:addingIf:)(v14, 1, a2, WitnessTable, a3);
    return (*(v8 + 8))(v14, v7);
  }

  else
  {
    (*(v8 + 104))(v12, *MEMORY[0x1E69E8A28], v7);
    v18 = swift_getWitnessTable();
    RegexComponent.wrapInOption(_:addingIf:)(v12, v15 == 1, a2, v18, a3);
    return (*(v8 + 8))(v12, v7);
  }
}

uint64_t Regex.matchingSemantics(_:)@<X0>(char *a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v7 = type metadata accessor for AST.MatchingOption.Kind();
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x1EEE9AC00](v7);
  v11 = v17 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *a1;
  v13 = (v9 + 8);
  v17[1] = *v3;
  if (v12)
  {
    v14 = MEMORY[0x1E69E8A50];
  }

  else
  {
    v14 = MEMORY[0x1E69E8A68];
  }

  (*(v9 + 104))(v11, *v14, v7);
  WitnessTable = swift_getWitnessTable();
  RegexComponent.wrapInOption(_:addingIf:)(v11, 1, a2, WitnessTable, a3);
  return (*v13)(v11, v7);
}

uint64_t Regex._nsreCompatibility.getter@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v5 = type metadata accessor for AST.MatchingOption.Kind();
  v6 = *(v5 - 8);
  v7 = v6[8];
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v14 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = *v2;
  v10 = v6[13];
  v10(v9, *MEMORY[0x1E69E8A20], v5);
  WitnessTable = swift_getWitnessTable();
  RegexComponent.wrapInOption(_:addingIf:)(v9, 1, a1, WitnessTable, &v15);
  v12 = v6[1];
  v12(v9, v5);
  v14 = v15;
  v10(v9, *MEMORY[0x1E69E8A50], v5);
  RegexComponent.wrapInOption(_:addingIf:)(v9, 1, a1, WitnessTable, a2);
  v12(v9, v5);
}

Swift::Int RegexSemanticLevel.hashValue.getter()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  MEMORY[0x193ACEF90](v1);
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance MatchMode()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  MEMORY[0x193ACEF90](v1);
  return Hasher._finalize()();
}

uint64_t matchesWord #1 (at:) in Processor.atSimpleBoundary(_:_:)(unint64_t a1, char a2, unint64_t *a3, char a4)
{
  v8 = type metadata accessor for Unicode.Scalar.Properties();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v8);
  v12 = v22 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *a3;
  v14 = a3[1];
  if (a2)
  {
    _StringGuts.validateScalarIndex(_:)(a1, v13, v14);
    if ((v14 & 0x1000000000000000) != 0)
    {
      v18 = _StringGuts.foreignErrorCorrectedScalar(startingAt:)();
    }

    else
    {
      if ((v14 & 0x2000000000000000) != 0)
      {
        v22[0] = v13;
        v22[1] = v14 & 0xFFFFFFFFFFFFFFLL;
      }

      else if ((v13 & 0x1000000000000000) == 0)
      {
        _StringObject.sharedUTF8.getter();
      }

      v18 = _decodeScalar(_:startingAt:)();
    }

    v19 = v18;
    Unicode.Scalar.properties.getter();
    v20 = Unicode.Scalar.Properties.isAlphabetic.getter();
    (*(v9 + 8))(v12, v8);
    if ((v20 & 1) == 0 && v19 != 95)
    {
      v17 = 0;
      return v17 & 1;
    }

    v16 = v19 < 0x80;
LABEL_15:
    v17 = v16 | a4 ^ 1;
    return v17 & 1;
  }

  String.subscript.getter();
  if (Character.isWordCharacter.getter())
  {
    v15 = Character.asciiValue.getter();

    v16 = (v15 & 0x100) == 0;
    goto LABEL_15;
  }

  v17 = 0;
  return v17 & 1;
}

void *_RegexFactory.ignoreCapturesInTypedOutput<A>(_:)@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, void *a3@<X8>)
{
  v6 = *(a2 + 16);
  v6(&v12, a1, a2);
  v7 = *(v12 + 24);

  v8 = DSLTree.Node.hasChildNodes.getter(v7);

  if (v8)
  {
    v9 = swift_allocObject();
    v6(&v12, a1, a2);
    *(v9 + 16) = *(v12 + 24);

    __swift_instantiateConcreteTypeFromMangledNameV2(&_s17_StringProcessing5RegexV7ProgramCySs_GMd, &_s17_StringProcessing5RegexV7ProgramCySs_GMR);
    result = swift_allocObject();
    result[3] = v9 | 0x2000000000000000;
  }

  else
  {
    v6(&v12, a1, a2);
    v11 = *(v12 + 24);

    __swift_instantiateConcreteTypeFromMangledNameV2(&_s17_StringProcessing5RegexV7ProgramCySs_GMd, &_s17_StringProcessing5RegexV7ProgramCySs_GMR);
    result = swift_allocObject();
    result[3] = v11;
  }

  result[4] = 0;
  result[2] = 0;
  *a3 = result;
  return result;
}

void *_RegexFactory.accumulate<A, B, C>(_:_:)@<X0>(uint64_t a1@<X3>, uint64_t a2@<X4>, uint64_t a3@<X5>, uint64_t a4@<X6>, uint64_t (*a5)(uint64_t, uint64_t)@<X7>, void *a6@<X8>)
{
  (*(a3 + 16))(&v15, a1, a3);
  v10 = *(v15 + 24);

  (*(a4 + 16))(&v14, a2, a4);
  v11 = *(v14 + 24);

  v12 = a5(v11, v10);

  type metadata accessor for Regex.Program();
  result = swift_allocObject();
  result[3] = v12;
  result[4] = 0;
  result[2] = 0;
  *a6 = result;
  return result;
}

void *_RegexFactory.assertion<A>(_:)@<X0>(char *a1@<X0>, void *a2@<X8>)
{
  return _RegexFactory.assertion<A>(_:)(a1, a2);
}

{
  v3 = *a1;
  type metadata accessor for DSLTree.Atom(0);
  v4 = swift_allocBox();
  *v5 = v3;
  swift_storeEnumTagMultiPayload();
  type metadata accessor for Regex.Program();
  result = swift_allocObject();
  result[3] = v4 | 0x4000000000000000;
  result[4] = 0;
  result[2] = 0;
  *a2 = result;
  return result;
}

double _RegexFactory.empty<A>()@<D0>(uint64_t *a1@<X8>)
{
  type metadata accessor for Regex.Program();
  v2 = swift_allocObject();
  *(v2 + 32) = 0;
  result = 0.0;
  *(v2 + 16) = xmmword_18E5ED270;
  *a1 = v2;
  return result;
}

void *_RegexFactory.scalar<A>(_:)@<X0>(int a1@<W0>, void *a2@<X8>)
{
  type metadata accessor for DSLTree.Atom(0);
  v4 = swift_allocBox();
  *v5 = a1;
  swift_storeEnumTagMultiPayload();
  type metadata accessor for Regex.Program();
  result = swift_allocObject();
  result[3] = v4 | 0x4000000000000000;
  result[4] = 0;
  result[2] = 0;
  *a2 = result;
  return result;
}

uint64_t _RegexFactory.char<A>(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  type metadata accessor for DSLTree.Atom(0);
  v6 = swift_allocBox();
  *v7 = a1;
  v7[1] = a2;
  swift_storeEnumTagMultiPayload();
  type metadata accessor for Regex.Program();
  v8 = swift_allocObject();
  v8[3] = v6 | 0x4000000000000000;
  v8[4] = 0;
  v8[2] = 0;
  *a3 = v8;
}

void *_RegexFactory.symbolicReference<A>(_:)@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  type metadata accessor for DSLTree.Atom(0);
  v4 = swift_allocBox();
  *v5 = v3;
  swift_storeEnumTagMultiPayload();
  type metadata accessor for Regex.Program();
  result = swift_allocObject();
  result[3] = v4 | 0x4000000000000000;
  result[4] = 0;
  result[2] = 0;
  *a2 = result;
  return result;
}

uint64_t _RegexFactory.customCharacterClass<A>(_:)@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  v4 = *(a1 + 8);
  v5 = swift_allocObject();
  *(v5 + 16) = v3;
  *(v5 + 24) = v4;
  v6 = v5 | 0x3000000000000004;
  type metadata accessor for Regex.Program();
  v7 = swift_allocObject();
  v7[3] = v6;
  v7[4] = 0;
  v7[2] = 0;
  *a2 = v7;
}

void *_RegexFactory.zeroOrOne<A, B>(_:_:)@<X0>(_BYTE *a1@<X1>, uint64_t a2@<X3>, uint64_t a3@<X4>, unsigned int *a4@<X5>, void *a5@<X8>)
{
  v28 = a5;
  v9 = type metadata accessor for DSLTree.QuantificationKind(0);
  v10 = *(*(v9 - 8) + 64);
  v11 = MEMORY[0x1EEE9AC00](v9);
  v13 = &v28 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v15 = &v28 - v14;
  if (*a1 > 1u)
  {
    if (*a1 != 2)
    {
      swift_storeEnumTagMultiPayload();
      goto LABEL_9;
    }

    v16 = MEMORY[0x1E69E8A80];
  }

  else if (*a1)
  {
    v16 = MEMORY[0x1E69E8A90];
  }

  else
  {
    v16 = MEMORY[0x1E69E8A88];
  }

  v17 = *v16;
  v18 = type metadata accessor for AST.Quantification.Kind();
  (*(*(v18 - 8) + 104))(v13, v17, v18);
  swift_storeEnumTagMultiPayload();
  outlined init with take of DSLTree.QuantificationKind(v13, v15, type metadata accessor for DSLTree.QuantificationKind);
LABEL_9:
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s17_StringProcessing7DSLTreeV4_ASTO20QuantificationAmountV_AC0E4KindOAC4NodeOtMd, &_s17_StringProcessing7DSLTreeV4_ASTO20QuantificationAmountV_AC0E4KindOAC4NodeOtMR);
  v20 = swift_allocBox();
  v22 = v21;
  v23 = *(v19 + 48);
  v24 = *(v19 + 64);
  v25 = *a4;
  v26 = type metadata accessor for AST.Quantification.Amount();
  (*(*(v26 - 8) + 104))(v22, v25, v26);
  outlined init with take of DSLTree.QuantificationKind(v15, v22 + v23, type metadata accessor for DSLTree.QuantificationKind);
  (*(a3 + 16))(&v29, a2, a3);
  *(v22 + v24) = *(v29 + 24);

  type metadata accessor for Regex.Program();
  result = swift_allocObject();
  result[3] = v20 | 0x3000000000000000;
  result[4] = 0;
  result[2] = 0;
  *v28 = result;
  return result;
}

void *_RegexFactory.exactly<A, B>(_:_:)@<X0>(uint64_t a1@<X3>, uint64_t a2@<X4>, void *a3@<X8>)
{
  v5 = type metadata accessor for Source.Location();
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s17_StringProcessing7DSLTreeV4_ASTO20QuantificationAmountV_AC0E4KindOAC4NodeOtMd, &_s17_StringProcessing7DSLTreeV4_ASTO20QuantificationAmountV_AC0E4KindOAC4NodeOtMR);
  v8 = swift_allocBox();
  v10 = v9;
  v11 = *(v7 + 48);
  v12 = *(v7 + 64);
  static Source.Location.fake.getter();
  AST.Atom.Number.init(_:at:)();
  v13 = *MEMORY[0x1E69E8AC8];
  v14 = type metadata accessor for AST.Quantification.Amount();
  (*(*(v14 - 8) + 104))(v10, v13, v14);
  type metadata accessor for DSLTree.QuantificationKind(0);
  swift_storeEnumTagMultiPayload();
  (*(a2 + 16))(&v17, a1, a2);
  *(v10 + v12) = *(v17 + 24);

  type metadata accessor for Regex.Program();
  result = swift_allocObject();
  result[3] = v8 | 0x3000000000000000;
  result[4] = 0;
  result[2] = 0;
  *a3 = result;
  return result;
}

void *_RegexFactory.repeating<A, B>(_:_:_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X2>, uint64_t a4@<X5>, uint64_t a5@<X6>, void *a6@<X8>)
{
  v13 = *a3;
  (*(a5 + 16))(&v12, a4, a5);
  v9 = *(v12 + 24);

  v10 = specialized static DSLTree.Node.repeating(_:_:_:)(a1, a2, &v13, v9);

  type metadata accessor for Regex.Program();
  result = swift_allocObject();
  result[3] = v10;
  result[4] = 0;
  result[2] = 0;
  *a6 = result;
  return result;
}

void *_RegexFactory.atomicNonCapturing<A, B>(_:)@<X0>(uint64_t a1@<X2>, uint64_t a2@<X3>, unsigned int *a3@<X4>, void *a4@<X8>)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s17_StringProcessing7DSLTreeV4_ASTO9GroupKindV_AC4NodeOtMd, &_s17_StringProcessing7DSLTreeV4_ASTO9GroupKindV_AC4NodeOtMR);
  v9 = swift_allocBox();
  v11 = v10;
  v12 = *(v8 + 48);
  v13 = *a3;
  v14 = type metadata accessor for AST.Group.Kind();
  (*(*(v14 - 8) + 104))(v11, v13, v14);
  (*(a2 + 16))(&v16, a1, a2);
  *(v11 + v12) = *(v16 + 24);

  type metadata accessor for Regex.Program();
  result = swift_allocObject();
  result[3] = v9 | 0x1000000000000004;
  result[4] = 0;
  result[2] = 0;
  *a4 = result;
  return result;
}

void *_RegexFactory.orderedChoice<A, B>(_:)@<X0>(uint64_t a1@<X2>, uint64_t a2@<X3>, void *a3@<X8>)
{
  v6 = swift_allocObject();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy17_StringProcessing7DSLTreeV4NodeOGMd, &_ss23_ContiguousArrayStorageCy17_StringProcessing7DSLTreeV4NodeOGMR);
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_18E5ED040;
  (*(a2 + 16))(&v9, a1, a2);
  *(v7 + 32) = *(v9 + 24);

  *(v6 + 16) = v7;
  type metadata accessor for Regex.Program();
  result = swift_allocObject();
  result[3] = v6;
  result[4] = 0;
  result[2] = 0;
  *a3 = result;
  return result;
}

void *_RegexFactory.capture<A, B>(_:)@<X0>(uint64_t a1@<X2>, uint64_t a2@<X3>, void *a3@<X8>)
{
  v6 = swift_allocObject();
  *(v6 + 24) = 0;
  *(v6 + 32) = 0;
  *(v6 + 16) = 0;
  *(v6 + 40) = 1;
  (*(a2 + 16))(&v8, a1, a2);
  *(v6 + 48) = *(v8 + 24);

  type metadata accessor for Regex.Program();
  *(v6 + 56) = 0u;
  *(v6 + 72) = 0u;
  *(v6 + 88) = 0;
  result = swift_allocObject();
  result[3] = v6 | 0x1000000000000000;
  result[4] = 0;
  result[2] = 0;
  *a3 = result;
  return result;
}

void *_RegexFactory.capture<A, B>(_:_:)@<X0>(uint64_t a1@<X1>, uint64_t a2@<X3>, uint64_t a3@<X4>, void *a4@<X8>)
{
  v8 = swift_allocObject();
  *(v8 + 16) = 0;
  *(v8 + 24) = 0;
  *(v8 + 32) = a1;
  *(v8 + 40) = 0;
  (*(a3 + 16))(&v10, a2, a3);
  *(v8 + 48) = *(v10 + 24);

  type metadata accessor for Regex.Program();
  *(v8 + 56) = 0u;
  *(v8 + 72) = 0u;
  *(v8 + 88) = 0;
  result = swift_allocObject();
  result[3] = v8 | 0x1000000000000000;
  result[4] = 0;
  result[2] = 0;
  *a4 = result;
  return result;
}

void *_RegexFactory.capture<A, B, C, D>(_:_:_:)@<X0>(uint64_t a1@<X1>, char a2@<W2>, uint64_t a3@<X3>, uint64_t a4@<X4>, uint64_t a5@<X6>, uint64_t a6@<X7>, void *a7@<X8>, uint64_t a8, uint64_t a9, void (*a10)(_OWORD *__return_ptr, uint64_t, uint64_t, uint64_t, uint64_t))
{
  v15 = swift_allocObject();
  v16 = v15;
  *(v15 + 16) = 0;
  *(v15 + 24) = 0;
  if (a2)
  {
    v17 = 0;
  }

  else
  {
    v17 = a1;
  }

  *(v15 + 32) = v17;
  *(v15 + 40) = a2 & 1;
  (*(a9 + 16))(&v23, a8, a9);
  *(v16 + 48) = *(v23 + 24);

  a10(v24, a3, a4, a5, a6);
  v18 = v25;
  v19 = v24[1];
  *(v16 + 56) = v24[0];
  *(v16 + 72) = v19;
  *(v16 + 88) = v18;
  type metadata accessor for Regex.Program();
  result = swift_allocObject();
  result[3] = v16 | 0x1000000000000000;
  result[4] = 0;
  result[2] = 0;
  *a7 = result;
  return result;
}

uint64_t TypedIndex.startIndex.getter(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = *(a1 + 32);
  dispatch thunk of Collection.startIndex.getter();
  return v4;
}

uint64_t TypedIndex.index(_:offsetBy:limitedBy:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = *(a4 + 16);
  v5 = *(a4 + 32);
  dispatch thunk of Collection.index(_:offsetBy:limitedBy:)();
  if (v8)
  {
    return 0;
  }

  else
  {
    return v7;
  }
}

uint64_t TypedIndex.endIndex.getter(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = *(a1 + 32);
  dispatch thunk of Collection.endIndex.getter();
  return v4;
}

uint64_t MutableCollection<>.subscript.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char *a4@<X8>)
{
  v52 = a1;
  v50 = a4;
  v6 = *(a3 + 8);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v46 = *(TupleTypeMetadata2 - 8);
  v8 = *(v46 + 64);
  v9 = MEMORY[0x1EEE9AC00](TupleTypeMetadata2);
  v42 = &v39 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x1EEE9AC00](v9);
  v13 = &v39 - v12;
  v44 = *(AssociatedTypeWitness - 8);
  v14 = *(v44 + 64);
  v15 = MEMORY[0x1EEE9AC00](v11);
  v17 = &v39 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v19 = &v39 - v18;
  swift_getAssociatedConformanceWitness();
  v47 = type metadata accessor for Range();
  v45 = *(v47 - 8);
  v20 = *(v45 + 64);
  MEMORY[0x1EEE9AC00](v47);
  v22 = &v39 - v21;
  dispatch thunk of Collection.startIndex.getter();
  v51 = v4;
  v48 = v6;
  v49 = a2;
  dispatch thunk of Collection.endIndex.getter();
  result = dispatch thunk of static Comparable.<= infix(_:_:)();
  if (result)
  {
    v24 = v44;
    v25 = *(v44 + 32);
    v25(v13, v19, AssociatedTypeWitness);
    v26 = TupleTypeMetadata2;
    v25(&v13[*(TupleTypeMetadata2 + 48)], v17, AssociatedTypeWitness);
    v27 = v25;
    v28 = v46;
    v29 = v42;
    (*(v46 + 16))(v42, v13, v26);
    v40 = *(v26 + 48);
    v27(v22, v29, AssociatedTypeWitness);
    v41 = v27;
    v30 = *(v24 + 8);
    v30(&v29[v40], AssociatedTypeWitness);
    (*(v28 + 32))(v29, v13, v26);
    v31 = v47;
    v27(&v22[*(v47 + 36)], &v29[*(v26 + 48)], AssociatedTypeWitness);
    v30(v29, AssociatedTypeWitness);
    v32 = v51;
    v33 = v52;
    v34 = v49;
    dispatch thunk of Collection._failEarlyRangeCheck(_:bounds:)();
    v35 = v45;
    (*(v45 + 8))(v22, v31);
    v36 = type metadata accessor for Slice();
    v37 = v50;
    (*(*(v34 - 8) + 16))(&v50[*(v36 + 40)], v32, v34);
    (*(v35 + 16))(v22, v33, v31);
    v38 = v41;
    v41(v37, v22, AssociatedTypeWitness);
    return v38(&v37[*(v36 + 36)], &v22[*(v31 + 36)], AssociatedTypeWitness);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t protocol witness for RawRepresentable.init(rawValue:) in conformance TypedIndex<A, B>@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  TypedIndex.init(rawValue:)(a1, *(a2 + 16), a3);
  v5 = *(*(a2 - 8) + 56);

  return v5(a3, 0, 1, a2);
}

uint64_t TypedIndex.index(after:)(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  v3 = *(a2 + 32);
  dispatch thunk of Collection.index(after:)();
  return v5;
}

uint64_t TypedIndex.subscript.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v13 = a1;
  v4 = *(a2 + 16);
  v5 = *(a2 + 32);
  v6 = dispatch thunk of Collection.subscript.read();
  v8 = v7;
  v9 = *(v5 + 8);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  (*(*(AssociatedTypeWitness - 8) + 16))(a3, v8, AssociatedTypeWitness);
  return v6(v12, 0);
}

uint64_t TypedIndex.distance(from:to:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a3 + 16);
  v4 = *(a3 + 32);
  return dispatch thunk of Collection.distance(from:to:)();
}

uint64_t TypedIndex.index(_:offsetBy:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a3 + 16);
  v4 = *(a3 + 32);
  dispatch thunk of Collection.index(_:offsetBy:)();
  return v6;
}

uint64_t protocol witness for Collection.startIndex.getter in conformance TypedIndex<A, B>@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = TypedIndex.startIndex.getter(a1);
  *a2 = result;
  return result;
}

uint64_t protocol witness for Collection.endIndex.getter in conformance TypedIndex<A, B>@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = TypedIndex.endIndex.getter(a1);
  *a2 = result;
  return result;
}

void (*protocol witness for Collection.subscript.read in conformance TypedIndex<A, B>(uint64_t **a1, uint64_t *a2, uint64_t a3))(void *a1)
{
  if (MEMORY[0x1E69E7D08])
  {
    v6 = swift_coroFrameAlloc();
  }

  else
  {
    v6 = malloc(0x28uLL);
  }

  *a1 = v6;
  v6[4] = TypedIndex.subscript.read(v6, *a2, a3);
  return protocol witness for Collection.subscript.read in conformance TypedIndex<A, B>;
}

void protocol witness for Collection.subscript.read in conformance TypedIndex<A, B>(void *a1)
{
  v1 = *a1;
  (*(*a1 + 32))(*a1);

  free(v1);
}

void (*TypedIndex.subscript.read(uint64_t *a1, uint64_t a2, uint64_t a3))(void *a1)
{
  v6 = *(*(a3 + 32) + 8);
  v7 = *(a3 + 16);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  *a1 = AssociatedTypeWitness;
  v9 = *(AssociatedTypeWitness - 8);
  a1[1] = v9;
  if (MEMORY[0x1E69E7D08])
  {
    v10 = swift_coroFrameAlloc();
  }

  else
  {
    v10 = malloc(*(v9 + 64));
  }

  a1[2] = v10;
  TypedIndex.subscript.getter(a2, a3, v10);
  return TypedIndex.subscript.read;
}

void TypedIndex.subscript.read(void *a1)
{
  v1 = a1[2];
  (*(a1[1] + 8))(v1, *a1);

  free(v1);
}

uint64_t protocol witness for Collection._failEarlyRangeCheck(_:bounds:) in conformance TypedIndex<A, B>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  return specialized Collection._failEarlyRangeCheck(_:bounds:)(a1, a2, a3, a4, MEMORY[0x1E69E66A8], MEMORY[0x1E69E5F48]);
}

{
  return specialized Collection._failEarlyRangeCheck(_:bounds:)(a1, a2, a3, a4, MEMORY[0x1E69E5F90], MEMORY[0x1E69E5F58]);
}

uint64_t protocol witness for Collection.index(after:) in conformance TypedIndex<A, B>@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  result = TypedIndex.index(after:)(*a1, a2);
  *a3 = result;
  return result;
}

uint64_t protocol witness for Collection.formIndex(after:) in conformance TypedIndex<A, B>(uint64_t *a1, uint64_t a2)
{
  result = TypedIndex.index(after:)(*a1, a2);
  *a1 = result;
  return result;
}

uint64_t protocol witness for Sequence.makeIterator() in conformance TypedIndex<A, B>@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *(a1 - 8);
  (*(v5 + 16))(a2, v2, a1);
  swift_getWitnessTable();
  v6 = *(type metadata accessor for IndexingIterator() + 36);
  v7 = TypedIndex.startIndex.getter(a1);
  result = (*(v5 + 8))(v2, a1);
  *(a2 + v6) = v7;
  return result;
}

uint64_t protocol witness for Sequence.underestimatedCount.getter in conformance TypedIndex<A, B>(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEE698E0](a1, WitnessTable);
}

uint64_t protocol witness for Sequence._copyToContiguousArray() in conformance TypedIndex<A, B>(uint64_t a1)
{
  swift_getWitnessTable();
  v3 = specialized Collection._copyToContiguousArray()();
  (*(*(a1 - 8) + 8))(v1, a1);
  return v3;
}

void (*TypedIndex<>.subscript.modify(uint64_t *a1, uint64_t a2, uint64_t a3))(void *a1)
{
  if (MEMORY[0x1E69E7D08])
  {
    v6 = swift_coroFrameAlloc();
  }

  else
  {
    v6 = malloc(0x30uLL);
  }

  *a1 = v6;
  *(v6 + 32) = a2;
  v7 = *(a3 + 16);
  *(v6 + 40) = dispatch thunk of MutableCollection.subscript.modify();
  return TypedIndex<>.subscript.modify;
}

void TypedIndex<>.subscript.modify(void *a1)
{
  v1 = *a1;
  (*(*a1 + 40))(*a1, 0);

  free(v1);
}

uint64_t protocol witness for MutableCollection.subscript.setter in conformance <> TypedIndex<A, B>(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4)
{
  v5 = *(a4 - 8);
  v14 = *a2;
  v6 = *(a3 + 16);
  v7 = dispatch thunk of MutableCollection.subscript.modify();
  v9 = v8;
  v10 = *(*(v5 + 8) + 8);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  (*(*(AssociatedTypeWitness - 8) + 40))(v9, a1, AssociatedTypeWitness);
  return v7(v13, 0);
}

uint64_t (*protocol witness for MutableCollection.subscript.modify in conformance <> TypedIndex<A, B>(uint64_t **a1, uint64_t *a2, uint64_t a3, uint64_t a4))()
{
  if (MEMORY[0x1E69E7D08])
  {
    v8 = swift_coroFrameAlloc();
  }

  else
  {
    v8 = malloc(0x28uLL);
  }

  *a1 = v8;
  v9 = *(a4 - 8);
  v8[4] = TypedIndex<>.subscript.modify(v8, *a2, a3);
  return protocol witness for MutableCollection.subscript.modify in conformance <> TypedIndex<A, B>;
}

uint64_t protocol witness for MutableCollection.subscript.setter in conformance <> TypedIndex<A, B>(uint64_t a1, __int128 *a2, uint64_t a3, uint64_t a4)
{
  v7 = *a2;
  specialized MutableCollection<>.subscript.setter(a1, &v7, a3, a4);
  swift_getWitnessTable();
  v5 = type metadata accessor for Slice();
  return (*(*(v5 - 8) + 8))(a1, v5);
}

uint64_t (*protocol witness for MutableCollection.subscript.modify in conformance <> TypedIndex<A, B>(void *a1, uint64_t a2, uint64_t a3, uint64_t a4))()
{
  if (MEMORY[0x1E69E7D08])
  {
    v8 = swift_coroFrameAlloc();
  }

  else
  {
    v8 = malloc(0x28uLL);
  }

  *a1 = v8;
  v8[4] = MutableCollection<>.subscript.modify(v8, a2, a3, a4);
  return protocol witness for MutableCollection.subscript.modify in conformance <> TypedIndex<A, B>;
}

void protocol witness for MutableCollection.subscript.modify in conformance <> TypedIndex<A, B>(void *a1)
{
  v1 = *a1;
  (*(*a1 + 32))(*a1);

  free(v1);
}

void (*MutableCollection<>.subscript.modify(void *a1, uint64_t a2, uint64_t a3, uint64_t a4))(uint64_t **a1, char a2)
{
  v9 = MEMORY[0x1E69E7D08];
  if (MEMORY[0x1E69E7D08])
  {
    v10 = swift_coroFrameAlloc();
  }

  else
  {
    v10 = malloc(0x50uLL);
  }

  v11 = v10;
  *a1 = v10;
  v10[1] = a4;
  v10[2] = v4;
  *v10 = a3;
  v12 = *(a4 + 8);
  v13 = type metadata accessor for Slice();
  v11[3] = v13;
  v14 = *(v13 - 8);
  v11[4] = v14;
  v15 = *(v14 + 64);
  if (v9)
  {
    v11[5] = swift_coroFrameAlloc();
    v16 = swift_coroFrameAlloc();
  }

  else
  {
    v11[5] = malloc(*(v14 + 64));
    v16 = malloc(v15);
  }

  v17 = v16;
  v11[6] = v16;
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  v18 = type metadata accessor for Range();
  v11[7] = v18;
  v19 = *(v18 - 8);
  v20 = v19;
  v11[8] = v19;
  if (v9)
  {
    v21 = swift_coroFrameAlloc();
  }

  else
  {
    v21 = malloc(*(v19 + 64));
  }

  v11[9] = v21;
  (*(v20 + 16))();
  MutableCollection<>.subscript.getter(a2, a3, a4, v17);
  return MutableCollection<>.subscript.modify;
}

void MutableCollection<>.subscript.modify(uint64_t **a1, char a2)
{
  v2 = *a1;
  v4 = (*a1)[4];
  v3 = (*a1)[5];
  v6 = (*a1)[8];
  v5 = (*a1)[9];
  v7 = (*a1)[6];
  v14 = (*a1)[7];
  v9 = (*a1)[2];
  v8 = (*a1)[3];
  v11 = **a1;
  v10 = (*a1)[1];
  if (a2)
  {
    (*(v4 + 16))(v3, v7, v2[3]);
    swift_getWitnessTable();
    _writeBackMutableSlice<A, B>(_:bounds:slice:)();
    v12 = *(v4 + 8);
    v12(v3, v8);
    (*(v6 + 8))(v5, v14);
    v12(v7, v8);
  }

  else
  {
    v13 = v2[3];
    swift_getWitnessTable();
    _writeBackMutableSlice<A, B>(_:bounds:slice:)();
    (*(v6 + 8))(v5, v14);
    (*(v4 + 8))(v7, v8);
  }

  free(v5);
  free(v7);
  free(v3);

  free(v2);
}

uint64_t TypedIndex<>.index(before:)(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  dispatch thunk of BidirectionalCollection.index(before:)();
  return v4;
}

uint64_t protocol witness for BidirectionalCollection.index(before:) in conformance <> TypedIndex<A, B>@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  v5 = *(a3 - 8);
  result = TypedIndex<>.index(before:)(*a1, a2);
  *a4 = result;
  return result;
}

uint64_t protocol witness for BidirectionalCollection.formIndex(before:) in conformance <> TypedIndex<A, B>(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v4 = *(a3 - 8);
  result = TypedIndex<>.index(before:)(*a1, a2);
  *a1 = result;
  return result;
}

uint64_t protocol witness for BidirectionalCollection.index(_:offsetBy:) in conformance <> TypedIndex<A, B>@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  result = TypedIndex.index(_:offsetBy:)(*a1, a2, a3);
  *a4 = result;
  return result;
}

uint64_t protocol witness for BidirectionalCollection.index(_:offsetBy:limitedBy:) in conformance <> TypedIndex<A, B>@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  result = TypedIndex.index(_:offsetBy:limitedBy:)(*a1, a2, *a3, a4);
  *a5 = result;
  *(a5 + 8) = v7 & 1;
  return result;
}

uint64_t TypedIndex<>.init(arrayLiteral:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v5 = *(a2 - 8);
  v6 = *(v5 + 64);
  v7 = MEMORY[0x1EEE9AC00](a1);
  v9 = v13 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13[1] = v7;
  v11 = *(*(v10 + 8) + 8);
  swift_getAssociatedTypeWitness();
  type metadata accessor for Array();
  swift_getWitnessTable();
  dispatch thunk of RangeReplaceableCollection.init<A>(_:)();
  return (*(v5 + 32))(a3, v9, a2);
}

uint64_t protocol witness for Hashable.hashValue.getter in conformance TypedInt<A>(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();
  v5 = MEMORY[0x1E69E6540];

  return MEMORY[0x1EEE69348](a1, a2, WitnessTable, v5);
}

uint64_t protocol witness for Hashable.hash(into:) in conformance TypedInt<A>(uint64_t a1, uint64_t a2, uint64_t a3)
{
  WitnessTable = swift_getWitnessTable();
  v7 = MEMORY[0x1E69E6540];

  return MEMORY[0x1EEE69358](a1, a2, a3, WitnessTable, v7);
}

uint64_t protocol witness for Hashable._rawHashValue(seed:) in conformance TypedInt<A>(uint64_t a1, uint64_t a2, uint64_t a3)
{
  WitnessTable = swift_getWitnessTable();
  v7 = MEMORY[0x1E69E6540];

  return MEMORY[0x1EEE69350](a1, a2, a3, WitnessTable, v7);
}

uint64_t protocol witness for static Equatable.== infix(_:_:) in conformance TypedInt<A>(uint64_t a1, uint64_t a2, uint64_t a3)
{
  WitnessTable = swift_getWitnessTable();
  v7 = MEMORY[0x1E69E6550];

  return MEMORY[0x1EEE6B350](a1, a2, a3, WitnessTable, v7);
}

uint64_t TypedInt.description.getter()
{
  v0 = dispatch thunk of CustomStringConvertible.description.getter();
  MEMORY[0x193ACE8E0](v0);

  return 35;
}

Swift::Bool __swiftcall _CharacterClassModel.Representation.isStrictAscii(options:)(_StringProcessing::MatchingOptions options)
{
  rawValue = options.stack._rawValue;
  LOBYTE(options.stack._rawValue) = 0;
  LODWORD(v3) = v1;
  if (v1 > 4u)
  {
    goto LABEL_7;
  }

  if (v1 != 2)
  {
    if (v1 == 3)
    {
      goto LABEL_18;
    }

    if (v1 != 4)
    {
      return options.stack._rawValue;
    }

    v3 = rawValue[2];
    if (v3)
    {
      goto LABEL_21;
    }

    __break(1u);
LABEL_7:
    if (v3 != 5)
    {
      if (v3 != 6)
      {
        if (v3 != 7)
        {
          return options.stack._rawValue;
        }

        v4 = rawValue[2];
        if (v4)
        {
          v5 = *(rawValue + v4 + 7);
          if ((v5 & 0x2000) == 0)
          {
            goto LABEL_22;
          }

          goto LABEL_15;
        }

        goto LABEL_25;
      }

LABEL_20:
      v3 = rawValue[2];
      if (!v3)
      {
LABEL_26:
        __break(1u);
        return options.stack._rawValue;
      }

LABEL_21:
      v5 = *(rawValue + v3 + 7);
      if ((v5 & 0x1000) == 0)
      {
        goto LABEL_22;
      }

      goto LABEL_15;
    }

    v3 = rawValue[2];
    if (v3)
    {
      goto LABEL_21;
    }

    __break(1u);
LABEL_18:
    v3 = rawValue[2];
    if (v3)
    {
      goto LABEL_21;
    }

    __break(1u);
    goto LABEL_20;
  }

  v6 = rawValue[2];
  if (!v6)
  {
    __break(1u);
LABEL_25:
    __break(1u);
    goto LABEL_26;
  }

  v5 = *(rawValue + v6 + 7);
  if ((v5 & 0x400) == 0)
  {
LABEL_22:
    LODWORD(options.stack._rawValue) = (v5 >> 11) & 1;
    return options.stack._rawValue;
  }

LABEL_15:
  LOBYTE(options.stack._rawValue) = 1;
  return options.stack._rawValue;
}

unint64_t protocol witness for RawRepresentable.init(rawValue:) in conformance _CharacterClassModel.Representation@<X0>(unint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = specialized _CharacterClassModel.Representation.init(rawValue:)(*a1);
  *a2 = result;
  return result;
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance Instruction.OpCode(uint64_t a1, uint64_t a2, void (*a3)(uint64_t))
{
  v5 = *v3;
  Hasher.init(_seed:)();
  a3(v5);
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance Instruction.OpCode(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(uint64_t))
{
  v6 = *v4;
  Hasher.init(_seed:)();
  a4(v6);
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance _CharacterClassModel()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  v4 = v0[3];
  Hasher.init(_seed:)();
  MEMORY[0x193ACEFC0](v1);
  MEMORY[0x193ACEF90](v2);
  Hasher._combine(_:)(v3);
  Hasher._combine(_:)(v4);
  return Hasher._finalize()();
}

void protocol witness for Hashable.hash(into:) in conformance _CharacterClassModel()
{
  v1 = v0[1];
  v2 = v0[2];
  v3 = v0[3];
  MEMORY[0x193ACEFC0](*v0);
  MEMORY[0x193ACEF90](v1);
  Hasher._combine(_:)(v2);
  Hasher._combine(_:)(v3);
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance _CharacterClassModel()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  v4 = v0[3];
  Hasher.init(_seed:)();
  MEMORY[0x193ACEFC0](v1);
  MEMORY[0x193ACEF90](v2);
  Hasher._combine(_:)(v3);
  Hasher._combine(_:)(v4);
  return Hasher._finalize()();
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance _CharacterClassModel.Representation()
{
  v1 = *v0;
  v2 = 0x3E796E613CLL;
  v3 = 0x707365746968773CLL;
  if (v1 != 6)
  {
    v3 = 0x3E64726F773CLL;
  }

  v4 = 0xD000000000000013;
  if (v1 == 4)
  {
    v4 = 0xD000000000000012;
  }

  if (*v0 <= 5u)
  {
    v3 = v4;
  }

  v5 = 0xD000000000000017;
  if (v1 == 2)
  {
    v5 = 0x3E74696769643CLL;
  }

  if (*v0)
  {
    v2 = 0x61726720796E613CLL;
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

uint64_t _CharacterClassModel.description.getter(int a1)
{
  v1 = a1;
  v2 = (a1 & 0x1000000) == 0;
  if ((a1 & 0x1000000) != 0)
  {
    v3 = 544501614;
  }

  else
  {
    v3 = 0;
  }

  if (v2)
  {
    v4 = 0xE000000000000000;
  }

  else
  {
    v4 = 0xE400000000000000;
  }

  MEMORY[0x193ACE8E0](v3, v4);

  v5 = 0xE500000000000000;
  v6 = 0x3E796E613CLL;
  v7 = 0xEC0000003E656361;
  v8 = 0x707365746968773CLL;
  if (v1 != 6)
  {
    v8 = 0x3E64726F773CLL;
    v7 = 0xE600000000000000;
  }

  v9 = 0x800000018E5F2680;
  v10 = 0xD000000000000013;
  if (v1 == 4)
  {
    v10 = 0xD000000000000012;
  }

  else
  {
    v9 = 0x800000018E5F2660;
  }

  if (v1 <= 5u)
  {
    v8 = v10;
    v7 = v9;
  }

  v11 = 0xE700000000000000;
  v12 = 0xD000000000000017;
  if (v1 == 2)
  {
    v12 = 0x3E74696769643CLL;
  }

  else
  {
    v11 = 0x800000018E5F26A0;
  }

  if (v1)
  {
    v6 = 0x61726720796E613CLL;
    v5 = 0xEE003E656D656870;
  }

  if (v1 > 1u)
  {
    v6 = v12;
    v5 = v11;
  }

  if (v1 <= 3u)
  {
    v13 = v6;
  }

  else
  {
    v13 = v8;
  }

  if (v1 <= 3u)
  {
    v14 = v5;
  }

  else
  {
    v14 = v7;
  }

  MEMORY[0x193ACE8E0](v13, v14);

  return 0;
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance _CharacterClassModel()
{
  if (v0[3])
  {
    v1 = 0x1000000;
  }

  else
  {
    v1 = 0;
  }

  if (v0[2])
  {
    v2 = 0x10000;
  }

  else
  {
    v2 = 0;
  }

  if (v0[1])
  {
    v3 = 256;
  }

  else
  {
    v3 = 0;
  }

  return _CharacterClassModel.description.getter(v3 | *v0 | v2 | v1);
}

void closure #1 in $defer #1 () in PrettyPrinter.printAsPattern(_:wrap:terminateLine:)(uint64_t a1, char a2)
{
  PrettyPrinter.indent()();
  v3._countAndFlagsBits = 0x65747265766E692ELL;
  v3._object = 0xE900000000000064;
  PrettyPrinter.output(_:)(v3);
  if (a2)
  {
    PrettyPrinter.terminateLine()();
  }
}

uint64_t _StringGuts._slowEnsureMatchingEncoding(_:)(unint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = a1;
  v4 = a1 >> 14;
  if ((a3 & 0x1000000000000000) == 0 || (a2 & 0x800000000000000) != 0)
  {
    v10 = String.UTF16View.index(_:offsetBy:)();
    v11 = v10 + (v4 << 16);
    v12 = v10 & 0xFFFFFFFFFFFFFFFCLL | v3 & 3;
    v13 = v11 & 0xFFFFFFFFFFFF0000;
    if (!v4)
    {
      v13 = v12;
    }

    return v13 | 4;
  }

  else
  {
    v5 = MEMORY[0x193ACE940](15, a1 >> 16);
    v6 = v5 + (v4 << 16);
    v7 = v5 & 0xFFFFFFFFFFFFFFFCLL | v3 & 3;
    v8 = v6 & 0xFFFFFFFFFFFF0000;
    if (!v4)
    {
      v8 = v7;
    }

    return v8 | 8;
  }
}

unint64_t _StringGuts.validateInclusiveScalarIndex(_:)(unint64_t result, unint64_t a2, unint64_t a3)
{
  v3 = (a2 >> 59) & 1;
  if ((a3 & 0x1000000000000000) == 0)
  {
    LOBYTE(v3) = 1;
  }

  if ((result & 1) == 0 || (result & 0xC) == 4 << v3)
  {
    goto LABEL_9;
  }

  v4 = HIBYTE(a3) & 0xF;
  if ((a3 & 0x2000000000000000) == 0)
  {
    v4 = a2 & 0xFFFFFFFFFFFFLL;
  }

  if (v4 < result >> 16)
  {
    __break(1u);
LABEL_9:
    result = _StringGuts.validateInclusiveSubscalarIndex(_:)(result, a2, a3);
    if ((result & 1) == 0)
    {
      return result & 0xC | _StringGuts.scalarAlignSlow(_:)(result, a2, a3) & 0xFFFFFFFFFFFFFFF3 | 1;
    }
  }

  return result;
}

unint64_t _StringGuts.validateInclusiveSubscalarIndex(_:)(unint64_t result, unint64_t a2, unint64_t a3)
{
  v3 = (a2 >> 59) & 1;
  if ((a3 & 0x1000000000000000) == 0)
  {
    LOBYTE(v3) = 1;
  }

  if ((result & 0xC) == 4 << v3)
  {
    v5 = a2;
    v6 = a3;
    result = _StringGuts._slowEnsureMatchingEncoding(_:)(result, a2, a3);
    a2 = v5;
    a3 = v6;
  }

  v4 = HIBYTE(a3) & 0xF;
  if ((a3 & 0x2000000000000000) == 0)
  {
    v4 = a2 & 0xFFFFFFFFFFFFLL;
  }

  if (v4 < result >> 16)
  {
    __break(1u);
  }

  return result;
}

unint64_t _StringGuts.scalarAlignSlow(_:)(unint64_t result, uint64_t a2, unint64_t a3)
{
  if ((result & 0xC000) != 0 || result < 0x10000)
  {
    result &= 0xFFFFFFFFFFFF0000;
  }

  else
  {
    v5 = result >> 16;
    if ((a3 & 0x1000000000000000) == 0)
    {
      v13[2] = v3;
      v13[3] = v4;
      if ((a3 & 0x2000000000000000) != 0)
      {
        v13[0] = a2;
        v13[1] = a3 & 0xFFFFFFFFFFFFFFLL;
        if (v5 != (HIBYTE(a3) & 0xF) && (*(v13 + v5) & 0xC0) == 0x80)
        {
          do
          {
            v7 = v5 - 1;
            v11 = *(&v12 + v5-- + 7) & 0xC0;
          }

          while (v11 == 128);
          return v7 << 16;
        }

        goto LABEL_14;
      }

      if ((a2 & 0x1000000000000000) != 0)
      {
        v6 = (a3 & 0xFFFFFFFFFFFFFFFLL) + 32;
        if (v5 == (a2 & 0xFFFFFFFFFFFFLL))
        {
          goto LABEL_14;
        }
      }

      else
      {
        v12 = result >> 16;
        v6 = _StringObject.sharedUTF8.getter();
        v5 = v12;
        if (v12 == v10)
        {
          goto LABEL_14;
        }
      }

      if ((*(v6 + v5) & 0xC0) == 0x80)
      {
        do
        {
          v7 = v5 - 1;
          v8 = *(v6 - 1 + v5--) & 0xC0;
        }

        while (v8 == 128);
        return v7 << 16;
      }

LABEL_14:
      v7 = v5;
      return v7 << 16;
    }

    v9 = HIBYTE(a3) & 0xF;
    if ((a3 & 0x2000000000000000) == 0)
    {
      v9 = a2 & 0xFFFFFFFFFFFFLL;
    }

    if (v5 != v9)
    {

      return MEMORY[0x1EEE6A340]();
    }
  }

  return result;
}

uint64_t specialized _copySequenceToContiguousArray<A>(_:)(uint64_t a1)
{
  v1 = *(a1 + 72);
  v2 = *(a1 + 80);
  v3 = *(a1 + 88);
  v4 = *(a1 + 40);
  v69 = *(a1 + 48);
  v5 = *(a1 + 64);
  v67 = *(a1 + 56);
  v7 = *a1;
  v6 = *(a1 + 8);
  v9 = *(a1 + 16);
  v8 = *(a1 + 24);
  v10 = *(a1 + 32);
  v11 = *(a1 + 32);
  v85 = *(a1 + 16);
  v86 = v11;
  v12 = *(a1 + 64);
  v87 = *(a1 + 48);
  v88 = v12;
  v84 = *a1;
  v83 = v3;
  result = outlined init with copy of SubstringSearcher(a1, v89);
  v60 = MEMORY[0x1E69E7CC0];
  v14 = 0;
  if ((v3 & 1) == 0)
  {
    v61 = v5;
    v62 = v1 - 1;
    v15 = __OFSUB__(v1, 1);
    v55 = v15;
    v75 = v10 >> 14;
    v16 = v2;
    v17 = (MEMORY[0x1E69E7CC0] + 32);
    v65 = v7 >> 14;
    v66 = v4;
    v59 = v1;
    v70 = v7;
    v68 = v10;
    while (1)
    {
      v89[0] = v7;
      v89[1] = v6;
      v89[2] = v9;
      v89[3] = v8;
      v89[4] = v10;
      v89[5] = v4;
      v89[6] = v69;
      v89[7] = v67;
      v89[8] = v5;
      v89[9] = v1;
      v89[10] = v16;
      v90 = 0;
      if (!v1)
      {
        break;
      }

      if (!*(v5 + 16))
      {
        v36 = v4;
        v37 = v14;
        SubstringSearcher.nextRangeNaive(in:searchFromEnd:)(v7, v6, &v76);
        v35 = *(&v76 + 1);
        v16 = v76;
        result = *(&v77 + 1);
        v34 = v78;
        v83 = v78;
        if (v77 == 1)
        {
          v14 = v37;
          goto LABEL_55;
        }

        v10 = v68;
        v14 = v37;
        v4 = v36;
        v1 = v59;
        if (v14)
        {
          goto LABEL_53;
        }

        goto LABEL_41;
      }

      if (v55)
      {
        goto LABEL_64;
      }

      v56 = v17;
      v57 = v14;
      result = v16;
      while (1)
      {
        v63 = result;
        v18 = Substring.index(before:)();
        v19 = Substring.index(before:)() >> 14;
        if (v19 >= v75)
        {
          break;
        }

        v20 = v62;
LABEL_23:
        v27 = Substring.subscript.getter();
        if (*(v61 + 16))
        {
          v29 = specialized __RawDictionaryStorage.find<A>(_:)(v27, v28);
          v31 = v30;

          if (v31)
          {
            v32 = *(*(v61 + 56) + 8 * v29);
          }

          else
          {
            v32 = 0;
          }
        }

        else
        {

          v32 = 0;
        }

        result = v63;
        if (__OFSUB__(v20, v32))
        {
LABEL_62:
          __break(1u);
          goto LABEL_63;
        }

        result = Substring.index(_:offsetBy:limitedBy:)();
        if (v33)
        {
          v83 = 1;
          v14 = v57;
          goto LABEL_55;
        }
      }

      v73 = v62;
      while (1)
      {
        v71 = v19;
        v21 = Substring.subscript.getter();
        v23 = v22;
        if (v21 == Substring.subscript.getter() && v23 == v24)
        {
        }

        else
        {
          v25 = _stringCompareWithSmolCheck(_:_:expecting:)();

          if ((v25 & 1) == 0)
          {
            goto LABEL_22;
          }
        }

        v26 = __OFSUB__(v73--, 1);
        v4 = v66;
        if (v26)
        {
          __break(1u);
LABEL_61:
          __break(1u);
          goto LABEL_62;
        }

        result = v18;
        if (v71 == v75)
        {
          break;
        }

        if (v65 >= v18 >> 14)
        {
          goto LABEL_61;
        }

        v18 = Substring.index(before:)();
        v19 = Substring.index(before:)() >> 14;
        if (v19 < v75)
        {
LABEL_22:
          v20 = v73;
          goto LABEL_23;
        }
      }

      v35 = v63;
      if (v63 >> 14 < v18 >> 14)
      {
        goto LABEL_66;
      }

      v1 = v59;
      v7 = v70;
      result = Substring.index(_:offsetBy:limitedBy:)();
      v16 = v18;
      v83 = v34 & 1;
      v5 = v61;
      v10 = v68;
      v17 = v56;
      v14 = v57;
      if (!v57)
      {
        goto LABEL_41;
      }

LABEL_53:
      v26 = __OFSUB__(v14--, 1);
      if (v26)
      {
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
        return result;
      }

      *v17 = v16;
      v17[1] = v35;
      v17 += 2;
      v16 = result;
      if (v34)
      {
        goto LABEL_55;
      }
    }

    if ((v16 ^ v6) >= 0x4000)
    {
      v38 = v4;
      v39 = v16;
      v40 = v14;
      result = Substring.index(after:)();
      v16 = v39;
      v4 = v38;
      v1 = v59;
      v14 = v40;
      v34 = 0;
      v83 = 0;
    }

    else
    {
      result = 0;
      v34 = 1;
      v83 = 1;
    }

    v35 = v16;
    if (v14)
    {
      goto LABEL_53;
    }

LABEL_41:
    v41 = v60[3];
    if (((v41 >> 1) + 0x4000000000000000) < 0)
    {
      goto LABEL_65;
    }

    v58 = v34;
    v72 = result;
    v74 = v16;
    v64 = v35;
    v42 = v41 & 0xFFFFFFFFFFFFFFFELL;
    if (v42 <= 1)
    {
      v43 = 1;
    }

    else
    {
      v43 = v42;
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySnySS5IndexVGGMd, &_ss23_ContiguousArrayStorageCySnySS5IndexVGGMR);
    v44 = swift_allocObject();
    v45 = _swift_stdlib_malloc_size(v44);
    v46 = v45 - 32;
    if (v45 < 32)
    {
      v46 = v45 - 17;
    }

    v47 = v46 >> 4;
    v44[2] = v43;
    v44[3] = 2 * (v46 >> 4);
    v48 = (v44 + 4);
    v49 = v60[3] >> 1;
    if (v60[2])
    {
      v50 = v60 + 4;
      if (v44 != v60 || v48 >= v50 + 16 * v49)
      {
        memmove(v44 + 4, v50, 16 * v49);
      }

      v60[2] = 0;
    }

    v17 = (v48 + 16 * v49);

    v14 = (v47 & 0x7FFFFFFFFFFFFFFFLL) - v49;
    v60 = v44;
    v1 = v59;
    v4 = v66;
    v7 = v70;
    result = v72;
    v10 = v68;
    v35 = v64;
    v16 = v74;
    v34 = v58;
    goto LABEL_53;
  }

  result = v2;
LABEL_55:
  v51 = v14;
  v78 = v86;
  v79 = v87;
  v80 = v88;
  v76 = v84;
  v77 = v85;
  v81 = result;
  v82 = v83;
  outlined destroy of SubstringSearcher(&v76);
  result = v60;
  v52 = v60[3];
  if (v52 >= 2)
  {
    v53 = v52 >> 1;
    v26 = __OFSUB__(v53, v51);
    v54 = v53 - v51;
    if (v26)
    {
      goto LABEL_67;
    }

    v60[2] = v54;
  }

  return result;
}

void specialized _copySequenceToContiguousArray<A>(_:)(uint64_t a1)
{
  v1 = *a1;
  v2 = *(a1 + 8);
  v3 = *(a1 + 16);
  v4 = *(a1 + 24);
  v5 = *(a1 + 48);
  v56 = *(a1 + 32);
  v57 = v5;
  v7 = *(a1 + 64);
  v6 = *(a1 + 72);
  v8 = *(a1 + 80);
  v9 = *(a1 + 88);
  *v60 = *(a1 + 96);
  *&v60[9] = *(a1 + 105);
  v10 = *(a1 + 128);
  v11 = *(a1 + 136);
  v63[25] = 0;
  *&v63[16] = 0;
  *v63 = v1;
  *&v54 = v1;
  *(&v54 + 1) = v2;
  *&v55 = v3;
  *(&v55 + 1) = v4;
  *&v58 = v7;
  *(&v58 + 1) = v6;
  v51 = v6;
  *&v59 = v8;
  *(&v59 + 1) = v9;
  if (v2 >> 14 < v1 >> 14)
  {
LABEL_28:
    __break(1u);
    goto LABEL_29;
  }

  v49 = v10;
  v50 = v11;
  outlined init with copy of (range: Range<String.Index>, value: Any?)?(a1, v52, &_s17_StringProcessing13SplitSequenceVyAA17SubstringSearcherVGMd, &_s17_StringProcessing13SplitSequenceVyAA17SubstringSearcherVGMR);
  outlined init with copy of (range: Range<String.Index>, value: Any?)?(a1, v52, &_s17_StringProcessing13SplitSequenceVyAA17SubstringSearcherVGMd, &_s17_StringProcessing13SplitSequenceVyAA17SubstringSearcherVGMR);

  v13 = Substring.subscript.getter();
  v17 = specialized SubstringSearcher.State.init(text:pattern:)(v13, v14, v15, v16, v7, v51);
  v19 = v18;
  v21 = v20;
  v23 = v22;
  outlined destroy of SplitSequence<SubstringSearcher>(a1, &_s17_StringProcessing13SplitSequenceVyAA17SubstringSearcherVGMd, &_s17_StringProcessing13SplitSequenceVyAA17SubstringSearcherVGMR);
  *&v61 = v17;
  *(&v61 + 1) = v19;
  *&v62 = v21;
  BYTE8(v62) = v23 & 1;
  *&v63[8] = v49;
  v63[24] = v50;
  specialized SplitSequence.Iterator.next()();
  v28 = MEMORY[0x1E69E7CC0];
  v29 = 0;
  if (v27)
  {
    v30 = (MEMORY[0x1E69E7CC0] + 32);
    while (1)
    {
      if (!v29)
      {
        v31 = v28[3];
        if (((v31 >> 1) + 0x4000000000000000) < 0)
        {
          goto LABEL_27;
        }

        v32 = v27;
        v33 = v26;
        v34 = v25;
        v35 = v24;
        v36 = v31 & 0xFFFFFFFFFFFFFFFELL;
        if (v36 <= 1)
        {
          v37 = 1;
        }

        else
        {
          v37 = v36;
        }

        __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySsGMd, &_ss23_ContiguousArrayStorageCySsGMR);
        v38 = swift_allocObject();
        v39 = _swift_stdlib_malloc_size(v38);
        v40 = v39 - 32;
        if (v39 < 32)
        {
          v40 = v39 - 1;
        }

        v41 = v40 >> 5;
        v38[2] = v37;
        v38[3] = 2 * (v40 >> 5);
        v42 = (v38 + 4);
        v43 = v28[3] >> 1;
        if (v28[2])
        {
          if (v38 != v28 || v42 >= &v28[4 * v43 + 4])
          {
            memmove(v38 + 4, v28 + 4, 32 * v43);
          }

          v28[2] = 0;
        }

        v30 = (v42 + 32 * v43);
        v29 = (v41 & 0x7FFFFFFFFFFFFFFFLL) - v43;

        v28 = v38;
        v24 = v35;
        v25 = v34;
        v26 = v33;
        v27 = v32;
      }

      v45 = __OFSUB__(v29--, 1);
      if (v45)
      {
        break;
      }

      *v30 = v24;
      v30[1] = v25;
      v30[2] = v26;
      v30[3] = v27;
      v30 += 4;
      specialized SplitSequence.Iterator.next()();
      if (!v27)
      {
        goto LABEL_22;
      }
    }

    __break(1u);
LABEL_27:
    __break(1u);
    goto LABEL_28;
  }

LABEL_22:
  v52[8] = v61;
  v52[9] = v62;
  v53[0] = *v63;
  *(v53 + 10) = *&v63[10];
  v52[4] = v58;
  v52[5] = v59;
  v52[6] = *v60;
  v52[7] = *&v60[16];
  v52[0] = v54;
  v52[1] = v55;
  v52[2] = v56;
  v52[3] = v57;
  outlined destroy of SplitSequence<SubstringSearcher>(v52, &_s17_StringProcessing13SplitSequenceV8IteratorVyAA17SubstringSearcherV_GMd, &_s17_StringProcessing13SplitSequenceV8IteratorVyAA17SubstringSearcherV_GMR);
  v46 = v28[3];
  if (v46 >= 2)
  {
    v47 = v46 >> 1;
    v45 = __OFSUB__(v47, v29);
    v48 = v47 - v29;
    if (v45)
    {
LABEL_29:
      __break(1u);
      return;
    }

    v28[2] = v48;
  }
}

uint64_t specialized Sequence._copySequenceContents(initializing:)(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v9 = result;
  if (!a2)
  {
    a3 = 0;
    goto LABEL_12;
  }

  if (!a3)
  {
LABEL_12:
    *v9 = a4;
    v9[1] = a5;
    v9[2] = a6;
    v9[3] = a3;
    return a3;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v20 = a3;
    v10 = *(a6 + 16);
    if (v10)
    {
      v11 = a2;
      v12 = 0;
      v13 = a6 + 32;
      v14 = a3 - 1;
      while (v12 < *(a6 + 16))
      {
        outlined init with copy of AnyRegexOutput.ElementRepresentation(v13, &v21);
        *(&v26 + 1) = a4;
        v33 = a5;
        v15 = v21;
        v16 = v22;
        v27 = v21;
        v28 = v22;
        v17 = v24;
        v18 = v23;
        v29 = v23;
        v30 = v24;
        v19 = v26;
        v31 = v25;
        v32 = v26;
        *(v11 + 64) = v25;
        *(v11 + 80) = v19;
        *(v11 + 96) = a5;
        *v11 = v15;
        *(v11 + 16) = v16;
        *(v11 + 32) = v18;
        *(v11 + 48) = v17;
        if (v14 == v12)
        {

          a3 = v20;
          goto LABEL_12;
        }

        v11 += 104;

        ++v12;
        v13 += 88;
        if (v10 == v12)
        {
          goto LABEL_9;
        }
      }

      __break(1u);
      goto LABEL_14;
    }

LABEL_9:
    a3 = v10;
    goto LABEL_12;
  }

LABEL_14:
  __break(1u);
  return result;
}

uint64_t specialized Sequence._copySequenceContents(initializing:)(uint64_t result, uint64_t *a2, uint64_t a3)
{
  v5 = v3[3];
  v76[2] = v3[2];
  v76[3] = v5;
  v76[4] = v3[4];
  v6 = v3[1];
  v76[0] = *v3;
  v76[1] = v6;
  v7 = *(v3 + 10);
  v8 = *(v3 + 88);
  if (!a2)
  {
LABEL_47:
    v10 = 0;
LABEL_53:
    v48 = v3[3];
    *(result + 32) = v3[2];
    *(result + 48) = v48;
    *(result + 64) = v3[4];
    v49 = v3[1];
    *result = *v3;
    *(result + 16) = v49;
    *(result + 80) = v7;
    *(result + 88) = v8;
    return v10;
  }

  v9 = a3;
  if (!a3)
  {
    v3 = v76;
    v10 = 0;
    goto LABEL_53;
  }

  if (a3 < 0)
  {
    goto LABEL_60;
  }

  v50 = result;
  v10 = 0;
  v12 = *(v3 + 8);
  v11 = *(v3 + 9);
  v13 = *(v3 + 4);
  v14 = *(v3 + 5);
  v15 = *(v3 + 7);
  v67 = v13;
  v68 = *(v3 + 6);
  v16 = *v3;
  v17 = *(v3 + 1);
  v18 = *(v3 + 2);
  v19 = *(v3 + 3);
  v3 = v13;
  v56 = v11;
  v57 = v11 - 1;
  v58 = v17;
  v20 = __OFSUB__(v11, 1);
  v51 = v20;
  v21 = v13 >> 14;
  v61 = v16 >> 14;
  v62 = v14;
  v22 = 1;
  v64 = v18;
  v65 = v16;
  v53 = v9;
  v59 = v12;
  v66 = v15;
  v63 = v13 >> 14;
  while (1)
  {
    if (v8)
    {
      LOBYTE(v71[0]) = 1;
      result = v7;
LABEL_50:
      v3 = v76;
      v8 = v71[0];
      v7 = result;
LABEL_52:
      result = v50;
      goto LABEL_53;
    }

    v23 = v22;
    v75 = 0;
    v77 = v16;
    v78 = v17;
    v79 = v18;
    v80 = v19;
    v81 = v3;
    v82 = v14;
    v83 = v68;
    v84 = v15;
    v85 = v12;
    v86 = v56;
    v87 = v7;
    v88 = 0;
    if (!v56)
    {
      if ((v7 ^ v17) >= 0x4000)
      {
        v43 = v3;
        v44 = v7;
        v45 = v22;
        v46 = v9;
        v47 = v12;
        result = Substring.index(after:)();
        v12 = v47;
        v9 = v46;
        v7 = v44;
        v40 = v43;
        v17 = v58;
        v16 = v65;
        v15 = v66;
        v23 = v45;
        v8 = 0;
      }

      else
      {
        v40 = v3;
        result = 0;
        v8 = 1;
      }

      v41 = v7;
      goto LABEL_43;
    }

    v52 = v10;
    if (*(v12 + 16))
    {
      break;
    }

    v40 = v3;
    v42 = v22;
    SubstringSearcher.nextRangeNaive(in:searchFromEnd:)(v16, v17, v71);
    result = v73;
    v8 = v74;
    if (v72 == 1)
    {
      LOBYTE(v71[0]) = v74;
      v10 = v52;
      goto LABEL_50;
    }

    v7 = v71[0];
    v41 = v71[1];
    v23 = v42;
    v15 = v66;
    v9 = v53;
    v12 = v59;
LABEL_43:
    *a2 = v7;
    a2[1] = v41;
    if (v23 == v9)
    {
      v8 &= 1u;
      LOBYTE(v71[0]) = v8;
      v3 = v76;
      v7 = result;
      v10 = v9;
      goto LABEL_52;
    }

    a2 += 2;
    v7 = result;
    v10 = v23;
    v22 = v23 + 1;
    v3 = v40;
    if (__OFADD__(v23, 1))
    {
      __break(1u);
      goto LABEL_47;
    }
  }

  if (!v51)
  {
    v54 = v22;
    v55 = a2;
    result = v7;
    while (1)
    {
      v60 = result;
      v24 = v16;
      v25 = Substring.index(before:)();
      v26 = Substring.index(before:)() >> 14;
      if (v26 >= v21)
      {
        break;
      }

      v70 = v57;
      v16 = v24;
LABEL_26:
      v33 = Substring.subscript.getter();
      if (*(v59 + 16))
      {
        v35 = specialized __RawDictionaryStorage.find<A>(_:)(v33, v34);
        v37 = v36;

        if (v37)
        {
          v38 = *(*(v59 + 56) + 8 * v35);
        }

        else
        {
          v38 = 0;
        }

        v16 = v65;
        result = v60;
      }

      else
      {

        v38 = 0;
        result = v60;
      }

      if (__OFSUB__(v70, v38))
      {
LABEL_57:
        __break(1u);
        goto LABEL_58;
      }

      result = Substring.index(_:offsetBy:limitedBy:)();
      if (v39)
      {
        LOBYTE(v71[0]) = 1;
        v10 = v52;
        goto LABEL_50;
      }
    }

    v70 = v57;
    v27 = v25;
    v17 = v58;
    while (1)
    {
      v28 = Substring.subscript.getter();
      v30 = v29;
      v69 = v27;
      if (v28 == Substring.subscript.getter() && v30 == v31)
      {
      }

      else
      {
        v32 = _stringCompareWithSmolCheck(_:_:expecting:)();

        if ((v32 & 1) == 0)
        {
          v16 = v65;
          v21 = v63;
          goto LABEL_26;
        }
      }

      result = v27;
      if (__OFSUB__(v70, 1))
      {
        __break(1u);
LABEL_56:
        __break(1u);
        goto LABEL_57;
      }

      v21 = v63;
      if (v26 == v63)
      {
        break;
      }

      if (v61 >= v27 >> 14)
      {
        goto LABEL_56;
      }

      --v70;
      v27 = Substring.index(before:)();
      v26 = Substring.index(before:)() >> 14;
      if (v26 < v63)
      {
        v16 = v65;
        goto LABEL_26;
      }
    }

    v41 = v60;
    v40 = v67;
    v14 = v62;
    if (v60 >> 14 < v69 >> 14)
    {
      goto LABEL_59;
    }

    v18 = v64;
    v16 = v65;
    result = Substring.index(_:offsetBy:limitedBy:)();
    v7 = v69;
    v9 = v53;
    v23 = v54;
    a2 = v55;
    v12 = v59;
    v15 = v66;
    goto LABEL_43;
  }

LABEL_58:
  __break(1u);
LABEL_59:
  __break(1u);
LABEL_60:
  __break(1u);
  return result;
}

void *specialized _copyCollectionToContiguousArray<A>(_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a3 + 16);
  if (!v3)
  {
    return MEMORY[0x1E69E7CC0];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy17_StringProcessing14AnyRegexOutputV7ElementVGMd, &_ss23_ContiguousArrayStorageCy17_StringProcessing14AnyRegexOutputV7ElementVGMR);
  v7 = swift_allocObject();
  v8 = _swift_stdlib_malloc_size(v7);
  v7[2] = v3;
  v7[3] = 2 * ((v8 - 32) / 104);
  v9 = specialized Sequence._copySequenceContents(initializing:)(&v11, (v7 + 4), v3, a1, a2, a3);

  if (v9 != v3)
  {
    __break(1u);
    return MEMORY[0x1E69E7CC0];
  }

  return v7;
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

size_t specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(size_t a1, int64_t a2, char a3)
{
  result = specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, *v3);
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy17_StringProcessing7DSLTreeV4NodeOGMd, &_ss23_ContiguousArrayStorageCy17_StringProcessing7DSLTreeV4NodeOGMR);
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy12_RegexParser13PrettyPrinterV17_StringProcessingE11NodeToPrintOGMd, &_ss23_ContiguousArrayStorageCy12_RegexParser13PrettyPrinterV17_StringProcessingE11NodeToPrintOGMR);
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy17_StringProcessing7DSLTreeV5_TreeVGMd, &_ss23_ContiguousArrayStorageCy17_StringProcessing7DSLTreeV5_TreeVGMR);
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy17_StringProcessing14AnyRegexOutputV7ElementVGMd, &_ss23_ContiguousArrayStorageCy17_StringProcessing14AnyRegexOutputV7ElementVGMR);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 104);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[104 * v8])
    {
      memmove(v12, v13, 104 * v8);
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyypXpGMd, &_ss23_ContiguousArrayStorageCyypXpGMR);
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

size_t specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(size_t result, int64_t a2, char a3, void *a4)
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
LABEL_30:
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

  if (!v9)
  {
    v13 = MEMORY[0x1E69E7CC0];
    goto LABEL_19;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy17_StringProcessing7DSLTreeV20CustomCharacterClassV6MemberOGMd, &_ss23_ContiguousArrayStorageCy17_StringProcessing7DSLTreeV20CustomCharacterClassV6MemberOGMR);
  v10 = *(type metadata accessor for DSLTree.CustomCharacterClass.Member(0) - 8);
  v11 = *(v10 + 72);
  v12 = (*(v10 + 80) + 32) & ~*(v10 + 80);
  v13 = swift_allocObject();
  result = _swift_stdlib_malloc_size(v13);
  if (!v11)
  {
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if (result - v12 == 0x8000000000000000 && v11 == -1)
  {
    goto LABEL_29;
  }

  v13[2] = v8;
  v13[3] = 2 * ((result - v12) / v11);
LABEL_19:
  v15 = *(type metadata accessor for DSLTree.CustomCharacterClass.Member(0) - 8);
  if (v5)
  {
    if (v13 < a4 || (v16 = (*(v15 + 80) + 32) & ~*(v15 + 80), v13 + v16 >= a4 + v16 + *(v15 + 72) * v8))
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (v13 != a4)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    a4[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v13;
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySiGMd, &_ss23_ContiguousArrayStorageCySiGMR);
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy17_StringProcessing9ProcessorV9SavePointVGMd, &_ss23_ContiguousArrayStorageCy17_StringProcessing9ProcessorV9SavePointVGMR);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 72);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[72 * v8])
    {
      memmove(v12, v13, 72 * v8);
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy17_StringProcessing9ProcessorV14_StoredCaptureVGMd, &_ss23_ContiguousArrayStorageCy17_StringProcessing9ProcessorV14_StoredCaptureVGMR);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 72);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[72 * v8])
    {
      memmove(v12, v13, 72 * v8);
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy17_StringProcessing14AnyRegexOutputV21ElementRepresentationVGMd, &_ss23_ContiguousArrayStorageCy17_StringProcessing14AnyRegexOutputV21ElementRepresentationVGMR);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 88);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy17_StringProcessing8TypedIntVyAC19_InstructionAddressOGSgGMd, &_ss23_ContiguousArrayStorageCy17_StringProcessing8TypedIntVyAC19_InstructionAddressOGSgGMR);
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
  v15 = 16 * v8;
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy17_StringProcessing8TypedIntVyAC19_InstructionAddressOG_AC9MEProgramV7BuilderV0I5FixupVtGMd, &_ss23_ContiguousArrayStorageCy17_StringProcessing8TypedIntVyAC19_InstructionAddressOG_AC9MEProgramV7BuilderV0I5FixupVtGMR);
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
  v15 = 32 * v8;
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy17_StringProcessing15MatchingOptionsV14Representation33_684D3EBC598AF48CD1B258716A9A78E6LLVGMd, &_ss23_ContiguousArrayStorageCy17_StringProcessing15MatchingOptionsV14Representation33_684D3EBC598AF48CD1B258716A9A78E6LLVGMR);
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy17_StringProcessing7DSLTreeV20CustomCharacterClassV11AsciiBitsetVGMd, &_ss23_ContiguousArrayStorageCy17_StringProcessing7DSLTreeV20CustomCharacterClassV11AsciiBitsetVGMR);
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
    memcpy(v12, v13, 24 * v8);
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySJGMd, &_ss23_ContiguousArrayStorageCySJGMR);
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy17_StringProcessing7DSLTreeV4NodeOGMd, &_ss23_ContiguousArrayStorageCy17_StringProcessing7DSLTreeV4NodeOGMR);
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySsGMd, &_ss23_ContiguousArrayStorageCySsGMR);
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyypXpGMd, &_ss23_ContiguousArrayStorageCyypXpGMR);
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

char *specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(char *result, int64_t a2, char a3, char *a4, uint64_t *a5, uint64_t *a6)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySays5UInt8VGGMd, &_ss23_ContiguousArrayStorageCySays5UInt8VGGMR);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 25;
    }

    v10[2] = v8;
    v10[3] = 2 * (v12 >> 3);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 8 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    swift_getCanonicalSpecializedMetadata();
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(void *result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t *a6)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&_syycMd, &_syycMR);
    swift_arrayInitWithCopy();
  }

  return v12;
}

size_t specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(size_t result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t *a6, uint64_t (*a7)(void))
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

unint64_t specialized __RawDictionaryStorage.find<A>(_:)(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 40);
  Hasher.init(_seed:)();
  MEMORY[0x193ACE6E0](v8, a1, a2);
  v6 = Hasher._finalize()();

  return specialized __RawDictionaryStorage.find<A>(_:hashValue:)(a1, a2, v6);
}

unint64_t specialized __RawDictionaryStorage.find<A>(_:)(uint64_t a1)
{
  v3 = *(v1 + 40);
  Hasher.init(_seed:)();
  MEMORY[0x193ACEF90](a1);
  v4 = Hasher._finalize()();

  return specialized __RawDictionaryStorage.find<A>(_:hashValue:)(a1, v4);
}

{
  v3 = *(v1 + 40);
  Hasher.init(_seed:)();
  v4 = *(a1 + 16);
  MEMORY[0x193ACEF90](v4);
  if (v4)
  {
    v5 = (a1 + 32);
    do
    {
      v6 = *v5++;
      Hasher._combine(_:)(v6);
      --v4;
    }

    while (v4);
  }

  v7 = Hasher._finalize()();

  return specialized __RawDictionaryStorage.find<A>(_:hashValue:)(a1, v7);
}

uint64_t specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCySJSiGMd, &_ss18_DictionaryStorageCySJSiGMR);
  v38 = a2;
  result = static _DictionaryStorage.resize(original:capacity:move:)();
  v8 = result;
  if (*(v5 + 16))
  {
    v36 = v3;
    v37 = v5;
    v9 = 0;
    v10 = (v5 + 64);
    v11 = 1 << *(v5 + 32);
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    else
    {
      v12 = -1;
    }

    v13 = v12 & *(v5 + 64);
    v14 = (v11 + 63) >> 6;
    v15 = result + 64;
    while (v13)
    {
      v18 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_17:
      v21 = v18 | (v9 << 6);
      v22 = (*(v5 + 48) + 16 * v21);
      v23 = *v22;
      v24 = v22[1];
      v25 = *(*(v5 + 56) + 8 * v21);
      if ((v38 & 1) == 0)
      {
        v26 = v22[1];
      }

      v27 = *(v8 + 40);
      Hasher.init(_seed:)();
      MEMORY[0x193ACE6E0](v39, v23, v24);
      result = Hasher._finalize()();
      v28 = -1 << *(v8 + 32);
      v29 = result & ~v28;
      v30 = v29 >> 6;
      if (((-1 << v29) & ~*(v15 + 8 * (v29 >> 6))) == 0)
      {
        v31 = 0;
        v32 = (63 - v28) >> 6;
        while (++v30 != v32 || (v31 & 1) == 0)
        {
          v33 = v30 == v32;
          if (v30 == v32)
          {
            v30 = 0;
          }

          v31 |= v33;
          v34 = *(v15 + 8 * v30);
          if (v34 != -1)
          {
            v16 = __clz(__rbit64(~v34)) + (v30 << 6);
            goto LABEL_9;
          }
        }

LABEL_37:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v29) & ~*(v15 + 8 * (v29 >> 6)))) | v29 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      v17 = (*(v8 + 48) + 16 * v16);
      *v17 = v23;
      v17[1] = v24;
      *(*(v8 + 56) + 8 * v16) = v25;
      ++*(v8 + 16);
      v5 = v37;
    }

    v19 = v9;
    while (1)
    {
      v9 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        __break(1u);
        goto LABEL_37;
      }

      if (v9 >= v14)
      {
        break;
      }

      v20 = v10[v9];
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v13 = (v20 - 1) & v20;
        goto LABEL_17;
      }
    }

    if ((v38 & 1) == 0)
    {

      v3 = v36;
      goto LABEL_35;
    }

    v35 = 1 << *(v5 + 32);
    v3 = v36;
    if (v35 >= 64)
    {
      bzero(v10, ((v35 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v10 = -1 << v35;
    }

    *(v5 + 16) = 0;
  }

LABEL_35:
  *v3 = v8;
  return result;
}

{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCy17_StringProcessing11ReferenceIDVSiGMd, &_ss18_DictionaryStorageCy17_StringProcessing11ReferenceIDVSiGMR);
  result = static _DictionaryStorage.resize(original:capacity:move:)();
  v8 = result;
  if (*(v5 + 16))
  {
    v32 = a2;
    v33 = v3;
    v9 = 0;
    v10 = (v5 + 64);
    v11 = 1 << *(v5 + 32);
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    else
    {
      v12 = -1;
    }

    v13 = v12 & *(v5 + 64);
    v14 = (v11 + 63) >> 6;
    v15 = result + 64;
    while (v13)
    {
      v17 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_17:
      v20 = v17 | (v9 << 6);
      v21 = *(*(v5 + 48) + 8 * v20);
      v22 = *(*(v5 + 56) + 8 * v20);
      v23 = *(v8 + 40);
      Hasher.init(_seed:)();
      MEMORY[0x193ACEF90](v21);
      result = Hasher._finalize()();
      v24 = -1 << *(v8 + 32);
      v25 = result & ~v24;
      v26 = v25 >> 6;
      if (((-1 << v25) & ~*(v15 + 8 * (v25 >> 6))) == 0)
      {
        v27 = 0;
        v28 = (63 - v24) >> 6;
        while (++v26 != v28 || (v27 & 1) == 0)
        {
          v29 = v26 == v28;
          if (v26 == v28)
          {
            v26 = 0;
          }

          v27 |= v29;
          v30 = *(v15 + 8 * v26);
          if (v30 != -1)
          {
            v16 = __clz(__rbit64(~v30)) + (v26 << 6);
            goto LABEL_9;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v25) & ~*(v15 + 8 * (v25 >> 6)))) | v25 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      *(*(v8 + 48) + 8 * v16) = v21;
      *(*(v8 + 56) + 8 * v16) = v22;
      ++*(v8 + 16);
    }

    v18 = v9;
    while (1)
    {
      v9 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v9 >= v14)
      {
        break;
      }

      v19 = v10[v9];
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v13 = (v19 - 1) & v19;
        goto LABEL_17;
      }
    }

    if ((v32 & 1) == 0)
    {

      v3 = v33;
      goto LABEL_33;
    }

    v31 = 1 << *(v5 + 32);
    v3 = v33;
    if (v31 >= 64)
    {
      bzero((v5 + 64), ((v31 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v10 = -1 << v31;
    }

    *(v5 + 16) = 0;
  }

LABEL_33:
  *v3 = v8;
  return result;
}

{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCySJ17_StringProcessing8TypedIntVyAC16_ElementRegisterOGGMd, &_ss18_DictionaryStorageCySJ17_StringProcessing8TypedIntVyAC16_ElementRegisterOGGMR);
  v38 = a2;
  result = static _DictionaryStorage.resize(original:capacity:move:)();
  v8 = result;
  if (*(v5 + 16))
  {
    v36 = v3;
    v37 = v5;
    v9 = 0;
    v10 = (v5 + 64);
    v11 = 1 << *(v5 + 32);
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    else
    {
      v12 = -1;
    }

    v13 = v12 & *(v5 + 64);
    v14 = (v11 + 63) >> 6;
    v15 = result + 64;
    while (v13)
    {
      v18 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_17:
      v21 = v18 | (v9 << 6);
      v22 = (*(v5 + 48) + 16 * v21);
      v23 = *v22;
      v24 = v22[1];
      v25 = *(*(v5 + 56) + 8 * v21);
      if ((v38 & 1) == 0)
      {
        v26 = v22[1];
      }

      v27 = *(v8 + 40);
      Hasher.init(_seed:)();
      MEMORY[0x193ACE6E0](v39, v23, v24);
      result = Hasher._finalize()();
      v28 = -1 << *(v8 + 32);
      v29 = result & ~v28;
      v30 = v29 >> 6;
      if (((-1 << v29) & ~*(v15 + 8 * (v29 >> 6))) == 0)
      {
        v31 = 0;
        v32 = (63 - v28) >> 6;
        while (++v30 != v32 || (v31 & 1) == 0)
        {
          v33 = v30 == v32;
          if (v30 == v32)
          {
            v30 = 0;
          }

          v31 |= v33;
          v34 = *(v15 + 8 * v30);
          if (v34 != -1)
          {
            v16 = __clz(__rbit64(~v34)) + (v30 << 6);
            goto LABEL_9;
          }
        }

LABEL_37:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v29) & ~*(v15 + 8 * (v29 >> 6)))) | v29 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      v17 = (*(v8 + 48) + 16 * v16);
      *v17 = v23;
      v17[1] = v24;
      *(*(v8 + 56) + 8 * v16) = v25;
      ++*(v8 + 16);
      v5 = v37;
    }

    v19 = v9;
    while (1)
    {
      v9 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        __break(1u);
        goto LABEL_37;
      }

      if (v9 >= v14)
      {
        break;
      }

      v20 = v10[v9];
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v13 = (v20 - 1) & v20;
        goto LABEL_17;
      }
    }

    if ((v38 & 1) == 0)
    {

      v3 = v36;
      goto LABEL_35;
    }

    v35 = 1 << *(v5 + 32);
    v3 = v36;
    if (v35 >= 64)
    {
      bzero(v10, ((v35 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v10 = -1 << v35;
    }

    *(v5 + 16) = 0;
  }

LABEL_35:
  *v3 = v8;
  return result;
}

{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCy17_StringProcessing11ReferenceIDVSayAC8TypedIntVyAC19_InstructionAddressOGGGMd, &_ss18_DictionaryStorageCy17_StringProcessing11ReferenceIDVSayAC8TypedIntVyAC19_InstructionAddressOGGGMR);
  v33 = a2;
  result = static _DictionaryStorage.resize(original:capacity:move:)();
  v8 = result;
  if (*(v5 + 16))
  {
    v32 = v3;
    v9 = 0;
    v10 = (v5 + 64);
    v11 = 1 << *(v5 + 32);
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    else
    {
      v12 = -1;
    }

    v13 = v12 & *(v5 + 64);
    v14 = (v11 + 63) >> 6;
    v15 = result + 64;
    while (v13)
    {
      v17 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_17:
      v20 = v17 | (v9 << 6);
      v21 = *(*(v5 + 48) + 8 * v20);
      v22 = *(*(v5 + 56) + 8 * v20);
      if ((v33 & 1) == 0)
      {
      }

      v23 = *(v8 + 40);
      Hasher.init(_seed:)();
      MEMORY[0x193ACEF90](v21);
      result = Hasher._finalize()();
      v24 = -1 << *(v8 + 32);
      v25 = result & ~v24;
      v26 = v25 >> 6;
      if (((-1 << v25) & ~*(v15 + 8 * (v25 >> 6))) == 0)
      {
        v27 = 0;
        v28 = (63 - v24) >> 6;
        while (++v26 != v28 || (v27 & 1) == 0)
        {
          v29 = v26 == v28;
          if (v26 == v28)
          {
            v26 = 0;
          }

          v27 |= v29;
          v30 = *(v15 + 8 * v26);
          if (v30 != -1)
          {
            v16 = __clz(__rbit64(~v30)) + (v26 << 6);
            goto LABEL_9;
          }
        }

LABEL_37:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v25) & ~*(v15 + 8 * (v25 >> 6)))) | v25 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      *(*(v8 + 48) + 8 * v16) = v21;
      *(*(v8 + 56) + 8 * v16) = v22;
      ++*(v8 + 16);
    }

    v18 = v9;
    while (1)
    {
      v9 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_37;
      }

      if (v9 >= v14)
      {
        break;
      }

      v19 = v10[v9];
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v13 = (v19 - 1) & v19;
        goto LABEL_17;
      }
    }

    if ((v33 & 1) == 0)
    {

      v3 = v32;
      goto LABEL_35;
    }

    v31 = 1 << *(v5 + 32);
    v3 = v32;
    if (v31 >= 64)
    {
      bzero((v5 + 64), ((v31 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v10 = -1 << v31;
    }

    *(v5 + 16) = 0;
  }

LABEL_35:
  *v3 = v8;
  return result;
}

{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCySays5UInt8VG17_StringProcessing8TypedIntVyAF13_UTF8RegisterOGGMd, &_ss18_DictionaryStorageCySays5UInt8VG17_StringProcessing8TypedIntVyAF13_UTF8RegisterOGGMR);
  v36 = a2;
  result = static _DictionaryStorage.resize(original:capacity:move:)();
  v8 = result;
  if (*(v5 + 16))
  {
    v34 = v3;
    v35 = v5;
    v9 = 0;
    v10 = (v5 + 64);
    v11 = 1 << *(v5 + 32);
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    else
    {
      v12 = -1;
    }

    v13 = v12 & *(v5 + 64);
    v14 = (v11 + 63) >> 6;
    v15 = result + 64;
    while (v13)
    {
      v17 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_17:
      v20 = v17 | (v9 << 6);
      v21 = *(*(v5 + 48) + 8 * v20);
      v37 = *(*(v5 + 56) + 8 * v20);
      if ((v36 & 1) == 0)
      {
      }

      v22 = *(v8 + 40);
      Hasher.init(_seed:)();
      MEMORY[0x193ACEF90](*(v21 + 16));
      v23 = *(v21 + 16);
      if (v23)
      {
        v24 = (v21 + 32);
        do
        {
          v25 = *v24++;
          Hasher._combine(_:)(v25);
          --v23;
        }

        while (v23);
      }

      result = Hasher._finalize()();
      v26 = -1 << *(v8 + 32);
      v27 = result & ~v26;
      v28 = v27 >> 6;
      if (((-1 << v27) & ~*(v15 + 8 * (v27 >> 6))) == 0)
      {
        v29 = 0;
        v30 = (63 - v26) >> 6;
        while (++v28 != v30 || (v29 & 1) == 0)
        {
          v31 = v28 == v30;
          if (v28 == v30)
          {
            v28 = 0;
          }

          v29 |= v31;
          v32 = *(v15 + 8 * v28);
          if (v32 != -1)
          {
            v16 = __clz(__rbit64(~v32)) + (v28 << 6);
            goto LABEL_9;
          }
        }

LABEL_40:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v27) & ~*(v15 + 8 * (v27 >> 6)))) | v27 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      *(*(v8 + 48) + 8 * v16) = v21;
      *(*(v8 + 56) + 8 * v16) = v37;
      ++*(v8 + 16);
      v5 = v35;
    }

    v18 = v9;
    while (1)
    {
      v9 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_40;
      }

      if (v9 >= v14)
      {
        break;
      }

      v19 = v10[v9];
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v13 = (v19 - 1) & v19;
        goto LABEL_17;
      }
    }

    if ((v36 & 1) == 0)
    {

      v3 = v34;
      goto LABEL_38;
    }

    v33 = 1 << *(v5 + 32);
    v3 = v34;
    if (v33 >= 64)
    {
      bzero(v10, ((v33 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v10 = -1 << v33;
    }

    *(v5 + 16) = 0;
  }

LABEL_38:
  *v3 = v8;
  return result;
}

unint64_t specialized _NativeDictionary.setValue(_:forKey:isUnique:)(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  result = specialized __RawDictionaryStorage.find<A>(_:)(a2, a3);
  v13 = *(v10 + 16);
  v14 = (v12 & 1) == 0;
  v15 = __OFADD__(v13, v14);
  v16 = v13 + v14;
  if (v15)
  {
    __break(1u);
    goto LABEL_15;
  }

  v17 = v12;
  v18 = *(v10 + 24);
  if (v18 < v16 || (a4 & 1) == 0)
  {
    if (v18 < v16 || (a4 & 1) != 0)
    {
      specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v16, a4 & 1);
      v20 = *v5;
      result = specialized __RawDictionaryStorage.find<A>(_:)(a2, a3);
      if ((v17 & 1) != (v21 & 1))
      {
LABEL_16:
        result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
        __break(1u);
        return result;
      }
    }

    else
    {
      v19 = result;
      specialized _NativeDictionary.copy()();
      result = v19;
    }
  }

  v22 = *v5;
  if (v17)
  {
    *(v22[7] + 8 * result) = a1;
    return result;
  }

  v22[(result >> 6) + 8] |= 1 << result;
  v23 = (v22[6] + 16 * result);
  *v23 = a2;
  v23[1] = a3;
  *(v22[7] + 8 * result) = a1;
  v24 = v22[2];
  v15 = __OFADD__(v24, 1);
  v25 = v24 + 1;
  if (v15)
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v22[2] = v25;
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
    goto LABEL_15;
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
        swift_getCanonicalSpecializedMetadata();
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
  if (v15)
  {
    *(v20[7] + 8 * result) = a1;
    return result;
  }

  v20[(result >> 6) + 8] |= 1 << result;
  *(v20[6] + 8 * result) = a2;
  *(v20[7] + 8 * result) = a1;
  v21 = v20[2];
  v13 = __OFADD__(v21, 1);
  v22 = v21 + 1;
  if (v13)
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v20[2] = v22;
}

unint64_t specialized __RawDictionaryStorage.find<A>(_:hashValue:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = -1 << *(v3 + 32);
  v5 = a3 & ~v4;
  if ((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5))
  {
    v8 = ~v4;
    do
    {
      v9 = (*(v3 + 48) + 16 * v5);
      if (*v9 == a1 && v9[1] == a2)
      {
        break;
      }

      if (_stringCompareWithSmolCheck(_:_:expecting:)())
      {
        break;
      }

      v5 = (v5 + 1) & v8;
    }

    while (((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5) & 1) != 0);
  }

  return v5;
}

unint64_t specialized __RawDictionaryStorage.find<A>(_:hashValue:)(uint64_t a1, uint64_t a2)
{
  v4 = -1 << *(v2 + 32);
  result = a2 & ~v4;
  if ((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result))
  {
    v6 = ~v4;
    do
    {
      if (*(*(v2 + 48) + 8 * result) == a1)
      {
        break;
      }

      result = (result + 1) & v6;
    }

    while (((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result) & 1) != 0);
  }

  return result;
}

{
  v4 = -1 << *(v2 + 32);
  result = a2 & ~v4;
  if ((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result))
  {
    v6 = ~v4;
    v7 = *(a1 + 16);
    while (1)
    {
      v8 = *(*(v2 + 48) + 8 * result);
      if (*(v8 + 16) == v7)
      {
        break;
      }

LABEL_3:
      result = (result + 1) & v6;
      if (((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result) & 1) == 0)
      {
        return result;
      }
    }

    if (v7 && v8 != a1)
    {
      v9 = (v8 + 32);
      v10 = (a1 + 32);
      v11 = *(a1 + 16);
      while (v11)
      {
        if (*v9 != *v10)
        {
          goto LABEL_3;
        }

        ++v9;
        ++v10;
        if (!--v11)
        {
          return result;
        }
      }

      __break(1u);
    }
  }

  return result;
}

void *specialized _NativeDictionary.copy()()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCySJSiGMd, &_ss18_DictionaryStorageCySJSiGMR);
  v2 = *v0;
  v3 = static _DictionaryStorage.copy(original:)();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = v14 | (v8 << 6);
        v18 = (*(v2 + 48) + 16 * v17);
        v20 = *v18;
        v19 = v18[1];
        v21 = *(*(v2 + 56) + 8 * v17);
        v22 = (*(v4 + 48) + 16 * v17);
        *v22 = v20;
        v22[1] = v19;
        *(*(v4 + 56) + 8 * v17) = v21;
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 64 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }

  return result;
}

{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCy17_StringProcessing11ReferenceIDVSiGMd, &_ss18_DictionaryStorageCy17_StringProcessing11ReferenceIDVSiGMR);
  v2 = *v0;
  v3 = static _DictionaryStorage.copy(original:)();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = -1;
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    v11 = v10 & *(v2 + 64);
    for (i = (v9 + 63) >> 6; v11; *(*(v4 + 56) + 8 * v14) = v17)
    {
      v13 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
      v14 = v13 | (v8 << 6);
LABEL_17:
      v17 = *(*(v2 + 56) + 8 * v14);
      *(*(v4 + 48) + 8 * v14) = *(*(v2 + 48) + 8 * v14);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= i)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 64 + 8 * v8);
      ++v15;
      if (v16)
      {
        v11 = (v16 - 1) & v16;
        v14 = __clz(__rbit64(v16)) | (v8 << 6);
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }

  return result;
}

{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCySJ17_StringProcessing8TypedIntVyAC16_ElementRegisterOGGMd, &_ss18_DictionaryStorageCySJ17_StringProcessing8TypedIntVyAC16_ElementRegisterOGGMR);
  v2 = *v0;
  v3 = static _DictionaryStorage.copy(original:)();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = v14 | (v8 << 6);
        v18 = (*(v2 + 48) + 16 * v17);
        v20 = *v18;
        v19 = v18[1];
        v21 = *(*(v2 + 56) + 8 * v17);
        v22 = (*(v4 + 48) + 16 * v17);
        *v22 = v20;
        v22[1] = v19;
        *(*(v4 + 56) + 8 * v17) = v21;
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 64 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }

  return result;
}

{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCy17_StringProcessing11ReferenceIDVSayAC8TypedIntVyAC19_InstructionAddressOGGGMd, &_ss18_DictionaryStorageCy17_StringProcessing11ReferenceIDVSayAC8TypedIntVyAC19_InstructionAddressOGGGMR);
  v2 = *v0;
  v3 = static _DictionaryStorage.copy(original:)();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = v14 | (v8 << 6);
        v18 = *(*(v2 + 56) + 8 * v17);
        *(*(v4 + 48) + 8 * v17) = *(*(v2 + 48) + 8 * v17);
        *(*(v4 + 56) + 8 * v17) = v18;
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 64 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }

  return result;
}

{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCySays5UInt8VG17_StringProcessing8TypedIntVyAF13_UTF8RegisterOGGMd, &_ss18_DictionaryStorageCySays5UInt8VG17_StringProcessing8TypedIntVyAF13_UTF8RegisterOGGMR);
  v2 = *v0;
  v3 = static _DictionaryStorage.copy(original:)();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = v14 | (v8 << 6);
        v18 = *(*(v2 + 56) + 8 * v17);
        *(*(v4 + 48) + 8 * v17) = *(*(v2 + 48) + 8 * v17);
        *(*(v4 + 56) + 8 * v17) = v18;
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 64 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }

  return result;
}

char *specialized _ArrayBuffer._consumeAndCreateNew()(uint64_t a1)
{
  return specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(a1 + 16), 0, a1);
}

{
  return specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(a1 + 16), 0, a1, &_ss23_ContiguousArrayStorageCySS5IndexVGMd, &_ss23_ContiguousArrayStorageCySS5IndexVGMR);
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
  return specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(a1 + 16), 0, a1, &_ss23_ContiguousArrayStorageCy17_StringProcessing11InstructionVGMd, &_ss23_ContiguousArrayStorageCy17_StringProcessing11InstructionVGMR);
}

{
  return specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(a1 + 16), 0, a1);
}

unint64_t _StringGuts.validateScalarIndex(_:)(unint64_t result, unint64_t a2, unint64_t a3)
{
  v3 = (a2 >> 59) & 1;
  if ((a3 & 0x1000000000000000) == 0)
  {
    LOBYTE(v3) = 1;
  }

  if ((result & 1) == 0 || (result & 0xC) == 4 << v3)
  {
    goto LABEL_9;
  }

  v4 = HIBYTE(a3) & 0xF;
  if ((a3 & 0x2000000000000000) == 0)
  {
    v4 = a2 & 0xFFFFFFFFFFFFLL;
  }

  if (v4 <= result >> 16)
  {
    __break(1u);
LABEL_9:
    result = _StringGuts.validateSubscalarIndex(_:)(result, a2, a3);
    if ((result & 1) == 0)
    {
      return result & 0xC | _StringGuts.scalarAlignSlow(_:)(result, a2, a3) & 0xFFFFFFFFFFFFFFF3 | 1;
    }
  }

  return result;
}

unint64_t _StringGuts.validateSubscalarIndex(_:)(unint64_t result, unint64_t a2, unint64_t a3)
{
  v3 = (a2 >> 59) & 1;
  if ((a3 & 0x1000000000000000) == 0)
  {
    LOBYTE(v3) = 1;
  }

  if ((result & 0xC) == 4 << v3)
  {
    v5 = a2;
    v6 = a3;
    result = _StringGuts._slowEnsureMatchingEncoding(_:)(result, a2, a3);
    a2 = v5;
    a3 = v6;
  }

  v4 = HIBYTE(a3) & 0xF;
  if ((a3 & 0x2000000000000000) == 0)
  {
    v4 = a2 & 0xFFFFFFFFFFFFLL;
  }

  if (v4 <= result >> 16)
  {
    __break(1u);
  }

  return result;
}

uint64_t specialized Set._Variant.insert(_:)(unint64_t *a1, unint64_t a2)
{
  v5 = *v2;
  v6 = *(*v2 + 40);
  Hasher.init(_seed:)();
  MEMORY[0x193ACEFC0](a2 >> 14);
  v7 = Hasher._finalize()();
  v8 = -1 << *(v5 + 32);
  v9 = v7 & ~v8;
  if ((*(v5 + 56 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9))
  {
    v10 = ~v8;
    while (1)
    {
      v11 = *(v5 + 48);
      if (a2 >> 14 == *(v11 + 8 * v9) >> 14)
      {
        break;
      }

      v9 = (v9 + 1) & v10;
      if (((*(v5 + 56 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) == 0)
      {
        goto LABEL_5;
      }
    }

    result = 0;
    a2 = *(v11 + 8 * v9);
  }

  else
  {
LABEL_5:
    v12 = *v2;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v15 = *v2;
    specialized _NativeSet.insertNew(_:at:isUnique:)(a2, v9, isUniquelyReferenced_nonNull_native);
    *v2 = v15;
    result = 1;
  }

  *a1 = a2;
  return result;
}

uint64_t specialized Set._Variant.insert(_:)(Swift::Int *a1, Swift::Int a2, Swift::Int a3)
{
  v7 = *v3;
  v8 = *(*v3 + 40);
  Hasher.init(_seed:)();
  MEMORY[0x193ACE6E0](v20, a2, a3);
  v9 = Hasher._finalize()();
  v10 = -1 << *(v7 + 32);
  v11 = v9 & ~v10;
  if ((*(v7 + 56 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11))
  {
    v12 = ~v10;
    while (1)
    {
      v13 = (*(v7 + 48) + 16 * v11);
      v14 = *v13 == a2 && v13[1] == a3;
      if (v14 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
      {
        break;
      }

      v11 = (v11 + 1) & v12;
      if (((*(v7 + 56 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11) & 1) == 0)
      {
        goto LABEL_9;
      }
    }

    v18 = (*(v7 + 48) + 16 * v11);
    v19 = v18[1];
    *a1 = *v18;
    a1[1] = v19;

    return 0;
  }

  else
  {
LABEL_9:
    v15 = *v3;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v20[0] = *v3;

    specialized _NativeSet.insertNew(_:at:isUnique:)(a2, a3, v11, isUniquelyReferenced_nonNull_native);
    *v3 = v20[0];
    *a1 = a2;
    a1[1] = a3;
    return 1;
  }
}

uint64_t specialized Set._Variant.insert(_:)(_DWORD *a1, Swift::Int a2)
{
  v5 = *v2;
  v6 = *(*v2 + 40);
  Hasher.init(_seed:)();
  Hasher._combine(_:)(a2);
  v7 = Hasher._finalize()();
  v8 = -1 << *(v5 + 32);
  v9 = v7 & ~v8;
  if ((*(v5 + 56 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9))
  {
    v10 = ~v8;
    while (*(*(v5 + 48) + 4 * v9) != a2)
    {
      v9 = (v9 + 1) & v10;
      if (((*(v5 + 56 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) == 0)
      {
        goto LABEL_5;
      }
    }

    result = 0;
  }

  else
  {
LABEL_5:
    v11 = *v2;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v14 = *v2;
    specialized _NativeSet.insertNew(_:at:isUnique:)(a2, v9, isUniquelyReferenced_nonNull_native);
    *v2 = v14;
    result = 1;
  }

  *a1 = a2;
  return result;
}

uint64_t specialized _NativeSet.resize(capacity:)(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss11_SetStorageCySS5IndexVGMd, &_ss11_SetStorageCySS5IndexVGMR);
  result = static _SetStorage.resize(original:capacity:move:)();
  v6 = result;
  if (*(v3 + 16))
  {
    v28 = v2;
    v7 = 0;
    v8 = (v3 + 56);
    v9 = 1 << *(v3 + 32);
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    else
    {
      v10 = -1;
    }

    v11 = v10 & *(v3 + 56);
    v12 = (v9 + 63) >> 6;
    v13 = result + 56;
    while (v11)
    {
      v15 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
LABEL_17:
      v18 = *(*(v3 + 48) + 8 * (v15 | (v7 << 6)));
      v19 = *(v6 + 40);
      Hasher.init(_seed:)();
      MEMORY[0x193ACEFC0](v18 >> 14);
      result = Hasher._finalize()();
      v20 = -1 << *(v6 + 32);
      v21 = result & ~v20;
      v22 = v21 >> 6;
      if (((-1 << v21) & ~*(v13 + 8 * (v21 >> 6))) == 0)
      {
        v23 = 0;
        v24 = (63 - v20) >> 6;
        while (++v22 != v24 || (v23 & 1) == 0)
        {
          v25 = v22 == v24;
          if (v22 == v24)
          {
            v22 = 0;
          }

          v23 |= v25;
          v26 = *(v13 + 8 * v22);
          if (v26 != -1)
          {
            v14 = __clz(__rbit64(~v26)) + (v22 << 6);
            goto LABEL_9;
          }
        }

LABEL_32:
        __break(1u);
        return result;
      }

      v14 = __clz(__rbit64((-1 << v21) & ~*(v13 + 8 * (v21 >> 6)))) | v21 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v13 + ((v14 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v14;
      *(*(v6 + 48) + 8 * v14) = v18;
      ++*(v6 + 16);
    }

    v16 = v7;
    while (1)
    {
      v7 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        __break(1u);
        goto LABEL_32;
      }

      if (v7 >= v12)
      {
        break;
      }

      v17 = v8[v7];
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v11 = (v17 - 1) & v17;
        goto LABEL_17;
      }
    }

    v27 = 1 << *(v3 + 32);
    if (v27 >= 64)
    {
      bzero((v3 + 56), ((v27 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v8 = -1 << v27;
    }

    v2 = v28;
    *(v3 + 16) = 0;
  }

  *v2 = v6;
  return result;
}

{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss11_SetStorageCySJGMd, &_ss11_SetStorageCySJGMR);
  result = static _SetStorage.resize(original:capacity:move:)();
  v6 = result;
  if (*(v3 + 16))
  {
    v31 = v2;
    v7 = 0;
    v8 = (v3 + 56);
    v9 = 1 << *(v3 + 32);
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    else
    {
      v10 = -1;
    }

    v11 = v10 & *(v3 + 56);
    v12 = (v9 + 63) >> 6;
    v13 = result + 56;
    while (v11)
    {
      v16 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
LABEL_17:
      v19 = (*(v3 + 48) + 16 * (v16 | (v7 << 6)));
      v20 = *v19;
      v21 = v19[1];
      v22 = *(v6 + 40);
      Hasher.init(_seed:)();
      MEMORY[0x193ACE6E0](v32, v20, v21);
      result = Hasher._finalize()();
      v23 = -1 << *(v6 + 32);
      v24 = result & ~v23;
      v25 = v24 >> 6;
      if (((-1 << v24) & ~*(v13 + 8 * (v24 >> 6))) == 0)
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
          v29 = *(v13 + 8 * v25);
          if (v29 != -1)
          {
            v14 = __clz(__rbit64(~v29)) + (v25 << 6);
            goto LABEL_9;
          }
        }

LABEL_32:
        __break(1u);
        return result;
      }

      v14 = __clz(__rbit64((-1 << v24) & ~*(v13 + 8 * (v24 >> 6)))) | v24 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v13 + ((v14 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v14;
      v15 = (*(v6 + 48) + 16 * v14);
      *v15 = v20;
      v15[1] = v21;
      ++*(v6 + 16);
    }

    v17 = v7;
    while (1)
    {
      v7 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        __break(1u);
        goto LABEL_32;
      }

      if (v7 >= v12)
      {
        break;
      }

      v18 = v8[v7];
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v11 = (v18 - 1) & v18;
        goto LABEL_17;
      }
    }

    v30 = 1 << *(v3 + 32);
    if (v30 >= 64)
    {
      bzero((v3 + 56), ((v30 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v8 = -1 << v30;
    }

    v2 = v31;
    *(v3 + 16) = 0;
  }

  *v2 = v6;
  return result;
}

{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss11_SetStorageCys7UnicodeO6ScalarVGMd, &_ss11_SetStorageCys7UnicodeO6ScalarVGMR);
  result = static _SetStorage.resize(original:capacity:move:)();
  v6 = result;
  if (*(v3 + 16))
  {
    v28 = v2;
    v7 = 0;
    v8 = (v3 + 56);
    v9 = 1 << *(v3 + 32);
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    else
    {
      v10 = -1;
    }

    v11 = v10 & *(v3 + 56);
    v12 = (v9 + 63) >> 6;
    v13 = result + 56;
    while (v11)
    {
      v15 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
LABEL_17:
      v18 = *(*(v3 + 48) + 4 * (v15 | (v7 << 6)));
      v19 = *(v6 + 40);
      Hasher.init(_seed:)();
      Hasher._combine(_:)(v18);
      result = Hasher._finalize()();
      v20 = -1 << *(v6 + 32);
      v21 = result & ~v20;
      v22 = v21 >> 6;
      if (((-1 << v21) & ~*(v13 + 8 * (v21 >> 6))) == 0)
      {
        v23 = 0;
        v24 = (63 - v20) >> 6;
        while (++v22 != v24 || (v23 & 1) == 0)
        {
          v25 = v22 == v24;
          if (v22 == v24)
          {
            v22 = 0;
          }

          v23 |= v25;
          v26 = *(v13 + 8 * v22);
          if (v26 != -1)
          {
            v14 = __clz(__rbit64(~v26)) + (v22 << 6);
            goto LABEL_9;
          }
        }

LABEL_32:
        __break(1u);
        return result;
      }

      v14 = __clz(__rbit64((-1 << v21) & ~*(v13 + 8 * (v21 >> 6)))) | v21 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v13 + ((v14 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v14;
      *(*(v6 + 48) + 4 * v14) = v18;
      ++*(v6 + 16);
    }

    v16 = v7;
    while (1)
    {
      v7 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        __break(1u);
        goto LABEL_32;
      }

      if (v7 >= v12)
      {
        break;
      }

      v17 = v8[v7];
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v11 = (v17 - 1) & v17;
        goto LABEL_17;
      }
    }

    v27 = 1 << *(v3 + 32);
    if (v27 >= 64)
    {
      bzero((v3 + 56), ((v27 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v8 = -1 << v27;
    }

    v2 = v28;
    *(v3 + 16) = 0;
  }

  *v2 = v6;
  return result;
}

Swift::Int specialized _NativeSet.insertNew(_:at:isUnique:)(Swift::Int result, unint64_t a2, char a3)
{
  v4 = result;
  v5 = *(*v3 + 16);
  v6 = *(*v3 + 24);
  if (v6 > v5 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    specialized _NativeSet.resize(capacity:)(v5 + 1);
  }

  else
  {
    if (v6 > v5)
    {
      v7 = a2;
      result = specialized _NativeSet.copy()();
      a2 = v7;
      goto LABEL_12;
    }

    specialized _NativeSet.copyAndResize(capacity:)(v5 + 1);
  }

  v8 = *v3;
  v9 = *(*v3 + 40);
  Hasher.init(_seed:)();
  MEMORY[0x193ACEFC0](v4 >> 14);
  result = Hasher._finalize()();
  v10 = -1 << *(v8 + 32);
  a2 = result & ~v10;
  if ((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v11 = ~v10;
    while (v4 >> 14 != *(*(v8 + 48) + 8 * a2) >> 14)
    {
      a2 = (a2 + 1) & v11;
      if (((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) == 0)
      {
        goto LABEL_12;
      }
    }

    goto LABEL_15;
  }

LABEL_12:
  v12 = *v3;
  *(*v3 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  *(*(v12 + 48) + 8 * a2) = v4;
  v13 = *(v12 + 16);
  v14 = __OFADD__(v13, 1);
  v15 = v13 + 1;
  if (!v14)
  {
    *(v12 + 16) = v15;
    return result;
  }

  __break(1u);
LABEL_15:
  result = ELEMENT_TYPE_OF_SET_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return result;
}

{
  v4 = result;
  v5 = *(*v3 + 16);
  v6 = *(*v3 + 24);
  if (v6 > v5 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    specialized _NativeSet.resize(capacity:)(v5 + 1);
  }

  else
  {
    if (v6 > v5)
    {
      v7 = a2;
      result = specialized _NativeSet.copy()();
      a2 = v7;
      goto LABEL_12;
    }

    specialized _NativeSet.copyAndResize(capacity:)(v5 + 1);
  }

  v8 = *v3;
  v9 = *(*v3 + 40);
  Hasher.init(_seed:)();
  Hasher._combine(_:)(v4);
  result = Hasher._finalize()();
  v10 = -1 << *(v8 + 32);
  a2 = result & ~v10;
  if ((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v11 = ~v10;
    while (*(*(v8 + 48) + 4 * a2) != v4)
    {
      a2 = (a2 + 1) & v11;
      if (((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) == 0)
      {
        goto LABEL_12;
      }
    }

    goto LABEL_15;
  }

LABEL_12:
  v12 = *v3;
  *(*v3 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  *(*(v12 + 48) + 4 * a2) = v4;
  v13 = *(v12 + 16);
  v14 = __OFADD__(v13, 1);
  v15 = v13 + 1;
  if (!v14)
  {
    *(v12 + 16) = v15;
    return result;
  }

  __break(1u);
LABEL_15:
  result = ELEMENT_TYPE_OF_SET_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return result;
}

Swift::Int specialized _NativeSet.insertNew(_:at:isUnique:)(Swift::Int result, Swift::Int a2, unint64_t a3, char a4)
{
  v7 = result;
  v8 = *(*v4 + 16);
  v9 = *(*v4 + 24);
  if (v9 > v8 && (a4 & 1) != 0)
  {
    goto LABEL_16;
  }

  if (a4)
  {
    specialized _NativeSet.resize(capacity:)(v8 + 1);
  }

  else
  {
    if (v9 > v8)
    {
      result = specialized _NativeSet.copy()();
      goto LABEL_16;
    }

    specialized _NativeSet.copyAndResize(capacity:)(v8 + 1);
  }

  v10 = *v4;
  v11 = *(*v4 + 40);
  Hasher.init(_seed:)();
  MEMORY[0x193ACE6E0](v21, v7, a2);
  result = Hasher._finalize()();
  v12 = -1 << *(v10 + 32);
  a3 = result & ~v12;
  if ((*(v10 + 56 + ((a3 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a3))
  {
    v13 = ~v12;
    do
    {
      v14 = (*(v10 + 48) + 16 * a3);
      if (*v14 == v7 && v14[1] == a2)
      {
        goto LABEL_19;
      }

      result = _stringCompareWithSmolCheck(_:_:expecting:)();
      if (result)
      {
        goto LABEL_19;
      }

      a3 = (a3 + 1) & v13;
    }

    while (((*(v10 + 56 + ((a3 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a3) & 1) != 0);
  }

LABEL_16:
  v16 = *v4;
  *(*v4 + 8 * (a3 >> 6) + 56) |= 1 << a3;
  v17 = (*(v16 + 48) + 16 * a3);
  *v17 = v7;
  v17[1] = a2;
  v18 = *(v16 + 16);
  v19 = __OFADD__(v18, 1);
  v20 = v18 + 1;
  if (!v19)
  {
    *(v16 + 16) = v20;
    return result;
  }

  __break(1u);
LABEL_19:
  result = ELEMENT_TYPE_OF_SET_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return result;
}

void *specialized _NativeSet.copy()()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss11_SetStorageCySS5IndexVGMd, &_ss11_SetStorageCySS5IndexVGMR);
  v2 = *v0;
  v3 = static _SetStorage.copy(original:)();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 56);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 56 + 8 * v6)
    {
      result = memmove(result, (v2 + 56), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = -1;
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    v11 = v10 & *(v2 + 56);
    for (i = (v9 + 63) >> 6; v11; *(*(v4 + 48) + 8 * v14) = *(*(v2 + 48) + 8 * v14))
    {
      v13 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
      v14 = v13 | (v8 << 6);
LABEL_17:
      ;
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= i)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 56 + 8 * v8);
      ++v15;
      if (v16)
      {
        v11 = (v16 - 1) & v16;
        v14 = __clz(__rbit64(v16)) | (v8 << 6);
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }

  return result;
}

{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss11_SetStorageCySJGMd, &_ss11_SetStorageCySJGMR);
  v2 = *v0;
  v3 = static _SetStorage.copy(original:)();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 56);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 56 + 8 * v6)
    {
      result = memmove(result, (v2 + 56), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 56);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = 16 * (v14 | (v8 << 6));
        v18 = (*(v2 + 48) + v17);
        v19 = v18[1];
        v20 = (*(v4 + 48) + v17);
        *v20 = *v18;
        v20[1] = v19;
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 56 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }

  return result;
}

{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss11_SetStorageCys7UnicodeO6ScalarVGMd, &_ss11_SetStorageCys7UnicodeO6ScalarVGMR);
  v2 = *v0;
  v3 = static _SetStorage.copy(original:)();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 56);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 56 + 8 * v6)
    {
      result = memmove(result, (v2 + 56), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = -1;
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    v11 = v10 & *(v2 + 56);
    for (i = (v9 + 63) >> 6; v11; *(*(v4 + 48) + 4 * v14) = *(*(v2 + 48) + 4 * v14))
    {
      v13 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
      v14 = v13 | (v8 << 6);
LABEL_17:
      ;
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= i)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 56 + 8 * v8);
      ++v15;
      if (v16)
      {
        v11 = (v16 - 1) & v16;
        v14 = __clz(__rbit64(v16)) | (v8 << 6);
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }

  return result;
}

uint64_t specialized _NativeSet.copyAndResize(capacity:)(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss11_SetStorageCySS5IndexVGMd, &_ss11_SetStorageCySS5IndexVGMR);
  result = static _SetStorage.resize(original:capacity:move:)();
  v6 = result;
  if (*(v3 + 16))
  {
    v26 = v2;
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
    v12 = result + 56;
    while (v10)
    {
      v14 = __clz(__rbit64(v10));
      v10 &= v10 - 1;
LABEL_17:
      v17 = *(*(v3 + 48) + 8 * (v14 | (v7 << 6)));
      v18 = *(v6 + 40);
      Hasher.init(_seed:)();
      MEMORY[0x193ACEFC0](v17 >> 14);
      result = Hasher._finalize()();
      v19 = -1 << *(v6 + 32);
      v20 = result & ~v19;
      v21 = v20 >> 6;
      if (((-1 << v20) & ~*(v12 + 8 * (v20 >> 6))) == 0)
      {
        v22 = 0;
        v23 = (63 - v19) >> 6;
        while (++v21 != v23 || (v22 & 1) == 0)
        {
          v24 = v21 == v23;
          if (v21 == v23)
          {
            v21 = 0;
          }

          v22 |= v24;
          v25 = *(v12 + 8 * v21);
          if (v25 != -1)
          {
            v13 = __clz(__rbit64(~v25)) + (v21 << 6);
            goto LABEL_9;
          }
        }

        goto LABEL_30;
      }

      v13 = __clz(__rbit64((-1 << v20) & ~*(v12 + 8 * (v20 >> 6)))) | v20 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v12 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
      *(*(v6 + 48) + 8 * v13) = v17;
      ++*(v6 + 16);
    }

    v15 = v7;
    while (1)
    {
      v7 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v7 >= v11)
      {

        v2 = v26;
        goto LABEL_28;
      }

      v16 = *(v3 + 56 + 8 * v7);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v10 = (v16 - 1) & v16;
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
    *v2 = v6;
  }

  return result;
}

{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss11_SetStorageCySJGMd, &_ss11_SetStorageCySJGMR);
  result = static _SetStorage.resize(original:capacity:move:)();
  v6 = result;
  if (*(v3 + 16))
  {
    v29 = v2;
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
    v12 = result + 56;
    while (v10)
    {
      v15 = __clz(__rbit64(v10));
      v10 &= v10 - 1;
LABEL_17:
      v18 = (*(v3 + 48) + 16 * (v15 | (v7 << 6)));
      v20 = *v18;
      v19 = v18[1];
      v21 = *(v6 + 40);
      Hasher.init(_seed:)();
      MEMORY[0x193ACE6E0](v30, v20, v19);
      result = Hasher._finalize()();
      v22 = -1 << *(v6 + 32);
      v23 = result & ~v22;
      v24 = v23 >> 6;
      if (((-1 << v23) & ~*(v12 + 8 * (v23 >> 6))) == 0)
      {
        v25 = 0;
        v26 = (63 - v22) >> 6;
        while (++v24 != v26 || (v25 & 1) == 0)
        {
          v27 = v24 == v26;
          if (v24 == v26)
          {
            v24 = 0;
          }

          v25 |= v27;
          v28 = *(v12 + 8 * v24);
          if (v28 != -1)
          {
            v13 = __clz(__rbit64(~v28)) + (v24 << 6);
            goto LABEL_9;
          }
        }

        goto LABEL_30;
      }

      v13 = __clz(__rbit64((-1 << v23) & ~*(v12 + 8 * (v23 >> 6)))) | v23 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v12 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
      v14 = (*(v6 + 48) + 16 * v13);
      *v14 = v20;
      v14[1] = v19;
      ++*(v6 + 16);
    }

    v16 = v7;
    while (1)
    {
      v7 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        break;
      }

      if (v7 >= v11)
      {

        v2 = v29;
        goto LABEL_28;
      }

      v17 = *(v3 + 56 + 8 * v7);
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v10 = (v17 - 1) & v17;
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
    *v2 = v6;
  }

  return result;
}

{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss11_SetStorageCys7UnicodeO6ScalarVGMd, &_ss11_SetStorageCys7UnicodeO6ScalarVGMR);
  result = static _SetStorage.resize(original:capacity:move:)();
  v6 = result;
  if (*(v3 + 16))
  {
    v26 = v2;
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
    v12 = result + 56;
    while (v10)
    {
      v14 = __clz(__rbit64(v10));
      v10 &= v10 - 1;
LABEL_17:
      v17 = *(*(v3 + 48) + 4 * (v14 | (v7 << 6)));
      v18 = *(v6 + 40);
      Hasher.init(_seed:)();
      Hasher._combine(_:)(v17);
      result = Hasher._finalize()();
      v19 = -1 << *(v6 + 32);
      v20 = result & ~v19;
      v21 = v20 >> 6;
      if (((-1 << v20) & ~*(v12 + 8 * (v20 >> 6))) == 0)
      {
        v22 = 0;
        v23 = (63 - v19) >> 6;
        while (++v21 != v23 || (v22 & 1) == 0)
        {
          v24 = v21 == v23;
          if (v21 == v23)
          {
            v21 = 0;
          }

          v22 |= v24;
          v25 = *(v12 + 8 * v21);
          if (v25 != -1)
          {
            v13 = __clz(__rbit64(~v25)) + (v21 << 6);
            goto LABEL_9;
          }
        }

        goto LABEL_30;
      }

      v13 = __clz(__rbit64((-1 << v20) & ~*(v12 + 8 * (v20 >> 6)))) | v20 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v12 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
      *(*(v6 + 48) + 4 * v13) = v17;
      ++*(v6 + 16);
    }

    v15 = v7;
    while (1)
    {
      v7 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v7 >= v11)
      {

        v2 = v26;
        goto LABEL_28;
      }

      v16 = *(v3 + 56 + 8 * v7);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v10 = (v16 - 1) & v16;
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
    *v2 = v6;
  }

  return result;
}