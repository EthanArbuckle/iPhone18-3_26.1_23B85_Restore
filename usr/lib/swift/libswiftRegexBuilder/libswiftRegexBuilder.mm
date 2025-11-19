uint64_t BidirectionalCollection<>.wholeMatch<A, B>(of:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, void (*a8)(char *, uint64_t, uint64_t, uint64_t, uint64_t))
{
  v13 = *(a5 - 8);
  v14 = *(v13 + 64);
  v15 = MEMORY[0x1EEE9AC00]();
  v17 = &v19 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15();
  a8(v17, a3, a5, a6, a7);
  return (*(v13 + 8))(v17, a5);
}

uint64_t BidirectionalCollection<>.firstRange<A>(of:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = *(a4 - 8);
  v6 = *(v5 + 64);
  v7 = MEMORY[0x1EEE9AC00]();
  v9 = &v12 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7();
  v10 = BidirectionalCollection<>.firstRange<A>(of:)();
  (*(v5 + 8))(v9, a4);
  return v10;
}

uint64_t BidirectionalCollection<>.ranges<A>(of:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = *(a4 - 8);
  v6 = *(v5 + 64);
  v7 = MEMORY[0x1EEE9AC00]();
  v9 = &v12 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7();
  v10 = BidirectionalCollection<>.ranges<A>(of:)();
  (*(v5 + 8))(v9, a4);
  return v10;
}

uint64_t BidirectionalCollection<>.split<A>(maxSplits:omittingEmptySubsequences:separator:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v7 = *(a6 - 8);
  v8 = *(v7 + 64);
  v9 = MEMORY[0x1EEE9AC00]();
  v11 = &v15 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12(v9);
  v13 = BidirectionalCollection<>.split<A>(separator:maxSplits:omittingEmptySubsequences:)();
  (*(v7 + 8))(v11, a6);
  return v13;
}

uint64_t BidirectionalCollection<>.contains<A>(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t (*a7)(char *, uint64_t, uint64_t, uint64_t, uint64_t))
{
  v12 = *(a4 - 8);
  v13 = *(v12 + 64);
  v14 = MEMORY[0x1EEE9AC00]();
  v16 = &v18 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14();
  LOBYTE(a7) = a7(v16, a3, a4, a5, a6);
  (*(v12 + 8))(v16, a4);
  return a7 & 1;
}

uint64_t BidirectionalCollection<>.trimmingPrefix<A>(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = *(a4 - 8);
  v6 = *(v5 + 64);
  v7 = MEMORY[0x1EEE9AC00]();
  v9 = &v12 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7();
  v10 = BidirectionalCollection<>.trimmingPrefix<A>(_:)();
  (*(v5 + 8))(v9, a4);
  return v10;
}

uint64_t BidirectionalCollection<>.firstMatch<A, B>(of:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = *(a5 - 8);
  v7 = *(v6 + 64);
  v8 = MEMORY[0x1EEE9AC00]();
  v10 = &v12 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8();
  BidirectionalCollection<>.firstMatch<A, B>(of:)();
  return (*(v6 + 8))(v10, a5);
}

uint64_t BidirectionalCollection<>.matches<A, B>(of:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = *(a5 - 8);
  v7 = *(v6 + 64);
  v8 = MEMORY[0x1EEE9AC00]();
  v10 = &v13 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8();
  v11 = BidirectionalCollection<>.matches<A, B>(of:)();
  (*(v6 + 8))(v10, a5);
  return v11;
}

uint64_t RangeReplaceableCollection<>.trimPrefix<A>(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = *(a4 - 8);
  v6 = *(v5 + 64);
  v7 = MEMORY[0x1EEE9AC00]();
  v9 = &v11 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7();
  RangeReplaceableCollection<>.trimPrefix<A>(_:)();
  return (*(v5 + 8))(v9, a4);
}

uint64_t RangeReplaceableCollection<>.replacing<A, B>(with:subrange:maxReplacements:content:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, __int128 a11)
{
  v20 = a8;
  v19 = a7;
  v18 = a11;
  v11 = *(a9 - 8);
  v12 = *(v11 + 64);
  v13 = MEMORY[0x1EEE9AC00]();
  v15 = &v18 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16(v13);
  RangeReplaceableCollection<>.replacing<A, B>(_:with:subrange:maxReplacements:)();
  return (*(v11 + 8))(v15, a9);
}

uint64_t RangeReplaceableCollection<>.replacing<A, B>(with:maxReplacements:content:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v15[2] = a6;
  v15[1] = a5;
  v8 = *(a7 - 8);
  v9 = *(v8 + 64);
  v10 = MEMORY[0x1EEE9AC00]();
  v12 = v15 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13(v10);
  RangeReplaceableCollection<>.replacing<A, B>(_:with:maxReplacements:)();
  return (*(v8 + 8))(v12, a7);
}

uint64_t RangeReplaceableCollection<>.replace<A, B>(with:maxReplacements:content:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v15 = a6;
  v8 = *(a7 - 8);
  v9 = *(v8 + 64);
  v10 = MEMORY[0x1EEE9AC00](a1);
  v12 = &v15 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13(v10);
  RangeReplaceableCollection<>.replace<A, B>(_:with:maxReplacements:)();
  return (*(v8 + 8))(v12, a7);
}

uint64_t RangeReplaceableCollection<>.replacing<A, B, C>(subrange:maxReplacements:content:with:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, __int128 a13)
{
  v25 = a8;
  v23 = a6;
  v24 = a7;
  v21 = a9;
  v22 = a3;
  v20 = a13;
  v13 = *(a11 - 8);
  v14 = *(v13 + 64);
  v15 = MEMORY[0x1EEE9AC00](a1);
  v17 = &v20 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18(v15);
  RangeReplaceableCollection<>.replacing<A, B, C>(_:subrange:maxReplacements:with:)();
  return (*(v13 + 8))(v17, a11);
}

uint64_t RangeReplaceableCollection<>.replacing<A, B, C>(maxReplacements:content:with:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, __int128 a11)
{
  v21 = a8;
  v19 = a6;
  v20 = a7;
  v18 = a11;
  v11 = *(a9 - 8);
  v12 = *(v11 + 64);
  v13 = MEMORY[0x1EEE9AC00](a1);
  v15 = &v18 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16(v13);
  RangeReplaceableCollection<>.replacing<A, B, C>(_:maxReplacements:with:)();
  return (*(v11 + 8))(v15, a9);
}

uint64_t RangeReplaceableCollection<>.replace<A, B, C>(maxReplacements:content:with:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, __int128 a11)
{
  v20 = a8;
  v19 = a7;
  v18 = a11;
  v11 = *(a9 - 8);
  v12 = *(v11 + 64);
  v13 = MEMORY[0x1EEE9AC00](a1);
  v15 = &v18 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16(v13);
  RangeReplaceableCollection<>.replace<A, B, C>(_:maxReplacements:with:)();
  return (*(v11 + 8))(v15, a9);
}

uint64_t StringProtocol<>.split(separator:maxSplits:omittingEmptySubsequences:)()
{
  return MEMORY[0x1EEE6E7D8]();
}

{
  return MEMORY[0x1EEE6E7E0]();
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance Anchor.Kind()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  MEMORY[0x1BFB01690](v1);
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance Anchor.Kind()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  MEMORY[0x1BFB01690](v1);
  return Hasher._finalize()();
}

uint64_t Anchor.regex.getter()
{
  v1 = type metadata accessor for DSLTree.Atom.Assertion();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x1EEE9AC00](v1);
  v5 = &v17 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for _RegexFactory();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v10 = &v17 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *v0;
  v12 = v0[1];
  _RegexFactory.init()();
  if (v11 <= 3)
  {
    if (v11 > 1)
    {
      if (v11 == 2)
      {
        v13 = MEMORY[0x1E69E9338];
      }

      else
      {
        v13 = MEMORY[0x1E69E9368];
      }
    }

    else if (v11)
    {
      v13 = MEMORY[0x1E69E9360];
    }

    else
    {
      v13 = MEMORY[0x1E69E9350];
    }

    goto LABEL_16;
  }

  if (v11 > 5)
  {
    if (v11 != 6)
    {
      v14 = *(v2 + 104);
      if (v12)
      {
        v15 = MEMORY[0x1E69E9358];
      }

      else
      {
        v15 = MEMORY[0x1E69E9340];
      }

      goto LABEL_21;
    }

    v13 = MEMORY[0x1E69E9370];
  }

  else
  {
    if (v11 == 4)
    {
      v14 = *(v2 + 104);
      if (v12)
      {
        v15 = MEMORY[0x1E69E9348];
      }

      else
      {
        v15 = MEMORY[0x1E69E9330];
      }

LABEL_21:
      v14(v5, *v15, v1);
      goto LABEL_22;
    }

    v13 = MEMORY[0x1E69E9328];
  }

LABEL_16:
  (*(v2 + 104))(v5, *v13, v1);
LABEL_22:
  _RegexFactory.assertion<A>(_:)();
  (*(v2 + 8))(v5, v1);
  return (*(v7 + 8))(v10, v6);
}

void Anchor.inverted.getter(_BYTE *a1@<X8>)
{
  v2 = (v1[1] & 1) == 0;
  *a1 = *v1;
  a1[1] = v2;
}

uint64_t Lookahead.init<A>(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, void (*a5)(uint64_t, uint64_t, uint64_t, uint64_t)@<X4>, uint64_t a6@<X8>)
{
  v21 = a5;
  v22 = a6;
  v10 = type metadata accessor for _RegexFactory();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v10);
  v14 = &v21 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = type metadata accessor for Regex();
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  MEMORY[0x1EEE9AC00](v15);
  v19 = &v21 - v18;
  _RegexFactory.init()();
  v21(a1, a2, a3, a4);
  (*(*(a3 - 8) + 8))(a1, a3);
  (*(v11 + 8))(v14, v10);
  return (*(v16 + 32))(v22, v19, v15);
}

uint64_t Lookahead.init<A>(_:)@<X0>(void (*a1)(uint64_t)@<X0>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X4>, void (*a5)(char *, uint64_t, uint64_t, uint64_t)@<X5>, uint64_t a6@<X8>)
{
  v26 = a4;
  v27 = a5;
  v25 = a1;
  v28 = a6;
  v8 = *(a3 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](a1);
  v11 = &v23 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = type metadata accessor for _RegexFactory();
  v12 = *(v24 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x1EEE9AC00](v24);
  v15 = &v23 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = type metadata accessor for Regex();
  v17 = *(v16 - 8);
  v18 = *(v17 + 64);
  MEMORY[0x1EEE9AC00](v16);
  v20 = &v23 - v19;
  v21 = _RegexFactory.init()();
  v25(v21);
  v27(v11, a2, a3, v26);
  (*(v8 + 8))(v11, a3);
  (*(v12 + 8))(v15, v24);
  return (*(v17 + 32))(v28, v20, v16);
}

uint64_t static RegexComponentBuilder.buildBlock()()
{
  v0 = type metadata accessor for _RegexFactory();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x1EEE9AC00](v0);
  v4 = &v6 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  _RegexFactory.init()();
  _RegexFactory.empty<A>()();
  return (*(v1 + 8))(v4, v0);
}

uint64_t CharacterClass.regex.getter@<X0>(uint64_t a1@<X8>)
{
  v18[1] = a1;
  v2 = type metadata accessor for _RegexFactory();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2);
  v6 = v18 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s17_StringProcessing7DSLTreeV4AtomO14CharacterClassOSgMd, &_s17_StringProcessing7DSLTreeV4AtomO14CharacterClassOSgMR);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v10 = v18 - v9;
  v11 = type metadata accessor for DSLTree.Atom.CharacterClass();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x1EEE9AC00](v11);
  v15 = v18 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = type metadata accessor for CharacterClass();
  outlined init with copy of DSLTree.Atom.CharacterClass?(v1 + *(v16 + 20), v10, &_s17_StringProcessing7DSLTreeV4AtomO14CharacterClassOSgMd, &_s17_StringProcessing7DSLTreeV4AtomO14CharacterClassOSgMR);
  if ((*(v12 + 48))(v10, 1, v11) == 1)
  {
    outlined destroy of DSLTree.Atom.CharacterClass?(v10, &_s17_StringProcessing7DSLTreeV4AtomO14CharacterClassOSgMd, &_s17_StringProcessing7DSLTreeV4AtomO14CharacterClassOSgMR);
    _RegexFactory.init()();
    _RegexFactory.customCharacterClass<A>(_:)();
    return (*(v3 + 8))(v6, v2);
  }

  else
  {
    (*(v12 + 32))(v15, v10, v11);
    _RegexFactory.init()();
    _RegexFactory.characterClass<A>(_:)();
    (*(v3 + 8))(v6, v2);
    return (*(v12 + 8))(v15, v11);
  }
}

uint64_t __swift_instantiateConcreteTypeFromMangledNameV2(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    v4 = *a2;
    result = swift_getTypeByMangledNameInContext2();
    *a1 = result;
  }

  return result;
}

uint64_t type metadata accessor for CharacterClass()
{
  result = type metadata singleton initialization cache for CharacterClass;
  if (!type metadata singleton initialization cache for CharacterClass)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t CharacterClass.inverted.getter@<X0>(uint64_t a1@<X8>)
{
  v38 = a1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s17_StringProcessing7DSLTreeV4AtomO14CharacterClassOSgMd, &_s17_StringProcessing7DSLTreeV4AtomO14CharacterClassOSgMR);
  v3 = *(*(v2 - 8) + 64);
  v4 = MEMORY[0x1EEE9AC00](v2 - 8);
  v6 = &v33 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v33 - v7;
  v9 = type metadata accessor for DSLTree.Atom.CharacterClass();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  v12 = MEMORY[0x1EEE9AC00](v9);
  v14 = &v33 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v16 = &v33 - v15;
  v17 = type metadata accessor for CharacterClass();
  outlined init with copy of DSLTree.Atom.CharacterClass?(v1 + *(v17 + 20), v6, &_s17_StringProcessing7DSLTreeV4AtomO14CharacterClassOSgMd, &_s17_StringProcessing7DSLTreeV4AtomO14CharacterClassOSgMR);
  v18 = *(v10 + 48);
  if (v18(v6, 1, v9) == 1)
  {
    outlined destroy of DSLTree.Atom.CharacterClass?(v6, &_s17_StringProcessing7DSLTreeV4AtomO14CharacterClassOSgMd, &_s17_StringProcessing7DSLTreeV4AtomO14CharacterClassOSgMR);
    (*(v10 + 56))(v8, 1, 1, v9);
LABEL_4:
    outlined destroy of DSLTree.Atom.CharacterClass?(v8, &_s17_StringProcessing7DSLTreeV4AtomO14CharacterClassOSgMd, &_s17_StringProcessing7DSLTreeV4AtomO14CharacterClassOSgMR);
    v19 = v38;
    DSLTree.CustomCharacterClass.inverted.getter();
    v20 = *(v17 + 20);
    v21 = *(v10 + 56);
    v21(v19 + v20, 1, 1, v9);
    outlined destroy of DSLTree.Atom.CharacterClass?(v19 + v20, &_s17_StringProcessing7DSLTreeV4AtomO14CharacterClassOSgMd, &_s17_StringProcessing7DSLTreeV4AtomO14CharacterClassOSgMR);
    return (v21)(v19 + v20, 1, 1, v9);
  }

  v37 = v14;
  DSLTree.Atom.CharacterClass.inverted.getter();
  (*(v10 + 8))(v6, v9);
  if (v18(v8, 1, v9) == 1)
  {
    goto LABEL_4;
  }

  v23 = *(v10 + 32);
  v36 = v23;
  v23(v16, v8, v9);
  v24 = v37;
  v23(v37, v16, v9);
  v25 = *(v17 + 20);
  v34 = *(v10 + 56);
  v35 = v10 + 56;
  v26 = v38;
  v34(v38 + v25, 1, 1, v9);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy17_StringProcessing7DSLTreeV20CustomCharacterClassV6MemberOGMd, &_ss23_ContiguousArrayStorageCy17_StringProcessing7DSLTreeV20CustomCharacterClassV6MemberOGMR);
  v33 = type metadata accessor for DSLTree.CustomCharacterClass.Member();
  v27 = *(v33 - 8);
  v28 = *(v27 + 72);
  v29 = (*(v27 + 80) + 32) & ~*(v27 + 80);
  v30 = swift_allocObject();
  *(v30 + 16) = xmmword_1BACFF310;
  (*(v10 + 16))(v30 + v29, v24, v9);
  v31 = *MEMORY[0x1E69E9308];
  v32 = type metadata accessor for DSLTree.Atom();
  (*(*(v32 - 8) + 104))(v30 + v29, v31, v32);
  (*(v27 + 104))(v30 + v29, *MEMORY[0x1E69E92B0], v33);
  DSLTree.CustomCharacterClass.init(members:isInverted:)();
  outlined destroy of DSLTree.Atom.CharacterClass?(v26 + v25, &_s17_StringProcessing7DSLTreeV4AtomO14CharacterClassOSgMd, &_s17_StringProcessing7DSLTreeV4AtomO14CharacterClassOSgMR);
  v36(v26 + v25, v24, v9);
  return (v34)(v26 + v25, 0, 1, v9);
}

uint64_t static RegexComponent<>.any.getter@<X0>(unsigned int *a1@<X0>, uint64_t a2@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy17_StringProcessing7DSLTreeV20CustomCharacterClassV6MemberOGMd, &_ss23_ContiguousArrayStorageCy17_StringProcessing7DSLTreeV20CustomCharacterClassV6MemberOGMR);
  v4 = type metadata accessor for DSLTree.CustomCharacterClass.Member();
  v5 = *(v4 - 8);
  v6 = *(v5 + 72);
  v7 = (*(v5 + 80) + 32) & ~*(v5 + 80);
  v8 = swift_allocObject();
  *(v8 + 16) = xmmword_1BACFF310;
  v9 = *a1;
  v10 = type metadata accessor for DSLTree.Atom();
  (*(*(v10 - 8) + 104))(v8 + v7, v9, v10);
  (*(v5 + 104))(v8 + v7, *MEMORY[0x1E69E92B0], v4);
  DSLTree.CustomCharacterClass.init(members:isInverted:)();
  v11 = *(type metadata accessor for CharacterClass() + 20);
  v12 = type metadata accessor for DSLTree.Atom.CharacterClass();
  v14 = *(*(v12 - 8) + 56);
  (v14)((v12 - 8), a2 + v11, 1, 1, v12);
  outlined destroy of DSLTree.Atom.CharacterClass?(a2 + v11, &_s17_StringProcessing7DSLTreeV4AtomO14CharacterClassOSgMd, &_s17_StringProcessing7DSLTreeV4AtomO14CharacterClassOSgMR);

  return v14(a2 + v11, 1, 1, v12);
}

uint64_t static RegexComponent<>.anyGraphemeCluster.getter@<X0>(unsigned int *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for DSLTree.Atom.CharacterClass();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v20 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *a1;
  v10 = *(v5 + 104);
  v20 = v8;
  v10(v8, v9, v4);
  v11 = *(type metadata accessor for CharacterClass() + 20);
  v21 = *(v5 + 56);
  v21(a2 + v11, 1, 1, v4);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy17_StringProcessing7DSLTreeV20CustomCharacterClassV6MemberOGMd, &_ss23_ContiguousArrayStorageCy17_StringProcessing7DSLTreeV20CustomCharacterClassV6MemberOGMR);
  v12 = type metadata accessor for DSLTree.CustomCharacterClass.Member();
  v13 = *(v12 - 8);
  v14 = *(v13 + 72);
  v15 = (*(v13 + 80) + 32) & ~*(v13 + 80);
  v16 = swift_allocObject();
  *(v16 + 16) = xmmword_1BACFF310;
  (*(v5 + 16))(v16 + v15, v8, v4);
  v17 = *MEMORY[0x1E69E9308];
  v18 = type metadata accessor for DSLTree.Atom();
  (*(*(v18 - 8) + 104))(v16 + v15, v17, v18);
  (*(v13 + 104))(v16 + v15, *MEMORY[0x1E69E92B0], v12);
  DSLTree.CustomCharacterClass.init(members:isInverted:)();
  outlined destroy of DSLTree.Atom.CharacterClass?(a2 + v11, &_s17_StringProcessing7DSLTreeV4AtomO14CharacterClassOSgMd, &_s17_StringProcessing7DSLTreeV4AtomO14CharacterClassOSgMR);
  (*(v5 + 32))(a2 + v11, v20, v4);
  return (v21)(a2 + v11, 0, 1, v4);
}

uint64_t static RegexComponent<>.hexDigit.getter@<X0>(uint64_t a1@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy17_StringProcessing7DSLTreeV20CustomCharacterClassV6MemberOGMd, &_ss23_ContiguousArrayStorageCy17_StringProcessing7DSLTreeV20CustomCharacterClassV6MemberOGMR);
  v1 = type metadata accessor for DSLTree.CustomCharacterClass.Member();
  v2 = *(*(v1 - 8) + 72);
  v3 = *(v1 - 8);
  v4 = (*(v3 + 80) + 32) & ~*(v3 + 80);
  v22 = 2 * v2;
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_1BACFF320;
  v6 = (v5 + v4);
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s17_StringProcessing7DSLTreeV4AtomO_AEtMd, &_s17_StringProcessing7DSLTreeV4AtomO_AEtMR);
  v7 = (v6 + *(v21 + 48));
  *v6 = 65;
  v6[1] = 0xE100000000000000;
  v8 = *MEMORY[0x1E69E9318];
  v9 = type metadata accessor for DSLTree.Atom();
  v10 = *(*(v9 - 8) + 104);
  v10(v6, v8, v9);
  *v7 = 70;
  v7[1] = 0xE100000000000000;
  v10(v7, v8, v9);
  v24 = *MEMORY[0x1E69E92B8];
  v20 = *(v3 + 104);
  v20(v6);
  v11 = (v6 + v2);
  v12 = (v11 + *(v21 + 48));
  *v11 = 97;
  v11[1] = 0xE100000000000000;
  v10(v11, v8, v9);
  *v12 = 102;
  v12[1] = 0xE100000000000000;
  v10(v12, v8, v9);
  v13 = v11;
  v14 = v1;
  (v20)(v13, v24, v1);
  v15 = (v6 + v22);
  v16 = (v15 + *(v21 + 48));
  *v15 = 48;
  v15[1] = 0xE100000000000000;
  v10(v15, v8, v9);
  *v16 = 57;
  v16[1] = 0xE100000000000000;
  v10(v16, v8, v9);
  (v20)(v15, v24, v14);
  DSLTree.CustomCharacterClass.init(members:isInverted:)();
  v17 = *(type metadata accessor for CharacterClass() + 20);
  v18 = type metadata accessor for DSLTree.Atom.CharacterClass();
  v25 = *(*(v18 - 8) + 56);
  (v25)((v18 - 8), a1 + v17, 1, 1, v18);
  outlined destroy of DSLTree.Atom.CharacterClass?(a1 + v17, &_s17_StringProcessing7DSLTreeV4AtomO14CharacterClassOSgMd, &_s17_StringProcessing7DSLTreeV4AtomO14CharacterClassOSgMR);

  return v25(a1 + v17, 1, 1, v18);
}

uint64_t static RegexComponent<>.anyOf<A>(_:)@<X0>(unsigned int (*a1)(char *, uint64_t, uint64_t)@<X1>, uint64_t a2@<X2>, uint64_t a3@<X8>)
{
  return static RegexComponent<>.anyOf<A>(_:)(a1, a2, closure #1 in static RegexComponent<>.anyOf<A>(_:), a3);
}

{
  return static RegexComponent<>.anyOf<A>(_:)(a1, a2, closure #1 in static RegexComponent<>.anyOf<A>(_:), a3);
}

uint64_t closure #1 in static RegexComponent<>.anyOf<A>(_:)@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v3 = a1[1];
  *a2 = *a1;
  a2[1] = v3;
  v4 = *MEMORY[0x1E69E9318];
  v5 = type metadata accessor for DSLTree.Atom();
  (*(*(v5 - 8) + 104))(a2, v4, v5);
  v6 = *MEMORY[0x1E69E92B0];
  v7 = type metadata accessor for DSLTree.CustomCharacterClass.Member();
  (*(*(v7 - 8) + 104))(a2, v6, v7);
}

uint64_t _sSTsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lF(void (*a1)(char *, char *), uint64_t a2, unsigned int (*a3)(char *, uint64_t, uint64_t), char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v52 = a8;
  v9 = v8;
  v67 = a2;
  v68 = a4;
  v66 = a1;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v61 = *(AssociatedTypeWitness - 8);
  v15 = *(v61 + 64);
  v16 = MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v50 = &v49 - v17;
  v53 = a5;
  v51 = *(a5 - 8);
  v18 = *(v51 + 64);
  v19 = MEMORY[0x1EEE9AC00](v16);
  v63 = &v49 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v19);
  v64 = &v49 - v21;
  v22 = type metadata accessor for Optional();
  v54 = *(v22 - 8);
  v55 = v22;
  v23 = *(v54 + 64);
  v24 = MEMORY[0x1EEE9AC00](v22);
  v57 = &v49 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = MEMORY[0x1EEE9AC00](v24);
  v28 = &v49 - v27;
  v29 = *(*(a4 - 1) + 64);
  v30 = MEMORY[0x1EEE9AC00](v26);
  v56 = &v49 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32 = MEMORY[0x1EEE9AC00](v30);
  v62 = *(a3 - 1);
  v33 = *(v62 + 8);
  MEMORY[0x1EEE9AC00](v32);
  v35 = &v49 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  v60 = a6;
  v69 = swift_getAssociatedTypeWitness();
  v58 = *(v69 - 8);
  v36 = *(v58 + 64);
  MEMORY[0x1EEE9AC00](v69);
  v38 = &v49 - v37;
  v39 = dispatch thunk of Sequence.underestimatedCount.getter();
  v70 = ContiguousArray.init()();
  v65 = type metadata accessor for ContiguousArray();
  ContiguousArray.reserveCapacity(_:)(v39);
  (*(v62 + 2))(v35, v59, a3);
  v68 = v38;
  v62 = a3;
  result = dispatch thunk of Sequence.makeIterator()();
  if (v39 < 0)
  {
    __break(1u);
LABEL_17:
    __break(1u);
    return result;
  }

  if (v39)
  {
    v41 = (v61 + 48);
    v42 = (v61 + 8);
    swift_getAssociatedConformanceWitness();
    while (1)
    {
      dispatch thunk of IteratorProtocol.next()();
      result = (*v41)(v28, 1, AssociatedTypeWitness);
      if (result == 1)
      {
        goto LABEL_17;
      }

      v66(v28, v64);
      if (v9)
      {
        (*(v58 + 8))(v68, v69);

        (*(v51 + 32))(v52, v64, v53);
        return (*v42)(v28, AssociatedTypeWitness);
      }

      v9 = 0;
      (*v42)(v28, AssociatedTypeWitness);
      ContiguousArray.append(_:)();
      if (!--v39)
      {
        goto LABEL_9;
      }
    }
  }

  swift_getAssociatedConformanceWitness();
LABEL_9:
  v43 = v57;
  dispatch thunk of IteratorProtocol.next()();
  v44 = v43;
  v45 = v61;
  v46 = *(v61 + 48);
  v64 = (v61 + 48);
  v62 = v46;
  if (v46(v43, 1, AssociatedTypeWitness) == 1)
  {
LABEL_13:
    (*(v58 + 8))(v68, v69);
    (*(v54 + 8))(v44, v55);
    return v70;
  }

  else
  {
    v61 = *(v45 + 32);
    v47 = (v45 + 8);
    v48 = v50;
    while (1)
    {
      (v61)(v48, v44, AssociatedTypeWitness);
      v66(v48, v63);
      if (v9)
      {
        break;
      }

      v9 = 0;
      (*v47)(v48, AssociatedTypeWitness);
      ContiguousArray.append(_:)();
      dispatch thunk of IteratorProtocol.next()();
      if (v62(v44, 1, AssociatedTypeWitness) == 1)
      {
        goto LABEL_13;
      }
    }

    (*v47)(v48, AssociatedTypeWitness);
    (*(v58 + 8))(v68, v69);

    return (*(v51 + 32))(v52, v63, v53);
  }
}

uint64_t static RegexComponent<>.anyOf<A>(_:)@<X0>(unsigned int (*a1)(char *, uint64_t, uint64_t)@<X1>, uint64_t a2@<X2>, void (*a3)(char *, char *)@<X3>, uint64_t a4@<X8>)
{
  v8 = type metadata accessor for DSLTree.CustomCharacterClass.Member();
  _sSTsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lF(a3, 0, a1, v8, MEMORY[0x1E69E73E0], a2, MEMORY[0x1E69E7410], v9);
  DSLTree.CustomCharacterClass.init(members:isInverted:)();
  v10 = *(type metadata accessor for CharacterClass() + 20);
  v11 = type metadata accessor for DSLTree.Atom.CharacterClass();
  v13 = *(*(v11 - 8) + 56);
  (v13)((v11 - 8), a4 + v10, 1, 1, v11);
  outlined destroy of DSLTree.Atom.CharacterClass?(a4 + v10, &_s17_StringProcessing7DSLTreeV4AtomO14CharacterClassOSgMd, &_s17_StringProcessing7DSLTreeV4AtomO14CharacterClassOSgMR);

  return v13(a4 + v10, 1, 1, v11);
}

uint64_t closure #1 in static RegexComponent<>.anyOf<A>(_:)@<X0>(_DWORD *a1@<X0>, _DWORD *a2@<X8>)
{
  *a2 = *a1;
  v3 = *MEMORY[0x1E69E9320];
  v4 = type metadata accessor for DSLTree.Atom();
  (*(*(v4 - 8) + 104))(a2, v3, v4);
  v5 = *MEMORY[0x1E69E92B0];
  v6 = type metadata accessor for DSLTree.CustomCharacterClass.Member();
  return (*(*(v6 - 8) + 104))(a2, v5, v6);
}

uint64_t static CharacterClass.generalCategory(_:)@<X0>(uint64_t a1@<X8>)
{
  static DSLTree.CustomCharacterClass.generalCategory(_:)();
  v2 = *(type metadata accessor for CharacterClass() + 20);
  v3 = type metadata accessor for DSLTree.Atom.CharacterClass();
  v5 = *(*(v3 - 8) + 56);
  (v5)((v3 - 8), a1 + v2, 1, 1, v3);
  outlined destroy of DSLTree.Atom.CharacterClass?(a1 + v2, &_s17_StringProcessing7DSLTreeV4AtomO14CharacterClassOSgMd, &_s17_StringProcessing7DSLTreeV4AtomO14CharacterClassOSgMR);

  return v5(a1 + v2, 1, 1, v3);
}

uint64_t ... infix(_:_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v25 = a3;
  v27 = a2;
  v28 = a5;
  v26 = type metadata accessor for DSLTree.CustomCharacterClass.Member();
  v8 = *(v26 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v26);
  v11 = (&v25 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  v12 = (v11 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s17_StringProcessing7DSLTreeV4AtomO_AEtMd, &_s17_StringProcessing7DSLTreeV4AtomO_AEtMR) + 48));
  *v11 = a1;
  v11[1] = a2;
  v13 = *MEMORY[0x1E69E9318];
  v14 = type metadata accessor for DSLTree.Atom();
  v15 = *(*(v14 - 8) + 104);
  v15(v11, v13, v14);
  *v12 = v25;
  v12[1] = a4;
  v15(v12, v13, v14);
  v16 = v26;
  (*(v8 + 104))(v11, *MEMORY[0x1E69E92B8], v26);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy17_StringProcessing7DSLTreeV20CustomCharacterClassV6MemberOGMd, &_ss23_ContiguousArrayStorageCy17_StringProcessing7DSLTreeV20CustomCharacterClassV6MemberOGMR);
  v17 = *(v8 + 72);
  v18 = (*(v8 + 80) + 32) & ~*(v8 + 80);
  v19 = swift_allocObject();
  *(v19 + 16) = xmmword_1BACFF310;
  (*(v8 + 32))(v19 + v18, v11, v16);

  v20 = v28;
  DSLTree.CustomCharacterClass.init(members:isInverted:)();
  v21 = *(type metadata accessor for CharacterClass() + 20);
  v22 = type metadata accessor for DSLTree.Atom.CharacterClass();
  v23 = *(*(v22 - 8) + 56);
  v23(v20 + v21, 1, 1, v22);
  outlined destroy of DSLTree.Atom.CharacterClass?(v20 + v21, &_s17_StringProcessing7DSLTreeV4AtomO14CharacterClassOSgMd, &_s17_StringProcessing7DSLTreeV4AtomO14CharacterClassOSgMR);
  return (v23)(v20 + v21, 1, 1, v22);
}

uint64_t ... infix(_:_:)@<X0>(int a1@<W0>, int a2@<W1>, uint64_t a3@<X8>)
{
  HIDWORD(v21) = a2;
  v22 = a3;
  v4 = type metadata accessor for DSLTree.CustomCharacterClass.Member();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = (&v21 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v9 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s17_StringProcessing7DSLTreeV4AtomO_AEtMd, &_s17_StringProcessing7DSLTreeV4AtomO_AEtMR) + 48);
  *v8 = a1;
  v10 = *MEMORY[0x1E69E9320];
  v11 = type metadata accessor for DSLTree.Atom();
  v12 = *(*(v11 - 8) + 104);
  v12(v8, v10, v11);
  *(v8 + v9) = HIDWORD(v21);
  v12((v8 + v9), v10, v11);
  (*(v5 + 104))(v8, *MEMORY[0x1E69E92B8], v4);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy17_StringProcessing7DSLTreeV20CustomCharacterClassV6MemberOGMd, &_ss23_ContiguousArrayStorageCy17_StringProcessing7DSLTreeV20CustomCharacterClassV6MemberOGMR);
  v13 = *(v5 + 72);
  v14 = (*(v5 + 80) + 32) & ~*(v5 + 80);
  v15 = swift_allocObject();
  *(v15 + 16) = xmmword_1BACFF310;
  (*(v5 + 32))(v15 + v14, v8, v4);
  v16 = v22;
  DSLTree.CustomCharacterClass.init(members:isInverted:)();
  v17 = *(type metadata accessor for CharacterClass() + 20);
  v18 = type metadata accessor for DSLTree.Atom.CharacterClass();
  v19 = *(*(v18 - 8) + 56);
  v19(v16 + v17, 1, 1, v18);
  outlined destroy of DSLTree.Atom.CharacterClass?(v16 + v17, &_s17_StringProcessing7DSLTreeV4AtomO14CharacterClassOSgMd, &_s17_StringProcessing7DSLTreeV4AtomO14CharacterClassOSgMR);
  return (v19)(v16 + v17, 1, 1, v18);
}

uint64_t RegexComponent<>.init(_:_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v48 = a1;
  v5 = type metadata accessor for CharacterClass();
  v47 = *(v5 - 8);
  v6 = *(v47 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v8 = v43 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for DSLTree.CustomCharacterClass.Member();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v9);
  v13 = v43 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss15CollectionOfOneVy12RegexBuilder14CharacterClassVGMd, &_ss15CollectionOfOneVy12RegexBuilder14CharacterClassVGMR);
  v15 = *(*(v14 - 8) + 64);
  v16 = MEMORY[0x1EEE9AC00](v14 - 8);
  v18 = v43 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v20 = v43 - v19;
  v21 = *(a2 + 16);
  if (v21)
  {
    v44 = v5;
    v45 = a3;
    outlined init with take of CharacterClass(v48, v43 - v19);
    v22 = MEMORY[0x1E69E7CC0];
    v49 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v21 + 1, 0, MEMORY[0x1E69E7CC0]);
    outlined init with take of CollectionOfOne<CharacterClass>(v20, v18, &_ss15CollectionOfOneVy12RegexBuilder14CharacterClassVGMd, &_ss15CollectionOfOneVy12RegexBuilder14CharacterClassVGMR);
    specialized Array.append<A>(contentsOf:)(v18);
    specialized Array.append<A>(contentsOf:)(a2);
    v23 = v49;
    v24 = *(v49 + 16);
    if (v24)
    {
      v49 = v22;
      specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v24, 0);
      v25 = v49;
      v26 = *(v47 + 80);
      v43[1] = v23;
      v27 = v23 + ((v26 + 32) & ~v26);
      v48 = *(v47 + 72);
      LODWORD(v47) = *MEMORY[0x1E69E92C0];
      v46 = v10 + 32;
      do
      {
        outlined init with copy of CharacterClass(v27, v8);
        v28 = type metadata accessor for DSLTree.CustomCharacterClass();
        (*(*(v28 - 8) + 16))(v13, v8, v28);
        outlined destroy of CharacterClass(v8);
        (*(v10 + 104))(v13, v47, v9);
        v49 = v25;
        v30 = *(v25 + 16);
        v29 = *(v25 + 24);
        if (v30 >= v29 >> 1)
        {
          specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(v29 > 1, v30 + 1, 1);
          v25 = v49;
        }

        *(v25 + 16) = v30 + 1;
        (*(v10 + 32))(v25 + ((*(v10 + 80) + 32) & ~*(v10 + 80)) + *(v10 + 72) * v30, v13, v9);
        v27 += v48;
        --v24;
      }

      while (v24);
    }

    v39 = v45;
    DSLTree.CustomCharacterClass.init(members:isInverted:)();
    v40 = *(v44 + 20);
    v41 = type metadata accessor for DSLTree.Atom.CharacterClass();
    v42 = *(*(v41 - 8) + 56);
    v42(v39 + v40, 1, 1, v41);
    outlined destroy of DSLTree.Atom.CharacterClass?(v39 + v40, &_s17_StringProcessing7DSLTreeV4AtomO14CharacterClassOSgMd, &_s17_StringProcessing7DSLTreeV4AtomO14CharacterClassOSgMR);
    return (v42)(v39 + v40, 1, 1, v41);
  }

  else
  {

    v31 = type metadata accessor for DSLTree.CustomCharacterClass();
    v32 = v48;
    (*(*(v31 - 8) + 16))(a3, v48, v31);
    outlined destroy of CharacterClass(v32);
    v33 = *(v5 + 20);
    v34 = type metadata accessor for DSLTree.Atom.CharacterClass();
    v35 = *(v34 - 8);
    v36 = *(v35 + 56);
    v47 = v35 + 56;
    v48 = v36;
    v36(a3 + v33, 1, 1, v34);
    outlined destroy of DSLTree.Atom.CharacterClass?(a3 + v33, &_s17_StringProcessing7DSLTreeV4AtomO14CharacterClassOSgMd, &_s17_StringProcessing7DSLTreeV4AtomO14CharacterClassOSgMR);
    v37 = v48;

    return v37(a3 + v33, 1, 1, v34);
  }
}

uint64_t outlined init with take of CharacterClass(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for CharacterClass();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t CharacterClass.union(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy17_StringProcessing7DSLTreeV20CustomCharacterClassV6MemberOGMd, &_ss23_ContiguousArrayStorageCy17_StringProcessing7DSLTreeV20CustomCharacterClassV6MemberOGMR);
  v3 = type metadata accessor for DSLTree.CustomCharacterClass.Member();
  v4 = *(v3 - 8);
  v5 = *(v4 + 72);
  v6 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_1BACFF330;
  v8 = v7 + v6;
  v9 = type metadata accessor for DSLTree.CustomCharacterClass();
  v10 = *(*(v9 - 8) + 16);
  v10(v8, v2, v9);
  v11 = *MEMORY[0x1E69E92C0];
  v12 = *(v4 + 104);
  v12(v8, v11, v3);
  v10(v8 + v5, a1, v9);
  v12(v8 + v5, v11, v3);
  DSLTree.CustomCharacterClass.init(members:isInverted:)();
  v13 = *(type metadata accessor for CharacterClass() + 20);
  v14 = type metadata accessor for DSLTree.Atom.CharacterClass();
  v18 = *(*(v14 - 8) + 56);
  (v18)((v14 - 8), a2 + v13, 1, 1, v14);
  outlined destroy of DSLTree.Atom.CharacterClass?(a2 + v13, &_s17_StringProcessing7DSLTreeV4AtomO14CharacterClassOSgMd, &_s17_StringProcessing7DSLTreeV4AtomO14CharacterClassOSgMR);

  return v18(a2 + v13, 1, 1, v14);
}

uint64_t CharacterClass.intersection(_:)@<X0>(uint64_t a1@<X0>, unsigned int *a2@<X1>, uint64_t a3@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy17_StringProcessing7DSLTreeV20CustomCharacterClassV6MemberOGMd, &_ss23_ContiguousArrayStorageCy17_StringProcessing7DSLTreeV20CustomCharacterClassV6MemberOGMR);
  v18 = type metadata accessor for DSLTree.CustomCharacterClass.Member();
  v4 = *(v18 - 8);
  v5 = *(v4 + 72);
  v6 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_1BACFF310;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s17_StringProcessing7DSLTreeV20CustomCharacterClassV_AEtMd, &_s17_StringProcessing7DSLTreeV20CustomCharacterClassV_AEtMR);
  v9 = swift_allocBox();
  v11 = v10;
  v12 = *(v8 + 48);
  v13 = type metadata accessor for DSLTree.CustomCharacterClass();
  v14 = *(*(v13 - 8) + 16);
  v14(v11, v19, v13);
  v14(v11 + v12, a1, v13);
  *(v7 + v6) = v9;
  (*(v4 + 104))(v7 + v6, *a2, v18);
  DSLTree.CustomCharacterClass.init(members:isInverted:)();
  v15 = *(type metadata accessor for CharacterClass() + 20);
  v16 = type metadata accessor for DSLTree.Atom.CharacterClass();
  v22 = *(*(v16 - 8) + 56);
  (v22)((v16 - 8), a3 + v15, 1, 1, v16);
  outlined destroy of DSLTree.Atom.CharacterClass?(a3 + v15, &_s17_StringProcessing7DSLTreeV4AtomO14CharacterClassOSgMd, &_s17_StringProcessing7DSLTreeV4AtomO14CharacterClassOSgMR);

  return v22(a3 + v15, 1, 1, v16);
}

uint64_t Regex.init<A>(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = *(a4 - 8);
  v6 = *(v5 + 64);
  v7 = MEMORY[0x1EEE9AC00](a1);
  v9 = &v11 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7();
  dispatch thunk of RegexComponent.regex.getter();
  return (*(v5 + 8))(v9, a4);
}

void String.regex.getter()
{

  JUMPOUT(0x1BFB01450);
}

void protocol witness for RegexComponent.regex.getter in conformance String()
{
  v2 = *v0;
  v1 = v0[1];

  JUMPOUT(0x1BFB01450);
}

void Substring.regex.getter()
{
  MEMORY[0x1BFB01560]();

  JUMPOUT(0x1BFB01450);
}

void protocol witness for RegexComponent.regex.getter in conformance Substring()
{
  MEMORY[0x1BFB01560](*v0, v0[1], v0[2], v0[3]);

  JUMPOUT(0x1BFB01450);
}

uint64_t Character.regex.getter()
{
  v0 = type metadata accessor for _RegexFactory();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x1EEE9AC00](v0);
  v4 = &v6 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  _RegexFactory.init()();
  _RegexFactory.char<A>(_:)();
  return (*(v1 + 8))(v4, v0);
}

uint64_t protocol witness for RegexComponent.regex.getter in conformance Character()
{
  v1 = type metadata accessor for _RegexFactory();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x1EEE9AC00](v1);
  v5 = &v9 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *v0;
  v6 = v0[1];
  _RegexFactory.init()();
  _RegexFactory.char<A>(_:)();
  return (*(v2 + 8))(v5, v1);
}

uint64_t Unicode.Scalar.regex.getter()
{
  v0 = type metadata accessor for _RegexFactory();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x1EEE9AC00](v0);
  v4 = &v6 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  _RegexFactory.init()();
  _RegexFactory.scalar<A>(_:)();
  return (*(v1 + 8))(v4, v0);
}

uint64_t protocol witness for RegexComponent.regex.getter in conformance Unicode.Scalar()
{
  v1 = type metadata accessor for _RegexFactory();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x1EEE9AC00](v1);
  v5 = &v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *v0;
  _RegexFactory.init()();
  _RegexFactory.scalar<A>(_:)();
  return (*(v2 + 8))(v5, v1);
}

uint64_t One.init<A>(_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  dispatch thunk of RegexComponent.regex.getter();
  v5 = *(*(a3 - 8) + 8);

  return v5(a1, a3);
}

uint64_t static AlternationBuilder.buildPartialBlock<A>(first:)@<X0>(uint64_t a1@<X8>)
{
  swift_getAssociatedTypeWitness();
  v2 = type metadata accessor for Regex();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2);
  v6 = &v8 - v5;
  dispatch thunk of RegexComponent.regex.getter();
  return (*(v3 + 32))(a1, v6, v2);
}

uint64_t Lookahead.regex.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 16);
  v5 = type metadata accessor for Regex();
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v2, v5);
}

uint64_t Lookahead.regex.setter(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 16);
  v5 = type metadata accessor for Regex();
  v6 = *(*(v5 - 8) + 40);

  return v6(v2, a1, v5);
}

uint64_t Lookahead.init(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for Regex();
  v5 = *(*(v4 - 8) + 32);

  return v5(a2, a1, v4);
}

uint64_t Reference.regex.getter(uint64_t a1)
{
  v2 = type metadata accessor for _RegexFactory();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2);
  v6 = &v9 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  _RegexFactory.init()();
  v7 = *(a1 + 16);
  _RegexFactory.symbolicReference<A>(_:)();
  return (*(v3 + 8))(v6, v2);
}

size_t specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(size_t a1, int64_t a2, char a3)
{
  result = specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, *v3);
  *v3 = result;
  return result;
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
  v10 = *(type metadata accessor for DSLTree.CustomCharacterClass.Member() - 8);
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
  v15 = *(type metadata accessor for DSLTree.CustomCharacterClass.Member() - 8);
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
  result = type metadata accessor for CharacterClass();
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

uint64_t specialized Array.append<A>(contentsOf:)(int64_t a1)
{
  v2 = v1;
  v48 = type metadata accessor for CharacterClass();
  v4 = *(v48 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v48);
  v46 = v42 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s12RegexBuilder14CharacterClassVSgMd, &_s12RegexBuilder14CharacterClassVSgMR);
  v8 = *(*(v7 - 8) + 64);
  v9 = MEMORY[0x1EEE9AC00](v7 - 8);
  v11 = v42 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x1EEE9AC00](v9);
  v47 = v42 - v13;
  MEMORY[0x1EEE9AC00](v12);
  v15 = v42 - v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss15CollectionOfOneV8IteratorVy12RegexBuilder14CharacterClassV_GMd, &_ss15CollectionOfOneV8IteratorVy12RegexBuilder14CharacterClassV_GMR);
  v17 = *(*(v16 - 8) + 64);
  MEMORY[0x1EEE9AC00](v16 - 8);
  v19 = (v42 - v18);
  v20 = *v2;
  v21 = *(*v2 + 16);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  if (!isUniquelyReferenced_nonNull_native || (v23 = v20[3] >> 1, v23 <= v21))
  {
    v20 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(isUniquelyReferenced_nonNull_native, v21 + 1, 1, v20);
    v23 = v20[3] >> 1;
  }

  v24 = v20[2];
  v25 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v26 = *(v4 + 72);
  v27 = v23 - v24;
  v28 = specialized Sequence._copySequenceContents(initializing:)(v19, v20 + v25 + v26 * v24, v23 - v24);
  if (v28 < 1)
  {
    __break(1u);
    goto LABEL_10;
  }

  v29 = v20[2];
  a1 = v29 + v28;
  if (__OFADD__(v29, v28))
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  v20[2] = a1;
  if (v28 != v27)
  {
    v30 = &_ss15CollectionOfOneV8IteratorVy12RegexBuilder14CharacterClassV_GMd;
    v31 = &_ss15CollectionOfOneV8IteratorVy12RegexBuilder14CharacterClassV_GMR;
    v32 = v19;
    goto LABEL_8;
  }

LABEL_11:
  outlined init with take of CollectionOfOne<CharacterClass>(v19, v15, &_s12RegexBuilder14CharacterClassVSgMd, &_s12RegexBuilder14CharacterClassVSgMR);
  v42[0] = *(v4 + 56);
  v42[1] = v4 + 56;
  (v42[0])(v19, 1, 1, v48);
  v34 = v47;
  outlined init with copy of DSLTree.Atom.CharacterClass?(v15, v47, &_s12RegexBuilder14CharacterClassVSgMd, &_s12RegexBuilder14CharacterClassVSgMR);
  v44 = *(v4 + 48);
  if (v44(v34, 1, v48) == 1)
  {
    v35 = v47;
  }

  else
  {
    v35 = v47;
    do
    {
      outlined destroy of DSLTree.Atom.CharacterClass?(v35, &_s12RegexBuilder14CharacterClassVSgMd, &_s12RegexBuilder14CharacterClassVSgMR);
      v37 = v20[3];
      v38 = v37 >> 1;
      if ((v37 >> 1) < a1 + 1)
      {
        v20 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(v37 > 1, a1 + 1, 1, v20);
        v38 = v20[3] >> 1;
      }

      outlined init with copy of DSLTree.Atom.CharacterClass?(v15, v11, &_s12RegexBuilder14CharacterClassVSgMd, &_s12RegexBuilder14CharacterClassVSgMR);
      if (v44(v11, 1, v48) == 1)
      {
LABEL_15:
        outlined destroy of DSLTree.Atom.CharacterClass?(v11, &_s12RegexBuilder14CharacterClassVSgMd, &_s12RegexBuilder14CharacterClassVSgMR);
        v36 = a1;
      }

      else
      {
        if (a1 <= v38)
        {
          v39 = v38;
        }

        else
        {
          v39 = a1;
        }

        v43 = v39;
        v45 = v20 + v25 + v26 * a1;
        v40 = v46;
        while (1)
        {
          outlined init with take of CharacterClass(v11, v40);
          if (v43 == a1)
          {
            break;
          }

          outlined destroy of DSLTree.Atom.CharacterClass?(v15, &_s12RegexBuilder14CharacterClassVSgMd, &_s12RegexBuilder14CharacterClassVSgMR);
          outlined init with take of CharacterClass(v40, v45);
          ++a1;
          outlined init with take of CollectionOfOne<CharacterClass>(v19, v15, &_s12RegexBuilder14CharacterClassVSgMd, &_s12RegexBuilder14CharacterClassVSgMR);
          (v42[0])(v19, 1, 1, v48);
          outlined init with copy of DSLTree.Atom.CharacterClass?(v15, v11, &_s12RegexBuilder14CharacterClassVSgMd, &_s12RegexBuilder14CharacterClassVSgMR);
          v41 = v44(v11, 1, v48);
          v45 += v26;
          if (v41 == 1)
          {
            goto LABEL_15;
          }
        }

        outlined destroy of CharacterClass(v40);
        v36 = v43;
        a1 = v43;
      }

      v20[2] = v36;
      v35 = v47;
      outlined init with copy of DSLTree.Atom.CharacterClass?(v15, v47, &_s12RegexBuilder14CharacterClassVSgMd, &_s12RegexBuilder14CharacterClassVSgMR);
    }

    while (v44(v35, 1, v48) != 1);
  }

  outlined destroy of DSLTree.Atom.CharacterClass?(v15, &_s12RegexBuilder14CharacterClassVSgMd, &_s12RegexBuilder14CharacterClassVSgMR);
  outlined destroy of DSLTree.Atom.CharacterClass?(v19, &_ss15CollectionOfOneV8IteratorVy12RegexBuilder14CharacterClassV_GMd, &_ss15CollectionOfOneV8IteratorVy12RegexBuilder14CharacterClassV_GMR);
  v32 = v35;
  v30 = &_s12RegexBuilder14CharacterClassVSgMd;
  v31 = &_s12RegexBuilder14CharacterClassVSgMR;
LABEL_8:
  result = outlined destroy of DSLTree.Atom.CharacterClass?(v32, v30, v31);
  *v2 = v20;
  return result;
}

size_t specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(size_t result, int64_t a2, char a3, void *a4)
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

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy12RegexBuilder14CharacterClassVGMd, &_ss23_ContiguousArrayStorageCy12RegexBuilder14CharacterClassVGMR);
  v10 = *(type metadata accessor for CharacterClass() - 8);
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
  v15 = *(type metadata accessor for CharacterClass() - 8);
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

uint64_t outlined init with copy of CharacterClass(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for CharacterClass();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t outlined destroy of CharacterClass(uint64_t a1)
{
  v2 = type metadata accessor for CharacterClass();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t instantiation function for generic protocol witness table for Lookahead<A>(uint64_t a1)
{
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

uint64_t instantiation function for generic protocol witness table for NegativeLookahead<A>(uint64_t a1)
{
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

uint64_t instantiation function for generic protocol witness table for OneOrMore<A>(uint64_t a1)
{
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

uint64_t instantiation function for generic protocol witness table for ZeroOrMore<A>(uint64_t a1)
{
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

uint64_t instantiation function for generic protocol witness table for Optionally<A>(uint64_t a1)
{
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

uint64_t instantiation function for generic protocol witness table for Repeat<A>(uint64_t a1)
{
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

uint64_t instantiation function for generic protocol witness table for ChoiceOf<A>(uint64_t a1)
{
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

uint64_t instantiation function for generic protocol witness table for Capture<A>(uint64_t a1)
{
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

uint64_t instantiation function for generic protocol witness table for TryCapture<A>(uint64_t a1)
{
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

uint64_t instantiation function for generic protocol witness table for Local<A>(uint64_t a1)
{
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

uint64_t getEnumTagSinglePayload for Anchor(unsigned __int16 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFF)
  {
    goto LABEL_17;
  }

  if (a2 + 65281 <= 0xFFFEFFFF)
  {
    v2 = 2;
  }

  else
  {
    v2 = 4;
  }

  if (a2 + 65281 < 0xFF0000)
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
      return (*a1 | (v4 << 16)) - 65281;
    }
  }

  else
  {
    if (v3 == 2)
    {
      v4 = a1[1];
      if (!a1[1])
      {
        goto LABEL_17;
      }

      return (*a1 | (v4 << 16)) - 65281;
    }

    v4 = *(a1 + 2);
    if (*(a1 + 2))
    {
      return (*a1 | (v4 << 16)) - 65281;
    }
  }

LABEL_17:
  v6 = *(a1 + 1);
  v7 = v6 >= 2;
  v8 = (v6 + 2147483646) & 0x7FFFFFFF;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for Anchor(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 65281 <= 0xFFFEFFFF)
  {
    v3 = 2;
  }

  else
  {
    v3 = 4;
  }

  if (a3 + 65281 < 0xFF0000)
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
    v5 = ((a2 - 255) >> 16) + 1;
    *result = a2 - 255;
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *(result + 2) = v5;
      }

      else
      {
        *(result + 2) = v5;
      }
    }

    else if (v4)
    {
      *(result + 2) = v5;
    }

    return result;
  }

  if (v4 > 1)
  {
    if (v4 != 2)
    {
      *(result + 2) = 0;
      if (a2)
      {
        goto LABEL_20;
      }

      return result;
    }

    *(result + 2) = 0;
  }

  else if (v4)
  {
    *(result + 2) = 0;
    if (!a2)
    {
      return result;
    }

LABEL_20:
    *(result + 1) = a2 + 1;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

char *initializeBufferWithCopyOfBuffer for CharacterClass(char *a1, char *a2, uint64_t a3)
{
  v5 = *(*(a3 - 8) + 80);
  if ((v5 & 0x20000) != 0)
  {
    v12 = *a2;
    *a1 = *a2;
    a1 = (v12 + ((v5 + 16) & ~v5));
  }

  else
  {
    v7 = type metadata accessor for DSLTree.CustomCharacterClass();
    (*(*(v7 - 8) + 16))(a1, a2, v7);
    v8 = *(a3 + 20);
    v9 = type metadata accessor for DSLTree.Atom.CharacterClass();
    v10 = *(v9 - 8);
    if ((*(v10 + 48))(&a2[v8], 1, v9))
    {
      v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s17_StringProcessing7DSLTreeV4AtomO14CharacterClassOSgMd, &_s17_StringProcessing7DSLTreeV4AtomO14CharacterClassOSgMR);
      memcpy(&a1[v8], &a2[v8], *(*(v11 - 8) + 64));
    }

    else
    {
      (*(v10 + 16))(&a1[v8], &a2[v8], v9);
      (*(v10 + 56))(&a1[v8], 0, 1, v9);
    }
  }

  return a1;
}

uint64_t destroy for CharacterClass(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for DSLTree.CustomCharacterClass();
  (*(*(v4 - 8) + 8))(a1, v4);
  v5 = *(a2 + 20);
  v6 = type metadata accessor for DSLTree.Atom.CharacterClass();
  v9 = *(v6 - 8);
  result = (*(v9 + 48))(a1 + v5, 1, v6);
  if (!result)
  {
    v8 = *(v9 + 8);

    return v8(a1 + v5, v6);
  }

  return result;
}

uint64_t initializeWithCopy for CharacterClass(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for DSLTree.CustomCharacterClass();
  (*(*(v6 - 8) + 16))(a1, a2, v6);
  v7 = *(a3 + 20);
  v8 = type metadata accessor for DSLTree.Atom.CharacterClass();
  v9 = *(v8 - 8);
  if ((*(v9 + 48))(a2 + v7, 1, v8))
  {
    v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s17_StringProcessing7DSLTreeV4AtomO14CharacterClassOSgMd, &_s17_StringProcessing7DSLTreeV4AtomO14CharacterClassOSgMR);
    memcpy((a1 + v7), (a2 + v7), *(*(v10 - 8) + 64));
  }

  else
  {
    (*(v9 + 16))(a1 + v7, a2 + v7, v8);
    (*(v9 + 56))(a1 + v7, 0, 1, v8);
  }

  return a1;
}

uint64_t assignWithCopy for CharacterClass(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for DSLTree.CustomCharacterClass();
  (*(*(v6 - 8) + 24))(a1, a2, v6);
  v7 = *(a3 + 20);
  v8 = type metadata accessor for DSLTree.Atom.CharacterClass();
  v9 = *(v8 - 8);
  v10 = *(v9 + 48);
  v11 = v10(a1 + v7, 1, v8);
  v12 = v10(a2 + v7, 1, v8);
  if (!v11)
  {
    if (!v12)
    {
      (*(v9 + 24))(a1 + v7, a2 + v7, v8);
      return a1;
    }

    (*(v9 + 8))(a1 + v7, v8);
    goto LABEL_6;
  }

  if (v12)
  {
LABEL_6:
    v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s17_StringProcessing7DSLTreeV4AtomO14CharacterClassOSgMd, &_s17_StringProcessing7DSLTreeV4AtomO14CharacterClassOSgMR);
    memcpy((a1 + v7), (a2 + v7), *(*(v13 - 8) + 64));
    return a1;
  }

  (*(v9 + 16))(a1 + v7, a2 + v7, v8);
  (*(v9 + 56))(a1 + v7, 0, 1, v8);
  return a1;
}

uint64_t initializeWithTake for CharacterClass(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for DSLTree.CustomCharacterClass();
  (*(*(v6 - 8) + 32))(a1, a2, v6);
  v7 = *(a3 + 20);
  v8 = type metadata accessor for DSLTree.Atom.CharacterClass();
  v9 = *(v8 - 8);
  if ((*(v9 + 48))(a2 + v7, 1, v8))
  {
    v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s17_StringProcessing7DSLTreeV4AtomO14CharacterClassOSgMd, &_s17_StringProcessing7DSLTreeV4AtomO14CharacterClassOSgMR);
    memcpy((a1 + v7), (a2 + v7), *(*(v10 - 8) + 64));
  }

  else
  {
    (*(v9 + 32))(a1 + v7, a2 + v7, v8);
    (*(v9 + 56))(a1 + v7, 0, 1, v8);
  }

  return a1;
}

uint64_t assignWithTake for CharacterClass(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for DSLTree.CustomCharacterClass();
  (*(*(v6 - 8) + 40))(a1, a2, v6);
  v7 = *(a3 + 20);
  v8 = type metadata accessor for DSLTree.Atom.CharacterClass();
  v9 = *(v8 - 8);
  v10 = *(v9 + 48);
  v11 = v10(a1 + v7, 1, v8);
  v12 = v10(a2 + v7, 1, v8);
  if (!v11)
  {
    if (!v12)
    {
      (*(v9 + 40))(a1 + v7, a2 + v7, v8);
      return a1;
    }

    (*(v9 + 8))(a1 + v7, v8);
    goto LABEL_6;
  }

  if (v12)
  {
LABEL_6:
    v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s17_StringProcessing7DSLTreeV4AtomO14CharacterClassOSgMd, &_s17_StringProcessing7DSLTreeV4AtomO14CharacterClassOSgMR);
    memcpy((a1 + v7), (a2 + v7), *(*(v13 - 8) + 64));
    return a1;
  }

  (*(v9 + 32))(a1 + v7, a2 + v7, v8);
  (*(v9 + 56))(a1 + v7, 0, 1, v8);
  return a1;
}

uint64_t sub_1BACFD88C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for DSLTree.CustomCharacterClass();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s17_StringProcessing7DSLTreeV4AtomO14CharacterClassOSgMd, &_s17_StringProcessing7DSLTreeV4AtomO14CharacterClassOSgMR);
    v11 = *(*(v10 - 8) + 48);
    v12 = a1 + *(a3 + 20);

    return v11(v12, a2, v10);
  }
}

uint64_t sub_1BACFD99C(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = type metadata accessor for DSLTree.CustomCharacterClass();
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, v8);
  }

  else
  {
    v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s17_StringProcessing7DSLTreeV4AtomO14CharacterClassOSgMd, &_s17_StringProcessing7DSLTreeV4AtomO14CharacterClassOSgMR);
    v13 = *(*(v12 - 8) + 56);
    v14 = a1 + *(a4 + 20);

    return v13(v14, a2, a2, v12);
  }
}

void type metadata completion function for CharacterClass()
{
  v0 = type metadata accessor for DSLTree.CustomCharacterClass();
  if (v1 <= 0x3F)
  {
    v4 = *(v0 - 8) + 64;
    type metadata accessor for DSLTree.Atom.CharacterClass?();
    if (v3 <= 0x3F)
    {
      v5 = *(v2 - 8) + 64;
      swift_initStructMetadata();
    }
  }
}

void type metadata accessor for DSLTree.Atom.CharacterClass?()
{
  if (!lazy cache variable for type metadata for DSLTree.Atom.CharacterClass?)
  {
    type metadata accessor for DSLTree.Atom.CharacterClass();
    v0 = type metadata accessor for Optional();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for DSLTree.Atom.CharacterClass?);
    }
  }
}

uint64_t getEnumTagSinglePayload for RegexComponentBuilder(unsigned int *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if ((a2 + 1) >= 0x10000)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 1) < 0x100)
  {
    v3 = 1;
  }

  else
  {
    v3 = v2;
  }

  if (v3 == 4)
  {
    return *a1;
  }

  if (v3 == 2)
  {
    return *a1;
  }

  return *a1;
}

_WORD *storeEnumTagSinglePayload for RegexComponentBuilder(_WORD *result, int a2, int a3)
{
  if ((a3 + 1) >= 0x10000)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 1) < 0x100)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (!a3)
  {
    v4 = 0;
  }

  if (a2)
  {
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *result = a2;
      }

      else
      {
        *result = a2;
      }
    }

    else if (v4)
    {
      *result = a2;
    }
  }

  else if (v4 > 1)
  {
    if (v4 == 2)
    {
      *result = 0;
    }

    else
    {
      *result = 0;
    }
  }

  else if (v4)
  {
    *result = 0;
  }

  return result;
}

uint64_t type metadata completion function for Lookahead(uint64_t a1)
{
  v1 = *(a1 + 16);
  result = type metadata accessor for Regex();
  if (v3 <= 0x3F)
  {
    v4 = *(result - 8) + 64;
    swift_initStructMetadata();
    return 0;
  }

  return result;
}

uint64_t initializeBufferWithCopyOfBuffer for Lookahead(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a3 + 16);
  v6 = type metadata accessor for Regex();
  v7 = **(v6 - 8);

  return v7(a1, a2, v6);
}

uint64_t destroy for Lookahead(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 16);
  v4 = type metadata accessor for Regex();
  v5 = *(*(v4 - 8) + 8);

  return v5(a1, v4);
}

uint64_t initializeWithCopy for Lookahead(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a3 + 16);
  v6 = type metadata accessor for Regex();
  (*(*(v6 - 8) + 16))(a1, a2, v6);
  return a1;
}

uint64_t assignWithCopy for Lookahead(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a3 + 16);
  v6 = type metadata accessor for Regex();
  (*(*(v6 - 8) + 24))(a1, a2, v6);
  return a1;
}

uint64_t initializeWithTake for Lookahead(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a3 + 16);
  v6 = type metadata accessor for Regex();
  (*(*(v6 - 8) + 32))(a1, a2, v6);
  return a1;
}

uint64_t assignWithTake for Lookahead(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a3 + 16);
  v6 = type metadata accessor for Regex();
  (*(*(v6 - 8) + 40))(a1, a2, v6);
  return a1;
}

uint64_t __swift_get_extra_inhabitant_indexTm(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a3 + 16);
  v6 = type metadata accessor for Regex();
  v7 = *(*(v6 - 8) + 48);

  return v7(a1, a2, v6);
}

uint64_t __swift_store_extra_inhabitant_indexTm(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = *(a4 + 16);
  v7 = type metadata accessor for Regex();
  v8 = *(*(v7 - 8) + 56);

  return v8(a1, a2, a2, v7);
}

uint64_t type metadata completion function for Reference()
{
  result = type metadata accessor for ReferenceID();
  if (v1 <= 0x3F)
  {
    v2 = *(result - 8) + 64;
    swift_initStructMetadata();
    return 0;
  }

  return result;
}

uint64_t initializeBufferWithCopyOfBuffer for Reference(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ReferenceID();
  v5 = **(v4 - 8);

  return v5(a1, a2, v4);
}

uint64_t destroy for Reference(uint64_t a1)
{
  v2 = type metadata accessor for ReferenceID();
  v3 = *(*(v2 - 8) + 8);

  return v3(a1, v2);
}

uint64_t initializeWithCopy for Reference(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ReferenceID();
  (*(*(v4 - 8) + 16))(a1, a2, v4);
  return a1;
}

uint64_t assignWithCopy for Reference(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ReferenceID();
  (*(*(v4 - 8) + 24))(a1, a2, v4);
  return a1;
}

uint64_t initializeWithTake for Reference(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ReferenceID();
  (*(*(v4 - 8) + 32))(a1, a2, v4);
  return a1;
}

uint64_t assignWithTake for Reference(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ReferenceID();
  (*(*(v4 - 8) + 40))(a1, a2, v4);
  return a1;
}

uint64_t sub_1BACFE5F8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ReferenceID();
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_1BACFE678(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ReferenceID();
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t getEnumTagSinglePayload for Anchor.Kind(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF9)
  {
    goto LABEL_17;
  }

  if (a2 + 7 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 7) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 7;
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

      return (*a1 | (v4 << 8)) - 7;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 7;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 8;
  v8 = v6 - 8;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for Anchor.Kind(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 7 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 7) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xF9)
  {
    v4 = 0;
  }

  if (a2 > 0xF8)
  {
    v5 = ((a2 - 249) >> 8) + 1;
    *result = a2 + 7;
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
    *result = a2 + 7;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type Anchor.Kind and conformance Anchor.Kind()
{
  result = lazy protocol witness table cache variable for type Anchor.Kind and conformance Anchor.Kind;
  if (!lazy protocol witness table cache variable for type Anchor.Kind and conformance Anchor.Kind)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Anchor.Kind and conformance Anchor.Kind);
  }

  return result;
}

uint64_t specialized Sequence._copySequenceContents(initializing:)(unsigned int (**a1)(char *, uint64_t, uint64_t), uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v8 = type metadata accessor for CharacterClass();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v8);
  v12 = &v28 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s12RegexBuilder14CharacterClassVSgMd, &_s12RegexBuilder14CharacterClassVSgMR);
  v14 = *(*(v13 - 8) + 64);
  v15 = MEMORY[0x1EEE9AC00](v13 - 8);
  v17 = &v28 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v19 = &v28 - v18;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss15CollectionOfOneV8IteratorVy12RegexBuilder14CharacterClassV_GMd, &_ss15CollectionOfOneV8IteratorVy12RegexBuilder14CharacterClassV_GMR);
  v21 = *(*(v20 - 8) + 64);
  MEMORY[0x1EEE9AC00](v20 - 8);
  v23 = &v28 - v22;
  outlined init with take of CharacterClass(v4, v19);
  v29 = v9;
  v24 = *(v9 + 56);
  v24(v19, 0, 1, v8);
  v24(v23, 1, 1, v8);
  result = outlined assign with take of CharacterClass?(v19, v23);
  if (!a2)
  {
LABEL_10:
    a3 = 0;
    goto LABEL_13;
  }

  if (!a3)
  {
LABEL_13:
    outlined init with take of CollectionOfOne<CharacterClass>(v23, a1, &_ss15CollectionOfOneV8IteratorVy12RegexBuilder14CharacterClassV_GMd, &_ss15CollectionOfOneV8IteratorVy12RegexBuilder14CharacterClassV_GMR);
    return a3;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v28 = a1;
    a1 = (v29 + 48);
    v26 = 1;
    while (1)
    {
      outlined init with take of CollectionOfOne<CharacterClass>(v23, v17, &_s12RegexBuilder14CharacterClassVSgMd, &_s12RegexBuilder14CharacterClassVSgMR);
      v24(v23, 1, 1, v8);
      if ((*a1)(v17, 1, v8) == 1)
      {
        break;
      }

      outlined init with take of CharacterClass(v17, v12);
      outlined init with take of CharacterClass(v12, a2);
      if (a3 == v26)
      {
        goto LABEL_12;
      }

      a2 += *(v29 + 72);
      if (__OFADD__(v26++, 1))
      {
        __break(1u);
        goto LABEL_10;
      }
    }

    outlined destroy of DSLTree.Atom.CharacterClass?(v17, &_s12RegexBuilder14CharacterClassVSgMd, &_s12RegexBuilder14CharacterClassVSgMR);
    a3 = v26 - 1;
LABEL_12:
    a1 = v28;
    goto LABEL_13;
  }

  __break(1u);
  return result;
}

uint64_t outlined init with copy of DSLTree.Atom.CharacterClass?(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t outlined destroy of DSLTree.Atom.CharacterClass?(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t outlined assign with take of CharacterClass?(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s12RegexBuilder14CharacterClassVSgMd, &_s12RegexBuilder14CharacterClassVSgMR);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t outlined init with take of CollectionOfOne<CharacterClass>(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 32))(a2, a1, v6);
  return a2;
}