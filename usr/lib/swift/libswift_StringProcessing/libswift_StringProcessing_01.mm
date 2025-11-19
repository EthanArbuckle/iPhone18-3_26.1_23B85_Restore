unint64_t specialized BidirectionalCollection.last.getter(unint64_t a1, unint64_t a2)
{
  if ((a2 & 0x2000000000000000) != 0)
  {
    v2 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v2 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (!v2)
  {
    v11 = 0;
    goto LABEL_28;
  }

  v5 = 7;
  if (((a2 >> 60) & ((a1 & 0x800000000000000) == 0)) != 0)
  {
    v5 = 11;
  }

  v6 = _StringGuts.validateInclusiveScalarIndex(_:)(v5 | (v2 << 16), a1, a2);
  if (v6 < 0x4000)
  {
    __break(1u);
    goto LABEL_30;
  }

  if ((a2 & 0x1000000000000000) != 0)
  {
LABEL_30:
    v16 = String.UnicodeScalarView._foreignIndex(before:)();
    _StringGuts.validateScalarIndex(_:)(v16, a1, a2);
    v11 = _StringGuts.foreignErrorCorrectedScalar(startingAt:)();
    goto LABEL_28;
  }

  if ((a2 & 0x2000000000000000) != 0)
  {
    v18 = a1;
    v19 = a2 & 0xFFFFFFFFFFFFFFLL;
    v12 = &v18 + (v6 >> 16);
    if ((*(v12 - 1) & 0xC0) == 0x80)
    {
      v9 = -2;
      do
      {
        v13 = v12[v9--] & 0xC0;
      }

      while (v13 == 128);
      goto LABEL_20;
    }

LABEL_21:
    v14 = -1;
    goto LABEL_22;
  }

  if ((a1 & 0x1000000000000000) != 0)
  {
    v7 = (a2 & 0xFFFFFFFFFFFFFFFLL) + 32;
  }

  else
  {
    v17 = v6;
    v7 = _StringObject.sharedUTF8.getter();
    v6 = v17;
  }

  v8 = v7 + (v6 >> 16);
  if ((*(v8 - 1) & 0xC0) != 0x80)
  {
    goto LABEL_21;
  }

  v9 = -2;
  do
  {
    v10 = *(v8 + v9--) & 0xC0;
  }

  while (v10 == 128);
LABEL_20:
  v14 = v9 + 1;
LABEL_22:
  _StringGuts.validateScalarIndex(_:)((v6 + (v14 << 16)) & 0xFFFFFFFFFFFF0000 | 5, a1, a2);
  if ((a2 & 0x2000000000000000) != 0)
  {
    v18 = a1;
    v19 = a2 & 0xFFFFFFFFFFFFFFLL;
  }

  else if ((a1 & 0x1000000000000000) == 0)
  {
    _StringObject.sharedUTF8.getter();
  }

  v11 = _decodeScalar(_:startingAt:)();
LABEL_28:
  LOBYTE(v18) = v2 == 0;
  return v11 | ((v2 == 0) << 32);
}

uint64_t specialized BidirectionalCollection.last.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *(a1 + 16);
  if (v3)
  {
    v5 = v3 - 1;
    v6 = type metadata accessor for DSLTree.CustomCharacterClass.Member(0);
    v13 = *(v6 - 8);
    outlined init with copy of DSLTree._AST.AbsentFunction(a1 + ((*(v13 + 80) + 32) & ~*(v13 + 80)) + *(v13 + 72) * v5, a2, type metadata accessor for DSLTree.CustomCharacterClass.Member);
    v7 = *(v13 + 56);
    v8 = a2;
    v9 = 0;
    v10 = v6;
  }

  else
  {
    v11 = type metadata accessor for DSLTree.CustomCharacterClass.Member(0);
    v7 = *(*(v11 - 8) + 56);
    v10 = v11;
    v8 = a2;
    v9 = 1;
  }

  return v7(v8, v9, 1, v10);
}

uint64_t DSLTree.Atom.CharacterClass.asRuntimeModel(_:)(_StringProcessing::MatchingOptions a1)
{
  v2 = *v1;
  v3 = 2;
  v4 = *v1;
  switch(v2)
  {
    case 1:
      goto LABEL_10;
    case 2:
      v4 = 0;
      v3 = 3;
      goto LABEL_11;
    case 3:
      v4 = 0x1000000;
      v3 = v2;
      goto LABEL_11;
    case 4:
    case 6:
      v4 = 0;
      v3 = v2;
      goto LABEL_11;
    case 5:
      v3 = 4;
      goto LABEL_10;
    case 7:
      v3 = 6;
      goto LABEL_10;
    case 8:
      v4 = 0;
      v3 = 5;
      goto LABEL_11;
    case 9:
      v3 = 5;
      goto LABEL_10;
    case 10:
      v4 = 0;
      v3 = 7;
      goto LABEL_11;
    case 11:
      v3 = 7;
LABEL_10:
      v4 = 0x1000000;
      goto LABEL_11;
    case 12:
      v4 = 0;
      v3 = 1;
      goto LABEL_11;
    case 13:
      goto LABEL_19;
    default:
LABEL_11:
      v5 = *(a1.stack._rawValue + 2);
      if (!v5)
      {
        __break(1u);
LABEL_19:
        _assertionFailure(_:_:file:line:flags:)();
        __break(1u);
        JUMPOUT(0x18E587F10);
      }

      v6 = *(a1.stack._rawValue + v5 + 7);
      if (_CharacterClassModel.Representation.isStrictAscii(options:)(a1))
      {
        v7 = 0x10000;
      }

      else
      {
        v7 = 0;
      }

      return (v4 | v3 | v7 | (v6 >> 8) & 0x100) ^ 0x100;
  }
}

uint64_t specialized Compiler.ByteCodeGen.emitAlternationGen<A>(_:withBacktracking:_:)(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v5 = (a2 + *(type metadata accessor for Compiler.ByteCodeGen(0) + 20));
  v6 = v5[10];
  v22 = *(v6 + 2);
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    goto LABEL_24;
  }

  while (1)
  {
    v8 = *(v6 + 2);
    v7 = *(v6 + 3);
    if (v8 >= v7 >> 1)
    {
      v6 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v7 > 1), v8 + 1, 1, v6);
    }

    *(v6 + 2) = v8 + 1;
    v9 = &v6[16 * v8];
    *(v9 + 4) = 0;
    v9[40] = 1;
    v5[10] = v6;
    v10 = *(a1 + 16);

    if (v10 < 2)
    {
      break;
    }

    v15 = v10 - 1;
    v8 = 32;
    while (v15)
    {
      v16 = *(a1 + v8);
      v18 = *(v6 + 2);
      v17 = *(v6 + 3);

      if (v18 >= v17 >> 1)
      {
        v6 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v17 > 1), v18 + 1, 1, v6);
      }

      *(v6 + 2) = v18 + 1;
      v19 = &v6[16 * v18];
      *(v19 + 4) = 0;
      v19[40] = 1;
      v5[10] = v6;
      MEProgram.Builder.buildSave(_:)(v18, 0x1100000000000000);
      Compiler.ByteCodeGen.emitNode(_:)(v16);
      if (v3)
      {
        swift_unknownObjectRelease();
      }

      MEProgram.Builder.buildSave(_:)(v22, 0x400000000000000);
      v20 = *(*v5 + 16);
      v6 = v5[10];
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v6 = specialized _ArrayBuffer._consumeAndCreateNew()(v6);
      }

      if (v18 >= *(v6 + 2))
      {
        goto LABEL_23;
      }

      v21 = &v6[16 * v18];
      *(v21 + 4) = v20;
      v21[40] = 0;
      v5[10] = v6;
      v8 += 8;
      if (!--v15)
      {
        goto LABEL_5;
      }
    }

    __break(1u);
LABEL_23:
    __break(1u);
LABEL_24:
    v6 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v22 + 1, 1, v6);
  }

LABEL_5:
  swift_unknownObjectRelease();
  v11 = *(a1 + 16);
  if (!v11)
  {
    __break(1u);
LABEL_26:
    result = specialized _ArrayBuffer._consumeAndCreateNew()(v6);
    v6 = result;
    goto LABEL_8;
  }

  v12 = *(a1 + 8 * v11 + 24);

  Compiler.ByteCodeGen.emitNode(_:)(v12);

  if (v3)
  {
    return result;
  }

  v8 = *(*v5 + 16);
  v6 = v5[10];
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
    goto LABEL_26;
  }

LABEL_8:
  if (v22 >= *(v6 + 2))
  {
    __break(1u);
  }

  else
  {
    v14 = &v6[16 * v22];
    *(v14 + 4) = v8;
    v14[40] = 0;
    v5[10] = v6;
  }

  return result;
}

{
  v3 = v2;
  v40 = a1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s17_StringProcessing7DSLTreeV20CustomCharacterClassV6MemberOSgMd, &_s17_StringProcessing7DSLTreeV20CustomCharacterClassV6MemberOSgMR);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v8 = &v36 - v7;
  v37 = type metadata accessor for DSLTree.CustomCharacterClass.Member(0);
  v46 = *(v37 - 8);
  v9 = *(v46 + 64);
  MEMORY[0x1EEE9AC00](v37);
  v11 = &v36 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *(type metadata accessor for Compiler.ByteCodeGen(0) + 20);
  v45 = a2;
  v13 = (a2 + v12);
  v14 = *(a2 + v12 + 80);
  v44 = *(v14 + 2);
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    goto LABEL_32;
  }

  while (1)
  {
    v16 = *(v14 + 2);
    v15 = *(v14 + 3);
    v38 = v8;
    if (v16 >= v15 >> 1)
    {
      v14 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v15 > 1), v16 + 1, 1, v14);
    }

    *(v14 + 2) = v16 + 1;
    v17 = &v14[16 * v16];
    *(v17 + 4) = 0;
    v17[40] = 1;
    v13[10] = v14;
    v39 = specialized Collection.dropLast(_:)(1uLL, v40);
    v43 = v18;
    v20 = v19;
    v22 = v21 >> 1;

    if (v20 == v22)
    {
      break;
    }

    if (v20 <= v22)
    {
      v28 = v22;
    }

    else
    {
      v28 = v20;
    }

    v41 = v22;
    v42 = v28;
    while (v42 != v20)
    {
      outlined init with copy of DSLTree._AST.AbsentFunction(v43 + *(v46 + 72) * v20, v11, type metadata accessor for DSLTree.CustomCharacterClass.Member);
      v30 = *(v14 + 2);
      v29 = *(v14 + 3);
      if (v30 >= v29 >> 1)
      {
        v14 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v29 > 1), v30 + 1, 1, v14);
      }

      *(v14 + 2) = v30 + 1;
      v31 = &v14[16 * v30];
      *(v31 + 4) = 0;
      v31[40] = 1;
      v13[10] = v14;
      MEProgram.Builder.buildSave(_:)(v30, 0x1100000000000000);
      Compiler.ByteCodeGen.emitCCCMember(_:)(v11);
      if (v3)
      {
        outlined destroy of MEProgram(v11, type metadata accessor for DSLTree.CustomCharacterClass.Member);
        return swift_unknownObjectRelease();
      }

      outlined destroy of MEProgram(v11, type metadata accessor for DSLTree.CustomCharacterClass.Member);
      v32 = *v13;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v32 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v32 + 2) + 1, 1, v32, &_ss23_ContiguousArrayStorageCy17_StringProcessing11InstructionVGMd, &_ss23_ContiguousArrayStorageCy17_StringProcessing11InstructionVGMR);
      }

      v34 = *(v32 + 2);
      v33 = *(v32 + 3);
      if (v34 >= v33 >> 1)
      {
        v32 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v33 > 1), v34 + 1, 1, v32, &_ss23_ContiguousArrayStorageCy17_StringProcessing11InstructionVGMd, &_ss23_ContiguousArrayStorageCy17_StringProcessing11InstructionVGMR);
      }

      *(v32 + 2) = v34 + 1;
      *&v32[8 * v34 + 32] = 0x1300000000000000;
      *v13 = v32;
      MEProgram.Builder.buildSave(_:)(v44, 0x400000000000000);
      v8 = *(*v13 + 2);
      v14 = v13[10];
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v14 = specialized _ArrayBuffer._consumeAndCreateNew()(v14);
      }

      if (v30 >= *(v14 + 2))
      {
        goto LABEL_31;
      }

      v35 = &v14[16 * v30];
      *(v35 + 4) = v8;
      ++v20;
      v35[40] = 0;
      v13[10] = v14;
      if (v41 == v20)
      {
        goto LABEL_5;
      }
    }

    __break(1u);
LABEL_31:
    __break(1u);
LABEL_32:
    v14 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v44 + 1, 1, v14);
  }

LABEL_5:
  swift_unknownObjectRelease();
  v23 = v38;
  specialized BidirectionalCollection.last.getter(v40, v38);
  result = (*(v46 + 48))(v23, 1, v37);
  if (result == 1)
  {
LABEL_34:
    __break(1u);
    return result;
  }

  Compiler.ByteCodeGen.emitCCCMember(_:)(v23);
  result = outlined destroy of MEProgram(v23, type metadata accessor for DSLTree.CustomCharacterClass.Member);
  if (!v3)
  {
    v25 = *(*v13 + 2);
    v26 = v13[10];
    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
      result = specialized _ArrayBuffer._consumeAndCreateNew()(v26);
      v26 = result;
    }

    if (v44 < *(v26 + 16))
    {
      v27 = v26 + 16 * v44;
      *(v27 + 32) = v25;
      *(v27 + 40) = 0;
      v13[10] = v26;
      return result;
    }

    __break(1u);
    goto LABEL_34;
  }

  return result;
}

uint64_t specialized Compiler.ByteCodeGen.emitAlternationGen<A>(_:withBacktracking:_:)(unint64_t a1, unint64_t a2, uint64_t a3)
{
  v4 = (a3 + *(type metadata accessor for Compiler.ByteCodeGen(0) + 20));
  v5 = v4[10];
  v6 = *(v5 + 2);
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    goto LABEL_29;
  }

  while (1)
  {
    v8 = *(v5 + 2);
    v7 = *(v5 + 3);
    v32 = v6;
    if (v8 >= v7 >> 1)
    {
      v5 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v7 > 1), v8 + 1, 1, v5);
    }

    *(v5 + 2) = v8 + 1;
    v9 = &v5[16 * v8];
    *(v9 + 4) = 0;
    v9[40] = 1;
    v4[10] = v5;

    v30 = a1;
    v10 = specialized Collection.dropLast(_:)(1, a1, a2, specialized Collection.count.getter, String.UnicodeScalarView.index(_:offsetBy:limitedBy:), MEMORY[0x1E69E60C0]);
    v12 = v11;
    v14 = v13;
    v16 = v15;

    if (v12 >> 14 == v10 >> 14)
    {
      break;
    }

    v20 = v10;
    while (1)
    {
      _StringGuts.validateScalarIndex(_:in:)(v20, v10, v12, v14, v16);
      if ((v16 & 0x1000000000000000) != 0)
      {
        v21 = _StringGuts.foreignErrorCorrectedScalar(startingAt:)();
      }

      else
      {
        if ((v16 & 0x2000000000000000) == 0 && (v14 & 0x1000000000000000) == 0)
        {
          _StringObject.sharedUTF8.getter();
        }

        v21 = _decodeScalar(_:startingAt:)();
      }

      v22 = v21;
      Substring.UnicodeScalarView.formIndex(after:)();
      a1 = *(v5 + 2);
      v23 = *(v5 + 3);
      if (a1 >= v23 >> 1)
      {
        v5 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v23 > 1), a1 + 1, 1, v5);
      }

      *(v5 + 2) = a1 + 1;
      v6 = 16 * a1;
      v24 = &v5[16 * a1];
      *(v24 + 4) = 0;
      v24[40] = 1;
      v4[10] = v5;
      MEProgram.Builder.buildSave(_:)(a1, 0x1100000000000000);
      Compiler.ByteCodeGen.emitMatchScalar(_:)(v22);
      v25 = *v4;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v25 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v25 + 2) + 1, 1, v25, &_ss23_ContiguousArrayStorageCy17_StringProcessing11InstructionVGMd, &_ss23_ContiguousArrayStorageCy17_StringProcessing11InstructionVGMR);
      }

      v27 = *(v25 + 2);
      v26 = *(v25 + 3);
      if (v27 >= v26 >> 1)
      {
        v25 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v26 > 1), v27 + 1, 1, v25, &_ss23_ContiguousArrayStorageCy17_StringProcessing11InstructionVGMd, &_ss23_ContiguousArrayStorageCy17_StringProcessing11InstructionVGMR);
      }

      *(v25 + 2) = v27 + 1;
      *&v25[8 * v27 + 32] = 0x1300000000000000;
      *v4 = v25;
      MEProgram.Builder.buildSave(_:)(v32, 0x400000000000000);
      v28 = *(*v4 + 2);
      v5 = v4[10];
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v5 = specialized _ArrayBuffer._consumeAndCreateNew()(v5);
      }

      if (a1 >= *(v5 + 2))
      {
        break;
      }

      v29 = &v5[v6];
      *(v29 + 4) = v28;
      v29[40] = 0;
      v4[10] = v5;
      v20 = v10;
      if (v12 >> 14 == v10 >> 14)
      {
        goto LABEL_5;
      }
    }

    __break(1u);
LABEL_29:
    v5 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v6 + 1, 1, v5);
  }

LABEL_5:

  result = specialized BidirectionalCollection.last.getter(v30, a2);
  if ((result & 0x100000000) == 0)
  {
    Compiler.ByteCodeGen.emitMatchScalar(_:)(result);
    v18 = *(*v4 + 2);
    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
      result = specialized _ArrayBuffer._consumeAndCreateNew()(v5);
      v5 = result;
    }

    if (v32 < *(v5 + 2))
    {
      v19 = &v5[16 * v32];
      *(v19 + 4) = v18;
      v19[40] = 0;
      v4[10] = v5;
      return result;
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

unint64_t specialized Collection.dropLast(_:)(unint64_t result, uint64_t a2)
{
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else
  {
    v3 = *(a2 + 16);
    if ((v3 - result) >= 1 && v3 < result)
    {
      __break(1u);
    }

    v4 = *(type metadata accessor for DSLTree.CustomCharacterClass.Member(0) - 8);
    v5 = a2 + ((*(v4 + 80) + 32) & ~*(v4 + 80));
    return a2;
  }

  return result;
}

uint64_t MEProgram.Builder.buildSave(_:)(uint64_t a1, uint64_t a2)
{
  v5 = *v2;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v5 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v5 + 2) + 1, 1, v5, &_ss23_ContiguousArrayStorageCy17_StringProcessing11InstructionVGMd, &_ss23_ContiguousArrayStorageCy17_StringProcessing11InstructionVGMR);
  }

  v7 = *(v5 + 2);
  v6 = *(v5 + 3);
  if (v7 >= v6 >> 1)
  {
    v5 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v6 > 1), v7 + 1, 1, v5, &_ss23_ContiguousArrayStorageCy17_StringProcessing11InstructionVGMd, &_ss23_ContiguousArrayStorageCy17_StringProcessing11InstructionVGMR);
  }

  *(v5 + 2) = v7 + 1;
  *&v5[8 * v7 + 32] = a2;
  *v2 = v5;
  v8 = *(v2 + 88);
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
    result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v8 + 16) + 1, 1, v8);
    v8 = result;
  }

  v11 = *(v8 + 16);
  v10 = *(v8 + 24);
  if (v11 >= v10 >> 1)
  {
    result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v10 > 1), v11 + 1, 1, v8);
    v8 = result;
  }

  *(v8 + 16) = v11 + 1;
  v12 = v8 + 32 * v11;
  *(v12 + 32) = v7;
  *(v12 + 40) = a1;
  *(v12 + 48) = 0;
  *(v12 + 56) = 1;
  *(v2 + 88) = v8;
  return result;
}

uint64_t Compiler.ByteCodeGen.emitNoncapturingGroup(_:_:)(uint64_t a1, char *a2)
{
  v4 = v3;
  v92 = a2;
  v6 = type metadata accessor for AST.MatchingOptionSequence();
  v89 = *(v6 - 8);
  v7 = *(v89 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v90 = &v87 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for AST.Group.Kind();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v9);
  v13 = &v87 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = *v2;
  v15 = *(*v2 + 2);
  if (!v15)
  {
    __break(1u);
    goto LABEL_117;
  }

  v91 = v3;
  v4 = *&v14[4 * v15 + 28];
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v93 = v2;
  v88 = v6;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
LABEL_117:
    v14 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v15 + 1, 1, v14);
  }

  v18 = *(v14 + 2);
  v17 = *(v14 + 3);
  if (v18 >= v17 >> 1)
  {
    v14 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v17 > 1), v18 + 1, 1, v14);
  }

  *(v14 + 2) = v18 + 1;
  v87 = v14 + 32;
  *&v14[4 * v18 + 32] = v4;
  v19 = v93;
  *v93 = v14;
  LOWORD(result) = AST.Group.Kind.lookaroundKind.getter();
  if (result == 2)
  {
    (*(v10 + 16))(v13, a1, v9);
    LODWORD(result) = (*(v10 + 88))(v13, v9);
    if (result == *MEMORY[0x1E69E8E10] || result == *MEMORY[0x1E69E8E20])
    {
      (*(v10 + 8))(v13, v9);
    }

    else
    {
      if (result == *MEMORY[0x1E69E8E58])
      {
        (*(v10 + 96))(v13, v9);
        v18 = v89;
        v45 = v88;
        (*(v89 + 32))(v90, v13, v88);
        v46 = type metadata accessor for Compiler.ByteCodeGen(0);
        if (*(v19 + *(v46 + 24)))
        {
          goto LABEL_39;
        }

        v47 = v19 + *(v46 + 20);
        v34 = *(type metadata accessor for MEProgram.Builder(0) + 88);
        v48 = *(v47 + v34);
        v24 = *(v48 + 2);
        if (swift_isUniquelyReferenced_nonNull_native())
        {
          if (v24)
          {
            goto LABEL_37;
          }
        }

        else
        {
          v48 = specialized _ArrayBuffer._consumeAndCreateNew()(v48);
          if (v24)
          {
LABEL_37:
            if (v24 <= *(v48 + 2))
            {
              MatchingOptions.Representation.apply(_:)(v90);
              *(v47 + v34) = v48;
LABEL_39:
              if (*(v14 + 2))
              {
                v49 = v90;
                MatchingOptions.Representation.apply(_:)(v90);
                v50 = *(v18 + 8);
                v18 += 8;
                v50(v49, v45);
                *v19 = v14;
                v51 = v91;
                Compiler.ByteCodeGen.emitNode(_:)(v92);
                v34 = v51;
                if (!v51)
                {
                  goto LABEL_112;
                }

                v14 = *v19;
                if (*(*v19 + 16))
                {
                  v52 = *v19;
                  result = swift_isUniquelyReferenced_nonNull_native();
                  if (result)
                  {
                    v22 = *(v14 + 2);
                    if (v22)
                    {
                      goto LABEL_79;
                    }

LABEL_44:
                    __break(1u);
                    goto LABEL_45;
                  }

LABEL_124:
                  result = specialized _ArrayBuffer._consumeAndCreateNew()(v14);
                  v14 = result;
                  v22 = *(result + 16);
                  if (v22)
                  {
                    goto LABEL_79;
                  }

                  goto LABEL_44;
                }
              }

              else
              {
                __break(1u);
              }

              __break(1u);
              goto LABEL_124;
            }

LABEL_128:
            __break(1u);
            goto LABEL_129;
          }
        }

        __break(1u);
        goto LABEL_128;
      }

      if (result != *MEMORY[0x1E69E8E60])
      {
        if (result != *MEMORY[0x1E69E8E38])
        {
          goto LABEL_84;
        }

        v14 = (v19 + *(type metadata accessor for Compiler.ByteCodeGen(0) + 20));
        v61 = *(v14 + 10);
        v18 = *(v61 + 2);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v61 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v18 + 1, 1, v61);
        }

        v63 = *(v61 + 2);
        v62 = *(v61 + 3);
        v19 = v63 + 1;
        if (v63 >= v62 >> 1)
        {
          v61 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v62 > 1), v63 + 1, 1, v61);
        }

        *(v61 + 2) = v19;
        v64 = &v61[16 * v63];
        *(v64 + 4) = 0;
        v64[40] = 1;
        *(v14 + 10) = v61;
        v65 = *(v61 + 3);
        v66 = v63 + 2;
        if ((v63 + 2) > (v65 >> 1))
        {
          v61 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v65 > 1), v63 + 2, 1, v61);
        }

        v10 = v92;
        *(v61 + 2) = v66;
        v13 = (16 * v19);
        v67 = &v61[16 * v19];
        *(v67 + 4) = 0;
        v67[40] = 1;
        *(v14 + 10) = v61;
        MEProgram.Builder.buildSave(_:)(v19, 0x1200000000000000);
        MEProgram.Builder.buildSave(_:)(v18, 0x1100000000000000);
        v68 = v91;
        Compiler.ByteCodeGen.emitNode(_:)(v10);
        v34 = v68;
        if (!v68)
        {
          goto LABEL_95;
        }

        v19 = v93;
        goto LABEL_107;
      }
    }

    type metadata accessor for Unreachable();
    lazy protocol witness table accessor for type Unsupported and conformance Unsupported(&lazy protocol witness table cache variable for type Unreachable and conformance Unreachable, MEMORY[0x1E69E8988]);
    swift_allocError();
    MEMORY[0x193ACDEF0](0xD000000000000023, 0x800000018E5F2C80, "/Library/Caches/com.apple.xbs/Sources/swiftlang_overlay_Platform_Device/swift-experimental-string-processing/Sources/_StringProcessing/ByteCodeGen.swift", 152, 2, 486);
    result = swift_willThrow();
    v22 = *(v14 + 2);
    if (v22)
    {
      goto LABEL_79;
    }

    __break(1u);
  }

  v23 = result;
  if ((result & 1) == 0)
  {
LABEL_45:
    v24 = type metadata accessor for Unsupported();
    lazy protocol witness table accessor for type Unsupported and conformance Unsupported(&lazy protocol witness table cache variable for type Unsupported and conformance Unsupported, MEMORY[0x1E69E8998]);
    swift_allocError();
    MEMORY[0x193ACDF10](0xD000000000000014, 0x800000018E5F2CB0, "/Library/Caches/com.apple.xbs/Sources/swiftlang_overlay_Platform_Device/swift-experimental-string-processing/Sources/_StringProcessing/ByteCodeGen.swift", 152, 2, 408);
    swift_willThrow();
    goto LABEL_76;
  }

  v14 = (v19 + *(type metadata accessor for Compiler.ByteCodeGen(0) + 20));
  v24 = *(v14 + 10);
  v19 = *(v24 + 2);
  v25 = swift_isUniquelyReferenced_nonNull_native();
  if ((v23 & 0x100) == 0)
  {
    if (v25)
    {
      goto LABEL_17;
    }

    goto LABEL_121;
  }

  if ((v25 & 1) == 0)
  {
    v24 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v19 + 1, 1, v24);
  }

  v54 = *(v24 + 2);
  v53 = *(v24 + 3);
  v18 = v54 + 1;
  if (v54 >= v53 >> 1)
  {
    v24 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v53 > 1), v54 + 1, 1, v24);
  }

  *(v24 + 2) = v18;
  v55 = &v24[16 * v54];
  *(v55 + 4) = 0;
  v55[40] = 1;
  *(v14 + 10) = v24;
  v56 = *(v24 + 3);
  v57 = v54 + 2;
  if ((v54 + 2) > (v56 >> 1))
  {
    v24 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v56 > 1), v54 + 2, 1, v24);
  }

  v58 = v92;
  *(v24 + 2) = v57;
  v13 = (16 * v18);
  v59 = &v24[16 * v18];
  *(v59 + 4) = 0;
  v59[40] = 1;
  *(v14 + 10) = v24;
  MEProgram.Builder.buildSave(_:)(v18, 0x1100000000000000);
  MEProgram.Builder.buildSave(_:)(v19, 0x1100000000000000);
  v24 = v93;
  v60 = v91;
  Compiler.ByteCodeGen.emitNode(_:)(v58);
  v34 = v60;
  if (!v60)
  {
    MEProgram.Builder.buildSave(_:)(v19, 0x1400000000000000);
    v24 = *v14;
    if (swift_isUniquelyReferenced_nonNull_native())
    {
      goto LABEL_65;
    }

    goto LABEL_134;
  }

LABEL_53:
  v19 = v93;
  do
  {
LABEL_76:
    v14 = *v19;
    if (*(*v19 + 16))
    {
      v72 = *v19;
      result = swift_isUniquelyReferenced_nonNull_native();
      if (result)
      {
        v22 = *(v14 + 2);
        if (v22)
        {
          goto LABEL_79;
        }

        goto LABEL_120;
      }
    }

    else
    {
      __break(1u);
    }

    result = specialized _ArrayBuffer._consumeAndCreateNew()(v14);
    v14 = result;
    v22 = *(result + 16);
    if (v22)
    {
      goto LABEL_79;
    }

LABEL_120:
    __break(1u);
LABEL_121:
    v24 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v19 + 1, 1, v24);
LABEL_17:
    v27 = *(v24 + 2);
    v26 = *(v24 + 3);
    v18 = v27 + 1;
    if (v27 >= v26 >> 1)
    {
      v24 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v26 > 1), v27 + 1, 1, v24);
    }

    *(v24 + 2) = v18;
    v28 = &v24[16 * v27];
    *(v28 + 4) = 0;
    v28[40] = 1;
    *(v14 + 10) = v24;
    v29 = *(v24 + 3);
    v30 = v27 + 2;
    if ((v27 + 2) > (v29 >> 1))
    {
      v24 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v29 > 1), v27 + 2, 1, v24);
    }

    v31 = v92;
    *(v24 + 2) = v30;
    v13 = (16 * v18);
    v32 = &v24[16 * v18];
    *(v32 + 4) = 0;
    v32[40] = 1;
    *(v14 + 10) = v24;
    MEProgram.Builder.buildSave(_:)(v18, 0x1100000000000000);
    MEProgram.Builder.buildSave(_:)(v19, 0x1100000000000000);
    v24 = v93;
    v33 = v91;
    Compiler.ByteCodeGen.emitNode(_:)(v31);
    v34 = v33;
    if (v33)
    {
      goto LABEL_53;
    }

    MEProgram.Builder.buildSave(_:)(v19, 0x1400000000000000);
    v24 = *v14;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
LABEL_132:
      v24 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v24 + 2) + 1, 1, v24, &_ss23_ContiguousArrayStorageCy17_StringProcessing11InstructionVGMd, &_ss23_ContiguousArrayStorageCy17_StringProcessing11InstructionVGMR);
    }

    v36 = *(v24 + 2);
    v35 = *(v24 + 3);
    v37 = v36 + 1;
    if (v36 >= v35 >> 1)
    {
      v24 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v35 > 1), v36 + 1, 1, v24, &_ss23_ContiguousArrayStorageCy17_StringProcessing11InstructionVGMd, &_ss23_ContiguousArrayStorageCy17_StringProcessing11InstructionVGMR);
    }

    *(v24 + 2) = v37;
    *&v24[8 * v36 + 32] = 0x1300000000000000;
    *v14 = v24;
    v38 = *(v24 + 3);
    v39 = v36 + 2;
    if ((v36 + 2) > (v38 >> 1))
    {
      v24 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v38 > 1), v36 + 2, 1, v24, &_ss23_ContiguousArrayStorageCy17_StringProcessing11InstructionVGMd, &_ss23_ContiguousArrayStorageCy17_StringProcessing11InstructionVGMR);
    }

    *(v24 + 2) = v39;
    *&v24[8 * v37 + 32] = 0x1D00000000000000;
    *v14 = v24;
    v40 = *(v14 + 10);
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v40 = specialized _ArrayBuffer._consumeAndCreateNew()(v40);
    }

    if (v19 < *(v40 + 2))
    {
      v10 = (v40 + 32);
      v41 = &v40[16 * v19 + 32];
      *v41 = v39;
      *(v41 + 8) = 0;
      *(v14 + 10) = v40;
      v9 = *(v24 + 2);
      v42 = *(v24 + 3);
      v19 = v9 + 1;
      if (v9 < v42 >> 1)
      {
LABEL_31:
        *(v24 + 2) = v19;
        *&v24[8 * v9 + 32] = 0x1D00000000000000;
        *v14 = v24;
        v43 = *(v40 + 2);
        if (v18 < v43)
        {
          v44 = &v13[v10];
          *&v13[v10] = v19;
          goto LABEL_75;
        }

        __break(1u);
LABEL_138:
        v24 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v43 > 1), v19, 1, v24, &_ss23_ContiguousArrayStorageCy17_StringProcessing11InstructionVGMd, &_ss23_ContiguousArrayStorageCy17_StringProcessing11InstructionVGMR);
        goto LABEL_71;
      }

LABEL_136:
      v24 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v42 > 1), v19, 1, v24, &_ss23_ContiguousArrayStorageCy17_StringProcessing11InstructionVGMd, &_ss23_ContiguousArrayStorageCy17_StringProcessing11InstructionVGMR);
      goto LABEL_31;
    }

    __break(1u);
LABEL_134:
    v24 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v24 + 2) + 1, 1, v24, &_ss23_ContiguousArrayStorageCy17_StringProcessing11InstructionVGMd, &_ss23_ContiguousArrayStorageCy17_StringProcessing11InstructionVGMR);
LABEL_65:
    v10 = *(v24 + 2);
    v69 = *(v24 + 3);
    v9 = v10 + 1;
    if (v10 >= v69 >> 1)
    {
      v24 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v69 > 1), v10 + 1, 1, v24, &_ss23_ContiguousArrayStorageCy17_StringProcessing11InstructionVGMd, &_ss23_ContiguousArrayStorageCy17_StringProcessing11InstructionVGMR);
    }

    *(v24 + 2) = v9;
    *&v24[8 * v10 + 32] = 0x1D00000000000001;
    *v14 = v24;
    v40 = *(v14 + 10);
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v40 = specialized _ArrayBuffer._consumeAndCreateNew()(v40);
    }

    v42 = *(v40 + 2);
    if (v19 >= v42)
    {
      __break(1u);
      goto LABEL_136;
    }

    v10 = (v40 + 32);
    v70 = &v40[16 * v19 + 32];
    *v70 = v9;
    *(v70 + 8) = 0;
    *(v14 + 10) = v40;
    v9 = *(v24 + 2);
    v43 = *(v24 + 3);
    v19 = v9 + 1;
    if (v9 >= v43 >> 1)
    {
      goto LABEL_138;
    }

LABEL_71:
    *(v24 + 2) = v19;
    *&v24[8 * v9 + 32] = 0x1300000000000000;
    *v14 = v24;
    v71 = *(v24 + 3);
    v9 += 2;
    if (v9 > (v71 >> 1))
    {
      v24 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v71 > 1), v9, 1, v24, &_ss23_ContiguousArrayStorageCy17_StringProcessing11InstructionVGMd, &_ss23_ContiguousArrayStorageCy17_StringProcessing11InstructionVGMR);
    }

    *(v24 + 2) = v9;
    *&v24[8 * v19 + 32] = 0x1D00000000000000;
    *v14 = v24;
    if (v18 >= *(v40 + 2))
    {
      __break(1u);
      goto LABEL_140;
    }

    v44 = &v13[v10];
    *&v13[v10] = v9;
LABEL_75:
    v44[8] = 0;
    *(v14 + 10) = v40;
    v19 = v93;
  }

  while (v34);
  v24 = *v93;
  if (!*(*v93 + 16))
  {
LABEL_140:
    __break(1u);
    goto LABEL_141;
  }

  v73 = *v93;
  result = swift_isUniquelyReferenced_nonNull_native();
  if (result)
  {
    v74 = *(v24 + 2);
    if (v74)
    {
      goto LABEL_115;
    }

    goto LABEL_83;
  }

LABEL_141:
  result = specialized _ArrayBuffer._consumeAndCreateNew()(v24);
  v24 = result;
  v74 = *(result + 16);
  if (v74)
  {
LABEL_115:
    *(v24 + 2) = v74 - 1;
    *v19 = v24;
    return result;
  }

LABEL_83:
  __break(1u);
LABEL_84:
  if (result != *MEMORY[0x1E69E8E68] && result != *MEMORY[0x1E69E8E30] && result != *MEMORY[0x1E69E8E00] && result != *MEMORY[0x1E69E8E40])
  {
    v75 = v91;
    Compiler.ByteCodeGen.emitNode(_:)(v92);
    v34 = v75;
    if (v75)
    {
      (*(v10 + 8))(v13, v9);
      v14 = *v19;
      if (!*(*v19 + 16))
      {
        goto LABEL_149;
      }

      v76 = *v19;
      result = swift_isUniquelyReferenced_nonNull_native();
      if ((result & 1) == 0)
      {
        goto LABEL_150;
      }

      v22 = *(v14 + 2);
      if (!v22)
      {
        goto LABEL_92;
      }

      goto LABEL_79;
    }

LABEL_111:
    (*(v10 + 8))(v13, v9);
LABEL_112:
    v24 = *v19;
    if (*(*v19 + 16))
    {
      v86 = *v19;
      result = swift_isUniquelyReferenced_nonNull_native();
      if (result)
      {
        v74 = *(v24 + 2);
        if (v74)
        {
          goto LABEL_115;
        }

LABEL_131:
        __break(1u);
        goto LABEL_132;
      }
    }

    else
    {
LABEL_129:
      __break(1u);
    }

    result = specialized _ArrayBuffer._consumeAndCreateNew()(v24);
    v24 = result;
    v74 = *(result + 16);
    if (v74)
    {
      goto LABEL_115;
    }

    goto LABEL_131;
  }

  while (2)
  {
    type metadata accessor for Unreachable();
    lazy protocol witness table accessor for type Unsupported and conformance Unsupported(&lazy protocol witness table cache variable for type Unreachable and conformance Unreachable, MEMORY[0x1E69E8988]);
    v34 = swift_allocError();
    MEMORY[0x193ACDEF0](0x6572203A4F444F54, 0xEC0000006E6F7361, "/Library/Caches/com.apple.xbs/Sources/swiftlang_overlay_Platform_Device/swift-experimental-string-processing/Sources/_StringProcessing/ByteCodeGen.swift", 152, 2, 483);
    result = swift_willThrow();
    v22 = *(v14 + 2);
    if (v22)
    {
      goto LABEL_79;
    }

    __break(1u);
LABEL_95:
    MEProgram.Builder.buildSave(_:)(v18, 0x1400000000000000);
    v77 = *v14;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v77 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v77 + 2) + 1, 1, v77, &_ss23_ContiguousArrayStorageCy17_StringProcessing11InstructionVGMd, &_ss23_ContiguousArrayStorageCy17_StringProcessing11InstructionVGMR);
    }

    v10 = *(v77 + 2);
    v78 = *(v77 + 3);
    v79 = v10 + 1;
    if (v10 >= v78 >> 1)
    {
      v77 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v78 > 1), v10 + 1, 1, v77, &_ss23_ContiguousArrayStorageCy17_StringProcessing11InstructionVGMd, &_ss23_ContiguousArrayStorageCy17_StringProcessing11InstructionVGMR);
    }

    *(v77 + 2) = v79;
    *&v77[8 * v10 + 32] = 0x1D00000000000001;
    *v14 = v77;
    v80 = *(v14 + 10);
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v80 = specialized _ArrayBuffer._consumeAndCreateNew()(v80);
    }

    v81 = *(v80 + 2);
    if (v18 >= v81)
    {
      __break(1u);
    }

    else
    {
      v10 = (v80 + 32);
      v82 = &v80[16 * v18 + 32];
      *v82 = v79;
      *(v82 + 8) = 0;
      *(v14 + 10) = v80;
      v79 = *(v77 + 2);
      v81 = *(v77 + 3);
      v18 = v79 + 1;
      if (v79 < v81 >> 1)
      {
        goto LABEL_103;
      }
    }

    v77 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v81 > 1), v18, 1, v77, &_ss23_ContiguousArrayStorageCy17_StringProcessing11InstructionVGMd, &_ss23_ContiguousArrayStorageCy17_StringProcessing11InstructionVGMR);
LABEL_103:
    *(v77 + 2) = v18;
    *&v77[8 * v79 + 32] = 0x1300000000000000;
    *v14 = v77;
    v83 = *(v77 + 3);
    v9 = v79 + 2;
    if (v9 > (v83 >> 1))
    {
      v77 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v83 > 1), v9, 1, v77, &_ss23_ContiguousArrayStorageCy17_StringProcessing11InstructionVGMd, &_ss23_ContiguousArrayStorageCy17_StringProcessing11InstructionVGMR);
    }

    *(v77 + 2) = v9;
    *&v77[8 * v18 + 32] = 0x1D00000000000000;
    *v14 = v77;
    if (v19 >= *(v80 + 2))
    {
      __break(1u);
LABEL_149:
      __break(1u);
LABEL_150:
      result = specialized _ArrayBuffer._consumeAndCreateNew()(v14);
      v14 = result;
      v22 = *(result + 16);
      if (v22)
      {
        goto LABEL_79;
      }

LABEL_92:
      __break(1u);
      continue;
    }

    break;
  }

  v84 = &v13[v10];
  *v84 = v9;
  v84[8] = 0;
  *(v14 + 10) = v80;
  v19 = v93;
  if (!v34)
  {
    goto LABEL_112;
  }

LABEL_107:
  v14 = *v19;
  if (*(*v19 + 16))
  {
    v85 = *v19;
    result = swift_isUniquelyReferenced_nonNull_native();
    if (result)
    {
      v22 = *(v14 + 2);
      if (v22)
      {
        goto LABEL_79;
      }

      goto LABEL_110;
    }
  }

  else
  {
    __break(1u);
  }

  result = specialized _ArrayBuffer._consumeAndCreateNew()(v14);
  v14 = result;
  v22 = *(result + 16);
  if (!v22)
  {
LABEL_110:
    __break(1u);
    goto LABEL_111;
  }

LABEL_79:
  *(v14 + 2) = v22 - 1;
  *v19 = v14;
  return result;
}

uint64_t Compiler.ByteCodeGen.emitQuantification(_:_:_:)(int64_t a1, char *a2, unint64_t a3)
{
  v98 = a3;
  v5 = type metadata accessor for DSLTree._AST.QuantificationKind(0);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v8 = &v80[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v9 = type metadata accessor for DSLTree.QuantificationKind(0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v80[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v13 = type metadata accessor for AST.Quantification.Kind();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  v16 = MEMORY[0x1EEE9AC00](v13);
  v96 = &v80[-((v17 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v18 = MEMORY[0x1EEE9AC00](v16);
  v20 = &v80[-v19];
  MEMORY[0x1EEE9AC00](v18);
  v22 = &v80[-v21];
  outlined init with copy of DSLTree._AST.AbsentFunction(a2, v12, type metadata accessor for DSLTree.QuantificationKind);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      outlined init with take of DSLTree.QuantificationKind(v12, v8, type metadata accessor for DSLTree._AST.QuantificationKind);
      v24 = v103;
      AST.Quantification.Kind.applying(_:)(*v103, v22);
      outlined destroy of MEProgram(v8, type metadata accessor for DSLTree._AST.QuantificationKind);
    }

    else
    {
      v24 = v103;
      MatchingOptions.defaultQuantificationKind.getter(*v103, v22);
    }
  }

  else
  {
    outlined init with take of DSLTree.QuantificationKind(v12, v8, type metadata accessor for DSLTree._AST.QuantificationKind);
    (*(v14 + 32))(v22, v8, v13);
    v24 = v103;
  }

  v25 = a1;
  v26 = AST.Quantification.Amount.bounds.getter();
  if (v30)
  {
    (*(v14 + 8))(v22, v13);
    type metadata accessor for Unreachable();
    lazy protocol witness table accessor for type Unsupported and conformance Unsupported(&lazy protocol witness table cache variable for type Unreachable and conformance Unreachable, MEMORY[0x1E69E8988]);
    swift_allocError();
    MEMORY[0x193ACDEF0](0xD000000000000017, 0x800000018E5F2CD0, "/Library/Caches/com.apple.xbs/Sources/swiftlang_overlay_Platform_Device/swift-experimental-string-processing/Sources/_StringProcessing/ByteCodeGen.swift", 152, 2, 521);
    return swift_willThrow();
  }

  v32 = v26;
  v33 = v27;
  if ((v28 & 1) == 0)
  {
    if (!v27)
    {
      return (*(v14 + 8))(v22, v13);
    }

    v33 = v27 - v26;
    if (v27 < v26)
    {
      return (*(v14 + 8))(v22, v13);
    }

    if (__OFSUB__(v27, v26))
    {
      __break(1u);
      goto LABEL_106;
    }
  }

  v34 = v28;
  if (Compiler.ByteCodeGen.tryEmitFastQuant(_:_:_:_:)(v98, v22, v26, v33, v28 & 1))
  {
    return (*(v14 + 8))(v22, v13);
  }

  v92 = v34;
  v90 = v33;
  v35 = type metadata accessor for Compiler.ByteCodeGen(0);
  v33 = v24 + *(v35 + 20);
  a2 = *(v33 + 80);
  v89 = *(a2 + 2);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v88 = v35;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    a2 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v89 + 1, 1, a2);
  }

  v38 = *(a2 + 2);
  v37 = *(a2 + 3);
  v95 = v38 + 1;
  v91 = v32;
  if (v38 >= v37 >> 1)
  {
    a2 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v37 > 1), v95, 1, a2);
  }

  *(a2 + 2) = v95;
  v39 = &a2[16 * v38];
  *(v39 + 4) = 0;
  v39[40] = 1;
  *(v33 + 80) = a2;
  v40 = *(a2 + 3);
  v94 = v38 + 2;
  if ((v38 + 2) > (v40 >> 1))
  {
    a2 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v40 > 1), v94, 1, a2);
  }

  v41 = v95;
  *(a2 + 2) = v94;
  v87 = 16 * v41;
  v42 = &a2[16 * v41];
  *(v42 + 4) = 0;
  v42[40] = 1;
  *(v33 + 80) = a2;
  v43 = *(a2 + 3);
  v93 = v38 + 3;
  if ((v38 + 3) > (v43 >> 1))
  {
    a2 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v43 > 1), v93, 1, a2);
  }

  v44 = v94;
  *(a2 + 2) = v93;
  v83 = 16 * v44;
  v45 = &a2[16 * v44];
  *(v45 + 4) = 0;
  v45[40] = 1;
  *(v33 + 80) = a2;
  v46 = *(a2 + 3);
  v47 = (v38 + 4);
  if (v47 > (v46 >> 1))
  {
    a2 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v46 > 1), v47, 1, a2);
  }

  v85 = 0;
  *(a2 + 2) = v47;
  v82 = 16 * v93;
  v48 = &a2[16 * v93];
  *(v48 + 4) = 0;
  v48[40] = 1;
  *(v33 + 80) = a2;
  v49 = v91;
  if (v91 < 2)
  {
    goto LABEL_30;
  }

  v50 = *(v33 + 96);
  if (__OFADD__(v50, 1))
  {
    goto LABEL_100;
  }

  *(v33 + 96) = v50 + 1;
  v85 = v50;
  v86 = (v49 | (v50 << 16) | 0x100000000000000);
  v47 = *v33;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    goto LABEL_102;
  }

  while (1)
  {
    v52 = *(v47 + 2);
    v51 = *(v47 + 3);
    if (v52 >= v51 >> 1)
    {
      v47 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v51 > 1), v52 + 1, 1, v47, &_ss23_ContiguousArrayStorageCy17_StringProcessing11InstructionVGMd, &_ss23_ContiguousArrayStorageCy17_StringProcessing11InstructionVGMR);
    }

    *(v47 + 2) = v52 + 1;
    *&v47[8 * v52 + 32] = v86;
    *v33 = v47;
    v24 = v103;
LABEL_30:
    v84 = 0;
    if ((v92 & 1) == 0 && v90 >= 1)
    {
      v53 = *(v33 + 96);
      if (__OFADD__(v53, 1))
      {
        goto LABEL_101;
      }

      *(v33 + 96) = v53 + 1;
      v84 = v53;
      v86 = (v90 | (v53 << 16) | 0x100000000000000);
      v54 = *v33;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v54 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v54 + 2) + 1, 1, v54, &_ss23_ContiguousArrayStorageCy17_StringProcessing11InstructionVGMd, &_ss23_ContiguousArrayStorageCy17_StringProcessing11InstructionVGMR);
      }

      v56 = *(v54 + 2);
      v55 = *(v54 + 3);
      if (v56 >= v55 >> 1)
      {
        v54 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v55 > 1), v56 + 1, 1, v54, &_ss23_ContiguousArrayStorageCy17_StringProcessing11InstructionVGMd, &_ss23_ContiguousArrayStorageCy17_StringProcessing11InstructionVGMR);
      }

      *(v54 + 2) = v56 + 1;
      *&v54[8 * v56 + 32] = v86;
      *v33 = v54;
      v24 = v103;
    }

    v57 = *(v14 + 104);
    v81 = *MEMORY[0x1E69E8A80];
    v57(v20);
    lazy protocol witness table accessor for type Unsupported and conformance Unsupported(&lazy protocol witness table cache variable for type AST.Quantification.Kind and conformance AST.Quantification.Kind, MEMORY[0x1E69E8A98]);
    dispatch thunk of RawRepresentable.rawValue.getter();
    dispatch thunk of RawRepresentable.rawValue.getter();
    v58 = *(v14 + 8);
    v103 = (v14 + 8);
    v86 = v58;
    v58(v20, v13);
    if (v101 != v99)
    {
      goto LABEL_41;
    }

    if (v102 == v100)
    {

      v59 = v91;
    }

    else
    {
LABEL_41:
      v20 = _stringCompareWithSmolCheck(_:_:expecting:)();

      v59 = v91;
      if ((v20 & 1) == 0)
      {
        goto LABEL_47;
      }
    }

    if (*(v33 + 152) == 1)
    {
      v26 = *(a2 + 2);
      v29 = *(a2 + 3);
      v25 = v26 + 1;
      if (v26 >= v29 >> 1)
      {
LABEL_106:
        v79 = v26;
        a2 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v29 > 1), v25, 1, a2);
        v26 = v79;
        v59 = v91;
      }

      *(a2 + 2) = v25;
      v60 = &a2[16 * v26];
      *(v60 + 4) = 0;
      v60[40] = 1;
      *(v33 + 80) = a2;
      *(v33 + 144) = v26;
      *(v33 + 152) = 0;
    }

    else
    {
      v26 = *(v33 + 144);
    }

    MEProgram.Builder.buildSave(_:)(v26, 0x1200000000000000);
LABEL_47:
    a2 = *(*v33 + 16);
    v47 = *(v33 + 80);
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v47 = specialized _ArrayBuffer._consumeAndCreateNew()(v47);
    }

    if (v89 >= *(v47 + 2))
    {
      __break(1u);
LABEL_98:
      a2 = specialized _ArrayBuffer._consumeAndCreateNew()(a2);
      goto LABEL_56;
    }

    v61 = &v47[16 * v89];
    *(v61 + 4) = a2;
    v61[40] = 0;
    *(v33 + 80) = v47;
    if (v59 != 1)
    {
      if (v59)
      {
        if (v59 < 2)
        {
          __break(1u);
          goto LABEL_112;
        }

        MEProgram.Builder.buildCondBranch(to:ifZeroElseDecrement:)(v94, v85);
      }

      else
      {
        MEProgram.Builder.buildSave(_:)(v94, 0x400000000000000);
      }
    }

    v47 = *v33;
    v59 = *(*v33 + 16);
    a2 = *(v33 + 80);
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      goto LABEL_98;
    }

LABEL_56:
    if (v95 < *(a2 + 2))
    {
      break;
    }

    __break(1u);
LABEL_100:
    __break(1u);
LABEL_101:
    __break(1u);
LABEL_102:
    v47 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v47 + 2) + 1, 1, v47, &_ss23_ContiguousArrayStorageCy17_StringProcessing11InstructionVGMd, &_ss23_ContiguousArrayStorageCy17_StringProcessing11InstructionVGMR);
  }

  v62 = &a2[v87];
  *(v62 + 4) = v59;
  v62[40] = 0;
  *(v33 + 80) = a2;
  if ((*(v24 + *(v88 + 28)) & 1) == 0)
  {
    v63 = DSLTree.Node.guaranteesForwardProgress.getter(v98);
    v88 = 0;
    v64 = (v63 ^ 1) & v92;
    v65 = 1;
    if ((v63 & 1) != 0 || (v92 & 1) == 0)
    {
      goto LABEL_67;
    }

LABEL_62:
    v66 = *(v33 + 112);
    if (__OFADD__(v66, 1))
    {
      __break(1u);
    }

    else
    {
      *(v33 + 112) = v66 + 1;
      v87 = v66 | 0x200000000000000;
      v88 = v66;
      if (swift_isUniquelyReferenced_nonNull_native())
      {
LABEL_64:
        v68 = *(v47 + 2);
        v67 = *(v47 + 3);
        if (v68 >= v67 >> 1)
        {
          v47 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v67 > 1), v68 + 1, 1, v47, &_ss23_ContiguousArrayStorageCy17_StringProcessing11InstructionVGMd, &_ss23_ContiguousArrayStorageCy17_StringProcessing11InstructionVGMR);
        }

        v65 = 0;
        *(v47 + 2) = v68 + 1;
        *&v47[8 * v68 + 32] = v87;
        *v33 = v47;
        v64 = v92;
LABEL_67:
        v69 = v97;
        Compiler.ByteCodeGen.emitNode(_:)(v98);
        if (!v69)
        {
          if ((v64 & 1) == 0)
          {
            goto LABEL_74;
          }

          if ((v65 & 1) == 0)
          {
            MEProgram.Builder.buildCondBranch(to:ifSamePositionAs:)(v93, v88);
            goto LABEL_74;
          }

LABEL_112:
          __break(1u);
LABEL_113:
          __break(1u);
LABEL_114:
          result = _assertionFailure(_:_:file:line:flags:)();
          __break(1u);
          return result;
        }

        return v86(v22, v13);
      }
    }

    v47 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v47 + 2) + 1, 1, v47, &_ss23_ContiguousArrayStorageCy17_StringProcessing11InstructionVGMd, &_ss23_ContiguousArrayStorageCy17_StringProcessing11InstructionVGMR);
    goto LABEL_64;
  }

  if (v92)
  {
    goto LABEL_62;
  }

  v70 = v97;
  Compiler.ByteCodeGen.emitNode(_:)(v98);
  if (v70)
  {
    return v86(v22, v13);
  }

LABEL_74:
  if (v91 >= 2)
  {
    MEProgram.Builder.buildSave(_:)(v89, 0x400000000000000);
  }

  v71 = *(*v33 + 16);
  v72 = *(v33 + 80);
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v72 = specialized _ArrayBuffer._consumeAndCreateNew()(v72);
  }

  if (v94 >= *(v72 + 2))
  {
    __break(1u);
    goto LABEL_108;
  }

  v73 = &v72[v83];
  *(v73 + 4) = v71;
  v73[40] = 0;
  *(v33 + 80) = v72;
  if ((v92 & 1) == 0)
  {
    if (v90)
    {
      if (v90 < 1)
      {
        goto LABEL_113;
      }

      MEProgram.Builder.buildCondBranch(to:ifZeroElseDecrement:)(v93, v84);
    }

    else
    {
      MEProgram.Builder.buildSave(_:)(v93, 0x400000000000000);
    }
  }

  v74 = v96;
  (*(v14 + 16))(v96, v22, v13);
  v75 = (*(v14 + 88))(v74, v13);
  if (v75 != *MEMORY[0x1E69E8A88])
  {
    if (v75 == *MEMORY[0x1E69E8A90])
    {
      v86(v22, v13);
      MEProgram.Builder.buildSave(_:)(v95, 0x1100000000000000);
      goto LABEL_94;
    }

    if (v75 == v81)
    {
      v86(v22, v13);
      v72 = *v33;
      if (swift_isUniquelyReferenced_nonNull_native())
      {
        goto LABEL_90;
      }

      goto LABEL_110;
    }

    goto LABEL_114;
  }

  v86(v22, v13);
  while (1)
  {
    MEProgram.Builder.buildSplit(to:saving:)(v95, v93);
LABEL_94:
    v14 = *(*v33 + 16);
    v72 = *(v33 + 80);
    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
LABEL_108:
      result = specialized _ArrayBuffer._consumeAndCreateNew()(v72);
      v72 = result;
    }

    if (v93 < *(v72 + 2))
    {
      break;
    }

    __break(1u);
LABEL_110:
    v72 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v72 + 2) + 1, 1, v72, &_ss23_ContiguousArrayStorageCy17_StringProcessing11InstructionVGMd, &_ss23_ContiguousArrayStorageCy17_StringProcessing11InstructionVGMR);
LABEL_90:
    v77 = *(v72 + 2);
    v76 = *(v72 + 3);
    if (v77 >= v76 >> 1)
    {
      v72 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v76 > 1), v77 + 1, 1, v72, &_ss23_ContiguousArrayStorageCy17_StringProcessing11InstructionVGMd, &_ss23_ContiguousArrayStorageCy17_StringProcessing11InstructionVGMR);
    }

    *(v72 + 2) = v77 + 1;
    *&v72[8 * v77 + 32] = 0x1300000000000000;
    *v33 = v72;
  }

  v78 = &v72[v82];
  *(v78 + 4) = v14;
  v78[40] = 0;
  *(v33 + 80) = v72;
  return result;
}

uint64_t AST.Quantification.Kind.applying(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v6 = type metadata accessor for AST.Quantification.Kind();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  v9 = MEMORY[0x1EEE9AC00](v6);
  v11 = &v23 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = MEMORY[0x1EEE9AC00](v9);
  v14 = &v23 - v13;
  v15 = *(a1 + 16);
  if (!v15)
  {
    __break(1u);
    return result;
  }

  v24 = a2;
  if ((*(a1 + 4 * v15 + 28) & 0x20) == 0)
  {
    return (*(v7 + 16))(v24, v3, v6);
  }

  v16 = *(v7 + 104);
  v16(&v23 - v13, *MEMORY[0x1E69E8A80], v6);
  lazy protocol witness table accessor for type Unsupported and conformance Unsupported(&lazy protocol witness table cache variable for type AST.Quantification.Kind and conformance AST.Quantification.Kind, MEMORY[0x1E69E8A98]);
  v17 = dispatch thunk of static Equatable.== infix(_:_:)();
  v18 = *(v7 + 8);
  v18(v14, v6);
  if (v17)
  {
    return (*(v7 + 16))(v24, v3, v6);
  }

  v19 = *MEMORY[0x1E69E8A88];
  v23 = v16;
  v16(v11, v19, v6);
  lazy protocol witness table accessor for type Unsupported and conformance Unsupported(&lazy protocol witness table cache variable for type AST.Quantification.Kind and conformance AST.Quantification.Kind, MEMORY[0x1E69E8A98]);
  dispatch thunk of RawRepresentable.rawValue.getter();
  dispatch thunk of RawRepresentable.rawValue.getter();
  v18(v11, v6);
  if (v27 == v25 && v28 == v26)
  {

    v20 = v24;
  }

  else
  {
    v21 = _stringCompareWithSmolCheck(_:_:expecting:)();

    v20 = v24;
    if ((v21 & 1) == 0)
    {
      v22 = v19;
      return v23(v20, v22, v6);
    }
  }

  v22 = *MEMORY[0x1E69E8A90];
  return v23(v20, v22, v6);
}

uint64_t MatchingOptions.defaultQuantificationKind.getter@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  v3 = *(result + 16);
  if (v3)
  {
    v4 = *(result + 4 * v3 + 28);
    if ((v4 & 0x80000) != 0)
    {
      v8 = *MEMORY[0x1E69E8A80];
      v9 = type metadata accessor for AST.Quantification.Kind();
      v6 = *(*(v9 - 8) + 104);
      v5 = v9;
      v10 = a2;
      v11 = v8;
    }

    else
    {
      v5 = type metadata accessor for AST.Quantification.Kind();
      v6 = *(*(v5 - 8) + 104);
      if ((v4 & 0x20) != 0)
      {
        v7 = MEMORY[0x1E69E8A90];
      }

      else
      {
        v7 = MEMORY[0x1E69E8A88];
      }

      v11 = *v7;
      v10 = a2;
    }

    return v6(v10, v11, v5);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t Compiler.ByteCodeGen.tryEmitFastQuant(_:_:_:_:)(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5)
{
  v6 = v5;
  v214 = a5;
  v215 = a3;
  v213 = a2;
  v210 = a1;
  v8 = type metadata accessor for AST.Group.Kind();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v8);
  v207 = &v184[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v12 = type metadata accessor for DSLTree._AST.GroupKind(0);
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v206 = &v184[-((v14 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v15 = type metadata accessor for Unicode.Scalar.Properties();
  v194 = *(v15 - 8);
  v16 = *(v194 + 64);
  MEMORY[0x1EEE9AC00](v15);
  v193 = &v184[-((v17 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v204 = type metadata accessor for DSLTree.Atom(0);
  v18 = *(*(v204 - 8) + 64);
  v19 = MEMORY[0x1EEE9AC00](v204);
  v205 = &v184[-((v20 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v19);
  v208 = &v184[-v21];
  v22 = type metadata accessor for AST.Quantification.Kind();
  v211 = *(v22 - 8);
  v212 = v22;
  v23 = *(v211 + 64);
  v24 = MEMORY[0x1EEE9AC00](v22);
  v199 = &v184[-((v25 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v26 = MEMORY[0x1EEE9AC00](v24);
  v200 = &v184[-v27];
  v28 = MEMORY[0x1EEE9AC00](v26);
  v29 = MEMORY[0x1EEE9AC00](v28);
  v196 = &v184[-v30];
  v31 = MEMORY[0x1EEE9AC00](v29);
  v33 = &v184[-v32];
  v34 = MEMORY[0x1EEE9AC00](v31);
  v198 = &v184[-v35];
  v36 = MEMORY[0x1EEE9AC00](v34);
  v38 = &v184[-v37];
  v39 = MEMORY[0x1EEE9AC00](v36);
  v197 = &v184[-v40];
  v41 = MEMORY[0x1EEE9AC00](v39);
  v42 = MEMORY[0x1EEE9AC00](v41);
  v189 = &v184[-v43];
  v44 = MEMORY[0x1EEE9AC00](v42);
  v45 = MEMORY[0x1EEE9AC00](v44);
  v192 = &v184[-v46];
  v47 = MEMORY[0x1EEE9AC00](v45);
  v49 = &v184[-v48];
  v50 = MEMORY[0x1EEE9AC00](v47);
  v201 = &v184[-v51];
  v52 = MEMORY[0x1EEE9AC00](v50);
  v57 = &v184[-v56];
  v58 = *v6;
  v59 = (*v6)[2];
  if (!v59)
  {
    __break(1u);
    goto LABEL_133;
  }

  v195 = v55;
  v188 = v54;
  v191 = v15;
  v202 = v9;
  v203 = v8;
  v190 = v53;
  v60 = (v58 + 4);
  v61 = *(v58 + v59 + 7);
  v62 = 0;
  v63 = *(type metadata accessor for Compiler.ByteCodeGen(0) + 28);
  v209 = v6;
  if ((*(v6 + v63) & 1) != 0 || v215 > 255 || !(v214 & 1 | (a4 < 256)))
  {
    return v62 & 1;
  }

  v187 = a4;
  v64 = v211;
  v65 = *(v211 + 104);
  v185 = *MEMORY[0x1E69E8A90];
  v66 = v212;
  v65(v57);
  lazy protocol witness table accessor for type Unsupported and conformance Unsupported(&lazy protocol witness table cache variable for type AST.Quantification.Kind and conformance AST.Quantification.Kind, MEMORY[0x1E69E8A98]);
  v67 = dispatch thunk of static Equatable.== infix(_:_:)();
  v68 = *(v64 + 8);
  v69 = v66;
  v186 = v64 + 8;
  a4 = v68;
  v68(v57, v69);
  if (v67)
  {
    goto LABEL_6;
  }

  v62 = 0;
  v15 = *&v61 & 0x10000;
  v71 = (v210 >> 59) & 0x1E | (v210 >> 2) & 1;
  if (v71 > 7)
  {
    v91 = v215;
    if (v71 != 8)
    {
      if (v71 != 12)
      {
        return v62 & 1;
      }

      v92 = v187;
      v93 = *swift_projectBox();

      v94 = v214 & 1;
      v95 = v93;
      v96 = v213;
      v97 = v91;
      v98 = v92;
      goto LABEL_23;
    }

    v107 = swift_projectBox();
    v108 = type metadata accessor for DSLTree.Atom;
    v109 = v208;
    outlined init with copy of DSLTree._AST.AbsentFunction(v107, v208, type metadata accessor for DSLTree.Atom);
    v110 = v205;
    outlined init with copy of DSLTree._AST.AbsentFunction(v109, v205, type metadata accessor for DSLTree.Atom);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload > 7)
    {
      if (EnumCaseMultiPayload == 8)
      {
        outlined destroy of MEProgram(v109, type metadata accessor for DSLTree.Atom);
        v57 = *(type metadata accessor for Compiler.ByteCodeGen(0) + 20);
        v122 = v211;
        v123 = v212;
        v124 = *(v211 + 16);
        v125 = v197;
        v124(v197, v213, v212);
        v124(v38, v125, v123);
        v126 = *(v122 + 88);
        v110 = v122 + 88;
        v127 = v126(v38, v123);
        v108 = v215;
        v60 = 0;
        v58 = v209;
        if (v127 != *MEMORY[0x1E69E8A88])
        {
          if (v127 == v185)
          {
            v60 = 0x10000;
          }

          else
          {
            if (v127 != *MEMORY[0x1E69E8A80])
            {
              goto LABEL_177;
            }

            v60 = 0x20000;
          }
        }

        (a4)(v125, v212);
        if (v214)
        {
          v156 = 0x40000;
        }

        else
        {
          if (v187 < 0)
          {
LABEL_165:
            __break(1u);
            goto LABEL_166;
          }

          v156 = v187 << 19;
        }

        if ((v108 & 0x8000000000000000) == 0)
        {
          v157 = (v15 << 22) ^ 0x4000000000 | (v108 << 27) | v60 | v156 | 0x1600001000000000 | 1;
          v89 = *(v58 + v57);
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v89 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v89 + 16) + 1, 1, v89, &_ss23_ContiguousArrayStorageCy17_StringProcessing11InstructionVGMd, &_ss23_ContiguousArrayStorageCy17_StringProcessing11InstructionVGMR);
          }

          goto LABEL_123;
        }

        goto LABEL_160;
      }

      if (EnumCaseMultiPayload != 9)
      {
        if (EnumCaseMultiPayload == 10)
        {
          outlined destroy of MEProgram(v109, type metadata accessor for DSLTree.Atom);
          v112 = v58[2];
          if (v112)
          {
            v60 = *(v60 + 4 * v112 - 4);
            v57 = *(type metadata accessor for Compiler.ByteCodeGen(0) + 20);
            v114 = v211;
            v113 = v212;
            v115 = *(v211 + 16);
            v38 = v196;
            v115(v196, v213, v212);
            v116 = v195;
            v115(v195, v38, v113);
            v117 = (*(v114 + 88))(v116, v113);
            v108 = 0;
            v58 = v209;
            v110 = v215;
            if (v117 != *MEMORY[0x1E69E8A88])
            {
              if (v117 == v185)
              {
                v108 = 0x10000;
              }

              else
              {
                if (v117 != *MEMORY[0x1E69E8A80])
                {
                  goto LABEL_177;
                }

                v108 = 0x20000;
              }
            }

            (a4)(v38, v212);
            if (v214)
            {
              v164 = 0x40000;
            }

            else
            {
              if (v187 < 0)
              {
LABEL_168:
                __break(1u);
LABEL_169:
                v110 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, (v38 + 1), 1, v110);
LABEL_78:
                v150 = *(v110 + 16);
                v149 = *(v110 + 24);
                if (v150 >= v149 >> 1)
                {
                  v110 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v149 > 1), v150 + 1, 1, v110);
                }

                *(v110 + 16) = v150 + 1;
                v151 = v110 + 24 * v150;
                *(v151 + 32) = v57 & 1;
                *(v151 + 40) = v60;
                *(v151 + 48) = v108;
                v58[6] = v110;
                v152 = v211;
                v57 = v212;
                v153 = *(v211 + 16);
                v49 = v192;
                v153(v192, v213, v212);
                v154 = v190;
                v153(v190, v49, v57);
                v52 = (*(v152 + 88))(v154, v57);
                if (v52 == *MEMORY[0x1E69E8A88])
                {
                  v155 = 0;
                  v9 = v215;
LABEL_135:
                  (a4)(v49, v212);
                  if (v214)
                  {
                    v178 = 0x40000;
                    goto LABEL_139;
                  }

                  if ((v187 & 0x8000000000000000) == 0)
                  {
                    v178 = v187 << 19;
LABEL_139:
                    if (v9 < 0)
                    {
                      __break(1u);
                    }

                    else
                    {
                      v179 = (v15 << 22) ^ 0x4000000000 | (v9 << 27) | v155 | v178;
                      v9 = &v38[v179];
                      if (!__CFADD__(v38, v179))
                      {
                        v57 = 0x1600000000000000;
                        v155 = *v58;
                        if (swift_isUniquelyReferenced_nonNull_native())
                        {
LABEL_142:
                          v180 = v9 | v57;
                          v182 = *(v155 + 16);
                          v181 = *(v155 + 24);
                          if (v182 >= v181 >> 1)
                          {
                            v155 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v181 > 1), v182 + 1, 1, v155, &_ss23_ContiguousArrayStorageCy17_StringProcessing11InstructionVGMd, &_ss23_ContiguousArrayStorageCy17_StringProcessing11InstructionVGMR);
                          }

                          *(v155 + 16) = v182 + 1;
                          *(v155 + 8 * v182 + 32) = v180;
                          *v58 = v155;
                          v62 = 1;
                          return v62 & 1;
                        }

LABEL_172:
                        v155 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v155 + 16) + 1, 1, v155, &_ss23_ContiguousArrayStorageCy17_StringProcessing11InstructionVGMd, &_ss23_ContiguousArrayStorageCy17_StringProcessing11InstructionVGMR);
                        goto LABEL_142;
                      }
                    }

                    __break(1u);
                    goto LABEL_172;
                  }

                  __break(1u);
                  goto LABEL_174;
                }

                v9 = v215;
                if (v52 == v185)
                {
                  v155 = 0x10000;
                  goto LABEL_135;
                }

LABEL_133:
                if (v52 != *MEMORY[0x1E69E8A80])
                {
                  goto LABEL_177;
                }

                v155 = 0x20000;
                goto LABEL_135;
              }

              v164 = v187 << 19;
            }

            if ((v110 & 0x8000000000000000) == 0)
            {
              v86 = (v15 << 22) ^ 0x4000000000 | (v110 << 27);
              v165 = (v60 >> 4) & 1 | v108 | v164;
              v166 = 0x1000000000;
              goto LABEL_121;
            }

            goto LABEL_163;
          }

          goto LABEL_159;
        }

        goto LABEL_52;
      }

      outlined destroy of MEProgram(v109, type metadata accessor for DSLTree.Atom);
      v57 = *(type metadata accessor for Compiler.ByteCodeGen(0) + 20);
      v128 = v211;
      v129 = v212;
      v130 = *(v211 + 16);
      v38 = v198;
      v130(v198, v213, v212);
      v130(v33, v38, v129);
      v131 = *(v128 + 88);
      v110 = v128 + 88;
      v132 = v131(v33, v129);
      v108 = v215;
      v60 = 0;
      v58 = v209;
      if (v132 != *MEMORY[0x1E69E8A88])
      {
        if (v132 == v185)
        {
          v60 = 0x10000;
        }

        else
        {
          if (v132 != *MEMORY[0x1E69E8A80])
          {
            goto LABEL_177;
          }

          v60 = 0x20000;
        }
      }

      (a4)(v38, v212);
      if (v214)
      {
        v158 = 0x40000;
      }

      else
      {
        if (v187 < 0)
        {
LABEL_166:
          __break(1u);
          goto LABEL_167;
        }

        v158 = v187 << 19;
      }

      if (v108 < 0)
      {
        goto LABEL_161;
      }

      v108 = (v15 << 22) ^ 0x4000000000 | (v108 << 27);
      v159 = v60 | v158 | 0x1600001000000000;
LABEL_110:
      v89 = *(v58 + v57);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v89 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v89 + 16) + 1, 1, v89, &_ss23_ContiguousArrayStorageCy17_StringProcessing11InstructionVGMd, &_ss23_ContiguousArrayStorageCy17_StringProcessing11InstructionVGMR);
      }

      v157 = v108 | v159;
      goto LABEL_123;
    }

    if (!EnumCaseMultiPayload)
    {
      v133 = v58[2];
      if (v133)
      {
        v134 = *v110;
        v135 = *(v110 + 8);
        if ((*(v60 + 4 * v133 - 4) & 1) == 0)
        {
          goto LABEL_48;
        }

        if ((Character._isSingleScalar.getter() & 1) == 0)
        {
          goto LABEL_75;
        }

        if ((specialized Collection.first.getter(v134, v135) & 0x100000000) != 0)
        {
LABEL_176:
          __break(1u);
          goto LABEL_177;
        }

        v142 = v193;
        Unicode.Scalar.properties.getter();
        v143 = Unicode.Scalar.Properties.isCased.getter();
        (*(v194 + 8))(v142, v191);
        if ((v143 & 1) == 0)
        {
LABEL_75:
          if (Character._isUppercased.getter() & 1) != 0 && (Character._isLowercased.getter())
          {
LABEL_48:
            outlined destroy of MEProgram(v109, type metadata accessor for DSLTree.Atom);
            if (v134 == 2573 && v135 == 0xE200000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
            {

              goto LABEL_6;
            }

            v169 = Character.asciiValue.getter();

            if ((v169 & 0x100) != 0)
            {
              goto LABEL_6;
            }

            v57 = *(type metadata accessor for Compiler.ByteCodeGen(0) + 20);
            v171 = v211;
            v170 = v212;
            v172 = *(v211 + 16);
            v173 = v189;
            v172(v189, v213, v212);
            v174 = v188;
            v172(v188, v173, v170);
            v175 = (*(v171 + 88))(v174, v170);
            v176 = 0;
            v58 = v209;
            v177 = v215;
            if (v175 != *MEMORY[0x1E69E8A88])
            {
              if (v175 == v185)
              {
                v176 = 0x10000;
              }

              else
              {
                if (v175 != *MEMORY[0x1E69E8A80])
                {
                  goto LABEL_177;
                }

                v176 = 0x20000;
              }
            }

            (a4)(v189, v212);
            if (v214)
            {
              v183 = 0x40000;
            }

            else
            {
              if (v187 < 0)
              {
LABEL_175:
                __break(1u);
                goto LABEL_176;
              }

              v183 = v187 << 19;
            }

            if ((v177 & 0x8000000000000000) == 0)
            {
              v86 = ((v15 << 22) ^ 0x4000000000) & 0xFFFFFFFFFFFFFF00 | (v177 << 27) | v169;
              v165 = v176 | v183;
              v166 = 0x800000000;
LABEL_121:
              v90 = v165 | v166 & 0xFFFFFFFFFFFFLL | 0x1600000000000000;
              v89 = *(v58 + v57);
              if (swift_isUniquelyReferenced_nonNull_native())
              {
LABEL_122:
                v157 = v86 | v90;
LABEL_123:
                v168 = *(v89 + 16);
                v167 = *(v89 + 24);
                if (v168 >= v167 >> 1)
                {
                  v89 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v167 > 1), v168 + 1, 1, v89, &_ss23_ContiguousArrayStorageCy17_StringProcessing11InstructionVGMd, &_ss23_ContiguousArrayStorageCy17_StringProcessing11InstructionVGMR);
                }

                *(v89 + 16) = v168 + 1;
                *(v89 + 8 * v168 + 32) = v157;
                *(v58 + v57) = v89;
                v62 = 1;
                return v62 & 1;
              }

LABEL_157:
              v89 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v89 + 16) + 1, 1, v89, &_ss23_ContiguousArrayStorageCy17_StringProcessing11InstructionVGMd, &_ss23_ContiguousArrayStorageCy17_StringProcessing11InstructionVGMR);
              goto LABEL_122;
            }

LABEL_174:
            __break(1u);
            goto LABEL_175;
          }
        }

        __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy17_StringProcessing7DSLTreeV20CustomCharacterClassV6MemberOGMd, &_ss23_ContiguousArrayStorageCy17_StringProcessing7DSLTreeV20CustomCharacterClassV6MemberOGMR);
        v144 = *(type metadata accessor for DSLTree.CustomCharacterClass.Member(0) - 8);
        v145 = *(v144 + 72);
        v57 = (*(v144 + 80) + 32) & ~*(v144 + 80);
        v146 = swift_allocObject();
        *(v146 + 16) = xmmword_18E5ED040;
        outlined init with take of DSLTree.QuantificationKind(v109, v146 + v57, type metadata accessor for DSLTree.Atom);
        swift_storeEnumTagMultiPayload();
        v216 = v146;
        v217 = 0;
        LOBYTE(v57) = DSLTree.CustomCharacterClass.asAsciiBitset(_:)(v58);
        v60 = v147;
        v108 = v148;

        if (v57 == 2)
        {
          goto LABEL_6;
        }

        v58 = (v209 + *(type metadata accessor for Compiler.ByteCodeGen(0) + 20));
        v110 = v58[6];
        v38 = *(v110 + 16);
        if (swift_isUniquelyReferenced_nonNull_native())
        {
          goto LABEL_78;
        }

        goto LABEL_169;
      }

      __break(1u);
LABEL_159:
      __break(1u);
LABEL_160:
      __break(1u);
LABEL_161:
      __break(1u);
      goto LABEL_162;
    }

    if (EnumCaseMultiPayload != 2)
    {
LABEL_52:
      outlined destroy of MEProgram(v109, type metadata accessor for DSLTree.Atom);
      outlined destroy of MEProgram(v110, type metadata accessor for DSLTree.Atom);
      goto LABEL_6;
    }

    outlined destroy of MEProgram(v109, type metadata accessor for DSLTree.Atom);
    LOBYTE(v216) = *v110;
    v118.stack._rawValue = v58;
    v119 = DSLTree.Atom.CharacterClass.asRuntimeModel(_:)(v118);
    v210 = *(type metadata accessor for Compiler.ByteCodeGen(0) + 20);
    v120 = *(v211 + 16);
    v121 = v200;
    v120(v200, v213, v212);
    v108 = v119;
    if (HIBYTE(v119))
    {
      v108 = v119 | 0x200;
      v58 = v209;
      if ((v119 & 0x10000) != 0)
      {
        goto LABEL_37;
      }
    }

    else
    {
      v58 = v209;
      if ((v119 & 0x10000) != 0)
      {
LABEL_37:
        v60 = 1024;
        goto LABEL_67;
      }
    }

    v60 = 0;
LABEL_67:
    v57 = v199;
    v38 = v212;
    v120(v199, v121, v212);
    v141 = (*(v211 + 88))(v57, v38);
    if (v141 == *MEMORY[0x1E69E8A88])
    {
      v110 = 0;
    }

    else if (v141 == v185)
    {
      v110 = 0x10000;
    }

    else
    {
      if (v141 != *MEMORY[0x1E69E8A80])
      {
        goto LABEL_177;
      }

      v110 = 0x20000;
    }

    (a4)(v121, v212);
    if (v214)
    {
      v160 = 1;
      if (v15)
      {
LABEL_103:
        v161 = 0;
LABEL_107:
        v57 = v210;
        if (v215 < 0)
        {
LABEL_162:
          __break(1u);
LABEL_163:
          __break(1u);
          goto LABEL_164;
        }

        v162 = v161 | (v215 << 27) | v110 | (v160 << 18) | 0x2000000000;
        v163 = __CFADD__(v108 + v60, v162);
        v108 += v60 + v162;
        if (v163)
        {
LABEL_164:
          __break(1u);
          goto LABEL_165;
        }

        v159 = 0x1600000000000000;
        goto LABEL_110;
      }
    }

    else
    {
      if (v187 < 0)
      {
LABEL_167:
        __break(1u);
        goto LABEL_168;
      }

      v160 = 2 * v187;
      if (v15)
      {
        goto LABEL_103;
      }
    }

    v161 = 0x4000000000;
    goto LABEL_107;
  }

  v72 = v215;
  if (v71 == 3)
  {
    v99 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s17_StringProcessing7DSLTreeV4_ASTO9GroupKindV_AC4NodeOtMd, &_s17_StringProcessing7DSLTreeV4_ASTO9GroupKindV_AC4NodeOtMR);
    v100 = swift_projectBox();
    v101 = *(v100 + *(v99 + 48));
    v102 = v206;
    outlined init with copy of DSLTree._AST.AbsentFunction(v100, v206, type metadata accessor for DSLTree._AST.GroupKind);
    v104 = v202;
    v103 = v203;
    v105 = v207;
    (*(v202 + 104))(v207, *MEMORY[0x1E69E8E08], v203);

    v106 = MEMORY[0x193ACE500](v102, v105);
    (*(v104 + 8))(v105, v103);
    outlined destroy of MEProgram(v102, type metadata accessor for DSLTree._AST.GroupKind);
    if ((v106 & 1) == 0)
    {

      goto LABEL_6;
    }

    v94 = v214 & 1;
    v95 = v101;
    v96 = v213;
    v97 = v72;
    v98 = v187;
LABEL_23:
    v62 = Compiler.ByteCodeGen.tryEmitFastQuant(_:_:_:_:)(v95, v96, v97, v98, v94);

    return v62 & 1;
  }

  if (v71 != 7)
  {
    return v62 & 1;
  }

  v73 = *((v210 & 0xFFFFFFFFFFFFFFBLL) + 0x18);
  v216 = *((v210 & 0xFFFFFFFFFFFFFFBLL) + 0x10);
  v217 = v73;

  v74 = DSLTree.CustomCharacterClass.asAsciiBitset(_:)(v58);
  v76 = v75;
  v78 = v77;

  if (v74 == 2)
  {
LABEL_6:
    v62 = 0;
    return v62 & 1;
  }

  v208 = v15;
  v79 = (v209 + *(type metadata accessor for Compiler.ByteCodeGen(0) + 20));
  v80 = v79[6];
  v210 = *(v80 + 2);
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v80 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v210 + 1, 1, v80);
  }

  v82 = *(v80 + 2);
  v81 = *(v80 + 3);
  if (v82 >= v81 >> 1)
  {
    v80 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v81 > 1), v82 + 1, 1, v80);
  }

  *(v80 + 2) = v82 + 1;
  v83 = &v80[24 * v82];
  v83[32] = v74 & 1;
  *(v83 + 5) = v76;
  *(v83 + 6) = v78;
  v79[6] = v80;
  v84 = v211;
  v57 = v212;
  v85 = *(v211 + 16);
  v58 = v201;
  v85(v201, v213, v212);
  v85(v49, v58, v57);
  v87 = *(v84 + 88);
  v86 = v84 + 88;
  v88 = v87(v49, v57);
  if (v88 == *MEMORY[0x1E69E8A88])
  {
    v89 = 0;
    v90 = v215;
LABEL_55:
    (a4)(v58, v212);
    if (v214)
    {
      v136 = 0x40000;
      goto LABEL_59;
    }

    if ((v187 & 0x8000000000000000) == 0)
    {
      v136 = v187 << 19;
LABEL_59:
      if (v90 < 0)
      {
        __break(1u);
      }

      else
      {
        v137 = (v208 << 22) ^ 0x4000000000 | (v90 << 27) | v89 | v136;
        v90 = v210 + v137;
        if (!__CFADD__(v210, v137))
        {
          v57 = 0x1600000000000000;
          v89 = *v79;
          if (swift_isUniquelyReferenced_nonNull_native())
          {
LABEL_62:
            v138 = v90 | v57;
            v140 = *(v89 + 16);
            v139 = *(v89 + 24);
            if (v140 >= v139 >> 1)
            {
              v89 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v139 > 1), v140 + 1, 1, v89, &_ss23_ContiguousArrayStorageCy17_StringProcessing11InstructionVGMd, &_ss23_ContiguousArrayStorageCy17_StringProcessing11InstructionVGMR);
            }

            *(v89 + 16) = v140 + 1;
            *(v89 + 8 * v140 + 32) = v138;
            *v79 = v89;
            v62 = 1;
            return v62 & 1;
          }

LABEL_155:
          v89 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v89 + 16) + 1, 1, v89, &_ss23_ContiguousArrayStorageCy17_StringProcessing11InstructionVGMd, &_ss23_ContiguousArrayStorageCy17_StringProcessing11InstructionVGMR);
          goto LABEL_62;
        }
      }

      __break(1u);
      goto LABEL_155;
    }

    __break(1u);
    goto LABEL_157;
  }

  v90 = v215;
  if (v88 == v185)
  {
    v89 = 0x10000;
    goto LABEL_55;
  }

  if (v88 == *MEMORY[0x1E69E8A80])
  {
    v89 = 0x20000;
    goto LABEL_55;
  }

LABEL_177:
  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

uint64_t MEProgram.Builder.buildCondBranch(to:ifZeroElseDecrement:)(uint64_t a1, uint64_t a2)
{
  v5 = *v2;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v5 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v5 + 2) + 1, 1, v5, &_ss23_ContiguousArrayStorageCy17_StringProcessing11InstructionVGMd, &_ss23_ContiguousArrayStorageCy17_StringProcessing11InstructionVGMR);
  }

  v7 = *(v5 + 2);
  v6 = *(v5 + 3);
  if (v7 >= v6 >> 1)
  {
    v5 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v6 > 1), v7 + 1, 1, v5, &_ss23_ContiguousArrayStorageCy17_StringProcessing11InstructionVGMd, &_ss23_ContiguousArrayStorageCy17_StringProcessing11InstructionVGMR);
  }

  *(v5 + 2) = v7 + 1;
  *&v5[8 * v7 + 32] = a2 | 0x500000000000000;
  *v2 = v5;
  v8 = *(v2 + 88);
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
    result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v8 + 16) + 1, 1, v8);
    v8 = result;
  }

  v11 = *(v8 + 16);
  v10 = *(v8 + 24);
  if (v11 >= v10 >> 1)
  {
    result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v10 > 1), v11 + 1, 1, v8);
    v8 = result;
  }

  *(v8 + 16) = v11 + 1;
  v12 = v8 + 32 * v11;
  *(v12 + 32) = v7;
  *(v12 + 40) = a1;
  *(v12 + 48) = 0;
  *(v12 + 56) = 1;
  *(v2 + 88) = v8;
  return result;
}

uint64_t DSLTree.Node.guaranteesForwardProgress.getter(unint64_t a1)
{
  while (1)
  {
    v1 = a1;
    v2 = type metadata accessor for DSLTree._AST.QuantificationAmount(0);
    v3 = *(*(v2 - 8) + 64);
    MEMORY[0x1EEE9AC00](v2 - 8);
    v5 = &v51 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
    v6 = type metadata accessor for DSLTree.Atom(0);
    v7 = *(*(v6 - 8) + 64);
    MEMORY[0x1EEE9AC00](v6);
    v9 = &v51 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
    v10 = type metadata accessor for AST.Group.Kind();
    v11 = *(v10 - 8);
    v12 = *(v11 + 64);
    MEMORY[0x1EEE9AC00](v10);
    v14 = &v51 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
    v15 = type metadata accessor for DSLTree._AST.GroupKind(0);
    v16 = *(*(v15 - 8) + 64);
    MEMORY[0x1EEE9AC00](v15 - 8);
    v18 = &v51 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
    v19 = 0;
    v20 = (v1 >> 59) & 0x1E | (v1 >> 2) & 1;
    if (v20 > 5)
    {
      if (v20 > 7)
      {
        if (v20 != 8)
        {
          if (v20 == 10)
          {
            v49 = *((v1 & 0xFFFFFFFFFFFFFFBLL) + 0x18);
            if ((v49 & 0x2000000000000000) != 0)
            {
              v50 = HIBYTE(v49) & 0xF;
            }

            else
            {
              v50 = *((v1 & 0xFFFFFFFFFFFFFFBLL) + 0x10) & 0xFFFFFFFFFFFFLL;
            }

            v19 = v50 != 0;
          }

          else if (v20 == 12)
          {
            v21 = *swift_projectBox();

            v22 = DSLTree.Node.guaranteesForwardProgress.getter(v21);

            return v22 & 1;
          }

          return v19 & 1;
        }

        v41 = swift_projectBox();
        outlined init with copy of DSLTree._AST.AbsentFunction(v41, v9, type metadata accessor for DSLTree.Atom);
        EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
        if (EnumCaseMultiPayload != 3)
        {
          if (EnumCaseMultiPayload == 4 || EnumCaseMultiPayload == 6)
          {
            outlined destroy of MEProgram(v9, type metadata accessor for DSLTree.Atom);
            v19 = 0;
          }

          else
          {
            outlined destroy of MEProgram(v9, type metadata accessor for DSLTree.Atom);
LABEL_46:
            v19 = 1;
          }

          return v19 & 1;
        }

        goto LABEL_44;
      }

      if (v20 == 6)
      {
        v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s17_StringProcessing7DSLTreeV4_ASTO20QuantificationAmountV_AC0E4KindOAC4NodeOtMd, &_s17_StringProcessing7DSLTreeV4_ASTO20QuantificationAmountV_AC0E4KindOAC4NodeOtMR);
        v44 = swift_projectBox();
        v45 = *(v44 + *(v43 + 64));
        outlined init with copy of DSLTree._AST.AbsentFunction(v44, v5, type metadata accessor for DSLTree._AST.QuantificationAmount);

        v46 = AST.Quantification.Amount.bounds.getter();
        v48 = v47;
        outlined destroy of MEProgram(v5, type metadata accessor for DSLTree._AST.QuantificationAmount);
        if ((v48 & 1) != 0 || v46 <= 0)
        {

LABEL_44:
          v19 = 0;
          return v19 & 1;
        }

        v19 = DSLTree.Node.guaranteesForwardProgress.getter(v45);
      }

      else
      {
        v34 = *((v1 & 0xFFFFFFFFFFFFFFBLL) + 0x18);
        v51 = *((v1 & 0xFFFFFFFFFFFFFFBLL) + 0x10);
        v52 = v34;
        v19 = DSLTree.CustomCharacterClass.guaranteesForwardProgress.getter();
      }

      return v19 & 1;
    }

    if (v20 <= 1)
    {
      break;
    }

    if (v20 != 2)
    {
      if (v20 == 3)
      {
        v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s17_StringProcessing7DSLTreeV4_ASTO9GroupKindV_AC4NodeOtMd, &_s17_StringProcessing7DSLTreeV4_ASTO9GroupKindV_AC4NodeOtMR);
        v31 = swift_projectBox();
        v32 = *(v31 + *(v30 + 48));
        outlined init with copy of DSLTree._AST.AbsentFunction(v31, v18, type metadata accessor for DSLTree._AST.GroupKind);
        (*(v11 + 32))(v14, v18, v10);
        v33 = (*(v11 + 88))(v14, v10);
        v19 = 0;
        if (v33 != *MEMORY[0x1E69E8E68] && v33 != *MEMORY[0x1E69E8E30] && v33 != *MEMORY[0x1E69E8E00] && v33 != *MEMORY[0x1E69E8E40])
        {

          v19 = DSLTree.Node.guaranteesForwardProgress.getter(v32);

          (*(v11 + 8))(v14, v10);
        }
      }

      return v19 & 1;
    }

    a1 = *((v1 & 0xFFFFFFFFFFFFFFBLL) + 0x30);
  }

  if (v20)
  {
    if (v20 == 1)
    {
      v24 = *((v1 & 0xFFFFFFFFFFFFFFBLL) + 0x10);
      v25 = *(v24 + 16);

      v26 = 0;
      while (v25 != v26)
      {
        if (v26 >= *(v24 + 16))
        {
          __break(1u);
          goto LABEL_49;
        }

        v27 = v26 + 1;
        v28 = *(v24 + 8 * v26 + 32);

        v29 = DSLTree.Node.guaranteesForwardProgress.getter(v28);

        v26 = v27;
        if (v29)
        {
          goto LABEL_14;
        }
      }

LABEL_28:

      v19 = 0;
    }

    return v19 & 1;
  }

  v35 = *(v1 + 16);
  v36 = *(v35 + 16);

  v37 = 0;
  while (1)
  {
    if (v36 == v37)
    {
LABEL_14:

      goto LABEL_46;
    }

    if (v37 >= *(v35 + 16))
    {
      break;
    }

    v38 = v37 + 1;
    v39 = *(v35 + 8 * v37 + 32);

    v40 = DSLTree.Node.guaranteesForwardProgress.getter(v39);

    v37 = v38;
    if ((v40 & 1) == 0)
    {
      goto LABEL_28;
    }
  }

LABEL_49:
  __break(1u);
  return result;
}

uint64_t MEProgram.Builder.buildCondBranch(to:ifSamePositionAs:)(uint64_t a1, uint64_t a2)
{
  v4 = a2 | 0x600000000000000;
  v5 = *v2;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v5 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v5 + 2) + 1, 1, v5, &_ss23_ContiguousArrayStorageCy17_StringProcessing11InstructionVGMd, &_ss23_ContiguousArrayStorageCy17_StringProcessing11InstructionVGMR);
  }

  v7 = *(v5 + 2);
  v6 = *(v5 + 3);
  if (v7 >= v6 >> 1)
  {
    v5 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v6 > 1), v7 + 1, 1, v5, &_ss23_ContiguousArrayStorageCy17_StringProcessing11InstructionVGMd, &_ss23_ContiguousArrayStorageCy17_StringProcessing11InstructionVGMR);
  }

  *(v5 + 2) = v7 + 1;
  *&v5[8 * v7 + 32] = v4;
  *v2 = v5;
  v8 = *(v2 + 88);
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
    result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v8 + 16) + 1, 1, v8);
    v8 = result;
  }

  v11 = *(v8 + 16);
  v10 = *(v8 + 24);
  if (v11 >= v10 >> 1)
  {
    result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v10 > 1), v11 + 1, 1, v8);
    v8 = result;
  }

  *(v8 + 16) = v11 + 1;
  v12 = v8 + 32 * v11;
  *(v12 + 32) = v7;
  *(v12 + 40) = a1;
  *(v12 + 48) = 0;
  *(v12 + 56) = 1;
  *(v2 + 88) = v8;
  return result;
}

uint64_t MEProgram.Builder.buildSplit(to:saving:)(uint64_t a1, uint64_t a2)
{
  v5 = *v2;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v5 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v5 + 2) + 1, 1, v5, &_ss23_ContiguousArrayStorageCy17_StringProcessing11InstructionVGMd, &_ss23_ContiguousArrayStorageCy17_StringProcessing11InstructionVGMR);
  }

  v7 = *(v5 + 2);
  v6 = *(v5 + 3);
  if (v7 >= v6 >> 1)
  {
    v5 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v6 > 1), v7 + 1, 1, v5, &_ss23_ContiguousArrayStorageCy17_StringProcessing11InstructionVGMd, &_ss23_ContiguousArrayStorageCy17_StringProcessing11InstructionVGMR);
  }

  *(v5 + 2) = v7 + 1;
  *&v5[8 * v7 + 32] = 0x1500000000000000;
  *v2 = v5;
  v8 = *(v2 + 88);
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
    result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v8 + 16) + 1, 1, v8);
    v8 = result;
  }

  v11 = *(v8 + 16);
  v10 = *(v8 + 24);
  if (v11 >= v10 >> 1)
  {
    result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v10 > 1), v11 + 1, 1, v8);
    v8 = result;
  }

  *(v8 + 16) = v11 + 1;
  v12 = v8 + 32 * v11;
  *(v12 + 32) = v7;
  *(v12 + 40) = a1;
  *(v12 + 48) = a2;
  *(v12 + 56) = 0;
  *(v2 + 88) = v8;
  return result;
}

uint64_t DSLTree.CustomCharacterClass.asAsciiBitset(_:)(uint64_t a1)
{
  v20 = a1;
  v2 = type metadata accessor for DSLTree.CustomCharacterClass.Member(0);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v6 = &v20 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *v1;
  v8 = *(v1 + 8);
  v9 = *(v7 + 16);
  if (v9)
  {
    v21 = 0;
    v10 = 0;
    v11 = v7 + ((*(v4 + 80) + 32) & ~*(v4 + 80));
    v12 = *(v4 + 72);
    v13 = v8;
    v14 = v8;
    while (1)
    {
      outlined init with copy of DSLTree._AST.AbsentFunction(v11, v6, type metadata accessor for DSLTree.CustomCharacterClass.Member);
      v8 = DSLTree.CustomCharacterClass.Member.asAsciiBitset(_:_:)(v20, v13);
      v16 = v15;
      v18 = v17;
      result = outlined destroy of MEProgram(v6, type metadata accessor for DSLTree.CustomCharacterClass.Member);
      if (v8 == 2)
      {
        v21 = v16;
        v10 = v18;
      }

      else if (v14 == 2)
      {
        v8 = v14;
      }

      else
      {
        if ((v8 ^ v14))
        {
          __break(1u);
          return result;
        }

        v21 |= v16;
        v10 |= v18;
        v8 = v14 & 1;
      }

      v11 += v12;
      v14 = v8;
      if (!--v9)
      {
        return v8;
      }
    }
  }

  v21 = 0;
  return v8;
}

_StringProcessing::DSLTree::CustomCharacterClass __swiftcall DSLTree.CustomCharacterClass.init(members:isInverted:)(Swift::OpaquePointer members, Swift::Bool isInverted)
{
  *v2 = members;
  *(v2 + 8) = isInverted;
  result.members = members;
  result.isInverted = isInverted;
  return result;
}

size_t Compiler.ByteCodeGen.coalescingCustomCharacterClassMembers(_:)(uint64_t a1)
{
  v3 = type metadata accessor for DSLTree.CustomCharacterClass.Member(0);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  v6 = MEMORY[0x1EEE9AC00](v3);
  v42 = &v35 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v35 - v8;
  v44 = v1;
  result = _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFSay17_StringProcessing7DSLTreeV20CustomCharacterClassV6MemberOG_ALs5NeverOTg5(partial apply for closure #1 in Compiler.ByteCodeGen.coalescingCustomCharacterClassMembers(_:), v43, a1);
  v11 = result;
  v46 = &outlined read-only object #0 of Compiler.ByteCodeGen.coalescingCustomCharacterClassMembers(_:);
  v45 = MEMORY[0x1E69E7CC0];
  v12 = *(result + 16);
  if (v12)
  {
    v38 = v3;
    v13 = 0;
    v40 = (*(v4 + 80) + 32) & ~*(v4 + 80);
    v14 = result + v40;
    v39 = v12 - 1;
    v15 = MEMORY[0x1E69E7CC0];
LABEL_3:
    v41 = v15;
    v16 = 0;
    for (i = v13; i < *(v11 + 16); ++i)
    {
      v18 = *(v4 + 72);
      v13 = i + 1;
      outlined init with copy of DSLTree._AST.AbsentFunction(v14 + v18 * i, v9, type metadata accessor for DSLTree.CustomCharacterClass.Member);
      if (!tryAccumulate(_:) in Accumulator #1 in Compiler.ByteCodeGen.coalescingCustomCharacterClassMembers(_:)(v9))
      {
        if (v16)
        {
          v19 = finish() in Accumulator #1 in Compiler.ByteCodeGen.coalescingCustomCharacterClassMembers(_:)(v46);

          v20 = v19;
          v21 = *(v19 + 16);
          v22 = v41;
          v23 = v41[2];
          v36 = v21;
          v24 = __OFADD__(v23, v21);
          v25 = v23 + v21;
          if (v24)
          {
            goto LABEL_32;
          }

          v37 = v20;
          v35 = v25;
          result = swift_isUniquelyReferenced_nonNull_native();
          if (!result || v35 > v22[3] >> 1)
          {
            if (v23 <= v35)
            {
              v26 = v35;
            }

            else
            {
              v26 = v23;
            }

            result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(result, v26, 1, v22, &_ss23_ContiguousArrayStorageCy17_StringProcessing7DSLTreeV20CustomCharacterClassV6MemberOGMd, &_ss23_ContiguousArrayStorageCy17_StringProcessing7DSLTreeV20CustomCharacterClassV6MemberOGMR, type metadata accessor for DSLTree.CustomCharacterClass.Member);
            v22 = result;
          }

          v27 = v36;
          if (*(v37 + 16))
          {
            if ((v22[3] >> 1) - v22[2] < v36)
            {
              goto LABEL_34;
            }

            swift_arrayInitWithCopy();

            if (v27)
            {
              v28 = v22[2];
              v24 = __OFADD__(v28, v27);
              v29 = v28 + v27;
              if (v24)
              {
                goto LABEL_35;
              }

              v22[2] = v29;
            }
          }

          else
          {

            if (v27)
            {
              goto LABEL_33;
            }
          }

          v46 = &outlined read-only object #0 of Compiler.ByteCodeGen.coalescingCustomCharacterClassMembers(_:);
        }

        else
        {
          v22 = v41;
        }

        outlined init with take of DSLTree.QuantificationKind(v9, v42, type metadata accessor for DSLTree.CustomCharacterClass.Member);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v22 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v22[2] + 1, 1, v22, &_ss23_ContiguousArrayStorageCy17_StringProcessing7DSLTreeV20CustomCharacterClassV6MemberOGMd, &_ss23_ContiguousArrayStorageCy17_StringProcessing7DSLTreeV20CustomCharacterClassV6MemberOGMR, type metadata accessor for DSLTree.CustomCharacterClass.Member);
        }

        v31 = v22[2];
        v30 = v22[3];
        v32 = v22;
        if (v31 >= v30 >> 1)
        {
          v32 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(v30 > 1, v31 + 1, 1, v22, &_ss23_ContiguousArrayStorageCy17_StringProcessing7DSLTreeV20CustomCharacterClassV6MemberOGMd, &_ss23_ContiguousArrayStorageCy17_StringProcessing7DSLTreeV20CustomCharacterClassV6MemberOGMR, type metadata accessor for DSLTree.CustomCharacterClass.Member);
        }

        *(v32 + 16) = v31 + 1;
        v33 = v32;
        result = outlined init with take of DSLTree.QuantificationKind(v42, v32 + v40 + v31 * v18, type metadata accessor for DSLTree.CustomCharacterClass.Member);
        v15 = v33;
        v45 = v33;
        if (v39 == i)
        {

          return v33;
        }

        goto LABEL_3;
      }

      result = outlined destroy of MEProgram(v9, type metadata accessor for DSLTree.CustomCharacterClass.Member);
      v16 = 1;
      if (v12 == v13)
      {

        v34 = finish() in Accumulator #1 in Compiler.ByteCodeGen.coalescingCustomCharacterClassMembers(_:)(v46);

        specialized Array.append<A>(contentsOf:)(v34);
        return v45;
      }
    }

    __break(1u);
LABEL_32:
    __break(1u);
LABEL_33:
    __break(1u);
LABEL_34:
    __break(1u);
LABEL_35:
    __break(1u);
  }

  else
  {

    return MEMORY[0x1E69E7CC0];
  }

  return result;
}

uint64_t closure #1 in Compiler.ByteCodeGen.coalescingCustomCharacterClassMembers(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = type metadata accessor for DSLTree.CustomCharacterClass.Member(0);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v24 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  outlined init with copy of DSLTree._AST.AbsentFunction(a1, v9, type metadata accessor for DSLTree.CustomCharacterClass.Member);
  result = swift_getEnumCaseMultiPayload();
  v11 = type metadata accessor for DSLTree.CustomCharacterClass.Member;
  if (result > 2)
  {
    if (result > 5 || (result - 3) >= 2)
    {
      v12 = *(*v9 + 16);
      v13 = *(*v9 + 24);
      v14 = *(*v9 + 32);
      v15 = *(*v9 + 40);
      v16 = swift_allocObject();
      v24 = v12;
      v25 = v13;
      Compiler.ByteCodeGen.coalescingCustomCharacterClass(_:)(&v24, v16 + 16);
      v24 = v14;
      v25 = v15;
      Compiler.ByteCodeGen.coalescingCustomCharacterClass(_:)(&v24, v16 + 32);
      *a3 = v16;
      swift_storeEnumTagMultiPayload();
    }

    goto LABEL_8;
  }

  if (!result)
  {
LABEL_8:
    outlined destroy of MEProgram(v9, v11);
    return outlined init with copy of DSLTree._AST.AbsentFunction(a1, a3, type metadata accessor for DSLTree.CustomCharacterClass.Member);
  }

  if (result == 1)
  {
    v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s17_StringProcessing7DSLTreeV4AtomO_AEtMd, "4_");
    outlined destroy of MEProgram(&v9[*(v17 + 48)], type metadata accessor for DSLTree.Atom);
    v11 = type metadata accessor for DSLTree.Atom;
    goto LABEL_8;
  }

  v18 = *(*a2 + 16);
  if (v18)
  {
    v19 = *v9;
    v20 = v9[8];
    if ((*(*a2 + 4 * v18 + 28) & 0x10000) != 0)
    {
      v22 = Compiler.ByteCodeGen.coalescingCustomCharacterClassMembers(_:)(*v9);
    }

    else
    {
      v21 = *v9;

      v22 = v19;
    }

    v23 = Compiler.ByteCodeGen.flatteningCustomCharacterClassMembers(_:)(v22);

    *a3 = v23;
    *(a3 + 8) = v20;
    return swift_storeEnumTagMultiPayload();
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t Compiler.ByteCodeGen.coalescingCustomCharacterClass(_:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  v4 = *(*v2 + 16);
  if (v4)
  {
    v5 = *result;
    v6 = *(result + 8);
    if ((*(*v2 + 4 * v4 + 28) & 0x10000) != 0)
    {
      v5 = Compiler.ByteCodeGen.coalescingCustomCharacterClassMembers(_:)(*result);
    }

    else
    {
      v7 = *result;
    }

    v8 = Compiler.ByteCodeGen.flatteningCustomCharacterClassMembers(_:)(v5);

    *a2 = v8;
    *(a2 + 8) = v6;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFSay17_StringProcessing7DSLTreeV20CustomCharacterClassV6MemberOG_ALs5NeverOTg5(void (*a1)(uint64_t), uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v20 = a1;
  v21 = a2;
  v6 = type metadata accessor for DSLTree.CustomCharacterClass.Member(0);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v10 = &v18 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *(a3 + 16);
  v12 = MEMORY[0x1E69E7CC0];
  if (!v11)
  {
    return v12;
  }

  v22 = MEMORY[0x1E69E7CC0];
  specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v11, 0);
  v12 = v22;
  v19 = (*(v7 + 80) + 32) & ~*(v7 + 80);
  v13 = a3 + v19;
  v14 = *(v7 + 72);
  while (1)
  {
    v20(v13);
    if (v4)
    {
      break;
    }

    v4 = 0;
    v22 = v12;
    v16 = *(v12 + 16);
    v15 = *(v12 + 24);
    if (v16 >= v15 >> 1)
    {
      specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(v15 > 1, v16 + 1, 1);
      v12 = v22;
    }

    *(v12 + 16) = v16 + 1;
    outlined init with take of DSLTree.QuantificationKind(v10, v12 + v19 + v16 * v14, type metadata accessor for DSLTree.CustomCharacterClass.Member);
    v13 += v14;
    if (!--v11)
    {
      return v12;
    }
  }

  __break(1u);
  return result;
}

uint64_t _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFShySJG_17_StringProcessing7DSLTreeV20CustomCharacterClassV6MemberOs5NeverOTg505_s17_d46Processing8CompilerC11ByteCodeGenV37flatteningghi51Members33_39AB0CA4F16DF29C6C8E2960922072B7LLySayAA7f8V0hiJ0V6J14OGANFAMSJXEfU_Tf1cn_n(uint64_t a1)
{
  v3 = type metadata accessor for DSLTree.CustomCharacterClass.Member(0);
  v33 = *(v3 - 8);
  v34 = v3;
  v4 = *(v33 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v6 = (&v29 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v7 = *(a1 + 16);
  v8 = MEMORY[0x1E69E7CC0];
  if (!v7)
  {
    return v8;
  }

  v29 = v1;
  v37 = MEMORY[0x1E69E7CC0];
  specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v7, 0);
  v8 = v37;
  v9 = a1 + 56;
  v10 = -1 << *(a1 + 32);
  result = _HashTable.startBucket.getter();
  v12 = result;
  v13 = 0;
  v30 = a1 + 64;
  v31 = v7;
  v32 = a1 + 56;
  while ((v12 & 0x8000000000000000) == 0 && v12 < 1 << *(a1 + 32))
  {
    v15 = v12 >> 6;
    if ((*(v9 + 8 * (v12 >> 6)) & (1 << v12)) == 0)
    {
      goto LABEL_21;
    }

    v16 = *(a1 + 36);
    v35 = v13;
    v36 = v16;
    v17 = (*(a1 + 48) + 16 * v12);
    v18 = a1;
    v19 = v17[1];
    *v6 = *v17;
    v6[1] = v19;
    type metadata accessor for DSLTree.Atom(0);
    swift_storeEnumTagMultiPayload();
    swift_storeEnumTagMultiPayload();
    v37 = v8;
    v21 = *(v8 + 16);
    v20 = *(v8 + 24);

    if (v21 >= v20 >> 1)
    {
      specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(v20 > 1, v21 + 1, 1);
      v8 = v37;
    }

    *(v8 + 16) = v21 + 1;
    result = outlined init with take of DSLTree.QuantificationKind(v6, v8 + ((*(v33 + 80) + 32) & ~*(v33 + 80)) + *(v33 + 72) * v21, type metadata accessor for DSLTree.CustomCharacterClass.Member);
    v14 = 1 << *(v18 + 32);
    if (v12 >= v14)
    {
      goto LABEL_22;
    }

    a1 = v18;
    v9 = v32;
    v22 = *(v32 + 8 * v15);
    if ((v22 & (1 << v12)) == 0)
    {
      goto LABEL_23;
    }

    if (v36 != *(a1 + 36))
    {
      goto LABEL_24;
    }

    v23 = v22 & (-2 << (v12 & 0x3F));
    if (v23)
    {
      v14 = __clz(__rbit64(v23)) | v12 & 0x7FFFFFFFFFFFFFC0;
    }

    else
    {
      v24 = v15 << 6;
      v25 = v15 + 1;
      v26 = (v30 + 8 * v15);
      while (v25 < (v14 + 63) >> 6)
      {
        v28 = *v26++;
        v27 = v28;
        v24 += 64;
        ++v25;
        if (v28)
        {
          result = outlined consume of Set<Unicode.Scalar>.Index._Variant(v12, v36, 0);
          v14 = __clz(__rbit64(v27)) + v24;
          goto LABEL_4;
        }
      }

      result = outlined consume of Set<Unicode.Scalar>.Index._Variant(v12, v36, 0);
    }

LABEL_4:
    v13 = v35 + 1;
    v12 = v14;
    if (v35 + 1 == v31)
    {
      return v8;
    }
  }

  __break(1u);
LABEL_21:
  __break(1u);
LABEL_22:
  __break(1u);
LABEL_23:
  __break(1u);
LABEL_24:
  __break(1u);
  return result;
}

uint64_t _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFShys7UnicodeO6ScalarVG_17_StringProcessing7DSLTreeV20CustomCharacterClassV6MemberOs5NeverOTg505_s17_f46Processing8CompilerC11ByteCodeGenV37flatteningijk51Members33_39AB0CA4F16DF29C6C8E2960922072B7LLySayAA7h8V0hiJ0V6l9OGANFAMs7d2O6E7VXEfU0_Tf1cn_n(uint64_t a1)
{
  v3 = type metadata accessor for DSLTree.CustomCharacterClass.Member(0);
  v31 = *(v3 - 8);
  v32 = v3;
  v4 = *(v31 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v28 = v26 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *(a1 + 16);
  v8 = MEMORY[0x1E69E7CC0];
  if (!v7)
  {
    return v8;
  }

  v26[1] = v1;
  v35 = MEMORY[0x1E69E7CC0];
  v29 = v5;
  specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v7, 0);
  v8 = v35;
  v9 = -1 << *(v29 + 32);
  v34 = v29 + 56;
  result = _HashTable.startBucket.getter();
  v11 = result;
  v12 = v28;
  v13 = v29;
  v14 = 0;
  v27 = v29 + 64;
  v30 = v7;
  while ((v11 & 0x8000000000000000) == 0 && v11 < 1 << *(v13 + 32))
  {
    v16 = v11 >> 6;
    if ((*(v34 + 8 * (v11 >> 6)) & (1 << v11)) == 0)
    {
      goto LABEL_22;
    }

    v33 = *(v13 + 36);
    *v12 = *(*(v13 + 48) + 4 * v11);
    type metadata accessor for DSLTree.Atom(0);
    swift_storeEnumTagMultiPayload();
    swift_storeEnumTagMultiPayload();
    v35 = v8;
    v18 = *(v8 + 16);
    v17 = *(v8 + 24);
    if (v18 >= v17 >> 1)
    {
      specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(v17 > 1, v18 + 1, 1);
      v8 = v35;
    }

    *(v8 + 16) = v18 + 1;
    result = outlined init with take of DSLTree.QuantificationKind(v12, v8 + ((*(v31 + 80) + 32) & ~*(v31 + 80)) + *(v31 + 72) * v18, type metadata accessor for DSLTree.CustomCharacterClass.Member);
    v15 = 1 << *(v13 + 32);
    if (v11 >= v15)
    {
      goto LABEL_23;
    }

    v19 = *(v34 + 8 * v16);
    if ((v19 & (1 << v11)) == 0)
    {
      goto LABEL_24;
    }

    if (v33 != *(v13 + 36))
    {
      goto LABEL_25;
    }

    v20 = v19 & (-2 << (v11 & 0x3F));
    if (v20)
    {
      v15 = __clz(__rbit64(v20)) | v11 & 0x7FFFFFFFFFFFFFC0;
    }

    else
    {
      v21 = v16 << 6;
      v22 = v16 + 1;
      v23 = (v27 + 8 * v16);
      while (v22 < (v15 + 63) >> 6)
      {
        v25 = *v23++;
        v24 = v25;
        v21 += 64;
        ++v22;
        if (v25)
        {
          result = outlined consume of Set<Unicode.Scalar>.Index._Variant(v11, v33, 0);
          v13 = v29;
          v15 = __clz(__rbit64(v24)) + v21;
          goto LABEL_19;
        }
      }

      result = outlined consume of Set<Unicode.Scalar>.Index._Variant(v11, v33, 0);
      v13 = v29;
LABEL_19:
      v12 = v28;
    }

    ++v14;
    v11 = v15;
    if (v14 == v30)
    {
      return v8;
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
  __break(1u);
  return result;
}

uint64_t finish() in Accumulator #1 in Compiler.ByteCodeGen.coalescingCustomCharacterClassMembers(_:)(void *a1)
{
  v4 = type metadata accessor for DSLTree.CustomCharacterClass.Member(0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = MEMORY[0x1EEE9AC00](v4);
  v8 = MEMORY[0x1EEE9AC00](v7);
  v10 = (&v73 - v9);
  result = MEMORY[0x1EEE9AC00](v8);
  v81 = (&v73 - v13);
  v14 = a1[2];
  v15 = v14 - 1;
  if (v14 == 1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy17_StringProcessing7DSLTreeV20CustomCharacterClassV6MemberOGMd, &_ss23_ContiguousArrayStorageCy17_StringProcessing7DSLTreeV20CustomCharacterClassV6MemberOGMR);
    v53 = *(v5 + 72);
    v54 = (*(v5 + 80) + 32) & ~*(v5 + 80);
    v18 = swift_allocObject();
    *(v18 + 16) = xmmword_18E5ED040;
    v55 = (v18 + v54);
    v56 = a1[5];
    *v55 = a1[4];
    v55[1] = v56;
    swift_storeEnumTagMultiPayload();

    return v18;
  }

  v77 = a1 + 2;
  v80 = v4;
  v74 = v12;
  if (!v14)
  {
LABEL_48:
    __break(1u);
    return result;
  }

  v75 = v14;

  v16 = 0;
  v76 = a1;
  v17 = a1 + 7;
  v18 = MEMORY[0x1E69E7CC0];
  v78 = v15;
  v79 = v10;
  v82 = v5;
  do
  {
    if (v15 == v16)
    {
      __break(1u);
LABEL_42:
      __break(1u);
LABEL_43:
      __break(1u);
LABEL_44:
      __break(1u);
LABEL_45:
      __break(1u);
LABEL_46:
      __break(1u);
LABEL_47:
      v18 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v18 + 16) + 1, 1, v18, &_ss23_ContiguousArrayStorageCy17_StringProcessing7DSLTreeV20CustomCharacterClassV6MemberOGMd, &_ss23_ContiguousArrayStorageCy17_StringProcessing7DSLTreeV20CustomCharacterClassV6MemberOGMR, type metadata accessor for DSLTree.CustomCharacterClass.Member);
      goto LABEL_37;
    }

    v84 = v18;
    v2 = *(v17 - 3);
    v18 = *(v17 - 2);
    v19 = *v17;
    v83 = *(v17 - 1);

    if (v16)
    {
      v20 = specialized Collection.dropFirst(_:)(1uLL, v2, v18, MEMORY[0x1E69E60F0], MEMORY[0x1E69E61F0]);
      v1 = v21;
      if (__OFSUB__(Substring.distance(from:to:)(), 1))
      {
        goto LABEL_43;
      }

      v22 = Substring.index(_:offsetBy:limitedBy:)();
      if (v23)
      {
        v24 = v1;
      }

      else
      {
        v24 = v22;
      }

      if (v24 >> 14 < v20 >> 14)
      {
        goto LABEL_44;
      }

      v25 = Substring.subscript.getter();
      v27 = v26;
      v29 = v28;
      v31 = v30;
    }

    else
    {
      v25 = specialized Collection.dropLast(_:)(1, v2, v18, MEMORY[0x1E69E60E8], MEMORY[0x1E69E60F0], MEMORY[0x1E69E61F0]);
      v27 = v32;
      v29 = v33;
      v31 = v34;
    }

    if ((v25 ^ v27) >= 0x4000)
    {
      v36 = MEMORY[0x193ACE800](v25, v27, v29, v31);
      v1 = v80;
      v37 = v81;
      *v81 = v36;
      v37[1] = v38;
      swift_storeEnumTagMultiPayload();
      v35 = v84;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v35 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v35[2] + 1, 1, v35, &_ss23_ContiguousArrayStorageCy17_StringProcessing7DSLTreeV20CustomCharacterClassV6MemberOGMd, &_ss23_ContiguousArrayStorageCy17_StringProcessing7DSLTreeV20CustomCharacterClassV6MemberOGMR, type metadata accessor for DSLTree.CustomCharacterClass.Member);
      }

      v40 = v35[2];
      v39 = v35[3];
      if (v40 >= v39 >> 1)
      {
        v35 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(v39 > 1, v40 + 1, 1, v35, &_ss23_ContiguousArrayStorageCy17_StringProcessing7DSLTreeV20CustomCharacterClassV6MemberOGMd, &_ss23_ContiguousArrayStorageCy17_StringProcessing7DSLTreeV20CustomCharacterClassV6MemberOGMR, type metadata accessor for DSLTree.CustomCharacterClass.Member);
      }

      v35[2] = v40 + 1;
      outlined init with take of DSLTree.QuantificationKind(v81, v35 + ((*(v82 + 80) + 32) & ~*(v82 + 80)) + *(v82 + 72) * v40, type metadata accessor for DSLTree.CustomCharacterClass.Member);
      if ((v18 & 0x2000000000000000) != 0)
      {
LABEL_15:
        if ((v18 & 0xF00000000000000) == 0)
        {
          goto LABEL_45;
        }

        goto LABEL_23;
      }
    }

    else
    {
      v1 = v80;
      v35 = v84;
      if ((v18 & 0x2000000000000000) != 0)
      {
        goto LABEL_15;
      }
    }

    if ((v2 & 0xFFFFFFFFFFFFLL) == 0)
    {
      goto LABEL_46;
    }

LABEL_23:
    String.index(before:)();
    v41 = String.subscript.getter();
    v42 = v79;
    *v79 = v41;
    *(v42 + 8) = v43;
    type metadata accessor for DSLTree.Atom(0);
    swift_storeEnumTagMultiPayload();

    v44 = HIBYTE(v19) & 0xF;
    v18 = v83;
    if ((v19 & 0x2000000000000000) == 0)
    {
      v44 = v83 & 0xFFFFFFFFFFFFLL;
    }

    if (!v44)
    {
      goto LABEL_42;
    }

    v45 = (v42 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s17_StringProcessing7DSLTreeV4AtomO_AEtMd, "4_") + 48));
    v46 = String.subscript.getter();
    v47 = v35;
    v49 = v48;

    *v45 = v46;
    v45[1] = v49;
    v18 = v47;
    swift_storeEnumTagMultiPayload();
    swift_storeEnumTagMultiPayload();
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v18 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v47[2] + 1, 1, v47, &_ss23_ContiguousArrayStorageCy17_StringProcessing7DSLTreeV20CustomCharacterClassV6MemberOGMd, &_ss23_ContiguousArrayStorageCy17_StringProcessing7DSLTreeV20CustomCharacterClassV6MemberOGMR, type metadata accessor for DSLTree.CustomCharacterClass.Member);
    }

    v50 = v82;
    v52 = *(v18 + 16);
    v51 = *(v18 + 24);
    if (v52 >= v51 >> 1)
    {
      v18 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(v51 > 1, v52 + 1, 1, v18, &_ss23_ContiguousArrayStorageCy17_StringProcessing7DSLTreeV20CustomCharacterClassV6MemberOGMd, &_ss23_ContiguousArrayStorageCy17_StringProcessing7DSLTreeV20CustomCharacterClassV6MemberOGMR, type metadata accessor for DSLTree.CustomCharacterClass.Member);
    }

    ++v16;
    *(v18 + 16) = v52 + 1;
    v1 = (*(v50 + 80) + 32) & ~*(v50 + 80);
    v2 = *(v50 + 72);
    outlined init with take of DSLTree.QuantificationKind(v42, v18 + v1 + v2 * v52, type metadata accessor for DSLTree.CustomCharacterClass.Member);
    v17 += 2;
    v15 = v78;
  }

  while (v78 != v16);
  v57 = v18;
  result = swift_unknownObjectRelease();
  if (!v75)
  {
    goto LABEL_48;
  }

  v58 = &v77[2 * v75];
  v59 = *v58;
  v60 = v58[1];

  v61 = specialized Collection.dropFirst(_:)(1uLL, v59, v60, MEMORY[0x1E69E60F0], MEMORY[0x1E69E61F0]);
  v63 = v62;
  v65 = v64;
  v67 = v66;

  if ((v61 ^ v63) < 0x4000)
  {

    return v57;
  }

  v68 = MEMORY[0x193ACE800](v61, v63, v65, v67);
  v70 = v69;

  v17 = v74;
  *v74 = v68;
  v17[1] = v70;
  swift_storeEnumTagMultiPayload();
  v18 = v57;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    goto LABEL_47;
  }

LABEL_37:
  v72 = *(v18 + 16);
  v71 = *(v18 + 24);
  if (v72 >= v71 >> 1)
  {
    v18 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(v71 > 1, v72 + 1, 1, v18, &_ss23_ContiguousArrayStorageCy17_StringProcessing7DSLTreeV20CustomCharacterClassV6MemberOGMd, &_ss23_ContiguousArrayStorageCy17_StringProcessing7DSLTreeV20CustomCharacterClassV6MemberOGMR, type metadata accessor for DSLTree.CustomCharacterClass.Member);
  }

  *(v18 + 16) = v72 + 1;
  outlined init with take of DSLTree.QuantificationKind(v17, v18 + v1 + v2 * v72, type metadata accessor for DSLTree.CustomCharacterClass.Member);
  return v18;
}

BOOL tryAccumulate(_:) in Accumulator #1 in Compiler.ByteCodeGen.coalescingCustomCharacterClassMembers(_:)(unint64_t a1)
{
  v2 = v1;
  v4 = type metadata accessor for DSLTree.Atom(0);
  v5 = *(*(v4 - 8) + 64);
  v6 = MEMORY[0x1EEE9AC00](v4 - 8);
  v8 = &v34 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x1EEE9AC00](v6);
  v11 = &v34 - v10;
  MEMORY[0x1EEE9AC00](v9);
  v13 = &v34 - v12;
  v14 = type metadata accessor for DSLTree.CustomCharacterClass.Member(0);
  v15 = *(*(v14 - 8) + 64);
  MEMORY[0x1EEE9AC00](v14);
  v17 = &v34 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  outlined init with copy of DSLTree._AST.AbsentFunction(a1, v17, type metadata accessor for DSLTree.CustomCharacterClass.Member);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 2)
  {
    if (EnumCaseMultiPayload)
    {
      if (EnumCaseMultiPayload == 1)
      {
        v19 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s17_StringProcessing7DSLTreeV4AtomO_AEtMd, "4_") + 48);
        outlined init with take of DSLTree.QuantificationKind(v17, v11, type metadata accessor for DSLTree.Atom);
        outlined init with take of DSLTree.QuantificationKind(&v17[v19], v8, type metadata accessor for DSLTree.Atom);
        v14 = DSLTree.Atom.literalCharacterValue.getter();
        a1 = v20;
        outlined destroy of MEProgram(v11, type metadata accessor for DSLTree.Atom);
        if (a1)
        {
          v17 = DSLTree.Atom.literalCharacterValue.getter();
          v13 = v21;
          outlined destroy of MEProgram(v8, type metadata accessor for DSLTree.Atom);
          if (v13)
          {
            v8 = *v2;
            v11 = *(*v2 + 2);
            if (swift_isUniquelyReferenced_nonNull_native())
            {
              if (v11)
              {
                goto LABEL_8;
              }

              goto LABEL_42;
            }

LABEL_41:
            v8 = specialized _ArrayBuffer._consumeAndCreateNew()(v8);
            if (v11)
            {
LABEL_8:
              v22 = (v8 + 16);
              if (v11 <= *(v8 + 2))
              {
                MEMORY[0x193ACE8D0](v14, a1);

                a1 = *(v8 + 2);
                v22 = *(v8 + 3);
                v11 = (a1 + 1);
                if (a1 < v22 >> 1)
                {
LABEL_10:
                  *(v8 + 2) = v11;
                  v23 = &v8[16 * a1];
                  *(v23 + 4) = v17;
                  *(v23 + 5) = v13;
                  *v2 = v8;
                  return 1;
                }

LABEL_44:
                v8 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v22 > 1), v11, 1, v8);
                goto LABEL_10;
              }

LABEL_43:
              __break(1u);
              goto LABEL_44;
            }

LABEL_42:
            __break(1u);
            goto LABEL_43;
          }

          return 0;
        }

        v31 = type metadata accessor for DSLTree.Atom;
        v32 = v8;
        goto LABEL_30;
      }

LABEL_18:
      v31 = type metadata accessor for DSLTree.CustomCharacterClass.Member;
      v32 = v17;
LABEL_30:
      outlined destroy of MEProgram(v32, v31);
      return 0;
    }

    outlined init with take of DSLTree.QuantificationKind(v17, v13, type metadata accessor for DSLTree.Atom);
    a1 = DSLTree.Atom.literalCharacterValue.getter();
    v8 = v33;
    outlined destroy of MEProgram(v13, type metadata accessor for DSLTree.Atom);
    if (!v8)
    {
      return 0;
    }

    v17 = *v2;
    v11 = *(*v2 + 2);
    if (swift_isUniquelyReferenced_nonNull_native())
    {
      if (v11)
      {
        goto LABEL_22;
      }

      goto LABEL_39;
    }

LABEL_38:
    v17 = specialized _ArrayBuffer._consumeAndCreateNew()(v17);
    if (v11)
    {
LABEL_22:
      if (v11 <= *(v17 + 2))
      {
        MEMORY[0x193ACE8D0](a1, v8);
LABEL_28:

        *v2 = v17;
        return 1;
      }

LABEL_40:
      __break(1u);
      goto LABEL_41;
    }

LABEL_39:
    __break(1u);
    goto LABEL_40;
  }

  if (EnumCaseMultiPayload == 3)
  {
    v13 = *v17;
    v8 = *(v17 + 1);
    v17 = *v2;
    v11 = *(*v2 + 2);
    if (swift_isUniquelyReferenced_nonNull_native())
    {
      if (!v11)
      {
LABEL_36:
        __break(1u);
LABEL_37:
        __break(1u);
        goto LABEL_38;
      }

LABEL_26:
      if (v11 <= *(v17 + 2))
      {
        MEMORY[0x193ACE8E0](v13, v8);
        goto LABEL_28;
      }

      goto LABEL_37;
    }

LABEL_35:
    v17 = specialized _ArrayBuffer._consumeAndCreateNew()(v17);
    if (!v11)
    {
      goto LABEL_36;
    }

    goto LABEL_26;
  }

  if (EnumCaseMultiPayload != 4)
  {
    goto LABEL_18;
  }

  outlined destroy of MEProgram(v17, type metadata accessor for DSLTree.CustomCharacterClass.Member);
  v25 = *(*v2 + 2);
  if (!v25)
  {
    __break(1u);
    goto LABEL_35;
  }

  v26 = &(*v2)[16 * v25 + 16];
  v28 = *v26;
  v27 = *(v26 + 1);
  v29 = v28 & 0xFFFFFFFFFFFFLL;
  if ((v27 & 0x2000000000000000) != 0)
  {
    v30 = HIBYTE(v27) & 0xF;
  }

  else
  {
    v30 = v29;
  }

  return v30 != 0;
}

void *Compiler.ByteCodeGen.flatteningCustomCharacterClassMembers(_:)(uint64_t a1)
{
  v39 = type metadata accessor for DSLTree.Atom(0);
  v2 = *(*(v39 - 8) + 64);
  MEMORY[0x1EEE9AC00](v39);
  v4 = (&v38 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  v5 = type metadata accessor for DSLTree.CustomCharacterClass.Member(0);
  v6 = *(*(v5 - 8) + 64);
  v7 = MEMORY[0x1EEE9AC00](v5);
  v9 = (&v38 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v7);
  v12 = &v38 - v11;
  v13 = MEMORY[0x1E69E7CD0];
  v45 = MEMORY[0x1E69E7CD0];
  v46 = MEMORY[0x1E69E7CD0];
  v44 = MEMORY[0x1E69E7CC0];
  v14 = *(a1 + 16);
  if (!v14)
  {
    v34 = MEMORY[0x1E69E7CD0];
    goto LABEL_30;
  }

  v15 = 0;
  v40 = (*(v10 + 80) + 32) & ~*(v10 + 80);
  v16 = a1 + v40;
  v17 = *(v10 + 72);
  v18 = MEMORY[0x1E69E7CC0];
  v41 = v5;
  do
  {
    outlined init with copy of DSLTree._AST.AbsentFunction(v16 + v17 * v15, v12, type metadata accessor for DSLTree.CustomCharacterClass.Member);
    outlined init with copy of DSLTree._AST.AbsentFunction(v12, v9, type metadata accessor for DSLTree.CustomCharacterClass.Member);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload == 3)
    {
      outlined destroy of MEProgram(v12, type metadata accessor for DSLTree.CustomCharacterClass.Member);
      v25 = *v9;
      v26 = v9[1];
      v27 = HIBYTE(v26) & 0xF;
      if ((v26 & 0x2000000000000000) == 0)
      {
        v27 = *v9 & 0xFFFFFFFFFFFFLL;
      }

      v43[0] = *v9;
      v43[1] = v26;
      v43[2] = 0;
      v43[3] = v27;
      v28 = String.Iterator.next()();
      if (v28.value._object)
      {
        countAndFlagsBits = v28.value._countAndFlagsBits;
        object = v28.value._object;
        do
        {
          specialized Set._Variant.insert(_:)(&v42, countAndFlagsBits, object);

          v31 = String.Iterator.next()();
          countAndFlagsBits = v31.value._countAndFlagsBits;
          object = v31.value._object;
        }

        while (v31.value._object);
      }

      goto LABEL_4;
    }

    if (EnumCaseMultiPayload)
    {
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v18 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v18[2] + 1, 1, v18, &_ss23_ContiguousArrayStorageCy17_StringProcessing7DSLTreeV20CustomCharacterClassV6MemberOGMd, &_ss23_ContiguousArrayStorageCy17_StringProcessing7DSLTreeV20CustomCharacterClassV6MemberOGMR, type metadata accessor for DSLTree.CustomCharacterClass.Member);
      }

      v33 = v18[2];
      v32 = v18[3];
      if (v33 >= v32 >> 1)
      {
        v18 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(v32 > 1, v33 + 1, 1, v18, &_ss23_ContiguousArrayStorageCy17_StringProcessing7DSLTreeV20CustomCharacterClassV6MemberOGMd, &_ss23_ContiguousArrayStorageCy17_StringProcessing7DSLTreeV20CustomCharacterClassV6MemberOGMR, type metadata accessor for DSLTree.CustomCharacterClass.Member);
      }

      v18[2] = v33 + 1;
      outlined init with take of DSLTree.QuantificationKind(v12, v18 + v40 + v33 * v17, type metadata accessor for DSLTree.CustomCharacterClass.Member);
      v44 = v18;
      v23 = type metadata accessor for DSLTree.CustomCharacterClass.Member;
      v24 = v9;
LABEL_26:
      outlined destroy of MEProgram(v24, v23);
      goto LABEL_5;
    }

    outlined init with take of DSLTree.QuantificationKind(v9, v4, type metadata accessor for DSLTree.Atom);
    v20 = swift_getEnumCaseMultiPayload();
    if (v20 != 1)
    {
      if (!v20)
      {
        outlined destroy of MEProgram(v12, type metadata accessor for DSLTree.CustomCharacterClass.Member);
        specialized Set._Variant.insert(_:)(v43, *v4, v4[1]);
LABEL_4:

        goto LABEL_5;
      }

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v18 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v18[2] + 1, 1, v18, &_ss23_ContiguousArrayStorageCy17_StringProcessing7DSLTreeV20CustomCharacterClassV6MemberOGMd, &_ss23_ContiguousArrayStorageCy17_StringProcessing7DSLTreeV20CustomCharacterClassV6MemberOGMR, type metadata accessor for DSLTree.CustomCharacterClass.Member);
      }

      v22 = v18[2];
      v21 = v18[3];
      if (v22 >= v21 >> 1)
      {
        v18 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(v21 > 1, v22 + 1, 1, v18, &_ss23_ContiguousArrayStorageCy17_StringProcessing7DSLTreeV20CustomCharacterClassV6MemberOGMd, &_ss23_ContiguousArrayStorageCy17_StringProcessing7DSLTreeV20CustomCharacterClassV6MemberOGMR, type metadata accessor for DSLTree.CustomCharacterClass.Member);
      }

      v18[2] = v22 + 1;
      outlined init with take of DSLTree.QuantificationKind(v12, v18 + v40 + v22 * v17, type metadata accessor for DSLTree.CustomCharacterClass.Member);
      v44 = v18;
      v23 = type metadata accessor for DSLTree.Atom;
      v24 = v4;
      goto LABEL_26;
    }

    outlined destroy of MEProgram(v12, type metadata accessor for DSLTree.CustomCharacterClass.Member);
    specialized Set._Variant.insert(_:)(v43, *v4);
LABEL_5:
    ++v15;
  }

  while (v15 != v14);
  v13 = v45;
  v34 = v46;
LABEL_30:
  v35 = _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFShySJG_17_StringProcessing7DSLTreeV20CustomCharacterClassV6MemberOs5NeverOTg505_s17_d46Processing8CompilerC11ByteCodeGenV37flatteningghi51Members33_39AB0CA4F16DF29C6C8E2960922072B7LLySayAA7f8V0hiJ0V6J14OGANFAMSJXEfU_Tf1cn_n(v34);

  specialized Array.append<A>(contentsOf:)(v35);
  v36 = _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFShys7UnicodeO6ScalarVG_17_StringProcessing7DSLTreeV20CustomCharacterClassV6MemberOs5NeverOTg505_s17_f46Processing8CompilerC11ByteCodeGenV37flatteningijk51Members33_39AB0CA4F16DF29C6C8E2960922072B7LLySayAA7h8V0hiJ0V6l9OGANFAMs7d2O6E7VXEfU0_Tf1cn_n(v13);

  specialized Array.append<A>(contentsOf:)(v36);
  return v44;
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

  v3 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(isUniquelyReferenced_nonNull_native, v16, 1, v3, &_ss23_ContiguousArrayStorageCy17_StringProcessing7DSLTreeV20CustomCharacterClassV6MemberOGMd, &_ss23_ContiguousArrayStorageCy17_StringProcessing7DSLTreeV20CustomCharacterClassV6MemberOGMR, type metadata accessor for DSLTree.CustomCharacterClass.Member);
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
  result = type metadata accessor for DSLTree.CustomCharacterClass.Member(0);
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

  result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(result, v11, 1, v3, &_ss23_ContiguousArrayStorageCy12_RegexParser13PrettyPrinterV17_StringProcessingE11NodeToPrintOGMd, &_ss23_ContiguousArrayStorageCy12_RegexParser13PrettyPrinterV17_StringProcessingE11NodeToPrintOGMR);
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

uint64_t Compiler.ByteCodeGen.emitCCCMember(_:)(uint64_t a1)
{
  v3 = v1;
  v5 = type metadata accessor for DSLTree.Atom(0);
  v6 = *(*(v5 - 8) + 64);
  v7 = MEMORY[0x1EEE9AC00](v5);
  v9 = &v136 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v11 = &v136 - v10;
  v12 = type metadata accessor for DSLTree.CustomCharacterClass.Member(0);
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x1EEE9AC00](v12);
  v15 = &v136 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  outlined init with copy of DSLTree._AST.AbsentFunction(a1, v15, type metadata accessor for DSLTree.CustomCharacterClass.Member);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 3)
  {
    if (EnumCaseMultiPayload <= 5)
    {
      if (EnumCaseMultiPayload == 4)
      {
        return outlined destroy of MEProgram(v15, type metadata accessor for DSLTree.CustomCharacterClass.Member);
      }

      v54 = *v15;
      v55 = *(*v15 + 16);
      v25 = *(*v15 + 24);
      v15 = *(*v15 + 32);
      v5 = *(v54 + 40);
      v56 = *(type metadata accessor for Compiler.ByteCodeGen(0) + 20);
      v154 = v3;
      v24 = v3 + v56;
      v3 = *(v3 + v56 + 112);
      if (!__OFADD__(v3, 1))
      {
        LODWORD(v151) = v25;
        LODWORD(v149) = v5;
        *(v24 + 112) = v3 + 1;
        v57 = *v24;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v150 = v15;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          v57 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v57 + 2) + 1, 1, v57, &_ss23_ContiguousArrayStorageCy17_StringProcessing11InstructionVGMd, &_ss23_ContiguousArrayStorageCy17_StringProcessing11InstructionVGMR);
        }

        v60 = *(v57 + 2);
        v59 = *(v57 + 3);
        if (v60 >= v59 >> 1)
        {
          v57 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v59 > 1), v60 + 1, 1, v57, &_ss23_ContiguousArrayStorageCy17_StringProcessing11InstructionVGMd, &_ss23_ContiguousArrayStorageCy17_StringProcessing11InstructionVGMR);
        }

        *(v57 + 2) = v60 + 1;
        *&v57[8 * v60 + 32] = v3 | 0x200000000000000;
        *v24 = v57;
        v152 = v55;
        v153 = v151;
        Compiler.ByteCodeGen.emitCustomCharacterClass(_:)(&v152);
        if (!v2)
        {
          v61 = *v24;
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v61 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v61 + 2) + 1, 1, v61, &_ss23_ContiguousArrayStorageCy17_StringProcessing11InstructionVGMd, &_ss23_ContiguousArrayStorageCy17_StringProcessing11InstructionVGMR);
          }

          v63 = *(v61 + 2);
          v62 = *(v61 + 3);
          if (v63 >= v62 >> 1)
          {
            v61 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v62 > 1), v63 + 1, 1, v61, &_ss23_ContiguousArrayStorageCy17_StringProcessing11InstructionVGMd, &_ss23_ContiguousArrayStorageCy17_StringProcessing11InstructionVGMR);
          }

          *(v61 + 2) = v63 + 1;
          *&v61[8 * v63 + 32] = v3 | 0x300000000000000;
          *v24 = v61;
          v152 = v150;
          v153 = v149;
          Compiler.ByteCodeGen.emitCustomCharacterClass(_:)(&v152);
        }
      }

LABEL_116:
      __break(1u);
      goto LABEL_117;
    }

    if (EnumCaseMultiPayload == 6)
    {
      v23 = *v15;
      v24 = *(*v15 + 16);
      LODWORD(v151) = *(*v15 + 24);
      v25 = *(v23 + 32);
      v26 = *(v23 + 40);
      v27 = *(type metadata accessor for Compiler.ByteCodeGen(0) + 20);
      v154 = v3;
      v15 = (v3 + v27);
      v11 = *(v3 + v27 + 112);
      if (!__OFADD__(v11, 1))
      {
        v3 = v24;
        *(v15 + 14) = v11 + 1;
        v5 = *(v15 + 10);
        v150 = *(v5 + 16);
        v28 = swift_isUniquelyReferenced_nonNull_native();
        LODWORD(v148) = v26;
        v24 = v2;
        if (v28)
        {
LABEL_14:
          v30 = *(v5 + 16);
          v29 = *(v5 + 24);
          v149 = v25;
          if (v30 >= v29 >> 1)
          {
            v5 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v29 > 1), v30 + 1, 1, v5);
          }

          *(v5 + 16) = v30 + 1;
          v31 = v5 + 16 * v30;
          *(v31 + 32) = 0;
          *(v31 + 40) = 1;
          *(v15 + 10) = v5;
          v32 = *v15;
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v32 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v32 + 2) + 1, 1, v32, &_ss23_ContiguousArrayStorageCy17_StringProcessing11InstructionVGMd, &_ss23_ContiguousArrayStorageCy17_StringProcessing11InstructionVGMR);
          }

          v33 = v24;
          v35 = *(v32 + 2);
          v34 = *(v32 + 3);
          if (v35 >= v34 >> 1)
          {
            v32 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v34 > 1), v35 + 1, 1, v32, &_ss23_ContiguousArrayStorageCy17_StringProcessing11InstructionVGMd, &_ss23_ContiguousArrayStorageCy17_StringProcessing11InstructionVGMR);
          }

          *(v32 + 2) = v35 + 1;
          *&v32[8 * v35 + 32] = v11 | 0x200000000000000;
          *v15 = v32;
          v152 = v3;
          v153 = v151;
          v12 = v154;
          Compiler.ByteCodeGen.emitCustomCharacterClass(_:)(&v152);
          if (v33)
          {
          }

          v3 = v150;
          MEProgram.Builder.buildSave(_:)(v150, 0x1100000000000000);
          v36 = *v15;
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v36 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v36 + 2) + 1, 1, v36, &_ss23_ContiguousArrayStorageCy17_StringProcessing11InstructionVGMd, &_ss23_ContiguousArrayStorageCy17_StringProcessing11InstructionVGMR);
          }

          v38 = *(v36 + 2);
          v37 = *(v36 + 3);
          if (v38 >= v37 >> 1)
          {
            v36 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v37 > 1), v38 + 1, 1, v36, &_ss23_ContiguousArrayStorageCy17_StringProcessing11InstructionVGMd, &_ss23_ContiguousArrayStorageCy17_StringProcessing11InstructionVGMR);
          }

          *(v36 + 2) = v38 + 1;
          *&v36[8 * v38 + 32] = v11 | 0x300000000000000;
          *v15 = v36;
          v152 = v149;
          v153 = v148;
          Compiler.ByteCodeGen.emitCustomCharacterClass(_:)(&v152);
          v5 = *v15;
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            goto LABEL_128;
          }

          while (1)
          {
            v40 = *(v5 + 16);
            v39 = *(v5 + 24);
            v41 = v40 + 1;
            if (v40 >= v39 >> 1)
            {
              v5 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v39 > 1), v40 + 1, 1, v5, &_ss23_ContiguousArrayStorageCy17_StringProcessing11InstructionVGMd, &_ss23_ContiguousArrayStorageCy17_StringProcessing11InstructionVGMR);
            }

            *(v5 + 16) = v41;
            *(v5 + 8 * v40 + 32) = 0x1300000000000000;
            *v15 = v5;
            v42 = *(v5 + 24);
            v43 = v40 + 2;
            if ((v40 + 2) > (v42 >> 1))
            {
              v5 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v42 > 1), v40 + 2, 1, v5, &_ss23_ContiguousArrayStorageCy17_StringProcessing11InstructionVGMd, &_ss23_ContiguousArrayStorageCy17_StringProcessing11InstructionVGMR);
            }

            *(v5 + 16) = v43;
            *(v5 + 8 * v41 + 32) = 0x1D00000000000000;
            *v15 = v5;
            v44 = *(v15 + 10);
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v44 = specialized _ArrayBuffer._consumeAndCreateNew()(v44);
            }

            if (v3 < *(v44 + 2))
            {
              v45 = &v44[16 * v3];
              *(v45 + 4) = v43;
              v45[40] = 0;

              *(v15 + 10) = v44;
              return result;
            }

            __break(1u);
LABEL_130:
            v44 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v44 + 2) + 1, 1, v44, &_ss23_ContiguousArrayStorageCy17_StringProcessing11InstructionVGMd, &_ss23_ContiguousArrayStorageCy17_StringProcessing11InstructionVGMR);
LABEL_93:
            v102 = v141;
            v104 = *(v44 + 2);
            v103 = *(v44 + 3);
            v105 = v104 + 1;
            if (v104 >= v103 >> 1)
            {
              v44 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v103 > 1), v104 + 1, 1, v44, &_ss23_ContiguousArrayStorageCy17_StringProcessing11InstructionVGMd, &_ss23_ContiguousArrayStorageCy17_StringProcessing11InstructionVGMR);
            }

            *(v44 + 2) = v105;
            *&v44[8 * v104 + 32] = 0x1300000000000000;
            *v15 = v44;
            v106 = *(v15 + 10);
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v106 = specialized _ArrayBuffer._consumeAndCreateNew()(v106);
            }

            v107 = v142;
            v108 = *(v106 + 16);
            if (v147 >= v108)
            {
              __break(1u);
            }

            else
            {
              v109 = v106 + v140;
              *(v109 + 32) = v105;
              *(v109 + 40) = 0;
              *(v15 + 10) = v106;
              v12 = v102 | 0x200000000000000;
              v106 = *(v44 + 2);
              v108 = *(v44 + 3);
              v105 = v106 + 1;
              if (v106 < v108 >> 1)
              {
                goto LABEL_99;
              }
            }

            v44 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v108 > 1), v105, 1, v44, &_ss23_ContiguousArrayStorageCy17_StringProcessing11InstructionVGMd, &_ss23_ContiguousArrayStorageCy17_StringProcessing11InstructionVGMR);
            v107 = v142;
LABEL_99:
            *(v44 + 2) = v105;
            *&v44[8 * v106 + 32] = v12;
            *v15 = v44;
            v12 = v146 | 0x300000000000000;
            v110 = *(v44 + 3);
            v111 = v106 + 2;
            if (v111 > (v110 >> 1))
            {
              v44 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v110 > 1), v111, 1, v44, &_ss23_ContiguousArrayStorageCy17_StringProcessing11InstructionVGMd, &_ss23_ContiguousArrayStorageCy17_StringProcessing11InstructionVGMR);
              v107 = v142;
            }

            *(v44 + 2) = v111;
            *&v44[8 * v105 + 32] = v12;
            *v15 = v44;
            MEProgram.Builder.buildCondBranch(to:ifSamePositionAs:)(v107, v102);
            MEProgram.Builder.buildCondBranch(to:ifSamePositionAs:)(v43, v151);
            MEProgram.Builder.buildSave(_:)(v145, 0x400000000000000);
            v112 = *v15;
            v113 = *(*v15 + 16);
            v114 = *(v15 + 10);
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v114 = specialized _ArrayBuffer._consumeAndCreateNew()(v114);
            }

            if (v43 >= *(v114 + 2))
            {
              __break(1u);
            }

            else
            {
              v115 = &v114[v139];
              *(v115 + 4) = v113;
              v115[40] = 0;
              *(v15 + 10) = v114;
              v111 = v102 | 0x300000000000000;
              if (swift_isUniquelyReferenced_nonNull_native())
              {
                goto LABEL_105;
              }
            }

            v112 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v112 + 2) + 1, 1, v112, &_ss23_ContiguousArrayStorageCy17_StringProcessing11InstructionVGMd, &_ss23_ContiguousArrayStorageCy17_StringProcessing11InstructionVGMR);
LABEL_105:
            v116 = v145;
            v118 = *(v112 + 2);
            v117 = *(v112 + 3);
            if (v118 >= v117 >> 1)
            {
              v112 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v117 > 1), v118 + 1, 1, v112, &_ss23_ContiguousArrayStorageCy17_StringProcessing11InstructionVGMd, &_ss23_ContiguousArrayStorageCy17_StringProcessing11InstructionVGMR);
              v116 = v145;
            }

            *(v112 + 2) = v118 + 1;
            *&v112[8 * v118 + 32] = v111;
            *v15 = v112;
            MEProgram.Builder.buildSave(_:)(v116, 0x400000000000000);
            v119 = *v15;
            v120 = *(*v15 + 16);
            v5 = *(v15 + 10);
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v5 = specialized _ArrayBuffer._consumeAndCreateNew()(v5);
            }

            if (v142 >= *(v5 + 16))
            {
              __break(1u);
            }

            else
            {
              v43 = v5 + 32;
              v121 = v5 + 32 + v138;
              *v121 = v120;
              *(v121 + 8) = 0;
              *(v15 + 10) = v5;
              if (swift_isUniquelyReferenced_nonNull_native())
              {
                goto LABEL_111;
              }
            }

            v119 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v119 + 2) + 1, 1, v119, &_ss23_ContiguousArrayStorageCy17_StringProcessing11InstructionVGMd, &_ss23_ContiguousArrayStorageCy17_StringProcessing11InstructionVGMR);
LABEL_111:
            v123 = *(v119 + 2);
            v122 = *(v119 + 3);
            v124 = v123 + 1;
            if (v123 >= v122 >> 1)
            {
              v119 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v122 > 1), v123 + 1, 1, v119, &_ss23_ContiguousArrayStorageCy17_StringProcessing11InstructionVGMd, &_ss23_ContiguousArrayStorageCy17_StringProcessing11InstructionVGMR);
            }

            *(v119 + 2) = v124;
            *&v119[8 * v123 + 32] = 0x1D00000000000000;
            *v15 = v119;
            v19 = *(v5 + 16);
            v125 = v145;
            if (v145 < v19)
            {
              v126 = v43 + v137;
              *v126 = v124;
              *(v126 + 8) = 0;

              *(v15 + 10) = v5;
              return result;
            }

            __break(1u);
LABEL_138:
            v132 = v19 >> 12;
            v133 = (v125 | (v19 >> 6) & 0x3F) << 8;
            v134 = WORD1(v19);
            v100 = (((v133 | (v19 >> 12) & 0x3F) << 8) | (v19 >> 18)) - 2122219023;
            v135 = v132 + v133 + 8487393;
            if (!v134)
            {
              v100 = v135;
            }

LABEL_84:
            v152 = (v100 + 0xFEFEFEFEFEFEFFLL) & ~(-1 << (8 * (4 - (__clz(v100) >> 3))));
            v21 = static String._uncheckedFromUTF8(_:)();
            v19 = *v3;
            v20 = *(*v3 + 16);
            if (v20)
            {
              v22 = v101;
              goto LABEL_86;
            }

            __break(1u);
LABEL_128:
            v5 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v5 + 16) + 1, 1, v5, &_ss23_ContiguousArrayStorageCy17_StringProcessing11InstructionVGMd, &_ss23_ContiguousArrayStorageCy17_StringProcessing11InstructionVGMR);
          }
        }

LABEL_118:
        v5 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, (v150 + 1), 1, v5);
        goto LABEL_14;
      }

      __break(1u);
      goto LABEL_116;
    }

    v25 = *v15;
    v11 = *(*v15 + 16);
    LODWORD(v150) = *(*v15 + 24);
    v24 = *(v25 + 32);
    v5 = *(v25 + 40);
    v15 = (v3 + *(type metadata accessor for Compiler.ByteCodeGen(0) + 20));
    v64 = *(v15 + 14);
    v151 = v64;
    v65 = v64 + 1;
    if (__OFADD__(v64, 1))
    {
LABEL_117:
      __break(1u);
      goto LABEL_118;
    }

    *(v15 + 14) = v65;
    v66 = v64 + 2;
    if (__OFADD__(v65, 1))
    {
      __break(1u);
    }

    else
    {
      v149 = v11;
      v144 = v5;
      *(v15 + 14) = v66;
      if (!__OFADD__(v66, 1))
      {
        *(v15 + 14) = v64 + 3;
        v5 = *(v15 + 10);
        v11 = *(v5 + 16);
        v67 = swift_isUniquelyReferenced_nonNull_native();
        v143 = v24;
        if (v67)
        {
          goto LABEL_55;
        }

        goto LABEL_121;
      }
    }

    __break(1u);
LABEL_121:
    v5 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v11 + 1, 1, v5);
LABEL_55:
    v69 = *(v5 + 16);
    v68 = *(v5 + 24);
    v70 = v69 + 1;
    v147 = v69 + 1;
    v148 = v25;
    v146 = v65;
    if (v69 >= v68 >> 1)
    {
      v127 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v68 > 1), v147, 1, v5);
      v70 = v147;
      v5 = v127;
    }

    *(v5 + 16) = v70;
    v71 = v5 + 16 * v69;
    *(v71 + 32) = 0;
    *(v71 + 40) = 1;
    *(v15 + 10) = v5;
    v72 = *(v5 + 24);
    v43 = v69 + 2;
    if ((v69 + 2) > (v72 >> 1))
    {
      v128 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v72 > 1), v69 + 2, 1, v5);
      v70 = v147;
      v5 = v128;
    }

    *(v5 + 16) = v43;
    v140 = 16 * v70;
    v73 = v5 + 16 * v70;
    *(v73 + 32) = 0;
    *(v73 + 40) = 1;
    *(v15 + 10) = v5;
    v74 = *(v5 + 24);
    v75 = v69 + 3;
    v142 = v69 + 3;
    if ((v69 + 3) > (v74 >> 1))
    {
      v129 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v74 > 1), v69 + 3, 1, v5);
      v75 = v142;
      v5 = v129;
    }

    *(v5 + 16) = v75;
    v139 = 16 * v43;
    v76 = v5 + 16 * v43;
    *(v76 + 32) = 0;
    *(v76 + 40) = 1;
    *(v15 + 10) = v5;
    v77 = *(v5 + 24);
    v78 = v69 + 4;
    v145 = v69 + 4;
    if ((v69 + 4) > (v77 >> 1))
    {
      v130 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v77 > 1), v78, 1, v5);
      v75 = v142;
      v78 = v145;
      v5 = v130;
    }

    v141 = v66;
    *(v5 + 16) = v78;
    v138 = 16 * v75;
    v79 = v5 + 16 * v75;
    *(v79 + 32) = 0;
    *(v79 + 40) = 1;
    *(v15 + 10) = v5;
    v80 = *(v5 + 24);
    v81 = v69 + 5;
    v82 = v3;
    if (v81 > (v80 >> 1))
    {
      v131 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v80 > 1), v81, 1, v5);
      v78 = v145;
      v5 = v131;
    }

    *(v5 + 16) = v81;
    v137 = 16 * v78;
    v83 = v5 + 16 * v78;
    *(v83 + 32) = 0;
    *(v83 + 40) = 1;
    *(v15 + 10) = v5;
    v84 = v151 | 0x200000000000000;
    v85 = *v15;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v85 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v85 + 2) + 1, 1, v85, &_ss23_ContiguousArrayStorageCy17_StringProcessing11InstructionVGMd, &_ss23_ContiguousArrayStorageCy17_StringProcessing11InstructionVGMR);
    }

    v87 = *(v85 + 2);
    v86 = *(v85 + 3);
    if (v87 >= v86 >> 1)
    {
      v85 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v86 > 1), v87 + 1, 1, v85, &_ss23_ContiguousArrayStorageCy17_StringProcessing11InstructionVGMd, &_ss23_ContiguousArrayStorageCy17_StringProcessing11InstructionVGMR);
    }

    *(v85 + 2) = v87 + 1;
    *&v85[8 * v87 + 32] = v84;
    *v15 = v85;
    MEProgram.Builder.buildSave(_:)(v11, 0x1100000000000000);
    v152 = v149;
    v153 = v150;
    v88 = v82;
    Compiler.ByteCodeGen.emitCustomCharacterClass(_:)(&v152);
    if (v2)
    {
    }

    v89 = *v15;
    v90 = 0;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v89 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v89 + 2) + 1, 1, v89, &_ss23_ContiguousArrayStorageCy17_StringProcessing11InstructionVGMd, &_ss23_ContiguousArrayStorageCy17_StringProcessing11InstructionVGMR);
    }

    v92 = *(v89 + 2);
    v91 = *(v89 + 3);
    v93 = v92 + 1;
    v154 = v88;
    if (v92 >= v91 >> 1)
    {
      v89 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v91 > 1), v92 + 1, 1, v89, &_ss23_ContiguousArrayStorageCy17_StringProcessing11InstructionVGMd, &_ss23_ContiguousArrayStorageCy17_StringProcessing11InstructionVGMR);
    }

    *(v89 + 2) = v93;
    *&v89[8 * v92 + 32] = 0x1300000000000000;
    *v15 = v89;
    v94 = *(v15 + 10);
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v94 = specialized _ArrayBuffer._consumeAndCreateNew()(v94);
    }

    v95 = v147;
    v96 = *(v94 + 2);
    if (v11 >= v96)
    {
      __break(1u);
    }

    else
    {
      v97 = &v94[16 * v11];
      *(v97 + 4) = v93;
      v97[40] = 0;
      *(v15 + 10) = v94;
      v93 = v146 | 0x200000000000000;
      v90 = *(v89 + 2);
      v96 = *(v89 + 3);
      v11 = v90 + 1;
      if (v90 < v96 >> 1)
      {
        goto LABEL_78;
      }
    }

    v89 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v96 > 1), v11, 1, v89, &_ss23_ContiguousArrayStorageCy17_StringProcessing11InstructionVGMd, &_ss23_ContiguousArrayStorageCy17_StringProcessing11InstructionVGMR);
    v95 = v147;
LABEL_78:
    *(v89 + 2) = v11;
    *&v89[8 * v90 + 32] = v93;
    *v15 = v89;
    v98 = v151 | 0x300000000000000;
    v99 = *(v89 + 3);
    v12 = v90 + 2;
    if ((v90 + 2) > (v99 >> 1))
    {
      v89 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v99 > 1), v90 + 2, 1, v89, &_ss23_ContiguousArrayStorageCy17_StringProcessing11InstructionVGMd, &_ss23_ContiguousArrayStorageCy17_StringProcessing11InstructionVGMR);
      v95 = v147;
    }

    *(v89 + 2) = v12;
    *&v89[8 * v11 + 32] = v98;
    *v15 = v89;
    MEProgram.Builder.buildSave(_:)(v95, 0x1100000000000000);
    v152 = v143;
    v153 = v144;
    Compiler.ByteCodeGen.emitCustomCharacterClass(_:)(&v152);
    v44 = *v15;
    v3 = 0;
    if (swift_isUniquelyReferenced_nonNull_native())
    {
      goto LABEL_93;
    }

    goto LABEL_130;
  }

  if (EnumCaseMultiPayload <= 1)
  {
    if (EnumCaseMultiPayload)
    {
      v47 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s17_StringProcessing7DSLTreeV4AtomO_AEtMd, "4_") + 48);
      v48 = DSLTree.CustomCharacterClass.Member.generateConsumer(_:)(*v3);
      if (!v2)
      {
        v50 = v49;
        v51 = v48;
        v52 = v3 + *(type metadata accessor for Compiler.ByteCodeGen(0) + 20);
        MEProgram.Builder.buildConsume(by:)(v51, v50);
      }

      outlined destroy of MEProgram(&v15[v47], type metadata accessor for DSLTree.Atom);
      v53 = v15;
    }

    else
    {
      outlined init with take of DSLTree.QuantificationKind(v15, v11, type metadata accessor for DSLTree.Atom);
      outlined init with copy of DSLTree._AST.AbsentFunction(v11, v9, type metadata accessor for DSLTree.Atom);
      v18 = swift_getEnumCaseMultiPayload();
      if (v18 == 1)
      {
        outlined destroy of MEProgram(v11, type metadata accessor for DSLTree.Atom);
        LODWORD(v19) = *v9;
        if (*v9 <= 0x7Fu)
        {
          v100 = v19 + 1;
          goto LABEL_84;
        }

        goto LABEL_125;
      }

      if (!v18)
      {
        outlined destroy of MEProgram(v11, type metadata accessor for DSLTree.Atom);
        v19 = *v3;
        v20 = *(*v3 + 16);
        if (v20)
        {
          v21 = *v9;
          v22 = *(v9 + 1);
LABEL_86:
          if ((*(v19 + 4 * v20 + 28) & 0x10000) != 0)
          {
            Compiler.ByteCodeGen.emitCharacter(_:)(v21, v22);
          }

          else
          {
            specialized Compiler.ByteCodeGen.emitAlternationGen<A>(_:withBacktracking:_:)(v21, v22, v3);
          }
        }

        __break(1u);
LABEL_125:
        v125 = (v19 & 0x3F) << 8;
        if (v19 >= 0x800)
        {
          goto LABEL_138;
        }

        v100 = (v19 >> 6) + v125 + 33217;
        goto LABEL_84;
      }

      Compiler.ByteCodeGen.emitAtom(_:)(v11);
      outlined destroy of MEProgram(v11, type metadata accessor for DSLTree.Atom);
      v53 = v9;
    }

    return outlined destroy of MEProgram(v53, type metadata accessor for DSLTree.Atom);
  }

  if (EnumCaseMultiPayload == 2)
  {
    v46 = v15[8];
    v152 = *v15;
    v153 = v46;
    Compiler.ByteCodeGen.emitCustomCharacterClass(_:)(&v152);
  }

  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

uint64_t Compiler.ByteCodeGen.emitCustomCharacterClass(_:)(uint64_t a1)
{
  v5 = type metadata accessor for DSLTree.CustomCharacterClass.Member(0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  v8 = MEMORY[0x1EEE9AC00](v5);
  v9 = MEMORY[0x1EEE9AC00](v8);
  v10 = MEMORY[0x1EEE9AC00](v9);
  v11 = MEMORY[0x1EEE9AC00](v10);
  v13 = &v140 - v12;
  v14 = MEMORY[0x1EEE9AC00](v11);
  v16 = &v140 - v15;
  v17 = MEMORY[0x1EEE9AC00](v14);
  v152 = &v140 - v18;
  v19 = MEMORY[0x1EEE9AC00](v17);
  v20 = MEMORY[0x1EEE9AC00](v19);
  v150 = &v140 - v21;
  v22 = MEMORY[0x1EEE9AC00](v20);
  v23 = MEMORY[0x1EEE9AC00](v22);
  v151 = &v140 - v24;
  v25 = MEMORY[0x1EEE9AC00](v23);
  v26 = MEMORY[0x1EEE9AC00](v25);
  v155 = &v140 - v27;
  v28 = MEMORY[0x1EEE9AC00](v26);
  v178 = (&v140 - v29);
  v30 = MEMORY[0x1EEE9AC00](v28);
  v177 = &v140 - v37;
  v38 = *v1;
  v39 = *(*v1 + 16);
  if (!v39)
  {
    goto LABEL_148;
  }

  v165 = v16;
  v166 = v30;
  v145 = v35;
  v142 = v34;
  v40 = *a1;
  v41 = *(a1 + 8);
  a1 = v38 + 32;
  v42 = *(v38 + 32 + 4 * v39 - 2);
  v147 = v1;
  v169 = v31;
  v170 = v32;
  v173 = v33;
  v43 = v36;
  if (v42)
  {
    v40 = Compiler.ByteCodeGen.coalescingCustomCharacterClassMembers(_:)(v40);
  }

  else
  {
  }

  v44 = Compiler.ByteCodeGen.flatteningCustomCharacterClassMembers(_:)(v40);

  v144 = v44;
  v181 = v44;
  v143 = v41;
  v182 = v41;
  v1 = &v181;
  v45 = DSLTree.CustomCharacterClass.asAsciiBitset(_:)(v38);
  if (v45 != 2)
  {
    v48 = v45;
    v49 = v46;
    v1 = v47;
    v50 = type metadata accessor for Compiler.ByteCodeGen(0);
    if ((*(v147 + *(v50 + 28)) & 1) == 0)
    {
      v51 = v50;

      v52 = *(v38 + 16);
      if (v52)
      {
        v53 = *(a1 + 4 * v52 - 4);
        v38 = v147 + *(v51 + 20);
        v54 = *(v38 + 48);
        v13 = *(v54 + 2);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        if ((v53 & 0x10000) != 0)
        {
          if ((isUniquelyReferenced_nonNull_native & 1) == 0)
          {
            v54 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v13 + 1, 1, v54);
          }

          v136 = *(v54 + 2);
          v135 = *(v54 + 3);
          if (v136 >= v135 >> 1)
          {
            v54 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v135 > 1), v136 + 1, 1, v54);
          }

          *(v54 + 2) = v136 + 1;
          v137 = &v54[24 * v136];
          v137[32] = v48 & 1;
          *(v137 + 5) = v49;
          *(v137 + 6) = v1;
          *(v38 + 48) = v54;
          v1 = 0xB00000000000000;
        }

        else
        {
          if ((isUniquelyReferenced_nonNull_native & 1) == 0)
          {
            v54 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v13 + 1, 1, v54);
          }

          v57 = *(v54 + 2);
          v56 = *(v54 + 3);
          if (v57 >= v56 >> 1)
          {
            v54 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v56 > 1), v57 + 1, 1, v54);
          }

          *(v54 + 2) = v57 + 1;
          v58 = &v54[24 * v57];
          v58[32] = v48 & 1;
          *(v58 + 5) = v49;
          *(v58 + 6) = v1;
          *(v38 + 48) = v54;
          v1 = 0xB00000000000001;
        }

        a1 = *v38;
        result = swift_isUniquelyReferenced_nonNull_native();
        if (result)
        {
          goto LABEL_130;
        }

        goto LABEL_152;
      }

LABEL_151:
      __break(1u);
LABEL_152:
      result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(a1 + 16) + 1, 1, a1, &_ss23_ContiguousArrayStorageCy17_StringProcessing11InstructionVGMd, &_ss23_ContiguousArrayStorageCy17_StringProcessing11InstructionVGMR);
      a1 = result;
LABEL_130:
      v139 = *(a1 + 16);
      v138 = *(a1 + 24);
      if (v139 >= v138 >> 1)
      {
        result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v138 > 1), v139 + 1, 1, a1, &_ss23_ContiguousArrayStorageCy17_StringProcessing11InstructionVGMd, &_ss23_ContiguousArrayStorageCy17_StringProcessing11InstructionVGMR);
        a1 = result;
      }

      *(a1 + 16) = v139 + 1;
      *(a1 + 8 * v139 + 32) = v1 | (v13 << 16);
      *v38 = a1;
      return result;
    }
  }

  v59 = type metadata accessor for Compiler.ByteCodeGen(0);
  v60 = *(v147 + *(v59 + 28));
  v141 = v59;
  if (v60)
  {
  }

  else
  {
    v179 = v144;
    v180 = v143;
    v1 = &v179;
    DSLTree.CustomCharacterClass.coalescingASCIIMembers(_:)(v38);
    v61 = v181;
    v143 = v182;
  }

  v2 = v165;
  a1 = v166;
  v62 = v43;
  v63 = *(v61 + 16);
  v148 = v6;
  v174 = v63;
  if (v63)
  {
    v64 = 0;
    v3 = MEMORY[0x1E69E7CC0];
    v146 = v43;
    v172 = v61;
    while (1)
    {
      if (v64 >= *(v61 + 16))
      {
        goto LABEL_141;
      }

      v183 = (*(v6 + 80) + 32) & ~*(v6 + 80);
      v65 = *(v6 + 72);
      v176 = v64;
      v1 = type metadata accessor for DSLTree.CustomCharacterClass.Member;
      v66 = v177;
      outlined init with copy of DSLTree._AST.AbsentFunction(v61 + v183 + v65 * v64, v177, type metadata accessor for DSLTree.CustomCharacterClass.Member);
      outlined init with copy of DSLTree._AST.AbsentFunction(v66, v178, type metadata accessor for DSLTree.CustomCharacterClass.Member);
      EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
      if (EnumCaseMultiPayload == 4)
      {
        v1 = type metadata accessor for DSLTree.CustomCharacterClass.Member;
        outlined destroy of MEProgram(v177, type metadata accessor for DSLTree.CustomCharacterClass.Member);
        outlined destroy of MEProgram(v178, type metadata accessor for DSLTree.CustomCharacterClass.Member);
        goto LABEL_20;
      }

      if (EnumCaseMultiPayload != 2)
      {
        v86 = v178;
LABEL_63:
        outlined destroy of MEProgram(v86, type metadata accessor for DSLTree.CustomCharacterClass.Member);
        goto LABEL_65;
      }

      v1 = *v178;
      v160 = *(*v178 + 16);
      if (!v160)
      {
LABEL_61:
        outlined destroy of MEProgram(v177, type metadata accessor for DSLTree.CustomCharacterClass.Member);

        goto LABEL_20;
      }

      v68 = 0;
      v167 = v1;
      v168 = v1 + v183;
      while (1)
      {
        if (v68 >= *(v1 + 16))
        {
          goto LABEL_142;
        }

        v175 = v68;
        v69 = v155;
        outlined init with copy of DSLTree._AST.AbsentFunction(v168 + v68 * v65, v155, type metadata accessor for DSLTree.CustomCharacterClass.Member);
        v70 = v69;
        v1 = v173;
        outlined init with take of DSLTree.QuantificationKind(v70, v173, type metadata accessor for DSLTree.CustomCharacterClass.Member);
        v71 = swift_getEnumCaseMultiPayload();
        if (v71 == 4)
        {
          outlined destroy of MEProgram(v1, type metadata accessor for DSLTree.CustomCharacterClass.Member);
          goto LABEL_60;
        }

        if (v71 != 2)
        {

          v86 = v173;
          goto LABEL_63;
        }

        v72 = *v173;
        v156 = *(*v173 + 16);
        if (v156)
        {
          break;
        }

LABEL_58:

LABEL_60:
        v68 = v175 + 1;
        v1 = v167;
        if (v175 + 1 == v160)
        {
          goto LABEL_61;
        }
      }

      v73 = 0;
      v162 = v72 + v183;
      v161 = v72;
      while (1)
      {
        if (v73 >= *(v72 + 16))
        {
          goto LABEL_144;
        }

        v171 = v73;
        v74 = v151;
        outlined init with copy of DSLTree._AST.AbsentFunction(v162 + v73 * v65, v151, type metadata accessor for DSLTree.CustomCharacterClass.Member);
        v75 = v74;
        v1 = v170;
        outlined init with take of DSLTree.QuantificationKind(v75, v170, type metadata accessor for DSLTree.CustomCharacterClass.Member);
        v76 = swift_getEnumCaseMultiPayload();
        if (v76 == 4)
        {
          outlined destroy of MEProgram(v1, type metadata accessor for DSLTree.CustomCharacterClass.Member);
          goto LABEL_57;
        }

        if (v76 != 2)
        {

          v86 = v170;
          goto LABEL_63;
        }

        v77 = *v170;
        v153 = *(*v170 + 16);
        if (v153)
        {
          break;
        }

LABEL_55:

        v62 = v146;
LABEL_57:
        v73 = v171 + 1;
        v72 = v161;
        if (v171 + 1 == v156)
        {
          goto LABEL_58;
        }
      }

      v78 = 0;
      v159 = v77 + v183;
      v158 = v77;
      while (1)
      {
        if (v78 >= *(v77 + 16))
        {
          goto LABEL_145;
        }

        v79 = v150;
        outlined init with copy of DSLTree._AST.AbsentFunction(v159 + v78 * v65, v150, type metadata accessor for DSLTree.CustomCharacterClass.Member);
        v80 = v79;
        v1 = v169;
        outlined init with take of DSLTree.QuantificationKind(v80, v169, type metadata accessor for DSLTree.CustomCharacterClass.Member);
        v81 = swift_getEnumCaseMultiPayload();
        if (v81 != 4)
        {
          break;
        }

        outlined destroy of MEProgram(v1, type metadata accessor for DSLTree.CustomCharacterClass.Member);
LABEL_54:
        ++v78;
        v77 = v158;
        if (v78 == v153)
        {
          goto LABEL_55;
        }
      }

      if (v81 == 2)
      {
        v82 = *v169;
        v157 = *(*v169 + 16);
        if (v157)
        {
          v6 = 0;
          v164 = v82 + v183;
          v154 = v3;
          v163 = v82;
          do
          {
            if (v6 >= *(v82 + 16))
            {
              goto LABEL_143;
            }

            v1 = v152;
            outlined init with copy of DSLTree._AST.AbsentFunction(v164 + v6 * v65, v152, type metadata accessor for DSLTree.CustomCharacterClass.Member);
            outlined init with take of DSLTree.QuantificationKind(v1, v2, type metadata accessor for DSLTree.CustomCharacterClass.Member);
            v83 = swift_getEnumCaseMultiPayload();
            if (v83 == 4)
            {
              outlined destroy of MEProgram(v2, type metadata accessor for DSLTree.CustomCharacterClass.Member);
            }

            else
            {
              if (v83 != 2)
              {

                outlined destroy of MEProgram(v2, type metadata accessor for DSLTree.CustomCharacterClass.Member);
                v6 = v148;
                goto LABEL_64;
              }

              v3 = *v2;
              v84 = *v2 + v183;
              v2 = -*(*v2 + 16);
              a1 = -1;
              while (v2 + a1 != -1)
              {
                if (++a1 >= *(v3 + 16))
                {
                  __break(1u);
LABEL_141:
                  __break(1u);
LABEL_142:
                  __break(1u);
LABEL_143:
                  __break(1u);
LABEL_144:
                  __break(1u);
LABEL_145:
                  __break(1u);
                  goto LABEL_146;
                }

                v85 = v84 + v65;
                outlined init with copy of DSLTree._AST.AbsentFunction(v84, v13, type metadata accessor for DSLTree.CustomCharacterClass.Member);
                v1 = DSLTree.CustomCharacterClass.Member.isOnlyTrivia.getter();
                outlined destroy of MEProgram(v13, type metadata accessor for DSLTree.CustomCharacterClass.Member);
                v84 = v85;
                if ((v1 & 1) == 0)
                {

                  v6 = v148;
                  v3 = v154;
                  goto LABEL_64;
                }
              }

              v3 = v154;
              v2 = v165;
              a1 = v166;
            }

            ++v6;
            v82 = v163;
          }

          while (v6 != v157);
        }

        v6 = v148;
        goto LABEL_54;
      }

      outlined destroy of MEProgram(v169, type metadata accessor for DSLTree.CustomCharacterClass.Member);
LABEL_64:
      v62 = v146;
LABEL_65:
      outlined init with take of DSLTree.QuantificationKind(v177, v62, type metadata accessor for DSLTree.CustomCharacterClass.Member);
      v87 = swift_isUniquelyReferenced_nonNull_native();
      v181 = v3;
      if ((v87 & 1) == 0)
      {
        v1 = &v181;
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v3 + 16) + 1, 1);
        v3 = v181;
      }

      v89 = *(v3 + 16);
      v88 = *(v3 + 24);
      if (v89 >= v88 >> 1)
      {
        v1 = &v181;
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(v88 > 1, v89 + 1, 1);
        v3 = v181;
      }

      *(v3 + 16) = v89 + 1;
      outlined init with take of DSLTree.QuantificationKind(v62, v3 + v183 + v89 * v65, type metadata accessor for DSLTree.CustomCharacterClass.Member);
      v2 = v165;
      a1 = v166;
LABEL_20:
      v64 = v176 + 1;
      v61 = v172;
      if (v176 + 1 == v174)
      {
        goto LABEL_75;
      }
    }
  }

  v3 = MEMORY[0x1E69E7CC0];
LABEL_75:

  if (v143)
  {
    a1 = v147 + *(v141 + 20);
    v1 = *(a1 + 80);
    v2 = *(v1 + 16);
    v90 = swift_isUniquelyReferenced_nonNull_native();
    v176 = v2;
    if ((v90 & 1) == 0)
    {
      goto LABEL_149;
    }

    while (1)
    {
      v92 = *(v1 + 16);
      v91 = *(v1 + 24);
      if (v92 >= v91 >> 1)
      {
        v1 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v91 > 1), v92 + 1, 1, v1);
      }

      *(v1 + 16) = v92 + 1;
      v93 = v1 + 16 * v92;
      *(v93 + 32) = 0;
      *(v93 + 40) = 1;
      *(a1 + 80) = v1;
      v175 = specialized Collection.dropLast(_:)(1uLL, v3);
      v183 = v94;
      v38 = v95;
      v97 = v96 >> 1;

      if (v38 == v97)
      {
        break;
      }

      if (v38 <= v97)
      {
        v117 = v97;
      }

      else
      {
        v117 = v38;
      }

      v178 = v117;
      v2 = v145;
      v154 = v3;
      v177 = v97;
      while (v178 != v38)
      {
        outlined init with copy of DSLTree._AST.AbsentFunction(v183 + *(v6 + 72) * v38, v2, type metadata accessor for DSLTree.CustomCharacterClass.Member);
        v119 = *(v1 + 16);
        v118 = *(v1 + 24);
        if (v119 >= v118 >> 1)
        {
          v1 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v118 > 1), v119 + 1, 1, v1);
        }

        *(v1 + 16) = v119 + 1;
        v120 = v1 + 16 * v119;
        *(v120 + 32) = 0;
        *(v120 + 40) = 1;
        *(a1 + 80) = v1;
        v121 = *a1;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v121 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v121 + 2) + 1, 1, v121, &_ss23_ContiguousArrayStorageCy17_StringProcessing11InstructionVGMd, &_ss23_ContiguousArrayStorageCy17_StringProcessing11InstructionVGMR);
        }

        v123 = *(v121 + 2);
        v122 = *(v121 + 3);
        if (v123 >= v122 >> 1)
        {
          v121 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v122 > 1), v123 + 1, 1, v121, &_ss23_ContiguousArrayStorageCy17_StringProcessing11InstructionVGMd, &_ss23_ContiguousArrayStorageCy17_StringProcessing11InstructionVGMR);
        }

        *(v121 + 2) = v123 + 1;
        *&v121[8 * v123 + 32] = 0x1100000000000000;
        *a1 = v121;
        v124 = *(a1 + 88);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v124 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v124 + 2) + 1, 1, v124);
        }

        v126 = *(v124 + 2);
        v125 = *(v124 + 3);
        if (v126 >= v125 >> 1)
        {
          v124 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v125 > 1), v126 + 1, 1, v124);
        }

        *(v124 + 2) = v126 + 1;
        v127 = &v124[32 * v126];
        *(v127 + 4) = v123;
        *(v127 + 5) = v119;
        *(v127 + 6) = 0;
        v127[56] = 1;
        *(a1 + 88) = v124;
        v2 = v145;
        v128 = v149;
        Compiler.ByteCodeGen.emitCCCMember(_:)(v145);
        v149 = v128;
        if (v128)
        {
          outlined destroy of MEProgram(v2, type metadata accessor for DSLTree.CustomCharacterClass.Member);
          swift_unknownObjectRelease();
        }

        outlined destroy of MEProgram(v2, type metadata accessor for DSLTree.CustomCharacterClass.Member);
        v129 = *a1;
        v130 = swift_isUniquelyReferenced_nonNull_native();
        v3 = v154;
        if ((v130 & 1) == 0)
        {
          v129 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v129 + 2) + 1, 1, v129, &_ss23_ContiguousArrayStorageCy17_StringProcessing11InstructionVGMd, &_ss23_ContiguousArrayStorageCy17_StringProcessing11InstructionVGMR);
        }

        v132 = *(v129 + 2);
        v131 = *(v129 + 3);
        v13 = v132 + 1;
        if (v132 >= v131 >> 1)
        {
          v129 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v131 > 1), v132 + 1, 1, v129, &_ss23_ContiguousArrayStorageCy17_StringProcessing11InstructionVGMd, &_ss23_ContiguousArrayStorageCy17_StringProcessing11InstructionVGMR);
        }

        *(v129 + 2) = v13;
        *&v129[8 * v132 + 32] = 0x1300000000000000;
        *a1 = v129;
        v133 = *(v129 + 3);
        v6 = v132 + 2;
        if (v6 > (v133 >> 1))
        {
          v129 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v133 > 1), v6, 1, v129, &_ss23_ContiguousArrayStorageCy17_StringProcessing11InstructionVGMd, &_ss23_ContiguousArrayStorageCy17_StringProcessing11InstructionVGMR);
        }

        *(v129 + 2) = v6;
        *&v129[8 * v13 + 32] = 0x1D00000000000000;
        *a1 = v129;
        v1 = *(a1 + 80);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v1 = specialized _ArrayBuffer._consumeAndCreateNew()(v1);
        }

        if (v119 >= *(v1 + 16))
        {
          goto LABEL_147;
        }

        v134 = v1 + 16 * v119;
        *(v134 + 32) = v6;
        ++v38;
        *(v134 + 40) = 0;
        *(a1 + 80) = v1;
        v6 = v148;
        if (v177 == v38)
        {
          goto LABEL_80;
        }
      }

LABEL_146:
      __break(1u);
LABEL_147:
      __break(1u);
LABEL_148:
      __break(1u);
LABEL_149:
      v1 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v2 + 1, 1, v1);
    }

LABEL_80:
    swift_unknownObjectRelease();
    MEProgram.Builder.buildSave(_:)(v176, 0x1100000000000000);
    v1 = *(v3 + 16);
    if (!v1)
    {

      __break(1u);
      return result;
    }

    if (v1 > *(v3 + 16))
    {
      __break(1u);
      goto LABEL_151;
    }

    v98 = v142;
    outlined init with copy of DSLTree._AST.AbsentFunction(v3 + ((*(v6 + 80) + 32) & ~*(v6 + 80)) + *(v6 + 72) * (v1 - 1), v142, type metadata accessor for DSLTree.CustomCharacterClass.Member);

    v99 = v149;
    Compiler.ByteCodeGen.emitCCCMember(_:)(v98);
    result = outlined destroy of MEProgram(v98, type metadata accessor for DSLTree.CustomCharacterClass.Member);
    if (v99)
    {
      return result;
    }

    v101 = *a1;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v101 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v101 + 2) + 1, 1, v101, &_ss23_ContiguousArrayStorageCy17_StringProcessing11InstructionVGMd, &_ss23_ContiguousArrayStorageCy17_StringProcessing11InstructionVGMR);
    }

    v103 = *(v101 + 2);
    v102 = *(v101 + 3);
    v104 = v103 + 1;
    if (v103 >= v102 >> 1)
    {
      v101 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v102 > 1), v103 + 1, 1, v101, &_ss23_ContiguousArrayStorageCy17_StringProcessing11InstructionVGMd, &_ss23_ContiguousArrayStorageCy17_StringProcessing11InstructionVGMR);
    }

    *(v101 + 2) = v104;
    *&v101[8 * v103 + 32] = 0x1300000000000000;
    *a1 = v101;
    v105 = *(v101 + 3);
    v106 = v103 + 2;
    if ((v103 + 2) > (v105 >> 1))
    {
      v101 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v105 > 1), v103 + 2, 1, v101, &_ss23_ContiguousArrayStorageCy17_StringProcessing11InstructionVGMd, &_ss23_ContiguousArrayStorageCy17_StringProcessing11InstructionVGMR);
    }

    v107 = v176;
    *(v101 + 2) = v106;
    *&v101[8 * v104 + 32] = 0x1D00000000000000;
    *a1 = v101;
    v108 = *(a1 + 80);
    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
      result = specialized _ArrayBuffer._consumeAndCreateNew()(v108);
      v108 = result;
    }

    v109 = v147;
    v110 = *(v108 + 16);
    if (v107 >= v110)
    {
      __break(1u);
    }

    else
    {
      v111 = v108 + 16 * v107;
      *(v111 + 32) = v106;
      *(v111 + 40) = 0;
      *(a1 + 80) = v108;
      v110 = *v109;
      v112 = *(*v109 + 16);
      if (v112)
      {
        v113 = *(v110 + 4 * v112 + 28);
        v108 = *(v101 + 2);
        v110 = *(v101 + 3);
        v107 = v108 + 1;
        if ((v113 & 0x10000) != 0)
        {
          if (v110 >> 1 <= v108)
          {
            result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v110 > 1), v108 + 1, 1, v101, &_ss23_ContiguousArrayStorageCy17_StringProcessing11InstructionVGMd, &_ss23_ContiguousArrayStorageCy17_StringProcessing11InstructionVGMR);
            v101 = result;
          }

          *(v101 + 2) = v107;
          v114 = &v101[8 * v108];
          v115 = 0x700000000010000;
          goto LABEL_139;
        }

        if (v110 >> 1 > v108)
        {
LABEL_95:
          *(v101 + 2) = v107;
          v114 = &v101[8 * v108];
          v115 = 0x700000000010001;
LABEL_139:
          *(v114 + 4) = v115;
          *a1 = v101;
          return result;
        }

LABEL_155:
        result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v110 > 1), v107, 1, v101, &_ss23_ContiguousArrayStorageCy17_StringProcessing11InstructionVGMd, &_ss23_ContiguousArrayStorageCy17_StringProcessing11InstructionVGMR);
        v101 = result;
        goto LABEL_95;
      }
    }

    __break(1u);
    goto LABEL_155;
  }

  v116 = v149;
  specialized Compiler.ByteCodeGen.emitAlternationGen<A>(_:withBacktracking:_:)(v3, v147);
  v149 = v116;
}

uint64_t (*DSLTree.CustomCharacterClass.Member.generateConsumer(_:)(uint64_t a1))()
{
  v2 = v1;
  v4 = type metadata accessor for DSLTree.Atom(0);
  v5 = *(*(v4 - 8) + 64);
  v6 = MEMORY[0x1EEE9AC00](v4);
  v8 = &v42 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v10 = &v42 - v9;
  v11 = type metadata accessor for DSLTree.CustomCharacterClass.Member(0);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x1EEE9AC00](v11);
  v14 = (&v42 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  outlined init with copy of DSLTree._AST.AbsentFunction(v2, v14, type metadata accessor for DSLTree.CustomCharacterClass.Member);
  LODWORD(v15) = swift_getEnumCaseMultiPayload();
  if (v15 <= 2)
  {
    if (v15 != 1)
    {
LABEL_31:
      outlined destroy of MEProgram(v14, type metadata accessor for DSLTree.CustomCharacterClass.Member);
      goto LABEL_32;
    }

    v16 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s17_StringProcessing7DSLTreeV4AtomO_AEtMd, "4_") + 48);
    outlined init with take of DSLTree.QuantificationKind(v14, v10, type metadata accessor for DSLTree.Atom);
    outlined init with take of DSLTree.QuantificationKind(v14 + v16, v8, type metadata accessor for DSLTree.Atom);
    v17 = DSLTree.Atom.literalCharacterValue.getter();
    if (!v18)
    {
      outlined destroy of MEProgram(v8, type metadata accessor for DSLTree.Atom);
      v42 = 0;
      v43 = 0xE000000000000000;
      _print_unlocked<A, B>(_:_:)();
      outlined destroy of MEProgram(v10, type metadata accessor for DSLTree.Atom);
      MEMORY[0x193ACE8E0](0x676E6172206E6920, 0xE900000000000065);
      v32 = v42;
      v33 = v43;
      type metadata accessor for Unsupported();
      lazy protocol witness table accessor for type Unsupported and conformance Unsupported(&lazy protocol witness table cache variable for type Unsupported and conformance Unsupported, MEMORY[0x1E69E8998]);
      swift_allocError();
      v27 = v32;
      v28 = v33;
      v29 = 189;
      goto LABEL_20;
    }

    v19 = v17;
    v20 = v18;
    v21 = DSLTree.Atom.literalCharacterValue.getter();
    if (!v22)
    {
      outlined destroy of MEProgram(v10, type metadata accessor for DSLTree.Atom);

      v42 = 0;
      v43 = 0xE000000000000000;
      _print_unlocked<A, B>(_:_:)();
      outlined destroy of MEProgram(v8, type metadata accessor for DSLTree.Atom);
      MEMORY[0x193ACE8E0](0x676E6172206E6920, 0xE900000000000065);
      v35 = v42;
      v36 = v43;
      type metadata accessor for Unsupported();
      lazy protocol witness table accessor for type Unsupported and conformance Unsupported(&lazy protocol witness table cache variable for type Unsupported and conformance Unsupported, MEMORY[0x1E69E8998]);
      swift_allocError();
      v27 = v35;
      v28 = v36;
      v29 = 192;
      goto LABEL_20;
    }

    v14 = v21;
    v23 = v22;
    if ((Character.hasExactlyOneScalar.getter() & 1) == 0)
    {
      goto LABEL_17;
    }

    v15 = specialized Collection.first.getter(v19, v20);
    if ((v15 & 0x100000000) != 0)
    {
LABEL_28:
      __break(1u);
      goto LABEL_29;
    }

    v44 = v15;
    if (Unicode.Scalar.isNFC.getter(v15))
    {

      if (Character.hasExactlyOneScalar.getter())
      {
        v15 = specialized Collection.first.getter(v14, v23);
        if ((v15 & 0x100000000) != 0)
        {
LABEL_29:
          __break(1u);
          goto LABEL_30;
        }

        v24 = v15;
        if (Unicode.Scalar.isNFC.getter(v15))
        {

          if (v24 < v44)
          {
            v42 = 0;
            v43 = 0xE000000000000000;
            _StringGuts.grow(_:)(19);
            MEMORY[0x193ACE8E0](0x2064696C61766E49, 0xEE002065676E6172);
            _print_unlocked<A, B>(_:_:)();
            outlined destroy of MEProgram(v10, type metadata accessor for DSLTree.Atom);
            MEMORY[0x193ACE8E0](45, 0xE100000000000000);
            _print_unlocked<A, B>(_:_:)();
            outlined destroy of MEProgram(v8, type metadata accessor for DSLTree.Atom);
            v25 = v42;
            v26 = v43;
            type metadata accessor for Unsupported();
            lazy protocol witness table accessor for type Unsupported and conformance Unsupported(&lazy protocol witness table cache variable for type Unsupported and conformance Unsupported, MEMORY[0x1E69E8998]);
            swift_allocError();
            v27 = v25;
            v28 = v26;
            v29 = 203;
LABEL_20:
            MEMORY[0x193ACDF10](v27, v28, "/Library/Caches/com.apple.xbs/Sources/swiftlang_overlay_Platform_Device/swift-experimental-string-processing/Sources/_StringProcessing/ConsumerInterface.swift", 158, 2, v29);
            return swift_willThrow();
          }

          v14 = type metadata accessor for DSLTree.Atom;
          outlined destroy of MEProgram(v8, type metadata accessor for DSLTree.Atom);
          LODWORD(v15) = outlined destroy of MEProgram(v10, type metadata accessor for DSLTree.Atom);
          v37 = *(a1 + 16);
          if (v37)
          {
            v38 = *(a1 + 4 * v37 + 28);
            v39 = v38 & 1;
            if ((v38 & 0x10000) != 0)
            {
              v41 = swift_allocObject();
              *(v41 + 16) = 1;
              *(v41 + 20) = v44;
              *(v41 + 24) = v24;
              *(v41 + 28) = v39;
              return closure #1 in DSLTree.CustomCharacterClass.Member.generateConsumer(_:)partial apply;
            }

            else
            {
              v40 = swift_allocObject();
              *(v40 + 16) = 0;
              *(v40 + 20) = v44;
              *(v40 + 24) = v24;
              *(v40 + 28) = v39;
              return partial apply for closure #1 in DSLTree.CustomCharacterClass.Member.generateConsumer(_:);
            }
          }

          __break(1u);
          goto LABEL_28;
        }
      }

      outlined destroy of MEProgram(v8, type metadata accessor for DSLTree.Atom);
      outlined destroy of MEProgram(v10, type metadata accessor for DSLTree.Atom);
      lazy protocol witness table accessor for type RegexCompilationError and conformance RegexCompilationError();
      swift_allocError();
      *v34 = v14;
      *(v34 + 8) = v23;
    }

    else
    {
LABEL_17:

      outlined destroy of MEProgram(v8, type metadata accessor for DSLTree.Atom);
      outlined destroy of MEProgram(v10, type metadata accessor for DSLTree.Atom);
      lazy protocol witness table accessor for type RegexCompilationError and conformance RegexCompilationError();
      swift_allocError();
      *v34 = v19;
      *(v34 + 8) = v20;
    }

    *(v34 + 16) = 1;
    return swift_willThrow();
  }

  if (v15 == 4)
  {
    outlined destroy of MEProgram(v14, type metadata accessor for DSLTree.CustomCharacterClass.Member);
    return closure #2 in DSLTree.CustomCharacterClass.Member.generateConsumer(_:);
  }

LABEL_30:
  if (v15 != 3)
  {
    goto LABEL_31;
  }

LABEL_32:
  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

_StringProcessing::DSLTree::CustomCharacterClass __swiftcall DSLTree.CustomCharacterClass.coalescingASCIIMembers(_:)(_StringProcessing::MatchingOptions a1)
{
  v33 = v1;
  v30 = type metadata accessor for DSLTree.CustomCharacterClass.Member(0);
  v4 = *(*(v30 - 8) + 64);
  MEMORY[0x1EEE9AC00](v30);
  v7 = &v28 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *v2;
  v32 = *(v2 + 8);
  v9 = *(v8 + 16);
  v31 = v8;
  v29 = v5;
  if (v9)
  {
    v10 = (*(v5 + 80) + 32) & ~*(v5 + 80);
    v11 = v8 + v10;
    v12 = MEMORY[0x1E69E7CC0];
    v13 = *(v5 + 72);
    v14 = MEMORY[0x1E69E7CC0];
    do
    {
      outlined init with copy of DSLTree._AST.AbsentFunction(v11, v7, type metadata accessor for DSLTree.CustomCharacterClass.Member);
      if (DSLTree.CustomCharacterClass.Member.asAsciiBitset(_:_:)(a1.stack._rawValue, 0) == 2)
      {
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v14 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v14[2] + 1, 1, v14, &_ss23_ContiguousArrayStorageCy17_StringProcessing7DSLTreeV20CustomCharacterClassV6MemberOGMd, &_ss23_ContiguousArrayStorageCy17_StringProcessing7DSLTreeV20CustomCharacterClassV6MemberOGMR, type metadata accessor for DSLTree.CustomCharacterClass.Member);
        }

        v25 = v14[2];
        v24 = v14[3];
        v26 = v25 + 1;
        if (v25 >= v24 >> 1)
        {
          v23 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(v24 > 1, v25 + 1, 1, v14, &_ss23_ContiguousArrayStorageCy17_StringProcessing7DSLTreeV20CustomCharacterClassV6MemberOGMd, &_ss23_ContiguousArrayStorageCy17_StringProcessing7DSLTreeV20CustomCharacterClassV6MemberOGMR, type metadata accessor for DSLTree.CustomCharacterClass.Member);
          v14 = v23;
        }

        else
        {
          v23 = v14;
        }
      }

      else
      {
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v12 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v12[2] + 1, 1, v12, &_ss23_ContiguousArrayStorageCy17_StringProcessing7DSLTreeV20CustomCharacterClassV6MemberOGMd, &_ss23_ContiguousArrayStorageCy17_StringProcessing7DSLTreeV20CustomCharacterClassV6MemberOGMR, type metadata accessor for DSLTree.CustomCharacterClass.Member);
        }

        v25 = v12[2];
        v27 = v12[3];
        v26 = v25 + 1;
        if (v25 >= v27 >> 1)
        {
          v23 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(v27 > 1, v25 + 1, 1, v12, &_ss23_ContiguousArrayStorageCy17_StringProcessing7DSLTreeV20CustomCharacterClassV6MemberOGMd, &_ss23_ContiguousArrayStorageCy17_StringProcessing7DSLTreeV20CustomCharacterClassV6MemberOGMR, type metadata accessor for DSLTree.CustomCharacterClass.Member);
          v12 = v23;
        }

        else
        {
          v23 = v12;
        }
      }

      *(v23 + 16) = v26;
      outlined init with take of DSLTree.QuantificationKind(v7, v23 + v10 + v25 * v13, type metadata accessor for DSLTree.CustomCharacterClass.Member);
      v11 += v13;
      --v9;
    }

    while (v9);
  }

  else
  {
    v12 = MEMORY[0x1E69E7CC0];
    v14 = MEMORY[0x1E69E7CC0];
  }

  if (v12[2] && v14[2])
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy17_StringProcessing7DSLTreeV20CustomCharacterClassV6MemberOGMd, &_ss23_ContiguousArrayStorageCy17_StringProcessing7DSLTreeV20CustomCharacterClassV6MemberOGMR);
    v15 = *(v29 + 72);
    v16 = (*(v29 + 80) + 32) & ~*(v29 + 80);
    v17 = swift_allocObject();
    *(v17 + 16) = xmmword_18E5ED050;
    v18 = v17 + v16;
    *v18 = v12;
    *(v18 + 8) = 0;
    swift_storeEnumTagMultiPayload();
    v19 = v18 + v15;
    *v19 = v14;
    *(v19 + 8) = 0;
    v20 = swift_storeEnumTagMultiPayload();
  }

  else
  {

    v17 = v31;
  }

  v22 = v33;
  *v33 = v17;
  *(v22 + 8) = v32;
  result.members._rawValue = v20;
  result.isInverted = v21;
  return result;
}

uint64_t DSLTree.CustomCharacterClass.Member.isOnlyTrivia.getter()
{
  v1 = v0;
  v2 = type metadata accessor for DSLTree.CustomCharacterClass.Member(0);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  v5 = MEMORY[0x1EEE9AC00](v2);
  v7 = &v16 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v9 = (&v16 - v8);
  outlined init with copy of DSLTree._AST.AbsentFunction(v1, &v16 - v8, type metadata accessor for DSLTree.CustomCharacterClass.Member);
  result = swift_getEnumCaseMultiPayload();
  if (result == 4)
  {
    outlined destroy of MEProgram(v9, type metadata accessor for DSLTree.CustomCharacterClass.Member);
    return 1;
  }

  else if (result == 2)
  {
    v11 = 0;
    v12 = *v9;
    v13 = *(v12 + 16);
    while (1)
    {
      if (v13 == v11)
      {

        return 1;
      }

      if (v11 >= *(v12 + 16))
      {
        break;
      }

      v14 = outlined init with copy of DSLTree._AST.AbsentFunction(v12 + ((*(v3 + 80) + 32) & ~*(v3 + 80)) + *(v3 + 72) * v11++, v7, type metadata accessor for DSLTree.CustomCharacterClass.Member);
      v15 = DSLTree.CustomCharacterClass.Member.isOnlyTrivia.getter(v14);
      result = outlined destroy of MEProgram(v7, type metadata accessor for DSLTree.CustomCharacterClass.Member);
      if ((v15 & 1) == 0)
      {

        return 0;
      }
    }

    __break(1u);
  }

  else
  {
    outlined destroy of MEProgram(v9, type metadata accessor for DSLTree.CustomCharacterClass.Member);
    return 0;
  }

  return result;
}

uint64_t Compiler.ByteCodeGen.emitConcatenation(_:)(uint64_t a1)
{
  v65 = type metadata accessor for DSLTree.Atom(0);
  v2 = *(*(v65 - 8) + 64);
  result = MEMORY[0x1EEE9AC00](v65);
  v66 = (&v60 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v5 = *(a1 + 16);
  v6 = MEMORY[0x1E69E7CC0];
  if (v5)
  {
    v7 = (a1 + 32);
    do
    {
      v8 = *v7++;

      v9 = flatten #1 (_:) in Compiler.ByteCodeGen.emitConcatenation(_:)(v8);

      v10 = *(v9 + 2);
      v11 = *(v6 + 16);
      v12 = v11 + v10;
      if (__OFADD__(v11, v10))
      {
LABEL_66:
        __break(1u);
LABEL_67:
        __break(1u);
LABEL_68:
        __break(1u);
        goto LABEL_69;
      }

      result = swift_isUniquelyReferenced_nonNull_native();
      if (result && v12 <= *(v6 + 24) >> 1)
      {
        if (!*(v9 + 2))
        {
          goto LABEL_3;
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

        result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(result, v13, 1, v6);
        v6 = result;
        if (!*(v9 + 2))
        {
LABEL_3:

          if (v10)
          {
            goto LABEL_67;
          }

          goto LABEL_4;
        }
      }

      if ((*(v6 + 24) >> 1) - *(v6 + 16) < v10)
      {
        goto LABEL_68;
      }

      swift_arrayInitWithCopy();

      if (v10)
      {
        v14 = *(v6 + 16);
        v15 = __OFADD__(v14, v10);
        v16 = v14 + v10;
        if (v15)
        {
          goto LABEL_70;
        }

        *(v6 + 16) = v16;
      }

LABEL_4:
      --v5;
    }

    while (v5);
  }

  v68 = 0;
  v69 = 0xE000000000000000;
  v70 = MEMORY[0x1E69E7CC0];
  v17 = *(v6 + 16);
  if (!v17)
  {
LABEL_58:

LABEL_59:
    v55 = v70;
    v56 = *(v70 + 16);
    v57 = v64;
    if (!v56)
    {
    }

    v58 = 0;
    while (v58 < *(v55 + 16))
    {
      v59 = *(v55 + 8 * v58 + 32);

      Compiler.ByteCodeGen.emitNode(_:)(v59);

      if (!v57 && v56 != ++v58)
      {
        continue;
      }
    }

LABEL_69:
    __break(1u);
LABEL_70:
    __break(1u);
    goto LABEL_71;
  }

  v18 = 0;
  v19 = MEMORY[0x1E69E7CC0];
  v61 = v17 - 1;
  v62 = xmmword_18E5ED040;
  while (2)
  {
    v63 = v19;
    v20 = 0;
    v21 = v18;
    while (1)
    {
      if (v21 >= *(v6 + 16))
      {
        __break(1u);
        goto LABEL_66;
      }

      v24 = *(v6 + 32 + 8 * v21);
      v25 = (v24 >> 59) & 0x1E | (v24 >> 2) & 1;
      if (v25 == 10)
      {
        v22 = *((v24 & 0xFFFFFFFFFFFFFFBLL) + 0x10);
        v23 = *((v24 & 0xFFFFFFFFFFFFFFBLL) + 0x18);

        MEMORY[0x193ACE8E0](v22, v23);
        goto LABEL_22;
      }

      if (v25 != 9)
      {
        break;
      }

      v34 = v68 & 0xFFFFFFFFFFFFLL;
      if ((v69 & 0x2000000000000000) != 0)
      {
        v34 = HIBYTE(v69) & 0xF;
      }

      if (!v34)
      {
LABEL_43:

        if (v20)
        {
          goto LABEL_44;
        }

LABEL_50:
        v45 = v63;
        goto LABEL_51;
      }

LABEL_23:
      ++v21;
      v20 = 1;
      if (v17 == v21)
      {

        v51 = v68;
        v52 = v69;
        __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy17_StringProcessing7DSLTreeV4NodeOGMd, &_ss23_ContiguousArrayStorageCy17_StringProcessing7DSLTreeV4NodeOGMR);
        inited = swift_initStackObject();
        *(inited + 16) = v62;
        v54 = swift_allocObject();
        *(v54 + 16) = v51;
        *(v54 + 24) = v52;
        *(inited + 32) = v54 | 0x5000000000000000;
        result = specialized Array.append<A>(contentsOf:)(inited);
        goto LABEL_59;
      }
    }

    if (v25 != 8)
    {
      goto LABEL_43;
    }

    v26 = swift_projectBox();
    v27 = v66;
    outlined init with copy of DSLTree._AST.AbsentFunction(v26, v66, type metadata accessor for DSLTree.Atom);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (!EnumCaseMultiPayload)
    {
      v35 = *v27;
      v33 = v27[1];

      v31 = v35;
      goto LABEL_38;
    }

    if (EnumCaseMultiPayload == 1)
    {
      v29 = *v66;
      if (*v66 >= 0x80u)
      {
        v36 = (*v66 & 0x3F) << 8;
        if (v29 >= 0x800)
        {
          v37 = v29 >> 12;
          v38 = (v36 | (v29 >> 6) & 0x3F) << 8;
          v39 = HIWORD(v29);
          v30 = (((v38 | (v29 >> 12) & 0x3F) << 8) | (v29 >> 18)) - 2122219023;
          v40 = v37 + v38 + 8487393;
          if (!v39)
          {
            v30 = v40;
          }
        }

        else
        {
          v30 = (v29 >> 6) + v36 + 33217;
        }
      }

      else
      {
        v30 = v29 + 1;
      }

      v67 = (v30 + 0xFEFEFEFEFEFEFFLL) & ~(-1 << (8 * (4 - (__clz(v30) >> 3))));

      v31 = static String._uncheckedFromUTF8(_:)();
      v33 = v32;
LABEL_38:
      MEMORY[0x193ACE8D0](v31, v33);
LABEL_22:

      goto LABEL_23;
    }

    outlined destroy of MEProgram(v66, type metadata accessor for DSLTree.Atom);
    if ((v20 & 1) == 0)
    {
      goto LABEL_50;
    }

LABEL_44:
    v41 = v68;
    v42 = v69;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy17_StringProcessing7DSLTreeV4NodeOGMd, &_ss23_ContiguousArrayStorageCy17_StringProcessing7DSLTreeV4NodeOGMR);
    v43 = swift_initStackObject();
    *(v43 + 16) = v62;
    v44 = swift_allocObject();
    *(v44 + 16) = v41;
    *(v44 + 24) = v42;
    v60 = v43;
    *(v43 + 32) = v44 | 0x5000000000000000;
    v45 = v63;
    v46 = *(v63 + 16);
    result = swift_isUniquelyReferenced_nonNull_native();
    if (!result || (v47 = *(v45 + 24) >> 1, v47 <= v46))
    {
      result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(result, v46 + 1, 1, v45);
      v45 = result;
      v47 = *(result + 24) >> 1;
    }

    if (v47 > *(v45 + 16))
    {
      swift_arrayInitWithCopy();

      ++*(v45 + 16);
      v68 = 0;
      v69 = 0xE000000000000000;
LABEL_51:
      result = swift_isUniquelyReferenced_nonNull_native();
      if ((result & 1) == 0)
      {
        result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v45 + 16) + 1, 1, v45);
        v45 = result;
      }

      v49 = *(v45 + 16);
      v48 = *(v45 + 24);
      v50 = v45;
      if (v49 >= v48 >> 1)
      {
        result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v48 > 1), v49 + 1, 1, v45);
        v50 = result;
      }

      v18 = v21 + 1;
      v19 = v50;
      *(v50 + 16) = v49 + 1;
      *(v50 + 8 * v49 + 32) = v24;
      v70 = v50;
      if (v61 == v21)
      {

        goto LABEL_58;
      }

      continue;
    }

    break;
  }

LABEL_71:
  __break(1u);
  return result;
}

char *flatten #1 (_:) in Compiler.ByteCodeGen.emitConcatenation(_:)(unint64_t a1)
{
  v1 = (a1 >> 59) & 0x1E | (a1 >> 2) & 1;
  if (v1 == 12)
  {
    v16 = swift_projectBox();
    goto LABEL_24;
  }

  if (v1 == 4)
  {
    v16 = ((a1 & 0xFFFFFFFFFFFFFFBLL) + 16);
LABEL_24:
    v17 = *v16;

    v18 = flatten #1 (_:) in Compiler.ByteCodeGen.emitConcatenation(_:)(v17);

    return v18;
  }

  if (v1 != 1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy17_StringProcessing7DSLTreeV4NodeOGMd, &_ss23_ContiguousArrayStorageCy17_StringProcessing7DSLTreeV4NodeOGMR);
    v6 = swift_allocObject();
    *(v6 + 16) = xmmword_18E5ED040;
    *(v6 + 32) = a1;

    return v6;
  }

  v2 = *((a1 & 0xFFFFFFFFFFFFFFBLL) + 0x10);
  v3 = *(v2 + 16);

  if (!v3)
  {
    v6 = MEMORY[0x1E69E7CC0];
LABEL_27:

    return v6;
  }

  v5 = 0;
  v6 = MEMORY[0x1E69E7CC0];
  while (v5 < *(v2 + 16))
  {
    v7 = *(v2 + 32 + 8 * v5);

    v8 = flatten #1 (_:) in Compiler.ByteCodeGen.emitConcatenation(_:)(v7);

    v9 = *(v8 + 16);
    v10 = *(v6 + 16);
    v11 = v10 + v9;
    if (__OFADD__(v10, v9))
    {
      goto LABEL_30;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if (result && v11 <= *(v6 + 24) >> 1)
    {
      if (*(v8 + 16))
      {
        goto LABEL_18;
      }
    }

    else
    {
      if (v10 <= v11)
      {
        v12 = v10 + v9;
      }

      else
      {
        v12 = v10;
      }

      result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(result, v12, 1, v6);
      v6 = result;
      if (*(v8 + 16))
      {
LABEL_18:
        if ((*(v6 + 24) >> 1) - *(v6 + 16) < v9)
        {
          goto LABEL_32;
        }

        swift_arrayInitWithCopy();

        if (v9)
        {
          v13 = *(v6 + 16);
          v14 = __OFADD__(v13, v9);
          v15 = v13 + v9;
          if (v14)
          {
            goto LABEL_33;
          }

          *(v6 + 16) = v15;
        }

        goto LABEL_7;
      }
    }

    if (v9)
    {
      goto LABEL_31;
    }

LABEL_7:
    if (v3 == ++v5)
    {
      goto LABEL_27;
    }
  }

  __break(1u);
LABEL_30:
  __break(1u);
LABEL_31:
  __break(1u);
LABEL_32:
  __break(1u);
LABEL_33:
  __break(1u);
  return result;
}

uint64_t DSLTree.Atom.literalCharacterValue.getter()
{
  v1 = type metadata accessor for DSLTree.Atom(0);
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x1EEE9AC00](v1);
  v4 = v15 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  outlined init with copy of DSLTree._AST.AbsentFunction(v0, v4, type metadata accessor for DSLTree.Atom);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload == 1)
  {
    v8 = *v4;
    if (*v4 > 0x7Fu)
    {
      v10 = (*v4 & 0x3F) << 8;
      if (v8 >= 0x800)
      {
        v11 = v8 >> 12;
        v12 = (v10 | (v8 >> 6) & 0x3F) << 8;
        v13 = HIWORD(v8);
        v9 = (((v12 | (v8 >> 12) & 0x3F) << 8) | (v8 >> 18)) - 2122219023;
        v14 = v11 + v12 + 8487393;
        if (!v13)
        {
          v9 = v14;
        }
      }

      else
      {
        v9 = (v8 >> 6) + v10 + 33217;
      }
    }

    else
    {
      v9 = v8 + 1;
    }

    v15[1] = (v9 + 0xFEFEFEFEFEFEFFLL) & ~(-1 << (8 * (4 - (__clz(v9) >> 3))));
    return static String._uncheckedFromUTF8(_:)();
  }

  else if (EnumCaseMultiPayload)
  {
    outlined destroy of MEProgram(v4, type metadata accessor for DSLTree.Atom);
    return 0;
  }

  else
  {
    result = *v4;
    v7 = *(v4 + 1);
  }

  return result;
}

uint64_t CaptureTransform.callAsFunction(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v7 = *(v4 + 16);
  v6 = *(v4 + 24);
  v8 = *(v5 + 32);
  if (v8 > 1)
  {
    if (v8 != 2)
    {
      return v7();
    }
  }

  else if (v8)
  {
    return v7();
  }

  v15[3] = MEMORY[0x1E69E67B0];
  v14 = swift_allocObject();
  v15[0] = v14;
  v14[2] = a1;
  v14[3] = a2;
  v14[4] = a3;
  v14[5] = a4;

  (v7)(v15);
  return __swift_destroy_boxed_opaque_existential_0(v15);
}

void *constructExistentialOutputComponent(from:component:optionalCount:)@<X0>(uint64_t a1@<X2>, uint64_t a2@<X3>, uint64_t *a3@<X8>)
{
  outlined init with copy of (range: Range<String.Index>, value: Any?)?(a1, &v18, &_sSnySS5IndexVG5range_ypSg5valuetSgMd, &_sSnySS5IndexVG5range_ypSg5valuetSgMR);
  if (*(&v20 + 1) == 1)
  {
    result = outlined destroy of SplitSequence<SubstringSearcher>(&v18, &_sSnySS5IndexVG5range_ypSg5valuetSgMd, &_sSnySS5IndexVG5range_ypSg5valuetSgMR);
    if (a2 >= 1)
    {
      v6 = static TypeConstruction.optionalType<A>(of:depth:)();
      return makeNil #1 <A>(_:) in constructExistentialOutputComponent(from:component:optionalCount:)(v6, a3);
    }

    __break(1u);
    goto LABEL_13;
  }

  v21[0] = v18;
  v21[1] = v19;
  v21[2] = v20;
  outlined init with copy of (range: Range<String.Index>, value: Any?)?(v21, &v18, &_sSnySS5IndexVG5range_ypSg5valuetMd, &_sSnySS5IndexVG5range_ypSg5valuetMR);
  if (*(&v20 + 1))
  {
    outlined destroy of SplitSequence<SubstringSearcher>(v21, &_sSnySS5IndexVG5range_ypSg5valuetMd, &_sSnySS5IndexVG5range_ypSg5valuetMR);
    result = outlined init with take of Any(&v19, v16);
  }

  else
  {
    outlined destroy of SplitSequence<SubstringSearcher>(v21, &_sSnySS5IndexVG5range_ypSg5valuetMd, &_sSnySS5IndexVG5range_ypSg5valuetMR);
    v7 = String.subscript.getter();
    v9 = v8;
    v11 = v10;
    v13 = v12;
    v17 = MEMORY[0x1E69E67B0];
    result = swift_allocObject();
    v16[0] = result;
    result[2] = v7;
    result[3] = v9;
    result[4] = v11;
    result[5] = v13;
    if (*(&v20 + 1))
    {
      result = outlined destroy of Any?(&v19);
    }
  }

  if (a2 < 0)
  {
LABEL_13:
    __break(1u);
    return result;
  }

  for (; a2; --a2)
  {
    outlined init with copy of Any(v16, &v18);
    v14 = *(&v19 + 1);
    v15 = __swift_project_boxed_opaque_existential_0(&v18, *(&v19 + 1));
    specialized wrap #1 <A>(_:) in constructExistentialOutputComponent(from:component:optionalCount:)(v15, v16, v14);
    __swift_destroy_boxed_opaque_existential_0(&v18);
  }

  return outlined init with take of Any(v16, a3);
}

double CaptureTransform.callAsFunction(_:)@<D0>(uint64_t a1@<X0>, _OWORD *a2@<X8>)
{
  v4 = v2;
  v7 = *(v2 + 16);
  v6 = *(v2 + 24);
  if (*(v4 + 32) > 1u)
  {
    if (*(v4 + 32) == 2)
    {
      v7(v13);
      if (!v3)
      {
        outlined init with take of Any(v13, a2);
      }
    }

    else
    {
      outlined init with copy of Any(a1, &v11);
      swift_dynamicCast();
      (v7)(v13, v10[0], v10[1], v10[2], v10[3]);

      if (!v3)
      {
        result = *v13;
        v9 = v13[1];
        *a2 = v13[0];
        a2[1] = v9;
      }
    }
  }

  else
  {
    if (*(v4 + 32))
    {
      outlined init with copy of Any(a1, v10);
      swift_dynamicCast();
      v7(&v11);

      if (v3)
      {
        return result;
      }
    }

    else
    {
      v7(&v11);
      if (v3)
      {
        return result;
      }
    }

    if (v12)
    {
      outlined init with take of Any(&v11, v13);
      outlined init with take of Any(v13, a2);
    }

    else
    {
      outlined destroy of Any?(&v11);
      result = 0.0;
      *a2 = 0u;
      a2[1] = 0u;
    }
  }

  return result;
}

uint64_t DSLTree.CustomCharacterClass.containsDot.getter()
{
  v1 = type metadata accessor for DSLTree.CustomCharacterClass.Member(0);
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  v4 = MEMORY[0x1EEE9AC00](v1);
  v24 = &v23 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = MEMORY[0x1EEE9AC00](v4);
  v8 = &v23 - v7;
  v9 = MEMORY[0x1EEE9AC00](v6);
  v11 = &v23 - v10;
  result = MEMORY[0x1EEE9AC00](v9);
  v14 = &v23 - v13;
  v15 = *v0;
  v16 = *(*v0 + 16);
  if (!v16)
  {
    return 0;
  }

  v17 = 0;
  v18 = v15 + ((*(v2 + 80) + 32) & ~*(v2 + 80));
  v23 = &v23 - v13;
  while (v17 < *(v15 + 16))
  {
    outlined init with copy of DSLTree._AST.AbsentFunction(v18 + *(v2 + 72) * v17, v14, type metadata accessor for DSLTree.CustomCharacterClass.Member);
    outlined init with take of DSLTree.QuantificationKind(v14, v11, type metadata accessor for DSLTree.CustomCharacterClass.Member);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload == 2)
    {
      v20 = v24;
      v21 = outlined init with copy of DSLTree._AST.AbsentFunction(v11, v24, type metadata accessor for DSLTree.CustomCharacterClass.Member);
      v22 = *(v20 + 8);
      v25 = *v20;
      v26 = v22;
      LOBYTE(v20) = DSLTree.CustomCharacterClass.containsDot.getter(v21);
      v14 = v23;

      result = outlined destroy of MEProgram(v11, type metadata accessor for DSLTree.CustomCharacterClass.Member);
      if (v20)
      {
        return 1;
      }
    }

    else
    {
      if (!EnumCaseMultiPayload)
      {
        outlined init with copy of DSLTree._AST.AbsentFunction(v11, v8, type metadata accessor for DSLTree.CustomCharacterClass.Member);
        type metadata accessor for DSLTree.Atom(0);
        if (swift_getEnumCaseMultiPayload() == 10)
        {
          outlined destroy of MEProgram(v11, type metadata accessor for DSLTree.CustomCharacterClass.Member);
          return 1;
        }

        outlined destroy of MEProgram(v8, type metadata accessor for DSLTree.Atom);
      }

      result = outlined destroy of MEProgram(v11, type metadata accessor for DSLTree.CustomCharacterClass.Member);
    }

    if (v16 == ++v17)
    {
      return 0;
    }
  }

  __break(1u);
  return result;
}

uint64_t DSLTree.CustomCharacterClass.guaranteesForwardProgress.getter()
{
  v1 = type metadata accessor for DSLTree.CustomCharacterClass.Member(0);
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  result = MEMORY[0x1EEE9AC00](v1);
  v6 = &v19 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *v0;
  v8 = *(v7 + 16);
  if (v8)
  {
    v9 = 0;
    while (1)
    {
      if (v9 >= *(v7 + 16))
      {
        __break(1u);
        return result;
      }

      outlined init with copy of DSLTree._AST.AbsentFunction(v7 + ((*(v2 + 80) + 32) & ~*(v2 + 80)) + *(v2 + 72) * v9, v6, type metadata accessor for DSLTree.CustomCharacterClass.Member);
      EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
      if (EnumCaseMultiPayload != 4)
      {
        break;
      }

      ++v9;
      result = outlined destroy of MEProgram(v6, type metadata accessor for DSLTree.CustomCharacterClass.Member);
      if (v8 == v9)
      {
        goto LABEL_6;
      }
    }

    switch(EnumCaseMultiPayload)
    {
      case 5:
        goto LABEL_10;
      case 6:
        v18 = *(*v6 + 24);
        v21 = *(*v6 + 16);
        v22 = v18;
LABEL_14:
        v12 = DSLTree.CustomCharacterClass.guaranteesForwardProgress.getter(EnumCaseMultiPayload, v11);

        return v12 & 1;
      case 7:
LABEL_10:
        v13 = *v6;
        v14 = *(*v6 + 16);
        v15 = *(*v6 + 24);
        v16 = *(*v6 + 32);
        v17 = *(v13 + 40);
        v21 = v14;
        v22 = v15;
        EnumCaseMultiPayload = (DSLTree.CustomCharacterClass.guaranteesForwardProgress.getter)();
        if ((EnumCaseMultiPayload & 1) == 0)
        {

          v12 = 0;
          return v12 & 1;
        }

        v19 = v16;
        v20 = v17;
        goto LABEL_14;
    }

    outlined destroy of MEProgram(v6, type metadata accessor for DSLTree.CustomCharacterClass.Member);
    v12 = 1;
  }

  else
  {
LABEL_6:
    v12 = 0;
  }

  return v12 & 1;
}

unint64_t specialized Collection.first.getter(unint64_t a1, unint64_t a2)
{
  if ((a2 & 0x2000000000000000) != 0)
  {
    v2 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v2 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (v2)
  {
    _StringGuts.validateScalarIndex(_:)(0xFuLL, a1, a2);
    if ((a2 & 0x1000000000000000) != 0)
    {
      v5 = _StringGuts.foreignErrorCorrectedScalar(startingAt:)();
    }

    else
    {
      if ((a2 & 0x2000000000000000) == 0 && (a1 & 0x1000000000000000) == 0)
      {
        _StringObject.sharedUTF8.getter();
      }

      v5 = _decodeScalar(_:startingAt:)();
    }
  }

  else
  {
    v5 = 0;
  }

  return v5 | ((v2 == 0) << 32);
}

uint64_t specialized Collection.first.getter(uint64_t a1, unint64_t a2)
{
  v2 = HIBYTE(a2) & 0xF;
  if ((a2 & 0x2000000000000000) == 0)
  {
    v2 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (v2)
  {
    return String.subscript.getter();
  }

  else
  {
    return 0;
  }
}

_OWORD *specialized wrap #1 <A>(_:) in constructExistentialOutputComponent(from:component:optionalCount:)(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  v10 = type metadata accessor for Optional();
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(&v9);
  v7 = *(a3 - 8);
  (*(v7 + 16))(boxed_opaque_existential_0, a1, a3);
  (*(v7 + 56))(boxed_opaque_existential_0, 0, 1, a3);
  __swift_destroy_boxed_opaque_existential_0(a2);
  return outlined init with take of Any(&v9, a2);
}

uint64_t makeNil #1 <A>(_:) in constructExistentialOutputComponent(from:component:optionalCount:)@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  a2[3] = type metadata accessor for Optional();
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(a2);
  v5 = *(*(a1 - 8) + 56);

  return v5(boxed_opaque_existential_0, 1, 1, a1);
}

uint64_t AnyRegexOutput.Element.range.getter()
{
  outlined init with copy of (range: Range<String.Index>, value: Any?)?(v0 + 8, &v3, &_sSnySS5IndexVG5range_ypSg5valuetSgMd, &_sSnySS5IndexVG5range_ypSg5valuetSgMR);
  if (v4[3] == 1)
  {
    outlined destroy of SplitSequence<SubstringSearcher>(&v3, &_sSnySS5IndexVG5range_ypSg5valuetSgMd, &_sSnySS5IndexVG5range_ypSg5valuetSgMR);
    return 0;
  }

  else
  {
    v1 = v3;
    outlined destroy of Any?(v4);
  }

  return v1;
}

void *specialized Sequence<>.existentialOutput(from:)@<X0>(uint64_t a1@<X2>, uint64_t a2@<X3>, uint64_t a3@<X4>, uint64_t a4@<X8>)
{
  v7 = *(a3 + 16);

  v8 = MEMORY[0x1E69E7CC0];
  if (v7)
  {
    v9 = a3 + 32;
    do
    {
      outlined init with copy of AnyRegexOutput.ElementRepresentation(v9, &v42);
      *(&v47 + 1) = a1;
      v55 = a2;
      v49 = v42;
      v50 = v43;
      v51 = v44;
      v52 = v45;
      v53 = v46;
      v54 = v47;
      if (BYTE1(v47) == 1)
      {
        v45 = v52;
        v46 = v53;
        v47 = v54;
        v48 = v55;
        v42 = v49;
        v43 = v50;
        v44 = v51;

        *&v38 = v8;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v8 + 16) + 1, 1);
          v8 = v38;
        }

        v11 = *(v8 + 16);
        v10 = *(v8 + 24);
        if (v11 >= v10 >> 1)
        {
          specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v10 > 1), v11 + 1, 1);
          v8 = v38;
        }

        *(v8 + 16) = v11 + 1;
        v12 = v8 + 104 * v11;
        v13 = v42;
        v14 = v44;
        *(v12 + 48) = v43;
        *(v12 + 64) = v14;
        *(v12 + 32) = v13;
        v15 = v45;
        v16 = v46;
        v17 = v47;
        *(v12 + 128) = v48;
        *(v12 + 96) = v16;
        *(v12 + 112) = v17;
        *(v12 + 80) = v15;
      }

      else
      {

        outlined destroy of AnyRegexOutput.Element(&v49);
      }

      v9 += 88;
      --v7;
    }

    while (v7);
  }

  v18 = *(v8 + 16);
  if (!v18)
  {

    v20 = MEMORY[0x1E69E7CC0];
LABEL_29:
    if (*(v20 + 16) == 1)
    {
      outlined init with copy of Any(v20 + 32, a4);
    }

    else
    {
      *&v49 = v20;
      swift_getCanonicalSpecializedMetadata();
      lazy protocol witness table accessor for type PartialRangeUpTo<String.Index> and conformance PartialRangeUpTo<A>(&lazy protocol witness table cache variable for type [Any] and conformance [A]);
      return static TypeConstruction.tuple<A>(of:)();
    }
  }

  v41 = MEMORY[0x1E69E7CC0];
  specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v18, 0);
  v19 = 0;
  v20 = v41;
  while (1)
  {
    outlined init with copy of AnyRegexOutput.Element(v8 + 32 + 104 * v19, &v49);
    v21 = v49;
    outlined init with copy of (range: Range<String.Index>, value: Any?)?(&v49 + 8, &v38, &_sSnySS5IndexVG5range_ypSg5valuetSgMd, &_sSnySS5IndexVG5range_ypSg5valuetSgMR);
    if (*(&v40 + 1) == 1)
    {
      break;
    }

    v42 = v38;
    v43 = v39;
    v44 = v40;
    outlined init with copy of (range: Range<String.Index>, value: Any?)?(&v42, &v38, &_sSnySS5IndexVG5range_ypSg5valuetMd, &_sSnySS5IndexVG5range_ypSg5valuetMR);
    if (*(&v40 + 1))
    {
      outlined destroy of SplitSequence<SubstringSearcher>(&v42, &_sSnySS5IndexVG5range_ypSg5valuetMd, &_sSnySS5IndexVG5range_ypSg5valuetMR);
      result = outlined init with take of Any(&v39, v36);
    }

    else
    {
      outlined destroy of SplitSequence<SubstringSearcher>(&v42, &_sSnySS5IndexVG5range_ypSg5valuetMd, &_sSnySS5IndexVG5range_ypSg5valuetMR);
      v24 = String.subscript.getter();
      v26 = v25;
      v28 = v27;
      v30 = v29;
      v37 = MEMORY[0x1E69E67B0];
      result = swift_allocObject();
      v36[0] = result;
      result[2] = v24;
      result[3] = v26;
      result[4] = v28;
      result[5] = v30;
      if (*(&v40 + 1))
      {
        result = outlined destroy of Any?(&v39);
      }
    }

    if (v21 < 0)
    {
      goto LABEL_33;
    }

    for (; v21; --v21)
    {
      outlined init with copy of Any(v36, &v38);
      v31 = *(&v39 + 1);
      v32 = __swift_project_boxed_opaque_existential_0(&v38, *(&v39 + 1));
      specialized wrap #1 <A>(_:) in constructExistentialOutputComponent(from:component:optionalCount:)(v32, v36, v31);
      __swift_destroy_boxed_opaque_existential_0(&v38);
    }

    outlined init with take of Any(v36, &v38);
LABEL_24:
    outlined destroy of AnyRegexOutput.Element(&v49);
    v41 = v20;
    v34 = *(v20 + 16);
    v33 = *(v20 + 24);
    if (v34 >= v33 >> 1)
    {
      specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v33 > 1), v34 + 1, 1);
      v20 = v41;
    }

    ++v19;
    *(v20 + 16) = v34 + 1;
    outlined init with take of Any(&v38, (v20 + 32 * v34 + 32));
    if (v19 == v18)
    {

      goto LABEL_29;
    }
  }

  result = outlined destroy of SplitSequence<SubstringSearcher>(&v38, &_sSnySS5IndexVG5range_ypSg5valuetSgMd, &_sSnySS5IndexVG5range_ypSg5valuetSgMR);
  if (v21 >= 1)
  {
    v23 = static TypeConstruction.optionalType<A>(of:depth:)();
    makeNil #1 <A>(_:) in constructExistentialOutputComponent(from:component:optionalCount:)(v23, &v38);
    goto LABEL_24;
  }

  __break(1u);
LABEL_33:
  __break(1u);
  return result;
}

uint64_t Compiler.emit()@<X0>(uint64_t a1@<X8>)
{
  v28 = a1;
  v2 = type metadata accessor for CaptureList();
  v31 = *(v2 - 8);
  v32 = v2;
  v3 = *(v31 + 64);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v26 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = v5;
  v6 = type metadata accessor for Compiler.ByteCodeGen(0);
  v7 = (v6 - 8);
  v8 = *(*(v6 - 8) + 64);
  MEMORY[0x1EEE9AC00](v6);
  v10 = (&v26 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  v11 = v1[4];
  v29 = v1[3];
  v34 = v1[2];

  static CaptureList.Builder.build(_:)(&v34, v5);
  v12 = v10 + v7[7];
  v13 = MEMORY[0x1E69E7CC0];
  *v12 = MEMORY[0x1E69E7CC0];
  *(v12 + 2) = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSJ_17_StringProcessing8TypedIntVyAC16_ElementRegisterOGTt0g5Tf4g_n(v13);
  *(v12 + 3) = v13;
  *(v12 + 4) = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSays5UInt8VG_17_StringProcessing8TypedIntVyAF13_UTF8RegisterOGTt0g5Tf4g_n(v13);
  *(v12 + 5) = v13;
  *(v12 + 6) = v13;
  *(v12 + 7) = v13;
  *(v12 + 8) = v13;
  *(v12 + 9) = v13;
  *(v12 + 10) = v13;
  *(v12 + 11) = v13;
  *(v12 + 6) = 0u;
  *(v12 + 7) = 0u;
  v12[128] = 1;
  *(v12 + 17) = 0;
  *(v12 + 18) = 0;
  v12[152] = 1;
  v14 = type metadata accessor for MEProgram.Builder(0);
  v15 = v14[21];
  CaptureList.init(arrayLiteral:)();
  *&v12[v14[22]] = &outlined read-only object #0 of Compiler.emit();
  v27 = v14[23];
  v12[v27] = 0;
  v16 = v14[24];
  *&v12[v16] = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfC17_StringProcessing11ReferenceIDV_SayAC8TypedIntVyAC19_InstructionAddressOGGTt0g5Tf4g_n(v13);
  v17 = v14[25];
  *&v12[v17] = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfC17_StringProcessing11ReferenceIDV_SiTt0g5Tf4g_n(v13);
  *(v10 + v7[8]) = 0;
  v18 = v30;
  *v10 = v29;
  *(v10 + v7[9]) = v11;
  (*(v31 + 40))(&v12[v15], v18, v32);
  v12[8] = (v11 & 2) != 0;
  v12[9] = (v11 & 4) != 0;
  v19 = v1[2];
  if (((v19 >> 59) & 0x1E | (v19 >> 2) & 1) == 0xE)
  {
    *(v12 + 15) = 0;
    v12[128] = 0;
  }

  v20 = v33;
  Compiler.ByteCodeGen.emitNode(_:)(v19);
  if (!v20)
  {
    v34 = &outlined read-only object #1 of Compiler.emit();
    v21 = DSLTree.Node._canOnlyMatchAtStartImpl(_:)(&v34, v19);

    v12[v27] = v21 & 1;
    v22 = *v12;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v22 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v22 + 2) + 1, 1, v22, &_ss23_ContiguousArrayStorageCy17_StringProcessing11InstructionVGMd, &_ss23_ContiguousArrayStorageCy17_StringProcessing11InstructionVGMR);
    }

    v24 = *(v22 + 2);
    v23 = *(v22 + 3);
    if (v24 >= v23 >> 1)
    {
      v22 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v23 > 1), v24 + 1, 1, v22, &_ss23_ContiguousArrayStorageCy17_StringProcessing11InstructionVGMd, &_ss23_ContiguousArrayStorageCy17_StringProcessing11InstructionVGMR);
    }

    *(v22 + 2) = v24 + 1;
    *&v22[8 * v24 + 32] = 0x1C00000000000000;
    *v12 = v22;
    MEProgram.Builder.assemble()(v28);
  }

  outlined destroy of MEProgram(v10, type metadata accessor for Compiler.ByteCodeGen);
}

uint64_t Compiler.__deallocating_deinit()
{
  v1 = *(v0 + 16) & 0xFFFFFFFFFFFFFFFLL;

  v2 = *(v0 + 24);

  return MEMORY[0x1EEE6BDC0](v0, 40, 7);
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance AnyHashableType()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  MEMORY[0x193ACEF90](v1);
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance AnyHashableType()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  MEMORY[0x193ACEF90](v1);
  return Hasher._finalize()();
}

unint64_t RegexCompilationError.description.getter(uint64_t a1, uint64_t a2, char a3)
{
  if (!a3)
  {
    _StringGuts.grow(_:)(56);
    MEMORY[0x193ACE8E0](0xD00000000000001ELL, 0x800000018E5F2750);
    v5 = _typeName(_:qualified:)();
    MEMORY[0x193ACE8E0](v5);

    MEMORY[0x193ACE8E0](0xD000000000000014, 0x800000018E5F2770);
    v6 = _typeName(_:qualified:)();
    MEMORY[0x193ACE8E0](v6);

    v3 = 10046;
    v4 = 0xE200000000000000;
    goto LABEL_5;
  }

  if (a3 == 1)
  {
    _StringGuts.grow(_:)(50);
    MEMORY[0x193ACE8E0](39, 0xE100000000000000);
    Character.write<A>(to:)();
    v3 = 0xD00000000000002FLL;
    v4 = 0x800000018E5F2720;
LABEL_5:
    MEMORY[0x193ACE8E0](v3, v4);
    return 0;
  }

  return 0xD000000000000034;
}

Swift::Int RegexCompilationError.hashValue.getter(uint64_t a1, uint64_t a2, char a3)
{
  Hasher.init(_seed:)();
  if (!a3)
  {
    MEMORY[0x193ACEF90](1);
    MEMORY[0x193ACEF90](a1);
    v6 = a2;
LABEL_6:
    MEMORY[0x193ACEF90](v6);
    return Hasher._finalize()();
  }

  if (a3 != 1)
  {
    v6 = 0;
    goto LABEL_6;
  }

  MEMORY[0x193ACEF90](2);
  MEMORY[0x193ACE6E0](v8, a1, a2);
  return Hasher._finalize()();
}

uint64_t protocol witness for Hashable.hash(into:) in conformance RegexCompilationError()
{
  v2 = *v0;
  v1 = v0[1];
  if (*(v0 + 16))
  {
    if (*(v0 + 16) == 1)
    {
      MEMORY[0x193ACEF90](2);

      JUMPOUT(0x193ACE6E0);
    }

    v3 = 0;
  }

  else
  {
    MEMORY[0x193ACEF90](1);
    MEMORY[0x193ACEF90](v2);
    v3 = v1;
  }

  return MEMORY[0x193ACEF90](v3);
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance RegexCompilationError()
{
  v2 = *v0;
  v1 = v0[1];
  v3 = *(v0 + 16);
  Hasher.init(_seed:)();
  if (!v3)
  {
    MEMORY[0x193ACEF90](1);
    MEMORY[0x193ACEF90](v2);
    v4 = v1;
LABEL_6:
    MEMORY[0x193ACEF90](v4);
    return Hasher._finalize()();
  }

  if (v3 != 1)
  {
    v4 = 0;
    goto LABEL_6;
  }

  MEMORY[0x193ACEF90](2);
  MEMORY[0x193ACE6E0](v6, v2, v1);
  return Hasher._finalize()();
}

uint64_t specialized SetAlgebra<>.init(arrayLiteral:)@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v3 = *(a1 + 16);
  if (v3)
  {
    v4 = 0;
    v5 = (a1 + 32);
    do
    {
      v7 = *v5++;
      v6 = v7;
      if ((v7 & ~v4) == 0)
      {
        v6 = 0;
      }

      v4 |= v6;
      --v3;
    }

    while (v3);
  }

  else
  {
    v4 = 0;
  }

  *a2 = v4;
  return result;
}

BOOL protocol witness for SetAlgebra.insert(_:) in conformance _CompileOptions(void *a1, uint64_t *a2)
{
  v3 = *a2;
  v4 = *v2 & *a2;
  if (v4 != *a2)
  {
    *v2 |= v3;
  }

  *a1 = v3;
  return v4 != v3;
}

void *protocol witness for SetAlgebra.remove(_:) in conformance _CompileOptions@<X0>(void *result@<X0>, uint64_t a2@<X8>)
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

uint64_t *protocol witness for SetAlgebra.update(with:) in conformance _CompileOptions@<X0>(uint64_t *result@<X0>, uint64_t a2@<X8>)
{
  v3 = *result;
  v4 = *v2;
  *v2 |= *result;
  v5 = v4 & v3;
  *a2 = v5;
  *(a2 + 8) = v5 == 0;
  return result;
}

uint64_t AST.Atom.singleScalarASCIIValue.getter()
{
  v0 = type metadata accessor for AST.Atom.Kind();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x1EEE9AC00](v0);
  v4 = (&v12 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  v5 = AST.Atom.singleScalar.getter();
  if ((v5 & 0x1FFFFFF80) != 0)
  {
    AST.Atom.kind.getter();
    if ((*(v1 + 88))(v4, v0) == *MEMORY[0x1E69E8D58])
    {
      (*(v1 + 96))(v4, v0);
      if (*v4 != 2573 || v4[1] != 0xE200000000000000)
      {
        v7 = *v4;
        v8 = v4[1];
        if ((_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
        {
          v11 = Character.asciiValue.getter();

          LOBYTE(v5) = v11;
          v9 = (v11 >> 8) & 1;
          return v5 | (v9 << 8);
        }
      }
    }

    else
    {
      (*(v1 + 8))(v4, v0);
    }

    LOBYTE(v5) = 0;
    v9 = 1;
  }

  else
  {
    v9 = 0;
  }

  return v5 | (v9 << 8);
}

uint64_t DSLTree.Atom.singleScalarASCIIValue.getter()
{
  v1 = v0;
  v2 = type metadata accessor for DSLTree._AST.Atom(0);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v5 = &v27[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v6 = type metadata accessor for DSLTree.Atom(0);
  v7 = *(*(v6 - 8) + 64);
  v8 = MEMORY[0x1EEE9AC00](v6);
  v10 = &v27[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v11 = MEMORY[0x1EEE9AC00](v8);
  v13 = &v27[-v12];
  v14 = MEMORY[0x1EEE9AC00](v11);
  v16 = &v27[-v15];
  MEMORY[0x1EEE9AC00](v14);
  v18 = &v27[-v17];
  outlined init with copy of DSLTree._AST.AbsentFunction(v1, &v27[-v17], type metadata accessor for DSLTree.Atom);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload == 7)
  {
    outlined init with copy of DSLTree._AST.AbsentFunction(v18, v10, type metadata accessor for DSLTree.Atom);
    outlined init with take of DSLTree.QuantificationKind(v10, v5, type metadata accessor for DSLTree._AST.Atom);
    v25 = AST.Atom.singleScalarASCIIValue.getter();
    LOBYTE(v23) = v25;
    v24 = (v25 >> 8) & 1;
    outlined destroy of MEProgram(v5, type metadata accessor for DSLTree._AST.Atom);
  }

  else if (EnumCaseMultiPayload == 1)
  {
    outlined init with copy of DSLTree._AST.AbsentFunction(v18, v13, type metadata accessor for DSLTree.Atom);
    v24 = *v13 > 0x7Fu;
    if (*v13 <= 0x7Fu)
    {
      LOBYTE(v23) = *v13;
    }

    else
    {
      LOBYTE(v23) = 0;
    }
  }

  else
  {
    if (!EnumCaseMultiPayload)
    {
      outlined init with copy of DSLTree._AST.AbsentFunction(v18, v16, type metadata accessor for DSLTree.Atom);
      if (*v16 != 2573 || v16[1] != 0xE200000000000000)
      {
        v21 = *v16;
        v22 = v16[1];
        if ((_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
        {
          v23 = Character.asciiValue.getter();

          v24 = (v23 >> 8) & 1;
          goto LABEL_15;
        }
      }
    }

    LOBYTE(v23) = 0;
    v24 = 1;
  }

LABEL_15:
  outlined destroy of MEProgram(v18, type metadata accessor for DSLTree.Atom);
  return v23 | (v24 << 8);
}

BOOL String.isEqualByUAX44LM2(to:)(uint64_t a1, unint64_t a2, uint64_t a3, unint64_t a4)
{
  v4 = HIBYTE(a4) & 0xF;
  if ((a4 & 0x2000000000000000) == 0)
  {
    v4 = a3 & 0xFFFFFFFFFFFFLL;
  }

  v5 = 4 * v4;
  v6 = HIBYTE(a2) & 0xF;
  if (!v4)
  {
    v7 = 0;
    v11 = 15;
LABEL_39:
    v36 = a1 & 0xFFFFFFFFFFFFLL;
    if ((a2 & 0x2000000000000000) != 0)
    {
      v36 = v6;
    }

    v37 = v11 >> 14 == 4 * v36;
    return v7 == v5 && v37;
  }

  v7 = 0;
  v8 = a1 & 0xFFFFFFFFFFFFLL;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v8 = HIBYTE(a2) & 0xF;
  }

  v9 = 4 * v8;
  v10 = 15;
  v11 = 15;
  v44 = a1;
  v45 = a2;
  v43 = HIBYTE(a2) & 0xF;
  while (2)
  {
    v12 = v11;
    v13 = v11 >> 14;
    while (1)
    {
      if (v13 >= v9)
      {
        goto LABEL_38;
      }

      String.subscript.getter();
      v15 = Character.isWhitespace.getter();

      if (v15)
      {
        goto LABEL_9;
      }

      if (String.subscript.getter() != 45 || v16 != 0xE100000000000000)
      {
        v17 = _stringCompareWithSmolCheck(_:_:expecting:)();

        if (v17)
        {
          goto LABEL_9;
        }

        if (String.subscript.getter() != 95 || v18 != 0xE100000000000000)
        {
          break;
        }
      }

LABEL_9:
      v14 = String.index(after:)();
      v10 = v14;
      if (v14 >> 14 >= v5)
      {
        v7 = v14 >> 14;
LABEL_38:
        a1 = v44;
        a2 = v45;
        v6 = v43;
        v11 = v12;
        goto LABEL_39;
      }
    }

    v19 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v19)
    {
      goto LABEL_9;
    }

    String.subscript.getter();
    v20 = Character.isWhitespace.getter();

    if (v20)
    {
      goto LABEL_23;
    }

    if (String.subscript.getter() == 45 && v21 == 0xE100000000000000)
    {
LABEL_21:

      goto LABEL_23;
    }

    v22 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v22)
    {
      goto LABEL_23;
    }

    if (String.subscript.getter() == 95 && v24 == 0xE100000000000000)
    {
      goto LABEL_21;
    }

    v25 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v25)
    {
LABEL_23:
      v23 = String.index(after:)();
      a2 = v45;
      v11 = v23;
      a1 = v44;
      v7 = v10 >> 14;
      v6 = v43;
      if (v10 >> 14 < v5)
      {
        continue;
      }

      goto LABEL_39;
    }

    break;
  }

  v26 = String.subscript.getter();
  v28 = v27;
  if (v26 == String.subscript.getter() && v28 == v29)
  {
LABEL_30:

    goto LABEL_35;
  }

  v40 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if (v40)
  {
    goto LABEL_35;
  }

  v30 = String.subscript.getter();
  v41 = MEMORY[0x193ACE660](v30);
  v32 = v31;

  v33 = String.subscript.getter();
  v39 = MEMORY[0x193ACE660](v33);
  v35 = v34;

  if (v41 == v39 && v32 == v35)
  {
    goto LABEL_30;
  }

  v42 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if (v42)
  {
LABEL_35:
    v10 = String.index(after:)();
    goto LABEL_23;
  }

  return 0;
}

uint64_t closure #1 in consumeName(_:opts:)(uint64_t a1, uint64_t a2, unint64_t a3)
{
  v5 = Unicode.Scalar.Properties.name.getter();
  if (v6)
  {
    v7 = String.isEqualByUAX44LM2(to:)(a2, a3, v5, v6);

    if (v7)
    {
      return 1;
    }
  }

  v9 = Unicode.Scalar.Properties.nameAlias.getter();
  if (!v10)
  {
    return 0;
  }

  v11 = String.isEqualByUAX44LM2(to:)(a2, a3, v9, v10);

  return v11;
}

unint64_t AST.Atom.singleScalar.getter()
{
  v0 = type metadata accessor for AST.Atom.EscapedBuiltin();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x1EEE9AC00](v0);
  v4 = &v19[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v5 = type metadata accessor for AST.Atom.Scalar();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v19[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v10 = type metadata accessor for AST.Atom.Kind();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v10);
  v14 = &v19[-((v13 + 15) & 0xFFFFFFFFFFFFFFF0)];
  AST.Atom.kind.getter();
  v15 = (*(v11 + 88))(v14, v10);
  if (v15 == *MEMORY[0x1E69E8D60])
  {
    (*(v11 + 96))(v14, v10);
    (*(v6 + 32))(v9, v14, v5);
    v16 = AST.Atom.Scalar.value.getter();
    (*(v6 + 8))(v9, v5);
    LOBYTE(v5) = 0;
  }

  else if (v15 == *MEMORY[0x1E69E8D70])
  {
    (*(v11 + 96))(v14, v10);
    (*(v1 + 32))(v4, v14, v0);
    v17 = AST.Atom.EscapedBuiltin.scalarValue.getter();
    v16 = v17;
    v5 = HIDWORD(v17) & 1;
    (*(v1 + 8))(v4, v0);
  }

  else
  {
    (*(v11 + 8))(v14, v10);
    v16 = 0;
    LOBYTE(v5) = 1;
  }

  return v16 | (v5 << 32);
}

uint64_t (*AST.Atom.CharacterProperty.generateConsumer(_:)(uint64_t (*result)(unint64_t a1, unint64_t a2, unint64_t a3, uint64_t a4)))(unint64_t a1, unint64_t a2, unint64_t a3, uint64_t a4)
{
  v3 = *(result + 2);
  if (v3)
  {
    v4 = result;
    if ((*(result + v3 + 7) & 0x10000) != 0)
    {
      v5 = consumeCharacterWithLeadingScalar(_:);
    }

    else
    {
      v5 = consumeScalar(_:);
    }

    result = closure #1 in AST.Atom.CharacterProperty.generateConsumer(_:)(v1, v5, result);
    if (!v2)
    {
      v7 = v6;
      v8 = result;
      if (AST.Atom.CharacterProperty.isInverted.getter())
      {
        v9 = swift_allocObject();
        v9[2] = v8;
        v9[3] = v7;
        v9[4] = v4;

        return partial apply for closure #1 in invert #1 (_:) in AST.Atom.CharacterProperty.generateConsumer(_:);
      }

      else
      {
        return v8;
      }
    }
  }

  else
  {
    __break(1u);
  }

  return result;
}

unint64_t DSLTree.CustomCharacterClass.Member.asAsciiBitset(_:_:)(uint64_t a1, char a2)
{
  v3 = v2;
  v6 = type metadata accessor for DSLTree.Atom(0);
  v7 = *(*(v6 - 8) + 64);
  v8 = MEMORY[0x1EEE9AC00](v6 - 8);
  v10 = v46 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x1EEE9AC00](v8);
  v13 = v46 - v12;
  MEMORY[0x1EEE9AC00](v11);
  v15 = v46 - v14;
  v16 = type metadata accessor for DSLTree.CustomCharacterClass.Member(0);
  v17 = *(*(v16 - 8) + 64);
  MEMORY[0x1EEE9AC00](v16);
  v19 = (v46 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0));
  outlined init with copy of DSLTree._AST.AbsentFunction(v3, v19, type metadata accessor for DSLTree.CustomCharacterClass.Member);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload != 3)
  {
    if (EnumCaseMultiPayload == 1)
    {
      v26 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s17_StringProcessing7DSLTreeV4AtomO_AEtMd, "4_") + 48);
      outlined init with take of DSLTree.QuantificationKind(v19, v13, type metadata accessor for DSLTree.Atom);
      outlined init with take of DSLTree.QuantificationKind(v19 + v26, v10, type metadata accessor for DSLTree.Atom);
      v27 = DSLTree.Atom.singleScalarASCIIValue.getter();
      outlined destroy of MEProgram(v13, type metadata accessor for DSLTree.Atom);
      if ((v27 & 0x100) == 0)
      {
        v28 = DSLTree.Atom.singleScalarASCIIValue.getter();
        result = outlined destroy of MEProgram(v10, type metadata accessor for DSLTree.Atom);
        if ((v28 & 0x100) == 0)
        {
          v29 = *(a1 + 16);
          if (!v29)
          {
            goto LABEL_48;
          }

          v25 = specialized DSLTree.CustomCharacterClass.AsciiBitset.init(low:high:isInverted:isCaseInsensitive:)(v27, v28, a2 & 1, *(a1 + 4 * v29 + 28) & 1);
          return v25 & 1;
        }

        return 2;
      }

      v38 = type metadata accessor for DSLTree.Atom;
      v39 = v10;
    }

    else
    {
      if (!EnumCaseMultiPayload)
      {
        outlined init with take of DSLTree.QuantificationKind(v19, v15, type metadata accessor for DSLTree.Atom);
        v21 = DSLTree.Atom.singleScalarASCIIValue.getter();
        result = outlined destroy of MEProgram(v15, type metadata accessor for DSLTree.Atom);
        if ((v21 & 0x100) == 0)
        {
          v23 = *(a1 + 16);
          if (!v23)
          {
            goto LABEL_47;
          }

          v24 = *(a1 + 4 * v23 + 28);
          v25 = specialized DSLTree.CustomCharacterClass.AsciiBitset.init(_:_:_:)(v21, a2 & 1);
          return v25 & 1;
        }

        return 2;
      }

      v38 = type metadata accessor for DSLTree.CustomCharacterClass.Member;
      v39 = v19;
    }

    outlined destroy of MEProgram(v39, v38);
    return 2;
  }

  v30 = *v19;
  v31 = v19[1];
  v32 = HIBYTE(v31) & 0xF;
  if ((v31 & 0x2000000000000000) == 0)
  {
    v32 = *v19 & 0xFFFFFFFFFFFFLL;
  }

  v46[0] = *v19;
  v46[1] = v31;
  v46[2] = 0;
  v46[3] = v32;
  v33 = String.Iterator.next()();
  if (!v33.value._object)
  {
LABEL_19:

    return a2 & 1;
  }

  countAndFlagsBits = v33.value._countAndFlagsBits;
  object = v33.value._object;
  v36 = 0;
  v37 = 0;
  while (1)
  {
    if (countAndFlagsBits == 2573 && object == 0xE200000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
    {
LABEL_43:

      return 2;
    }

    if (_stringCompareWithSmolCheck(_:_:expecting:)())
    {

      if (!*(a1 + 16))
      {
        break;
      }

      LOBYTE(v40) = 10;
LABEL_22:
      v41 = 0;
      v42 = 1 << v40;
      goto LABEL_23;
    }

    if ((Character._isSingleScalar.getter() & 1) == 0)
    {
      goto LABEL_43;
    }

    result = specialized Collection.first.getter(countAndFlagsBits, object);
    if ((result & 0x100000000) != 0)
    {
      goto LABEL_49;
    }

    if ((result & 0xFFFFFF80) != 0)
    {
      goto LABEL_43;
    }

    result = specialized Collection.first.getter(countAndFlagsBits, object);
    if ((result & 0x100000000) != 0)
    {
      goto LABEL_50;
    }

    v40 = result;

    if ((v40 & 0xFFFFFF00) != 0)
    {
      goto LABEL_46;
    }

    v44 = *(a1 + 16);
    if (!v44)
    {
      break;
    }

    if (v40 <= 0x3Fu)
    {
      goto LABEL_22;
    }

    if (v40 >= 64)
    {
      v45 = *(a1 + 28 + 4 * v44);
      v41 = 1 << v40;
      if (v45)
      {
        if (v40 <= 0x5Au)
        {
          v42 = 0;
          v41 |= 1 << (v40 & 0x3F ^ 0x20u);
          goto LABEL_23;
        }

        if (v40 - 123 >= 0xFFFFFFE6)
        {
          v42 = 0;
          v41 |= 1 << (v40 & 0x1F);
          goto LABEL_23;
        }
      }
    }

    else
    {
      v41 = 0;
    }

    v42 = 0;
LABEL_23:
    v37 |= v42;
    v36 |= v41;
    v43 = String.Iterator.next()();
    countAndFlagsBits = v43.value._countAndFlagsBits;
    object = v43.value._object;
    if (!v43.value._object)
    {
      goto LABEL_19;
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
LABEL_50:
  __break(1u);
  return result;
}

uint64_t Unicode.Scalar.isNFC.getter(unsigned int a1)
{
  v2 = type metadata accessor for Unicode._NFC();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2);
  v6 = v22 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for Unicode._NFC.Iterator();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v7);
  v11 = v22 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = (a1 & 0x3F) << 8;
  v13 = (a1 >> 6) + v12 + 33217;
  v14 = (v12 | (a1 >> 6) & 0x3F) << 8;
  v15 = (((v14 | (a1 >> 12) & 0x3F) << 8) | (a1 >> 18)) - 2122219023;
  v16 = (a1 >> 12) + v14 + 8487393;
  if (HIWORD(a1))
  {
    v16 = v15;
  }

  if (a1 >= 0x800)
  {
    v13 = v16;
  }

  if (a1 <= 0x7F)
  {
    v13 = a1 + 1;
  }

  v22[1] = (v13 + 0xFEFEFEFEFEFEFFLL) & ~(-1 << (8 * (4 - (__clz(v13) >> 3))));
  v17 = static String._uncheckedFromUTF8(_:)();
  MEMORY[0x193ACE860](v17);
  Unicode._NFC.makeIterator()();
  (*(v3 + 8))(v6, v2);
  v18 = Unicode._NFC.Iterator.next()();
  if ((v18 & 0x100000000) != 0)
  {

    (*(v8 + 8))(v11, v7);
    return 0;
  }

  else
  {
    v19 = v18;
    v20 = Unicode._NFC.Iterator.next()();

    (*(v8 + 8))(v11, v7);
    return BYTE4(v20) & (v19 == a1);
  }
}

uint64_t closure #1 in DSLTree.CustomCharacterClass.Member.generateConsumer(_:)(unint64_t a1, unint64_t a2, unint64_t a3, int a4, unsigned int a5, unsigned int a6, int a7)
{
  v51 = a7;
  v55 = a5;
  v56 = a6;
  v53 = type metadata accessor for Unicode.Scalar.Properties();
  v50 = *(v53 - 8);
  v11 = *(v50 + 64);
  MEMORY[0x1EEE9AC00](v53);
  v52 = &v48[-((v12 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v13 = type metadata accessor for Unicode._NFC();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  MEMORY[0x1EEE9AC00](v13);
  v17 = &v48[-((v16 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v54 = type metadata accessor for Unicode._NFC.Iterator();
  v18 = *(v54 - 8);
  v19 = *(v18 + 64);
  MEMORY[0x1EEE9AC00](v54);
  v21 = &v48[-((v20 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v22 = ~a4;
  v49 = a4;
  v23 = String.index(after:isScalarSemantics:)(a3, (a4 & 1) == 0, a1, a2);
  if (v22)
  {
    _StringGuts.validateScalarIndex(_:)(a3, a1, a2);
    if ((a2 & 0x1000000000000000) != 0)
    {
      goto LABEL_34;
    }

    v29 = v55;
    v28 = v56;
    if ((a2 & 0x2000000000000000) != 0)
    {
      v57 = a1;
      v58 = a2 & 0xFFFFFFFFFFFFFFLL;
    }

    else if ((a1 & 0x1000000000000000) == 0)
    {
      _StringObject.sharedUTF8.getter();
    }

    v26 = _decodeScalar(_:startingAt:)();
    goto LABEL_12;
  }

  v24 = String.subscript.getter();
  MEMORY[0x193ACE860](v24);
  Unicode._NFC.makeIterator()();
  (*(v14 + 8))(v17, v13);
  v25 = Unicode._NFC.Iterator.next()();
  if ((v25 & 0x100000000) != 0)
  {

    (*(v18 + 8))(v21, v54);
    return 0;
  }

  v26 = v25;
  v27 = Unicode._NFC.Iterator.next()();

  (*(v18 + 8))(v21, v54);
  if ((v27 & 0x100000000) == 0)
  {
    return 0;
  }

  while (1)
  {
    v29 = v55;
    v28 = v56;
LABEL_12:
    if (v28 >= v29)
    {
      break;
    }

    __break(1u);
LABEL_34:
    v26 = _StringGuts.foreignErrorCorrectedScalar(startingAt:)();
  }

  if (v26 < v29 || v26 > v28)
  {
    if ((v51 & 1) == 0)
    {
      return 0;
    }

    v30 = v52;
    Unicode.Scalar.properties.getter();
    v31 = Unicode.Scalar.Properties.changesWhenLowercased.getter();
    v32 = *(v50 + 8);
    v32(v30, v53);
    if ((v31 & 1) == 0)
    {
      goto LABEL_30;
    }

    v33 = v52;
    Unicode.Scalar.properties.getter();
    v34 = Unicode.Scalar.Properties.lowercaseMapping.getter();
    v36 = v35;
    v32(v33, v53);
    v37 = (v49 & 1) != 0 ? String.singleNFCScalar.getter(v34, v36) : String.singleScalar.getter(v34, v36);
    v38 = v37;

    if ((v38 & 0x100000000) != 0 || v38 < v29 || v38 > v28)
    {
LABEL_30:
      v39 = v52;
      Unicode.Scalar.properties.getter();
      v40 = Unicode.Scalar.Properties.changesWhenUppercased.getter();
      v32(v39, v53);
      if ((v40 & 1) == 0)
      {
        return 0;
      }

      v41 = v52;
      Unicode.Scalar.properties.getter();
      v42 = Unicode.Scalar.Properties.uppercaseMapping.getter();
      v44 = v43;
      v32(v41, v53);
      v45 = (v49 & 1) != 0 ? String.singleNFCScalar.getter(v42, v44) : String.singleScalar.getter(v42, v44);
      v46 = v45;

      if ((v46 & 0x100000000) != 0 || v46 < v29 || v46 > v28)
      {
        return 0;
      }
    }
  }

  return v23;
}

uint64_t String.index(after:isScalarSemantics:)(unint64_t a1, char a2, unint64_t a3, unint64_t a4)
{
  if (a2)
  {
    v6 = _StringGuts.validateScalarIndex(_:)(a1, a3, a4);
    if ((a4 & 0x1000000000000000) != 0)
    {

      return String.UnicodeScalarView._foreignIndex(after:)();
    }

    else
    {
      v7 = v6 >> 16;
      if ((a4 & 0x2000000000000000) != 0)
      {
        v14[0] = a3;
        v14[1] = a4 & 0xFFFFFFFFFFFFFFLL;
        v9 = *(v14 + v7);
      }

      else
      {
        if ((a3 & 0x1000000000000000) != 0)
        {
          v8 = (a4 & 0xFFFFFFFFFFFFFFFLL) + 32;
        }

        else
        {
          v13 = v6 >> 16;
          v8 = _StringObject.sharedUTF8.getter();
          v7 = v13;
        }

        v9 = *(v8 + v7);
      }

      v11 = v9;
      v12 = __clz(v9 ^ 0xFF) - 24;
      if (v11 >= 0)
      {
        LOBYTE(v12) = 1;
      }

      return ((v7 + v12) << 16) | 5;
    }
  }

  else
  {

    return String.index(after:)();
  }
}

unint64_t String.singleNFCScalar.getter(uint64_t a1, unint64_t a2)
{
  v4 = type metadata accessor for Unicode._NFC();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v21[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v9 = type metadata accessor for Unicode._NFC.Iterator();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v9);
  v13 = &v21[-((v12 + 15) & 0xFFFFFFFFFFFFFFF0)];
  if ((a2 & 0x2000000000000000) != 0)
  {
    v14 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v14 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (!v14 || String.index(after:)() >> 14 != 4 * v14)
  {
    goto LABEL_11;
  }

  result = specialized Collection.first.getter(a1, a2);
  if (v16)
  {
    MEMORY[0x193ACE860](result);
    Unicode._NFC.makeIterator()();
    (*(v5 + 8))(v8, v4);
    v17 = Unicode._NFC.Iterator.next()();
    if ((v17 & 0x100000000) != 0)
    {

      (*(v10 + 8))(v13, v9);
    }

    else
    {
      v18 = v17;
      v19 = Unicode._NFC.Iterator.next()();

      (*(v10 + 8))(v13, v9);
      if ((v19 & 0x100000000) != 0)
      {
        v20 = 0;
LABEL_12:
        v21[12] = v20;
        return v18 | (v20 << 32);
      }
    }

LABEL_11:
    v18 = 0;
    v20 = 1;
    goto LABEL_12;
  }

  __break(1u);
  return result;
}

unint64_t String.singleScalar.getter(unint64_t a1, unint64_t a2)
{
  v2 = HIBYTE(a2) & 0xF;
  if ((a2 & 0x2000000000000000) == 0)
  {
    v2 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (!v2)
  {
    goto LABEL_16;
  }

  v5 = 4 * v2;
  v6 = _StringGuts.validateScalarIndex(_:)(0xFuLL, a1, a2);
  if ((a2 & 0x1000000000000000) != 0)
  {
    if (v5 == String.UnicodeScalarView._foreignIndex(after:)() >> 14)
    {
      goto LABEL_13;
    }

LABEL_16:
    LODWORD(result) = 0;
    v13 = 1;
    goto LABEL_17;
  }

  v7 = v6 >> 16;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v14[0] = a1;
    v14[1] = a2 & 0xFFFFFFFFFFFFFFLL;
    v9 = *(v14 + v7);
  }

  else
  {
    if ((a1 & 0x1000000000000000) != 0)
    {
      v8 = (a2 & 0xFFFFFFFFFFFFFFFLL) + 32;
    }

    else
    {
      v8 = _StringObject.sharedUTF8.getter();
    }

    v9 = *(v8 + v7);
  }

  v10 = v9;
  v11 = __clz(v9 ^ 0xFF) - 24;
  if (v10 >= 0)
  {
    LOBYTE(v11) = 1;
  }

  if (v5 != ((4 * (v7 + v11)) & 0x3FFFFFFFFFFFFLL))
  {
    goto LABEL_16;
  }

LABEL_13:
  result = specialized Collection.first.getter(a1, a2);
  if ((result & 0x100000000) == 0)
  {
    v13 = 0;
LABEL_17:
    LOBYTE(v14[0]) = v13;
    return result | (v13 << 32);
  }

  __break(1u);
  return result;
}

uint64_t closure #1 in scriptScalarPredicate(_:)(unsigned int a1)
{
  v2 = type metadata accessor for Unicode.Script();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2);
  v6 = v9 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  Unicode.Script.init(_:)(a1, v6);
  lazy protocol witness table accessor for type Unsupported and conformance Unsupported(&lazy protocol witness table cache variable for type Unicode.Script and conformance Unicode.Script, MEMORY[0x1E69E9220]);
  dispatch thunk of RawRepresentable.rawValue.getter();
  (*(v3 + 8))(v6, v2);
  dispatch thunk of RawRepresentable.rawValue.getter();
  if (v9[2] == v9[0] && v9[3] == v9[1])
  {
    v7 = 1;
  }

  else
  {
    v7 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  return v7 & 1;
}

uint64_t Unicode.Script.init(_:)@<X0>(unsigned int a1@<W0>, uint64_t a2@<X8>)
{
  Script = _swift_string_processing_getScript(a1);
  _StringGuts.grow(_:)(27);

  v6[0] = 0xD000000000000019;
  v6[1] = 0x800000018E5F3390;
  v4 = dispatch thunk of CustomStringConvertible.description.getter();
  MEMORY[0x193ACE8E0](v4);

  LOBYTE(v6[0]) = Script;
  result = type metadata accessor for Unicode.Script();
  if (*(*(result - 8) + 64) == 1)
  {
    return (*(*(result - 8) + 16))(a2, v6, result);
  }

  __break(1u);
  return result;
}

void *closure #1 in scriptExtensionScalarPredicate(_:)(unsigned int a1, uint64_t a2)
{
  v14[1] = a2;
  v3 = type metadata accessor for Unicode.Script();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v7 = v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = static Unicode.Script.extensions(for:)(a1);
  v9 = result;
  v10 = 0;
  v11 = result[2];
  while (1)
  {
    v12 = v10;
    if (v11 == v10)
    {
LABEL_5:

      return (v11 != v12);
    }

    if (v10 >= v9[2])
    {
      break;
    }

    (*(v4 + 16))(v7, v9 + ((*(v4 + 80) + 32) & ~*(v4 + 80)) + *(v4 + 72) * v10++, v3);
    lazy protocol witness table accessor for type Unsupported and conformance Unsupported(&lazy protocol witness table cache variable for type Unicode.Script and conformance Unicode.Script, MEMORY[0x1E69E9220]);
    v13 = dispatch thunk of static Equatable.== infix(_:_:)();
    result = (*(v4 + 8))(v7, v3);
    if (v13)
    {
      goto LABEL_5;
    }
  }

  __break(1u);
  return result;
}

void *static Unicode.Script.extensions(for:)(unsigned int a1)
{
  v21 = *MEMORY[0x1E69E9840];
  v2 = type metadata accessor for Unicode.Script();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v17 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = 0;
  ScriptExtensions = _swift_string_processing_getScriptExtensions(a1, &v20);
  if (ScriptExtensions)
  {
    v7 = v20;
    if (v20)
    {
      if (v4 != 1)
      {
        __break(1u);
      }

      v8 = ScriptExtensions;
      v18 = *(v3 + 16);
      v9 = MEMORY[0x1E69E7CC0];
      do
      {
        v10 = *v8++;
        v19 = v10;
        v18(v5, &v19, v2);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v9 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v9[2] + 1, 1, v9, &_ss23_ContiguousArrayStorageCys7UnicodeO12_RegexParserE6ScriptOGMd, &_ss23_ContiguousArrayStorageCys7UnicodeO12_RegexParserE6ScriptOGMR, MEMORY[0x1E69E9220]);
        }

        v12 = v9[2];
        v11 = v9[3];
        if (v12 >= v11 >> 1)
        {
          v9 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(v11 > 1, v12 + 1, 1, v9, &_ss23_ContiguousArrayStorageCys7UnicodeO12_RegexParserE6ScriptOGMd, &_ss23_ContiguousArrayStorageCys7UnicodeO12_RegexParserE6ScriptOGMR, MEMORY[0x1E69E9220]);
        }

        v9[2] = v12 + 1;
        (*(v3 + 32))(v9 + ((*(v3 + 80) + 32) & ~*(v3 + 80)) + *(v3 + 72) * v12, v5, v2);
        --v7;
      }

      while (v7);
    }

    else
    {
      v9 = MEMORY[0x1E69E7CC0];
    }
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys7UnicodeO12_RegexParserE6ScriptOGMd, &_ss23_ContiguousArrayStorageCys7UnicodeO12_RegexParserE6ScriptOGMR);
    v13 = *(v3 + 72);
    v14 = (*(v3 + 80) + 32) & ~*(v3 + 80);
    v9 = swift_allocObject();
    *(v9 + 1) = xmmword_18E5ED040;
    Unicode.Script.init(_:)(a1, v9 + v14);
  }

  v15 = *MEMORY[0x1E69E9840];
  return v9;
}

uint64_t closure #1 in categoryScalarPredicate(_:)(uint64_t a1, uint64_t a2)
{
  v3 = type metadata accessor for Unicode.GeneralCategory();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v7 = &v15 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for Unicode.Scalar.Properties();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v8);
  v12 = &v15 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  Unicode.Scalar.properties.getter();
  Unicode.Scalar.Properties.generalCategory.getter();
  (*(v9 + 8))(v12, v8);
  v13 = MEMORY[0x193ACF080](a2, v7);
  (*(v4 + 8))(v7, v3);
  return v13 & 1;
}

BOOL closure #1 in categoriesScalarPredicate(_:)(uint64_t a1, uint64_t a2)
{
  v3 = type metadata accessor for Unicode.GeneralCategory();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v7 = &v19 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for Unicode.Scalar.Properties();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v8);
  v12 = &v19 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  Unicode.Scalar.properties.getter();
  Unicode.Scalar.Properties.generalCategory.getter();
  (*(v9 + 8))(v12, v8);
  v13 = 0;
  v14 = *(a2 + 16);
  do
  {
    v15 = v13;
    if (v14 == v13)
    {
      break;
    }

    ++v13;
    v16 = a2 + ((*(v4 + 80) + 32) & ~*(v4 + 80));
    v17 = *(v4 + 72);
  }

  while ((dispatch thunk of static Equatable.== infix(_:_:)() & 1) == 0);
  (*(v4 + 8))(v7, v3);
  return v14 != v15;
}

uint64_t specialized closure #1 in propertyScalarPredicate(_:)()
{
  v0 = type metadata accessor for Unicode.Scalar.Properties();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x1EEE9AC00](v0);
  v4 = &v7 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  Unicode.Scalar.properties.getter();
  if (Unicode.Scalar.Properties.isHexDigit.getter())
  {
    v5 = Unicode.Scalar.Properties.isASCIIHexDigit.getter();
  }

  else
  {
    v5 = 0;
  }

  (*(v1 + 8))(v4, v0);
  return v5 & 1;
}

{
  v0 = type metadata accessor for Unicode.Scalar.Properties();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x1EEE9AC00](v0);
  v4 = &v7 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  Unicode.Scalar.properties.getter();
  v5 = closure #3 in Unicode.POSIXProperty.generateConsumer(_:)();
  (*(v1 + 8))(v4, v0);
  return v5 & 1;
}

{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss7UnicodeO11NumericTypeOSgMd, &_ss7UnicodeO11NumericTypeOSgMR);
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x1EEE9AC00](v0 - 8);
  v3 = &v13 - v2;
  v4 = type metadata accessor for Unicode.Scalar.Properties();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v13 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  Unicode.Scalar.properties.getter();
  if (Unicode.Scalar.Properties.isAlphabetic.getter())
  {
    v9 = 1;
  }

  else
  {
    Unicode.Scalar.Properties.numericType.getter();
    v10 = type metadata accessor for Unicode.NumericType();
    v9 = 1;
    v11 = (*(*(v10 - 8) + 48))(v3, 1, v10);
    outlined destroy of SplitSequence<SubstringSearcher>(v3, &_ss7UnicodeO11NumericTypeOSgMd, &_ss7UnicodeO11NumericTypeOSgMR);
    if (v11 == 1 && (Unicode.Scalar.Properties.isJoinControl.getter() & 1) == 0)
    {
      v9 = Unicode.Scalar.Properties.isDash.getter();
    }
  }

  (*(v5 + 8))(v8, v4);
  return v9 & 1;
}

uint64_t specialized closure #1 in propertyScalarPredicate(_:)(uint64_t a1)
{
  return specialized closure #1 in propertyScalarPredicate(_:)(a1, MEMORY[0x1E69E79B0]);
}

{
  return specialized closure #1 in propertyScalarPredicate(_:)(a1, MEMORY[0x1E69E79D8]);
}

{
  return specialized closure #1 in propertyScalarPredicate(_:)(a1, MEMORY[0x1E69E79F8]);
}

{
  return specialized closure #1 in propertyScalarPredicate(_:)(a1, MEMORY[0x1E69E7AF0]);
}

{
  return specialized closure #1 in propertyScalarPredicate(_:)(a1, MEMORY[0x1E69E7A08]);
}

{
  return specialized closure #1 in propertyScalarPredicate(_:)(a1, MEMORY[0x1E69E7A88]);
}

{
  return specialized closure #1 in propertyScalarPredicate(_:)(a1, MEMORY[0x1E69E7A90]);
}

{
  return specialized closure #1 in propertyScalarPredicate(_:)(a1, MEMORY[0x1E69E7AC8]);
}

{
  return specialized closure #1 in propertyScalarPredicate(_:)(a1, MEMORY[0x1E69E7A98]);
}

{
  return specialized closure #1 in propertyScalarPredicate(_:)(a1, MEMORY[0x1E69E7AA0]);
}

{
  return specialized closure #1 in propertyScalarPredicate(_:)(a1, MEMORY[0x1E69E7AA8]);
}

{
  return specialized closure #1 in propertyScalarPredicate(_:)(a1, MEMORY[0x1E69E7AE0]);
}

{
  return specialized closure #1 in propertyScalarPredicate(_:)(a1, MEMORY[0x1E69E79B8]);
}

{
  return specialized closure #1 in propertyScalarPredicate(_:)(a1, MEMORY[0x1E69E7AD8]);
}

{
  return specialized closure #1 in propertyScalarPredicate(_:)(a1, MEMORY[0x1E69E7998]);
}

{
  return specialized closure #1 in propertyScalarPredicate(_:)(a1, MEMORY[0x1E69E7A58]);
}

{
  return specialized closure #1 in propertyScalarPredicate(_:)(a1, MEMORY[0x1E69E7A10]);
}

{
  return specialized closure #1 in propertyScalarPredicate(_:)(a1, MEMORY[0x1E69E7AF8]);
}

{
  return specialized closure #1 in propertyScalarPredicate(_:)(a1, MEMORY[0x1E69E7A60]);
}

{
  return specialized closure #1 in propertyScalarPredicate(_:)(a1, MEMORY[0x1E69E7980]);
}

{
  return specialized closure #1 in propertyScalarPredicate(_:)(a1, MEMORY[0x1E69E7AD0]);
}

{
  return specialized closure #1 in propertyScalarPredicate(_:)(a1, MEMORY[0x1E69E7A00]);
}

{
  return specialized closure #1 in propertyScalarPredicate(_:)(a1, MEMORY[0x1E69E7A28]);
}

{
  return specialized closure #1 in propertyScalarPredicate(_:)(a1, MEMORY[0x1E69E79C0]);
}

{
  return specialized closure #1 in propertyScalarPredicate(_:)(a1, MEMORY[0x1E69E79E0]);
}

{
  return specialized closure #1 in propertyScalarPredicate(_:)(a1, MEMORY[0x1E69E7B00]);
}

{
  return specialized closure #1 in propertyScalarPredicate(_:)(a1, MEMORY[0x1E69E7A68]);
}

{
  return specialized closure #1 in propertyScalarPredicate(_:)(a1, MEMORY[0x1E69E7A80]);
}

{
  return specialized closure #1 in propertyScalarPredicate(_:)(a1, MEMORY[0x1E69E79E8]);
}

{
  return specialized closure #1 in propertyScalarPredicate(_:)(a1, MEMORY[0x1E69E7AB8]);
}

{
  return specialized closure #1 in propertyScalarPredicate(_:)(a1, MEMORY[0x1E69E79A0]);
}

{
  return specialized closure #1 in propertyScalarPredicate(_:)(a1, MEMORY[0x1E69E7AE8]);
}

{
  return specialized closure #1 in propertyScalarPredicate(_:)(a1, MEMORY[0x1E69E7AC0]);
}

{
  return specialized closure #1 in propertyScalarPredicate(_:)(a1, MEMORY[0x1E69E7A18]);
}

{
  return specialized closure #1 in propertyScalarPredicate(_:)(a1, MEMORY[0x1E69E7A70]);
}

{
  return specialized closure #1 in propertyScalarPredicate(_:)(a1, MEMORY[0x1E69E7A20]);
}

{
  return specialized closure #1 in propertyScalarPredicate(_:)(a1, MEMORY[0x1E69E7B08]);
}

{
  return specialized closure #1 in propertyScalarPredicate(_:)(a1, MEMORY[0x1E69E79C8]);
}

{
  return specialized closure #1 in propertyScalarPredicate(_:)(a1, MEMORY[0x1E69E7A48]);
}

{
  return specialized closure #1 in propertyScalarPredicate(_:)(a1, MEMORY[0x1E69E7AB0]);
}

{
  return specialized closure #1 in propertyScalarPredicate(_:)(a1, MEMORY[0x1E69E7A50]);
}

{
  return specialized closure #1 in propertyScalarPredicate(_:)(a1, MEMORY[0x1E69E79A8]);
}

{
  return specialized closure #1 in propertyScalarPredicate(_:)(a1, MEMORY[0x1E69E7A78]);
}

{
  return specialized closure #1 in propertyScalarPredicate(_:)(a1, MEMORY[0x1E69E79D0]);
}

{
  return specialized closure #1 in propertyScalarPredicate(_:)(a1, MEMORY[0x1E69E79F0]);
}

{
  return specialized closure #1 in propertyScalarPredicate(_:)(a1, MEMORY[0x1E69E7990]);
}

BOOL specialized closure #1 in propertyScalarPredicate(_:)()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss7UnicodeO11NumericTypeOSgMd, &_ss7UnicodeO11NumericTypeOSgMR);
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x1EEE9AC00](v0 - 8);
  v3 = &v12 - v2;
  v4 = type metadata accessor for Unicode.Scalar.Properties();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v12 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  Unicode.Scalar.properties.getter();
  if (Unicode.Scalar.Properties.isAlphabetic.getter())
  {
    v9 = 1;
  }

  else
  {
    Unicode.Scalar.Properties.numericType.getter();
    v10 = type metadata accessor for Unicode.NumericType();
    v9 = (*(*(v10 - 8) + 48))(v3, 1, v10) != 1;
    outlined destroy of SplitSequence<SubstringSearcher>(v3, &_ss7UnicodeO11NumericTypeOSgMd, &_ss7UnicodeO11NumericTypeOSgMR);
  }

  (*(v5 + 8))(v8, v4);
  return v9;
}

{
  v0 = type metadata accessor for Unicode.GeneralCategory();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  v3 = MEMORY[0x1EEE9AC00](v0);
  v5 = &v16 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v3);
  v7 = &v16 - v6;
  v8 = type metadata accessor for Unicode.Scalar.Properties();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v8);
  v12 = &v16 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  Unicode.Scalar.properties.getter();
  Unicode.Scalar.Properties.generalCategory.getter();
  (*(v1 + 104))(v5, *MEMORY[0x1E69E78E0], v0);
  v13 = dispatch thunk of static Equatable.== infix(_:_:)();
  v14 = *(v1 + 8);
  v14(v5, v0);
  v14(v7, v0);
  (*(v9 + 8))(v12, v8);
  return (v13 & 1) == 0;
}